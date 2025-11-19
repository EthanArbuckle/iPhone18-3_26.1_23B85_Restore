uint64_t xmlXIncludeMergeEntity(uint64_t result, uint64_t a2)
{
  if (!result || !a2)
  {
    return result;
  }

  v3 = *a2;
  v2 = *(a2 + 8);
  if (!v2 || v3 == 0)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 92);
  if ((v6 - 4) < 3)
  {
    return result;
  }

  v7 = xmlAddDocEntity(v3, *(result + 16), v6, *(result + 96), *(result + 104), *(result + 80));
  if (v7)
  {
    v8 = v7;
    result = *(v5 + 120);
    if (result)
    {
      result = xmlStrdup(result);
      v8->URI = result;
    }

    return result;
  }

  result = xmlGetDocEntity(v3, *(v5 + 16));
  if (!result)
  {
    return result;
  }

  v9 = *(v5 + 92);
  if (v9 == *(result + 92))
  {
    v10 = *(v5 + 104);
    if (v10 && (v11 = *(result + 104)) != 0 || (v10 = *(v5 + 96)) != 0 && (v11 = *(result + 96)) != 0 || (v10 = *(v5 + 80)) != 0 && (v11 = *(result + 80)) != 0)
    {
      result = xmlStrEqual(v10, v11);
      if (result)
      {
        return result;
      }
    }

    v9 = *(v5 + 92);
  }

  if (v9 > 6 || ((1 << v9) & 0x76) == 0)
  {
    v12 = *(v5 + 16);

    return xmlXIncludeErr(v2, v5, 1602, "mismatch in redefinition of entity %s\n", v12);
  }

  return result;
}

xmlNodePtr xmlXIncludeCopyNode(xmlDocPtr doc, uint64_t a2, xmlNodePtr node)
{
  type = node->type;
  if (type == XML_DTD_NODE)
  {
    return 0;
  }

  if (type == XML_DOCUMENT_NODE)
  {
    return xmlXIncludeCopyNodeList(doc, a2, node->children);
  }

  return xmlDocCopyNode(node, doc, 1);
}

uint64_t xmlXIncludeGetNthChild(uint64_t a1, int a2)
{
  if (*(a1 + 8) == 18)
  {
    return 0;
  }

  result = *(a1 + 24);
  if ((a2 & 0x80000000) == 0)
  {
    v3 = 0;
    do
    {
      if (!result)
      {
        break;
      }

      v4 = *(result + 8);
      v5 = v4 > 0xD;
      v6 = (1 << v4) & 0x2202;
      if (!v5 && v6 != 0 && ++v3 == a2)
      {
        break;
      }

      result = *(result + 48);
    }

    while (v3 <= a2);
  }

  return result;
}

xmlChar *xmlXIncludeAddTxt(uint64_t a1, xmlChar *cur, const xmlChar *a3)
{
  v6 = *(a1 + 36);
  if (!v6)
  {
    *(a1 + 36) = 4;
    v8 = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
    *(a1 + 40) = v8;
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = malloc_type_malloc(8 * *(a1 + 36), 0x10040436913F5uLL);
    *(a1 + 48) = v9;
    if (!v9)
    {
      goto LABEL_16;
    }

    v6 = *(a1 + 36);
  }

  if (*(a1 + 32) < v6)
  {
LABEL_15:
    *(*(a1 + 40) + 8 * *(a1 + 32)) = xmlStrdup(cur);
    result = xmlStrdup(a3);
    v14 = *(a1 + 32);
    *(*(a1 + 48) + 8 * v14) = result;
    *(a1 + 32) = v14 + 1;
    return result;
  }

  if (v6 < 1)
  {
    v7 = 8;
  }

  else
  {
    if (v6 > 0x3B9AC9FF)
    {
      goto LABEL_16;
    }

    if (1000000000 - ((v6 + 1) >> 1) >= v6)
    {
      v7 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v7 = 1000000000;
    }
  }

  v10 = malloc_type_realloc(*(a1 + 40), 8 * v7, 0x10040436913F5uLL);
  if (v10)
  {
    v11 = v10;
    v12 = malloc_type_realloc(*(a1 + 48), 8 * v7, 0x10040436913F5uLL);
    if (v12)
    {
      *(a1 + 36) = v7;
      *(a1 + 40) = v11;
      *(a1 + 48) = v12;
      goto LABEL_15;
    }
  }

LABEL_16:

  return xmlXIncludeErrMemory(a1, 0, "processing text");
}

