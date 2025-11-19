int xmlXPathContextSetCache(xmlXPathContextPtr ctxt, int active, int value, int options)
{
  if (!ctxt)
  {
    return -1;
  }

  cache = ctxt->cache;
  if (!active)
  {
    if (cache)
    {
      xmlXPathFreeCache(cache);
      v8 = 0;
      ctxt->cache = 0;
      return v8;
    }

    return 0;
  }

  if (!cache)
  {
    cache = malloc_type_malloc(0x40uLL, 0x1020040A609D6FAuLL);
    if (!cache)
    {
      xmlXPathErrMemory(0, "creating object cache\n");
      ctxt->cache = 0;
      return -1;
    }

    *(cache + 2) = 0u;
    *(cache + 3) = 0u;
    *cache = 0u;
    *(cache + 1) = 0u;
    *&v9 = 0x6400000064;
    *(&v9 + 1) = 0x6400000064;
    *(cache + 40) = v9;
    *(cache + 14) = 100;
    ctxt->cache = cache;
    if (!options)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (options)
  {
    return 0;
  }

LABEL_12:
  v8 = 0;
  if (value >= 0)
  {
    v10 = value;
  }

  else
  {
    v10 = 100;
  }

  *(cache + 40) = vdupq_n_s32(v10);
  *(cache + 14) = v10;
  return v8;
}

void xmlXPathFreeCache(int **a1)
{
  v2 = *a1;
  if (v2)
  {
    xmlXPathCacheFreeObjectList(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    xmlXPathCacheFreeObjectList(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    xmlXPathCacheFreeObjectList(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    xmlXPathCacheFreeObjectList(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    xmlXPathCacheFreeObjectList(v6);
  }

  free(a1);
}

xmlXPathObjectPtr valuePop(xmlXPathObjectPtr ctxt)
{
  if (ctxt)
  {
    user_low = LODWORD(ctxt->user);
    if (user_low < 1)
    {
      return 0;
    }

    else
    {
      v2 = *&ctxt->index;
      v3 = user_low - 1;
      LODWORD(ctxt->user) = user_low - 1;
      if (user_low == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v2 + 8 * user_low - 16);
      }

      ctxt->stringval = v4;
      ctxt = *(v2 + 8 * v3);
      *(v2 + 8 * v3) = 0;
    }
  }

  return ctxt;
}

int xmlXPathPopBoolean(xmlXPathParserContextPtr ctxt)
{
  if (ctxt)
  {
    valueNr = ctxt->valueNr;
    if (valueNr >= 1 && ((valueTab = ctxt->valueTab, v4 = valueNr - 1, ctxt->valueNr = valueNr - 1, valueNr != 1) ? (v5 = valueTab[valueNr - 2]) : (v5 = 0), ctxt->value = v5, v7 = valueTab[v4], valueTab[v4] = 0, v7))
    {
      if (v7->type == XPATH_BOOLEAN)
      {
        BOOLval = v7->BOOLval;
      }

      else
      {
        BOOLval = xmlXPathCastToBoolean(v7);
      }

      xmlXPathReleaseObject(ctxt->context, v7);
    }

    else
    {
      xmlXPathErr(ctxt, 10);
      BOOLval = 0;
      ctxt->error = 10;
    }
  }

  else
  {
    xmlXPathErr(0, 10);
    return 0;
  }

  return BOOLval;
}

int xmlXPathCastToBoolean(xmlXPathObjectPtr val)
{
  if (val)
  {
    v1 = val;
    LODWORD(val) = 0;
    type = v1->type;
    if (v1->type > XPATH_NUMBER)
    {
      if ((type - 5) < 4)
      {
        v3 = *__xmlGenericError();
        v4 = __xmlGenericErrorContext();
        v3(*v4, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 5892);
LABEL_5:
        LODWORD(val) = 0;
        return val;
      }

      if (type == 4)
      {
        val = v1->stringval;
        if (!val)
        {
          return val;
        }

        v7 = xmlStrlen(val) == 0;
LABEL_19:
        LODWORD(val) = !v7;
        return val;
      }

      if (type != 9)
      {
        return val;
      }

LABEL_14:
      p_nodeNr = &v1->nodesetval->nodeNr;
      if (!p_nodeNr)
      {
        goto LABEL_5;
      }

      v7 = *p_nodeNr == 0;
      goto LABEL_19;
    }

    switch(type)
    {
      case 1:
        goto LABEL_14;
      case 2:
        LODWORD(val) = v1->BOOLval;
        break;
      case 3:
        floatval = v1->floatval;
        LODWORD(val) = floatval > 0.0 || floatval < 0.0;
        break;
    }
  }

  return val;
}

double xmlXPathPopNumber(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    xmlXPathErr(0, 10);
    return 0.0;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1 || ((valueTab = ctxt->valueTab, v4 = valueNr - 1, ctxt->valueNr = valueNr - 1, valueNr != 1) ? (v5 = valueTab[valueNr - 2]) : (v5 = 0), ctxt->value = v5, v6 = valueTab[v4], valueTab[v4] = 0, !v6))
  {
    xmlXPathErr(ctxt, 10);
    ctxt->error = 10;
    return 0.0;
  }

  if (v6->type == XPATH_NUMBER)
  {
    floatval = v6->floatval;
  }

  else
  {
    floatval = xmlXPathCastToNumber(v6);
  }

  xmlXPathReleaseObject(ctxt->context, v6);
  return floatval;
}

xmlChar *__cdecl xmlXPathPopString(xmlXPathParserContextPtr ctxt)
{
  if (ctxt)
  {
    valueNr = ctxt->valueNr;
    if (valueNr >= 1 && ((valueTab = ctxt->valueTab, v4 = valueNr - 1, ctxt->valueNr = valueNr - 1, valueNr != 1) ? (v5 = valueTab[valueNr - 2]) : (v5 = 0), ctxt->value = v5, v7 = valueTab[v4], valueTab[v4] = 0, v7))
    {
      v6 = xmlXPathCastToString(v7);
      if (v7->stringval == v6)
      {
        v7->stringval = 0;
      }

      xmlXPathReleaseObject(ctxt->context, v7);
    }

    else
    {
      xmlXPathErr(ctxt, 10);
      v6 = 0;
      ctxt->error = 10;
    }
  }

  else
  {
    xmlXPathErr(0, 10);
    return 0;
  }

  return v6;
}

xmlChar *__cdecl xmlXPathCastToString(xmlXPathObjectPtr val)
{
  if (!val)
  {
LABEL_7:
    stringval = "";

    return xmlStrdup(stringval);
  }

  type = val->type;
  if (val->type > XPATH_NUMBER)
  {
    if (type - 5 < 4)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 5609);
      stringval = "";

      return xmlStrdup(stringval);
    }

    if (type == XPATH_STRING)
    {
      stringval = val->stringval;

      return xmlStrdup(stringval);
    }

    if (type == XPATH_XSLT_TREE)
    {
LABEL_21:
      nodesetval = val->nodesetval;

      return xmlXPathCastNodeSetToString(nodesetval);
    }

    return 0;
  }

  if (type <= XPATH_NODESET)
  {
    if (type)
    {
      if (type != XPATH_NODESET)
      {
        return 0;
      }

      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (type == XPATH_BOOLEAN)
  {
    if (val->BOOLval)
    {
      stringval = "true";
    }

    else
    {
      stringval = "false";
    }

    return xmlStrdup(stringval);
  }

  if (type != XPATH_NUMBER)
  {
    return 0;
  }

  floatval = val->floatval;

  return xmlXPathCastNumberToString(floatval);
}

xmlNodeSetPtr xmlXPathPopNodeSet(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  value = ctxt->value;
  if (!value)
  {
    v8 = 10;
    v9 = 10;
LABEL_10:
    xmlXPathErr(ctxt, v9);
    v7 = 0;
    ctxt->error = v8;
    return v7;
  }

  if ((value->type | 8) != 9)
  {
    v8 = 11;
    v9 = 11;
    goto LABEL_10;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    v10 = 0;
  }

  else
  {
    valueTab = ctxt->valueTab;
    v5 = valueNr - 1;
    ctxt->valueNr = valueNr - 1;
    if (valueNr == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = valueTab[valueNr - 2];
    }

    ctxt->value = v6;
    v10 = valueTab[v5];
    valueTab[v5] = 0;
  }

  v7 = v10[1];
  v10[1] = 0;
  xmlXPathReleaseObject(ctxt->context, v10);
  return v7;
}

void *__cdecl xmlXPathPopExternal(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    xmlXPathErr(0, 10);
    return 0;
  }

  value = ctxt->value;
  if (!value)
  {
    v8 = 10;
    v9 = 10;
LABEL_10:
    xmlXPathErr(ctxt, v9);
    v7 = 0;
    ctxt->error = v8;
    return v7;
  }

  if (value->type != XPATH_USERS)
  {
    v8 = 11;
    v9 = 11;
    goto LABEL_10;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    v10 = 0;
  }

  else
  {
    valueTab = ctxt->valueTab;
    v5 = valueNr - 1;
    ctxt->valueNr = valueNr - 1;
    if (valueNr == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = valueTab[valueNr - 2];
    }

    ctxt->value = v6;
    v10 = valueTab[v5];
    valueTab[v5] = 0;
  }

  v7 = v10[5];
  v10[5] = 0;
  xmlXPathReleaseObject(ctxt->context, v10);
  return v7;
}

uint64_t xmlXPathOrderDocElems(xmlDocPtr doc)
{
  if (!doc)
  {
    return -1;
  }

  children = doc->children;
  if (children)
  {
    v2 = 0;
    while (1)
    {
      do
      {
        v3 = children;
        if (children->type != XML_ELEMENT_NODE)
        {
          break;
        }

        v4 = ~v2++;
        v3->intSubset = v4;
        children = v3->children;
      }

      while (children);
      while (1)
      {
        children = v3->next;
        if (children)
        {
          break;
        }

        v3 = v3->parent;
        if (v3)
        {
          v5 = v3 == doc;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return v2;
        }
      }
    }
  }

  return 0;
}

int xmlXPathCmpNodes(xmlNodePtr node1, xmlNodePtr node2)
{
  result = -2;
  if (!node1 || !node2)
  {
    return result;
  }

  if (node1 == node2)
  {
    return 0;
  }

  type = node1->type;
  if (type == XML_ATTRIBUTE_NODE)
  {
    parent = node1->parent;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    parent = node1;
    node1 = 0;
  }

  v7 = node2->type;
  if (v7 == XML_ATTRIBUTE_NODE)
  {
    v8 = node2->parent;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    v8 = node2;
    node2 = 0;
  }

  if (parent == v8)
  {
    if (v6 != v9)
    {
      if (v7 == XML_ATTRIBUTE_NODE)
      {
        return 1;
      }

      else
      {
        return -1;
      }
    }

    if (type == XML_ATTRIBUTE_NODE)
    {
      result = 1;
      while (1)
      {
        node2 = node2->prev;
        if (!node2)
        {
          break;
        }

        if (node2 == node1)
        {
          return result;
        }
      }

      return -1;
    }

    return 0;
  }

  v10 = parent->type;
  if (v10 == XML_NAMESPACE_DECL)
  {
    return 1;
  }

  v11 = v8->type;
  if (v11 == XML_NAMESPACE_DECL || parent == v8->prev)
  {
    return 1;
  }

  next = v8->next;
  if (parent == next)
  {
    return -1;
  }

  if (v10 != XML_ELEMENT_NODE || v11 != XML_ELEMENT_NODE || (v13 = parent->content, (v13 & 0x8000000000000000) == 0) || (v14 = v8->content, (v14 & 0x8000000000000000) == 0) || parent->doc != v8->doc || (v14 < v13 ? (LODWORD(next) = 1) : (LODWORD(next) = -1), result = next, v14 == v13))
  {
    v15 = v8->parent;
    if (v15)
    {
      v16 = 0;
      while (v15 != parent)
      {
        ++v16;
        v17 = v15;
        v15 = v15->parent;
        if (!v15)
        {
          goto LABEL_36;
        }
      }

      return 1;
    }

    v16 = 0;
    v17 = v8;
LABEL_36:
    v18 = parent->parent;
    if (v18)
    {
      v19 = 0;
      while (v18 != v8)
      {
        v20 = v18;
        ++v19;
        v18 = v18->parent;
        if (!v18)
        {
          goto LABEL_42;
        }
      }

      return -1;
    }

    v19 = 0;
    v20 = parent;
LABEL_42:
    if (v17 != v20)
    {
      return -2;
    }

    if (v19 > v16)
    {
      do
      {
        --v19;
        parent = parent->parent;
      }

      while (v19 > v16);
      v19 = v16;
    }

    while (v16 > v19)
    {
      --v16;
      v8 = v8->parent;
    }

    result = -2;
    while (1)
    {
      v21 = parent->parent;
      v22 = v8->parent;
      if (v21 == v22)
      {
        break;
      }

      if (v21)
      {
        v23 = v22 == 0;
      }

      else
      {
        v23 = 1;
      }

      parent = parent->parent;
      v8 = v8->parent;
      if (v23)
      {
        return result;
      }
    }

    if (parent == v8->prev)
    {
      return 1;
    }

    if (parent == v8->next)
    {
      return -1;
    }

    if (parent->type != XML_ELEMENT_NODE)
    {
      goto LABEL_64;
    }

    if (v8->type != XML_ELEMENT_NODE)
    {
      goto LABEL_64;
    }

    content = parent->content;
    if ((content & 0x8000000000000000) == 0)
    {
      goto LABEL_64;
    }

    v25 = v8->content;
    if ((v25 & 0x8000000000000000) == 0 || parent->doc != v8->doc)
    {
      goto LABEL_64;
    }

    if (v25 > content)
    {
      LODWORD(next) = -1;
    }

    result = v25 < content ? 1 : next;
    if (v25 == content)
    {
LABEL_64:
      result = 1;
      while (1)
      {
        parent = parent->next;
        if (!parent)
        {
          break;
        }

        if (parent == v8)
        {
          return result;
        }
      }

      return -1;
    }
  }

  return result;
}

void xmlXPathNodeSetSort(xmlNodeSetPtr set)
{
  if (set)
  {
    libxml_domnode_tim_sort(set->nodeTab, set->nodeNr);
  }
}

void xmlXPathNodeSetFreeNs(xmlNsPtr ns)
{
  if (ns && ns->type == XML_NAMESPACE_DECL && ns->next && ns->next->type != XML_NAMESPACE_DECL)
  {
    href = ns->href;
    if (href)
    {
      free(href);
    }

    prefix = ns->prefix;
    if (prefix)
    {
      free(prefix);
    }

    free(ns);
  }
}

void *xmlXPathNodeSetDupNs(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 8) != 18)
  {
    return 0;
  }

  if (!a1 || *(a1 + 8) == 18)
  {
    return a2;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
  v4 = v6;
  if (v6)
  {
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    *(v6 + 2) = 18;
    v7 = *(a2 + 16);
    if (v7)
    {
      v4[2] = xmlStrdup(v7);
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v4[3] = xmlStrdup(v8);
    }

    *v4 = a1;
  }

  else
  {
    xmlXPathErrMemory(0, "duplicating namespace\n");
  }

  return v4;
}

int xmlXPathNodeSetContains(xmlNodeSetPtr cur, xmlNodePtr val)
{
  result = 0;
  if (cur && val)
  {
    if (val->type == XML_NAMESPACE_DECL)
    {
      nodeNr = cur->nodeNr;
      if (cur->nodeNr >= 1)
      {
        v6 = 0;
        do
        {
          v7 = cur->nodeTab[v6];
          if (v7->type == XML_NAMESPACE_DECL)
          {
            if (v7 == val)
            {
              return 1;
            }

            if (val->_private && v7->_private == val->_private)
            {
              if (xmlStrEqual(val->children, v7->children))
              {
                return 1;
              }

              nodeNr = cur->nodeNr;
            }
          }

          ++v6;
        }

        while (v6 < nodeNr);
      }

      return 0;
    }

    v8 = cur->nodeNr;
    if (v8 < 1)
    {
      return 0;
    }

    for (i = cur->nodeTab; *i != val; ++i)
    {
      if (!--v8)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

int xmlXPathNodeSetAddNs(xmlNodeSetPtr cur, xmlNodePtr node, xmlNsPtr ns)
{
  result = -1;
  if (node && cur && ns && ns->type == XML_NAMESPACE_DECL && node->type == XML_ELEMENT_NODE)
  {
    nodeNr = cur->nodeNr;
    if (cur->nodeNr >= 1)
    {
      for (i = 0; i < nodeNr; ++i)
      {
        v9 = cur->nodeTab[i];
        if (v9 && v9->type == XML_NAMESPACE_DECL && v9->_private == node)
        {
          if (xmlStrEqual(ns->prefix, v9->children))
          {
            return 0;
          }

          nodeNr = cur->nodeNr;
        }
      }
    }

    if (nodeNr >= cur->nodeMax && (xmlXPathNodeSetGrow(cur) & 0x80000000) != 0)
    {
      return -1;
    }

    v10 = xmlXPathNodeSetDupNs(node, ns);
    if (!v10)
    {
      return -1;
    }

    else
    {
      v11 = v10;
      result = 0;
      nodeTab = cur->nodeTab;
      v13 = cur->nodeNr;
      cur->nodeNr = v13 + 1;
      nodeTab[v13] = v11;
    }
  }

  return result;
}

int xmlXPathNodeSetAdd(xmlNodeSetPtr cur, xmlNodePtr val)
{
  result = -1;
  if (cur)
  {
    v4 = val;
    if (val)
    {
      if (cur->nodeNr < 1)
      {
LABEL_7:
        if (cur->nodeNr >= cur->nodeMax && (xmlXPathNodeSetGrow(cur) & 0x80000000) != 0)
        {
          return -1;
        }

        if (v4->type == XML_NAMESPACE_DECL && (v4 = xmlXPathNodeSetDupNs(v4->_private, v4)) == 0)
        {
          return -1;
        }

        else
        {
          result = 0;
          nodeTab = cur->nodeTab;
          nodeNr = cur->nodeNr;
          cur->nodeNr = nodeNr + 1;
          nodeTab[nodeNr] = v4;
        }
      }

      else
      {
        v5 = cur->nodeTab;
        v6 = cur->nodeNr;
        while (*v5 != val)
        {
          ++v5;
          if (!--v6)
          {
            goto LABEL_7;
          }
        }

        return 0;
      }
    }
  }

  return result;
}

xmlNodeSetPtr xmlXPathNodeSetMerge(xmlNodeSetPtr val1, xmlNodeSetPtr val2)
{
  v2 = val1;
  if (val2)
  {
    if ((val1 || (v2 = xmlXPathNodeSetCreate(0)) != 0) && val2->nodeNr >= 1)
    {
      v4 = 0;
      nodeNr = v2->nodeNr;
      do
      {
        v6 = val2->nodeTab[v4];
        if (nodeNr < 1)
        {
LABEL_14:
          if (v2->nodeNr >= v2->nodeMax && (xmlXPathNodeSetGrow(v2) & 0x80000000) != 0 || v6->type == XML_NAMESPACE_DECL && (v6 = xmlXPathNodeSetDupNs(v6->_private, v6)) == 0)
          {
            xmlXPathFreeNodeSet(v2);
            return 0;
          }

          nodeTab = v2->nodeTab;
          v10 = v2->nodeNr;
          v2->nodeNr = v10 + 1;
          nodeTab[v10] = v6;
        }

        else
        {
          v7 = 0;
          while (1)
          {
            v8 = v2->nodeTab[v7];
            if (v8 == v6 || v8->type == XML_NAMESPACE_DECL && v6->type == XML_NAMESPACE_DECL && v8->_private == v6->_private && xmlStrEqual(v8->children, v6->children))
            {
              break;
            }

            if (nodeNr == ++v7)
            {
              goto LABEL_14;
            }
          }
        }

        ++v4;
      }

      while (v4 < val2->nodeNr);
    }
  }

  return v2;
}

void xmlXPathNodeSetDel(xmlNodeSetPtr cur, xmlNodePtr val)
{
  if (cur)
  {
    if (val)
    {
      nodeNr = cur->nodeNr;
      if (nodeNr >= 1)
      {
        v4 = 0;
        nodeTab = cur->nodeTab;
        while (nodeTab[v4] != val)
        {
          if (nodeNr == ++v4)
          {
            return;
          }
        }

        v6 = nodeTab[v4];
        if (v6 && v6->type == XML_NAMESPACE_DECL)
        {
          xmlXPathNodeSetFreeNs(v6);
          LODWORD(nodeNr) = cur->nodeNr;
        }

        v7 = (nodeNr - 1);
        cur->nodeNr = v7;
        if (v7 > v4)
        {
          do
          {
            cur->nodeTab[v4] = cur->nodeTab[v4 + 1];
            ++v4;
          }

          while (v7 != v4);
        }

        cur->nodeTab[v7] = 0;
      }
    }
  }
}

void xmlXPathNodeSetRemove(xmlNodeSetPtr cur, int val)
{
  if (cur)
  {
    nodeNr = cur->nodeNr;
    if (cur->nodeNr > val)
    {
      v5 = cur->nodeTab[val];
      if (v5 && v5->type == XML_NAMESPACE_DECL)
      {
        xmlXPathNodeSetFreeNs(v5);
        nodeNr = cur->nodeNr;
      }

      v6 = nodeNr - 1;
      cur->nodeNr = nodeNr - 1;
      v7 = nodeNr - 1;
      if (v6 > val)
      {
        v8 = val;
        do
        {
          cur->nodeTab[v8] = cur->nodeTab[v8 + 1];
          ++v8;
        }

        while (v7 != v8);
      }

      cur->nodeTab[v7] = 0;
    }
  }
}

xmlXPathObjectPtr xmlXPathNewValueTree(xmlNodePtr val)
{
  v1 = xmlXPathNewNodeSet(val);
  v2 = v1;
  if (v1)
  {
    v1->type = XPATH_XSLT_TREE;
  }

  else
  {
    xmlXPathErrMemory(0, "creating result value tree\n");
  }

  return v2;
}

xmlXPathObjectPtr xmlXPathNewNodeSetList(xmlNodeSetPtr val)
{
  if (!val)
  {
    return 0;
  }

  nodeTab = val->nodeTab;
  if (nodeTab)
  {
    v3 = xmlXPathNewNodeSet(*nodeTab);
    if (v3 && val->nodeNr >= 2)
    {
      v4 = 1;
      do
      {
        if (xmlXPathNodeSetAddUnique(v3->nodesetval, val->nodeTab[v4]) < 0)
        {
          break;
        }

        ++v4;
      }

      while (v4 < val->nodeNr);
    }

    return v3;
  }

  return xmlXPathNewNodeSet(0);
}

void xmlXPathFreeNodeSetList(xmlXPathObjectPtr obj)
{
  if (obj)
  {
    free(obj);
  }
}

xmlNodeSetPtr xmlXPathDifference(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  if (nodes2 && nodes2->nodeNr && nodes2->nodeTab)
  {
    v4 = xmlXPathNodeSetCreate(0);
    if (nodes1)
    {
      nodeNr = nodes1->nodeNr;
      if (nodes1->nodeNr)
      {
        if (nodes1->nodeTab && nodeNr >= 1)
        {
          v6 = 0;
          for (i = nodes1->nodeNr; ; i = nodes1->nodeNr)
          {
            v8 = v6 >= i ? 0 : nodes1->nodeTab[v6];
            if (!xmlXPathNodeSetContains(nodes2, v8) && xmlXPathNodeSetAddUnique(v4, v8) < 0)
            {
              break;
            }

            if (++v6 >= nodeNr)
            {
              break;
            }
          }
        }
      }
    }

    return v4;
  }

  return nodes1;
}

xmlNodeSetPtr xmlXPathIntersection(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  v4 = xmlXPathNodeSetCreate(0);
  v5 = v4;
  if (nodes1)
  {
    if (v4)
    {
      nodeNr = nodes1->nodeNr;
      if (nodes1->nodeNr)
      {
        if (nodes2 && nodes1->nodeTab && nodes2->nodeNr && nodes2->nodeTab && nodeNr >= 1)
        {
          v7 = 0;
          for (i = nodes1->nodeNr; ; i = nodes1->nodeNr)
          {
            v9 = v7 >= i ? 0 : nodes1->nodeTab[v7];
            if (xmlXPathNodeSetContains(nodes2, v9) && xmlXPathNodeSetAddUnique(v5, v9) < 0)
            {
              break;
            }

            if (++v7 >= nodeNr)
            {
              break;
            }
          }
        }
      }
    }
  }

  return v5;
}

xmlNodeSetPtr xmlXPathDistinctSorted(xmlNodeSetPtr nodes)
{
  if (!nodes)
  {
    return 0;
  }

  if (!nodes->nodeNr || !nodes->nodeTab)
  {
    return nodes;
  }

  v2 = xmlXPathNodeSetCreate(0);
  if (v2)
  {
    nodeNr = nodes->nodeNr;
    v4 = xmlHashCreate(nodes->nodeNr);
    if (nodeNr >= 1)
    {
      v5 = 0;
      do
      {
        if (v5 >= nodes->nodeNr)
        {
          v6 = 0;
        }

        else
        {
          v6 = nodes->nodeTab[v5];
        }

        Content = xmlNodeGetContent(v6);
        if (!Content)
        {
          Content = xmlStrdup("");
        }

        if (xmlHashLookup(v4, Content))
        {
          free(Content);
        }

        else
        {
          xmlHashAddEntry(v4, Content, Content);
          if (xmlXPathNodeSetAddUnique(v2, v6) < 0)
          {
            break;
          }
        }

        ++v5;
      }

      while (v5 < nodeNr);
    }

    xmlHashFree(v4, xmlHashDefaultDeallocator);
  }

  return v2;
}

xmlChar *__cdecl xmlXPathCastNodeToString(xmlNodePtr node)
{
  result = xmlNodeGetContent(node);
  if (!result)
  {

    return xmlStrdup("");
  }

  return result;
}

xmlNodeSetPtr xmlXPathDistinct(xmlNodeSetPtr nodes)
{
  if (!nodes)
  {
    return nodes;
  }

  nodeNr = nodes->nodeNr;
  if (!nodeNr)
  {
    return nodes;
  }

  nodeTab = nodes->nodeTab;
  if (!nodeTab)
  {
    return nodes;
  }

  libxml_domnode_tim_sort(nodeTab, nodeNr);

  return xmlXPathDistinctSorted(nodes);
}

int xmlXPathHasSameNodes(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  if (nodes1)
  {
    v2 = nodes1;
    nodeNr = nodes1->nodeNr;
    if (!nodeNr)
    {
      goto LABEL_15;
    }

    LODWORD(nodes1) = 0;
    if (!nodes2 || !v2->nodeTab)
    {
      return nodes1;
    }

    if (!nodes2->nodeNr)
    {
LABEL_15:
      LODWORD(nodes1) = 0;
      return nodes1;
    }

    LODWORD(nodes1) = 0;
    if (nodes2->nodeTab && nodeNr >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = v5 >= v2->nodeNr ? 0 : v2->nodeTab[v5];
        LODWORD(nodes1) = xmlXPathNodeSetContains(nodes2, v6);
        if (nodes1)
        {
          break;
        }

        if (nodeNr == ++v5)
        {
          return nodes1;
        }
      }

      LODWORD(nodes1) = 1;
    }
  }

  return nodes1;
}

xmlNodeSetPtr xmlXPathNodeLeadingSorted(xmlNodeSetPtr nodes, xmlNodePtr node)
{
  if (node)
  {
    v4 = xmlXPathNodeSetCreate(0);
    if (v4)
    {
      v5 = v4;
      if (nodes)
      {
        if (nodes->nodeNr)
        {
          if (nodes->nodeTab)
          {
            if (xmlXPathNodeSetContains(nodes, node))
            {
              nodeNr = nodes->nodeNr;
              if (nodeNr >= 1)
              {
                v7 = 0;
                v8 = nodeNr - 1;
                do
                {
                  if (v7 >= nodes->nodeNr)
                  {
                    v9 = 0;
                  }

                  else
                  {
                    v9 = nodes->nodeTab[v7];
                  }

                  if (v9 == node)
                  {
                    break;
                  }

                  if (xmlXPathNodeSetAddUnique(v5, v9) < 0)
                  {
                    break;
                  }
                }

                while (v8 != v7++);
              }
            }
          }
        }
      }

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return nodes;
}

xmlNodeSetPtr xmlXPathNodeLeading(xmlNodeSetPtr nodes, xmlNodePtr node)
{
  if (nodes)
  {
    libxml_domnode_tim_sort(nodes->nodeTab, nodes->nodeNr);
  }

  return xmlXPathNodeLeadingSorted(nodes, node);
}

xmlNodeSetPtr xmlXPathLeadingSorted(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  if (nodes2)
  {
    if (nodes2->nodeNr)
    {
      nodeTab = nodes2->nodeTab;
      if (nodeTab)
      {
        if (nodes2->nodeNr < 2)
        {
          v3 = 0;
        }

        else
        {
          v3 = nodeTab[1];
        }

        return xmlXPathNodeLeadingSorted(nodes1, v3);
      }
    }
  }

  return nodes1;
}

xmlNodeSetPtr xmlXPathLeading(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  v2 = nodes1;
  if (nodes2 && nodes2->nodeNr && nodes2->nodeTab)
  {
    if (nodes1 && (nodeNr = nodes1->nodeNr, nodeNr) && (nodeTab = nodes1->nodeTab) != 0)
    {
      libxml_domnode_tim_sort(nodeTab, nodeNr);
      libxml_domnode_tim_sort(nodes2->nodeTab, nodes2->nodeNr);
      if (nodes2->nodeNr < 2)
      {
        v6 = 0;
      }

      else
      {
        v6 = *(nodes2->nodeTab + 1);
      }

      return xmlXPathNodeLeadingSorted(v2, v6);
    }

    else
    {

      return xmlXPathNodeSetCreate(0);
    }
  }

  return nodes1;
}

xmlNodeSetPtr xmlXPathNodeTrailingSorted(xmlNodeSetPtr nodes, xmlNodePtr node)
{
  if (!node)
  {
    return nodes;
  }

  v4 = xmlXPathNodeSetCreate(0);
  if (v4 && nodes && nodes->nodeNr && nodes->nodeTab && xmlXPathNodeSetContains(nodes, node))
  {
    nodeNr = nodes->nodeNr;
    do
    {
      if (nodeNr < 1)
      {
        break;
      }

      v6 = nodes->nodeNr >= nodeNr ? nodes->nodeTab[nodeNr - 1] : 0;
      if (v6 == node)
      {
        break;
      }

      --nodeNr;
    }

    while ((xmlXPathNodeSetAddUnique(v4, v6) & 0x80000000) == 0);
    libxml_domnode_tim_sort(v4->nodeTab, v4->nodeNr);
  }

  return v4;
}

xmlNodeSetPtr xmlXPathNodeTrailing(xmlNodeSetPtr nodes, xmlNodePtr node)
{
  if (nodes)
  {
    libxml_domnode_tim_sort(nodes->nodeTab, nodes->nodeNr);
  }

  return xmlXPathNodeTrailingSorted(nodes, node);
}

xmlNodeSetPtr xmlXPathTrailingSorted(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  if (nodes2)
  {
    if (nodes2->nodeNr)
    {
      nodeTab = nodes2->nodeTab;
      if (nodeTab)
      {
        if (nodes2->nodeNr < 1)
        {
          v3 = 0;
        }

        else
        {
          v3 = *nodeTab;
        }

        return xmlXPathNodeTrailingSorted(nodes1, v3);
      }
    }
  }

  return nodes1;
}

xmlNodeSetPtr xmlXPathTrailing(xmlNodeSetPtr nodes1, xmlNodeSetPtr nodes2)
{
  v2 = nodes1;
  if (nodes2 && nodes2->nodeNr && nodes2->nodeTab)
  {
    if (nodes1 && (nodeNr = nodes1->nodeNr, nodeNr) && (nodeTab = nodes1->nodeTab) != 0)
    {
      libxml_domnode_tim_sort(nodeTab, nodeNr);
      libxml_domnode_tim_sort(nodes2->nodeTab, nodes2->nodeNr);
      if (nodes2->nodeNr < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = *nodes2->nodeTab;
      }

      return xmlXPathNodeTrailingSorted(v2, v6);
    }

    else
    {

      return xmlXPathNodeSetCreate(0);
    }
  }

  return nodes1;
}

void xmlXPathRegisterFuncLookup(xmlXPathContextPtr ctxt, xmlXPathFuncLookupFunc f, void *funcCtxt)
{
  if (ctxt)
  {
    ctxt->funcLookupFunc = f;
    ctxt->funcLookupData = funcCtxt;
  }
}

void xmlXPathRegisteredFuncsCleanup(xmlXPathContextPtr ctxt)
{
  if (ctxt)
  {
    xmlHashFree(ctxt->funcHash, 0);
    ctxt->funcHash = 0;
  }
}

int xmlXPathRegisterVariableNS(xmlXPathContextPtr ctxt, const xmlChar *name, const xmlChar *ns_uri, xmlXPathObjectPtr value)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!name)
  {
    return -1;
  }

  varHash = ctxt->varHash;
  if (!varHash)
  {
    varHash = xmlHashCreate(0);
    ctxt->varHash = varHash;
    if (!varHash)
    {
      return -1;
    }
  }

  if (value)
  {

    return xmlHashUpdateEntry2(varHash, name, ns_uri, value, xmlXPathFreeObjectEntry);
  }

  else
  {

    return xmlHashRemoveEntry2(varHash, name, ns_uri, xmlXPathFreeObjectEntry);
  }
}

void xmlXPathRegisterVariableLookup(xmlXPathContextPtr ctxt, xmlXPathVariableLookupFunc f, void *data)
{
  if (ctxt)
  {
    ctxt->varLookupFunc = f;
    ctxt->varLookupData = data;
  }
}

xmlXPathObjectPtr xmlXPathVariableLookup(xmlXPathObjectPtr ctxt, const xmlChar *name)
{
  if (ctxt)
  {
    v2 = *&ctxt[2].type;
    if (v2)
    {
      return v2(ctxt[2].nodesetval, name, 0);
    }

    else
    {
      return xmlXPathVariableLookupNS(ctxt, name, 0);
    }
  }

  return ctxt;
}

xmlXPathObjectPtr xmlXPathVariableLookupNS(xmlXPathObjectPtr ctxt, const xmlChar *name, const xmlChar *ns_uri)
{
  if (ctxt)
  {
    v5 = ctxt;
    v6 = *&ctxt[2].type;
    if (!v6 || (ctxt = v6(ctxt[2].nodesetval, name, ns_uri)) == 0)
    {
      ctxt = 0;
      if (name)
      {
        if (*&v5->floatval)
        {
          v7 = xmlHashLookup2(*&v5->floatval, name, ns_uri);

          return xmlXPathCacheObjectCopy(v5, v7);
        }
      }
    }
  }

  return ctxt;
}

void xmlXPathRegisteredVariablesCleanup(xmlXPathContextPtr ctxt)
{
  if (ctxt)
  {
    xmlHashFree(ctxt->varHash, xmlXPathFreeObjectEntry);
    ctxt->varHash = 0;
  }
}

void xmlXPathRegisteredNsCleanup(xmlXPathContextPtr ctxt)
{
  if (ctxt)
  {
    xmlHashFree(ctxt->nsHash, xmlHashDefaultDeallocator);
    ctxt->nsHash = 0;
  }
}

xmlXPathObjectPtr xmlXPathNewCString(const char *val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 4;
    *(v2 + 4) = xmlStrdup(val);
  }

  else
  {
    xmlXPathErrMemory(0, "creating string object\n");
  }

  return v3;
}

xmlXPathObjectPtr xmlXPathWrapExternal(void *val)
{
  v2 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 36) = 0u;
    *(v2 + 17) = 0;
    *(v2 + 52) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 4) = 0u;
    *v2 = 8;
    *(v2 + 5) = val;
  }

  else
  {
    xmlXPathErrMemory(0, "creating user object\n");
  }

  return v3;
}

