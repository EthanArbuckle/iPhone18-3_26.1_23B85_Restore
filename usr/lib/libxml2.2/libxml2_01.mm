xmlChar *__cdecl xmlBufEnd(xmlChar *buf)
{
  if (buf)
  {
    if (*(buf + 14))
    {
      return 0;
    }

    else
    {
      v1 = *(buf + 3);
      if (v1 <= 0x7FFFFFFE && *(buf + 5) != v1)
      {
        *(buf + 5) = v1;
      }

      v3 = *(buf + 4);
      v4 = *(buf + 2);
      if (v4 <= 0x7FFFFFFE && v3 != v4)
      {
        *(buf + 4) = v4;
        v3 = v4;
      }

      return (*buf + v3);
    }
  }

  return buf;
}

xmlChar *__cdecl xmlBufContent(xmlChar *buf)
{
  if (buf)
  {
    if (*(buf + 14))
    {
      return 0;
    }

    else
    {
      return *buf;
    }
  }

  return buf;
}

uint64_t xmlBufGrowInternal(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 56))
  {
    return 0;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 12);
  if (v6 <= 0x7FFFFFFE && v5 != v6)
  {
    *(a1 + 40) = v6;
    v5 = v6;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 8);
  if (v9 <= 0x7FFFFFFE && v8 != v9)
  {
    *(a1 + 32) = v9;
    v8 = v9;
  }

  v11 = *(a1 + 16);
  if (v11 == 2)
  {
    return 0;
  }

  if (v5 - v8 > a2)
  {
    *(*a1 + v8 + a2) = 0;
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    return v12 + ~v13;
  }

  if (-2 - v8 < a2)
  {
    v14 = "growing buffer past SIZE_MAX";
    goto LABEL_40;
  }

  v15 = v8 + a2 + 100;
  if (v8 + a2 >= 0xFFFFFFFFFFFFFF9CLL)
  {
    v15 = -1;
  }

  v16 = 2 * v5;
  if (v5 < 0)
  {
    v16 = -1;
  }

  if (v5 > a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (v11 != 3)
  {
    if (v11 == 5)
    {
      if (v5 > 0x98967F || a2 + v8 - 9999999 < 0xFFFFFFFFFF676980)
      {
        xmlBufMemoryError(a1, "buffer error: text too long\n");
        return 0;
      }

      if (v17 >= 0x989680)
      {
        v17 = 10000000;
      }
    }

LABEL_36:
    v21 = malloc_type_realloc(*a1, v17, 0x100004077774924uLL);
    if (v21)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  v18 = *(a1 + 24);
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = *a1 - v18;
  v20 = malloc_type_realloc(v18, v19 + v17, 0x100004077774924uLL);
  if (v20)
  {
    *(a1 + 24) = v20;
    v21 = &v20[v19];
LABEL_37:
    *a1 = v21;
    *(a1 + 40) = v17;
    v21[*(a1 + 32)] = 0;
    *(*a1 + *(a1 + 32) + a2) = 0;
    v22 = *(a1 + 32);
    v23 = vdupq_n_s64(0x7FFFFFFFuLL);
    *(a1 + 8) = vmovn_s64(vbslq_s8(vcgtq_u64(v23, v22), v22, v23));
    v12 = v22.i64[1];
    v13 = v22.i64[0];
    return v12 + ~v13;
  }

LABEL_39:
  v14 = "growing buffer";
LABEL_40:
  __xmlSimpleError(0x1Du, 2, 0, 0, v14);
  if (*(a1 + 56))
  {
    return 0;
  }

  result = 0;
  *(a1 + 56) = 2;
  return result;
}

xmlNodePtr xmlNewDocNodeEatName(xmlDocPtr doc, xmlNsPtr ns, xmlChar *name, const xmlChar *content)
{
  v7 = xmlNewNodeEatName(ns, name);
  v8 = v7;
  if (v7)
  {
    v7->doc = doc;
    if (content)
    {
      NodeList = xmlStringGetNodeList(doc, content);
      v8->children = NodeList;
      if (NodeList)
      {
        next = NodeList->next;
        if (next)
        {
          do
          {
            v11 = next;
            NodeList->parent = v8;
            next = next->next;
            NodeList = v11;
          }

          while (next);
        }

        else
        {
          v11 = NodeList;
        }

        v11->parent = v8;
        v8->last = v11;
      }

      else
      {
        v8->last = 0;
      }
    }
  }

  else if (doc && name && !xmlDictOwns(doc->dict, name))
  {
    free(name);
  }

  return v8;
}

xmlNodePtr xmlNewNodeEatName(xmlNsPtr ns, xmlChar *name)
{
  if (!name)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v5 = v4;
  if (v4)
  {
    *&v4->_private = 0u;
    *&v4->name = 0u;
    *&v4->line = 0;
    *&v4->content = 0u;
    *&v4->nsDef = 0u;
    *&v4->next = 0u;
    *&v4->doc = 0u;
    *&v4->last = 0u;
    v4->type = XML_ELEMENT_NODE;
    v4->name = name;
    v4->ns = ns;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v6 = __xmlRegisterNodeDefaultValue();
      (*v6)(v5);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building node");
  }

  return v5;
}

xmlAttrPtr xmlNewNsPropEatName(xmlNodePtr node, xmlNsPtr ns, xmlChar *name, const xmlChar *value)
{
  if (name)
  {
    return xmlNewPropInternal(node, ns, name, value, 1);
  }

  else
  {
    return 0;
  }
}

int xmlParserInputGrow(xmlParserInputPtr in, int len)
{
  result = -1;
  if (in)
  {
    if ((len & 0x80000000) == 0)
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
              v8 = cur - base;
              if (xmlBufUse(buffer) <= (cur - base + 250) && in->buf->readcallback)
              {
                v9 = xmlParserInputBufferGrow(in->buf, len);
                v10 = xmlBufContent(in->buf->buffer);
                in->base = v10;
                in->cur = &v10[v8];
                in->end = xmlBufEnd(in->buf->buffer);
                return v9;
              }

              else
              {
                return 0;
              }
            }

            else
            {
              return -1;
            }
          }
        }
      }
    }
  }

  return result;
}

int xmlParserInputBufferGrow(xmlParserInputBufferPtr in, int len)
{
  if (!in || in->error)
  {
    goto LABEL_23;
  }

  if (len != 4 && len < 4001)
  {
    v4 = 4000;
  }

  else
  {
    v4 = len;
  }

  if ((xmlBufGrow(in->buffer, v4 + 1) & 0x80000000) != 0)
  {
    v13 = "growing input buffer";
    v14 = 2;
    v15 = 2;
    v16 = 0;
LABEL_22:
    __xmlSimpleError(8u, v15, 0, v16, v13);
    in->error = v14;
LABEL_23:
    LODWORD(v9) = -1;
    return v9;
  }

  v5 = xmlBufEnd(in->buffer);
  readcallback = in->readcallback;
  if (!readcallback)
  {
    v16 = "no input";
    v14 = 1547;
    v15 = 1547;
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v7 = v5;
  v8 = (readcallback)(in->context, v5, v4);
  v9 = v8;
  if (v8 < 1)
  {
    in->readcallback = endOfInput;
    if ((v8 & 0x80000000) != 0)
    {
      goto LABEL_23;
    }
  }

  if (!in->encoder)
  {
    xmlBufAddLen(in->buffer, v8);
    return v9;
  }

  raw = in->raw;
  if (!raw)
  {
    raw = xmlBufCreate();
    in->raw = raw;
  }

  if (xmlBufAdd(raw, v7, v9))
  {
    goto LABEL_23;
  }

  v11 = xmlBufUse(in->raw);
  v12 = xmlCharEncInput(in, 1);
  if (v12 < 0)
  {
    v16 = "encoder error";
    v14 = 1544;
    v15 = 1544;
    goto LABEL_21;
  }

  LODWORD(v9) = v12;
  in->rawconsumed = in->rawconsumed - xmlBufUse(in->raw) + v11;
  return v9;
}

xmlDocPtr xmlSAXParseMemoryWithData(xmlSAXHandlerPtr sax, const char *buffer, int size, int recovery, void *data)
{
  xmlInitParser();
  MemoryParserCtxt = xmlCreateMemoryParserCtxt(buffer, size);
  if (!MemoryParserCtxt)
  {
    return 0;
  }

  v11 = MemoryParserCtxt;
  if (sax)
  {
    v12 = MemoryParserCtxt->sax;
    if (v11->sax)
    {
      free(v12);
    }

    v11->sax = sax;
  }

  xmlDetectSAX2(v11);
  if (data)
  {
    v11->_private = data;
  }

  v11->recovery = recovery;
  xmlParseDocument(v11);
  myDoc = v11->myDoc;
  if (!(v11->wellFormed | recovery))
  {
    xmlFreeDoc(v11->myDoc);
    myDoc = 0;
    v11->myDoc = 0;
  }

  if (sax)
  {
    v11->sax = 0;
  }

  xmlFreeParserCtxt(v11);
  return myDoc;
}

xmlParserCtxtPtr xmlCreatePushParserCtxt(xmlSAXHandlerPtr sax, void *user_data, const char *chunk, int size, const char *filename)
{
  v10 = XML_CHAR_ENCODING_NONE;
  if (chunk && size >= 4)
  {
    v10 = xmlDetectCharEncoding(chunk, size);
  }

  v11 = xmlAllocParserInputBuffer(v10);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = xmlNewParserCtxt();
  v14 = v13;
  if (!v13)
  {
    xmlErrMemory(0, "creating parser: out of memory\n");
    xmlFreeParserInputBuffer(v12);
    return v14;
  }

  v13->dictNames = 1;
  if (sax)
  {
    v15 = v13->sax;
    if (v15 != __xmlDefaultSAXHandler())
    {
      free(v14->sax);
    }

    v16 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL);
    v14->sax = v16;
    if (!v16)
    {
      xmlErrMemory(v14, 0);
      xmlFreeParserInputBuffer(v12);
LABEL_31:
      xmlFreeParserCtxt(v14);
      return 0;
    }

    *&v16->_private = 0u;
    *&v16->endElementNs = 0u;
    *&v16->getParameterEntity = 0u;
    *&v16->externalSubset = 0u;
    *&v16->comment = 0u;
    *&v16->error = 0u;
    *&v16->reference = 0u;
    *&v16->ignorableWhitespace = 0u;
    *&v16->startDocument = 0u;
    *&v16->startElement = 0u;
    *&v16->attributeDecl = 0u;
    *&v16->unparsedEntityDecl = 0u;
    *&v16->resolveEntity = 0u;
    *&v16->entityDecl = 0u;
    *&v16->internalSubset = 0u;
    *&v16->hasInternalSubset = 0u;
    if (sax->initialized == -554844497)
    {
      v17 = 256;
    }

    else
    {
      v17 = 224;
    }

    memcpy(v14->sax, sax, v17);
    if (user_data)
    {
      v14->userData = user_data;
    }
  }

  if (filename)
  {
    v14->directory = xmlParserGetDirectory(filename);
    v18 = xmlNewInputStream(v14);
    if (!v18)
    {
      goto LABEL_28;
    }

    v19 = v18;
    v20 = xmlCanonicPath(filename);
    v19->filename = v20;
    if (!v20)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14->directory = 0;
    v21 = xmlNewInputStream(v14);
    if (!v21)
    {
LABEL_28:
      xmlFreeParserCtxt(v14);
      xmlFreeParserInputBuffer(v12);
      return 0;
    }

    v19 = v21;
    v21->filename = 0;
  }

  v19->buf = v12;
  xmlBufResetInput(v12->buffer, v19);
  if (inputPush(v14, v19) < 0)
  {
    xmlFreeInputStream(v19);
    goto LABEL_31;
  }

  if (chunk && size)
  {
    input = v14->input;
    if (input && *input)
    {
      InputBase = xmlBufGetInputBase(*(*input + 32), input);
      v24 = v14->input;
      v25 = v24->cur - v24->base;
      xmlParserInputBufferPush(v24->buf, size, chunk);
      xmlBufSetInputBaseCur(v14->input->buf->buffer, &v14->input->buf, InputBase, v25);
    }
  }

  else
  {
    v14->charset = 0;
  }

  if (v10)
  {
    xmlSwitchEncoding(v14, v10);
  }

  return v14;
}

htmlDocPtr htmlReadMemory(const char *buffer, int size, const char *URL, const char *encoding, int options)
{
  xmlInitParser();
  result = xmlCreateMemoryParserCtxt(buffer, size);
  if (result)
  {
    v11 = result;
    htmlDefaultSAXHandlerInit();
    sax = v11->sax;
    if (v11->sax)
    {
      v13 = __htmlDefaultSAXHandler();
      v14 = *&v13->hasInternalSubset;
      *&sax->internalSubset = *&v13->internalSubset;
      *&sax->hasInternalSubset = v14;
      v15 = *&v13->unparsedEntityDecl;
      v17 = *&v13->resolveEntity;
      v16 = *&v13->entityDecl;
      *&sax->attributeDecl = *&v13->attributeDecl;
      *&sax->unparsedEntityDecl = v15;
      *&sax->resolveEntity = v17;
      *&sax->entityDecl = v16;
      v18 = *&v13->ignorableWhitespace;
      v20 = *&v13->startDocument;
      v19 = *&v13->startElement;
      *&sax->reference = *&v13->reference;
      *&sax->ignorableWhitespace = v18;
      *&sax->startDocument = v20;
      *&sax->startElement = v19;
      v21 = *&v13->externalSubset;
      v23 = *&v13->comment;
      v22 = *&v13->error;
      *&sax->getParameterEntity = *&v13->getParameterEntity;
      *&sax->externalSubset = v21;
      *&sax->comment = v23;
      *&sax->error = v22;
    }

    return htmlDoRead(v11, URL, encoding, options, 0);
  }

  return result;
}

xmlGlobalStatePtr xmlGetGlobalState(void)
{
  pthread_once(&once_control_2, xmlOnceInit);
  v0 = pthread_getspecific(globalkey);
  if (!v0)
  {
    v1 = malloc_type_malloc(0x3C8uLL, 0x10D00409EF9DAF4uLL);
    if (v1)
    {
      v0 = v1;
      bzero(v1, 0x3C8uLL);
      xmlInitializeGlobalState(v0);
      pthread_setspecific(globalkey, v0);
    }

    else
    {
      v2 = *__xmlGenericError();
      v3 = __xmlGenericErrorContext();
      v2(*v3, "xmlGetGlobalState: out of memory\n");
      return 0;
    }
  }

  return v0;
}

void xmlMutexLock(xmlMutexPtr tok)
{
  if (tok)
  {
    pthread_mutex_lock(tok);
  }
}

void xmlInitializeGlobalState(xmlGlobalStatePtr gs)
{
  v2 = xmlThrDefMutex;
  if (!xmlThrDefMutex)
  {
    pthread_once(&once_control_1, _xmlInitGlobalsOnce);
    v2 = xmlThrDefMutex;
  }

  xmlMutexLock(v2);
  initdocbDefaultSAXHandler(&gs->docbDefaultSAXHandler);
  inithtmlDefaultSAXHandler(&gs->htmlDefaultSAXHandler);
  gs->oldXMLWDcompatibility = 0;
  gs->xmlBufferAllocScheme = xmlBufferAllocSchemeThrDef;
  gs->xmlDefaultBufferSize = xmlDefaultBufferSizeThrDef;
  initxmlDefaultSAXHandler(&gs->xmlDefaultSAXHandler, 1);
  gs->xmlDefaultSAXLocator.getPublicId = xmlSAX2GetPublicId;
  gs->xmlDefaultSAXLocator.getSystemId = xmlSAX2GetSystemId;
  gs->xmlDefaultSAXLocator.getLineNumber = xmlSAX2GetLineNumber;
  gs->xmlDefaultSAXLocator.getColumnNumber = xmlSAX2GetColumnNumber;
  gs->xmlDoValidityCheckingDefaultValue = xmlDoValidityCheckingDefaultValueThrDef;
  gs->xmlFree = MEMORY[0x1E69E9B38];
  gs->xmlMalloc = xmlMallocZero;
  gs->xmlMallocAtomic = xmlMallocZero;
  gs->xmlRealloc = xmlReallocChecked;
  gs->xmlMemStrdup = xmlStrdup;
  gs->xmlGetWarningsDefaultValue = xmlGetWarningsDefaultValueThrDef;
  gs->xmlIndentTreeOutput = xmlIndentTreeOutputThrDef;
  gs->xmlTreeIndentString = xmlTreeIndentStringThrDef;
  gs->xmlKeepBlanksDefaultValue = xmlKeepBlanksDefaultValueThrDef;
  gs->xmlLineNumbersDefaultValue = xmlLineNumbersDefaultValueThrDef;
  gs->xmlLoadExtDtdDefaultValue = xmlLoadExtDtdDefaultValueThrDef;
  gs->xmlParserDebugEntities = xmlParserDebugEntitiesThrDef;
  gs->xmlParserVersion = "20913";
  gs->xmlPedanticParserDefaultValue = xmlPedanticParserDefaultValueThrDef;
  gs->xmlSaveNoEmptyTags = xmlSaveNoEmptyTagsThrDef;
  gs->xmlSubstituteEntitiesDefaultValue = xmlSubstituteEntitiesDefaultValueThrDef;
  gs->xmlGenericError = xmlGenericErrorThrDef;
  gs->xmlStructuredError = xmlStructuredErrorThrDef;
  gs->xmlGenericErrorContext = xmlGenericErrorContextThrDef;
  gs->xmlStructuredErrorContext = xmlStructuredErrorContextThrDef;
  gs->xmlRegisterNodeDefaultValue = xmlRegisterNodeDefaultValueThrDef;
  gs->xmlDeregisterNodeDefaultValue = xmlDeregisterNodeDefaultValueThrDef;
  gs->xmlParserInputBufferCreateFilenameValue = xmlParserInputBufferCreateFilenameValueThrDef;
  gs->xmlOutputBufferCreateFilenameValue = xmlOutputBufferCreateFilenameValueThrDef;
  gs->xmlLastError.node = 0;
  *&gs->xmlLastError.str2 = 0u;
  *&gs->xmlLastError.int1 = 0u;
  *&gs->xmlLastError.level = 0u;
  *&gs->xmlLastError.line = 0u;
  *&gs->xmlLastError.domain = 0u;
  v3 = xmlThrDefMutex;

  xmlMutexUnlock(v3);
}

void inithtmlDefaultSAXHandler(xmlSAXHandlerV1 *hdlr)
{
  if (hdlr->initialized != 1)
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

void initdocbDefaultSAXHandler(xmlSAXHandlerV1 *hdlr)
{
  if (hdlr->initialized != 1)
  {
    hdlr->internalSubset = xmlSAX2InternalSubset;
    hdlr->externalSubset = 0;
    hdlr->isStandalone = xmlSAX2IsStandalone;
    hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
    hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
    hdlr->resolveEntity = xmlSAX2ResolveEntity;
    hdlr->getEntity = xmlSAX2GetEntity;
    hdlr->entityDecl = xmlSAX2EntityDecl;
    *&hdlr->notationDecl = 0u;
    *&hdlr->elementDecl = 0u;
    hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
    hdlr->startDocument = xmlSAX2StartDocument;
    hdlr->endDocument = xmlSAX2EndDocument;
    hdlr->startElement = xmlSAX2StartElement;
    hdlr->endElement = xmlSAX2EndElement;
    hdlr->reference = xmlSAX2Reference;
    hdlr->characters = xmlSAX2Characters;
    hdlr->getParameterEntity = 0;
    hdlr->cdataBlock = 0;
    hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
    hdlr->processingInstruction = 0;
    hdlr->comment = xmlSAX2Comment;
    hdlr->warning = xmlParserWarning;
    hdlr->error = xmlParserError;
    hdlr->fatalError = xmlParserError;
    hdlr->initialized = 1;
  }
}

void initxmlDefaultSAXHandler(xmlSAXHandlerV1 *hdlr, int warning)
{
  if (hdlr->initialized != 1)
  {
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
    hdlr->startElement = xmlSAX2StartElement;
    hdlr->endElement = xmlSAX2EndElement;
    hdlr->reference = xmlSAX2Reference;
    hdlr->characters = xmlSAX2Characters;
    hdlr->ignorableWhitespace = xmlSAX2Characters;
    hdlr->cdataBlock = xmlSAX2CDataBlock;
    hdlr->processingInstruction = xmlSAX2ProcessingInstruction;
    if (warning)
    {
      v2 = xmlParserWarning;
    }

    else
    {
      v2 = 0;
    }

    hdlr->warning = v2;
    hdlr->error = xmlParserError;
    hdlr->fatalError = xmlParserError;
    hdlr->initialized = 1;
  }
}

void xmlMutexUnlock(xmlMutexPtr tok)
{
  if (tok)
  {
    pthread_mutex_unlock(tok);
  }
}

xmlChar *__cdecl xmlCharStrdup(xmlChar *cur)
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
    return xmlCharStrndup(cur, v1);
  }

  return cur;
}

xmlChar *__cdecl xmlCharStrndup(const char *cur, int len)
{
  result = 0;
  if (cur)
  {
    if ((len & 0x80000000) == 0)
    {
      result = malloc_type_malloc(len + 1, 0x100004077774924uLL);
      if (result)
      {
        if (len)
        {
          v5 = 0;
          while (1)
          {
            v6 = cur[v5];
            result[v5] = v6;
            if (!v6)
            {
              break;
            }

            if (len == ++v5)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          result[len] = 0;
        }
      }
    }
  }

  return result;
}

xmlNodePtr xmlNewDocNode(xmlDocPtr doc, xmlNsPtr ns, const xmlChar *name, const xmlChar *content)
{
  if (doc && (dict = doc->dict) != 0)
  {
    v8 = xmlDictLookup(dict, name, -1);
    v9 = xmlNewNodeEatName(ns, v8);
  }

  else
  {
    v9 = xmlNewNode(ns, name);
  }

  v10 = v9;
  if (v9)
  {
    v9->doc = doc;
    if (content)
    {
      NodeList = xmlStringGetNodeList(doc, content);
      v10->children = NodeList;
      if (NodeList)
      {
        next = NodeList->next;
        if (next)
        {
          do
          {
            v13 = next;
            NodeList->parent = v10;
            next = next->next;
            NodeList = v13;
          }

          while (next);
        }

        else
        {
          v13 = NodeList;
        }

        v13->parent = v10;
      }

      else
      {
        v13 = 0;
      }

      v10->last = v13;
    }
  }

  return v10;
}

xmlNodePtr xmlNewNode(xmlNsPtr ns, const xmlChar *name)
{
  if (!name)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v5 = v4;
  if (v4)
  {
    *&v4->line = 0;
    *&v4->content = 0u;
    *&v4->nsDef = 0u;
    *&v4->next = 0u;
    *&v4->doc = 0u;
    *&v4->name = 0u;
    *&v4->last = 0u;
    *&v4->_private = 0u;
    v4->type = XML_ELEMENT_NODE;
    v4->name = xmlStrdup(name);
    v5->ns = ns;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v6 = __xmlRegisterNodeDefaultValue();
      (*v6)(v5);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building node");
  }

  return v5;
}

xmlAttrPtr xmlNewNsProp(xmlNodePtr node, xmlNsPtr ns, const xmlChar *name, const xmlChar *value)
{
  if (name)
  {
    return xmlNewPropInternal(node, ns, name, value, 0);
  }

  else
  {
    return 0;
  }
}

int xmlParseCharRef(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 38 || cur[1] != 35)
  {
    xmlFatalErr(ctxt, 8, 0);
    v7 = 0;
    goto LABEL_40;
  }

  v4 = cur + 2;
  if (cur[2] == 120)
  {
    input->cur = cur + 3;
    input->col += 3;
    if (!cur[3])
    {
      xmlParserInputGrow(input, 250);
      input = ctxt->input;
    }

    if (!ctxt->progressive && input->end - input->cur <= 249)
    {
      xmlGROW(ctxt);
      input = ctxt->input;
    }

    v5 = input->cur;
    if (*v5 != 59)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v6 < 21)
        {
          v8 = v6 + 1;
        }

        else
        {
          if (!ctxt->progressive && input->end - v5 <= 249)
          {
            xmlGROW(ctxt);
          }

          if (ctxt->instate == XML_PARSER_EOF)
          {
            return 0;
          }

          v8 = 0;
          input = ctxt->input;
        }

        v9 = *input->cur;
        if (v9 - 48 > 9)
        {
          if (v9 < 0x61)
          {
            if (v9 < 0x41 || (v9 <= 0x46 ? (v12 = v8 <= 19) : (v12 = 0), !v12))
            {
LABEL_76:
              v19 = ctxt;
              v20 = 6;
LABEL_77:
              xmlFatalErr(v19, v20, 0);
              v7 = 0;
              input = ctxt->input;
              v5 = input->cur;
              if (*v5 == 59)
              {
                goto LABEL_51;
              }

LABEL_40:
              v13 = "xmlParseCharRef: invalid xmlChar value %d\n";
LABEL_41:
              xmlFatalErrMsgInt(ctxt, 9, v13, v7);
              return 0;
            }

            v10 = v9 + 16 * v7 - 55;
          }

          else
          {
            if (v9 > 0x66 || v8 > 19)
            {
              goto LABEL_76;
            }

            v10 = v9 + 16 * v7 - 87;
          }
        }

        else
        {
          v10 = v9 + 16 * v7 - 48;
        }

        if (v10 >= 1114112)
        {
          v7 = 1114112;
        }

        else
        {
          v7 = v10;
        }

        xmlNextChar(ctxt);
        v6 = v8 + 1;
        input = ctxt->input;
        v5 = input->cur;
        if (*v5 == 59)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_50:
    v7 = 0;
    goto LABEL_51;
  }

  input->cur = v4;
  input->col += 2;
  if (!*v4)
  {
    xmlParserInputGrow(input, 250);
    input = ctxt->input;
  }

  if (!ctxt->progressive && input->end - input->cur <= 249)
  {
    xmlGROW(ctxt);
    input = ctxt->input;
  }

  v5 = input->cur;
  if (*v5 == 59)
  {
    goto LABEL_50;
  }

  v15 = 0;
  v7 = 0;
  do
  {
    if (v15 < 21)
    {
      v16 = v15 + 1;
    }

    else
    {
      if (!ctxt->progressive && input->end - v5 <= 249)
      {
        xmlGROW(ctxt);
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        return 0;
      }

      v16 = 0;
      input = ctxt->input;
    }

    v17 = *input->cur;
    if ((v17 - 48) > 9)
    {
      v19 = ctxt;
      v20 = 7;
      goto LABEL_77;
    }

    v18 = v17 + 10 * v7 - 48;
    if (v18 >= 1114112)
    {
      v7 = 1114112;
    }

    else
    {
      v7 = v18;
    }

    xmlNextChar(ctxt);
    v15 = v16 + 1;
    input = ctxt->input;
    v5 = input->cur;
  }

  while (*v5 != 59);