xlinkType xlinkIsLink(xmlDocPtr doc, xmlNodePtr node)
{
  v2 = node;
  v25 = *MEMORY[0x1E69E9840];
  if (node)
  {
    v3 = doc;
    if (!doc && (v3 = node->doc) == 0 || v3->type != XML_HTML_DOCUMENT_NODE)
    {
      ns = node->ns;
      if (ns)
      {
        xmlStrEqual(ns->href, "http://www.w3.org/1999/xhtml/");
      }
    }

    NsProp = xmlGetNsProp(v2, "type", "http://www.w3.org/1999/xlink/namespace/");
    if (!NsProp)
    {
      LODWORD(v2) = 0;
      goto LABEL_12;
    }

    v6 = NsProp;
    if (xmlStrEqual(NsProp, "simple"))
    {
      LODWORD(v2) = 1;
LABEL_10:
      free(v6);
      goto LABEL_12;
    }

    if (!xmlStrEqual(v6, "extended"))
    {
      LODWORD(v2) = 0;
      goto LABEL_10;
    }

    v9 = xmlGetNsProp(v2, "role", "http://www.w3.org/1999/xlink/namespace/");
    if (!v9)
    {
      LODWORD(v2) = 2;
      goto LABEL_10;
    }

    v10 = v9;
    v11 = xmlSearchNs(v3, v2, "http://www.w3.org/1999/xlink/namespace/");
    if (v11)
    {
      v23 = 0u;
      memset(v24, 0, 23);
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      *__str = 0u;
      v14 = 0u;
      snprintf(__str, 0xC8uLL, "%s:external-linkset", v11->prefix);
      v24[23] = 0;
      v12 = __str;
    }

    else
    {
      v12 = "xlink:external-linkset";
    }

    xmlStrEqual(v10, v12);
    free(v6);
    free(v10);
    LODWORD(v2) = 2;
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

_DWORD *__xmlIOErr(unsigned int a1, int a2, const xmlChar *a3)
{
  if (!a2)
  {
    v5 = *__error();
    if (!v5)
    {
      a2 = 0;
      goto LABEL_100;
    }

    if (*__error() == 13)
    {
      a2 = 1501;
    }

    else if (*__error() == 35)
    {
      a2 = 1502;
    }

    else if (*__error() == 9)
    {
      a2 = 1503;
    }

    else if (*__error() == 94)
    {
      a2 = 1504;
    }

    else if (*__error() == 16)
    {
      a2 = 1505;
    }

    else if (*__error() == 89)
    {
      a2 = 1506;
    }

    else if (*__error() == 10)
    {
      a2 = 1507;
    }

    else if (*__error() == 11)
    {
      a2 = 1508;
    }

    else if (*__error() == 33)
    {
      a2 = 1509;
    }

    else if (*__error() == 17)
    {
      a2 = 1510;
    }

    else if (*__error() == 14)
    {
      a2 = 1511;
    }

    else if (*__error() == 27)
    {
      a2 = 1512;
    }

    else
    {
      if (*__error() != 36)
      {
        if (*__error() == 4)
        {
          a2 = 1514;
          goto LABEL_99;
        }

        if (*__error() == 22)
        {
          a2 = 1515;
          goto LABEL_99;
        }

        if (*__error() == 5)
        {
          a2 = 1516;
          goto LABEL_99;
        }

        if (*__error() == 21)
        {
          a2 = 1517;
          goto LABEL_99;
        }

        if (*__error() == 24)
        {
          a2 = 1518;
          goto LABEL_99;
        }

        if (*__error() == 31)
        {
          a2 = 1519;
          goto LABEL_99;
        }

        if (*__error() == 40)
        {
          a2 = 1520;
          goto LABEL_99;
        }

        if (*__error() == 63)
        {
          a2 = 1521;
          goto LABEL_99;
        }

        if (*__error() == 23)
        {
          a2 = 1522;
          goto LABEL_99;
        }

        if (*__error() == 19)
        {
          a2 = 1523;
          goto LABEL_99;
        }

        if (*__error() == 2)
        {
          a2 = 1524;
          goto LABEL_99;
        }

        if (*__error() == 8)
        {
          a2 = 1525;
          goto LABEL_99;
        }

        if (*__error() == 77)
        {
          a2 = 1526;
          goto LABEL_99;
        }

        if (*__error() == 12)
        {
          a2 = 1527;
          goto LABEL_99;
        }

        if (*__error() == 28)
        {
          a2 = 1528;
          goto LABEL_99;
        }

        if (*__error() == 78)
        {
          a2 = 1529;
          goto LABEL_99;
        }

        if (*__error() == 20)
        {
          a2 = 1530;
          goto LABEL_99;
        }

        if (*__error() == 66)
        {
          a2 = 1531;
          goto LABEL_99;
        }

        if (*__error() == 45)
        {
          a2 = 1532;
          goto LABEL_99;
        }

        if (*__error() == 25)
        {
          a2 = 1533;
          goto LABEL_99;
        }

        if (*__error() == 6)
        {
          a2 = 1534;
          goto LABEL_99;
        }

        if (*__error() == 1)
        {
          a2 = 1535;
          goto LABEL_99;
        }

        if (*__error() == 32)
        {
          a2 = 1536;
          goto LABEL_99;
        }

        if (*__error() == 34)
        {
          a2 = 1537;
          goto LABEL_99;
        }

        if (*__error() == 30)
        {
          a2 = 1538;
          goto LABEL_99;
        }

        if (*__error() == 29)
        {
          a2 = 1539;
          goto LABEL_99;
        }

        if (*__error() == 3)
        {
          a2 = 1540;
          goto LABEL_99;
        }

        if (*__error() == 60)
        {
          goto LABEL_90;
        }

        if (*__error() == 18)
        {
          a2 = 1542;
          goto LABEL_99;
        }

        if (*__error() == 38)
        {
          a2 = 1550;
          goto LABEL_99;
        }

        if (*__error() == 56)
        {
          a2 = 1551;
          goto LABEL_99;
        }

        if (*__error() == 61)
        {
          a2 = 1552;
          goto LABEL_99;
        }

        if (*__error() == 60)
        {
LABEL_90:
          a2 = 1541;
          goto LABEL_99;
        }

        if (*__error() == 51)
        {
          a2 = 1553;
          goto LABEL_99;
        }

        if (*__error() == 48)
        {
          a2 = 1554;
          goto LABEL_99;
        }

        if (*__error() != 36)
        {
          if (*__error() == 37)
          {
            a2 = 1555;
          }

          else if (*__error() == 47)
          {
            a2 = 1556;
          }

          else
          {
            a2 = 1500;
          }

          goto LABEL_99;
        }
      }

      a2 = 1513;
    }

LABEL_99:
    v5 = a2 - 1500;
    goto LABEL_100;
  }

  v5 = a2 - 1500;
  if ((a2 - 1500) > 0x38)
  {
    v5 = 0;
  }

  if (a2 < 1500)
  {
    v5 = 0;
  }

LABEL_100:
  v6 = IOerr[v5];

  return __xmlSimpleError(a1, a2, 0, v6, a3);
}

_DWORD *__xmlLoaderErr(_DWORD *result, const char *a2, const xmlChar *a3)
{
  v3 = result;
  if (!result)
  {
    v7 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  if (!result[83] || result[68] != -1)
  {
    v4 = *result;
    if (*result)
    {
      v5 = 176;
      if (result[39])
      {
        v6 = 2;
      }

      else
      {
        v5 = 168;
        v6 = 1;
      }

      v7 = *(v4 + v5);
      if (*(v4 + 216) == -554844497)
      {
        result = *(v4 + 248);
      }

      else
      {
        result = 0;
      }

      v4 = v3[1];
      return __xmlRaiseError(result, v7, v4, v3, 0, 8u, 1549, v6, 0, 0, a3, 0, 0, 0, 0, a2, a3);
    }

    result = 0;
    v7 = 0;
LABEL_12:
    v6 = 2;
    return __xmlRaiseError(result, v7, v4, v3, 0, 8u, 1549, v6, 0, 0, a3, 0, 0, 0, 0, a2, a3);
  }

  return result;
}

void xmlCleanupInputCallbacks(void)
{
  if (xmlInputCallbackInitialized == 1)
  {
    if (xmlInputCallbackNr >= 1)
    {
      bzero(xmlInputCallbackTable, 32 * xmlInputCallbackNr);
    }

    xmlInputCallbackNr = 0;
    xmlInputCallbackInitialized = 0;
  }
}

int xmlPopInputCallbacks(void)
{
  if (xmlInputCallbackInitialized == 1 && (v0 = (xmlInputCallbackNr - 1), xmlInputCallbackNr >= 1))
  {
    --xmlInputCallbackNr;
    v1 = (&xmlInputCallbackTable + 32 * v0);
    *v1 = 0u;
    v1[1] = 0u;
  }

  else
  {
    LODWORD(v0) = -1;
  }

  return v0;
}

void xmlCleanupOutputCallbacks(void)
{
  if (xmlOutputCallbackInitialized == 1)
  {
    if (xmlOutputCallbackNr >= 1)
    {
      bzero(xmlOutputCallbackTable, 32 * xmlOutputCallbackNr);
    }

    xmlOutputCallbackNr = 0;
    xmlOutputCallbackInitialized = 0;
  }
}

int xmlPopOutputCallbacks(void)
{
  if (xmlOutputCallbackInitialized == 1 && (v0 = (xmlOutputCallbackNr - 1), xmlOutputCallbackNr >= 1))
  {
    --xmlOutputCallbackNr;
    v1 = (&xmlOutputCallbackTable + 32 * v0);
    *v1 = 0u;
    v1[1] = 0u;
  }

  else
  {
    LODWORD(v0) = -1;
  }

  return v0;
}

int xmlCheckFilename(const char *path)
{
  if (path)
  {
    memset(&v2, 0, sizeof(v2));
    if (stat(path, &v2) == -1)
    {
      LODWORD(path) = 0;
    }

    else if ((v2.st_mode & 0xF000) == 0x4000)
    {
      LODWORD(path) = 2;
    }

    else
    {
      LODWORD(path) = 1;
    }
  }

  return path;
}

void *__cdecl xmlFileOpen(const char *filename)
{
  result = xmlFileOpen_real(filename);
  if (!result)
  {
    result = xmlURIUnescapeString(filename, 0, 0);
    if (result)
    {
      v3 = result;
      v4 = xmlFileOpen_real(result);
      free(v3);
      return v4;
    }
  }

  return result;
}

FILE *xmlFileOpen_real(FILE *str1)
{
  if (str1)
  {
    v1 = str1;
    if (LOBYTE(str1->_p) == 45 && !BYTE1(str1->_p))
    {
      return *MEMORY[0x1E69E9850];
    }

    else
    {
      if (xmlStrncasecmp(str1, "file://localhost/", 17))
      {
        if (xmlStrncasecmp(v1, "file:///", 8))
        {
          if (xmlStrncasecmp(v1, "file:/", 6))
          {
            v2 = 0;
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 7;
        }
      }

      else
      {
        v2 = 16;
      }

      memset(&v3, 0, sizeof(v3));
      if (stat(&v1[v2], &v3) != -1)
      {
        str1 = fopen(&v1[v2], "r");
        if (str1)
        {
          return str1;
        }

        __xmlIOErr(8u, 0, &v1[v2]);
      }

      return 0;
    }
  }

  return str1;
}

int xmlFileRead(void *context, char *buffer, int len)
{
  v3 = -1;
  if (context)
  {
    if (buffer)
    {
      v3 = fread(buffer, 1uLL, len, context);
      if (v3 < 0)
      {
        __xmlIOErr(8u, 0, "fread()");
      }
    }
  }

  return v3;
}

int xmlFileClose(void *context)
{
  if (!context)
  {
    return -1;
  }

  if (*MEMORY[0x1E69E9858] != context && *MEMORY[0x1E69E9848] != context)
  {
    if (*MEMORY[0x1E69E9850] == context || fclose(context) != -1)
    {
      return 0;
    }

    v2 = -1;
    v3 = "fclose()";
LABEL_14:
    __xmlIOErr(8u, 0, v3);
    return v2;
  }

  v2 = 0;
  if (fflush(context) < 0)
  {
    v3 = "fflush()";
    goto LABEL_14;
  }

  return v2;
}

void *__cdecl xmlIOHTTPOpenW(const char *post_uri, int compression)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!post_uri)
  {
    goto LABEL_18;
  }

  v4 = malloc_type_malloc(0x18uLL, 0x1090040D449AA06uLL);
  v5 = v4;
  if (!v4)
  {
    __xmlSimpleError(8u, 2, 0, 0, "creating HTTP output context");
    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  v6 = xmlStrdup(post_uri);
  *(v5 + 1) = v6;
  if (!v6)
  {
    __xmlSimpleError(8u, 2, 0, 0, "copying URI");
LABEL_17:
    xmlFreeHTTPWriteCtxt(v5);
LABEL_18:
    v5 = 0;
    goto LABEL_19;
  }

  if ((compression - 1) > 8)
  {
    v8 = xmlAllocOutputBufferInternal(0);
    goto LABEL_16;
  }

  *v5 = compression;
  v7 = malloc_type_malloc(0x88uLL, 0x10B0040AD6264E5uLL);
  v8 = v7;
  if (!v7)
  {
    __xmlSimpleError(8u, 2, 0, 0, "creating buffer context");
    goto LABEL_16;
  }

  *(v7 + 120) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 8) = 0u;
  *v7 = 0x8000;
  v9 = malloc_type_malloc(0x8000uLL, 0x156D7C26uLL);
  v8[2] = v9;
  if (!v9)
  {
    xmlFreeZMemBuff(v8);
    v13 = "creating buffer";
    v14 = 2;
    v12 = 0;
    goto LABEL_14;
  }

  v10 = deflateInit2_((v8 + 3), compression, 8, -15, 8, 0, "1.2.12", 112);
  if (v10)
  {
    v11 = v10;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
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
    *buf = 0u;
    xmlFreeZMemBuff(v8);
    xmlStrPrintf(buf, 500, "xmlCreateZMemBuff:  %s %d\n", "Error initializing compression context.  ZLIB error:", v11);
    v12 = "write error";
    v13 = buf;
    v14 = 1546;
LABEL_14:
    __xmlSimpleError(8u, v14, 0, v12, v13);
    v8 = 0;
    goto LABEL_16;
  }

  v8[1] = crc32(0, 0, 0);
  v15 = snprintf(v8[2], *v8, "%c%c%c%c%c%c%c%c%c%c", 31, 139, 8, 0, 0, 0, 0, 0, 0, 3);
  v8[6] = v8[2] + v15;
  *(v8 + 14) = *v8 - v15;
LABEL_16:
  *(v5 + 2) = v8;
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

void xmlFreeHTTPWriteCtxt(int *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    if (*a1 < 1)
    {
      xmlOutputBufferClose(v3);
    }

    else
    {
      xmlFreeZMemBuff(v3);
    }
  }

  free(a1);
}

int xmlIOHTTPRead(void *context, char *buffer, int len)
{
  if (!buffer || len < 0)
  {
    return -1;
  }

  else
  {
    return xmlNanoHTTPRead(context, buffer, len);
  }
}

int xmlIOFTPRead(void *context, char *buffer, int len)
{
  if (!buffer || len < 0)
  {
    return -1;
  }

  else
  {
    return xmlNanoFTPRead(context, buffer, len);
  }
}

int xmlRegisterInputCallbacks(xmlInputMatchCallback matchFunc, xmlInputOpenCallback openFunc, xmlInputReadCallback readFunc, xmlInputCloseCallback closeFunc)
{
  result = xmlInputCallbackNr;
  if (xmlInputCallbackNr > 14)
  {
    return -1;
  }

  v6 = (&xmlInputCallbackTable + 32 * xmlInputCallbackNr);
  *v6 = matchFunc;
  v6[1] = openFunc;
  v6[2] = readFunc;
  v6[3] = closeFunc;
  xmlInputCallbackInitialized = 1;
  xmlInputCallbackNr = result + 1;
  return result;
}

int xmlRegisterOutputCallbacks(xmlOutputMatchCallback matchFunc, xmlOutputOpenCallback openFunc, xmlOutputWriteCallback writeFunc, xmlOutputCloseCallback closeFunc)
{
  result = xmlOutputCallbackNr;
  if (xmlOutputCallbackNr > 14)
  {
    return -1;
  }

  v6 = (&xmlOutputCallbackTable + 32 * xmlOutputCallbackNr);
  *v6 = matchFunc;
  v6[1] = openFunc;
  v6[2] = writeFunc;
  v6[3] = closeFunc;
  xmlOutputCallbackInitialized = 1;
  xmlOutputCallbackNr = result + 1;
  return result;
}

gzFile xmlGzfileOpen(xmlChar *a1)
{
  v2 = xmlGzfileOpen_real(a1);
  if (!v2)
  {
    v3 = xmlURIUnescapeString(a1, 0, 0);
    v4 = v3;
    if (v3)
    {
      v2 = xmlGzfileOpen_real(v3);
    }

    else
    {
      v2 = 0;
    }

    free(v4);
  }

  return v2;
}

uint64_t xmlGzfileRead(gzFile_s *a1, void *a2, unsigned int a3)
{
  v3 = gzread(a1, a2, a3);
  if ((v3 & 0x80000000) != 0)
  {
    __xmlIOErr(8u, 0, "gzread()");
  }

  return v3;
}

uint64_t xmlGzfileClose(gzFile_s *a1)
{
  if (!gzclose(a1))
  {
    return 0;
  }

  __xmlIOErr(8u, 0, "gzclose()");
  return 0xFFFFFFFFLL;
}

FILE *xmlFileOpenW(xmlChar *str1)
{
  if (*str1 == 45 && !str1[1])
  {
    return *MEMORY[0x1E69E9858];
  }

  if (xmlStrncasecmp(str1, "file://localhost/", 17))
  {
    if (xmlStrncasecmp(str1, "file:///", 8))
    {
      v2 = 0;
    }

    else
    {
      v2 = 7;
    }
  }

  else
  {
    v2 = 16;
  }

  result = fopen(&str1[v2], "wb");
  if (!result)
  {
    __xmlIOErr(8u, 0, &str1[v2]);
    return 0;
  }

  return result;
}

uint64_t xmlFileWrite(FILE *__stream, void *__ptr, int a3)
{
  result = 0xFFFFFFFFLL;
  if (__stream && __ptr)
  {
    v6 = fwrite(__ptr, a3, 1uLL, __stream);
    if (v6 || !ferror(__stream))
    {
      return (v6 * a3);
    }

    else
    {
      __xmlIOErr(8u, 0, "fwrite()");
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t xmlIOHTTPWrite(uint64_t a1, const Bytef *buf, uint64_t len)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = 0xFFFFFFFFLL;
    if (buf)
    {
      v6 = *(a1 + 16);
      if (v6)
      {
        v7 = len;
        if (len < 1)
        {
LABEL_19:
          result = v7;
          goto LABEL_20;
        }

        if (*a1 >= 1)
        {
          *(v6 + 24) = buf;
          *(v6 + 32) = len;
          v8 = len;
          while (*(v6 + 56) > v8 / 5 || xmlZMemBuffExtend(v6, *v6) != -1)
          {
            v9 = deflate((v6 + 24), 0);
            if (v9)
            {
              v42 = 0;
              v40 = 0u;
              v41 = 0u;
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v22 = 0u;
              v23 = 0u;
              v20 = 0u;
              v21 = 0u;
              v18 = 0u;
              v19 = 0u;
              v16 = 0u;
              v17 = 0u;
              v14 = 0u;
              v15 = 0u;
              v12 = 0u;
              v13 = 0u;
              *bufa = 0u;
              xmlStrPrintf(bufa, 500, "xmlZMemBuffAppend:  %s %d %s - %d", "Compression error while appending", v7, "bytes to buffer.  ZLIB error", v9);
              __xmlSimpleError(8u, 1546, 0, "write error", bufa);
              break;
            }

            v8 = *(v6 + 32);
            if (!v8)
            {
              *(v6 + 8) = crc32(*(v6 + 8), buf, v7);
              goto LABEL_14;
            }
          }

          v7 = 0xFFFFFFFFLL;
          goto LABEL_18;
        }

        v7 = xmlOutputBufferWrite(*(a1 + 16), len, buf);
LABEL_14:
        result = v7;
        if ((v7 & 0x80000000) != 0)
        {
LABEL_18:
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          *bufa = 0u;
          xmlStrPrintf(bufa, 500, "xmlIOHTTPWrite:  %s\n%s '%s'.\n", "Error appending to internal buffer.", "Error sending document to URI", *(a1 + 8));
          __xmlSimpleError(8u, 1546, 0, "write error", bufa);
          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_20:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlRegisterHTTPPostCallbacks(void)
{
  if ((xmlOutputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultOutputCallbacks();
  }

  v0 = xmlOutputCallbackNr;
  if (xmlOutputCallbackNr <= 14)
  {
    v1 = &xmlOutputCallbackTable[2 * xmlOutputCallbackNr];
    *v1 = xmlIOHTTPMatch;
    v1[1] = xmlIOHTTPDfltOpenW;
    v1[2] = xmlIOHTTPWrite;
    v1[3] = xmlIOHTTPClosePost;
    xmlOutputCallbackInitialized = 1;
    xmlOutputCallbackNr = v0 + 1;
  }
}

xmlOutputBufferPtr xmlAllocOutputBuffer(xmlCharEncodingHandlerPtr encoder)
{
  v2 = malloc_type_malloc(0x38uLL, 0x10A0040906386E4uLL);
  if (v2)
  {
    v3 = v2;
    v2[6] = 0;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    v4 = xmlBufCreate();
    v3[4] = v4;
    if (v4)
    {
      if (xmlBufGetAllocationScheme(v4) == 1)
      {
        xmlBufSetAllocationScheme(v3[4], 0);
      }

      v3[3] = encoder;
      if (!encoder)
      {
        v3[5] = 0;
        goto LABEL_10;
      }

      Size = xmlBufCreateSize(4000);
      v3[5] = Size;
      if (Size)
      {
        xmlCharEncOutput(v3, 1);
LABEL_10:
        *(v3 + 12) = 0;
        v3[1] = 0;
        v3[2] = 0;
        *v3 = 0;
        return v3;
      }

      xmlBufFree(v3[4]);
    }

    free(v3);
  }

  else
  {
    __xmlSimpleError(8u, 2, 0, 0, "creating output buffer");
  }

  return 0;
}

xmlParserInputBufferPtr __xmlParserInputBufferCreateFilename(const char *URI, xmlCharEncoding enc)
{
  if ((xmlInputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultInputCallbacks();
  }

  if (!URI || xmlInputCallbackNr < 1)
  {
    return 0;
  }

  v4 = xmlInputCallbackNr + 1;
  for (i = &xmlInputCallbackTable[4 * xmlInputCallbackNr - 4]; ; i -= 4)
  {
    if (*i)
    {
      if ((*i)(URI))
      {
        v6 = i[1](URI);
        if (v6)
        {
          break;
        }
      }
    }

    if (--v4 <= 1)
    {
      return 0;
    }
  }

  v9 = v6;
  v10 = xmlAllocParserInputBuffer(enc);
  v7 = v10;
  v11 = v4 - 2;
  if (v10)
  {
    v10->context = v9;
    v12 = &xmlInputCallbackTable[4 * v11];
    *&v10->readcallback = *(v12 + 1);
    if (v12[1] == xmlGzfileOpen && (*URI != 45 || URI[1]))
    {
      v10->compressed = gzdirect(v9) == 0;
    }
  }

  else
  {
    xmlInputCallbackTable[4 * v11 + 3](v9);
  }

  return v7;
}

xmlOutputBufferPtr __xmlOutputBufferCreateFilename(const char *URI, xmlCharEncodingHandlerPtr encoder, int compression)
{
  if ((xmlOutputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultOutputCallbacks();
  }

  if (!URI)
  {
    return 0;
  }

  v6 = xmlParseURI(URI);
  if (!v6)
  {
    v9 = 1;
    goto LABEL_29;
  }

  v7 = v6;
  scheme = v6->scheme;
  if (scheme)
  {
    v9 = xmlStrEqual(scheme, "file") != 0;
    if (v7->scheme && !xmlStrEqual(v7->scheme, "file"))
    {
      xmlFreeURI(v7);
LABEL_29:
      if ((compression - 1) <= 8 && v9)
      {
        v20 = xmlGzfileOpenW(URI, compression);
        if (v20)
        {
          v21 = v20;
          v22 = xmlAllocOutputBufferInternal(encoder);
          v15 = v22;
          if (v22)
          {
            v22->context = v21;
            v22->writecallback = xmlGzfileWrite;
            v22->closecallback = xmlGzfileClose;
          }

          else
          {
            xmlGzfileClose(v21);
          }

          return v15;
        }
      }

      if (xmlOutputCallbackNr >= 1)
      {
        v23 = xmlOutputCallbackNr + 1;
        for (i = &xmlOutputCallbackTable[2 * xmlOutputCallbackNr - 2]; ; i -= 4)
        {
          if (*i && (*i)(URI))
          {
            v25 = *i == xmlIOHTTPMatch ? xmlIOHTTPOpenW(URI, compression) : i[1](URI);
            v19 = v25;
            if (v25)
            {
              break;
            }
          }

          if (--v23 <= 1)
          {
            return 0;
          }
        }

        v27 = v23 - 2;
LABEL_48:
        v28 = xmlAllocOutputBufferInternal(encoder);
        v15 = v28;
        if (v28)
        {
          *v28 = v19;
          *(v28 + 1) = xmlOutputCallbackTable[2 * v27 + 1];
        }

        return v15;
      }

      return 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = xmlURIUnescapeString(URI, 0, 0);
  xmlFreeURI(v7);
  if (!v10)
  {
    goto LABEL_29;
  }

  v11 = !v9;
  if ((compression - 1) > 8)
  {
    v11 = 1;
  }

  if ((v11 & 1) != 0 || (v12 = xmlGzfileOpenW(v10, compression)) == 0)
  {
    if (xmlOutputCallbackNr >= 1)
    {
      v16 = xmlOutputCallbackNr + 1;
      v17 = &xmlOutputCallbackTable[2 * xmlOutputCallbackNr - 2];
      while (1)
      {
        if (*v17 && (*v17)(v10))
        {
          v18 = *v17 == xmlIOHTTPMatch ? xmlIOHTTPOpenW(v10, compression) : v17[1](v10);
          v19 = v18;
          if (v18)
          {
            break;
          }
        }

        --v16;
        v17 -= 4;
        if (v16 <= 1)
        {
          goto LABEL_28;
        }
      }

      free(v10);
      v27 = v16 - 2;
      goto LABEL_48;
    }

LABEL_28:
    free(v10);
    goto LABEL_29;
  }

  v13 = v12;
  v14 = xmlAllocOutputBufferInternal(encoder);
  v15 = v14;
  if (v14)
  {
    v14->context = v13;
    v14->writecallback = xmlGzfileWrite;
    v14->closecallback = xmlGzfileClose;
  }

  free(v10);
  return v15;
}

gzFile xmlGzfileOpenW(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *&__str[7] = 0;
  *__str = 0;
  snprintf(__str, 0xFuLL, "wb%d", a2);
  if (*a1 == 45 && !*(a1 + 1))
  {
    v7 = fileno(*MEMORY[0x1E69E9858]);
    v8 = dup(v7);
    result = gzdopen(v8, "rb");
    if ((v8 & 0x80000000) == 0 && !result)
    {
      close(v8);
      result = 0;
    }
  }

  else
  {
    if (xmlStrncasecmp(a1, "file://localhost/", 17))
    {
      v3 = xmlStrncasecmp(a1, "file:///", 8);
      v4 = 7;
      if (v3)
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 16;
    }

    result = gzopen((a1 + v4), __str);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlGzfileWrite(gzFile_s *a1, const void *a2, unsigned int a3)
{
  v3 = gzwrite(a1, a2, a3);
  if ((v3 & 0x80000000) != 0)
  {
    __xmlIOErr(8u, 0, "gzwrite()");
  }

  return v3;
}

xmlParserInputBufferPtr xmlParserInputBufferCreateFile(FILE *file, xmlCharEncoding enc)
{
  if ((xmlInputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultInputCallbacks();
  }

  if (!file)
  {
    return 0;
  }

  result = xmlAllocParserInputBuffer(enc);
  if (result)
  {
    result->context = file;
    result->readcallback = xmlFileRead;
    result->closecallback = xmlFileFlush;
  }

  return result;
}

uint64_t xmlFileFlush(FILE *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (fflush(a1) != -1)
  {
    return 0;
  }

  __xmlIOErr(8u, 0, "fflush()");
  return 0xFFFFFFFFLL;
}

xmlOutputBufferPtr xmlOutputBufferCreateFile(FILE *file, xmlCharEncodingHandlerPtr encoder)
{
  if ((xmlOutputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultOutputCallbacks();
  }

  if (!file)
  {
    return 0;
  }

  result = xmlAllocOutputBufferInternal(encoder);
  if (result)
  {
    result->context = file;
    result->writecallback = xmlFileWrite;
    result->closecallback = xmlFileFlush;
  }

  return result;
}

xmlOutputBufferPtr xmlOutputBufferCreateBuffer(xmlOutputBufferPtr buffer, xmlCharEncodingHandlerPtr encoder)
{
  if (buffer)
  {
    v2 = buffer;
    buffer = xmlAllocOutputBufferInternal(encoder);
    if (buffer)
    {
      buffer->context = v2;
      buffer->writecallback = xmlBufferWrite;
      buffer->closecallback = 0;
    }
  }

  return buffer;
}

uint64_t xmlBufferWrite(xmlBuffer *a1, const xmlChar *a2, unsigned int a3)
{
  if (xmlBufferAdd(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a3;
  }
}

const xmlChar *__cdecl xmlOutputBufferGetContent(xmlOutputBufferPtr out)
{
  if (out && (buffer = out->buffer) != 0)
  {
    return xmlBufContent(buffer);
  }

  else
  {
    return 0;
  }
}

size_t xmlOutputBufferGetSize(xmlOutputBufferPtr out)
{
  if (out && (buffer = out->buffer) != 0)
  {
    return xmlBufUse(buffer);
  }

  else
  {
    return 0;
  }
}

xmlParserInputBufferPtr xmlParserInputBufferCreateFd(int fd, xmlCharEncoding enc)
{
  if (fd < 0)
  {
    return 0;
  }

  result = xmlAllocParserInputBuffer(enc);
  if (result)
  {
    result->context = fd;
    result->readcallback = xmlFdRead;
    result->closecallback = xmlFdClose;
  }

  return result;
}

ssize_t xmlFdRead(int a1, void *a2, int a3)
{
  v3 = read(a1, a2, a3);
  if ((v3 & 0x80000000) != 0)
  {
    __xmlIOErr(8u, 0, "read()");
  }

  return v3;
}

uint64_t xmlFdClose(int a1)
{
  v1 = close(a1);
  if ((v1 & 0x80000000) != 0)
  {
    __xmlIOErr(8u, 0, "close()");
  }

  return v1;
}

xmlOutputBufferPtr xmlOutputBufferCreateFd(int fd, xmlCharEncodingHandlerPtr encoder)
{
  if (fd < 0)
  {
    return 0;
  }

  result = xmlAllocOutputBufferInternal(encoder);
  if (result)
  {
    result->context = fd;
    result->writecallback = xmlFdWrite;
    result->closecallback = 0;
  }

  return result;
}

ssize_t xmlFdWrite(int a1, const void *a2, size_t __nbyte)
{
  if (__nbyte < 1)
  {
    return 0;
  }

  v3 = write(a1, a2, __nbyte);
  if ((v3 & 0x80000000) != 0)
  {
    __xmlIOErr(8u, 0, "write()");
  }

  return v3;
}

xmlParserInputBufferPtr xmlParserInputBufferCreateIO(xmlParserInputBufferPtr ioread, xmlInputCloseCallback ioclose, void *ioctx, xmlCharEncoding enc)
{
  if (ioread)
  {
    v6 = ioread;
    ioread = xmlAllocParserInputBuffer(enc);
    if (ioread)
    {
      ioread->context = ioctx;
      ioread->readcallback = v6;
      ioread->closecallback = ioclose;
    }
  }

  return ioread;
}

xmlParserInputBufferCreateFilenameFunc xmlParserInputBufferCreateFilenameDefault(xmlParserInputBufferCreateFilenameFunc func)
{
  FilenameValue = __xmlParserInputBufferCreateFilenameValue();
  if (*FilenameValue)
  {
    v3 = *FilenameValue;
  }

  else
  {
    v3 = __xmlParserInputBufferCreateFilename;
  }

  *__xmlParserInputBufferCreateFilenameValue() = func;
  return v3;
}

xmlOutputBufferCreateFilenameFunc xmlOutputBufferCreateFilenameDefault(xmlOutputBufferCreateFilenameFunc func)
{
  FilenameValue = __xmlOutputBufferCreateFilenameValue();
  if (*FilenameValue)
  {
    v3 = *FilenameValue;
  }

  else
  {
    v3 = __xmlOutputBufferCreateFilename;
  }

  *__xmlOutputBufferCreateFilenameValue() = func;
  return v3;
}

char *__cdecl xmlParserGetDirectory(const char *filename)
{
  v9 = *MEMORY[0x1E69E9840];
  if ((xmlInputCallbackInitialized & 1) == 0)
  {
    xmlRegisterDefaultInputCallbacks();
  }

  if (filename)
  {
    strncpy(&__dst, filename, 0x3FFuLL);
    v8 = 0;
    v2 = strlen(&__dst);
    v3 = &v7[v2 - 1];
    if (v2 >= 1)
    {
      while (*v3 != 47)
      {
        if (--v3 <= &__dst)
        {
          goto LABEL_7;
        }
      }

      goto LABEL_8;
    }

LABEL_7:
    if (*v3 == 47)
    {
LABEL_8:
      if (v3 == &__dst)
      {
        v3 = v7;
      }

      goto LABEL_14;
    }

    result = getcwd(&__dst, 0x400uLL);
    if (result)
    {
      v3 = &v8;
LABEL_14:
      *v3 = 0;
      result = strdup(&__dst);
    }
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

xmlParserInputPtr xmlCheckHTTPInput(xmlParserCtxtPtr ctxt, xmlParserInputPtr ret)
{
  v2 = ret;
  if (ret)
  {
    buf = ret->buf;
    if (ret->buf)
    {
      if (buf->readcallback == xmlIOHTTPRead && buf->context)
      {
        if (xmlNanoHTTPReturnCode(buf->context) < 400)
        {
          v8 = xmlNanoHTTPMimeType(v2->buf->context);
          if (xmlStrstr(v8, "/xml") || xmlStrstr(v8, "+xml"))
          {
            v9 = xmlNanoHTTPEncoding(v2->buf->context);
            if (v9)
            {
              v10 = v9;
              CharEncodingHandler = xmlFindCharEncodingHandler(v9);
              if (CharEncodingHandler)
              {
                xmlSwitchInputEncoding(ctxt, v2, CharEncodingHandler);
              }

              else
              {
                __xmlErrEncoding(ctxt, 31, "Unknown encoding %s", v10, 0);
              }

              if (!v2->encoding)
              {
                v2->encoding = xmlStrdup(v10);
              }
            }
          }

          v12 = xmlNanoHTTPRedir(v2->buf->context);
          if (v12)
          {
            v13 = v12;
            filename = v2->filename;
            if (filename)
            {
              free(filename);
            }

            directory = v2->directory;
            if (directory)
            {
              free(directory);
              v2->directory = 0;
            }

            v2->filename = xmlStrdup(v13);
          }
        }

        else
        {
          v6 = v2->filename;
          if (v6)
          {
            v7 = "failed to load HTTP resource %s\n";
          }

          else
          {
            v7 = "failed to load HTTP resource\n";
          }

          __xmlLoaderErr(ctxt, v7, v6);
          xmlFreeInputStream(v2);
          return 0;
        }
      }
    }
  }

  return v2;
}

xmlParserInputPtr xmlLoadExternalEntity(const char *URL, const char *ID, xmlParserCtxtPtr ctxt)
{
  if (URL && !xmlNoNetExists(URL))
  {
    v8 = xmlCanonicPath(URL);
    if (v8)
    {
      v9 = v8;
      v10 = xmlCurrentExternalEntityLoader(v8, ID, ctxt);
      free(v9);
      return v10;
    }

    else
    {
      __xmlSimpleError(8u, 2, 0, 0, "building canonical path\n");
      return 0;
    }
  }

  else
  {
    v6 = xmlCurrentExternalEntityLoader;

    return v6(URL, ID, ctxt);
  }
}

const xmlChar *xmlNoNetExists(const xmlChar *result)
{
  if (result)
  {
    v1 = result;
    if (xmlStrncasecmp(result, "file://localhost/", 17))
    {
      v2 = xmlStrncasecmp(v1, "file:///", 8);
      v3 = 7;
      if (v2)
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 16;
    }

    memset(&v6, 0, sizeof(v6));
    v4 = stat(&v1[v3], &v6);
    if ((v6.st_mode & 0xF000) == 0x4000)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    if (v4 == -1)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

xmlParserInputPtr xmlNoNetExternalEntityLoader(const char *URL, const char *ID, xmlParserCtxtPtr ctxt)
{
  v6 = xmlResolveResourceFromCatalog(URL, ID, ctxt);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = URL;
  }

  if (!v7 || xmlStrncasecmp(v7, "ftp://", 6) && xmlStrncasecmp(v7, "http://", 7))
  {
    v8 = xmlDefaultExternalEntityLoader(v7, ID, ctxt);
    if (v7 != URL)
    {
      free(v7);
    }
  }

  else
  {
    __xmlSimpleError(8u, 1543, 0, "Attempt to load network entity %s", v7);
    if (v7 != URL)
    {
      free(v7);
    }

    return 0;
  }

  return v8;
}

xmlChar *xmlResolveResourceFromCatalog(const xmlChar *a1, const xmlChar *a2, uint64_t a3)
{
  Defaults = xmlCatalogGetDefaults();
  if (Defaults == XML_CATA_ALLOW_NONE)
  {
    return 0;
  }

  v7 = Defaults;
  if (xmlNoNetExists(a1))
  {
    return 0;
  }

  if (a3)
  {
    if ((v7 & 0xFFFFFFFE) == 2)
    {
      v10 = *(a3 + 440);
      if (v10)
      {
        v11 = xmlCatalogLocalResolve(v10, a2, a1);
        if (v11)
        {
          v8 = v11;
          if (xmlNoNetExists(v11))
          {
            return v8;
          }

          v12 = 1;
LABEL_21:
          if (v12)
          {
            v13 = *(a3 + 440);
            if (v13)
            {
              v14 = xmlCatalogLocalResolveURI(v13, v8);
              if (v14)
              {
                goto LABEL_26;
              }
            }
          }

          goto LABEL_24;
        }
      }
    }
  }

  if ((v7 & 0xFFFFFFFD) == 1)
  {
    v8 = xmlCatalogResolve(a2, a1);
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v8 = xmlStrdup(a1);
  }

LABEL_17:
  if (!v8 || xmlNoNetExists(v8))
  {
    return v8;
  }

  if (a3)
  {
    v12 = (v7 & 0xFFFFFFFE) == 2;
    goto LABEL_21;
  }

LABEL_24:
  if ((v7 & 0xFFFFFFFD) == 1)
  {
    v14 = xmlCatalogResolveURI(v8);
    if (v14)
    {
LABEL_26:
      v15 = v14;
      free(v8);
      return v15;
    }
  }

  return v8;
}

xmlParserInputPtr xmlDefaultExternalEntityLoader(char *URL, char *ID, xmlParserCtxtPtr ctxt)
{
  if (ctxt && (options = ctxt->options, (options & 0x800) != 0))
  {
    ctxt->options = options - 2048;
    result = xmlNoNetExternalEntityLoader(URL, ID, ctxt);
    ctxt->options = options;
  }

  else
  {
    v7 = xmlResolveResourceFromCatalog(URL, ID, ctxt);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = URL;
    }

    if (v8)
    {
      v9 = xmlNewInputFromFile(ctxt, v8);
      if (v8 != URL)
      {
        free(v8);
      }
    }

    else
    {
      if (ID)
      {
        v11 = ID;
      }

      else
      {
        v11 = "NULL";
      }

      __xmlLoaderErr(ctxt, "failed to load external entity %s\n", v11);
      return 0;
    }

    return v9;
  }

  return result;
}

void xmlFreeZMemBuff(uint64_t a1)
{
  free(*(a1 + 16));
  deflateEnd((a1 + 24));

  free(a1);
}

gzFile xmlGzfileOpen_real(xmlChar *str1)
{
  if (*str1 != 45 || str1[1])
  {
    if (xmlStrncasecmp(str1, "file://localhost/", 17))
    {
      if (xmlStrncasecmp(str1, "file:///", 8))
      {
        v2 = 0;
      }

      else
      {
        v2 = 7;
      }
    }

    else
    {
      v2 = 16;
    }

    memset(&v6, 0, sizeof(v6));
    if (stat(&str1[v2], &v6) != -1)
    {
      return gzopen(&str1[v2], "rb");
    }

    return 0;
  }

  v4 = fileno(*MEMORY[0x1E69E9850]);
  v5 = dup(v4);
  result = gzdopen(v5, "rb");
  if ((v5 & 0x80000000) == 0 && !result)
  {
    close(v5);
    return 0;
  }

  return result;
}

uint64_t xmlZMemBuffExtend(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_7;
  }

  if (!a2)
  {
    result = 0;
    goto LABEL_8;
  }

  v3 = *(a1 + 48);
  v4 = *(a1 + 16);
  v5 = *a1 + a2;
  v6 = malloc_type_realloc(v4, v5, 0x8AAD418BuLL);
  if (!v6)
  {
    v41 = 0;
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
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *buf = 0u;
    xmlStrPrintf(buf, 500, "xmlZMemBuffExtend:  %s %lu bytes.\n", "Allocation failure extending output buffer to", v5);
    __xmlSimpleError(8u, 1546, 0, "write error", buf);
LABEL_7:
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  v7 = v6;
  result = 0;
  *a1 = v5;
  *(a1 + 16) = v7;
  *(a1 + 48) = &v7[v3 - v4];
  *(a1 + 56) = v5 - (v3 - v4);
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlIOHTTPCloseWrite(uint64_t a1, const char *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  contentType = "text/xml";
  v2 = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    if (*a1 < 1)
    {
      v7 = xmlBufContent(*(v5 + 32));
      v8 = xmlBufUse(*(v5 + 32));
      v9 = 0;
      if (v7)
      {
        goto LABEL_18;
      }
    }

    else if (v5)
    {
      while (1)
      {
        v6 = deflate((v5 + 24), 4);
        if (v6)
        {
          break;
        }

        if (xmlZMemBuffExtend(v5, *v5) == -1)
        {
          goto LABEL_22;
        }
      }

      if (v6 == 1)
      {
        if (*(v5 + 56) > 0xFu || xmlZMemBuffExtend(v5, 16) != -1)
        {
          v10 = *(v5 + 8);
          v11 = *(v5 + 48);
          v12 = 4;
          do
          {
            *v11 = v10;
            v10 >>= 8;
            v11 = (*(v5 + 48) + 1);
            *(v5 + 48) = v11;
            --v12;
          }

          while (v12);
          v13 = *(v5 + 40);
          v14 = 4;
          do
          {
            *v11 = v13;
            v13 >>= 8;
            v11 = (*(v5 + 48) + 1);
            *(v5 + 48) = v11;
            --v14;
          }

          while (v14);
          v7 = *(v5 + 16);
          v8 = v11 - v7;
          v9 = "Content-Encoding: gzip";
          if (v7)
          {
LABEL_18:
            v15 = xmlNanoHTTPMethod(*(a1 + 8), a2, v7, &contentType, v9, v8);
            if (v15)
            {
              v16 = v15;
              v17 = xmlNanoHTTPReturnCode(v15);
              if ((v17 - 200) >= 0x64)
              {
                v52 = 0;
                v50 = 0u;
                v51 = 0u;
                v48 = 0u;
                v49 = 0u;
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v40 = 0u;
                v41 = 0u;
                v38 = 0u;
                v39 = 0u;
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v32 = 0u;
                v33 = 0u;
                v30 = 0u;
                v31 = 0u;
                v29 = 0u;
                v27 = 0u;
                v28 = 0u;
                v25 = 0u;
                v26 = 0u;
                v23 = 0u;
                v24 = 0u;
                *buf = 0u;
                v22 = 0u;
                xmlStrPrintf(buf, 500, "xmlIOHTTPCloseWrite: HTTP '%s' of %d %s\n'%s' %s %d\n", a2, v8, "bytes to URI", *(a1 + 8), "failed.  HTTP return code:", v17);
                __xmlSimpleError(8u, 1546, 0, "write error", buf);
                v2 = 0xFFFFFFFFLL;
              }

              else
              {
                v2 = 0;
              }

              xmlNanoHTTPClose(v16);
              free(contentType);
              goto LABEL_24;
            }

LABEL_23:
            v2 = 0xFFFFFFFFLL;
LABEL_24:
            xmlFreeHTTPWriteCtxt(a1);
            goto LABEL_25;
          }
        }
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *buf = 0u;
        v22 = 0u;
        xmlStrPrintf(buf, 500, "xmlZMemBuffGetContent:  %s - %d\n", "Error flushing zlib buffers.  Error code", v6);
        __xmlSimpleError(8u, 1546, 0, "write error", buf);
      }
    }

LABEL_22:
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *buf = 0u;
    v22 = 0u;
    xmlStrPrintf(buf, 500, "xmlIOHTTPCloseWrite:  %s '%s' %s '%s'.\n", "Error retrieving content.\nUnable to", a2, "data to URI", *(a1 + 8));
    __xmlSimpleError(8u, 1546, 0, "write error", buf);
    goto LABEL_23;
  }

LABEL_25:
  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t xmlMallocBreakpoint()
{
  v0 = *__xmlGenericError();
  v1 = __xmlGenericErrorContext();
  return (v0)(*v1, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
}

void *__cdecl xmlMallocLoc(size_t size, const char *file, int line)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return malloc_type_malloc(size, 0xD5E45EC4uLL);
  }

  else
  {
    if ((xmlMemInitialized & 1) == 0)
    {
      xmlInitMemory();
    }

    if (size < 0xFFFFFFFFFFFFFFD8)
    {
      v10 = malloc_type_malloc(size + 40, 0x100004000313F17uLL);
      v9 = v10;
      if (v10)
      {
        *v10 = 0x100005AA5;
        v10[2] = size;
        v10[3] = file;
        *(v10 + 8) = line;
        xmlMutexLock(xmlMemMutex);
        v9[1] = ++block;
        debugMemSize += size;
        ++debugMemBlocks;
        if (debugMemSize > debugMaxMemSize)
        {
          debugMaxMemSize = debugMemSize;
        }

        xmlMutexUnlock(xmlMemMutex);
        if (v9[1] == xmlMemStopAtBlock)
        {
          v11 = *__xmlGenericError();
          v12 = __xmlGenericErrorContext();
          v11(*v12, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
        }

        v9 += 5;
        if (xmlMemTraceBlockAt == v9)
        {
          v13 = *__xmlGenericError();
          v14 = __xmlGenericErrorContext();
          v13(*v14, "%p : Malloc(%lu) Ok\n", xmlMemTraceBlockAt, size);
          v15 = *__xmlGenericError();
          v16 = *__xmlGenericErrorContext();
          v15(v16, "xmlMallocBreakpoint reached on block %d\n");
        }
      }

      else
      {
        v17 = *__xmlGenericError();
        v18 = *__xmlGenericErrorContext();
        v17(v18, "xmlMallocLoc : Out of free space\n");
      }
    }

    else
    {
      v7 = *__xmlGenericError();
      v8 = __xmlGenericErrorContext();
      v7(*v8, "xmlMallocLoc : Unsigned overflow\n");
      return 0;
    }

    return v9;
  }
}

void *__cdecl xmlMallocAtomicLoc(size_t size, const char *file, int line)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return malloc_type_malloc(size, 0x33355DE0uLL);
  }

  else
  {
    if ((xmlMemInitialized & 1) == 0)
    {
      xmlInitMemory();
    }

    if (size < 0xFFFFFFFFFFFFFFD8)
    {
      v10 = malloc_type_malloc(size + 40, 0x100004000313F17uLL);
      v9 = v10;
      if (v10)
      {
        *v10 = 0x400005AA5;
        v10[2] = size;
        v10[3] = file;
        *(v10 + 8) = line;
        xmlMutexLock(xmlMemMutex);
        v9[1] = ++block;
        debugMemSize += size;
        ++debugMemBlocks;
        if (debugMemSize > debugMaxMemSize)
        {
          debugMaxMemSize = debugMemSize;
        }

        xmlMutexUnlock(xmlMemMutex);
        if (v9[1] == xmlMemStopAtBlock)
        {
          v11 = *__xmlGenericError();
          v12 = __xmlGenericErrorContext();
          v11(*v12, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
        }

        v9 += 5;
        if (xmlMemTraceBlockAt == v9)
        {
          v13 = *__xmlGenericError();
          v14 = __xmlGenericErrorContext();
          v13(*v14, "%p : Malloc(%lu) Ok\n", xmlMemTraceBlockAt, size);
          v15 = *__xmlGenericError();
          v16 = *__xmlGenericErrorContext();
          v15(v16, "xmlMallocBreakpoint reached on block %d\n");
        }
      }

      else
      {
        v17 = *__xmlGenericError();
        v18 = *__xmlGenericErrorContext();
        v17(v18, "xmlMallocAtomicLoc : Out of free space\n");
      }
    }

    else
    {
      v7 = *__xmlGenericError();
      v8 = __xmlGenericErrorContext();
      v7(*v8, "xmlMallocAtomicLoc : Unsigned overflow\n");
      return 0;
    }

    return v9;
  }
}

void *__cdecl xmlMemMalloc(size_t size)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return malloc_type_malloc(size, 0x18C19621uLL);
  }

  else
  {

    return xmlMallocLoc(size, "none", 0);
  }
}

void *__cdecl xmlReallocLoc(void *ptr, size_t size, const char *file, int line)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return malloc_type_realloc(ptr, size, 0x6927661AuLL);
  }

  if (ptr)
  {
    if ((xmlMemInitialized & 1) == 0)
    {
      xmlInitMemory();
    }

    v9 = *(ptr - 4);
    if (v9 == xmlMemStopAtBlock)
    {
      v10 = *__xmlGenericError();
      v11 = __xmlGenericErrorContext();
      v10(*v11, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
    }

    if (*(ptr - 10) != 23205)
    {
      v14 = *__xmlGenericError();
      v15 = *__xmlGenericErrorContext();
      v14(v15, "Memory tag error occurs :%p \n\t bye\n");
      return 0;
    }

    *(ptr - 10) = -23206;
    xmlMutexLock(xmlMemMutex);
    debugMemSize -= *(ptr - 3);
    --debugMemBlocks;
    xmlMutexUnlock(xmlMemMutex);
    if (size >= 0xFFFFFFFFFFFFFFD8)
    {
      v12 = *__xmlGenericError();
      v13 = *__xmlGenericErrorContext();
      v12(v13, "xmlReallocLoc : Unsigned overflow\n");
      return 0;
    }

    v16 = malloc_type_realloc(ptr - 40, size + 40, 0x100004000313F17uLL);
    if (!v16)
    {
      free(ptr - 40);
      return 0;
    }

    v17 = v16;
    if (xmlMemTraceBlockAt == ptr)
    {
      v18 = *__xmlGenericError();
      v19 = __xmlGenericErrorContext();
      v18(*v19, "%p : Realloced(%lu -> %lu) Ok\n", xmlMemTraceBlockAt, v17[2], size);
      xmlMallocBreakpoint();
    }

    *v17 = 0x200005AA5;
    v17[1] = v9;
    v17[2] = size;
    v17[3] = file;
    *(v17 + 8) = line;
    xmlMutexLock(xmlMemMutex);
    v20 = debugMemSize + size;
    debugMemSize = v20;
    ++debugMemBlocks;
    if (v20 > debugMaxMemSize)
    {
      debugMaxMemSize = v20;
    }

    xmlMutexUnlock(xmlMemMutex);
    return v17 + 5;
  }

  else
  {

    return xmlMallocLoc(size, file, line);
  }
}

void *__cdecl xmlMemRealloc(void *ptr, size_t size)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return malloc_type_realloc(ptr, size, 0x7B3F235uLL);
  }

  else
  {

    return xmlReallocLoc(ptr, size, "none", 0);
  }
}

void xmlMemFree(void *ptr)
{
  if (!linkedOnOrAfter2024EReleases())
  {
    if (!ptr)
    {
      return;
    }

    if (ptr == -1)
    {
      v3 = *__xmlGenericError();
      v4 = __xmlGenericErrorContext();
      v3(*v4, "trying to free pointer from freed area\n");
    }

    else
    {
      if (xmlMemTraceBlockAt == ptr)
      {
        v5 = *__xmlGenericError();
        v6 = __xmlGenericErrorContext();
        v5(*v6, "%p : Freed()\n", xmlMemTraceBlockAt);
        v7 = *__xmlGenericError();
        v8 = __xmlGenericErrorContext();
        v7(*v8, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
      }

      if (*(ptr - 10) == 23205)
      {
        if (*(ptr - 4) == xmlMemStopAtBlock)
        {
          v9 = *__xmlGenericError();
          v10 = __xmlGenericErrorContext();
          v9(*v10, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
        }

        *(ptr - 10) = -23206;
        memset(ptr, 255, *(ptr - 3));
        xmlMutexLock(xmlMemMutex);
        debugMemSize -= *(ptr - 3);
        --debugMemBlocks;
        xmlMutexUnlock(xmlMemMutex);
        v2 = ptr - 40;
        goto LABEL_3;
      }

      v11 = *__xmlGenericError();
      v12 = __xmlGenericErrorContext();
      v11(*v12, "Memory tag error occurs :%p \n\t bye\n", ptr - 40);
    }

    v13 = *__xmlGenericError();
    v14 = __xmlGenericErrorContext();
    v13(*v14, "xmlMemFree(%p) error\n", ptr);
    v15 = *__xmlGenericError();
    v16 = __xmlGenericErrorContext();
    v15(*v16, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
    return;
  }

  v2 = ptr;
LABEL_3:

  free(v2);
}

char *__cdecl xmlMemStrdupLoc(const char *str, const char *file, int line)
{
  if (!linkedOnOrAfter2024EReleases())
  {
    v7 = strlen(str);
    v8 = v7 + 1;
    if ((xmlMemInitialized & 1) == 0)
    {
      xmlInitMemory();
    }

    if (v8 < 0xFFFFFFFFFFFFFFD8)
    {
      v11 = malloc_type_malloc(v7 + 41, 0x100004000313F17uLL);
      if (v11)
      {
        v12 = v11;
        *v11 = 0x300005AA5;
        v11[2] = v8;
        v11[3] = file;
        *(v11 + 8) = line;
        xmlMutexLock(xmlMemMutex);
        v12[1] = ++block;
        debugMemSize += v8;
        ++debugMemBlocks;
        if (debugMemSize > debugMaxMemSize)
        {
          debugMaxMemSize = debugMemSize;
        }

        xmlMutexUnlock(xmlMemMutex);
        v13 = (v12 + 5);
        if (v12[1] == xmlMemStopAtBlock)
        {
          v14 = *__xmlGenericError();
          v15 = __xmlGenericErrorContext();
          v14(*v15, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
        }

        strncpy(v13, str, v8);
        v13[v7] = 0;
        if (xmlMemTraceBlockAt == v13)
        {
          v16 = *__xmlGenericError();
          v17 = __xmlGenericErrorContext();
          v16(*v17, "%p : Strdup() Ok\n", xmlMemTraceBlockAt);
          v18 = *__xmlGenericError();
          v19 = __xmlGenericErrorContext();
          v18(*v19, "xmlMallocBreakpoint reached on block %d\n", xmlMemStopAtBlock);
        }

        return v13;
      }
    }

    else
    {
      v9 = *__xmlGenericError();
      v10 = __xmlGenericErrorContext();
      v9(*v10, "xmlMemStrdupLoc : Unsigned overflow\n");
    }

    return 0;
  }

  return strdup(str);
}

char *__cdecl xmlMemoryStrdup(const char *str)
{
  if (linkedOnOrAfter2024EReleases())
  {

    return strdup(str);
  }

  else
  {

    return xmlMemStrdupLoc(str, "none", 0);
  }
}

size_t xmlMemSize(size_t ptr)
{
  if (ptr)
  {
    if (*(ptr - 40) == 23205)
    {
      return *(ptr - 24);
    }

    else
    {
      return 0;
    }
  }

  return ptr;
}

int xmlMemUsed(void)
{
  xmlMutexLock(xmlMemMutex);
  v0 = debugMemSize;
  xmlMutexUnlock(xmlMemMutex);
  return v0;
}

int xmlMemBlocks(void)
{
  xmlMutexLock(xmlMemMutex);
  v0 = debugMemBlocks;
  xmlMutexUnlock(xmlMemMutex);
  return v0;
}

void xmlMemDisplayLast(FILE *fp, uint64_t nbBytes)
{
  if (nbBytes >= 1)
  {
    if (fp)
    {

      fwrite("Memory list not compiled (MEM_LIST not defined !)\n", 0x32uLL, 1uLL, fp);
    }

    else
    {
      v2 = fopen(".memorylist", "w");
      if (v2)
      {
        v3 = v2;
        fwrite("Memory list not compiled (MEM_LIST not defined !)\n", 0x32uLL, 1uLL, v2);

        fclose(v3);
      }
    }
  }
}

void xmlMemDisplay(FILE *fp)
{
  if (fp)
  {

    fwrite("Memory list not compiled (MEM_LIST not defined !)\n", 0x32uLL, 1uLL, fp);
  }

  else
  {
    v1 = fopen(".memorylist", "w");
    if (v1)
    {
      v2 = v1;
      fwrite("Memory list not compiled (MEM_LIST not defined !)\n", 0x32uLL, 1uLL, v1);

      fclose(v2);
    }
  }
}

void xmlMemShow(FILE *fp, int nr)
{
  if (fp)
  {
    fprintf(fp, "      MEMORY ALLOCATED : %lu, MAX was %lu\n", debugMemSize, debugMaxMemSize);
  }
}

void xmlCleanupMemory(void)
{
  if (xmlMemInitialized == 1)
  {
    xmlFreeMutex(xmlMemMutex);
    xmlMemMutex = 0;
    xmlMemInitialized = 0;
  }
}

int xmlMemSetup(xmlFreeFunc freeFunc, xmlMallocFunc mallocFunc, xmlReallocFunc reallocFunc, xmlStrdupFunc strdupFunc)
{
  v8 = linkedOnOrAfter2024EReleases();
  result = -1;
  if (strdupFunc && reallocFunc && mallocFunc && freeFunc && (v8 & 1) == 0)
  {
    result = 0;
    xmlFree = freeFunc;
    xmlMalloc = mallocFunc;
    xmlMallocAtomic = mallocFunc;
    xmlRealloc = reallocFunc;
    xmlMemStrdup = strdupFunc;
  }

  return result;
}

int xmlMemGet(xmlFreeFunc *freeFunc, xmlMallocFunc *mallocFunc, xmlReallocFunc *reallocFunc, xmlStrdupFunc *strdupFunc)
{
  if (linkedOnOrAfter2024EReleases())
  {
    return -1;
  }

  if (freeFunc)
  {
    *freeFunc = xmlFree;
  }

  if (mallocFunc)
  {
    *mallocFunc = xmlMalloc;
  }

  if (reallocFunc)
  {
    *reallocFunc = xmlRealloc;
  }

  result = 0;
  if (strdupFunc)
  {
    *strdupFunc = xmlMemStrdup;
  }

  return result;
}

int xmlGcMemSetup(xmlFreeFunc freeFunc, xmlMallocFunc mallocFunc, xmlMallocFunc mallocAtomicFunc, xmlReallocFunc reallocFunc, xmlStrdupFunc strdupFunc)
{
  v10 = linkedOnOrAfter2024EReleases();
  result = -1;
  if (strdupFunc && reallocFunc && mallocAtomicFunc && mallocFunc && freeFunc && (v10 & 1) == 0)
  {
    result = 0;
    xmlFree = freeFunc;
    xmlMalloc = mallocFunc;
    xmlMallocAtomic = mallocAtomicFunc;
    xmlRealloc = reallocFunc;
    xmlMemStrdup = strdupFunc;
  }

  return result;
}

int xmlGcMemGet(xmlFreeFunc *freeFunc, xmlMallocFunc *mallocFunc, xmlMallocFunc *mallocAtomicFunc, xmlReallocFunc *reallocFunc, xmlStrdupFunc *strdupFunc)
{
  if (linkedOnOrAfter2024EReleases())
  {
    return -1;
  }

  if (freeFunc)
  {
    *freeFunc = xmlFree;
  }

  if (mallocFunc)
  {
    *mallocFunc = xmlMalloc;
  }

  if (mallocAtomicFunc)
  {
    *mallocAtomicFunc = xmlMallocAtomic;
  }

  if (reallocFunc)
  {
    *reallocFunc = xmlRealloc;
  }

  result = 0;
  if (strdupFunc)
  {
    *strdupFunc = xmlMemStrdup;
  }

  return result;
}

xmlModulePtr xmlModuleOpen(const char *filename, int options)
{
  v3 = malloc_type_malloc(0x10uLL, 0x900405DDA6445uLL);
  v4 = v3;
  if (v3)
  {
    *v3 = 0;
    v3[1] = 0;
    v5 = dlopen(filename, 10);
    v4[1] = v5;
    if (v5)
    {
      *v4 = xmlStrdup(filename);
    }

    else
    {
      free(v4);
      __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4900, 3, 0, 0, 0, filename, 0, 0, 0, "failed to open %s\n", filename);
      return 0;
    }
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 2, 3, 0, 0, "creating module", 0, 0, 0, 0, "Memory allocation failed : %s\n", "creating module");
  }

  return v4;
}

int xmlModuleSymbol(xmlModulePtr module, const char *name, void **result)
{
  if (!name || !module || !result)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4900, 3, 0, 0, 0, 0, 0, 0, 0, "null parameter\n", v6);
    goto LABEL_7;
  }

  *result = dlsym(*(module + 1), name);
  v4 = dlerror();
  if (v4)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4900, 3, 0, 0, 0, name, 0, 0, 0 >> 96, "failed to find symbol: %s\n", name);
LABEL_7:
    LODWORD(v4) = -1;
  }

  return v4;
}

int xmlModuleClose(xmlModulePtr module)
{
  if (module)
  {
    v2 = dlclose(*(module + 1));
    v3 = *module;
    if (v2)
    {
      __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4901, 3, 0, 0, 0, v3, 0, 0, 0, "failed to close: %s\n", v3);
      return -2;
    }

    else
    {
      free(v3);
      free(module);
      return 0;
    }
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4901, 3, 0, 0, 0, 0, 0, 0, 0, "null module pointer\n", v5);
    return -1;
  }
}

int xmlModuleFree(xmlModulePtr module)
{
  if (module)
  {
    free(*module);
    free(module);
    return 0;
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x1Au, 4901, 3, 0, 0, 0, 0, 0, 0, 0, "null module pointer\n", v3);
    return -1;
  }
}

void xmlTextReaderValidatePop(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    if (v4 && *(v4 + 156) == 1)
    {
      ns = v2->ns;
      if (ns && (prefix = ns->prefix) != 0)
      {
        v7 = xmlStrdup(prefix);
        v8 = xmlStrcat(v7, ":");
        v9 = xmlStrcat(v8, v2->name);
        *(*(a1 + 32) + 152) &= xmlValidatePopElement((*(a1 + 32) + 160), *(*(a1 + 32) + 16), v2, v9);
        if (v9)
        {
          free(v9);
        }
      }

      else
      {
        *(*(a1 + 32) + 152) &= xmlValidatePopElement((v4 + 160), *(v4 + 16), v2, v2->name);
      }
    }

    v3 = *(a1 + 16);
  }

  if (v3 == 2)
  {
    v10 = *(a1 + 216);
    if (v10)
    {
      v11 = *(a1 + 232);
      if (v11)
      {
        if (v2 == v11)
        {
          *(a1 + 232) = 0;
        }
      }

      else if (xmlRelaxNGValidatePopElement(v10, *(*(a1 + 32) + 16), v2) != 1)
      {
        ++*(a1 + 228);
      }
    }
  }
}

uint64_t xmlTextReaderEntPush(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 176);
  v5 = *(a1 + 180);
  if (result < v5)
  {
    v6 = *(a1 + 184);
LABEL_11:
    v6[result] = a2;
    *(a1 + 168) = a2;
    *(a1 + 176) = result + 1;
    return result;
  }

  if (v5 < 1)
  {
    v7 = 10;
  }

  else
  {
    if (v5 > 0x3B9AC9FF)
    {
      goto LABEL_12;
    }

    if (1000000000 - ((v5 + 1) >> 1) >= v5)
    {
      v7 = v5 + ((v5 + 1) >> 1);
    }

    else
    {
      v7 = 1000000000;
    }
  }

  v8 = malloc_type_realloc(*(a1 + 184), 8 * v7, 0x2004093837F09uLL);
  if (v8)
  {
    v6 = v8;
    *(a1 + 184) = v8;
    *(a1 + 180) = v7;
    result = *(a1 + 176);
    goto LABEL_11;
  }

LABEL_12:
  v9 = *__xmlGenericError();
  v10 = __xmlGenericErrorContext();
  v9(*v10, "xmlRealloc failed !\n");
  return 0xFFFFFFFFLL;
}

void xmlTextReaderValidateEntity(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = v2;
  while (1)
  {
    v4 = *(v3 + 8);
    if ((v4 - 3) < 2)
    {
      v7 = *(v3 + 80);
      v8 = xmlStrlen(v7);
      xmlTextReaderValidateCData(a1, v7, v8);
      goto LABEL_12;
    }

    if (v4 == 1)
    {
      *(a1 + 112) = v3;
      xmlTextReaderValidatePush(a1);
LABEL_12:
      v6 = *(v3 + 24);
      if (!v6)
      {
        if (*(v3 + 8) == 1)
        {
          xmlTextReaderValidatePop(a1);
        }

LABEL_19:
        while (1)
        {
          v6 = *(v3 + 48);
          if (v6)
          {
            break;
          }

          v3 = *(v3 + 40);
          v9 = *(v3 + 8);
          if (v9 == 1)
          {
            if (!*(a1 + 176))
            {
              while (1)
              {
                v15 = *(v3 + 32);
                if (!v15 || (*(v15 + 114) & 2) != 0)
                {
                  break;
                }

                xmlUnlinkNode(*(v3 + 32));
                xmlTextReaderFreeNode(a1, v15);
              }
            }

            *(a1 + 112) = v3;
            xmlTextReaderValidatePop(a1);
            v9 = *(v3 + 8);
          }

          if (v9 == 17)
          {
            v10 = *(a1 + 168);
            if (v10)
            {
              if (*(v10 + 24) == v3)
              {
                v11 = *(a1 + 176);
                if (v11 < 1)
                {
                  v3 = 0;
                }

                else
                {
                  v12 = *(a1 + 184);
                  v13 = v11 - 1;
                  *(a1 + 176) = v11 - 1;
                  if (v11 == 1)
                  {
                    v14 = 0;
                  }

                  else
                  {
                    v14 = *(v12 + 8 * v11 - 16);
                  }

                  *(a1 + 168) = v14;
                  v3 = *(v12 + 8 * v13);
                  *(v12 + 8 * v13) = 0;
                }
              }
            }
          }

          if (v3 == v2)
          {
            v6 = v3;
            goto LABEL_13;
          }
        }
      }

      goto LABEL_13;
    }

    if (v4 != 5)
    {
      goto LABEL_12;
    }

    v5 = *(v3 + 24);
    if (!v5 || *(v5 + 8) != 17 || !*(v5 + 24) || (xmlTextReaderEntPush(a1, v3) & 0x80000000) != 0)
    {
      break;
    }

    v6 = *(*(v3 + 24) + 24);
LABEL_13:
    if (v6)
    {
      v3 = v6;
      if (v6 != v2)
      {
        continue;
      }
    }

    goto LABEL_38;
  }

  if (v3 != v2)
  {
    goto LABEL_19;
  }

LABEL_38:
  *(a1 + 112) = v2;
}

void xmlTextReaderValidatePush(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 16);
  if (v3 == 1)
  {
    v4 = *(a1 + 32);
    if (v4 && *(v4 + 156) == 1)
    {
      ns = v2->ns;
      if (ns && (prefix = ns->prefix) != 0)
      {
        v7 = xmlStrdup(prefix);
        v8 = xmlStrcat(v7, ":");
        v9 = xmlStrcat(v8, v2->name);
        *(*(a1 + 32) + 152) &= xmlValidatePushElement((*(a1 + 32) + 160), *(*(a1 + 32) + 16), v2, v9);
        if (v9)
        {
          free(v9);
        }
      }

      else
      {
        *(*(a1 + 32) + 152) &= xmlValidatePushElement((v4 + 160), *(v4 + 16), v2, v2->name);
      }
    }

    v3 = *(a1 + 16);
  }

  if (v3 == 2)
  {
    v10 = *(a1 + 216);
    if (v10)
    {
      if (!*(a1 + 232))
      {
        v11 = xmlRelaxNGValidatePushElement(v10, *(*(a1 + 32) + 16), v2);
        if (!v11)
        {
          v12 = xmlTextReaderExpand(a1);
          if (!v12)
          {
LABEL_17:
            ++*(a1 + 228);
            return;
          }

          v13 = v12;
          v11 = xmlRelaxNGValidateFullElement(*(a1 + 216), *(*(a1 + 32) + 16), v12);
          *(a1 + 232) = v13;
        }

        if (v11 == 1)
        {
          return;
        }

        goto LABEL_17;
      }
    }
  }
}

uint64_t xmlTextReaderValidateCData(uint64_t result, xmlChar *data, int len)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6 == 1)
  {
    v7 = *(result + 32);
    if (!v7 || *(v7 + 156) != 1)
    {
      return result;
    }

    result = xmlValidatePushCData((v7 + 160), data, len);
    *(*(v5 + 32) + 152) &= result;
    v6 = *(v5 + 16);
  }

  if (v6 == 2)
  {
    result = *(v5 + 216);
    if (result)
    {
      if (!*(v5 + 232))
      {
        result = xmlRelaxNGValidatePushCData(result, data, len);
        if (result != 1)
        {
          ++*(v5 + 228);
        }
      }
    }
  }

  return result;
}

xmlNodePtr xmlTextReaderPreserve(xmlNodePtr reader)
{
  if (reader)
  {
    v1 = reader;
    reader = reader[1]._private;
    if (reader || (reader = *&v1->line) != 0)
    {
      type = reader->type;
      if (type != XML_DOCUMENT_NODE && type != XML_DTD_NODE)
      {
        reader->extra |= 6u;
      }

      ++LODWORD(v1[2].content);
      for (i = reader->parent; i; i = i->parent)
      {
        if (i->type == XML_ELEMENT_NODE)
        {
          i->extra |= 2u;
        }
      }
    }
  }

  return reader;
}

int xmlTextReaderReadState(xmlTextReaderPtr reader)
{
  if (reader)
  {
    return *reader;
  }

  else
  {
    return -1;
  }
}

int xmlTextReaderNext(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  if (*(reader + 1))
  {

    return xmlTextReaderNextTree(reader);
  }

  else
  {
    v3 = *(reader + 14);
    if (!v3 || *(v3 + 8) != 1 || (v4 = *(reader + 6), v4 == 4) || v4 == 2 || (*(v3 + 114) & 1) != 0)
    {
LABEL_15:

      return xmlTextReaderRead(reader);
    }

    else
    {
      while (1)
      {
        result = xmlTextReaderRead(reader);
        if (result != 1)
        {
          break;
        }

        if (*(reader + 14) == v3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return result;
}

uint64_t xmlTextReaderNextTree(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 == 2)
  {
    return 0;
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    if (v1 != 4)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        goto LABEL_13;
      }

      *(a1 + 24) = 4;
      xmlTextReaderRead(a1);
      v4 = *(a1 + 112);
    }

    v5 = *(v4 + 48);
    if (!v5)
    {
      v6 = *(v4 + 40);
      if (!v6)
      {
LABEL_11:
        result = 1;
LABEL_15:
        v7 = 2;
        goto LABEL_16;
      }

      if (*(v6 + 8) != 9)
      {
        *(a1 + 112) = v6;
        --*(a1 + 128);
        *(a1 + 24) = 4;
        xmlTextReaderNextTree(a1);
        goto LABEL_11;
      }

LABEL_14:
      result = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *(*(a1 + 8) + 24);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

LABEL_13:
  v7 = 0;
  *(a1 + 112) = v5;
  result = 1;
LABEL_16:
  *(a1 + 24) = v7;
  return result;
}

xmlChar *__cdecl xmlTextReaderReadInnerXml(xmlTextReaderPtr reader)
{
  if (!xmlTextReaderExpand(reader))
  {
    return 0;
  }

  v2 = *(*(reader + 14) + 64);
  v3 = xmlBufferCreate();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(*(reader + 14) + 24);
  if (v5)
  {
    while (1)
    {
      v6 = xmlDocCopyNode(v5, v2, 1);
      v7 = xmlBufferCreate();
      if (xmlNodeDump(v7, v2, v6, 0, 0) == -1)
      {
        break;
      }

      xmlBufferCat(v4, v7->content);
      xmlFreeNode(v6);
      xmlBufferFree(v7);
      v5 = v5->next;
      if (!v5)
      {
        goto LABEL_6;
      }
    }

    xmlFreeNode(v6);
    xmlBufferFree(v7);
    content = 0;
  }

  else
  {
LABEL_6:
    content = v4->content;
    v4->content = 0;
  }

  xmlBufferFree(v4);
  return content;
}

xmlChar *__cdecl xmlTextReaderReadString(xmlTextReaderPtr reader)
{
  if (!reader || !*(reader + 14))
  {
    return 0;
  }

  v2 = *(reader + 15) ? *(reader + 15) : *(reader + 14);
  v3 = *(v2 + 8);
  if ((v3 - 3) >= 2 && (v3 != 1 || xmlTextReaderDoExpand(reader) == -1 || !*(v2 + 24)))
  {
    return 0;
  }

  Size = xmlBufCreateSize(30);
  if (Size)
  {
    v5 = Size;
    xmlBufSetAllocationScheme(Size, 0);
    v6 = v2;
    do
    {
LABEL_9:
      v7 = v6;
      v8 = *(v6 + 8);
      if ((v8 - 3) < 2)
      {
        xmlBufCat(v5, *(v7 + 80));
        break;
      }

      if (v8 != 1)
      {
        break;
      }

      v6 = *(v7 + 24);
    }

    while (v6);
    while (v7 != v2)
    {
      v6 = *(v7 + 48);
      if (v6)
      {
        goto LABEL_9;
      }

      v7 = *(v7 + 40);
    }

    v9 = xmlBufDetach(v5->i64);
    if (!v9)
    {
      xmlErrMemory(*(reader + 4), 0);
      *reader = 2;
      *(reader + 6) = 6;
    }

    xmlBufFree(v5);
  }

  else
  {
    xmlErrMemory(*(reader + 4), 0);
    v9 = 0;
    *reader = 2;
    *(reader + 6) = 6;
  }

  return v9;
}

int xmlTextReaderNextSibling(xmlTextReaderPtr reader)
{
  if (!reader || !*(reader + 1))
  {
    return -1;
  }

  if (*(reader + 6) == 2)
  {
    return 0;
  }

  v2 = *(reader + 14);
  if (!v2)
  {
    return xmlTextReaderNextTree(reader);
  }

  v3 = *(v2 + 48);
  if (!v3)
  {
    return 0;
  }

  *(reader + 14) = v3;
  *(reader + 6) = 0;
  return 1;
}

uint64_t xmlTextReaderStartElement(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 56);
    if (v2)
    {
      v3 = result;
      result = v2();
      v4 = *(v3 + 80);
      if (v4)
      {
        v5 = *(v3 + 56);
        if (v5)
        {
          v6 = *(v5 + 32);
          if (v6)
          {
            if (*v6 == 47 && v6[1] == 62)
            {
              *(v4 + 114) = *(v4 + 114) & 0xF000 | 1;
            }
          }
        }
      }
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t xmlTextReaderEndElement(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t xmlTextReaderCDataBlock(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

xmlTextReaderPtr xmlNewTextReaderFilename(const char *URI)
{
  Filename = xmlParserInputBufferCreateFilename(URI, XML_CHAR_ENCODING_NONE);
  if (!Filename)
  {
    return 0;
  }

  v3 = Filename;
  v4 = xmlNewTextReader(Filename, URI);
  v5 = v4;
  if (v4)
  {
    *(v4 + 5) |= 1u;
    if (!*(*(v4 + 4) + 280))
    {
      Directory = xmlParserGetDirectory(URI);
      v7 = Directory;
      if (*(*(v5 + 4) + 280))
      {
        v8 = 1;
      }

      else
      {
        v8 = Directory == 0;
      }

      if (v8)
      {
        if (!Directory)
        {
          return v5;
        }
      }

      else
      {
        *(*(v5 + 4) + 280) = xmlStrdup(Directory);
      }

      free(v7);
    }
  }

  else
  {
    xmlFreeParserInputBuffer(v3);
  }

  return v5;
}

xmlChar *__cdecl xmlTextReaderGetAttributeNo(xmlChar *reader, int no)
{
  if (!reader)
  {
    return reader;
  }

  v2 = *(reader + 14);
  if (!v2 || *(reader + 15) || *(v2 + 8) != 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v2 + 96);
  do
  {
    v5 = v3;
    v4 = *v4;
    ++v3;
  }

  while (v5 < no && v4);
  if (!v4)
  {
    v7 = *(v2 + 88);
    if (v7)
    {
      if (v5 >= no)
      {
LABEL_18:
        reader = xmlNodeListGetString(*(v2 + 64), *(v7 + 24), 1);
        if (reader)
        {
          return reader;
        }

        v6 = "";
        goto LABEL_10;
      }

      v8 = no - v3 + 1;
      while (1)
      {
        v7 = *(v7 + 48);
        if (!v7)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_18;
        }
      }
    }

    return 0;
  }

  v6 = v4[2];
LABEL_10:

  return xmlStrdup(v6);
}

xmlChar *__cdecl xmlTextReaderGetAttributeNs(xmlTextReaderPtr reader, const xmlChar *localName, const xmlChar *namespaceURI)
{
  if (!reader)
  {
    return 0;
  }

  if (!localName)
  {
    return 0;
  }

  v5 = *(reader + 14);
  if (!v5 || *(reader + 15) || *(v5 + 8) != 1)
  {
    return 0;
  }

  if (xmlStrEqual(namespaceURI, "http://www.w3.org/2000/xmlns/"))
  {
    v7 = xmlStrEqual(localName, "xmlns");
    v8 = *(*(reader + 14) + 96);
    if (v8)
    {
      v9 = v7;
      do
      {
        v10 = v8[3];
        if (v9)
        {
          if (!v10)
          {
            goto LABEL_19;
          }
        }

        else if (!v10)
        {
          goto LABEL_14;
        }

        if (xmlStrEqual(v10, localName))
        {
LABEL_19:
          v13 = v8[2];

          return xmlStrdup(v13);
        }

LABEL_14:
        v8 = *v8;
      }

      while (v8);
    }

    return 0;
  }

  v12 = *(reader + 14);

  return xmlGetNsProp(v12, localName, namespaceURI);
}

xmlParserInputBufferPtr xmlTextReaderGetRemainder(xmlParserInputBufferPtr reader)
{
  if (reader)
  {
    v1 = reader;
    if (!*&reader[1].compressed)
    {
      return 0;
    }

    *&reader[1].compressed = 0;
    reader[1].rawconsumed = 0;
    LODWORD(reader->context) = 3;
    buffer = reader->buffer;
    if (buffer)
    {
      xmlStopParser(buffer);
      v3 = v1->buffer;
      v4 = *(v3 + 2);
      if (v4)
      {
        if (!LODWORD(v1[2].closecallback))
        {
          xmlTextReaderFreeDoc(v1, v4);
          v3 = v1->buffer;
        }

        *(v3 + 2) = 0;
      }
    }

    closecallback_high = HIDWORD(v1->closecallback);
    if ((closecallback_high & 1) == 0)
    {
      v6 = *__xmlGenericError();
      v7 = __xmlGenericErrorContext();
      v6(*v7, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlreader.c", 2612);
      return 0;
    }

    reader = *&v1->compressed;
    *&v1->compressed = 0;
    HIDWORD(v1->closecallback) = closecallback_high - 1;
  }

  return reader;
}

xmlChar *__cdecl xmlTextReaderLookupNamespace(xmlTextReaderPtr reader, const xmlChar *prefix)
{
  if (!reader)
  {
    return 0;
  }

  v3 = *(reader + 14);
  if (!v3)
  {
    return 0;
  }

  v4 = xmlSearchNs(v3->doc, v3, prefix);
  if (!v4)
  {
    return 0;
  }

  href = v4->href;

  return xmlStrdup(href);
}

int xmlTextReaderMoveToAttributeNo(xmlTextReaderPtr reader, int no)
{
  if (!reader)
  {
    return -1;
  }

  v2 = *(reader + 14);
  if (!v2 || *(v2 + 8) != 1)
  {
    return -1;
  }

  v3 = 0;
  *(reader + 15) = 0;
  v4 = (v2 + 96);
  do
  {
    v5 = v3;
    v4 = *v4;
    ++v3;
  }

  while (v5 < no && v4);
  if (v4)
  {
    goto LABEL_8;
  }

  v4 = *(v2 + 88);
  if (v4)
  {
    if (v5 >= no)
    {
LABEL_8:
      *(reader + 15) = v4;
      return 1;
    }

    v7 = no - v3 + 1;
    while (1)
    {
      v4 = v4[6];
      if (!v4)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  return 0;
}

int xmlTextReaderMoveToAttribute(xmlTextReaderPtr reader, const xmlChar *name)
{
  prefix = 0;
  result = -1;
  if (reader)
  {
    if (name)
    {
      v5 = *(reader + 14);
      if (v5)
      {
        if (*(v5 + 8) != 1)
        {
          return 0;
        }

        v6 = xmlSplitQName2(name, &prefix);
        if (!v6)
        {
          v12 = xmlStrEqual(name, "xmlns");
          v13 = *(reader + 14);
          if (v12)
          {
            v14 = (v13 + 96);
            while (1)
            {
              v14 = *v14;
              if (!v14)
              {
                break;
              }

              if (!v14[3])
              {
                *(reader + 15) = v14;
                return 1;
              }
            }
          }

          else
          {
            v16 = *(v13 + 88);
            if (v16)
            {
              while (1)
              {
                if (xmlStrEqual(*(v16 + 16), name))
                {
                  v17 = *(v16 + 72);
                  if (!v17 || !*(v17 + 24))
                  {
                    break;
                  }
                }

                result = 0;
                v16 = *(v16 + 48);
                if (!v16)
                {
                  return result;
                }
              }

              *(reader + 15) = v16;
              return 1;
            }
          }

          return 0;
        }

        v7 = v6;
        v8 = xmlStrEqual(prefix, "xmlns");
        v9 = *(reader + 14);
        if (v8)
        {
          i = *(v9 + 96);
          if (i)
          {
            while (1)
            {
              v11 = i[3];
              if (v11)
              {
                if (xmlStrEqual(v11, v7))
                {
                  break;
                }
              }

              i = *i;
              if (!i)
              {
                goto LABEL_22;
              }
            }

LABEL_32:
            *(reader + 15) = i;
            free(v7);
            if (prefix)
            {
              free(prefix);
            }

            return 1;
          }
        }

        else
        {
          for (i = *(v9 + 88); i; i = i[6])
          {
            if (xmlStrEqual(i[2], v7))
            {
              v15 = i[9];
              if (v15)
              {
                if (xmlStrEqual(v15[3], prefix))
                {
                  goto LABEL_32;
                }
              }
            }
          }
        }

LABEL_22:
        free(v7);
        result = prefix;
        if (prefix)
        {
          free(prefix);
          return 0;
        }
      }
    }
  }

  return result;
}

int xmlTextReaderMoveToAttributeNs(xmlTextReaderPtr reader, const xmlChar *localName, const xmlChar *namespaceURI)
{
  result = -1;
  if (reader)
  {
    if (localName)
    {
      if (namespaceURI)
      {
        v7 = *(reader + 14);
        if (v7)
        {
          if (*(v7 + 8) != 1)
          {
            return 0;
          }

          if (xmlStrEqual(namespaceURI, "http://www.w3.org/2000/xmlns/"))
          {
            v8 = xmlStrEqual(localName, "xmlns");
            v9 = *(*(reader + 14) + 96);
            if (v9)
            {
              v10 = v8;
              while (1)
              {
                v11 = v9[3];
                if (v10)
                {
                  break;
                }

                if (v11)
                {
                  goto LABEL_13;
                }

LABEL_14:
                result = 0;
                v9 = *v9;
                if (!v9)
                {
                  return result;
                }
              }

              if (!v11)
              {
                goto LABEL_24;
              }

LABEL_13:
              if (xmlStrEqual(v11, localName))
              {
                goto LABEL_24;
              }

              goto LABEL_14;
            }

            return 0;
          }

          v9 = *(v7 + 88);
          if (!v9)
          {
            return 0;
          }

          while (1)
          {
            if (xmlStrEqual(v9[2], localName))
            {
              v12 = v9[9];
              if (v12)
              {
                if (xmlStrEqual(v12[2], namespaceURI))
                {
                  break;
                }
              }
            }

            result = 0;
            v9 = v9[6];
            if (!v9)
            {
              return result;
            }
          }

LABEL_24:
          *(reader + 15) = v9;
          return 1;
        }
      }
    }
  }

  return result;
}

int xmlTextReaderMoveToFirstAttribute(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return -1;
  }

  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 96);
  if (!v2)
  {
    v2 = *(v1 + 88);
    if (!v2)
    {
      return 0;
    }
  }

  *(reader + 15) = v2;
  return 1;
}

int xmlTextReaderMoveToNextAttribute(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return -1;
  }

  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *(reader + 15);
  if (!v2)
  {
    v4 = *(v1 + 96);
    if (!v4)
    {
      goto LABEL_11;
    }

LABEL_12:
    *(reader + 15) = v4;
    return 1;
  }

  v3 = *(v2 + 2);
  if (v3 == 2)
  {
    v4 = v2[6];
    if (v4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v3 != 18)
  {
    return 0;
  }

  v4 = *v2;
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_11:
  v4 = *(v1 + 88);
  if (v4)
  {
    goto LABEL_12;
  }

  return 0;
}

int xmlTextReaderMoveToElement(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return -1;
  }

  if (*(v1 + 8) != 1 || !*(reader + 15))
  {
    return 0;
  }

  *(reader + 15) = 0;
  return 1;
}

int xmlTextReaderReadAttributeValue(xmlTextReaderPtr reader)
{
  if (reader)
  {
    v2 = *(reader + 14);
    if (v2)
    {
      v3 = *(reader + 15);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4 == 18)
        {
          v6 = *(reader + 17);
          if (v6)
          {
            v7 = *(v6 + 80);
            if (v7)
            {
              v8 = v7 == (v6 + 88);
            }

            else
            {
              v8 = 1;
            }

            if (!v8)
            {
              free(v7);
            }

            v9 = xmlStrdup(*(v3 + 16));
            v5 = *(reader + 17);
            v5->content = v9;
          }

          else
          {
            v5 = xmlNewDocText(*(v2 + 64), *(v3 + 16));
            *(reader + 17) = v5;
          }
        }

        else if (v4 == 2)
        {
          v5 = *(v3 + 24);
          if (!v5)
          {
            return v5;
          }
        }

        else
        {
          v5 = *(v3 + 48);
          if (!v5)
          {
            return v5;
          }
        }

        *(reader + 15) = v5;
        LODWORD(v5) = 1;
      }

      else
      {
        LODWORD(v5) = 0;
      }
    }

    else
    {
      LODWORD(v5) = -1;
    }
  }

  else
  {
    LODWORD(v5) = -1;
  }

  return v5;
}

const xmlChar *__cdecl xmlTextReaderConstEncoding(xmlTextReaderPtr reader)
{
  if (reader && ((v1 = *(reader + 1)) != 0 || (v4 = *(reader + 4)) != 0 && (v1 = *(v4 + 16)) != 0) && (v2 = *(v1 + 112)) != 0)
  {
    return xmlDictLookup(*(reader + 20), v2, -1);
  }

  else
  {
    return 0;
  }
}

int xmlTextReaderAttributeCount(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *(reader + 6);
  if (v2 == 2 || v2 == 4)
  {
    return 0;
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    v6 = 0;
    do
    {
      ++v6;
      v5 = *(v5 + 48);
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (v1 + 96);
  result = v6 - 1;
  do
  {
    v7 = *v7;
    ++result;
  }

  while (v7);
  return result;
}

int xmlTextReaderIsEmptyElement(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return -1;
  }

  if (*(v1 + 8) != 1 || *(reader + 15) || *(v1 + 24) || *(reader + 6) == 2)
  {
    return 0;
  }

  if (*(reader + 1) || *(reader + 74) > 0)
  {
    return 1;
  }

  return *(v1 + 114) & 1;
}

xmlChar *__cdecl xmlTextReaderLocalName(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if ((v2 - 1) >= 2)
  {
    if (v2 != 18)
    {
      return xmlTextReaderName(reader);
    }

    v3 = *(v1 + 24);
    if (!v3)
    {
      return xmlStrdup("xmlns");
    }
  }

  else
  {
    v3 = *(v1 + 16);
  }

  return xmlStrdup(v3);
}

xmlChar *__cdecl xmlTextReaderName(xmlChar *reader)
{
  if (reader)
  {
    v1 = reader;
    v2 = *(reader + 14);
    if (v2)
    {
      reader = 0;
      v3 = *(v1 + 15);
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = v2;
      }

      switch(*(v4 + 8))
      {
        case 1:
        case 2:
          v6 = *(v4 + 72);
          if (!v6)
          {
            goto LABEL_7;
          }

          v7 = *(v6 + 24);
          if (!v7)
          {
            goto LABEL_7;
          }

          v8 = xmlStrdup(v7);
          v9 = xmlStrcat(v8, ":");
          v10 = *(v4 + 16);
          goto LABEL_18;
        case 3:
          v5 = "#text";
          goto LABEL_23;
        case 4:
          v5 = "#cdata-section";
          goto LABEL_23;
        case 5:
        case 6:
        case 7:
        case 0xA:
        case 0xC:
        case 0xE:
LABEL_7:
          v5 = *(v4 + 16);
          goto LABEL_23;
        case 8:
          v5 = "#comment";
          goto LABEL_23;
        case 9:
        case 0xD:
        case 0x15:
          v5 = "#document";
          goto LABEL_23;
        case 0xB:
          v5 = "#document-fragment";
LABEL_23:

          reader = xmlStrdup(v5);
          break;
        case 0x12:
          reader = xmlStrdup("xmlns");
          if (*(v4 + 24))
          {
            v9 = xmlStrcat(reader, ":");
            v10 = *(v4 + 24);
LABEL_18:

            reader = xmlStrcat(v9, v10);
          }

          break;
        default:
          return reader;
      }
    }

    else
    {
      return 0;
    }
  }

  return reader;
}

const xmlChar *__cdecl xmlTextReaderConstLocalName(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return v1;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if ((v2 - 1) < 2)
  {
    return *(v1 + 16);
  }

  if (v2 != 18)
  {
    return xmlTextReaderConstName(reader);
  }

  v1 = *(v1 + 24);
  if (v1)
  {
    return v1;
  }

  return xmlDictLookup(*(reader + 20), "xmlns", -1);
}

xmlChar *__cdecl xmlTextReaderPrefix(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if ((v2 - 1) >= 2)
  {
    if (v2 == 18 && *(v1 + 24))
    {
      return xmlStrdup("xmlns");
    }

    return 0;
  }

  v3 = *(v1 + 72);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (!v4)
  {
    return 0;
  }

  return xmlStrdup(v4);
}

const xmlChar *__cdecl xmlTextReaderConstPrefix(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if ((v2 - 1) >= 2)
  {
    if (v2 != 18 || !*(v1 + 24))
    {
      return 0;
    }

    v4 = "xmlns";
    return xmlDictLookup(*(reader + 20), v4, -1);
  }

  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      return xmlDictLookup(*(reader + 20), v4, -1);
    }
  }

  return 0;
}

xmlChar *__cdecl xmlTextReaderNamespaceUri(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if ((v2 - 1) >= 2)
  {
    if (v2 == 18)
    {
      return xmlStrdup("http://www.w3.org/2000/xmlns/");
    }

    return 0;
  }

  v3 = *(v1 + 72);
  if (!v3)
  {
    return 0;
  }

  return xmlStrdup(*(v3 + 16));
}

const xmlChar *__cdecl xmlTextReaderConstNamespaceUri(xmlTextReaderPtr reader)
{
  if (reader)
  {
    v1 = *(reader + 14);
    if (v1)
    {
      if (*(reader + 15))
      {
        v1 = *(reader + 15);
      }

      v2 = *(v1 + 8);
      if ((v2 - 1) >= 2)
      {
        if (v2 == 18)
        {
          v4 = *(reader + 20);
          v5 = "http://www.w3.org/2000/xmlns/";
          return xmlDictLookup(v4, v5, -1);
        }
      }

      else
      {
        v3 = *(v1 + 72);
        if (v3)
        {
          v4 = *(reader + 20);
          v5 = *(v3 + 16);
          return xmlDictLookup(v4, v5, -1);
        }
      }
    }
  }

  return 0;
}

xmlChar *__cdecl xmlTextReaderBaseUri(xmlTextReaderPtr reader)
{
  if (reader && (v1 = *(reader + 14)) != 0)
  {
    return xmlNodeGetBase(0, v1);
  }

  else
  {
    return 0;
  }
}

const xmlChar *__cdecl xmlTextReaderConstBaseUri(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v2 = *(reader + 14);
  if (!v2)
  {
    return 0;
  }

  Base = xmlNodeGetBase(0, v2);
  if (!Base)
  {
    return 0;
  }

  v4 = Base;
  v5 = xmlDictLookup(*(reader + 20), Base, -1);
  free(v4);
  return v5;
}

int xmlTextReaderDepth(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  if (!*(reader + 14))
  {
    return 0;
  }

  v1 = *(reader + 15);
  if (!v1)
  {
    return *(reader + 32);
  }

  if ((*(v1 + 8) | 0x10) == 0x12)
  {
    return *(reader + 32) + 1;
  }

  return *(reader + 32) + 2;
}

int xmlTextReaderHasAttributes(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  return *(v1 + 8) == 1 && (*(v1 + 88) || *(v1 + 96));
}

int xmlTextReaderHasValue(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  result = 1;
  v4 = v2 > 0x12;
  v5 = (1 << v2) & 0x4019C;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  return result;
}

xmlChar *__cdecl xmlTextReaderValue(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return 0;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  v2 = *(v1 + 8);
  if (v2 > 0x12)
  {
    return 0;
  }

  if (((1 << v2) & 0x198) != 0)
  {
    v3 = *(v1 + 80);
    if (v3)
    {
      return xmlStrdup(v3);
    }

    return 0;
  }

  if (v2 != 2)
  {
    if (v2 == 18)
    {
      return xmlStrdup(*(v1 + 16));
    }

    return 0;
  }

  v5 = *(v1 + 40);
  if (v5)
  {
    v6 = *(v5 + 64);
    v7 = *(v1 + 24);
  }

  else
  {
    v7 = *(v1 + 24);
    v6 = 0;
  }

  return xmlNodeListGetString(v6, v7, 1);
}

const xmlChar *__cdecl xmlTextReaderConstValue(const xmlChar *reader)
{
  if (!reader)
  {
    return reader;
  }

  v1 = reader;
  v2 = *(reader + 14);
  if (!v2)
  {
    return 0;
  }

  reader = 0;
  if (*(v1 + 15))
  {
    v3 = *(v1 + 15);
  }

  else
  {
    v3 = v2;
  }

  v4 = *(v3 + 8);
  if (v4 <= 0x12)
  {
    if (((1 << v4) & 0x198) != 0)
    {
      return *(v3 + 80);
    }

    if (v4 != 2)
    {
      if (v4 == 18)
      {
        return *(v3 + 16);
      }

      return reader;
    }

    v5 = *(v3 + 24);
    if (v5 && *(v5 + 8) == 3 && !*(v5 + 48))
    {
      return *(v5 + 80);
    }

    v6 = *(v1 + 19);
    if (v6)
    {
      xmlBufEmpty(v6);
      goto LABEL_19;
    }

    Size = xmlBufCreateSize(100);
    *(v1 + 19) = Size;
    if (Size)
    {
      xmlBufSetAllocationScheme(Size, 5u);
LABEL_19:
      xmlBufGetNodeContent(*(v1 + 19), v3);
      reader = xmlBufContent(*(v1 + 19));
      if (!reader)
      {
        xmlBufFree(*(v1 + 19));
        v8 = xmlBufCreateSize(100);
        *(v1 + 19) = v8;
        xmlBufSetAllocationScheme(v8, 5u);
        return "";
      }

      return reader;
    }

    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "xmlTextReaderSetup : malloc failed\n");
    return 0;
  }

  return reader;
}

int xmlTextReaderIsDefault(xmlTextReaderPtr reader)
{
  if (reader)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

int xmlTextReaderQuoteChar(xmlTextReaderPtr reader)
{
  if (reader)
  {
    return 34;
  }

  else
  {
    return -1;
  }
}

xmlChar *__cdecl xmlTextReaderXmlLang(xmlTextReaderPtr reader)
{
  if (reader && (v1 = *(reader + 14)) != 0)
  {
    return xmlNodeGetLang(v1);
  }

  else
  {
    return 0;
  }
}

const xmlChar *__cdecl xmlTextReaderConstXmlLang(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return 0;
  }

  v2 = *(reader + 14);
  if (!v2)
  {
    return 0;
  }

  Lang = xmlNodeGetLang(v2);
  if (!Lang)
  {
    return 0;
  }

  v4 = Lang;
  v5 = xmlDictLookup(*(reader + 20), Lang, -1);
  free(v4);
  return v5;
}

const xmlChar *__cdecl xmlTextReaderConstString(const xmlChar *reader, const xmlChar *str)
{
  if (reader)
  {
    return xmlDictLookup(*(reader + 20), str, -1);
  }

  return reader;
}

int xmlTextReaderNormalization(xmlTextReaderPtr reader)
{
  if (reader)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

int xmlTextReaderSetParserProp(xmlTextReaderPtr reader, int prop, int value)
{
  if (!reader)
  {
    return -1;
  }

  v4 = *(reader + 4);
  if (!v4)
  {
    return -1;
  }

  result = -1;
  if (prop > 2)
  {
    if (prop == 3)
    {
      v9 = v4[141];
      result = 0;
      if (value)
      {
        v4[141] = v9 | 0x10;
        v4[39] = 1;
        *(reader + 4) = 1;
      }

      else
      {
        v4[141] = v9 & 0xFFFFFFEF;
        v4[39] = 0;
      }
    }

    else if (prop == 4)
    {
      v8 = v4[141];
      result = 0;
      if (value)
      {
        v4[141] = v8 | 2;
        v4[7] = 1;
      }

      else
      {
        v4[141] = v8 & 0xFFFFFFFD;
        v4[7] = 0;
      }
    }
  }

  else if (prop == 1)
  {
    if (!value)
    {
      result = 0;
      v4[108] = 0;
      return result;
    }

    if (v4[108])
    {
      return 0;
    }

    if (!*reader)
    {
      result = 0;
      v7 = 2;
      goto LABEL_26;
    }
  }

  else if (prop == 2)
  {
    v6 = v4[108];
    if (value)
    {
      result = 0;
      v7 = v6 | 4;
LABEL_26:
      v4[108] = v7;
      return result;
    }

    if ((v6 & 4) != 0)
    {
      result = 0;
      v7 = v6 - 4;
      goto LABEL_26;
    }

    return 0;
  }

  return result;
}

int xmlTextReaderGetParserProp(xmlTextReaderPtr reader, int prop)
{
  if (!reader)
  {
    return -1;
  }

  v3 = *(reader + 4);
  if (!v3)
  {
    return -1;
  }

  result = -1;
  if (prop > 2)
  {
    if (prop == 3)
    {
      return *(reader + 4);
    }

    else if (prop == 4)
    {
      return v3[7];
    }
  }

  else if (prop == 1)
  {
    return v3[108] || v3[39] != 0;
  }

  else if (prop == 2)
  {
    return (v3[108] >> 2) & 1;
  }

  return result;
}

int xmlTextReaderGetParserLineNumber(xmlTextReaderPtr reader)
{
  if (reader)
  {
    v1 = *(reader + 4);
    if (v1 && (v2 = *(v1 + 56)) != 0)
    {
      LODWORD(reader) = *(v2 + 52);
    }

    else
    {
      LODWORD(reader) = 0;
    }
  }

  return reader;
}

int xmlTextReaderGetParserColumnNumber(xmlTextReaderPtr reader)
{
  if (reader)
  {
    v1 = *(reader + 4);
    if (v1 && (v2 = *(v1 + 56)) != 0)
    {
      LODWORD(reader) = *(v2 + 56);
    }

    else
    {
      LODWORD(reader) = 0;
    }
  }

  return reader;
}

xmlNodePtr xmlTextReaderCurrentNode(xmlNodePtr reader)
{
  if (reader)
  {
    v1 = reader;
    reader = reader[1]._private;
    if (!reader)
    {
      return *&v1->line;
    }
  }

  return reader;
}

int xmlTextReaderPreservePattern(xmlTextReaderPtr reader, const xmlChar *pattern, const xmlChar **namespaces)
{
  result = -1;
  if (reader && pattern)
  {
    v5 = xmlPatterncompile(pattern, *(reader + 20), 0, namespaces);
    if (!v5)
    {
      return -1;
    }

    v6 = v5;
    result = *(reader + 75);
    v7 = *(reader + 76);
    if (result < v7)
    {
      v8 = *(reader + 39);
LABEL_14:
      v8[result] = v6;
      *(reader + 75) = result + 1;
      return result;
    }

    if (v7 < 1)
    {
      v9 = 4;
    }

    else
    {
      if (v7 > 0x3B9AC9FF)
      {
LABEL_15:
        v11 = *__xmlGenericError();
        v12 = __xmlGenericErrorContext();
        v11(*v12, "xmlRealloc failed !\n");
        return -1;
      }

      if (1000000000 - ((v7 + 1) >> 1) >= v7)
      {
        v9 = v7 + ((v7 + 1) >> 1);
      }

      else
      {
        v9 = 1000000000;
      }
    }

    v10 = malloc_type_realloc(*(reader + 39), 8 * v9, 0x2004093837F09uLL);
    if (v10)
    {
      v8 = v10;
      *(reader + 39) = v10;
      *(reader + 76) = v9;
      result = *(reader + 75);
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  return result;
}

xmlDocPtr xmlTextReaderCurrentDoc(xmlDocPtr reader)
{
  if (reader)
  {
    v1 = reader;
    reader = *&reader->type;
    if (!reader)
    {
      last = v1->last;
      if (last)
      {
        reader = last->name;
        if (reader)
        {
          v1->charset = 1;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return reader;
}

int xmlTextReaderRelaxNGSetSchema(xmlTextReaderPtr reader, xmlRelaxNGPtr schema)
{
  if (!reader)
  {
    return -1;
  }

  if (schema)
  {
    if (*reader)
    {
      return -1;
    }

    v10 = *(reader + 26);
    if (v10)
    {
      xmlRelaxNGFree(v10);
      *(reader + 26) = 0;
    }

    v11 = *(reader + 27);
    if (v11)
    {
      if (!*(reader + 56))
      {
        xmlRelaxNGFreeValidCtxt(v11);
      }

      *(reader + 27) = 0;
    }

    *(reader + 56) = 0;
    v12 = xmlRelaxNGNewValidCtxt(schema);
    *(reader + 27) = v12;
    if (!v12)
    {
      return -1;
    }

    if (*(reader + 24))
    {
      xmlRelaxNGSetValidErrors(v12, xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, reader);
    }

    if (*(reader + 41))
    {
      xmlRelaxNGSetValidStructuredErrors(*(reader + 27), xmlTextReaderValidityStructuredRelay, reader);
    }

    *(reader + 57) = 0;
    v7 = reader + 232;
    v8 = 2;
    v9 = 16;
  }

  else
  {
    v5 = *(reader + 26);
    if (v5)
    {
      xmlRelaxNGFree(v5);
      *(reader + 26) = 0;
    }

    v7 = reader + 216;
    v6 = *(reader + 27);
    if (!v6)
    {
      v8 = 0;
      v9 = 224;
      goto LABEL_26;
    }

    if (!*(reader + 56))
    {
      xmlRelaxNGFreeValidCtxt(v6);
    }

    v8 = 0;
    v9 = 224;
  }

  *v7 = 0;
LABEL_26:
  result = 0;
  *(reader + v9) = v8;
  return result;
}

void xmlTextReaderValidityErrorRelay(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = xmlTextReaderBuildMessage(__format, va);
  v4 = v3;
  v5 = *(a1 + 192);
  if (v5)
  {
    v5(*(a1 + 200), v3, 2, 0);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    xmlTextReaderValidityError(a1, "%s", v3);
    if (!v4)
    {
      return;
    }
  }

  free(v4);
}

void xmlTextReaderValidityWarningRelay(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = xmlTextReaderBuildMessage(__format, va);
  v4 = v3;
  v5 = *(a1 + 192);
  if (v5)
  {
    v5(*(a1 + 200), v3, 1, 0);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    xmlTextReaderValidityWarning(a1, "%s", v3);
    if (!v4)
    {
      return;
    }
  }

  free(v4);
}

void *xmlTextReaderValidityStructuredRelay(void *result, uint64_t a2)
{
  v2 = result[41];
  if (v2)
  {
    return v2(result[25]);
  }

  if (a2)
  {
    v3 = result[53];
    v4 = *(v3 + 328);
    if (v4)
    {
      return v4(*(v3 + 200));
    }
  }

  return result;
}

int xmlTextReaderSetSchema(xmlTextReaderPtr reader, xmlSchemaPtr schema)
{
  if (!reader)
  {
    LODWORD(v4) = -1;
    return v4;
  }

  if (schema)
  {
    if (*reader)
    {
LABEL_4:
      LODWORD(v4) = -1;
      return v4;
    }

    v7 = *(reader + 33);
    if (v7)
    {
      xmlSchemaSAXUnplug(v7);
      *(reader + 33) = 0;
    }

    v8 = *(reader + 31);
    if (v8)
    {
      if (!*(reader + 64))
      {
        xmlSchemaFreeValidCtxt(v8);
      }

      *(reader + 31) = 0;
    }

    *(reader + 64) = 0;
    v9 = *(reader + 30);
    if (v9)
    {
      xmlSchemaFree(v9);
      *(reader + 30) = 0;
    }

    v10 = xmlSchemaNewValidCtxt(schema);
    *(reader + 31) = v10;
    if (!v10)
    {
      xmlSchemaFree(*(reader + 30));
      *(reader + 30) = 0;
      goto LABEL_4;
    }

    v11 = xmlSchemaSAXPlug(v10, *(reader + 4), (*(reader + 4) + 8));
    *(reader + 33) = v11;
    if (!v11)
    {
      xmlSchemaFree(*(reader + 30));
      *(reader + 30) = 0;
      xmlSchemaFreeValidCtxt(*(reader + 31));
      *(reader + 31) = 0;
      goto LABEL_4;
    }

    xmlSchemaValidateSetLocator(*(reader + 31), xmlTextReaderLocator, reader);
    if (*(reader + 24))
    {
      xmlSchemaSetValidErrors(*(reader + 31), xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, reader);
    }

    if (*(reader + 41))
    {
      xmlSchemaSetValidStructuredErrors(*(reader + 31), xmlTextReaderValidityStructuredRelay, reader);
    }

    LODWORD(v4) = 0;
    *(reader + 65) = 0;
    *(reader + 4) = 4;
  }

  else
  {
    v5 = *(reader + 33);
    if (v5)
    {
      xmlSchemaSAXUnplug(v5);
      *(reader + 33) = 0;
    }

    v6 = *(reader + 31);
    if (v6)
    {
      if (!*(reader + 64))
      {
        xmlSchemaFreeValidCtxt(v6);
      }

      *(reader + 31) = 0;
    }

    *(reader + 64) = 0;
    v4 = *(reader + 30);
    if (v4)
    {
      xmlSchemaFree(v4);
      LODWORD(v4) = 0;
      *(reader + 30) = 0;
    }
  }

  return v4;
}

uint64_t xmlTextReaderLocator(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!(a2 | a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = *(a1 + 32);
  if (!v7 || (v8 = *(v7 + 56)) == 0)
  {
    v9 = *(a1 + 112);
    if (!v9)
    {
      return 0xFFFFFFFFLL;
    }

    if (a3)
    {
      LineNo = xmlGetLineNo(v9);
      if (LineNo < 1)
      {
        result = 0xFFFFFFFFLL;
        if (!a2)
        {
          return result;
        }
      }

      else
      {
        v11 = LineNo;
        result = 0;
        *a3 = v11;
        if (!a2)
        {
          return result;
        }
      }
    }

    else
    {
      result = 0;
      if (!a2)
      {
        return result;
      }
    }

    v12 = *(*(a1 + 112) + 64);
    if (v12)
    {
      v13 = *(v12 + 136);
      if (v13)
      {
        *a2 = v13;
        return result;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = *(v8 + 8);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(*(*(a1 + 32) + 56) + 52);
  }

  return result;
}

uint64_t xmlTextReaderSchemaValidateInternal(uint64_t a1, char *URL, xmlSchemaValidCtxtPtr ctxt)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (URL && ctxt || URL | ctxt && (*a1 || !*(a1 + 32)))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 264);
  if (v7)
  {
    xmlSchemaSAXUnplug(v7);
    *(a1 + 264) = 0;
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    if (!*(a1 + 256))
    {
      xmlSchemaFreeValidCtxt(v8);
    }

    *(a1 + 248) = 0;
  }

  *(a1 + 256) = 0;
  v9 = *(a1 + 240);
  if (v9)
  {
    xmlSchemaFree(v9);
    *(a1 + 240) = 0;
  }

  if (!(URL | ctxt))
  {
    return 0;
  }

  if (URL)
  {
    v10 = xmlSchemaNewParserCtxt(URL);
    v11 = v10;
    if (*(a1 + 192))
    {
      xmlSchemaSetParserErrors(v10, xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, a1);
    }

    *(a1 + 240) = xmlSchemaParse(v11);
    xmlSchemaFreeParserCtxt(v11);
    v12 = *(a1 + 240);
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = xmlSchemaNewValidCtxt(v12);
    *(a1 + 248) = v13;
    if (!v13)
    {
      xmlSchemaFree(*(a1 + 240));
      *(a1 + 240) = 0;
      return 0xFFFFFFFFLL;
    }

    v14 = xmlSchemaSAXPlug(v13, *(a1 + 32), (*(a1 + 32) + 8));
    *(a1 + 264) = v14;
    if (!v14)
    {
      xmlSchemaFree(*(a1 + 240));
      *(a1 + 240) = 0;
      xmlSchemaFreeValidCtxt(*(a1 + 248));
      *(a1 + 248) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 248) = ctxt;
    *(a1 + 256) = 1;
    v15 = xmlSchemaSAXPlug(ctxt, *(a1 + 32), (*(a1 + 32) + 8));
    *(a1 + 264) = v15;
    if (!v15)
    {
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  xmlSchemaValidateSetLocator(*(a1 + 248), xmlTextReaderLocator, a1);
  if (*(a1 + 192))
  {
    xmlSchemaSetValidErrors(*(a1 + 248), xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, a1);
  }

  if (*(a1 + 328))
  {
    xmlSchemaSetValidStructuredErrors(*(a1 + 248), xmlTextReaderValidityStructuredRelay, a1);
  }

  result = 0;
  *(a1 + 260) = 0;
  *(a1 + 16) = 4;
  return result;
}

uint64_t xmlTextReaderRelaxNGValidateInternal(uint64_t a1, char *URL, xmlRelaxNGValidCtxt *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a3;
  if (URL && a3 || URL | a3 && (*a1 || !*(a1 + 32)))
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a1 + 216);
  if (v7)
  {
    if (!*(a1 + 224))
    {
      xmlRelaxNGFreeValidCtxt(v7);
    }

    *(a1 + 216) = 0;
  }

  *(a1 + 224) = 0;
  v8 = *(a1 + 208);
  if (v8)
  {
    xmlRelaxNGFree(v8);
    *(a1 + 208) = 0;
  }

  if (!(URL | v3))
  {
    return 0;
  }

  if (URL)
  {
    v9 = xmlRelaxNGNewParserCtxt(URL);
    v10 = v9;
    if (*(a1 + 192))
    {
      xmlRelaxNGSetParserErrors(v9, xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, a1);
    }

    if (*(a1 + 328))
    {
      xmlRelaxNGSetValidStructuredErrors(*(a1 + 216), xmlTextReaderValidityStructuredRelay, a1);
    }

    *(a1 + 208) = xmlRelaxNGParse(v10);
    xmlRelaxNGFreeParserCtxt(v10);
    v11 = *(a1 + 208);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = xmlRelaxNGNewValidCtxt(v11);
    *(a1 + 216) = v3;
    if (!v3)
    {
      xmlRelaxNGFree(*(a1 + 208));
      *(a1 + 208) = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 216) = v3;
    *(a1 + 224) = 1;
  }

  if (*(a1 + 192))
  {
    xmlRelaxNGSetValidErrors(v3, xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, a1);
  }

  if (*(a1 + 328))
  {
    xmlRelaxNGSetValidStructuredErrors(*(a1 + 216), xmlTextReaderValidityStructuredRelay, a1);
  }

  result = 0;
  *(a1 + 228) = 0;
  *(a1 + 232) = 0;
  *(a1 + 16) = 2;
  return result;
}

int xmlTextReaderIsNamespaceDecl(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 14);
  if (!v1)
  {
    return -1;
  }

  if (*(reader + 15))
  {
    v1 = *(reader + 15);
  }

  return *(v1 + 8) == 18;
}

const xmlChar *__cdecl xmlTextReaderConstXmlVersion(xmlTextReaderPtr reader)
{
  if (reader && ((v1 = *(reader + 1)) != 0 || (v4 = *(reader + 4)) != 0 && (v1 = *(v4 + 16)) != 0) && (v2 = *(v1 + 104)) != 0)
  {
    return xmlDictLookup(*(reader + 20), v2, -1);
  }

  else
  {
    return 0;
  }
}

int xmlTextReaderStandalone(xmlTextReaderPtr reader)
{
  if (reader && ((v1 = *(reader + 1)) != 0 || (v3 = *(reader + 4)) != 0 && (v1 = *(v3 + 16)) != 0))
  {
    return *(v1 + 76);
  }

  else
  {
    return -1;
  }
}

int xmlTextReaderLocatorLineNumber(xmlTextReaderLocatorPtr locator)
{
  if (!locator)
  {
    return -1;
  }

  if (*(locator + 10))
  {
    return xmlGetLineNo(*(locator + 10));
  }

  v2 = *(locator + 7);
  if (*(v2 + 8))
  {
    return *(v2 + 52);
  }

  v3 = *(locator + 16);
  if (v3 < 2)
  {
    return *(v2 + 52);
  }

  v2 = *(*(locator + 9) + 8 * v3 - 16);
  if (v2)
  {
    return *(v2 + 52);
  }

  else
  {
    return -1;
  }
}

xmlChar *__cdecl xmlTextReaderLocatorBaseURI(xmlTextReaderLocatorPtr locator)
{
  if (!locator)
  {
    return 0;
  }

  v1 = *(locator + 10);
  if (v1)
  {
    return xmlNodeGetBase(0, v1);
  }

  v3 = *(*(locator + 7) + 8);
  if (!v3)
  {
    v4 = *(locator + 16);
    if (v4 >= 2)
    {
      v5 = *(*(locator + 9) + 8 * v4 - 16);
      if (v5)
      {
        return xmlStrdup(*(v5 + 8));
      }

      return 0;
    }

    v3 = 0;
  }

  return xmlStrdup(v3);
}

void xmlTextReaderSetErrorHandler(xmlTextReaderPtr reader, xmlTextReaderErrorFunc f, void *arg)
{
  v4 = *(reader + 4);
  v5 = *v4;
  if (f)
  {
    v5[22] = xmlTextReaderError;
    v5[31] = 0;
    v4[21] = xmlTextReaderValidityError;
    v5[21] = xmlTextReaderWarning;
    v4[22] = xmlTextReaderValidityWarning;
    *(reader + 41) = 0;
    *(reader + 24) = f;
    *(reader + 25) = arg;
    v6 = *(reader + 27);
    if (v6)
    {
      xmlRelaxNGSetValidErrors(v6, xmlTextReaderValidityErrorRelay, xmlTextReaderValidityWarningRelay, reader);
      xmlRelaxNGSetValidStructuredErrors(*(reader + 27), 0, reader);
    }

    v7 = *(reader + 31);
    if (v7)
    {
      v8 = xmlTextReaderValidityErrorRelay;
      v9 = xmlTextReaderValidityWarningRelay;
LABEL_10:
      xmlSchemaSetValidErrors(v7, v8, v9, reader);
      v11 = *(reader + 31);

      xmlSchemaSetValidStructuredErrors(v11, 0, reader);
    }
  }

  else
  {
    v5[22] = xmlParserError;
    v4[21] = xmlParserValidityError;
    v5[21] = xmlParserWarning;
    v4[22] = xmlParserValidityWarning;
    *(reader + 41) = 0;
    *(reader + 24) = 0;
    *(reader + 25) = 0;
    v10 = *(reader + 27);
    if (v10)
    {
      xmlRelaxNGSetValidErrors(v10, 0, 0, reader);
      xmlRelaxNGSetValidStructuredErrors(*(reader + 27), 0, reader);
    }

    v7 = *(reader + 31);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_10;
    }
  }
}

void xmlTextReaderError(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = xmlTextReaderBuildMessage(__format, va);
  xmlTextReaderGenericError(a1, 4, v3);
}

void xmlTextReaderValidityError(uint64_t a1, xmlChar *str, ...)
{
  va_start(va, str);
  v4 = xmlStrlen(str);
  if (v4 >= 2 && str[v4 - 2] != 58)
  {
    v5 = xmlTextReaderBuildMessage(str, va);
    xmlTextReaderGenericError(a1, 2, v5);
  }
}

void xmlTextReaderWarning(uint64_t a1, char *__format, ...)
{
  va_start(va, __format);
  v3 = xmlTextReaderBuildMessage(__format, va);
  xmlTextReaderGenericError(a1, 3, v3);
}

void xmlTextReaderValidityWarning(uint64_t a1, xmlChar *str, ...)
{
  va_start(va, str);
  v4 = xmlStrlen(str);
  if (v4)
  {
    if (str[v4 - 1] != 58)
    {
      v5 = xmlTextReaderBuildMessage(str, va);
      xmlTextReaderGenericError(a1, 1, v5);
    }
  }
}

void xmlTextReaderSetStructuredErrorHandler(xmlTextReaderPtr reader, xmlStructuredErrorFunc f, void *arg)
{
  v4 = *(reader + 4);
  v5 = *v4;
  if (f)
  {
    v5[22] = 0;
    v5[31] = xmlTextReaderStructuredError;
    v4[21] = xmlTextReaderValidityError;
    v5[21] = xmlTextReaderWarning;
    v4[22] = xmlTextReaderValidityWarning;
    *(reader + 41) = f;
    *(reader + 24) = 0;
    *(reader + 25) = arg;
    v6 = *(reader + 27);
    if (v6)
    {
      xmlRelaxNGSetValidErrors(v6, 0, 0, reader);
      xmlRelaxNGSetValidStructuredErrors(*(reader + 27), xmlTextReaderValidityStructuredRelay, reader);
    }

    v7 = *(reader + 31);
    if (v7)
    {
      xmlSchemaSetValidErrors(v7, 0, 0, reader);
      v8 = *(reader + 31);
      v9 = xmlTextReaderValidityStructuredRelay;
LABEL_10:

      xmlSchemaSetValidStructuredErrors(v8, v9, reader);
    }
  }

  else
  {
    v5[22] = xmlParserError;
    v5[31] = 0;
    v4[21] = xmlParserValidityError;
    v5[21] = xmlParserWarning;
    v4[22] = xmlParserValidityWarning;
    *(reader + 41) = 0;
    *(reader + 24) = 0;
    *(reader + 25) = 0;
    v10 = *(reader + 27);
    if (v10)
    {
      xmlRelaxNGSetValidErrors(v10, 0, 0, reader);
      xmlRelaxNGSetValidStructuredErrors(*(reader + 27), 0, reader);
    }

    v11 = *(reader + 31);
    if (v11)
    {
      xmlSchemaSetValidErrors(v11, 0, 0, reader);
      v8 = *(reader + 31);
      v9 = 0;
      goto LABEL_10;
    }
  }
}

uint64_t xmlTextReaderStructuredError(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 424);
    v3 = *(v2 + 328);
    if (v3)
    {
      return v3(*(v2 + 200));
    }
  }

  return result;
}

int xmlTextReaderIsValid(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v1 = *(reader + 4);
  if (v1 == 4)
  {
    v2 = *(reader + 65);
    return v2 == 0;
  }

  if (v1 == 2)
  {
    v2 = *(reader + 57);
    return v2 == 0;
  }

  v4 = *(reader + 4);
  if (v4 && *(v4 + 156) == 1)
  {
    return *(v4 + 152);
  }

  else
  {
    return 0;
  }
}

void xmlTextReaderGetErrorHandler(xmlTextReaderPtr reader, xmlTextReaderErrorFunc *f, void **arg)
{
  if (f)
  {
    *f = *(reader + 24);
  }

  if (arg)
  {
    *arg = *(reader + 25);
  }
}

uint64_t xmlTextReaderByteConsumed(xmlTextReaderPtr reader)
{
  if (reader && (v1 = *(reader + 4)) != 0)
  {
    return xmlByteConsumed(v1);
  }

  else
  {
    return -1;
  }
}

xmlTextReaderPtr xmlReaderWalker(xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x150uLL, 0x10F004018F9B003uLL);
  if (!v2)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "xmlNewTextReader : malloc failed\n");
    return 0;
  }

  v3 = v2;
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
  *v2 = 0u;
  *(v2 + 5) = 2;
  *(v2 + 1) = doc;
  *(v2 + 20) = xmlDictCreate();
  return v3;
}

xmlTextReaderPtr xmlReaderForDoc(xmlTextReaderPtr cur, const char *URL, const char *encoding, int options)
{
  if (cur)
  {
    v7 = cur;
    v8 = xmlStrlen(cur);

    return xmlReaderForMemory(v7, v8, URL, encoding, options);
  }

  return cur;
}

xmlTextReaderPtr xmlReaderForFile(const char *filename, const char *encoding, int options)
{
  v5 = xmlNewTextReaderFilename(filename);
  v6 = v5;
  if (v5)
  {
    xmlTextReaderSetup(v5, 0, 0, encoding, options);
  }

  return v6;
}

xmlTextReaderPtr xmlReaderForFd(int fd, const char *URL, const char *encoding, int options)
{
  if (fd < 0)
  {
    return 0;
  }

  v7 = xmlParserInputBufferCreateFd(fd, XML_CHAR_ENCODING_NONE);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v7->closecallback = 0;
  v9 = xmlNewTextReader(v7, URL);
  v10 = v9;
  if (v9)
  {
    *(v9 + 5) |= 1u;
    xmlTextReaderSetup(v9, 0, URL, encoding, options);
  }

  else
  {
    xmlFreeParserInputBuffer(v8);
  }

  return v10;
}

xmlTextReaderPtr xmlReaderForIO(xmlInputReadCallback ioread, xmlInputCloseCallback ioclose, void *ioctx, const char *URL, const char *encoding, int options)
{
  if (!ioread)
  {
    return 0;
  }

  v10 = ioclose;
  IO = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, XML_CHAR_ENCODING_NONE);
  if (!IO)
  {
    if (!v10)
    {
      return v10;
    }

    (v10)(ioctx);
    return 0;
  }

  v12 = IO;
  v13 = xmlNewTextReader(IO, URL);
  v10 = v13;
  if (v13)
  {
    *(v13 + 5) |= 1u;
    xmlTextReaderSetup(v13, 0, URL, encoding, options);
  }

  else
  {
    xmlFreeParserInputBuffer(v12);
  }

  return v10;
}

int xmlReaderNewWalker(xmlTextReaderPtr reader, xmlDocPtr doc)
{
  result = -1;
  if (reader && doc)
  {
    v5 = *(reader + 6);
    if (v5)
    {
      xmlFreeParserInputBuffer(v5);
    }

    v6 = *(reader + 4);
    if (v6)
    {
      xmlCtxtReset(v6);
    }

    result = 0;
    *(reader + 44) = 0;
    *(reader + 6) = 0;
    *reader = 0;
    *(reader + 13) = 0;
    *(reader + 7) = 0u;
    *(reader + 1) = doc;
    *(reader + 20) = 2;
    if (!*(reader + 20))
    {
      v7 = *(reader + 4);
      if (!v7 || (v8 = *(v7 + 456)) == 0)
      {
        v8 = xmlDictCreate();
      }

      result = 0;
      *(reader + 20) = v8;
    }
  }

  return result;
}

int xmlReaderNewDoc(xmlTextReaderPtr reader, const xmlChar *cur, const char *URL, const char *encoding, int options)
{
  if (!reader || !cur)
  {
    return -1;
  }

  v10 = xmlStrlen(cur);

  return xmlReaderNewMemory(reader, cur, v10, URL, encoding, options);
}

int xmlReaderNewMemory(xmlTextReaderPtr reader, const char *buffer, int size, const char *URL, const char *encoding, int options)
{
  if (!reader)
  {
    return -1;
  }

  if (!buffer)
  {
    return -1;
  }

  Static = xmlParserInputBufferCreateStatic(buffer, size, XML_CHAR_ENCODING_NONE);
  if (!Static)
  {
    return -1;
  }

  return xmlTextReaderSetup(reader, Static, URL, encoding, options);
}

int xmlReaderNewFile(xmlTextReaderPtr reader, const char *filename, const char *encoding, int options)
{
  if (!reader)
  {
    return -1;
  }

  if (!filename)
  {
    return -1;
  }

  v8 = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
  if (!v8)
  {
    return -1;
  }

  return xmlTextReaderSetup(reader, v8, filename, encoding, options);
}

int xmlReaderNewFd(xmlTextReaderPtr reader, int fd, const char *URL, const char *encoding, int options)
{
  if (!reader)
  {
    return -1;
  }

  if (fd < 0)
  {
    return -1;
  }

  v9 = xmlParserInputBufferCreateFd(fd, XML_CHAR_ENCODING_NONE);
  if (!v9)
  {
    return -1;
  }

  v9->closecallback = 0;

  return xmlTextReaderSetup(reader, v9, URL, encoding, options);
}

int xmlReaderNewIO(xmlTextReaderPtr reader, xmlInputReadCallback ioread, xmlInputCloseCallback ioclose, void *ioctx, const char *URL, const char *encoding, int options)
{
  if (!reader || !ioread)
  {
    return -1;
  }

  IO = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, XML_CHAR_ENCODING_NONE);
  if (!IO)
  {
    if (ioclose)
    {
      (ioclose)(ioctx);
    }

    return -1;
  }

  return xmlTextReaderSetup(reader, IO, URL, encoding, options);
}

uint64_t xmlTextReaderWalkRemoveRef(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != a2)
  {
    return 1;
  }

  v4 = xmlStrdup(*(a2 + 16));
  result = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  return result;
}

void xmlTextReaderFreeIDTableEntry(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[5];
  if (v2)
  {
    v3 = *(v2 + 152);
    v4 = a1[1];
    if (!v4)
    {
      goto LABEL_11;
    }

    if (v3)
    {
      if (xmlDictOwns(*(v2 + 152), v4))
      {
        goto LABEL_11;
      }

      v4 = a1[1];
    }
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {
      v5 = a1[3];
      if (v5)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v3 = 0;
  }

  free(v4);
LABEL_11:
  v5 = a1[3];
  if (v5)
  {
    if (!v3)
    {
LABEL_16:
      free(v5);
      goto LABEL_17;
    }

    if (!xmlDictOwns(v3, v5))
    {
      v5 = a1[3];
      goto LABEL_16;
    }
  }

LABEL_17:

  free(a1);
}

char *xmlTextReaderBuildMessage(char *__format, va_list a2)
{
  LODWORD(v3) = 0;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    v6 = vsnprintf(v4, v3, __format, a2);
    if (v6 < 0)
    {
      break;
    }

    if (v3 == 64000 || v6 < v3)
    {
      return v5;
    }

    if (v6 >> 9 < 0x7D)
    {
      v3 = (v6 + 1);
    }

    else
    {
      v3 = 64000;
    }

    v4 = malloc_type_realloc(v5, v3, 0x100004077774924uLL);
    if (!v4)
    {
      v7 = *__xmlGenericError();
      v8 = *__xmlGenericErrorContext();
      v9 = "xmlRealloc failed !\n";
      goto LABEL_11;
    }
  }

  v7 = *__xmlGenericError();
  v8 = *__xmlGenericErrorContext();
  v9 = "vsnprintf failed !\n";
LABEL_11:
  v7(v8, v9);
  if (v5)
  {
    free(v5);
    return 0;
  }

  return v5;
}

void xmlTextReaderGenericError(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = *(a1 + 424);
    v5 = *(v4 + 192);
    if (v5)
    {
      v5(*(v4 + 200), a3, a2, a1);
    }

    free(a3);
  }
}

xmlRegExecCtxtPtr xmlRegNewExecCtxt(xmlRegexpPtr comp, xmlRegExecCallbacks callback, void *data)
{
  if (!comp || !*(comp + 9) && !*(comp + 2))
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x98uLL, 0x10F00403BC89D2AuLL);
  v7 = v6;
  if (v6)
  {
    v6[18] = 0;
    *(v6 + 7) = 0u;
    *(v6 + 8) = 0u;
    *(v6 + 5) = 0u;
    *(v6 + 6) = 0u;
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0x100000000;
    v6[6] = 0;
    v6[7] = 0;
    v6[1] = comp;
    if (!*(comp + 9))
    {
      v6[4] = **(comp + 2);
    }

    v6[5] = 0;
    v6[2] = callback;
    v6[3] = data;
    v8 = *(comp + 10);
    if (v8 < 1)
    {
      v10 = 0;
      v6[8] = 0;
      goto LABEL_12;
    }

    v9 = malloc_type_malloc(8 * v8, 0x100004052888210uLL);
    v7[8] = v9;
    if (v9)
    {
      bzero(v9, 8 * *(comp + 10));
      v10 = v7[8] + 4 * *(comp + 10);
LABEL_12:
      v7[9] = 0;
      v7[13] = 0;
      *(v7 + 28) = -1;
      v7[16] = 0;
      v7[17] = v10;
      *(v7 + 36) = 0;
      return v7;
    }

    xmlRegexpErrMemory(0, "creating execution context");
    free(v7);
    return 0;
  }

  xmlRegexpErrMemory(0, "creating execution context");
  return v7;
}

_DWORD *xmlRegexpErrMemory(uint64_t a1, const xmlChar *a2)
{
  if (a1)
  {
    v2 = *a1;
    *(a1 + 16) = 2;
  }

  else
  {
    v2 = 0;
  }

  return __xmlRaiseError(0, 0, 0, 0, 0, 0xEu, 2, 3, 0, 0, a2, v2, 0, 0, 0, "Memory allocation failed : %s\n", a2);
}

void xmlRegFreeExecCtxt(xmlRegExecCtxtPtr exec)
{
  if (exec)
  {
    v2 = *(exec + 7);
    if (v2)
    {
      if (*(exec + 8))
      {
        v3 = *(exec + 12);
        if (v3 >= 1)
        {
          v4 = 0;
          v5 = 16;
          do
          {
            v6 = *(*(exec + 7) + v5);
            if (v6)
            {
              free(v6);
              v3 = *(exec + 12);
            }

            ++v4;
            v5 += 24;
          }

          while (v4 < v3);
          v2 = *(exec + 7);
        }
      }

      free(v2);
    }

    v7 = *(exec + 8);
    if (v7)
    {
      free(v7);
    }

    v8 = *(exec + 13);
    if (v8)
    {
      v9 = *(exec + 19);
      if (v9 >= 1)
      {
        v10 = 0;
        for (i = 0; i < v9; ++i)
        {
          v12 = *(*(exec + 13) + v10);
          if (v12)
          {
            free(v12);
            v9 = *(exec + 19);
          }

          v10 += 16;
        }

        v8 = *(exec + 13);
      }

      free(v8);
    }

    v13 = *(exec + 16);
    if (v13)
    {
      free(v13);
    }

    free(exec);
  }
}

uint64_t xmlRegExecPushStringInternal(unsigned int *a1, xmlChar *cur, xmlChar *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 1);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = *a1;
  if (result)
  {
    return result;
  }

  v8 = a3;
  if (*(v6 + 72))
  {

    return xmlRegCompactPushString(a1, v6, cur, a3);
  }

  if (cur)
  {
    if (a1[19] < 1)
    {
      v11 = cur;
    }

    else
    {
      xmlFARegExecSaveInputString(a1, cur, a3);
      result = *a1;
      if (result)
      {
        return result;
      }

      v10 = *(a1 + 13) + 16 * a1[20];
      v11 = *v10;
      v8 = *(v10 + 8);
    }
  }

  else
  {
    if (**(a1 + 4) == 2)
    {
      return 1;
    }

    v11 = 0;
  }

  v67 = 1;
  v66 = a4;
  v65 = cur;
  while (2)
  {
    v12 = *(a1 + 4);
    if (!v11)
    {
      v13 = *v12;
      if (cur || v13 == 2)
      {
        return v13 == 2;
      }

      if (!*(a1 + 8))
      {
        v11 = 0;
        break;
      }
    }

    a1[11] = 0;
    v14 = a1[10];
    while (1)
    {
      v15 = v12[6];
      if (v14 >= v15)
      {
        goto LABEL_118;
      }

      v16 = *(v12 + 4);
      v17 = (v16 + 24 * v14);
      v18 = v17[2];
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_86;
      }

      v19 = *v17;
      v20 = v17[4];
      if (v20 != 1193047)
      {
        break;
      }

      if (!(cur | v11))
      {
        v11 = 0;
        goto LABEL_90;
      }

      if (v11 && v15 >= 1)
      {
        v27 = 0;
        v28 = 0;
        while (1)
        {
          v29 = (*(v12 + 4) + v27);
          v30 = v29[3];
          if ((v30 & 0x80000000) == 0 && v29 != v17)
          {
            v31 = (*(*(a1 + 1) + 48) + 8 * v30);
            v32 = *(*(a1 + 8) + 4 * v30);
            if (v32 < v31[1] && *v29 && xmlStrEqual(v11, *(*v29 + 24)))
            {
LABEL_50:
              cur = v65;
              a4 = v66;
              goto LABEL_86;
            }

            if (v32 >= *v31 && v32 < v31[1] && *v29 && xmlStrEqual(v11, *(*v29 + 24)))
            {
              break;
            }
          }

          ++v28;
          v12 = *(a1 + 4);
          v27 += 24;
          if (v28 >= v12[6])
          {
            goto LABEL_50;
          }
        }

        cur = v65;
        a4 = v66;
LABEL_90:
        v49 = *(a1 + 2);
        if (v49)
        {
          v50 = v19 == 0;
        }

        else
        {
          v50 = 1;
        }

        if (!v50 && v8 != 0)
        {
          v49(*(a1 + 3), *(v19 + 24), *(v19 + 88), v8);
        }

        if (*(*(a1 + 4) + 24) > (a1[10] + 1))
        {
          if (a1[19] <= 0)
          {
            xmlFARegExecSaveInputString(a1, v11, v8);
          }

          xmlFARegExecSave(a1);
        }

        v52 = v17[3];
        if ((v52 & 0x80000000) == 0)
        {
          ++*(*(a1 + 8) + 4 * v52);
        }

        v53 = v17[4];
        if (v53 <= 0x123455)
        {
          *(*(a1 + 8) + 4 * v53) = 0;
        }

        v54 = *(*(*(a1 + 1) + 16) + 8 * v17[2]);
        if (v54 && *v54 == 4)
        {
          v55 = *(a1 + 16);
          if (v55)
          {
            free(v55);
          }

          v56 = xmlStrdup(v11);
          *(a1 + 15) = *(a1 + 4);
          *(a1 + 16) = v56;
          memcpy(*(a1 + 17), *(a1 + 8), 4 * *(*(a1 + 1) + 40));
          v54 = *(*(*(a1 + 1) + 16) + 8 * v17[2]);
        }

        *(a1 + 4) = v54;
        a1[10] = 0;
        if (*v17)
        {
          v57 = *(a1 + 13);
          if (v57)
          {
            v58 = a1[19];
            v59 = a1[20] + 1;
            a1[20] = v59;
            v67 = 1;
            if (v59 < v58)
            {
              goto LABEL_133;
            }

            v8 = 0;
            v11 = 0;
            goto LABEL_134;
          }

          v8 = 0;
          v11 = 0;
        }

        v67 = 1;
        goto LABEL_134;
      }

LABEL_86:
      v14 = a1[10] + 1;
      a1[10] = v14;
      v12 = *(a1 + 4);
    }

    if (v20 == 1193046)
    {
      if (v15 < 1)
      {
        goto LABEL_90;
      }

      v21 = v14;
      v22 = (v16 + 12);
      while (1)
      {
        v24 = *v22;
        v22 += 6;
        v23 = v24;
        if (v21)
        {
          if ((v23 & 0x80000000) == 0)
          {
            v25 = (*(*(a1 + 1) + 48) + 8 * v23);
            v26 = *(*(a1 + 8) + 4 * v23);
            if (v26 < *v25 || v26 > v25[1])
            {
              goto LABEL_86;
            }
          }
        }

        --v21;
        if (!--v15)
        {
          goto LABEL_90;
        }
      }
    }

    if ((v20 & 0x80000000) == 0)
    {
      v33 = *(*(a1 + 8) + 4 * v20);
      v34 = (*(*(a1 + 1) + 48) + 8 * v20);
      if (v33 < *v34)
      {
        goto LABEL_86;
      }

      v35 = v33 <= v34[1];
LABEL_85:
      if (v35 == 1)
      {
        goto LABEL_90;
      }

      goto LABEL_86;
    }

    if (v19)
    {
      if (!v11)
      {
        goto LABEL_86;
      }

      v36 = xmlRegStrEqualWildcard(*(v19 + 24), v11);
      v37 = v36 ^ 1;
      if (!a4)
      {
        v37 = 0;
      }

      if (!(*(v19 + 40) ? v37 : v36))
      {
        goto LABEL_86;
      }

      v39 = v17[3];
      if ((v39 & 0x80000000) == 0 && *(*(a1 + 8) + 4 * v39) >= *(*(*(a1 + 1) + 48) + 8 * v39 + 4))
      {
        goto LABEL_86;
      }

      if (*(v19 + 12) < 1)
      {
        goto LABEL_90;
      }

      v40 = *(v19 + 16);
      if (v40 < 1)
      {
        goto LABEL_90;
      }

      v41 = *(*(*(a1 + 1) + 16) + 8 * v18);
      if (v15 > v14 + 1)
      {
        if (a1[19] <= 0)
        {
          xmlFARegExecSaveInputString(a1, v11, v8);
        }

        xmlFARegExecSave(a1);
        v40 = *(v19 + 16);
      }

      v42 = v41;
      v43 = 1;
      a1[11] = 1;
      v35 = 1;
      if (v40 != 1)
      {
        while (1)
        {
          v44 = a1[20];
          a1[20] = v44 + 1;
          v45 = *(a1 + 13) + 16 * (v44 + 1);
          v11 = *v45;
          v8 = *(v45 + 8);
          if (!*v45)
          {
            break;
          }

          if (v43 >= *(v19 + 12))
          {
            v46 = a1[10];
            v47 = *(a1 + 4);
            a1[10] = -1;
            *(a1 + 4) = v42;
            if (a1[19] <= 0)
            {
              xmlFARegExecSaveInputString(a1, v11, v8);
            }

            xmlFARegExecSave(a1);
            a1[10] = v46;
            *(a1 + 4) = v47;
            a4 = v66;
          }

          v35 = xmlStrEqual(v11, *(v19 + 24));
          v43 = a1[11] + 1;
          a1[11] = v43;
          if (v35 != 1)
          {
            goto LABEL_81;
          }

          if (v43 == *(v19 + 16))
          {
            goto LABEL_80;
          }
        }

        a1[20] = v44;
LABEL_80:
        v35 = 1;
      }

LABEL_81:
      if (v43 < *(v19 + 12) || v35 < 1)
      {
        break;
      }

      goto LABEL_85;
    }

    fwrite("epsilon transition left at runtime\n", 0x23uLL, 1uLL, *MEMORY[0x1E69E9848]);
    *a1 = -2;
    v14 = a1[10];
LABEL_118:
    if (!v14 && *(*(a1 + 4) + 24))
    {
LABEL_134:
      result = *a1;
      if (result)
      {
        return result;
      }

      continue;
    }

    break;
  }

  if (v67)
  {
    v60 = *(a1 + 4);
    if (!v60 || *v60 == 4)
    {
      v67 = 1;
      goto LABEL_130;
    }

    v61 = *(a1 + 16);
    if (v61)
    {
      free(v61);
    }

    v62 = xmlStrdup(v11);
    *(a1 + 15) = *(a1 + 4);
    *(a1 + 16) = v62;
    v63 = *(*(a1 + 1) + 40);
    if (v63)
    {
      memcpy(*(a1 + 17), *(a1 + 8), 4 * v63);
    }
  }

  v67 = 0;
LABEL_130:
  a1[1] = 0;
  xmlFARegExecRollBack(a1);
  v57 = *(a1 + 13);
  if (!v57)
  {
    goto LABEL_134;
  }

  result = *a1;
  if (!result)
  {
    v59 = a1[20];
LABEL_133:
    v64 = (v57 + 16 * v59);
    v11 = *v64;
    v8 = v64[1];
    goto LABEL_134;
  }

  return result;
}

