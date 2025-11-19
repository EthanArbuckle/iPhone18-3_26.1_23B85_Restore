xmlChar *xmlXPathParseQName(xmlXPathParserContext *a1, xmlChar **a2)
{
  *a2 = 0;
  result = xmlXPathParseNCName(a1);
  if (result && *a1->cur == 58)
  {
    *a2 = result;
    if (*a1->cur)
    {
      ++a1->cur;
    }

    return xmlXPathParseNCName(a1);
  }

  return result;
}

void xmlXPathErr(xmlXPathParserContextPtr ctxt, int error)
{
  if (error >= 0x1B)
  {
    v2 = 27;
  }

  else
  {
    v2 = error;
  }

  if (!ctxt)
  {
    v16 = (&xmlXPathErrorMessages)[v2];
    *cur = 0u;
    *v15 = 0u;
    v13 = v2 + 1200;
LABEL_12:
    __xmlRaiseError(0, 0, 0, 0, 0, 0xCu, v13, 2, 0, 0, cur[0], cur[1], *v15, v15[2], v15[3], "%s", v16);
    return;
  }

  ctxt->error = v2;
  context = ctxt->context;
  if (!context)
  {
    *v15 = 0;
    v16 = (&xmlXPathErrorMessages)[v2];
    *&v15[2] = LODWORD(ctxt->cur) - ctxt->base;
    v13 = v2 + 1200;
    *cur = ctxt->base;
    goto LABEL_12;
  }

  xmlResetError(&context->lastError);
  v5 = ctxt->context;
  v5->lastError.domain = 12;
  v5->lastError.code = v2 + 1200;
  v5->lastError.level = XML_ERR_ERROR;
  v6 = xmlStrdup(ctxt->base);
  v7 = ctxt->context;
  v7->lastError.str1 = v6;
  base = ctxt->base;
  v9 = LODWORD(ctxt->cur) - base;
  v7->lastError.int1 = v9;
  debugNode = v7->debugNode;
  v7->lastError.node = debugNode;
  v11 = v7->error;
  if (v11)
  {
    userData = v7->userData;

    v11(userData, &v7->lastError);
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, debugNode, 0xCu, v2 + 1200, 2, 0, 0, base, 0, 0, v9, 0, "%s", (&xmlXPathErrorMessages)[v2]);
  }
}

uint64_t xmlXPathCompOpEvalToBoolean(uint64_t a1, unsigned int *a2, int a3)
{
  while (1)
  {
    if (linkedOnOrAfterFall2022OSVersions() && *(*(a1 + 24) + 352) && (xmlXPathCheckOpLimit(a1, 1uLL) & 0x80000000) != 0)
    {
      return 0;
    }

    BOOLval = *a2;
    if (BOOLval != 17)
    {
      break;
    }

    v7 = a2[1];
    if (v7 == -1)
    {
      return 0;
    }

    a2 = (*(*(a1 + 56) + 8) + 56 * v7);
  }

  if (!BOOLval)
  {
    return BOOLval;
  }

  if (BOOLval == 10)
  {
    v10 = a2[1];
    if (v10 != -1)
    {
      xmlXPathCompOpEval(a1, *(*(a1 + 56) + 8) + 56 * v10);
      if (*(a1 + 16))
      {
        return 0xFFFFFFFFLL;
      }

      xmlXPathNodeCollectAndTest(a1);
LABEL_19:
      if (!*(a1 + 16))
      {
        v11 = *(a1 + 40);
        if (v11 >= 1)
        {
          v12 = *(a1 + 48);
          v13 = v11 - 1;
          *(a1 + 40) = v11 - 1;
          v14 = v11 == 1 ? 0 : *(v12 + 8 * v11 - 16);
          *(a1 + 32) = v14;
          v16 = *(v12 + 8 * v13);
          *(v12 + 8 * v13) = 0;
          if (v16)
          {
            if (v16->type == XPATH_BOOLEAN)
            {
              BOOLval = v16->BOOLval;
            }

            else
            {
              if (a3)
              {
                v17 = xmlXPathEvaluatePredicateResult(a1, v16);
              }

              else
              {
                v17 = xmlXPathCastToBoolean(v16);
              }

              BOOLval = v17;
            }

            xmlXPathReleaseObject(*(a1 + 24), v16);
            return BOOLval;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  if (BOOLval != 11)
  {
    xmlXPathCompOpEval(a1, a2);
    goto LABEL_19;
  }

  v8 = *(a2 + 3);
  if (a3)
  {

    return xmlXPathEvaluatePredicateResult(a1, v8);
  }

  else
  {
    v15 = *(a2 + 3);

    return xmlXPathCastToBoolean(v15);
  }
}

void xmlXPathNodeSetFilter(xmlXPathParserContext *a1, int *a2, int a3, int a4, int a5, int a6)
{
  v6 = *a2;
  if (!*a2)
  {
    return;
  }

  if (v6 < a4)
  {

    xmlXPathNodeSetClearFromPos(a2, 0, a6);
    return;
  }

  context = a1->context;
  v29 = *&context->doc;
  v10 = *&context->contextSize;
  v11 = *(a1->comp + 1);
  context->contextSize = v6;
  if (v6 >= 1)
  {
    v13 = 0;
    v14 = 0;
    v31 = (v11 + 56 * a3);
    v15 = 1;
    while (1)
    {
      v16 = *(*(a2 + 1) + 8 * v13);
      context->node = v16;
      v17 = v13 + 1;
      context->proximityPosition = v13 + 1;
      if (*(v16 + 8) != 18)
      {
        v18 = *(v16 + 64);
        if (v18)
        {
          context->doc = v18;
        }
      }

      v19 = xmlXPathCompOpEvalToBoolean(a1, v31, 1);
      if (a1->error)
      {
LABEL_30:
        if (a6)
        {
          goto LABEL_31;
        }

        goto LABEL_37;
      }

      v20 = v19;
      if (v19 < 0)
      {
        xmlXPathErr(a1, 7);
        goto LABEL_30;
      }

      if (v19 && v15 >= a4 && v15 <= a5)
      {
        if (v13 != v14)
        {
          *(*(a2 + 1) + 8 * v14) = v16;
          *(*(a2 + 1) + 8 * v13) = 0;
        }

        ++v14;
      }

      else
      {
        *(*(a2 + 1) + 8 * v13) = 0;
        if (*(v16 + 8) == 18)
        {
          xmlXPathNodeSetFreeNs(v16);
        }

        if (!v20)
        {
          goto LABEL_24;
        }
      }

      if (v15 == a5)
      {
        LODWORD(v13) = v13 + 1;
        goto LABEL_30;
      }

      ++v15;
LABEL_24:
      ++v13;
      if (v17 >= *a2)
      {
        LODWORD(v13) = v17;
        goto LABEL_30;
      }
    }
  }

  LODWORD(v13) = 0;
  v14 = 0;
  if (a6)
  {
LABEL_31:
    v21 = *a2;
    if (v13 < *a2)
    {
      v13 = v13;
      do
      {
        v22 = *(*(a2 + 1) + 8 * v13);
        if (v22 && *(v22 + 8) == 18)
        {
          xmlXPathNodeSetFreeNs(v22);
          v21 = *a2;
        }

        ++v13;
      }

      while (v13 < v21);
    }
  }

LABEL_37:
  *a2 = v14;
  v23 = a2[1];
  if (v23 >= 11 && v14 < (v23 >> 1))
  {
    if (v14 <= 10)
    {
      v25 = 10;
    }

    else
    {
      v25 = v14;
    }

    v26 = malloc_type_realloc(*(a2 + 1), 8 * v25, 0x2004093837F09uLL);
    if (v26)
    {
      *(a2 + 1) = v26;
      a2[1] = v25;
    }

    else
    {
      if (a1)
      {
        a1->error = 15;
        v27 = a1->context;
      }

      else
      {
        v27 = 0;
      }

      xmlXPathErrMemory(v27, "shrinking nodeset\n");
    }
  }

  *&context->doc = v29;
  *&context->contextSize = v10;
}

void xmlXPathCompOpEvalPredicate(xmlXPathParserContext *a1, uint64_t a2, int *a3, int a4, int a5, uint64_t a6)
{
  v12 = *(a2 + 4);
  if (v12 == -1)
  {
    goto LABEL_14;
  }

  comp = a1->comp;
  if (*(*(comp + 1) + 56 * v12) != 15)
  {
    v18 = *__xmlGenericError();
    v19 = __xmlGenericErrorContext();
    v18(*v19, "xmlXPathCompOpEvalPredicate: Expected a predicate\n");
    v16 = a1;
    v17 = 10;
    goto LABEL_7;
  }

  if (linkedOnOrAfterFall2022OSVersions())
  {
    context = a1->context;
    depth = context->depth;
    if (depth >= 5000)
    {
      v16 = a1;
      v17 = 26;
LABEL_7:

      xmlXPathErr(v16, v17);
      return;
    }

    context->depth = depth + 1;
  }

  xmlXPathCompOpEvalPredicate(a1, *(comp + 1) + 56 * *(a2 + 4), a3, 1, *a3, a6);
  if (linkedOnOrAfterFall2022OSVersions())
  {
    --a1->context->depth;
  }

  if (!a1->error)
  {
LABEL_14:
    v20 = *(a2 + 8);
    if (v20 != -1)
    {

      xmlXPathNodeSetFilter(a1, a3, v20, a4, a5, a6);
    }
  }
}

xmlXPathObjectPtr xmlXPathCacheObjectCopy(uint64_t a1, xmlXPathObjectPtr val)
{
  if (!val)
  {
    return 0;
  }

  if (!a1 || !*(a1 + 344))
  {
    goto LABEL_16;
  }

  type = val->type;
  if (val->type > XPATH_BOOLEAN)
  {
    if (type == XPATH_NUMBER)
    {
      floatval = val->floatval;

      return xmlXPathCacheNewFloat(floatval, a1);
    }

    if (type == XPATH_STRING)
    {
      stringval = val->stringval;

      return xmlXPathCacheNewString(a1, stringval);
    }

LABEL_16:

    return xmlXPathObjectCopy(val);
  }

  if (type != XPATH_NODESET)
  {
    if (type == XPATH_BOOLEAN)
    {
      BOOLval = val->BOOLval;

      return xmlXPathCacheNewBoolean(a1, BOOLval);
    }

    goto LABEL_16;
  }

  v7 = xmlXPathNodeSetMerge(0, val->nodesetval);

  return xmlXPathCacheWrapNodeSet(a1, v7);
}

xmlXPathObjectPtr xmlXPathObjectCopy(xmlXPathObjectPtr val)
{
  if (!val)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (!v2)
  {
    xmlXPathErrMemory(0, "copying object\n");
    return v3;
  }

  *&v2->type = *&val->type;
  v4 = *&val->BOOLval;
  v5 = *&val->stringval;
  v6 = *&val->index;
  *&v2->index2 = *&val->index2;
  *&v2->stringval = v5;
  *&v2->index = v6;
  *&v2->BOOLval = v4;
  type = val->type;
  if (val->type <= XPATH_RANGE)
  {
    if (type == XPATH_UNDEFINED)
    {
      v8 = *__xmlGenericError();
      v9 = __xmlGenericErrorContext();
      v8(*v9, "xmlXPathObjectCopy: unsupported type %d\n", val->type);
      return v3;
    }

    if (type != XPATH_NODESET)
    {
      if (type == XPATH_STRING)
      {
        v2->stringval = xmlStrdup(val->stringval);
      }

      return v3;
    }

LABEL_13:
    v2->nodesetval = xmlXPathNodeSetMerge(0, val->nodesetval);
    v3->BOOLval = 0;
    return v3;
  }

  switch(type)
  {
    case XPATH_LOCATIONSET:
      v2->user = xmlXPtrLocationSetMerge(0, val->user);
      return v3;
    case XPATH_USERS:
      v2->user = val->user;
      return v3;
    case XPATH_XSLT_TREE:
      goto LABEL_13;
  }

  return v3;
}

xmlNodePtr xmlXPathNextAttribute(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    children = ctxt->children;
    if (children)
    {
      v3 = *&children->type;
      if (v3)
      {
        if (*(v3 + 8) == 1)
        {
          if (cur)
          {
            p_next = &cur->next;
            return *p_next;
          }

          if (v3 != children->_private)
          {
            p_next = (v3 + 88);
            return *p_next;
          }
        }
      }
    }

    return 0;
  }

  return ctxt;
}

xmlXPathFunction xmlXPathFunctionLookup(xmlXPathFunction ctxt, const xmlChar *name)
{
  if (ctxt)
  {
    v3 = ctxt;
    v4 = *(ctxt + 23);
    if (!v4 || (ctxt = v4(*(ctxt + 24), name, 0)) == 0)
    {

      return xmlXPathFunctionLookupNS(v3, name, 0);
    }
  }

  return ctxt;
}

xmlXPathFunction xmlXPathFunctionLookupNS(xmlXPathContextPtr ctxt, const xmlChar *name, const xmlChar *ns_uri)
{
  result = 0;
  if (ctxt)
  {
    if (name)
    {
      funcLookupFunc = ctxt->funcLookupFunc;
      if (!funcLookupFunc || (result = (funcLookupFunc)(ctxt->funcLookupData, name, ns_uri)) == 0)
      {
        result = ctxt->funcHash;
        if (result)
        {

          return xmlHashLookup2(result, name, ns_uri);
        }
      }
    }
  }

  return result;
}

xmlChar *__cdecl xmlXPathCastNodeSetToString(xmlNodeSetPtr ns)
{
  if (!ns)
  {
    goto LABEL_7;
  }

  nodeNr = ns->nodeNr;
  if (!nodeNr)
  {
    goto LABEL_7;
  }

  nodeTab = ns->nodeTab;
  if (!nodeTab)
  {
    goto LABEL_7;
  }

  if (nodeNr >= 2)
  {
    libxml_domnode_tim_sort(nodeTab, nodeNr);
    nodeTab = ns->nodeTab;
  }

  result = xmlNodeGetContent(*nodeTab);
  if (!result)
  {
LABEL_7:

    return xmlStrdup("");
  }

  return result;
}

xmlXPathObjectPtr xmlXPathCacheConvertString(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 > 3)
  {
    if ((v4 - 5) < 4)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 2735);
LABEL_4:
      xmlXPathReleaseObject(a1, a2);
LABEL_20:

      return xmlXPathCacheNewCString(a1);
    }

    if (v4 == 4)
    {
      return a2;
    }

    if (v4 != 9)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  switch(v4)
  {
    case 1:
LABEL_11:
      v7 = xmlXPathCastNodeSetToString(*(a2 + 1));
      break;
    case 2:
      if (a2[4])
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      v7 = xmlStrdup(v8);
      break;
    case 3:
      v7 = xmlXPathCastNumberToString(*(a2 + 3));
      break;
    default:
      goto LABEL_4;
  }

  v9 = v7;
  xmlXPathReleaseObject(a1, a2);
  if (!v9)
  {
    goto LABEL_20;
  }

  return xmlXPathCacheWrapString(a1, v9);
}

void xmlXPathStringLengthFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  v2 = ctxt;
  if (nargs)
  {
    if (!ctxt)
    {
      return;
    }

    if (nargs == 1)
    {
      valueNr = ctxt->valueNr;
      if (valueNr <= 0)
      {
        v13 = 23;
      }

      else
      {
        value = ctxt->value;
        if (value)
        {
          if (value->type == XPATH_STRING)
          {
            goto LABEL_7;
          }

          xmlXPathStringFunction(ctxt, 1);
          v15 = v2->value;
          if (v15 && *v15 == 4)
          {
            valueNr = v2->valueNr;
            if (valueNr < 1)
            {
              v16 = 0;
LABEL_33:
              context = v2->context;
              v18 = xmlUTF8Strlen(v16->stringval);
              v19 = xmlXPathCacheNewFloat(v18, context);
              valuePush(v2, v19);
              v20 = v2->context;

              xmlXPathReleaseObject(v20, v16);
              return;
            }

LABEL_7:
            valueTab = v2->valueTab;
            v6 = valueNr - 1;
            v2->valueNr = valueNr - 1;
            if (valueNr == 1)
            {
              v7 = 0;
            }

            else
            {
              v7 = valueTab[valueNr - 2];
            }

            v2->value = v7;
            v16 = valueTab[v6];
            valueTab[v6] = 0;
            goto LABEL_33;
          }
        }

        ctxt = v2;
        v13 = 11;
      }
    }

    else
    {
      v13 = 12;
    }

    xmlXPathErr(ctxt, v13);
  }

  else if (ctxt)
  {
    v8 = ctxt->context;
    if (v8)
    {
      if (v8->node)
      {
        Content = xmlNodeGetContent(v8->node);
        if (!Content)
        {
          Content = xmlStrdup("");
        }

        v10 = v2->context;
        v11 = xmlUTF8Strlen(Content);
        v12 = xmlXPathCacheNewFloat(v11, v10);
        valuePush(v2, v12);

        free(Content);
      }

      else
      {
        v14 = xmlXPathCacheNewFloat(0.0, v8);

        valuePush(v2, v14);
      }
    }
  }
}

void xmlXPathStringFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs == 1)
  {
    valueNr = ctxt->valueNr;
    if (valueNr <= 0)
    {
      v10 = 23;
    }

    else
    {
      valueTab = ctxt->valueTab;
      v8 = valueNr - 1;
      ctxt->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = valueTab[valueNr - 2];
      }

      ctxt->value = v9;
      v11 = valueTab[v8];
      valueTab[v8] = 0;
      if (v11)
      {
        v5 = xmlXPathCacheConvertString(ctxt->context, v11);
LABEL_16:

        valuePush(ctxt, v5);
        return;
      }

      v10 = 10;
    }
  }

  else
  {
    if (!nargs)
    {
      context = ctxt->context;
      Content = xmlNodeGetContent(context->node);
      if (!Content)
      {
        Content = xmlStrdup("");
      }

      v5 = xmlXPathCacheWrapString(context, Content);
      goto LABEL_16;
    }

    v10 = 12;
  }

  xmlXPathErr(ctxt, v10);
}

xmlXPathObjectPtr xmlXPathCacheWrapString(uint64_t a1, xmlChar *val)
{
  if (a1)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        v4 = *(v3 + 2);
        if (v4)
        {
          v5 = *v3;
          v6 = v4 - 1;
          *(v3 + 2) = v6;
          result = *(v5 + 8 * v6);
LABEL_9:
          result->type = XPATH_STRING;
          result->stringval = val;
          return result;
        }
      }

      v8 = *(v2 + 32);
      if (v8)
      {
        v9 = *(v8 + 2);
        if (v9)
        {
          v10 = *v8;
          v11 = v9 - 1;
          *(v8 + 2) = v11;
          result = *(v10 + 8 * v11);
          goto LABEL_9;
        }
      }
    }
  }

  return xmlXPathWrapString(val);
}

xmlXPathObjectPtr xmlXPathWrapString(xmlChar *val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 4;
    *(v2 + 4) = val;
  }

  else
  {
    xmlXPathErrMemory(0, "creating string object\n");
  }

  return v3;
}

int xmlUTF8Strlen(const xmlChar *utf)
{
  if (!utf)
  {
    return -1;
  }

  v1 = *utf;
  if (!*utf)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = utf + 1;
    if ((v1 & 0x80) != 0)
    {
      if ((*v3 & 0xC0) != 0x80)
      {
        return -1;
      }

      v3 = utf + 2;
      if ((~v1 & 0xE0) == 0)
      {
        if ((*v3 & 0xC0) != 0x80)
        {
          return -1;
        }

        if ((~v1 & 0xF0) != 0)
        {
          v3 = utf + 3;
        }

        else
        {
          if ((v1 & 0xF8) != 0xF0 || (utf[3] & 0xC0) != 0x80)
          {
            return -1;
          }

          v3 = utf + 4;
        }
      }
    }

    ++v2;
    v1 = *v3;
    utf = v3;
  }

  while (*v3);
  if (v2 >> 31)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void xmlXPathSubValues(xmlXPathParserContextPtr ctxt)
{
  v1 = ctxt;
  if (!ctxt)
  {
    goto LABEL_12;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    goto LABEL_12;
  }

  valueTab = ctxt->valueTab;
  v4 = valueNr - 1;
  ctxt->valueNr = valueNr - 1;
  v5 = valueNr == 1 ? 0 : valueTab[valueNr - 2];
  ctxt->value = v5;
  v6 = valueTab[v4];
  valueTab[v4] = 0;
  if (v6)
  {
    v7 = xmlXPathCastToNumber(v6);
    xmlXPathReleaseObject(v1->context, v6);
    value = v1->value;
    if (value)
    {
      if (value->type == XPATH_NUMBER || (xmlXPathNumberFunction(v1, 1), (value = v1->value) != 0) && value->type == XPATH_NUMBER)
      {
        value->floatval = value->floatval - v7;
        return;
      }
    }

    ctxt = v1;
    v9 = 11;
  }

  else
  {
LABEL_12:
    v9 = 10;
  }

  xmlXPathErr(ctxt, v9);
}

void xmlXPathSubstringFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  v2 = ctxt;
  if (nargs <= 1)
  {
    if (!ctxt)
    {
      return;
    }

LABEL_3:
    v3 = 12;
LABEL_37:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (nargs >= 4)
  {
    if (!ctxt)
    {
      return;
    }

    goto LABEL_3;
  }

  floatval = 0.0;
  if (nargs == 3)
  {
    value = ctxt->value;
    if (!value || value->type != XPATH_NUMBER && ((xmlXPathNumberFunction(ctxt, 1), (v7 = v2->value) == 0) || *v7 != 3))
    {
LABEL_36:
      ctxt = v2;
      v3 = 11;
      goto LABEL_37;
    }

    valueNr = v2->valueNr;
    if (valueNr < 1)
    {
      v12 = 0;
    }

    else
    {
      valueTab = v2->valueTab;
      v10 = valueNr - 1;
      v2->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = valueTab[valueNr - 2];
      }

      v2->value = v11;
      v12 = valueTab[v10];
      valueTab[v10] = 0;
    }

    floatval = v12->floatval;
    xmlXPathReleaseObject(v2->context, v12);
  }

  v13 = v2->value;
  if (!v13)
  {
    goto LABEL_36;
  }

  if (*v13 != 3)
  {
    xmlXPathNumberFunction(v2, 1);
    v14 = v2->value;
    if (!v14 || *v14 != 3)
    {
      goto LABEL_36;
    }
  }

  v15 = v2->valueNr;
  if (v15 < 1)
  {
    v19 = 0;
  }

  else
  {
    v16 = v2->valueTab;
    v17 = v15 - 1;
    v2->valueNr = v15 - 1;
    v18 = v15 == 1 ? 0 : v16[v15 - 2];
    v2->value = v18;
    v19 = v16[v17];
    v16[v17] = 0;
  }

  v20 = v19->floatval;
  xmlXPathReleaseObject(v2->context, v19);
  v21 = v2->value;
  if (!v21)
  {
    goto LABEL_36;
  }

  if (*v21 != 4)
  {
    xmlXPathStringFunction(v2, 1);
    v22 = v2->value;
    if (!v22 || *v22 != 4)
    {
      goto LABEL_36;
    }
  }

  v23 = v2->valueNr;
  if (v23 < 1)
  {
    v27 = 0;
  }

  else
  {
    v24 = v2->valueTab;
    v25 = v23 - 1;
    v2->valueNr = v23 - 1;
    if (v23 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24[v23 - 2];
    }

    v2->value = v26;
    v27 = v24[v25];
    v24[v25] = 0;
  }

  if (v20 >= 2147483650.0)
  {
    v28 = 0x7FFFFFFF;
  }

  else if (v20 >= 1.0)
  {
    v28 = v20;
    if (v20 - floor(v20) >= 0.5)
    {
      ++v28;
    }
  }

  else
  {
    v28 = 1;
  }

  if (nargs != 3)
  {
    goto LABEL_58;
  }

  v29 = floor(v20);
  if (v20 - v29 >= 0.5)
  {
    v29 = v29 + 1.0;
  }

  v30 = floor(floatval);
  if (floatval - v30 >= 0.5)
  {
    v30 = v30 + 1.0;
  }

  v31 = v30 + v29;
  if (v31 >= 1.0)
  {
    if (v31 < 2147483650.0)
    {
      v32 = v31;
      goto LABEL_59;
    }

LABEL_58:
    v32 = 0x7FFFFFFF;
    goto LABEL_59;
  }

  v32 = 1;
LABEL_59:
  if (v32 <= v28)
  {
    v35 = xmlXPathCacheNewCString(v2->context);
    valuePush(v2, v35);
  }

  else
  {
    v33 = xmlUTF8Strsub(v27->stringval, v28 - 1, v32 - v28);
    v34 = xmlXPathCacheNewString(v2->context, v33);
    valuePush(v2, v34);
    free(v33);
  }

  context = v2->context;

  xmlXPathReleaseObject(context, v27);
}

xmlChar *__cdecl xmlUTF8Strsub(const xmlChar *utf, int start, int len)
{
  if (utf && ((len | start) & 0x80000000) == 0)
  {
    if (start < 1)
    {
      return xmlUTF8Strndup(utf, len);
    }

    v3 = 0;
    while (1)
    {
      v4 = *utf;
      if (!*utf)
      {
        break;
      }

      ++utf;
      if ((v4 & 0x80) != 0 && (v4 & 0x40) != 0)
      {
        do
        {
          v5 = v4;
          if (!*utf)
          {
            return 0;
          }

          v4 *= 2;
          ++utf;
        }

        while ((v5 & 0x20) != 0);
      }

      if (++v3 == start)
      {
        return xmlUTF8Strndup(utf, len);
      }
    }
  }

  return 0;
}