LABEL_51:
  ++input->col;
  input->cur = v5 + 1;
  if (v7 >= 1114112)
  {
    v13 = "xmlParseCharRef: character reference out of bounds\n";
    goto LABEL_41;
  }

  if (v7 > 255)
  {
    if ((v7 - 0x10000) >= 0xFFFFD800 && (v7 - 57344) >> 1 >= 0xFFF)
    {
      goto LABEL_40;
    }
  }

  else if (v7 <= 31 && (v7 > 0xD || ((1 << v7) & 0x2600) == 0))
  {
    goto LABEL_40;
  }

  return v7;
}

int xmlCurrentChar(xmlParserCtxtPtr ctxt, int *len)
{
  v2 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (!ctxt || !len)
  {
    goto LABEL_17;
  }

  input = ctxt->input;
  if (!input || ctxt->instate == XML_PARSER_EOF)
  {
    goto LABEL_16;
  }

  cur = input->cur;
  v7 = *cur;
  if (v7 >= 32)
  {
    *len = 1;
LABEL_7:
    v2 = *cur;
    goto LABEL_17;
  }

  if (ctxt->charset != 1)
  {
    *len = 1;
    goto LABEL_19;
  }

  v8 = *cur;
  if ((v7 & 0x80) != 0)
  {
    if (v8 == 192 || (v7 & 0x40) == 0)
    {
      goto LABEL_44;
    }

    v14 = input->end - cur;
    if (v14 <= 1)
    {
      xmlParserInputGrow(input, 250);
      input = ctxt->input;
      cur = input->cur;
      v14 = input->end - cur;
      if (v14 < 2)
      {
        goto LABEL_44;
      }
    }

    if ((cur[1] & 0xC0) != 0x80)
    {
      goto LABEL_44;
    }

    if ((~v8 & 0xE0) != 0)
    {
      *len = 2;
      if ((*cur & 0x1Fu) < 2)
      {
        goto LABEL_44;
      }

      v2 = cur[1] & 0x3F | ((*cur & 0x1F) << 6);
    }

    else
    {
      if (v14 == 2)
      {
        xmlParserInputGrow(input, 250);
        input = ctxt->input;
        cur = input->cur;
        v14 = input->end - cur;
        if (v14 < 3)
        {
          goto LABEL_44;
        }
      }

      if ((cur[2] & 0xC0) != 0x80)
      {
        goto LABEL_44;
      }

      if ((~v8 & 0xF0) != 0)
      {
        *len = 3;
        if ((((*cur & 0xF) << 12) | ((cur[1] & 0x3F) << 6)) < 0x800u)
        {
          goto LABEL_44;
        }

        v2 = ((*cur & 0xF) << 12) | ((cur[1] & 0x3F) << 6) | cur[2] & 0x3F;
      }

      else
      {
        if (v14 == 3)
        {
          xmlParserInputGrow(input, 250);
          input = ctxt->input;
          cur = input->cur;
          v14 = input->end - cur;
        }

        if ((v8 & 0xF8) != 0xF0)
        {
          goto LABEL_44;
        }

        if (v14 < 4)
        {
          goto LABEL_44;
        }

        if ((cur[3] & 0xC0) != 0x80)
        {
          goto LABEL_44;
        }

        *len = 4;
        v15 = ((*cur & 7) << 18) | ((cur[1] & 0x3F) << 12);
        if (v15 < 0x10000)
        {
          goto LABEL_44;
        }

        v2 = cur[3] & 0x3F | ((cur[2] & 0x3F) << 6) | v15;
      }
    }

    if (v2 >> 11 < 0x1B)
    {
      goto LABEL_17;
    }

    if ((v2 - 57344) >> 1 < 0xFFF)
    {
      goto LABEL_17;
    }

    if (v2 - 0x10000 < 0x100000)
    {
      goto LABEL_17;
    }

    xmlErrEncodingInt(ctxt, "Char 0x%X out of allowed range\n", v2);
    if (ctxt->instate != XML_PARSER_EOF)
    {
      goto LABEL_17;
    }

    input = ctxt->input;
LABEL_44:
    if (input->end - input->cur <= 3)
    {
      v2 = 0;
      *len = 0;
      goto LABEL_17;
    }

    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__str = 0u;
    snprintf(__str, 0x95uLL, "Bytes: 0x%02X 0x%02X 0x%02X 0x%02X\n", *input->cur, *(input->cur + 1), *(input->cur + 2), *(input->cur + 3));
    __xmlErrEncoding(ctxt, 9, "Input is not proper UTF-8, indicate encoding !\n%s", __str, 0);
    ctxt->charset = 10;
    *len = 1;
    cur = ctxt->input->cur;
    goto LABEL_7;
  }

  *len = 1;
  if (input->end - cur <= 0)
  {
    xmlParserInputGrow(input, 250);
    input = ctxt->input;
    cur = input->cur;
  }

  v2 = *cur;
  if (*cur)
  {
    goto LABEL_20;
  }

  if (input->end <= cur)
  {
LABEL_16:
    v2 = 0;
    goto LABEL_17;
  }

  xmlErrEncodingInt(ctxt, "Char 0x0 out of allowed range\n", 0);
  input = ctxt->input;
  if (ctxt->instate == XML_PARSER_EOF)
  {
    goto LABEL_44;
  }

  cur = input->cur;
LABEL_19:
  v2 = *cur;
LABEL_20:
  if (v2 == 13)
  {
    v12 = cur[1];
    v11 = cur + 1;
    if (v12 == 10)
    {
      input->cur = v11;
    }

    v2 = 10;
  }

LABEL_17:
  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

int xmlCopyChar(int len, xmlChar *out, int val)
{
  if (!out)
  {
    return 0;
  }

  if (val >= 128)
  {
    return xmlCopyCharMultiByte(out, val);
  }

  *out = val;
  return 1;
}

xmlNodePtr xmlStringLenGetNodeList(const xmlDoc *doc, const xmlChar *value, int len)
{
  v45 = *MEMORY[0x1E69E9840];
  if (value && (v4 = value, (Size = xmlBufCreateSize(0)) != 0))
  {
    v7 = Size;
    xmlBufSetAllocationScheme(Size, 4u);
    if (len >= 1)
    {
      Sibling = 0;
      v9 = 0;
      v10 = &v4[len];
      v11 = v10 - 2;
      v12 = v4;
      while (1)
      {
        if (*v12 != 38)
        {
          if (!*v12)
          {
            goto LABEL_86;
          }

          ++v12;
          goto LABEL_85;
        }

        if (v12 != v4 && xmlBufAdd(v7, v4, (v12 - v4)))
        {
          goto LABEL_101;
        }

        v13 = (v12 + 2);
        if ((v12 + 2) < v10 && v12[1] == 35 && *v13 == 120)
        {
          v14 = (v12 + 3);
          if ((v12 + 3) >= v10)
          {
            v15 = 0;
LABEL_46:
            v16 = 0;
            v28 = (v12 + 4);
            while (1)
            {
              if ((v15 - 48) > 9)
              {
                if ((v15 - 97) > 5)
                {
                  if ((v15 - 65) > 5)
                  {
                    __xmlSimpleError(2u, 1300, doc, "invalid hexadecimal character value\n", 0);
                    v29 = 0;
                    v16 = 0;
                    v14 = v28 - 1;
                    goto LABEL_61;
                  }

                  v16 = v15 + 16 * v16 - 55;
                }

                else
                {
                  v16 = v15 + 16 * v16 - 87;
                }
              }

              else
              {
                v16 = v15 + 16 * v16 - 48;
              }

              if (v16 >= 1114112)
              {
                v16 = 1114112;
              }

              if (v28 >= v10)
              {
                v15 = 0;
              }

              else
              {
                v15 = *v28;
              }

              ++v28;
              if (v15 == 59)
              {
                v14 = v28 - 1;
                goto LABEL_60;
              }
            }
          }

          v15 = *v14;
          if (v15 != 59)
          {
            goto LABEL_46;
          }

          v16 = 0;
LABEL_60:
          v29 = 1;
LABEL_61:
          v12 = &v14[v29];
          if (v16)
          {
LABEL_62:
            v44 = 0;
            *out = 0;
            if (v16 < 1114112)
            {
              v30 = v16;
            }

            else
            {
              v30 = 65533;
            }

            out[xmlCopyCharMultiByte(out, v30)] = 0;
            v4 = v12;
            if (xmlBufCat(v7, out))
            {
              goto LABEL_101;
            }

            goto LABEL_85;
          }

          goto LABEL_84;
        }

        v17 = v12 + 1;
        if ((v12 + 1) >= v10)
        {
          goto LABEL_92;
        }

        v18 = *v17;
        if (v18 == 35)
        {
          break;
        }

        v20 = 0;
        v21 = v11 - v12;
        v12 += 2;
        if (!*v17)
        {
LABEL_92:
          __xmlSimpleError(2u, 1302, doc, "unterminated entity reference %15s\n", v17);
          goto LABEL_101;
        }

        while (v18 != 59)
        {
          if (v21 != v20)
          {
            v22 = *v12++;
            v18 = v22;
            ++v20;
            if (v22)
            {
              continue;
            }
          }

          goto LABEL_92;
        }

        if (v20)
        {
          v41 = v11;
          cur = Sibling;
          v25 = xmlStrndup(v17, v20);
          DocEntity = xmlGetDocEntity(doc, v25);
          v27 = DocEntity;
          if (DocEntity && DocEntity->etype == XML_INTERNAL_PREDEFINED_ENTITY)
          {
            v11 = v41;
            if (xmlBufCat(v7, DocEntity->content))
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (!xmlBufIsEmpty(v7))
            {
              v31 = xmlNewText(0);
              if (!v31)
              {
                goto LABEL_103;
              }

              v32 = v31;
              v31->doc = doc;
              v31->content = xmlBufDetach(v7->i64);
              if (cur)
              {
                cur = xmlAddNextSibling(cur, v32);
              }

              else
              {
                v9 = v32;
                cur = v32;
              }
            }

            v33 = xmlNewReference(doc, v25);
            if (!v33)
            {
LABEL_103:
              if (v25)
              {
                free(v25);
              }

              goto LABEL_101;
            }

            Sibling = v33;
            if (v27)
            {
              if (!v27->children)
              {
                v27->children = -1;
                NodeList = xmlStringGetNodeList(doc, v33->content);
                v27->children = NodeList;
                v27->owner = 1;
                if (NodeList)
                {
                  do
                  {
                    v35 = NodeList;
                    NodeList->parent = v27;
                    NodeList = NodeList->next;
                  }

                  while (NodeList);
                  v27->last = v35;
                }
              }
            }

            if (cur)
            {
              Sibling = xmlAddNextSibling(cur, Sibling);
            }

            else
            {
              v9 = Sibling;
            }

            v11 = v41;
          }

          free(v25);
        }

LABEL_84:
        v4 = v12;
LABEL_85:
        if (v12 >= v10)
        {
LABEL_86:
          if (v12 == v4 || !xmlBufAdd(v7, v4, (v12 - v4)))
          {
            if (!xmlBufIsEmpty(v7))
            {
              goto LABEL_97;
            }

            if (!v9)
            {
LABEL_94:
              v36 = xmlNewText("");
              v9 = v36;
              if (v36)
              {
                v36->doc = doc;
              }
            }
          }

          goto LABEL_101;
        }
      }

      if (v13 >= v10)
      {
        v19 = 0;
      }

      else
      {
        v19 = *v13;
        if (v19 == 59)
        {
          v16 = 0;
LABEL_36:
          v24 = 1;
          goto LABEL_38;
        }
      }

      v16 = 0;
      v23 = (v12 + 3);
      while ((v19 - 48) <= 9)
      {
        v16 = v19 + 10 * v16 - 48;
        if (v16 >= 1114112)
        {
          v16 = 1114112;
        }

        if (v23 >= v10)
        {
          v19 = 0;
        }

        else
        {
          v19 = *v23;
        }

        ++v23;
        if (v19 == 59)
        {
          v13 = v23 - 1;
          goto LABEL_36;
        }
      }

      __xmlSimpleError(2u, 1301, doc, "invalid decimal character value\n", 0);
      v24 = 0;
      v16 = 0;
      v13 = v23 - 1;
LABEL_38:
      v12 = &v13[v24];
      if (v16)
      {
        goto LABEL_62;
      }

      goto LABEL_84;
    }

    if (xmlBufIsEmpty(v7))
    {
      goto LABEL_94;
    }

    v9 = 0;
    Sibling = 0;
LABEL_97:
    v37 = xmlNewText(0);
    if (v37)
    {
      v38 = v37;
      v37->doc = doc;
      v37->content = xmlBufDetach(v7->i64);
      if (Sibling)
      {
        xmlAddNextSibling(Sibling, v38);
      }

      else
      {
        v9 = v38;
      }
    }

LABEL_101:
    xmlBufFree(v7);
  }

  else
  {
    v9 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v9;
}

xmlNodePtr xmlNewText(const xmlChar *content)
{
  v2 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v3 = v2;
  if (v2)
  {
    *&v2->_private = 0u;
    *&v2->name = 0u;
    *&v2->line = 0;
    *&v2->content = 0u;
    *&v2->nsDef = 0u;
    *&v2->next = 0u;
    *&v2->doc = 0u;
    *&v2->last = 0u;
    v2->type = XML_TEXT_NODE;
    v2->name = "text";
    if (content)
    {
      v2->content = xmlStrdup(content);
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v4 = __xmlRegisterNodeDefaultValue();
      (*v4)(v3);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building text");
  }

  return v3;
}

uint64_t xmlBufIsEmpty(uint64_t a1)
{
  if (!a1 || *(a1 + 56))
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 12);
  if (v2 <= 0x7FFFFFFE && *(a1 + 40) != v2)
  {
    *(a1 + 40) = v2;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 8);
  if (v5 <= 0x7FFFFFFE && v4 != v5)
  {
    *(a1 + 32) = v5;
    v4 = v5;
  }

  return v4 == 0;
}

int xmlParserInputBufferRead(xmlParserInputBufferPtr in, int len)
{
  if (!in || in->error)
  {
    return -1;
  }

  if (in->readcallback)
  {

    return xmlParserInputBufferGrow(in, len);
  }

  else if (xmlBufGetAllocationScheme(in->buffer) == 2)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t xmlBufDetach(uint64_t *a1)
{
  if (!a1 || *(a1 + 4) == 2 || a1[6] || *(a1 + 14))
  {
    return 0;
  }

  v1 = *a1;
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return v1;
}

void xmlSAX2EndDocument(void *ctx)
{
  if (ctx)
  {
    if (*(ctx + 39))
    {
      if (*(ctx + 6))
      {
        v2 = *(ctx + 2);
        if (v2)
        {
          if (v2->intSubset)
          {
            *(ctx + 38) &= xmlValidateDocumentFinal((ctx + 160), v2);
          }
        }
      }
    }

    v3 = *(ctx + 5);
    if (v3)
    {
      v4 = *(ctx + 2);
      if (v4)
      {
        if (!*(v4 + 112))
        {
          *(v4 + 112) = v3;
          *(ctx + 5) = 0;
        }
      }
    }

    v5 = *(ctx + 9);
    if (v5)
    {
      if (*(ctx + 16) >= 1)
      {
        v6 = *v5;
        if (v6)
        {
          v7 = *(v6 + 80);
          if (v7)
          {
            v8 = *(ctx + 2);
            if (v8)
            {
              if (!*(v8 + 112))
              {
                *(*(ctx + 2) + 112) = xmlStrdup(v7);
              }
            }
          }
        }
      }
    }

    v9 = *(ctx + 102);
    if (v9)
    {
      v10 = *(ctx + 2);
      if (v10)
      {
        if (!*(v10 + 144))
        {
          *(v10 + 144) = v9;
        }
      }
    }
  }
}

int xmlStrlen(const xmlChar *str)
{
  if (str)
  {
    if (*str)
    {
      v1 = 0;
        ;
      }

      if (v1 >> 31)
      {
        LODWORD(str) = 0;
      }

      else
      {
        LODWORD(str) = v1;
      }
    }

    else
    {
      LODWORD(str) = 0;
    }
  }

  return str;
}

xmlAttrPtr xmlHasProp(const xmlNode *node, const xmlChar *name)
{
  if (!node)
  {
    return 0;
  }

  properties = 0;
  if (!name || node->type != XML_ELEMENT_NODE)
  {
    return properties;
  }

  properties = node->properties;
  if (!properties)
  {
LABEL_7:
    doc = node->doc;
    if (doc)
    {
      intSubset = doc->intSubset;
      if (intSubset)
      {
        DtdAttrDesc = xmlGetDtdAttrDesc(intSubset, node->name, name);
        if (DtdAttrDesc || (extSubset = doc->extSubset) != 0 && (DtdAttrDesc = xmlGetDtdAttrDesc(extSubset, node->name, name)) != 0)
        {
          properties = DtdAttrDesc;
          if (DtdAttrDesc->defaultValue)
          {
            return properties;
          }
        }
      }
    }

    return 0;
  }

  while (!xmlStrEqual(properties->name, name))
  {
    properties = properties->next;
    if (!properties)
    {
      goto LABEL_7;
    }
  }

  return properties;
}

xmlChar *__cdecl xmlGetProp(const xmlNode *node, const xmlChar *name)
{
  result = xmlHasProp(node, name);
  if (result)
  {

    return xmlGetPropNodeValueInternal(result);
  }

  return result;
}

xmlChar *xmlGetPropNodeValueInternal(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 16)
  {
    v4 = *(a1 + 88);

    return xmlStrdup(v4);
  }

  if (v2 != 2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_14;
  }

  if (!*(v3 + 48) && (*(v3 + 8) - 3) <= 1)
  {
    v4 = *(v3 + 80);

    return xmlStrdup(v4);
  }

  result = xmlNodeListGetStringInternal(*(a1 + 64));
  if (!result)
  {
LABEL_14:
    v4 = "";

    return xmlStrdup(v4);
  }

  return result;
}

const xmlChar *__cdecl xmlParseStartTag(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 60)
  {
    return 0;
  }

  atts = ctxt->atts;
  maxatts = ctxt->maxatts;
  ++input->col;
  input->cur = cur + 1;
  if (!cur[1])
  {
    xmlParserInputGrow(input, 250);
  }

  v6 = xmlParseName(ctxt);
  if (!v6)
  {
    xmlFatalErrMsg(ctxt, 68, "xmlParseStartTag: invalid element name\n");
    return v6;
  }

  xmlSkipBlankChars(ctxt);
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  LODWORD(v7) = 0;
  value = 0;
  while (1)
  {
    v8 = ctxt->input;
    v9 = v8->cur;
    v10 = *v9;
    if (v10 == 47)
    {
      if (v9[1] == 62)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v10 == 62)
      {
        goto LABEL_63;
      }

      v11 = v10 - 9 < 2 || v10 == 13;
      if (!v11 && v10 < 0x20)
      {
        goto LABEL_63;
      }
    }

    if (ctxt->instate == XML_PARSER_EOF)
    {
      goto LABEL_63;
    }

    consumed_low = LODWORD(v8->consumed);
    v13 = xmlParseAttribute(ctxt, &value);
    v14 = value;
    if (v13 && value)
    {
      if (v7 < 1)
      {
        if (!atts)
        {
          v16 = malloc_type_malloc(0xB0uLL, 0x10040436913F5uLL);
          if (!v16)
          {
            xmlErrMemory(ctxt, 0);
            free(v14);
            atts = 0;
            maxatts = 22;
            goto LABEL_39;
          }

          v17 = 22;
          goto LABEL_37;
        }

LABEL_29:
        if (v7 + 4 <= maxatts)
        {
          goto LABEL_38;
        }

        if (!(maxatts >> 27))
        {
          v17 = 2 * maxatts;
          v16 = malloc_type_realloc(atts, (16 * maxatts), 0x50040EE9192B6uLL);
          if (!v16)
          {
            xmlErrMemory(ctxt, 0);
            free(v14);
            maxatts *= 2;
            goto LABEL_39;
          }

LABEL_37:
          ctxt->atts = v16;
          ctxt->maxatts = v17;
          atts = v16;
          maxatts = v17;
LABEL_38:
          v18 = &atts[v7];
          *v18 = v13;
          v18[1] = value;
          v7 = v7 + 2;
          atts[v7] = 0;
          v18[3] = 0;
          goto LABEL_39;
        }

        xmlErrMemory(ctxt, 0);
      }

      else
      {
        v15 = 0;
        while (!xmlStrEqual(atts[v15], v13))
        {
          v15 += 2;
          if (v7 <= v15)
          {
            goto LABEL_29;
          }
        }

        xmlErrAttributeDup(ctxt, 0, v13);
      }
    }

    else if (!value)
    {
      goto LABEL_39;
    }

    free(v14);
LABEL_39:
    v19 = ctxt->input;
    if (!ctxt->progressive && v19->end - v19->cur <= 249)
    {
      xmlGROW(ctxt);
      v19 = ctxt->input;
    }

    v20 = v19->cur;
    v21 = *v20;
    if (v21 == 47)
    {
      if (v20[1] == 62)
      {
        goto LABEL_63;
      }
    }

    else if (v21 == 62)
    {
      goto LABEL_63;
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "attributes construct error\n");
    }

    v22 = ctxt->input;
    if (consumed_low == v22->consumed && !v13 && v9 == v22->cur && !value)
    {
      break;
    }

    if (!ctxt->progressive)
    {
      v23 = v22->cur;
      if (v23 - v22->base < 501 || v22->end - v23 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
      {
        if (ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
        }
      }
    }
  }

  xmlFatalErrMsg(ctxt, 1, "xmlParseStartTag: problem parsing attributes\n");