int xmlRegExecPushString2(xmlRegExecCtxtPtr exec, const xmlChar *value, const xmlChar *value2, void *data)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!exec || !*(exec + 1))
  {
    v5 = -1;
    goto LABEL_9;
  }

  v5 = *exec;
  if (*exec)
  {
LABEL_9:
    v13 = *MEMORY[0x1E69E9840];
    return v5;
  }

  if (value2)
  {
    v9 = strlen(value2);
    v10 = strlen(value);
    v11 = v10 + v9;
    if (v10 + v9 < 149)
    {
      v12 = v18;
    }

    else
    {
      v12 = malloc_type_malloc((v11 + 2), 0x100004077774924uLL);
      if (!v12)
      {
        v5 = -1;
        *exec = -1;
        goto LABEL_9;
      }
    }

    memset(v18, 0, sizeof(v18));
    memcpy(v12, value, v10);
    v12[v10] = 124;
    memcpy(&v12[v10 + 1], value2, v9);
    v12[v11 + 1] = 0;
    v16 = *(exec + 1);
    if (*(v16 + 72))
    {
      v17 = xmlRegCompactPushString(exec, v16, v12, data);
    }

    else
    {
      v17 = xmlRegExecPushStringInternal(exec, v12, data, 1);
    }

    v5 = v17;
    if (v12 != v18)
    {
      free(v12);
    }

    goto LABEL_9;
  }

  v15 = *MEMORY[0x1E69E9840];

  return xmlRegExecPushStringInternal(exec, value, data, 0);
}

