int xsltAddTemplate(xsltStylesheetPtr style, xsltTemplatePtr cur, const xmlChar *mode, const xmlChar *modeURI)
{
  result = -1;
  if (!style || !cur)
  {
    return result;
  }

  if (cur->next)
  {
    cur->position = cur->next->position + 1;
  }

  name = cur->name;
  if (name)
  {
    namedTemplates = style->namedTemplates;
    if (namedTemplates)
    {
      if (xmlHashLookup2(namedTemplates, name, cur->nameURI))
      {
        v11 = cur->name;
        xsltTransformError(0, style, cur->elem, "xsl:template: error duplicate name '%s'\n");
        goto LABEL_75;
      }

      v12 = style->namedTemplates;
    }

    else
    {
      v12 = xmlHashCreate(10);
      style->namedTemplates = v12;
      if (!v12)
      {
        return -1;
      }
    }

    xmlHashAddEntry2(v12, cur->name, cur->nameURI, cur);
  }

  match = cur->match;
  if (!match)
  {
    if (cur->name)
    {
      return 0;
    }

    xsltTransformError(0, style, cur->elem, "xsl:template: need to specify match or name attribute\n");
LABEL_75:
    ++style->errors;
    return -1;
  }

  priority = cur->priority;
  v15 = xsltCompilePatternInternal(match, style->doc, cur->elem, style, 0, 1);
  if (!v15)
  {
    return -1;
  }

  v22 = v15;
  v23 = 0;
  p_elemMatch = &style->elemMatch;
  v25 = &xsltGenericDebug;
  v26 = &xsltGenericDebugContext;
  while (1)
  {
    v27 = *v22;
    *v22 = 0;
    *(v22 + 5) = cur;
    if (mode)
    {
      *(v22 + 3) = xmlDictLookup(style->dict, mode, -1);
    }

    if (modeURI)
    {
      *(v22 + 4) = xmlDictLookup(style->dict, modeURI, -1);
    }

    if (priority != -12346000.0)
    {
      *(v22 + 2) = priority;
    }

    v28 = *(v22 + 11);
    v29 = *v28;
    if (*v28 > 7)
    {
      break;
    }

    if (v29 <= 2)
    {
      p_rootMatch = &style->rootMatch;
      if (v29 == 1)
      {
        goto LABEL_50;
      }

      if (v29 != 2)
      {
        if (!v29)
        {
          goto LABEL_70;
        }

        goto LABEL_49;
      }

LABEL_40:
      p_attrMatch = p_elemMatch;
      goto LABEL_41;
    }

    p_rootMatch = p_elemMatch;
    if ((v29 - 4) < 3)
    {
      goto LABEL_50;
    }

    p_attrMatch = &style->attrMatch;
    if (v29 != 3)
    {
      p_rootMatch = &style->keyMatch;
      if (v29 != 7)
      {
        goto LABEL_49;
      }

LABEL_50:
      v39 = *p_rootMatch;
      if (*p_rootMatch)
      {
        v40 = *(v22 + 2);
        if (*(v39 + 2) <= v40)
        {
          *v22 = v39;
          *p_rootMatch = v22;
        }

        else
        {
          do
          {
            v41 = v39;
            v39 = *v39;
          }

          while (v39 && *(v39 + 2) > v40);
          *v22 = v39;
          *v41 = v22;
        }
      }

      else
      {
        *p_rootMatch = v22;
        *v22 = 0;
      }

      v23 = p_rootMatch;
      goto LABEL_58;
    }

LABEL_41:
    v32 = v26;
    v33 = v25;
    v34 = *(v28 + 8);
    if (!v34)
    {
      v23 = p_attrMatch;
      v25 = v33;
      v26 = v32;
      p_elemMatch = &style->elemMatch;
      goto LABEL_49;
    }

    templatesHash = style->templatesHash;
    if (templatesHash)
    {
      v36 = xmlHashLookup3(templatesHash, *(v28 + 8), mode, modeURI);
      if (v36)
      {
        v37 = *(v22 + 2);
        if (*(v36 + 2) <= v37)
        {
          *v22 = v36;
          xmlHashUpdateEntry3(style->templatesHash, v34, mode, modeURI, v22, 0);
        }

        else
        {
          do
          {
            v38 = v36;
            v36 = *v36;
          }

          while (v36 && *(v36 + 2) > v37);
          *v22 = v36;
          *v38 = v22;
        }

        goto LABEL_68;
      }

      v45 = style->templatesHash;
    }

    else
    {
      v45 = xmlHashCreate(1024);
      style->templatesHash = v45;
      if (!v45)
      {
        goto LABEL_71;
      }
    }

    xmlHashAddEntry3(v45, v34, mode, modeURI, v22);
LABEL_68:
    v25 = v33;
    v26 = v32;
    p_elemMatch = &style->elemMatch;
LABEL_58:
    v42 = *v25;
    v43 = *v26;
    v44 = *(v22 + 2);
    if (mode)
    {
      v48 = *(v22 + 2);
      v46 = *(v22 + 3);
      v42(v43, "added pattern : '%s' mode '%s' priority %f\n", v16, v17, v18, v19, v20, v21, v44);
    }

    else
    {
      v47 = *(v22 + 2);
      v42(v43, "added pattern : '%s' priority %f\n", v16, v17, v18, v19, v20, v21, v44);
    }

    v22 = v27;
    if (!v27)
    {
      return 0;
    }
  }

  if (v29 <= 10)
  {
    p_rootMatch = p_elemMatch;
    if ((v29 - 8) < 2)
    {
      goto LABEL_50;
    }

    p_attrMatch = &style->piMatch;
    if (v29 != 10)
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  if (v29 <= 12)
  {
    p_rootMatch = &style->commentMatch;
    if (v29 != 11)
    {
      p_rootMatch = &style->textMatch;
    }

    goto LABEL_50;
  }

  if (v29 == 13)
  {
    goto LABEL_40;
  }

  if (v29 != 14)
  {
LABEL_49:
    p_rootMatch = v23;
    if (!v23)
    {
      goto LABEL_70;
    }

    goto LABEL_50;
  }

LABEL_70:
  xsltTransformError(0, style, 0, "xsltAddTemplate: invalid compiled pattern\n");
LABEL_71:
  xsltFreeCompMatch(v22);
  return -1;
}

xsltTemplatePtr xsltGetTemplate(xsltTransformContextPtr ctxt, xmlNodePtr node, xsltStylesheetPtr style)
{
  v3 = 0;
  if (!ctxt || !node)
  {
    return v3;
  }

  v7 = style ? xsltNextImport(style) : ctxt->style;
  v3 = 0;
  if (!v7 || v7 == style)
  {
    return v3;
  }

  v8 = 0;
  name = 0;
  do
  {
    templatesHash = v7->templatesHash;
    if (templatesHash)
    {
      v3 = 0;
      type = node->type;
      if (type > XML_XINCLUDE_END)
      {
        return v3;
      }

      if (((1 << type) & 0x1FFF78) == 0)
      {
        if (((1 << type) & 0x84) != 0)
        {
          goto LABEL_108;
        }

        if (type != XML_ELEMENT_NODE)
        {
          return v3;
        }

        if (*node->name != 32)
        {
LABEL_108:
          name = node->name;
        }
      }
    }

    if (name && (v12 = xmlHashLookup3(templatesHash, name, ctxt->mode, ctxt->modeURI)) != 0)
    {
      v13 = v12;
      while (xsltTestCompMatch(ctxt, v13, node, ctxt->mode, ctxt->modeURI) != 1)
      {
        v13 = *v13;
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      v3 = *(v13 + 40);
      v14 = *(v13 + 8);
    }

    else
    {
LABEL_17:
      v3 = 0;
      v14 = -12346000.0;
    }

    v15 = node->type;
    if (v15 > XML_ENTITY_NODE)
    {
      if (v15 > XML_COMMENT_NODE)
      {
        if (v15 == XML_DOCUMENT_NODE || v15 == XML_HTML_DOCUMENT_NODE)
        {
          rootMatch = v7->rootMatch;
          v19 = linkedOnOrAfterFall2023OSVersions();
          p_parent = &node[1].parent;
          if (v19)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        goto LABEL_50;
      }

      if (v15 == XML_PI_NODE)
      {
        rootMatch = v7->piMatch;
      }

      else
      {
        rootMatch = v7->commentMatch;
      }

LABEL_37:
      v21 = linkedOnOrAfterFall2023OSVersions();
      p_parent = &node->psvi;
      if (v21)
      {
LABEL_40:
        while (rootMatch)
        {
          if (v3)
          {
            v22 = *(rootMatch + 8);
            if (v22 <= v14 && (v22 != v14 || *(*(rootMatch + 40) + 144) <= v3->position))
            {
              break;
            }
          }

          if (xsltTestCompMatch(ctxt, rootMatch, node, ctxt->mode, ctxt->modeURI) == 1)
          {
            v3 = *(rootMatch + 40);
            v14 = *(rootMatch + 8);
            break;
          }

          rootMatch = *rootMatch;
        }

        v15 = node->type;
        goto LABEL_50;
      }

LABEL_38:
      if (*p_parent)
      {
        v8 = 1;
      }

      goto LABEL_40;
    }

    if (v15 - 3 < 2)
    {
      rootMatch = v7->textMatch;
      goto LABEL_37;
    }

    if (v15 == XML_ELEMENT_NODE)
    {
      v20 = 104;
      if (*node->name == 32)
      {
        v20 = 88;
      }

      rootMatch = *(&v7->parent + v20);
      goto LABEL_37;
    }

    if (v15 == XML_ATTRIBUTE_NODE)
    {
      rootMatch = v7->attrMatch;
      v17 = linkedOnOrAfterFall2023OSVersions();
      p_parent = &node->properties;
      if (v17)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

LABEL_50:
    if (v15 > XML_HTML_DOCUMENT_NODE)
    {
      goto LABEL_69;
    }

    v23 = 1 << v15;
    if ((v23 & 0x2208) != 0)
    {
      p_elemMatch = &v7->elemMatch;
      do
      {
        p_elemMatch = *p_elemMatch;
        if (p_elemMatch)
        {
          if (!v3)
          {
            continue;
          }

          v25 = *(p_elemMatch + 8);
          if (v25 > v14 || v25 == v14 && *(*(p_elemMatch + 40) + 144) > v3->position)
          {
            continue;
          }
        }

        goto LABEL_69;
      }

      while (xsltTestCompMatch(ctxt, p_elemMatch, node, ctxt->mode, ctxt->modeURI) != 1);
LABEL_68:
      v3 = *(p_elemMatch + 40);
      v14 = *(p_elemMatch + 8);
      goto LABEL_69;
    }

    if ((v23 & 0x180) == 0)
    {
      goto LABEL_69;
    }

    p_elemMatch = &v7->elemMatch;
    while (1)
    {
      p_elemMatch = *p_elemMatch;
      if (!p_elemMatch)
      {
        break;
      }

      if (v3)
      {
        v26 = *(p_elemMatch + 8);
        if (v26 <= v14 && (v26 != v14 || *(*(p_elemMatch + 40) + 144) <= v3->position))
        {
          break;
        }
      }

      if (xsltTestCompMatch(ctxt, p_elemMatch, node, ctxt->mode, ctxt->modeURI) == 1)
      {
        goto LABEL_68;
      }
    }

    while (1)
    {
      while (1)
      {
LABEL_69:
        if (linkedOnOrAfterFall2023OSVersions())
        {
          v8 = xsltGetSourceNodeFlags(node) & 1;
        }

        if (v8)
        {
          p_keyMatch = &v7->keyMatch;
          while (1)
          {
            p_keyMatch = *p_keyMatch;
            if (!p_keyMatch)
            {
              break;
            }

            if (v3)
            {
              v34 = *(p_keyMatch + 8);
              if (v34 <= v14 && (v34 != v14 || *(*(p_keyMatch + 40) + 144) <= v3->position))
              {
                return v3;
              }
            }

            if (xsltTestCompMatch(ctxt, p_keyMatch, node, ctxt->mode, ctxt->modeURI) == 1)
            {
              v3 = *(p_keyMatch + 40);
              break;
            }
          }

          v8 = 1;
          if (!v3)
          {
            goto LABEL_104;
          }

          return v3;
        }

        if (!ctxt->hasTemplKeyPatterns)
        {
          goto LABEL_93;
        }

        document = ctxt->document;
        if (document)
        {
          if (document->nbKeysComputed >= ctxt->nbKeys)
          {
            goto LABEL_93;
          }
        }

        else
        {
          doc = node->doc;
          if (doc->_private)
          {
            xsltTransformError(ctxt, 0, ctxt->inst, "Internal error in xsltComputeAllKeys(): The context's document info doesn't match the document info of the current result tree.\n");
            v3 = 0;
            ctxt->state = XSLT_STATE_STOPPED;
            return v3;
          }

          v29 = xsltNewDocument(ctxt, doc);
          ctxt->document = v29;
          if (!v29)
          {
            return 0;
          }
        }

        if (xsltInitAllDocKeys(ctxt) == -1)
        {
          return 0;
        }

        if (!linkedOnOrAfterFall2023OSVersions())
        {
          break;
        }

        v8 = 1;
        if ((xsltGetSourceNodeFlags(node) & 1) == 0)
        {
          goto LABEL_93;
        }
      }

      v30 = node->type;
      if (v30 > XML_HTML_DOCUMENT_NODE)
      {
        goto LABEL_92;
      }

      if (((1 << v30) & 0x198) == 0)
      {
        break;
      }

LABEL_84:
      psvi = node->psvi;
LABEL_90:
      v8 = 1;
      if (!psvi)
      {
        goto LABEL_93;
      }
    }

    if (((1 << v30) & 0x2200) != 0)
    {
      p_properties = &node[1].parent;
LABEL_89:
      psvi = *p_properties;
      goto LABEL_90;
    }

    if (v30 == XML_ATTRIBUTE_NODE)
    {
      p_properties = &node->properties;
      goto LABEL_89;
    }

LABEL_92:
    if (v30 == XML_ELEMENT_NODE)
    {
      goto LABEL_84;
    }

LABEL_93:
    v8 = 0;
    if (v3)
    {
      return v3;
    }

LABEL_104:
    Import = xsltNextImport(v7);
    if (!Import)
    {
      break;
    }

    v7 = Import;
  }

  while (Import != style);
  return v3;
}

void xsltFreeTemplateHashes(xsltStylesheetPtr style)
{
  templatesHash = style->templatesHash;
  if (templatesHash)
  {
    xmlHashFree(templatesHash, xsltFreeCompMatchListEntry);
  }

  rootMatch = style->rootMatch;
  if (rootMatch)
  {
    do
    {
      v4 = *rootMatch;
      xsltFreeCompMatch(rootMatch);
      rootMatch = v4;
    }

    while (v4);
  }

  keyMatch = style->keyMatch;
  if (keyMatch)
  {
    do
    {
      v6 = *keyMatch;
      xsltFreeCompMatch(keyMatch);
      keyMatch = v6;
    }

    while (v6);
  }

  elemMatch = style->elemMatch;
  if (elemMatch)
  {
    do
    {
      v8 = *elemMatch;
      xsltFreeCompMatch(elemMatch);
      elemMatch = v8;
    }

    while (v8);
  }

  attrMatch = style->attrMatch;
  if (attrMatch)
  {
    do
    {
      v10 = *attrMatch;
      xsltFreeCompMatch(attrMatch);
      attrMatch = v10;
    }

    while (v10);
  }

  parentMatch = style->parentMatch;
  if (parentMatch)
  {
    do
    {
      v12 = *parentMatch;
      xsltFreeCompMatch(parentMatch);
      parentMatch = v12;
    }

    while (v12);
  }

  textMatch = style->textMatch;
  if (textMatch)
  {
    do
    {
      v14 = *textMatch;
      xsltFreeCompMatch(textMatch);
      textMatch = v14;
    }

    while (v14);
  }

  piMatch = style->piMatch;
  if (piMatch)
  {
    do
    {
      v16 = *piMatch;
      xsltFreeCompMatch(piMatch);
      piMatch = v16;
    }

    while (v16);
  }

  commentMatch = style->commentMatch;
  if (commentMatch)
  {
    do
    {
      v18 = *commentMatch;
      xsltFreeCompMatch(commentMatch);
      commentMatch = v18;
    }

    while (v18);
  }

  namedTemplates = style->namedTemplates;
  if (namedTemplates)
  {

    xmlHashFree(namedTemplates, 0);
  }
}

int *xsltFreeCompMatchListEntry(int *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      xsltFreeCompMatch(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void xsltPatPushState(uint64_t a1, int *a2, int a3, uint64_t a4)
{
  v8 = *(a2 + 1);
  if (!v8 || (v9 = a2[1], v9 <= 0))
  {
    *a2 = 0x400000000;
    v8 = malloc_type_malloc(0x40uLL, 0x1020040D5A9D86FuLL);
    *(a2 + 1) = v8;
    goto LABEL_7;
  }

  if (v9 > *a2)
  {
LABEL_7:
    v10 = *a2;
    v11 = &v8[16 * v10];
    *v11 = a3;
    *a2 = v10 + 1;
    *(v11 + 1) = a4;
    return;
  }

  v8 = malloc_type_realloc(v8, 32 * v9, 0x1020040D5A9D86FuLL);
  if (v8)
  {
    *(a2 + 1) = v8;
    a2[1] *= 2;
    goto LABEL_7;
  }

  xsltGenericError(xsltGenericErrorContext, "xsltPatPushState: memory re-allocation failure.\n");
  *(a1 + 168) = 2;
}

uint64_t xsltTestCompMatchDirect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a3 + 64);
  v9 = 0;
  if (v7)
  {
    if (*(v7 + 8) == 9)
    {
      v8 = *(v7 + 16);
      if (v8)
      {
        if (*v8 == 32)
        {
          v9 = 1;
        }
      }
    }
  }

  v10 = *(a2 + 88);
  v11 = *(a1 + 256);
  v12 = *(v11 + 24 * v10[12]);
  if (v12 && *(v11 + 24 * v10[10] + 16) == v7)
  {
    v24 = 0;
    v23 = *(v11 + 24 * v10[11] + 16);
    v21 = v12;
  }

  else
  {
    v13 = *(a3 + 40);
    v14 = *(a1 + 160);
    v15 = *(v14 + 22);
    v16 = *(v14 + 10);
    *(v14 + 10) = a4;
    *(v14 + 22) = a5;
    v17 = *(a2 + 16);
    v18 = *(v14 + 13);
    v31 = *v14;
    *v14 = v7;
    *(v14 + 1) = a3;
    v19 = xmlXPathEval(v17, v14);
    v20 = *(a1 + 160);
    *v20 = v31;
    *(v20 + 80) = v16;
    *(v20 + 88) = v15;
    *(v20 + 104) = v18;
    if (!v19)
    {
      return 0xFFFFFFFFLL;
    }

    v21 = v19;
    if (v19->type != XPATH_NODESET)
    {
      v25 = 0xFFFFFFFFLL;
      goto LABEL_32;
    }

    if (v13 && (!*(a3 + 64) ? (v22 = 1) : (v22 = v9), (v22 & 1) == 0))
    {
      if (v12)
      {
        xmlXPathFreeObject(v12);
      }

      v24 = 0;
      v23 = 0;
      v26 = *(a1 + 256);
      *(v26 + 24 * v10[12]) = v21;
      *(v26 + 24 * v10[10] + 16) = v7;
      *(*(a1 + 256) + 24 * v10[11] + 16) = 0;
      *(*(a1 + 256) + 24 * v10[12] + 8) = xmlXPathFreeObjectWrapper;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }
  }

  nodesetval = v21->nodesetval;
  if (!nodesetval || (v28 = *nodesetval, v28 <= 0))
  {
    v25 = 0;
    if ((v24 & 1) == 0)
    {
      return v25;
    }

    goto LABEL_32;
  }

  if (v23)
  {
LABEL_29:
    v25 = 0;
    if (!v24)
    {
      return v25;
    }

    goto LABEL_32;
  }

  v29 = *(nodesetval + 1);
  while (*v29 != a3)
  {
    ++v29;
    if (!--v28)
    {
      goto LABEL_29;
    }
  }

  v25 = 1;
  if (v24)
  {
LABEL_32:
    xmlXPathFreeObject(v21);
  }

  return v25;
}

uint64_t xsltTestStepMatch(xsltTransformContext *a1, xmlNodePtr node, _DWORD *a3)
{
  v5 = *a3;
  if (*a3 <= 7)
  {
    if (v5 <= 2)
    {
      if (v5 == 1)
      {
        HIDWORD(v15) = node->type - 1;
        LODWORD(v15) = HIDWORD(v15);
        v14 = v15 >> 2;
        v16 = (v14 - 2) < 2 || v14 == 5;
        return v16 || !v14 && *node->name == 32;
      }

      if (v5 == 2)
      {
        if (node->type == XML_ELEMENT_NODE)
        {
          v11 = *(a3 + 1);
          if (!v11)
          {
            return 1;
          }

          name = node->name;
          if (*v11 == *name)
          {
            result = xmlStrEqual(v11, name);
            if (!result)
            {
              return result;
            }

            ns = node->ns;
            if (ns)
            {
              href = ns->href;
              if (!href)
              {
                return 1;
              }

              result = *(a3 + 2);
              if (!result)
              {
                return result;
              }

              goto LABEL_59;
            }

            if (!*(a3 + 2))
            {
              return 1;
            }
          }
        }

        return 0;
      }
    }

    else
    {
      switch(v5)
      {
        case 3:
          if (node->type == XML_ATTRIBUTE_NODE)
          {
            v17 = *(a3 + 1);
            if (v17)
            {
              v18 = node->name;
              if (*v17 != *v18)
              {
                return 0;
              }

              result = xmlStrEqual(v17, v18);
              if (!result)
              {
                return result;
              }
            }

            v19 = node->ns;
            result = *(a3 + 2);
            if (v19)
            {
              if (!result)
              {
                return 1;
              }

              href = v19->href;
              goto LABEL_59;
            }

            if (!result)
            {
              return 1;
            }
          }

          return 0;
        case 6:
          if (node->type == XML_ELEMENT_NODE)
          {
            result = xmlGetID(node->doc, *(a3 + 1));
            if (!result)
            {
              return result;
            }

            if (*(result + 40) == node)
            {
              return 1;
            }
          }

          return 0;
        case 7:
          result = xsltGetKey(a1, *(a3 + 1), *(a3 + 3), *(a3 + 2));
          if (!result)
          {
            return result;
          }

          v8 = *result;
          if (v8 >= 1)
          {
            for (i = *(result + 8); *i != node; ++i)
            {
              result = 0;
              if (!--v8)
              {
                return result;
              }
            }

            return 1;
          }

          return 0;
      }
    }

LABEL_63:
    xsltTransformError(a1, 0, node, "xsltTestStepMatch: unexpected step op %d\n", *a3);
    return 0xFFFFFFFFLL;
  }

  if (v5 > 10)
  {
    switch(v5)
    {
      case 11:
        return node->type == XML_COMMENT_NODE;
      case 12:
        return node->type - 3 < 2;
      case 13:
        v10 = node->type - 1;
        if (v10 < 8)
        {
          return dword_2999BD7D0[v10];
        }

        return 0;
    }

    goto LABEL_63;
  }

  if (v5 != 8)
  {
    if (v5 == 9)
    {
      if (node->type == XML_ELEMENT_NODE)
      {
        return 1;
      }
    }

    else if (node->type == XML_PI_NODE)
    {
      result = *(a3 + 1);
      if (!result)
      {
        return 1;
      }

      href = node->name;
LABEL_59:
      result = xmlStrEqual(result, href);
      if (!result)
      {
        return result;
      }

      return 1;
    }

    return 0;
  }

  if (node->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  v20 = node->ns;
  if (!v20)
  {
    return !*(a3 + 1);
  }

  href = v20->href;
  if (!href)
  {
    return 1;
  }

  result = *(a3 + 1);
  if (result)
  {
    goto LABEL_59;
  }

  return result;
}

void xsltCompileRelativePathPattern(uint64_t a1, xmlChar *a2, int a3)
{
  xsltCompileStepPattern(a1, a2, a3);
  if (*(a1 + 48))
  {
    return;
  }

  for (i = *(a1 + 16); ; *(a1 + 16) = i)
  {
    v6 = *i;
    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      break;
    }

    ++i;
  }

  LOBYTE(v8) = *i;
  while (v8 == 47)
  {
    v9 = *(a1 + 56);
    if (i[1] != 47)
    {
      if (xsltCompMatchAdd(a1, v9, 4, 0, 0, a3))
      {
        return;
      }

      v11 = *(a1 + 16);
      if (*v11)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v12 = *v11;
        v13 = v12 > 0x20;
        v14 = (1 << v12) & 0x100002600;
        if (v13 || v14 == 0)
        {
          goto LABEL_31;
        }

LABEL_24:
        *(a1 + 16) = ++v11;
      }
    }

    if (xsltCompMatchAdd(a1, v9, 5, 0, 0, a3))
    {
      return;
    }

    v10 = *(a1 + 16);
    if (*v10)
    {
      *(a1 + 16) = v10 + 1;
      if (v10[1])
      {
        v10 += 2;
        goto LABEL_30;
      }

      ++v10;
    }

    while (1)
    {
      v16 = *v10;
      v13 = v16 > 0x20;
      v17 = (1 << v16) & 0x100002600;
      if (v13 || v17 == 0)
      {
        break;
      }

      ++v10;
LABEL_30:
      *(a1 + 16) = v10;
    }

LABEL_31:
    xsltCompileStepPattern(a1, 0, a3);
    if (*(a1 + 48))
    {
      return;
    }

    for (i = *(a1 + 16); ; *(a1 + 16) = i)
    {
      v8 = *i;
      if (v8 > 0x20 || ((1 << v8) & 0x100002600) == 0)
      {
        break;
      }

      ++i;
    }
  }

  if (v8 && v8 != 124)
  {
    *(a1 + 48) = 1;
  }
}

uint64_t xsltCompMatchAdd(uint64_t a1, uint64_t a2, int a3, xmlChar *a4, void *a5, int a6)
{
  v12 = *(a2 + 60);
  v13 = *(a2 + 64);
  v14 = *(a2 + 88);
  if (v12 < v13)
  {
LABEL_4:
    v15 = &v14[56 * v12];
    *v15 = a3;
    *(v15 + 1) = a4;
    *(v15 + 2) = a5;
    *(v15 + 3) = 0;
    *(v15 + 4) = 0;
    v16 = *(a1 + 8);
    if (v16)
    {
      *(*(a2 + 88) + 56 * *(a2 + 60) + 40) = xsltAllocateExtraCtxt(v16);
      *(*(a2 + 88) + 56 * *(a2 + 60) + 44) = xsltAllocateExtraCtxt(*(a1 + 8));
      ExtraCtxt = xsltAllocateExtraCtxt(*(a1 + 8));
    }

    else
    {
      *(*(a2 + 88) + 56 * *(a2 + 60) + 40) = xsltAllocateExtra(*a1);
      *(*(a2 + 88) + 56 * *(a2 + 60) + 44) = xsltAllocateExtra(*a1);
      ExtraCtxt = xsltAllocateExtra(*a1);
    }

    *(*(a2 + 88) + 56 * *(a2 + 60) + 48) = ExtraCtxt;
    if (a3 == 14)
    {
      v18 = xsltXPathCompileFlags(*a1, a4, 2 * (a6 != 0));
      *(*(a2 + 88) + 56 * *(a2 + 60) + 32) = v18;
      if (!v18)
      {
        xsltTransformError(0, *a1, *(a1 + 40), "Failed to compile predicate\n");
        if (*a1)
        {
          ++*(*a1 + 292);
        }
      }
    }

    result = 0;
    ++*(a2 + 60);
    return result;
  }

  v14 = malloc_type_realloc(v14, 112 * v13, 0x1030040C2A3A036uLL);
  if (v14)
  {
    v12 = *(a2 + 60);
    *(a2 + 64) *= 2;
    *(a2 + 88) = v14;
    goto LABEL_4;
  }

  xsltGenericError(xsltGenericErrorContext, "xsltCompMatchAdd: memory re-allocation failure.\n");
  if (*a1)
  {
    ++*(*a1 + 292);
  }

  if (a4)
  {
    free(a4);
  }

  if (a5)
  {
    free(a5);
  }

  return 0xFFFFFFFFLL;
}

xmlChar *xsltScanNCName(uint64_t a1)
{
  len = 0;
  v2 = *(a1 + 16);
  v3 = v2;
  while (1)
  {
    v4 = *v3;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    *(a1 + 16) = ++v3;
    ++v2;
  }

  v8 = xmlStringCurrentChar(0, v3, &len);
  v9 = v8;
  if (v8 > 255)
  {
    if (xmlCharInRange(v8, MEMORY[0x29EDC9798]) || v9 == 12295 || (v9 - 40870) > 0xFFFFAE59 || (v9 - 12330) >= 0xFFFFFFF7)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((v8 - 192) >= 0x17 && (v8 & 0xFFFFFFDF) - 65 >= 0x1A && v8 != 95 && v8 <= 247 && (v8 - 216) >= 0x1F)
  {
    return 0;
  }

LABEL_15:
  v10 = MEMORY[0x29EDC9798];
  for (i = v3; ; v9 = xmlStringCurrentChar(0, i, &len))
  {
    if (v9 > 255)
    {
      if (xmlCharInRange(v9, v10))
      {
        v12 = 1;
      }

      else
      {
        v12 = v9 == 12295;
      }

      v14 = !v12 && (v9 - 19968) >= 0x51A6 && (v9 - 12321) >= 9;
      if (!v14 || xmlCharInRange(v9, MEMORY[0x29EDC97A8]))
      {
        goto LABEL_37;
      }
    }

    else if ((v9 - 192) < 0x17 || (v9 & 0xFFFFFFDF) - 65 < 0x1A || (v9 - 48) < 0xA || v9 > 247 || (v9 - 216) < 0x1F)
    {
      goto LABEL_37;
    }

    if ((v9 - 45) <= 0x32 && ((1 << (v9 - 45)) & 0x4000000000003) != 0)
    {
      goto LABEL_37;
    }

    if (v9 >= 256)
    {
      break;
    }

    if (v9 != 183)
    {
      goto LABEL_43;
    }

LABEL_37:
    i += len;
  }

  if (xmlCharInRange(v9, MEMORY[0x29EDC97A0]) || xmlCharInRange(v9, MEMORY[0x29EDC97B0]))
  {
    goto LABEL_37;
  }

LABEL_43:
  if (i - v2 >= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = i - v2;
  }

  result = xmlStrndup(v3, v15);
  *(a1 + 16) = i;
  return result;
}

void xsltCompileIdKeyPattern(uint64_t a1, xmlChar *str1, int a3, int a4, int a5)
{
  if (**(a1 + 16) != 40)
  {
    xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern :(expected\n");
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_12:
    if (xmlStrEqual(str1, "processing-instruction"))
    {
      i = *(a1 + 16);
      if (*i)
      {
        goto LABEL_80;
      }

      while (1)
      {
        v41 = *i;
        if (v41 > 0x29)
        {
          break;
        }

        if (((1 << v41) & 0x100002600) == 0)
        {
          if (v41 == 41)
          {
            v20 = 0;
LABEL_85:
            *(a1 + 16) = i + 1;
            v23 = *(a1 + 56);
            v24 = a1;
            v25 = 10;
LABEL_49:
            v27 = v20;
            goto LABEL_50;
          }

          break;
        }

LABEL_80:
        *(a1 + 16) = ++i;
      }

      v20 = xsltScanLiteral(a1);
      if (*(a1 + 48))
      {
        goto LABEL_45;
      }

      for (i = *(a1 + 16); ; *(a1 + 16) = i)
      {
        v42 = *i;
        if (v42 > 0x29)
        {
          break;
        }

        if (((1 << v42) & 0x100002600) == 0)
        {
          if (v42 == 41)
          {
            goto LABEL_85;
          }

          break;
        }

        ++i;
      }

      xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern :) expected\n");
      *(a1 + 48) = 1;
      goto LABEL_46;
    }

    if (xmlStrEqual(str1, "text"))
    {
      v12 = *(a1 + 16);
      if (*v12)
      {
        goto LABEL_93;
      }

      while (1)
      {
        v43 = *v12;
        if (v43 > 0x29)
        {
          break;
        }

        if (((1 << v43) & 0x100002600) == 0)
        {
          if (v43 != 41)
          {
            break;
          }

          *(a1 + 16) = v12 + 1;
          v23 = *(a1 + 56);
          v24 = a1;
          v25 = 12;
          goto LABEL_104;
        }

LABEL_93:
        *(a1 + 16) = ++v12;
      }
    }

    else if (xmlStrEqual(str1, "comment"))
    {
      v13 = *(a1 + 16);
      if (*v13)
      {
        goto LABEL_99;
      }

      while (1)
      {
        v44 = *v13;
        if (v44 > 0x29)
        {
          break;
        }

        if (((1 << v44) & 0x100002600) == 0)
        {
          if (v44 != 41)
          {
            break;
          }

          *(a1 + 16) = v13 + 1;
          v23 = *(a1 + 56);
          v24 = a1;
          v25 = 11;
          goto LABEL_104;
        }

LABEL_99:
        *(a1 + 16) = ++v13;
      }
    }

    else
    {
      if (!xmlStrEqual(str1, "node"))
      {
        if (a3)
        {
          xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern : expecting 'key' or 'id' or node type\n");
        }

        else
        {
          xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern : node type\n");
        }

        goto LABEL_11;
      }

      v15 = *(a1 + 16);
      if (*v15)
      {
        goto LABEL_105;
      }

      while (1)
      {
        v45 = *v15;
        if (v45 > 0x29)
        {
          break;
        }

        if (((1 << v45) & 0x100002600) == 0)
        {
          if (v45 != 41)
          {
            break;
          }

          *(a1 + 16) = v15 + 1;
          v23 = *(a1 + 56);
          v24 = a1;
          if (a5 == 2)
          {
            v25 = 3;
          }

          else
          {
            v25 = 13;
          }

LABEL_104:
          v27 = 0;
LABEL_50:
          v28 = 0;
LABEL_51:

          xsltCompMatchAdd(v24, v23, v25, v27, v28, a4);
          return;
        }

LABEL_105:
        *(a1 + 16) = ++v15;
      }
    }

    xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern :) expected\n");
LABEL_11:
    *(a1 + 48) = 1;
    return;
  }

  if (!xmlStrEqual(str1, "id"))
  {
    if (xmlStrEqual(str1, "key"))
    {
      if (!a5)
      {
        v14 = *(a1 + 16);
        if (*v14)
        {
          goto LABEL_54;
        }

        while (1)
        {
          v29 = *v14;
          v17 = v29 > 0x20;
          v30 = (1 << v29) & 0x100002600;
          if (v17 || v30 == 0)
          {
            break;
          }

LABEL_54:
          *(a1 + 16) = ++v14;
        }

        v20 = xsltScanLiteral(a1);
        if (!*(a1 + 48))
        {
          for (j = (*(a1 + 16) + 1); ; ++j)
          {
            v33 = *(j - 1);
            if (v33 > 0x2C)
            {
              goto LABEL_76;
            }

            if (((1 << v33) & 0x100002600) == 0)
            {
              break;
            }

            *(a1 + 16) = j;
          }

          if (v33 != 44)
          {
LABEL_76:
            xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern : , expected\n");
            goto LABEL_43;
          }

          do
          {
            *(a1 + 16) = j;
            v34 = *j++;
            v35 = (1 << v34) & 0x100002600;
          }

          while (v34 <= 0x20 && v35 != 0);
          v37 = xsltScanLiteral(a1);
          if (!*(a1 + 48))
          {
            v38 = v37;
            for (k = *(a1 + 16) + 1; ; ++k)
            {
              v40 = *(k - 1);
              if (v40 > 0x29)
              {
                break;
              }

              if (((1 << v40) & 0x100002600) == 0)
              {
                if (v40 == 41)
                {
                  *(a1 + 16) = k;
                  v23 = *(a1 + 56);
                  v24 = a1;
                  v25 = 7;
                  v27 = v20;
                  v28 = v38;
                  goto LABEL_51;
                }

                break;
              }

              *(a1 + 16) = k;
            }

            xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern :) expected\n");
            free(v20);
            v26 = v38;
LABEL_44:
            free(v26);
            goto LABEL_11;
          }
        }

        goto LABEL_45;
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a5)
  {
LABEL_10:
    xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern : NodeTest expected\n");
    goto LABEL_11;
  }

  v10 = *(a1 + 16);
  if (*v10)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v16 = *v10;
    v17 = v16 > 0x20;
    v18 = (1 << v16) & 0x100002600;
    if (v17 || v18 == 0)
    {
      break;
    }

LABEL_29:
    *(a1 + 16) = ++v10;
  }

  v20 = xsltScanLiteral(a1);
  if (!*(a1 + 48))
  {
    for (m = *(a1 + 16) + 1; ; ++m)
    {
      v22 = *(m - 1);
      if (v22 > 0x29)
      {
        break;
      }

      if (((1 << v22) & 0x100002600) == 0)
      {
        if (v22 == 41)
        {
          *(a1 + 16) = m;
          v23 = *(a1 + 56);
          v24 = a1;
          v25 = 6;
          goto LABEL_49;
        }

        break;
      }

      *(a1 + 16) = m;
    }

    xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern :) expected\n");
LABEL_43:
    v26 = v20;
    goto LABEL_44;
  }

LABEL_45:
  xsltTransformError(0, 0, 0, "xsltCompileIdKeyPattern : Literal expected\n");
LABEL_46:

  free(v20);
}

void xsltCompileStepPattern(uint64_t a1, xmlChar *str1, int a3)
{
  v4 = str1;
  name = str1;
  for (i = *(a1 + 16) + 1; ; ++i)
  {
    v7 = *(i - 1);
    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

  v9 = 0;
  if (!str1 && v7 == 64)
  {
    *(a1 + 16) = i;
    v9 = 2;
  }

  if (str1)
  {
    goto LABEL_27;
  }

LABEL_26:
  v4 = xsltScanNCName(a1);
  name = v4;
  if (!v4)
  {
    v43 = *(a1 + 16);
    if (*v43 != 42)
    {
      xsltTransformError(0, 0, 0, "xsltCompileStepPattern : Name expected\n");
      goto LABEL_106;
    }

    *(a1 + 16) = v43 + 1;
    if (v9 == 2)
    {
      v44 = 3;
    }

    else
    {
      v44 = 9;
    }

    if (!xsltCompMatchAdd(a1, *(a1 + 56), v44, 0, 0, a3))
    {
      goto LABEL_50;
    }

    v18 = 0;
LABEL_42:
    v23 = 0;
    goto LABEL_43;
  }

  while (1)
  {
LABEL_27:
    for (j = *(a1 + 16); ; *(a1 + 16) = j)
    {
      v16 = *j++;
      if (v16 > 0x3A)
      {
        goto LABEL_34;
      }

      if (((1 << v16) & 0x100002600) == 0)
      {
        break;
      }
    }

    if (v16 == 40)
    {
      xsltCompileIdKeyPattern(a1, v4, 0, a3, v9);
      free(v4);
      name = 0;
      if (*(a1 + 48))
      {
        return;
      }

      goto LABEL_50;
    }

    if (v16 != 58)
    {
LABEL_34:
      QNameURI = xsltGetQNameURI(*(a1 + 40), &name);
      if (!name)
      {
LABEL_93:
        *(a1 + 48) = 1;
        return;
      }

      if (QNameURI)
      {
        v18 = xmlStrdup(QNameURI);
      }

      else
      {
        v18 = 0;
      }

      v19 = *(a1 + 56);
      v20 = name;
      v21 = a1;
      if (v9 == 2)
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

LABEL_41:
      if (!xsltCompMatchAdd(v21, v19, v22, v20, v18, a3))
      {
        name = 0;
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    *(a1 + 16) = j;
    if (*j != 58)
    {
      break;
    }

    if (v9)
    {
      xsltTransformError(0, 0, 0, "xsltCompileStepPattern : NodeTest expected\n");
      goto LABEL_106;
    }

    *(a1 + 16) = j + 1;
    if (xmlStrEqual(v4, "child"))
    {
      v9 = 1;
    }

    else
    {
      if (!xmlStrEqual(v4, "attribute"))
      {
        xsltTransformError(0, 0, 0, "xsltCompileStepPattern : 'child' or 'attribute' expected\n");
LABEL_106:
        v18 = 0;
LABEL_107:
        v23 = 0;
        *(a1 + 48) = 1;
        goto LABEL_43;
      }

      v9 = 2;
    }

    free(v4);
    for (k = *(a1 + 16); ; *(a1 + 16) = k)
    {
      v11 = *k++;
      v12 = v11 > 0x20;
      v13 = (1 << v11) & 0x100002600;
      if (v12 || v13 == 0)
      {
        break;
      }
    }

    v4 = xsltScanNCName(a1);
    name = v4;
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  v45 = xsltScanNCName(a1);
  name = v45;
  v46 = xmlSearchNs(*(a1 + 32), *(a1 + 40), v4);
  if (!v46)
  {
    xsltTransformError(0, 0, 0, "xsltCompileStepPattern : no namespace bound to prefix %s\n", v4);
    free(v4);
    goto LABEL_106;
  }

  v18 = xmlStrdup(v46->href);
  free(v4);
  if (v45)
  {
    v19 = *(a1 + 56);
    v21 = a1;
    if (v9 == 2)
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    v20 = v45;
    goto LABEL_41;
  }

  v47 = *(a1 + 16);
  if (*v47 != 42)
  {
    xsltTransformError(0, 0, 0, "xsltCompileStepPattern : Name expected\n");
    goto LABEL_107;
  }

  *(a1 + 16) = v47 + 1;
  if (v9 == 2)
  {
    v48 = 3;
    v49 = 0;
    v50 = v18;
  }

  else
  {
    v48 = 8;
    v49 = v18;
    v50 = 0;
  }

  if (xsltCompMatchAdd(a1, *(a1 + 56), v48, v49, v50, a3))
  {
    goto LABEL_42;
  }

LABEL_50:
  for (m = *(a1 + 16); ; *(a1 + 16) = m)
  {
    v25 = *m;
    if (v25 > 0x20 || ((1 << v25) & 0x100002600) == 0)
    {
      break;
    }

    ++m;
  }

  if (v25 != 91)
  {
    return;
  }

LABEL_57:
  v27 = m + 1;
  v28 = 1;
  v29 = v27;
  while (2)
  {
    *(a1 + 16) = v29;
LABEL_59:
    v30 = *v29;
    if (v30 <= 0x26)
    {
      if (v30 == 34)
      {
        v31 = (v29 + 1);
        do
        {
          *(a1 + 16) = v31;
          v33 = *v31++;
          v30 = v33;
        }

        while (v33 && v30 != 34);
LABEL_69:
        v29 = v31 - 1;
      }

      else if (!*v29)
      {
        xsltTransformError(0, 0, 0, "xsltCompileStepPattern : ']' expected\n");
        goto LABEL_93;
      }

      goto LABEL_70;
    }

    if (v30 == 39)
    {
      v31 = (v29 + 1);
      do
      {
        *(a1 + 16) = v31;
        v32 = *v31++;
        v30 = v32;
      }

      while (v32 && v30 != 39);
      goto LABEL_69;
    }

    if (v30 == 91)
    {
      ++v28;
LABEL_80:
      ++v29;
      continue;
    }

    break;
  }

  if (v30 != 93)
  {
LABEL_70:
    if (v30)
    {
      goto LABEL_80;
    }

    goto LABEL_59;
  }

  if (--v28)
  {
    goto LABEL_80;
  }

  if (v29 - v27 >= 0x7FFFFFFF)
  {
    v34 = 0x7FFFFFFF;
  }

  else
  {
    v34 = v29 - v27;
  }

  v23 = xmlStrndup(v27, v34);
  if (!xsltCompMatchAdd(a1, *(a1 + 56), 14, v23, 0, a3))
  {
    v35 = *(a1 + 56);
    v36 = *(v35 + 60);
    if (v36 >= 2)
    {
      v37 = *(v35 + 88);
      v38 = v37 + 56 * (v36 - 2);
      v39 = *(v38 + 8);
      v40 = v37 + 56 * (v36 - 1);
      *(v38 + 8) = *(v40 + 8);
      *(v40 + 8) = v39;
      LODWORD(v37) = *v38;
      *v38 = *v40;
      *v40 = v37;
      v41 = *(v38 + 24);
      *(v38 + 24) = *(v40 + 24);
      *(v40 + 24) = v41;
      *&v41 = *(v38 + 40);
      *(v38 + 40) = *(v40 + 40);
      *(v40 + 40) = v41;
      LODWORD(v37) = *(v38 + 48);
      *(v38 + 48) = *(v40 + 48);
      *(v40 + 48) = v37;
    }

    m = *(a1 + 16);
    if (*m)
    {
      goto LABEL_90;
    }

    while (1)
    {
      v42 = *m;
      if (v42 > 0x20 || ((1 << v42) & 0x100002600) == 0)
      {
        if (v42 != 91)
        {
          return;
        }

        goto LABEL_57;
      }

LABEL_90:
      *(a1 + 16) = ++m;
    }
  }

  v18 = 0;
LABEL_43:
  if (name)
  {
    free(name);
  }

  if (v18)
  {
    free(v18);
  }

  if (v23)
  {
    free(v23);
  }
}

xmlChar *xsltScanLiteral(uint64_t a1)
{
  len = 0;
  for (i = (*(a1 + 16) + 1); ; ++i)
  {
    v3 = *(i - 1);
    if (v3 > 0x27)
    {
      goto LABEL_33;
    }

    if (((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    *(a1 + 16) = i;
  }

  if (v3 != 34)
  {
    if (v3 == 39)
    {
      *(a1 + 16) = i;
      v4 = xmlStringCurrentChar(0, i, &len);
      for (j = i; ; v4 = xmlStringCurrentChar(0, j, &len))
      {
        if (v4 > 255)
        {
          if (v4 >> 11 >= 0x1B && (v4 - 65534) <= 0xFFFFE001 && (v4 - 1114112) < 0xFFF00000)
          {
            goto LABEL_31;
          }
        }

        else if (v4 <= 31)
        {
          if (v4 > 0xD || ((1 << v4) & 0x2600) == 0)
          {
            break;
          }
        }

        else if (v4 == 39)
        {
          goto LABEL_34;
        }

        j += len;
      }
    }

LABEL_33:
    result = 0;
    *(a1 + 48) = 1;
    return result;
  }

  *(a1 + 16) = i;
  v4 = xmlStringCurrentChar(0, i, &len);
  j = i;
  while (v4 <= 255)
  {
    if (v4 <= 31)
    {
      if (v4 > 0xD || ((1 << v4) & 0x2600) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (v4 == 34)
    {
      goto LABEL_34;
    }

LABEL_30:
    j += len;
    v4 = xmlStringCurrentChar(0, j, &len);
  }

  if (v4 >> 11 < 0x1B || (v4 - 65534) > 0xFFFFE001 || (v4 - 1114112) >= 0xFFF00000)
  {
    goto LABEL_30;
  }

LABEL_31:
  if ((v4 - 57344) >> 1 >= 0xFFF && (v4 - 0x10000) >= 0x100000)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (j - i >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = j - i;
  }

  result = xmlStrndup(i, v7);
  *(a1 + 16) = &j[len];
  return result;
}

xsltElemPreCompPtr xsltDocumentComp(xsltStylesheetPtr style, xmlNodePtr inst, xsltTransformFunction function)
{
  v5 = xsltNewStylePreComp(style, 17);
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v5->docList = inst;
  LODWORD(v5->method) = 0;
  if (xmlStrEqual(inst->name, "output"))
  {
    v7 = "file";
LABEL_4:
    v8 = xsltEvalStaticAttrValueTemplate(style, inst, v7, 0, &v6->version);
    goto LABEL_7;
  }

  if (!xmlStrEqual(inst->name, "write") && xmlStrEqual(inst->name, "document"))
  {
    ns = inst->ns;
    if (ns)
    {
      if (xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
      {
        LODWORD(v6->method) = 1;
      }

      else if (!xmlStrEqual(inst->ns->href, "http://exslt.org/common"))
      {
        xmlStrEqual(inst->ns->href, "http://www.jclark.com/xt");
      }
    }

    v7 = "href";
    goto LABEL_4;
  }

  v8 = 0;
LABEL_7:
  if (LODWORD(v6->version))
  {
    v6->methodURI = v8;
  }

  return v6;
}

xsltStylesheet *xsltNewStylePreComp(xsltStylesheet *result, int a2)
{
  if (result)
  {
    v3 = result;
    result = malloc_type_malloc(0x148uLL, 0x10F004019ACD5E5uLL);
    if (result)
    {
      result->_private = 0;
      *&result->warnings = 0u;
      *&result->exclPrefixTab = 0u;
      *&result->doctypeSystem = 0u;
      *&result->mediaType = 0u;
      *&result->omitXmlDeclaration = 0u;
      *&result->standalone = 0u;
      *&result->method = 0u;
      *&result->version = 0u;
      *&result->attributeSets = 0u;
      *&result->nsDefs = 0u;
      *&result->textMatch = 0u;
      *&result->commentMatch = 0u;
      *&result->keyMatch = 0u;
      *&result->attrMatch = 0u;
      *&result->variables = 0u;
      *&result->templatesHash = 0u;
      *&result->doc = 0u;
      *&result->stripAll = 0u;
      *&result->parent = 0u;
      *&result->imports = 0u;
      LODWORD(result->next) = a2;
      v4 = xsltCopy;
      switch(a2)
      {
        case 2:
          v5 = xsltSort;
          goto LABEL_21;
        case 3:
          v5 = xsltText;
          goto LABEL_21;
        case 4:
          v5 = xsltElement;
          goto LABEL_21;
        case 5:
          v5 = xsltAttribute;
          goto LABEL_21;
        case 6:
          v5 = xsltComment;
          goto LABEL_21;
        case 7:
          v5 = xsltProcessingInstruction;
          goto LABEL_21;
        case 8:
          v5 = xsltCopyOf;
          goto LABEL_21;
        case 9:
          v5 = xsltValueOf;
          goto LABEL_21;
        case 10:
          v5 = xsltNumber;
          goto LABEL_21;
        case 11:
          v5 = xsltApplyImports;
          goto LABEL_21;
        case 12:
          v5 = xsltCallTemplate;
          goto LABEL_21;
        case 13:
          v5 = xsltApplyTemplates;
          goto LABEL_21;
        case 14:
          v5 = xsltChoose;
          goto LABEL_21;
        case 15:
          v5 = xsltIf;
          goto LABEL_21;
        case 16:
          v5 = xsltForEach;
          goto LABEL_21;
        case 17:
          v5 = xsltDocumentElem;
LABEL_21:
          v4 = v5;
          goto LABEL_22;
        case 18:
        case 19:
        case 20:
        case 21:
          goto LABEL_23;
        default:
LABEL_22:
          result->imports = v4;
LABEL_23:
          result->parent = v3->preComps;
          v3->preComps = result;
          break;
      }
    }

    else
    {
      xsltTransformError(0, v3, 0, "xsltNewStylePreComp : malloc failed\n");
      result = 0;
      ++v3->errors;
    }
  }

  return result;
}

void xsltFreeStylePreComps(xsltStylesheetPtr style)
{
  if (style)
  {
    preComps = style->preComps;
    if (preComps)
    {
      do
      {
        next = preComps->next;
        if (preComps->type == XSLT_FUNC_EXTENSION)
        {
          (preComps->free)(preComps);
        }

        else
        {
          v3 = preComps[2].next;
          if (v3)
          {
            xsltFreeLocale(v3);
          }

          inst = preComps[7].inst;
          if (inst)
          {
            xmlXPathFreeCompExpr(inst);
          }

          v5 = *&preComps[7].type;
          if (v5)
          {
            xsltFreeCompMatchList(v5);
          }

          func = preComps[7].func;
          if (func)
          {
            xsltFreeCompMatchList(func);
          }

          free = preComps[7].free;
          if (free)
          {
            ::free(free);
          }

          ::free(preComps);
        }

        preComps = next;
      }

      while (next);
    }
  }
}

void xsltStylePreCompute(xsltStylesheetPtr style, xmlNodePtr inst)
{
  if (!inst || inst->type != XML_ELEMENT_NODE || inst->psvi)
  {
    return;
  }

  ns = inst->ns;
  if (ns && xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
  {
    if (xmlStrEqual(inst->name, "apply-templates"))
    {
      xsltCheckInstructionElement(style, inst);
      if (style)
      {
        if (inst->type == XML_ELEMENT_NODE)
        {
          v5 = xsltNewStylePreComp(style, 13);
          if (v5)
          {
            v6 = v5;
            inst->psvi = v5;
            v5->docList = inst;
            xsltGetQNameProperty(style, inst, "mode", 0, 0, &v5->attributeSets, &v5->nsAliases);
            CNsProp = xsltGetCNsProp(style, inst, "select", "http://www.w3.org/1999/XSL/Transform");
            v6->keys = CNsProp;
            if (CNsProp)
            {
              v8 = xsltXPathCompile(style, CNsProp);
              v6->exclPrefixTab = v8;
              if (!v8)
              {
                xsltTransformError(0, style, inst, "XSLT-apply-templates: could not compile select expression '%s'\n", v6->keys);
                ++style->errors;
              }
            }
          }
        }
      }

      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "with-param"))
    {
      xsltCheckParentElement(style, inst, "apply-templates", "call-template");
      xsltWithParamComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "value-of"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltValueOfComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "copy"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltCopyComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "copy-of"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltCopyOfComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "if"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltIfComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "when"))
    {
      xsltCheckParentElement(style, inst, "choose", 0);
      xsltWhenComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "choose"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltChooseComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "for-each"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltForEachComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "apply-imports"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltApplyImportsComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "attribute"))
    {
      parent = inst->parent;
      if (!parent || parent->type != XML_ELEMENT_NODE || (v11 = parent->ns) == 0 || (v12 = inst->ns, v11 != v12) && !xmlStrEqual(v11->href, v12->href) || !xmlStrEqual(parent->name, "attribute-set"))
      {
        xsltCheckInstructionElement(style, inst);
      }

      xsltAttributeComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "element"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltElementComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "text"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltTextComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "sort"))
    {
      xsltCheckParentElement(style, inst, "apply-templates", "for-each");
      xsltSortComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "comment"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltCommentComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "number"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltNumberComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "processing-instruction"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltProcessingInstructionComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "call-template"))
    {
      xsltCheckInstructionElement(style, inst);
      xsltCallTemplateComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "param"))
    {
      if (!xsltCheckTopLevelElement(style, inst, 0))
      {
        xsltCheckInstructionElement(style, inst);
      }

      xsltParamComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "variable"))
    {
      if (!xsltCheckTopLevelElement(style, inst, 0))
      {
        xsltCheckInstructionElement(style, inst);
      }

      xsltVariableComp(style, inst);
      goto LABEL_65;
    }

    if (xmlStrEqual(inst->name, "otherwise"))
    {
      xsltCheckParentElement(style, inst, "choose", 0);
LABEL_74:

      xsltCheckInstructionElement(style, inst);
      return;
    }

    if (xmlStrEqual(inst->name, "template") || xmlStrEqual(inst->name, "output") || xmlStrEqual(inst->name, "preserve-space") || xmlStrEqual(inst->name, "strip-space"))
    {
      goto LABEL_81;
    }

    if (!xmlStrEqual(inst->name, "stylesheet") && !xmlStrEqual(inst->name, "transform"))
    {
      if (!xmlStrEqual(inst->name, "key"))
      {
        if (xmlStrEqual(inst->name, "message"))
        {
          goto LABEL_74;
        }

        if (!xmlStrEqual(inst->name, "attribute-set") && !xmlStrEqual(inst->name, "namespace-alias") && !xmlStrEqual(inst->name, "include") && !xmlStrEqual(inst->name, "import") && !xmlStrEqual(inst->name, "decimal-format"))
        {
          if (!xmlStrEqual(inst->name, "fallback"))
          {
            if (xmlStrEqual(inst->name, "document"))
            {
              xsltCheckInstructionElement(style, inst);
              psvi = xsltDocumentComp(style, inst, v18);
              inst->psvi = psvi;
              if (!psvi)
              {
                return;
              }

              goto LABEL_66;
            }

            if (style)
            {
              if (!style->forwards_compatible)
              {
                xsltTransformError(0, style, inst, "xsltStylePreCompute: unknown xsl:%s\n", inst->name);
                ++style->warnings;
              }
            }

            else
            {
              xsltTransformError(0, 0, inst, "xsltStylePreCompute: unknown xsl:%s\n", inst->name);
            }

LABEL_65:
            psvi = inst->psvi;
            if (!psvi)
            {
              return;
            }

LABEL_66:
            NsList = xmlGetNsList(inst->doc, inst);
            *(psvi + 39) = NsList;
            if (NsList)
            {
              v15 = -1;
              do
              {
                v16 = *NsList++;
                ++v15;
              }

              while (v16);
            }

            else
            {
              v15 = 0;
            }

            *(psvi + 80) = v15;
            return;
          }

          goto LABEL_74;
        }
      }

LABEL_81:

      xsltCheckTopLevelElement(style, inst, 1);
      return;
    }

    v17 = inst->parent;
    if (!v17 || v17->type != XML_DOCUMENT_NODE)
    {
      xsltTransformError(0, style, inst, "element %s only allowed only as root element\n", inst->name);
      ++style->errors;
    }
  }

  else
  {
    v9 = xsltPreComputeExtModuleElement(style, inst);
    inst->psvi = v9;
    if (!v9)
    {
      inst->psvi = xsltExtMarker;
    }
  }
}

void xsltCheckInstructionElement(xsltStylesheetPtr style, xmlNodePtr node)
{
  if (style && node->ns && !style->literal_result)
  {
    parent = node->parent;
    if (parent)
    {
      extInfos = style->extInfos;
      do
      {
        if (parent->type == XML_DOCUMENT_NODE)
        {
          break;
        }

        ns = parent->ns;
        v7 = node->ns;
        if ((ns == v7 || ns && xmlStrEqual(ns->href, v7->href)) && (xmlStrEqual(parent->name, "template") || xmlStrEqual(parent->name, "param") || xmlStrEqual(parent->name, "attribute") || xmlStrEqual(parent->name, "variable")))
        {
          return;
        }

        if (extInfos)
        {
          v8 = parent->ns;
          if (v8)
          {
            if (xmlHashLookup(style->extInfos, v8->href))
            {
              return;
            }
          }
        }

        parent = parent->parent;
      }

      while (parent);
      name = node->name;
      xsltTransformError(0, style, node, "element %s only allowed within a template, variable or param\n");
    }

    else
    {
      xsltTransformError(0, style, node, "internal problem: element has no parent\n");
    }

    ++style->errors;
  }
}

void xsltCheckParentElement(xsltStylesheetPtr style, xmlNodePtr node, xmlChar *str2, const xmlChar *a4)
{
  if (style)
  {
    ns = node->ns;
    if (ns)
    {
      if (!style->literal_result)
      {
        parent = node->parent;
        if (!parent)
        {
          xsltTransformError(0, style, node, "internal problem: element has no parent\n");
LABEL_17:
          ++style->errors;
          return;
        }

        v10 = parent->ns;
        if (v10 != ns && (!v10 || !xmlStrEqual(v10->href, ns->href)) || !xmlStrEqual(parent->name, str2) && !xmlStrEqual(parent->name, a4))
        {
          if (style->extInfos)
          {
            while (parent->type != XML_DOCUMENT_NODE)
            {
              v11 = parent->ns;
              if (v11 && xmlHashLookup(style->extInfos, v11->href))
              {
                return;
              }

              parent = parent->parent;
              if (!parent)
              {
                break;
              }
            }
          }

          name = node->name;
          xsltTransformError(0, style, node, "element %s is not allowed within that context\n");
          goto LABEL_17;
        }
      }
    }
  }
}

void xsltWithParamComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 18);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        xsltGetQNameProperty(a1, a2, "name", 1, &v4->textMatch, &v4->piMatch, &v4->parentMatch);
        if (v5->piMatch)
        {
          LODWORD(v5->commentMatch) = 1;
        }

        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (!v7)
          {
            xsltTransformError(0, a1, a2, "XSLT-with-param: Failed to compile select expression '%s'\n", v5->keys);
            ++a1->errors;
          }

          if (*(a2 + 24))
          {
            xsltTransformError(0, a1, a2, "XSLT-with-param: The content should be empty since the attribute select is present.\n");
            ++a1->warnings;
          }
        }
      }
    }
  }
}

void xsltValueOfComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 9);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        CNsProp = xsltGetCNsProp(a1, a2, "disable-output-escaping", "http://www.w3.org/1999/XSL/Transform");
        if (CNsProp)
        {
          v7 = CNsProp;
          if (xmlStrEqual(CNsProp, "yes"))
          {
            HIDWORD(v5->attrMatch) = 1;
          }

          else if (!xmlStrEqual(v7, "no"))
          {
            xsltTransformError(0, a1, a2, "xsl:value-of : disable-output-escaping allows only yes or no\n");
            ++a1->warnings;
          }
        }

        v8 = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = v8;
        if (v8)
        {
          v9 = xsltXPathCompile(a1, v8);
          v5->exclPrefixTab = v9;
          if (v9)
          {
            return;
          }

          keys = v5->keys;
          xsltTransformError(0, a1, a2, "xsl:value-of : could not compile select expression '%s'\n");
        }

        else
        {
          xsltTransformError(0, a1, a2, "xsl:value-of : select is missing\n");
        }

        ++a1->errors;
      }
    }
  }
}

xsltStylesheet *xsltCopyComp(xsltStylesheet *result, uint64_t a2)
{
  if (result && *(a2 + 8) == 1)
  {
    v3 = result;
    result = xsltNewStylePreComp(result, 1);
    if (result)
    {
      v4 = result;
      *(a2 + 104) = result;
      result->docList = a2;
      result = xsltGetCNsProp(v3, a2, "use-attribute-sets", "http://www.w3.org/1999/XSL/Transform");
      v4->elemMatch = result;
      LODWORD(v4->attrMatch) = result != 0;
    }
  }

  return result;
}

void xsltCopyOfComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 8);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (v7)
          {
            return;
          }

          keys = v5->keys;
          xsltTransformError(0, a1, a2, "xsl:copy-of : could not compile select expression '%s'\n");
        }

        else
        {
          xsltTransformError(0, a1, a2, "xsl:copy-of : select is missing\n");
        }

        ++a1->errors;
      }
    }
  }
}

void xsltIfComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 15);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        CNsProp = xsltGetCNsProp(a1, a2, "test", "http://www.w3.org/1999/XSL/Transform");
        v5->nsHash = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (v7)
          {
            return;
          }

          nsHash = v5->nsHash;
          xsltTransformError(0, a1, a2, "xsl:if : could not compile test expression '%s'\n");
        }

        else
        {
          xsltTransformError(0, a1, a2, "xsl:if : test is not defined\n");
        }

        ++a1->errors;
      }
    }
  }
}

void xsltWhenComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 21);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        CNsProp = xsltGetCNsProp(a1, a2, "test", "http://www.w3.org/1999/XSL/Transform");
        v5->nsHash = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (v7)
          {
            return;
          }

          nsHash = v5->nsHash;
          xsltTransformError(0, a1, a2, "xsl:when : could not compile test expression '%s'\n");
        }

        else
        {
          xsltTransformError(0, a1, a2, "xsl:when : test is not defined\n");
        }

        ++a1->errors;
      }
    }
  }
}

xsltStylesheet *xsltChooseComp(xsltStylesheet *result, uint64_t a2)
{
  if (result && *(a2 + 8) == 1)
  {
    result = xsltNewStylePreComp(result, 14);
    if (result)
    {
      *(a2 + 104) = result;
      result->docList = a2;
    }
  }

  return result;
}

void xsltForEachComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 16);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (v7)
          {
            return;
          }

          keys = v5->keys;
          xsltTransformError(0, a1, a2, "xsl:for-each : could not compile select expression '%s'\n");
        }

        else
        {
          xsltTransformError(0, a1, a2, "xsl:for-each : select is missing\n");
        }

        ++a1->errors;
      }
    }
  }
}

xsltStylesheet *xsltApplyImportsComp(xsltStylesheet *result, uint64_t a2)
{
  if (result && *(a2 + 8) == 1)
  {
    result = xsltNewStylePreComp(result, 11);
    if (result)
    {
      *(a2 + 104) = result;
      result->docList = a2;
    }
  }

  return result;
}

void xsltAttributeComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 5);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        v4->parentMatch = xsltEvalStaticAttrValueTemplate(a1, a2, "name", 0, &v4->textMatch);
        if (!LODWORD(v5->textMatch))
        {
          v7 = "XSLT-attribute: The attribute 'name' is missing.\n";
          goto LABEL_9;
        }

        v5->piMatch = xsltEvalStaticAttrValueTemplate(a1, a2, "namespace", 0, &v5->commentMatch);
        parentMatch = v5->parentMatch;
        if (!parentMatch)
        {
          return;
        }

        if (xmlValidateQName(parentMatch, 0))
        {
          v10 = v5->parentMatch;
          v7 = "xsl:attribute: The value '%s' of the attribute 'name' is not a valid QName.\n";
LABEL_9:
          xsltTransformError(0, a1, a2, v7, v10);
LABEL_10:
          ++a1->errors;
          return;
        }

        if (xmlStrEqual(v5->parentMatch, "xmlns"))
        {
          v7 = "xsl:attribute: The attribute name 'xmlns' is not allowed.\n";
          goto LABEL_9;
        }

        prefix = 0;
        xsltSplitQName(a1->dict, v5->parentMatch, &prefix);
        if (prefix && !LODWORD(v5->commentMatch))
        {
          v8 = xmlSearchNs(*(a2 + 64), a2, prefix);
          if (v8)
          {
            v5->piMatch = xmlDictLookup(a1->dict, v8->href, -1);
            LODWORD(v5->commentMatch) = 1;
            return;
          }

          v9 = v5->parentMatch;
          xsltTransformError(0, a1, a2, "xsl:attribute: The prefixed QName '%s' has no namespace binding in scope in the stylesheet; this is an error, since the namespace was not specified by the instruction itself.\n");
          goto LABEL_10;
        }
      }
    }
  }
}

void xsltElementComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 4);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        v4->parentMatch = xsltEvalStaticAttrValueTemplate(a1, a2, "name", 0, &v4->textMatch);
        if (LODWORD(v5->textMatch))
        {
          v5->piMatch = xsltEvalStaticAttrValueTemplate(a1, a2, "namespace", 0, &v5->commentMatch);
          parentMatch = v5->parentMatch;
          if (parentMatch)
          {
            if (!xmlValidateQName(parentMatch, 0))
            {
              prefix = 0;
              xsltSplitQName(a1->dict, v5->parentMatch, &prefix);
              if (!LODWORD(v5->commentMatch))
              {
                v7 = xmlSearchNs(*(a2 + 64), a2, prefix);
                if (v7)
                {
                  v5->piMatch = xmlDictLookup(a1->dict, v7->href, -1);
                  LODWORD(v5->commentMatch) = 1;
                }

                else
                {
                  if (!prefix)
                  {
                    goto LABEL_8;
                  }

                  xsltTransformError(0, a1, a2, "xsl:element: The prefixed QName '%s' has no namespace binding in scope in the stylesheet; this is an error, since the namespace was not specified by the instruction itself.\n", v5->parentMatch);
                  ++a1->errors;
                }
              }

              if (prefix)
              {
                if (!xmlStrncasecmp(prefix, "xml", 3))
                {
                  LODWORD(v5->textMatch) = 0;
                }
              }

              goto LABEL_8;
            }

            xsltTransformError(0, a1, a2, "xsl:element: The value '%s' of the attribute 'name' is not a valid QName.\n", v5->parentMatch);
            ++a1->errors;
          }

LABEL_8:
          v5->elemMatch = xsltEvalStaticAttrValueTemplate(a1, a2, "use-attribute-sets", 0, &v5->attrMatch);
          return;
        }

        xsltTransformError(0, a1, a2, "xsl:element: The attribute 'name' is missing.\n");
        ++a1->errors;
      }
    }
  }
}

void xsltTextComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 3);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        HIDWORD(v4->attrMatch) = 0;
        CNsProp = xsltGetCNsProp(a1, a2, "disable-output-escaping", "http://www.w3.org/1999/XSL/Transform");
        if (CNsProp)
        {
          v7 = CNsProp;
          if (xmlStrEqual(CNsProp, "yes"))
          {
            HIDWORD(v5->attrMatch) = 1;
          }

          else if (!xmlStrEqual(v7, "no"))
          {
            xsltTransformError(0, a1, a2, "xsl:text: disable-output-escaping allows only yes or no\n");
            ++a1->warnings;
          }
        }
      }
    }
  }
}

void xsltSortComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 2);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        v6 = xsltEvalStaticAttrValueTemplate(a1, a2, "data-type", 0, &v4->stripSpaces);
        v5->doc = v6;
        if (v6)
        {
          if (xmlStrEqual(v6, "text"))
          {
            HIDWORD(v5->stripSpaces) = 0;
          }

          else if (xmlStrEqual(v5->doc, "number"))
          {
            HIDWORD(v5->stripSpaces) = 1;
          }

          else
          {
            xsltTransformError(0, a1, a2, "xsltSortComp: no support for data-type = %s\n", v5->doc);
            HIDWORD(v5->stripSpaces) = 0;
            ++a1->warnings;
          }
        }

        v7 = xsltEvalStaticAttrValueTemplate(a1, a2, "order", 0, &v5->cdataSection);
        *&v5->stripAll = v7;
        if (v7)
        {
          if (xmlStrEqual(v7, "ascending"))
          {
            HIDWORD(v5->cdataSection) = 0;
          }

          else if (xmlStrEqual(*&v5->stripAll, "descending"))
          {
            HIDWORD(v5->cdataSection) = 1;
          }

          else
          {
            xsltTransformError(0, a1, a2, "xsltSortComp: invalid value %s for order\n", *&v5->stripAll);
            HIDWORD(v5->cdataSection) = 0;
            ++a1->warnings;
          }
        }

        v8 = xsltEvalStaticAttrValueTemplate(a1, a2, "case-order", 0, &v5->attrMatch);
        v5->rootMatch = v8;
        if (v8)
        {
          if (xmlStrEqual(v8, "upper-first"))
          {
            LODWORD(v5->keyMatch) = 0;
          }

          else if (xmlStrEqual(v5->rootMatch, "lower-first"))
          {
            LODWORD(v5->keyMatch) = 1;
          }

          else
          {
            xsltTransformError(0, a1, a2, "xsltSortComp: invalid value %s for order\n", *&v5->stripAll);
            LODWORD(v5->keyMatch) = 0;
            ++a1->warnings;
          }
        }

        v9 = xsltEvalStaticAttrValueTemplate(a1, a2, "lang", 0, &v5->templates);
        v5->variables = v9;
        if (v9)
        {
          v9 = xsltNewLocale(v9);
        }

        v5->templatesHash = v9;
        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (!CNsProp)
        {
          CNsProp = xmlDictLookup(a1->dict, ".", 1);
          v5->keys = CNsProp;
        }

        v11 = xsltXPathCompile(a1, CNsProp);
        v5->exclPrefixTab = v11;
        if (!v11)
        {
          xsltTransformError(0, a1, a2, "xsltSortComp: could not compile select expression '%s'\n", v5->keys);
          ++a1->errors;
        }

        if (*(a2 + 24))
        {
          xsltTransformError(0, a1, a2, "xsl:sort : is not empty\n");
          ++a1->errors;
        }
      }
    }
  }
}

xsltStylesheet *xsltCommentComp(xsltStylesheet *result, uint64_t a2)
{
  if (result && *(a2 + 8) == 1)
  {
    result = xsltNewStylePreComp(result, 6);
    if (result)
    {
      *(a2 + 104) = result;
      result->docList = a2;
    }
  }

  return result;
}

xsltStylesheet *xsltNumberComp(xsltStylesheet *result, uint64_t a2)
{
  if (result)
  {
    if (*(a2 + 8) == 1)
    {
      v3 = result;
      result = xsltNewStylePreComp(result, 10);
      if (result)
      {
        v4 = result;
        *(a2 + 104) = result;
        result->mediaType = *(a2 + 64);
        result->preComps = a2;
        *&result->standalone = xsltGetCNsProp(v3, a2, "value", "http://www.w3.org/1999/XSL/Transform");
        v5 = xsltEvalStaticAttrValueTemplate(v3, a2, "format", "http://www.w3.org/1999/XSL/Transform", &v4->doctypeSystem);
        if (!LODWORD(v4->doctypeSystem))
        {
          v5 = xmlDictLookup(v3->dict, &unk_2999B6B5E, 0);
        }

        v4->doctypePublic = v5;
        *&v4->omitXmlDeclaration = xsltGetCNsProp(v3, a2, "count", "http://www.w3.org/1999/XSL/Transform");
        v4->decimalFormat = xsltGetCNsProp(v3, a2, "from", "http://www.w3.org/1999/XSL/Transform");
        CNsProp = xsltGetCNsProp(v3, a2, "count", "http://www.w3.org/1999/XSL/Transform");
        if (CNsProp)
        {
          *&v4->warnings = xsltCompilePattern(CNsProp, *(a2 + 64), a2, v3, 0);
        }

        v7 = xsltGetCNsProp(v3, a2, "from", "http://www.w3.org/1999/XSL/Transform");
        if (v7)
        {
          v4->exclPrefix = xsltCompilePattern(v7, *(a2 + 64), a2, v3, 0);
        }

        v8 = xsltGetCNsProp(v3, a2, "level", "http://www.w3.org/1999/XSL/Transform");
        if (v8)
        {
          v9 = v8;
          if (xmlStrEqual(v8, "single") || xmlStrEqual(v9, "multiple") || xmlStrEqual(v9, "any"))
          {
            v4->encoding = v9;
          }

          else
          {
            xsltTransformError(0, v3, a2, "xsl:number : invalid value %s for level\n", v9);
            ++v3->warnings;
          }
        }

        if (xsltGetCNsProp(v3, a2, "lang", "http://www.w3.org/1999/XSL/Transform"))
        {
          xsltTransformError(0, v3, a2, "xsl:number : lang attribute not implemented\n");
          xsltGenericError(xsltGenericErrorContext, "Unimplemented block at %s:%d\n", v10, v11, v12, v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libxslt/preproc.c");
        }

        v16 = xsltGetCNsProp(v3, a2, "letter-value", "http://www.w3.org/1999/XSL/Transform");
        if (v16)
        {
          v17 = v16;
          if (xmlStrEqual(v16, "alphabetic"))
          {
            xsltTransformError(0, v3, a2, "xsl:number : letter-value 'alphabetic' not implemented\n");
            ++v3->warnings;
            xsltGenericError(xsltGenericErrorContext, "Unimplemented block at %s:%d\n", v18, v19, v20, v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libxslt/preproc.c");
          }

          else if (xmlStrEqual(v17, "traditional"))
          {
            xsltTransformError(0, v3, a2, "xsl:number : letter-value 'traditional' not implemented\n");
            ++v3->warnings;
            xsltGenericError(xsltGenericErrorContext, "Unimplemented block at %s:%d\n", v24, v25, v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libxslt/preproc.c");
          }

          else
          {
            xsltTransformError(0, v3, a2, "xsl:number : invalid value %s for letter-value\n", v17);
            ++v3->warnings;
          }
        }

        v30 = xsltGetCNsProp(v3, a2, "grouping-separator", "http://www.w3.org/1999/XSL/Transform");
        if (v30)
        {
          v31 = v30;
          *(&v4->indent + 1) = xmlStrlen(v30);
          UTF8Char = xsltGetUTF8Char(v31, &v4->indent + 1);
          v4->indent = UTF8Char & ~(UTF8Char >> 31);
        }

        result = xsltGetCNsProp(v3, a2, "grouping-size", "http://www.w3.org/1999/XSL/Transform");
        if (result)
        {
          result = sscanf(result, "%d", &v4->doctypeSystem + 4);
        }

        else
        {
          v4->indent = 0;
        }

        if (!*&v4->standalone && !v4->encoding)
        {
          result = xmlDictLookup(v3->dict, "single", 6);
          v4->encoding = result;
        }
      }
    }
  }

  return result;
}

void *xsltProcessingInstructionComp(void *result, uint64_t a2)
{
  if (result && *(a2 + 8) == 1)
  {
    v3 = result;
    result = xsltNewStylePreComp(result, 7);
    if (result)
    {
      v4 = result;
      *(a2 + 104) = result;
      *(result + 3) = a2;
      result = xsltEvalStaticAttrValueTemplate(v3, a2, "name", "http://www.w3.org/1999/XSL/Transform", result + 32);
      v4[15] = result;
    }
  }

  return result;
}

void xsltCallTemplateComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 12);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        xsltGetQNameProperty(a1, a2, "name", 1, &v4->textMatch, &v4->piMatch, &v4->parentMatch);
        if (v5->piMatch)
        {
          LODWORD(v5->commentMatch) = 1;
        }
      }
    }
  }
}

uint64_t xsltCheckTopLevelElement(xsltStylesheetPtr style, xmlNodePtr node, int a3)
{
  if (!style)
  {
    return 0xFFFFFFFFLL;
  }

  ns = node->ns;
  if (!ns)
  {
    return 0xFFFFFFFFLL;
  }

  parent = node->parent;
  if (parent)
  {
    v8 = parent->ns;
    if (v8 && parent->type == XML_ELEMENT_NODE && (v8 == ns || xmlStrEqual(v8->href, ns->href)) && (xmlStrEqual(parent->name, "stylesheet") || xmlStrEqual(parent->name, "transform")))
    {
      return 1;
    }

    if (a3)
    {
      name = node->name;
      xsltTransformError(0, style, node, "element %s only allowed as child of stylesheet\n");
LABEL_17:
      result = 0;
      ++style->errors;
      return result;
    }
  }

  else if (a3)
  {
    xsltTransformError(0, style, node, "internal problem: element has no parent\n");
    goto LABEL_17;
  }

  return 0;
}

void xsltParamComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 19);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        xsltGetQNameProperty(a1, a2, "name", 1, &v4->textMatch, &v4->piMatch, &v4->parentMatch);
        if (v5->piMatch)
        {
          LODWORD(v5->commentMatch) = 1;
        }

        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (!v7)
          {
            xsltTransformError(0, a1, a2, "XSLT-param: could not compile select expression '%s'.\n", v5->keys);
            ++a1->errors;
          }

          if (*(a2 + 24))
          {
            xsltTransformError(0, a1, a2, "XSLT-param: The content should be empty since the attribute 'select' is present.\n");
            ++a1->warnings;
          }
        }
      }
    }
  }
}