LABEL_63:
  if (ctxt->sax && (startElement = ctxt->sax->startElement) != 0 && !ctxt->disableSAX)
  {
    userData = ctxt->userData;
    if (v7 >= 1)
    {
      (startElement)(userData, v6, atts);
      goto LABEL_68;
    }

    (startElement)(userData, v6, 0);
  }

  else
  {
LABEL_68:
    if (atts && v7 >= 2)
    {
      v26 = 1;
      do
      {
        v27 = atts[v26];
        if (v27)
        {
          free(v27);
        }

        v26 += 2;
      }

      while (v26 < v7);
    }
  }

  return v6;
}

void xmlFreeDoc(xmlDocPtr cur)
{
  if (!cur)
  {
    return;
  }

  dict = cur->dict;
  if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
  {
    v3 = __xmlDeregisterNodeDefaultValue();
    (*v3)(cur);
  }

  ids = cur->ids;
  if (ids)
  {
    xmlFreeIDTable(ids);
  }

  cur->ids = 0;
  refs = cur->refs;
  if (refs)
  {
    xmlFreeRefTable(refs);
  }

  cur->refs = 0;
  intSubset = cur->intSubset;
  extSubset = cur->extSubset;
  if (extSubset && intSubset != extSubset)
  {
    xmlUnlinkNode(cur->extSubset);
    cur->extSubset = 0;
    xmlFreeDtd(extSubset);
  }

  if (intSubset)
  {
    xmlUnlinkNode(cur->intSubset);
    cur->intSubset = 0;
    xmlFreeDtd(intSubset);
  }

  children = cur->children;
  if (children)
  {
    xmlFreeNodeList(children);
  }

  oldNs = cur->oldNs;
  if (oldNs)
  {
    do
    {
      next = oldNs->next;
      xmlFreeNs(oldNs);
      oldNs = next;
    }

    while (next);
  }

  version = cur->version;
  if (version)
  {
    if (dict)
    {
      if (xmlDictOwns(dict, version))
      {
        goto LABEL_23;
      }

      version = cur->version;
    }

    free(version);
  }

LABEL_23:
  name = cur->name;
  if (!name)
  {
    goto LABEL_28;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, name))
    {
      goto LABEL_28;
    }

    name = cur->name;
  }

  free(name);
LABEL_28:
  encoding = cur->encoding;
  if (!encoding)
  {
    goto LABEL_33;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, encoding))
    {
      goto LABEL_33;
    }

    encoding = cur->encoding;
  }

  free(encoding);
LABEL_33:
  URL = cur->URL;
  if (!URL)
  {
    goto LABEL_39;
  }

  if (!dict)
  {
LABEL_38:
    free(URL);
LABEL_39:
    free(cur);
    if (!dict)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!xmlDictOwns(dict, URL))
  {
    URL = cur->URL;
    goto LABEL_38;
  }

  free(cur);
LABEL_40:

  xmlDictFree(dict);
}

void xmlFreeNodeList(xmlNodePtr cur)
{
  if (cur)
  {
    next = cur;
    if (cur->type == XML_NAMESPACE_DECL)
    {
      do
      {
        v2 = next->_private;
        xmlFreeNs(next);
        next = v2;
      }

      while (v2);
      return;
    }

    doc = cur->doc;
    if (doc)
    {
      dict = doc->dict;
    }

    else
    {
      dict = 0;
    }

    v5 = 0;
    while (1)
    {
      children = next->children;
      if (children)
      {
        while (1)
        {
          v7 = children;
          type = next->type;
          v9 = type > 0x15;
          v10 = (1 << type) & 0x206220;
          if (!v9 && v10 != 0)
          {
            break;
          }

          ++v5;
          children = v7->children;
          next = v7;
          if (!children)
          {
            goto LABEL_18;
          }
        }
      }

      v7 = next;
LABEL_18:
      parent = v7->parent;
      next = v7->next;
      v13 = v7->type;
      if (v13 > 13)
      {
        if (v13 == 14)
        {
          goto LABEL_56;
        }

        if (v13 != 21)
        {
          goto LABEL_27;
        }
      }

      else if (v13 != 9 && v13 != 13)
      {
LABEL_27:
        if (__xmlRegisterCallbacks)
        {
          if (*__xmlDeregisterNodeDefaultValue())
          {
            v15 = __xmlDeregisterNodeDefaultValue();
            (*v15)(v7);
          }

          v13 = v7->type;
        }

        if (v13 <= 0x14 && ((1 << v13) & 0x180002) != 0)
        {
          properties = v7->properties;
          if (properties)
          {
            do
            {
              v17 = properties->next;
              xmlFreeProp(properties);
              properties = v17;
            }

            while (v17);
            v13 = v7->type;
          }
        }

        if (v13 <= 0x14 && ((1 << v13) & 0x180022) != 0)
        {
LABEL_40:
          v9 = v13 > 0x14;
          v19 = (1 << v13) & 0x180002;
          if (!v9 && v19 != 0)
          {
            nsDef = v7->nsDef;
            if (nsDef)
            {
              do
              {
                v22 = nsDef->next;
                xmlFreeNs(nsDef);
                nsDef = v22;
              }

              while (v22);
            }
          }

          name = v7->name;
          if (name)
          {
            v24 = v7->type;
            if (v24 != XML_TEXT_NODE && v24 != XML_COMMENT_NODE)
            {
              if (!dict)
              {
                goto LABEL_54;
              }

              if (!xmlDictOwns(dict, name))
              {
                name = v7->name;
LABEL_54:
                free(name);
              }
            }
          }

          free(v7);
          goto LABEL_56;
        }

        content = v7->content;
        if (content != &v7->properties && content != 0)
        {
          if (!dict)
          {
            goto LABEL_67;
          }

          if (!xmlDictOwns(dict, content))
          {
            content = v7->content;
LABEL_67:
            free(content);
          }
        }

        v13 = v7->type;
        goto LABEL_40;
      }

      xmlFreeDoc(v7);
LABEL_56:
      if (!next)
      {
        if (!v5 || !parent)
        {
          return;
        }

        --v5;
        parent->children = 0;
        next = parent;
      }
    }
  }
}

int xmlDictOwns(xmlDictPtr dict, const xmlChar *str)
{
  if (str)
  {
    while (dict)
    {
      v2 = *(dict + 4);
      if (v2)
      {
        while (v2 + 5 > str || v2[1] < str)
        {
          v2 = *v2;
          if (!v2)
          {
            goto LABEL_7;
          }
        }

        LODWORD(dict) = 1;
        return dict;
      }

LABEL_7:
      dict = *(dict + 5);
      if (!dict)
      {
        return dict;
      }
    }
  }

  LODWORD(dict) = -1;
  return dict;
}

void xmlFreeProp(xmlAttrPtr cur)
{
  if (!cur)
  {
    return;
  }

  doc = cur->doc;
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
  {
    v4 = __xmlDeregisterNodeDefaultValue();
    (*v4)(cur);
  }

  v5 = cur->doc;
  if (v5 && (cur->atype & 0x87FFFFFF) == 2)
  {
    xmlRemoveID(v5, cur);
  }

  children = cur->children;
  if (children)
  {
    xmlFreeNodeList(children);
  }

  name = cur->name;
  if (name)
  {
    if (!dict)
    {
LABEL_18:
      free(name);
      goto LABEL_19;
    }

    if (!xmlDictOwns(dict, name))
    {
      name = cur->name;
      goto LABEL_18;
    }
  }

LABEL_19:

  free(cur);
}

void xmlDictFree(xmlDictPtr dict)
{
  if (dict)
  {
    v2 = xmlDictMutex;
    if (xmlDictMutex || (pthread_once(&once_control_0, _xmlInitializeDictMutex), (v2 = xmlDictMutex) != 0))
    {
      xmlRMutexLock(v2);
      v3 = (*dict)--;
      xmlRMutexUnlock(xmlDictMutex);
      if (v3 <= 1)
      {
        v4 = *(dict + 5);
        if (v4)
        {
          xmlDictFree(v4);
        }

        v5 = *(dict + 1);
        if (v5)
        {
          v6 = *(dict + 2);
          if (v6)
          {
            v7 = 0;
            v8 = *(dict + 6);
            while (1)
            {
              v5 = *(dict + 1);
              if (!v8)
              {
                break;
              }

              v9 = &v5[32 * v7];
              if (*(v9 + 5))
              {
                v10 = v5 == 0;
              }

              else
              {
                v10 = 1;
              }

              if (!v10)
              {
                v11 = 0;
                do
                {
                  v12 = *v9;
                  if (v11)
                  {
                    free(v9);
                    v8 = *(dict + 6);
                  }

                  *(dict + 6) = --v8;
                  v11 = 1;
                  v9 = v12;
                }

                while (v12);
                v6 = *(dict + 2);
              }

              if (++v7 >= v6)
              {
                v5 = *(dict + 1);
                break;
              }
            }
          }

          free(v5);
        }

        v13 = *(dict + 4);
        if (v13)
        {
          do
          {
            v14 = *v13;
            free(v13);
            v13 = v14;
          }

          while (v14);
        }

        free(dict);
      }
    }
  }
}

