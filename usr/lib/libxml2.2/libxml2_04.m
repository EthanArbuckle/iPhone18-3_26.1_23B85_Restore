void xmlC14NFreeCtx(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = *(v2 + 2);
    if (v3)
    {
      bzero(v3, 8 * v2[3]);
      free(*(v2 + 2));
    }

    v4 = *(v2 + 3);
    if (v4)
    {
      bzero(v4, 8 * v2[3]);
      free(*(v2 + 3));
    }

    *v2 = 0u;
    *(v2 + 1) = 0u;
    free(v2);
  }

  free(a1);
}

uint64_t xmlC14NIsNodeInNodeset(xmlNodeSet *a1, uint64_t a2, uint64_t a3)
{
  v5 = 1;
  if (!a1 || !a2)
  {
    return v5;
  }

  if (*(a2 + 8) == 18)
  {
    v9 = v3;
    v10 = v4;
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    v8[2] = *(a2 + 32);
    if (a3)
    {
      if (*(a3 + 8) == 2)
      {
        a3 = *(a3 + 40);
      }
    }

    *&v8[0] = a3;
    return xmlXPathNodeSetContains(a1, v8);
  }

  return xmlXPathNodeSetContains(a1, a2);
}

int xmlC14NDocDumpMemory(xmlDocPtr doc, xmlNodeSetPtr nodes, int mode, xmlChar **inclusive_ns_prefixes, int with_comments, xmlChar **doc_txt_ptr)
{
  if (!doc_txt_ptr)
  {
    xmlC14NErrParam("dumping doc to memory");
    return -1;
  }

  *doc_txt_ptr = 0;
  v12 = xmlAllocOutputBuffer(0);
  if (!v12)
  {
    v16 = "creating output buffer";
    goto LABEL_11;
  }

  v13 = v12;
  if (xmlC14NExecute(doc, xmlC14NIsNodeInNodeset, nodes, mode, inclusive_ns_prefixes, with_comments, v12) < 0)
  {
    xmlC14NErrInternal("saving doc to output buffer");
    xmlOutputBufferClose(v13);
    return -1;
  }

  v14 = xmlBufUse(v13->buffer);
  if ((v14 & 0x80000000) == 0)
  {
    v15 = xmlBufContent(v13->buffer);
    *doc_txt_ptr = xmlStrndup(v15, v14);
  }

  xmlOutputBufferClose(v13);
  if ((v14 & 0x80000000) == 0 && !*doc_txt_ptr)
  {
    v16 = "copying canonicalized document";
LABEL_11:
    xmlC14NErrMemory(v16);
    return -1;
  }

  return v14;
}

int xmlC14NDocSave(xmlDocPtr doc, xmlNodeSetPtr nodes, int mode, xmlChar **inclusive_ns_prefixes, int with_comments, const char *filename, int compression)
{
  if (!filename)
  {
    xmlC14NErrParam("saving doc");
    return -1;
  }

  if (compression < 0)
  {
    compression = xmlGetCompressMode();
  }

  v13 = xmlOutputBufferCreateFilename(filename, 0, compression);
  if (!v13)
  {
    xmlC14NErrInternal("creating temporary filename");
    return -1;
  }

  v14 = v13;
  if (xmlC14NExecute(doc, xmlC14NIsNodeInNodeset, nodes, mode, inclusive_ns_prefixes, with_comments, v13) < 0)
  {
    xmlC14NErrInternal("canonize document to buffer");
    xmlOutputBufferClose(v14);
    return -1;
  }

  return xmlOutputBufferClose(v14);
}

unsigned __int8 *xmlC11NNormalizeString(unsigned __int8 *a1, unsigned int a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  v4 = malloc_type_malloc(0x3E8uLL, 0x100004077774924uLL);
  if (!v4)
  {
    xmlC14NErrMemory("allocating buffer");
    return 0;
  }

  v5 = *v2;
  if (!*v2)
  {
    v2 = v4;
LABEL_44:
    *v4 = 0;
    return v2;
  }

  v6 = v2 + 1;
  v7 = 1000;
  v2 = v4;
  while (1)
  {
    v8 = v4 - v2;
    if (v4 - v2 <= (v7 - 10))
    {
      goto LABEL_14;
    }

    if (v7 < 1)
    {
      v7 = 1;
    }

    else
    {
      if (v7 > 0x3B9AC9FF)
      {
        break;
      }

      if (1000000000 - ((v7 + 1) >> 1) >= v7)
      {
        v7 += (v7 + 1) >> 1;
      }

      else
      {
        v7 = 1000000000;
      }
    }

    v9 = malloc_type_realloc(v2, v7, 0x3D928692uLL);
    if (!v9)
    {
      break;
    }

    v10 = v9;
    v4 = &v9[v8];
    v5 = *(v6 - 1);
    v2 = v10;
LABEL_14:
    if (v5 == 60)
    {
      if (a2 != 3 && a2)
      {
        goto LABEL_39;
      }

      v11 = 997485606;
    }

    else
    {
      if (a2 != 3 || v5 != 62)
      {
        if (v5 == 38)
        {
          if (a2 != 3 && a2)
          {
            goto LABEL_39;
          }

          v12 = 1886216486;
        }

        else
        {
          if (!a2 && v5 == 34)
          {
            *v4 = 1869967654;
            *(v4 + 2) = 15220;
            v4 += 6;
            goto LABEL_40;
          }

          if (a2 || v5 != 9)
          {
            if (a2 || v5 != 10)
            {
              if (a2 > 3 || v5 != 13)
              {
LABEL_39:
                *v4++ = v5;
                goto LABEL_40;
              }

              v12 = 1148724006;
            }

            else
            {
              v12 = 1098392358;
            }
          }

          else
          {
            v12 = 964174630;
          }
        }

        *v4 = v12;
        v4[4] = 59;
        v4 += 5;
        goto LABEL_40;
      }

      v11 = 997484326;
    }

    *v4 = v11;
    v4 += 4;
LABEL_40:
    v13 = *v6++;
    v5 = v13;
    if (!v13)
    {
      goto LABEL_44;
    }
  }

  free(v2);
  return 0;
}

uint64_t xmlC14NNsCompare(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    return xmlStrcmp(*(a1 + 24), *(a2 + 24));
  }

  return 1;
}

uint64_t xmlC14NIsXmlNs(uint64_t a1)
{
  result = xmlStrEqual(*(a1 + 24), "xml");
  if (result)
  {
    return xmlStrEqual(*(a1 + 16), "http://www.w3.org/XML/1998/namespace") != 0;
  }

  return result;
}

BOOL xmlC14NVisibleNsStackFind(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    xmlC14NErrParam("searching namespaces stack (c14n)");
    return 0;
  }

  v2 = a1;
  v3 = "";
  if (a2)
  {
    if (*(a2 + 24))
    {
      v4 = *(a2 + 24);
    }

    else
    {
      v4 = "";
    }

    if (*(a2 + 16))
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = "";
    }

    v3 = v4;
  }

  else
  {
    v5 = "";
  }

  if (*v3)
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v8 = *v5;
    result = *v5 == 0;
    v6 = *(v2 + 16);
    if (!v6)
    {
      return result;
    }

    if (!*v5)
    {
      result = 1;
      goto LABEL_18;
    }
  }

  result = 0;
  v8 = *(v2 + 4);
LABEL_18:
  LODWORD(v2) = *v2;
  while (2)
  {
    if (v2 > v8)
    {
      v2 = v2;
      while (1)
      {
        --v2;
        v9 = *(v6 + 8 * v2);
        if (!v9)
        {
          break;
        }

        v10 = *(v9 + 24);
        if (v3 == v10)
        {
          goto LABEL_32;
        }

        if (!v10)
        {
          break;
        }

        v11 = v3;
        while (1)
        {
          v12 = *v11;
          if (v12 != *v10)
          {
            break;
          }

          ++v11;
          ++v10;
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        if (v2 <= v8)
        {
          return result;
        }
      }

      if (*v3)
      {
        continue;
      }

      if (v9)
      {
LABEL_32:
        v13 = *(v9 + 16);
        if (v5 == v13)
        {
          return 1;
        }

        if (v13)
        {
          while (1)
          {
            v14 = *v5;
            if (v14 != *v13)
            {
              break;
            }

            ++v5;
            ++v13;
            if (!v14)
            {
              return 1;
            }
          }

          return 0;
        }
      }

      return *v5 == 0;
    }

    return result;
  }
}

_DWORD *xmlC14NVisibleNsStackAdd(signed int *a1, uint64_t a2, uint64_t a3)
{
  if (!a1 || (result = *(a1 + 2), (result == 0) != (*(a1 + 3) == 0)))
  {

    return xmlC14NErrParam("adding namespace to stack");
  }

  v7 = a1[3];
  v8 = *a1;
  if (v7 > *a1)
  {
LABEL_18:
    *&result[2 * v8] = a2;
    *(*(a1 + 3) + 8 * v8) = a3;
    *a1 = v8 + 1;
    return result;
  }

  if (1000000000 - ((v7 + 1) >> 1) >= v7)
  {
    v9 = v7 + ((v7 + 1) >> 1);
  }

  else
  {
    v9 = 1000000000;
  }

  if (v7 > 0x3B9AC9FF)
  {
    v9 = -1;
  }

  if (v7 >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 16;
  }

  result = malloc_type_realloc(result, 8 * v10, 0x2004093837F09uLL);
  if (result)
  {
    *(a1 + 2) = result;
    result = malloc_type_realloc(*(a1 + 3), 8 * v10, 0x2004093837F09uLL);
    if (result)
    {
      *(a1 + 3) = result;
      a1[3] = v10;
      result = *(a1 + 2);
      v8 = *a1;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t xmlC14NPrintNamespaces(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v4 = *(a1 + 24);
    v5 = *(a2 + 32);
    if (v4)
    {
      xmlOutputBufferWriteString(v5, " xmlns:");
      xmlOutputBufferWriteString(*(a2 + 32), *(a1 + 24));
      v5 = *(a2 + 32);
      v6 = "=";
    }

    else
    {
      v6 = " xmlns=";
    }

    xmlOutputBufferWriteString(v5, v6);
    v8 = *(a1 + 16);
    v9 = *(a2 + 32);
    if (v8)
    {
      xmlBufWriteQuotedString(*(v9 + 32), v8);
    }

    else
    {
      xmlOutputBufferWriteString(v9, "");
    }

    return 1;
  }

  else
  {
    xmlC14NErrParam("writing namespaces");
    return 0;
  }
}

uint64_t xmlExcC14NVisibleNsStackFind(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    xmlC14NErrParam("searching namespaces stack (exc c14n)");
    return 0;
  }

  v3 = "";
  if (a2)
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    if (!v4)
    {
      v4 = "";
    }

    if (!v5)
    {
      v5 = "";
    }

    v3 = v4;
  }

  else
  {
    v5 = "";
  }

  if (*v3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5 == 0;
  }

  v7 = *(a1 + 2);
  if (!v7)
  {
    return v6;
  }

  v8 = *a1;
  while (2)
  {
    if (v8 < 1)
    {
      return v6;
    }

    while (1)
    {
      v9 = v8 - 1;
      v10 = *(v7 + 8 * (v8 - 1));
      if (!v10)
      {
        break;
      }

      v11 = *(v10 + 24);
      if (v3 == v11)
      {
        goto LABEL_29;
      }

      if (!v11)
      {
        break;
      }

      v12 = v3;
      while (1)
      {
        v13 = *v12;
        if (v13 != *v11)
        {
          break;
        }

        ++v12;
        ++v11;
        if (!v13)
        {
          goto LABEL_29;
        }
      }

      if (v8-- < 2)
      {
        return v6;
      }
    }

    v8 = v9;
    if (*v3)
    {
      continue;
    }

    break;
  }

  if (!v10)
  {
    goto LABEL_34;
  }

LABEL_29:
  v15 = *(v10 + 16);
  if (v5 == v15)
  {
    goto LABEL_35;
  }

  if (v15)
  {
    while (1)
    {
      v16 = *v5;
      if (v16 != *v15)
      {
        return 0;
      }

      ++v5;
      ++v15;
      if (!v16)
      {
        goto LABEL_35;
      }
    }
  }

LABEL_34:
  if (*v5)
  {
    return 0;
  }

LABEL_35:
  v17 = *(a3 + 8);
  if (!v17)
  {
    return 1;
  }

  v18 = *(a3 + 16);
  v19 = *(*(a1 + 3) + 8 * v9);

  return v17(v18);
}

uint64_t xmlC14NAttrsCompare(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = *(a1 + 72);
  v5 = *(a2 + 72);
  if (v4 != v5)
  {
    if (v4)
    {
      if (!v5)
      {
        return 1;
      }

      if (*(v4 + 24))
      {
        if (*(v5 + 24))
        {
          result = xmlStrcmp(*(v4 + 16), *(v5 + 16));
          if (result)
          {
            return result;
          }

          goto LABEL_10;
        }

        return 1;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_10:
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);

  return xmlStrcmp(v7, v8);
}

xmlAttrPtr xmlC14NFindHiddenParentAttr(uint64_t a1, const xmlNode *a2, const xmlChar *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  do
  {
    v6 = *(a1 + 8);
    if (!v6 || v6(*(a1 + 16), v4, v4->parent))
    {
      break;
    }

    result = xmlHasNsProp(v4, a3, "http://www.w3.org/XML/1998/namespace");
    if (result)
    {
      return result;
    }

    v4 = v4->parent;
  }

  while (v4);
  return 0;
}

uint64_t xmlC14NPrintAttrs(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    xmlOutputBufferWriteString(*(a2 + 32), " ");
    v4 = *(a1 + 72);
    if (v4)
    {
      if (xmlStrlen(*(v4 + 24)) >= 1)
      {
        xmlOutputBufferWriteString(*(a2 + 32), *(*(a1 + 72) + 24));
        xmlOutputBufferWriteString(*(a2 + 32), ":");
      }
    }

    xmlOutputBufferWriteString(*(a2 + 32), *(a1 + 16));
    xmlOutputBufferWriteString(*(a2 + 32), "=");
    String = xmlNodeListGetString(*a2, *(a1 + 24), 1);
    if (!String)
    {
      goto LABEL_9;
    }

    v6 = String;
    v7 = xmlC11NNormalizeString(String, 0);
    free(v6);
    if (v7)
    {
      xmlOutputBufferWriteString(*(a2 + 32), v7);
      free(v7);
LABEL_9:
      xmlOutputBufferWriteString(*(a2 + 32), "");
      return 1;
    }

    xmlC14NErrInternal("normalizing attributes axis");
  }

  else
  {
    xmlC14NErrParam("writing attributes");
  }

  return 0;
}

void xmlFreeCatalog(xmlCatalogPtr catal)
{
  if (catal)
  {
    v2 = *(catal + 14);
    if (v2)
    {
      do
      {
        v3 = *v2;
        xmlFreeCatalogEntry(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(catal + 12);
    if (v4)
    {
      xmlHashFree(v4, xmlFreeCatalogEntry);
    }

    free(catal);
  }
}

void xmlFreeCatalogEntry(_DWORD *a1)
{
  if (!a1 || a1[15] == 1)
  {
    return;
  }

  if (xmlDebugCatalogs)
  {
    if (*(a1 + 4))
    {
      v2 = *__xmlGenericError();
      v3 = *__xmlGenericErrorContext();
      v4 = *(a1 + 4);
    }

    else
    {
      v5 = *(a1 + 5);
      v2 = *__xmlGenericError();
      v3 = *__xmlGenericErrorContext();
      if (!v5)
      {
        v7 = "Free catalog entry\n";
        goto LABEL_10;
      }

      v6 = *(a1 + 5);
    }

    v7 = "Free catalog entry %s\n";
LABEL_10:
    v2(v3, v7);
  }

  v8 = *(a1 + 4);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 5);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 6);
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

int xmlConvertSGMLCatalog(xmlCatalogPtr catal)
{
  data = catal;
  if (!catal || *catal != 2)
  {
    return -1;
  }

  if (xmlDebugCatalogs)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Converting SGML catalog to XML\n");
  }

  xmlHashScan(*(catal + 12), xmlCatalogConvertEntry, &data);
  return 0;
}

xmlHashTable *xmlCatalogConvertEntry(xmlHashTable *result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = *(a2 + 96);
      if (result)
      {
        if (*(a2 + 112))
        {
          v4 = *(v3 + 6) - 13;
          if (v4 < 0xA && ((0x2FFu >> v4) & 1) != 0)
          {
            *(v3 + 6) = dword_1C79BA3F8[v4];
            result = xmlHashRemoveEntry(result, *(v3 + 4), 0);
            v5 = *(a2 + 112);
            *v3 = 0;
            *(v3 + 1) = v5;
            v6 = *(v5 + 16);
            if (v6)
            {
              do
              {
                v7 = v6;
                v6 = *v6;
              }

              while (v6);
              *v7 = v3;
            }

            else
            {
              *(v5 + 16) = v3;
            }
          }

          else
          {
            v8 = *(v3 + 4);

            return xmlHashRemoveEntry(result, v8, xmlFreeCatalogEntry);
          }
        }
      }
    }
  }

  return result;
}

xmlDocPtr xmlParseCatalogFile(const char *filename)
{
  v2 = xmlNewParserCtxt();
  if (!v2)
  {
    if (__xmlDefaultSAXHandler()->error)
    {
      v11 = __xmlDefaultSAXHandler();
      v11->error(0, "out of memory\n");
    }

    return 0;
  }

  v3 = v2;
  v4 = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
  if (!v4)
  {
LABEL_16:
    xmlFreeParserCtxt(v3);
    return 0;
  }

  v5 = v4;
  v6 = xmlNewInputStream(v3);
  if (!v6)
  {
    xmlFreeParserInputBuffer(v5);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = xmlCanonicPath(filename);
  v7->buf = v5;
  v7->filename = v8;
  xmlBufResetInput(v5->buffer, v7);
  if (inputPush(v3, v7) < 0)
  {
    xmlFreeInputStream(v7);
    goto LABEL_16;
  }

  if (!v3->directory)
  {
    Directory = xmlParserGetDirectory(filename);
    if (!v3->directory)
    {
      if (Directory)
      {
        v3->directory = Directory;
      }
    }
  }

  *&v3->valid = 0;
  v3->loadsubset = 0;
  v3->pedantic = 0;
  v3->dictNames = 1;
  xmlParseDocument(v3);
  myDoc = v3->myDoc;
  if (!v3->wellFormed)
  {
    xmlFreeDoc(v3->myDoc);
    myDoc = 0;
    v3->myDoc = 0;
  }

  xmlFreeParserCtxt(v3);
  return myDoc;
}

xmlCatalogPtr xmlLoadSGMLSuperCatalog(const char *filename)
{
  FileContent = xmlLoadFileContent(filename);
  if (!FileContent)
  {
    return 0;
  }

  v3 = FileContent;
  NewCatalog = xmlCreateNewCatalog(2, xmlCatalogDefaultPrefer);
  v5 = NewCatalog;
  if (!NewCatalog)
  {
    free(v3);
    return v5;
  }

  v6 = xmlParseSGMLCatalog(NewCatalog, v3, filename, 1);
  free(v3);
  if (v6 < 0)
  {
    xmlFreeCatalog(v5);
    return 0;
  }

  return v5;
}

char *xmlLoadFileContent(char *a1)
{
  v1 = a1;
  if (a1)
  {
    memset(&v7, 0, sizeof(v7));
    if ((stat(a1, &v7) & 0x80000000) == 0)
    {
      v2 = open(v1, 0);
      if ((v2 & 0x80000000) == 0)
      {
        v3 = v2;
        st_size = v7.st_size;
        v1 = malloc_type_malloc(v7.st_size + 10, 0x100004077774924uLL);
        if (!v1)
        {
          xmlCatalogErrMemory("allocating catalog data");
          close(v3);
          return v1;
        }

        v5 = read(v3, v1, st_size);
        close(v3);
        if ((v5 & 0x80000000) == 0)
        {
          v1[v5 & 0x7FFFFFFF] = 0;
          return v1;
        }

        free(v1);
      }
    }

    return 0;
  }

  return v1;
}

char *xmlCreateNewCatalog(int a1, int a2)
{
  v4 = malloc_type_malloc(0x78uLL, 0x1030040494B459FuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 84) = 0u;
    *(v4 + 100) = 0u;
    *(v4 + 29) = 0;
    *(v4 + 68) = 0u;
    *(v4 + 52) = 0u;
    *(v4 + 36) = 0u;
    *(v4 + 20) = 0u;
    *(v4 + 4) = 0u;
    *v4 = a1;
    *(v4 + 23) = 10;
    *(v4 + 26) = a2;
    if (a1 == 2)
    {
      *(v4 + 12) = xmlHashCreate(10);
    }
  }

  else
  {
    xmlCatalogErrMemory("allocating catalog");
  }

  return v5;
}