double xmlXPathCastToNumber(xmlXPathObjectPtr val)
{
  if (!val)
  {
    return xmlXPathNAN;
  }

  type = val->type;
  result = 0.0;
  if (val->type > XPATH_NUMBER)
  {
    if (type - 5 < 4)
    {
      v4 = *__xmlGenericError();
      v5 = __xmlGenericErrorContext();
      v4(*v5, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 5778);
      return xmlXPathNAN;
    }

    if (type != XPATH_STRING)
    {
      if (type != XPATH_XSLT_TREE)
      {
        return result;
      }

      goto LABEL_16;
    }

    stringval = val->stringval;

    return xmlXPathStringEvalNumber(stringval);
  }

  else
  {
    if (type <= XPATH_NODESET)
    {
      if (type)
      {
        if (type != XPATH_NODESET)
        {
          return result;
        }

LABEL_16:
        nodesetval = val->nodesetval;

        return xmlXPathCastNodeSetToNumber(nodesetval);
      }

      return xmlXPathNAN;
    }

    if (type == XPATH_BOOLEAN)
    {
      result = 1.0;
      if (!val->BOOLval)
      {
        return 0.0;
      }
    }

    else if (type == XPATH_NUMBER)
    {
      return val->floatval;
    }
  }

  return result;
}

xmlChar *__cdecl xmlUTF8Strndup(const xmlChar *utf, int len)
{
  v2 = 0;
  if (utf)
  {
    if ((len & 0x80000000) == 0)
    {
      v4 = xmlUTF8Strsize(utf, len);
      v5 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
      v2 = v5;
      if (v5)
      {
        memcpy(v5, utf, v4);
        v2[v4] = 0;
      }
    }
  }

  return v2;
}

int xmlUTF8Strsize(const xmlChar *utf, int len)
{
  LODWORD(v2) = 0;
  if (utf && len >= 1)
  {
    v3 = utf;
    do
    {
      v4 = *v3;
      if (!*v3)
      {
        break;
      }

      ++v3;
      if ((v4 & 0x80) != 0 && (v4 & 0x40) != 0)
      {
        do
        {
          v5 = v4;
          if (!*v3)
          {
            break;
          }

          v4 *= 2;
          ++v3;
        }

        while ((v5 & 0x20) != 0);
      }
    }

    while (len-- > 1);
    v2 = v3 - utf;
    if (v2 >> 31)
    {
      LODWORD(v2) = 0;
    }
  }

  return v2;
}

uint64_t xmlXPathEqualValuesCommon(xmlXPathParserContextPtr ctxt, xmlXPathObject *a2, xmlXPathObjectPtr value)
{
  v3 = value;
  v4 = a2;
  v6 = 0;
  type = a2->type;
  if (a2->type <= XPATH_STRING)
  {
    switch(type)
    {
      case XPATH_BOOLEAN:
        v6 = 0;
        v14 = value->type;
        if (value->type > XPATH_STRING)
        {
          if (v14 - 5 >= 4)
          {
            goto LABEL_5;
          }

          v15 = *__xmlGenericError();
          v16 = *__xmlGenericErrorContext();
          v15(v16, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 6833);
          goto LABEL_4;
        }

        if (v14 == XPATH_BOOLEAN)
        {
          BOOLval = a2->BOOLval;
          v27 = value->BOOLval;
LABEL_44:
          v28 = BOOLval == v27;
          goto LABEL_76;
        }

        if (v14 != XPATH_NUMBER)
        {
          if (v14 != XPATH_STRING)
          {
            goto LABEL_5;
          }

          stringval = value->stringval;
          if (stringval)
          {
            LODWORD(stringval) = *stringval != 0;
          }

          v21 = a2->BOOLval;
          goto LABEL_39;
        }

        BOOLval = a2->BOOLval;
        floatval = value->floatval;
        break;
      case XPATH_NUMBER:
        v6 = 0;
        v17 = value->type;
        if (value->type > XPATH_STRING)
        {
          if (v17 - 5 >= 4)
          {
            goto LABEL_5;
          }

          v18 = *__xmlGenericError();
          v19 = *__xmlGenericErrorContext();
          v18(v19, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 6892);
          goto LABEL_4;
        }

        if (v17 != XPATH_BOOLEAN)
        {
          if (v17 != XPATH_NUMBER)
          {
            if (v17 != XPATH_STRING)
            {
              goto LABEL_5;
            }

            valuePush(ctxt, value);
            xmlXPathNumberFunction(ctxt, 1);
            if (ctxt && (valueNr = ctxt->valueNr, valueNr >= 1))
            {
              valueTab = ctxt->valueTab;
              v24 = valueNr - 1;
              ctxt->valueNr = valueNr - 1;
              if (valueNr == 1)
              {
                v25 = 0;
              }

              else
              {
                v25 = valueTab[valueNr - 2];
              }

              ctxt->value = v25;
              v3 = valueTab[v24];
              valueTab[v24] = 0;
            }

            else
            {
              v3 = 0;
            }
          }

          v34 = v4->floatval;
          v35 = v3->floatval;
          v40 = fabs(v34);
          if (v34 > 0.0)
          {
            v41 = 1;
          }

          else
          {
            v41 = -1;
          }

          if (v40 != INFINITY)
          {
            v41 = 0;
          }

          if (v41 != -1)
          {
            if (v41 != 1)
            {
              v43 = fabs(v35);
              if (v35 > 0.0)
              {
                v44 = 1;
              }

              else
              {
                v44 = -1;
              }

              if (v43 != INFINITY)
              {
                v44 = 0;
              }

              if (v44 == -1 || v44 == 1)
              {
                goto LABEL_4;
              }

LABEL_88:
              v28 = v34 == v35;
LABEL_76:
              v6 = v28;
              goto LABEL_5;
            }

            goto LABEL_73;
          }

LABEL_74:
          v42 = -INFINITY;
          goto LABEL_75;
        }

        BOOLval = value->BOOLval;
        floatval = a2->floatval;
        break;
      case XPATH_STRING:
        v6 = 0;
        v11 = value->type;
        if (value->type > XPATH_STRING)
        {
          if (v11 - 5 >= 4)
          {
            goto LABEL_5;
          }

          v12 = *__xmlGenericError();
          v13 = *__xmlGenericErrorContext();
          v12(v13, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 6955);
          goto LABEL_4;
        }

        if (v11 != XPATH_BOOLEAN)
        {
          if (v11 != XPATH_NUMBER)
          {
            if (v11 == XPATH_STRING)
            {
              v6 = xmlStrEqual(a2->stringval, value->stringval);
            }

            goto LABEL_5;
          }

          valuePush(ctxt, a2);
          xmlXPathNumberFunction(ctxt, 1);
          v30 = ctxt->valueNr;
          v31 = ctxt->valueTab;
          v32 = v30 - 1;
          ctxt->valueNr = v30 - 1;
          if (v30 == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = v31[v30 - 2];
          }

          ctxt->value = v33;
          v4 = v31[v32];
          v31[v32] = 0;
          v34 = v4->floatval;
          v35 = v3->floatval;
          v36 = fabs(v34);
          if (v34 > 0.0)
          {
            v37 = 1;
          }

          else
          {
            v37 = -1;
          }

          if (v36 != INFINITY)
          {
            v37 = 0;
          }

          if (v37 != -1)
          {
            if (v37 != 1)
            {
              v6 = 0;
              v38 = fabs(v35);
              if (v35 > 0.0)
              {
                v39 = 1;
              }

              else
              {
                v39 = -1;
              }

              if (v38 != INFINITY)
              {
                v39 = 0;
              }

              if (v39 == -1 || v39 == 1)
              {
                goto LABEL_5;
              }

              goto LABEL_88;
            }

LABEL_73:
            v42 = INFINITY;
LABEL_75:
            v28 = v35 == v42;
            goto LABEL_76;
          }

          goto LABEL_74;
        }

        stringval = a2->stringval;
        if (stringval)
        {
          LODWORD(stringval) = *stringval != 0;
        }

        v21 = value->BOOLval;
LABEL_39:
        v28 = v21 == stringval;
        goto LABEL_76;
      default:
        goto LABEL_5;
    }

    v27 = floatval < 0.0;
    if (floatval > 0.0)
    {
      v27 = 1;
    }

    goto LABEL_44;
  }

  if (type - 5 < 4)
  {
    v8 = *__xmlGenericError();
    v9 = *__xmlGenericErrorContext();
    v8(v9, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 6968);
LABEL_4:
    v6 = 0;
  }

LABEL_5:
  xmlXPathReleaseObject(ctxt->context, v4);
  xmlXPathReleaseObject(ctxt->context, v3);
  return v6;
}

int xmlXPathEqualValues(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt || !ctxt->context)
  {
    return 0;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  valueTab = ctxt->valueTab;
  v4 = (valueNr - 1);
  ctxt->valueNr = v4;
  if (valueNr == 1)
  {
    ctxt->value = 0;
    v5 = valueTab[v4];
    valueTab[v4] = 0;
LABEL_7:
    context = ctxt->context;
LABEL_8:
    v7 = v5;
LABEL_9:
    xmlXPathReleaseObject(context, v7);
    xmlXPathErr(ctxt, 10);
    return 0;
  }

  v10 = 0;
  ctxt->value = valueTab[valueNr - 2];
  v5 = valueTab[v4];
  valueTab[v4] = 0;
  v11 = valueNr - 2;
  ctxt->valueNr = v11;
  v12 = ctxt->valueTab;
  if (v4 != 1)
  {
    v10 = v12[v4 - 2];
  }

  ctxt->value = v10;
  v7 = v12[v11];
  v12[v11] = 0;
  if (v7)
  {
    v13 = v5 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    context = ctxt->context;
    if (v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7 == v5)
  {
    xmlXPathFreeObject(v7);
    return 1;
  }

  type = v5->type;
  if ((v5->type | 8) == 9)
  {
    v15 = *v7;
    goto LABEL_26;
  }

  v15 = *v7;
  if ((*v7 | 8) == 9)
  {
LABEL_26:
    v8 = 0;
    v16 = v15 | 8;
    if ((v15 | 8) != 9)
    {
      type = v15;
    }

    if (v16 == 9)
    {
      v17 = v7;
    }

    else
    {
      v17 = v5;
    }

    if (v16 == 9)
    {
      v18 = v5;
    }

    else
    {
      v18 = v7;
    }

    if (type <= 3)
    {
      if (type != 1)
      {
        if (type == 2)
        {
          p_nodeNr = &v17->nodesetval->nodeNr;
          if (p_nodeNr)
          {
            LODWORD(p_nodeNr) = *p_nodeNr != 0;
          }

          v8 = p_nodeNr == *(v18 + 16);
          goto LABEL_52;
        }

        if (type != 3)
        {
LABEL_52:
          xmlXPathReleaseObject(ctxt->context, v17);
          xmlXPathReleaseObject(ctxt->context, v18);
          return v8;
        }

        v21 = xmlXPathEqualNodeSetFloat(ctxt, v17, 0, *(v18 + 24));
LABEL_51:
        v8 = v21;
        goto LABEL_52;
      }
    }

    else
    {
      if ((type - 5) < 4)
      {
        v19 = *__xmlGenericError();
        v20 = __xmlGenericErrorContext();
        v19(*v20, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 7055);
        v8 = 0;
        goto LABEL_52;
      }

      if (type == 4)
      {
        v21 = xmlXPathEqualNodeSetString(v17, *(v18 + 32), 0);
        goto LABEL_51;
      }

      if (type != 9)
      {
        goto LABEL_52;
      }
    }

    v21 = xmlXPathEqualNodeSets(v17, v18, 0);
    goto LABEL_51;
  }

  return xmlXPathEqualValuesCommon(ctxt, v7, v5);
}

xmlXPathObjectPtr xmlXPathCacheNewBoolean(uint64_t a1, int val)
{
  if (a1)
  {
    v2 = *(a1 + 344);
    if (v2)
    {
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = *(v3 + 8);
        if (v4)
        {
          v5 = v4 - 1;
          result = *(*v3 + 8 * v5);
          *(v3 + 8) = v5;
LABEL_9:
          result->type = XPATH_BOOLEAN;
          result->BOOLval = val != 0;
          return result;
        }
      }

      v7 = *(v2 + 32);
      if (v7)
      {
        v8 = *(v7 + 8);
        if (v8)
        {
          v9 = v8 - 1;
          result = *(*v7 + 8 * v9);
          *(v7 + 8) = v9;
          goto LABEL_9;
        }
      }
    }
  }

  return xmlXPathNewBoolean(val);
}

xmlXPathObjectPtr xmlXPathNewBoolean(int val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 4) = 0u;
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *v2 = 2;
    *(v2 + 4) = val != 0;
  }

  else
  {
    xmlXPathErrMemory(0, "creating BOOLean object\n");
  }

  return v3;
}