uint64_t xmlBufResize(uint64_t result, unint64_t a2)
{
  if (result)
  {
    v2 = result;
    if (!*(result + 56))
    {
      v3 = *(result + 40);
      v4 = *(result + 12);
      if (v4 <= 0x7FFFFFFE && v3 != v4)
      {
        *(result + 40) = v4;
        v3 = v4;
      }

      v6 = *(result + 32);
      v7 = *(result + 8);
      if (v7 <= 0x7FFFFFFE && v6 != v7)
      {
        *(result + 32) = v7;
        v6 = v7;
      }

      v9 = *(result + 16);
      if (v9 != 2)
      {
        if (a2 >= 0x989680 && v9 == 5)
        {
          v10 = "buffer error: text too long\n";
          goto LABEL_17;
        }

        if (v3 > a2)
        {
          return 1;
        }

        if (v9 <= 2)
        {
          if (v9)
          {
            if (v9 == 1)
            {
              if (a2 >= 0xFFFFFFFFFFFFFFF6)
              {
                v11 = -1;
              }

              else
              {
                v11 = a2 + 10;
              }

              goto LABEL_52;
            }

            goto LABEL_38;
          }

          goto LABEL_30;
        }

        if (v9 != 4)
        {
          if (v9 != 3)
          {
LABEL_38:
            if (a2 >= 0xFFFFFFFFFFFFFFF6)
            {
              v11 = -1;
            }

            else
            {
              v11 = a2 + 10;
            }

            goto LABEL_41;
          }

LABEL_30:
          v12 = a2 + 10;
          if (a2 >= 0xFFFFFFFFFFFFFFF6)
          {
            v12 = -1;
          }

          if (v3)
          {
            v11 = v3;
          }

          else
          {
            v11 = v12;
          }

          while (v11 < a2)
          {
            if ((v11 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            v11 *= 2;
          }

LABEL_41:
          if (v9 == 3)
          {
            v13 = *(result + 24);
            if (v13)
            {
              v14 = *v2 - v13;
              if (v14 > v11)
              {
                memmove(v13, *v2, v6);
                v15 = *(v2 + 24);
LABEL_63:
                *v2 = v15;
                *(v2 + 40) = v11;
                v15[*(v2 + 32)] = 0;
                v19 = vdupq_n_s64(0x7FFFFFFFuLL);
                *(v2 + 8) = vmovn_s64(vbslq_s8(vcgtq_u64(v19, *(v2 + 32)), *(v2 + 32), v19));
                return 1;
              }

              v18 = malloc_type_realloc(v13, v14 + v11, 0x100004077774924uLL);
              if (v18)
              {
                *(v2 + 24) = v18;
                v15 = &v18[v14];
                goto LABEL_63;
              }

LABEL_65:
              v10 = "growing buffer";
LABEL_17:
              __xmlSimpleError(0x1Du, 2, 0, 0, v10);
              if (!*(v2 + 56))
              {
                result = 0;
                *(v2 + 56) = 2;
                return result;
              }

              return 0;
            }
          }

          goto LABEL_52;
        }

        if (v6 < 0x1000)
        {
          v11 = a2;
          goto LABEL_52;
        }

        v11 = v3;
        if (v3 >= a2)
        {
LABEL_52:
          if (!*v2)
          {
            v16 = malloc_type_malloc(v11, 0x100004077774924uLL);
LABEL_56:
            v15 = v16;
            if (!v16)
            {
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          if (v3 - v6 <= 0x63)
          {
            v16 = malloc_type_realloc(*v2, v11, 0x100004077774924uLL);
            goto LABEL_56;
          }

          v17 = malloc_type_malloc(v11, 0x100004077774924uLL);
          if (v17)
          {
            v15 = v17;
            memcpy(v17, *v2, *(v2 + 32));
            free(*v2);
            goto LABEL_63;
          }

          goto LABEL_65;
        }

        v11 = v3;
        while ((v11 & 0x8000000000000000) == 0)
        {
          v11 *= 2;
          if (v11 >= a2)
          {
            goto LABEL_41;
          }
        }

LABEL_60:
        xmlBufMemoryError(result, "growing buffer");
      }
    }

    return 0;
  }

  return result;
}

void xmlFreeParserCtxt(xmlParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    while (1)
    {
      v2 = inputPop(ctxt);
      if (!v2)
      {
        break;
      }

      xmlFreeInputStream(v2);
    }

    spaceTab = ctxt->spaceTab;
    if (spaceTab)
    {
      free(spaceTab);
    }

    nameTab = ctxt->nameTab;
    if (nameTab)
    {
      free(nameTab);
    }

    nodeTab = ctxt->nodeTab;
    if (nodeTab)
    {
      free(nodeTab);
    }

    nodeInfoTab = ctxt->nodeInfoTab;
    if (nodeInfoTab)
    {
      free(nodeInfoTab);
    }

    inputTab = ctxt->inputTab;
    if (inputTab)
    {
      free(inputTab);
    }

    version = ctxt->version;
    if (version)
    {
      free(version);
    }

    encoding = ctxt->encoding;
    if (encoding)
    {
      free(encoding);
    }

    extSubURI = ctxt->extSubURI;
    if (extSubURI)
    {
      free(extSubURI);
    }

    extSubSystem = ctxt->extSubSystem;
    if (extSubSystem)
    {
      free(extSubSystem);
    }

    if (ctxt->sax)
    {
      sax = ctxt->sax;
      if (sax != __xmlDefaultSAXHandler())
      {
        free(ctxt->sax);
      }
    }

    directory = ctxt->directory;
    if (directory)
    {
      free(directory);
    }

    v14 = ctxt->vctxt.nodeTab;
    if (v14)
    {
      free(v14);
    }

    atts = ctxt->atts;
    if (atts)
    {
      free(atts);
    }

    dict = ctxt->dict;
    if (dict)
    {
      xmlDictFree(dict);
    }

    nsTab = ctxt->nsTab;
    if (nsTab)
    {
      free(nsTab);
    }

    pushTab = ctxt->pushTab;
    if (pushTab)
    {
      free(pushTab);
    }

    attallocs = ctxt->attallocs;
    if (attallocs)
    {
      free(attallocs);
    }

    attsDefault = ctxt->attsDefault;
    if (attsDefault)
    {
      xmlHashFree(attsDefault, xmlHashDefaultDeallocator);
    }

    attsSpecial = ctxt->attsSpecial;
    if (attsSpecial)
    {
      xmlHashFree(attsSpecial, 0);
    }

    freeElems = ctxt->freeElems;
    if (freeElems)
    {
      do
      {
        next = freeElems->next;
        free(freeElems);
        freeElems = next;
      }

      while (next);
    }

    freeAttrs = ctxt->freeAttrs;
    if (freeAttrs)
    {
      do
      {
        v25 = freeAttrs->next;
        free(freeAttrs);
        freeAttrs = v25;
      }

      while (v25);
    }

    message = ctxt->lastError.message;
    if (message)
    {
      free(message);
    }

    file = ctxt->lastError.file;
    if (file)
    {
      free(file);
    }

    str1 = ctxt->lastError.str1;
    if (str1)
    {
      free(str1);
    }

    str2 = ctxt->lastError.str2;
    if (str2)
    {
      free(str2);
    }

    str3 = ctxt->lastError.str3;
    if (str3)
    {
      free(str3);
    }

    catalogs = ctxt->catalogs;
    if (catalogs)
    {
      xmlCatalogFreeLocal(catalogs);
    }

    free(ctxt);
  }
}

void xmlBufFree(_DWORD *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[4];
  if (v2 != 3)
  {
    v3 = *a1;
    if (v2 == 2 || v3 == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v3 = *(a1 + 3);
  if (v3 || (v3 = *a1) != 0)
  {
LABEL_11:
    free(v3);
  }

LABEL_12:

  free(a1);
}

void xmlFreeParserInputBuffer(xmlParserInputBufferPtr in)
{
  if (in)
  {
    raw = in->raw;
    if (raw)
    {
      xmlBufFree(raw);
      in->raw = 0;
    }

    encoder = in->encoder;
    if (encoder)
    {
      xmlCharEncCloseFunc(encoder);
    }

    closecallback = in->closecallback;
    if (closecallback)
    {
      (closecallback)(in->context);
    }

    buffer = in->buffer;
    if (buffer)
    {
      xmlBufFree(buffer);
    }

    free(in);
  }
}

void xmlFreeInputStream(xmlParserInputPtr input)
{
  if (input)
  {
    filename = input->filename;
    if (filename)
    {
      ::free(filename);
    }

    directory = input->directory;
    if (directory)
    {
      ::free(directory);
    }

    encoding = input->encoding;
    if (encoding)
    {
      ::free(encoding);
    }

    version = input->version;
    if (version)
    {
      ::free(version);
    }

    free = input->free;
    if (free && input->base)
    {
      free();
    }

    if (input->buf)
    {
      xmlFreeParserInputBuffer(input->buf);
    }

    ::free(input);
  }
}

xmlChar *__cdecl xmlNodeGetContent(const xmlNode *cur)
{
  if (!cur)
  {
    return 0;
  }

  type = cur->type;
  if (type > XML_COMMENT_NODE)
  {
    if (type <= XML_NOTATION_NODE)
    {
      if (type != XML_DOCUMENT_NODE)
      {
        if (type != XML_DOCUMENT_FRAG_NODE)
        {
          return 0;
        }

LABEL_20:
        Size = xmlBufCreateSize(64);
        if (!Size)
        {
          return 0;
        }

        goto LABEL_25;
      }
    }

    else if (type != XML_HTML_DOCUMENT_NODE)
    {
      if (type == XML_NAMESPACE_DECL)
      {
        name = cur->name;
        goto LABEL_28;
      }

      if (type != XML_DOCB_DOCUMENT_NODE)
      {
        return 0;
      }
    }

LABEL_24:
    Size = xmlBufCreate();
    if (!Size)
    {
      return 0;
    }

LABEL_25:
    v6 = Size;
    xmlBufGetNodeContent(Size, cur);
    v7 = xmlBufDetach(v6);
    xmlBufFree(v6);
    return v7;
  }

  if (type <= XML_CDATA_SECTION_NODE)
  {
    if (type - 3 >= 2)
    {
      if (type != XML_ELEMENT_NODE)
      {
        if (type == XML_ATTRIBUTE_NODE)
        {

          return xmlGetPropNodeValueInternal(cur);
        }

        return 0;
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (type - 7 >= 2)
  {
    if (type != XML_ENTITY_REF_NODE || !xmlGetDocEntity(cur->doc, cur->name))
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_16:
  name = cur->content;
  if (!name)
  {
    return 0;
  }

LABEL_28:

  return xmlStrdup(name);
}

uint64_t xmlBufCat(uint64x2_t *a1, const xmlChar *a2)
{
  if (!a1 || a1[3].i32[2])
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1->u32[3];
  if (v3 <= 0x7FFFFFFE && a1[2].i64[1] != v3)
  {
    a1[2].i64[1] = v3;
  }

  v5 = a1->u32[2];
  if (v5 <= 0x7FFFFFFE && a1[2].i64[0] != v5)
  {
    a1[2].i64[0] = v5;
  }

  if (!a2 || a1[1].i32[0] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return xmlBufAdd(a1, a2, 0xFFFFFFFFuLL);
  }
}

int xmlBufGetNodeContent(xmlBufPtr buf, const xmlNode *cur)
{
  result = -1;
  if (!buf || !cur)
  {
    return result;
  }

  result = 0;
  type = cur->type;
  if (type > XML_COMMENT_NODE)
  {
    if (type <= XML_NOTATION_NODE)
    {
      if (type != XML_DOCUMENT_NODE)
      {
        if (type != XML_DOCUMENT_FRAG_NODE)
        {
          return result;
        }

        goto LABEL_27;
      }
    }

    else if (type != XML_HTML_DOCUMENT_NODE)
    {
      if (type == XML_NAMESPACE_DECL)
      {
        v6 = 16;
        goto LABEL_52;
      }

      if (type != XML_DOCB_DOCUMENT_NODE)
      {
        return result;
      }
    }

    for (i = cur->children; i; i = i->next)
    {
      v16 = i->type;
      v17 = v16 > 4;
      v18 = (1 << v16) & 0x1A;
      if (!v17 && v18 != 0)
      {
        xmlBufGetNodeContent(buf, i);
      }
    }

    return 0;
  }

  v6 = 80;
  if (type > XML_CDATA_SECTION_NODE)
  {
    if (type - 7 >= 2)
    {
      if (type != XML_ENTITY_REF_NODE)
      {
        return result;
      }

      DocEntity = xmlGetDocEntity(cur->doc, cur->name);
      if (!DocEntity)
      {
        return -1;
      }

      children = DocEntity->children;
      if (children)
      {
        do
        {
          xmlBufGetNodeContent(buf, children);
          result = 0;
          children = children->next;
        }

        while (children);
        return result;
      }

      return 0;
    }

LABEL_52:
    xmlBufCat(buf, *(&cur->_private + v6));
    return 0;
  }

  if (type - 3 < 2)
  {
    goto LABEL_52;
  }

  if (type == XML_ELEMENT_NODE)
  {
LABEL_27:
    next = cur;
    while (1)
    {
      do
      {
        v11 = next;
        v12 = next->type;
        if (v12 - 3 >= 2)
        {
          if (v12 == XML_ENTITY_REF_NODE)
          {
            xmlBufGetNodeContent(buf, v11);
          }
        }

        else
        {
          content = v11->content;
          if (content)
          {
            xmlBufCat(buf, content);
          }
        }

        next = v11->children;
      }

      while (next && next->type != XML_ENTITY_DECL);
      if (v11 == cur)
      {
        break;
      }

      while (1)
      {
        next = v11->next;
        if (next)
        {
          break;
        }

        v11 = v11->parent;
        if (v11)
        {
          v14 = v11 == cur;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (type != XML_ATTRIBUTE_NODE)
  {
    return result;
  }

  v7 = cur->children;
  if (!v7)
  {
    return 0;
  }

  do
  {
    if (v7->type == XML_TEXT_NODE)
    {
      xmlBufCat(buf, v7->content);
    }

    else
    {
      xmlBufGetNodeContent(buf, v7);
    }

    result = 0;
    v7 = v7->next;
  }

  while (v7);
  return result;
}

int xmlParseChunk(xmlParserCtxtPtr ctxt, const char *chunk, int size, int terminate)
{
  if (!ctxt)
  {
    return 1;
  }

  if (ctxt->wellFormed != 1 && ctxt->disableSAX == 1)
  {
    return ctxt->errNo;
  }

  instate = ctxt->instate;
  if (instate != XML_PARSER_EOF)
  {
    if (instate == XML_PARSER_START)
    {
      xmlDetectSAX2(ctxt);
    }

    if (!chunk || size < 1 || terminate)
    {
      v54 = 0;
    }

    else
    {
      v54 = chunk[size - 1] == 13;
      size -= v54;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (size >= 1)
      {
        if (chunk)
        {
          input = ctxt->input;
          if (input)
          {
            if (input->buf)
            {
              break;
            }
          }
        }
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_44;
      }

      v21 = ctxt->input;
      if (v21)
      {
        buf = v21->buf;
        if (v21->buf)
        {
          if (*(buf + 24))
          {
            v23 = *(buf + 32);
            if (v23)
            {
              if (*(buf + 40))
              {
                InputBase = xmlBufGetInputBase(v23, v21);
                v25 = ctxt->input->cur - ctxt->input->base;
                v26 = xmlCharEncInput(buf, terminate);
                xmlBufSetInputBaseCur(*(buf + 32), &ctxt->input->buf, InputBase, v25);
                if (v26 < 0)
                {
                  v52 = *__xmlGenericError();
                  v53 = __xmlGenericErrorContext();
                  v52(*v53, "xmlParseChunk: encoder error\n");
                  xmlHaltParser(ctxt);
                  return 81;
                }
              }
            }
          }

LABEL_44:
          v31 = ctxt->input;
          if (v31)
          {
            v32 = v31->buf;
            if (v32)
            {
              v9 = xmlBufUse(v32->buffer);
            }
          }
        }
      }

      if (terminate || v9 > 0x989680 || !v10 || !v9 || v9 - v10 < 0 || (base = ctxt->input->base) == 0 || (v34 = ctxt->instate, v34 != XML_PARSER_START_TAG) && v34 != XML_PARSER_END_TAG && (progressive = ctxt->progressive, progressive != 2) && v34 != XML_PARSER_CDATA_SECTION && progressive != 5 && v34 != XML_PARSER_DTD && progressive != 3 || memchr(&base[v10], 62, (v9 - v10) & 0x7FFFFFFF))
      {
        xmlParseTryOrFinish(ctxt, terminate);
      }

      v17 = 0;
      v20 = 1;
LABEL_57:
      if (ctxt->instate == XML_PARSER_EOF)
      {
        return ctxt->errNo;
      }

      v35 = ctxt->input;
      if (v35)
      {
        cur = v35->cur;
        if ((v35->end - cur > 10000000 || cur - v35->base > 10000000) && (ctxt->options & 0x80000) == 0)
        {
          xmlFatalErr(ctxt, 1, "Huge input lookup");
          xmlHaltParser(ctxt);
        }
      }

      if (ctxt->wellFormed != 1 && ctxt->disableSAX == 1)
      {
        return ctxt->errNo;
      }

      if (v20)
      {
        if (v54)
        {
          v38 = ctxt->input;
          if (v38)
          {
            if (v38->buf)
            {
              v39 = xmlBufGetInputBase(v38->buf->buffer, v38);
              v40 = ctxt->input;
              v41 = v40->cur - v40->base;
              xmlParserInputBufferPush(v40->buf, 1, "\r");
              xmlBufSetInputBaseCur(ctxt->input->buf->buffer, &ctxt->input->buf, v39, v41);
            }
          }
        }

        if (terminate)
        {
          v42 = ctxt->input;
          if (v42)
          {
            if (v42->buf)
            {
              v43 = xmlBufUse(v42->buf->buffer);
              v44 = ctxt->input;
              v45 = v44->cur;
              v46 = v44->base;
              length = v43 - v45;
            }

            else
            {
              length = v42->length;
              v46 = LODWORD(v42->base) - LODWORD(v42->cur);
            }

            v48 = length + v46;
          }

          else
          {
            v48 = 0;
          }

          v49 = ctxt->instate;
          if (v49 != XML_PARSER_EOF && v49 != XML_PARSER_EPILOG)
          {
            xmlFatalErr(ctxt, 5, 0);
            v49 = ctxt->instate;
          }

          if (v49 == XML_PARSER_EPILOG && v48 >= 1)
          {
            xmlFatalErr(ctxt, 5, 0);
            v49 = ctxt->instate;
          }

          if (v49 != XML_PARSER_EOF)
          {
            if (ctxt->sax)
            {
              endDocument = ctxt->sax->endDocument;
              if (endDocument)
              {
                (endDocument)(ctxt->userData);
              }
            }
          }

          ctxt->instate = XML_PARSER_EOF;
        }

        if (ctxt->wellFormed)
        {
          return 0;
        }

        return ctxt->errNo;
      }

      chunk += size;
      size = v17;
    }

    if (ctxt->instate != XML_PARSER_EOF)
    {
      v12 = xmlBufGetInputBase(input->buf->buffer, input);
      v13 = ctxt->input;
      v15 = v13->base;
      v14 = v13->cur;
      v10 = xmlBufUse(v13->buf->buffer);
      v16 = ctxt->input;
      if (ctxt->instate == XML_PARSER_START && v16->buf && (encoder = v16->buf->encoder) != 0)
      {
        if (xmlStrcasestr(*encoder, "UTF-16") || xmlStrcasestr(ctxt->input->buf->encoder->name, "UTF16"))
        {
          v28 = 90;
        }

        else if (xmlStrcasestr(ctxt->input->buf->encoder->name, "UCS-4") || xmlStrcasestr(ctxt->input->buf->encoder->name, "UCS4"))
        {
          v28 = 180;
        }

        else
        {
          v28 = 45;
        }

        v16 = ctxt->input;
        rawconsumed = v16->buf->rawconsumed;
        if (rawconsumed >= v28)
        {
          LODWORD(rawconsumed) = 0;
        }

        v30 = v28 - rawconsumed;
        if (size >= v30)
        {
          v17 = size - v30;
        }

        else
        {
          v17 = 0;
        }

        if (size >= v30)
        {
          size = v30;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v14 - v15;
      v19 = xmlParserInputBufferPush(v16->buf, size, chunk);
      xmlBufSetInputBaseCur(ctxt->input->buf->buffer, &ctxt->input->buf, v12, v18);
      if (v19 < 0)
      {
        instate = XML_PARSER_EOF;
        ctxt->errNo = -1;
        xmlHaltParser(ctxt);
        return instate;
      }

      if (v17)
      {
        xmlParseTryOrFinish(ctxt, 0);
        v20 = 0;
        goto LABEL_57;
      }
    }

    goto LABEL_44;
  }

  return instate;
}

unint64_t xmlBufGetInputBase(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 56))
    {
      return 0;
    }

    v4 = *(a1 + 40);
    v5 = *(a1 + 12);
    if (v5 <= 0x7FFFFFFE && v4 != v5)
    {
      *(a1 + 40) = v5;
      v4 = v5;
    }

    v7 = *(a1 + 8);
    if (v7 <= 0x7FFFFFFE && *(a1 + 32) != v7)
    {
      *(a1 + 32) = v7;
    }

    result = *(a2 + 24) - *a1;
    if (result > v4)
    {
      __xmlSimpleError(0x1Du, 7000, 0, 0, "Input reference outside of the buffer");
      if (*(a1 + 56))
      {
        return 0;
      }

      result = 0;
      *(a1 + 56) = 7000;
    }
  }

  return result;
}

uint64_t xmlBufSetInputBaseCur(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 && !*(a1 + 14))
  {
    v7 = *(a1 + 3);
    if (v7 <= 0x7FFFFFFE && a1[5] != v7)
    {
      a1[5] = v7;
    }

    v9 = a1[4];
    v10 = *(a1 + 2);
    if (v10 <= 0x7FFFFFFE && v9 != v10)
    {
      a1[4] = v10;
      v9 = v10;
    }

    v5 = 0;
    v11 = *a1;
    v12 = *a1 + a3;
    a2[3] = v12;
    a2[4] = v12 + a4;
    v4 = (v11 + v9);
    v6 = 5;
  }

  else
  {
    v4 = "";
    a2[4] = "";
    a2[5] = "";
    v5 = 0xFFFFFFFFLL;
    v6 = 3;
  }

  a2[v6] = v4;
  return v5;
}

void xmlParseTryOrFinish(uint64_t a1, int a2)
{
  v167 = *MEMORY[0x1E69E9840];
  v157 = 0;
  v2 = *(a1 + 56);
  if (!v2)
  {
    goto LABEL_351;
  }

  if ((*(v2 + 32) - *(v2 + 24)) > 4096)
  {
    xmlSHRINK(a1);
    *(a1 + 320) = 0;
  }

  v155 = 0;
  v156 = 0;
  xmlParseGetLasts(a1, &v156, &v155);
  v5 = *(a1 + 272);
  if (v5 == -1)
  {
    goto LABEL_351;
  }

  v6 = 0;
  while (2)
  {
    if (*(a1 + 24) != 1 && *(a1 + 332) == 1)
    {
      goto LABEL_351;
    }

    v7 = *(a1 + 56);
    if (!v7)
    {
      goto LABEL_351;
    }

    if (v7->buf)
    {
      if (v5)
      {
        raw = v7->buf->raw;
        if (raw)
        {
          IsEmpty = xmlBufIsEmpty(raw);
          v7 = *(a1 + 56);
          if (!IsEmpty)
          {
            InputBase = xmlBufGetInputBase(v7->buf->buffer, v7);
            v11 = *(a1 + 56);
            v12 = *(v11 + 32) - *(v11 + 24);
            xmlParserInputBufferPush(*v11, 0, "");
            xmlBufSetInputBaseCur(*(**(a1 + 56) + 32), *(a1 + 56), InputBase, v12);
            v7 = *(a1 + 56);
          }
        }
      }

      length = xmlBufUse(v7->buf->buffer);
      v7 = *(a1 + 56);
    }

    else
    {
      length = v7->length;
    }

    base = v7->base;
    cur = v7->cur;
    v16 = &base[length - cur];
    if (!v16)
    {
      goto LABEL_351;
    }

    v5 = *(a1 + 272);
    switch(v5)
    {
      case -1:
        goto LABEL_351;
      case 0:
        if (!*(a1 + 408))
        {
          *in = 0;
          if (v16 >= 4)
          {
            *in = *cur;
            v72 = xmlDetectCharEncoding(in, 4);
            xmlSwitchEncoding(a1, v72);
            goto LABEL_282;
          }

          goto LABEL_351;
        }

        if (v16 == 1)
        {
          goto LABEL_351;
        }

        if (*cur)
        {
          if (*cur == 60 && cur[1] == 63)
          {
            if (v16 < 5 || !a2 && (xmlParseLookupSequence(a1, 63, 62, 0) & 0x80000000) != 0)
            {
              goto LABEL_351;
            }

            if (*a1)
            {
              v17 = *(*a1 + 88);
              if (v17)
              {
                v18 = *(a1 + 8);
                v19 = __xmlDefaultSAXLocator();
                v17(v18, v19);
              }
            }

            v20 = *(*(a1 + 56) + 32);
            if (v20[2] == 120 && v20[3] == 109 && v20[4] == 108)
            {
              v21 = v20[5];
              if (v21 <= 0x20 && ((1 << v21) & 0x100002600) != 0)
              {
                xmlParseXMLDecl(a1);
                if (*(a1 + 136) == 32)
                {
                  xmlHaltParser(a1);
                  goto LABEL_351;
                }

                v22 = *(a1 + 56);
                *(a1 + 48) = *(v22 + 96);
                if (!*(a1 + 40))
                {
                  v23 = *(v22 + 80);
                  if (v23)
                  {
                    *(a1 + 40) = xmlStrdup(v23);
                  }
                }

                if (*a1)
                {
                  v24 = *(*a1 + 96);
                  if (v24)
                  {
                    if (!*(a1 + 332))
                    {
                      v24(*(a1 + 8));
                    }
                  }
                }

                v6 += 5;
LABEL_198:
                v5 = 1;
                goto LABEL_329;
              }
            }

            *(a1 + 32) = xmlCharStrdup("1.0");
          }

          else
          {
            if (*a1)
            {
              v86 = *(*a1 + 88);
              if (v86)
              {
                v87 = *(a1 + 8);
                v88 = __xmlDefaultSAXLocator();
                v86(v87, v88);
              }
            }

            v89 = xmlCharStrdup("1.0");
            *(a1 + 32) = v89;
            if (!v89)
            {
              xmlErrMemory(a1, 0);
              goto LABEL_282;
            }
          }

          if (*a1)
          {
            v90 = *(*a1 + 96);
            if (v90)
            {
              if (!*(a1 + 332))
              {
                v90(*(a1 + 8));
              }
            }
          }

          goto LABEL_198;
        }

        if (*a1)
        {
          v150 = *(*a1 + 88);
          if (v150)
          {
            v151 = *(a1 + 8);
            v152 = __xmlDefaultSAXLocator();
            v150(v151, v152);
          }
        }

LABEL_380:
        v143 = a1;
        v144 = 4;
        goto LABEL_381;
      case 1:
        xmlSkipBlankChars(a1);
        v54 = *(a1 + 56);
        if (*v54)
        {
          v55 = xmlBufUse(*(*v54 + 32));
          v54 = *(a1 + 56);
        }

        else
        {
          v55 = *(v54 + 48);
        }

        v73 = *(v54 + 32);
        v74 = v55 - v73 + *(v54 + 24);
        if (v74 < 2)
        {
          goto LABEL_351;
        }

        v75 = *v73;
        v76 = v73[1];
        if (v75 == 60 && v76 == 63)
        {
          if (a2 || (xmlParseLookupSequence(a1, 63, 62, 0) & 0x80000000) == 0)
          {
            xmlParsePI(a1);
            goto LABEL_145;
          }

          goto LABEL_376;
        }

        if (v75 != 60 || v76 != 33)
        {
          goto LABEL_280;
        }

        v77 = v73[2];
        if (v77 == 68)
        {
          if (v73[3] != 79 || v73[4] != 67 || v73[5] != 84 || v73[6] != 89 || v73[7] != 80 || v73[8] != 69)
          {
            goto LABEL_279;
          }

          if (!a2 && (xmlParseLookupSequence(a1, 62, 0, 0) & 0x80000000) != 0)
          {
            v149 = 3;
            goto LABEL_388;
          }

          *(a1 + 336) = 1;
          *(a1 + 452) = 0;
          *(a1 + 320) = 0;
          xmlParseDocTypeDecl(a1);
          if (*(a1 + 272) == -1)
          {
            goto LABEL_351;
          }

          if (**(*(a1 + 56) + 32) == 91)
          {
LABEL_120:
            v5 = 3;
          }

          else
          {
            *(a1 + 336) = 2;
            if (*a1)
            {
              if (!*(a1 + 332))
              {
                v116 = *(*a1 + 208);
                if (v116)
                {
                  v116(*(a1 + 8), *(a1 + 344), *(a1 + 360), *(a1 + 352));
                }
              }
            }

            *(a1 + 336) = 0;
            xmlCleanSpecialAttr(a1);
            v5 = 4;
          }

LABEL_329:
          *(a1 + 272) = v5;
          goto LABEL_330;
        }

        if (v77 != 45 || v73[3] != 45)
        {
LABEL_279:
          if (v74 < 9)
          {
            goto LABEL_351;
          }

LABEL_280:
          *(a1 + 272) = 6;
          *(a1 + 452) = 6;
          goto LABEL_281;
        }

        if (!a2 && (xmlParseLookupSequence(a1, 45, 45, 62) & 0x80000000) != 0)
        {
LABEL_387:
          v149 = 5;
          goto LABEL_388;
        }

        xmlParseComment(a1);
LABEL_145:
        if (*(a1 + 272) != -1)
        {
          v5 = 1;
          *(a1 + 272) = 1;
          *(a1 + 452) = 1;
          goto LABEL_147;
        }

LABEL_351:
        v130 = *MEMORY[0x1E69E9840];
        return;
      case 2:
        v47 = *__xmlGenericError();
        v48 = *__xmlGenericErrorContext();
        v49 = "PP: internal error, state == PI\n";
        goto LABEL_118;
      case 3:
        v29 = cur - base;
        if (cur - base < 0)
        {
          goto LABEL_351;
        }

        v30 = *(a1 + 320);
        if (v30 <= (v29 & 0x7FFFFFFF))
        {
          v31 = v29;
        }

        else
        {
          v31 = v30;
        }

        LODWORD(v32) = v31;
        v33 = xmlBufContent(v7->buf->buffer);
        v34 = xmlBufUse(*(**(a1 + 56) + 32));
        if (v34 <= v31)
        {
          goto LABEL_349;
        }

        v35 = 0;
        v36 = v33 + 2;
        while (2)
        {
          v37 = &v33[v32];
          v38 = *v37;
          if (v35)
          {
            if (*v37 == v35)
            {
              v35 = 0;
            }

            goto LABEL_86;
          }

          if (v34 > (v32 + 4) && v38 == 60)
          {
            if (v37[1] == 33 && v37[2] == 45 && v37[3] == 45)
            {
              if (v34 <= (v32 + 3))
              {
                goto LABEL_349;
              }

              v39 = v32;
              while (v33[v39] != 45 || v36[v39 - 1] != 45 || v36[v39] != 62)
              {
                LODWORD(v32) = v39 + 1;
                v40 = (v39++ + 4);
                if (v34 <= v40)
                {
                  goto LABEL_349;
                }
              }

              v35 = 0;
              LODWORD(v32) = v39 + 2;
            }

            else
            {
LABEL_85:
              v35 = 0;
            }

LABEL_86:
            v32 = (v32 + 1);
            if (v34 <= v32)
            {
              if (v35)
              {
                v129 = 0;
              }

              else
              {
LABEL_349:
                v129 = v32;
              }

              *(a1 + 320) = v129;
              goto LABEL_351;
            }

            continue;
          }

          break;
        }

        if (v38 == 34 || v38 == 39)
        {
          v35 = *v37;
          goto LABEL_86;
        }

        if (v38 != 93)
        {
          goto LABEL_85;
        }

        v41 = (v32 + 1);
        if (v34 <= v41)
        {
          goto LABEL_349;
        }

        if (v33[v41] == 93)
        {
          v35 = 0;
          LODWORD(v32) = v32 + 1;
          goto LABEL_86;
        }

        LODWORD(v42) = v32 + 1;
        while (1)
        {
          v43 = v33[v42];
          if (v43 > 0x3E)
          {
            goto LABEL_85;
          }

          if (((1 << v43) & 0x100002600) == 0)
          {
            break;
          }

          v42 = (v42 + 1);
          if (v34 <= v42)
          {
            goto LABEL_349;
          }
        }

        if (v43 != 62)
        {
          goto LABEL_85;
        }

        *(a1 + 320) = 0;
        xmlParseInternalSubset(a1);
        if (*(a1 + 272) == -1)
        {
          goto LABEL_351;
        }

        *(a1 + 336) = 2;
        if (*a1)
        {
          if (!*(a1 + 332))
          {
            v122 = *(*a1 + 208);
            if (v122)
            {
              v122(*(a1 + 8), *(a1 + 344), *(a1 + 360), *(a1 + 352));
            }
          }
        }

        *(a1 + 336) = 0;
        xmlCleanSpecialAttr(a1);
        if (*(a1 + 272) == -1)
        {
          goto LABEL_351;
        }

        v5 = 4;
        *(a1 + 272) = 4;
LABEL_147:
        *(a1 + 320) = 0;
LABEL_330:
        if (v5 == -1)
        {
          goto LABEL_351;
        }

        continue;
      case 4:
        xmlSkipBlankChars(a1);
        v63 = *(a1 + 56);
        if (*v63)
        {
          v64 = xmlBufUse(*(*v63 + 32));
          v63 = *(a1 + 56);
        }

        else
        {
          v64 = *(v63 + 48);
        }

        v78 = *(v63 + 32);
        v79 = v64 - v78 + *(v63 + 24);
        if (v79 < 2)
        {
          goto LABEL_351;
        }

        v80 = *v78;
        v81 = v78[1];
        if (v80 != 60 || v81 != 63)
        {
          if (v80 == 60 && v81 == 33)
          {
            if (v78[2] == 45 && v78[3] == 45)
            {
              if (!a2 && (xmlParseLookupSequence(a1, 45, 45, 62) & 0x80000000) != 0)
              {
                goto LABEL_387;
              }

              xmlParseComment(a1);
              goto LABEL_163;
            }

            if (v79 < 4)
            {
              goto LABEL_351;
            }
          }

          *(a1 + 272) = 6;
          if (!*(a1 + 452))
          {
            *(a1 + 452) = 6;
          }

LABEL_281:
          xmlParseGetLasts(a1, &v156, &v155);
LABEL_282:
          v5 = *(a1 + 272);
          goto LABEL_330;
        }

        if (a2 || (xmlParseLookupSequence(a1, 63, 62, 0) & 0x80000000) == 0)
        {
          xmlParsePI(a1);
LABEL_163:
          if (*(a1 + 272) == -1)
          {
            goto LABEL_351;
          }

          v5 = 4;
          goto LABEL_263;
        }

        goto LABEL_376;
      case 5:
        v47 = *__xmlGenericError();
        v48 = *__xmlGenericErrorContext();
        v49 = "PP: internal error, state == COMMENT\n";
        goto LABEL_118;
      case 6:
        *in = 0;
        v154 = 0;
        line = v7->line;
        v51 = *(a1 + 508);
        if (v16 == 1 && *(a1 + 64) == 1)
        {
          goto LABEL_351;
        }

        if (*cur != 60)
        {
          goto LABEL_380;
        }

        if (a2)
        {
          goto LABEL_224;
        }

        if (*(a1 + 452))
        {
          if (cur >= v155)
          {
            goto LABEL_351;
          }
        }

        else if ((xmlParseLookupSequence(a1, 62, 0, 0) & 0x80000000) != 0)
        {
          goto LABEL_351;
        }

LABEL_224:
        if (*(a1 + 376))
        {
          if (**(a1 + 368) == -2)
          {
            v97 = -1;
          }

          else
          {
            v97 = **(a1 + 368);
          }
        }

        else
        {
          v97 = -1;
        }

        spacePush(a1, v97);
        if (*(a1 + 504))
        {
          started = xmlParseStartTag2(a1, in, &v154, &v157);
        }

        else
        {
          started = xmlParseStartTag(a1);
        }

        v99 = started;
        if (*(a1 + 272) == -1)
        {
          goto LABEL_351;
        }

        if (started)
        {
          if (*(a1 + 156))
          {
            if (*(a1 + 24))
            {
              v100 = *(a1 + 16);
              if (v100)
              {
                v101 = *(a1 + 80);
                if (v101)
                {
                  if (v101 == v100->children)
                  {
                    *(a1 + 152) &= xmlValidateRoot((a1 + 160), v100);
                  }
                }
              }
            }
          }

          v102 = *(a1 + 56);
          v103 = v102->cur;
          v104 = *v103;
          if (v104 == 62)
          {
            xmlNextChar(a1);
          }

          else
          {
            if (v104 == 47 && v103[1] == 62)
            {
              v102->cur = v103 + 2;
              v102->col += 2;
              if (!v103[2])
              {
                xmlParserInputGrow(v102, 250);
              }

              v105 = *a1;
              if (*(a1 + 504))
              {
                if (v105)
                {
                  v106 = *(v105 + 240);
                  if (v106)
                  {
                    if (!*(a1 + 332))
                    {
                      v106(*(a1 + 8), v99, *in, v154);
                    }
                  }
                }

                v107 = *(a1 + 508) - v51;
                if (v107 >= 1)
                {
                  nsPop(a1, v107);
                }
              }

              else if (v105)
              {
                v117 = *(v105 + 120);
                if (v117)
                {
                  if (!*(a1 + 332))
                  {
                    v117(*(a1 + 8), v99);
                  }
                }
              }

              if (*(a1 + 272) == -1)
              {
                goto LABEL_351;
              }

              v118 = *(a1 + 376);
              if (v118 >= 1)
              {
                v119 = *(a1 + 384);
                v120 = v119 + 4 * v118 - 8;
                v121 = v118 - 1;
                *(a1 + 376) = v121;
                if (!v121)
                {
                  v120 = v119;
                }

                *(a1 + 368) = v120;
                *(v119 + 4 * v121) = -1;
              }

              if (*(a1 + 296))
              {
                v5 = 7;
              }

              else
              {
                v5 = 14;
              }

LABEL_263:
              *(a1 + 272) = v5;
              *(a1 + 452) = 1;
              goto LABEL_330;
            }

            xmlFatalErrMsgStr(a1, 73, "Couldn't find end of Start Tag %s\n", v99);
            v108 = *(a1 + 88);
            if (v108 >= 1)
            {
              v109 = *(a1 + 96);
              v110 = v108 - 1;
              *(a1 + 88) = v108 - 1;
              if (v108 == 1)
              {
                v111 = 0;
              }

              else
              {
                v111 = *(v109 + 8 * v108 - 16);
              }

              *(a1 + 80) = v111;
              *(v109 + 8 * v110) = 0;
            }

            v112 = *(a1 + 376);
            if (v112 >= 1)
            {
              v113 = *(a1 + 384);
              v114 = v113 + 4 * v112 - 8;
              v115 = v112 - 1;
              *(a1 + 376) = v115;
              if (!v115)
              {
                v114 = v113;
              }

              *(a1 + 368) = v114;
              *(v113 + 4 * v115) = -1;
            }
          }

          nameNsPush(a1, v99, *in, v154, line, *(a1 + 508) - v51);
          v5 = 7;
          goto LABEL_263;
        }

        v145 = *(a1 + 376);
        if (v145 >= 1)
        {
          v146 = *(a1 + 384);
          v147 = v146 + 4 * v145 - 8;
          v148 = v145 - 1;
          *(a1 + 376) = v148;
          if (!v148)
          {
            v147 = v146;
          }

          *(a1 + 368) = v147;
          *(v146 + 4 * v148) = -1;
        }

        goto LABEL_382;
      case 7:
        if (v16 == 1 && *(a1 + 64) == 1)
        {
          goto LABEL_351;
        }

        v44 = *cur;
        v45 = cur[1];
        consumed_low = LODWORD(v7->consumed);
        if (v44 == 60 && v45 == 47)
        {
          v5 = 9;
          goto LABEL_329;
        }

        if (v44 == 60 && v45 == 63)
        {
          if (a2 || (xmlParseLookupSequence(a1, 63, 62, 0) & 0x80000000) == 0)
          {
            xmlParsePI(a1);
LABEL_130:
            *(a1 + 272) = 7;
            *(a1 + 452) = 1;
LABEL_344:
            v128 = *(a1 + 56);
            if (consumed_low == *(v128 + 64) && cur == *(v128 + 32))
            {
              xmlFatalErr(a1, 1, "detected an error in element content\n");
              xmlHaltParser(a1);
            }

            goto LABEL_282;
          }

LABEL_376:
          v149 = 2;
LABEL_388:
          *(a1 + 452) = v149;
          goto LABEL_351;
        }

        if (v44 == 60 && v45 != 33)
        {
LABEL_124:
          v5 = 6;
          goto LABEL_329;
        }

        if (v44 == 60 && v45 == 33)
        {
          v91 = cur[2];
          if (v91 == 45)
          {
            if (cur[3] == 45)
            {
              if (v16 < 4)
              {
                goto LABEL_351;
              }

              v7->cur = cur + 4;
              v92 = xmlParseLookupSequence(a1, 45, 45, 62);
              *(*(a1 + 56) + 32) -= 4;
              if (!a2 && v92 < 0)
              {
                goto LABEL_387;
              }

              xmlParseComment(a1);
              goto LABEL_130;
            }

            goto LABEL_296;
          }
        }

        else
        {
          if (v44 != 60)
          {
            if (v44 == 38)
            {
              if (!a2 && (xmlParseLookupSequence(a1, 59, 0, 0) & 0x80000000) != 0)
              {
                goto LABEL_351;
              }

              xmlParseReference(a1);
              goto LABEL_344;
            }

            goto LABEL_336;
          }

          if (v45 != 33)
          {
LABEL_336:
            if (!a2 && v16 <= 0x12B && *(a1 + 64) == 1)
            {
              if (*(a1 + 452))
              {
                if (cur > v156)
                {
                  goto LABEL_351;
                }
              }

              else if ((xmlParseLookupSequence(a1, 60, 0, 0) & 0x80000000) != 0)
              {
                goto LABEL_351;
              }
            }

            *(a1 + 320) = 0;
            xmlParseCharData(a1, 0);
            goto LABEL_344;
          }

          v91 = cur[2];
        }

        if (v91 == 91 && cur[3] == 67 && cur[4] == 68 && cur[5] == 65 && cur[6] == 84 && cur[7] == 65 && cur[8] == 91)
        {
          v7->cur = cur + 9;
          v7->col += 9;
          if (!cur[9])
          {
            xmlParserInputGrow(v7, 250);
          }

          v5 = 8;
          goto LABEL_329;
        }

LABEL_296:
        if (v16 <= 8)
        {
          goto LABEL_351;
        }

        goto LABEL_336;
      case 8:
        v56 = xmlParseLookupSequence(a1, 93, 93, 62);
        if ((v56 & 0x80000000) != 0)
        {
          if (v16 < 0x12E)
          {
            goto LABEL_351;
          }

          v58 = *(a1 + 56);
          v131 = v58[4];
          v132 = xmlCheckCdataPush(v131, 300, 0);
          v133 = v132;
          if ((v132 & 0x80000000) == 0)
          {
            v134 = *a1;
            if (*a1)
            {
              if (!*(a1 + 332))
              {
                v135 = *(v134 + 200);
                if (v135 || (v135 = *(v134 + 136)) != 0)
                {
                  v135(*(a1 + 8), v131, v132);
                }
              }
            }

            if (*(a1 + 272) != -1)
            {
              v136 = *(a1 + 56);
              if (v133)
              {
                v137 = v136->cur;
                col = v136->col;
                do
                {
                  if (*v137 == 10)
                  {
                    ++v136->line;
                    col = 1;
                  }

                  else
                  {
                    ++col;
                  }

                  v136->col = col;
                  v136->cur = ++v137;
                  --v133;
                }

                while (v133);
              }

              else
              {
                v137 = v136->cur;
              }

              if (!*v137)
              {
                xmlParserInputGrow(v136, 250);
              }

              *(a1 + 320) = 0;
            }

            goto LABEL_351;
          }

          v139 = (v131 + -v132);
        }

        else
        {
          v57 = v56;
          v58 = *(a1 + 56);
          v59 = v58[4];
          v60 = xmlCheckCdataPush(v59, v56, 1);
          if (v60 == v57)
          {
            v61 = *a1;
            if (v57 || !v61)
            {
              if (v57 && v61 && !*(a1 + 332))
              {
                v71 = *(v61 + 200);
                if (v71)
                {
                  v71(*(a1 + 8), v59, v57);
                }

                else
                {
                  v123 = *(v61 + 136);
                  if (v123)
                  {
                    v123(*(a1 + 8), v59, v57);
                  }
                }
              }
            }

            else
            {
              v62 = *(v61 + 200);
              if (v62 && !*(a1 + 332) && v59 - v58[3] >= 9 && !strncmp((v59 - 9), "<![CDATA[", 9uLL))
              {
                v62(*(a1 + 8), "", 0);
              }
            }

            if (*(a1 + 272) == -1)
            {
              goto LABEL_351;
            }

            v124 = *(a1 + 56);
            v125 = v124->col;
            v126 = (v124->cur + 1);
            v127 = ((v57 + 2) & ~((v57 + 2) >> 31)) + 1;
            do
            {
              if (*(v126 - 1) == 10)
              {
                ++v124->line;
                v125 = 1;
              }

              else
              {
                ++v125;
              }

              v124->col = v125;
              v124->cur = v126++;
              --v127;
            }

            while (v127);
            if (!*(v126 - 1))
            {
              xmlParserInputGrow(v124, 250);
            }

            *(a1 + 320) = 0;
LABEL_328:
            v5 = 7;
            goto LABEL_329;
          }

          v139 = (v59 + -v60);
        }

        v58[4] = v139;
        if ((v58[5] - v139) > 3)
        {
          v165 = 0u;
          memset(v166, 0, sizeof(v166));
          v163 = 0u;
          v164 = 0u;
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          *in = 0u;
          snprintf(in, 0x95uLL, "Bytes: 0x%02X 0x%02X 0x%02X 0x%02X\n", *v139, v139[1], v139[2], v139[3]);
          v140 = "Input is not proper UTF-8, indicate encoding !\n%s";
          v142 = in;
          v141 = a1;
        }

        else
        {
          v140 = "Input is not proper UTF-8, indicate encoding !\n";
          v141 = a1;
          v142 = 0;
        }

        __xmlErrEncoding(v141, 9, v140, v142, 0);
        goto LABEL_351;
      case 9:
        if (v16 == 1)
        {
          goto LABEL_351;
        }

        if (a2)
        {
          goto LABEL_213;
        }

        if (*(a1 + 452))
        {
          if (cur >= v155)
          {
            goto LABEL_351;
          }
        }

        else if ((xmlParseLookupSequence(a1, 62, 0, 0) & 0x80000000) != 0)
        {
          goto LABEL_351;
        }

LABEL_213:
        if (*(a1 + 504))
        {
          xmlParseEndTag2(a1, (*(a1 + 536) + 24 * *(a1 + 296) - 24));
          v93 = *(a1 + 296);
          if (v93 >= 1)
          {
            v94 = *(a1 + 304);
            v95 = v93 - 1;
            *(a1 + 296) = v93 - 1;
            if (v93 == 1)
            {
              v96 = 0;
            }

            else
            {
              v96 = *(v94 + 8 * v93 - 16);
            }

            *(a1 + 288) = v96;
            *(v94 + 8 * v95) = 0;
          }
        }

        else
        {
          xmlParseEndTag1(a1);
        }

        if (*(a1 + 272) == -1)
        {
          goto LABEL_351;
        }

        if (*(a1 + 296))
        {
          goto LABEL_328;
        }

        v5 = 14;
        goto LABEL_329;
      case 10:
        v27 = *__xmlGenericError();
        v28 = *__xmlGenericErrorContext();
        v27(v28, "PP: internal error, state == ENTITY_DECL\n");
        goto LABEL_120;
      case 11:
        v47 = *__xmlGenericError();
        v48 = *__xmlGenericErrorContext();
        v49 = "PP: internal error, state == ENTITY_VALUE\n";
LABEL_118:
        v47(v48, v49);
        goto LABEL_328;
      case 12:
        v52 = *__xmlGenericError();
        v53 = *__xmlGenericErrorContext();
        v52(v53, "PP: internal error, state == ATTRIBUTE_VALUE\n");
        goto LABEL_124;
      case 13:
        v25 = *__xmlGenericError();
        v26 = *__xmlGenericErrorContext();
        v25(v26, "PP: internal error, state == SYSTEM_LITERAL\n");
        goto LABEL_124;
      case 14:
        xmlSkipBlankChars(a1);
        v67 = *(a1 + 56);
        if (*v67)
        {
          v68 = xmlBufUse(*(*v67 + 32));
          v67 = *(a1 + 56);
        }

        else
        {
          v68 = *(v67 + 48);
        }

        v82 = *(v67 + 32);
        v83 = v68 - v82 + *(v67 + 24);
        if (v83 < 2)
        {
          goto LABEL_351;
        }

        v84 = *v82;
        v85 = v82[1];
        if (v84 == 60 && v85 == 63)
        {
          if (!a2 && (xmlParseLookupSequence(a1, 63, 62, 0) & 0x80000000) != 0)
          {
            goto LABEL_376;
          }

          xmlParsePI(a1);
LABEL_186:
          if (*(a1 + 272) == -1)
          {
            goto LABEL_351;
          }

          v5 = 14;
          goto LABEL_263;
        }

        if (v84 == 60 && v85 == 33)
        {
          if (v82[2] == 45 && v82[3] == 45)
          {
            if (!a2 && (xmlParseLookupSequence(a1, 45, 45, 62) & 0x80000000) != 0)
            {
              goto LABEL_387;
            }

            xmlParseComment(a1);
            goto LABEL_186;
          }

          if (v83 < 4)
          {
            goto LABEL_351;
          }
        }

        v143 = a1;
        v144 = 5;
LABEL_381:
        xmlFatalErr(v143, v144, 0);
LABEL_382:
        xmlHaltParser(a1);
        if (*a1)
        {
          v153 = *(*a1 + 104);
          if (v153)
          {
            v153(*(a1 + 8));
          }
        }

        goto LABEL_351;
      case 15:
        v65 = *__xmlGenericError();
        v66 = *__xmlGenericErrorContext();
        v65(v66, "PP: internal error, state == IGNORE");
        goto LABEL_120;
      case 16:
        v69 = *__xmlGenericError();
        v70 = *__xmlGenericErrorContext();
        v69(v70, "PP: internal error, state == PUBLIC_LITERAL\n");
        goto LABEL_124;
      default:
        goto LABEL_330;
    }
  }
}

uint64_t xmlParse3986URIReference(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    xmlCleanURI(a1);
    v36 = a2;
    if ((*a2 & 0xDFu) - 65 > 0x19)
    {
      goto LABEL_68;
    }

    for (i = 0; ; ++i)
    {
      v5 = a2[i + 1];
      if (v5 - 48 >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A && (v5 > 0x2E || ((1 << v5) & 0x680000000000) == 0))
      {
        break;
      }
    }

    if (a1)
    {
      if (*a1)
      {
        free(*a1);
      }

      *a1 = xmlStrndup(a2, i + 1);
      v5 = a2[i + 1];
    }

    if (v5 != 58)
    {
      goto LABEL_68;
    }

    v10 = &a2[i + 2];
    v9 = *v10;
    v37 = v10;
    if (v9 == 47)
    {
      if (a2[i + 3] == 47)
      {
        v37 = &a2[i + 4];
        if (xmlParse3986Authority(a1, &v37))
        {
          goto LABEL_68;
        }

        if (!*(a1 + 24))
        {
          *(a1 + 40) = -1;
        }

        if (xmlParse3986PathAbEmpty(a1, &v37))
        {
          goto LABEL_68;
        }
      }

      else if (xmlParse3986PathAbsolute(a1, &v37))
      {
        goto LABEL_68;
      }

      v10 = v37;
      goto LABEL_60;
    }

    if ((v9 - 48) >= 0xA && (v9 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v11 = (v9 - 33);
      if (v11 > 0x3E)
      {
        goto LABEL_52;
      }

      if (((1 << (v9 - 33)) & 0x4000000096003FE9) != 0)
      {
        goto LABEL_31;
      }

      if (v11 == 4)
      {
        if ((a2[i + 3] - 48) >= 0xAu && ((v17 = a2[i + 3] - 65, v17 > 0x25) || ((1 << v17) & 0x3F0000003FLL) == 0) || (a2[i + 4] - 48) >= 0xAu && ((v18 = a2[i + 4] - 65, v18 > 0x25) || ((1 << v18) & 0x3F0000003FLL) == 0))
        {
LABEL_53:
          if (a1)
          {
            v19 = *(a1 + 48);
            if (v19)
            {
              free(v19);
            }

            *(a1 + 48) = 0;
          }

LABEL_60:
          v36 = v10;
          v20 = *v10;
          if (v20 == 63)
          {
            v36 = v10 + 1;
            if (xmlParse3986Query(a1, &v36))
            {
              goto LABEL_68;
            }

            v10 = v36;
            v20 = *v36;
          }

          if (v20 == 35)
          {
            v36 = v10 + 1;
            if (xmlParse3986Fragment(a1, &v36))
            {
              goto LABEL_68;
            }

            v20 = *v36;
          }

          if (!v20)
          {
            return 0;
          }

          xmlCleanURI(a1);
LABEL_68:
          xmlCleanURI(a1);
          v37 = a2;
          v21 = *a2;
          if (v21 == 47)
          {
            if (a2[1] == 47)
            {
              v37 = a2 + 2;
              v8 = xmlParse3986Authority(a1, &v37);
              if (v8)
              {
LABEL_119:
                xmlCleanURI(a1);
                return v8;
              }

              if (!xmlParse3986PathAbEmpty(a1, &v37))
              {
LABEL_109:
                v33 = v37;
                v34 = *v37;
                if (v34 == 63)
                {
                  ++v37;
                  if (xmlParse3986Query(a1, &v37))
                  {
LABEL_114:
                    v8 = 0xFFFFFFFFLL;
                    goto LABEL_119;
                  }

                  v33 = v37;
                  v34 = *v37;
                }

                if (v34 == 35)
                {
                  v37 = v33 + 1;
                  if (xmlParse3986Fragment(a1, &v37))
                  {
                    goto LABEL_114;
                  }

                  v34 = *v37;
                }

                if (v34)
                {
                  xmlCleanURI(a1);
                  goto LABEL_118;
                }

                return 0;
              }
            }

            else if (!xmlParse3986PathAbsolute(a1, &v37))
            {
              goto LABEL_109;
            }

LABEL_118:
            v8 = 1;
            goto LABEL_119;
          }

          if ((v21 - 48) < 0xA || (v21 & 0xFFFFFFDF) - 65 < 0x1A)
          {
LABEL_80:
            v38 = a2;
            v24 = 58;
            for (j = 0; !xmlParse3986Segment(&v38, v24, j); j = 1)
            {
              v26 = v38;
              if (*v38 != 47)
              {
                if (a1)
                {
                  v27 = *(a1 + 48);
                  if (v27)
                  {
                    free(v27);
                  }

                  if (v26 == a2)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v28 = v26 - a2;
                    if ((*(a1 + 72) & 2) != 0)
                    {
                      v29 = xmlStrndup(a2, v28);
                    }

                    else
                    {
                      v29 = xmlURIUnescapeString(a2, v28, 0);
                    }
                  }

                  *(a1 + 48) = v29;
                }

                v37 = v26;
                goto LABEL_109;
              }

              ++v38;
              v24 = 0;
            }

            goto LABEL_118;
          }

          v23 = (v21 - 33);
          if (v23 > 0x3E)
          {
            goto LABEL_101;
          }

          if (((1 << (v21 - 33)) & 0x4000000096003FE9) != 0)
          {
            goto LABEL_80;
          }

          if (v23 == 4)
          {
            if ((a2[1] - 48) < 0xAu || (v30 = a2[1] - 65, v30 <= 0x25) && ((1 << v30) & 0x3F0000003FLL) != 0)
            {
              if ((a2[2] - 48) < 0xAu)
              {
                goto LABEL_80;
              }

              v31 = a2[2] - 65;
              if (v31 <= 0x25 && ((1 << v31) & 0x3F0000003FLL) != 0)
              {
                goto LABEL_80;
              }
            }
          }

          else
          {
LABEL_101:
            if (v21 == 126)
            {
              goto LABEL_80;
            }
          }

          if (a1)
          {
            v32 = *(a1 + 48);
            if (v32)
            {
              free(v32);
            }

            *(a1 + 48) = 0;
          }

          goto LABEL_109;
        }
      }

      else
      {
LABEL_52:
        if (v9 != 126)
        {
          goto LABEL_53;
        }
      }
    }

LABEL_31:
    v38 = &a2[i + 2];
    for (k = 0; !xmlParse3986Segment(&v38, 0, k); k = 1)
    {
      v13 = v38;
      if (*v38 != 47)
      {
        if (a1)
        {
          v14 = *(a1 + 48);
          if (v14)
          {
            free(v14);
          }

          if (v10 == v13)
          {
            v16 = 0;
          }

          else
          {
            v15 = v13 + -2 - a2 - i;
            if ((*(a1 + 72) & 2) != 0)
            {
              v16 = xmlStrndup(&a2[i + 2], v15);
            }

            else
            {
              v16 = xmlURIUnescapeString(&a2[i + 2], v15, 0);
            }
          }

          *(a1 + 48) = v16;
        }

        v10 = v13;
        goto LABEL_60;
      }

      ++v38;
    }

    goto LABEL_68;
  }

  return 0xFFFFFFFFLL;
}

xmlURIPtr xmlParseURI(const char *str)
{
  if (!str)
  {
    return 0;
  }

  URI = xmlCreateURI();
  v3 = URI;
  if (URI && xmlParse3986URIReference(URI, str))
  {
    xmlFreeURI(v3);
    return 0;
  }

  return v3;
}

uint64_t xmlParseGetLasts(uint64_t result, void *a2, void *a3)
{
  if (!a2 || !a3)
  {
    v16 = *__xmlGenericError();
    v13 = *__xmlGenericErrorContext();

    return (v16)(v13, "Internal error: xmlParseGetLasts\n");
  }

  if (!*(result + 452) || *(result + 64) != 1)
  {
LABEL_27:
    *a2 = 0;
    goto LABEL_28;
  }

  v3 = *(result + 56);
  v4 = *(v3 + 24);
  v5 = (*(v3 + 40) - 1);
  do
  {
    if (v5 < v4)
    {
      goto LABEL_27;
    }

    v6 = *v5--;
  }

  while (v6 != 60);
  *a2 = v5 + 1;
  v7 = *(result + 56);
  v8 = *(v7 + 40);
  v9 = v5 + 2;
  while (v9 < v8)
  {
    v10 = *v9;
    switch(v10)
    {
      case '""':
        v12 = v9 + 1;
        do
        {
          v9 = v12;
          if (v12 >= v8)
          {
            break;
          }

          ++v12;
        }

        while (*v9 != 34);
LABEL_21:
        if (v9 < v8)
        {
          ++v9;
        }

        break;
      case '\'':
        v11 = v9 + 1;
        do
        {
          v9 = v11;
          if (v11 >= v8)
          {
            break;
          }

          ++v11;
        }

        while (*v9 != 39);
        goto LABEL_21;
      case '>':
        *a3 = v9;
        return result;
      default:
        ++v9;
        break;
    }
  }

  v14 = *(v7 + 24);
  while (v5 >= v14)
  {
    v15 = *v5--;
    if (v15 == 62)
    {
      *a3 = v5 + 1;
      return result;
    }
  }

LABEL_28:
  *a3 = 0;
  return result;
}

void xmlCleanURI(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    *a1 = 0;
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
    }

    *(a1 + 24) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 32) = 0;
    v5 = *(a1 + 48);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 48) = 0;
    v6 = *(a1 + 64);
    if (v6)
    {
      free(v6);
    }

    *(a1 + 64) = 0;
    v7 = *(a1 + 8);
    if (v7)
    {
      free(v7);
    }

    *(a1 + 8) = 0;
    v8 = *(a1 + 16);
    if (v8)
    {
      free(v8);
    }

    *(a1 + 16) = 0;
    v9 = *(a1 + 56);
    if (v9)
    {
      free(v9);
    }

    *(a1 + 56) = 0;
    v10 = *(a1 + 80);
    if (v10)
    {
      free(v10);
    }

    *(a1 + 80) = 0;
  }
}

uint64_t xmlParseLookupSequence(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 24);
  v6 = *(v4 + 32) - v5;
  if ((v6 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 320) <= (v6 & 0x7FFFFFFF))
  {
    v11 = *(v4 + 32) - v5;
  }

  else
  {
    v11 = *(a1 + 320);
  }

  if (*v4)
  {
    v5 = xmlBufContent(*(*v4 + 32));
    v12 = xmlBufUse(*(*v4 + 32));
  }

  else
  {
    v12 = *(v4 + 48);
  }

  if (a3)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    v13 = -2;
  }

  v14 = v12 + v13;
  v15 = v11;
  if (v11 >= v14)
  {
LABEL_25:
    *(a1 + 320) = v15;
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (v5[v15] != a2)
    {
      v16 = v15 + 1;
      goto LABEL_23;
    }

    if (!a4)
    {
      break;
    }

    v16 = v15 + 1;
    if (v5[v15 + 1] == a3 && v5[v15 + 2] == a4)
    {
      goto LABEL_27;
    }

LABEL_23:
    v15 = v16;
    if (v16 == v14)
    {
      v15 = v14;
      goto LABEL_25;
    }
  }

  if (a3)
  {
    v16 = v15 + 1;
    if (v5[v15 + 1] != a3)
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  *(a1 + 320) = 0;
  return (v15 + *(v4 + 24) - *(v4 + 32));
}

xmlDocPtr htmlDoRead(xmlParserCtxt *a1, const xmlChar *a2, const char *a3, int options, int a5)
{
  htmlCtxtUseOptions(a1, options);
  a1->html = 1;
  if (a3)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(a3);
    if (CharEncodingHandler)
    {
      if (xmlSwitchToEncoding(a1, CharEncodingHandler) < 0)
      {
        if (a1->errNo)
        {
          errNo = a1->errNo;
        }

        else
        {
          errNo = 6003;
        }

        htmlParseErr(a1, errNo, "htmlCheckEncoding: error switching to encoding '%s'\n", a3, 0);
        if (!a2)
        {
          goto LABEL_15;
        }

        goto LABEL_8;
      }

      encoding = a1->input->encoding;
      if (encoding)
      {
        free(encoding);
      }

      a1->input->encoding = xmlStrdup(a3);
    }
  }

  if (!a2)
  {
    goto LABEL_15;
  }

LABEL_8:
  input = a1->input;
  if (input && !input->filename)
  {
    a1->input->filename = xmlStrdup(a2);
  }

LABEL_15:
  htmlParseDocument(a1);
  myDoc = a1->myDoc;
  a1->myDoc = 0;
  if (!a5)
  {
    if (a1->dictNames && myDoc && myDoc->dict == a1->dict)
    {
      a1->dict = 0;
    }

    xmlFreeParserCtxt(a1);
  }

  return myDoc;
}

xmlChar *__cdecl xmlPathToURI(const xmlChar *path)
{
  if (!path)
  {
    return 0;
  }

  v2 = xmlParseURI(path);
  if (!v2)
  {
    v4 = xmlCanonicPath(path);
    if (v4)
    {
      v5 = v4;
      memset(&v7.fragment, 0, 24);
      memset(&v7, 0, 48);
      *&v7.path = v4;
      v6 = xmlSaveUri(&v7);
      free(v5);
      return v6;
    }

    return 0;
  }

  xmlFreeURI(v2);

  return xmlStrdup(path);
}

int htmlCtxtUseOptions(htmlParserCtxtPtr ctxt, int options)
{
  if (!ctxt)
  {
    return -1;
  }

  if (htmlParserNeedsNoBlankQuirk_hasEvaluatedQuirk != -1)
  {
    htmlCtxtUseOptions_cold_1();
  }

  if (htmlParserNeedsNoBlankQuirk_needsQuirk)
  {
    v4 = options | 0x100;
  }

  else
  {
    v4 = options;
  }

  if ((v4 & 0x40) == 0)
  {
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    sax = ctxt->sax;
    ctxt->vctxt.error = 0;
    sax->error = 0;
    sax->fatalError = 0;
    v4 -= 32;
    ctxt->options |= 0x20u;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

  ctxt->sax->warning = 0;
  ctxt->vctxt.warning = 0;
  v4 -= 64;
  ctxt->options |= 0x40u;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    v5 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v4 -= 128;
  ctxt->options |= 0x80u;
  v5 = 1;
LABEL_15:
  ctxt->pedantic = v5;
  if ((v4 & 0x100) != 0)
  {
    v8 = 0;
    ctxt->sax->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
    v4 -= 256;
    ctxt->options |= 0x100u;
  }

  else
  {
    v8 = 1;
  }

  ctxt->keepBlanks = v8;
  result = v4 & 0xFFFFFFFE;
  ctxt->recovery = v4 & 1;
  if ((v4 & 0x10000) != 0)
  {
    ctxt->options |= 0x10000u;
    result -= 0x10000;
    if ((result & 0x80000) == 0)
    {
LABEL_20:
      if ((result & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x80000) == 0)
  {
    goto LABEL_20;
  }

  ctxt->options |= 0x80000u;
  result -= 0x80000;
  if ((result & 4) == 0)
  {
LABEL_21:
    if ((result & 0x200000) == 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    ctxt->options |= 0x200000u;
    result -= 0x200000;
    if ((result & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_27:
  ctxt->options |= 4u;
  result -= 4;
  if ((result & 0x200000) != 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((result & 0x2000) != 0)
  {
LABEL_23:
    ctxt->options |= 0x2000u;
    result -= 0x2000;
  }

LABEL_24:
  ctxt->dictNames = 0;
  return result;
}

void xmlFreeURI(xmlURIPtr uri)
{
  if (uri)
  {
    scheme = uri->scheme;
    if (scheme)
    {
      free(scheme);
    }

    server = uri->server;
    if (server)
    {
      free(server);
    }

    user = uri->user;
    if (user)
    {
      free(user);
    }

    path = uri->path;
    if (path)
    {
      free(path);
    }

    fragment = uri->fragment;
    if (fragment)
    {
      free(fragment);
    }

    opaque = uri->opaque;
    if (opaque)
    {
      free(opaque);
    }

    authority = uri->authority;
    if (authority)
    {
      free(authority);
    }

    query = uri->query;
    if (query)
    {
      free(query);
    }

    query_raw = uri->query_raw;
    if (query_raw)
    {
      free(query_raw);
    }

    free(uri);
  }
}

xmlURIPtr xmlCreateURI(void)
{
  v0 = malloc_type_malloc(0x58uLL, 0x101004099DA6428uLL);
  v1 = v0;
  if (v0)
  {
    v0->query_raw = 0;
    *&v0->path = 0u;
    *&v0->fragment = 0u;
    *&v0->authority = 0u;
    *&v0->user = 0u;
    *&v0->scheme = 0u;
  }

  else
  {
    xmlURIErrMemory("creating URI structure\n");
  }

  return v1;
}

uint64_t __htmlParserNeedsNoBlankQuirk_block_invoke()
{
  result = _dyld_get_image_name(0);
  if (result && (result = strrchr(result, 47)) != 0 && (result = strcmp((result + 1), "TaxCut.real"), !result))
  {
    result = dyld_get_program_sdk_version();
    v1 = result >> 8 < 0xA09;
  }

  else
  {
    v1 = 0;
  }

  htmlParserNeedsNoBlankQuirk_needsQuirk = v1;
  return result;
}

xmlCharEncodingHandlerPtr xmlFindCharEncodingHandler(const char *name)
{
  while (1)
  {
    v1 = name;
    v26 = *MEMORY[0x1E69E9840];
    if (handlers)
    {
      if (!name)
      {
        goto LABEL_27;
      }
    }

    else
    {
      xmlInitCharEncodingHandlers();
      if (!v1)
      {
        goto LABEL_27;
      }
    }

    if (!*v1)
    {
LABEL_27:
      v8 = 0;
      goto LABEL_28;
    }

    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    *__s1 = 0u;
    v20 = 0u;
    EncodingAlias = xmlGetEncodingAlias(v1);
    v3 = 0;
    v4 = EncodingAlias ? EncodingAlias : v1;
    do
    {
      v5 = __toupper(v4[v3]);
      __s1[v3] = v5;
      if (!v5)
      {
        break;
      }

      ++v3;
    }

    while (v3 != 99);
    __s1[v3] = 0;
    v6 = handlers;
    if (handlers)
    {
      v7 = nbCharEncodingHandler;
      if (nbCharEncodingHandler >= 1)
      {
        break;
      }
    }

LABEL_15:
    v9 = openIcuConverter(v4, 1);
    v10 = openIcuConverter(v4, 0);
    v11 = v10;
    if (v9 && v10)
    {
      v12 = malloc_type_malloc(0x28uLL, 0xB00404F2A4B7BuLL);
      v8 = v12;
      if (v12)
      {
        v12->uconv_out = 0;
        *&v12->name = 0u;
        *&v12->output = 0u;
        v12->name = strdup(v4);
        v8->input = 0;
        v8->output = 0;
        v8->uconv_in = v9;
        v8->uconv_out = v11;
      }

      else
      {
        closeIcuConverter(v9);
        closeIcuConverter(v11);
      }

      goto LABEL_28;
    }

    if (v9 | v10)
    {
      closeIcuConverter(v9);
      closeIcuConverter(v11);
      __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 1, 3, 0, 0, v4, 0, 0, 0, 0, "ICU converter : problems with filters for '%s'\n", v4);
    }

    v13 = xmlParseCharEncoding(v1);
    if (v13 == XML_CHAR_ENCODING_ERROR)
    {
      goto LABEL_27;
    }

    CharEncodingName = xmlGetCharEncodingName(v13);
    if (!CharEncodingName)
    {
      goto LABEL_27;
    }

    v15 = CharEncodingName;
    if (!strcmp(v4, CharEncodingName))
    {
      goto LABEL_27;
    }

    v16 = *MEMORY[0x1E69E9840];
    name = v15;
  }

  while (1)
  {
    v8 = *v6;
    if (!strcmp(__s1, **v6))
    {
      break;
    }

    ++v6;
    if (!--v7)
    {
      goto LABEL_15;
    }
  }

LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t xmlParse3986Authority(uint64_t a1, const xmlChar **a2)
{
  v4 = *a2;
  v5 = *a2;
  while (1)
  {
    v6 = *v5;
    if ((v6 - 48) < 0xA || (v6 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      goto LABEL_9;
    }

    v8 = (v6 - 33);
    if (v8 > 0x3E)
    {
      goto LABEL_21;
    }

    if (((1 << (v6 - 33)) & 0x4000000016003FE9) != 0)
    {
      goto LABEL_9;
    }

    if (v8 != 4)
    {
      break;
    }

    if ((v5[1] - 48) >= 0xAu)
    {
      v9 = v5[1] - 65;
      if (v9 > 0x25 || ((1 << v9) & 0x3F0000003FLL) == 0)
      {
        goto LABEL_32;
      }
    }

    if ((v5[2] - 48) >= 0xAu)
    {
      v10 = v5[2] - 65;
      if (v10 > 0x25 || ((1 << v10) & 0x3F0000003FLL) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_9:
    if (v6 == 37)
    {
      v5 += 3;
    }

    else
    {
      ++v5;
    }
  }

  if (v8 != 31)
  {
LABEL_21:
    if (v6 != 126)
    {
      goto LABEL_32;
    }

    goto LABEL_9;
  }

  if (!a1)
  {
    goto LABEL_30;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    free(v11);
  }

  v12 = v5 - v4;
  v13 = (*(a1 + 72) & 2) != 0 ? xmlStrndup(v4, v12) : xmlURIUnescapeString(v4, v12, 0);
  *(a1 + 32) = v13;
  if (*v5 != 64)
  {
    v4 = *a2;
  }

  else
  {
LABEL_30:
    v4 = v5 + 1;
  }

LABEL_32:
  v34 = v4;
  v14 = *v4;
  if (v14 == 91)
  {
    v15 = (v4 + 1);
    while (1)
    {
      v17 = *v15++;
      v16 = v17;
      if (!v17)
      {
        return 1;
      }

      if (v16 == 93)
      {
        v34 = v15;
        goto LABEL_64;
      }
    }
  }

  if (v14 - 48 > 9 || xmlParse3986DecOctet(&v34) || *v34 != 46 || (++v34, xmlParse3986DecOctet(&v34)) || *v34 != 46 || xmlParse3986DecOctet(&v34) || *v34 != 46 || xmlParse3986DecOctet(&v34))
  {
    for (i = v4; ; v14 = *i)
    {
      if (v14 - 48 < 0xA || (v14 & 0xDF) - 65 < 0x1A)
      {
        goto LABEL_50;
      }

      v19 = v14 - 33;
      if (v19 > 0x3E)
      {
        goto LABEL_62;
      }

      if (((1 << (v14 - 33)) & 0x4000000014003FE9) != 0)
      {
        goto LABEL_50;
      }

      if (v19 == 4)
      {
        if ((i[1] - 48) >= 0xAu && ((v20 = i[1] - 65, v20 > 0x25) || ((1 << v20) & 0x3F0000003FLL) == 0) || (i[2] - 48) >= 0xAu && ((v21 = i[2] - 65, v21 > 0x25) || ((1 << v21) & 0x3F0000003FLL) == 0))
        {
LABEL_63:
          v34 = i;
          break;
        }
      }

      else
      {
LABEL_62:
        if (v14 != 126)
        {
          goto LABEL_63;
        }
      }

LABEL_50:
      if (v14 == 37)
      {
        i += 3;
      }

      else
      {
        ++i;
      }
    }
  }

LABEL_64:
  if (a1)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      free(v22);
    }

    *(a1 + 16) = 0;
    v23 = *(a1 + 24);
    if (v23)
    {
      free(v23);
    }

    v24 = v34;
    if (v34 == v4)
    {
      *(a1 + 24) = 0;
    }

    else
    {
      v25 = v34 - v4;
      if ((*(a1 + 72) & 2) != 0)
      {
        v26 = xmlStrndup(v4, v25);
      }

      else
      {
        v26 = xmlURIUnescapeString(v4, v25, 0);
      }

      *(a1 + 24) = v26;
    }
  }

  else
  {
    v24 = v34;
  }

  if (*v24 == 58)
  {
    v28 = *++v24;
    v27 = v28;
    if ((v28 - 48) <= 9)
    {
      v29 = 0;
      while (v29 <= 214748364)
      {
        v30 = (v27 - 48);
        v31 = 10 * v29;
        if (v31 > (v30 ^ 0x7FFFFFFF))
        {
          break;
        }

        v29 = v31 + v30;
        v32 = *++v24;
        v27 = v32;
        if ((v32 - 48) >= 0xA)
        {
          if (a1)
          {
            *(a1 + 40) = v29;
          }

          goto LABEL_84;
        }
      }
    }

    return 1;
  }

LABEL_84:
  result = 0;
  *a2 = v24;
  return result;
}

char *__cdecl xmlURIUnescapeString(const char *str, int len, char *target)
{
  if (!str)
  {
    return 0;
  }

  v4 = len;
  v5 = str;
  if (len <= 0)
  {
    v4 = strlen(str);
    if ((v4 & 0x80000000) != 0)
    {
      return 0;
    }
  }

  if (target || (target = malloc_type_malloc(v4 + 1, 0x100004077774924uLL)) != 0)
  {
    v6 = target;
    if (v4)
    {
      v6 = target;
      do
      {
        v7 = *v5;
        if (v4 >= 3 && v7 == 37 && ((v8 = *(v5 + 1), (v8 - 48) < 0xA) || ((v8 & 0xDF) - 71) >= 0xFAu) && ((v9 = *(v5 + 2), (v9 - 48) < 0xA) || ((v9 & 0xDF) - 71) >= 0xFAu))
        {
          v10 = (v8 - 48);
          v11 = v8 - 97;
          if ((v8 - 65) <= 5)
          {
            v12 = v8 - 55;
          }

          else
          {
            v12 = 0;
          }

          v13 = v8 - 87;
          if (v11 > 5)
          {
            v13 = v12;
          }

          if (v10 > 9)
          {
            LOBYTE(v10) = v13;
          }

          v14 = (v9 - 48);
          v15 = v9 - 97;
          v16 = v9 - 65;
          v17 = v9 + 16 * v10;
          if (v16 <= 5)
          {
            v18 = v17 - 55;
          }

          else
          {
            v18 = v10;
          }

          v19 = v17 - 87;
          if (v15 > 5)
          {
            v19 = v18;
          }

          v20 = v14 | (16 * v10);
          if (v14 > 9)
          {
            v20 = v19;
          }

          v5 += 3;
          *v6 = v20;
          v4 -= 3;
        }

        else
        {
          ++v5;
          *v6 = v7;
          --v4;
        }

        ++v6;
      }

      while (v4);
    }

    *v6 = 0;
  }

  else
  {
    xmlURIErrMemory("unescaping URI value\n");
  }

  return target;
}

void *openIcuConverter(uint64_t a1, int a2)
{
  v3 = malloc_type_malloc(0x820uLL, 0x1030040634791EDuLL);
  if (v3)
  {
    if (linkedOnOrAfterFall2022OSVersions())
    {
      v3[258] = v3 + 2;
      v3[259] = v3 + 2;
    }

    *v3 = ucnv_open();
    if (a2)
    {
      ucnv_setToUCallBack();
    }

    else
    {
      ucnv_setFromUCallBack();
    }

    v3[1] = ucnv_open();
  }

  return v3;
}

uint64_t linkedOnOrAfterFall2022OSVersions()
{
  if (linkedOnOrAfterFall2022OSVersions_once != -1)
  {
    linkedOnOrAfterFall2022OSVersions_cold_1();
  }

  return linkedOnOrAfterFall2022OSVersions_result;
}

uint64_t xmlParse3986PathAbEmpty(uint64_t a1, const xmlChar **a2)
{
  v4 = *a2;
  v11 = *a2;
  while (1)
  {
    v5 = v11;
    if (*v11 != 47)
    {
      break;
    }

    ++v11;
    v6 = 1;
    if (xmlParse3986Segment(&v11, 0, 1))
    {
      return v6;
    }
  }

  if (a1)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      free(v7);
      v4 = *a2;
    }

    if (v4 == v5)
    {
      v9 = 0;
    }

    else
    {
      v8 = v5 - v4;
      if ((*(a1 + 72) & 2) != 0)
      {
        v9 = xmlStrndup(v4, v8);
      }

      else
      {
        v9 = xmlURIUnescapeString(v4, v8, 0);
      }
    }

    *(a1 + 48) = v9;
  }

  v6 = 0;
  *a2 = v5;
  return v6;
}

BOOL xmlParse3986Segment(unsigned __int8 **a1, unsigned __int8 a2, int a3)
{
  v3 = *a1;
  v4 = **a1;
  if ((v4 - 48) < 0xA || (v4 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    goto LABEL_8;
  }

  v6 = (v4 - 33);
  if (v6 > 0x3E)
  {
    goto LABEL_42;
  }

  if (((1 << (v4 - 33)) & 0x4000000096003FE9) != 0)
  {
    goto LABEL_8;
  }

  if (v6 != 4)
  {
LABEL_42:
    if (v4 == 126)
    {
      goto LABEL_8;
    }

    return a3 == 0;
  }

  if ((v3[1] - 48) >= 0xAu)
  {
    v12 = v3[1] - 65;
    v13 = v12 > 0x25;
    v14 = (1 << v12) & 0x3F0000003FLL;
    if (v13 || v14 == 0)
    {
      return a3 == 0;
    }
  }

  if ((v3[2] - 48) >= 0xAu)
  {
    v16 = v3[2] - 65;
    v13 = v16 > 0x25;
    v17 = (1 << v16) & 0x3F0000003FLL;
    if (v13 || v17 == 0)
    {
      return a3 == 0;
    }
  }

  while (1)
  {
LABEL_8:
    if ((v4 - 48) < 0xA || (v4 & 0xDFu) - 65 < 0x1A)
    {
      goto LABEL_12;
    }

    v7 = (v4 - 33);
    if (v7 > 0x3E)
    {
      goto LABEL_26;
    }

    if (((1 << (v4 - 33)) & 0x4000000096003FE9) != 0)
    {
      goto LABEL_12;
    }

    if (v7 != 4)
    {
LABEL_26:
      if (v4 != 126)
      {
        break;
      }

LABEL_12:
      if (v4 == a2)
      {
        break;
      }

      goto LABEL_13;
    }

    if ((v3[1] - 48) >= 0xAu)
    {
      v8 = v3[1] - 65;
      if (v8 > 0x25 || ((1 << v8) & 0x3F0000003FLL) == 0)
      {
        break;
      }
    }

    v9 = v3[2];
    if ((v9 - 48) < 0xA || (v9 - 97) < 6)
    {
      goto LABEL_12;
    }

    if (a2 == 37 || (v9 - 71) < 0xFFFFFFFA)
    {
      break;
    }

LABEL_13:
    if (v4 == 37)
    {
      v3 += 3;
    }

    else
    {
      ++v3;
    }

    v4 = *v3;
  }

  v10 = 0;
  *a1 = v3;
  return v10;
}

uint64_t nsPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 565) & 0x20) != 0)
  {
    v6 = *(a1 + 508);
    while (v6 >= 2)
    {
      v7 = v6 - 2;
      v8 = *(a1 + 520);
      v9 = *(v8 + 8 * v6 - 16);
      v6 -= 2;
      if (v9 == a2)
      {
        if (*(v8 + 8 * ((v7 + 2) & 0x7FFFFFFF) - 8) != a3)
        {
          break;
        }

        return 4294967294;
      }
    }
  }

  v10 = *(a1 + 512);
  if (!v10 || (v11 = *(a1 + 520)) == 0)
  {
    *(a1 + 508) = 0xA00000000;
    v11 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
    *(a1 + 520) = v11;
    if (!v11)
    {
      xmlErrMemory(a1, 0);
      *(a1 + 512) = 0;
      return 0xFFFFFFFFLL;
    }

LABEL_12:
    v12 = *(a1 + 508);
    v11[v12] = a2;
    v13 = *(a1 + 520);
    result = (v12 + 2);
    *(a1 + 508) = result;
    *(v13 + 8 * v12 + 8) = a3;
    return result;
  }

  if (*(a1 + 508) < v10)
  {
    goto LABEL_12;
  }

  if (!(v10 >> 27))
  {
    *(a1 + 512) = 2 * v10;
    v11 = malloc_type_realloc(v11, 16 * v10, 0x50040EE9192B6uLL);
    if (!v11)
    {
      xmlErrMemory(a1, 0);
      *(a1 + 512) /= 2;
      return 0xFFFFFFFFLL;
    }

    *(a1 + 520) = v11;
    goto LABEL_12;
  }

  xmlErrMemory(a1, 0);
  return 0xFFFFFFFFLL;
}

uint64_t __linkedOnOrAfterFall2022OSVersions_block_invoke()
{
  result = dyld_program_minos_at_least();
  linkedOnOrAfterFall2022OSVersions_result = result;
  return result;
}

xmlNsPtr xmlNewNs(xmlNodePtr node, const xmlChar *href, const xmlChar *prefix)
{
  if (node && node->type != XML_ELEMENT_NODE || prefix && xmlStrEqual(prefix, "xml") && xmlStrEqual(href, "http://www.w3.org/XML/1998/namespace"))
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
  v7 = v6;
  if (!v6)
  {
    __xmlSimpleError(2u, 2, 0, 0, "building namespace");
    return v7;
  }

  *&v6->href = 0u;
  *&v6->_private = 0u;
  *&v6->next = 0u;
  v6->type = XML_NAMESPACE_DECL;
  if (href)
  {
    v6->href = xmlStrdup(href);
  }

  if (prefix)
  {
    v7->prefix = xmlStrdup(prefix);
  }

  if (node)
  {
    nsDef = node->nsDef;
    if (!nsDef)
    {
      node->nsDef = v7;
      return v7;
    }

    v9 = nsDef->prefix;
    v10 = v7->prefix;
    if (!(v9 | v10) || xmlStrEqual(v9, v10))
    {
LABEL_15:
      xmlFreeNs(v7);
      return 0;
    }

    while (nsDef->next)
    {
      v11 = nsDef->next->prefix;
      v12 = v7->prefix;
      if (v11 | v12)
      {
        nsDef = nsDef->next;
        if (!xmlStrEqual(v11, v12))
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    nsDef->next = v7;
  }

  return v7;
}

void **__xmlStructuredErrorContext(void)
{
  if (xmlIsMainThread())
  {
    return &xmlStructuredErrorContext;
  }

  else
  {
    return &xmlGetGlobalState()->xmlStructuredErrorContext;
  }
}

uint64_t xmlSwitchInputEncodingInt(xmlParserCtxt *a1, uint64_t *a2, xmlCharEncodingHandler *handler, int a4)
{
  result = 0xFFFFFFFFLL;
  if (a2 && handler)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = *(v8 + 24);
      if (v9)
      {
        if (v9 != handler)
        {
          xmlCharEncCloseFunc(v9);
          result = 0;
          *(*a2 + 24) = handler;
          return result;
        }

        return 0;
      }

      *(v8 + 24) = handler;
      if (xmlBufIsEmpty(*(v8 + 32)))
      {
        return 0;
      }

      v11 = xmlBufCreate();
      if (v11)
      {
        v12 = v11;
        name = handler->name;
        if (name)
        {
          if (!strcmp(name, "UTF-16LE") || !strcmp(name, "UTF-16"))
          {
            v14 = a2[4];
            if (*v14 == 255 && v14[1] == 254)
            {
              a2[4] = (v14 + 2);
            }
          }

          if (!strcmp(name, "UTF-16BE"))
          {
            v15 = a2[4];
            if (*v15 == 254 && v15[1] == 255)
            {
              a2[4] = (v15 + 2);
            }
          }

          if (!strcmp(name, "UTF-8"))
          {
            v16 = a2[4];
            if (*v16 == 239 && v16[1] == 187 && v16[2] == 191)
            {
              a2[4] = (v16 + 3);
            }
          }
        }

        v17 = *(a2 + 8) - *(a2 + 6);
        xmlBufShrink(*(*a2 + 32), v17);
        v18 = *a2;
        v19 = *(*a2 + 32);
        v18[4] = v12;
        v18[5] = v19;
        v18[7] = v17;
        v20 = xmlBufUse(v19);
        v21 = *a2;
        if (a1->html)
        {
          LineInput = xmlCharEncInput(v21, 1);
        }

        else
        {
          LineInput = xmlCharEncFirstLineInput(v21, a4);
        }

        v23 = LineInput;
        xmlBufResetInput(*(*a2 + 32), a2);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = xmlBufUse(*(*a2 + 40));
          result = 0;
          *(*a2 + 56) = *(*a2 + 56) - v24 + v20;
          return result;
        }

        if (!a1->html)
        {
          xmlErrInternal(a1, "switching encoding: encoder error\n", 0);
          xmlHaltParser(a1);
        }
      }

      else
      {
        xmlErrMemory(a1, 0);
      }
    }

    else
    {
      if (*(a2 + 12))
      {
        xmlCharEncCloseFunc(handler);
        return 0;
      }

      xmlErrInternal(a1, "switching encoding : no input\n", 0);
      xmlCharEncCloseFunc(handler);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

const xmlChar *__cdecl xmlParseName(xmlParserCtxtPtr ctxt)
{
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 10000000;
  }

  else
  {
    v2 = 50000;
  }

  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  input = ctxt->input;
  cur = input->cur;
  v5 = *cur;
  if ((v5 & 0xFFFFFFDF) - 65 >= 0x1A && v5 != 95 && v5 != 58)
  {
    goto LABEL_26;
  }

  for (i = 1; ; ++i)
  {
    v7 = cur[i];
    if ((v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A && ((v7 - 45) > 0x32 || ((1 << (v7 - 45)) & 0x4000000002003) == 0))
    {
      break;
    }
  }

  if (!cur[i] || (v7 & 0x80) != 0)
  {
LABEL_26:
    if ((ctxt->options & 0x80000) != 0)
    {
      v13 = 10000000;
    }

    else
    {
      v13 = 50000;
    }

    if (!ctxt->progressive && input->end - cur <= 249)
    {
      xmlGROW(ctxt);
    }

    if (ctxt->instate == XML_PARSER_EOF)
    {
      return 0;
    }

    len = 0;
    v14 = xmlCurrentChar(ctxt, &len);
    v15 = v14;
    if ((ctxt->options & 0x20000) == 0)
    {
      if (v14 <= 0x3E && ((1 << v14) & 0x4000800100000000) != 0)
      {
        return 0;
      }

      if ((v14 & 0xFFFFFFDF) - 65 >= 0x1A && v14 != 58 && v14 != 95)
      {
        v46 = vdupq_n_s32(v14);
        v47 = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB30, vaddq_s32(v46, xmmword_1C79BAB10)), vcgtq_u32(xmmword_1C79BAB40, vaddq_s32(v46, xmmword_1C79BAB20)))));
        v48 = (v14 - 65008) >= 0x20E && (v14 - 0x10000) >= 0xE0000;
        v49 = !v48;
        if (!(v47 & 1 | ((v14 - 63744) < 0x4D0) | v49) && (v14 & 0xFFFFFFFE) != 0x200C)
        {
          return 0;
        }
      }

      v16 = len;
      v17 = ctxt->input;
      v18 = v17->cur;
      v19 = &v18[len];
      if (v19 <= v17->end)
      {
        if (*v18 == 10)
        {
          ++v17->line;
          v17->col = 1;
        }

        else
        {
          ++v17->col;
        }

        v17->cur = v19;
      }

      v23 = xmlCurrentChar(ctxt, &len);
      v24 = 0;
      while (v23 > 0x3E || ((1 << v23) & 0x4000800100000000) == 0)
      {
        if (v23 - 48 >= 0xB && (v23 & 0xFFFFFFDF) - 65 >= 0x1A && (v23 - 45 > 0x32 || ((1 << (v23 - 45)) & 0x4000000000003) == 0) && v23 != 183)
        {
          v25 = vdupq_n_s32(v23);
          if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB70, vaddq_s32(v25, xmmword_1C79BAB50)), vcgtq_u32(xmmword_1C79BAB80, vaddq_s32(v25, xmmword_1C79BAB60))))) & 1) == 0 && v23 - 63744 >= 0x4D0 && v23 - 65008 >= 0x20E && v23 - 0x10000 >= 0xE0000 && (v23 & 0xFFFFFFFE) != 0x200C)
          {
            break;
          }
        }

        if (v24 < 101)
        {
          ++v24;
        }

        else
        {
          if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
          {
            xmlGROW(ctxt);
          }

          if (ctxt->instate == XML_PARSER_EOF)
          {
            return 0;
          }

          v24 = 0;
        }

        if (v16 <= (len ^ 0x7FFFFFFF))
        {
          v26 = len;
        }

        else
        {
          v26 = 0;
        }

        v27 = ctxt->input;
        v28 = v27->cur;
        v29 = &v28[len];
        if (v29 <= v27->end)
        {
          if (*v28 == 10)
          {
            ++v27->line;
            v27->col = 1;
          }

          else
          {
            ++v27->col;
          }

          v27->cur = v29;
        }

        v16 += v26;
        v23 = xmlCurrentChar(ctxt, &len);
        if (!v23)
        {
          v11 = 0;
          if (ctxt->instate == XML_PARSER_EOF)
          {
            return v11;
          }
        }
      }

LABEL_131:
      if (v16 <= v13)
      {
        v43 = ctxt->input->cur;
        if (v43 - ctxt->input->base >= v16)
        {
          if (*v43 == 10 && *(v43 - 1) == 13)
          {
            dict = ctxt->dict;
            v45 = &v43[~v16];
          }

          else
          {
            dict = ctxt->dict;
            v45 = &v43[-v16];
          }

          return xmlDictLookup(dict, v45, v16);
        }

        v39 = "unexpected change of input buffer";
        v40 = ctxt;
        v41 = 1;
LABEL_133:
        xmlFatalErr(v40, v41, v39);
        return 0;
      }

LABEL_132:
      v39 = "Name";
      v40 = ctxt;
      v41 = 110;
      goto LABEL_133;
    }

    if (v14 <= 0x3E && ((1 << v14) & 0x4000800100000000) != 0)
    {
      return 0;
    }

    if (v14 > 255)
    {
      if (!xmlCharInRange(v14, &xmlIsBaseCharGroup) && v15 != 12295 && (v15 - 19968) >= 0x51A6 && (v15 - 12321) >= 9)
      {
        return 0;
      }
    }

    else if ((v14 & 0xFFFFFFDF) - 65 >= 0x1A && (v14 - 192) >= 0x17 && v14 <= 247 && (v14 - 216) >= 0x1F && v14 != 95 && v14 != 58)
    {
      return 0;
    }

    v16 = len;
    v20 = ctxt->input;
    v21 = v20->cur;
    v22 = &v21[len];
    if (v22 <= v20->end)
    {
      if (*v21 == 10)
      {
        ++v20->line;
        v20->col = 1;
      }

      else
      {
        ++v20->col;
      }

      v20->cur = v22;
    }

    v30 = 0;
    while (1)
    {
      v31 = xmlCurrentChar(ctxt, &len);
      if (v31 <= 0x3E && ((1 << v31) & 0x4000800100000000) != 0)
      {
        goto LABEL_131;
      }

      v33 = v31;
      if (v31 > 255)
      {
        if (xmlCharInRange(v31, &xmlIsBaseCharGroup) || v33 == 12295 || (v33 - 19968) < 0x51A6 || (v33 - 12321) < 9 || xmlCharInRange(v33, &xmlIsDigitGroup))
        {
          goto LABEL_111;
        }
      }

      else if ((v31 - 192) < 0x17 || (v31 & 0xFFFFFFDF) - 65 < 0x1A || (v31 - 48) < 0xA || v31 > 247 || (v31 - 216) < 0x1F)
      {
        goto LABEL_111;
      }

      if ((v33 - 45) > 0x32 || ((1 << (v33 - 45)) & 0x4000000002003) == 0)
      {
        if (v33 >= 256)
        {
          if (xmlCharInRange(v33, &xmlIsCombiningGroup))
          {
            goto LABEL_111;
          }

          v38 = xmlCharInRange(v33, &xmlIsExtenderGroup);
        }

        else
        {
          v38 = v33 == 183;
        }

        if (!v38)
        {
          goto LABEL_131;
        }
      }

LABEL_111:
      if (v30 < 101)
      {
        ++v30;
      }

      else
      {
        if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
        }

        if (ctxt->instate == XML_PARSER_EOF)
        {
          return 0;
        }

        v30 = 0;
      }

      if (v16 <= (len ^ 0x7FFFFFFF))
      {
        v34 = len;
      }

      else
      {
        v34 = 0;
      }

      v16 += v34;
      v35 = ctxt->input;
      v36 = v35->cur;
      v37 = &v36[len];
      if (v37 <= v35->end)
      {
        if (*v36 == 10)
        {
          ++v35->line;
          v35->col = 1;
        }

        else
        {
          ++v35->col;
        }

        v35->cur = v37;
      }
    }
  }

  if (i > v2)
  {
    goto LABEL_132;
  }

  v10 = &cur[i];
  v11 = xmlDictLookup(ctxt->dict, cur, i);
  v12 = ctxt->input;
  v12->cur = v10;
  v12->col += i;
  if (!v11)
  {
    xmlErrMemory(ctxt, 0);
    return 0;
  }

  return v11;
}