uint64_t xmlRegCompactPushString(uint64_t a1, uint64_t a2, xmlChar *cur, uint64_t a4)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 72);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 96);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 80);
  v10 = *(a2 + 88);
  if (!cur)
  {
    return *(v5 + 4 * (v9 + v9 * v10)) == 2;
  }

  v23 = *(a1 + 80);
  if (v10 >= 1)
  {
    v22 = v10 + 1;
    v12 = v10 * v9;
    v13 = 4 * (v10 + 1) * v9 + 4;
    while (1)
    {
      v14 = *(v5 + v13);
      v15 = v14 - 1;
      if (v14 >= 1 && v14 <= *(a2 + 64) && xmlRegStrEqualWildcard(*v6, cur))
      {
        break;
      }

      ++v12;
      ++v6;
      v13 += 4;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 80) = v15;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = *(a2 + 80);
      v20 = v22;
      if (v19)
      {
        v18(*(a1 + 24), cur, *(v19 + 8 * v12), a4);
        v5 = *(a2 + 72);
        v20 = *(a2 + 88) + 1;
      }
    }

    else
    {
      v20 = v22;
    }

    v21 = *(v5 + 4 * v20 * v15);
    if (v21 == 2)
    {
      return 1;
    }

    if (v21 != 4)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *(a1 + 128);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 128) = xmlStrdup(cur);
  *(a1 + 112) = v23;
  result = 0xFFFFFFFFLL;
  *a1 = -1;
  return result;
}