xmlChar *__cdecl xmlXPathCastBooleanToString(int val)
{
  if (val)
  {
    return xmlStrdup("true");
  }

  else
  {
    return xmlStrdup("false");
  }
}

xmlChar *__cdecl xmlXPathCastNumberToString(double val)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = fabs(val);
  if (val > 0.0)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (v2 != INFINITY)
  {
    v3 = 0;
  }

  if (v3 == -1)
  {
    v6 = *MEMORY[0x1E69E9840];
    v5 = "-Infinity";
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v4 = *MEMORY[0x1E69E9840];
    v5 = "Infinity";
LABEL_12:

    return xmlStrdup(v5);
  }

  if (val == 0.0)
  {
    v7 = *MEMORY[0x1E69E9840];
    v5 = "0";
    goto LABEL_12;
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *cur = 0u;
  v28 = 0u;
  if (val > 0.0 && v2 == INFINITY)
  {
    strcpy(cur, "Infinity");
  }

  else if (val > -2147483650.0 && (val < 2147483650.0 ? (v9 = val == val) : (v9 = 0), v9))
  {
    *__str = 0;
    v35 = 0;
    memset(v36, 0, 14);
    if (val)
    {
      snprintf(__str, 0x1DuLL, "%d", val);
      v21 = __str[0];
      if (__str[0])
      {
        v22 = cur;
        v23 = 1;
        v24 = cur;
        do
        {
          *v24++ = v21;
          v21 = __str[v23];
          ++v22;
          if (!v21)
          {
            break;
          }
        }

        while (v23++ < 99);
      }

      else
      {
        v22 = cur;
        v24 = cur;
      }
    }

    else
    {
      v22 = &cur[1];
      cur[0] = 48;
      v24 = &cur[1];
    }

    v24[-(v22 - cur > 98)] = 0;
  }

  else
  {
    *__str = 0;
    v35 = 0;
    LODWORD(v36[1]) = 0;
    v36[0] = 0;
    if (v2 > 1000000000.0 || v2 < 0.00001)
    {
      v12 = snprintf(__str, 0x1CuLL, "%*.*e", 21, 14, val);
      if (v12 >= 1)
      {
        while (__str[v12] != 101)
        {
          v13 = __OFSUB__(v12--, 1);
          if ((v12 < 0) ^ v13 | (v12 == 0))
          {
            v12 = 0;
            break;
          }
        }
      }
    }

    else
    {
      v10 = log10(v2);
      if (v10 > 0)
      {
        v11 = 14;
      }

      else
      {
        v11 = 15;
      }

      v12 = snprintf(__str, 0x1CuLL, "%0.*f", v11 - v10, val);
    }

    while (__str[0] == 32)
    {
      v14 = &__str[1];
      do
      {
        v15 = *v14;
        *(v14++ - 1) = v15;
      }

      while (v15);
      --v12;
    }

    v16 = v12;
    v17 = &__str[v12];
    do
    {
      v19 = *--v17;
      v18 = v19;
    }

    while (v19 == 48);
    if (v18 != 46)
    {
      ++v17;
    }

    do
    {
      v20 = __str[v16];
      *v17++ = v20;
      ++v16;
    }

    while (v20);
    strlen(__str);
    __memmove_chk();
  }

  HIBYTE(v33) = 0;
  result = xmlStrdup(cur);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

xmlXPathObjectPtr xmlXPathConvertString(xmlXPathObjectPtr val)
{
  if (!val)
  {
LABEL_21:

    return xmlXPathNewCString("");
  }

  v1 = val;
  type = val->type;
  if (val->type > XPATH_NUMBER)
  {
    if (type - 5 < 4)
    {
      v3 = *__xmlGenericError();
      v4 = __xmlGenericErrorContext();
      v3(*v4, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 5656);
LABEL_5:
      xmlXPathFreeObject(v1);
      goto LABEL_21;
    }

    if (type == XPATH_STRING)
    {
      return val;
    }

    if (type != XPATH_XSLT_TREE)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  switch(type)
  {
    case XPATH_NODESET:
LABEL_12:
      v5 = xmlXPathCastNodeSetToString(val->nodesetval);
      break;
    case XPATH_BOOLEAN:
      if (val->BOOLval)
      {
        v6 = "true";
      }

      else
      {
        v6 = "false";
      }

      v5 = xmlStrdup(v6);
      break;
    case XPATH_NUMBER:
      v5 = xmlXPathCastNumberToString(val->floatval);
      break;
    default:
      goto LABEL_5;
  }

  v7 = v5;
  xmlXPathFreeObject(v1);
  if (!v7)
  {
    goto LABEL_21;
  }

  return xmlXPathWrapString(v7);
}

double xmlXPathCastBooleanToNumber(int val)
{
  result = 1.0;
  if (!val)
  {
    return 0.0;
  }

  return result;
}

double xmlXPathStringEvalNumber(const xmlChar *str)
{
  if (!str)
  {
    return 0.0;
  }

  while (1)
  {
    v1 = *str;
    if (v1 > 0x2E)
    {
      break;
    }

    if (((1 << v1) & 0x100002600) == 0)
    {
      if (v1 == 46)
      {
        goto LABEL_10;
      }

      break;
    }

    ++str;
  }

  if (v1 != 45 && (v1 - 48) >= 0xA)
  {
    return xmlXPathNAN;
  }

LABEL_10:
  v3 = v1 == 45;
  if (v1 == 45)
  {
    v4 = str + 1;
  }

  else
  {
    v4 = str;
  }

  v5 = *v4;
  v6 = v5 - 48;
  v7 = 0.0;
  if ((v5 - 48) <= 9)
  {
    do
    {
      v7 = v7 * 10.0 + (v5 & 0xF);
      v5 = str[++v3];
    }

    while ((v5 - 48) < 0xA);
    v4 = &str[v3];
  }

  if (v5 == 46)
  {
    v10 = v4[1];
    v9 = v4 + 1;
    v8 = v10;
    if (v10 >= 0x30)
    {
      if (v6 >= 0xAu && v8 >= 0x3A)
      {
        return xmlXPathNAN;
      }

      if (v8 == 48)
      {
        v12 = 0;
        do
        {
          ++v12;
          v13 = *++v9;
          v8 = v13;
        }

        while (v13 == 48);
        goto LABEL_28;
      }
    }

    else if (v6 >= 0xAu)
    {
      return xmlXPathNAN;
    }

    v12 = 0;
LABEL_28:
    v14 = 0.0;
    if (v8 - 48 <= 9)
    {
      v15 = v12 + 20;
      do
      {
        v14 = (v8 - 48) + v14 * 10.0;
        ++v12;
        v16 = *++v9;
        v8 = v16;
      }

      while (v16 - 48 <= 9 && v12 < v15);
    }

    v4 = v9 - 1;
    v18 = v14 / __exp10(v12);
    do
    {
      v19 = *++v4;
      v5 = v19;
    }

    while ((v19 - 48) < 0xA);
    v7 = v7 + v18;
  }

  if ((v5 | 0x20) == 0x65)
  {
    v20 = v4 + 2;
    v23 = v4[1];
    v22 = v4 + 1;
    v21 = v23;
    v24 = v23 == 45;
    if (v23 == 45)
    {
      v25 = v20;
    }

    else
    {
      v25 = v22;
    }

    v26 = v24;
    if (v21 == 43)
    {
      v4 = v20;
    }

    else
    {
      v4 = v25;
    }

    if (v21 == 43)
    {
      v27 = 0;
    }

    else
    {
      v27 = v26;
    }

    v5 = *v4;
    if ((v5 - 48) > 9)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = 10 * v28 + v5 - 48;
        if (v28 < 1000000)
        {
          v28 = v29;
        }

        v30 = *++v4;
        LOBYTE(v5) = v30;
      }

      while ((v30 - 48) < 0xA);
    }
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v31 = (v4 + 1);
  while (v5 <= 0x20u)
  {
    if (((1 << v5) & 0x100002600) == 0)
    {
      if (v5)
      {
        return xmlXPathNAN;
      }

      if (v1 == 45)
      {
        v7 = -v7;
      }

      if (v27)
      {
        v33 = -v28;
      }

      else
      {
        v33 = v28;
      }

      return v7 * __exp10(v33);
    }

    v32 = *v31++;
    LOBYTE(v5) = v32;
  }

  return xmlXPathNAN;
}

double xmlXPathCastNodeToNumber(xmlNodePtr node)
{
  if (!node)
  {
    return xmlXPathNAN;
  }

  Content = xmlNodeGetContent(node);
  if (!Content)
  {
    Content = xmlStrdup("");
    if (!Content)
    {
      return xmlXPathNAN;
    }
  }

  v2 = Content;
  v3 = xmlXPathStringEvalNumber(Content);
  free(v2);
  return v3;
}

double xmlXPathCastNodeSetToNumber(xmlNodeSetPtr ns)
{
  if (!ns)
  {
    return xmlXPathNAN;
  }

  v1 = xmlXPathCastNodeSetToString(ns);
  v2 = xmlXPathStringEvalNumber(v1);
  free(v1);
  return v2;
}

xmlXPathObjectPtr xmlXPathConvertNumber(xmlXPathObjectPtr val)
{
  if (val)
  {
    v1 = val;
    if (val->type != XPATH_NUMBER)
    {
      v2 = xmlXPathCastToNumber(val);
      v3 = xmlXPathNewFloat(v2);
      xmlXPathFreeObject(v1);
      return v3;
    }
  }

  else
  {

    return xmlXPathNewFloat(0.0);
  }

  return val;
}

int xmlXPathCastStringToBoolean(const xmlChar *val)
{
  if (val)
  {
    LODWORD(val) = xmlStrlen(val) != 0;
  }

  return val;
}

int xmlXPathCastNodeSetToBoolean(xmlNodeSetPtr ns)
{
  if (ns)
  {
    LODWORD(ns) = ns->nodeNr != 0;
  }

  return ns;
}

xmlXPathObjectPtr xmlXPathConvertBoolean(xmlXPathObjectPtr val)
{
  if (val)
  {
    v1 = val;
    if (val->type != XPATH_BOOLEAN)
    {
      v2 = xmlXPathCastToBoolean(val);
      v3 = xmlXPathNewBoolean(v2);
      xmlXPathFreeObject(v1);
      return v3;
    }
  }

  else
  {

    return xmlXPathNewBoolean(0);
  }

  return val;
}

uint64_t xmlXPathEqualNodeSets(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if ((*a1 | 8) != 9)
  {
    return 0;
  }

  if ((*a2 | 8) != 9)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = *v3;
  v6 = v5 < 1 || v4 == 0;
  if (v6 || *v4 < 1)
  {
    return 0;
  }

  if (!a3)
  {
    v23 = 0;
    do
    {
      v24 = *v4;
      v25 = *(v4 + 1);
      do
      {
        if (*(*(v3 + 1) + 8 * v23) == *v25)
        {
          return 1;
        }

        ++v25;
        --v24;
      }

      while (v24);
      ++v23;
    }

    while (v23 != v5);
  }

  v8 = malloc_type_malloc(8 * v5, 0x10040436913F5uLL);
  if (!v8)
  {
    xmlXPathErrMemory(0, "comparing nodesets\n");
    return 0;
  }

  v9 = v8;
  v10 = malloc_type_malloc(4 * *v3, 0x100004052888210uLL);
  if (!v10)
  {
    xmlXPathErrMemory(0, "comparing nodesets\n");
LABEL_42:
    v26 = v9;
LABEL_43:
    free(v26);
    return 0;
  }

  v11 = v10;
  bzero(v9, 8 * *v3);
  v12 = malloc_type_malloc(8 * *v4, 0x10040436913F5uLL);
  if (!v12)
  {
    xmlXPathErrMemory(0, "comparing nodesets\n");
    free(v11);
    goto LABEL_42;
  }

  v13 = v12;
  v14 = malloc_type_malloc(4 * *v4, 0x100004052888210uLL);
  if (!v14)
  {
    xmlXPathErrMemory(0, "comparing nodesets\n");
    free(v11);
    free(v9);
    v26 = v13;
    goto LABEL_43;
  }

  v15 = v14;
  bzero(v13, 8 * *v4);
  if (*v3 < 1)
  {
    v28 = 0;
    goto LABEL_55;
  }

  v16 = 0;
  while (1)
  {
    *(v11 + v16) = xmlXPathNodeValHash(*(*(v3 + 1) + 8 * v16));
    if (*v4 >= 1)
    {
      break;
    }

LABEL_30:
    ++v16;
    v22 = *v3;
    if (v16 >= v22)
    {
      v28 = 0;
      goto LABEL_50;
    }
  }

  v17 = 0;
  while (1)
  {
    if (v16)
    {
      v18 = v15[v17];
    }

    else
    {
      v18 = xmlXPathNodeValHash(*(*(v4 + 1) + 8 * v17));
      v15[v17] = v18;
    }

    if (*(v11 + v16) != v18)
    {
      break;
    }

    Content = *(v9 + v16);
    if (!Content)
    {
      Content = xmlNodeGetContent(*(*(v3 + 1) + 8 * v16));
      *(v9 + v16) = Content;
    }

    v20 = *(v13 + v17);
    if (!v20)
    {
      v20 = xmlNodeGetContent(*(*(v4 + 1) + 8 * v17));
      *(v13 + v17) = v20;
      Content = *(v9 + v16);
    }

    v21 = xmlStrEqual(Content, v20);
    if (v21 != a3)
    {
      v28 = v21 ^ a3;
      goto LABEL_49;
    }

LABEL_29:
    if (++v17 >= *v4)
    {
      goto LABEL_30;
    }
  }

  if (!a3)
  {
    goto LABEL_29;
  }

  v28 = 1;
LABEL_49:
  LODWORD(v22) = *v3;
LABEL_50:
  if (v22 >= 1)
  {
    v29 = 0;
    do
    {
      v30 = *(v9 + v29);
      if (v30)
      {
        free(v30);
        LODWORD(v22) = *v3;
      }

      ++v29;
    }

    while (v29 < v22);
  }

LABEL_55:
  v31 = *v4;
  if (*v4 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = *(v13 + v32);
      if (v33)
      {
        free(v33);
        v31 = *v4;
      }

      ++v32;
    }

    while (v32 < v31);
  }

  free(v9);
  free(v13);
  free(v11);
  free(v15);
  return v28;
}

uint64_t xmlXPathEqualNodeSetFloat(uint64_t a1, uint64_t a2, int a3, double a4)
{
  if ((*a2 | 8) != 9)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if (!v4 || *v4 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    Content = xmlNodeGetContent(*(*(v4 + 1) + 8 * v8));
    if (Content || (Content = xmlStrdup("")) != 0)
    {
      v11 = Content;
      v12 = xmlXPathCacheNewString(*(a1 + 24), Content);
      valuePush(a1, v12);
      free(v11);
      xmlXPathNumberFunction(a1, 1);
      v13 = *(a1 + 40);
      if (v13 < 1)
      {
        v17 = 0;
      }

      else
      {
        v14 = *(a1 + 48);
        v15 = v13 - 1;
        *(a1 + 40) = v13 - 1;
        v16 = v13 == 1 ? 0 : *(v14 + 8 * v13 - 16);
        *(a1 + 32) = v16;
        v17 = *(v14 + 8 * v15);
        *(v14 + 8 * v15) = 0;
      }

      v18 = *(v17 + 24);
      xmlXPathReleaseObject(*(a1 + 24), v17);
      v19 = v18 != a4;
      if (a3)
      {
        v19 = v18 == a4;
      }

      if (!v19)
      {
        break;
      }
    }

    if (++v8 >= *v4)
    {
      return v9;
    }
  }

  return 1;
}

int xmlXPathNotEqualValues(xmlXPathParserContextPtr ctxt)
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
  if (valueNr != 1)
  {
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
      xmlXPathReleaseObject(ctxt->context, v7);
      return 0;
    }

    type = v5->type;
    if ((v5->type | 8) == 9)
    {
      v15 = *v7;
    }

    else
    {
      v15 = *v7;
      if ((*v7 | 8) != 9)
      {
        return xmlXPathEqualValuesCommon(ctxt, v7, v5) == 0;
      }
    }

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

          v8 = p_nodeNr != *(v18 + 16);
          goto LABEL_50;
        }

        if (type != 3)
        {
LABEL_50:
          xmlXPathReleaseObject(ctxt->context, v17);
          xmlXPathReleaseObject(ctxt->context, v18);
          return v8;
        }

        v21 = xmlXPathEqualNodeSetFloat(ctxt, v17, 1, *(v18 + 24));
LABEL_49:
        v8 = v21;
        goto LABEL_50;
      }
    }

    else
    {
      if ((type - 5) < 4)
      {
        v19 = *__xmlGenericError();
        v20 = __xmlGenericErrorContext();
        v19(*v20, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 7142);
        v8 = 0;
        goto LABEL_50;
      }

      if (type == 4)
      {
        v21 = xmlXPathEqualNodeSetString(v17, *(v18 + 32), 1);
        goto LABEL_49;
      }

      if (type != 9)
      {
        goto LABEL_50;
      }
    }

    v21 = xmlXPathEqualNodeSets(v17, v18, 1u);
    goto LABEL_49;
  }

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