uint64_t libxml_domnode_tim_sort(uint64_t result, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = 0;
  if (a2 < 2)
  {
LABEL_2:
    v2 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = result;
  if (a2 > 0x3F)
  {
    bzero(v29, 0x800uLL);
    v6 = 58 - __clz(a2);
    if ((a2 & ~(-1 << v6)) != 0)
    {
      v7 = (a2 >> v6) + 1;
    }

    else
    {
      v7 = a2 >> v6;
    }

    v8 = v7;
    v28[0] = 0;
    v28[1] = 0;
    result = PUSH_NEXT(v4, a2, v28, v7, v29, &v27, &v26);
    if (result)
    {
      result = PUSH_NEXT(v4, a2, v28, v8, v29, &v27, &v26);
      if (result)
      {
LABEL_12:
        while (1)
        {
          result = PUSH_NEXT(v4, a2, v28, v8, v29, &v27, &v26);
          if (!result)
          {
            break;
          }

          while (v27 >= 2)
          {
            if (v27 == 2)
            {
              if (v30 > v31)
              {
                goto LABEL_12;
              }

LABEL_32:
              v24 = v31 + v30;
              if (v30 <= v31 || v24 == a2)
              {
                libxml_domnode_tim_sort_merge(v4, v29, 2, v28);
                v30 = v24;
                v14 = 1;
              }

              else
              {
                v14 = 2;
              }
            }

            else
            {
              v9 = &v29[16 * (v27 & 0x7FFFFFFF)];
              v10 = *(v9 - 5);
              v11 = *(v9 - 3);
              v12 = *(v9 - 1);
              if (v11 > v12 && v10 > v12 + v11)
              {
                goto LABEL_12;
              }

              v14 = v27;
              while (1)
              {
                v15 = &v29[16 * v14];
                v16 = *(v15 - 5);
                v17 = *(v15 - 3);
                v18 = v14 >= 4 && *(v15 - 7) <= v17 + v16;
                v19 = v14 - 1;
                v20 = &v29[16 * (v14 - 1)];
                v21 = *(v20 + 1);
                v22 = v21 + v17;
                v23 = v16 <= v21 + v17 || v18;
                if (!v23 && v17 > v21)
                {
                  break;
                }

                if (v23 && v17 > v21)
                {
                  libxml_domnode_tim_sort_merge(v4, v29, v14 - 1, v28);
                  *(v15 - 5) = v17 + v16;
                  *(v15 - 2) = *v20;
                }

                else
                {
                  libxml_domnode_tim_sort_merge(v4, v29, v14, v28);
                  *(v15 - 3) = v22;
                }

                v14 = v19;
                if (v19 == 2)
                {
                  goto LABEL_32;
                }
              }
            }

            v27 = v14;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v5 = *MEMORY[0x1E69E9840];

  return libxml_domnode_binary_insertion_sort_start(result, 1uLL, a2);
}

uint64_t libxml_domnode_binary_insertion_sort_start(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = result;
    v6 = a2 - 2;
    v7 = (result + 8 * a2);
    do
    {
      v8 = v4 - 1;
      v9 = v5[v4 - 1];
      v10 = v5[v4];
      result = xmlXPathCmpNodesExt(v9, v10);
      if (result != -2 && (result & 0x80000000) != 0)
      {
        result = xmlXPathCmpNodesExt(v10, *v5);
        if (result == -2 || result > 0)
        {
          v8 = 0;
          goto LABEL_25;
        }

        result = xmlXPathCmpNodesExt(v10, v9);
        if (result == -2 || (result & 0x80000000) == 0)
        {
          v12 = 0;
          v13 = v8 >> 1;
          v14 = v4 - 1;
          while (1)
          {
            result = xmlXPathCmpNodesExt(v10, v5[v13]);
            if (result != -2 && result < 1)
            {
              v16 = v14 - v13;
              if (v14 - v13 <= 1)
              {
                ++v13;
LABEL_23:
                v17 = v8 >= v13;
                v8 = v13;
                if (!v17)
                {
LABEL_28:
                  v5[v8] = v10;
                  goto LABEL_29;
                }

                break;
              }

              v12 = v13;
              v13 = v14;
            }

            else
            {
              v16 = v13 - v12;
              if (v13 - v12 < 2)
              {
                goto LABEL_23;
              }
            }

            v14 = v13;
            v13 = v12 + (v16 >> 1);
          }
        }

LABEL_25:
        v18 = v7;
        v19 = v6;
        v20 = v7;
        do
        {
          v21 = *--v20;
          *v18 = v21;
          if (v19 == -1)
          {
            break;
          }

          v18 = v20;
          v17 = v19-- >= v8;
        }

        while (v17);
        goto LABEL_28;
      }

LABEL_29:
      ++v4;
      ++v6;
      ++v7;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t xmlXPathCmpNodesExt(uint64_t a1, uint64_t a2)
{
  v2 = 4294967294;
  if (!a1 || !a2)
  {
    return v2;
  }

  if (a1 == a2)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = 1;
  if (v3 > 0x12)
  {
LABEL_15:
    if (v3 == 1)
    {
      if (*(a2 + 8) == 1)
      {
        v7 = *(a1 + 80);
        if ((v7 & 0x8000000000000000) == 0 || (v8 = *(a2 + 80), (v8 & 0x8000000000000000) == 0) || *(a1 + 64) != *(a2 + 64))
        {
          v9 = a1;
LABEL_57:
          if (v9 != *(a2 + 56))
          {
            if (v9 == *(a2 + 48))
            {
              return 0xFFFFFFFFLL;
            }

            v20 = *(a2 + 40);
            if (v20)
            {
              v21 = 0;
              while (v20 != v9)
              {
                ++v21;
                v22 = v20;
                v20 = *(v20 + 40);
                if (!v20)
                {
                  goto LABEL_90;
                }
              }

              return 1;
            }

            v21 = 0;
            v22 = a2;
LABEL_90:
            v25 = *(v9 + 40);
            if (v25)
            {
              v26 = 0;
              while (v25 != a2)
              {
                v27 = v25;
                ++v26;
                v25 = *(v25 + 40);
                if (!v25)
                {
                  goto LABEL_96;
                }
              }

              return 0xFFFFFFFFLL;
            }

            v26 = 0;
            v27 = v9;
LABEL_96:
            if (v22 != v27)
            {
              return 4294967294;
            }

            if (v26 > v21)
            {
              do
              {
                --v26;
                v9 = *(v9 + 40);
              }

              while (v26 > v21);
              v26 = v21;
            }

            while (v21 > v26)
            {
              --v21;
              a2 = *(a2 + 40);
            }

            v2 = 4294967294;
            while (1)
            {
              v28 = *(v9 + 40);
              v29 = *(a2 + 40);
              if (v28 == v29)
              {
                break;
              }

              if (v28)
              {
                v30 = v29 == 0;
              }

              else
              {
                v30 = 1;
              }

              v9 = *(v9 + 40);
              a2 = *(a2 + 40);
              if (v30)
              {
                return v2;
              }
            }

            if (v9 != *(a2 + 56))
            {
              if (v9 == *(a2 + 48))
              {
                return 0xFFFFFFFFLL;
              }

              if (*(v9 + 8) != 1 || *(a2 + 8) != 1 || (v31 = *(v9 + 80), (v31 & 0x8000000000000000) == 0) || (v32 = *(a2 + 80), (v32 & 0x8000000000000000) == 0) || *(v9 + 64) != *(a2 + 64))
              {
LABEL_118:
                v2 = 1;
                while (1)
                {
                  v9 = *(v9 + 48);
                  if (!v9)
                  {
                    break;
                  }

                  if (v9 == a2)
                  {
                    return v2;
                  }
                }

                return 0xFFFFFFFFLL;
              }

              if (v32 >= v31)
              {
                if (v32 <= v31)
                {
                  goto LABEL_118;
                }

                return 0xFFFFFFFFLL;
              }
            }
          }

          return 1;
        }

        if (v8 < v7)
        {
          return 1;
        }

        if (v8 > v7)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v6 = 0;
      v10 = 1;
      v9 = a1;
    }

    else
    {
      v6 = 0;
      v9 = a1;
      v10 = 1;
    }

    a1 = 0;
    goto LABEL_38;
  }

  if (((1 << v3) & 0x198) == 0)
  {
    if (v3 == 2)
    {
      v10 = 0;
      v9 = *(a1 + 40);
      v6 = 1;
      goto LABEL_38;
    }

    if (v3 == 18)
    {
      return v2;
    }

    goto LABEL_15;
  }

  v4 = *(a1 + 56);
  v5 = a1;
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (*(v4 + 8) == 1)
      {
        break;
      }

      v4 = *(v4 + 56);
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v6 = 3;
  }

  else
  {
LABEL_9:
    v5 = *(v5 + 40);
    if (!v5 || *(v5 + 8) != 1)
    {
      v6 = 0;
      v10 = 1;
      v9 = a1;
      goto LABEL_38;
    }

    v6 = 2;
  }

  v11 = *(v5 + 80);
  v12 = v11 >= 0;
  if (v11 < 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = a1;
  }

  v10 = v12;
  if (v12)
  {
    v6 = 0;
  }

LABEL_38:
  v13 = 0;
  v14 = *(a2 + 8);
  if (v14 > 0x12)
  {
    goto LABEL_51;
  }

  v2 = 1;
  if (((1 << v14) & 0x198) != 0)
  {
    v15 = *(a2 + 56);
    v16 = a2;
    if (v15)
    {
      while (1)
      {
        v16 = v15;
        if (*(v15 + 8) == 1)
        {
          break;
        }

        v15 = *(v15 + 56);
        if (!v15)
        {
          goto LABEL_43;
        }
      }

      v17 = 3;
    }

    else
    {
LABEL_43:
      v16 = *(v16 + 40);
      v13 = a2;
      if (!v16)
      {
        goto LABEL_51;
      }

      v13 = a2;
      if (*(v16 + 8) != 1)
      {
        goto LABEL_51;
      }

      v17 = 2;
    }

    v13 = a2;
    if ((*(v16 + 80) & 0x8000000000000000) == 0)
    {
LABEL_51:
      if (v10)
      {
        goto LABEL_52;
      }

      v17 = 0;
      goto LABEL_67;
    }

    v13 = a2;
    a2 = v16;
  }

  else
  {
    if (v14 != 2)
    {
      if (v14 == 18)
      {
        return v2;
      }

      goto LABEL_51;
    }

    v13 = a2;
    a2 = *(a2 + 40);
    v17 = 1;
  }

LABEL_67:
  if (v9 != a2)
  {
    if (v6 >= 2 && v17 == 3)
    {
      v23 = v9;
      v2 = 1;
      while (1)
      {
        v23 = *(v23 + 40);
        if (!v23)
        {
          break;
        }

        if (v23 == a2)
        {
          return v2;
        }
      }
    }

    if (v6 == 3 && v17 >= 2)
    {
      v24 = a2;
      v2 = 0xFFFFFFFFLL;
      while (1)
      {
        v24 = *(v24 + 40);
        if (!v24)
        {
          break;
        }

        if (v24 == v9)
        {
          return v2;
        }
      }
    }

LABEL_52:
    if (*(v9 + 8) == 1 && *(a2 + 8) == 1)
    {
      v18 = *(v9 + 80);
      if (v18 < 0)
      {
        v19 = *(a2 + 80);
        if (v19 < 0 && *(v9 + 64) == *(a2 + 64))
        {
          if (v19 < v18)
          {
            return 1;
          }

          if (v19 > v18)
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }

    goto LABEL_57;
  }

  if (v6 == v17)
  {
    v2 = 0xFFFFFFFFLL;
    while (1)
    {
      v13 = *(v13 + 56);
      if (!v13)
      {
        break;
      }

      if (v13 == a1)
      {
        return 1;
      }

      if (*(v13 + 8) == 1)
      {
        return v2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v6 < v17)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t xmlXPathEqualNodeSetString(uint64_t a1, const xmlChar *a2, int a3)
{
  if (!a2 || (*a1 | 8) != 9)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3 || *v3 < 1)
  {
    return 0;
  }

  if (*a2)
  {
    v6 = *a2 | (a2[1] << 8);
  }

  else
  {
    v6 = 0;
  }

  v8 = 0;
  while (xmlXPathNodeValHash(*(*(v3 + 1) + 8 * v8)) == v6)
  {
    Content = xmlNodeGetContent(*(*(v3 + 1) + 8 * v8));
    if (Content)
    {
      v10 = Content;
      v11 = xmlStrEqual(a2, Content);
      free(v10);
      if (!v11)
      {
        break;
      }
    }

    else if (!xmlStrEqual(a2, ""))
    {
      break;
    }

    if (!a3)
    {
      return 1;
    }

LABEL_17:
    if (++v8 >= *v3)
    {
      return 0;
    }
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  return 1;
}

uint64_t xmlXPathNodeValHash(uint64_t doc)
{
  if (doc)
  {
    v1 = doc;
    if (*(doc + 8) == 9)
    {
      RootElement = xmlDocGetRootElement(doc);
      if (!RootElement)
      {
        RootElement = *(v1 + 24);
        if (!RootElement)
        {
          return 0;
        }
      }
    }

    else
    {
      RootElement = doc;
    }

    doc = 0;
    type = RootElement->type;
    if (type > 0x12)
    {
      return doc;
    }

    if (((1 << type) & 0x198) != 0)
    {
      content = RootElement->content;
      if (!content)
      {
        return 0;
      }
    }

    else
    {
      if (((1 << type) & 6) != 0)
      {
        children = RootElement->children;
        if (children)
        {
          doc = 0;
          v6 = 2;
          while (1)
          {
            p_private = &children->_private;
            v8 = children->type;
            if (v8 - 3 <= 1)
            {
              v9 = children->content;
              if (v9)
              {
                v10 = *v9;
                if (*v9)
                {
                  if (v6 == 1)
                  {
                    return (doc + (v10 << 8));
                  }

                  if (v9[1])
                  {
                    return v10 | (v9[1] << 8);
                  }

                  v6 = 1;
                  doc = *v9;
                }
              }
            }

            children = p_private[3];
            if (children)
            {
              v11 = v8 == XML_ENTITY_REF_NODE;
            }

            else
            {
              v11 = 1;
            }

            v12 = v11 || v8 == XML_DTD_NODE;
            if (v12 || children->type == XML_ENTITY_DECL)
            {
              if (p_private == RootElement)
              {
                return doc;
              }

              while (1)
              {
                children = p_private[6];
                if (children)
                {
                  break;
                }

                p_private = p_private[5];
                if (p_private)
                {
                  v13 = p_private == RootElement;
                }

                else
                {
                  v13 = 1;
                }

                if (v13)
                {
                  return doc;
                }
              }
            }
          }
        }

        return 0;
      }

      if (type != 18)
      {
        return doc;
      }

      content = RootElement->name;
      if (!content)
      {
        return 0;
      }
    }

    if (*content)
    {
      return *content | (content[1] << 8);
    }

    return 0;
  }

  return doc;
}

void xmlFreeGlobalState(uint64_t a1)
{
  xmlResetError((a1 + 856));

  free(a1);
}

xmlNodePtr xmlNewChild(xmlNodePtr parent, xmlNsPtr ns, const xmlChar *name, const xmlChar *content)
{
  result = 0;
  if (!parent || !name)
  {
    return result;
  }

  result = 0;
  HIDWORD(v7) = parent->type - 1;
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 1;
  if (v6 <= 4)
  {
    if (!v6)
    {
      doc = parent->doc;
      if (!ns)
      {
        ns = parent->ns;
      }

      goto LABEL_13;
    }

    if (v6 != 4)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v6 != 5)
  {
    if (v6 != 6)
    {
      return result;
    }

LABEL_9:
    doc = parent;
    goto LABEL_13;
  }

  doc = parent->doc;
LABEL_13:
  result = xmlNewDocNode(doc, ns, name, content);
  if (result)
  {
    result->type = XML_ELEMENT_NODE;
    result->parent = parent;
    result->doc = parent->doc;
    if (parent->children)
    {
      last = parent->last;
      p_last = &parent->last;
      last->next = result;
      result->prev = last;
    }

    else
    {
      parent->children = result;
      p_last = &parent->last;
    }

    *p_last = result;
  }

  return result;
}

xmlNodePtr xmlStringGetNodeList(const xmlDoc *doc, const xmlChar *value)
{
  v38 = *MEMORY[0x1E69E9840];
  if (value && (v2 = value, (Size = xmlBufCreateSize(0)) != 0))
  {
    v5 = Size;
    xmlBufSetAllocationScheme(Size, 4u);
    v6 = 0;
    Sibling = 0;
LABEL_4:
    for (i = v2; *i; ++i)
    {
      if (*i == 38)
      {
        if (i != v2 && xmlBufAdd(v5, v2, (i - v2)))
        {
          goto LABEL_73;
        }

        v9 = i[1];
        if (v9 != 35)
        {
          v21 = 2;
          if (!i[1])
          {
LABEL_80:
            __xmlSimpleError(2u, 1302, doc, "unterminated entity reference %15s\n", i + 1);
            goto LABEL_73;
          }

          while (v9 != 59)
          {
            v9 = i[v21++];
            if (!v9)
            {
              goto LABEL_80;
            }
          }

          if (v21 == 2)
          {
            goto LABEL_67;
          }

          name = xmlStrndup(i + 1, v21 - 2);
          DocEntity = xmlGetDocEntity(doc, name);
          if (DocEntity && DocEntity->etype == XML_INTERNAL_PREDEFINED_ENTITY)
          {
            if (xmlBufCat(v5, DocEntity->content))
            {
              goto LABEL_73;
            }

LABEL_66:
            free(name);
LABEL_67:
            v2 = &i[v21];
            goto LABEL_4;
          }

          v34 = DocEntity;
          if (xmlBufIsEmpty(v5))
          {
LABEL_57:
            v24 = xmlNewReference(doc, name);
            if (v24)
            {
              v25 = v24;
              if (v34)
              {
                if (!v34->children)
                {
                  v34->children = -1;
                  elema = v24;
                  NodeList = xmlStringGetNodeList(doc, v24->content);
                  v25 = elema;
                  v34->children = NodeList;
                  v34->owner = 1;
                  if (NodeList)
                  {
                    do
                    {
                      v27 = NodeList;
                      NodeList->parent = v34;
                      NodeList = NodeList->next;
                    }

                    while (NodeList);
                    v34->last = v27;
                  }
                }
              }

              if (Sibling)
              {
                Sibling = xmlAddNextSibling(Sibling, v25);
              }

              else
              {
                v6 = v25;
                Sibling = v25;
              }

              goto LABEL_66;
            }
          }

          else
          {
            v23 = xmlNewText(0);
            if (v23)
            {
              v23->doc = doc;
              elem = v23;
              v23->content = xmlBufDetach(v5->i64);
              if (Sibling)
              {
                Sibling = xmlAddNextSibling(Sibling, elem);
              }

              else
              {
                v6 = elem;
                Sibling = elem;
              }

              goto LABEL_57;
            }
          }

          if (name)
          {
            free(name);
          }

          goto LABEL_73;
        }

        v11 = i + 2;
        v10 = i[2];
        if (v10 == 59)
        {
          v15 = 0;
LABEL_21:
          v17 = 1;
        }

        else
        {
          if (v10 == 120)
          {
            v14 = i[3];
            v13 = i + 3;
            v12 = v14;
            if (v14 != 59)
            {
              v15 = 0;
              while (1)
              {
                if ((v12 - 48) > 9)
                {
                  if ((v12 - 97) > 5)
                  {
                    if ((v12 - 65) > 5)
                    {
                      __xmlSimpleError(2u, 1300, doc, "invalid hexadecimal character value\n", 0);
                      v19 = 0;
                      v15 = 0;
                      goto LABEL_36;
                    }

                    v15 = v12 + 16 * v15 - 55;
                  }

                  else
                  {
                    v15 = v12 + 16 * v15 - 87;
                  }
                }

                else
                {
                  v15 = v12 + 16 * v15 - 48;
                }

                if (v15 >= 1114112)
                {
                  v15 = 1114112;
                }

                v18 = *++v13;
                v12 = v18;
                if (v18 == 59)
                {
                  goto LABEL_35;
                }
              }
            }

            v15 = 0;
LABEL_35:
            v19 = 1;
LABEL_36:
            v2 = &v13[v19];
            if (v15)
            {
              goto LABEL_37;
            }

            goto LABEL_4;
          }

          v15 = 0;
          while ((v10 - 48) <= 9)
          {
            v15 = v10 + 10 * v15 - 48;
            if (v15 >= 1114112)
            {
              v15 = 1114112;
            }

            v16 = *++v11;
            v10 = v16;
            if (v16 == 59)
            {
              goto LABEL_21;
            }
          }

          __xmlSimpleError(2u, 1301, doc, "invalid decimal character value\n", 0);
          v17 = 0;
          v15 = 0;
        }

        v2 = &v11[v17];
        if (!v15)
        {
          goto LABEL_4;
        }

LABEL_37:
        v37 = 0;
        *out = 0;
        if (v15 < 1114112)
        {
          v20 = v15;
        }

        else
        {
          v20 = 65533;
        }

        out[xmlCopyCharMultiByte(out, v20)] = 0;
        if (xmlBufCat(v5, out))
        {
          goto LABEL_73;
        }

        goto LABEL_4;
      }
    }

    if (i != v2 || !v6)
    {
      xmlBufAdd(v5, v2, (i - v2));
    }

    if (!xmlBufIsEmpty(v5))
    {
      v30 = xmlNewText(0);
      if (v30)
      {
        v31 = v30;
        v30->doc = doc;
        v30->content = xmlBufDetach(v5->i64);
        if (Sibling)
        {
          xmlAddNextSibling(Sibling, v31);
        }

        else
        {
          v6 = v31;
        }
      }

      else
      {
        v6 = 0;
      }
    }

LABEL_73:
    xmlBufFree(v5);
  }

  else
  {
    v6 = 0;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

xmlOutputBufferPtr xmlOutputBufferCreateIO(xmlOutputBufferPtr iowrite, xmlOutputCloseCallback ioclose, void *ioctx, xmlCharEncodingHandlerPtr encoder)
{
  if (iowrite)
  {
    v6 = iowrite;
    iowrite = xmlAllocOutputBufferInternal(encoder);
    if (iowrite)
    {
      iowrite->context = ioctx;
      iowrite->writecallback = v6;
      iowrite->closecallback = ioclose;
    }
  }

  return iowrite;
}

void xmlNodeDumpOutput(xmlOutputBufferPtr buf, xmlDocPtr doc, xmlNodePtr cur, int level, int format, const char *encoding)
{
  v26 = *MEMORY[0x1E69E9840];
  xmlInitParser();
  if (buf && cur)
  {
    v12 = "UTF-8";
    v18 = 0u;
    v19 = 0u;
    if (encoding)
    {
      v12 = encoding;
    }

    v25 = 0;
    v23 = 0uLL;
    v24 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v20 = 0uLL;
    v15 = 0uLL;
    v16 = 0;
    *(&v18 + 1) = buf;
    DWORD1(v19) = level;
    DWORD2(v19) = format != 0;
    v17 = v12;
    xmlSaveCtxtInit(&v15);
    LODWORD(v19) = v19 | 0x20;
    IntSubset = xmlGetIntSubset(doc);
    if (IntSubset && xmlIsXHTML(IntSubset->SystemID, IntSubset->ExternalID) >= 1)
    {
      xhtmlNodeDumpOutput(&v15, cur);
    }

    else
    {
      xmlNodeDumpOutputInternal(&v15, cur);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

xmlAttrPtr xmlNewProp(xmlNodePtr node, const xmlChar *name, const xmlChar *value)
{
  if (name)
  {
    return xmlNewPropInternal(node, 0, name, value, 0);
  }

  else
  {
    return 0;
  }
}

void *xmlAllocOutputBufferInternal(uint64_t a1)
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
      xmlBufSetAllocationScheme(v4, 3u);
      v3[3] = a1;
      if (!a1)
      {
        v3[5] = 0;
        goto LABEL_8;
      }

      Size = xmlBufCreateSize(4000);
      v3[5] = Size;
      if (Size)
      {
        xmlCharEncOutput(v3, 1);
LABEL_8:
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

void xmlFreeNode(xmlNodePtr cur)
{
  if (!cur)
  {
    return;
  }

  type = cur->type;
  switch(type)
  {
    case XML_ATTRIBUTE_NODE:

      xmlFreeProp(cur);
      break;
    case XML_NAMESPACE_DECL:

      xmlFreeNs(cur);
      break;
    case XML_DTD_NODE:

      xmlFreeDtd(cur);
      return;
    default:
      if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
      {
        v3 = __xmlDeregisterNodeDefaultValue();
        (*v3)(cur);
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

      v6 = cur->type;
      if (v6 != XML_ENTITY_DECL)
      {
LABEL_33:
        children = cur->children;
        if (children)
        {
          if (v6 == XML_ENTITY_REF_NODE)
          {
LABEL_42:
            content = cur->content;
            if (v6 - 19 >= 2 && v6 != XML_ENTITY_REF_NODE && content != 0 && content != &cur->properties)
            {
              if (dict)
              {
                if (xmlDictOwns(dict, content))
                {
                  goto LABEL_56;
                }

                content = cur->content;
              }

              free(content);
            }

LABEL_56:
            name = cur->name;
            if (name)
            {
              v17 = cur->type;
              if (v17 == XML_TEXT_NODE || v17 == XML_COMMENT_NODE)
              {
                goto LABEL_64;
              }

              if (!dict)
              {
                goto LABEL_62;
              }

              if (!xmlDictOwns(dict, name))
              {
                name = cur->name;
LABEL_62:
                free(name);
              }
            }

            v17 = cur->type;
LABEL_64:
            if (v17 <= XML_XINCLUDE_END && ((1 << v17) & 0x180002) != 0)
            {
              nsDef = cur->nsDef;
              if (nsDef)
              {
                do
                {
                  next = nsDef->next;
                  xmlFreeNs(nsDef);
                  nsDef = next;
                }

                while (next);
              }
            }

            free(cur);
            return;
          }

          xmlFreeNodeList(children);
          v6 = cur->type;
        }

        if (v6 <= XML_XINCLUDE_END && ((1 << v6) & 0x180002) != 0)
        {
          properties = cur->properties;
          if (properties)
          {
            do
            {
              v11 = properties->next;
              xmlFreeProp(properties);
              properties = v11;
            }

            while (v11);
            v6 = cur->type;
          }
        }

        if (v6 == XML_ELEMENT_NODE)
        {
          goto LABEL_56;
        }

        goto LABEL_42;
      }

      psvi = cur->psvi;
      if (psvi)
      {
        if (dict)
        {
          if (xmlDictOwns(dict, psvi))
          {
            goto LABEL_27;
          }

          psvi = cur->psvi;
        }

        free(psvi);
      }

LABEL_27:
      v8 = cur->nsDef;
      if (v8)
      {
        if (!dict)
        {
LABEL_31:
          free(v8);
          goto LABEL_32;
        }

        if (!xmlDictOwns(dict, v8))
        {
          v8 = cur->nsDef;
          goto LABEL_31;
        }
      }

LABEL_32:
      v6 = cur->type;
      goto LABEL_33;
  }
}

uint64_t xmlAttrDumpOutput(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 40);
    if (v2)
    {
      if (*(result + 56) == 2)
      {
        xmlOutputBufferWriteWSNonSig(result, 2);
      }

      else
      {
        xmlOutputBufferWrite(*(result + 40), 1, " ");
      }

      v4 = *(a2 + 72);
      if (v4)
      {
        v5 = *(v4 + 24);
        if (v5)
        {
          xmlOutputBufferWriteString(v2, v5);
          xmlOutputBufferWrite(v2, 1, ":");
        }
      }

      xmlOutputBufferWriteString(v2, *(a2 + 16));
      xmlOutputBufferWrite(v2, 2, "=");
      xmlAttrSerializeContent(v2, a2);

      return xmlOutputBufferWrite(v2, 1, "");
    }
  }

  return result;
}

int xmlOutputBufferWriteEscape(xmlOutputBufferPtr out, const xmlChar *str, xmlCharEncodingOutputFunc escaping)
{
  if (!out)
  {
    return -1;
  }

  v3 = str;
  v4 = -1;
  if (str)
  {
    if (!out->error)
    {
      p_buffer = &out->buffer;
      buffer = out->buffer;
      if (buffer)
      {
        if (xmlBufGetAllocationScheme(buffer) != 2)
        {
          v9 = strlen(v3);
          if (v9 < 0)
          {
            return 0;
          }

          if (!out->error)
          {
            v10 = 0;
            v34 = 0;
            if (escaping)
            {
              v11 = escaping;
            }

            else
            {
              v11 = xmlEscapeContent;
            }

            p_conv = &out->conv;
            while (1)
            {
              v33 = v9;
              v34 = xmlBufAvail(*p_buffer);
              if (v34 > 39)
              {
                break;
              }

              v13 = xmlBufGrow(*p_buffer, 0x64u);
              v4 = -1;
              v14 = v10;
              LODWORD(v10) = -1;
              if (v13 < 0)
              {
                return v4;
              }

LABEL_45:
              if (v9 < 1)
              {
                return v14;
              }

              v4 = v14;
              v28 = v10 == v14;
              v10 = v14;
              if (v28)
              {
                return v4;
              }
            }

            if (out->encoder)
            {
              if (!*p_conv)
              {
                *p_conv = xmlBufCreate();
              }

              v15 = xmlBufEnd(*p_buffer);
              v4 = -1;
              if ((v11(v15, &v34, v3, &v33) & 0x80000000) != 0 || !v34)
              {
                return v4;
              }

              xmlBufAddLen(*p_buffer, v34);
              if (xmlBufUse(*p_buffer) <= 0xF9F && v33 == v9)
              {
                return v10;
              }

              v16 = xmlCharEncOutput(out, 0);
              if (v16 < 0 && v16 != -3)
              {
                v30 = "encoder error";
                v31 = 1544;
                v32 = 1544;
                goto LABEL_56;
              }

              v17 = &out->conv;
              if (!out->writecallback)
              {
                LODWORD(v18) = v16 & ~(v16 >> 31);
LABEL_36:
                v3 += v33;
                v9 -= v33;
                goto LABEL_37;
              }
            }

            else
            {
              v19 = xmlBufEnd(*p_buffer);
              v4 = -1;
              if ((v11(v19, &v34, v3, &v33) & 0x80000000) != 0 || !v34)
              {
                return v4;
              }

              xmlBufAddLen(out->buffer, v34);
              v17 = &out->buffer;
              if (!out->writecallback)
              {
                LODWORD(v18) = v34;
                goto LABEL_36;
              }
            }

            v20 = xmlBufUse(*v17);
            v18 = v20;
            writecallback = out->writecallback;
            v3 += v33;
            v9 -= v33;
            if (writecallback)
            {
              if (v20 <= 3999 && v9 < 1)
              {
                return v10;
              }

              context = out->context;
              if (out->encoder)
              {
                v23 = xmlBufContent(*p_conv);
                v4 = (writecallback)(context, v23, v18);
                v24 = &out->conv;
                if ((v4 & 0x80000000) != 0)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v25 = xmlBufContent(*p_buffer);
                v4 = (writecallback)(context, v25, v18);
                v24 = &out->buffer;
                if ((v4 & 0x80000000) != 0)
                {
LABEL_55:
                  v30 = "write error";
                  v31 = 1546;
                  v32 = 1546;
LABEL_56:
                  __xmlSimpleError(8u, v32, 0, v30, 0);
                  out->error = v31;
                  return v4;
                }
              }

              xmlBufShrink(*v24, v4);
              written = out->written;
              if (written <= (v4 ^ 0x7FFFFFFF))
              {
                v27 = written + v4;
              }

              else
              {
                v27 = 0x7FFFFFFF;
              }

              out->written = v27;
              goto LABEL_44;
            }

LABEL_37:
            if (xmlBufAvail(*p_buffer) <= 0xF9F)
            {
              xmlBufGrow(*p_buffer, 0xFA0u);
            }

LABEL_44:
            v14 = (v18 + v10);
            goto LABEL_45;
          }
        }
      }
    }
  }

  return v4;
}

int *__xmlIndentTreeOutput(void)
{
  if (xmlIsMainThread())
  {
    return &xmlIndentTreeOutput;
  }

  else
  {
    return &xmlGetGlobalState()->xmlIndentTreeOutput;
  }
}

int xmlOutputBufferClose(xmlOutputBufferPtr out)
{
  if (!out)
  {
    return -1;
  }

  if (out->writecallback)
  {
    xmlOutputBufferFlush(out);
  }

  closecallback = out->closecallback;
  if (closecallback)
  {
    v3 = (closecallback)(out->context);
  }

  else
  {
    v3 = 0;
  }

  written = out->written;
  conv = out->conv;
  if (conv)
  {
    xmlBufFree(conv);
    out->conv = 0;
  }

  encoder = out->encoder;
  if (encoder)
  {
    xmlCharEncCloseFunc(encoder);
  }

  buffer = out->buffer;
  if (buffer)
  {
    xmlBufFree(buffer);
  }

  if (out->error)
  {
    v3 = -1;
  }

  free(out);
  if (v3)
  {
    return v3;
  }

  else
  {
    return written;
  }
}

uint64x2_t *xmlBufAttrSerializeTxtContent(uint64x2_t *result, uint64_t a2, uint64_t a3, const xmlChar *__src)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!__src)
  {
    goto LABEL_69;
  }

  v4 = result;
  v5 = __src;
  while (1)
  {
    v6 = *v5;
    if (v6 <= 0x21)
    {
      break;
    }

    if (*v5 > 0x3Bu)
    {
      if (v6 == 60)
      {
        if (__src != v5)
        {
          xmlBufAdd(v4, __src, (v5 - __src));
        }

        v7 = v4;
        v8 = "&lt;";
        goto LABEL_35;
      }

      if (v6 == 62)
      {
        if (__src != v5)
        {
          xmlBufAdd(v4, __src, (v5 - __src));
        }

        v7 = v4;
        v8 = "&gt;";
LABEL_35:
        v9 = 4;
        goto LABEL_36;
      }

LABEL_38:
      if ((v6 & 0x80000000) == 0 || (v10 = (v5 + 1), !v5[1]) || a2 && *(a2 + 112))
      {
        ++v5;
      }

      else
      {
        v24 = 0;
        __srca = 0;
        if (__src != v5)
        {
          xmlBufAdd(v4, __src, (v5 - __src));
        }

        v11 = *v5;
        if (v11 <= 0xBF)
        {
          v12 = 1400;
          v13 = a3;
          v14 = "string is not in UTF-8\n";
          goto LABEL_65;
        }

        if (v11 <= 0xDF)
        {
          v15 = (v11 & 0x1F) << 6;
          v16 = *v10;
          v17 = 2;
          goto LABEL_56;
        }

        if (v11 > 0xEF)
        {
          if (v11 > 0xF7)
          {
            goto LABEL_64;
          }

          if (!v5[2])
          {
            goto LABEL_64;
          }

          v16 = v5[3];
          if (!v16)
          {
            goto LABEL_64;
          }

          v15 = (((v11 & 7) << 12) | ((*v10 & 0x3F) << 6) | v5[2] & 0x3F) << 6;
          v17 = 4;
LABEL_56:
          v18 = v15 | v16 & 0x3F;
          if (v18 > 0xFF)
          {
            if (v18 >> 11 >= 0x1B && (v18 - 57344) >> 1 >= 0xFFF && v18 - 0x10000 >= 0x100000)
            {
              goto LABEL_64;
            }
          }

          else if (v18 <= 0x1F && (v18 > 0xD || ((1 << v18) & 0x2600) == 0))
          {
            goto LABEL_64;
          }

          v19 = v17;
          xmlSerializeHexCharRef(&__srca, v18);
          result = xmlBufAdd(v4, &__srca, 0xFFFFFFFFuLL);
          __src = &v5[v19];
          v5 += v19;
        }

        else
        {
          v16 = v5[2];
          if (v16)
          {
            v15 = (*v10 & 0x3F | ((v11 & 0xF) << 6)) << 6;
            v17 = 3;
            goto LABEL_56;
          }

LABEL_64:
          v12 = 1401;
          v13 = a3;
          v14 = "invalid character value\n";
LABEL_65:
          __xmlSimpleError(7u, v12, v13, v14, 0);
          xmlSerializeHexCharRef(&__srca, *v5);
          result = xmlBufAdd(v4, &__srca, 0xFFFFFFFFuLL);
          __src = ++v5;
        }
      }
    }

    else
    {
      if (v6 != 34)
      {
        if (v6 == 38)
        {
          if (__src != v5)
          {
            xmlBufAdd(v4, __src, (v5 - __src));
          }

          v7 = v4;
          v8 = "&amp;";
LABEL_28:
          v9 = 5;
          goto LABEL_36;
        }

        goto LABEL_38;
      }

      if (__src != v5)
      {
        xmlBufAdd(v4, __src, (v5 - __src));
      }

      v7 = v4;
      v8 = "&quot;";
      v9 = 6;
LABEL_36:
      result = xmlBufAdd(v7, v8, v9);
      __src = ++v5;
    }
  }

  if (*v5 > 9u)
  {
    if (v6 == 10)
    {
      if (__src != v5)
      {
        xmlBufAdd(v4, __src, (v5 - __src));
      }

      v7 = v4;
      v8 = "&#10;";
      goto LABEL_28;
    }

    if (v6 == 13)
    {
      if (__src != v5)
      {
        xmlBufAdd(v4, __src, (v5 - __src));
      }

      v7 = v4;
      v8 = "&#13;";
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (v6 == 9)
  {
    if (__src != v5)
    {
      xmlBufAdd(v4, __src, (v5 - __src));
    }

    v7 = v4;
    v8 = "&#9;";
    goto LABEL_35;
  }

  if (*v5)
  {
    goto LABEL_38;
  }

  if (__src != v5)
  {
    result = xmlBufAdd(v4, __src, (v5 - __src));
  }

LABEL_69:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlAttrSerializeContent(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 8);
      if (v5 == 5)
      {
        xmlBufAdd(*(v4 + 32), "&", 1uLL);
        v6 = *(v4 + 32);
        v7 = *(v2 + 16);
        v8 = xmlStrlen(v7);
        xmlBufAdd(v6, v7, v8);
        result = xmlBufAdd(*(v4 + 32), ";", 1uLL);
      }

      else if (v5 == 3)
      {
        result = xmlBufAttrSerializeTxtContent(*(v4 + 32), *(a2 + 64), a2, *(v2 + 80));
      }

      v2 = *(v2 + 48);
    }

    while (v2);
  }

  return result;
}

int xmlOutputBufferWriteString(xmlOutputBufferPtr out, const char *str)
{
  if (!out)
  {
    return -1;
  }

  v3 = -1;
  if (!str)
  {
    return v3;
  }

  if (out->error)
  {
    return v3;
  }

  v3 = strlen(str);
  if (v3 < 1)
  {
    return v3;
  }

  return xmlOutputBufferWrite(out, v3, str);
}

int xmlOutputBufferWrite(xmlOutputBufferPtr out, int len, const char *buf)
{
  if (!out || out->error)
  {
    return -1;
  }

  v6 = len;
  if (len < 0)
  {
    return 0;
  }

  v4 = 0;
  p_conv = &out->conv;
  p_buffer = &out->buffer;
  while (1)
  {
    v10 = v6 >= 0x3E80 ? 16000 : v6;
    if (out->encoder)
    {
      if (!*p_conv)
      {
        *p_conv = xmlBufCreate();
      }

      if (xmlBufAdd(*p_buffer, buf, v10))
      {
        return -1;
      }

      if (xmlBufUse(*p_buffer) <= 0xF9F && v6 < 0x3E81)
      {
        return v4;
      }

      v12 = xmlCharEncOutput(out, 0);
      if (v12 < 0 && v12 != -3)
      {
        v24 = 1544;
        __xmlSimpleError(8u, 1544, 0, "encoder error", 0);
        v19 = -1;
        goto LABEL_42;
      }

      v13 = &out->conv;
      if (!out->writecallback)
      {
        LODWORD(v14) = v12 & ~(v12 >> 31);
LABEL_31:
        buf += v10;
        v6 -= v10;
        goto LABEL_37;
      }
    }

    else
    {
      if (xmlBufAdd(*p_buffer, buf, v10))
      {
        return -1;
      }

      LODWORD(v14) = v10;
      v13 = &out->buffer;
      if (!out->writecallback)
      {
        goto LABEL_31;
      }
    }

    v15 = xmlBufUse(*v13);
    v14 = v15;
    writecallback = out->writecallback;
    buf += v10;
    v6 -= v10;
    if (writecallback)
    {
      break;
    }

LABEL_37:
    v4 += v14;
    if (v6 <= 0)
    {
      return v4;
    }
  }

  if (v15 <= 3999 && v6 < 1)
  {
    return v4;
  }

  context = out->context;
  if (out->encoder)
  {
    v18 = xmlBufContent(*p_conv);
    v19 = (writecallback)(context, v18, v14);
    v20 = &out->conv;
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v21 = xmlBufContent(*p_buffer);
  v19 = (writecallback)(context, v21, v14);
  v20 = &out->buffer;
  if ((v19 & 0x80000000) == 0)
  {
LABEL_33:
    xmlBufShrink(*v20, v19);
    written = out->written;
    if (written <= (v19 ^ 0x7FFFFFFF))
    {
      v23 = written + v19;
    }

    else
    {
      v23 = 0x7FFFFFFF;
    }

    out->written = v23;
    goto LABEL_37;
  }

LABEL_41:
  v24 = 1546;
  __xmlSimpleError(8u, 1546, 0, "write error", 0);
LABEL_42:
  out->error = v24;
  return v19;
}

uint64_t xmlNodeDumpOutputInternal(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v5 = *(result + 56);
  v6 = "\n";
  v7 = *(result + 40);
  v8 = "</";
  v9 = *(a2 + 40);
  v10 = a2;
LABEL_3:
  while (2)
  {
    while (1)
    {
      v11 = v9;
      v9 = v10;
      v12 = *(v10 + 8);
      if (v12 != 11)
      {
        break;
      }

      if (*(v9 + 40) == v11)
      {
        v10 = *(v9 + 24);
        if (v10)
        {
          continue;
        }
      }

      goto LABEL_106;
    }

    switch(v12)
    {
      case 1:
        if (v9 != a2 && *(v3 + 56) == 1 && *__xmlIndentTreeOutput())
        {
          v28 = *(v3 + 52);
          if (v28 >= *(v3 + 124))
          {
            v28 = *(v3 + 124);
          }

          xmlOutputBufferWrite(v7, v28 * *(v3 + 128), (v3 + 60));
        }

        if (*(v9 + 40) != v11 && *(v9 + 24))
        {
          result = xmlNodeDumpOutputInternal(v3, v9);
          goto LABEL_106;
        }

        v29 = v5;
        xmlOutputBufferWrite(v7, 1, "<");
        v30 = *(v9 + 72);
        if (v30)
        {
          v31 = *(v30 + 24);
          if (v31)
          {
            xmlOutputBufferWriteString(v7, v31);
            xmlOutputBufferWrite(v7, 1, ":");
          }
        }

        xmlOutputBufferWriteString(v7, *(v9 + 16));
        for (i = *(v9 + 96); i; i = *i)
        {
          xmlNsDumpOutput(*(v3 + 40), i, v3);
        }

        for (j = *(v9 + 88); j; j = *(j + 48))
        {
          xmlAttrDumpOutput(v3, j);
        }

        v34 = *(v9 + 24);
        if (v34)
        {
          v35 = *(v3 + 56);
          v5 = v29;
          if (v35 == 2)
          {
            xmlOutputBufferWriteWSNonSig(v3, 1);
          }

          else if (v35 == 1)
          {
            while ((*(v34 + 8) - 3) > 2)
            {
              v34 = *(v34 + 48);
              if (!v34)
              {
                goto LABEL_113;
              }
            }

            *(v3 + 56) = 0;
            v4 = v9;
          }

LABEL_113:
          result = xmlOutputBufferWrite(v7, 1, ">");
          if (*(v3 + 56) == 1)
          {
            result = xmlOutputBufferWrite(v7, 1, v6);
          }

          v48 = *(v3 + 52);
          if ((v48 & 0x80000000) == 0)
          {
            *(v3 + 52) = v48 + 1;
          }

          v10 = *(v9 + 24);
          continue;
        }

        v38 = *(v3 + 56);
        v5 = v29;
        if ((*(v3 + 48) & 4) != 0)
        {
          if (v38 == 2)
          {
            xmlOutputBufferWriteWSNonSig(v3, 1);
          }

          xmlOutputBufferWrite(v7, 3, "></");
          v39 = *(v9 + 72);
          if (v39)
          {
            v40 = *(v39 + 24);
            if (v40)
            {
              xmlOutputBufferWriteString(v7, v40);
              xmlOutputBufferWrite(v7, 1, ":");
            }
          }

          xmlOutputBufferWriteString(v7, *(v9 + 16));
          if (*(v3 + 56) == 2)
          {
            xmlOutputBufferWriteWSNonSig(v3, 0);
          }

          result = xmlOutputBufferWrite(v7, 1, ">");
        }

        else
        {
          if (v38 == 2)
          {
            xmlOutputBufferWriteWSNonSig(v3, 0);
          }

          result = xmlOutputBufferWrite(v7, 2, "/>");
        }

        goto LABEL_106;
      case 2:
        result = xmlAttrDumpOutput(v3, v9);
        goto LABEL_106;
      case 3:
        v25 = *(v9 + 80);
        if (v25)
        {
          if (*(v9 + 16) == "textnoenc")
          {
            result = xmlOutputBufferWriteString(v7, v25);
          }

          else
          {
            result = xmlOutputBufferWriteEscape(v7, v25, *(v3 + 136));
          }
        }

        goto LABEL_106;
      case 4:
        v14 = *(v9 + 80);
        if (!v14 || (v15 = *v14, v16 = *(v9 + 80), v49 = v4, !*v14))
        {
          result = xmlOutputBufferWrite(v7, 12, "<![CDATA[]]>");
          goto LABEL_106;
        }

        while (2)
        {
          if (v15 == 93)
          {
            if (v16[1] == 93)
            {
              v17 = v8;
              v18 = v6;
              v19 = v5;
              v20 = v16 + 2;
              if (v16[2] == 62)
              {
                v21 = v14;
                xmlOutputBufferWrite(v7, 9, "<![CDATA[");
                v22 = v20 - v21;
                v23 = v21;
                v4 = v49;
                xmlOutputBufferWrite(v7, v22, v23);
                result = xmlOutputBufferWrite(v7, 3, "]]>");
                v14 = v20;
                v16 = v20;
              }

              v5 = v19;
              v6 = v18;
              v8 = v17;
            }

            goto LABEL_26;
          }

          if (v15)
          {
LABEL_26:
            v24 = *++v16;
            v15 = v24;
            continue;
          }

          break;
        }

        if (v14 != v16)
        {
          v36 = v14;
          xmlOutputBufferWrite(v7, 9, "<![CDATA[");
          v37 = v36;
          v4 = v49;
          xmlOutputBufferWriteString(v7, v37);
          result = xmlOutputBufferWrite(v7, 3, "]]>");
        }

LABEL_106:
        while (v9 != a2)
        {
          v47 = v9;
          v9 = v11;
          if (*(v3 + 56) == 1 && (*(v47 + 8) - 19) >= 2)
          {
            result = xmlOutputBufferWrite(v7, 1, v6);
          }

          v10 = *(v47 + 48);
          if (v10)
          {
            goto LABEL_3;
          }

          v11 = *(v11 + 40);
          if (*(v9 + 8) == 1)
          {
            v41 = *(v3 + 52);
            v42 = __OFSUB__(v41, 1);
            v43 = v41 - 1;
            if (v43 < 0 == v42)
            {
              *(v3 + 52) = v43;
            }

            if (*__xmlIndentTreeOutput() && *(v3 + 56) == 1)
            {
              v44 = *(v3 + 52);
              if (v44 >= *(v3 + 124))
              {
                v44 = *(v3 + 124);
              }

              xmlOutputBufferWrite(v7, v44 * *(v3 + 128), (v3 + 60));
            }

            xmlOutputBufferWrite(v7, 2, v8);
            v45 = *(v9 + 72);
            if (v45)
            {
              v46 = *(v45 + 24);
              if (v46)
              {
                xmlOutputBufferWriteString(v7, v46);
                xmlOutputBufferWrite(v7, 1, ":");
              }
            }

            xmlOutputBufferWriteString(v7, *(v9 + 16));
            if (*(v3 + 56) == 2)
            {
              xmlOutputBufferWriteWSNonSig(v3, 0);
            }

            result = xmlOutputBufferWrite(v7, 1, ">");
            if (v9 == v4)
            {
              v4 = 0;
              *(v3 + 56) = v5;
            }
          }
        }

        return result;
      case 5:
        xmlOutputBufferWrite(v7, 1, "&");
        xmlOutputBufferWriteString(v7, *(v9 + 16));
        result = xmlOutputBufferWrite(v7, 1, ";");
        goto LABEL_106;
      case 7:
        if (v9 != a2 && *(v3 + 56) == 1 && *__xmlIndentTreeOutput())
        {
          v26 = *(v3 + 52);
          if (v26 >= *(v3 + 124))
          {
            v26 = *(v3 + 124);
          }

          xmlOutputBufferWrite(v7, v26 * *(v3 + 128), (v3 + 60));
        }

        v27 = *(v9 + 80);
        xmlOutputBufferWrite(v7, 2, "<?");
        xmlOutputBufferWriteString(v7, *(v9 + 16));
        if (v27)
        {
          if (*(v9 + 80))
          {
            if (*(v3 + 56) == 2)
            {
              xmlOutputBufferWriteWSNonSig(v3, 0);
            }

            else
            {
              xmlOutputBufferWrite(v7, 1, " ");
            }

            xmlOutputBufferWriteString(v7, *(v9 + 80));
          }
        }

        else if (*(v3 + 56) == 2)
        {
          xmlOutputBufferWriteWSNonSig(v3, 0);
        }

        result = xmlOutputBufferWrite(v7, 2, "?>");
        goto LABEL_106;
      case 8:
        if (v9 != a2 && *(v3 + 56) == 1)
        {
          result = __xmlIndentTreeOutput();
          if (*result)
          {
            v13 = *(v3 + 52);
            if (v13 >= *(v3 + 124))
            {
              v13 = *(v3 + 124);
            }

            result = xmlOutputBufferWrite(v7, v13 * *(v3 + 128), (v3 + 60));
          }
        }

        if (*(v9 + 80))
        {
          xmlOutputBufferWrite(v7, 4, "<!--");
          xmlOutputBufferWriteString(v7, *(v9 + 80));
          result = xmlOutputBufferWrite(v7, 3, "-->");
        }

        goto LABEL_106;
      case 9:
      case 13:
        result = xmlDocContentDumpOutput(v3, v9);
        goto LABEL_106;
      case 14:
        result = xmlDtdDumpOutput(v3, v9);
        goto LABEL_106;
      case 15:
        result = xmlBufDumpElementDecl(*(v7 + 32), v9);
        goto LABEL_106;
      case 16:
        result = xmlBufDumpAttributeDecl(*(v7 + 32), v9);
        goto LABEL_106;
      case 17:
        result = xmlBufDumpEntityDecl(*(v7 + 32), v9);
        goto LABEL_106;
      case 18:
        result = xmlNsDumpOutput(*(v3 + 40), v9, v3);
        goto LABEL_106;
      default:
        goto LABEL_106;
    }
  }
}

int *__xmlSaveNoEmptyTags(void)
{
  if (xmlIsMainThread())
  {
    return &xmlSaveNoEmptyTags;
  }

  else
  {
    return &xmlGetGlobalState()->xmlSaveNoEmptyTags;
  }
}

int *xmlSaveCtxtInit(int *result)
{
  if (result)
  {
    v1 = result;
    if (!*(result + 3) && !*(result + 17))
    {
      *(result + 17) = xmlEscapeEntities;
    }

    v2 = __xmlTreeIndentString();
    v3 = xmlStrlen(*v2);
    if (*__xmlTreeIndentString() && v3)
    {
      v4 = 60 / v3;
      v1[31] = 60 / v3;
      v1[32] = v3;
      if (60 / v3 >= 1)
      {
        v5 = 0;
        do
        {
          v6 = v1 + v1[32] * v5 + 60;
          v7 = __xmlTreeIndentString();
          memcpy(v6, *v7, v1[32]);
          ++v5;
          v4 = v1[31];
        }

        while (v5 < v4);
        v3 = v1[32];
      }

      *(v1 + v3 * v4 + 60) = 0;
    }

    else
    {
      *(v1 + 105) = 0u;
      *(v1 + 23) = 0u;
      *(v1 + 19) = 0u;
      *(v1 + 15) = 0u;
    }

    result = __xmlSaveNoEmptyTags();
    if (*result)
    {
      v1[12] |= 4u;
    }
  }

  return result;
}

const char **__xmlTreeIndentString(void)
{
  if (xmlIsMainThread())
  {
    return &xmlTreeIndentString;
  }

  else
  {
    return &xmlGetGlobalState()->xmlTreeIndentString;
  }
}

int xmlOutputBufferFlush(xmlOutputBufferPtr out)
{
  if (!out || out->error)
  {
    return -1;
  }

  p_conv = &out->conv;
  if (out->conv && out->encoder)
  {
    do
    {
      v5 = xmlCharEncOutput(out, 0);
      if (v5 < 0)
      {
        __xmlSimpleError(8u, 1544, 0, "encoder error", 0);
        out->error = 1544;
        return -1;
      }
    }

    while (v5);
    if (*p_conv)
    {
      if (out->encoder)
      {
        writecallback = out->writecallback;
        if (writecallback)
        {
          context = out->context;
          v8 = xmlBufContent(*p_conv);
          conv = out->conv;
          goto LABEL_15;
        }
      }
    }
  }

  writecallback = out->writecallback;
  if (writecallback)
  {
    context = out->context;
    p_conv = &out->buffer;
    v8 = xmlBufContent(out->buffer);
    conv = out->buffer;
LABEL_15:
    v10 = xmlBufUse(conv);
    v2 = (writecallback)(context, v8, v10);
    if ((v2 & 0x80000000) != 0)
    {
      __xmlSimpleError(8u, 1545, 0, "flush error", 0);
      out->error = 1545;
      return v2;
    }

    xmlBufShrink(*p_conv, v2);
  }

  else
  {
    v2 = 0;
  }

  written = out->written;
  if (written <= (v2 ^ 0x7FFFFFFF))
  {
    v12 = written + v2;
  }

  else
  {
    v12 = 0x7FFFFFFF;
  }

  out->written = v12;
  return v2;
}

uint64_t xmlEscapeContent(_BYTE *a1, int *a2, unsigned __int8 *a3, int *a4)
{
  v4 = *a2;
  v5 = *a4;
  v6 = v5 < 1 || v4 < 1;
  LODWORD(v7) = a3;
  LODWORD(v8) = a1;
  if (!v6)
  {
    v9 = &a1[v4];
    v10 = &a3[v5];
    v8 = a1;
    v7 = a3;
    while (1)
    {
      v11 = *v7;
      if (v11 > 0x3B)
      {
        break;
      }

      if (v11 == 13)
      {
        if ((v9 - v8) < 5)
        {
          goto LABEL_23;
        }

        *v8 = 858858278;
      }

      else
      {
        if (v11 != 38)
        {
          goto LABEL_15;
        }

        if ((v9 - v8) < 5)
        {
          goto LABEL_23;
        }

        *v8 = 1886216486;
      }

      v8[4] = 59;
      v8 += 5;
LABEL_21:
      if (++v7 >= v10 || v8 >= v9)
      {
        goto LABEL_23;
      }
    }

    if (v11 == 62)
    {
      if ((v9 - v8) < 4)
      {
        goto LABEL_23;
      }

      *v8 = 997484326;
      v8 += 4;
      goto LABEL_21;
    }

    if (v11 == 60)
    {
      if ((v9 - v8) < 4)
      {
        goto LABEL_23;
      }

      *v8 = 997485606;
      v8 += 4;
      goto LABEL_21;
    }

LABEL_15:
    *v8++ = v11;
    goto LABEL_21;
  }

LABEL_23:
  *a2 = v8 - a1;
  *a4 = v7 - a3;
  return 0;
}

int xmlTextReaderRead(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  *(reader + 15) = 0;
  v2 = *(reader + 1);
  if (v2)
  {
    v3 = *(reader + 6);
    if (v3 == 2)
    {
      return 0;
    }

    v10 = *(reader + 14);
    while (1)
    {
      if (v10)
      {
        if (v3 != 4)
        {
          v11 = *(v10 + 8);
          if (v11 > 0x13 || ((1 << v11) & 0x84020) == 0)
          {
            v13 = *(v10 + 24);
            if (v13)
            {
              v3 = 0;
              *(reader + 14) = v13;
              ++*(reader + 32);
              goto LABEL_25;
            }

            if (v11 == 2)
            {
              v3 = 4;
              goto LABEL_26;
            }
          }
        }

        v13 = *(v10 + 48);
        if (v13)
        {
          v3 = 0;
          *(reader + 14) = v13;
LABEL_25:
          v10 = v13;
          goto LABEL_26;
        }

        v13 = *(v10 + 40);
        if (v13)
        {
          if ((*(v13 + 8) | 4) == 0xD)
          {
LABEL_30:
            result = 0;
            v14 = 2;
            goto LABEL_71;
          }

          *(reader + 14) = v13;
          --*(reader + 32);
          v3 = 4;
          goto LABEL_25;
        }

        v3 = 2;
      }

      else
      {
        v10 = *(v2 + 24);
        if (!v10)
        {
          goto LABEL_30;
        }

        v3 = 0;
        *(reader + 14) = v10;
      }

LABEL_26:
      *(reader + 6) = v3;
      if ((*(v10 + 8) - 19) >= 2)
      {
        return 1;
      }
    }
  }

  v5 = *(reader + 4);
  if (!v5)
  {
    return -1;
  }

  if (!*reader)
  {
    *reader = 1;
    while (1)
    {
      if ((xmlTextReaderPushData(reader) & 0x80000000) != 0)
      {
        goto LABEL_42;
      }

      v15 = *(reader + 4);
      if (*(v15 + 80))
      {
        break;
      }

      if (*reader == 3 || *(reader + 6) == 5)
      {
        v16 = *(v15 + 16);
        if (v16)
        {
          v17 = *(v16 + 24);
          *(reader + 14) = v17;
        }

        else
        {
          v17 = *(reader + 14);
        }

        if (!v17)
        {
LABEL_42:
          *reader = 2;
          *(reader + 6) = 6;
          return -1;
        }

LABEL_47:
        v6 = 0;
        v9 = 0;
        v7 = 0;
        *(reader + 6) = 1;
        *(reader + 32) = 0;
        *(v15 + 688) = 5;
        goto LABEL_128;
      }
    }

    v18 = *(v15 + 16);
    if (v18)
    {
      v19 = *(v18 + 24);
      *(reader + 14) = v19;
    }

    else
    {
      v19 = *(reader + 14);
    }

    if (!v19)
    {
      *(reader + 14) = **(v15 + 96);
    }

    goto LABEL_47;
  }

  v6 = *(reader + 6);
  v7 = *(v5 + 88);
  v8 = *(reader + 14);
  v9 = v8;
  while (2)
  {
    while (2)
    {
      if (!v8)
      {
        if (*reader == 3)
        {
          return 0;
        }

        else
        {
          return -1;
        }
      }

      while (1)
      {
        while (1)
        {
          v20 = *(v8 + 48);
          if (v20)
          {
            break;
          }

          v21 = *(reader + 4);
          if (*(v21 + 88) != v7)
          {
            goto LABEL_72;
          }

          if (v6 != 4)
          {
            v22 = *(v8 + 24);
            if (v22)
            {
              v23 = *(v8 + 8);
              if (v23 != 5 && (*(v22 + 8) != 3 || *(v22 + 48)) && (v23 > 0xE || ((1 << v23) & 0x6200) == 0))
              {
LABEL_91:
                v35 = *(v8 + 8);
                v34 = 1;
                v30 = v35 > 0x13;
                v36 = (1 << v35) & 0x84020;
                if (v30 || v36 == 0)
                {
                  *(reader + 14) = v22;
                  ++*(reader + 32);
                  *(reader + 6) = 1;
                  goto LABEL_128;
                }

                goto LABEL_95;
              }
            }
          }

          v24 = *(v21 + 80);
          v25 = !v24 || v24 == v8;
          if (!v25 && v24 != *(v8 + 40) || *(v21 + 272) == -1)
          {
LABEL_72:
            if (v6 == 4)
            {
              goto LABEL_73;
            }

            goto LABEL_90;
          }

          if ((xmlTextReaderPushData(reader) & 0x80000000) != 0)
          {
            goto LABEL_42;
          }

          v8 = *(reader + 14);
          if (!v8)
          {
            goto LABEL_70;
          }
        }

        if (v6 == 4)
        {
          goto LABEL_103;
        }

LABEL_90:
        v34 = 0;
        v22 = *(v8 + 24);
        if (v22)
        {
          goto LABEL_91;
        }

LABEL_95:
        if (!v20)
        {
          if (v6 == 1)
          {
            v40 = *(v8 + 8) == 1 ? v34 : 1;
            if ((v40 & 1) == 0 && (*(v8 + 114) & 1) == 0)
            {
LABEL_116:
              *(reader + 6) = 2;
              v6 = 1;
              goto LABEL_128;
            }
          }

LABEL_73:
          if (*(reader + 4) && *(v8 + 8) == 1)
          {
            xmlTextReaderValidatePop(reader);
            v8 = *(reader + 14);
          }

          v26 = *(reader + 80);
          v27 = v26 - 1;
          if (v26 >= 1)
          {
            v26 = 1;
            if ((*(v8 + 114) & 4) != 0)
            {
              *(reader + 80) = v27;
              v26 = v27;
            }
          }

          v28 = *(v8 + 40);
          *(reader + 14) = v28;
          if (!v28 || ((v29 = *(v28 + 8), v30 = v29 > 0x15, v31 = (1 << v29) & 0x202200, !v30) ? (v32 = v31 == 0) : (v32 = 1), !v32))
          {
            if (*reader != 3)
            {
              v57 = xmlParseChunk(*(reader + 4), "", 0, 1);
              *(reader + 6) = 5;
              if (v57)
              {
                return -1;
              }
            }

            *(reader + 14) = 0;
            *(reader + 32) = -1;
            if (v9 && !*(reader + 80) && !*(reader + 74) && !*(reader + 44) && *(v9 + 8) != 14 && (*(v9 + 114) & 2) == 0)
            {
              xmlUnlinkNode(v9);
              xmlTextReaderFreeNode(reader, v9);
            }

LABEL_70:
            result = 0;
            v14 = 5;
LABEL_71:
            *(reader + 6) = v14;
            return result;
          }

          if (!v26 && !*(reader + 74) && !*(reader + 44))
          {
            v63 = *(v28 + 32);
            if (v63)
            {
              if ((*(v63 + 114) & 2) == 0)
              {
                xmlUnlinkNode(*(v28 + 32));
                xmlTextReaderFreeNode(reader, v63);
              }
            }
          }

          --*(reader + 32);
          v33 = 4;
LABEL_109:
          *(reader + 6) = v33;
          goto LABEL_128;
        }

        if (v6 == 1)
        {
          v38 = *(v8 + 8) == 1 ? v34 : 1;
          if ((v38 & 1) == 0 && (*(v8 + 114) & 1) == 0 && *(reader + 74) <= 0)
          {
            goto LABEL_116;
          }
        }

LABEL_103:
        if (*(reader + 4) && *(v8 + 8) == 1)
        {
          xmlTextReaderValidatePop(reader);
          v8 = *(reader + 14);
        }

        v39 = *(reader + 80);
        if (v39 >= 1)
        {
          if ((*(v8 + 114) & 4) == 0)
          {
            *(reader + 14) = *(v8 + 48);
            v33 = 1;
            goto LABEL_109;
          }

          *(reader + 80) = --v39;
        }

        v41 = *(v8 + 48);
        *(reader + 14) = v41;
        *(reader + 6) = 1;
        if (!v39 && !*(reader + 74) && !*(reader + 44))
        {
          v42 = *(v41 + 56);
          if (v42)
          {
            if (*(v42 + 8) != 14 && (*(v42 + 114) & 2) == 0)
            {
              if (v9 == v42)
              {
                v9 = 0;
              }

              xmlUnlinkNode(v42);
              xmlTextReaderFreeNode(reader, v42);
            }
          }
        }

LABEL_128:
        v43 = *(reader + 14);
        if (v43 && !*(v43 + 48) && (*(v43 + 8) - 3) <= 1 && !xmlTextReaderExpand(reader))
        {
          return -1;
        }

        if (*(reader + 68) && !*(reader + 74) && *(reader + 6) != 4)
        {
          v44 = *(reader + 14);
          if (!v44)
          {
            goto LABEL_182;
          }

          if (*(v44 + 8) == 1)
          {
            v45 = *(v44 + 72);
            if (v45)
            {
              if (xmlStrEqual(*(v45 + 16), "http://www.w3.org/2003/XInclude") || xmlStrEqual(*(*(*(reader + 14) + 72) + 16), "http://www.w3.org/2001/XInclude"))
              {
                if (!*(reader + 36))
                {
                  v46 = xmlXIncludeNewContext(*(*(reader + 4) + 16));
                  *(reader + 36) = v46;
                  xmlXIncludeSetFlags(v46, *(reader + 81) & 0xFFFF7FFF);
                }

                if (!xmlTextReaderExpand(reader))
                {
                  return -1;
                }

                xmlXIncludeProcessNode(*(reader + 36), *(reader + 14));
              }
            }
          }
        }

        v8 = *(reader + 14);
        if (!v8)
        {
          goto LABEL_182;
        }

        v47 = *(v8 + 8);
        if (v47 == 5)
        {
          break;
        }

        v48 = 1;
        if (v47 != 19)
        {
          if (v47 != 20)
          {
            goto LABEL_160;
          }

          v48 = -1;
        }

        *(reader + 74) += v48;
      }

      v49 = *(reader + 4);
      if (v49)
      {
        if (*(v49 + 28) == 1)
        {
          v50 = *(v8 + 24);
          if (v50 && *(v50 + 8) == 17 && *(v50 + 24))
          {
            v51 = xmlTextReaderEntPush(reader, v8);
            v8 = *(reader + 14);
            if (v51 < 0)
            {
              continue;
            }

            v8 = *(*(v8 + 24) + 24);
            *(reader + 14) = v8;
            goto LABEL_159;
          }
        }

        else if (*(reader + 4))
        {
          xmlTextReaderValidateEntity(reader);
          v8 = *(reader + 14);
LABEL_159:
          if (!v8)
          {
LABEL_182:
            v58 = (reader + 16);
            goto LABEL_183;
          }
        }
      }

      break;
    }

LABEL_160:
    if (*(v8 + 8) == 17)
    {
      v52 = *(reader + 21);
      if (v52)
      {
        if (*(v52 + 24) == v8)
        {
          v8 = 0;
          v53 = *(reader + 44);
          if (v53 >= 1)
          {
            v54 = 0;
            v55 = *(reader + 23);
            v56 = v53 - 1;
            *(reader + 44) = v53 - 1;
            if (v53 != 1)
            {
              v54 = *(v55 + 8 * v53 - 16);
            }

            *(reader + 21) = v54;
            v8 = *(v55 + 8 * v56);
            *(v55 + 8 * v56) = 0;
          }

          *(reader + 14) = v8;
          ++*(reader + 32);
          continue;
        }
      }
    }

    break;
  }

  v58 = (reader + 16);
  if (*(reader + 4))
  {
    v59 = *(v8 + 8);
    if (v59 == 1)
    {
      v60 = *(reader + 6);
      if (v60 != 2 && v60 != 4)
      {
        xmlTextReaderValidatePush(reader);
      }
    }

    else if ((v59 - 3) <= 1)
    {
      v64 = *(v8 + 80);
      v65 = xmlStrlen(v64);
      xmlTextReaderValidateCData(reader, v64, v65);
    }
  }

LABEL_183:
  if (*(reader + 75) >= 1)
  {
    v61 = *(reader + 6);
    if (v61 != 2 && v61 != 4)
    {
      v62 = 0;
      while (xmlPatternMatch(*(*(reader + 39) + 8 * v62), *(reader + 14)) != 1)
      {
        if (++v62 >= *(reader + 75))
        {
          goto LABEL_196;
        }
      }

      xmlTextReaderPreserve(reader);
    }
  }

LABEL_196:
  if (*v58 == 4 && !*(reader + 65))
  {
    v66 = *(reader + 31);
    if (v66)
    {
      *(reader + 65) = xmlSchemaIsValid(v66) == 0;
    }
  }

  return 1;
}

uint64_t xmlTextReaderPushData(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(v1 + 32);
  result = 0xFFFFFFFFLL;
  if (v3)
  {
    v5 = *(a1 + 24);
    *(a1 + 24) = -1;
    AllocationScheme = xmlBufGetAllocationScheme(v3);
    while (*(a1 + 24) == -1)
    {
      if (xmlBufUse(v3) < (*(a1 + 108) + 512))
      {
        if (*a1 == 3)
        {
          goto LABEL_32;
        }

        result = xmlParserInputBufferRead(*(a1 + 48), 4096);
        if (result || AllocationScheme != 2)
        {
          if ((result & 0x80000000) != 0)
          {
            *a1 = 3;
            *(a1 + 24) = v5;
            return result;
          }

          if (!result)
          {
            *a1 = 3;
            goto LABEL_32;
          }
        }

        else if (xmlBufUse(v3) == *(a1 + 108))
        {
          *a1 = 3;
          *(a1 + 24) = v5;
        }
      }

      if (xmlBufUse(v3) < (*(a1 + 108) + 512))
      {
        v11 = xmlBufUse(v3) - *(a1 + 108);
        v12 = *(a1 + 32);
        v13 = xmlBufContent(v3);
        v14 = xmlParseChunk(v12, &v13[*(a1 + 108)], v11, 0);
        *(a1 + 108) += v11;
        if (!v14)
        {
          break;
        }

        v10 = *(a1 + 32);
LABEL_20:
        *(v10 + 24) = 0;
        break;
      }

      v7 = *(a1 + 32);
      v8 = xmlBufContent(v3);
      v9 = xmlParseChunk(v7, &v8[*(a1 + 108)], 512, 0);
      *(a1 + 108) += 512;
      v10 = *(a1 + 32);
      if (v9)
      {
        goto LABEL_20;
      }

      if (!*(v10 + 24))
      {
        break;
      }
    }

    if (*a1 != 3)
    {
      if (*a1 == 1 && AllocationScheme != 2 && *(a1 + 108) >= 0x1000u)
      {
        v16 = xmlBufUse(v3);
        v17 = *(a1 + 108);
        if (v16 - v17 <= 0x200)
        {
          v18 = xmlBufShrink(v3, v17);
          if ((v18 & 0x80000000) == 0)
          {
            *(a1 + 108) -= v18;
          }
        }
      }

      goto LABEL_36;
    }

LABEL_32:
    if (*(a1 + 24) != 5)
    {
      v19 = xmlBufUse(v3) - *(a1 + 108);
      v20 = *(a1 + 32);
      v21 = xmlBufContent(v3);
      v22 = xmlParseChunk(v20, &v21[*(a1 + 108)], v19, 1);
      *(a1 + 108) = xmlBufUse(v3);
      *(a1 + 24) = 5;
      if (v22)
      {
        v23 = *(a1 + 32);
        if (!*(v23 + 24))
        {
          return 0xFFFFFFFFLL;
        }

        *(v23 + 24) = 0;
      }
    }

LABEL_36:
    *(a1 + 24) = v5;
    if (*(*(a1 + 32) + 24))
    {
      return 0;
    }

    *a1 = 3;
    return 0xFFFFFFFFLL;
  }

  return result;
}

xmlTextReaderPtr xmlReaderForMemory(const char *buffer, int size, const char *URL, const char *encoding, int options)
{
  Static = xmlParserInputBufferCreateStatic(buffer, size, XML_CHAR_ENCODING_NONE);
  if (!Static)
  {
    return 0;
  }

  v9 = Static;
  v10 = xmlNewTextReader(Static, URL);
  v11 = v10;
  if (v10)
  {
    *(v10 + 5) |= 1u;
    xmlTextReaderSetup(v10, 0, URL, encoding, options);
  }

  else
  {
    xmlFreeParserInputBuffer(v9);
  }

  return v11;
}

xmlParserInputBufferPtr xmlParserInputBufferCreateStatic(const char *mem, int size, xmlCharEncoding enc)
{
  v3 = 0;
  if (mem && (size & 0x80000000) == 0)
  {
    v7 = malloc_type_malloc(0x40uLL, 0x10A0040046C4AC8uLL);
    v3 = v7;
    if (v7)
    {
      *&v7->buffer = 0u;
      *&v7->compressed = 0u;
      *&v7->context = 0u;
      *&v7->closecallback = 0u;
      Static = xmlBufCreateStatic(mem, size);
      v3->buffer = Static;
      if (Static)
      {
        CharEncodingHandler = xmlGetCharEncodingHandler(enc);
        v3->encoder = CharEncodingHandler;
        if (CharEncodingHandler)
        {
          v10 = __xmlDefaultBufferSize();
          CharEncodingHandler = xmlBufCreateSize(2 * *v10);
        }

        v3->raw = CharEncodingHandler;
        v3->compressed = -1;
        v3->readcallback = 0;
        v3->closecallback = 0;
        v3->context = mem;
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
  }

  return v3;
}

void *xmlBufCreateStatic(void *result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(0x40uLL, 0x10300408E9632E7uLL);
    if (result)
    {
      result[4] = a2;
      result[5] = a2;
      v4 = 0x7FFFFFFF;
      if (a2 < 0x7FFFFFFF)
      {
        v4 = a2;
      }

      *(result + 2) = v4;
      *(result + 3) = v4;
      *(result + 4) = 2;
      *result = v3;
      *(result + 14) = 0;
      result[6] = 0;
    }

    else
    {
      __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
      return 0;
    }
  }

  return result;
}

xmlTextReaderPtr xmlNewTextReader(xmlParserInputBufferPtr input, const char *URI)
{
  if (!input)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x150uLL, 0x10F004018F9B003uLL);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v4[19] = 0u;
  v4[20] = 0u;
  v4[17] = 0u;
  v4[18] = 0u;
  v4[15] = 0u;
  v4[16] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *v4 = 0u;
  *(v4 + 6) = input;
  Size = xmlBufCreateSize(100);
  *(v5 + 19) = Size;
  if (!Size)
  {
LABEL_12:
    free(v5);
LABEL_13:
    v16 = *__xmlGenericError();
    v17 = __xmlGenericErrorContext();
    v16(*v17, "xmlNewTextReader : malloc failed\n");
    return 0;
  }

  xmlBufSetAllocationScheme(Size, 5u);
  v7 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL);
  *(v5 + 5) = v7;
  if (!v7)
  {
    xmlBufFree(*(v5 + 19));
    goto LABEL_12;
  }

  xmlSAXVersion(v7, 2);
  v8 = *(v5 + 5);
  v9 = *(v8 + 112);
  *(v8 + 112) = xmlTextReaderStartElement;
  *(v5 + 14) = v9;
  *(v8 + 120) = xmlTextReaderEndElement;
  v10 = 0uLL;
  if (*(v8 + 216) == -554844497)
  {
    v10 = *(v8 + 232);
    *(v8 + 232) = xmlTextReaderStartElementNs;
    *(v8 + 240) = xmlTextReaderEndElementNs;
  }

  *(v5 + 18) = v10;
  *(v5 + 11) = *(v8 + 136);
  *(v8 + 136) = xmlTextReaderCharacters;
  *(v8 + 144) = xmlTextReaderCharacters;
  *(v5 + 12) = *(v8 + 200);
  *(v8 + 200) = xmlTextReaderCDataBlock;
  *v5 = 0;
  *(v5 + 14) = 0;
  *(v5 + 15) = 0;
  if (xmlBufUse(*(*(v5 + 6) + 32)) <= 3)
  {
    xmlParserInputBufferRead(input, 4);
  }

  v11 = xmlBufUse(*(*(v5 + 6) + 32));
  v12 = *(v5 + 5);
  if (v11 < 4)
  {
    PushParserCtxt = xmlCreatePushParserCtxt(*(v5 + 5), 0, 0, 0, URI);
    v14 = 0;
  }

  else
  {
    v13 = xmlBufContent(*(*(v5 + 6) + 32));
    v14 = 4;
    PushParserCtxt = xmlCreatePushParserCtxt(v12, 0, v13, 4, URI);
  }

  *(v5 + 4) = PushParserCtxt;
  v5[26] = 0;
  v5[27] = v14;
  if (PushParserCtxt)
  {
    PushParserCtxt->parseMode = XML_PARSE_READER;
    PushParserCtxt->_private = v5;
    PushParserCtxt->linenumbers = 1;
    PushParserCtxt->dictNames = 1;
    v5[5] = 2;
    PushParserCtxt->docdict = 1;
    *(v5 + 20) = PushParserCtxt->dict;
    v5[68] = 0;
    v5[76] = 0;
    *(v5 + 39) = 0;
    return v5;
  }

  v19 = *__xmlGenericError();
  v20 = __xmlGenericErrorContext();
  v19(*v20, "xmlNewTextReader : malloc failed\n");
  xmlBufFree(*(v5 + 19));
  free(*(v5 + 5));
  free(v5);
  return 0;
}

int xmlTextReaderSetup(xmlTextReaderPtr reader, xmlParserInputBufferPtr input, const char *URL, const char *encoding, int options)
{
  if (!reader)
  {
    if (input)
    {
      v25 = input;
LABEL_25:
      xmlFreeParserInputBuffer(v25);
    }

    return -1;
  }

  v6 = options;
  v10 = options | 0x10000;
  *(reader + 1) = 0;
  *(reader + 44) = 0;
  *(reader + 81) = options | 0x10000;
  *(reader + 4) = 0;
  if (input)
  {
    v11 = *(reader + 6);
    v12 = *(reader + 5);
    if (v11)
    {
      v13 = (*(reader + 5) & 1) == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      xmlFreeParserInputBuffer(v11);
      v12 = *(reader + 5) - 1;
    }

    *(reader + 6) = input;
    *(reader + 5) = v12 | 1;
  }

  Size = *(reader + 19);
  if (!Size && (Size = xmlBufCreateSize(100), (*(reader + 19) = Size) == 0) || (xmlBufSetAllocationScheme(Size, 5u), (v15 = *(reader + 5)) == 0) && (v15 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL), (*(reader + 5) = v15) == 0))
  {
LABEL_64:
    v40 = *__xmlGenericError();
    v41 = __xmlGenericErrorContext();
    v40(*v41, "xmlTextReaderSetup : malloc failed\n");
    return -1;
  }

  xmlSAXVersion(v15, 2);
  v16 = *(reader + 5);
  v17 = *(v16 + 112);
  *(v16 + 112) = xmlTextReaderStartElement;
  *(reader + 56) = v17;
  *(v16 + 120) = xmlTextReaderEndElement;
  v18 = 0uLL;
  if (*(v16 + 216) == -554844497)
  {
    v18 = *(v16 + 232);
    *(v16 + 232) = xmlTextReaderStartElementNs;
    *(v16 + 240) = xmlTextReaderEndElementNs;
  }

  *(reader + 72) = v18;
  *(reader + 11) = *(v16 + 136);
  *(v16 + 136) = xmlTextReaderCharacters;
  *(v16 + 144) = xmlTextReaderCharacters;
  *(reader + 12) = *(v16 + 200);
  *(v16 + 200) = xmlTextReaderCDataBlock;
  *reader = 0;
  *(reader + 14) = 0;
  *(reader + 15) = 0;
  if (!input)
  {
    goto LABEL_30;
  }

  if (xmlBufUse(*(*(reader + 6) + 32)) <= 3)
  {
    xmlParserInputBufferRead(input, 4);
  }

  v19 = *(reader + 4);
  if (!v19)
  {
    v26 = xmlBufUse(*(*(reader + 6) + 32));
    v27 = *(reader + 5);
    if (v26 < 4)
    {
      PushParserCtxt = xmlCreatePushParserCtxt(*(reader + 5), 0, 0, 0, URL);
      *(reader + 4) = PushParserCtxt;
      *(reader + 13) = 0;
      if (PushParserCtxt)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v28 = xmlBufContent(*(*(reader + 6) + 32));
      v29 = xmlCreatePushParserCtxt(v27, 0, v28, 4, URL);
      *(reader + 4) = v29;
      *(reader + 13) = 0x400000000;
      if (v29)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_64;
  }

  xmlCtxtReset(v19);
  v20 = xmlAllocParserInputBuffer(XML_CHAR_ENCODING_NONE);
  if (!v20)
  {
    return -1;
  }

  v21 = v20;
  v22 = xmlNewInputStream(*(reader + 4));
  if (!v22)
  {
    v25 = v21;
    goto LABEL_25;
  }

  v23 = v22;
  if (URL)
  {
    v24 = xmlCanonicPath(URL);
  }

  else
  {
    v24 = 0;
  }

  v23->buf = v21;
  v23->filename = v24;
  xmlBufResetInput(v21->buffer, v23);
  if (inputPush(*(reader + 4), v23) < 0)
  {
    xmlFreeInputStream(v23);
    return -1;
  }

  *(reader + 27) = 0;
  if (!*(reader + 4))
  {
    goto LABEL_64;
  }

LABEL_30:
  v31 = *(reader + 20);
  v32 = *(reader + 4);
  v33 = *(v32 + 456);
  if (v31)
  {
    if (v33)
    {
      if (v31 != v33)
      {
        xmlDictFree(*(reader + 20));
        v32 = *(reader + 4);
        *(reader + 20) = *(v32 + 456);
      }
    }

    else
    {
      *(v32 + 456) = v31;
    }
  }

  else
  {
    if (!v33)
    {
      v33 = xmlDictCreate();
      v32 = *(reader + 4);
      *(v32 + 456) = v33;
    }

    *(reader + 20) = v33;
  }

  *(v32 + 424) = reader;
  *(v32 + 436) = 1;
  *(v32 + 568) = 1;
  *(v32 + 476) = 1;
  *(v32 + 688) = 5;
  v34 = *(reader + 36);
  if (v34)
  {
    xmlXIncludeFreeContext(v34);
    *(reader + 36) = 0;
  }

  if ((v6 & 0x400) != 0)
  {
    *(reader + 68) = 1;
    *(reader + 35) = xmlDictLookup(*(reader + 20), "include", -1);
    v10 -= 1024;
  }

  else
  {
    *(reader + 68) = 0;
  }

  *(reader + 74) = 0;
  if (*(reader + 39))
  {
    LODWORD(v35) = *(reader + 75);
    if (v35 >= 1)
    {
      do
      {
        LODWORD(v35) = v35 - 1;
        *(reader + 75) = v35;
        v36 = *(*(reader + 39) + 8 * v35);
        if (v36)
        {
          xmlFreePattern(v36);
          v35 = *(reader + 75);
          *(*(reader + 39) + 8 * v35) = 0;
        }
      }

      while (v35 > 0);
    }

    if ((v10 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  *(reader + 300) = 0;
  if ((v10 & 0x10) != 0)
  {
LABEL_49:
    *(reader + 4) = 1;
  }

LABEL_50:
  xmlCtxtUseOptions(*(reader + 4), v10);
  if (encoding)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
    if (CharEncodingHandler)
    {
      xmlSwitchToEncoding(*(reader + 4), CharEncodingHandler);
    }
  }

  if (URL)
  {
    v38 = *(*(reader + 4) + 56);
    if (v38)
    {
      if (!*(v38 + 8))
      {
        *(*(*(reader + 4) + 56) + 8) = xmlStrdup(URL);
      }
    }
  }

  result = 0;
  *(reader + 1) = 0;
  return result;
}

xmlNode *xmlStaticCopyNodeList(xmlDtdPtr dtd, uint64_t a2, xmlNodePtr parent)
{
  if (!dtd)
  {
    return 0;
  }

  v5 = dtd;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  while (2)
  {
    v9 = v5;
    while (1)
    {
      if (v9->type != XML_DTD_NODE)
      {
        v10 = xmlStaticCopyNode(v9, a2, parent, 1);
        v5 = v9;
        if (!v10)
        {
LABEL_20:
          xmlFreeNodeList(v8);
          return 0;
        }

LABEL_9:
        if (!v8)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      if (a2)
      {
        break;
      }

      v9 = v9->next;
      if (!v9)
      {
        return v8;
      }
    }

    v10 = *(a2 + 80);
    if (v10 | v6)
    {
      xmlAddChild(parent, *(a2 + 80));
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    v11 = xmlCopyDtd(v5);
    if (!v11)
    {
      goto LABEL_20;
    }

    v6 = v11;
    v11->doc = a2;
    v11->parent = parent;
    xmlAddChild(parent, v11);
    v10 = v6;
    if (!v8)
    {
LABEL_15:
      v7 = 0;
      v8 = v10;
LABEL_16:
      *(v10 + 56) = v7;
      v7 = v10;
      goto LABEL_17;
    }

LABEL_10:
    if (v7 != v10)
    {
      *(v7 + 48) = v10;
      goto LABEL_16;
    }

LABEL_17:
    v5 = v5->next;
    if (v5)
    {
      continue;
    }

    break;
  }

  if (a2 && v6)
  {
    *(a2 + 80) = v6;
  }

  return v8;
}

uint64_t xmlTextReaderCharacters(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 88);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

uint64_t xmlTextReaderEndElementNs(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 80);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

xmlNodePtr xmlStaticCopyNode(xmlNodePtr result, xmlDoc *a2, xmlNode *a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  type = result->type;
  if (type <= 0x15)
  {
    if (((1 << type) & 0x3D400) != 0)
    {
      return 0;
    }

    if (((1 << type) & 0x202200) != 0)
    {

      return xmlCopyDoc(result, a4);
    }

    if (type == 18)
    {

      return xmlCopyNamespaceList(result);
    }
  }

  if (type == 2)
  {

    return xmlCopyPropInternal(a2, a3, result);
  }

  v9 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  if (!v9)
  {
    __xmlSimpleError(2u, 2, 0, 0, "copying node");
    return 0;
  }

  v10 = v9;
  *&v9->line = 0;
  *&v9->content = 0u;
  *&v9->nsDef = 0u;
  *&v9->next = 0u;
  *&v9->doc = 0u;
  *&v9->name = 0u;
  *&v9->last = 0u;
  *&v9->_private = 0u;
  v9->type = v7->type;
  v9->doc = a2;
  v9->parent = a3;
  name = v7->name;
  v12 = "text";
  if (name != "text")
  {
    v12 = "textnoenc";
    if (name != "textnoenc")
    {
      v12 = "comment";
      if (name != "comment")
      {
        if (!name)
        {
          goto LABEL_29;
        }

        if (a2 && (dict = a2->dict) != 0)
        {
          v12 = xmlDictLookup(dict, name, -1);
        }

        else
        {
          v12 = xmlStrdup(v7->name);
        }
      }
    }
  }

  v10->name = v12;
LABEL_29:
  v14 = v7->type;
  if (v14 == 1)
  {
    v10->line = v7->line;
  }

  else
  {
    content = v7->content;
    if (content && (v14 > 0x14 || ((1 << v14) & 0x180020) == 0))
    {
      v10->content = xmlStrdup(content);
    }
  }

  if (!a3)
  {
    goto LABEL_40;
  }

  if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
  {
    v16 = __xmlRegisterNodeDefaultValue();
    (*v16)(v10);
  }

  result = xmlAddChild(a3, v10);
  if (result == v10)
  {
LABEL_40:
    if (a4)
    {
      v17 = v7->type;
      if (v17 == XML_XINCLUDE_START || v17 == XML_ELEMENT_NODE)
      {
        nsDef = v7->nsDef;
        if (nsDef)
        {
          v10->nsDef = xmlCopyNamespaceList(nsDef);
        }
      }

      ns = v7->ns;
      if (ns)
      {
        v20 = xmlSearchNs(a2, v10, ns->prefix);
        if (!v20)
        {
          v21 = xmlSearchNs(v7->doc, v7, v7->ns->prefix);
          if (v21)
          {
            v22 = v10;
            do
            {
              v23 = v22;
              v22 = v22->parent;
            }

            while (v22);
            v20 = xmlNewNs(v23, v21->href, v21->prefix);
          }

          else
          {
            v20 = xmlNewReconciledNs(a2, v10, v7->ns);
          }
        }

        v10->ns = v20;
      }

      v24 = v7->type;
      if (v24 == XML_XINCLUDE_START || v24 == XML_ELEMENT_NODE)
      {
        properties = v7->properties;
        if (properties)
        {
          v10->properties = xmlCopyPropList(v10, properties);
          v24 = v7->type;
        }
      }

      if (v24 == XML_ENTITY_REF_NODE)
      {
        if (a2 && v7->doc == a2)
        {
          children = v7->children;
        }

        else
        {
          children = xmlGetDocEntity(a2, v10->name);
        }

        v10->children = children;
        v10->last = children;
      }

      else if (a4 != 2)
      {
        v28 = v7->children;
        if (v28)
        {
          v29 = xmlStaticCopyNode(v7->children, a2, v10, 2);
          if (v29)
          {
            p_private = &v10->_private;
            do
            {
              v31 = p_private[4];
              if (v31 != v29)
              {
                if (v31)
                {
                  *(v29 + 56) = v31;
                  v32 = (v31 + 48);
                }

                else
                {
                  v32 = p_private + 3;
                }

                *v32 = v29;
                p_private[4] = v29;
              }

              if (v28->type == XML_ENTITY_REF_NODE || (next = v28->children) == 0)
              {
                while (1)
                {
                  next = v28->next;
                  if (next)
                  {
                    break;
                  }

                  v28 = v28->parent;
                  p_private = p_private[5];
                  if (v28 == v7)
                  {
                    goto LABEL_83;
                  }
                }

                v29 = p_private;
              }

              p_private = v29;
              v29 = xmlStaticCopyNode(next, a2, v29, 2);
              v28 = next;
            }

            while (v29);
          }

          xmlFreeNode(v10);
          return 0;
        }
      }
    }

LABEL_83:
    if (!a3 && __xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v34 = __xmlRegisterNodeDefaultValue();
      (*v34)(v10);
    }

    return v10;
  }

  return result;
}

const xmlChar *__cdecl xmlTextReaderConstName(xmlTextReaderPtr reader)
{
  if (reader && (v1 = *(reader + 14)) != 0)
  {
    v2 = 0;
    if (*(reader + 15))
    {
      v1 = *(reader + 15);
    }

    switch(*(v1 + 8))
    {
      case 1:
      case 2:
        v6 = *(v1 + 72);
        if (!v6)
        {
          return *(v1 + 16);
        }

        v4 = *(v6 + 24);
        if (!v4)
        {
          return *(v1 + 16);
        }

        v3 = *(reader + 20);
        v7 = *(v1 + 16);
LABEL_13:
        result = xmlDictQLookup(v3, v4, v7);
        break;
      case 3:
        v3 = *(reader + 20);
        v4 = "#text";
        return xmlDictLookup(v3, v4, -1);
      case 4:
        v3 = *(reader + 20);
        v4 = "#cdata-section";
        return xmlDictLookup(v3, v4, -1);
      case 5:
      case 6:
      case 7:
      case 0xA:
      case 0xC:
      case 0xE:
        v3 = *(reader + 20);
        v4 = *(v1 + 16);
        return xmlDictLookup(v3, v4, -1);
      case 8:
        v3 = *(reader + 20);
        v4 = "#comment";
        return xmlDictLookup(v3, v4, -1);
      case 9:
      case 0xD:
      case 0x15:
        v3 = *(reader + 20);
        v4 = "#document";
        return xmlDictLookup(v3, v4, -1);
      case 0xB:
        v3 = *(reader + 20);
        v4 = "#document-fragment";
        return xmlDictLookup(v3, v4, -1);
      case 0x12:
        v7 = *(v1 + 24);
        v3 = *(reader + 20);
        v4 = "xmlns";
        if (v7)
        {
          goto LABEL_13;
        }

        return xmlDictLookup(v3, v4, -1);
      default:
        return v2;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

xmlNodePtr xmlTextReaderExpand(xmlNodePtr reader)
{
  if (reader)
  {
    v1 = reader;
    reader = *&reader->line;
    if (reader)
    {
      if (!*&v1->type)
      {
        if (!v1->last || (xmlTextReaderDoExpand(v1) & 0x80000000) != 0)
        {
          return 0;
        }

        else
        {
          return *&v1->line;
        }
      }
    }
  }

  return reader;
}

xmlChar *__cdecl xmlTextReaderReadOuterXml(xmlTextReaderPtr reader)
{
  if (!xmlTextReaderExpand(reader))
  {
    return 0;
  }

  v2 = *(reader + 14);
  v3 = *(v2 + 64);
  if (*(v2 + 8) == 14)
  {
    v4 = xmlCopyDtd(v2);
  }

  else
  {
    v4 = xmlDocCopyNode(v2, *(v2 + 64), 1);
  }

  v5 = v4;
  v6 = xmlBufferCreate();
  if (xmlNodeDump(v6, v3, v5, 0, 0) == -1)
  {
    xmlFreeNode(v5);
    xmlBufferFree(v6);
    return 0;
  }

  content = v6->content;
  v6->content = 0;
  xmlFreeNode(v5);
  xmlBufferFree(v6);
  return content;
}

int xmlTextReaderNodeType(xmlTextReaderPtr reader)
{
  if (!reader)
  {
    return -1;
  }

  v2 = *(reader + 14);
  if (!v2)
  {
    return 0;
  }

  v3 = *(reader + 15);
  if (!v3)
  {
    v3 = *(reader + 14);
  }

  v4 = *(v3 + 8);
  result = 2;
  switch(v4)
  {
    case 1:
      if (((*(reader + 6) - 2) & 0xFFFFFFFD) != 0)
      {
        result = 1;
      }

      else
      {
        result = 15;
      }

      break;
    case 2:
    case 18:
      return result;
    case 3:
      if (xmlIsBlankNode(v2))
      {
        if (xmlNodeGetSpacePreserve(*(reader + 14)))
        {
          result = 14;
        }

        else
        {
          result = 13;
        }
      }

      else
      {
        result = 3;
      }

      break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 12:
      result = v4;
      break;
    case 9:
    case 13:
    case 21:
      result = 9;
      break;
    case 10:
    case 14:
      result = 10;
      break;
    case 15:
    case 16:
    case 17:
    case 19:
    case 20:
      return 0;
    default:
      return -1;
  }

  return result;
}

xmlAttrPtr xmlNewDocProp(xmlDocPtr doc, const xmlChar *name, const xmlChar *value)
{
  if (!name)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x60uLL, 0x10F00407C650413uLL);
  v7 = v6;
  if (v6)
  {
    *&v6->doc = 0u;
    *&v6->atype = 0u;
    *&v6->last = 0u;
    *&v6->next = 0u;
    *&v6->_private = 0u;
    *&v6->name = 0u;
    v6->type = XML_ATTRIBUTE_NODE;
    if (doc && (dict = doc->dict) != 0)
    {
      v9 = xmlDictLookup(dict, name, -1);
    }

    else
    {
      v9 = xmlStrdup(name);
    }

    v7->name = v9;
    v7->doc = doc;
    if (value)
    {
      NodeList = xmlStringGetNodeList(doc, value);
      v7->children = NodeList;
      v7->last = 0;
      if (NodeList)
      {
        do
        {
          v11 = NodeList;
          NodeList->parent = v7;
          NodeList = NodeList->next;
        }

        while (NodeList);
        v7->last = v11;
      }
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v12 = __xmlRegisterNodeDefaultValue();
      (*v12)(v7);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building attribute");
  }

  return v7;
}

xmlAttrPtr xmlCopyPropList(xmlNodePtr target, xmlAttrPtr cur)
{
  v2 = cur;
  if (!target)
  {
    if (cur)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (target->type != XML_ELEMENT_NODE || cur == 0)
  {
    return 0;
  }

LABEL_9:
  v6 = 0;
  v7 = 0;
  do
  {
    result = xmlCopyPropInternal(0, target, v2);
    if (!result)
    {
      break;
    }

    v8 = result;
    if (v6)
    {
      v6->next = result;
      result->prev = v6;
      result = v7;
    }

    v2 = v2->next;
    v6 = v8;
    v7 = result;
  }

  while (v2);
  return result;
}

void xmlTextReaderFreeNode(uint64_t a1, _xmlDoc *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 456);
  }

  else
  {
    v5 = 0;
  }

  type = a2->type;
  switch(type)
  {
    case XML_ATTRIBUTE_NODE:

      xmlTextReaderFreeProp(a1, a2);
      break;
    case XML_NAMESPACE_DECL:

      xmlFreeNs(a2);
      break;
    case XML_DTD_NODE:

      xmlFreeDtd(a2);
      return;
    default:
      if (type != XML_ENTITY_REF_NODE)
      {
        children = a2->children;
        if (children)
        {
          if (children->context == a2)
          {
            xmlTextReaderFreeNodeList(a1, children);
          }

          a2->children = 0;
        }
      }

      if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
      {
        v8 = __xmlDeregisterNodeDefaultValue();
        (*v8)(a2);
      }

      v9 = a2->type;
      if (v9 <= 0x14 && ((1 << v9) & 0x180002) != 0)
      {
        extSubset = a2->extSubset;
        if (extSubset)
        {
          do
          {
            next = extSubset->next;
            xmlTextReaderFreeProp(a1, extSubset);
            extSubset = next;
          }

          while (next);
        }
      }

      intSubset = a2->intSubset;
      if (intSubset == &a2->extSubset)
      {
        goto LABEL_40;
      }

      v13 = a2->type;
      if (v13 <= 0x14 && ((1 << v13) & 0x180022) != 0 || intSubset == 0)
      {
LABEL_41:
        if (v13 <= 0x14 && ((1 << v13) & 0x180002) != 0)
        {
          oldNs = a2->oldNs;
          if (oldNs)
          {
            xmlFreeNsList(oldNs);
            v13 = a2->type;
          }
        }

        if (v13 == 3)
        {
          goto LABEL_55;
        }

        if (v13 == 8)
        {
          goto LABEL_55;
        }

        name = a2->name;
        if (!name)
        {
          goto LABEL_55;
        }

        if (v5)
        {
          if (xmlDictOwns(v5, name))
          {
LABEL_54:
            v13 = a2->type;
LABEL_55:
            if ((v13 | 2) == 3 && (v19 = *(a1 + 32)) != 0 && (v20 = *(v19 + 572), v20 <= 99))
            {
              a2->next = *(v19 + 576);
              *(v19 + 576) = a2;
              *(v19 + 572) = v20 + 1;
            }

            else
            {

              free(a2);
            }

            return;
          }

          name = a2->name;
        }

        free(name);
        goto LABEL_54;
      }

      if (v5)
      {
        if (xmlDictOwns(v5, intSubset))
        {
LABEL_40:
          v13 = a2->type;
          goto LABEL_41;
        }

        intSubset = a2->intSubset;
      }

      free(intSubset);
      goto LABEL_40;
  }
}

xmlAttrPtr xmlCopyPropInternal(xmlDoc *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  if (a2)
  {
    if (*(a2 + 8) == 1)
    {
      a1 = *(a2 + 64);
LABEL_10:
      v7 = *(a3 + 16);
      goto LABEL_11;
    }

    return 0;
  }

  if (a1)
  {
    goto LABEL_10;
  }

  v6 = *(a3 + 40);
  if (v6 || (v6 = *(a3 + 24)) != 0)
  {
    a1 = *(v6 + 64);
    goto LABEL_10;
  }

  v7 = *(a3 + 16);
  a1 = 0;
LABEL_11:
  v8 = xmlNewDocProp(a1, v7, 0);
  v5 = v8;
  if (!v8)
  {
    return v5;
  }

  v9 = 0;
  v8->parent = a2;
  if (!a2)
  {
    goto LABEL_24;
  }

  v10 = *(a3 + 72);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = xmlSearchNs(*(a2 + 64), a2, *(v10 + 24));
  if (!v11)
  {
    v13 = xmlSearchNs(*(a3 + 64), *(a3 + 40), *(*(a3 + 72) + 24));
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = 0;
    v15 = a2;
    do
    {
      v16 = v14;
      v14 = v15;
      v15 = v15->parent;
    }

    while (v15);
    if (v14 == *(a2 + 64))
    {
      v14 = v16;
    }

    v12 = xmlNewNs(v14, v13->href, v13->prefix);
    goto LABEL_23;
  }

  v9 = v11;
  if (!xmlStrEqual(v11->href, *(*(a3 + 72) + 16)))
  {
    v12 = xmlNewReconciledNs(*(a2 + 64), a2, *(a3 + 72));
LABEL_23:
    v9 = v12;
  }

LABEL_24:
  v5->ns = v9;
LABEL_25:
  v17 = *(a3 + 24);
  if (v17)
  {
    v18 = xmlStaticCopyNodeList(v17, v5->doc, v5);
    v5->children = v18;
    v5->last = 0;
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = v18->next;
      }

      while (v18);
      v5->last = v19;
    }
  }

  if (a2)
  {
    if (*(a2 + 64))
    {
      v20 = *(a3 + 64);
      if (v20)
      {
        if (v20->ids)
        {
          v21 = *(a3 + 40);
          if (v21)
          {
            if (xmlIsID(v20, v21, a3))
            {
              StringInternal = xmlNodeListGetStringInternal(*(a3 + 64), *(a3 + 24), 1, 0);
              if (StringInternal)
              {
                v23 = StringInternal;
                xmlAddID(0, *(a2 + 64), StringInternal, v5);
                free(v23);
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

xmlBufferPtr xmlBufferCreate(void)
{
  v0 = malloc_type_malloc(0x20uLL, 0x1010040CF4F187CuLL);
  v1 = v0;
  if (v0)
  {
    v0->use = 0;
    v0->size = *__xmlDefaultBufferSize();
    v1->alloc = *__xmlBufferAllocScheme();
    v2 = malloc_type_malloc(v1->size, 0x100004077774924uLL);
    v1->content = v2;
    if (v2)
    {
      bzero(v2, v1->size);
      v1->contentIO = 0;
    }

    else
    {
      __xmlSimpleError(2u, 2, 0, 0, "creating buffer");
      free(v1);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "creating buffer");
  }

  return v1;
}

int xmlIsBlankNode(const xmlNode *node)
{
  if (node)
  {
    if (node->type - 3 > 1)
    {
LABEL_9:
      LODWORD(node) = 0;
      return node;
    }

    content = node->content;
    if (content)
    {
      while (1)
      {
        v2 = *content;
        if (v2 > 0x20)
        {
          goto LABEL_9;
        }

        if (((1 << v2) & 0x100002600) == 0)
        {
          if (*content)
          {
            goto LABEL_9;
          }

          break;
        }

        ++content;
      }
    }

    LODWORD(node) = 1;
  }

  return node;
}

uint64_t xmlGetLineNoInternal(uint64_t a1, int a2)
{
  v2 = -1;
  if (a1 && a2 <= 4)
  {
    v3 = (a2 + 1);
    while (1)
    {
      v4 = *(a1 + 8);
      if (v4 <= 8 && ((1 << v4) & 0x18A) != 0)
      {
        break;
      }

      v6 = *(a1 + 56);
      if (v6 && ((v7 = *(v6 + 8), v8 = v7 > 8, v9 = (1 << v7) & 0x18A, !v8) ? (v10 = v9 == 0) : (v10 = 1), !v10) || (v6 = *(a1 + 40)) != 0 && *(v6 + 8) == 1)
      {
        v3 = (v3 + 1);
        a1 = v6;
        if (v3 != 6)
        {
          continue;
        }
      }

      return -1;
    }

    v2 = *(a1 + 112);
    if (v2 == 0xFFFF)
    {
      if (v4 == 1)
      {
        v12 = *(a1 + 24);
        if (v12)
        {
          goto LABEL_26;
        }
      }

      else if (v4 == 3)
      {
        LineNoInternal = *(a1 + 104);
        if (LineNoInternal)
        {
LABEL_28:
          if (LineNoInternal == -1)
          {
            v14 = 0xFFFFLL;
          }

          else
          {
            v14 = LineNoInternal;
          }

          if (LineNoInternal != 0xFFFF)
          {
            return v14;
          }

          return v2;
        }
      }

      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 56);
        if (!v13)
        {
          return v2;
        }

        goto LABEL_27;
      }

LABEL_26:
      v13 = v12;
LABEL_27:
      LineNoInternal = xmlGetLineNoInternal(v13, v3);
      goto LABEL_28;
    }
  }

  return v2;
}

uint64_t xmlTextReaderDoExpand(uint64_t a1)
{
  if (!*(a1 + 112))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 32))
  {
    while (1)
    {
      v2 = *(a1 + 32);
      if (*(v2 + 272) == -1)
      {
        return 1;
      }

      v3 = *(a1 + 112);
      if (v3)
      {
        while (!*(v3 + 48))
        {
          v3 = *(v3 + 40);
          if (!v3)
          {
            goto LABEL_7;
          }
        }

        return 1;
      }

LABEL_7:
      if (*(v2 + 88) < *(a1 + 128) || *a1 == 3)
      {
        return 1;
      }

      if ((xmlTextReaderPushData(a1) & 0x80000000) != 0)
      {
        break;
      }

      result = 1;
      if (*a1 == 3)
      {
        return result;
      }
    }

    *a1 = 2;
  }

  return 0xFFFFFFFFLL;
}

int xmlNodeDump(xmlBufferPtr buf, xmlDocPtr doc, xmlNodePtr cur, int level, int format)
{
  result = -1;
  if (buf && cur)
  {
    v11 = xmlBufFromBuffer(buf);
    if (v11)
    {
      v12 = v11;
      v13 = xmlBufNodeDump(v11, doc, cur, level, format);
      xmlBufBackToBuffer(v12);
      if (v13 >> 31)
      {
        return -1;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int xmlNodeGetSpacePreserve(const xmlNode *cur)
{
  if (!cur)
  {
    return -1;
  }

  v1 = cur;
  if (cur->type != XML_ELEMENT_NODE)
  {
    return -1;
  }

  while (1)
  {
    NsProp = xmlGetNsProp(v1, "space", "http://www.w3.org/XML/1998/namespace");
    if (NsProp)
    {
      break;
    }

LABEL_7:
    v1 = v1->parent;
    if (!v1)
    {
      return -1;
    }
  }

  v3 = NsProp;
  if (xmlStrEqual(NsProp, "preserve"))
  {
    v4 = 1;
    goto LABEL_12;
  }

  if (!xmlStrEqual(v3, "default"))
  {
    free(v3);
    goto LABEL_7;
  }

  v4 = 0;
LABEL_12:
  free(v3);
  return v4;
}

void xmlTextReaderFreeDoc(uint64_t a1, void *a2)
{
  if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
  {
    v4 = __xmlDeregisterNodeDefaultValue();
    (*v4)(a2);
  }

  v5 = *(a2 + 15);
  if (v5)
  {
    xmlHashFree(v5, xmlTextReaderFreeIDTableEntry);
  }

  *(a2 + 15) = 0;
  v6 = *(a2 + 16);
  if (v6)
  {
    xmlFreeRefTable(v6);
  }

  *(a2 + 16) = 0;
  v7 = *(a2 + 10);
  v8 = *(a2 + 11);
  if (v8 && v7 != v8)
  {
    xmlUnlinkNode(*(a2 + 11));
    *(a2 + 11) = 0;
    xmlFreeDtd(v8);
  }

  if (v7)
  {
    xmlUnlinkNode(*(a2 + 10));
    *(a2 + 10) = 0;
    xmlFreeDtd(v7);
  }

  v9 = *(a2 + 3);
  if (v9)
  {
    xmlTextReaderFreeNodeList(a1, v9);
  }

  v10 = *(a2 + 13);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a2 + 2);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a2 + 14);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a2 + 12);
  if (v13)
  {
    xmlFreeNsList(v13);
  }

  v14 = *(a2 + 17);
  if (v14)
  {
    free(v14);
  }

  v15 = *(a2 + 19);
  if (v15)
  {
    xmlDictFree(v15);
  }

  free(a2);
}

int xmlTextReaderClose(xmlTextReaderPtr reader)
{
  if (reader)
  {
    *(reader + 14) = 0;
    *(reader + 15) = 0;
    *reader = 4;
    v2 = *(reader + 17);
    if (v2)
    {
      xmlFreeNode(v2);
      *(reader + 17) = 0;
    }

    v3 = *(reader + 4);
    if (v3)
    {
      vstateTab = v3->vctxt.vstateTab;
      if (vstateTab && v3->vctxt.vstateMax >= 1)
      {
        if (v3->vctxt.vstateNr >= 1)
        {
          do
          {
            xmlValidatePopElement(&v3->vctxt, 0, 0, 0);
            v3 = *(reader + 4);
          }

          while (v3->vctxt.vstateNr > 0);
          vstateTab = v3->vctxt.vstateTab;
        }

        free(vstateTab);
        v3 = *(reader + 4);
        v3->vctxt.vstateTab = 0;
        v3->vctxt.vstateMax = 0;
      }

      xmlStopParser(v3);
      v5 = *(reader + 4);
      v6 = *(v5 + 16);
      if (v6)
      {
        if (!*(reader + 36))
        {
          xmlTextReaderFreeDoc(reader, v6);
          v5 = *(reader + 4);
        }

        *(v5 + 16) = 0;
      }
    }

    v7 = *(reader + 6);
    if (v7)
    {
      if (*(reader + 20))
      {
        xmlFreeParserInputBuffer(v7);
        LODWORD(v7) = 0;
        --*(reader + 5);
      }

      else
      {
        LODWORD(v7) = 0;
      }
    }
  }

  else
  {
    LODWORD(v7) = -1;
  }

  return v7;
}

void xmlFreeTextReader(xmlTextReaderPtr reader)
{
  if (reader)
  {
    v2 = *(reader + 26);
    if (v2)
    {
      xmlRelaxNGFree(v2);
      *(reader + 26) = 0;
    }

    v3 = *(reader + 27);
    if (v3)
    {
      if (!*(reader + 56))
      {
        xmlRelaxNGFreeValidCtxt(v3);
      }

      *(reader + 27) = 0;
    }

    v4 = *(reader + 33);
    if (v4)
    {
      xmlSchemaSAXUnplug(v4);
      *(reader + 33) = 0;
    }

    v5 = *(reader + 31);
    if (v5)
    {
      if (!*(reader + 64))
      {
        xmlSchemaFreeValidCtxt(v5);
      }

      *(reader + 31) = 0;
    }

    v6 = *(reader + 30);
    if (v6)
    {
      xmlSchemaFree(v6);
      *(reader + 30) = 0;
    }

    v7 = *(reader + 36);
    if (v7)
    {
      xmlXIncludeFreeContext(v7);
    }

    v8 = *(reader + 39);
    if (v8)
    {
      v9 = *(reader + 75);
      if (v9 >= 1)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = *(*(reader + 39) + 8 * i);
          if (v11)
          {
            xmlFreePattern(v11);
            v9 = *(reader + 75);
          }
        }

        v8 = *(reader + 39);
      }

      free(v8);
    }

    if (*reader != 4)
    {
      xmlTextReaderClose(reader);
    }

    v12 = *(reader + 4);
    if (v12)
    {
      if (*(reader + 20) == v12->dict)
      {
        *(reader + 20) = 0;
      }

      if ((*(reader + 20) & 2) != 0)
      {
        xmlFreeParserCtxt(v12);
      }
    }

    v13 = *(reader + 5);
    if (v13)
    {
      free(v13);
    }

    v14 = *(reader + 19);
    if (v14)
    {
      xmlBufFree(v14);
    }

    v15 = *(reader + 23);
    if (v15)
    {
      free(v15);
    }

    v16 = *(reader + 20);
    if (v16)
    {
      xmlDictFree(v16);
    }

    free(reader);
  }
}

uint64_t xmlTextReaderStartElementNs(uint64_t result)
{
  v1 = *(result + 424);
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      v3 = result;
      result = v2(result);
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

uint32x2_t *xmlBufFromBuffer(uint32x2_t *result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_malloc(0x40uLL, 0x10300408E9632E7uLL);
    if (result)
    {
      v2 = v1[1];
      result[1] = vmin_u32(v2, 0x8000000080000000);
      result[2].i32[0] = v1[2].i32[0];
      *result = *v1;
      result[7].i32[0] = 0;
      result[5] = v2.u32[1];
      result[6] = v1;
      result[3] = v1[3];
      result[4] = v2.u32[0];
    }

    else
    {
      __xmlSimpleError(0x1Du, 2, 0, 0, "creating buffer");
      return 0;
    }
  }

  return result;
}

size_t xmlBufNodeDump(xmlBufPtr buf, xmlDocPtr doc, xmlNodePtr cur, int level, int format)
{
  xmlInitParser();
  result = -1;
  if (buf && cur)
  {
    v11 = malloc_type_malloc(0x38uLL, 0x10A0040906386E4uLL);
    if (v11)
    {
      v12 = v11;
      v11->conv = 0;
      *&v11->written = 0;
      v11->buffer = buf;
      *&v11->context = 0u;
      *&v11->closecallback = 0u;
      v13 = xmlBufUse(buf);
      AllocationScheme = xmlBufGetAllocationScheme(buf);
      xmlBufSetAllocationScheme(buf, 0);
      xmlNodeDumpOutput(v12, doc, cur, level, format, 0);
      xmlBufSetAllocationScheme(buf, AllocationScheme);
      free(v12);
      return (xmlBufUse(buf) - v13);
    }

    else
    {
      __xmlSimpleError(7u, 2, 0, 0, "creating buffer");
      return -1;
    }
  }

  return result;
}

uint64_t xmlBufBackToBuffer(unsigned int *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = a1[3];
  if (v3 <= 0x7FFFFFFE && v2 != v3)
  {
    *(a1 + 5) = v3;
    v2 = v3;
  }

  v5 = *(a1 + 4);
  v6 = a1[2];
  if (v6 <= 0x7FFFFFFE && v5 != v6)
  {
    *(a1 + 4) = v6;
    v5 = v6;
  }

  v8 = *(a1 + 6);
  if (a1[14] || !v8)
  {
    xmlBufFree(a1);
    if (!v8)
    {
      return v8;
    }

    *(v8 + 24) = 0;
    *v8 = 0;
    *(v8 + 8) = 0;
    return 0;
  }

  if (v5 >> 31)
  {
    __xmlSimpleError(0x1Du, 7000, 0, 0, "Used size too big for xmlBuffer");
    if (!a1[14])
    {
      a1[14] = 7000;
    }

    LODWORD(v2) = 0x7FFFFFFF;
    *(v8 + 8) = 0x7FFFFFFF;
  }

  else if (v2 >> 31)
  {
    __xmlSimpleError(0x1Du, 7000, 0, 0, "Allocated size too big for xmlBuffer");
    if (!a1[14])
    {
      a1[14] = 7000;
    }

    *(v8 + 8) = *(a1 + 4);
    LODWORD(v2) = 0x7FFFFFFF;
  }

  else
  {
    *(v8 + 8) = v5;
  }

  v9 = a1[4];
  *(v8 + 12) = v2;
  *(v8 + 16) = v9;
  *v8 = *a1;
  *(v8 + 24) = *(a1 + 3);
  free(a1);
  return v8;
}

void xmlBufferFree(xmlBufferPtr buf)
{
  if (!buf)
  {
    return;
  }

  alloc = buf->alloc;
  if (alloc != XML_BUFFER_ALLOC_IO)
  {
    content = buf->content;
    if (alloc == XML_BUFFER_ALLOC_IMMUTABLE || content == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  content = buf->contentIO;
  if (content || (content = buf->content) != 0)
  {
LABEL_11:
    free(content);
  }

LABEL_12:

  free(buf);
}

xmlChar *__cdecl xmlTextReaderGetAttribute(xmlTextReaderPtr reader, const xmlChar *name)
{
  v2 = 0;
  prefix = 0;
  if (!reader || !name)
  {
    return v2;
  }

  v5 = *(reader + 14);
  if (!v5 || *(reader + 15) || *(v5 + 8) != 1)
  {
    return 0;
  }

  v6 = xmlSplitQName2(name, &prefix);
  if (v6)
  {
    v7 = v6;
    v8 = xmlStrEqual(prefix, "xmlns");
    v9 = *(reader + 14);
    if (v8)
    {
      nsDef = v9->nsDef;
      if (nsDef)
      {
        while (1)
        {
          v11 = nsDef->prefix;
          if (v11)
          {
            if (xmlStrEqual(v11, v7))
            {
              break;
            }
          }

          nsDef = nsDef->next;
          if (!nsDef)
          {
            goto LABEL_22;
          }
        }

        NsProp = xmlStrdup(nsDef->href);
        goto LABEL_26;
      }
    }

    else
    {
      v17 = xmlSearchNs(v9->doc, v9, prefix);
      if (v17)
      {
        NsProp = xmlGetNsProp(*(reader + 14), v7, v17->href);
LABEL_26:
        v2 = NsProp;
LABEL_27:
        free(v7);
        if (prefix)
        {
          free(prefix);
        }

        return v2;
      }
    }

LABEL_22:
    v2 = 0;
    goto LABEL_27;
  }

  v12 = xmlStrEqual(name, "xmlns");
  v13 = *(reader + 14);
  if (v12)
  {
    p_nsDef = &v13->nsDef;
    while (1)
    {
      p_nsDef = *p_nsDef;
      if (!p_nsDef)
      {
        break;
      }

      if (!p_nsDef[3])
      {
        return xmlStrdup(p_nsDef[2]);
      }
    }

    return 0;
  }

  return xmlGetNoNsProp(v13, name);
}

xmlChar *__cdecl xmlSplitQName2(const xmlChar *name, xmlChar **prefix)
{
  if (!prefix)
  {
    return 0;
  }

  *prefix = 0;
  if (!name)
  {
    return 0;
  }

  v4 = *name;
  if (v4 == 58)
  {
    return 0;
  }

  v6 = 1;
  if (!*name)
  {
    return 0;
  }

  while (v4 != 58)
  {
    v4 = name[v6++];
    if (!v4)
    {
      return 0;
    }
  }

  v7 = xmlStrndup(name, v6 - 1);
  *prefix = v7;
  if (!v7)
  {
    __xmlSimpleError(2, 2, 0);
    return 0;
  }

  result = xmlStrdup(&name[v6]);
  if (!result)
  {
    __xmlSimpleError(2, 2, 0);
    result = *prefix;
    if (*prefix)
    {
      free(result);
      result = 0;
      *prefix = 0;
    }
  }

  return result;
}

xmlChar *__cdecl xmlGetNoNsProp(const xmlNode *node, const xmlChar *name)
{
  result = xmlGetPropNodeInternal(node, name, 0, 1);
  if (result)
  {

    return xmlGetPropNodeValueInternal(result);
  }

  return result;
}

xmlAttributePtr xmlGetPropNodeInternal(uint64_t a1, xmlChar *str2, const xmlChar *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  if (!str2 || *(a1 + 8) != 1)
  {
    return v5;
  }

  v5 = *(a1 + 88);
  if (!v5)
  {
LABEL_15:
    if (!a4)
    {
      return 0;
    }

    v10 = *(a1 + 64);
    if (!v10 || !*(v10 + 80))
    {
      return 0;
    }

    v11 = *(a1 + 72);
    if (v11 && (v12 = *(v11 + 24)) != 0)
    {
      v13 = xmlStrdup(v12);
      v14 = xmlStrcat(v13, ":");
      v15 = xmlStrcat(v14, *(a1 + 16));
      v16 = v15;
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      v16 = 0;
      v15 = *(a1 + 16);
    }

    if (a3)
    {
      v17 = xmlStrEqual(a3, "http://www.w3.org/XML/1998/namespace");
      if (!v17)
      {
        NsList = xmlGetNsList(v17, a1);
        if (!NsList)
        {
          if (v16)
          {
            free(v16);
          }

          return 0;
        }

        v24 = NsList;
        v25 = *NsList;
        if (*NsList)
        {
          v26 = NsList;
          while (1)
          {
            if (xmlStrEqual(v25->href, a3))
            {
              DtdQAttrDesc = xmlGetDtdQAttrDesc(*(v10 + 80), v15, str2, (*v26)->prefix);
              if (DtdQAttrDesc)
              {
                break;
              }

              v28 = *(v10 + 88);
              if (v28)
              {
                DtdQAttrDesc = xmlGetDtdQAttrDesc(v28, v15, str2, (*v26)->prefix);
                if (DtdQAttrDesc)
                {
                  break;
                }
              }
            }

            v29 = v26[1];
            ++v26;
            v25 = v29;
            if (!v29)
            {
              goto LABEL_46;
            }
          }

          v5 = DtdQAttrDesc;
        }

        else
        {
LABEL_46:
          v5 = 0;
        }

        free(v24);
        goto LABEL_33;
      }

      v18 = xmlGetDtdQAttrDesc(*(v10 + 80), v15, str2, "xml");
      if (v18)
      {
        goto LABEL_32;
      }

      v19 = *(v10 + 88);
      if (v19)
      {
        v20 = "xml";
        v21 = v15;
        v22 = str2;
LABEL_31:
        v18 = xmlGetDtdQAttrDesc(v19, v21, v22, v20);
        goto LABEL_32;
      }
    }

    else
    {
      v18 = xmlGetDtdQAttrDesc(*(v10 + 80), v15, str2, 0);
      if (v18)
      {
LABEL_32:
        v5 = v18;
        goto LABEL_33;
      }

      v19 = *(v10 + 88);
      if (v19)
      {
        v21 = v15;
        v22 = str2;
        v20 = 0;
        goto LABEL_31;
      }
    }

    v5 = 0;
LABEL_33:
    if (v16)
    {
      free(v16);
    }

    if (!v5 || v5->defaultValue)
    {
      return v5;
    }

    return 0;
  }

  if (a3)
  {
    while (1)
    {
      if (v5->nexth)
      {
        if (xmlStrEqual(v5->name, str2))
        {
          name = v5->nexth->name;
          if (name == a3 || xmlStrEqual(name, a3))
          {
            break;
          }
        }
      }

      v5 = v5->next;
      if (!v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    while (v5->nexth || !xmlStrEqual(v5->name, str2))
    {
      v5 = v5->next;
      if (!v5)
      {
        goto LABEL_15;
      }
    }
  }

  return v5;
}

void xmlTextReaderFreeProp(uint64_t a1, xmlAttr *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 456);
  }

  else
  {
    v5 = 0;
  }

  if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
  {
    v6 = __xmlDeregisterNodeDefaultValue();
    (*v6)(a2);
  }

  parent = a2->parent;
  if (parent)
  {
    doc = parent->doc;
    if (doc)
    {
      if (xmlIsID(doc, parent, a2))
      {
        v9 = a2->parent->doc;
        if (v9)
        {
          ids = v9->ids;
          if (ids)
          {
            String = xmlNodeListGetString(v9, a2->children, 1);
            if (String)
            {
              v12 = String;
              v13 = xmlHashLookup(ids, String);
              free(v12);
              if (v13)
              {
                if (v13[2] == a2)
                {
                  name = a2->name;
                  a2->name = 0;
                  v13[2] = 0;
                  v13[3] = name;
                }
              }
            }
          }
        }
      }

      v15 = a2->parent;
      v16 = v15->doc;
      if (v16->intSubset || v16->extSubset)
      {
        if (xmlIsRef(v16, v15, a2))
        {
          v17 = a2->parent->doc;
          if (v17)
          {
            refs = v17->refs;
            if (refs)
            {
              v19 = xmlNodeListGetString(v17, a2->children, 1);
              if (v19)
              {
                v20 = v19;
                v21 = xmlHashLookup(refs, v19);
                free(v20);
                if (v21)
                {
                  xmlListWalk(v21, xmlTextReaderWalkRemoveRef, a2);
                }
              }
            }
          }
        }
      }
    }
  }

  children = a2->children;
  if (children)
  {
    xmlTextReaderFreeNodeList(a1, children);
  }

  v23 = a2->name;
  if (v23)
  {
    if (!v5)
    {
LABEL_30:
      free(v23);
      goto LABEL_31;
    }

    if (!xmlDictOwns(v5, v23))
    {
      v23 = a2->name;
      goto LABEL_30;
    }
  }

LABEL_31:
  v24 = *(a1 + 32);
  if (v24 && (v25 = *(v24 + 584), v25 <= 99))
  {
    a2->next = *(v24 + 592);
    *(v24 + 592) = a2;
    *(v24 + 584) = v25 + 1;
  }

  else
  {

    free(a2);
  }
}

void xmlTextReaderFreeNodeList(uint64_t a1, xmlNs *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 456);
  }

  else
  {
    v5 = 0;
  }

  type = a2->type;
  if (type != XML_DOCUMENT_NODE && type != XML_HTML_DOCUMENT_NODE)
  {
    if (type == XML_NAMESPACE_DECL)
    {

      xmlFreeNsList(a2);
      return;
    }

    v29 = 0;
    while (1)
    {
      while (1)
      {
        v8 = v2->type;
        if (v8 == XML_ENTITY_REF_NODE || v8 == XML_DTD_NODE)
        {
          break;
        }

        prefix = v2->prefix;
        if (!prefix || *(prefix + 5) != v2)
        {
          break;
        }

        ++v29;
        v2 = v2->prefix;
      }

      context = v2->context;
      next = v2[1].next;
      if (v8 == XML_DTD_NODE)
      {
        goto LABEL_65;
      }

      if (__xmlRegisterCallbacks && *__xmlDeregisterNodeDefaultValue())
      {
        v13 = __xmlDeregisterNodeDefaultValue();
        (*v13)(v2);
      }

      v14 = v2->type;
      v15 = v14 > 0x14;
      v16 = (1 << v14) & 0x180002;
      if (!v15 && v16 != 0)
      {
        v18 = v2[1].context;
        if (v18)
        {
          do
          {
            v19 = v18->next;
            xmlTextReaderFreeProp(a1, v18);
            v18 = v19;
          }

          while (v19);
        }
      }

      v20 = v2[1]._private;
      if (v20 == &v2[1].context)
      {
        goto LABEL_45;
      }

      v21 = v2->type;
      v22 = v21 > 0x14 || ((1 << v21) & 0x180022) == 0;
      if (v22 && v20 != 0)
      {
        break;
      }

LABEL_46:
      if (v21 <= 0x14 && ((1 << v21) & 0x180002) != 0)
      {
        v25 = v2[2].next;
        if (v25)
        {
          xmlFreeNsList(v25);
          v21 = v2->type;
        }
      }

      if (v21 == 3)
      {
        goto LABEL_60;
      }

      if (v21 == 8)
      {
        goto LABEL_60;
      }

      href = v2->href;
      if (!href)
      {
        goto LABEL_60;
      }

      if (!v5)
      {
        goto LABEL_58;
      }

      if (!xmlDictOwns(v5, href))
      {
        href = v2->href;
LABEL_58:
        free(href);
      }

      v21 = v2->type;
LABEL_60:
      if ((v21 | 2) == 3 && (v27 = *(a1 + 32)) != 0 && (v28 = *(v27 + 572), v28 <= 99))
      {
        v2[1].next = *(v27 + 576);
        *(v27 + 576) = v2;
        *(v27 + 572) = v28 + 1;
      }

      else
      {
        free(v2);
      }

LABEL_65:
      v2 = next;
      if (!next)
      {
        if (!v29 || !context)
        {
          return;
        }

        --v29;
        context->children = 0;
        v2 = context;
      }
    }

    if (v5)
    {
      if (xmlDictOwns(v5, v20))
      {
LABEL_45:
        v21 = v2->type;
        goto LABEL_46;
      }

      v20 = v2[1]._private;
    }

    free(v20);
    goto LABEL_45;
  }

  xmlFreeDoc(a2);
}

int xmlPatternMatch(xmlPatternPtr comp, xmlNodePtr node)
{
  result = -1;
  if (comp && node)
  {
    while (1)
    {
      if (*(comp + 9) < 1)
      {
        return 1;
      }

      v5 = 0;
      v47 = 0;
      v6 = 0;
      LODWORD(v7) = 0;
      v8 = node;
      while (1)
      {
        while (1)
        {
          v9 = *(comp + 6);
          v10 = v9 + 24 * v7;
          v11 = *v10;
          if (*v10 <= 4)
          {
            break;
          }

          if (v11 <= 6)
          {
            if (v11 == 5)
            {
              type = v8->type;
              v22 = type > 0x15;
              v32 = (1 << type) & 0x242200;
              if (!v22 && v32 != 0)
              {
                goto LABEL_88;
              }

              v8 = v8->parent;
              if (!v8)
              {
                goto LABEL_88;
              }

LABEL_10:
              v12 = *(v10 + 8);
              if (!v12)
              {
                goto LABEL_105;
              }

              name = v8->name;
              if (*v12 == *name && xmlStrEqual(v12, name))
              {
                ns = v8->ns;
                if (ns)
                {
                  href = ns->href;
                  if (!href)
                  {
                    goto LABEL_105;
                  }

                  v16 = *(v10 + 16);
                  if (!v16)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_65;
                }

                if (*(v10 + 16))
                {
                  goto LABEL_88;
                }

                goto LABEL_105;
              }

              goto LABEL_88;
            }

            if (v11 != 6)
            {
              goto LABEL_105;
            }

            if (!*(v10 + 8))
            {
              v7 = v7 + 1;
              v10 = v9 + 24 * v7;
              if (*v10 != 2)
              {
                if (*v10 == 1)
                {
                  goto LABEL_110;
                }

                goto LABEL_88;
              }

              if (!*(v10 + 8))
              {
                return -1;
              }
            }

            if (v8)
            {
              v35 = v8->type;
              if (v35 > 0x15 || ((1 << v35) & 0x242200) == 0)
              {
                while (1)
                {
                  while (1)
                  {
                    while (1)
                    {
                      v8 = v8->parent;
                      if (!v8)
                      {
                        goto LABEL_88;
                      }

                      if (v8->type == XML_ELEMENT_NODE)
                      {
                        v36 = *(v10 + 8);
                        v37 = v8->name;
                        if (*v36 == *v37)
                        {
                          if (xmlStrEqual(v36, v37))
                          {
                            break;
                          }
                        }
                      }
                    }

                    v38 = v8->ns;
                    if (v38)
                    {
                      break;
                    }

                    if (!*(v10 + 16))
                    {
                      goto LABEL_83;
                    }
                  }

                  v39 = v38->href;
                  if (v39)
                  {
                    v40 = *(v10 + 16);
                    if (v40)
                    {
                      if (xmlStrEqual(v40, v39))
                      {
                        break;
                      }
                    }
                  }
                }

LABEL_83:
                v41 = *v10 != 6;
                if (v47 > v5)
                {
                  v42 = v47;
                  v43 = v6;
LABEL_104:
                  v46 = &v43[16 * v5];
                  *v46 = v7 - v41;
                  ++v5;
                  *(v46 + 1) = v8;
                  v47 = v42;
                  v6 = v43;
                  goto LABEL_105;
                }

                if (v47 < 1)
                {
                  v42 = 4;
                }

                else
                {
                  if (v47 > 0x3B9AC9FF)
                  {
                    goto LABEL_105;
                  }

                  if (1000000000 - ((v47 + 1) >> 1) >= v47)
                  {
                    v42 = v47 + ((v47 + 1) >> 1);
                  }

                  else
                  {
                    v42 = 1000000000;
                  }
                }

                if (v6)
                {
                  v43 = malloc_type_realloc(v6, 16 * v42, 0x1020040D5A9D86FuLL);
                }

                else
                {
                  v43 = malloc_type_malloc(16 * v42, 0x1020040D5A9D86FuLL);
                }

                if (v43)
                {
                  goto LABEL_104;
                }

                goto LABEL_105;
              }
            }

            goto LABEL_88;
          }

          if (v11 != 7)
          {
            if (v11 != 8 || v8->type == XML_ELEMENT_NODE)
            {
              goto LABEL_105;
            }

            goto LABEL_88;
          }

          if (v8->type != XML_ELEMENT_NODE)
          {
            goto LABEL_88;
          }

          v34 = v8->ns;
          if (v34)
          {
            href = v34->href;
            if (!href)
            {
              goto LABEL_105;
            }

            v16 = *(v10 + 8);
            if (!v16)
            {
              goto LABEL_88;
            }

LABEL_65:
            if (!xmlStrEqual(v16, href))
            {
              goto LABEL_88;
            }

            goto LABEL_105;
          }

          if (*(v10 + 8))
          {
            goto LABEL_88;
          }

LABEL_105:
          LODWORD(v7) = v7 + 1;
          if (v7 >= *(comp + 9))
          {
LABEL_110:
            if (v6)
            {
LABEL_111:
              free(v6);
            }

            return 1;
          }
        }

        if (v11 <= 2)
        {
          if (v11 == 1)
          {
            if (v8->type != XML_NAMESPACE_DECL)
            {
              v8 = v8->parent;
              v28 = v8->type;
              v22 = v28 > 0x15;
              v29 = (1 << v28) & 0x202200;
              if (!v22 && v29 != 0)
              {
                goto LABEL_105;
              }
            }

            goto LABEL_88;
          }

          if (v11 != 2)
          {
            if (!v11)
            {
              goto LABEL_110;
            }

            goto LABEL_105;
          }

          if (v8->type != XML_ELEMENT_NODE)
          {
            goto LABEL_88;
          }

          goto LABEL_10;
        }

        if (v11 == 3)
        {
          HIDWORD(v21) = v8->type - 1;
          LODWORD(v21) = HIDWORD(v21);
          v20 = v21 >> 2;
          v22 = v20 > 5;
          v23 = (1 << v20) & 0x2D;
          if (!v22 && v23 != 0)
          {
            if (*(v10 + 8))
            {
              children = v8->children;
              if (children)
              {
                while (1)
                {
                  if (children->type == XML_ELEMENT_NODE)
                  {
                    v26 = *(v10 + 8);
                    v27 = children->name;
                    if (*v26 == *v27)
                    {
                      if (xmlStrEqual(v26, v27))
                      {
                        goto LABEL_105;
                      }
                    }
                  }

                  children = children->next;
                  if (!children)
                  {
                    goto LABEL_88;
                  }
                }
              }
            }
          }

          goto LABEL_88;
        }

        if (v11 != 4)
        {
          goto LABEL_105;
        }

        if (v8->type == XML_ATTRIBUTE_NODE)
        {
          v17 = *(v10 + 8);
          if (!v17 || (v18 = v8->name, *v17 == *v18) && xmlStrEqual(v17, v18))
          {
            v19 = v8->ns;
            v16 = *(v10 + 16);
            if (v19)
            {
              if (!v16)
              {
                goto LABEL_105;
              }

              href = v19->href;
              goto LABEL_65;
            }

            if (v16)
            {
              goto LABEL_88;
            }

            goto LABEL_105;
          }
        }

LABEL_88:
        if (!v6)
        {
          goto LABEL_108;
        }

        v44 = __OFSUB__(v5--, 1);
        if (v5 < 0 != v44)
        {
          break;
        }

        v45 = &v6[16 * v5];
        LODWORD(v7) = *v45;
        v8 = *(v45 + 1);
        if (*v45 >= *(comp + 9))
        {
          goto LABEL_111;
        }
      }

      free(v6);
LABEL_108:
      comp = *(comp + 2);
      if (!comp)
      {
        return 0;
      }
    }
  }

  return result;
}

void xmlHaltParser(xmlParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    ctxt->instate = XML_PARSER_EOF;
    ctxt->disableSAX = 1;
    if (ctxt->inputNr >= 2)
    {
      do
      {
        v2 = inputPop(ctxt);
        xmlFreeInputStream(v2);
      }

      while (ctxt->inputNr > 1);
    }

    input = ctxt->input;
    if (input)
    {
      free = input->free;
      if (free)
      {
        free(input->base);
        input = ctxt->input;
        input->free = 0;
      }

      if (input->buf)
      {
        xmlFreeParserInputBuffer(input->buf);
        input = ctxt->input;
        input->buf = 0;
      }

      input->length = 0;
      input->base = "";
      input->cur = "";
      input->end = "";
    }
  }
}

void xmlStopParser(xmlParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    xmlHaltParser(ctxt);
    ctxt->errNo = 111;
  }
}

int xmlCopyCharMultiByte(xmlChar *out, int val)
{
  if (out)
  {
    if (val < 128)
    {
      *out = val;
      LODWORD(v5) = 1;
    }

    else
    {
      if (val >= 0x800)
      {
        if (val >= 0x10000)
        {
          if (val >= 0x110000)
          {
            __xmlRaiseError(0, 0, 0, 0, 0, 1u, 9, 3, 0, 0, 0, 0, 0, val, 0, "Internal error, xmlCopyCharMultiByte 0x%X out of bound\n", val);
            LODWORD(v5) = 0;
            return v5;
          }

          v2 = 12;
          v3 = -16;
          v4 = 18;
        }

        else
        {
          v2 = 6;
          v3 = -32;
          v4 = 12;
        }
      }

      else
      {
        v2 = 0;
        v3 = -64;
        v4 = 6;
      }

      *out = v3 | (val >> v4);
      v5 = 1;
      do
      {
        out[v5++] = (val >> v2) & 0x3F | 0x80;
        v6 = v2 > 5;
        v2 -= 6;
      }

      while (v6);
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  return v5;
}

_DWORD *xmlBufMemoryError(uint64_t a1, const xmlChar *a2)
{
  result = __xmlSimpleError(0x1Du, 2, 0, 0, a2);
  if (a1)
  {
    if (!*(a1 + 56))
    {
      *(a1 + 56) = 2;
    }
  }

  return result;
}

uint64_t xmlBufEmpty(uint64_t result)
{
  if (result)
  {
    if (!*(result + 56))
    {
      v1 = *result;
      if (*result)
      {
        v2 = *(result + 40);
        v3 = *(result + 12);
        if (v3 <= 0x7FFFFFFE && v2 != v3)
        {
          *(result + 40) = v3;
          v2 = v3;
        }

        *(result + 32) = 0;
        v5 = *(result + 16);
        if (v5 == 3)
        {
          v7 = *(result + 24);
          if (v7)
          {
            *(result + 40) = v1 - v7 + v2;
            *result = v7;
            v1 = v7;
          }
        }

        else if (v5 == 2)
        {
          LODWORD(v6) = 0;
          *result = "";
          if (v2 >= 0x7FFFFFFF)
          {
            LODWORD(v2) = 0x7FFFFFFF;
          }

          *(result + 12) = v2;
LABEL_20:
          v9 = v6;
LABEL_21:
          *(result + 8) = v9;
          return result;
        }

        *v1 = 0;
        v6 = *(result + 32);
        v8 = *(result + 40);
        v9 = 0x7FFFFFFF;
        if (v8 >= 0x7FFFFFFF)
        {
          LODWORD(v8) = 0x7FFFFFFF;
        }

        *(result + 12) = v8;
        if (v6 > 0x7FFFFFFE)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t xmlBufLength(uint64_t a1)
{
  if (!a1 || *(a1 + 56))
  {
    return 0;
  }

  v3 = *(a1 + 12);
  if (v3 <= 0x7FFFFFFE && *(a1 + 40) != v3)
  {
    *(a1 + 40) = v3;
  }

  v1 = *(a1 + 32);
  v5 = *(a1 + 8);
  if (v5 <= 0x7FFFFFFE && v1 != v5)
  {
    *(a1 + 32) = v5;
    return v5;
  }

  return v1;
}

uint64_t xmlBufWriteQuotedString(uint64x2_t *a1, xmlChar *str)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[3].i32[2])
  {
    return 0xFFFFFFFFLL;
  }

  v3 = str;
  v4 = a1->u32[3];
  if (v4 <= 0x7FFFFFFE && a1[2].i64[1] != v4)
  {
    a1[2].i64[1] = v4;
  }

  v6 = a1->u32[2];
  if (v6 <= 0x7FFFFFFE && a1[2].i64[0] != v6)
  {
    a1[2].i64[0] = v6;
  }

  if (a1[1].i32[0] == 2)
  {
    return 0xFFFFFFFFLL;
  }

  if (xmlStrchr(str, 0x22u))
  {
    if (xmlStrchr(v3, 0x27u))
    {
      xmlBufCat(a1, "");
LABEL_19:
      for (i = 0; v3[i]; ++i)
      {
        if (v3[i] == 34)
        {
          if (i)
          {
            xmlBufAdd(a1, v3, i);
          }

          xmlBufAdd(a1, "&quot;", 6uLL);
          v3 += i + 1;
          goto LABEL_19;
        }
      }

      if (i)
      {
        xmlBufAdd(a1, v3, i);
      }

      v10 = "";
      goto LABEL_32;
    }

    v10 = "'";
  }

  else
  {
    v10 = "";
  }

  xmlBufCat(a1, v10);
  xmlBufCat(a1, v3);
LABEL_32:
  xmlBufCat(a1, v10);
  return 0;
}

uint64_t xmlBufMergeBuffer(uint64x2_t *a1, xmlBufferPtr buf)
{
  if (a1 && !a1[3].i32[2])
  {
    v5 = a1->u32[3];
    if (v5 <= 0x7FFFFFFE && a1[2].i64[1] != v5)
    {
      a1[2].i64[1] = v5;
    }

    v7 = a1->u32[2];
    if (v7 <= 0x7FFFFFFE && a1[2].i64[0] != v7)
    {
      a1[2].i64[0] = v7;
    }

    if (buf && (content = buf->content) != 0 && (use = buf->use, use))
    {
      v3 = xmlBufAdd(a1, content, use);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  xmlBufferFree(buf);
  return v3;
}

int xmlC14NExecute(xmlDocPtr doc, xmlC14NIsVisibleCallback is_visible_callback, void *user_data, int mode, xmlChar **inclusive_ns_prefixes, int with_comments, xmlOutputBufferPtr buf)
{
  if (!doc || !buf)
  {
    v10 = "executing c14n";
LABEL_8:
    xmlC14NErrParam(v10);
    return -1;
  }

  if (mode > 2)
  {
    v10 = "invalid mode for executing c14n";
    goto LABEL_8;
  }

  if (buf->encoder)
  {
    __xmlRaiseError(0, 0, 0, 0, doc, 0x15u, 1951, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlC14NExecute: output buffer encoder != NULL but C14N requires UTF8 output\n");
    return -1;
  }

  v15 = malloc_type_malloc(0x50uLL, 0x10A00400FFB854CuLL);
  if (!v15)
  {
    xmlC14NErrMemory("creating context");
LABEL_19:
    __xmlRaiseError(0, 0, 0, 0, doc, 0x15u, 1950, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlC14NExecute: unable to create C14N context\n");
    return -1;
  }

  v16 = v15;
  *(v15 + 28) = 0u;
  *(v15 + 44) = 0u;
  *(v15 + 19) = 0;
  *(v15 + 60) = 0u;
  *(v15 + 6) = with_comments;
  *v15 = doc;
  *(v15 + 1) = is_visible_callback;
  *(v15 + 2) = user_data;
  *(v15 + 4) = buf;
  *(v15 + 11) = 1;
  v17 = malloc_type_malloc(0x20uLL, 0x1080040AA036A7FuLL);
  if (!v17)
  {
    xmlC14NErrMemory("creating namespaces stack");
    *(v16 + 6) = 0;
    *(v16 + 18) = 1952;
    __xmlRaiseError(0, 0, 0, v16, doc, 0x15u, 1952, 2, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlC14NNewCtx: xmlC14NVisibleNsStackCreate failed\n");
    xmlC14NFreeCtx(v16);
    goto LABEL_19;
  }

  *v17 = 0u;
  v17[1] = 0u;
  *(v16 + 6) = v17;
  *(v16 + 14) = mode;
  if (mode == 1)
  {
    *(v16 + 8) = inclusive_ns_prefixes;
  }

  children = doc->children;
  if (children && (xmlC14NProcessNodeList(v16, children, 0) & 0x80000000) != 0)
  {
    v22 = "processing docs children list";
    goto LABEL_24;
  }

  v19 = xmlOutputBufferFlush(buf);
  if (v19 < 0)
  {
    v22 = "flushing output buffer";
LABEL_24:
    xmlC14NErrInternal(v22);
    xmlC14NFreeCtx(v16);
    return -1;
  }

  v20 = v19;
  xmlC14NFreeCtx(v16);
  return v20;
}

uint64_t xmlC14NProcessNodeList(xmlDocPtr *a1, uint64_t a2, __n128 a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
  v6 = ">";
  while (2)
  {
    v7 = a1[1];
    if (v7)
    {
      v8 = v7(a1[2], v3, *(v3 + 40));
    }

    else
    {
      v8 = 1;
    }

    result = 0;
    switch(*(v3 + 8))
    {
      case 1:
        v18 = *(v3 + 96);
        if (!v18)
        {
          goto LABEL_29;
        }

        do
        {
          if (xmlStrlen(v18[2]) < 1)
          {
            goto LABEL_28;
          }

          v19 = xmlParseURI(v18[2]);
          if (!v19)
          {
            xmlC14NErrInternal("parsing namespace uri");
LABEL_262:
            v97 = "checking for relative namespaces";
            goto LABEL_263;
          }

          v20 = v19;
          if (!xmlStrlen(v19->scheme))
          {
            __xmlRaiseError(0, 0, 0, 0, 0, 0x15u, 1955, 2, 0, 0, 0, 0, 0, 0, 0, "Relative namespace UR is invalid here : %s\n", v20->scheme);
            xmlFreeURI(v20);
            goto LABEL_262;
          }

          xmlFreeURI(v20);
LABEL_28:
          v18 = *v18;
        }

        while (v18);
LABEL_29:
        v21 = a1[6];
        if (v21)
        {
          a3.n128_u64[0] = v21->_private;
          v101 = a3;
          type = v21->type;
          if (v8)
          {
            goto LABEL_31;
          }

LABEL_48:
          v103 = 0;
        }

        else
        {
          xmlC14NErrParam("saving namespaces stack");
          type = 0;
          v101 = 0u;
          if (!v8)
          {
            goto LABEL_48;
          }

LABEL_31:
          v103 = *(a1 + 11);
          if (v103)
          {
            a1[5] = 1;
          }

          xmlOutputBufferWriteString(a1[4], "<");
          v23 = *(v3 + 72);
          if (v23 && xmlStrlen(*(v23 + 24)) >= 1)
          {
            xmlOutputBufferWriteString(a1[4], *(*(v3 + 72) + 24));
            xmlOutputBufferWriteString(a1[4], ":");
          }

          xmlOutputBufferWriteString(a1[4], *(v3 + 16));
        }

        v28 = *(v3 + 8);
        v102 = type;
        if (*(a1 + 14) != 1)
        {
          if (v28 == 1)
          {
            v29 = v6;
            v42 = xmlListCreate(0, xmlC14NNsCompare);
            if (v42)
            {
              v31 = v42;
              v43 = v5;
              v44 = 0;
              v45 = v3;
              do
              {
                for (i = *(v45 + 96); i; i = i->next)
                {
                  if (xmlSearchNs(*(v3 + 64), v3, i->prefix) == i && !xmlC14NIsXmlNs(i))
                  {
                    v47 = a1[1];
                    if (!v47 || v47(a1[2], i, v3))
                    {
                      v48 = xmlC14NVisibleNsStackFind(a1[6], i);
                      if (v8)
                      {
                        xmlC14NVisibleNsStackAdd(a1[6], i, v3);
                      }

                      if (!v48)
                      {
                        xmlListInsert(v31, i);
                      }

                      if (!xmlStrlen(i->prefix))
                      {
                        v44 = 1;
                      }
                    }
                  }
                }

                v45 = *(v45 + 40);
              }

              while (v45);
              v5 = v43;
              if (v8)
              {
                if (!v44)
                {
                  xmmword_1EC25EA40 = 0u;
                  unk_1EC25EA50 = 0u;
                  xmlC14NProcessNamespacesAxis_ns_default = 0u;
                  if (!xmlC14NVisibleNsStackFind(a1[6], &xmlC14NProcessNamespacesAxis_ns_default))
                  {
                    v49 = &xmlC14NProcessNamespacesAxis_ns_default;
                    goto LABEL_147;
                  }
                }
              }

              goto LABEL_148;
            }

            v100 = "creating namespaces list (c14n)";
            goto LABEL_282;
          }

          v99 = "processing namespaces axis (c14n)";
LABEL_279:
          xmlC14NErrParam(v99);
LABEL_283:
          v97 = "processing namespaces axis";
          break;
        }

        if (v28 != 1)
        {
          v99 = "processing namespaces axis (exc c14n)";
          goto LABEL_279;
        }

        v29 = v6;
        v30 = xmlListCreate(0, xmlC14NNsCompare);
        if (!v30)
        {
          v100 = "creating namespaces list (exc c14n)";
LABEL_282:
          xmlC14NErrInternal(v100);
          goto LABEL_283;
        }

        v31 = v30;
        v32 = a1[8];
        if (v32 && (v33 = *v32) != 0)
        {
          v34 = 0;
          v35 = 0;
          v36 = 8;
          do
          {
            if (xmlStrEqual(v33, "#default") || xmlStrEqual(v33, ""))
            {
              v33 = 0;
              v34 = 1;
            }

            v37 = xmlSearchNs(*(v3 + 64), v3, v33);
            if (v37)
            {
              v38 = v37;
              if (!xmlC14NIsXmlNs(v37))
              {
                v39 = a1[1];
                if (!v39 || v39(a1[2], v38, v3))
                {
                  v40 = xmlC14NVisibleNsStackFind(a1[6], v38);
                  if (v8)
                  {
                    xmlC14NVisibleNsStackAdd(a1[6], v38, v3);
                  }

                  if (!v40)
                  {
                    xmlListInsert(v31, v38);
                  }

                  if (!xmlStrlen(v38[3]))
                  {
                    v35 = 1;
                  }
                }
              }
            }

            v33 = *(&a1[8]->_private + v36);
            v36 += 8;
          }

          while (v33);
          v41 = v34 != 0;
        }

        else
        {
          v35 = 0;
          v41 = 0;
        }

        v50 = *(v3 + 72);
        if (v50)
        {
          v51 = 0;
LABEL_101:
          if (!xmlC14NIsXmlNs(v50))
          {
            if (v8)
            {
              v52 = a1[1];
              if ((!v52 || v52(a1[2], v50, v3)) && !xmlExcC14NVisibleNsStackFind(a1[6], v50, a1))
              {
                xmlListInsert(v31, v50);
              }

              xmlC14NVisibleNsStackAdd(a1[6], v50, v3);
            }

            if (!xmlStrlen(v50->prefix))
            {
              v35 = 1;
            }
          }
        }

        else
        {
          v50 = xmlSearchNs(*(v3 + 64), v3, 0);
          v51 = 1;
          if (v50)
          {
            goto LABEL_101;
          }
        }

        for (j = *(v3 + 88); j; j = *(j + 48))
        {
          v54 = *(j + 72);
          if (v54)
          {
            if (xmlC14NIsXmlNs(v54) || (v56 = a1[1]) != 0 && !v56(a1[2], j, v3))
            {
              v55 = *(j + 72);
              if (v55 && !xmlStrlen(*(v55 + 24)) && !xmlStrlen(*(*(j + 72) + 16)))
              {
                v51 = 1;
              }
            }

            else
            {
              v57 = xmlExcC14NVisibleNsStackFind(a1[6], *(j + 72), a1);
              xmlC14NVisibleNsStackAdd(a1[6], *(j + 72), v3);
              if (v8 && !v57)
              {
                xmlListInsert(v31, *(j + 72));
              }

              if (!xmlStrlen(*(*(j + 72) + 24)))
              {
                v35 = 1;
              }
            }
          }
        }

        if (v8)
        {
          v58 = v51 == 0;
        }

        else
        {
          v58 = 1;
        }

        v60 = v58 || v35 != 0;
        if ((v60 | v41))
        {
          if (v8)
          {
            v61 = v35 == 0;
          }

          else
          {
            v61 = 0;
          }

          v62 = v61;
          if ((v62 & v41) == 1)
          {
            v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
            xmmword_1EC25EAA0 = 0u;
            unk_1EC25EAB0 = 0u;
            xmlExcC14NProcessNamespacesAxis_ns_default_65 = 0u;
            if (!xmlC14NVisibleNsStackFind(a1[6], &xmlExcC14NProcessNamespacesAxis_ns_default_65))
            {
              v49 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
              goto LABEL_147;
            }

            goto LABEL_148;
          }

LABEL_145:
          v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
          goto LABEL_148;
        }

        xmmword_1EC25EA70 = 0u;
        unk_1EC25EA80 = 0u;
        xmlExcC14NProcessNamespacesAxis_ns_default = 0u;
        if (xmlExcC14NVisibleNsStackFind(a1[6], &xmlExcC14NProcessNamespacesAxis_ns_default, a1))
        {
          goto LABEL_145;
        }

        v49 = &xmlExcC14NProcessNamespacesAxis_ns_default;
        v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
LABEL_147:
        xmlC14NPrintNamespaces(v49, a1);
LABEL_148:
        xmlListWalk(v31, xmlC14NPrintNamespacesWalker, a1);
        xmlListDelete(v31);
        if (v8)
        {
          v63 = a1[6];
          if (v63)
          {
            v64 = *v63;
            v63[1] = v63[2];
            v63[2] = v64;
          }

          else
          {
            xmlC14NErrParam("shifting namespaces stack");
          }
        }

        if (*(v3 + 8) != 1)
        {
          xmlC14NErrParam("processing attributes axis");
LABEL_275:
          v97 = "processing attributes axis";
          break;
        }

        v65 = xmlListCreate(0, xmlC14NAttrsCompare);
        if (!v65)
        {
          xmlC14NErrInternal("creating attributes list");
          goto LABEL_275;
        }

        v66 = v65;
        v67 = *(a1 + 14);
        if (v67 != 2)
        {
          if (v67 == 1)
          {
            for (k = *(v3 + 88); k; k = k[6])
            {
              v77 = a1[1];
              if (!v77 || v77(a1[2], k, v3))
              {
                xmlListInsert(v66, k);
              }
            }

            goto LABEL_238;
          }

          if (v67)
          {
LABEL_238:
            v75 = 0;
            goto LABEL_239;
          }

          for (m = *(v3 + 88); m; m = m[6])
          {
            v69 = a1[1];
            if (!v69 || v69(a1[2], m, v3))
            {
              xmlListInsert(v66, m);
            }
          }

          if (v8)
          {
            v70 = *(v3 + 40);
            if (v70)
            {
              v71 = a1[1];
              if (v71)
              {
                if (!v71(a1[2], v70, *(v70 + 40)))
                {
                  v72 = *(v3 + 40);
                  if (v72)
                  {
                    do
                    {
                      for (n = *(v72 + 88); n; n = n[6])
                      {
                        v74 = n[9];
                        if (v74 && xmlC14NIsXmlNs(v74) && !xmlListSearch(v66, n))
                        {
                          xmlListInsert(v66, n);
                        }
                      }

                      v75 = 0;
                      v72 = *(v72 + 40);
                    }

                    while (v72);
                    goto LABEL_239;
                  }
                }
              }
            }

            goto LABEL_238;
          }

          goto LABEL_235;
        }

        v78 = *(v3 + 88);
        if (!v78)
        {
          if (v8)
          {
            v75 = 0;
            v79 = 0;
            goto LABEL_212;
          }

LABEL_235:
          xmlListWalk(v66, xmlC14NPrintAttrs, a1);
          xmlFreePropList(0);
          xmlListDelete(v66);
          v6 = v29;
          goto LABEL_241;
        }

        v79 = 0;
        v80 = 0;
        v75 = 0;
        while (2)
        {
          if (!v8)
          {
            goto LABEL_203;
          }

          v81 = *(v78 + 72);
          if (!v81 || !xmlC14NIsXmlNs(v81))
          {
            goto LABEL_203;
          }

          if (!v80 && xmlStrEqual(*(v78 + 16), "lang"))
          {
            v80 = v78;
            goto LABEL_206;
          }

          if (v79)
          {
            if (!v75)
            {
              goto LABEL_197;
            }

LABEL_203:
            v83 = a1[1];
            if (!v83 || v83(a1[2], v78, v3))
            {
              xmlListInsert(v66, v78);
            }
          }

          else
          {
            v82 = xmlStrEqual(*(v78 + 16), "space");
            if (v82)
            {
              v79 = v78;
            }

            else
            {
              v79 = 0;
            }

            if (v82 || v75)
            {
              if (!v82)
              {
                v79 = 0;
                goto LABEL_203;
              }

              v79 = v78;
            }

            else
            {
LABEL_197:
              if (!xmlStrEqual(*(v78 + 16), "base"))
              {
                v75 = 0;
                goto LABEL_203;
              }

              v75 = v78;
            }
          }

LABEL_206:
          v78 = *(v78 + 48);
          if (v78)
          {
            continue;
          }

          break;
        }

        if (!v8)
        {
          goto LABEL_235;
        }

        if (v80)
        {
          goto LABEL_213;
        }

LABEL_212:
        v80 = xmlC14NFindHiddenParentAttr(a1, *(v3 + 40), "lang");
        if (v80)
        {
LABEL_213:
          xmlListInsert(v66, v80);
        }

        if (v79 || (v79 = xmlC14NFindHiddenParentAttr(a1, *(v3 + 40), "space")) != 0)
        {
          xmlListInsert(v66, v79);
        }

        if (v75 || (v75 = xmlC14NFindHiddenParentAttr(a1, *(v3 + 40), "base")) != 0)
        {
          if (v75->parent)
          {
            String = xmlNodeListGetString(*a1, v75->children, 1);
            if (String)
            {
              v85 = String;
              for (ii = v75->parent->parent; ii; ii = ii->parent)
              {
                v87 = a1[1];
                if (!v87 || v87(a1[2], ii, ii->parent))
                {
                  break;
                }

                v88 = xmlHasNsProp(ii, "base", "http://www.w3.org/XML/1998/namespace");
                if (v88)
                {
                  v89 = xmlNodeListGetString(*a1, v88->children, 1);
                  if (!v89)
                  {
                    free(v85);
                    v96 = "processing xml:base attribute - can't get attr value";
                    goto LABEL_257;
                  }

                  v90 = v89;
                  v91 = xmlStrlen(v89);
                  if (v91 >= 2 && v90[v91 - 2] == 46)
                  {
                    v92 = xmlStrcat(v90, "/");
                    if (!v92)
                    {
                      free(v90);
                      free(v85);
                      v96 = "processing xml:base attribute - can't modify uri";
LABEL_257:
                      xmlC14NErrInternal(v96);
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    v92 = v90;
                  }

                  v93 = xmlBuildURI(v85, v92);
                  free(v92);
                  free(v85);
                  v85 = v93;
                  if (!v93)
                  {
                    v96 = "processing xml:base attribute - can't construct uri";
                    goto LABEL_257;
                  }
                }
              }

              if (xmlStrEqual(v85, ""))
              {
                free(v85);
LABEL_258:
                v75 = 0;
                v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
              }

              else
              {
                v75 = xmlNewNsProp(0, v75->ns, "base", v85);
                free(v85);
                v5 = &xmlExcC14NProcessNamespacesAxis_ns_default_65;
                if (v75)
                {
                  xmlListInsert(v66, v75);
                  v75->next = 0;
                }

                else
                {
                  xmlC14NErrInternal("processing xml:base attribute - can't construct attribute");
                }
              }

              goto LABEL_239;
            }

            xmlC14NErrInternal("processing xml:base attribute - can't get attr value");
          }

          else
          {
            xmlC14NErrParam("processing xml:base attribute");
          }

          goto LABEL_238;
        }

LABEL_239:
        xmlListWalk(v66, xmlC14NPrintAttrs, a1);
        xmlFreePropList(v75);
        xmlListDelete(v66);
        v6 = v29;
        if (v8)
        {
          xmlOutputBufferWriteString(a1[4], v29);
        }

LABEL_241:
        if (*(v3 + 24) && (xmlC14NProcessNodeList(a1) & 0x80000000) != 0)
        {
          v97 = "processing childrens list";
          break;
        }

        if (v8)
        {
          xmlOutputBufferWriteString(a1[4], "</");
          v94 = *(v3 + 72);
          if (v94 && xmlStrlen(*(v94 + 24)) >= 1)
          {
            xmlOutputBufferWriteString(a1[4], *(*(v3 + 72) + 24));
            xmlOutputBufferWriteString(a1[4], ":");
          }

          xmlOutputBufferWriteString(a1[4], *(v3 + 16));
          xmlOutputBufferWriteString(a1[4], v6);
          if (v103)
          {
            *(a1 + 10) = 2;
            *(a1 + 11) = v103;
          }
        }

        v95 = a1[6];
        if (v95)
        {
          result = 0;
          a3.n128_u64[1] = v101.n128_u64[1];
          v95->_private = v101.n128_u64[0];
          v95->type = v102;
        }

        else
        {
          xmlC14NErrParam("restoring namespaces stack");
          result = 0;
        }

LABEL_97:
        v3 = *(v3 + 48);
        if (v3 && (result & 0x80000000) == 0)
        {
          continue;
        }

        return result;
      case 2:
        v98 = "XML_ATTRIBUTE_NODE";
        goto LABEL_268;
      case 3:
      case 4:
        if (!v8)
        {
          goto LABEL_96;
        }

        result = *(v3 + 80);
        if (!result)
        {
          goto LABEL_97;
        }

        v10 = xmlC11NNormalizeString(result, 3u);
        if (!v10)
        {
          v97 = "normalizing text node";
          goto LABEL_263;
        }

        v11 = v10;
        xmlOutputBufferWriteString(a1[4], v10);
        free(v11);
        goto LABEL_96;
      case 5:
        v98 = "XML_ENTITY_REF_NODE";
        goto LABEL_268;
      case 6:
        v98 = "XML_ENTITY_NODE";
        goto LABEL_268;
      case 7:
        if (!v8)
        {
          goto LABEL_96;
        }

        if (*(a1 + 10) == 2)
        {
          v12 = "\n<?";
        }

        else
        {
          v12 = "<?";
        }

        xmlOutputBufferWriteString(a1[4], v12);
        xmlOutputBufferWriteString(a1[4], *(v3 + 16));
        v13 = *(v3 + 80);
        if (!v13 || !*v13)
        {
          goto LABEL_21;
        }

        xmlOutputBufferWriteString(a1[4], " ");
        v14 = xmlC11NNormalizeString(*(v3 + 80), 2u);
        if (v14)
        {
          v15 = v14;
          xmlOutputBufferWriteString(a1[4], v14);
          free(v15);
LABEL_21:
          v16 = a1[4];
          if (*(a1 + 10))
          {
            v17 = "?>";
          }

          else
          {
            v17 = "?>\n";
          }

LABEL_95:
          xmlOutputBufferWriteString(v16, v17);
LABEL_96:
          result = 0;
          goto LABEL_97;
        }

        v97 = "normalizing pi node";
        break;
      case 8:
        if (!v8 || !*(a1 + 6))
        {
          goto LABEL_96;
        }

        if (*(a1 + 10) == 2)
        {
          v24 = "\n<!--";
        }

        else
        {
          v24 = "<!--";
        }

        xmlOutputBufferWriteString(a1[4], v24);
        v25 = *(v3 + 80);
        if (!v25)
        {
          goto LABEL_45;
        }

        v26 = xmlC11NNormalizeString(v25, 1u);
        if (v26)
        {
          v27 = v26;
          xmlOutputBufferWriteString(a1[4], v26);
          free(v27);
LABEL_45:
          v16 = a1[4];
          if (*(a1 + 10))
          {
            v17 = "-->";
          }

          else
          {
            v17 = "-->\n";
          }

          goto LABEL_95;
        }

        v97 = "normalizing comment node";
        break;
      case 9:
      case 0xB:
      case 0xD:
      case 0x15:
        if (!*(v3 + 24))
        {
          goto LABEL_96;
        }

        a1[5] = 0x100000000;
        result = xmlC14NProcessNodeList(a1);
        goto LABEL_97;
      case 0xA:
      case 0xC:
      case 0xE:
      case 0xF:
      case 0x10:
      case 0x11:
      case 0x13:
      case 0x14:
        goto LABEL_97;
      case 0x12:
        v98 = "XML_NAMESPACE_DECL";
LABEL_268:
        xmlC14NErrInvalidNode(v98);
        return 0xFFFFFFFFLL;
      default:
        __xmlRaiseError(0, 0, 0, 0, 0, 0x15u, 1954, 2, 0, 0, "processing node", 0, 0, 0, 0, "Unknown node type %d found : %s\n", *(v3 + 8));
        return 0xFFFFFFFFLL;
    }

    break;
  }

LABEL_263:
  xmlC14NErrInternal(v97);
  return 0xFFFFFFFFLL;
}