uint64_t xmlRegExecGetValues(uint64_t a1, int a2, int *a3, _DWORD *a4, uint64_t a5, _DWORD *a6)
{
  result = 0xFFFFFFFFLL;
  if (!a1)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!a5)
  {
    return result;
  }

  v11 = *a3;
  if (*a3 < 1)
  {
    return result;
  }

  *a3 = 0;
  *a4 = 0;
  v12 = *(a1 + 8);
  if (!v12 || (v13 = *(v12 + 72)) == 0)
  {
    if (a6)
    {
      *a6 = **(a1 + 32) == 2;
    }

    if (a2)
    {
      v15 = *(a1 + 120);
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      v15 = *(a1 + 32);
      if (!v15)
      {
        return result;
      }
    }

    if (*(v15 + 24) < 1)
    {
      return 0;
    }

    v16 = 0;
    v17 = 0;
    v18 = 136;
    if (!a2)
    {
      v18 = 64;
    }

    v52 = v18;
    v19 = 1;
    while (1)
    {
      v20 = *(v15 + 32);
      v21 = *(v20 + v16 + 8);
      if ((v21 & 0x80000000) == 0)
      {
        v22 = *(v20 + v16);
        if (v22)
        {
          v23 = *(v22 + 24);
          if (v23)
          {
            v24 = *(v20 + v16 + 16);
            if (v24 == 1193046)
            {
              v25 = *__xmlGenericError();
              v26 = *__xmlGenericErrorContext();
              v27 = 4395;
              goto LABEL_28;
            }

            if (v24 == 1193047)
            {
              v25 = *__xmlGenericError();
              v26 = *__xmlGenericErrorContext();
              v27 = 4392;
LABEL_28:
              v25(v26, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlregexp.c", v27);
              goto LABEL_40;
            }

            v28 = *(v20 + v16 + 12);
            if ((v28 & 0x80000000) != 0)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v32 = *(*(v31 + 16) + 8 * v21);
                if (v32)
                {
                  if (*v32 != 4)
                  {
LABEL_37:
                    if (*(v22 + 40))
                    {
                      v23 = *(v22 + 32);
                    }

                    *(a5 + 8 * v17++) = v23;
                    ++*a3;
                  }
                }
              }
            }

            else
            {
              v29 = *(a1 + 8);
              if (!v29)
              {
                goto LABEL_37;
              }

              v30 = *(v29 + 48);
              if (!v30 || *(*(a1 + v52) + 4 * v28) < *(v30 + 8 * v28 + 4))
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_40:
      v33 = *(v15 + 24);
      v16 += 24;
      v34 = v19++ < v33;
      v34 = v34 && v17 < v11;
      if (!v34)
      {
        if (v33 < 1 || v17 >= v11)
        {
          return 0;
        }

        v36 = 0;
        v37 = 1;
        do
        {
          v38 = *(v15 + 32);
          v39 = *(v38 + v36 + 8);
          if ((v39 & 0x80000000) == 0)
          {
            v40 = *(v38 + v36);
            if (v40)
            {
              v41 = *(v40 + 24);
              if (v41)
              {
                v42 = v38 + v36;
                if (*(v42 + 16) >> 1 != 596523 && (*(v42 + 12) & 0x80000000) != 0)
                {
                  v43 = *(*(*(a1 + 8) + 16) + 8 * v39);
                  if (v43)
                  {
                    if (*v43 == 4)
                    {
                      if (*(v40 + 40))
                      {
                        v41 = *(v40 + 32);
                      }

                      *(a5 + 8 * v17++) = v41;
                      ++*a4;
                      LODWORD(v33) = *(v15 + 24);
                    }
                  }
                }
              }
            }
          }

          result = 0;
          if (v37 >= v33)
          {
            break;
          }

          v36 += 24;
          ++v37;
        }

        while (v17 < v11);
        return result;
      }
    }
  }

  if (a2)
  {
    v14 = *(a1 + 112);
    if (v14 == -1)
    {
      return result;
    }
  }

  else
  {
    v14 = *(a1 + 80);
  }

  if (a6)
  {
    *a6 = *(v13 + 4 * (v14 + v14 * *(v12 + 88))) == 2;
  }

  v44 = *(v12 + 88);
  if (v44 < 1)
  {
    return 0;
  }

  v45 = 0;
  v46 = 0;
  do
  {
    v47 = *(v12 + 72);
    v48 = *(v47 + 4 * (v45 + (v44 + 1) * v14) + 4);
    if (v48 >= 1 && v48 <= *(v12 + 64) && *(v47 + 4 * (v48 - 1) * (v44 + 1)) != 4)
    {
      *(a5 + 8 * v46++) = *(*(v12 + 96) + 8 * v45);
      ++*a3;
      v44 = *(v12 + 88);
    }

    ++v45;
  }

  while (v45 < v44 && v46 < v11);
  result = 0;
  if (v44 >= 1 && v46 < v11)
  {
    v49 = 0;
    do
    {
      v50 = *(v12 + 72);
      v51 = *(v50 + 4 * (v49 + (v44 + 1) * v14) + 4);
      if (v51 >= 1 && v51 <= *(v12 + 64) && *(v50 + 4 * (v51 - 1) * (v44 + 1)) == 4)
      {
        *(a5 + 8 * v46++) = *(*(v12 + 96) + 8 * v49);
        ++*a4;
        v44 = *(v12 + 88);
      }

      result = 0;
      ++v49;
    }

    while (v49 < v44 && v46 < v11);
  }

  return result;
}

int xmlRegExecErrInfo(xmlRegExecCtxtPtr exec, const xmlChar **string, int *nbval, int *nbneg, xmlChar **values, int *terminal)
{
  if (!exec)
  {
    return -1;
  }

  if (string)
  {
    if (*exec)
    {
      v6 = *(exec + 16);
    }

    else
    {
      v6 = 0;
    }

    *string = v6;
  }

  return xmlRegExecGetValues(exec, 1, nbval, nbneg, values, terminal);
}

void xmlRegexpPrint(FILE *output, xmlRegexpPtr regexp)
{
  if (output)
  {
    fwrite(" regexp: ", 9uLL, 1uLL, output);
    if (regexp)
    {
      fprintf(output, "'%s' ", *regexp);
      fputc(10, output);
      fprintf(output, "%d atoms:\n", *(regexp + 6));
      v31 = regexp;
      if (*(regexp + 6) >= 1)
      {
        v4 = 0;
        while (1)
        {
          fprintf(output, " %02d ", v4);
          v5 = *(*(regexp + 4) + 8 * v4);
          fwrite(" atom: ", 7uLL, 1uLL, output);
          if (v5)
          {
            break;
          }

          fwrite("NULL\n", 5uLL, 1uLL, output);
LABEL_42:
          ++v4;
          regexp = v31;
          if (v4 >= *(v31 + 6))
          {
            goto LABEL_43;
          }
        }

        if (*(v5 + 40))
        {
          fwrite("not ", 4uLL, 1uLL, output);
        }

        xmlRegPrintAtomType(output, *(v5 + 4));
        v6 = *(v5 + 8);
        if (v6 > 4)
        {
          if (v6 > 6)
          {
            if (v6 == 7)
            {
              v7 = "all ";
              v8 = 4;
              goto LABEL_27;
            }

            if (v6 == 8)
            {
              v7 = "range ";
              v8 = 6;
              goto LABEL_27;
            }

            goto LABEL_28;
          }

          if (v6 != 5)
          {
            v7 = "onceonly ";
            v8 = 9;
            goto LABEL_27;
          }

          v7 = "+ ";
        }

        else
        {
          if (v6 <= 2)
          {
            if (v6 == 1)
            {
              v7 = "epsilon ";
              v8 = 8;
              goto LABEL_27;
            }

            if (v6 == 2)
            {
              v7 = "once ";
              v8 = 5;
LABEL_27:
              fwrite(v7, v8, 1uLL, output);
              v6 = *(v5 + 8);
            }

LABEL_28:
            if (v6 == 8)
            {
              fprintf(output, "%d-%d ", *(v5 + 12), *(v5 + 16));
            }

            v9 = *(v5 + 4);
            if (v9 == 5)
            {
              fprintf(output, "'%s' ", *(v5 + 24));
              v9 = *(v5 + 4);
            }

            if (v9 == 3)
            {
              fprintf(output, "%d entries\n", *(v5 + 76));
              if (*(v5 + 76) >= 1)
              {
                v10 = 0;
                do
                {
                  v11 = *(*(v5 + 80) + 8 * v10);
                  fwrite("  range: ", 9uLL, 1uLL, output);
                  if (*v11)
                  {
                    fwrite("negative ", 9uLL, 1uLL, output);
                  }

                  xmlRegPrintAtomType(output, v11[1]);
                  fprintf(output, "%c - %c\n", v11[2], v11[3]);
                  ++v10;
                }

                while (v10 < *(v5 + 76));
              }
            }

            else if (v9 == 2)
            {
              fprintf(output, "char %c\n", *(v5 + 44));
            }

            else
            {
              fputc(10, output);
            }

            goto LABEL_42;
          }

          if (v6 == 3)
          {
            v7 = "? ";
          }

          else
          {
            v7 = "* ";
          }
        }

        v8 = 2;
        goto LABEL_27;
      }

LABEL_43:
      fprintf(output, "%d states:", *(regexp + 2));
      fputc(10, output);
      if (*(regexp + 2) >= 1)
      {
        for (i = 0; i < *(v31 + 2); ++i)
        {
          v13 = *(*(regexp + 2) + 8 * i);
          fwrite(" state: ", 8uLL, 1uLL, output);
          if (v13)
          {
            v14 = *v13;
            if (*v13 == 1)
            {
              fwrite("START ", 6uLL, 1uLL, output);
              v14 = *v13;
            }

            if (v14 == 2)
            {
              fwrite("FINAL ", 6uLL, 1uLL, output);
            }

            fprintf(output, "%d, %d transitions:\n", v13[4], v13[6]);
            if (v13[6] >= 1)
            {
              v15 = 0;
              for (j = 0; j < v13[6]; ++j)
              {
                v17 = *(v13 + 4);
                fwrite("  trans: ", 9uLL, 1uLL, output);
                if (v17)
                {
                  v18 = v17 + v15;
                  if ((*(v17 + v15 + 8) & 0x80000000) == 0)
                  {
                    v19 = *(v18 + 20);
                    if (v19)
                    {
                      if (v19 == 2)
                      {
                        v20 = "last not determinist, ";
                        v21 = 22;
                      }

                      else
                      {
                        v20 = "not determinist, ";
                        v21 = 17;
                      }

                      fwrite(v20, v21, 1uLL, output);
                    }

                    if ((*(v17 + v15 + 12) & 0x80000000) == 0)
                    {
                      fprintf(output, "counted %d, ", *(v17 + v15 + 12));
                    }

                    v24 = *(v17 + v15 + 16);
                    if (v24 == 1193046)
                    {
                      fwrite("all transition, ", 0x10uLL, 1uLL, output);
                    }

                    else if ((v24 & 0x80000000) == 0)
                    {
                      fprintf(output, "count based %d, ", *(v17 + v15 + 16));
                    }

                    v25 = *(v17 + v15);
                    if (v25)
                    {
                      if (v25[1] == 2)
                      {
                        fprintf(output, "char %c ", v25[11]);
                        v25 = *(v17 + v15);
                      }

                      v29 = *v25;
                      v30 = *(v18 + 8);
                      fprintf(output, "atom %d, to %d\n");
                    }

                    else
                    {
                      v26 = *(v18 + 8);
                      fprintf(output, "epsilon to %d\n");
                    }

                    goto LABEL_73;
                  }

                  v22 = "removed\n";
                  v23 = 8;
                }

                else
                {
                  v22 = "NULL\n";
                  v23 = 5;
                }

                fwrite(v22, v23, 1uLL, output);
LABEL_73:
                v15 += 24;
              }
            }
          }

          else
          {
            fwrite("NULL\n", 5uLL, 1uLL, output);
          }

          regexp = v31;
        }
      }

      fprintf(output, "%d counters:\n", *(regexp + 10));
      if (*(regexp + 10) >= 1)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          fprintf(output, " %d: min %d max %d\n", v28++, *(*(regexp + 6) + v27), *(*(regexp + 6) + v27 + 4));
          v27 += 8;
        }

        while (v28 < *(regexp + 10));
      }
    }

    else
    {

      fwrite("NULL\n", 5uLL, 1uLL, output);
    }
  }
}

