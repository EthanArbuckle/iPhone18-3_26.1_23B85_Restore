@interface TSUXmlUtilities
+ (BOOL)examineXmlNodes:(_xmlNode *)nodes nodeHandler:(id)handler continueExamining:(BOOL *)examining walkChildren:(BOOL)children;
+ (BOOL)reloadXmlData:(id)data docPtr:(_xmlDoc *)ptr;
+ (BOOL)validateXml:(_xmlDoc *)xml dtd:(id)dtd validateXmlHandler:(id)handler;
+ (BOOL)validateXmlData:(id)data dtd:(id)dtd error:(id *)error validateXmlHandler:(id)handler;
+ (void)loadXmlFromData:(id)data options:(int)options encoding:(int *)encoding loadXmlHandlier:(id)handlier completionHandler:(id)handler;
+ (void)normalizeXml:(id)xml nodeHandler:(id)handler completionHandler:(id)completionHandler encoding:(int *)encoding;
@end

@implementation TSUXmlUtilities

+ (BOOL)validateXml:(_xmlDoc *)xml dtd:(id)dtd validateXmlHandler:(id)handler
{
  dtdCopy = dtd;
  handlerCopy = handler;
  tsu_resourcesBundle = [MEMORY[0x277CCA8D8] tsu_resourcesBundle];
  v10 = [tsu_resourcesBundle pathForResource:dtdCopy ofType:@"dtd"];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v10];
    v12 = v11;
    if (v11)
    {
      bytes = [v11 bytes];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
      Mem = xmlParserInputBufferCreateMem(bytes, [v14 intValue], XML_CHAR_ENCODING_UTF8);

      if (Mem)
      {
        v16 = xmlIOParseDTD(0, Mem, XML_CHAR_ENCODING_UTF8);
        if (v16)
        {
          v17 = xmlNewValidCtxt();
          if (v17)
          {
            v18 = handlerCopy[2](handlerCopy, v17, xml, v16);
            xmlFreeValidCtxt(v17);
            v19 = 0;
          }

          else
          {
            v19 = *MEMORY[0x277CBE728];
            v18 = 0;
          }

          xmlFreeDtd(v16);
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = *MEMORY[0x277CBE728];
  v18 = 0;
LABEL_9:

  if (v19)
  {
    [MEMORY[0x277CBEAD8] raiseValidateXmlException:v19];
  }

  return v18;
}

+ (void)loadXmlFromData:(id)data options:(int)options encoding:(int *)encoding loadXmlHandlier:(id)handlier completionHandler:(id)handler
{
  dataCopy = data;
  handlierCopy = handlier;
  handlerCopy = handler;
  v13 = xmlNewParserCtxt();
  bytes = [dataCopy bytes];
  if (encoding)
  {
    CharEncodingName = xmlGetCharEncodingName(*encoding);
  }

  else
  {
    CharEncodingName = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
  Memory = xmlCtxtReadMemory(v13, bytes, [v16 intValue], 0, CharEncodingName, options);

  if (Memory)
  {
    handlierCopy[2](handlierCopy, Memory);
    if (v13->wellFormed)
    {
      v18 = v13->valid != 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  xmlFreeParserCtxt(v13);
  v19 = v18;
LABEL_10:
  if (Memory)
  {
    xmlFreeDoc(Memory);
  }

  handlerCopy[2](handlerCopy, v19);
}

+ (BOOL)validateXmlData:(id)data dtd:(id)dtd error:(id *)error validateXmlHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dtdCopy = dtd;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_27706EFFC;
  v17[3] = &unk_27A701E18;
  v20 = &v22;
  selfCopy = self;
  v12 = dtdCopy;
  v18 = v12;
  v13 = handlerCopy;
  v19 = v13;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_27706F038;
  v16[3] = &unk_27A701E40;
  v16[4] = &v26;
  [self loadXmlFromData:dataCopy options:1 encoding:0 loadXmlHandlier:v17 completionHandler:v16];

  if (*(v27 + 24) == 1)
  {
    v14 = *(v23 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  return v14 & 1;
}

+ (BOOL)examineXmlNodes:(_xmlNode *)nodes nodeHandler:(id)handler continueExamining:(BOOL *)examining walkChildren:(BOOL)children
{
  childrenCopy = children;
  handlerCopy = handler;
  v11 = 0;
  if (nodes)
  {
    do
    {
      if (!*examining)
      {
        break;
      }

      next = nodes->next;
      children = nodes->children;
      v15 = 0;
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, nodes, examining, &v15);
      }

      v11 |= v15;
      if (childrenCopy)
      {
        v11 |= [self examineXmlNodes:children nodeHandler:handlerCopy continueExamining:examining walkChildren:1];
      }

      nodes = next;
    }

    while (next);
  }

  return v11 & 1;
}

+ (BOOL)reloadXmlData:(id)data docPtr:(_xmlDoc *)ptr
{
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  v32 = 0;
  v7 = [[TSUTemporaryDirectory alloc] initWithError:&v32];
  v8 = v32;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v14 = [(TSUTemporaryDirectory *)v7 URL];
    path = [v14 path];
    v12 = [path stringByAppendingPathComponent:@"temp.svg"];

    v16 = xmlSaveFile([v12 UTF8String], ptr);
    if (v16 >= 1)
    {
      v30 = dataCopy;
      v17 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v12];
      v18 = v17;
      if (v17 && ([MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "length")}], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "intValue"), v19, v20 == v16))
      {
        [dataCopy setData:v18];
        v21 = 0;
        v22 = 1;
      }

      else
      {
        v22 = 0;
        v21 = @"reloadXmlData failed to write modified xml";
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v31 = 0;
      v24 = [defaultManager removeItemAtPath:v12 error:&v31];
      v25 = v31;

      if ((v24 & 1) == 0)
      {
        v26 = MEMORY[0x277CCACA8];
        v27 = [v25 description];
        v28 = [v26 stringWithFormat:@"reloadXmlData failed to clean up temp file: %@", v27];

        v21 = v28;
      }

      dataCopy = v30;
      goto LABEL_18;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"reloadXmlData failed to save modified xml file at:%@", v12];
  }

  else
  {
    if (!v8)
    {
      v22 = 0;
      v21 = 0;
      goto LABEL_19;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [v8 description];
    v13 = [v11 stringWithFormat:@"reloadXmlData failed to created temp folder: %@", v12];
  }

  v21 = v13;
  v22 = 0;
LABEL_18:

LABEL_19:
  objc_autoreleasePoolPop(v6);
  if (v21)
  {
    [MEMORY[0x277CBEAD8] raiseLoadXmlException:v21];
  }

  return v22;
}

+ (void)normalizeXml:(id)xml nodeHandler:(id)handler completionHandler:(id)completionHandler encoding:(int *)encoding
{
  v31 = *MEMORY[0x277D85DE8];
  xmlCopy = xml;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  if (encoding)
  {
    v13 = 2173185;
  }

  else
  {
    v13 = 76033;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_27706F864;
  v17[3] = &unk_27A701E68;
  v20 = &v23;
  selfCopy = self;
  v14 = handlerCopy;
  v19 = v14;
  v21 = &v27;
  v15 = xmlCopy;
  v18 = v15;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_27706F8E8;
  v16[3] = &unk_27A701E40;
  v16[4] = &v27;
  [self loadXmlFromData:v15 options:v13 encoding:encoding loadXmlHandlier:v17 completionHandler:v16];

  if (completionHandlerCopy)
  {
    (*(completionHandlerCopy + 2))(completionHandlerCopy, *(v28 + 24), *(v24 + 24), 0);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

@end