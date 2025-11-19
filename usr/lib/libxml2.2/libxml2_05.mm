const xmlChar *__cdecl xmlDictQLookup(xmlDictPtr dict, const xmlChar *prefix, const xmlChar *name)
{
  v3 = 0;
  if (!dict || !name)
  {
    return v3;
  }

  if (prefix)
  {
    v7 = strlen(name);
    v8 = strlen(prefix);
    v3 = 0;
    if (v7 >> 30)
    {
      return v3;
    }

    v9 = v8;
    if (v8 >> 30)
    {
      return v3;
    }

    v10 = *(dict + 2);
    v11 = *(dict + 12);
    if (v10 == 128)
    {
      v12 = xmlDictComputeFastQKey(prefix, v8, name, v7, v11);
    }

    else
    {
      v12 = xmlDictComputeBigQKey(prefix, v8, name, v7, v11);
    }

    v14 = v12;
    v41 = v9 + v7;
    __n = v9;
    v15 = v9 + v7 + 1;
    v16 = v12 % v10;
    v17 = *(dict + 1) + 32 * v16;
    v43 = v7;
    if (*(v17 + 20))
    {
      v18 = *v17;
      if (*v17)
      {
        v19 = 0;
        do
        {
          if (*(v17 + 24) == v14 && v15 == *(v17 + 16))
          {
            if (xmlStrQEqual(prefix, name, *(v17 + 8)))
            {
              return *(v17 + 8);
            }

            v18 = *v17;
          }

          v17 = v18;
          ++v19;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        v19 = 0;
      }

      if (*(v17 + 24) == v14 && v15 == *(v17 + 16) && xmlStrQEqual(prefix, name, *(v17 + 8)))
      {
        return *(v17 + 8);
      }
    }

    else
    {
      v19 = 0;
      v17 = 0;
    }

    v20 = *(dict + 5);
    if (!v20)
    {
LABEL_47:
      v26 = *(dict + 4);
      if (v26)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v3 = v26[1];
          if (v26[2] - v3 > v15)
          {
            v40 = v16;
            goto LABEL_66;
          }

          v29 = v26[3];
          if (v29 > v28)
          {
            v28 = v26[3];
          }

          v27 += v29;
          v26 = *v26;
        }

        while (v26);
        v30 = *(dict + 7);
        if (v30)
        {
          v31 = v27 > v30;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          return 0;
        }

        if (!v28)
        {
          goto LABEL_59;
        }

        v40 = v16;
        v32 = 4 * v28;
      }

      else
      {
LABEL_59:
        v40 = v16;
        v32 = 1000;
      }

      if (v32 <= (4 * v41 + 4))
      {
        v33 = (4 * v41 + 4);
      }

      else
      {
        v33 = v32;
      }

      v34 = malloc_type_malloc(v33 + 48, 0x1030040341BC655uLL);
      if (v34)
      {
        v26 = v34;
        v34[3] = v33;
        v34[4] = 0;
        v3 = (v34 + 5);
        v34[2] = v34 + v33 + 40;
        *v34 = *(dict + 4);
        v34[1] = v34 + 5;
        *(dict + 4) = v34;
LABEL_66:
        memcpy(v3, prefix, __n);
        v35 = (v26[1] + __n);
        v26[1] = v35 + 1;
        *v35 = 58;
        memcpy(v26[1], name, v43);
        v36 = (v26[1] + v43);
        v26[1] = v36 + 1;
        *v36 = 0;
        ++v26[4];
        if (!v3)
        {
          return v3;
        }

        if (!v17)
        {
          v38 = *(dict + 1) + 32 * v40;
          *v38 = 0;
          *(v38 + 8) = v3;
          *(v38 + 16) = v15;
          *(v38 + 20) = 1;
          *(v38 + 24) = v14;
LABEL_72:
          ++*(dict + 6);
          if (v19 >= 4)
          {
            v39 = *(dict + 2);
            if (v39 <= 0xAAA)
            {
              xmlDictGrow(dict, 6 * v39);
            }
          }

          return v3;
        }

        v37 = malloc_type_malloc(0x20uLL, 0x1070040F9ABC4D2uLL);
        if (v37)
        {
          *v37 = 0;
          v37[1] = v3;
          *(v37 + 4) = v15;
          *(v37 + 5) = 1;
          v37[3] = v14;
          *v17 = v37;
          goto LABEL_72;
        }
      }

      return 0;
    }

    v21 = *(v20 + 16);
    if (*(dict + 2) == 128)
    {
      if (v21 == 128)
      {
        v22 = v14;
        goto LABEL_35;
      }

      v23 = xmlDictComputeBigQKey(prefix, __n, name, v43, *(v20 + 48));
    }

    else
    {
      v22 = v14;
      if (v21 != 128)
      {
        goto LABEL_35;
      }

      v23 = xmlDictComputeFastQKey(prefix, __n, name, v43, *(v20 + 48));
    }

    v22 = v23;
LABEL_35:
    v24 = *(v20 + 8) + 32 * (v22 % v21);
    if (*(v24 + 20))
    {
      v25 = *v24;
      if (*v24)
      {
        do
        {
          if (*(v24 + 24) == v22 && v15 == *(v24 + 16))
          {
            if (xmlStrQEqual(prefix, name, *(v24 + 8)))
            {
              return *(v24 + 8);
            }

            v25 = *v24;
          }

          v24 = v25;
          ++v19;
          v25 = *v25;
        }

        while (v25);
      }

      if (*(v24 + 24) == v22 && v15 == *(v24 + 16) && xmlStrQEqual(prefix, name, *(v24 + 8)))
      {
        return *(v24 + 8);
      }
    }

    v16 = v14 % *(dict + 2);
    goto LABEL_47;
  }

  return xmlDictLookup(dict, name, -1);
}

uint64_t xmlDictComputeFastQKey(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, int a5)
{
  if (a2)
  {
    v5 = a5 + 30 * *a1;
  }

  else
  {
    v5 = a5 + 1740;
  }

  v6 = a4 - 11;
  if (a4 >= 11)
  {
    if (a4 - a2 - 2 >= 0)
    {
      v6 = a4 - a2 - 2;
    }

    v5 += a3[v6];
    a4 = 10;
    if (a2 >= 10)
    {
      a2 = 10;
    }
  }

  if (a2 > 5)
  {
    if (a2 <= 7)
    {
      if (a2 == 6)
      {
LABEL_26:
        v5 += a1[5];
        goto LABEL_27;
      }
    }

    else
    {
      if (a2 != 8)
      {
        if (a2 != 9)
        {
          if (a2 != 10)
          {
            goto LABEL_32;
          }

          v5 += a1[9];
        }

        v5 += a1[8];
      }

      v5 += a1[7];
    }

    v5 += a1[6];
    goto LABEL_26;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
LABEL_29:
      v5 += a1[2];
      goto LABEL_30;
    }

    if (a2 == 4)
    {
LABEL_28:
      v5 += a1[3];
      goto LABEL_29;
    }

LABEL_27:
    v5 += a1[4];
    goto LABEL_28;
  }

  if (a2 == 1)
  {
LABEL_31:
    v5 += *a1;
    goto LABEL_32;
  }

  if (a2 == 2)
  {
LABEL_30:
    v5 += a1[1];
    goto LABEL_31;
  }

LABEL_32:
  v7 = a4 - a2;
  v8 = a4 > a2;
  if (a4 <= a2)
  {
    result = v5;
  }

  else
  {
    result = v5 + 58;
  }

  v10 = v7 - v8;
  if (v7 - v8 <= 4)
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
LABEL_55:
        result += a3[2];
        goto LABEL_56;
      }

      if (v10 == 4)
      {
LABEL_54:
        result += a3[3];
        goto LABEL_55;
      }
    }

    else
    {
      if (v10 == 1)
      {
LABEL_57:
        result += *a3;
        return result;
      }

      if (v10 == 2)
      {
LABEL_56:
        result += a3[1];
        goto LABEL_57;
      }
    }
  }

  else if (v10 <= 6)
  {
    if (v10 == 5)
    {
LABEL_53:
      result += a3[4];
      goto LABEL_54;
    }

    if (v10 == 6)
    {
LABEL_52:
      result += a3[5];
      goto LABEL_53;
    }
  }

  else
  {
    switch(v10)
    {
      case 7:
LABEL_42:
        result += a3[6];
        goto LABEL_52;
      case 8:
LABEL_41:
        result += a3[7];
        goto LABEL_42;
      case 9:
        result += a3[8];
        goto LABEL_41;
    }
  }

  return result;
}

uint64_t xmlDictComputeBigQKey(unsigned __int8 *a1, int a2, unsigned __int8 *a3, int a4, unsigned int a5)
{
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v6 = *a1++;
      a5 = (1025 * (a5 + v6)) ^ ((1025 * (a5 + v6)) >> 6);
      --v5;
    }

    while (v5);
  }

  v7 = (1025 * a5 + 59450) ^ ((1025 * a5 + 59450) >> 6);
  if (a4 >= 1)
  {
    v8 = a4;
    do
    {
      v9 = *a3++;
      v7 = (1025 * (v7 + v9)) ^ ((1025 * (v7 + v9)) >> 6);
      --v8;
    }

    while (v8);
  }

  return 32769 * ((9 * v7) ^ ((9 * v7) >> 11));
}

int xmlDictSize(xmlDictPtr dict)
{
  if (!dict)
  {
    return -1;
  }

  v1 = *(dict + 5);
  result = *(dict + 6);
  if (v1)
  {
    result += *(v1 + 24);
  }

  return result;
}

size_t xmlDictGetUsage(size_t dict)
{
  if (dict)
  {
    v1 = *(dict + 32);
    if (v1)
    {
      dict = 0;
      do
      {
        dict += v1[3];
        v1 = *v1;
      }

      while (v1);
    }

    else
    {
      return 0;
    }
  }

  return dict;
}

int docbEncodeEntities(unsigned __int8 *out, int *outlen, const unsigned __int8 *in, int *inlen, int quoteChar)
{
  if ((docbEncodeEntities_deprecated & 1) == 0)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "docbEncodeEntities() deprecated function reached\n");
    docbEncodeEntities_deprecated = 1;
  }

  return -1;
}

int docbParseDocument(docbParserCtxtPtr ctxt)
{
  if ((docbParseDocument_deprecated & 1) == 0)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "docbParseDocument() deprecated function reached\n");
    docbParseDocument_deprecated = 1;
  }

  return xmlParseDocument(ctxt);
}

void docbFreeParserCtxt(docbParserCtxtPtr ctxt)
{
  if ((docbFreeParserCtxt_deprecated & 1) == 0)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "docbFreeParserCtxt() deprecated function reached\n");
    docbFreeParserCtxt_deprecated = 1;
  }

  xmlFreeParserCtxt(ctxt);
}

int docbParseChunk(docbParserCtxtPtr ctxt, const char *chunk, int size, int terminate)
{
  if ((docbParseChunk_deprecated & 1) == 0)
  {
    v8 = *__xmlGenericError();
    v9 = __xmlGenericErrorContext();
    v8(*v9, "docbParseChunk() deprecated function reached\n");
    docbParseChunk_deprecated = 1;
  }

  return xmlParseChunk(ctxt, chunk, size, terminate);
}

docbParserCtxtPtr docbCreatePushParserCtxt(docbSAXHandlerPtr sax, void *user_data, const char *chunk, int size, const char *filename, xmlCharEncoding enc)
{
  if ((docbCreatePushParserCtxt_deprecated & 1) == 0)
  {
    v11 = *__xmlGenericError();
    v12 = __xmlGenericErrorContext();
    v11(*v12, "docbParseChunk() deprecated function reached\n");
    docbCreatePushParserCtxt_deprecated = 1;
  }

  return xmlCreatePushParserCtxt(sax, user_data, chunk, size, filename);
}

docbDocPtr docbSAXParseDoc(xmlChar *cur, const char *encoding, docbSAXHandlerPtr sax, void *userData)
{
  if ((docbSAXParseDoc_deprecated & 1) == 0)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "docbParseChunk() deprecated function reached\n");
    docbSAXParseDoc_deprecated = 1;
  }

  v9 = xmlStrlen(cur);

  return xmlSAXParseMemoryWithData(sax, cur, v9, 0, userData);
}

docbDocPtr docbParseDoc(xmlChar *cur, const char *encoding)
{
  if ((docbParseDoc_deprecated & 1) == 0)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "docbParseChunk() deprecated function reached\n");
    docbParseDoc_deprecated = 1;
  }

  return xmlParseDoc(cur);
}

docbParserCtxtPtr docbCreateFileParserCtxt(const char *filename, const char *encoding)
{
  if ((docbCreateFileParserCtxt_deprecated & 1) == 0)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "docbCreateFileParserCtxt() deprecated function reached\n");
    docbCreateFileParserCtxt_deprecated = 1;
  }

  return xmlCreateFileParserCtxt(filename);
}

docbDocPtr docbSAXParseFile(const char *filename, const char *encoding, docbSAXHandlerPtr sax, void *userData)
{
  if ((docbSAXParseFile_deprecated & 1) == 0)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "docbSAXParseFile() deprecated function reached\n");
    docbSAXParseFile_deprecated = 1;
  }

  return xmlSAXParseFileWithData(sax, filename, 0, userData);
}

docbDocPtr docbParseFile(const char *filename, const char *encoding)
{
  if ((docbParseFile_deprecated & 1) == 0)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "docbParseFile() deprecated function reached\n");
    docbParseFile_deprecated = 1;
  }

  return xmlParseFile(filename);
}

int isolat1ToUTF8(unsigned __int8 *out, int *outlen, const unsigned __int8 *in, int *inlen)
{
  v4 = -1;
  if (inlen && outlen && out && in)
  {
    v5 = &out[*outlen];
    v6 = *inlen;
    v7 = v6 > 0;
    if (v6 < 1)
    {
      LODWORD(v8) = in;
      LODWORD(v9) = out;
    }

    else
    {
      v8 = in;
      v9 = out;
      v10 = *outlen - 1 < 0;
      if (v5 - 1 > out)
      {
        v11 = &in[v6];
        v12 = v11;
        v9 = out;
        v8 = in;
        do
        {
          v13 = *v8;
          if (v13 < 0)
          {
            *v9 = (v13 >> 6) | 0xC0;
            v14 = *v8++;
            v9[1] = v14 & 0x3F | 0x80;
            v9 += 2;
          }

          if (v12 - v8 > v5 - v9)
          {
            v12 = &v8[v5 - v9];
          }

          if (v8 < v12)
          {
            v15 = v12 - v8;
            while (1)
            {
              v16 = *v8;
              if (v16 < 0)
              {
                break;
              }

              ++v8;
              *v9++ = v16;
              if (!--v15)
              {
                v8 = v12;
                break;
              }
            }
          }

          v7 = v8 < v11;
        }

        while (v8 < v11 && v9 < v5 - 1);
      }

      if (v7 && v9 < v5)
      {
        v17 = *v8;
        if ((v17 & 0x80000000) == 0)
        {
          LODWORD(v8) = v8 + 1;
          *v9 = v17;
          LODWORD(v9) = v9 + 1;
        }
      }
    }

    *outlen = v9 - out;
    *inlen = v8 - in;
    return *outlen;
  }

  return v4;
}

int UTF8Toisolat1(unsigned __int8 *out, int *outlen, const unsigned __int8 *in, int *inlen)
{
  v4 = -1;
  if (out && outlen && inlen)
  {
    if (in)
    {
      v5 = *inlen;
      LODWORD(v6) = in;
      LODWORD(v7) = out;
      if (v5 >= 1)
      {
        v8 = &in[v5];
        v9 = &out[*outlen];
        v7 = out;
        v10 = in;
        v6 = in;
        while (1)
        {
          v11 = *v6++;
          v12 = v11;
          if (v11 < 0)
          {
            if (v12 <= 0xBF)
            {
              goto LABEL_29;
            }

            if (v12 > 0xDF)
            {
              if (v12 > 0xEF)
              {
                if (v12 > 0xF7)
                {
                  goto LABEL_29;
                }

                v14 = v12 & 7;
                v13 = 3;
              }

              else
              {
                v14 = v12 & 0xF;
                v13 = 2;
              }
            }

            else
            {
              v14 = v12 & 0x1F;
              v13 = 1;
            }
          }

          else
          {
            v13 = 0;
            v14 = v12;
          }

          if (v8 - v6 < v13)
          {
            break;
          }

          if ((v12 & 0x80) != 0 && v6 < v8)
          {
            v15 = v13 - 1;
            while (1)
            {
              v16 = *v6;
              if ((*v6 & 0xC0) != 0x80)
              {
                break;
              }

              ++v6;
              v17 = v14 << 6;
              v14 = (v14 << 6) | v16 & 0x3F;
              v18 = v15-- != 0;
              if (!v18 || v6 >= v8)
              {
                if (v17 > 0xFF)
                {
                  break;
                }

                goto LABEL_25;
              }
            }

LABEL_29:
            *outlen = v7 - out;
            *inlen = v10 - in;
            return -2;
          }

LABEL_25:
          if (v7 >= v9)
          {
            break;
          }

          *v7++ = v14;
          v10 = v6;
          if (v6 >= v8)
          {
            goto LABEL_31;
          }
        }

        LODWORD(v6) = v10;
      }

LABEL_31:
      *outlen = v7 - out;
      *inlen = v6 - in;
      return *outlen;
    }

    else
    {
      v4 = 0;
      *outlen = 0;
      *inlen = 0;
    }
  }

  return v4;
}

void xmlCleanupEncodingAliases(void)
{
  v0 = xmlCharEncodingAliases;
  if (xmlCharEncodingAliases)
  {
    v1 = xmlCharEncodingAliasesNb;
    if (xmlCharEncodingAliasesNb >= 1)
    {
      v2 = (xmlCharEncodingAliases + 8);
      do
      {
        v3 = *(v2 - 1);
        if (v3)
        {
          free(v3);
        }

        if (*v2)
        {
          free(*v2);
        }

        v2 += 2;
        --v1;
      }

      while (v1);
    }

    xmlCharEncodingAliasesNb = 0;
    xmlCharEncodingAliasesMax = 0;
    free(v0);
    xmlCharEncodingAliases = 0;
  }
}

