XML_Status XML_SetEncoding(XML_Parser parser, const XML_Char *encoding)
{
  if (parser)
  {
    v2 = parser;
    if (((*(parser + 238) - 1) & 0xFFFFFFFD) != 0)
    {
      (*(parser + 5))(*(parser + 58));
      if (encoding)
      {
        parser = copyString(encoding, v2 + 3);
        *(v2 + 58) = parser;
        if (!parser)
        {
          return parser;
        }
      }

      else
      {
        *(v2 + 58) = 0;
      }

      LODWORD(parser) = 1;
    }

    else
    {
      LODWORD(parser) = 0;
    }
  }

  return parser;
}

void *copyString(unsigned __int8 *a1, uint64_t (**a2)(size_t))
{
  v3 = 0;
    ;
  }

  result = (*a2)(v3);
  if (result)
  {

    return memcpy(result, a1, v3);
  }

  return result;
}

XML_Parser XML_ExternalEntityParserCreate(XML_Parser parser, const XML_Char *context, const XML_Char *encoding)
{
  if (!parser)
  {
    return 0;
  }

  v67 = *(parser + 136);
  v68 = *(parser + 120);
  v65 = *(parser + 168);
  v66 = *(parser + 152);
  v63 = *(parser + 216);
  v64 = *(parser + 200);
  v5 = *(parser + 16);
  v61 = v5;
  v62 = *(parser + 232);
  v6 = *(parser + 18);
  v59 = v6;
  v60 = *(parser + 17);
  v7 = *(parser + 87);
  v8 = *parser;
  v9 = *(parser + 1);
  v10 = *(parser + 632);
  v11 = *(parser + 31);
  v69 = *(parser + 134);
  v70 = *(parser + 241);
  v12 = *(parser + 473);
  v13 = *(parser + 121);
  v14 = *(parser + 96);
  v72 = *(parser + 90);
  if (context)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(parser + 90);
  }

  if (*(parser + 472))
  {
    v73 = *(parser + 940);
    v16 = (parser + 24);
    v17 = &v73;
    v18 = encoding;
  }

  else
  {
    v16 = (parser + 24);
    v18 = encoding;
    v17 = 0;
  }

  v19 = parserCreate(v18, v16, v17, v15);
  v20 = v19;
  if (v19)
  {
    *(v19 + 120) = v68;
    *(v19 + 136) = v67;
    *(v19 + 152) = v66;
    *(v19 + 168) = v65;
    *(v19 + 200) = v64;
    *(v19 + 216) = v63;
    *(v19 + 232) = v62;
    *(v19 + 256) = v61;
    *(v19 + 272) = v60;
    *(v19 + 288) = v59;
    *(v19 + 696) = v7;
    if (v8 == v9)
    {
      v21 = v8;
    }

    else
    {
      v21 = v19;
    }

    *v19 = v8;
    *(v19 + 8) = v21;
    if (v11 != parser)
    {
      *(v19 + 248) = v11;
    }

    *(v19 + 632) = v10;
    *(v19 + 473) = v12;
    *(v19 + 968) = v13;
    *(v19 + 96) = v14;
    *(v19 + 944) = parser;
    *(v19 + 964) = v70;
    *(v19 + 536) = v69;
    if (context)
    {
      v22 = *(v19 + 720);
      v23 = *(v72 + 120);
      if (v23)
      {
        v24 = &v23[*(v72 + 136)];
      }

      else
      {
        v24 = 0;
      }

      while (v23 != v24)
      {
        v27 = *v23++;
        v26 = v27;
        if (v27)
        {
          v28 = poolCopyString((v22 + 160), *v26);
          if (!v28 || !lookup(parser, (v22 + 120), v28, 0x10uLL))
          {
            goto LABEL_24;
          }
        }
      }

      v30 = *(v72 + 80);
      if (v30)
      {
        v31 = &v30[*(v72 + 96)];
      }

      else
      {
        v31 = 0;
      }

      while (v30 != v31)
      {
        v33 = *v30++;
        v32 = v33;
        if (v33)
        {
          v34 = *(v22 + 184);
          if (v34 == *(v22 + 176))
          {
            if (!poolGrow((v22 + 160)))
            {
              goto LABEL_24;
            }

            v34 = *(v22 + 184);
          }

          *(v22 + 184) = v34 + 1;
          *v34 = 0;
          v35 = poolCopyString((v22 + 160), *v32);
          if (!v35)
          {
            goto LABEL_24;
          }

          v36 = lookup(parser, (v22 + 80), (v35 + 1), 0x18uLL);
          if (!v36)
          {
            goto LABEL_24;
          }

          v37 = v36;
          *(v36 + 16) = *(v32 + 16);
          v38 = *(v32 + 8);
          if (v38)
          {
            *(v36 + 17) = *(v32 + 17);
            v39 = (v22 + 304);
            if (v38 != (v72 + 304))
            {
              v39 = lookup(parser, (v22 + 120), *v38, 0);
            }

            *(v37 + 1) = v39;
          }
        }
      }

      v40 = *(v72 + 40);
      if (v40)
      {
        v41 = &v40[*(v72 + 56)];
      }

      else
      {
        v41 = 0;
      }

      while (v40 != v41)
      {
        v43 = *v40++;
        v42 = v43;
        if (v43)
        {
          v44 = poolCopyString((v22 + 160), *v42);
          if (!v44)
          {
            goto LABEL_24;
          }

          v45 = lookup(parser, (v22 + 40), v44, 0x28uLL);
          if (!v45)
          {
            goto LABEL_24;
          }

          v46 = v45;
          v47 = *(v42 + 24);
          if (v47)
          {
            v48 = (*(v20 + 24))(24 * v47);
            *(v46 + 4) = v48;
            if (!v48)
            {
              goto LABEL_24;
            }
          }

          v49 = *(v42 + 16);
          if (v49)
          {
            *(v46 + 2) = lookup(parser, (v22 + 80), *v49, 0);
          }

          v50 = *(v42 + 24);
          *(v46 + 6) = v50;
          *(v46 + 7) = v50;
          v51 = *(v42 + 8);
          if (v51)
          {
            *(v46 + 1) = lookup(parser, (v22 + 120), *v51, 0);
            v50 = *(v46 + 6);
          }

          if (v50 >= 1)
          {
            v52 = 0;
            v53 = 0;
            do
            {
              v54 = lookup(parser, (v22 + 80), **(*(v42 + 32) + v52), 0);
              v55 = *(v46 + 4) + v52;
              *v55 = v54;
              v56 = *(v42 + 32) + v52;
              *(v55 + 8) = *(v56 + 8);
              v57 = *(v56 + 16);
              if (v57)
              {
                v58 = poolCopyString((v22 + 160), v57);
                *(*(v46 + 4) + v52 + 16) = v58;
                if (!v58)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                *(v55 + 16) = 0;
              }

              ++v53;
              v52 += 24;
            }

            while (v53 < *(v46 + 6));
          }
        }
      }

      if (!copyEntityTable(parser, v22, (v22 + 160), v72) || !copyEntityTable(parser, (v22 + 264), (v22 + 160), v72 + 264) || (*(v22 + 256) = *(v72 + 256), *(v22 + 320) = *(v72 + 320), *(v22 + 328) = *(v72 + 328), *(v22 + 336) = *(v72 + 336), *(v22 + 348) = *(v72 + 348), *(v22 + 352) = *(v72 + 352), !setContext(v20, context)))
      {
LABEL_24:
        XML_ParserFree(v20);
        return 0;
      }

      v25 = externalEntityInitProcessor;
    }

    else
    {
      *(v19 + 960) = 1;
      XmlPrologStateInitExternalEntity((v19 + 512));
      v25 = externalParEntInitProcessor;
    }

    *(v20 + 544) = v25;
  }

  return v20;
}

uint64_t externalEntityInitProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(a1 + 544) = externalEntityInitProcessor2;

    return externalEntityInitProcessor2(a1, a2, a3, a4);
  }

  return result;
}

uint64_t externalParEntInitProcessor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  result = initializeEncoding(a1);
  if (!result)
  {
    *(*(a1 + 720) + 259) = 1;
    if (*(a1 + 536))
    {
      *(a1 + 544) = entityValueInitProcessor;

      return entityValueInitProcessor(a1, a2, a3, a4);
    }

    else
    {
      *(a1 + 544) = externalParEntProcessor;

      return externalParEntProcessor(a1, a2, a3, a4);
    }
  }

  return result;
}

void XML_UseParserAsHandlerArg(XML_Parser parser)
{
  if (parser)
  {
    *(parser + 1) = parser;
  }
}

XML_Error XML_UseForeignDTD(XML_Parser parser, XML_Bool useDTD)
{
  if (!parser)
  {
    return 41;
  }

  if (((*(parser + 238) - 1) & 0xFFFFFFFD) == 0)
  {
    return 26;
  }

  result = XML_ERROR_NONE;
  *(parser + 961) = useDTD;
  return result;
}

void XML_SetReturnNSTriplet(XML_Parser parser, int do_nst)
{
  if (parser)
  {
    if (((*(parser + 238) - 1) & 0xFFFFFFFD) != 0)
    {
      *(parser + 473) = do_nst != 0;
    }
  }
}

void XML_SetUserData(XML_Parser parser, void *userData)
{
  if (parser)
  {
    v3 = *parser;
    v2 = *(parser + 1);
    *parser = userData;
    if (v2 == v3)
    {
      *(parser + 1) = userData;
    }
  }
}

XML_Status XML_SetBase(XML_Parser parser, const XML_Char *base)
{
  if (parser)
  {
    v2 = parser;
    if (base)
    {
      parser = poolCopyString((*(parser + 90) + 160), base);
      if (!parser)
      {
        return parser;
      }
    }

    else
    {
      parser = 0;
    }

    *(v2 + 91) = parser;
    LODWORD(parser) = 1;
  }

  return parser;
}

const XML_Char *__cdecl XML_GetBase(const XML_Char *parser)
{
  if (parser)
  {
    return *(parser + 91);
  }

  return parser;
}

int XML_GetSpecifiedAttributeCount(XML_Parser parser)
{
  if (parser)
  {
    return *(parser + 193);
  }

  else
  {
    return -1;
  }
}

int XML_GetIdAttributeIndex(XML_Parser parser)
{
  if (parser)
  {
    return *(parser + 194);
  }

  else
  {
    return -1;
  }
}

void XML_SetElementHandler(XML_Parser parser, XML_StartElementHandler start, XML_EndElementHandler end)
{
  if (parser)
  {
    *(parser + 15) = start;
    *(parser + 16) = end;
  }
}

void XML_SetStartElementHandler(XML_Parser parser, XML_StartElementHandler handler)
{
  if (parser)
  {
    *(parser + 15) = handler;
  }
}

void XML_SetEndElementHandler(XML_Parser parser, XML_EndElementHandler handler)
{
  if (parser)
  {
    *(parser + 16) = handler;
  }
}

void XML_SetCharacterDataHandler(XML_Parser parser, XML_CharacterDataHandler handler)
{
  if (parser)
  {
    *(parser + 17) = handler;
  }
}

void XML_SetProcessingInstructionHandler(XML_Parser parser, XML_ProcessingInstructionHandler handler)
{
  if (parser)
  {
    *(parser + 18) = handler;
  }
}

void XML_SetCommentHandler(XML_Parser parser, XML_CommentHandler handler)
{
  if (parser)
  {
    *(parser + 19) = handler;
  }
}

void XML_SetCdataSectionHandler(XML_Parser parser, XML_StartCdataSectionHandler start, XML_EndCdataSectionHandler end)
{
  if (parser)
  {
    *(parser + 20) = start;
    *(parser + 21) = end;
  }
}

void XML_SetStartCdataSectionHandler(XML_Parser parser, XML_StartCdataSectionHandler start)
{
  if (parser)
  {
    *(parser + 20) = start;
  }
}

void XML_SetEndCdataSectionHandler(XML_Parser parser, XML_EndCdataSectionHandler end)
{
  if (parser)
  {
    *(parser + 21) = end;
  }
}

void XML_SetDefaultHandler(XML_Parser parser, XML_DefaultHandler handler)
{
  if (parser)
  {
    *(parser + 22) = handler;
    *(parser + 632) = 0;
  }
}

void XML_SetDefaultHandlerExpand(XML_Parser parser, XML_DefaultHandler handler)
{
  if (parser)
  {
    *(parser + 22) = handler;
    *(parser + 632) = 1;
  }
}

void XML_SetDoctypeDeclHandler(XML_Parser parser, XML_StartDoctypeDeclHandler start, XML_EndDoctypeDeclHandler end)
{
  if (parser)
  {
    *(parser + 23) = start;
    *(parser + 24) = end;
  }
}

void XML_SetStartDoctypeDeclHandler(XML_Parser parser, XML_StartDoctypeDeclHandler start)
{
  if (parser)
  {
    *(parser + 23) = start;
  }
}

void XML_SetEndDoctypeDeclHandler(XML_Parser parser, XML_EndDoctypeDeclHandler end)
{
  if (parser)
  {
    *(parser + 24) = end;
  }
}

void XML_SetUnparsedEntityDeclHandler(XML_Parser parser, XML_UnparsedEntityDeclHandler handler)
{
  if (parser)
  {
    *(parser + 25) = handler;
  }
}

void XML_SetNotationDeclHandler(XML_Parser parser, XML_NotationDeclHandler handler)
{
  if (parser)
  {
    *(parser + 26) = handler;
  }
}

void XML_SetNamespaceDeclHandler(XML_Parser parser, XML_StartNamespaceDeclHandler start, XML_EndNamespaceDeclHandler end)
{
  if (parser)
  {
    *(parser + 27) = start;
    *(parser + 28) = end;
  }
}

void XML_SetStartNamespaceDeclHandler(XML_Parser parser, XML_StartNamespaceDeclHandler start)
{
  if (parser)
  {
    *(parser + 27) = start;
  }
}

void XML_SetEndNamespaceDeclHandler(XML_Parser parser, XML_EndNamespaceDeclHandler end)
{
  if (parser)
  {
    *(parser + 28) = end;
  }
}

void XML_SetNotStandaloneHandler(XML_Parser parser, XML_NotStandaloneHandler handler)
{
  if (parser)
  {
    *(parser + 29) = handler;
  }
}

void XML_SetExternalEntityRefHandler(XML_Parser parser, XML_ExternalEntityRefHandler handler)
{
  if (parser)
  {
    *(parser + 30) = handler;
  }
}

void XML_SetExternalEntityRefHandlerArg(XML_Parser parser, void *arg)
{
  if (parser)
  {
    if (arg)
    {
      v2 = arg;
    }

    else
    {
      v2 = parser;
    }

    *(parser + 31) = v2;
  }
}

void XML_SetSkippedEntityHandler(XML_Parser parser, XML_SkippedEntityHandler handler)
{
  if (parser)
  {
    *(parser + 32) = handler;
  }
}

void XML_SetUnknownEncodingHandler(XML_Parser parser, XML_UnknownEncodingHandler handler, void *encodingHandlerData)
{
  if (parser)
  {
    *(parser + 33) = handler;
    *(parser + 62) = encodingHandlerData;
  }
}

void XML_SetElementDeclHandler(XML_Parser parser, XML_ElementDeclHandler eldecl)
{
  if (parser)
  {
    *(parser + 34) = eldecl;
  }
}

void XML_SetAttlistDeclHandler(XML_Parser parser, XML_AttlistDeclHandler attdecl)
{
  if (parser)
  {
    *(parser + 35) = attdecl;
  }
}

void XML_SetEntityDeclHandler(XML_Parser parser, XML_EntityDeclHandler handler)
{
  if (parser)
  {
    *(parser + 36) = handler;
  }
}

void XML_SetXmlDeclHandler(XML_Parser parser, XML_XmlDeclHandler xmldecl)
{
  if (parser)
  {
    *(parser + 37) = xmldecl;
  }
}

int XML_SetParamEntityParsing(XML_Parser parser, XML_ParamEntityParsing parsing)
{
  if (parser)
  {
    if (((*(parser + 238) - 1) & 0xFFFFFFFD) != 0)
    {
      *(parser + 241) = parsing;
      LODWORD(parser) = 1;
    }

    else
    {
      LODWORD(parser) = 0;
    }
  }

  return parser;
}

int XML_SetHashSalt(XML_Parser parser, unint64_t hash_salt)
{
  while (parser)
  {
    v2 = parser;
    parser = *(parser + 118);
    if (!parser)
    {
      if (((*(v2 + 238) - 1) & 0xFFFFFFFD) != 0)
      {
        *(v2 + 121) = hash_salt;
        LODWORD(parser) = 1;
      }

      else
      {
        LODWORD(parser) = 0;
      }

      return parser;
    }
  }

  return parser;
}