uint64_t xmlParseSGMLCatalog(uint64_t a1, unsigned __int8 *a2, xmlChar *cur, int a4)
{
  if (!cur)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = xmlStrdup(cur);
  while (a2)
  {
    while (1)
    {
LABEL_3:
      v8 = *a2;
      if (!*a2)
      {
        goto LABEL_110;
      }

      v9 = a2 + 2;
      a2 += 4;
      while (v8 <= 0x2D)
      {
        if (((1 << v8) & 0x100002600) == 0)
        {
          if (!v8)
          {
            goto LABEL_110;
          }

          if (v8 == 45 && *(v9 - 1) == 45)
          {
            while (1)
            {
              if (*(a2 - 2) == 45)
              {
                if (*(a2 - 1) == 45)
                {
                  goto LABEL_3;
                }
              }

              else if (!*(a2 - 2))
              {
                goto LABEL_106;
              }

              ++a2;
            }
          }

          break;
        }

        v8 = *(v9++ - 1);
        ++a2;
      }

      str1 = 0;
      cura = 0;
      v10 = xmlParseSGMLCatalogName(v9 - 2, &str1);
      a2 = v10;
      if (!v10 || (v11 = str1) == 0)
      {
LABEL_97:
        if (a2)
        {
          v37 = 0;
        }

        else
        {
          v37 = 0xFFFFFFFFLL;
        }

        if (v7)
        {
          goto LABEL_107;
        }

        return v37;
      }

      v12 = *v10;
      if (v12 > 0x20 || ((1 << v12) & 0x100002600) == 0)
      {
        free(str1);
LABEL_110:
        v37 = 0;
        if (v7)
        {
          goto LABEL_107;
        }

        return v37;
      }

      while (v12 <= 0x20u && ((1 << v12) & 0x100002600) != 0)
      {
        v14 = *++a2;
        LOBYTE(v12) = v14;
      }

      v15 = xmlStrEqual(str1, "SYSTEM");
      if (!v15)
      {
        break;
      }

      v17 = 13;
LABEL_43:
      free(v11);
      str1 = 0;
      v18 = xmlParseSGMLCatalogPubid(a2, &str1);
      if (!v18)
      {
        goto LABEL_102;
      }

      a2 = v18;
      if (!v15)
      {
        v22 = str1;
        v23 = xmlCatalogNormalizePublic(str1);
        if (v23)
        {
          v24 = v23;
          if (v22)
          {
            free(v22);
          }

          if (*v24)
          {
            str1 = v24;
          }

          else
          {
            free(v24);
            str1 = 0;
          }
        }
      }

      v19 = *a2;
      if (v19 > 0x20 || ((1 << v19) & 0x100002600) == 0)
      {
        goto LABEL_80;
      }

      while (v19 <= 0x20u && ((1 << v19) & 0x100002600) != 0)
      {
        v21 = *++a2;
        LOBYTE(v19) = v21;
      }

LABEL_75:
      v28 = xmlParseSGMLCatalogPubid(a2, &cura);
      if (!v28)
      {
LABEL_102:
        if (str1)
        {
          free(str1);
        }

        if (cura)
        {
          free(cura);
        }

        goto LABEL_106;
      }

      a2 = v28;
      if (v17 != 21)
      {
LABEL_80:
        if ((v17 - 13) > 1)
        {
          if (v17 == 22)
          {
            v33 = cura;
            if (a4)
            {
              v34 = xmlNewCatalogEntry(22, cura, 0, 0, 0, 0);
              if (xmlHashAddEntry(*(a1 + 96), v33, v34) < 0)
              {
                xmlFreeCatalogEntry(v34);
              }
            }

            else
            {
              v35 = xmlBuildURI(cura, v7);
              if (v35)
              {
                v36 = v35;
                xmlExpandCatalog(a1, v35);
                free(v36);
              }
            }
          }
        }

        else
        {
          v29 = xmlBuildURI(cura, v7);
          if (v29)
          {
            v30 = v29;
            v31 = str1;
            v32 = xmlNewCatalogEntry(v17, str1, v29, 0, 0, 0);
            if (xmlHashAddEntry(*(a1 + 96), v31, v32) < 0)
            {
              xmlFreeCatalogEntry(v32);
            }

            free(v30);
          }
        }

        goto LABEL_89;
      }

      if (v7)
      {
        free(v7);
      }

      v7 = xmlStrdup(cura);
LABEL_89:
      if (str1)
      {
        free(str1);
      }

LABEL_91:
      if (cura)
      {
        free(cura);
      }
    }

    if (xmlStrEqual(v11, "PUBLIC"))
    {
      v17 = 14;
      goto LABEL_43;
    }

    if (xmlStrEqual(v11, "DELEGATE"))
    {
      v17 = 20;
      goto LABEL_43;
    }

    if (xmlStrEqual(v11, "ENTITY"))
    {
      free(v11);
      str1 = 0;
      if (*a2 == 37)
      {
        v17 = 16;
      }

      else
      {
        v17 = 15;
      }

      goto LABEL_64;
    }

    if (xmlStrEqual(v11, "DOCTYPE"))
    {
      v17 = 17;
      goto LABEL_63;
    }

    if (xmlStrEqual(v11, "LINKTYPE"))
    {
      v17 = 18;
      goto LABEL_63;
    }

    if (xmlStrEqual(v11, "NOTATION"))
    {
      v17 = 19;
LABEL_63:
      free(v11);
      str1 = 0;
LABEL_64:
      v25 = xmlParseSGMLCatalogName(a2, &str1);
      if (!v25)
      {
        goto LABEL_102;
      }

      a2 = v25;
      v26 = *v25;
      if (v26 > 0x20 || ((1 << v26) & 0x100002600) == 0)
      {
        goto LABEL_80;
      }

      while (v26 <= 0x20u && ((1 << v26) & 0x100002600) != 0)
      {
        v27 = *++a2;
        LOBYTE(v26) = v27;
      }

      goto LABEL_75;
    }

    if (xmlStrEqual(v11, "SGMLDECL"))
    {
      v17 = 24;
LABEL_74:
      free(v11);
      str1 = 0;
      goto LABEL_75;
    }

    if (xmlStrEqual(v11, "DOCUMENT"))
    {
      v17 = 23;
      goto LABEL_74;
    }

    if (xmlStrEqual(v11, "CATALOG"))
    {
      v17 = 22;
      goto LABEL_74;
    }

    if (xmlStrEqual(v11, "BASE"))
    {
      v17 = 21;
      goto LABEL_74;
    }

    v16 = xmlStrEqual(v11, "OVERRIDE");
    free(v11);
    if (!v16)
    {
      goto LABEL_91;
    }

    a2 = xmlParseSGMLCatalogName(a2, &str1);
    if (!str1)
    {
      goto LABEL_97;
    }

    free(str1);
  }

LABEL_106:
  v37 = 0xFFFFFFFFLL;
  if (v7)
  {
LABEL_107:
    free(v7);
  }

  return v37;
}

xmlCatalogPtr xmlLoadACatalog(const char *filename)
{
  FileContent = xmlLoadFileContent(filename);
  if (!FileContent)
  {
    return 0;
  }

  v3 = FileContent;
  v4 = FileContent;
  while (1)
  {
    v5 = *v4;
    if (!*v4 || v5 == 45)
    {
LABEL_7:
      NewCatalog = xmlCreateNewCatalog(2, xmlCatalogDefaultPrefer);
      v7 = NewCatalog;
      if (NewCatalog && (xmlParseSGMLCatalog(NewCatalog, v3, filename, 0) & 0x80000000) != 0)
      {
        xmlFreeCatalog(v7);
        v7 = 0;
      }

      goto LABEL_13;
    }

    if (v5 == 60)
    {
      break;
    }

    ++v4;
    if ((v5 & 0xFFFFFFDF) - 91 >= 0xFFFFFFE6)
    {
      goto LABEL_7;
    }
  }

  v7 = xmlCreateNewCatalog(1, xmlCatalogDefaultPrefer);
  if (v7)
  {
    *(v7 + 14) = xmlNewCatalogEntry(1, 0, 0, filename, xmlCatalogDefaultPrefer, 0);
  }

LABEL_13:
  free(v3);
  return v7;
}

void *xmlNewCatalogEntry(int a1, xmlChar *a2, const xmlChar *a3, xmlChar *a4, int a5, uint64_t a6)
{
  v12 = malloc_type_malloc(0x50uLL, 0x10300402C7060C4uLL);
  v13 = v12;
  if (!v12)
  {
    xmlCatalogErrMemory("allocating catalog entry");
    return v13;
  }

  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  *(v12 + 6) = a1;
  if (a1 == 8 || a1 == 5)
  {
    v14 = xmlCatalogNormalizePublic(a2);
    if (v14)
    {
      v15 = v14;
      if (!*v14)
      {
        v16 = 0;
        goto LABEL_10;
      }

      a2 = v14;
      goto LABEL_9;
    }
  }

  v15 = 0;
  v16 = 0;
  if (a2)
  {
LABEL_9:
    v16 = xmlStrdup(a2);
  }

LABEL_10:
  v13[4] = v16;
  if (v15)
  {
    free(v15);
  }

  if (a3)
  {
    v17 = xmlStrdup(a3);
  }

  else
  {
    v17 = 0;
  }

  v13[5] = v17;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = a3;
  }

  if (v18)
  {
    v18 = xmlStrdup(v18);
  }

  v13[6] = v18;
  *(v13 + 15) = 0;
  *(v13 + 16) = 0;
  *(v13 + 14) = a5;
  v13[9] = a6;
  return v13;
}