int xmlAddEncodingAlias(const char *name, const char *alias)
{
  v22 = *MEMORY[0x1E69E9840];
  result = -1;
  if (name && alias)
  {
    v5 = 0;
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    do
    {
      v6 = __toupper(alias[v5]);
      *(v20 + v5) = v6;
      if (!v6)
      {
        break;
      }

      ++v5;
    }

    while (v5 != 99);
    *(v20 + v5) = 0;
    v7 = xmlCharEncodingAliasesNb;
    if (xmlCharEncodingAliasesNb >= xmlCharEncodingAliasesMax)
    {
      if (xmlCharEncodingAliasesMax < 1)
      {
        v8 = 20;
      }

      else
      {
        if (xmlCharEncodingAliasesMax > 0x3B9AC9FF)
        {
          goto LABEL_25;
        }

        if (1000000000 - ((xmlCharEncodingAliasesMax + 1) >> 1) >= xmlCharEncodingAliasesMax)
        {
          v8 = xmlCharEncodingAliasesMax + ((xmlCharEncodingAliasesMax + 1) >> 1);
        }

        else
        {
          v8 = 1000000000;
        }
      }

      v9 = malloc_type_realloc(xmlCharEncodingAliases, 16 * v8, 0x50040D3D5ADE1uLL);
      if (!v9)
      {
        goto LABEL_25;
      }

      xmlCharEncodingAliases = v9;
      xmlCharEncodingAliasesMax = v8;
      v7 = xmlCharEncodingAliasesNb;
    }

    if (v7 >= 1)
    {
      v10 = xmlCharEncodingAliases;
      v11 = v7;
      while (strcmp(*(v10 + 8), v20))
      {
        v10 += 16;
        if (!--v11)
        {
          goto LABEL_19;
        }
      }

      v17 = strdup(name);
      if (v17)
      {
        v18 = v17;
        free(*v10);
        result = 0;
        *v10 = v18;
        goto LABEL_26;
      }

LABEL_25:
      result = -1;
      goto LABEL_26;
    }

LABEL_19:
    v12 = strdup(name);
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = v12;
    v14 = strdup(v20);
    if (!v14)
    {
      free(v13);
      goto LABEL_25;
    }

    v15 = v14;
    result = 0;
    v16 = (xmlCharEncodingAliases + 16 * v7);
    *v16 = v13;
    v16[1] = v15;
    xmlCharEncodingAliasesNb = v7 + 1;
  }

LABEL_26:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlDelEncodingAlias(const char *alias)
{
  result = -1;
  if (alias)
  {
    if (xmlCharEncodingAliases)
    {
      v3 = xmlCharEncodingAliasesNb;
      if (xmlCharEncodingAliasesNb >= 1)
      {
        v4 = 16 * (xmlCharEncodingAliasesNb - 1);
        v5 = (xmlCharEncodingAliases + 8);
        v6 = xmlCharEncodingAliasesNb;
        while (strcmp(*v5, alias))
        {
          v4 -= 16;
          v5 += 2;
          if (!--v6)
          {
            return -1;
          }
        }

        free(*(v5 - 1));
        free(*v5);
        xmlCharEncodingAliasesNb = v3 - 1;
        memmove(v5 - 1, v5 + 1, v4);
        return 0;
      }
    }
  }

  return result;
}

xmlCharEncoding xmlParseCharEncoding(const char *name)
{
  v31 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v1 = name;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    EncodingAlias = xmlGetEncodingAlias(name);
    v3 = 0;
    if (EncodingAlias)
    {
      v1 = EncodingAlias;
    }

    do
    {
      v4 = __toupper(v1[v3]);
      *(v29 + v3) = v4;
      if (!v4)
      {
        break;
      }

      ++v3;
    }

    while (v3 != 499);
    *(v29 + v3) = 0;
    if (LOBYTE(v29[0]))
    {
      v5 = LODWORD(v29[0]) == 759583829 && WORD2(v29[0]) == 56;
      if (v5 || !(LODWORD(v29[0]) ^ 0x38465455 | BYTE4(v29[0])))
      {
        LODWORD(name) = 1;
      }

      else
      {
        v6 = LODWORD(v29[0]) == 759583829 && *(v29 + 3) == 3551533;
        if (v6 || (LODWORD(v29[0]) == 826692693 ? (v7 = WORD2(v29[0]) == 54) : (v7 = 0), v7))
        {
          LODWORD(name) = 2;
        }

        else
        {
          v8 = *&v29[0] == 0x343630312D4F5349 && *(&v29[0] + 1) == 0x322D5343552D36;
          if (v8 || (LODWORD(v29[0]) == 760431445 ? (v9 = WORD2(v29[0]) == 50) : (v9 = 0), v9 || !(LODWORD(v29[0]) ^ 0x32534355 | BYTE4(v29[0]))))
          {
            LODWORD(name) = 9;
          }

          else
          {
            v10 = *&v29[0] == 0x343630312D4F5349 && *(&v29[0] + 1) == 0x342D5343552D36;
            if (v10 || (LODWORD(v29[0]) == 760431445 ? (v11 = WORD2(v29[0]) == 52) : (v11 = 0), v11 || !(LODWORD(v29[0]) ^ 0x34534355 | BYTE4(v29[0]))))
            {
              LODWORD(name) = 4;
            }

            else
            {
              v12 = *&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x312D393538382DLL;
              if (v12 || (*&v29[0] == 0x4954414C2D4F5349 ? (v13 = DWORD2(v29[0]) == 3222862) : (v13 = 0), v13 || (*&v29[0] == 0x4954414C204F5349 ? (v14 = DWORD2(v29[0]) == 3219534) : (v14 = 0), v14)))
              {
                LODWORD(name) = 10;
              }

              else
              {
                v15 = *&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x322D393538382DLL;
                if (v15 || (*&v29[0] == 0x4954414C2D4F5349 ? (v16 = DWORD2(v29[0]) == 3288398) : (v16 = 0), v16 || (*&v29[0] == 0x4954414C204F5349 ? (v17 = DWORD2(v29[0]) == 3285070) : (v17 = 0), v17)))
                {
                  LODWORD(name) = 11;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x332D393538382DLL)
                {
                  LODWORD(name) = 12;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x342D393538382DLL)
                {
                  LODWORD(name) = 13;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x352D393538382DLL)
                {
                  LODWORD(name) = 14;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x362D393538382DLL)
                {
                  LODWORD(name) = 15;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x372D393538382DLL)
                {
                  LODWORD(name) = 16;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x382D393538382DLL)
                {
                  LODWORD(name) = 17;
                }

                else if (*&v29[0] == 0x393538382D4F5349 && *(v29 + 3) == 0x392D393538382DLL)
                {
                  LODWORD(name) = 18;
                }

                else if (*&v29[0] == 0x323230322D4F5349 && DWORD2(v29[0]) == 5261869)
                {
                  LODWORD(name) = 19;
                }

                else if (*&v29[0] == 0x494A5F5446494853 && WORD4(v29[0]) == 83)
                {
                  LODWORD(name) = 20;
                }

                else if (LODWORD(v29[0]) ^ 0x2D435545 | *(v29 + 3) ^ 0x504A2D)
                {
                  LODWORD(name) = -1;
                }

                else
                {
                  LODWORD(name) = 21;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      LODWORD(name) = 0;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return name;
}

const char *__cdecl xmlGetCharEncodingName(xmlCharEncoding enc)
{
  if ((enc - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return off_1E82BEAC8[enc - 1];
  }
}

uint64_t UTF8ToUTF8(void *__dst, unsigned int *a2, void *__src, _DWORD *a4)
{
  result = 0xFFFFFFFFLL;
  if (__dst && a2 && a4)
  {
    if (__src)
    {
      if (*a2 >= *a4)
      {
        v8 = *a4;
      }

      else
      {
        v8 = *a2;
      }

      if ((v8 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        memcpy(__dst, __src, v8);
        *a2 = v8;
        *a4 = v8;
        return *a2;
      }
    }

    else
    {
      result = 0;
      *a2 = 0;
      *a4 = 0;
    }
  }

  return result;
}

uint64_t UTF16LEToUTF8(_BYTE *a1, unsigned int *a2, unsigned __int16 *a3, int *a4)
{
  v4 = *a2;
  if (!v4)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  v5 = *a4;
  if ((*a4 & 0x80000001) == 1)
  {
    *a4 = --v5;
  }

  LODWORD(v6) = a1;
  LODWORD(v7) = a3;
  if ((v5 + 1) < 3)
  {
LABEL_36:
    *a2 = v6 - a1;
    *a4 = v7 - a3;
    return *a2;
  }

  v8 = &a3[v5 / 2];
  v9 = &a1[v4];
  v7 = a3;
  v6 = a1;
  while (1)
  {
    v10 = v7;
    if (v6 - a1 + 5 >= *a2)
    {
LABEL_35:
      LODWORD(v7) = v10;
      goto LABEL_36;
    }

    ++v7;
    v11 = *v10;
    if ((v11 & 0xFC00) == 0xD800)
    {
      break;
    }

LABEL_11:
    if (v6 >= v9)
    {
      goto LABEL_35;
    }

    if (v11 <= 0x7F)
    {
      *v6++ = v11;
    }

    else
    {
      if (v11 >= 0x10000)
      {
        v13 = 18;
      }

      else
      {
        v13 = 12;
      }

      if (v11 >= 0x10000)
      {
        v14 = -16;
      }

      else
      {
        v14 = -32;
      }

      if (v11 < 0x800)
      {
        v13 = 6;
        v14 = -64;
      }

      *v6++ = v14 | (v11 >> v13);
      if (v6 < v9)
      {
        if (v11 >= 0x10000)
        {
          v15 = 12;
        }

        else
        {
          v15 = 6;
        }

        if (v11 < 0x800)
        {
          v15 = 0;
        }

        do
        {
          *v6++ = (v11 >> v15) & 0x3F | 0x80;
          v16 = v15 >= 6;
          v15 -= 6;
        }

        while (v16 && v6 < v9);
      }
    }

    if (v7 >= v8)
    {
      goto LABEL_36;
    }
  }

  if (v7 >= v8)
  {
    goto LABEL_35;
  }

  v12 = *v7;
  if ((*v7 & 0xFC00) == 0xDC00)
  {
    v7 = v10 + 2;
    v11 = (v12 & 0x3FF | ((v11 & 0x3FF) << 10)) + 0x10000;
    goto LABEL_11;
  }

  *a2 = v6 - a1;
  *a4 = v10 - a3;
  return 4294967294;
}

uint64_t UTF8ToUTF16LE(_WORD *a1, unsigned int *a2, char *a3, int *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a4)
  {
    if (a3)
    {
      v5 = *a4;
      LODWORD(v6) = a1;
      LODWORD(v7) = a3;
      if (v5 >= 1)
      {
        v8 = &a3[v5];
        v9 = &a1[*a2 / 2];
        v10 = a3;
        v6 = a1;
        v7 = a3;
        do
        {
          v11 = *v7++;
          v12 = v11;
          if (v11 < 0)
          {
            if (v12 <= 0xBF)
            {
              goto LABEL_36;
            }

            if (v12 > 0xDF)
            {
              if (v12 > 0xEF)
              {
                if (v12 > 0xF7)
                {
LABEL_36:
                  *a2 = v6 - a1;
                  *a4 = v10 - a3;
                  return 4294967294;
                }

                v14 = v12 & 7;
                v13 = 3;
              }

              else
              {
                v14 = v12 & 0xF;
                v13 = 2;
              }
            }

            else
            {
              v14 = v12 & 0x1F;
              v13 = 1;
            }
          }

          else
          {
            v13 = 0;
            v14 = v12;
          }

          if ((v8 - v7) < v13)
          {
            goto LABEL_33;
          }

          if ((v12 & 0x80) == 0 || v7 >= v8)
          {
            goto LABEL_25;
          }

          v15 = v13 - 1;
          v16 = v10 + 2;
          do
          {
            v7 = v16;
            v17 = *(v16 - 1);
            if ((v17 & 0xC0) != 0x80)
            {
              break;
            }

            v14 = v17 & 0x3F | (v14 << 6);
            if (v15-- == 0)
            {
              break;
            }

            v16 = v7 + 1;
          }

          while (v7 < v8);
          if (HIWORD(v14))
          {
            if (HIWORD(v14) > 0x10u || (v6 + 1) >= v9)
            {
LABEL_33:
              LODWORD(v7) = v10;
              break;
            }

            *v6 = ((v14 + 16711680) >> 10) | 0xD800;
            v6[1] = v14 & 0x3FF | 0xDC00;
            v6 += 2;
          }

          else
          {
LABEL_25:
            if (v6 >= v9)
            {
              goto LABEL_33;
            }

            *v6++ = v14;
          }

          v10 = v7;
        }

        while (v7 < v8);
      }

      *a2 = v6 - a1;
      *a4 = v7 - a3;
      return *a2;
    }

    else
    {
      v4 = 0;
      *a2 = 0;
      *a4 = 0;
    }
  }

  return v4;
}

uint64_t UTF16BEToUTF8(_BYTE *a1, unsigned int *a2, unsigned __int8 *a3, int *a4)
{
  v4 = *a2;
  if (!v4)
  {
    result = 0;
    *a4 = 0;
    return result;
  }

  v5 = *a4;
  if ((*a4 & 0x80000001) == 1)
  {
    *a4 = --v5;
  }

  LODWORD(v6) = a1;
  LODWORD(v7) = a3;
  if ((v5 + 1) < 3)
  {
LABEL_36:
    *a2 = v6 - a1;
    *a4 = v7 - a3;
    return *a2;
  }

  v8 = &a3[2 * (v5 / 2)];
  v9 = &a1[v4];
  v7 = a3;
  v6 = a1;
  while (1)
  {
    v10 = v7;
    if (v6 - a1 + 5 >= *a2)
    {
LABEL_35:
      LODWORD(v7) = v10;
      goto LABEL_36;
    }

    v11 = *v7;
    v12 = v7[1] | (v11 << 8);
    v7 += 2;
    if ((v11 & 0xFC) == 0xD8)
    {
      break;
    }

LABEL_11:
    if (v6 >= v9)
    {
      goto LABEL_35;
    }

    if (v12 <= 0x7F)
    {
      *v6++ = v12;
    }

    else
    {
      if (v12 >= 0x10000)
      {
        v14 = 18;
      }

      else
      {
        v14 = 12;
      }

      if (v12 >= 0x10000)
      {
        v15 = -16;
      }

      else
      {
        v15 = -32;
      }

      if (v12 < 0x800)
      {
        v14 = 6;
        v15 = -64;
      }

      *v6++ = v15 | (v12 >> v14);
      if (v6 < v9)
      {
        if (v12 >= 0x10000)
        {
          v16 = 12;
        }

        else
        {
          v16 = 6;
        }

        if (v12 < 0x800)
        {
          v16 = 0;
        }

        do
        {
          *v6++ = (v12 >> v16) & 0x3F | 0x80;
          v17 = v16 >= 6;
          v16 -= 6;
        }

        while (v17 && v6 < v9);
      }
    }

    if (v7 >= v8)
    {
      goto LABEL_36;
    }
  }

  if (v7 >= v8)
  {
    goto LABEL_35;
  }

  v13 = *v7;
  if ((*v7 & 0xFC) == 0xDC)
  {
    v7 = v10 + 4;
    v12 = (v10[3] | ((v13 & 3) << 8) & 0x3FF | ((v12 & 0x3FF) << 10)) + 0x10000;
    goto LABEL_11;
  }

  *a2 = v6 - a1;
  *a4 = v10 - a3;
  return 4294967294;
}

uint64_t UTF8ToUTF16BE(_BYTE *a1, unsigned int *a2, char *a3, int *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a4)
  {
    if (a3)
    {
      v5 = *a4;
      LODWORD(v6) = a1;
      LODWORD(v7) = a3;
      if (v5 >= 1)
      {
        v8 = &a3[v5];
        v9 = &a1[2 * (*a2 / 2)];
        v10 = a3;
        v6 = a1;
        v7 = a3;
        do
        {
          v11 = *v7++;
          v12 = v11;
          if (v11 < 0)
          {
            if (v12 <= 0xBF)
            {
              goto LABEL_36;
            }

            if (v12 > 0xDF)
            {
              if (v12 > 0xEF)
              {
                if (v12 > 0xF7)
                {
LABEL_36:
                  *a2 = (v6 - a1) >> 1;
                  *a4 = v10 - a3;
                  return 4294967294;
                }

                v14 = v12 & 7;
                v13 = 3;
              }

              else
              {
                v14 = v12 & 0xF;
                v13 = 2;
              }
            }

            else
            {
              v14 = v12 & 0x1F;
              v13 = 1;
            }
          }

          else
          {
            v13 = 0;
            v14 = v12;
          }

          if ((v8 - v7) < v13)
          {
            goto LABEL_33;
          }

          if ((v12 & 0x80) == 0 || v7 >= v8)
          {
            goto LABEL_25;
          }

          v15 = v13 - 1;
          v16 = v10 + 2;
          do
          {
            v7 = v16;
            v17 = *(v16 - 1);
            if ((v17 & 0xC0) != 0x80)
            {
              break;
            }

            v14 = v17 & 0x3F | (v14 << 6);
            if (v15-- == 0)
            {
              break;
            }

            v16 = v7 + 1;
          }

          while (v7 < v8);
          if (HIWORD(v14))
          {
            if (HIWORD(v14) > 0x10u || (v6 + 2) >= v9)
            {
LABEL_33:
              LODWORD(v7) = v10;
              break;
            }

            *v6 = ((v14 - 0x10000) >> 18) | 0xD8;
            v6[1] = (v14 - 0x10000) >> 10;
            v6[2] = BYTE1(v14) & 3 | 0xDC;
            v19 = 3;
            v20 = 4;
          }

          else
          {
LABEL_25:
            if (v6 >= v9)
            {
              goto LABEL_33;
            }

            *v6 = BYTE1(v14);
            v19 = 1;
            v20 = 2;
          }

          v6[v19] = v14;
          v6 += v20;
          v10 = v7;
        }

        while (v7 < v8);
      }

      *a2 = v6 - a1;
      *a4 = v7 - a3;
      return *a2;
    }

    else
    {
      v4 = 0;
      *a2 = 0;
      *a4 = 0;
    }
  }

  return v4;
}

uint64_t UTF8ToUTF16(_WORD *a1, unsigned int *a2, char *a3, int *a4)
{
  if (a3)
  {
    return UTF8ToUTF16LE(a1, a2, a3, a4);
  }

  if (*a2 < 2)
  {
    result = 0;
    *a2 = 0;
  }

  else
  {
    *a1 = -257;
    result = 2;
    *a2 = 2;
  }

  *a4 = 0;
  return result;
}

uint64_t asciiToUTF8(uint64_t a1, unsigned int *a2, char *a3, int *a4)
{
  v4 = *a4;
  if (v4 < 1)
  {
    LODWORD(v9) = a1;
    LODWORD(v8) = a3;
  }

  else
  {
    v5 = 0;
    v6 = a1 + *a2;
    v7 = &a3[v4];
    v8 = a3;
    while (1)
    {
      v9 = (a1 + v5);
      if (v5 + 5 >= *a2 || v9 >= v6)
      {
        break;
      }

      v11 = *v8++;
      v10 = v11;
      if (v11 < 0)
      {
        *a2 = v5;
        *a4 = v5;
        return 4294967294;
      }

      *v9 = v10;
      ++v5;
      if (v8 >= v7)
      {
        LODWORD(v9) = a1 + v5;
        break;
      }
    }
  }

  *a2 = v9 - a1;
  *a4 = v8 - a3;
  return *a2;
}

uint64_t UTF8Toascii(_BYTE *a1, unsigned int *a2, char *a3, int *a4)
{
  v4 = 0xFFFFFFFFLL;
  if (a1 && a2 && a4)
  {
    if (a3)
    {
      v5 = *a4;
      LODWORD(v6) = a3;
      LODWORD(v7) = a1;
      if (v5 < 1)
      {
LABEL_30:
        *a2 = v7 - a1;
        *a4 = v6 - a3;
        return *a2;
      }

      else
      {
        v8 = &a3[v5];
        v9 = &a1[*a2];
        v7 = a1;
        v10 = a3;
        v6 = a3;
        while (1)
        {
          v11 = *v6++;
          v12 = v11;
          if (v11 < 0)
          {
            if (v12 <= 0xBF)
            {
              break;
            }

            if (v12 > 0xDF)
            {
              if (v12 > 0xEF)
              {
                if (v12 > 0xF7)
                {
                  break;
                }

                v14 = v12 & 7;
                v13 = 3;
              }

              else
              {
                v14 = v12 & 0xF;
                v13 = 2;
              }
            }

            else
            {
              v14 = v12 & 0x1F;
              v13 = 1;
            }
          }

          else
          {
            v13 = 0;
            v14 = v12;
          }

          if ((v8 - v6) < v13)
          {
LABEL_29:
            LODWORD(v6) = v10;
            goto LABEL_30;
          }

          if ((v12 & 0x80) != 0 && v6 < v8)
          {
            v15 = v13 - 1;
            v16 = v10 + 2;
            do
            {
              v6 = v16;
              v17 = *(v16 - 1);
              if ((v17 & 0xC0) != 0x80)
              {
                break;
              }

              v14 = v17 & 0x3F | (v14 << 6);
              if (v15-- == 0)
              {
                break;
              }

              v16 = v6 + 1;
            }

            while (v6 < v8);
          }

          if (v14 > 0x7F)
          {
            break;
          }

          if (v7 >= v9)
          {
            goto LABEL_29;
          }

          *v7++ = v14;
          v10 = v6;
          if (v6 >= v8)
          {
            goto LABEL_30;
          }
        }

        *a2 = v7 - a1;
        *a4 = v10 - a3;
        return 4294967294;
      }
    }

    else
    {
      v4 = 0;
      *a2 = 0;
      *a4 = 0;
    }
  }

  return v4;
}

void xmlCleanupCharEncodingHandlers(void)
{
  xmlCleanupEncodingAliases();
  v0 = handlers;
  if (handlers)
  {
    if (nbCharEncodingHandler >= 1)
    {
      v1 = nbCharEncodingHandler + 1;
      v2 = (handlers + 8 * nbCharEncodingHandler - 8);
      do
      {
        v3 = *v2;
        if (*v2)
        {
          if (*v3)
          {
            free(*v3);
            v3 = *v2;
          }

          free(v3);
        }

        --v1;
        --v2;
      }

      while (v1 > 1);
    }

    free(v0);
    handlers = 0;
    nbCharEncodingHandler = 0;
  }
}

void closeIcuConverter(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    ucnv_close();
    v3 = a1[1];
    ucnv_close();

    free(a1);
  }
}

uint64_t xmlCharEncFirstLineInt(uint64_t a1, xmlBufferPtr buf, uint64_t a3, signed int a4)
{
  result = 0xFFFFFFFFLL;
  if (a1 && buf && a3)
  {
    use = buf->use;
    v9 = buf->size + ~use;
    v10 = *(a3 + 8);
    len = v10;
    v15 = v9;
    if (a4 < 0)
    {
      if (v10 >= 181)
      {
        v10 = 180;
        len = 180;
      }
    }

    else if (v10 > a4)
    {
      len = a4;
      v10 = a4;
    }

    if (2 * v10 >= v9)
    {
      xmlBufferGrow(buf, 2 * v10);
      use = buf->use;
      v15 = buf->size + ~use;
    }

    v11 = xmlEncInputChunk(a1, &buf->content[use], &v15, *a3, &len, 0);
    xmlBufferShrink(a3, len);
    v12 = buf->use + v15;
    buf->use = v12;
    buf->content[v12] = 0;
    if (v11 == -1)
    {
      v13 = -3;
    }

    else
    {
      v13 = v11;
    }

    if (v13 == -3)
    {
      v13 = 0;
    }

    if (v15)
    {
      return v15;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

size_t xmlCharEncFirstLineInput(uint64_t a1, int a2)
{
  *&len[60] = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 24) && (v3 = *(a1 + 32)) != 0 && (v4 = *(a1 + 40)) != 0)
  {
    result = xmlBufUse(*(a1 + 40));
    if (result)
    {
      v7 = result;
      v8 = xmlBufAvail(v3);
      if (a2 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = 180;
      }

      if (v9 >= v7)
      {
        v10 = v7;
      }

      else
      {
        v10 = v9;
      }

      if (2 * v10 >= v8)
      {
        xmlBufGrow(v3, 2 * v10);
        v8 = xmlBufAvail(v3);
      }

      v11 = 360;
      if (v8 < 0x168)
      {
        v11 = v8;
      }

      v20 = v11;
      *len = v10;
      v12 = *(a1 + 24);
      v13 = xmlBufEnd(v3);
      v14 = xmlBufContent(v4);
      v15 = xmlEncInputChunk(v12, v13, &v20, v14, len, 0);
      xmlBufShrink(v4, *len);
      xmlBufAddLen(v3, v20);
      if (v15 == -1)
      {
        v16 = -3;
      }

      else
      {
        v16 = v15;
      }

      if (v16 == -2)
      {
        memset(&len[4], 0, 49);
        v17 = xmlBufContent(v4);
        snprintf(&len[4], 0x31uLL, "0x%02X 0x%02X 0x%02X 0x%02X", *v17, v17[1], v17[2], v17[3]);
        len[53] = 0;
        __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6003, 3, 0, 0, &len[4], 0, 0, 0, 0, "input conversion failed due to input error, bytes %s\n", &len[4]);
      }

      if (v16 == -3)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      if (v20)
      {
        result = v20;
      }

      else
      {
        result = v18;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlCharEncInFunc(xmlCharEncodingHandler *handler, xmlBufferPtr out, xmlBufferPtr in)
{
  v23 = *MEMORY[0x1E69E9840];
  result = -1;
  if (handler && out && in)
  {
    use = in->use;
    len = use;
    if (use)
    {
      v8 = out->use;
      size = out->size;
      v17 = size + ~v8;
      v10 = 2 * use;
      if (v10 >= v17)
      {
        xmlBufferGrow(out, size + v10);
        v8 = out->use;
        v17 = out->size + ~v8;
      }

      v11 = xmlEncInputChunk(handler, &out->content[v8], &v17, in->content, &len, 1);
      xmlBufferShrink(in, len);
      v12 = out->use + v17;
      out->use = v12;
      out->content[v12] = 0;
      if (v11 == -1)
      {
        v13 = -3;
      }

      else
      {
        v13 = v11;
      }

      if (v13 == -2)
      {
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        *__str = 0u;
        snprintf(__str, 0x31uLL, "0x%02X 0x%02X 0x%02X 0x%02X", *in->content, in->content[1], in->content[2], in->content[3]);
        v22 = 0;
        __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6003, 3, 0, 0, __str, 0, 0, 0, 0, "input conversion failed due to input error, bytes %s\n", __str);
      }

      if (v13 == -3)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      if (v17)
      {
        result = v17;
      }

      else
      {
        result = v14;
      }
    }

    else
    {
      result = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlCharEncOutput(void *a1, int a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!a1 || !a1[3] || (v3 = a1[4]) == 0 || (v4 = a1[5]) == 0)
  {
    v10 = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  *&len[1] = 0;
  v6 = xmlBufAvail(v4);
  v7 = v6;
  if (a2)
  {
    *&len[1] = v6;
    v8 = a1[3];
    v9 = xmlBufEnd(v4);
    xmlEncOutputChunk(v8, v9, &len[1], 0, &len[2]);
    xmlBufAddLen(v4, len[1]);
    v10 = len[1];
    goto LABEL_8;
  }

  v13 = xmlBufUse(v3);
  v10 = 0;
  if (!v13)
  {
    goto LABEL_8;
  }

  while (1)
  {
    if (v13 >= 0x10000)
    {
      v14 = 0x10000;
    }

    else
    {
      v14 = v13;
    }

    if (4 * v14 >= v7)
    {
      xmlBufGrow(v4, 4 * v14);
      v7 = xmlBufAvail(v4);
    }

    v15 = v7 >= 0x40000 ? 0x40000 : v7;
    *&len[1] = __PAIR64__(v14, v15);
    v16 = a1[3];
    v17 = xmlBufEnd(v4);
    v18 = xmlBufContent(v3);
    v19 = xmlEncOutputChunk(v16, v17, &len[1], v18, &len[2]);
    xmlBufShrink(v3, len[2]);
    xmlBufAddLen(v4, len[1]);
    v10 = (len[1] + v10);
    if (v19 == -2)
    {
      break;
    }

    if (v19 != -1)
    {
      if (v19 == -4)
      {
        __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6004, 3, 0, 0, 0, 0, 0, 0, 0, "xmlCharEncOutFunc: no output function !\n", 0);
        v19 = -1;
      }

      goto LABEL_33;
    }

    if (len[1] < 1)
    {
      v19 = -3;
      goto LABEL_33;
    }

LABEL_26:
    v7 = xmlBufAvail(v4);
    v13 = xmlBufUse(v3);
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  *__str = 0;
  v32 = 0;
  v33 = 0;
  len[0] = xmlBufUse(v3);
  v20 = xmlBufContent(v3);
  UTF8Char = xmlGetUTF8Char(v20, len);
  if (UTF8Char < 1)
  {
    v19 = -2;
    goto LABEL_33;
  }

  v22 = snprintf(__str, 0x14uLL, "&#%d;", UTF8Char);
  xmlBufShrink(v3, len[0]);
  xmlBufGrow(v4, 4 * v22);
  len[1] = xmlBufAvail(v4);
  len[2] = v22;
  v23 = a1[3];
  v24 = xmlBufEnd(v4);
  v19 = xmlEncOutputChunk(v23, v24, &len[1], __str, &len[2]);
  if ((v19 & 0x80000000) == 0 && len[2] == v22)
  {
    xmlBufAddLen(v4, len[1]);
    v10 = (len[1] + v10);
    goto LABEL_26;
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  *v26 = 0u;
  snprintf(v26, 0x31uLL, "0x%02X 0x%02X 0x%02X 0x%02X", *v20, v20[1], v20[2], v20[3]);
  v30 = 0;
  __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6003, 3, 0, 0, v26, 0, 0, 0, 0, "output conversion failed due to conv error, bytes %s\n", v26);
  if (xmlBufGetAllocationScheme(v3) != 2)
  {
    *v20 = 32;
  }

LABEL_33:
  if (v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = v19;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t xmlEncOutputChunk(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6(a2, a3, a4, a5);
    return v7 & (v7 >> 31);
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {

      return xmlUconvWrapper(v9, 0, a2, a3, a4, a5, 1);
    }

    else
    {
      *a3 = 0;
      *a5 = 0;
      return 4294967292;
    }
  }
}

int xmlCharEncOutFunc(xmlCharEncodingHandler *handler, xmlBufferPtr out, xmlBufferPtr in)
{
  v33 = *MEMORY[0x1E69E9840];
  result = -1;
  if (!handler || !out)
  {
    goto LABEL_27;
  }

  use = out->use;
  v8 = out->size - use - ((out->size - use) > 0);
  v24 = v8;
  if (!in)
  {
    len = 0;
    xmlEncOutputChunk(handler, &out->content[use], &v24, 0, &len);
    result = 0;
    v20 = out->use + v24;
    out->use = v20;
    out->content[v20] = 0;
    goto LABEL_27;
  }

  v9 = in->use;
  len = v9;
  if (!v9)
  {
LABEL_17:
    result = 0;
    goto LABEL_27;
  }

  v10 = 0;
  while (1)
  {
    if ((4 * v9) >= v8)
    {
      xmlBufferGrow(out, 4 * v9);
      LODWORD(use) = out->use;
      v24 = out->size + ~use;
    }

    v11 = xmlEncOutputChunk(handler, &out->content[use], &v24, in->content, &len);
    xmlBufferShrink(in, len);
    v12 = v24;
    v13 = out->use + v24;
    out->use = v13;
    v10 += v12;
    out->content[v13] = 0;
    if (v11 == -2)
    {
      break;
    }

    if (v11 != -1)
    {
      if (v11 == -4)
      {
        __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6004, 3, 0, 0, 0, 0, 0, 0, 0, "xmlCharEncOutFunc: no output function !\n", 0);
        v11 = -1;
      }

      goto LABEL_24;
    }

    if (v24 < 1)
    {
      v11 = -3;
      goto LABEL_24;
    }

LABEL_16:
    LODWORD(use) = out->use;
    v8 = out->size - use - ((out->size - use) > 0);
    v9 = in->use;
    len = v9;
    v24 = v8;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  *__str = 0;
  v31 = 0;
  v32 = 0;
  v22 = in->use;
  UTF8Char = xmlGetUTF8Char(in->content, &v22);
  if (UTF8Char < 1)
  {
    v11 = -2;
    goto LABEL_24;
  }

  v15 = snprintf(__str, 0x14uLL, "&#%d;", UTF8Char);
  xmlBufferShrink(in, v22);
  xmlBufferGrow(out, 4 * v15);
  v16 = out->use;
  v17 = out->size + ~v16;
  len = v15;
  v24 = v17;
  v11 = xmlEncOutputChunk(handler, &out->content[v16], &v24, __str, &len);
  if ((v11 & 0x80000000) == 0 && len == v15)
  {
    v18 = v24;
    v19 = out->use + v24;
    out->use = v19;
    v10 += v18;
    out->content[v19] = 0;
    goto LABEL_16;
  }

  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  *v25 = 0u;
  snprintf(v25, 0x31uLL, "0x%02X 0x%02X 0x%02X 0x%02X", *in->content, in->content[1], in->content[2], in->content[3]);
  v29 = 0;
  __xmlRaiseError(0, 0, 0, 0, 0, 0x1Bu, 6003, 3, 0, 0, v25, 0, 0, 0, 0, "output conversion failed due to conv error, bytes %s\n", v25);
  if (in->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    *in->content = 32;
  }

LABEL_24:
  if (v10)
  {
    result = v10;
  }

  else
  {
    result = v11;
  }

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlByteConsumed(xmlParserCtxtPtr ctxt)
{
  v1 = (MEMORY[0x1EEE9AC00])(ctxt);
  v17 = *MEMORY[0x1E69E9840];
  if (!v1 || (v2 = *(v1 + 56)) == 0)
  {
LABEL_11:
    result = -1;
    goto LABEL_17;
  }

  v3 = *v2;
  if (!*v2 || (v4 = *(v3 + 24)) == 0)
  {
    result = v2[8] + v2[4] - v2[3];
    goto LABEL_17;
  }

  v5 = v2[4];
  if (v2[5] - v5 >= 1)
  {
    bzero(v16, 0x7D00uLL);
    LODWORD(v6) = 0;
    while (1)
    {
      v7 = *(v2 + 10) - v5;
      v14 = 32000;
      v15 = v7;
      v8 = xmlEncOutputChunk(v4, v16, &v14, v5, &v15);
      if (v8 < 0 && v14 < 1)
      {
        goto LABEL_11;
      }

      v6 = (v14 + v6);
      v5 += v15;
      if ((v8 & 0x80000000) == 0)
      {
        v3 = *v2;
        goto LABEL_14;
      }
    }
  }

  v6 = 0;
LABEL_14:
  v10 = *(v3 + 56);
  v11 = v10 >= v6;
  v12 = v10 - v6;
  if (v11)
  {
    result = v12;
  }

  else
  {
    result = -1;
  }

LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

xmlEntityPtr xmlGetPredefinedEntity(xmlEntityPtr name)
{
  if (name)
  {
    v1 = name;
    private_low = LOBYTE(name->_private);
    if (private_low > 0x6B)
    {
      if (private_low == 113)
      {
        if (xmlStrEqual(name, "quot"))
        {
          return &xmlEntityQuot;
        }
      }

      else if (private_low == 108 && xmlStrEqual(name, "lt"))
      {
        return &xmlEntityLt;
      }
    }

    else if (private_low == 97)
    {
      if (xmlStrEqual(name, "amp"))
      {
        return &xmlEntityAmp;
      }

      if (xmlStrEqual(v1, "apos"))
      {
        return &xmlEntityApos;
      }
    }

    else if (private_low == 103 && xmlStrEqual(name, "gt"))
    {
      return &xmlEntityGt;
    }

    return 0;
  }

  return name;
}

xmlEntityPtr xmlAddDtdEntity(xmlDocPtr doc, const xmlChar *name, int type, const xmlChar *ExternalID, const xmlChar *SystemID, const xmlChar *content)
{
  if (!doc)
  {
    v9 = "xmlAddDtdEntity: document is NULL";
    v10 = 521;
LABEL_9:
    __xmlSimpleError(2u, v10, 0, v9, 0);
    return 0;
  }

  extSubset = doc->extSubset;
  if (!extSubset)
  {
    v9 = "xmlAddDtdEntity: document without external subset";
    v10 = 522;
    goto LABEL_9;
  }

  result = xmlAddEntity(&doc->extSubset->_private, name, type, ExternalID, SystemID, content);
  if (result)
  {
    result->parent = extSubset;
    result->doc = extSubset->doc;
    last = extSubset->last;
    if (last)
    {
      last->next = result;
      result->prev = last;
    }

    else
    {
      extSubset->children = result;
    }

    extSubset->last = result;
  }

  return result;
}

_xmlNode *xmlAddEntity(void *a1, xmlChar *name, int a3, const xmlChar *a4, const xmlChar *a5, const xmlChar *a6)
{
  if (!name)
  {
    return 0;
  }

  v12 = a1[8];
  if (v12)
  {
    v13 = *(v12 + 152);
  }

  else
  {
    v13 = 0;
  }

  if ((a3 - 1) >= 3)
  {
    if ((a3 - 4) >= 2)
    {
      return 0;
    }

    Dict = a1[15];
    if (!Dict)
    {
      Dict = xmlHashCreateDict(0, v13);
      a1[15] = Dict;
      if (!Dict)
      {
        return 0;
      }
    }

    goto LABEL_29;
  }

  PredefinedEntity = xmlGetPredefinedEntity(name);
  if (PredefinedEntity)
  {
    if (a3 == 1 && a6)
    {
      v15 = *PredefinedEntity->content;
      v16 = *a6;
      if (v16 == v15 && !a6[1] && v15 <= 0x3E && ((1 << v15) & 0x4000008400000000) != 0)
      {
        goto LABEL_27;
      }

      if (v16 == 38 && a6[1] == 35)
      {
        if (a6[2] == 120)
        {
          v17 = a0123456789abcd[v15 >> 4];
          strcpy(&v23[4], "00;");
          v23[4] = v17;
          v23[5] = a0123456789abcd[v15 & 0xF];
          if (!xmlStrcasecmp(a6 + 3, &v23[4]))
          {
            goto LABEL_27;
          }
        }

        else
        {
          strcpy(&v23[2], ";");
          v23[0] = (v15 / 0xAu - 10 * ((26 * (v15 / 0xAu)) >> 8)) | 0x30;
          v23[1] = (v15 % 0xAu) | 0x30;
          if (xmlStrEqual(a6 + 2, v23))
          {
            goto LABEL_27;
          }
        }
      }
    }

    __xmlSimpleError(2u, 104, 0, "xmlAddEntity: invalid redeclaration of predefined entity", 0);
    return 0;
  }

LABEL_27:
  Dict = a1[12];
  if (!Dict)
  {
    Dict = xmlHashCreateDict(0, v13);
    a1[12] = Dict;
    if (!Dict)
    {
      return 0;
    }
  }

LABEL_29:
  Entity = xmlCreateEntity(v13, name, a3, a4, a5, a6);
  v21 = Entity;
  if (Entity)
  {
    Entity->doc = a1[8];
    if (xmlHashAddEntry(Dict, name, Entity))
    {
      xmlFreeEntity(v21);
      return 0;
    }
  }

  return v21;
}

xmlEntityPtr xmlAddDocEntity(xmlDocPtr doc, const xmlChar *name, int type, const xmlChar *ExternalID, const xmlChar *SystemID, const xmlChar *content)
{
  if (!doc)
  {
    v9 = "xmlAddDocEntity: document is NULL";
    v10 = 521;
LABEL_9:
    __xmlSimpleError(2u, v10, 0, v9, 0);
    return 0;
  }

  intSubset = doc->intSubset;
  if (!intSubset)
  {
    v9 = "xmlAddDocEntity: document without internal subset";
    v10 = 522;
    goto LABEL_9;
  }

  result = xmlAddEntity(&doc->intSubset->_private, name, type, ExternalID, SystemID, content);
  if (result)
  {
    result->parent = intSubset;
    result->doc = intSubset->doc;
    last = intSubset->last;
    if (last)
    {
      last->next = result;
      result->prev = last;
    }

    else
    {
      intSubset->children = result;
    }

    intSubset->last = result;
  }

  return result;
}

xmlEntityPtr xmlNewEntity(xmlDocPtr doc, const xmlChar *name, int type, const xmlChar *ExternalID, const xmlChar *SystemID, const xmlChar *content)
{
  v6 = doc;
  if (doc)
  {
    if (doc->intSubset)
    {

      return xmlAddDocEntity(doc, name, type, ExternalID, SystemID, content);
    }

    doc = doc->dict;
  }

  result = xmlCreateEntity(doc, name, type, ExternalID, SystemID, content);
  if (result)
  {
    result->doc = v6;
  }

  return result;
}

_OWORD *xmlCreateEntity(xmlDict *a1, const xmlChar *a2, int a3, const xmlChar *a4, const xmlChar *a5, const xmlChar *a6)
{
  v12 = malloc_type_malloc(0x88uLL, 0x10F0040F0AD96BFuLL);
  v13 = v12;
  if (!v12)
  {
    __xmlSimpleError(2u, 2, 0, 0, "xmlCreateEntity: malloc failed");
    return v13;
  }

  v12[6] = 0u;
  v12[7] = 0u;
  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  *(v12 + 16) = 0;
  *(v12 + 2) = 17;
  *(v12 + 23) = a3;
  if (a1)
  {
    *(v12 + 2) = xmlDictLookup(a1, a2, -1);
    *(v13 + 12) = xmlStrdup(a4);
  }

  else
  {
    *(v12 + 2) = xmlStrdup(a2);
    if (a4)
    {
      *(v13 + 12) = xmlStrdup(a4);
    }

    if (!a5)
    {
      goto LABEL_9;
    }
  }

  *(v13 + 13) = xmlStrdup(a5);
LABEL_9:
  if (a6)
  {
    v14 = xmlStrlen(a6);
    *(v13 + 22) = v14;
    v15 = xmlStrndup(a6, v14);
  }

  else
  {
    v15 = 0;
    *(v13 + 22) = 0;
  }

  *(v13 + 15) = 0;
  *(v13 + 9) = 0;
  *(v13 + 10) = v15;
  *(v13 + 32) = 0;
  return v13;
}

xmlEntityPtr xmlGetParameterEntity(xmlEntityPtr doc, const xmlChar *name)
{
  if (doc)
  {
    v3 = doc;
    content = doc->content;
    if (!content || (v5 = *(content + 15)) == 0 || (doc = xmlHashLookup(v5, name)) == 0)
    {
      v6 = *&v3->length;
      if (v6)
      {
        doc = *(v6 + 120);
        if (doc)
        {

          return xmlHashLookup(doc, name);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return doc;
}

xmlEntityPtr xmlGetDtdEntity(xmlDocPtr doc, const xmlChar *name)
{
  if (doc && (extSubset = doc->extSubset) != 0 && (entities = extSubset->entities) != 0)
  {
    return xmlHashLookup(entities, name);
  }

  else
  {
    return 0;
  }
}

xmlEntityPtr xmlGetDocEntity(const xmlDoc *doc, const xmlChar *name)
{
  if (!doc || ((intSubset = doc->intSubset) == 0 || (entities = intSubset->entities) == 0 || (result = xmlHashLookup(entities, name)) == 0) && (doc->standalone == 1 || (extSubset = doc->extSubset) == 0 || (v8 = extSubset->entities) == 0 || (result = xmlHashLookup(v8, name)) == 0))
  {

    return xmlGetPredefinedEntity(name);
  }

  return result;
}

void *xmlEncodeEntitiesInternal(uint64_t a1, char *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    if (a1)
    {
      v6 = *(a1 + 8) == 13;
    }

    else
    {
      v6 = 0;
    }

    v7 = malloc_type_malloc(0x3E8uLL, 0x100004077774924uLL);
    v8 = v7;
    if (v7)
    {
      v9 = *v4;
      if (*v4)
      {
        if (a3)
        {
          v10 = v6;
        }

        else
        {
          v10 = 0;
        }

        v11 = 1000;
        v12 = v7;
        while (1)
        {
          if (v12 - v8 + 100 > v11)
          {
            if ((v11 & 0x8000000000000000) != 0 || (v11 *= 2, (v13 = malloc_type_realloc(v8, v11, 0x100004077774924uLL)) == 0))
            {
LABEL_104:
              __xmlSimpleError(2u, 2, 0, 0, "xmlEncodeEntities: realloc failed");
              free(v8);
              goto LABEL_105;
            }

            v12 = &v13[v12 - v8];
            v9 = *v4;
            v8 = v13;
          }

          if (v9 == 38)
          {
            if (v10 && v4[1] == 123 && strchr(v4, 125))
            {
              ++v4;
              v19 = 38;
              do
              {
                *v12++ = v19;
                if (v12 - v8 + 100 > v11)
                {
                  if ((v11 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_104;
                  }

                  v11 *= 2;
                  v20 = malloc_type_realloc(v8, v11, 0x100004077774924uLL);
                  if (!v20)
                  {
                    goto LABEL_104;
                  }

                  v12 = &v20[v12 - v8];
                  v8 = v20;
                }

                v21 = *v4++;
                v19 = v21;
              }

              while (v21 != 125);
              *v12++ = v19;
              goto LABEL_46;
            }

            *v12 = 1886216486;
            v12[4] = 59;
            v12 += 5;
            goto LABEL_45;
          }

          if (v9 == 62)
          {
            break;
          }

          if (v9 == 60)
          {
            if (v10 && v4[1] == 33 && v4[2] == 45 && v4[3] == 45)
            {
              v14 = xmlStrstr(v4, "-->");
              if (v14)
              {
                v15 = v14;
                while (v4 != v15)
                {
                  v16 = *v4++;
                  *v12++ = v16;
                  if (v12 - v8 + 100 > v11)
                  {
                    if ((v11 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_104;
                    }

                    v11 *= 2;
                    v17 = malloc_type_realloc(v8, v11, 0x100004077774924uLL);
                    if (!v17)
                    {
                      goto LABEL_104;
                    }

                    v12 = &v17[v12 - v8];
                    v8 = v17;
                  }
                }

                *v12 = *v4;
                v12[1] = v4[1];
                v32 = v4[2];
                v4 += 3;
                v12[2] = v32;
                v12 += 3;
                goto LABEL_46;
              }
            }

            v18 = 997485606;
            goto LABEL_43;
          }

          if (v9 <= 31)
          {
            v22 = v9 == 13 && v6;
            if (v9 - 9 >= 2 && !v22)
            {
              if ((v9 & 0x80) == 0)
              {
                if (v9 <= 0xD && ((1 << v9) & 0x2600) != 0)
                {
                  memset(__str, 0, 11);
                  snprintf(__str, 0xBuLL, "&#%d;", *v4);
                  __str[10] = 0;
                  v23 = __str[0];
                  if (__str[0])
                  {
                    v24 = &__str[1];
                    do
                    {
                      *v12++ = v23;
                      v25 = *v24++;
                      v23 = v25;
                    }

                    while (v25);
                  }
                }

                goto LABEL_45;
              }

              if (a1)
              {
                if (*(a1 + 112) == 0 && !v6)
                {
                  goto LABEL_64;
                }
              }

              else if (!v6)
              {
LABEL_64:
                memset(__str, 0, 11);
                v26 = *v4;
                if ((~v26 & 0xC0) == 0)
                {
                  v28 = v4 + 1;
                  v27 = v4[1];
                  if ((v27 & 0xC0) == 0x80 && ((~v26 & 0xE0) != 0 || (v4[2] & 0xC0) == 0x80))
                  {
                    if (v26 < 0xF0)
                    {
                      if ((~v26 & 0xF8) != 0)
                      {
                        v36 = v26 << 6;
                        v37 = v27 & 0x3F;
                        if (v26 > 0xDF)
                        {
                          v30 = v4[2] & 0x3F | ((v36 & 0x3C0 | v37) << 6);
                          v31 = 3;
                        }

                        else
                        {
                          v30 = v36 & 0x7C0 | v37;
                          v31 = 2;
                        }

LABEL_85:
                        if (v30 > 0xFF)
                        {
                          if (v30 >> 11 >= 0x1B && (v30 - 57344) >> 1 >= 0xFFF && v30 - 0x10000 >= 0x100000)
                          {
                            goto LABEL_93;
                          }
                        }

                        else if (v30 <= 0x1F && (v30 > 0xD || ((1 << v30) & 0x2600) == 0))
                        {
                          goto LABEL_93;
                        }

                        snprintf(__str, 0xBuLL, "&#x%X;", v30);
                        __str[10] = 0;
                        v41 = __str[0];
                        if (__str[0])
                        {
                          v42 = &__str[1];
                          do
                          {
                            *v12++ = v41;
                            v43 = *v42++;
                            v41 = v43;
                          }

                          while (v43);
                        }

                        v28 = &v4[v31];
LABEL_81:
                        v4 = v28;
                        goto LABEL_46;
                      }
                    }

                    else if ((~v26 & 0xF8) != 0)
                    {
                      v29 = v4[3];
                      if ((v29 & 0xC0) == 0x80)
                      {
                        if (v26 <= 0xF7)
                        {
                          v30 = ((v27 & 0x3F | ((v26 & 7) << 6)) << 12) | ((v4[2] & 0x3F) << 6) | v29 & 0x3F;
                          v31 = 4;
                          goto LABEL_85;
                        }

LABEL_93:
                        __xmlSimpleError(2u, 9, 0, "xmlEncodeEntities: char out of range\n", 0);
                        if (a1)
                        {
                          *(a1 + 112) = xmlStrdup("ISO-8859-1");
                        }

                        snprintf(__str, 0xBuLL, "&#%d;", *v4);
                        __str[10] = 0;
                        v38 = __str[0];
                        if (__str[0])
                        {
                          v39 = &__str[1];
                          do
                          {
                            *v12++ = v38;
                            v40 = *v39++;
                            v38 = v40;
                          }

                          while (v40);
                        }

                        goto LABEL_81;
                      }
                    }
                  }
                }

                __xmlSimpleError(2u, 5032, 0, "xmlEncodeEntities: input not UTF-8", 0);
                if (a1)
                {
                  *(a1 + 112) = xmlStrdup("ISO-8859-1");
                }

                snprintf(__str, 0xBuLL, "&#%d;", *v4);
                __str[10] = 0;
                v33 = __str[0];
                if (__str[0])
                {
                  v34 = &__str[1];
                  do
                  {
                    *v12++ = v33;
                    v35 = *v34++;
                    v33 = v35;
                  }

                  while (v35);
                }

                v28 = v4 + 1;
                goto LABEL_81;
              }
            }
          }

          *v12++ = v9;
LABEL_45:
          ++v4;
LABEL_46:
          v9 = *v4;
          if (!*v4)
          {
            goto LABEL_107;
          }
        }

        v18 = 997484326;
LABEL_43:
        *v12 = v18;
        v12 += 4;
        goto LABEL_45;
      }

      v12 = v7;
LABEL_107:
      *v12 = 0;
    }

    else
    {
      __xmlSimpleError(2u, 2, 0, 0, "xmlEncodeEntities: malloc failed");
    }
  }

  else
  {
LABEL_105:
    v8 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v8;
}

xmlChar *__cdecl xmlEncodeSpecialChars(const xmlDoc *doc, const xmlChar *input)
{
  if (!input)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x3E8uLL, 0x100004077774924uLL);
  if (!v3)
  {
    __xmlSimpleError(2u, 2, 0, 0, "xmlEncodeSpecialChars: malloc failed");
    return 0;
  }

  v4 = *input;
  if (*input)
  {
    v5 = input + 1;
    v6 = 1000;
    v7 = v3;
    while (1)
    {
      v8 = v3 - v7;
      if (v3 - v7 + 10 > v6)
      {
        if ((v6 & 0x8000000000000000) != 0 || (v6 *= 2, (v9 = malloc_type_realloc(v7, v6, 0x100004077774924uLL)) == 0))
        {
          __xmlSimpleError(2u, 2, 0, 0, "xmlEncodeSpecialChars: realloc failed");
          free(v7);
          return 0;
        }

        v10 = v9;
        v3 = &v9[v8];
        v4 = *(v5 - 1);
        v7 = v10;
      }

      if (v4 <= 37)
      {
        if (v4 == 13)
        {
          v12 = 858858278;
          goto LABEL_21;
        }

        if (v4 != 34)
        {
LABEL_22:
          *v3++ = v4;
          goto LABEL_23;
        }

        *v3 = 1869967654;
        *(v3 + 2) = 15220;
        v3 += 6;
      }

      else
      {
        switch(v4)
        {
          case '&':
            v12 = 1886216486;
LABEL_21:
            *v3 = v12;
            v3[4] = 59;
            v3 += 5;
            goto LABEL_23;
          case '>':
            v11 = 997484326;
            break;
          case '<':
            v11 = 997485606;
            break;
          default:
            goto LABEL_22;
        }

        *v3 = v11;
        v3 += 4;
      }

LABEL_23:
      v13 = *v5++;
      v4 = v13;
      if (!v13)
      {
        goto LABEL_27;
      }
    }
  }

  v7 = v3;
LABEL_27:
  *v3 = 0;
  return v7;
}

void xmlFreeEntityWrapper(_xmlNode *a1)
{
  if (a1)
  {
    xmlFreeEntity(a1);
  }
}

void *xmlCopyEntity(uint64_t a1)
{
  v2 = malloc_type_malloc(0x88uLL, 0x10F0040F0AD96BFuLL);
  v3 = v2;
  if (v2)
  {
    v2[16] = 0;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 17;
    *(v2 + 23) = *(a1 + 92);
    v4 = *(a1 + 16);
    if (v4)
    {
      v3[2] = xmlStrdup(v4);
    }

    v5 = *(a1 + 96);
    if (v5)
    {
      v3[12] = xmlStrdup(v5);
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      v3[13] = xmlStrdup(v6);
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      v3[10] = xmlStrdup(v7);
    }

    v8 = *(a1 + 72);
    if (v8)
    {
      v3[9] = xmlStrdup(v8);
    }

    v9 = *(a1 + 120);
    if (v9)
    {
      v3[15] = xmlStrdup(v9);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "xmlCopyEntity:: malloc failed");
  }

  return v3;
}

void xmlDumpEntityDecl(xmlBufferPtr buf, xmlEntityPtr ent)
{
  if (!buf || !ent)
  {
    return;
  }

  etype = ent->etype;
  if (etype > XML_EXTERNAL_GENERAL_PARSED_ENTITY)
  {
    if (etype == XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
    {
      xmlBufferWriteChar(buf, "<!ENTITY ");
      xmlBufferWriteCHAR(buf, ent->name);
      if (ent->ExternalID)
      {
        xmlBufferWriteChar(buf, " PUBLIC ");
        xmlBufferWriteQuotedString(buf, ent->ExternalID);
        v7 = " ";
      }

      else
      {
        v7 = " SYSTEM ";
      }

      xmlBufferWriteChar(buf, v7);
      xmlBufferWriteQuotedString(buf, ent->SystemID);
      if (ent->content)
      {
        xmlBufferWriteChar(buf, " NDATA ");
        orig = ent->orig;
        if (!orig)
        {
          orig = ent->content;
        }

        xmlBufferWriteCHAR(buf, orig);
      }

      goto LABEL_26;
    }

    if (etype != XML_INTERNAL_PARAMETER_ENTITY)
    {
      if (etype == XML_EXTERNAL_PARAMETER_ENTITY)
      {
        v5 = "<!ENTITY % ";
LABEL_12:
        xmlBufferWriteChar(buf, v5);
        xmlBufferWriteCHAR(buf, ent->name);
        if (ent->ExternalID)
        {
          xmlBufferWriteChar(buf, " PUBLIC ");
          xmlBufferWriteQuotedString(buf, ent->ExternalID);
          v6 = " ";
        }

        else
        {
          v6 = " SYSTEM ";
        }

        xmlBufferWriteChar(buf, v6);
        SystemID = ent->SystemID;
        goto LABEL_25;
      }

      goto LABEL_20;
    }

    v8 = "<!ENTITY % ";
LABEL_18:
    xmlBufferWriteChar(buf, v8);
    xmlBufferWriteCHAR(buf, ent->name);
    xmlBufferWriteChar(buf, " ");
    SystemID = ent->orig;
    if (!SystemID)
    {
      xmlDumpEntityContent(buf, ent->content);
LABEL_26:

      xmlBufferWriteChar(buf, ">\n");
      return;
    }

LABEL_25:
    xmlBufferWriteQuotedString(buf, SystemID);
    goto LABEL_26;
  }

  if (etype == XML_INTERNAL_GENERAL_ENTITY)
  {
    v8 = "<!ENTITY ";
    goto LABEL_18;
  }

  if (etype == XML_EXTERNAL_GENERAL_PARSED_ENTITY)
  {
    v5 = "<!ENTITY ";
    goto LABEL_12;
  }

LABEL_20:

  __xmlSimpleError(2u, 535, 0, "xmlDumpEntitiesDecl: internal: unknown type entity type", 0);
}

void xmlDumpEntityContent(uint64_t a1, xmlChar *str)
{
  if (*(a1 + 16) != 2)
  {
    v2 = str;
    if (xmlStrchr(str, 0x25u))
    {
      xmlBufferCCat(a1, "");
LABEL_4:
      for (i = 0; ; ++i)
      {
        v5 = v2[i];
        if (!v2[i])
        {
          break;
        }

        if (v5 == 37)
        {
          v6 = "&#x25;";
          if (i)
          {
LABEL_10:
            xmlBufferAdd(a1, v2, i);
          }

LABEL_11:
          xmlBufferAdd(a1, v6, 6);
          v2 += i + 1;
          goto LABEL_4;
        }

        if (v5 == 34)
        {
          v6 = "&quot;";
          if (i)
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }
      }

      if (i)
      {
        xmlBufferAdd(a1, v2, i);
      }

      xmlBufferCCat(a1, "");
    }

    else
    {

      xmlBufferWriteQuotedString(a1, v2);
    }
  }
}

void xmlFreeEntity(_xmlNode *a1)
{
  doc = a1->doc;
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  children = a1->children;
  if (children && a1[1].type == XML_ELEMENT_NODE && children->parent == a1)
  {
    xmlFreeNodeList(children);
  }

  name = a1->name;
  if (name)
  {
    if (dict)
    {
      if (xmlDictOwns(dict, name))
      {
        goto LABEL_13;
      }

      name = a1->name;
    }

    free(name);
  }

LABEL_13:
  nsDef = a1->nsDef;
  if (nsDef)
  {
    free(nsDef);
  }

  psvi = a1->psvi;
  if (psvi)
  {
    free(psvi);
  }

  v8 = a1[1]._private;
  if (v8)
  {
    free(v8);
  }

  content = a1->content;
  if (content)
  {
    free(content);
  }

  ns = a1->ns;
  if (ns)
  {
    free(ns);
  }

  free(a1);
}

uint64_t xmlGenericErrorDefaultFunc(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!*__xmlGenericErrorContext())
  {
    v10 = *MEMORY[0x1E69E9848];
    *__xmlGenericErrorContext() = v10;
  }

  v11 = __xmlGenericErrorContext();
  return vfprintf(*v11, a2, &a9);
}

void xmlSetGenericErrorFunc(void *ctx, xmlGenericErrorFunc handler)
{
  *__xmlGenericErrorContext() = ctx;
  v3 = __xmlGenericError();
  if (handler)
  {
    v4 = handler;
  }

  else
  {
    v4 = xmlGenericErrorDefaultFunc;
  }

  *v3 = v4;
}

void xmlParserPrintFileInfo(xmlParserInputPtr input)
{
  if (input)
  {
    filename = input->filename;
    v3 = *__xmlGenericError();
    v4 = *__xmlGenericErrorContext();
    if (filename)
    {
      v5 = input->filename;
      line = input->line;
      v6 = "%s:%d: ";
    }

    else
    {
      v7 = input->line;
      v6 = "Entity: line %d: ";
    }

    v3(v4, v6);
  }
}

void xmlParserPrintFileContext(xmlParserInputPtr input)
{
  v2 = *__xmlGenericError();
  v3 = *__xmlGenericErrorContext();

  xmlParserPrintFileContextInternal(input, v2, v3);
}

uint64_t xmlParserPrintFileContextInternal(uint64_t result, void (*a2)(uint64_t, const char *, ...), uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = *(result + 32);
    if (v3)
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      v6 = *(result + 24);
      v7 = v3;
      if (v3 > v6)
      {
        v7 = v3;
        while (1)
        {
          v8 = *v7;
          if (v8 != 13 && v8 != 10)
          {
            break;
          }

          if (--v7 <= v6)
          {
            v7 = *(result + 24);
            break;
          }
        }
      }

      if (v7 <= v6)
      {
LABEL_20:
        v11 = *v7;
      }

      else
      {
        v10 = 1;
        while (1)
        {
          v11 = *v7;
          if (v11 == 10 || v11 == 13)
          {
            break;
          }

          --v7;
          if (v10 <= 0x4F)
          {
            ++v10;
            if (v7 > v6)
            {
              continue;
            }
          }

          goto LABEL_20;
        }
      }

      v13 = 0;
      if (v11 == 13 || v11 == 10)
      {
        ++v7;
      }

      v15 = v3 - v7;
      while (1)
      {
        v16 = v7[v13];
        v17 = !v7[v13] || v16 == 10;
        v18 = v17 || v16 == 13;
        if (v18 || v13 > 0x4F)
        {
          break;
        }

        *(v22 + v13++) = v16;
      }

      *(v22 + v13) = 0;
      a2(a3, "%s\n", v22);
      v19 = v22;
      if (v15)
      {
        v20 = 79;
        do
        {
          if (!v20)
          {
            break;
          }

          if (*v19 != 9)
          {
            if (!*v19)
            {
              break;
            }

            *v19 = 32;
          }

          ++v19;
          --v20;
        }

        while (v15 + v20 != 79);
      }

      *v19 = 94;
      result = (a2)(a3, "%s\n", v22);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *__xmlRaiseError(xmlStructuredErrorFunc a1, void (*a2)(void *, const char *, ...), void *a3, void *a4, uint64_t a5, unsigned int a6, int a7, int a8, uint64_t a9, int a10, const xmlChar *a11, xmlChar *cur, xmlChar *a13, int a14, int a15, const char *a16, char a17)
{
  result = __xmlLastError();
  if (!a7)
  {
    return result;
  }

  v26 = result;
  result = __xmlGetWarningsDefaultValue();
  if (a8 == 1 && !*result)
  {
    return result;
  }

  v27 = 0;
  if (a6 <= 0x17 && ((1 << a6) & 0x80013A) != 0 && (v27 = a4, !a1) && (v27 = a4) != 0)
  {
    v28 = *a4;
    v27 = a4;
    if (*a4)
    {
      v27 = a4;
      if (*(v28 + 216) == -554844497)
      {
        a1 = *(v28 + 248);
        v27 = a4;
        if (a1)
        {
          v29 = (a4 + 1);
          v27 = a4;
LABEL_15:
          a3 = *v29;
          goto LABEL_16;
        }
      }
    }
  }

  else if (a1)
  {
    goto LABEL_16;
  }

  a1 = *__xmlStructuredError();
  if (a1)
  {
    v29 = __xmlStructuredErrorContext();
    goto LABEL_15;
  }

LABEL_16:
  LineNo = a10;
  v64 = a1;
  v65 = a4;
  v63 = a6;
  if (a16)
  {
    v61 = a8;
    v30 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
    if (v30)
    {
      v31 = -1;
      LODWORD(v32) = 150;
      do
      {
        v33 = v30;
        if (v32 > 63999)
        {
          break;
        }

        v34 = vsnprintf(v30, v32, a16, &a17);
        if ((v34 & 0x80000000) == 0 && v34 < v32)
        {
          v53 = v31 == v34;
          v31 = v34;
          if (v53)
          {
            break;
          }
        }

        v35 = v34 >= 0 ? v34 + 1 : 100;
        v32 = (v35 + v32);
        v30 = malloc_type_realloc(v33, v32, 0x100004077774924uLL);
      }

      while (v30);
    }

    else
    {
      v33 = 0;
    }

    a8 = v61;
  }

  else
  {
    v33 = xmlStrdup("No error message provided");
  }

  v36 = a9;
  if (v27)
  {
    if (!a9)
    {
      v37 = v27[7];
      if (v37)
      {
        v36 = *(v37 + 8);
        if (v36)
        {
LABEL_68:
          LineNo = *(v37 + 52);
          a15 = *(v37 + 56);
          goto LABEL_69;
        }

        v38 = *(v27 + 16);
        if (v38 < 2)
        {
          v36 = 0;
          goto LABEL_68;
        }

        v37 = *(v27[9] + 8 * v38 - 16);
        if (v37)
        {
          v36 = *(v37 + 8);
          goto LABEL_68;
        }
      }

      v36 = 0;
    }

LABEL_69:
    v39 = 0;
    v26 = (v27 + 75);
    goto LABEL_70;
  }

  v39 = 0;
  if (!a5 || a9)
  {
    goto LABEL_70;
  }

  v40 = *(a5 + 64);
  if (v40)
  {
    if (*(v40 + 136))
    {
      v39 = a5;
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = a10;
  v42 = 0;
  do
  {
    if (*(a5 + 8) == 1)
    {
      if (v39)
      {
        goto LABEL_60;
      }

      goto LABEL_55;
    }

    a5 = *(a5 + 40);
    if (v42 > 8)
    {
      break;
    }

    ++v42;
  }

  while (a5);
  if (!v39 && a5)
  {
LABEL_55:
    v43 = *(a5 + 64);
    if (v43)
    {
      if (*(v43 + 136))
      {
        v39 = a5;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v39 = 0;
    }

    goto LABEL_60;
  }

  if (!a5)
  {
    goto LABEL_62;
  }

LABEL_60:
  if (*(a5 + 8) == 1)
  {
    v41 = *(a5 + 112);
  }

LABEL_62:
  if (v41 != 0xFFFF && v41)
  {
    LineNo = v41;
  }

  else
  {
    LineNo = xmlGetLineNo(a5);
  }

  v36 = 0;
LABEL_70:
  xmlResetError(v26);
  *v26 = v63;
  *(v26 + 4) = a7;
  *(v26 + 8) = v33;
  *(v26 + 16) = a8;
  if (v36)
  {
    v44 = v36;
LABEL_72:
    *(v26 + 24) = xmlStrdup(v44);
  }

  else if (v39)
  {
    v62 = a8;
    v46 = a3;
    v47 = 0;
    v48 = v39;
    do
    {
      v49 = *(v48 + 56);
      if (v49)
      {
        v50 = *(v49 + 8);
        if (v50 == 20)
        {
          ++v47;
        }

        else if (v50 == 19)
        {
          if (v47 < 1)
          {
            Prop = xmlGetProp(v49, "href");
            if (Prop)
            {
              *(v26 + 24) = Prop;
              a3 = v46;
              a8 = v62;
              goto LABEL_73;
            }
          }

          else
          {
            --v47;
          }
        }
      }

      else
      {
        v49 = *(v48 + 40);
      }

      v48 = v49;
    }

    while (v49);
    v52 = xmlStrdup(*(*(v39 + 64) + 136));
    *(v26 + 24) = v52;
    if (v52)
    {
      v53 = 1;
    }

    else
    {
      v53 = a5 == 0;
    }

    a3 = v46;
    a8 = v62;
    if (!v53)
    {
      v54 = *(a5 + 64);
      if (v54)
      {
        v44 = *(v54 + 136);
        goto LABEL_72;
      }
    }
  }

LABEL_73:
  *(v26 + 32) = LineNo;
  if (a11)
  {
    *(v26 + 40) = xmlStrdup(a11);
  }

  if (cur)
  {
    *(v26 + 48) = xmlStrdup(cur);
  }

  if (a13)
  {
    *(v26 + 56) = xmlStrdup(a13);
  }

  *(v26 + 64) = a14;
  *(v26 + 68) = a15;
  *(v26 + 72) = v65;
  *(v26 + 80) = a5;
  if (v26 != __xmlLastError())
  {
    Error = __xmlLastError();
    xmlCopyError(v26, Error);
  }

  if (v64)
  {
    return v64(a3, v26);
  }

  if (a2 || !v27)
  {
    if (a2)
    {
      goto LABEL_108;
    }

    result = __xmlGenericError();
    a2 = *result;
    if (!v27)
    {
      result = __xmlGenericErrorContext();
      a3 = *result;
      goto LABEL_107;
    }

LABEL_106:
    a3 = v27;
    goto LABEL_107;
  }

  result = __xmlStructuredError();
  if (*result || !*v27)
  {
    result = __xmlGenericError();
    a2 = *result;
    goto LABEL_106;
  }

  v60 = 176;
  if (a8 == 1)
  {
    v60 = 168;
  }

  a2 = *(*v27 + v60);
  a3 = v27[1];
LABEL_107:
  if (a2)
  {
LABEL_108:
    if (a2 == xmlParserValidityWarning || a2 == xmlParserValidityError || a2 == xmlParserError || a2 == xmlParserWarning)
    {
      v55 = v26;
      v56 = v27;
      v57 = v33;
      v58 = 0;
      v59 = 0;
    }

    else
    {
      if (a2 != MEMORY[0x1E69E9888] && a2 != xmlGenericErrorDefaultFunc)
      {
        return (a2)(a3, "%s", v33);
      }

      v55 = v26;
      v56 = v27;
      v57 = v33;
      v58 = a2;
      v59 = a3;
    }

    return xmlReportError(v55, v56, v57, v58, v59);
  }

  return result;
}

int xmlCopyError(xmlErrorPtr from, xmlErrorPtr to)
{
  result = -1;
  if (from && to)
  {
    v5 = xmlStrdup(from->message);
    v6 = xmlStrdup(from->file);
    v7 = xmlStrdup(from->str1);
    v8 = xmlStrdup(from->str2);
    v9 = xmlStrdup(from->str3);
    message = to->message;
    if (message)
    {
      free(message);
    }

    file = to->file;
    if (file)
    {
      free(file);
    }

    str1 = to->str1;
    if (str1)
    {
      free(str1);
    }

    str2 = to->str2;
    if (str2)
    {
      free(str2);
    }

    str3 = to->str3;
    if (str3)
    {
      free(str3);
    }

    result = 0;
    *&to->domain = *&from->domain;
    to->level = from->level;
    to->line = from->line;
    *&to->int1 = *&from->int1;
    *&to->ctxt = *&from->ctxt;
    to->message = v5;
    to->file = v6;
    to->str1 = v7;
    to->str2 = v8;
    to->str3 = v9;
  }

  return result;
}

void xmlParserError(void *ctx, const char *msg, ...)
{
  va_start(va, msg);
  if (ctx)
  {
    v4 = *(ctx + 7);
    if (v4)
    {
      if (v4->filename || (v5 = *(ctx + 16), v5 < 2))
      {
        v6 = *(ctx + 7);
        v4 = 0;
      }

      else
      {
        v6 = *(*(ctx + 9) + 8 * v5 - 16);
      }
    }

    else
    {
      v6 = 0;
    }

    input = v6;
    xmlParserPrintFileInfo(v6);
  }

  else
  {
    input = 0;
    v4 = 0;
  }

  v7 = *__xmlGenericError();
  v8 = __xmlGenericErrorContext();
  v7(*v8, "error: ");
  v9 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
  if (v9)
  {
    v10 = -1;
    LODWORD(v11) = 150;
    do
    {
      v12 = v9;
      if (v11 > 63999)
      {
        break;
      }

      v13 = vsnprintf(v9, v11, msg, va);
      if ((v13 & 0x80000000) == 0 && v13 < v11)
      {
        v14 = v10 == v13;
        v10 = v13;
        if (v14)
        {
          break;
        }
      }

      v15 = v13 >= 0 ? v13 + 1 : 100;
      v11 = (v15 + v11);
      v9 = malloc_type_realloc(v12, v11, 0x100004077774924uLL);
    }

    while (v9);
  }

  else
  {
    v12 = 0;
  }

  v16 = *__xmlGenericError();
  v17 = __xmlGenericErrorContext();
  v16(*v17, "%s", v12);
  if (v12)
  {
    free(v12);
  }

  if (ctx)
  {
    xmlParserPrintFileContext(input);
    if (v4)
    {
      xmlParserPrintFileInfo(v4);
      v18 = *__xmlGenericError();
      v19 = __xmlGenericErrorContext();
      v18(*v19, "\n");
      xmlParserPrintFileContext(v4);
    }
  }
}

void xmlParserWarning(void *ctx, const char *msg, ...)
{
  va_start(va, msg);
  if (ctx)
  {
    v4 = *(ctx + 7);
    if (v4)
    {
      if (v4->filename || (v5 = *(ctx + 16), v5 < 2))
      {
        v6 = *(ctx + 7);
        v4 = 0;
      }

      else
      {
        v6 = *(*(ctx + 9) + 8 * v5 - 16);
      }
    }

    else
    {
      v6 = 0;
    }

    input = v6;
    xmlParserPrintFileInfo(v6);
  }

  else
  {
    input = 0;
    v4 = 0;
  }

  v7 = *__xmlGenericError();
  v8 = __xmlGenericErrorContext();
  v7(*v8, "warning: ");
  v9 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
  if (v9)
  {
    v10 = -1;
    LODWORD(v11) = 150;
    do
    {
      v12 = v9;
      if (v11 > 63999)
      {
        break;
      }

      v13 = vsnprintf(v9, v11, msg, va);
      if ((v13 & 0x80000000) == 0 && v13 < v11)
      {
        v14 = v10 == v13;
        v10 = v13;
        if (v14)
        {
          break;
        }
      }

      v15 = v13 >= 0 ? v13 + 1 : 100;
      v11 = (v15 + v11);
      v9 = malloc_type_realloc(v12, v11, 0x100004077774924uLL);
    }

    while (v9);
  }

  else
  {
    v12 = 0;
  }

  v16 = *__xmlGenericError();
  v17 = __xmlGenericErrorContext();
  v16(*v17, "%s", v12);
  if (v12)
  {
    free(v12);
  }

  if (ctx)
  {
    xmlParserPrintFileContext(input);
    if (v4)
    {
      xmlParserPrintFileInfo(v4);
      v18 = *__xmlGenericError();
      v19 = __xmlGenericErrorContext();
      v18(*v19, "\n");
      xmlParserPrintFileContext(v4);
    }
  }
}

void xmlParserValidityError(void *ctx, const char *msg, ...)
{
  va_start(va, msg);
  v4 = xmlStrlen(msg);
  if (v4 < 2 || msg[v4 - 2] == 58)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    if (ctx)
    {
      v5 = *(ctx + 7);
      if (!v5->filename)
      {
        v7 = *(ctx + 16);
        if (v7 >= 2)
        {
          v5 = *(*(ctx + 9) + 8 * v7 - 16);
        }
      }

      if ((xmlParserValidityError_had_info & 1) == 0)
      {
        xmlParserPrintFileInfo(v5);
      }
    }

    else
    {
      v5 = 0;
    }

    v8 = *__xmlGenericError();
    v9 = __xmlGenericErrorContext();
    v8(*v9, "validity error: ");
    v6 = 0;
  }

  xmlParserValidityError_had_info = v6;
  v10 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
  if (v10)
  {
    v11 = -1;
    LODWORD(v12) = 150;
    do
    {
      v13 = v10;
      if (v12 > 63999)
      {
        break;
      }

      v14 = vsnprintf(v10, v12, msg, va);
      if ((v14 & 0x80000000) == 0 && v14 < v12)
      {
        v15 = v11 == v14;
        v11 = v14;
        if (v15)
        {
          break;
        }
      }

      v16 = v14 >= 0 ? v14 + 1 : 100;
      v12 = (v16 + v12);
      v10 = malloc_type_realloc(v13, v12, 0x100004077774924uLL);
    }

    while (v10);
  }

  else
  {
    v13 = 0;
  }

  v17 = *__xmlGenericError();
  v18 = __xmlGenericErrorContext();
  v17(*v18, "%s", v13);
  if (v13)
  {
    free(v13);
  }

  if (ctx)
  {
    if (v5)
    {
      xmlParserPrintFileContext(v5);
    }
  }
}

void xmlParserValidityWarning(void *ctx, const char *msg, ...)
{
  va_start(va, msg);
  v4 = xmlStrlen(msg);
  v5 = 0;
  if (ctx && v4)
  {
    if (msg[v4 - 1] == 58)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(ctx + 7);
      if (!v5->filename)
      {
        v6 = *(ctx + 16);
        if (v6 >= 2)
        {
          v5 = *(*(ctx + 9) + 8 * v6 - 16);
        }
      }

      xmlParserPrintFileInfo(v5);
    }
  }

  v7 = *__xmlGenericError();
  v8 = __xmlGenericErrorContext();
  v7(*v8, "validity warning: ");
  v9 = malloc_type_malloc(0x96uLL, 0x100004077774924uLL);
  if (v9)
  {
    v10 = -1;
    LODWORD(v11) = 150;
    do
    {
      v12 = v9;
      if (v11 > 63999)
      {
        break;
      }

      v13 = vsnprintf(v9, v11, msg, va);
      if ((v13 & 0x80000000) == 0 && v13 < v11)
      {
        v14 = v10 == v13;
        v10 = v13;
        if (v14)
        {
          break;
        }
      }

      v15 = v13 >= 0 ? v13 + 1 : 100;
      v11 = (v15 + v11);
      v9 = malloc_type_realloc(v12, v11, 0x100004077774924uLL);
    }

    while (v9);
  }

  else
  {
    v12 = 0;
  }

  v16 = *__xmlGenericError();
  v17 = __xmlGenericErrorContext();
  v16(*v17, "%s", v12);
  if (v12)
  {
    free(v12);
  }

  if (ctx)
  {
    xmlParserPrintFileContext(v5);
  }
}

uint64_t xmlReportError(uint64_t result, uint64_t a2, const xmlChar *a3, void (*a4)(void *, const char *, ...), uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v6 = a4;
    v9 = result;
    if (!a4)
    {
      v6 = *__xmlGenericError();
      result = __xmlGenericErrorContext();
      a5 = *result;
    }

    if (*(v9 + 4))
    {
      v10 = *(v9 + 32);
      v11 = *(v9 + 80);
      if (v11 && *(v11 + 8) == 1)
      {
        v12 = *(v11 + 16);
      }

      else
      {
        v12 = 0;
      }

      v13 = *v9;
      v14 = *(v9 + 16);
      v35 = *(v9 + 32);
      if (a2)
      {
        v15 = *(a2 + 56);
        if (!v15)
        {
          v16 = 0;
          goto LABEL_28;
        }

        if (*(v15 + 8))
        {
          v16 = *(a2 + 56);
          v15 = 0;
LABEL_13:
          v32 = *(v16 + 52);
          v17 = "%s:%d: ";
LABEL_14:
          v6(a5, v17);
          goto LABEL_28;
        }

        v19 = *(a2 + 64);
        if (v19 < 2)
        {
          v16 = *(a2 + 56);
          v15 = 0;
        }

        else
        {
          v16 = *(*(a2 + 72) + 8 * v19 - 16);
          if (!v16)
          {
            goto LABEL_28;
          }

          if (*(v16 + 8))
          {
            goto LABEL_13;
          }
        }

        if (v10 && v13 == 1)
        {
          v28 = *(v16 + 52);
          v17 = "Entity: line %d: ";
          goto LABEL_14;
        }

LABEL_28:
        if (v12)
        {
          v6(a5, "element %s: ", v12);
        }

        v21 = v13 - 1;
        if (v13 - 1 <= 0x1D && ((0x3E7FBCFDu >> v21) & 1) != 0)
        {
          v6(a5, off_1E82BEB70[v21]);
        }

        if (v14 <= 3)
        {
          v6(a5, off_1E82BEC60[v14]);
        }

        if (a3 && ((v22 = xmlStrlen(a3), v22 < 1) || a3[v22 - 1] == 10))
        {
          v23 = "%s";
        }

        else
        {
          v23 = "%s\n";
        }

        result = (v6)(a5, v23);
        if (!a2)
        {
          goto LABEL_49;
        }

        result = xmlParserPrintFileContextInternal(v16, v6, a5);
        if (!v15)
        {
          goto LABEL_49;
        }

        if (*(v15 + 8))
        {
          v31 = *(v15 + 8);
          v34 = *(v15 + 52);
          v24 = "%s:%d: \n";
        }

        else
        {
          if (!v35 || v13 != 1)
          {
            goto LABEL_48;
          }

          v25 = *(v15 + 52);
          v24 = "Entity: line %d: \n";
        }

        v6(a5, v24);
LABEL_48:
        result = xmlParserPrintFileContextInternal(v15, v6, a5);
LABEL_49:
        if (v13 == 12)
        {
          result = *(v9 + 40);
          if (result)
          {
            v26 = *(v9 + 64);
            if (v26 <= 99)
            {
              result = xmlStrlen(result);
              if (v26 < result)
              {
                memset(__b, 0, 150);
                v6(a5, "%s\n", *(v9 + 40));
                v27 = *(v9 + 64);
                if (v27 < 1)
                {
                  LODWORD(v27) = 0;
                }

                else
                {
                  memset(__b, 32, v27);
                }

                *(__b + v27) = 94;
                result = (v6)(a5, "%s\n", __b);
              }
            }
          }
        }

        goto LABEL_61;
      }

      if (*(v9 + 24))
      {
        v30 = *(v9 + 24);
        v33 = *(v9 + 32);
        v18 = "%s:%d: ";
      }

      else
      {
        if (!v10)
        {
LABEL_27:
          v16 = 0;
          v15 = 0;
          goto LABEL_28;
        }

        v16 = 0;
        if (v13 > 0x13)
        {
          v15 = 0;
          goto LABEL_28;
        }

        v15 = 0;
        if (((1 << v13) & 0xF0012) == 0)
        {
          goto LABEL_28;
        }

        v20 = *(v9 + 32);
        v18 = "Entity: line %d: ";
      }

      v6(a5, v18);
      goto LABEL_27;
    }
  }

LABEL_61:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *__xmlSimpleError(unsigned int a1, int a2, uint64_t a3, const char *a4, const xmlChar *a5)
{
  if (a2 != 2)
  {
    return __xmlRaiseError(0, 0, 0, 0, a3, a1, a2, 2, 0, 0, a5, 0, 0, 0, 0 >> 96, a4, a5);
  }

  if (a5)
  {
    v8 = "Memory allocation failed : %s\n";
    v9 = a5;
    v7 = 0uLL;
    *v6 = a5;
  }

  else
  {
    v8 = "Memory allocation failed\n";
    *v6 = 0u;
    v7 = 0u;
  }

  return __xmlRaiseError(0, 0, 0, 0, a3, a1, 2, 3, 0, 0, v6[0], v6[1], v7, SDWORD2(v7), SHIDWORD(v7), v8, v9);
}

xmlErrorPtr xmlGetLastError(void)
{
  if (!__xmlLastError()->code)
  {
    return 0;
  }

  return __xmlLastError();
}

void xmlResetLastError(void)
{
  if (__xmlLastError()->code)
  {
    Error = __xmlLastError();

    xmlResetError(Error);
  }
}

xmlErrorPtr xmlCtxtGetLastError(xmlErrorPtr ctx)
{
  if (ctx)
  {
    if (HIDWORD(ctx[6].ctxt))
    {
      return (ctx + 600);
    }

    else
    {
      return 0;
    }
  }

  return ctx;
}

void xmlCtxtResetLastError(void *ctx)
{
  if (ctx)
  {
    *(ctx + 34) = 0;
    if (*(ctx + 151))
    {
      xmlResetError((ctx + 600));
    }
  }
}

void xmlCleanupGlobals(void)
{
  if (xmlThrDefMutex)
  {
    xmlFreeMutex(xmlThrDefMutex);
    xmlThrDefMutex = 0;
  }

  __xmlGlobalInitMutexDestroy();
}

void *xmlMallocZero(size_t size)
{
  result = malloc_type_calloc(1uLL, size, 0xDD969588uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void *xmlReallocChecked(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0x948B4A95uLL);
  if (!result)
  {
    abort();
  }

  return result;
}

void xmlThrDefSetGenericErrorFunc(void *ctx, xmlGenericErrorFunc handler)
{
  xmlMutexLock(xmlThrDefMutex);
  xmlGenericErrorContextThrDef = ctx;
  if (handler)
  {
    v4 = handler;
  }

  else
  {
    v4 = xmlGenericErrorDefaultFunc;
  }

  xmlGenericErrorThrDef = v4;
  v5 = xmlThrDefMutex;

  xmlMutexUnlock(v5);
}

void xmlThrDefSetStructuredErrorFunc(void *ctx, xmlStructuredErrorFunc handler)
{
  xmlMutexLock(xmlThrDefMutex);
  xmlStructuredErrorContextThrDef = ctx;
  xmlStructuredErrorThrDef = handler;
  v4 = xmlThrDefMutex;

  xmlMutexUnlock(v4);
}

xmlRegisterNodeFunc xmlRegisterNodeDefault(xmlRegisterNodeFunc func)
{
  v1 = xmlRegisterNodeDefaultValue;
  __xmlRegisterCallbacks = 1;
  xmlRegisterNodeDefaultValue = func;
  return v1;
}

xmlRegisterNodeFunc xmlThrDefRegisterNodeDefault(xmlRegisterNodeFunc func)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlRegisterNodeDefaultValueThrDef;
  __xmlRegisterCallbacks = 1;
  xmlRegisterNodeDefaultValueThrDef = func;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

xmlDeregisterNodeFunc xmlDeregisterNodeDefault(xmlDeregisterNodeFunc func)
{
  v1 = xmlDeregisterNodeDefaultValue;
  __xmlRegisterCallbacks = 1;
  xmlDeregisterNodeDefaultValue = func;
  return v1;
}

xmlDeregisterNodeFunc xmlThrDefDeregisterNodeDefault(xmlDeregisterNodeFunc func)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlDeregisterNodeDefaultValueThrDef;
  __xmlRegisterCallbacks = 1;
  xmlDeregisterNodeDefaultValueThrDef = func;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

xmlParserInputBufferCreateFilenameFunc xmlThrDefParserInputBufferCreateFilenameDefault(xmlParserInputBufferCreateFilenameFunc func)
{
  xmlMutexLock(xmlThrDefMutex);
  if (xmlParserInputBufferCreateFilenameValueThrDef)
  {
    v2 = xmlParserInputBufferCreateFilenameValueThrDef;
  }

  else
  {
    v2 = __xmlParserInputBufferCreateFilename;
  }

  xmlParserInputBufferCreateFilenameValueThrDef = func;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

xmlOutputBufferCreateFilenameFunc xmlThrDefOutputBufferCreateFilenameDefault(xmlOutputBufferCreateFilenameFunc func)
{
  xmlMutexLock(xmlThrDefMutex);
  if (xmlOutputBufferCreateFilenameValueThrDef)
  {
    v2 = xmlOutputBufferCreateFilenameValueThrDef;
  }

  else
  {
    v2 = __xmlOutputBufferCreateFilename;
  }

  xmlOutputBufferCreateFilenameValueThrDef = func;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

xmlSAXHandlerV1 *__docbDefaultSAXHandler(void)
{
  if (xmlIsMainThread())
  {
    return docbDefaultSAXHandler;
  }

  else
  {
    return &xmlGetGlobalState()->docbDefaultSAXHandler;
  }
}

xmlError *__xmlLastError(void)
{
  if (xmlIsMainThread())
  {
    return &xmlLastError;
  }

  else
  {
    return &xmlGetGlobalState()->xmlLastError;
  }
}

int *__oldXMLWDcompatibility(void)
{
  if (xmlIsMainThread())
  {
    return &oldXMLWDcompatibility;
  }

  else
  {
    return &xmlGetGlobalState()->oldXMLWDcompatibility;
  }
}

xmlBufferAllocationScheme xmlThrDefBufferAllocScheme(xmlBufferAllocationScheme v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlBufferAllocSchemeThrDef;
  xmlBufferAllocSchemeThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefDefaultBufferSize(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlDefaultBufferSizeThrDef;
  xmlDefaultBufferSizeThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefDoValidityCheckingDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlDoValidityCheckingDefaultValueThrDef;
  xmlDoValidityCheckingDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

void **__xmlGenericErrorContext(void)
{
  if (xmlIsMainThread())
  {
    return &xmlGenericErrorContext;
  }

  else
  {
    return &xmlGetGlobalState()->xmlGenericErrorContext;
  }
}

int *__xmlGetWarningsDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlGetWarningsDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlGetWarningsDefaultValue;
  }
}

int xmlThrDefGetWarningsDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlGetWarningsDefaultValueThrDef;
  xmlGetWarningsDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefIndentTreeOutput(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlIndentTreeOutputThrDef;
  xmlIndentTreeOutputThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

const char *__cdecl xmlThrDefTreeIndentString(const char *v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlTreeIndentStringThrDef;
  xmlTreeIndentStringThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefKeepBlanksDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlKeepBlanksDefaultValueThrDef;
  xmlKeepBlanksDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefLineNumbersDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlLineNumbersDefaultValueThrDef;
  xmlLineNumbersDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefLoadExtDtdDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlLoadExtDtdDefaultValueThrDef;
  xmlLoadExtDtdDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int *__xmlParserDebugEntities(void)
{
  if (xmlIsMainThread())
  {
    return &xmlParserDebugEntities;
  }

  else
  {
    return &xmlGetGlobalState()->xmlParserDebugEntities;
  }
}

int xmlThrDefParserDebugEntities(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlParserDebugEntitiesThrDef;
  xmlParserDebugEntitiesThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

const char **__xmlParserVersion(void)
{
  if (xmlIsMainThread())
  {
    return &xmlParserVersion;
  }

  return xmlGetGlobalState();
}

int xmlThrDefPedanticParserDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlPedanticParserDefaultValueThrDef;
  xmlPedanticParserDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefSaveNoEmptyTags(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlSaveNoEmptyTagsThrDef;
  xmlSaveNoEmptyTagsThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

int xmlThrDefSubstituteEntitiesDefaultValue(int v)
{
  xmlMutexLock(xmlThrDefMutex);
  v2 = xmlSubstituteEntitiesDefaultValueThrDef;
  xmlSubstituteEntitiesDefaultValueThrDef = v;
  xmlMutexUnlock(xmlThrDefMutex);
  return v2;
}

xmlRegisterNodeFunc *__xmlRegisterNodeDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlRegisterNodeDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlRegisterNodeDefaultValue;
  }
}

xmlDeregisterNodeFunc *__xmlDeregisterNodeDefaultValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlDeregisterNodeDefaultValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlDeregisterNodeDefaultValue;
  }
}

xmlParserInputBufferCreateFilenameFunc *__xmlParserInputBufferCreateFilenameValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlParserInputBufferCreateFilenameValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlParserInputBufferCreateFilenameValue;
  }
}

xmlOutputBufferCreateFilenameFunc *__xmlOutputBufferCreateFilenameValue(void)
{
  if (xmlIsMainThread())
  {
    return &xmlOutputBufferCreateFilenameValue;
  }

  else
  {
    return &xmlGetGlobalState()->xmlOutputBufferCreateFilenameValue;
  }
}

xmlHashTablePtr xmlHashCreateDict(int size, xmlDictPtr dict)
{
  v3 = xmlHashCreate(size);
  v4 = v3;
  if (v3)
  {
    *(v3 + 2) = dict;
    xmlDictReference(dict);
  }

  return v4;
}

void *__cdecl xmlHashQLookup3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *prefix, const xmlChar *name2, const xmlChar *prefix2, const xmlChar *name3, const xmlChar *prefix3)
{
  v7 = 0;
  if (table && prefix)
  {
    if (name)
    {
      v14 = name;
    }

    else
    {
      v14 = prefix;
    }

    v15 = *(table + 6) + 30 * *v14;
    if (name)
    {
      v16 = *name;
      if (*name)
      {
        v17 = name + 1;
        do
        {
          v15 ^= (v15 >> 3) + v16 + 32 * v15;
          v18 = *v17++;
          v16 = v18;
        }

        while (v18);
      }

      v15 ^= (v15 >> 3) + 32 * v15 + 58;
    }

    v19 = *prefix;
    if (*prefix)
    {
      v20 = prefix + 1;
      do
      {
        v15 ^= (v15 >> 3) + v19 + 32 * v15;
        v21 = *v20++;
        v19 = v21;
      }

      while (v21);
    }

    v22 = (32 * v15 + (v15 >> 3)) ^ v15;
    if (name2)
    {
      v23 = *name2;
      if (*name2)
      {
        v24 = name2 + 1;
        do
        {
          v22 ^= (v22 >> 3) + v23 + 32 * v22;
          v25 = *v24++;
          v23 = v25;
        }

        while (v25);
      }

      v22 ^= (v22 >> 3) + 32 * v22 + 58;
    }

    if (prefix2)
    {
      v26 = *prefix2;
      if (*prefix2)
      {
        v27 = prefix2 + 1;
        do
        {
          v22 ^= (v22 >> 3) + v26 + 32 * v22;
          v28 = *v27++;
          v26 = v28;
        }

        while (v28);
      }
    }

    v29 = (32 * v22 + (v22 >> 3)) ^ v22;
    if (name3)
    {
      v30 = *name3;
      if (*name3)
      {
        v31 = name3 + 1;
        do
        {
          v29 ^= (v29 >> 3) + v30 + 32 * v29;
          v32 = *v31++;
          v30 = v32;
        }

        while (v32);
      }

      v29 ^= (v29 >> 3) + 32 * v29 + 58;
    }

    if (prefix3)
    {
      v33 = *prefix3;
      if (*prefix3)
      {
        v34 = prefix3 + 1;
        do
        {
          v29 ^= (v29 >> 3) + v33 + 32 * v29;
          v35 = *v34++;
          v33 = v35;
        }

        while (v35);
      }
    }

    v36 = *table + 48 * (v29 % *(table + 2));
    if (*(v36 + 40))
    {
      v37 = *table == 0;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }

    else
    {
      while (!xmlStrQEqual(name, prefix, *(v36 + 8)) || !xmlStrQEqual(name2, prefix2, *(v36 + 16)) || !xmlStrQEqual(name3, prefix3, *(v36 + 24)))
      {
        v36 = *v36;
        if (!v36)
        {
          return 0;
        }
      }

      return *(v36 + 32);
    }
  }

  return v7;
}

void xmlHashScan(xmlHashTablePtr table, xmlHashScanner f, void *data)
{
  v3[0] = f;
  v3[1] = data;
  xmlHashScanFull(table, stubHashScannerFull, v3);
}

void xmlHashScanFull(xmlHashTablePtr table, xmlHashScannerFull f, void *data)
{
  if (table)
  {
    if (f)
    {
      if (*table)
      {
        v5 = *(table + 2);
        if (v5 >= 1)
        {
          for (i = 0; i < v5; ++i)
          {
            v8 = *table + 48 * i;
            if (*(v8 + 40))
            {
              v9 = *table == 0;
            }

            else
            {
              v9 = 1;
            }

            if (!v9)
            {
              v10 = *(table + 3);
              do
              {
                v11 = v10;
                v12 = *v8;
                v13 = *(v8 + 32);
                if (v13)
                {
                  (f)(v13, data, *(v8 + 8), *(v8 + 16), *(v8 + 24));
                  v10 = *(table + 3);
                }

                if (v11 != v10)
                {
                  v14 = *table + 48 * i;
                  if (v8 == v14)
                  {
                    if (*(v14 + 40))
                    {
                      v15 = v8;
                    }

                    else
                    {
                      v15 = 0;
                    }

                    if (*v14 == v12)
                    {
                      v12 = v15;
                    }

                    else
                    {
                      v12 = *table + 48 * i;
                    }
                  }
                }

                v8 = v12;
              }

              while (v12);
              v5 = *(table + 2);
            }
          }
        }
      }
    }
  }
}

void xmlHashScan3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3, xmlHashScanner f, void *data)
{
  v6[0] = f;
  v6[1] = data;
  xmlHashScanFull3(table, name, name2, name3, stubHashScannerFull, v6);
}

void xmlHashScanFull3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3, xmlHashScannerFull f, void *data)
{
  if (table)
  {
    if (f)
    {
      if (*table)
      {
        v8 = *(table + 2);
        if (v8 >= 1)
        {
          for (i = 0; i < v8; ++i)
          {
            v14 = *table + 48 * i;
            if (*(v14 + 40))
            {
              v15 = *table == 0;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              do
              {
                v16 = v14;
                v14 = *v14;
                if ((!name || xmlStrEqual(name, *(v16 + 8))) && (!name2 || xmlStrEqual(name2, *(v16 + 16))) && (!name3 || xmlStrEqual(name3, *(v16 + 24))))
                {
                  v17 = *(v16 + 32);
                  if (v17)
                  {
                    (f)(v17, data, *(v16 + 8), *(v16 + 16), *(v16 + 24));
                  }
                }
              }

              while (v14);
              v8 = *(table + 2);
            }
          }
        }
      }
    }
  }
}

xmlHashTablePtr xmlHashCopy(xmlHashTablePtr table, xmlHashCopier f)
{
  v2 = 0;
  if (table)
  {
    if (f)
    {
      v2 = xmlHashCreate(*(table + 2));
      if (v2)
      {
        if (*table)
        {
          v5 = *(table + 2);
          if (v5 >= 1)
          {
            for (i = 0; i < v5; ++i)
            {
              v7 = *table + 48 * i;
              if (*(v7 + 40))
              {
                v8 = *table == 0;
              }

              else
              {
                v8 = 1;
              }

              if (!v8)
              {
                do
                {
                  v10 = *v7;
                  v9 = *(v7 + 8);
                  v11 = *(v7 + 16);
                  v12 = *(v7 + 24);
                  v13 = (f)(*(v7 + 32), v9);
                  xmlHashAddEntry3(v2, v9, v11, v12, v13);
                  v7 = v10;
                }

                while (v10);
                v5 = *(table + 2);
              }
            }
          }
        }

        *(v2 + 3) = *(table + 3);
      }
    }
  }

  return v2;
}

int xmlHashSize(xmlHashTablePtr table)
{
  if (table)
  {
    return *(table + 3);
  }

  else
  {
    return -1;
  }
}

int xmlHashRemoveEntry3(xmlHashTablePtr table, const xmlChar *name, const xmlChar *name2, const xmlChar *name3, xmlHashDeallocator f)
{
  result = -1;
  if (table && name)
  {
    v11 = xmlHashComputeKey(table, name, name2, name3);
    v12 = *table + 48 * v11;
    if (*(v12 + 40))
    {
      v13 = *table == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = v11;
      v15 = 0;
      while (!xmlStrEqual(*(v12 + 8), name) || !xmlStrEqual(*(v12 + 16), name2) || !xmlStrEqual(*(v12 + 24), name3))
      {
        v15 = v12;
        v12 = *v12;
        if (!v12)
        {
          return -1;
        }
      }

      if (f)
      {
        v16 = *(v12 + 32);
        if (v16)
        {
          (f)(v16, *(v12 + 8));
        }
      }

      *(v12 + 32) = 0;
      if (!*(table + 2))
      {
        v17 = *(v12 + 8);
        if (v17)
        {
          free(v17);
        }

        v18 = *(v12 + 16);
        if (v18)
        {
          free(v18);
        }

        v19 = *(v12 + 24);
        if (v19)
        {
          free(v19);
        }
      }

      v20 = *v12;
      if (v15)
      {
        *v15 = v20;
        v20 = v12;
      }

      else
      {
        if (!v20)
        {
          *(v12 + 40) = 0;
          goto LABEL_29;
        }

        v21 = (*table + 48 * v14);
        v22 = *v20;
        v23 = v20[2];
        v21[1] = v20[1];
        v21[2] = v23;
        *v21 = v22;
      }

      free(v20);
LABEL_29:
      result = 0;
      --*(table + 3);
      return result;
    }

    return -1;
  }

  return result;
}

const htmlElemDesc *__cdecl htmlTagLookup(const htmlElemDesc *tag)
{
  if (tag)
  {
    return bsearch(tag, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
  }

  return tag;
}

int htmlAutoCloseTag(htmlDocPtr doc, const xmlChar *name, htmlNodePtr elem)
{
  if (!elem)
  {
    return 1;
  }

  if (xmlStrEqual(name, elem->name))
  {
    return 0;
  }

  v7 = elem->name;
  v9[0] = name;
  v9[1] = v7;
  if (!bsearch(v9, htmlStartClose, 0xFBuLL, 0x10uLL, htmlCompareStartClose))
  {
    children = elem->children;
    if (!children)
    {
      return 0;
    }

    while (1)
    {
      result = htmlAutoCloseTag(doc, name, children);
      if (result)
      {
        break;
      }

      children = children->next;
      if (!children)
      {
        return result;
      }
    }
  }

  return 1;
}

int htmlIsAutoClosed(htmlDocPtr doc, htmlNodePtr elem)
{
  if (!elem)
  {
    return 1;
  }

  children = elem->children;
  if (!children)
  {
    return 0;
  }

  while (!htmlAutoCloseTag(doc, elem->name, children))
  {
    children = children->next;
    if (!children)
    {
      return 0;
    }
  }

  return 1;
}

int htmlIsScriptAttribute(const xmlChar *name)
{
  if (name)
  {
    v1 = name;
    if (*name == 111 && name[1] == 110)
    {
      v2 = 0;
      while (!xmlStrEqual(v1, htmlScriptAttributes[v2]))
      {
        if (++v2 == 18)
        {
          goto LABEL_7;
        }
      }

      LODWORD(name) = 1;
    }

    else
    {
LABEL_7:
      LODWORD(name) = 0;
    }
  }

  return name;
}

const htmlEntityDesc *__cdecl htmlEntityLookup(const xmlChar *name)
{
  v2 = &html40EntitiesTable;
  v3 = 253;
  while (!xmlStrEqual(name, v2->name))
  {
    ++v2;
    if (!--v3)
    {
      return 0;
    }
  }

  return v2;
}

const htmlEntityDesc *__cdecl htmlEntityValueLookup(unsigned int value)
{
  result = &html40EntitiesTable;
  v3 = 253;
  while (result->value < value)
  {
    ++result;
    if (!--v3)
    {
      return 0;
    }
  }

  if (result->value <= value)
  {
    return result;
  }

  return 0;
}

int UTF8ToHtml(unsigned __int8 *out, int *outlen, const unsigned __int8 *in, int *inlen)
{
  v35 = *MEMORY[0x1E69E9840];
  result = -1;
  if (!out || !outlen || !inlen)
  {
    goto LABEL_42;
  }

  v8 = in;
  if (!in)
  {
    v31 = 0;
    result = 0;
    *outlen = 0;
    goto LABEL_41;
  }

  v9 = *inlen;
  LODWORD(v10) = in;
  LODWORD(v11) = out;
  if (v9 < 1)
  {
LABEL_40:
    result = 0;
    *outlen = v11 - out;
    v31 = v10 - v8;
    goto LABEL_41;
  }

  v12 = &in[v9];
  v13 = &out[*outlen];
  v11 = out;
  v14 = in;
  v10 = in;
  while (1)
  {
    v15 = *v10++;
    v16 = v15;
    if ((v15 & 0x80000000) == 0)
    {
      v17 = 0;
      v18 = v16;
      goto LABEL_16;
    }

    if (v16 <= 0xBF)
    {
      break;
    }

    if (v16 <= 0xDF)
    {
      v18 = v16 & 0x1F;
      v17 = 1;
      goto LABEL_16;
    }

    if (v16 <= 0xEF)
    {
      v18 = v16 & 0xF;
      v17 = 2;
      goto LABEL_16;
    }

    if (v16 > 0xF7)
    {
      break;
    }

    v18 = v16 & 7;
    v17 = 3;
LABEL_16:
    if (v12 - v10 < v17)
    {
      goto LABEL_39;
    }

    if ((v16 & 0x80) != 0 && v10 < v12)
    {
      v19 = v17 - 1;
      v20 = v14 + 2;
      do
      {
        v10 = v20;
        v21 = *(v20 - 1);
        if ((v21 & 0xC0) != 0x80)
        {
          break;
        }

        v18 = v21 & 0x3F | (v18 << 6);
        if (v19-- == 0)
        {
          break;
        }

        v20 = v10 + 1;
      }

      while (v10 < v12);
    }

    if (v18 > 0x7F)
    {
      *__str = 0;
      v34 = 0;
      v23 = off_1E82C0418;
      v24 = 253;
      while (1)
      {
        v25 = *(v23 - 2);
        if (v25 >= v18)
        {
          break;
        }

        v23 += 3;
        if (!--v24)
        {
          goto LABEL_33;
        }
      }

      if (v25 <= v18)
      {
        v26 = *v23;
        goto LABEL_34;
      }

LABEL_33:
      v26 = __str;
      snprintf(__str, 0x10uLL, "#%u", v18);
LABEL_34:
      v27 = strlen(v26);
      if (&v11[v27 + 2] >= v13)
      {
LABEL_39:
        LODWORD(v10) = v14;
        goto LABEL_40;
      }

      v28 = v27;
      *v11 = 38;
      v29 = (v11 + 1);
      memcpy(v29, v26, v27);
      v30 = &v29[v28];
      *v30 = 59;
      v11 = (v30 + 1);
    }

    else
    {
      if (v11 + 1 >= v13)
      {
        goto LABEL_39;
      }

      *v11++ = v18;
    }

    v14 = v10;
    if (v10 >= v12)
    {
      goto LABEL_40;
    }
  }

  *outlen = v11 - out;
  v31 = v14 - v8;
  result = -2;
LABEL_41:
  *inlen = v31;
LABEL_42:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

int htmlEncodeEntities(unsigned __int8 *out, int *outlen, const unsigned __int8 *in, int *inlen, int quoteChar)
{
  v34 = *MEMORY[0x1E69E9840];
  result = -1;
  if (in && out && outlen && inlen)
  {
    v9 = in;
    v10 = *inlen;
    if (v10 < 1)
    {
      result = 0;
      LODWORD(v13) = out;
      LODWORD(v14) = in;
LABEL_44:
      *outlen = v13 - out;
      *inlen = v14 - v9;
      goto LABEL_45;
    }

    v31 = &out[*outlen];
    v12 = &in[v10];
    v13 = out;
    v14 = in;
    v15 = in;
    while (1)
    {
      v16 = *v15++;
      v17 = v16;
      if (v16 < 0)
      {
        break;
      }

      if (v12 - v15 < 0)
      {
        goto LABEL_43;
      }

LABEL_21:
      v22 = v17 > 0x7F || v17 == quoteChar;
      if (v22 || v17 == 38 || (v17 & 0x7D) == 0x3C)
      {
        *__str = 0;
        v33 = 0;
        v23 = off_1E82C0418;
        v24 = 253;
        while (1)
        {
          v25 = *(v23 - 2);
          if (v25 >= v17)
          {
            break;
          }

          v23 += 3;
          if (!--v24)
          {
            goto LABEL_36;
          }
        }

        if (v25 <= v17)
        {
          v26 = *v23;
          goto LABEL_37;
        }

LABEL_36:
        v26 = __str;
        snprintf(__str, 0x10uLL, "#%u", v17);
LABEL_37:
        v27 = strlen(v26);
        if (v31 - v13 < ((v27 << 32) + 0x200000000) >> 32)
        {
          goto LABEL_43;
        }

        v28 = v27 << 32;
        *v13 = 38;
        v29 = (v13 + 1);
        memcpy(v29, v26, v27);
        v13 = &v29[v28 >> 32];
        *v13 = 59;
      }

      else
      {
        if (v13 >= v31)
        {
          goto LABEL_43;
        }

        *v13 = v17;
      }

      ++v13;
      v14 = v15;
      if (v15 >= v12)
      {
        result = 0;
        LODWORD(v14) = v15;
        goto LABEL_44;
      }
    }

    if (v17 >= 0xC0)
    {
      if (v17 < 0xE0)
      {
        v18 = 1;
        v19 = 31;
LABEL_17:
        if (v12 - v15 >= v18)
        {
          v17 &= v19;
          v15 = &v14[v18 + 1];
          v20 = 1;
          while (1)
          {
            v21 = v14[v20];
            if ((v21 & 0xC0) != 0x80)
            {
              goto LABEL_41;
            }

            v17 = v21 & 0x3F | (v17 << 6);
            ++v20;
            if (!--v18)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_43:
        result = 0;
        goto LABEL_44;
      }

      if (v17 < 0xF0)
      {
        v18 = 2;
        v19 = 15;
        goto LABEL_17;
      }

      if (v17 <= 0xF7)
      {
        v18 = 3;
        v19 = 7;
        goto LABEL_17;
      }
    }

LABEL_41:
    result = -2;
    goto LABEL_44;
  }

LABEL_45:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *htmlErrMemory(_DWORD *result, const xmlChar *a2)
{
  if (!result)
  {
    goto LABEL_5;
  }

  if (!result[83] || result[68] != -1)
  {
    result[34] = 2;
    result[68] = -1;
    result[83] = 1;
LABEL_5:
    if (a2)
    {
      return __xmlRaiseError(0, 0, 0, result, 0, 1u, 2, 3, 0, 0, a2, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a2);
    }

    else
    {
      return __xmlRaiseError(0, 0, 0, result, 0, 1u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v2);
    }
  }

  return result;
}

htmlDocPtr htmlNewDoc(const xmlChar *URI, const xmlChar *ExternalID)
{
  if (!(URI | ExternalID))
  {
    URI = "http://www.w3.org/TR/REC-html40/loose.dtd";
    ExternalID = "-//W3C//DTD HTML 4.0 Transitional//EN";
  }

  return htmlNewDocNoDtD(URI, ExternalID);
}

const htmlEntityDesc *__cdecl htmlParseEntityRef(htmlParserCtxtPtr ctxt, const xmlChar **str)
{
  if (str)
  {
    *str = 0;
  }

  if (!ctxt)
  {
    return 0;
  }

  input = ctxt->input;
  if (!input || *input->cur != 38)
  {
    return 0;
  }

  xmlNextChar(ctxt);
  v5 = htmlParseName(ctxt);
  if (!v5)
  {
    htmlParseErr(ctxt, 68, "htmlParseEntityRef: no name\n", 0, 0);
    return 0;
  }

  v6 = v5;
  v7 = ctxt->input;
  if (!ctxt->progressive && v7->end - v7->cur <= 249)
  {
    xmlParserInputGrow(v7, 250);
    v7 = ctxt->input;
  }

  if (*v7->cur != 59)
  {
    htmlParseErr(ctxt, 23, "htmlParseEntityRef: expecting ';'\n", 0, 0);
    if (str)
    {
      result = 0;
      *str = v6;
      return result;
    }

    return 0;
  }

  if (str)
  {
    *str = v6;
  }

  v8 = &html40EntitiesTable;
  v9 = 253;
  while (!xmlStrEqual(v6, v8->name))
  {
    result = 0;
    ++v8;
    if (!--v9)
    {
      return result;
    }
  }

  xmlNextChar(ctxt);
  return v8;
}

const xmlChar *htmlParseName(uint64_t a1)
{
  if (!*(a1 + 452))
  {
    v2 = *(a1 + 56);
    if (v2->end - v2->cur <= 249)
    {
      xmlParserInputGrow(v2, 250);
    }
  }

  v3 = *(a1 + 56);
  v4 = *(v3 + 32);
  v5 = *v4;
  if ((v5 & 0xFFFFFFDF) - 65 < 0x1A || v5 == 95 || v5 == 58)
  {
    for (i = 1; ; ++i)
    {
      v7 = v4[i];
      if ((v7 - 48) >= 0xA && (v7 & 0xFFFFFFDF) - 65 >= 0x1A && ((v7 - 45) > 0x32 || ((1 << (v7 - 45)) & 0x4000000002003) == 0))
      {
        break;
      }
    }

    v10 = &v4[i];
    if (&v4[i] == *(v3 + 40))
    {
      return 0;
    }

    if (v7 >= 1)
    {
      result = xmlDictLookup(*(a1 + 456), v4, i);
      v12 = *(a1 + 56);
      *(v12 + 32) = v10;
      *(v12 + 56) += i;
      return result;
    }
  }

  return htmlParseNameComplex(a1);
}

_DWORD *htmlParseErr(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 5u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  v5 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 5u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
    v5[6] = 0;
  }

  return result;
}

int htmlParseCharRef(htmlParserCtxtPtr ctxt)
{
  v1 = ctxt;
  if (!ctxt || (input = ctxt->input) == 0)
  {
    v8 = "htmlParseCharRef: context error\n";
    v9 = 1;
    goto LABEL_19;
  }

  cur = input->cur;
  if (*cur != 38 || cur[1] != 35)
  {
    htmlParseErr(ctxt, 8, "htmlParseCharRef: invalid value\n", 0, 0);
    v6 = 0;
    goto LABEL_21;
  }

  v4 = cur + 2;
  if ((cur[2] | 0x20) != 0x78)
  {
    input->cur = v4;
    input->col += 2;
    v11 = *v4;
    if (v11 != 59)
    {
      v6 = 0;
      do
      {
        if ((v11 - 48) > 9)
        {
          v13 = v1;
          v14 = 7;
          goto LABEL_45;
        }

        v12 = v11 + 10 * v6 - 48;
        if (v6 < 1114112)
        {
          v6 = v12;
        }

        xmlNextChar(v1);
        v11 = *v1->input->cur;
      }

      while (v11 != 59);
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  input->cur = cur + 3;
  input->col += 3;
  v5 = cur[3];
  if (v5 == 59)
  {
LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  v6 = 0;
  while ((v5 - 48) <= 9)
  {
    v7 = v5 + 16 * v6 - 48;
LABEL_14:
    if (v6 < 1114112)
    {
      v6 = v7;
    }

    xmlNextChar(v1);
    v5 = *v1->input->cur;
    if (v5 == 59)
    {
      goto LABEL_26;
    }
  }

  if ((v5 - 97) <= 5)
  {
    v7 = v5 + 16 * v6 - 87;
    goto LABEL_14;
  }

  if ((v5 - 65) <= 5)
  {
    v7 = v5 + 16 * v6 - 55;
    goto LABEL_14;
  }

  v13 = v1;
  v14 = 6;
LABEL_45:
  htmlParseErr(v13, v14, "htmlParseCharRef: missing semicolon\n", 0, 0);
  if (*v1->input->cur == 59)
  {
LABEL_26:
    xmlNextChar(v1);
  }

  if (v6 > 255)
  {
    if (v6 >> 11 < 0x1B || (v6 - 57344) >> 1 < 0xFFF || (v6 - 0x10000) < 0x100000)
    {
      return v6;
    }

    if (v6 < 0x110000)
    {
      goto LABEL_21;
    }

    v8 = "htmlParseCharRef: value too large\n";
    ctxt = v1;
    v9 = 9;
LABEL_19:
    htmlParseErr(ctxt, v9, v8, 0, 0);
    return 0;
  }

  if (v6 <= 31 && (v6 > 0xD || ((1 << v6) & 0x2600) == 0))
  {
LABEL_21:
    htmlParseErrInt(v1, "htmlParseCharRef: invalid xmlChar value %d\n", v6);
    return 0;
  }

  return v6;
}

_DWORD *htmlParseErrInt(_DWORD *result, const char *a2, int a3)
{
  v3 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = 9;
    result = __xmlRaiseError(0, 0, 0, result, 0, 5u, 9, 2, 0, 0, 0, 0, 0, a3, 0, a2, a3);
    v3[6] = 0;
  }

  return result;
}

void htmlParseElement(htmlParserCtxtPtr ctxt)
{
  if (ctxt && (v2 = ctxt->input) != 0)
  {
    if (ctxt->instate == XML_PARSER_EOF)
    {
      return;
    }

    memset(&v42, 0, sizeof(v42));
    if (ctxt->record_info)
    {
      v3 = &v2->cur[v2->consumed] - v2->base;
      line = v2->line;
      v42.begin_pos = v3;
      v42.begin_line = line;
    }

    if (htmlParseStartTag(ctxt) != -1)
    {
      name = ctxt->name;
      if (name)
      {
        v6 = bsearch(ctxt->name, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
        if (!v6)
        {
          htmlParseErr(ctxt, 801, "Tag %s invalid\n", name, 0);
        }

        input = ctxt->input;
        cur = input->cur;
        v9 = *cur;
        if (v9 != 62)
        {
          if (v9 != 47 || cur[1] != 62)
          {
            htmlParseErr(ctxt, 73, "Couldn't find end of Start Tag %s\n", name, 0);
            if (xmlStrEqual(name, ctxt->name))
            {
              nodePop(ctxt);
              nameNr = ctxt->nameNr;
              if (nameNr >= 1)
              {
                nameTab = ctxt->nameTab;
                v12 = nameNr - 1;
                ctxt->nameNr = nameNr - 1;
                if (nameNr == 1)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = nameTab[nameNr - 2];
                }

                ctxt->name = v13;
                nameTab[v12] = 0;
              }
            }

            if (ctxt->record_info)
            {
              v39 = ctxt->input;
              v40 = &v39->cur[v39->consumed] - v39->base;
              v41 = v39->line;
              v42.end_pos = v40;
              v42.end_line = v41;
              v42.node = ctxt->node;
              xmlParserAddNodeInfo(ctxt, &v42);
            }

            return;
          }

          input->cur = cur + 2;
          input->col += 2;
LABEL_27:
          if (ctxt->sax)
          {
            endElement = ctxt->sax->endElement;
            if (endElement)
            {
              (endElement)(ctxt->userData, name);
            }
          }

          v15 = ctxt->nameNr;
          if (v15 >= 1)
          {
            v16 = ctxt->nameTab;
            v17 = v15 - 1;
            ctxt->nameNr = v15 - 1;
            if (v15 == 1)
            {
              v18 = 0;
            }

            else
            {
              v18 = v16[v15 - 2];
            }

            ctxt->name = v18;
            v16[v17] = 0;
          }

          return;
        }

        xmlNextChar(ctxt);
        if (v6 && v6[11])
        {
          goto LABEL_27;
        }

        v19 = xmlStrdup(ctxt->name);
        v20 = ctxt->input;
        v21 = v20->cur;
        if (!*v21)
        {
          goto LABEL_97;
        }

        v22 = ctxt->nameNr;
LABEL_35:
        v23 = xmlStrdup(ctxt->name);
        v24 = ctxt->nameNr;
        while (1)
        {
          while (1)
          {
            if (!ctxt->progressive)
            {
              v25 = ctxt->input;
              if (v25->end - v25->cur <= 249)
              {
                xmlParserInputGrow(v25, 250);
              }
            }

            if (ctxt->instate == XML_PARSER_EOF)
            {
LABEL_92:
              if (!v23)
              {
                goto LABEL_94;
              }

LABEL_93:
              free(v23);
LABEL_94:
              v20 = ctxt->input;
              if (v21 == v20->cur || (v21 = v20->cur, ctxt->nameNr < v22) || !*v21)
              {
LABEL_97:
                if (v19 && ctxt->record_info)
                {
                  v37 = &v21[v20->consumed] - v20->base;
                  v38 = v20->line;
                  v42.end_pos = v37;
                  v42.end_line = v38;
                  v42.node = ctxt->node;
                  xmlParserAddNodeInfo(ctxt, &v42);
                  v20 = ctxt->input;
                }

                if (!*v20->cur)
                {
                  htmlAutoCloseOnEnd(ctxt);
                }

                if (v19)
                {
                  free(v19);
                }

                return;
              }

              goto LABEL_35;
            }

            v26 = ctxt->input->cur;
            if (*v26 == 60)
            {
              break;
            }

LABEL_53:
            v30 = ctxt->nameNr;
            v31 = v30 < 1 || v24 < v30;
            if (!v31 && !xmlStrEqual(v23, ctxt->name))
            {
              goto LABEL_92;
            }

            if (*ctxt->input->cur)
            {
              if (xmlStrEqual(v23, "script") || xmlStrEqual(v23, "style"))
              {
                htmlParseScript(ctxt);
                goto LABEL_84;
              }

              v32 = ctxt->input->cur;
              if (*v32 == 60 && v32[1] == 33 && __toupper(v32[2]) == 68 && __toupper(v32[3]) == 79 && __toupper(v32[4]) == 67 && __toupper(v32[5]) == 84 && __toupper(v32[6]) == 89 && __toupper(v32[7]) == 80 && __toupper(v32[8]) == 69)
              {
                htmlParseErr(ctxt, 800, "Misplaced DOCTYPE declaration\n", "DOCTYPE", 0);
                htmlParseDocTypeDecl(ctxt);
              }
            }

            v33 = ctxt->input->cur;
            v34 = *v33;
            if (v34 == 38)
            {
              htmlParseReference(ctxt);
            }

            else if (v34 == 60)
            {
              v35 = v33[1];
              if (v35 == 63)
              {
                htmlParsePI(ctxt);
              }

              else if (v35 == 33 && v33[2] == 45 && v33[3] == 45)
              {
                htmlParseComment(ctxt);
              }

              else
              {
                htmlParseElement(ctxt);
              }
            }

            else
            {
              if (!*v33)
              {
                htmlAutoCloseOnEnd(ctxt);
                goto LABEL_92;
              }

              htmlParseCharData(ctxt);
            }

LABEL_84:
            if (!ctxt->progressive)
            {
              v36 = ctxt->input;
              if (v36->end - v36->cur <= 249)
              {
                xmlParserInputGrow(v36, 250);
              }
            }
          }

          v27 = v26[1];
          if (v27 == 47)
          {
            if (htmlParseEndTag(ctxt))
            {
              if (v23)
              {
                goto LABEL_93;
              }

              if (!ctxt->nameNr)
              {
                goto LABEL_94;
              }
            }
          }

          else
          {
            if ((v27 & 0xFFFFFFDF) - 65 >= 0x1A && v27 != 95 && v27 != 58)
            {
              goto LABEL_53;
            }

            v28 = htmlParseHTMLName_nonInvasive(ctxt);
            if (!v28)
            {
              htmlParseErr(ctxt, 68, "htmlParseStartTag: invalid element name\n", 0, 0);
              while (*ctxt->input->cur && *ctxt->input->cur != 62)
              {
                xmlNextChar(ctxt);
              }

              goto LABEL_92;
            }

            if (!ctxt->name)
            {
              goto LABEL_53;
            }

            v29 = v28;
            __key[0] = ctxt->name;
            __key[1] = v28;
            if (!bsearch(__key, htmlStartClose, 0xFBuLL, 0x10uLL, htmlCompareStartClose))
            {
              goto LABEL_53;
            }

            htmlAutoClose(ctxt, v29);
          }
        }
      }
    }

    if (*ctxt->input->cur == 62)
    {

      xmlNextChar(ctxt);
    }
  }

  else
  {

    htmlParseErr(ctxt, 1, "htmlParseElement: context error\n", 0, 0);
  }
}

void __htmlParseContent(uint64_t a1)
{
  if (a1)
  {
    htmlParseContentInternal(a1);
  }
}

void htmlParseComment(uint64_t a1)
{
  if (*(a1 + 276))
  {
    return;
  }

  v2 = *(a1 + 56);
  cur = v2->cur;
  if (*cur != 60 || cur[1] != 33 || cur[2] != 45 || cur[3] != 45)
  {
    return;
  }

  v4 = *(a1 + 272);
  *(a1 + 272) = 5;
  v5 = cur + 4;
  v2->cur = v5;
  v2->col += 4;
  if (v5 - v2->base >= 501 && v2->end - v5 <= 499)
  {
    xmlParserInputShrink(v2);
  }

  v6 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  if (!v6)
  {
    htmlErrMemory(a1, "buffer allocation failed\n");
    *(a1 + 272) = v4;
    return;
  }

  v7 = v6;
  v39 = 0;
  *v6 = 0;
  v8 = htmlCurrentChar(a1, &v39);
  if (!v8)
  {
    goto LABEL_64;
  }

  v9 = v8;
  v10 = *(a1 + 56);
  v11 = v39;
  v12 = *(v10 + 32);
  v13 = &v12[v39];
  if (v13 <= *(v10 + 40))
  {
    if (*v12 == 10)
    {
      ++*(v10 + 52);
      *(v10 + 56) = 1;
    }

    else
    {
      ++*(v10 + 56);
    }

    *(a1 + 276) = 0;
    *(v10 + 32) = v13;
    ++*(a1 + 312);
  }

  v38 = 0;
  v14 = htmlCurrentChar(a1, &v38);
  if (!v14)
  {
    goto LABEL_64;
  }

  v15 = v14;
  v16 = *(a1 + 56);
  v17 = v38;
  v18 = *(v16 + 32);
  v19 = &v18[v38];
  if (v19 <= *(v16 + 40))
  {
    if (*v18 == 10)
    {
      ++*(v16 + 52);
      *(v16 + 56) = 1;
    }

    else
    {
      ++*(v16 + 56);
    }

    *(a1 + 276) = 0;
    *(v16 + 32) = v19;
    ++*(a1 + 312);
  }

  v37 = 0;
  v20 = htmlCurrentChar(a1, &v37 + 1);
  if (!v20)
  {
    v33 = 0;
LABEL_63:
    v7[v33] = 0;
LABEL_64:
    htmlParseErr(a1, 45, "Comment not terminated \n<!--%.50s\n", v7, 0);

    free(v7);
    return;
  }

  v21 = v20;
  v35 = v4;
  v36 = 0;
  v22 = 100;
  while (1)
  {
    v23 = v15;
    v15 = v21;
    if (v9 == 45 && v23 == 45 && v21 == 62)
    {
      break;
    }

    v24 = *(a1 + 56);
    v25 = HIDWORD(v37);
    v26 = *(v24 + 32);
    v27 = &v26[SHIDWORD(v37)];
    if (v27 <= *(v24 + 40))
    {
      if (*v26 == 10)
      {
        ++*(v24 + 52);
        v28 = 1;
      }

      else
      {
        v28 = *(v24 + 56) + 1;
      }

      *(v24 + 56) = v28;
      *(a1 + 276) = 0;
      *(v24 + 32) = v27;
      ++*(a1 + 312);
    }

    v21 = htmlCurrentChar(a1, &v37);
    if (!v21)
    {
      v29 = *(a1 + 56);
      v30 = v29->cur;
      if (v30 - v29->base >= 501 && v29->end - v30 <= 499)
      {
        xmlParserInputShrink(v29);
      }

      if (!*(a1 + 452))
      {
        v31 = *(a1 + 56);
        if (v31->end - v31->cur <= 249)
        {
          xmlParserInputGrow(v31, 250);
        }
      }

      v21 = htmlCurrentChar(a1, &v37);
    }

    if (v9 == 45 && v23 == 45 && v15 == 33 && v21 == 62)
    {
      htmlParseErr(a1, 45, "Comment incorrectly closed by '--!>'", 0, 0);
      break;
    }

    if (v36 + 5 >= v22)
    {
      v22 *= 2;
      v32 = malloc_type_realloc(v7, v22, 0x100004077774924uLL);
      if (!v32)
      {
        free(v7);
        htmlErrMemory(a1, "growing buffer failed\n");
        goto LABEL_73;
      }

      v7 = v32;
    }

    if (v9 > 255)
    {
      if (v9 >> 11 < 0x1B || (v9 - 57344) >> 1 < 0xFFF || !((v9 - 0x10000) >> 20))
      {
LABEL_57:
        if (v11 == 1)
        {
          v7[v36] = v9;
          v25 = HIDWORD(v37);
          v17 = v38;
          ++v36;
        }

        else
        {
          v36 += xmlCopyChar(v11, &v7[v36], v9);
        }

        goto LABEL_60;
      }
    }

    else if (v9 > 31 || v9 <= 0xD && ((1 << v9) & 0x2600) != 0)
    {
      goto LABEL_57;
    }

    htmlParseErrInt(a1, "Invalid char in comment 0x%X\n", v9);
LABEL_60:
    v11 = v17;
    HIDWORD(v37) = v37;
    v38 = v25;
    v17 = v25;
    v9 = v23;
    if (!v21)
    {
      v33 = v36;
      goto LABEL_63;
    }
  }

  v7[v36] = 0;
  xmlNextChar(a1);
  if (*a1)
  {
    v34 = *(*a1 + 160);
    if (v34)
    {
      if (!*(a1 + 332))
      {
        v34(*(a1 + 8), v7);
      }
    }
  }

  free(v7);
LABEL_73:
  *(a1 + 272) = v35;
}

void htmlParsePI(uint64_t a1)
{
  if (*(a1 + 276))
  {
    return;
  }

  v34 = v1;
  v35 = v2;
  v4 = *(a1 + 56);
  cur = v4->cur;
  if (*cur != 60 || cur[1] != 63)
  {
    return;
  }

  v6 = *(a1 + 272);
  *(a1 + 272) = 2;
  v7 = cur + 2;
  v4->cur = v7;
  v4->col += 2;
  if (v7 - v4->base >= 501 && v4->end - v7 <= 499)
  {
    xmlParserInputShrink(v4);
  }

  v8 = htmlParseName(a1);
  if (!v8)
  {
    htmlParseErr(a1, 46, "PI is not started correctly", 0, 0);
    goto LABEL_67;
  }

  v9 = v8;
  if (!*(a1 + 276))
  {
    v10 = *(a1 + 56);
    v11 = *(v10 + 32);
    if (*v11 == 62)
    {
      *(v10 + 32) = v11 + 1;
      ++*(v10 + 56);
      if (*a1 && !*(a1 + 332))
      {
        v12 = *(*a1 + 152);
        if (v12)
        {
          v12(*(a1 + 8), v8, 0);
        }
      }

      goto LABEL_67;
    }
  }

  v13 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  if (!v13)
  {
    htmlErrMemory(a1, 0);
    goto LABEL_67;
  }

  v14 = v13;
  v15 = **(*(a1 + 56) + 32);
  v16 = v15 > 0x20;
  v17 = (1 << v15) & 0x100002600;
  if (v16 || v17 == 0)
  {
    htmlParseErr(a1, 65, "ParsePI: PI %s space expected\n", v9, 0);
  }

  len = 0;
  htmlSkipBlankChars(a1);
  v19 = htmlCurrentChar(a1, &len);
  v20 = 0;
  v21 = 0;
  v22 = 100;
  while (v19 && v19 != 62)
  {
    if (v20 + 5 >= v22)
    {
      v22 *= 2;
      v23 = malloc_type_realloc(v14, v22, 0x100004077774924uLL);
      if (!v23)
      {
        htmlErrMemory(a1, 0);
        goto LABEL_66;
      }

      v14 = v23;
    }

    if (v21 >= 50)
    {
      if (!*(a1 + 452))
      {
        v24 = *(a1 + 56);
        if (v24->end - v24->cur <= 249)
        {
          xmlParserInputGrow(v24, 250);
        }
      }

      v21 = 0;
    }

    else
    {
      ++v21;
    }

    if (v19 > 255)
    {
      if (v19 >> 11 >= 0x1B && (v19 - 57344) >> 1 >= 0xFFF && (v19 - 0x10000) >> 20)
      {
LABEL_40:
        htmlParseErrInt(a1, "Invalid char in processing instruction 0x%X\n", v19);
        goto LABEL_44;
      }
    }

    else if (v19 <= 31 && (v19 > 0xD || ((1 << v19) & 0x2600) == 0))
    {
      goto LABEL_40;
    }

    if (len == 1)
    {
      *(v14 + v20++) = v19;
    }

    else
    {
      v20 += xmlCopyChar(len, v14 + v20, v19);
    }

LABEL_44:
    v25 = *(a1 + 56);
    v26 = *(v25 + 32);
    v27 = &v26[len];
    if (v27 <= *(v25 + 40))
    {
      if (*v26 == 10)
      {
        ++*(v25 + 52);
        *(v25 + 56) = 1;
      }

      else
      {
        ++*(v25 + 56);
      }

      *(a1 + 276) = 0;
      *(v25 + 32) = v27;
      ++*(a1 + 312);
    }

    v19 = htmlCurrentChar(a1, &len);
    if (!v19)
    {
      v28 = *(a1 + 56);
      v29 = v28->cur;
      if (v29 - v28->base >= 501 && v28->end - v29 <= 499)
      {
        xmlParserInputShrink(v28);
      }

      if (!*(a1 + 452))
      {
        v30 = *(a1 + 56);
        if (v30->end - v30->cur <= 249)
        {
          xmlParserInputGrow(v30, 250);
        }
      }

      v19 = htmlCurrentChar(a1, &len);
    }
  }

  *(v14 + v20) = 0;
  if (v19 == 62)
  {
    v31 = *(a1 + 56);
    ++*(v31 + 32);
    ++*(v31 + 56);
    if (*a1)
    {
      if (!*(a1 + 332))
      {
        v32 = *(*a1 + 152);
        if (v32)
        {
          v32(*(a1 + 8), v9, v14);
        }
      }
    }
  }

  else
  {
    htmlParseErr(a1, 47, "ParsePI: PI %s never end ...\n", v9, 0);
  }

LABEL_66:
  free(v14);
LABEL_67:
  *(a1 + 272) = v6;
}

void htmlParseDocTypeDecl(xmlParserCtxt *a1)
{
  input = a1->input;
  input->cur += 9;
  input->col += 9;
  htmlSkipBlankChars(a1);
  v3 = htmlParseName(a1);
  if (!v3)
  {
    htmlParseErr(a1, 68, "htmlParseDocTypeDecl : no DOCTYPE name !\n", 0, 0);
  }

  htmlSkipBlankChars(a1);
  v4 = a1->input;
  cur = v4->cur;
  if (__toupper(*cur) == 83 && __toupper(cur[1]) == 89 && __toupper(cur[2]) == 83 && __toupper(cur[3]) == 84 && __toupper(cur[4]) == 69 && __toupper(cur[5]) == 77)
  {
    v4->cur = cur + 6;
    v6 = a1->input;
    v6->col += 6;
    LODWORD(v6) = *v6->cur;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      htmlParseErr(a1, 65, "Space required after 'SYSTEM'\n", 0, 0);
    }

    htmlSkipBlankChars(a1);
    v10 = htmlParseSystemLiteral(a1);
    if (!v10)
    {
      htmlParseErr(a1, 70, "htmlParseExternalID: SYSTEM, no URI\n", 0, 0);
    }

    v11 = 0;
  }

  else
  {
    v12 = a1->input;
    v13 = v12->cur;
    if (__toupper(*v13) == 80 && __toupper(v13[1]) == 85 && __toupper(v13[2]) == 66 && __toupper(v13[3]) == 76 && __toupper(v13[4]) == 73 && __toupper(v13[5]) == 67)
    {
      v12->cur = v13 + 6;
      v14 = a1->input;
      v14->col += 6;
      v15 = *v14->cur;
      if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
      {
        htmlParseErr(a1, 65, "Space required after 'PUBLIC'\n", 0, 0);
      }

      htmlSkipBlankChars(a1);
      v11 = htmlParsePubidLiteral(a1);
      if (!v11)
      {
        htmlParseErr(a1, 71, "htmlParseExternalID: PUBLIC, no Public Identifier\n", 0, 0);
      }

      htmlSkipBlankChars(a1);
      v16 = *a1->input->cur;
      if (v16 == 39 || v16 == 34)
      {
        v10 = htmlParseSystemLiteral(a1);
        goto LABEL_32;
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = 0;
  }

LABEL_32:
  htmlSkipBlankChars(a1);
  if (*a1->input->cur == 62)
  {
LABEL_33:
    xmlNextChar(a1);
  }

  else
  {
    htmlParseErr(a1, 61, "DOCTYPE improperly terminated\n", 0, 0);
    while (*a1->input->cur)
    {
      if (*a1->input->cur == 62)
      {
        goto LABEL_33;
      }

      xmlNextChar(a1);
    }
  }

  if (a1->sax)
  {
    internalSubset = a1->sax->internalSubset;
    if (internalSubset)
    {
      if (!a1->disableSAX)
      {
        internalSubset(a1->userData, v3, v11, v10);
      }
    }
  }

  if (v10)
  {
    free(v10);
  }

  if (v11)
  {

    free(v11);
  }
}

htmlParserCtxtPtr htmlNewParserCtxt(void)
{
  v0 = malloc_type_malloc(0x2F0uLL, 0x10F0040410C4EF0uLL);
  v1 = v0;
  if (!v0)
  {
    htmlErrMemory(0, "NewParserCtxt: out of memory\n");
    return v1;
  }

  bzero(v0, 0x2F0uLL);
  v2 = xmlDictCreate();
  v1->dict = v2;
  if (!v2 || (v2 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL)) == 0)
  {
    htmlErrMemory(v2, "htmlInitParserCtxt: out of memory\n");
LABEL_9:
    xmlFreeParserCtxt(v1);
    return 0;
  }

  v3 = v2;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v4 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
  v1->inputTab = v4;
  if (!v4)
  {
    htmlErrMemory(0, "htmlInitParserCtxt: out of memory\n");
    v1->input = 0;
    *&v1->inputNr = 0;
    goto LABEL_9;
  }

  v1->input = 0;
  p_input = &v1->input;
  *&v1->inputNr = 0x500000000;
  v1->version = 0;
  v1->encoding = 0;
  v1->standalone = -1;
  v1->instate = XML_PARSER_START;
  v6 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
  v1->nodeTab = v6;
  if (!v6)
  {
    htmlErrMemory(0, "htmlInitParserCtxt: out of memory\n");
    *p_input = 0;
    *&v1->inputNr = 0;
    v1->node = 0;
    *&v1->nodeNr = 0;
    goto LABEL_9;
  }

  v1->node = 0;
  *&v1->nodeNr = 0xA00000000;
  v7 = malloc_type_malloc(0x50uLL, 0x10040436913F5uLL);
  v1->nameTab = v7;
  if (!v7)
  {
    htmlErrMemory(0, "htmlInitParserCtxt: out of memory\n");
    *p_input = 0;
    *&v1->inputNr = 0;
    v1->node = 0;
    *&v1->nodeNr = 0;
    v1->name = 0;
    *&v1->nameNr = 0;
    goto LABEL_9;
  }

  *&v1->nameNr = 0xA00000000;
  v1->name = 0;
  *&v1->nodeInfoNr = 0u;
  v1->sax = v3;
  v8 = __htmlDefaultSAXHandler();
  v9 = *&v8->hasInternalSubset;
  *&v3->internalSubset = *&v8->internalSubset;
  *&v3->hasInternalSubset = v9;
  v10 = *&v8->unparsedEntityDecl;
  v12 = *&v8->resolveEntity;
  v11 = *&v8->entityDecl;
  *&v3->attributeDecl = *&v8->attributeDecl;
  *&v3->unparsedEntityDecl = v10;
  *&v3->resolveEntity = v12;
  *&v3->entityDecl = v11;
  v13 = *&v8->ignorableWhitespace;
  v15 = *&v8->startDocument;
  v14 = *&v8->startElement;
  *&v3->reference = *&v8->reference;
  *&v3->ignorableWhitespace = v13;
  *&v3->startDocument = v15;
  *&v3->startElement = v14;
  v16 = *&v8->externalSubset;
  v18 = *&v8->comment;
  v17 = *&v8->error;
  *&v3->getParameterEntity = *&v8->getParameterEntity;
  *&v3->externalSubset = v16;
  *&v3->comment = v18;
  *&v3->error = v17;
  v1->userData = v1;
  v1->myDoc = 0;
  *&v1->wellFormed = 1;
  v1->linenumbers = *__xmlLineNumbersDefaultValue();
  v1->keepBlanks = *__xmlKeepBlanksDefaultValue();
  v1->html = 1;
  v1->vctxt.finishDtd = -1412623820;
  v1->vctxt.userData = v1;
  v1->vctxt.error = xmlParserValidityError;
  v1->vctxt.warning = xmlParserValidityWarning;
  v1->record_info = 0;
  v1->validate = 0;
  v1->checkIndex = 0;
  v1->catalogs = 0;
  xmlInitNodeInfoSeq(&v1->node_seq);
  return v1;
}

htmlParserCtxtPtr htmlCreateMemoryParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer)
  {
    if (size >= 1)
    {
      v2 = htmlNewParserCtxt();
      if (v2)
      {
        Mem = xmlParserInputBufferCreateMem(buffer, size, XML_CHAR_ENCODING_NONE);
        if (!Mem)
        {
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
LABEL_9:
          xmlFreeParserCtxt(v2);
          return 0;
        }
      }
    }
  }

  return v2;
}

int htmlParseChunk(htmlParserCtxtPtr ctxt, const char *chunk, int size, int terminate)
{
  v4 = ctxt;
  if (!ctxt || (input = ctxt->input) == 0)
  {
    v14 = "htmlParseChunk: context error\n";
    v13 = 1;
    v15 = 1;
    goto LABEL_10;
  }

  if (!chunk || size < 1 || !input->buf || ctxt->instate == XML_PARSER_EOF)
  {
    if (ctxt->instate == XML_PARSER_EOF)
    {
      goto LABEL_17;
    }

    buf = input->buf;
    if (!input->buf)
    {
      goto LABEL_17;
    }

    if (!*(buf + 24))
    {
      goto LABEL_17;
    }

    v17 = *(buf + 32);
    if (!v17)
    {
      goto LABEL_17;
    }

    if (!*(buf + 40))
    {
      goto LABEL_17;
    }

    InputBase = xmlBufGetInputBase(v17, input);
    v19 = v4->input->cur - v4->input->base;
    v20 = xmlCharEncInput(buf, terminate);
    xmlBufSetInputBaseCur(*(buf + 32), &v4->input->buf, InputBase, v19);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    v14 = "encoder error\n";
    v13 = 81;
    ctxt = v4;
    v15 = 81;
LABEL_10:
    htmlParseErr(ctxt, v15, v14, 0, 0);
    return v13;
  }

  v9 = xmlBufGetInputBase(input->buf->buffer, input);
  v10 = v4->input;
  v11 = v10->cur - v10->base;
  v12 = xmlParserInputBufferPush(v10->buf, size, chunk);
  xmlBufSetInputBaseCur(v4->input->buf->buffer, &v4->input->buf, v9, v11);
  if (v12 < 0)
  {
    v13 = -1;
    v4->errNo = -1;
    v4->disableSAX = 1;
    return v13;
  }

LABEL_17:
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v21 = v4->input;
  v22 = 1;
  if (!v21)
  {
LABEL_274:
    v23 = terminate != 0;
    if (terminate && v22)
    {
      htmlAutoCloseOnEnd(v4);
      if (!v4->nameNr && v4->instate != XML_PARSER_EOF)
      {
        v4->instate = XML_PARSER_EOF;
        if (v4->sax)
        {
          endDocument = v4->sax->endDocument;
          if (endDocument)
          {
            endDocument(v4->userData);
          }
        }
      }

      v23 = 1;
    }

    goto LABEL_278;
  }

  v23 = terminate != 0;
  while (1)
  {
LABEL_19:
    if (v21->buf)
    {
      length = xmlBufUse(v21->buf->buffer);
    }

    else
    {
      length = v21->length;
    }

    base = v21->base;
    cur = v21->cur;
    v27 = &base[length - cur];
    if (terminate && !v27)
    {
      htmlAutoCloseOnEnd(v4);
      if (!v4->nameNr && v4->instate != XML_PARSER_EOF)
      {
        v4->instate = XML_PARSER_EOF;
        if (v4->sax)
        {
          v96 = v4->sax->endDocument;
          if (v96)
          {
            v96(v4->userData);
          }
        }
      }

      v22 = 1;
      goto LABEL_274;
    }

    if (v27 < 1)
    {
      goto LABEL_271;
    }

    v28 = *cur;
    if (*cur)
    {
      break;
    }

    v31 = v4->input;
    ++v31->cur;
    ++v31->col;
LABEL_78:
    v21 = v4->input;
    if (!v21)
    {
      goto LABEL_271;
    }
  }

  switch(v4->instate)
  {
    case XML_PARSER_EOF:
      goto LABEL_278;
    case XML_PARSER_START:
      if (v28 <= 0x20 && ((1 << v28) & 0x100002600) != 0)
      {
        htmlSkipBlankChars(v4);
        if (v21->buf)
        {
          v30 = xmlBufUse(v21->buf->buffer);
        }

        else
        {
          v30 = v21->length;
        }

        v27 = &v21->base[v30 - v21->cur];
      }

      sax = v4->sax;
      if (v4->sax)
      {
        setDocumentLocator = sax->setDocumentLocator;
        if (!setDocumentLocator || (userData = v4->userData, v59 = __xmlDefaultSAXLocator(), setDocumentLocator(userData, v59), (sax = v4->sax) != 0))
        {
          startDocument = sax->startDocument;
          if (startDocument)
          {
            if (!v4->disableSAX)
            {
              startDocument(v4->userData);
            }
          }
        }
      }

      v61 = v21->cur;
      if (*v61 == 60 && v61[1] == 33)
      {
        v62 = v4->input->cur;
        if (__toupper(v62[2]) == 68 && __toupper(v62[3]) == 79 && __toupper(v62[4]) == 67 && __toupper(v62[5]) == 84 && __toupper(v62[6]) == 89 && __toupper(v62[7]) == 80 && __toupper(v62[8]) == 69)
        {
          goto LABEL_174;
        }
      }

      v4->instate = XML_PARSER_MISC;
      goto LABEL_78;
    case XML_PARSER_MISC:
      htmlSkipBlankChars(v4);
      if (v21->buf)
      {
        v39 = xmlBufUse(v21->buf->buffer);
      }

      else
      {
        v39 = v21->length;
      }

      v47 = v21->cur;
      v27 = &v21->base[v39 - v47];
      if (v27 < 1)
      {
        goto LABEL_271;
      }

      if (v27 == 1)
      {
        if (!terminate)
        {
          goto LABEL_305;
        }

        goto LABEL_254;
      }

      v48 = v47[1];
      v49 = *v47;
      if (v49 != 60 || v48 != 33)
      {
        if (v49 == 60 && v48 == 63)
        {
          if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 0) & 0x80000000) != 0)
          {
            goto LABEL_305;
          }

          htmlParsePI(v4);
          goto LABEL_166;
        }

LABEL_254:
        v4->instate = XML_PARSER_CONTENT;
        goto LABEL_78;
      }

      if (v47[2] == 45 && v47[3] == 45)
      {
        if (!terminate && (htmlParseLookupCommentEnd(v4) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }

        htmlParseComment(v4);
LABEL_166:
        v4->instate = XML_PARSER_MISC;
        goto LABEL_78;
      }

      v63 = v4->input->cur;
      if (__toupper(v63[2]) != 68 || __toupper(v63[3]) != 79 || __toupper(v63[4]) != 67 || __toupper(v63[5]) != 84 || __toupper(v63[6]) != 89 || __toupper(v63[7]) != 80 || __toupper(v63[8]) != 69)
      {
        if (v27 < 9)
        {
          goto LABEL_278;
        }

        goto LABEL_254;
      }

LABEL_174:
      if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 1) & 0x80000000) != 0)
      {
        goto LABEL_305;
      }

      htmlParseDocTypeDecl(v4);
      v4->instate = XML_PARSER_PROLOG;
      goto LABEL_78;
    case XML_PARSER_PI:
      v32 = v4;
      v33 = "HPP: internal error, state == PI\n";
      goto LABEL_76;
    case XML_PARSER_DTD:
      v32 = v4;
      v33 = "HPP: internal error, state == DTD\n";
      goto LABEL_76;
    case XML_PARSER_PROLOG:
      htmlSkipBlankChars(v4);
      if (v21->buf)
      {
        v40 = xmlBufUse(v21->buf->buffer);
      }

      else
      {
        v40 = v21->length;
      }

      v50 = v21->cur;
      v27 = &v21->base[v40 - v50];
      if (v27 < 2)
      {
        goto LABEL_271;
      }

      v51 = *v50;
      v52 = v50[1];
      if (v51 == 60 && v52 == 33)
      {
        if (v50[2] != 45 || v50[3] != 45)
        {
          if (v27 < 4)
          {
            goto LABEL_278;
          }

          goto LABEL_254;
        }

        if (!terminate && (htmlParseLookupCommentEnd(v4) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }

        htmlParseComment(v4);
      }

      else
      {
        if (v51 != 60 || v52 != 63)
        {
          goto LABEL_254;
        }

        if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 0) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }

        htmlParsePI(v4);
      }

      v4->instate = XML_PARSER_PROLOG;
      goto LABEL_78;
    case XML_PARSER_COMMENT:
      v32 = v4;
      v33 = "HPP: internal error, state == COMMENT\n";
      goto LABEL_76;
    case XML_PARSER_START_TAG:
      if (v27 == 1)
      {
        if (!terminate)
        {
          goto LABEL_305;
        }

        if (v28 != 60)
        {
          goto LABEL_254;
        }
      }

      else
      {
        if (v28 != 60)
        {
          goto LABEL_254;
        }

        if (cur[1] == 47)
        {
          v34 = 9;
LABEL_65:
          v4->instate = v34;
LABEL_77:
          v4->checkIndex = 0;
          goto LABEL_78;
        }

        if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 1) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }
      }

      if (v4->record_info)
      {
        v64 = v4->input;
        v65 = &v64->cur[v64->consumed] - v64->base;
        line = v64->line;
        *(&v99 + 1) = v65;
        *&v100 = line;
      }

      started = htmlParseStartTag(v4);
      if (v4->instate == XML_PARSER_EOF)
      {
        goto LABEL_308;
      }

      if (started != -1)
      {
        name = v4->name;
        if (name)
        {
          v69 = bsearch(v4->name, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
          if (!v69)
          {
            htmlParseErr(v4, 801, "Tag %s invalid\n", name, 0);
          }

          v70 = v4->input;
          v71 = v70->cur;
          v72 = *v71;
          if (v72 == 62)
          {
            xmlNextChar(v4);
            if (v69 && v69[11])
            {
              if (v4->sax)
              {
                endElement = v4->sax->endElement;
                if (endElement)
                {
                  endElement(v4->userData, name);
                }
              }

              nameNr = v4->nameNr;
              if (nameNr >= 1)
              {
                nameTab = v4->nameTab;
                v86 = nameNr - 1;
                v4->nameNr = nameNr - 1;
                if (nameNr == 1)
                {
                  v87 = 0;
                }

                else
                {
                  v87 = nameTab[nameNr - 2];
                }

                v4->name = v87;
                nameTab[v86] = 0;
              }
            }

            if (v4->record_info)
            {
              htmlNodeInfoPush(v4, &v99);
            }

            v4->instate = XML_PARSER_CONTENT;
            goto LABEL_78;
          }

          if (v72 == 47 && v71[1] == 62)
          {
            v70->cur = v71 + 2;
            v70->col += 2;
            if (v4->sax)
            {
              v73 = v4->sax->endElement;
              if (v73)
              {
                v73(v4->userData, name);
              }
            }

            v74 = v4->nameNr;
            if (v74 >= 1)
            {
              v75 = v4->nameTab;
              v76 = v74 - 1;
              v4->nameNr = v74 - 1;
              if (v74 == 1)
              {
                v77 = 0;
              }

              else
              {
                v77 = v75[v74 - 2];
              }

              v4->name = v77;
              v75[v76] = 0;
            }
          }

          else
          {
            htmlParseErr(v4, 73, "Couldn't find end of Start Tag %s\n", name, 0);
            if (xmlStrEqual(name, v4->name))
            {
              nodePop(v4);
              v78 = v4->nameNr;
              if (v78 >= 1)
              {
                v79 = v4->nameTab;
                v80 = v78 - 1;
                v4->nameNr = v78 - 1;
                if (v78 == 1)
                {
                  v81 = 0;
                }

                else
                {
                  v81 = v79[v78 - 2];
                }

                v4->name = v81;
                v79[v80] = 0;
              }
            }

            if (v4->record_info)
            {
              htmlNodeInfoPush(v4, &v99);
            }
          }

          goto LABEL_254;
        }
      }

      v21 = v4->input;
      if (*v21->cur == 62)
      {
        xmlNextChar(v4);
        goto LABEL_78;
      }

      if (v21)
      {
        goto LABEL_19;
      }

LABEL_271:
      v22 = v27 == 0;
      goto LABEL_274;
    case XML_PARSER_CONTENT:
      v98 = 0;
      if (v4->token)
      {
        LOBYTE(v98) = v4->token;
        htmlCheckParagraph(v4);
        if (v4->sax)
        {
          characters = v4->sax->characters;
          if (characters)
          {
            characters(v4->userData, &v98, 1);
          }
        }

        v4->token = 0;
        v4->checkIndex = 0;
      }

      if (terminate && v27 == 1)
      {
        v36 = *v21->cur;
        if (v36 == 38 || v36 == 60)
        {
          goto LABEL_278;
        }

        v37 = v4->sax;
        if (!v4->sax)
        {
          goto LABEL_228;
        }

        LOBYTE(v98) = *v21->cur;
        if (v36 <= 0x20 && ((1 << v36) & 0x100002600) != 0)
        {
          if (!v4->keepBlanks)
          {
            ignorableWhitespace = v37->ignorableWhitespace;
            if (!ignorableWhitespace)
            {
              goto LABEL_228;
            }

LABEL_227:
            ignorableWhitespace(v4->userData, &v98, 1);
LABEL_228:
            v4->token = 0;
            v4->checkIndex = 0;
            ++v21->cur;
            goto LABEL_78;
          }
        }

        else
        {
          htmlCheckParagraph(v4);
          v37 = v4->sax;
        }

        ignorableWhitespace = v37->characters;
        if (ignorableWhitespace)
        {
          goto LABEL_227;
        }

        goto LABEL_228;
      }

      if (v27 == 1)
      {
        goto LABEL_278;
      }

      v42 = v21->cur;
      v43 = *v42;
      v44 = v42[1];
      if (xmlStrEqual(v4->name, "script") || xmlStrEqual(v4->name, "style"))
      {
        if (!terminate)
        {
          v45 = htmlParseLookupSequence(v4, 60, 47, 0);
          if (v45 < 0)
          {
            goto LABEL_278;
          }

          if (!v21->cur[v45 + 2])
          {
LABEL_305:
            v23 = 0;
            goto LABEL_278;
          }
        }

        htmlParseScript(v4);
        if (v43 == 60 && v44 == 47)
        {
LABEL_88:
          v46 = 9;
          goto LABEL_89;
        }
      }

      else if (v43 == 60 && v44 == 33)
      {
        v82 = v4->input->cur;
        if (__toupper(v82[2]) != 68 || __toupper(v82[3]) != 79 || __toupper(v82[4]) != 67 || __toupper(v82[5]) != 84 || __toupper(v82[6]) != 89 || __toupper(v82[7]) != 80 || __toupper(v82[8]) != 69)
        {
          v88 = v21->cur;
          if (v88[2] != 45 || v88[3] != 45)
          {
            if (v27 < 4)
            {
              goto LABEL_278;
            }

            goto LABEL_242;
          }

          if (!terminate && (htmlParseLookupCommentEnd(v4) & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          htmlParseComment(v4);
          goto LABEL_240;
        }

        if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 1) & 0x80000000) != 0)
        {
          goto LABEL_278;
        }

        htmlParseErr(v4, 800, "Misplaced DOCTYPE declaration\n", "DOCTYPE", 0);
        htmlParseDocTypeDecl(v4);
      }

      else
      {
        if (v43 == 60 && v44 == 63)
        {
          if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 0) & 0x80000000) != 0)
          {
            goto LABEL_278;
          }

          htmlParsePI(v4);
LABEL_240:
          v4->instate = XML_PARSER_CONTENT;
          goto LABEL_78;
        }

        if (v43 == 60 && v44 == 47)
        {
          goto LABEL_88;
        }

        if (v43 == 60)
        {
          if (!(terminate | v44))
          {
            goto LABEL_278;
          }

LABEL_242:
          v46 = 6;
LABEL_89:
          v4->instate = v46;
          v4->checkIndex = 0;
          goto LABEL_78;
        }

        if (!terminate && (htmlParseLookupSequence(v4, 60, 0, 0) & 0x80000000) != 0)
        {
          goto LABEL_278;
        }

        v4->checkIndex = 0;
        if (v4->instate != XML_PARSER_EOF)
        {
          v89 = v21->cur;
          do
          {
            if (v89 >= v21->end)
            {
              break;
            }

            if (v43 == 38)
            {
              htmlParseReference(v4);
            }

            else
            {
              htmlParseCharData(v4);
            }

            if (v4->instate == XML_PARSER_EOF)
            {
              break;
            }

            v89 = v21->cur;
            v43 = *v89;
          }

          while (v43 != 60);
        }
      }

      goto LABEL_78;
    case XML_PARSER_CDATA_SECTION:
      v32 = v4;
      v33 = "HPP: internal error, state == CDATA\n";
      goto LABEL_76;
    case XML_PARSER_END_TAG:
      if (v27 == 1)
      {
        goto LABEL_278;
      }

      if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 0) & 0x80000000) != 0)
      {
        goto LABEL_305;
      }

      htmlParseEndTag(v4);
      if (v4->nameNr)
      {
        v34 = 7;
      }

      else
      {
        v34 = 14;
      }

      goto LABEL_65;
    case XML_PARSER_ENTITY_DECL:
      v32 = v4;
      v33 = "HPP: internal error, state == ENTITY_DECL\n";
      goto LABEL_76;
    case XML_PARSER_ENTITY_VALUE:
      v32 = v4;
      v33 = "HPP: internal error, state == ENTITY_VALUE\n";
      goto LABEL_76;
    case XML_PARSER_ATTRIBUTE_VALUE:
      htmlParseErr(v4, 1, "HPP: internal error, state == ATTRIBUTE_VALUE\n", 0, 0);
      v34 = 6;
      goto LABEL_65;
    case XML_PARSER_SYSTEM_LITERAL:
      v32 = v4;
      v33 = "HPP: internal error, state == XML_PARSER_SYSTEM_LITERAL\n";
      goto LABEL_76;
    case XML_PARSER_EPILOG:
      if (v21->buf)
      {
        v41 = xmlBufUse(v21->buf->buffer);
        base = v21->base;
        cur = v21->cur;
      }

      else
      {
        v41 = v21->length;
      }

      v27 = &base[v41 - cur];
      if (v27 < 1)
      {
        goto LABEL_271;
      }

      v53 = *cur;
      if (v53 <= 0x20 && ((1 << v53) & 0x100002600) != 0)
      {
        htmlParseCharData(v4);
        goto LABEL_278;
      }

      if (v27 == 1)
      {
        goto LABEL_278;
      }

      v55 = cur[1];
      if (v53 != 60 || v55 != 33)
      {
        if (v53 != 60 || v55 != 63)
        {
          goto LABEL_307;
        }

        if (!terminate && (htmlParseLookupSequence(v4, 62, 0, 0) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }

        htmlParsePI(v4);
        goto LABEL_140;
      }

      if (cur[2] == 45 && cur[3] == 45)
      {
        if (!terminate && (htmlParseLookupCommentEnd(v4) & 0x80000000) != 0)
        {
          goto LABEL_305;
        }

        htmlParseComment(v4);
LABEL_140:
        v4->instate = XML_PARSER_EPILOG;
        goto LABEL_78;
      }

      if (v27 >= 4)
      {
LABEL_307:
        v4->errNo = 5;
        v4->wellFormed = 0;
        v4->instate = XML_PARSER_EOF;
LABEL_308:
        if (v4->sax)
        {
          v97 = v4->sax->endDocument;
          if (v97)
          {
            v97(v4->userData);
          }
        }
      }

LABEL_278:
      if ((v4->options & 4) == 0)
      {
        myDoc = v4->myDoc;
        if (myDoc)
        {
          if (v23 || (instate = v4->instate, instate == XML_PARSER_EPILOG) || instate == XML_PARSER_EOF)
          {
            if (!xmlGetIntSubset(myDoc))
            {
              v4->myDoc->intSubset = xmlCreateIntSubset(v4->myDoc, "html", "-//W3C//DTD HTML 4.0 Transitional//EN", "http://www.w3.org/TR/REC-html40/loose.dtd");
            }
          }
        }
      }

      if (terminate)
      {
        v92 = v4->instate;
        if (v92 != XML_PARSER_EOF)
        {
          if (v92 != XML_PARSER_MISC && v92 != XML_PARSER_EPILOG)
          {
            v4->errNo = 5;
            v4->wellFormed = 0;
          }

          if (v4->sax)
          {
            v93 = v4->sax->endDocument;
            if (v93)
            {
              v93(v4->userData);
            }
          }
        }

        v4->instate = XML_PARSER_EOF;
      }

      return v4->errNo;
    case XML_PARSER_IGNORE:
      v32 = v4;
      v33 = "HPP: internal error, state == XML_PARSER_IGNORE\n";
      goto LABEL_76;
    case XML_PARSER_PUBLIC_LITERAL:
      v32 = v4;
      v33 = "HPP: internal error, state == XML_PARSER_LITERAL\n";
LABEL_76:
      htmlParseErr(v32, 1, v33, 0, 0);
      v4->instate = XML_PARSER_CONTENT;
      goto LABEL_77;
    default:
      goto LABEL_78;
  }
}

htmlParserCtxtPtr htmlCreatePushParserCtxt(htmlSAXHandlerPtr sax, void *user_data, const char *chunk, int size, const char *filename, xmlCharEncoding enc)
{
  xmlInitParser();
  v12 = xmlAllocParserInputBuffer(enc);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = htmlNewParserCtxt();
  v15 = v14;
  if (!v14)
  {
    xmlFreeParserInputBuffer(v13);
    return v15;
  }

  if (enc == XML_CHAR_ENCODING_UTF8 || v13->encoder)
  {
    v14->charset = 1;
  }

  if (sax)
  {
    v16 = v14->sax;
    if (v16 != __htmlDefaultSAXHandler())
    {
      free(v15->sax);
    }

    v17 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL);
    v15->sax = v17;
    if (!v17)
    {
      free(v13);
      free(v15);
      return 0;
    }

    v18 = *&sax->internalSubset;
    v19 = *&sax->hasInternalSubset;
    v20 = *&sax->entityDecl;
    *&v17->resolveEntity = *&sax->resolveEntity;
    *&v17->entityDecl = v20;
    *&v17->internalSubset = v18;
    *&v17->hasInternalSubset = v19;
    v21 = *&sax->attributeDecl;
    v22 = *&sax->unparsedEntityDecl;
    v23 = *&sax->startElement;
    *&v17->startDocument = *&sax->startDocument;
    *&v17->startElement = v23;
    *&v17->attributeDecl = v21;
    *&v17->unparsedEntityDecl = v22;
    v24 = *&sax->reference;
    v25 = *&sax->ignorableWhitespace;
    v26 = *&sax->error;
    *&v17->comment = *&sax->comment;
    *&v17->error = v26;
    *&v17->reference = v24;
    *&v17->ignorableWhitespace = v25;
    v27 = *&sax->getParameterEntity;
    v28 = *&sax->externalSubset;
    v29 = *&sax->endElementNs;
    *&v17->_private = *&sax->_private;
    *&v17->endElementNs = v29;
    *&v17->getParameterEntity = v27;
    *&v17->externalSubset = v28;
    if (user_data)
    {
      v15->userData = user_data;
    }
  }

  if (filename)
  {
    Directory = xmlParserGetDirectory(filename);
  }

  else
  {
    Directory = 0;
  }

  v15->directory = Directory;
  v31 = malloc_type_malloc(0x68uLL, 0x10F00401DB255F5uLL);
  if (!v31)
  {
    htmlErrMemory(v15, "couldn't allocate a new input stream\n");
    xmlFreeParserCtxt(v15);
    xmlFreeParserInputBuffer(v13);
    return 0;
  }

  v32 = v31;
  *(v31 + 56) = 0u;
  *(v31 + 40) = 0u;
  *(v31 + 72) = 0u;
  *(v31 + 88) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 8) = 0u;
  *(v31 + 52) = 0x100000001;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 9) = 0;
  if (filename)
  {
    v33 = xmlCanonicPath(filename);
  }

  else
  {
    v33 = 0;
  }

  v32->buf = v13;
  v32->filename = v33;
  xmlBufResetInput(v13->buffer, v32);
  if (inputPush(v15, v32) < 0)
  {
    xmlFreeInputStream(v32);
    xmlFreeParserCtxt(v15);
    return 0;
  }

  if (chunk)
  {
    if (size >= 1)
    {
      input = v15->input;
      if (input)
      {
        if (*input)
        {
          InputBase = xmlBufGetInputBase(*(*input + 32), input);
          v36 = v15->input;
          v37 = v36->cur - v36->base;
          xmlParserInputBufferPush(v36->buf, size, chunk);
          xmlBufSetInputBaseCur(v15->input->buf->buffer, &v15->input->buf, InputBase, v37);
        }
      }
    }
  }

  v15->progressive = 1;
  return v15;
}

htmlDocPtr htmlSAXParseDoc(const xmlChar *cur, const char *encoding, htmlSAXHandlerPtr sax, void *userData)
{
  xmlInitParser();
  if (!cur)
  {
    return 0;
  }

  DocParserCtxt = htmlCreateDocParserCtxt(cur, encoding);
  if (!DocParserCtxt)
  {
    return 0;
  }

  v9 = DocParserCtxt;
  if (sax)
  {
    v10 = DocParserCtxt->sax;
    if (v9->sax)
    {
      free(v10);
    }

    v9->sax = sax;
    v9->userData = userData;
    htmlParseDocument(v9);
    myDoc = v9->myDoc;
    v9->sax = 0;
    v9->userData = 0;
  }

  else
  {
    htmlParseDocument(DocParserCtxt);
    myDoc = v9->myDoc;
  }

  xmlFreeParserCtxt(v9);
  return myDoc;
}

xmlParserCtxt *htmlCreateDocParserCtxt(const xmlChar *a1, const xmlChar *a2)
{
  v4 = xmlStrlen(a1);
  MemoryParserCtxt = htmlCreateMemoryParserCtxt(a1, v4);
  v6 = MemoryParserCtxt;
  if (!a2 || !MemoryParserCtxt)
  {
    return v6;
  }

  encoding = MemoryParserCtxt->input->encoding;
  if (encoding)
  {
    free(encoding);
  }

  v6->input->encoding = xmlStrdup(a2);
  v8 = xmlParseCharEncoding(a2);
  if (v8 != XML_CHAR_ENCODING_ERROR)
  {
    v9 = xmlSwitchEncoding(v6, v8);
    errNo = v6->errNo;
    if (errNo != 32)
    {
      if (v9 < 0)
      {
        goto LABEL_12;
      }

      return v6;
    }

LABEL_16:
    v13 = "Unsupported encoding %s\n";
    v14 = v6;
    v12 = 32;
LABEL_17:
    htmlParseErr(v14, v12, v13, a2, 0);
    return v6;
  }

  CharEncodingHandler = xmlFindCharEncodingHandler(a2);
  if (!CharEncodingHandler)
  {
    goto LABEL_16;
  }

  if (xmlSwitchToEncoding(v6, CharEncodingHandler) < 0)
  {
    errNo = v6->errNo;
LABEL_12:
    if (errNo)
    {
      v12 = errNo;
    }

    else
    {
      v12 = 6003;
    }

    v13 = "htmlCheckEncoding: error switching to encoding '%s'\n";
    v14 = v6;
    goto LABEL_17;
  }

  return v6;
}

htmlParserCtxtPtr htmlCreateFileParserCtxt(const char *filename, const char *encoding)
{
  if (!filename)
  {
    return 0;
  }

  v4 = htmlNewParserCtxt();
  if (!v4)
  {
    return v4;
  }

  v5 = xmlCanonicPath(filename);
  if (!v5)
  {
    if (__xmlDefaultSAXHandler()->error)
    {
      v12 = __xmlDefaultSAXHandler();
      v12->error(0, "out of memory\n");
    }

    goto LABEL_13;
  }

  v6 = v5;
  ExternalEntity = xmlLoadExternalEntity(v5, 0, v4);
  free(v6);
  if (!ExternalEntity)
  {
LABEL_13:
    xmlFreeParserCtxt(v4);
    return 0;
  }

  if (inputPush(v4, ExternalEntity) < 0)
  {
    xmlFreeInputStream(ExternalEntity);
    goto LABEL_13;
  }

  if (encoding)
  {
    v8 = strlen(encoding);
    if (v8 <= 0x3E7)
    {
      v9 = v8 + xmlStrlen("charset=");
      v10 = malloc_type_malloc(v9 + 1, 0x40DD3935uLL);
      if (v10)
      {
        v11 = v10;
        snprintf(v10, v9 + 1, "%s%s", "charset=", encoding);
        htmlCheckEncoding(v4, v11);
        free(v11);
      }
    }
  }

  return v4;
}

const xmlChar *htmlCheckEncoding(uint64_t a1, xmlChar *str)
{
  result = xmlStrcasestr(str, "charset");
  if (result)
  {
    v6 = result[7];
    result += 7;
    v5 = v6;
    v7 = (1 << v6) & 0x100002600;
    if (v6 <= 0x20 && v7 != 0)
    {
      result = xmlStrcasestr(str, "=");
      if (!result)
      {
        return result;
      }

      v5 = *result;
    }

    if (v5 == 61)
    {

      return htmlCheckEncodingDirect(a1, result + 1);
    }
  }

  return result;
}

htmlDocPtr htmlSAXParseFile(const char *filename, const char *encoding, htmlSAXHandlerPtr sax, void *userData)
{
  xmlInitParser();
  FileParserCtxt = htmlCreateFileParserCtxt(filename, encoding);
  if (!FileParserCtxt)
  {
    return 0;
  }

  v9 = FileParserCtxt;
  if (sax)
  {
    v10 = FileParserCtxt->sax;
    FileParserCtxt->sax = sax;
    FileParserCtxt->userData = userData;
    htmlParseDocument(FileParserCtxt);
    myDoc = v9->myDoc;
    v9->sax = v10;
    v9->userData = 0;
  }

  else
  {
    htmlParseDocument(FileParserCtxt);
    myDoc = v9->myDoc;
  }

  xmlFreeParserCtxt(v9);
  return myDoc;
}

int htmlHandleOmittedElem(int val)
{
  v1 = htmlOmittedDefaultValue;
  htmlOmittedDefaultValue = val;
  return v1;
}

int htmlElementAllowedHere(const htmlElemDesc *a1, const xmlChar *a2)
{
  v2 = a1;
  LODWORD(a1) = 0;
  if (v2 && a2)
  {
    subelts = v2->subelts;
    if (subelts)
    {
      a1 = *subelts;
      if (*subelts)
      {
        v5 = subelts + 1;
        while (xmlStrcmp(a1, a2))
        {
          v6 = *v5++;
          a1 = v6;
          if (!v6)
          {
            return a1;
          }
        }

        LODWORD(a1) = 1;
      }
    }

    else
    {
      LODWORD(a1) = 0;
    }
  }

  return a1;
}

htmlStatus htmlElementStatusHere(const htmlElemDesc *a1, const htmlElemDesc *a2)
{
  result = HTML_INVALID;
  if (a1 && a2)
  {
    if (htmlElementAllowedHere(a1, a2->name))
    {
      if (a2->dtd)
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

htmlStatus htmlAttrAllowed(const htmlElemDesc *a1, const xmlChar *a2, int a3)
{
  result = HTML_INVALID;
  if (a1 && a2)
  {
    attrs_req = a1->attrs_req;
    if (attrs_req && (v8 = *attrs_req) != 0)
    {
      v9 = (attrs_req + 1);
      while (xmlStrcmp(v8, a2))
      {
        v10 = *v9++;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_8;
        }
      }

      return 12;
    }

    else
    {
LABEL_8:
      attrs_opt = a1->attrs_opt;
      if (attrs_opt && (v12 = *attrs_opt) != 0)
      {
        v13 = (attrs_opt + 1);
        while (xmlStrcmp(v12, a2))
        {
          v14 = *v13++;
          v12 = v14;
          if (!v14)
          {
            goto LABEL_13;
          }
        }

        return 4;
      }

      else
      {
LABEL_13:
        if (a3 && (attrs_depr = a1->attrs_depr) != 0 && (v16 = *attrs_depr) != 0)
        {
          v17 = (attrs_depr + 1);
          while (xmlStrcmp(v16, a2))
          {
            v18 = *v17++;
            v16 = v18;
            if (!v18)
            {
              return 1;
            }
          }

          return 2;
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

htmlStatus htmlNodeStatus(const htmlNodePtr a1, int a2)
{
  if (!a1)
  {
    return 1;
  }

  type = a1->type;
  if (type == XML_ATTRIBUTE_NODE)
  {
    name = a1->parent->name;
    if (name)
    {
      name = bsearch(name, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
    }

    v8 = a1->name;

    return htmlAttrAllowed(name, v8, a2);
  }

  else if (type == XML_ELEMENT_NODE)
  {
    v5 = a1->parent->name;
    if (a2)
    {
      if (v5)
      {
        v5 = bsearch(v5, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
      }

      if (htmlElementAllowedHere(v5, a1->name))
      {
        return 4;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (v5)
      {
        v9 = bsearch(v5, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
      }

      else
      {
        v9 = 0;
      }

      v10 = a1->name;
      if (v10)
      {
        v11 = bsearch(v10, &html40ElementTable, 0x5CuLL, 0x40uLL, htmlCompareTags);
      }

      else
      {
        v11 = 0;
      }

      return htmlElementStatusHere(v9, v11);
    }
  }

  else
  {
    return 0;
  }
}

void htmlCtxtReset(htmlParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return;
  }

  xmlInitParser();
  dict = ctxt->dict;
  while (1)
  {
    v3 = inputPop(ctxt);
    if (!v3)
    {
      break;
    }

    xmlFreeInputStream(v3);
  }

  ctxt->inputNr = 0;
  ctxt->input = 0;
  ctxt->spaceNr = 0;
  spaceTab = ctxt->spaceTab;
  if (spaceTab)
  {
    *spaceTab = -1;
  }

  ctxt->space = spaceTab;
  ctxt->nodeNr = 0;
  ctxt->node = 0;
  ctxt->nameNr = 0;
  ctxt->name = 0;
  ctxt->nsNr = 0;
  version = ctxt->version;
  if (version)
  {
    if (dict)
    {
      if (xmlDictOwns(dict, version))
      {
        goto LABEL_12;
      }

      version = ctxt->version;
    }

    free(version);
  }

LABEL_12:
  ctxt->version = 0;
  encoding = ctxt->encoding;
  if (!encoding)
  {
    goto LABEL_17;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, encoding))
    {
      goto LABEL_17;
    }

    encoding = ctxt->encoding;
  }

  free(encoding);
LABEL_17:
  ctxt->encoding = 0;
  directory = ctxt->directory;
  if (!directory)
  {
    goto LABEL_22;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, directory))
    {
      goto LABEL_22;
    }

    directory = ctxt->directory;
  }

  free(directory);
LABEL_22:
  ctxt->directory = 0;
  extSubURI = ctxt->extSubURI;
  if (!extSubURI)
  {
    goto LABEL_27;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, extSubURI))
    {
      goto LABEL_27;
    }

    extSubURI = ctxt->extSubURI;
  }

  free(extSubURI);
LABEL_27:
  ctxt->extSubURI = 0;
  extSubSystem = ctxt->extSubSystem;
  if (extSubSystem)
  {
    if (!dict)
    {
LABEL_31:
      free(extSubSystem);
      goto LABEL_32;
    }

    if (!xmlDictOwns(dict, extSubSystem))
    {
      extSubSystem = ctxt->extSubSystem;
      goto LABEL_31;
    }
  }

LABEL_32:
  ctxt->extSubSystem = 0;
  myDoc = ctxt->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
  }

  ctxt->myDoc = 0;
  *&ctxt->standalone = 0x1FFFFFFFFLL;
  *&ctxt->instate = 0;
  ctxt->wellFormed = 1;
  ctxt->nsWellFormed = 1;
  *&ctxt->disableSAX = 0;
  *&ctxt->hasExternalSubset = xmmword_1C79BAA30;
  ctxt->vctxt.finishDtd = -1412623820;
  ctxt->vctxt.userData = ctxt;
  ctxt->vctxt.error = xmlParserValidityError;
  ctxt->vctxt.warning = xmlParserValidityWarning;
  ctxt->record_info = 0;
  ctxt->checkIndex = 0;
  ctxt->errNo = 0;
  ctxt->depth = 0;
  ctxt->charset = 0;
  ctxt->catalogs = 0;
  xmlInitNodeInfoSeq(&ctxt->node_seq);
  attsDefault = ctxt->attsDefault;
  if (attsDefault)
  {
    xmlHashFree(attsDefault, xmlHashDefaultDeallocator);
    ctxt->attsDefault = 0;
  }

  attsSpecial = ctxt->attsSpecial;
  if (attsSpecial)
  {
    xmlHashFree(attsSpecial, 0);
    ctxt->attsSpecial = 0;
  }
}

htmlDocPtr htmlReadDoc(const xmlChar *cur, const char *URL, const char *encoding, int options)
{
  if (!cur)
  {
    return 0;
  }

  xmlInitParser();
  v8 = xmlStrlen(cur);
  MemoryParserCtxt = htmlCreateMemoryParserCtxt(cur, v8);
  if (!MemoryParserCtxt)
  {
    return 0;
  }

  return htmlDoRead(MemoryParserCtxt, URL, encoding, options, 0);
}

htmlDocPtr htmlReadFile(const char *URL, const char *encoding, int options)
{
  xmlInitParser();
  result = htmlCreateFileParserCtxt(URL, encoding);
  if (result)
  {

    return htmlDoRead(result, 0, 0, options, 0);
  }

  return result;
}