XML_Status XML_StopParser(XML_Parser parser, XML_Bool resumable)
{
  if (parser)
  {
    v2 = *(parser + 238);
    if (v2 > XML_STATUS_OK)
    {
      if (v2 == XML_STATUS_SUSPENDED)
      {
        v2 = XML_STATUS_ERROR;
        v3 = 36;
        goto LABEL_15;
      }

      if (v2 == (XML_STATUS_SUSPENDED|XML_STATUS_OK))
      {
        if (resumable)
        {
          v2 = XML_STATUS_ERROR;
          v3 = 33;
          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (v2 == XML_STATUS_ERROR)
      {
        v3 = 44;
        goto LABEL_15;
      }

      if (v2 == XML_STATUS_OK)
      {
        if (resumable)
        {
          if (*(parser + 960))
          {
            v2 = XML_STATUS_ERROR;
            v3 = 37;
LABEL_15:
            *(parser + 138) = v3;
            return v2;
          }

          v4 = 3;
LABEL_18:
          *(parser + 238) = v4;
          return 1;
        }

LABEL_16:
        v4 = 2;
        goto LABEL_18;
      }
    }

    XML_StopParser_cold_1();
  }

  return 0;
}

XML_Status XML_ResumeParser(XML_Parser parser)
{
  if (!parser)
  {
    return 0;
  }

  if (*(parser + 238) == 3)
  {
    *(parser + 238) = 1;
    v2 = callProcessor(parser, *(parser + 6), *(parser + 10), parser + 6);
    *(parser + 138) = v2;
    if (!v2)
    {
      v4 = *(parser + 238);
      if (v4 >= 2)
      {
        if (v4 == 3)
        {
          v3 = XML_STATUS_SUSPENDED;
        }

        else
        {
          v3 = XML_STATUS_OK;
        }
      }

      else
      {
        if (*(parser + 956))
        {
          *(parser + 238) = 2;
          return 1;
        }

        v3 = XML_STATUS_OK;
      }

      v5 = *(parser + 72);
      v6 = *(parser + 6);
      (*(*(parser + 38) + 96))();
      *(parser + 72) = *(parser + 6);
      return v3;
    }

    v3 = XML_STATUS_ERROR;
    *(parser + 71) = *(parser + 70);
    *(parser + 68) = errorProcessor;
  }

  else
  {
    v3 = XML_STATUS_ERROR;
    *(parser + 138) = 34;
  }

  return v3;
}

void XML_GetParsingStatus(XML_Parser parser, XML_ParsingStatus *status)
{
  if (parser)
  {
    if (!status)
    {
      XML_GetParsingStatus_cold_1();
    }

    *status = *(parser + 952);
  }
}

XML_Error XML_GetErrorCode(XML_Parser parser)
{
  if (parser)
  {
    return *(parser + 138);
  }

  else
  {
    return 41;
  }
}

XML_Index XML_GetCurrentByteIndex(XML_Parser parser)
{
  if (parser && (v1 = *(parser + 70)) != 0)
  {
    return *(parser + 9) + v1 - *(parser + 10);
  }

  else
  {
    return -1;
  }
}

int XML_GetCurrentByteCount(XML_Parser parser)
{
  if (parser)
  {
    v1 = *(parser + 71);
    if (v1)
    {
      v2 = *(parser + 70);
      v3 = v1 - v2;
      if (v2)
      {
        LODWORD(parser) = v3;
      }

      else
      {
        LODWORD(parser) = 0;
      }
    }

    else
    {
      LODWORD(parser) = 0;
    }
  }

  return parser;
}

const char *__cdecl XML_GetInputContext(const char *parser, int *offset, int *size)
{
  if (parser)
  {
    v3 = parser;
    v4 = *(parser + 70);
    if (v4)
    {
      parser = *(parser + 2);
      if (parser)
      {
        if (offset)
        {
          *offset = v4 - parser;
        }

        if (size)
        {
          *size = *(v3 + 14) - parser;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return parser;
}

XML_Size XML_GetCurrentLineNumber(XML_Size parser)
{
  if (parser)
  {
    v1 = parser;
    v2 = *(parser + 560);
    if (v2)
    {
      if (v2 >= *(parser + 576))
      {
        (*(*(parser + 304) + 96))();
        v1[72] = v1[70];
      }
    }

    return v1[102] + 1;
  }

  return parser;
}

XML_Size XML_GetCurrentColumnNumber(XML_Size parser)
{
  if (parser)
  {
    v1 = parser;
    v2 = *(parser + 560);
    if (v2)
    {
      if (v2 >= *(parser + 576))
      {
        (*(*(parser + 304) + 96))();
        v1[72] = v1[70];
      }
    }

    return v1[103];
  }

  return parser;
}

void XML_FreeContentModel(XML_Parser parser, XML_Content *model)
{
  if (parser)
  {
    (*(parser + 5))(model);
  }
}

void *__cdecl XML_MemMalloc(void *parser, size_t size)
{
  if (parser)
  {
    return (*(parser + 3))(size);
  }

  return parser;
}

void *__cdecl XML_MemRealloc(void *parser, void *ptr, size_t size)
{
  if (parser)
  {
    return (*(parser + 4))(ptr, size);
  }

  return parser;
}

void XML_MemFree(XML_Parser parser, void *ptr)
{
  if (parser)
  {
    (*(parser + 5))(ptr);
  }
}

void XML_DefaultCurrent(XML_Parser parser)
{
  if (parser && *(parser + 22))
  {
    v1 = *(parser + 73);
    if (v1)
    {
      v2 = *(parser + 57);
      v3 = *v1;
      v4 = v1[1];
    }

    else
    {
      v2 = *(parser + 38);
      v3 = *(parser + 70);
      v4 = *(parser + 71);
    }

    reportDefault(parser, v2, v3, v4);
  }
}

uint64_t reportDefault(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  if (*(a2 + 132))
  {
    v6 = a1[22];
    v7 = a1[1];
    v9 = (a4 - a3);

    return v6(v7, a3, v9);
  }

  else
  {
    if (a1[38] == a2)
    {
      v12 = a1 + 70;
      v13 = a1 + 71;
    }

    else
    {
      v12 = a1[73];
      v13 = v12 + 1;
    }

    do
    {
      v14 = a1[14];
      v16 = a1[13];
      v15 = (*(a2 + 112))(a2, &v17, a4, &v16, v14);
      *v13 = v17;
      result = (a1[22])(a1[1], a1[13], v16 - a1[13]);
      *v12 = v17;
    }

    while (v15 > 1);
  }

  return result;
}

const XML_LChar *__cdecl XML_ErrorString(XML_Error code)
{
  if (code - 1 > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_29EEAB500[code - 1];
  }
}

XML_Expat_Version XML_ExpatVersionInfo(void)
{
  v0 = 0x700000002;
  v1 = 1;
  result.major = v0;
  result.minor = HIDWORD(v0);
  result.micro = v1;
  return result;
}

uint64_t XML_SetBillionLaughsAttackProtectionMaximumAmplification(uint64_t result, float a2)
{
  if (result)
  {
    if (*(result + 944) || a2 < 1.0)
    {
      return 0;
    }

    else
    {
      *(result + 1000) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t XML_SetBillionLaughsAttackProtectionActivationThreshold(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (*(result + 944))
    {
      return 0;
    }

    else
    {
      *(result + 1008) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t XML_SetReparseDeferralEnabled(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1)
  {
    if (a2 <= 1)
    {
      *(a1 + 96) = a2;
      return 1;
    }
  }

  return result;
}

uint64_t testingAccountingGetCountBytesDirect(uint64_t result)
{
  if (result)
  {
    return *(result + 976);
  }

  return result;
}

uint64_t testingAccountingGetCountBytesIndirect(uint64_t result)
{
  if (result)
  {
    return *(result + 984);
  }

  return result;
}

uint64_t handleUnknownEncoding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  if (!v2)
  {
    return 18;
  }

  memset(__b, 255, sizeof(__b));
  v13 = 0;
  v15 = 0;
  v14 = 0;
  if (!v2(*(a1 + 496), a2, __b))
  {
LABEL_8:
    if (v15)
    {
      v15(v13);
    }

    return 18;
  }

  v5 = *(a1 + 24);
  v6 = XmlSizeOfUnknownEncoding();
  v7 = v5(v6);
  *(a1 + 480) = v7;
  if (v7)
  {
    v8 = XmlInitUnknownEncodingNS;
    if (!*(a1 + 472))
    {
      v8 = XmlInitUnknownEncoding;
    }

    v9 = v8();
    if (v9)
    {
      v10 = v9;
      result = 0;
      *(a1 + 488) = v13;
      *(a1 + 504) = v15;
      *(a1 + 304) = v10;
      return result;
    }

    goto LABEL_8;
  }

  if (v15)
  {
    v15(v13);
  }

  return 1;
}

uint64_t processXmlDecl(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v29 = -1;
  if (!accountingDiffTolerated(a1, 12, a3, a4, 4504, 0))
  {
    accountingReportStats(a1, " ABORTING\n");
    return 43;
  }

  v8 = XmlParseXmlDeclNS;
  if (!*(a1 + 472))
  {
    v8 = XmlParseXmlDecl;
  }

  v9 = (a1 + 560);
  if (!v8(a2, *(a1 + 304), a3, a4, (a1 + 560), &v31, &v30, &v33, &v32, &v29))
  {
    if (a2)
    {
      return 31;
    }

    else
    {
      return 30;
    }
  }

  if (!a2 && v29 == 1)
  {
    *(*(a1 + 720) + 258) = 1;
    if (*(a1 + 964) == 1)
    {
      *(a1 + 964) = 0;
    }
  }

  if (*(a1 + 296))
  {
    v10 = v33;
    if (v33)
    {
      v11 = *(a1 + 304);
      v12 = (*(v11 + 56))(v11, v33);
      v13 = poolStoreString((a1 + 880), v11, v10, v10 + v12);
      if (!v13)
      {
        return 1;
      }

      v10 = v13;
      *(a1 + 912) = *(a1 + 904);
    }

    if (v31)
    {
      v14 = poolStoreString((a1 + 880), *(a1 + 304), v31, v30 - *(*(a1 + 304) + 128));
      if (!v14)
      {
        return 1;
      }
    }

    else
    {
      v14 = 0;
    }

    (*(a1 + 296))(*(a1 + 8), v14, v10, v29);
    LOBYTE(v16) = v14 != 0;
  }

  else
  {
    v16 = *(a1 + 176);
    if (v16)
    {
      reportDefault(a1, *(a1 + 304), a3, a4);
      v10 = 0;
      LOBYTE(v16) = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  if (*(a1 + 464))
  {
    goto LABEL_26;
  }

  if (v32)
  {
    v21 = *(v32 + 128);
    v22 = *(a1 + 304);
    if (v21 != *(v22 + 128) || v21 == 2 && v32 != v22)
    {
      *v9 = v33;
      return 19;
    }

    *(a1 + 304) = v32;
LABEL_26:
    v17 = v16 ^ 1;
    if (v10)
    {
      v17 = 0;
    }

    if (v17)
    {
      return 0;
    }

    v18 = *(a1 + 888);
    v19 = *(a1 + 880);
    if (v18)
    {
      if (!v19)
      {
LABEL_48:
        result = 0;
        *(a1 + 880) = 0;
        *(a1 + 896) = 0;
        *(a1 + 912) = 0;
        *(a1 + 904) = 0;
        return result;
      }

      do
      {
        v20 = v19;
        v19 = *v19;
        *v20 = v18;
        v18 = v20;
      }

      while (v19);
    }

    else
    {
      v20 = *(a1 + 880);
    }

    *(a1 + 888) = v20;
    goto LABEL_48;
  }

  v23 = v33;
  if (!v33)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
    v24 = *(a1 + 304);
    v25 = (*(v24 + 56))(v24, v33);
    v10 = poolStoreString((a1 + 880), v24, v23, v23 + v25);
    if (!v10)
    {
      return 1;
    }
  }

  result = handleUnknownEncoding(a1, v10);
  v26 = *(a1 + 888);
  v27 = *(a1 + 880);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_53;
    }

    do
    {
      v28 = v27;
      v27 = *v27;
      *v28 = v26;
      v26 = v28;
    }

    while (v27);
  }

  else
  {
    v28 = *(a1 + 880);
  }

  *(a1 + 888) = v28;
LABEL_53:
  *(a1 + 880) = 0;
  *(a1 + 896) = 0;
  *(a1 + 912) = 0;
  *(a1 + 904) = 0;
  if (result == 18)
  {
    *v9 = v33;
  }

  return result;
}

_BYTE *normalizePublicId(_BYTE *result)
{
  v1 = result;
  for (i = result; ; ++i)
  {
    v3 = *i;
    if (v3 <= 0xC)
    {
      break;
    }

    if (v3 != 32 && v3 != 13)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 = result;
    if (v1 == result)
    {
      goto LABEL_15;
    }

    if (*(v1 - 1) != 32)
    {
      LOBYTE(v3) = 32;
LABEL_13:
      *v1++ = v3;
    }

    v5 = v1;
LABEL_15:
    v1 = v5;
  }

  if (v3 == 10)
  {
    goto LABEL_9;
  }

  if (*i)
  {
    goto LABEL_13;
  }

  if (v1 != result)
  {
    if (*(v1 - 1) == 32)
    {
      result = v1 - 1;
    }

    else
    {
      result = v1;
    }
  }

  *result = 0;
  return result;
}

_OWORD *getElementType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 720);
  v6 = poolStoreString(v5 + 20, a2, a3, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = lookup(a1, v5 + 5, v6, 0x28uLL);
  v9 = v8;
  if (v8)
  {
    if (*v8 != v7)
    {
      v5[23] = v5[24];
      return v9;
    }

    v5[24] = v5[23];
    if (setElementTypePrefix(a1, v8))
    {
      return v9;
    }

    return 0;
  }

  return v9;
}

uint64_t defineAttribute(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 24);
  if (a4 || a5)
  {
    if (v10 >= 1)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 24);
      while (*v11 != a2)
      {
        v11 += 3;
        if (!--v12)
        {
          goto LABEL_7;
        }
      }

      return 1;
    }

LABEL_7:
    if (a4 && !*(a1 + 16) && !*(a2 + 17))
    {
      *(a1 + 16) = a2;
    }
  }

  if (v10 != *(a1 + 28))
  {
    result = *(a1 + 32);
LABEL_16:
    v15 = *(a1 + 24);
    v16 = result + 24 * v15;
    *v16 = a2;
    *(v16 + 16) = a5;
    *(v16 + 8) = a3;
    if (!a3)
    {
      *(a2 + 16) = 1;
    }

    *(a1 + 24) = v15 + 1;
    return 1;
  }

  v13 = v10;
  if (!v10)
  {
    *(a1 + 28) = 8;
    result = (*(a6 + 24))(192);
    *(a1 + 32) = result;
    if (!result)
    {
      *(a1 + 28) = 0;
      return result;
    }

    goto LABEL_16;
  }

  if (v10 > 0x3FFFFFFF)
  {
    return 0;
  }

  result = (*(a6 + 32))(*(a1 + 32), 48 * v10);
  if (result)
  {
    *(a1 + 28) = 2 * v13;
    *(a1 + 32) = result;
    goto LABEL_16;
  }

  return result;
}

uint64_t doIgnoreSection(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, unsigned __int8 **a5, int a6)
{
  v11 = *a3;
  v17 = *a3;
  if (*(a1 + 304) == a2)
  {
    v12 = (a1 + 560);
    *(a1 + 560) = v11;
    v13 = (a1 + 568);
  }

  else
  {
    v12 = *(a1 + 584);
    v13 = v12 + 1;
  }

  *v12 = v11;
  *a3 = 0;
  v14 = (*(a2 + 24))(a2, v11, a4, &v17);
  if (!accountingDiffTolerated(a1, v14, v11, v17, 4412, 0))
  {
    accountingReportStats(a1, " ABORTING\n");
    return 43;
  }

  v15 = v17;
  *v13 = v17;
  if (v14 <= -2)
  {
    if (v14 != -4)
    {
      if (v14 != -2)
      {
LABEL_22:
        *v12 = v15;
        return 23;
      }

      if (!a6)
      {
        return 6;
      }

LABEL_20:
      result = 0;
      *a5 = v11;
      return result;
    }

LABEL_19:
    if (!a6)
    {
      return 2;
    }

    goto LABEL_20;
  }

  if (v14 == -1)
  {
    goto LABEL_19;
  }

  if (!v14)
  {
    *v12 = v15;
    return 4;
  }

  if (v14 != 42)
  {
    goto LABEL_22;
  }

  if (*(a1 + 176))
  {
    reportDefault(a1, a2, v11, v15);
    v15 = v17;
  }

  *a3 = v15;
  *a5 = v15;
  if (*(a1 + 952) == 2)
  {
    return 35;
  }

  else
  {
    return 0;
  }
}

uint64_t ignoreSectionProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a2;
  result = doIgnoreSection(a1, *(a1 + 304), &v6, a3, a4, *(a1 + 956) == 0);
  if (!result)
  {
    if (v6)
    {
      *(a1 + 544) = prologProcessor;

      return prologProcessor(a1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nextScaffoldPart(uint64_t a1)
{
  v2 = *(a1 + 720);
  if (!*(v2 + 352))
  {
    v3 = (*(a1 + 24))(4 * *(a1 + 936));
    *(v2 + 352) = v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }

    *v3 = 0;
  }

  v4 = *(v2 + 344);
  v5 = *(v2 + 340);
  v6 = *(v2 + 328);
  if (v4 >= v5)
  {
    if (v6)
    {
      if ((v5 & 0x80000000) == 0)
      {
        v6 = (*(a1 + 32))();
        if (v6)
        {
          v7 = 2 * *(v2 + 340);
LABEL_11:
          *(v2 + 340) = v7;
          *(v2 + 328) = v6;
          v4 = *(v2 + 344);
          goto LABEL_12;
        }
      }
    }

    else
    {
      v6 = (*(a1 + 24))(1024);
      if (v6)
      {
        v7 = 32;
        goto LABEL_11;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_12:
  *(v2 + 344) = v4 + 1;
  v8 = *(v2 + 348);
  if (v8)
  {
    v9 = (v6 + 32 * *(*(v2 + 352) + 4 * v8 - 4));
    v10 = v9[5];
    if (v10)
    {
      *(v6 + 32 * v10 + 28) = v4;
    }

    v11 = v9[6];
    if (!v11)
    {
      v9[4] = v4;
    }

    v9[5] = v4;
    v9[6] = v11 + 1;
  }

  v12 = v6 + 32 * v4;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  return v4;
}

uint64_t processEntity(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a4 == 2)
  {
    v8 = 624;
    v9 = 616;
  }

  else if (a4 == 1)
  {
    v8 = 608;
    v9 = 600;
  }

  else
  {
    *(a1 + 544) = internalEntityProcessor;
    v8 = 592;
    v9 = 584;
  }

  v10 = *(a1 + v8);
  if (v10)
  {
    *(a1 + v8) = *(v10 + 16);
  }

  else
  {
    v10 = (*(a1 + 24))(48);
    if (!v10)
    {
      return 1;
    }
  }

  *(a2 + 56) = 257;
  entityTrackingOnOpen(a1, a2, 6019);
  result = 0;
  *(a2 + 20) = 0;
  *(v10 + 16) = *(a1 + v9);
  *(a1 + v9) = v10;
  *(v10 + 24) = a2;
  *(v10 + 40) = a4;
  *(v10 + 32) = *(a1 + 636);
  *(v10 + 36) = a3;
  *v10 = 0;
  *(v10 + 8) = 0;
  if (!a4)
  {
    result = 0;
    *(a1 + 1040) = 1;
  }

  return result;
}

uint64_t entityTrackingOnOpen(int32x2_t *a1, uint64_t a2, int a3)
{
  do
  {
    v4 = a1;
    a1 = a1[118];
  }

  while (a1);
  v5 = vadd_s32(v4[127], 0x100000001);
  v4[127] = v5;
  v6 = v4[128].u32[0];
  if (v5.i32[1] > v6)
  {
    v4[128].i32[0] = v6 + 1;
  }

  return entityTrackingReportStats(v4, a2, "OPEN ", a3);
}

uint64_t reportComment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 152))
  {
    result = poolStoreString((a1 + 832), a2, a3 + 4 * *(a2 + 128), a4 - 3 * *(a2 + 128));
    if (!result)
    {
      return result;
    }

    v6 = result;
    normalizeLines(result);
    (*(a1 + 152))(*(a1 + 8), v6);
    v7 = *(a1 + 840);
    v8 = *(a1 + 832);
    if (v7)
    {
      if (!v8)
      {
LABEL_12:
        *(a1 + 832) = 0;
        *(a1 + 848) = 0;
        *(a1 + 864) = 0;
        result = 1;
        *(a1 + 856) = 0;
        return result;
      }

      do
      {
        v9 = v8;
        v8 = *v8;
        *v9 = v7;
        v7 = v9;
      }

      while (v8);
    }

    else
    {
      v9 = *(a1 + 832);
    }

    *(a1 + 840) = v9;
    goto LABEL_12;
  }

  if (*(a1 + 176))
  {
    reportDefault(a1, a2, a3, a4);
  }

  return 1;
}

void *accountingReportStats(void *result, const char *a2)
{
  do
  {
    v3 = result;
    result = result[118];
  }

  while (result);
  if (v3[124])
  {
    CurrentAmplification = accountingGetCurrentAmplification(v3);
    v5 = v3[122];
    return fprintf(*MEMORY[0x29EDCA610], "expat: Accounting(%p): Direct %10llu, indirect %10llu, amplification %8.2f%s", v3, v5, v3[123], CurrentAmplification, a2);
  }

  return result;
}

uint64_t getContext(uint64_t a1)
{
  v2 = *(a1 + 720);
  v3 = *(v2 + 312);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = *(a1 + 856);
    if (v5 == *(a1 + 848))
    {
      if (!poolGrow((a1 + 832)))
      {
        return 0;
      }

      v5 = *(a1 + 856);
    }

    *(a1 + 856) = v5 + 1;
    *v5 = 61;
    v6 = *(*(v2 + 312) + 40) - (*(a1 + 940) != 0);
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(a1 + 856);
        if (v8 == *(a1 + 848))
        {
          if (!poolGrow((a1 + 832)))
          {
            return 0;
          }

          v8 = *(a1 + 856);
        }

        v9 = *(*(*(v2 + 312) + 32) + i);
        *(a1 + 856) = v8 + 1;
        *v8 = v9;
      }
    }
  }

  v10 = *(v2 + 120);
  if (v10)
  {
    v11 = &v10[*(v2 + 136)];
  }

  else
  {
    v11 = 0;
  }

  while (v10 != v11)
  {
    v12 = v10;
    v14 = *v10++;
    v13 = v14;
    if (v14 && v13[1])
    {
      if (!v4)
      {
        v15 = *(a1 + 856);
        if (v15 == *(a1 + 848))
        {
          if (!poolGrow((a1 + 832)))
          {
            return 0;
          }

          v15 = *(a1 + 856);
        }

        *(a1 + 856) = v15 + 1;
        *v15 = 12;
      }

      v16 = **v13;
      if (v16)
      {
        v17 = (*v13 + 1);
        do
        {
          v18 = *(a1 + 856);
          if (v18 == *(a1 + 848))
          {
            if (!poolGrow((a1 + 832)))
            {
              return 0;
            }

            v16 = *(v17 - 1);
            v18 = *(a1 + 856);
          }

          *(a1 + 856) = v18 + 1;
          *v18 = v16;
          v19 = *v17++;
          v16 = v19;
        }

        while (v19);
      }

      v20 = *(a1 + 856);
      if (v20 == *(a1 + 848))
      {
        if (!poolGrow((a1 + 832)))
        {
          return 0;
        }

        v20 = *(a1 + 856);
      }

      v4 = 0;
      v10 = v12 + 1;
      *(a1 + 856) = v20 + 1;
      *v20 = 61;
      v21 = *(v13[1] + 10) - (*(a1 + 940) != 0);
      if (v21 >= 1)
      {
        for (j = 0; j != v21; ++j)
        {
          v23 = *(a1 + 856);
          if (v23 == *(a1 + 848))
          {
            if (!poolGrow((a1 + 832)))
            {
              return 0;
            }

            v23 = *(a1 + 856);
          }

          v24 = *(*(v13[1] + 4) + j);
          *(a1 + 856) = v23 + 1;
          *v23 = v24;
        }

        v4 = 0;
      }
    }
  }

  v25 = *v2;
  if (*v2)
  {
    v26 = &v25[*(v2 + 16)];
  }

  else
  {
    v26 = 0;
  }

  while (v25 != v26)
  {
    v27 = v25;
    v29 = *v25++;
    v28 = v29;
    if (v29 && v28[56])
    {
      if (!v4)
      {
        v30 = *(a1 + 856);
        if (v30 == *(a1 + 848))
        {
          if (!poolGrow((a1 + 832)))
          {
            return 0;
          }

          v30 = *(a1 + 856);
        }

        *(a1 + 856) = v30 + 1;
        *v30 = 12;
      }

      v4 = 0;
      v25 = v27 + 1;
      v31 = **v28;
      if (v31)
      {
        v32 = (*v28 + 1);
        do
        {
          v33 = *(a1 + 856);
          if (v33 == *(a1 + 848))
          {
            if (!poolGrow((a1 + 832)))
            {
              return 0;
            }

            v31 = *(v32 - 1);
            v33 = *(a1 + 856);
          }

          *(a1 + 856) = v33 + 1;
          *v33 = v31;
          v34 = *v32++;
          v31 = v34;
        }

        while (v34);
        v4 = 0;
      }
    }
  }

  v35 = *(a1 + 856);
  if (v35 != *(a1 + 848))
  {
    goto LABEL_59;
  }

  if (poolGrow((a1 + 832)))
  {
    v35 = *(a1 + 856);
LABEL_59:
    *(a1 + 856) = v35 + 1;
    *v35 = 0;
    return *(a1 + 864);
  }

  return 0;
}

uint64_t doCdataSection(uint64_t a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, unsigned __int8 **a5, int a6, int a7)
{
  v13 = *a3;
  v31 = *a3;
  if (*(a1 + 304) == a2)
  {
    v14 = (a1 + 560);
    *(a1 + 560) = v13;
    v15 = (a1 + 568);
  }

  else
  {
    v14 = *(a1 + 584);
    v15 = v14 + 1;
  }

  *v14 = v13;
  *a3 = 0;
  while (1)
  {
    v30 = v31;
    v16 = (*(a2 + 16))(a2);
    if (!accountingDiffTolerated(a1, v16, v31, v30, 4253, a7))
    {
      accountingReportStats(a1, " ABORTING\n");
      return 43;
    }

    v17 = v30;
    *v15 = v30;
    if (v16 <= 5)
    {
      if (v16 > -2)
      {
        if (v16 != -1)
        {
          if (!v16)
          {
            *v14 = v17;
            return 4;
          }

          goto LABEL_43;
        }
      }

      else if (v16 != -4)
      {
        if (v16 != -2)
        {
          goto LABEL_43;
        }

        if (!a6)
        {
          return 6;
        }

LABEL_36:
        result = 0;
        v26 = v31;
        goto LABEL_37;
      }

      if (!a6)
      {
        return 20;
      }

      goto LABEL_36;
    }

    if (v16 != 6)
    {
      break;
    }

    v28 = a6;
    v19 = a5;
    v20 = *(a1 + 136);
    if (!v20)
    {
      a5 = v19;
      a6 = v28;
      if (!*(a1 + 176))
      {
        goto LABEL_19;
      }

LABEL_18:
      reportDefault(a1, a2, v31, v17);
      goto LABEL_19;
    }

    if (*(a2 + 132))
    {
      v20(*(a1 + 8), v31, (v17 - v31));
    }

    else
    {
      while (1)
      {
        v21 = *(a1 + 112);
        v29 = *(a1 + 104);
        v22 = (*(a2 + 112))(a2, &v31, v17, &v29, v21);
        *v15 = v30;
        v20(*(a1 + 8), *(a1 + 104), v29 - *(a1 + 104));
        if (v22 <= 1)
        {
          break;
        }

        *v14 = v31;
        v17 = v30;
      }
    }

    a5 = v19;
    a6 = v28;
LABEL_19:
    v23 = *(a1 + 952);
    switch(v23)
    {
      case 1:
        if (*(a1 + 1040))
        {
          return 23;
        }

        break;
      case 2:
        *v14 = v30;
        return 35;
      case 3:
        result = 0;
        v26 = v30;
        *v14 = v30;
LABEL_37:
        *a5 = v26;
        return result;
    }

    v31 = v30;
    *v14 = v30;
  }

  if (v16 == 7)
  {
    v18 = *(a1 + 136);
    if (v18)
    {
      LOBYTE(v29) = 10;
      v18(*(a1 + 8), &v29, 1);
      goto LABEL_19;
    }

    if (*(a1 + 176))
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (v16 == 40)
  {
    v24 = *(a1 + 168);
    if (v24)
    {
      v24(*(a1 + 8));
    }

    else if (*(a1 + 176))
    {
      reportDefault(a1, a2, v31, v17);
    }

    v27 = v30;
    *a3 = v30;
    *a5 = v27;
    if (*(a1 + 952) == 2)
    {
      return 35;
    }

    else
    {
      return 0;
    }
  }

LABEL_43:
  *v14 = v17;
  return 23;
}

uint64_t cdataSectionProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v9 = a2;
  result = doCdataSection(a1, *(a1 + 304), &v9, a3, a4, *(a1 + 956) == 0, 0);
  if (!result)
  {
    v8 = v9;
    if (v9)
    {
      if (*(a1 + 944))
      {
        *(a1 + 544) = externalEntityContentProcessor;

        return externalEntityContentProcessor(a1, v8, a3, a4);
      }

      else
      {
        *(a1 + 544) = contentProcessor;

        return contentProcessor(a1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t externalEntityContentProcessor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = doContent(a1, 1, *(a1 + 304), a2, a3, a4, *(a1 + 956) == 0, 1);
  if (!v5 && !storeRawNames(a1))
  {
    return 1;
  }

  return v5;
}

uint64_t storeEntityValue(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, int a5, void *a6)
{
  v12 = *(a1 + 720);
  v14 = *(v12 + 208);
  v13 = (v12 + 208);
  v15 = *(a1 + 536);
  *(a1 + 536) = 1;
  if (!v14 && !poolGrow(v13))
  {
    return 1;
  }

  v33 = v15;
  while (1)
  {
    v35 = a3;
    v16 = (*(a2 + 40))(a2, a3, a4, &v35);
    if (!accountingDiffTolerated(a1, v16, a3, v35, 6424, a5))
    {
      accountingReportStats(a1, " ABORTING\n");
      result = 43;
      goto LABEL_69;
    }

    if (v16 <= 8)
    {
      if (v16 < 0)
      {
        if (v16 != -3)
        {
          if (v16 == -4)
          {
            result = 0;
            goto LABEL_69;
          }

          if (v16 == -1)
          {
            if (*(a1 + 304) == a2)
            {
              *(a1 + 560) = a3;
            }

            goto LABEL_55;
          }

LABEL_57:
          if (*(a1 + 304) == a2)
          {
            *(a1 + 560) = a3;
          }

          result = 23;
          goto LABEL_69;
        }

        v35 = &a3[*(a2 + 128)];
        goto LABEL_29;
      }

      if (v16 != 6)
      {
        if (v16 != 7)
        {
          if (!v16)
          {
            if (*(a1 + 304) == a2)
            {
              *(a1 + 560) = v35;
            }

LABEL_55:
            result = 4;
            goto LABEL_69;
          }

          goto LABEL_57;
        }

LABEL_29:
        v23 = *(v12 + 232);
        if (*(v12 + 224) != v23)
        {
LABEL_32:
          *(v12 + 232) = v23 + 1;
          *v23 = 10;
          goto LABEL_33;
        }

        if (poolGrow(v13))
        {
          v23 = *(v12 + 232);
          goto LABEL_32;
        }

LABEL_42:
        result = 1;
LABEL_69:
        v30 = v33;
        goto LABEL_70;
      }

LABEL_25:
      if (!poolAppend(v13, a2, a3, v35))
      {
        goto LABEL_42;
      }

      goto LABEL_33;
    }

    if (v16 == 9)
    {
      goto LABEL_25;
    }

    if (v16 == 10)
    {
      v24 = (*(a2 + 80))(a2, a3);
      if ((v24 & 0x80000000) != 0)
      {
        if (*(a1 + 304) == a2)
        {
          *(a1 + 560) = a3;
        }

        result = 14;
        goto LABEL_69;
      }

      v25 = XmlUtf8Encode(v24, v34);
      if (v25 >= 1)
      {
        v26 = v25;
        v27 = v34;
        do
        {
          v28 = *(v12 + 232);
          if (*(v12 + 224) == v28)
          {
            if (!poolGrow(v13))
            {
              goto LABEL_42;
            }

            v28 = *(v12 + 232);
          }

          v29 = *v27++;
          *(v12 + 232) = v28 + 1;
          *v28 = v29;
          --v26;
        }

        while (v26);
      }

      goto LABEL_33;
    }

    if (v16 != 28)
    {
      goto LABEL_57;
    }

    if (!*(a1 + 960) && *(a1 + 304) == a2)
    {
      *(a1 + 560) = a3;
      result = 10;
      goto LABEL_69;
    }

    v17 = poolStoreString((a1 + 832), a2, &a3[*(a2 + 128)], &v35[-*(a2 + 128)]);
    if (!v17)
    {
      goto LABEL_42;
    }

    result = lookup(a1, (v12 + 264), v17, 0);
    *(a1 + 856) = *(a1 + 864);
    if (!result)
    {
      *(v12 + 256) = *(v12 + 258);
      goto LABEL_69;
    }

    v19 = result;
    if (*(result + 56) || result == *(a1 + 640))
    {
      break;
    }

    if (!*(result + 24))
    {
      result = processEntity(a1, result, 0, 2);
      goto LABEL_69;
    }

    if (!*(a1 + 240))
    {
      goto LABEL_24;
    }

    *(v12 + 259) = 0;
    *(result + 56) = 1;
    entityTrackingOnOpen(a1, result, 6466);
    v20 = (*(a1 + 240))(*(a1 + 248), 0, *(v19 + 32), *(v19 + 24), *(v19 + 40));
    v21 = a1;
    if (!v20)
    {
      v31 = a1;
      do
      {
        v32 = v31;
        v31 = *(v31 + 944);
      }

      while (v31);
      entityTrackingReportStats(v32, v19, "CLOSE", 6470);
      --*(v32 + 1020);
      *(v19 + 56) = 0;
      result = 21;
      goto LABEL_69;
    }

    do
    {
      v22 = v21;
      v21 = *(v21 + 944);
    }

    while (v21);
    entityTrackingReportStats(v22, v19, "CLOSE", 6475);
    --*(v22 + 1020);
    *(v19 + 56) = 0;
    if (!*(v12 + 259))
    {
LABEL_24:
      *(v12 + 256) = *(v12 + 258);
    }

LABEL_33:
    a3 = v35;
  }

  v30 = v33;
  if (*(a1 + 304) == a2)
  {
    *(a1 + 560) = a3;
  }

  result = 12;
LABEL_70:
  *(a1 + 536) = v30;
  if (a6)
  {
    *a6 = v35;
  }

  return result;
}

uint64_t internalEntityProcessor(uint64_t a1)
{
  v1 = *(a1 + 584);
  if (!v1)
  {
    return 23;
  }

  v3 = *(v1 + 24);
  if (*(v3 + 57))
  {
    v4 = *(v3 + 8);
    v5 = v4 + *(v3 + 20);
    v6 = v4 + *(v3 + 16);
    v15 = v5;
    if (*(v3 + 58))
    {
      v7 = (**(a1 + 456))();
      result = doProlog(a1, *(a1 + 456), v5, v6, v7, v15, &v15, 0, 0);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = doContent(a1, *(v1 + 32), *(a1 + 456), v5, v6, &v15, 0, 1);
      if (result)
      {
        return result;
      }
    }

    if (v6 != v15)
    {
      v14 = *(a1 + 952);
      if (v14 == 3 || v14 == 1 && *(a1 + 1040))
      {
        result = 0;
        *(v3 + 20) = v15 - *(v3 + 8);
        return result;
      }
    }

    result = 0;
    *(v3 + 57) = 0;
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = v9;
      v9 = *(v9 + 944);
    }

    while (v9);
    entityTrackingReportStats(v10, *(v1 + 24), "CLOSE", 6096);
    --*(v10 + 1020);
    v11 = *(a1 + 584);
    if (v11 != v1)
    {
      internalEntityProcessor_cold_1();
    }

    *(v3 + 56) = 0;
    v12 = *(v11 + 16);
    *(a1 + 584) = v12;
    *(v1 + 16) = *(a1 + 592);
    *(a1 + 592) = v1;
    if (!v12)
    {
      v13 = prologProcessor;
      if (!*(v3 + 58))
      {
        v13 = contentProcessor;
      }

      *(a1 + 544) = v13;
    }

    result = 0;
  }

  *(a1 + 1040) = 1;
  return result;
}

uint64_t externalEntityInitProcessor2(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a2;
  v8 = (*(*(a1 + 304) + 8))();
  if (v8 == -2)
  {
    if (*(a1 + 956))
    {
      *(a1 + 560) = v6;
      return 6;
    }

    goto LABEL_12;
  }

  if (v8 == -1)
  {
    if (*(a1 + 956))
    {
      *(a1 + 560) = v6;
      return 5;
    }

    goto LABEL_12;
  }

  if (v8 != 14)
  {
LABEL_7:
    *(a1 + 544) = externalEntityInitProcessor3;
    return externalEntityInitProcessor3(a1, v6, a3, a4);
  }

  if (accountingDiffTolerated(a1, 14, v6, a2, 2841, 0))
  {
    v6 = a2;
    if (a2 != a3 || *(a1 + 956))
    {
      goto LABEL_7;
    }

LABEL_12:
    result = 0;
    *a4 = v6;
    return result;
  }

  accountingReportStats(a1, " ABORTING\n");
  return 43;
}

uint64_t externalEntityInitProcessor3(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a2;
  *(a1 + 560) = a2;
  v8 = (*(*(a1 + 304) + 8))();
  *(a1 + 568) = a2;
  switch(v8)
  {
    case -2:
      if (*(a1 + 956))
      {
        return 6;
      }

      goto LABEL_13;
    case -1:
      if (*(a1 + 956))
      {
        return 5;
      }

LABEL_13:
      result = 0;
      *a4 = v6;
      return result;
    case 12:
      result = processXmlDecl(a1, 1, v6, a2);
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 952);
      switch(v10)
      {
        case 1:
          if (*(a1 + 1040))
          {
            return 23;
          }

          break;
        case 2:
          return 35;
        case 3:
          result = 0;
          *a4 = a2;
          return result;
      }

      v6 = a2;
      break;
  }

  *(a1 + 544) = externalEntityContentProcessor;
  *(a1 + 636) = 1;
  return externalEntityContentProcessor(a1, v6, a3, a4);
}

uint64_t entityValueInitProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v6 = a2;
  *(a1 + 560) = a2;
  v8 = (**(a1 + 304))();
  v9 = a2;
  *(a1 + 568) = a2;
  if (v8 >= 1)
  {
    v10 = v6;
    while (1)
    {
      switch(v8)
      {
        case 14:
          if (!accountingDiffTolerated(a1, 14, v10, v9, 4711, 0))
          {
            accountingReportStats(a1, " ABORTING\n");
            return 43;
          }

          v9 = a2;
          *a4 = a2;
          v10 = a2;
          break;
        case 29:
          *a4 = v9;
          return 2;
        case 12:
          result = processXmlDecl(a1, 0, v6, v9);
          if (!result)
          {
            if (*(a1 + 952) == 2)
            {
              return 35;
            }

            else
            {
              *a4 = a2;
              *(a1 + 544) = entityValueProcessor;
              return entityValueProcessor(a1, a2, a3, a4);
            }
          }

          return result;
      }

      v6 = v9;
      *(a1 + 560) = v9;
      v8 = (**(a1 + 304))();
      v9 = a2;
      *(a1 + 568) = a2;
      if (v8 < 1)
      {
        goto LABEL_12;
      }
    }
  }

  v10 = v6;
LABEL_12:
  if (v8)
  {
    v11 = *(a1 + 956) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    result = 0;
    *a4 = v10;
  }

  else if ((v8 + 2) >= 3)
  {
    return storeEntityValue(a1, *(a1 + 304), v10, a3, 0, 0);
  }

  else
  {
    return (4 - v8);
  }

  return result;
}

uint64_t externalParEntProcessor(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  v6 = a2;
  v12 = a2;
  v8 = (**(a1 + 304))();
  v9 = v8;
  if (v8 <= 0)
  {
    if (v8)
    {
      v10 = *(a1 + 956) == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      if ((v8 + 2) < 3)
      {
        return (4 - v8);
      }

      goto LABEL_11;
    }

    result = 0;
    *a4 = v6;
  }

  else
  {
    if (v8 != 14)
    {
LABEL_11:
      *(a1 + 544) = prologProcessor;
      return doProlog(a1, *(a1 + 304), v6, a3, v9, v12, a4, *(a1 + 956) == 0, 1, 0);
    }

    if (accountingDiffTolerated(a1, 14, v6, v12, 4764, 0))
    {
      v6 = v12;
      v9 = (**(a1 + 304))();
      goto LABEL_11;
    }

    accountingReportStats(a1, " ABORTING\n");
    return 43;
  }

  return result;
}

uint64_t entityValueProcessor(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v8 = *(a1 + 304);
    ;
  }

  if (i)
  {
    v10 = *(a1 + 956) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    result = 0;
    *a4 = a2;
  }

  else if ((i + 2) >= 3)
  {
    return storeEntityValue(a1, v8, a2, a3, 0, 0);
  }

  else
  {
    return (4 - i);
  }

  return result;
}

uint64_t copyEntityTable(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a4;
  if (*a4)
  {
    v8 = &v7[*(a4 + 16)];
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    do
    {
      if (v7 == v8)
      {
        return 1;
      }

      v12 = *v7++;
      v11 = v12;
    }

    while (!v12);
    result = poolCopyString(a3, *v11);
    if (!result)
    {
      return result;
    }

    result = lookup(a1, a2, result, 0x40uLL);
    if (!result)
    {
      return result;
    }

    v14 = result;
    v15 = *(v11 + 24);
    if (!v15)
    {
      break;
    }

    result = poolCopyString(a3, v15);
    if (!result)
    {
      return result;
    }

    *(v14 + 24) = result;
    v16 = *(v11 + 32);
    if (v16)
    {
      if (v16 != v10)
      {
        result = poolCopyString(a3, *(v11 + 32));
        v9 = result;
        v10 = v16;
        if (!result)
        {
          return result;
        }
      }

      *(v14 + 32) = v9;
    }

    v17 = *(v11 + 40);
    if (v17)
    {
      result = poolCopyString(a3, v17);
      if (!result)
      {
        return result;
      }

      *(v14 + 40) = result;
    }

LABEL_28:
    v24 = *(v11 + 48);
    if (v24)
    {
      result = poolCopyString(a3, v24);
      if (!result)
      {
        return result;
      }

      *(v14 + 48) = result;
    }

    *(v14 + 58) = *(v11 + 58);
  }

  v25 = a2;
  v18 = *(v11 + 8);
  v19 = *(v11 + 16);
  if (!a3[3])
  {
    result = poolGrow(a3);
    if (!result)
    {
      return result;
    }
  }

  if (v19 >= 1)
  {
    v20 = v19 + 1;
    do
    {
      v21 = a3[3];
      if (v21 == a3[2])
      {
        result = poolGrow(a3);
        if (!result)
        {
          return result;
        }

        v21 = a3[3];
      }

      v22 = *v18++;
      a3[3] = (v21 + 1);
      *v21 = v22;
      --v20;
    }

    while (v20 > 1);
  }

  v23 = a3[4];
  a3[4] = a3[3];
  if (v23)
  {
    *(v14 + 8) = v23;
    *(v14 + 16) = *(v11 + 16);
    a2 = v25;
    goto LABEL_28;
  }

  return 0;
}

void *XmlPrologStateInitExternalEntity(void *result)
{
  *result = externalSubset0;
  result[2] = 0;
  return result;
}

void externalSubset0(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4)
{
  *a1 = externalSubset1;
  if (a2 != 12)
  {
    externalSubset1(a1, a2, a3, a4);
  }
}

uint64_t doctype0(uint64_t a1, int a2)
{
  v2 = doctype1;
  if (a2 == 15)
  {
    return 3;
  }

  result = 4;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t doctype1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = internalSubset;
  if (a2 > 17)
  {
    if (a2 == 18)
    {
      v11 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
      v6 = doctype3;
      if (v11 || (v12 = (*(a5 + 48))(a5, a3, a4, "PUBLIC"), v6 = doctype2, v12))
      {
        result = 3;
        goto LABEL_16;
      }

LABEL_15:
      result = 0xFFFFFFFFLL;
      v6 = error;
      goto LABEL_16;
    }

    if (a2 == 25)
    {
      result = 7;
      goto LABEL_16;
    }

LABEL_8:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  if (a2 == 15)
  {
    return 3;
  }

  if (a2 != 17)
  {
    goto LABEL_8;
  }

  result = 8;
  v6 = prolog2;
LABEL_16:
  *a1 = v6;
  return result;
}

void internalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (name > 14)
  {
    if (name > 25)
    {
      if (name == 26)
      {
        *ctx = doctype5;
        return;
      }

      if (name == 28)
      {
        return;
      }
    }

    else
    {
      if (name == 15)
      {
        return;
      }

      if (name == 16)
      {
        v6 = v4;
        if ((*(v4 + 48))(v4, &ExternalID[2 * *(v4 + 128)], SystemID, "ENTITY"))
        {
          *ctx = entity0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ATTLIST"))
        {
          *ctx = attlist0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "ELEMENT"))
        {
          *ctx = element0;
          return;
        }

        if ((*(v6 + 48))(v6, &ExternalID[2 * *(v6 + 128)], SystemID, "NOTATION"))
        {
          *ctx = notation0;
          return;
        }
      }
    }

    goto LABEL_22;
  }

  if (name != -4 && name != 11 && name != 13)
  {
LABEL_22:
    *ctx = error;
  }
}

uint64_t prolog2(uint64_t a1, int a2)
{
  HIDWORD(v3) = a2 - 11;
  LODWORD(v3) = a2 - 11;
  v2 = v3 >> 1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 0;
    }

    if (v2 == 9)
    {
      *a1 = error;
      return 2;
    }
  }

  else
  {
    if (!v2)
    {
      return 55;
    }

    if (v2 == 1)
    {
      return 56;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t doctype3(uint64_t a1, int a2)
{
  v2 = doctype4;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 5;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t doctype2(uint64_t a1, int a2)
{
  v2 = doctype3;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 27)
  {
    result = 6;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity0(uint64_t a1, int a2)
{
  v3 = entity1;
  result = 11;
  if (a2 != 15)
  {
    if (a2 == 22)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 18)
    {
      result = 9;
      v3 = entity2;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist0(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  result = 34;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element0(uint64_t a1, int a2)
{
  v2 = element1;
  if (a2 == 15)
  {
    return 39;
  }

  result = 40;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t notation0(uint64_t a1, uint64_t a2)
{
  v2 = notation1;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 18)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t doctype5(uint64_t a1, int a2)
{
  v2 = prolog2;
  if (a2 == 15)
  {
    return 3;
  }

  if (a2 == 17)
  {
    result = 8;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity1(uint64_t a1, int a2)
{
  v2 = entity7;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    result = 10;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity4;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity3;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity7(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 11;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 11;
      return 12;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "SYSTEM"))
      {
        v9 = entity9;
LABEL_13:
        *a1 = v9;
        return 11;
      }

      if ((*(a5 + 48))(a5, a3, a4, "PUBLIC"))
      {
        v9 = entity8;
        goto LABEL_13;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity9(uint64_t a1, int a2)
{
  v2 = entity10;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity8(uint64_t a1, int a2)
{
  v2 = entity9;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t declClose(uint64_t a1, int a2)
{
  if (a2 == 17)
  {
    v3 = internalSubset;
    if (!*(a1 + 20))
    {
      v3 = externalSubset1;
    }

    *a1 = v3;
    return *(a1 + 12);
  }

  if (a2 == 15)
  {
    return *(a1 + 12);
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t entity10(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 17)
  {
    v2 = externalSubset1;
    if (*(a1 + 20))
    {
      v2 = internalSubset;
    }

    v3 = 15;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

void externalSubset1(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, const xmlChar *a4)
{
  if (a2 > 25)
  {
    if (a2 != 26)
    {
      if (a2 != 34)
      {
        if (a2 == 33)
        {
          *a1 = condSect0;
          return;
        }

        goto LABEL_14;
      }

      v4 = a1[4];
      if (v4)
      {
        a1[4] = v4 - 1;
        return;
      }
    }

LABEL_12:
    *a1 = error;
    return;
  }

  if (a2 == -4)
  {
    if (!a1[4])
    {
      return;
    }

    goto LABEL_12;
  }

  if (a2 != 15)
  {
LABEL_14:
    internalSubset(a1, a2, a3, a4);
  }
}

uint64_t condSect0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "INCLUDE");
  v10 = condSect1;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "IGNORE");
    v10 = condSect2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 0;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t condSect1(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v2 = 0;
    *a1 = externalSubset1;
    ++*(a1 + 16);
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }

  return v2;
}

uint64_t condSect2(uint64_t a1, int a2)
{
  v2 = externalSubset1;
  if (a2 == 15)
  {
    return 0;
  }

  if (a2 == 25)
  {
    v3 = 58;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return v3;
}

uint64_t entity4(uint64_t a1, int a2)
{
  v2 = entity5;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 13;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity3(uint64_t a1, int a2)
{
  v2 = entity4;
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 27)
  {
    result = 14;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t entity5(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 != 18)
  {
    if (a2 == 17)
    {
      v6 = externalSubset1;
      if (*(a1 + 20))
      {
        v6 = internalSubset;
      }

      result = 15;
      goto LABEL_14;
    }

    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_13;
  }

  v8 = (*(a5 + 48))(a5, a3, a4, "NDATA");
  v6 = entity6;
  if (!v8)
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    v6 = error;
    goto LABEL_14;
  }

  result = 11;
LABEL_14:
  *a1 = v6;
  return result;
}

uint64_t entity6(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 11;
  }

  if (a2 == 18)
  {
    *a1 = declClose;
    *(a1 + 12) = 11;
    return 16;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t attlist1(uint64_t a1, int a2)
{
  v2 = attlist2;
  if (a2 > 17)
  {
    v3 = 22;
    if (a2 == 18 || a2 == 41)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 33;
    }

    if (a2 == 17)
    {
      v2 = externalSubset1;
      if (*(a1 + 20))
      {
        v2 = internalSubset;
      }

      v3 = 33;
      goto LABEL_12;
    }
  }

  v3 = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
LABEL_12:
    *a1 = v2;
    return v3;
  }

  return 59;
}

uint64_t attlist2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 33;
    case 23:
      v11 = attlist3;
LABEL_13:
      *a1 = v11;
      return 33;
    case 18:
      for (i = 0; i != 8; ++i)
      {
        if ((*(a5 + 48))(a5, a3, a4, attlist2_types[i]))
        {
          *a1 = attlist8;
          return (i + 23);
        }
      }

      if (!(*(a5 + 48))(a5, a3, a4, "NOTATION"))
      {
        break;
      }

      v11 = attlist5;
      goto LABEL_13;
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t attlist8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 37;
    goto LABEL_16;
  }

  if (a2 != 20)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_15;
  }

  v10 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "IMPLIED");
  v5 = attlist1;
  if (!v10)
  {
    v12 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "REQUIRED");
    v5 = attlist1;
    if (v12)
    {
      result = 36;
      goto LABEL_16;
    }

    v13 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "FIXED");
    v5 = attlist9;
    if (v13)
    {
      result = 33;
      goto LABEL_16;
    }

LABEL_15:
    result = 0xFFFFFFFFLL;
    v5 = error;
    goto LABEL_16;
  }

  result = 35;
LABEL_16:
  *a1 = v5;
  return result;
}

uint64_t attlist5(uint64_t a1, int a2)
{
  v3 = attlist6;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 23 || (result = 0xFFFFFFFFLL, v3 = error, a2 != 28) || *(a1 + 20))
    {
      *a1 = v3;
    }

    else
    {
      return 59;
    }
  }

  return result;
}

uint64_t attlist3(uint64_t a1, int a2)
{
  result = 31;
  v4 = attlist4;
  if ((a2 - 18) < 2)
  {
    goto LABEL_4;
  }

  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 41 || (result = 0xFFFFFFFFLL, v4 = error, a2 != 28) || *(a1 + 20))
  {
LABEL_4:
    *a1 = v4;
    return result;
  }

  return 59;
}

uint64_t attlist9(uint64_t a1, int a2)
{
  v2 = attlist1;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 27)
  {
    result = 38;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist6(uint64_t a1, int a2)
{
  v2 = attlist7;
  if (a2 == 15)
  {
    return 33;
  }

  if (a2 == 18)
  {
    result = 32;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t attlist7(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist6;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t attlist4(uint64_t a1, int a2)
{
  v3 = attlist8;
  result = 33;
  if (a2 != 15)
  {
    if (a2 == 24)
    {
LABEL_5:
      *a1 = v3;
      return result;
    }

    if (a2 == 21)
    {
      v3 = attlist3;
      goto LABEL_5;
    }

    result = 0xFFFFFFFFLL;
    v3 = error;
    if (a2 != 28 || *(a1 + 20))
    {
      goto LABEL_5;
    }

    return 59;
  }

  return result;
}

uint64_t element1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 23:
      *a1 = element2;
      *(a1 + 8) = 1;
      return 44;
    case 18:
      if ((*(a5 + 48))(a5, a3, a4, "EMPTY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 42;
      }

      if ((*(a5 + 48))(a5, a3, a4, "ANY"))
      {
        *a1 = declClose;
        *(a1 + 12) = 39;
        return 41;
      }

      break;
    default:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element2(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = 51;
  v7 = element7;
  if (a2 > 29)
  {
    if (a2 > 31)
    {
      if (a2 != 32)
      {
        if (a2 == 41)
        {
          goto LABEL_24;
        }

        goto LABEL_14;
      }

      result = 54;
    }

    else if (a2 == 30)
    {
      result = 53;
    }

    else
    {
      result = 52;
    }

    v7 = element7;
    goto LABEL_24;
  }

  if (a2 > 19)
  {
    if (a2 == 20)
    {
      v8 = (*(a5 + 48))(a5, a3 + *(a5 + 128), a4, "PCDATA");
      v7 = element3;
      if (!v8)
      {
LABEL_23:
        result = 0xFFFFFFFFLL;
        v7 = error;
        goto LABEL_24;
      }

      result = 43;
      goto LABEL_24;
    }

    if (a2 == 23)
    {
      *(a1 + 8) = 2;
      result = 44;
      v7 = element6;
      goto LABEL_24;
    }

LABEL_14:
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_23;
  }

  if (a2 == 15)
  {
    return 39;
  }

  if (a2 != 18)
  {
    goto LABEL_14;
  }

LABEL_24:
  *a1 = v7;
  return result;
}

uint64_t element3(uint64_t a1, int a2)
{
  if (a2 > 23)
  {
    if (a2 == 36)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    }

    if (a2 == 24)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 45;
    }
  }

  else
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element4;
      return 39;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element6(uint64_t a1, int a2)
{
  if (a2 <= 29)
  {
    switch(a2)
    {
      case 15:
        return 39;
      case 18:
        goto LABEL_11;
      case 23:
        ++*(a1 + 8);
        return 44;
    }
  }

  else
  {
    if (a2 <= 31)
    {
      *a1 = element7;
      if (a2 == 30)
      {
        return 53;
      }

      else
      {
        return 52;
      }
    }

    if (a2 == 32)
    {
      *a1 = element7;
      return 54;
    }

    if (a2 == 41)
    {
LABEL_11:
      *a1 = element7;
      return 51;
    }
  }

  if (a2 == 28 && !*(a1 + 20))
  {
    return 59;
  }

  *a1 = error;
  return 0xFFFFFFFFLL;
}

uint64_t element7(uint64_t a1, int a2)
{
  if (a2 <= 34)
  {
    if (a2 == 15)
    {
      return 39;
    }

    if (a2 == 21)
    {
      *a1 = element6;
      return 49;
    }

    if (a2 != 24)
    {
      goto LABEL_17;
    }

    v4 = *(a1 + 8) - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 45;
  }

  else
  {
    if (a2 <= 36)
    {
      if (a2 == 35)
      {
        v5 = *(a1 + 8) - 1;
        *(a1 + 8) = v5;
        if (!v5)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 47;
      }

      else
      {
        v2 = *(a1 + 8) - 1;
        *(a1 + 8) = v2;
        if (!v2)
        {
          *a1 = declClose;
          *(a1 + 12) = 39;
        }

        return 46;
      }
    }

    if (a2 != 37)
    {
      if (a2 == 38)
      {
        *a1 = element6;
        return 50;
      }

LABEL_17:
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      *a1 = error;
      return 0xFFFFFFFFLL;
    }

    v6 = *(a1 + 8) - 1;
    *(a1 + 8) = v6;
    if (!v6)
    {
      *a1 = declClose;
      *(a1 + 12) = 39;
    }

    return 48;
  }
}

uint64_t element4(uint64_t a1, int a2)
{
  v2 = element5;
  if (a2 == 15)
  {
    return 39;
  }

  result = 51;
  if (a2 != 18 && a2 != 41)
  {
    result = 0xFFFFFFFFLL;
    v2 = error;
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }
  }

  *a1 = v2;
  return result;
}

uint64_t element5(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 39;
    case 21:
      *a1 = element4;
      return 39;
    case 36:
      *a1 = declClose;
      *(a1 + 12) = 39;
      return 46;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t notation1(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 != 18)
  {
    if (a2 == 28 && !*(a1 + 20))
    {
      return 59;
    }

    goto LABEL_10;
  }

  v9 = (*(a5 + 48))(a5, a3, a4, "SYSTEM");
  v10 = notation3;
  if (!v9)
  {
    v11 = (*(a5 + 48))(a5, a3, a4, "PUBLIC");
    v10 = notation2;
    if (!v11)
    {
LABEL_10:
      result = 0xFFFFFFFFLL;
      v10 = error;
      goto LABEL_11;
    }
  }

  result = 17;
LABEL_11:
  *a1 = v10;
  return result;
}

uint64_t notation3(uint64_t a1, int a2)
{
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    *a1 = declClose;
    *(a1 + 12) = 17;
    return 19;
  }

  else if (a2 != 28 || *(a1 + 20))
  {
    *a1 = error;
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 59;
  }
}

uint64_t notation2(uint64_t a1, int a2)
{
  v2 = notation4;
  if (a2 == 15)
  {
    return 17;
  }

  if (a2 == 27)
  {
    result = 21;
LABEL_4:
    *a1 = v2;
    return result;
  }

  result = 0xFFFFFFFFLL;
  v2 = error;
  if (a2 != 28 || *(a1 + 20))
  {
    goto LABEL_4;
  }

  return 59;
}

uint64_t notation4(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 15:
      return 17;
    case 17:
      v3 = internalSubset;
      if (!*(a1 + 20))
      {
        v3 = externalSubset1;
      }

      *a1 = v3;
      return 20;
    case 27:
      *a1 = declClose;
      *(a1 + 12) = 17;
      return 19;
    default:
      if (a2 != 28 || *(a1 + 20))
      {
        *a1 = error;
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 59;
      }
  }
}

uint64_t doctype4(uint64_t a1, int a2)
{
  v2 = internalSubset;
  switch(a2)
  {
    case 15:
      return 3;
    case 25:
      v3 = 7;
      break;
    case 17:
      v3 = 8;
      v2 = prolog2;
      break;
    default:
      v3 = 0xFFFFFFFFLL;
      v2 = error;
      if (a2 == 28 && !*(a1 + 20))
      {
        return 59;
      }

      break;
  }

  *a1 = v2;
  return v3;
}

uint64_t XmlUtf8Encode(unsigned int a1, _BYTE *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 <= 0x7F)
  {
    *a2 = a1;
    return 1;
  }

  if (a1 <= 0x7FF)
  {
    *a2 = (a1 >> 6) | 0xC0;
    a2[1] = a1 & 0x3F | 0x80;
    return 2;
  }

  if (!HIWORD(a1))
  {
    *a2 = (a1 >> 12) | 0xE0;
    a2[1] = (a1 >> 6) & 0x3F | 0x80;
    a2[2] = a1 & 0x3F | 0x80;
    return 3;
  }

  if (HIWORD(a1) > 0x10u)
  {
    return 0;
  }

  *a2 = (a1 >> 18) | 0xF0;
  a2[1] = (a1 >> 12) & 0x3F | 0x80;
  a2[2] = (a1 >> 6) & 0x3F | 0x80;
  a2[3] = a1 & 0x3F | 0x80;
  return 4;
}

uint64_t XmlUtf16Encode(unsigned int a1, _WORD *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (!HIWORD(a1))
  {
    *a2 = a1;
    return 1;
  }

  if (HIWORD(a1) > 0x10u)
  {
    return 0;
  }

  *a2 = ((a1 + 67043328) >> 10) - 10240;
  a2[1] = a1 & 0x3FF | 0xDC00;
  return 2;
}

void *XmlInitUnknownEncoding(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(a1, latin1_encoding, 0x1D0uLL);
  for (i = 0; i != 128; ++i)
  {
    if (*(&latin1_encoding[17] + i))
    {
      v9 = *(&latin1_encoding[17] + i) == 28;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && i != *(a2 + 4 * i))
    {
      return 0;
    }
  }

  v10 = 0;
  v11 = 993;
  do
  {
    v12 = *(a2 + 4 * v10);
    if (v12 == -1)
    {
      *(a1 + v10 + 136) = 1;
      goto LABEL_25;
    }

    if ((v12 & 0x80000000) != 0)
    {
      result = 0;
      if (!a3 || v12 < 0xFFFFFFFC)
      {
        return result;
      }

      *(a1 + v10 + 136) = 3 - v12;
      *(a1 + v11 - 1) = 0;
      *(a1 + v10 + 240) = 0;
      goto LABEL_38;
    }

    if (v12 > 0x7F)
    {
      if ((checkCharRefNumber(*(a2 + 4 * v10)) & 0x80000000) == 0)
      {
        if (WORD1(v12))
        {
          return 0;
        }

        v19 = v12 >> 5;
        if ((namingBitmap[v19 | (8 * nmstrtPages[v12 >> 8])] & (1 << v12)) != 0)
        {
          v20 = a1 + v10;
          v21 = 22;
        }

        else
        {
          v20 = a1 + v10;
          if ((namingBitmap[v19 | (8 * namePages[v12 >> 8])] & (1 << v12)) != 0)
          {
            v21 = 26;
          }

          else
          {
            v21 = 28;
          }
        }

        v20[136] = v21;
        *(a1 + v11 - 1) = XmlUtf8Encode(v12, a1 + v11);
        *(a1 + v10 + 240) = v12;
        goto LABEL_38;
      }

      *(a1 + v10 + 136) = 0;
LABEL_25:
      *(a1 + v10 + 240) = -1;
      *(a1 + v11 - 1) = 1;
      goto LABEL_38;
    }

    v13 = *(&latin1_encoding[17] + v12);
    if (*(&latin1_encoding[17] + v12))
    {
      v14 = v13 == 28;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v10 != v12)
    {
      return 0;
    }

    *(a1 + v10 + 136) = v13;
    v16 = a1 + v11;
    *(v16 - 1) = 1;
    *v16 = v12;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = -1;
    }

    *(a1 + v10 + 240) = v17;
LABEL_38:
    ++v10;
    v11 += 4;
  }

  while (v10 != 256);
  a1[58] = a3;
  a1[59] = a4;
  if (a3)
  {
    a1[49] = unknown_isName;
    a1[50] = unknown_isName;
    a1[51] = unknown_isName;
    a1[52] = unknown_isNmstrt;
    a1[53] = unknown_isNmstrt;
    a1[54] = unknown_isNmstrt;
    a1[55] = unknown_isInvalid;
    a1[56] = unknown_isInvalid;
    a1[57] = unknown_isInvalid;
  }

  a1[14] = unknown_toUtf8;
  a1[15] = unknown_toUtf16;
  return a1;
}

uint64_t checkCharRefNumber(uint64_t result)
{
  v1 = result >> 8;
  if (((result >> 8) - 216) < 8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 == 255)
  {
    if (result >> 1 == 0x7FFF)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v1 && !*(&latin1_encoding[17] + result))
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t unknown_isName(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * namePages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isNmstrt(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (HIWORD(v1))
  {
    return 0;
  }

  else
  {
    return namingBitmap[(v1 >> 5) | (8 * nmstrtPages[v1 >> 8])] & (1 << v1);
  }
}

uint64_t unknown_isInvalid(uint64_t a1)
{
  v1 = (*(a1 + 464))(*(a1 + 472));
  if (WORD1(v1))
  {
    return 1;
  }

  else
  {
    return checkCharRefNumber(v1) >> 31;
  }
}

uint64_t unknown_toUtf8(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, void **a4, uint64_t a5)
{
  v6 = *a2;
  if (v6 == a3)
  {
    return 0;
  }

  v11 = a1 + 992;
  v12 = a1 + 136;
  while (1)
  {
    v13 = (v11 + 4 * *v6);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (!v16)
    {
      break;
    }

    if (a5 - *a4 < v15)
    {
      return 2;
    }

    v17 = (v6 + 1);
LABEL_8:
    *a2 = v17;
    memcpy(*a4, v14, v15);
    *a4 = *a4 + v15;
    v6 = *a2;
    if (*a2 == a3)
    {
      return 0;
    }
  }

  v18 = (*(a1 + 464))(*(a1 + 472));
  v19 = XmlUtf8Encode(v18, v21);
  if (a5 - *a4 >= v19)
  {
    v15 = v19;
    v17 = *a2 + *(v12 + **a2) - 3;
    v14 = v21;
    goto LABEL_8;
  }

  return 2;
}

uint64_t unknown_toUtf16(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4, _WORD *a5)
{
  v6 = *a2;
  if (v6 >= a3)
  {
    return 0;
  }

  v11 = a1 + 480;
  v12 = a1 + 136;
  v13 = *a4;
  while (v13 < a5)
  {
    v14 = *(v11 + 2 * *v6);
    if (v14)
    {
      v15 = (v6 + 1);
    }

    else
    {
      v14 = (*(a1 + 464))(*(a1 + 472));
      v15 = *a2 + *(v12 + **a2) - 3;
    }

    *a2 = v15;
    v16 = *a4;
    *v16 = v14;
    v13 = v16 + 1;
    *a4 = v13;
    v6 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }
  }

  if (v13 == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t doParseXmlDecl(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void *a8, uint64_t *a9, void *a10, int *a11)
{
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v17 = *(a3 + 128);
  v37 = a4 + 5 * v17;
  v18 = a5 - 2 * v17;
  v19 = parsePseudoAttribute(a3, v37, v18, &v35, &v34, &v36, &v37);
  i = v35;
  if (v19)
  {
    v21 = v35 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_6;
  }

  v23 = v34;
  if ((*(a3 + 48))(a3, v35, v34, "version"))
  {
    if (a7)
    {
      *a7 = v36;
    }

    v25 = v37;
    if (a8)
    {
      *a8 = v37;
    }

    if (!parsePseudoAttribute(a3, v25, v18, &v35, &v34, &v36, &v37))
    {
      goto LABEL_6;
    }

    i = v35;
    if (!v35)
    {
      if (!a2)
      {
        return 1;
      }

LABEL_6:
      i = v37;
      goto LABEL_7;
    }

    v23 = v34;
  }

  else if (!a2)
  {
    goto LABEL_7;
  }

  if (!(*(a3 + 48))(a3, i, v23, "encoding"))
  {
LABEL_27:
    v27 = (*(a3 + 48))(a3, i, v23, "standalone");
    if (a2 || !v27)
    {
      goto LABEL_7;
    }

    i = v36;
    v28 = v37;
    if ((*(a3 + 48))(a3, v36, v37 - *(a3 + 128), "yes"))
    {
      if (!a11)
      {
LABEL_38:
        for (i = v28; ; i += *(a3 + 128))
        {
          v40 = i;
          v38 = &v39;
          (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
          v30 = v38 == &v39 ? -1 : v39;
          v31 = v30 > 0x20;
          v32 = (1 << v30) & 0x100002600;
          if (v31 || v32 == 0)
          {
            break;
          }
        }

        if (i == v18)
        {
          return 1;
        }

LABEL_7:
        result = 0;
        *a6 = i;
        return result;
      }

      v29 = 1;
    }

    else
    {
      if (!(*(a3 + 48))(a3, i, v28 - *(a3 + 128), "no"))
      {
        goto LABEL_7;
      }

      if (!a11)
      {
        goto LABEL_38;
      }

      v29 = 0;
    }

    *a11 = v29;
    goto LABEL_38;
  }

  i = v36;
  v40 = v36;
  v38 = &v39;
  (*(a3 + 112))(a3, &v40, v18, &v38, &v40);
  if (v38 == &v39 || (v39 & 0xFFFFFFDF) - 65 > 0x19)
  {
    goto LABEL_7;
  }

  if (a9)
  {
    *a9 = i;
  }

  v26 = v37;
  if (a10)
  {
    *a10 = a1(a3, i, v37 - *(a3 + 128));
  }

  if (!parsePseudoAttribute(a3, v26, v18, &v35, &v34, &v36, &v37))
  {
    goto LABEL_6;
  }

  i = v35;
  if (v35)
  {
    v23 = v34;
    goto LABEL_27;
  }

  return 1;
}

uint64_t (**findEncoding(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = v10;
  v9 = a2;
  (*(a1 + 112))(a1, &v9, a3, &v8, &v11 + 15);
  if (v9 == a3)
  {
    *v8 = 0;
    if (!streqci(v10, "UTF-16") || *(v4 + 32) != 2)
    {
      v7 = 0;
      while (!streqci(v10, getEncodingIndex_encodingNames[v7]))
      {
        if (++v7 == 6)
        {
          goto LABEL_2;
        }
      }

      v4 = (&encodings)[v7];
    }
  }

  else
  {
LABEL_2:
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t (**findEncodingNS(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v4 = a1;
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = v10;
  v9 = a2;
  (*(a1 + 112))(a1, &v9, a3, &v8, &v11 + 15);
  if (v9 == a3)
  {
    *v8 = 0;
    if (!streqci(v10, "UTF-16") || *(v4 + 32) != 2)
    {
      v7 = 0;
      while (!streqci(v10, getEncodingIndex_encodingNames[v7]))
      {
        if (++v7 == 6)
        {
          goto LABEL_2;
        }
      }

      v4 = (&encodingsNS)[v7];
    }
  }

  else
  {
LABEL_2:
    v4 = 0;
  }

  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void *XmlInitUnknownEncodingNS(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = XmlInitUnknownEncoding(a1, a2, a3, a4);
  if (result)
  {
    *(result + 194) = 23;
  }

  return result;
}

uint64_t normal_cdataSectionTok(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v6 = a2;
  result = 0;
  v9 = a1 + 136;
  v10 = a1[*a2 + 136];
  if (v10 > 6)
  {
    if (a1[*a2 + 136] > 8u)
    {
      if (v10 == 9)
      {
        if ((a3 - (a2 + 1)) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (v9[a2[1]] == 10)
        {
          v6 = a2 + 2;
        }

        else
        {
          v6 = a2 + 1;
        }
      }

      else
      {
        if (v10 != 10)
        {
          goto LABEL_34;
        }

        v6 = a2 + 1;
      }

      result = 7;
      goto LABEL_62;
    }

    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_62;
      }

      goto LABEL_34;
    }

    if ((a3 - a2) >= 4)
    {
      if (!(*(a1 + 57))(a1, a2))
      {
        v11 = v6 + 4;
        goto LABEL_35;
      }

      goto LABEL_61;
    }

    return 4294967294;
  }

  if (a1[*a2 + 136] > 4u)
  {
    if (v10 == 5)
    {
      if ((a3 - a2) >= 2)
      {
        if (!(*(a1 + 55))(a1, a2))
        {
          v11 = v6 + 2;
          goto LABEL_35;
        }

        goto LABEL_61;
      }
    }

    else
    {
      if (v10 != 6)
      {
        goto LABEL_34;
      }

      if ((a3 - a2) >= 3)
      {
        if (!(*(a1 + 56))(a1, a2))
        {
          v11 = v6 + 3;
          goto LABEL_35;
        }

LABEL_61:
        result = 0;
        goto LABEL_62;
      }
    }

    return 4294967294;
  }

  if (v10 >= 2)
  {
    if (v10 == 4)
    {
      v11 = a2 + 1;
      if ((a3 - (a2 + 1)) >= 1)
      {
        if (*v11 != 93)
        {
          goto LABEL_35;
        }

        if ((a3 - (a2 + 2)) >= 1)
        {
          if (a2[2] == 62)
          {
            v6 = a2 + 3;
            result = 40;
            goto LABEL_62;
          }

LABEL_35:
          v12 = a3 - v11;
          if ((a3 - v11) >= 1)
          {
            do
            {
              v13 = v9[*v11];
              result = 6;
              if (v13 > 5)
              {
                if (v13 == 6)
                {
                  if (v12 < 3)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 56))(a1, v11))
                  {
                    break;
                  }

                  v14 = 3;
                }

                else if (v13 == 7)
                {
                  if (v12 < 4)
                  {
                    goto LABEL_58;
                  }

                  if ((*(a1 + 57))(a1, v11))
                  {
                    break;
                  }

                  v14 = 4;
                }

                else
                {
                  v14 = 1;
                  if (v13 - 8 < 3)
                  {
                    goto LABEL_58;
                  }
                }
              }

              else if (v13 == 5)
              {
                if (v12 == 1)
                {
                  goto LABEL_58;
                }

                if ((*(a1 + 55))(a1, v11))
                {
                  break;
                }

                v14 = 2;
              }

              else
              {
                v15 = v13 < 2 || v13 == 4;
                v14 = 1;
                if (v15)
                {
                  goto LABEL_58;
                }
              }

              v11 += v14;
              v12 = a3 - v11;
            }

            while ((a3 - v11) > 0);
          }

          result = 6;
LABEL_58:
          v6 = v11;
          goto LABEL_62;
        }
      }

      return 0xFFFFFFFFLL;
    }

LABEL_34:
    v11 = a2 + 1;
    goto LABEL_35;
  }

LABEL_62:
  *a4 = v6;
  return result;
}

uint64_t normal_ignoreSectionTok(unsigned int (**a1)(void, void), unsigned __int8 *a2, uint64_t a3, void *a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = 0;
  v10 = (a1 + 17);
  while (1)
  {
    v11 = v10[*v7];
    if (v11 > 4)
    {
      break;
    }

    if (v11 == 2)
    {
      v12 = v7 + 1;
      if (a3 - (v7 + 1) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 33)
      {
        v12 = v7 + 2;
        if (a3 - (v7 + 2) < 1)
        {
          return 0xFFFFFFFFLL;
        }

        if (*v12 == 91)
        {
          v12 = v7 + 3;
          ++v9;
        }
      }

      goto LABEL_35;
    }

    if (v11 != 4)
    {
      if (v11 < 2)
      {
        goto LABEL_38;
      }

LABEL_34:
      v12 = v7 + 1;
      goto LABEL_35;
    }

    v12 = v7 + 1;
    if (a3 - (v7 + 1) < 1)
    {
      return 0xFFFFFFFFLL;
    }

    if (*v12 == 93)
    {
      v12 = v7 + 2;
      if (a3 - (v7 + 2) < 1)
      {
        return 0xFFFFFFFFLL;
      }

      if (*v12 == 62)
      {
        v12 = v7 + 3;
        if (!v9)
        {
          result = 42;
          v7 += 3;
          goto LABEL_39;
        }

        --v9;
      }
    }

LABEL_35:
    v4 = a3 - v12;
    v7 = v12;
    if (a3 - v12 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v10[*v7] > 6u)
  {
    if (v11 != 7)
    {
      if (v11 == 8)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    if (v4 < 4)
    {
      return 4294967294;
    }

    if ((a1)[57](a1, v7))
    {
LABEL_38:
      result = 0;
LABEL_39:
      *a4 = v7;
      return result;
    }

    v12 = v7 + 4;
    goto LABEL_35;
  }

  if (v11 != 5)
  {
    if (v11 != 6)
    {
      goto LABEL_34;
    }

    if (v4 < 3)
    {
      return 4294967294;
    }

    if ((a1)[56](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 3;
    goto LABEL_35;
  }

  if (v4 != 1)
  {
    if ((a1)[55](a1, v7))
    {
      goto LABEL_38;
    }

    v12 = v7 + 2;
    goto LABEL_35;
  }

  return 4294967294;
}

uint64_t normal_entityValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    v6 = *(v4 + *v5);
    if (v6 <= 6)
    {
      break;
    }

    if (*(v4 + *v5) > 8u)
    {
      switch(v6)
      {
        case 9u:
          if (v5 != a2)
          {
            goto LABEL_19;
          }

          v9 = a2 + 1;
          if ((a3 - (a2 + 1)) < 1)
          {
            return 4294967293;
          }

          if (*(v4 + a2[1]) == 10)
          {
            v9 = a2 + 2;
          }

LABEL_29:
          *a4 = v9;
          return 7;
        case 0xAu:
          if (v5 != a2)
          {
            goto LABEL_19;
          }

          v9 = a2 + 1;
          goto LABEL_29;
        case 0x1Eu:
          if (v5 == a2)
          {
            LODWORD(result) = normal_scanPercent(a1, a2 + 1, a3, a4);
            if (result == 22)
            {
              return 0;
            }

            else
            {
              return result;
            }
          }

LABEL_19:
          *a4 = v5;
          return 6;
      }

      goto LABEL_17;
    }

    if (v6 != 7)
    {
      goto LABEL_17;
    }

    v7 = 4;
LABEL_18:
    v5 += v7;
    if ((a3 - v5) <= 0)
    {
      goto LABEL_19;
    }
  }

  if (v6 == 5)
  {
    v7 = 2;
    goto LABEL_18;
  }

  if (v6 == 6)
  {
    v7 = 3;
    goto LABEL_18;
  }

  if (v6 != 3)
  {
LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  if (v5 != a2)
  {
    goto LABEL_19;
  }

  v10 = a2 + 1;

  return normal_scanRef(a1, v10, a3, a4);
}

BOOL normal_nameMatchesAscii(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v4 = *a4;
  if (!*a4)
  {
    return a2 == a3;
  }

  v5 = a4 + 1;
  v6 = a3 - a2;
  while (1)
  {
    v7 = v6-- < 1;
    if (v7 || *a2 != v4)
    {
      break;
    }

    ++a2;
    v8 = *v5++;
    v4 = v8;
    if (!v8)
    {
      return a2 == a3;
    }
  }

  return 0;
}

uint64_t normal_charRefNumber(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 2);
  if (v2 == 59)
  {
    v3 = 0;
    return checkCharRefNumber(v3);
  }

  else
  {
    if (v2 == 120)
    {
      v3 = 0;
      for (i = (a2 + 3); ; ++i)
      {
        v5 = *i;
        if (v5 > 0x40)
        {
          break;
        }

        if (v5 - 48 < 0xA)
        {
          v3 = (v5 - 48) | (16 * v3);
LABEL_11:
          if (v3 >= 1114112)
          {
            return 0xFFFFFFFFLL;
          }

          continue;
        }

        if (v5 == 59)
        {
          return checkCharRefNumber(v3);
        }

LABEL_12:
        ;
      }

      if (v5 - 65 < 6)
      {
        v3 = (v5 + 16 * v3 - 55);
      }

      else
      {
        if (v5 - 97 >= 6)
        {
          goto LABEL_12;
        }

        v3 = (v5 + 16 * v3 - 87);
      }

      goto LABEL_11;
    }

    LODWORD(v3) = 0;
    for (j = (a2 + 3); ; ++j)
    {
      v3 = (10 * v3 + v2 - 48);
      if (v3 >= 1114112)
      {
        break;
      }

      v7 = *j;
      LOBYTE(v2) = v7;
      if (v7 == 59)
      {
        return checkCharRefNumber(v3);
      }
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t normal_predefinedEntityName(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 - a2 == 4)
  {
    v7 = *a2;
    if (v7 == 97)
    {
      if (a2[1] == 112 && a2[2] == 111 && a2[3] == 115)
      {
        return 39;
      }
    }

    else if (v7 == 113 && a2[1] == 117 && a2[2] == 111 && a2[3] == 116)
    {
      return 34;
    }

    return 0;
  }

  if (v3 == 3)
  {
    if (*a2 == 97 && a2[1] == 109 && a2[2] == 112)
    {
      return 38;
    }

    return 0;
  }

  if (v3 != 2 || a2[1] != 116)
  {
    return 0;
  }

  v4 = *a2;
  if (v4 == 103)
  {
    v5 = 62;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 108)
  {
    return 60;
  }

  else
  {
    return v5;
  }
}

uint64_t normal_isPublicId(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a2 + 1);
  v5 = ~(a2 + 1) + a3;
  if (v5 >= 1)
  {
    do
    {
      v6 = *v4;
      v7 = *(a1 + 136 + *v4);
      if (v7 <= 0x23)
      {
        if (((1 << v7) & 0xFCB8FE600) != 0)
        {
          goto LABEL_4;
        }

        if (((1 << v7) & 0x4400000) != 0)
        {
          if ((v6 & 0x80) == 0)
          {
            goto LABEL_4;
          }
        }

        else if (v7 == 21)
        {
          if (v6 == 9)
          {
            goto LABEL_14;
          }

          goto LABEL_4;
        }
      }

      if (v6 != 64 && v6 != 36)
      {
LABEL_14:
        result = 0;
        *a4 = v4;
        return result;
      }

LABEL_4:
      ++v4;
      --v5;
    }

    while (v5 > 0);
  }

  return 1;
}

uint64_t latin1_toUtf8(uint64_t a1, char **a2, char *a3, _BYTE **a4, _BYTE *a5)
{
  while (2)
  {
    for (i = *a2; ; *a2 = i)
    {
      if (i == a3)
      {
        return 0;
      }

      v6 = *i;
      v7 = *a4;
      if ((v6 & 0x80000000) == 0)
      {
        break;
      }

      if (a5 - v7 < 2)
      {
        return 2;
      }

      *a4 = v7 + 1;
      *v7 = (v6 >> 6) | 0xC0;
      v8 = v6 & 0xBF;
      v9 = (*a4)++;
      *v9 = v8;
      i = *a2 + 1;
    }

    if (v7 != a5)
    {
      *a2 = i + 1;
      v10 = *i;
      v11 = (*a4)++;
      *v11 = v10;
      continue;
    }

    break;
  }

  return 2;
}

uint64_t latin1_toUtf16(uint64_t a1, unint64_t *a2, unint64_t a3, void *a4, _WORD *a5)
{
  v5 = *a2;
  if (*a2 >= a3)
  {
    return 0;
  }

  v6 = *a4;
  while (v6 < a5)
  {
    *a2 = (v5 + 1);
    v7 = *a4;
    *v7 = *v5;
    v6 = v7 + 1;
    *a4 = v6;
    v5 = *a2;
    if (*a2 >= a3)
    {
      return 0;
    }
  }

  if (v6 == a5)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t normal_scanLit(int a1, unsigned int (**a2)(void, void), unsigned __int8 *a3, uint64_t a4, void *a5)
{
  v5 = a4 - a3;
  if (a4 - a3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  v11 = (a2 + 17);
  while (1)
  {
    v12 = v11[*v8];
    if (v12 > 6)
    {
      break;
    }

    if (v12 == 5)
    {
      if (v5 == 1)
      {
        return 4294967294;
      }

      if ((a2)[55](a2, v8))
      {
        goto LABEL_26;
      }

      v8 += 2;
    }

    else
    {
      if (v12 != 6)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_22:
        ++v8;
        goto LABEL_23;
      }

      if (v5 < 3)
      {
        return 4294967294;
      }

      if ((a2)[56](a2, v8))
      {
        goto LABEL_26;
      }

      v8 += 3;
    }

LABEL_23:
    v5 = a4 - v8;
    if (a4 - v8 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v12 - 12 >= 2)
  {
    if (v12 != 7)
    {
      if (v12 == 8)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v5 < 4)
    {
      return 4294967294;
    }

    if ((a2)[57](a2, v8))
    {
LABEL_26:
      result = 0;
      *a5 = v8;
      return result;
    }

    v8 += 4;
    goto LABEL_23;
  }

  ++v8;
  if (v12 != a1)
  {
    goto LABEL_23;
  }

  if (a4 - v8 < 1)
  {
    return 4294967269;
  }

  *a5 = v8;
  v14 = v11[*v8];
  v15 = v14 > 0x1E;
  v16 = (1 << v14) & 0x40300E00;
  if (v15 || v16 == 0)
  {
    return 0;
  }

  else
  {
    return 27;
  }
}

uint64_t normal_scanDecl(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a1[*a2 + 136];
  if (v5 > 0x17)
  {
    if (v5 != 24)
    {
      if (v5 == 27)
      {
        return normal_scanComment(a1, a2 + 1, a3, a4);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (v5 == 20)
    {
      *a4 = a2 + 1;
      return 33;
    }

    if (v5 != 22)
    {
LABEL_14:
      result = 0;
      *a4 = a2;
      return result;
    }
  }

  v7 = a2 + 1;
  v8 = a3 - (a2 + 1);
  if (v8 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v9 = v4[*v7];
    if (v9 > 0x1E)
    {
      goto LABEL_25;
    }

    if (((1 << v9) & 0x1400000) == 0)
    {
      break;
    }

    ++v7;
    if (--v8 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((1 << v9) & 0x200600) != 0)
  {
LABEL_17:
    *a4 = v7;
    return 16;
  }

  if (v9 == 30)
  {
    if (v8 == 1)
    {
      return 0xFFFFFFFFLL;
    }

    v10 = v4[v7[1]];
    v11 = v10 > 0x1E;
    v12 = (1 << v10) & 0x40200600;
    if (v11 || v12 == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_25:
  result = 0;
  *a4 = v7;
  return result;
}

uint64_t normal_scanPercent(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  v9 = a1 + 136;
  v10 = *(a1 + 136 + *a2);
  if (v10 > 0x1E)
  {
    goto LABEL_37;
  }

  v11 = 1;
  if (((1 << v10) & 0x40200600) != 0)
  {
    result = 22;
    goto LABEL_47;
  }

  if (((1 << v10) & 0x1400000) != 0)
  {
    goto LABEL_7;
  }

  if (v10 != 7)
  {
LABEL_37:
    if (v10 == 6)
    {
      if (v4 >= 3)
      {
        if ((*(a1 + 448))(a1, a2))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 424))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v11 = 3;
        goto LABEL_7;
      }
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_46;
      }

      if (v4 != 1)
      {
        if ((*(a1 + 440))(a1, a2))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 416))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v11 = 2;
        goto LABEL_7;
      }
    }

    return 4294967294;
  }

  if (v4 < 4)
  {
    return 4294967294;
  }

  if ((*(a1 + 456))(a1, a2))
  {
    goto LABEL_46;
  }

  result = (*(a1 + 432))(a1, v7);
  if (!result)
  {
    goto LABEL_47;
  }

  v11 = 4;
LABEL_7:
  v7 += v11;
  v13 = a3 - v7;
  if (a3 - v7 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v14 = *(v9 + *v7);
    if (v14 > 0x11)
    {
      break;
    }

    switch(v14)
    {
      case 5u:
        if (v13 == 1)
        {
          return 4294967294;
        }

        if ((*(a1 + 440))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 392))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 2;
        break;
      case 6u:
        if (v13 < 3)
        {
          return 4294967294;
        }

        if ((*(a1 + 448))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 400))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 3;
        break;
      case 7u:
        if (v13 < 4)
        {
          return 4294967294;
        }

        if ((*(a1 + 456))(a1, v7))
        {
          goto LABEL_46;
        }

        result = (*(a1 + 408))(a1, v7);
        if (!result)
        {
          goto LABEL_47;
        }

        v15 = 4;
        break;
      default:
        goto LABEL_46;
    }

LABEL_30:
    v7 += v15;
    v13 = a3 - v7;
    if (a3 - v7 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v14 - 24 < 4 || v14 == 22)
  {
    v15 = 1;
    goto LABEL_30;
  }

  if (v14 != 18)
  {
LABEL_46:
    result = 0;
    goto LABEL_47;
  }

  ++v7;
  result = 28;
LABEL_47:
  *a4 = v7;
  return result;
}

uint64_t normal_scanPoundName(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  result = 0;
  v10 = *(a1 + 136 + *a2);
  if (v10 > 6)
  {
    if (v10 != 7)
    {
      if (v10 != 22 && v10 != 24)
      {
        goto LABEL_49;
      }

      v12 = 1;
      goto LABEL_10;
    }

    if (v4 >= 4)
    {
      if (!(*(a1 + 456))(a1, a2))
      {
        result = (*(a1 + 432))(a1, v7);
        if (!result)
        {
          goto LABEL_49;
        }

        v12 = 4;
LABEL_10:
        v7 += v12;
        v13 = a3 - v7;
        if (a3 - v7 < 1)
        {
          return 4294967276;
        }

        while (1)
        {
          v14 = *(a1 + 136 + *v7);
          if (v14 <= 0x24)
          {
            if (((1 << v14) & 0xF400000) != 0)
            {
              v15 = 1;
              goto LABEL_14;
            }

            if (v14 == 7)
            {
              if (v13 < 4)
              {
                return 4294967294;
              }

              if ((*(a1 + 456))(a1, v7))
              {
                goto LABEL_47;
              }

              result = (*(a1 + 408))(a1, v7);
              if (!result)
              {
                goto LABEL_49;
              }

              v15 = 4;
              goto LABEL_14;
            }

            if (((1 << v14) & 0x1140200E00) != 0)
            {
              result = 20;
              goto LABEL_49;
            }
          }

          if (v14 == 6)
          {
            if (v13 < 3)
            {
              return 4294967294;
            }

            if ((*(a1 + 448))(a1, v7))
            {
              goto LABEL_47;
            }

            result = (*(a1 + 400))(a1, v7);
            if (!result)
            {
              goto LABEL_49;
            }

            v15 = 3;
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_47;
            }

            if (v13 == 1)
            {
              return 4294967294;
            }

            if ((*(a1 + 440))(a1, v7))
            {
              goto LABEL_47;
            }

            result = (*(a1 + 392))(a1, v7);
            if (!result)
            {
              goto LABEL_49;
            }

            v15 = 2;
          }

LABEL_14:
          v7 += v15;
          v13 = a3 - v7;
          if (a3 - v7 <= 0)
          {
            return 4294967276;
          }
        }
      }

      goto LABEL_47;
    }

    return 4294967294;
  }

  if (v10 != 5)
  {
    if (v10 != 6)
    {
      goto LABEL_49;
    }

    if (v4 >= 3)
    {
      if (!(*(a1 + 448))(a1, a2))
      {
        result = (*(a1 + 424))(a1, v7);
        if (!result)
        {
          goto LABEL_49;
        }

        v12 = 3;
        goto LABEL_10;
      }

LABEL_47:
      result = 0;
      goto LABEL_49;
    }

    return 4294967294;
  }

  if (v4 == 1)
  {
    return 4294967294;
  }

  if ((*(a1 + 440))(a1, a2))
  {
    goto LABEL_47;
  }

  result = (*(a1 + 416))(a1, v7);
  if (result)
  {
    v12 = 2;
    goto LABEL_10;
  }

LABEL_49:
  *a4 = v7;
  return result;
}

uint64_t normal_scanComment(unsigned int (**a1)(void, void), unsigned __int8 *a2, uint64_t a3, void *a4)
{
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  if (*a2 != 45)
  {
LABEL_28:
    result = 0;
    goto LABEL_29;
  }

  v5 = a2 + 1;
  v7 = a3 - (a2 + 1);
  if (v7 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = (a1 + 17);
  while (1)
  {
    v10 = v9[*v5];
    if (v10 > 6)
    {
      break;
    }

    if (v10 != 5)
    {
      if (v10 == 6)
      {
        if (v7 < 3)
        {
          return 4294967294;
        }

        if ((a1)[56](a1, v5))
        {
          goto LABEL_28;
        }

        v11 = v5 + 3;
        goto LABEL_26;
      }

      if (v10 < 2)
      {
        goto LABEL_28;
      }

LABEL_25:
      v11 = v5 + 1;
      goto LABEL_26;
    }

    if (v7 == 1)
    {
      return 4294967294;
    }

    if ((a1)[55](a1, v5))
    {
      goto LABEL_28;
    }

    v11 = v5 + 2;
LABEL_26:
    v7 = a3 - v11;
    v5 = v11;
    if (a3 - v11 <= 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v10 == 7)
  {
    if (v7 < 4)
    {
      return 4294967294;
    }

    if ((a1)[57](a1, v5))
    {
      goto LABEL_28;
    }

    v11 = v5 + 4;
    goto LABEL_26;
  }

  if (v10 != 27)
  {
    if (v10 == 8)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v11 = v5 + 1;
  if (a3 - (v5 + 1) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v11 != 45)
  {
    goto LABEL_26;
  }

  if (a3 - (v5 + 2) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v5[2];
  if (v13 == 62)
  {
    v5 += 3;
  }

  else
  {
    v5 += 2;
  }

  if (v13 == 62)
  {
    result = 13;
  }

  else
  {
    result = 0;
  }

LABEL_29:
  *a4 = v5;
  return result;
}

uint64_t normal_scanRef(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int8 **a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a2;
  result = 0;
  v10 = a1 + 136;
  v11 = *(a1 + 136 + *a2);
  if (v11 <= 0x12)
  {
    switch(v11)
    {
      case 5u:
        if (v4 != 1)
        {
          if ((*(a1 + 440))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 416))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 2;
          goto LABEL_18;
        }

        break;
      case 6u:
        if (v4 >= 3)
        {
          if ((*(a1 + 448))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 424))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 3;
          goto LABEL_18;
        }

        break;
      case 7u:
        if (v4 >= 4)
        {
          if ((*(a1 + 456))(a1, a2))
          {
            goto LABEL_59;
          }

          result = (*(a1 + 432))(a1, v7);
          if (!result)
          {
            goto LABEL_60;
          }

          v12 = 4;
LABEL_18:
          v7 += v12;
          v14 = a3 - v7;
          if (a3 - v7 >= 1)
          {
            while (1)
            {
              v15 = *(v10 + *v7);
              if (v15 > 0x11)
              {
                if (v15 - 24 >= 4 && v15 != 22)
                {
                  if (v15 == 18)
                  {
                    ++v7;
                    result = 9;
                    goto LABEL_60;
                  }

LABEL_59:
                  result = 0;
                  goto LABEL_60;
                }

                v16 = 1;
              }

              else
              {
                switch(v15)
                {
                  case 5u:
                    if (v14 == 1)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 440))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 392))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 2;
                    break;
                  case 6u:
                    if (v14 < 3)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 448))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 400))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 3;
                    break;
                  case 7u:
                    if (v14 < 4)
                    {
                      return 4294967294;
                    }

                    if ((*(a1 + 456))(a1, v7))
                    {
                      goto LABEL_59;
                    }

                    result = (*(a1 + 408))(a1, v7);
                    if (!result)
                    {
                      goto LABEL_60;
                    }

                    v16 = 4;
                    break;
                  default:
                    goto LABEL_59;
                }
              }

              v7 += v16;
              v14 = a3 - v7;
              if (a3 - v7 <= 0)
              {
                return 0xFFFFFFFFLL;
              }
            }
          }

          return 0xFFFFFFFFLL;
        }

        break;
      default:
        goto LABEL_60;
    }

    return 4294967294;
  }

  if (v11 != 19)
  {
    if (v11 == 22 || v11 == 24)
    {
      v12 = 1;
      goto LABEL_18;
    }

LABEL_60:
    *a4 = v7;
    return result;
  }

  if (a3 - (a2 + 1) >= 1)
  {
    v18 = a2[1];
    if (v18 != 120)
    {
      if (*(v10 + v18) != 25)
      {
        result = 0;
        v7 = a2 + 1;
        goto LABEL_60;
      }

      v7 = a2 + 2;
      v21 = v4 - 2;
      while (v21-- >= 1)
      {
        v23 = *v7++;
        v24 = *(v10 + v23);
        if (v24 != 25)
        {
          if (v24 != 18)
          {
            result = 0;
            --v7;
            goto LABEL_60;
          }

          goto LABEL_77;
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (a3 - (a2 + 2) >= 1)
    {
      if ((*(v10 + a2[2]) & 0xFE) != 0x18)
      {
        result = 0;
        v7 = a2 + 2;
        goto LABEL_60;
      }

      v7 = a2 + 3;
      v19 = a3 - (a2 + 3);
      if (v19 >= 1)
      {
        result = 0xFFFFFFFFLL;
        while (1)
        {
          v20 = *(v10 + *v7);
          if ((v20 - 24) >= 2)
          {
            break;
          }

          ++v7;
          if (--v19 <= 0)
          {
            return result;
          }
        }

        if (v20 != 18)
        {
          goto LABEL_59;
        }

        ++v7;
LABEL_77:
        result = 10;
        goto LABEL_60;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t utf8_toUtf16(uint64_t a1, unint64_t *a2, unint64_t a3, _WORD **a4, unint64_t a5)
{
  v5 = *a4;
  v6 = *a2;
  v7 = *a2 < a3;
  if (*a2 < a3 && v5 < a5)
  {
    do
    {
      v10 = *v6;
      v11 = *(a1 + 136 + v10);
      switch(v11)
      {
        case 7:
          if ((a5 - v5) < 3)
          {
            result = 2;
            goto LABEL_25;
          }

          if ((a3 - v6) < 4)
          {
LABEL_23:
            result = 1;
            goto LABEL_25;
          }

          v12 = v6[2];
          v13 = v6[3] & 0x3F;
          *v5 = (((((v6[1] & 0x3F) << 12) & 0xFFE3F03F | ((*v6 & 7) << 18) | ((v12 & 0x3F) << 6)) + 16711680) >> 10) | 0xD800;
          v5[1] = v13 & 0xF03F | ((v12 & 0x3F) << 6) | 0xDC00;
          v5 += 2;
          v6 += 4;
          break;
        case 6:
          if ((a3 - v6) < 3)
          {
            goto LABEL_23;
          }

          *v5++ = (v10 << 12) | ((v6[1] & 0x3F) << 6) | v6[2] & 0x3F;
          v6 += 3;
          break;
        case 5:
          if ((a3 - v6) < 2)
          {
            goto LABEL_23;
          }

          *v5++ = v6[1] & 0x3F | ((v10 & 0x1F) << 6);
          v6 += 2;
          break;
        default:
          ++v6;
          *v5++ = v10;
          break;
      }

      v7 = v6 < a3;
    }

    while (v6 < a3 && v5 < a5);
  }

  if (v7)
  {
    result = 2;
  }

  else
  {
    result = 0;
  }

LABEL_25:
  *a2 = v6;
  *a4 = v5;
  return result;
}

BOOL utf8_isInvalid2(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 < 0xC2u)
  {
    return 1;
  }

  if ((a2[1] & 0x80u) != 0)
  {
    return a2[1] > 0xBFu;
  }

  return 1;
}

uint64_t utf8_isInvalid4(uint64_t a1, unsigned __int8 *a2)
{
  if (a2[3] > -65 || a2[2] > -65)
  {
    return 1;
  }

  v3 = *a2;
  v4 = a2[1];
  if (v3 == 244)
  {
    v5 = 143;
  }

  else
  {
    v5 = 191;
  }

  v6 = v4 > v5;
  v7 = (v4 & 0x80) == 0 || v6;
  v8 = (v4 + 64) < 0xD0u;
  if (v3 == 240)
  {
    return v8;
  }

  else
  {
    return v7;
  }
}

uint64_t little2_prologTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if (((a3 - a2) & 0xFFFFFFFFFFFFFFFELL) == 0 || ((a3 - a2) & 1) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = &a2[(a3 - a2) & 0xFFFFFFFFFFFFFFFELL];
  }

  if (a3 - a2 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[1];
  if (v9 > 0xDB)
  {
    if (v9 - 220 < 4 || v9 == 255 && *a2 > 0xFDu)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v9 - 216 < 4)
    {
LABEL_13:
      if (v6 - a2 < 4)
      {
        return 4294967294;
      }

LABEL_16:
      result = 0;
      *a4 = a2;
      return result;
    }

    if (!a2[1])
    {
      v10 = a1 + 136;
      v11 = *(a1 + 136 + *a2) - 2;
      result = 18;
      switch(v11)
      {
        case 0:
          v12 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = a2[3];
          if ((v13 - 220) < 4)
          {
            goto LABEL_21;
          }

          if (a2[3])
          {
            if (v13 != 255 || *v12 <= 0xFDu)
            {
              goto LABEL_134;
            }
          }

          else
          {
            v34 = *(v10 + *v12);
            if (v34 <= 0x1D)
            {
              if (((1 << v34) & 0x214000E0) != 0)
              {
LABEL_134:
                *a4 = a2;
                return 29;
              }

              if (v34 == 15)
              {
                return little2_scanPi(a1, a2 + 4, v6, a4);
              }

              if (v34 == 16)
              {
                return little2_scanDecl(a1, a2 + 4, v6, a4);
              }
            }
          }

LABEL_21:
          result = 0;
          *a4 = v12;
          return result;
        case 2:
          v25 = a2 + 2;
          v26 = v6 - (a2 + 2);
          if (v26 < 2)
          {
            return 4294967270;
          }

          if (a2[3] || *v25 != 93)
          {
            goto LABEL_111;
          }

          if (v26 < 4)
          {
            return 0xFFFFFFFFLL;
          }

          if (a2[5] || a2[4] != 62)
          {
LABEL_111:
            *a4 = v25;
            return 26;
          }

          else
          {
            *a4 = a2 + 6;
            return 34;
          }

        case 3:
          if (v6 - a2 >= 2)
          {
            goto LABEL_16;
          }

          return 4294967294;
        case 4:
          if (v6 - a2 >= 3)
          {
            goto LABEL_16;
          }

          return 4294967294;
        case 5:
          goto LABEL_13;
        case 7:
          if (a2 + 2 != v6)
          {
            goto LABEL_93;
          }

          *a4 = v6;
          return 4294967281;
        case 8:
        case 19:
LABEL_93:
          v28 = a2 + 2;
          v29 = v6 - (a2 + 2);
          if (v29 >= 2)
          {
            do
            {
              if (v28[1])
              {
                break;
              }

              v30 = *(v10 + *v28);
              if (v30 != 21 && v30 != 10 && (v30 != 9 || v28 + 2 == v6))
              {
                break;
              }

              v28 += 2;
              v29 -= 2;
            }

            while (v29 > 1);
          }

          *a4 = v28;
          return 15;
        case 9:
          *a4 = a2 + 2;
          return 17;
        case 10:
          v23 = a2 + 2;
          v24 = 12;
          return little2_scanLit(v24, a1, v23, v6, a4);
        case 11:
          v23 = a2 + 2;
          v24 = 13;
          return little2_scanLit(v24, a1, v23, v6, a4);
        case 17:
          return little2_scanPoundName(a1, a2 + 2, v6, a4);
        case 18:
          *a4 = a2 + 2;
          return 25;
        case 20:
        case 22:
          goto LABEL_28;
        case 21:
        case 23:
        case 24:
        case 25:
          goto LABEL_27;
        case 27:
          break;
        case 28:
          return little2_scanPercent(a1, a2 + 2, v6, a4);
        case 29:
          *a4 = a2 + 2;
          return 23;
        case 30:
          v27 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 4294967272;
          }

          if (a2[3])
          {
            goto LABEL_87;
          }

          v33 = *(v10 + *v27);
          if (v33 > 0x24)
          {
            goto LABEL_130;
          }

          if (((1 << v33) & 0x1900200000) != 0)
          {
            goto LABEL_131;
          }

          if (v33 == 33)
          {
            *a4 = a2 + 4;
            return 36;
          }

          else if (v33 == 34)
          {
            *a4 = a2 + 4;
            return 37;
          }

          else
          {
LABEL_130:
            if ((v33 - 9) >= 3)
            {
              if (v33 != 15)
              {
LABEL_87:
                result = 0;
                *a4 = v27;
                return result;
              }

              *a4 = a2 + 4;
              return 35;
            }

            else
            {
LABEL_131:
              *a4 = v27;
              return 24;
            }
          }

        case 33:
          *a4 = a2 + 2;
          return 38;
        case 34:
          *a4 = a2 + 2;
          return 21;
        default:
          goto LABEL_16;
      }
    }
  }

  v14 = *a2;
  if (((1 << v14) & namingBitmap[(v14 >> 5) | (8 * nmstrtPages[a2[1]])]) != 0)
  {
    result = 18;
  }

  else
  {
    if ((namingBitmap[(v14 >> 5) | (8 * namePages[a2[1]])] & (1 << v14)) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    result = 19;
  }

LABEL_28:
  v15 = a2 + 2;
  v16 = v6 - (a2 + 2);
  if (v16 < 2)
  {
    return -result;
  }

  v17 = a1 + 136;
  while (1)
  {
    v18 = v15[1];
    if (v18 > 0xDB)
    {
      if (v18 == 255)
      {
        if (*v15 > 0xFDu)
        {
          goto LABEL_70;
        }
      }

      else if (v18 - 220 < 4)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    if (v15[1])
    {
      break;
    }

    switch(*(v17 + *v15))
    {
      case 6:
        if (v16 != 2)
        {
          goto LABEL_70;
        }

        return 4294967294;
      case 7:
        goto LABEL_69;
      case 9:
      case 0xA:
      case 0xB:
      case 0x14:
      case 0x15:
      case 0x1E:
      case 0x20:
      case 0x23:
      case 0x24:
        goto LABEL_71;
      case 0xF:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 30;
      case 0x16:
      case 0x18:
      case 0x19:
      case 0x1A:
      case 0x1B:
        goto LABEL_46;
      case 0x17:
        v19 = v15 + 2;
        if (result == 41)
        {
          goto LABEL_38;
        }

        if (result != 18)
        {
          break;
        }

        v20 = v6 - v19;
        if (v6 - v19 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v21 = v15[3];
        if (v21 > 0xDB)
        {
          if (v21 - 220 < 4 || v21 == 255 && *v19 > 0xFDu)
          {
LABEL_38:
            result = 19;
            break;
          }

          goto LABEL_58;
        }

        if (v15[3])
        {
          if (v21 - 216 < 4)
          {
            goto LABEL_66;
          }

          goto LABEL_58;
        }

        v22 = *(v17 + *v19);
        result = 19;
        if (v22 > 0x17)
        {
          if (v22 - 24 >= 4)
          {
            if (v22 != 29)
            {
              break;
            }

LABEL_58:
            if (((namingBitmap[(*v19 >> 5) | (8 * namePages[v15[3]])] >> *v19) & 1) == 0)
            {
              goto LABEL_67;
            }
          }

LABEL_59:
          v19 = v15 + 4;
          result = 41;
          break;
        }

        if (*(v17 + *v19) <= 0x15u)
        {
          switch(v22)
          {
            case 5u:
              goto LABEL_67;
            case 6u:
              if (v20 != 2)
              {
LABEL_67:
                result = 0;
                *a4 = v19;
                return result;
              }

              return 4294967294;
            case 7u:
LABEL_66:
              if (v20 >= 4)
              {
                goto LABEL_67;
              }

              return 4294967294;
          }
        }

        else if (v22 == 22)
        {
          goto LABEL_59;
        }

        break;
      case 0x1D:
        goto LABEL_45;
      case 0x21:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 31;
      case 0x22:
        if (result == 19)
        {
          goto LABEL_70;
        }

        *a4 = v15 + 2;
        return 32;
      default:
        goto LABEL_70;
    }

LABEL_47:
    v16 = v6 - v19;
    v15 = v19;
    if (v6 - v19 <= 1)
    {
      return -result;
    }
  }

  if (v18 - 216 >= 4)
  {
LABEL_45:
    if (((namingBitmap[(*v15 >> 5) | (8 * namePages[v15[1]])] >> *v15) & 1) == 0)
    {
      goto LABEL_70;
    }

LABEL_46:
    v19 = v15 + 2;
    goto LABEL_47;
  }

LABEL_69:
  if (v16 < 4)
  {
    return 4294967294;
  }

LABEL_70:
  result = 0;
LABEL_71:
  *a4 = v15;
  return result;
}

uint64_t little2_contentTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = a3 - a2;
  v5 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v5)
  {
    v6 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    a3 = &a2[v5];
  }

  if ((v4 & 1) != 0 && !v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[1];
  if (v9 > 0xDB)
  {
    if (v9 - 220 < 4 || v9 == 255 && *a2 > 0xFDu)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if (v9 - 216 < 4)
  {
LABEL_14:
    if ((a3 - a2) < 4)
    {
      return 4294967294;
    }

    v10 = a2 + 4;
    goto LABEL_31;
  }

  if (!a2[1])
  {
    v11 = a1 + 136;
    v12 = *(a1 + 136 + *a2);
    if (v12 > 5)
    {
      if (*(a1 + 136 + *a2) <= 7u)
      {
        if (v12 == 6)
        {
          if ((a3 - a2) < 3)
          {
            return 4294967294;
          }

          v10 = a2 + 3;
          goto LABEL_31;
        }

        if (v12 == 7)
        {
          goto LABEL_14;
        }

        goto LABEL_30;
      }

      switch(v12)
      {
        case 8u:
          goto LABEL_17;
        case 9u:
          v21 = a2 + 2;
          if ((a3 - (a2 + 2)) < 2)
          {
            return 4294967293;
          }

          if (!a2[3] && *(v11 + a2[2]) == 10)
          {
            v21 = a2 + 4;
          }

          break;
        case 0xAu:
          v21 = a2 + 2;
          break;
        default:
          goto LABEL_30;
      }

      *a4 = v21;
      return 7;
    }

    if (*(a1 + 136 + *a2) <= 2u)
    {
      if (v12 >= 2)
      {
        v13 = a2 + 2;
        v14 = a3 - (a2 + 2);
        if (v14 < 2)
        {
          return 0xFFFFFFFFLL;
        }

        v15 = a2[3];
        if (v15 > 0xDB)
        {
          if (v15 - 220 < 4)
          {
            goto LABEL_97;
          }

          if (v15 == 255)
          {
            LODWORD(v22) = *v13;
            if (v22 > 0xFD)
            {
              goto LABEL_97;
            }

            goto LABEL_110;
          }
        }

        else
        {
          if (v15 - 216 < 4)
          {
            goto LABEL_26;
          }

          if (!a2[3])
          {
            v22 = *v13;
            v23 = *(v11 + v22);
            if (v23 <= 0xF)
            {
              if (*(v11 + v22) <= 6u)
              {
                if (v23 != 6 || v14 != 2)
                {
                  goto LABEL_97;
                }

                return 4294967294;
              }

              if (v23 != 7)
              {
                if (v23 != 15)
                {
                  goto LABEL_97;
                }

                return little2_scanPi(a1, a2 + 4, a3, a4);
              }

LABEL_26:
              if (v14 >= 4)
              {
                goto LABEL_97;
              }

              return 4294967294;
            }

            if (*(v11 + v22) > 0x15u)
            {
              if (v23 == 22 || v23 == 24)
              {
LABEL_111:
                v13 = a2 + 4;
                v24 = a3 - (a2 + 4);
                if (v24 < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v25 = 0;
                while (1)
                {
                  v26 = v13[1];
                  if (v26 > 0xDB)
                  {
                    break;
                  }

                  if (v13[1])
                  {
                    if (v26 - 216 < 4)
                    {
                      goto LABEL_176;
                    }

LABEL_126:
                    LODWORD(v27) = *v13;
LABEL_127:
                    if (((namingBitmap[(v27 >> 5) | (8 * namePages[v13[1]])] >> v27) & 1) == 0)
                    {
                      goto LABEL_97;
                    }

LABEL_128:
                    v29 = 2;
                    goto LABEL_129;
                  }

                  v27 = *v13;
                  v28 = *(v11 + v27);
                  if (v28 <= 0x16)
                  {
                    if (*(v11 + v27) <= 0x10u)
                    {
                      if (*(v11 + v27) <= 8u)
                      {
                        if (v28 == 5)
                        {
                          goto LABEL_97;
                        }

                        if (v28 == 6)
                        {
                          if (v24 != 2)
                          {
                            goto LABEL_97;
                          }

                          return 4294967294;
                        }

                        if (v28 != 7)
                        {
                          goto LABEL_97;
                        }

LABEL_176:
                        if (v24 >= 4)
                        {
                          goto LABEL_97;
                        }

                        return 4294967294;
                      }

                      if (v28 - 9 >= 2)
                      {
                        if (v28 != 11)
                        {
                          goto LABEL_97;
                        }

                        goto LABEL_180;
                      }

LABEL_187:
                      v13 += 2;
                      v35 = a3 - v13;
                      if ((a3 - v13) < 2)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      while (1)
                      {
                        v39 = v13[1];
                        if (v13[1])
                        {
                          if ((v39 - 216) < 4)
                          {
                            goto LABEL_165;
                          }

                          if ((v39 - 220) < 4)
                          {
                            goto LABEL_97;
                          }

                          if (v39 == 255)
                          {
                            v40 = *v13;
                            if (v40 > 0xFD)
                            {
                              goto LABEL_97;
                            }

                            v39 = 0xFFu;
                          }

                          else
                          {
                            v40 = *v13;
                          }

LABEL_256:
                          if (((namingBitmap[(v40 >> 5) | (8 * nmstrtPages[v39])] >> v40) & 1) == 0)
                          {
                            goto LABEL_97;
                          }

                          return little2_scanAtts(a1, v13 + 2, a3, a4);
                        }

                        v40 = *v13;
                        v41 = *(v11 + *v13);
                        if (v41 > 0xA)
                        {
                          if (*(v11 + *v13) > 0x15u)
                          {
                            if (v41 != 22 && v41 != 24)
                            {
                              if (v41 != 29)
                              {
                                goto LABEL_97;
                              }

                              v39 = 0;
                              goto LABEL_256;
                            }

                            return little2_scanAtts(a1, v13 + 2, a3, a4);
                          }

                          if (v41 != 21)
                          {
                            if (v41 != 11)
                            {
                              if (v41 == 17)
                              {
LABEL_262:
                                v20 = v13 + 2;
                                if ((a3 - (v13 + 2)) >= 2)
                                {
                                  if (!v13[3] && *v20 == 62)
                                  {
                                    *a4 = v13 + 4;
                                    return 4;
                                  }

LABEL_266:
                                  v7 = 0;
                                  goto LABEL_61;
                                }

                                return 0xFFFFFFFFLL;
                              }

                              goto LABEL_97;
                            }

LABEL_180:
                            *a4 = v13 + 2;
                            return 2;
                          }
                        }

                        else if (*(v11 + *v13) <= 8u)
                        {
                          if (v41 == 5)
                          {
                            goto LABEL_97;
                          }

                          if (v41 != 6)
                          {
                            if (v41 == 7)
                            {
                              goto LABEL_165;
                            }

                            goto LABEL_97;
                          }

LABEL_258:
                          if (v35 != 2)
                          {
                            goto LABEL_97;
                          }

                          return 4294967294;
                        }

                        v13 += 2;
                        v35 -= 2;
                        v7 = 0xFFFFFFFFLL;
                        if (v35 <= 1)
                        {
                          return v7;
                        }
                      }
                    }

                    v29 = 2;
                    if (v28 != 22)
                    {
                      if (v28 == 17)
                      {
                        goto LABEL_262;
                      }

                      if (v28 != 21)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_187;
                    }
                  }

                  else
                  {
                    if (v28 - 24 < 4)
                    {
                      goto LABEL_128;
                    }

                    if (v28 != 23)
                    {
                      if (v28 != 29)
                      {
                        goto LABEL_97;
                      }

                      goto LABEL_127;
                    }

                    if (v25)
                    {
                      goto LABEL_97;
                    }

                    v30 = v13 + 2;
                    v31 = a3 - (v13 + 2);
                    if (v31 < 2)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v32 = v13[3];
                    if (v32 > 0xDB)
                    {
                      if (v32 == 255)
                      {
                        LODWORD(v33) = *v30;
                        if (v33 > 0xFD)
                        {
                          goto LABEL_241;
                        }

                        goto LABEL_150;
                      }

                      if (v32 - 220 < 4)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_149;
                    }

                    if (v13[3])
                    {
                      if (v32 - 216 < 4)
                      {
                        goto LABEL_199;
                      }

LABEL_149:
                      LODWORD(v33) = *v30;
LABEL_150:
                      if (((namingBitmap[(v33 >> 5) | (8 * nmstrtPages[v13[3]])] >> v33) & 1) == 0)
                      {
                        goto LABEL_241;
                      }

                      v25 = 1;
LABEL_152:
                      v29 = 4;
                      goto LABEL_129;
                    }

                    v33 = *v30;
                    v34 = *(v11 + v33);
                    if (v34 <= 0x15)
                    {
                      if (v34 != 5)
                      {
                        if (v34 == 6)
                        {
                          if (v31 == 2)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v34 == 7)
                        {
LABEL_199:
                          if (v31 < 4)
                          {
                            return 4294967294;
                          }
                        }
                      }

LABEL_241:
                      v7 = 0;
                      *a4 = v30;
                      return v7;
                    }

                    v25 = 1;
                    if (v34 == 22)
                    {
                      goto LABEL_152;
                    }

                    v29 = 4;
                    if (v34 != 24)
                    {
                      if (v34 != 29)
                      {
                        goto LABEL_241;
                      }

                      goto LABEL_150;
                    }
                  }

LABEL_129:
                  v13 += v29;
                  v24 = a3 - v13;
                  v7 = 0xFFFFFFFFLL;
                  if ((a3 - v13) <= 1)
                  {
                    return v7;
                  }
                }

                if (v26 == 255)
                {
                  LODWORD(v27) = *v13;
                  if (v27 > 0xFD)
                  {
                    goto LABEL_97;
                  }

                  goto LABEL_127;
                }

                if (v26 - 220 < 4)
                {
                  goto LABEL_97;
                }

                goto LABEL_126;
              }

              if (v23 != 29)
              {
                goto LABEL_97;
              }

LABEL_110:
              if (((namingBitmap[(v22 >> 5) | (8 * nmstrtPages[a2[3]])] >> v22) & 1) == 0)
              {
                goto LABEL_97;
              }

              goto LABEL_111;
            }

            if (v23 == 16)
            {
              v13 = a2 + 4;
              if ((a3 - (a2 + 4)) < 2)
              {
                return 0xFFFFFFFFLL;
              }

              if (a2[5])
              {
                goto LABEL_97;
              }

              v37 = *(v11 + *v13);
              if (v37 == 20)
              {
                v20 = a2 + 6;
                if ((a3 - (a2 + 6)) >= 12)
                {
                  for (i = 0; i != 6; ++i)
                  {
                    if (v20[1] || *v20 != big2_scanCdataSection_CDATA_LSQB[i])
                    {
                      goto LABEL_266;
                    }

                    v20 += 2;
                  }

                  v7 = 8;
                  v20 = a2 + 18;
LABEL_61:
                  *a4 = v20;
                  return v7;
                }

                return 0xFFFFFFFFLL;
              }

              if (v37 != 27)
              {
LABEL_97:
                v7 = 0;
                goto LABEL_98;
              }

              return little2_scanComment(a1, a2 + 6, a3, a4);
            }

            if (v23 != 17)
            {
              goto LABEL_97;
            }

            v13 = a2 + 4;
            v35 = a3 - (a2 + 4);
            if (v35 < 2)
            {
              return 0xFFFFFFFFLL;
            }

            v36 = a2[5];
            if (v36 > 0xDB)
            {
              if (v36 - 220 < 4)
              {
                goto LABEL_97;
              }

              if (v36 == 255)
              {
                LODWORD(v38) = *v13;
                if (v38 > 0xFD)
                {
                  goto LABEL_97;
                }

                goto LABEL_221;
              }
            }

            else
            {
              if (v36 - 216 < 4)
              {
                goto LABEL_165;
              }

              if (!a2[5])
              {
                v7 = 0;
                v38 = *v13;
                v42 = *(v11 + v38);
                if (v42 <= 0x15)
                {
                  if (v42 == 6)
                  {
                    goto LABEL_258;
                  }

                  if (v42 != 7)
                  {
                    goto LABEL_98;
                  }

LABEL_165:
                  if (v35 >= 4)
                  {
                    goto LABEL_97;
                  }

                  return 4294967294;
                }

                if (v42 == 22 || v42 == 24)
                {
                  goto LABEL_222;
                }

                if (v42 != 29)
                {
                  goto LABEL_98;
                }

LABEL_221:
                if (((namingBitmap[(v38 >> 5) | (8 * nmstrtPages[a2[5]])] >> v38) & 1) == 0)
                {
                  goto LABEL_97;
                }

LABEL_222:
                v44 = a3 - a2;
                if ((a3 - a2 - 6) < 2)
                {
                  return 0xFFFFFFFFLL;
                }

                v45 = 0;
                for (j = 6; ; j += 2)
                {
                  v47 = &a2[j];
                  v48 = a2[j + 1];
                  if (v48 > 0xDB)
                  {
                    break;
                  }

                  if (a2[j + 1])
                  {
                    if (v48 - 216 < 4)
                    {
                      goto LABEL_270;
                    }

                    goto LABEL_236;
                  }

                  v47 = *v47;
                  v49 = *(v11 + v47);
                  if ((v49 - 22) >= 6)
                  {
                    if (*(v11 + v47) <= 0xAu)
                    {
                      if ((v49 - 9) >= 2)
                      {
                        if (v49 == 6)
                        {
                          if (v44 + v45 == 8)
                          {
                            return 4294967294;
                          }
                        }

                        else if (v49 == 7)
                        {
LABEL_270:
                          if (v44 + v45 - 6 < 4)
                          {
                            return 4294967294;
                          }
                        }

                        goto LABEL_271;
                      }

LABEL_274:
                      v51 = v44 + v45 - 8;
                      if (v51 < 2)
                      {
                        return 0xFFFFFFFFLL;
                      }

                      v13 = &a2[-v45 + 8];
                      while (1)
                      {
                        if (v13[1])
                        {
                          goto LABEL_97;
                        }

                        v52 = *(v11 + *v13);
                        if ((v52 - 9) >= 2 && v52 != 21)
                        {
                          break;
                        }

                        v13 += 2;
                        v51 -= 2;
                        v7 = 0xFFFFFFFFLL;
                        if (v51 <= 1)
                        {
                          return v7;
                        }
                      }

                      if (v52 != 11)
                      {
                        goto LABEL_97;
                      }

                      v13 += 2;
                      goto LABEL_289;
                    }

                    if (v49 != 29)
                    {
                      if (v49 != 11)
                      {
                        if (v49 == 21)
                        {
                          goto LABEL_274;
                        }

LABEL_271:
                        v7 = 0;
                        v13 = &a2[-v45 + 6];
LABEL_98:
                        *a4 = v13;
                        return v7;
                      }

                      v13 = &a2[-v45 + 8];
LABEL_289:
                      v7 = 5;
                      goto LABEL_98;
                    }

                    goto LABEL_237;
                  }

LABEL_238:
                  v45 -= 2;
                  v7 = 0xFFFFFFFFLL;
                  if ((v44 + v45 - 6) <= 1)
                  {
                    return v7;
                  }
                }

                if (v48 == 255)
                {
                  LODWORD(v47) = *v47;
                  if (v47 > 0xFD)
                  {
                    goto LABEL_271;
                  }
                }

                else
                {
                  if (v48 - 220 < 4)
                  {
                    goto LABEL_271;
                  }

LABEL_236:
                  LODWORD(v47) = *v47;
                }

LABEL_237:
                if (((namingBitmap[(v47 >> 5) | (8 * namePages[a2[j + 1]])] >> v47) & 1) == 0)
                {
                  goto LABEL_271;
                }

                goto LABEL_238;
              }
            }

            LODWORD(v38) = *v13;
            goto LABEL_221;
          }
        }

        LODWORD(v22) = *v13;
        goto LABEL_110;
      }

LABEL_17:
      v7 = 0;
      *a4 = a2;
      return v7;
    }

    if (v12 == 3)
    {
      return little2_scanRef(a1, a2 + 2, a3, a4);
    }

    if (v12 == 4)
    {
      v10 = a2 + 2;
      if ((a3 - (a2 + 2)) >= 2)
      {
        if (a2[3] || *v10 != 93)
        {
          goto LABEL_31;
        }

        v13 = a2 + 4;
        if ((a3 - (a2 + 4)) >= 2)
        {
          if (!a2[5] && *v13 == 62)
          {
            goto LABEL_97;
          }

          goto LABEL_31;
        }
      }

      return 4294967291;
    }

    if (v12 == 5 && (a3 - a2) < 2)
    {
      return 4294967294;
    }
  }

LABEL_30:
  v10 = a2 + 2;
LABEL_31:
  v16 = a3 - v10;
  if ((a3 - v10) >= 2)
  {
    while (1)
    {
      v17 = v10[1];
      if (v17 > 0xDB)
      {
        if (v17 == 255)
        {
          if (*v10 > 0xFDu)
          {
            goto LABEL_64;
          }
        }

        else if (v17 - 220 < 4)
        {
          goto LABEL_64;
        }

        goto LABEL_45;
      }

      if (v17 - 216 < 4)
      {
        goto LABEL_34;
      }

      if (v10[1])
      {
        goto LABEL_45;
      }

      v19 = *(a1 + 136 + *v10);
      if (v19 > 5)
      {
        if (v19 != 6)
        {
          if (v19 != 7)
          {
            if (v19 - 8 < 3)
            {
              goto LABEL_64;
            }

            goto LABEL_45;
          }

LABEL_34:
          if (v16 <= 3)
          {
            goto LABEL_64;
          }

          v18 = v10 + 4;
          goto LABEL_46;
        }

        if (v16 == 2)
        {
          goto LABEL_64;
        }

        v18 = v10 + 3;
      }

      else
      {
        if (v19 != 4)
        {
          if (v19 < 4)
          {
            goto LABEL_64;
          }

LABEL_45:
          v18 = v10 + 2;
          goto LABEL_46;
        }

        if (v16 < 4)
        {
          goto LABEL_64;
        }

        v18 = v10 + 2;
        if (!v10[3] && *v18 == 93)
        {
          if (v16 < 6)
          {
LABEL_64:
            *a4 = v10;
            return 6;
          }

          if (!v10[5] && v10[4] == 62)
          {
            v7 = 0;
            v20 = v10 + 4;
            goto LABEL_61;
          }
        }
      }

LABEL_46:
      v16 = a3 - v18;
      v10 = v18;
      if ((a3 - v18) <= 1)
      {
        goto LABEL_63;
      }
    }
  }

  v18 = v10;
LABEL_63:
  *a4 = v18;
  return 6;
}

uint64_t little2_cdataSectionTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  v4 = (a3 - a2) & 0xFFFFFFFFFFFFFFFELL;
  if (v4)
  {
    v5 = ((a3 - a2) & 1) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = &a2[v4];
  if (v5)
  {
    v6 = a3;
  }

  if (((a3 - a2) & 1) == 0 || v4)
  {
    v7 = a2[1];
    if (a2[1] > 0xDBu)
    {
      if ((v7 - 220) >= 4 && (v7 != 255 || *a2 <= 0xFDu))
      {
        goto LABEL_32;
      }

      v7 = 0;
    }

    else
    {
      if ((v7 - 216) < 4)
      {
LABEL_13:
        if (v6 - a2 < 4)
        {
          return 4294967294;
        }

        v8 = a2 + 4;
        goto LABEL_33;
      }

      if (a2[1])
      {
        goto LABEL_32;
      }

      v9 = *(a1 + 136 + *a2);
      if (v9 > 6)
      {
        if (*(a1 + 136 + *a2) <= 8u)
        {
          if (v9 == 7)
          {
            goto LABEL_13;
          }

          if (v9 == 8)
          {
            goto LABEL_54;
          }

          goto LABEL_32;
        }

        if (v9 == 9)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (a2[3])
          {
            v7 = 7;
LABEL_53:
            a2 = v8;
            goto LABEL_54;
          }

          if (*(a1 + 136 + a2[2]) == 10)
          {
            a2 += 4;
          }

          else
          {
            a2 += 2;
          }
        }

        else
        {
          if (v9 != 10)
          {
            goto LABEL_32;
          }

          a2 += 2;
        }

        v7 = 7;
        goto LABEL_54;
      }

      if (*(a1 + 136 + *a2) > 4u)
      {
        if (v9 == 5)
        {
          if (v6 - a2 < 2)
          {
            return 4294967294;
          }
        }

        else if (v9 == 6)
        {
          if (v6 - a2 < 3)
          {
            return 4294967294;
          }

          v8 = a2 + 3;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v9 >= 2)
      {
        if (v9 == 4)
        {
          v8 = a2 + 2;
          if (v6 - (a2 + 2) < 2)
          {
            return 0xFFFFFFFFLL;
          }

          if (!a2[3] && *v8 == 93)
          {
            if (v6 - (a2 + 4) < 2)
            {
              return 0xFFFFFFFFLL;
            }

            if (!a2[5] && a2[4] == 62)
            {
              a2 += 6;
              v7 = 40;
              goto LABEL_54;
            }
          }

LABEL_33:
          v10 = v6 - v8;
          if (v6 - v8 >= 2)
          {
            while (1)
            {
              v11 = v8[1];
              if (v11 > 0xDB)
              {
                break;
              }

              if (v11 - 216 < 4)
              {
                goto LABEL_36;
              }

              v12 = 2;
              if (!v8[1])
              {
                v13 = *(a1 + 136 + *v8);
                if (v13 <= 0xA)
                {
                  if (v13 == 6)
                  {
                    if (v10 == 2)
                    {
                      goto LABEL_52;
                    }

                    v12 = 3;
                    goto LABEL_51;
                  }

                  if (v13 != 7)
                  {
                    v12 = 2;
                    if (((1 << v13) & 0x713) != 0)
                    {
                      goto LABEL_52;
                    }

                    goto LABEL_51;
                  }

LABEL_36:
                  if (v10 < 4)
                  {
                    goto LABEL_52;
                  }

                  v12 = 4;
                  goto LABEL_51;
                }

                goto LABEL_40;
              }

LABEL_51:
              v8 += v12;
              v10 = v6 - v8;
              if (v6 - v8 <= 1)
              {
                goto LABEL_52;
              }
            }

            if (v11 != 255)
            {
              v12 = 2;
              if (v11 - 220 < 4)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            if (*v8 > 0xFDu)
            {
              goto LABEL_52;
            }

LABEL_40:
            v12 = 2;
            goto LABEL_51;
          }

LABEL_52:
          v7 = 6;
          goto LABEL_53;
        }

LABEL_32:
        v8 = a2 + 2;
        goto LABEL_33;
      }
    }

LABEL_54:
    *a4 = a2;
    return v7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t little2_ignoreSectionTok(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 **a4)
{
  if ((a3 - a2))
  {
    v4 = &a2[(a3 - a2) & 0xFFFFFFFFFFFFFFFELL];
  }

  else
  {
    v4 = a3;
  }

  v5 = v4 - a2;
  if (v4 - a2 < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  v7 = a1 + 136;
  while (1)
  {
    v8 = a2[1];
    if (v8 > 0xDB)
    {
      if (v8 == 255)
      {
        if (*a2 > 0xFDu)
        {
          goto LABEL_44;
        }
      }

      else if (v8 - 220 < 4)
      {
        goto LABEL_44;
      }

LABEL_20:
      v9 = a2 + 2;
      goto LABEL_21;
    }

    if (v8 - 216 < 4)
    {
      goto LABEL_8;
    }

    if (a2[1])
    {
      goto LABEL_20;
    }

    v10 = *(v7 + *a2);
    if (v10 > 4)
    {
      break;
    }

    if (v10 == 2)
    {
      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!a2[3] && *v9 == 33)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!a2[5] && *v9 == 91)
        {
          ++v6;
          v9 = a2 + 6;
        }
      }
    }

    else
    {
      if (v10 != 4)
      {
        if (v10 < 2)
        {
LABEL_44:
          result = 0;
LABEL_45:
          *a4 = a2;
          return result;
        }

        goto LABEL_20;
      }

      v9 = a2 + 2;
      if (v4 - (a2 + 2) < 2)
      {
        return 0xFFFFFFFFLL;
      }

      if (!a2[3] && *v9 == 93)
      {
        v9 = a2 + 4;
        if (v4 - (a2 + 4) < 2)
        {
          return 0xFFFFFFFFLL;
        }

        if (!a2[5] && *v9 == 62)
        {
          v9 = a2 + 6;
          if (!v6)
          {
            result = 42;
            a2 += 6;
            goto LABEL_45;
          }

          --v6;
        }
      }
    }

LABEL_21:
    v5 = v4 - v9;
    a2 = v9;
    if (v4 - v9 <= 1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(v7 + *a2) > 6u)
  {
    if (v10 != 7)
    {
      if (v10 == 8)
      {
        goto LABEL_44;
      }

      goto LABEL_20;
    }

LABEL_8:
    if (v5 < 4)
    {
      return 4294967294;
    }

    v9 = a2 + 4;
    goto LABEL_21;
  }

  if (v10 != 6)
  {
    goto LABEL_20;
  }

  if (v5 != 2)
  {
    v9 = a2 + 3;
    goto LABEL_21;
  }

  return 4294967294;
}

uint64_t little2_attributeValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (v5[1] - 216 < 4)
    {
      goto LABEL_5;
    }

    if (v5[1])
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + *v5);
    if (v7 <= 6)
    {
      if (v7 == 6)
      {
        v6 = 3;
      }

      else
      {
        if (v7 == 2)
        {
          result = 0;
          *a4 = v5;
          return result;
        }

        v6 = 2;
        if (v7 == 3)
        {
          if (v5 == a2)
          {
            return little2_scanRef(a1, a2 + 2, a3, a4);
          }

          goto LABEL_36;
        }
      }

      goto LABEL_6;
    }

    if (*(v4 + *v5) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      break;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_36;
      }

      v9 = a2 + 2;
      goto LABEL_38;
    }

    v6 = 2;
    if (v7 == 21)
    {
      if (v5 == a2)
      {
        *a4 = a2 + 2;
        return 39;
      }

      goto LABEL_36;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_36;
    }
  }

  if (v5 != a2)
  {
LABEL_36:
    *a4 = v5;
    return 6;
  }

  v9 = a2 + 2;
  if ((a3 - (a2 + 2)) >= 2)
  {
    if (!a2[3] && *(v4 + a2[2]) == 10)
    {
      v9 = a2 + 4;
    }

LABEL_38:
    *a4 = v9;
    return 7;
  }

  return 4294967293;
}

uint64_t little2_entityValueTok(uint64_t a1, unsigned __int8 *a2, unint64_t a3, unsigned __int8 **a4)
{
  if (a2 >= a3)
  {
    return 4294967292;
  }

  if ((a3 - a2) < 2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1 + 136;
  v5 = a2;
  while (1)
  {
    if (v5[1] - 216 < 4)
    {
      goto LABEL_5;
    }

    if (v5[1])
    {
      v6 = 2;
      goto LABEL_6;
    }

    v7 = *(v4 + *v5);
    if (v7 <= 6)
    {
      break;
    }

    if (*(v4 + *v5) <= 8u)
    {
      v6 = 2;
      if (v7 != 7)
      {
        goto LABEL_6;
      }

LABEL_5:
      v6 = 4;
      goto LABEL_6;
    }

    if (v7 == 9)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      v9 = a2 + 2;
      if ((a3 - (a2 + 2)) < 2)
      {
        return 4294967293;
      }

      if (!a2[3] && *(v4 + a2[2]) == 10)
      {
        v9 = a2 + 4;
      }

      *a4 = v9;
      return 7;
    }

    if (v7 == 10)
    {
      if (v5 != a2)
      {
        goto LABEL_37;
      }

      *a4 = a2 + 2;
      return 7;
    }

    v6 = 2;
    if (v7 == 30)
    {
      if (v5 == a2)
      {
        LODWORD(result) = little2_scanPercent(a1, a2 + 2, a3, a4);
        if (result == 22)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

LABEL_37:
      *a4 = v5;
      return 6;
    }

LABEL_6:
    v5 += v6;
    if ((a3 - v5) <= 1)
    {
      goto LABEL_37;
    }
  }

  if (v7 == 6)
  {
    v6 = 3;
    goto LABEL_6;
  }

  v6 = 2;
  if (v7 != 3)
  {
    goto LABEL_6;
  }

  if (v5 != a2)
  {
    goto LABEL_37;
  }

  v10 = a2 + 2;

  return little2_scanRef(a1, v10, a3, a4);
}