uint64_t xmlSwitchToEncodingInt(xmlParserCtxt *a1, xmlCharEncodingHandler *handler, int a3)
{
  if (handler)
  {
    input = a1->input;
    if (input)
    {
      result = xmlSwitchInputEncodingInt(a1, input, handler, a3);
      a1->charset = 1;
      return result;
    }

    xmlErrInternal(a1, "xmlSwitchToEncoding : no input\n", 0);
  }

  return 0xFFFFFFFFLL;
}

xmlNsPtr xmlSearchNs(xmlDocPtr doc, xmlNodePtr node, const xmlChar *nameSpace)
{
  if (!node || node->type == XML_NAMESPACE_DECL)
  {
    return 0;
  }

  if (!nameSpace || !xmlStrEqual(nameSpace, "xml"))
  {
    v8 = node;
    while (1)
    {
      type = v8->type;
      if (type == XML_ELEMENT_NODE)
      {
        for (i = v8->nsDef; i; i = i->next)
        {
          prefix = i->prefix;
          if (nameSpace | prefix)
          {
            if (nameSpace && prefix && i->href && xmlStrEqual(prefix, nameSpace))
            {
              return i;
            }
          }

          else if (i->href)
          {
            return i;
          }
        }

        if (v8 != node)
        {
          i = v8->ns;
          if (i)
          {
            v12 = i->prefix;
            if (nameSpace | v12)
            {
              if (nameSpace && v12 && i->href && xmlStrEqual(v12, nameSpace))
              {
                return i;
              }
            }

            else if (i->href)
            {
              return i;
            }
          }
        }
      }

      else if (type - 5 < 2 || type == XML_ENTITY_DECL)
      {
        return 0;
      }

      v8 = v8->parent;
      if (!v8)
      {
        return 0;
      }
    }
  }

  if (!doc)
  {
    if (node->type == XML_ELEMENT_NODE)
    {
      v13 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
      i = v13;
      if (v13)
      {
        *&v13->href = 0u;
        *&v13->_private = 0u;
        *&v13->next = 0u;
        v13->type = XML_NAMESPACE_DECL;
        v13->href = xmlStrdup("http://www.w3.org/XML/1998/namespace");
        i->prefix = xmlStrdup("xml");
        i->next = node->nsDef;
        node->nsDef = i;
      }

      else
      {
        __xmlSimpleError(2u, 2, 0, 0, "searching namespace");
      }

      return i;
    }

    doc = node->doc;
    if (!doc)
    {
      return 0;
    }
  }

  i = doc->oldNs;
  if (i)
  {
    return i;
  }

  return xmlTreeEnsureXMLDecl(doc);
}

