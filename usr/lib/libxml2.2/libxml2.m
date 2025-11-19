void xmlInitParser(void)
{
  if ((xmlParserInitialized & 1) == 0)
  {
    __xmlGlobalInitMutexLock();
    if ((xmlParserInitialized & 1) == 0)
    {
      xmlInitThreads();
      xmlInitGlobals();
      if (*__xmlGenericError() == xmlGenericErrorDefaultFunc || !*__xmlGenericError())
      {
        initGenericErrorDefaultFunc(0);
      }

      xmlInitMemory();
      xmlInitializeDict();
      xmlInitCharEncodingHandlers();
      xmlDefaultSAXHandlerInit();
      xmlRegisterDefaultInputCallbacks();
      xmlRegisterDefaultOutputCallbacks();
      htmlInitAutoClose();
      htmlDefaultSAXHandlerInit();
      xmlXPathInit();
      xmlParserInitialized = 1;
    }

    __xmlGlobalInitMutexUnlock();
  }
}

xmlMutexPtr _xmlInitGlobalsOnce()
{
  result = xmlNewMutex();
  xmlThrDefMutex = result;
  return result;
}

xmlMutexPtr xmlNewMutex(void)
{
  v0 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init(v0, 0);
  }

  return v1;
}

xmlGenericErrorFunc *__xmlGenericError(void)
{
  if (xmlIsMainThread())
  {
    return &xmlGenericError;
  }

  else
  {
    return &xmlGetGlobalState()->xmlGenericError;
  }
}

void _xmlInitializeDictMutex()
{
  xmlDictMutex = xmlNewRMutex();
  xmlRMutexLock(xmlDictMutex);
  rand_seed = time(0);
  rand_r(&rand_seed);
  v0 = xmlDictMutex;

  xmlRMutexUnlock(v0);
}

BOOL xmlOnceInit()
{
  pthread_key_create(&globalkey, xmlFreeGlobalState);

  return __xmlInitializeDict();
}

BOOL __xmlInitializeDict()
{
  if (xmlDictMutex)
  {
    return 1;
  }

  pthread_once(&once_control_0, _xmlInitializeDictMutex);
  return xmlDictMutex != 0;
}

xmlRMutexPtr xmlNewRMutex(void)
{
  v0 = malloc_type_malloc(0x80uLL, 0x1020040C717CFCDuLL);
  v1 = v0;
  if (v0)
  {
    pthread_mutex_init(v0, 0);
    v1[1].__sig = 0;
    pthread_cond_init(&v1[1].__opaque[8], 0);
  }

  return v1;
}

void xmlRMutexUnlock(xmlRMutexPtr tok)
{
  if (tok)
  {
    pthread_mutex_lock(tok);
    v2 = *(tok + 16) - 1;
    *(tok + 16) = v2;
    if (!v2)
    {
      if (*(tok + 17))
      {
        pthread_cond_signal((tok + 80));
      }

      *(tok + 9) = 0;
    }

    pthread_mutex_unlock(tok);
  }
}

void xmlRMutexLock(xmlRMutexPtr tok)
{
  if (!tok)
  {
    return;
  }

  pthread_mutex_lock(tok);
  if (!*(tok + 16))
  {
    goto LABEL_10;
  }

  v2 = *(tok + 9);
  v3 = pthread_self();
  if (!pthread_equal(v2, v3))
  {
    v6 = *(tok + 16);
    v5 = *(tok + 17);
    *(tok + 17) = v5 + 1;
    if (v6)
    {
      do
      {
        pthread_cond_wait((tok + 80), tok);
      }

      while (*(tok + 16));
      v5 = *(tok + 17) - 1;
    }

    *(tok + 17) = v5;
LABEL_10:
    *(tok + 9) = pthread_self();
    v4 = 1;
    goto LABEL_11;
  }

  v4 = *(tok + 16) + 1;
LABEL_11:
  *(tok + 16) = v4;

  pthread_mutex_unlock(tok);
}

xmlSAXHandlerV1 *__xmlDefaultSAXHandler(void)
{
  if (xmlIsMainThread())
  {
    return xmlDefaultSAXHandler;
  }

  else
  {
    return &xmlGetGlobalState()->xmlDefaultSAXHandler;
  }
}

void xmlDefaultSAXHandlerInit(void)
{
  v0 = __xmlDefaultSAXHandler();

  xmlSAXVersion(v0, 1);
}

int xmlInitMemory(void)
{
  if (xmlMemInitialized)
  {
    LODWORD(v0) = -1;
  }

  else
  {
    xmlMemInitialized = 1;
    xmlMemMutex = xmlNewMutex();
    v1 = getenv("XML_MEM_BREAKPOINT");
    if (v1)
    {
      sscanf(v1, "%ud", &xmlMemStopAtBlock);
    }

    v0 = getenv("XML_MEM_TRACE");
    if (v0)
    {
      sscanf(v0, "%p", &xmlMemTraceBlockAt);
      LODWORD(v0) = 0;
    }
  }

  return v0;
}

void initGenericErrorDefaultFunc(xmlGenericErrorFunc *handler)
{
  if (handler)
  {
    v1 = *handler;
  }

  else
  {
    v1 = xmlGenericErrorDefaultFunc;
  }

  *__xmlGenericError() = v1;
}

void xmlInitCharEncodingHandlers(void)
{
  if (!handlers)
  {
    handlers = malloc_type_malloc(0x190uLL, 0x2004093837F09uLL);
    if (handlers)
    {
      xmlNewCharEncodingHandler("UTF-8", UTF8ToUTF8, UTF8ToUTF8);
      xmlUTF16LEHandler = xmlNewCharEncodingHandler("UTF-16LE", UTF16LEToUTF8, UTF8ToUTF16LE);
      xmlUTF16BEHandler = xmlNewCharEncodingHandler("UTF-16BE", UTF16BEToUTF8, UTF8ToUTF16BE);
      xmlNewCharEncodingHandler("UTF-16", UTF16LEToUTF8, UTF8ToUTF16);
      xmlNewCharEncodingHandler("ISO-8859-1", isolat1ToUTF8, UTF8Toisolat1);
      xmlNewCharEncodingHandler("ASCII", asciiToUTF8, UTF8Toascii);
      xmlNewCharEncodingHandler("US-ASCII", asciiToUTF8, UTF8Toascii);

      xmlNewCharEncodingHandler("HTML", 0, UTF8ToHtml);
    }

    else
    {

      __xmlSimpleError(0x1Bu, 2, 0, 0, "xmlInitCharEncodingHandlers : out of memory !\n");
    }
  }
}

xmlCharEncodingHandlerPtr xmlNewCharEncodingHandler(const char *name, xmlCharEncodingInputFunc input, xmlCharEncodingOutputFunc output)
{
  v48 = *MEMORY[0x1E69E9840];
  EncodingAlias = xmlGetEncodingAlias(name);
  if (EncodingAlias)
  {
    v7 = EncodingAlias;
  }

  else
  {
    v7 = name;
  }

  if (!v7)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6000, 3, 0, 0, 0, 0, 0, 0, 0, "xmlNewCharEncodingHandler : no name !\n", 0);
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v8 = 0;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__s1 = 0u;
  do
  {
    v9 = __toupper(v7[v8]);
    __s1[v8] = v9;
    if (!v9)
    {
      break;
    }

    ++v8;
  }

  while (v8 != 499);
  __s1[v8] = 0;
  v10 = strdup(__s1);
  if (!v10)
  {
    __xmlSimpleError(0x1Bu, 2, 0, 0, "xmlNewCharEncodingHandler : out of memory !\n");
    goto LABEL_13;
  }

  v11 = v10;
  v12 = malloc_type_malloc(0x28uLL, 0xB00404F2A4B7BuLL);
  v13 = v12;
  if (v12)
  {
    v12->name = v11;
    v12->input = input;
    v12->uconv_in = 0;
    v12->uconv_out = 0;
    v12->output = output;
    xmlRegisterCharEncodingHandler(v12);
  }

  else
  {
    free(v11);
    __xmlSimpleError(0x1Bu, 2, 0, 0, "xmlNewCharEncodingHandler : out of memory !\n");
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

const char *__cdecl xmlGetEncodingAlias(const char *alias)
{
  result = 0;
  v10 = *MEMORY[0x1E69E9840];
  if (alias && xmlCharEncodingAliases)
  {
    v3 = 0;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    do
    {
      v4 = __toupper(alias[v3]);
      *(v8 + v3) = v4;
      if (!v4)
      {
        break;
      }

      ++v3;
    }

    while (v3 != 99);
    *(v8 + v3) = 0;
    v5 = xmlCharEncodingAliasesNb;
    if (xmlCharEncodingAliasesNb < 1)
    {
LABEL_10:
      result = 0;
    }

    else
    {
      v6 = (xmlCharEncodingAliases + 8);
      while (strcmp(*v6, v8))
      {
        v6 += 2;
        if (!--v5)
        {
          goto LABEL_10;
        }
      }

      result = *(v6 - 1);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlRegisterCharEncodingHandler(xmlCharEncodingHandlerPtr handler)
{
  v2 = handlers;
  if (handlers)
  {
    if (!handler)
    {
LABEL_8:
      __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6001, 3, 0, 0, 0, 0, 0, 0, 0, "xmlRegisterCharEncodingHandler: NULL handler !\n", 0);
      if (!handler)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else
  {
    xmlInitCharEncodingHandlers();
    v2 = handlers;
    if (!handler)
    {
      goto LABEL_8;
    }
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = nbCharEncodingHandler;
  if (nbCharEncodingHandler < 50)
  {
    ++nbCharEncodingHandler;
    *(v2 + 8 * v3) = handler;
    return;
  }

  __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6002, 3, 0, 0, "MAX_ENCODING_HANDLERS", 0, 0, 0, 0, "xmlRegisterCharEncodingHandler: Too many handler registered, see %s\n", "MAX_ENCODING_HANDLERS");
LABEL_9:
  if (handler->name)
  {
    free(handler->name);
  }

  free(handler);
}

xmlSAXHandlerV1 *__htmlDefaultSAXHandler(void)
{
  if (xmlIsMainThread())
  {
    return &htmlDefaultSAXHandler;
  }

  else
  {
    return &xmlGetGlobalState()->htmlDefaultSAXHandler;
  }
}

void htmlDefaultSAXHandlerInit(void)
{
  v0 = __htmlDefaultSAXHandler();

  xmlSAX2InitHtmlDefaultSAXHandler(v0);
}

void xmlRegisterDefaultOutputCallbacks(void)
{
  if ((xmlOutputCallbackInitialized & 1) == 0)
  {
    v0 = xmlOutputCallbackNr;
    if (xmlOutputCallbackNr <= 14)
    {
      v1 = (&xmlOutputCallbackTable + 32 * xmlOutputCallbackNr);
      *v1 = xmlFileMatch;
      v1[1] = xmlFileOpenW;
      v1[2] = xmlFileWrite;
      v1[3] = xmlFileClose;
      xmlOutputCallbackNr = v0 + 1;
      if (v0 != 14)
      {
        v2 = (&xmlOutputCallbackTable + 32 * v0 + 32);
        *v2 = xmlIOHTTPMatch;
        v2[1] = xmlIOHTTPDfltOpenW;
        v2[2] = xmlIOHTTPWrite;
        v2[3] = xmlIOHTTPClosePut;
        xmlOutputCallbackNr = v0 + 2;
      }
    }

    xmlOutputCallbackInitialized = 1;
  }
}

int xmlSAXVersion(xmlSAXHandler *hdlr, int version)
{
  if (hdlr)
  {
    v2 = xmlSAX2EndElement;
    v3 = xmlSAX2StartElement;
    if (version == 1)
    {
      v4 = 120;
      v5 = 112;
      goto LABEL_7;
    }

    if (version == 2)
    {
      v2 = 0;
      hdlr->startElement = 0;
      hdlr->endElement = 0;
      hdlr->startElementNs = xmlSAX2StartElementNs;
      version = -554844497;
      v3 = xmlSAX2EndElementNs;
      v4 = 248;
      v5 = 240;
LABEL_7:
      v6 = 0;
      *(&hdlr->internalSubset + v5) = v3;
      *(&hdlr->internalSubset + v4) = v2;
      hdlr->initialized = version;
      hdlr->internalSubset = xmlSAX2InternalSubset;
      hdlr->externalSubset = xmlSAX2ExternalSubset;
      hdlr->isStandalone = xmlSAX2IsStandalone;
      hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
      hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
      hdlr->resolveEntity = xmlSAX2ResolveEntity;
      hdlr->getEntity = xmlSAX2GetEntity;
      hdlr->getParameterEntity = xmlSAX2GetParameterEntity;
      hdlr->entityDecl = xmlSAX2EntityDecl;
      hdlr->attributeDecl = xmlSAX2AttributeDecl;
      hdlr->elementDecl = xmlSAX2ElementDecl;
      hdlr->notationDecl = xmlSAX2NotationDecl;
      hdlr->unparsedEntityDecl = xmlSAX2UnparsedEntityDecl;
      hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
      hdlr->startDocument = xmlSAX2StartDocument;
      hdlr->endDocument = xmlSAX2EndDocument;
      hdlr->reference = xmlSAX2Reference;
      hdlr->characters = xmlSAX2Characters;
      hdlr->ignorableWhitespace = xmlSAX2Characters;
      hdlr->cdataBlock = xmlSAX2CDataBlock;
      hdlr->processingInstruction = xmlSAX2ProcessingInstruction;
      hdlr->comment = xmlSAX2Comment;
      hdlr->warning = xmlParserWarning;
      hdlr->error = xmlParserError;
      hdlr->fatalError = xmlParserError;
      return v6;
    }
  }

  return -1;
}

xmlParserCtxtPtr xmlCreateMemoryParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer)
  {
    if (size >= 1)
    {
      v2 = xmlNewParserCtxt();
      if (v2)
      {
        Mem = xmlParserInputBufferCreateMem(buffer, size, XML_CHAR_ENCODING_NONE);
        if (!Mem)
        {
LABEL_9:
          xmlFreeParserCtxt(v2);
          return 0;
        }

        v6 = Mem;
        v7 = xmlNewInputStream(v2);
        if (!v7)
        {
          xmlFreeParserInputBuffer(v6);
          goto LABEL_9;
        }

        v8 = v7;
        v7->buf = v6;
        v7->filename = 0;
        xmlBufResetInput(v6->buffer, v7);
        if (inputPush(v2, v8) < 0)
        {
          xmlFreeInputStream(v8);
          goto LABEL_9;
        }
      }
    }
  }

  return v2;
}

void xmlRegisterDefaultInputCallbacks(void)
{
  if ((xmlInputCallbackInitialized & 1) == 0)
  {
    v0 = xmlInputCallbackNr;
    if (xmlInputCallbackNr <= 14)
    {
      v1 = (&xmlInputCallbackTable + 32 * xmlInputCallbackNr);
      *v1 = xmlFileMatch;
      v1[1] = xmlFileOpen;
      v1[2] = xmlFileRead;
      v1[3] = xmlFileClose;
      xmlInputCallbackNr = v0 + 1;
      if (v0 != 14)
      {
        v2 = (&xmlInputCallbackTable + 32 * v0 + 32);
        *v2 = xmlGzfileMatch;
        v2[1] = xmlGzfileOpen;
        v2[2] = xmlGzfileRead;
        v2[3] = xmlGzfileClose;
        xmlInputCallbackNr = v0 + 2;
        if (v0 <= 12)
        {
          v3 = (&xmlInputCallbackTable + 32 * v0 + 64);
          *v3 = xmlIOHTTPMatch;
          v3[1] = xmlIOHTTPOpen;
          v3[2] = xmlIOHTTPRead;
          v3[3] = xmlIOHTTPClose;
          xmlInputCallbackNr = v0 + 3;
          if (v0 != 12)
          {
            v4 = (&xmlInputCallbackTable + 32 * v0 + 96);
            *v4 = xmlIOFTPMatch;
            v4[1] = xmlIOFTPOpen;
            v4[2] = xmlIOFTPRead;
            v4[3] = xmlIOFTPClose;
            xmlInputCallbackNr = v0 + 4;
          }
        }
      }
    }

    xmlInputCallbackInitialized = 1;
  }
}

void xmlSAX2InitHtmlDefaultSAXHandler(xmlSAXHandler *hdlr)
{
  if (hdlr)
  {
    if (!hdlr->initialized)
    {
      hdlr->internalSubset = xmlSAX2InternalSubset;
      hdlr->externalSubset = 0;
      *&hdlr->isStandalone = 0u;
      *&hdlr->hasExternalSubset = 0u;
      hdlr->getEntity = xmlSAX2GetEntity;
      *&hdlr->entityDecl = 0u;
      *&hdlr->attributeDecl = 0u;
      hdlr->unparsedEntityDecl = 0;
      hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
      hdlr->startDocument = xmlSAX2StartDocument;
      hdlr->endDocument = xmlSAX2EndDocument;
      hdlr->startElement = xmlSAX2StartElement;
      hdlr->endElement = xmlSAX2EndElement;
      hdlr->reference = 0;
      hdlr->characters = xmlSAX2Characters;
      hdlr->getParameterEntity = 0;
      hdlr->cdataBlock = xmlSAX2CDataBlock;
      hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
      hdlr->processingInstruction = xmlSAX2ProcessingInstruction;
      hdlr->comment = xmlSAX2Comment;
      hdlr->warning = xmlParserWarning;
      hdlr->error = xmlParserError;
      hdlr->fatalError = xmlParserError;
      hdlr->initialized = 1;
    }
  }
}

void xmlXPathInit(void)
{
  xmlXPathNAN = NAN;
  xmlXPathPINF = INFINITY;
  xmlXPathNINF = -INFINITY;
}

xmlParserCtxtPtr xmlNewParserCtxt(void)
{
  v0 = malloc_type_malloc(0x2F0uLL, 0x10F0040410C4EF0uLL);
  v1 = v0;
  if (v0)
  {
    bzero(v0, 0x2F0uLL);
    if (xmlInitParserCtxt(v1) < 0)
    {
      xmlFreeParserCtxt(v1);
      return 0;
    }
  }

  else
  {
    xmlErrMemory(0, "cannot allocate parser context\n");
  }

  return v1;
}

int xmlInitParserCtxt(xmlParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 1u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "Got NULL parser context\n", 0);
    return -1;
  }

  xmlDefaultSAXHandlerInit();
  dict = ctxt->dict;
  if (!dict && (dict = xmlDictCreate(), (ctxt->dict = dict) == 0) || (xmlDictSetLimit(dict, 0x989680uLL), (dict = ctxt->sax) == 0) && (dict = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL), (ctxt->sax = dict) == 0))
  {
    xmlErrMemory(dict, "cannot initialize parser context\n");
    return -1;
  }

  xmlSAXVersion(dict, 2);
  ctxt->maxatts = 0;
  ctxt->atts = 0;
  if (!ctxt->inputTab)
  {
    v3 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
    ctxt->inputTab = v3;
    ctxt->inputMax = 5;
    if (!v3)
    {
      xmlErrMemory(0, "cannot initialize parser context\n");
      ctxt->input = 0;
      *&ctxt->inputNr = 0;
      return -1;
    }
  }

  while (1)
  {
    v4 = inputPop(ctxt);
    if (!v4)
    {
      break;
    }

    xmlFreeInputStream(v4);
  }

  ctxt->input = 0;
  p_input = &ctxt->input;
  ctxt->inputNr = 0;
  *&ctxt->version = 0u;
  *&ctxt->hasPErefs = 0;
  ctxt->hasExternalSubset = 0;
  *&ctxt->standalone = 0xFFFFFFFFLL;
  *&ctxt->instate = 0;
  ctxt->directory = 0;
  if (ctxt->nodeTab || (v6 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL), ctxt->nodeTab = v6, ctxt->nodeMax = 10, v6))
  {
    ctxt->node = 0;
    p_node = &ctxt->node;
    ctxt->nodeNr = 0;
    if (ctxt->nameTab || (v8 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL), ctxt->nameTab = v8, ctxt->nameMax = 10, v8))
    {
      ctxt->nameNr = 0;
      ctxt->name = 0;
      spaceTab = ctxt->spaceTab;
      if (spaceTab || (spaceTab = malloc_type_malloc(0x28uLL, 0x100004052888210uLL), ctxt->spaceTab = spaceTab, ctxt->spaceMax = 10, spaceTab))
      {
        *&ctxt->spaceNr = 0xA00000001;
        *spaceTab = -1;
        ctxt->space = spaceTab;
        ctxt->userData = ctxt;
        ctxt->myDoc = 0;
        ctxt->wellFormed = 1;
        ctxt->nsWellFormed = 1;
        ctxt->valid = 1;
        ExtDtdDefaultValue = __xmlLoadExtDtdDefaultValue();
        v11 = *ExtDtdDefaultValue;
        ctxt->loadsubset = *ExtDtdDefaultValue;
        if (v11)
        {
          ctxt->options |= 4u;
        }

        ctxt->validate = *__xmlDoValidityCheckingDefaultValue();
        v12 = __xmlPedanticParserDefaultValue();
        v13 = *v12;
        ctxt->pedantic = *v12;
        if (v13)
        {
          ctxt->options |= 0x80u;
        }

        ctxt->linenumbers = *__xmlLineNumbersDefaultValue();
        v14 = __xmlKeepBlanksDefaultValue();
        v15 = *v14;
        ctxt->keepBlanks = *v14;
        if (!v15)
        {
          ctxt->sax->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
          ctxt->options |= 0x100u;
        }

        ctxt->vctxt.finishDtd = -1412623820;
        ctxt->vctxt.userData = ctxt;
        ctxt->vctxt.error = xmlParserValidityError;
        ctxt->vctxt.warning = xmlParserValidityWarning;
        if (ctxt->validate)
        {
          if (*__xmlGetWarningsDefaultValue())
          {
            v16 = xmlParserValidityWarning;
          }

          else
          {
            v16 = 0;
          }

          ctxt->vctxt.warning = v16;
          ctxt->vctxt.nodeMax = 0;
          ctxt->options |= 0x10u;
        }

        v17 = __xmlSubstituteEntitiesDefaultValue();
        v18 = *v17;
        ctxt->replaceEntities = *v17;
        if (v18)
        {
          ctxt->options |= 2u;
        }

        result = 0;
        ctxt->record_info = 0;
        ctxt->checkIndex = 0;
        ctxt->inSubset = 0;
        ctxt->errNo = 0;
        ctxt->depth = 0;
        *&ctxt->nbentities = 0u;
        ctxt->charset = 1;
        ctxt->catalogs = 0;
        ctxt->sizeentcopy = 0;
        ctxt->input_id = 1;
        ctxt->node_seq.length = 0;
        ctxt->node_seq.buffer = 0;
        ctxt->node_seq.maximum = 0;
      }

      else
      {
        xmlErrMemory(0, "cannot initialize parser context\n");
        *p_input = 0;
        *&ctxt->inputNr = 0;
        *p_node = 0;
        *&ctxt->nodeNr = 0;
        ctxt->name = 0;
        *&ctxt->nameNr = 0;
        result = -1;
        ctxt->space = 0;
        *&ctxt->spaceNr = 0;
      }
    }

    else
    {
      xmlErrMemory(0, "cannot initialize parser context\n");
      *p_input = 0;
      *&ctxt->inputNr = 0;
      *p_node = 0;
      *&ctxt->nodeNr = 0;
      result = -1;
      ctxt->name = 0;
      *&ctxt->nameNr = 0;
    }
  }

  else
  {
    xmlErrMemory(0, "cannot initialize parser context\n");
    *p_input = 0;
    *&ctxt->inputNr = 0;
    result = -1;
    ctxt->node = 0;
    *&ctxt->nodeNr = 0;
  }

  return result;
}

xmlDictPtr xmlDictCreate(void)
{
  if (!xmlDictMutex)
  {
    pthread_once(&once_control_0, _xmlInitializeDictMutex);
    if (!xmlDictMutex)
    {
      return 0;
    }
  }

  v0 = malloc_type_malloc(0x40uLL, 0x1020040B393D468uLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 1;
    v0[7] = 0;
    v0[2] = 128;
    *(v0 + 6) = 0;
    v2 = malloc_type_malloc(0x1000uLL, 0x1070040F9ABC4D2uLL);
    v1[1] = v2;
    v1[4] = 0;
    v1[5] = 0;
    if (v2)
    {
      bzero(v2, 0x1000uLL);
      *(v1 + 12) = __xmlRandom();
      return v1;
    }

    free(v1);
    return 0;
  }

  return v1;
}

uint64_t __xmlRandom()
{
  v0 = xmlDictMutex;
  if (!xmlDictMutex)
  {
    pthread_once(&once_control_0, _xmlInitializeDictMutex);
    v0 = xmlDictMutex;
  }

  xmlRMutexLock(v0);
  v1 = rand_r(&rand_seed);
  xmlRMutexUnlock(xmlDictMutex);
  return v1;
}

int *__xmlLoadExtDtdDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlLoadExtDtdDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlLoadExtDtdDefaultValue;
  }
}

int *__xmlPedanticParserDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlPedanticParserDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlPedanticParserDefaultValue;
  }
}

