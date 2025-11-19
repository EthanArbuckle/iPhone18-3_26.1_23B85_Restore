void xmlSetBufferAllocationScheme(xmlBufferAllocationScheme scheme)
{
  if (scheme <= XML_BUFFER_ALLOC_HYBRID && ((1 << scheme) & 0x13) != 0)
  {
    *__xmlBufferAllocScheme() = scheme;
  }
}

void xmlFreeNs(xmlNsPtr cur)
{
  if (cur)
  {
    href = cur->href;
    if (href)
    {
      free(href);
    }

    prefix = cur->prefix;
    if (prefix)
    {
      free(prefix);
    }

    free(cur);
  }
}

void xmlSetNs(xmlNodePtr node, xmlNsPtr ns)
{
  if (node)
  {
    if (node->type - 1 <= 1)
    {
      node->ns = ns;
    }
  }
}

void xmlFreeNsList(xmlNsPtr cur)
{
  if (cur)
  {
    do
    {
      next = cur->next;
      xmlFreeNs(cur);
      cur = next;
    }

    while (next);
  }
}

xmlDtdPtr xmlNewDtd(xmlDocPtr doc, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (doc && doc->extSubset)
  {
    return 0;
  }

  v9 = malloc_type_malloc(0x80uLL, 0x10F0040D9356C02uLL);
  v8 = v9;
  if (v9)
  {
    *&v9->entities = 0u;
    *&v9->SystemID = 0u;
    *&v9->doc = 0u;
    *&v9->elements = 0u;
    *&v9->last = 0u;
    *&v9->next = 0u;
    *&v9->_private = 0u;
    *&v9->name = 0u;
    v9->type = XML_DTD_NODE;
    if (name)
    {
      v9->name = xmlStrdup(name);
    }

    if (ExternalID)
    {
      v8->ExternalID = xmlStrdup(ExternalID);
    }

    if (SystemID)
    {
      v8->SystemID = xmlStrdup(SystemID);
    }

    if (doc)
    {
      doc->extSubset = v8;
    }

    v8->doc = doc;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v10 = __xmlRegisterNodeDefaultValue();
      (*v10)(v8);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building DTD");
  }

  return v8;
}

xmlNodePtr xmlNewDocText(const xmlDoc *doc, const xmlChar *content)
{
  result = xmlNewText(content);
  if (result)
  {
    result->doc = doc;
  }

  return result;
}

xmlNodePtr xmlAddNextSibling(xmlNodePtr cur, xmlNodePtr elem)
{
  if (cur)
  {
    v3 = cur;
    cur = 0;
    if (elem)
    {
      if (v3->type != XML_NAMESPACE_DECL)
      {
        cur = 0;
        if (v3 != elem && elem->type != XML_NAMESPACE_DECL)
        {
          xmlUnlinkNode(elem);
          type = elem->type;
          if (type == XML_ATTRIBUTE_NODE)
          {

            return xmlAddPropSibling(v3, v3, elem);
          }

          else
          {
            if (type != XML_TEXT_NODE)
            {
              goto LABEL_16;
            }

            if (v3->type == XML_TEXT_NODE)
            {
              xmlNodeAddContent(v3, elem->content);
              xmlFreeNode(elem);
              return v3;
            }

            next = v3->next;
            if (next && next->type == XML_TEXT_NODE && v3->name == next->name)
            {
              v9 = xmlStrdup(elem->content);
              v10 = xmlStrcat(v9, v3->next->content);
              xmlNodeSetContent(v3->next, v10);
              free(v10);
              xmlFreeNode(elem);
              return v3->next;
            }

            else
            {
LABEL_16:
              doc = v3->doc;
              if (elem->doc != doc)
              {
                xmlSetTreeDoc(elem, doc);
              }

              elem->prev = v3;
              v7 = *&v3->parent;
              *&elem->parent = v7;
              v3->next = elem;
              v8 = elem->next;
              if (v8)
              {
                v8->prev = elem;
              }

              if (v7)
              {
                if (*(v7 + 32) == v3)
                {
                  *(v7 + 32) = elem;
                }
              }

              return elem;
            }
          }
        }
      }
    }
  }

  return cur;
}

xmlNodePtr xmlNewReference(const xmlDoc *doc, const xmlChar *name)
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
    v4->type = XML_ENTITY_REF_NODE;
    v4->doc = doc;
    if (*name == 38)
    {
      v6 = name + 1;
      v7 = xmlStrlen(v6);
      v8 = v7 - 1;
      if (v6[v8] != 59)
      {
        LODWORD(v8) = v7;
      }

      v9 = xmlStrndup(v6, v8);
    }

    else
    {
      v9 = xmlStrdup(name);
    }

    v5->name = v9;
    DocEntity = xmlGetDocEntity(doc, v9);
    if (DocEntity)
    {
      v5->content = DocEntity->content;
      v5->children = DocEntity;
      v5->last = DocEntity;
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v11 = __xmlRegisterNodeDefaultValue();
      (*v11)(v5);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building reference");
  }

  return v5;
}

xmlChar *xmlNodeListGetStringInternal(xmlDoc *a1, uint64_t a2, int a3, int a4)
{
  v4 = 0;
  if (a2 && a4 <= 40)
  {
    v6 = a2;
    v8 = *(a2 + 40);
    v9 = !v8 || *(v8 + 8) != 2;
    v4 = 0;
    while (1)
    {
      v10 = *(v6 + 8);
      if ((v10 - 3) < 2)
      {
        break;
      }

      if (v10 == 5)
      {
        if (!a3)
        {
          strcpy(add, "&");
          v18 = xmlStrncat(v4, add, 1);
          v19 = xmlStrcat(v18, *(v6 + 16));
          strcpy(add, ";");
          v12 = xmlStrncat(v19, add, 1);
          goto LABEL_19;
        }

        DocEntity = xmlGetDocEntity(a1, *(v6 + 16));
        if (!DocEntity)
        {
          v11 = *(v6 + 80);
          goto LABEL_10;
        }

        children = DocEntity->children;
        StringInternal = xmlNodeListGetStringInternal(a1);
        if (StringInternal)
        {
          v16 = StringInternal;
LABEL_22:
          v4 = xmlStrcat(v4, v16);
          free(v16);
        }
      }

LABEL_23:
      v6 = *(v6 + 48);
      if (!v6)
      {
        return v4;
      }
    }

    v11 = *(v6 + 80);
    if (!a3)
    {
      if (v9)
      {
        v17 = xmlEncodeEntitiesReentrant(a1, v11);
      }

      else
      {
        v17 = xmlEncodeAttributeEntities(a1, v11);
      }

      v16 = v17;
      if (!v17)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_10:
    v12 = xmlStrcat(v4, v11);
LABEL_19:
    v4 = v12;
    goto LABEL_23;
  }

  return v4;
}

xmlChar *__cdecl xmlNodeListGetRawString(const xmlDoc *doc, const xmlNode *list, int inLine)
{
  if (list)
  {
    v4 = list;
    v6 = 0;
    while (1)
    {
      type = v4->type;
      if (type - 3 >= 2)
      {
        if (type == XML_ENTITY_REF_NODE)
        {
          if (!inLine)
          {
            strcpy(add, "&");
            v13 = xmlStrncat(v6, add, 1);
            v14 = xmlStrcat(v13, v4->name);
            strcpy(add, ";");
            v9 = xmlStrncat(v14, add, 1);
            goto LABEL_14;
          }

          DocEntity = xmlGetDocEntity(doc, v4->name);
          if (!DocEntity)
          {
            content = v4->content;
LABEL_5:
            v9 = xmlStrcat(v6, content);
LABEL_14:
            v6 = v9;
            goto LABEL_15;
          }

          RawString = xmlNodeListGetRawString(doc, DocEntity->children, 1);
          if (!RawString)
          {
            goto LABEL_15;
          }

LABEL_12:
          v12 = RawString;
          v6 = xmlStrcat(v6, RawString);
          free(v12);
        }
      }

      else
      {
        content = v4->content;
        if (inLine)
        {
          goto LABEL_5;
        }

        RawString = xmlEncodeSpecialChars(doc, content);
        if (RawString)
        {
          goto LABEL_12;
        }
      }

LABEL_15:
      v4 = v4->next;
      if (!v4)
      {
        return v6;
      }
    }
  }

  return 0;
}

void xmlFreePropList(xmlAttrPtr cur)
{
  if (cur)
  {
    do
    {
      next = cur->next;
      xmlFreeProp(cur);
      cur = next;
    }

    while (next);
  }
}

int xmlRemoveProp(xmlAttrPtr cur)
{
  if (!cur)
  {
    return -1;
  }

  parent = cur->parent;
  if (!parent)
  {
    return -1;
  }

  properties = parent->properties;
  if (properties == cur)
  {
    next = cur->next;
    parent->properties = next;
    if (next)
    {
      v3 = 0;
LABEL_11:
      next->prev = v3;
    }
  }

  else
  {
    do
    {
      if (!properties)
      {
        return -1;
      }

      v3 = properties;
      properties = properties->next;
    }

    while (properties != cur);
    next = cur->next;
    v3->next = next;
    if (next)
    {
      goto LABEL_11;
    }
  }

  xmlFreeProp(cur);
  return 0;
}

xmlNodePtr xmlNewDocPI(xmlDocPtr doc, const xmlChar *name, const xmlChar *content)
{
  if (!name)
  {
    return 0;
  }

  v6 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v7 = v6;
  if (v6)
  {
    *&v6->line = 0;
    *&v6->content = 0u;
    *&v6->nsDef = 0u;
    *&v6->next = 0u;
    *&v6->doc = 0u;
    *&v6->name = 0u;
    *&v6->last = 0u;
    *&v6->_private = 0u;
    v6->type = XML_PI_NODE;
    if (doc && (dict = doc->dict) != 0)
    {
      v9 = xmlDictLookup(dict, name, -1);
    }

    else
    {
      v9 = xmlStrdup(name);
    }

    v7->name = v9;
    if (content)
    {
      v7->content = xmlStrdup(content);
    }

    v7->doc = doc;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v10 = __xmlRegisterNodeDefaultValue();
      (*v10)(v7);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building PI");
  }

  return v7;
}

xmlNodePtr xmlNewDocRawNode(xmlDocPtr doc, xmlNsPtr ns, const xmlChar *name, const xmlChar *content)
{
  v6 = xmlNewDocNode(doc, ns, name, 0);
  v7 = v6;
  if (v6)
  {
    v6->doc = doc;
    if (content)
    {
      v8 = xmlNewText(content);
      if (v8)
      {
        v8->doc = doc;
        v7->children = v8;
        next = v8->next;
        if (next)
        {
          do
          {
            v10 = next;
            v8->parent = v7;
            next = next->next;
            v8 = v10;
          }

          while (next);
        }

        else
        {
          v10 = v8;
        }

        v10->parent = v7;
        v7->last = v10;
      }

      else
      {
        v7->children = 0;
        v7->last = 0;
      }
    }
  }

  return v7;
}

xmlNodePtr xmlNewDocFragment(xmlDocPtr doc)
{
  v2 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v3 = v2;
  if (v2)
  {
    *&v2->line = 0;
    *&v2->content = 0u;
    *&v2->nsDef = 0u;
    *&v2->next = 0u;
    *&v2->doc = 0u;
    *&v2->name = 0u;
    *&v2->last = 0u;
    *&v2->_private = 0u;
    v2->type = XML_DOCUMENT_FRAG_NODE;
    v2->doc = doc;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v4 = __xmlRegisterNodeDefaultValue();
      (*v4)(v3);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building fragment");
  }

  return v3;
}

xmlNodePtr xmlNewTextChild(xmlNodePtr parent, xmlNsPtr ns, const xmlChar *name, const xmlChar *content)
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
  result = xmlNewDocRawNode(doc, ns, name, content);
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

xmlNodePtr xmlNewCharRef(xmlDocPtr doc, const xmlChar *name)
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
    v4->type = XML_ENTITY_REF_NODE;
    v4->doc = doc;
    if (*name == 38)
    {
      v6 = name + 1;
      v7 = xmlStrlen(v6);
      v8 = v7 - 1;
      if (v6[v8] != 59)
      {
        LODWORD(v8) = v7;
      }

      v9 = xmlStrndup(v6, v8);
    }

    else
    {
      v9 = xmlStrdup(name);
    }

    v5->name = v9;
    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v10 = __xmlRegisterNodeDefaultValue();
      (*v10)(v5);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building character reference");
  }

  return v5;
}

xmlNodePtr xmlNewTextLen(const xmlChar *content, int len)
{
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
    v4->type = XML_TEXT_NODE;
    v4->name = "text";
    if (content)
    {
      v4->content = xmlStrndup(content, len);
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v6 = __xmlRegisterNodeDefaultValue();
      (*v6)(v5);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building text");
  }

  return v5;
}

xmlNodePtr xmlNewDocTextLen(xmlDocPtr doc, const xmlChar *content, int len)
{
  result = xmlNewTextLen(content, len);
  if (result)
  {
    result->doc = doc;
  }

  return result;
}

xmlNodePtr xmlNewComment(const xmlChar *content)
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
    v2->type = XML_COMMENT_NODE;
    v2->name = "comment";
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
    __xmlSimpleError(2u, 2, 0, 0, "building comment");
  }

  return v3;
}

xmlNodePtr xmlNewCDataBlock(xmlDocPtr doc, const xmlChar *content, int len)
{
  v6 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
  v7 = v6;
  if (v6)
  {
    *&v6->line = 0;
    *&v6->content = 0u;
    *&v6->nsDef = 0u;
    *&v6->next = 0u;
    *&v6->doc = 0u;
    *&v6->name = 0u;
    *&v6->last = 0u;
    *&v6->_private = 0u;
    v6->type = XML_CDATA_SECTION_NODE;
    v6->doc = doc;
    if (content)
    {
      v6->content = xmlStrndup(content, len);
    }

    if (__xmlRegisterCallbacks && *__xmlRegisterNodeDefaultValue())
    {
      v8 = __xmlRegisterNodeDefaultValue();
      (*v8)(v7);
    }
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "building CDATA");
  }

  return v7;
}

xmlNodePtr xmlNewDocComment(xmlDocPtr doc, const xmlChar *content)
{
  result = xmlNewComment(content);
  if (result)
  {
    result->doc = doc;
  }

  return result;
}

void xmlSetListDoc(xmlNodePtr list, xmlDocPtr doc)
{
  if (list)
  {
    v2 = list;
    if (list->type != XML_NAMESPACE_DECL)
    {
      do
      {
        if (v2->doc != doc)
        {
          xmlSetTreeDoc(v2, doc);
        }

        v2 = v2->next;
      }

      while (v2);
    }
  }
}

void xmlNodeAddContent(xmlNodePtr cur, const xmlChar *content)
{
  if (cur && content)
  {
    v4 = xmlStrlen(content);

    xmlNodeAddContentLen(cur, content, v4);
  }
}

void xmlNodeSetContent(xmlNodePtr cur, const xmlChar *content)
{
  if (!cur)
  {
    return;
  }

  type = cur->type;
  if (type > XML_DOCUMENT_FRAG_NODE)
  {
    return;
  }

  v5 = 1 << type;
  if ((v5 & 0x1F8) != 0)
  {
    v6 = cur->content;
    p_properties = &cur->properties;
    if (v6)
    {
      v8 = v6 == p_properties;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      goto LABEL_13;
    }

    doc = cur->doc;
    if (doc)
    {
      dict = doc->dict;
      if (dict)
      {
        if (xmlDictOwns(dict, v6))
        {
LABEL_13:
          children = cur->children;
          if (children)
          {
            xmlFreeNodeList(children);
          }

          cur->children = 0;
          cur->last = 0;
          if (content)
          {
            v12 = xmlStrdup(content);
          }

          else
          {
            v12 = 0;
          }

          cur->content = v12;
          *p_properties = 0;
          cur->nsDef = 0;
          return;
        }

        v6 = cur->content;
      }
    }

    free(v6);
    goto LABEL_13;
  }

  if ((v5 & 0x806) != 0)
  {
    v13 = cur->children;
    if (v13)
    {
      xmlFreeNodeList(v13);
    }

    NodeList = xmlStringGetNodeList(cur->doc, content);
    cur->children = NodeList;
    if (NodeList)
    {
      next = NodeList->next;
      if (next)
      {
        do
        {
          v16 = next;
          NodeList->parent = cur;
          next = next->next;
          NodeList = v16;
        }

        while (next);
      }

      else
      {
        v16 = NodeList;
      }

      v16->parent = cur;
      cur->last = v16;
    }

    else
    {
      cur->last = 0;
    }
  }
}

xmlNode *xmlAddPropSibling(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != 2)
  {
    return 0;
  }

  v3 = a3;
  if (*(a3 + 8) != 2)
  {
    return 0;
  }

  next = a2;
  if (a1)
  {
    if (*(a1 + 8) != 2)
    {
      return 0;
    }
  }

  v6 = *(a3 + 72);
  v7 = *(a2 + 40);
  v8 = *(a3 + 16);
  if (v6)
  {
    v9 = *(v6 + 16);
  }

  else
  {
    v9 = 0;
  }

  PropNodeInternal = xmlGetPropNodeInternal(v7, v8, v9, 1);
  doc = next->doc;
  if (v3->doc != doc)
  {
    xmlSetTreeDoc(v3, doc);
  }

  parent = next->parent;
  v3->parent = parent;
  v3->prev = a1;
  if (!a1)
  {
    v3->next = next;
    goto LABEL_16;
  }

  v3->next = *(a1 + 48);
  *(a1 + 48) = v3;
  next = v3->next;
  if (next)
  {
LABEL_16:
    next->prev = v3;
  }

  if (!v3->prev && parent)
  {
    parent->properties = v3;
  }

  if (PropNodeInternal && PropNodeInternal->type != XML_ATTRIBUTE_DECL)
  {
    xmlRemoveProp(PropNodeInternal);
  }

  return v3;
}

xmlNodePtr xmlAddPrevSibling(xmlNodePtr cur, xmlNodePtr elem)
{
  if (cur)
  {
    v3 = cur;
    cur = 0;
    if (elem)
    {
      if (v3->type != XML_NAMESPACE_DECL)
      {
        cur = 0;
        if (v3 != elem && elem->type != XML_NAMESPACE_DECL)
        {
          xmlUnlinkNode(elem);
          type = elem->type;
          if (type == XML_ATTRIBUTE_NODE)
          {
            prev = v3->prev;

            return xmlAddPropSibling(prev, v3, elem);
          }

          else
          {
            if (type != XML_TEXT_NODE)
            {
              goto LABEL_16;
            }

            if (v3->type == XML_TEXT_NODE)
            {
              v5 = xmlStrdup(elem->content);
              v6 = xmlStrcat(v5, v3->content);
              xmlNodeSetContent(v3, v6);
              free(v6);
              xmlFreeNode(elem);
              return v3;
            }

            v8 = v3->prev;
            if (v8 && v8->type == XML_TEXT_NODE && v3->name == v8->name)
            {
              xmlNodeAddContent(v8, elem->content);
              xmlFreeNode(elem);
              return v3->prev;
            }

            else
            {
LABEL_16:
              doc = v3->doc;
              if (elem->doc != doc)
              {
                xmlSetTreeDoc(elem, doc);
              }

              parent = v3->parent;
              elem->parent = parent;
              elem->next = v3;
              elem->prev = v3->prev;
              v3->prev = elem;
              v11 = elem->prev;
              if (v11)
              {
                v11->next = elem;
              }

              if (parent)
              {
                if (parent->children == v3)
                {
                  parent->children = elem;
                }
              }

              return elem;
            }
          }
        }
      }
    }
  }

  return cur;
}

xmlNodePtr xmlAddSibling(xmlNodePtr cur, xmlNodePtr elem)
{
  if (!cur)
  {
    return 0;
  }

  last = 0;
  if (!elem)
  {
    return last;
  }

  type = cur->type;
  if (type == XML_NAMESPACE_DECL)
  {
    return last;
  }

  last = 0;
  if (cur == elem || elem->type == XML_NAMESPACE_DECL)
  {
    return last;
  }

  if (type == XML_ATTRIBUTE_NODE || (parent = cur->parent) == 0 || !parent->children || (last = parent->last) == 0 || last->next)
  {
    do
    {
      last = cur;
      cur = cur->next;
    }

    while (cur);
  }

  xmlUnlinkNode(elem);
  v6 = elem->type;
  if (last->type == XML_TEXT_NODE && v6 == XML_TEXT_NODE)
  {
    if (last->name != elem->name)
    {
      goto LABEL_23;
    }

    xmlNodeAddContent(last, elem->content);
    xmlFreeNode(elem);
    return last;
  }

  if (v6 != XML_ATTRIBUTE_NODE)
  {
LABEL_23:
    doc = last->doc;
    if (elem->doc != doc)
    {
      xmlSetTreeDoc(elem, doc);
    }

    v10 = last->parent;
    elem->next = 0;
    elem->prev = last;
    elem->parent = v10;
    last->next = elem;
    if (v10)
    {
      v10->last = elem;
    }

    return elem;
  }

  return xmlAddPropSibling(last, last, elem);
}

xmlNodePtr xmlAddChildList(xmlNodePtr parent, xmlNodePtr cur)
{
  if (!parent)
  {
    return 0;
  }

  v2 = cur;
  v3 = 0;
  if (cur && parent->type != XML_NAMESPACE_DECL)
  {
    type = cur->type;
    if (type == XML_NAMESPACE_DECL)
    {
      return 0;
    }

    if (parent->children)
    {
      if (type == XML_TEXT_NODE)
      {
        last = parent->last;
        if (last->type == XML_TEXT_NODE && cur->name == last->name)
        {
          xmlNodeAddContent(last, cur->content);
          next = v2->next;
          xmlFreeNode(v2);
          v2 = next;
          if (!next)
          {
            return parent->last;
          }
        }
      }

      v8 = parent->last;
      v8->next = v2;
      v2->prev = v8;
    }

    else
    {
      parent->children = cur;
    }

    p_next = &v2->next;
    v9 = v2->next;
    if (v9)
    {
      v3 = v2;
      do
      {
        v3->parent = parent;
        doc = parent->doc;
        if (v3->doc != doc)
        {
          xmlSetTreeDoc(v3, doc);
          v9 = *p_next;
        }

        v3 = v9;
        p_next = &v9->next;
        v9 = v9->next;
      }

      while (v9);
    }

    else
    {
      v3 = v2;
    }

    v3->parent = parent;
    v12 = parent->doc;
    if (v3->doc != v12)
    {
      xmlSetTreeDoc(v3, v12);
    }

    parent->last = v3;
  }

  return v3;
}

