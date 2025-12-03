@interface POXMLXPathContext
- (BOOL)registerNamespaces:(id)namespaces;
- (POXMLXPathContext)initWithXMLContext:(id)context;
- (id)evaluateXPath:(id)path;
- (void)dealloc;
@end

@implementation POXMLXPathContext

- (POXMLXPathContext)initWithXMLContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = POXMLXPathContext;
  v6 = [(POXMLXPathContext *)&v11 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = xmlXPathNewContext([contextCopy xmldoc]);
  v6->_xpathCtx = v7;
  if (v7)
  {
    objc_storeStrong(&v6->_xmldocContext, context);
LABEL_4:
    v8 = v6;
    goto LABEL_8;
  }

  v9 = PO_LOG_POXMLHelper();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [POXMLXPathContext initWithXMLContext:];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (BOOL)registerNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  if (![(POXMLXPathContext *)self xpathCtx])
  {
    [POXMLXPathContext registerNamespaces:];
  }

  if (!namespacesCopy)
  {
    [POXMLXPathContext registerNamespaces:];
  }

  v5 = xmlStrdup([namespacesCopy UTF8String]);
  if (v5)
  {
    v6 = v5;
    v7 = v5;
    while (1)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

        ;
      }

      if (!*i)
      {
LABEL_16:
        free(v6);
        v13 = 1;
        goto LABEL_21;
      }

      v9 = xmlStrchr(i, 0x3Du);
      if (!v9)
      {
        break;
      }

      *v9 = 0;
      v10 = v9 + 1;
      v11 = xmlStrchr(v9 + 1, 0x20u);
      v7 = v11;
      if (v11)
      {
        *v11 = 0;
        v7 = v11 + 1;
      }

      if (xmlXPathRegisterNs([(POXMLXPathContext *)self xpathCtx], i, v10))
      {
        v12 = PO_LOG_POXMLHelper();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [(POXMLXPathContext *)i registerNamespaces:v10, v12];
        }

        goto LABEL_24;
      }
    }

    v12 = PO_LOG_POXMLHelper();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [POXMLXPathContext registerNamespaces:];
    }

LABEL_24:

    free(v6);
  }

  else
  {
    v14 = PO_LOG_POXMLHelper();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [POXMLXPathContext registerNamespaces:];
    }
  }

  v13 = 0;
LABEL_21:

  return v13;
}

- (id)evaluateXPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(POXMLXPathResult);
  -[POXMLXPathResult setXpathObj:](v5, "setXpathObj:", MEMORY[0x25F8C3FC0]([pathCopy UTF8String], -[POXMLXPathContext xpathCtx](self, "xpathCtx")));
  [(POXMLXPathResult *)v5 setXpathContext:self];
  if ([(POXMLXPathResult *)v5 xpathObj])
  {
    v6 = v5;
  }

  else
  {
    v7 = PO_LOG_POXMLHelper();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(POXMLXPathContext *)pathCopy evaluateXPath:v7];
    }

    v6 = 0;
  }

  return v6;
}

- (void)dealloc
{
  if ([(POXMLXPathContext *)self xpathCtx])
  {
    xmlXPathFreeContext([(POXMLXPathContext *)self xpathCtx]);
  }

  [(POXMLXPathContext *)self setXpathCtx:0];
  v3.receiver = self;
  v3.super_class = POXMLXPathContext;
  [(POXMLXPathContext *)&v3 dealloc];
}

- (void)registerNamespaces:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 136315394;
  v5 = a1;
  v6 = 2080;
  v7 = a2;
  _os_log_error_impl(&dword_25E8B1000, log, OS_LOG_TYPE_ERROR, "Error: unable to register NS with prefix=%s and href=%s\n", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)evaluateXPath:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 136315138;
  v5 = [a1 UTF8String];
  _os_log_error_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_ERROR, "Error: unable to evaluate xpath expression %s\n", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end