xmlParserInputPtr inputPop(xmlParserInputPtr ctxt)
{
  if (ctxt)
  {
    consumed_low = LODWORD(ctxt->consumed);
    if (consumed_low < 1)
    {
      return 0;
    }

    else
    {
      free = ctxt->free;
      v3 = consumed_low - 1;
      LODWORD(ctxt->consumed) = consumed_low - 1;
      if (consumed_low == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(free + consumed_low - 2);
      }

      *&ctxt->col = v4;
      ctxt = *(free + v3);
      *(free + v3) = 0;
    }
  }

  return ctxt;
}

int *__xmlDoValidityCheckingDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlDoValidityCheckingDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlDoValidityCheckingDefaultValue;
  }
}

size_t xmlDictSetLimit(size_t dict, size_t limit)
{
  if (dict)
  {
    v2 = dict;
    dict = *(dict + 56);
    *(v2 + 56) = limit;
  }

  return dict;
}

int *__xmlLineNumbersDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlLineNumbersDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlLineNumbersDefaultValue;
  }
}

int *__xmlSubstituteEntitiesDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlSubstituteEntitiesDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlSubstituteEntitiesDefaultValue;
  }
}

int *__xmlKeepBlanksDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlKeepBlanksDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlKeepBlanksDefaultValue;
  }
}

xmlBufferAllocationScheme *__xmlBufferAllocScheme(void)
{
  if (xmlIsMainThread())
  {
    return &xmlBufferAllocScheme;
  }

  else
  {
    return &xmlGetGlobalState()->xmlBufferAllocScheme;
  }
}

int *__xmlDefaultBufferSize(void)
{
  if (xmlIsMainThread())
  {
    return &xmlDefaultBufferSize;
  }

  else
  {
    return &xmlGetGlobalState()->xmlDefaultBufferSize;
  }
}

xmlParserInputBufferPtr xmlAllocParserInputBuffer(xmlCharEncoding enc)
{
  v2 = malloc_type_malloc(0x40uLL, 0x10A0040046C4AC8uLL);
  v3 = v2;
  if (v2)
  {
    *&v2->buffer = 0u;
    *&v2->compressed = 0u;
    *&v2->context = 0u;
    *&v2->closecallback = 0u;
    v4 = __xmlDefaultBufferSize();
    Size = xmlBufCreateSize(2 * *v4);
    v3->buffer = Size;
    if (Size)
    {
      xmlBufSetAllocationScheme(Size, 0);
      CharEncodingHandler = xmlGetCharEncodingHandler(enc);
      v3->encoder = CharEncodingHandler;
      if (CharEncodingHandler)
      {
        v7 = __xmlDefaultBufferSize();
        CharEncodingHandler = xmlBufCreateSize(2 * *v7);
      }

      v3->raw = CharEncodingHandler;
      v3->readcallback = 0;
      v3->closecallback = 0;
      v3->context = 0;
      v3->compressed = -1;
      v3->rawconsumed = 0;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(8u, 2, 0, 0, "creating input buffer");
  }

  return v3;
}

void *xmlBufCreateSize(uint64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x40uLL, 0x10300408E9632E7uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *(v2 + 14) = 0;
    v2[6] = 0;
    v4 = *__xmlBufferAllocScheme();
    if (a1)
    {
      v5 = a1 + 1;
    }

    else
    {
      v5 = 0;
    }

    v3[5] = v5;
    LODWORD(v6) = 0x7FFFFFFF;
    if (v5 >= 0x7FFFFFFF)
    {
      LODWORD(v5) = 0x7FFFFFFF;
    }

    if (v3[4] < 0x7FFFFFFFuLL)
    {
      v6 = v3[4];
    }

    *(v3 + 3) = v5;
    *(v3 + 4) = v4;
    *(v3 + 2) = v6;
    if (!a1)
    {
      *v3 = 0;
      goto LABEL_15;
    }

    v7 = malloc_type_malloc(a1 + 1, 0x100004077774924uLL);
    *v3 = v7;
    if (v7)
    {
      bzero(v7, v3[5]);
LABEL_15:
      v3[3] = 0;
      return v3;
    }

    __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
    free(v3);
    return 0;
  }

  __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
  return v3;
}