xmlChar *__cdecl xmlACatalogResolveSystem(xmlCatalogPtr catal, const xmlChar *sysID)
{
  result = 0;
  if (catal && sysID)
  {
    if (xmlDebugCatalogs)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Resolve sysID %s\n", sysID);
    }

    if (*catal == 1)
    {
      result = xmlCatalogListXMLResolve(*(catal + 14), 0, sysID);
      if (result == -1)
      {
        return 0;
      }
    }

    else
    {
      result = *(catal + 12);
      if (result)
      {
        result = xmlHashLookup(result, sysID);
        if (result)
        {
          if (*(result + 6) == 13)
          {
            result = *(result + 6);
            if (result)
            {

              return xmlStrdup(result);
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlCatalogListXMLResolve(uint64_t a1, xmlChar *a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a1 || (v4 = a2, !(a2 | a3)))
  {
    v5 = 0;
    goto LABEL_98;
  }

  v6 = a1;
  v7 = xmlCatalogNormalizePublic(a2);
  v8 = v7;
  if (v7)
  {
    if (*v7)
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  if (!xmlStrncmp(v4, "urn:publicid:", 13))
  {
    v39 = xmlCatalogUnWrapURN(v4);
    if (xmlDebugCatalogs)
    {
      v40 = *__xmlGenericError();
      v41 = *__xmlGenericErrorContext();
      if (!v39)
      {
        v40(v41, "Public URN ID %s expanded to NULL\n", v4);
        v5 = xmlCatalogListXMLResolve(v6, 0, a3);
        goto LABEL_96;
      }

      v40(v41, "Public URN ID expanded to %s\n", v39);
      v5 = xmlCatalogListXMLResolve(v6, v39, a3);
LABEL_95:
      free(v39);
      goto LABEL_96;
    }

    v45 = v6;
    v46 = v39;
    v47 = a3;
    goto LABEL_94;
  }

  if (!xmlStrncmp(a3, "urn:publicid:", 13))
  {
    v39 = xmlCatalogUnWrapURN(a3);
    if (xmlDebugCatalogs)
    {
      v42 = *__xmlGenericError();
      v43 = *__xmlGenericErrorContext();
      if (v39)
      {
        v44 = "System URN ID expanded to %s\n";
      }

      else
      {
        v44 = "System URN ID %s expanded to NULL\n";
      }

      v42(v43, v44);
    }

    if (!v4)
    {
      v45 = v6;
      v46 = v39;
      goto LABEL_92;
    }

    if (xmlStrEqual(v4, v39))
    {
      v45 = v6;
      v46 = v4;
LABEL_92:
      v47 = 0;
      goto LABEL_94;
    }

    v45 = v6;
    v46 = v4;
    v47 = v39;
LABEL_94:
    v5 = xmlCatalogListXMLResolve(v45, v46, v47);
    if (!v39)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  v71 = v8;
  v9 = a3 == 0;
  while (1)
  {
    if (*(v6 + 24) == 1)
    {
      v10 = *(v6 + 16);
      if (v10)
      {
        break;
      }

      xmlFetchXMLCatalogFile(v6);
      v10 = *(v6 + 16);
      if (v10)
      {
        break;
      }
    }

LABEL_73:
    v6 = *v6;
    if (!v6)
    {
LABEL_74:
      v5 = 0;
      goto LABEL_84;
    }
  }

  v11 = *(v10 + 64);
  if (v11 >= 51)
  {
    __xmlRaiseError(0, 0, 0, v10, 0, 0x14u, 1654, 2, 0, 0, *(v10 + 32), 0, 0, 0, 0, "Detected recursion in catalog %s\n", *(v10 + 32));
    goto LABEL_72;
  }

  *(v10 + 64) = v11 + 1;
  if (a3)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = v10;
    do
    {
      v17 = *(v16 + 24);
      if (v17 > 6)
      {
        if (v17 == 7)
        {
          v20 = xmlStrlen(*(v16 + 32));
          if (v20 > v12)
          {
            v21 = v20;
            if (!xmlStrncmp(a3, *(v16 + 32), v20))
            {
              v13 = v16;
              v12 = v21;
            }
          }
        }

        else if (v17 == 9)
        {
          v18 = *(v16 + 32);
          v19 = xmlStrlen(v18);
          if (!xmlStrncmp(a3, v18, v19))
          {
            ++v15;
          }
        }
      }

      else if (v17 == 3)
      {
        ++v14;
      }

      else if (v17 == 6 && xmlStrEqual(a3, *(v16 + 32)))
      {
        if (xmlDebugCatalogs)
        {
          v34 = *__xmlGenericError();
          v35 = __xmlGenericErrorContext();
          v36 = *(v16 + 32);
          v34(*v35, "Found system match %s, using %s\n", v36, *(v16 + 48));
        }

        --*(v10 + 64);
        v5 = xmlStrdup(*(v16 + 48));
        v9 = a3 == 0;
        goto LABEL_71;
      }

      v16 = *v16;
    }

    while (v16);
    if (!v13)
    {
      v9 = a3 == 0;
      if (!v15)
      {
        goto LABEL_40;
      }

      v61 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v62 = v10;
      v72 = 0u;
      while (1)
      {
        v63 = v62;
LABEL_123:
        if (*(v63 + 24) == 9)
        {
          v64 = *(v63 + 32);
          v65 = xmlStrlen(v64);
          if (!xmlStrncmp(a3, v64, v65))
          {
            if (v61 < 1)
            {
              v63 = v62;
            }

            else
            {
              v66 = &v72;
              v67 = v61;
              do
              {
                if (xmlStrEqual(*(v63 + 48), *v66))
                {
                  v63 = *v63;
                  if (v63)
                  {
                    goto LABEL_123;
                  }

                  goto LABEL_142;
                }

                ++v66;
                --v67;
              }

              while (v67);
              if (v61 > 49)
              {
                goto LABEL_134;
              }
            }

            *(&v72 + v61++) = *(v63 + 48);
LABEL_134:
            v68 = *(v63 + 16);
            if (v68 || (xmlFetchXMLCatalogFile(v63), (v68 = *(v63 + 16)) != 0))
            {
              if (xmlDebugCatalogs)
              {
                v69 = *__xmlGenericError();
                v70 = __xmlGenericErrorContext();
                v69(*v70, "Trying system delegate %s\n", *(v63 + 48));
                v68 = *(v63 + 16);
              }

              v60 = xmlCatalogListXMLResolve(v68, 0, a3);
              if (v60)
              {
                goto LABEL_143;
              }
            }
          }
        }

        v62 = *v63;
        if (!*v63)
        {
LABEL_142:
          v5 = -1;
          goto LABEL_144;
        }
      }
    }

    if (xmlDebugCatalogs)
    {
      v22 = *__xmlGenericError();
      v23 = __xmlGenericErrorContext();
      v22(*v23, "Using rewriting rule %s\n", *(v13 + 32));
    }

    v24 = xmlStrdup(*(v13 + 48));
    if (v24)
    {
      v5 = xmlStrcat(v24, (a3 + v12));
    }

    else
    {
      v5 = 0;
    }

    v9 = a3 == 0;
    --*(v10 + 64);
LABEL_71:
    if (v5)
    {
      goto LABEL_84;
    }

LABEL_72:
    if (*(*(v6 + 16) + 64) > 50)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v14 = 0;
LABEL_40:
  if (!v4)
  {
LABEL_54:
    if (v14)
    {
      v30 = v10;
      do
      {
        if (*(v30 + 24) == 3)
        {
          v31 = *(v30 + 16);
          if (v31 || (xmlFetchXMLCatalogFile(v30), (v31 = *(v30 + 16)) != 0))
          {
            v32 = xmlCatalogListXMLResolve(v31, v4, a3);
            v33 = *(v10 + 64);
            if (v32)
            {
              v5 = v32;
              goto LABEL_83;
            }

            if (v33 > 50)
            {
              goto LABEL_72;
            }
          }
        }

        v30 = *v30;
      }

      while (v30);
    }

    --*(v10 + 64);
    goto LABEL_72;
  }

  v25 = 0;
  v26 = v10;
  do
  {
    v27 = *(v26 + 24);
    if (v27 == 3)
    {
      v14 += v9;
    }

    else if (v27 == 8)
    {
      v28 = *(v26 + 32);
      v29 = xmlStrlen(v28);
      if (!xmlStrncmp(v4, v28, v29) && *(v26 + 56) == 1)
      {
        ++v25;
      }
    }

    else if (v27 == 5 && xmlStrEqual(v4, *(v26 + 32)))
    {
      if (xmlDebugCatalogs)
      {
        v37 = *__xmlGenericError();
        v38 = __xmlGenericErrorContext();
        v37(*v38, "Found public match %s\n", *(v26 + 32));
      }

      --*(v10 + 64);
      v5 = xmlStrdup(*(v26 + 48));
      goto LABEL_71;
    }

    v26 = *v26;
  }

  while (v26);
  if (!v25)
  {
    goto LABEL_54;
  }

  v50 = 0;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v51 = v10;
  v72 = 0u;
  while (1)
  {
    v52 = v51;
LABEL_101:
    if (*(v52 + 24) == 8 && *(v52 + 56) == 1)
    {
      v53 = *(v52 + 32);
      v54 = xmlStrlen(v53);
      if (!xmlStrncmp(v4, v53, v54))
      {
        if (v50 < 1)
        {
          v52 = v51;
        }

        else
        {
          v55 = &v72;
          v56 = v50;
          do
          {
            if (xmlStrEqual(*(v52 + 48), *v55))
            {
              v52 = *v52;
              if (v52)
              {
                goto LABEL_101;
              }

              goto LABEL_142;
            }

            ++v55;
            --v56;
          }

          while (v56);
          if (v50 > 49)
          {
            goto LABEL_113;
          }
        }

        *(&v72 + v50++) = *(v52 + 48);
LABEL_113:
        v57 = *(v52 + 16);
        if (v57 || (xmlFetchXMLCatalogFile(v52), (v57 = *(v52 + 16)) != 0))
        {
          if (xmlDebugCatalogs)
          {
            v58 = *__xmlGenericError();
            v59 = __xmlGenericErrorContext();
            v58(*v59, "Trying public delegate %s\n", *(v52 + 48));
            v57 = *(v52 + 16);
          }

          v60 = xmlCatalogListXMLResolve(v57, v4, 0);
          if (v60)
          {
            break;
          }
        }
      }
    }

    v51 = *v52;
    if (!*v52)
    {
      goto LABEL_142;
    }
  }

LABEL_143:
  v5 = v60;
LABEL_144:
  v33 = *(v10 + 64);
LABEL_83:
  *(v10 + 64) = v33 - 1;
LABEL_84:
  v8 = v71;
LABEL_96:
  if (v8)
  {
    free(v8);
  }

LABEL_98:
  v48 = *MEMORY[0x1E69E9840];
  return v5;
}

xmlHashTable *xmlCatalogGetSGMLSystem(xmlHashTable *result, const xmlChar *a2)
{
  if (result)
  {
    result = xmlHashLookup(result, a2);
    if (result)
    {
      if (*(result + 6) == 13)
      {
        return *(result + 6);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

xmlChar *__cdecl xmlACatalogResolvePublic(xmlCatalogPtr catal, const xmlChar *pubID)
{
  result = 0;
  if (catal && pubID)
  {
    if (xmlDebugCatalogs)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Resolve pubID %s\n", pubID);
    }

    if (*catal == 1)
    {
      result = xmlCatalogListXMLResolve(*(catal + 14), pubID, 0);
      if (result == -1)
      {
        return 0;
      }
    }

    else
    {
      result = xmlCatalogGetSGMLPublic(*(catal + 12), pubID);
      if (result)
      {

        return xmlStrdup(result);
      }
    }
  }

  return result;
}

xmlHashTable *xmlCatalogGetSGMLPublic(xmlHashTable *result, xmlChar *cur)
{
  if (result)
  {
    v3 = result;
    v4 = xmlCatalogNormalizePublic(cur);
    if (v4)
    {
      v5 = v4;
      if (*v4)
      {
        v6 = v4;
      }

      else
      {
        v6 = 0;
      }

      v7 = xmlHashLookup(v3, v6);
      if (!v7)
      {
        free(v5);
        return 0;
      }

      v8 = v7;
      v9 = *(v7 + 6);
      free(v5);
      if (v9 != 14)
      {
        return 0;
      }
    }

    else
    {
      result = xmlHashLookup(v3, cur);
      if (!result)
      {
        return result;
      }

      v8 = result;
      if (*(result + 6) != 14)
      {
        return 0;
      }
    }

    return *(v8 + 6);
  }

  return result;
}

xmlChar *__cdecl xmlACatalogResolve(xmlCatalogPtr catal, const xmlChar *pubID, const xmlChar *sysID)
{
  result = 0;
  if (catal && pubID | sysID)
  {
    if (xmlDebugCatalogs)
    {
      v7 = *__xmlGenericError();
      v8 = *__xmlGenericErrorContext();
      if (pubID && sysID)
      {
        v9 = "Resolve: pubID %s sysID %s\n";
      }

      else if (pubID)
      {
        v9 = "Resolve: pubID %s\n";
      }

      else
      {
        v9 = "Resolve: sysID %s\n";
      }

      v7(v8, v9);
    }

    if (*catal == 1)
    {
      result = xmlCatalogListXMLResolve(*(catal + 14), pubID, sysID);
      if (result == -1)
      {
        return 0;
      }
    }

    else
    {
      result = xmlCatalogSGMLResolve(catal, pubID, sysID);
      if (result)
      {

        return xmlStrdup(result);
      }
    }
  }

  return result;
}

xmlHashTable *xmlCatalogSGMLResolve(uint64_t a1, xmlChar *a2, const xmlChar *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    if (!a2 || (result = xmlCatalogGetSGMLPublic(result, a2)) == 0)
    {
      if (a3)
      {
        v6 = *(a1 + 96);

        return xmlCatalogGetSGMLSystem(v6, a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

xmlChar *__cdecl xmlACatalogResolveURI(xmlCatalogPtr catal, const xmlChar *URI)
{
  result = 0;
  if (catal && URI)
  {
    if (xmlDebugCatalogs)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Resolve URI %s\n", URI);
    }

    if (*catal == 1)
    {
      result = xmlCatalogListXMLResolveURI(*(catal + 14), URI);
      if (result == -1)
      {
        return 0;
      }
    }

    else
    {
      result = *(catal + 12);
      if (result)
      {
        result = xmlHashLookup(result, URI);
        if (result)
        {
          if (*(result + 6) == 13)
          {
            result = *(result + 6);
            if (result)
            {

              return xmlStrdup(result);
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlCatalogListXMLResolveURI(uint64_t a1, const xmlChar *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    if (xmlStrncmp(a2, "urn:publicid:", 13))
    {
      do
      {
        if (*(v3 + 24) == 1)
        {
          v4 = *(v3 + 16);
          if (v4 || (xmlFetchXMLCatalogFile(v3), (v4 = *(v3 + 16)) != 0))
          {
            if (*(v4 + 64) <= 50)
            {
              v5 = 0;
              v6 = 0;
              v7 = 0;
              v8 = 0;
              v9 = v4;
              do
              {
                v10 = *(v9 + 24);
                if (v10 > 10)
                {
                  if (v10 == 11)
                  {
                    v13 = xmlStrlen(*(v9 + 32));
                    if (v13 > v5)
                    {
                      v14 = v13;
                      if (!xmlStrncmp(a2, *(v9 + 32), v13))
                      {
                        v6 = v9;
                        v5 = v14;
                      }
                    }
                  }

                  else if (v10 == 12)
                  {
                    v11 = *(v9 + 32);
                    v12 = xmlStrlen(v11);
                    if (!xmlStrncmp(a2, v11, v12))
                    {
                      ++v8;
                    }
                  }
                }

                else if (v10 == 3)
                {
                  ++v7;
                }

                else if (v10 == 10 && xmlStrEqual(a2, *(v9 + 32)))
                {
                  if (xmlDebugCatalogs)
                  {
                    v21 = *__xmlGenericError();
                    v22 = __xmlGenericErrorContext();
                    v21(*v22, "Found URI match %s\n", *(v9 + 32));
                  }

                  v18 = xmlStrdup(*(v9 + 48));
                  goto LABEL_40;
                }

                v9 = *v9;
              }

              while (v9);
              if (!v6)
              {
                if (v8)
                {
                  v29 = 0;
                  memset(v40, 0, sizeof(v40));
                  while (1)
                  {
                    v30 = v4;
LABEL_52:
                    v31 = *(v30 + 24);
                    if (v31 == 12 || v31 == 9)
                    {
                      v33 = *(v30 + 32);
                      v34 = xmlStrlen(v33);
                      if (!xmlStrncmp(a2, v33, v34))
                      {
                        if (v29 < 1)
                        {
                          v30 = v4;
                        }

                        else
                        {
                          v35 = v40;
                          v36 = v29;
                          do
                          {
                            if (xmlStrEqual(*(v30 + 48), *v35))
                            {
                              v30 = *v30;
                              if (v30)
                              {
                                goto LABEL_52;
                              }

                              goto LABEL_76;
                            }

                            ++v35;
                            --v36;
                          }

                          while (v36);
                          if (v29 > 49)
                          {
                            goto LABEL_67;
                          }
                        }

                        *(v40 + v29++) = *(v30 + 48);
LABEL_67:
                        v37 = *(v30 + 16);
                        if (v37 || (xmlFetchXMLCatalogFile(v30), (v37 = *(v30 + 16)) != 0))
                        {
                          if (xmlDebugCatalogs)
                          {
                            v38 = *__xmlGenericError();
                            v39 = __xmlGenericErrorContext();
                            v38(*v39, "Trying URI delegate %s\n", *(v30 + 48));
                            v37 = *(v30 + 16);
                          }

                          v20 = xmlCatalogListXMLResolveURI(v37, a2);
                          if (v20)
                          {
                            break;
                          }
                        }
                      }
                    }

                    v4 = *v30;
                    if (!*v30)
                    {
LABEL_76:
                      v23 = -1;
                      goto LABEL_43;
                    }
                  }
                }

                else
                {
                  if (!v7)
                  {
                    goto LABEL_41;
                  }

                  while (1)
                  {
                    if (*(v4 + 24) == 3)
                    {
                      v19 = *(v4 + 16);
                      if (v19 || (xmlFetchXMLCatalogFile(v4), (v19 = *(v4 + 16)) != 0))
                      {
                        v20 = xmlCatalogListXMLResolveURI(v19, a2);
                        if (v20)
                        {
                          break;
                        }
                      }
                    }

                    v4 = *v4;
                    if (!v4)
                    {
                      goto LABEL_41;
                    }
                  }
                }

                v23 = v20;
                goto LABEL_43;
              }

              if (xmlDebugCatalogs)
              {
                v15 = *__xmlGenericError();
                v16 = __xmlGenericErrorContext();
                v15(*v16, "Using rewriting rule %s\n", *(v6 + 32));
              }

              v17 = xmlStrdup(*(v6 + 48));
              if (!v17)
              {
                goto LABEL_41;
              }

              v18 = xmlStrcat(v17, &a2[v5]);
LABEL_40:
              v23 = v18;
              if (v18)
              {
                goto LABEL_43;
              }
            }

            else
            {
              __xmlRaiseError(0, 0, 0, v4, 0, 0x14u, 1654, 2, 0, 0, *(v4 + 32), 0, 0, 0, 0, "Detected recursion in catalog %s\n", *(v4 + 32));
            }
          }
        }

LABEL_41:
        v3 = *v3;
      }

      while (v3);
      goto LABEL_42;
    }

    v26 = xmlCatalogUnWrapURN(a2);
    if (!xmlDebugCatalogs)
    {
      v23 = xmlCatalogListXMLResolve(v3, v26, 0);
      if (!v26)
      {
        goto LABEL_43;
      }

LABEL_48:
      free(v26);
      goto LABEL_43;
    }

    v27 = *__xmlGenericError();
    v28 = *__xmlGenericErrorContext();
    if (v26)
    {
      v27(v28, "URN ID expanded to %s\n", v26);
      v23 = xmlCatalogListXMLResolve(v3, v26, 0);
      goto LABEL_48;
    }

    v27(v28, "URN ID %s expanded to NULL\n", a2);
  }

LABEL_42:
  v23 = 0;
LABEL_43:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void xmlACatalogDump(xmlCatalogPtr catal, FILE *out)
{
  if (catal && out)
  {
    if (*catal == 1)
    {
      v3 = *(catal + 14);
      v4 = xmlNewDoc(0);
      if (v4)
      {
        v5 = v4;
        v6 = xmlNewDtd(v4, "catalog", "-//OASIS//DTD Entity Resolution XML Catalog V1.0//EN", "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd");
        xmlAddChild(v5, v6);
        v7 = xmlNewNs(0, "urn:oasis:names:tc:entity:xmlns:xml:catalog", 0);
        if (v7)
        {
          v8 = v7;
          v9 = xmlNewDocNode(v5, v7, "catalog", 0);
          if (v9)
          {
            v10 = v9;
            v9->nsDef = v8;
            xmlAddChild(v5, v9);
            xmlDumpXMLCatalogNode(v3, v10, v5, v8, 0);
            File = xmlOutputBufferCreateFile(out, 0);
            if (File)
            {
              xmlSaveFormatFileTo(File, v5, 0, 1);
            }
          }

          else
          {
            xmlFreeNs(v8);
          }
        }

        xmlFreeDoc(v5);
      }
    }

    else
    {
      v12 = *(catal + 12);

      xmlHashScan(v12, xmlCatalogDumpEntry, out);
    }
  }
}

uint64_t xmlCatalogDumpEntry(uint64_t result, FILE *__stream)
{
  if (!result || !__stream)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 24);
  if (v4 > 18)
  {
    if (v4 <= 21)
    {
      if (v4 == 19)
      {
        v5 = "NOTATION ";
        goto LABEL_31;
      }

      if (v4 == 20)
      {
        v5 = "DELEGATE ";
        goto LABEL_31;
      }

      v5 = "BASE ";
      v6 = 5;
LABEL_32:
      fwrite(v5, v6, 1uLL, __stream);
      goto LABEL_33;
    }

    if (v4 != 22)
    {
      if (v4 == 23)
      {
        v5 = "DOCUMENT ";
      }

      else
      {
        if (v4 != 24)
        {
          return result;
        }

        v5 = "SGMLDECL ";
      }

      goto LABEL_31;
    }

    v5 = "CATALOG ";
LABEL_29:
    v6 = 8;
    goto LABEL_32;
  }

  if (v4 <= 15)
  {
    switch(v4)
    {
      case 13:
        v5 = "SYSTEM ";
        break;
      case 14:
        v5 = "PUBLIC ";
        break;
      case 15:
        v5 = "ENTITY ";
        break;
      default:
        return result;
    }

    v6 = 7;
    goto LABEL_32;
  }

  if (v4 != 16)
  {
    if (v4 != 17)
    {
      v5 = "LINKTYPE ";
LABEL_31:
      v6 = 9;
      goto LABEL_32;
    }

    v5 = "DOCTYPE ";
    goto LABEL_29;
  }

  fprintf(__stream, "ENTITY %%");
LABEL_33:
  v7 = *(v3 + 24);
  if (v7 <= 0x18)
  {
    v8 = 1 << v7;
    if ((v8 & 0x1F06000) != 0)
    {
      fprintf(__stream, "%s", *(v3 + 32));
    }

    else if ((v8 & 0xF8000) != 0)
    {
      fputs(*(v3 + 32), __stream);
    }
  }

  if ((*(v3 + 24) - 13) <= 7)
  {
    fprintf(__stream, " %s", *(v3 + 40));
  }

  return fputc(10, __stream);
}

int xmlACatalogAdd(xmlCatalogPtr catal, const xmlChar *type, const xmlChar *orig, const xmlChar *replace)
{
  if (!catal)
  {
    goto LABEL_80;
  }

  if (*catal != 1)
  {
    if (xmlStrEqual(type, "SYSTEM"))
    {
      v11 = 13;
    }

    else if (xmlStrEqual(type, "PUBLIC"))
    {
      v11 = 14;
    }

    else if (xmlStrEqual(type, "DELEGATE"))
    {
      v11 = 20;
    }

    else if (xmlStrEqual(type, "ENTITY"))
    {
      v11 = 15;
    }

    else if (xmlStrEqual(type, "DOCTYPE"))
    {
      v11 = 17;
    }

    else if (xmlStrEqual(type, "LINKTYPE"))
    {
      v11 = 18;
    }

    else if (xmlStrEqual(type, "NOTATION"))
    {
      v11 = 19;
    }

    else if (xmlStrEqual(type, "SGMLDECL"))
    {
      v11 = 24;
    }

    else if (xmlStrEqual(type, "DOCUMENT"))
    {
      v11 = 23;
    }

    else if (xmlStrEqual(type, "CATALOG"))
    {
      v11 = 22;
    }

    else
    {
      if (!xmlStrEqual(type, "BASE"))
      {
LABEL_80:
        LODWORD(v15) = -1;
        return v15;
      }

      v11 = 21;
    }

    v13 = xmlNewCatalogEntry(v11, orig, replace, 0, 0, 0);
    v14 = *(catal + 12);
    if (!v14)
    {
      v14 = xmlHashCreate(10);
      *(catal + 12) = v14;
    }

    LODWORD(v15) = xmlHashAddEntry(v14, orig, v13);
    return v15;
  }

  v8 = *(catal + 14);
  if (!v8 || (*(v8 + 24) - 1) > 1)
  {
    goto LABEL_80;
  }

  v9 = (v8 + 16);
  if (*(v8 + 16))
  {
    v10 = 0;
  }

  else
  {
    xmlFetchXMLCatalogFile(v8);
    v10 = *(v8 + 16) == 0;
  }

  if (xmlStrEqual(type, "system"))
  {
    v12 = 6;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "public"))
  {
    v12 = 5;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "rewriteSystem"))
  {
    v12 = 7;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "delegatePublic"))
  {
    v12 = 8;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "delegateSystem"))
  {
    v12 = 9;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "uri"))
  {
    v12 = 10;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "rewriteURI"))
  {
    v12 = 11;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "delegateURI"))
  {
    v12 = 12;
    goto LABEL_55;
  }

  if (xmlStrEqual(type, "nextCatalog"))
  {
    v12 = 3;
    goto LABEL_55;
  }

  if (!xmlStrEqual(type, "catalog"))
  {
    if (xmlDebugCatalogs)
    {
      v28 = *__xmlGenericError();
      v29 = __xmlGenericErrorContext();
      v28(*v29, "Failed to add unknown element %s to catalog\n", type);
    }

    goto LABEL_80;
  }

  v12 = 1;
LABEL_55:
  v16 = *v9;
  if (*v9)
  {
    while (1)
    {
      v17 = v16;
      if (orig)
      {
        if (*(v16 + 24) == v12 && xmlStrEqual(orig, *(v16 + 32)))
        {
          break;
        }
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_62;
      }
    }

    if (xmlDebugCatalogs)
    {
      v23 = *__xmlGenericError();
      v24 = __xmlGenericErrorContext();
      v23(*v24, "Updating element %s to catalog\n", type);
    }

    v25 = v17[5];
    if (v25)
    {
      free(v25);
    }

    v26 = v17[6];
    if (v26)
    {
      free(v26);
    }

    v17[5] = xmlStrdup(replace);
    v27 = xmlStrdup(replace);
    LODWORD(v15) = 0;
    v17[6] = v27;
  }

  else
  {
    v17 = 0;
LABEL_62:
    if (xmlDebugCatalogs)
    {
      v18 = *__xmlGenericError();
      v19 = __xmlGenericErrorContext();
      v18(*v19, "Adding element %s to catalog\n", type);
    }

    v20 = xmlNewCatalogEntry(v12, orig, replace, 0, *(v8 + 56), 0);
    if (v17)
    {
      v21 = v17;
    }

    else
    {
      v21 = (v8 + 16);
    }

    *v21 = v20;
    if (v10)
    {
      *(v8 + 24) = 1;
      v15 = xmlHashLookup(xmlCatalogXMLFiles, *(v8 + 48));
      if (v15)
      {
        v22 = v15;
        LODWORD(v15) = 0;
        v22[2] = *v9;
      }
    }

    else
    {
      LODWORD(v15) = 0;
    }
  }

  return v15;
}

int xmlACatalogRemove(xmlCatalogPtr catal, const xmlChar *value)
{
  result = -1;
  if (catal && value)
  {
    if (*catal == 1)
    {
      v5 = *(catal + 14);
      if (v5 && (*(v5 + 24) - 1) <= 1)
      {
        v6 = *(v5 + 16);
        if (v6 || (xmlFetchXMLCatalogFile(v5), (v6 = *(v5 + 16)) != 0))
        {
          do
          {
            v7 = v6[4];
            if (v7 && xmlStrEqual(value, v7) || xmlStrEqual(value, v6[5]))
            {
              if (xmlDebugCatalogs)
              {
                v8 = v6[4];
                v9 = *__xmlGenericError();
                v10 = *__xmlGenericErrorContext();
                if (v8)
                {
                  v11 = 4;
                }

                else
                {
                  v11 = 5;
                }

                v9(v10, "Removing element %s from catalog\n", v6[v11]);
              }

              *(v6 + 6) = -1;
            }

            v6 = *v6;
          }

          while (v6);
        }

        return 0;
      }
    }

    else
    {
      result = xmlHashRemoveEntry(*(catal + 12), value, xmlFreeCatalogEntry);
      if (result <= 1)
      {
        return 1;
      }
    }
  }

  return result;
}

xmlCatalogPtr xmlNewCatalog(int sgml)
{
  v2 = xmlCatalogDefaultPrefer;
  if (sgml)
  {
    NewCatalog = xmlCreateNewCatalog(2, xmlCatalogDefaultPrefer);
    v4 = NewCatalog;
    if (NewCatalog)
    {
      if (!*(NewCatalog + 12))
      {
        *(NewCatalog + 12) = xmlHashCreate(10);
      }
    }

    return v4;
  }

  else
  {

    return xmlCreateNewCatalog(1, v2);
  }
}

int xmlCatalogIsEmpty(xmlCatalogPtr catal)
{
  if (!catal)
  {
    return -1;
  }

  if (*catal == 1)
  {
    v1 = *(catal + 14);
    if (v1)
    {
      if ((*(v1 + 24) - 1) <= 1)
      {
        return *(v1 + 16) == 0;
      }

      return -1;
    }

    return 1;
  }

  v3 = *(catal + 12);
  if (!v3)
  {
    return 1;
  }

  v4 = xmlHashSize(v3);
  if (v4)
  {
    return v4 >> 31;
  }

  else
  {
    return 1;
  }
}

void xmlInitializeCatalog(void)
{
  v0 = xmlCatalogMutex;
  if (!xmlCatalogMutex)
  {
    pthread_once(&once_control, _xmlInitializeCatalogData);
    v0 = xmlCatalogMutex;
  }

  xmlRMutexLock(v0);
  if (getenv("XML_DEBUG_CATALOG"))
  {
    xmlDebugCatalogs = 1;
  }

  if (!xmlDefaultCatalog)
  {
    v1 = getenv("XML_CATALOG_FILES");
    NewCatalog = xmlCreateNewCatalog(1, xmlCatalogDefaultPrefer);
    if (NewCatalog)
    {
      v3 = NewCatalog;
      if (!v1)
      {
        v1 = "file:///etc/xml/catalog";
      }

      v4 = *v1;
      if (*v1)
      {
        v5 = NewCatalog + 112;
        while (v4 <= 0x20)
        {
          if (((1 << v4) & 0x100002600) != 0)
          {
            v6 = *++v1;
            v4 = v6;
          }

          else
          {
            if (v4)
            {
              break;
            }

LABEL_23:
            v4 = *v1;
            if (!*v1)
            {
              goto LABEL_24;
            }
          }
        }

        v7 = 0;
        while (v4 > 0x20 || ((1 << v4) & 0x100002601) == 0)
        {
          v4 = v1[++v7];
        }

        v8 = xmlStrndup(v1, v7);
        v1 += v7;
        if (v8)
        {
          v9 = v8;
          v10 = xmlNewCatalogEntry(1, 0, 0, v8, xmlCatalogDefaultPrefer, 0);
          *v5 = v10;
          if (v10)
          {
            v5 = v10;
          }

          free(v9);
        }

        goto LABEL_23;
      }

LABEL_24:
      xmlDefaultCatalog = v3;
    }
  }

  v11 = xmlCatalogMutex;

  xmlRMutexUnlock(v11);
}

int xmlLoadCatalog(const char *filename)
{
  v2 = xmlCatalogMutex;
  if (!xmlCatalogMutex)
  {
    pthread_once(&once_control, _xmlInitializeCatalogData);
    v2 = xmlCatalogMutex;
  }

  xmlRMutexLock(v2);
  if (xmlDefaultCatalog)
  {
    v3 = xmlExpandCatalog(xmlDefaultCatalog, filename);
  }

  else
  {
    ACatalog = xmlLoadACatalog(filename);
    if (ACatalog)
    {
      v3 = 0;
      xmlDefaultCatalog = ACatalog;
    }

    else
    {
      v3 = -1;
    }
  }

  xmlRMutexUnlock(xmlCatalogMutex);
  return v3;
}

uint64_t xmlExpandCatalog(uint64_t a1, char *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 == 2)
  {
    FileContent = xmlLoadFileContent(a2);
    if (FileContent)
    {
      v5 = FileContent;
      v6 = xmlParseSGMLCatalog(a1, FileContent, a2);
      free(v5);
      return (v6 >> 31);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = xmlNewCatalogEntry(1, 0, 0, a2, xmlCatalogDefaultPrefer, 0);
    v9 = *(a1 + 112);
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
      result = 0;
      *v10 = v8;
    }

    else
    {
      result = 0;
      *(a1 + 112) = v8;
    }
  }

  return result;
}

void xmlLoadCatalogs(const char *paths)
{
  if (paths)
  {
    v1 = paths;
    v2 = *paths;
    if (*paths)
    {
      while (v2 <= 0x20)
      {
        if (((1 << v2) & 0x100002600) != 0)
        {
          v3 = *++v1;
          v2 = v3;
        }

        else
        {
          if (v2)
          {
            break;
          }

LABEL_13:
          --v1;
          do
          {
            v7 = *++v1;
            v2 = v7;
          }

          while (v7 == 58);
          if (!v2)
          {
            return;
          }
        }
      }

      v4 = 0;
      while (v2 > 0x3A || ((1 << v2) & 0x400000100002601) == 0)
      {
        v2 = v1[++v4];
      }

      v5 = xmlStrndup(v1, v4);
      v1 += v4;
      if (v5)
      {
        v6 = v5;
        xmlLoadCatalog(v5);
        free(v6);
      }

      goto LABEL_13;
    }
  }
}

void xmlCatalogCleanup(void)
{
  if (xmlCatalogMutex)
  {
    xmlRMutexLock(xmlCatalogMutex);
    if (xmlDebugCatalogs)
    {
      v0 = *__xmlGenericError();
      v1 = __xmlGenericErrorContext();
      v0(*v1, "Catalogs cleanup\n");
    }

    if (xmlCatalogXMLFiles)
    {
      xmlHashFree(xmlCatalogXMLFiles, xmlFreeCatalogHashEntryList);
    }

    xmlCatalogXMLFiles = 0;
    if (xmlDefaultCatalog)
    {
      xmlFreeCatalog(xmlDefaultCatalog);
    }

    xmlDefaultCatalog = 0;
    xmlDebugCatalogs = 0;
    v2 = xmlCatalogMutex;

    xmlRMutexUnlock(v2);
  }
}

void xmlFreeCatalogHashEntryList(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = *v2;
        *(v2 + 15) = 0;
        v2[2] = 0;
        xmlFreeCatalogEntry(v2);
        v2 = v3;
      }

      while (v3);
    }

    *(a1 + 15) = 0;

    xmlFreeCatalogEntry(a1);
  }
}

xmlChar *__cdecl xmlCatalogResolveSystem(const xmlChar *sysID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  v2 = xmlDefaultCatalog;

  return xmlACatalogResolveSystem(v2, sysID);
}

xmlChar *__cdecl xmlCatalogResolvePublic(const xmlChar *pubID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  v2 = xmlDefaultCatalog;

  return xmlACatalogResolvePublic(v2, pubID);
}

xmlChar *__cdecl xmlCatalogResolve(const xmlChar *pubID, const xmlChar *sysID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  v4 = xmlDefaultCatalog;

  return xmlACatalogResolve(v4, pubID, sysID);
}

xmlChar *__cdecl xmlCatalogResolveURI(const xmlChar *URI)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  v2 = xmlDefaultCatalog;

  return xmlACatalogResolveURI(v2, URI);
}

void xmlCatalogDump(FILE *out)
{
  if (out)
  {
    if (!xmlCatalogMutex)
    {
      xmlInitializeCatalog();
    }

    v2 = xmlDefaultCatalog;

    xmlACatalogDump(v2, out);
  }
}

int xmlCatalogAdd(const xmlChar *type, const xmlChar *orig, const xmlChar *replace)
{
  v6 = xmlCatalogMutex;
  if (!xmlCatalogMutex)
  {
    pthread_once(&once_control, _xmlInitializeCatalogData);
    v6 = xmlCatalogMutex;
  }

  xmlRMutexLock(v6);
  v7 = xmlDefaultCatalog;
  if (xmlDefaultCatalog)
  {
    goto LABEL_4;
  }

  if (!xmlStrEqual(type, "catalog"))
  {
    v7 = xmlDefaultCatalog;
LABEL_4:
    v8 = xmlACatalogAdd(v7, type, orig, replace);
    goto LABEL_5;
  }

  xmlDefaultCatalog = xmlCreateNewCatalog(1, xmlCatalogDefaultPrefer);
  if (xmlDefaultCatalog)
  {
    v10 = xmlNewCatalogEntry(1, 0, orig, 0, xmlCatalogDefaultPrefer, 0);
    v8 = 0;
    *(xmlDefaultCatalog + 112) = v10;
  }

  else
  {
    v8 = 0;
  }

LABEL_5:
  xmlRMutexUnlock(xmlCatalogMutex);
  return v8;
}

int xmlCatalogRemove(const xmlChar *value)
{
  v2 = xmlCatalogMutex;
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
    v2 = xmlCatalogMutex;
  }

  xmlRMutexLock(v2);
  v3 = xmlACatalogRemove(xmlDefaultCatalog, value);
  xmlRMutexUnlock(xmlCatalogMutex);
  return v3;
}

int xmlCatalogConvert(void)
{
  v0 = xmlCatalogMutex;
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
    v0 = xmlCatalogMutex;
  }

  xmlRMutexLock(v0);
  v1 = xmlConvertSGMLCatalog(xmlDefaultCatalog);
  xmlRMutexUnlock(xmlCatalogMutex);
  return v1;
}

void xmlCatalogSetDefaults(xmlCatalogAllow allow)
{
  if (xmlDebugCatalogs)
  {
    v2 = allow > XML_CATA_ALLOW_ALL;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = (&off_1E82BE9C8)[allow];
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, v3);
  }

  xmlCatalogDefaultAllow = allow;
}

xmlCatalogPrefer xmlCatalogSetDefaultPrefer(xmlCatalogPrefer prefer)
{
  v1 = xmlCatalogDefaultPrefer;
  if (prefer)
  {
    if (!xmlDebugCatalogs)
    {
LABEL_8:
      xmlCatalogDefaultPrefer = prefer;
      return v1;
    }

    if (prefer == XML_CATA_PREFER_PUBLIC)
    {
      v3 = "Setting catalog preference to PUBLIC\n";
      goto LABEL_7;
    }

    if (prefer == XML_CATA_PREFER_SYSTEM)
    {
      v3 = "Setting catalog preference to SYSTEM\n";
LABEL_7:
      v4 = *__xmlGenericError();
      v5 = __xmlGenericErrorContext();
      v4(*v5, v3);
      goto LABEL_8;
    }
  }

  return v1;
}

int xmlCatalogSetDebug(int level)
{
  v1 = xmlDebugCatalogs;
  xmlDebugCatalogs = level & ~(level >> 31);
  return v1;
}

void xmlCatalogFreeLocal(void *catalogs)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  if (catalogs)
  {
    do
    {
      v2 = *catalogs;
      xmlFreeCatalogEntry(catalogs);
      catalogs = v2;
    }

    while (v2);
  }
}

void *__cdecl xmlCatalogAddLocal(void *catalogs, const xmlChar *URL)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  if (URL)
  {
    if (xmlDebugCatalogs)
    {
      v4 = *__xmlGenericError();
      v5 = __xmlGenericErrorContext();
      v4(*v5, "Adding document catalog %s\n", URL);
    }

    v6 = xmlNewCatalogEntry(1, 0, URL, 0, xmlCatalogDefaultPrefer, 0);
    if (v6)
    {
      if (catalogs)
      {
        v7 = catalogs;
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
        *v8 = v6;
      }

      else
      {
        return v6;
      }
    }
  }

  return catalogs;
}

xmlChar *__cdecl xmlCatalogLocalResolve(void *catalogs, const xmlChar *pubID, const xmlChar *sysID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  if (!(pubID | sysID))
  {
    return 0;
  }

  if (xmlDebugCatalogs)
  {
    v6 = *__xmlGenericError();
    v7 = *__xmlGenericErrorContext();
    if (pubID && sysID)
    {
      v8 = "Local Resolve: pubID %s sysID %s\n";
    }

    else if (pubID)
    {
      v8 = "Local Resolve: pubID %s\n";
    }

    else
    {
      v8 = "Local Resolve: sysID %s\n";
    }

    v6(v7, v8);
  }

  if (!catalogs)
  {
    return 0;
  }

  result = xmlCatalogListXMLResolve(catalogs, pubID, sysID);
  if ((result + 1) <= 1)
  {
    return 0;
  }

  return result;
}

xmlChar *__cdecl xmlCatalogLocalResolveURI(void *catalogs, const xmlChar *URI)
{
  if (xmlCatalogMutex)
  {
    if (!URI)
    {
      return 0;
    }
  }

  else
  {
    xmlInitializeCatalog();
    if (!URI)
    {
      return 0;
    }
  }

  if (xmlDebugCatalogs)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Resolve URI %s\n", URI);
  }

  if (!catalogs)
  {
    return 0;
  }

  result = xmlCatalogListXMLResolveURI(catalogs, URI);
  if ((result + 1) <= 1)
  {
    return 0;
  }

  return result;
}

const xmlChar *__cdecl xmlCatalogGetSystem(const xmlChar *sysID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  if (!xmlCatalogGetSystem_msg)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Use of deprecated xmlCatalogGetSystem() call\n");
    ++xmlCatalogGetSystem_msg;
  }

  if (sysID)
  {
    if (!xmlDefaultCatalog)
    {
      return 0;
    }

    v4 = xmlCatalogListXMLResolve(*(xmlDefaultCatalog + 112), 0, sysID);
    if ((v4 + 1) >= 2)
    {
      sysID = xmlCatalogGetSystem_result;
      snprintf(xmlCatalogGetSystem_result, 0x3E7uLL, "%s", v4);
      byte_1EC25EEC7 = 0;
      return sysID;
    }

    if (xmlDefaultCatalog && (v5 = *(xmlDefaultCatalog + 96)) != 0 && (v6 = xmlHashLookup(v5, sysID)) != 0 && *(v6 + 6) == 13)
    {
      return *(v6 + 6);
    }

    else
    {
      return 0;
    }
  }

  return sysID;
}

