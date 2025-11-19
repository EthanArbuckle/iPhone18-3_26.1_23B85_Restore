@interface GQHDOMXML
- (GQHDOMXML)initWithHead;
- (__CFData)createHtmlWithCss:(__CFString *)a3;
- (id)initEmpty;
- (void)addCharRef:(const char *)a3;
- (void)addXmlCharContent:(const char *)a3;
- (void)dealloc;
- (void)removeStyleSheetLinkNodeAndAddStyle:(__CFString *)a3;
@end

@implementation GQHDOMXML

- (id)initEmpty
{
  v7.receiver = self;
  v7.super_class = GQHDOMXML;
  v2 = [(GQHDOMXML *)&v7 init];
  if (v2)
  {
    v3 = htmlNewDoc(0, 0);
    *(v2 + 1) = v3;
    v4 = xmlNewDtd(v3, "html", "-//W3C//DTD XHTML 1.0 Transitional//EN", "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd");
    xmlAddChild(*(v2 + 1), v4);
    v5 = xmlNewNode(0, "html");
    xmlDocSetRootElement(*(v2 + 1), v5);
    xmlNewNs(v5, "http://www.w3.org/1999/xhtml", 0);
    *(v2 + 2) = v5;
  }

  return v2;
}

- (GQHDOMXML)initWithHead
{
  v2 = [(GQHDOMXML *)self initEmpty];
  if (v2)
  {
    v3 = xmlNewNode(0, "head");
    v4 = xmlNewNode(0, "meta");
    xmlSetProp(v4, "http-equiv", "Content-type");
    xmlSetProp(v4, "content", "text/html; charset=UTF-8");
    xmlAddChild(v3, v4);
    xmlAddChild(v2->mCurrentNode, v3);
    v2->mCurrentNode = v3;
  }

  return v2;
}

- (void)dealloc
{
  mXMLDoc = self->mXMLDoc;
  if (mXMLDoc)
  {
    xmlFreeDoc(mXMLDoc);
    self->mXMLDoc = 0;
  }

  v4.receiver = self;
  v4.super_class = GQHDOMXML;
  [(GQHDOMXML *)&v4 dealloc];
}

- (void)addXmlCharContent:(const char *)a3
{
  v5 = xmlNewText(0);
  v6 = xmlAddChild(self->mCurrentNode, v5);

  xmlNodeAddContent(v6, a3);
}

- (void)addCharRef:(const char *)a3
{
  v4 = xmlNewCharRef(self->mXMLDoc, a3);
  mCurrentNode = self->mCurrentNode;

  xmlAddChild(mCurrentNode, v4);
}

- (__CFData)createHtmlWithCss:(__CFString *)a3
{
  if (a3)
  {
    [(GQHDOMXML *)self removeStyleSheetLinkNodeAndAddStyle:?];
  }

  mem = 0;
  size = 0;
  htmlDocDumpMemory(self->mXMLDoc, &mem, &size);
  if (size >= 1)
  {
    return CFDataCreateWithBytesNoCopy(0, mem, size, kCFAllocatorMalloc);
  }

  if (mem)
  {
    free(mem);
  }

  return 0;
}

- (void)removeStyleSheetLinkNodeAndAddStyle:(__CFString *)a3
{
  if (a3)
  {
    if (CFStringGetLength(a3))
    {
      last = self->mXMLDoc->last;
      if (last)
      {
        do
        {
          if (xmlStrcmp(last->name, "html"))
          {
            v6 = 0;
          }

          else
          {
            v6 = last;
          }

          last = last->prev;
          if (v6)
          {
            v7 = 1;
          }

          else
          {
            v7 = last == 0;
          }
        }

        while (!v7);
        if (v6)
        {
          v8 = v6->last;
          if (v8)
          {
            do
            {
              if (xmlStrcmp(v8->name, "head"))
              {
                v9 = 0;
              }

              else
              {
                v9 = v8;
              }

              v8 = v8->prev;
              if (v9)
              {
                v10 = 1;
              }

              else
              {
                v10 = v8 == 0;
              }
            }

            while (!v10);
            if (v9)
            {
              v11 = v9->last;
              if (v11)
              {
                do
                {
                  if (xmlStrcmp(v11->name, "link"))
                  {
                    v12 = 0;
                  }

                  else
                  {
                    v12 = v11;
                  }

                  v11 = v11->prev;
                  if (v12)
                  {
                    v13 = 1;
                  }

                  else
                  {
                    v13 = v11 == 0;
                  }
                }

                while (!v13);
                if (v12)
                {
                  xmlUnlinkNode(v12);
                  xmlFreeNode(v12);
                }
              }

              v14 = xmlNewNode(0, "style");
              xmlSetProp(v14, "type", "text/css");
              mCurrentNode = self->mCurrentNode;
              self->mCurrentNode = v14;
              Length = CFStringGetLength(a3);
              MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
              v18 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
              CFStringGetCString(a3, v18, MaximumSizeForEncoding + 1, 0x8000100u);
              [(GQHDOMXML *)self addXmlCharContent:v18];
              free(v18);
              self->mCurrentNode = mCurrentNode;

              xmlAddChild(v9, v14);
            }
          }
        }
      }
    }
  }
}

@end