const xmlChar *__cdecl xmlDictLookup(xmlDictPtr dict, const xmlChar *name, int len)
{
  v3 = 0;
  if (!dict || !name)
  {
    return v3;
  }

  if (len < 0)
  {
    v6 = strlen(name);
  }

  else
  {
    v6 = len;
  }

  v7 = *(dict + 7);
  v8 = v6 >> 30;
  if (v7)
  {
    v3 = 0;
    if (v8 || v6 >= v7)
    {
      return v3;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(dict + 2);
  if (v9 == 128)
  {
    v10 = xmlDictComputeFastKey(name, v6, *(dict + 12));
  }

  else if (v6)
  {
    v11 = *(dict + 12);
    v12 = name;
    v13 = v6;
    do
    {
      v14 = *v12++;
      v11 = (1025 * (v11 + v14)) ^ ((1025 * (v11 + v14)) >> 6);
      --v13;
    }

    while (v13);
    v10 = 32769 * ((9 * v11) ^ ((9 * v11) >> 11));
  }

  else
  {
    v10 = 0;
  }

  v15 = *(dict + 1) + 32 * (v10 % v9);
  v41 = v10 % v9;
  if (!*(v15 + 20))
  {
    v17 = 0;
    v15 = 0;
LABEL_31:
    v19 = *(dict + 5);
    if (v19)
    {
      v20 = *(v19 + 16);
      if (v9 == 128)
      {
        if (v20 == 128)
        {
          v21 = v10;
        }

        else if (v6 < 1)
        {
          v21 = 0;
        }

        else
        {
          v22 = *(v19 + 48);
          v23 = v6 & 0x7FFFFFFF;
          v24 = name;
          do
          {
            v25 = *v24++;
            v22 = (1025 * (v22 + v25)) ^ ((1025 * (v22 + v25)) >> 6);
            --v23;
          }

          while (v23);
          v21 = 32769 * ((9 * v22) ^ ((9 * v22) >> 11));
        }
      }

      else
      {
        v21 = v10;
        if (v20 == 128)
        {
          v21 = xmlDictComputeFastKey(name, v6, *(v19 + 48));
          v20 = 128;
        }
      }

      v26 = *(v19 + 8) + 32 * (v21 % v20);
      if (*(v26 + 20))
      {
        while (*v26)
        {
          v27 = v26;
          v26 = *v26;
          if (*(v27 + 24) == v21 && v6 == *(v27 + 16))
          {
            v3 = *(v27 + 8);
            if (!memcmp(v3, name, v6))
            {
              return v3;
            }
          }

          ++v17;
        }

        if (*(v26 + 24) == v21 && v6 == *(v26 + 16))
        {
          v3 = *(v26 + 8);
          if (!memcmp(v3, name, v6))
          {
            return v3;
          }
        }
      }
    }

    v28 = *(dict + 4);
    if (v28)
    {
      v29 = 0;
      v30 = 0;
      v31 = v6;
      while (1)
      {
        v3 = v28[1];
        if (v28[2] - v3 > v6)
        {
          break;
        }

        v32 = v28[3];
        if (v32 > v30)
        {
          v30 = v28[3];
        }

        v29 += v32;
        v28 = *v28;
        if (!v28)
        {
          if (v7 && v29 > v7)
          {
            return 0;
          }

          if (!v30)
          {
            goto LABEL_61;
          }

          v33 = 4 * v30;
          goto LABEL_62;
        }
      }
    }

    else
    {
LABEL_61:
      v33 = 1000;
LABEL_62:
      if (v33 <= 4 * (v6 & 0x3FFFFFFF))
      {
        v34 = 4 * (v6 & 0x3FFFFFFF);
      }

      else
      {
        v34 = v33;
      }

      v35 = malloc_type_malloc(v34 + 48, 0x1030040341BC655uLL);
      if (!v35)
      {
        return 0;
      }

      v28 = v35;
      v35[3] = v34;
      v35[4] = 0;
      v3 = (v35 + 5);
      v35[2] = v35 + v34 + 40;
      *v35 = *(dict + 4);
      v35[1] = v35 + 5;
      *(dict + 4) = v35;
      v31 = v6;
    }

    memcpy(v3, name, v31);
    v36 = (v28[1] + v31);
    v28[1] = v36 + 1;
    *v36 = 0;
    ++v28[4];
    if (!v3)
    {
      return v3;
    }

    if (v15)
    {
      v37 = malloc_type_malloc(0x20uLL, 0x1070040F9ABC4D2uLL);
      if (!v37)
      {
        return 0;
      }

      *v37 = 0;
      v37[1] = v3;
      *(v37 + 4) = v6;
      *(v37 + 5) = 1;
      v37[3] = v10;
      *v15 = v37;
    }

    else
    {
      v38 = *(dict + 1) + 32 * v41;
      *v38 = 0;
      *(v38 + 8) = v3;
      *(v38 + 16) = v6;
      *(v38 + 20) = 1;
      *(v38 + 24) = v10;
    }

    ++*(dict + 6);
    if (v17 < 4)
    {
      return v3;
    }

    v39 = *(dict + 2);
    if (v39 > 0xAAA || !xmlDictGrow(dict, 6 * v39))
    {
      return v3;
    }

    return 0;
  }

  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    while (1)
    {
      v18 = v15;
      v15 = v16;
      if (*(v18 + 24) == v10 && v6 == *(v18 + 16))
      {
        v3 = *(v18 + 8);
        if (!memcmp(v3, name, v6))
        {
          return v3;
        }
      }

      ++v17;
      v16 = *v15;
      if (!*v15)
      {
        goto LABEL_28;
      }
    }
  }

  v17 = 0;
LABEL_28:
  if (*(v15 + 24) != v10)
  {
    goto LABEL_31;
  }

  if (v6 != *(v15 + 16))
  {
    goto LABEL_31;
  }

  v3 = *(v15 + 8);
  if (memcmp(v3, name, v6))
  {
    goto LABEL_31;
  }

  return v3;
}

uint64_t xmlDictComputeFastKey(unsigned __int8 *a1, int a2, int a3)
{
  result = a3;
  if (a1 && a2 >= 1)
  {
    result = 32 * (*a1 + a3);
    if (a2 >= 0xB)
    {
      result += a1[a2 - 1];
      goto LABEL_5;
    }

    if (a2 > 5)
    {
      if (a2 <= 7)
      {
        if (a2 == 6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      if (a2 == 8)
      {
LABEL_7:
        result += a1[7];
LABEL_8:
        result += a1[6];
LABEL_9:
        result += a1[5];
LABEL_10:
        result += a1[4];
LABEL_11:
        result += a1[3];
        goto LABEL_12;
      }

      if (a2 == 9)
      {
LABEL_6:
        result += a1[8];
        goto LABEL_7;
      }

LABEL_5:
      result += a1[9];
      goto LABEL_6;
    }

    if (a2 > 3)
    {
      if (a2 == 4)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    if (a2 == 2)
    {
      goto LABEL_13;
    }

    if (a2 == 3)
    {
LABEL_12:
      result += a1[2];
LABEL_13:
      result += a1[1];
    }
  }

  return result;
}

xmlCharEncodingHandlerPtr xmlGetCharEncodingHandler(xmlCharEncoding enc)
{
  if (!handlers)
  {
    xmlInitCharEncodingHandlers();
  }

  result = 0;
  switch(enc)
  {
    case XML_CHAR_ENCODING_ERROR:
    case XML_CHAR_ENCODING_NONE:
    case XML_CHAR_ENCODING_UTF8:
      return result;
    case XML_CHAR_ENCODING_UTF16LE:
      return xmlUTF16LEHandler;
    case XML_CHAR_ENCODING_UTF16BE:
      return xmlUTF16BEHandler;
    case XML_CHAR_ENCODING_UCS4LE:
    case XML_CHAR_ENCODING_UCS4BE:
      result = xmlFindCharEncodingHandler("ISO-10646-UCS-4");
      if (!result)
      {
        result = xmlFindCharEncodingHandler("UCS-4");
        if (!result)
        {
          v3 = "UCS4";
          goto LABEL_30;
        }
      }

      return result;
    case XML_CHAR_ENCODING_EBCDIC:
      result = xmlFindCharEncodingHandler("EBCDIC");
      if (!result)
      {
        result = xmlFindCharEncodingHandler("ebcdic");
        if (!result)
        {
          result = xmlFindCharEncodingHandler("EBCDIC-US");
          if (!result)
          {
            v3 = "IBM-037";
            goto LABEL_30;
          }
        }
      }

      return result;
    case XML_CHAR_ENCODING_UCS2:
      result = xmlFindCharEncodingHandler("ISO-10646-UCS-2");
      if (!result)
      {
        result = xmlFindCharEncodingHandler("UCS-2");
        if (!result)
        {
          v3 = "UCS2";
          goto LABEL_30;
        }
      }

      return result;
    case XML_CHAR_ENCODING_8859_1:
      v3 = "ISO-8859-1";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_2:
      v3 = "ISO-8859-2";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_3:
      v3 = "ISO-8859-3";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_4:
      v3 = "ISO-8859-4";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_5:
      v3 = "ISO-8859-5";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_6:
      v3 = "ISO-8859-6";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_7:
      v3 = "ISO-8859-7";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_8:
      v3 = "ISO-8859-8";
      goto LABEL_30;
    case XML_CHAR_ENCODING_8859_9:
      v3 = "ISO-8859-9";
      goto LABEL_30;
    case XML_CHAR_ENCODING_2022_JP:
      v3 = "ISO-2022-JP";
      goto LABEL_30;
    case XML_CHAR_ENCODING_SHIFT_JIS:
      result = xmlFindCharEncodingHandler("SHIFT-JIS");
      if (result)
      {
        return result;
      }

      result = xmlFindCharEncodingHandler("SHIFT_JIS");
      if (result)
      {
        return result;
      }

      v3 = "Shift_JIS";
LABEL_30:
      result = xmlFindCharEncodingHandler(v3);
      if (!result)
      {
        return 0;
      }

      return result;
    case XML_CHAR_ENCODING_EUC_JP:
      v3 = "EUC-JP";
      goto LABEL_30;
    default:
      return 0;
  }
}

int xmlParseDocument(xmlParserCtxtPtr ctxt)
{
  xmlInitParser();
  if (!ctxt)
  {
    return -1;
  }

  input = ctxt->input;
  if (!input)
  {
    return -1;
  }

  if (!ctxt->progressive && input->end - input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  xmlDetectSAX2(ctxt);
  if (ctxt->sax)
  {
    setDocumentLocator = ctxt->sax->setDocumentLocator;
    if (setDocumentLocator)
    {
      userData = ctxt->userData;
      v5 = __xmlDefaultSAXLocator();
      (setDocumentLocator)(userData, v5);
    }
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  *in = 0;
  if (!ctxt->encoding)
  {
    cur = ctxt->input->cur;
    if (ctxt->input->end - cur >= 4)
    {
      *in = *cur;
      v7 = xmlDetectCharEncoding(in, 4);
      if (v7)
      {
        xmlSwitchEncoding(ctxt, v7);
      }
    }
  }

  v8 = ctxt->input;
  v9 = v8->cur;
  v10 = *v9;
  if (!*v9)
  {
    xmlFatalErr(ctxt, 4, 0);
    return -1;
  }

  if (v8->end - v9 <= 34 && !ctxt->progressive)
  {
    xmlGROW(ctxt);
    v9 = ctxt->input->cur;
    v10 = *v9;
  }

  if (v10 == 60 && v9[1] == 63 && v9[2] == 120 && v9[3] == 109 && v9[4] == 108 && (v11 = v9[5], v11 <= 0x20) && ((1 << v11) & 0x100002600) != 0)
  {
    xmlParseXMLDecl(ctxt);
    if (ctxt->errNo == 32 || ctxt->instate == XML_PARSER_EOF)
    {
      return -1;
    }

    ctxt->standalone = ctxt->input->standalone;
    xmlSkipBlankChars(ctxt);
  }

  else
  {
    ctxt->version = xmlCharStrdup("1.0");
  }

  if (ctxt->sax)
  {
    startDocument = ctxt->sax->startDocument;
    if (startDocument)
    {
      if (!ctxt->disableSAX)
      {
        (startDocument)(ctxt->userData);
      }
    }
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  myDoc = ctxt->myDoc;
  if (myDoc)
  {
    v14 = ctxt->input;
    if (v14)
    {
      buf = v14->buf;
      if (buf)
      {
        compressed = buf->compressed;
        if ((compressed & 0x80000000) == 0)
        {
          myDoc->compression = compressed;
        }
      }
    }
  }

  xmlParseMisc(ctxt);
  v17 = ctxt->input;
  if (!ctxt->progressive && v17->end - v17->cur <= 249)
  {
    xmlGROW(ctxt);
    v17 = ctxt->input;
  }

  v18 = v17->cur;
  if (*v18 == 60 && v18[1] == 33 && v18[2] == 68 && v18[3] == 79 && v18[4] == 67 && v18[5] == 84 && v18[6] == 89 && v18[7] == 80 && v18[8] == 69)
  {
    ctxt->inSubset = 1;
    xmlParseDocTypeDecl(ctxt);
    if (*ctxt->input->cur == 91)
    {
      ctxt->instate = XML_PARSER_DTD;
      xmlParseInternalSubset(ctxt);
      if (ctxt->instate == XML_PARSER_EOF)
      {
        return -1;
      }
    }

    ctxt->inSubset = 2;
    if (ctxt->sax)
    {
      externalSubset = ctxt->sax->externalSubset;
      if (externalSubset)
      {
        if (!ctxt->disableSAX)
        {
          (externalSubset)(ctxt->userData, ctxt->intSubName, ctxt->extSubSystem, ctxt->extSubURI);
        }
      }
    }

    if (ctxt->instate == XML_PARSER_EOF)
    {
      return -1;
    }

    ctxt->inSubset = 0;
    xmlCleanSpecialAttr(ctxt);
    ctxt->instate = XML_PARSER_PROLOG;
    xmlParseMisc(ctxt);
    v17 = ctxt->input;
  }

  if (!ctxt->progressive && v17->end - v17->cur <= 249)
  {
    xmlGROW(ctxt);
    v17 = ctxt->input;
  }

  if (*v17->cur == 60)
  {
    ctxt->instate = XML_PARSER_CONTENT;
    xmlParseElement(ctxt);
    ctxt->instate = XML_PARSER_EPILOG;
    xmlParseMisc(ctxt);
    if (*ctxt->input->cur)
    {
      xmlFatalErr(ctxt, 5, 0);
    }

    ctxt->instate = XML_PARSER_EOF;
  }

  else
  {
    xmlFatalErrMsg(ctxt, 4, "Start tag expected, '<' not found\n");
  }

  if (ctxt->sax)
  {
    endDocument = ctxt->sax->endDocument;
    if (endDocument)
    {
      (endDocument)(ctxt->userData);
    }
  }

  v21 = ctxt->myDoc;
  if (v21 && xmlStrEqual(v21->version, "SAX compatibility mode document"))
  {
    xmlFreeDoc(ctxt->myDoc);
    ctxt->myDoc = 0;
  }

  if (!ctxt->wellFormed)
  {
    ctxt->valid = 0;
    return -1;
  }

  v22 = ctxt->myDoc;
  if (!v22)
  {
    return 0;
  }

  properties = v22->properties;
  v24 = properties | 1;
  v22->properties = properties | 1;
  if (ctxt->valid)
  {
    v24 = properties | 9;
    v22->properties = properties | 9;
  }

  if (ctxt->nsWellFormed)
  {
    v24 |= 2u;
    v22->properties = v24;
  }

  if ((ctxt->options & 0x20000) == 0)
  {
    return 0;
  }

  result = 0;
  v22->properties = v24 | 4;
  return result;
}

uint64_t xmlBufAdd(uint64x2_t *a1, const xmlChar *__src, size_t __len)
{
  result = 0xFFFFFFFFLL;
  if (a1 && __src && !a1[3].i32[2])
  {
    v6 = a1->u32[3];
    if (v6 <= 0x7FFFFFFE && a1[2].i64[1] != v6)
    {
      a1[2].i64[1] = v6;
    }

    v8 = a1->u32[2];
    if (v8 <= 0x7FFFFFFE && a1[2].i64[0] != v8)
    {
      a1[2].i64[0] = v8;
    }

    if (__len >= -1 && a1[1].i32[0] != 2)
    {
      if (!__len)
      {
        return 0;
      }

      if ((__len & 0x80000000) != 0)
      {
        LODWORD(__len) = xmlStrlen(__src);
        if ((__len & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (!__len)
      {
        return 0;
      }

      v9 = __len;
      v10 = a1[2].i64[0];
      if (a1[2].i64[1] - v10 > __len)
      {
LABEL_20:
        memmove((a1->i64[0] + v10), __src, v9);
        result = 0;
        v11 = a1[2].i64[0] + v9;
        a1[2].i64[0] = v11;
        *(a1->i64[0] + v11) = 0;
        v12 = vdupq_n_s64(0x7FFFFFFFuLL);
        a1->u64[1] = vmovn_s64(vbslq_s8(vcgtq_u64(v12, a1[2]), a1[2], v12));
        return result;
      }

      if (__len >= ~v10)
      {
        v14 = "growing buffer past SIZE_MAX";
        goto LABEL_27;
      }

      v13 = __len + v10 + 1;
      if (v13 >= 0x989680 && a1[1].i32[0] == 5)
      {
        v14 = "buffer error: text too long\n";
LABEL_27:
        xmlBufMemoryError(a1, v14);
        return 0xFFFFFFFFLL;
      }

      if (xmlBufResize(a1, v13))
      {
        v10 = a1[2].i64[0];
        goto LABEL_20;
      }

      xmlBufMemoryError(a1, "growing buffer");
      return 2;
    }
  }

  return result;
}

uint64_t xmlBufSetAllocationScheme(uint64_t a1, unsigned int a2)
{
  if (!a1 || *(a1 + 56) || (*(a1 + 16) & 0xFFFFFFFE) == 2 || a2 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 == 3)
  {
    *(a1 + 16) = 3;
    *(a1 + 24) = *a1;
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = a2;
  v3 = *(a1 + 48);
  result = 0;
  if (v3)
  {
    *(v3 + 16) = a2;
  }

  return result;
}

const xmlChar *xmlDetectSAX2(const xmlChar *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (*result && *(v2 + 216) == -554844497 && ((*(v2 + 232) || !*(v2 + 112)) && (*(v2 + 240) || !*(v2 + 120)) || *(result + 13) || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT) || xmlDetectSAX2_cold_1((v2 + 216))) && (*(v2 + 232) || *(v2 + 240) || !*(v2 + 112) && !*(v2 + 120)))
    {
      *(v1 + 126) = 1;
    }

    *(v1 + 60) = xmlDictLookup(*(v1 + 57), "xml", 3);
    *(v1 + 61) = xmlDictLookup(*(v1 + 57), "xmlns", 5);
    result = xmlDictLookup(*(v1 + 57), "http://www.w3.org/XML/1998/namespace", 36);
    *(v1 + 62) = result;
    if (!*(v1 + 60) || !*(v1 + 61) || !result)
    {
      return xmlErrMemory(v1, 0);
    }
  }

  return result;
}

int inputPush(xmlParserCtxtPtr ctxt, xmlParserInputPtr value)
{
  result = -1;
  if (ctxt && value)
  {
    result = ctxt->inputNr;
    inputMax = ctxt->inputMax;
    if (result < inputMax)
    {
      inputTab = ctxt->inputTab;
LABEL_8:
      inputTab[result] = value;
      ctxt->input = value;
      ctxt->inputNr = result + 1;
      return result;
    }

    if (!(inputMax >> 27))
    {
      v7 = malloc_type_realloc(ctxt->inputTab, 16 * inputMax, 0x2004093837F09uLL);
      if (v7)
      {
        inputTab = v7;
        ctxt->inputTab = v7;
        ctxt->inputMax = 2 * inputMax;
        result = ctxt->inputNr;
        goto LABEL_8;
      }
    }

    xmlErrMemory(ctxt, 0);
    return -1;
  }

  return result;
}

xmlParserInputPtr xmlNewInputStream(xmlParserCtxtPtr ctxt)
{
  v2 = malloc_type_malloc(0x68uLL, 0x10F00401DB255F5uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 12) = 0;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 52) = 0x100000001;
    *(v2 + 24) = -1;
    if (ctxt)
    {
      input_id = ctxt->input_id;
      ctxt->input_id = input_id + 1;
      *(v2 + 25) = input_id;
    }
  }

  else
  {
    xmlErrMemory(ctxt, "couldn't allocate a new input stream\n");
  }

  return v3;
}

uint64_t xmlBufResetInput(uint64_t *a1, void *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 && !*(a1 + 14))
  {
    v5 = *(a1 + 3);
    if (v5 <= 0x7FFFFFFE && a1[5] != v5)
    {
      a1[5] = v5;
    }

    v7 = a1[4];
    v8 = *(a1 + 2);
    if (v8 <= 0x7FFFFFFE && v7 != v8)
    {
      a1[4] = v8;
      v7 = v8;
    }

    v3 = 0;
    v9 = *a1;
    a2[3] = *a1;
    a2[4] = v9;
    v2 = (v9 + v7);
    v4 = 5;
  }

  else
  {
    v2 = "";
    a2[4] = "";
    a2[5] = "";
    v3 = 0xFFFFFFFFLL;
    v4 = 3;
  }

  a2[v4] = v2;
  return v3;
}

xmlDocPtr xmlDoRead(xmlParserCtxt *a1, const xmlChar *a2, xmlChar *a3, uint64_t a4, int a5)
{
  xmlCtxtUseOptionsInternal(a1, a4, a3);
  if (a3)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(a3);
    if (CharEncodingHandler)
    {
      xmlSwitchToEncoding(a1, CharEncodingHandler);
    }
  }

  if (a2)
  {
    input = a1->input;
    if (input)
    {
      if (!input->filename)
      {
        a1->input->filename = xmlStrdup(a2);
      }
    }
  }

  xmlParseDocument(a1);
  if (a1->wellFormed || a1->recovery)
  {
    myDoc = a1->myDoc;
  }

  else
  {
    v13 = a1->myDoc;
    if (v13)
    {
      xmlFreeDoc(v13);
    }

    myDoc = 0;
  }

  a1->myDoc = 0;
  if (!a5)
  {
    xmlFreeParserCtxt(a1);
  }

  return myDoc;
}

uint64_t xmlCtxtUseOptionsInternal(uint64_t *a1, uint64_t a2, xmlChar *cur)
{
  if (a1)
  {
    if (cur)
    {
      v6 = a1[5];
      if (v6)
      {
        free(v6);
      }

      a1[5] = xmlStrdup(cur);
    }

    if (a2)
    {
      a2 = (a2 - 1);
      *(a1 + 141) |= 1u;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 112) = v7;
    if ((a2 & 4) != 0)
    {
      a2 = (a2 - 4);
      *(a1 + 141) |= 4u;
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 108) = v8;
    if ((a2 & 8) != 0)
    {
      *(a1 + 108) = v8 | 4;
      a2 = (a2 - 8);
      *(a1 + 141) |= 8u;
    }

    if ((a2 & 2) != 0)
    {
      a2 = (a2 - 2);
      *(a1 + 141) |= 2u;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 7) = v9;
    if ((a2 & 0x80) != 0)
    {
      a2 = (a2 - 128);
      *(a1 + 141) |= 0x80u;
      v10 = 1;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 105) = v10;
    if ((a2 & 0x100) != 0)
    {
      v11 = 0;
      *(*a1 + 144) = xmlSAX2IgnorableWhitespace;
      a2 = (a2 - 256);
      *(a1 + 141) |= 0x100u;
    }

    else
    {
      v11 = 1;
    }

    *(a1 + 82) = v11;
    if ((a2 & 0x10) != 0)
    {
      *(a1 + 39) = 1;
      if ((a2 & 0x40) != 0)
      {
        a1[22] = 0;
      }

      if ((a2 & 0x20) != 0)
      {
        a1[21] = 0;
      }

      a2 = (a2 - 16);
      *(a1 + 141) |= 0x10u;
      if ((a2 & 0x40) == 0)
      {
LABEL_33:
        if ((a2 & 0x20) != 0)
        {
          v13 = *a1;
          a2 = (a2 - 32);
          *(v13 + 176) = 0;
          *(v13 + 184) = 0;
          if ((a2 & 0x200) == 0)
          {
LABEL_35:
            if ((a2 & 0x1000) == 0)
            {
LABEL_36:
              v12 = 1;
              goto LABEL_40;
            }

LABEL_39:
            v12 = 0;
            a2 = (a2 - 4096);
            *(a1 + 141) |= 0x1000u;
LABEL_40:
            *(a1 + 142) = v12;
            if ((a2 & 0x4000) != 0)
            {
              *(*a1 + 200) = 0;
              a2 = (a2 - 0x4000);
              *(a1 + 141) |= 0x4000u;
              if ((a2 & 0x2000) == 0)
              {
LABEL_42:
                if ((a2 & 0x800) == 0)
                {
                  goto LABEL_43;
                }

                goto LABEL_50;
              }
            }

            else if ((a2 & 0x2000) == 0)
            {
              goto LABEL_42;
            }

            *(a1 + 141) |= 0x2000u;
            a2 = (a2 - 0x2000);
            if ((a2 & 0x800) == 0)
            {
LABEL_43:
              if ((a2 & 0x10000) == 0)
              {
                goto LABEL_44;
              }

              goto LABEL_51;
            }

LABEL_50:
            *(a1 + 141) |= 0x800u;
            a2 = (a2 - 2048);
            if ((a2 & 0x10000) == 0)
            {
LABEL_44:
              if ((a2 & 0x20000) == 0)
              {
                goto LABEL_45;
              }

              goto LABEL_52;
            }

LABEL_51:
            *(a1 + 141) |= 0x10000u;
            a2 = (a2 - 0x10000);
            if ((a2 & 0x20000) == 0)
            {
LABEL_45:
              if ((a2 & 0x40000) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_53;
            }

LABEL_52:
            *(a1 + 141) |= 0x20000u;
            a2 = (a2 - 0x20000);
            if ((a2 & 0x40000) == 0)
            {
LABEL_46:
              if ((a2 & 0x80000) == 0)
              {
                goto LABEL_56;
              }

              goto LABEL_54;
            }

LABEL_53:
            *(a1 + 141) |= 0x40000u;
            a2 = (a2 - 0x40000);
            if ((a2 & 0x80000) == 0)
            {
              goto LABEL_56;
            }

LABEL_54:
            *(a1 + 141) |= 0x80000u;
            a2 = (a2 - 0x80000);
            v15 = a1[57];
            if (v15)
            {
              xmlDictSetLimit(v15, 0);
            }

LABEL_56:
            if ((a2 & 0x100000) != 0)
            {
              *(a1 + 141) |= 0x100000u;
              a2 = (a2 - 0x100000);
              if ((a2 & 0x200000) == 0)
              {
LABEL_58:
                if ((a2 & 0x400000) == 0)
                {
LABEL_60:
                  *(a1 + 109) = 1;
                  return a2;
                }

LABEL_59:
                *(a1 + 141) |= 0x400000u;
                a2 = (a2 - 0x400000);
                goto LABEL_60;
              }
            }

            else if ((a2 & 0x200000) == 0)
            {
              goto LABEL_58;
            }

            *(a1 + 141) |= 0x200000u;
            a2 = (a2 - 0x200000);
            if ((a2 & 0x400000) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_59;
          }
        }

        else if ((a2 & 0x200) == 0)
        {
          goto LABEL_35;
        }

        v14 = *a1;
        *(v14 + 112) = xmlSAX2StartElement;
        *(v14 + 120) = xmlSAX2EndElement;
        *(v14 + 232) = 0;
        *(v14 + 240) = 0;
        *(v14 + 216) = 1;
        a2 = (a2 - 512);
        *(a1 + 141) |= 0x200u;
        if ((a2 & 0x1000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }
    }

    else
    {
      *(a1 + 39) = 0;
      if ((a2 & 0x40) == 0)
      {
        goto LABEL_33;
      }
    }

    *(*a1 + 168) = 0;
    a2 = (a2 - 64);
    goto LABEL_33;
  }

  return 0xFFFFFFFFLL;
}

void xmlParseXMLDecl(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  input->standalone = -2;
  cur = input->cur;
  input->cur = cur + 5;
  input->col += 5;
  v4 = cur[5];
  if (!v4)
  {
    xmlParserInputGrow(input, 250);
    v4 = *ctxt->input->cur;
  }

  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100002600;
  if (v5 || v6 == 0)
  {
    xmlFatalErrMsg(ctxt, 65, "Blank needed after '<?xml'\n");
  }

  xmlSkipBlankChars(ctxt);
  v8 = xmlParseVersionInfo(ctxt);
  if (v8)
  {
    v9 = v8;
    if (!xmlStrEqual(v8, "1.0"))
    {
      if ((ctxt->options & 0x20000) == 0 && *v9 == 49 && v9[1] == 46)
      {
        xmlWarningMsg(ctxt, 97, "Unsupported version '%s'\n", v9);
      }

      else
      {
        xmlFatalErrMsgStr(ctxt, 108, "Unsupported version '%s'\n", v9);
      }
    }

    version = ctxt->version;
    if (version)
    {
      free(version);
    }

    ctxt->version = v9;
  }

  else
  {
    xmlFatalErr(ctxt, 96, 0);
  }

  v11 = ctxt->input;
  v12 = v11->cur;
  v13 = *v12;
  if (v13 <= 0x3F)
  {
    if (((1 << v13) & 0x100002600) != 0)
    {
      goto LABEL_24;
    }

    if (v13 == 63 && v12[1] == 62)
    {
      goto LABEL_38;
    }
  }

  xmlFatalErrMsg(ctxt, 65, "Blank needed here\n");
LABEL_24:
  xmlParseEncodingDecl(ctxt);
  if (ctxt->errNo == 32 || ctxt->instate == XML_PARSER_EOF)
  {
    return;
  }

  v11 = ctxt->input;
  if (v11->encoding)
  {
    v12 = v11->cur;
    v14 = *v12;
    if (v14 > 0x3F)
    {
LABEL_31:
      xmlFatalErrMsg(ctxt, 65, "Blank needed here\n");
      goto LABEL_32;
    }

    if (((1 << v14) & 0x100002600) == 0)
    {
      if (v14 != 63 || v12[1] != 62)
      {
        goto LABEL_31;
      }

LABEL_38:
      v11->cur = v12 + 2;
      v11->col += 2;
      if (!v12[2])
      {

        xmlParserInputGrow(v11, 250);
      }

      return;
    }
  }

LABEL_32:
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  xmlSkipBlankChars(ctxt);
  ctxt->input->standalone = xmlParseSDDecl(ctxt);
  xmlSkipBlankChars(ctxt);
  v11 = ctxt->input;
  v12 = v11->cur;
  v15 = *v12;
  if (v15 == 62)
  {
    xmlFatalErr(ctxt, 57, 0);
  }

  else
  {
    if (v15 == 63 && v12[1] == 62)
    {
      goto LABEL_38;
    }

    xmlFatalErr(ctxt, 57, 0);
    v16 = ctxt->input;
      ;
    }
  }

  xmlNextChar(ctxt);
}

int xmlStrEqual(const xmlChar *str1, const xmlChar *str2)
{
  if (str1 == str2)
  {
    return 1;
  }

  v2 = 0;
  if (str1 && str2)
  {
    while (1)
    {
      v3 = *str1;
      if (v3 != *str2)
      {
        break;
      }

      ++str1;
      ++str2;
      if (!v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return v2;
}

xmlSAXLocator *__xmlDefaultSAXLocator(void)
{
  if (xmlIsMainThread())
  {
    return xmlDefaultSAXLocator;
  }

  else
  {
    return &xmlGetGlobalState()->xmlDefaultSAXLocator;
  }
}

void xmlNextChar(xmlParserCtxtPtr ctxt)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!ctxt)
  {
    goto LABEL_43;
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    goto LABEL_43;
  }

  input = ctxt->input;
  if (!input)
  {
    goto LABEL_43;
  }

  cur = input->cur;
  end = input->end;
  if (cur > end)
  {
    xmlErrInternal(ctxt, "Parser input data memory error\n", 0);
    ctxt->errNo = 1;
    v5 = *MEMORY[0x1E69E9840];

    xmlStopParser(ctxt);
    return;
  }

  if (end - cur <= 0 && xmlParserInputGrow(input, 250) < 1)
  {
LABEL_43:
    v19 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = ctxt->input;
  v7 = v6->cur;
  v8 = *v7;
  if (ctxt->charset != 1)
  {
    if (v8 == 10)
    {
      ++v6->line;
      v6->col = 1;
    }

    else
    {
      ++v6->col;
    }

LABEL_33:
    v14 = v7 + 1;
LABEL_34:
    v6->cur = v14;
    goto LABEL_35;
  }

  if (v8 == 10)
  {
    ++v6->line;
    v6->col = 1;
  }

  else
  {
    ++v6->col;
  }

  if ((*v7 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  v9 = *v7;
  if (v9 == 192)
  {
    goto LABEL_39;
  }

  v10 = v6->end - v7;
  if (v10 <= 1)
  {
    xmlParserInputGrow(v6, 250);
    v6 = ctxt->input;
    v7 = v6->cur;
    v10 = v6->end - v7;
    if (v10 < 2)
    {
      goto LABEL_39;
    }
  }

  if ((v7[1] & 0xC0) != 0x80)
  {
    goto LABEL_39;
  }

  if ((~v9 & 0xE0) != 0)
  {
    v14 = v7 + 2;
    goto LABEL_34;
  }

  if (v10 == 2)
  {
    xmlParserInputGrow(v6, 250);
    v6 = ctxt->input;
    v7 = v6->cur;
    v10 = v6->end - v7;
    if (v10 < 3)
    {
      goto LABEL_39;
    }
  }

  v11 = v7 + 2;
  if ((v7[2] & 0xC0) != 0x80)
  {
    goto LABEL_39;
  }

  if ((~v9 & 0xF0) == 0)
  {
    if (v10 == 3)
    {
      xmlParserInputGrow(v6, 250);
      v6 = ctxt->input;
      v7 = v6->cur;
      v10 = v6->end - v7;
    }

    if ((v9 & 0xF8) == 0xF0 && v10 >= 4)
    {
      v11 = v7 + 3;
      if ((v7[3] & 0xC0) == 0x80)
      {
        v6->cur += 4;
        v12 = ((*v7 & 7) << 18) | ((v7[1] & 0x3F) << 12);
        v13 = v7[2];
        goto LABEL_46;
      }
    }

LABEL_39:
    if (v6->end - v6->cur > 3)
    {
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *__str = 0u;
      snprintf(__str, 0x95uLL, "Bytes: 0x%02X 0x%02X 0x%02X 0x%02X\n", *v6->cur, *(v6->cur + 1), *(v6->cur + 2), *(v6->cur + 3));
      v16 = "Input is not proper UTF-8, indicate encoding !\n%s";
      v18 = __str;
      v17 = ctxt;
    }

    else
    {
      v16 = "Input is not proper UTF-8, indicate encoding !\n";
      v17 = ctxt;
      v18 = 0;
    }

    __xmlErrEncoding(v17, 9, v16, v18, 0);
    ctxt->charset = 10;
    ++ctxt->input->cur;
    goto LABEL_43;
  }

  v6->cur += 3;
  v12 = (*v7 & 0xF) << 12;
  v13 = v7[1];
LABEL_46:
  v20 = v12 & 0xFFFFF03F | ((v13 & 0x3F) << 6);
  v21 = v20 | *v11 & 0x3F;
  v25 = v20 >> 11 == 27;
  v22 = v20 & 0x1FFFFE | *v11 & 0x3E;
  v23 = HIWORD(v20);
  v25 = v25 || v23 > 0x10 || v22 == 65534;
  if (v25)
  {
    xmlErrEncodingInt(ctxt, "Char 0x%X out of allowed range\n", v21);
    v6 = ctxt->input;
  }

LABEL_35:
  if (v6->end - v6->cur > 0)
  {
    goto LABEL_43;
  }

  v15 = *MEMORY[0x1E69E9840];

  xmlParserInputGrow(v6, 250);
}

uint64_t __startElementNSNeedsUndeclaredPrefixQuirk_block_invoke()
{
  result = strcmp(*MEMORY[0x1E69E97E0], "Microsoft Document Connection");
  if (result)
  {
    v1 = 0;
  }

  else
  {
    result = dyld_get_program_sdk_version();
    v1 = result >> 8 < 0xA09;
  }

  startElementNSNeedsUndeclaredPrefixQuirk_needsQuirk = v1;
  return result;
}

xmlChar *__cdecl xmlParseVersionInfo(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 118 || cur[1] != 101 || cur[2] != 114 || cur[3] != 115 || cur[4] != 105 || cur[5] != 111 || cur[6] != 110)
  {
    return 0;
  }

  input->cur = cur + 7;
  input->col += 7;
  if (!cur[7])
  {
    xmlParserInputGrow(input, 250);
  }

  xmlSkipBlankChars(ctxt);
  if (*ctxt->input->cur != 61)
  {
    v6 = ctxt;
    v7 = 75;
LABEL_19:
    xmlFatalErr(v6, v7, 0);
    return 0;
  }

  xmlNextChar(ctxt);
  xmlSkipBlankChars(ctxt);
  v4 = *ctxt->input->cur;
  if (v4 == 39)
  {
    xmlNextChar(ctxt);
    v5 = xmlParseVersionNum(ctxt);
    if (*ctxt->input->cur == 39)
    {
      goto LABEL_14;
    }

LABEL_17:
    xmlFatalErr(ctxt, 34, 0);
    return v5;
  }

  if (v4 != 34)
  {
    v6 = ctxt;
    v7 = 33;
    goto LABEL_19;
  }

  xmlNextChar(ctxt);
  v5 = xmlParseVersionNum(ctxt);
  if (*ctxt->input->cur != 34)
  {
    goto LABEL_17;
  }

LABEL_14:
  xmlNextChar(ctxt);
  return v5;
}

void xmlParseEndTag2(uint64_t a1, void *a2)
{
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  v4 = *(a1 + 56);
  cur = v4->cur;
  if (*cur == 60 && cur[1] == 47)
  {
    v4->cur = cur + 2;
    v4->col += 2;
    if (!cur[2])
    {
      xmlParserInputGrow(v4, 250);
    }

    v6 = *a2;
    v7 = *(a1 + 288);
    if (*a2)
    {
      v8 = *(a1 + 56);
      if (!*(a1 + 452) && (*(v8 + 40) - *(v8 + 32)) <= 249)
      {
        xmlGROW(a1);
        v8 = *(a1 + 56);
      }

      v30 = 0;
      v9 = *(v8 + 32);
      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_31;
      }

      v11 = v9 + 1;
      v12 = v6;
      while (v10 == *v12)
      {
        ++v12;
        v13 = *v11++;
        v10 = v13;
        if (!v13)
        {
          goto LABEL_31;
        }
      }

      if (v10 != 58 || *v12)
      {
        goto LABEL_31;
      }

      v15 = *v11;
      if (*v11)
      {
        v16 = v7;
        while (1)
        {
          v17 = *v16;
          if (v15 != v17)
          {
            break;
          }

          ++v16;
          v18 = *++v11;
          v15 = v18;
          if (!v18)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v16 = v7;
LABEL_29:
        v15 = 0;
        v17 = *v16;
      }

      if (!v17 && v15 <= 0x3E && ((1 << v15) & 0x4000000100002600) != 0)
      {
        *(v8 + 56) += v11 - v9;
        *(v8 + 32) = v11;
        v14 = 1;
      }

      else
      {
LABEL_31:
        v19 = xmlParseQName(a1, &v30);
        if (v30 == v6 && v19 == v7)
        {
          v14 = 1;
        }

        else
        {
          v14 = v19;
        }
      }
    }

    else
    {
      v14 = xmlParseNameAndCompare(a1, *(a1 + 288));
    }

    if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
    {
      xmlGROW(a1);
    }

    if (*(a1 + 272) != -1)
    {
      xmlSkipBlankChars(a1);
      v21 = *(a1 + 56);
      v22 = v21->cur;
      if (*v22 == 62)
      {
        ++v21->col;
        v21->cur = v22 + 1;
        if (!v22[1])
        {
          xmlParserInputGrow(v21, 250);
        }
      }

      else
      {
        xmlFatalErr(a1, 73, 0);
      }

      if (v14 != 1)
      {
        if (v14)
        {
          v23 = v14;
        }

        else
        {
          v23 = "unparsable";
        }

        xmlFatalErrMsgStrIntStr(a1, 76, "Opening and ending tag mismatch: %s line %d and %s\n", *(a1 + 288), *(a2 + 4), v23);
      }

      if (*a1)
      {
        v24 = *(*a1 + 240);
        if (v24)
        {
          if (!*(a1 + 332))
          {
            v24(*(a1 + 8), *(a1 + 288), *a2, a2[1]);
          }
        }
      }

      v25 = *(a1 + 376);
      if (v25 >= 1)
      {
        v26 = *(a1 + 384);
        v27 = v26 + 4 * v25 - 8;
        v28 = v25 - 1;
        *(a1 + 376) = v28;
        if (!v28)
        {
          v27 = v26;
        }

        *(a1 + 368) = v27;
        *(v26 + 4 * v28) = -1;
      }

      v29 = *(a2 + 5);
      if (v29)
      {

        nsPop(a1, v29);
      }
    }
  }

  else
  {

    xmlFatalErr(a1, 74, 0);
  }
}

xmlChar *__cdecl xmlParseVersionNum(xmlParserCtxtPtr ctxt)
{
  v2 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
  v3 = v2;
  if (!v2)
  {
    xmlErrMemory(ctxt, 0);
    return v3;
  }

  v4 = *ctxt->input->cur;
  if ((v4 - 48) >= 0xA || (*v2 = v4, xmlNextChar(ctxt), *ctxt->input->cur != 46))
  {
    free(v3);
    return 0;
  }

  v3[1] = 46;
  xmlNextChar(ctxt);
  v5 = *ctxt->input->cur;
  if ((v5 - 48) > 9)
  {
    v10 = 2;
LABEL_16:
    v3[v10] = 0;
    return v3;
  }

  LODWORD(v6) = 10;
  v7 = 2;
  while (1)
  {
    v8 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      break;
    }

LABEL_10:
    v3[v7] = v5;
    xmlNextChar(ctxt);
    v5 = *ctxt->input->cur;
    ++v7;
    if ((v5 - 48) >= 0xA)
    {
      v10 = v8;
      goto LABEL_16;
    }
  }

  if (!(v6 >> 30))
  {
    v6 = (2 * v6);
    v9 = malloc_type_realloc(v3, v6, 0x100004077774924uLL);
    if (v9)
    {
      v3 = v9;
      goto LABEL_10;
    }
  }

  free(v3);
  xmlErrMemory(ctxt, 0);
  return 0;
}

int xmlSwitchEncoding(xmlParserCtxtPtr ctxt, xmlCharEncoding enc)
{
  if (!ctxt)
  {
    return -1;
  }

  v4 = -1;
  if (enc <= XML_CHAR_ENCODING_UTF16BE)
  {
    if (enc > XML_CHAR_ENCODING_UTF8)
    {
      input = ctxt->input;
      if (input)
      {
        cur = input->cur;
        if (cur)
        {
          if (*cur == 239 && cur[1] == 187 && cur[2] == 191)
          {
            input->cur = cur + 3;
          }
        }
      }

      v4 = 90;
    }

    else
    {
      switch(enc)
      {
        case XML_CHAR_ENCODING_ERROR:
          __xmlErrEncoding(ctxt, 31, "encoding unknown\n", 0, 0);
          return v4;
        case XML_CHAR_ENCODING_NONE:
LABEL_56:
          v4 = 0;
          ctxt->charset = 1;
          return v4;
        case XML_CHAR_ENCODING_UTF8:
          ctxt->charset = 1;
          v10 = ctxt->input;
          if (v10)
          {
            v11 = v10->cur;
            if (*v11 == 239 && v11[1] == 187 && v11[2] == 191)
            {
              v4 = 0;
              v10->cur = v11 + 3;
              return v4;
            }
          }

          return 0;
      }
    }
  }

  else
  {
    v5 = 1 << enc;
    if (enc == XML_CHAR_ENCODING_UCS2)
    {
      v6 = 90;
    }

    else
    {
      v6 = -1;
    }

    if ((v5 & 0x1B0) != 0)
    {
      v7 = 180;
    }

    else
    {
      v7 = v6;
    }

    if ((v5 & 0x7FFC40) != 0)
    {
      v8 = 45;
    }

    else
    {
      v8 = v7;
    }

    if (enc <= XML_CHAR_ENCODING_ASCII)
    {
      v4 = v8;
    }

    else
    {
      v4 = -1;
    }
  }

  CharEncodingHandler = xmlGetCharEncodingHandler(enc);
  if (CharEncodingHandler)
  {
    ctxt->charset = 1;
    v4 = xmlSwitchToEncodingInt(ctxt, CharEncodingHandler, v4);
    if (v4 < 0 || ctxt->errNo == 6003)
    {
      if (!ctxt->html)
      {
        xmlStopParser(ctxt);
        ctxt->errNo = 6003;
      }

      return v4;
    }

    return 0;
  }

  if (enc <= XML_CHAR_ENCODING_UCS2)
  {
    if (enc > XML_CHAR_ENCODING_EBCDIC)
    {
      if (enc == XML_CHAR_ENCODING_UCS4_2143)
      {
        v12 = "UCS4 2143";
      }

      else if (enc == XML_CHAR_ENCODING_UCS4_3412)
      {
        v12 = "UCS4 3412";
      }

      else
      {
        v12 = "UCS2";
      }

      goto LABEL_66;
    }

    switch(enc)
    {
      case XML_CHAR_ENCODING_UCS4LE:
        v12 = "USC4 little endian";
        break;
      case XML_CHAR_ENCODING_UCS4BE:
        v12 = "USC4 big endian";
        break;
      case XML_CHAR_ENCODING_EBCDIC:
        v12 = "EBCDIC";
        break;
      default:
        goto LABEL_67;
    }

    goto LABEL_66;
  }

  if (enc >= XML_CHAR_ENCODING_2022_JP)
  {
    if (enc <= XML_CHAR_ENCODING_SHIFT_JIS)
    {
      if (enc == XML_CHAR_ENCODING_2022_JP)
      {
        v12 = "ISO-2022-JP";
      }

      else
      {
        v12 = "Shift_JIS";
      }

      goto LABEL_66;
    }

    if (enc != XML_CHAR_ENCODING_EUC_JP)
    {
      if (enc == XML_CHAR_ENCODING_ASCII)
      {
        goto LABEL_56;
      }

LABEL_67:
      xmlStopParser(ctxt);
      return -1;
    }

    v12 = "EUC-JP";
LABEL_66:
    __xmlErrEncoding(ctxt, 32, "encoding not supported %s\n", v12, 0);
    goto LABEL_67;
  }

  if (ctxt->inputNr == 1 && !ctxt->encoding)
  {
    v15 = ctxt->input;
    if (v15)
    {
      encoding = v15->encoding;
      if (encoding)
      {
        ctxt->encoding = xmlStrdup(encoding);
      }
    }
  }

  v4 = 0;
  ctxt->charset = enc;
  return v4;
}

xmlChar *__cdecl xmlParseEncName(xmlParserCtxtPtr ctxt)
{
  v2 = *ctxt->input->cur;
  if ((v2 & 0xFFFFFFDF) - 65 > 0x19)
  {
    xmlFatalErr(ctxt, 79, 0);
    return 0;
  }

  else
  {
    v3 = malloc_type_malloc(0xAuLL, 0x100004077774924uLL);
    v4 = v3;
    if (v3)
    {
      *v3 = v2;
      xmlNextChar(ctxt);
      v5 = *ctxt->input->cur;
      LODWORD(v6) = 10;
      for (i = 1; ; ++i)
      {
        v8 = (v5 - 48) >= 0xAu && ((v5 & 0xDF) - 65) >= 0x1Au;
        if (v8 && (v5 - 45 > 0x32 || ((1 << (v5 - 45)) & 0x4000000000003) == 0))
        {
          break;
        }

        if (v6 <= i + 1)
        {
          if (v6 >> 30 || (v6 = (2 * v6), (v9 = malloc_type_realloc(v4, v6, 0x100004077774924uLL)) == 0))
          {
            xmlErrMemory(ctxt, 0);
            free(v4);
            return 0;
          }

          v4 = v9;
        }

        *(v4 + i) = v5;
        xmlNextChar(ctxt);
        input = ctxt->input;
        cur = input->cur;
        v5 = *cur;
        if (!*cur)
        {
          if (!ctxt->progressive)
          {
            if (cur - input->base < 501 || input->end - cur > 499 || (xmlSHRINK(ctxt), input = ctxt->input, !ctxt->progressive))
            {
              if (input->end - input->cur <= 249)
              {
                xmlGROW(ctxt);
                input = ctxt->input;
              }
            }
          }

          v5 = *input->cur;
        }
      }

      *(v4 + i) = 0;
    }

    else
    {
      xmlErrMemory(ctxt, 0);
    }
  }

  return v4;
}

int xmlStrcasecmp(const xmlChar *str1, const xmlChar *str2)
{
  if (str1 == str2)
  {
    return 0;
  }

  if (!str1)
  {
    return -1;
  }

  if (!str2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *str2;
    v3 = casemap[*str1] - casemap[v2];
    if (v3)
    {
      break;
    }

    ++str1;
    ++str2;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

int xmlSkipBlankChars(xmlParserCtxtPtr ctxt)
{
  instate = ctxt->instate;
  if (ctxt->inputNr == 1)
  {
    if (instate == XML_PARSER_DTD)
    {
      v3 = ctxt->external == 0;
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  if (instate == XML_PARSER_EOF)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if (instate == XML_PARSER_START)
  {
LABEL_6:
    v4 = 0;
LABEL_7:
    input = ctxt->input;
    cur = input->cur;
    while (1)
    {
      v7 = *cur;
      if (v7 == 32)
      {
        goto LABEL_13;
      }

      if ((v7 - 9) >= 2)
      {
        break;
      }

      if (v7 != 10)
      {
        goto LABEL_13;
      }

      ++input->line;
      input->col = 1;
LABEL_14:
      v8 = *++cur;
      ++v4;
      if (!v8)
      {
        input->cur = cur;
        xmlParserInputGrow(input, 250);
        goto LABEL_7;
      }
    }

    if (v7 != 13)
    {
      input->cur = cur;
      goto LABEL_18;
    }

LABEL_13:
    ++input->col;
    goto LABEL_14;
  }

  v3 = 0;
LABEL_22:
  v4 = 0;
  do
  {
    v10 = ctxt->input->cur;
    v11 = *v10;
    if (v11 > 0x25)
    {
      break;
    }

    if (((1 << v11) & 0x100002600) != 0)
    {
      xmlNextChar(ctxt);
    }

    else if (*v10)
    {
      if (v11 != 37 || v3)
      {
        break;
      }

      v12 = v10[1];
      v13 = v12 > 0x20;
      v14 = (1 << v12) & 0x100002601;
      if (!v13 && v14 != 0)
      {
        break;
      }

      xmlParsePEReference(ctxt);
    }

    else
    {
      if (ctxt->inputNr < 2)
      {
        break;
      }

      xmlPopInput(ctxt);
    }

    ++v4;
  }

  while (ctxt->instate != XML_PARSER_EOF);
LABEL_18:
  if (v4 >= 0x7FFFFFFF)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return v4;
  }
}

xmlDocPtr xmlNewDoc(const xmlChar *version)
{
  v2 = malloc_type_malloc(0xB0uLL, 0x10F00401D9AB0B5uLL);
  v3 = v2;
  if (v2)
  {
    *&v2->charset = 0u;
    *&v2->psvi = 0u;
    if (version)
    {
      v4 = version;
    }

    else
    {
      v4 = "1.0";
    }

    *&v3->encoding = 0uLL;
    *&v3->refs = 0uLL;
    *&v3->intSubset = 0uLL;
    *&v3->oldNs = 0uLL;
    *&v3->next = 0uLL;
    *&v3->doc = 0uLL;
    *&v3->name = 0uLL;
    *&v3->last = 0uLL;
    *&v3->_private = 0uLL;
    v3->type = XML_DOCUMENT_NODE;
    v5 = xmlStrdup(v4);
    v3->version = v5;
    if (v5)
    {
      *&v3->compression = -1;
      v3->doc = v3;
      v6 = v3->properties & 0x78000000 | 0x20;
      v3->parseFlags = 0;
      v3->properties = v6;
      v3->charset = 1;
      if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
      {
        v7 = __xmlRegisterNodeDefaultValue();
        (*v7)(v3);
      }
    }

    else
    {
      __xmlSimpleError(2u, 2, 0, 0, "building doc");
      free(v3);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building doc");
  }

  return v3;
}

xmlChar *__cdecl xmlStrdup(xmlChar *cur)
{
  if (cur)
  {
    v1 = -1;
    v2 = cur;
    do
    {
      v3 = *v2++;
      ++v1;
    }

    while (v3);
    return xmlStrndup(cur, v1);
  }

  return cur;
}

void xmlParseMisc(xmlParserCtxtPtr ctxt)
{
  while (ctxt->instate != XML_PARSER_EOF)
  {
    xmlSkipBlankChars(ctxt);
    input = ctxt->input;
    if (!ctxt->progressive && input->end - input->cur <= 249)
    {
      xmlGROW(ctxt);
      input = ctxt->input;
    }

    cur = input->cur;
    if (*cur != 60)
    {
      break;
    }

    v4 = cur[1];
    if (v4 == 33)
    {
      if (cur[2] != 45 || cur[3] != 45)
      {
        return;
      }

      xmlParseComment(ctxt);
    }

    else
    {
      if (v4 != 63)
      {
        return;
      }

      xmlParsePI(ctxt);
    }
  }
}

uint64_t xmlParseElementStart(uint64_t a1)
{
  v52 = 0;
  v53 = 0;
  v2 = *(a1 + 508);
  if (*(a1 + 296) > xmlParserMaxDepth && (*(a1 + 566) & 8) == 0)
  {
    xmlFatalErrMsgInt(a1, 1, "Excessive depth in document: %d use XML_PARSE_HUGE option\n", xmlParserMaxDepth);
    xmlHaltParser(a1);
    return 0xFFFFFFFFLL;
  }

  memset(&info, 0, sizeof(info));
  if (*(a1 + 104))
  {
    v3 = *(a1 + 56);
    v4 = *(v3 + 64) + *(v3 + 32) - *(v3 + 24);
    v5 = *(v3 + 52);
    info.begin_pos = v4;
    info.begin_line = v5;
  }

  if (*(a1 + 376))
  {
    if (**(a1 + 368) == -2)
    {
      v6 = -1;
    }

    else
    {
      v6 = **(a1 + 368);
    }
  }

  else
  {
    v6 = -1;
  }

  spacePush(a1, v6);
  v7 = *(*(a1 + 56) + 52);
  if (*(a1 + 504))
  {
    started = xmlParseStartTag2(a1, &v53, &v52, &v50);
  }

  else
  {
    started = xmlParseStartTag(a1);
  }

  v9 = started;
  if (*(a1 + 272) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (started)
  {
    v11 = v52;
    v10 = v53;
    nameNsPush(a1, started, v53, v52, v7, *(a1 + 508) - v2);
    v12 = *(a1 + 80);
    if (*(a1 + 156))
    {
      if (*(a1 + 24))
      {
        v13 = *(a1 + 16);
        if (v13)
        {
          if (v12 && v12 == v13->children)
          {
            *(a1 + 152) &= xmlValidateRoot((a1 + 160), v13);
          }
        }
      }
    }

    v14 = *(a1 + 56);
    cur = v14->cur;
    v16 = *cur;
    if (v16 == 62)
    {
      ++v14->col;
      v14->cur = cur + 1;
      if (!cur[1])
      {
        xmlParserInputGrow(v14, 250);
      }

      if (v12 && *(a1 + 104))
      {
        info.end_pos = 0;
        info.end_line = 0;
        info.node = v12;
        xmlParserAddNodeInfo(a1, &info);
      }

      return 0;
    }

    else
    {
      if (v16 != 47 || cur[1] != 62)
      {
        xmlFatalErrMsgStrIntStr(a1, 73, "Couldn't find end of Start Tag %s line %d\n", v9, v7, 0);
        v24 = *(a1 + 88);
        if (v24 >= 1)
        {
          v25 = *(a1 + 96);
          v26 = v24 - 1;
          *(a1 + 88) = v24 - 1;
          if (v24 == 1)
          {
            v27 = 0;
          }

          else
          {
            v27 = *(v25 + 8 * v24 - 16);
          }

          *(a1 + 80) = v27;
          *(v25 + 8 * v26) = 0;
        }

        v28 = *(a1 + 296);
        if (v28 >= 1)
        {
          v29 = *(a1 + 304);
          v30 = v28 - 1;
          *(a1 + 296) = v28 - 1;
          if (v28 == 1)
          {
            v31 = 0;
          }

          else
          {
            v31 = *(v29 + 8 * v28 - 16);
          }

          *(a1 + 288) = v31;
          *(v29 + 8 * v30) = 0;
        }

        v32 = *(a1 + 376);
        if (v32 >= 1)
        {
          v33 = *(a1 + 384);
          v34 = v33 + 4 * v32 - 8;
          v35 = v32 - 1;
          *(a1 + 376) = v35;
          if (!v35)
          {
            v34 = v33;
          }

          *(a1 + 368) = v34;
          *(v33 + 4 * v35) = -1;
        }

        v36 = *(a1 + 508);
        if (v36 != v2)
        {
          nsPop(a1, v36 - v2);
        }

        return 0xFFFFFFFFLL;
      }

      v14->cur = cur + 2;
      v14->col += 2;
      if (!cur[2])
      {
        xmlParserInputGrow(v14, 250);
      }

      v17 = *a1;
      if (*(a1 + 504))
      {
        if (v17)
        {
          v18 = *(v17 + 240);
          if (v18)
          {
            if (!*(a1 + 332))
            {
              v18(*(a1 + 8), v9, v10, v11);
            }
          }
        }
      }

      else if (v17)
      {
        v37 = *(v17 + 120);
        if (v37)
        {
          if (!*(a1 + 332))
          {
            v37(*(a1 + 8), v9);
          }
        }
      }

      v38 = *(a1 + 296);
      if (v38 >= 1)
      {
        v39 = *(a1 + 304);
        v40 = v38 - 1;
        *(a1 + 296) = v38 - 1;
        if (v38 == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = *(v39 + 8 * v38 - 16);
        }

        *(a1 + 288) = v41;
        *(v39 + 8 * v40) = 0;
      }

      v42 = *(a1 + 376);
      if (v42 >= 1)
      {
        v43 = *(a1 + 384);
        v44 = v43 + 4 * v42 - 8;
        v45 = v42 - 1;
        *(a1 + 376) = v45;
        if (!v45)
        {
          v44 = v43;
        }

        *(a1 + 368) = v44;
        *(v43 + 4 * v45) = -1;
      }

      v46 = *(a1 + 508);
      if (v46 != v2)
      {
        nsPop(a1, v46 - v2);
      }

      if (v12)
      {
        if (*(a1 + 104))
        {
          v47 = *(a1 + 56);
          v48 = *(v47 + 64) + *(v47 + 32) - *(v47 + 24);
          info.node = v12;
          v49 = *(v47 + 52);
          info.end_pos = v48;
          info.end_line = v49;
          xmlParserAddNodeInfo(a1, &info);
        }
      }

      return 1;
    }
  }

  else
  {
    v19 = *(a1 + 376);
    result = 0xFFFFFFFFLL;
    if (v19 >= 1)
    {
      v21 = *(a1 + 384);
      v22 = v21 + 4 * v19 - 8;
      v23 = v19 - 1;
      *(a1 + 376) = v23;
      if (!v23)
      {
        v22 = v21;
      }

      *(a1 + 368) = v22;
      *(v21 + 4 * v23) = -1;
    }
  }

  return result;
}

_DWORD *spacePush(uint64_t a1, int a2)
{
  v4 = *(a1 + 376);
  v5 = *(a1 + 380);
  if (v4 < v5)
  {
    result = *(a1 + 384);
LABEL_6:
    result[v4] = a2;
    v7 = *(a1 + 376);
    *(a1 + 368) = &result[v7];
    *(a1 + 376) = v7 + 1;
    return result;
  }

  if ((v5 & 0x80000000) != 0)
  {

    return xmlErrMemory(a1, 0);
  }

  else
  {
    *(a1 + 380) = 2 * v5;
    result = malloc_type_realloc(*(a1 + 384), 8 * v5, 0x100004052888210uLL);
    if (result)
    {
      *(a1 + 384) = result;
      v4 = *(a1 + 376);
      goto LABEL_6;
    }

    result = xmlErrMemory(a1, 0);
    *(a1 + 380) /= 2;
  }

  return result;
}

_BYTE *xmlParseAttValueInternal(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1;
  if ((*(a1 + 566) & 8) != 0)
  {
    v8 = 1000000000;
  }

  else
  {
    v8 = 10000000;
  }

  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    v9 = v8;
    xmlGROW(a1);
    v8 = v9;
  }

  v10 = *(v7 + 56);
  v11 = *(v10 + 32);
  v12 = *(v10 + 52);
  v13 = *v11;
  if (v13 != 34 && v13 != 39)
  {
    goto LABEL_231;
  }

  v14 = *(v10 + 56);
  v15 = 12;
  *(v7 + 272) = 12;
  v16 = v11 + 1;
  v17 = *v11;
  v18 = *(v10 + 40);
  v119 = a3;
  if ((v11 + 1) >= v18)
  {
    v19 = *(v10 + 24);
    if ((v18 - v11) <= 249 && *(v7 + 452) == 0)
    {
      v21 = v8;
      xmlGROW(v7);
      v8 = v21;
      v15 = *(v7 + 272);
      if (v15 == -1)
      {
        return 0;
      }
    }

    else
    {
      v15 = 12;
    }

    v10 = *(v7 + 56);
    v22 = *(v10 + 24) - v19;
    if (!v22)
    {
      v22 = 0;
    }

    v16 += v22;
    v18 = *(v10 + 40);
  }

  v23 = v14 + 1;
  if (a4)
  {
    while (v16 < v18)
    {
      v24 = *v16;
      if (v24 == v17)
      {
        break;
      }

      if (v24 > 0x20 || ((1 << v24) & 0x100002600) == 0)
      {
        break;
      }

      if (v24 == 10)
      {
        v23 = 1;
      }

      else
      {
        ++v23;
      }

      if (v24 == 10)
      {
        ++v12;
      }

      if (++v16 >= v18)
      {
        v26 = *(v10 + 24);
        if (!*(v7 + 452) && (*(v10 + 40) - *(v10 + 32)) <= 249)
        {
          v27 = v7;
          v28 = v17;
          v29 = v7;
          v30 = a4;
          v31 = a2;
          v32 = v8;
          xmlGROW(v27);
          v8 = v32;
          a2 = v31;
          a4 = v30;
          v7 = v29;
          v17 = v28;
          v15 = *(v7 + 272);
        }

        if (v15 == -1)
        {
          return 0;
        }

        v10 = *(v7 + 56);
        v33 = *(v10 + 24) - v26;
        if (!v33)
        {
          v33 = 0;
        }

        v16 += v33;
        v18 = *(v10 + 40);
      }
    }

    v117 = a2;
    v115 = a4;
    i = v16;
    if (v16 < v18)
    {
      while (1)
      {
        v35 = v23;
        v36 = *v16;
        if (*v16 < 32 || v36 == v17)
        {
          break;
        }

        if (v36 == 38)
        {
          break;
        }

        if (v36 == 60)
        {
          break;
        }

        ++v23;
        ++v16;
        if (v36 == 32 && *v16 == 32)
        {
          break;
        }

        if (v16 >= v18)
        {
          v38 = *(v10 + 24);
          if (!*(v7 + 452) && (*(v10 + 40) - *(v10 + 32)) <= 249)
          {
            v39 = v7;
            v113 = v17;
            v17 = v7;
            v40 = a4;
            v41 = a2;
            v42 = v8;
            xmlGROW(v39);
            v8 = v42;
            a2 = v41;
            a4 = v40;
            v7 = v17;
            LODWORD(v17) = v113;
            v15 = *(v7 + 272);
          }

          if (v15 == -1)
          {
            return 0;
          }

          v10 = *(v7 + 56);
          v43 = *(v10 + 24) - v38;
          if (!v43)
          {
            v43 = 0;
          }

          i += v43;
          v16 += v43;
          if (v16 - i > v8)
          {
            goto LABEL_106;
          }

          v18 = *(v10 + 40);
        }

        if (v16 >= v18)
        {
          v23 = v35 + 1;
          break;
        }
      }
    }

    v50 = v16;
    v51 = v16;
    v52 = v16;
    do
    {
      v53 = *--v52;
      v54 = v53 == 32 && v51 > i;
      v51 = v52;
    }

    while (v54);
    LODWORD(v16) = v52 + 1;
    while (v50 < v18)
    {
      v55 = *v50;
      if (v55 == v17)
      {
        break;
      }

      if (v55 > 0x20 || ((1 << v55) & 0x100002600) == 0)
      {
        break;
      }

      if (v55 == 10)
      {
        v23 = 1;
      }

      else
      {
        ++v23;
      }

      if (v55 == 10)
      {
        ++v12;
      }

      if (++v50 >= v18)
      {
        v57 = *(v10 + 24);
        if (!*(v7 + 452) && (*(v10 + 40) - *(v10 + 32)) <= 249)
        {
          v58 = v8;
          xmlGROW(v7);
          v8 = v58;
          v15 = *(v7 + 272);
        }

        if (v15 == -1)
        {
          return 0;
        }

        v10 = *(v7 + 56);
        v59 = *(v10 + 24) - v57;
        if (!v59)
        {
          v59 = 0;
        }

        i += v59;
        v50 += v59;
        if (v50 - i > v8)
        {
          goto LABEL_106;
        }

        LODWORD(v16) = v16 + v59;
        v18 = *(v10 + 40);
      }
    }

    if (v50 - i > v8)
    {
LABEL_106:
      xmlFatalErrMsg(v7, 40, "AttValue length too long\n");
      return 0;
    }

    v49 = *v50;
  }

  else
  {
    for (i = v16; v16 < v18; ++v23)
    {
      v44 = *v16;
      v45 = *v16 < 32 || v44 == v17;
      if (v45 || v44 == 38 || v44 == 60)
      {
        break;
      }

      if (++v16 >= v18)
      {
        v46 = *(v10 + 24);
        if (!*(v7 + 452) && (*(v10 + 40) - *(v10 + 32)) <= 249)
        {
          v47 = v8;
          xmlGROW(v7);
          v8 = v47;
          v15 = *(v7 + 272);
        }

        if (v15 == -1)
        {
          return 0;
        }

        v10 = *(v7 + 56);
        v48 = *(v10 + 24) - v46;
        if (!v48)
        {
          v48 = 0;
        }

        i += v48;
        v16 += v48;
        if (v16 - i > v8)
        {
          goto LABEL_106;
        }

        v18 = *(v10 + 40);
      }
    }

    if (v16 - i > v8)
    {
      goto LABEL_106;
    }

    v115 = 0;
    v117 = a2;
    v49 = *v16;
    v50 = v16;
  }

  if (v49 != v17)
  {
    if (v119)
    {
      *v119 = 1;
    }

    if ((*(v7 + 564) & 0x80000) != 0)
    {
      v61 = 1000000000;
    }

    else
    {
      v61 = 10000000;
    }

    len = 0;
    v62 = **(v10 + 32);
    v63 = v117;
    v64 = v115;
    if (v62 == 34 || v62 == 39)
    {
      *(v7 + 272) = 12;
      xmlNextChar(v7);
      v65 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
      if (!v65)
      {
        v67 = 0;
        v74 = 0;
LABEL_251:
        xmlErrMemory(v7, 0);
        i = v74;
LABEL_252:
        if (i)
        {
          free(i);
        }

        if (v67)
        {
          free(v67);
        }

        return 0;
      }

      i = v65;
      v66 = xmlCurrentChar(v7, &len);
      LODWORD(v67) = 0;
      v68 = 0;
      v69 = 100;
      while (1)
      {
        v70 = *(*(v7 + 56) + 32);
        if (v62 == *v70)
        {
LABEL_241:
          if (*(v7 + 272) == -1)
          {
LABEL_249:
            v67 = 0;
            goto LABEL_252;
          }

          if (v64 && v67 && v68)
          {
            do
            {
              if (i[v68 - 1] != 32)
              {
                break;
              }

              --v68;
            }

            while (v68);
          }

          i[v68] = 0;
          v107 = **(*(v7 + 56) + 32);
          if (v107 == 60)
          {
            xmlFatalErr(v7, 38, 0);
            goto LABEL_270;
          }

          if (v62 == v107)
          {
            xmlNextChar(v7);
            goto LABEL_270;
          }

          if (!v66)
          {
            goto LABEL_268;
          }

          if (v66 > 255)
          {
            if (v66 >> 11 < 0x1B || (v66 - 57344) >> 1 < 0xFFF || (v66 - 0x10000) < 0x100000)
            {
              goto LABEL_268;
            }

LABEL_267:
            v108 = "invalid character in attribute value\n";
            v109 = v7;
            v110 = 9;
          }

          else
          {
            if (v66 <= 31 && (v66 > 0xD || ((1 << v66) & 0x2600) == 0))
            {
              goto LABEL_267;
            }

LABEL_268:
            v108 = "AttValue: ' expected\n";
            v109 = v7;
            v110 = 40;
          }

          xmlFatalErrMsg(v109, v110, v108);
LABEL_270:
          if (v63)
          {
            *v63 = v68;
          }

          return i;
        }

        if (v66 > 255)
        {
          if (v66 >> 11 >= 0x1B && (v66 - 65534) <= 0xFFFFE001 && (v66 - 1114112) < 0xFFF00000)
          {
            goto LABEL_241;
          }
        }

        else if (v66 <= 31)
        {
          if (v66 > 0xD || ((1 << v66) & 0x2600) == 0)
          {
            goto LABEL_241;
          }
        }

        else if (v66 == 60)
        {
          goto LABEL_241;
        }

        if (*(v7 + 272) == -1)
        {
          goto LABEL_249;
        }

        if (v66 > 0x26)
        {
LABEL_150:
          if (len == 1)
          {
            i[v68++] = v66;
          }

          else
          {
            v68 += xmlCopyCharMultiByte(&i[v68], v66);
          }

          if (v68 + 10 <= v69)
          {
            LODWORD(v67) = 0;
          }

          else
          {
            if (2 * v69 + 10 < v69)
            {
              goto LABEL_250;
            }

            v78 = malloc_type_realloc(i, 2 * v69 + 10, 0x100004077774924uLL);
            if (!v78)
            {
              goto LABEL_250;
            }

            LODWORD(v67) = 0;
            v69 = 2 * v69 + 10;
            i = v78;
          }

          goto LABEL_173;
        }

        if (((1 << v66) & 0x100002600) != 0)
        {
          if (!v64 || v68)
          {
            if (v64 && v67)
            {
              LODWORD(v67) = 1;
            }

            else
            {
              if (len == 1)
              {
                i[v68++] = 32;
              }

              else
              {
                v68 += xmlCopyCharMultiByte(&i[v68], 32);
              }

              while (1)
              {
                v74 = i;
                if (v68 + 10 <= v69)
                {
                  break;
                }

                if (2 * v69 + 10 >= v69)
                {
                  i = malloc_type_realloc(i, 2 * v69 + 10, 0x100004077774924uLL);
                  v69 = 2 * v69 + 10;
                  if (i)
                  {
                    continue;
                  }
                }

                goto LABEL_240;
              }

              LODWORD(v67) = 1;
            }
          }

LABEL_173:
          v79 = *(v7 + 56);
          v80 = *(v79 + 32);
          v81 = &v80[len];
          if (v81 <= *(v79 + 40))
          {
            if (*v80 == 10)
            {
              ++*(v79 + 52);
              *(v79 + 56) = 1;
            }

            else
            {
              ++*(v79 + 56);
            }

            *(v79 + 32) = v81;
          }

          goto LABEL_178;
        }

        if (v66 != 38)
        {
          goto LABEL_150;
        }

        if (v70[1] == 35)
        {
          break;
        }

        v75 = xmlParseEntityRef(v7);
        v67 = v75;
        v76 = *(v7 + 696) + 1;
        *(v7 + 696) = v76;
        if (!v75)
        {
          goto LABEL_178;
        }

        *(v7 + 696) = v76 + v75->owner;
        if (v75->etype == XML_INTERNAL_PREDEFINED_ENTITY)
        {
          if (v68 + 10 > v69)
          {
            v69 = 2 * v69 + 10;
            v77 = malloc_type_realloc(i, v69, 0x100004077774924uLL);
            if (!v77)
            {
              goto LABEL_250;
            }

            i = v77;
          }

          v73 = *v67[10];
          if (*(v7 + 28) || v73 != 38)
          {
            LODWORD(v67) = 0;
LABEL_165:
            i[v68++] = v73;
            goto LABEL_178;
          }

          goto LABEL_205;
        }

        if (*(v7 + 28))
        {
          ++*(v7 + 392);
          v84 = xmlStringDecodeEntities(v7, v75->content, 1, 0, 0, 0);
          v67 = v84;
          --*(v7 + 392);
          if (v84)
          {
            v116 = v64;
            v118 = v63;
            v85 = v84;
            do
            {
              v74 = i;
              v86 = v68;
              do
              {
                v87 = *v85;
                if ((v87 - 9) < 2 || v87 == 13)
                {
                  LOBYTE(v87) = 32;
                }

                else if (!*v85)
                {
                  free(v67);
                  LODWORD(v67) = 0;
                  v68 = v86;
                  goto LABEL_230;
                }

                v74[v86] = v87;
                v68 = v86 + 1;
                ++v85;
                v89 = v86 + 11;
                ++v86;
              }

              while (v89 <= v69);
              if (2 * v69 + 10 < v69)
              {
                break;
              }

              i = malloc_type_realloc(v74, 2 * v69 + 10, 0x100004077774924uLL);
              v69 = 2 * v69 + 10;
            }

            while (i);
            goto LABEL_251;
          }
        }

        else
        {
          v116 = v64;
          v118 = v63;
          v92 = xmlStrlen(v75->name);
          v93 = v67[2];
          v111 = v92;
          if (*(v67 + 23) != 6)
          {
            v94 = v67[10];
            if (v94)
            {
              if (!*(v67 + 33))
              {
                v95 = *(v7 + 696);
                ++*(v7 + 392);
                v96 = xmlStrlen(v94);
                v97 = xmlStringLenDecodeEntities(v7, v94, v96, 1, 0, 0, 0);
                --*(v7 + 392);
                v98 = *(v7 + 696) - v95;
                if ((v98 + 1) < 0x3FFFFFFF)
                {
                  v99 = v98 + 1;
                }

                else
                {
                  v99 = 0x3FFFFFFF;
                }

                *(v67 + 33) = 2 * v99;
                if (v97)
                {
                  v100 = v97;
                  if (xmlStrchr(v97, 0x3Cu))
                  {
                    *(v67 + 33) |= 1u;
                  }

                  free(v100);
                }

                else
                {
                  *v67[10] = 0;
                }

                v92 = v111;
              }
            }
          }

          v114 = v61;
          v101 = v68 + 1;
          i[v68] = 38;
          v102 = v68 + v92 + 11;
          v112 = v92 + 10;
          while (1)
          {
            v74 = i;
            if (v102 <= v69)
            {
              break;
            }

            if (v112 + 2 * v69 < v69)
            {
LABEL_240:
              v67 = 0;
              goto LABEL_251;
            }

            i = malloc_type_realloc(i, v112 + 2 * v69, 0x100004077774924uLL);
            v67 = 0;
            v69 = v112 + 2 * v69;
            if (!i)
            {
              goto LABEL_251;
            }
          }

          if (v111 < 1)
          {
            v105 = v68 + 1;
            v61 = v114;
          }

          else
          {
            v103 = v111 + 1;
            v61 = v114;
            do
            {
              v104 = *v93++;
              v105 = v101 + 1;
              i[v101] = v104;
              --v103;
              ++v101;
            }

            while (v103 > 1);
          }

          LODWORD(v67) = 0;
          v68 = v105 + 1;
          i[v105] = 59;
LABEL_230:
          i = v74;
          v63 = v118;
          v64 = v116;
        }

LABEL_178:
        if (!*(v7 + 452) && (*(*(v7 + 56) + 40) - *(*(v7 + 56) + 32)) <= 249)
        {
          xmlGROW(v7);
        }

        v66 = xmlCurrentChar(v7, &len);
        if (v68 > v61)
        {
          xmlFatalErrMsg(v7, 40, "AttValue length too long\n");
LABEL_250:
          v67 = 0;
          v74 = i;
          goto LABEL_251;
        }
      }

      v71 = xmlParseCharRef(v7);
      LODWORD(v67) = v71;
      if (!v71)
      {
        goto LABEL_178;
      }

      if (v71 != 38)
      {
        if (v68 + 10 > v69)
        {
          v69 = 2 * v69 + 10;
          v82 = malloc_type_realloc(i, v69, 0x100004077774924uLL);
          if (!v82)
          {
            goto LABEL_250;
          }

          i = v82;
        }

        v83 = xmlCopyChar(0, &i[v68], v67);
        LODWORD(v67) = 0;
        v68 += v83;
        goto LABEL_178;
      }

      if (*(v7 + 28))
      {
        if (v68 + 10 > v69)
        {
          v69 = 2 * v69 + 10;
          v72 = malloc_type_realloc(i, v69, 0x100004077774924uLL);
          if (!v72)
          {
            goto LABEL_250;
          }

          i = v72;
        }

        LODWORD(v67) = 0;
        LOBYTE(v73) = 38;
        goto LABEL_165;
      }

      if (v68 + 10 > v69)
      {
        v69 = 2 * v69 + 10;
        v90 = malloc_type_realloc(i, v69, 0x100004077774924uLL);
        if (!v90)
        {
          goto LABEL_250;
        }

        i = v90;
      }

LABEL_205:
      LODWORD(v67) = 0;
      v91 = &i[v68];
      *v91 = 942875430;
      v68 += 5;
      v91[4] = 59;
      goto LABEL_178;
    }

LABEL_231:
    xmlFatalErr(v7, 39, 0);
    return 0;
  }

  if (v117)
  {
    *v117 = v16 - i;
    v60 = v119;
  }

  else
  {
    v60 = v119;
    if (v119)
    {
      *v119 = 1;
    }

    i = xmlStrndup(i, v16 - i);
    v10 = *(v7 + 56);
  }

  *(v10 + 32) = v50 + 1;
  *(v10 + 52) = v12;
  *(v10 + 56) = v23 + 1;
  if (v60)
  {
    *v60 = 0;
  }

  return i;
}

uint64_t xmlCtxtGrowAttrs(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    if (v2 > 0x3FFFFFFA)
    {
LABEL_14:
      xmlErrMemory(a1, 0);
      return 0xFFFFFFFFLL;
    }

    v3 = 2 * v2;
  }

  else
  {
    v3 = 50;
  }

  v4 = malloc_type_malloc(8 * v3, 0x50040EE9192B6uLL);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  v6 = *(a1 + 528);
  v7 = 2 * ((1717986919 * v3) >> 32);
  if (v6)
  {
    v8 = malloc_type_realloc(v6, v7 & 0x7FFFFFFC, 0x100004052888210uLL);
  }

  else
  {
    v8 = malloc_type_malloc(v7 & 0x7FFFFFFC, 0x100004052888210uLL);
  }

  v9 = v8;
  if (!v8)
  {
    free(v5);
    goto LABEL_14;
  }

  v10 = *(a1 + 472);
  if (v10 >= 1)
  {
    memcpy(v5, *(a1 + 464), 8 * v10);
  }

  free(*(a1 + 464));
  *(a1 + 464) = v5;
  *(a1 + 528) = v9;
  *(a1 + 472) = v3;
  return v3;
}

void xmlSAX2StartElementNs(void *ctx, const xmlChar *localname, const xmlChar *prefix, const xmlChar *URI, int nb_namespaces, const xmlChar **namespaces, int nb_attributes, int nb_defaulted, const xmlChar **attributes)
{
  if (!ctx)
  {
    return;
  }

  v16 = *(ctx + 10);
  if (*(ctx + 39))
  {
    v17 = *(ctx + 2);
    if (!*(v17 + 88))
    {
      v20 = *(v17 + 80);
      if (!v20 || !v20[9] && !v20[10] && !v20[11] && !v20[12])
      {
        xmlErrValid(ctx, 522, "Validation failed: no DTD found !", 0, 0);
        *(ctx + 39) = 0;
      }
    }
  }

  if (startElementNSNeedsUndeclaredPrefixQuirk_hasEvaluatedQuirk != -1)
  {
    xmlSAX2StartElementNs_cold_1();
  }

  v18 = 0;
  if ((startElementNSNeedsUndeclaredPrefixQuirk_needsQuirk & 1) == 0 && prefix && !URI)
  {
    if (*(ctx + 142))
    {
      v19 = xmlDictQLookup(*(ctx + 57), prefix, localname);
      v18 = 0;
      if (v19)
      {
        localname = v19;
      }
    }

    else
    {
      v18 = xmlBuildQName(localname, prefix, 0, 0);
    }
  }

  v21 = *(ctx + 72);
  if (v21)
  {
    *(ctx + 72) = v21->next;
    --*(ctx + 143);
    *&v21->content = 0u;
    *&v21->nsDef = 0u;
    *&v21->line = 0;
    *&v21->next = 0u;
    *&v21->doc = 0u;
    *&v21->name = 0u;
    *&v21->last = 0u;
    *&v21->_private = 0u;
    v21->doc = *(ctx + 2);
    v21->type = XML_ELEMENT_NODE;
    if (*(ctx + 142))
    {
      v18 = localname;
    }

    else if (!v18)
    {
      v40 = xmlStrdup(localname);
      v21->name = v40;
      if (!v40)
      {
        goto LABEL_77;
      }

      goto LABEL_27;
    }

    v21->name = v18;
LABEL_27:
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v23 = __xmlRegisterNodeDefaultValue();
      (*v23)(v21);
    }

    goto LABEL_33;
  }

  if (*(ctx + 142))
  {
    v22 = *(ctx + 2);
    v18 = localname;
LABEL_31:
    v24 = xmlNewDocNodeEatName(v22, 0, v18, 0);
    goto LABEL_32;
  }

  v22 = *(ctx + 2);
  if (v18)
  {
    goto LABEL_31;
  }

  v24 = xmlNewDocNode(v22, 0, localname, 0);
LABEL_32:
  v21 = v24;
  if (!v24)
  {
    goto LABEL_77;
  }

LABEL_33:
  v55 = nb_defaulted;
  if (*(ctx + 109))
  {
    v25 = *(ctx + 7);
    if (v25)
    {
      v26 = *(v25 + 52);
      if (v26 >= 0xFFFF)
      {
        LOWORD(v26) = -1;
      }

      v21->line = v26;
    }
  }

  v27 = prefix;
  parent = v16;
  if (!v16)
  {
    xmlAddChild(*(ctx + 2), v21);
  }

  elem = v21;
  if (nb_namespaces >= 1)
  {
    v28 = 0;
    p_nsDef = &v21->nsDef;
    v30 = namespaces + 1;
    do
    {
      v31 = *(v30 - 1);
      v32 = *v30;
      v33 = xmlNewNs(0, *v30, v31);
      if (v33)
      {
        v34 = v33;
        if (v28)
        {
          p_next = &v28->next;
        }

        else
        {
          p_next = p_nsDef;
        }

        *p_next = v33;
        if (URI && v31 == v27)
        {
          elem->ns = v33;
        }

        if (!*(ctx + 13))
        {
          if (*(ctx + 39))
          {
            if (*(ctx + 6))
            {
              v36 = *(ctx + 2);
              if (v36)
              {
                if (v36->intSubset)
                {
                  *(ctx + 38) &= xmlValidateOneNamespace((ctx + 160), v36, elem, v27, v33, v32);
                }
              }
            }
          }
        }
      }

      else
      {
        v34 = v28;
      }

      v30 += 2;
      v28 = v34;
      --nb_namespaces;
    }

    while (nb_namespaces);
  }

  *(ctx + 104) = -1;
  if (nodePush(ctx, elem) < 0)
  {
    xmlUnlinkNode(elem);

    xmlFreeNode(elem);
    return;
  }

  if (parent)
  {
    if (parent->type != XML_ELEMENT_NODE)
    {
      xmlAddSibling(parent, elem);
      if (!v55)
      {
        goto LABEL_66;
      }

      goto LABEL_62;
    }

    xmlAddChild(parent, elem);
  }

  if (!v55)
  {
    goto LABEL_66;
  }

LABEL_62:
  if ((*(ctx + 432) & 4) != 0)
  {
    v37 = 0;
  }

  else
  {
    v37 = v55;
  }

  nb_attributes -= v37;
LABEL_66:
  if (!URI)
  {
    goto LABEL_88;
  }

  if (elem->ns)
  {
    goto LABEL_88;
  }

  v38 = xmlSearchNs(*(ctx + 2), parent, v27);
  elem->ns = v38;
  if (v38)
  {
    goto LABEL_88;
  }

  if (xmlStrEqual(v27, "xml"))
  {
    ns = xmlSearchNs(*(ctx + 2), elem, v27);
    elem->ns = ns;
  }

  else
  {
    ns = elem->ns;
  }

  if (ns)
  {
    goto LABEL_88;
  }

  if (!xmlNewNs(elem, 0, v27))
  {
LABEL_77:

    xmlSAX2ErrMemory(ctx, "xmlSAX2StartElementNs");
    return;
  }

  if (v27)
  {
    v41 = "Namespace prefix %s was not found\n";
    v42 = ctx;
    v43 = v27;
  }

  else
  {
    v41 = "Namespace default prefix was not found\n";
    v42 = ctx;
    v43 = 0;
  }

  xmlNsWarnMsg(v42, 201, v41, v43, 0);
LABEL_88:
  if (nb_attributes >= 1)
  {
    v44 = attributes + 4;
    do
    {
      v45 = *(v44 - 3);
      if (v45 && !*(v44 - 2))
      {
        if (*(ctx + 142))
        {
          v51 = xmlDictQLookup(*(ctx + 57), v45, *(v44 - 4));
          if (v51)
          {
            v46 = v51;
            v48 = *(v44 - 1);
            v49 = *v44;
            v50 = ctx;
            v47 = 0;
            goto LABEL_93;
          }
        }

        else
        {
          v52 = xmlBuildQName(*(v44 - 4), v45, 0, 0);
          if (v52)
          {
            v53 = v52;
            xmlSAX2AttributeNs(ctx, v52, 0, *(v44 - 1), *v44);
            free(v53);
            goto LABEL_94;
          }
        }
      }

      v46 = *(v44 - 4);
      v47 = *(v44 - 3);
      v48 = *(v44 - 1);
      v49 = *v44;
      v50 = ctx;
LABEL_93:
      xmlSAX2AttributeNs(v50, v46, v47, v48, v49);
LABEL_94:
      v44 += 5;
      --nb_attributes;
    }

    while (nb_attributes);
  }

  if (*(ctx + 39) && *(ctx + 52) == -1412623820)
  {
    v54 = xmlValidateDtdFinal((ctx + 160), *(ctx + 2));
    if (v54 <= 0)
    {
      *(ctx + 38) = 0;
      if (v54 < 0)
      {
        *(ctx + 6) = 0;
      }
    }

    *(ctx + 38) &= xmlValidateRoot((ctx + 160), *(ctx + 2));
    *(ctx + 52) = -1412623819;
  }
}

_BYTE *xmlGetNamespace(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 480) == a2)
  {
    return *(a1 + 496);
  }

  v2 = *(a1 + 508);
  do
  {
    if (v2 < 2)
    {
      return 0;
    }

    v3 = v2 - 2;
    v4 = *(a1 + 520);
    v5 = *(v4 + 8 * v2 - 16);
    v2 -= 2;
  }

  while (v5 != a2);
  result = *(v4 + 8 * ((v3 + 2) & 0x7FFFFFFF) - 8);
  if (!a2 && !*result)
  {
    return 0;
  }

  return result;
}

void xmlSAX2AttributeNs(uint64_t a1, xmlChar *a2, xmlChar *nameSpace, xmlChar *a4, _BYTE *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (nameSpace)
  {
    v10 = xmlSearchNs(*(a1 + 16), *(a1 + 80), nameSpace);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 592);
  if (v11)
  {
    *(a1 + 592) = v11->next;
    --*(a1 + 584);
    *&v11->_private = 0u;
    *&v11->name = 0u;
    *&v11->doc = 0u;
    *&v11->atype = 0u;
    *&v11->last = 0u;
    *&v11->next = 0u;
    v11->type = XML_ATTRIBUTE_NODE;
    v12 = *(a1 + 80);
    v11->parent = v12;
    v11->doc = *(a1 + 16);
    v11->ns = v10;
    v13 = a2;
    if (!*(a1 + 568))
    {
      v13 = xmlStrdup(a2);
      v12 = *(a1 + 80);
    }

    v11->name = v13;
    properties = v12->properties;
    if (properties)
    {
      do
      {
        v15 = properties;
        properties = properties->next;
      }

      while (properties);
      v15->next = v11;
      v11->prev = v15;
    }

    else
    {
      v12->properties = v11;
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v18 = __xmlRegisterNodeDefaultValue();
      (*v18)(v11);
    }

LABEL_18:
    if (*(a1 + 28) || *(a1 + 52))
    {
      if (!a4)
      {
        goto LABEL_23;
      }
    }

    else if (!*a5)
    {
      NodeList = xmlStringLenGetNodeList(*(a1 + 16), a4, a5 - a4);
      v11->children = NodeList;
      if (NodeList)
      {
        doc = v11->doc;
        do
        {
          v25 = NodeList;
          NodeList->doc = doc;
          NodeList->parent = v11;
          NodeList = NodeList->next;
        }

        while (NodeList);
        v11->last = v25;
      }

LABEL_23:
      if (!*(a1 + 52) && *(a1 + 156) && *(a1 + 24) && (v20 = *(a1 + 16)) != 0 && *(v20 + 80))
      {
        if (*(a1 + 28))
        {
          goto LABEL_33;
        }

        v26 = xmlSAX2DecodeAttrEntities(a1, a4, a5);
        if (v26)
        {
          v21 = v26;
          if (*(a1 + 552))
          {
            v32 = 0;
            memset(v31, 0, sizeof(v31));
            v27 = xmlBuildQName(a2, nameSpace, v31, 50);
            if (v27)
            {
              v28 = v27;
              *(a1 + 224) = 1;
              v29 = xmlValidCtxtNormalizeAttributeValue((a1 + 160), *(a1 + 16), *(a1 + 80), v27, v21);
              if (*(a1 + 224) != 1)
              {
                *(a1 + 152) = 0;
              }

              if (v28 != v31 && v28 != a2)
              {
                free(v28);
              }

              if (v29)
              {
                free(v21);
                v21 = v29;
              }
            }

            else
            {
              xmlSAX2ErrMemory(a1, "xmlSAX2AttributeNs");
            }
          }

          *(a1 + 152) &= xmlValidateOneAttribute((a1 + 160), *(a1 + 16), *(a1 + 80), v11, v21);
LABEL_71:
          free(v21);
          goto LABEL_72;
        }

        if (*a5)
        {
LABEL_33:
          v21 = xmlStrndup(a4, a5 - a4);
          *(a1 + 152) &= xmlValidateOneAttribute((a1 + 160), *(a1 + 16), *(a1 + 80), v11, v21);
          if (!v21)
          {
            goto LABEL_72;
          }

          goto LABEL_71;
        }

        *(a1 + 152) &= xmlValidateOneAttribute((a1 + 160), *(a1 + 16), *(a1 + 80), v11, a4);
      }

      else if ((*(a1 + 432) & 8) == 0)
      {
        if (*(a1 + 28))
        {
          if (*(a1 + 336))
          {
            goto LABEL_72;
          }
        }

        else if (*(a1 + 148) == 2)
        {
          goto LABEL_72;
        }

        if (*(a1 + 480) == nameSpace && *a2 == 105 && a2[1] == 100 && !a2[2])
        {
          v21 = xmlStrndup(a4, a5 - a4);
          if (xmlValidateNCName(v21, 1))
          {
            xmlErrValid(a1, 539, "xml:id : attribute value %s is not an NCName\n", v21, 0);
          }
        }

        else
        {
          if (!xmlIsID(*(a1 + 16), *(a1 + 80), v11))
          {
            if (!xmlIsRef(*(a1 + 16), *(a1 + 80), v11))
            {
              goto LABEL_72;
            }

            v21 = xmlStrndup(a4, a5 - a4);
            xmlAddRef((a1 + 160), *(a1 + 16), v21, v11);
            if (!v21)
            {
              goto LABEL_72;
            }

            goto LABEL_71;
          }

          v21 = xmlStrndup(a4, a5 - a4);
        }

        xmlAddID((a1 + 160), *(a1 + 16), v21, v11);
        if (!v21)
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

LABEL_72:
      v30 = *MEMORY[0x1E69E9840];
      return;
    }

    v19 = xmlSAX2TextNode(a1, a4, a5 - a4);
    v11->children = v19;
    v11->last = v19;
    if (v19)
    {
      *(v19 + 8) = v11->doc;
      *(v19 + 5) = v11;
    }

    goto LABEL_23;
  }

  v16 = *(a1 + 80);
  if (*(a1 + 568))
  {
    v17 = xmlNewNsPropEatName(v16, v10, a2, 0);
  }

  else
  {
    v17 = xmlNewNsProp(v16, v10, a2, 0);
  }

  v11 = v17;
  if (v17)
  {
    goto LABEL_18;
  }

  v22 = *MEMORY[0x1E69E9840];

  xmlErrMemory(a1, "xmlSAX2AttributeNs");
}

int nodePush(xmlParserCtxtPtr ctxt, xmlNodePtr value)
{
  if (ctxt)
  {
    v3 = ctxt;
    LODWORD(ctxt) = ctxt->nodeNr;
    nodeMax = v3->nodeMax;
    if (ctxt >= nodeMax)
    {
      if (nodeMax >> 27 || (ctxt = malloc_type_realloc(v3->nodeTab, 16 * nodeMax, 0x2004093837F09uLL)) == 0)
      {
        xmlErrMemory(v3, 0);
        goto LABEL_11;
      }

      v3->nodeTab = ctxt;
      LODWORD(ctxt) = v3->nodeNr;
      v3->nodeMax *= 2;
    }

    if (ctxt > xmlParserMaxDepth && (v3->options & 0x80000) == 0)
    {
      xmlFatalErrMsgInt(v3, 1, "Excessive depth in document: %d use XML_PARSE_HUGE option\n", xmlParserMaxDepth);
      xmlHaltParser(v3);
LABEL_11:
      LODWORD(ctxt) = -1;
      return ctxt;
    }

    v3->nodeTab[ctxt] = value;
    v3->node = value;
    v3->nodeNr = ctxt + 1;
  }

  return ctxt;
}

int xmlIsID(xmlDocPtr doc, xmlNodePtr elem, xmlAttrPtr attr)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!attr)
  {
    goto LABEL_42;
  }

  name = attr->name;
  if (!name)
  {
    goto LABEL_42;
  }

  ns = attr->ns;
  if (ns)
  {
    prefix = ns->prefix;
    if (prefix)
    {
      if (*name == 105 && name[1] == 100 && !name[2] && !strcmp(prefix, "xml"))
      {
        goto LABEL_41;
      }
    }
  }

  if (!doc || !doc->intSubset && !doc->extSubset && doc->type != XML_HTML_DOCUMENT_NODE)
  {
    goto LABEL_42;
  }

  if (doc->type != XML_HTML_DOCUMENT_NODE)
  {
    if (!elem)
    {
LABEL_42:
      result = 0;
      goto LABEL_43;
    }

    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    *memory = 0u;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v9 = elem->ns;
    if (v9 && (v10 = v9->prefix) != 0)
    {
      v11 = xmlBuildQName(elem->name, v10, memory, 50);
      ns = attr->ns;
      if (!ns)
      {
LABEL_23:
        v12 = attr->name;
        goto LABEL_27;
      }
    }

    else
    {
      v11 = elem->name;
      if (!ns)
      {
        goto LABEL_23;
      }
    }

    v13 = ns->prefix;
    v12 = attr->name;
    if (v13)
    {
      v12 = xmlBuildQName(attr->name, v13, v18, 50);
    }

LABEL_27:
    DtdAttrDesc = 0;
    if (v11)
    {
      if (v12)
      {
        DtdAttrDesc = xmlGetDtdAttrDesc(doc->intSubset, v11, v12);
        if (!DtdAttrDesc)
        {
          extSubset = doc->extSubset;
          if (extSubset)
          {
            DtdAttrDesc = xmlGetDtdAttrDesc(extSubset, v11, v12);
          }

          else
          {
            DtdAttrDesc = 0;
          }
        }
      }
    }

    if (v12 != v18 && v12 != attr->name)
    {
      free(v12);
    }

    if (v11 != memory && v11 != elem->name)
    {
      free(v11);
    }

    if (!DtdAttrDesc || DtdAttrDesc->atype != XML_ATTRIBUTE_ID)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!xmlStrEqual("id", name) && (!xmlStrEqual("name", attr->name) || elem && !xmlStrEqual(elem->name, "a")))
  {
    goto LABEL_42;
  }

LABEL_41:
  result = 1;
LABEL_43:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlIsRef(xmlDocPtr doc, xmlNodePtr elem, xmlAttrPtr attr)
{
  if (!attr)
  {
    LODWORD(DtdAttrDesc) = 0;
    return DtdAttrDesc;
  }

  v5 = doc;
  if (!doc)
  {
    v5 = attr->doc;
    if (!v5)
    {
      goto LABEL_11;
    }
  }

  intSubset = v5->intSubset;
  if (!intSubset && !v5->extSubset)
  {
    goto LABEL_11;
  }

  if (v5->type == XML_HTML_DOCUMENT_NODE || !elem)
  {
    goto LABEL_11;
  }

  DtdAttrDesc = xmlGetDtdAttrDesc(intSubset, elem->name, attr->name);
  if (DtdAttrDesc || (DtdAttrDesc = v5->extSubset) != 0 && (DtdAttrDesc = xmlGetDtdAttrDesc(DtdAttrDesc, elem->name, attr->name)) != 0)
  {
    if (DtdAttrDesc->atype - 3 <= 1)
    {
      LODWORD(DtdAttrDesc) = 1;
      return DtdAttrDesc;
    }

LABEL_11:
    LODWORD(DtdAttrDesc) = 0;
  }

  return DtdAttrDesc;
}

void xmlParseContentInternal(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  v5 = *v4;
  if (*v4)
  {
    do
    {
      if (*(a1 + 272) == -1)
      {
        return;
      }

      v6 = *(v3 + 64);
      if (v5 == 38)
      {
        xmlParseReference(a1);
        goto LABEL_29;
      }

      if (v5 != 60)
      {
        xmlParseCharData(a1, 0);
        goto LABEL_29;
      }

      v7 = v4[1];
      switch(v7)
      {
        case '!':
          if (v4[2] == 91 && v4[3] == 67 && v4[4] == 68 && v4[5] == 65 && v4[6] == 84 && v4[7] == 65 && v4[8] == 91)
          {
            xmlParseCDSect(a1);
            break;
          }

          if (v4[2] != 45 || v4[3] != 45)
          {
            goto LABEL_28;
          }

          xmlParseComment(a1);
          if (*(a1 + 272) != -1)
          {
            *(a1 + 272) = 7;
          }

          break;
        case '/':
          if (*(a1 + 296) <= v2)
          {
            return;
          }

          xmlParseElementEnd(a1);
          break;
        case '?':
          xmlParsePI(a1);
          break;
        default:
LABEL_28:
          xmlParseElementStart(a1);
          break;
      }

LABEL_29:
      v3 = *(a1 + 56);
      if (!*(a1 + 452))
      {
        if ((*(v3 + 40) - *(v3 + 32)) > 249 || (xmlGROW(a1), v3 = *(a1 + 56), !*(a1 + 452)))
        {
          v10 = *(v3 + 32);
          if (v10 - *(v3 + 24) >= 501 && *(v3 + 40) - v10 <= 499)
          {
            xmlSHRINK(a1);
            v3 = *(a1 + 56);
          }
        }
      }

      v8 = *(v3 + 32);
      if (v6 == *(v3 + 64) && v4 == v8)
      {
        xmlFatalErr(a1, 1, "detected an error in element content\n");

        xmlHaltParser(a1);
        return;
      }

      v5 = *v8;
      v4 = *(v3 + 32);
    }

    while (*v8);
  }
}

void xmlParseCharData(xmlParserCtxtPtr ctxt, int cdata)
{
  v70 = *MEMORY[0x1E69E9840];
  input = ctxt->input;
  line = input->line;
  col = input->col;
  if (!ctxt->progressive)
  {
    cur = input->cur;
    if (cur - input->base < 501 || input->end - cur > 499 || (xmlSHRINK(ctxt), input = ctxt->input, !ctxt->progressive))
    {
      if (input->end - input->cur <= 249)
      {
        xmlGROW(ctxt);
        input = ctxt->input;
      }
    }
  }

  if (cdata)
  {
LABEL_8:
    input->line = line;
    input->col = col;
    v69 = 0;
    memset(v68, 0, sizeof(v68));
    if (!ctxt->progressive)
    {
      v8 = input->cur;
      if (v8 - input->base < 501 || input->end - v8 > 499)
      {
LABEL_13:
        if (input->end - v8 <= 249)
        {
          xmlGROW(ctxt);
        }

        goto LABEL_15;
      }

      xmlSHRINK(ctxt);
      if (!ctxt->progressive)
      {
        input = ctxt->input;
        v8 = input->cur;
        goto LABEL_13;
      }
    }

LABEL_15:
    len = 0;
    v9 = xmlCurrentChar(ctxt, &len);
    v10 = 0;
    v11 = 0;
    while (1)
    {
      do
      {
        if (v9 == 38 || v9 == 60)
        {
LABEL_61:
          if (v10)
          {
            *(v68 + v10) = 0;
            if (ctxt->sax)
            {
              if (!ctxt->disableSAX)
              {
                v57 = areBlanks_0(ctxt, v68, v10, 0);
                sax = ctxt->sax;
                if (v57)
                {
                  ignorableWhitespace = sax->ignorableWhitespace;
                  if (ignorableWhitespace)
                  {
                    ignorableWhitespace(ctxt->userData, v68, v10);
                  }
                }

                else
                {
                  characters = sax->characters;
                  if (characters)
                  {
                    (characters)(ctxt->userData, v68, v10);
                    sax = ctxt->sax;
                    characters = ctxt->sax->characters;
                  }

                  if (characters != sax->ignorableWhitespace)
                  {
                    space = ctxt->space;
                    if (*space == -1)
                    {
                      *space = -2;
                    }
                  }
                }
              }
            }
          }

          if (v9)
          {
            if (v9 > 255)
            {
              if ((v9 - 57344) >> 1 >= 0xFFF && (v9 - 0x10000) >= 0x100000)
              {
                goto LABEL_136;
              }
            }

            else if (v9 <= 31 && (v9 > 0xD || ((1 << v9) & 0x2600) == 0))
            {
LABEL_136:
              xmlFatalErrMsgInt(ctxt, 9, "PCDATA invalid Char value %d\n", v9);
              v54 = ctxt->input;
              v55 = v54->cur;
              v56 = &v55[len];
              if (v56 <= v54->end)
              {
                if (*v55 == 10)
                {
                  ++v54->line;
                  v54->col = 1;
                }

                else
                {
                  ++v54->col;
                }

                v54->cur = v56;
              }
            }
          }

LABEL_159:
          v66 = *MEMORY[0x1E69E9840];
          return;
        }

        if (v9 > 255)
        {
          if (v9 >> 11 >= 0x1B && (v9 - 57344) >> 1 >= 0xFFF && (v9 - 0x10000) >= 0x100000)
          {
            goto LABEL_61;
          }
        }

        else if (v9 > 0xD || ((1 << v9) & 0x2600) == 0)
        {
          if (v9 <= 31)
          {
            goto LABEL_61;
          }

          if (v9 == 93)
          {
            v12 = ctxt->input->cur;
            if (v12[1] == 93 && v12[2] == 62)
            {
              if (cdata)
              {
                goto LABEL_61;
              }

              xmlFatalErr(ctxt, 62, 0);
            }
          }
        }

        if (len == 1)
        {
          *(v68 + v10) = v9;
          v10 = (v10 + 1);
          v13 = 1;
        }

        else
        {
          v10 = (xmlCopyCharMultiByte(v68 + v10, v9) + v10);
          v13 = len;
        }

        v14 = ctxt->input;
        v15 = v14->cur;
        v16 = &v15[v13];
        if (v16 <= v14->end)
        {
          if (*v15 == 10)
          {
            ++v14->line;
            v14->col = 1;
          }

          else
          {
            ++v14->col;
          }

          v14->cur = v16;
        }

        v9 = xmlCurrentChar(ctxt, &len);
        if (v10 >= 300)
        {
          *(v68 + v10) = 0;
          if (ctxt->sax && !ctxt->disableSAX)
          {
            v20 = areBlanks_0(ctxt, v68, v10, 0);
            v21 = ctxt->sax;
            if (v20)
            {
              v22 = v21->ignorableWhitespace;
              if (v22)
              {
                v22(ctxt->userData, v68, v10);
              }
            }

            else
            {
              v23 = v21->characters;
              if (v23)
              {
                (v23)(ctxt->userData, v68, v10);
                v21 = ctxt->sax;
                v23 = ctxt->sax->characters;
              }

              if (v23 != v21->ignorableWhitespace)
              {
                v24 = ctxt->space;
                if (*v24 == -1)
                {
                  *v24 = -2;
                }
              }
            }
          }

          if (ctxt->instate != XML_PARSER_CONTENT)
          {
            goto LABEL_159;
          }

          v10 = 0;
        }

        v17 = v11++ < 50;
      }

      while (v17);
      if (!ctxt->progressive)
      {
        v18 = ctxt->input;
        v19 = v18->cur;
        if (v19 - v18->base < 501 || v18->end - v19 > 499)
        {
          goto LABEL_49;
        }

        xmlSHRINK(ctxt);
        if (!ctxt->progressive)
        {
          break;
        }
      }

LABEL_51:
      v11 = 0;
      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_159;
      }
    }

    v18 = ctxt->input;
    v19 = v18->cur;
LABEL_49:
    if (v18->end - v19 <= 249)
    {
      xmlGROW(ctxt);
    }

    goto LABEL_51;
  }

  v25 = input->cur;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v26 = *v25;
        if (v26 != 10)
        {
          break;
        }

        v27 = input->line + 1;
        do
        {
          input->line = v27;
          input->col = 1;
          v28 = *++v25;
          ++v27;
        }

        while (v28 == 10);
      }

      if (v26 != 32)
      {
        break;
      }

      ++v25;
      ++input->col;
    }

    if (v26 == 60)
    {
      break;
    }

    v29 = input->col;
    while (1)
    {
      while (1)
      {
        if (test_char_data[v26])
        {
          v30 = v25;
          do
          {
            v31 = *++v30;
            ++v29;
          }

          while (test_char_data[v31]);
        }

        else
        {
          v30 = v25;
        }

        input->col = v29;
        v32 = *v30;
        if (v32 != 93)
        {
          break;
        }

        v25 = v30 + 1;
        if (v30[1] == 93 && v30[2] == 62)
        {
          xmlFatalErr(ctxt, 62, 0);
          if (ctxt->instate != XML_PARSER_EOF)
          {
            ctxt->input->cur = v25;
          }

          goto LABEL_159;
        }

        input->col = ++v29;
        v26 = *v25;
      }

      if (v32 != 10)
      {
        break;
      }

      v33 = input->line + 1;
      do
      {
        v29 = 1;
        input->line = v33;
        input->col = 1;
        v34 = *++v30;
        v26 = v34;
        ++v33;
      }

      while (v34 == 10);
      v25 = v30;
    }

    v35 = input->cur;
    if (v30 - v35 >= 1)
    {
      v36 = ctxt->sax;
      if (ctxt->sax)
      {
        p_characters = &v36->characters;
        v37 = v36->characters;
        if (p_characters[1] == v37 || ((v39 = *v35, v17 = v39 > 0x20, v40 = (1 << v39) & 0x100002600, !v17) ? (v41 = v40 == 0) : (v41 = 1), v41))
        {
          if (v37)
          {
            v37(ctxt->userData, input->cur, (v30 - v35));
            input = ctxt->input;
            v29 = input->col;
          }

          line = input->line;
          col = v29;
        }

        else
        {
          input->cur = v30;
          v42 = areBlanks_0(ctxt, v35, v30 - v35, 0);
          v43 = ctxt->sax;
          if (v42)
          {
            v44 = v43->ignorableWhitespace;
            if (v44)
            {
              v44(ctxt->userData, v35, (v30 - v35));
            }
          }

          else
          {
            v45 = v43->characters;
            if (v45)
            {
              v45(ctxt->userData, v35, (v30 - v35));
            }

            v46 = ctxt->space;
            if (*v46 == -1)
            {
              *v46 = -2;
            }
          }

          input = ctxt->input;
          line = input->line;
          col = input->col;
        }
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_159;
      }
    }

    input->cur = v30;
    v47 = *v30;
    if (v47 != 13)
    {
      if (v47 == 38 || v47 == 60)
      {
        goto LABEL_159;
      }

LABEL_117:
      if (!ctxt->progressive)
      {
        if (v30 - input->base < 501 || input->end - v30 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
        {
          if (ctxt->input->end - ctxt->input->cur <= 249)
          {
            xmlGROW(ctxt);
          }
        }
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_159;
      }

      input = ctxt->input;
      v25 = input->cur;
      goto LABEL_125;
    }

    if (v30[1] != 10)
    {
      goto LABEL_117;
    }

    input->cur = v30 + 1;
    v25 = v30 + 2;
    ++input->line;
    input->col = 1;
LABEL_125:
    if (*v25 <= 31 && *v25 - 9 >= 2)
    {
      goto LABEL_8;
    }
  }

  v48 = input->cur;
  if (v25 - v48 < 1)
  {
    goto LABEL_159;
  }

  input->cur = v25;
  v49 = ctxt->sax;
  if (!ctxt->sax)
  {
    goto LABEL_159;
  }

  v50 = v49->characters;
  v51 = v49->ignorableWhitespace;
  if (v51 == v50)
  {
    if (!v51)
    {
      goto LABEL_159;
    }
  }

  else
  {
    v52 = areBlanks_0(ctxt, v48, v25 - v48, 1);
    v53 = ctxt->sax;
    if (!v52)
    {
      v64 = v53->characters;
      if (v64)
      {
        v64(ctxt->userData, v48, (v25 - v48));
      }

      v65 = ctxt->space;
      if (*v65 == -1)
      {
        *v65 = -2;
      }

      goto LABEL_159;
    }

    v50 = v53->ignorableWhitespace;
    if (!v50)
    {
      goto LABEL_159;
    }
  }

  userData = ctxt->userData;
  v61 = *MEMORY[0x1E69E9840];

  v50(userData, v48, (v25 - v48));
}

uint64_t xmlSAX2Text(uint64_t result, char *__src, int len, int a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 80);
  if (!v5)
  {
    return result;
  }

  v8 = *(v5 + 32);
  if (!v8)
  {
    if (a4 == 3)
    {
      result = xmlSAX2TextNode(result, __src, len);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    else
    {
      result = xmlNewCDataBlock(*(result + 16), __src, len);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    v12 = *(v4 + 80);
    v12[3] = result;
    v12[4] = result;
    *(result + 40) = v12;
    *(result + 64) = v12[8];
    goto LABEL_22;
  }

  if (*(v8 + 8) != a4)
  {
    if (a4 != 3)
    {
      result = xmlNewCDataBlock(*(result + 16), __src, len);
      goto LABEL_20;
    }

LABEL_16:
    result = xmlSAX2TextNode(result, __src, len);
LABEL_20:
    if (!result)
    {
      return result;
    }

    result = xmlAddChild(*(v4 + 80), result);
    if (!*(*(v4 + 80) + 24))
    {
      return result;
    }

LABEL_22:
    *(v4 + 412) = len;
    v13 = len + 1;
LABEL_23:
    *(v4 + 416) = v13;
    return result;
  }

  if (a4 == 3 && *(v8 + 16) != "text")
  {
    goto LABEL_16;
  }

  v9 = *(result + 416);
  if (v9 >= 1)
  {
    v10 = *(v8 + 80);
    if (v10 == (v8 + 88))
    {
      v10 = xmlStrdup(*(v8 + 80));
      *(v8 + 80) = v10;
      *(v8 + 88) = 0;
    }

    else if (v9 == *(result + 412) + 1)
    {
      v11 = xmlDictOwns(*(result + 456), *(v8 + 80));
      v10 = *(v8 + 80);
      if (v11)
      {
        v10 = xmlStrdup(*(v8 + 80));
        *(v8 + 80) = v10;
      }
    }

    if (!v10)
    {
      v15 = "xmlSAX2Characters: xmlStrdup returned NULL";
      goto LABEL_47;
    }

    v14 = *(v4 + 412);
    if (v14 > (len ^ 0x7FFFFFFF))
    {
      v15 = "xmlSAX2Characters overflow prevented";
LABEL_47:

      return xmlSAX2ErrMemory(v4, v15);
    }

    if (v14 + len >= 10000001 && (*(v4 + 566) & 8) == 0)
    {
      v15 = "xmlSAX2Characters: huge text node";
      goto LABEL_47;
    }

    v16 = *(v4 + 416);
    if (v14 + len < v16)
    {
LABEL_45:
      result = memcpy(&v10[v14], __src, len);
      v20 = *(v4 + 412) + len;
      *(v4 + 412) = v20;
      *(*(v8 + 80) + v20) = 0;
      return result;
    }

    v17 = v16 + len;
    if (v16 > (len ^ 0x7FFFFFFF))
    {
      v17 = 0x7FFFFFFF;
    }

    if (v17 <= 0x3FFFFFFF)
    {
      v18 = 2 * v17;
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    v19 = malloc_type_realloc(v10, v18, 0x100004077774924uLL);
    if (v19)
    {
      v10 = v19;
      *(v4 + 416) = v18;
      *(v8 + 80) = v19;
      v14 = *(v4 + 412);
      goto LABEL_45;
    }

LABEL_46:
    v15 = "xmlSAX2Characters";
    goto LABEL_47;
  }

  result = xmlTextConcat(v8, __src, len);
  if (result)
  {
    result = xmlSAX2ErrMemory(v4, "xmlSAX2Characters");
  }

  if (*(*(v4 + 80) + 24))
  {
    result = xmlStrlen(*(v8 + 80));
    *(v4 + 412) = result;
    v13 = result + 1;
    goto LABEL_23;
  }

  return result;
}

void xmlParserInputShrink(xmlParserInputPtr in)
{
  if (in)
  {
    if (in->buf)
    {
      base = in->base;
      if (base)
      {
        cur = in->cur;
        if (cur)
        {
          buffer = in->buf->buffer;
          if (buffer)
          {
            v5 = cur - base;
            if ((cur - base) >= 0xFB)
            {
              v6 = xmlBufShrink(buffer, v5 - 80);
              if (v6)
              {
                v5 -= v6;
                in->consumed += v6;
              }
            }

            if (xmlBufUse(in->buf->buffer) <= 0xFA)
            {
              xmlParserInputBufferRead(in->buf, 500);
            }

            v7 = xmlBufContent(in->buf->buffer);
            in->base = v7;
            in->cur = &v7[v5];
            in->end = xmlBufEnd(in->buf->buffer);
          }
        }
      }
    }
  }
}

xmlParserInput *xmlSHRINK(uint64_t a1)
{
  xmlParserInputShrink(*(a1 + 56));
  result = *(a1 + 56);
  if (!*result->cur)
  {

    return xmlParserInputGrow(result, 250);
  }

  return result;
}

size_t xmlBufShrink(xmlBufPtr buf, size_t len)
{
  if (!buf || *(buf + 14))
  {
    return 0;
  }

  v3 = len;
  v4 = *(buf + 5);
  v5 = *(buf + 3);
  if (v5 <= 0x7FFFFFFE && v4 != v5)
  {
    *(buf + 5) = v5;
    v4 = v5;
  }

  v7 = *(buf + 4);
  v8 = *(buf + 2);
  if (v8 <= 0x7FFFFFFE && v7 != v8)
  {
    *(buf + 4) = v8;
    v7 = v8;
  }

  if (len - 1 >= v7)
  {
    return 0;
  }

  v10 = v7 - len;
  *(buf + 4) = v7 - len;
  v11 = *(buf + 4);
  if (v11 == 2)
  {
    *buf += len;
    v14 = v4 - len;
    goto LABEL_23;
  }

  if (v11 == 3 && (v12 = *(buf + 3)) != 0)
  {
    v13 = (*buf + len);
    *buf = v13;
    v14 = v4 - v3;
    *(buf + 5) = v14;
    v15 = v13 - v12;
    if (v13 - v12 >= v14)
    {
      memmove(v12, v13, v10);
      v16 = *(buf + 3);
      v17 = *(buf + 4);
      *buf = v16;
      *(v16 + v17) = 0;
      v14 = *(buf + 5) + v15;
LABEL_23:
      *(buf + 5) = v14;
    }
  }

  else
  {
    memmove(*buf, (*buf + len), v10);
    *(*buf + *(buf + 4)) = 0;
    v14 = *(buf + 5);
  }

  LODWORD(v19) = 0x7FFFFFFF;
  if (v14 >= 0x7FFFFFFF)
  {
    LODWORD(v14) = 0x7FFFFFFF;
  }

  if (*(buf + 4) < 0x7FFFFFFFuLL)
  {
    v19 = *(buf + 4);
  }

  *(buf + 2) = v19;
  *(buf + 3) = v14;
  return v3;
}

int xmlParseSDDecl(xmlParserCtxtPtr ctxt)
{
  xmlSkipBlankChars(ctxt);
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 115 || cur[1] != 116 || cur[2] != 97 || cur[3] != 110 || cur[4] != 100 || cur[5] != 97 || cur[6] != 108 || cur[7] != 111 || cur[8] != 110 || cur[9] != 101)
  {
    return -2;
  }

  input->cur = cur + 10;
  input->col += 10;
  if (!cur[10])
  {
    xmlParserInputGrow(input, 250);
  }

  xmlSkipBlankChars(ctxt);
  if (*ctxt->input->cur == 61)
  {
    xmlNextChar(ctxt);
    xmlSkipBlankChars(ctxt);
    v4 = *ctxt->input->cur;
    if (v4 != 34)
    {
      if (v4 == 39)
      {
        xmlNextChar(ctxt);
        v5 = ctxt->input;
        v6 = v5->cur;
        v7 = *v6;
        if (v7 == 121)
        {
          if (v6[1] == 101 && v6[2] == 115)
          {
            v5->cur = v6 + 3;
            v5->col += 3;
            if (!v6[3])
            {
              xmlParserInputGrow(v5, 250);
            }

            v8 = 1;
LABEL_39:
            if (*ctxt->input->cur == 39)
            {
LABEL_40:
              xmlNextChar(ctxt);
              return v8;
            }

LABEL_48:
            xmlFatalErr(ctxt, 34, 0);
            return v8;
          }
        }

        else if (v7 == 110 && v6[1] == 111)
        {
          v5->cur = v6 + 2;
          v5->col += 2;
          if (!v6[2])
          {
            xmlParserInputGrow(v5, 250);
          }

          v8 = 0;
          goto LABEL_39;
        }

        xmlFatalErr(ctxt, 78, 0);
        v8 = -2;
        goto LABEL_39;
      }

      v9 = ctxt;
      v10 = 33;
      goto LABEL_30;
    }

    xmlNextChar(ctxt);
    v11 = ctxt->input;
    v12 = v11->cur;
    v13 = *v12;
    if (v13 == 121)
    {
      if (v12[1] == 101 && v12[2] == 115)
      {
        v11->cur = v12 + 3;
        v11->col += 3;
        if (!v12[3])
        {
          xmlParserInputGrow(v11, 250);
        }

        v8 = 1;
LABEL_47:
        if (*ctxt->input->cur == 34)
        {
          goto LABEL_40;
        }

        goto LABEL_48;
      }
    }

    else if (v13 == 110 && v12[1] == 111)
    {
      v11->cur = v12 + 2;
      v11->col += 2;
      if (!v12[2])
      {
        xmlParserInputGrow(v11, 250);
      }

      v8 = 0;
      goto LABEL_47;
    }

    xmlFatalErr(ctxt, 78, 0);
    v8 = -2;
    goto LABEL_47;
  }

  v9 = ctxt;
  v10 = 75;
LABEL_30:
  xmlFatalErr(v9, v10, 0);
  return -2;
}

int xmlDictReference(xmlDictPtr dict)
{
  v2 = xmlDictMutex;
  if (xmlDictMutex)
  {
    if (!dict)
    {
      return -1;
    }

    goto LABEL_6;
  }

  pthread_once(&once_control_0, _xmlInitializeDictMutex);
  result = -1;
  if (dict)
  {
    v2 = xmlDictMutex;
    if (xmlDictMutex)
    {
LABEL_6:
      xmlRMutexLock(v2);
      ++*dict;
      xmlRMutexUnlock(xmlDictMutex);
      return 0;
    }
  }

  return result;
}

const xmlChar *__cdecl xmlParseEncodingDecl(xmlParserCtxtPtr ctxt)
{
  xmlSkipBlankChars(ctxt);
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 101 || cur[1] != 110 || cur[2] != 99 || cur[3] != 111 || cur[4] != 100 || cur[5] != 105 || cur[6] != 110 || cur[7] != 103)
  {
    return 0;
  }

  input->cur = cur + 8;
  input->col += 8;
  if (!cur[8])
  {
    xmlParserInputGrow(input, 250);
  }

  xmlSkipBlankChars(ctxt);
  if (*ctxt->input->cur != 61)
  {
    xmlFatalErr(ctxt, 75, 0);
    return 0;
  }

  xmlNextChar(ctxt);
  xmlSkipBlankChars(ctxt);
  v4 = *ctxt->input->cur;
  if (v4 == 39)
  {
    xmlNextChar(ctxt);
    v5 = xmlParseEncName(ctxt);
    if (*ctxt->input->cur == 39)
    {
      goto LABEL_15;
    }

LABEL_28:
    xmlFatalErr(ctxt, 34, 0);
    goto LABEL_30;
  }

  if (v4 != 34)
  {
    xmlFatalErr(ctxt, 33, 0);
    v5 = 0;
    if ((ctxt->options & 0x200000) == 0)
    {
      return v5;
    }

    goto LABEL_30;
  }

  xmlNextChar(ctxt);
  v5 = xmlParseEncName(ctxt);
  if (*ctxt->input->cur != 34)
  {
    goto LABEL_28;
  }

LABEL_15:
  xmlNextChar(ctxt);
  if ((ctxt->options & 0x200000) != 0)
  {
LABEL_30:
    free(v5);
    return 0;
  }

  if (!v5)
  {
    return v5;
  }

  if (!xmlStrcasecmp(v5, "UTF-16") || !xmlStrcasecmp(v5, "UTF16"))
  {
    encoding = ctxt->encoding;
    if (encoding)
    {
      goto LABEL_38;
    }

    buf = ctxt->input->buf;
    if (!buf || buf->encoder)
    {
      goto LABEL_39;
    }

    xmlFatalErrMsg(ctxt, 81, "Document labelled UTF-16 but has UTF-8 content\n");
LABEL_37:
    encoding = ctxt->encoding;
    if (!encoding)
    {
LABEL_39:
      ctxt->encoding = v5;
      return v5;
    }

LABEL_38:
    free(encoding);
    goto LABEL_39;
  }

  if (!xmlStrcasecmp(v5, "UTF-8") || !xmlStrcasecmp(v5, "UTF8"))
  {
    goto LABEL_37;
  }

  v6 = ctxt->input;
  v7 = v6->encoding;
  if (v7)
  {
    free(v7);
    v6 = ctxt->input;
  }

  v6->encoding = v5;
  CharEncodingHandler = xmlFindCharEncodingHandler(v5);
  if (!CharEncodingHandler)
  {
    xmlFatalErrMsgStr(ctxt, 32, "Unsupported encoding %s\n", v5);
    return 0;
  }

  if (xmlSwitchToEncoding(ctxt, CharEncodingHandler) < 0)
  {
    v5 = 0;
    ctxt->errNo = 32;
  }

  return v5;
}

xmlCharEncoding xmlDetectCharEncoding(const unsigned __int8 *in, int len)
{
  if (in)
  {
    if (len < 4)
    {
      if (len != 3)
      {
        if (len < 2)
        {
          goto LABEL_46;
        }

        v2 = *in;
LABEL_19:
        if (v2 != 255)
        {
          if (v2 != 254 || in[1] != 255)
          {
            goto LABEL_46;
          }

          goto LABEL_22;
        }

        if (in[1] != 254)
        {
          goto LABEL_46;
        }

        goto LABEL_35;
      }

      v2 = *in;
    }

    else
    {
      v2 = *in;
      if (v2 == 76)
      {
        if (in[1] == 111 && in[2] == 167 && in[3] == 148)
        {
          LODWORD(in) = 6;
          return in;
        }

        goto LABEL_46;
      }

      if (v2 == 60)
      {
        if (in[1] == 63)
        {
          if (in[2] != 120 || in[3] != 109)
          {
            goto LABEL_46;
          }

          goto LABEL_16;
        }

        if (in[1])
        {
          goto LABEL_46;
        }

        if (!in[2] && !in[3])
        {
          LODWORD(in) = 4;
          return in;
        }

        if (in[2] != 63 || in[3])
        {
          goto LABEL_46;
        }

LABEL_35:
        LODWORD(in) = 2;
        return in;
      }

      if (!*in)
      {
        if (in[1] != 60)
        {
          if (!in[1])
          {
            if (!in[2] && in[3] == 60)
            {
              LODWORD(in) = 5;
              return in;
            }

            if (in[2] == 60 && !in[3])
            {
              LODWORD(in) = 7;
              return in;
            }
          }

LABEL_46:
          LODWORD(in) = 0;
          return in;
        }

        if (!in[2] && !in[3])
        {
          LODWORD(in) = 8;
          return in;
        }

        if (in[2] || in[3] != 63)
        {
          goto LABEL_46;
        }

LABEL_22:
        LODWORD(in) = 3;
        return in;
      }
    }

    if (v2 == 239)
    {
      if (in[1] != 187 || in[2] != 191)
      {
        goto LABEL_46;
      }

LABEL_16:
      LODWORD(in) = 1;
      return in;
    }

    goto LABEL_19;
  }

  return in;
}

void xmlSAX2StartDocument(void *ctx)
{
  if (!ctx)
  {
    return;
  }

  if (*(ctx + 13))
  {
    v2 = *(ctx + 2);
    if (v2 || (v2 = htmlNewDocNoDtD(0, 0), (*(ctx + 2) = v2) != 0))
    {
      v3 = v2->properties & 0x78000000 | 0x80;
      v2->parseFlags = *(ctx + 141);
      v2->properties = v3;
      goto LABEL_11;
    }
  }

  else
  {
    v4 = xmlNewDoc(*(ctx + 4));
    *(ctx + 2) = v4;
    if (v4)
    {
      v5 = v4;
      v4->properties = (*(ctx + 141) >> 15) & 4;
      v4->parseFlags = *(ctx + 141);
      v6 = *(ctx + 5);
      if (v6)
      {
        v6 = xmlStrdup(v6);
      }

      v5->encoding = v6;
      v5->standalone = *(ctx + 12);
      if (*(ctx + 142))
      {
        v7 = *(ctx + 57);
        v5->dict = v7;
        xmlDictReference(v7);
      }

LABEL_11:
      v8 = *(ctx + 2);
      if (!v8)
      {
        return;
      }

      if (*(v8 + 136))
      {
        return;
      }

      v9 = *(ctx + 7);
      if (!v9)
      {
        return;
      }

      v10 = *(v9 + 8);
      if (!v10)
      {
        return;
      }

      v11 = xmlPathToURI(v10);
      *(*(ctx + 2) + 136) = v11;
      if (v11)
      {
        return;
      }
    }
  }

  xmlSAX2ErrMemory(ctx, "xmlSAX2StartDocument");
}

xmlChar *__cdecl xmlStrndup(const xmlChar *cur, int len)
{
  v2 = 0;
  if (cur)
  {
    if ((len & 0x80000000) == 0)
    {
      v4 = len;
      v5 = malloc_type_malloc(len + 1, 0x100004077774924uLL);
      v2 = v5;
      if (v5)
      {
        memcpy(v5, cur, v4);
        v2[v4] = 0;
      }
    }
  }

  return v2;
}

void xmlParseElement(xmlParserCtxtPtr ctxt)
{
  if (!xmlParseElementStart(ctxt))
  {
    xmlParseContentInternal(ctxt);
    if (ctxt->instate != XML_PARSER_EOF)
    {
      if (*ctxt->input->cur)
      {

        xmlParseElementEnd(ctxt);
      }

      else
      {
        nameNr = ctxt->nameNr;
        v3 = ctxt->nameTab[nameNr - 1];
        v4 = *(ctxt->pushTab + 6 * nameNr - 2);

        xmlFatalErrMsgStrIntStr(ctxt, 77, "Premature end of data in tag %s line %d\n", v3, v4, 0);
      }
    }
  }
}

void xmlGROW(uint64_t a1)
{
  v2 = *(a1 + 56);
  cur = v2->cur;
  v4 = v2->end - cur;
  v5 = cur - v2->base;
  v6 = v4 <= 10000000 && v5 <= 10000000;
  if (v6 || !v2->buf || v2->buf->readcallback == xmlInputReadCallbackNop || (*(a1 + 566) & 8) != 0)
  {
    xmlParserInputGrow(v2, 250);
    v7 = *(a1 + 56);
    v8 = v7->cur;
    if (v8 <= v7->end && v8 >= v7->base)
    {
      if (v8 && !*v8)
      {

        xmlParserInputGrow(v7, 250);
      }
    }

    else
    {
      xmlHaltParser(a1);

      xmlFatalErr(a1, 1, "cur index out of bound");
    }
  }

  else
  {
    xmlFatalErr(a1, 1, "Huge input lookup");

    xmlHaltParser(a1);
  }
}

uint64_t xmlBufGrow(uint64_t a1, unsigned int a2)
{
  result = 0xFFFFFFFFLL;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (a2)
    {
      LODWORD(result) = xmlBufGrowInternal(a1, a2);
      if (*(a1 + 56))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return result;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void xmlSAX2EndElementNs(void *ctx, const xmlChar *localname, const xmlChar *prefix, const xmlChar *URI)
{
  if (ctx)
  {
    *(ctx + 104) = -1;
    if (*(ctx + 39))
    {
      if (*(ctx + 6))
      {
        v5 = *(ctx + 2);
        if (v5)
        {
          if (v5->intSubset)
          {
            *(ctx + 38) &= xmlValidateOneElement((ctx + 160), v5, *(ctx + 10));
          }
        }
      }
    }

    nodePop(ctx);
  }
}

const xmlChar *xmlParseStartTag2(uint64_t a1, xmlChar **a2, void *a3, _DWORD *a4)
{
  v5 = *(a1 + 56);
  cur = v5->cur;
  if (*cur != 60)
  {
    return 0;
  }

  v10 = *(a1 + 464);
  v136 = *(a1 + 472);
  v11 = *(a1 + 508);
  ++v5->col;
  v5->cur = cur + 1;
  if (!cur[1])
  {
    xmlParserInputGrow(v5, 250);
    v5 = *(a1 + 56);
  }

  v130 = a2;
  v131 = a3;
  if (!*(a1 + 452))
  {
    v12 = v5->cur;
    if (v12 - v5->base >= 501 && v5->end - v12 <= 499)
    {
      xmlSHRINK(a1);
      v5 = *(a1 + 56);
    }
  }

  v143 = 0;
  base = v5->base;
  v13 = v5->cur;
  id = v5->id;
  *(a1 + 508) = v11;
  v16 = xmlParseQName(a1, &v143);
  if (!v16)
  {
    xmlFatalErrMsg(a1, 68, "StartTag: invalid element name\n");
    return v16;
  }

  v133 = id;
  *a4 = base + *(*(a1 + 56) + 32) - (v13 + *(*(a1 + 56) + 24));
  xmlSkipBlankChars(a1);
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  v137 = 0;
  v138 = v16;
  v135 = 0;
  v17 = 0;
  v132 = 0;
  name2 = 0;
  v139 = (a1 + 496);
  while (1)
  {
    v18 = *(a1 + 56);
    v19 = *(v18 + 32);
    v20 = *v19;
    if (v20 == 47)
    {
      if (v19[1] == 62)
      {
        goto LABEL_160;
      }
    }

    else
    {
      if (v20 == 62)
      {
        goto LABEL_160;
      }

      v21 = v20 - 9 < 2 || v20 == 13;
      if (!v21 && v20 < 0x20)
      {
        goto LABEL_160;
      }
    }

    if (*(a1 + 272) == -1)
    {
      goto LABEL_160;
    }

    v22 = *(v18 + 64);
    v140 = 0;
    len = -1;
    v23 = v143;
    if (!*(a1 + 452) && (*(v18 + 40) - v19) <= 249)
    {
      xmlGROW(a1);
    }

    v24 = xmlParseQName(a1, &name2);
    if (!v24)
    {
      xmlFatalErrMsg(a1, 68, "error parsing attribute name\n");
LABEL_41:
      v35 = 1;
      v36 = 1;
      goto LABEL_128;
    }

    v25 = v24;
    v26 = *(a1 + 552);
    if (v26)
    {
      v27 = xmlHashQLookup2(v26, v23, v16, name2, v25) != 0;
    }

    else
    {
      v27 = 0;
    }

    xmlSkipBlankChars(a1);
    if (**(*(a1 + 56) + 32) != 61)
    {
      xmlFatalErrMsgStr(a1, 41, "Specification mandates value for attribute %s\n", v25);
      goto LABEL_41;
    }

    xmlNextChar(a1);
    xmlSkipBlankChars(a1);
    v28 = xmlParseAttValueInternal(a1, &len, &v140, v27);
    v29 = v28;
    if (v27)
    {
      if (v140)
      {
        if (v28)
        {
          v30 = len;
          if (len >= 1)
          {
            v31 = *v28;
            if (v31 == 32)
            {
              v32 = 0;
              v33 = v28;
              do
              {
                v34 = *++v33;
                v31 = v34;
                ++v32;
              }

              while (v34 == 32);
            }

            else
            {
              v32 = 0;
              v33 = v28;
            }

            do
            {
              while (v31 != 32)
              {
                if (!v31)
                {
                  if (v32)
                  {
                    len -= v32;
                    memmove(v28, &v28[v32], v30 - v32 + 1);
                  }

                  goto LABEL_53;
                }

                v37 = *++v33;
                v31 = v37;
              }

              v38 = *++v33;
              v31 = v38;
            }

            while ((v38 | 0x20) != 0x20);
            v39 = xmlStrndup(&v28[v32], len - v32 + 1);
            if (v39)
            {
              v40 = v39;
              xmlAttrNormalizeSpace(v39, v39);
              len = strlen(v40);
              if (v40 != v29)
              {
                free(v29);
                v29 = v40;
              }
            }

            else
            {
              xmlErrMemory(a1, 0);
            }
          }
        }
      }
    }

LABEL_53:
    *(a1 + 272) = 7;
    if (name2 == *(a1 + 480))
    {
      if (*(a1 + 420) && xmlStrEqual(v25, "lang"))
      {
        v41 = xmlStrndup(v29, len);
        if (!xmlCheckLanguageID(v41))
        {
          xmlWarningMsg(a1, 98, "Malformed value for xml:lang : %s\n", v41);
        }
      }

      else
      {
        v41 = 0;
      }

      if (xmlStrEqual(v25, "space"))
      {
        v41 = xmlStrndup(v29, len);
        if (xmlStrEqual(v41, "default"))
        {
          **(a1 + 368) = 0;
        }

        else if (xmlStrEqual(v41, "preserve"))
        {
          **(a1 + 368) = 1;
        }

        else
        {
          xmlWarningMsg(a1, 102, "Invalid value %s for xml:space : default or preserve expected\n", v41);
        }
      }

      if (v41)
      {
        free(v41);
      }
    }

    if (!v29)
    {
      goto LABEL_126;
    }

    v42 = len;
    if (len < 0)
    {
      v42 = xmlStrlen(v29);
      len = v42;
    }

    v43 = *(a1 + 488);
    v44 = name2;
    if (v25 == v43 && !name2)
    {
      v45 = xmlDictLookup(*(a1 + 456), v29, v42);
      if (!v45)
      {
        xmlErrMemory(a1, "dictionary allocation failure");
        if (v140)
        {
          free(v29);
        }

LABEL_270:
        v16 = 0;
        v74 = v137;
LABEL_224:
        if (!v132)
        {
          return v16;
        }

LABEL_225:
        if (v74 >= 1)
        {
          v109 = 0;
          v110 = (v10 + 24);
          do
          {
            if (*(*(a1 + 528) + v109) && *v110)
            {
              free(*v110);
            }

            v109 += 4;
            v110 += 5;
          }

          while (4 * v74 != v109);
        }

        return v16;
      }

      v46 = v45;
      if (!*v45)
      {
        goto LABEL_96;
      }

      v47 = v17;
      v48 = xmlParseURI(v45);
      if (v48)
      {
        v49 = v48;
        if (!v48->scheme)
        {
          xmlNsWarn(a1, "xmlns: URI %s is not absolute\n", v46, 0);
        }

        xmlFreeURI(v49);
      }

      else
      {
        xmlNsErr(a1, 99, "xmlns: '%s' is not a valid URI\n", v46, 0, 0);
      }

      v17 = v47;
      if (v46 == *v139)
      {
        v16 = v138;
        if (v25 != *(a1 + 480))
        {
          v59 = a1;
          v60 = "xml namespace URI cannot be the default namespace\n";
LABEL_105:
          xmlNsErr(v59, 200, v60, 0, 0, 0);
        }
      }

      else
      {
        v16 = v138;
        if (len == 29 && xmlStrEqual(v46, "http://www.w3.org/2000/xmlns/"))
        {
          v59 = a1;
          v60 = "reuse of the xmlns namespace name is forbidden\n";
          goto LABEL_105;
        }

LABEL_96:
        if (v17 < 1)
        {
LABEL_100:
          if (nsPush(a1, 0, v46) <= 0)
          {
            v17 = v17;
          }

          else
          {
            v17 = (v17 + 1);
          }
        }

        else
        {
          v61 = (*(a1 + 520) + 8 * *(a1 + 508) - 16);
          v62 = (v17 + 1) - 1;
          while (*v61)
          {
            v61 -= 2;
            if (!--v62)
            {
              goto LABEL_100;
            }
          }

          xmlErrAttributeDup(a1, 0, v25);
        }
      }

LABEL_124:
      if (!v140)
      {
        v35 = 0;
        v36 = 0;
        goto LABEL_128;
      }

      free(v29);
LABEL_126:
      v35 = 0;
      v36 = 1;
      goto LABEL_128;
    }

    v50 = v17;
    if (name2 == v43)
    {
      v54 = xmlDictLookup(*(a1 + 456), v29, v42);
      v55 = v54;
      v56 = *(a1 + 496);
      if (v25 == *(a1 + 480))
      {
        if (v54 == v56)
        {
          goto LABEL_122;
        }

        v57 = a1;
        v58 = "xml namespace prefix mapped to wrong URI\n";
      }

      else if (v54 == v56)
      {
        v57 = a1;
        v58 = "xml namespace URI mapped to wrong prefix\n";
      }

      else
      {
        if (v25 != *(a1 + 488))
        {
          if (len == 29 && xmlStrEqual(v54, "http://www.w3.org/2000/xmlns/"))
          {
            v57 = a1;
            v58 = "reuse of the xmlns namespace name is forbidden\n";
            goto LABEL_120;
          }

          if (v55 && *v55)
          {
            v65 = xmlParseURI(v55);
            if (v65)
            {
              v66 = v65;
              if (*(a1 + 420) && !v65->scheme)
              {
                xmlNsWarn(a1, "xmlns:%s: URI %s is not absolute\n", v25, v55);
              }

              xmlFreeURI(v66);
            }

            else
            {
              xmlNsErr(a1, 99, "xmlns:%s: '%s' is not a valid URI\n", v25, v55, 0);
            }

            if (v50 < 1)
            {
LABEL_151:
              if (nsPush(a1, v25, v55) <= 0)
              {
                v17 = v50;
              }

              else
              {
                v17 = (v50 + 1);
              }
            }

            else
            {
              v72 = (*(a1 + 520) + 8 * *(a1 + 508) - 16);
              v73 = (v50 + 1) - 1;
              while (*v72 != v25)
              {
                v72 -= 2;
                if (!--v73)
                {
                  goto LABEL_151;
                }
              }

              xmlErrAttributeDup(a1, v44, v25);
LABEL_122:
              v17 = v50;
            }

            v16 = v138;
            goto LABEL_124;
          }

          v57 = a1;
          v58 = "xmlns:%s: Empty XML namespace is not allowed\n";
          v67 = v25;
LABEL_121:
          xmlNsErr(v57, 200, v58, v67, 0, 0);
          goto LABEL_122;
        }

        v57 = a1;
        v58 = "redefinition of the xmlns prefix is forbidden\n";
      }

LABEL_120:
      v67 = 0;
      goto LABEL_121;
    }

    if (!v10 || v135 + 5 > v136)
    {
      if ((xmlCtxtGrowAttrs(a1) & 0x80000000) != 0)
      {
        goto LABEL_122;
      }

      v136 = *(a1 + 472);
      v10 = *(a1 + 464);
    }

    v51 = v140;
    *(*(a1 + 528) + 4 * v137) = v140;
    v52 = (v10 + 8 * v135);
    *v52 = v25;
    v52[1] = name2;
    if (v51)
    {
      v53 = 0;
      v132 = 1;
    }

    else
    {
      v53 = *(*(a1 + 56) + 24);
    }

    v35 = 0;
    ++v137;
    *(v10 + 8 * (v135 + 2)) = v53;
    v63 = v10 + 8 * v135;
    v64 = &v29[len];
    *(v63 + 24) = v29;
    *(v63 + 32) = v64;
    v36 = 1;
    v135 += 5;
    v16 = v138;
LABEL_128:
    if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
    {
      xmlGROW(a1);
    }

    if (*(a1 + 272) == -1)
    {
      goto LABEL_159;
    }

    v68 = *(*(a1 + 56) + 32);
    v69 = *v68;
    if (v69 == 47)
    {
      if (v68[1] == 62)
      {
        goto LABEL_159;
      }
    }

    else if (v69 == 62)
    {
      goto LABEL_159;
    }

    if (!xmlSkipBlankChars(a1))
    {
      break;
    }

    v70 = *(a1 + 56);
    if (v22 == v70[8])
    {
      v71 = v19 == v70[4] ? v35 : 0;
      if ((v71 & v36) == 1)
      {
        xmlFatalErr(a1, 1, "xmlParseStartTag: problem parsing attributes\n");
        goto LABEL_159;
      }
    }

    if (!*(a1 + 452) && (v70[5] - v70[4]) <= 249)
    {
      xmlGROW(a1);
    }
  }

  xmlFatalErrMsg(a1, 65, "attributes construct error\n");
LABEL_159:
  v18 = *(a1 + 56);
LABEL_160:
  v74 = v137;
  if (*(v18 + 100) != v133)
  {
    xmlFatalErr(a1, 1, "Unexpected change of input\n");
    v16 = 0;
    goto LABEL_224;
  }

  if (v137 >= 1)
  {
    v75 = (v10 + 32);
    v76 = v137;
    do
    {
      v77 = *(v75 - 2);
      if (v77)
      {
        *(v75 - 2) = 0;
        v78 = *v75;
        *(v75 - 1) = *(*(a1 + 56) + 24) + *(v75 - 1) - v77;
        *v75 = *(*(a1 + 56) + 24) + v78 - v77;
      }

      v75 += 5;
      --v76;
    }

    while (v76);
  }

  v79 = *(a1 + 544);
  if (!v79 || (v80 = xmlHashLookup2(v79, v16, v143)) == 0)
  {
    v82 = v17;
    goto LABEL_233;
  }

  v81 = v80;
  v82 = v17;
  if (*v80 < 1)
  {
LABEL_233:
    v134 = 0;
    v84 = v135;
    goto LABEL_234;
  }

  v83 = 0;
  v134 = 0;
  v84 = v135;
  do
  {
    v85 = &v81[10 * v83 + 2];
    v87 = *v85;
    v86 = *(v85 + 8);
    name2 = v86;
    v88 = *(a1 + 488);
    if (v87 == v88 && v86 == 0)
    {
      if (v82 < 1)
      {
LABEL_195:
        if (*(a1 + 480))
        {
          v100 = *(a1 + 508);
          do
          {
            if (v100 < 2)
            {
              v104 = 0;
              goto LABEL_212;
            }

            v101 = v100 - 2;
            v102 = *(a1 + 520);
            v103 = *(v102 + 8 * v100 - 16);
            v100 -= 2;
          }

          while (v103);
          v104 = *(v102 + 8 * ((v101 + 2) & 0x7FFFFFFF) - 8);
          if (!*v104)
          {
            v104 = 0;
          }
        }

        else
        {
          v104 = *v139;
        }

LABEL_212:
        v107 = *(v85 + 16);
        if (v104 != v107)
        {
          if (nsPush(a1, 0, v107) <= 0)
          {
            v82 = v82;
          }

          else
          {
            v82 = (v82 + 1);
          }
        }
      }

      else
      {
        v98 = (*(a1 + 520) + 8 * *(a1 + 508) - 16);
        v99 = (v82 + 1) - 1;
        while (*v98)
        {
          v98 -= 2;
          if (!--v99)
          {
            goto LABEL_195;
          }
        }
      }
    }

    else if (v86 == v88)
    {
      if (v82 < 1)
      {
LABEL_206:
        if (xmlGetNamespace(a1, v87) != *(v81 + 3))
        {
          if (nsPush(a1, v87, *(v85 + 16)) <= 0)
          {
            v82 = v82;
          }

          else
          {
            v82 = (v82 + 1);
          }
        }
      }

      else
      {
        v105 = (*(a1 + 520) + 8 * *(a1 + 508) - 16);
        v106 = (v82 + 1) - 1;
        while (*v105 != v87)
        {
          v105 -= 2;
          if (!--v106)
          {
            goto LABEL_206;
          }
        }
      }
    }

    else if (v84 < 1)
    {
LABEL_180:
      if (!v10 || v84 + 5 > v136)
      {
        if ((xmlCtxtGrowAttrs(a1) & 0x80000000) != 0)
        {
          goto LABEL_270;
        }

        v136 = *(a1 + 472);
        v10 = *(a1 + 464);
      }

      v91 = (v10 + 8 * v84);
      *v91 = v87;
      v92 = name2;
      v91[1] = name2;
      if (v92)
      {
        v93 = (a1 + 496);
        if (*(a1 + 480) == v92)
        {
LABEL_190:
          v92 = *v93;
        }

        else
        {
          v94 = *(a1 + 508);
          while (v94 >= 2)
          {
            v95 = v94 - 2;
            v96 = *(a1 + 520);
            v97 = *(v96 + 8 * v94 - 16);
            v94 -= 2;
            if (v97 == v92)
            {
              v93 = (v96 + 8 * ((v95 + 2) & 0x7FFFFFFF) - 8);
              goto LABEL_190;
            }
          }

          v92 = 0;
        }
      }

      *(v10 + 8 * (v84 + 2)) = v92;
      v108 = v10 + 8 * v84;
      *(v108 + 24) = *(v85 + 16);
      *(v108 + 32) = *(v85 + 24);
      if (*(a1 + 48) == 1 && *(v85 + 32))
      {
        xmlValidityError(a1, 538, "standalone: attribute %s on %s defaulted from external subset\n", v87, v138);
      }

      ++v134;
      v84 += 5;
    }

    else
    {
      v90 = 0;
      while (v87 != *(v10 + 8 * v90) || v86 != *(v10 + 8 * v90 + 8))
      {
        v90 += 5;
        if (v84 <= v90)
        {
          goto LABEL_180;
        }
      }
    }

    ++v83;
  }

  while (v83 < *v81);
LABEL_234:
  if (v84 >= 1)
  {
    v112 = 0;
    while (1)
    {
      v113 = *(v10 + 8 * (v112 + 1));
      if (v113)
      {
        break;
      }

      v119 = 0;
      if (v112)
      {
LABEL_247:
        v120 = 0;
        v121 = *(v10 + 8 * v112);
        v122 = (v10 + 16);
        while (1)
        {
          if (v121 == *(v122 - 2))
          {
            v123 = *(v10 + 8 * (v112 + 1));
            if (v123 == *(v122 - 1))
            {
              xmlErrAttributeDup(a1, v123, *(v10 + 8 * v112));
              goto LABEL_256;
            }

            if (v119 && *v122 == v119)
            {
              break;
            }
          }

          v120 += 5;
          v122 += 5;
          if (v120 >= v112)
          {
            goto LABEL_256;
          }
        }

        xmlNsErr(a1, 203, "Namespaced Attribute %s in '%s' redefined\n", v121, v119, 0);
      }

LABEL_256:
      v112 += 5;
      if (v84 <= v112)
      {
        goto LABEL_257;
      }
    }

    v114 = (a1 + 496);
    if (*(a1 + 480) == v113)
    {
LABEL_242:
      v119 = *v114;
      if (!*v114)
      {
        goto LABEL_243;
      }
    }

    else
    {
      v115 = *(a1 + 508);
      while (v115 >= 2)
      {
        v116 = v115 - 2;
        v117 = *(a1 + 520);
        v118 = *(v117 + 8 * v115 - 16);
        v115 -= 2;
        if (v118 == v113)
        {
          v114 = (v117 + 8 * ((v116 + 2) & 0x7FFFFFFF) - 8);
          goto LABEL_242;
        }
      }

LABEL_243:
      xmlNsErr(a1, 201, "Namespace prefix %s for %s on %s is not defined\n", v113, *(v10 + 8 * v112), v138);
      v119 = 0;
    }

    *(v10 + 8 * v112 + 16) = v119;
    if (v112)
    {
      goto LABEL_247;
    }

    goto LABEL_256;
  }

LABEL_257:
  v124 = v143;
  Namespace = xmlGetNamespace(a1, v143);
  v126 = Namespace;
  if (v124 && !Namespace)
  {
    xmlNsErr(a1, 201, "Namespace prefix %s on %s is not defined\n", v124, v138, 0);
  }

  *v130 = v124;
  *v131 = v126;
  v74 = v137;
  if (*a1)
  {
    v127 = v82;
    v128 = *(*a1 + 232);
    v16 = v138;
    if (v128 && !*(a1 + 332))
    {
      v129 = *(a1 + 8);
      if (v127 < 1)
      {
        v128(v129, v138, v124, v126, 0, 0, (v84 / 5), v134, v10);
      }

      else
      {
        v128(v129, v138, v124, v126, v127, *(a1 + 520) + 8 * (*(a1 + 508) - 2 * v127), (v84 / 5), v134, v10);
      }
    }

    goto LABEL_224;
  }

  v16 = v138;
  if (v132)
  {
    goto LABEL_225;
  }

  return v16;
}

const xmlChar *xmlParseNCName(uint64_t a1)
{
  v2 = *(a1 + 564);
  if ((v2 & 0x80000) != 0)
  {
    v3 = 10000000;
  }

  else
  {
    v3 = 50000;
  }

  v4 = *(a1 + 56);
  v6 = v4[4];
  v5 = v4[5];
  v7 = *v6;
  if ((v7 & 0xFFFFFFDF) - 65 >= 0x1A)
  {
    if (v7 != 95 || v6 >= v5)
    {
      goto LABEL_27;
    }
  }

  else if (v6 >= v5)
  {
    goto LABEL_27;
  }

  v9 = 0;
  do
  {
    v10 = v9;
    v11 = v6[v9 + 1];
    if ((v11 - 48) >= 0xA && (v11 & 0xFFFFFFDF) - 65 >= 0x1A && ((v11 - 45) > 0x32 || ((1 << (v11 - 45)) & 0x4000000000003) == 0))
    {
      break;
    }

    ++v9;
  }

  while (&v6[v10 + 1] < v5);
  v14 = &v6[v10 + 1];
  if (v14 < v5 && v11 >= 1)
  {
    if (v10 + 1 <= v3)
    {
      result = xmlDictLookup(*(a1 + 456), v6, v10 + 1);
      v16 = *(a1 + 56);
      *(v16 + 32) = v14;
      *(v16 + 56) += v10 + 1;
      if (result)
      {
        return result;
      }

      xmlErrMemory(a1, 0);
      return 0;
    }

    goto LABEL_65;
  }

LABEL_27:
  if ((v2 & 0x80000) != 0)
  {
    v17 = 10000000;
  }

  else
  {
    v17 = 50000;
  }

  if (!*(a1 + 452) && (v5 - v6) <= 249)
  {
    xmlGROW(a1);
    v4 = *(a1 + 56);
    v6 = v4[4];
  }

  len = 0;
  v18 = v4[3];
  v19 = xmlCurrentChar(a1, &len);
  v20 = v19;
  if (v19 <= 0x3E && ((1 << v19) & 0x4000800100000000) != 0)
  {
    return 0;
  }

  xmlIsNameStartChar(a1, v19);
  v22 = v21;
  result = 0;
  if (v20 != 58 && v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = &v6[-v18];
    while (v20 > 0x3E || ((1 << v20) & 0x4000800100000000) == 0)
    {
      xmlIsNameChar(a1, v20);
      if (v20 == 58 || !v26)
      {
        break;
      }

      if (v24 < 101)
      {
        ++v24;
      }

      else
      {
        if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
        {
          xmlGROW(a1);
        }

        if (*(a1 + 272) == -1)
        {
          return 0;
        }

        v24 = 0;
      }

      if (v23 <= (len ^ 0x7FFFFFFF))
      {
        v27 = len;
      }

      else
      {
        v27 = 0;
      }

      v28 = *(a1 + 56);
      v29 = *(v28 + 32);
      v30 = &v29[len];
      if (v30 <= *(v28 + 40))
      {
        if (*v29 == 10)
        {
          ++*(v28 + 52);
          *(v28 + 56) = 1;
        }

        else
        {
          ++*(v28 + 56);
        }

        *(v28 + 32) = v30;
      }

      v23 += v27;
      v20 = xmlCurrentChar(a1, &len);
      if (!v20)
      {
        if (*(a1 + 272) == -1)
        {
          return 0;
        }

        v31 = len;
        v32 = *(a1 + 56);
        v33 = *(v32 + 32) - len;
        *(v32 + 32) = v33;
        if (!*(a1 + 452) && *(v32 + 40) - v33 <= 249)
        {
          xmlGROW(a1);
          if (*(a1 + 272) == -1)
          {
            return 0;
          }

          v31 = len;
          v32 = *(a1 + 56);
          v33 = *(v32 + 32);
        }

        *(v32 + 32) = v33 + v31;
        v20 = xmlCurrentChar(a1, &len);
        v24 = 0;
      }
    }

    if (v23 <= v17)
    {
      return xmlDictLookup(*(a1 + 456), &v25[*(*(a1 + 56) + 24)], v23);
    }

LABEL_65:
    xmlFatalErr(a1, 110, "NCName");
    return 0;
  }

  return result;
}

xmlNodePtr xmlAddChild(xmlNodePtr parent, xmlNodePtr cur)
{
  if (parent)
  {
    v3 = parent;
    parent = 0;
    if (cur)
    {
      type = v3->type;
      if (type != XML_NAMESPACE_DECL)
      {
        parent = 0;
        if (v3 != cur)
        {
          v5 = cur->type;
          if (v5 != XML_NAMESPACE_DECL)
          {
            if (v5 == XML_TEXT_NODE)
            {
              if (type == XML_TEXT_NODE && v3->content && v3->name == cur->name)
              {
                goto LABEL_20;
              }

              last = v3->last;
              if (last && last->type == XML_TEXT_NODE && last != cur && last->name == cur->name)
              {
                xmlNodeAddContent(last, cur->content);
                xmlFreeNode(cur);
                return v3->last;
              }
            }

            v7 = cur->parent;
            cur->parent = v3;
            doc = cur->doc;
            v9 = v3->doc;
            if (doc != v9)
            {
              xmlSetTreeDoc(cur, v9);
            }

            if (v7 == v3)
            {
              return cur;
            }

            v10 = v3->type;
            if (v10 == XML_TEXT_NODE)
            {
              if (v3->content)
              {
LABEL_20:
                xmlNodeAddContent(v3, cur->content);
                xmlFreeNode(cur);
                return v3;
              }

              if (cur->type == XML_ATTRIBUTE_NODE)
              {
                return 0;
              }
            }

            else if (cur->type == XML_ATTRIBUTE_NODE)
            {
              if (v10 != XML_ELEMENT_NODE)
              {
                return 0;
              }

              if (!v3->properties)
              {
                goto LABEL_43;
              }

              ns = cur->ns;
              if (ns)
              {
                href = ns->href;
              }

              else
              {
                href = 0;
              }

              PropNodeInternal = xmlGetPropNodeInternal(v3, cur->name, href, 1);
              v15 = PropNodeInternal;
              if (PropNodeInternal && PropNodeInternal != cur && PropNodeInternal->type != XML_ATTRIBUTE_DECL)
              {
                xmlUnlinkNode(PropNodeInternal);
                xmlFreeProp(v15);
              }

              if (v15 == cur)
              {
                return cur;
              }

              properties = v3->properties;
              if (properties)
              {
                do
                {
                  v17 = properties;
                  properties = properties->next;
                }

                while (properties);
                v17->next = cur;
                cur->prev = v17;
              }

              else
              {
LABEL_43:
                v3->properties = cur;
              }

              return cur;
            }

            if (v3->children)
            {
              v13 = v3->last;
              v13->next = cur;
              cur->prev = v13;
            }

            else
            {
              v3->children = cur;
            }

            v3->last = cur;
            return cur;
          }
        }
      }
    }
  }

  return parent;
}

char *xmlSAX2TextNode(uint64_t a1, char *__src, int len)
{
  v6 = *(a1 + 576);
  if (v6)
  {
    *(a1 + 576) = *(v6 + 6);
    --*(a1 + 572);
  }

  else
  {
    v6 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
    if (!v6)
    {
      xmlErrMemory(a1, "xmlSAX2Characters");
      return v6;
    }
  }

  *(v6 + 14) = 0;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *v6 = 0u;
  if (!*(a1 + 568))
  {
    goto LABEL_22;
  }

  v7 = &__src[len];
  v8 = *v7;
  if (len > 15)
  {
    goto LABEL_12;
  }

  if (*(a1 + 566))
  {
    v10 = (v6 + 88);
    memcpy(v6 + 88, __src, len);
    v6[len + 88] = 0;
    *(v6 + 2) = 3;
    *(v6 + 2) = "text";
    goto LABEL_33;
  }

  if (len > 3 || v8 != 34 && v8 != 39 && (v8 != 60 || v7[1] == 33))
  {
LABEL_12:
    v9 = *__src;
    if (v9 <= 0x20 && ((1 << v9) & 0x100000600) != 0)
    {
      if (len > 59)
      {
LABEL_22:
        *(v6 + 2) = 3;
        *(v6 + 2) = "text";
        goto LABEL_23;
      }
    }

    else if (len > 59 || v9 != 13)
    {
      goto LABEL_22;
    }

    if (v8 != 60 || v7[1] == 33)
    {
      goto LABEL_22;
    }

    if (len >= 2)
    {
      v12 = (__src + 1);
      v13 = len - 1;
      do
      {
        v14 = *v12++;
        v15 = (1 << v14) & 0x100002600;
        if (v14 > 0x20 || v15 == 0)
        {
          goto LABEL_22;
        }
      }

      while (--v13);
    }
  }

  v10 = xmlDictLookup(*(a1 + 456), __src, len);
  *(v6 + 2) = 3;
  *(v6 + 2) = "text";
  if (!v10)
  {
LABEL_23:
    v11 = xmlStrndup(__src, len);
    *(v6 + 10) = v11;
    if (!v11)
    {
      xmlSAX2ErrMemory(a1, "xmlSAX2TextNode");
      free(v6);
      return 0;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v6 + 10) = v10;
LABEL_34:
  if (*(a1 + 436))
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      v18 = *(v17 + 52);
      if (v18 > 65534)
      {
        *(v6 + 56) = -1;
        if ((*(a1 + 566) & 0x40) != 0)
        {
          *(v6 + 13) = v18;
        }
      }

      else
      {
        *(v6 + 56) = v18;
      }
    }
  }

  if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
  {
    v19 = __xmlRegisterNodeDefaultValue();
    (*v19)(v6);
  }

  return v6;
}

xmlAttr *xmlNewPropInternal(uint64_t a1, xmlNs *a2, const xmlChar *a3, const xmlChar *a4, int a5)
{
  v7 = a3;
  if (a1 && *(a1 + 8) != 1)
  {
    if (a5 == 1)
    {
      v15 = *(a1 + 64);
      if (!v15 || !xmlDictOwns(*(v15 + 152), a3))
      {
        free(v7);
      }
    }

    return 0;
  }

  v10 = malloc_type_malloc(0x60uLL, 0x10F00407C650413uLL);
  if (!v10)
  {
    if (a5 == 1 && (!a1 || (v16 = *(a1 + 64)) == 0 || !xmlDictOwns(*(v16 + 152), v7)))
    {
      free(v7);
    }

    __xmlSimpleError(2u, 2, 0, 0, "building attribute");
    return 0;
  }

  v11 = v10;
  *&v10->doc = 0u;
  *&v10->atype = 0u;
  *&v10->last = 0u;
  *&v10->next = 0u;
  *&v10->_private = 0u;
  *&v10->name = 0u;
  v10->type = XML_ATTRIBUTE_NODE;
  v10->parent = a1;
  if (!a1)
  {
    v12 = 0;
    v10->ns = a2;
    if (a5)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v12 = *(a1 + 64);
  v10->doc = v12;
  v10->ns = a2;
  if (a5)
  {
    goto LABEL_23;
  }

  if (!v12 || (dict = v12->dict) == 0)
  {
LABEL_21:
    v14 = xmlStrdup(v7);
    goto LABEL_22;
  }

  v14 = xmlDictLookup(dict, v7, -1);
LABEL_22:
  v7 = v14;
LABEL_23:
  v11->name = v7;
  if (!a4)
  {
    goto LABEL_28;
  }

  v17 = xmlNewText(a4);
  if (v17)
  {
    v17->doc = v12;
    v11->children = v17;
    do
    {
      v18 = v17;
      v17->parent = v11;
      v17 = v17->next;
    }

    while (v17);
    v11->last = v18;
LABEL_28:
    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v11->children = 0;
  v11->last = 0;
  if (!a1)
  {
    goto LABEL_38;
  }

LABEL_29:
  v19 = *(a1 + 88);
  if (v19)
  {
    do
    {
      v20 = v19;
      v19 = v19->next;
    }

    while (v19);
    v20->next = v11;
    v11->prev = v20;
    if (!a4)
    {
      goto LABEL_38;
    }

LABEL_36:
    if (xmlIsID(*(a1 + 64), a1, v11) == 1)
    {
      xmlAddID(0, *(a1 + 64), a4, v11);
    }

    goto LABEL_38;
  }

  *(a1 + 88) = v11;
  if (a4)
  {
    goto LABEL_36;
  }

LABEL_38:
  if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
  {
    v21 = __xmlRegisterNodeDefaultValue();
    (*v21)(v11);
  }

  return v11;
}

void **nameNsPush(void **result, void *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11 = result;
  v12 = *(result + 75);
  if (*(result + 74) >= v12)
  {
    if ((v12 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }

    *(result + 75) = 2 * v12;
    v13 = malloc_type_realloc(result[38], 16 * v12, 0x50040EE9192B6uLL);
    v14 = *(v11 + 75);
    if (v13)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v18 = -(-v14 >> 1);
LABEL_15:
        *(v11 + 75) = v18;
        goto LABEL_16;
      }

      v11[38] = v13;
      result = malloc_type_realloc(v11[67], 24 * v14, 0x1050040670DD226uLL);
      if (result)
      {
        v11[67] = result;
LABEL_10:
        v15 = *(v11 + 74);
        *(v11[38] + v15) = a2;
        v11[36] = a2;
        v16 = v11[67] + 24 * v15;
        *v16 = a3;
        *(v16 + 8) = a4;
        *(v16 + 16) = a5;
        *(v16 + 20) = a6;
        *(v11 + 74) = v15 + 1;
        return result;
      }

      v17 = *(v11 + 75) + (*(v11 + 75) >> 31);
    }

    else
    {
      v17 = v14 + (v14 >> 31);
    }

    v18 = v17 >> 1;
    goto LABEL_15;
  }

  if (result[67])
  {
    goto LABEL_10;
  }

  result = malloc_type_malloc(24 * v12, 0x1050040670DD226uLL);
  v11[67] = result;
  if (result)
  {
    goto LABEL_10;
  }

LABEL_16:

  return xmlErrMemory(v11, 0);
}

size_t xmlBufUse(const xmlBufPtr buf)
{
  if (!buf || *(buf + 14))
  {
    return 0;
  }

  v3 = *(buf + 3);
  if (v3 <= 0x7FFFFFFE && *(buf + 5) != v3)
  {
    *(buf + 5) = v3;
  }

  v1 = *(buf + 4);
  v5 = *(buf + 2);
  if (v5 <= 0x7FFFFFFE && v1 != v5)
  {
    *(buf + 4) = v5;
    return v5;
  }

  return v1;
}

uint64_t xmlBufAddLen(uint64x2_t *a1, unint64_t a2)
{
  if (!a1 || a1[3].i32[2])
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a1[2].i64[1];
  v3 = a1->u32[3];
  if (v3 <= 0x7FFFFFFE && v2 != v3)
  {
    a1[2].i64[1] = v3;
    v2 = v3;
  }

  v5 = a1[2].i64[0];
  v6 = a1->u32[2];
  if (v6 <= 0x7FFFFFFE && v5 != v6)
  {
    a1[2].i64[0] = v6;
    v5 = v6;
  }

  if (v2 - v5 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = 0;
  v9 = v5 + a2;
  a1[2].i64[0] = v9;
  *(a1->i64[0] + v9) = 0;
  v10 = vdupq_n_s64(0x7FFFFFFFuLL);
  a1->u64[1] = vmovn_s64(vbslq_s8(vcgtq_u64(v10, a1[2]), a1[2], v10));
  return v8;
}

const xmlChar *xmlParseQName(uint64_t a1, const xmlChar **a2)
{
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  v4 = xmlParseNCName(a1);
  v5 = **(*(a1 + 56) + 32);
  if (v4)
  {
    v6 = v4;
    if (v5 == 58)
    {
      xmlNextChar(a1);
      v7 = xmlParseNCName(a1);
      if (v7)
      {
        v8 = v7;
        if (**(*(a1 + 56) + 32) == 58)
        {
          xmlNsErr(a1, 202, "Failed to parse QName '%s:%s:'\n", v6, v7, 0);
          xmlNextChar(a1);
          v9 = xmlParseName(a1);
          if (v9)
          {
LABEL_11:
            v10 = xmlBuildQName(v9, v8, 0, 0);
            v11 = xmlDictLookup(*(a1 + 456), v10, -1);
            if (v10)
            {
              free(v10);
            }

            v12 = v6;
            v6 = v11;
            goto LABEL_26;
          }

          if (*(a1 + 272) != -1)
          {
            v9 = "";
            goto LABEL_11;
          }

          return 0;
        }

        v12 = v6;
        v6 = v7;
LABEL_26:
        *a2 = v12;
        return v6;
      }

      if (*(a1 + 272) == -1)
      {
        return 0;
      }

      xmlNsErr(a1, 202, "Failed to parse QName '%s:'\n", v6, 0, 0);
      v13 = xmlParseNmtoken(a1);
      if (v13)
      {
        v14 = v13;
        v15 = xmlBuildQName(v13, v6, 0, 0);
        free(v14);
      }

      else
      {
        if (*(a1 + 272) == -1)
        {
          return 0;
        }

        v15 = xmlBuildQName("", v6, 0, 0);
      }

      v6 = xmlDictLookup(*(a1 + 456), v15, -1);
      if (v15)
      {
        free(v15);
      }
    }

LABEL_25:
    v12 = 0;
    goto LABEL_26;
  }

  if (v5 != 58)
  {
    return 0;
  }

  v6 = xmlParseName(a1);
  if (v6)
  {
    xmlNsErr(a1, 202, "Failed to parse QName '%s'\n", v6, 0, 0);
    goto LABEL_25;
  }

  return v6;
}

void xmlParseElementEnd(xmlParserCtxt *a1)
{
  nameNr = a1->nameNr;
  if (nameNr < 1)
  {
    return;
  }

  node = a1->node;
  if (!a1->sax2)
  {
    xmlParseEndTag1(a1);
LABEL_7:
    if (!node)
    {
      return;
    }

    goto LABEL_11;
  }

  xmlParseEndTag2(a1, a1->pushTab + 3 * nameNr - 3);
  v4 = a1->nameNr;
  if (v4 < 1)
  {
    goto LABEL_7;
  }

  nameTab = a1->nameTab;
  v6 = v4 - 1;
  a1->nameNr = v4 - 1;
  if (v4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = nameTab[v4 - 2];
  }

  a1->name = v7;
  nameTab[v6] = 0;
  if (node)
  {
LABEL_11:
    if (a1->record_info)
    {
      NodeInfo = xmlParserFindNodeInfo(a1, node);
      if (NodeInfo)
      {
        input = a1->input;
        v10 = &input->cur[input->consumed] - input->base;
        line = input->line;
        NodeInfo->end_pos = v10;
        NodeInfo->end_line = line;
      }
    }
  }
}

uint64_t xmlParseNameAndCompare(uint64_t a1, unsigned __int8 *a2)
{
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  if (*(a1 + 272) == -1)
  {
    return 0;
  }

  v4 = *(a1 + 56);
  v5 = *(v4 + 32);
  v6 = *v5;
  v7 = a2;
  v8 = v5;
  if (*v5)
  {
    v8 = *(v4 + 32);
    v7 = a2;
    while (1)
    {
      v9 = *v7;
      if (v6 != v9)
      {
        break;
      }

      v10 = *++v8;
      v6 = v10;
      ++v7;
      if (!v10)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
    v9 = *v7;
  }

  if (v9 || v6 > 0x3E || ((1 << v6) & 0x4000000100002600) == 0)
  {
    result = xmlParseName(a1);
    if (result == a2)
    {
      return 1;
    }
  }

  else
  {
    *(v4 + 56) += v8 - v5;
    *(v4 + 32) = v8;
    return 1;
  }

  return result;
}

xmlNodePtr nodePop(xmlNodePtr ctxt)
{
  if (ctxt)
  {
    properties_low = LODWORD(ctxt->properties);
    if (properties_low < 1)
    {
      return 0;
    }

    else
    {
      nsDef = ctxt->nsDef;
      v3 = properties_low - 1;
      LODWORD(ctxt->properties) = properties_low - 1;
      if (properties_low == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(nsDef + properties_low - 2);
      }

      ctxt->content = v4;
      ctxt = *(&nsDef->next + v3);
      *(&nsDef->next + v3) = 0;
    }
  }

  return ctxt;
}