const xmlChar *__cdecl xmlCatalogGetPublic(const xmlChar *pubID)
{
  if (!xmlCatalogMutex)
  {
    xmlInitializeCatalog();
  }

  if (xmlCatalogGetPublic_msg)
  {
    if (!pubID)
    {
      return pubID;
    }
  }

  else
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Use of deprecated xmlCatalogGetPublic() call\n");
    ++xmlCatalogGetPublic_msg;
    if (!pubID)
    {
      return pubID;
    }
  }

  if (!xmlDefaultCatalog)
  {
    return 0;
  }

  v4 = xmlCatalogListXMLResolve(*(xmlDefaultCatalog + 112), pubID, 0);
  if ((v4 + 1) >= 2)
  {
    pubID = xmlCatalogGetPublic_result;
    snprintf(xmlCatalogGetPublic_result, 0x3E7uLL, "%s", v4);
    byte_1EC25F2B3 = 0;
    return pubID;
  }

  if (!xmlDefaultCatalog)
  {
    return 0;
  }

  v5 = *(xmlDefaultCatalog + 96);

  return xmlCatalogGetSGMLPublic(v5, pubID);
}

unsigned __int8 *xmlParseSGMLCatalogName(unsigned __int8 *a1, xmlChar **a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  v3 = *a1;
  v5 = (*a1 + 40) >= 0x1Fu && (*a1 + 64) >= 0x17u && ((*a1 & 0xDF) - 65) >= 0x1Au;
  if (!v5 || (v6 = *a1, (v6 - 248) < 8) || v6 == 95 || v6 == 58)
  {
    v7 = 0;
    memset(v11, 0, 105);
    while (1)
    {
      v8 = (v3 + 64) >= 0x17u && ((v3 & 0xDF) - 65) >= 0x1Au;
      if (v8 && (v3 - 48) >= 0xAu && v3 <= 0xF7u && (v3 + 40) >= 0x1Fu && (v3 - 45 > 0x32 || ((1 << (v3 - 45)) & 0x4000000002003) == 0))
      {
        break;
      }

      *(v11 + v7) = v3;
      v3 = a1[++v7];
      if (v7 == 100)
      {
        goto LABEL_22;
      }
    }

    *a2 = xmlStrndup(v11, v7);
    result = &a1[v7];
  }

  else
  {
LABEL_22:
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *xmlParseSGMLCatalogPubid(unsigned __int8 *a1, void *a2)
{
  *a2 = 0;
  v3 = *a1;
  if (v3 == 34)
  {
    v4 = a1 + 1;
  }

  else
  {
    v4 = a1;
  }

  if (v3 == 34)
  {
    v5 = 34;
  }

  else
  {
    v5 = 32;
  }

  if (v3 == 39)
  {
    v6 = a1 + 1;
  }

  else
  {
    v6 = v4;
  }

  v7 = v3 == 39 || v3 == 34;
  v8 = v3 != 39 && v3 != 34;
  if (v3 == 39)
  {
    v9 = 39;
  }

  else
  {
    v9 = v5;
  }

  v10 = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (!v10)
  {
    xmlCatalogErrMemory("allocating public ID");
    return 0;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v6;
  v14 = v9 == v13 && v7;
  if (xmlIsPubidChar_tab[*v6])
  {
    v15 = 1;
  }

  else
  {
    v15 = v13 == 63;
  }

  if (v15 && !v14)
  {
    v16 = 0;
    v17 = 50;
    while (1)
    {
      if (v8 && v13 <= 0x20 && ((1 << v13) & 0x100002600) != 0)
      {
        v11[v16] = 0;
        v6 += v16;
        goto LABEL_57;
      }

      if (v17 <= v16 + 1)
      {
        if (v17 < 1)
        {
          v17 = 1;
        }

        else
        {
          if (v17 > 0x3B9AC9FF)
          {
            goto LABEL_62;
          }

          if (1000000000 - ((v17 + 1) >> 1) >= v17)
          {
            v17 += (v17 + 1) >> 1;
          }

          else
          {
            v17 = 1000000000;
          }
        }

        v18 = malloc_type_realloc(v11, v17, 0x49647196uLL);
        if (!v18)
        {
LABEL_62:
          xmlCatalogErrMemory("allocating public ID");
          goto LABEL_63;
        }

        LOBYTE(v13) = v6[v16];
        v11 = v18;
      }

      v11[v16] = v13;
      v13 = v6[v16 + 1];
      v19 = v9 == v13 && v7;
      if (xmlIsPubidChar_tab[v6[v16 + 1]])
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == 63;
      }

      ++v16;
      if (!v20 || v19)
      {
        v12 = v16;
        v6 += v16;
        break;
      }
    }
  }

  v11[v12] = 0;
  if (!v8)
  {
    if (v9 != *v6)
    {
      goto LABEL_63;
    }

    ++v6;
    goto LABEL_61;
  }

LABEL_57:
  v21 = *v6;
  v22 = v21 > 0x20;
  v23 = (1 << v21) & 0x100002600;
  if (v22 || v23 == 0)
  {
LABEL_63:
    free(v11);
    return 0;
  }

LABEL_61:
  *a2 = v11;
  return v6;
}

xmlChar *xmlCatalogNormalizePublic(xmlChar *cur)
{
  if (cur)
  {
    v1 = cur;
    v2 = *cur;
    if (*cur)
    {
      v3 = cur + 1;
      v4 = 1;
      do
      {
        v5 = 1 << v2;
        v6 = v2 == 32 && v4 == 0;
        if (v2 == 32 && v4 == 0)
        {
          v4 = 1;
        }

        v7 = (v5 & 0x100002600) == 0;
        v8 = (v5 & 0x100002600) == 0 || v6;
        if (v7)
        {
          v4 = 0;
        }

        if (v2 > 0x20)
        {
          v8 = 1;
          v4 = 0;
        }

        if (!v8)
        {
          break;
        }

        v9 = *v3++;
        v2 = v9;
      }

      while (v9);
      if (v8 && !v4)
      {
        return 0;
      }
    }

    cur = xmlStrdup(cur);
    v10 = 0;
    v11 = cur;
    while (1)
    {
      v12 = *v1;
      if (v12 <= 0x20)
      {
        if (((1 << v12) & 0x100002600) != 0)
        {
          if (v11 != cur)
          {
            v10 = 1;
          }

          goto LABEL_24;
        }

        if (!*v1)
        {
          *v11 = 0;
          return cur;
        }
      }

      if (v10)
      {
        *v11++ = 32;
        LOBYTE(v12) = *v1;
      }

      v10 = 0;
      *v11++ = v12;
LABEL_24:
      ++v1;
    }
  }

  return cur;
}

xmlChar *xmlCatalogUnWrapURN(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (xmlStrncmp(a1, "urn:publicid:", 13))
  {
    result = 0;
    goto LABEL_42;
  }

  bzero(cur, 0x7D0uLL);
  v5 = *(a1 + 13);
  v4 = (a1 + 13);
  v3 = v5;
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if (v3 > 57)
      {
        if (v3 == 58)
        {
          v11 = &cur[v6];
          cur[v6] = 47;
          v6 += 2;
          v11[1] = 47;
        }

        else
        {
          if (v3 != 59)
          {
            goto LABEL_12;
          }

          v7 = &cur[v6];
          cur[v6] = 58;
          v6 += 2;
          v7[1] = 58;
        }

LABEL_22:
        ++v4;
        goto LABEL_23;
      }

      if (v3 != 37)
      {
        if (v3 == 43)
        {
          cur[v6] = 32;
          goto LABEL_13;
        }

LABEL_12:
        cur[v6] = v3;
LABEL_13:
        ++v6;
        goto LABEL_22;
      }

      v8 = v4[1];
      if (v8 == 51)
      {
        v12 = v4[2];
        switch(v12)
        {
          case 'A':
            v10 = 58;
            break;
          case 'B':
            v10 = 59;
            break;
          case 'F':
            v10 = 63;
            break;
          default:
            goto LABEL_33;
        }
      }

      else
      {
        if (v8 != 50)
        {
          goto LABEL_33;
        }

        v9 = v4[2];
        if (v9 <= 0x36)
        {
          if (v9 == 51)
          {
            v10 = 35;
          }

          else
          {
            if (v9 != 53)
            {
LABEL_33:
              cur[v6++] = 37;
              ++v4;
              goto LABEL_23;
            }

            v10 = 37;
          }
        }

        else
        {
          switch(v9)
          {
            case '7':
              v10 = 39;
              break;
            case 'B':
              v10 = 43;
              break;
            case 'F':
              v10 = 47;
              break;
            default:
              goto LABEL_33;
          }
        }
      }

      cur[v6++] = v10;
      v4 += 3;
LABEL_23:
      v3 = *v4;
      if (!*v4 || v6 > 0x7CC)
      {
        goto LABEL_41;
      }
    }
  }

  v6 = 0;
LABEL_41:
  cur[v6] = 0;
  result = xmlStrdup(cur);
LABEL_42:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlFetchXMLCatalogFile(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    return;
  }

  xmlRMutexLock(xmlCatalogMutex);
  if (!*(a1 + 16))
  {
    if (xmlCatalogXMLFiles)
    {
      v2 = xmlHashLookup(xmlCatalogXMLFiles, *(a1 + 48));
      if (v2)
      {
        v3 = v2;
        if (xmlDebugCatalogs)
        {
          v4 = *__xmlGenericError();
          v5 = __xmlGenericErrorContext();
          v4(*v5, "Found %s in file hash\n", *(a1 + 48));
        }

        if (*(a1 + 24) == 1)
        {
          v3 = v3[2];
        }

        *(a1 + 16) = v3;
        *(a1 + 60) = 0;
        goto LABEL_31;
      }

      if (xmlDebugCatalogs)
      {
        v6 = *__xmlGenericError();
        v7 = __xmlGenericErrorContext();
        v6(*v7, "%s not found in file hash\n", *(a1 + 48));
      }
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(a1 + 56);
      v10 = xmlParseCatalogFile(*(a1 + 48));
      if (v10)
      {
        v11 = v10;
        if (xmlDebugCatalogs)
        {
          v12 = *__xmlGenericError();
          v13 = *__xmlGenericErrorContext();
          ThreadId = xmlGetThreadId();
          v12(v13, "%d Parsing catalog %s\n", ThreadId, v8);
        }

        RootElement = xmlDocGetRootElement(v11);
        if (RootElement && (v16 = RootElement, xmlStrEqual(RootElement->name, "catalog")) && (ns = v16->ns) != 0 && (href = ns->href) != 0 && xmlStrEqual(href, "urn:oasis:names:tc:entity:xmlns:xml:catalog"))
        {
          v19 = xmlNewCatalogEntry(1, 0, v8, 0, v9, 0);
          if (v19)
          {
            v20 = v19;
            Prop = xmlGetProp(v16, "prefer");
            if (Prop)
            {
              v22 = Prop;
              if (xmlStrEqual(Prop, "system"))
              {
                v9 = 2;
              }

              else if (xmlStrEqual(v22, "public"))
              {
                v9 = 1;
              }

              else
              {
                xmlCatalogErr(0, v16, 1652, "Invalid value for prefer: '%s'\n", v22, 0, 0);
              }

              free(v22);
            }

            xmlParseXMLCatalogNodeList(v16->children, v9, v20, 0);
            xmlFreeDoc(v11);
            v26 = v20;
            if (*(a1 + 24) == 1)
            {
              v26 = v20[2];
            }

            *(a1 + 16) = v26;
            *(v20 + 15) = 1;
            v27 = xmlCatalogXMLFiles;
            if (xmlCatalogXMLFiles || (v27 = xmlHashCreate(10), (xmlCatalogXMLFiles = v27) != 0))
            {
              if (xmlDebugCatalogs)
              {
                v28 = *__xmlGenericError();
                v29 = __xmlGenericErrorContext();
                v28(*v29, "%s added to file hash\n", *(a1 + 48));
                v27 = xmlCatalogXMLFiles;
              }

              xmlHashAddEntry(v27, *(a1 + 48), v20);
            }

            goto LABEL_31;
          }
        }

        else
        {
          __xmlRaiseError(0, 0, 0, 0, v11, 0x14u, 1653, 2, 0, 0, v8, 0, 0, 0, 0, "File %s is not an XML Catalog\n", v8);
        }

        xmlFreeDoc(v11);
      }

      else if (xmlDebugCatalogs)
      {
        v23 = *__xmlGenericError();
        v24 = __xmlGenericErrorContext();
        v23(*v24, "Failed to parse catalog %s\n", v8);
      }
    }

    *(a1 + 24) = 2;
  }

LABEL_31:
  v25 = xmlCatalogMutex;

  xmlRMutexUnlock(v25);
}

void xmlParseXMLCatalogNodeList(const xmlNode *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
    v8 = a3 + 2;
    while (1)
    {
      ns = v7->ns;
      if (!ns)
      {
        goto LABEL_29;
      }

      href = ns->href;
      if (!href || !xmlStrEqual(href, "urn:oasis:names:tc:entity:xmlns:xml:catalog"))
      {
        goto LABEL_29;
      }

      if (xmlStrEqual(v7->name, "group"))
      {
        Prop = xmlGetProp(v7, "prefer");
        v12 = Prop;
        if (Prop)
        {
          if (xmlStrEqual(Prop, "system"))
          {
            v13 = 2;
          }

          else if (xmlStrEqual(v12, "public"))
          {
            v13 = 1;
          }

          else
          {
            __xmlRaiseError(0, 0, 0, a3, v7, 0x14u, 1652, 2, 0, 0, v12, 0, 0, 0, 0, "Invalid value for prefer: '%s'\n", v12);
            v13 = a2;
          }

          free(v12);
          LODWORD(v12) = v13;
        }

        else
        {
          v13 = a2;
        }

        v21 = xmlGetProp(v7, "id");
        NsProp = xmlGetNsProp(v7, "base", "http://www.w3.org/XML/1998/namespace");
        v19 = xmlNewCatalogEntry(4, v21, NsProp, 0, v12, a4);
        free(v21);
        if (!v19)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      if (xmlStrEqual(v7->name, "public"))
      {
        v14 = v7;
        v15 = 5;
        v16 = "public";
        v17 = "publicId";
        goto LABEL_17;
      }

      if (xmlStrEqual(v7->name, "system"))
      {
        v14 = v7;
        v15 = 6;
        v16 = "system";
        v17 = "systemId";
        goto LABEL_17;
      }

      if (xmlStrEqual(v7->name, "rewriteSystem"))
      {
        v14 = v7;
        v15 = 7;
        v16 = "rewriteSystem";
        v17 = "systemIdStartString";
        goto LABEL_33;
      }

      if (xmlStrEqual(v7->name, "delegatePublic"))
      {
        v14 = v7;
        v15 = 8;
        v16 = "delegatePublic";
        v17 = "publicIdStartString";
        goto LABEL_38;
      }

      if (xmlStrEqual(v7->name, "delegateSystem"))
      {
        v14 = v7;
        v15 = 9;
        v16 = "delegateSystem";
        v17 = "systemIdStartString";
        goto LABEL_38;
      }

      if (xmlStrEqual(v7->name, "uri"))
      {
        v14 = v7;
        v15 = 10;
        v16 = "uri";
        v17 = "name";
LABEL_17:
        v18 = "uri";
        goto LABEL_18;
      }

      if (xmlStrEqual(v7->name, "rewriteURI"))
      {
        v14 = v7;
        v15 = 11;
        v16 = "rewriteURI";
        v17 = "uriStartString";
LABEL_33:
        v18 = "rewritePrefix";
LABEL_18:
        v19 = xmlParseXMLCatalogOneNode(v14, v15, v16, v17, v18, a2, a4);
        NsProp = 0;
        v13 = a2;
        if (!v19)
        {
LABEL_27:
          if (NsProp)
          {
            free(NsProp);
          }

          goto LABEL_29;
        }

LABEL_23:
        v19[1] = a3;
        v22 = a3[2];
        for (i = v8; v22; v22 = *v22)
        {
          i = v22;
        }

        *i = v19;
        if (*(v19 + 6) == 4)
        {
          xmlParseXMLCatalogNodeList(v7->children, v13, a3, v19);
        }

        goto LABEL_27;
      }

      if (xmlStrEqual(v7->name, "delegateURI"))
      {
        break;
      }

      if (xmlStrEqual(v7->name, "nextCatalog"))
      {
        v14 = v7;
        v15 = 3;
        v16 = "nextCatalog";
        v17 = 0;
        goto LABEL_38;
      }

LABEL_29:
      v7 = v7->next;
      if (!v7)
      {
        return;
      }
    }

    v14 = v7;
    v15 = 12;
    v16 = "delegateURI";
    v17 = "uriStartString";
LABEL_38:
    v18 = "catalog";
    goto LABEL_18;
  }
}

void *xmlParseXMLCatalogOneNode(xmlNode *node, int a2, const xmlChar *a3, xmlChar *name, xmlChar *a5, int a6, uint64_t a7)
{
  if (name)
  {
    Prop = xmlGetProp(node, name);
    if (!Prop)
    {
      __xmlRaiseError(0, 0, 0, 0, node, 0x14u, 1650, 2, 0, 0, a3, name, 0, 0, 0, "%s entry lacks '%s'\n", a3);
      v15 = xmlGetProp(node, a5);
      if (!v15)
      {
        __xmlRaiseError(0, 0, 0, 0, node, 0x14u, 1650, 2, 0, 0, a3, a5, 0, 0, 0, "%s entry lacks '%s'\n", a3);
        return 0;
      }

LABEL_13:
      free(v15);
      return 0;
    }
  }

  else
  {
    Prop = 0;
  }

  v16 = xmlGetProp(node, a5);
  if (!v16)
  {
    __xmlRaiseError(0, 0, 0, 0, node, 0x14u, 1650, 2, 0, 0, a3, a5, 0, 0, 0, "%s entry lacks '%s'\n", a3);
    if (!Prop)
    {
      return 0;
    }

    v15 = Prop;
    goto LABEL_13;
  }

  v17 = v16;
  Base = xmlNodeGetBase(node->doc, node);
  v19 = xmlBuildURI(v17, Base);
  if (v19)
  {
    if (xmlDebugCatalogs >= 2)
    {
      v20 = *__xmlGenericError();
      v21 = *__xmlGenericErrorContext();
      if (Prop)
      {
        v22 = "Found %s: '%s' '%s'\n";
      }

      else
      {
        v22 = "Found %s: '%s'\n";
      }

      v20(v21, v22);
    }

    v23 = xmlNewCatalogEntry(a2, Prop, v17, v19, a6, a7);
    if (!Prop)
    {
      goto LABEL_21;
    }
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, node, 0x14u, 1651, 2, 0, 0, a3, a5, v17, 0, 0, "%s entry '%s' broken ?: %s\n", a3);
    v23 = 0;
    if (!Prop)
    {
      goto LABEL_21;
    }
  }

  free(Prop);
LABEL_21:
  free(v17);
  if (Base)
  {
    free(Base);
  }

  if (v19)
  {
    free(v19);
  }

  return v23;
}

xmlNodePtr xmlDumpXMLCatalogNode(xmlNodePtr result, xmlNode *a2, xmlDoc *a3, xmlNs *a4, xmlNs *a5)
{
  if (result)
  {
    v9 = result;
    v10 = result;
    do
    {
      if (v10->ns == a5)
      {
        children = v10->children;
        if (children > 6)
        {
          if (children <= 9)
          {
            if (children != 7)
            {
              if (children == 8)
              {
                v12 = xmlNewDocNode(a3, a4, "delegatePublic", 0);
                v13 = v12;
                last = v10->last;
                v15 = "publicIdStartString";
              }

              else
              {
                v12 = xmlNewDocNode(a3, a4, "delegateSystem", 0);
                v13 = v12;
                last = v10->last;
                v15 = "systemIdStartString";
              }

              goto LABEL_30;
            }

            v21 = xmlNewDocNode(a3, a4, "rewriteSystem", 0);
            v13 = v21;
            v22 = v10->last;
            v23 = "systemIdStartString";
            goto LABEL_35;
          }

          switch(children)
          {
            case 10:
              v16 = xmlNewDocNode(a3, a4, "uri", 0);
              v13 = v16;
              v17 = v10->last;
              v18 = "name";
LABEL_33:
              xmlSetProp(v16, v18, v17);
              parent = v10->parent;
              v19 = v13;
              v27 = "uri";
              goto LABEL_36;
            case 11:
              v21 = xmlNewDocNode(a3, a4, "rewriteURI", 0);
              v13 = v21;
              v22 = v10->last;
              v23 = "uriStartString";
LABEL_35:
              xmlSetProp(v21, v23, v22);
              parent = v10->parent;
              v19 = v13;
              v27 = "rewritePrefix";
              goto LABEL_36;
            case 12:
              v12 = xmlNewDocNode(a3, a4, "delegateURI", 0);
              v13 = v12;
              last = v10->last;
              v15 = "uriStartString";
LABEL_30:
              xmlSetProp(v12, v15, last);
              parent = v10->parent;
              v19 = v13;
LABEL_31:
              v27 = "catalog";
LABEL_36:
              xmlSetProp(v19, v27, parent);
LABEL_37:
              result = xmlAddChild(a2, v13);
              break;
          }
        }

        else
        {
          if (children > 3)
          {
            if (children != 4)
            {
              if (children == 5)
              {
                v16 = xmlNewDocNode(a3, a4, "public", 0);
                v13 = v16;
                v17 = v10->last;
                v18 = "publicId";
              }

              else
              {
                v16 = xmlNewDocNode(a3, a4, "system", 0);
                v13 = v16;
                v17 = v10->last;
                v18 = "systemId";
              }

              goto LABEL_33;
            }

            v13 = xmlNewDocNode(a3, a4, "group", 0);
            xmlSetProp(v13, "id", v10->last);
            if (v10->parent)
            {
              v24 = xmlSearchNsByHref(a3, v13, "http://www.w3.org/XML/1998/namespace");
              if (v24)
              {
                xmlSetNsProp(v13, v24, "base", v10->parent);
              }
            }

            prev = v10->prev;
            if (prev == 1)
            {
              v26 = "public";
LABEL_41:
              xmlSetProp(v13, "prefer", v26);
            }

            else if (prev == 2)
            {
              v26 = "system";
              goto LABEL_41;
            }

            xmlDumpXMLCatalogNode(v10->_private, v13, a3, a4, v10);
            goto LABEL_37;
          }

          if ((children - 1) >= 2)
          {
            if (children == 3)
            {
              v19 = xmlNewDocNode(a3, a4, "nextCatalog", 0);
              v13 = v19;
              parent = v10->parent;
              goto LABEL_31;
            }
          }

          else
          {
            v10 = (v10 + 16 * (v10 == v9));
          }
        }
      }

      v10 = v10->_private;
    }

    while (v10);
  }

  return result;
}