int xmlXPathCompareValues(xmlXPathParserContextPtr ctxt, int inf, int strict)
{
  if (!ctxt || !ctxt->context)
  {
    return 0;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    v7 = 0;
    goto LABEL_7;
  }

  valueTab = ctxt->valueTab;
  v6 = (valueNr - 1);
  ctxt->valueNr = v6;
  if (valueNr == 1)
  {
    ctxt->value = 0;
    v7 = valueTab[v6];
    valueTab[v6] = 0;
LABEL_7:
    context = ctxt->context;
    goto LABEL_8;
  }

  v13 = inf;
  v14 = 0;
  ctxt->value = valueTab[valueNr - 2];
  v7 = valueTab[v6];
  valueTab[v6] = 0;
  v15 = valueNr - 2;
  ctxt->valueNr = v15;
  v16 = ctxt->valueTab;
  if (v6 != 1)
  {
    v14 = v16[v6 - 2];
  }

  ctxt->value = v14;
  v17 = v16[v15];
  v16[v15] = 0;
  if (v17)
  {
    v18 = v7 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    context = ctxt->context;
    if (v17)
    {
      v9 = v17;
      goto LABEL_9;
    }

LABEL_8:
    v9 = v7;
LABEL_9:
    xmlXPathReleaseObject(context, v9);
LABEL_10:
    xmlXPathErr(ctxt, 10);
    return 0;
  }

  type = v7->type;
  if ((v7->type | 8) != 9)
  {
    v20 = v17->type;
    if (v17->type == XPATH_XSLT_TREE)
    {
      goto LABEL_30;
    }

    if (v20 != XPATH_NUMBER)
    {
      if (v20 == XPATH_NODESET)
      {
LABEL_30:
        if (type != XPATH_NODESET)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }

      valuePush(ctxt, v17);
      xmlXPathNumberFunction(ctxt, 1);
      v23 = ctxt->valueNr;
      if (v23 < 1)
      {
        v17 = 0;
      }

      else
      {
        v24 = ctxt->valueTab;
        v25 = v23 - 1;
        ctxt->valueNr = v23 - 1;
        if (v23 == 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24[v23 - 2];
        }

        ctxt->value = v26;
        v17 = v24[v25];
        v24[v25] = 0;
      }

      if (v17->type != XPATH_NUMBER)
      {
        xmlXPathFreeObject(v17);
        xmlXPathFreeObject(v7);
        goto LABEL_10;
      }

      type = v7->type;
    }

    if (type != XPATH_NUMBER)
    {
      valuePush(ctxt, v7);
      xmlXPathNumberFunction(ctxt, 1);
      v27 = ctxt->valueNr;
      if (v27 < 1)
      {
        v7 = 0;
      }

      else
      {
        v28 = ctxt->valueTab;
        v29 = v27 - 1;
        ctxt->valueNr = v27 - 1;
        if (v27 == 1)
        {
          v30 = 0;
        }

        else
        {
          v30 = v28[v27 - 2];
        }

        ctxt->value = v30;
        v7 = v28[v29];
        v28[v29] = 0;
      }
    }

    if (v7->type != XPATH_NUMBER)
    {
      xmlXPathReleaseObject(ctxt->context, v17);
      goto LABEL_7;
    }

    floatval = v17->floatval;
    v32 = v7->floatval;
    v33 = fabs(floatval);
    if (floatval > 0.0)
    {
      v34 = 1;
    }

    else
    {
      v34 = -1;
    }

    if (v33 != INFINITY)
    {
      v34 = 0;
    }

    v35 = fabs(v32);
    if (v32 > 0.0)
    {
      v36 = 1;
    }

    else
    {
      v36 = -1;
    }

    if (v35 != INFINITY)
    {
      v36 = 0;
    }

    if (v13 && strict)
    {
      v37 = v32 > 0.0;
      if (v35 != INFINITY)
      {
        v37 = 1;
      }

      if (v34 != -1 || !v37)
      {
        v38 = v32 <= 0.0 || v34 == 1;
        if (v38 || v35 != INFINITY)
        {
          v40 = v35 != INFINITY;
          if (v33 == INFINITY)
          {
            v40 = 0;
          }

          v10 = floatval < v32 && v40;
          goto LABEL_124;
        }
      }
    }

    else
    {
      if (v13 && !strict)
      {
        v41 = v32 > 0.0;
        if (v35 != INFINITY)
        {
          v41 = 0;
        }

        v10 = 1;
        if (v34 != -1 && !v41)
        {
          v42 = v35 != INFINITY;
          if (v33 == INFINITY)
          {
            v42 = 0;
          }

          v10 = floatval <= v32 && v42;
        }

        goto LABEL_124;
      }

      if (v13 || !strict)
      {
        if (strict | v13)
        {
          v10 = 0;
LABEL_124:
          xmlXPathReleaseObject(ctxt->context, v17);
          xmlXPathReleaseObject(ctxt->context, v7);
          return v10;
        }

        if ((v33 != INFINITY || floatval <= 0.0) && v36 != -1)
        {
          v49 = v35 != INFINITY;
          if (v33 == INFINITY)
          {
            v49 = 0;
          }

          v10 = floatval >= v32 && v49;
          goto LABEL_124;
        }
      }

      else if (floatval <= 0.0 || (v36 != 1 ? (v43 = v33 == INFINITY) : (v43 = 0), !v43))
      {
        v44 = v33 == INFINITY && floatval <= 0.0;
        if (v44 || v36 != -1)
        {
          v46 = v35 != INFINITY;
          if (v33 == INFINITY)
          {
            v46 = 0;
          }

          v10 = floatval > v32 && v46;
          goto LABEL_124;
        }
      }
    }

    v10 = 1;
    goto LABEL_124;
  }

LABEL_23:
  v20 = v17->type;
  if ((v17->type | 8) == 9)
  {

    return xmlXPathCompareNodeSets(inf, strict, v17, v7);
  }

LABEL_31:
  if ((v20 | 8) == 9)
  {
    v21 = v17;
    v22 = v7;
  }

  else
  {
    inf = inf == 0;
    v21 = v7;
    v22 = v17;
  }

  return xmlXPathCompareNodeSetValue(ctxt, inf, strict, v21, v22);
}

uint64_t xmlXPathCompareNodeSets(int a1, int a2, xmlXPathObjectPtr obj, xmlXPathObjectPtr a4)
{
  if ((obj->type | 8) != 9)
  {
    goto LABEL_41;
  }

  if ((a4->type | 8) != 9 || (nodesetval = obj->nodesetval) == 0 || nodesetval->nodeNr <= 0 || (v7 = a4->nodesetval) == 0 || (nodeNr = v7->nodeNr, nodeNr <= 0))
  {
LABEL_40:
    xmlXPathFreeObject(obj);
LABEL_41:
    xmlXPathFreeObject(a4);
    return 0;
  }

  v11 = malloc_type_malloc(8 * nodeNr, 0x100004000313F17uLL);
  if (!v11)
  {
    xmlXPathErrMemory(0, "comparing nodesets\n");
    goto LABEL_40;
  }

  v12 = v11;
  if (nodesetval->nodeNr < 1)
  {
LABEL_38:
    v23 = 0;
    goto LABEL_44;
  }

  v13 = 0;
  v14 = 0;
  if (a2)
  {
    v15 = a1 != 0;
  }

  else
  {
    v15 = 0;
  }

  if (a2)
  {
    v16 = 1;
  }

  else
  {
    v16 = a1 == 0;
  }

  if (a2)
  {
    v17 = a1 == 0;
  }

  else
  {
    v17 = 0;
  }

  v25 = v17;
  v26 = v16;
  v18 = a2 | a1;
  while (1)
  {
    v19 = xmlXPathCastNodeToNumber(nodesetval->nodeTab[v13]);
    if (v7->nodeNr >= 1)
    {
      break;
    }

LABEL_37:
    v14 = 1;
    if (++v13 >= nodesetval->nodeNr)
    {
      goto LABEL_38;
    }
  }

  v20 = v19;
  v21 = 0;
  while (1)
  {
    if (v14)
    {
      v22 = v12[v21];
    }

    else
    {
      v22 = xmlXPathCastNodeToNumber(v7->nodeTab[v21]);
      v12[v21] = v22;
    }

    if (v15)
    {
      if (v20 < v22)
      {
        goto LABEL_43;
      }

      goto LABEL_32;
    }

    if (v26)
    {
      break;
    }

    if (v20 <= v22)
    {
      goto LABEL_43;
    }

LABEL_32:
    if (++v21 >= v7->nodeNr)
    {
      goto LABEL_37;
    }
  }

  if (v25)
  {
    if (v20 > v22)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (v18 || v20 < v22)
  {
    goto LABEL_32;
  }

LABEL_43:
  v23 = 1;
LABEL_44:
  free(v12);
  xmlXPathFreeObject(obj);
  xmlXPathFreeObject(a4);
  return v23;
}

uint64_t xmlXPathCompareNodeSetValue(xmlXPathParserContextPtr ctxt, int a2, int a3, xmlXPathObject *a4, xmlXPathObjectPtr a5)
{
  type = a4->type;
  if ((a4->type | 8) != 9)
  {
    return 0;
  }

  v11 = a5->type;
  if (a5->type > XPATH_BOOLEAN)
  {
    if (v11 != XPATH_XSLT_TREE)
    {
      if (v11 == XPATH_STRING)
      {
        if ((type | 8) == 9)
        {
          p_nodeNr = &a4->nodesetval->nodeNr;
          if (p_nodeNr && *p_nodeNr >= 1)
          {
            v21 = 0;
            do
            {
              Content = xmlNodeGetContent(*(*(p_nodeNr + 1) + 8 * v21));
              if (Content || (Content = xmlStrdup("")) != 0)
              {
                v23 = Content;
                v24 = xmlXPathCacheNewString(ctxt->context, Content);
                valuePush(ctxt, v24);
                free(v23);
                v25 = xmlXPathCacheObjectCopy(ctxt->context, a5);
                valuePush(ctxt, v25);
                v18 = xmlXPathCompareValues(ctxt, a2, a3);
                if (v18)
                {
                  goto LABEL_37;
                }
              }
            }

            while (++v21 < *p_nodeNr);
          }

LABEL_31:
          v26 = 0;
LABEL_32:
          xmlXPathReleaseObject(ctxt->context, a4);
          xmlXPathReleaseObject(ctxt->context, a5);
          return v26;
        }

        goto LABEL_34;
      }

      if (v11 == XPATH_NUMBER)
      {
        if ((type | 8) == 9)
        {
          v12 = &a4->nodesetval->nodeNr;
          if (v12 && *v12 >= 1)
          {
            v13 = 0;
            while (1)
            {
              v14 = xmlNodeGetContent(*(*(v12 + 1) + 8 * v13));
              if (v14 || (v14 = xmlStrdup("")) != 0)
              {
                v15 = v14;
                v16 = xmlXPathCacheNewString(ctxt->context, v14);
                valuePush(ctxt, v16);
                free(v15);
                xmlXPathNumberFunction(ctxt, 1);
                v17 = xmlXPathCacheObjectCopy(ctxt->context, a5);
                valuePush(ctxt, v17);
                v18 = xmlXPathCompareValues(ctxt, a2, a3);
                if (v18)
                {
                  break;
                }
              }

              if (++v13 >= *v12)
              {
                goto LABEL_31;
              }
            }

LABEL_37:
            v26 = v18;
            goto LABEL_32;
          }

          goto LABEL_31;
        }

LABEL_34:
        xmlXPathReleaseObject(ctxt->context, a4);
        xmlXPathReleaseObject(ctxt->context, a5);
        return 0;
      }

LABEL_33:
      v27 = *__xmlGenericError();
      v28 = __xmlGenericErrorContext();
      v27(*v28, "xmlXPathCompareNodeSetValue: Can't compare node set and object of type %d\n", a5->type);
      xmlXPathReleaseObject(ctxt->context, a4);
      xmlXPathReleaseObject(ctxt->context, a5);
      xmlXPathErr(ctxt, 11);
      return 0;
    }

    goto LABEL_20;
  }

  if (v11 == XPATH_NODESET)
  {
LABEL_20:

    return xmlXPathCompareNodeSets(a2, a3, a4, a5);
  }

  if (v11 != XPATH_BOOLEAN)
  {
    goto LABEL_33;
  }

  valuePush(ctxt, a4);
  xmlXPathBooleanFunction(ctxt, 1);
  valuePush(ctxt, a5);

  return xmlXPathCompareValues(ctxt, a2, a3);
}

void xmlXPathNumberFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs == 1)
  {
    valueNr = ctxt->valueNr;
    if (valueNr > 0)
    {
      valueTab = ctxt->valueTab;
      v9 = valueNr - 1;
      ctxt->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = valueTab[valueNr - 2];
      }

      ctxt->value = v10;
      v14 = valueTab[v9];
      valueTab[v9] = 0;
      context = ctxt->context;
      if (v14)
      {
        if (v14->type != XPATH_NUMBER)
        {
          v16 = xmlXPathCastToNumber(v14);
          v17 = xmlXPathCacheNewFloat(v16, context);
          xmlXPathReleaseObject(context, v14);
          v14 = v17;
        }
      }

      else
      {
        v14 = xmlXPathCacheNewFloat(0.0, ctxt->context);
      }

      v13 = ctxt;
      v12 = v14;
LABEL_24:

      valuePush(v13, v12);
      return;
    }

    v11 = 23;
  }

  else
  {
    if (!nargs)
    {
      v3 = ctxt->context;
      if (v3->node)
      {
        Content = xmlNodeGetContent(v3->node);
        v5 = xmlXPathStringEvalNumber(Content);
        v6 = xmlXPathCacheNewFloat(v5, ctxt->context);
        valuePush(ctxt, v6);

        free(Content);
        return;
      }

      v12 = xmlXPathCacheNewFloat(0.0, v3);
      v13 = ctxt;
      goto LABEL_24;
    }

    v11 = 12;
  }

  xmlXPathErr(ctxt, v11);
}

void xmlXPathValueFlipSign(xmlXPathParserContextPtr ctxt)
{
  if (ctxt && ctxt->context)
  {
    value = ctxt->value;
    if (value && (value->type == XPATH_NUMBER || (xmlXPathNumberFunction(ctxt, 1), (value = ctxt->value) != 0) && value->type == XPATH_NUMBER))
    {
      value->floatval = -value->floatval;
    }

    else
    {

      xmlXPathErr(ctxt, 11);
    }
  }
}

void xmlXPathAddValues(xmlXPathParserContextPtr ctxt)
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
        value->floatval = v7 + value->floatval;
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

void xmlXPathMultValues(xmlXPathParserContextPtr ctxt)
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
        value->floatval = v7 * value->floatval;
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

void xmlXPathDivValues(xmlXPathParserContextPtr ctxt)
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
        value->floatval = value->floatval / v7;
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

void xmlXPathModValues(xmlXPathParserContextPtr ctxt)
{
  v1 = ctxt;
  if (!ctxt)
  {
    goto LABEL_13;
  }

  valueNr = ctxt->valueNr;
  if (valueNr < 1)
  {
    goto LABEL_13;
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
        if (v7 == 0.0)
        {
          v9 = xmlXPathNAN;
        }

        else
        {
          v9 = fmod(value->floatval, v7);
        }

        value->floatval = v9;
        return;
      }
    }

    ctxt = v1;
    v10 = 11;
  }

  else
  {
LABEL_13:
    v10 = 10;
  }

  xmlXPathErr(ctxt, v10);
}

xmlNodePtr xmlXPathNextSelf(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    v2 = ctxt;
    ctxt = 0;
    if (!cur)
    {
      children = v2->children;
      if (children)
      {
        return *&children->type;
      }
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextChild(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    children = ctxt->children;
    if (!children)
    {
      return 0;
    }

    if (cur)
    {
      if ((cur->type | 4) != 0xD)
      {
        p_next = &cur->next;
        return *p_next;
      }

      return 0;
    }

    v4 = *&children->type;
    if (!v4)
    {
      return 0;
    }

    ctxt = 0;
    v5 = *(v4 + 8);
    if (v5 <= 0x15)
    {
      v6 = 1 << v5;
      if ((v6 & 0x51FA) != 0 || (v6 & 0x202E00) != 0)
      {
        p_next = (v4 + 24);
        return *p_next;
      }
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextParent(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    v2 = ctxt;
    ctxt = 0;
    if (!cur)
    {
      children = v2->children;
      if (children)
      {
        v4 = *&children->type;
        if (!v4)
        {
          return 0;
        }

        ctxt = 0;
        v5 = *(v4 + 8);
        if (v5 > 0x14)
        {
          return ctxt;
        }

        if (((1 << v5) & 0x1BD1FA) != 0)
        {
          ctxt = *(v4 + 40);
          if (!ctxt)
          {
            return children->_private;
          }

          if (ctxt->type == XML_ELEMENT_NODE)
          {
            name = ctxt->name;
            if (*name != 32 && !xmlStrEqual(name, "fake node libxslt"))
            {
              v4 = *&v2->children->type;
              return *(v4 + 40);
            }

            return 0;
          }
        }

        else
        {
          if (v5 == 2)
          {
            return *(v4 + 40);
          }

          if (v5 == 18)
          {
            ctxt = *v4;
            if (!*v4 || ctxt->type == XML_NAMESPACE_DECL)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextAncestor(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (!ctxt)
  {
    return ctxt;
  }

  v2 = ctxt;
  children = ctxt->children;
  if (!children)
  {
    return 0;
  }

  if (!cur)
  {
    v7 = *&children->type;
    if (!v7)
    {
      return 0;
    }

    ctxt = 0;
    v8 = *(v7 + 8);
    if (v8 > 0x14)
    {
      return ctxt;
    }

    if (((1 << v8) & 0x1BD1FA) != 0)
    {
      ctxt = *(v7 + 40);
      if (!ctxt)
      {
        return children->_private;
      }

      if (ctxt->type != XML_ELEMENT_NODE)
      {
        return ctxt;
      }

      name = ctxt->name;
      if (*name != 32 && !xmlStrEqual(name, "fake node libxslt"))
      {
        return *(*&v2->children->type + 40);
      }

      return 0;
    }

    if (v8 == 2)
    {
      return *(v7 + 40);
    }

    if (v8 != 18)
    {
      return ctxt;
    }

    ctxt = *v7;
    if (!*v7)
    {
      return 0;
    }

LABEL_29:
    if (ctxt->type != XML_NAMESPACE_DECL)
    {
      return ctxt;
    }

    return 0;
  }

  ctxt = children->_private;
  if (*(children->_private + 3) == cur)
  {
    return ctxt;
  }

  if (ctxt == cur)
  {
    return 0;
  }

  ctxt = 0;
  type = cur->type;
  if (type > XML_XINCLUDE_END)
  {
    return ctxt;
  }

  if (((1 << type) & 0x1BD1FA) == 0)
  {
    if (type == XML_ATTRIBUTE_NODE)
    {
      return cur->parent;
    }

    if (type != XML_NAMESPACE_DECL)
    {
      return ctxt;
    }

    ctxt = cur->_private;
    if (!cur->_private)
    {
      return 0;
    }

    goto LABEL_29;
  }

  ctxt = cur->parent;
  if (ctxt && ctxt->type == XML_ELEMENT_NODE)
  {
    v6 = ctxt->name;
    if (*v6 != 32 && !xmlStrEqual(v6, "fake node libxslt"))
    {
      return cur->parent;
    }

    return 0;
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextAncestorOrSelf(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    children = ctxt->children;
    if (children)
    {
      if (cur)
      {
        return xmlXPathNextAncestor(ctxt, cur);
      }

      else
      {
        return *&children->type;
      }
    }

    else
    {
      return 0;
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextFollowingSibling(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    children = ctxt->children;
    if (!children)
    {
      return 0;
    }

    v3 = *&children->type;
    if ((v3->type | 0x10) == 0x12 || children->_private == cur)
    {
      return 0;
    }

    else
    {
      if (cur)
      {
        v3 = cur;
      }

      return v3->next;
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextPrecedingSibling(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    children = ctxt->children;
    if (children)
    {
      prev = *&children->type;
      if ((prev->type | 0x10) != 0x12 && children->_private != cur)
      {
        if (!cur)
        {
          return prev->prev;
        }

        prev = cur->prev;
        if (prev)
        {
          if (prev->type != XML_DTD_NODE)
          {
            prev = cur;
          }

          return prev->prev;
        }
      }
    }

    return 0;
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextFollowing(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (!ctxt)
  {
    return ctxt;
  }

  children = ctxt->children;
  if (!children)
  {
    return 0;
  }

  if (cur)
  {
    if ((cur->type | 0x10) == 0x12)
    {
      goto LABEL_13;
    }

    ctxt = cur->children;
    if (!ctxt)
    {
      goto LABEL_13;
    }

    return ctxt;
  }

  cur = children[1];
  type = cur->type;
  if (type == XML_ATTRIBUTE_NODE)
  {
    cur = cur->parent;
    if (cur)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (type == XML_NAMESPACE_DECL)
  {
    cur = cur->_private;
    if (!cur || cur->type == XML_NAMESPACE_DECL)
    {
      return 0;
    }
  }

LABEL_13:
  while (1)
  {
    ctxt = cur->next;
    if (ctxt)
    {
      break;
    }

    cur = cur->parent;
    if (!cur || cur == *children)
    {
      return 0;
    }
  }

  return ctxt;
}

xmlNodePtr xmlXPathNextPreceding(xmlXPathParserContextPtr ctxt, xmlNodePtr cur)
{
  if (!ctxt)
  {
    return 0;
  }

  context = ctxt->context;
  if (!context)
  {
    return 0;
  }

  if (!cur)
  {
    cur = context->node;
    type = cur->type;
    if (type == XML_ATTRIBUTE_NODE)
    {
      cur = cur->parent;
      if (!cur)
      {
        return cur;
      }
    }

    else if (type == XML_NAMESPACE_DECL)
    {
      cur = cur->_private;
      if (!cur)
      {
        return cur;
      }

      if (cur->type == XML_NAMESPACE_DECL)
      {
        return 0;
      }
    }
  }

  if (cur->type == XML_NAMESPACE_DECL)
  {
    return 0;
  }

  prev = cur->prev;
  if (!prev)
  {
    goto LABEL_19;
  }

  if (prev->type == XML_DTD_NODE)
  {
    cur = cur->prev;
  }

  do
  {
LABEL_18:
    v6 = cur->prev;
    if (v6)
    {
      do
      {
        cur = v6;
        v6 = v6->last;
      }

      while (v6);
      return cur;
    }

LABEL_19:
    cur = cur->parent;
    if (!cur)
    {
      return cur;
    }

    if (cur == context->doc->children)
    {
      return 0;
    }

    node = context->node;
    if (node)
    {
      if (node->type != XML_NAMESPACE_DECL && cur->type != XML_NAMESPACE_DECL)
      {
        doc = cur->doc;
        if (doc == node->doc)
        {
          continue;
        }
      }
    }

    return cur;
  }

  while (doc == cur);
  if (doc != node)
  {
    while (1)
    {
      node = node->parent;
      if (!node)
      {
        break;
      }

      if (node == cur)
      {
        goto LABEL_18;
      }
    }
  }

  return cur;
}

xmlNodePtr xmlXPathNextNamespace(xmlNodePtr ctxt, xmlNodePtr cur)
{
  if (ctxt)
  {
    v2 = ctxt;
    children = ctxt->children;
    if (children && (v5 = *&children->type, *(v5 + 8) == 1))
    {
      if (cur)
      {
        properties = children[1].properties;
        content = children[1].content;
        v8 = __OFSUB__(properties, 1);
        v9 = properties - 1;
        if (v9 < 0 != v8)
        {
          if (content)
          {
            free(content);
            children = v2->children;
          }

          ctxt = 0;
          children[1].content = 0;
        }

        else
        {
          LODWORD(children[1].properties) = v9;
          return *&content[8 * v9];
        }
      }

      else
      {
        v10 = children[1].content;
        if (v10)
        {
          free(v10);
          children = v2->children;
          v5 = *&children->type;
        }

        NsList = xmlGetNsList(children->_private, v5);
        v12 = v2->children;
        v12[1].content = NsList;
        LODWORD(v12[1].properties) = 0;
        if (NsList && *NsList)
        {
          v13 = 0;
            ;
          }

          LODWORD(v12[1].properties) = v13;
        }

        return &xmlXPathXMLNamespaceStruct;
      }
    }

    else
    {
      return 0;
    }
  }

  return ctxt;
}

void xmlXPathLastFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  context = ctxt->context;
  contextSize = context->contextSize;
  if ((contextSize & 0x80000000) != 0)
  {
    ctxt = v2;
    v3 = 13;
    goto LABEL_4;
  }

  v6 = xmlXPathCacheNewFloat(contextSize, context);

  valuePush(v2, v6);
}

void xmlXPathPositionFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  context = ctxt->context;
  proximityPosition = context->proximityPosition;
  if ((proximityPosition & 0x80000000) != 0)
  {
    ctxt = v2;
    v3 = 14;
    goto LABEL_4;
  }

  v6 = xmlXPathCacheNewFloat(proximityPosition, context);

  valuePush(v2, v6);
}

void xmlXPathCountFunction(xmlXPathParserContextPtr ctxt, int nargs)
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
      v8 = 23;
    }

    else
    {
      value = ctxt->value;
      if (value && (value->type | 8) == 9)
      {
        valueTab = ctxt->valueTab;
        v6 = valueNr - 1;
        ctxt->valueNr = valueNr - 1;
        if (valueNr == 1)
        {
          v7 = 0;
        }

        else
        {
          v7 = valueTab[valueNr - 2];
        }

        ctxt->value = v7;
        v9 = valueTab[v6];
        valueTab[v6] = 0;
        if (v9 && (v10 = v9[1]) != 0)
        {
          context = ctxt->context;
          v12 = *v10;
        }

        else
        {
          context = ctxt->context;
          v12 = 0.0;
        }

        v13 = xmlXPathCacheNewFloat(v12, context);
        valuePush(ctxt, v13);
        v14 = ctxt->context;

        xmlXPathReleaseObject(v14, v9);
        return;
      }

      v8 = 11;
    }
  }

  else
  {
    v8 = 12;
  }

  xmlXPathErr(ctxt, v8);
}

void xmlXPathIdFunction(xmlXPathParserContextPtr ctxt, int nargs)
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
      v7 = 23;
    }

    else
    {
      valueTab = ctxt->valueTab;
      v5 = valueNr - 1;
      ctxt->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = valueTab[valueNr - 2];
      }

      ctxt->value = v6;
      v8 = valueTab[v5];
      valueTab[v5] = 0;
      if (v8)
      {
        if ((*v8 | 8) == 9)
        {
          v9 = xmlXPathNodeSetCreate(0);
          v10 = *(v8 + 1);
          if (v10 && *v10 >= 1)
          {
            v11 = 0;
            do
            {
              Content = xmlNodeGetContent(*(*(v10 + 1) + 8 * v11));
              if (!Content)
              {
                Content = xmlStrdup("");
              }

              ElementsByIds = xmlXPathGetElementsByIds(ctxt->context->doc, Content);
              v9 = xmlXPathNodeSetMerge(v9, ElementsByIds);
              xmlXPathFreeNodeSet(ElementsByIds);
              if (Content)
              {
                free(Content);
              }

              ++v11;
              v10 = *(v8 + 1);
            }

            while (v11 < *v10);
          }

          xmlXPathReleaseObject(ctxt->context, v8);
          v14 = xmlXPathCacheWrapNodeSet(ctxt->context, v9);

          valuePush(ctxt, v14);
        }

        else
        {
          v15 = xmlXPathCacheConvertString(ctxt->context, v8);
          if (v15)
          {
            v16 = v15;
            v17 = xmlXPathGetElementsByIds(ctxt->context->doc, v15->stringval);
            v18 = xmlXPathCacheWrapNodeSet(ctxt->context, v17);
            valuePush(ctxt, v18);
            context = ctxt->context;

            xmlXPathReleaseObject(context, v16);
          }
        }

        return;
      }

      v7 = 10;
    }
  }

  else
  {
    v7 = 12;
  }

  xmlXPathErr(ctxt, v7);
}

xmlNodeSet *xmlXPathGetElementsByIds(xmlDoc *a1, const xmlChar *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = xmlXPathNodeSetCreate(0);
  if (v4)
  {
    for (i = v2; ; ++i)
    {
      v6 = *i;
      if (v6 > 0x20)
      {
        LOBYTE(v7) = *i;
        goto LABEL_12;
      }

      if (((1 << v6) & 0x100002600) == 0)
      {
        break;
      }
    }

    LOBYTE(v7) = *i;
    if (!*i)
    {
      return v4;
    }

LABEL_12:
    v8 = i - v2;
    while (v7 > 0x20u || ((1 << v7) & 0x100002601) == 0)
    {
      v9 = *++i;
      LOBYTE(v7) = v9;
      ++v8;
    }

    v10 = xmlStrndup(v2, v8);
    if (v10)
    {
      v11 = v10;
      ID = xmlGetID(a1, v10);
      if (ID)
      {
        parent = ID;
        type = ID->type;
        if (type == XML_ELEMENT_NODE || type == XML_ATTRIBUTE_NODE && (parent = ID->parent) != 0)
        {
          xmlXPathNodeSetAdd(v4, parent);
        }
      }

      free(v11);
    }

    while (1)
    {
      v7 = *i;
      if (v7 > 0x20)
      {
LABEL_11:
        v2 = i;
        goto LABEL_12;
      }

      if (((1 << v7) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }

    if (*i)
    {
      goto LABEL_11;
    }
  }

  return v4;
}

void xmlXPathLocalNameFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs != 1)
  {
    if (nargs)
    {
      v9 = 12;
      goto LABEL_14;
    }

    v3 = xmlXPathCacheNewNodeSet(ctxt->context, ctxt->context->node);
    valuePush(v2, v3);
  }

  valueNr = v2->valueNr;
  if (valueNr <= 0)
  {
    ctxt = v2;
    v9 = 23;
  }

  else
  {
    value = v2->value;
    if (value && (*value | 8) == 9)
    {
      valueTab = v2->valueTab;
      v7 = valueNr - 1;
      v2->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = valueTab[valueNr - 2];
      }

      v2->value = v8;
      v10 = valueTab[v7];
      valueTab[v7] = 0;
      v11 = v10[1];
      if (!v11 || !*v11)
      {
        goto LABEL_25;
      }

      v12 = **(v11 + 8);
      v13 = *(v12 + 8);
      if ((v13 - 1) < 2)
      {
        goto LABEL_23;
      }

      if (v13 == 18)
      {
        context = v2->context;
        v14 = *(v12 + 24);
LABEL_31:
        v16 = xmlXPathCacheNewString(context, v14);
        goto LABEL_27;
      }

      if (v13 == 7)
      {
LABEL_23:
        v14 = *(v12 + 16);
        context = v2->context;
        if (*v14 != 32)
        {
          goto LABEL_31;
        }
      }

      else
      {
LABEL_25:
        context = v2->context;
      }

      v16 = xmlXPathCacheNewCString(context);
LABEL_27:
      valuePush(v2, v16);
      v17 = v2->context;

      xmlXPathReleaseObject(v17, v10);
      return;
    }

    ctxt = v2;
    v9 = 11;
  }

LABEL_14:

  xmlXPathErr(ctxt, v9);
}

xmlXPathObjectPtr xmlXPathCacheNewCString(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 344);
    if (v1)
    {
      v2 = *(v1 + 8);
      if (v2)
      {
        v3 = *(v2 + 2);
        if (v3)
        {
          v4 = *v2;
          v5 = v3 - 1;
          *(v2 + 2) = v5;
          v6 = *(v4 + 8 * v5);
LABEL_9:
          *v6 = 4;
          *(v6 + 32) = xmlStrdup("");
          return v6;
        }
      }

      v7 = *(v1 + 32);
      if (v7)
      {
        v8 = *(v7 + 2);
        if (v8)
        {
          v9 = *v7;
          v10 = v8 - 1;
          *(v7 + 2) = v10;
          v6 = *(v9 + 8 * v10);
          goto LABEL_9;
        }
      }
    }
  }

  return xmlXPathNewCString("");
}

void xmlXPathNamespaceURIFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs != 1)
  {
    if (nargs)
    {
      v9 = 12;
      goto LABEL_14;
    }

    v3 = xmlXPathCacheNewNodeSet(ctxt->context, ctxt->context->node);
    valuePush(v2, v3);
  }

  valueNr = v2->valueNr;
  if (valueNr <= 0)
  {
    ctxt = v2;
    v9 = 23;
  }

  else
  {
    value = v2->value;
    if (value && (*value | 8) == 9)
    {
      valueTab = v2->valueTab;
      v7 = valueNr - 1;
      v2->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = valueTab[valueNr - 2];
      }

      v2->value = v8;
      v10 = valueTab[v7];
      valueTab[v7] = 0;
      v11 = v10[1];
      if (v11 && *v11 && (v12 = **(v11 + 8), (*(v12 + 8) - 1) <= 1))
      {
        v13 = *(v12 + 72);
        context = v2->context;
        if (v13)
        {
          v15 = xmlXPathCacheNewString(context, *(v13 + 16));
LABEL_25:
          valuePush(v2, v15);
          v16 = v2->context;

          xmlXPathReleaseObject(v16, v10);
          return;
        }
      }

      else
      {
        context = v2->context;
      }

      v15 = xmlXPathCacheNewCString(context);
      goto LABEL_25;
    }

    ctxt = v2;
    v9 = 11;
  }

LABEL_14:

  xmlXPathErr(ctxt, v9);
}

void xmlXPathConcatFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v3 = ctxt;
  if (nargs <= 1)
  {
    v4 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v4);
    return;
  }

  value = ctxt->value;
  if (value && value->type != XPATH_STRING)
  {
    xmlXPathStringFunction(ctxt, 1);
  }

  valueNr = v3->valueNr;
  if (valueNr < 1)
  {
    v10 = 0;
LABEL_32:
    context = v3->context;

    xmlXPathReleaseObject(context, v10);
    return;
  }

  valueTab = v3->valueTab;
  v8 = valueNr - 1;
  v3->valueNr = valueNr - 1;
  if (valueNr == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = valueTab[valueNr - 2];
  }

  v3->value = v9;
  v10 = valueTab[v8];
  valueTab[v8] = 0;
  if (!v10 || v10->type != XPATH_STRING)
  {
    goto LABEL_32;
  }

  v11 = nargs + 1;
  do
  {
    v12 = v3->value;
    if (v12 && *v12 != 4)
    {
      xmlXPathStringFunction(v3, 1);
    }

    v13 = v3->valueNr;
    if (v13 < 1)
    {
      v17 = 0;
LABEL_36:
      xmlXPathReleaseObject(v3->context, v17);
      xmlXPathReleaseObject(v3->context, v10);
      ctxt = v3;
      v4 = 11;
      goto LABEL_4;
    }

    v14 = v3->valueTab;
    v15 = v13 - 1;
    v3->valueNr = v13 - 1;
    if (v13 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14[v13 - 2];
    }

    v3->value = v16;
    v17 = v14[v15];
    v14[v15] = 0;
    if (!v17 || v17->type != XPATH_STRING)
    {
      goto LABEL_36;
    }

    v18 = xmlStrcat(v17->stringval, v10->stringval);
    v17->stringval = v10->stringval;
    v10->stringval = v18;
    xmlXPathReleaseObject(v3->context, v17);
    --v11;
  }

  while (v11 > 2);

  valuePush(v3, v10);
}

void xmlXPathContainsFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs != 2)
  {
    v5 = 12;
    goto LABEL_32;
  }

  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr <= 1)
  {
    v5 = 23;
LABEL_32:

    xmlXPathErr(ctxt, v5);
    return;
  }

  value = ctxt->value;
  if (!value)
  {
LABEL_31:
    ctxt = v2;
    v5 = 11;
    goto LABEL_32;
  }

  if (value->type == XPATH_STRING)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
  }

  else
  {
    xmlXPathStringFunction(ctxt, 1);
    v13 = v2->value;
    if (!v13 || *v13 != 4)
    {
      goto LABEL_31;
    }

    valueNr = v2->valueNr;
    v4 = valueNr - 1;
    if (valueNr < 1)
    {
      v9 = 0;
LABEL_29:
      v15 = 0;
LABEL_30:
      xmlXPathReleaseObject(v2->context, v15);
      xmlXPathReleaseObject(v2->context, v9);
      goto LABEL_31;
    }

    v2->valueNr = v4;
    valueTab = v2->valueTab;
    if (valueNr == 1)
    {
      v4 = 0;
      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = valueTab[valueNr - 2];
LABEL_11:
  v2->value = v8;
  v9 = valueTab[v4];
  valueTab[v4] = 0;
  v10 = v2->value;
  if (v10 && *v10 != 4)
  {
    xmlXPathStringFunction(v2, 1);
    v4 = v2->valueNr;
  }

  v11 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_29;
  }

  v2->valueNr = v11;
  v12 = v2->valueTab;
  if (v4 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12[v4 - 2];
  }

  v2->value = v14;
  v15 = v12[v11];
  v12[v11] = 0;
  if (!v15 || v15->type != XPATH_STRING)
  {
    goto LABEL_30;
  }

  v16 = xmlStrstr(v15->stringval, v9->stringval) != 0;
  v17 = xmlXPathCacheNewBoolean(v2->context, v16);
  valuePush(v2, v17);
  xmlXPathReleaseObject(v2->context, v15);
  context = v2->context;

  xmlXPathReleaseObject(context, v9);
}

void xmlXPathStartsWithFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs != 2)
  {
    v5 = 12;
    goto LABEL_32;
  }

  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr <= 1)
  {
    v5 = 23;
LABEL_32:

    xmlXPathErr(ctxt, v5);
    return;
  }

  value = ctxt->value;
  if (!value)
  {
LABEL_31:
    ctxt = v2;
    v5 = 11;
    goto LABEL_32;
  }

  if (value->type == XPATH_STRING)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
  }

  else
  {
    xmlXPathStringFunction(ctxt, 1);
    v13 = v2->value;
    if (!v13 || *v13 != 4)
    {
      goto LABEL_31;
    }

    valueNr = v2->valueNr;
    v4 = valueNr - 1;
    if (valueNr < 1)
    {
      v9 = 0;
LABEL_29:
      v15 = 0;
LABEL_30:
      xmlXPathReleaseObject(v2->context, v15);
      xmlXPathReleaseObject(v2->context, v9);
      goto LABEL_31;
    }

    v2->valueNr = v4;
    valueTab = v2->valueTab;
    if (valueNr == 1)
    {
      v4 = 0;
      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = valueTab[valueNr - 2];
LABEL_11:
  v2->value = v8;
  v9 = valueTab[v4];
  valueTab[v4] = 0;
  v10 = v2->value;
  if (v10 && *v10 != 4)
  {
    xmlXPathStringFunction(v2, 1);
    v4 = v2->valueNr;
  }

  v11 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_29;
  }

  v2->valueNr = v11;
  v12 = v2->valueTab;
  if (v4 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12[v4 - 2];
  }

  v2->value = v14;
  v15 = v12[v11];
  v12[v11] = 0;
  if (!v15 || v15->type != XPATH_STRING)
  {
    goto LABEL_30;
  }

  v16 = xmlStrlen(v9->stringval);
  v17 = xmlStrncmp(v15->stringval, v9->stringval, v16) == 0;
  v18 = xmlXPathCacheNewBoolean(v2->context, v17);
  valuePush(v2, v18);
  xmlXPathReleaseObject(v2->context, v15);
  context = v2->context;

  xmlXPathReleaseObject(context, v9);
}

void xmlXPathSubstringBeforeFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs != 2)
  {
    v5 = 12;
    goto LABEL_7;
  }

  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr <= 1)
  {
    v5 = 23;
LABEL_7:

    xmlXPathErr(ctxt, v5);
    return;
  }

  value = ctxt->value;
  if (!value || value->type == XPATH_STRING)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
    goto LABEL_13;
  }

  xmlXPathStringFunction(ctxt, 1);
  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr >= 1)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
    if (valueNr == 1)
    {
      v4 = 0;
      v8 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v8 = valueTab[valueNr - 2];
LABEL_14:
    ctxt->value = v8;
    v9 = valueTab[v4];
    valueTab[v4] = 0;
    valueNr = v4;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v10 = ctxt->value;
  if (v10 && v10->type != XPATH_STRING)
  {
    xmlXPathStringFunction(ctxt, 1);
    valueNr = ctxt->valueNr;
  }

  v11 = valueNr - 1;
  if (valueNr < 1)
  {
    v13 = 0;
  }

  else
  {
    ctxt->valueNr = v11;
    v12 = ctxt->valueTab;
    if (valueNr == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12[valueNr - 2];
    }

    ctxt->value = v14;
    v13 = v12[v11];
    v12[v11] = 0;
  }

  v15 = xmlBufCreate();
  if (v15)
  {
    v16 = v15;
    v17 = xmlStrstr(v13->stringval, v9->stringval);
    if (v17)
    {
      xmlBufAdd(v16, v13->stringval, v17 - v13->stringval);
    }

    context = ctxt->context;
    v19 = xmlBufContent(v16);
    v20 = xmlXPathCacheNewString(context, v19);
    valuePush(ctxt, v20);
    xmlBufFree(v16);
  }

  xmlXPathReleaseObject(ctxt->context, v13);
  v21 = ctxt->context;

  xmlXPathReleaseObject(v21, v9);
}

void xmlXPathSubstringAfterFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs != 2)
  {
    v5 = 12;
    goto LABEL_7;
  }

  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr <= 1)
  {
    v5 = 23;
LABEL_7:

    xmlXPathErr(ctxt, v5);
    return;
  }

  value = ctxt->value;
  if (!value || value->type == XPATH_STRING)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
    goto LABEL_13;
  }

  xmlXPathStringFunction(ctxt, 1);
  valueNr = ctxt->valueNr;
  v4 = valueNr - 1;
  if (valueNr >= 1)
  {
    ctxt->valueNr = v4;
    valueTab = ctxt->valueTab;
    if (valueNr == 1)
    {
      v4 = 0;
      v8 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v8 = valueTab[valueNr - 2];
LABEL_14:
    ctxt->value = v8;
    v9 = valueTab[v4];
    valueTab[v4] = 0;
    valueNr = v4;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v10 = ctxt->value;
  if (v10 && v10->type != XPATH_STRING)
  {
    xmlXPathStringFunction(ctxt, 1);
    valueNr = ctxt->valueNr;
  }

  v11 = valueNr - 1;
  if (valueNr < 1)
  {
    v13 = 0;
  }

  else
  {
    ctxt->valueNr = v11;
    v12 = ctxt->valueTab;
    if (valueNr == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12[valueNr - 2];
    }

    ctxt->value = v14;
    v13 = v12[v11];
    v12[v11] = 0;
  }

  v15 = xmlBufCreate();
  if (v15)
  {
    v16 = v15;
    v17 = xmlStrstr(v13->stringval, v9->stringval);
    if (v17)
    {
      v18 = v17 - LODWORD(v13->stringval);
      v19 = xmlStrlen(v9->stringval) + v18;
      stringval = v13->stringval;
      v21 = &stringval[v19];
      v22 = xmlStrlen(stringval);
      xmlBufAdd(v16, v21, (v22 - v19));
    }

    context = ctxt->context;
    v24 = xmlBufContent(v16);
    v25 = xmlXPathCacheNewString(context, v24);
    valuePush(ctxt, v25);
    xmlBufFree(v16);
  }

  xmlXPathReleaseObject(ctxt->context, v13);
  v26 = ctxt->context;

  xmlXPathReleaseObject(v26, v9);
}

void xmlXPathNormalizeFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs != 1)
  {
    if (nargs)
    {
      v11 = 12;
LABEL_19:

      xmlXPathErr(ctxt, v11);
      return;
    }

    context = ctxt->context;
    Content = xmlNodeGetContent(context->node);
    if (!Content)
    {
      Content = xmlStrdup("");
    }

    v5 = xmlXPathCacheWrapString(context, Content);
    valuePush(v2, v5);
  }

  valueNr = v2->valueNr;
  if (valueNr <= 0)
  {
    ctxt = v2;
    v11 = 23;
    goto LABEL_19;
  }

  value = v2->value;
  if (!value)
  {
    goto LABEL_18;
  }

  if (*value == 4)
  {
LABEL_10:
    valueTab = v2->valueTab;
    v9 = valueNr - 1;
    v2->valueNr = valueNr - 1;
    if (valueNr == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = valueTab[valueNr - 2];
    }

    v2->value = v10;
    v13 = valueTab[v9];
    valueTab[v9] = 0;
    goto LABEL_24;
  }

  xmlXPathStringFunction(v2, 1);
  v12 = v2->value;
  if (!v12 || *v12 != 4)
  {
LABEL_18:
    ctxt = v2;
    v11 = 11;
    goto LABEL_19;
  }

  valueNr = v2->valueNr;
  if (valueNr >= 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
LABEL_24:
  __src = 0;
  v14 = v13[4];
  v15 = xmlBufCreate();
  if (v15 && v14)
  {
    v16 = v15;
    while (1)
    {
      v17 = *v14;
      if (v17 > 0x20 || ((1 << v17) & 0x100002600) == 0)
      {
        break;
      }

      ++v14;
    }

    __src = 0;
    while (1)
    {
      if (v17 <= 0x20u)
      {
        if (((1 << v17) & 0x100002600) != 0)
        {
          __src = 32;
          goto LABEL_36;
        }

        if (!v17)
        {
          v20 = v2->context;
          v21 = xmlBufContent(v16);
          v22 = xmlXPathCacheNewString(v20, v21);
          valuePush(v2, v22);
          xmlBufFree(v16);
          break;
        }
      }

      if (__src)
      {
        xmlBufAdd(v16, &__src, 1uLL);
        __src = 0;
      }

      xmlBufAdd(v16, v14, 1uLL);
LABEL_36:
      v19 = *++v14;
      LOBYTE(v17) = v19;
    }
  }

  xmlXPathReleaseObject(v2->context, v13);
}

void xmlXPathTranslateFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs != 3)
  {
    v4 = 12;
    goto LABEL_7;
  }

  valueNr = ctxt->valueNr;
  if (valueNr <= 2)
  {
    v4 = 23;
LABEL_7:

    xmlXPathErr(ctxt, v4);
    return;
  }

  value = ctxt->value;
  if (!value || value->type == XPATH_STRING)
  {
    v6 = valueNr - 1;
    ctxt->valueNr = valueNr - 1;
    valueTab = ctxt->valueTab;
    goto LABEL_13;
  }

  xmlXPathStringFunction(ctxt, 1);
  valueNr = ctxt->valueNr;
  v6 = valueNr - 1;
  if (valueNr >= 1)
  {
    ctxt->valueNr = v6;
    valueTab = ctxt->valueTab;
    if (valueNr == 1)
    {
      v6 = 0;
      v8 = 0;
      goto LABEL_14;
    }

LABEL_13:
    v8 = valueTab[valueNr - 2];
LABEL_14:
    ctxt->value = v8;
    v9 = valueTab[v6];
    valueTab[v6] = 0;
    valueNr = v6;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_15:
  v10 = ctxt->value;
  if (v10 && v10->type != XPATH_STRING)
  {
    xmlXPathStringFunction(ctxt, 1);
    valueNr = ctxt->valueNr;
  }

  v11 = valueNr - 1;
  if (valueNr < 1)
  {
    v13 = 0;
    v11 = valueNr;
  }

  else
  {
    ctxt->valueNr = v11;
    v12 = ctxt->valueTab;
    if (valueNr == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12[valueNr - 2];
    }

    ctxt->value = v14;
    v13 = v12[v11];
    v12[v11] = 0;
  }

  v15 = ctxt->value;
  if (v15 && v15->type != XPATH_STRING)
  {
    xmlXPathStringFunction(ctxt, 1);
    v11 = ctxt->valueNr;
  }

  v16 = v11 - 1;
  if (v11 < 1)
  {
    v18 = 0;
  }

  else
  {
    ctxt->valueNr = v16;
    v17 = ctxt->valueTab;
    if (v11 == 1)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17[v11 - 2];
    }

    ctxt->value = v19;
    v18 = v17[v16];
    v17[v16] = 0;
  }

  v20 = xmlBufCreate();
  if (v20)
  {
    v21 = xmlUTF8Strlen(v9->stringval);
    v22 = v18[4];
    v23 = *v22;
    if (*v22)
    {
      v24 = v21;
      do
      {
        v25 = xmlUTF8Strloc(v13->stringval, v22);
        v26 = v22;
        if (v25 < 0 || v25 < v24 && (v26 = xmlUTF8Strpos(v9->stringval, v25)) != 0)
        {
          v27 = xmlUTF8Strsize(v26, 1);
          xmlBufAdd(v20, v26, v27);
        }

        ++v22;
        if ((v23 & 0x80) != 0)
        {
          if ((~v23 & 0xC0) != 0)
          {
LABEL_49:
            v29 = *__xmlGenericError();
            v30 = __xmlGenericErrorContext();
            v29(*v30, "xmlXPathTranslateFunction: Invalid UTF8 string\n");
            break;
          }

          while ((v23 & 0x40) != 0)
          {
            LOBYTE(v23) = 2 * v23;
            v28 = *v22++;
            if ((v28 & 0xC0) != 0x80)
            {
              goto LABEL_49;
            }
          }
        }

        v23 = *v22;
      }

      while (*v22);
    }
  }

  context = ctxt->context;
  v32 = xmlBufContent(v20);
  v33 = xmlXPathCacheNewString(context, v32);
  valuePush(ctxt, v33);
  xmlBufFree(v20);
  xmlXPathReleaseObject(ctxt->context, v18);
  xmlXPathReleaseObject(ctxt->context, v13);
  v34 = ctxt->context;

  xmlXPathReleaseObject(v34, v9);
}

void xmlXPathBooleanFunction(xmlXPathParserContextPtr ctxt, int nargs)
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
      v7 = 23;
    }

    else
    {
      valueTab = ctxt->valueTab;
      v5 = valueNr - 1;
      ctxt->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = valueTab[valueNr - 2];
      }

      ctxt->value = v6;
      v8 = valueTab[v5];
      valueTab[v5] = 0;
      if (v8)
      {
        if (v8->type != XPATH_BOOLEAN)
        {
          context = ctxt->context;
          v10 = xmlXPathCastToBoolean(v8);
          v11 = xmlXPathCacheNewBoolean(context, v10);
          xmlXPathReleaseObject(context, v8);
          v8 = v11;
        }

        valuePush(ctxt, v8);
        return;
      }

      v7 = 10;
    }
  }

  else
  {
    v7 = 12;
  }

  xmlXPathErr(ctxt, v7);
}

void xmlXPathNotFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (ctxt)
  {
    v2 = ctxt;
    if (nargs == 1)
    {
      if (ctxt->valueNr <= 0)
      {
        v4 = 23;
      }

      else
      {
        value = ctxt->value;
        if (value)
        {
          if (value->type == XPATH_BOOLEAN || (xmlXPathBooleanFunction(ctxt, 1), (value = v2->value) != 0) && value->type == XPATH_BOOLEAN)
          {
            value->BOOLval = value->BOOLval == 0;
            return;
          }
        }

        ctxt = v2;
        v4 = 11;
      }
    }

    else
    {
      v4 = 12;
    }

    xmlXPathErr(ctxt, v4);
  }
}

void xmlXPathTrueFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  v4 = xmlXPathCacheNewBoolean(ctxt->context, 1);

  valuePush(ctxt, v4);
}

void xmlXPathFalseFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  if (nargs)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  v4 = xmlXPathCacheNewBoolean(ctxt->context, 0);

  valuePush(ctxt, v4);
}

void xmlXPathLangFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs == 1)
  {
    valueNr = ctxt->valueNr;
    if (valueNr <= 0)
    {
      v8 = 23;
    }

    else
    {
      value = ctxt->value;
      if (value)
      {
        if (value->type == XPATH_STRING)
        {
          goto LABEL_6;
        }

        xmlXPathStringFunction(ctxt, 1);
        v9 = v2->value;
        if (v9 && *v9 == 4)
        {
          valueNr = v2->valueNr;
          if (valueNr < 1)
          {
            v10 = 0;
            goto LABEL_21;
          }

LABEL_6:
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
          v10 = valueTab[v6];
          valueTab[v6] = 0;
LABEL_21:
          v11 = v10[4];
          Lang = xmlNodeGetLang(v2->context->node);
          v13 = Lang;
          if (Lang)
          {
            v14 = v11 == 0;
          }

          else
          {
            v14 = 1;
          }

          if (v14)
          {
            v15 = 0;
            if (!Lang)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v16 = *v11;
            if (*v11)
            {
              v17 = 0;
              v18 = v11 + 1;
              while (1)
              {
                v19 = __toupper(v16);
                if (v19 != __toupper(v13[v17]))
                {
                  break;
                }

                v20 = v17 + 1;
                v16 = v18[v17++];
                if (!v16)
                {
                  goto LABEL_34;
                }
              }

              v15 = 0;
            }

            else
            {
              v20 = 0;
LABEL_34:
              v21 = v13[v20];
              if (v21)
              {
                v22 = v21 == 45;
              }

              else
              {
                v22 = 1;
              }

              v15 = v22;
            }
          }

          free(v13);
LABEL_42:
          xmlXPathReleaseObject(v2->context, v10);
          v23 = xmlXPathCacheNewBoolean(v2->context, v15);

          valuePush(v2, v23);
          return;
        }
      }

      ctxt = v2;
      v8 = 11;
    }
  }

  else
  {
    v8 = 12;
  }

  xmlXPathErr(ctxt, v8);
}

void xmlXPathSumFunction(xmlXPathParserContextPtr ctxt, int nargs)
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
      v8 = 23;
    }

    else
    {
      value = ctxt->value;
      if (value && (value->type | 8) == 9)
      {
        valueTab = ctxt->valueTab;
        v6 = valueNr - 1;
        ctxt->valueNr = valueNr - 1;
        if (valueNr == 1)
        {
          v7 = 0;
        }

        else
        {
          v7 = valueTab[valueNr - 2];
        }

        ctxt->value = v7;
        v9 = valueTab[v6];
        valueTab[v6] = 0;
        v10 = v9[1];
        v11 = 0.0;
        if (v10 && *v10 >= 1)
        {
          v12 = 0;
          do
          {
            v11 = v11 + xmlXPathCastNodeToNumber(*(*(v10 + 1) + 8 * v12++));
            v10 = v9[1];
          }

          while (v12 < *v10);
        }

        v13 = xmlXPathCacheNewFloat(v11, ctxt->context);
        valuePush(ctxt, v13);
        context = ctxt->context;

        xmlXPathReleaseObject(context, v9);
        return;
      }

      v8 = 11;
    }
  }

  else
  {
    v8 = 12;
  }

  xmlXPathErr(ctxt, v8);
}

void xmlXPathFloorFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (ctxt)
  {
    v2 = ctxt;
    if (nargs == 1)
    {
      if (ctxt->valueNr <= 0)
      {
        v4 = 23;
      }

      else
      {
        value = ctxt->value;
        if (value)
        {
          if (value->type == XPATH_NUMBER || (xmlXPathNumberFunction(ctxt, 1), (value = v2->value) != 0) && value->type == XPATH_NUMBER)
          {
            value->floatval = floor(value->floatval);
            return;
          }
        }

        ctxt = v2;
        v4 = 11;
      }
    }

    else
    {
      v4 = 12;
    }

    xmlXPathErr(ctxt, v4);
  }
}

void xmlXPathCeilingFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (ctxt)
  {
    v2 = ctxt;
    if (nargs == 1)
    {
      if (ctxt->valueNr <= 0)
      {
        v4 = 23;
      }

      else
      {
        value = ctxt->value;
        if (value)
        {
          if (value->type == XPATH_NUMBER || (xmlXPathNumberFunction(ctxt, 1), (value = v2->value) != 0) && value->type == XPATH_NUMBER)
          {
            value->floatval = ceil(value->floatval);
            return;
          }
        }

        ctxt = v2;
        v4 = 11;
      }
    }

    else
    {
      v4 = 12;
    }

    xmlXPathErr(ctxt, v4);
  }
}

void xmlXPathRoundFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (nargs == 1)
  {
    if (ctxt->valueNr <= 0)
    {
      v8 = 23;
    }

    else
    {
      value = ctxt->value;
      if (value)
      {
        if (value->type == XPATH_NUMBER || (xmlXPathNumberFunction(ctxt, 1), (value = v2->value) != 0) && value->type == XPATH_NUMBER)
        {
          floatval = value->floatval;
          if (floatval >= -0.5 && floatval < 0.5)
          {
            v7 = floatval * 0.0;
          }

          else
          {
            v6 = floor(floatval);
            if (floatval - v6 >= 0.5)
            {
              v7 = v6 + 1.0;
            }

            else
            {
              v7 = v6;
            }
          }

          value->floatval = v7;
          return;
        }
      }

      ctxt = v2;
      v8 = 11;
    }
  }

  else
  {
    v8 = 12;
  }

  xmlXPathErr(ctxt, v8);
}

xmlChar *__cdecl xmlXPathParseName(xmlXPathParserContextPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  cur = ctxt->cur;
  if (!cur)
  {
    return 0;
  }

  v3 = *cur;
  if ((v3 & 0xFFFFFFDF) - 65 >= 0x1A && v3 != 95 && v3 != 58)
  {
    goto LABEL_23;
  }

  for (i = 1; ; ++i)
  {
    v5 = cur[i];
    if ((v5 - 48) >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A && ((v5 - 45) > 0x32 || ((1 << (v5 - 45)) & 0x4000000002003) == 0))
    {
      break;
    }
  }

  if (cur[i] && (v5 & 0x80) == 0)
  {
    v8 = &cur[i];
    if (i >= 0xC351)
    {
      ctxt->cur = v8;
      xmlXPathErr(ctxt, 7);
      return 0;
    }

    result = xmlStrndup(cur, i);
    ctxt->cur = v8;
  }

  else
  {
LABEL_23:

    return xmlXPathParseNameComplex(ctxt, 1);
  }

  return result;
}