xmlNodePtr xmlGetLastChild(xmlNodePtr parent)
{
  if (parent)
  {
    if (parent->type == XML_NAMESPACE_DECL)
    {
      return 0;
    }

    else
    {
      return parent->last;
    }
  }

  return parent;
}

unint64_t xmlChildElementCount(unint64_t parent)
{
  if (parent)
  {
    v1 = *(parent + 8);
    v2 = v1 > 0xD;
    v3 = (1 << v1) & 0x2A42;
    if (v2 || v3 == 0)
    {
      return 0;
    }

    v5 = *(parent + 24);
    if (!v5)
    {
      return 0;
    }

    else
    {
      parent = 0;
      do
      {
        if (*(v5 + 8) == 1)
        {
          ++parent;
        }

        v5 = *(v5 + 48);
      }

      while (v5);
    }
  }

  return parent;
}

xmlNodePtr xmlFirstElementChild(xmlNodePtr parent)
{
  if (parent)
  {
    type = parent->type;
    v2 = type > XML_HTML_DOCUMENT_NODE;
    v3 = (1 << type) & 0x2A42;
    if (v2 || v3 == 0)
    {
      return 0;
    }

    else
    {
      for (parent = parent->children; parent; parent = parent->next)
      {
        if (parent->type == XML_ELEMENT_NODE)
        {
          break;
        }
      }
    }
  }

  return parent;
}

xmlNodePtr xmlLastElementChild(xmlNodePtr parent)
{
  if (parent)
  {
    type = parent->type;
    v2 = type > XML_HTML_DOCUMENT_NODE;
    v3 = (1 << type) & 0x2A42;
    if (v2 || v3 == 0)
    {
      return 0;
    }

    else
    {
      for (parent = parent->last; parent; parent = parent->prev)
      {
        if (parent->type == XML_ELEMENT_NODE)
        {
          break;
        }
      }
    }
  }

  return parent;
}

xmlNodePtr xmlPreviousElementSibling(xmlNodePtr node)
{
  if (node)
  {
    type = node->type;
    v2 = type > XML_XINCLUDE_END;
    v3 = (1 << type) & 0x1801FA;
    if (v2 || v3 == 0)
    {
      return 0;
    }

    else
    {
      do
      {
        node = node->prev;
      }

      while (node && node->type != XML_ELEMENT_NODE);
    }
  }

  return node;
}

xmlNodePtr xmlNextElementSibling(xmlNodePtr node)
{
  if (node)
  {
    type = node->type;
    v2 = type > XML_XINCLUDE_END;
    v3 = (1 << type) & 0x1841FA;
    if (v2 || v3 == 0)
    {
      return 0;
    }

    else
    {
      do
      {
        node = node->next;
      }

      while (node && node->type != XML_ELEMENT_NODE);
    }
  }

  return node;
}

xmlNodePtr xmlReplaceNode(xmlNodePtr old, xmlNodePtr cur)
{
  result = 0;
  if (old && old != cur)
  {
    type = old->type;
    if (type == XML_NAMESPACE_DECL || !old->parent)
    {
      return 0;
    }

    else
    {
      if (!cur || (v6 = cur->type, v6 == XML_NAMESPACE_DECL))
      {
        xmlUnlinkNode(old);
        return old;
      }

      if ((v6 == XML_ATTRIBUTE_NODE) != (type == XML_ATTRIBUTE_NODE))
      {
        return old;
      }

      xmlUnlinkNode(cur);
      xmlSetTreeDoc(cur, old->doc);
      parent = old->parent;
      next = old->next;
      cur->parent = parent;
      cur->next = next;
      if (next)
      {
        next->prev = cur;
      }

      prev = old->prev;
      cur->prev = prev;
      if (prev)
      {
        prev->next = cur;
      }

      if (parent)
      {
        if (cur->type == XML_ATTRIBUTE_NODE)
        {
          properties = parent->properties;
          p_properties = &parent->properties;
          v11 = properties;
        }

        else
        {
          if (parent->children == old)
          {
            parent->children = cur;
          }

          last = parent->last;
          p_properties = &parent->last;
          v11 = last;
        }

        if (v11 == old)
        {
          *p_properties = cur;
        }
      }

      old->parent = 0;
      old->next = 0;
      result = old;
      old->prev = 0;
    }
  }

  return result;
}

xmlNsPtr xmlCopyNamespace(xmlNsPtr cur)
{
  if (cur && cur->type == XML_NAMESPACE_DECL)
  {
    return xmlNewNs(0, cur->href, cur->prefix);
  }

  else
  {
    return 0;
  }
}

xmlNsPtr xmlCopyNamespaceList(xmlNsPtr cur)
{
  if (cur)
  {
    v1 = cur;
    v2 = 0;
    v3 = 0;
    do
    {
      if (v1->type == XML_NAMESPACE_DECL)
      {
        v4 = xmlNewNs(0, v1->href, v1->prefix);
      }

      else
      {
        v4 = 0;
      }

      cur = v4;
      if (v2)
      {
        v2->next = v4;
        cur = v3;
      }

      v1 = v1->next;
      v2 = v4;
      v3 = cur;
    }

    while (v1);
  }

  return cur;
}

xmlDtdPtr xmlCopyDtd(xmlDtdPtr dtd)
{
  if (!dtd)
  {
    return 0;
  }

  v2 = xmlNewDtd(0, dtd->name, dtd->ExternalID, dtd->SystemID);
  if (v2)
  {
    entities = dtd->entities;
    if (entities)
    {
      v2->entities = xmlCopyEntitiesTable(entities);
    }

    notations = dtd->notations;
    if (notations)
    {
      v2->notations = xmlCopyNotationTable(notations);
    }

    elements = dtd->elements;
    if (elements)
    {
      v2->elements = xmlCopyElementTable(elements);
    }

    attributes = dtd->attributes;
    if (attributes)
    {
      v2->attributes = xmlCopyAttributeTable(attributes);
    }

    pentities = dtd->pentities;
    if (pentities)
    {
      v2->pentities = xmlCopyEntitiesTable(pentities);
    }

    children = dtd->children;
    if (children)
    {
      v9 = 0;
      do
      {
        while (1)
        {
          type = children->type;
          if (type > 15)
          {
            break;
          }

          if (type != 8)
          {
            if (type == 15)
            {
              DtdQElementDesc = xmlGetDtdQElementDesc(v2, children->name, children->nsDef);
              if (DtdQElementDesc)
              {
                goto LABEL_34;
              }
            }

            goto LABEL_32;
          }

          DtdQElementDesc = xmlStaticCopyNode(children, 0, 0, 0);
          if (!DtdQElementDesc)
          {
            goto LABEL_32;
          }

LABEL_34:
          p_next = &v9->next;
          if (!v9)
          {
            p_next = &v2->children;
          }

          *p_next = DtdQElementDesc;
          DtdQElementDesc->next = 0;
          DtdQElementDesc->prev = v9;
          DtdQElementDesc->parent = v2;
          v2->last = DtdQElementDesc;
          children = children->next;
          v9 = DtdQElementDesc;
          if (!children)
          {
            return v2;
          }
        }

        if (type == 16)
        {
          DtdQElementDesc = xmlGetDtdQAttrDesc(v2, *&children->line, children->name, children->psvi);
          if (!DtdQElementDesc)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        if (type == 17)
        {
          properties_high = HIDWORD(children->properties);
          if ((properties_high - 1) >= 3)
          {
            if ((properties_high - 4) >= 2)
            {
              goto LABEL_32;
            }

            v13 = v2->pentities;
            if (!v13)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v13 = v2->entities;
            if (!v13)
            {
              goto LABEL_32;
            }
          }

          DtdQElementDesc = xmlHashLookup(v13, children->name);
          if (DtdQElementDesc)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        children = children->next;
      }

      while (children);
    }
  }

  return v2;
}

xmlDocPtr xmlCopyDoc(xmlDocPtr doc, int recursive)
{
  if (!doc)
  {
    return 0;
  }

  v4 = xmlNewDoc(doc->version);
  v5 = v4;
  if (v4)
  {
    v4->type = doc->type;
    name = doc->name;
    if (name)
    {
      *(v5 + 16) = strdup(name);
    }

    encoding = doc->encoding;
    if (encoding)
    {
      *(v5 + 112) = xmlStrdup(encoding);
    }

    URL = doc->URL;
    if (URL)
    {
      *(v5 + 136) = xmlStrdup(URL);
    }

    *(v5 + 144) = doc->charset;
    *(v5 + 72) = *&doc->compression;
    if (recursive)
    {
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      intSubset = doc->intSubset;
      if (!intSubset)
      {
LABEL_13:
        oldNs = doc->oldNs;
        if (oldNs)
        {
          *(v5 + 96) = xmlCopyNamespaceList(oldNs);
        }

        children = doc->children;
        if (children)
        {
          v13 = xmlStaticCopyNodeList(children, v5, v5);
          *(v5 + 24) = v13;
          *(v5 + 32) = 0;
          if (v13)
          {
            do
            {
              v14 = v13;
              v13 = v13->next;
            }

            while (v13);
            *(v5 + 32) = v14;
          }
        }

        return v5;
      }

      v10 = xmlCopyDtd(intSubset);
      *(v5 + 80) = v10;
      if (v10)
      {
        xmlSetTreeDoc(v10, v5);
        *(*(v5 + 80) + 40) = v5;
        goto LABEL_13;
      }

      xmlFreeDoc(v5);
      return 0;
    }
  }

  return v5;
}

xmlChar *__cdecl xmlGetNodePath(const xmlNode *node)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!node || (v1 = node, node->type == XML_NAMESPACE_DECL))
  {
LABEL_117:
    v2 = 0;
    goto LABEL_118;
  }

  v2 = malloc_type_malloc(0x1F4uLL, 0x100004077774924uLL);
  if (v2)
  {
    v3 = malloc_type_malloc(0x1F4uLL, 0x100004077774924uLL);
    if (v3)
    {
      v4 = v3;
      v49 = 0;
      v5 = 500;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      *__str = 0u;
      v44 = 0u;
      *v2 = 0;
      while (1)
      {
        type = v1->type;
        if (type > 6)
        {
          if (type > 8)
          {
            if (type != 13 && type != 9)
            {
              goto LABEL_114;
            }

            if (*v2 == 47)
            {
              goto LABEL_110;
            }

            v1 = 0;
            v12 = 0;
          }

          else if (type == 7)
          {
            snprintf(__str, 0x63uLL, "processing-instruction('%s')", v1->name);
            HIBYTE(v49) = 0;
            parent = v1->parent;
            prev = v1->prev;
            if (!prev)
            {
              goto LABEL_53;
            }

            v22 = 0;
            do
            {
              if (prev->type == XML_PI_NODE && xmlStrEqual(v1->name, prev->name))
              {
                ++v22;
              }

              prev = prev->prev;
            }

            while (prev);
            if (v22)
            {
              v12 = v22 + 1;
              v1 = parent;
            }

            else
            {
LABEL_53:
              next = v1->next;
              if (next)
              {
                do
                {
                  v12 = next->type == XML_PI_NODE && xmlStrEqual(v1->name, next->name) != 0;
                  if (v12)
                  {
                    break;
                  }

                  next = next->next;
                }

                while (next);
              }

              else
              {
                v12 = 0;
              }

              v1 = parent;
            }
          }

          else
          {
            v9 = v1->parent;
            v10 = v1->prev;
            if (!v10)
            {
              goto LABEL_60;
            }

            v11 = 0;
            do
            {
              if (v10->type == XML_COMMENT_NODE)
              {
                ++v11;
              }

              v10 = v10->prev;
            }

            while (v10);
            if (v11)
            {
              v12 = v11 + 1;
            }

            else
            {
LABEL_60:
              v24 = v1->next;
              if (v24)
              {
                do
                {
                  v25 = v24->type;
                  v24 = v24->next;
                  if (v24)
                  {
                    v26 = v25 == XML_COMMENT_NODE;
                  }

                  else
                  {
                    v26 = 1;
                  }
                }

                while (!v26);
                v12 = v25 == XML_COMMENT_NODE;
              }

              else
              {
                v12 = 0;
              }
            }

            v1 = v1->parent;
          }
        }

        else if ((type - 3) < 2)
        {
          v14 = v1->parent;
          v15 = v1->prev;
          if (!v15)
          {
            goto LABEL_122;
          }

          v16 = 0;
          do
          {
            if (v15->type - 3 < 2)
            {
              ++v16;
            }

            v15 = v15->prev;
          }

          while (v15);
          if (v16)
          {
            v12 = v16 + 1;
          }

          else
          {
LABEL_122:
            while (1)
            {
              v1 = v1->next;
              if (!v1)
              {
                break;
              }

              if (v1->type - 3 < 2)
              {
                v12 = 1;
                goto LABEL_52;
              }
            }

            v12 = 0;
          }

LABEL_52:
          v1 = v14;
        }

        else
        {
          if (type == 1)
          {
            ns = v1->ns;
            if (!ns)
            {
              goto LABEL_42;
            }

            prefix = ns->prefix;
            if (prefix)
            {
              snprintf(__str, 0x63uLL, "%s:%s", prefix, v1->name);
              HIBYTE(v49) = 0;
LABEL_42:
              v19 = 1;
            }

            else
            {
              v19 = 0;
            }

            v27 = v1->parent;
            v28 = v1->prev;
            if (!v28)
            {
              goto LABEL_81;
            }

            v29 = 0;
            do
            {
              if (v28->type == XML_ELEMENT_NODE)
              {
                if (!v19 || xmlStrEqual(v1->name, v28->name) && ((v30 = v28->ns, v31 = v1->ns, v30 == v31) || v30 && v31 && xmlStrEqual(v31->prefix, v30->prefix)))
                {
                  ++v29;
                }
              }

              v28 = v28->prev;
            }

            while (v28);
            if (v29)
            {
              v12 = v29 + 1;
            }

            else
            {
LABEL_81:
              v32 = v1->next;
              if (v32)
              {
                while (1)
                {
                  if (v32->type == XML_ELEMENT_NODE)
                  {
                    if (!v19)
                    {
                      break;
                    }

                    if (xmlStrEqual(v1->name, v32->name))
                    {
                      v33 = v32->ns;
                      v34 = v1->ns;
                      if (v33 == v34 || v33 && v34 && xmlStrEqual(v34->prefix, v33->prefix))
                      {
                        break;
                      }
                    }
                  }

                  v32 = v32->next;
                  if (!v32)
                  {
                    goto LABEL_90;
                  }
                }

                v12 = 1;
              }

              else
              {
LABEL_90:
                v12 = 0;
              }
            }

            v1 = v27;
            goto LABEL_100;
          }

          if (type != 2)
          {
            goto LABEL_114;
          }

          name = v1->name;
          v8 = v1->ns;
          if (v8)
          {
            if (v8->prefix)
            {
              snprintf(__str, 0x63uLL, "%s:%s");
            }

            else
            {
              v42 = v1->name;
              snprintf(__str, 0x63uLL, "%s");
            }

            HIBYTE(v49) = 0;
          }

          v12 = 0;
          v1 = v1->parent;
        }

LABEL_100:
        v35 = strlen(v2);
        if (v5 - v35 <= 0x77)
        {
          if ((v5 & 0x8000000000000000) != 0 || 2 * v5 > -121 - v35)
          {
            goto LABEL_114;
          }

          v5 = v35 + 2 * v5 + 120;
          v36 = malloc_type_realloc(v2, v5, 0xC8C18DA0uLL);
          if (!v36)
          {
            __xmlSimpleError(2u, 2, 0, 0, "getting node path");
LABEL_114:
            free(v4);
            goto LABEL_115;
          }

          v37 = v36;
          v38 = malloc_type_realloc(v4, v5, 0x1B289ED4uLL);
          if (!v38)
          {
            __xmlSimpleError(2u, 2, 0, 0, "getting node path");
            free(v4);
            v39 = v37;
            goto LABEL_116;
          }

          v2 = v37;
          v4 = v38;
        }

        if (v12)
        {
          snprintf(v4, v5, "%s%s[%d]%s");
        }

        else
        {
          snprintf(v4, v5, "%s%s%s");
        }

        snprintf(v2, v5, "%s", v4);
        if (!v1)
        {
LABEL_110:
          free(v4);
          goto LABEL_118;
        }
      }
    }

    __xmlSimpleError(2u, 2, 0, 0, "getting node path");
LABEL_115:
    v39 = v2;
LABEL_116:
    free(v39);
    goto LABEL_117;
  }

  __xmlSimpleError(2u, 2, 0, 0, "getting node path");
LABEL_118:
  v40 = *MEMORY[0x1E69E9840];
  return v2;
}

xmlNodePtr xmlDocSetRootElement(xmlDocPtr doc, xmlNodePtr root)
{
  v2 = 0;
  if (doc && root)
  {
    if (root->type == XML_NAMESPACE_DECL)
    {
      return 0;
    }

    else
    {
      xmlUnlinkNode(root);
      xmlSetTreeDoc(root, doc);
      root->parent = doc;
      children = doc->children;
      if (children)
      {
        v2 = doc->children;
        while (v2->type != XML_ELEMENT_NODE)
        {
          v2 = v2->next;
          if (!v2)
          {
            xmlAddSibling(children, root);
            return 0;
          }
        }

        xmlReplaceNode(v2, root);
      }

      else
      {
        v2 = 0;
        doc->children = root;
        doc->last = root;
      }
    }
  }

  return v2;
}

void xmlNodeSetLang(xmlNodePtr cur, const xmlChar *lang)
{
  if (cur)
  {
    if (cur->type - 3 >= 0x13)
    {
      v4 = xmlSearchNsByHref(cur->doc, cur, "http://www.w3.org/XML/1998/namespace");
      if (v4)
      {

        xmlSetNsProp(cur, v4, "lang", lang);
      }
    }
  }
}

xmlNsPtr xmlSearchNsByHref(xmlDocPtr doc, xmlNodePtr node, const xmlChar *href)
{
  if (!node)
  {
    return 0;
  }

  oldNs = 0;
  if (!href || node->type == XML_NAMESPACE_DECL)
  {
    return oldNs;
  }

  if (xmlStrEqual(href, "http://www.w3.org/XML/1998/namespace"))
  {
    if (doc)
    {
      goto LABEL_6;
    }

    if (node->type == XML_ELEMENT_NODE)
    {
      v16 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
      oldNs = v16;
      if (v16)
      {
        *&v16->href = 0u;
        *&v16->_private = 0u;
        *&v16->next = 0u;
        v16->type = XML_NAMESPACE_DECL;
        v16->href = xmlStrdup("http://www.w3.org/XML/1998/namespace");
        oldNs->prefix = xmlStrdup("xml");
        oldNs->next = node->nsDef;
        node->nsDef = oldNs;
      }

      else
      {
        __xmlSimpleError(2u, 2, 0, 0, "searching namespace");
      }

      return oldNs;
    }

    doc = node->doc;
    if (doc)
    {
LABEL_6:
      oldNs = doc->oldNs;
      if (oldNs)
      {
        return oldNs;
      }

      return xmlTreeEnsureXMLDecl(doc);
    }

    return 0;
  }

  type = node->type;
  v9 = node;
  while (1)
  {
    v10 = v9->type;
    if (v10 != XML_ELEMENT_NODE)
    {
      if (v10 - 5 < 2 || v10 == XML_ENTITY_DECL)
      {
        return 0;
      }

      goto LABEL_32;
    }

    oldNs = v9->nsDef;
    if (oldNs)
    {
      break;
    }

LABEL_25:
    if (v9 != node)
    {
      oldNs = v9->ns;
      if (oldNs)
      {
        v14 = oldNs->href;
        if (v14)
        {
          if (xmlStrEqual(v14, href))
          {
            prefix = oldNs->prefix;
            if ((type != XML_ATTRIBUTE_NODE || prefix) && xmlNsInScope(node, v9, prefix) == 1)
            {
              return oldNs;
            }
          }
        }
      }
    }

LABEL_32:
    oldNs = 0;
    v9 = v9->parent;
    if (!v9)
    {
      return oldNs;
    }
  }

  while (1)
  {
    v12 = oldNs->href;
    if (v12)
    {
      if (xmlStrEqual(v12, href))
      {
        v13 = oldNs->prefix;
        if ((type != XML_ATTRIBUTE_NODE || v13) && xmlNsInScope(node, v9, v13) == 1)
        {
          return oldNs;
        }
      }
    }

    oldNs = oldNs->next;
    if (!oldNs)
    {
      goto LABEL_25;
    }
  }
}

xmlAttrPtr xmlSetNsProp(xmlNodePtr node, xmlNsPtr ns, const xmlChar *name, const xmlChar *value)
{
  if (ns)
  {
    href = ns->href;
    if (!href)
    {
      return 0;
    }
  }

  else
  {
    href = 0;
  }

  PropNodeInternal = xmlGetPropNodeInternal(node, name, href, 0);
  if (PropNodeInternal)
  {
    v9 = PropNodeInternal;
    if ((PropNodeInternal->atype & 0x87FFFFFF) == 2)
    {
      xmlRemoveID(node->doc, PropNodeInternal);
      v9->atype = v9->atype & 0x78000000 | 2;
    }

    p_children = &v9->children;
    children = v9->children;
    if (children)
    {
      xmlFreeNodeList(children);
    }

    *p_children = 0;
    v9->last = 0;
    v9->nexth = ns;
    if (value)
    {
      doc = node->doc;
      v14 = xmlNewText(value);
      if (v14)
      {
        v14->doc = doc;
        *p_children = v14;
        do
        {
          v15 = v14;
          v14->parent = v9;
          v14 = v14->next;
        }

        while (v14);
      }

      else
      {
        v15 = 0;
        *p_children = 0;
      }

      v9->last = v15;
    }

    if ((v9->atype & 0x87FFFFFF) == 2)
    {
      xmlAddID(0, node->doc, value, v9);
    }

    return v9;
  }

  return xmlNewPropInternal(node, ns, name, value, 0);
}

