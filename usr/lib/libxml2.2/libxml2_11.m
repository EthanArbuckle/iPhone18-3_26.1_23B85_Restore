uint64_t xmlParse3986Query(uint64_t a1, const xmlChar **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *v4;
    if ((v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v7 = (v5 - 33);
      if (v7 > 0x3E)
      {
        goto LABEL_38;
      }

      if (((1 << (v5 - 33)) & 0x40000000D6007FE9) != 0)
      {
        goto LABEL_10;
      }

      if (v7 == 4)
      {
        if ((v4[1] - 48) < 0xAu || (v8 = v4[1] - 65, v8 <= 0x25) && ((1 << v8) & 0x3F0000003FLL) != 0)
        {
          if ((v4[2] - 48) < 0xAu)
          {
            goto LABEL_10;
          }

          v9 = v4[2] - 65;
          if (v9 <= 0x25 && ((1 << v9) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_38:
        if (v5 == 126)
        {
          goto LABEL_10;
        }
      }

      if (!a1)
      {
        goto LABEL_35;
      }

      v10 = *(a1 + 72);
      if ((v10 & 1) == 0 || (v5 - 91) > 0x22 || ((1 << (v5 - 91)) & 0x70000002FLL) == 0)
      {
        break;
      }
    }

LABEL_10:
    if (v5 == 37)
    {
      v4 += 3;
    }

    else
    {
      ++v4;
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    free(v11);
    v10 = *(a1 + 72);
  }

  v12 = *a2;
  v13 = v4 - *a2;
  if ((v10 & 2) != 0)
  {
    v14 = xmlStrndup(v12, v13);
  }

  else
  {
    v14 = xmlURIUnescapeString(v12, v13, 0);
  }

  *(a1 + 56) = v14;
  v16 = *(a1 + 80);
  if (v16)
  {
    free(v16);
  }

  *(a1 + 80) = xmlStrndup(*a2, v4 - *a2);
LABEL_35:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t xmlParse3986Fragment(uint64_t a1, const xmlChar **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *v4;
    if ((v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v7 = (v5 - 33);
      if (v7 > 0x3E)
      {
        goto LABEL_36;
      }

      if (((1 << (v5 - 33)) & 0x54000000D6007FE9) != 0)
      {
        goto LABEL_10;
      }

      if (v7 == 4)
      {
        if ((v4[1] - 48) < 0xAu || (v8 = v4[1] - 65, v8 <= 0x25) && ((1 << v8) & 0x3F0000003FLL) != 0)
        {
          if ((v4[2] - 48) < 0xAu)
          {
            goto LABEL_10;
          }

          v9 = v4[2] - 65;
          if (v9 <= 0x25 && ((1 << v9) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_36:
        if (v5 == 126)
        {
          goto LABEL_10;
        }
      }

      if (!a1)
      {
        goto LABEL_33;
      }

      v10 = *(a1 + 72);
      if ((v10 & 1) == 0 || (v5 - 92) > 0x21 || ((1 << (v5 - 92)) & 0x380000015) == 0)
      {
        break;
      }
    }

LABEL_10:
    if (v5 == 37)
    {
      v4 += 3;
    }

    else
    {
      ++v4;
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    free(v11);
    v10 = *(a1 + 72);
  }

  v12 = *a2;
  v13 = v4 - *a2;
  if ((v10 & 2) != 0)
  {
    v14 = xmlStrndup(v12, v13);
  }

  else
  {
    v14 = xmlURIUnescapeString(v12, v13, 0);
  }

  *(a1 + 64) = v14;
LABEL_33:
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t xmlParse3986PathAbsolute(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  if (**a2 != 47)
  {
    return 1;
  }

  v11 = v2 + 1;
  if (!xmlParse3986Segment(&v11, 0, 0))
  {
    while (*v11 == 47)
    {
      ++v11;
      v5 = 1;
      if (xmlParse3986Segment(&v11, 0, 1))
      {
        return v5;
      }
    }
  }

  if (a1)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      free(v6);
      v2 = *a2;
    }

    v7 = v11;
    if (v11 == v2)
    {
      *(a1 + 48) = 0;
    }

    else
    {
      v8 = v11 - v2;
      if ((*(a1 + 72) & 2) != 0)
      {
        v9 = xmlStrndup(v2, v8);
      }

      else
      {
        v9 = xmlURIUnescapeString(v2, v8, 0);
      }

      *(a1 + 48) = v9;
    }
  }

  else
  {
    v7 = v11;
  }

  v5 = 0;
  *a2 = v7;
  return v5;
}

uint64_t xmlParse3986DecOctet(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = **a1;
  if ((v2 - 48) > 9)
  {
    return 1;
  }

  v3 = v1 + 1;
  v4 = v1[1];
  if (v4 - 48 > 9)
  {
    goto LABEL_11;
  }

  if (v2 != 48)
  {
    v3 = v1 + 2;
    if (v1[2] - 48 <= 9)
    {
      if (v2 == 50)
      {
        if (v4 > 0x35)
        {
          return 1;
        }
      }

      else if (v2 != 49)
      {
        return 1;
      }

      v3 = v1 + 3;
    }

LABEL_11:
    v5 = 0;
    *a1 = v3;
    return v5;
  }

  return 1;
}

int xmlValidBuildContentModel(xmlValidCtxtPtr ctxt, xmlElementPtr elem)
{
  v3 = MEMORY[0x1EEE9AC00](ctxt, elem);
  result = 0;
  v11 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v5 = v2;
    if (v2)
    {
      if (*(v2 + 8) == 15)
      {
        if (*(v2 + 72) != 4)
        {
LABEL_7:
          result = 1;
          goto LABEL_15;
        }

        v6 = *(v2 + 104);
        if (v6)
        {
          result = xmlRegexpIsDeterminist(v6);
          if (!result)
          {
            *(v3 + 64) = 0;
            goto LABEL_15;
          }

          goto LABEL_7;
        }

        v7 = xmlNewAutomata();
        *(v3 + 96) = v7;
        if (v7)
        {
          *(v3 + 104) = xmlAutomataGetInitState(v7);
          if (xmlValidBuildAContentModel(*(v5 + 80), v3, *(v5 + 16)))
          {
            xmlAutomataSetFinalState(*(v3 + 96), *(v3 + 104));
            v8 = xmlAutomataCompile(*(v3 + 96));
            *(v5 + 104) = v8;
            if (xmlRegexpIsDeterminist(v8) == 1)
            {
              *(v3 + 104) = 0;
              xmlFreeAutomata(*(v3 + 96));
              *(v3 + 96) = 0;
              goto LABEL_7;
            }

            bzero(v10, 0x1388uLL);
            xmlSnprintfElementContent(v10, 5000, *(v5 + 80), 1);
            xmlErrValidNode(v3, v5, 505, "Content model of %s is not determinist: %s\n", *(v5 + 16), v10, 0);
            *(v3 + 64) = 0;
          }

          *(v3 + 104) = 0;
          xmlFreeAutomata(*(v3 + 96));
          result = 0;
          *(v3 + 96) = 0;
          goto LABEL_15;
        }

        xmlErrValidNode(v3, v5, 1, "Cannot create automata for element %s\n", *(v5 + 16), 0, 0);
      }

      result = 0;
    }
  }

LABEL_15:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *xmlErrValidNode(uint64_t a1, uint64_t a2, int a3, const char *a4, const xmlChar *a5, xmlChar *a6, xmlChar *a7)
{
  if (a1)
  {
    v10 = *a1;
    v9 = *(a1 + 8);
    if (*(a1 + 48) >> 1 == 1441171738)
    {
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v10 = 0;
  }

  return __xmlRaiseError(0, v9, v10, v11, a2, 0x17u, a3, 2, 0, 0, a5, a6, a7, 0, 0, a4, a5);
}

uint64_t xmlValidBuildAContentModel(uint64_t a1, uint64_t a2, const xmlChar *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v12 = "Found NULL content in content model of %s\n";
LABEL_17:
    xmlErrValidNode(a2, 0, 1, v12, a3, 0, 0);
    goto LABEL_18;
  }

  v5 = a1;
  v6 = *a1;
  if (*a1 > 2)
  {
    if (v6 == 3)
    {
      v14 = *(a2 + 104);
      v16 = *(a1 + 4);
      if (v16 != 1)
      {
        v14 = xmlAutomataNewEpsilon(*(a2 + 96), *(a2 + 104), 0);
        *(a2 + 104) = v14;
      }

      do
      {
        result = xmlValidBuildAContentModel(*(v5 + 16), a2, a3);
        if (!result)
        {
          goto LABEL_56;
        }

        v5 = *(v5 + 24);
      }

      while (*v5 == 3 && *(v5 + 4) == 1);
      result = xmlValidBuildAContentModel(v5, a2, a3);
      if (!result)
      {
        goto LABEL_56;
      }

      v17 = *(a2 + 104);
      v18 = xmlAutomataNewEpsilon(*(a2 + 96), v17, 0);
      *(a2 + 104) = v18;
      if (v16 != 4)
      {
        v19 = v18;
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            goto LABEL_38;
          }

          goto LABEL_55;
        }

        xmlAutomataNewEpsilon(*(a2 + 96), v14, v18);
      }

      v22 = *(a2 + 96);
      v23 = v17;
LABEL_53:
      v19 = v14;
      goto LABEL_54;
    }

    if (v6 == 4)
    {
      v13 = *(a1 + 4);
      if ((v13 - 3) >= 2)
      {
        v14 = *(a2 + 104);
      }

      else
      {
        v14 = xmlAutomataNewEpsilon(*(a2 + 96), *(a2 + 104), 0);
        *(a2 + 104) = v14;
      }

      v20 = xmlAutomataNewState(*(a2 + 96));
      do
      {
        *(a2 + 104) = v14;
        result = xmlValidBuildAContentModel(*(v5 + 16), a2, a3);
        if (!result)
        {
          goto LABEL_56;
        }

        xmlAutomataNewEpsilon(*(a2 + 96), *(a2 + 104), v20);
        v5 = *(v5 + 24);
      }

      while (*v5 == 4 && *(v5 + 4) == 1);
      *(a2 + 104) = v14;
      result = xmlValidBuildAContentModel(v5, a2, a3);
      if (!result)
      {
        goto LABEL_56;
      }

      xmlAutomataNewEpsilon(*(a2 + 96), *(a2 + 104), v20);
      v21 = xmlAutomataNewEpsilon(*(a2 + 96), v20, 0);
      *(a2 + 104) = v21;
      if (v13 != 4)
      {
        v19 = v21;
        if (v13 != 3)
        {
          if (v13 != 2)
          {
            goto LABEL_55;
          }

LABEL_38:
          v22 = *(a2 + 96);
          v23 = v14;
LABEL_54:
          xmlAutomataNewEpsilon(v22, v23, v19);
          goto LABEL_55;
        }

        xmlAutomataNewEpsilon(*(a2 + 96), v14, v21);
      }

      v22 = *(a2 + 96);
      v23 = v20;
      goto LABEL_53;
    }

    goto LABEL_15;
  }

  if (v6 == 1)
  {
    v12 = "Found PCDATA in content model of %s\n";
    goto LABEL_17;
  }

  if (v6 != 2)
  {
LABEL_15:
    xmlErrValid_0(a2, 1, "ContentModel broken for element %s\n", a3);
    goto LABEL_18;
  }

  v7 = *(a2 + 104);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v8 = xmlBuildQName(*(a1 + 8), *(a1 + 40), v26, 50);
  if (v8)
  {
    v9 = v8;
    v10 = *(v5 + 4);
    if (v10 <= 2)
    {
      if (v10 == 1)
      {
        *(a2 + 104) = xmlAutomataNewTransition(*(a2 + 96), *(a2 + 104), 0, v8, 0);
      }

      else if (v10 == 2)
      {
        v11 = xmlAutomataNewTransition(*(a2 + 96), *(a2 + 104), 0, v8, 0);
        *(a2 + 104) = v11;
        xmlAutomataNewEpsilon(*(a2 + 96), v7, v11);
      }

      goto LABEL_46;
    }

    if (v10 == 3)
    {
      v24 = xmlAutomataNewEpsilon(*(a2 + 96), *(a2 + 104), 0);
    }

    else
    {
      if (v10 != 4)
      {
LABEL_46:
        if (v9 != v26 && v9 != *(v5 + 8))
        {
          free(v9);
        }

LABEL_55:
        result = 1;
        goto LABEL_56;
      }

      v24 = xmlAutomataNewTransition(*(a2 + 96), *(a2 + 104), 0, v8, 0);
    }

    *(a2 + 104) = v24;
    xmlAutomataNewTransition(*(a2 + 96), v24, v24, v9, 0);
    goto LABEL_46;
  }

  xmlVErrMemory(a2, "Building content model");
LABEL_18:
  result = 0;
LABEL_56:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlSnprintfElementContent(char *buf, int size, xmlElementContentPtr content, int englob)
{
  if (size < 1 || !content)
  {
    return;
  }

  v8 = strlen(buf);
  v9 = (size - v8);
  if (v9 <= 49)
  {
    goto LABEL_40;
  }

  if (englob)
  {
    strncat(buf, "(", v9);
    ++v8;
  }

  type = content->type;
  if (content->ocur == XML_ELEMENT_CONTENT_ONCE)
  {
    v11 = englob != 0;
  }

  else
  {
    v11 = (englob != 0) + 1;
  }

  if (type > XML_ELEMENT_CONTENT_ELEMENT)
  {
    if (type == XML_ELEMENT_CONTENT_SEQ)
    {
      xmlSnprintfElementContent(buf, size, content->c1, content->c1->type - 3 < 2);
      v24 = size - strlen(buf);
      if (v24 <= 49)
      {
        goto LABEL_40;
      }

      strncat(buf, " , ", v24);
      c2 = content->c2;
      v22 = c2->type;
      if (c2->type == XML_ELEMENT_CONTENT_OR)
      {
LABEL_22:
        v23 = 1;
LABEL_32:
        xmlSnprintfElementContent(buf, size, c2, v23);
        v8 = strlen(buf);
        goto LABEL_33;
      }
    }

    else
    {
      if (type != XML_ELEMENT_CONTENT_OR)
      {
        goto LABEL_33;
      }

      xmlSnprintfElementContent(buf, size, content->c1, content->c1->type - 3 < 2);
      v20 = size - strlen(buf);
      if (v20 <= 49)
      {
        goto LABEL_40;
      }

      strncat(buf, " | ", v20);
      c2 = content->c2;
      v22 = c2->type;
      if (c2->type == XML_ELEMENT_CONTENT_SEQ)
      {
        goto LABEL_22;
      }
    }

    v23 = v22 != XML_ELEMENT_CONTENT_ELEMENT && c2->ocur != XML_ELEMENT_CONTENT_ONCE;
    goto LABEL_32;
  }

  if (type == XML_ELEMENT_CONTENT_PCDATA)
  {
    strncat(buf, "#PCDATA", size - v8);
    v8 += 7;
  }

  else if (type == XML_ELEMENT_CONTENT_ELEMENT)
  {
    prefix = content->prefix;
    if (prefix)
    {
      v13 = xmlStrlen(prefix);
      if (size - v8 <= v11 + v13 + 1)
      {
        goto LABEL_40;
      }

      v14 = v13;
      v15 = strncat(buf, content->prefix, size - v8);
      v16 = v14 + v8;
      strncat(v15, ":", size - v16);
      v8 = v16 + 1;
    }

    name = content->name;
    if (name)
    {
      v18 = xmlStrlen(name);
      if (size - v8 <= v18 + v11)
      {
        goto LABEL_40;
      }

      v19 = v18;
      strncat(buf, content->name, size - v8);
      v8 += v19;
    }
  }

LABEL_33:
  v26 = (size - v8);
  if (v26 > v11)
  {
    if (englob)
    {
      strncat(buf, ")", v26);
      ++v8;
    }

    v27 = content->ocur - 2;
    if (v27 <= 2)
    {
      strncat(buf, off_1E82C5E70[v27], size - v8);
    }

    buf[size - 1] = 0;
    return;
  }

LABEL_40:

  terminateBufferTooSmall(buf, size);
}

xmlValidCtxtPtr xmlNewValidCtxt(void)
{
  v0 = malloc_type_malloc(0x70uLL, 0x10A004012F1A8FAuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->vstateNr = 0u;
    *&v0->am = 0u;
    *&v0->finishDtd = 0u;
    *&v0->valid = 0u;
    *&v0->warning = 0u;
    *&v0->nodeNr = 0u;
    *&v0->userData = 0u;
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v1;
}

_DWORD *xmlVErrMemory(uint64_t a1, const xmlChar *a2)
{
  if (a1)
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    if (*(a1 + 48) >> 1 == 1441171738)
    {
      v5 = *a1;
    }

    else
    {
      v5 = 0;
    }

    if (a2)
    {
      return __xmlRaiseError(0, v3, v4, v5, 0, 0x17u, 2, 3, 0, 0, a2, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a2);
    }
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v4 = 0;
    if (a2)
    {
      return __xmlRaiseError(0, v3, v4, v5, 0, 0x17u, 2, 3, 0, 0, a2, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a2);
    }
  }

  return __xmlRaiseError(0, v3, v4, v5, 0, 0x17u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v7);
}

void xmlFreeValidCtxt(xmlValidCtxtPtr a1)
{
  vstateTab = a1->vstateTab;
  if (vstateTab)
  {
    free(vstateTab);
  }

  nodeTab = a1->nodeTab;
  if (nodeTab)
  {
    free(nodeTab);
  }

  free(a1);
}

xmlElementContentPtr xmlNewDocElementContent(xmlDocPtr doc, const xmlChar *name, xmlElementContentType type)
{
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  if (type - 3 < 2 || type == XML_ELEMENT_CONTENT_PCDATA)
  {
    if (!name)
    {
      goto LABEL_12;
    }

    v6 = "xmlNewElementContent : name != NULL !\n";
    goto LABEL_11;
  }

  if (type != XML_ELEMENT_CONTENT_ELEMENT)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ELEMENT content corrupted invalid type\n");
    return 0;
  }

  if (!name)
  {
    v6 = "xmlNewElementContent : name == NULL !\n";
LABEL_11:
    __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", v6);
  }

LABEL_12:
  v7 = malloc_type_malloc(0x30uLL, 0x1070040128533D1uLL);
  v8 = v7;
  if (v7)
  {
    *(v7 + 8) = 0u;
    *(v7 + 5) = 0;
    *(v7 + 24) = 0u;
    *v7 = type;
    *(v7 + 1) = 1;
    if (name)
    {
      len = 0;
      v9 = xmlSplitQName3(name, &len);
      if (v9)
      {
        v10 = v9;
        if (dict)
        {
          v8->prefix = xmlDictLookup(dict, name, len);
          v11 = dict;
          v12 = v10;
LABEL_21:
          v13 = xmlDictLookup(v11, v12, -1);
LABEL_25:
          v8->name = v13;
          return v8;
        }

        v8->prefix = xmlStrndup(name, len);
        v14 = v10;
      }

      else
      {
        if (dict)
        {
          v11 = dict;
          v12 = name;
          goto LABEL_21;
        }

        v14 = name;
      }

      v13 = xmlStrdup(v14);
      goto LABEL_25;
    }
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v8;
}

_DWORD *xmlErrValid_0(uint64_t a1, int a2, const char *a3, const xmlChar *a4)
{
  if (a1)
  {
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*(a1 + 48) >> 1 == 1441171738)
    {
      v9 = *a1;
    }

    else
    {
      v9 = 0;
    }

    if (a4)
    {
      return __xmlRaiseError(0, v7, v8, v9, 0, 0x17u, a2, 2, 0, 0, a4, 0, 0, 0, 0 >> 96, a3, a4);
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v8 = 0;
    if (a4)
    {
      return __xmlRaiseError(0, v7, v8, v9, 0, 0x17u, a2, 2, 0, 0, a4, 0, 0, 0, 0 >> 96, a3, a4);
    }
  }

  return __xmlRaiseError(0, v7, v8, v9, 0, 0x17u, a2, 2, 0, 0, 0, 0, 0, 0, 0, "%s", a3);
}

xmlElementContentPtr xmlCopyDocElementContent(xmlDocPtr doc, xmlElementContentPtr content)
{
  if (!content)
  {
    return 0;
  }

  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x1070040128533D1uLL);
  v5 = v6;
  if (!v6)
  {
LABEL_39:
    xmlVErrMemory(0, "malloc failed");
    return v5;
  }

  *&v6->c1 = 0u;
  *&v6->parent = 0u;
  *&v6->type = 0u;
  *&v6->type = *&content->type;
  name = content->name;
  if (name)
  {
    if (!dict)
    {
      v6->name = xmlStrdup(content->name);
      prefix = content->prefix;
      if (!prefix)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    v6->name = xmlDictLookup(dict, name, -1);
  }

  prefix = content->prefix;
  if (!prefix)
  {
    goto LABEL_16;
  }

  if (!dict)
  {
LABEL_14:
    v9 = xmlStrdup(prefix);
    goto LABEL_15;
  }

  v9 = xmlDictLookup(dict, prefix, -1);
LABEL_15:
  v5->prefix = v9;
LABEL_16:
  c1 = content->c1;
  if (c1)
  {
    v11 = xmlCopyDocElementContent(doc, c1);
    v5->c1 = v11;
    if (!v11)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v11 = v5->c1;
  if (v11)
  {
LABEL_18:
    v11->parent = v5;
  }

LABEL_19:
  c2 = content->c2;
  if (c2)
  {
    v13 = v5;
    while (1)
    {
      v14 = malloc_type_malloc(0x30uLL, 0x1070040128533D1uLL);
      if (!v14)
      {
        goto LABEL_39;
      }

      v15 = v14;
      *&v14->c1 = 0u;
      *&v14->parent = 0u;
      *&v14->type = 0u;
      *&v14->type = *&c2->type;
      v13->c2 = v14;
      v14->parent = v13;
      v16 = c2->name;
      if (!v16)
      {
        break;
      }

      if (!dict)
      {
        v14->name = xmlStrdup(c2->name);
        v17 = c2->prefix;
        if (!v17)
        {
          goto LABEL_32;
        }

LABEL_30:
        v18 = xmlStrdup(v17);
        goto LABEL_31;
      }

      v14->name = xmlDictLookup(dict, v16, -1);
      v17 = c2->prefix;
      if (v17)
      {
        goto LABEL_28;
      }

LABEL_32:
      v19 = c2->c1;
      if (!v19)
      {
        v20 = v15->c1;
        if (!v20)
        {
          goto LABEL_35;
        }

LABEL_34:
        v20->parent = v5;
        goto LABEL_35;
      }

      v20 = xmlCopyDocElementContent(doc, v19);
      v15->c1 = v20;
      if (v20)
      {
        goto LABEL_34;
      }

LABEL_35:
      c2 = c2->c2;
      v13 = v15;
      if (!c2)
      {
        return v5;
      }
    }

    v17 = c2->prefix;
    if (!v17)
    {
      goto LABEL_32;
    }

    if (!dict)
    {
      goto LABEL_30;
    }

LABEL_28:
    v18 = xmlDictLookup(dict, v17, -1);
LABEL_31:
    v15->prefix = v18;
    goto LABEL_32;
  }

  return v5;
}

void xmlFreeDocElementContent(xmlDocPtr doc, xmlElementContentPtr cur)
{
  if (!cur)
  {
    return;
  }

  v2 = cur;
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  for (i = 0; ; i += v6)
  {
    c1 = v2->c1;
    if (c1 || (c1 = v2->c2) != 0)
    {
      v6 = 1;
      v2 = c1;
      continue;
    }

    if (v2->type - 1 >= 4)
    {
      __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ELEMENT content corrupted invalid type\n");
      return;
    }

    name = v2->name;
    if (dict)
    {
      if (name && !xmlDictOwns(dict, name))
      {
        free(v2->name);
      }

      prefix = v2->prefix;
      if (prefix && !xmlDictOwns(dict, prefix))
      {
        v9 = v2->prefix;
LABEL_21:
        free(v9);
      }
    }

    else
    {
      if (name)
      {
        free(v2->name);
      }

      v9 = v2->prefix;
      if (v9)
      {
        goto LABEL_21;
      }
    }

    if (!i)
    {
      break;
    }

    parent = v2->parent;
    if (!parent)
    {
      break;
    }

    if (v2 == parent->c1)
    {
      v11 = 16;
    }

    else
    {
      v11 = 24;
    }

    *(&parent->type + v11) = 0;
    free(v2);
    c2 = parent->c2;
    if (c2)
    {
      v2 = parent->c2;
    }

    else
    {
      v2 = parent;
    }

    if (c2)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  free(v2);
}

size_t terminateBufferTooSmall(char *a1, int a2)
{
  result = strlen(a1);
  v5 = (a2 - result);
  if (v5 >= 5 && a1[result - 1] != 46)
  {
    result = strncat(a1, " ...", v5);
  }

  a1[a2 - 1] = 0;
  return result;
}

xmlElementPtr xmlAddElementDecl(xmlValidCtxtPtr ctxt, xmlDtdPtr dtd, const xmlChar *name, xmlElementTypeVal type, xmlElementContentPtr content)
{
  v5 = 0;
  if (!dtd)
  {
    return v5;
  }

  v6 = name;
  if (!name)
  {
    return v5;
  }

  if (type <= XML_ELEMENT_TYPE_ANY)
  {
    if (type == XML_ELEMENT_TYPE_EMPTY)
    {
      if (content)
      {
        v11 = "xmlAddElementDecl: content != NULL for EMPTY\n";
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (type == XML_ELEMENT_TYPE_ANY)
    {
      if (content)
      {
        v11 = "xmlAddElementDecl: content != NULL for ANY\n";
LABEL_22:
        xmlErrValid_0(ctxt, 1, v11, 0);
        return 0;
      }

      goto LABEL_16;
    }

LABEL_12:
    v11 = "Internal: ELEMENT decl corrupted invalid type\n";
    goto LABEL_22;
  }

  if (type == XML_ELEMENT_TYPE_MIXED)
  {
    if (!content)
    {
      v11 = "xmlAddElementDecl: content == NULL for MIXED\n";
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (type != XML_ELEMENT_TYPE_ELEMENT)
  {
    goto LABEL_12;
  }

  if (!content)
  {
    v11 = "xmlAddElementDecl: content == NULL for ELEMENT\n";
    goto LABEL_22;
  }

LABEL_16:
  prefix = 0;
  v12 = xmlSplitQName2(name, &prefix);
  v13 = v12;
  if (v12)
  {
    v6 = v12;
  }

  elements = dtd->elements;
  if (!elements)
  {
    doc = dtd->doc;
    v16 = doc ? doc->dict : 0;
    elements = xmlHashCreateDict(0, v16);
    dtd->elements = elements;
    if (!elements)
    {
      v28 = "xmlAddElementDecl: Table creation failed!\n";
      goto LABEL_47;
    }
  }

  v17 = dtd->doc;
  if (v17 && (intSubset = v17->intSubset) != 0 && (v19 = xmlHashLookup2(intSubset->elements, v6, prefix)) != 0 && (v20 = v19, !*(v19 + 18)))
  {
    v21 = v19[11];
    v19[11] = 0;
    xmlHashRemoveEntry2(dtd->doc->intSubset->elements, v6, prefix, 0);
    xmlFreeElement(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = xmlHashLookup2(elements, v6, prefix);
  if (v22)
  {
    v5 = v22;
    if (v22[18])
    {
      xmlErrValidNode(ctxt, dtd, 509, "Redefinition of element %s\n", v6, 0, 0);
      if (!v13)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (prefix)
    {
      free(prefix);
      prefix = 0;
    }

    goto LABEL_56;
  }

  v25 = malloc_type_malloc(0x70uLL, 0x10F00406D769B3AuLL);
  if (!v25)
  {
    v28 = "malloc failed";
LABEL_47:
    xmlVErrMemory(ctxt, v28);
    if (!v13)
    {
LABEL_34:
      v23 = prefix;
      if (!prefix)
      {
        return 0;
      }

LABEL_35:
      free(v23);
      return 0;
    }

LABEL_33:
    free(v13);
    goto LABEL_34;
  }

  v5 = v25;
  v25[5] = 0u;
  v25[6] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v25[1] = 0u;
  v25[2] = 0u;
  *v25 = 0u;
  *(v25 + 2) = 15;
  v26 = xmlStrdup(v6);
  *(v5 + 16) = v26;
  if (!v26)
  {
    xmlVErrMemory(ctxt, "malloc failed");
    if (v13)
    {
      free(v13);
    }

    if (prefix)
    {
      free(prefix);
    }

    v23 = v5;
    goto LABEL_35;
  }

  v27 = prefix;
  *(v5 + 96) = prefix;
  if (xmlHashAddEntry2(elements, v6, v27, v5))
  {
    xmlErrValidNode(ctxt, dtd, 509, "Redefinition of element %s\n", v6, 0, 0);
    xmlFreeElement(v5);
    if (!v13)
    {
      return 0;
    }

    v23 = v13;
    goto LABEL_35;
  }

  *(v5 + 88) = v21;
LABEL_56:
  *(v5 + 72) = type;
  if (ctxt && ctxt->finishDtd >> 1 == 1441171738)
  {
    *(v5 + 80) = content;
    if (content)
    {
      content->parent = 1;
    }
  }

  else
  {
    *(v5 + 80) = xmlCopyDocElementContent(dtd->doc, content);
  }

  *(v5 + 40) = dtd;
  *(v5 + 64) = dtd->doc;
  last = dtd->last;
  if (last)
  {
    last->next = v5;
    *(v5 + 56) = last;
  }

  else
  {
    dtd->children = v5;
  }

  dtd->last = v5;
  if (v13)
  {
    free(v13);
  }

  return v5;
}

void xmlFreeElement(uint64_t a1)
{
  if (a1)
  {
    xmlUnlinkNode(a1);
    xmlFreeDocElementContent(*(a1 + 64), *(a1 + 80));
    v2 = *(a1 + 16);
    if (v2)
    {
      free(v2);
    }

    v3 = *(a1 + 96);
    if (v3)
    {
      free(v3);
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      xmlRegFreeRegexp(v4);
    }

    free(a1);
  }
}

void *xmlCopyElement(uint64_t a1)
{
  v2 = malloc_type_malloc(0x70uLL, 0x10F00406D769B3AuLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    *(v2 + 2) = 15;
    *(v2 + 18) = *(a1 + 72);
    v4 = *(a1 + 16);
    if (v4)
    {
      v4 = xmlStrdup(v4);
    }

    v3[2] = v4;
    v5 = *(a1 + 96);
    if (v5)
    {
      v5 = xmlStrdup(v5);
    }

    v3[12] = v5;
    v3[10] = xmlCopyDocElementContent(0, *(a1 + 80));
    v3[11] = 0;
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v3;
}

void xmlDumpElementDecl(xmlBufferPtr buf, xmlElementPtr elem)
{
  if (!buf || !elem)
  {
    return;
  }

  etype = elem->etype;
  if (etype > XML_ELEMENT_TYPE_ANY)
  {
    if (etype == XML_ELEMENT_TYPE_MIXED || etype == XML_ELEMENT_TYPE_ELEMENT)
    {
      xmlBufferWriteChar(buf, "<!ELEMENT ");
      prefix = elem->prefix;
      if (prefix)
      {
        xmlBufferWriteCHAR(buf, prefix);
        xmlBufferWriteChar(buf, ":");
      }

      xmlBufferWriteCHAR(buf, elem->name);
      xmlBufferWriteChar(buf, " ");
      xmlDumpElementContent(buf, elem->content);
      v6 = ">\n";
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (etype == XML_ELEMENT_TYPE_EMPTY)
  {
    xmlBufferWriteChar(buf, "<!ELEMENT ");
    v8 = elem->prefix;
    if (v8)
    {
      xmlBufferWriteCHAR(buf, v8);
      xmlBufferWriteChar(buf, ":");
    }

    xmlBufferWriteCHAR(buf, elem->name);
    v6 = " EMPTY>\n";
    goto LABEL_19;
  }

  if (etype != XML_ELEMENT_TYPE_ANY)
  {
LABEL_14:
    __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ELEMENT struct corrupted invalid type\n");
    return;
  }

  xmlBufferWriteChar(buf, "<!ELEMENT ");
  v5 = elem->prefix;
  if (v5)
  {
    xmlBufferWriteCHAR(buf, v5);
    xmlBufferWriteChar(buf, ":");
  }

  xmlBufferWriteCHAR(buf, elem->name);
  v6 = " ANY>\n";
LABEL_19:

  xmlBufferWriteChar(buf, v6);
}

void xmlDumpElementContent(xmlBuffer *a1, int *a2)
{
  if (!a2)
  {
    return;
  }

  xmlBufferWriteChar(a1, "(");
  v4 = a2;
  do
  {
    if (!v4)
    {
      return;
    }

    v5 = *v4;
    if ((*v4 - 3) >= 2)
    {
      if (v5 == 2)
      {
        v8 = *(v4 + 5);
        if (v8)
        {
          xmlBufferWriteCHAR(a1, v8);
          xmlBufferWriteChar(a1, ":");
        }

        xmlBufferWriteCHAR(a1, *(v4 + 1));
      }

      else if (v5 == 1)
      {
        xmlBufferWriteChar(a1, "#PCDATA");
      }

      else
      {
        __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ELEMENT cur corrupted invalid type\n");
      }

      do
      {
        if (v4 == a2)
        {
          goto LABEL_35;
        }

        v9 = *(v4 + 4);
        if (!v9)
        {
          return;
        }

        if ((*v4 - 3) <= 1 && (*v4 != *v9 || v4[1] != 1))
        {
          xmlBufferWriteChar(a1, ")");
        }

        v10 = v4[1] - 2;
        if (v10 <= 2)
        {
          xmlBufferWriteChar(a1, off_1E82C5E70[v10]);
        }

        v11 = v4 == v9[2];
        v4 = v9;
      }

      while (!v11);
      if (*v9 == 3)
      {
        v12 = " , ";
      }

      else
      {
        if (*v9 != 4)
        {
LABEL_33:
          v7 = v9 + 3;
          goto LABEL_34;
        }

        v12 = " | ";
      }

      xmlBufferWriteChar(a1, v12);
      goto LABEL_33;
    }

    if (v4 != a2)
    {
      v6 = *(v4 + 4);
      if (v6)
      {
        if (v5 != *v6 || v4[1] != 1)
        {
          xmlBufferWriteChar(a1, "(");
        }
      }
    }

    v7 = (v4 + 4);
LABEL_34:
    v4 = *v7;
LABEL_35:
    ;
  }

  while (v4 != a2);
  xmlBufferWriteChar(a1, ")");
  v13 = a2[1] - 2;
  if (v13 <= 2)
  {
    v14 = off_1E82C5E70[v13];

    xmlBufferWriteChar(a1, v14);
  }
}

void xmlDumpElementTable(xmlBufferPtr buf, xmlElementTablePtr table)
{
  if (buf)
  {
    if (table)
    {
      xmlHashScan(table, xmlDumpElementDeclScan, buf);
    }
  }
}

xmlEnumerationPtr xmlCreateEnumeration(const xmlChar *name)
{
  v2 = malloc_type_malloc(0x10uLL, 0x700404252BEB2uLL);
  v3 = v2;
  if (v2)
  {
    v2->next = 0;
    v2->name = 0;
    if (name)
    {
      v2->name = xmlStrdup(name);
    }
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v3;
}

void xmlFreeEnumeration(xmlEnumerationPtr cur)
{
  if (cur)
  {
    next = cur->next;
    if (next)
    {
      xmlFreeEnumeration(next);
    }

    name = cur->name;
    if (name)
    {
      free(name);
    }

    free(cur);
  }
}

xmlEnumerationPtr xmlCopyEnumeration(xmlEnumerationPtr cur)
{
  if (!cur)
  {
    return 0;
  }

  Enumeration = xmlCreateEnumeration(cur->name);
  if (Enumeration)
  {
    next = cur->next;
    if (cur->next)
    {
      next = xmlCopyEnumeration(next);
    }

    Enumeration->next = next;
  }

  return Enumeration;
}

xmlAttributePtr xmlAddAttributeDecl(xmlValidCtxtPtr ctxt, xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name, const xmlChar *ns, xmlAttributeType type, xmlAttributeDefault def, const xmlChar *defaultValue, xmlEnumerationPtr tree)
{
  if (!dtd || !name || !elem)
  {
    goto LABEL_21;
  }

  v11 = defaultValue;
  doc = dtd->doc;
  if (doc)
  {
    dict = doc->dict;
  }

  else
  {
    dict = 0;
  }

  if (type - 1 >= 0xA)
  {
    xmlErrValid_0(ctxt, 1, "Internal: ATTRIBUTE struct corrupted invalid type\n", 0);
LABEL_21:
    xmlFreeEnumeration(tree);
    return 0;
  }

  if (defaultValue)
  {
    if (!xmlValidateAttributeValueInternal(doc, type, defaultValue))
    {
      xmlErrValidNode(ctxt, dtd, 500, "Attribute %s of %s: invalid default value\n", elem, name, v11);
      v11 = 0;
      if (ctxt)
      {
        ctxt->valid = 0;
      }
    }
  }

  v19 = dtd->doc;
  if (v19)
  {
    if (v19->extSubset == dtd)
    {
      intSubset = v19->intSubset;
      if (intSubset)
      {
        attributes = intSubset->attributes;
        if (attributes)
        {
          if (xmlHashLookup3(attributes, name, ns, elem))
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  v20 = dtd->attributes;
  if (!v20)
  {
    v20 = xmlHashCreateDict(0, dict);
    dtd->attributes = v20;
    if (!v20)
    {
      xmlVErrMemory(ctxt, "xmlAddAttributeDecl: Table creation failed!\n");
      goto LABEL_21;
    }
  }

  table = v20;
  v43 = ctxt;
  v21 = dict;
  v22 = malloc_type_malloc(0x78uLL, 0x10F0040A25AC69BuLL);
  v23 = v22;
  if (!v22)
  {
    xmlVErrMemory(v43, "malloc failed");
    xmlFreeEnumeration(tree);
    return v23;
  }

  v22->elem = 0;
  *&v22->atype = 0u;
  *&v22->tree = 0u;
  *&v22->next = 0u;
  *&v22->doc = 0u;
  *&v22->name = 0u;
  *&v22->last = 0u;
  *&v22->_private = 0u;
  v22->type = XML_ATTRIBUTE_DECL;
  v22->atype = type;
  v22->doc = dtd->doc;
  if (v21)
  {
    v22->name = xmlDictLookup(v21, name, -1);
    v23->prefix = xmlDictLookup(v21, ns, -1);
    v23->elem = xmlDictLookup(v21, elem, -1);
    v23->def = def;
    v23->tree = tree;
    if (!v11)
    {
      goto LABEL_32;
    }

    v24 = xmlDictLookup(v21, v11, -1);
  }

  else
  {
    v22->name = xmlStrdup(name);
    v23->prefix = xmlStrdup(ns);
    v23->elem = xmlStrdup(elem);
    v23->def = def;
    v23->tree = tree;
    if (!v11)
    {
      goto LABEL_32;
    }

    v24 = xmlStrdup(v11);
  }

  v23->defaultValue = v24;
LABEL_32:
  if (xmlHashAddEntry3(table, v23->name, v23->prefix, v23->elem, v23) < 0)
  {
    xmlErrValidWarning(v43, dtd, 501, "Attribute %s of element %s: already defined\n", name, elem, 0);
    xmlFreeAttribute(v23);
    return 0;
  }

  prefix = 0;
  elements = dtd->elements;
  if (elements || ((v29 = dtd->doc) == 0 ? (v30 = 0) : (v30 = v29->dict), elements = xmlHashCreateDict(0, v30), (dtd->elements = elements) != 0))
  {
    v31 = xmlSplitQName2(elem, &prefix);
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = elem;
    }

    v34 = xmlHashLookup2(elements, v33, prefix);
    if (v34)
    {
      goto LABEL_46;
    }

    v35 = malloc_type_malloc(0x70uLL, 0x10F00406D769B3AuLL);
    if (v35)
    {
      v34 = v35;
      v35[5] = 0u;
      v35[6] = 0u;
      v35[3] = 0u;
      v35[4] = 0u;
      v35[1] = 0u;
      v35[2] = 0u;
      *v35 = 0u;
      *(v35 + 2) = 15;
      *(v35 + 2) = xmlStrdup(v33);
      v34[12] = xmlStrdup(prefix);
      *(v34 + 18) = 0;
      xmlHashAddEntry2(elements, v33, prefix, v34);
LABEL_46:
      if (prefix)
      {
        free(prefix);
      }

      if (v32)
      {
        free(v32);
      }

      if (type == XML_ATTRIBUTE_ID)
      {
        if (xmlScanIDAttributeDecl(v34, 1))
        {
          xmlErrValidNode(v43, dtd, 520, "Element %s has too may ID attributes defined : %s\n", elem, name, 0);
          if (v43)
          {
            v43->valid = 0;
          }
        }
      }

      if (!xmlStrEqual(v23->name, "xmlns"))
      {
        v36 = v23->prefix;
        if (!v36 || !xmlStrEqual(v36, "xmlns"))
        {
          v37 = v34[11];
          while (v37)
          {
            v38 = v37;
            if (xmlStrEqual(*(v37 + 16), "xmlns") || (v39 = v23->prefix) != 0 && xmlStrEqual(v39, "xmlns"))
            {
              v37 = *(v38 + 72);
              if (v37)
              {
                continue;
              }
            }

            v23->nexth = *(v38 + 72);
            *(v38 + 72) = v23;
            goto LABEL_68;
          }
        }
      }

      v23->nexth = v34[11];
      v34[11] = v23;
      goto LABEL_68;
    }

    v40 = "malloc failed";
  }

  else
  {
    v40 = "element table allocation failed";
  }

  xmlVErrMemory(0, v40);
LABEL_68:
  v23->parent = dtd;
  last = dtd->last;
  if (last)
  {
    last->next = v23;
    v23->prev = last;
  }

  else
  {
    dtd->children = v23;
  }

  dtd->last = v23;
  return v23;
}

uint64_t xmlValidateAttributeValueInternal(uint64_t a1, int a2, const xmlChar *a3)
{
  if (a2 <= 5)
  {
    if ((a2 - 2) >= 2)
    {
      if (a2 == 4)
      {
        return xmlValidateNamesValueInternal(a1, a3);
      }

      if (a2 != 5)
      {
        return 1;
      }
    }

    return xmlValidateNameValueInternal(a1, a3);
  }

  if (a2 <= 7)
  {
    if (a2 != 6)
    {
      return xmlValidateNmtokenValueInternal(a1, a3);
    }

    return xmlValidateNamesValueInternal(a1, a3);
  }

  if ((a2 - 8) < 2)
  {
    return xmlValidateNmtokensValueInternal(a1, a3);
  }

  if (a2 == 10)
  {
    return xmlValidateNameValueInternal(a1, a3);
  }

  return 1;
}

_DWORD *xmlErrValidWarning(uint64_t a1, uint64_t a2, int a3, const char *a4, const xmlChar *a5, xmlChar *a6, xmlChar *a7)
{
  if (a1)
  {
    v9 = *(a1 + 16);
    v10 = *a1;
    if (*(a1 + 48) >> 1 == 1441171738)
    {
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v10 = 0;
  }

  return __xmlRaiseError(0, v9, v10, v11, a2, 0x17u, a3, 1, 0, 0, a5, a6, a7, 0, 0, a4, a5);
}

void xmlFreeAttribute(xmlNodePtr cur)
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

  xmlUnlinkNode(cur);
  nsDef = cur->nsDef;
  if (nsDef)
  {
    xmlFreeEnumeration(nsDef);
  }

  v5 = *&cur->line;
  if (dict)
  {
    if (v5 && !xmlDictOwns(dict, v5))
    {
      free(*&cur->line);
    }

    name = cur->name;
    if (name && !xmlDictOwns(dict, name))
    {
      free(cur->name);
    }

    psvi = cur->psvi;
    if (psvi && !xmlDictOwns(dict, psvi))
    {
      free(cur->psvi);
    }

    properties = cur->properties;
    if (!properties || xmlDictOwns(dict, properties))
    {
      goto LABEL_29;
    }

    v9 = cur->properties;
  }

  else
  {
    if (v5)
    {
      free(*&cur->line);
    }

    v10 = cur->name;
    if (v10)
    {
      free(v10);
    }

    v11 = cur->properties;
    if (v11)
    {
      free(v11);
    }

    v9 = cur->psvi;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  free(v9);
LABEL_29:

  free(cur);
}

uint64_t xmlScanIDAttributeDecl(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    if (*(v2 + 80) == 2)
    {
      v6 = (v5 + 1);
      if (a2 && v5 >= 1)
      {
        xmlErrValidNode(0, a1, 520, "Element %s has too many ID attributes defined : %s\n", *(a1 + 16), *(v2 + 16), 0);
      }
    }

    else
    {
      v6 = v5;
    }

    v2 = *(v2 + 72);
    v5 = v6;
  }

  while (v2);
  return v6;
}

void *xmlCopyAttribute(uint64_t a1)
{
  v2 = malloc_type_malloc(0x78uLL, 0x10F0040A25AC69BuLL);
  v3 = v2;
  if (v2)
  {
    v2[14] = 0;
    *(v2 + 5) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 3) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 1) = 0u;
    *(v2 + 2) = 0u;
    *v2 = 0u;
    *(v2 + 2) = 16;
    v2[10] = *(a1 + 80);
    v2[12] = xmlCopyEnumeration(*(a1 + 96));
    v4 = *(a1 + 112);
    if (v4)
    {
      v3[14] = xmlStrdup(v4);
    }

    v5 = *(a1 + 16);
    if (v5)
    {
      v3[2] = xmlStrdup(v5);
    }

    v6 = *(a1 + 104);
    if (v6)
    {
      v3[13] = xmlStrdup(v6);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      v3[11] = xmlStrdup(v7);
    }
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v3;
}

void xmlDumpAttributeDecl(xmlBufferPtr buf, xmlAttributePtr attr)
{
  if (!buf || !attr)
  {
    return;
  }

  xmlBufferWriteChar(buf, "<!ATTLIST ");
  xmlBufferWriteCHAR(buf, attr->elem);
  xmlBufferWriteChar(buf, " ");
  prefix = attr->prefix;
  if (prefix)
  {
    xmlBufferWriteCHAR(buf, prefix);
    xmlBufferWriteChar(buf, ":");
  }

  xmlBufferWriteCHAR(buf, attr->name);
  atype = attr->atype;
  if (atype <= XML_ATTRIBUTE_ENTITY)
  {
    if (atype > XML_ATTRIBUTE_ID)
    {
      if (atype == XML_ATTRIBUTE_IDREF)
      {
        v6 = " IDREF";
      }

      else if (atype == XML_ATTRIBUTE_IDREFS)
      {
        v6 = " IDREFS";
      }

      else
      {
        v6 = " ENTITY";
      }

      goto LABEL_26;
    }

    if (atype == XML_ATTRIBUTE_CDATA)
    {
      v6 = " CDATA";
      goto LABEL_26;
    }

    if (atype == XML_ATTRIBUTE_ID)
    {
      v6 = " ID";
LABEL_26:
      xmlBufferWriteChar(buf, v6);
      goto LABEL_27;
    }

    goto LABEL_44;
  }

  if (atype <= XML_ATTRIBUTE_NMTOKEN)
  {
    if (atype == XML_ATTRIBUTE_ENTITIES)
    {
      v6 = " ENTITIES";
    }

    else
    {
      v6 = " NMTOKEN";
    }

    goto LABEL_26;
  }

  switch(atype)
  {
    case XML_ATTRIBUTE_NMTOKENS:
      v6 = " NMTOKENS";
      goto LABEL_26;
    case XML_ATTRIBUTE_ENUMERATION:
      v7 = " (";
      goto LABEL_43;
    case XML_ATTRIBUTE_NOTATION:
      v7 = " NOTATION (";
LABEL_43:
      xmlBufferWriteChar(buf, v7);
      xmlDumpEnumeration(buf, attr->tree);
      goto LABEL_27;
  }

LABEL_44:
  __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ATTRIBUTE struct corrupted invalid type\n");
LABEL_27:
  def = attr->def;
  if (def > XML_ATTRIBUTE_REQUIRED)
  {
    if (def == XML_ATTRIBUTE_IMPLIED)
    {
      v9 = " #IMPLIED";
      goto LABEL_36;
    }

    if (def == XML_ATTRIBUTE_FIXED)
    {
      v9 = " #FIXED";
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (def != XML_ATTRIBUTE_NONE)
  {
    if (def == XML_ATTRIBUTE_REQUIRED)
    {
      v9 = " #REQUIRED";
LABEL_36:
      xmlBufferWriteChar(buf, v9);
      goto LABEL_37;
    }

LABEL_34:
    __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: ATTRIBUTE struct corrupted invalid def\n");
  }

LABEL_37:
  if (attr->defaultValue)
  {
    xmlBufferWriteChar(buf, " ");
    xmlBufferWriteQuotedString(buf, attr->defaultValue);
  }

  xmlBufferWriteChar(buf, ">\n");
}

void xmlDumpEnumeration(xmlBufferPtr buf, uint64_t **a2)
{
  if (a2)
  {
    v2 = a2;
    while (1)
    {
      xmlBufferWriteCHAR(buf, v2[1]);
      if (!*v2)
      {
        break;
      }

      xmlBufferWriteChar(buf, " | ");
      v2 = *v2;
      if (!v2)
      {
        return;
      }
    }

    xmlBufferWriteChar(buf, ")");
  }
}

void xmlDumpAttributeTable(xmlBufferPtr buf, xmlAttributeTablePtr table)
{
  if (buf)
  {
    if (table)
    {
      xmlHashScan(table, xmlDumpAttributeDeclScan, buf);
    }
  }
}

xmlNotationPtr xmlAddNotationDecl(xmlValidCtxtPtr ctxt, xmlDtdPtr dtd, const xmlChar *name, const xmlChar *PublicID, const xmlChar *SystemID)
{
  v5 = 0;
  if (dtd && name)
  {
    if (!(PublicID | SystemID))
    {
      return 0;
    }

    notations = dtd->notations;
    if (!notations)
    {
      doc = dtd->doc;
      v13 = doc ? doc->dict : 0;
      notations = xmlHashCreateDict(0, v13);
      dtd->notations = notations;
      if (!notations)
      {
        xmlVErrMemory(ctxt, "xmlAddNotationDecl: Table creation failed!\n");
        return 0;
      }
    }

    v14 = malloc_type_malloc(0x18uLL, 0x500401FEF362DuLL);
    v5 = v14;
    if (v14)
    {
      v14->name = 0;
      v14->PublicID = 0;
      v14->SystemID = 0;
      v14->name = xmlStrdup(name);
      if (SystemID)
      {
        v5->SystemID = xmlStrdup(SystemID);
      }

      if (PublicID)
      {
        v5->PublicID = xmlStrdup(PublicID);
      }

      if (xmlHashAddEntry(notations, name, v5))
      {
        __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 526, 2, 0, 0, name, 0, 0, 0, 0, "xmlAddNotationDecl: %s already defined\n", name);
        xmlFreeNotation(v5);
        return 0;
      }
    }

    else
    {
      xmlVErrMemory(ctxt, "malloc failed");
    }
  }

  return v5;
}

void xmlFreeNotation(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      free(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      free(v4);
    }

    free(a1);
  }
}

void *xmlCopyNotation(uint64_t a1)
{
  v2 = malloc_type_malloc(0x18uLL, 0x500401FEF362DuLL);
  if (v2)
  {
    v3 = *a1;
    if (*a1)
    {
      v3 = xmlStrdup(v3);
    }

    *v2 = v3;
    v4 = *(a1 + 8);
    if (v4)
    {
      v4 = xmlStrdup(v4);
    }

    v2[1] = v4;
    v5 = *(a1 + 16);
    if (v5)
    {
      v2[2] = xmlStrdup(v5);
    }

    else
    {
      v2[2] = 0;
    }
  }

  else
  {
    xmlVErrMemory(0, "malloc failed");
  }

  return v2;
}

void xmlDumpNotationDecl(xmlBufferPtr buf, xmlNotationPtr nota)
{
  if (!buf || !nota)
  {
    return;
  }

  xmlBufferWriteChar(buf, "<!NOTATION ");
  xmlBufferWriteCHAR(buf, nota->name);
  if (!nota->PublicID)
  {
    xmlBufferWriteChar(buf, " SYSTEM ");
    p_SystemID = &nota->SystemID;
    goto LABEL_8;
  }

  xmlBufferWriteChar(buf, " PUBLIC ");
  xmlBufferWriteQuotedString(buf, nota->PublicID);
  SystemID = nota->SystemID;
  p_SystemID = &nota->SystemID;
  if (SystemID)
  {
    xmlBufferWriteChar(buf, " ");
LABEL_8:
    xmlBufferWriteQuotedString(buf, *p_SystemID);
  }

  xmlBufferWriteChar(buf, " >\n");
}

void xmlDumpNotationTable(xmlBufferPtr buf, xmlNotationTablePtr table)
{
  if (buf)
  {
    if (table)
    {
      xmlHashScan(table, xmlDumpNotationDeclScan, buf);
    }
  }
}

xmlIDPtr xmlAddID(xmlValidCtxtPtr ctxt, xmlDocPtr doc, const xmlChar *value, xmlAttrPtr attr)
{
  v4 = 0;
  if (doc)
  {
    if (value)
    {
      v4 = 0;
      if (attr)
      {
        if (*value)
        {
          ids = doc->ids;
          if (ids || (ids = xmlHashCreateDict(0, doc->dict), (doc->ids = ids) != 0))
          {
            v4 = malloc_type_malloc(0x30uLL, 0x1070040EF9B3C64uLL);
            if (!v4)
            {
              xmlVErrMemory(ctxt, "malloc failed");
              return v4;
            }

            v4->value = xmlStrdup(value);
            v4->doc = doc;
            if (ctxt && ctxt->finishDtd >> 1 == 1441171738 && *(ctxt->userData + 172) == 5)
            {
              dict = doc->dict;
              if (dict)
              {
                v11 = xmlDictLookup(dict, attr->name, -1);
              }

              else
              {
                v11 = xmlStrdup(attr->name);
              }

              v12 = 16;
              v13 = 24;
            }

            else
            {
              v12 = 24;
              v13 = 16;
              v11 = attr;
            }

            *(&v4->next + v13) = v11;
            *(&v4->next + v12) = 0;
            v4->lineno = xmlGetLineNo(attr->parent);
            if ((xmlHashAddEntry(ids, value, v4) & 0x80000000) == 0)
            {
              attr->atype = attr->atype & 0x78000000 | 2;
              return v4;
            }

            if (ctxt)
            {
              xmlErrValidNode(ctxt, attr->parent, 513, "ID %s already defined\n", value, 0, 0);
            }

            xmlFreeID(v4);
          }

          else
          {
            xmlVErrMemory(ctxt, "xmlAddID: Table creation failed!\n");
          }

          return 0;
        }
      }
    }
  }

  return v4;
}

void xmlFreeID(void *a1)
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

xmlAttributePtr xmlGetDtdAttrDesc(xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name)
{
  prefix = 0;
  if (!dtd)
  {
    return 0;
  }

  attributes = dtd->attributes;
  if (!attributes)
  {
    return 0;
  }

  v6 = xmlSplitQName2(name, &prefix);
  if (!v6)
  {
    return xmlHashLookup3(attributes, name, 0, elem);
  }

  v7 = v6;
  v8 = xmlHashLookup3(attributes, v6, prefix, elem);
  if (prefix)
  {
    free(prefix);
  }

  free(v7);
  return v8;
}

int xmlRemoveID(xmlDocPtr doc, xmlAttrPtr attr)
{
  result = -1;
  if (doc && attr)
  {
    ids = doc->ids;
    if (ids)
    {
      String = xmlNodeListGetString(doc, attr->children, 1);
      if (String)
      {
        v7 = String;
        xmlValidNormalizeString(String);
        v8 = xmlHashLookup(ids, v7);
        if (v8 && v8[2] == attr)
        {
          xmlHashRemoveEntry(ids, v7, xmlFreeIDTableEntry);
          free(v7);
          result = 0;
          attr->atype = 0;
          return result;
        }

        free(v7);
      }
    }

    return -1;
  }

  return result;
}

_BYTE *xmlValidNormalizeString(_BYTE *result)
{
  v1 = result - 1;
  do
  {
    v3 = *++v1;
    v2 = v3;
  }

  while (v3 == 32);
  while (v2 == 32)
  {
    while (v2 == 32)
    {
      v4 = *++v1;
      v2 = v4;
    }

    if (v2)
    {
      LOBYTE(v2) = 32;
      goto LABEL_9;
    }

LABEL_10:
    v2 = *v1;
  }

  if (v2)
  {
    ++v1;
LABEL_9:
    *result++ = v2;
    goto LABEL_10;
  }

  *result = 0;
  return result;
}

xmlAttrPtr xmlGetID(xmlDocPtr doc, const xmlChar *ID)
{
  result = 0;
  if (doc)
  {
    if (ID)
    {
      result = doc->ids;
      if (result)
      {
        result = xmlHashLookup(result, ID);
        if (result)
        {
          if (result->name)
          {
            return result->name;
          }

          else
          {
            return doc;
          }
        }
      }
    }
  }

  return result;
}

xmlRefPtr xmlAddRef(xmlValidCtxtPtr ctxt, xmlDocPtr doc, const xmlChar *value, xmlAttrPtr attr)
{
  v4 = 0;
  if (doc && value && attr)
  {
    refs = doc->refs;
    if (!refs)
    {
      refs = xmlHashCreateDict(0, doc->dict);
      doc->refs = refs;
      if (!refs)
      {
        xmlVErrMemory(ctxt, "xmlAddRef: Table creation failed!\n");
        return 0;
      }
    }

    v4 = malloc_type_malloc(0x28uLL, 0x10700402BC8EC0CuLL);
    if (v4)
    {
      v4->value = xmlStrdup(value);
      if (ctxt && ctxt->finishDtd >> 1 == 1441171738 && *(ctxt->userData + 172) == 5)
      {
        v10 = xmlStrdup(attr->name);
        v11 = 0;
      }

      else
      {
        v10 = 0;
        v11 = attr;
      }

      v4->attr = v11;
      v4->name = v10;
      v4->lineno = xmlGetLineNo(attr->parent);
      v12 = xmlHashLookup(refs, value);
      if (!v12)
      {
        v13 = xmlListCreate(xmlFreeRef, xmlDummyCompare);
        if (!v13)
        {
          __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlAddRef: Reference list creation failed!\n");
          goto LABEL_21;
        }

        v12 = v13;
        if (xmlHashAddEntry(refs, value, v13) < 0)
        {
          xmlListDelete(v12);
          xmlErrValid_0(0, 1, "xmlAddRef: Reference list insertion failed!\n", 0);
          goto LABEL_21;
        }
      }

      if (xmlListAppend(v12, v4))
      {
        __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 1, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlAddRef: Reference list insertion failed!\n");
LABEL_21:
        v14 = v4->value;
        if (v14)
        {
          free(v14);
        }

        name = v4->name;
        if (name)
        {
          free(name);
        }

        free(v4);
        return 0;
      }
    }

    else
    {
      xmlVErrMemory(ctxt, "malloc failed");
    }
  }

  return v4;
}

void xmlFreeRef(xmlLink *a1)
{
  Data = xmlLinkGetData(a1);
  if (Data)
  {
    v2 = Data;
    v3 = Data[1];
    if (v3)
    {
      free(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      free(v4);
    }

    free(v2);
  }
}

void xmlFreeRefTableEntry(xmlListPtr l)
{
  if (l)
  {
    xmlListDelete(l);
  }
}

int xmlRemoveRef(xmlDocPtr doc, xmlAttrPtr attr)
{
  result = -1;
  if (!doc || !attr)
  {
    return result;
  }

  refs = doc->refs;
  if (!refs)
  {
    return -1;
  }

  String = xmlNodeListGetString(doc, attr->children, 1);
  if (!String)
  {
    return -1;
  }

  v7 = String;
  v8 = xmlHashLookup(refs, String);
  if (!v8)
  {
    free(v7);
    return -1;
  }

  v9 = v8;
  v10[0] = v8;
  v10[1] = attr;
  xmlListWalk(v8, xmlWalkRemoveRef, v10);
  if (xmlListEmpty(v9))
  {
    xmlHashUpdateEntry(refs, v7, 0, xmlFreeRefTableEntry);
  }

  free(v7);
  return 0;
}

uint64_t xmlWalkRemoveRef(void *data, uint64_t a2)
{
  if (data[2] != *(a2 + 8))
  {
    return 1;
  }

  xmlListRemoveFirst(*a2, data);
  return 0;
}

xmlListPtr xmlGetRefs(xmlDocPtr doc, const xmlChar *ID)
{
  if (doc && ID && (refs = doc->refs) != 0)
  {
    return xmlHashLookup(refs, ID);
  }

  else
  {
    return 0;
  }
}

xmlElementPtr xmlGetDtdElementDesc(xmlDtdPtr dtd, const xmlChar *name)
{
  elements = 0;
  prefix = 0;
  if (dtd)
  {
    if (name)
    {
      elements = dtd->elements;
      if (elements)
      {
        v4 = xmlSplitQName2(name, &prefix);
        v5 = v4;
        if (v4)
        {
          v6 = v4;
        }

        else
        {
          v6 = name;
        }

        elements = xmlHashLookup2(elements, v6, prefix);
        if (prefix)
        {
          free(prefix);
        }

        if (v5)
        {
          free(v5);
        }
      }
    }
  }

  return elements;
}

xmlElementPtr xmlGetDtdQElementDesc(xmlDtdPtr dtd, const xmlChar *name, const xmlChar *prefix)
{
  if (dtd && (elements = dtd->elements) != 0)
  {
    return xmlHashLookup2(elements, name, prefix);
  }

  else
  {
    return 0;
  }
}

xmlAttributePtr xmlGetDtdQAttrDesc(xmlDtdPtr dtd, const xmlChar *elem, const xmlChar *name, const xmlChar *prefix)
{
  if (dtd && (attributes = dtd->attributes) != 0)
  {
    return xmlHashLookup3(attributes, name, prefix, elem);
  }

  else
  {
    return 0;
  }
}

xmlNotationPtr xmlGetDtdNotationDesc(xmlDtdPtr dtd, const xmlChar *name)
{
  if (dtd && (notations = dtd->notations) != 0)
  {
    return xmlHashLookup(notations, name);
  }

  else
  {
    return 0;
  }
}

int xmlValidateNotationUse(xmlValidCtxtPtr ctxt, xmlDocPtr doc, const xmlChar *notationName)
{
  if (!doc)
  {
    return -1;
  }

  result = -1;
  if (notationName)
  {
    intSubset = doc->intSubset;
    if (intSubset)
    {
      notations = intSubset->notations;
      if (notations && xmlHashLookup(notations, notationName))
      {
        return 1;
      }

      else
      {
        extSubset = doc->extSubset;
        v11 = !extSubset || (v10 = extSubset->notations) == 0 || xmlHashLookup(v10, notationName) == 0;
        result = 1;
        if (ctxt)
        {
          if (v11)
          {
            xmlErrValidNode(ctxt, doc, 537, "NOTATION %s is not declared\n", notationName, 0, 0);
            return 0;
          }
        }
      }
    }
  }

  return result;
}

int xmlIsMixedElement(xmlDocPtr doc, const xmlChar *name)
{
  if (!doc)
  {
    return -1;
  }

  intSubset = doc->intSubset;
  if (!intSubset)
  {
    return -1;
  }

  DtdElementDesc = xmlGetDtdElementDesc(intSubset, name);
  if (!DtdElementDesc)
  {
    extSubset = doc->extSubset;
    if (!extSubset)
    {
      return -1;
    }

    DtdElementDesc = xmlGetDtdElementDesc(extSubset, name);
    if (!DtdElementDesc)
    {
      return -1;
    }
  }

  etype = DtdElementDesc->etype;
  if (etype > 4)
  {
    return 1;
  }

  else
  {
    return dword_1C79BAD68[etype];
  }
}

uint64_t xmlValidateNameValueInternal(uint64_t a1, const xmlChar *a2)
{
  if (!a2)
  {
    return 0;
  }

  len = 0;
  v4 = xmlStringCurrentChar(0, a2, &len);
  v5 = len;
  result = xmlIsDocNameStartChar(a1, v4);
  if (result)
  {
    v7 = &a2[v5];
    v8 = xmlStringCurrentChar(0, v7, &len);
    v9 = len;
    if (xmlIsDocNameChar(a1, v8))
    {
      v10 = &v7[v9];
      do
      {
        v8 = xmlStringCurrentChar(0, v10, &len);
        v10 += len;
      }

      while (xmlIsDocNameChar(a1, v8));
    }

    return v8 == 0;
  }

  return result;
}

uint64_t xmlValidateNamesValueInternal(uint64_t a1, const xmlChar *a2)
{
  if (!a2)
  {
    return 0;
  }

  len = 0;
  v4 = xmlStringCurrentChar(0, a2, &len);
  v5 = len;
  result = xmlIsDocNameStartChar(a1, v4);
  if (result)
  {
    v7 = &a2[v5];
    do
    {
      v8 = xmlStringCurrentChar(0, v7, &len);
      v7 += len;
    }

    while (xmlIsDocNameChar(a1, v8));
    while (v8 == 32)
    {
      do
      {
        v9 = xmlStringCurrentChar(0, v7, &len);
        v7 += len;
      }

      while (v9 == 32);
      result = xmlIsDocNameStartChar(a1, v9);
      if (!result)
      {
        return result;
      }

      do
      {
        v8 = xmlStringCurrentChar(0, v7, &len);
        v7 += len;
      }

      while (xmlIsDocNameChar(a1, v8));
    }

    return v8 == 0;
  }

  return result;
}

uint64_t xmlValidateNmtokenValueInternal(uint64_t a1, const xmlChar *a2)
{
  if (!a2)
  {
    return 0;
  }

  len = 0;
  v4 = xmlStringCurrentChar(0, a2, &len);
  v5 = len;
  result = xmlIsDocNameChar(a1, v4);
  if (result)
  {
    v7 = &a2[v5];
    v8 = xmlStringCurrentChar(0, v7, &len);
    v9 = len;
    if (xmlIsDocNameChar(a1, v8))
    {
      v10 = &v7[v9];
      do
      {
        v8 = xmlStringCurrentChar(0, v10, &len);
        v10 += len;
      }

      while (xmlIsDocNameChar(a1, v8));
    }

    return v8 == 0;
  }

  return result;
}

uint64_t xmlValidateNmtokensValueInternal(uint64_t a1, const xmlChar *a2)
{
  if (!a2)
  {
    return 0;
  }

  len = 0;
  v4 = xmlStringCurrentChar(0, a2, &len);
  v5 = &a2[len];
  if (v4 <= 255)
  {
    do
    {
      if (v4 > 0x20)
      {
        break;
      }

      if (((1 << v4) & 0x100002600) == 0)
      {
        break;
      }

      v4 = xmlStringCurrentChar(0, v5, &len);
      v5 += len;
    }

    while (v4 < 256);
  }

  result = xmlIsDocNameChar(a1, v4);
  if (result)
  {
    while (xmlIsDocNameChar(a1, v4))
    {
      v4 = xmlStringCurrentChar(0, v5, &len);
      v5 += len;
    }

    while (1)
    {
      if (v4 != 32)
      {
        return v4 == 0;
      }

      while (v4 == 32)
      {
        v4 = xmlStringCurrentChar(0, v5, &len);
        v5 += len;
      }

      if (!v4)
      {
        break;
      }

      result = xmlIsDocNameChar(a1, v4);
      if (!result)
      {
        return result;
      }

      do
      {
        v4 = xmlStringCurrentChar(0, v5, &len);
        v5 += len;
      }

      while (xmlIsDocNameChar(a1, v4));
    }

    return 1;
  }

  return result;
}

xmlChar *__cdecl xmlValidCtxtNormalizeAttributeValue(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem, const xmlChar *name, const xmlChar *value)
{
  v5 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (!doc || !elem || !name || !value)
  {
    goto LABEL_25;
  }

  ns = elem->ns;
  if (!ns || (prefix = ns->prefix) == 0)
  {
    v15 = 0;
    goto LABEL_12;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v5 = xmlBuildQName(elem->name, prefix, v23, 50);
  if (!v5)
  {
    goto LABEL_25;
  }

  DtdAttrDesc = xmlGetDtdAttrDesc(doc->intSubset, v5, name);
  if (DtdAttrDesc)
  {
    v14 = DtdAttrDesc;
  }

  else
  {
    extSubset = doc->extSubset;
    if (extSubset)
    {
      v14 = xmlGetDtdAttrDesc(extSubset, v5, name);
      v15 = v14 != 0;
      goto LABEL_19;
    }

    v14 = 0;
  }

  v15 = 0;
LABEL_19:
  if (v5 != v23 && v5 != elem->name)
  {
    free(v5);
  }

  if (!v14)
  {
LABEL_12:
    intSubset = doc->intSubset;
    if (!intSubset || (v14 = xmlGetDtdAttrDesc(intSubset, elem->name, name)) == 0)
    {
      v17 = doc->extSubset;
      if (!v17)
      {
        goto LABEL_24;
      }

      v18 = xmlGetDtdAttrDesc(v17, elem->name, name);
      if (!v18)
      {
        goto LABEL_24;
      }

      v14 = v18;
      v15 = 1;
    }
  }

  if (v14->atype == XML_ATTRIBUTE_CDATA)
  {
LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  v22 = xmlStrdup(value);
  v5 = v22;
  if (v22)
  {
    xmlValidNormalizeString(v22);
    if (v15 && doc->standalone && !xmlStrEqual(value, v5))
    {
      xmlErrValidNode(ctxt, elem, 530, "standalone: %s on %s value had to be normalized based on external subset declaration\n", name, elem->name, 0);
      ctxt->valid = 0;
    }
  }

LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

xmlChar *__cdecl xmlValidNormalizeAttributeValue(xmlDocPtr doc, xmlNodePtr elem, const xmlChar *name, const xmlChar *value)
{
  v4 = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (!doc || !elem || !name || !value)
  {
    goto LABEL_18;
  }

  ns = elem->ns;
  if (ns)
  {
    prefix = ns->prefix;
    if (prefix)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v11 = xmlBuildQName(elem->name, prefix, v17, 50);
      if (!v11)
      {
LABEL_17:
        v4 = 0;
        goto LABEL_18;
      }

      if (v11 != v17 && v11 != elem->name)
      {
        free(v11);
      }
    }
  }

  DtdAttrDesc = xmlGetDtdAttrDesc(doc->intSubset, elem->name, name);
  if (!DtdAttrDesc)
  {
    extSubset = doc->extSubset;
    if (!extSubset)
    {
      goto LABEL_17;
    }

    DtdAttrDesc = xmlGetDtdAttrDesc(extSubset, elem->name, name);
    if (!DtdAttrDesc)
    {
      goto LABEL_17;
    }
  }

  if (DtdAttrDesc->atype == XML_ATTRIBUTE_CDATA)
  {
    goto LABEL_17;
  }

  v13 = xmlStrdup(value);
  v4 = v13;
  if (v13)
  {
    xmlValidNormalizeString(v13);
  }

LABEL_18:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

int xmlValidateAttributeDecl(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlAttributePtr attr)
{
  if (!doc || *&doc->intSubset == 0)
  {
    return 0;
  }

  if (!attr)
  {
    return 1;
  }

  defaultValue = attr->defaultValue;
  if (defaultValue && !xmlValidateAttributeValueInternal(doc, attr->atype, defaultValue))
  {
    xmlErrValidNode(ctxt, attr, 500, "Syntax of default value for attribute %s of %s is not valid\n", attr->name, attr->elem, 0);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  if (attr->atype != XML_ATTRIBUTE_ID)
  {
    goto LABEL_38;
  }

  if ((attr->def & 0xFFFFFFFE) != 2)
  {
    xmlErrValidNode(ctxt, attr, 512, "ID attribute %s of %s is not valid must be #IMPLIED or #REQUIRED\n", attr->name, attr->elem, 0);
    v7 = 0;
    if (attr->atype != XML_ATTRIBUTE_ID)
    {
      goto LABEL_38;
    }
  }

  DtdElementDesc = xmlGetDtdElementDesc(doc->intSubset, attr->elem);
  if (DtdElementDesc)
  {
    attributes = DtdElementDesc->attributes;
    if (attributes)
    {
      v10 = 0;
      do
      {
        if (attributes->atype == XML_ATTRIBUTE_ID)
        {
          ++v10;
        }

        attributes = attributes->nexth;
      }

      while (attributes);
    }

    else
    {
      v10 = 0;
    }

    data = v10;
LABEL_23:
    if (v10 >= 2)
    {
      elem = attr->elem;
      name = attr->name;
      v14 = "Element %s has %d ID attribute defined in the internal subset : %s\n";
LABEL_25:
      xmlErrValidNodeNr(ctxt, attr, 514, v14, elem, v10, name);
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  data = 0;
  intSubset = doc->intSubset;
  if (intSubset)
  {
    xmlHashScan3(intSubset->attributes, 0, 0, attr->elem, xmlValidateAttributeIdCallback, &data);
    v10 = data;
    goto LABEL_23;
  }

LABEL_26:
  extSubset = doc->extSubset;
  if (!extSubset)
  {
    goto LABEL_38;
  }

  v16 = xmlGetDtdElementDesc(extSubset, attr->elem);
  if (v16 && (v17 = v16->attributes) != 0)
  {
    v10 = 0;
    do
    {
      if (v17->atype == XML_ATTRIBUTE_ID)
      {
        ++v10;
      }

      v17 = v17->nexth;
    }

    while (v17);
    if (v10 >= 2)
    {
      elem = attr->elem;
      name = attr->name;
      v14 = "Element %s has %d ID attribute defined in the external subset : %s\n";
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
  }

  if (data + v10 >= 2)
  {
    xmlErrValidNode(ctxt, attr, 514, "Element %s has ID attributes defined in the internal and external subset : %s\n", attr->elem, attr->name, 0);
  }

LABEL_38:
  if (attr->defaultValue)
  {
    tree = attr->tree;
    if (tree)
    {
      while (!xmlStrEqual(tree->name, attr->defaultValue))
      {
        tree = tree->next;
        if (!tree)
        {
          xmlErrValidNode(ctxt, attr, 502, "Default value %s for attribute %s of %s is not among the enumerated set\n", attr->defaultValue, attr->name, attr->elem);
          return 0;
        }
      }
    }
  }

  return v7;
}

uint64_t xmlValidateAttributeIdCallback(uint64_t result, _DWORD *a2)
{
  if (*(result + 80) == 2)
  {
    ++*a2;
  }

  return result;
}

_DWORD *xmlErrValidNodeNr(uint64_t a1, uint64_t a2, int a3, const char *a4, const xmlChar *a5, int a6, xmlChar *cur)
{
  if (a1)
  {
    v10 = *a1;
    v9 = *(a1 + 8);
    if (*(a1 + 48) >> 1 == 1441171738)
    {
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v10 = 0;
  }

  return __xmlRaiseError(0, v9, v10, v11, a2, 0x17u, a3, 2, 0, 0, a5, cur, 0, a6, 0, a4, a5);
}

int xmlValidateElementDecl(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlElementPtr elem)
{
  if (!doc)
  {
    return 0;
  }

  intSubset = doc->intSubset;
  if (*&doc->intSubset == 0)
  {
    return 0;
  }

  if (!elem)
  {
    return 1;
  }

  if (elem->etype == XML_ELEMENT_TYPE_MIXED && (content = elem->content) != 0)
  {
    v8 = 1;
    do
    {
      if (content->type != XML_ELEMENT_CONTENT_OR)
      {
        break;
      }

      c1 = content->c1;
      if (!c1)
      {
        break;
      }

      if (c1->type == XML_ELEMENT_CONTENT_ELEMENT)
      {
        c2 = content->c2;
        if (c2)
        {
          name = c1->name;
          while (c2->type != XML_ELEMENT_CONTENT_ELEMENT)
          {
            v12 = c2->c1;
            if (v12 && v12->type == XML_ELEMENT_CONTENT_ELEMENT)
            {
              if (xmlStrEqual(v12->name, name) && xmlStrEqual(c2->c1->prefix, content->c1->prefix))
              {
                prefix = content->c1->prefix;
                if (prefix)
                {
                  v14 = "Definition of %s has duplicate references to %s:%s\n";
                  v15 = name;
                }

                else
                {
                  v14 = "Definition of %s has duplicate references to %s\n";
                  prefix = name;
                  v15 = 0;
                }

                xmlErrValidNode(ctxt, elem, 503, v14, elem->name, prefix, v15);
                v8 = 0;
              }

              c2 = c2->c2;
              if (c2)
              {
                continue;
              }
            }

            goto LABEL_29;
          }

          if (xmlStrEqual(c2->name, name) && xmlStrEqual(c2->prefix, content->c1->prefix))
          {
            v16 = content->c1->prefix;
            if (v16)
            {
              v17 = "Definition of %s has duplicate references of %s:%s\n";
              v18 = name;
            }

            else
            {
              v17 = "Definition of %s has duplicate references of %s\n";
              v16 = name;
              v18 = 0;
            }

            xmlErrValidNode(ctxt, elem, 503, v17, elem->name, v16, v18);
            v8 = 0;
          }
        }
      }

LABEL_29:
      content = content->c2;
    }

    while (content);
    intSubset = doc->intSubset;
  }

  else
  {
    v8 = 1;
  }

  DtdElementDesc = xmlGetDtdElementDesc(intSubset, elem->name);
  if (DtdElementDesc)
  {
    v20 = DtdElementDesc == elem;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    v21 = DtdElementDesc;
    v22 = DtdElementDesc->prefix;
    v23 = elem->prefix;
    if (v22 == v23 || xmlStrEqual(v22, v23))
    {
      if (v21->etype)
      {
        xmlErrValidNode(ctxt, elem, 509, "Redefinition of element %s\n", elem->name, 0, 0);
        v8 = 0;
      }
    }
  }

  v24 = xmlGetDtdElementDesc(doc->extSubset, elem->name);
  if (v24)
  {
    v25 = v24 == elem;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    v26 = v24;
    v27 = v24->prefix;
    v28 = elem->prefix;
    if (v27 == v28 || xmlStrEqual(v27, v28))
    {
      if (v26->etype)
      {
        xmlErrValidNode(ctxt, elem, 509, "Redefinition of element %s\n", elem->name, 0, 0);
        return 0;
      }
    }
  }

  return v8;
}

int xmlValidateOneAttribute(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem, xmlAttrPtr attr, const xmlChar *value)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!doc)
  {
    goto LABEL_44;
  }

  if (doc->intSubset)
  {
    if (!elem)
    {
      goto LABEL_44;
    }
  }

  else
  {
    LODWORD(v10) = 0;
    if (!elem || !doc->extSubset)
    {
      goto LABEL_45;
    }
  }

  LODWORD(v10) = 0;
  if (!attr)
  {
    goto LABEL_45;
  }

  name = elem->name;
  if (!name)
  {
    goto LABEL_45;
  }

  if (!attr->name)
  {
LABEL_44:
    LODWORD(v10) = 0;
    goto LABEL_45;
  }

  ns = elem->ns;
  if (ns && ns->prefix)
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v10 = xmlBuildQName(name, ns->prefix, v41, 50);
    if (!v10)
    {
      goto LABEL_45;
    }

    v13 = v10;
    v14 = attr->ns;
    intSubset = doc->intSubset;
    if (v14)
    {
      if (intSubset)
      {
        attributes = intSubset->attributes;
        if (attributes)
        {
          DtdAttrDesc = xmlHashLookup3(attributes, attr->name, v14->prefix, v13);
          if (DtdAttrDesc)
          {
            goto LABEL_23;
          }
        }
      }

      extSubset = doc->extSubset;
      if (extSubset)
      {
        v19 = extSubset->attributes;
        if (v19)
        {
          DtdAttrDesc = xmlHashLookup3(v19, attr->name, attr->ns->prefix, v13);
LABEL_23:
          v21 = DtdAttrDesc;
LABEL_25:
          if (v13 != v41 && v13 != elem->name)
          {
            free(v13);
          }

          if (v21)
          {
            goto LABEL_41;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      DtdAttrDesc = xmlGetDtdAttrDesc(intSubset, v13, attr->name);
      if (DtdAttrDesc)
      {
        goto LABEL_23;
      }

      v20 = doc->extSubset;
      if (v20)
      {
        DtdAttrDesc = xmlGetDtdAttrDesc(v20, v13, attr->name);
        goto LABEL_23;
      }
    }

    v21 = 0;
    goto LABEL_25;
  }

LABEL_29:
  v22 = attr->ns;
  v23 = doc->intSubset;
  if (v22)
  {
    if (!v23 || (v24 = v23->attributes) == 0 || (v25 = xmlHashLookup3(v24, attr->name, v22->prefix, elem->name)) == 0)
    {
      v26 = doc->extSubset;
      if (v26)
      {
        v27 = v26->attributes;
        if (v27)
        {
          v28 = xmlHashLookup3(v27, attr->name, attr->ns->prefix, elem->name);
          goto LABEL_40;
        }
      }

      goto LABEL_43;
    }
  }

  else
  {
    v25 = xmlGetDtdAttrDesc(v23, elem->name, attr->name);
    if (!v25)
    {
      v29 = doc->extSubset;
      if (v29)
      {
        v28 = xmlGetDtdAttrDesc(v29, elem->name, attr->name);
LABEL_40:
        v21 = v28;
        if (v28)
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      xmlErrValidNode(ctxt, elem, 533, "No declaration for attribute %s of element %s\n", attr->name, elem->name, 0);
      goto LABEL_44;
    }
  }

  v21 = v25;
LABEL_41:
  v30 = *(v21 + 20);
  attr->atype = v30 & 0x87FFFFFF | (((attr->atype >> 27) & 0xF) << 27);
  if (xmlValidateAttributeValueInternal(doc, v30, value))
  {
    v31 = 1;
  }

  else
  {
    xmlErrValidNode(ctxt, elem, 502, "Syntax of value for attribute %s of %s is not valid\n", attr->name, elem->name, 0);
    v31 = 0;
  }

  if (*(v21 + 21) == 4 && !xmlStrEqual(value, *(v21 + 11)))
  {
    xmlErrValidNode(ctxt, elem, 500, "Value for attribute %s of %s is different from default %s\n", attr->name, elem->name, *(v21 + 11));
    v31 = 0;
  }

  v33 = *(v21 + 20);
  if (v33 == 2)
  {
    if (!xmlAddID(ctxt, doc, value, attr))
    {
      v31 = 0;
    }

    v33 = *(v21 + 20);
  }

  if ((v33 - 3) <= 1)
  {
    if (!xmlAddRef(ctxt, doc, value, attr))
    {
      v31 = 0;
    }

    v33 = *(v21 + 20);
  }

  if (v33 == 10)
  {
    v34 = *(v21 + 12);
    v35 = doc->intSubset;
    if (!v35 || (v36 = v35->notations) == 0 || !xmlHashLookup(v36, value))
    {
      v37 = doc->extSubset;
      if (!v37 || (notations = v37->notations) == 0 || !xmlHashLookup(notations, value))
      {
        xmlErrValidNode(ctxt, elem, 537, "Value %s for attribute %s of %s is not a declared Notation\n", value, attr->name, elem->name);
        v31 = 0;
      }
    }

    if (v34)
    {
      while (!xmlStrEqual(v34[1], value))
      {
        v34 = *v34;
        if (!v34)
        {
          goto LABEL_69;
        }
      }
    }

    else
    {
LABEL_69:
      xmlErrValidNode(ctxt, elem, 527, "Value %s for attribute %s of %s is not among the enumerated notations\n", value, attr->name, elem->name);
      v31 = 0;
    }
  }

  if (*(v21 + 20) == 9)
  {
    v39 = (v21 + 96);
    while (1)
    {
      v39 = *v39;
      if (!v39)
      {
        break;
      }

      if (xmlStrEqual(v39[1], value))
      {
        goto LABEL_76;
      }
    }

    xmlErrValidNode(ctxt, elem, 502, "Value %s for attribute %s of %s is not among the enumerated set\n", value, attr->name, elem->name);
    v31 = 0;
  }

LABEL_76:
  if (*(v21 + 21) == 4 && !xmlStrEqual(*(v21 + 11), value))
  {
    xmlErrValidNode(ctxt, elem, 502, "Value for attribute %s of %s must be %s\n", attr->name, elem->name, *(v21 + 11));
    v31 = 0;
  }

  LODWORD(v10) = xmlValidateAttributeValue2(ctxt, doc, attr->name, *(v21 + 20), value) & v31;
LABEL_45:
  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t xmlValidateAttributeValue2(uint64_t a1, xmlDoc *doc, const xmlChar *a3, int a4, xmlChar *name)
{
  if (a4 == 10)
  {
    intSubset = doc->intSubset;
    if (!intSubset || (v28 = intSubset->notations) == 0 || !xmlHashLookup(v28, name))
    {
      extSubset = doc->extSubset;
      if (!extSubset || (notations = extSubset->notations) == 0 || !xmlHashLookup(notations, name))
      {
        v10 = "NOTATION attribute %s reference an unknown notation %s\n";
        v11 = a1;
        v12 = doc;
        v13 = 537;
        goto LABEL_37;
      }
    }

    return 1;
  }

  if (a4 != 6)
  {
    if (a4 == 5)
    {
      DocEntity = xmlGetDocEntity(doc, name);
      if (!DocEntity)
      {
        if (doc->standalone != 1 || (doc->standalone = 0, (DocEntity = xmlGetDocEntity(doc, name)) == 0))
        {
          v10 = "ENTITY attribute %s reference an unknown entity %s\n";
          v11 = a1;
          v12 = doc;
          v13 = 535;
          goto LABEL_37;
        }
      }

      if (DocEntity->etype != XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
      {
        v10 = "ENTITY attribute %s reference an entity %s of wrong type\n";
        v11 = a1;
        v12 = doc;
        v13 = 511;
LABEL_37:
        xmlErrValidNode(v11, v12, v13, v10, a3, name, 0);
        return 0;
      }
    }

    return 1;
  }

  v14 = xmlStrdup(name);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = *v14;
  if (*v14)
  {
    v17 = v14;
    v18 = 1;
    while (1)
    {
LABEL_10:
      v19 = v17;
      while (v16 > 0x20 || ((1 << v16) & 0x100002601) == 0)
      {
        v20 = *++v19;
        v16 = v20;
      }

      *v19 = 0;
      v21 = xmlGetDocEntity(doc, v17);
      if (v21)
      {
        if (v21->etype == XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
        {
          goto LABEL_19;
        }

        v22 = a1;
        v23 = doc;
        v24 = 511;
        v25 = "ENTITIES attribute %s reference an entity %s of wrong type\n";
      }

      else
      {
        v22 = a1;
        v23 = doc;
        v24 = 535;
        v25 = "ENTITIES attribute %s reference an unknown entity %s\n";
      }

      xmlErrValidNode(v22, v23, v24, v25, a3, v17, 0);
      v18 = 0;
LABEL_19:
      if (!v16)
      {
        goto LABEL_40;
      }

      *v19 = v16;
      v17 = v19;
      while (v16 <= 0x20)
      {
        if (((1 << v16) & 0x100002600) == 0)
        {
          if (!v16)
          {
            goto LABEL_40;
          }

          goto LABEL_10;
        }

        v26 = *++v17;
        v16 = v26;
      }
    }
  }

  v18 = 1;
LABEL_40:
  free(v15);
  return v18;
}

int xmlValidateOneNamespace(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem, const xmlChar *prefix, xmlNsPtr ns, const xmlChar *value)
{
  v83 = *MEMORY[0x1E69E9840];
  if (!doc)
  {
    goto LABEL_49;
  }

  if (doc->intSubset)
  {
    if (!elem)
    {
      goto LABEL_49;
    }
  }

  else
  {
    result = 0;
    if (!elem || !doc->extSubset)
    {
      goto LABEL_50;
    }
  }

  result = 0;
  if (!ns)
  {
    goto LABEL_50;
  }

  name = elem->name;
  if (!name)
  {
    goto LABEL_50;
  }

  if (!ns->href)
  {
LABEL_49:
    result = 0;
    goto LABEL_50;
  }

  if (!prefix)
  {
    goto LABEL_29;
  }

  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v13 = xmlBuildQName(name, prefix, v81, 50);
  if (!v13)
  {
    xmlVErrMemory(ctxt, "Validating namespace");
    goto LABEL_49;
  }

  v14 = v13;
  v15 = ns->prefix;
  intSubset = doc->intSubset;
  if (!v15)
  {
    DtdAttrDesc = xmlGetDtdAttrDesc(intSubset, v14, "xmlns");
    if (DtdAttrDesc)
    {
      goto LABEL_23;
    }

    extSubset = doc->extSubset;
    if (extSubset)
    {
      DtdAttrDesc = xmlGetDtdAttrDesc(extSubset, v14, "xmlns");
      goto LABEL_23;
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (intSubset)
  {
    attributes = intSubset->attributes;
    if (attributes)
    {
      DtdAttrDesc = xmlHashLookup3(attributes, v15, "xmlns", v14);
      if (DtdAttrDesc)
      {
        goto LABEL_23;
      }
    }
  }

  v19 = doc->extSubset;
  if (!v19)
  {
    goto LABEL_24;
  }

  v20 = v19->attributes;
  if (!v20)
  {
    goto LABEL_24;
  }

  DtdAttrDesc = xmlHashLookup3(v20, ns->prefix, "xmlns", v14);
LABEL_23:
  v22 = DtdAttrDesc;
LABEL_25:
  if (v14 != v81 && v14 != elem->name)
  {
    free(v14);
  }

  if (v22)
  {
    goto LABEL_41;
  }

LABEL_29:
  v23 = ns->prefix;
  v24 = doc->intSubset;
  if (v23)
  {
    if (!v24 || (v25 = v24->attributes) == 0 || (v26 = xmlHashLookup3(v25, v23, "xmlns", elem->name)) == 0)
    {
      v27 = doc->extSubset;
      if (!v27)
      {
        goto LABEL_43;
      }

      v28 = v27->attributes;
      if (!v28)
      {
        goto LABEL_43;
      }

      v29 = xmlHashLookup3(v28, ns->prefix, "xmlns", elem->name);
LABEL_40:
      v22 = v29;
      if (v29)
      {
        goto LABEL_41;
      }

LABEL_43:
      v32 = ns->prefix;
      v33 = elem->name;
      if (v32)
      {
        v34 = "No declaration for attribute xmlns:%s of element %s\n";
        v35 = ctxt;
        v36 = elem;
      }

      else
      {
        v34 = "No declaration for attribute xmlns of element %s\n";
        v35 = ctxt;
        v36 = elem;
        v32 = elem->name;
        v33 = 0;
      }

      xmlErrValidNode(v35, v36, 533, v34, v32, v33, 0);
      goto LABEL_49;
    }
  }

  else
  {
    v26 = xmlGetDtdAttrDesc(v24, elem->name, "xmlns");
    if (!v26)
    {
      v30 = doc->extSubset;
      if (!v30)
      {
        goto LABEL_43;
      }

      v29 = xmlGetDtdAttrDesc(v30, elem->name, "xmlns");
      goto LABEL_40;
    }
  }

  v22 = v26;
LABEL_41:
  if (xmlValidateAttributeValueInternal(doc, *(v22 + 20), value))
  {
    v31 = 1;
  }

  else
  {
    v37 = ns->prefix;
    v38 = elem->name;
    if (v37)
    {
      v39 = "Syntax of value for attribute xmlns:%s of %s is not valid\n";
      v40 = ctxt;
      v41 = elem;
    }

    else
    {
      v39 = "Syntax of value for attribute xmlns of %s is not valid\n";
      v40 = ctxt;
      v41 = elem;
      v37 = elem->name;
      v38 = 0;
    }

    xmlErrValidNode(v40, v41, 516, v39, v37, v38, 0);
    v31 = 0;
  }

  if (*(v22 + 21) == 4 && !xmlStrEqual(value, *(v22 + 11)))
  {
    v43 = ns->prefix;
    v44 = elem->name;
    v45 = *(v22 + 11);
    if (v43)
    {
      v46 = "Value for attribute xmlns:%s of %s is different from default %s\n";
      v47 = ctxt;
      v48 = elem;
    }

    else
    {
      v46 = "Value for attribute xmlns of %s is different from default %s\n";
      v47 = ctxt;
      v48 = elem;
      v43 = elem->name;
      v44 = *(v22 + 11);
      v45 = 0;
    }

    xmlErrValidNode(v47, v48, 500, v46, v43, v44, v45);
    v31 = 0;
  }

  v49 = *(v22 + 20);
  if (v49 == 10)
  {
    v50 = *(v22 + 12);
    v51 = doc->intSubset;
    if (!v51 || (v52 = v51->notations) == 0 || !xmlHashLookup(v52, value))
    {
      v53 = doc->extSubset;
      if (!v53 || (notations = v53->notations) == 0 || !xmlHashLookup(notations, value))
      {
        v55 = ns->prefix;
        v56 = elem->name;
        if (v55)
        {
          v57 = "Value %s for attribute xmlns:%s of %s is not a declared Notation\n";
          v58 = ctxt;
          v59 = elem;
          v60 = value;
        }

        else
        {
          v57 = "Value %s for attribute xmlns of %s is not a declared Notation\n";
          v58 = ctxt;
          v59 = elem;
          v60 = value;
          v55 = elem->name;
          v56 = 0;
        }

        xmlErrValidNode(v58, v59, 537, v57, v60, v55, v56);
        v31 = 0;
      }
    }

    if (v50)
    {
      while (!xmlStrEqual(v50[1], value))
      {
        v50 = *v50;
        if (!v50)
        {
          goto LABEL_73;
        }
      }
    }

    else
    {
LABEL_73:
      v61 = ns->prefix;
      v62 = elem->name;
      if (v61)
      {
        v63 = "Value %s for attribute xmlns:%s of %s is not among the enumerated notations\n";
        v64 = ctxt;
        v65 = elem;
        v66 = value;
      }

      else
      {
        v63 = "Value %s for attribute xmlns of %s is not among the enumerated notations\n";
        v64 = ctxt;
        v65 = elem;
        v66 = value;
        v61 = elem->name;
        v62 = 0;
      }

      xmlErrValidNode(v64, v65, 527, v63, v66, v61, v62);
      v31 = 0;
    }

    v49 = *(v22 + 20);
  }

  if (v49 == 9)
  {
    v67 = (v22 + 96);
    while (1)
    {
      v67 = *v67;
      if (!v67)
      {
        break;
      }

      if (xmlStrEqual(v67[1], value))
      {
        goto LABEL_87;
      }
    }

    v68 = ns->prefix;
    v69 = elem->name;
    if (v68)
    {
      v70 = "Value %s for attribute xmlns:%s of %s is not among the enumerated set\n";
      v71 = ctxt;
      v72 = elem;
      v73 = value;
    }

    else
    {
      v70 = "Value %s for attribute xmlns of %s is not among the enumerated set\n";
      v71 = ctxt;
      v72 = elem;
      v73 = value;
      v68 = elem->name;
      v69 = 0;
    }

    xmlErrValidNode(v71, v72, 502, v70, v73, v68, v69);
    v31 = 0;
  }

LABEL_87:
  if (*(v22 + 21) == 4 && !xmlStrEqual(*(v22 + 11), value))
  {
    v74 = ns->prefix;
    v75 = elem->name;
    v76 = *(v22 + 11);
    if (v74)
    {
      v77 = "Value for attribute xmlns:%s of %s must be %s\n";
      v78 = ctxt;
      v79 = elem;
    }

    else
    {
      v77 = "Value for attribute xmlns of %s must be %s\n";
      v78 = ctxt;
      v79 = elem;
      v74 = elem->name;
      v75 = *(v22 + 11);
      v76 = 0;
    }

    xmlErrValidNode(v78, v79, 508, v77, v74, v75, v76);
    v31 = 0;
  }

  if (ns->prefix)
  {
    v80 = ns->prefix;
  }

  else
  {
    v80 = "xmlns";
  }

  result = xmlValidateAttributeValue2(ctxt, doc, v80, *(v22 + 20), value) & v31;
LABEL_50:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlValidatePushElement(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem, const xmlChar *qname)
{
  v37 = 0;
  if (!ctxt)
  {
    return 0;
  }

  v6 = ctxt;
  if (ctxt->vstateNr < 1 || (vstate = ctxt->vstate) == 0 || (v8 = *vstate) == 0)
  {
LABEL_48:
    v10 = 1;
    goto LABEL_49;
  }

  v9 = *(v8 + 72);
  v10 = 1;
  if (v9 <= 2)
  {
    if (!v9)
    {
      goto LABEL_74;
    }

    if (v9 != 1)
    {
      goto LABEL_49;
    }

    v11 = *(vstate + 1);
    v12 = *(v11 + 16);
    v13 = "Element %s was declared EMPTY this one has content\n";
    v14 = 528;
LABEL_18:
    v17 = 0;
    goto LABEL_73;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {
      v16 = *(vstate + 2);
      if (v16)
      {
        if (xmlRegExecPushString(v16, qname, 0) < 0)
        {
          v11 = *(vstate + 1);
          v12 = *(v11 + 16);
          v13 = "Element %s content does not follow the DTD, Misplaced %s\n";
          ctxt = v6;
          v14 = 504;
          v17 = qname;
          goto LABEL_73;
        }
      }
    }

    goto LABEL_49;
  }

  v18 = *(v8 + 80);
  if (!v18)
  {
    len = 0;
    xmlSplitQName3(qname, &len);
    goto LABEL_72;
  }

  if (*v18 == 1)
  {
    v11 = *(vstate + 1);
    v12 = *(v11 + 16);
    v13 = "Element %s was declared #PCDATA but contains non text nodes\n";
    v14 = 529;
    goto LABEL_18;
  }

  len = 0;
  v19 = xmlSplitQName3(qname, &len);
  if (v19)
  {
    v20 = v19;
    while (1)
    {
      if (*v18 == 4)
      {
        v23 = *(v18 + 16);
        if (!v23)
        {
          goto LABEL_70;
        }

        if (*v23 != 1)
        {
          if (*v23 != 2)
          {
LABEL_70:
            xmlErrValid_0(v6, 519, "Internal: MIXED struct corrupted\n", 0);
            goto LABEL_72;
          }

          v24 = *(v23 + 40);
          if (v24)
          {
            if (!xmlStrncmp(v24, qname, len))
            {
              v22 = *(*(v18 + 16) + 8);
LABEL_33:
              if (xmlStrEqual(v22, v20))
              {
                goto LABEL_48;
              }
            }
          }
        }
      }

      else
      {
        if (*v18 != 2)
        {
          goto LABEL_70;
        }

        v21 = *(v18 + 40);
        if (v21 && !xmlStrncmp(v21, qname, len))
        {
          v22 = *(v18 + 8);
          goto LABEL_33;
        }
      }

      v18 = *(v18 + 24);
      if (!v18)
      {
        goto LABEL_72;
      }
    }
  }

  while (1)
  {
    if (*v18 != 4)
    {
      if (*v18 != 2)
      {
        break;
      }

      if (!*(v18 + 40))
      {
        v25 = *(v18 + 8);
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    v26 = *(v18 + 16);
    if (!v26)
    {
      break;
    }

    if (*v26 == 1)
    {
      goto LABEL_46;
    }

    if (*v26 != 2)
    {
      break;
    }

    if (!*(v26 + 40))
    {
      v25 = *(v26 + 8);
LABEL_45:
      if (xmlStrEqual(v25, qname))
      {
        goto LABEL_48;
      }
    }

LABEL_46:
    v18 = *(v18 + 24);
    if (!v18)
    {
      goto LABEL_72;
    }
  }

  __xmlRaiseError(0, 0, 0, 0, 0, 0x17u, 519, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "Internal: MIXED struct corrupted\n");
LABEL_72:
  v11 = *(vstate + 1);
  v17 = *(v11 + 16);
  v13 = "Element %s is not declared in %s list of possible children\n";
  ctxt = v6;
  v14 = 515;
  v12 = qname;
LABEL_73:
  xmlErrValidNode(ctxt, v11, v14, v13, v12, v17, 0);
LABEL_74:
  v10 = 0;
LABEL_49:
  ElemDecl = xmlValidGetElemDecl(v6, doc, elem, &v37);
  vstateNr = v6->vstateNr;
  vstateMax = v6->vstateMax;
  if (vstateNr >= vstateMax)
  {
    if (vstateMax < 1)
    {
      v32 = 10;
    }

    else
    {
      if (vstateMax > 0x3B9AC9FF)
      {
        v31 = "Size is less than 0.\n";
LABEL_67:
        xmlVErrMemory(v6, v31);
        return v10;
      }

      if (1000000000 - ((vstateMax + 1) >> 1) >= vstateMax)
      {
        v32 = vstateMax + ((vstateMax + 1) >> 1);
      }

      else
      {
        v32 = 1000000000;
      }
    }

    vstateTab = malloc_type_realloc(v6->vstateTab, 24 * v32, 0x20040960023A9uLL);
    if (vstateTab)
    {
      v6->vstateTab = vstateTab;
      v6->vstateMax = v32;
      vstateNr = v6->vstateNr;
      goto LABEL_60;
    }

    v31 = "realloc failed";
    goto LABEL_67;
  }

  vstateTab = v6->vstateTab;
LABEL_60:
  v33 = (vstateTab + 24 * vstateNr);
  v6->vstate = v33;
  *v33 = ElemDecl;
  *(v33 + 1) = elem;
  if (ElemDecl && ElemDecl->etype == XML_ELEMENT_TYPE_ELEMENT)
  {
    contModel = ElemDecl->contModel;
    if (contModel || (xmlValidBuildContentModel(v6, ElemDecl), (contModel = ElemDecl->contModel) != 0))
    {
      v35 = xmlRegNewExecCtxt(contModel, 0, 0);
      vstateNr = v6->vstateNr;
      *(v6->vstateTab + 3 * vstateNr + 2) = v35;
    }

    else
    {
      *(v6->vstateTab + 3 * v6->vstateNr + 2) = 0;
      xmlErrValidNode(v6, ElemDecl, 1, "Failed to build content model regexp for %s\n", elem->name, 0, 0);
      vstateNr = v6->vstateNr;
    }
  }

  v6->vstateNr = vstateNr + 1;
  return v10;
}

void *xmlValidGetElemDecl(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v8 = *(a3 + 16);
    if (!v8)
    {
      return 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    v10 = *(a3 + 72);
    if (v10)
    {
      v11 = *(v10 + 24);
      if (v11)
      {
        v12 = *(a2 + 80);
        if (v12)
        {
          v13 = *(v12 + 80);
          if (v13)
          {
            result = xmlHashLookup2(v13, v8, v11);
            if (result)
            {
              return result;
            }
          }
        }

        v14 = *(a2 + 88);
        if (v14)
        {
          v15 = *(v14 + 80);
          if (v15)
          {
            result = xmlHashLookup2(v15, *(a3 + 16), v11);
            if (a4 && result)
            {
              goto LABEL_21;
            }

            if (result)
            {
              return result;
            }
          }
        }
      }
    }

    result = xmlGetDtdElementDesc(*(a2 + 80), *(a3 + 16));
    if (result)
    {
      return result;
    }

    v16 = *(a2 + 88);
    if (!v16)
    {
      goto LABEL_23;
    }

    result = xmlGetDtdElementDesc(v16, *(a3 + 16));
    if (a4 && result)
    {
LABEL_21:
      *a4 = 1;
      return result;
    }

    if (!result)
    {
LABEL_23:
      xmlErrValidNode(a1, a3, 534, "No declaration for element %s\n", *(a3 + 16), 0, 0);
      return 0;
    }
  }

  return result;
}

int xmlValidatePushCData(xmlValidCtxtPtr ctxt, const xmlChar *data, int len)
{
  if (!ctxt)
  {
    return 0;
  }

  if (len < 1)
  {
    return 1;
  }

  if (ctxt->vstateNr < 1)
  {
    return 1;
  }

  vstate = ctxt->vstate;
  if (!vstate)
  {
    return 1;
  }

  if (!*vstate)
  {
    return 1;
  }

  v4 = *(*vstate + 72);
  if (v4)
  {
    if (v4 == 1)
    {
      v9 = *(vstate + 1);
      v10 = *(v9 + 16);
      v11 = "Element %s was declared EMPTY this one has content\n";
      v12 = 528;
LABEL_20:
      xmlErrValidNode(ctxt, v9, v12, v11, v10, 0, 0);
      return 0;
    }

    if (v4 == 4)
    {
      v5 = len;
      while (1)
      {
        v6 = *data++;
        v7 = (1 << v6) & 0x100002600;
        if (v6 > 0x20 || v7 == 0)
        {
          break;
        }

        v4 = 1;
        if (!--v5)
        {
          return v4;
        }
      }

      v9 = *(vstate + 1);
      v10 = *(v9 + 16);
      v11 = "Element %s content does not follow the DTD, Text not allowed\n";
      v12 = 504;
      goto LABEL_20;
    }

    return 1;
  }

  return v4;
}

int xmlValidatePopElement(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem, const xmlChar *qname)
{
  if (!ctxt)
  {
    return 0;
  }

  if (ctxt->vstateNr < 1)
  {
    return 1;
  }

  vstate = ctxt->vstate;
  if (!vstate)
  {
    return 1;
  }

  if (*vstate && *(*vstate + 72) == 4 && (v6 = vstate[2]) != 0 && !xmlRegExecPushString(v6, 0, 0))
  {
    xmlErrValidNode(ctxt, vstate[1], 504, "Element %s content does not follow the DTD, Expecting more child\n", *(vstate[1] + 16), 0, 0);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  vstateNr = ctxt->vstateNr;
  v9 = __OFSUB__(vstateNr, 1);
  v10 = vstateNr - 1;
  if (v10 < 0 == v9)
  {
    ctxt->vstateNr = v10;
    vstateTab = ctxt->vstateTab;
    v12 = (vstateTab + 24 * v10);
    v13 = *v12;
    *v12 = 0;
    v12[1] = 0;
    if (v13 && *(v13 + 72) == 4)
    {
      xmlRegFreeExecCtxt(*(vstateTab + 3 * v10 + 2));
      vstateTab = ctxt->vstateTab;
      v10 = ctxt->vstateNr;
    }

    *(vstateTab + 3 * v10 + 2) = 0;
    v14 = vstateTab + 24 * v10 - 24;
    if (v10 <= 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    ctxt->vstate = v15;
  }

  return v7;
}

int xmlValidateOneElement(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem)
{
  v72 = *MEMORY[0x1E69E9840];
  v67 = 0;
  if (!doc)
  {
    goto LABEL_84;
  }

  v5 = ctxt;
  if (doc->intSubset)
  {
    if (!elem)
    {
      goto LABEL_84;
    }
  }

  else
  {
    v6 = 0;
    if (!elem || !doc->extSubset)
    {
      goto LABEL_85;
    }
  }

  type = elem->type;
  v6 = 1;
  if (type > XML_COMMENT_NODE)
  {
    if (type > XML_NOTATION_NODE)
    {
      if (type - 19 < 2)
      {
        goto LABEL_85;
      }

      if (type == XML_HTML_DOCUMENT_NODE)
      {
        v8 = "HTML Document not expected\n";
        goto LABEL_82;
      }
    }

    else
    {
      if (type - 9 < 3)
      {
        v8 = "Document element not expected\n";
        goto LABEL_82;
      }

      if (type == XML_NOTATION_NODE)
      {
        v8 = "Notation element not expected\n";
        goto LABEL_82;
      }
    }

    goto LABEL_79;
  }

  if (type > XML_TEXT_NODE)
  {
    if (type - 4 < 2 || type - 7 < 2)
    {
      goto LABEL_85;
    }

    if (type == XML_ENTITY_NODE)
    {
      v8 = "Entity element not expected\n";
      goto LABEL_82;
    }

LABEL_79:
    v8 = "unknown element type\n";
    goto LABEL_82;
  }

  if (type != XML_ELEMENT_NODE)
  {
    if (type != XML_ATTRIBUTE_NODE)
    {
      if (type == XML_TEXT_NODE)
      {
        if (elem->children)
        {
          v8 = "Text element has children !\n";
        }

        else if (elem->ns)
        {
          v8 = "Text element has namespace !\n";
        }

        else
        {
          if (elem->content)
          {
            goto LABEL_85;
          }

          v8 = "Text element has no content !\n";
        }

        goto LABEL_82;
      }

      goto LABEL_79;
    }

    v8 = "Attribute element not expected\n";
LABEL_82:
    v39 = elem;
    v40 = 1;
    name = 0;
LABEL_83:
    xmlErrValidNode(ctxt, v39, v40, v8, name, 0, 0);
    goto LABEL_84;
  }

  ElemDecl = xmlValidGetElemDecl(ctxt, doc, elem, &v67);
  if (!ElemDecl)
  {
LABEL_84:
    v6 = 0;
    goto LABEL_85;
  }

  v10 = ElemDecl;
  if (v5->vstateNr)
  {
    goto LABEL_27;
  }

  v44 = ElemDecl[18];
  if (v44 <= 2)
  {
    if (!v44)
    {
      name = elem->name;
      v8 = "No declaration for element %s\n";
      ctxt = v5;
      v39 = elem;
      v40 = 534;
      goto LABEL_83;
    }

    if (v44 != 1 || !elem->children)
    {
      goto LABEL_27;
    }

    v45 = elem->name;
    v46 = "Element %s was declared EMPTY this one has content\n";
    v47 = v5;
    v48 = elem;
    v49 = 528;
LABEL_91:
    xmlErrValidNode(v47, v48, v49, v46, v45, 0, 0);
    v6 = 0;
    goto LABEL_27;
  }

  if (v44 != 3)
  {
    if (v44 == 4)
    {
      if (doc->standalone == 1 && v67 == 1)
      {
        children = elem->children;
        if (children)
        {
          do
          {
            if (children->type == XML_TEXT_NODE)
            {
              for (i = children->content; ; ++i)
              {
                v52 = *i;
                if (v52 > 0x20)
                {
                  break;
                }

                if (((1 << v52) & 0x100002600) == 0)
                {
                  if (*i)
                  {
                    break;
                  }

                  xmlErrValidNode(v5, elem, 532, "standalone: %s declared in the external subset contains white spaces nodes\n", elem->name, 0, 0);
                  v6 = 0;
                  goto LABEL_149;
                }
              }
            }

            children = children->next;
          }

          while (children);
          v6 = 1;
        }
      }

LABEL_149:
      v66 = xmlValidateElementContent(v5, elem->children);
      if (v66 < 1)
      {
        v6 = v66;
      }
    }

    goto LABEL_27;
  }

  v53 = *(ElemDecl + 10);
  if (v53 && *v53 == 1)
  {
    if (xmlValidateOneCdataElement(v5, elem))
    {
      goto LABEL_27;
    }

    v45 = elem->name;
    v46 = "Element %s was declared #PCDATA but contains non text nodes\n";
    v47 = v5;
    v48 = elem;
    v49 = 529;
    goto LABEL_91;
  }

  v54 = elem->children;
  if (!v54)
  {
    goto LABEL_27;
  }

  do
  {
    if (v54->type != XML_ELEMENT_NODE)
    {
      goto LABEL_146;
    }

    v55 = v54->name;
    ns = v54->ns;
    if (!ns || !ns->prefix)
    {
      goto LABEL_134;
    }

    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    *memory = 0u;
    v57 = xmlBuildQName(v54->name, ns->prefix, memory, 50);
    if (!v57)
    {
      goto LABEL_84;
    }

    v58 = v57;
    v59 = *(v10 + 10);
    if (!v59)
    {
LABEL_127:
      v62 = 1;
      goto LABEL_130;
    }

    while (1)
    {
      if (*v59 != 4)
      {
        if (*v59 != 2)
        {
          goto LABEL_128;
        }

        v60 = *(v59 + 8);
        goto LABEL_125;
      }

      v61 = *(v59 + 16);
      if (!v61)
      {
        goto LABEL_128;
      }

      if (*v61 != 1)
      {
        break;
      }

LABEL_126:
      v59 = *(v59 + 24);
      if (!v59)
      {
        goto LABEL_127;
      }
    }

    if (*v61 == 2)
    {
      v60 = *(v61 + 8);
LABEL_125:
      if (xmlStrEqual(v60, v58))
      {
        goto LABEL_129;
      }

      goto LABEL_126;
    }

LABEL_128:
    xmlErrValid_0(0, 519, "Internal: MIXED struct corrupted\n", 0);
LABEL_129:
    v62 = 0;
LABEL_130:
    if (v58 != memory && v58 != v54->name)
    {
      free(v58);
    }

    if (v62)
    {
LABEL_134:
      v63 = *(v10 + 10);
      if (!v63)
      {
LABEL_144:
        xmlErrValidNode(v5, elem, 515, "Element %s is not declared in %s list of possible children\n", v55, elem->name, 0);
        v6 = 0;
        goto LABEL_146;
      }

      while (2)
      {
        if (*v63 != 4)
        {
          if (*v63 != 2)
          {
            goto LABEL_145;
          }

          v64 = *(v63 + 8);
          goto LABEL_142;
        }

        v65 = *(v63 + 16);
        if (!v65)
        {
          goto LABEL_145;
        }

        if (*v65 != 1)
        {
          if (*v65 != 2)
          {
LABEL_145:
            xmlErrValid_0(v5, 519, "Internal: MIXED struct corrupted\n", 0);
            break;
          }

          v64 = *(v65 + 8);
LABEL_142:
          if (xmlStrEqual(v64, v55))
          {
            break;
          }
        }

        v63 = *(v63 + 24);
        if (!v63)
        {
          goto LABEL_144;
        }

        continue;
      }
    }

LABEL_146:
    v54 = v54->next;
  }

  while (v54);
LABEL_27:
  for (j = *(v10 + 11); j; j = *(j + 72))
  {
    v12 = *(j + 84);
    if (v12 == 4)
    {
      v15 = *(j + 104);
      if (!v15)
      {
        v25 = xmlStrEqual(*(j + 16), "xmlns");
        p_nsDef = &elem->nsDef;
        if (v25)
        {
          while (1)
          {
            p_nsDef = *p_nsDef;
            if (!p_nsDef)
            {
              break;
            }

            if (!p_nsDef[3])
            {
              if (xmlStrEqual(*(j + 88), p_nsDef[2]))
              {
                goto LABEL_72;
              }

              v17 = elem->name;
              v19 = v5;
              v20 = elem;
              v21 = 507;
              v22 = "Element %s namespace name for default namespace does not match the DTD\n";
              v18 = 0;
              goto LABEL_70;
            }
          }

          continue;
        }

        v15 = *(j + 104);
      }

      if (xmlStrEqual(v15, "xmlns"))
      {
        v16 = &elem->nsDef;
        while (1)
        {
          v16 = *v16;
          if (!v16)
          {
            break;
          }

          if (xmlStrEqual(*(j + 16), v16[3]))
          {
            if (xmlStrEqual(*(j + 88), v16[2]))
            {
              break;
            }

            v17 = elem->name;
            v18 = v16[3];
            v19 = v5;
            v20 = elem;
            v21 = 508;
            v22 = "Element %s namespace name for %s does not match the DTD\n";
            goto LABEL_70;
          }
        }
      }
    }

    else if (v12 == 2)
    {
      v13 = *(j + 104);
      if (!v13)
      {
        v23 = xmlStrEqual(*(j + 16), "xmlns");
        v24 = &elem->nsDef;
        if (v23)
        {
          while (1)
          {
            v24 = *v24;
            if (!v24)
            {
              goto LABEL_67;
            }

            if (!v24[3])
            {
              goto LABEL_72;
            }
          }
        }

        v13 = *(j + 104);
      }

      if (xmlStrEqual(v13, "xmlns"))
      {
        v14 = &elem->nsDef;
        while (1)
        {
          v14 = *v14;
          if (!v14)
          {
            break;
          }

          if (xmlStrEqual(*(j + 16), v14[3]))
          {
            goto LABEL_72;
          }
        }

LABEL_67:
        v18 = *(j + 104);
        v17 = elem->name;
        v31 = *(j + 16);
        v19 = v5;
        v20 = elem;
        v21 = 518;
        if (v18)
        {
          v22 = "Element %s does not carry attribute %s:%s\n";
        }

        else
        {
          v22 = "Element %s does not carry attribute %s\n";
          v18 = *(j + 16);
LABEL_70:
          v31 = 0;
        }

        xmlErrValidNode(v19, v20, v21, v22, v17, v18, v31);
        v6 = 0;
        continue;
      }

      properties = elem->properties;
      if (!properties)
      {
        goto LABEL_67;
      }

      v28 = -1;
      do
      {
        if (xmlStrEqual(properties->name, *(j + 16)))
        {
          v29 = *(j + 104);
          if (!v29)
          {
            goto LABEL_72;
          }

          v30 = properties->ns;
          if (v30 || (v30 = elem->ns) != 0)
          {
            if (xmlStrEqual(v30->prefix, v29))
            {
              goto LABEL_72;
            }

            v28 = 1;
          }

          else
          {
            v28 &= ~(v28 >> 31);
          }
        }

        properties = properties->next;
      }

      while (properties);
      if (v28)
      {
        if (v28 == -1)
        {
          goto LABEL_67;
        }

        v32 = elem->name;
        v33 = *(j + 104);
        v34 = *(j + 16);
        v35 = v5;
        v36 = elem;
        v37 = 506;
        v38 = "Element %s required attribute %s:%s has different prefix\n";
      }

      else
      {
        v32 = elem->name;
        v33 = *(j + 104);
        v34 = *(j + 16);
        v35 = v5;
        v36 = elem;
        v37 = 524;
        v38 = "Element %s required attribute %s:%s has no prefix\n";
      }

      xmlErrValidWarning(v35, v36, v37, v38, v32, v33, v34);
    }

LABEL_72:
    ;
  }

LABEL_85:
  v42 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t xmlValidateOneCdataElement(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a2 + 8) != 1)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  if (v3)
  {
    while (1)
    {
      v4 = 0;
      v5 = *(v3 + 8);
      if (v5 > 8)
      {
        break;
      }

      if (((1 << v5) & 0x198) != 0)
      {
        goto LABEL_6;
      }

      if (v5 != 5)
      {
        break;
      }

      v10 = *(v3 + 24);
      if (v10 && *(v10 + 24))
      {
        nodeVPush(a1, v3);
        v3 = *(*(v3 + 24) + 24);
      }

      else
      {
LABEL_6:
        while (1)
        {
          v3 = *(v3 + 48);
          if (v3)
          {
            break;
          }

          v6 = *(a1 + 32);
          if (v6 >= 1)
          {
            v7 = *(a1 + 40);
            v8 = v6 - 1;
            *(a1 + 32) = v6 - 1;
            v9 = v6 == 1 ? 0 : *(v7 + 8 * v6 - 16);
            *(a1 + 24) = v9;
            v3 = *(v7 + 8 * v8);
            *(v7 + 8 * v8) = 0;
            if (v3)
            {
              continue;
            }
          }

          goto LABEL_18;
        }
      }

      if (!v3)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v4 = 1;
  }

  *(a1 + 32) = 0;
  v11 = *(a1 + 40);
  if (v11)
  {
    free(v11);
    *(a1 + 40) = 0;
  }

  return v4;
}

uint64_t xmlValidateElementContent(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v58 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    goto LABEL_43;
  }

  v6 = v5;
  v7 = v4;
  v8 = v3;
  v9 = v2;
  content = v4->content;
  name = v4->name;
  contModel = v4->contModel;
  if (contModel)
  {
    valid = 1;
  }

  else
  {
    valid = xmlValidBuildContentModel(v9, v4);
    contModel = v7->contModel;
    if (!contModel)
    {
LABEL_43:
      v26 = 0xFFFFFFFFLL;
      goto LABEL_79;
    }
  }

  if (!xmlRegexpIsDeterminist(contModel))
  {
    goto LABEL_43;
  }

  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  v14 = xmlRegNewExecCtxt(v7->contModel, 0, 0);
  if (!v14)
  {
    goto LABEL_36;
  }

  v15 = v14;
  if (!v8)
  {
LABEL_34:
    valid = xmlRegExecPushString(v15, 0, 0);
    goto LABEL_35;
  }

  v16 = v8;
  while (1)
  {
    v17 = *(v16 + 8);
    if (v17 <= 3)
    {
      break;
    }

    if (v17 != 5)
    {
      if (v17 != 4)
      {
        goto LABEL_28;
      }

LABEL_80:
      valid = 0;
      goto LABEL_35;
    }

    v18 = *(v16 + 24);
    if (!v18 || !*(v18 + 24))
    {
      goto LABEL_28;
    }

    nodeVPush(v9, v16);
    v16 = *(*(v16 + 24) + 24);
LABEL_18:
    if (!v16)
    {
      goto LABEL_34;
    }
  }

  if (v17 != 1)
  {
    if (v17 != 3 || xmlIsBlankNode(v16))
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

  v19 = *(v16 + 72);
  if (!v19 || !*(v19 + 24))
  {
    xmlRegExecPushString(v15, *(v16 + 16), 0);
    goto LABEL_28;
  }

  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v20 = xmlBuildQName(*(v16 + 16), *(v19 + 24), v56, 50);
  if (v20)
  {
    v21 = v20;
    xmlRegExecPushString(v15, v20, 0);
    if (v21 != v56 && v21 != *(v16 + 16))
    {
      free(v21);
    }

LABEL_28:
    while (1)
    {
      v16 = *(v16 + 48);
      if (v16)
      {
        goto LABEL_18;
      }

      v22 = *(v9 + 32);
      if (v22 >= 1)
      {
        v23 = *(v9 + 40);
        v24 = v22 - 1;
        *(v9 + 32) = v22 - 1;
        v25 = v22 == 1 ? 0 : *(v23 + 8 * v22 - 16);
        *(v9 + 24) = v25;
        v16 = *(v23 + 8 * v24);
        *(v23 + 8 * v24) = 0;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  valid = -1;
LABEL_35:
  xmlRegFreeExecCtxt(v15);
LABEL_36:
  v26 = 1;
  if (valid == -3 || valid == 1)
  {
    goto LABEL_77;
  }

  bzero(&v56[1], 0x1387uLL);
  bzero(v55, 0x1387uLL);
  v56[0] = 0;
  xmlSnprintfElementContent(v56, 5000, content, 1);
  __s = 0;
  if (!v8)
  {
    goto LABEL_41;
  }

  v27 = strlen(&__s);
  if (v27 < 4998)
  {
    __strncat_chk();
    v34 = v27 + 1;
    while (1)
    {
      if (v34 >= 4951)
      {
        goto LABEL_40;
      }

      v35 = 5000 - v34;
      v36 = *(v8 + 8);
      if (v36 > 0x15)
      {
LABEL_59:
        if (v36 == 1)
        {
          v39 = *(v8 + 48);
          v40 = *(v8 + 72);
          if (v40)
          {
            v41 = *(v40 + 24);
            if (v41)
            {
              v42 = xmlStrlen(v41);
              if (v39)
              {
                v43 = 4;
              }

              else
              {
                v43 = 3;
              }

              if (v35 < v42 + v43)
              {
                goto LABEL_40;
              }

              v44 = v42;
              v45 = *(*(v8 + 72) + 24);
              __strncat_chk();
              v46 = v44 + v34;
              __strncat_chk();
              v34 += v44 + 1;
              v35 = 4999 - v46;
            }
          }

          v47 = xmlStrlen(*(v8 + 16));
          if (v39)
          {
            v48 = 3;
          }

          else
          {
            v48 = 2;
          }

          if (v35 < v47 + v48)
          {
            goto LABEL_40;
          }

          v49 = v47;
          v50 = *(v8 + 16);
          __strncat_chk();
          v34 += v49;
          if (*(v8 + 48))
          {
            __strncat_chk();
            v34 += v39 != 0;
          }
        }

        goto LABEL_73;
      }

      if (((1 << v36) & 0x243E04) != 0)
      {
        break;
      }

      if (((1 << v36) & 0x30) != 0)
      {
        goto LABEL_51;
      }

      if (v36 != 3)
      {
        goto LABEL_59;
      }

      if (!xmlIsBlankNode(v8))
      {
LABEL_51:
        v37 = *(v8 + 48);
        __strncat_chk();
        v38 = v34 + 5;
        if (*(v8 + 48))
        {
LABEL_52:
          __strncat_chk();
          if (v37)
          {
            v34 = v38 + 1;
          }

          else
          {
            v34 = v38;
          }

          goto LABEL_73;
        }

        goto LABEL_55;
      }

LABEL_73:
      v8 = *(v8 + 48);
      if (!v8)
      {
        __strncat_chk();
        v55[4998] = 0;
        if (name)
        {
          goto LABEL_42;
        }

        goto LABEL_75;
      }
    }

    v37 = *(v8 + 48);
    __strncat_chk();
    v38 = v34 + 3;
    if (*(v8 + 48))
    {
      goto LABEL_52;
    }

LABEL_55:
    v34 = v38;
    goto LABEL_73;
  }

LABEL_40:
  terminateBufferTooSmall(&__s, 5000);
LABEL_41:
  if (name)
  {
LABEL_42:
    v28 = "Element %s content does not follow the DTD, expecting %s, got %s\n";
    v29 = v56;
    p_s = &__s;
    v31 = v9;
    v32 = v6;
    v33 = name;
  }

  else
  {
LABEL_75:
    v28 = "Element content does not follow the DTD, expecting %s, got %s\n";
    v33 = v56;
    v29 = &__s;
    v31 = v9;
    v32 = v6;
    p_s = 0;
  }

  xmlErrValidNode(v31, v32, 504, v28, v33, v29, p_s);
  v26 = 0;
LABEL_77:
  *(v9 + 32) = 0;
  v51 = *(v9 + 40);
  if (v51)
  {
    free(v51);
    *(v9 + 40) = 0;
  }

LABEL_79:
  v52 = *MEMORY[0x1E69E9840];
  return v26;
}

int xmlValidateRoot(xmlValidCtxtPtr ctxt, xmlDocPtr doc)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!doc)
  {
    goto LABEL_9;
  }

  RootElement = xmlDocGetRootElement(doc);
  if (!RootElement || (v5 = RootElement, (name = RootElement->name) == 0))
  {
    xmlErrValid_0(ctxt, 525, "no root element\n", 0);
LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  intSubset = doc->intSubset;
  if (!intSubset)
  {
    goto LABEL_7;
  }

  v8 = intSubset->name;
  if (!v8 || xmlStrEqual(v8, name))
  {
    goto LABEL_7;
  }

  v11 = *(v5 + 72);
  if (v11)
  {
    v12 = *(v11 + 24);
    if (v12)
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      v13 = xmlBuildQName(*(v5 + 16), v12, v16, 50);
      if (!v13)
      {
        xmlVErrMemory(ctxt, 0);
        goto LABEL_9;
      }

      v14 = v13;
      v15 = xmlStrEqual(doc->intSubset->name, v13);
      if (v14 != v16 && v14 != *(v5 + 16))
      {
        free(v14);
      }

      if (v15 == 1)
      {
        goto LABEL_7;
      }
    }
  }

  if (!xmlStrEqual(doc->intSubset->name, "HTML") || !xmlStrEqual(*(v5 + 16), "html"))
  {
    xmlErrValidNode(ctxt, v5, 531, "root and DTD name do not match '%s' and '%s'\n", *(v5 + 16), doc->intSubset->name, 0);
    goto LABEL_9;
  }

LABEL_7:
  result = 1;
LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlValidateElement(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem)
{
  v3 = 0;
  if (doc && elem)
  {
    if (*&doc->intSubset == 0)
    {
      return 0;
    }

    else
    {
      v3 = 1;
      children = elem;
      do
      {
LABEL_6:
        v8 = children;
        v3 &= xmlValidateOneElement(ctxt, doc, children);
        if (v8->type != XML_ELEMENT_NODE)
        {
          break;
        }

        for (i = v8->properties; i; i = i->next)
        {
          String = xmlNodeListGetString(doc, i->children, 0);
          v11 = xmlValidateOneAttribute(ctxt, doc, v8, i, String);
          if (String)
          {
            free(String);
          }

          v3 &= v11;
        }

        for (j = v8->nsDef; j; j = j->next)
        {
          ns = v8->ns;
          if (ns)
          {
            prefix = ns->prefix;
          }

          else
          {
            prefix = 0;
          }

          v3 &= xmlValidateOneNamespace(ctxt, doc, v8, prefix, j, j->href);
        }

        children = v8->children;
      }

      while (children);
      while (v8 != elem)
      {
        children = v8->next;
        if (children)
        {
          goto LABEL_6;
        }

        v8 = v8->parent;
      }
    }
  }

  return v3;
}

int xmlValidateDocumentFinal(xmlValidCtxtPtr ctxt, xmlDocPtr doc)
{
  if (ctxt)
  {
    v2 = ctxt;
    if (doc)
    {
      finishDtd = ctxt->finishDtd;
      ctxt->finishDtd = 0;
      refs = doc->refs;
      v2->doc = doc;
      v2->valid = 1;
      xmlHashScan(refs, xmlValidateCheckRefCallback, v2);
      v2->finishDtd = finishDtd;
      LODWORD(ctxt) = v2->valid;
    }

    else
    {
      xmlErrValid_0(ctxt, 521, "xmlValidateDocumentFinal: doc == NULL\n", 0);
      LODWORD(ctxt) = 0;
    }
  }

  return ctxt;
}

void xmlValidateCheckRefCallback(xmlList *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3[0] = a2;
    v3[1] = a3;
    xmlListWalk(a1, xmlWalkValidateList, v3);
  }
}

int xmlValidateDtd(xmlValidCtxtPtr ctxt, xmlDocPtr doc, xmlDtdPtr dtd)
{
  result = 0;
  if (doc && dtd)
  {
    v10 = *&doc->intSubset;
    doc->intSubset = 0;
    doc->extSubset = dtd;
    result = xmlValidateRoot(ctxt, doc);
    if (result)
    {
      ids = doc->ids;
      if (ids)
      {
        xmlHashFree(ids, xmlFreeIDTableEntry);
        doc->ids = 0;
      }

      refs = doc->refs;
      if (refs)
      {
        xmlHashFree(refs, xmlFreeRefTableEntry);
        doc->refs = 0;
      }

      RootElement = xmlDocGetRootElement(doc);
      v9 = xmlValidateElement(ctxt, doc, RootElement);
      result = xmlValidateDocumentFinal(ctxt, doc) & v9;
    }

    *&doc->intSubset = v10;
  }

  return result;
}

int xmlValidateDtdFinal(xmlValidCtxtPtr ctxt, xmlDocPtr doc)
{
  result = 0;
  if (ctxt && doc)
  {
    intSubset = doc->intSubset;
    if (intSubset)
    {
      ctxt->valid = 1;
      p_valid = &ctxt->valid;
      ctxt->doc = doc;
      attributes = intSubset->attributes;
      if (attributes)
      {
        xmlHashScan(attributes, xmlValidateAttributeCallback, ctxt);
      }

      entities = intSubset->entities;
      if (entities)
      {
        xmlHashScan(entities, xmlValidateNotationCallback, ctxt);
      }
    }

    else
    {
      if (!doc->extSubset)
      {
        return 0;
      }

      ctxt->valid = 1;
      p_valid = &ctxt->valid;
      ctxt->doc = doc;
    }

    extSubset = doc->extSubset;
    if (extSubset)
    {
      v10 = extSubset->attributes;
      if (v10)
      {
        xmlHashScan(v10, xmlValidateAttributeCallback, ctxt);
      }

      v11 = extSubset->entities;
      if (v11)
      {
        xmlHashScan(v11, xmlValidateNotationCallback, ctxt);
      }
    }

    return *p_valid;
  }

  return result;
}

_DWORD *xmlValidateAttributeCallback(_DWORD *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result[20];
    if (v4 <= 0xA && ((1 << v4) & 0x460) != 0)
    {
      v6 = *(result + 11);
      if (v6)
      {
        result = xmlValidateAttributeValue2(a2, *(a2 + 56), *(result + 2), v4, v6);
        if (!result && *(a2 + 64) == 1)
        {
          *(a2 + 64) = 0;
        }
      }

      for (i = *(v3 + 96); i; i = *i)
      {
        result = xmlValidateAttributeValue2(a2, *(a2 + 56), *(v3 + 16), *(v3 + 80), i[1]);
        if (!result && *(a2 + 64) == 1)
        {
          *(a2 + 64) = 0;
        }
      }

      v4 = *(v3 + 80);
    }

    if (v4 == 10)
    {
      v8 = *(v3 + 112);
      if (v8)
      {
        v9 = *(v3 + 64);
        if (v9 && ((result = xmlGetDtdElementDesc(*(v9 + 80), v8)) != 0 || (result = xmlGetDtdElementDesc(*(v9 + 88), *(v3 + 112))) != 0) || (v10 = *(v3 + 40)) != 0 && *(v10 + 8) == 14 && (result = xmlGetDtdElementDesc(v10, *(v3 + 112))) != 0)
        {
          if (result[18] == 1)
          {
            result = xmlErrValidNode(a2, 0, 510, "NOTATION attribute %s declared for EMPTY element %s\n", *(v3 + 16), *(v3 + 112), 0);
            *(a2 + 64) = 0;
          }
        }

        else
        {
          v12 = *(v3 + 16);
          v13 = *(v3 + 112);

          return xmlErrValidNode(a2, 0, 534, "attribute %s: could not find decl for element %s\n", v12, v13, 0);
        }
      }

      else
      {
        v11 = *(v3 + 16);

        return xmlErrValid_0(a2, 1, "xmlValidateAttributeCallback(%s): internal error\n", v11);
      }
    }
  }

  return result;
}

uint64_t xmlValidateNotationCallback(uint64_t result, xmlValidCtxtPtr ctxt)
{
  if (result)
  {
    if (*(result + 92) == 3)
    {
      v2 = *(result + 80);
      if (v2)
      {
        result = xmlValidateNotationUse(ctxt, *(result + 64), v2);
        if (result != 1)
        {
          ctxt->valid = 0;
        }
      }
    }
  }

  return result;
}

int xmlValidateDocument(xmlValidCtxtPtr ctxt, xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v3 = ctxt;
  intSubset = doc->intSubset;
  if (intSubset)
  {
    SystemID = intSubset->SystemID;
    if (SystemID)
    {
      if (!doc->extSubset)
      {
        v6 = xmlBuildURI(SystemID, doc->URL);
        v7 = doc->intSubset;
        if (!v6)
        {
          ExternalID = v7->SystemID;
          v10 = "Could not build URI for external subset %s\n";
LABEL_24:
          ctxt = v3;
          v11 = 517;
          goto LABEL_25;
        }

        v8 = v6;
        doc->extSubset = xmlParseDTD(v7->ExternalID, v6);
        free(v8);
        if (!doc->extSubset)
        {
LABEL_21:
          v20 = doc->intSubset;
          ExternalID = v20->SystemID;
          if (!ExternalID)
          {
            ExternalID = v20->ExternalID;
          }

          v10 = "Could not load the external subset %s\n";
          goto LABEL_24;
        }
      }
    }

    else
    {
      v13 = intSubset->ExternalID;
      if (v13)
      {
        if (!doc->extSubset)
        {
          v14 = xmlParseDTD(v13, 0);
          doc->extSubset = v14;
          if (!v14)
          {
            goto LABEL_21;
          }
        }
      }
    }
  }

  else if (!doc->extSubset)
  {
    v10 = "no DTD found!\n";
    v11 = 522;
    ExternalID = 0;
LABEL_25:
    xmlErrValid_0(ctxt, v11, v10, ExternalID);
    return 0;
  }

  ids = doc->ids;
  if (ids)
  {
    xmlHashFree(ids, xmlFreeIDTableEntry);
    doc->ids = 0;
  }

  refs = doc->refs;
  if (refs)
  {
    xmlHashFree(refs, xmlFreeRefTableEntry);
    doc->refs = 0;
  }

  v17 = xmlValidateDtdFinal(v3, doc);
  result = xmlValidateRoot(v3, doc);
  if (result)
  {
    RootElement = xmlDocGetRootElement(doc);
    v19 = xmlValidateElement(v3, doc, RootElement);
    return v19 & v17 & xmlValidateDocumentFinal(v3, doc);
  }

  return result;
}

int xmlValidGetPotentialChildren(xmlElementContent *ctree, const xmlChar **names, int *len, int max)
{
  result = -1;
  if (ctree)
  {
    if (names)
    {
      if (len)
      {
        result = *len;
        if (*len < max)
        {
          type = ctree->type;
          if (ctree->type > XML_ELEMENT_CONTENT_ELEMENT)
          {
            if (type == XML_ELEMENT_CONTENT_SEQ || type == XML_ELEMENT_CONTENT_OR)
            {
              xmlValidGetPotentialChildren(ctree->c1, names, len, max);
              xmlValidGetPotentialChildren(ctree->c2, names, len, max);
            }

            return *len;
          }

          v10 = result;
          if (type == XML_ELEMENT_CONTENT_PCDATA)
          {
            if (result >= 1)
            {
              v13 = 0;
              while (!xmlStrEqual("#PCDATA", names[v13]))
              {
                ++v13;
                result = *len;
                if (v13 >= *len)
                {
                  v10 = result;
                  goto LABEL_22;
                }
              }

              return *len;
            }

LABEL_22:
            *len = result + 1;
            name = "#PCDATA";
          }

          else
          {
            if (type != XML_ELEMENT_CONTENT_ELEMENT)
            {
              return *len;
            }

            if (result > 0)
            {
              v11 = 0;
              while (!xmlStrEqual(ctree->name, names[v11]))
              {
                ++v11;
                result = *len;
                if (v11 >= *len)
                {
                  v10 = result;
                  goto LABEL_13;
                }
              }

              return *len;
            }

LABEL_13:
            name = ctree->name;
            *len = result + 1;
          }

          names[v10] = name;
          return *len;
        }
      }
    }
  }

  return result;
}

uint64_t xmlIsDocNameStartChar(uint64_t a1, signed int val)
{
  if (!a1 || (*(a1 + 172) & 4) == 0)
  {
    if ((val & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      result = 1;
      if (val == 58)
      {
        return result;
      }

      if (val == 95)
      {
        return result;
      }

      v4 = vdupq_n_s32(val);
      if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB30, vaddq_s32(v4, xmmword_1C79BAB10)), vcgtq_u32(xmmword_1C79BAB40, vaddq_s32(v4, xmmword_1C79BAB20))))) & 1) != 0 || (val - 63744) < 0x4D0 || (val - 65008) < 0x20E || (val - 0x10000) < 0xE0000 || (val & 0xFFFFFFFE) == 0x200C)
      {
        return result;
      }

      return 0;
    }

    return 1;
  }

  if (val > 255)
  {
    if (xmlCharInRange(val, &xmlIsBaseCharGroup))
    {
      return 1;
    }

    result = 1;
    if (val != 12295 && (val - 19968) >= 0x51A6 && (val - 12321) >= 9)
    {
      return 0;
    }
  }

  else
  {
    v6 = val == 95 || val == 58;
    v7 = (val - 216) < 0x1F || v6;
    if (val > 247)
    {
      v7 = 1;
    }

    if ((val & 0xFFFFFFDF) - 65 >= 0x1A)
    {
      v8 = v7;
    }

    else
    {
      v8 = 1;
    }

    if ((val - 192) >= 0x17)
    {
      return v8;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t xmlIsDocNameChar(uint64_t a1, signed int val)
{
  if (a1 && (*(a1 + 172) & 4) != 0)
  {
    if (val > 255)
    {
      if (xmlCharInRange(val, &xmlIsBaseCharGroup))
      {
        return 1;
      }

      result = 1;
      if (val == 12295 || (val - 19968) < 0x51A6 || (val - 12321) < 9)
      {
        return result;
      }

      if (xmlCharInRange(val, &xmlIsDigitGroup))
      {
        return 1;
      }
    }

    else
    {
      result = 1;
      if ((val - 192) < 0x17 || (val & 0xFFFFFFDF) - 65 < 0x1A || (val - 48) < 0xA || val > 247 || (val - 216) < 0x1F)
      {
        return result;
      }
    }

    if ((val - 45) <= 0x32 && ((1 << (val - 45)) & 0x4000000002003) != 0)
    {
      return 1;
    }

    if (val >= 256)
    {
      if (xmlCharInRange(val, &xmlIsCombiningGroup) || xmlCharInRange(val, &xmlIsExtenderGroup))
      {
        return 1;
      }
    }

    else if (val == 183)
    {
      return 1;
    }

    return 0;
  }

  result = 1;
  if ((val - 48) >= 0xB && (val & 0xFFFFFFDF) - 65 >= 0x1A && ((val - 45) > 0x32 || ((1 << (val - 45)) & 0x4000000000003) == 0) && val != 183)
  {
    v4 = vdupq_n_s32(val);
    if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB70, vaddq_s32(v4, xmmword_1C79BAB50)), vcgtq_u32(xmmword_1C79BAB80, vaddq_s32(v4, xmmword_1C79BAB60))))) & 1) == 0 && (val - 63744) >= 0x4D0 && (val - 65008) >= 0x20E && (val - 0x10000) >= 0xE0000 && (val & 0xFFFFFFFE) != 0x200C)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *nodeVPush(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  if (v4 < v5)
  {
    result = *(a1 + 40);
LABEL_12:
    *&result[2 * v4] = a2;
    *(a1 + 24) = a2;
    *(a1 + 32) = v4 + 1;
    return result;
  }

  if (v5 < 1)
  {
    v8 = 4;
  }

  else
  {
    if (v5 > 0x3B9AC9FF)
    {
      v7 = "malloc failed";
      goto LABEL_14;
    }

    if (1000000000 - ((v5 + 1) >> 1) >= v5)
    {
      v8 = v5 + ((v5 + 1) >> 1);
    }

    else
    {
      v8 = 1000000000;
    }
  }

  result = malloc_type_realloc(*(a1 + 40), 8 * v8, 0x2004093837F09uLL);
  if (result)
  {
    *(a1 + 40) = result;
    *(a1 + 36) = v8;
    v4 = *(a1 + 32);
    goto LABEL_12;
  }

  v7 = "realloc failed";
LABEL_14:

  return xmlVErrMemory(a1, v7);
}

uint64_t xmlWalkValidateList(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  if (!v5)
  {
    if (!*(a1 + 24))
    {
      return 1;
    }

    v7 = xmlStrdup(*(a2 + 8));
    if (!v7)
    {
      goto LABEL_42;
    }

    v8 = v7;
    v9 = *v7;
    if (*v7)
    {
      v10 = v7;
      while (1)
      {
LABEL_11:
        v11 = v10;
        while (v9 > 0x20 || ((1 << v9) & 0x100002601) == 0)
        {
          v12 = *++v11;
          v9 = v12;
        }

        *v11 = 0;
        if (!xmlGetID(*(v3 + 56), v10))
        {
          xmlErrValidNodeNr(v3, 0, 536, "attribute %s line %d references an unknown ID %s\n", *(a1 + 24), *(a1 + 32), v10);
          *(v3 + 64) = 0;
        }

        if (!v9)
        {
          break;
        }

        *v11 = v9;
        v10 = v11;
        while (v9 <= 0x20)
        {
          if (((1 << v9) & 0x100002600) == 0)
          {
            if (v9)
            {
              goto LABEL_11;
            }

            goto LABEL_23;
          }

          v13 = *++v10;
          v9 = v13;
        }
      }
    }

LABEL_23:
    v14 = v8;
LABEL_40:
    free(v14);
    return 1;
  }

  v6 = *(v5 + 80) & 0x87FFFFFF;
  if (v6 == 4)
  {
    v15 = xmlStrdup(*(a2 + 8));
    if (!v15)
    {
      xmlVErrMemory(v3, "IDREFS split");
      goto LABEL_42;
    }

    v16 = v15;
    v17 = *v15;
    if (*v15)
    {
      v18 = v15;
LABEL_27:
      while (1)
      {
        v19 = v18;
        while (v17 > 0x20 || ((1 << v17) & 0x100002601) == 0)
        {
          v20 = *++v19;
          v17 = v20;
        }

        *v19 = 0;
        if (!xmlGetID(*(v3 + 56), v18))
        {
          xmlErrValidNode(v3, *(v5 + 40), 536, "IDREFS attribute %s references an unknown ID %s\n", *(v5 + 16), v18, 0);
          *(v3 + 64) = 0;
        }

        if (!v17)
        {
          break;
        }

        *v19 = v17;
        v18 = v19;
        while (v17 <= 0x20)
        {
          if (((1 << v17) & 0x100002600) == 0)
          {
            if (v17)
            {
              goto LABEL_27;
            }

            goto LABEL_39;
          }

          v21 = *++v18;
          v17 = v21;
        }
      }
    }

LABEL_39:
    v14 = v16;
    goto LABEL_40;
  }

  if (v6 == 3 && !xmlGetID(*(v3 + 56), *(a2 + 8)))
  {
    xmlErrValidNode(v3, *(v5 + 40), 536, "IDREF attribute %s references an unknown ID %s\n", *(v5 + 16), v4, 0);
LABEL_42:
    *(v3 + 64) = 0;
  }

  return 1;
}

xmlXIncludeCtxtPtr xmlXIncludeNewContext(xmlXIncludeCtxtPtr doc)
{
  if (doc)
  {
    v1 = doc;
    doc = malloc_type_malloc(0x78uLL, 0x10B0040D9F3E093uLL);
    if (doc)
    {
      *(doc + 68) = 0u;
      *(doc + 29) = 0;
      *(doc + 100) = 0u;
      *(doc + 84) = 0u;
      *(doc + 52) = 0u;
      *(doc + 36) = 0u;
      *(doc + 20) = 0u;
      *doc = v1;
      *(doc + 1) = 0;
      *(doc + 4) = 0;
      *(doc + 20) = 0;
    }

    else
    {
      __xmlRaiseError(0, 0, 0, 0, v1, 0xBu, 2, 2, 0, 0, "creating XInclude context", 0, 0, 0, 0, "Memory allocation failed : %s\n", "creating XInclude context");
      return 0;
    }
  }

  return doc;
}

_DWORD *xmlXIncludeErrMemory(uint64_t a1, uint64_t a2, const xmlChar *a3)
{
  if (a1)
  {
    ++*(a1 + 80);
  }

  return __xmlRaiseError(0, 0, 0, a1, a2, 0xBu, 2, 2, 0, 0, a3, 0, 0, 0, 0, "Memory allocation failed : %s\n", a3);
}

void xmlXIncludeFreeContext(xmlXIncludeCtxtPtr ctxt)
{
  if (ctxt)
  {
    if (*(ctxt + 16) >= 1)
    {
      do
      {
        xmlXIncludeURLPop(ctxt);
      }

      while (*(ctxt + 16) > 0);
    }

    v2 = *(ctxt + 9);
    if (v2)
    {
      free(v2);
    }

    v3 = *(ctxt + 3);
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(*(ctxt + 3) + 8 * i);
        if (v5)
        {
          xmlXIncludeFreeRef(v5);
          v3 = *(ctxt + 3);
        }
      }
    }

    v6 = *(ctxt + 3);
    if (v6)
    {
      free(v6);
    }

    v7 = *(ctxt + 5);
    if (v7)
    {
      v8 = *(ctxt + 8);
      if (v8 >= 1)
      {
        for (j = 0; j < v8; ++j)
        {
          v10 = *(*(ctxt + 5) + 8 * j);
          if (v10)
          {
            free(v10);
            v8 = *(ctxt + 8);
          }
        }

        v7 = *(ctxt + 5);
      }

      free(v7);
    }

    v11 = *(ctxt + 6);
    if (v11)
    {
      v12 = *(ctxt + 8);
      if (v12 >= 1)
      {
        for (k = 0; k < v12; ++k)
        {
          v14 = *(*(ctxt + 6) + 8 * k);
          if (v14)
          {
            free(v14);
            v12 = *(ctxt + 8);
          }
        }

        v11 = *(ctxt + 6);
      }

      free(v11);
    }

    v15 = *(ctxt + 12);
    if (v15)
    {
      free(v15);
    }

    free(ctxt);
  }
}

void xmlXIncludeURLPop(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 1)
  {
    v2 = *(a1 + 72);
    v3 = v1 - 1;
    *(a1 + 64) = v1 - 1;
    if (v1 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v2 + 8 * v1 - 16);
    }

    *(a1 + 56) = v4;
    v5 = *(v2 + 8 * v3);
    *(v2 + 8 * v3) = 0;
    if (v5)
    {
      free(v5);
    }
  }
}

void xmlXIncludeFreeRef(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    xmlFreeDoc(v2);
  }

  if (*a1)
  {
    free(*a1);
  }

  v3 = a1[1];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

int xmlXIncludeSetFlags(xmlXIncludeCtxtPtr ctxt, int flags)
{
  if (!ctxt)
  {
    return -1;
  }

  result = 0;
  *(ctxt + 22) = flags;
  return result;
}

int xmlXIncludeProcessTreeFlagsData(xmlNodePtr tree, int flags, void *data)
{
  if (!tree)
  {
    return -1;
  }

  if (tree->type == XML_NAMESPACE_DECL)
  {
    return -1;
  }

  doc = tree->doc;
  if (!doc)
  {
    return -1;
  }

  v7 = xmlXIncludeNewContext(doc);
  if (!v7)
  {
    return -1;
  }

  v8 = v7;
  *(v7 + 13) = data;
  *(v7 + 12) = xmlStrdup(tree->doc->URL);
  *(v8 + 22) = flags;
  v9 = xmlXIncludeDoProcess(v8, tree->doc, tree, 0);
  if (v9 < 0)
  {
    v10 = -1;
  }

  else if (*(v8 + 20) > 0)
  {
    v10 = -1;
  }

  else
  {
    v10 = v9;
  }

  xmlXIncludeFreeContext(v8);
  return v10;
}

uint64_t xmlXIncludeDoProcess(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 0xFFFFFFFFLL;
  if (!a2 || !a3)
  {
    return result;
  }

  if (*(a3 + 8) == 18 || a4 && !*(a3 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 136);
  if (v9)
  {
    v10 = *(a1 + 16);
    if (v10 >= 41)
    {
      xmlXIncludeErr(a1, 0, 1600, "detected a recursion in %s\n", *(a2 + 136));
      return 0xFFFFFFFFLL;
    }

    v12 = a1[9];
    if (!v12)
    {
      a1[8] = 0x400000000;
      v12 = malloc_type_malloc(0x20uLL, 0x10040436913F5uLL);
      a1[9] = v12;
      if (!v12)
      {
        goto LABEL_442;
      }

      v10 = *(a1 + 16);
    }

    v13 = *(a1 + 17);
    if (v10 < v13)
    {
      goto LABEL_24;
    }

    if (v13 < 1)
    {
      v14 = 8;
    }

    else
    {
      if (v13 > 0x3B9AC9FF)
      {
        goto LABEL_442;
      }

      if (1000000000 - ((v13 + 1) >> 1) >= v13)
      {
        v14 = v13 + ((v13 + 1) >> 1);
      }

      else
      {
        v14 = 1000000000;
      }
    }

    v15 = malloc_type_realloc(v12, 8 * v14, 0x10040436913F5uLL);
    if (v15)
    {
      *(a1 + 17) = v14;
      a1[9] = v15;
LABEL_24:
      v16 = xmlStrdup(v9);
      v11 = *(a1 + 16);
      *(a1[9] + 8 * v11) = v16;
      a1[7] = v16;
      *(a1 + 16) = v11 + 1;
      if ((v11 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_25;
    }

LABEL_442:
    xmlXIncludeErrMemory(a1, 0, "adding URL");
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
LABEL_25:
  v225 = a2;
  v17 = *(a1 + 3);
  v18 = a3;
  if (a4)
  {
    v18 = *(a3 + 24);
  }

  v19 = "http://www.w3.org/2003/XInclude";
  v20 = "%s is not the child of an 'include'\n";
  do
  {
    if (!v18)
    {
      goto LABEL_62;
    }

    if (*(v18 + 8) != 1)
    {
      goto LABEL_62;
    }

    v21 = *(v18 + 72);
    if (!v21 || !xmlStrEqual(*(v21 + 16), v19) && !xmlStrEqual(*(*(v18 + 72) + 16), "http://www.w3.org/2001/XInclude"))
    {
      goto LABEL_62;
    }

    if (xmlStrEqual(*(*(v18 + 72) + 16), "http://www.w3.org/2001/XInclude") && !*(a1 + 21))
    {
      *(a1 + 21) = 1;
    }

    if (!xmlStrEqual(*(v18 + 16), "include"))
    {
      if (xmlStrEqual(*(v18 + 16), "fallback"))
      {
        if ((v35 = *(v18 + 40)) == 0 || *(v35 + 8) != 1 || (v36 = *(v35 + 72)) == 0 || !xmlStrEqual(*(v36 + 16), v19) && !xmlStrEqual(*(*(*(v18 + 40) + 72) + 16), "http://www.w3.org/2001/XInclude") || !xmlStrEqual(*(*(v18 + 40) + 16), "include"))
        {
          v28 = a1;
          v29 = v18;
          v30 = 1616;
          v31 = v20;
          v32 = "fallback";
LABEL_61:
          xmlXIncludeErr(v28, v29, v30, v31, v32);
        }
      }

LABEL_62:
      v37 = *(v18 + 24);
      if (!v37 || (*(v18 + 8) | 8) != 9)
      {
        goto LABEL_64;
      }

      goto LABEL_69;
    }

    v22 = *(v18 + 24);
    if (!v22)
    {
      goto LABEL_49;
    }

    v23 = v20;
    v24 = v11;
    v25 = 0;
    do
    {
      if (*(v22 + 8) == 1)
      {
        v26 = *(v22 + 72);
        if (v26)
        {
          if (xmlStrEqual(*(v26 + 16), v19) || xmlStrEqual(*(*(v22 + 72) + 16), "http://www.w3.org/2001/XInclude"))
          {
            if (xmlStrEqual(*(v22 + 16), "include"))
            {
              xmlXIncludeErr(a1, v18, 1614, "%s has an 'include' child\n", "include");
              v11 = v24;
              v20 = v23;
              goto LABEL_62;
            }

            if (xmlStrEqual(*(v22 + 16), "fallback"))
            {
              ++v25;
            }
          }
        }
      }

      v22 = *(v22 + 48);
    }

    while (v22);
    v27 = v25 < 2;
    v11 = v24;
    v20 = v23;
    if (!v27)
    {
      v28 = a1;
      v29 = v18;
      v30 = 1615;
      v31 = "%s has multiple fallback children\n";
      v32 = "include";
      goto LABEL_61;
    }

LABEL_49:
    ++a1[14];
    Prop = xmlXIncludeGetProp(a1, v18, "href");
    if (Prop || (Prop = xmlStrdup("")) != 0)
    {
      v34 = Prop;
      if (xmlStrlen(Prop) >= 2001)
      {
        xmlXIncludeErr(a1, v18, 1605, "URI too long\n", 0);
        free(v34);
        goto LABEL_64;
      }

      v38 = *v34;
      if (v38 == 35 || v38 == 0)
      {
        v232 = 0;
        v236 = 1;
      }

      else
      {
        v236 = 0;
        v232 = 1;
      }

      v40 = xmlXIncludeGetProp(a1, v18, "parse");
      v41 = v40;
      if (!v40 || xmlStrEqual(v40, "xml"))
      {
        v238 = 1;
        goto LABEL_82;
      }

      if (xmlStrEqual(v41, "text"))
      {
        v238 = 0;
LABEL_82:
        Base = xmlNodeGetBase(*a1, v18);
        if (Base)
        {
          v43 = v34;
          v44 = Base;
        }

        else
        {
          v44 = *(*a1 + 136);
          v43 = v34;
        }

        v240 = xmlBuildURI(v43, v44);
        if (!v240)
        {
          v45 = v11;
          v46 = xmlURIEscape(Base);
          v47 = xmlURIEscape(v34);
          v240 = xmlBuildURI(v47, v46);
          if (v46)
          {
            free(v46);
          }

          if (v47)
          {
            free(v47);
          }

          v11 = v45;
          v19 = "http://www.w3.org/2003/XInclude";
          v20 = "%s is not the child of an 'include'\n";
        }

        if (v41)
        {
          free(v41);
        }

        free(v34);
        if (Base)
        {
          free(Base);
        }

        if (!v240)
        {
          xmlXIncludeErr(a1, v18, 1605, "failed build URL\n", 0);
          goto LABEL_64;
        }

        v48 = xmlXIncludeGetProp(a1, v18, "xpointer");
        v49 = xmlParseURI(v240);
        if (!v49)
        {
          xmlXIncludeErr(a1, v18, 1605, "invalid value URI %s\n", v240);
          if (v48)
          {
            v52 = v48;
            goto LABEL_130;
          }

LABEL_131:
          free(v240);
          goto LABEL_64;
        }

        v50 = v49;
        fragment = v49->fragment;
        if (!fragment)
        {
          v230 = v48;
          goto LABEL_114;
        }

        if (*(a1 + 21))
        {
          if (v48)
          {
            v230 = v48;
            free(fragment);
          }

          else
          {
            v230 = fragment;
          }

          v50->fragment = 0;
LABEL_114:
          v54 = xmlSaveUri(v50);
          xmlFreeURI(v50);
          if (v54)
          {
            free(v240);
            if ((v236 & v238) == 1 && (!v230 || !*v230))
            {
              xmlXIncludeErr(a1, v18, 1600, "detected a local recursion with no xpointer in %s\n", v54);
              free(v54);
              free(v230);
              goto LABEL_64;
            }

            v55 = v11;
            if ((v232 & v238) == 1 && *(a1 + 16) >= 1)
            {
              v56 = 0;
              while (!xmlStrEqual(v54, *(a1[9] + 8 * v56)))
              {
                if (++v56 >= *(a1 + 16))
                {
                  goto LABEL_123;
                }
              }

              xmlXIncludeErr(a1, v18, 1600, "detected a recursion in %s\n", v54);
              free(v54);
              free(v230);
              v11 = v55;
LABEL_147:
              v20 = "%s is not the child of an 'include'\n";
              goto LABEL_64;
            }

LABEL_123:
            v57 = v19;
            v58 = malloc_type_malloc(0x38uLL, 0x1030040E0CEE5B1uLL);
            if (v58)
            {
              v59 = v58;
              v58[6] = 0;
              *(v58 + 1) = 0u;
              *(v58 + 2) = 0u;
              *v58 = 0u;
              *v58 = xmlStrdup(v54);
              v59[3] = v18;
              *(v59 + 1) = 0u;
              *(v59 + 2) = 0u;
              v60 = *(a1 + 4);
              v11 = v55;
              if (v60)
              {
                goto LABEL_127;
              }

              *(a1 + 4) = 4;
              v61 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
              a1[3] = v61;
              if (v61)
              {
                v60 = *(a1 + 4);
LABEL_127:
                v62 = *(a1 + 3);
                if (v62 < v60)
                {
                  v63 = a1[3];
LABEL_146:
                  *(a1 + 3) = v62 + 1;
                  v63[v62] = v59;
                  free(v54);
                  v59[1] = v230;
                  v59[2] = 0;
                  *(v59 + 10) = v238;
                  *(v59 + 11) = 1;
                  v19 = v57;
                  goto LABEL_147;
                }

                if (v60 < 1)
                {
                  v64 = 4;
                }

                else
                {
                  if (v60 > 0x3B9AC9FF)
                  {
                    goto LABEL_137;
                  }

                  if (1000000000 - ((v60 + 1) >> 1) >= v60)
                  {
                    v64 = v60 + ((v60 + 1) >> 1);
                  }

                  else
                  {
                    v64 = 1000000000;
                  }
                }

                v63 = malloc_type_realloc(a1[3], 8 * v64, 0x2004093837F09uLL);
                if (v63)
                {
                  a1[3] = v63;
                  *(a1 + 4) = v64;
                  v62 = *(a1 + 3);
                  v11 = v55;
                  goto LABEL_146;
                }

                xmlXIncludeErrMemory(a1, v18, "growing XInclude context");
                xmlXIncludeFreeRef(v59);
LABEL_134:
                v11 = v55;
              }

              else
              {
LABEL_137:
                xmlXIncludeErrMemory(a1, v18, "growing XInclude context");
                xmlXIncludeFreeRef(v59);
              }

              v20 = "%s is not the child of an 'include'\n";
              free(v54);
              v19 = v57;
              goto LABEL_64;
            }

            xmlXIncludeErrMemory(a1, v18, "growing XInclude context");
            goto LABEL_134;
          }

          xmlXIncludeErr(a1, v18, 1605, "invalid value URI %s\n", v240);
          v52 = v230;
          if (v230)
          {
LABEL_130:
            free(v52);
          }

          goto LABEL_131;
        }

        xmlXIncludeErr(a1, v18, 1618, "Invalid fragment identifier in URI %s use the xpointer attribute\n", v240);
        if (v48)
        {
          free(v48);
        }

        xmlFreeURI(v50);
        v53 = v240;
      }

      else
      {
        xmlXIncludeErr(a1, v18, 1601, "invalid value %s for 'parse'\n", v41);
        free(v34);
        v53 = v41;
      }

      free(v53);
    }

LABEL_64:
    while (v18 != a3)
    {
      v37 = *(v18 + 48);
      if (v37)
      {
        goto LABEL_69;
      }

      v18 = *(v18 + 40);
      if (!v18)
      {
        goto LABEL_149;
      }
    }

    v37 = v18;
LABEL_69:
    if (!v37)
    {
      break;
    }

    v18 = v37;
  }

  while (v37 != a3);
LABEL_149:
  v65 = *(a1 + 3);
  if (v17 >= v65)
  {
    goto LABEL_405;
  }

  v66 = v17 + 1;
  v226 = a1;
  while (2)
  {
    v67 = v17;
    if ((v17 & 0x80000000) != 0)
    {
      goto LABEL_277;
    }

    v68 = *(a1[3] + 8 * v17);
    v69 = *(v68 + 24);
    if (!v69)
    {
      goto LABEL_277;
    }

    v70 = xmlXIncludeGetProp(a1, *(v68 + 24), "href");
    if (!v70)
    {
      v70 = xmlStrdup("");
      if (!v70)
      {
        goto LABEL_277;
      }
    }

    v71 = v70;
    v72 = xmlXIncludeGetProp(a1, v69, "parse");
    v73 = v72;
    if (v72 && !xmlStrEqual(v72, "xml"))
    {
      if (!xmlStrEqual(v73, "text"))
      {
        xmlXIncludeErr(a1, *(*(a1[3] + 8 * v17) + 24), 1601, "invalid value %s for 'parse'\n", v73);
        free(v71);
        v75 = v73;
        goto LABEL_276;
      }

      v74 = 1;
    }

    else
    {
      v74 = 0;
    }

    v239 = v11;
    v75 = xmlNodeGetBase(*a1, v69);
    v233 = v69;
    if (v75)
    {
      v76 = v71;
      v77 = v75;
    }

    else
    {
      v77 = *(*a1 + 136);
      v76 = v71;
    }

    v78 = xmlBuildURI(v76, v77);
    if (!v78)
    {
      v241 = v66;
      v79 = v73;
      v80 = xmlURIEscape(v75);
      v81 = v71;
      v82 = xmlURIEscape(v71);
      v83 = xmlBuildURI(v82, v80);
      if (v80)
      {
        free(v80);
      }

      if (v82)
      {
        free(v82);
      }

      v71 = v81;
      v73 = v79;
      a1 = v226;
      v66 = v241;
      v78 = v83;
      if (!v83)
      {
        xmlXIncludeErr(v226, *(*(*(v226 + 24) + 8 * v17) + 24), 1605, "failed build URL\n", 0);
        if (v73)
        {
          free(v73);
        }

        v105 = v71;
        goto LABEL_275;
      }
    }

    v231 = v71;
    v84 = a1[12];
    a1[12] = v75;
    v237 = v17;
    v242 = v78;
    if ((v74 & 1) == 0)
    {
      v89 = xmlParseURI(v78);
      if (!v89)
      {
        v102 = *(*(a1[3] + 8 * v17) + 24);
        v103 = a1;
        v104 = v78;
LABEL_213:
        xmlXIncludeErr(v103, v102, 1605, "invalid value URI %s\n", v104);
        goto LABEL_264;
      }

      v90 = v89;
      ctxt = v89->fragment;
      if (ctxt)
      {
        v89->fragment = 0;
      }

      v91 = a1[3];
      if (v91)
      {
        v92 = *(v91 + 8 * v17);
        if (v92)
        {
          v93 = *(v92 + 8);
          if (v93)
          {
            if (ctxt)
            {
              free(ctxt);
              v93 = *(*(a1[3] + 8 * v17) + 8);
            }

            ctxt = xmlStrdup(v93);
          }
        }
      }

      v94 = xmlSaveUri(v90);
      xmlFreeURI(v90);
      if (!v94)
      {
        v113 = a1[3];
        v114 = ctxt;
        if (v113)
        {
          v115 = *(*(v113 + 8 * v17) + 24);
        }

        else
        {
          v115 = 0;
        }

        xmlXIncludeErr(a1, v115, 1605, "invalid value URI %s\n", v78);
        if (!ctxt)
        {
          goto LABEL_264;
        }

        goto LABEL_219;
      }

      if (!*v94 || *v94 == 35 || *a1 && xmlStrEqual(v94, *(*a1 + 136)))
      {
        myDoc = *a1;
        goto LABEL_189;
      }

      if (*(a1 + 3) >= 1)
      {
        v117 = 0;
        while (1)
        {
          if (xmlStrEqual(v94, **(a1[3] + 8 * v117)))
          {
            myDoc = *(*(a1[3] + 8 * v117) + 16);
            if (myDoc)
            {
              break;
            }
          }

          if (++v117 >= *(a1 + 3))
          {
            goto LABEL_225;
          }
        }

        v78 = v242;
        goto LABEL_189;
      }

LABEL_225:
      URLa = v94;
      v118 = *(a1 + 22);
      if (ctxt)
      {
        *(a1 + 22) = v118 | 2;
      }

      xmlInitParser();
      v119 = xmlNewParserCtxt();
      if (v119)
      {
        v120 = v119;
        v119->_private = a1[13];
        if (*a1)
        {
          v121 = *(*a1 + 152);
          if (v121)
          {
            if (v120->dict)
            {
              xmlDictFree(v120->dict);
              v121 = *(*a1 + 152);
            }

            v120->dict = v121;
            xmlDictReference(v121);
          }
        }

        xmlCtxtUseOptions(v120, *(a1 + 22) | 4);
        v122 = URLa;
        if (*URLa == 45)
        {
          if (URLa[1])
          {
            v122 = URLa;
          }

          else
          {
            v122 = "./-";
          }
        }

        ExternalEntity = xmlLoadExternalEntity(v122, 0, v120);
        if (ExternalEntity)
        {
          v124 = ExternalEntity;
          if (inputPush(v120, ExternalEntity) < 0)
          {
            xmlFreeInputStream(v124);
            if (v120->errNo == 2)
            {
              xmlXIncludeErrMemory(a1, 0, "cannot push input stream");
            }
          }

          else
          {
            if (!v120->directory)
            {
              v120->directory = xmlParserGetDirectory(v122);
            }

            v120->loadsubset |= 2u;
            xmlParseDocument(v120);
            myDoc = v120->myDoc;
            if (v120->wellFormed)
            {
              xmlFreeParserCtxt(v120);
              *(a1 + 22) = v118;
              if (myDoc)
              {
                *(*(a1[3] + 8 * v17) + 16) = myDoc;
                if (!xmlStrEqual(URLa, myDoc->URL))
                {
                  free(URLa);
                  URLa = xmlStrdup(myDoc->URL);
                }

                v125 = 8 * v17 + 8;
                v126 = v66;
                do
                {
                  if (*(a1 + 3) <= v126)
                  {
                    goto LABEL_249;
                  }

                  v127 = xmlStrEqual(URLa, **(a1[3] + v125));
                  v125 += 8;
                  ++v126;
                }

                while (!v127);
                v128 = *(a1[3] + 8 * v17);
                ++*(v128 + 44);
LABEL_249:
                intSubset = myDoc->intSubset;
                if (!intSubset)
                {
                  goto LABEL_362;
                }

                v130 = *a1;
                v131 = *(*a1 + 80);
                if (v131)
                {
                  goto LABEL_251;
                }

                RootElement = xmlDocGetRootElement(*a1);
                if (RootElement)
                {
                  v171 = xmlCreateIntSubset(v130, RootElement->name, 0, 0);
                  if (v171)
                  {
                    v131 = v171;
                    intSubset = myDoc->intSubset;
                    if (!intSubset)
                    {
LABEL_253:
                      extSubset = myDoc->extSubset;
                      if (extSubset)
                      {
                        if (extSubset->entities)
                        {
                          data = v130;
                          v244 = a1;
                          if (!xmlStrEqual(v131->ExternalID, extSubset->ExternalID) && !xmlStrEqual(v131->SystemID, extSubset->SystemID))
                          {
                            xmlHashScan(extSubset->entities, xmlXIncludeMergeEntity, &data);
                          }
                        }
                      }

                      goto LABEL_362;
                    }

LABEL_251:
                    entities = intSubset->entities;
                    if (entities)
                    {
                      data = v130;
                      v244 = a1;
                      xmlHashScan(entities, xmlXIncludeMergeEntity, &data);
                    }

                    goto LABEL_253;
                  }

                  xmlXIncludeErrMemory(a1, 0, "creating int subset");
                }

LABEL_362:
                v172 = xmlXIncludeNewContext(myDoc);
                if (v172)
                {
                  v173 = v172;
                  *(v172 + 13) = a1[13];
                  v174 = *(a1 + 4);
                  *(v172 + 4) = v174;
                  *(v172 + 3) = *(a1 + 3);
                  v175 = malloc_type_malloc(8 * v174, 0x2004093837F09uLL);
                  *(v173 + 3) = v175;
                  v94 = URLa;
                  v96 = ctxt;
                  if (v175)
                  {
                    *(v173 + 8) = a1[8];
                    *(v173 + 9) = a1[9];
                    *(v173 + 12) = xmlStrdup(a1[12]);
                    v176 = *(a1 + 3);
                    *(v173 + 2) = v176;
                    if (v176 >= 1)
                    {
                      v177 = 0;
                      v178 = *(v173 + 3);
                      v179 = 8 * v176;
                      do
                      {
                        *(v178 + v177) = *(a1[3] + v177);
                        v178 = *(v173 + 3);
                        ++*(*(v178 + v177) + 44);
                        v177 += 8;
                      }

                      while (v179 != v177);
                    }

                    *(v173 + 22) = *(a1 + 22);
                    *(v173 + 14) = a1[14];
                    v180 = xmlDocGetRootElement(myDoc);
                    xmlXIncludeDoProcess(v173, myDoc, v180, 0);
                    a1[14] = *(v173 + 14);
                    v181 = *(a1 + 3);
                    if (v181 >= 1)
                    {
                      v182 = 0;
                      v183 = 8 * v181;
                      do
                      {
                        v184 = *(v173 + 3);
                        --*(*(v184 + v182) + 44);
                        *(v184 + v182) = 0;
                        v182 += 8;
                      }

                      while (v183 != v182);
                    }

                    a1[9] = *(v173 + 9);
                    *(a1 + 17) = *(v173 + 17);
                    *(v173 + 8) = 0;
                    *(v173 + 9) = 0;
                    xmlXIncludeFreeContext(v173);
                  }

                  else
                  {
                    xmlXIncludeErrMemory(a1, myDoc, "processing doc");
                    free(v173);
                  }

                  v67 = v237;
                  v78 = v242;
                  if (ctxt)
                  {
LABEL_190:
                    v97 = xmlXPtrNewContext(myDoc, 0, 0);
                    if (!v97)
                    {
                      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1612, "could not create XPointer context\n", 0);
LABEL_262:
                      free(v94);
                      v116 = v96;
                      goto LABEL_263;
                    }

                    v98 = v97;
                    v99 = xmlXPtrEval(v96, v97);
                    if (!v99)
                    {
                      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1612, "XPointer evaluation failed: #%s\n", v96);
                      goto LABEL_261;
                    }

                    v100 = v99;
                    type = v99->type;
                    if (v99->type <= XPATH_XSLT_TREE)
                    {
                      if (((1 << type) & 0x33D) != 0)
                      {
                        xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1613, "XPointer is not a range: #%s\n", v96);
                        xmlXPathFreeObject(v100);
LABEL_261:
                        xmlXPathFreeContext(v98);
                        goto LABEL_262;
                      }

                      if (type == XPATH_NODESET)
                      {
                        URLb = v94;
                        v161 = v99;
                        p_nodeNr = &v99->nodesetval->nodeNr;
                        if (!p_nodeNr || *p_nodeNr <= 0)
                        {
                          xmlXPathFreeObject(v99);
                          xmlXPathFreeContext(v98);
                          free(v94);
                          v116 = ctxt;
                          goto LABEL_263;
                        }

                        goto LABEL_331;
                      }
                    }

                    URLb = v94;
                    v161 = v99;
                    p_nodeNr = &v99->nodesetval->nodeNr;
                    if (p_nodeNr && *p_nodeNr >= 1)
                    {
LABEL_331:
                      for (i = 0; i < *p_nodeNr; ++i)
                      {
                        v164 = *(*(p_nodeNr + 1) + 8 * i);
                        if (!v164)
                        {
                          continue;
                        }

                        v165 = *(v164 + 8);
                        if (v165 > 0x14)
                        {
                          continue;
                        }

                        if (((1 << v165) & 0x1BDC00) != 0)
                        {
                          xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1613, "XPointer selects unexpected nodes: #%s\n", ctxt);
                          *(*(p_nodeNr + 1) + 8 * i) = 0;
                        }

                        else
                        {
                          if (v165 == 2)
                          {
                            v166 = *(*(a1[3] + 8 * v237) + 24);
                            v167 = a1;
                            v168 = "XPointer selects an attribute: #%s\n";
                          }

                          else
                          {
                            if (v165 != 18)
                            {
                              continue;
                            }

                            v166 = *(*(a1[3] + 8 * v237) + 24);
                            v167 = a1;
                            v168 = "XPointer selects a namespace: #%s\n";
                          }

                          xmlXIncludeErr(v167, v166, 1613, v168, ctxt);
                        }

                        *(*(p_nodeNr + 1) + 8 * i) = 0;
                      }
                    }

                    *(*(a1[3] + 8 * v237) + 32) = xmlXIncludeCopyXPointer(a1, *a1, myDoc, v161);
                    xmlXPathFreeObject(v161);
                    v169 = v98;
                    v67 = v237;
                    xmlXPathFreeContext(v169);
                    free(ctxt);
                    v78 = v242;
                    v94 = URLb;
                    if (!myDoc)
                    {
                      goto LABEL_395;
                    }

                    goto LABEL_375;
                  }

LABEL_374:
                  *(*(a1[3] + 8 * v67) + 32) = xmlXIncludeCopyNodeList(*a1, myDoc, myDoc->children);
                  if (!myDoc)
                  {
                    goto LABEL_395;
                  }

LABEL_375:
                  if (v94 && (*(a1 + 90) & 4) == 0 && (myDoc->parseFlags & 0x40000) == 0)
                  {
                    NsProp = xmlGetNsProp(*(*(a1[3] + 8 * v67) + 24), "base", "http://www.w3.org/XML/1998/namespace");
                    if (NsProp)
                    {
                      goto LABEL_379;
                    }

                    v197 = xmlBuildRelativeURI(v94, a1[12]);
                    if (!v197)
                    {
                      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v67) + 24), 1605, "trying to build relative URI from %s\n", v94);
                      goto LABEL_395;
                    }

                    NsProp = v197;
                    if (xmlStrchr(v197, 0x2Fu))
                    {
LABEL_379:
                      v235 = v75;
                      v186 = *(*(a1[3] + 8 * v67) + 32);
                      if (v186)
                      {
                        v221 = v84;
                        ctxtb = NsProp;
                        do
                        {
                          if (*(v186 + 8) == 1)
                          {
                            v187 = v94;
                            v188 = xmlNodeGetBase(*(v186 + 64), v186);
                            if (v188)
                            {
                              v189 = v188;
                              v190 = v78;
                              if (xmlStrEqual(v188, *(*(v186 + 64) + 136)))
                              {
                                xmlNodeSetBase(v186, NsProp);
                              }

                              else
                              {
                                v191 = xmlGetNsProp(v186, "base", "http://www.w3.org/XML/1998/namespace");
                                if (v191)
                                {
                                  v192 = v191;
                                  v193 = xmlBuildURI(v191, NsProp);
                                  if (v193)
                                  {
                                    v194 = v193;
                                    xmlNodeSetBase(v186, v193);
                                    free(v194);
                                  }

                                  else
                                  {
                                    xmlXIncludeErr(a1, *(*(a1[3] + 8 * v67) + 24), 1605, "trying to rebuild base from %s\n", v192);
                                  }

                                  free(v192);
                                  NsProp = ctxtb;
                                }
                              }

                              free(v189);
                              v78 = v190;
                              v84 = v221;
                            }

                            else
                            {
                              xmlNodeSetBase(v186, NsProp);
                            }

                            v94 = v187;
                          }

                          v186 = *(v186 + 48);
                        }

                        while (v186);
                      }

                      free(NsProp);
                      v75 = v235;
                    }

                    else
                    {
                      free(NsProp);
                    }
                  }

LABEL_395:
                  if (*(a1 + 3) > v67)
                  {
                    v195 = *(a1[3] + 8 * v67);
                    v196 = *(v195 + 16);
                    if (v196)
                    {
                      if (*(v195 + 44) <= 1)
                      {
                        xmlFreeDoc(v196);
                        v67 = 0;
                        v160 = 16;
                        goto LABEL_399;
                      }
                    }
                  }

LABEL_400:
                  free(v94);
                  a1[12] = v84;
                  goto LABEL_272;
                }

                v67 = v237;
                v78 = v242;
                v94 = URLa;
LABEL_189:
                v96 = ctxt;
                if (ctxt)
                {
                  goto LABEL_190;
                }

                goto LABEL_374;
              }

LABEL_355:
              free(URLa);
              v116 = ctxt;
              if (!ctxt)
              {
                goto LABEL_264;
              }

              goto LABEL_263;
            }

            if (myDoc)
            {
              xmlFreeDoc(v120->myDoc);
            }

            v120->myDoc = 0;
          }
        }

        xmlFreeParserCtxt(v120);
      }

      else
      {
        xmlXIncludeErrMemory(a1, 0, "cannot allocate parser context");
      }

      *(a1 + 22) = v118;
      goto LABEL_355;
    }

    if (xmlStrcmp(v78, "-"))
    {
      v85 = v78;
    }

    else
    {
      v85 = "./-";
    }

    v86 = xmlParseURI(v85);
    if (!v86)
    {
      goto LABEL_212;
    }

    v87 = v86;
    v88 = v86->fragment;
    if (v88)
    {
      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v17) + 24), 1606, "fragment identifier forbidden for text: %s\n", v88);
      xmlFreeURI(v87);
      goto LABEL_264;
    }

    v94 = xmlSaveUri(v86);
    xmlFreeURI(v87);
    if (!v94)
    {
LABEL_212:
      v102 = *(*(a1[3] + 8 * v17) + 24);
      v103 = a1;
      v104 = v85;
      goto LABEL_213;
    }

    if (!*v94)
    {
      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v17) + 24), 1607, "text serialization of document not available\n", 0);
      v116 = v94;
      goto LABEL_263;
    }

    if (*(a1 + 8) >= 1)
    {
      v106 = 0;
      while (!xmlStrEqual(v94, *(a1[6] + 8 * v106)))
      {
        if (++v106 >= *(a1 + 8))
        {
          goto LABEL_207;
        }
      }

      v67 = xmlNewText(*(a1[5] + 8 * v106));
LABEL_323:
      v160 = 32;
LABEL_399:
      *(*(a1[3] + 8 * v237) + v160) = v67;
      LODWORD(v67) = v237;
      goto LABEL_400;
    }

LABEL_207:
    v107 = *(a1[3] + 8 * v17);
    URL = v94;
    if (v107)
    {
      v108 = *(v107 + 24);
      if (v108)
      {
        v109 = xmlGetProp(v108, "encoding");
        if (v109)
        {
          v110 = v109;
          v111 = xmlParseCharEncoding(v109);
          if (v111 != XML_CHAR_ENCODING_ERROR)
          {
            v112 = v111;
            free(v110);
            goto LABEL_290;
          }

          xmlXIncludeErr(a1, *(*(a1[3] + 8 * v17) + 24), 1610, "encoding %s not supported\n", v110);
          free(v110);
LABEL_349:
          v116 = URL;
LABEL_263:
          free(v116);
          goto LABEL_264;
        }
      }
    }

    v112 = XML_CHAR_ENCODING_NONE;
LABEL_290:
    v145 = xmlNewParserCtxt();
    v114 = URL;
    v146 = xmlLoadExternalEntity(URL, 0, v145);
    if (!v146)
    {
      xmlFreeParserCtxt(v145);
LABEL_219:
      v116 = v114;
      goto LABEL_263;
    }

    buf = v146->buf;
    if (!v146->buf)
    {
      xmlFreeInputStream(v146);
      xmlFreeParserCtxt(v145);
      goto LABEL_349;
    }

    input = v146;
    ctxta = v145;
    encoder = buf->encoder;
    if (encoder)
    {
      xmlCharEncCloseFunc(encoder);
    }

    buf->encoder = xmlGetCharEncodingHandler(v112);
    v67 = xmlNewText(0);
    v149 = 0;
    v94 = URL;
    v219 = v73;
    v220 = v84;
    while (2)
    {
      if (xmlParserInputBufferRead(buf, 128) < 1)
      {
        xmlFreeParserCtxt(ctxta);
        xmlXIncludeAddTxt(a1, v67->content, v94);
        xmlFreeInputStream(input);
        goto LABEL_323;
      }

      v150 = xmlBufContent(buf->buffer);
      v151 = buf;
      v152 = xmlBufLength(buf->buffer);
      if (v152 < 1)
      {
        v157 = v149;
LABEL_309:
        buf = v151;
        xmlBufShrink(v151->buffer, v152);
        v158 = 0;
        v149 = v157;
LABEL_310:
        v94 = URL;
        goto LABEL_311;
      }

      v153 = 0;
      while (2)
      {
        LODWORD(data) = 0;
        v154 = v153;
        v155 = &v150[v153];
        v156 = xmlStringCurrentChar(0, v155, &data);
        if (v156 <= 255)
        {
          if (v156 <= 31 && (v156 > 0xD || ((1 << v156) & 0x2600) == 0))
          {
            break;
          }

          goto LABEL_306;
        }

        if (v156 >> 11 < 0x1B || (v156 - 57344) >> 1 < 0xFFF || (v156 - 0x10000) < 0x100000)
        {
LABEL_306:
          xmlNodeAddContentLen(v67, v155, data);
          v149 = 0;
          v157 = 0;
          v153 = data + v154;
          if (data + v154 >= v152)
          {
            goto LABEL_309;
          }

          continue;
        }

        break;
      }

      if (v152 - v154 <= 3 && !v149)
      {
        v159 = v154;
        buf = v151;
        xmlBufShrink(v151->buffer, v159);
        v158 = 6;
        v149 = 1;
        goto LABEL_310;
      }

      v94 = URL;
      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1608, "%s contains invalid char\n", URL);
      xmlFreeParserCtxt(ctxta);
      buf = v151;
      xmlFreeParserInputBuffer(v151);
      free(URL);
      v158 = 1;
LABEL_311:
      v73 = v219;
      v84 = v220;
      if (!v158 || v158 == 6)
      {
        continue;
      }

      break;
    }

LABEL_264:
    a1[12] = v84;
    LODWORD(v67) = v237;
    children = v233->children;
    if (!children)
    {
      goto LABEL_271;
    }

    while (children->type != XML_ELEMENT_NODE || !children->ns || !xmlStrEqual(children->name, "fallback") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2003/XInclude") && !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XInclude"))
    {
      children = children->next;
      if (!children)
      {
        goto LABEL_271;
      }
    }

    if (children->type == XML_NAMESPACE_DECL)
    {
LABEL_271:
      xmlXIncludeErr(a1, *(*(a1[3] + 8 * v237) + 24), 1604, "could not load %s, and no fallback was found\n", v242);
    }

    else if (children->children)
    {
      v135 = *(a1 + 20);
      v136 = xmlXIncludeNewContext(*a1);
      if (!v136)
      {
        goto LABEL_271;
      }

      v137 = v136;
      v234 = v75;
      v138 = v73;
      *(v136 + 13) = a1[13];
      *(v136 + 12) = xmlStrdup(a1[12]);
      *(v137 + 22) = *(a1 + 22);
      *(v137 + 14) = a1[14];
      v139 = xmlXIncludeDoProcess(v137, *a1, children, 1);
      a1[14] = *(v137 + 14);
      v140 = *(a1 + 20);
      xmlXIncludeFreeContext(v137);
      v141 = xmlDocCopyNodeList(*a1, children->children);
      v142 = a1[3];
      *(*(v142 + 8 * v237) + 32) = v141;
      v143 = *(v142 + 8 * v237);
      if (!*(v143 + 32))
      {
        *(v143 + 52) = 1;
      }

      *(v143 + 48) = 1;
      v27 = v140 <= v135;
      v73 = v138;
      v75 = v234;
      if (!v27 || v139 < 0)
      {
        goto LABEL_271;
      }
    }

    else
    {
      v144 = a1[3];
      *(*(v144 + 8 * v237) + 32) = 0;
      *(*(v144 + 8 * v237) + 48) = 0x100000001;
    }

LABEL_272:
    free(v242);
    if (v73)
    {
      free(v73);
    }

    v105 = v231;
LABEL_275:
    free(v105);
    LODWORD(v11) = v239;
    if (v75)
    {
LABEL_276:
      free(v75);
    }

LABEL_277:
    v11 = (v11 + 1);
    v17 = v67 + 1;
    v65 = *(a1 + 3);
    ++v66;
    if (v67 + 1 < v65)
    {
      continue;
    }

    break;
  }

LABEL_405:
  v198 = v11;
  v199 = *(a1 + 2);
  if (v199 < v65)
  {
    while (2)
    {
      v200 = a1[3];
      v201 = *(v200 + 8 * v199);
      v202 = *(v201 + 32);
      if (v202)
      {
        if (v199 < 0)
        {
          goto LABEL_438;
        }

LABEL_411:
        v203 = *(v201 + 24);
        if (v203 && *(v203 + 8) != 18)
        {
          *(v201 + 32) = 0;
          v204 = *(v200 + 8 * v199);
          *(v204 + 52) = 0;
          v205 = *(v203 + 40);
          if (!v205 || *(v205 + 8) == 1)
          {
            goto LABEL_415;
          }

          if (!v202)
          {
LABEL_434:
            v214 = "XInclude error: would result in no root node\n";
            goto LABEL_435;
          }

          v212 = 0;
          v213 = v202;
          do
          {
            if (v213->type == XML_ELEMENT_NODE)
            {
              ++v212;
            }

            v213 = v213->next;
          }

          while (v213);
          if (v212 != 1)
          {
            v214 = "XInclude error: would result in multiple root nodes\n";
            if (!v212)
            {
              goto LABEL_434;
            }

LABEL_435:
            v215 = *(v204 + 24);
            v216 = a1;
            v217 = 1611;
LABEL_437:
            xmlXIncludeErr(v216, v215, v217, v214, 0);
            xmlFreeNodeList(v202);
            goto LABEL_438;
          }

LABEL_415:
          if ((*(a1 + 89) & 0x80) != 0)
          {
            if (v202)
            {
              do
              {
                next = v202->next;
                xmlAddPrevSibling(v203, v202);
                v202 = next;
              }

              while (next);
            }

            xmlUnlinkNode(v203);
            xmlFreeNode(v203);
          }

          else
          {
            if (*(v204 + 48))
            {
              xmlUnsetProp(v203, "href");
            }

            *(v203 + 8) = 19;
            v206 = *(v203 + 24);
            if (v206)
            {
              do
              {
                v207 = v206->next;
                xmlUnlinkNode(v206);
                xmlFreeNode(v206);
                v206 = v207;
              }

              while (v207);
            }

            v208 = xmlNewDocNode(*(v203 + 64), *(v203 + 72), *(v203 + 16), 0);
            if (!v208)
            {
              v215 = *(*(a1[3] + 8 * v199) + 24);
              v216 = a1;
              v217 = 1609;
              v214 = "failed to build node\n";
              goto LABEL_437;
            }

            v209 = v208;
            v208->type = XML_XINCLUDE_END;
            xmlAddNextSibling(v203, v208);
            if (v202)
            {
              do
              {
                v210 = v202->next;
                xmlAddPrevSibling(v209, v202);
                v202 = v210;
              }

              while (v210);
            }
          }
        }
      }

      else if ((v199 & 0x8000000000000000) == 0 && *(v201 + 52))
      {
        goto LABEL_411;
      }

LABEL_438:
      if (++v199 >= *(a1 + 3))
      {
        break;
      }

      continue;
    }
  }

  if (*(v225 + 136))
  {
    xmlXIncludeURLPop(a1);
  }

  return v198;
}

int xmlXIncludeProcessFlagsData(xmlDocPtr doc, int flags, void *data)
{
  if (!doc)
  {
    return -1;
  }

  RootElement = xmlDocGetRootElement(doc);
  if (!RootElement)
  {
    return -1;
  }

  return xmlXIncludeProcessTreeFlagsData(RootElement, flags, data);
}

int xmlXIncludeProcessTreeFlags(xmlNodePtr tree, int flags)
{
  if (!tree)
  {
    return -1;
  }

  if (tree->type == XML_NAMESPACE_DECL)
  {
    return -1;
  }

  doc = tree->doc;
  if (!doc)
  {
    return -1;
  }

  v5 = xmlXIncludeNewContext(doc);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  *(v5 + 12) = xmlNodeGetBase(tree->doc, tree);
  *(v6 + 22) = flags;
  v7 = xmlXIncludeDoProcess(v6, tree->doc, tree, 0);
  if (v7 < 0)
  {
    v8 = -1;
  }

  else if (*(v6 + 20) > 0)
  {
    v8 = -1;
  }

  else
  {
    v8 = v7;
  }

  xmlXIncludeFreeContext(v6);
  return v8;
}

int xmlXIncludeProcessNode(xmlXIncludeCtxtPtr ctxt, xmlNodePtr tree)
{
  if (!tree || tree->type == XML_NAMESPACE_DECL)
  {
    return -1;
  }

  result = -1;
  if (ctxt)
  {
    doc = tree->doc;
    if (doc)
    {
      result = xmlXIncludeDoProcess(ctxt, doc, tree, 0);
      if (result < 0)
      {
        return -1;
      }

      else if (*(ctxt + 20) > 0)
      {
        return -1;
      }
    }
  }

  return result;
}

xmlChar *xmlXIncludeGetProp(uint64_t a1, xmlNode *node, const xmlChar *a3)
{
  result = xmlGetNsProp(node, "http://www.w3.org/2003/XInclude", a3);
  if (!result && (!*(a1 + 84) || (result = xmlGetNsProp(node, "http://www.w3.org/2001/XInclude", a3)) == 0))
  {

    return xmlGetProp(node, a3);
  }

  return result;
}

xmlNodePtr xmlXIncludeCopyNodeList(xmlDoc *a1, uint64_t a2, xmlNode *a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      v5 = a3;
      if (a3)
      {
        v7 = 0;
        v3 = 0;
        do
        {
          v8 = xmlXIncludeCopyNode(a1, a2, v5);
          if (v8)
          {
            if (v3)
            {
              v7->next = v8;
              v8->prev = v7;
            }

            else
            {
              v3 = v8;
            }
          }

          else
          {
            v8 = v7;
          }

          v5 = v5->next;
          v7 = v8;
        }

        while (v5);
      }
    }
  }

  return v3;
}

xmlNodePtr xmlXIncludeCopyXPointer(uint64_t *a1, xmlDoc *a2, uint64_t a3, int *a4)
{
  v4 = a3;
  if (!a3)
  {
    v4 = *a1;
  }

  v7 = 0;
  if (!a4 || !a2 || !v4)
  {
    return v7;
  }

  v8 = *a4;
  if (*a4 == 7)
  {
    v52 = *(a4 + 5);
    if (!v52 || *v52 < 1)
    {
      return 0;
    }

    v53 = 0;
    v54 = 0;
    v7 = 0;
    while (1)
    {
      v55 = xmlXIncludeCopyXPointer(a1, a2, v4, *(*(v52 + 1) + 8 * v53));
      v56 = v55;
      if (v54)
      {
        break;
      }

      v7 = v55;
      if (v55)
      {
        goto LABEL_98;
      }

      v54 = 0;
LABEL_99:
      if (++v53 >= *v52)
      {
        return v7;
      }
    }

    xmlAddNextSibling(v54, v55);
    v56 = v54;
    do
    {
LABEL_98:
      v54 = v56;
      v56 = v56->next;
    }

    while (v56);
    goto LABEL_99;
  }

  if (v8 != 6)
  {
    if (v8 == 1)
    {
      v9 = *(a4 + 1);
      if (v9)
      {
        if (*v9 >= 1)
        {
          v10 = 0;
          v11 = 0;
          v7 = 0;
          while (1)
          {
            v12 = *(*(v9 + 1) + 8 * v10);
            if (v12)
            {
              v13 = *(v12 + 8);
              if (v13 > 0x13)
              {
                goto LABEL_30;
              }

              if (((1 << v13) & 0x7DC04) == 0)
              {
                if (v13 != 19)
                {
LABEL_30:
                  v19 = xmlXIncludeCopyNode(a2, v4, v12);
                  next = v19;
                  if (v11)
                  {
                    xmlAddNextSibling(v11, v19);
                    if (v11->next)
                    {
                      next = v11->next;
                    }

                    else
                    {
                      next = v11;
                    }
                  }

                  else
                  {
                    v7 = v19;
                  }

                  goto LABEL_16;
                }

                v15 = *(v12 + 48);
                if (v15)
                {
                  while (1)
                  {
                    v16 = *(v15 + 8);
                    if ((v16 - 3) >= 6 && v16 != 1)
                    {
                      break;
                    }

                    v18 = xmlXIncludeCopyNode(a2, v4, v15);
                    next = v18;
                    if (v11)
                    {
                      next = xmlAddNextSibling(v11, v18);
                    }

                    else
                    {
                      v7 = v18;
                    }

                    v15 = *(v15 + 48);
                    v11 = next;
                    if (!v15)
                    {
                      goto LABEL_16;
                    }
                  }
                }
              }
            }

            next = v11;
LABEL_16:
            ++v10;
            v11 = next;
            if (v10 >= *v9)
            {
              return v7;
            }
          }
        }
      }
    }

    return 0;
  }

  v71 = 0;
  v20 = *(a4 + 5);
  if (!v20 || *(v20 + 8) == 18)
  {
    return 0;
  }

  v21 = *(a4 + 7);
  if (!v21)
  {
    return xmlDocCopyNode(*(a4 + 5), a2, 1);
  }

  if (*(v21 + 8) == 18)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v7 = 0;
  v27 = a4[16];
  v68 = a4[16];
  v69 = a4[12];
  v28 = 1;
  NthChild = *(a4 + 5);
  while (2)
  {
    v70 = v21;
    v30 = v23;
    v23 = v22;
    Sibling = v26;
    while (1)
    {
      if (v23 < 0)
      {
        do
        {
          v33 = v7;
          v7 = xmlDocCopyNode(v25, a2, 2);
          xmlAddChild(v7, v33);
          v25 = v25->parent;
          v34 = v71;
          v23 = ++v71;
        }

        while (v34 < -1);
        v24 = 0;
        Sibling = v7;
LABEL_48:
        v32 = v70;
        goto LABEL_49;
      }

      if (v23 >= v24)
      {
        goto LABEL_48;
      }

      v32 = v70;
      do
      {
        Sibling = Sibling->parent;
        --v24;
      }

      while (v23 < v24);
      v24 = v23;
LABEL_49:
      if (NthChild == v32)
      {
        break;
      }

      v35 = *(NthChild + 8);
      if (NthChild != v20)
      {
        v42 = v35 > 0x14;
        v36 = (1 << v35) & 0x1BC044;
        if (v42 || v36 == 0)
        {
          v38 = xmlDocCopyNode(NthChild, a2, 2);
          if (v38)
          {
            if (v71 == v24)
            {
              Sibling = xmlAddNextSibling(Sibling, v38);
            }

            else
            {
              Sibling = xmlAddChild(Sibling, v38);
              v24 = v71;
            }
          }
        }

        goto LABEL_72;
      }

      if (v35 - 3 <= 1)
      {
        v39 = *(NthChild + 80);
        if (v39)
        {
          v40 = v69;
          v41 = v39 + v69 - 1;
          v42 = v69 <= 1;
          if (v69 > 1)
          {
            v40 = 0;
          }

          v69 = v40;
          if (v42)
          {
            v43 = *(NthChild + 80);
          }

          else
          {
            v43 = v41;
          }

          v44 = xmlNewDocText(a2, v43);
        }

        else
        {
          v44 = xmlNewDocTextLen(a2, 0, 0);
        }

        v7 = v44;
        v25 = *(NthChild + 40);
LABEL_71:
        Sibling = v7;
LABEL_72:
        v45 = xmlXPtrAdvanceNode(NthChild, &v71);
        v23 = v71;
        if (!(v28 & 1 | (v71 < v30)))
        {
          return v7;
        }

        NthChild = v45;
        goto LABEL_74;
      }

      v7 = xmlDocCopyNode(NthChild, a2, 2);
      v25 = *(NthChild + 40);
      if (v69 < 2)
      {
        goto LABEL_71;
      }

      NthChild = xmlXIncludeGetNthChild(NthChild, v69 - 1);
      v69 = 0;
      v23 = 1;
      v71 = 1;
      Sibling = v7;
      v24 = 1;
LABEL_74:
      if (!NthChild)
      {
        return v7;
      }
    }

    if (*(NthChild + 8) != 3)
    {
      v46 = xmlDocCopyNode(NthChild, a2, 2);
      v26 = v46;
      if (v7)
      {
        if (v71 == v24)
        {
          v26 = xmlAddNextSibling(Sibling, v46);
        }

        else
        {
          v26 = xmlAddChild(Sibling, v46);
          v24 = v71;
        }
      }

      else
      {
        v25 = *(NthChild + 40);
        v7 = v46;
      }

      if (v68 >= 2)
      {
        v48 = v26;
        v49 = xmlXIncludeGetNthChild(NthChild, v68 - 1);
        v26 = v48;
        v21 = v49;
        v68 = 0;
        v47 = v70;
      }

      else
      {
        v47 = v70;
        v21 = v70;
      }

      if (v47 == v20 && v69 >= 2)
      {
        v50 = v26;
        v51 = xmlXIncludeGetNthChild(NthChild, v69 - 1);
        v26 = v50;
        NthChild = v51;
        v69 = 0;
      }

      else
      {
        NthChild = *(NthChild + 24);
      }

      v28 = 0;
      v22 = ++v71;
      if (!NthChild)
      {
        return v7;
      }

      continue;
    }

    break;
  }

  v58 = *(NthChild + 80);
  if (v58)
  {
    v59 = v70 == v20;
    v60 = v69 - 1;
    v61 = v69 > 1;
    v62 = !v59 || !v61;
    if (v59 && v61)
    {
      v63 = (v69 - 1);
    }

    else
    {
      v63 = 0;
    }

    if (v62)
    {
      v60 = 0;
    }

    v64 = v68 - v60;
    v65 = (v58 + v63);
    v66 = a2;
  }

  else
  {
    v66 = a2;
    v65 = 0;
    v64 = 0;
  }

  v67 = xmlNewDocTextLen(v66, v65, v64);
  if (!v7)
  {
    return v67;
  }

  if (v71 == v24)
  {
    xmlAddNextSibling(Sibling, v67);
  }

  else
  {
    xmlAddChild(Sibling, v67);
  }

  return v7;
}