int xmlXPathEvalPredicate(xmlXPathContextPtr ctxt, xmlXPathObjectPtr res)
{
  v2 = ctxt;
  LODWORD(ctxt) = 0;
  if (v2 && res)
  {
    type = res->type;
    if (res->type > XPATH_BOOLEAN)
    {
      if (type == XPATH_NUMBER)
      {
        LODWORD(ctxt) = res->floatval == v2->proximityPosition;
        return ctxt;
      }

      if (type == XPATH_STRING)
      {
        ctxt = res->stringval;
        if (!ctxt)
        {
          return ctxt;
        }

        v5 = xmlStrlen(ctxt) == 0;
        goto LABEL_16;
      }

      if (type != XPATH_XSLT_TREE)
      {
        goto LABEL_19;
      }

LABEL_11:
      nodesetval = res->nodesetval;
      if (!nodesetval)
      {
LABEL_20:
        LODWORD(ctxt) = 0;
        return ctxt;
      }

      v5 = nodesetval->nodeNr == 0;
LABEL_16:
      LODWORD(ctxt) = !v5;
      return ctxt;
    }

    if (type == XPATH_NODESET)
    {
      goto LABEL_11;
    }

    if (type != XPATH_BOOLEAN)
    {
LABEL_19:
      v6 = *__xmlGenericError();
      v7 = __xmlGenericErrorContext();
      v6(*v7, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 13936);
      goto LABEL_20;
    }

    LODWORD(ctxt) = res->BOOLval;
  }

  return ctxt;
}

int xmlXPathEvaluatePredicateResult(xmlXPathParserContextPtr ctxt, xmlXPathObjectPtr res)
{
  result = 0;
  if (ctxt && res)
  {
    type = res->type;
    if (res->type <= XPATH_NUMBER)
    {
      if (type != XPATH_NODESET)
      {
        if (type == XPATH_BOOLEAN)
        {
          return res->BOOLval;
        }

        if (type == XPATH_NUMBER)
        {
          return res->floatval == ctxt->context->proximityPosition;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }

    switch(type)
    {
      case XPATH_STRING:
        stringval = res->stringval;
        if (stringval)
        {
          v7 = *stringval;
          return v7 != 0;
        }

        break;
      case XPATH_LOCATIONSET:
        user = res->user;
        if (user)
        {
LABEL_19:
          v7 = *user;
          return v7 != 0;
        }

        break;
      case XPATH_XSLT_TREE:
LABEL_11:
        user = &res->nodesetval->nodeNr;
        if (!user)
        {
          return 0;
        }

        goto LABEL_19;
      default:
LABEL_15:
        v8 = *__xmlGenericError();
        v9 = __xmlGenericErrorContext();
        v8(*v9, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 13987);
        return 0;
    }

    return 0;
  }

  return result;
}

xmlXPathCompExprPtr xmlXPathCtxtCompile(xmlXPathContextPtr ctxt, const xmlChar *str)
{
  comp = xmlXPathTryStreamCompile(ctxt, str);
  if (!comp)
  {
    xmlInitParser();
    v5 = xmlXPathNewParserContext(str, ctxt);
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v7 = linkedOnOrAfterFall2022OSVersions();
    if (ctxt && v7)
    {
      ctxt->depth = 0;
    }

    xmlXPathCompileExpr(v6, 1);
    if (v6->error)
    {
LABEL_9:
      xmlXPathFreeParserContext(v6);
      return 0;
    }

    if (*v6->cur)
    {
      xmlXPathErr(v6, 7);
      goto LABEL_9;
    }

    comp = v6->comp;
    if (*comp >= 2 && (comp[4] & 0x80000000) == 0)
    {
      v9 = linkedOnOrAfterFall2022OSVersions();
      if (ctxt && v9)
      {
        ctxt->depth = 0;
      }

      xmlXPathOptimizeExpression(v6, (*(comp + 1) + 56 * comp[4]));
    }

    v6->comp = 0;
    xmlXPathFreeParserContext(v6);
    *(comp + 3) = xmlStrdup(str);
  }

  return comp;
}

xmlXPathObjectPtr xmlXPathCompiledEval(xmlXPathCompExprPtr comp, xmlXPathContextPtr ctx)
{
  v3 = 0;
  xmlXPathCompiledEvalInternal(comp, ctx, &v3, 0);
  return v3;
}

uint64_t xmlXPathCompiledEvalInternal(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (!a2)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0xCu, 1, 3, "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpath.c", 14273, 0, 0, 0, 0, 0, "NULL context pointer\n", v21);
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  xmlInitParser();
  v8 = malloc_type_malloc(0x58uLL, 0x10F0040D3860B81uLL);
  v9 = v8;
  if (v8)
  {
    v8[10] = 0;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    *v8 = 0u;
    v10 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    *(v9 + 48) = v10;
    if (v10)
    {
      *(v9 + 40) = 0xA00000000;
      *(v9 + 24) = a2;
      *(v9 + 32) = 0;
      *(v9 + 56) = a1;
    }

    else
    {
      free(v9);
      xmlXPathErrMemory(a2, "creating evaluation context\n");
      v9 = 0;
    }
  }

  else
  {
    xmlXPathErrMemory(a2, "creating evaluation context\n");
  }

  v11 = xmlXPathRunEval(v9, a4);
  if (!*(v9 + 16))
  {
    v13 = *(v9 + 40);
    if (v13 >= 1)
    {
      v14 = *(v9 + 48);
      v15 = v13 - 1;
      *(v9 + 40) = v13 - 1;
      if (v13 == 1)
      {
        *(v9 + 32) = 0;
        v12 = *(v14 + 8 * v15);
        *(v14 + 8 * v15) = 0;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(v9 + 32) = *(v14 + 8 * v13 - 16);
        v12 = *(v14 + 8 * v15);
        *(v14 + 8 * v15) = 0;
        if (v12)
        {
          v17 = *__xmlGenericError();
          v18 = __xmlGenericErrorContext();
          v17(*v18, "xmlXPathCompiledEval: %d object(s) left on the stack.\n", *(v9 + 40));
          goto LABEL_12;
        }
      }
    }

    if (!a4)
    {
      v19 = *__xmlGenericError();
      v20 = __xmlGenericErrorContext();
      v19(*v20, "xmlXPathCompiledEval: No result on the stack.\n");
    }
  }

  v12 = 0;
LABEL_12:
  if (a3)
  {
    *a3 = v12;
  }

  else
  {
    xmlXPathReleaseObject(a2, v12);
  }

  *(v9 + 56) = 0;
  xmlXPathFreeParserContext(v9);
  return v11;
}

int xmlXPathSetContextNode(xmlNodePtr node, xmlXPathContextPtr ctx)
{
  result = -1;
  if (node && ctx && node->doc == ctx->doc)
  {
    result = 0;
    ctx->node = node;
  }

  return result;
}

xmlXPathObjectPtr xmlXPathNodeEval(xmlNodePtr node, const xmlChar *str, xmlXPathContextPtr ctx)
{
  if (!str || !node || !ctx || node->doc != ctx->doc)
  {
    return 0;
  }

  ctx->node = node;
  return xmlXPathEval(str, ctx);
}

double xmlXPathNameFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  v2 = ctxt;
  if (a2)
  {
    if (!ctxt)
    {
      return result;
    }

    if (a2 != 1)
    {
      v3 = 12;
LABEL_14:

      xmlXPathErr(ctxt, v3);
      return result;
    }
  }

  else
  {
    v4 = xmlXPathCacheNewNodeSet(ctxt->context, ctxt->context->node);
    valuePush(v2, v4);
  }

  valueNr = v2->valueNr;
  if (valueNr <= 0)
  {
    ctxt = v2;
    v3 = 23;
    goto LABEL_14;
  }

  value = v2->value;
  if (!value || (*value | 8) != 9)
  {
    ctxt = v2;
    v3 = 11;
    goto LABEL_14;
  }

  valueTab = v2->valueTab;
  v8 = valueNr - 1;
  v2->valueNr = valueNr - 1;
  if (valueNr == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = valueTab[valueNr - 2];
  }

  v2->value = v9;
  v11 = valueTab[v8];
  valueTab[v8] = 0;
  v12 = v11[1];
  if (!v12 || !*v12)
  {
    goto LABEL_22;
  }

  v13 = **(v12 + 8);
  if ((*(v13 + 8) - 1) > 1)
  {
    v17 = xmlXPathCacheNewNodeSet(v2->context, v13);
    valuePush(v2, v17);
    xmlXPathLocalNameFunction(v2, 1);
    goto LABEL_24;
  }

  v14 = *(v13 + 16);
  if (*v14 != 32)
  {
    v18 = *(v13 + 72);
    if (v18 && (v19 = *(v18 + 24)) != 0)
    {
      v20 = xmlBuildQName(v14, v19, 0, 0);
      v21 = *(**(v11[1] + 8) + 16);
      if (v20 == v21)
      {
        v20 = xmlStrdup(v21);
      }

      if (!v20)
      {
        ctxt = v2;
        v3 = 15;
        goto LABEL_14;
      }

      v15 = xmlXPathCacheWrapString(v2->context, v20);
    }

    else
    {
      v15 = xmlXPathCacheNewString(v2->context, v14);
    }
  }

  else
  {
LABEL_22:
    v15 = xmlXPathCacheNewCString(v2->context);
  }

  valuePush(v2, v15);
LABEL_24:
  context = v2->context;

  return xmlXPathReleaseObject(context, v11);
}

double xmlXPathEscapeUriFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return result;
  }

  if (a2 != 2)
  {
    v3 = 12;
    goto LABEL_6;
  }

  if (ctxt->valueNr > 1)
  {
    v27 = 37;
    v5 = xmlXPathPopBoolean(ctxt);
    value = ctxt->value;
    if (value && value->type != XPATH_STRING)
    {
      xmlXPathStringFunction(ctxt, 1);
    }

    valueNr = ctxt->valueNr;
    if (valueNr < 1)
    {
      v11 = 0;
    }

    else
    {
      valueTab = ctxt->valueTab;
      v9 = valueNr - 1;
      ctxt->valueNr = valueNr - 1;
      if (valueNr == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = valueTab[valueNr - 2];
      }

      ctxt->value = v10;
      v11 = valueTab[v9];
      valueTab[v9] = 0;
    }

    v12 = xmlBufCreate();
    if (!v12 || (v13 = v11[4], (v14 = *v13) == 0))
    {
LABEL_46:
      context = ctxt->context;
      v25 = xmlBufContent(v12);
      v26 = xmlXPathCacheNewString(context, v25);
      valuePush(ctxt, v26);
      xmlBufFree(v12);
      return xmlXPathReleaseObject(ctxt->context, v11);
    }

    while (1)
    {
      if (v14 - 48 < 0xA || (v14 & 0xDF) - 65 < 0x1A)
      {
        goto LABEL_24;
      }

      v15 = v14 - 33;
      if (v15 > 0x3E)
      {
        goto LABEL_35;
      }

      if (((1 << (v14 - 33)) & 0x40000000000033C1) != 0)
      {
        goto LABEL_24;
      }

      if (v15 == 4)
      {
        if ((v13[1] - 48) < 0xAu || (v20 = v13[1] - 65, v20 <= 0x25) && ((1 << v20) & 0x3F0000003FLL) != 0)
        {
          if ((v13[2] - 48) < 0xAu)
          {
            goto LABEL_24;
          }

          v21 = v13[2] - 65;
          if (v21 <= 0x25 && ((1 << v21) & 0x3F0000003FLL) != 0)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
LABEL_35:
        if (v14 == 126)
        {
          goto LABEL_24;
        }
      }

      if (v5 || v14 - 36 > 0x1C || ((1 << (v14 - 36)) & 0x1AC00985) == 0)
      {
        v22 = (v14 >> 4) | 0x30;
        if (v14 >= 0xA0)
        {
          LOBYTE(v22) = (v14 >> 4) + 55;
        }

        BYTE1(v27) = v22;
        if ((v14 & 0xF) >= 0xA)
        {
          v23 = (v14 & 0xF) + 55;
        }

        else
        {
          v23 = v14 & 0xF | 0x30;
        }

        BYTE2(v27) = v23;
        v17 = &v27;
        v16 = v12;
        v18 = 3;
        goto LABEL_25;
      }

LABEL_24:
      v16 = v12;
      v17 = v13;
      v18 = 1;
LABEL_25:
      xmlBufAdd(v16, v17, v18);
      v19 = *++v13;
      v14 = v19;
      if (!v19)
      {
        goto LABEL_46;
      }
    }
  }

  v3 = 23;
LABEL_6:

  xmlXPathErr(ctxt, v3);
  return result;
}

uint64_t libxml_domnode_tim_sort_merge(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a2 + 16 * a3;
  v6 = *(v5 - 8);
  v7 = *(v5 - 32);
  v8 = *(v5 - 24);
  if (v8 >= v6)
  {
    v9 = *(v5 - 8);
  }

  else
  {
    v9 = *(v5 - 24);
  }

  v10 = *(a4 + 8);
  if (*a4 < v9)
  {
    v12 = malloc_type_realloc(*(a4 + 8), 8 * v9, 0x2004093837F09uLL);
    if (!v12)
    {
      fprintf(*MEMORY[0x1E69E9848], "Error allocating temporary storage for tim sort: need %lu bytes", 8 * v9);
      exit(1);
    }

    v10 = v12;
    *a4 = v9;
    *(a4 + 8) = v12;
  }

  if (v8 >= v6)
  {
    v22 = v7 + v8;
    result = memcpy(v10, (a1 + 8 * (v7 + v8)), 8 * v6);
    v23 = v22 + v6;
    if (v22 + v6 > v7)
    {
      v24 = a1 - 8;
      do
      {
        if (v6 && v22 > v7)
        {
          v25 = *(v24 + 8 * v22);
          v26 = *(v10 + v6 - 1);
          result = xmlXPathCmpNodesExt(v25, v26);
          if (result == -2 || (result & 0x80000000) == 0)
          {
            --v6;
            *(v24 + 8 * v23) = v26;
          }

          else
          {
            --v22;
            *(v24 + 8 * v23) = v25;
          }
        }

        else
        {
          if (!v6)
          {
            return result;
          }

          --v6;
          *(v24 + 8 * v23) = *(v10 + v6);
        }

        --v23;
      }

      while (v23 > v7);
    }
  }

  else
  {
    v13 = (a1 + 8 * v7);
    result = memcpy(v10, v13, 8 * v8);
    v15 = v7 + v8;
    v16 = v7 + v8 + v6;
    if (v7 < v16)
    {
      v17 = 0;
      v18 = v8 + v6;
      do
      {
        if (v17 >= v8 || v15 >= v16)
        {
          if (v17 >= v8)
          {
            return result;
          }

          v21 = *(v10 + v17++);
          *v13 = v21;
        }

        else
        {
          v19 = *(v10 + v17);
          v20 = *(a1 + 8 * v15);
          result = xmlXPathCmpNodesExt(v19, v20);
          if (result == -2 || (result & 0x80000000) == 0)
          {
            ++v17;
            *v13 = v19;
          }

          else
          {
            ++v15;
            *v13 = v20;
          }
        }

        ++v13;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void xmlXPathCacheFreeObjectList(int *a1)
{
  if (a1[2] >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*a1 + 8 * v2);
      v4 = v3[1];
      if (v4)
      {
        if (v4[1])
        {
          free(v4[1]);
          v4 = v3[1];
        }

        free(v4);
      }

      free(v3);
      ++v2;
    }

    while (v2 < a1[2]);
  }

  if (*a1)
  {
    free(*a1);
  }

  free(a1);
}

void *xmlPointerListCreate()
{
  v0 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
    xmlPointerListAddSize(v0, 0, 10);
    *(v1 + 2) = 0;
  }

  else
  {
    xmlXPathErrMemory(0, "xmlPointerListCreate: allocating item\n");
  }

  return v1;
}

uint64_t xmlPointerListAddSize(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    if (v7 <= v6)
    {
      if (v7 >= 50000001)
      {
        v8 = "xmlPointerListAddSize: re-allocating item\n";
LABEL_14:
        xmlXPathErrMemory(0, v8);
        return 0xFFFFFFFFLL;
      }

      *(a1 + 12) = 2 * v7;
      v5 = malloc_type_realloc(v5, 16 * v7, 0x80040B8603338uLL);
      *a1 = v5;
      if (!v5)
      {
        xmlXPathErrMemory(0, "xmlPointerListAddSize: re-allocating item\n");
        *(a1 + 12) = 0;
        return 0xFFFFFFFFLL;
      }

      v6 = *(a1 + 8);
    }
  }

  else
  {
    if (a3 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3;
    }

    v5 = malloc_type_malloc(8 * v9, 0x80040B8603338uLL);
    *a1 = v5;
    if (!v5)
    {
      v8 = "xmlPointerListCreate: allocating item\n";
      goto LABEL_14;
    }

    v6 = 0;
    *(a1 + 12) = v9;
  }

  v10 = 0;
  *(a1 + 8) = v6 + 1;
  *(v5 + v6) = a2;
  return v10;
}

