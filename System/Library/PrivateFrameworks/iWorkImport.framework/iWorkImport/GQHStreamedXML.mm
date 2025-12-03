@interface GQHStreamedXML
- (GQHStreamedXML)initWithHead;
- (__CFData)createHtml;
- (__CFData)createProgressiveHtml;
- (char)popElementName;
- (const)peekElementName;
- (id)initEmpty;
- (void)addCharRef:(const char *)ref;
- (void)addXmlCharContent:(const char *)content;
- (void)dealloc;
- (void)endElement;
- (void)pushElementName:(const char *)name;
- (void)setAttribute:(const char *)attribute value:(const char *)value;
- (void)startElement:(const char *)element;
@end

@implementation GQHStreamedXML

- (id)initEmpty
{
  v6.receiver = self;
  v6.super_class = GQHStreamedXML;
  v2 = [(GQHStreamedXML *)&v6 init];
  if (v2)
  {
    v2->mXMLDoc = htmlNewDoc(0, 0);
    v2->mElementNameStack = CFArrayCreateMutable(0, 0, 0);
    Mutable = CFDataCreateMutable(0, 0);
    v2->mData = Mutable;
    IO = xmlOutputBufferCreateIO(sub_4C544, 0, Mutable, 0);
    v2->mOutputBuffer = IO;
    xmlOutputBufferWriteString(IO, "<!DOCTYPE html PUBLIC -//W3C//DTD HTML 4.0 Transitional//EN http://www.w3.org/TR/REC-html40/loose.dtd>");
    v2->mLastOp = 2;
    [(GQHStreamedXML *)v2 startElement:"html"];
    [(GQHStreamedXML *)v2 setAttribute:"xmlns" value:"http://www.w3.org/1999/xhtml"];
  }

  return v2;
}

- (GQHStreamedXML)initWithHead
{
  initEmpty = [(GQHStreamedXML *)self initEmpty];
  v3 = initEmpty;
  if (initEmpty)
  {
    [(GQHStreamedXML *)initEmpty startElement:"head"];
    [(GQHStreamedXML *)v3 startElement:"meta"];
    [(GQHStreamedXML *)v3 setAttribute:"http-equiv" value:"Content-type"];
    [(GQHStreamedXML *)v3 setAttribute:"content" value:"text/html; charset=UTF-8"];
    [(GQHStreamedXML *)v3 endElementWithExpectedName:"meta"];
  }

  return v3;
}

- (void)dealloc
{
  mElementNameStack = self->mElementNameStack;
  if (mElementNameStack)
  {
    Count = CFArrayGetCount(mElementNameStack);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(self->mElementNameStack, i);
        free(ValueAtIndex);
      }
    }

    CFRelease(self->mElementNameStack);
    self->mElementNameStack = 0;
  }

  mOutputBuffer = self->mOutputBuffer;
  if (mOutputBuffer)
  {
    xmlOutputBufferClose(mOutputBuffer);
    self->mOutputBuffer = 0;
  }

  mData = self->mData;
  if (mData)
  {
    CFRelease(mData);
    self->mData = 0;
  }

  mXMLDoc = self->mXMLDoc;
  if (mXMLDoc)
  {
    xmlFreeDoc(mXMLDoc);
    self->mXMLDoc = 0;
  }

  v11.receiver = self;
  v11.super_class = GQHStreamedXML;
  [(GQHStreamedXML *)&v11 dealloc];
}

- (void)startElement:(const char *)element
{
  if (!self->mLastOp)
  {
    xmlOutputBufferWriteString(self->mOutputBuffer, ">");
  }

  if (self->mNeedNewlineBeforeNextElement)
  {
    xmlOutputBufferWriteString(self->mOutputBuffer, "\n");
    self->mNeedNewlineBeforeNextElement = 0;
  }

  xmlOutputBufferWriteString(self->mOutputBuffer, "<");
  xmlOutputBufferWriteString(self->mOutputBuffer, element);
  self->mLastOp = 0;

  [(GQHStreamedXML *)self pushElementName:element];
}

- (void)endElement
{
  if (CFArrayGetCount(self->mElementNameStack))
  {
    popElementName = [(GQHStreamedXML *)self popElementName];
    v4 = htmlTagLookup(popElementName);
    v5 = v4;
    if (self->mLastOp)
    {
      v6 = "</";
    }

    else
    {
      if (v4 && (v4->saveEndTag && xmlStrcmp(v4->name, "html") && xmlStrcmp(v5->name, "body") || v5->empty))
      {
        xmlOutputBufferWriteString(self->mOutputBuffer, ">");
        goto LABEL_12;
      }

      v6 = "></";
    }

    xmlOutputBufferWriteString(self->mOutputBuffer, v6);
    xmlOutputBufferWriteString(self->mOutputBuffer, popElementName);
    xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    if (!v5)
    {
LABEL_13:
      free(popElementName);
      self->mLastOp = 2;
      return;
    }

LABEL_12:
    if (!v5->isinline)
    {
      peekElementName = [(GQHStreamedXML *)self peekElementName];
      if (peekElementName)
      {
        if (*peekElementName != 112)
        {
          self->mNeedNewlineBeforeNextElement = 1;
        }
      }
    }

    goto LABEL_13;
  }
}