xmlChar *__cdecl xmlNodeGetLang(xmlChar *cur)
{
  if (cur)
  {
    v1 = cur;
    if (*(cur + 2) == 18)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        cur = xmlGetNsProp(v1, "lang", "http://www.w3.org/XML/1998/namespace");
        if (cur)
        {
          break;
        }

        v1 = v1->parent;
        if (!v1)
        {
          return 0;
        }
      }
    }
  }

  return cur;
}

xmlChar *__cdecl xmlGetNsProp(const xmlNode *node, const xmlChar *name, const xmlChar *nameSpace)
{
  result = xmlGetPropNodeInternal(node, name, nameSpace, 1);
  if (result)
  {

    return xmlGetPropNodeValueInternal(result);
  }

  return result;
}

void xmlNodeSetSpacePreserve(xmlNodePtr cur, int val)
{
  if (cur)
  {
    if (cur->type - 3 >= 0x13)
    {
      v4 = xmlSearchNsByHref(cur->doc, cur, "http://www.w3.org/XML/1998/namespace");
      if (v4)
      {
        if (val)
        {
          if (val != 1)
          {
            return;
          }

          v5 = "preserve";
        }

        else
        {
          v5 = "default";
        }

        xmlSetNsProp(cur, v4, "space", v5);
      }
    }
  }
}

void xmlNodeSetName(xmlNodePtr cur, const xmlChar *name)
{
  if (cur && name)
  {
    type = cur->type;
    v5 = type > XML_DOCB_DOCUMENT_NODE;
    v6 = (1 << type) & 0x3C3D18;
    if (v5 || v6 == 0)
    {
      doc = cur->doc;
      if (doc && (dict = doc->dict) != 0)
      {
        v10 = cur->name;
        if (v10 && !xmlDictOwns(doc->dict, v10))
        {
          v11 = cur->name;
        }

        else
        {
          v11 = 0;
        }

        v12 = xmlDictLookup(dict, name, -1);
      }

      else
      {
        v11 = cur->name;
        v12 = xmlStrdup(name);
      }

      cur->name = v12;
      if (v11)
      {

        free(v11);
      }
    }
  }
}

void xmlNodeSetBase(xmlNodePtr cur, const xmlChar *uri)
{
  if (cur)
  {
    type = cur->type;
    if (type > XML_DOCB_DOCUMENT_NODE)
    {
      goto LABEL_12;
    }

    v5 = 1 << type;
    if ((v5 & 0x1FDDF8) != 0)
    {
      return;
    }

    if ((v5 & 0x202200) != 0)
    {
      name = cur[1].name;
      if (name)
      {
        free(name);
      }

      if (uri)
      {
        v7 = xmlPathToURI(uri);
      }

      else
      {
        v7 = 0;
      }

      cur[1].name = v7;
    }

    else
    {
LABEL_12:
      v8 = xmlSearchNsByHref(cur->doc, cur, "http://www.w3.org/XML/1998/namespace");
      if (v8)
      {
        v9 = v8;
        v10 = xmlPathToURI(uri);
        if (v10)
        {
          v11 = v10;
          xmlSetNsProp(cur, v9, "base", v10);

          free(v11);
        }

        else
        {

          xmlSetNsProp(cur, v9, "base", uri);
        }
      }
    }
  }
}