void xmlSetTreeDoc(xmlNodePtr tree, xmlDocPtr doc)
{
  if (tree)
  {
    type = tree->type;
    if (type != XML_NAMESPACE_DECL)
    {
      v5 = tree->doc;
      if (v5 != doc)
      {
        if (v5)
        {
          dict = v5->dict;
          if (doc)
          {
LABEL_6:
            v7 = doc->dict;
            goto LABEL_9;
          }
        }

        else
        {
          dict = 0;
          if (doc)
          {
            goto LABEL_6;
          }
        }

        v7 = 0;
LABEL_9:
        if (type == XML_ELEMENT_NODE)
        {
          properties = tree->properties;
          if (!properties)
          {
            goto LABEL_22;
          }

          do
          {
            if ((properties->atype & 0x87FFFFFF) == 2)
            {
              xmlRemoveID(tree->doc, properties);
            }

            v9 = properties->doc;
            if (v9 != doc)
            {
              if (v9)
              {
                v10 = v9->dict;
              }

              else
              {
                v10 = 0;
              }

              properties->name = _copyStringForNewDictIfNeeded(v10, v7, properties->name);
              properties->doc = doc;
            }

            xmlSetListDoc(properties->children, doc);
            properties = properties->next;
          }

          while (properties);
          type = tree->type;
        }

        if (type == XML_ENTITY_REF_NODE)
        {
          tree->children = 0;
LABEL_27:
          tree->name = _copyStringForNewDictIfNeeded(dict, v7, tree->name);
          tree->content = _copyStringForNewDictIfNeeded(dict, 0, tree->content);
          tree->doc = doc;
          return;
        }

LABEL_22:
        children = tree->children;
        if (children && children->type != XML_NAMESPACE_DECL)
        {
          do
          {
            if (children->doc != doc)
            {
              xmlSetTreeDoc(children, doc);
            }

            children = children->next;
          }

          while (children);
        }

        goto LABEL_27;
      }
    }
  }
}