xmlChar *xmlXPathParseLiteral(xmlXPathParserContextPtr ctxt)
{
  v1 = ctxt;
  cur = ctxt->cur;
  v3 = *ctxt->cur;
  if (v3 == 39)
  {
    v4 = cur + 1;
    for (i = cur + 1; ; ++i)
    {
      v1->cur = i;
      v7 = *i;
      if (v7 <= 0x1F)
      {
        if (v7 > 0xD || ((1 << v7) & 0x2600) == 0)
        {
LABEL_22:
          ctxt = v1;
          v9 = 2;
          goto LABEL_20;
        }
      }

      else if (v7 == 39)
      {
LABEL_17:
        result = xmlStrndup(v4, i - v4);
        if (*v1->cur)
        {
          ++v1->cur;
        }

        return result;
      }
    }
  }

  if (v3 == 34)
  {
    v4 = cur + 1;
    for (i = cur + 1; ; ++i)
    {
      v1->cur = i;
      v6 = *i;
      if (v6 <= 0x1F)
      {
        if (v6 > 0xD || ((1 << v6) & 0x2600) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v6 == 34)
      {
        goto LABEL_17;
      }
    }
  }

  v9 = 3;
LABEL_20:
  xmlXPathErr(ctxt, v9);
  return 0;
}

uint64_t xmlXPathRunStreamEval(uint64_t a1, xmlPatternPtr comp, uint64_t a3, int a4)
{
  v4 = 0xFFFFFFFFLL;
  if (!a1)
  {
    return v4;
  }

  if (!comp)
  {
    return v4;
  }

  v9 = xmlPatternMaxDepth(comp);
  if (v9 == -1)
  {
    return v4;
  }

  v10 = v9 == -2 ? 10000 : v9;
  v11 = xmlPatternMinDepth(comp);
  if (v11 == -1)
  {
    return v4;
  }

  v12 = v11;
  v13 = xmlPatternFromRoot(comp);
  if (v13 < 0)
  {
    return v4;
  }

  v14 = v13;
  if (!a4)
  {
    if (!a3)
    {
      return v4;
    }

    v18 = xmlXPathCacheNewNodeSet(a1, 0);
    *a3 = v18;
    if (!v18)
    {
      return v4;
    }
  }

  if (!v12)
  {
    if (v14)
    {
      if (!a4)
      {
        xmlXPathNodeSetAddUnique(*(*a3 + 8), *a1);
        if (!v10)
        {
          return 0;
        }

        goto LABEL_12;
      }
    }

    else if (!a4)
    {
      xmlXPathNodeSetAddUnique(*(*a3 + 8), *(a1 + 8));
      if (!v10)
      {
        return 0;
      }

      goto LABEL_25;
    }

    return 1;
  }

  if (!v10)
  {
    return 0;
  }

LABEL_12:
  if (v14)
  {
    v15 = *a1;
    if (*a1)
    {
      v16 = 0;
      v17 = 0;
      goto LABEL_28;
    }

    return 0;
  }

LABEL_25:
  v16 = *(a1 + 8);
  if (!v16)
  {
    return 0;
  }

  v4 = 0;
  HIDWORD(v20) = *(v16 + 8) - 1;
  LODWORD(v20) = HIDWORD(v20);
  v19 = v20 >> 1;
  if (v19 > 0xA)
  {
    return v4;
  }

  v17 = 1;
  v15 = *(a1 + 8);
  if (((1 << v19) & 0x471) == 0)
  {
    return v4;
  }

LABEL_28:
  StreamCtxt = xmlPatternGetStreamCtxt(comp);
  if (!StreamCtxt)
  {
    return 0;
  }

  v22 = StreamCtxt;
  v23 = xmlStreamWantsAnyNode(StreamCtxt);
  if ((v17 & 1) == 0 && xmlStreamPush(v22, 0, 0) == 1)
  {
    if (a4)
    {
LABEL_32:
      v4 = 1;
      goto LABEL_37;
    }

    xmlXPathNodeSetAddUnique(*(*a3 + 8), v15);
  }

  if (v15->type == XML_NAMESPACE_DECL)
  {
    goto LABEL_36;
  }

  v25 = 0;
  while (1)
  {
    children = v15->children;
    v27 = children && v25 < v10;
    if (!v27)
    {
      break;
    }

    type = children->type;
    if (type == XML_ENTITY_DECL)
    {
      break;
    }

    ++v25;
    if (type == XML_DTD_NODE)
    {
      goto LABEL_47;
    }

LABEL_69:
    if (v25 < 0)
    {
      goto LABEL_36;
    }

LABEL_70:
    v15 = children;
LABEL_71:
    if (linkedOnOrAfterFall2022OSVersions())
    {
      v36 = *(a1 + 352);
      if (v36)
      {
        v37 = *(a1 + 360);
        if (v37 >= v36)
        {
          v45 = *__xmlGenericError();
          v46 = __xmlGenericErrorContext();
          v45(*v46, "XPath operation limit exceeded\n");
          v4 = 0xFFFFFFFFLL;
          goto LABEL_37;
        }

        *(a1 + 360) = v37 + 1;
      }
    }

    v38 = v15->type;
    if (v38 <= 8)
    {
      if (((1 << v38) & 0x198) != 0)
      {
        if (v23)
        {
          v39 = xmlStreamPushNode(v22, 0, 0, v38);
LABEL_84:
          if (v39 == 1)
          {
            if (a4)
            {
              goto LABEL_32;
            }

            if (xmlXPathNodeSetAddUnique(*(*a3 + 8), v15) < 0)
            {
              *(a1 + 232) = 0x20000000CLL;
            }
          }

          if (!v15->children || v25 >= v10)
          {
            xmlStreamPop(v22);
            while (1)
            {
              next = v15->next;
              if (!next)
              {
                break;
              }

              v15 = v15->next;
              v43 = next->type;
              if (v43 != XML_ENTITY_DECL && v43 != XML_DTD_NODE)
              {
                goto LABEL_71;
              }
            }
          }
        }
      }

      else if (v38 == 1)
      {
        ns = v15->ns;
        if (ns)
        {
          href = ns->href;
        }

        else
        {
          href = 0;
        }

        v39 = xmlStreamPush(v22, v15->name, href);
        goto LABEL_84;
      }
    }

    v4 = 0;
    if (v15->type == XML_NAMESPACE_DECL)
    {
      goto LABEL_37;
    }
  }

  children = v15;
LABEL_47:
  if (children != v16)
  {
    while (1)
    {
      v29 = children->next;
      if (!v29)
      {
        break;
      }

      children = children->next;
      v30 = v29->type;
      if (v30 != XML_DTD_NODE && v30 != XML_ENTITY_DECL)
      {
        goto LABEL_70;
      }
    }

    while (1)
    {
      children = children->parent;
      if (!children || children == v16)
      {
        break;
      }

      v33 = children->type;
      if (v33 == 1)
      {
        goto LABEL_65;
      }

      if (v33 == 9)
      {
        break;
      }

      if (v23)
      {
        v27 = v33 > 8;
        v34 = (1 << v33) & 0x198;
        if (!v27 && v34 != 0)
        {
LABEL_65:
          xmlStreamPop(v22);
        }
      }

      --v25;
      if (children->next)
      {
        children = children->next;
        goto LABEL_69;
      }
    }
  }

LABEL_36:
  v4 = 0;
LABEL_37:
  xmlFreeStreamCtxt(v22);
  return v4;
}

uint64_t xmlXPathCheckOpLimit(xmlXPathParserContext *a1, unint64_t a2)
{
  result = linkedOnOrAfterFall2022OSVersions();
  if (result)
  {
    context = a1->context;
    opLimit = context->opLimit;
    if (opLimit >= a2 && (opCount = context->opCount, opCount <= opLimit - a2))
    {
      result = 0;
      context->opCount = opCount + a2;
    }

    else
    {
      context->opCount = opLimit;
      xmlXPathErr(a1, 25);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

xmlNodeSet *xmlXPathNodeSetMergeAndClear(xmlNodeSet *a1, int *a2)
{
  v3 = a1;
  if (*a2 >= 1)
  {
    v4 = 0;
    nodeNr = a1->nodeNr;
    do
    {
      v6 = *(*(a2 + 1) + 8 * v4);
      if (nodeNr < 1)
      {
LABEL_11:
        v9 = v3->nodeNr;
        if (v3->nodeNr >= v3->nodeMax)
        {
          if ((xmlXPathNodeSetGrow(v3) & 0x80000000) != 0)
          {
            xmlXPathFreeNodeSet(v3);
            xmlXPathNodeSetClearFromPos(a2, 0, 1);
            return 0;
          }

          v9 = v3->nodeNr;
        }

        nodeTab = v3->nodeTab;
        v3->nodeNr = v9 + 1;
        nodeTab[v9] = v6;
      }

      else
      {
        v7 = 0;
        while (1)
        {
          v8 = v3->nodeTab[v7];
          if (v8 == v6)
          {
            break;
          }

          if (v8->type == XML_NAMESPACE_DECL && *(v6 + 8) == 18 && v8->_private == *v6 && xmlStrEqual(v8->children, *(v6 + 24)))
          {
            xmlXPathNodeSetFreeNs(v6);
            break;
          }

          if (nodeNr == ++v7)
          {
            goto LABEL_11;
          }
        }
      }

      *(*(a2 + 1) + 8 * v4++) = 0;
    }

    while (v4 < *a2);
  }

  *a2 = 0;
  return v3;
}

xmlNodeSet *xmlXPathNodeSetMergeAndClearNoDupls(xmlNodeSet *a1, int *a2)
{
  v3 = a1;
  if (*a2 >= 1)
  {
    v4 = 0;
    nodeNr = a1->nodeNr;
    do
    {
      v6 = *(*(a2 + 1) + 8 * v4);
      if (nodeNr >= v3->nodeMax)
      {
        if ((xmlXPathNodeSetGrow(v3) & 0x80000000) != 0)
        {
          xmlXPathFreeNodeSet(v3);
          xmlXPathNodeSetClearFromPos(a2, 0, 1);
          return 0;
        }

        nodeNr = v3->nodeNr;
      }

      v3->nodeTab[nodeNr++] = v6;
      v3->nodeNr = nodeNr;
      *(*(a2 + 1) + 8 * v4++) = 0;
    }

    while (v4 < *a2);
  }

  *a2 = 0;
  return v3;
}

uint64_t xmlXPathNextPrecedingInternal(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  if (!a2)
  {
    a2 = v2[1];
    if (!a2)
    {
      return 0;
    }

    v3 = *(a2 + 2);
    if (v3 == 18)
    {
      a2 = *a2;
      if (!a2 || *(a2 + 2) == 18)
      {
        return 0;
      }
    }

    else if (v3 == 2)
    {
      a2 = a2[5];
    }

    *(a1 + 72) = a2[5];
  }

  if (*(a2 + 2) == 18)
  {
    return 0;
  }

  v6 = a2[7];
  if (!v6)
  {
    goto LABEL_18;
  }

  if (*(v6 + 8) == 14)
  {
    a2 = a2[7];
  }

  v7 = a2[7];
  if (v7)
  {
    do
    {
LABEL_23:
      v4 = v7;
      v7 = *(v7 + 32);
    }

    while (v7);
  }

  else
  {
LABEL_18:
    v4 = a2[5];
    while (v4)
    {
      if (v4 == *(*v2 + 24))
      {
        return 0;
      }

      if (v4 != *(a1 + 72))
      {
        break;
      }

      v7 = *(v4 + 56);
      v4 = *(v4 + 40);
      *(a1 + 72) = v4;
      if (v7)
      {
        goto LABEL_23;
      }
    }
  }

  return v4;
}

void xmlXPathNodeSetClearFromPos(int *a1, int a2, int a3)
{
  if (a1)
  {
    v5 = *a1;
    if (*a1 > a2)
    {
      if (a3)
      {
        v6 = a2;
        do
        {
          v7 = *(*(a1 + 1) + 8 * v6);
          if (v7)
          {
            if (*(v7 + 8) == 18)
            {
              xmlXPathNodeSetFreeNs(v7);
              v5 = *a1;
            }
          }

          ++v6;
        }

        while (v6 < v5);
      }

      *a1 = a2;
    }
  }
}

uint64_t xmlXPathCompOpEvalFirst(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if (linkedOnOrAfterFall2022OSVersions())
  {
    v8 = *(a1 + 24);
    if (*(v8 + 352))
    {
      if ((xmlXPathCheckOpLimit(a1, 1uLL) & 0x80000000) != 0)
      {
        return 0;
      }

      v8 = *(a1 + 24);
    }

    v9 = *(v8 + 368);
    if (v9 >= 5000)
    {
      v10 = a1;
      v11 = 26;
LABEL_10:
      xmlXPathErr(v10, v11);
      return 0;
    }

    *(v8 + 368) = v9 + 1;
  }

  v12 = *(a1 + 56);
  v3 = *a2;
  if (v3 > 9)
  {
    if (v3 <= 15)
    {
      if (v3 == 10)
      {
        v26 = a2[1];
        if (v26 != -1)
        {
          v27 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v26);
          if (*(a1 + 16))
          {
            return 0;
          }

          v3 = xmlXPathNodeCollectAndTest(a1, a2, a3, 0, 0) + v27;
          goto LABEL_99;
        }

        goto LABEL_98;
      }

      if (v3 == 11)
      {
        v23 = xmlXPathCacheObjectCopy(*(a1 + 24), *(a2 + 3));
        valuePush(a1, v23);
        goto LABEL_98;
      }

LABEL_53:
      v3 = xmlXPathCompOpEval(a1, a2);
      goto LABEL_99;
    }

    if (v3 != 16)
    {
      if (v3 == 17)
      {
        v25 = a2[1];
        if (v25 == -1)
        {
          v3 = 0;
        }

        else
        {
          v3 = xmlXPathCompOpEvalFirst(a1, *(v12 + 8) + 56 * v25, a3);
        }

        if (*(a1 + 16))
        {
          return 0;
        }

        v38 = *(a1 + 32);
        if (v38)
        {
          if (*v38 == 1)
          {
            v39 = *(v38 + 8);
            if (v39)
            {
              v40 = *v39;
              if (v40 >= 2)
              {
                libxml_domnode_tim_sort(*(v39 + 1), v40);
              }
            }
          }
        }

        goto LABEL_99;
      }

      goto LABEL_53;
    }

    if (*(a1 + 16))
    {
      goto LABEL_98;
    }

    v28 = a2[1];
    if (v28 == -1)
    {
      goto LABEL_96;
    }

    v29 = a2[2];
    if (v29 == -1)
    {
      goto LABEL_52;
    }

    v30 = *(v12 + 8);
    if (*(v30 + 56 * v28) != 17)
    {
      goto LABEL_52;
    }

    v31 = (v30 + 56 * v29);
    if (*v31 != 17)
    {
      goto LABEL_52;
    }

    v32 = v31[1];
    if (v32 == -1)
    {
      goto LABEL_52;
    }

    v33 = v30 + 56 * v32;
    if (*v33 != 13)
    {
      goto LABEL_52;
    }

    if (*(v33 + 32))
    {
      goto LABEL_52;
    }

    if (*(v33 + 12))
    {
      goto LABEL_52;
    }

    v47 = *(v33 + 24);
    if (!v47)
    {
      goto LABEL_52;
    }

    v48 = xmlStrEqual(v47, "last");
    v49 = a2[1];
    if (v48)
    {
      v63 = 0;
      v50 = xmlXPathCompOpEvalLast(a1, (*(v12 + 8) + 56 * v49), &v63);
      if (*(a1 + 16))
      {
        goto LABEL_98;
      }

      v3 = v50;
      v51 = *(a1 + 32);
      if (!v51)
      {
        goto LABEL_99;
      }

      if (*v51 != 1)
      {
        goto LABEL_99;
      }

      v52 = *(v51 + 8);
      if (!v52 || !*(v52 + 8) || *v52 < 2)
      {
        goto LABEL_99;
      }

      xmlXPathNodeSetKeepLast(v52);
      v53 = **(*(*(a1 + 32) + 8) + 8);
LABEL_108:
      *a3 = v53;
      goto LABEL_99;
    }

    v28 = a2[1];
    if (v49 == -1)
    {
LABEL_96:
      v3 = 0;
    }

    else
    {
LABEL_52:
      v3 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v28);
    }

    if (*(a1 + 16))
    {
      goto LABEL_98;
    }

    v54 = a2[2];
    if (v54 == -1)
    {
      goto LABEL_99;
    }

    v55 = *(a1 + 32);
    if (!v55)
    {
      goto LABEL_99;
    }

    if (*v55 == 1)
    {
      v57 = *(a1 + 40);
      v58 = *(a1 + 48);
      v59 = v57 - 1;
      *(a1 + 40) = v57 - 1;
      if (v57 == 1)
      {
        v60 = 0;
      }

      else
      {
        v60 = *(v58 + 8 * v57 - 16);
      }

      *(a1 + 32) = v60;
      v61 = *(v58 + 8 * v59);
      *(v58 + 8 * v59) = 0;
      nodesetval = v61->nodesetval;
      if (nodesetval)
      {
        xmlXPathNodeSetFilter(a1, &v61->nodesetval->nodeNr, v54, 1, 1, 1);
        if (nodesetval->nodeNr >= 1)
        {
          *a3 = *nodesetval->nodeTab;
        }
      }

      v37 = a1;
      v36 = v61;
LABEL_60:
      valuePush(v37, v36);
      goto LABEL_99;
    }

    if (*v55 != 7)
    {
      xmlXPathErr(a1, 11);
      goto LABEL_98;
    }

    v56 = *(v55 + 40);
    if (!v56)
    {
      goto LABEL_99;
    }

    xmlXPathLocationSetFilter(a1, *(v55 + 40), v54, 1);
    if (*v56 < 1)
    {
      goto LABEL_99;
    }

    v53 = *(**(v56 + 8) + 40);
    goto LABEL_108;
  }

  if (v3 > 7)
  {
    if (v3 != 8)
    {
      v24 = a2[1];
      if (v24 == -1)
      {
        v3 = 0;
      }

      else
      {
        v3 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v24);
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v34 = a2[2];
      if (v34 != -1)
      {
        v35 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v34);
        if (*(a1 + 16))
        {
          return 0;
        }

        v3 = (v35 + v3);
      }

      v36 = xmlXPathCacheNewNodeSet(*(a1 + 24), *(*(a1 + 24) + 8));
      v37 = a1;
      goto LABEL_60;
    }

    xmlXPathRoot(a1);
LABEL_98:
    v3 = 0;
    goto LABEL_99;
  }

  if (!v3)
  {
    goto LABEL_99;
  }

  if (v3 != 7)
  {
    goto LABEL_53;
  }

  v13 = xmlXPathCompOpEvalFirst(a1, *(v12 + 8) + 56 * a2[1], a3);
  if (*(a1 + 16))
  {
    return 0;
  }

  v3 = v13;
  v14 = *(a1 + 32);
  if (v14)
  {
    if (*v14 == 1)
    {
      v15 = *(v14 + 8);
      if (v15)
      {
        v16 = *v15;
        if (v16 >= 1)
        {
          if (v16 != 1)
          {
            libxml_domnode_tim_sort(*(v15 + 1), v16);
            v15 = *(*(a1 + 32) + 8);
          }

          *a3 = **(v15 + 1);
        }
      }
    }
  }

  v17 = xmlXPathCompOpEvalFirst(a1, *(v12 + 8) + 56 * a2[2], a3);
  if (*(a1 + 16))
  {
    return 0;
  }

  v18 = *(a1 + 40);
  if (v18 < 1)
  {
    v22 = 0;
    v21 = 0;
    goto LABEL_84;
  }

  v19 = *(a1 + 48);
  v20 = (v18 - 1);
  *(a1 + 40) = v20;
  if (v18 == 1)
  {
    v21 = 0;
    *(a1 + 32) = 0;
    v22 = *(v19 + 8 * v20);
    *(v19 + 8 * v20) = 0;
LABEL_84:
    xmlXPathReleaseObject(*(a1 + 24), v21);
    xmlXPathReleaseObject(*(a1 + 24), v22);
    v10 = a1;
    v11 = 11;
    goto LABEL_10;
  }

  v41 = v17;
  v42 = 0;
  *(a1 + 32) = *(v19 + 8 * v18 - 16);
  v22 = *(v19 + 8 * v20);
  *(v19 + 8 * v20) = 0;
  v43 = v18 - 2;
  *(a1 + 40) = v43;
  v44 = *(a1 + 48);
  if (v20 != 1)
  {
    v42 = *(v44 + 8 * v20 - 16);
  }

  *(a1 + 32) = v42;
  v21 = *(v44 + 8 * v43);
  *(v44 + 8 * v43) = 0;
  if (!v21 || v21->type != XPATH_NODESET || !v22 || *v22 != 1)
  {
    goto LABEL_84;
  }

  if (linkedOnOrAfterFall2022OSVersions() && *(*(a1 + 24) + 352) && ((p_nodeNr = &v21->nodesetval->nodeNr) != 0 && (xmlXPathCheckOpLimit(a1, *p_nodeNr) & 0x80000000) != 0 || (v46 = *(v22 + 8)) != 0 && (xmlXPathCheckOpLimit(a1, *v46) & 0x80000000) != 0))
  {
    xmlXPathReleaseObject(*(a1 + 24), v21);
    xmlXPathReleaseObject(*(a1 + 24), v22);
  }

  else
  {
    v21->nodesetval = xmlXPathNodeSetMerge(v21->nodesetval, *(v22 + 8));
    valuePush(a1, v21);
    xmlXPathReleaseObject(*(a1 + 24), v22);
    if (v3 > v41)
    {
      *(a2 + 1) = vrev64_s32(*(a2 + 1));
    }

    v3 = (v41 + v3);
  }

LABEL_99:
  if (linkedOnOrAfterFall2022OSVersions())
  {
    --*(*(a1 + 24) + 368);
  }

  return v3;
}

uint64_t xmlXPathCompOpEvalLast(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if (linkedOnOrAfterFall2022OSVersions())
  {
    v8 = *(a1 + 24);
    if (*(v8 + 352))
    {
      if ((xmlXPathCheckOpLimit(a1, 1uLL) & 0x80000000) != 0)
      {
        return 0;
      }

      v8 = *(a1 + 24);
    }

    v9 = *(v8 + 368);
    if (v9 >= 5000)
    {
      v10 = a1;
      v11 = 26;
LABEL_10:
      xmlXPathErr(v10, v11);
      return 0;
    }

    *(v8 + 368) = v9 + 1;
  }

  v12 = *(a1 + 56);
  v3 = *a2;
  if (v3 <= 8)
  {
    switch(v3)
    {
      case 0:
        goto LABEL_31;
      case 7:
        v18 = xmlXPathCompOpEvalLast(a1, *(v12 + 8) + 56 * a2[1], a3);
        if (*(a1 + 16))
        {
          return 0;
        }

        v3 = v18;
        v19 = *(a1 + 32);
        if (v19)
        {
          if (*v19 == 1)
          {
            v20 = *(v19 + 8);
            if (v20)
            {
              v21 = *v20;
              if (v21 >= 1)
              {
                if (v21 == 1)
                {
                  v22 = 1;
                }

                else
                {
                  libxml_domnode_tim_sort(*(v20 + 1), v21);
                  v20 = *(*(a1 + 32) + 8);
                  v22 = *v20;
                }

                *a3 = *(*(v20 + 1) + 8 * v22 - 8);
              }
            }
          }
        }

        v29 = xmlXPathCompOpEvalLast(a1, *(v12 + 8) + 56 * a2[2], a3);
        if (*(a1 + 16))
        {
          return 0;
        }

        v30 = *(a1 + 40);
        if (v30 < 1)
        {
          v34 = 0;
          v33 = 0;
        }

        else
        {
          v31 = *(a1 + 48);
          v32 = (v30 - 1);
          *(a1 + 40) = v32;
          if (v30 == 1)
          {
            v33 = 0;
            *(a1 + 32) = 0;
            v34 = *(v31 + 8 * v32);
            *(v31 + 8 * v32) = 0;
          }

          else
          {
            v35 = v29;
            v36 = 0;
            *(a1 + 32) = *(v31 + 8 * v30 - 16);
            v34 = *(v31 + 8 * v32);
            *(v31 + 8 * v32) = 0;
            v37 = v30 - 2;
            *(a1 + 40) = v37;
            v38 = *(a1 + 48);
            if (v32 != 1)
            {
              v36 = *(v38 + 8 * v32 - 16);
            }

            *(a1 + 32) = v36;
            v33 = *(v38 + 8 * v37);
            *(v38 + 8 * v37) = 0;
            if (v33 && v33->type == XPATH_NODESET && v34 && *v34 == 1)
            {
              if (linkedOnOrAfterFall2022OSVersions() && *(*(a1 + 24) + 352) && ((p_nodeNr = &v33->nodesetval->nodeNr) != 0 && (xmlXPathCheckOpLimit(a1, *p_nodeNr) & 0x80000000) != 0 || (v40 = *(v34 + 8)) != 0 && (xmlXPathCheckOpLimit(a1, *v40) & 0x80000000) != 0))
              {
                xmlXPathReleaseObject(*(a1 + 24), v33);
                xmlXPathReleaseObject(*(a1 + 24), v34);
              }

              else
              {
                v33->nodesetval = xmlXPathNodeSetMerge(v33->nodesetval, *(v34 + 8));
                valuePush(a1, v33);
                xmlXPathReleaseObject(*(a1 + 24), v34);
                if (v3 > v35)
                {
                  *(a2 + 1) = vrev64_s32(*(a2 + 1));
                }

                v3 = (v35 + v3);
              }

              goto LABEL_31;
            }
          }
        }

        xmlXPathReleaseObject(*(a1 + 24), v33);
        xmlXPathReleaseObject(*(a1 + 24), v34);
        v10 = a1;
        v11 = 11;
        goto LABEL_10;
      case 8:
        xmlXPathRoot(a1);
        goto LABEL_30;
    }

LABEL_26:
    v3 = xmlXPathCompOpEval(a1, a2);
    goto LABEL_31;
  }

  if (v3 > 10)
  {
    if (v3 == 11)
    {
      v17 = xmlXPathCacheObjectCopy(*(a1 + 24), *(a2 + 3));
      valuePush(a1, v17);
      goto LABEL_30;
    }

    if (v3 == 17)
    {
      v15 = a2[1];
      if (v15 == -1)
      {
        v3 = 0;
      }

      else
      {
        v3 = xmlXPathCompOpEvalLast(a1, *(v12 + 8) + 56 * v15, a3);
      }

      if (*(a1 + 16))
      {
        return 0;
      }

      v26 = *(a1 + 32);
      if (v26)
      {
        if (*v26 == 1)
        {
          v27 = *(v26 + 8);
          if (v27)
          {
            v28 = *v27;
            if (v28 >= 2)
            {
              libxml_domnode_tim_sort(*(v27 + 1), v28);
            }
          }
        }
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v3 == 9)
  {
    v16 = a2[1];
    if (v16 == -1)
    {
      v3 = 0;
    }

    else
    {
      v3 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v16);
    }

    if (*(a1 + 16))
    {
      return 0;
    }

    v23 = a2[2];
    if (v23 != -1)
    {
      v24 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v23);
      if (*(a1 + 16))
      {
        return 0;
      }

      v3 = (v24 + v3);
    }

    v25 = xmlXPathCacheNewNodeSet(*(a1 + 24), *(*(a1 + 24) + 8));
    valuePush(a1, v25);
    goto LABEL_31;
  }

  v13 = a2[1];
  if (v13 == -1)
  {
LABEL_30:
    v3 = 0;
    goto LABEL_31;
  }

  v14 = xmlXPathCompOpEval(a1, *(v12 + 8) + 56 * v13);
  if (*(a1 + 16))
  {
    return 0;
  }

  v3 = xmlXPathNodeCollectAndTest(a1, a2, 0, a3, 0) + v14;
LABEL_31:
  if (linkedOnOrAfterFall2022OSVersions())
  {
    --*(*(a1 + 24) + 368);
  }

  return v3;
}

void xmlXPathNodeSetKeepLast(uint64_t a1)
{
  v1 = *a1;
  if (*a1 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*(v4 + 8) == 18)
        {
          xmlXPathNodeSetFreeNs(v4);
          v1 = *a1;
        }
      }

      ++v3;
    }

    while (v3 < v1 - 1);
    **(a1 + 8) = *(*(a1 + 8) + 8 * (v1 - 1));
    *a1 = 1;
  }
}

void xmlXPathLocationSetFilter(xmlXPathParserContext *a1, int *a2, int a3, int a4)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      context = a1->context;
      v26 = *&context->doc;
      v8 = *&context->contextSize;
      v9 = *(a1->comp + 1);
      context->contextSize = v5;
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = 0;
        v13 = (v9 + 56 * a3);
        v14 = 1;
        while (1)
        {
          v15 = *(*(*(a2 + 1) + 8 * v11) + 40);
          context->node = v15;
          v16 = v11 + 1;
          context->proximityPosition = v11 + 1;
          if (*(v15 + 8) != 18)
          {
            v17 = *(v15 + 64);
            if (v17)
            {
              context->doc = v17;
            }
          }

          v18 = xmlXPathCompOpEvalToBoolean(a1, v13, 1);
          if (a1->error)
          {
            goto LABEL_24;
          }

          v19 = v18;
          if (v18 < 0)
          {
            xmlXPathErr(a1, 7);
            goto LABEL_24;
          }

          if (v18 && v14 >= 1 && v14 <= a4)
          {
            if (v11 != v12)
            {
              *(*(a2 + 1) + 8 * v12) = *(*(a2 + 1) + 8 * v11);
              *(*(a2 + 1) + 8 * v11) = 0;
            }

            ++v12;
          }

          else
          {
            xmlXPathFreeObject(*(*(a2 + 1) + 8 * v11));
            *(*(a2 + 1) + 8 * v11) = 0;
            if (!v19)
            {
              goto LABEL_19;
            }
          }

          if (v14 == a4)
          {
            LODWORD(v11) = v11 + 1;
            goto LABEL_24;
          }

          ++v14;
LABEL_19:
          ++v11;
          if (v16 >= *a2)
          {
            LODWORD(v11) = v16;
            goto LABEL_24;
          }
        }
      }

      LODWORD(v11) = 0;
      v12 = 0;
LABEL_24:
      if (v11 < *a2)
      {
        v20 = v11;
        do
        {
          xmlXPathFreeObject(*(*(a2 + 1) + 8 * v20++));
        }

        while (v20 < *a2);
      }

      *a2 = v12;
      v21 = a2[1];
      if (v21 >= 11 && v12 < (v21 >> 1))
      {
        if (v12 <= 10)
        {
          v23 = 10;
        }

        else
        {
          v23 = v12;
        }

        v24 = malloc_type_realloc(*(a2 + 1), 8 * v23, 0x2004093837F09uLL);
        if (v24)
        {
          *(a2 + 1) = v24;
          a2[1] = v23;
        }

        else
        {
          if (a1)
          {
            a1->error = 15;
            v25 = a1->context;
          }

          else
          {
            v25 = 0;
          }

          xmlXPathErrMemory(v25, "shrinking locset\n");
        }
      }

      *&context->doc = v26;
      *&context->contextSize = v8;
    }
  }
}

xmlXPathObjectPtr xmlXPtrNewRange(xmlNodePtr start, int startindex, xmlNodePtr end, int endindex)
{
  v8 = linkedOnOrAfterFall2022OSVersions();
  v9 = 0;
  if (((endindex | startindex) & 0x80000000) == 0 && end && start && (v8 & 1) == 0)
  {
    v9 = xmlXPtrNewRangeInternal(start, startindex, end, endindex);
    xmlXPtrRangeCheckOrder(v9);
  }

  return v9;
}

char *xmlXPtrNewRangeInternal(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if ((!a1 || *(a1 + 8) != 18) && (!a3 || *(a3 + 8) != 18))
  {
    result = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
    if (result)
    {
      *(result + 36) = 0u;
      *(result + 52) = 0u;
      *(result + 20) = 0u;
      *(result + 4) = 0u;
      *result = 6;
      *(result + 5) = a1;
      *(result + 12) = a2;
      *(result + 7) = a3;
      *(result + 16) = a4;
      *(result + 17) = 0;
      return result;
    }

    xmlXPtrErrMemory("allocating range");
  }

  return 0;
}

xmlNode *xmlXPtrRangeCheckOrder(xmlNode *result)
{
  if (result)
  {
    v1 = result;
    if (LODWORD(result->_private) == 6)
    {
      prev = result->prev;
      if (prev)
      {
        result = result->parent;
        if (result)
        {
          if (result == prev)
          {
            if (SLODWORD(v1->next) <= SLODWORD(v1->doc))
            {
              return result;
            }
          }

          else
          {
            result = xmlXPathCmpNodes(result, prev);
            if (result != -1)
            {
              return result;
            }
          }

          parent = v1->parent;
          v1->parent = v1->prev;
          v1->prev = parent;
          LODWORD(parent) = v1->next;
          LODWORD(v1->next) = v1->doc;
          LODWORD(v1->doc) = parent;
        }
      }
    }
  }

  return result;
}