- (void)setAttribute:(const char *)attribute value:(const char *)value
{
  xmlOutputBufferWriteString(self->mOutputBuffer, " ");
  xmlOutputBufferWriteString(self->mOutputBuffer, attribute);
  if (value && *value)
  {
    xmlOutputBufferWriteString(self->mOutputBuffer, "=");
    if (xmlStrcasecmp(attribute, "href") && xmlStrcasecmp(attribute, "action") && xmlStrcasecmp(attribute, "src"))
    {
      buffer = self->mOutputBuffer->buffer;
LABEL_20:

      xmlBufferWriteQuotedString(buffer, value);
      return;
    }

    for (i = value; ; ++i)
    {
      v10 = *i;
      v11 = v10 > 0x20;
      v12 = (1 << v10) & 0x100002600;
      if (v11 || v12 == 0)
      {
        break;
      }
    }

    v14 = xmlURIEscapeStr(i, "@/:=?;#%&,+");
    buffer = self->mOutputBuffer->buffer;
    if (!v14)
    {
      goto LABEL_20;
    }

    xmlBufferWriteQuotedString(buffer, v14);

    free(v14);
  }

  else
  {
    mOutputBuffer = self->mOutputBuffer;

    xmlOutputBufferWriteString(mOutputBuffer, "=");
  }
}

- (void)addXmlCharContent:(const char *)content
{
  if (content && *content)
  {
    if (self->mNeedNewlineBeforeNextElement)
    {
      self->mNeedNewlineBeforeNextElement = 0;
    }

    if (!self->mLastOp)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    }

    peekElementName = [(GQHStreamedXML *)self peekElementName];
    if (!peekElementName || (v6 = peekElementName, xmlStrcasecmp(peekElementName, "script")) && xmlStrcasecmp(v6, "style"))
    {
      v7 = xmlEncodeEntitiesReentrant(self->mXMLDoc, content);
      if (v7)
      {
        v8 = v7;
        xmlOutputBufferWriteString(self->mOutputBuffer, v7);
        free(v8);
      }
    }

    else
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, content);
    }

    self->mLastOp = 1;
  }
}

- (void)addCharRef:(const char *)ref
{
  if (ref && *ref)
  {
    if (self->mNeedNewlineBeforeNextElement)
    {
      self->mNeedNewlineBeforeNextElement = 0;
    }

    if (!self->mLastOp)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    }

    if (*ref != 38)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, "&");
    }

    xmlOutputBufferWriteString(self->mOutputBuffer, ref);
    if (ref[xmlStrlen(ref) - 1] != 59)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ";");
    }

    self->mLastOp = 1;
  }
}

- (__CFData)createHtml
{
  selfCopy = self;
  while ([(GQHStreamedXML *)self peekElementName])
  {
    [(GQHStreamedXML *)selfCopy endElement];
    self = selfCopy;
  }

  v3 = xmlOutputBufferClose(selfCopy->mOutputBuffer);
  selfCopy->mOutputBuffer = 0;
  mData = selfCopy->mData;
  if (v3 < 0)
  {
    CFRelease(mData);
    result = 0;
    selfCopy->mData = 0;
  }

  else
  {
    CFRetain(mData);
    return selfCopy->mData;
  }

  return result;
}

- (__CFData)createProgressiveHtml
{
  mData = self->mData;
  v4 = xmlOutputBufferClose(self->mOutputBuffer);
  self->mOutputBuffer = 0;
  if (v4 < 0)
  {
    CFRelease(self->mData);
    self->mData = 0;
  }

  Mutable = CFDataCreateMutable(0, 0);
  self->mData = Mutable;
  self->mOutputBuffer = xmlOutputBufferCreateIO(sub_4C544, 0, Mutable, 0);
  return mData;
}

- (void)pushElementName:(const char *)name
{
  mElementNameStack = self->mElementNameStack;
  v4 = xmlStrdup(name);

  CFArrayAppendValue(mElementNameStack, v4);
}

- (char)popElementName
{
  Count = CFArrayGetCount(self->mElementNameStack);
  v4 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mElementNameStack, v4);
  CFArrayRemoveValueAtIndex(self->mElementNameStack, v4);
  return ValueAtIndex;
}

- (const)peekElementName
{
  Count = CFArrayGetCount(self->mElementNameStack);
  v4 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  mElementNameStack = self->mElementNameStack;

  return CFArrayGetValueAtIndex(mElementNameStack, v4);
}

@end