void xsltVariableComp(xsltStylesheet *a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v4 = xsltNewStylePreComp(a1, 20);
      if (v4)
      {
        v5 = v4;
        *(a2 + 104) = v4;
        v4->docList = a2;
        xsltGetQNameProperty(a1, a2, "name", 1, &v4->textMatch, &v4->piMatch, &v4->parentMatch);
        if (v5->piMatch)
        {
          LODWORD(v5->commentMatch) = 1;
        }

        CNsProp = xsltGetCNsProp(a1, a2, "select", "http://www.w3.org/1999/XSL/Transform");
        v5->keys = CNsProp;
        if (CNsProp)
        {
          v7 = xsltXPathCompile(a1, CNsProp);
          v5->exclPrefixTab = v7;
          if (!v7)
          {
            xsltTransformError(0, a1, a2, "XSLT-variable: Failed to compile the XPath expression '%s'.\n", v5->keys);
            ++a1->errors;
          }

          for (i = *(a2 + 24); i; i = *(i + 48))
          {
            v9 = *(i + 8);
            if (v9 != 8 && (v9 != 3 || !xsltIsBlank(*(i + 80))))
            {
              xsltTransformError(0, a1, a2, "XSLT-variable: There must be no child nodes, since the attribute 'select' was specified.\n");
              ++a1->errors;
            }
          }
        }
      }
    }
  }
}

void xsltGetQNameProperty(xsltStylesheetPtr style, xmlNodePtr node, xmlChar *name, int a4, _DWORD *a5, const xmlChar **a6, xmlChar **a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  CNsProp = xsltGetCNsProp(style, node, name, "http://www.w3.org/1999/XSL/Transform");
  namea = CNsProp;
  if (!CNsProp)
  {
    if (!a4)
    {
      return;
    }

    xsltTransformError(0, style, node, "The attribute '%s' is missing.\n");
    goto LABEL_12;
  }

  if (xmlValidateQName(CNsProp, 0))
  {
    xsltTransformError(0, style, node, "The value '%s' of the attribute '%s' is not a valid QName.\n");
LABEL_12:
    ++style->errors;
    return;
  }

  QNameURI2 = xsltGetQNameURI2(style, node, &namea);
  if (!namea)
  {
    goto LABEL_12;
  }

  if (a7)
  {
    *a7 = namea;
  }

  if (a5)
  {
    *a5 = 1;
  }

  if (a6)
  {
    if (QNameURI2)
    {
      *a6 = xmlDictLookup(style->dict, QNameURI2, -1);
    }
  }
}

xsltSecurityPrefsPtr xsltNewSecurityPrefs(void)
{
  xsltInitGlobals();
  v0 = malloc_type_malloc(0x28uLL, 0x800402FCC0CB6uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 4) = 0;
    *v0 = 0u;
    *(v0 + 1) = 0u;
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltNewSecurityPrefs : malloc failed\n");
  }

  return v1;
}

void xsltFreeSecurityPrefs(xsltSecurityPrefsPtr sec)
{
  if (sec)
  {
    free(sec);
  }
}

int xsltSetSecurityPrefs(xsltSecurityPrefsPtr sec, xsltSecurityOption option, xsltSecurityCheck func)
{
  xsltInitGlobals();
  result = -1;
  if (sec)
  {
    if (option <= XSLT_SECPREF_WRITE_FILE)
    {
      if (option != XSLT_SECPREF_READ_FILE)
      {
        if (option != XSLT_SECPREF_WRITE_FILE)
        {
          return result;
        }

        sec = (sec + 8);
      }
    }

    else
    {
      switch(option)
      {
        case XSLT_SECPREF_CREATE_DIRECTORY:
          sec = (sec + 16);
          break;
        case XSLT_SECPREF_READ_NETWORK:
          sec = (sec + 24);
          break;
        case XSLT_SECPREF_WRITE_NETWORK:
          sec = (sec + 32);
          break;
        default:
          return result;
      }
    }

    result = 0;
    *sec = func;
  }

  return result;
}

xsltSecurityCheck xsltGetSecurityPrefs(xsltSecurityPrefsPtr sec, xsltSecurityOption option)
{
  v2 = 0;
  if (sec)
  {
    if (option <= XSLT_SECPREF_WRITE_FILE)
    {
      if (option == XSLT_SECPREF_READ_FILE)
      {
        return *sec;
      }

      if (option == XSLT_SECPREF_WRITE_FILE)
      {
        sec = (sec + 8);
        return *sec;
      }
    }

    else
    {
      switch(option)
      {
        case XSLT_SECPREF_CREATE_DIRECTORY:
          sec = (sec + 16);
          return *sec;
        case XSLT_SECPREF_READ_NETWORK:
          sec = (sec + 24);
          return *sec;
        case XSLT_SECPREF_WRITE_NETWORK:
          sec = (sec + 32);
          return *sec;
      }
    }
  }

  return v2;
}

int xsltSetCtxtSecurityPrefs(xsltSecurityPrefsPtr sec, xsltTransformContextPtr ctxt)
{
  if (!ctxt)
  {
    return -1;
  }

  result = 0;
  ctxt->sec = sec;
  return result;
}

int xsltCheckWrite(xsltSecurityPrefsPtr sec, xsltTransformContextPtr ctxt, const xmlChar *URL)
{
  v6 = xmlParseURI(URL);
  if (!v6)
  {
    URI = xmlCreateURI();
    if (!URI)
    {
      xsltTransformError(ctxt, 0, 0, "xsltCheckWrite: out of memory for %s\n", URL);
      return -1;
    }

    v6 = URI;
    URI->path = xmlStrdup(URL);
  }

  if (v6->scheme && !xmlStrEqual(v6->scheme, "file"))
  {
    if (sec)
    {
      v10 = *(sec + 4);
      if (v10)
      {
        if (!v10(sec, ctxt, URL))
        {
          xsltTransformError(ctxt, 0, 0, "File write for %s refused\n", URL);
          xmlFreeURI(v6);
          return 0;
        }
      }
    }
  }

  else
  {
    v8 = xsltCheckWritePath(sec, ctxt, v6->path);
    if (v8 <= 0)
    {
      v9 = v8;
      xmlFreeURI(v6);
      return v9;
    }
  }

  xmlFreeURI(v6);
  return 1;
}

uint64_t xsltCheckWritePath(uint64_t a1, xsltTransformContext *a2, const char *a3)
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      if (!v6(a1, a2, a3))
      {
        xsltTransformError(a2, 0, 0, "File write for %s refused\n", a3);
        return 0;
      }
    }
  }

  Directory = xmlParserGetDirectory(a3);
  if (!Directory)
  {
    return 1;
  }

  v8 = Directory;
  memset(&v12, 0, sizeof(v12));
  if (stat(Directory, &v12) != -1)
  {
    free(v8);
    return 1;
  }

  if (a1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      if (!v9(a1, a2, v8))
      {
        xsltTransformError(a2, 0, 0, "Directory creation for %s refused\n", a3);
        free(v8);
        return 0;
      }
    }
  }

  v10 = xsltCheckWritePath(a1, a2, v8);
  if (v10 == 1)
  {
    v10 = mkdir(v8, 0x1EDu);
  }

  free(v8);
  if ((v10 & 0x80000000) == 0)
  {
    return 1;
  }

  return v10;
}

int xsltCheckRead(xsltSecurityPrefsPtr sec, xsltTransformContextPtr ctxt, const xmlChar *URL)
{
  v6 = xmlParseURI(URL);
  if (!v6)
  {
    xsltTransformError(ctxt, 0, 0, "xsltCheckRead: URL parsing failed for %s\n", URL);
    return -1;
  }

  v7 = v6;
  scheme = v6->scheme;
  if (scheme && !xmlStrEqual(scheme, "file"))
  {
    if (sec)
    {
      v10 = *(sec + 3);
      if (v10)
      {
        if (!v10(sec, ctxt, URL))
        {
          xsltTransformError(ctxt, 0, 0, "Network file read for %s refused\n");
          goto LABEL_14;
        }
      }
    }

LABEL_12:
    xmlFreeURI(v7);
    return 1;
  }

  if (!sec || !*sec || (*sec)(sec, ctxt, v7->path))
  {
    goto LABEL_12;
  }

  xsltTransformError(ctxt, 0, 0, "Local file read for %s refused\n");
LABEL_14:
  xmlFreeURI(v7);
  return 0;
}

int xsltEvalXPathPredicate(xsltTransformContextPtr ctxt, xmlXPathCompExprPtr comp, xmlNsPtr *nsList, int nsNr)
{
  if (ctxt && (inst = ctxt->inst) != 0)
  {
    xpathCtxt = ctxt->xpathCtxt;
    node = xpathCtxt->node;
    v8 = *&xpathCtxt->contextSize;
    v9 = xpathCtxt->nsNr;
    namespaces = xpathCtxt->namespaces;
    xpathCtxt->node = ctxt->node;
    xpathCtxt->namespaces = nsList;
    xpathCtxt->nsNr = nsNr;
    v11 = xmlXPathCompiledEval(comp, xpathCtxt);
    if (v11)
    {
      v12 = v11;
      v13 = xmlXPathEvalPredicate(ctxt->xpathCtxt, v11);
      xmlXPathFreeObject(v12);
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 1) & 0x40) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltEvalXPathPredicate: returns %d\n", v13);
      }
    }

    else
    {
      v15 = ctxt->traceCode;
      if (v15 && (*(v15 + 1) & 0x40) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltEvalXPathPredicate: failed\n");
      }

      v13 = 0;
      ctxt->state = XSLT_STATE_STOPPED;
    }

    v16 = ctxt->xpathCtxt;
    v16->node = node;
    v16->nsNr = v9;
    v16->namespaces = namespaces;
    ctxt->inst = inst;
    *&v16->contextSize = v8;
  }

  else
  {
    xsltTransformError(ctxt, 0, 0, "xsltEvalXPathPredicate: No context or instruction\n");
    return 0;
  }

  return v13;
}

xmlChar *__cdecl xsltEvalXPathStringNs(xsltTransformContextPtr ctxt, xmlXPathCompExprPtr comp, int nsNr, xmlNsPtr *nsList)
{
  if (ctxt && (inst = ctxt->inst) != 0)
  {
    xpathCtxt = ctxt->xpathCtxt;
    node = xpathCtxt->node;
    v8 = *&xpathCtxt->contextSize;
    v9 = xpathCtxt->nsNr;
    namespaces = xpathCtxt->namespaces;
    xpathCtxt->node = ctxt->node;
    xpathCtxt->namespaces = nsList;
    xpathCtxt->nsNr = nsNr;
    v11 = xmlXPathCompiledEval(comp, xpathCtxt);
    if (v11)
    {
      v12 = v11;
      if (v11->type == XPATH_STRING || (v12 = xmlXPathConvertString(v11), v12->type == XPATH_STRING))
      {
        stringval = v12->stringval;
        v12->stringval = 0;
      }

      else
      {
        xsltTransformError(ctxt, 0, 0, "xpath : string() function didn't return a String\n");
        stringval = 0;
      }

      xmlXPathFreeObject(v12);
    }

    else
    {
      stringval = 0;
      ctxt->state = XSLT_STATE_STOPPED;
    }

    traceCode = ctxt->traceCode;
    if (traceCode && (*(traceCode + 1) & 0x40) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltEvalXPathString: returns %s\n", stringval);
    }

    ctxt->inst = inst;
    v15 = ctxt->xpathCtxt;
    v15->node = node;
    *&v15->contextSize = v8;
    v15->nsNr = v9;
    v15->namespaces = namespaces;
  }

  else
  {
    xsltTransformError(ctxt, 0, 0, "xsltEvalXPathStringNs: No context or instruction\n");
    return 0;
  }

  return stringval;
}

xmlChar *__cdecl xsltEvalTemplateString(xsltTransformContextPtr ctxt, xmlNodePtr contextNode, xmlNodePtr inst)
{
  if (ctxt && contextNode && inst && inst->type == XML_ELEMENT_NODE && inst->children)
  {
    v6 = xmlNewDocNode(ctxt->output, 0, "fake", 0);
    if (v6)
    {
      v7 = v6;
      insert = ctxt->insert;
      ctxt->insert = v6;
      lasttext = ctxt->lasttext;
      v10 = *&ctxt->lasttsize;
      xsltApplyOneTemplate(ctxt, contextNode, inst->children, 0, 0);
      ctxt->insert = insert;
      ctxt->lasttext = lasttext;
      *&ctxt->lasttsize = v10;
      Content = xmlNodeGetContent(v7);
      xmlFreeNode(v7);
      return Content;
    }

    xsltTransformError(ctxt, 0, inst, "Failed to create temporary node\n");
  }

  return 0;
}

xmlChar *__cdecl xsltAttrTemplateValueProcessNode(xsltTransformContextPtr ctxt, const xmlChar *str, xmlNodePtr node)
{
  if (!str)
  {
    return 0;
  }

  v3 = str;
  v4 = *str;
  if (!*str)
  {

    return xmlStrndup(&unk_2999B6B5E, 0);
  }

  v7 = 0;
  nsList = 0;
  v8 = 0;
  v9 = str;
LABEL_4:
  if (v4 == 123)
  {
    v10 = v9 + 1;
    if (v9[1] == 123)
    {
      goto LABEL_11;
    }

    if (v9 - v3 >= 0x7FFFFFFF)
    {
      v12 = 0x7FFFFFFF;
    }

    else
    {
      v12 = v9 - v3;
    }

    v7 = xmlStrncat(v7, v3, v12);
    v13 = (v9 + 1);
    while (1)
    {
      v14 = *v13;
      if (v14 > 0x26)
      {
        if (v14 == 39)
        {
          goto LABEL_26;
        }

        if (v14 == 125)
        {
          if (v13 - v10 >= 0x7FFFFFFF)
          {
            v19 = 0x7FFFFFFF;
          }

          else
          {
            v19 = v13 - v10;
          }

          v20 = xmlStrndup(v9 + 1, v19);
          if (!v20)
          {
            goto LABEL_58;
          }

          v21 = v20;
          if (*v20 == 123)
          {
            goto LABEL_50;
          }

          if (node && !nsList)
          {
            v22 = xmlGetNsList(node->doc, node);
            if (v22)
            {
              v8 = -1;
              nsList = v22;
              v23 = v22;
              do
              {
                v24 = *v23++;
                ++v8;
              }

              while (v24);
            }

            else
            {
              nsList = 0;
            }
          }

          v25 = xmlXPathCtxtCompile(ctxt->xpathCtxt, v21);
          v26 = xsltEvalXPathStringNs(ctxt, v25, v8, nsList);
          xmlXPathFreeCompExpr(v25);
          free(v21);
          v21 = v26;
          if (v26)
          {
LABEL_50:
            v7 = xmlStrcat(v7, v21);
            free(v21);
          }

          v3 = v13 + 1;
LABEL_15:
          v9 = v3;
LABEL_16:
          v4 = *v9;
          goto LABEL_4;
        }

LABEL_36:
        ++v13;
      }

      else
      {
        if (v14 != 34)
        {
          if (!*v13)
          {
            xsltTransformError(ctxt, 0, node, "xsltAttrTemplateValueProcessNode: unmatched '{'\n");
            if (v13 - v9 >= 0x7FFFFFFF)
            {
              v27 = 0x7FFFFFFF;
            }

            else
            {
              v27 = v13 - v9;
            }

            v28 = v7;
            v29 = v9;
            goto LABEL_57;
          }

          goto LABEL_36;
        }

LABEL_26:
        v15 = v13 + 1;
        do
        {
          v17 = *v15++;
          v16 = v17;
          if (v17)
          {
            v18 = v16 == v14;
          }

          else
          {
            v18 = 1;
          }
        }

        while (!v18);
        if (v16)
        {
          v13 = v15;
        }

        else
        {
          v13 = v15 - 1;
        }
      }
    }
  }

  if (v4 == 125)
  {
    v10 = v9 + 1;
    if (v9[1] != 125)
    {
      xsltTransformError(ctxt, 0, node, "xsltAttrTemplateValueProcessNode: unmatched '}'\n");
      ++v9;
      goto LABEL_16;
    }

LABEL_11:
    if (v10 - v3 >= 0x7FFFFFFF)
    {
      v11 = 0x7FFFFFFF;
    }

    else
    {
      v11 = v10 - v3;
    }

    v7 = xmlStrncat(v7, v3, v11);
    v3 = v9 + 2;
    goto LABEL_15;
  }

  if (v4)
  {
    ++v9;
    goto LABEL_16;
  }

  if (v9 != v3)
  {
    if (v9 - v3 >= 0x7FFFFFFF)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = v9 - v3;
    }

    v28 = v7;
    v29 = v3;
LABEL_57:
    v7 = xmlStrncat(v28, v29, v27);
  }

LABEL_58:
  if (nsList)
  {
    free(nsList);
  }

  return v7;
}

xmlChar *__cdecl xsltEvalAttrValueTemplate(xsltTransformContextPtr ctxt, xmlNodePtr node, const xmlChar *name, const xmlChar *ns)
{
  v4 = 0;
  if (ctxt && node && name)
  {
    if (node->type == XML_ELEMENT_NODE && (NsProp = xsltGetNsProp(node, name, ns)) != 0)
    {
      v8 = NsProp;
      v4 = xsltAttrTemplateValueProcessNode(ctxt, NsProp, node);
      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 1) & 0x40) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltEvalAttrValueTemplate: %s returns %s\n", v8, v4);
      }

      free(v8);
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

const xmlChar *__cdecl xsltEvalStaticAttrValueTemplate(xsltStylesheetPtr style, xmlNodePtr node, const xmlChar *name, const xmlChar *ns, int *found)
{
  if (!style || !node || !name || node->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  NsProp = xsltGetNsProp(node, name, ns);
  if (!NsProp)
  {
    *found = 0;
    return 0;
  }

  v8 = NsProp;
  *found = 1;
  if (xmlStrchr(NsProp, 0x7Bu))
  {
    free(v8);
    return 0;
  }

  v10 = xmlDictLookup(style->dict, v8, -1);
  free(v8);
  return v10;
}

xmlAttrPtr xsltAttrTemplateProcess(xsltTransformContextPtr ctxt, xmlNodePtr target, xmlAttrPtr attr)
{
  properties = 0;
  if (target && ctxt && attr)
  {
    if (target->type != XML_ELEMENT_NODE)
    {
      return 0;
    }

    if (attr->type != XML_ATTRIBUTE_NODE)
    {
      return 0;
    }

    ns = attr->ns;
    if (ns)
    {
      if (xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
      {
        return 0;
      }
    }

    children = attr->children;
    if (!children)
    {
      goto LABEL_15;
    }

    if (children->type != XML_TEXT_NODE || children->next)
    {
      xsltTransformError(ctxt, 0, attr->parent, "Internal error: The children of an attribute node of a literal result element are not in the expected form.\n");
      return 0;
    }

    content = children->content;
    if (!content)
    {
LABEL_15:
      content = xmlDictLookup(ctxt->dict, &unk_2999B6B5E, 0);
    }

    properties = target->properties;
    if (properties)
    {
      while (1)
      {
        if ((attr->ns != 0) != (properties->ns == 0))
        {
          if (xmlStrEqual(properties->name, attr->name))
          {
            v11 = attr->ns;
            if (!v11 || xmlStrEqual(properties->ns->href, v11->href))
            {
              break;
            }
          }
        }

        properties = properties->next;
        if (!properties)
        {
          goto LABEL_22;
        }
      }

      xmlFreeNodeList(properties->children);
      properties->children = 0;
      properties->last = 0;
      v22 = properties->ns;
      if (v22 && !xmlStrEqual(v22->prefix, attr->ns->prefix))
      {
        properties->ns = xsltGetNamespace(ctxt, attr->parent, attr->ns, target);
      }
    }

    else
    {
LABEL_22:
      v12 = attr->ns;
      if (v12)
      {
        Namespace = xsltGetNamespace(ctxt, attr->parent, v12, target);
      }

      else
      {
        Namespace = 0;
      }

      properties = xmlNewNsProp(target, Namespace, attr->name, 0);
      if (!properties)
      {
        v20 = attr->ns;
        parent = attr->parent;
        if (v20)
        {
          href = v20->href;
          name = attr->name;
          xsltTransformError(ctxt, 0, parent, "Internal error: Failed to create attribute '{%s}%s'.\n");
        }

        else
        {
          v26 = attr->name;
          xsltTransformError(ctxt, 0, parent, "Internal error: Failed to create attribute '%s'.\n");
        }

        return 0;
      }
    }

    v14 = xmlNewText(0);
    if (!v14)
    {
      return properties;
    }

    v15 = v14;
    properties->children = v14;
    properties->last = v14;
    v14->parent = properties;
    v14->doc = properties->doc;
    psvi = attr->psvi;
    if (psvi)
    {
      v17 = xsltEvalAVT(ctxt, psvi, attr->parent);
      if (v17)
      {
LABEL_44:
        v15->content = v17;
        return properties;
      }

      v18 = attr->ns;
      v19 = attr->parent;
      if (v18)
      {
        v28 = v18->href;
        v30 = attr->name;
        xsltTransformError(ctxt, 0, v19, "Internal error: Failed to evaluate the AVT of attribute '{%s}%s'.\n");
      }

      else
      {
        v27 = attr->name;
        xsltTransformError(ctxt, 0, v19, "Internal error: Failed to evaluate the AVT of attribute '%s'.\n");
      }

      v25 = &unk_2999B6B5E;
    }

    else
    {
      if (ctxt->internalized)
      {
        doc = target->doc;
        if (doc)
        {
          dict = ctxt->dict;
          if (doc->dict == dict)
          {
            if (xmlDictOwns(dict, content))
            {
              v15->content = content;
              return properties;
            }
          }
        }
      }

      v25 = content;
    }

    v17 = xmlStrdup(v25);
    goto LABEL_44;
  }

  return properties;
}

xmlAttrPtr xsltAttrListTemplateProcess(xsltTransformContextPtr ctxt, xmlNodePtr target, xmlAttrPtr cur)
{
  result = 0;
  if (!ctxt)
  {
    return result;
  }

  if (!target)
  {
    return result;
  }

  v6 = cur;
  if (!cur)
  {
    return result;
  }

  if (target->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  insert = ctxt->insert;
  ctxt->insert = target;
  v7 = cur;
  do
  {
    if (v7->ns && xmlStrEqual(v7->name, "use-attribute-sets") && xmlStrEqual(v7->ns->href, "http://www.w3.org/1999/XSL/Transform"))
    {
      xsltApplyAttributeSet(ctxt, ctxt->node, v7, 0);
    }

    v7 = v7->next;
  }

  while (v7);
  v8 = 0;
  Namespace = 0;
  properties = target->properties;
  while (1)
  {
    ns = v6->ns;
    if (ns && xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
    {
      goto LABEL_41;
    }

    children = v6->children;
    if (!children)
    {
      goto LABEL_18;
    }

    if (children->type != XML_TEXT_NODE || children->next)
    {
      xsltTransformError(ctxt, 0, v6->parent, "Internal error: The children of an attribute node of a literal result element are not in the expected form.\n");
      goto LABEL_52;
    }

    content = children->content;
    if (!content)
    {
LABEL_18:
      content = xmlDictLookup(ctxt->dict, &unk_2999B6B5E, 0);
    }

    v14 = v6->ns;
    if (v14 == v7)
    {
      goto LABEL_22;
    }

    if (v14)
    {
      Namespace = xsltGetNamespace(ctxt, v6->parent, v6->ns, target);
      v7 = v14;
      if (!Namespace)
      {
        goto LABEL_52;
      }

LABEL_22:
      if (properties)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    v7 = 0;
    Namespace = 0;
    if (properties)
    {
LABEL_23:
      v15 = xmlSetNsProp(target, Namespace, v6->name, 0);
      if (!v15)
      {
        goto LABEL_47;
      }

      goto LABEL_31;
    }

LABEL_26:
    v16 = xmlNewDocProp(target->doc, v6->name, 0);
    if (!v16)
    {
LABEL_47:
      v22 = v6->ns;
      parent = v6->parent;
      if (v22)
      {
        href = v22->href;
        name = v6->name;
        xsltTransformError(ctxt, 0, parent, "Internal error: Failed to create attribute '{%s}%s'.\n");
      }

      else
      {
        v26 = v6->name;
        xsltTransformError(ctxt, 0, parent, "Internal error: Failed to create attribute '%s'.\n");
      }

      goto LABEL_52;
    }

    v15 = v16;
    v16->ns = Namespace;
    v16->parent = target;
    if (v8)
    {
      v8->next = v16;
      v16->prev = v8;
    }

    else
    {
      target->properties = v16;
    }

    v8 = v16;
LABEL_31:
    v17 = xmlNewText(0);
    if (v17)
    {
      break;
    }

LABEL_41:
    v6 = v6->next;
    if (!v6)
    {
      ctxt->insert = insert;
      return target->properties;
    }
  }

  v18 = v17;
  v15->children = v17;
  v15->last = v17;
  v17->parent = v15;
  v17->doc = v15->doc;
  psvi = v6->psvi;
  if (!psvi)
  {
    if (!ctxt->internalized || (doc = target->doc) == 0 || (dict = ctxt->dict, doc->dict != dict) || !xmlDictOwns(dict, content))
    {
      content = xmlStrdup(content);
    }

    goto LABEL_39;
  }

  content = xsltEvalAVT(ctxt, psvi, v6->parent);
  if (content)
  {
LABEL_39:
    v18->content = content;
    if (xmlIsID(v15->doc, v15->parent, v15))
    {
      xmlAddID(0, v15->doc, v18->content, v15);
    }

    goto LABEL_41;
  }

  v24 = v6->ns;
  v25 = v6->parent;
  if (v24)
  {
    v29 = v24->href;
    v31 = v6->name;
    xsltTransformError(ctxt, 0, v25, "Internal error: Failed to evaluate the AVT of attribute '{%s}%s'.\n");
  }

  else
  {
    v27 = v6->name;
    xsltTransformError(ctxt, 0, v25, "Internal error: Failed to evaluate the AVT of attribute '%s'.\n");
  }

  v18->content = xmlStrdup(&unk_2999B6B5E);
LABEL_52:
  result = 0;
  ctxt->insert = insert;
  return result;
}

void xsltLocalVariablePop(xsltTransformContextPtr ctxt, int limitNr, int level)
{
  varsNr = ctxt->varsNr;
  if (varsNr >= 1)
  {
    while (varsNr > limitNr)
    {
      v7 = ctxt->varsTab[varsNr - 1];
      v8 = v7->level;
      if (v8 <= level)
      {
        break;
      }

      if ((v8 & 0x80000000) == 0)
      {
        xsltFreeStackElemList(v7);
        varsNr = ctxt->varsNr;
      }

      ctxt->varsNr = --varsNr;
      if (!varsNr)
      {
        goto LABEL_10;
      }
    }

    if (varsNr >= 1)
    {
      v9 = ctxt->varsTab[varsNr - 1];
      goto LABEL_11;
    }

LABEL_10:
    v9 = 0;
LABEL_11:
    ctxt->vars = v9;
  }
}

xsltTransformContextPtr xsltNewTransformContext(xsltStylesheetPtr style, xmlDocPtr doc)
{
  xsltInitGlobals();
  v4 = malloc_type_malloc(0x1F8uLL, 0x10F0040073551FAuLL);
  v5 = v4;
  if (v4)
  {
    v4[62] = 0;
    *(v4 + 29) = 0u;
    *(v4 + 30) = 0u;
    *(v4 + 27) = 0u;
    *(v4 + 28) = 0u;
    *(v4 + 25) = 0u;
    *(v4 + 26) = 0u;
    *(v4 + 23) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 21) = 0u;
    *(v4 + 22) = 0u;
    *(v4 + 19) = 0u;
    *(v4 + 20) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 18) = 0u;
    *(v4 + 15) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 13) = 0u;
    *(v4 + 14) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 12) = 0u;
    *(v4 + 9) = 0u;
    *(v4 + 10) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    v6 = malloc_type_malloc(0x20uLL, 0x1020040CC5CF236uLL);
    if (!v6)
    {
      xsltTransformError(0, 0, 0, "xsltTransformCacheCreate : malloc failed\n");
      v5[53] = 0;
      goto LABEL_30;
    }

    *&v6->parent = 0u;
    *&v6->imports = 0u;
    v5[53] = v6;
    Sub = xmlDictCreateSub(style->dict);
    v5[46] = Sub;
    if (style->internalized)
    {
      v8 = Sub == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
    *(v5 + 96) = v9;
    xsltGenericDebug(xsltGenericDebugContext, "Creating sub-dictionary from stylesheet for transformation\n");
    v10 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    v5[4] = v10;
    if (!v10)
    {
      xsltTransformError(0, 0, doc, "xsltNewTransformContext: out of memory\n");
      goto LABEL_30;
    }

    v5[3] = 0x500000000;
    v5[2] = 0;
    *(v5 + 116) = xsltMaxDepth;
    v11 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    v5[7] = v11;
    if (v11)
    {
      v5[6] = 0xA00000000;
      v5[5] = 0;
      *(v5 + 16) = 0;
      *(v5 + 117) = xsltMaxVars;
      v5[28] = 0;
      v5[29] = 0;
      v5[27] = 0;
      *v5 = style;
      xmlXPathInit();
      v12 = xmlXPathNewContext(doc);
      v5[20] = v12;
      if (!v12)
      {
        xsltTransformError(0, 0, doc, "xsltNewTransformContext : xmlXPathNewContext failed\n");
        goto LABEL_30;
      }

      if (xmlXPathContextSetCache(v12, 1, -1, 0) == -1)
      {
LABEL_30:
        xsltFreeTransformContext(v5);
        return 0;
      }

      extrasNr = style->extrasNr;
      if (!extrasNr)
      {
        v5[31] = 0;
        v5[32] = 0;
LABEL_25:
        xmlXPathRegisterVariableLookup(v5[20], xsltXPathVariableLookup, v5);
        xsltRegisterAllFunctions(v5[20]);
        xsltRegisterAllElement(v5);
        v21 = v5[20];
        v21->extra = v5;
        xmlXPathRegisterFuncLookup(v21, xsltXPathFunctionLookup, v21);
        v5[20]->piMatch = style->nsHash;
        xsltInitCtxtExts(v5);
        if (!xslDebugStatus)
        {
          xmlXPathOrderDocElems(doc);
        }

        *(v5 + 90) = 16398;
        v22 = xsltNewDocument(v5, doc);
        if (v22)
        {
          v22->main = 1;
          v5[15] = v22;
          v5[23] = 0;
          v5[25] = 0;
          v5[34] = xsltGetDefaultSecurityPrefs();
          *(v5 + 86) = xslDebugStatus;
          v5[44] = &xsltDefaultTrace;
          *(v5 + 48) = xsltDoXIncludeDefault;
          *(v5 + 114) = 0;
          return v5;
        }

        xsltTransformError(v5, 0, doc, "xsltNewTransformContext : xsltNewDocument failed\n");
        goto LABEL_30;
      }

      v14 = extrasNr + 20;
      *(v5 + 63) = v14;
      v15 = malloc_type_malloc(24 * v14, 0x10820403FFA2F7DuLL);
      v5[32] = v15;
      if (v15)
      {
        *(v5 + 62) = style->extrasNr;
        if (*(v5 + 63) >= 1)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = (&v5[32]->parent + v16);
            ++v17;
            *v18 = 0;
            v18[1] = 0;
            v18[2] = 0;
            v16 += 24;
          }

          while (v17 < *(v5 + 63));
        }

        goto LABEL_25;
      }
    }

    v19 = *__xmlGenericError();
    v20 = __xmlGenericErrorContext();
    v19(*v20, "xsltNewTransformContext: out of memory\n");
    goto LABEL_30;
  }

  xsltTransformError(0, 0, doc, "xsltNewTransformContext : malloc failed\n");
  return v5;
}