xmlXPathObjectPtr xmlXPtrNewRangePoints(xmlXPathObjectPtr start, xmlXPathObjectPtr end)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  v5 = 0;
  if (end && start && (v4 & 1) == 0)
  {
    if (start->type == XPATH_POINT && end->type == XPATH_POINT)
    {
      v5 = xmlXPtrNewRangeInternal(start->user, start->index, end->user, end->index);
      xmlXPtrRangeCheckOrder(v5);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

xmlXPathObjectPtr xmlXPtrNewRangePointNode(xmlXPathObjectPtr start, xmlNodePtr end)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  v5 = 0;
  if (end && start && (v4 & 1) == 0)
  {
    if (start->type == XPATH_POINT)
    {
      v5 = xmlXPtrNewRangeInternal(start->user, start->index, end, -1);
      xmlXPtrRangeCheckOrder(v5);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

xmlXPathObjectPtr xmlXPtrNewRangeNodePoint(xmlNodePtr start, xmlXPathObjectPtr end)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  v5 = 0;
  if (end && start && (v4 & 1) == 0)
  {
    if (end->type == XPATH_POINT)
    {
      v5 = xmlXPtrNewRangeInternal(start, -1, end->user, end->index);
      xmlXPtrRangeCheckOrder(v5);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

xmlXPathObjectPtr xmlXPtrNewRangeNodes(xmlNodePtr start, xmlNodePtr end)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  v5 = 0;
  if (end && start && (v4 & 1) == 0)
  {
    v5 = xmlXPtrNewRangeInternal(start, -1, end, -1);
    xmlXPtrRangeCheckOrder(v5);
  }

  return v5;
}

xmlXPathObjectPtr xmlXPtrNewCollapsedRange(xmlNodePtr start)
{
  v2 = linkedOnOrAfterFall2022OSVersions();
  if (!start || (v2 & 1) != 0)
  {
    return 0;
  }

  return xmlXPtrNewRangeInternal(start, -1, 0, -1);
}

xmlXPathObjectPtr xmlXPtrNewRangeNodeObject(xmlNodePtr start, xmlXPathObjectPtr end)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  v5 = 0;
  if (end && start && (v4 & 1) == 0)
  {
    type = end->type;
    if (end->type == XPATH_NODESET)
    {
      nodesetval = end->nodesetval;
      if (nodesetval)
      {
        nodeNr = nodesetval->nodeNr;
        if (nodeNr >= 1)
        {
          p_user2 = &nodesetval->nodeTab[nodeNr - 1];
          index2 = -1;
          goto LABEL_12;
        }
      }
    }

    else
    {
      if (type == XPATH_RANGE)
      {
        p_user2 = &end->user2;
        index2 = end->index2;
        goto LABEL_12;
      }

      if (type == XPATH_POINT)
      {
        p_user2 = &end->user;
        index2 = end->index;
LABEL_12:
        v5 = xmlXPtrNewRangeInternal(start, -1, *p_user2, index2);
        xmlXPtrRangeCheckOrder(v5);
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

xmlLocationSetPtr xmlXPtrLocationSetCreate(xmlXPathObjectPtr val)
{
  if (linkedOnOrAfterFall2022OSVersions())
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x10uLL, 0x108004057E67DB5uLL);
  v2 = v3;
  if (!v3)
  {
    xmlXPtrErrMemory("allocating locationset");
    return v2;
  }

  *&v3->locNr = 0;
  v3->locTab = 0;
  if (val)
  {
    v4 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    v2->locTab = v4;
    if (v4)
    {
      *(v4 + 3) = 0u;
      *(v4 + 4) = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 2) = 0u;
      *v4 = 0u;
      locTab = v2->locTab;
      locNr = v2->locNr;
      v2->locNr = locNr + 1;
      v2->locMax = 10;
      locTab[locNr] = val;
      return v2;
    }

    xmlXPtrErrMemory("allocating locationset");
    free(v2);
    return 0;
  }

  return v2;
}

void xmlXPtrLocationSetAdd(xmlLocationSetPtr cur, xmlXPathObjectPtr val)
{
  if ((linkedOnOrAfterFall2022OSVersions() & 1) != 0 || !cur || !val)
  {
    return;
  }

  locNr = cur->locNr;
  if (cur->locNr < 1)
  {
LABEL_18:
    locMax = cur->locMax;
    if (locMax)
    {
      if (locNr != locMax)
      {
LABEL_27:
        locTab = cur->locTab;
        v14 = cur->locNr;
        cur->locNr = v14 + 1;
        locTab[v14] = val;
        return;
      }

      v10 = 2 * locNr;
      cur->locMax = v10;
      v11 = malloc_type_realloc(cur->locTab, 8 * v10, 0x2004093837F09uLL);
      if (v11)
      {
        cur->locTab = v11;
        goto LABEL_27;
      }
    }

    else
    {
      v12 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
      cur->locTab = v12;
      if (v12)
      {
        *(v12 + 3) = 0u;
        *(v12 + 4) = 0u;
        *(v12 + 1) = 0u;
        *(v12 + 2) = 0u;
        *v12 = 0u;
        cur->locMax = 10;
        goto LABEL_27;
      }
    }

    xmlXPtrErrMemory("adding location to set");
    return;
  }

  v5 = cur->locTab;
  v6 = cur->locNr;
  while (1)
  {
    v7 = *v5;
    if (*v5 == val)
    {
      break;
    }

    if (v7)
    {
      v8 = v7->type == XPATH_RANGE && val->type == XPATH_RANGE;
      if (v8 && v7->user == val->user && v7->index == val->index && v7->user2 == val->user2 && v7->index2 == val->index2)
      {
        break;
      }
    }

    ++v5;
    if (!--v6)
    {
      goto LABEL_18;
    }
  }

  xmlXPathFreeObject(val);
}

xmlLocationSetPtr xmlXPtrLocationSetMerge(xmlLocationSetPtr val1, xmlLocationSetPtr val2)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  result = 0;
  if (val1 && (v4 & 1) == 0)
  {
    if (val2 && val2->locNr >= 1)
    {
      v6 = 0;
      do
      {
        xmlXPtrLocationSetAdd(val1, val2->locTab[v6++]);
      }

      while (v6 < val2->locNr);
    }

    return val1;
  }

  return result;
}

void xmlXPtrLocationSetDel(xmlLocationSetPtr cur, xmlXPathObjectPtr val)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  if (val)
  {
    if (cur)
    {
      if ((v4 & 1) == 0)
      {
        locNr = cur->locNr;
        if (locNr >= 1)
        {
          v6 = 0;
          locTab = cur->locTab;
          while (locTab[v6] != val)
          {
            if (locNr == ++v6)
            {
              return;
            }
          }

          v8 = (locNr - 1);
          cur->locNr = v8;
          if (v8 > v6)
          {
            do
            {
              cur->locTab[v6] = cur->locTab[v6 + 1];
              ++v6;
            }

            while (v8 != v6);
            locTab = cur->locTab;
          }

          locTab[v8] = 0;
        }
      }
    }
  }
}

void xmlXPtrLocationSetRemove(xmlLocationSetPtr cur, int val)
{
  v4 = linkedOnOrAfterFall2022OSVersions();
  if (cur)
  {
    if ((v4 & 1) == 0)
    {
      locNr = cur->locNr;
      if (locNr > val)
      {
        v6 = locNr - 1;
        cur->locNr = v6;
        if (v6 > val)
        {
          v7 = val;
          v6 = v6;
          do
          {
            cur->locTab[v7] = cur->locTab[v7 + 1];
            ++v7;
          }

          while (v6 != v7);
        }

        cur->locTab[v6] = 0;
      }
    }
  }
}

void xmlXPtrFreeLocationSet(xmlLocationSetPtr obj)
{
  v2 = linkedOnOrAfterFall2022OSVersions();
  if (obj && (v2 & 1) == 0)
  {
    locTab = obj->locTab;
    if (locTab)
    {
      if (obj->locNr >= 1)
      {
        v4 = 0;
        do
        {
          xmlXPathFreeObject(obj->locTab[v4++]);
        }

        while (v4 < obj->locNr);
        locTab = obj->locTab;
      }

      free(locTab);
    }

    free(obj);
  }
}

xmlXPathObjectPtr xmlXPtrNewLocationSetNodes(xmlNodePtr start, xmlNodePtr end)
{
  if (linkedOnOrAfterFall2022OSVersions())
  {
    return 0;
  }

  v5 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v4 = v5;
  if (v5)
  {
    *(v5 + 17) = 0;
    *(v5 + 52) = 0u;
    *(v5 + 36) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 4) = 0u;
    *v5 = 7;
    if (end)
    {
      v6 = xmlXPtrNewRangeNodes(start, end);
    }

    else
    {
      v6 = xmlXPtrNewCollapsedRange(start);
    }

    v4->user = xmlXPtrLocationSetCreate(v6);
  }

  else
  {
    xmlXPtrErrMemory("allocating locationset");
  }

  return v4;
}

xmlXPathObjectPtr xmlXPtrNewLocationSetNodeSet(xmlNodeSetPtr set)
{
  if (linkedOnOrAfterFall2022OSVersions())
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
  v2 = v3;
  if (v3)
  {
    *(v3 + 17) = 0;
    *(v3 + 52) = 0u;
    *(v3 + 36) = 0u;
    *(v3 + 20) = 0u;
    *(v3 + 4) = 0u;
    *v3 = 7;
    if (set)
    {
      v4 = xmlXPtrLocationSetCreate(0);
      if (v4)
      {
        v5 = v4;
        if (set->nodeNr >= 1)
        {
          v6 = 0;
          do
          {
            v7 = xmlXPtrNewCollapsedRange(set->nodeTab[v6]);
            xmlXPtrLocationSetAdd(v5, v7);
            ++v6;
          }

          while (v6 < set->nodeNr);
        }

        v2->user = v5;
      }
    }
  }

  else
  {
    xmlXPtrErrMemory("allocating locationset");
  }

  return v2;
}

xmlXPathObjectPtr xmlXPtrWrapLocationSet(xmlLocationSetPtr val)
{
  if ((linkedOnOrAfterFall2022OSVersions() & 1) == 0)
  {
    result = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
    if (result)
    {
      *(&result->stringval + 4) = 0u;
      *(&result->index2 + 1) = 0;
      *(&result->index + 1) = 0u;
      *(&result->BOOLval + 1) = 0u;
      *(&result->type + 1) = 0u;
      result->type = XPATH_LOCATIONSET;
      result->user = val;
      return result;
    }

    xmlXPtrErrMemory("allocating locationset");
  }

  return 0;
}

xmlXPathContextPtr xmlXPtrNewContext(xmlDocPtr doc, xmlNodePtr here, xmlNodePtr origin)
{
  v5 = xmlXPathNewContext(doc);
  v6 = v5;
  if (v5)
  {
    v5->xptr = 1;
    v5->here = here;
    v5->origin = origin;
    xmlXPathRegisterFunc(v5, "range", xmlXPtrRangeFunction);
    xmlXPathRegisterFunc(v6, "range-inside", xmlXPtrRangeInsideFunction);
    xmlXPathRegisterFunc(v6, "string-range", xmlXPtrStringRangeFunction);
    xmlXPathRegisterFunc(v6, "start-point", xmlXPtrStartPointFunction);
    xmlXPathRegisterFunc(v6, "end-point", xmlXPtrEndPointFunction);
    xmlXPathRegisterFunc(v6, "here", xmlXPtrHereFunction);
    xmlXPathRegisterFunc(v6, " origin", xmlXPtrOriginFunction);
  }

  return v6;
}

void xmlXPtrRangeFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2 != 1)
  {
    v35 = 12;
LABEL_62:

    xmlXPathErr(ctxt, v35);
    return;
  }

  if (ctxt->valueNr <= 0)
  {
    v35 = 23;
    goto LABEL_62;
  }

  value = ctxt->value;
  if (!value || ((type = value->type, type != XPATH_NODESET) ? (v5 = type == XPATH_LOCATIONSET) : (v5 = 1), !v5))
  {
    v35 = 11;
    goto LABEL_62;
  }

  v6 = valuePop(ctxt);
  v7 = v6;
  if (v6->type == XPATH_NODESET)
  {
    v8 = xmlXPtrNewLocationSetNodeSet(v6->nodesetval);
    xmlXPathFreeObject(v7);
    v7 = v8;
    if (!v8)
    {
LABEL_61:
      ctxt = v2;
      v35 = 15;
      goto LABEL_62;
    }
  }

  user = v7->user;
  v10 = xmlXPtrLocationSetCreate(0);
  if (!v10)
  {
    xmlXPathFreeObject(v7);
    goto LABEL_61;
  }

  v11 = v10;
  if (user && *user >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(*(user + 1) + 8 * v12);
      if (!v13)
      {
        goto LABEL_25;
      }

      p_doc = &v2->context->doc;
      if (!p_doc)
      {
        goto LABEL_25;
      }

      v15 = *p_doc;
      if (!v15)
      {
        goto LABEL_25;
      }

      if (*v13 != 6)
      {
        break;
      }

      v18 = *(v13 + 56);
      v20 = *(v13 + 40);
      if (v18)
      {
        v17 = *(v13 + 48);
        Arity = *(v13 + 64);
        v16 = *(v13 + 40);
        goto LABEL_41;
      }

      if (v20 == v15)
      {
        Arity = xmlXPtrGetArity(*(v13 + 40));
        goto LABEL_40;
      }

      v23 = 0;
      v24 = *(v20 + 8);
      if (v24 <= 0xD)
      {
        if (((1 << v24) & 0x33BA) != 0)
        {
          v25 = 1;
          v26 = v20;
          do
          {
            v27 = *(v26 + 8);
            v28 = v27 > 0xD;
            v29 = (1 << v27) & 0x2202;
            if (!v28 && v29 != 0)
            {
              ++v25;
            }

            v26 = *(v26 + 56);
          }

          while (v26);
          v16 = *(v20 + 40);
          v17 = v25 - 1;
          Arity = v25 + 1;
          v18 = v16;
          goto LABEL_41;
        }

        if (v24 != 2)
        {
          goto LABEL_26;
        }

        v31 = *(v20 + 24);
        if (v31)
        {
          Arity = 0;
          do
          {
            v32 = *(v31 + 8);
            v28 = v32 > 0xD;
            v33 = (1 << v32) & 0x2202;
            if (!v28 && v33 != 0)
            {
              ++Arity;
            }

            v31 = *(v31 + 48);
          }

          while (v31);
        }

        else
        {
          Arity = 0;
        }

LABEL_40:
        v16 = v20;
        v17 = 0;
        v18 = v20;
LABEL_41:
        v23 = xmlXPtrNewRange(v16, v17, v18, Arity);
      }

LABEL_26:
      xmlXPtrLocationSetAdd(v11, v23);
      if (++v12 >= *user)
      {
        goto LABEL_57;
      }
    }

    if (*v13 == 5)
    {
      v16 = *(v13 + 40);
      v17 = *(v13 + 48);
      v18 = v16;
      Arity = v17;
      goto LABEL_41;
    }

    v21 = *__xmlGenericError();
    v22 = __xmlGenericErrorContext();
    v21(*v22, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 2105);
LABEL_25:
    v23 = 0;
    goto LABEL_26;
  }

LABEL_57:
  v36 = xmlXPtrWrapLocationSet(v11);
  valuePush(v2, v36);

  xmlXPathFreeObject(v7);
}

void xmlXPtrRangeInsideFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2 != 1)
  {
    v36 = 12;
LABEL_65:

    xmlXPathErr(ctxt, v36);
    return;
  }

  if (ctxt->valueNr <= 0)
  {
    v36 = 23;
    goto LABEL_65;
  }

  value = ctxt->value;
  if (!value || ((type = value->type, type != XPATH_NODESET) ? (v5 = type == XPATH_LOCATIONSET) : (v5 = 1), !v5))
  {
    v36 = 11;
    goto LABEL_65;
  }

  v6 = valuePop(ctxt);
  v7 = v6;
  if (v6->type == XPATH_NODESET)
  {
    v8 = xmlXPtrNewLocationSetNodeSet(v6->nodesetval);
    xmlXPathFreeObject(v7);
    v7 = v8;
    if (!v8)
    {
LABEL_64:
      ctxt = v2;
      v36 = 15;
      goto LABEL_65;
    }
  }

  v9 = xmlXPtrLocationSetCreate(0);
  if (!v9)
  {
    xmlXPathFreeObject(v7);
    goto LABEL_64;
  }

  v10 = v9;
  user = v7->user;
  if (user && *user >= 1)
  {
    for (i = 0; i < *user; ++i)
    {
      v13 = *(*(user + 1) + 8 * i);
      if (!v13)
      {
        goto LABEL_35;
      }

      p_doc = &v2->context->doc;
      if (!p_doc || !*p_doc)
      {
        goto LABEL_35;
      }

      if (*v13 == 6)
      {
        v16 = *(v13 + 40);
        v25 = *(v13 + 56);
        if (v25)
        {
          v26 = *(v13 + 48);
          v20 = *(v13 + 64);
          v27 = *(v13 + 40);
          goto LABEL_54;
        }

        v15 = 0;
        v30 = *(v16 + 8);
        if (v30 <= 0xD)
        {
          v18 = 1 << v30;
          if ((v18 & 0x3226) != 0)
          {
            v31 = *(v16 + 24);
            if (v31)
            {
              v20 = 0;
              do
              {
                v32 = *(v31 + 8);
                v22 = v32 > 0xD;
                v33 = (1 << v32) & 0x2202;
                if (!v22 && v33 != 0)
                {
                  ++v20;
                }

                v31 = *(v31 + 48);
              }

              while (v31);
              goto LABEL_53;
            }

LABEL_52:
            v20 = 0;
LABEL_53:
            v27 = v16;
            v26 = 0;
            v25 = v16;
            goto LABEL_54;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (*v13 != 5)
        {
          v28 = *__xmlGenericError();
          v29 = __xmlGenericErrorContext();
          v28(*v29, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 2252);
LABEL_35:
          v15 = 0;
          goto LABEL_36;
        }

        v15 = 0;
        v16 = *(v13 + 40);
        v17 = *(v16 + 8);
        if (v17 <= 0xD)
        {
          v18 = 1 << v17;
          if ((v18 & 0x3226) != 0)
          {
            v19 = *(v16 + 24);
            if (!v19)
            {
              goto LABEL_52;
            }

            v20 = 0;
            do
            {
              v21 = *(v19 + 8);
              v22 = v21 > 0xD;
              v23 = (1 << v21) & 0x2202;
              if (!v22 && v23 != 0)
              {
                ++v20;
              }

              v19 = *(v19 + 48);
            }

            while (v19);
            goto LABEL_53;
          }

LABEL_49:
          if ((v18 & 0x198) != 0)
          {
            v35 = *(v16 + 80);
            if (v35)
            {
              v20 = xmlStrlen(v35);
              goto LABEL_53;
            }

            v27 = v16;
            v26 = 0;
            v25 = v16;
            v20 = 0;
LABEL_54:
            v15 = xmlXPtrNewRange(v27, v26, v25, v20);
          }
        }
      }

LABEL_36:
      xmlXPtrLocationSetAdd(v10, v15);
    }
  }

  v37 = xmlXPtrWrapLocationSet(v10);
  valuePush(v2, v37);

  xmlXPathFreeObject(v7);
}

void xmlXPtrStringRangeFunction(xmlXPathParserContextPtr ctxt, unsigned int a2)
{
  v2 = ctxt;
  if (a2 - 5 <= 0xFFFFFFFC)
  {

    xmlXPathErr(ctxt, 12);
    return;
  }

  v78 = 0;
  v77 = 0;
  if (a2 >= 4)
  {
    value = ctxt->value;
    if (!value || value->type != XPATH_NUMBER)
    {
      xmlXPathErr(ctxt, 11);
      v5 = 0;
      goto LABEL_17;
    }

    v4 = valuePop(ctxt);
    v5 = v4;
    if (v4)
    {
      floatval = v4->floatval;
    }

    else
    {
      floatval = 0;
    }

LABEL_11:
    v7 = v2->value;
    if (v7 && *v7 == 3)
    {
      v8 = valuePop(v2);
      v9 = v8;
      if (v8)
      {
        v10 = v8->floatval - 1;
      }

      else
      {
        v10 = -1;
      }

      goto LABEL_19;
    }

    xmlXPathErr(v2, 11);
LABEL_17:
    v9 = 0;
    goto LABEL_122;
  }

  v5 = 0;
  floatval = 0;
  if (a2 == 3)
  {
    goto LABEL_11;
  }

  v10 = -1;
  v9 = 0;
LABEL_19:
  v11 = v2->value;
  if (v11 && *v11 == 4)
  {
    v12 = valuePop(v2);
    v13 = v2->value;
    if (!v13 || ((v14 = *v13, v14 != 1) ? (v15 = v14 == 7) : (v15 = 1), !v15))
    {
      xmlXPathErr(v2, 11);
      goto LABEL_123;
    }

    v16 = valuePop(v2);
    cur = xmlXPtrLocationSetCreate(0);
    if (!cur)
    {
      xmlXPathErr(v2, 15);
      goto LABEL_124;
    }

    nodesetval = v16->nodesetval;
    if (!nodesetval)
    {
      goto LABEL_134;
    }

    if (v16->type == XPATH_NODESET)
    {
      v18 = xmlXPtrNewLocationSetNodeSet(nodesetval);
      xmlXPathFreeObject(v16);
      v16 = v18;
      if (!v18)
      {
        xmlXPathErr(v2, 15);
LABEL_134:
        v58 = xmlXPtrWrapLocationSet(cur);
        valuePush(v2, v58);
        goto LABEL_124;
      }
    }

    user = v16->user;
    if (*user < 1)
    {
      goto LABEL_134;
    }

    v59 = v16;
    v60 = v2;
    v69 = v16->user;
    v70 = v12;
    v67 = v9;
    v20 = 0;
    v21 = 0;
    v74 = 0;
    v61 = v5;
    v22 = v5 != 0;
    v23 = floatval > 0 && v5 != 0;
    v64 = v23;
    v65 = v10;
    if (floatval >= 1)
    {
      v22 = 0;
    }

    v62 = v22;
    v63 = floatval;
LABEL_38:
    v24 = *(user + 1);
    v25 = *(v24 + 8 * v20);
    if (v25)
    {
      if ((*v25 - 5) > 1)
      {
        v26 = v70;
      }

      else
      {
        v77 = *(v25 + 40);
        v78 = *(v25 + 48) & ~(*(v25 + 48) >> 31);
        v25 = *(v24 + 8 * v20);
        v26 = v70;
        if (!v25)
        {
          goto LABEL_46;
        }
      }

      if ((*v25 - 5) <= 1)
      {
        v21 = *(v25 + 40);
        v74 = *(v25 + 48) & ~(*(v25 + 48) >> 31);
      }

      goto LABEL_46;
    }

    v26 = v70;
LABEL_46:
    xmlXPtrAdvanceChar(&v77, &v78, 0);
    v71 = v20;
    if (v21)
    {
      v27 = *(v21 + 8);
      if (v27 == 1 || v27 == 9)
      {
        NthChild = v21;
        if (v74 < 1)
        {
          goto LABEL_58;
        }

LABEL_57:
        NthChild = xmlXPtrGetNthChild(v21, v74);
        goto LABEL_58;
      }

      if (v27 != 18)
      {
        NthChild = v21;
        if (v27 == 13)
        {
          NthChild = v21;
          if (v74 > 0)
          {
            goto LABEL_57;
          }
        }

        do
        {
LABEL_58:
          if (!NthChild)
          {
            goto LABEL_63;
          }

          v30 = NthChild;
          NthChild = *(NthChild + 32);
        }

        while (NthChild);
        if (*(v30 + 8) != 1)
        {
          v31 = *(v30 + 80);
          if (v31)
          {
            v74 = xmlStrlen(v31);
            v21 = v30;
          }
        }
      }
    }

LABEL_63:
    stringval = v26->stringval;
    if (!stringval)
    {
      goto LABEL_119;
    }

    v33 = v77;
    if (!v77)
    {
      goto LABEL_119;
    }

    while (1)
    {
      if (*(v33 + 8) == 18)
      {
        goto LABEL_119;
      }

      v34 = v78 - 1;
      v35 = *stringval;
      v36 = v33;
      while (1)
      {
        if (*(v36 + 8) != 1)
        {
          v37 = *(v36 + 80);
          if (v37)
          {
            v38 = xmlStrlen(v37);
            if (v34 <= v38)
            {
              break;
            }
          }
        }

LABEL_70:
        if (v36 != v21 || v34 < v74)
        {
          v36 = xmlXPtrAdvanceNode(v36, 0);
          v34 = 1;
          if (v36)
          {
            continue;
          }
        }

        goto LABEL_119;
      }

      if (!v35)
      {
        v77 = v36;
        v47 = ++v34;
        v33 = v36;
        goto LABEL_99;
      }

      v39 = v38;
      v68 = v38 + 1;
      v73 = stringval;
      v72 = v35;
LABEL_76:
      v40 = xmlStrchr((*(v36 + 80) + v34), v35);
      if (!v40)
      {
        break;
      }

      v41 = v40 - *(v36 + 80);
      v34 = v41 + 1;
      v42 = *(v36 + 8);
      if (v42 == 18 || v21 == 0)
      {
        if (v42 == 18)
        {
          v33 = v21;
        }

        else
        {
          v33 = 0;
        }

        v47 = v74;
      }

      else
      {
        if (*(v21 + 8) != 18)
        {
          v44 = xmlStrlen(stringval);
          v45 = stringval;
          v33 = v36;
          v46 = v41;
          while (v44 >= 1)
          {
            v47 = v44 + v46;
            if (v33 == v21 && v47 > v74)
            {
              goto LABEL_94;
            }

            if (*(v33 + 8) != 1)
            {
              v48 = *(v33 + 80);
              if (v48)
              {
                v49 = xmlStrlen(v48);
                if (v49 >= v47)
                {
                  if (!xmlStrncmp((*(v33 + 80) + v46), v45, v44))
                  {
                    goto LABEL_98;
                  }

LABEL_94:
                  stringval = v73;
                  v35 = v72;
                  if (v39 > v41)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_70;
                }

                v50 = v49 - v46;
                if (xmlStrncmp((*(v33 + 80) + v46), v45, v50))
                {
                  goto LABEL_94;
                }

                v45 += v50;
                v44 -= v50;
              }
            }

            v33 = xmlXPtrAdvanceNode(v33, 0);
            v46 = 0;
            if (!v33)
            {
              goto LABEL_94;
            }
          }
        }

        v47 = v74;
        v33 = v21;
      }

LABEL_98:
      v77 = v36;
LABEL_99:
      v78 = v34;
      if (v67)
      {
        v51 = v70;
        if (!xmlXPtrAdvanceChar(&v77, &v78, v65))
        {
          if (v64)
          {
            v75 = v77;
            v76 = v78 - 1;
            if (!xmlXPtrAdvanceChar(&v75, &v76, v63))
            {
              v52 = v77;
              v53 = v78;
              v54 = v75;
              v55 = v76;
              goto LABEL_112;
            }
          }

          else
          {
            v52 = v77;
            v53 = v78;
            if (v62)
            {
              v54 = v77;
              v55 = v78;
            }

            else
            {
              v54 = v33;
              v55 = v47;
            }

LABEL_112:
            v57 = xmlXPtrNewRange(v52, v53, v54, v55);
            xmlXPtrLocationSetAdd(cur, v57);
          }
        }
      }

      else
      {
        v56 = xmlXPtrNewRange(v36, v34, v33, v47);
        xmlXPtrLocationSetAdd(cur, v56);
        v51 = v70;
      }

      v77 = v33;
      v78 = v47;
      stringval = v51->stringval;
      if (*stringval)
      {
        if (!v33)
        {
          goto LABEL_119;
        }

        continue;
      }

      v78 = v47 + 1;
      if (!v33)
      {
LABEL_119:
        v20 = v71 + 1;
        user = v69;
        if (v71 + 1 >= *v69)
        {
          v2 = v60;
          v5 = v61;
          v9 = v67;
          v12 = v70;
          v16 = v59;
          goto LABEL_134;
        }

        goto LABEL_38;
      }
    }

    v34 = v68;
    goto LABEL_70;
  }

  xmlXPathErr(v2, 11);
LABEL_122:
  v12 = 0;
LABEL_123:
  v16 = 0;
LABEL_124:
  xmlXPathFreeObject(v16);
  xmlXPathFreeObject(v12);
  if (v9)
  {
    xmlXPathFreeObject(v9);
  }

  if (v5)
  {
    xmlXPathFreeObject(v5);
  }
}

void xmlXPtrStartPointFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2 != 1)
  {
    v17 = 12;
    goto LABEL_34;
  }

  if (ctxt->valueNr <= 0)
  {
    v17 = 23;
    goto LABEL_34;
  }

  value = ctxt->value;
  if (!value || ((type = value->type, type != XPATH_NODESET) ? (v5 = type == XPATH_LOCATIONSET) : (v5 = 1), !v5))
  {
    v17 = 11;
    goto LABEL_34;
  }

  v6 = valuePop(ctxt);
  v7 = v6;
  if (v6->type == XPATH_NODESET)
  {
    v8 = xmlXPtrNewLocationSetNodeSet(v6->nodesetval);
    xmlXPathFreeObject(v7);
    v7 = v8;
    if (!v8)
    {
LABEL_33:
      ctxt = v2;
      v17 = 15;
      goto LABEL_34;
    }
  }

  v9 = xmlXPtrLocationSetCreate(0);
  if (!v9)
  {
    xmlXPathFreeObject(v7);
    goto LABEL_33;
  }

  v10 = v9;
  user = v7->user;
  if (!user || *user < 1)
  {
LABEL_25:
    xmlXPathFreeObject(v7);
    v16 = xmlXPtrWrapLocationSet(v10);

    valuePush(v2, v16);
    return;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(*(user + 1) + 8 * v12);
    if (!v13)
    {
      goto LABEL_24;
    }

    if (*v13 == 6)
    {
      break;
    }

    if (*v13 == 5)
    {
      v14 = *(v13 + 40);
      goto LABEL_22;
    }

LABEL_24:
    if (++v12 >= *user)
    {
      goto LABEL_25;
    }
  }

  v14 = *(v13 + 40);
  if (!v14)
  {
    goto LABEL_24;
  }

  if ((*(v14 + 8) | 0x10) != 0x12)
  {
LABEL_22:
    v15 = xmlXPtrNewPoint(v14, *(v13 + 48));
    if (v15)
    {
      xmlXPtrLocationSetAdd(v10, v15);
    }

    goto LABEL_24;
  }

  xmlXPathFreeObject(v7);
  xmlXPtrFreeLocationSet(v10);
  ctxt = v2;
  v17 = 16;
LABEL_34:

  xmlXPathErr(ctxt, v17);
}

void xmlXPtrEndPointFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2 != 1)
  {
    v18 = 12;
    goto LABEL_35;
  }

  if (ctxt->valueNr <= 0)
  {
    v18 = 23;
    goto LABEL_35;
  }

  value = ctxt->value;
  if (!value || ((type = value->type, type != XPATH_NODESET) ? (v5 = type == XPATH_LOCATIONSET) : (v5 = 1), !v5))
  {
    v18 = 11;
    goto LABEL_35;
  }

  v6 = valuePop(ctxt);
  v7 = v6;
  if (v6->type == XPATH_NODESET)
  {
    v8 = xmlXPtrNewLocationSetNodeSet(v6->nodesetval);
    xmlXPathFreeObject(v7);
    v7 = v8;
    if (!v8)
    {
LABEL_34:
      ctxt = v2;
      v18 = 15;
      goto LABEL_35;
    }
  }

  v9 = xmlXPtrLocationSetCreate(0);
  if (!v9)
  {
    xmlXPathFreeObject(v7);
    goto LABEL_34;
  }

  v10 = v9;
  user = v7->user;
  if (!user || *user < 1)
  {
LABEL_26:
    xmlXPathFreeObject(v7);
    v17 = xmlXPtrWrapLocationSet(v10);

    valuePush(v2, v17);
    return;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(*(user + 1) + 8 * v12);
    if (!v13)
    {
      goto LABEL_25;
    }

    if (*v13 == 6)
    {
      break;
    }

    if (*v13 == 5)
    {
      v14 = *(v13 + 40);
      v15 = *(v13 + 48);
      goto LABEL_23;
    }

LABEL_25:
    if (++v12 >= *user)
    {
      goto LABEL_26;
    }
  }

  v14 = *(v13 + 56);
  if (!v14)
  {
    goto LABEL_25;
  }

  if ((*(v14 + 8) | 0x10) != 0x12)
  {
    v15 = *(v13 + 64);
LABEL_23:
    v16 = xmlXPtrNewPoint(v14, v15);
    if (v16)
    {
      xmlXPtrLocationSetAdd(v10, v16);
    }

    goto LABEL_25;
  }

  xmlXPathFreeObject(v7);
  xmlXPtrFreeLocationSet(v10);
  ctxt = v2;
  v18 = 16;