xmlRegexpPtr xmlRegexpCompile(const xmlChar *regexp)
{
  v2 = malloc_type_malloc(0x78uLL, 0x10B00408D8BA187uLL);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v2[14] = 0;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  if (regexp)
  {
    v4 = xmlStrdup(regexp);
    *v3 = v4;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 8) = v4;
  *(v3 + 16) = 0;
  *(v3 + 104) = 0xFFFFFFFFLL;
  *(v3 + 32) = 0;
  v6 = xmlRegNewState(v3);
  *(v3 + 40) = v6;
  *(v3 + 24) = v6;
  xmlRegStatePush(v3, v6);
  xmlFAParseRegExp(v3, 1);
  if (**(v3 + 8))
  {
    *(v3 + 16) = 1450;
    xmlRegexpErrCompile(v3, "xmlFAParseRegExp: extra characters");
  }

  if (*(v3 + 16) || (v7 = *(v3 + 40), *(v3 + 32) = v7, **(v3 + 24) = 1, *v7 = 2, xmlFAEliminateEpsilonTransitions(v3), *(v3 + 16)))
  {
    v5 = 0;
  }

  else
  {
    v5 = xmlRegEpxFromParse(v3);
  }

  xmlRegFreeParserCtxt(v3);
  return v5;
}

