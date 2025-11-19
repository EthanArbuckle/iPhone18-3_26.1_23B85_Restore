@interface GQHStreamedXML
- (GQHStreamedXML)initWithHead;
- (__CFData)createHtml;
- (__CFData)createProgressiveHtml;
- (char)popElementName;
- (const)peekElementName;
- (id)initEmpty;
- (void)addCharRef:(const char *)a3;
- (void)addXmlCharContent:(const char *)a3;
- (void)dealloc;
- (void)endElement;
- (void)pushElementName:(const char *)a3;
- (void)setAttribute:(const char *)a3 value:(const char *)a4;
- (void)startElement:(const char *)a3;
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
  v2 = [(GQHStreamedXML *)self initEmpty];
  v3 = v2;
  if (v2)
  {
    [(GQHStreamedXML *)v2 startElement:"head"];
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

- (void)startElement:(const char *)a3
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
  xmlOutputBufferWriteString(self->mOutputBuffer, a3);
  self->mLastOp = 0;

  [(GQHStreamedXML *)self pushElementName:a3];
}

- (void)endElement
{
  if (CFArrayGetCount(self->mElementNameStack))
  {
    v3 = [(GQHStreamedXML *)self popElementName];
    v4 = htmlTagLookup(v3);
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
    xmlOutputBufferWriteString(self->mOutputBuffer, v3);
    xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    if (!v5)
    {
LABEL_13:
      free(v3);
      self->mLastOp = 2;
      return;
    }

LABEL_12:
    if (!v5->isinline)
    {
      v7 = [(GQHStreamedXML *)self peekElementName];
      if (v7)
      {
        if (*v7 != 112)
        {
          self->mNeedNewlineBeforeNextElement = 1;
        }
      }
    }

    goto LABEL_13;
  }
}

- (void)setAttribute:(const char *)a3 value:(const char *)a4
{
  xmlOutputBufferWriteString(self->mOutputBuffer, " ");
  xmlOutputBufferWriteString(self->mOutputBuffer, a3);
  if (a4 && *a4)
  {
    xmlOutputBufferWriteString(self->mOutputBuffer, "=");
    if (xmlStrcasecmp(a3, "href") && xmlStrcasecmp(a3, "action") && xmlStrcasecmp(a3, "src"))
    {
      buffer = self->mOutputBuffer->buffer;
LABEL_20:

      xmlBufferWriteQuotedString(buffer, a4);
      return;
    }

    for (i = a4; ; ++i)
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

- (void)addXmlCharContent:(const char *)a3
{
  if (a3 && *a3)
  {
    if (self->mNeedNewlineBeforeNextElement)
    {
      self->mNeedNewlineBeforeNextElement = 0;
    }

    if (!self->mLastOp)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    }

    v5 = [(GQHStreamedXML *)self peekElementName];
    if (!v5 || (v6 = v5, xmlStrcasecmp(v5, "script")) && xmlStrcasecmp(v6, "style"))
    {
      v7 = xmlEncodeEntitiesReentrant(self->mXMLDoc, a3);
      if (v7)
      {
        v8 = v7;
        xmlOutputBufferWriteString(self->mOutputBuffer, v7);
        free(v8);
      }
    }

    else
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, a3);
    }

    self->mLastOp = 1;
  }
}

- (void)addCharRef:(const char *)a3
{
  if (a3 && *a3)
  {
    if (self->mNeedNewlineBeforeNextElement)
    {
      self->mNeedNewlineBeforeNextElement = 0;
    }

    if (!self->mLastOp)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ">");
    }

    if (*a3 != 38)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, "&");
    }

    xmlOutputBufferWriteString(self->mOutputBuffer, a3);
    if (a3[xmlStrlen(a3) - 1] != 59)
    {
      xmlOutputBufferWriteString(self->mOutputBuffer, ";");
    }

    self->mLastOp = 1;
  }
}

- (__CFData)createHtml
{
  v2 = self;
  while ([(GQHStreamedXML *)self peekElementName])
  {
    [(GQHStreamedXML *)v2 endElement];
    self = v2;
  }

  v3 = xmlOutputBufferClose(v2->mOutputBuffer);
  v2->mOutputBuffer = 0;
  mData = v2->mData;
  if (v3 < 0)
  {
    CFRelease(mData);
    result = 0;
    v2->mData = 0;
  }

  else
  {
    CFRetain(mData);
    return v2->mData;
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

- (void)pushElementName:(const char *)a3
{
  mElementNameStack = self->mElementNameStack;
  v4 = xmlStrdup(a3);

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