xmlRMutexPtr _xmlInitializeCatalogData()
{
  if (getenv("XML_DEBUG_CATALOG"))
  {
    xmlDebugCatalogs = 1;
  }

  result = xmlNewRMutex();
  xmlCatalogMutex = result;
  return result;
}

int xmlCharInRange(unsigned int val, const xmlChRangeGroup *group)
{
  if (!group)
  {
    return 0;
  }

  if (!HIWORD(val))
  {
    nbShortRange = group->nbShortRange;
    if (group->nbShortRange)
    {
      v3 = __OFSUB__(nbShortRange, 1);
      v4 = nbShortRange - 1;
      if (v4 < 0 == v3)
      {
        v5 = 0;
        do
        {
          v6 = (v4 + v5) >> 1;
          v7 = &group->shortRange[v6];
          if (v7->low <= val)
          {
            if (v7->high >= val)
            {
              return 1;
            }

            v5 = v6 + 1;
          }

          else
          {
            v4 = v6 - 1;
          }
        }

        while (v5 <= v4);
      }
    }

    return 0;
  }

  nbLongRange = group->nbLongRange;
  if (!nbLongRange)
  {
    return 0;
  }

  v3 = __OFSUB__(nbLongRange, 1);
  v9 = nbLongRange - 1;
  if (v9 < 0 != v3)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    v11 = (v9 + v10) >> 1;
    v12 = &group->longRange[v11];
    if (v12->low <= val)
    {
      break;
    }

    v9 = v11 - 1;
LABEL_19:
    if (v10 > v9)
    {
      return 0;
    }
  }

  if (v12->high < val)
  {
    v10 = v11 + 1;
    goto LABEL_19;
  }

  return 1;
}

int xmlIsBaseChar(unsigned int ch)
{
  if (ch > 0xFF)
  {
    return xmlCharInRange(ch, &xmlIsBaseCharGroup);
  }

  return (ch & 0xDF) - 65 < 0x1A || ch - 192 < 0x17 || ch - 216 < 0x1F || ch > 0xF7;
}

int xmlIsChar(unsigned int ch)
{
  if (ch > 0xFF)
  {
    return ch >> 11 < 0x1B || (ch - 57344) >> 1 < 0xFFF || ch - 0x10000 < 0x100000;
  }

  if (ch > 0xDu)
  {
    return ch > 0x1F;
  }

  v1 = 1;
  if (((1 << ch) & 0x2600) == 0)
  {
    return ch > 0x1F;
  }

  return v1;
}

int xmlIsCombining(unsigned int ch)
{
  if (ch >= 0x100)
  {
    return xmlCharInRange(ch, &xmlIsCombiningGroup);
  }

  else
  {
    return 0;
  }
}

int xmlIsDigit(unsigned int ch)
{
  if (ch > 0xFF)
  {
    return xmlCharInRange(ch, &xmlIsDigitGroup);
  }

  else
  {
    return ch - 48 < 0xA;
  }
}

int xmlIsExtender(unsigned int ch)
{
  if (ch > 0xFF)
  {
    return xmlCharInRange(ch, &xmlIsExtenderGroup);
  }

  else
  {
    return ch == 183;
  }
}

int xmlIsPubidChar(unsigned int ch)
{
  if (ch > 0xFF)
  {
    return 0;
  }

  else
  {
    return xmlIsPubidChar_tab[ch];
  }
}

void xmlDebugDumpString(FILE *output, const xmlChar *str)
{
  v2 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v3 = output;
  }

  else
  {
    v3 = *MEMORY[0x1E69E9858];
  }

  if (!str)
  {
    v8 = "(NULL)";
    v9 = 6;
    goto LABEL_20;
  }

  for (i = 0; i != 40; ++i)
  {
    v6 = str[i];
    if (v6 == 32)
    {
      goto LABEL_13;
    }

    if (!str[i])
    {
      return;
    }

    if ((v6 - 9) < 2 || v6 == 13)
    {
LABEL_13:
      v6 = 32;
LABEL_14:
      fputc(v6, v3);
      continue;
    }

    if ((v6 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    fprintf(v3, "#%X", str[i]);
  }

  v8 = "...";
  v9 = 3;
LABEL_20:

  fwrite(v8, v9, 1uLL, v3);
}

void xmlDebugDumpAttr(FILE *output, xmlAttrPtr attr, int depth)
{
  v19 = *MEMORY[0x1E69E9840];
  if (output)
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    *&v3 = 0x2020202020202020;
    *(&v3 + 1) = 0x2020202020202020;
    v6 = v3;
    v7 = v3;
    v8 = v3;
    v9 = v3;
    v10 = v3;
    v11 = v3;
    v5 = output;
    v12 = 538976288;
    v13 = depth;
    xmlCtxtDumpAttr(&v5, attr);
  }

  v4 = *MEMORY[0x1E69E9840];
}

size_t xmlCtxtDumpAttr(size_t a1, uint64_t a2)
{
  result = xmlCtxtDumpSpaces(a1);
  v5 = *(a1 + 144);
  if (a2)
  {
    if (!v5)
    {
      fwrite("ATTRIBUTE ", 0xAuLL, 1uLL, *a1);
      xmlCtxtDumpString(a1, *(a2 + 16));
      fputc(10, *a1);
      v6 = *(a2 + 24);
      if (v6)
      {
        ++*(a1 + 112);
        do
        {
          xmlCtxtDumpNode(a1, v6);
          v6 = *(v6 + 48);
        }

        while (v6);
        --*(a1 + 112);
      }
    }

    if (!*(a2 + 16))
    {
      xmlDebugErr(a1, 5015, "Attribute has no name");
    }

    return xmlCtxtGenericNodeCheck(a1, a2);
  }

  else if (!v5)
  {
    v7 = *a1;

    return fwrite("Attr is NULL", 0xCuLL, 1uLL, v7);
  }

  return result;
}

void xmlDebugDumpEntities(FILE *output, xmlDocPtr doc)
{
  v23 = *MEMORY[0x1E69E9840];
  if (output)
  {
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    *&v3 = 0x2020202020202020;
    *(&v3 + 1) = 0x2020202020202020;
    v10 = v3;
    v11 = v3;
    v12 = v3;
    v13 = v3;
    v14 = v3;
    v15 = v3;
    v16 = 538976288;
    __stream = output;
    if (doc)
    {
      xmlCtxtDumpDocHead(&__stream, doc);
      intSubset = doc->intSubset;
      if (intSubset && (entities = intSubset->entities) != 0)
      {
        if (!v21)
        {
          fwrite("Entities in internal subset\n", 0x1CuLL, 1uLL, __stream);
        }

        xmlHashScan(entities, xmlCtxtDumpEntityCallback, &__stream);
      }

      else
      {
        fwrite("No entities in internal subset\n", 0x1FuLL, 1uLL, __stream);
      }

      extSubset = doc->extSubset;
      if (extSubset && (v7 = extSubset->entities) != 0)
      {
        if (!v21)
        {
          fwrite("Entities in external subset\n", 0x1CuLL, 1uLL, __stream);
        }

        xmlHashScan(v7, xmlCtxtDumpEntityCallback, &__stream);
      }

      else if (!v21)
      {
        fwrite("No entities in external subset\n", 0x1FuLL, 1uLL, __stream);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void xmlDebugDumpAttrList(FILE *output, xmlAttrPtr attr, int depth)
{
  v20 = *MEMORY[0x1E69E9840];
  if (output)
  {
    v3 = attr;
    v18 = 0;
    v19 = 0;
    v16 = 0;
    v17 = 0;
    v15 = 0;
    *&v4 = 0x2020202020202020;
    *(&v4 + 1) = 0x2020202020202020;
    v7 = v4;
    v8 = v4;
    v9 = v4;
    v10 = v4;
    v11 = v4;
    v12 = v4;
    v6 = output;
    v13 = 538976288;
    for (i = depth; v3; v3 = v3->next)
    {
      xmlCtxtDumpAttr(&v6, v3);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void xmlDebugDumpOneNode(FILE *output, xmlNodePtr node, int depth)
{
  v19 = *MEMORY[0x1E69E9840];
  if (output)
  {
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    v14 = 0;
    *&v3 = 0x2020202020202020;
    *(&v3 + 1) = 0x2020202020202020;
    v6 = v3;
    v7 = v3;
    v8 = v3;
    v9 = v3;
    v10 = v3;
    v11 = v3;
    v5 = output;
    v12 = 538976288;
    v13 = depth;
    xmlCtxtDumpOneNode(&v5, node);
  }

  v4 = *MEMORY[0x1E69E9840];
}

_DWORD *xmlCtxtDumpOneNode(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = result;
  v71 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v5 = v3;
    *(result + 16) = v3;
    v6 = *(v3 + 8);
    switch(v6)
    {
      case 1:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        fwrite("ELEMENT ", 8uLL, 1uLL, *v4);
        v22 = *(v5 + 72);
        if (v22)
        {
          v23 = *(v22 + 24);
          if (v23)
          {
            xmlCtxtDumpString(v4, v23);
            fputc(58, *v4);
          }
        }

        xmlCtxtDumpString(v4, *(v5 + 16));
        goto LABEL_103;
      case 2:
        if (!result[36])
        {
          xmlCtxtDumpSpaces(result);
        }

        v7 = *v4;
        v8 = "Error, ATTRIBUTE found here\n";
        v9 = 28;
        goto LABEL_41;
      case 3:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        if (*(v5 + 16) == "textnoenc")
        {
          v19 = "TEXT no enc";
          v20 = 11;
        }

        else
        {
          v19 = "TEXT";
          v20 = 4;
        }

        fwrite(v19, v20, 1uLL, *v4);
        if ((*(v4 + 156) & 1) == 0)
        {
LABEL_103:
          v45 = *v4;
LABEL_104:
          fputc(10, v45);
LABEL_105:
          if (!*(v5 + 64))
          {
            if (!*(v4 + 144))
            {
              xmlCtxtDumpSpaces(v4);
            }

            fwrite("PBM: doc == NULL !!!\n", 0x15uLL, 1uLL, *v4);
          }

          ++*(v4 + 112);
          v46 = *(v5 + 8);
          if (v46 == 1)
          {
            v47 = *(v5 + 96);
            if (!v47)
            {
              goto LABEL_113;
            }

            do
            {
              xmlCtxtDumpNamespace(v4, v47);
              v47 = *v47;
            }

            while (v47);
            v46 = *(v5 + 8);
            if (v46 == 1)
            {
LABEL_113:
              v48 = *(v5 + 88);
              if (!v48)
              {
                goto LABEL_148;
              }

              do
              {
                xmlCtxtDumpAttr(v4, v48);
                v48 = *(v48 + 48);
              }

              while (v48);
              v46 = *(v5 + 8);
            }
          }

          if (v46 != 1)
          {
            if (v46 != 5)
            {
              if (!*(v5 + 80) || *(v4 + 144))
              {
                goto LABEL_148;
              }

              xmlCtxtDumpSpaces(v4);
              fwrite("content=", 8uLL, 1uLL, *v4);
              content = *(v5 + 80);
              goto LABEL_147;
            }

            DocEntity = xmlGetDocEntity(*(v5 + 64), *(v5 + 16));
            if (!DocEntity)
            {
              goto LABEL_148;
            }

            v50 = DocEntity;
            xmlCtxtDumpSpaces(v4);
            if (*(v4 + 144))
            {
              goto LABEL_148;
            }

            etype = v50->etype;
            v52 = *v4;
            if (etype <= 2)
            {
              if (etype == 1)
              {
                v53 = "INTERNAL_GENERAL_ENTITY ";
                v55 = 24;
                goto LABEL_138;
              }

              if (etype != 2)
              {
                goto LABEL_152;
              }

              v53 = "EXTERNAL_GENERAL_PARSED_ENTITY ";
              v55 = 31;
            }

            else
            {
              if (etype != 3)
              {
                if (etype == 4)
                {
                  v53 = "INTERNAL_PARAMETER_ENTITY ";
                  goto LABEL_136;
                }

                if (etype == 5)
                {
                  v53 = "EXTERNAL_PARAMETER_ENTITY ";
LABEL_136:
                  v55 = 26;
                  goto LABEL_138;
                }

LABEL_152:
                fprintf(v52, "ENTITY_%d ! ", v50->etype);
                goto LABEL_139;
              }

              v53 = "EXTERNAL_GENERAL_UNPARSED_ENTITY ";
              v55 = 33;
            }

LABEL_138:
            fwrite(v53, v55, 1uLL, v52);
LABEL_139:
            fprintf(*v4, "%s\n", v50->name);
            if (v50->ExternalID)
            {
              xmlCtxtDumpSpaces(v4);
              fprintf(*v4, "ExternalID=%s\n", v50->ExternalID);
            }

            if (v50->SystemID)
            {
              xmlCtxtDumpSpaces(v4);
              fprintf(*v4, "SystemID=%s\n", v50->SystemID);
            }

            if (v50->URI)
            {
              xmlCtxtDumpSpaces(v4);
              fprintf(*v4, "URI=%s\n", v50->URI);
            }

            if (!v50->content)
            {
              goto LABEL_148;
            }

            xmlCtxtDumpSpaces(v4);
            fwrite("content=", 8uLL, 1uLL, *v4);
            content = v50->content;
LABEL_147:
            xmlCtxtDumpString(v4, content);
            fputc(10, *v4);
          }

LABEL_148:
          --*(v4 + 112);
LABEL_149:
          v58 = *MEMORY[0x1E69E9840];

          return xmlCtxtGenericNodeCheck(v4, v5);
        }

        v56 = *(v5 + 80);
        if (v56 == (v5 + 88))
        {
          v15 = *v4;
          v16 = " compact\n";
LABEL_16:
          v17 = 9;
        }

        else
        {
          v57 = xmlDictOwns(*(v4 + 136), v56);
          v15 = *v4;
          if (v57 != 1)
          {
            v45 = *v4;
            goto LABEL_104;
          }

          v16 = " interned\n";
          v17 = 10;
        }

LABEL_50:
        fwrite(v16, v17, 1uLL, v15);
        goto LABEL_105;
      case 4:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "CDATA_SECTION\n";
        goto LABEL_44;
      case 5:
        if (!result[36])
        {
          xmlCtxtDumpSpaces(result);
          v18 = *(v5 + 16);
          fprintf(*v4, "ENTITY_REF(%s)\n");
        }

        goto LABEL_105;
      case 6:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "ENTITY\n";
        v17 = 7;
        goto LABEL_50;
      case 7:
        if (!result[36])
        {
          xmlCtxtDumpSpaces(result);
          v25 = *(v5 + 16);
          fprintf(*v4, "PI %s\n");
        }

        goto LABEL_105;
      case 8:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "COMMENT\n";
        v17 = 8;
        goto LABEL_50;
      case 9:
      case 13:
        if (!result[36])
        {
          xmlCtxtDumpSpaces(result);
        }

        v7 = *v4;
        v8 = "Error, DOCUMENT found here\n";
        v9 = 27;
LABEL_41:
        fwrite(v8, v9, 1uLL, v7);
        goto LABEL_149;
      case 10:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "DOCUMENT_TYPE\n";
        goto LABEL_44;
      case 11:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "DOCUMENT_FRAG\n";
LABEL_44:
        v17 = 14;
        goto LABEL_50;
      case 12:
        if (result[36])
        {
          goto LABEL_105;
        }

        xmlCtxtDumpSpaces(result);
        v15 = *v4;
        v16 = "NOTATION\n";
        goto LABEL_16;
      case 14:
        v21 = *MEMORY[0x1E69E9840];

        return xmlCtxtDumpDtdNode(result, v3);
      case 15:
        xmlCtxtDumpSpaces(result);
        if (*(v5 + 8) != 15)
        {
          v33 = *MEMORY[0x1E69E9840];
          v30 = "Node is not an element declaration";
          v31 = v4;
          v32 = 5025;
          goto LABEL_73;
        }

        if (*(v5 + 16))
        {
          if (!*(v4 + 144))
          {
            fwrite("ELEMDECL(", 9uLL, 1uLL, *v4);
            xmlCtxtDumpString(v4, *(v5 + 16));
            fputc(41, *v4);
          }
        }

        else
        {
          xmlDebugErr(v4, 5015, "Element declaration has no name");
        }

        if (*(v4 + 144))
        {
          goto LABEL_179;
        }

        v38 = *(v5 + 72);
        if (v38 <= 1)
        {
          if (v38)
          {
            if (v38 != 1)
            {
              goto LABEL_175;
            }

            v39 = *v4;
            v40 = ", EMPTY";
            v41 = 7;
          }

          else
          {
            v39 = *v4;
            v40 = ", UNDEFINED";
            v41 = 11;
          }

          goto LABEL_174;
        }

        if (v38 == 2)
        {
          v39 = *v4;
          v40 = ", ANY";
          v41 = 5;
          goto LABEL_174;
        }

        if (v38 == 3 || v38 == 4)
        {
          v39 = *v4;
          v40 = ", MIXED ";
          v41 = 8;
LABEL_174:
          fwrite(v40, v41, 1uLL, v39);
        }

LABEL_175:
        if (*(v5 + 8) != 1)
        {
          v61 = *(v5 + 80);
          if (v61)
          {
            bzero(buf, 0x1389uLL);
            xmlSnprintfElementContent(buf, 5000, v61, 1);
            buf[5000] = 0;
            fputs(buf, *v4);
          }
        }

        fputc(10, *v4);
LABEL_179:
        result = xmlCtxtGenericNodeCheck(v4, v5);
        goto LABEL_7;
      case 16:
        xmlCtxtDumpSpaces(result);
        if (*(v5 + 8) != 16)
        {
          v29 = *MEMORY[0x1E69E9840];
          v30 = "Node is not an attribute declaration";
          v31 = v4;
          v32 = 5024;
          goto LABEL_73;
        }

        if (*(v5 + 16))
        {
          if (!*(v4 + 144))
          {
            fprintf(*v4, "ATTRDECL(%s)", *(v5 + 16));
          }
        }

        else
        {
          xmlDebugErr(v4, 5015, "Node attribute declaration has no name");
        }

        if (*(v5 + 112))
        {
          if (!*(v4 + 144))
          {
            fprintf(*v4, " for %s", *(v5 + 112));
          }
        }

        else
        {
          xmlDebugErr(v4, 5016, "Node attribute declaration has no element name");
        }

        if (*(v4 + 144))
        {
          goto LABEL_149;
        }

        v35 = *(v5 + 80);
        if (v35 > 5)
        {
          if (v35 <= 7)
          {
            if (v35 != 6)
            {
              v36 = *v4;
              v37 = " NMTOKEN";
              v59 = 8;
              goto LABEL_203;
            }

            v36 = *v4;
            v37 = " ENTITIES";
          }

          else
          {
            if (v35 != 8)
            {
              if (v35 == 9)
              {
                v36 = *v4;
                v37 = " ENUMERATION";
                v59 = 12;
              }

              else
              {
                if (v35 != 10)
                {
                  goto LABEL_204;
                }

                v36 = *v4;
                v37 = " NOTATION ";
                v59 = 10;
              }

              goto LABEL_203;
            }

            v36 = *v4;
            v37 = " NMTOKENS";
          }

          v59 = 9;
        }

        else
        {
          if (v35 > 2)
          {
            if (v35 != 3)
            {
              v36 = *v4;
              if (v35 == 4)
              {
                v37 = " IDREFS";
              }

              else
              {
                v37 = " ENTITY";
              }

              v59 = 7;
              goto LABEL_203;
            }

            v36 = *v4;
            v37 = " IDREF";
LABEL_197:
            v59 = 6;
            goto LABEL_203;
          }

          if (v35 == 1)
          {
            v36 = *v4;
            v37 = " CDATA";
            goto LABEL_197;
          }

          if (v35 != 2)
          {
            goto LABEL_204;
          }

          v36 = *v4;
          v37 = " ID";
          v59 = 3;
        }

LABEL_203:
        fwrite(v37, v59, 1uLL, v36);
LABEL_204:
        v62 = *(v5 + 96);
        if (v62)
        {
          v63 = 5;
          while (1)
          {
            v64 = *v4;
            v65 = v62[1];
            if (v63 == 5)
            {
              fprintf(v64, " (%s");
            }

            else
            {
              fprintf(v64, "|%s");
            }

            v62 = *v62;
            if (!v62)
            {
              break;
            }

            if (!--v63)
            {
              fwrite("...)", 4uLL, 1uLL, *v4);
              goto LABEL_213;
            }
          }

          fputc(41, *v4);
        }

LABEL_213:
        v66 = *(v5 + 84);
        switch(v66)
        {
          case 4:
            v67 = *v4;
            v68 = " FIXED";
            v69 = 6;
            break;
          case 3:
            v67 = *v4;
            v68 = " IMPLIED";
            v69 = 8;
            break;
          case 2:
            v67 = *v4;
            v68 = " REQUIRED";
            v69 = 9;
            break;
          default:
LABEL_220:
            if (*(v5 + 88))
            {
              fputc(34, *v4);
              xmlCtxtDumpString(v4, *(v5 + 88));
              fputc(34, *v4);
            }

LABEL_222:
            fputc(10, *v4);
            goto LABEL_149;
        }

        fwrite(v68, v69, 1uLL, v67);
        goto LABEL_220;
      case 17:
        xmlCtxtDumpSpaces(result);
        if (*(v5 + 8) != 17)
        {
          v34 = *MEMORY[0x1E69E9840];
          v30 = "Node is not an entity declaration";
          v31 = v4;
          v32 = 5026;
LABEL_73:

          return xmlDebugErr(v31, v32, v30);
        }

        if (*(v5 + 16))
        {
          if (!*(v4 + 144))
          {
            fwrite("ENTITYDECL(", 0xBuLL, 1uLL, *v4);
            xmlCtxtDumpString(v4, *(v5 + 16));
            fputc(41, *v4);
          }
        }

        else
        {
          xmlDebugErr(v4, 5015, "Entity declaration has no name");
        }

        if (*(v4 + 144))
        {
          goto LABEL_149;
        }

        v42 = *(v5 + 92);
        if (v42 > 3)
        {
          switch(v42)
          {
            case 4:
              v43 = *v4;
              v44 = ", parameter\n";
              v60 = 12;
              break;
            case 5:
              v43 = *v4;
              v44 = ", external parameter\n";
              v60 = 21;
              break;
            case 6:
              v43 = *v4;
              v44 = ", predefined\n";
              v60 = 13;
              break;
            default:
              goto LABEL_186;
          }
        }

        else
        {
          if (v42 == 1)
          {
            v43 = *v4;
            v44 = ", internal\n";
LABEL_181:
            v60 = 11;
            goto LABEL_185;
          }

          if (v42 != 2)
          {
            if (v42 != 3)
            {
              goto LABEL_186;
            }

            v43 = *v4;
            v44 = ", unparsed\n";
            goto LABEL_181;
          }

          v43 = *v4;
          v44 = ", external parsed\n";
          v60 = 18;
        }

LABEL_185:
        fwrite(v44, v60, 1uLL, v43);
LABEL_186:
        if (*(v5 + 96))
        {
          xmlCtxtDumpSpaces(v4);
          fprintf(*v4, " ExternalID=%s\n", *(v5 + 96));
        }

        if (*(v5 + 104))
        {
          xmlCtxtDumpSpaces(v4);
          fprintf(*v4, " SystemID=%s\n", *(v5 + 104));
        }

        if (*(v5 + 120))
        {
          xmlCtxtDumpSpaces(v4);
          fprintf(*v4, " URI=%s\n", *(v5 + 120));
        }

        if (*(v5 + 80))
        {
          xmlCtxtDumpSpaces(v4);
          fwrite(" content=", 9uLL, 1uLL, *v4);
          xmlCtxtDumpString(v4, *(v5 + 80));
          goto LABEL_222;
        }

        goto LABEL_149;
      case 18:
        v24 = *MEMORY[0x1E69E9840];

        return xmlCtxtDumpNamespace(result, v3);
      case 19:
        if (result[36])
        {
          goto LABEL_7;
        }

        xmlCtxtDumpSpaces(result);
        v11 = *v4;
        v27 = *MEMORY[0x1E69E9840];
        v13 = "INCLUDE START\n";
        v14 = 14;
        goto LABEL_9;
      case 20:
        if (result[36])
        {
          goto LABEL_7;
        }

        xmlCtxtDumpSpaces(result);
        v11 = *v4;
        v28 = *MEMORY[0x1E69E9840];
        v13 = "INCLUDE END\n";
        v14 = 12;
        goto LABEL_9;
      default:
        if (!result[36])
        {
          xmlCtxtDumpSpaces(result);
          v6 = *(v5 + 8);
        }

        v26 = *MEMORY[0x1E69E9840];

        return xmlDebugErr3(v4, 5011, "Unknown node type %d\n", v6);
    }
  }

  if (result[36])
  {
LABEL_7:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  xmlCtxtDumpSpaces(result);
  v11 = *v4;
  v12 = *MEMORY[0x1E69E9840];
  v13 = "node is NULL\n";
  v14 = 13;
LABEL_9:

  return fwrite(v13, v14, 1uLL, v11);
}

void xmlDebugDumpNode(FILE *output, xmlNodePtr node, int depth)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v3 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v3 = output;
  }

  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  *&v4 = 0x2020202020202020;
  *(&v4 + 1) = 0x2020202020202020;
  v7 = v4;
  v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = v4;
  v12 = v4;
  v6 = v3;
  LODWORD(v13) = 538976288;
  LODWORD(v14) = depth;
  xmlCtxtDumpNode(&v6, node);
  v5 = *MEMORY[0x1E69E9840];
}

_DWORD *xmlCtxtDumpNode(_DWORD *result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = xmlCtxtDumpOneNode(result, a2);
    v4 = *(a2 + 8);
    if (v4 != 18)
    {
      v5 = *(a2 + 24);
      if (v4 != 5 && v5 != 0)
      {
        ++v2[28];
        do
        {
          result = xmlCtxtDumpNode(v2, v5);
          v5 = *(v5 + 48);
        }

        while (v5);
        --v2[28];
      }
    }
  }

  else if (!result[36])
  {
    xmlCtxtDumpSpaces(result);
    v7 = *v2;

    return fwrite("node is NULL\n", 0xDuLL, 1uLL, v7);
  }

  return result;
}

void xmlDebugDumpNodeList(FILE *output, xmlNodePtr node, int depth)
{
  v21 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = 0;
  v3 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v3 = output;
  }

  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  *&v4 = 0x2020202020202020;
  *(&v4 + 1) = 0x2020202020202020;
  v8 = v4;
  v9 = v4;
  v10 = v4;
  v11 = v4;
  v12 = v4;
  v13 = v4;
  v7 = v3;
  LODWORD(v14) = 538976288;
  LODWORD(v15) = depth;
  if (node)
  {
    v5 = node;
    do
    {
      xmlCtxtDumpNode(&v7, v5);
      v5 = v5->next;
    }

    while (v5);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void xmlDebugDumpDocumentHead(FILE *output, xmlDocPtr doc)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v2 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v2 = output;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  v6 = v3;
  v7 = v3;
  v8 = v3;
  v9 = v3;
  v10 = v3;
  v11 = v3;
  LODWORD(v12) = 538976288;
  v17 = xmmword_1C79BAA30;
  v5 = v2;
  xmlCtxtDumpDocumentHead(&v5, doc);
  v4 = *MEMORY[0x1E69E9840];
}

size_t xmlCtxtDumpDocumentHead(size_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = xmlCtxtDumpDocHead(result, a2);
    if (!*(v3 + 144))
    {
      if (*(a2 + 16))
      {
        fwrite("name=", 5uLL, 1uLL, *v3);
        xmlCtxtDumpString(v3, *(a2 + 16));
        result = fputc(10, *v3);
      }

      if (*(a2 + 104))
      {
        fwrite("version=", 8uLL, 1uLL, *v3);
        xmlCtxtDumpString(v3, *(a2 + 104));
        result = fputc(10, *v3);
      }

      if (*(a2 + 112))
      {
        fwrite("encoding=", 9uLL, 1uLL, *v3);
        xmlCtxtDumpString(v3, *(a2 + 112));
        result = fputc(10, *v3);
      }

      if (*(a2 + 136))
      {
        fwrite("URL=", 4uLL, 1uLL, *v3);
        xmlCtxtDumpString(v3, *(a2 + 136));
        result = fputc(10, *v3);
      }

      if (*(a2 + 76))
      {
        result = fwrite("standalone=true\n", 0x10uLL, 1uLL, *v3);
      }
    }

    for (i = *(a2 + 96); i; i = *i)
    {
      result = xmlCtxtDumpNamespace(v3, i);
    }
  }

  return result;
}

void xmlDebugDumpDocument(FILE *output, xmlDocPtr doc)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v2 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v2 = output;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  v6 = v3;
  v7 = v3;
  v8 = v3;
  v9 = v3;
  v10 = v3;
  v11 = v3;
  LODWORD(v12) = 538976288;
  v17 = xmmword_1C79BAA30;
  v5 = v2;
  xmlCtxtDumpDocument(&v5, doc);
  v4 = *MEMORY[0x1E69E9840];
}

size_t xmlCtxtDumpDocument(size_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = xmlCtxtDumpDocumentHead(result, a2);
    if ((*(a2 + 8) | 4) == 0xD)
    {
      v4 = *(a2 + 24);
      if (v4)
      {
        ++v2[28];
        do
        {
          result = xmlCtxtDumpNode(v2, v4);
          v4 = *(v4 + 48);
        }

        while (v4);
        --v2[28];
      }
    }
  }

  else if (!*(result + 144))
  {
    v5 = *result;

    return fwrite("DOCUMENT == NULL !\n", 0x13uLL, 1uLL, v5);
  }

  return result;
}

void xmlDebugDumpDTD(FILE *output, xmlDtdPtr dtd)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  if (output)
  {
    v2 = output;
  }

  else
  {
    v2 = *MEMORY[0x1E69E9858];
  }

  v21 = 0;
  v22 = 0;
  v20 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  v12 = v3;
  v13 = v3;
  v14 = v3;
  v15 = v3;
  v16 = v3;
  v17 = v3;
  LODWORD(v18) = 538976288;
  v23 = xmmword_1C79BAA30;
  __stream = v2;
  if (dtd)
  {
    xmlCtxtDumpDtdNode(&__stream, dtd);
    children = dtd->children;
    if (children)
    {
      LODWORD(v19) = v19 + 1;
      do
      {
        xmlCtxtDumpNode(&__stream, children);
        children = children->next;
      }

      while (children);
      v6 = *MEMORY[0x1E69E9840];
      return;
    }

    v2 = __stream;
    v10 = *MEMORY[0x1E69E9840];
    v8 = "    DTD is empty\n";
    v9 = 17;
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
    v8 = "DTD is NULL\n";
    v9 = 12;
  }

  fwrite(v8, v9, 1uLL, v2);
}