char *xmlRegNewState(uint64_t a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0x1030040B3D63AACuLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    *v2 = 3;
  }

  else
  {
    xmlRegexpErrMemory(a1, "allocating state");
  }

  return v3;
}

uint64_t xmlRegStatePush(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    *(a1 + 72) = 4;
    v5 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    *(a1 + 80) = v5;
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (*(a1 + 76) < v4)
  {
    v5 = *(a1 + 80);
LABEL_17:
    result = 0;
    v10 = *(a1 + 76);
    *(a2 + 16) = v10;
    *(a1 + 76) = v10 + 1;
    v5[v10] = a2;
    return result;
  }

  if (v4 < 1)
  {
    v8 = 4;
  }

  else
  {
    if (v4 > 0x3B9AC9FF)
    {
LABEL_10:
      v7 = "Malloc failed.\n";
      goto LABEL_19;
    }

    if (1000000000 - ((v4 + 1) >> 1) >= v4)
    {
      v8 = v4 + ((v4 + 1) >> 1);
    }

    else
    {
      v8 = 1000000000;
    }
  }

  v9 = malloc_type_realloc(*(a1 + 80), 8 * v8, 0x2004093837F09uLL);
  if (v9)
  {
    v5 = v9;
    *(a1 + 80) = v9;
    *(a1 + 72) = v8;
    goto LABEL_17;
  }

  v7 = "adding state";
LABEL_19:
  xmlRegexpErrMemory(a1, v7);
  return 0xFFFFFFFFLL;
}