LABEL_35:

  xmlXPathErr(ctxt, v18);
}

void xmlXPtrHereFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  here = ctxt->context->here;
  if (!here)
  {
    ctxt = v2;
    v3 = 16;
    goto LABEL_4;
  }

  v5 = xmlXPtrNewLocationSetNodes(here, 0);

  valuePush(v2, v5);
}

void xmlXPtrOriginFunction(xmlXPathParserContextPtr ctxt, int a2)
{
  if (!ctxt)
  {
    return;
  }

  v2 = ctxt;
  if (a2)
  {
    v3 = 12;
LABEL_4:

    xmlXPathErr(ctxt, v3);
    return;
  }

  if (ctxt->valueNr < 0)
  {
    v3 = 23;
    goto LABEL_4;
  }

  origin = ctxt->context->origin;
  if (!origin)
  {
    ctxt = v2;
    v3 = 16;
    goto LABEL_4;
  }

  v5 = xmlXPtrNewLocationSetNodes(origin, 0);

  valuePush(v2, v5);
}

xmlXPathObjectPtr xmlXPtrEval(const xmlChar *str, xmlXPathContextPtr ctx)
{
  xmlInitParser();
  v4 = 0;
  if (!str || !ctx)
  {
    return v4;
  }

  v5 = xmlXPathNewParserContext(str, ctx);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v5->xptr = 1;
  if (!v5->valueTab)
  {
    v7 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    *(v6 + 48) = v7;
    if (!v7)
    {
      xmlXPtrErrMemory("allocating evaluation context");
      goto LABEL_105;
    }

    *(v6 + 40) = 0xA00000000;
    *(v6 + 32) = 0;
  }

  for (i = *v6 + 1; ; ++i)
  {
    v9 = *(i - 1);
    if (v9 > 0x2F)
    {
      goto LABEL_14;
    }

    if (((1 << v9) & 0x100002600) == 0)
    {
      break;
    }

    *v6 = i;
  }

  if (v9 == 47)
  {
    xmlXPathRoot(v6);
    v10 = v6;
    v11 = 0;
    goto LABEL_99;
  }

LABEL_14:
  v12 = xmlXPathParseName(v6);
  if (!v12)
  {
LABEL_104:
    xmlXPathErr(v6, 7);
    goto LABEL_105;
  }

  v13 = v12;
  if (**v6 != 40)
  {
    v10 = v6;
    v11 = v13;
LABEL_99:
    xmlXPtrEvalChildSeq(v10, v11);
    for (j = *v6 + 1; ; ++j)
    {
      v57 = *(j - 1);
      if (v57 > 0x20)
      {
        break;
      }

      if (((1 << v57) & 0x100002600) == 0)
      {
        if (!*(j - 1))
        {
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      *v6 = j;
    }

    goto LABEL_104;
  }

  v14 = "xpointer";
  while (2)
  {
    *(v6 + 16) = 0;
    v15 = *v6;
    if (**v6 != 40)
    {
      free(v13);
      v27 = v6;
      v28 = 7;
LABEL_38:
      xmlXPathErr(v27, v28);
      goto LABEL_72;
    }

    *v6 = v15 + 1;
    v16 = xmlStrlen(v15 + 1);
    v17 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
    if (!v17)
    {
      xmlXPtrErrMemory("allocating buffer");
      goto LABEL_71;
    }

    v18 = v17;
    v19 = *v6;
    v20 = 1;
    for (k = v17; ; ++k)
    {
      v22 = *v19;
      if (v22 <= 0x28)
      {
        break;
      }

      if (v22 == 94)
      {
        v24 = v19[1];
        v23 = v19 + 1;
        v25 = (1 << (v24 - 40)) & 0x40000000000003;
        if ((v24 - 40) > 0x36 || v25 == 0)
        {
          LOBYTE(v22) = 94;
        }

        else
        {
          *v6 = v23;
          LOBYTE(v22) = *v23;
        }
      }

      else if (v22 == 41)
      {
        if (!--v20)
        {
          *v6 = v19 + 1;
          *k = 0;
          goto LABEL_44;
        }

        LOBYTE(v22) = 41;
      }

LABEL_35:
      *k = v22;
      v19 = *v6;
      if (**v6)
      {
        *v6 = ++v19;
      }
    }

    if (v22 == 40)
    {
      ++v20;
      LOBYTE(v22) = 40;
      goto LABEL_35;
    }

    if (*v19)
    {
      goto LABEL_35;
    }

    *k = 0;
    if (v20 && !**v6)
    {
      free(v13);
      free(v18);
      v27 = v6;
      v28 = 16;
      goto LABEL_38;
    }

LABEL_44:
    if (xmlStrEqual(v13, v14))
    {
      v29 = *(v6 + 24);
      v29[1] = *v29;
      v29[13] = 0x100000001;
      v65 = *v6;
      *v6 = v18;
      *(v6 + 8) = v18;
      xmlXPathEvalExpr(v6);
      *v6 = v65;
      goto LABEL_70;
    }

    if (xmlStrEqual(v13, "element"))
    {
      v30 = v14;
      v31 = *v6;
      v32 = *(v6 + 8);
      *v6 = v18;
      *(v6 + 8) = v18;
      if (*v18 == 47)
      {
        xmlXPathRoot(v6);
        v33 = v6;
        v34 = 0;
        goto LABEL_57;
      }

      v41 = xmlXPathParseName(v6);
      if (v41)
      {
        v34 = v41;
        v33 = v6;
LABEL_57:
        xmlXPtrEvalChildSeq(v33, v34);
        *v6 = v31;
        *(v6 + 8) = v32;
        v14 = v30;
LABEL_70:
        free(v18);
LABEL_71:
        free(v13);
      }

      else
      {
        *v6 = v31;
        *(v6 + 8) = v32;
        free(v18);
        free(v13);
        xmlXPathErr(v6, 7);
        v14 = v30;
      }
    }

    else
    {
      if (!xmlStrEqual(v13, "xmlns"))
      {
        xmlXPtrErr(v6, 1900, "unsupported scheme '%s'\n", v13);
        goto LABEL_70;
      }

      v35 = *v6;
      v36 = *(v6 + 8);
      *v6 = v18;
      *(v6 + 8) = v18;
      v37 = xmlXPathParseNCName(v6);
      if (v37)
      {
        v38 = *v6;
        for (m = (*v6 + 1); ; ++m)
        {
          v40 = *v38;
          if (v40 > 0x3D)
          {
            goto LABEL_61;
          }

          if (((1 << v40) & 0x100002600) == 0)
          {
            break;
          }

          *v6 = ++v38;
        }

        if (v40 != 61)
        {
LABEL_61:
          *v6 = v35;
          *(v6 + 8) = v36;
          free(v37);
          goto LABEL_96;
        }

        while (1)
        {
          *v6 = m;
          v42 = *m;
          v43 = v42 > 0x20;
          v44 = (1 << v42) & 0x100002600;
          if (v43 || v44 == 0)
          {
            break;
          }

          ++m;
        }

        v66 = v35;
        v46 = v37;
        if (xmlXPathRegisterNs(*(v6 + 24), v37, m) < 0)
        {
          xmlXPathPErrMemory(v6, 0);
        }

        *v6 = v66;
        *(v6 + 8) = v36;
        free(v46);
        v14 = "xpointer";
        goto LABEL_70;
      }

      *v6 = v35;
      *(v6 + 8) = v36;
LABEL_96:
      free(v18);
      free(v13);
      xmlXPathErr(v6, 16);
      v14 = "xpointer";
    }

LABEL_72:
    v47 = *(v6 + 16);
    if (v47 == 1900 || v47 == 0)
    {
      v49 = *(v6 + 32);
      if (!v49)
      {
        goto LABEL_87;
      }

      if (*v49 == 1)
      {
        v50 = *(v49 + 8);
        if (!v50)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (*v49 != 7)
        {
          goto LABEL_86;
        }

        v50 = *(v49 + 40);
        if (!v50)
        {
          goto LABEL_86;
        }
      }

      if (*v50 <= 0)
      {
LABEL_86:
        while (1)
        {
          v51 = valuePop(v6);
          if (!v51)
          {
            break;
          }

          xmlXPathFreeObject(v51);
        }

LABEL_87:
        for (n = *v6; ; *v6 = n)
        {
          v53 = *n++;
          v43 = v53 > 0x20;
          v54 = (1 << v53) & 0x100002600;
          if (v43 || v54 == 0)
          {
            break;
          }
        }

        v13 = xmlXPathParseName(v6);
        if (!v13)
        {
          break;
        }

        continue;
      }
    }

    break;
  }

LABEL_105:
  v58 = *(v6 + 32);
  if (!v58 || ((v59 = *v58, v59 != 1) ? (v60 = v59 == 7) : (v60 = 1), v60))
  {
    v4 = valuePop(v6);
  }

  else
  {
    xmlXPtrErr(v6, 1902, "xmlXPtrEval: evaluation failed to return a node set\n", 0);
    v4 = 0;
  }

  v61 = valuePop(v6);
  if (v61)
  {
    v62 = 0;
    do
    {
      if (v61->type != XPATH_NODESET || (nodesetval = v61->nodesetval) == 0 || nodesetval->nodeNr != 1 || *nodesetval->nodeTab != ctx->doc)
      {
        ++v62;
      }

      xmlXPathFreeObject(v61);
      v61 = valuePop(v6);
    }

    while (v61);
    if (v62)
    {
      xmlXPtrErr(v6, 1903, "xmlXPtrEval: object(s) left on the eval stack\n", 0);
    }
  }

  if (*(v6 + 16))
  {
    xmlXPathFreeObject(v4);
    v4 = 0;
  }

  xmlXPathFreeParserContext(v6);
  return v4;
}

_DWORD *xmlXPtrErr(uint64_t a1, int a2, const char *a3, const xmlChar *a4)
{
  *(a1 + 16) = a2;
  v7 = *(a1 + 24);
  if (!v7)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 0xDu, a2, 2, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  xmlResetError((v7 + 232));
  v9 = *(a1 + 24);
  v9[58] = 13;
  v9[59] = a2;
  v9[62] = 2;
  v10 = xmlStrdup(*(a1 + 8));
  v11 = *(a1 + 24);
  *(v11 + 272) = v10;
  cur = *(a1 + 8);
  v13 = *a1 - cur;
  *(v11 + 296) = v13;
  v14 = *(v11 + 320);
  *(v11 + 312) = v14;
  v15 = *(v11 + 224);
  if (!v15)
  {
    return __xmlRaiseError(0, 0, 0, 0, v14, 0xDu, a2, 2, 0, 0, a4, cur, 0, v13, 0, a3, a4);
  }

  v16 = *(v11 + 216);

  return v15(v16, v11 + 232);
}

xmlNodePtr xmlXPtrBuildNodeList(xmlXPathObjectPtr obj)
{
  v2 = linkedOnOrAfterFall2022OSVersions();
  v3 = 0;
  if (!obj || (v2 & 1) != 0)
  {
    return v3;
  }

  v3 = 0;
  type = obj->type;
  if (obj->type <= XPATH_POINT)
  {
    if (type != XPATH_NODESET)
    {
      if (type != XPATH_POINT)
      {
        return v3;
      }

      user = obj->user;
      v6 = 0;
      goto LABEL_7;
    }

    nodesetval = obj->nodesetval;
    if (nodesetval && nodesetval->nodeNr >= 1)
    {
      v15 = 0;
      v3 = 0;
      v16 = 0;
      do
      {
        v17 = nodesetval->nodeTab[v15];
        if (v17)
        {
          v18 = v17->type;
          v19 = v18 > 0x12;
          v20 = (1 << v18) & 0x7DC04;
          if (v19 || v20 == 0)
          {
            v22 = xmlCopyNode(v17, 1);
            if (v16)
            {
              xmlAddNextSibling(v16, v22);
              if (v16->next)
              {
                v16 = v16->next;
              }
            }

            else
            {
              v16 = v22;
              v3 = v22;
            }
          }
        }

        ++v15;
      }

      while (v15 < nodesetval->nodeNr);
      return v3;
    }

    return 0;
  }

  if (type != XPATH_RANGE)
  {
    if (type != XPATH_LOCATIONSET)
    {
      return v3;
    }

    v8 = obj->user;
    if (!v8 || *v8 < 1)
    {
      return 0;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = xmlXPtrBuildNodeList(*(*(v8 + 1) + 8 * v9));
      v3 = v12;
      if (v11)
      {
        break;
      }

      v11 = v12;
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_20:
      ++v9;
      v10 = v3;
      if (v9 >= *v8)
      {
        return v3;
      }
    }

    xmlAddNextSibling(v11, v12);
    v3 = v10;
LABEL_18:
    v13 = v11;
    do
    {
      v11 = v13;
      v13 = v13->next;
    }

    while (v13);
    goto LABEL_20;
  }

  v23 = obj->user;
  if (!v23 || v23[2] == 18)
  {
    return 0;
  }

  user2 = obj->user2;
  if (!user2)
  {
    user = obj->user;
    v6 = 1;
LABEL_7:

    return xmlCopyNode(user, v6);
  }

  if (*(user2 + 8) == 18)
  {
    return 0;
  }

  v25 = 0;
  v3 = 0;
  index = obj->index;
  index2 = obj->index2;
  NthChild = obj->user;
  while (2)
  {
    v28 = user2;
    v29 = v25;
LABEL_43:
    v30 = 0;
    while (NthChild != v28)
    {
      v31 = *(NthChild + 8);
      if (NthChild == v23 && !v3)
      {
        if (v31 - 3 > 1)
        {
          if (index >= 2)
          {
            v29 = xmlCopyNode(NthChild, 0);
            NthChild = xmlXPtrGetNthChild(NthChild, index - 1);
            index = 0;
            v3 = v29;
            if (NthChild)
            {
              goto LABEL_43;
            }

            return v3;
          }

          v34 = xmlCopyNode(NthChild, 1);
          v3 = v34;
          v29 = 0;
        }

        else
        {
          v32 = *(NthChild + 80);
          if (v32)
          {
            if (index <= 1)
            {
              v33 = *(NthChild + 80);
            }

            else
            {
              v33 = (v32 + index - 1);
            }

            v34 = xmlNewText(v33);
          }

          else
          {
            v34 = xmlNewTextLen(0, 0);
          }

          v3 = v34;
        }

        v30 = v34;
        goto LABEL_63;
      }

      if (v31 <= 0x14)
      {
        if (((1 << v31) & 0x19C040) != 0)
        {
          goto LABEL_63;
        }

        if (v31 == 2)
        {
          v35 = *__xmlGenericError();
          v36 = *__xmlGenericErrorContext();
          v37 = "Internal error at %s:%d\n";
LABEL_68:
          v35(v36, v37);
LABEL_63:
          if (!v3)
          {
            goto LABEL_94;
          }

          goto LABEL_64;
        }

        if (v31 == 17)
        {
          v35 = *__xmlGenericError();
          v36 = *__xmlGenericErrorContext();
          v37 = "Unimplemented block at %s:%d\n";
          goto LABEL_68;
        }
      }

      v38 = xmlCopyNode(NthChild, 1);
      if (!v38)
      {
        goto LABEL_63;
      }

      if (!v3 || !(v30 | v29))
      {
        v43 = *__xmlGenericError();
        v44 = *__xmlGenericErrorContext();
        v43(v44, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 1654);
        return 0;
      }

      if (v30)
      {
        xmlAddNextSibling(v30, v38);
        goto LABEL_65;
      }

      v30 = xmlAddChild(v29, v38);
LABEL_64:
      if (!(v30 | v29))
      {
LABEL_94:
        v41 = *__xmlGenericError();
        v42 = *__xmlGenericErrorContext();
        v41(v42, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 1668);
        return 0;
      }

LABEL_65:
      NthChild = xmlXPtrAdvanceNode(NthChild, 0);
      if (!NthChild)
      {
        return v3;
      }
    }

    if (*(NthChild + 8) == 3)
    {
      v45 = *(NthChild + 80);
      if (v45)
      {
        v46 = index - 1;
        v47 = index > 1;
        v48 = v28 == v23;
        v49 = !v48 || !v47;
        if (v48 && v47)
        {
          v50 = (index - 1);
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          v46 = 0;
        }

        v51 = index2 - v46;
        v52 = (v45 + v50);
      }

      else
      {
        v52 = 0;
        v51 = 0;
      }

      v53 = xmlNewTextLen(v52, v51);
      if (v3)
      {
        if (v30)
        {
          xmlAddNextSibling(v30, v53);
        }

        else
        {
          xmlAddChild(v29, v53);
        }
      }

      else
      {
        return v53;
      }
    }

    else
    {
      v39 = xmlCopyNode(NthChild, 0);
      v25 = v39;
      if (v3)
      {
        if (v30)
        {
          Sibling = xmlAddNextSibling(v30, v39);
        }

        else
        {
          Sibling = xmlAddChild(v29, v39);
        }

        v25 = Sibling;
      }

      else
      {
        v3 = v39;
      }

      if (index2 >= 2)
      {
        user2 = xmlXPtrGetNthChild(NthChild, index2 - 1);
        index2 = 0;
      }

      else
      {
        user2 = v28;
      }

      if (v28 == v23 && index >= 2)
      {
        NthChild = xmlXPtrGetNthChild(NthChild, index - 1);
        index = 0;
      }

      else
      {
        NthChild = *(NthChild + 24);
      }

      if (NthChild)
      {
        continue;
      }
    }

    return v3;
  }
}

void xmlXPtrRangeToFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if ((linkedOnOrAfterFall2022OSVersions() & 1) == 0)
  {

    xmlXPathErr(ctxt, 7);
  }
}

uint64_t xmlXPtrAdvanceNode(uint64_t a1, _DWORD *a2)
{
LABEL_1:
  while (a1)
  {
    if (*(a1 + 8) == 18)
    {
      return 0;
    }

    v4 = *(a1 + 24);
    v5 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }

    if (a2)
    {
      ++*a2;
    }

    a1 = v4;
    while (1)
    {
      v6 = *(a1 + 8);
      if (v6 > 0xD)
      {
        break;
      }

      if (v6 != 5)
      {
        if (((1 << v6) & 0x221A) == 0)
        {
          goto LABEL_1;
        }

        return a1;
      }

      v7 = *__xmlGenericError();
      v8 = __xmlGenericErrorContext();
      v7(*v8, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 2391);
      v5 = a1;
LABEL_10:
      while (1)
      {
        a1 = *(v5 + 48);
        if (a1)
        {
          break;
        }

        v5 = *(v5 + 40);
        if (a2)
        {
          --*a2;
        }

        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  return a1;
}

void xmlXPtrEvalRangePredicate(xmlXPathParserContextPtr ctxt)
{
  v2 = linkedOnOrAfterFall2022OSVersions();
  if (!ctxt || (v2 & 1) != 0)
  {
    return;
  }

  for (i = ctxt->cur + 1; ; ++i)
  {
    v4 = *(i - 1);
    if (v4 > 0x20 || ((1 << v4) & 0x100002600) == 0)
    {
      break;
    }

    ctxt->cur = i;
  }

  if (v4 != 91)
  {
LABEL_42:
    v26 = 6;
    goto LABEL_43;
  }

  do
  {
    ctxt->cur = i;
    v6 = *i++;
    v7 = (1 << v6) & 0x100002600;
  }

  while (v6 <= 0x20 && v7 != 0);
  value = ctxt->value;
  if (!value || value->type != XPATH_LOCATIONSET)
  {
    v26 = 11;
LABEL_43:

    xmlXPathErr(ctxt, v26);
    return;
  }

  v10 = valuePop(ctxt);
  user = v10->user;
  context = ctxt->context;
  context->node = 0;
  if (!user || !*user)
  {
    *&context->contextSize = 0;
    xmlXPathEvalExpr(ctxt);
    v27 = valuePop(ctxt);
    if (v27)
    {
      xmlXPathFreeObject(v27);
    }

    valuePush(ctxt, v10);
    if (ctxt->error)
    {
      return;
    }

    goto LABEL_34;
  }

  cur = ctxt->cur;
  v14 = xmlXPtrLocationSetCreate(0);
  if (*user < 1)
  {
LABEL_29:
    xmlXPathFreeObject(v10);
    v24 = ctxt->context;
    v24->node = 0;
    *&v24->contextSize = -1;
    v25 = xmlXPtrWrapLocationSet(v14);
    valuePush(ctxt, v25);
LABEL_34:
    if (*ctxt->cur == 93)
    {
      v28 = ctxt->cur + 1;
      do
      {
        ctxt->cur = v28;
        v29 = *v28++;
        v30 = (1 << v29) & 0x100002600;
      }

      while (v29 <= 0x20 && v30 != 0);
      return;
    }

    goto LABEL_42;
  }

  v15 = 0;
  v16 = ctxt->context;
  while (1)
  {
    ctxt->cur = cur;
    v17 = *(*(*(user + 1) + 8 * v15) + 40);
    v16->node = v17;
    v18 = xmlXPathNewNodeSet(v17);
    valuePush(ctxt, v18);
    v19 = ctxt->context;
    v20 = v15 + 1;
    v19->contextSize = *user;
    v19->proximityPosition = v15 + 1;
    xmlXPathEvalExpr(ctxt);
    if (ctxt->error)
    {
      break;
    }

    v21 = valuePop(ctxt);
    if (xmlXPathEvaluatePredicateResult(ctxt, v21))
    {
      v22 = xmlXPathObjectCopy(*(*(user + 1) + 8 * v15));
      xmlXPtrLocationSetAdd(v14, v22);
    }

    if (v21)
    {
      xmlXPathFreeObject(v21);
    }

    if (ctxt->value == v18)
    {
      v23 = valuePop(ctxt);
      xmlXPathFreeObject(v23);
    }

    v16 = ctxt->context;
    v16->node = 0;
    ++v15;
    if (v20 >= *user)
    {
      goto LABEL_29;
    }
  }
}

void xmlXPtrEvalChildSeq(xmlXPathParserContext *a1, xmlChar *val)
{
  if (val)
  {
    v4 = xmlXPathNewString(val);
    valuePush(a1, v4);
    free(val);
    xmlXPathIdFunction(a1, 1);
    if (a1->error)
    {
      return;
    }
  }

  else if (*a1->cur == 47 && *(a1->cur + 1) != 49)
  {
    xmlXPtrErr(a1, 1901, "warning: ChildSeq not starting by /1\n", 0);
  }

  for (i = a1->cur; *a1->cur == 47; i = a1->cur)
  {
    a1->cur = i + 1;
    v6 = i[1];
    if ((v6 - 48) > 9)
    {
      v17 = 0;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = i + 2;
      do
      {
        v10 = v6 - 48;
        v11 = 10 * v7;
        if (v7 > 214748364)
        {
          v11 = v7;
        }

        v12 = -2147483601 - v6;
        v13 = v11 <= v12;
        if (v11 <= v12)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0;
        }

        if (!v13 || v7 > 214748364)
        {
          v8 = 1;
        }

        v7 = v14 + v11;
        a1->cur = v9;
        v16 = *v9++;
        v6 = v16;
      }

      while ((v16 - 48) < 0xA);
      if (v8)
      {
        v17 = 0;
      }

      else
      {
        v17 = v7;
      }
    }

    value = a1->value;
    if (value && *value == 1)
    {
      v19 = valuePop(a1);
      v20 = v19;
      if (v17 >= 1 && (nodesetval = v19->nodesetval) != 0 && nodesetval->nodeNr == 1 && (nodeTab = nodesetval->nodeTab, (NthChild = xmlXPtrGetNthChild(*nodeTab, v17)) != 0))
      {
        *nodeTab = NthChild;
        v24 = a1;
        v25 = v20;
      }

      else
      {
        xmlXPathFreeObject(v20);
        v25 = xmlXPathNewNodeSet(0);
        v24 = a1;
      }

      valuePush(v24, v25);
    }

    else
    {
      xmlXPathErr(a1, 11);
    }
  }
}

uint64_t xmlXPtrGetNthChild(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) != 18)
    {
      result = *(result + 24);
      if ((a2 & 0x80000000) == 0)
      {
        v2 = 0;
        do
        {
          if (!result)
          {
            break;
          }

          v3 = *(result + 8);
          v4 = v3 > 0xD;
          v5 = (1 << v3) & 0x2202;
          if (!v4 && v5 != 0 && ++v2 == a2)
          {
            break;
          }

          result = *(result + 48);
        }

        while (v2 <= a2);
      }
    }
  }

  return result;
}

char *xmlXPtrNewPoint(uint64_t a1, int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    result = malloc_type_malloc(0x48uLL, 0x10B004092205464uLL);
    if (result)
    {
      *(result + 36) = 0u;
      *(result + 17) = 0;
      *(result + 52) = 0u;
      *(result + 20) = 0u;
      *(result + 4) = 0u;
      *result = 5;
      *(result + 5) = a1;
      *(result + 12) = a2;
    }

    else
    {
      xmlXPtrErrMemory("allocating point");
      return 0;
    }
  }

  return result;
}

uint64_t xmlXPtrGetArity(uint64_t a1)
{
  if (!a1 || *(a1 + 8) == 18)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    v3 = *(v2 + 8);
    v4 = v3 > 0xD;
    v5 = (1 << v3) & 0x2202;
    if (v4 || v5 == 0)
    {
      result = result;
    }

    else
    {
      result = (result + 1);
    }

    v2 = *(v2 + 48);
  }

  while (v2);
  return result;
}

uint64_t xmlXPtrAdvanceChar(uint64_t *a1, int *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      v6 = *a1;
      if (*a1)
      {
        if (*(v6 + 8) != 18)
        {
          v7 = a3;
          if ((a3 & 0x80000000) == 0)
          {
            v8 = *a2;
            while (v6)
            {
              while (1)
              {
                v9 = *(v6 + 8);
                if (v9 > 0xD || ((1 << v9) & 0x2202) == 0)
                {
                  break;
                }

                if (v8 < 1)
                {
                  NthChild = xmlXPtrAdvanceNode(v6, 0);
                }

                else
                {
                  NthChild = xmlXPtrGetNthChild(v6, v8);
                }

                v6 = NthChild;
                v8 = 0;
                if (!NthChild)
                {
                  goto LABEL_30;
                }
              }

              if (v8 <= 1)
              {
                v8 = 1;
              }

              if (!v7)
              {
                result = 0;
                goto LABEL_31;
              }

              if (v9 == 1 || (v12 = *(v6 + 80)) == 0)
              {
                v13 = 0;
              }

              else
              {
                v13 = xmlStrlen(v12);
              }

              if (v8 > v13)
              {
                v14 = *__xmlGenericError();
                v15 = __xmlGenericErrorContext();
                v14(*v15, "Internal error at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xpointer.c", 2465);
                v8 = v13;
              }

              if (v8 + v7 < v13)
              {
                result = 0;
                v8 += v7;
                goto LABEL_31;
              }

              v6 = xmlXPtrAdvanceNode(v6, 0);
              result = 0xFFFFFFFFLL;
              v7 = v7 - v13 + v8;
              v8 = 0;
              if (v7 < 0)
              {
                return result;
              }
            }

            v8 = 0;
LABEL_30:
            result = 0xFFFFFFFFLL;
LABEL_31:
            *a1 = v6;
            *a2 = v8;
          }
        }
      }
    }
  }

  return result;
}

BOOL xmlDetectSAX2_cold_1(_DWORD *a1)
{
  *v3 = 0;
  _os_log_fault_impl(&dword_1C78D9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "XML SAX2 parser requested but SAX1 used due to startElement/endElement handlers--switch to startElementNs/endElementNs", v3, 2u);
  return *a1 == -554844497;
}

void xmlBufferLength_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_1C78D9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "xmlBufferLength() int overflow: %{public}u", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}