int xmlDebugCheckDocument(FILE *output, xmlDocPtr doc)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  v2 = *MEMORY[0x1E69E9858];
  if (output)
  {
    v2 = output;
  }

  v16 = 0;
  v17 = 0;
  v15 = 0;
  *&v3 = 0x2020202020202020;
  *(&v3 + 1) = 0x2020202020202020;
  v7 = v3;
  v8 = v3;
  v9 = v3;
  v10 = v3;
  v11 = v3;
  v12 = v3;
  LODWORD(v13) = 538976288;
  v6 = v2;
  v18 = xmmword_1C79BAA40;
  xmlCtxtDumpDocument(&v6, doc);
  result = DWORD1(v18);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlLsCountNode(xmlNodePtr node)
{
  if (node)
  {
    v1 = node;
    LODWORD(node) = 0;
    type = v1->type;
    if (type <= 0x15)
    {
      if (((1 << type) & 0x1FDC60) != 0)
      {
        LODWORD(node) = 1;
      }

      else if (((1 << type) & 0x202206) != 0)
      {
        children = v1->children;
        if (children)
        {
          LODWORD(node) = 0;
          do
          {
            children = children->next;
            LODWORD(node) = node + 1;
          }

          while (children);
        }

        else
        {
          LODWORD(node) = 0;
        }
      }

      else if (((1 << type) & 0x198) != 0)
      {
        node = v1->content;
        if (node)
        {
          LODWORD(node) = xmlStrlen(node);
        }
      }
    }
  }

  return node;
}

void xmlLsOneNode(FILE *output, xmlNodePtr node)
{
  if (!output)
  {
    return;
  }

  if (node)
  {
    v4 = node->type - 1;
    if (v4 > 0x11)
    {
      v5 = 63;
    }

    else
    {
      v5 = dword_1C79BAA58[v4];
    }

    fputc(v5, output);
    if (node->type != XML_NAMESPACE_DECL)
    {
      if (node->properties)
      {
        v6 = 97;
      }

      else
      {
        v6 = 45;
      }

      fputc(v6, output);
      if (node->nsDef)
      {
        v7 = 110;
      }

      else
      {
        v7 = 45;
      }

      fputc(v7, output);
    }

    v8 = xmlLsCountNode(node);
    fprintf(output, " %8d ", v8);
    type = node->type;
    if (type > XML_ENTITY_NODE)
    {
      if (type - 8 < 6)
      {
        goto LABEL_31;
      }

      if (type == XML_NAMESPACE_DECL)
      {
        name = node->name;
        if (node->children)
        {
          children = node->children;
          fprintf(output, "%s -> %s");
        }

        else
        {
          v16 = node->name;
          fprintf(output, "default -> %s");
        }

        goto LABEL_31;
      }
    }

    else if (type > XML_TEXT_NODE)
    {
      if (type == XML_CDATA_SECTION_NODE)
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (type == XML_ELEMENT_NODE)
      {
        v12 = node->name;
        if (!v12)
        {
          goto LABEL_31;
        }

        ns = node->ns;
        if (ns)
        {
          prefix = ns->prefix;
          if (prefix)
          {
            fprintf(output, "%s:", prefix);
            v12 = node->name;
          }
        }

        goto LABEL_30;
      }

      if (type == XML_TEXT_NODE)
      {
        content = node->content;
        if (content)
        {
          xmlDebugDumpString(output, content);
        }

        goto LABEL_31;
      }
    }

    v12 = node->name;
    if (v12)
    {
LABEL_30:
      fputs(v12, output);
    }

LABEL_31:

    fputc(10, output);
    return;
  }

  fwrite("NULL\n", 5uLL, 1uLL, output);
}

const char *__cdecl xmlBoolToText(int BOOLval)
{
  if (BOOLval)
  {
    return "True";
  }

  else
  {
    return "False";
  }
}

void xmlShellPrintXPathError(int errorType, const char *arg)
{
  if (errorType <= 9 && ((0x3FDu >> errorType) & 1) != 0)
  {
    v2 = off_1E82BEA78[errorType];
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, v2);
  }
}

void xmlShellPrintNode(xmlNodePtr node)
{
  if (node)
  {
    v1 = *MEMORY[0x1E69E9858];
    type = node->type;
    if (type == XML_ATTRIBUTE_NODE)
    {
      xmlDebugDumpAttrList(*MEMORY[0x1E69E9858], node, 0);
    }

    else if (type == XML_DOCUMENT_NODE)
    {
      xmlDocDump(*MEMORY[0x1E69E9858], node);
    }

    else
    {
      xmlElemDump(*MEMORY[0x1E69E9858], node->doc, node);
    }

    fputc(10, v1);
  }
}

int xmlShellList(xmlShellCtxtPtr ctxt, char *arg, xmlNodePtr node, xmlNodePtr node2)
{
  if (ctxt)
  {
    if (node)
    {
      type = node->type;
      if (type == XML_DOCUMENT_NODE || type == XML_HTML_DOCUMENT_NODE)
      {
        children = node->children;
        if (!children)
        {
          return 0;
        }
      }

      else if (type == XML_NAMESPACE_DECL || (children = node->children) == 0)
      {
        xmlLsOneNode(ctxt->output, node);
        return 0;
      }

      do
      {
        xmlLsOneNode(ctxt->output, children);
        children = children->next;
      }

      while (children);
    }

    else
    {
      fwrite("NULL\n", 5uLL, 1uLL, ctxt->output);
    }
  }

  return 0;
}

int xmlShellBase(xmlShellCtxtPtr ctxt, char *arg, xmlNodePtr node, xmlNodePtr node2)
{
  if (ctxt)
  {
    if (node)
    {
      Base = xmlNodeGetBase(node->doc, node);
      output = ctxt->output;
      if (Base)
      {
        v7 = Base;
        fprintf(output, "%s\n", Base);
        free(v7);
        return 0;
      }

      v8 = " No base found !!!\n";
      v9 = 19;
    }

    else
    {
      output = ctxt->output;
      v8 = "NULL\n";
      v9 = 5;
    }

    fwrite(v8, v9, 1uLL, output);
  }

  return 0;
}