uint64_t xmlFAParseRegExp(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  *(a1 + 32) = 0;
  result = xmlFAParseBranch(a1, 0);
  if (a2)
  {
    **(a1 + 40) = 2;
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 40);
  if (*v6 != 124)
  {
    goto LABEL_8;
  }

  do
  {
    if (*(a1 + 16))
    {
      break;
    }

    *(a1 + 8) = v6 + 1;
    *(a1 + 32) = 0;
    *(a1 + 40) = v4;
    result = xmlFAParseBranch(a1, v7);
    v6 = *(a1 + 8);
  }

  while (*v6 == 124);
  if (!a2)
  {
    *(a1 + 40) = v7;
LABEL_8:
    *(a1 + 32) = v7;
  }

  return result;
}

_DWORD *xmlRegexpErrCompile(uint64_t a1, const xmlChar *a2)
{
  cur = *a1;
  v3 = *(a1 + 8);
  *(a1 + 16) = 1450;
  return __xmlRaiseError(0, 0, 0, 0, 0, 0xEu, 1450, 3, 0, 0, a2, cur, 0, v3 - cur, 0, "failed to compile: %s\n", a2);
}

void xmlRegFreeParserCtxt(int *a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 10);
  if (v3)
  {
    if (a1[19] >= 1)
    {
      v4 = 0;
      do
      {
        xmlRegFreeState(*(*(a1 + 10) + 8 * v4++));
      }

      while (v4 < a1[19]);
      v3 = *(a1 + 10);
    }

    free(v3);
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    if (a1[15] >= 1)
    {
      v6 = 0;
      do
      {
        xmlRegFreeAtom(*(*(a1 + 8) + 8 * v6++));
      }

      while (v6 < a1[15]);
      v5 = *(a1 + 8);
    }

    free(v5);
  }

  v7 = *(a1 + 12);
  if (v7)
  {
    free(v7);
  }

  free(a1);
}

void xmlFAEliminateEpsilonTransitions(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    return;
  }

  LODWORD(v2) = *(a1 + 76);
  if (v2 < 1)
  {
    goto LABEL_66;
  }

  v3 = 0;
  do
  {
    v4 = *(*(a1 + 80) + 8 * v3);
    if (v4 && v4[6] == 1)
    {
      v5 = *v4;
      if (*v4 != 2 && v5 != 5)
      {
        v7 = *(v4 + 4);
        if (!*v7)
        {
          v8 = *(v7 + 8);
          if ((v8 & 0x80000000) == 0 && v3 != v8 && (*(v7 + 12) & 0x80000000) != 0 && v5 != 1 && (*(v7 + 16) & 0x80000000) != 0)
          {
            v9 = v4[11];
            if (v9 >= 1)
            {
              for (i = 0; i < v9; ++i)
              {
                v11 = *(*(a1 + 80) + 8 * *(*(v4 + 6) + 4 * i));
                v12 = *(v11 + 24);
                if (v12 >= 1)
                {
                  v13 = 0;
                  for (j = 0; j < v12; ++j)
                  {
                    v15 = *(v11 + 32) + v13;
                    if (v3 == *(v15 + 8))
                    {
                      *(v15 + 8) = -1;
                      xmlRegStateAddTrans(a1, v11, *v15, *(*(a1 + 80) + 8 * v8), *(v15 + 12), *(v15 + 16));
                      v12 = *(v11 + 24);
                    }

                    v13 += 24;
                  }

                  v9 = v4[11];
                }
              }

              if (*v4 == 2)
              {
                **(*(a1 + 80) + 8 * v8) = 2;
              }
            }

            v4[6] = 0;
            *v4 = 5;
            LODWORD(v2) = *(a1 + 76);
          }
        }
      }
    }

    ++v3;
  }

  while (v3 < v2);
  if (v2 < 1)
  {
    goto LABEL_66;
  }

  v16 = 0;
  do
  {
    v17 = *(*(a1 + 80) + 8 * v16);
    if (v17 && *v17 == 5)
    {
      xmlRegFreeState(v17);
      *(*(a1 + 80) + 8 * v16) = 0;
      LODWORD(v2) = *(a1 + 76);
    }

    ++v16;
  }

  while (v16 < v2);
  if (v2 < 1)
  {
    goto LABEL_66;
  }

  v18 = 0;
  v19 = v2;
  do
  {
    v20 = v19--;
    v21 = *(*(a1 + 80) + 8 * v19);
    if (v21)
    {
      v22 = *(v21 + 24);
      if (v22)
      {
        if (v22 >= 1)
        {
          v23 = 0;
          for (k = 0; k < v22; ++k)
          {
            v25 = *(v21 + 32);
            if (!*(v25 + v23))
            {
              v26 = v25 + v23;
              v27 = *(v25 + v23 + 8);
              if ((v27 & 0x80000000) == 0)
              {
                if (v19 == v27)
                {
                  *(v26 + 8) = -1;
                }

                else
                {
                  v28 = v25 + v23;
                  if ((*(v28 + 16) & 0x80000000) != 0)
                  {
                    *(v26 + 8) = -2;
                    v18 = 1;
                    *(v21 + 4) = 1;
                    xmlFAReduceEpsilonTransitions(a1, v19, v27, *(v28 + 12));
                    *(v21 + 4) = 0;
                    v22 = *(v21 + 24);
                  }
                }
              }
            }

            v23 += 24;
          }
        }
      }

      else if (*v21 != 2)
      {
        *v21 = 4;
      }
    }
  }

  while (v20 > 1);
  v2 = *(a1 + 76);
  if (v18)
  {
    v29 = *(a1 + 80);
    if (v2 < 1)
    {
      goto LABEL_73;
    }

    for (m = 0; m != v2; ++m)
    {
      v31 = v29[m];
      if (v31)
      {
        v32 = *(v31 + 24);
        if (v32 >= 1)
        {
          v33 = (*(v31 + 32) + 8);
          do
          {
            if (!*(v33 - 1) && (v33[2] & 0x80000000) != 0 && (*v33 & 0x80000000) == 0)
            {
              *v33 = -1;
            }

            v33 += 6;
            --v32;
          }

          while (v32);
        }
      }
    }
  }

  else
  {
LABEL_66:
    v29 = *(a1 + 80);
  }

  if (v2 >= 1)
  {
    v34 = 0;
    do
    {
      v35 = v29[v34];
      if (v35)
      {
        *(v35 + 12) = 0;
      }

      ++v34;
    }

    while (v2 != v34);
    v36 = 1;
    goto LABEL_74;
  }

LABEL_73:
  v36 = 0;
LABEL_74:
  v37 = *v29;
  if (*v29)
  {
    *(v37 + 12) = 1;
    while (1)
    {
      *(v37 + 12) = 2;
      v38 = *(v37 + 24);
      if (v38 < 1)
      {
        break;
      }

      v39 = *(v37 + 32);
      v37 = 0;
      v40 = (v39 + 16);
      do
      {
        v41 = *(v40 - 2);
        if ((v41 & 0x80000000) == 0 && (*(v40 - 2) || (*v40 & 0x80000000) == 0))
        {
          v42 = v29[v41];
          if (v42)
          {
            if (!*(v42 + 12))
            {
              *(v42 + 12) = 1;
              v37 = v42;
            }
          }
        }

        v40 += 6;
        --v38;
      }

      while (v38);
      if (!v37)
      {
        goto LABEL_88;
      }

LABEL_94:
      if (!v37)
      {
        goto LABEL_95;
      }
    }

    v37 = 0;
LABEL_88:
    if (v2 >= 2)
    {
      v43 = v2 - 1;
      v44 = v29 + 1;
      while (1)
      {
        v37 = *v44;
        if (*v44)
        {
          if (*(v37 + 12) == 1)
          {
            break;
          }
        }

        ++v44;
        if (!--v43)
        {
          goto LABEL_95;
        }
      }
    }

    goto LABEL_94;
  }

LABEL_95:
  if (v36)
  {
    v45 = 0;
    do
    {
      v46 = *(*(a1 + 80) + 8 * v45);
      if (v46)
      {
        if (!*(v46 + 12))
        {
          xmlRegFreeState(v46);
          *(*(a1 + 80) + 8 * v45) = 0;
          LODWORD(v2) = *(a1 + 76);
        }
      }

      ++v45;
    }

    while (v45 < v2);
  }
}

int *xmlRegEpxFromParse(uint64_t a1)
{
  v2 = malloc_type_malloc(0x68uLL, 0x10B0040C35ADC19uLL);
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
    *v2 = *a1;
    v2[2] = *(a1 + 76);
    *(v2 + 2) = *(a1 + 80);
    v2[6] = *(a1 + 60);
    *(v2 + 4) = *(a1 + 64);
    v2[10] = *(a1 + 92);
    *(v2 + 6) = *(a1 + 96);
    v4 = *(a1 + 104);
    v5 = *(a1 + 112);
    v2[14] = v4;
    v2[15] = v5;
    if (v4 == -1)
    {
      xmlRegexpIsDeterminist(v2);
      if (!v3[14])
      {
LABEL_9:
        *a1 = 0;
        *(a1 + 76) = 0;
        *(a1 + 80) = 0;
        *(a1 + 60) = 0;
        *(a1 + 64) = 0;
        *(a1 + 92) = 0;
        *(a1 + 96) = 0;
        return v3;
      }
    }

    else if (!v4)
    {
      goto LABEL_9;
    }

    if (v3[10])
    {
      goto LABEL_9;
    }

    if (*(a1 + 108))
    {
      goto LABEL_9;
    }

    v7 = *(v3 + 4);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *v7;
    if (!v8 || *(v8 + 4) != 5)
    {
      goto LABEL_9;
    }

    v9 = malloc_type_malloc(4 * v3[2], 0x100004052888210uLL);
    if (!v9)
    {
      xmlRegexpErrMemory(a1, "compiling regexp");
LABEL_89:
      free(v3);
      return 0;
    }

    v10 = v9;
    if (v3[2] < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = *(v3 + 2);
      do
      {
        v14 = *(v13 + 8 * v11);
        v15 = v14 == 0;
        if (v14)
        {
          v16 = v12;
        }

        else
        {
          v16 = -1;
        }

        if (!v15)
        {
          ++v12;
        }

        *(v9 + v11++) = v16;
      }

      while (v11 < v3[2]);
    }

    v17 = malloc_type_malloc(8 * v3[6], 0x10040436913F5uLL);
    if (v17)
    {
      v18 = v17;
      v71 = malloc_type_malloc(4 * v3[6], 0x100004052888210uLL);
      if (v71)
      {
        if (v3[6] >= 1)
        {
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v21 = v20;
            v22 = *(*(v3 + 4) + 8 * v19);
            if (*(v22 + 4) != 5 || *(v22 + 8) != 2)
            {
              break;
            }

            v23 = *(v22 + 24);
            if (v20 < 1)
            {
LABEL_36:
              v71[v19] = v20;
              v25 = xmlStrdup(v23);
              v18[v20] = v25;
              if (!v25)
              {
                if (v20 >= 1)
                {
                  v53 = v18;
                  do
                  {
                    v54 = *v53++;
                    free(v54);
                    --v21;
                  }

                  while (v21);
                }

                free(v71);
                goto LABEL_43;
              }

              ++v20;
            }

            else
            {
              v24 = 0;
              while (!xmlStrEqual(v18[v24], v23))
              {
                if (v20 == ++v24)
                {
                  goto LABEL_36;
                }
              }

              v71[v19] = v24;
            }

            if (++v19 >= v3[6])
            {
              goto LABEL_46;
            }
          }

          free(v10);
          free(v71);
          if (v20 >= 1)
          {
            v51 = v18;
            do
            {
              v52 = *v51++;
              free(v52);
              --v21;
            }

            while (v21);
          }

          goto LABEL_87;
        }

        v20 = 0;
LABEL_46:
        if (v12 == 0x7FFFFFFF || v20 == 0x7FFFFFFF || (v65 = v20 + 1, v12 >= 0x7FFFFFFF / (v20 + 1)))
        {
          xmlRegexpErrMemory(a1, "Regular expression too long to compile");
          free(v10);
          free(v71);
          if (v20 >= 1)
          {
            v48 = v20;
            v49 = v18;
            do
            {
              v50 = *v49++;
              free(v50);
              --v48;
            }

            while (v48);
          }
        }

        else
        {
          v72[0] = MEMORY[0x1E69E9820];
          v72[1] = 0x40000000;
          v72[2] = __xmlRegEpxFromParse_block_invoke;
          v72[3] = &__block_descriptor_tmp_1;
          v73 = v12;
          v74 = v20;
          v66 = __xmlRegEpxFromParse_block_invoke(v72);
          if (v66)
          {
            if (v3[2] < 1)
            {
              v45 = 0;
              v3[14] = 1;
              v46 = *(v3 + 2);
              if (!v46)
              {
                goto LABEL_100;
              }
            }

            else
            {
              v27 = 0;
              v28 = 0;
              v29 = v66 + 4;
              do
              {
                v30 = *(v10 + v27);
                v69 = v27;
                if (v30 != -1)
                {
                  v31 = *(*(v3 + 2) + 8 * v27);
                  v32 = v30 * v65;
                  *&v66[4 * v30 * v65] = *v31;
                  if (*(v31 + 24) >= 1)
                  {
                    v33 = 0;
                    v34 = 0;
                    v35 = v32;
                    v64 = v30 * v20;
                    v67 = v32;
                    v68 = v31;
                    do
                    {
                      v36 = *(v31 + 32);
                      v37 = *(v36 + v33 + 8);
                      if (v37 != -1)
                      {
                        v38 = *(v36 + v33);
                        if (v38)
                        {
                          v39 = *v38;
                          v40 = v71[v39];
                          if (*(v38 + 11))
                          {
                            v41 = v28 == 0;
                          }

                          else
                          {
                            v41 = 0;
                          }

                          if (v41)
                          {
                            if (v12 > 0x7FFFFFFF / v20)
                            {
                              xmlRegexpErrMemory(a1, "Regular expression too long to compile");
                              free(v66);
                              free(v10);
                              free(v71);
                              if (v20 >= 1)
                              {
                                v61 = v20;
                                v62 = v18;
                                do
                                {
                                  v63 = *v62++;
                                  free(v63);
                                  --v61;
                                }

                                while (v61);
                              }

                              goto LABEL_87;
                            }

                            v70 = v71[v39];
                            if (v12 > (0x7FFFFFFFuLL / v20) >> 3 || (v28 = malloc_type_calloc(v20 * v12, 8uLL, 0x80040B8603338uLL)) == 0)
                            {
                              xmlRegexpErrMemory(a1, "compiling regexp");
                              v28 = 0;
                              v29 = v66 + 4;
                              break;
                            }

                            v37 = *(v36 + v33 + 8);
                            v29 = v66 + 4;
                            v35 = v67;
                            v31 = v68;
                            v40 = v70;
                          }

                          v42 = *&v29[4 * v40 + 4 * v35];
                          v43 = *(v10 + v37) + 1;
                          if (v42)
                          {
                            if (v42 != v43)
                            {
                              v3[14] = 0;
                              if (v28)
                              {
                                free(v28);
                              }

                              free(v66);
                              free(v10);
                              free(v71);
                              if (v20 >= 1)
                              {
                                for (i = 0; i != v20; ++i)
                                {
                                  free(v18[i]);
                                }
                              }

                              v71 = v18;
                              goto LABEL_113;
                            }
                          }

                          else
                          {
                            *&v29[4 * v40 + 4 * v35] = v43;
                            if (v28)
                            {
                              *(v28 + v40 + v64) = *(*(v36 + v33) + 88);
                            }
                          }
                        }
                      }

                      ++v34;
                      v33 += 24;
                    }

                    while (v34 < *(v31 + 24));
                  }
                }

                v27 = v69 + 1;
                v44 = v3[2];
              }

              while (v69 + 1 < v44);
              v45 = v28;
              v3[14] = 1;
              v46 = *(v3 + 2);
              if (!v46)
              {
                goto LABEL_100;
              }

              if (v44 >= 1)
              {
                v47 = 0;
                do
                {
                  xmlRegFreeState(*(*(v3 + 2) + 8 * v47++));
                }

                while (v47 < v3[2]);
                v46 = *(v3 + 2);
              }
            }

            free(v46);
LABEL_100:
            *(v3 + 2) = 0;
            v3[2] = 0;
            v58 = *(v3 + 4);
            if (v58)
            {
              if (v3[6] >= 1)
              {
                v59 = 0;
                do
                {
                  xmlRegFreeAtom(*(*(v3 + 4) + 8 * v59++));
                }

                while (v59 < v3[6]);
                v58 = *(v3 + 4);
              }

              free(v58);
            }

            *(v3 + 4) = 0;
            v3[6] = 0;
            *(v3 + 9) = v66;
            *(v3 + 10) = v45;
            *(v3 + 12) = v18;
            v3[22] = v20;
            v3[16] = v12;
            free(v10);
LABEL_113:
            free(v71);
            goto LABEL_9;
          }

          free(v10);
          free(v71);
          if (v20 >= 1)
          {
            v55 = v20;
            v56 = v18;
            do
            {
              v57 = *v56++;
              free(v57);
              --v55;
            }

            while (v55);
          }
        }

LABEL_87:
        v26 = v18;
        goto LABEL_88;
      }

      xmlRegexpErrMemory(a1, "compiling regexp");
LABEL_43:
      free(v18);
    }

    else
    {
      xmlRegexpErrMemory(a1, "compiling regexp");
    }

    v26 = v10;
LABEL_88:
    free(v26);
    goto LABEL_89;
  }

  xmlRegexpErrMemory(a1, "compiling regexp");
  return v3;
}