xmlChar *__cdecl xmlNodeGetBase(const xmlDoc *doc, const xmlNode *cur)
{
  if (!(doc | cur))
  {
    return 0;
  }

  v2 = cur;
  v3 = doc;
  if (cur)
  {
    if (cur->type == XML_NAMESPACE_DECL)
    {
      return 0;
    }
  }

  if (!doc)
  {
    v3 = cur->doc;
    if (!v3)
    {
      v16 = 1;
      goto LABEL_24;
    }
  }

  if (v3->type == XML_HTML_DOCUMENT_NODE)
  {
    children = v3->children;
    if (children)
    {
      while (1)
      {
        name = children->name;
        if (!name)
        {
          return 0;
        }

        if (children->type == XML_ELEMENT_NODE)
        {
          if (!xmlStrcasecmp(name, "html") || !xmlStrcasecmp(children->name, "head"))
          {
            v6 = 24;
            goto LABEL_15;
          }

          if (!xmlStrcasecmp(children->name, "base"))
          {

            return xmlGetProp(children, "href");
          }
        }

        v6 = 48;
LABEL_15:
        children = *(&children->_private + v6);
        if (!children)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (!cur)
  {
    URL = v3->URL;
    if (URL)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v16 = 0;
LABEL_24:
  v9 = 0;
  do
  {
    type = v2->type;
    if (type == XML_ELEMENT_NODE)
    {
      NsProp = xmlGetNsProp(v2, "base", "http://www.w3.org/XML/1998/namespace");
      if (NsProp)
      {
        v13 = NsProp;
        if (v9)
        {
          v14 = xmlBuildURI(v9, NsProp);
          free(v9);
          free(v13);
          v9 = v14;
          if (!v14)
          {
            return v9;
          }
        }

        else
        {
          v9 = NsProp;
        }

        if (!xmlStrncmp(v9, "http://", 7) || !xmlStrncmp(v9, "ftp://", 6) || !xmlStrncmp(v9, "urn:", 4))
        {
          return v9;
        }
      }
    }

    else if (type == XML_ENTITY_DECL)
    {
      v8 = v2[1]._private;
      goto LABEL_41;
    }

    v2 = v2->parent;
  }

  while (v2);
  if (v16)
  {
    return v9;
  }

  URL = v3->URL;
  if (!URL)
  {
    return v9;
  }

  if (v9)
  {
    v15 = xmlBuildURI(v9, URL);
    free(v9);
    return v15;
  }

LABEL_20:
  v8 = URL;
LABEL_41:

  return xmlStrdup(v8);
}

int xmlNodeBufGetContent(xmlBufferPtr buffer, const xmlNode *cur)
{
  result = -1;
  if (buffer && cur)
  {
    v5 = xmlBufFromBuffer(buffer);
    NodeContent = xmlBufGetNodeContent(v5, cur);
    v7 = xmlBufBackToBuffer(v5);
    v9 = NodeContent < 0 || v7 == 0;
    return v9 << 31 >> 31;
  }

  return result;
}

void xmlNodeSetContentLen(xmlNodePtr cur, const xmlChar *content, int len)
{
  if (!cur)
  {
    return;
  }

  type = cur->type;
  if (type > XML_NOTATION_NODE)
  {
    return;
  }

  v7 = 1 << type;
  if ((v7 & 0x11F8) != 0)
  {
    v8 = cur->content;
    p_properties = &cur->properties;
    if (v8)
    {
      v10 = v8 == p_properties;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      goto LABEL_13;
    }

    doc = cur->doc;
    if (doc)
    {
      dict = doc->dict;
      if (dict)
      {
        if (xmlDictOwns(dict, v8))
        {
LABEL_13:
          children = cur->children;
          if (children)
          {
            xmlFreeNodeList(children);
          }

          cur->children = 0;
          cur->last = 0;
          if (content)
          {
            v14 = xmlStrndup(content, len);
          }

          else
          {
            v14 = 0;
          }

          cur->content = v14;
          *p_properties = 0;
          cur->nsDef = 0;
          return;
        }

        v8 = cur->content;
      }
    }

    free(v8);
    goto LABEL_13;
  }

  if ((v7 & 0x806) != 0)
  {
    v15 = cur->children;
    if (v15)
    {
      xmlFreeNodeList(v15);
    }

    NodeList = xmlStringLenGetNodeList(cur->doc, content, len);
    cur->children = NodeList;
    if (NodeList)
    {
      next = NodeList->next;
      if (next)
      {
        do
        {
          v18 = next;
          NodeList->parent = cur;
          next = next->next;
          NodeList = v18;
        }

        while (next);
      }

      else
      {
        v18 = NodeList;
      }

      v18->parent = cur;
      cur->last = v18;
    }

    else
    {
      cur->last = 0;
    }
  }
}

void xmlNodeAddContentLen(xmlNodePtr cur, const xmlChar *content, int len)
{
  if (cur)
  {
    if (len >= 1)
    {
      type = cur->type;
      if (type <= XML_NOTATION_NODE)
      {
        v7 = 1 << type;
        if ((v7 & 0x11F8) != 0)
        {
          if (content)
          {
            v8 = cur->content;
            p_properties = &cur->properties;
            if (v8 == &cur->properties || (doc = cur->doc) != 0 && (dict = doc->dict) != 0 && (v12 = xmlDictOwns(dict, v8), v8 = cur->content, v12))
            {
              cur->content = xmlStrncatNew(v8, content, len);
              *p_properties = 0;
              cur->nsDef = 0;
            }

            else
            {
              cur->content = xmlStrncat(v8, content, len);
            }
          }
        }

        else if ((v7 & 0x802) != 0)
        {
          last = cur->last;
          v14 = xmlNewTextLen(content, len);
          if (v14)
          {
            v15 = v14;
            if (xmlAddChild(cur, v14) == v14 && last && last->next == v15)
            {

              xmlTextMerge(last, v15);
            }
          }
        }
      }
    }
  }
}

xmlNodePtr xmlTextMerge(xmlNodePtr first, xmlNodePtr second)
{
  if (!first)
  {
    return second;
  }

  v3 = first;
  if (second && first->type == XML_TEXT_NODE && second->type == XML_TEXT_NODE && second->name == first->name)
  {
    xmlNodeAddContent(first, second->content);
    xmlUnlinkNode(second);
    xmlFreeNode(second);
  }

  return v3;
}

xmlNsPtr *__cdecl xmlGetNsList(const xmlDoc *doc, const xmlNode *node)
{
  if (!node)
  {
    return 0;
  }

  v2 = node;
  if (node->type == XML_NAMESPACE_DECL)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = 0;
  do
  {
    if (v2->type == XML_ELEMENT_NODE)
    {
      for (i = v2->nsDef; i; i = i->next)
      {
        if (v4 < 1)
        {
LABEL_11:
          if (v4 >= v3)
          {
            if (v3 < 1)
            {
              v3 = 10;
            }

            else
            {
              if (v3 > 0x3B9AC9FF)
              {
                goto LABEL_24;
              }

              if (1000000000 - ((v3 + 1) >> 1) >= v3)
              {
                v3 += (v3 + 1) >> 1;
              }

              else
              {
                v3 = 1000000000;
              }
            }

            v10 = malloc_type_realloc(v5, 8 * (v3 + 1), 0x2004093837F09uLL);
            if (!v10)
            {
LABEL_24:
              __xmlSimpleError(2u, 2, 0, 0, "getting namespace list");
              free(v5);
              return 0;
            }
          }

          else
          {
            v10 = v5;
          }

          *&v10[8 * v4] = i;
          v4 = v4 + 1;
          *&v10[8 * v4] = 0;
          v5 = v10;
        }

        else
        {
          v7 = 0;
          while (1)
          {
            prefix = i->prefix;
            v9 = *(*&v5[v7] + 24);
            if (prefix == v9 || xmlStrEqual(prefix, v9))
            {
              break;
            }

            v7 += 8;
            if (8 * v4 == v7)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    v2 = v2->parent;
  }

  while (v2);
  return v5;
}

_OWORD *xmlTreeEnsureXMLDecl(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    v3 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
    v1 = v3;
    if (v3)
    {
      v3[1] = 0u;
      v3[2] = 0u;
      *v3 = 0u;
      *(v3 + 2) = 18;
      *(v3 + 2) = xmlStrdup("http://www.w3.org/XML/1998/namespace");
      *(v1 + 3) = xmlStrdup("xml");
      *(a1 + 96) = v1;
    }

    else
    {
      __xmlSimpleError(2u, 2, 0, 0, "allocating the XML namespace");
    }
  }

  return v1;
}

uint64_t xmlNsInScope(uint64_t a1, uint64_t a2, xmlChar *str2)
{
  v3 = a1 != a2;
  if (!a1 || a1 == a2)
  {
LABEL_22:
    if (v3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v6 = a1;
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 == 1)
    {
      break;
    }

    if ((v7 - 5) < 2 || v7 == 17)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_17:
    v6 = *(v6 + 40);
    v3 = v6 != a2;
    if (v6)
    {
      v11 = v6 == a2;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_22;
    }
  }

  v9 = *(v6 + 96);
  if (!v9)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v10 = v9[3];
    if (!(str2 | v10) || str2 && v10 && xmlStrEqual(v10, str2))
    {
      return 0;
    }

    v9 = *v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }
}

int xmlReconciliateNs(xmlDocPtr doc, xmlNodePtr tree)
{
  v21 = 0;
  v20 = 0;
  if (!tree || tree->type != XML_ELEMENT_NODE || tree->doc != doc)
  {
    return -1;
  }

  v4 = 0;
  v6 = 0;
  v7 = tree;
  do
  {
    ns = v7->ns;
    if (ns)
    {
      if (v6 < 1)
      {
        LODWORD(v9) = 0;
      }

      else
      {
        v9 = 0;
        v10 = (v21 + 8);
        while (*(v10 - 1) != ns)
        {
          ++v9;
          v10 += 2;
          if (v6 == v9)
          {
            goto LABEL_16;
          }
        }

        ns = *v10;
        v7->ns = *v10;
      }

      if (v9 == v6)
      {
LABEL_16:
        v11 = xmlNewReconciledNs(doc, tree, ns);
        if (!v11 || v20 <= v6 && (xmlGrowNsCache(&v21, &v20) & 0x80000000) != 0)
        {
          v4 = -1;
        }

        else
        {
          v12 = (v21 + 16 * v6++);
          *v12 = v7->ns;
          v12[1] = v11;
        }

        v7->ns = v11;
      }
    }

    if (v7->type == XML_ELEMENT_NODE)
    {
      for (i = v7->properties; i; i = i->next)
      {
        v14 = i->ns;
        if (v14)
        {
          if (v6 < 1)
          {
            LODWORD(v15) = 0;
          }

          else
          {
            v15 = 0;
            v16 = (v21 + 8);
            while (*(v16 - 1) != v14)
            {
              ++v15;
              v16 += 2;
              if (v6 == v15)
              {
                goto LABEL_33;
              }
            }

            v14 = *v16;
            i->ns = *v16;
          }

          if (v15 == v6)
          {
LABEL_33:
            v17 = xmlNewReconciledNs(doc, tree, v14);
            if (!v17 || v20 <= v6 && (xmlGrowNsCache(&v21, &v20) & 0x80000000) != 0)
            {
              v4 = -1;
            }

            else
            {
              v18 = (v21 + 16 * v6++);
              *v18 = i->ns;
              v18[1] = v17;
            }

            i->ns = v17;
          }
        }
      }
    }

    children = v7->children;
    if (!children || v7->type == XML_ENTITY_REF_NODE)
    {
      if (v7 == tree)
      {
        break;
      }

      children = v7->next;
      if (!children)
      {
        while (v7 != tree)
        {
          if (v7->parent)
          {
            v7 = v7->parent;
          }

          if (v7 != tree && v7->next)
          {
            v7 = v7->next;
            break;
          }

          if (!v7->parent)
          {
            v7 = 0;
            break;
          }
        }

        children = v7;
        if (v7 == tree)
        {
          break;
        }
      }
    }

    v7 = children;
  }

  while (children);
  if (v21)
  {
    free(v21);
  }

  return v4;
}

xmlNsPtr xmlNewReconciledNs(xmlDocPtr doc, xmlNodePtr node, uint64_t a3)
{
  result = 0;
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && node->type == XML_ELEMENT_NODE)
  {
    if (*(a3 + 8) != 18)
    {
LABEL_16:
      result = 0;
      goto LABEL_17;
    }

    result = xmlSearchNsByHref(doc, node, *(a3 + 16));
    if (!result)
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
      *__str = 0u;
      if (*(a3 + 24))
      {
        snprintf(__str, 0x32uLL, "%.20s", *(a3 + 24));
      }

      else
      {
        strcpy(__str, "default");
      }

      if (xmlSearchNs(doc, node, __str))
      {
        v7 = 1;
        while (v7 != 1001)
        {
          if (*(a3 + 24))
          {
            v9 = *(a3 + 24);
            snprintf(__str, 0x32uLL, "%.20s%d");
          }

          else
          {
            snprintf(__str, 0x32uLL, "default%d");
          }

          ++v7;
          if (!xmlSearchNs(doc, node, __str))
          {
            goto LABEL_15;
          }
        }

        goto LABEL_16;
      }

LABEL_15:
      result = xmlNewNs(node, *(a3 + 16), __str);
    }
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t xmlGrowNsCache(void **a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 < 1)
  {
    v5 = 10;
  }

  else
  {
    if (v4 > 0x3B9AC9FF)
    {
      return 0xFFFFFFFFLL;
    }

    if (1000000000 - ((v4 + 1) >> 1) >= v4)
    {
      v5 = v4 + ((v4 + 1) >> 1);
    }

    else
    {
      v5 = 1000000000;
    }
  }

  v6 = malloc_type_realloc(*a1, 16 * v5, 0x20040A4A59CD2uLL);
  if (v6)
  {
    v7 = v6;
    result = 0;
    *a1 = v7;
    *a2 = v5;
    return result;
  }

  return 0xFFFFFFFFLL;
}

int xmlUnsetProp(xmlNodePtr node, const xmlChar *name)
{
  PropNodeInternal = xmlGetPropNodeInternal(node, name, 0, 0);
  if (!PropNodeInternal)
  {
    return -1;
  }

  v3 = PropNodeInternal;
  xmlUnlinkNode(PropNodeInternal);
  xmlFreeProp(v3);
  return 0;
}

int xmlUnsetNsProp(xmlNodePtr node, xmlNsPtr ns, const xmlChar *name)
{
  if (ns)
  {
    href = ns->href;
  }

  else
  {
    href = 0;
  }

  PropNodeInternal = xmlGetPropNodeInternal(node, name, href, 0);
  if (!PropNodeInternal)
  {
    return -1;
  }

  v6 = PropNodeInternal;
  xmlUnlinkNode(PropNodeInternal);
  xmlFreeProp(v6);
  return 0;
}

xmlAttrPtr xmlSetProp(xmlNodePtr node, const xmlChar *name, const xmlChar *value)
{
  if (!node || !name || node->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  v6 = *name;
  if (v6 == 58)
  {
    goto LABEL_5;
  }

  v11 = 1;
  if (!*name)
  {
    goto LABEL_5;
  }

  while (v6 != 58)
  {
    v6 = name[v11++];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v12 = xmlStrndup(name, v11 - 1);
  v13 = xmlSearchNs(node->doc, node, v12);
  if (v12)
  {
    free(v12);
  }

  if (v13)
  {
    v9 = &name[v11];
    v7 = node;
    v8 = v13;
  }

  else
  {
LABEL_5:
    v7 = node;
    v8 = 0;
    v9 = name;
  }

  return xmlSetNsProp(v7, v8, v9, value);
}

int xmlNodeIsText(const xmlNode *node)
{
  if (node)
  {
    LODWORD(node) = node->type == XML_TEXT_NODE;
  }

  return node;
}

int xmlTextConcat(xmlNodePtr node, const xmlChar *content, int len)
{
  if (!node)
  {
    return -1;
  }

  type = node->type;
  v5 = type > XML_COMMENT_NODE;
  v6 = (1 << type) & 0x198;
  if (v5 || v6 == 0)
  {
    return -1;
  }

  v10 = node->content;
  if (v10 == &node->properties || (doc = node->doc) != 0 && (dict = doc->dict) != 0 && (v13 = xmlDictOwns(dict, v10), v10 = node->content, v13))
  {
    v14 = xmlStrncatNew(v10, content, len);
  }

  else
  {
    v14 = xmlStrncat(v10, content, len);
  }

  node->content = v14;
  node->properties = 0;
  if (v14)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

xmlBufferPtr xmlBufferCreateSize(size_t size)
{
  if (size > 0x7FFFFFFE)
  {
    return 0;
  }

  v3 = malloc_type_malloc(0x20uLL, 0x1010040CF4F187CuLL);
  v1 = v3;
  if (!v3)
  {
    __xmlSimpleError(2u, 2, 0, 0, "creating buffer");
    return v1;
  }

  v3->use = 0;
  v4 = *__xmlBufferAllocScheme();
  if (size)
  {
    v5 = size + 1;
  }

  else
  {
    v5 = 0;
  }

  v1->size = v5;
  v1->alloc = v4;
  if (!size)
  {
    v1->content = 0;
    goto LABEL_12;
  }

  v6 = malloc_type_malloc((size + 1), 0x100004077774924uLL);
  v1->content = v6;
  if (v6)
  {
    bzero(v6, v1->size);
LABEL_12:
    v1->contentIO = 0;
    return v1;
  }

  __xmlSimpleError(2u, 2, 0, 0, "creating buffer");
  free(v1);
  return 0;
}

xmlChar *__cdecl xmlBufferDetach(xmlChar *buf)
{
  if (buf)
  {
    v1 = buf;
    if (*(buf + 4) == 2)
    {
      return 0;
    }

    else
    {
      buf = *buf;
      *v1 = 0;
      *(v1 + 1) = 0;
    }
  }

  return buf;
}

xmlBufferPtr xmlBufferCreateStatic(void *mem, size_t size)
{
  result = 0;
  if (mem)
  {
    v4 = size;
    if (size - 0x80000000 >= 0xFFFFFFFF80000001)
    {
      result = malloc_type_malloc(0x20uLL, 0x1010040CF4F187CuLL);
      if (result)
      {
        result->use = v4;
        result->size = v4;
        result->alloc = XML_BUFFER_ALLOC_IMMUTABLE;
        result->content = mem;
      }

      else
      {
        __xmlSimpleError(2u, 2, 0, 0, "creating buffer");
        return 0;
      }
    }
  }

  return result;
}

void xmlBufferSetAllocationScheme(xmlBufferPtr buf, xmlBufferAllocationScheme scheme)
{
  if (buf)
  {
    if ((buf->alloc & 0xFFFFFFFE) == 2)
    {
      v2 = 1;
      v3 = 0;
    }

    else
    {
      v2 = scheme >= XML_BUFFER_ALLOC_HYBRID;
      v3 = scheme == XML_BUFFER_ALLOC_HYBRID;
    }

    if ((v3 || !v2) && scheme != XML_BUFFER_ALLOC_IO)
    {
      buf->alloc = scheme;
    }
  }
}

void xmlBufferEmpty(xmlBufferPtr buf)
{
  if (buf)
  {
    content = buf->content;
    if (buf->content)
    {
      buf->use = 0;
      alloc = buf->alloc;
      if (alloc == XML_BUFFER_ALLOC_IO)
      {
        contentIO = buf->contentIO;
        if (contentIO)
        {
          buf->size += content - contentIO;
          buf->content = contentIO;
          *contentIO = 0;
          return;
        }
      }

      else if (alloc == XML_BUFFER_ALLOC_IMMUTABLE)
      {
        buf->content = "";
        return;
      }

      *content = 0;
    }
  }
}

int xmlBufferShrink(xmlBufferPtr buf, unsigned int len)
{
  if (!buf)
  {
    return -1;
  }

  v2 = len;
  if (len)
  {
    use = buf->use;
    v5 = use - len;
    if (use < len)
    {
      return -1;
    }

    buf->use = v5;
    alloc = buf->alloc;
    if (alloc == XML_BUFFER_ALLOC_IMMUTABLE)
    {
      buf->content += len;
      v13 = buf->size - len;
      goto LABEL_13;
    }

    if (alloc != XML_BUFFER_ALLOC_IO || (contentIO = buf->contentIO) == 0)
    {
      memmove(buf->content, &buf->content[len], v5);
      buf->content[buf->use] = 0;
      return v2;
    }

    v9 = &buf->content[len];
    buf->content = v9;
    v10 = buf->size - v2;
    buf->size = v10;
    v11 = v9 - contentIO;
    if (v9 - contentIO >= v10)
    {
      memmove(contentIO, v9, v5);
      v12 = buf->contentIO;
      buf->content = v12;
      v12[buf->use] = 0;
      v13 = buf->size + v11;
LABEL_13:
      buf->size = v13;
    }
  }

  return v2;
}

int xmlBufferGrow(xmlBufferPtr buf, unsigned int len)
{
  if (!buf)
  {
    return -1;
  }

  alloc = buf->alloc;
  if (alloc == XML_BUFFER_ALLOC_IMMUTABLE)
  {
    return 0;
  }

  use = buf->use;
  size = buf->size;
  if (size - use > len)
  {
    result = 0;
    buf->content[use + len] = 0;
    return result;
  }

  if (2147483646 - use >= len)
  {
    v9 = use + len;
    v10 = v9 + 100;
    if (v9 > 0x7FFFFF9B)
    {
      v10 = 0x7FFFFFFF;
    }

    if (size >> 30)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = 2 * size;
    }

    if (size > len)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (alloc == XML_BUFFER_ALLOC_IO && (contentIO = buf->contentIO) != 0)
    {
      v14 = (buf->content - contentIO);
      v15 = malloc_type_realloc(contentIO, &v14[v12], 0x100004077774924uLL);
      if (v15)
      {
        buf->contentIO = v15;
        v16 = &v14[v15];
LABEL_22:
        buf->content = v16;
        buf->size = v12;
        v16[buf->use] = 0;
        buf->content[buf->use + len] = 0;
        return buf->size + ~buf->use;
      }
    }

    else
    {
      v16 = malloc_type_realloc(buf->content, v12, 0x100004077774924uLL);
      if (v16)
      {
        goto LABEL_22;
      }
    }

    v8 = "growing buffer";
    goto LABEL_24;
  }

  v8 = "growing buffer past INT_MAX";
LABEL_24:
  __xmlSimpleError(2u, 2, 0, 0, v8);
  return -1;
}

int xmlBufferDump(FILE *file, xmlBufferPtr buf)
{
  if (buf)
  {
    content = buf->content;
    if (buf->content)
    {
      if (file)
      {
        v4 = file;
      }

      else
      {
        v4 = *MEMORY[0x1E69E9858];
      }

      content = fwrite(content, 1uLL, buf->use, v4);
      if (content >= 0x7FFFFFFF)
      {
        LODWORD(content) = 0x7FFFFFFF;
      }
    }
  }

  else
  {
    LODWORD(content) = 0;
  }

  return content;
}

const xmlChar *__cdecl xmlBufferContent(const xmlChar *buf)
{
  if (buf)
  {
    return *buf;
  }

  return buf;
}

int xmlBufferLength(const xmlBuffer *buf)
{
  if (!buf)
  {
    return 0;
  }

  use = buf->use;
  if (use >= 0x7FFFFFFF)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      xmlBufferLength_cold_1(use);
    }

    return 2147483646;
  }

  return use;
}

int xmlBufferResize(xmlBufferPtr buf, unsigned int size)
{
  if (buf)
  {
    v2 = buf;
    alloc = buf->alloc;
    if (alloc == XML_BUFFER_ALLOC_IMMUTABLE)
    {
LABEL_43:
      LODWORD(buf) = 0;
      return buf;
    }

    v4 = buf->size;
    if (v4 > size)
    {
      goto LABEL_40;
    }

    if (size >= 0x7FFFFFF6)
    {
      v5 = "growing buffer past INT_MAX";
LABEL_42:
      __xmlSimpleError(2u, 2, 0, 0, v5);
      goto LABEL_43;
    }

    if (alloc > XML_BUFFER_ALLOC_IMMUTABLE)
    {
      if (alloc == XML_BUFFER_ALLOC_HYBRID)
      {
        if (buf->use >= 0x1000)
        {
          v6 = buf->size;
          if (v4 < size)
          {
            while (!(v6 >> 30))
            {
              v6 *= 2;
              if (v6 >= size)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_41;
          }
        }

        else
        {
          v6 = size;
        }

        goto LABEL_29;
      }

      if (alloc != XML_BUFFER_ALLOC_IO)
      {
        goto LABEL_18;
      }
    }

    else if (alloc)
    {
      if (alloc == XML_BUFFER_ALLOC_EXACT)
      {
        v6 = size + 10;
        goto LABEL_29;
      }

LABEL_18:
      v6 = size + 10;
      goto LABEL_19;
    }

    if (v4)
    {
      v6 = buf->size;
    }

    else
    {
      v6 = size + 10;
    }

    while (v6 < size)
    {
      if (v6 >> 30)
      {
        goto LABEL_41;
      }

      v6 *= 2;
    }

LABEL_19:
    if (alloc == XML_BUFFER_ALLOC_IO)
    {
      contentIO = buf->contentIO;
      if (contentIO)
      {
        v8 = v2->content - contentIO;
        if (v8 > v6)
        {
          memmove(contentIO, v2->content, v2->use);
          v9 = v2->contentIO;
LABEL_39:
          v2->content = v9;
          v2->size = v6;
          v9[v2->use] = 0;
LABEL_40:
          LODWORD(buf) = 1;
          return buf;
        }

        v12 = malloc_type_realloc(contentIO, v8 + v6, 0x100004077774924uLL);
        if (v12)
        {
          v2->contentIO = v12;
          v9 = &v12[v8];
          goto LABEL_39;
        }

LABEL_41:
        v5 = "growing buffer";
        goto LABEL_42;
      }
    }

LABEL_29:
    if (!v2->content)
    {
      v10 = malloc_type_malloc(v6, 0x100004077774924uLL);
LABEL_33:
      v9 = v10;
      if (!v10)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (v4 - v2->use <= 0x63)
    {
      v10 = malloc_type_realloc(v2->content, v6, 0x100004077774924uLL);
      goto LABEL_33;
    }

    v11 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v11)
    {
      v9 = v11;
      memcpy(v11, v2->content, v2->use);
      free(v2->content);
      goto LABEL_39;
    }

    goto LABEL_41;
  }

  return buf;
}

int xmlBufferAdd(xmlBufferPtr buf, const xmlChar *str, int len)
{
  v3 = -1;
  if (buf)
  {
    if (str)
    {
      v5 = len;
      if (len >= -1 && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
      {
        if (!len)
        {
          return 0;
        }

        if ((len & 0x80000000) == 0 || (v5 = xmlStrlen(str), (v5 & 0x80000000) == 0))
        {
          if (v5)
          {
            use = buf->use;
            if (v5 >= buf->size - use)
            {
              if (v5 >= (use ^ 0x7FFFFFFF))
              {
                v10 = "growing buffer past INT_MAX";
              }

              else
              {
                if (xmlBufferResize(buf, v5 + use + 1))
                {
                  use = buf->use;
                  goto LABEL_13;
                }

                v10 = "growing buffer";
              }

              v3 = 2;
              __xmlSimpleError(2u, 2, 0, 0, v10);
              return v3;
            }

LABEL_13:
            memmove(&buf->content[use], str, v5);
            v3 = 0;
            v8 = buf->use + v5;
            buf->use = v8;
            buf->content[v8] = 0;
            return v3;
          }

          return 0;
        }
      }
    }
  }

  return v3;
}

int xmlBufferAddHead(xmlBufferPtr buf, const xmlChar *str, int len)
{
  if (!buf)
  {
    return -1;
  }

  v3 = len;
  v4 = -1;
  if (len >= -1 && str && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    if (!len)
    {
      return 0;
    }

    if (len < 0)
    {
      v3 = xmlStrlen(str);
    }

    if (v3 >= 1)
    {
      if (buf->alloc == XML_BUFFER_ALLOC_IO)
      {
        contentIO = buf->contentIO;
        if (contentIO)
        {
          if ((buf->content - contentIO) > v3)
          {
            v8 = &buf->content[-v3];
            buf->content = v8;
            memmove(v8, str, v3);
            v4 = 0;
            v9 = vadd_s32(*&buf->use, vdup_n_s32(v3));
            *&buf->use = v9;
            buf->content[v9.u32[0]] = 0;
            return v4;
          }
        }
      }

      use = buf->use;
      if (v3 >= buf->size - use)
      {
        if (v3 >= (use ^ 0x7FFFFFFF))
        {
          v12 = "growing buffer past INT_MAX";
        }

        else
        {
          if (xmlBufferResize(buf, v3 + use + 1))
          {
            use = buf->use;
            goto LABEL_19;
          }

          v12 = "growing buffer";
          v4 = 2;
        }

        __xmlSimpleError(2u, 2, 0, 0, v12);
        return v4;
      }

LABEL_19:
      memmove(&buf->content[v3], buf->content, use);
      memmove(buf->content, str, v3);
      v4 = 0;
      v11 = buf->use + v3;
      buf->use = v11;
      buf->content[v11] = 0;
    }
  }

  return v4;
}

int xmlBufferCat(xmlBufferPtr buf, const xmlChar *str)
{
  if (buf && str && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    return xmlBufferAdd(buf, str, -1);
  }

  else
  {
    return -1;
  }
}

int xmlBufferCCat(xmlBufferPtr buf, const char *str)
{
  if (buf && str && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    return xmlBufferAdd(buf, str, -1);
  }

  else
  {
    return -1;
  }
}

void xmlBufferWriteCHAR(xmlBufferPtr buf, const xmlChar *string)
{
  if (buf && string && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    xmlBufferAdd(buf, string, -1);
  }
}

void xmlBufferWriteChar(xmlBufferPtr buf, const char *string)
{
  if (buf && string && buf->alloc != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    xmlBufferAdd(buf, string, -1);
  }
}

void xmlBufferWriteQuotedString(xmlBufferPtr buf, const xmlChar *string)
{
  if (!buf || buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE)
  {
    return;
  }

  v3 = string;
  if (!xmlStrchr(string, 0x22u))
  {
    if (buf->alloc == XML_BUFFER_ALLOC_IMMUTABLE)
    {
      return;
    }

    xmlBufferAdd(buf, "", -1);
    alloc = buf->alloc;
    if (!v3 || alloc == XML_BUFFER_ALLOC_IMMUTABLE)
    {
      goto LABEL_22;
    }

    v7 = buf;
    v8 = v3;
    v9 = -1;
    goto LABEL_20;
  }

  v4 = xmlStrchr(v3, 0x27u);
  v5 = buf->alloc;
  if (v4)
  {
    if (v5 != XML_BUFFER_ALLOC_IMMUTABLE)
    {
      xmlBufferAdd(buf, "", -1);
    }

LABEL_7:
    for (i = 0; v3[i]; ++i)
    {
      if (v3[i] == 34)
      {
        if (i)
        {
          xmlBufferAdd(buf, v3, i);
        }

        xmlBufferAdd(buf, "&quot;", 6);
        v3 += i + 1;
        goto LABEL_7;
      }
    }

    if (!i)
    {
      goto LABEL_21;
    }

    v7 = buf;
    v8 = v3;
    v9 = i;
LABEL_20:
    xmlBufferAdd(v7, v8, v9);
LABEL_21:
    alloc = buf->alloc;
LABEL_22:
    if (alloc == XML_BUFFER_ALLOC_IMMUTABLE)
    {
      return;
    }

    v11 = "";
    goto LABEL_24;
  }

  if (v5 != XML_BUFFER_ALLOC_IMMUTABLE)
  {
    xmlBufferAdd(buf, "'", -1);
    v12 = buf->alloc;
    if (v3 && v12 != XML_BUFFER_ALLOC_IMMUTABLE)
    {
      xmlBufferAdd(buf, v3, -1);
      v12 = buf->alloc;
    }

    if (v12 != XML_BUFFER_ALLOC_IMMUTABLE)
    {
      v11 = "'";
LABEL_24:

      xmlBufferAdd(buf, v11, -1);
    }
  }
}

int xmlGetDocCompressMode(const xmlDoc *doc)
{
  if (doc)
  {
    return doc->compression;
  }

  else
  {
    return -1;
  }
}

void xmlSetDocCompressMode(xmlDocPtr doc, int mode)
{
  if (doc)
  {
    if (mode < 0)
    {
      doc->compression = 0;
    }

    else if (mode < 0xA)
    {
      doc->compression = mode;
    }

    else
    {
      doc->compression = 9;
    }
  }
}

void xmlSetCompressMode(int mode)
{
  if (mode >= 9)
  {
    v1 = 9;
  }

  else
  {
    v1 = mode;
  }

  if (mode < 0)
  {
    v1 = 0;
  }

  xmlCompressMode = v1;
}

xmlDOMWrapCtxtPtr xmlDOMWrapNewCtxt(void)
{
  v0 = malloc_type_malloc(0x20uLL, 0x10800402D5EB2C2uLL);
  v1 = v0;
  if (v0)
  {
    *&v0->_private = 0u;
    *&v0->namespaceMap = 0u;
  }

  else
  {
    __xmlSimpleError(2u, 2, 0, 0, "allocating DOM-wrapper context");
  }

  return v1;
}

void xmlDOMWrapFreeCtxt(xmlDOMWrapCtxtPtr ctxt)
{
  if (ctxt)
  {
    namespaceMap = ctxt->namespaceMap;
    if (namespaceMap)
    {
      xmlDOMWrapNsMapFree(namespaceMap);
    }

    free(ctxt);
  }
}

void xmlDOMWrapNsMapFree(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      do
      {
        v3 = *v2;
        free(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *a1;
    if (*a1)
    {
      do
      {
        v5 = *v4;
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    free(a1);
  }
}

int xmlDOMWrapRemoveNode(xmlDOMWrapCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr node, int options)
{
  v17 = 0;
  v18 = 0;
  v4 = -1;
  if (!doc)
  {
    return v4;
  }

  properties = node;
  if (!node || node->doc != doc)
  {
    return v4;
  }

  if (!node->parent)
  {
    return 0;
  }

  type = node->type;
  v4 = 1;
  if (type > XML_COMMENT_NODE)
  {
    return v4;
  }

  if (((1 << type) & 0x1B8) != 0)
  {
    xmlUnlinkNode(node);
    return 0;
  }

  if (((1 << type) & 6) == 0)
  {
    return v4;
  }

  xmlUnlinkNode(node);
  v4 = 0;
  while (1)
  {
    while (1)
    {
      v10 = properties;
      v11 = properties->type;
      if (v11 != XML_ATTRIBUTE_NODE)
      {
        if (v11 != XML_ELEMENT_NODE)
        {
          goto LABEL_38;
        }

        if (!ctxt)
        {
          for (i = properties->nsDef; i; i = i->next)
          {
            if (xmlDOMWrapNSNormAddNsMapItem2(&v18, &v17 + 1, &v17, i, i) == -1)
            {
              v4 = -1;
            }
          }
        }
      }

      ns = v10->ns;
      if (!ns)
      {
        goto LABEL_35;
      }

      if (v18)
      {
        v14 = v17;
        if (v17 >= 1)
        {
          break;
        }
      }

LABEL_25:
      if (ctxt)
      {
        v16 = 0;
      }

      else
      {
        v16 = xmlDOMWrapStoreNs(doc, ns->href, ns->prefix);
        if (v16)
        {
          if (xmlDOMWrapNSNormAddNsMapItem2(&v18, &v17 + 1, &v17, v10->ns, v16) == -1)
          {
            v4 = -1;
          }
        }

        else
        {
          v4 = -1;
        }
      }

      v10->ns = v16;
LABEL_35:
      if (v10->type != XML_ELEMENT_NODE)
      {
        goto LABEL_38;
      }

      properties = v10->properties;
      if (!properties)
      {
        goto LABEL_37;
      }
    }

    v15 = (v18 + 8);
    while (ns != *(v15 - 1))
    {
      v15 += 2;
      if (!--v14)
      {
        goto LABEL_25;
      }
    }

    v10->ns = *v15;
    if (v10->type != XML_ELEMENT_NODE)
    {
      break;
    }

LABEL_37:
    properties = v10->children;
    if (!properties)
    {
LABEL_38:
      while (1)
      {
        properties = v10->next;
        if (properties)
        {
          break;
        }

        v10 = v10->parent;
        if (!v10)
        {
          goto LABEL_40;
        }
      }
    }
  }

  if (v10)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (v18)
  {
    free(v18);
  }

  return v4;
}

uint64_t xmlDOMWrapNSNormAddNsMapItem2(void **a1, int *a2, int *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v10 = *a2;
  if (*a3 < *a2)
  {
    v11 = *a1;
LABEL_11:
    result = 0;
    v11[2 * v9] = a4;
    *(*a1 + 2 * v9 + 1) = a5;
    *a3 = v9 + 1;
    return result;
  }

  if (v10 < 1)
  {
    v13 = 3;
  }

  else
  {
    if (v10 > 0x3B9AC9FF)
    {
      return 0xFFFFFFFFLL;
    }

    if (1000000000 - ((v10 + 1) >> 1) >= v10)
    {
      v13 = v10 + ((v10 + 1) >> 1);
    }

    else
    {
      v13 = 1000000000;
    }
  }

  v14 = malloc_type_realloc(*a1, 8 * (2 * v13), 0x2004093837F09uLL);
  if (v14)
  {
    v11 = v14;
    *a1 = v14;
    *a2 = v13;
    v9 = *a3;
    goto LABEL_11;
  }

  __xmlSimpleError(2u, 2, 0, 0, "realloc ns map item");
  return 0xFFFFFFFFLL;
}

xmlNsPtr xmlDOMWrapStoreNs(uint64_t a1, const xmlChar *a2, const xmlChar *a3)
{
  v5 = xmlTreeEnsureXMLDecl(a1);
  if (v5)
  {
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v5 = *v5;
      v7 = *(v6 + 3);
      if ((v7 == a3 || xmlStrEqual(v7, a3)) && xmlStrEqual(v5[2], a2))
      {
        return v5;
      }
    }

    v8 = xmlNewNs(0, a2, a3);
    *v5 = v8;
    return v8;
  }

  return v5;
}

int xmlDOMWrapReconcileNamespaces(xmlDOMWrapCtxtPtr ctxt, xmlNodePtr elem, int options)
{
  v49 = 0;
  v50 = 0;
  v48 = 0;
  if (!elem || !elem->doc)
  {
    return -1;
  }

  type = elem->type;
  v5 = -1;
  if (type == XML_ELEMENT_NODE)
  {
    v6 = options;
    doc = elem->doc;
    v7 = 0;
    v8 = 0;
    v5 = 0;
    nsDef = 0;
    v9 = elem;
    v10 = -1;
    while (1)
    {
      if (type != XML_ATTRIBUTE_NODE)
      {
        if (type != XML_ELEMENT_NODE)
        {
          goto LABEL_82;
        }

        ++v10;
        if (v9->nsDef)
        {
          v11 = 0;
          nsDef = v9->nsDef;
          v12 = 1;
          while (1)
          {
            if (!v7)
            {
              parent = elem->parent;
              if (parent && parent->doc != parent && xmlDOMWrapNSNormGatherInScopeNs(&v50, parent) == -1)
              {
                v5 = -1;
              }

              v7 = 1;
            }

            v14 = v50;
            if ((v6 & 1) == 0 || !v50 || (v15 = *v50) == 0)
            {
LABEL_30:
              ns = v9->ns;
              v23 = nsDef;
              if (v12 && ns != 0)
              {
                v12 = ns != nsDef;
              }

              if (v14)
              {
                v25 = *v14;
                if (*v14)
                {
                  do
                  {
                    if (*(v25 + 9) >= -1 && *(v25 + 8) == -1)
                    {
                      prefix = nsDef->prefix;
                      v27 = *(v25[3] + 24);
                      if (prefix == v27 || xmlStrEqual(prefix, v27))
                      {
                        *(v25 + 8) = v10;
                      }
                    }

                    v25 = *v25;
                  }

                  while (v25);
                  v23 = nsDef;
                }
              }

              if (!xmlDOMWrapNsMapAddItem(&v50, -1, v23, v23, v10))
              {
                v5 = -1;
              }

              p_next = &nsDef->next;
              v11 = nsDef;
LABEL_47:
              next = *p_next;
              goto LABEL_48;
            }

            while (1)
            {
              if (v15[9] < -1 || v15[8] != -1)
              {
                goto LABEL_28;
              }

              v16 = nsDef;
              v17 = nsDef->prefix;
              v18 = *(v15 + 3);
              v19 = *(v18 + 24);
              if (v17 != v19)
              {
                if (!xmlStrEqual(v17, v19))
                {
                  goto LABEL_28;
                }

                v16 = nsDef;
                v18 = *(v15 + 3);
              }

              v20 = *(v16 + 16);
              v21 = *(v18 + 16);
              if (v20 == v21)
              {
                goto LABEL_26;
              }

              if (xmlStrEqual(v20, v21))
              {
                break;
              }

LABEL_28:
              v15 = *v15;
              if (!v15)
              {
                v14 = v50;
                goto LABEL_30;
              }
            }

            v16 = nsDef;
            v18 = *(v15 + 3);
LABEL_26:
            if (xmlDOMWrapNSNormAddNsMapItem2(&v49, &v48 + 1, &v48, v16, v18) == -1)
            {
              v5 = -1;
              goto LABEL_28;
            }

            next = nsDef->next;
            if (v11)
            {
              v11->next = next;
              p_next = &nsDef->next;
              goto LABEL_47;
            }

            v9->nsDef = next;
LABEL_48:
            nsDef = next;
            if (!next)
            {
              v8 = v9;
              if (!v12)
              {
                goto LABEL_78;
              }

              goto LABEL_56;
            }
          }
        }

        v8 = v9;
      }

LABEL_56:
      if (v9->ns)
      {
        if (!v7)
        {
          v30 = elem->parent;
          if (v30 && v30->doc != v30 && xmlDOMWrapNSNormGatherInScopeNs(&v50, v30) == -1)
          {
            v5 = -1;
          }

          v7 = 1;
        }

        if (v49)
        {
          v31 = v48;
          if (v48 >= 1)
          {
            v32 = (v49 + 8);
            while (v9->ns != *(v32 - 1))
            {
              v32 += 2;
              if (!--v31)
              {
                goto LABEL_70;
              }
            }

            v9->ns = *v32;
          }
        }

LABEL_70:
        v33 = v50;
        if (v50)
        {
          while (1)
          {
            v33 = *v33;
            if (!v33)
            {
              break;
            }

            if (*(v33 + 8) == -1 && v9->ns == *(v33 + 2))
            {
              p_nsDef = (v33 + 24);
              goto LABEL_77;
            }
          }
        }

        p_nsDef = &nsDef;
        if (xmlDOMWrapNSNormAcquireNormalizedNs(doc, v8, v9->ns, &nsDef, &v50, v10, v9->type == XML_ATTRIBUTE_NODE) == -1)
        {
          v5 = -1;
        }

LABEL_77:
        v9->ns = *p_nsDef;
      }

LABEL_78:
      if (v9->type != XML_ELEMENT_NODE)
      {
        goto LABEL_82;
      }

      properties = v9->properties;
      if (!properties)
      {
LABEL_81:
        properties = v9->children;
        if (!properties)
        {
LABEL_82:
          while (v9 != elem)
          {
            v36 = v9->type;
            if (v36 == XML_ELEMENT_NODE)
            {
              v37 = v50;
              if (v50)
              {
                v38 = *v50;
                if (*v50)
                {
                  v40 = v50 + 8;
                  v39 = *(v50 + 1);
                  if (!v39)
                  {
                    goto LABEL_111;
                  }

                  do
                  {
                    if (*(v39 + 36) < v10)
                    {
                      break;
                    }

                    v41 = *(v39 + 8);
                    *v40 = v41;
                    if (v41)
                    {
                      v37 = v41;
                    }

                    *v37 = 0;
                    *v39 = *(v50 + 2);
                    v37 = v50;
                    *(v50 + 2) = v39;
                    v40 = v37 + 1;
                    v39 = v37[1];
                  }

                  while (v39);
                  v38 = *v37;
                  if (*v37)
                  {
LABEL_111:
                    do
                    {
                      if (*(v38 + 8) >= v10)
                      {
                        *(v38 + 8) = -1;
                      }

                      v38 = *v38;
                    }

                    while (v38);
                  }
                }
              }

              --v10;
            }

            properties = v9->next;
            if (properties)
            {
              goto LABEL_80;
            }

            v9 = v9->parent;
            if (v36 == XML_ATTRIBUTE_NODE && v9->type == XML_ELEMENT_NODE)
            {
              goto LABEL_81;
            }
          }

          v43 = v49;
          if (v49)
          {
            v44 = v48;
            if (v48 >= 1)
            {
              v45 = v49;
              do
              {
                v46 = *v45;
                v45 += 2;
                xmlFreeNs(v46);
                --v44;
              }

              while (v44);
            }

            free(v43);
          }

          if (v50)
          {
            xmlDOMWrapNsMapFree(v50);
          }

          return v5;
        }
      }

LABEL_80:
      type = properties->type;
      v9 = properties;
    }
  }

  return v5;
}

uint64_t xmlDOMWrapNSNormGatherInScopeNs(uint64_t **a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  v3 = 0xFFFFFFFFLL;
  if (a2 && !*a1 && *(a2 + 8) != 18)
  {
    while (1)
    {
      if (v2 == *(v2 + 64))
      {
        return 0;
      }

      if (*(v2 + 8) == 1)
      {
        v5 = *(v2 + 96);
        if (v5)
        {
          break;
        }
      }

LABEL_19:
      v3 = 0;
      v2 = *(v2 + 40);
      if (!v2)
      {
        return v3;
      }
    }

    while (1)
    {
      v6 = *a1;
      if (*a1 && (v7 = *v6) != 0)
      {
        while (1)
        {
          v8 = v5[3];
          v9 = *(v7[3] + 24);
          if (v8 == v9 || xmlStrEqual(v8, v9))
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_13;
          }
        }

        v10 = 0;
      }

      else
      {
LABEL_13:
        v10 = 1;
      }

      v3 = 0xFFFFFFFFLL;
      v11 = xmlDOMWrapNsMapAddItem(a1, 0, 0, v5, -1);
      if (!v11)
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        *(v11 + 8) = 0;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_19;
      }
    }
  }

  return v3;
}

void *xmlDOMWrapNsMapAddItem(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  result = 0;
  if (!a1 || (a2 - 1) < 0xFFFFFFFE)
  {
    return result;
  }

  v11 = *a1;
  if (!*a1)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x20040960023A9uLL);
    if (!v12)
    {
      v15 = "allocating namespace map";
      goto LABEL_17;
    }

    v11 = v12;
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    *a1 = v12;
  }

  result = v11[2];
  if (!result)
  {
    result = malloc_type_malloc(0x28uLL, 0x1020040DBF2485DuLL);
    if (result)
    {
      goto LABEL_9;
    }

    v15 = "allocating namespace map item";
LABEL_17:
    __xmlSimpleError(2u, 2, 0, 0, v15);
    return 0;
  }

  v11[2] = *result;
LABEL_9:
  result[4] = 0;
  *result = 0u;
  *(result + 1) = 0u;
  v13 = *v11;
  if (*v11)
  {
    if (a2 == -1)
    {
      v14 = v11[1];
      ++v11;
      result[1] = v14;
      *v14 = result;
    }

    else
    {
      *(v13 + 8) = result;
      *result = v13;
    }
  }

  else
  {
    *v11++ = result;
  }

  *v11 = result;
  result[2] = a3;
  result[3] = a4;
  *(result + 8) = -1;
  *(result + 9) = a5;
  return result;
}

uint64_t xmlDOMWrapNSNormAcquireNormalizedNs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t **a5, int a6, int a7)
{
  result = 0xFFFFFFFFLL;
  if (!a3 || !a4 || !a5)
  {
    return result;
  }

  *a4 = 0;
  v15 = *(a3 + 24);
  if (v15 && *v15 == 120 && v15[1] == 109 && v15[2] == 108 && !v15[3])
  {
    v32 = xmlTreeEnsureXMLDecl(a1);
    *a4 = v32;
    if (v32)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v16 = *a5;
  if (!*a5 || (v17 = *v16) == 0)
  {
LABEL_23:
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
    if (a2)
    {
      v23 = xmlDOMWrapNSNormDeclareNsForced(a2, v21, v22, 0);
      if (v23)
      {
        v24 = v23;
        v25 = *a5;
        if (*a5)
        {
          v26 = *v25;
          if (*v25)
          {
            while (1)
            {
              if (*(v26 + 36) < a6 && *(v26 + 32) == -1)
              {
                v27 = *(a3 + 24);
                v28 = *(*(v26 + 24) + 24);
                if (v27 == v28 || xmlStrEqual(v27, v28))
                {
                  break;
                }
              }

              v26 = *v26;
              if (!v26)
              {
                goto LABEL_38;
              }
            }

            *(v26 + 32) = a6;
          }
        }

LABEL_38:
        if (xmlDOMWrapNsMapAddItem(a5, -1, a3, v24, a6))
        {
          result = 0;
          *a4 = v24;
          return result;
        }

        v31 = v24;
        goto LABEL_41;
      }
    }

    else
    {
      v29 = xmlDOMWrapStoreNs(a1, v21, v22);
      if (v29)
      {
        v30 = v29;
        if (xmlDOMWrapNsMapAddItem(a5, -1, a3, v29, -3))
        {
          result = 0;
          *a4 = v30;
          return result;
        }

        v31 = v30;
LABEL_41:
        xmlFreeNs(v31);
      }
    }

    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    if (*(v17 + 36) >= -1 && *(v17 + 32) == -1)
    {
      v18 = *(v17 + 24);
      v19 = *(v18 + 16);
      if (v19)
      {
        if (*v19 && (!a7 || *(v18 + 24)))
        {
          v20 = *(a3 + 16);
          if (v19 == v20)
          {
            goto LABEL_22;
          }

          if (xmlStrEqual(v19, v20))
          {
            break;
          }
        }
      }
    }

    v17 = *v17;
    if (!v17)
    {
      goto LABEL_23;
    }
  }

  v18 = *(v17 + 24);
LABEL_22:
  result = 0;
  *(v17 + 16) = a3;
  *a4 = v18;
  return result;
}

int xmlDOMWrapCloneNode(xmlDOMWrapCtxtPtr ctxt, xmlDocPtr sourceDoc, xmlNodePtr node, xmlNodePtr *clonedNode, xmlDocPtr destDoc, xmlNodePtr destParent, int deep, int options)
{
  namespaceMap = 0;
  v8 = -1;
  if (node)
  {
    if (clonedNode)
    {
      if (destDoc)
      {
        v13 = ctxt;
        if (!destParent || destParent->doc == destDoc)
        {
          if (node->type != XML_ELEMENT_NODE)
          {
            return 1;
          }

          p_doc = &node->doc;
          doc = node->doc;
          if (!doc || doc == sourceDoc || !sourceDoc)
          {
            if (sourceDoc)
            {
              v16 = sourceDoc;
            }

            else
            {
              v16 = node->doc;
            }

            if (!(sourceDoc | doc))
            {
              return -1;
            }

            if (ctxt)
            {
              namespaceMap = ctxt->namespaceMap;
            }

            v18 = destDoc->dict;
            nsDef = 0;
            *clonedNode = 0;
            if (*p_doc != v16)
            {
              v19 = 0;
              v8 = -1;
              goto LABEL_171;
            }

            v74 = 0;
            dict = v18;
            v78 = 0;
            v20 = 0;
            v21 = 0;
            v80 = 0;
            v22 = -1;
            v23 = node;
            v77 = v16;
            while (1)
            {
              v81 = v21;
              type = v23->type;
              if (type - 3 >= 6 && type != XML_DOCUMENT_FRAG_NODE)
              {
                if (type == XML_ATTRIBUTE_NODE)
                {
                  v28 = malloc_type_malloc(0x60uLL, 0x10F00407C650413uLL);
                  if (!v28)
                  {
                    v73 = "xmlDOMWrapCloneNode(): allocating an attr-node";
                    goto LABEL_181;
                  }

                  v21 = v28;
                  *&v28->doc = 0u;
                  *&v28->content = 0u;
                  *&v28->last = 0u;
                  *&v28->next = 0u;
                  *&v28->_private = 0u;
                  *&v28->name = 0u;
                  if (!v78)
                  {
LABEL_39:
                    v78 = v21;
                    v27 = v81;
                    goto LABEL_40;
                  }

                  v27 = v81;
                  v28->parent = v81;
                  if (!v20)
                  {
                    v81->properties = v28;
                    goto LABEL_40;
                  }

                  goto LABEL_30;
                }

                if (type != XML_ELEMENT_NODE)
                {
                  goto LABEL_182;
                }
              }

              v26 = malloc_type_malloc(0x78uLL, 0x10F00409DCD5C4DuLL);
              if (!v26)
              {
                v73 = "xmlDOMWrapCloneNode(): allocating a node";
LABEL_181:
                __xmlSimpleError(2u, 2, 0, 0, v73);
LABEL_182:
                v8 = -1;
LABEL_170:
                v19 = v78;
                v13 = ctxt;
                goto LABEL_171;
              }

              v21 = v26;
              *&v26->line = 0;
              *&v26->content = 0u;
              *&v26->nsDef = 0u;
              *&v26->next = 0u;
              *&v26->doc = 0u;
              *&v26->name = 0u;
              *&v26->last = 0u;
              *&v26->_private = 0u;
              if (!v78)
              {
                goto LABEL_39;
              }

              v27 = v81;
              v26->parent = v81;
              if (!v20)
              {
                v81->children = v26;
                goto LABEL_40;
              }

LABEL_30:
              v20->next = v21;
              v21->prev = v20;
LABEL_40:
              v21->type = v23->type;
              v21->doc = destDoc;
              name = v23->name;
              v30 = "text";
              if (name != "text")
              {
                v30 = "textnoenc";
                if (name != "textnoenc")
                {
                  v30 = "comment";
                  if (name != "comment")
                  {
                    if (!name)
                    {
                      goto LABEL_49;
                    }

                    if (dict)
                    {
                      v31 = xmlDictOwns(dict, name);
                      v32 = v23->name;
                      if (!v31)
                      {
                        v33 = xmlDictLookup(dict, v32, -1);
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v33 = xmlStrdup(name);
LABEL_81:
                      v32 = v33;
                    }

                    v27 = v81;
                    goto LABEL_48;
                  }
                }
              }

              v32 = v30;
LABEL_48:
              v21->name = v32;
LABEL_49:
              v34 = v23->type;
              v8 = -1;
              if (v34 > 4)
              {
                if (v34 <= 6)
                {
                  if (v34 != 5)
                  {
                    goto LABEL_136;
                  }

                  if (v77 != destDoc)
                  {
                    if (!destDoc->intSubset && !destDoc->extSubset)
                    {
                      goto LABEL_136;
                    }

                    DocEntity = xmlGetDocEntity(destDoc, v23->name);
                    if (!DocEntity)
                    {
                      v27 = v81;
                      goto LABEL_136;
                    }

                    last = DocEntity;
                    v21->content = DocEntity->content;
                    v21->children = DocEntity;
                    v40 = 32;
                    goto LABEL_78;
                  }

                  v21->content = v23->content;
                  last = v23->last;
                  v21->children = v23->children;
                  v40 = 32;
                }

                else
                {
                  if (v34 != 7 && v34 != 8)
                  {
                    v19 = v78;
                    v13 = ctxt;
                    if ((v34 - 19) < 2)
                    {
                      return v8;
                    }

LABEL_171:
                    v70 = namespaceMap;
                    if (namespaceMap)
                    {
                      if (v13)
                      {
                        goto LABEL_173;
                      }

                      goto LABEL_174;
                    }

                    goto LABEL_175;
                  }

LABEL_58:
                  content = v23->content;
                  if (!content)
                  {
                    goto LABEL_136;
                  }

                  if (dict)
                  {
                    v36 = xmlDictOwns(dict, content);
                    last = v23->content;
                    if (!v36)
                    {
                      v38 = xmlDictLookup(dict, last, -1);
                      goto LABEL_76;
                    }
                  }

                  else
                  {
                    v38 = xmlStrdup(content);
LABEL_76:
                    last = v38;
                  }

                  v40 = 80;
LABEL_78:
                  v27 = v81;
                }

                *(&v21->_private + v40) = last;
                goto LABEL_136;
              }

              if ((v34 - 3) < 2)
              {
                goto LABEL_58;
              }

              if (v34 == 1)
              {
                ++v22;
                if (v23->nsDef)
                {
                  if (!destParent || v80 || ctxt)
                  {
                    v80 = 1;
                    nsDef = v23->nsDef;
LABEL_85:
                    p_nsDef = &v21->nsDef;
                    while (1)
                    {
                      v42 = malloc_type_malloc(0x30uLL, 0x10F0040DE9E91B6uLL);
                      if (!v42)
                      {
                        break;
                      }

                      v43 = v42;
                      v42[1] = 0u;
                      v42[2] = 0u;
                      *v42 = 0u;
                      *(v42 + 2) = 18;
                      v44 = nsDef;
                      v45 = nsDef[2];
                      if (v45)
                      {
                        *(v43 + 16) = xmlStrdup(v45);
                        v44 = nsDef;
                      }

                      v46 = v44[3];
                      if (v46)
                      {
                        *(v43 + 24) = xmlStrdup(v46);
                      }

                      *p_nsDef = v43;
                      if (!ctxt || !ctxt->getNsForNodeFunc)
                      {
                        if (namespaceMap)
                        {
                          v47 = *namespaceMap;
                          if (*namespaceMap)
                          {
                            do
                            {
                              if (*(v47 + 9) >= -1 && *(v47 + 8) == -1)
                              {
                                v48 = nsDef[3];
                                v49 = *(v47[3] + 24);
                                if (v48 == v49 || xmlStrEqual(v48, v49))
                                {
                                  *(v47 + 8) = v22;
                                }
                              }

                              v47 = *v47;
                            }

                            while (v47);
                          }
                        }

                        v8 = -1;
                        if (!xmlDOMWrapNsMapAddItem(&namespaceMap, -1, nsDef, v43, v22))
                        {
                          goto LABEL_170;
                        }
                      }

                      nsDef = *nsDef;
                      p_nsDef = v43;
                      if (!nsDef)
                      {
                        goto LABEL_103;
                      }
                    }

                    __xmlSimpleError(2u, 2, 0, 0, "xmlDOMWrapCloneNode(): allocating namespace");
                    return -1;
                  }

                  if (xmlDOMWrapNSNormGatherInScopeNs(&namespaceMap, destParent) == -1)
                  {
                    goto LABEL_170;
                  }

                  nsDef = v23->nsDef;
                  v80 = 1;
                  if (nsDef)
                  {
                    goto LABEL_85;
                  }
                }

LABEL_103:
                v74 = v23;
              }

              else if (v34 != 2)
              {
                goto LABEL_170;
              }

              if (v23->ns)
              {
                v50 = 1;
                if (destParent && !v80 && !ctxt)
                {
                  if (xmlDOMWrapNSNormGatherInScopeNs(&namespaceMap, destParent) == -1)
                  {
                    goto LABEL_182;
                  }

                  v50 = 1;
                }

                v51 = namespaceMap;
                if (namespaceMap)
                {
                  do
                  {
                    v51 = *v51;
                    if (!v51)
                    {
                      goto LABEL_115;
                    }
                  }

                  while (*(v51 + 8) != -1 || v23->ns != *(v51 + 2));
                  v52 = (v51 + 24);
                }

                else
                {
LABEL_115:
                  if (ctxt)
                  {
                    getNsForNodeFunc = ctxt->getNsForNodeFunc;
                    ns = v23->ns;
                    if (getNsForNodeFunc)
                    {
                      v56 = *(ns + 16);
                      v55 = *(ns + 24);
                      nsDef = getNsForNodeFunc();
                      if (!xmlDOMWrapNsMapAddItem(&namespaceMap, -1, v23->ns, nsDef, -4))
                      {
                        v70 = namespaceMap;
                        v8 = -1;
                        v19 = v78;
                        v13 = ctxt;
                        if (!namespaceMap)
                        {
                          goto LABEL_175;
                        }

LABEL_173:
                        if (v13->namespaceMap == v70)
                        {
                          v71 = *v70;
                          if (*v70)
                          {
                            v72 = v70[2];
                            if (v72)
                            {
                              *v70[1] = v72;
                              v70 = namespaceMap;
                              v71 = *namespaceMap;
                            }

                            v70[2] = v71;
                            *v70 = 0;
                          }

                          goto LABEL_175;
                        }

LABEL_174:
                        xmlDOMWrapNsMapFree(v70);
LABEL_175:
                        *clonedNode = v19;
                        return v8;
                      }

                      v52 = &nsDef;
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    ns = v23->ns;
                  }

                  if (destParent)
                  {
                    v57 = v74;
                  }

                  else
                  {
                    v57 = 0;
                  }

                  v52 = &nsDef;
                  if (xmlDOMWrapNSNormAcquireNormalizedNs(destDoc, v57, ns, &nsDef, &namespaceMap, v22, v23->type == XML_ATTRIBUTE_NODE) == -1)
                  {
                    goto LABEL_182;
                  }
                }

LABEL_125:
                v21->ns = *v52;
                goto LABEL_126;
              }

              v50 = v80;
LABEL_126:
              if (v21->type == XML_ATTRIBUTE_NODE)
              {
                parent = v21->parent;
                if (parent)
                {
                  if (xmlIsID(destDoc, parent, v21))
                  {
                    StringInternal = xmlNodeListGetStringInternal(*p_doc, v23->children, 1, 0);
                    if (StringInternal)
                    {
                      v60 = StringInternal;
                      v61 = xmlAddID(0, destDoc, StringInternal, v23);
                      free(v60);
                      if (!v61)
                      {
                        goto LABEL_182;
                      }
                    }
                  }
                }
              }

              if (v23->type != XML_ELEMENT_NODE)
              {
                v27 = v81;
                while (1)
                {
LABEL_162:
                  children = v23->children;
                  if (children && (deep || v23->type == XML_ATTRIBUTE_NODE))
                  {
                    goto LABEL_165;
                  }

                  v80 = v50;
LABEL_136:
                  if (v23 == node)
                  {
                    break;
                  }

                  v20 = v21;
                  v50 = v80;
                  while (1)
                  {
                    v63 = v23->type;
                    if (v63 <= 0x14 && ((1 << v63) & 0x180002) != 0)
                    {
                      v65 = namespaceMap;
                      if (namespaceMap)
                      {
                        v66 = *namespaceMap;
                        if (*namespaceMap)
                        {
                          v68 = namespaceMap + 8;
                          v67 = *(namespaceMap + 1);
                          if (!v67)
                          {
                            goto LABEL_191;
                          }

                          do
                          {
                            if (*(v67 + 36) < v22)
                            {
                              break;
                            }

                            v69 = *(v67 + 8);
                            *v68 = v69;
                            if (v69)
                            {
                              v65 = v69;
                            }

                            *v65 = 0;
                            *v67 = *(namespaceMap + 2);
                            v65 = namespaceMap;
                            *(namespaceMap + 2) = v67;
                            v68 = v65 + 1;
                            v67 = v65[1];
                          }

                          while (v67);
                          v66 = *v65;
                          if (*v65)
                          {
LABEL_191:
                            do
                            {
                              if (*(v66 + 8) >= v22)
                              {
                                *(v66 + 8) = -1;
                              }

                              v66 = *v66;
                            }

                            while (v66);
                          }
                        }
                      }

                      --v22;
                    }

                    children = v23->next;
                    if (children)
                    {
                      v21 = v27;
                      goto LABEL_166;
                    }

                    v21 = v20->parent;
                    if (v63 == 2)
                    {
                      break;
                    }

                    if (v21)
                    {
                      v21->last = v20;
                      v27 = v21->parent;
                    }

                    v23 = v23->parent;
                    v20 = v21;
                    if (v23 == node)
                    {
                      goto LABEL_169;
                    }
                  }

                  v27 = v21->parent;
                  v23 = v23->parent;
                }

LABEL_169:
                v8 = 0;
                goto LABEL_170;
              }

              children = v23->properties;
              v27 = v81;
              if (!children)
              {
                goto LABEL_162;
              }

LABEL_165:
              v20 = 0;
LABEL_166:
              p_doc = &children->doc;
              v80 = v50;
              v23 = children;
              if (children->doc != v77)
              {
                goto LABEL_182;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

int xmlDOMWrapAdoptNode(xmlDOMWrapCtxtPtr ctxt, xmlDocPtr sourceDoc, xmlNodePtr node, xmlDocPtr destDoc, xmlNodePtr destParent, int options)
{
  if (!node)
  {
    LODWORD(ctxt) = -1;
    return ctxt;
  }

  v7 = ctxt;
  LODWORD(ctxt) = -1;
  if (!destDoc)
  {
    return ctxt;
  }

  type = node->type;
  if (type == XML_NAMESPACE_DECL || destParent && destParent->doc != destDoc)
  {
    return ctxt;
  }

  doc = node->doc;
  if (doc)
  {
    if (doc != sourceDoc && sourceDoc)
    {
      return ctxt;
    }
  }

  v12 = sourceDoc ? sourceDoc : node->doc;
  if (v12 == destDoc)
  {
    return ctxt;
  }

  if (type > XML_DOCUMENT_FRAG_NODE)
  {
LABEL_32:
    LODWORD(ctxt) = 1;
    return ctxt;
  }

  if (((1 << type) & 0x1BE) == 0)
  {
    if (type == XML_DOCUMENT_FRAG_NODE)
    {
      LODWORD(ctxt) = 2;
      return ctxt;
    }

    goto LABEL_32;
  }

  parent = node->parent;
  if (parent && parent != destParent)
  {
    xmlUnlinkNode(node);
    type = node->type;
  }

  if (type == XML_ATTRIBUTE_NODE)
  {

    LODWORD(ctxt) = xmlDOMWrapAdoptAttr(v12, node, destDoc, destParent);
  }

  else
  {
    if (type == XML_ELEMENT_NODE)
    {

      LODWORD(ctxt) = xmlDOMWrapAdoptBranch(v7, v12, node, destDoc, destParent);
      return ctxt;
    }

    node->doc = destDoc;
    if (v12)
    {
      v14 = v12->dict == destDoc->dict;
    }

    else
    {
      v14 = 0;
    }

    if (type - 3 < 2)
    {
      if (v14)
      {
        goto LABEL_70;
      }

      goto LABEL_45;
    }

    if (type != XML_ENTITY_REF_NODE)
    {
      if (type != XML_PI_NODE || v14)
      {
        goto LABEL_70;
      }

      name = node->name;
      if (name)
      {
        dict = destDoc->dict;
        if (dict)
        {
          node->name = xmlDictLookup(dict, node->name, -1);
          if (!v12 || (v17 = v12->dict) == 0 || !xmlDictOwns(v17, name))
          {
            free(name);
          }

          goto LABEL_45;
        }

        if (v12)
        {
          v24 = v12->dict;
          if (v24 && xmlDictOwns(v24, node->name))
          {
            node->name = xmlStrdup(node->name);
          }

          goto LABEL_45;
        }

        goto LABEL_70;
      }

LABEL_45:
      LODWORD(ctxt) = 0;
      if (v12)
      {
        content = node->content;
        if (content)
        {
          ctxt = v12->dict;
          if (ctxt)
          {
            LODWORD(ctxt) = xmlDictOwns(ctxt, content);
            if (ctxt)
            {
              v19 = destDoc->dict;
              if (v19)
              {
                ctxt = xmlDictLookup(v19, node->content, -1);
              }

              else
              {
                ctxt = xmlStrdup(node->content);
              }

              v26 = ctxt;
              LODWORD(ctxt) = 0;
              node->content = v26;
            }
          }
        }
      }

      return ctxt;
    }

    node->content = 0;
    node->children = 0;
    node->last = 0;
    if (destDoc->intSubset || destDoc->extSubset)
    {
      DocEntity = xmlGetDocEntity(destDoc, node->name);
      if (DocEntity)
      {
        node->content = DocEntity->content;
        node->children = DocEntity;
        node->last = DocEntity;
      }
    }

    if (v14)
    {
      goto LABEL_70;
    }

    v21 = node->name;
    if (!v21)
    {
      goto LABEL_70;
    }

    v22 = destDoc->dict;
    if (v22)
    {
      node->name = xmlDictLookup(v22, node->name, -1);
      if (!v12 || (v23 = v12->dict) == 0 || !xmlDictOwns(v23, v21))
      {
        free(v21);
      }

      goto LABEL_70;
    }

    if (!v12)
    {
LABEL_70:
      LODWORD(ctxt) = 0;
      return ctxt;
    }

    ctxt = v12->dict;
    if (ctxt)
    {
      LODWORD(ctxt) = xmlDictOwns(ctxt, node->name);
      if (ctxt)
      {
        v25 = xmlStrdup(node->name);
        LODWORD(ctxt) = 0;
        node->name = v25;
      }
    }
  }

  return ctxt;
}

uint64_t xmlDOMWrapAdoptBranch(uint64_t a1, xmlDocPtr doc, uint64_t a3, const xmlDoc *a4, uint64_t a5)
{
  v7 = a1;
  v93 = 0;
  v94 = 0;
  v8 = doc && doc->dict == a4->dict;
  if (!a1)
  {
    if (a5)
    {
      goto LABEL_10;
    }

LABEL_11:
    v86 = 1;
    goto LABEL_12;
  }

  v94 = *(a1 + 16);
  if (!a5)
  {
    goto LABEL_11;
  }

  if (*(a1 + 24))
  {
    v86 = 0;
LABEL_12:
    v91 = 1;
    goto LABEL_13;
  }

LABEL_10:
  v86 = 0;
  v91 = 0;
LABEL_13:
  v9 = 0;
  v10 = 0;
  v11 = -1;
  v12 = a3;
LABEL_14:
  while (*(v12 + 64) == doc)
  {
    v16 = *(v12 + 8);
    v15 = v12;
LABEL_25:
    *(v15 + 64) = a4;
    if (v16 <= 4)
    {
      if ((v16 - 3) < 2)
      {
        if ((v8 & 1) == 0)
        {
          if (doc)
          {
            v19 = *(v15 + 80);
            if (v19)
            {
              dict = doc->dict;
              if (dict)
              {
                v88 = a5;
                v21 = v7;
                v83 = v8;
                if (xmlDictOwns(dict, v19))
                {
                  v22 = a4->dict;
                  if (v22)
                  {
                    v23 = xmlDictLookup(v22, *(v15 + 80), -1);
                  }

                  else
                  {
                    v23 = xmlStrdup(*(v15 + 80));
                  }

                  *(v15 + 80) = v23;
                }

                v8 = v83;
                v7 = v21;
                a5 = v88;
              }
            }
          }
        }

        goto LABEL_150;
      }

      v82 = v8;
      if (v16 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_67;
        }

        v80 = v9;
        v87 = a5;
        goto LABEL_89;
      }

      v24 = v7;
      ++v11;
      v25 = *(v15 + 96);
      v87 = a5;
      if (!v25)
      {
        goto LABEL_88;
      }

      if (!v7 || !*(v7 + 24))
      {
        if (v91)
        {
          v93 = *(v15 + 96);
        }

        else
        {
          if (xmlDOMWrapNSNormGatherInScopeNs(&v94, a5) == -1)
          {
            v10 = 0xFFFFFFFFLL;
          }

          else
          {
            v10 = v10;
          }

          v25 = *(v15 + 96);
          v93 = v25;
          if (!v25)
          {
            v42 = (v15 + 72);
            v91 = 1;
            if (!*(v15 + 72))
            {
              v80 = v15;
              v8 = v82;
              v7 = v24;
              if (v82)
              {
                goto LABEL_122;
              }

              goto LABEL_116;
            }

            v80 = v15;
            v8 = v82;
            v7 = v24;
            goto LABEL_95;
          }

          v91 = 1;
        }

        do
        {
          if (v94)
          {
            v39 = *v94;
            if (*v94)
            {
              do
              {
                if (*(v39 + 9) >= -1 && *(v39 + 8) == -1)
                {
                  v40 = v93[3];
                  v41 = *(v39[3] + 24);
                  if (v40 == v41 || xmlStrEqual(v40, v41))
                  {
                    *(v39 + 8) = v11;
                  }
                }

                v39 = *v39;
              }

              while (v39);
              v25 = v93;
            }
          }

          if (xmlDOMWrapNsMapAddItem(&v94, -1, v25, v25, v11))
          {
            v10 = v10;
          }

          else
          {
            v10 = 0xFFFFFFFFLL;
          }

          v25 = *v93;
          v93 = v25;
        }

        while (v25);
LABEL_88:
        v80 = v15;
        v8 = v82;
        v7 = v24;
        goto LABEL_89;
      }

      v80 = v15;
      v8 = v8;
LABEL_89:
      v42 = (v15 + 72);
      if (!*(v15 + 72))
      {
        goto LABEL_115;
      }

      if (!v91)
      {
        v43 = v7;
        v44 = xmlDOMWrapNSNormGatherInScopeNs(&v94, v87);
        v7 = v43;
        v8 = v82;
        if (v44 == -1)
        {
          v10 = 0xFFFFFFFFLL;
        }

        else
        {
          v10 = v10;
        }

        v91 = 1;
      }

LABEL_95:
      v45 = v94;
      v78 = v7;
      if (v94)
      {
        while (1)
        {
          v45 = *v45;
          if (!v45)
          {
            break;
          }

          if (*(v45 + 8) == -1 && *v42 == *(v45 + 2))
          {
            v46 = (v45 + 24);
            goto LABEL_114;
          }
        }
      }

      if (v7)
      {
        v47 = *(v7 + 24);
        v48 = *v42;
        if (v47)
        {
          v93 = v47(v7, v15, *(v48 + 16), *(v48 + 24));
          if (xmlDOMWrapNsMapAddItem(&v94, -1, *(v15 + 72), v93, -4))
          {
            v10 = v10;
          }

          else
          {
            v10 = 0xFFFFFFFFLL;
          }

          v46 = &v93;
          goto LABEL_113;
        }
      }

      else
      {
        v48 = *v42;
      }

      if (v86)
      {
        v49 = 0;
      }

      else
      {
        v49 = v80;
      }

      v46 = &v93;
      if (xmlDOMWrapNSNormAcquireNormalizedNs(a4, v49, v48, &v93, &v94, v11, *(v15 + 8) == 2) == -1)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = v10;
      }

LABEL_113:
      v8 = v82;
LABEL_114:
      *v42 = *v46;
      v7 = v78;
LABEL_115:
      if (v8)
      {
        goto LABEL_122;
      }

LABEL_116:
      v50 = *(v15 + 16);
      if (v50)
      {
        v51 = a4->dict;
        if (v51)
        {
          v52 = v7;
          *(v15 + 16) = xmlDictLookup(v51, *(v15 + 16), -1);
          if (!doc || (v53 = doc->dict) == 0 || (v54 = xmlDictOwns(v53, v50), v7 = v52, v8 = v82, !v54))
          {
            free(v50);
            v7 = v52;
            v8 = v82;
          }
        }

        else
        {
          if (!doc)
          {
            if (*(v15 + 8) != 1)
            {
              goto LABEL_128;
            }

            goto LABEL_123;
          }

          v57 = doc->dict;
          if (v57)
          {
            v58 = v8;
            v59 = v7;
            v60 = xmlDictOwns(v57, *(v15 + 16));
            v7 = v59;
            v8 = v58;
            if (v60)
            {
              v61 = xmlStrdup(*(v15 + 16));
              v7 = v59;
              v8 = v58;
              *(v15 + 16) = v61;
            }
          }
        }
      }

LABEL_122:
      if (*(v15 + 8) != 1)
      {
        if (doc && (*(v15 + 80) & 0x87FFFFFF) == 2)
        {
          v55 = v8;
          v56 = v7;
          xmlRemoveID(doc, v15);
          v7 = v56;
          v8 = v55;
        }

LABEL_128:
        *(v15 + 80) = 0;
        *(v15 + 88) = 0;
        a5 = v87;
        v9 = v80;
        goto LABEL_169;
      }

LABEL_123:
      *(v15 + 104) = 0;
      *(v15 + 112) = 0;
      v12 = *(v15 + 88);
      a5 = v87;
      v9 = v80;
      if (!v12)
      {
        goto LABEL_169;
      }
    }

    else
    {
      if (v16 > 18)
      {
        if ((v16 - 19) < 2)
        {
          v10 = 0xFFFFFFFFLL;
          goto LABEL_150;
        }

LABEL_67:
        v10 = 0xFFFFFFFFLL;
        goto LABEL_169;
      }

      if (v16 == 5)
      {
        *(v15 + 80) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        if (a4->intSubset || a4->extSubset)
        {
          v89 = a5;
          v81 = v9;
          v26 = v7;
          v27 = v8;
          DocEntity = xmlGetDocEntity(a4, *(v15 + 16));
          if (DocEntity)
          {
            *(v15 + 80) = DocEntity->content;
            *(v15 + 24) = DocEntity;
            *(v15 + 32) = DocEntity;
          }

          v8 = v27;
          v7 = v26;
          v9 = v81;
          a5 = v89;
        }

        goto LABEL_150;
      }

      if (v16 == 7)
      {
        if (v8)
        {
          goto LABEL_169;
        }

        v29 = v9;
        v90 = a5;
        v30 = *(v15 + 16);
        if (v30)
        {
          v31 = a4->dict;
          if (v31)
          {
            v84 = v8;
            v77 = v7;
            *(v15 + 16) = xmlDictLookup(v31, *(v15 + 16), -1);
            if (!doc || (v32 = doc->dict) == 0 || (v33 = xmlDictOwns(v32, v30), v7 = v77, v8 = v84, !v33))
            {
              free(v30);
              v7 = v77;
              v8 = v84;
            }

            goto LABEL_61;
          }

          if (doc)
          {
            v62 = doc->dict;
            if (v62)
            {
              v63 = v8;
              v79 = v7;
              v64 = xmlDictOwns(v62, *(v15 + 16));
              v7 = v79;
              v8 = v63;
              if (v64)
              {
                v65 = xmlStrdup(*(v15 + 16));
                v7 = v79;
                v8 = v63;
                *(v15 + 16) = v65;
              }
            }

            goto LABEL_61;
          }
        }

        else
        {
LABEL_61:
          if (doc)
          {
            v34 = *(v15 + 80);
            a5 = v90;
            v9 = v29;
            if (v34)
            {
              v35 = doc->dict;
              if (v35)
              {
                v36 = v7;
                v85 = v8;
                if (xmlDictOwns(v35, v34))
                {
                  v37 = a4->dict;
                  if (v37)
                  {
                    v38 = xmlDictLookup(v37, *(v15 + 80), -1);
                  }

                  else
                  {
                    v38 = xmlStrdup(*(v15 + 80));
                  }

                  *(v15 + 80) = v38;
                }

                v8 = v85;
                v7 = v36;
                a5 = v90;
              }
            }

            goto LABEL_169;
          }
        }

        a5 = v90;
        v9 = v29;
        goto LABEL_169;
      }

      if (v16 != 8)
      {
        goto LABEL_67;
      }

LABEL_169:
      v12 = *(v15 + 24);
      if (!v12)
      {
        goto LABEL_150;
      }
    }
  }

  v13 = *(v12 + 48);
  if (!v13)
  {
    v15 = v12;
    goto LABEL_150;
  }

  v14 = *(a3 + 64);
  do
  {
    v15 = v13;
    v16 = *(v13 + 8);
    v17 = *(v13 + 64);
    if (v16 == 20 || v17 == v14)
    {
      break;
    }

    v13 = *(v13 + 48);
  }

  while (v13);
  if (v17 == v14)
  {
    goto LABEL_25;
  }

LABEL_150:
  while (v15 != a3)
  {
    v66 = *(v15 + 8);
    if (v66 <= 0x14 && ((1 << v66) & 0x180002) != 0)
    {
      v68 = v94;
      if (v94)
      {
        v69 = *v94;
        if (*v94)
        {
          v71 = v94 + 8;
          v70 = *(v94 + 1);
          if (!v70)
          {
            goto LABEL_182;
          }

          do
          {
            if (*(v70 + 36) < v11)
            {
              break;
            }

            v72 = *(v70 + 8);
            *v71 = v72;
            if (v72)
            {
              v68 = v72;
            }

            *v68 = 0;
            *v70 = *(v94 + 2);
            v68 = v94;
            *(v94 + 2) = v70;
            v71 = v68 + 1;
            v70 = v68[1];
          }

          while (v70);
          v69 = *v68;
          if (*v68)
          {
LABEL_182:
            do
            {
              if (*(v69 + 8) >= v11)
              {
                *(v69 + 8) = -1;
              }

              v69 = *v69;
            }

            while (v69);
          }
        }
      }

      --v11;
    }

    v12 = *(v15 + 48);
    if (v12)
    {
      goto LABEL_14;
    }

    v15 = *(v15 + 40);
    if (v66 == 2)
    {
      goto LABEL_169;
    }
  }

  v73 = v94;
  if (v94)
  {
    if (v7 && *(v7 + 16) == v94)
    {
      v75 = *v94;
      if (*v94)
      {
        v76 = *(v94 + 2);
        if (v76)
        {
          **(v94 + 1) = v76;
          v73 = v94;
          v75 = *v94;
        }

        v73[2] = v75;
        *v73 = 0;
      }
    }

    else
    {
      xmlDOMWrapNsMapFree(v94);
    }
  }

  return v10;
}

uint64_t xmlDOMWrapAdoptAttr(uint64_t a1, uint64_t a2, xmlDoc *doc, uint64_t a4)
{
  *(a2 + 64) = doc;
  v7 = *(a2 + 72);
  if (v7)
  {
    v9 = *(v7 + 24);
    if (v9 && *v9 == 120 && *(v9 + 1) == 109 && *(v9 + 2) == 108 && !*(v9 + 3))
    {
      v14 = xmlTreeEnsureXMLDecl(doc);
    }

    else
    {
      v10 = *(v7 + 16);
      if (a4)
      {
        if (!v10 || *(a4 + 8) == 18)
        {
          goto LABEL_10;
        }

        if (!xmlStrEqual(v10, "http://www.w3.org/XML/1998/namespace"))
        {
          v28 = 0;
          v29 = 0;
          v30 = a4;
          while (1)
          {
            v31 = *(v30 + 8);
            if (v31 == 1)
            {
              v12 = *(v30 + 96);
              if (v12)
              {
                while (1)
                {
                  if (v12->prefix)
                  {
                    if (v28)
                    {
                      v34 = *(v28 + 96);
                      while (1)
                      {
                        v35 = v34[3];
                        prefix = v12->prefix;
                        if (v35 == prefix)
                        {
                          break;
                        }

                        v37 = !v35 || prefix == 0;
                        if (!v37 && xmlStrEqual(v35, prefix))
                        {
                          break;
                        }

                        v34 = *v34;
                        if (!v34)
                        {
                          goto LABEL_77;
                        }
                      }
                    }

                    else
                    {
LABEL_77:
                      href = v12->href;
                      if (href == v10 || xmlStrEqual(v10, href))
                      {
                        if (!v29)
                        {
                          goto LABEL_15;
                        }

                        v39 = xmlNsInScope(a4, v28, v12->prefix);
                        v40 = v39 ? 0 : 6;
                        v11 = v39 < 0 ? 1 : v40;
                        if (v11 != 6)
                        {
                          if (!v11)
                          {
                            goto LABEL_16;
                          }

LABEL_10:
                          v11 = -1;
LABEL_11:
                          v12 = xmlDOMWrapNSNormDeclareNsForced(a4, *(*(a2 + 72) + 16), *(*(a2 + 72) + 24), 1);
                          goto LABEL_16;
                        }
                      }
                    }
                  }

                  v12 = v12->next;
                  if (!v12)
                  {
                    v33 = v30;
                    v29 = v28;
                    goto LABEL_90;
                  }
                }
              }

              v33 = v28;
            }

            else
            {
              v32 = v31 == 6 || v31 == 17;
              v33 = v28;
              if (v32)
              {
LABEL_96:
                v11 = 0;
                goto LABEL_11;
              }
            }

LABEL_90:
            v30 = *(v30 + 40);
            if (!v30)
            {
              goto LABEL_96;
            }

            v11 = 0;
            v28 = v33;
            if (*(v30 + 64) == v30)
            {
              goto LABEL_11;
            }
          }
        }

        v14 = xmlTreeEnsureXMLDecl(doc);
        if (!v14)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v14 = xmlDOMWrapStoreNs(doc, *(v7 + 16), v9);
      }
    }

    v12 = v14;
LABEL_15:
    v11 = 0;
LABEL_16:
    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0xFFFFFFFFLL;
    }

    *(a2 + 72) = v12;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(a2 + 16);
  if (v15)
  {
    dict = doc->dict;
    if (dict)
    {
      *(a2 + 16) = xmlDictLookup(dict, *(a2 + 16), -1);
      if (!a1 || (v17 = *(a1 + 152)) == 0 || !xmlDictOwns(v17, v15))
      {
        free(v15);
      }
    }

    else if (a1)
    {
      v18 = *(a1 + 152);
      if (v18)
      {
        if (xmlDictOwns(v18, *(a2 + 16)))
        {
          *(a2 + 16) = xmlStrdup(*(a2 + 16));
        }
      }
    }
  }

  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = *(a2 + 24);
  if (v19)
  {
    v20 = *(v19 + 8);
    if (v20 == 18)
    {
      v13 = 0xFFFFFFFFLL;
    }

    else
    {
      v13 = v13;
    }

    while (1)
    {
      *(v19 + 64) = doc;
      if ((v20 - 3) >= 2)
      {
        if (v20 == 5)
        {
          *(v19 + 80) = 0;
          *(v19 + 24) = 0;
          *(v19 + 32) = 0;
          if (doc->intSubset || doc->extSubset)
          {
            DocEntity = xmlGetDocEntity(doc, *(v19 + 16));
            if (DocEntity)
            {
              *(v19 + 80) = DocEntity->content;
              *(v19 + 24) = DocEntity;
              *(v19 + 32) = DocEntity;
            }
          }
        }
      }

      else if (a1)
      {
        v21 = *(v19 + 80);
        if (v21)
        {
          v22 = *(a1 + 152);
          if (v22)
          {
            if (xmlDictOwns(v22, v21))
            {
              v23 = doc->dict;
              if (v23)
              {
                v24 = xmlDictLookup(v23, *(v19 + 80), -1);
              }

              else
              {
                v24 = xmlStrdup(*(v19 + 80));
              }

              *(v19 + 80) = v24;
            }
          }
        }
      }

      v26 = *(v19 + 24);
      if (!v26)
      {
        break;
      }

LABEL_53:
      v20 = *(v26 + 8);
      v19 = v26;
    }

    while (v19 != a2)
    {
      v26 = *(v19 + 48);
      if (v26)
      {
        goto LABEL_53;
      }

      v19 = *(v19 + 40);
    }
  }

  return v13;
}

xmlNsPtr xmlDOMWrapNSNormDeclareNsForced(uint64_t a1, xmlChar *href, xmlChar *prefix, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != 1)
  {
LABEL_35:
    result = 0;
    goto LABEL_40;
  }

  v8 = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *__str = 0u;
  v9 = (a1 + 96);
  v10 = prefix;
LABEL_3:
  v11 = *v9;
  if (*v9)
  {
    do
    {
      v12 = v11[3];
      if (v12 == v10 || xmlStrEqual(v10, v12))
      {
        goto LABEL_31;
      }

      v11 = *v11;
    }

    while (v11);
  }

  if (a4)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      if (*(v13 + 64) != v13 && *(v13 + 8) != 18)
      {
        if (v10 && *v10 == 120 && v10[1] == 109 && v10[2] == 108 && !v10[3])
        {
          goto LABEL_31;
        }

        do
        {
          v14 = *(v13 + 8);
          if (v14 == 1)
          {
            v16 = *(v13 + 96);
            if (v16)
            {
              while (1)
              {
                v17 = v16[3];
                if (v17 == v10 || xmlStrEqual(v10, v17))
                {
                  break;
                }

                v16 = *v16;
                if (!v16)
                {
                  goto LABEL_27;
                }
              }

              if (!v16[2])
              {
                break;
              }

LABEL_31:
              if (v8 == 1000)
              {
                goto LABEL_35;
              }

              ++v8;
              v10 = __str;
              if (prefix)
              {
                snprintf(__str, 0x32uLL, "%.30s_%d", prefix, v8);
              }

              else
              {
                snprintf(__str, 0x32uLL, "ns_%d", v8);
              }

              goto LABEL_3;
            }
          }

          else if (v14 == 6 || v14 == 17)
          {
            break;
          }

LABEL_27:
          v13 = *(v13 + 40);
        }

        while (v13 && *(v13 + 64) != v13);
      }
    }
  }

  result = xmlNewNs(0, href, v10);
  if (result)
  {
    v19 = *v9;
    if (*v9)
    {
      do
      {
        v9 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    *v9 = result;
  }

LABEL_40:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

xmlURIPtr xmlParseURIRaw(const char *str, int raw)
{
  if (!str)
  {
    return 0;
  }

  URI = xmlCreateURI();
  v5 = URI;
  if (URI)
  {
    if (raw)
    {
      URI->cleanup |= 2u;
    }

    if (xmlParse3986URIReference(URI, str))
    {
      xmlFreeURI(v5);
      return 0;
    }
  }

  return v5;
}

_DWORD *xmlURIErrMemory(const xmlChar *a1)
{
  if (a1)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 0x1Eu, 2, 3, 0, 0, a1, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a1);
  }

  else
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 0x1Eu, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v2);
  }
}

xmlChar *__cdecl xmlSaveUri(xmlChar *uri)
{
  if (uri)
  {
    v1 = uri;
    v93 = 80;
    v2 = malloc_type_malloc(0x51uLL, 0x100004077774924uLL);
    if (!v2)
    {
      xmlURIErrMemory("saving URI\n");
      return 0;
    }

    v3 = v2;
    v4 = *v1;
    if (*v1)
    {
      LOBYTE(v5) = *v4;
      if (*v4)
      {
        v6 = 0;
        do
        {
          if (v6 >= v93)
          {
            v7 = xmlSaveUriRealloc(v3, &v93);
            if (!v7)
            {
              goto LABEL_212;
            }

            LOBYTE(v5) = v4[v6];
            v3 = v7;
          }

          v8 = v6 + 1;
          v3[v6] = v5;
          v5 = v4[++v6];
        }

        while (v5);
        if (v93 <= v8)
        {
          v9 = xmlSaveUriRealloc(v3, &v93);
          if (!v9)
          {
            goto LABEL_212;
          }

          v3 = v9;
        }
      }

      else
      {
        v8 = 0;
      }

      v10 = v8 + 1;
      v3[v8] = 58;
    }

    else
    {
      v10 = 0;
    }

    v11 = *(v1 + 1);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        v13 = v11 + 1;
        do
        {
          v14 = v10 + 3;
          if (v10 + 3 >= v93)
          {
            v15 = xmlSaveUriRealloc(v3, &v93);
            if (!v15)
            {
              goto LABEL_212;
            }

            v12 = *(v13 - 1);
            v3 = v15;
          }

          if (v12 - 36 <= 0x39 && ((1 << (v12 - 36)) & 0x28000001AC00985) != 0 || v12 - 48 < 0xA || (v12 & 0xDF) - 65 < 0x1A || v12 - 33 <= 0x3E && ((1 << (v12 - 33)) & 0x40000000000033C1) != 0 || v12 == 126)
          {
            v14 = v10 + 1;
          }

          else
          {
            v17 = v12 & 0xF;
            v18 = &v3[v10];
            *v18 = 37;
            if (v12 <= 0x9F)
            {
              v19 = 48;
            }

            else
            {
              v19 = 55;
            }

            v10 += 2;
            v18[1] = v19 + (v12 >> 4);
            if (v17 <= 9)
            {
              v20 = 48;
            }

            else
            {
              v20 = 55;
            }

            LOBYTE(v12) = v20 + v17;
          }

          v3[v10] = v12;
          v16 = *v13++;
          v12 = v16;
          v10 = v14;
        }

        while (v16);
      }

      else
      {
        v14 = v10;
      }

      goto LABEL_44;
    }

    if (*(v1 + 3) || *(v1 + 10) == -1)
    {
      if (v10 + 3 >= v93)
      {
        v21 = xmlSaveUriRealloc(v3, &v93);
        if (!v21)
        {
          goto LABEL_212;
        }
      }

      else
      {
        v21 = v3;
      }

      *&v21[v10] = 12079;
      v10 += 2;
      v33 = *(v1 + 4);
      if (v33)
      {
        v34 = *v33;
        if (*v33)
        {
          v35 = v33 + 1;
          v3 = v21;
          do
          {
            v36 = v10 + 3;
            if (v10 + 3 >= v93)
            {
              v37 = xmlSaveUriRealloc(v3, &v93);
              if (!v37)
              {
                goto LABEL_212;
              }

              v34 = *(v35 - 1);
              v3 = v37;
            }

            if (v34 - 48 < 0xA || (v34 & 0xDF) - 65 < 0x1A || v34 - 33 <= 0x3E && ((1 << (v34 - 33)) & 0x4000000016003FE9) != 0 || v34 == 126)
            {
              v36 = v10 + 1;
            }

            else
            {
              v39 = v34 & 0xF;
              v40 = &v3[v10];
              *v40 = 37;
              if (v34 <= 0x9F)
              {
                v41 = 48;
              }

              else
              {
                v41 = 55;
              }

              v10 += 2;
              v40[1] = v41 + (v34 >> 4);
              if (v39 <= 9)
              {
                v42 = 48;
              }

              else
              {
                v42 = 55;
              }

              LOBYTE(v34) = v42 + v39;
            }

            v3[v10] = v34;
            v38 = *v35++;
            v34 = v38;
            v10 = v36;
          }

          while (v38);
        }

        else
        {
          v36 = v10;
          v3 = v21;
        }

        if (v36 + 3 >= v93)
        {
          v21 = xmlSaveUriRealloc(v3, &v93);
          if (!v21)
          {
            goto LABEL_212;
          }
        }

        else
        {
          v21 = v3;
        }

        v10 = v36 + 1;
        v21[v36] = 64;
      }

      v3 = v21;
      v44 = *(v1 + 3);
      if (v44)
      {
        v45 = *v44;
        if (*v44)
        {
          v46 = v10;
          v47 = v44 + 1;
          do
          {
            if (v46 >= v93)
            {
              v48 = xmlSaveUriRealloc(v3, &v93);
              if (!v48)
              {
                goto LABEL_212;
              }

              v45 = *(v47 - 1);
              v3 = v48;
            }

            v3[v46++] = v45;
            v49 = *v47++;
            v45 = v49;
            ++v10;
          }

          while (v49);
        }

        v50 = *(v1 + 10);
        if (v50 >= 1)
        {
          v51 = v93;
          if (v10 + 10 >= v93)
          {
            v52 = xmlSaveUriRealloc(v3, &v93);
            if (!v52)
            {
              goto LABEL_212;
            }

            v51 = v93;
            v50 = *(v1 + 10);
            v3 = v52;
          }

          v10 += snprintf(&v3[v10], v51 - v10, ":%d", v50);
        }
      }
    }

    else
    {
      if (*(v1 + 2))
      {
        if (v10 + 3 >= v93)
        {
          v43 = xmlSaveUriRealloc(v3, &v93);
          if (!v43)
          {
            goto LABEL_212;
          }
        }

        else
        {
          v43 = v3;
        }

        *&v43[v10] = 12079;
        v57 = v10 + 2;
        v58 = *(v1 + 2);
        v59 = *v58;
        if (*v58)
        {
          v60 = v58 + 1;
          do
          {
            v10 = v57 + 3;
            if (v57 + 3 >= v93)
            {
              v61 = xmlSaveUriRealloc(v43, &v93);
              v3 = v43;
              if (!v61)
              {
                goto LABEL_212;
              }

              v59 = *(v60 - 1);
              v43 = v61;
            }

            if (v59 - 48 < 0xA || (v59 & 0xDF) - 65 < 0x1A || v59 - 33 <= 0x3E && ((1 << (v59 - 33)) & 0x4000000096003FE9) != 0 || v59 == 126)
            {
              v10 = v57 + 1;
            }

            else
            {
              v63 = v59 & 0xF;
              v64 = &v43[v57];
              *v64 = 37;
              if (v59 <= 0x9F)
              {
                v65 = 48;
              }

              else
              {
                v65 = 55;
              }

              v57 += 2;
              v64[1] = v65 + (v59 >> 4);
              if (v63 <= 9)
              {
                v66 = 48;
              }

              else
              {
                v66 = 55;
              }

              LOBYTE(v59) = v66 + v63;
            }

            v43[v57] = v59;
            v62 = *v60++;
            v59 = v62;
            v57 = v10;
          }

          while (v62);
        }

        else
        {
          v10 += 2;
        }

LABEL_119:
        v53 = *(v1 + 6);
        if (!v53)
        {
          v56 = v10;
          v3 = v43;
          goto LABEL_176;
        }

        if (*v1)
        {
          v54 = *v53;
          if (v54 != 47)
          {
            goto LABEL_155;
          }

          if ((v53[1] & 0xDFu) - 65 <= 0x19 && v53[2] == 58 && xmlStrEqual(*v1, "file"))
          {
            if (v10 + 3 >= v93)
            {
              v55 = xmlSaveUriRealloc(v43, &v93);
              v3 = v43;
              if (!v55)
              {
                goto LABEL_212;
              }
            }

            else
            {
              v55 = v43;
            }

            v67 = &v55[v10];
            *v67 = *v53;
            v67[1] = v53[1];
            v68 = v53[2];
            v53 += 3;
            v67[2] = v68;
            v10 += 3;
            v43 = v55;
          }
        }

        v54 = *v53;
LABEL_155:
        v3 = v43;
        if (v54)
        {
          v69 = v53 + 1;
          do
          {
            v56 = v10 + 3;
            if (v10 + 3 >= v93)
            {
              v70 = xmlSaveUriRealloc(v3, &v93);
              if (!v70)
              {
                goto LABEL_212;
              }

              v54 = *(v69 - 1);
              v3 = v70;
            }

            if (v54 - 48 < 0xA || (v54 & 0xDF) - 65 < 0x1A || v54 - 33 <= 0x3E && ((1 << (v54 - 33)) & 0x4000000094007FE9) != 0 || v54 == 126)
            {
              v56 = v10 + 1;
            }

            else
            {
              v72 = v54 & 0xF;
              v73 = &v3[v10];
              *v73 = 37;
              if (v54 <= 0x9F)
              {
                v74 = 48;
              }

              else
              {
                v74 = 55;
              }

              v10 += 2;
              v73[1] = v74 + (v54 >> 4);
              if (v72 <= 9)
              {
                v75 = 48;
              }

              else
              {
                v75 = 55;
              }

              LOBYTE(v54) = v75 + v72;
            }

            v3[v10] = v54;
            v71 = *v69++;
            v54 = v71;
            v10 = v56;
          }

          while (v71);
        }

        else
        {
          v56 = v10;
        }

LABEL_176:
        if (*(v1 + 10))
        {
          v14 = v56 + 1;
          if (v56 + 1 >= v93)
          {
            v76 = xmlSaveUriRealloc(v3, &v93);
            if (!v76)
            {
              goto LABEL_212;
            }
          }

          else
          {
            v76 = v3;
          }

          v76[v56] = 63;
          v77 = *(v1 + 10);
          v78 = *v77;
          if (*v77)
          {
            v79 = v14;
            v80 = v77 + 1;
            v3 = v76;
            do
            {
              if (v79 + 1 >= v93)
              {
                v81 = xmlSaveUriRealloc(v3, &v93);
                if (!v81)
                {
                  goto LABEL_212;
                }

                v78 = *(v80 - 1);
                v3 = v81;
              }

              v3[v79] = v78;
              v82 = *v80++;
              v78 = v82;
              ++v14;
              ++v79;
            }

            while (v82);
            goto LABEL_44;
          }
        }

        else
        {
          if (!*(v1 + 7))
          {
            v14 = v56;
LABEL_44:
            if (!*(v1 + 8))
            {
LABEL_95:
              if (v14 < v93)
              {
                uri = v3;
LABEL_98:
                uri[v14] = 0;
                return uri;
              }

              uri = xmlSaveUriRealloc(v3, &v93);
              if (uri)
              {
                goto LABEL_98;
              }

              goto LABEL_212;
            }

            if (v14 + 3 < v93)
            {
              v22 = v3;
              goto LABEL_48;
            }

            v22 = xmlSaveUriRealloc(v3, &v93);
            if (v22)
            {
LABEL_48:
              v23 = v14 + 1;
              v22[v14] = 35;
              v24 = *(v1 + 8);
              v25 = *v24;
              if (*v24)
              {
                v26 = v24 + 1;
                v3 = v22;
                do
                {
                  v14 = v23 + 3;
                  if (v23 + 3 >= v93)
                  {
                    v27 = xmlSaveUriRealloc(v3, &v93);
                    if (!v27)
                    {
                      goto LABEL_212;
                    }

                    v25 = *(v26 - 1);
                    v3 = v27;
                  }

                  if (v25 - 48 < 0xA || (v25 & 0xDF) - 65 < 0x1A || v25 - 33 <= 0x3E && ((1 << (v25 - 33)) & 0x54000000D6007FE9) != 0 || v25 == 126)
                  {
                    v14 = v23 + 1;
                  }

                  else
                  {
                    v29 = v25 & 0xF;
                    v30 = &v3[v23];
                    *v30 = 37;
                    if (v25 <= 0x9F)
                    {
                      v31 = 48;
                    }

                    else
                    {
                      v31 = 55;
                    }

                    v23 += 2;
                    v30[1] = v31 + (v25 >> 4);
                    if (v29 <= 9)
                    {
                      v32 = 48;
                    }

                    else
                    {
                      v32 = 55;
                    }

                    LOBYTE(v25) = v32 + v29;
                  }

                  v3[v23] = v25;
                  v28 = *v26++;
                  v25 = v28;
                  v23 = v14;
                }

                while (v28);
              }

              else
              {
                ++v14;
                v3 = v22;
              }

              goto LABEL_95;
            }

LABEL_212:
            free(v3);
            return 0;
          }

          if (v56 + 3 >= v93)
          {
            v76 = xmlSaveUriRealloc(v3, &v93);
            if (!v76)
            {
              goto LABEL_212;
            }
          }

          else
          {
            v76 = v3;
          }

          v83 = v56 + 1;
          v76[v56] = 63;
          v84 = *(v1 + 7);
          v85 = *v84;
          if (*v84)
          {
            v86 = v84 + 1;
            v3 = v76;
            do
            {
              v14 = v83 + 3;
              if (v83 + 3 >= v93)
              {
                v87 = xmlSaveUriRealloc(v3, &v93);
                if (!v87)
                {
                  goto LABEL_212;
                }

                v85 = *(v86 - 1);
                v3 = v87;
              }

              if (v85 - 48 < 0xA || (v85 & 0xDF) - 65 < 0x1A || v85 - 33 <= 0x3E && ((1 << (v85 - 33)) & 0x54000000D6007FE9) != 0 || v85 == 126)
              {
                v14 = v83 + 1;
              }

              else
              {
                v89 = v85 & 0xF;
                v90 = &v3[v83];
                *v90 = 37;
                if (v85 <= 0x9F)
                {
                  v91 = 48;
                }

                else
                {
                  v91 = 55;
                }

                v83 += 2;
                v90[1] = v91 + (v85 >> 4);
                if (v89 <= 9)
                {
                  v92 = 48;
                }

                else
                {
                  v92 = 55;
                }

                LOBYTE(v85) = v92 + v89;
              }

              v3[v83] = v85;
              v88 = *v86++;
              v85 = v88;
              v83 = v14;
            }

            while (v88);
            goto LABEL_44;
          }

          v14 = v56 + 1;
        }

        v3 = v76;
        goto LABEL_44;
      }

      if (*v1 && v10 + 3 >= v93)
      {
        v43 = xmlSaveUriRealloc(v3, &v93);
        if (!v43)
        {
          goto LABEL_212;
        }

        goto LABEL_119;
      }
    }

    v43 = v3;
    goto LABEL_119;
  }

  return uri;
}

void *xmlSaveUriRealloc(void *a1, int *a2)
{
  v3 = *a2;
  if (*a2 < 1)
  {
    v4 = 80;
  }

  else
  {
    if (v3 >> 20)
    {
      v6 = "reaching arbitrary MAX_URI_LENGTH limit\n";
      goto LABEL_11;
    }

    if (0x100000 - ((v3 + 1) >> 1) >= v3)
    {
      v4 = v3 + ((v3 + 1) >> 1);
    }

    else
    {
      v4 = 0x100000;
    }
  }

  result = malloc_type_realloc(a1, (v4 + 1), 0x30249316uLL);
  if (result)
  {
    *a2 = v4;
    return result;
  }

  v6 = "saving URI\n";
LABEL_11:
  xmlURIErrMemory(v6);
  return 0;
}

void xmlPrintURI(FILE *stream, xmlURIPtr uri)
{
  v3 = xmlSaveUri(uri);
  if (v3)
  {
    v4 = v3;
    fputs(v3, stream);

    free(v4);
  }
}

int xmlNormalizeURIPath(char *path)
{
  if (!path)
  {
    return -1;
  }

  for (i = path; ; ++i)
  {
    v2 = *i;
    if (v2 != 47)
    {
      break;
    }
  }

  if (!*i)
  {
    return 0;
  }

  v3 = i;
  while (v2 == 46)
  {
    if (i[1] == 47)
    {
      ++i;
      do
      {
        v4 = *++i;
        v2 = v4;
      }

      while (v4 == 47);
    }

    else
    {
      if (!i[1])
      {
        goto LABEL_19;
      }

LABEL_13:
      while (v2 != 47)
      {
        *v3++ = v2;
        v5 = *++i;
        v2 = v5;
        if (!v5)
        {
          goto LABEL_19;
        }
      }

      do
      {
        v6 = *++i;
      }

      while (v6 == 47);
      *v3++ = 47;
      v2 = *i;
    }
  }

  if (v2)
  {
    goto LABEL_13;
  }

LABEL_19:
  *v3 = 0;
    ;
  }

  if (!*j)
  {
    return 0;
  }

  do
  {
LABEL_24:
    v9 = 0;
    v10 = j;
    while (1)
    {
      while (v10[v9] != 47)
      {
        if (!v10[v9])
        {
          goto LABEL_48;
        }

        ++v9;
      }

      j = &v10[v9 + 1];
      if (*v10 == 46 && v10[1] == 46 && v9 == 2)
      {
        goto LABEL_24;
      }

      if (*j != 46 || j[1] != 46)
      {
        goto LABEL_24;
      }

      if (j[2] != 47)
      {
        break;
      }

      v12 = v9 + 4;
      v13 = v10;
      do
      {
        v14 = v13[v12];
        *v13++ = v14;
      }

      while (v14);
      v15 = v10;
      do
      {
        if (v15 <= path)
        {
          break;
        }

        v16 = *--v15;
      }

      while (v16 == 47);
      v9 = 0;
      if (v15 != path)
      {
        while (v15 > path)
        {
          j = v15;
          v17 = *--v15;
          if (v17 == 47)
          {
            goto LABEL_24;
          }
        }

        j = v15;
        goto LABEL_24;
      }
    }
  }

  while (j[2]);
  *v10 = 0;
LABEL_48:
  *v3 = 0;
  if (*path != 47)
  {
    return 0;
  }

  v18 = 0;
  while (1)
  {
    v19 = v18;
    v20 = &path[v18];
    if (path[v18 + 1] != 46 || v20[2] != 46)
    {
      break;
    }

    v21 = path[v18 + 3];
    v18 += 3;
    if (v21 != 47)
    {
      if (!v21)
      {
        v20 = &path[v18];
        goto LABEL_56;
      }

      break;
    }
  }

  if (!v19)
  {
    return 0;
  }

LABEL_56:
  v22 = *v20;
  if (*v20)
  {
    v23 = (v20 + 1);
    do
    {
      *path++ = v22;
      v24 = *v23++;
      v22 = v24;
    }

    while (v24);
  }

  v8 = 0;
  *path = 0;
  return v8;
}

xmlChar *__cdecl xmlURIEscapeStr(const xmlChar *str, const xmlChar *list)
{
  if (!str)
  {
    return 0;
  }

  v2 = str;
  if (*str)
  {
    v4 = xmlStrlen(str);
    if (v4 < 1)
    {
      return 0;
    }

    v5 = v4 + 20;
    v6 = malloc_type_malloc((v4 + 20), 0x100004077774924uLL);
    if (v6)
    {
      v7 = *v2;
      if (*v2)
      {
        v8 = 0;
        while (1)
        {
          if (v5 - v8 <= 3)
          {
            if (v5 < 1)
            {
              v5 = 1;
            }

            else if (v5 >= 0x3B9ACA00)
            {
              xmlURIErrMemory("Malloc failure.\n");
              free(v6);
              v5 = -1;
            }

            else if (1000000000 - ((v5 + 1) >> 1) >= v5)
            {
              v5 += (v5 + 1) >> 1;
            }

            else
            {
              v5 = 1000000000;
            }

            v9 = malloc_type_realloc(v6, v5, 0x96C6A15CuLL);
            if (!v9)
            {
              xmlURIErrMemory("escaping URI value\n");
              free(v6);
              return 0;
            }

            v7 = *v2;
            v6 = v9;
          }

          if ((v7 - 48) >= 0xAu && (v7 - 64) >= 0x1Bu && (v7 - 97) >= 0x1Au && (v7 - 33 > 0x3E || ((1 << (v7 - 33)) & 0x40000000000033C1) == 0) && v7 != 126)
          {
            if (!xmlStrchr(list, v7))
            {
              v11 = &v6[v8];
              *v11 = 37;
              v12 = (v7 >> 4) + 55;
              if (v7 < 0xA0u)
              {
                v12 = (v7 >> 4) | 0x30;
              }

              v11[1] = v12;
              if ((v7 & 0xFu) >= 0xA)
              {
                v13 = (v7 & 0xF) + 55;
              }

              else
              {
                v13 = v7 & 0xF | 0x30;
              }

              v11[2] = v13;
              v8 += 3;
              goto LABEL_23;
            }

            v7 = *v2;
          }

          v6[v8++] = v7;
LABEL_23:
          v10 = *++v2;
          v7 = v10;
          if (!v10)
          {
            v15 = v8;
            goto LABEL_39;
          }
        }
      }

      v15 = 0;
LABEL_39:
      v6[v15] = 0;
    }

    else
    {
      xmlURIErrMemory("escaping URI value\n");
    }

    return v6;
  }

  return xmlStrdup(str);
}

xmlChar *__cdecl xmlURIEscape(const xmlChar *str)
{
  v1 = str;
  v40 = *MEMORY[0x1E69E9840];
  if (str)
  {
    URI = xmlCreateURI();
    if (!URI)
    {
LABEL_39:
      v1 = 0;
      goto LABEL_40;
    }

    v3 = URI;
    URI->cleanup = 1;
    if (xmlParse3986URIReference(URI, v1))
    {
LABEL_4:
      xmlFreeURI(v3);
      goto LABEL_39;
    }

    if (v3->scheme)
    {
      v4 = xmlURIEscapeStr(v3->scheme, "+-.");
      if (!v4)
      {
        xmlURIErrMemory("escaping URI value\n");
        goto LABEL_4;
      }

      v5 = v4;
      v6 = xmlStrcat(0, v4);
      v1 = xmlStrcat(v6, ":");
      free(v5);
    }

    else
    {
      v1 = 0;
    }

    authority = v3->authority;
    if (authority)
    {
      v8 = xmlURIEscapeStr(authority, "/?;:@");
      if (!v8)
      {
        goto LABEL_38;
      }

      v9 = v8;
      v10 = xmlStrcat(v1, "//");
      v1 = xmlStrcat(v10, v9);
      free(v9);
    }

    user = v3->user;
    if (user)
    {
      v12 = xmlURIEscapeStr(user, ";:&=+$,");
      if (!v12)
      {
        goto LABEL_38;
      }

      v13 = v12;
      v14 = xmlStrcat(v1, "//");
      v15 = xmlStrcat(v14, v13);
      v1 = xmlStrcat(v15, "@");
      free(v13);
    }

    server = v3->server;
    if (server)
    {
      v17 = xmlURIEscapeStr(server, "/?;:@");
      if (!v17)
      {
        goto LABEL_38;
      }

      v18 = v17;
      if (!v3->user)
      {
        v1 = xmlStrcat(v1, "//");
      }

      v1 = xmlStrcat(v1, v18);
      free(v18);
    }

    port = v3->port;
    if (port)
    {
      v39 = 0;
      *__str = 0;
      snprintf(__str, 0xAuLL, "%d", port);
      v20 = xmlStrcat(v1, ":");
      v1 = xmlStrcat(v20, __str);
    }

    path = v3->path;
    if (path)
    {
      v22 = xmlURIEscapeStr(path, ":@&=+$,/?;");
      if (!v22)
      {
        goto LABEL_38;
      }

      v23 = v22;
      v1 = xmlStrcat(v1, v22);
      free(v23);
    }

    if (v3->query_raw)
    {
      v24 = xmlStrcat(v1, "?");
      v1 = xmlStrcat(v24, v3->query_raw);
    }

    else
    {
      query = v3->query;
      if (query)
      {
        v33 = xmlURIEscapeStr(query, ";/?:@&=+,$");
        if (!v33)
        {
          goto LABEL_38;
        }

        v34 = v33;
        v35 = xmlStrcat(v1, "?");
        v1 = xmlStrcat(v35, v34);
        free(v34);
      }
    }

    opaque = v3->opaque;
    if (opaque)
    {
      v26 = xmlURIEscapeStr(opaque, "");
      if (!v26)
      {
        goto LABEL_38;
      }

      v27 = v26;
      v1 = xmlStrcat(v1, v26);
      free(v27);
    }

    fragment = v3->fragment;
    if (!fragment)
    {
LABEL_33:
      xmlFreeURI(v3);
      goto LABEL_40;
    }

    v29 = xmlURIEscapeStr(fragment, "#");
    if (v29)
    {
      v30 = v29;
      v31 = xmlStrcat(v1, "#");
      v1 = xmlStrcat(v31, v30);
      free(v30);
      goto LABEL_33;
    }

LABEL_38:
    xmlURIErrMemory("escaping URI value\n");
    xmlFreeURI(v3);
    free(v1);
    goto LABEL_39;
  }

LABEL_40:
  v36 = *MEMORY[0x1E69E9840];
  return v1;
}

xmlChar *__cdecl xmlBuildURI(const xmlChar *URI, const xmlChar *base)
{
  if (!URI)
  {
    return 0;
  }

  v4 = *URI;
  if (!*URI)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v5 = xmlCreateURI();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (xmlParse3986URIReference(v5, URI))
  {
    v7 = 0;
    v8 = 0;
LABEL_6:
    v9 = 0;
LABEL_23:
    xmlFreeURI(v6);
LABEL_24:
    if (!v8)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v6->scheme)
  {
    v9 = xmlStrdup(URI);
    v7 = 0;
    v8 = 0;
    goto LABEL_23;
  }

LABEL_9:
  if (base)
  {
    v10 = xmlCreateURI();
    v8 = v10;
    if (!v10)
    {
LABEL_21:
      v9 = 0;
LABEL_22:
      v7 = 0;
      if (!v6)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (!xmlParse3986URIReference(v10, base))
    {
      if (v4)
      {
        v11 = xmlCreateURI();
        if (v11)
        {
          v7 = v11;
          if (v6->scheme)
          {
            v12 = v6;
LABEL_55:
            v9 = xmlSaveUri(v12);
            goto LABEL_23;
          }

          path = v6->path;
          if (path || v6->authority || v6->server)
          {
            if (v8->scheme)
            {
              v11->scheme = strdup(v8->scheme);
            }

            query_raw = v6->query_raw;
            if (query_raw)
            {
              v17 = 80;
            }

            else
            {
              query_raw = v6->query;
              if (!query_raw)
              {
                goto LABEL_44;
              }

              v17 = 56;
            }

            *(&v7->scheme + v17) = strdup(query_raw);
LABEL_44:
            fragment = v6->fragment;
            if (fragment)
            {
              v7->fragment = strdup(fragment);
            }

            authority = v6->authority;
            if (authority)
            {
              v7->authority = strdup(authority);
              goto LABEL_52;
            }

            server = v6->server;
            if (server)
            {
              v7->server = strdup(server);
              user = v6->user;
              if (user)
              {
                v7->user = strdup(user);
              }

              v7->port = v6->port;
LABEL_52:
              if (!path)
              {
LABEL_54:
                v12 = v7;
                goto LABEL_55;
              }

LABEL_53:
              v7->path = strdup(path);
              goto LABEL_54;
            }

            v22 = v8->authority;
            if (v22)
            {
              v7->authority = strdup(v22);
              goto LABEL_73;
            }

            v24 = v8->server;
            if (v24)
            {
              v7->server = strdup(v24);
            }

            else if (v8->port != -1)
            {
              goto LABEL_73;
            }

            v25 = v8->user;
            if (v25)
            {
              v7->user = strdup(v25);
            }

            v7->port = v8->port;
LABEL_73:
            if (path)
            {
              if (*path == 47)
              {
                goto LABEL_53;
              }

              v28 = strlen(path) + 2;
            }

            else
            {
              v28 = 2;
            }

            v29 = v8->path;
            if (v29)
            {
              v28 += strlen(v29);
            }

            v30 = malloc_type_malloc(v28, 0x100004077774924uLL);
            v7->path = v30;
            if (!v30)
            {
              xmlURIErrMemory("resolving URI against base\n");
              goto LABEL_6;
            }

            *v30 = 0;
            v31 = v8->path;
            if (v31)
            {
              v32 = *v31;
              if (*v31)
              {
                v33 = 0;
                v34 = 0;
                do
                {
                  v35 = v34;
                  for (i = v34 - v33 + 1; ; ++i)
                  {
                    if (!v31[v35])
                    {
                      v32 = v33;
                      goto LABEL_97;
                    }

                    if (v31[v35] == 47)
                    {
                      break;
                    }

                    ++v35;
                  }

                  v34 = v35 + 1;
                  if (v33 <= v35)
                  {
                    v32 = v35 + 1;
                    v37 = v33;
                    do
                    {
                      v7->path[v37] = v8->path[v37];
                      ++v37;
                      --i;
                    }

                    while (i);
                    v31 = v8->path;
                    v33 = v34;
                  }

                  else
                  {
                    v32 = v33;
                  }
                }

                while (v31[v34]);
              }
            }

            else
            {
              v32 = 0;
            }

LABEL_97:
            v7->path[v32] = 0;
            v38 = v6->path;
            if (v38)
            {
              v39 = *v38;
              if (v39)
              {
                if (v32)
                {
                  goto LABEL_100;
                }

                if (v8->server)
                {
                  *v7->path = 47;
                  LOBYTE(v39) = *v6->path;
                  v32 = 1;
                  if (!v39)
                  {
                    goto LABEL_103;
                  }
                }

                else
                {
                  v32 = 0;
                }

LABEL_100:
                v40 = 0;
                do
                {
                  v7->path[v32 + v40] = v39;
                  v41 = &v6->path[v40++];
                  v39 = v41[1];
                }

                while (v39);
                v32 += v40;
              }
            }

LABEL_103:
            v7->path[v32] = 0;
            xmlNormalizeURIPath(v7->path);
            goto LABEL_54;
          }

          if (v8->scheme)
          {
            v11->scheme = strdup(v8->scheme);
          }

          v23 = v8->authority;
          if (v23)
          {
            v7->authority = strdup(v23);
            goto LABEL_108;
          }

          v26 = v8->server;
          if (v26)
          {
            v7->server = strdup(v26);
          }

          else if (v8->port != -1)
          {
            goto LABEL_108;
          }

          v27 = v8->user;
          if (v27)
          {
            v7->user = strdup(v27);
          }

          v7->port = v8->port;
LABEL_108:
          v42 = v8->path;
          if (v42)
          {
            v7->path = strdup(v42);
          }

          query = v6->query_raw;
          if (query)
          {
            goto LABEL_111;
          }

          query = v6->query;
          if (!query)
          {
            query = v8->query_raw;
            if (query)
            {
LABEL_111:
              v44 = 80;
LABEL_114:
              *(&v7->scheme + v44) = strdup(query);
              goto LABEL_115;
            }

            query = v8->query;
            if (!query)
            {
LABEL_115:
              v45 = v6->fragment;
              if (v45)
              {
                v7->fragment = strdup(v45);
              }

              goto LABEL_54;
            }
          }

          v44 = 56;
          goto LABEL_114;
        }

        goto LABEL_21;
      }

      v14 = v8->fragment;
      if (v14)
      {
        free(v14);
        v8->fragment = 0;
      }

      v9 = xmlSaveUri(v8);
      v7 = 0;
LABEL_25:
      xmlFreeURI(v8);
      goto LABEL_26;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = xmlSaveUri(v6);
    goto LABEL_22;
  }

  v7 = 0;
  v9 = 0;
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (v7)
  {
    xmlFreeURI(v7);
  }

  return v9;
}

xmlChar *__cdecl xmlBuildRelativeURI(const xmlChar *URI, const xmlChar *base)
{
  if (URI)
  {
    v2 = URI;
    if (*URI)
    {
      v4 = xmlCreateURI();
      if (v4)
      {
        v5 = v4;
        if (*v2 == 46)
        {
          v4->path = xmlStrdup(v2);
        }

        else if (xmlParse3986URIReference(v4, v2))
        {
          goto LABEL_14;
        }

        if (!base || !*base)
        {
          v6 = xmlStrdup(v2);
LABEL_15:
          v8 = v5;
LABEL_16:
          xmlFreeURI(v8);
          return v6;
        }

        v7 = xmlCreateURI();
        if (v7)
        {
          v8 = v7;
          if (*base == 46)
          {
            v7->path = xmlStrdup(base);
          }

          else if (xmlParse3986URIReference(v7, base))
          {
            v6 = 0;
LABEL_36:
            xmlFreeURI(v5);
            goto LABEL_16;
          }

          if (v5->scheme && (!v8->scheme || xmlStrcmp(v8->scheme, v5->scheme) || xmlStrcmp(v8->server, v5->server)))
          {
            goto LABEL_34;
          }

          if (xmlStrEqual(v8->path, v5->path))
          {
            v10 = "";
LABEL_35:
            v6 = xmlStrdup(v10);
            goto LABEL_36;
          }

          path = v8->path;
          v2 = v5->path;
          if (!path)
          {
LABEL_34:
            v10 = v2;
            goto LABEL_35;
          }

          v12 = v5->path;
          if (!v2)
          {
            v12 = "/";
            v5->path = "/";
            path = v8->path;
          }

          if (*v12 == 46)
          {
            v12 += 2 * (v12[1] == 47);
          }

          v13 = *path;
          if (v13 == 47)
          {
            if (*v12 != 47)
            {
              ++path;
            }
          }

          else if (v13 == 46)
          {
            path += 2 * (path[1] == 47);
          }

          v14 = 0;
          do
          {
            v15 = path[v14];
            v16 = v12[v14++];
            if (v15)
            {
              v17 = v15 == v16;
            }

            else
            {
              v17 = 0;
            }
          }

          while (v17);
          if (v15 == v16)
          {
            v18 = "";
          }

          else
          {
            while (1)
            {
              v20 = v14 - 1;
              if (v14 - 1 < 1)
              {
                break;
              }

              v21 = v12[v14-- - 2];
              v22 = v20;
              if (v21 == 47)
              {
                goto LABEL_53;
              }
            }

            v22 = 0;
LABEL_53:
            v23 = 0;
            v24 = &path[v20 & ~(v20 >> 63)];
            do
            {
              while (1)
              {
                v26 = *v24++;
                v25 = v26;
                if (v26 != 47)
                {
                  break;
                }

                ++v23;
              }
            }

            while (v25);
            v27 = &v12[v22];
            if (v23)
            {
              v28 = xmlStrlen(&v12[v22]);
              if ((v23 & 0x80000000) != 0 || v28 < -1 || (v29 = v28, v23 > (2147483646 - v28) / 3u) || (v30 = (v28 + 1), (v31 = malloc_type_malloc(v30 + 3 * v23, 0x100004077774924uLL)) == 0))
              {
                xmlURIErrMemory("building relative URI\n");
                v6 = 0;
                if (v2)
                {
                  goto LABEL_36;
                }
              }

              else
              {
                v32 = v31;
                v33 = v23 + 1;
                v34 = v31;
                do
                {
                  *v34 = 11822;
                  v34[2] = 47;
                  v34 += 3;
                  --v33;
                }

                while (v33 > 1);
                if (v34 <= v31 || (v29 & 0x80000000) != 0 || *v27 != 47)
                {
                  memcpy(v34, v27, v30);
                  v35 = &v34[v29];
                }

                else
                {
                  memcpy(v34, v27 + 1, v29);
                  v35 = &v34[v29 - 1];
                }

                *v35 = 0;
                v6 = xmlURIEscapeStr(v32, "/;&=+$,");
                free(v32);
                if (v2)
                {
                  goto LABEL_36;
                }
              }

              goto LABEL_70;
            }

            if (*v27)
            {
              xmlStrlen(v27);
              v19 = xmlURIEscapeStr(v27, "/;&=+$,");
LABEL_47:
              v6 = v19;
              if (v2)
              {
                goto LABEL_36;
              }

LABEL_70:
              v5->path = 0;
              goto LABEL_36;
            }

            v18 = "./";
          }

          v19 = xmlStrdup(v18);
          goto LABEL_47;
        }

LABEL_14:
        v6 = 0;
        goto LABEL_15;
      }
    }
  }

  return 0;
}

xmlChar *__cdecl xmlCanonicPath(const xmlChar *path)
{
  if (path)
  {
    v1 = path;
    if (*path == 47 && path[1] == 47 && path[2] != 47)
    {
      v1 = path + 1;
    }

    v2 = xmlParseURI(v1);
    if (v2)
    {
      xmlFreeURI(v2);
    }

    else
    {
      v5 = xmlStrstr(v1, "://");
      if (v5 && (v5 - v1 - 21) >= 0xFFFFFFEC)
      {
        v6 = 0;
        while ((v1[v6] & 0xDFu) - 65 < 0x1A)
        {
          if (((v5 - v1) & 0x7FFFFFFF) == ++v6)
          {
            v7 = xmlURIEscapeStr(v1, ":/?_.#&;=");
            if (!v7)
            {
              break;
            }

            v4 = v7;
            v8 = xmlParseURI(v7);
            if (v8)
            {
              xmlFreeURI(v8);
              return v4;
            }

            free(v4);
            break;
          }
        }
      }
    }

    return xmlStrdup(v1);
  }

  else
  {
    return 0;
  }
}