int xmlShellDir(xmlShellCtxtPtr ctxt, char *arg, xmlNodePtr node, xmlNodePtr node2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (ctxt)
  {
    if (node)
    {
      type = node->type;
      if (type == XML_ATTRIBUTE_NODE)
      {
        xmlDebugDumpAttr(ctxt->output, node, 0);
      }

      else if (type == XML_HTML_DOCUMENT_NODE || type == XML_DOCUMENT_NODE)
      {
        output = ctxt->output;
        v17 = 0;
        v18 = 0;
        if (!output)
        {
          output = *MEMORY[0x1E69E9858];
        }

        v19 = 0u;
        v20 = 0u;
        v21 = 0x100000000;
        *&v7 = 0x2020202020202020;
        *(&v7 + 1) = 0x2020202020202020;
        v11 = v7;
        v12 = v7;
        v13 = v7;
        v14 = v7;
        v15 = v7;
        v16 = v7;
        LODWORD(v17) = 538976288;
        v10 = output;
        xmlCtxtDumpDocumentHead(&v10, node);
      }

      else
      {
        xmlDebugDumpOneNode(ctxt->output, node, 0);
      }
    }

    else
    {
      fwrite("NULL\n", 5uLL, 1uLL, ctxt->output);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

int xmlShellCat(xmlShellCtxtPtr ctxt, char *arg, xmlNodePtr node, xmlNodePtr node2)
{
  if (ctxt)
  {
    if (node)
    {
      doc = ctxt->doc;
      type = node->type;
      output = ctxt->output;
      if (doc->type == XML_HTML_DOCUMENT_NODE)
      {
        if (type == XML_HTML_DOCUMENT_NODE)
        {
          htmlDocDump(output, node);
        }

        else
        {
          htmlNodeDumpFile(output, doc, node);
        }
      }

      else if (type == XML_DOCUMENT_NODE)
      {
        xmlDocDump(output, node);
      }

      else
      {
        xmlElemDump(output, doc, node);
      }

      fputc(10, ctxt->output);
    }

    else
    {
      fwrite("NULL\n", 5uLL, 1uLL, ctxt->output);
    }
  }

  return 0;
}

int xmlShellLoad(xmlShellCtxtPtr ctxt, char *filename, xmlNodePtr node, xmlNodePtr node2)
{
  result = -1;
  if (ctxt && filename)
  {
    doc = ctxt->doc;
    if (doc && doc->type == XML_HTML_DOCUMENT_NODE)
    {
      File = htmlParseFile(filename, 0);
    }

    else
    {
      File = xmlReadFile(filename, 0, 0);
    }

    v9 = File;
    if (File)
    {
      if (ctxt->loaded == 1)
      {
        xmlFreeDoc(ctxt->doc);
      }

      ctxt->loaded = 1;
      xmlXPathFreeContext(ctxt->pctxt);
      free(ctxt->filename);
      ctxt->doc = v9;
      ctxt->node = v9;
      ctxt->pctxt = xmlXPathNewContext(v9);
      v10 = xmlCanonicPath(filename);
      result = 0;
      ctxt->filename = v10;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int xmlShellWrite(xmlShellCtxtPtr ctxt, char *filename, xmlNodePtr node, xmlNodePtr node2)
{
  result = -1;
  if (filename && node && *filename)
  {
    type = node->type;
    if (type == XML_HTML_DOCUMENT_NODE)
    {
      if (htmlSaveFile(filename, ctxt->doc) < 0)
      {
        goto LABEL_13;
      }
    }

    else if (type == XML_DOCUMENT_NODE)
    {
      if (xmlSaveFile(filename, ctxt->doc) <= -2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = fopen(filename, "w");
      if (!v9)
      {
LABEL_13:
        v11 = *__xmlGenericError();
        v12 = __xmlGenericErrorContext();
        v11(*v12, "Failed to write to %s\n", filename);
        return -1;
      }

      v10 = v9;
      xmlElemDump(v9, ctxt->doc, node);
      fclose(v10);
    }

    return 0;
  }

  return result;
}

int xmlShellSave(xmlShellCtxtPtr ctxt, char *filename, xmlNodePtr node, xmlNodePtr node2)
{
  if (!ctxt)
  {
    return -1;
  }

  doc = ctxt->doc;
  if (doc)
  {
    if (filename && *filename || (filename = ctxt->filename) != 0)
    {
      type = doc->type;
      if (type == XML_HTML_DOCUMENT_NODE)
      {
        if ((htmlSaveFile(filename, doc) & 0x80000000) == 0)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (type == XML_DOCUMENT_NODE)
      {
        if ((xmlSaveFile(filename, doc) & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_9:
        v7 = *__xmlGenericError();
        v8 = __xmlGenericErrorContext();
        v7(*v8, "Failed to save to %s\n", filename);
        return 0;
      }

      v10 = *__xmlGenericError();
      v11 = __xmlGenericErrorContext();
      v10(*v11, "To save to subparts of a document use the 'write' command\n");
    }
  }

  return -1;
}

int xmlShellValidate(xmlShellCtxtPtr ctxt, char *dtd, xmlNodePtr node, xmlNodePtr node2)
{
  if (!ctxt || !ctxt->doc)
  {
    return -1;
  }

  memset(&v10, 0, sizeof(v10));
  v10.error = *__xmlGenericError();
  v10.warning = *__xmlGenericError();
  if (!dtd || !*dtd)
  {
    return xmlValidateDocument(&v10, ctxt->doc);
  }

  v6 = xmlParseDTD(0, dtd);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlValidateDtd(&v10, ctxt->doc, v6);
  xmlFreeDtd(v7);
  return v8;
}

int xmlShellDu(xmlShellCtxtPtr ctxt, char *arg, xmlNodePtr tree, xmlNodePtr node2)
{
  result = -1;
  if (ctxt && tree)
  {
    v7 = 0;
    v8 = tree;
    while (1)
    {
      type = v8->type;
      if (type == XML_HTML_DOCUMENT_NODE || type == XML_DOCUMENT_NODE)
      {
        fwrite("/\n", 2uLL, 1uLL, ctxt->output);
      }

      else
      {
        if (type != XML_ELEMENT_NODE)
        {
          goto LABEL_18;
        }

        v11 = v7;
        if (v7 >= 1)
        {
          do
          {
            fwrite("  ", 2uLL, 1uLL, ctxt->output);
            --v11;
          }

          while (v11);
        }

        ns = v8->ns;
        if (ns)
        {
          prefix = ns->prefix;
          if (prefix)
          {
            fprintf(ctxt->output, "%s:", prefix);
          }
        }

        fprintf(ctxt->output, "%s\n", v8->name);
      }

      type = v8->type;
LABEL_18:
      if ((type | 4) == 0xD)
      {
        children = v8->children;
      }

      else
      {
        children = v8->children;
        if (type == XML_ENTITY_REF_NODE || children == 0)
        {
          if (v8 == tree)
          {
            return 0;
          }

          children = v8->next;
          if (!children)
          {
            while (v8 != tree)
            {
              parent = v8->parent;
              if (parent)
              {
                v8 = v8->parent;
              }

              v7 -= parent != 0;
              if (v8 == tree)
              {
LABEL_35:
                v8 = 0;
                break;
              }

              if (v8->next)
              {
                v8 = v8->next;
                break;
              }

              if (!v8->parent)
              {
                goto LABEL_35;
              }
            }

            children = v8;
            if (v8 == tree)
            {
              return 0;
            }
          }
        }

        else
        {
          ++v7;
        }
      }

      v8 = children;
      if (!children)
      {
        return 0;
      }
    }
  }

  return result;
}

int xmlShellPwd(xmlShellCtxtPtr ctxt, char *buffer, xmlNodePtr node, xmlNodePtr node2)
{
  result = -1;
  if (buffer && node)
  {
    NodePath = xmlGetNodePath(node);
    if (NodePath)
    {
      v7 = NodePath;
      snprintf(buffer, 0x1F3uLL, "%s", NodePath);
      buffer[499] = 48;
      free(v7);
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void xmlShell(xmlDocPtr doc, char *filename, xmlShellReadlineFunc input, FILE *output)
{
  v239 = *MEMORY[0x1E69E9840];
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v224 = 0u;
  v223 = 0u;
  v222 = 0u;
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0u;
  v216 = 0u;
  v215 = 0u;
  v214 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v210 = 0u;
  v209 = 0u;
  *&__str[4] = 0u;
  *__str = 540942383;
  if (!doc)
  {
    goto LABEL_301;
  }

  if (!filename)
  {
    goto LABEL_301;
  }

  if (!input)
  {
    goto LABEL_301;
  }

  v8 = *MEMORY[0x1E69E9858];
  v9 = malloc_type_malloc(0x38uLL, 0x10B004004B53823uLL);
  if (!v9)
  {
    goto LABEL_301;
  }

  v10 = v9;
  v207 = 0;
  memset(v206, 0, sizeof(v206));
  *dtd = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v205 = 0u;
  if (output)
  {
    v11 = output;
  }

  else
  {
    v11 = v8;
  }

  v9[8] = 0;
  *(v9 + 1) = doc;
  *(v9 + 5) = v11;
  *(v9 + 6) = input;
  *v9 = xmlStrdup(filename);
  v12 = *(v10 + 8);
  *(v10 + 16) = v12;
  v13 = xmlXPathNewContext(v12);
  *(v10 + 24) = v13;
  if (!v13)
  {
    v148 = *MEMORY[0x1E69E9840];

    free(v10);
    return;
  }

  while (1)
  {
LABEL_9:
    v14 = *(v10 + 16);
    if (v14 == *(v10 + 8))
    {
LABEL_16:
      snprintf(__str, 0x1F4uLL, "%s > ");
      goto LABEL_17;
    }

    if (v14 && *(v14 + 16))
    {
      v15 = *(v14 + 72);
      if (!v15 || !*(v15 + 24))
      {
        goto LABEL_16;
      }

      snprintf(__str, 0x1F4uLL, "%s:%s > ");
    }

    else
    {
      strcpy(__str, "? > ");
    }

LABEL_17:
    HIBYTE(v238) = 0;
    v16 = (*(v10 + 48))(__str);
    v20 = v16;
    if (!v16)
    {
      break;
    }

    for (i = v16; ; i = (i + 1))
    {
      filename_low = LOBYTE(i->filename);
      if (filename_low != 9 && filename_low != 32)
      {
        break;
      }
    }

    for (j = 0; ; ++j)
    {
      if (filename_low <= 0x20u && ((1 << filename_low) & 0x100002601) != 0)
      {
        *(v206 + j) = 0;
        if (j)
        {
          goto LABEL_30;
        }

        goto LABEL_9;
      }

      if (j == 99)
      {
        break;
      }

      v24 = i + j;
      *(v206 + j) = filename_low;
      LOBYTE(filename_low) = v24[1];
    }

    HIBYTE(v207) = 0;
LABEL_30:
    for (k = i + j; ; ++k)
    {
      v26 = *k;
      if (v26 != 9 && v26 != 32)
      {
        break;
      }
    }

    for (m = 0; ; ++m)
    {
      if (v26 <= 0xDu && ((1 << v26) & 0x2401) != 0)
      {
        v30 = m;
        goto LABEL_43;
      }

      if (m == 399)
      {
        break;
      }

      v29 = &k[m];
      dtd[m] = v26;
      LOBYTE(v26) = v29[1];
    }

    v30 = 399;
LABEL_43:
    dtd[v30] = 0;
    if (!(LODWORD(v206[0]) ^ 0x74697865 | BYTE4(v206[0])) || !(LODWORD(v206[0]) ^ 0x74697571 | BYTE4(v206[0])) || LODWORD(v206[0]) == 6650210)
    {
      break;
    }

    if (!(LODWORD(v206[0]) ^ 0x706C6568 | BYTE4(v206[0])))
    {
      fwrite("\tbase         display XML base of the node\n", 0x2BuLL, 1uLL, *(v10 + 40));
      fwrite("\tsetbase URI  change the XML base of the node\n", 0x2EuLL, 1uLL, *(v10 + 40));
      fwrite("\tbye          leave shell\n", 0x1AuLL, 1uLL, *(v10 + 40));
      fwrite("\tcat [node]   display node or current node\n", 0x2BuLL, 1uLL, *(v10 + 40));
      fwrite("\tcd [path]    change directory to path or to root\n", 0x32uLL, 1uLL, *(v10 + 40));
      fwrite("\tdir [path]   dumps information about the node (namespace, attributes, content)\n", 0x50uLL, 1uLL, *(v10 + 40));
      fwrite("\tdu [path]    show the structure of the subtree under path or the current node\n", 0x4FuLL, 1uLL, *(v10 + 40));
      fwrite("\texit         leave shell\n", 0x1AuLL, 1uLL, *(v10 + 40));
      fwrite("\thelp         display this help\n", 0x20uLL, 1uLL, *(v10 + 40));
      fwrite("\tfree         display memory usage\n", 0x23uLL, 1uLL, *(v10 + 40));
      fwrite("\tload [name]  load a new document with name\n", 0x2CuLL, 1uLL, *(v10 + 40));
      fwrite("\tls [path]    list contents of path or the current directory\n", 0x3DuLL, 1uLL, *(v10 + 40));
      fwrite("\tset xml_fragment replace the current node content with the fragment parsed in context\n", 0x57uLL, 1uLL, *(v10 + 40));
      fwrite("\txpath expr   evaluate the XPath expression in that context and print the result\n", 0x51uLL, 1uLL, *(v10 + 40));
      fwrite("\tsetns nsreg  register a namespace to a prefix in the XPath evaluation context\n", 0x4FuLL, 1uLL, *(v10 + 40));
      fwrite("\t             format for nsreg is: prefix=[nsuri] (i.e. prefix= unsets a prefix)\n", 0x51uLL, 1uLL, *(v10 + 40));
      fwrite("\tsetrootns    register all namespace found on the root element\n", 0x3FuLL, 1uLL, *(v10 + 40));
      fwrite("\t             the default namespace if any uses 'defaultns' prefix\n", 0x43uLL, 1uLL, *(v10 + 40));
      fwrite("\tpwd          display current working directory\n", 0x30uLL, 1uLL, *(v10 + 40));
      fwrite("\twhereis      display absolute path of [path] or current working directory\n", 0x4BuLL, 1uLL, *(v10 + 40));
      fwrite("\tquit         leave shell\n", 0x1AuLL, 1uLL, *(v10 + 40));
      fwrite("\tsave [name]  save this document to name or the original name\n", 0x3EuLL, 1uLL, *(v10 + 40));
      fwrite("\twrite [name] write the current node to the filename\n", 0x35uLL, 1uLL, *(v10 + 40));
      fwrite("\tvalidate     check the document for errors\n", 0x2CuLL, 1uLL, *(v10 + 40));
      fwrite("\trelaxng rng  validate the document against the Relax-NG schemas\n", 0x41uLL, 1uLL, *(v10 + 40));
      fwrite("\tgrep string  search for a string in the subtree\n", 0x31uLL, 1uLL, *(v10 + 40));
      goto LABEL_139;
    }

    if (!(*&v206[0] ^ 0x65746164696C6176 | BYTE8(v206[0])))
    {
      xmlShellValidate(v10, dtd, v18, v19);
      goto LABEL_139;
    }

    if (!(LODWORD(v206[0]) ^ 0x64616F6C | BYTE4(v206[0])))
    {
      xmlShellLoad(v10, dtd, v18, v19);
      goto LABEL_139;
    }

    if (*&v206[0] == 0x676E78616C6572)
    {
      v38 = xmlRelaxNGNewParserCtxt(dtd);
      v39 = *__xmlGenericError();
      v40 = __xmlGenericError();
      xmlRelaxNGSetParserErrors(v38, v39, *v40, 0);
      v41 = xmlRelaxNGParse(v38);
      xmlRelaxNGFreeParserCtxt(v38);
      if (v41)
      {
        v42 = xmlRelaxNGNewValidCtxt(v41);
        v43 = *__xmlGenericError();
        v44 = __xmlGenericError();
        xmlRelaxNGSetValidErrors(v42, v43, *v44, 0);
        v45 = xmlRelaxNGValidateDoc(v42, *(v10 + 8));
        if (v45)
        {
          v46 = v45;
          v47 = *MEMORY[0x1E69E9848];
          v48 = *v10;
          if (v46 < 1)
          {
            fprintf(v47, "%s validation generated an internal error\n");
          }

          else
          {
            fprintf(v47, "%s fails to validate\n");
          }
        }

        else
        {
          v62 = *v10;
          fprintf(*MEMORY[0x1E69E9848], "%s validates\n");
        }

        xmlRelaxNGFreeValidCtxt(v42);
        xmlRelaxNGFree(v41);
        goto LABEL_139;
      }

      v35 = *__xmlGenericError();
      v36 = *__xmlGenericErrorContext();
      v37 = "Relax-NG schema %s failed to compile\n";
LABEL_126:
      v35(v36, v37);
      goto LABEL_139;
    }

    if (!(LODWORD(v206[0]) ^ 0x65766173 | BYTE4(v206[0])))
    {
      xmlShellSave(v10, dtd, v18, v19);
      goto LABEL_139;
    }

    if (LODWORD(v206[0]) == 1953067639 && WORD2(v206[0]) == 101)
    {
      if (dtd[0])
      {
        xmlShellWrite(v10, dtd, *(v10 + 16), v19);
        goto LABEL_139;
      }

      v35 = *__xmlGenericError();
      v36 = *__xmlGenericErrorContext();
      v37 = "Write command requires a filename argument\n";
      goto LABEL_126;
    }

    if (!(LODWORD(v206[0]) ^ 0x70657267 | BYTE4(v206[0])))
    {
      v49 = *(v10 + 16);
      if (!v49)
      {
        goto LABEL_139;
      }

      if (!xmlStrchr(dtd, 0x3Fu) && !xmlStrchr(dtd, 0x2Au) && !xmlStrchr(dtd, 0x2Eu))
      {
        xmlStrchr(dtd, 0x5Bu);
      }

      while (2)
      {
        v50 = *(v49 + 8);
        if (v50 == 3)
        {
          if (xmlStrstr(*(v49 + 80), dtd))
          {
            v57 = *(v10 + 40);
            NodePath = xmlGetNodePath(*(v49 + 40));
            fprintf(v57, "%s : ", NodePath);
            v56 = *(v49 + 40);
            v55 = v10;
LABEL_102:
            xmlShellList(v55, v53, v56, v54);
          }

LABEL_103:
          v50 = *(v49 + 8);
        }

        else if (v50 == 8)
        {
          if (xmlStrstr(*(v49 + 80), dtd))
          {
            v51 = *(v10 + 40);
            v52 = xmlGetNodePath(v49);
            fprintf(v51, "%s : ", v52);
            v55 = v10;
            v56 = v49;
            goto LABEL_102;
          }

          goto LABEL_103;
        }

        if ((v50 | 4) == 0xD)
        {
          v59 = *(v49 + 24);
        }

        else
        {
          v59 = *(v49 + 24);
          if (v50 == 5 || v59 == 0)
          {
            v59 = *(v49 + 48);
            if (!v59)
            {
              v61 = *(v49 + 40);
              while (1)
              {
                if (v61)
                {
                  v49 = v61;
                }

                v59 = *(v49 + 48);
                if (v59)
                {
                  break;
                }

                v61 = *(v49 + 40);
                if (!v61)
                {
                  goto LABEL_139;
                }
              }
            }
          }
        }

        v49 = v59;
        if (!v59)
        {
          goto LABEL_139;
        }

        continue;
      }
    }

    if (!(LODWORD(v206[0]) ^ 0x65657266 | BYTE4(v206[0])))
    {
      if (dtd[0])
      {
        *buffer = 0;
        sscanf(dtd, "%d", buffer);
        v63 = *(v10 + 40);
        v64 = *buffer;
      }

      else
      {
        v63 = *(v10 + 40);
        v64 = 0;
      }

      xmlMemShow(v63, v64);
      goto LABEL_139;
    }

    if (LODWORD(v206[0]) == 6584176)
    {
      v180 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      *buffer = 0u;
      if (xmlShellPwd(v16, buffer, *(v10 + 16), v19))
      {
        goto LABEL_139;
      }

      goto LABEL_128;
    }

    if (!(LOWORD(v206[0]) ^ 0x7564 | BYTE2(v206[0])))
    {
      v65 = *(v10 + 16);
      if (!dtd[0])
      {
        xmlShellDu(v10, v17, v65, v19);
        goto LABEL_139;
      }

      v66 = *(v10 + 24);
      v66->node = v65;
      v67 = xmlXPathEval(dtd, v66);
      if (!v67)
      {
        v73 = *__xmlGenericError();
        v74 = __xmlGenericErrorContext();
        v73(*v74, "%s: no such node\n", dtd);
        goto LABEL_181;
      }

      v70 = v67;
      type = v67->type;
      if (v67->type > XPATH_STRING)
      {
        if (type <= 6)
        {
          if (type == 5)
          {
            v72 = "%s is a point\n";
            goto LABEL_179;
          }

          if (type != 6)
          {
            goto LABEL_180;
          }
        }

        else if (type != 7)
        {
          if (type == 8)
          {
            v72 = "%s is user-defined\n";
          }

          else
          {
            if (type != 9)
            {
              goto LABEL_180;
            }

            v72 = "%s is an XSLT value tree\n";
          }

          goto LABEL_179;
        }

        v72 = "%s is a range\n";
      }

      else if (type <= 1)
      {
        v72 = "%s: no such node\n";
        if (type)
        {
          if (type == 1)
          {
            p_nodeNr = &v67->nodesetval->nodeNr;
            if (p_nodeNr)
            {
              if (*p_nodeNr >= 1)
              {
                v79 = 0;
                do
                {
                  xmlShellDu(v10, v68, *(*(p_nodeNr + 1) + 8 * v79++), v69);
                  p_nodeNr = &v70->nodesetval->nodeNr;
                }

                while (v79 < *p_nodeNr);
              }
            }
          }

          goto LABEL_180;
        }
      }

      else
      {
        switch(type)
        {
          case 2:
            v72 = "%s is a Boolean\n";
            break;
          case 3:
            v72 = "%s is a number\n";
            break;
          case 4:
            v72 = "%s is a string\n";
            break;
          default:
LABEL_180:
            xmlXPathFreeObject(v70);
LABEL_181:
            *(*(v10 + 24) + 8) = 0;
            goto LABEL_139;
        }
      }

LABEL_179:
      v89 = *__xmlGenericError();
      v90 = __xmlGenericErrorContext();
      v89(*v90, v72);
      goto LABEL_180;
    }

    if (!(LODWORD(v206[0]) ^ 0x65736162 | BYTE4(v206[0])))
    {
      xmlShellBase(v10, v17, *(v10 + 16), v19);
      goto LABEL_139;
    }

    if (LODWORD(v206[0]) == 7628147)
    {
      xmlShellSetContent(v10, dtd, *(v10 + 16));
      goto LABEL_139;
    }

    if (LODWORD(v206[0]) == 1853121907 && WORD2(v206[0]) == 115)
    {
      if (dtd[0])
      {
        xmlShellRegisterNamespace(v10, dtd);
        goto LABEL_139;
      }

      v35 = *__xmlGenericError();
      v36 = *__xmlGenericErrorContext();
      v37 = "setns: prefix=[nsuri] required\n";
      goto LABEL_126;
    }

    if (*&v206[0] == 0x6E746F6F72746573 && WORD4(v206[0]) == 115)
    {
      RootElement = xmlDocGetRootElement(*(v10 + 8));
      xmlShellRegisterRootNamespaces(v10, RootElement);
      goto LABEL_139;
    }

    if (LODWORD(v206[0]) == 1952542840 && WORD2(v206[0]) == 104)
    {
      if (dtd[0])
      {
        v76 = *(v10 + 24);
        v76->node = *(v10 + 16);
        v77 = xmlXPathEval(dtd, v76);
        xmlXPathDebugDumpObject(*(v10 + 40), v77, 0);
        xmlXPathFreeObject(v77);
        goto LABEL_139;
      }

      v35 = *__xmlGenericError();
      v36 = *__xmlGenericErrorContext();
      v37 = "xpath: expression required\n";
      goto LABEL_126;
    }

    if (*&v206[0] == 0x65736162746573)
    {
      xmlNodeSetBase(*(v10 + 16), dtd);
      goto LABEL_139;
    }

    if (!(LOWORD(v206[0]) ^ 0x736C | BYTE2(v206[0])) || LODWORD(v206[0]) == 7498084)
    {
      v80 = LODWORD(v206[0]) != 7498084;
      v81 = *(v10 + 16);
      if (!dtd[0])
      {
        if (LODWORD(v206[0]) == 7498084)
        {
          xmlShellDir(v10, v17, v81, v19);
        }

        else
        {
          xmlShellList(v10, v17, v81, v19);
        }

        goto LABEL_139;
      }

      v82 = *(v10 + 24);
      v82->node = v81;
      v83 = xmlXPathEval(dtd, v82);
      if (!v83)
      {
        goto LABEL_225;
      }

      v86 = v83;
      v87 = v83->type;
      if (v83->type <= XPATH_STRING)
      {
        if (v87 <= 1)
        {
          v88 = "%s: no such node\n";
          if (v87)
          {
            if (v87 == 1)
            {
              v114 = &v83->nodesetval->nodeNr;
              if (v114)
              {
                if (*v114 >= 1)
                {
                  v115 = 0;
                  do
                  {
                    v116 = *(*(v114 + 1) + 8 * v115);
                    if (v80)
                    {
                      xmlShellList(v10, v84, v116, v85);
                    }

                    else
                    {
                      xmlShellDir(v10, v84, v116, v85);
                    }

                    ++v115;
                    v114 = &v86->nodesetval->nodeNr;
                  }

                  while (v115 < *v114);
                }
              }
            }

            goto LABEL_244;
          }

          goto LABEL_243;
        }

LABEL_169:
        switch(v87)
        {
          case 2:
            v88 = "%s is a Boolean\n";
            goto LABEL_243;
          case 3:
            v88 = "%s is a number\n";
            goto LABEL_243;
          case 4:
            v88 = "%s is a string\n";
LABEL_243:
            v117 = *__xmlGenericError();
            v118 = __xmlGenericErrorContext();
            v117(*v118, v88);
            goto LABEL_244;
        }

        goto LABEL_244;
      }

LABEL_197:
      if (v87 <= 6)
      {
        if (v87 == 5)
        {
          v88 = "%s is a point\n";
          goto LABEL_243;
        }

        if (v87 != 6)
        {
          goto LABEL_244;
        }
      }

      else if (v87 != 7)
      {
        if (v87 == 8)
        {
          v88 = "%s is user-defined\n";
          goto LABEL_243;
        }

        if (v87 == 9)
        {
          v88 = "%s is an XSLT value tree\n";
          goto LABEL_243;
        }

LABEL_244:
        v119 = v86;
        goto LABEL_245;
      }

      v88 = "%s is a range\n";
      goto LABEL_243;
    }

    if (*&v206[0] == 0x73696572656877)
    {
      v180 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v158 = 0u;
      v159 = 0u;
      v156 = 0u;
      v157 = 0u;
      v154 = 0u;
      v155 = 0u;
      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      *buffer = 0u;
      v91 = *(v10 + 16);
      if (dtd[0])
      {
        v92 = *(v10 + 24);
        v92->node = v91;
        v93 = xmlXPathEval(dtd, v92);
        if (!v93)
        {
          goto LABEL_225;
        }

        v86 = v93;
        v87 = v93->type;
        if (v93->type <= XPATH_STRING)
        {
          if (v87 <= 1)
          {
            v88 = "%s: no such node\n";
            if (v87)
            {
              if (v87 == 1)
              {
                v95 = &v93->nodesetval->nodeNr;
                if (v95)
                {
                  if (*v95 >= 1)
                  {
                    v96 = 0;
                    do
                    {
                      LODWORD(v93) = xmlShellPwd(v93, buffer, *(*(v95 + 1) + 8 * v96), v94);
                      if (!v93)
                      {
                        v93 = fprintf(*(v10 + 40), "%s\n", buffer);
                      }

                      ++v96;
                      v95 = &v86->nodesetval->nodeNr;
                    }

                    while (v96 < *v95);
                  }
                }
              }

              goto LABEL_244;
            }

            goto LABEL_243;
          }

          goto LABEL_169;
        }

        goto LABEL_197;
      }

      if (xmlShellPwd(v16, buffer, v91, v19))
      {
        goto LABEL_139;
      }

LABEL_128:
      fprintf(*(v10 + 40), "%s\n", buffer);
      goto LABEL_139;
    }

    if (!(LOWORD(v206[0]) ^ 0x6463 | BYTE2(v206[0])))
    {
      if (!dtd[0])
      {
        *(v10 + 16) = *(v10 + 8);
        goto LABEL_139;
      }

      v97 = *(v10 + 24);
      v97->node = *(v10 + 16);
      v98 = strlen(dtd);
      if (v98 >= 2 && dtd[v98 - 1] == 47)
      {
        dtd[v98 - 1] = 0;
        v97 = *(v10 + 24);
      }

      v99 = xmlXPathEval(dtd, v97);
      if (v99)
      {
        v100 = v99;
        v101 = v99->type;
        if (v99->type <= XPATH_STRING)
        {
          if (v101 <= 1)
          {
            if (v101)
            {
              if (v101 == 1)
              {
                nodesetval = v99->nodesetval;
                if (nodesetval)
                {
                  if (nodesetval->nodeNr == 1)
                  {
                    v123 = *nodesetval->nodeTab;
                    *(v10 + 16) = v123;
                    if (v123 && v123->type == XML_NAMESPACE_DECL)
                    {
                      v124 = *__xmlGenericError();
                      v125 = __xmlGenericErrorContext();
                      v124(*v125, "cannot cd to namespace\n");
                      *(v10 + 16) = 0;
                    }
                  }

                  else
                  {
                    v144 = *__xmlGenericError();
                    v145 = *__xmlGenericErrorContext();
                    nodeNr = v100->nodesetval->nodeNr;
                    v144(v145, "%s is a %d Node Set\n");
                  }
                }

                else
                {
                  v142 = *__xmlGenericError();
                  v143 = *__xmlGenericErrorContext();
                  v142(v143, "%s is an empty Node Set\n");
                }
              }
            }

            else
            {
              v136 = *__xmlGenericError();
              v137 = *__xmlGenericErrorContext();
              v136(v137, "%s: no such node\n");
            }
          }

          else
          {
            switch(v101)
            {
              case 2:
                v130 = *__xmlGenericError();
                v131 = *__xmlGenericErrorContext();
                v130(v131, "%s is a Boolean\n");
                break;
              case 3:
                v132 = *__xmlGenericError();
                v133 = *__xmlGenericErrorContext();
                v132(v133, "%s is a number\n");
                break;
              case 4:
                v102 = *__xmlGenericError();
                v103 = *__xmlGenericErrorContext();
                v102(v103, "%s is a string\n");
                break;
            }
          }

          goto LABEL_294;
        }

        if (v101 <= 6)
        {
          if (v101 == 5)
          {
            v138 = *__xmlGenericError();
            v139 = *__xmlGenericErrorContext();
            v138(v139, "%s is a point\n");
            goto LABEL_294;
          }

          if (v101 != 6)
          {
LABEL_294:
            v119 = v100;
            goto LABEL_245;
          }
        }

        else if (v101 != 7)
        {
          if (v101 == 8)
          {
            v134 = *__xmlGenericError();
            v135 = *__xmlGenericErrorContext();
            v134(v135, "%s is user-defined\n");
          }

          else if (v101 == 9)
          {
            v120 = *__xmlGenericError();
            v121 = *__xmlGenericErrorContext();
            v120(v121, "%s is an XSLT value tree\n");
          }

          goto LABEL_294;
        }

        v126 = *__xmlGenericError();
        v127 = *__xmlGenericErrorContext();
        v126(v127, "%s is a range\n");
        goto LABEL_294;
      }

LABEL_225:
      v112 = *__xmlGenericError();
      v113 = __xmlGenericErrorContext();
      v112(*v113, "%s: no such node\n", dtd);
      goto LABEL_246;
    }

    if (LODWORD(v206[0]) != 7627107)
    {
      v35 = *__xmlGenericError();
      v36 = *__xmlGenericErrorContext();
      v37 = "Unknown command %s\n";
      goto LABEL_126;
    }

    v104 = *(v10 + 16);
    if (!dtd[0])
    {
      xmlShellCat(v10, v17, v104, v19);
      goto LABEL_139;
    }

    v105 = *(v10 + 24);
    v105->node = v104;
    v106 = xmlXPathEval(dtd, v105);
    if (!v106)
    {
      goto LABEL_225;
    }

    v109 = v106;
    v110 = v106->type;
    if (v106->type > XPATH_STRING)
    {
      if (v110 <= 6)
      {
        if (v110 != 5)
        {
          if (v110 != 6)
          {
            goto LABEL_291;
          }

          goto LABEL_280;
        }

        v111 = "%s is a point\n";
      }

      else
      {
        if (v110 != 7)
        {
          if (v110 == 8)
          {
            v111 = "%s is user-defined\n";
          }

          else
          {
            if (v110 != 9)
            {
              goto LABEL_291;
            }

            v111 = "%s is an XSLT value tree\n";
          }

          goto LABEL_290;
        }

LABEL_280:
        v111 = "%s is a range\n";
      }

LABEL_290:
      v140 = *__xmlGenericError();
      v141 = __xmlGenericErrorContext();
      v140(*v141, v111);
      goto LABEL_291;
    }

    if (v110 <= 1)
    {
      v111 = "%s: no such node\n";
      if (v110)
      {
        if (v110 == 1)
        {
          v128 = &v106->nodesetval->nodeNr;
          if (v128)
          {
            if (*v128 >= 1)
            {
              v129 = 0;
              do
              {
                if (v30)
                {
                  fwrite(" -------\n", 9uLL, 1uLL, *(v10 + 40));
                  v128 = &v109->nodesetval->nodeNr;
                }

                xmlShellCat(v10, v107, *(*(v128 + 1) + 8 * v129++), v108);
                v128 = &v109->nodesetval->nodeNr;
              }

              while (v129 < *v128);
            }
          }
        }

        goto LABEL_291;
      }

      goto LABEL_290;
    }

    switch(v110)
    {
      case 2:
        v111 = "%s is a Boolean\n";
        goto LABEL_290;
      case 3:
        v111 = "%s is a number\n";
        goto LABEL_290;
      case 4:
        v111 = "%s is a string\n";
        goto LABEL_290;
    }

LABEL_291:
    v119 = v109;
LABEL_245:
    xmlXPathFreeObject(v119);
LABEL_246:
    *(*(v10 + 24) + 8) = 0;
LABEL_139:
    free(v20);
  }

  xmlXPathFreeContext(*(v10 + 24));
  if (*(v10 + 32))
  {
    xmlFreeDoc(*(v10 + 8));
  }

  if (*v10)
  {
    free(*v10);
  }

  free(v10);
  if (v20)
  {
    free(v20);
  }

LABEL_301:
  v147 = *MEMORY[0x1E69E9840];
}

xmlNodePtr xmlShellSetContent(uint64_t a1, char *__s, xmlNode *a3)
{
  if (a3 && __s)
  {
    lst = 0;
    v6 = strlen(__s);
    if (xmlParseInNodeContext(a3, __s, v6, 0, &lst))
    {
      return fwrite("failed to parse content\n", 0x18uLL, 1uLL, *(a1 + 40));
    }

    else
    {
      children = a3->children;
      if (children)
      {
        xmlFreeNodeList(children);
        a3->children = 0;
        a3->last = 0;
      }

      return xmlAddChildList(a3, lst);
    }
  }

  else
  {
    v8 = *(a1 + 40);

    return fwrite("NULL\n", 5uLL, 1uLL, v8);
  }
}

void xmlShellRegisterNamespace(uint64_t a1, xmlChar *cur)
{
  v3 = xmlStrdup(cur);
  v4 = v3;
  while (v4)
  {
    v5 = v4;
    if (!*v4)
    {
      break;
    }

    v6 = xmlStrchr(v4, 0x3Du);
    if (!v6)
    {
      fwrite("setns: prefix=[nsuri] required\n", 0x1FuLL, 1uLL, *(a1 + 40));
      break;
    }

    *v6 = 0;
    v7 = (v6 + 1);
    v8 = xmlStrchr(v6 + 1, 0x20u);
    v4 = v8;
    if (v8)
    {
      *v8 = 0;
      v4 = v8 + 1;
    }

    if (xmlXPathRegisterNs(*(a1 + 24), v5, v7))
    {
      fprintf(*(a1 + 40), "Error: unable to register NS with prefix=%s and href=%s\n", v5, v7);
      break;
    }
  }

  free(v3);
}

uint64_t xmlShellRegisterRootNamespaces(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8) == 1)
    {
      v2 = *(a2 + 96);
      if (v2)
      {
        v3 = result;
        if (*(result + 24))
        {
          do
          {
            if (v2[3])
            {
              v4 = v2[3];
            }

            else
            {
              v4 = "defaultns";
            }

            result = xmlXPathRegisterNs(*(v3 + 24), v4, v2[2]);
            v2 = *v2;
          }

          while (v2);
        }
      }
    }
  }

  return result;
}

uint64_t xmlCtxtDumpSpaces(uint64_t result)
{
  if (!*(result + 144))
  {
    v1 = *result;
    if (*result)
    {
      v2 = *(result + 112);
      if (v2 >= 1)
      {
        if (v2 >= 0x32)
        {
          v3 = (result + 8);
        }

        else
        {
          v3 = (result + 8 - 2 * v2 + 100);
        }

        return fputs(v3, v1);
      }
    }
  }

  return result;
}

size_t xmlCtxtDumpString(size_t result, uint64_t a2)
{
  if (*(result + 144))
  {
    return result;
  }

  v3 = result;
  if (a2)
  {
    v4 = 0;
    while (1)
    {
      result = *(a2 + v4);
      if (result == 32)
      {
        goto LABEL_12;
      }

      if (!*(a2 + v4))
      {
        return result;
      }

      if ((result - 9) < 2 || result == 13)
      {
LABEL_12:
        v6 = *v3;
        LODWORD(result) = 32;
      }

      else
      {
        v6 = *v3;
        if ((result & 0x80) != 0)
        {
          fprintf(v6, "#%X", *(a2 + v4));
          goto LABEL_14;
        }
      }

      fputc(result, v6);
LABEL_14:
      if (++v4 == 40)
      {
        v7 = *v3;
        v8 = "...";
        v9 = 3;
        goto LABEL_19;
      }
    }
  }

  v7 = *result;
  v8 = "(NULL)";
  v9 = 6;
LABEL_19:

  return fwrite(v8, v9, 1uLL, v7);
}

uint64_t xmlCtxtGenericNodeCheck(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 64);
  if (*(a2 + 40))
  {
    if (*(a2 + 64))
    {
      goto LABEL_3;
    }

LABEL_11:
    result = xmlDebugErr(v3, 5014, "Node has no doc\n");
    goto LABEL_12;
  }

  result = xmlDebugErr(result, 5013, "Node has no parent\n");
  if (!*(a2 + 64))
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = *(v4 + 152);
  if (!v5 && !*(v3 + 152))
  {
    *(v3 + 152) = 1;
  }

  if (!*(v3 + 120))
  {
    *(v3 + 120) = v4;
  }

  if (!*(v3 + 136))
  {
    *(v3 + 136) = v5;
  }

LABEL_12:
  v6 = *(a2 + 40);
  if (v6)
  {
    if (*(a2 + 64) != *(v6 + 64))
    {
      result = xmlStrEqual(*(a2 + 16), "pseudoroot");
      if (!result)
      {
        result = xmlDebugErr(v3, 5017, "Node doc differs from parent's one\n");
      }
    }
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    if (*(v7 + 48) == a2)
    {
      goto LABEL_28;
    }

    v8 = "Node prev->next : back link wrong\n";
    v9 = v3;
    v10 = 5019;
    goto LABEL_27;
  }

  v11 = *(a2 + 40);
  if (*(a2 + 8) == 2)
  {
    if (v11 && *(v11 + 88) != a2)
    {
      v8 = "Attr has no prev and not first of attr list\n";
LABEL_26:
      v9 = v3;
      v10 = 5018;
LABEL_27:
      result = xmlDebugErr(v9, v10, v8);
    }
  }

  else if (v11 && *(v11 + 24) != a2)
  {
    v8 = "Node has no prev and not first of parent list\n";
    goto LABEL_26;
  }

LABEL_28:
  v12 = *(a2 + 48);
  if (v12)
  {
    if (*(v12 + 56) != a2)
    {
      result = xmlDebugErr(v3, 5021, "Node next->prev : forward link wrong\n");
      v12 = *(a2 + 48);
    }

    if (*(v12 + 40) != *(a2 + 40))
    {
      v13 = "Node next->prev : forward link wrong\n";
      v14 = v3;
      v15 = 5029;
LABEL_33:
      result = xmlDebugErr(v14, v15, v13);
    }
  }

  else
  {
    v16 = *(a2 + 40);
    if (v16 && *(a2 + 8) != 2 && *(v16 + 32) != a2 && *(v16 + 8) == 1)
    {
      v13 = "Node has no next and not last of parent list\n";
      v14 = v3;
      v15 = 5020;
      goto LABEL_33;
    }
  }

  v17 = *(a2 + 8);
  if (v17 == 2)
  {
    v19 = *(a2 + 72);
    if (!v19)
    {
      goto LABEL_66;
    }

LABEL_46:
    result = xmlCtxtNsCheckScope(v3, a2, v19);
    goto LABEL_47;
  }

  if (v17 != 1)
  {
    goto LABEL_48;
  }

  for (i = *(a2 + 96); i; i = *i)
  {
    result = xmlCtxtNsCheckScope(v3, a2, i);
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    goto LABEL_46;
  }

LABEL_47:
  v17 = *(a2 + 8);
LABEL_48:
  v20 = v17 > 0x10;
  v21 = (1 << v17) & 0x1E206;
  if (v20 || v21 == 0)
  {
    v31 = *(a2 + 80);
    if (v31)
    {
      if (*(v3 + 144))
      {
        result = xmlCheckUTF8(*(a2 + 80));
        if (!result)
        {
          result = xmlDebugErr3(v3, 5032, "String is not UTF-8 %s", v31);
        }
      }
    }
  }

  v23 = *(a2 + 8);
  if (v23 > 3)
  {
    if (v23 == 4)
    {
      v29 = *(a2 + 16);
      if (!v29)
      {
        return result;
      }

      v26 = "CData section has non NULL name '%s'";
      v27 = v3;
      v28 = 5037;
LABEL_71:

      return xmlDebugErr3(v27, v28, v26, v29);
    }

    if (v23 != 7)
    {
      if (v23 != 8)
      {
        return result;
      }

      v29 = *(a2 + 16);
      if (v29 == "comment")
      {
        return result;
      }

      v26 = "Comment node has wrong name '%s'";
      v27 = v3;
      v28 = 5036;
      goto LABEL_71;
    }
  }

  else if ((v23 - 1) >= 2)
  {
    if (v23 != 3)
    {
      return result;
    }

    v24 = *(a2 + 16);
    if (v24 == "text" || v24 == "textnoenc")
    {
      return result;
    }

    v25 = *(v3 + 136);
    if (v25)
    {
      result = xmlDictLookup(v25, "nbktext", 7);
      if (v24 == result)
      {
        return result;
      }

      v24 = *(a2 + 16);
    }

    v26 = "Text node has wrong name '%s'";
    v27 = v3;
    v28 = 5036;
    LOBYTE(v29) = v24;
    goto LABEL_71;
  }

LABEL_66:
  v30 = *(a2 + 16);

  return xmlCtxtCheckName(v3, v30);
}

uint64_t xmlCtxtNsCheckScope(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  v6 = v5 > 0x13;
  v7 = (1 << v5) & 0x8220E;
  if (!v6 && v7 != 0)
  {
    v9 = a2;
    do
    {
      v10 = *(v9 + 8);
      if (v10 > 0x13)
      {
        break;
      }

      if (((1 << v10) & 0xC) == 0)
      {
        if (((1 << v10) & 0x80002) == 0)
        {
          if (((1 << v10) & 0x2200) != 0 && *(v9 + 96) == a3)
          {
            return result;
          }

          break;
        }

        v11 = (v9 + 96);
        while (1)
        {
          v11 = *v11;
          if (!v11)
          {
            break;
          }

          if (v11 == a3)
          {
            return result;
          }

          result = xmlStrEqual(v11[3], *(a3 + 24));
          if (result)
          {
            goto LABEL_16;
          }
        }
      }

      v9 = *(v9 + 40);
    }

    while (v9);
    v12 = *(a3 + 24);
    if (v12)
    {
      v13 = "Reference to namespace '%s' not on ancestor\n";
      v14 = v4;
      v15 = 5031;
      goto LABEL_18;
    }

    v16 = "Reference to default namespace not on ancestor\n";
    v17 = v4;
    v18 = 5031;
    goto LABEL_22;
  }

LABEL_16:
  v12 = *(a3 + 24);
  if (!v12)
  {
    v16 = "Reference to default namespace not in scope\n";
    v17 = v4;
    v18 = 5030;
LABEL_22:

    return xmlDebugErr(v17, v18, v16);
  }

  v13 = "Reference to namespace '%s' not in scope\n";
  v14 = v4;
  v15 = 5030;
LABEL_18:

  return xmlDebugErr3(v14, v15, v13, v12);
}

uint64_t xmlCtxtCheckName(uint64_t result, xmlChar *value)
{
  if (*(result + 144))
  {
    v3 = result;
    if (value)
    {
      if (xmlValidateName(value, 0))
      {
        xmlDebugErr3(v3, 5034, "Name is not an NCName '%s'", value);
      }

      result = *(v3 + 136);
      if (result)
      {
        result = xmlDictOwns(result, value);
        if (!result)
        {
          v4 = *(v3 + 120);
          if (!v4 || (*(v4 + 169) & 0x12) == 0)
          {

            return xmlDebugErr3(v3, 5035, "Name is not from the document dictionary '%s'", value);
          }
        }
      }
    }

    else
    {

      return xmlDebugErr(result, 5015, "Name is NULL");
    }
  }

  return result;
}

_DWORD *xmlCtxtDumpDocHead(_DWORD *result, uint64_t a2)
{
  *(result + 16) = a2;
  v2 = *(a2 + 8);
  switch(v2)
  {
    case 1:
      v3 = "Misplaced ELEMENT node\n";
      v4 = 5000;
      return xmlDebugErr(result, v4, v3);
    case 2:
      v3 = "Misplaced ATTRIBUTE node\n";
      v4 = 5001;
      return xmlDebugErr(result, v4, v3);
    case 3:
      v3 = "Misplaced TEXT node\n";
      v4 = 5002;
      return xmlDebugErr(result, v4, v3);
    case 4:
      v3 = "Misplaced CDATA node\n";
      v4 = 5003;
      return xmlDebugErr(result, v4, v3);
    case 5:
      v3 = "Misplaced ENTITYREF node\n";
      v4 = 5004;
      return xmlDebugErr(result, v4, v3);
    case 6:
      v3 = "Misplaced ENTITY node\n";
      v4 = 5005;
      return xmlDebugErr(result, v4, v3);
    case 7:
      v3 = "Misplaced PI node\n";
      v4 = 5006;
      return xmlDebugErr(result, v4, v3);
    case 8:
      v3 = "Misplaced COMMENT node\n";
      v4 = 5007;
      return xmlDebugErr(result, v4, v3);
    case 9:
      if (result[36])
      {
        return result;
      }

      v5 = *result;
      v6 = "DOCUMENT\n";
      v7 = 9;
      return fwrite(v6, v7, 1uLL, v5);
    case 10:
      v3 = "Misplaced DOCTYPE node\n";
      v4 = 5008;
      return xmlDebugErr(result, v4, v3);
    case 11:
      v3 = "Misplaced FRAGMENT node\n";
      v4 = 5009;
      return xmlDebugErr(result, v4, v3);
    case 12:
      v3 = "Misplaced NOTATION node\n";
      v4 = 5010;
      return xmlDebugErr(result, v4, v3);
    case 13:
      if (result[36])
      {
        return result;
      }

      v5 = *result;
      v6 = "HTML DOCUMENT\n";
      v7 = 14;
      return fwrite(v6, v7, 1uLL, v5);
    default:
      return xmlDebugErr3(result, 5011, "Unknown node type %d\n", v2);
  }
}

size_t xmlCtxtDumpEntityCallback(size_t result, uint64_t a2)
{
  v3 = *(a2 + 144);
  if (result)
  {
    if (v3)
    {
      return result;
    }

    v4 = result;
    fprintf(*a2, "%s : ", *(result + 16));
    v5 = *(v4 + 92);
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        v6 = *a2;
        v7 = "INTERNAL GENERAL, ";
        v9 = 18;
        goto LABEL_20;
      }

      if (v5 != 2)
      {
        goto LABEL_33;
      }

      v6 = *a2;
      v7 = "EXTERNAL PARSED, ";
      v9 = 17;
    }

    else
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          v6 = *a2;
          v7 = "INTERNAL PARAMETER, ";
          goto LABEL_18;
        }

        if (v5 == 5)
        {
          v6 = *a2;
          v7 = "EXTERNAL PARAMETER, ";
LABEL_18:
          v9 = 20;
          goto LABEL_20;
        }

LABEL_33:
        xmlDebugErr3(a2, 5012, "Unknown entity type %d\n", v5);
        goto LABEL_21;
      }

      v6 = *a2;
      v7 = "EXTERNAL UNPARSED, ";
      v9 = 19;
    }

LABEL_20:
    fwrite(v7, v9, 1uLL, v6);
LABEL_21:
    if (*(v4 + 96))
    {
      fprintf(*a2, "ID %s", *(v4 + 96));
    }

    if (*(v4 + 104))
    {
      fprintf(*a2, "SYSTEM %s", *(v4 + 104));
    }

    if (*(v4 + 72))
    {
      fprintf(*a2, "\n orig %s", *(v4 + 72));
    }

    if (*(v4 + 8) != 1 && *(v4 + 80))
    {
      fprintf(*a2, "\n content %s", *(v4 + 80));
    }

    v10 = *a2;

    return fputc(10, v10);
  }

  if (!v3)
  {
    v8 = *a2;

    return fwrite("Entity is NULL", 0xEuLL, 1uLL, v8);
  }

  return result;
}

_DWORD *xmlCtxtDumpDtdNode(uint64_t a1, uint64_t a2)
{
  xmlCtxtDumpSpaces(a1);
  if (*(a2 + 8) == 14)
  {
    if (!*(a1 + 144))
    {
      v4 = *a1;
      if (*(a2 + 16))
      {
        fprintf(v4, "DTD(%s)", *(a2 + 16));
      }

      else
      {
        fwrite("DTD", 3uLL, 1uLL, v4);
      }

      if (*(a2 + 104))
      {
        fprintf(*a1, ", PUBLIC %s", *(a2 + 104));
      }

      if (*(a2 + 112))
      {
        fprintf(*a1, ", SYSTEM %s", *(a2 + 112));
      }

      fputc(10, *a1);
    }

    return xmlCtxtGenericNodeCheck(a1, a2);
  }

  else
  {

    return xmlDebugErr(a1, 5022, "Node is not a DTD");
  }
}

_DWORD *xmlCtxtDumpNamespace(size_t a1, uint64_t a2)
{
  result = xmlCtxtDumpSpaces(a1);
  if (*(a2 + 8) == 18)
  {
    if (*(a2 + 16))
    {
      if (!*(a1 + 144))
      {
        v9 = *a1;
        if (*(a2 + 24))
        {
          fprintf(v9, "namespace %s href=", *(a2 + 24));
        }

        else
        {
          fwrite("default namespace href=", 0x17uLL, 1uLL, v9);
        }

        xmlCtxtDumpString(a1, *(a2 + 16));
        v10 = *a1;

        return fputc(10, v10);
      }

      return result;
    }

    v8 = *(a2 + 24);
    if (v8)
    {

      return xmlDebugErr3(a1, 5028, "Incomplete namespace %s href=NULL\n", v8);
    }

    v5 = "Incomplete default namespace href=NULL\n";
    v6 = a1;
    v7 = 5028;
  }

  else
  {
    v5 = "Node is not a namespace declaration";
    v6 = a1;
    v7 = 5027;
  }

  return xmlDebugErr(v6, v7, v5);
}

xmlDictPtr xmlDictCreateSub(xmlDictPtr sub)
{
  v2 = xmlDictCreate();
  v3 = v2;
  if (sub && v2)
  {
    *(v2 + 12) = *(sub + 12);
    *(v2 + 5) = sub;
    xmlDictReference(sub);
  }

  return v3;
}

uint64_t xmlDictGrow(uint64_t a1, unint64_t a2)
{
  if (a2 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = 32 * a2;
  v7 = malloc_type_malloc(32 * a2, 0x1070040F9ABC4D2uLL);
  *(a1 + 8) = v7;
  if (!v7)
  {
    *(a1 + 8) = v3;
    return 0xFFFFFFFFLL;
  }

  bzero(v7, v6);
  *(a1 + 16) = a2;
  v8 = 0;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v10 = &v3[4 * i];
      if (*(v10 + 5))
      {
        if (v5 == 128)
        {
          v11 = *(a1 + 16);
          v12 = *(v10 + 1);
          v13 = *(v10 + 4);
          if (v11 == 128)
          {
            v14 = xmlDictComputeFastKey(v12, v13, *(a1 + 48));
            v11 = 128;
          }

          else
          {
            if (v12)
            {
              v23 = v13 < 1;
            }

            else
            {
              v23 = 1;
            }

            if (v23)
            {
              v14 = 0;
            }

            else
            {
              v24 = *(a1 + 48);
              do
              {
                v25 = *v12++;
                v24 = (1025 * (v24 + v25)) ^ ((1025 * (v24 + v25)) >> 6);
                --v13;
              }

              while (v13);
              v14 = 32769 * ((9 * v24) ^ ((9 * v24) >> 11));
            }
          }
        }

        else
        {
          v14 = *(v10 + 3);
          v11 = *(a1 + 16);
        }

        v15 = v14 % v11;
        v16 = *(a1 + 8) + 32 * (v14 % v11);
        if (*(v16 + 20))
        {
          v17 = malloc_type_malloc(0x20uLL, 0x1070040F9ABC4D2uLL);
          if (v17)
          {
            v18 = *(v10 + 1);
            v19 = *(v10 + 4);
            v17[3] = v14;
            v20 = *(a1 + 8);
            *v17 = *(v20 + 32 * v15);
            v17[1] = v18;
            *(v17 + 4) = v19;
            *(v17 + 5) = 1;
            *(v20 + 32 * v15) = v17;
          }

          else
          {
            v8 = 0xFFFFFFFFLL;
          }
        }

        else
        {
          v21 = *(v10 + 1);
          *v16 = *v10;
          *(v16 + 16) = v21;
          v22 = (*(a1 + 8) + 32 * v15);
          *v22 = 0;
          v22[3] = v14;
        }
      }
    }

    for (j = 0; j != v5; ++j)
    {
      v27 = v3[4 * j];
      if (v27)
      {
        do
        {
          v34 = *v27;
          if (v5 == 128)
          {
            v35 = *(a1 + 16);
            v31 = *(v27 + 1);
            v33 = v27[4];
            if (v35 == 128)
            {
              v29 = xmlDictComputeFastKey(v31, v33, *(a1 + 48));
              v35 = 128;
            }

            else
            {
              if (v31)
              {
                v28 = v33 < 1;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                v29 = 0;
              }

              else
              {
                v30 = *(a1 + 48);
                do
                {
                  v32 = *v31++;
                  v30 = (1025 * (v30 + v32)) ^ ((1025 * (v30 + v32)) >> 6);
                  --v33;
                }

                while (v33);
                v29 = 32769 * ((9 * v30) ^ ((9 * v30) >> 11));
              }
            }
          }

          else
          {
            v29 = *(v27 + 3);
            v35 = *(a1 + 16);
          }

          v36 = v29 % v35;
          v37 = *(a1 + 8) + 32 * (v29 % v35);
          if (*(v37 + 20))
          {
            *v27 = *v37;
            *(v27 + 3) = v29;
            *v37 = v27;
          }

          else
          {
            v38 = *(v27 + 1);
            *v37 = *v27;
            *(v37 + 16) = v38;
            v39 = *(a1 + 8) + 32 * v36;
            *v39 = 0;
            *(v39 + 20) = 1;
            *(v39 + 24) = v29;
            free(v27);
          }

          v27 = v34;
        }

        while (v34);
      }
    }
  }

  free(v3);
  return v8;
}

const xmlChar *__cdecl xmlDictExists(xmlDictPtr dict, const xmlChar *name, int len)
{
  v3 = 0;
  if (dict && name)
  {
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
    if (!*(v15 + 20))
    {
      goto LABEL_50;
    }

    while (*v15)
    {
      v16 = v15;
      v15 = *v15;
      if (*(v16 + 24) == v10 && v6 == *(v16 + 16))
      {
        v3 = *(v16 + 8);
        if (!memcmp(v3, name, v6))
        {
          return v3;
        }
      }
    }

    if (*(v15 + 24) != v10 || v6 != *(v15 + 16) || (v3 = *(v15 + 8), memcmp(v3, name, v6)))
    {
LABEL_50:
      v17 = *(dict + 5);
      if (!v17)
      {
        return 0;
      }

      v18 = *(v17 + 16);
      if (v9 == 128)
      {
        if (v18 != 128)
        {
          if (v6 < 1)
          {
            v10 = 0;
          }

          else
          {
            v19 = *(v17 + 48);
            v20 = v6 & 0x7FFFFFFF;
            v21 = name;
            do
            {
              v22 = *v21++;
              v19 = (1025 * (v19 + v22)) ^ ((1025 * (v19 + v22)) >> 6);
              --v20;
            }

            while (v20);
            v10 = 32769 * ((9 * v19) ^ ((9 * v19) >> 11));
          }
        }
      }

      else if (v18 == 128)
      {
        v10 = xmlDictComputeFastKey(name, v6, *(v17 + 48));
        v18 = 128;
      }

      v23 = *(v17 + 8) + 32 * (v10 % v18);
      if (!*(v23 + 20))
      {
        return 0;
      }

      while (*v23)
      {
        v24 = v23;
        v23 = *v23;
        if (*(v24 + 24) == v10 && v6 == *(v24 + 16))
        {
          v3 = *(v24 + 8);
          if (!memcmp(v3, name, v6))
          {
            return v3;
          }
        }
      }

      if (*(v23 + 24) != v10)
      {
        return 0;
      }

      if (v6 != *(v23 + 16))
      {
        return 0;
      }

      v3 = *(v23 + 8);
      if (memcmp(v3, name, v6))
      {
        return 0;
      }
    }
  }

  return v3;
}