void xsltRegisterAllElement(xsltTransformContextPtr ctxt)
{
  xsltRegisterExtElement(ctxt, "apply-templates", "http://www.w3.org/1999/XSL/Transform", xsltApplyTemplates);
  xsltRegisterExtElement(ctxt, "apply-imports", "http://www.w3.org/1999/XSL/Transform", xsltApplyImports);
  xsltRegisterExtElement(ctxt, "call-template", "http://www.w3.org/1999/XSL/Transform", xsltCallTemplate);
  xsltRegisterExtElement(ctxt, "element", "http://www.w3.org/1999/XSL/Transform", xsltElement);
  xsltRegisterExtElement(ctxt, "attribute", "http://www.w3.org/1999/XSL/Transform", xsltAttribute);
  xsltRegisterExtElement(ctxt, "text", "http://www.w3.org/1999/XSL/Transform", xsltText);
  xsltRegisterExtElement(ctxt, "processing-instruction", "http://www.w3.org/1999/XSL/Transform", xsltProcessingInstruction);
  xsltRegisterExtElement(ctxt, "comment", "http://www.w3.org/1999/XSL/Transform", xsltComment);
  xsltRegisterExtElement(ctxt, "copy", "http://www.w3.org/1999/XSL/Transform", xsltCopy);
  xsltRegisterExtElement(ctxt, "value-of", "http://www.w3.org/1999/XSL/Transform", xsltValueOf);
  xsltRegisterExtElement(ctxt, "number", "http://www.w3.org/1999/XSL/Transform", xsltNumber);
  xsltRegisterExtElement(ctxt, "for-each", "http://www.w3.org/1999/XSL/Transform", xsltForEach);
  xsltRegisterExtElement(ctxt, "if", "http://www.w3.org/1999/XSL/Transform", xsltIf);
  xsltRegisterExtElement(ctxt, "choose", "http://www.w3.org/1999/XSL/Transform", xsltChoose);
  xsltRegisterExtElement(ctxt, "sort", "http://www.w3.org/1999/XSL/Transform", xsltSort);
  xsltRegisterExtElement(ctxt, "copy-of", "http://www.w3.org/1999/XSL/Transform", xsltCopyOf);
  xsltRegisterExtElement(ctxt, "message", "http://www.w3.org/1999/XSL/Transform", xsltMessageWrapper);
  xsltRegisterExtElement(ctxt, "variable", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
  xsltRegisterExtElement(ctxt, "param", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
  xsltRegisterExtElement(ctxt, "with-param", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
  xsltRegisterExtElement(ctxt, "decimal-format", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
  xsltRegisterExtElement(ctxt, "when", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
  xsltRegisterExtElement(ctxt, "otherwise", "http://www.w3.org/1999/XSL/Transform", xsltDebug);

  xsltRegisterExtElement(ctxt, "fallback", "http://www.w3.org/1999/XSL/Transform", xsltDebug);
}

void xsltFreeTransformContext(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    xsltShutdownCtxtExts(ctxt);
    xpathCtxt = ctxt->xpathCtxt;
    if (xpathCtxt)
    {
      xpathCtxt->nsHash = 0;
      xmlXPathFreeContext(xpathCtxt);
    }

    templTab = ctxt->templTab;
    if (templTab)
    {
      free(templTab);
    }

    varsTab = ctxt->varsTab;
    if (varsTab)
    {
      free(varsTab);
    }

    profTab = ctxt->profTab;
    if (profTab)
    {
      free(profTab);
    }

    extrasNr = ctxt->extrasNr;
    if (extrasNr >= 1 && ctxt->extras)
    {
      v7 = 0;
      for (i = 0; i < extrasNr; ++i)
      {
        extras = ctxt->extras;
        deallocate = extras[v7].deallocate;
        if (deallocate && extras[v7].info)
        {
          deallocate();
          extrasNr = ctxt->extrasNr;
        }

        ++v7;
      }

      free(ctxt->extras);
    }

    xsltFreeGlobalVariables(ctxt);
    xsltFreeDocuments(ctxt);
    xsltFreeCtxtExts(ctxt);
    xsltFreeRVTs(ctxt);
    cache = ctxt->cache;
    if (cache)
    {
      RVT = cache->RVT;
      while (RVT)
      {
        v13 = RVT;
        RVT = *&RVT->type;
        v14 = *v13;
        if (*v13 && *v14)
        {
          xsltFreeDocumentKeys(*v14);
          free(**v13);
          v14 = *v13;
        }

        xmlFreeDoc(v14);
        free(v13);
      }

      p_next = &cache->stackItems->next;
      if (p_next)
      {
        do
        {
          v16 = *p_next;
          free(p_next);
          p_next = v16;
        }

        while (v16);
      }

      free(cache);
    }

    xmlDictFree(ctxt->dict);
    xsltGenericDebug(xsltGenericDebugContext, "freeing transformation dictionary\n");
    ctxt->currentId = -1;
    *&v17 = -1;
    *(&v17 + 1) = -1;
    *&ctxt->maxTemplateDepth = v17;
    *&ctxt->opCount = v17;
    *&ctxt->contextVariable = v17;
    *&ctxt->localRVTBase = v17;
    *&ctxt->currentTemplateRule = v17;
    *&ctxt->initialContextDoc = v17;
    *&ctxt->dict = v17;
    *&ctxt->internalized = v17;
    *&ctxt->lasttsize = v17;
    *&ctxt->traceCode = v17;
    *&ctxt->tmpRVT = v17;
    *&ctxt->ctxtflags = v17;
    *&ctxt->sec = v17;
    *&ctxt->errctx = v17;
    *&ctxt->_private = v17;
    *&ctxt->extras = v17;
    *&ctxt->profile = v17;
    *&ctxt->profNr = v17;
    *&ctxt->globalVars = v17;
    *&ctxt->xinclude = v17;
    *&ctxt->output = v17;
    *&ctxt->xpathCtxt = v17;
    *&ctxt->docList = v17;
    *&ctxt->node = v17;
    *&ctxt->extElements = v17;
    *&ctxt->mode = v17;
    *&ctxt->varsNr = v17;
    *&ctxt->varsBase = v17;
    *&ctxt->templ = v17;
    *&ctxt->templTab = v17;
    *&ctxt->style = v17;

    free(ctxt);
  }
}

xmlNodePtr xsltCopyTextString(xsltTransformContextPtr ctxt, xmlNodePtr target, const xmlChar *string, int noescape)
{
  if (!string)
  {
    return 0;
  }

  traceCode = ctxt->traceCode;
  if (traceCode && (*traceCode & 1) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltCopyTextString: copy text %s\n", string);
  }

  if (!target || !target->children)
  {
    ctxt->lasttext = 0;
  }

  v9 = xmlStrlen(string);
  if (ctxt->type == XSLT_OUTPUT_XML)
  {
    if (target)
    {
      cdataSection = ctxt->style->cdataSection;
      if (cdataSection)
      {
        if (target->type == XML_ELEMENT_NODE)
        {
          ns = target->ns;
          if (!ns)
          {
            if (xmlHashLookup2(cdataSection, target->name, 0))
            {
              goto LABEL_37;
            }

            ns = target->ns;
            if (!ns)
            {
              goto LABEL_9;
            }

            cdataSection = ctxt->style->cdataSection;
          }

          if (!xmlHashLookup2(cdataSection, target->name, ns->href))
          {
            goto LABEL_9;
          }

LABEL_37:
          last = target->last;
          if (last && last->type == XML_CDATA_SECTION_NODE)
          {
            goto LABEL_39;
          }

          v15 = xmlNewCDataBlock(ctxt->output, string, v9);
          goto LABEL_29;
        }
      }
    }
  }

LABEL_9:
  if (!noescape)
  {
    if (target)
    {
      last = target->last;
      if (last)
      {
        if (last->type == XML_TEXT_NODE && last->name == MEMORY[0x29EDC97B8])
        {
          goto LABEL_39;
        }
      }
    }

    v15 = xmlNewTextLen(string, v9);
LABEL_29:
    v12 = v15;
    if (!target)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!target || (last = target->last) == 0 || last->type != XML_TEXT_NODE || last->name != MEMORY[0x29EDC97C0])
  {
    v11 = xmlNewTextLen(string, v9);
    if (!v11)
    {
      goto LABEL_34;
    }

    v12 = v11;
    v11->name = MEMORY[0x29EDC97C0];
    if (!target)
    {
LABEL_32:
      if (v12)
      {
        ctxt->lasttext = v12->content;
        ctxt->lasttsize = v9;
        ctxt->lasttuse = v9;
        return v12;
      }

LABEL_34:
      xsltTransformError(ctxt, 0, target, "xsltCopyTextString: text copy failed\n");
      v12 = 0;
      ctxt->lasttext = 0;
      return v12;
    }

LABEL_30:
    if (v12)
    {
      v12 = xmlAddChild(target, v12);
    }

    goto LABEL_32;
  }

LABEL_39:

  return xsltAddTextString(ctxt, last, string, v9);
}

xmlNodePtr xsltAddTextString(xsltTransformContextPtr ctxt, xmlNodePtr cur, xmlChar *content, size_t __n)
{
  v4 = cur;
  if (cur)
  {
    if (content)
    {
      v6 = __n;
      if (__n >= 1)
      {
        lasttext = ctxt->lasttext;
        v9 = cur->content;
        if (lasttext != v9)
        {
          xmlNodeAddContent(cur, content);
          v10 = v4->content;
          ctxt->lasttext = v10;
          v11 = xmlStrlen(v10);
          ctxt->lasttsize = v11;
          ctxt->lasttuse = v11;
          return v4;
        }

        lasttuse = ctxt->lasttuse;
        if ((lasttuse ^ 0x7FFFFFFFu) > __n)
        {
          lasttsize = ctxt->lasttsize;
          if (lasttsize > lasttuse + __n)
          {
LABEL_16:
            memcpy(&v9[lasttuse], content, v6);
            v18 = ctxt->lasttuse + v6;
            ctxt->lasttuse = v18;
            v4->content[v18] = 0;
            return v4;
          }

          if (lasttuse + __n <= 99)
          {
            v14 = 99;
          }

          else
          {
            v14 = lasttuse + __n;
          }

          v15 = lasttsize ^ 0x7FFFFFFF;
          v16 = v14 + lasttsize;
          if (v14 < v15)
          {
            v17 = v16 + 1;
          }

          else
          {
            v17 = 0x7FFFFFFF;
          }

          v9 = malloc_type_realloc(v9, v17, 0x100004077774924uLL);
          if (v9)
          {
            ctxt->lasttsize = v17;
            ctxt->lasttext = v9;
            v4->content = v9;
            lasttuse = ctxt->lasttuse;
            goto LABEL_16;
          }
        }

        xsltTransformError(ctxt, 0, v4, "xsltCopyText: text allocation failed\n");
        return 0;
      }
    }
  }

  return v4;
}

void xsltAddChild(xmlNode *a1, xmlNodePtr cur)
{
  if (cur)
  {
    if (a1)
    {
      xmlAddChild(a1, cur);
    }

    else
    {
      xmlFreeNode(cur);
    }
  }
}

void xsltProcessOneNode(xsltTransformContextPtr ctxt, xmlNodePtr node, xsltStackElemPtr params)
{
  Template = xsltGetTemplate(ctxt, node, 0);
  type = node->type;
  if (Template)
  {
    v14 = Template;
    currentTemplateRule = ctxt->currentTemplateRule;
    ctxt->currentTemplateRule = Template;
    traceCode = ctxt->traceCode;
    if (type == XML_DOCUMENT_NODE)
    {
      if (traceCode && (*traceCode & 2) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: applying template '%s' for /\n", v7, v8, v9, v10, v11, v12, Template->match);
      }
    }

    else if (type == XML_ATTRIBUTE_NODE)
    {
      if (traceCode)
      {
        if ((*traceCode & 2) != 0)
        {
          match = Template->match;
          name = node->name;
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: applying template '%s' for attribute %s\n", v7, v8, v9, v10, v11, v12, match);
        }
      }
    }

    else if (traceCode && (*traceCode & 2) != 0)
    {
      v19 = Template->match;
      v23 = node->name;
      xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: applying template '%s' for %s\n", v7, v8, v9, v10, v11, v12, v19);
    }

    xsltApplyXSLTTemplate(ctxt, node, v14->content, v14, params);
    ctxt->currentTemplateRule = currentTemplateRule;
  }

  else
  {
    v18 = ctxt->traceCode;
    switch(type)
    {
      case XML_ATTRIBUTE_NODE:
        if (v18 && (*v18 & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: no template found for attribute %s\n", v7, v8, v9, v10, v11, v12, node->name);
        }

        break;
      case XML_CDATA_SECTION_NODE:
        if (v18 && (*v18 & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: no template found for CDATA\n", v7, v8, v9, v10, v11, v12, v21);
        }

        break;
      case XML_DOCUMENT_NODE:
        if (v18 && (*v18 & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: no template found for /\n", v7, v8, v9, v10, v11, v12, v21);
        }

        break;
      default:
        if (v18 && (*v18 & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessOneNode: no template found for %s\n", v7, v8, v9, v10, v11, v12, node->name);
        }

        break;
    }

    v20 = ctxt->node;
    ctxt->node = node;
    xsltDefaultProcessOneNode(ctxt, node, params);
    ctxt->node = v20;
  }
}

void xsltDefaultProcessOneNode(xsltTransformContextPtr ctxt, uint64_t a2, xsltStackElemPtr params, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (ctxt->state == XSLT_STATE_STOPPED)
  {
    return;
  }

  v12 = *(a2 + 8);
  if (v12 > 3)
  {
    if (v12 != 13 && v12 != 9)
    {
      if (v12 != 4)
      {
        return;
      }

      traceCode = ctxt->traceCode;
      if (traceCode && (*traceCode & 2) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy CDATA %s\n", *(a2 + 80));
      }

      if (xsltCopyText(ctxt, ctxt->insert, a2, 0))
      {
        return;
      }

      v60 = "xsltDefaultProcessOneNode: cdata copy failed\n";
LABEL_99:

      xsltTransformError(ctxt, 0, a2, v60);
      return;
    }

    goto LABEL_16;
  }

  if (v12 == 1)
  {
LABEL_16:
    v18 = *(a2 + 24);
    if (!v18)
    {
      xpathCtxt = ctxt->xpathCtxt;
      v25 = *&xpathCtxt->contextSize;
LABEL_78:
      *&xpathCtxt->contextSize = v25;
      return;
    }

    v19 = 0;
    v20 = *(a2 + 24);
    do
    {
      v21 = *(v20 + 8);
      v22 = v21 > 0xD;
      v23 = (1 << v21) & 0x239E;
      if (!v22 && v23 != 0)
      {
        ++v19;
      }

      v20 = *(v20 + 48);
    }

    while (v20);
    v25 = *&ctxt->xpathCtxt->contextSize;
    v26 = 1;
    while (1)
    {
      v27 = *(v18 + 8);
      if (v27 <= 6)
      {
        switch(v27)
        {
          case 1:
            goto LABEL_39;
          case 3:
            Template = xsltGetTemplate(ctxt, v18, 0);
            if (!Template)
            {
              v58 = ctxt->traceCode;
              if (*(v18 + 80))
              {
                if (v58 && (*v58 & 2) != 0)
                {
                  xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy text %s\n", v49, v50, v51, v52, v53, v54, *(v18 + 80));
                }
              }

              else if (v58 && (*v58 & 2) != 0)
              {
                xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy empty text\n");
              }

              if (!xsltCopyText(ctxt, ctxt->insert, v18, 0))
              {
                xsltTransformError(ctxt, 0, v18, "xsltDefaultProcessOneNode: text copy failed\n");
              }

              break;
            }

            v37 = Template;
            v55 = ctxt->traceCode;
            if (v55 && (*v55 & 2) != 0)
            {
              xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: applying template for text %s\n", v49, v50, v51, v52, v53, v54, *(v18 + 80));
            }

LABEL_53:
            v57 = ctxt->xpathCtxt;
            v57->contextSize = v19;
            v57->proximityPosition = v26;
LABEL_54:
            xsltApplyXSLTTemplate(ctxt, v18, v37->content, v37, params);
            break;
          case 4:
            v29 = xsltGetTemplate(ctxt, v18, 0);
            v36 = ctxt->traceCode;
            if (!v29)
            {
              if (v36 && (*v36 & 2) != 0)
              {
                xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy CDATA %s\n", v30, v31, v32, v33, v34, v35, *(v18 + 80));
              }

              if (!xsltCopyText(ctxt, ctxt->insert, v18, 0))
              {
                xsltTransformError(ctxt, 0, v18, "xsltDefaultProcessOneNode: cdata copy failed\n");
              }

              break;
            }

            v37 = v29;
            if (v36 && (*v36 & 2) != 0)
            {
              xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: applying template for CDATA %s\n", v30, v31, v32, v33, v34, v35, *(v18 + 80));
            }

            goto LABEL_54;
        }
      }

      else
      {
        if ((v27 - 7) >= 2)
        {
          if (v27 != 13 && v27 != 9)
          {
            goto LABEL_55;
          }

LABEL_39:
          v38 = ctxt->xpathCtxt;
          v38->contextSize = v19;
          v38->proximityPosition = v26;
          xsltProcessOneNode(ctxt, v18, params);
          goto LABEL_55;
        }

        v39 = xsltGetTemplate(ctxt, v18, 0);
        if (v39)
        {
          v37 = v39;
          v46 = *(v18 + 8);
          if (v46 == 8)
          {
            v56 = ctxt->traceCode;
            if (v56 && (*v56 & 2) != 0)
            {
              xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: template found for comment\n", v40, v41, v42, v43, v44, v45, v66);
            }
          }

          else if (v46 == 7)
          {
            v47 = ctxt->traceCode;
            if (v47)
            {
              if ((*v47 & 2) != 0)
              {
                xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: template found for PI %s\n", v40, v41, v42, v43, v44, v45, *(v18 + 16));
              }
            }
          }

          goto LABEL_53;
        }
      }

LABEL_55:
      v18 = *(v18 + 48);
      ++v26;
      if (!v18)
      {
        xpathCtxt = ctxt->xpathCtxt;
        goto LABEL_78;
      }
    }
  }

  if (v12 == 2)
  {
    v62 = *(a2 + 24);
    if (v62)
    {
      while (*(v62 + 8) != 3)
      {
        v62 = *(v62 + 48);
        if (!v62)
        {
          goto LABEL_83;
        }
      }

      v65 = ctxt->traceCode;
      if (*(v62 + 80))
      {
        if (v65 && (*v65 & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy text %s\n", *(v62 + 80));
        }
      }

      else if (v65 && (*v65 & 2) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy empty text\n");
      }

      insert = ctxt->insert;
      v15 = ctxt;
      v16 = v62;
      goto LABEL_97;
    }

LABEL_83:
    v60 = "xsltDefaultProcessOneNode: no text for attribute\n";
    goto LABEL_99;
  }

  if (v12 != 3)
  {
    return;
  }

  v13 = ctxt->traceCode;
  if (*(a2 + 80))
  {
    if (v13 && (*v13 & 2) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltDefaultProcessOneNode: copy text %s\n", *(a2 + 80));
    }

    insert = ctxt->insert;
    v15 = ctxt;
    v16 = a2;
LABEL_97:
    if (xsltCopyText(v15, insert, v16, 0))
    {
      return;
    }

    v60 = "xsltDefaultProcessOneNode: text copy failed\n";
    goto LABEL_99;
  }

  if (v13 && (*v13 & 2) != 0)
  {
    v63 = xsltGenericDebug;
    v64 = xsltGenericDebugContext;

    v63(v64, "xsltDefaultProcessOneNode: copy empty text\n", v63, a4, a5, a6, a7, a8, a9);
  }
}

void xsltApplyXSLTTemplate(uint64_t a1, xmlNode *a2, xmlNodePtr source, xsltTemplatePtr templ, xsltStackElem *a5)
{
  v69 = 0;
  if (!a1)
  {
    return;
  }

  v6 = source;
  if (templ)
  {
    if (*(a1 + 344))
    {
      started = xsltDebuggerStartSequenceConstructor(a1, a2, source, templ, &v69);
      if (!v6 || !started)
      {
        return;
      }
    }

    else if (!source)
    {
      return;
    }

    if (*(a1 + 168) == 2)
    {
      return;
    }

    v11 = *(a1 + 48);
    if (v11 >= *(a1 + 468))
    {
      xsltTransformError(a1, 0, v6, "xsltApplyXSLTTemplate: A potential infinite template recursion was detected.\nYou can adjust maxTemplateVars (--maxvars) in order to raise the maximum number of variables/params (currently set to %d).\n", *(a1 + 468));
      xsltDebug(a1, a2, v6, 0);
      *(a1 + 168) = 2;
      return;
    }

    v68 = *(a1 + 304);
    *(a1 + 304) = 0;
    v12 = *(a1 + 64);
    *(a1 + 64) = v11;
    *(a1 + 128) = a2;
    if (!*(a1 + 208))
    {
      v67 = 0;
      goto LABEL_43;
    }

    ++templ->nbCalls;
    v67 = xsltTimestamp();
    v13 = *(a1 + 228);
    if (v13)
    {
      if (*(a1 + 224) >= v13)
      {
        *(a1 + 228) = 2 * v13;
        v14 = malloc_type_realloc(*(a1 + 232), 16 * v13, 0x100004000313F17uLL);
        *(a1 + 232) = v14;
        if (!v14)
        {
          v18 = *__xmlGenericError();
          v19 = *__xmlGenericErrorContext();
          v18(v19, "realloc failed !\n");
LABEL_25:
          v20 = *(a1 + 16);
          templMax = templ->templMax;
          if (templMax)
          {
            if (templ->templNr >= templMax)
            {
              templ->templMax = 2 * templMax;
              templ->templCalledTab = malloc_type_realloc(templ->templCalledTab, 16 * templMax, 0x2004093837F09uLL);
              v22 = malloc_type_realloc(templ->templCountTab, 4 * templ->templMax, 0x100004052888210uLL);
              templ->templCountTab = v22;
              if (!templ->templCalledTab || !v22)
              {
                v23 = *__xmlGenericError();
                v24 = *__xmlGenericErrorContext();
                v23(v24, "realloc failed !\n");
                goto LABEL_43;
              }
            }
          }

          else
          {
            templ->templMax = 4;
            templ->templCalledTab = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
            v25 = malloc_type_malloc(4 * templ->templMax, 0x100004052888210uLL);
            templ->templCountTab = v25;
            if (!templ->templCalledTab || !v25)
            {
              v29 = *__xmlGenericError();
              v30 = *__xmlGenericErrorContext();
              v29(v30, "malloc failed !\n");
              goto LABEL_43;
            }
          }

          templNr = templ->templNr;
          if (templNr < 1)
          {
            LODWORD(v27) = 0;
          }

          else
          {
            v27 = 0;
            templCalledTab = templ->templCalledTab;
            while (templCalledTab[v27] != v20)
            {
              if (templNr == ++v27)
              {
                goto LABEL_41;
              }
            }

            ++templ->templCountTab[v27];
            LODWORD(templNr) = templ->templNr;
          }

          if (v27 == templNr)
          {
            templCalledTab = templ->templCalledTab;
LABEL_41:
            templCalledTab[templNr] = v20;
            templ->templCountTab[templNr] = 1;
            ++templ->templNr;
          }

LABEL_43:
          v31 = *(a1 + 28);
          if (v31)
          {
            if (*(a1 + 24) >= v31)
            {
              *(a1 + 28) = 2 * v31;
              v32 = malloc_type_realloc(*(a1 + 32), 16 * v31, 0x2004093837F09uLL);
              *(a1 + 32) = v32;
              if (!v32)
              {
                v36 = *__xmlGenericError();
                v37 = *__xmlGenericErrorContext();
                v36(v37, "realloc failed !\n");
LABEL_51:
                if (templ->name)
                {
                  v38 = *(a1 + 352);
                  if (v38)
                  {
                    if ((*v38 & 4) != 0)
                    {
                      xsltGenericDebug(xsltGenericDebugContext, "applying xsl:template '%s'\n", templ->name);
                    }
                  }
                }

                next = v6;
                while (1)
                {
                  type = v6->type;
                  if (type == XML_ELEMENT_NODE)
                  {
                    name = v6->name;
                    if (*name != 112 || !v6->psvi || !xmlStrEqual(name, "param") || v6->type != XML_ELEMENT_NODE || (ns = v6->ns) == 0 || !xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
                    {
LABEL_74:
                      xsltApplySequenceConstructor(a1, a2, next, templ);
                      v46 = *(a1 + 48);
                      v47 = *(a1 + 64);
                      if (v46 > v47)
                      {
                        do
                        {
                          v48 = *(*(a1 + 56) + 8 * v46 - 8);
                          v49 = v46;
                          if ((v48->level & 0x80000000) == 0)
                          {
                            xsltFreeStackElemList(v48);
                            v49 = *(a1 + 48);
                            v47 = *(a1 + 64);
                          }

                          v46 = v49 - 1;
                          *(a1 + 48) = v49 - 1;
                        }

                        while (v49 - 1 > v47);
                        if (v49 < 2)
                        {
                          v50 = 0;
                        }

                        else
                        {
                          v50 = *(*(a1 + 56) + 8 * v46 - 8);
                        }

                        *(a1 + 40) = v50;
                      }

                      *(a1 + 64) = v12;
                      v51 = *(a1 + 304);
                      if (v51)
                      {
                        do
                        {
                          v52 = *(v51 + 8);
                          xsltReleaseRVTList(a1, v51);
                          v51 = v52;
                        }

                        while (v52);
                      }

                      *(a1 + 304) = v68;
                      v53 = *(a1 + 24);
                      if (v53 >= 1)
                      {
                        v54 = *(a1 + 32);
                        v55 = v53 - 1;
                        *(a1 + 24) = v53 - 1;
                        if (v53 == 1)
                        {
                          v56 = 0;
                        }

                        else
                        {
                          v56 = *(v54 + 8 * v53 - 16);
                        }

                        *(a1 + 16) = v56;
                        *(v54 + 8 * v55) = 0;
                      }

                      if (*(a1 + 208))
                      {
                        v57 = xsltTimestamp();
                        v58 = *(a1 + 224);
                        v59 = v58 - 1;
                        if (v58 < 1)
                        {
                          v61 = 0;
                          v59 = *(a1 + 224);
                        }

                        else
                        {
                          *(a1 + 224) = v59;
                          v60 = *(a1 + 232);
                          if (v58 == 1)
                          {
                            v62 = 0;
                          }

                          else
                          {
                            v62 = *(v60 + 8 * v58 - 16);
                          }

                          *(a1 + 216) = v62;
                          v61 = *(v60 + 8 * v59);
                          *(v60 + 8 * v59) = 0;
                        }

                        v63 = v57 - v67;
                        v64 = __OFSUB__(v57 - v67, v61);
                        v65 = v57 - v67 - v61;
                        if ((v65 < 0) ^ v64 | (v65 == 0))
                        {
                          xsltCalibrateAdjust(v65);
                          v65 = 0;
                          v59 = *(a1 + 224);
                        }

                        templ->time += v65;
                        if (v59 >= 1)
                        {
                          v66 = *(a1 + 232) + 8 * v59;
                          *(v66 - 8) += v63;
                        }
                      }

                      if (*(a1 + 344) && v69)
                      {

                        xslDropCall();
                      }

                      return;
                    }

                    p_next = &v6->next;
                    next = v6->next;
                    if (a5)
                    {
                      psvi = v6->psvi;
                      v45 = a5;
                      while (v45->name != psvi[15] || v45->nameURI != psvi[17])
                      {
                        v45 = v45->next;
                        if (!v45)
                        {
                          goto LABEL_70;
                        }
                      }

                      xsltLocalVariablePush(a1, v45, -1);
                    }

                    else
                    {
LABEL_70:
                      xsltParseStylesheetParam(a1, v6);
                    }
                  }

                  else
                  {
                    if (type != XML_TEXT_NODE)
                    {
                      goto LABEL_74;
                    }

                    p_next = &v6->next;
                  }

                  v6 = *p_next;
                  if (!*p_next)
                  {
                    goto LABEL_74;
                  }
                }
              }
            }

            else
            {
              v32 = *(a1 + 32);
            }
          }

          else
          {
            *(a1 + 28) = 4;
            v32 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
            *(a1 + 32) = v32;
            if (!v32)
            {
              v33 = *__xmlGenericError();
              v34 = *__xmlGenericErrorContext();
              v33(v34, "malloc failed !\n");
              goto LABEL_51;
            }
          }

          v35 = *(a1 + 24);
          v32[v35] = templ;
          *(a1 + 16) = templ;
          *(a1 + 24) = v35 + 1;
          goto LABEL_51;
        }
      }

      else
      {
        v14 = *(a1 + 232);
      }
    }

    else
    {
      *(a1 + 228) = 4;
      v14 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
      *(a1 + 232) = v14;
      if (!v14)
      {
        v15 = *__xmlGenericError();
        v16 = *__xmlGenericErrorContext();
        v15(v16, "malloc failed !\n");
        goto LABEL_25;
      }
    }

    v17 = *(a1 + 224);
    v14[v17] = 0;
    *(a1 + 216) = 0;
    *(a1 + 224) = v17 + 1;
    goto LABEL_25;
  }

  xsltTransformError(a1, 0, source, "xsltApplyXSLTTemplate: Bad arguments; @templ is mandatory.\n");
}

int xsltLocalVariablePush(xsltTransformContextPtr ctxt, xsltStackElemPtr variable, int level)
{
  varsMax = ctxt->varsMax;
  if (!varsMax)
  {
    ctxt->varsMax = 10;
    v7 = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL);
    ctxt->varsTab = v7;
    if (!v7)
    {
      v12 = *__xmlGenericError();
      v13 = *__xmlGenericErrorContext();
      v14 = "malloc failed !\n";
      goto LABEL_11;
    }

    varsMax = ctxt->varsMax;
  }

  varsNr = ctxt->varsNr;
  if (varsNr >= varsMax)
  {
    v10 = 2 * varsMax;
    ctxt->varsMax = v10;
    varsTab = malloc_type_realloc(ctxt->varsTab, 8 * v10, 0x2004093837F09uLL);
    ctxt->varsTab = varsTab;
    if (varsTab)
    {
      varsNr = ctxt->varsNr;
      goto LABEL_8;
    }

    v12 = *__xmlGenericError();
    v13 = *__xmlGenericErrorContext();
    v14 = "realloc failed !\n";
LABEL_11:
    v12(v13, v14);
    return -1;
  }

  varsTab = ctxt->varsTab;
LABEL_8:
  v11 = 0;
  ctxt->varsNr = varsNr + 1;
  varsTab[varsNr] = variable;
  ctxt->vars = variable;
  variable->level = level;
  return v11;
}

void xsltApplyOneTemplate(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr list, xsltTemplatePtr templ, xsltStackElemPtr params)
{
  if (ctxt && list && ctxt->state != XSLT_STATE_STOPPED)
  {
    v7 = params;
    if (params)
    {
      varsNr = ctxt->varsNr;
      do
      {
        xsltLocalVariablePush(ctxt, v7, -1);
        v7 = v7->next;
      }

      while (v7);
      xsltApplySequenceConstructor(ctxt, node, list, templ);

      xsltLocalVariablePop(ctxt, varsNr, -2);
    }

    else
    {

      xsltApplySequenceConstructor(ctxt, node, list, templ);
    }
  }
}

void xsltApplySequenceConstructor(uint64_t a1, xmlNode *a2, xmlNode *a3, xsltTemplate *a4)
{
  v63 = 0;
  if (!a1)
  {
    return;
  }

  v4 = a4;
  if (*(a1 + 344))
  {
    started = xsltDebuggerStartSequenceConstructor(a1, a2, a3, a4, &v63);
    if (!started || !a3)
    {
      return;
    }
  }

  else
  {
    started = 0;
    if (!a3)
    {
      return;
    }
  }

  if (*(a1 + 168) == 2)
  {
    return;
  }

  v9 = *(a1 + 460);
  if (v9 >= *(a1 + 464))
  {
    xsltTransformError(a1, 0, a3, "xsltApplySequenceConstructor: A potential infinite template recursion was detected.\nYou can adjust xsltMaxDepth (--maxdepth) in order to raise the maximum number of nested template calls and variables/params (currently set to %d).\n", *(a1 + 464));
    xsltDebug(a1, a2, a3, 0);
    *(a1 + 168) = 2;
    return;
  }

  node = 0;
  v54 = 0;
  *(a1 + 460) = v9 + 1;
  v10 = *(a1 + 152);
  v57 = *(a1 + 184);
  v55 = *(a1 + 440);
  v56 = *(a1 + 128);
  limitNr = *(a1 + 48);
  v11 = a3;
  v12 = v10;
  v59 = started;
  v60 = v10;
LABEL_10:
  if (v4)
  {
    v13 = v10 == v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  v61 = v14;
  while (v11)
  {
    v15 = v11;
    if (linkedOnOrAfterFall2022OSVersions())
    {
      v16 = *(a1 + 472);
      if (v16)
      {
        v17 = *(a1 + 480);
        if (v17 >= v16)
        {
          xsltTransformError(a1, 0, v15, "xsltApplySequenceConstructor: Operation limit exceeded\n");
          *(a1 + 168) = 2;
          break;
        }

        *(a1 + 480) = v17 + 1;
      }
    }

    *(a1 + 184) = v15;
    if (!v12)
    {
      v51 = *(a1 + 352);
      if (v51 && (*v51 & 4) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltApplySequenceConstructor: insert == NULL !\n");
      }

      break;
    }

    if (started != v15 && *(a1 + 344))
    {
      xslHandleDebugger(v15, a2, v4, a1);
    }

    v18 = *(v15 + 8);
    if (v18 != 1)
    {
      goto LABEL_36;
    }

    v19 = *(v15 + 72);
    if (!v19)
    {
      goto LABEL_42;
    }

    if (!xmlStrEqual(*(v19 + 16), "http://www.w3.org/1999/XSL/Transform"))
    {
      v18 = *(v15 + 8);
LABEL_36:
      if (v18 != 1)
      {
        if (v18 == 3)
        {
          v41 = *(a1 + 352);
          if (*(v15 + 16) == MEMORY[0x29EDC97C0])
          {
            if (v41)
            {
              v24 = "xsltApplySequenceConstructor: copy unescaped text %s\n";
              if ((*v41 & 4) != 0)
              {
                goto LABEL_87;
              }
            }
          }

          else if (v41)
          {
            v24 = "xsltApplySequenceConstructor: copy text %s\n";
            if ((*v41 & 4) != 0)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          if (v18 != 4)
          {
            goto LABEL_89;
          }

          v23 = *(a1 + 352);
          if (!v23)
          {
            goto LABEL_88;
          }

          v24 = "xsltApplySequenceConstructor: copy CDATA text %s\n";
          if ((*v23 & 4) == 0)
          {
            goto LABEL_88;
          }

LABEL_87:
          xsltGenericDebug(xsltGenericDebugContext, v24, *(v15 + 80));
        }

LABEL_88:
        if (!xsltCopyText(a1, v12, v15, *(a1 + 384)))
        {
          break;
        }

        goto LABEL_89;
      }

LABEL_42:
      v25 = *(v15 + 72);
      if (!v25 || (v26 = *(v15 + 104)) == 0)
      {
        v29 = *(a1 + 352);
        if (v29 && (*v29 & 4) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltApplySequenceConstructor: copy node %s\n", *(v15 + 16));
        }

        v30 = *(a1 + 184);
        *(a1 + 184) = v15;
        node = xsltShallowCopyElem(a1, v15, v12, 1);
        if (!node)
        {
          break;
        }

        if (v61)
        {
          v31 = *(a1 + 16);
          if (v31)
          {
            if (*(v31 + 88))
            {
              v53 = v4;
              if (*(v31 + 80) >= 1)
              {
                v32 = 0;
                do
                {
                  v33 = *(*(v31 + 88) + 8 * v32);
                  Import = *a1;
                  if (*a1)
                  {
                    while (1)
                    {
                      nsAliases = Import->nsAliases;
                      if (nsAliases)
                      {
                        v36 = xmlHashLookup(nsAliases, *(v33 + 16));
                        if (v36)
                        {
                          break;
                        }
                      }

                      Import = xsltNextImport(Import);
                      if (!Import)
                      {
                        goto LABEL_59;
                      }
                    }

                    v37 = v36;
                  }

                  else
                  {
LABEL_59:
                    v37 = 0;
                  }

                  if (v37 != -1)
                  {
                    if (!v37)
                    {
                      v37 = *(v33 + 16);
                    }

                    v38 = xmlSearchNs(node->doc, node, *(v33 + 24));
                    if (!v38 || !xmlStrEqual(v38->href, v37))
                    {
                      xmlNewNs(node, v37, *(v33 + 24));
                    }
                  }

                  ++v32;
                  v31 = *(a1 + 16);
                }

                while (v32 < *(v31 + 80));
              }

              ns = node->ns;
              v4 = v53;
              started = v59;
              v10 = v60;
              if (ns)
              {
                node->ns = xsltGetNamespace(a1, v15, ns, node);
              }
            }
          }
        }

        v40 = *(v15 + 88);
        if (v40)
        {
          xsltAttrListTemplateProcess(a1, node, v40);
        }

        *(a1 + 184) = v30;
LABEL_89:
        v11 = *(v15 + 24);
        if (v11 && v11->type != XML_ENTITY_DECL)
        {
          ++v54;
          if (node)
          {
            v12 = node;
          }

          goto LABEL_10;
        }

        goto LABEL_122;
      }

      v27 = *(a1 + 184);
      *(a1 + 184) = v15;
      if (v26 == xsltExtMarker)
      {
        v28 = xsltExtElementLookup(a1, *(v15 + 16), *(v25 + 16));
      }

      else
      {
        v28 = *(v26 + 16);
      }

      v45 = *(a1 + 352);
      if (v28)
      {
        if (v45 && (*v45 & 4) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltApplySequenceConstructor: extension construct %s\n", *(v15 + 16));
        }

        if (*(v15 + 104) == xsltExtMarker)
        {
          *(a1 + 328) = 0;
        }

        *(a1 + 152) = v12;
        (v28)(a1, a2, v15);
        if (v55 != *(a1 + 440))
        {
          xsltReleaseLocalRVTs(a1, v55);
        }

        v10 = v60;
        *(a1 + 152) = v60;
      }

      else
      {
        if (v45 && (*v45 & 4) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltApplySequenceConstructor: unknown extension %s\n", *(v15 + 16));
        }

        *(a1 + 152) = v12;
        v46 = *(v15 + 24);
        v10 = v60;
        if (v46)
        {
          v47 = 1;
          do
          {
            while (*(v46 + 8) == 1)
            {
              v48 = *(v46 + 72);
              if (!v48 || !xmlStrEqual(*(v48 + 16), "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(*(v46 + 16), "fallback"))
              {
                break;
              }

              xsltApplySequenceConstructor(a1, a2, *(v46 + 24), 0);
              v47 = 0;
              v46 = *(v46 + 48);
              if (!v46)
              {
                *(a1 + 152) = v60;
                started = v59;
                goto LABEL_121;
              }
            }

            v46 = *(v46 + 48);
          }

          while (v46);
          *(a1 + 152) = v60;
          started = v59;
          if ((v47 & 1) == 0)
          {
            goto LABEL_121;
          }
        }

        else
        {
          *(a1 + 152) = v60;
          started = v59;
        }

        xsltTransformError(a1, 0, v15, "xsltApplySequenceConstructor: failed to find extension %s\n", *(v15 + 16));
      }

LABEL_121:
      *(a1 + 184) = v27;
      goto LABEL_122;
    }

    v20 = *(v15 + 104);
    if (!v20)
    {
      if (!xmlStrEqual(*(v15 + 16), "message"))
      {
        *(a1 + 152) = v12;
        if (!xsltApplyFallbacks(a1, a2, v15))
        {
          xsltGenericError(xsltGenericErrorContext, "xsltApplySequenceConstructor: %s was not compiled\n", *(v15 + 16));
        }

        *(a1 + 152) = v10;
        goto LABEL_122;
      }

LABEL_116:
      xsltMessage(a1, a2, v15);
      goto LABEL_122;
    }

    if ((xsltGetSourceNodeFlags(v15) & 2) != 0 || (v21 = *(v20 + 16)) == 0)
    {
      if (!xmlStrEqual(*(v15 + 16), "variable"))
      {
        if (!xmlStrEqual(*(v15 + 16), "message"))
        {
          xsltTransformError(a1, 0, v15, "Unexpected XSLT element '%s'.\n", *(v15 + 16));
          goto LABEL_122;
        }

        goto LABEL_116;
      }

      v42 = *(a1 + 40);
      v43 = *(a1 + 184);
      *(a1 + 184) = v15;
      xsltParseStylesheetVariable(a1, v15);
      *(a1 + 184) = v43;
      v44 = *(a1 + 40);
      if (v42 != v44)
      {
        *(v44 + 72) = v54;
      }
    }

    else
    {
      v22 = *(a1 + 184);
      *(a1 + 184) = v15;
      *(a1 + 152) = v12;
      v21(a1, a2, v15, v20);
      if (v55 != *(a1 + 440))
      {
        xsltReleaseLocalRVTs(a1, v55);
      }

      *(a1 + 152) = v10;
      *(a1 + 184) = v22;
    }

    started = v59;
LABEL_122:
    if (*(a1 + 168) == 2)
    {
      break;
    }

    v11 = *(v15 + 48);
    if (!v11)
    {
      v49 = v54;
      while (1)
      {
        v15 = *(v15 + 40);
        v50 = v49 - 1;
        if (*(a1 + 48) > limitNr && *(*(a1 + 40) + 72) >= v49)
        {
          xsltLocalVariablePop(a1, limitNr, v49 - 1);
        }

        v12 = *(v12 + 40);
        if (!v15 || v15 == a3->parent)
        {
          break;
        }

        v11 = *(v15 + 48);
        v49 = v50;
        if (v11)
        {
          goto LABEL_134;
        }
      }

      v11 = 0;
LABEL_134:
      v54 = v50;
      v10 = v60;
      goto LABEL_10;
    }
  }

  if (*(a1 + 48) > limitNr)
  {
    xsltLocalVariablePop(a1, limitNr, -1);
  }

  *(a1 + 128) = v56;
  *(a1 + 184) = v57;
  *(a1 + 152) = v10;
  --*(a1 + 460);
  if (*(a1 + 344))
  {
    v52 = v63 == 0;
  }

  else
  {
    v52 = 1;
  }

  if (!v52)
  {

    xslDropCall();
  }
}

void xsltDocumentElem(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (!ctxt || !node || !inst || !comp)
  {
    return;
  }

  next = comp[5].next;
  if (next)
  {
    v8 = xmlStrdup(next);
    goto LABEL_7;
  }

  if (xmlStrEqual(inst->name, "output"))
  {
    xsltGenericDebug(xsltGenericDebugContext, "Found saxon:output extension\n");
    v10 = xsltEvalAttrValueTemplate(ctxt, inst, "file", "http://icl.com/saxon");
    if (v10)
    {
      goto LABEL_13;
    }

    v34 = "http://icl.com/saxon";
  }

  else
  {
    if (!xmlStrEqual(inst->name, "write"))
    {
      if (!xmlStrEqual(inst->name, "document"))
      {
        goto LABEL_8;
      }

      v35 = ctxt;
      v36 = inst;
      v34 = 0;
      goto LABEL_55;
    }

    xsltGenericDebug(xsltGenericDebugContext, "Found xalan:write extension\n");
    v31 = xsltEvalAttrValueTemplate(ctxt, inst, "select", "org.apache.xalan.xslt.extensions.Redirect");
    if (v31)
    {
      v32 = v31;
      v33 = xmlXPathCtxtCompile(ctxt->xpathCtxt, v31);
      v9 = xsltEvalXPathString(ctxt, v33);
      xmlXPathFreeCompExpr(v33);
      free(v32);
      if (v9)
      {
        goto LABEL_14;
      }
    }

    v10 = xsltEvalAttrValueTemplate(ctxt, inst, "file", "org.apache.xalan.xslt.extensions.Redirect");
    if (v10)
    {
LABEL_13:
      v9 = v10;
      goto LABEL_14;
    }

    v34 = "org.apache.xalan.xslt.extensions.Redirect";
  }

  v35 = ctxt;
  v36 = inst;
LABEL_55:
  v8 = xsltEvalAttrValueTemplate(v35, v36, "href", v34);
LABEL_7:
  v9 = v8;
  if (!v8)
  {
LABEL_8:

    xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: href/URI-Reference not found\n");
    return;
  }

LABEL_14:
  v11 = xmlBuildURI(v9, ctxt->outputFile);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v27 = xmlURIEscapeStr(v9, ":/.?,");
    if (!v27 || (v28 = v27, v12 = xmlBuildURI(v27, ctxt->outputFile), free(v28), !v12))
    {
      xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: URL computation failed for %s\n", v9);
      v29 = v9;
      goto LABEL_47;
    }
  }

  sec = ctxt->sec;
  if (!sec || (v14 = xsltCheckWrite(sec, ctxt, v12), v14 > 0))
  {
    v92 = node;
    v94 = 0;
    name = 0;
    outputFile = ctxt->outputFile;
    v93 = *&ctxt->output;
    type = ctxt->type;
    ctxt->outputFile = v12;
    v17 = xsltNewStylesheet();
    if (!v17)
    {
      xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: out of memory\n");
      v30 = 0;
LABEL_204:
      *&ctxt->output = v93;
      ctxt->type = type;
      ctxt->outputFile = outputFile;
      free(v9);
      free(v12);
      if (v17)
      {
        xsltFreeStylesheet(v17);
      }

      if (v30)
      {
        xmlFreeDoc(v30);
      }

      return;
    }

    v90 = outputFile;
    v18 = xsltEvalAttrValueTemplate(ctxt, inst, "version", 0);
    if (v18)
    {
      v19 = v18;
      version = v17->version;
      if (version)
      {
        free(version);
      }

      v17->version = v19;
    }

    v21 = xsltEvalAttrValueTemplate(ctxt, inst, "encoding", 0);
    if (v21)
    {
      v22 = v21;
      encoding = v17->encoding;
      if (encoding)
      {
        free(encoding);
      }

      v17->encoding = v22;
    }

    name = xsltEvalAttrValueTemplate(ctxt, inst, "method", 0);
    if (name)
    {
      method = v17->method;
      if (method)
      {
        free(method);
      }

      v17->method = 0;
      methodURI = v17->methodURI;
      if (methodURI)
      {
        free(methodURI);
      }

      v17->methodURI = 0;
      QNameURI = xsltGetQNameURI(inst, &name);
      if (name)
      {
        if (QNameURI)
        {
          v17->method = name;
          v17->methodURI = xmlStrdup(QNameURI);
        }

        else if (xmlStrEqual(name, "xml") || xmlStrEqual(name, "html") || xmlStrEqual(name, "text"))
        {
          v17->method = name;
        }

        else
        {
          xsltTransformError(ctxt, 0, inst, "invalid value for method: %s\n", name);
          ++v17->warnings;
        }
      }

      else
      {
        ++v17->errors;
      }
    }

    v37 = xsltEvalAttrValueTemplate(ctxt, inst, "doctype-system", 0);
    name = v37;
    if (v37)
    {
      if (v17->doctypeSystem)
      {
        free(v17->doctypeSystem);
        v37 = name;
      }

      v17->doctypeSystem = v37;
    }

    v38 = xsltEvalAttrValueTemplate(ctxt, inst, "doctype-public", 0);
    name = v38;
    if (v38)
    {
      if (v17->doctypePublic)
      {
        free(v17->doctypePublic);
        v38 = name;
      }

      v17->doctypePublic = v38;
    }

    v39 = xsltEvalAttrValueTemplate(ctxt, inst, "standalone", 0);
    name = v39;
    if (v39)
    {
      if (xmlStrEqual(v39, "yes"))
      {
        v17->standalone = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        v17->standalone = 0;
      }

      else
      {
        xsltTransformError(ctxt, 0, inst, "invalid value for standalone: %s\n", name);
        ++v17->warnings;
      }

      free(name);
    }

    v40 = xsltEvalAttrValueTemplate(ctxt, inst, "indent", 0);
    name = v40;
    if (v40)
    {
      if (xmlStrEqual(v40, "yes"))
      {
        v17->indent = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        v17->indent = 0;
      }

      else
      {
        xsltTransformError(ctxt, 0, inst, "invalid value for indent: %s\n", name);
        ++v17->warnings;
      }

      free(name);
    }

    v41 = xsltEvalAttrValueTemplate(ctxt, inst, "omit-xml-declaration", 0);
    name = v41;
    if (v41)
    {
      if (xmlStrEqual(v41, "yes"))
      {
        v17->omitXmlDeclaration = 1;
      }

      else if (xmlStrEqual(name, "no"))
      {
        v17->omitXmlDeclaration = 0;
      }

      else
      {
        xsltTransformError(ctxt, 0, inst, "invalid value for omit-xml-declaration: %s\n", name);
        ++v17->warnings;
      }

      free(name);
    }

    v42 = xsltEvalAttrValueTemplate(ctxt, inst, "cdata-section-elements", 0);
    v91 = v9;
    URI = v12;
    v88 = type;
    if (v42)
    {
      v43 = v42;
      if (!v17->stripSpaces)
      {
        v44 = xmlHashCreate(10);
        v17->stripSpaces = v44;
        if (!v44)
        {
          free(v43);
          return;
        }
      }

      v94 = v43;
      v45 = *v43;
      if (*v43)
      {
        for (i = v43; ; ++i)
        {
          while (v45 > 0x20)
          {
LABEL_98:
            v47 = 0;
            while (v45 > 0x20 || ((1 << v45) & 0x100002601) == 0)
            {
              v45 = i[++v47];
            }

            if (v47 >= 0x7FFFFFFF)
            {
              v48 = 0x7FFFFFFF;
            }

            else
            {
              v48 = v47;
            }

            v94 = xmlStrndup(i, v48);
            if (v94)
            {
              v49 = xsltGetQNameURI(inst, &v94);
              xmlHashAddEntry2(v17->stripSpaces, v94, v49, "cdata");
              free(v94);
            }

            i += v47;
            v94 = i;
            v45 = *i;
            if (!*i)
            {
              goto LABEL_108;
            }
          }

          if (((1 << v45) & 0x100002600) == 0)
          {
            if (!v45)
            {
              break;
            }

            goto LABEL_98;
          }

          v94 = i + 1;
          v45 = i[1];
        }
      }

LABEL_108:
      free(v43);
    }

    Import = v17;
    do
    {
      v51 = Import->method;
      if (v51)
      {
        break;
      }

      Import = xsltNextImport(Import);
    }

    while (Import);
    v52 = v17;
    do
    {
      doctypePublic = v52->doctypePublic;
      if (doctypePublic)
      {
        break;
      }

      v52 = xsltNextImport(v52);
    }

    while (v52);
    v54 = v17;
    do
    {
      doctypeSystem = v54->doctypeSystem;
      if (doctypeSystem)
      {
        break;
      }

      v54 = xsltNextImport(v54);
    }

    while (v54);
    v56 = v17;
    do
    {
      v57 = v56->version;
      if (v57)
      {
        break;
      }

      v56 = xsltNextImport(v56);
    }

    while (v56);
    v58 = v17;
    do
    {
      v59 = v58->encoding;
      if (v59)
      {
        break;
      }

      v58 = xsltNextImport(v58);
    }

    while (v58);
    if (!v51 || xmlStrEqual(v51, "xml"))
    {
      ctxt->type = XSLT_OUTPUT_XML;
      goto LABEL_127;
    }

    if (xmlStrEqual(v51, "html"))
    {
      ctxt->type = XSLT_OUTPUT_HTML;
      if (doctypePublic | doctypeSystem)
      {
        v61 = htmlNewDoc(doctypeSystem, doctypePublic);
        goto LABEL_146;
      }

      if (v57)
      {
        v62 = v9;
        v63 = off_29F27B070;
        v64 = 10;
        while (xmlStrcasecmp(v57, *(v63 - 2)))
        {
          v63 += 3;
          if (!--v64)
          {
            doctypePublic = 0;
            doctypeSystem = 0;
            goto LABEL_144;
          }
        }

        doctypePublic = *(v63 - 1);
        doctypeSystem = *v63;
LABEL_144:
        v9 = v62;
      }

      else
      {
        doctypePublic = 0;
        doctypeSystem = 0;
      }
    }

    else
    {
      if (!xmlStrEqual(v51, "xhtml"))
      {
        if (!xmlStrEqual(v51, "text"))
        {
          xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: unsupported method (%s)\n", v51);
          v30 = 0;
LABEL_173:
          v12 = URI;
          outputFile = v90;
          type = v88;
          goto LABEL_204;
        }

        ctxt->type = XSLT_OUTPUT_TEXT;
LABEL_127:
        v30 = xmlNewDoc(v17->version);
        if (v30)
        {
          dict = ctxt->dict;
          v30->dict = dict;
          xmlDictReference(dict);
          xsltGenericDebug(xsltGenericDebugContext, "reusing transformation dict for output\n");
          goto LABEL_148;
        }

        goto LABEL_173;
      }

      xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: unsupported method xhtml\n");
      ctxt->type = XSLT_OUTPUT_HTML;
    }

    v61 = htmlNewDocNoDtD(doctypeSystem, doctypePublic);
LABEL_146:
    v30 = v61;
    if (v61)
    {
      v65 = ctxt->dict;
      v30->dict = v65;
      xmlDictReference(v65);
LABEL_148:
      v30->charset = 1;
      if (v59)
      {
        v30->encoding = xmlStrdup(v59);
      }

      ctxt->output = v30;
      ctxt->insert = v30;
      xsltApplySequenceConstructor(ctxt, v92, inst->children, 0);
      RootElement = xmlDocGetRootElement(v30);
      if (!RootElement)
      {
        goto LABEL_193;
      }

      v67 = RootElement;
      ns = RootElement->ns;
      if (!ns || (prefix = ns->prefix) == 0 || (v70 = xmlDictQLookup(ctxt->dict, prefix, RootElement->name)) == 0)
      {
        v70 = v67->name;
      }

      if (!v51 && !v67->ns && !xmlStrcasecmp(v67->name, "html"))
      {
        children = v30->children;
        if (children && children != v67)
        {
          do
          {
            v72 = children->type;
            if (v72 == XML_TEXT_NODE)
            {
              if (!xmlIsBlankNode(children))
              {
                break;
              }
            }

            else if (v72 == XML_ELEMENT_NODE)
            {
              break;
            }

            children = children->next;
            if (children)
            {
              v73 = children == v67;
            }

            else
            {
              v73 = 1;
            }
          }

          while (!v73);
        }

        if (children == v67)
        {
          ctxt->type = XSLT_OUTPUT_HTML;
          v30->type = XML_HTML_DOCUMENT_NODE;
          if (doctypePublic | doctypeSystem)
          {
            v74 = v30;
            v75 = v70;
            v76 = doctypePublic;
            v77 = doctypeSystem;
          }

          else
          {
            if (!v57)
            {
              goto LABEL_184;
            }

            v78 = off_29F27B070;
            v79 = 10;
            while (xmlStrcasecmp(v57, *(v78 - 2)))
            {
              v78 += 3;
              if (!--v79)
              {
                v76 = 0;
                v77 = 0;
                goto LABEL_181;
              }
            }

            v76 = *(v78 - 1);
            v77 = *v78;
LABEL_181:
            if (!(v76 | v77))
            {
              goto LABEL_184;
            }

            v74 = v30;
            v75 = v70;
          }

          v30->intSubset = xmlCreateIntSubset(v74, v75, v76, v77);
        }
      }

LABEL_184:
      if (ctxt->type == XSLT_OUTPUT_XML)
      {
        v80 = v17;
        do
        {
          v81 = v80->doctypePublic;
          if (v81)
          {
            break;
          }

          v80 = xsltNextImport(v80);
        }

        while (v80);
        v82 = v17;
        while (1)
        {
          v83 = v82->doctypeSystem;
          if (v83)
          {
            break;
          }

          v82 = xsltNextImport(v82);
          if (!v82)
          {
            if (!v81)
            {
              goto LABEL_193;
            }

            break;
          }
        }

        v30->intSubset = xmlCreateIntSubset(v30, v70, v81, v83);
      }

LABEL_193:
      v84 = xsltEvalAttrValueTemplate(ctxt, inst, "append", 0);
      name = v84;
      v9 = v91;
      v12 = URI;
      type = v88;
      if (v84)
      {
        if (xmlStrEqual(v84, "true") || xmlStrEqual(name, "yes"))
        {
          v17->omitXmlDeclaration = 1;
          free(name);
          v85 = fopen(URI, "ab");
          if (!v85)
          {
            goto LABEL_202;
          }

          v86 = v85;
          v87 = xsltSaveResultToFile(v85, v30, v17);
          fclose(v86);
LABEL_200:
          if ((v87 & 0x80000000) == 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "Wrote %d bytes to %s\n", v87, URI);
LABEL_203:
            outputFile = v90;
            goto LABEL_204;
          }

LABEL_202:
          xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: unable to save to %s\n", URI);
          goto LABEL_203;
        }

        v17->omitXmlDeclaration = 0;
        free(name);
      }

      v87 = xsltSaveResultToFilename(URI, v30, v17, 0);
      goto LABEL_200;
    }

    goto LABEL_173;
  }

  if (!v14)
  {
    xsltTransformError(ctxt, 0, inst, "xsltDocumentElem: write rights for %s denied\n", v12);
  }

  free(v9);
  v29 = v12;
LABEL_47:

  free(v29);
}

void xsltSort(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (comp)
  {
    xsltTransformError(ctxt, 0, inst, "xsl:sort : improper use this should not be reached\n");
  }

  else
  {
    xsltTransformError(ctxt, 0, inst, "xsl:sort : compilation failed\n");
  }
}

void xsltCopy(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  insert = ctxt->insert;
  if (!insert)
  {
    goto LABEL_40;
  }

  type = node->type;
  if (type <= XML_TEXT_NODE)
  {
    switch(type)
    {
      case XML_ELEMENT_NODE:
        traceCode = ctxt->traceCode;
        v17 = ctxt->insert;
        if (traceCode)
        {
          v17 = ctxt->insert;
          if ((*traceCode & 8) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: node %s\n", node->name);
            v17 = ctxt->insert;
          }
        }

        ctxt->insert = xsltShallowCopyElem(ctxt, node, v17, 0);
        v18 = comp[2].inst;
        if (v18)
        {
          xsltApplyAttributeSet(ctxt, node, inst, v18);
        }

        break;
      case XML_ATTRIBUTE_NODE:
        v21 = ctxt->traceCode;
        v22 = ctxt->insert;
        if (v21)
        {
          v22 = ctxt->insert;
          if ((*v21 & 8) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: attribute %s\n", node->name);
            v22 = ctxt->insert;
          }
        }

        xsltShallowCopyAttr(ctxt, inst, v22, node);
        break;
      case XML_TEXT_NODE:
        v12 = ctxt->traceCode;
        if (v12 && (*v12 & 8) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: text %s\n", inst);
        }

        goto LABEL_30;
      default:
        break;
    }
  }

  else
  {
    if (type <= XML_PI_NODE)
    {
      if (type != XML_CDATA_SECTION_NODE)
      {
        if (type != XML_PI_NODE)
        {
          goto LABEL_40;
        }

        v9 = ctxt->traceCode;
        v10 = ctxt->insert;
        if (v9)
        {
          v10 = ctxt->insert;
          if ((*v9 & 8) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: PI %s\n", node->name);
            v10 = ctxt->insert;
          }
        }

        v11 = xmlNewDocPI(v10->doc, node->name, node->content);
        goto LABEL_35;
      }

      v19 = ctxt->traceCode;
      if (v19 && (*v19 & 8) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: CDATA text %s\n", inst);
      }

LABEL_30:
      xsltCopyText(ctxt, ctxt->insert, node, 0);
      goto LABEL_40;
    }

    if (type == XML_COMMENT_NODE)
    {
      v20 = ctxt->traceCode;
      if (v20 && (*v20 & 8) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: comment\n", inst, comp);
      }

      v11 = xmlNewComment(node->content);
LABEL_35:
      xsltAddChild(ctxt->insert, v11);
      goto LABEL_40;
    }

    if (type == XML_NAMESPACE_DECL)
    {
      v13 = ctxt->traceCode;
      v14 = ctxt->insert;
      if (v13)
      {
        v14 = ctxt->insert;
        if ((*v13 & 8) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltCopy: namespace declaration\n", v14, comp);
          v14 = ctxt->insert;
        }
      }

      xsltShallowCopyNsNode(ctxt, inst, v14, node);
    }
  }

LABEL_40:
  v23 = node->type;
  v24 = v23 > XML_HTML_DOCUMENT_NODE;
  v25 = (1 << v23) & 0x2202;
  if (!v24 && v25 != 0)
  {
    xsltApplySequenceConstructor(ctxt, ctxt->node, inst->children, 0);
  }

  ctxt->insert = insert;
}

xmlNode *xsltCopyText(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 8);
  if ((v4 - 3) > 1 || !*(a3 + 80))
  {
    return 0;
  }

  if (v4 == 4)
  {
    v9 = *(a1 + 352);
    if (v9 && (*v9 & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltCopyText: copy CDATA text %s\n");
    }
  }

  else
  {
    v10 = *(a1 + 352);
    if (*(a3 + 16) == MEMORY[0x29EDC97C0])
    {
      if (v10 && (*v10 & 1) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltCopyText: copy unescaped text %s\n");
      }
    }

    else if (v10 && (*v10 & 1) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltCopyText: copy text %s\n");
    }
  }

  if (!a2 || !*(a2 + 24))
  {
    *(a1 + 328) = 0;
  }

  v11 = *(*a1 + 56);
  if (v11 && a2 && !*(a1 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      goto LABEL_25;
    }

    v12 = *(a2 + 72);
    if (!v12)
    {
      if (xmlHashLookup2(v11, *(a2 + 16), 0))
      {
        goto LABEL_46;
      }

      v12 = *(a2 + 72);
      if (!v12)
      {
        goto LABEL_25;
      }

      v11 = *(*a1 + 56);
    }

    if (!xmlHashLookup2(v11, *(a2 + 16), *(v12 + 16)))
    {
      goto LABEL_25;
    }

LABEL_46:
    v30 = *(a2 + 32);
    if (!v30 || *(v30 + 8) != 4)
    {
      v31 = xmlStrlen(*(a3 + 80));
      v32 = xmlNewCDataBlock(*(a1 + 144), *(a3 + 80), v31);
      v20 = v32;
      if (!v32)
      {
        goto LABEL_53;
      }

      *(a1 + 328) = v32->content;
      *(a1 + 336) = v31;
      *(a1 + 340) = v31;
      goto LABEL_38;
    }

    v23 = *(a3 + 80);
    v24 = xmlStrlen(v23);
    v25 = a1;
    v26 = v30;
    goto LABEL_49;
  }

  if (!a2)
  {
    goto LABEL_34;
  }

LABEL_25:
  v13 = *(a2 + 32);
  if (v13)
  {
    v14 = *(v13 + 8);
    if (v14 == 4)
    {
      v15 = *(a3 + 16);
      v16 = MEMORY[0x29EDC97C0];
      goto LABEL_30;
    }

    if (v14 == 3)
    {
      v15 = *(v13 + 16);
      v16 = *(a3 + 16);
LABEL_30:
      if (v15 != v16)
      {
        goto LABEL_31;
      }

      v23 = *(a3 + 80);
      v24 = xmlStrlen(v23);
      v25 = a1;
      v26 = v13;
LABEL_49:
      v22 = xsltAddTextString(v25, v26, v23, v24);
LABEL_50:
      v20 = v22;
      if (v22)
      {
        content = v22->content;
        goto LABEL_52;
      }

LABEL_53:
      xsltTransformError(a1, 0, a2, "Internal error in xsltCopyText(): Failed to copy the string.\n");
      *(a1 + 168) = 2;
      return v20;
    }
  }

LABEL_31:
  if (a4)
  {
    v17 = *(a2 + 64);
    if (v17)
    {
      if (*(v17 + 152) == *(a1 + 368))
      {
        v27 = xmlNewTextLen(0, 0);
        v20 = v27;
        if (!v27)
        {
          goto LABEL_53;
        }

        if (*(a3 + 16) == MEMORY[0x29EDC97C0])
        {
          v27->name = MEMORY[0x29EDC97C0];
        }

        v28 = xmlDictOwns(*(a1 + 368), *(a3 + 80));
        v29 = *(a3 + 80);
        if (v28)
        {
          v20->content = v29;
LABEL_59:
          *(a1 + 328) = 0;
LABEL_38:
          v20->doc = *(a2 + 64);
          v22 = xmlAddChild(a2, v20);
          goto LABEL_50;
        }

        v33 = xmlStrdup(v29);
        v20->content = v33;
        if (v33)
        {
          goto LABEL_59;
        }

        return 0;
      }
    }
  }

LABEL_34:
  v18 = xmlStrlen(*(a3 + 80));
  v19 = xmlNewTextLen(*(a3 + 80), v18);
  v20 = v19;
  if (!v19)
  {
    goto LABEL_53;
  }

  if (*(a3 + 16) == MEMORY[0x29EDC97C0])
  {
    v19->name = MEMORY[0x29EDC97C0];
  }

  content = v19->content;
  *(a1 + 328) = content;
  *(a1 + 336) = v18;
  *(a1 + 340) = v18;
  if (a2)
  {
    goto LABEL_38;
  }

LABEL_52:
  if (!content)
  {
    goto LABEL_53;
  }

  return v20;
}

xmlNode *xsltShallowCopyElem(xsltTransformContext *a1, xmlNodePtr node, uint64_t a3, int a4)
{
  v4 = 0;
  if (!a3)
  {
    return v4;
  }

  type = node->type;
  if (type == XML_DTD_NODE)
  {
    return v4;
  }

  if (type - 3 > 1)
  {
    v11 = xmlDocCopyNode(node, *(a3 + 64), 0);
    if (v11)
    {
      v11->doc = a1->output;
      v12 = xmlAddChild(a3, v11);
      v4 = v12;
      if (v12)
      {
        if (node->type == XML_ELEMENT_NODE)
        {
          nsDef = node->nsDef;
          if (nsDef)
          {
            if (!a4)
            {
              xsltCopyNamespaceListInternal(v12, node->nsDef);
              ns = node->ns;
              if (ns)
              {
                goto LABEL_19;
              }

              goto LABEL_21;
            }

            xsltCopyNamespaceList(a1, v12, nsDef);
          }

          ns = node->ns;
          if (ns)
          {
            if (a4)
            {
              Namespace = xsltGetNamespace(a1, node, ns, v4);
LABEL_20:
              v4->ns = Namespace;
              return v4;
            }

LABEL_19:
            Namespace = xsltGetSpecialNamespace(a1, node, ns->href, ns->prefix, v4);
            goto LABEL_20;
          }

LABEL_21:
          if (*(a3 + 8) == 1 && *(a3 + 72))
          {
            xsltGetSpecialNamespace(a1, node, 0, 0, v4);
          }
        }
      }

      else
      {
        xsltTransformError(a1, 0, node, "xsltShallowCopyElem: copy failed\n");
      }
    }

    else
    {
      xsltTransformError(a1, 0, node, "xsltShallowCopyElem: copy %s failed\n", node->name);
      return 0;
    }

    return v4;
  }

  return xsltCopyText(a1, a3, node, 0);
}

xmlAttrPtr xsltShallowCopyAttr(xsltTransformContextPtr ctxt, xmlNodePtr node, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*(a3 + 8) != 1)
  {
    xsltTransformError(ctxt, 0, node, "Cannot add an attribute node to a non-element node.\n");
    return 0;
  }

  if (*(a3 + 24))
  {
    xsltTransformError(ctxt, 0, node, "Attribute nodes must be added before any child nodes to an element.\n");
    return 0;
  }

  String = xmlNodeListGetString(*(a4 + 64), *(a4 + 24), 1);
  v11 = *(a4 + 72);
  if (v11)
  {
    SpecialNamespace = xsltGetSpecialNamespace(ctxt, node, *(v11 + 16), *(v11 + 24), a3);
    if (!SpecialNamespace)
    {
      v13 = *(*(a4 + 72) + 16);
      xsltTransformError(ctxt, 0, node, "Namespace fixup error: Failed to acquire an in-scope namespace binding of the copied attribute '{%s}%s'.\n", v13, *(a4 + 16));
    }
  }

  else
  {
    SpecialNamespace = 0;
  }

  v7 = xmlSetNsProp(a3, SpecialNamespace, *(a4 + 16), String);
  if (String)
  {
    free(String);
  }

  return v7;
}

xmlNsPtr xsltShallowCopyNsNode(xsltTransformContext *a1, xmlNodePtr node, xmlNodePtr a3, uint64_t a4)
{
  if (!a3 || a3->type != XML_ELEMENT_NODE)
  {
    return 0;
  }

  if (a3->children)
  {
    xsltTransformError(a1, 0, node, "Namespace nodes must be added before any child nodes are added to an element.\n");
    return 0;
  }

  v7 = *(a4 + 24);
  if (v7)
  {
    if (*v7 == 120 && xmlStrEqual(v7, "xml"))
    {
      return 0;
    }
  }

  else if (!a3->ns)
  {
    return 0;
  }

  nsDef = a3->nsDef;
  if (nsDef)
  {
    while (1)
    {
      prefix = nsDef->prefix;
      v10 = *(a4 + 24);
      if ((prefix == 0) != (v10 != 0) && (prefix == v10 || xmlStrEqual(prefix, v10)))
      {
        break;
      }

      nsDef = nsDef->next;
      if (!nsDef)
      {
        goto LABEL_16;
      }
    }

    xmlStrEqual(nsDef->href, *(a4 + 16));
    return 0;
  }

LABEL_16:
  v11 = xmlSearchNs(a3->doc, a3, *(a4 + 24));
  if (v11 && xmlStrEqual(v11->href, *(a4 + 16)))
  {
    return 0;
  }

  v12 = *(a4 + 16);
  v13 = *(a4 + 24);

  return xmlNewNs(a3, v12, v13);
}

void xsltText(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (comp)
  {
    children = inst->children;
    if (children)
    {
      v7 = MEMORY[0x29EDC97C0];
      while (children->type - 3 < 2)
      {
        v8 = xmlNewDocText(ctxt->output, children->content);
        if (children->type != XML_CDATA_SECTION_NODE)
        {
          v8->name = v7;
        }

        xsltAddChild(ctxt->insert, v8);
        children = children->next;
        if (!children)
        {
          return;
        }
      }

      xsltTransformError(ctxt, 0, inst, "xsl:text content problem\n");
    }
  }
}

void xsltElement(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  prefix = 0;
  insert = ctxt->insert;
  if (insert && comp[3].type)
  {
    next = comp[3].next;
    if (next)
    {
      v10 = xsltSplitQName(ctxt->dict, next, &prefix);
    }

    else
    {
      v11 = xsltEvalAttrValueTemplate(ctxt, inst, "name", "http://www.w3.org/1999/XSL/Transform");
      if (!v11)
      {
        xsltTransformError(ctxt, 0, inst, "xsl:element: The attribute 'name' is missing.\n");
LABEL_56:
        ctxt->insert = insert;
        return;
      }

      v12 = v11;
      if (xmlValidateQName(v11, 0))
      {
        xsltTransformError(ctxt, 0, inst, "xsl:element: The effective name '%s' is not a valid QName.\n", v12);
      }

      v10 = xsltSplitQName(ctxt->dict, v12, &prefix);
      free(v12);
    }

    output = ctxt->output;
    if (output->dict == ctxt->dict)
    {
      v14 = xmlNewDocNodeEatName(output, 0, v10, 0);
    }

    else
    {
      v14 = xmlNewDocNode(output, 0, v10, 0);
    }

    v15 = v14;
    if (!v14)
    {
      xsltTransformError(ctxt, 0, inst, "xsl:element : creation of %s failed\n");
      return;
    }

    v16 = ctxt->insert;
    if (v16)
    {
      v17 = xmlAddChild(v16, v15);
      if (v17)
      {
        v18 = v17;
        if (LODWORD(comp[3].inst))
        {
          func = comp[3].func;
          if (func)
          {
            if (*func)
            {
              href = comp[3].func;
            }

            else
            {
              href = 0;
            }
          }

          else
          {
            v22 = xsltEvalAttrValueTemplate(ctxt, inst, "namespace", "http://www.w3.org/1999/XSL/Transform");
            v23 = v22;
            if (v22 && *v22)
            {
              href = xmlDictLookup(ctxt->dict, v22, -1);
            }

            else
            {
              href = 0;
            }

            free(v23);
          }

          if (xmlStrEqual(href, "http://www.w3.org/2000/xmlns/"))
          {
            xsltTransformError(ctxt, 0, inst, "xsl:attribute: Namespace http://www.w3.org/2000/xmlns/ forbidden.\n");
            goto LABEL_56;
          }

          if (xmlStrEqual(href, "http://www.w3.org/XML/1998/namespace"))
          {
            prefix = "xml";
          }

          else if (xmlStrEqual(prefix, "xml"))
          {
            prefix = 0;
          }
        }

        else
        {
          v21 = xmlSearchNs(inst->doc, inst, prefix);
          if (!v21)
          {
            if (prefix)
            {
              xsltTransformError(ctxt, 0, inst, "xsl:element: The QName '%s:%s' has no namespace binding in scope in the stylesheet; this is an error, since the namespace was not specified by the instruction itself.\n", prefix, v10);
            }

            goto LABEL_44;
          }

          href = v21->href;
        }

        if (href)
        {
          if (xmlStrEqual(prefix, "xmlns"))
          {
            v24 = xmlStrdup("ns_1");
            v18->ns = xsltGetSpecialNamespace(ctxt, inst, href, v24, v18);
            free(v24);
          }

          else
          {
            v18->ns = xsltGetSpecialNamespace(ctxt, inst, href, prefix, v18);
          }

LABEL_49:
          ctxt->insert = v18;
          if (LODWORD(comp[2].free))
          {
            v26 = comp[2].inst;
            if (v26)
            {
              xsltApplyAttributeSet(ctxt, node, inst, v26);
            }

            else
            {
              v27 = xsltEvalAttrValueTemplate(ctxt, inst, "use-attribute-sets", 0);
              if (v27)
              {
                v28 = v27;
                xsltApplyAttributeSet(ctxt, node, inst, v27);
                free(v28);
              }
            }
          }

          children = inst->children;
          if (children)
          {
            xsltApplySequenceConstructor(ctxt, ctxt->node, children, 0);
          }

          goto LABEL_56;
        }

LABEL_44:
        parent = v18->parent;
        if (parent && parent->type == XML_ELEMENT_NODE && parent->ns)
        {
          xsltGetSpecialNamespace(ctxt, inst, 0, 0, v18);
        }

        goto LABEL_49;
      }
    }

    else
    {
      xmlFreeNode(v15);
    }

    xsltTransformError(ctxt, 0, inst, "xsl:element : xsltAddChild failed\n");
  }
}

void xsltComment(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  v6 = xsltEvalTemplateString(ctxt, node, inst);
  v7 = xmlStrlen(v6);
  if (v7 >= 1)
  {
    if (v6[v7 - 1] == 45 || xmlStrstr(v6, "--"))
    {
      xsltTransformError(ctxt, 0, inst, "xsl:comment : '--' or ending '-' not allowed in comment\n");
    }

    goto LABEL_6;
  }

  if (v6)
  {
LABEL_6:
    traceCode = ctxt->traceCode;
    if (traceCode && (*traceCode & 0x10) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltComment: content %s\n", v6);
    }

    v9 = xmlNewComment(v6);
    xsltAddChild(ctxt->insert, v9);

    free(v6);
    return;
  }

  v10 = ctxt->traceCode;
  if (v10 && (*v10 & 0x10) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltComment: empty\n");
  }

  v11 = xmlNewComment(0);
  insert = ctxt->insert;

  xsltAddChild(insert, v11);
}

void xsltProcessingInstruction(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (ctxt->insert && comp[3].type)
  {
    next = comp[3].next;
    if (next || (next = xsltEvalAttrValueTemplate(ctxt, inst, "name", 0)) != 0)
    {
      v9 = xsltEvalTemplateString(ctxt, node, inst);
      if (xmlStrstr(v9, "?>"))
      {
        xsltTransformError(ctxt, 0, inst, "xsl:processing-instruction: '?>' not allowed within PI content\n");
      }

      else
      {
        traceCode = ctxt->traceCode;
        if (v9)
        {
          if (traceCode && (*traceCode & 0x20) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltProcessingInstruction: %s content %s\n", v10, v11, v12, v13, v14, v15, next);
          }
        }

        else if (traceCode && (*traceCode & 0x20) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltProcessingInstruction: %s empty\n", v10, v11, v12, v13, v14, v15, next);
        }

        v17 = xmlNewDocPI(ctxt->insert->doc, next, v9);
        xsltAddChild(ctxt->insert, v17);
      }

      if (next != comp[3].next)
      {
        free(next);
      }

      if (v9)
      {

        free(v9);
      }
    }

    else
    {

      xsltTransformError(ctxt, 0, inst, "xsl:processing-instruction : name is missing\n");
    }
  }
}

void xsltCopyOf(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (ctxt && node && inst)
  {
    if (comp && comp[4].inst && comp[7].inst)
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*traceCode & 0x40) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltCopyOf: select %s\n", comp[4].inst);
      }

      v9 = xsltPreCompEval(ctxt, node, comp);
      if (v9)
      {
        v10 = v9;
        if (v9->type == XPATH_XSLT_TREE)
        {
          v19 = ctxt->traceCode;
          if (v19 && (*v19 & 0x40) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltCopyOf: result is a result tree fragment\n");
          }

          nodesetval = v10->nodesetval;
          if (nodesetval)
          {
            nodeTab = nodesetval->nodeTab;
            if (nodeTab)
            {
              v22 = *nodeTab;
              if (v22)
              {
                type = v22->type;
                v24 = type > 0xD;
                v25 = (1 << type) & 0x239E;
                if (!v24 && v25 != 0)
                {
                  xsltCopyTreeList(ctxt, inst, v22->children, ctxt->insert, 0);
                }
              }
            }
          }
        }

        else if (v9->type == XPATH_NODESET)
        {
          v11 = ctxt->traceCode;
          if (v11 && (*v11 & 0x40) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltCopyOf: result is a node set\n");
          }

          p_nodeNr = &v10->nodesetval->nodeNr;
          if (p_nodeNr && *p_nodeNr >= 1)
          {
            v13 = 0;
            do
            {
              v14 = *(*(p_nodeNr + 1) + 8 * v13);
              if (v14)
              {
                v15 = *(v14 + 8);
                if (v15 == 2)
                {
                  xsltShallowCopyAttr(ctxt, inst, ctxt->insert, *(*(p_nodeNr + 1) + 8 * v13));
                }

                else if (v15 == 13 || v15 == 9)
                {
                  v17 = *(v14 + 24);
                  if (v17)
                  {
                    insert = ctxt->insert;
                    do
                    {
                      xsltCopyTree(ctxt, inst, v17, insert, 0);
                      v17 = *(v17 + 48);
                    }

                    while (v17);
                  }
                }

                else
                {
                  xsltCopyTree(ctxt, inst, *(*(p_nodeNr + 1) + 8 * v13), ctxt->insert, 0);
                }
              }

              ++v13;
            }

            while (v13 < *p_nodeNr);
          }
        }

        else
        {
          v27 = xmlXPathCastToString(v9);
          if (v27)
          {
            v28 = v27;
            if (*v27)
            {
              xsltCopyTextString(ctxt, ctxt->insert, v27, 0);
            }

            free(v28);
            v29 = ctxt->traceCode;
            if (v29 && (*v29 & 0x40) != 0)
            {
              xsltGenericDebug(xsltGenericDebugContext, "xsltCopyOf: result %s\n", v10->stringval);
            }
          }

          else
          {
            xsltTransformError(ctxt, 0, inst, "Internal error in xsltCopyOf(): failed to cast an XPath object to string.\n");
            ctxt->state = XSLT_STATE_STOPPED;
          }
        }

        xmlXPathFreeObject(v10);
      }

      else
      {
        ctxt->state = XSLT_STATE_STOPPED;
      }
    }

    else
    {

      xsltTransformError(ctxt, 0, inst, "xsl:copy-of : compilation failed\n");
    }
  }
}

xmlXPathObjectPtr xsltPreCompEval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 160);
  v4 = *(v3 + 8);
  v5 = *(v3 + 88);
  v6 = *(v3 + 80);
  *(v3 + 8) = a2;
  v7 = *(a3 + 304);
  *(v3 + 80) = *(a3 + 312);
  *(v3 + 88) = *(a3 + 320);
  v8 = *(v3 + 104);
  result = xmlXPathCompiledEval(v7, v3);
  *(v3 + 8) = v4;
  *(v3 + 104) = v8;
  *(v3 + 88) = v5;
  *(v3 + 80) = v6;
  return result;
}

xmlAttrPtr xsltCopyTreeList(xmlAttrPtr result, xmlNode *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    v10 = 0;
    do
    {
      result = xsltCopyTree(v9, a2, v7, a4, a5);
      if (v10)
      {
        v11 = 1;
      }

      else
      {
        v11 = result == 0;
      }

      if (!v11)
      {
        v10 = result;
      }

      v7 = *(v7 + 48);
    }

    while (v7);
  }

  return result;
}

xmlAttrPtr xsltCopyTree(xsltTransformContext *a1, xmlNode *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a3 + 8);
  if (v10 > 8)
  {
    if (v10 <= 0x14)
    {
      if (((1 << v10) & 0x1BDC00) != 0)
      {
        return 0;
      }

      if (v10 == 9)
      {
        v16 = *(a3 + 16);
        if (v16 && *v16 == 32)
        {
          v17 = *(a3 + 24);
          if (v17)
          {
            v11 = 0;
            do
            {
              v18 = xsltCopyTree(a1, a2, v17, a4, 0);
              if (v11)
              {
                v19 = 1;
              }

              else
              {
                v19 = v18 == 0;
              }

              if (!v19)
              {
                v11 = v18;
              }

              v17 = *(v17 + 48);
            }

            while (v17);
            return v11;
          }

          return 0;
        }
      }

      else if (v10 == 18)
      {

        return xsltShallowCopyNsNode(a1, a2, a4, a3);
      }
    }

LABEL_33:
    v20 = xmlDocCopyNode(a3, *(a4 + 64), 0);
    if (v20)
    {
      v20->doc = a1->output;
      v21 = xmlAddChild(a4, v20);
      if (v21)
      {
        v22 = v21;
        v11 = *(a4 + 32);
        if (v11 == v21)
        {
          v21[1].next = 0;
          if (*(a3 + 8) == 1)
          {
            if (a5 || (v26 = *(a3 + 40)) == 0 || (*(v26 + 8) | 4) == 0xD)
            {
              v23 = *(a3 + 96);
              if (v23)
              {
                xsltCopyNamespaceListInternal(v21, v23);
              }
            }

            else
            {
              NsList = xmlGetNsList(*(a3 + 64), a3);
              if (NsList)
              {
                v28 = NsList;
                v29 = *NsList;
                v30 = NsList;
                do
                {
                  v31 = xmlSearchNs(*(a4 + 64), a4, v29->prefix);
                  if (!v31 || (v32 = v31, !xmlStrEqual(v31->href, (*v30)->href)))
                  {
                    v32 = xmlNewNs(v22, (*v30)->href, (*v30)->prefix);
                  }

                  if (*(a3 + 72) == *v30)
                  {
                    v22->ns = v32;
                  }

                  v33 = v30[1];
                  ++v30;
                  v29 = v33;
                }

                while (v33);
                free(v28);
              }
            }

            v24 = *(a3 + 72);
            if (v24)
            {
              if (!v22->ns)
              {
                v22->ns = xsltGetSpecialNamespace(a1, a2, *(v24 + 16), *(v24 + 24), v22);
              }
            }

            else if (*(a4 + 8) == 1 && *(a4 + 72))
            {
              xsltGetSpecialNamespace(a1, a2, 0, 0, v22);
            }

            v34 = *(a3 + 88);
            if (v34)
            {
              xsltCopyAttrListNoOverwrite(a1, a2, v22, v34);
            }

            if (a5 <= 1)
            {
              a5 = 1;
            }

            else
            {
              a5 = a5;
            }
          }

          for (i = *(a3 + 24); i; i = *(i + 48))
          {
            xsltCopyTree(a1, a2, i, v22, a5);
          }

          return v22;
        }

        return v11;
      }
    }

    v25 = *(a3 + 16);
    xsltTransformError(a1, 0, a2, "xsltCopyTree: Copying of '%s' failed.\n");
    return 0;
  }

  if (v10 == 2)
  {

    return xsltShallowCopyAttr(a1, a2, a4, a3);
  }

  else
  {
    if (v10 == 3)
    {
      v15 = *(a3 + 16) == MEMORY[0x29EDC97C0];
      v13 = *(a3 + 80);
      v14 = a4;
    }

    else
    {
      if (v10 != 4)
      {
        goto LABEL_33;
      }

      v13 = *(a3 + 80);
      v14 = a4;
      v15 = 0;
    }

    return xsltCopyTextString(a1, v14, v13, v15);
  }
}

void xsltValueOf(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (ctxt && node && inst)
  {
    if (comp && comp[4].inst && comp[7].inst)
    {
      traceCode = ctxt->traceCode;
      if (traceCode && (*traceCode & 0x80) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltValueOf: select %s\n", comp[4].inst);
      }

      v9 = xsltPreCompEval(ctxt, node, comp);
      if (v9)
      {
        v10 = v9;
        v11 = xmlXPathCastToString(v9);
        if (v11)
        {
          v12 = v11;
          if (*v11)
          {
            xsltCopyTextString(ctxt, ctxt->insert, v11, HIDWORD(comp[2].free));
          }

          v13 = ctxt->traceCode;
          if (v13 && (*v13 & 0x80) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "xsltValueOf: result '%s'\n", v12);
          }

          free(v12);
        }

        else
        {
          xsltTransformError(ctxt, 0, inst, "Internal error in xsltValueOf(): failed to cast an XPath object to string.\n");
          ctxt->state = XSLT_STATE_STOPPED;
        }

        xmlXPathFreeObject(v10);
      }

      else
      {
        xsltTransformError(ctxt, 0, inst, "XPath evaluation returned no result.\n");
        ctxt->state = XSLT_STATE_STOPPED;
      }
    }

    else
    {

      xsltTransformError(ctxt, 0, inst, "Internal error in xsltValueOf(): The XSLT 'value-of' instruction was not compiled.\n");
    }
  }
}

void xsltNumber(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (comp)
  {
    if (ctxt && node)
    {
      if (inst)
      {
        comp[6].free = inst->doc;
        comp[7].next = inst;
        xpathCtxt = ctxt->xpathCtxt;
        nsNr = xpathCtxt->nsNr;
        namespaces = xpathCtxt->namespaces;
        xpathCtxt->namespaces = comp[7].free;
        xpathCtxt->nsNr = comp[8].next;
        xsltNumberFormat(ctxt, &comp[5].func, node);
        xpathCtxt->nsNr = nsNr;
        xpathCtxt->namespaces = namespaces;
      }
    }
  }

  else
  {

    xsltTransformError(ctxt, 0, inst, "xsl:number : compilation failed\n");
  }
}

void xsltApplyImports(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (!ctxt || !inst)
  {
    return;
  }

  if (comp)
  {
    currentTemplateRule = ctxt->currentTemplateRule;
    if (currentTemplateRule)
    {
      Template = xsltGetTemplate(ctxt, node, currentTemplateRule->style);
      if (Template)
      {
        v13 = ctxt->currentTemplateRule;
        ctxt->currentTemplateRule = Template;
        xsltApplyXSLTTemplate(ctxt, node, Template->content, Template, 0);
        ctxt->currentTemplateRule = v13;
      }

      else
      {

        xsltDefaultProcessOneNode(ctxt, node, 0, v8, v9, v10, v11, v12, v16);
      }

      return;
    }

    v14 = "It is an error to call 'apply-imports' when there's no current template rule.\n";
  }

  else
  {
    v14 = "Internal error in xsltApplyImports(): The XSLT 'apply-imports' instruction was not compiled.\n";
  }

  xsltTransformError(ctxt, 0, inst, v14);
}

void xsltCallTemplate(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (ctxt->insert)
  {
    if (comp)
    {
      if (comp[4].func || (Template = xsltFindTemplate(ctxt, comp[3].next, comp[3].func), (comp[4].func = Template) != 0))
      {
        if (comp[3].next)
        {
          traceCode = ctxt->traceCode;
          if (traceCode)
          {
            if (*(traceCode + 1))
            {
              xsltGenericDebug(xsltGenericDebugContext, "call-template: name %s\n", comp[3].next);
            }
          }
        }

        children = inst->children;
        if (children)
        {
          v15 = 0;
          do
          {
            if (ctxt->debugStatus)
            {
              xslHandleDebugger(children, node, comp[4].func, ctxt);
            }

            if (ctxt->state == XSLT_STATE_STOPPED)
            {
              break;
            }

            if (children->type == XML_ELEMENT_NODE && (ns = children->ns) != 0 && xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
            {
              if (xmlStrEqual(children->name, "with-param"))
              {
                v23 = xsltParseStylesheetCallerParam(ctxt, children);
                if (v23)
                {
                  v23->next = v15;
                  v15 = v23;
                }
              }

              else
              {
                xsltGenericError(xsltGenericErrorContext, "xsl:call-template: misplaced xsl:%s\n", v17, v18, v19, v20, v21, v22, children->name);
              }
            }

            else
            {
              xsltGenericError(xsltGenericErrorContext, "xsl:call-template: misplaced %s element\n", inst, comp, v4, v5, v6, v7, children->name);
            }

            children = children->next;
          }

          while (children);
        }

        else
        {
          v15 = 0;
        }

        xsltApplyXSLTTemplate(ctxt, node, *(comp[4].func + 8), comp[4].func, v15);
        if (v15)
        {
          xsltFreeStackElemList(v15);
        }

        if (comp[3].next)
        {
          v24 = ctxt->traceCode;
          if (v24)
          {
            if (*(v24 + 1))
            {
              xsltGenericDebug(xsltGenericDebugContext, "call-template returned: name %s\n", comp[3].next);
            }
          }
        }
      }

      else
      {
        next = comp[3].next;
        if (comp[3].func)
        {
          func = comp[3].func;
          xsltTransformError(ctxt, 0, inst, "The called template '{%s}%s' was not found.\n");
        }

        else
        {
          v27 = comp[3].next;
          xsltTransformError(ctxt, 0, inst, "The called template '%s' was not found.\n");
        }
      }
    }

    else
    {

      xsltTransformError(ctxt, 0, inst, "The XSLT 'call-template' instruction was not compiled.\n");
    }
  }
}

void xsltApplyTemplates(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  v52 = *MEMORY[0x29EDCA608];
  if (comp)
  {
    if (!ctxt || !node || !inst)
    {
      goto LABEL_82;
    }

    if (node->name)
    {
      traceCode = ctxt->traceCode;
      if (traceCode)
      {
        if ((*(traceCode + 1) & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltApplyTemplates: node: '%s'\n", node->name);
        }
      }
    }

    xpathCtxt = ctxt->xpathCtxt;
    v42 = *&ctxt->document;
    v43 = *&ctxt->mode;
    nodeList = ctxt->nodeList;
    v11 = *&xpathCtxt->contextSize;
    doc = xpathCtxt->doc;
    *&ctxt->mode = *&comp[3].free;
    if (comp[4].inst)
    {
      if (comp[7].inst)
      {
        v13 = ctxt->traceCode;
        if (v13 && (*(v13 + 1) & 2) != 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "xsltApplyTemplates: select %s\n", comp[4].inst);
        }

        v14 = xsltPreCompEval(ctxt, node, comp);
        if (v14)
        {
          v15 = v14;
          if (v14->type == XPATH_NODESET)
          {
            nodesetval = v14->nodesetval;
            v14->nodesetval = 0;
            xmlXPathFreeObject(v14);
            if (!nodesetval)
            {
              v17 = ctxt->traceCode;
              if (v17)
              {
                if ((*(v17 + 1) & 2) != 0)
                {
                  xsltGenericDebug(xsltGenericDebugContext, "xsltApplyTemplates: select didn't evaluate to a node list\n");
                }
              }

              goto LABEL_81;
            }

LABEL_32:
            v25 = ctxt->traceCode;
            if (v25 && (*(v25 + 1) & 2) != 0)
            {
              xsltGenericDebug(xsltGenericDebugContext, "xsltApplyTemplates: list of %d nodes\n", nodesetval->nodeNr);
            }

            if (nodesetval->nodeNr)
            {
              ctxt->nodeList = nodesetval;
              children = inst->children;
              if (children)
              {
                v27 = 0;
                do
                {
                  if (ctxt->debugStatus)
                  {
                    xslHandleDebugger(children, node, 0, ctxt);
                  }

                  if (ctxt->state == XSLT_STATE_STOPPED)
                  {
                    break;
                  }

                  type = children->type;
                  if (type != XML_TEXT_NODE)
                  {
                    if (type != XML_ELEMENT_NODE)
                    {
                      break;
                    }

                    ns = children->ns;
                    if (!ns || !xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform"))
                    {
                      break;
                    }

                    if (xmlStrEqual(children->name, "with-param"))
                    {
                      v30 = xsltParseStylesheetCallerParam(ctxt, children);
                      if (v30)
                      {
                        v30->next = v27;
                        v27 = v30;
                      }
                    }

                    if (xmlStrEqual(children->name, "sort"))
                    {
                      currentTemplateRule = ctxt->currentTemplateRule;
                      v50 = 0u;
                      v51 = 0u;
                      v48 = 0u;
                      v49 = 0u;
                      v46 = 0u;
                      v47 = 0u;
                      v45 = 0u;
                      sorts = children;
                      next = children->next;
                      if (next)
                      {
                        v33 = 1;
                        do
                        {
                          if (ctxt->debugStatus)
                          {
                            xslHandleDebugger(next, node, 0, ctxt);
                          }

                          if (ctxt->state == XSLT_STATE_STOPPED)
                          {
                            break;
                          }

                          v34 = next->type;
                          if (v34 != XML_TEXT_NODE)
                          {
                            if (v34 != XML_ELEMENT_NODE)
                            {
                              break;
                            }

                            v35 = next->ns;
                            if (!v35 || !xmlStrEqual(v35->href, "http://www.w3.org/1999/XSL/Transform"))
                            {
                              break;
                            }

                            if (xmlStrEqual(next->name, "with-param"))
                            {
                              v36 = xsltParseStylesheetCallerParam(ctxt, next);
                              if (v36)
                              {
                                v36->next = v27;
                                v27 = v36;
                              }
                            }

                            if (xmlStrEqual(next->name, "sort"))
                            {
                              if (v33 >= 15)
                              {
                                xsltTransformError(ctxt, 0, next, "The number (%d) of xsl:sort instructions exceeds the maximum allowed by this processor's settings.\n", v33);
                                ctxt->state = XSLT_STATE_STOPPED;
                                break;
                              }

                              *(&sorts + v33++) = next;
                            }
                          }

                          next = next->next;
                        }

                        while (next);
                      }

                      else
                      {
                        v33 = 1;
                      }

                      ctxt->currentTemplateRule = 0;
                      xsltDoSortFunction(ctxt, &sorts, v33);
                      ctxt->currentTemplateRule = currentTemplateRule;
                      break;
                    }
                  }

                  children = children->next;
                }

                while (children);
              }

              else
              {
                v27 = 0;
              }

              nodeNr = nodesetval->nodeNr;
              xpathCtxt->contextSize = nodesetval->nodeNr;
              if (nodeNr >= 1)
              {
                v38 = 0;
                do
                {
                  v39 = nodesetval->nodeTab[v38];
                  ctxt->node = v39;
                  if (v39->type != XML_NAMESPACE_DECL)
                  {
                    v40 = v39->doc;
                    if (v40)
                    {
                      xpathCtxt->doc = v40;
                    }
                  }

                  xpathCtxt->proximityPosition = ++v38;
                  xsltProcessOneNode(ctxt, v39, v27);
                }

                while (v38 < nodesetval->nodeNr);
              }

              if (v27)
              {
                xsltFreeStackElemList(v27);
              }
            }

            xmlXPathFreeNodeSet(nodesetval);
            goto LABEL_81;
          }

          xsltTransformError(ctxt, 0, inst, "The 'select' expression did not evaluate to a node set.\n");
          ctxt->state = XSLT_STATE_STOPPED;
          xmlXPathFreeObject(v15);
        }

        else
        {
          xsltTransformError(ctxt, 0, inst, "Failed to evaluate the 'select' expression.\n");
          ctxt->state = XSLT_STATE_STOPPED;
        }
      }

      else
      {
        xsltTransformError(ctxt, 0, inst, "xsl:apply-templates : compilation failed\n");
      }
    }

    else
    {
      v19 = xmlXPathNodeSetCreate(0);
      if (v19)
      {
        nodesetval = v19;
        if (node->type != XML_NAMESPACE_DECL)
        {
          for (i = node->children; i; i = i->next)
          {
            v21 = i->type;
            v22 = v21 > 0xD;
            v23 = (1 << v21) & 0x239E;
            if (!v22 && v23 != 0)
            {
              xmlXPathNodeSetAddUnique(nodesetval, i);
            }
          }
        }

        goto LABEL_32;
      }
    }

LABEL_81:
    xpathCtxt->doc = doc;
    *&xpathCtxt->contextSize = v11;
    ctxt->nodeList = nodeList;
    *&ctxt->document = v42;
    *&ctxt->mode = v43;
LABEL_82:
    v41 = *MEMORY[0x29EDCA608];
    return;
  }

  v18 = *MEMORY[0x29EDCA608];

  xsltTransformError(ctxt, 0, inst, "xsl:apply-templates : compilation failed\n");
}

void xsltChoose(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  if (!ctxt || !node || !inst)
  {
    return;
  }

  children = inst->children;
  if (!children)
  {
    v27 = "xsl:choose: The instruction has no content.\n";
LABEL_30:
    v28 = ctxt;
    v29 = inst;
LABEL_31:

    xsltTransformError(v28, 0, v29, v27);
    return;
  }

  if (children->type != XML_ELEMENT_NODE || (ns = children->ns) == 0 || !xmlStrEqual(ns->href, "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(children->name, "when"))
  {
    v27 = "xsl:choose: xsl:when expected first\n";
    goto LABEL_30;
  }

  while (children->type == XML_ELEMENT_NODE)
  {
    v9 = children->ns;
    if (!v9 || !xmlStrEqual(v9->href, "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(children->name, "when"))
    {
      if (children->type != XML_ELEMENT_NODE)
      {
        return;
      }

      v30 = children->ns;
      if (!v30 || !xmlStrEqual(v30->href, "http://www.w3.org/1999/XSL/Transform") || !xmlStrEqual(children->name, "otherwise"))
      {
        return;
      }

      if (xslDebugStatus)
      {
        xslHandleDebugger(children, node, 0, ctxt);
      }

      traceCode = ctxt->traceCode;
      if (traceCode && (*(traceCode + 1) & 4) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "evaluating xsl:otherwise\n");
      }

LABEL_43:
      v32 = ctxt->node;
      v33 = children->children;

      xsltApplySequenceConstructor(ctxt, v32, v33, 0);
      return;
    }

    psvi = children->psvi;
    if (!psvi || !*(psvi + 168) || !*(psvi + 304))
    {
      v27 = "Internal error in xsltChoose(): The XSLT 'when' instruction was not compiled.\n";
      v28 = ctxt;
      v29 = children;
      goto LABEL_31;
    }

    if (xslDebugStatus)
    {
      xslHandleDebugger(children, node, 0, ctxt);
    }

    v17 = ctxt->traceCode;
    if (v17 && (*(v17 + 1) & 4) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltChoose: test %s\n", v10, v11, v12, v13, v14, v15, *(psvi + 168));
    }

    v18 = xsltPreCompEvalToBoolean(ctxt, node, psvi);
    if (v18 == -1)
    {
      ctxt->state = XSLT_STATE_STOPPED;
      return;
    }

    v25 = v18;
    v26 = ctxt->traceCode;
    if (v26 && (*(v26 + 1) & 4) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltChoose: test evaluate to %d\n", v19, v20, v21, v22, v23, v24, v18 == 1);
    }

    if (v25 == 1)
    {
      goto LABEL_43;
    }

    children = children->next;
    if (!children)
    {
      return;
    }
  }
}