uint64_t areBlanks(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v4 = a3;
    do
    {
      v5 = *a2++;
      v6 = (1 << v5) & 0x100002600;
      if (v5 > 0x20 || v6 == 0)
      {
        return 0;
      }
    }

    while (--v4);
  }

  if (!**(*(a1 + 56) + 32))
  {
    return 1;
  }

  if (**(*(a1 + 56) + 32) != 60)
  {
    return 0;
  }

  v8 = *(a1 + 288);
  if (!v8)
  {
    return 1;
  }

  if (xmlStrEqual(v8, "html"))
  {
    return 1;
  }

  if (xmlStrEqual(*(a1 + 288), "head"))
  {
    return 1;
  }

  if (xmlStrEqual(*(a1 + 288), "body"))
  {
    v10 = *(a1 + 16);
    if (v10)
    {
      IntSubset = xmlGetIntSubset(v10);
      if (IntSubset)
      {
        v12 = IntSubset;
        ExternalID = IntSubset->ExternalID;
        if (ExternalID)
        {
          if (!xmlStrcasecmp(ExternalID, "-//W3C//DTD HTML 4.01//EN") || !xmlStrcasecmp(v12->ExternalID, "-//W3C//DTD HTML 4//EN"))
          {
            return 1;
          }
        }
      }
    }
  }

  result = *(a1 + 80);
  if (!result)
  {
    return result;
  }

  LastChild = xmlGetLastChild(result);
  if (LastChild)
  {
    v15 = LastChild;
    while (v15->type == XML_COMMENT_NODE)
    {
      v15 = v15->prev;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (!xmlNodeIsText(v15))
    {
      v18 = 0;
      while (!xmlStrEqual(v15->name, allowPCData[v18]))
      {
        ++v18;
        result = 1;
        if (v18 == 53)
        {
          return result;
        }
      }
    }
  }

  else
  {
LABEL_25:
    v16 = *(a1 + 80);
    if (*(v16 + 8) == 1 || !*(v16 + 80))
    {
      v17 = 0;
      while (!xmlStrEqual(*(a1 + 288), allowPCData[v17]))
      {
        ++v17;
        result = 1;
        if (v17 == 53)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t areBlanks_0(void *a1, unsigned __int8 *a2, int a3, int a4)
{
  if (*(*a1 + 144) == *(*a1 + 136))
  {
    return 0;
  }

  v5 = a1[46];
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (v6 == -2 || v6 == 1)
  {
    return 0;
  }

  if (!a4 && a3 >= 1)
  {
    v9 = a3;
    do
    {
      v10 = *a2++;
      v11 = (1 << v10) & 0x100002600;
      if (v10 > 0x20 || v11 == 0)
      {
        return 0;
      }
    }

    while (--v9);
  }

  v13 = a1[10];
  if (!v13)
  {
    return 0;
  }

  v14 = a1[2];
  if (!v14)
  {
LABEL_21:
    v16 = *(a1[7] + 32);
    v17 = *v16;
    if (v17 == 60 || v17 == 13)
    {
      v19 = a1[10];
      v20 = v17 == 60 && v19->children == 0;
      if (!v20 || v16[1] != 47)
      {
        LastChild = xmlGetLastChild(v19);
        if (LastChild)
        {
          if (!xmlNodeIsText(LastChild))
          {
            v22 = *(a1[10] + 24);
            if (!v22 || !xmlNodeIsText(v22))
            {
              return 1;
            }
          }
        }

        else
        {
          v23 = a1[10];
          if (*(v23 + 8) == 1 || !*(v23 + 80))
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  IsMixedElement = xmlIsMixedElement(v14, *(v13 + 16));
  if (IsMixedElement)
  {
    if (IsMixedElement == 1)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return 1;
}

void *xmlBufCreate()
{
  v0 = malloc_type_malloc(0x40uLL, 0x10300408E9632E7uLL);
  v1 = v0;
  if (v0)
  {
    v0[4] = 0;
    *(v0 + 14) = 0;
    v0[6] = 0;
    v2 = *__xmlDefaultBufferSize();
    v1[5] = v2;
    LODWORD(v3) = 0x7FFFFFFF;
    if (v2 >= 0x7FFFFFFF)
    {
      LODWORD(v2) = 0x7FFFFFFF;
    }

    if (v1[4] < 0x7FFFFFFFuLL)
    {
      v3 = v1[4];
    }

    *(v1 + 2) = v3;
    *(v1 + 3) = v2;
    *(v1 + 4) = *__xmlBufferAllocScheme();
    v4 = malloc_type_malloc(v1[5], 0x100004077774924uLL);
    *v1 = v4;
    if (v4)
    {
      bzero(v4, v1[5]);
      v1[3] = 0;
    }

    else
    {
      __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
      free(v1);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
  }

  return v1;
}

xmlChar *_copyStringForNewDictIfNeeded(xmlDict *a1, xmlDict *a2, xmlChar *str)
{
  if (!str || !a1 || xmlDictOwns(a1, str) != 1)
  {
    return str;
  }

  if (a2)
  {

    return xmlDictLookup(a2, str, -1);
  }

  else
  {

    return xmlStrdup(str);
  }
}

uint64_t nsPop(uint64_t result, int a2)
{
  if (*(result + 520))
  {
    v2 = a2;
    v3 = result;
    v4 = *(result + 508);
    if (v4 < a2)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      result = (v5)(*v6, "Pbm popping %d NS\n", v2);
      v4 = *(v3 + 508);
      v2 = v4;
    }

    if (v4 >= 1 && v2 >= 1)
    {
      v8 = 8 * v4 - 8;
      do
      {
        *(*(v3 + 520) + v8) = 0;
        --v4;
        v8 -= 8;
        --v2;
      }

      while (v2);
      *(v3 + 508) = v4;
    }
  }

  return result;
}

uint64_t xmlBufGetAllocationScheme(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

xmlStructuredErrorFunc *__xmlStructuredError(void)
{
  if (xmlIsMainThread())
  {
    return &xmlStructuredError;
  }

  else
  {
    return &xmlGetGlobalState()->xmlStructuredError;
  }
}

size_t xmlCharEncInput(uint64_t a1, int a2)
{
  *&len[60] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 24) && (v3 = *(a1 + 32)) != 0 && (v4 = *(a1 + 40)) != 0)
  {
    result = xmlBufUse(*(a1 + 40));
    if (result)
    {
      v7 = 0x10000;
      if (result < 0x10000)
      {
        v7 = result;
      }

      if (a2)
      {
        v8 = result;
      }

      else
      {
        v8 = v7;
      }

      v9 = xmlBufAvail(v3);
      if (2 * v8 >= v9)
      {
        xmlBufGrow(v3, 2 * v8);
        v9 = xmlBufAvail(v3);
      }

      v10 = 0x20000;
      if (v9 < 0x20000)
      {
        v10 = v9;
      }

      if (a2)
      {
        v10 = v9;
      }

      v19 = v10;
      *len = v8;
      v11 = *(a1 + 24);
      v12 = xmlBufEnd(v3);
      v13 = xmlBufContent(v4);
      v14 = xmlEncInputChunk(v11, v12, &v19, v13, len, a2);
      xmlBufShrink(v4, *len);
      xmlBufAddLen(v3, v19);
      if (v14 == -1)
      {
        v15 = -3;
      }

      else
      {
        v15 = v14;
      }

      if (v15 == -2)
      {
        memset(&len[4], 0, 49);
        v16 = xmlBufContent(v4);
        snprintf(&len[4], 0x31uLL, "0x%02X 0x%02X 0x%02X 0x%02X", *v16, v16[1], v16[2], v16[3]);
        len[53] = 0;
        __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6003, 3, 0, 0, &len[4], 0, 0, 0, 0, "input conversion failed due to input error, bytes %s\n", &len[4]);
      }

      if (v15 == -3)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      if (v17 >= 0)
      {
        result = v19;
      }

      else
      {
        result = v17;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

xmlXPathContextPtr xmlXPathNewContext(xmlDocPtr doc)
{
  v2 = malloc_type_malloc(0x178uLL, 0x10F004069EB3B79uLL);
  v3 = v2;
  if (v2)
  {
    v2[46] = 0;
    *(v2 + 21) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = doc;
    v2[1] = 0;
    v2[4] = 0;
    v2[5] = 0;
    v2[3] = 0;
    v2[7] = xmlHashCreate(0);
    v3[17] = 0;
    v3[12] = 0;
    *(v3 + 4) = 0u;
    v3[13] = -1;
    xmlXPathRegisterAllFunctions(v3);
  }

  else
  {
    xmlXPathErrMemory(0, "creating context\n");
  }

  return v3;
}

unint64_t xmlBufAvail(unint64_t result)
{
  if (result)
  {
    if (*(result + 56))
    {
      return 0;
    }

    else
    {
      v1 = *(result + 40);
      v2 = *(result + 12);
      if (v2 <= 0x7FFFFFFE && v1 != v2)
      {
        *(result + 40) = v2;
        v1 = v2;
      }

      v4 = *(result + 32);
      v5 = *(result + 8);
      if (v5 <= 0x7FFFFFFE && v4 != v5)
      {
        *(result + 32) = v5;
        v4 = v5;
      }

      if (v1 <= v4)
      {
        return 0;
      }

      else
      {
        return v1 + ~v4;
      }
    }
  }

  return result;
}

xmlHashTablePtr xmlHashCreate(int size)
{
  v2 = malloc_type_malloc(0x20uLL, 0x10200402CFBC8ADuLL);
  v3 = v2;
  if (v2)
  {
    if (size >= 1)
    {
      v4 = size;
    }

    else
    {
      v4 = 256;
    }

    *(v2 + 2) = 0;
    v2[2] = v4;
    v2[3] = 0;
    v5 = 48 * v4;
    v6 = malloc_type_malloc(v5, 0x10B00402F1DE98BuLL);
    *v3 = v6;
    if (v6)
    {
      bzero(v6, v5);
      v3[6] = __xmlRandom();
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t xmlEncInputChunk(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5, int a6)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7(a2, a3, a4, a5);
    return v8 & (v8 >> 31);
  }

  else
  {
    v10 = *(a1 + 24);
    if (v10)
    {

      return xmlUconvWrapper(v10, 1, a2, a3, a4, a5, a6);
    }

    else
    {
      *a3 = 0;
      *a5 = 0;
      return 4294967294;
    }
  }
}

uint64_t xmlUconvWrapper(uint64_t *a1, int a2, uint64_t a3, int *a4, uint64_t a5, int *a6, int a7)
{
  v22 = a3;
  v23 = a5;
  if (a4 && (v8 = a5, a5) && (v9 = a3, a3) && a6)
  {
    linkedOnOrAfterFall2022OSVersions();
    v14 = *a4;
    v15 = *a6;
    if (a2)
    {
      v17 = *a1;
      v16 = a1[1];
    }

    else
    {
      v19 = *a1;
      v20 = a1[1];
    }

    ucnv_convertEx();
    *a6 = v23 - v8;
    *a4 = v22 - v9;
    v21 = linkedOnOrAfterFall2022OSVersions();
    result = 0;
    if (a7)
    {
      if (v21)
      {
        result = 0;
        a1[259] = (a1 + 2);
        a1[258] = (a1 + 2);
      }
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

int xmlXPathRegisterFuncNS(xmlXPathContextPtr ctxt, const xmlChar *name, const xmlChar *ns_uri, xmlXPathFunction f)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!name)
  {
    return -1;
  }

  funcHash = ctxt->funcHash;
  if (!funcHash)
  {
    funcHash = xmlHashCreate(0);
    ctxt->funcHash = funcHash;
    if (!funcHash)
    {
      return -1;
    }
  }

  if (f)
  {

    return xmlHashAddEntry2(funcHash, name, ns_uri, f);
  }

  else
  {

    return xmlHashRemoveEntry2(funcHash, name, ns_uri, 0);
  }
}

void xmlXPathRegisterAllFunctions(xmlXPathContextPtr ctxt)
{
  xmlXPathRegisterFuncNS(ctxt, "BOOLean", 0, xmlXPathBooleanFunction);
  xmlXPathRegisterFuncNS(ctxt, "ceiling", 0, xmlXPathCeilingFunction);
  xmlXPathRegisterFuncNS(ctxt, "count", 0, xmlXPathCountFunction);
  xmlXPathRegisterFuncNS(ctxt, "concat", 0, xmlXPathConcatFunction);
  xmlXPathRegisterFuncNS(ctxt, "contains", 0, xmlXPathContainsFunction);
  xmlXPathRegisterFuncNS(ctxt, "id", 0, xmlXPathIdFunction);
  xmlXPathRegisterFuncNS(ctxt, "false", 0, xmlXPathFalseFunction);
  xmlXPathRegisterFuncNS(ctxt, "floor", 0, xmlXPathFloorFunction);
  xmlXPathRegisterFuncNS(ctxt, "last", 0, xmlXPathLastFunction);
  xmlXPathRegisterFuncNS(ctxt, "lang", 0, xmlXPathLangFunction);
  xmlXPathRegisterFuncNS(ctxt, "local-name", 0, xmlXPathLocalNameFunction);
  xmlXPathRegisterFuncNS(ctxt, "not", 0, xmlXPathNotFunction);
  xmlXPathRegisterFuncNS(ctxt, "name", 0, xmlXPathNameFunction);
  xmlXPathRegisterFuncNS(ctxt, "namespace-uri", 0, xmlXPathNamespaceURIFunction);
  xmlXPathRegisterFuncNS(ctxt, "normalize-space", 0, xmlXPathNormalizeFunction);
  xmlXPathRegisterFuncNS(ctxt, "number", 0, xmlXPathNumberFunction);
  xmlXPathRegisterFuncNS(ctxt, "position", 0, xmlXPathPositionFunction);
  xmlXPathRegisterFuncNS(ctxt, "round", 0, xmlXPathRoundFunction);
  xmlXPathRegisterFuncNS(ctxt, "string", 0, xmlXPathStringFunction);
  xmlXPathRegisterFuncNS(ctxt, "string-length", 0, xmlXPathStringLengthFunction);
  xmlXPathRegisterFuncNS(ctxt, "starts-with", 0, xmlXPathStartsWithFunction);
  xmlXPathRegisterFuncNS(ctxt, "substring", 0, xmlXPathSubstringFunction);
  xmlXPathRegisterFuncNS(ctxt, "substring-before", 0, xmlXPathSubstringBeforeFunction);
  xmlXPathRegisterFuncNS(ctxt, "substring-after", 0, xmlXPathSubstringAfterFunction);
  xmlXPathRegisterFuncNS(ctxt, "sum", 0, xmlXPathSumFunction);
  xmlXPathRegisterFuncNS(ctxt, "true", 0, xmlXPathTrueFunction);
  xmlXPathRegisterFuncNS(ctxt, "translate", 0, xmlXPathTranslateFunction);

  xmlXPathRegisterFuncNS(ctxt, "escape-uri", "http://www.w3.org/2002/08/xquery-functions", xmlXPathEscapeUriFunction);
}

int htmlParseDocument(htmlParserCtxtPtr ctxt)
{
  v23 = *MEMORY[0x1E69E9840];
  xmlInitParser();
  htmlDefaultSAXHandlerInit();
  if (ctxt && (input = ctxt->input) != 0)
  {
    ctxt->html = 1;
    ctxt->linenumbers = 1;
    if (!ctxt->progressive && input->end - input->cur <= 249)
    {
      xmlParserInputGrow(input, 250);
    }

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

    *in = 0;
    if (!ctxt->encoding)
    {
      cur = ctxt->input->cur;
      if (ctxt->input->end - cur >= 4)
      {
        v7 = ctxt->token ? -1 : *cur;
        in[0] = v7;
        in[1] = cur[1];
        in[2] = cur[2];
        in[3] = cur[3];
        v9 = xmlDetectCharEncoding(in, 4);
        if (v9)
        {
          if (xmlSwitchEncoding(ctxt, v9) < 0)
          {
            *__str = 0;
            memset(v22, 0, 11);
            snprintf(__str, 0x14uLL, "0x%02X 0x%02X 0x%02X 0x%02X", in[0], in[1], in[2], in[3]);
            v22[11] = 0;
            if (ctxt->errNo)
            {
              errNo = ctxt->errNo;
            }

            else
            {
              errNo = 6003;
            }

            htmlParseErr(ctxt, errNo, "htmlCheckEncoding: error switching to encoding, bytes %s\n", __str, 0);
          }
        }
      }
    }

    htmlSkipBlankChars(ctxt);
    if (!*ctxt->input->cur)
    {
      htmlParseErr(ctxt, 4, "Document is empty\n", 0, 0);
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

    while (1)
    {
      v12 = ctxt->input->cur;
      if (*v12 != 60)
      {
        break;
      }

      v13 = v12[1];
      if (v13 != 63)
      {
        if (v13 != 33)
        {
          break;
        }

        if (v12[2] != 45 || v12[3] != 45)
        {
          if (__toupper(v12[2]) == 68 && __toupper(v12[3]) == 79 && __toupper(v12[4]) == 67 && __toupper(v12[5]) == 84 && __toupper(v12[6]) == 89 && __toupper(v12[7]) == 80 && __toupper(v12[8]) == 69)
          {
            htmlParseDocTypeDecl(ctxt);
          }

          break;
        }
      }

      htmlParseComment(ctxt);
      htmlParsePI(ctxt);
      htmlSkipBlankChars(ctxt);
    }

    while (1)
    {
      htmlSkipBlankChars(ctxt);
      v15 = ctxt->input->cur;
      if (*v15 != 60)
      {
        break;
      }

      v14 = v15[1];
      if (v14 != 63 && (v14 != 33 || v15[2] != 45 || v15[3] != 45))
      {
        break;
      }

      htmlParseComment(ctxt);
      htmlParsePI(ctxt);
    }

    htmlParseContentInternal(ctxt);
    if (!*ctxt->input->cur)
    {
      htmlAutoCloseOnEnd(ctxt);
    }

    if (ctxt->sax)
    {
      endDocument = ctxt->sax->endDocument;
      if (endDocument)
      {
        (endDocument)(ctxt->userData);
      }
    }

    if ((ctxt->options & 4) == 0)
    {
      myDoc = ctxt->myDoc;
      if (myDoc)
      {
        if (!xmlGetIntSubset(myDoc))
        {
          ctxt->myDoc->intSubset = xmlCreateIntSubset(ctxt->myDoc, "html", "-//W3C//DTD HTML 4.0 Transitional//EN", "http://www.w3.org/TR/REC-html40/loose.dtd");
        }
      }
    }

    if (ctxt->wellFormed)
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
    htmlParseErr(ctxt, 1, "htmlParseDocument: context error\n", 0, 0);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

xmlParserInput *htmlSkipBlankChars(uint64_t a1)
{
  while (1)
  {
    result = *(a1 + 56);
    cur = result->cur;
    v4 = *cur;
    if (v4 > 0xC)
    {
      break;
    }

    if (v4 == 9)
    {
      goto LABEL_7;
    }

    if (v4 != 10)
    {
      return result;
    }

    ++result->line;
    result->col = 1;
LABEL_8:
    result->cur = cur + 1;
    if (!cur[1])
    {
      xmlParserInputGrow(result, 250);
    }
  }

  if (v4 == 13 || v4 == 32)
  {
LABEL_7:
    ++result->col;
    goto LABEL_8;
  }

  return result;
}

int xmlHashAddEntry3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3, void *userdata)
{
  v5 = -1;
  if (table)
  {
    v6 = name;
    if (name)
    {
      if (*(table + 3) != 0x7FFFFFFF)
      {
        v11 = *(table + 2);
        if (!v11 || (xmlDictOwns(v11, name) || (v6 = xmlDictLookup(*(table + 2), v6, -1)) != 0) && (!name2 || xmlDictOwns(*(table + 2), name2) || (name2 = xmlDictLookup(*(table + 2), name2, -1)) != 0) && (!name3 || xmlDictOwns(*(table + 2), name3) || (name3 = xmlDictLookup(*(table + 2), name3, -1)) != 0))
        {
          v12 = (*table + 48 * xmlHashComputeKey(table, v6, name2, name3));
          v13 = *(v12 + 10);
          if (v13)
          {
            v14 = *v12;
            v15 = 0;
            if (*(table + 2))
            {
              if (v14)
              {
                do
                {
                  v16 = v12;
                  v12 = v14;
                  if (v16[1] == v6 && v16[2] == name2 && v16[3] == name3)
                  {
                    return -1;
                  }

                  ++v15;
                  v14 = *v14;
                }

                while (*v12);
              }

              if (*(v12 + 1) == v6 && *(v12 + 2) == name2 && *(v12 + 3) == name3)
              {
                return -1;
              }
            }

            else
            {
              if (v14)
              {
                while (!xmlStrEqual(*(v12 + 1), v6) || !xmlStrEqual(*(v12 + 2), name2) || !xmlStrEqual(*(v12 + 3), name3))
                {
                  ++v15;
                  v12 = *v12;
                  if (!*v12)
                  {
                    goto LABEL_30;
                  }
                }

                return -1;
              }

LABEL_30:
              if (xmlStrEqual(*(v12 + 1), v6) && xmlStrEqual(*(v12 + 2), name2) && xmlStrEqual(*(v12 + 3), name3))
              {
                return -1;
              }
            }

            v17 = v12;
            v12 = malloc_type_malloc(0x30uLL, 0x10B00402F1DE98BuLL);
            if (!v12)
            {
              return -1;
            }
          }

          else
          {
            v17 = 0;
            v15 = 0;
          }

          if (*(table + 2))
          {
            *(v12 + 1) = v6;
            *(v12 + 2) = name2;
          }

          else
          {
            *(v12 + 1) = xmlStrdup(v6);
            *(v12 + 2) = xmlStrdup(name2);
            name3 = xmlStrdup(name3);
          }

          *(v12 + 3) = name3;
          *(v12 + 4) = userdata;
          *v12 = 0;
          *(v12 + 10) = 1;
          if (v13)
          {
            *v17 = v12;
          }

          ++*(table + 3);
          if (v15 >= 9)
          {
            v18 = *(table + 2);
            if ((8 * v18 - 16385) >= 0xFFFFC007)
            {
              v19 = *table;
              if (*table)
              {
                v20 = malloc_type_malloc((384 * v18), 0x10B00402F1DE98BuLL);
                *table = v20;
                if (!v20)
                {
                  v5 = 0;
                  *table = v19;
                  return v5;
                }

                bzero(v20, (384 * v18));
                *(table + 2) = 8 * v18;
                if (v18 >= 1)
                {
                  v21 = v19 + 24;
                  v22 = v18;
                  do
                  {
                    if (*(v21 + 4))
                    {
                      v23 = xmlHashComputeKey(table, *(v21 - 2), *(v21 - 1), *v21);
                      v24 = (*table + 48 * v23);
                      v25 = *(v21 - 24);
                      v26 = *(v21 + 8);
                      v24[1] = *(v21 - 8);
                      v24[2] = v26;
                      *v24 = v25;
                      *(*table + 48 * v23) = 0;
                    }

                    v21 += 48;
                    --v22;
                  }

                  while (v22);
                  do
                  {
                    v27 = *&v19[48 * v22];
                    if (v27)
                    {
                      do
                      {
                        v28 = *v27;
                        v29 = xmlHashComputeKey(table, v27[1], v27[2], v27[3]);
                        v30 = *table + 48 * v29;
                        if (*(v30 + 40))
                        {
                          *v27 = *v30;
                          *v30 = v27;
                        }

                        else
                        {
                          v31 = *v27;
                          v32 = *(v27 + 2);
                          *(v30 + 16) = *(v27 + 1);
                          *(v30 + 32) = v32;
                          *v30 = v31;
                          *(*table + 48 * v29) = 0;
                          free(v27);
                        }

                        v27 = v28;
                      }

                      while (v28);
                    }

                    ++v22;
                  }

                  while (v22 != v18);
                }

                free(v19);
              }
            }
          }

          return 0;
        }
      }
    }
  }

  return v5;
}

htmlDocPtr htmlNewDocNoDtD(const xmlChar *URI, const xmlChar *ExternalID)
{
  v4 = malloc_type_malloc(0xB0uLL, 0x10F00401D9AB0B5uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 76) = 0u;
    *(v4 + 60) = 0u;
    *(v4 + 12) = 0u;
    *(v4 + 28) = 0u;
    *(v4 + 92) = 0u;
    *(v4 + 156) = 0u;
    *(v4 + 140) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 108) = 0u;
    *(v4 + 44) = 0u;
    *(v4 + 2) = 13;
    *(v4 + 8) = v4;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 10) = 0;
    *(v4 + 11) = 0;
    *(v4 + 12) = 0;
    *(v4 + 19) = 1;
    *v4 = 0;
    *(v4 + 15) = 0;
    *(v4 + 16) = 0;
    *(v4 + 36) = 1;
    *(v4 + 43) = 160;
    if (URI | ExternalID)
    {
      xmlCreateIntSubset(v4, "html", ExternalID, URI);
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v6 = __xmlRegisterNodeDefaultValue();
      (*v6)(v5);
    }
  }

  else
  {
    htmlErrMemory(0, "HTML document creation failed\n");
  }

  return v5;
}

void htmlParseContentInternal(uint64_t a1)
{
  v2 = xmlStrdup(*(a1 + 288));
  v3 = *(a1 + 296);
  while (1)
  {
    if (!*(a1 + 452))
    {
      v4 = *(a1 + 56);
      if (v4->end - v4->cur <= 249)
      {
        xmlParserInputGrow(v4, 250);
      }
    }

    if (*(a1 + 272) == -1)
    {
      break;
    }

    v5 = *(*(a1 + 56) + 32);
    if (*v5 != 60)
    {
      goto LABEL_15;
    }

    v6 = v5[1];
    if (v6 == 47)
    {
      if (htmlParseEndTag(a1))
      {
        if (v2)
        {
          goto LABEL_32;
        }

        if (!*(a1 + 296))
        {
LABEL_33:
          v2 = xmlStrdup(*(a1 + 288));
          v3 = *(a1 + 296);
        }
      }
    }

    else
    {
      if ((v6 & 0xFFFFFFDF) - 65 >= 0x1A && v6 != 95 && v6 != 58)
      {
        goto LABEL_15;
      }

      v7 = htmlParseHTMLName_nonInvasive(a1);
      if (!v7)
      {
        htmlParseErr(a1, 68, "htmlParseStartTag: invalid element name\n", 0, 0);
        while (!**(*(a1 + 56) + 32))
        {
          xmlNextChar(a1);
        }

LABEL_31:
        htmlParserFinishElementParsing(a1);
        if (!v2)
        {
          goto LABEL_33;
        }

LABEL_32:
        free(v2);
        goto LABEL_33;
      }

      if (*(a1 + 288) && (v8 = v7, *&v33 = *(a1 + 288), *(&v33 + 1) = v7, bsearch(&v33, htmlStartClose, 0xFBuLL, 0x10uLL, htmlCompareStartClose)))
      {
        htmlAutoClose(a1, v8);
      }

      else
      {
LABEL_15:
        v9 = *(a1 + 296);
        v10 = v9 < 1 || v3 < v9;
        if (!v10 && !xmlStrEqual(v2, *(a1 + 288)))
        {
          goto LABEL_31;
        }

        if (**(*(a1 + 56) + 32))
        {
          if (xmlStrEqual(v2, "script") || xmlStrEqual(v2, "style"))
          {
            htmlParseScript(a1);
            goto LABEL_92;
          }

          v11 = *(*(a1 + 56) + 32);
          if (*v11 == 60 && v11[1] == 33 && __toupper(v11[2]) == 68 && __toupper(v11[3]) == 79 && __toupper(v11[4]) == 67 && __toupper(v11[5]) == 84 && __toupper(v11[6]) == 89 && __toupper(v11[7]) == 80 && __toupper(v11[8]) == 69)
          {
            htmlParseErr(a1, 800, "Misplaced DOCTYPE declaration\n", "DOCTYPE", 0);
            htmlParseDocTypeDecl(a1);
          }
        }

        v12 = *(a1 + 56);
        v13 = *(v12 + 32);
        v14 = *v13;
        if (v14 == 38)
        {
          htmlParseReference(a1);
        }

        else if (v14 == 60)
        {
          v15 = v13[1];
          if (v15 == 63)
          {
            htmlParsePI(a1);
          }

          else
          {
            if (v15 != 33 || v13[2] != 45 || v13[3] != 45)
            {
              v35 = 0;
              v33 = 0u;
              v34 = 0u;
              if (*(a1 + 272) == -1)
              {
                goto LABEL_89;
              }

              if (*(a1 + 104))
              {
                v16 = &v13[*(v12 + 64) - *(v12 + 24)];
                v17 = *(v12 + 52);
                *(&v33 + 1) = v16;
                *&v34 = v17;
              }

              if (htmlParseStartTag(a1) == -1 || (v18 = *(a1 + 288)) == 0)
              {
                if (**(*(a1 + 56) + 32) != 62)
                {
                  goto LABEL_89;
                }

                xmlNextChar(a1);
                if (v2)
                {
                  goto LABEL_90;
                }
              }

              else
              {
                v19 = bsearch(*(a1 + 288), &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
                if (!v19)
                {
                  htmlParseErr(a1, 801, "Tag %s invalid\n", v18, 0);
                }

                v20 = *(a1 + 56);
                v21 = *(v20 + 32);
                v22 = *v21;
                if (v22 == 62)
                {
                  xmlNextChar(a1);
                  if (v19 && v19[11])
                  {
LABEL_75:
                    if (*a1)
                    {
                      v27 = *(*a1 + 120);
                      if (v27)
                      {
                        v27(*(a1 + 8), v18);
                      }
                    }

                    v28 = *(a1 + 296);
                    if (v28 < 1)
                    {
                      goto LABEL_89;
                    }

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
                    if (v2)
                    {
LABEL_90:
                      free(v2);
                    }
                  }

                  else
                  {
                    if (!*(a1 + 104))
                    {
                      goto LABEL_89;
                    }

                    htmlNodeInfoPush(a1, &v33);
                    if (v2)
                    {
                      goto LABEL_90;
                    }
                  }
                }

                else
                {
                  if (v22 == 47 && v21[1] == 62)
                  {
                    *(v20 + 32) = v21 + 2;
                    *(v20 + 56) += 2;
                    goto LABEL_75;
                  }

                  htmlParseErr(a1, 73, "Couldn't find end of Start Tag %s\n", v18, 0);
                  if (xmlStrEqual(v18, *(a1 + 288)))
                  {
                    nodePop(a1);
                    v23 = *(a1 + 296);
                    if (v23 >= 1)
                    {
                      v24 = *(a1 + 304);
                      v25 = v23 - 1;
                      *(a1 + 296) = v23 - 1;
                      if (v23 == 1)
                      {
                        v26 = 0;
                      }

                      else
                      {
                        v26 = *(v24 + 8 * v23 - 16);
                      }

                      *(a1 + 288) = v26;
                      *(v24 + 8 * v25) = 0;
                    }
                  }

                  if (*(a1 + 104))
                  {
                    htmlNodeInfoPush(a1, &v33);
                  }

                  htmlParserFinishElementParsing(a1);
LABEL_89:
                  if (v2)
                  {
                    goto LABEL_90;
                  }
                }
              }

              v2 = xmlStrdup(*(a1 + 288));
              v3 = *(a1 + 296);
              goto LABEL_92;
            }

            htmlParseComment(a1);
          }
        }

        else
        {
          if (!*v13)
          {
            htmlAutoCloseOnEnd(a1);
            break;
          }

          htmlParseCharData(a1);
        }

LABEL_92:
        if (!*(a1 + 452))
        {
          v32 = *(a1 + 56);
          if (v32->end - v32->cur <= 249)
          {
            xmlParserInputGrow(v32, 250);
          }
        }
      }
    }
  }

  if (v2)
  {
    free(v2);
  }
}

unint64_t xmlHashComputeKey(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4)
{
  v4 = *(a1 + 24);
  if (a2)
  {
    v5 = *a2;
    v4 += 30 * *a2;
    if (*a2)
    {
      v6 = a2 + 1;
      do
      {
        v4 ^= (v4 >> 3) + v5 + 32 * v4;
        v7 = *v6++;
        v5 = v7;
      }

      while (v7);
    }
  }

  v8 = (32 * v4 + (v4 >> 3)) ^ v4;
  if (a3)
  {
    v9 = *a3;
    if (*a3)
    {
      v10 = a3 + 1;
      do
      {
        v8 ^= 32 * v8 + (v8 >> 3) + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }
  }

  v12 = (32 * v8 + (v8 >> 3)) ^ v8;
  if (a4)
  {
    v13 = *a4;
    if (*a4)
    {
      v14 = a4 + 1;
      do
      {
        v12 ^= 32 * v12 + (v12 >> 3) + v13;
        v15 = *v14++;
        v13 = v15;
      }

      while (v15);
    }
  }

  return v12 % *(a1 + 8);
}