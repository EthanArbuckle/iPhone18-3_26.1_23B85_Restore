void xsltParseStylesheetAttributeSet(xsltStylesheetPtr style, xmlNodePtr cur)
{
  if (!style || !cur || cur->type != XML_ELEMENT_NODE)
  {
    return;
  }

  NsProp = xmlGetNsProp(cur, "name", 0);
  if (!NsProp)
  {
    v11 = xsltGenericError;
    v12 = xsltGenericErrorContext;

    v11(v12, "xsl:attribute-set : name is missing\n", v11, v5, v6, v7, v8, v9, v52);
    return;
  }

  v10 = NsProp;
  prefix = 0;
  if (!*NsProp)
  {
    xsltGenericError(xsltGenericErrorContext, "xsl:attribute-set : name is missing\n");
    goto LABEL_12;
  }

  if (xmlValidateQName(NsProp, 0))
  {
    xsltTransformError(0, style, cur, "xsl:attribute-set : The name '%s' is not a valid QName.\n", v10);
    ++style->errors;
LABEL_12:

    free(v10);
    return;
  }

  v13 = xsltSplitQName(style->dict, v10, &prefix);
  free(v10);
  if (prefix)
  {
    v14 = xmlSearchNs(style->doc, cur, prefix);
    if (!v14)
    {
      xsltTransformError(0, style, cur, "xsl:attribute-set : No namespace found for QName '%s:%s'\n", prefix, v13);
      ++style->errors;
      return;
    }

    href = v14->href;
  }

  else
  {
    href = 0;
  }

  attributeSets = style->attributeSets;
  if (attributeSets || (xsltGenericDebug(xsltGenericDebugContext, "creating attribute set table\n"), attributeSets = xmlHashCreate(10), (style->attributeSets = attributeSets) != 0))
  {
    v17 = xmlHashLookup2(attributeSets, v13, href);
    if (!v17)
    {
      v18 = xsltNewAttrSet();
      if (!v18)
      {
        return;
      }

      v17 = v18;
      xmlHashAddEntry2(style->attributeSets, v13, href, v18);
    }

    children = cur->children;
    v48 = v13;
    if (children)
    {
      v20 = "xsl:attribute-set : unexpected child %s\n";
      v21 = "http://www.w3.org/1999/XSL/Transform";
      v22 = "attribute";
      v23 = "add attribute to list %s\n";
      do
      {
        if (children->type != XML_ELEMENT_NODE)
        {
          goto LABEL_38;
        }

        ns = children->ns;
        if (!ns)
        {
          goto LABEL_37;
        }

        if (xmlStrEqual(ns->href, v21))
        {
          if (xmlStrEqual(children->name, v22))
          {
            xsltGenericDebug(xsltGenericDebugContext, v23, v13);
            xsltStylePreCompute(style, children);
            if (children->children)
            {
              xsltParseTemplateContent(style, children);
            }

            if (children->psvi)
            {
              v25 = v17;
              v26 = v21;
              v27 = v20;
              v28 = v22;
              v29 = v23;
              v30 = v25;
              v31 = v25[1];
              v32 = v31;
              if (v31)
              {
                do
                {
                  v33 = v32;
                  v32 = *v32;
                }

                while (v32);
                *v33 = xsltNewAttrElem(children);
              }

              else
              {
                v31 = xsltNewAttrElem(children);
              }

              v30[1] = v31;
              v13 = v48;
              v23 = v29;
              v22 = v28;
              v20 = v27;
              v21 = v26;
              v17 = v30;
            }

            else
            {
              v35 = children->name;
              xsltTransformError(0, style, children, "xsl:attribute-set : internal error, attribute %s not compiled\n");
            }
          }

          else
          {
            v34 = children->name;
            xsltTransformError(0, style, children, "xsl:attribute-set : unexpected child xsl:%s\n");
          }

          goto LABEL_39;
        }

        if (children->type == XML_ELEMENT_NODE)
        {
LABEL_37:
          xsltTransformError(0, style, children, v20, children->name);
        }

        else
        {
LABEL_38:
          xsltTransformError(0, style, children, "xsl:attribute-set : child of unexpected type\n");
        }

LABEL_39:
        children = children->next;
      }

      while (children);
    }

    v36 = xmlGetNsProp(cur, "use-attribute-sets", 0);
    if (v36)
    {
      name = v36;
      v37 = *v36;
      if (*v36)
      {
        v38 = v36;
        while (1)
        {
          if (v37 > 0x20)
          {
            goto LABEL_52;
          }

          if (((1 << v37) & 0x100002600) != 0)
          {
            v39 = *++v38;
            v37 = v39;
          }

          else
          {
            if (!v37)
            {
              break;
            }

LABEL_52:
            v40 = 0;
            while (v37 > 0x20 || ((1 << v37) & 0x100002601) == 0)
            {
              v37 = v38[++v40];
            }

            if (v40 >= 0x7FFFFFFF)
            {
              v41 = 0x7FFFFFFF;
            }

            else
            {
              v41 = v40;
            }

            v42 = xmlDictLookup(style->dict, v38, v41);
            if (v42)
            {
              v43 = v42;
              nameSpace = 0;
              xsltGenericDebug(xsltGenericDebugContext, "xsl:attribute-set : %s adds use %s\n", v48, v42);
              if (xmlValidateQName(v43, 0))
              {
                xsltTransformError(0, style, cur, "xsl:attribute-set : The name '%s' in use-attribute-sets is not a valid QName.\n");
                goto LABEL_71;
              }

              v44 = xsltSplitQName(style->dict, v43, &nameSpace);
              v45 = nameSpace;
              if (nameSpace)
              {
                v46 = xmlSearchNs(style->doc, cur, nameSpace);
                if (!v46)
                {
                  xsltTransformError(0, style, cur, "xsl:attribute-set : No namespace found for QName '%s:%s' in use-attribute-sets\n");
LABEL_71:
                  ++style->errors;
                  free(name);
                  return;
                }

                v45 = v46->href;
              }

              v17[2] = xsltAddUseAttrSetList(v17[2], v44, v45);
            }

            v38 += v40;
            v37 = *v38;
            if (!*v38)
            {
              break;
            }
          }
        }
      }

      free(name);
      v13 = v48;
    }

    xsltGenericDebug(xsltGenericDebugContext, "updated attribute list %s\n", v13);
  }
}

void *xsltNewAttrSet()
{
  v0 = malloc_type_malloc(0x18uLL, 0x1020040F89CB87BuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
    v0[2] = 0;
  }

  else
  {
    xsltGenericError(xsltGenericErrorContext, "xsltNewAttrSet : malloc failed\n");
  }

  return v1;
}

void *xsltAddUseAttrSetList(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return a1;
  }

  if (a1)
  {
    v4 = a1;
    while (1)
    {
      v5 = v4;
      if (v4[1] == a2 && v4[2] == a3)
      {
        break;
      }

      v4 = *v4;
      if (!*v5)
      {
        *v5 = xsltNewUseAttrSet(a2, a3);
        return a1;
      }
    }

    return a1;
  }

  return xsltNewUseAttrSet(a2, a3);
}

void xsltResolveStylesheetAttributeSet(xsltStylesheetPtr style)
{
  xsltGenericDebug(xsltGenericDebugContext, "Resolving attribute sets references\n");
  v4 = style;
  if (style)
  {
    v5 = 0;
    Import = style;
    do
    {
      attributeSets = Import->attributeSets;
      if (attributeSets)
      {
        if (!style->attributeSets)
        {
          xsltGenericDebug(xsltGenericDebugContext, "creating attribute set table\n", v4);
          style->attributeSets = xmlHashCreate(10);
          attributeSets = Import->attributeSets;
        }

        v5 = Import;
        xmlHashScanFull(attributeSets, xsltResolveSASCallback, &v4);
        if (Import != style)
        {
          xmlHashFree(Import->attributeSets, 0);
          Import->attributeSets = 0;
        }
      }

      Import = xsltNextImport(Import);
    }

    while (Import);
  }
}

void xsltResolveSASCallback(void *a1, xsltStylesheetPtr *a2, const char *a3, const xmlChar *a4)
{
  v7 = *a2;
  v8 = a2[1];
  xsltResolveAttrSet(a1, *a2, v8, a3, a4, 1);
  if (v8 != v7 && xmlHashAddEntry2(v7->attributeSets, a3, a4, a1) < 0)
  {
    xsltGenericError(xsltGenericErrorContext, "xsl:attribute-set : internal error, can't move imported  attribute set %s\n", a3);
  }
}

void xsltAttribute(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  prefix = 0;
  if (!ctxt)
  {
    return;
  }

  if (!node)
  {
    return;
  }

  if (!inst)
  {
    return;
  }

  if (inst->type != XML_ELEMENT_NODE)
  {
    return;
  }

  if (!comp[3].type)
  {
    return;
  }

  insert = ctxt->insert;
  if (!insert || insert->type != XML_ELEMENT_NODE)
  {
    return;
  }

  if (insert->children)
  {
    v9 = "xsl:attribute: Cannot add attributes to an element if children have been already added to the element.\n";
LABEL_10:

    xsltTransformError(ctxt, 0, inst, v9);
    return;
  }

  if (ctxt->debugStatus)
  {
    xslHandleDebugger(inst, node, 0, ctxt);
  }

  next = comp[3].next;
  if (next)
  {
    v11 = xsltSplitQName(ctxt->dict, next, &prefix);
  }

  else
  {
    v14 = xsltEvalAttrValueTemplate(ctxt, inst, "name", "http://www.w3.org/1999/XSL/Transform");
    if (!v14)
    {
      v9 = "xsl:attribute: The attribute 'name' is missing.\n";
      goto LABEL_10;
    }

    v15 = v14;
    if (xmlValidateQName(v14, 0))
    {
      xsltTransformError(ctxt, 0, inst, "xsl:attribute: The effective name '%s' is not a valid QName.\n", v15);
    }

    if (xmlStrEqual(v15, "xmlns"))
    {
      xsltTransformError(ctxt, 0, inst, "xsl:attribute: The effective name 'xmlns' is not allowed.\n");

      free(v15);
      return;
    }

    v11 = xsltSplitQName(ctxt->dict, v15, &prefix);
    free(v15);
  }

  if (!LODWORD(comp[3].inst))
  {
    if (prefix)
    {
      v16 = xmlSearchNs(inst->doc, inst, prefix);
      if (v16)
      {
        href = v16->href;
        goto LABEL_47;
      }

      xsltTransformError(ctxt, 0, inst, "xsl:attribute: The QName '%s:%s' has no namespace binding in scope in the stylesheet; this is an error, since the namespace was not specified by the instruction itself.\n", prefix, v11);
    }

LABEL_51:
    SpecialNamespace = 0;
    goto LABEL_54;
  }

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
    v17 = xsltEvalAttrValueTemplate(ctxt, inst, "namespace", "http://www.w3.org/1999/XSL/Transform");
    v18 = v17;
    if (v17 && *v17)
    {
      href = xmlDictLookup(ctxt->dict, v17, -1);
    }

    else
    {
      href = 0;
    }

    free(v18);
  }

  if (xmlStrEqual(href, "http://www.w3.org/2000/xmlns/"))
  {
    xsltTransformError(ctxt, 0, inst, "xsl:attribute: Namespace http://www.w3.org/2000/xmlns/ forbidden.\n");
    return;
  }

  if (xmlStrEqual(href, "http://www.w3.org/XML/1998/namespace"))
  {
    prefix = "xml";
  }

  else if (xmlStrEqual(prefix, "xml"))
  {
    prefix = 0;
  }

LABEL_47:
  if (!href)
  {
    goto LABEL_51;
  }

  if (prefix && !xmlStrEqual(prefix, "xmlns"))
  {
    SpecialNamespace = xsltGetSpecialNamespace(ctxt, inst, href, prefix, insert);
  }

  else
  {
    v19 = xmlStrdup("ns_1");
    SpecialNamespace = xsltGetSpecialNamespace(ctxt, inst, href, v19, insert);
    free(v19);
  }

  if (!SpecialNamespace)
  {
    xsltTransformError(ctxt, 0, inst, "Namespace fixup error: Failed to acquire an in-scope namespace binding for the generated attribute '{%s}%s'.\n");
    return;
  }

LABEL_54:
  children = inst->children;
  if (!children)
  {
    v30 = ctxt->insert;
LABEL_71:
    xmlSetNsProp(v30, SpecialNamespace, v11, &unk_2999B6B5E);
    return;
  }

  if (children->next || children->type - 3 > 1)
  {
    v29 = xsltEvalTemplateString(ctxt, node, inst);
    v30 = ctxt->insert;
    if (v29)
    {
      xmlSetNsProp(v30, SpecialNamespace, v11, v29);
      free(v29);
      return;
    }

    goto LABEL_71;
  }

  v22 = xmlSetNsProp(ctxt->insert, SpecialNamespace, v11, 0);
  if (!v22)
  {
    return;
  }

  v23 = v22;
  if (ctxt->internalized && (doc = ctxt->insert->doc) != 0 && doc->dict == ctxt->dict)
  {
    v31 = xmlNewText(0);
    if (!v31)
    {
      return;
    }

    v26 = v31;
    v27 = inst->children;
    v31->content = v27->content;
    if (v27->name == MEMORY[0x29EDC97C0])
    {
      v31->name = MEMORY[0x29EDC97C0];
    }
  }

  else
  {
    v25 = xmlNewText(inst->children->content);
    if (!v25)
    {
      return;
    }

    v26 = v25;
    v27 = inst->children;
  }

  v23->children = v26;
  v23->last = v26;
  v26->parent = v23;
  v28 = v23->doc;
  v26->doc = v28;
  if (v27->name == MEMORY[0x29EDC97C0])
  {
    v26->name = MEMORY[0x29EDC97C0];
  }

  if (v26->content && xmlIsID(v28, v23->parent, v23))
  {
    xmlAddID(0, v23->doc, v26->content, v23);
  }
}

void xsltApplyAttributeSet(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, const xmlChar *attributes)
{
  content = attributes;
  prefix = 0;
  if (attributes || inst && inst->type == XML_ATTRIBUTE_NODE && (children = inst->children) != 0 && (content = children->content) != 0)
  {
    v7 = *content;
    if (*content)
    {
      while (1)
      {
        if (v7 > 0x20)
        {
          goto LABEL_7;
        }

        if (((1 << v7) & 0x100002600) != 0)
        {
          v8 = *++content;
          v7 = v8;
        }

        else
        {
          if (!v7)
          {
            return;
          }

LABEL_7:
          v9 = 0;
          while (v7 > 0x20 || ((1 << v7) & 0x100002601) == 0)
          {
            v7 = content[++v9];
          }

          if (v9 >= 0x7FFFFFFF)
          {
            v10 = 0x7FFFFFFF;
          }

          else
          {
            v10 = v9;
          }

          v11 = xmlDictLookup(ctxt->dict, content, v10);
          if (v11)
          {
            v12 = v11;
            xsltGenericDebug(xsltGenericDebugContext, "apply attribute set %s\n", v11);
            if (xmlValidateQName(v12, 0))
            {
              xsltTransformError(ctxt, 0, inst, "The name '%s' in use-attribute-sets is not a valid QName.\n");
              return;
            }

            v13 = xsltSplitQName(ctxt->dict, v12, &prefix);
            if (prefix)
            {
              v14 = xmlSearchNs(inst->doc, inst, prefix);
              if (!v14)
              {
                xsltTransformError(ctxt, 0, inst, "use-attribute-set : No namespace found for QName '%s:%s'\n");
                return;
              }

              href = v14->href;
            }

            else
            {
              href = 0;
            }

            style = ctxt->style;
            if (ctxt->style)
            {
              attributeSets = style->attributeSets;
              if (attributeSets)
              {
                if (ctxt->debugStatus)
                {
                  v18 = xmlHashLookup2(attributeSets, v13, href);
                  if (v18)
                  {
                    v19 = v18[1];
                    if (v19)
                    {
                      v20 = *(v19 + 8);
                      if (v20)
                      {
                        xslHandleDebugger(*(v20 + 40), node, 0, ctxt);
                      }
                    }
                  }
                }
              }
            }

            v21 = xmlHashLookup2(style->attributeSets, v13, href);
            if (v21)
            {
              for (i = v21[1]; i; i = *i)
              {
                v23 = i[1];
                if (v23)
                {
                  xsltAttribute(ctxt, node, v23, *(v23 + 104));
                }
              }
            }
          }

          content += v9;
          v7 = *content;
          if (!*content)
          {
            return;
          }
        }
      }
    }
  }
}

void xsltFreeAttributeSetsHashes(xsltStylesheetPtr style)
{
  attributeSets = style->attributeSets;
  if (attributeSets)
  {
    xmlHashFree(attributeSets, xsltFreeAttributeSetsEntry);
  }

  style->attributeSets = 0;
}

void *xsltNewAttrElem(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = a1;
  }

  else
  {
    xsltGenericError(xsltGenericErrorContext, "xsltNewAttrElem : malloc failed\n");
  }

  return v3;
}

void *xsltNewUseAttrSet(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x7004015E1E418uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[1] = a1;
    v4[2] = a2;
  }

  else
  {
    xsltGenericError(xsltGenericErrorContext, "xsltNewUseAttrSet : malloc failed\n");
  }

  return v5;
}

void xsltResolveAttrSet(void *a1, xsltStylesheetPtr style, xsltStylesheet *a3, const char *a4, const xmlChar *a5, int a6)
{
  if (*a1 != 2)
  {
    if (*a1 == 1)
    {
      xsltTransformError(0, style, 0, "xsl:attribute-set : use-attribute-sets recursion detected on %s\n", a4);
      ++style->errors;
    }

    else
    {
      if (a6 >= 101)
      {
        xsltTransformError(0, style, 0, "xsl:attribute-set : use-attribute-sets maximum recursion depth exceeded on %s\n", a4);
        ++style->errors;
        return;
      }

      *a1 = 1;
      xsltResolveUseAttrSets(a1, style);
      Import = xsltNextImport(a3);
      if (Import)
      {
        v12 = Import;
        do
        {
          attributeSets = v12->attributeSets;
          if (attributeSets)
          {
            v14 = xmlHashLookup2(attributeSets, a4, a5);
            if (v14)
            {
              v21 = v14;
              xsltGenericDebug(xsltGenericDebugContext, "xsl:attribute-set : merging import for %s\n", v15, v16, v17, v18, v19, v20, a4);
              xsltResolveUseAttrSets(v21, style);
              xsltMergeAttrSets(a1, v21);
              xmlHashRemoveEntry2(v12->attributeSets, a4, a5, 0);
              xsltFreeAttrSet(v21);
            }
          }

          v12 = xsltNextImport(v12);
        }

        while (v12);
      }
    }

    *a1 = 2;
  }
}

void xsltResolveUseAttrSets(void *a1, xsltStylesheetPtr style)
{
  v3 = a1[2];
  if (v3)
  {
    do
    {
      if (style)
      {
        Import = style;
        while (1)
        {
          attributeSets = Import->attributeSets;
          if (attributeSets)
          {
            v7 = xmlHashLookup2(attributeSets, v3[1], v3[2]);
            if (v7)
            {
              break;
            }
          }

          Import = xsltNextImport(Import);
          if (!Import)
          {
            goto LABEL_9;
          }
        }

        v8 = v7;
        v9 = v3[1];
        v10 = v3[2];
        xsltResolveAttrSet(v7, style);
        xsltMergeAttrSets(a1, v8);
      }

LABEL_9:
      v11 = *v3;
      free(v3);
      v3 = v11;
    }

    while (v11);
  }

  a1[2] = 0;
}

void *xsltMergeAttrSets(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = v3[1];
      while (v4)
      {
        v5 = v4;
        v6 = *(v4[1] + 104);
        result = v2[1];
        v7 = result[13];
        if (*(v6 + 120) == *(v7 + 120) && *(v6 + 136) == *(v7 + 136))
        {
          goto LABEL_10;
        }

        v4 = *v5;
        if (!*v5)
        {
          result = xsltNewAttrElem(result);
          *v5 = result;
          goto LABEL_10;
        }
      }

      result = xsltNewAttrElem(v2[1]);
      v3[1] = result;
LABEL_10:
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void xsltFreeAttrSet(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
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

    v4 = a1[2];
    if (v4)
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

void xsltFreeAVTList(void *avt)
{
  if (avt)
  {
    v1 = avt;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 2);
      if (*(v1 + 4) == 1)
      {
        if (v3 >= 1)
        {
          for (i = 0; i < v3; i += 2)
          {
            v5 = *&v1[8 * i + 40];
            if (v5)
            {
              free(v5);
              v3 = *(v1 + 2);
            }
          }

          if (v3 >= 2)
          {
            v6 = (v1 + 48);
            v7 = 1;
            do
            {
              v8 = *v6;
              v6 += 2;
              xmlXPathFreeCompExpr(v8);
              v7 += 2;
            }

            while (*(v1 + 2) > v7);
          }
        }
      }

      else if (v3 >= 1)
      {
        v9 = 0;
        do
        {
          xmlXPathFreeCompExpr(*&v1[8 * v9 + 40]);
          v9 += 2;
          v10 = *(v1 + 2);
        }

        while (v10 > v9);
        if (v10 >= 2)
        {
          v11 = (v1 + 48);
          for (j = 1; j < v10; j += 2)
          {
            if (*v11)
            {
              free(*v11);
              v10 = *(v1 + 2);
            }

            v11 += 2;
          }
        }
      }

      v13 = *(v1 + 3);
      if (v13)
      {
        free(v13);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void xsltCompileAttr(xsltStylesheetPtr style, xmlAttrPtr attr)
{
  if (style)
  {
    if (attr)
    {
      children = attr->children;
      if (children)
      {
        if (children->type != XML_TEXT_NODE || children->next)
        {
          xsltTransformError(0, style, attr->parent, "Attribute '%s': The content is expected to be a single text node when compiling an AVT.\n", attr->name);
          ++style->errors;
          return;
        }

        content = children->content;
        if (xmlStrchr(content, 0x7Bu) || xmlStrchr(content, 0x7Du))
        {
          xsltGenericDebug(xsltGenericDebugContext, "Found AVT %s: %s\n", attr->name, content);
          if (attr->psvi)
          {
            xsltGenericDebug(xsltGenericDebugContext, "AVT %s: already compiled\n", attr->name);
            return;
          }

          v6 = xsltNewAttrVT(style);
          if (v6)
          {
            v7 = v6;
            attr->psvi = v6;
            NsList = xmlGetNsList(attr->doc, attr->parent);
            *(v7 + 3) = NsList;
            if (NsList)
            {
              v9 = -1;
              do
              {
                v10 = *NsList++;
                ++v9;
              }

              while (v10);
            }

            else
            {
              v9 = 0;
            }

            v11 = 0;
            v7[8] = v9;
LABEL_19:
            v12 = 0;
            while (1)
            {
              v13 = 0;
              for (i = content + 1; ; ++i)
              {
                v15 = *(i - 1);
                if (!*(i - 1))
                {
                  if (v12 || v13 >= 1)
                  {
                    if (v13 >= 0x7FFFFFFF)
                    {
                      v31 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v31 = v13;
                    }

                    v12 = xmlStrncat(v12, content, v31);
                    if (!v7[2])
                    {
                      v7[4] = 1;
                    }

                    v32 = xsltSetAttrVTsegment(v7, v12);
                    v33 = 0;
                    v34 = 0;
                    if (v32)
                    {
                      v12 = 0;
                      v7 = v32;
                    }

                    goto LABEL_85;
                  }

                  v12 = 0;
                  goto LABEL_76;
                }

                if (v15 == 125)
                {
                  v16 = i;
                  if (*i != 125)
                  {
                    xsltTransformError(0, style, attr->parent, "Attribute '%s': The AVT has an unmatched '}'.\n", attr->name);
LABEL_76:
                    v33 = 0;
                    goto LABEL_77;
                  }

                  goto LABEL_31;
                }

                if (v15 == 123)
                {
                  break;
                }

                ++v13;
              }

              v16 = i - 1;
              v17 = *i;
              if (v17 == 123)
              {
                v16 = i;
              }

              else if (v17 != 125)
              {
                if (v12 || v13 >= 1)
                {
                  if (v13 >= 0x7FFFFFFF)
                  {
                    v19 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v19 = v13;
                  }

                  v12 = xmlStrncat(v12, content, v19);
                  if (!v7[2])
                  {
                    v7[4] = 1;
                  }

                  v20 = xsltSetAttrVTsegment(v7, v12);
                  if (v20)
                  {
                    v11 = 0;
                    content = i - 1;
                    v7 = v20;
                    goto LABEL_44;
                  }

                  goto LABEL_76;
                }

                while (1)
                {
LABEL_44:
                  v21 = *i;
                  if (v21 > 0x26)
                  {
                    if (v21 != 39)
                    {
                      if (v21 == 125)
                      {
                        v26 = v11;
                        if (i - (content + 1) >= 0x7FFFFFFF)
                        {
                          v27 = 0x7FFFFFFF;
                        }

                        else
                        {
                          v27 = i - (content + 1);
                        }

                        v33 = xmlStrndup(content + 1, v27);
                        if (v33)
                        {
                          v34 = xsltXPathCompile(style, v33);
                          if (v34)
                          {
                            if (!v7[2])
                            {
                              v7[4] = 0;
                            }

                            if (v26 == 1)
                            {
                              v28 = xsltSetAttrVTsegment(v7, 0);
                              if (!v28)
                              {
                                xsltTransformError(0, style, attr->parent, "out of memory\n");
                                v12 = 0;
                                goto LABEL_85;
                              }
                            }

                            else
                            {
                              v28 = v7;
                            }

                            v29 = v28;
                            v30 = xsltSetAttrVTsegment(v28, v34);
                            if (v30)
                            {
                              v7 = v30;
                              free(v33);
                              content = i + 1;
                              v11 = 1;
                              goto LABEL_19;
                            }

                            xsltTransformError(0, style, attr->parent, "out of memory\n");
                            v12 = 0;
                            v7 = v29;
LABEL_85:
                            if (attr->psvi != v7)
                            {
                              attr->psvi = v7;
                              style->attVTs = v7;
                            }

                            if (v12)
                            {
                              free(v12);
                            }

                            if (v33)
                            {
                              free(v33);
                            }

                            if (v34)
                            {

                              xmlXPathFreeCompExpr(v34);
                            }

                            return;
                          }

                          xsltTransformError(0, style, attr->parent, "Attribute '%s': Failed to compile the expression '%s' in the AVT.\n", attr->name, v33);
                          v12 = 0;
LABEL_95:
                          ++style->errors;
                          goto LABEL_85;
                        }

                        xsltGenericError(xsltGenericErrorContext, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxslt/libxslt/libxslt/attrvt.c", 284);
                        v12 = 0;
LABEL_77:
                        v34 = 0;
                        goto LABEL_85;
                      }

                      goto LABEL_59;
                    }
                  }

                  else if (v21 != 34)
                  {
                    if (!*i)
                    {
                      xsltTransformError(0, style, attr->parent, "Attribute '%s': The AVT has an unmatched '{'.\n", attr->name);
                      v12 = 0;
                      v33 = 0;
                      v34 = 0;
                      goto LABEL_95;
                    }

LABEL_59:
                    ++i;
                    continue;
                  }

                  v22 = i + 1;
                  do
                  {
                    v24 = *v22++;
                    v23 = v24;
                    if (v24)
                    {
                      v25 = v23 == v21;
                    }

                    else
                    {
                      v25 = 1;
                    }
                  }

                  while (!v25);
                  if (v23)
                  {
                    i = v22;
                  }

                  else
                  {
                    i = v22 - 1;
                  }
                }
              }

LABEL_31:
              if (v16 - content >= 0x7FFFFFFF)
              {
                v18 = 0x7FFFFFFF;
              }

              else
              {
                v18 = v16 - content;
              }

              v12 = xmlStrncat(v12, content, v18);
              content = i + 1;
            }
          }
        }
      }
    }
  }
}

void *xsltNewAttrVT(xsltStylesheet *a1)
{
  v2 = malloc_type_malloc(0x78uLL, 0x10A00402058CDAEuLL);
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
    *(v2 + 3) = 10;
    *v2 = a1->attVTs;
    a1->attVTs = v2;
  }

  else
  {
    xsltTransformError(0, a1, 0, "xsltNewAttrVTPtr : malloc failed\n");
    ++a1->errors;
  }

  return v3;
}

_DWORD *xsltSetAttrVTsegment(_DWORD *result, uint64_t a2)
{
  v3 = result[2];
  v4 = result[3];
  if (v3 >= v4)
  {
    result = malloc_type_realloc(result, 8 * v4 + 120, 0x10A00402058CDAEuLL);
    if (!result)
    {
      return result;
    }

    v5 = &result[2 * result[2]];
    *(v5 + 26) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 10) = 0u;
    v3 = result[2];
    result[3] += 10;
  }

  result[2] = v3 + 1;
  *&result[2 * v3 + 10] = a2;
  return result;
}

xmlChar *__cdecl xsltEvalAVT(xsltTransformContextPtr ctxt, void *avt, xmlNodePtr node)
{
  v3 = 0;
  if (ctxt && avt && node)
  {
    if (*(avt + 2) < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v3 = 0;
      v7 = *(avt + 4);
      do
      {
        v8 = *(avt + v6 + 5);
        if (v7)
        {
          v3 = xmlStrcat(v3, v8);
        }

        else
        {
          v9 = xsltEvalXPathStringNs(ctxt, v8, *(avt + 8), *(avt + 3));
          if (v9)
          {
            v10 = v9;
            if (v3)
            {
              v3 = xmlStrcat(v3, v9);
              free(v10);
            }

            else
            {
              v3 = v9;
            }
          }
        }

        v7 = v7 == 0;
        ++v6;
      }

      while (v6 < *(avt + 2));
    }
  }

  return v3;
}

xmlDocPtr xsltDocDefaultLoaderFunc(const char *a1, xmlDict *a2, int a3)
{
  v6 = xmlNewParserCtxt();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2)
  {
    dict = v6->dict;
    if (dict)
    {
      xmlDictFree(dict);
    }

    v7->dict = a2;
    xmlDictReference(a2);
    xsltGenericDebug(xsltGenericDebugContext, "Reusing dictionary for document\n");
  }

  xmlCtxtUseOptions(v7, a3);
  ExternalEntity = xmlLoadExternalEntity(a1, 0, v7);
  if (ExternalEntity)
  {
    inputPush(v7, ExternalEntity);
    if (!v7->directory)
    {
      v7->directory = xmlParserGetDirectory(a1);
    }

    xmlParseDocument(v7);
    myDoc = v7->myDoc;
    if (!v7->wellFormed)
    {
      xmlFreeDoc(v7->myDoc);
      myDoc = 0;
      v7->myDoc = 0;
    }
  }

  else
  {
    myDoc = 0;
  }

  xmlFreeParserCtxt(v7);
  return myDoc;
}

void xsltSetLoaderFunc(xsltDocLoaderFunc f)
{
  if (f)
  {
    v1 = f;
  }

  else
  {
    v1 = xsltDocDefaultLoaderFunc;
  }

  xsltDocDefaultLoader = v1;
}

xsltDocumentPtr xsltNewDocument(xsltTransformContextPtr ctxt, xmlDocPtr doc)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10A00409F8D441BuLL);
  v5 = v4;
  if (v4)
  {
    *&v4->doc = 0u;
    *&v4->includes = 0u;
    *&v4->next = 0u;
    v4->doc = doc;
    if (ctxt)
    {
      if (!doc || doc->type != XML_DOCUMENT_NODE || (name = doc->name) == 0 || *name != 32)
      {
        v4->next = ctxt->docList;
        ctxt->docList = v4;
      }
    }
  }

  else
  {
    xsltTransformError(ctxt, 0, doc, "xsltNewDocument : malloc failed\n");
  }

  return v5;
}

xsltDocumentPtr xsltNewStyleDocument(xsltStylesheetPtr style, xmlDocPtr doc)
{
  v4 = malloc_type_malloc(0x30uLL, 0x10A00409F8D441BuLL);
  v5 = v4;
  if (v4)
  {
    *&v4->doc = 0u;
    *&v4->includes = 0u;
    *&v4->next = 0u;
    v4->doc = doc;
    if (style)
    {
      v4->next = style->docList;
      style->docList = v4;
    }
  }

  else
  {
    xsltTransformError(0, style, doc, "xsltNewStyleDocument : malloc failed\n");
  }

  return v5;
}

void xsltFreeStyleDocuments(xsltStylesheetPtr style)
{
  if (style)
  {
    docList = style->docList;
    if (docList)
    {
      do
      {
        next = docList->next;
        xsltFreeDocumentKeys(docList);
        if (!docList->main)
        {
          xmlFreeDoc(docList->doc);
        }

        free(docList);
        docList = next;
      }

      while (next);
    }
  }
}

void xsltFreeDocuments(xsltTransformContextPtr ctxt)
{
  docList = ctxt->docList;
  if (docList)
  {
    do
    {
      next = docList->next;
      xsltFreeDocumentKeys(docList);
      if (!docList->main)
      {
        xmlFreeDoc(docList->doc);
      }

      free(docList);
      docList = next;
    }

    while (next);
  }

  styleList = ctxt->styleList;
  if (styleList)
  {
    do
    {
      v5 = styleList->next;
      xsltFreeDocumentKeys(styleList);
      if (!styleList->main)
      {
        xmlFreeDoc(styleList->doc);
      }

      free(styleList);
      styleList = v5;
    }

    while (v5);
  }
}

xsltDocumentPtr xsltLoadDocument(xsltTransformContextPtr ctxt, const xmlChar *URI)
{
  i = 0;
  if (!ctxt || !URI)
  {
    return i;
  }

  sec = ctxt->sec;
  if (sec)
  {
    v6 = xsltCheckRead(sec, ctxt, URI);
    if (v6 <= 0)
    {
      if (!v6)
      {
        xsltTransformError(ctxt, 0, 0, "xsltLoadDocument: read rights for %s denied\n", URI);
      }

      return 0;
    }
  }

  for (i = ctxt->docList; i; i = i->next)
  {
    doc = i->doc;
    if (doc)
    {
      URL = doc->URL;
      if (URL)
      {
        if (xmlStrEqual(URL, URI))
        {
          return i;
        }
      }
    }
  }

  v9 = xsltDocDefaultLoader(URI, ctxt->dict, ctxt->parserOptions, ctxt, XSLT_LOAD_DOCUMENT);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  if (ctxt->xinclude)
  {
    xmlXIncludeProcessFlags(v9, ctxt->parserOptions);
  }

  if (xsltNeedElemSpaceHandling(ctxt))
  {
    RootElement = xmlDocGetRootElement(v10);
    xsltApplyStripSpaces(ctxt, RootElement);
  }

  if (!ctxt->debugStatus)
  {
    xmlXPathOrderDocElems(v10);
  }

  return xsltNewDocument(ctxt, v10);
}

xsltDocumentPtr xsltLoadStyleDocument(xsltStylesheetPtr style, const xmlChar *URI)
{
  i = 0;
  if (!style || !URI)
  {
    return i;
  }

  DefaultSecurityPrefs = xsltGetDefaultSecurityPrefs();
  if (DefaultSecurityPrefs)
  {
    v6 = xsltCheckRead(DefaultSecurityPrefs, 0, URI);
    if (v6 <= 0)
    {
      if (!v6)
      {
        xsltTransformError(0, 0, 0, "xsltLoadStyleDocument: read rights for %s denied\n", URI);
      }

      return 0;
    }
  }

  for (i = style->docList; i; i = i->next)
  {
    doc = i->doc;
    if (doc)
    {
      URL = doc->URL;
      if (URL)
      {
        if (xmlStrEqual(URL, URI))
        {
          return i;
        }
      }
    }
  }

  v9 = xsltDocDefaultLoader(URI, style->dict, 16398, style, XSLT_LOAD_STYLESHEET);
  if (!v9)
  {
    return 0;
  }

  return xsltNewStyleDocument(style, v9);
}

xsltDocumentPtr xsltFindDocument(xsltTransformContextPtr ctxt, xmlDocPtr doc)
{
  result = 0;
  if (ctxt && doc)
  {
    result = &ctxt->docList;
    while (1)
    {
      result = result->next;
      if (!result)
      {
        break;
      }

      if (result->doc == doc)
      {
        return result;
      }
    }

    if (ctxt->style->doc == doc)
    {
      return ctxt->document;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void xsltFreeExts(xsltStylesheetPtr style)
{
  nsDefs = style->nsDefs;
  if (nsDefs)
  {
    do
    {
      v3 = *nsDefs;
      v2 = nsDefs[1];
      if (v2)
      {
        free(v2);
      }

      v4 = nsDefs[2];
      if (v4)
      {
        free(v4);
      }

      free(nsDefs);
      nsDefs = v3;
    }

    while (v3);
  }
}

int xsltRegisterExtPrefix(xsltStylesheetPtr style, const xmlChar *prefix, const xmlChar *URI)
{
  result = -1;
  if (style && URI)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Registering extension namespace '%s'.\n", URI);
    p_nsDefs = &style->nsDefs;
    v8 = &style->nsDefs;
    while (1)
    {
      v8 = *v8;
      if (!v8)
      {
        break;
      }

      if (xmlStrEqual(prefix, v8[1]))
      {
        return -1;
      }
    }

    v9 = malloc_type_malloc(0x20uLL, 0xB0040A659E37EuLL);
    if (!v9)
    {
      xsltTransformError(0, 0, 0, "xsltNewExtDef : malloc failed\n");
      return -1;
    }

    v10 = v9;
    *v9 = 0u;
    *(v9 + 1) = 0u;
    if (prefix)
    {
      v9[1] = xmlStrdup(prefix);
    }

    v10[2] = xmlStrdup(URI);
    *v10 = *p_nsDefs;
    *p_nsDefs = v10;
    if (xsltExtensionsHash)
    {
      xmlMutexLock(xsltExtMutex);
      v11 = xmlHashLookup(xsltExtensionsHash, URI);
      xmlMutexUnlock(xsltExtMutex);
      if (v11 || !xsltExtModuleRegisterDynamic(URI) && (xmlMutexLock(xsltExtMutex), v12 = xmlHashLookup(xsltExtensionsHash, URI), xmlMutexUnlock(xsltExtMutex), v12))
      {
        xsltStyleGetExtData(style, URI);
      }
    }

    return 0;
  }

  return result;
}

uint64_t xsltExtModuleRegisterDynamic(const xmlChar *a1)
{
  v52 = *MEMORY[0x29EDCA608];
  if (!xsltModuleHash)
  {
    xsltModuleHash = xmlHashCreate(5);
    if (!xsltModuleHash)
    {
      goto LABEL_30;
    }
  }

  xmlMutexLock(xsltExtMutex);
  v2 = xmlHashLookup(xsltModuleHash, a1);
  xmlMutexUnlock(xsltExtMutex);
  if (v2)
  {
    goto LABEL_30;
  }

  v3 = xmlStrstr(a1, "://");
  v4 = v3 ? v3 + 3 : a1;
  v5 = xmlStrdup(v4);
  if (!v5)
  {
    goto LABEL_30;
  }

  bzero(buf, 0x400uLL);
  for (i = v5; ; ++i)
  {
    v7 = *i;
    if ((v7 - 45) <= 0x2F && ((1 << (v7 - 45)) & 0x800000000007) != 0)
    {
      *i = 95;
      continue;
    }

    if (!*i)
    {
      break;
    }
  }

  while (i > v5)
  {
    v9 = *--i;
    if (v9 != 95)
    {
      break;
    }

    *i = 0;
  }

  v10 = getenv("LIBXSLT_PLUGINS_PATH");
  if (v10)
  {
    v17 = v10;
    xsltGenericDebug(xsltGenericDebugContext, "LIBXSLT_PLUGINS_PATH is %s\n", v11, v12, v13, v14, v15, v16, v10);
  }

  else
  {
    v17 = "/usr/lib/libxslt-plugins";
  }

  xmlStrPrintf(buf, 1024, "%s/%s%s", v17, v5, ".so");
  xsltGenericDebug(xsltGenericDebugContext, "Attempting to load plugin: %s for URI: %s\n", v18, v19, v20, v21, v22, v23, buf);
  if (xmlCheckFilename(buf) != 1)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xmlCheckFilename failed for plugin: %s\n", v24, v25, v26, v27, v28, v29, buf);
LABEL_29:
    free(v5);
LABEL_30:
    v48 = 0xFFFFFFFFLL;
    goto LABEL_31;
  }

  v30 = xmlModuleOpen(buf, 0);
  if (!v30)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xmlModuleOpen failed for plugin: %s\n", v31, v32, v33, v34, v35, v36, buf);
    goto LABEL_29;
  }

  v37 = v30;
  v38 = xmlStrdup(v5);
  v39 = xmlStrcat(v38, "_init");
  result = 0;
  v40 = xmlModuleSymbol(v37, v39, &result);
  v47 = result;
  if (v40)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xmlModuleSymbol failed for plugin: %s, regfunc: %s\n", v41, v42, v43, v44, v45, v46, buf);
    xmlModuleClose(v37);
  }

  else
  {
    (result)();
    xmlMutexLock(xsltExtMutex);
    xmlHashAddEntry(xsltModuleHash, a1, v37);
    xmlMutexUnlock(xsltExtMutex);
  }

  free(v5);
  free(v39);
  if (v47)
  {
    v48 = 0;
  }

  else
  {
    v48 = 0xFFFFFFFFLL;
  }

LABEL_31:
  v49 = *MEMORY[0x29EDCA608];
  return v48;
}

void *__cdecl xsltStyleGetExtData(xsltStylesheetPtr style, const xmlChar *URI)
{
  result = 0;
  if (style && URI && xsltExtensionsHash)
  {
    Import = style;
    do
    {
      extInfos = Import->extInfos;
      if (extInfos)
      {
        v7 = xmlHashLookup(extInfos, URI);
        if (v7)
        {
          return *(v7 + 1);
        }
      }

      Import = xsltNextImport(Import);
    }

    while (Import);
    if (!xsltExtensionsHash || (xmlMutexLock(xsltExtMutex), v8 = xmlHashLookup(xsltExtensionsHash, URI), xmlMutexUnlock(xsltExtMutex), !v8))
    {
      xsltGenericDebug(xsltGenericDebugContext, "Not registered extension module: %s\n", URI);
      return 0;
    }

    if (style->extInfos || (result = xmlHashCreate(10), (style->extInfos = result) != 0))
    {
      if (v8[2])
      {
        xsltGenericDebug(xsltGenericDebugContext, "Initializing module with callback: %s\n", URI);
        v9 = v8[2](style, URI);
      }

      else
      {
        xsltGenericDebug(xsltGenericDebugContext, "Initializing module with *no* callback: %s\n", URI);
        v9 = 0;
      }

      result = xsltNewExtData(v8, v9);
      if (result)
      {
        v10 = result;
        if ((xmlHashAddEntry(style->extInfos, URI, result) & 0x80000000) == 0)
        {
          return v10[1];
        }

        xsltTransformError(0, style, 0, "Failed to register module '%s'.\n", URI);
        ++style->errors;
        v11 = v8[3];
        if (v11)
        {
          (v11)(style, URI, v9);
        }

        free(v10);
        return 0;
      }
    }
  }

  return result;
}

int xsltRegisterExtFunction(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *URI, xmlXPathFunction function)
{
  if (!ctxt || !name || !URI || !function)
  {
    return -1;
  }

  xpathCtxt = ctxt->xpathCtxt;
  if (xpathCtxt)
  {
    xmlXPathRegisterFuncNS(xpathCtxt, name, URI, function);
  }

  extFunctions = ctxt->extFunctions;
  if (!extFunctions)
  {
    extFunctions = xmlHashCreate(10);
    ctxt->extFunctions = extFunctions;
    if (!extFunctions)
    {
      return -1;
    }
  }

  return xmlHashAddEntry2(extFunctions, name, URI, function);
}

int xsltRegisterExtElement(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *URI, xsltTransformFunction function)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!name)
  {
    return -1;
  }

  if (!URI)
  {
    return -1;
  }

  if (!function)
  {
    return -1;
  }

  extElements = ctxt->extElements;
  if (!extElements)
  {
    extElements = xmlHashCreate(10);
    ctxt->extElements = extElements;
    if (!extElements)
    {
      return -1;
    }
  }

  return xmlHashAddEntry2(extElements, name, URI, function);
}

void xsltFreeCtxtExts(xsltTransformContextPtr ctxt)
{
  extElements = ctxt->extElements;
  if (extElements)
  {
    xmlHashFree(extElements, 0);
  }

  extFunctions = ctxt->extFunctions;
  if (extFunctions)
  {

    xmlHashFree(extFunctions, 0);
  }
}

void *__cdecl xsltGetExtData(xsltTransformContextPtr ctxt, const xmlChar *URI)
{
  result = 0;
  if (!ctxt || !URI)
  {
    return result;
  }

  extInfos = ctxt->extInfos;
  if (extInfos)
  {
    v6 = xmlHashLookup(extInfos, URI);
    if (v6)
    {
      return v6[1];
    }
  }

  else
  {
    result = xmlHashCreate(10);
    ctxt->extInfos = result;
    if (!result)
    {
      return result;
    }
  }

  xmlMutexLock(xsltExtMutex);
  v7 = xmlHashLookup(xsltExtensionsHash, URI);
  xmlMutexUnlock(xsltExtMutex);
  if (!v7)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Not registered extension module: %s\n", URI);
    return 0;
  }

  if (!*v7)
  {
    return 0;
  }

  xsltGenericDebug(xsltGenericDebugContext, "Initializing module: %s\n", URI);
  result = (*v7)(ctxt, URI);
  if (result)
  {
    v8 = result;
    result = xsltNewExtData(v7, result);
    if (result)
    {
      v6 = result;
      if ((xmlHashAddEntry(ctxt->extInfos, URI, result) & 0x80000000) == 0)
      {
        return v6[1];
      }

      xsltTransformError(ctxt, 0, 0, "Failed to register module data: %s\n", URI);
      v9 = v7[1];
      if (v9)
      {
        (v9)(ctxt, URI, v8);
      }

      free(v6);
      return 0;
    }
  }

  return result;
}

void *xsltNewExtData(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = a1;
    v4[1] = a2;
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltNewExtData : malloc failed\n");
  }

  return v5;
}

int xsltInitCtxtExts(xsltTransformContextPtr ctxt)
{
  if (!ctxt)
  {
    return -1;
  }

  style = ctxt->style;
  if (ctxt->style)
  {
    data = ctxt;
    v5 = 0;
    while (1)
    {
      extInfos = style->extInfos;
      if (extInfos)
      {
        xmlHashScan(extInfos, xsltInitCtxtExt, &data);
        if (v5 == -1)
        {
          break;
        }
      }

      style = xsltNextImport(style);
      if (!style)
      {
        xsltGenericDebug(xsltGenericDebugContext, "Registered %d modules\n", v5);
        return v5;
      }
    }
  }

  return -1;
}

void xsltInitCtxtExt(void **a1, _DWORD *a2, xmlChar *name, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1 || !a2 || !name || a2[2] == -1)
  {
    v12 = xsltGenericDebug;
    v13 = xsltGenericDebugContext;
    v14 = "xsltInitCtxtExt: NULL param or error\n";
    goto LABEL_11;
  }

  v11 = *a1;
  if (!*a1 || !*v11)
  {
    v12 = xsltGenericDebug;
    v13 = xsltGenericDebugContext;
    v14 = "xsltInitCtxtExt: no module or no initFunc\n";
    goto LABEL_11;
  }

  if (!xmlHashLookup(*(*a2 + 88), name))
  {
    v15 = (*v11)(*a2, name);
    if (!v15)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltInitCtxtExt: no extData\n");
    }

    v16 = xsltNewExtData(v11, v15);
    if (v16)
    {
      v17 = v16;
      v18 = *(*a2 + 88);
      if (v18 || (v18 = xmlHashCreate(10), (*(*a2 + 88) = v18) != 0))
      {
        if ((xmlHashAddEntry(v18, name, v17) & 0x80000000) == 0)
        {
          xsltGenericDebug(xsltGenericDebugContext, "Registered module %s\n", name);
          v19 = a2[2] + 1;
LABEL_25:
          a2[2] = v19;
          return;
        }

        xsltGenericError(xsltGenericErrorContext, "Failed to register module data: %s\n", name);
        v20 = v11[1];
        if (v20)
        {
          v20(*a2, name, v15);
        }

        free(v17);
      }
    }

    v19 = -1;
    goto LABEL_25;
  }

  v12 = xsltGenericDebug;
  v13 = xsltGenericDebugContext;
  v14 = "xsltInitCtxtExt: already initialized\n";
LABEL_11:

  v12(v13, v14, v12, a4, a5, a6, a7, a8, a9);
}

void xsltShutdownCtxtExts(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    extInfos = ctxt->extInfos;
    if (extInfos)
    {
      xmlHashScan(extInfos, xsltShutdownCtxtExt, ctxt);
      xmlHashFree(ctxt->extInfos, xsltFreeExtDataEntry);
      ctxt->extInfos = 0;
    }
  }
}

void *xsltShutdownCtxtExt(void *result, uint64_t a2, const char *a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        v6 = *result;
        if (*result)
        {
          if (*(v6 + 8))
          {
            xsltGenericDebug(xsltGenericDebugContext, "Shutting down module : %s\n", a3);
            v7 = *(v6 + 8);
            v8 = v5[1];

            return v7(a2, a3, v8);
          }
        }
      }
    }
  }

  return result;
}

void xsltFreeExtDataEntry(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void xsltShutdownExts(xsltStylesheetPtr style)
{
  if (style)
  {
    extInfos = style->extInfos;
    if (extInfos)
    {
      xmlHashScan(extInfos, xsltShutdownExt, style);
      xmlHashFree(style->extInfos, xsltFreeExtDataEntry);
      style->extInfos = 0;
    }
  }
}

void *xsltShutdownExt(void *result, uint64_t a2, const char *a3)
{
  if (result)
  {
    if (a2)
    {
      if (a3)
      {
        v5 = result;
        v6 = *result;
        if (*result)
        {
          if (*(v6 + 24))
          {
            xsltGenericDebug(xsltGenericDebugContext, "Shutting down module : %s\n", a3);
            v7 = *(v6 + 24);
            v8 = v5[1];

            return v7(a2, a3, v8);
          }
        }
      }
    }
  }

  return result;
}

int xsltCheckExtPrefix(xsltStylesheetPtr style, const xmlChar *URI)
{
  if (style)
  {
    nsDefs = style->nsDefs;
    if (nsDefs)
    {
      if (URI)
      {
        v3 = URI;
      }

      else
      {
        v3 = "#default";
      }

      while (!xmlStrEqual(v3, *(nsDefs + 1)))
      {
        nsDefs = *nsDefs;
        if (!nsDefs)
        {
          goto LABEL_8;
        }
      }

      LODWORD(style) = 1;
    }

    else
    {
LABEL_8:
      LODWORD(style) = 0;
    }
  }

  return style;
}

int xsltCheckExtURI(xsltStylesheetPtr style, const xmlChar *URI)
{
  if (style)
  {
    v3 = style;
    LODWORD(style) = 0;
    if (URI)
    {
      nsDefs = v3->nsDefs;
      if (nsDefs)
      {
        while (!xmlStrEqual(URI, *(nsDefs + 2)))
        {
          nsDefs = *nsDefs;
          if (!nsDefs)
          {
            LODWORD(style) = 0;
            return style;
          }
        }

        LODWORD(style) = 1;
      }
    }
  }

  return style;
}

int xsltRegisterExtModuleFull(const xmlChar *URI, xsltExtInitFunction initFunc, xsltExtShutdownFunction shutdownFunc, xsltStyleExtInitFunction styleInitFunc, xsltStyleExtShutdownFunction styleShutdownFunc)
{
  v5 = -1;
  if (URI && initFunc)
  {
    if (xsltExtensionsHash || (xsltExtensionsHash = xmlHashCreate(10)) != 0)
    {
      xmlMutexLock(xsltExtMutex);
      v11 = xmlHashLookup(xsltExtensionsHash, URI);
      if (v11)
      {
        if (*v11 == initFunc && v11[1] == shutdownFunc)
        {
          v5 = 0;
LABEL_14:
          xmlMutexUnlock(xsltExtMutex);
          return v5;
        }
      }

      else
      {
        v12 = malloc_type_malloc(0x20uLL, 0x8004018A671A6uLL);
        if (v12)
        {
          *v12 = initFunc;
          v12[1] = shutdownFunc;
          v12[2] = styleInitFunc;
          v12[3] = styleShutdownFunc;
          v5 = xmlHashAddEntry(xsltExtensionsHash, URI, v12);
          goto LABEL_14;
        }

        xsltTransformError(0, 0, 0, "xsltNewExtModule : malloc failed\n");
      }

      v5 = -1;
      goto LABEL_14;
    }

    return -1;
  }

  return v5;
}

int xsltUnregisterExtModule(const xmlChar *URI)
{
  if (!URI || !xsltExtensionsHash)
  {
    return -1;
  }

  v1 = URI;
  xmlMutexLock(xsltExtMutex);
  LODWORD(v1) = xmlHashRemoveEntry(xsltExtensionsHash, v1, xsltFreeExtModuleEntry);
  xmlMutexUnlock(xsltExtMutex);
  return v1;
}

void xsltFreeExtModuleEntry(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

xsltTransformContextPtr xsltXPathGetTransformContext(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    v1 = *&ctxt->templNr;
    if (v1)
    {
      return *(v1 + 160);
    }

    else
    {
      return 0;
    }
  }

  return ctxt;
}

int xsltRegisterExtModuleFunction(const xmlChar *name, const xmlChar *URI, xmlXPathFunction function)
{
  result = -1;
  if (name && URI && function)
  {
    if (xsltFunctionsHash || (xsltFunctionsHash = xmlHashCreate(10)) != 0)
    {
      xmlMutexLock(xsltExtMutex);
      xmlHashUpdateEntry2(xsltFunctionsHash, name, URI, function, 0);
      xmlMutexUnlock(xsltExtMutex);
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

xmlXPathFunction xsltExtModuleFunctionLookup(const xmlChar *name, const xmlChar *URI)
{
  v2 = 0;
  if (!URI)
  {
    return v2;
  }

  if (!name)
  {
    return v2;
  }

  if (!xsltFunctionsHash)
  {
    return v2;
  }

  xmlMutexLock(xsltExtMutex);
  v2 = xmlHashLookup2(xsltFunctionsHash, name, URI);
  xmlMutexUnlock(xsltExtMutex);
  if (v2)
  {
    return v2;
  }

  if (xsltExtModuleRegisterDynamic(URI))
  {
    return 0;
  }

  xmlMutexLock(xsltExtMutex);
  v6 = xmlHashLookup2(xsltFunctionsHash, name, URI);
  xmlMutexUnlock(xsltExtMutex);
  return v6;
}

int xsltUnregisterExtModuleFunction(const xmlChar *name, const xmlChar *URI)
{
  if (!URI || !name || !xsltFunctionsHash)
  {
    return -1;
  }

  v3 = URI;
  xmlMutexLock(xsltExtMutex);
  LODWORD(v3) = xmlHashRemoveEntry2(xsltFunctionsHash, name, v3, 0);
  xmlMutexUnlock(xsltExtMutex);
  return v3;
}

xsltElemPreCompPtr xsltNewElemPreComp(xsltStylesheetPtr style, xmlNodePtr inst, xsltTransformFunction function)
{
  v6 = malloc_type_malloc(0x28uLL, 0x10A004014863BF0uLL);
  v7 = v6;
  if (v6)
  {
    v6->next = 0;
    *&v6->type = 0;
    v6->type = XSLT_FUNC_EXTENSION;
    v6->func = function;
    v6->inst = inst;
    v6->free = xsltFreeElemPreComp;
    v6->next = style->preComps;
    style->preComps = v6;
  }

  else
  {
    xsltTransformError(0, style, 0, "xsltNewExtElement : malloc failed\n");
  }

  return v7;
}

void xsltInitElemPreComp(xsltElemPreCompPtr comp, xsltStylesheetPtr style, xmlNodePtr inst, xsltTransformFunction function, xsltElemPreCompDeallocator freeFunc)
{
  comp->type = XSLT_FUNC_EXTENSION;
  comp->func = function;
  comp->inst = inst;
  comp->free = freeFunc;
  comp->next = style->preComps;
  style->preComps = comp;
}

xsltElemPreCompPtr xsltPreComputeExtModuleElement(xsltStylesheetPtr style, xmlNodePtr inst)
{
  result = 0;
  if (style && inst)
  {
    if (inst->type == XML_ELEMENT_NODE && inst->ns && (xmlMutexLock(xsltExtMutex), v5 = xmlHashLookup2(xsltElementsHash, inst->name, inst->ns->href), xmlMutexUnlock(xsltExtMutex), v5))
    {
      if (!*v5 || (result = (*v5)(style, inst, v5[1])) == 0)
      {
        v6 = v5[1];

        return xsltNewElemPreComp(style, inst, v6);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int xsltRegisterExtModuleElement(const xmlChar *name, const xmlChar *URI, xsltPreComputeFunction precomp, xsltTransformFunction transform)
{
  v4 = -1;
  if (name && URI && transform)
  {
    if (xsltElementsHash || (xsltElementsHash = xmlHashCreate(10)) != 0)
    {
      xmlMutexLock(xsltExtMutex);
      v9 = malloc_type_malloc(0x10uLL, 0x80040803F642BuLL);
      if (v9)
      {
        *v9 = precomp;
        v9[1] = transform;
        xmlHashUpdateEntry2(xsltElementsHash, name, URI, v9, xsltFreeExtElementEntry);
        v4 = 0;
      }

      else
      {
        xsltTransformError(0, 0, 0, "xsltNewExtElement : malloc failed\n");
        v4 = -1;
      }

      xmlMutexUnlock(xsltExtMutex);
    }

    else
    {
      return -1;
    }
  }

  return v4;
}

void xsltFreeExtElementEntry(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

xsltTransformFunction xsltExtElementLookup(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *URI)
{
  result = 0;
  if (name)
  {
    if (URI)
    {
      if (!ctxt || (extElements = ctxt->extElements) == 0 || (result = xmlHashLookup2(extElements, name, URI)) == 0)
      {

        return xsltExtModuleElementLookup(name, URI);
      }
    }
  }

  return result;
}

xsltTransformFunction xsltExtModuleElementLookup(const xmlChar *name, const xmlChar *URI)
{
  result = 0;
  if (URI && name && xsltElementsHash)
  {
    xmlMutexLock(xsltExtMutex);
    v5 = xmlHashLookup2(xsltElementsHash, name, URI);
    xmlMutexUnlock(xsltExtMutex);
    if (v5)
    {
      return *(v5 + 1);
    }

    if (!xsltExtModuleRegisterDynamic(URI) && (xmlMutexLock(xsltExtMutex), v5 = xmlHashLookup2(xsltElementsHash, name, URI), xmlMutexUnlock(xsltExtMutex), v5))
    {
      return *(v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

xsltPreComputeFunction xsltExtModuleElementPreComputeLookup(const xmlChar *name, const xmlChar *URI)
{
  result = 0;
  if (URI && name && xsltElementsHash)
  {
    xmlMutexLock(xsltExtMutex);
    v5 = xmlHashLookup2(xsltElementsHash, name, URI);
    xmlMutexUnlock(xsltExtMutex);
    if (v5)
    {
      return *v5;
    }

    if (!xsltExtModuleRegisterDynamic(URI) && (xmlMutexLock(xsltExtMutex), v5 = xmlHashLookup2(xsltElementsHash, name, URI), xmlMutexUnlock(xsltExtMutex), v5))
    {
      return *v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int xsltUnregisterExtModuleElement(const xmlChar *name, const xmlChar *URI)
{
  if (!URI || !name || !xsltElementsHash)
  {
    return -1;
  }

  v3 = URI;
  xmlMutexLock(xsltExtMutex);
  LODWORD(v3) = xmlHashRemoveEntry2(xsltElementsHash, name, v3, xsltFreeExtElementEntry);
  xmlMutexUnlock(xsltExtMutex);
  return v3;
}

int xsltRegisterExtModuleTopLevel(const xmlChar *name, const xmlChar *URI, xsltTopLevelFunction function)
{
  result = -1;
  if (name && URI && function)
  {
    if (xsltTopLevelsHash || (xsltTopLevelsHash = xmlHashCreate(10)) != 0)
    {
      xmlMutexLock(xsltExtMutex);
      xmlHashUpdateEntry2(xsltTopLevelsHash, name, URI, function, 0);
      xmlMutexUnlock(xsltExtMutex);
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

xsltTopLevelFunction xsltExtModuleTopLevelLookup(const xmlChar *name, const xmlChar *URI)
{
  v2 = 0;
  if (!URI)
  {
    return v2;
  }

  if (!name)
  {
    return v2;
  }

  if (!xsltTopLevelsHash)
  {
    return v2;
  }

  xmlMutexLock(xsltExtMutex);
  v2 = xmlHashLookup2(xsltTopLevelsHash, name, URI);
  xmlMutexUnlock(xsltExtMutex);
  if (v2)
  {
    return v2;
  }

  if (xsltExtModuleRegisterDynamic(URI))
  {
    return 0;
  }

  xmlMutexLock(xsltExtMutex);
  v6 = xmlHashLookup2(xsltTopLevelsHash, name, URI);
  xmlMutexUnlock(xsltExtMutex);
  return v6;
}

int xsltUnregisterExtModuleTopLevel(const xmlChar *name, const xmlChar *URI)
{
  if (!URI || !name || !xsltTopLevelsHash)
  {
    return -1;
  }

  v3 = URI;
  xmlMutexLock(xsltExtMutex);
  LODWORD(v3) = xmlHashRemoveEntry2(xsltTopLevelsHash, name, v3, 0);
  xmlMutexUnlock(xsltExtMutex);
  return v3;
}

xmlHashTablePtr xsltGetExtInfo(xsltStylesheetPtr style, const xmlChar *URI)
{
  if (!style)
  {
    return 0;
  }

  extInfos = style->extInfos;
  if (!extInfos)
  {
    return 0;
  }

  v3 = xmlHashLookup(extInfos, URI);
  if (!v3)
  {
    return 0;
  }

  result = *(v3 + 1);
  if (!result)
  {
    return 0;
  }

  return result;
}

void xsltRegisterTestModule(void)
{
  pthread_once(&once_control, _xsltInitGlobalsOnce);
  xsltRegisterExtModuleFull("http://xmlsoft.org/XSLT/", xsltExtInitTest, xsltExtShutdownTest, xsltExtStyleInitTest, xsltExtStyleShutdownTest);
  xsltRegisterExtModuleFunction("test", "http://xmlsoft.org/XSLT/", xsltExtFunctionTest);

  xsltRegisterExtModuleElement("test", "http://xmlsoft.org/XSLT/", xsltExtElementPreCompTest, xsltExtElementTest);
}

uint64_t xsltExtInitTest(xsltTransformContextPtr ctxt, const char *a2)
{
  if (testStyleData || (xsltGenericDebug(xsltGenericErrorContext, "xsltExtInitTest: not initialized, calling xsltStyleGetExtData\n"), (testStyleData = xsltStyleGetExtData(ctxt->style, a2)) != 0))
  {
    if (!testData)
    {
      testData = "test data";
      xsltGenericDebug(xsltGenericDebugContext, "Registered test module : %s\n", a2);
      return testData;
    }

    xsltTransformError(ctxt, 0, 0, "xsltExtInitTest: already initialized\n");
  }

  else
  {
    xsltTransformError(ctxt, 0, 0, "xsltExtInitTest: not initialized\n");
  }

  return 0;
}

void xsltExtShutdownTest(xsltTransformContext *a1, const char *a2, uint64_t a3)
{
  if (testData)
  {
    if (testData != a3)
    {
      xsltTransformError(a1, 0, 0, "xsltExtShutdownTest: wrong data\n");
    }

    testData = 0;
    xsltGenericDebug(xsltGenericDebugContext, "Unregistered test module : %s\n", a2);
  }

  else
  {

    xsltTransformError(a1, 0, 0, "xsltExtShutdownTest: not initialized\n");
  }
}

uint64_t xsltExtStyleInitTest(uint64_t a1, const char *a2)
{
  if (testStyleData)
  {
    xsltTransformError(0, 0, 0, "xsltExtInitTest: already initialized\n");
    return 0;
  }

  else
  {
    testStyleData = "test data";
    xsltGenericDebug(xsltGenericDebugContext, "Registered test module : %s\n", a2);
    return testStyleData;
  }
}

void xsltExtStyleShutdownTest(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (testStyleData)
  {
    if (testStyleData != a3)
    {
      xsltTransformError(0, 0, 0, "xsltExtShutdownTest: wrong data\n");
    }

    testStyleData = 0;
    xsltGenericDebug(xsltGenericDebugContext, "Unregistered test module : %s\n", a2);
  }

  else
  {
    v10 = xsltGenericError;
    v11 = xsltGenericErrorContext;

    v10(v11, "xsltExtShutdownTest: not initialized\n", v10, a4, a5, a6, a7, a8, a9);
  }
}

void xsltExtFunctionTest(uint64_t a1)
{
  if (a1 && (v2 = *(a1 + 24)) != 0)
  {
    v3 = *(v2 + 160);
  }

  else
  {
    v3 = 0;
  }

  if (testData)
  {
    if (v3)
    {
      ExtData = xsltGetExtData(v3, "http://xmlsoft.org/XSLT/");
      if (!ExtData)
      {
        if (a1 && (v5 = *(a1 + 24)) != 0)
        {
          v6 = *(v5 + 160);
        }

        else
        {
          v6 = 0;
        }

        v9 = "xsltExtFunctionTest: failed to get module data\n";
        goto LABEL_28;
      }

      goto LABEL_13;
    }

LABEL_17:
    if (a1 && (v8 = *(a1 + 24)) != 0)
    {
      v6 = *(v8 + 160);
    }

    else
    {
      v6 = 0;
    }

    v9 = "xsltExtFunctionTest: failed to get the transformation context\n";
    goto LABEL_28;
  }

  xsltGenericDebug(xsltGenericDebugContext, "xsltExtFunctionTest: not initialized, calling xsltGetExtData\n");
  ExtData = xsltGetExtData(v3, "http://xmlsoft.org/XSLT/");
  if (!ExtData)
  {
    v9 = "xsltExtElementTest: not initialized\n";
    v6 = v3;
    goto LABEL_28;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (ExtData == testData)
  {
    return;
  }

  if (a1 && (v7 = *(a1 + 24)) != 0)
  {
    v6 = *(v7 + 160);
  }

  else
  {
    v6 = 0;
  }

  v9 = "xsltExtFunctionTest: got wrong module data\n";
LABEL_28:

  xsltTransformError(v6, 0, 0, v9);
}

xsltElemPreCompPtr xsltExtElementPreCompTest(xsltStylesheet *ctxt, xmlNodePtr node, xsltTransformFunction function)
{
  if (!ctxt)
  {
    xsltTransformError(0, 0, node, "xsltExtElementTest: no transformation context\n");
    return 0;
  }

  if (!testStyleData)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltExtElementPreCompTest: not initialized, calling xsltStyleGetExtData\n");
    xsltStyleGetExtData(ctxt, "http://xmlsoft.org/XSLT/");
    if (!testStyleData)
    {
      xsltTransformError(0, ctxt, node, "xsltExtElementPreCompTest: not initialized\n");
      goto LABEL_11;
    }
  }

  if (!node)
  {
    xsltTransformError(0, ctxt, 0, "xsltExtElementPreCompTest: no instruction\n");
LABEL_11:
    ++ctxt->errors;
    return 0;
  }

  return xsltNewElemPreComp(ctxt, node, function);
}

void xsltExtElementTest(xsltTransformContextPtr ctxt, uint64_t a2, xmlNodePtr node)
{
  if (!testData)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltExtElementTest: not initialized, calling xsltGetExtData\n");
    xsltGetExtData(ctxt, "http://xmlsoft.org/XSLT/");
    if (!testData)
    {
      v8 = "xsltExtElementTest: not initialized\n";
      goto LABEL_15;
    }
  }

  if (!ctxt)
  {
    v8 = "xsltExtElementTest: no transformation context\n";
    v9 = 0;
LABEL_16:
    v10 = node;
    goto LABEL_17;
  }

  if (!a2)
  {
    v8 = "xsltExtElementTest: no current node\n";
LABEL_15:
    v9 = ctxt;
    goto LABEL_16;
  }

  if (node)
  {
    if (ctxt->insert)
    {
      v6 = xmlNewComment("libxslt:test element test worked");
      insert = ctxt->insert;

      xmlAddChild(insert, v6);
      return;
    }

    v8 = "xsltExtElementTest: no insertion point\n";
    goto LABEL_15;
  }

  v8 = "xsltExtElementTest: no instruction\n";
  v9 = ctxt;
  v10 = 0;
LABEL_17:

  xsltTransformError(v9, 0, v10, v8);
}

xmlMutexPtr _xsltInitGlobalsOnce()
{
  result = xmlNewMutex();
  xsltExtMutex = result;
  return result;
}

void xsltCleanupGlobals(void)
{
  if (xsltExtensionsHash)
  {
    xmlMutexLock(xsltExtMutex);
    xmlHashFree(xsltExtensionsHash, xsltFreeExtModuleEntry);
    xsltExtensionsHash = 0;
    xmlMutexUnlock(xsltExtMutex);
  }

  xmlMutexLock(xsltExtMutex);
  xmlHashFree(xsltFunctionsHash, 0);
  xsltFunctionsHash = 0;
  xmlMutexUnlock(xsltExtMutex);
  xmlMutexLock(xsltExtMutex);
  xmlHashFree(xsltElementsHash, xsltFreeExtElementEntry);
  xsltElementsHash = 0;
  xmlMutexUnlock(xsltExtMutex);
  xmlMutexLock(xsltExtMutex);
  xmlHashFree(xsltTopLevelsHash, 0);
  xsltTopLevelsHash = 0;
  xmlMutexUnlock(xsltExtMutex);
  xmlMutexLock(xsltExtMutex);
  if (xsltModuleHash)
  {
    xmlHashScan(xsltModuleHash, xsltHashScannerModuleFree, 0);
    xmlHashFree(xsltModuleHash, 0);
    xsltModuleHash = 0;
  }

  xmlMutexUnlock(xsltExtMutex);
  xmlFreeMutex(xsltExtMutex);
  xsltExtMutex = 0;
  xsltFreeLocales();

  xsltUninit();
}

void xsltDebugDumpExtensions(FILE *output)
{
  v1 = *MEMORY[0x29EDCA620];
  if (output)
  {
    v2 = output;
  }

  else
  {
    v2 = *MEMORY[0x29EDCA620];
  }

  fwrite("Registered XSLT Extensions\n--------------------------\n", 0x36uLL, 1uLL, v2);
  if (xsltFunctionsHash)
  {
    fwrite("Registered Extension Functions:\n", 0x20uLL, 1uLL, v2);
    xmlMutexLock(xsltExtMutex);
    xmlHashScanFull(xsltFunctionsHash, xsltDebugDumpExtensionsCallback, v2);
    xmlMutexUnlock(xsltExtMutex);
  }

  else
  {
    fwrite("No registered extension functions\n", 0x22uLL, 1uLL, v2);
  }

  if (xsltElementsHash)
  {
    fwrite("\nRegistered Extension Elements:\n", 0x20uLL, 1uLL, v2);
    xmlMutexLock(xsltExtMutex);
    xmlHashScanFull(xsltElementsHash, xsltDebugDumpExtensionsCallback, v2);
    xmlMutexUnlock(xsltExtMutex);
  }

  else
  {
    fwrite("\nNo registered extension elements\n", 0x22uLL, 1uLL, v2);
  }

  if (xsltExtensionsHash)
  {
    fwrite("\nRegistered Extension Modules:\n", 0x1FuLL, 1uLL, v2);
    xmlMutexLock(xsltExtMutex);
    xmlHashScanFull(xsltExtensionsHash, xsltDebugDumpExtModulesCallback, v2);
    v3 = xsltExtMutex;

    xmlMutexUnlock(v3);
  }

  else
  {

    fwrite("\nNo registered extension modules\n", 0x21uLL, 1uLL, v2);
  }
}

uint64_t xsltDebugDumpExtensionsCallback(int a1, FILE *a2, const char *a3, const char *a4)
{
  if (a3)
  {
    if (a4)
    {
      return fprintf(a2, "{%s}%s\n", a4, a3);
    }
  }

  return result;
}

uint64_t xsltDebugDumpExtModulesCallback(int a1, FILE *a2, const char *a3)
{
  if (a3)
  {
    return fprintf(a2, "%s\n", a3);
  }

  return result;
}

void xsltDebug(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNodePtr inst, xsltElemPreCompPtr comp)
{
  xsltGenericError(xsltGenericErrorContext, "Templates:\n", inst, comp);
  templNr = ctxt->templNr;
  if (templNr >= 1)
  {
    v12 = 0;
    v13 = templNr - 1;
    if ((templNr - 1) >= 0xE)
    {
      v13 = 14;
    }

    v14 = 8 * templNr - 8;
    v15 = v13 + 1;
    do
    {
      xsltGenericError(xsltGenericErrorContext, "#%d ", v5, v6, v7, v8, v9, v10, v12);
      v22 = *(ctxt->templTab + v14);
      v23 = v22[4];
      if (v23)
      {
        xsltGenericError(xsltGenericErrorContext, "name %s ", v16, v17, v18, v19, v20, v21, v23);
        v22 = *(ctxt->templTab + v14);
      }

      v24 = v22[2];
      if (v24)
      {
        xsltGenericError(xsltGenericErrorContext, "name %s ", v16, v17, v18, v19, v20, v21, v24);
        v22 = *(ctxt->templTab + v14);
      }

      v25 = v22[6];
      if (v25)
      {
        xsltGenericError(xsltGenericErrorContext, "name %s ", v16, v17, v18, v19, v20, v21, v25);
      }

      xsltGenericError(xsltGenericErrorContext, "\n");
      ++v12;
      v14 -= 8;
    }

    while (v15 != v12);
  }

  xsltGenericError(xsltGenericErrorContext, "Variables:\n");
  v44 = ctxt;
  varsNr = ctxt->varsNr;
  if (varsNr >= 1)
  {
    v33 = 0;
    v34 = varsNr - 1;
    if ((varsNr - 1) >= 0xE)
    {
      v34 = 14;
    }

    v43 = v34;
    v35 = MEMORY[0x29EDCA620];
    v36 = MEMORY[0x29EDCA610];
    do
    {
      if (v44->varsTab[--varsNr])
      {
        xsltGenericError(xsltGenericErrorContext, "#%d\n", v26, v27, v28, v29, v30, v31, v33);
        for (i = &v44->varsTab[varsNr]->next; i; i = *i)
        {
          v38 = i[1];
          if (v38)
          {
            v39 = *(v38 + 8);
            if (v39 == 19)
            {
              xsltGenericError(xsltGenericErrorContext, "param ");
            }

            else if (v39 == 20)
            {
              xsltGenericError(xsltGenericErrorContext, "var ");
            }
          }

          else
          {
            xsltGenericError(xsltGenericErrorContext, "corrupted !!!\n");
          }

          if (i[3])
          {
            xsltGenericError(xsltGenericErrorContext, "%s ", v26, v27, v28, v29, v30, v31, i[3]);
          }

          else
          {
            xsltGenericError(xsltGenericErrorContext, "noname !!!!", v26, v27, v28, v29, v30, v31, v42);
          }

          v40 = i[7];
          if (v40)
          {
            v41 = xsltGenericDebugContext == *v35 || xsltGenericDebugContext == *v36;
            if (v41)
            {
              xmlXPathDebugDumpObject(xsltGenericDebugContext, v40, 1);
            }
          }

          else
          {
            xsltGenericError(xsltGenericErrorContext, "NULL !!!!");
          }

          xsltGenericError(xsltGenericErrorContext, "\n");
        }
      }

      v41 = v33++ == v43;
    }

    while (!v41);
  }
}

void xsltFunctionNodeSet(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs == 1)
  {
    value = ctxt->value;
    if (value)
    {
      if (value->type == XPATH_NODESET)
      {
        return;
      }

      if (value->type == XPATH_XSLT_TREE)
      {
        value->type = XPATH_NODESET;
        return;
      }
    }

    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "node-set() invalid arg expecting a result tree\n");
    v5 = 11;
  }

  else
  {
    v4 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v4, 0, 0, "node-set() : expects one result-tree arg\n");
    v5 = 12;
  }

  ctxt->error = v5;
}

void xsltRegisterAllExtras(void)
{
  xsltRegisterExtModuleFunction("node-set", "http://xmlsoft.org/XSLT/namespace", xsltFunctionNodeSet);
  xsltRegisterExtModuleFunction("node-set", "http://icl.com/saxon", xsltFunctionNodeSet);
  xsltRegisterExtModuleFunction("node-set", "http://www.jclark.com/xt", xsltFunctionNodeSet);
  xsltRegisterExtModuleElement("debug", "http://xmlsoft.org/XSLT/namespace", 0, xsltDebug);
  xsltRegisterExtModuleElement("output", "http://icl.com/saxon", xsltDocumentComp, xsltDocumentElem);
  xsltRegisterExtModuleElement("write", "org.apache.xalan.xslt.extensions.Redirect", xsltDocumentComp, xsltDocumentElem);
  xsltRegisterExtModuleElement("document", "http://www.jclark.com/xt", xsltDocumentComp, xsltDocumentElem);

  xsltRegisterExtModuleElement("document", "http://www.w3.org/1999/XSL/Transform", xsltDocumentComp, xsltDocumentElem);
}

xmlXPathFunction xsltXPathFunctionLookup(void *vctxt, const xmlChar *name, const xmlChar *ns_uri)
{
  v3 = 0;
  if (vctxt && name && ns_uri)
  {
    xsltGenericDebug(xsltGenericDebugContext, "Lookup function {%s}%s\n", ns_uri, name);
    v7 = xmlHashLookup2(*(vctxt + 7), name, ns_uri);
    if (v7)
    {
      v3 = v7;
LABEL_7:
      xsltGenericDebug(xsltGenericDebugContext, "found function %s\n", v8, v9, v10, v11, v12, v13, name);
      return v3;
    }

    v3 = xsltExtModuleFunctionLookup(name, ns_uri);
    if (v3)
    {
      goto LABEL_7;
    }
  }

  return v3;
}

void xsltDocumentFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if ((nargs - 3) <= 0xFFFFFFFD)
  {
    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "document() : invalid number of args %d\n", nargs);
    v5 = 12;
LABEL_36:
    ctxt->error = v5;
    return;
  }

  value = ctxt->value;
  if (!value)
  {
    v8 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v8, 0, 0, "document() : invalid arg value\n");
    goto LABEL_35;
  }

  if (nargs == 2)
  {
    if (value->type == XPATH_NODESET)
    {
      v7 = valuePop(ctxt);
      value = ctxt->value;
      goto LABEL_9;
    }

    v23 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v23, 0, 0, "document() : invalid arg expecting a nodeset\n");
LABEL_35:
    v5 = 11;
    goto LABEL_36;
  }

  v7 = 0;
LABEL_9:
  if (value->type == XPATH_NODESET)
  {
    v9 = valuePop(ctxt);
    v10 = xmlXPathNewNodeSet(0);
    if (v9)
    {
      p_nodeNr = &v9->nodesetval->nodeNr;
      if (p_nodeNr && *p_nodeNr >= 1)
      {
        v12 = 0;
        do
        {
          v13 = xmlXPathNewNodeSet(*(*(p_nodeNr + 1) + 8 * v12));
          valuePush(ctxt, v13);
          xmlXPathStringFunction(ctxt, 1);
          if (nargs == 2)
          {
            v14 = xmlXPathObjectCopy(v7);
          }

          else
          {
            v14 = xmlXPathNewNodeSet(v9->nodesetval->nodeTab[v12]);
          }

          valuePush(ctxt, v14);
          xsltDocumentFunction(ctxt, 2);
          v15 = valuePop(ctxt);
          v10->nodesetval = xmlXPathNodeSetMerge(v10->nodesetval, v15->nodesetval);
          xmlXPathFreeObject(v15);
          ++v12;
          p_nodeNr = &v9->nodesetval->nodeNr;
        }

        while (v12 < *p_nodeNr);
      }

      xmlXPathFreeObject(v9);
    }

    if (v7)
    {
      xmlXPathFreeObject(v7);
    }

    valuePush(ctxt, v10);
    return;
  }

  xmlXPathStringFunction(ctxt, 1);
  if (ctxt->value->type != XPATH_STRING)
  {
    v24 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v24, 0, 0, "document() : invalid arg expecting a string\n");
    ctxt->error = 11;
    if (!v7)
    {
      return;
    }

    goto LABEL_93;
  }

  v16 = valuePop(ctxt);
  if (!v16->stringval)
  {
    goto LABEL_59;
  }

  v17 = xsltXPathGetTransformContext(ctxt);
  v18 = v17;
  if (v7)
  {
    nodesetval = v7->nodesetval;
    if (nodesetval)
    {
      if (nodesetval->nodeNr >= 1)
      {
        inst = *nodesetval->nodeTab;
        if (inst)
        {
          type = inst->type;
          if (type <= 0xD)
          {
            v22 = 1 << type;
            if ((v22 & 0x231A) != 0)
            {
LABEL_42:
              doc = inst->doc;
              goto LABEL_43;
            }

            if ((v22 & 0x84) != 0)
            {
              inst = inst->parent;
              goto LABEL_42;
            }
          }
        }
      }
    }
  }

  if (!v17)
  {
    goto LABEL_48;
  }

  inst = v17->inst;
  if (inst)
  {
    goto LABEL_42;
  }

  style = v17->style;
  if (!v17->style || (doc = style->doc) == 0)
  {
LABEL_48:
    v27 = xmlBuildURI(v16->stringval, 0);
    goto LABEL_49;
  }

  inst = style->doc;
LABEL_43:
  Base = xmlNodeGetBase(doc, inst);
  v27 = xmlBuildURI(v16->stringval, Base);
  if (Base)
  {
    free(Base);
  }

LABEL_49:
  if (!v27)
  {
    if (v18)
    {
      if (v18->style)
      {
        v36 = v18->style->doc;
        if (v36)
        {
          if (xmlStrEqual(0, v36->URL))
          {
            v37 = v18->style->doc;
LABEL_60:
            v38 = xmlXPathNewNodeSet(v37);
            valuePush(ctxt, v38);
            goto LABEL_92;
          }
        }
      }
    }

LABEL_59:
    v37 = 0;
    goto LABEL_60;
  }

  v29 = xsltXPathGetTransformContext(ctxt);
  if (!v29)
  {
    xsltTransformError(0, 0, 0, "document() : internal error tctxt == NULL\n");
LABEL_63:
    v39 = 0;
LABEL_64:
    v40 = xmlXPathNewNodeSet(v39);
    valuePush(ctxt, v40);
    goto LABEL_91;
  }

  v30 = v29;
  v31 = xmlParseURI(v27);
  if (!v31)
  {
    xsltTransformError(v30, 0, 0, "document() : failed to parse URI\n");
    goto LABEL_63;
  }

  v32 = v31;
  fragment = v31->fragment;
  if (fragment)
  {
    v31->fragment = 0;
    v34 = xmlSaveUri(v31);
    Document = xsltLoadDocument(v30, v34);
    free(v34);
  }

  else
  {
    Document = xsltLoadDocument(v30, v27);
  }

  xmlFreeURI(v32);
  if (Document)
  {
    v41 = Document->doc;
    goto LABEL_68;
  }

  if (*v27 == 35 || (v46 = v30->style->doc) != 0 && xmlStrEqual(v46->URL, v27))
  {
    v47 = xmlCopyDoc(v30->style->doc, 1);
    if (v47)
    {
      v41 = v47;
      xsltCleanupSourceDoc(v47);
      if (!xsltNewDocument(v30, v41))
      {
        xsltTransformError(v30, 0, 0, "document() : failed to create xsltDocument\n");
        v48 = xmlXPathNewNodeSet(0);
        valuePush(ctxt, v48);
        if (fragment)
        {
          free(fragment);
        }

        xmlFreeDoc(v41);
        goto LABEL_91;
      }

LABEL_68:
      v39 = v41;
      if (fragment)
      {
        v42 = xmlXPtrNewContext(v41, 0, 0);
        if (v42)
        {
          v43 = v42;
          if (linkedOnOrAfterFall2022OSVersions())
          {
            context = ctxt->context;
            *&v43->opLimit = *&context->opLimit;
            v43->depth = context->depth;
          }

          v45 = xmlXPtrEval(fragment, v43);
          if (linkedOnOrAfterFall2022OSVersions())
          {
            ctxt->context->opCount = v43->opCount;
          }

          xmlXPathFreeContext(v43);
          if (v45)
          {
            if (v45->type - 2 >= 8 && v45->type)
            {
              v50 = ctxt;
              v49 = v45;
              goto LABEL_87;
            }

            xsltTransformError(v30, 0, 0, "document() : XPointer does not select a node set: #%s\n", fragment);
            xmlXPathFreeObject(v45);
          }
        }

        else
        {
          xsltTransformError(v30, 0, 0, "document() : internal error xptrctxt == NULL\n");
        }

        v49 = xmlXPathNewNodeSet(0);
        v50 = ctxt;
LABEL_87:
        valuePush(v50, v49);
LABEL_90:
        free(fragment);
        goto LABEL_91;
      }

      goto LABEL_64;
    }

    xsltTransformError(v30, 0, 0, "document() : failed to copy style doc\n");
  }

  v51 = xmlXPathNewNodeSet(0);
  valuePush(ctxt, v51);
  if (fragment)
  {
    goto LABEL_90;
  }

LABEL_91:
  free(v27);
LABEL_92:
  xmlXPathFreeObject(v16);
  if (!v7)
  {
    return;
  }

LABEL_93:

  xmlXPathFreeObject(v7);
}

void xsltKeyFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs != 2)
  {
    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "key() : expects two arguments\n");
    ctxt->error = 12;
    return;
  }

  v3 = valuePop(ctxt);
  xmlXPathStringFunction(ctxt, 1);
  if (v3)
  {
    value = ctxt->value;
    if (value)
    {
      if (value->type == XPATH_STRING)
      {
        v5 = valuePop(ctxt);
        if ((v3->type | 8) == 9)
        {
          v6 = xmlXPathNewNodeSet(0);
          p_nodeNr = &v3->nodesetval->nodeNr;
          if (p_nodeNr && *p_nodeNr >= 1)
          {
            v8 = 0;
            do
            {
              v9 = xmlXPathObjectCopy(v5);
              valuePush(ctxt, v9);
              v10 = xmlXPathNewNodeSet(v3->nodesetval->nodeTab[v8]);
              valuePush(ctxt, v10);
              xmlXPathStringFunction(ctxt, 1);
              xsltKeyFunction(ctxt, 2);
              v11 = valuePop(ctxt);
              v6->nodesetval = xmlXPathNodeSetMerge(v6->nodesetval, v11->nodesetval);
              xmlXPathFreeObject(v11);
              ++v8;
            }

            while (v8 < v3->nodesetval->nodeNr);
          }

          valuePush(ctxt, v6);
LABEL_47:
          if (v5)
          {
            xmlXPathFreeObject(v5);
          }

          if (v3)
          {
            xmlXPathFreeObject(v3);
          }

          return;
        }

        prefix = 0;
        context = ctxt->context;
        v15 = xsltXPathGetTransformContext(ctxt);
        v16 = v15;
        document = v15->document;
        if (!context->node)
        {
          xsltTransformError(v15, 0, v15->inst, "Internal error in xsltKeyFunction(): The context node is not set on the XPath context.\n");
          Key = 0;
          v19 = 0;
          goto LABEL_23;
        }

        v18 = xmlSplitQName2(v5->stringval, &prefix);
        if (v18)
        {
          v19 = v18;
          if (prefix)
          {
            v20 = xmlXPathNsLookup(context, prefix);
            if (!v20)
            {
              xsltTransformError(v16, 0, v16->inst, "key() : prefix %s is not bound\n", prefix);
            }

            free(prefix);
            goto LABEL_27;
          }
        }

        else
        {
          v19 = xmlStrdup(v5->stringval);
          if (prefix)
          {
            free(prefix);
          }
        }

        v20 = 0;
LABEL_27:
        valuePush(ctxt, v3);
        xmlXPathStringFunction(ctxt, 1);
        v22 = valuePop(ctxt);
        v3 = v22;
        if (!v22 || v22->type != XPATH_STRING)
        {
          xsltTransformError(v16, 0, v16->inst, "key() : invalid arg expecting a string\n");
          Key = 0;
          ctxt->error = 11;
          goto LABEL_45;
        }

        stringval = v22->stringval;
        node = context->node;
        if (node->type == XML_NAMESPACE_DECL && ((node = node->_private) == 0 || node->type != XML_ELEMENT_NODE) || (doc = node->doc) == 0)
        {
          xsltTransformError(v16, 0, v16->inst, "Internal error in xsltKeyFunction(): Couldn't get the doc of the XPath context node.\n");
          goto LABEL_42;
        }

        v26 = v16->document;
        if (v26 && v26->doc == doc)
        {
          goto LABEL_44;
        }

        name = doc->name;
        if (name && *name == 32)
        {
          v28 = doc->_private;
          if (doc->_private || (v28 = xsltNewDocument(v16, doc), (node->doc->_private = v28) != 0))
          {
            v16->document = v28;
LABEL_44:
            Key = xsltGetKey(v16, v19, v20, stringval);
LABEL_45:
            v16->document = document;
            v30 = xmlXPathNodeSetMerge(0, Key);
            v31 = xmlXPathWrapNodeSet(v30);
            valuePush(ctxt, v31);
            if (v19)
            {
              free(v19);
            }

            goto LABEL_47;
          }

LABEL_42:
          Key = 0;
          goto LABEL_45;
        }

        v29 = xsltFindDocument(v16, doc);
        v16->document = v29;
        if (v29)
        {
          goto LABEL_44;
        }

        xsltTransformError(v16, 0, v16->inst, "Internal error in xsltKeyFunction(): Could not get the document info of a context doc.\n");
        Key = 0;
LABEL_23:
        v16->state = XSLT_STATE_STOPPED;
        goto LABEL_45;
      }
    }
  }

  v13 = xsltXPathGetTransformContext(ctxt);
  xsltTransformError(v13, 0, 0, "key() : invalid arg expecting a string\n");
  ctxt->error = 11;

  xmlXPathFreeObject(v3);
}

void xsltUnparsedEntityURIFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs == 1 && ctxt->value)
  {
    v3 = valuePop(ctxt);
    v4 = v3;
    if (v3->type != XPATH_STRING)
    {
      v4 = xmlXPathConvertString(v3);
    }

    stringval = v4->stringval;
    if (stringval)
    {
      DocEntity = xmlGetDocEntity(ctxt->context->doc, stringval);
      v7 = &unk_2999B6B5E;
      if (DocEntity)
      {
        URI = DocEntity->URI;
        if (URI)
        {
          v7 = URI;
        }
      }
    }

    else
    {
      v7 = &unk_2999B6B5E;
    }

    v9 = xmlXPathNewString(v7);
    valuePush(ctxt, v9);

    xmlXPathFreeObject(v4);
  }

  else
  {
    xsltGenericError(xsltGenericErrorContext, "unparsed-entity-uri() : expects one string arg\n");
    ctxt->error = 12;
  }
}

void xsltFormatNumberFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  prefix = 0;
  TransformContext = xsltXPathGetTransformContext(ctxt);
  if (!TransformContext)
  {
    return;
  }

  v5 = TransformContext;
  if (!TransformContext->inst)
  {
    return;
  }

  result = 0;
  style = TransformContext->style;
  if (!TransformContext->style)
  {
    return;
  }

  decimalFormat = style->decimalFormat;
  if (nargs == 2)
  {
    v9 = 0;
    goto LABEL_21;
  }

  if (nargs == 3)
  {
    value = ctxt->value;
    if (value && value->type != XPATH_STRING)
    {
      xmlXPathStringFunction(ctxt, 1);
    }

    v9 = valuePop(ctxt);
    v10 = xsltSplitQName(style->dict, v9->stringval, &prefix);
    if (prefix)
    {
      v11 = xmlSearchNs(v5->inst->doc, v5->inst, prefix);
      if (!v11)
      {
        xsltTransformError(v5, 0, 0, "format-number : No namespace found for QName '%s:%s'\n", prefix, v10);
        ++style->errors;
        if (decimalFormat)
        {
LABEL_21:
          v13 = ctxt->value;
          if (v13 && v13->type != XPATH_STRING)
          {
            xmlXPathStringFunction(ctxt, 1);
          }

          v14 = valuePop(ctxt);
          v15 = ctxt->value;
          if (v15 && v15->type != XPATH_NUMBER)
          {
            xmlXPathNumberFunction(ctxt, 1);
          }

          v16 = valuePop(ctxt);
          v17 = v16;
          if (decimalFormat)
          {
            if (xsltFormatNumberConversion(decimalFormat, v14->stringval, v16->floatval, &result) == XPATH_EXPRESSION_OK)
            {
              v18 = xmlXPathNewString(result);
              valuePush(ctxt, v18);
              free(result);
            }
          }

          xmlXPathFreeObject(v17);
          xmlXPathFreeObject(v14);
          xmlXPathFreeObject(v9);
          return;
        }

LABEL_20:
        xsltTransformError(v5, 0, 0, "format-number() : undeclared decimal format '%s'\n", v9->stringval);
        goto LABEL_21;
      }

      href = v11->href;
    }

    else
    {
      href = 0;
    }

    if (v10)
    {
      decimalFormat = xsltDecimalFormatGetByQName(style, href, v10);
    }

    if (decimalFormat)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  xmlXPathErr(ctxt, 12);
}

void xsltGenerateIdFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  v33 = *MEMORY[0x29EDCA608];
  TransformContext = xsltXPathGetTransformContext(ctxt);
  v5 = TransformContext;
  if (nargs == 1)
  {
    value = ctxt->value;
    if (!value || value->type != XPATH_NODESET)
    {
      ctxt->error = 11;
      xsltTransformError(TransformContext, 0, 0, "generate-id() : invalid arg expecting a node-set\n");
      v6 = 0;
      goto LABEL_55;
    }

    v6 = valuePop(ctxt);
    p_nodeNr = &v6->nodesetval->nodeNr;
    if (!p_nodeNr || *p_nodeNr <= 0)
    {
      v17 = xmlXPathNewCString(&unk_2999B6B5E);
      goto LABEL_54;
    }

    node = **(p_nodeNr + 1);
    if (*p_nodeNr != 1)
    {
      v13 = 1;
      do
      {
        if (xmlXPathCmpNodes(node, *(*(p_nodeNr + 1) + 8 * v13)) == -1)
        {
          node = *(*(p_nodeNr + 1) + 8 * v13);
        }

        ++v13;
      }

      while (v13 < *p_nodeNr);
    }
  }

  else
  {
    if (nargs)
    {
      xsltTransformError(TransformContext, 0, 0, "generate-id() : invalid number of args %d\n", nargs);
      v6 = 0;
      v14 = 12;
      goto LABEL_21;
    }

    v6 = 0;
    node = ctxt->context->node;
  }

  if (!linkedOnOrAfterFall2023OSVersions())
  {
    *__str = 0;
    v31 = 0;
    memset(v32, 0, sizeof(v32));
    pthread_once(&once_control_0, _initBaseValue);
    if (node - base_value < 0)
    {
      snprintf(__str, 0x1EuLL, "idm%ld");
    }

    else
    {
      snprintf(__str, 0x1EuLL, "idp%ld");
    }

    v17 = xmlXPathNewString(__str);
    goto LABEL_54;
  }

  if (node->type == XML_NAMESPACE_DECL)
  {
    if (node->children)
    {
      children = node->children;
    }

    else
    {
      children = &unk_2999B6B5E;
    }

    v9 = xmlStrlen(children);
    v10 = 2 * v9 + 32;
    node = node->_private;
  }

  else
  {
    children = 0;
    v9 = 0;
    v10 = 30;
  }

  PSVIPtr = xsltGetPSVIPtr(node);
  if (PSVIPtr)
  {
    v16 = PSVIPtr;
    if ((xsltGetSourceNodeFlags(node) & 2) != 0)
    {
      v18 = *v16;
    }

    else
    {
      if (node->type == XML_TEXT_NODE && node->line == -1)
      {
        node->line = 0;
      }

      else if (*v16)
      {
        xsltTransformError(v5, 0, 0, "generate-id(): psvi already set\n");
LABEL_57:
        v14 = 15;
        goto LABEL_21;
      }

      currentId = v5->currentId;
      if (currentId == -1)
      {
        xsltTransformError(v5, 0, 0, "generate-id(): id overflow\n");
        goto LABEL_57;
      }

      v18 = currentId + 1;
      v5->currentId = currentId + 1;
      *v16 = currentId + 1;
      xsltSetSourceNodeFlags(v5, node, 2);
    }

    v20 = malloc_type_malloc(v10, 0x950442D3uLL);
    if (!v20)
    {
      xsltTransformError(v5, 0, 0, "generate-id(): out of memory\n");
      goto LABEL_57;
    }

    v21 = v20;
    if (children)
    {
      snprintf(v20, v10, "id%luns", v18);
      v22 = strlen(v21);
      if (v9)
      {
        v23 = &v21[v22 + 1];
        v22 += 2 * v9;
        do
        {
          if (*children >= 0xA0u)
          {
            v24 = (*children >> 4) + 55;
          }

          else
          {
            v24 = (*children >> 4) | 0x30;
          }

          *(v23 - 1) = v24;
          v25 = *children++;
          v26 = v25 & 0xF;
          v27 = v25 & 0xF | 0x30;
          v28 = v26 + 55;
          if (v26 < 0xA)
          {
            v28 = v27;
          }

          *v23 = v28;
          v23 += 2;
          --v9;
        }

        while (v9);
      }

      v21[v22] = 0;
    }

    else
    {
      snprintf(v20, v10, "id%lu", v18);
    }

    v17 = xmlXPathWrapString(v21);
LABEL_54:
    valuePush(ctxt, v17);
    goto LABEL_55;
  }

  xsltTransformError(v5, 0, 0, "generate-id(): invalid node type %d\n", node->type);
  v14 = 11;
LABEL_21:
  ctxt->error = v14;
LABEL_55:
  xmlXPathFreeObject(v6);
  v29 = *MEMORY[0x29EDCA608];
}

uint64_t _initBaseValue()
{
  v0 = time(0);
  srandom(v0);
  result = random();
  if (result)
  {
    v2 = 1;
  }

  else
  {
    result = random();
    v2 = result != 0;
  }

  base_value = v2;
  return result;
}

void xsltSystemPropertyFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs == 1)
  {
    value = ctxt->value;
    if (value)
    {
      prefix = 0;
      if (value->type == XPATH_STRING)
      {
        v4 = valuePop(ctxt);
        stringval = v4->stringval;
        if (!stringval)
        {
          v13 = xmlXPathNewString(&unk_2999B6B5E);
          valuePush(ctxt, v13);
LABEL_36:
          xmlXPathFreeObject(v4);
          return;
        }

        v6 = xmlSplitQName2(stringval, &prefix);
        if (v6)
        {
          v7 = v6;
          v8 = xmlXPathNsLookup(ctxt->context, prefix);
          if (v8)
          {
LABEL_15:
            v14 = &unk_2999B6B5E;
            if (xmlStrEqual(v8, "http://www.w3.org/1999/XSL/Transform"))
            {
              if (xmlStrEqual(v7, "vendor"))
              {
                TransformContext = xsltXPathGetTransformContext(ctxt);
                if (TransformContext && (p_style = &TransformContext->style, (inst = TransformContext->inst) != 0) && xmlStrEqual(inst->name, "variable") && (v18 = *(p_style[23] + 40)) != 0 && xmlStrEqual(*(v18 + 16), "template") && *p_style && (v19 = *(*p_style + 32)) != 0 && (v20 = *(v19 + 136)) != 0 && xmlStrstr(v20, "chunk"))
                {
                  v14 = "libxslt (SAXON 6.2 compatible)";
                }

                else
                {
                  v14 = "libxslt";
                }
              }

              else if (xmlStrEqual(v7, "version"))
              {
                v14 = "1.0";
              }

              else if (xmlStrEqual(v7, "vendor-url"))
              {
                v14 = "http://xmlsoft.org/XSLT/";
              }
            }

            v21 = xmlXPathNewString(v14);
            valuePush(ctxt, v21);
            if (v7)
            {
              free(v7);
            }

            if (prefix)
            {
              free(prefix);
            }

            goto LABEL_36;
          }

          v9 = xsltXPathGetTransformContext(ctxt);
          xsltTransformError(v9, 0, 0, "system-property() : prefix %s is not bound\n", prefix);
        }

        else
        {
          v7 = xmlStrdup(v4->stringval);
        }

        v8 = 0;
        goto LABEL_15;
      }
    }

    v12 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v12, 0, 0, "system-property() : invalid arg expecting a string\n");
    v11 = 11;
  }

  else
  {
    v10 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v10, 0, 0, "system-property() : expects one string arg\n");
    v11 = 12;
  }

  ctxt->error = v11;
}

void xsltElementAvailableFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs != 1)
  {
    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "element-available() : expects one string arg\n");
    v12 = 12;
LABEL_11:
    ctxt->error = v12;
    return;
  }

  xmlXPathStringFunction(ctxt, 1);
  value = ctxt->value;
  if (!value || (prefix = 0, value->type != XPATH_STRING))
  {
    v13 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v13, 0, 0, "element-available() : invalid arg expecting a string\n");
    v12 = 11;
    goto LABEL_11;
  }

  v4 = valuePop(ctxt);
  v5 = xsltXPathGetTransformContext(ctxt);
  if (v5)
  {
    v6 = v5;
    if (v5->inst)
    {
      v7 = xmlSplitQName2(v4->stringval, &prefix);
      if (v7)
      {
        v8 = v7;
        v9 = xmlXPathNsLookup(ctxt->context, prefix);
        if (v9)
        {
          href = v9;
LABEL_20:
          v18 = xsltExtElementLookup(v6, v8, href) != 0;
          v19 = xmlXPathNewBoolean(v18);
          valuePush(ctxt, v19);
          xmlXPathFreeObject(v4);
          if (v8)
          {
            free(v8);
          }

          if (prefix)
          {
            free(prefix);
          }

          return;
        }

        v17 = xsltXPathGetTransformContext(ctxt);
        xsltTransformError(v17, 0, 0, "element-available() : prefix %s is not bound\n", prefix);
      }

      else
      {
        v8 = xmlStrdup(v4->stringval);
        v16 = xmlSearchNs(v6->inst->doc, v6->inst, 0);
        if (v16)
        {
          href = v16->href;
          goto LABEL_20;
        }
      }

      href = 0;
      goto LABEL_20;
    }
  }

  v14 = xsltXPathGetTransformContext(ctxt);
  xsltTransformError(v14, 0, 0, "element-available() : internal error tctxt == NULL\n");
  xmlXPathFreeObject(v4);
  v15 = xmlXPathNewBoolean(0);

  valuePush(ctxt, v15);
}

void xsltFunctionAvailableFunction(xmlXPathParserContextPtr ctxt, int nargs)
{
  if (nargs != 1)
  {
    TransformContext = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(TransformContext, 0, 0, "function-available() : expects one string arg\n");
    v10 = 12;
LABEL_9:
    ctxt->error = v10;
    return;
  }

  xmlXPathStringFunction(ctxt, 1);
  value = ctxt->value;
  if (!value || (prefix = 0, value->type != XPATH_STRING))
  {
    v11 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v11, 0, 0, "function-available() : invalid arg expecting a string\n");
    v10 = 11;
    goto LABEL_9;
  }

  v4 = valuePop(ctxt);
  v5 = xmlSplitQName2(v4->stringval, &prefix);
  if (!v5)
  {
    v6 = xmlStrdup(v4->stringval);
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = xmlXPathNsLookup(ctxt->context, prefix);
  if (!v7)
  {
    v12 = xsltXPathGetTransformContext(ctxt);
    xsltTransformError(v12, 0, 0, "function-available() : prefix %s is not bound\n", prefix);
    goto LABEL_13;
  }

  v8 = v7;
LABEL_14:
  v13 = xmlXPathFunctionLookupNS(ctxt->context, v6, v8) != 0;
  v14 = xmlXPathNewBoolean(v13);
  valuePush(ctxt, v14);
  xmlXPathFreeObject(v4);
  if (v6)
  {
    free(v6);
  }

  if (prefix)
  {
    free(prefix);
  }
}

void xsltRegisterAllFunctions(xmlXPathContextPtr ctxt)
{
  xmlXPathRegisterFunc(ctxt, "current", xsltCurrentFunction);
  xmlXPathRegisterFunc(ctxt, "document", xsltDocumentFunction);
  xmlXPathRegisterFunc(ctxt, "key", xsltKeyFunction);
  xmlXPathRegisterFunc(ctxt, "unparsed-entity-uri", xsltUnparsedEntityURIFunction);
  xmlXPathRegisterFunc(ctxt, "format-number", xsltFormatNumberFunction);
  xmlXPathRegisterFunc(ctxt, "generate-id", xsltGenerateIdFunction);
  xmlXPathRegisterFunc(ctxt, "system-property", xsltSystemPropertyFunction);
  xmlXPathRegisterFunc(ctxt, "element-available", xsltElementAvailableFunction);

  xmlXPathRegisterFunc(ctxt, "function-available", xsltFunctionAvailableFunction);
}

void xsltCurrentFunction(xmlXPathParserContext *a1, int a2)
{
  TransformContext = xsltXPathGetTransformContext(a1);
  if (a2)
  {
    xsltTransformError(TransformContext, 0, 0, "current() : function uses no argument\n");
    a1->error = 12;
  }

  else
  {
    if (TransformContext)
    {
      node = TransformContext->node;
    }

    else
    {
      v6 = xsltXPathGetTransformContext(a1);
      xsltTransformError(v6, 0, 0, "current() : internal error tctxt == NULL\n");
      node = 0;
    }

    v7 = xmlXPathNewNodeSet(node);

    valuePush(a1, v7);
  }
}

int xsltParseStylesheetImport(xsltStylesheetPtr style, xmlNodePtr cur)
{
  v2 = -1;
  if (!style || !cur)
  {
    return v2;
  }

  NsProp = xmlGetNsProp(cur, "href", 0);
  if (!NsProp)
  {
    xsltTransformError(0, style, cur, "xsl:import : missing href attribute\n");
    return v2;
  }

  v6 = NsProp;
  Base = xmlNodeGetBase(style->doc, cur);
  v8 = xmlBuildURI(v6, Base);
  v9 = v8;
  if (v8)
  {
    if ((xsltCheckCycle(style, v8) & 0x80000000) != 0)
    {
      v17 = v9;
      v15 = "xsl:import : recursion detected on imported URL %s\n";
    }

    else
    {
      DefaultSecurityPrefs = xsltGetDefaultSecurityPrefs();
      if (DefaultSecurityPrefs)
      {
        v11 = xsltCheckRead(DefaultSecurityPrefs, 0, v9);
        if (v11 <= 0)
        {
          if (!v11)
          {
            xsltTransformError(0, 0, 0, "xsl:import: read rights for %s denied\n");
          }

          goto LABEL_18;
        }
      }

      v12 = xsltDocDefaultLoader(v9, style->dict, 16398, style, XSLT_LOAD_STYLESHEET);
      if (v12)
      {
        v13 = v12;
        v14 = xsltParseStylesheetImportedDoc(v12, style);
        if (v14)
        {
          v14->next = style->imports;
          style->imports = v14;
          if (!style->parent)
          {
            xsltFixImportedCompSteps(style, v14);
          }

          v2 = 0;
        }

        else
        {
          xmlFreeDoc(v13);
          v2 = -1;
        }

        goto LABEL_18;
      }

      v17 = v9;
      v15 = "xsl:import : unable to load %s\n";
    }
  }

  else
  {
    v17 = v6;
    v15 = "xsl:import : invalid URI reference %s\n";
  }

  xsltTransformError(0, style, cur, v15, v17);
LABEL_18:
  free(v6);
  if (Base)
  {
    free(Base);
  }

  if (v9)
  {
    free(v9);
  }

  return v2;
}

uint64_t xsltCheckCycle(void *a1, xmlChar *str2)
{
  v3 = a1;
  v4 = a1[43];
  if (v4)
  {
    while (!xmlStrEqual(*(*(v4 + 16) + 136), str2))
    {
      v4 = *(v4 + 32);
      if (!v4)
      {
        if (v3)
        {
          goto LABEL_5;
        }

        return 0;
      }
    }
  }

  else
  {
LABEL_5:
    while (!xmlStrEqual(*(v3[4] + 136), str2))
    {
      v3 = *v3;
      if (!v3)
      {
        return 0;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void xsltFixImportedCompSteps(_DWORD *a1, uint64_t a2)
{
  xmlHashScan(*(a2 + 80), xsltNormalizeCompSteps, a1);
  a1[84] += *(a2 + 336);
  for (i = *(a2 + 16); i; i = *(i + 8))
  {
    xsltFixImportedCompSteps(a1, i);
  }
}

int xsltParseStylesheetInclude(xsltStylesheetPtr style, xmlNodePtr cur)
{
  v2 = -1;
  if (style && cur)
  {
    NsProp = xmlGetNsProp(cur, "href", 0);
    if (NsProp)
    {
      v6 = NsProp;
      Base = xmlNodeGetBase(style->doc, cur);
      v8 = xmlBuildURI(v6, Base);
      v9 = v8;
      if (v8)
      {
        if ((xsltCheckCycle(style, v8) & 0x80000000) != 0)
        {
          xsltTransformError(0, style, cur, "xsl:include : recursion detected on included URL %s\n");
        }

        else
        {
          StyleDocument = xsltLoadStyleDocument(style, v9);
          if (StyleDocument)
          {
            v11 = StyleDocument;
            doc = style->doc;
            v13 = StyleDocument->doc;
            style->doc = v13;
            StyleDocument->includes = style->includes;
            style->includes = StyleDocument;
            nopreproc = style->nopreproc;
            style->nopreproc = StyleDocument->preproc;
            v15 = xsltParseStylesheetProcess(style, v13);
            style->nopreproc = nopreproc;
            v11->preproc = 1;
            style->includes = v11->includes;
            style->doc = doc;
            if (v15)
            {
              v2 = 0;
            }

            else
            {
              v2 = -1;
            }
          }

          else
          {
            xsltTransformError(0, style, cur, "xsl:include : unable to load %s\n");
          }
        }
      }

      else
      {
        xsltTransformError(0, style, cur, "xsl:include : invalid URI reference %s\n");
      }

      free(v6);
      if (Base)
      {
        free(Base);
      }

      if (v9)
      {
        free(v9);
      }
    }

    else
    {
      xsltTransformError(0, style, cur, "xsl:include : missing href attribute\n");
    }
  }

  return v2;
}

xsltStylesheetPtr xsltNextImport(xsltStylesheetPtr style)
{
  if (!style)
  {
    return 0;
  }

  imports = style->imports;
  if (!imports)
  {
    while (1)
    {
      imports = style->next;
      if (imports)
      {
        break;
      }

      style = style->parent;
      if (!style)
      {
        return 0;
      }
    }
  }

  return imports;
}

int xsltNeedElemSpaceHandling(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    style = ctxt->style;
    if (ctxt->style)
    {
      if (!style->stripSpaces)
      {
        do
        {
          imports = style->imports;
          if (!imports)
          {
            while (1)
            {
              imports = style->next;
              if (imports)
              {
                break;
              }

              style = style->parent;
              if (!style)
              {
                goto LABEL_11;
              }
            }
          }

          style = imports;
        }

        while (!imports->stripSpaces);
      }

      LODWORD(ctxt) = 1;
    }

    else
    {
LABEL_11:
      LODWORD(ctxt) = 0;
    }
  }

  return ctxt;
}

int xsltFindElemSpaceHandling(xsltTransformContextPtr ctxt, xmlNodePtr node)
{
  result = 0;
  if (ctxt && node)
  {
    style = ctxt->style;
    if (style)
    {
      while (1)
      {
        v6 = style;
        ns = node->ns;
        stripSpaces = v6->stripSpaces;
        name = node->name;
        if (!ns)
        {
          break;
        }

        v10 = xmlHashLookup2(stripSpaces, name, ns->href);
        if (!v10)
        {
          stripSpaces = v6->stripSpaces;
          href = node->ns->href;
          name = "*";
          goto LABEL_8;
        }

LABEL_9:
        if (xmlStrEqual(v10, "strip"))
        {
          return 1;
        }

        if (xmlStrEqual(v10, "preserve"))
        {
          return 0;
        }

LABEL_11:
        result = v6->stripAll;
        if (result == -1)
        {
          return 0;
        }

        if (result == 1)
        {
          return result;
        }

        style = v6->imports;
        if (!style)
        {
          while (1)
          {
            style = v6->next;
            if (style)
            {
              break;
            }

            v6 = v6->parent;
            if (!v6)
            {
              return 0;
            }
          }
        }
      }

      href = 0;
LABEL_8:
      v10 = xmlHashLookup2(stripSpaces, name, href);
      if (!v10)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    return 0;
  }

  return result;
}

xsltTemplatePtr xsltFindTemplate(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *nameURI)
{
  result = 0;
  if (ctxt && name)
  {
    style = ctxt->style;
    if (style)
    {
      while (1)
      {
        p_parent = &style->parent;
        namedTemplates = style->namedTemplates;
        if (namedTemplates)
        {
          result = xmlHashLookup2(namedTemplates, name, nameURI);
          if (result)
          {
            break;
          }
        }

        style = p_parent[2];
        if (!style)
        {
          while (1)
          {
            style = p_parent[1];
            if (style)
            {
              break;
            }

            p_parent = *p_parent;
            if (!p_parent)
            {
              return 0;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void xsltFreeKeys(xsltStylesheetPtr style)
{
  keys = style->keys;
  if (keys)
  {
    do
    {
      v2 = *keys;
      xsltFreeKeyDef(keys);
      keys = v2;
    }

    while (v2);
  }
}

int xsltAddKey(xsltStylesheetPtr style, const xmlChar *name, const xmlChar *nameURI, const xmlChar *match, const xmlChar *use, xmlNodePtr inst)
{
  result = -1;
  if (!style || !name || !match || !use)
  {
    return result;
  }

  xsltGenericDebug(xsltGenericDebugContext, "Add key %s, match %s, use %s\n", name, match, use);
  v13 = malloc_type_malloc(0x50uLL, 0x10B00400109974CuLL);
  v14 = v13;
  if (v13)
  {
    v13[3] = 0u;
    v13[4] = 0u;
    v13[1] = 0u;
    v13[2] = 0u;
    *v13 = 0u;
    *(v13 + 2) = xmlStrdup(name);
    if (nameURI)
    {
      v14[3] = xmlStrdup(nameURI);
    }

    v14[8] = 0;
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltNewKeyDef : malloc failed\n");
  }

  v14[4] = xmlStrdup(match);
  v14[5] = xmlStrdup(use);
  v14[1] = inst;
  NsList = xmlGetNsList(inst->doc, inst);
  v14[8] = NsList;
  if (NsList)
  {
    v16 = -1;
    do
    {
      v17 = *NsList++;
      ++v16;
    }

    while (v17);
  }

  else
  {
    v16 = 0;
  }

  *(v14 + 18) = v16;
  v18 = *match;
  if (!*match)
  {
LABEL_70:
    xsltTransformError(0, style, inst, "xsl:key : 'match' pattern is empty\n");
LABEL_71:
    ++style->errors;
    goto LABEL_72;
  }

  v19 = 0;
  v20 = 0;
  v21 = match;
LABEL_17:
  v22 = &match[v19];
  for (i = v19; ; i = (i + 1))
  {
    v24 = *v22++;
    v25 = (1 << v24) & 0x100002600;
    if (v24 > 0x20 || v25 == 0)
    {
      break;
    }
  }

  for (j = i; ; j = (j + 1))
  {
    v28 = match[j];
    if (v28 == 91)
    {
      break;
    }

    if (!match[j] || v28 == 124)
    {
      if (j == i)
      {
        v45 = "xsl:key : 'match' pattern is empty\n";
        goto LABEL_68;
      }

      if (v18 != 47)
      {
        v48 = v21;
        v35 = xmlStrcat(v20, "//");
        v21 = v48;
        v20 = v35;
        if (!v35)
        {
          goto LABEL_71;
        }
      }

      v36 = xmlStrncat(v20, v21, j - v19);
      if (!v36)
      {
        goto LABEL_71;
      }

      v20 = v36;
      v37 = j;
      v18 = match[j];
      if (v18 == 124)
      {
        v20 = xmlStrcat(v36, "|");
        v37 = j + 1;
        v18 = match[v37];
        j = v37;
      }

      v21 = &match[v37];
      v19 = j;
      if (!v18)
      {
        if (v20)
        {
          v38 = v20;
          xsltGenericDebug(xsltGenericDebugContext, "   resulting pattern %s\n", v20);
          v39 = xsltXPathCompileFlags(style, v38, 2);
          v14[6] = v39;
          if (!v39)
          {
            xsltTransformError(0, style, inst, "xsl:key : 'match' pattern compilation failed '%s'\n", v38);
            ++style->errors;
          }

          v40 = xsltXPathCompileFlags(style, use, 2);
          v14[7] = v40;
          if (!v40)
          {
            xsltTransformError(0, style, inst, "xsl:key : 'use' expression compilation failed '%s'\n", use);
            ++style->errors;
          }

          keys = style->keys;
          p_keys = &style->keys;
          v41 = keys;
          if (keys)
          {
            v44 = v38;
            do
            {
              p_keys = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            v44 = v38;
          }

          *p_keys = v14;
          *v14 = 0;
          v14 = 0;
          goto LABEL_69;
        }

        goto LABEL_70;
      }

      goto LABEL_17;
    }

LABEL_27:
    ;
  }

  if ((j & 0x80000000) != 0)
  {
    goto LABEL_67;
  }

  v29 = 0;
  do
  {
    while (1)
    {
      while (1)
      {
        LODWORD(j) = j + 1;
LABEL_31:
        v30 = match[j];
        if (v30 > 0x26)
        {
          break;
        }

        if (v30 == 34)
        {
LABEL_35:
          if ((j & 0x80000000) == 0)
          {
            v31 = &match[j + 1];
            LODWORD(j) = j + 1;
            while (1)
            {
              v33 = *v31++;
              v32 = v33;
              if (!v33)
              {
                break;
              }

              LODWORD(j) = j + 1;
              if (v32 == v30)
              {
                if (j >= 1)
                {
                  goto LABEL_31;
                }

                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

        if (!match[j])
        {
          goto LABEL_67;
        }
      }

      if (v30 == 39)
      {
        goto LABEL_35;
      }

      if (v30 != 91)
      {
        break;
      }

      v34 = 1;
LABEL_48:
      v29 += v34;
    }
  }

  while (v30 != 93);
  if (v29)
  {
    v34 = -1;
    goto LABEL_48;
  }

  if ((j & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_67:
  v47 = v14[4];
  v45 = "xsl:key : 'match' pattern is malformed: %s";
LABEL_68:
  v46 = v20;
  xsltTransformError(0, style, inst, v45, v47);
  v44 = v46;
  ++style->errors;
  if (v46)
  {
LABEL_69:
    free(v44);
  }

LABEL_72:
  if (v14)
  {
    xsltFreeKeyDef(v14);
  }

  return 0;
}

void xsltFreeKeyDef(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    xmlXPathFreeCompExpr(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    xmlXPathFreeCompExpr(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[4];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[8];
  if (v8)
  {
    free(v8);
  }

  *&v9 = -1;
  *(&v9 + 1) = -1;
  *(a1 + 3) = v9;
  *(a1 + 4) = v9;
  *(a1 + 1) = v9;
  *(a1 + 2) = v9;
  *a1 = v9;

  free(a1);
}

xmlNodeSetPtr xsltGetKey(xsltTransformContextPtr ctxt, const xmlChar *name, const xmlChar *nameURI, const xmlChar *value)
{
  if (!ctxt)
  {
    return 0;
  }

  if (!name)
  {
    return 0;
  }

  if (!value)
  {
    return 0;
  }

  if (!ctxt->document)
  {
    return 0;
  }

  xsltGenericDebug(xsltGenericDebugContext, "Get key %s, value %s\n", name, value);
  if (ctxt->document->nbKeysComputed < ctxt->nbKeys && !ctxt->keyInitLevel && xsltInitAllDocKeys(ctxt))
  {
    return 0;
  }

  for (i = 1; ; i = 0)
  {
    keys = ctxt->document->keys;
    if (keys)
    {
      break;
    }

LABEL_13:
    if (ctxt->keyInitLevel == 0 || (i & 1) == 0)
    {
      return 0;
    }

    xsltInitDocKeyTable(ctxt, name, nameURI);
  }

  while ((nameURI != 0) == (*(keys + 2) == 0) || !xmlStrEqual(*(keys + 1), name) || !xmlStrEqual(*(keys + 2), nameURI))
  {
    keys = *keys;
    if (!keys)
    {
      goto LABEL_13;
    }
  }

  v10 = *(keys + 3);

  return xmlHashLookup(v10, value);
}

int xsltInitAllDocKeys(xsltTransformContextPtr ctxt)
{
  if (ctxt)
  {
    if (ctxt->document->nbKeysComputed == ctxt->nbKeys || (style = ctxt->style) == 0)
    {
      LODWORD(Import) = 0;
    }

    else
    {
      do
      {
        for (i = style->keys; i; i = *i)
        {
          keys = ctxt->document->keys;
          if (keys)
          {
            while ((*(i + 3) != 0) == (*(keys + 2) == 0) || !xmlStrEqual(*(i + 2), *(keys + 1)) || !xmlStrEqual(*(i + 3), *(keys + 2)))
            {
              keys = *keys;
              if (!keys)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
LABEL_10:
            xsltInitDocKeyTable(ctxt, *(i + 2), *(i + 3));
          }
        }

        Import = xsltNextImport(style);
        style = Import;
      }

      while (Import);
    }
  }

  else
  {
    LODWORD(Import) = -1;
  }

  return Import;
}

void xsltInitDocKeyTable(xsltTransformContextPtr ctxt, xmlChar *str2, const xmlChar *a3)
{
  style = ctxt->style;
  if (!ctxt->style)
  {
    goto LABEL_12;
  }

  v7 = 0;
  do
  {
    for (i = style->keys; i; i = i->next)
    {
      if ((a3 == 0) != (i->nameURI != 0) && xmlStrEqual(i->name, str2) && xmlStrEqual(i->nameURI, a3))
      {
        xsltInitCtxtKey(ctxt, ctxt->document, i);
        if (ctxt->document->nbKeysComputed == ctxt->nbKeys)
        {
          return;
        }

        v7 = 1;
      }
    }

    style = xsltNextImport(style);
  }

  while (style);
  if (!v7)
  {
LABEL_12:
    traceCode = ctxt->traceCode;
    if (traceCode)
    {
      if ((*(traceCode + 1) & 0x80) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltInitDocKeyTable: did not found %s\n", str2);
      }
    }

    xsltTransformError(ctxt, 0, 0, "Failed to find key definition for %s\n", str2);
    ctxt->state = XSLT_STATE_STOPPED;
  }
}

int xsltInitCtxtKey(xsltTransformContextPtr ctxt, xsltDocumentPtr doc, xsltKeyDefPtr keyd)
{
  comp = keyd->comp;
  if (!comp || !keyd->usecomp)
  {
    return -1;
  }

  keyInitLevel = ctxt->keyInitLevel;
  if (keyInitLevel > ctxt->nbKeys)
  {
    traceCode = ctxt->traceCode;
    if (traceCode)
    {
      if ((*(traceCode + 1) & 0x80) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltInitCtxtKey: key definition of %s is recursive\n", keyd->name);
      }
    }

    xsltTransformError(ctxt, 0, keyd->inst, "Key definition for %s is recursive\n", keyd->name);
    ctxt->state = XSLT_STATE_STOPPED;
    return -1;
  }

  ctxt->keyInitLevel = keyInitLevel + 1;
  xpathCtxt = ctxt->xpathCtxt;
  ++doc->nbKeysComputed;
  inst = ctxt->inst;
  v51 = *&xpathCtxt->doc;
  v52 = *&ctxt->document;
  v12 = *&xpathCtxt->contextSize;
  nsNr = xpathCtxt->nsNr;
  namespaces = xpathCtxt->namespaces;
  v15 = doc->doc;
  ctxt->document = doc;
  ctxt->node = v15;
  ctxt->inst = keyd->inst;
  xpathCtxt->doc = v15;
  xpathCtxt->node = v15;
  xpathCtxt->namespaces = keyd->nsList;
  xpathCtxt->nsNr = keyd->nsNr;
  v16 = xmlXPathCompiledEval(comp, xpathCtxt);
  v17 = v16;
  v50 = namespaces;
  if (!v16)
  {
    v43 = ctxt->traceCode;
    if (!v43)
    {
      xsltTransformError(ctxt, 0, keyd->inst, "Failed to evaluate the 'match' expression.\n");
      goto LABEL_83;
    }

    v44 = "Failed to evaluate the 'match' expression.\n";
    if ((*(v43 + 1) & 0x80) != 0)
    {
      xsltGenericDebug(xsltGenericDebugContext, "xsltInitCtxtKey: %s evaluation failed\n");
    }

    goto LABEL_82;
  }

  if (v16->type != XPATH_NODESET)
  {
    v45 = ctxt->traceCode;
    if (v45)
    {
      v44 = "The 'match' expression did not evaluate to a node set.\n";
      if ((*(v45 + 1) & 0x80) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsltInitCtxtKey: %s is not a node set\n");
      }
    }

    else
    {
      v44 = "The 'match' expression did not evaluate to a node set.\n";
    }

LABEL_82:
    xsltTransformError(ctxt, 0, keyd->inst, v44);
    goto LABEL_83;
  }

  p_nodeNr = &v16->nodesetval->nodeNr;
  if (!p_nodeNr)
  {
    goto LABEL_79;
  }

  v19 = ctxt->traceCode;
  v49 = &v16->nodesetval->nodeNr;
  if (v19 && (*(v19 + 1) & 0x80) != 0)
  {
    xsltGenericDebug(xsltGenericDebugContext, "xsltInitCtxtKey: %s evaluates to %d nodes\n", keyd->match, *v49);
    p_nodeNr = v49;
  }

  if (*p_nodeNr < 1)
  {
    goto LABEL_79;
  }

  for (i = doc->keys; i; i = *i)
  {
    if (xmlStrEqual(*(i + 1), keyd->name))
    {
      nameURI = keyd->nameURI;
      v22 = *(i + 2);
      if (nameURI)
      {
        if (v22 && xmlStrEqual(v22, nameURI))
        {
          goto LABEL_26;
        }
      }

      else if (!v22)
      {
        goto LABEL_26;
      }
    }
  }

  v23 = xsltNewKeyTable(keyd->name, keyd->nameURI);
  if (!v23)
  {
    goto LABEL_79;
  }

  i = v23;
  *v23 = doc->keys;
  doc->keys = v23;
LABEL_26:
  *&xpathCtxt->contextSize = 0x100000001;
  v24 = v49;
  if (*v49 < 1)
  {
LABEL_79:
    v26 = 0;
    stringval = 0;
    goto LABEL_84;
  }

  v25 = 0;
  v26 = 0;
  v46 = inst;
  v47 = v17;
  v48 = nsNr;
  while (1)
  {
    v27 = *(*(v24 + 1) + 8 * v25);
    if (!v27)
    {
      goto LABEL_71;
    }

    v28 = *(v27 + 8);
    v29 = v28 > 0xD;
    v30 = (1 << v28) & 0x239E;
    if (v29 || v30 == 0)
    {
      goto LABEL_71;
    }

    ctxt->node = v27;
    xpathCtxt->node = v27;
    if (v26)
    {
      xmlXPathFreeObject(v26);
    }

    v32 = xmlXPathCompiledEval(keyd->usecomp, xpathCtxt);
    if (!v32)
    {
      break;
    }

    v26 = v32;
    if (v32->type == XPATH_STRING)
    {
      stringval = v32->stringval;
      v32->stringval = 0;
      goto LABEL_43;
    }

    if (v32->type != XPATH_NODESET)
    {
      stringval = xmlXPathCastToString(v32);
LABEL_43:
      nodeNr = 1;
LABEL_44:
      if (nodeNr <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = nodeNr;
      }

      v37 = (v36 - 1);
      v38 = 1;
      if (!stringval)
      {
        goto LABEL_65;
      }

LABEL_48:
      v39 = ctxt->traceCode;
      if (v39 && (*(v39 + 1) & 0x80) != 0)
      {
        xsltGenericDebug(xsltGenericDebugContext, "xsl:key : node associated to ('%s', '%s')\n", keyd->name, stringval);
      }

      v40 = xmlHashLookup(*(i + 3), stringval);
      if (v40)
      {
        xmlXPathNodeSetAdd(v40, v27);
      }

      else
      {
        v41 = xmlXPathNodeSetCreate(v27);
        if (!v41)
        {
          inst = v46;
          v17 = v47;
          nsNr = v48;
          goto LABEL_84;
        }

        xmlHashAddEntry(*(i + 3), stringval, v41);
      }

      if (linkedOnOrAfterFall2023OSVersions())
      {
        xsltSetSourceNodeFlags(ctxt, v27, 1);
      }

      else
      {
        v42 = *(v27 + 8);
        if (v42 <= 0xD)
        {
          if (((1 << v42) & 0x19A) != 0)
          {
            *(v27 + 104) = keyd;
          }

          else if (((1 << v42) & 0x2200) != 0)
          {
            *(v27 + 160) = keyd;
          }

          else if (v42 == 2)
          {
            *(v27 + 88) = keyd;
          }
        }
      }

      free(stringval);
LABEL_65:
      while (v37)
      {
        stringval = xmlXPathCastNodeToString(v26->nodesetval->nodeTab[v38]);
        --v37;
        ++v38;
        if (stringval)
        {
          goto LABEL_48;
        }
      }

      inst = v46;
LABEL_69:
      v17 = v47;
      goto LABEL_70;
    }

    nodesetval = v32->nodesetval;
    if (nodesetval)
    {
      nodeNr = nodesetval->nodeNr;
      if (nodesetval->nodeNr)
      {
        stringval = xmlXPathCastNodeToString(*nodesetval->nodeTab);
        goto LABEL_44;
      }

      goto LABEL_69;
    }

LABEL_70:
    v24 = v49;
LABEL_71:
    stringval = 0;
    ++v25;
    nsNr = v48;
    if (v25 >= *v24)
    {
      goto LABEL_84;
    }
  }

  nsNr = v48;
  xsltTransformError(ctxt, 0, keyd->inst, "Failed to evaluate the 'use' expression.\n");
LABEL_83:
  v26 = 0;
  stringval = 0;
  ctxt->state = XSLT_STATE_STOPPED;
LABEL_84:
  --ctxt->keyInitLevel;
  *&xpathCtxt->doc = v51;
  xpathCtxt->nsNr = nsNr;
  xpathCtxt->namespaces = v50;
  *&xpathCtxt->contextSize = v12;
  *&ctxt->document = v52;
  ctxt->inst = inst;
  if (stringval)
  {
    free(stringval);
  }

  if (v26)
  {
    xmlXPathFreeObject(v26);
  }

  if (v17)
  {
    xmlXPathFreeObject(v17);
  }

  return 0;
}

_OWORD *xsltNewKeyTable(const xmlChar *a1, const xmlChar *a2)
{
  v4 = malloc_type_malloc(0x20uLL, 0x300400614D6FEuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0u;
    v4[1] = 0u;
    if (a1)
    {
      *(v4 + 1) = xmlStrdup(a1);
    }

    if (a2)
    {
      *(v5 + 2) = xmlStrdup(a2);
    }

    *(v5 + 3) = xmlHashCreate(0);
  }

  else
  {
    xsltTransformError(0, 0, 0, "xsltNewKeyTable : malloc failed\n");
  }

  return v5;
}

void xsltInitCtxtKeys(xsltTransformContextPtr ctxt, xsltDocumentPtr doc)
{
  if (ctxt && doc)
  {
    v4 = doc->doc;
    if (v4)
    {
      URL = v4->URL;
      if (URL)
      {
        traceCode = ctxt->traceCode;
        if (traceCode)
        {
          if ((*(traceCode + 1) & 0x80) != 0)
          {
            xsltGenericDebug(xsltGenericDebugContext, "Initializing keys on %s\n", URL);
          }
        }
      }
    }

    for (i = ctxt->style; i; i = xsltNextImport(i))
    {
      for (j = i->keys; j; j = j->next)
      {
        xsltInitCtxtKey(ctxt, doc, j);
      }
    }
  }
}

void xsltFreeDocumentKeys(xsltDocumentPtr doc)
{
  if (doc)
  {
    keys = doc->keys;
    if (keys)
    {
      do
      {
        v3 = *keys;
        v2 = keys[1];
        if (v2)
        {
          free(v2);
        }

        v4 = keys[2];
        if (v4)
        {
          free(v4);
        }

        v5 = keys[3];
        if (v5)
        {
          xmlHashFree(v5, xsltFreeNodeSetEntry);
        }

        *&v6 = -1;
        *(&v6 + 1) = -1;
        *keys = v6;
        *(keys + 1) = v6;
        free(keys);
        keys = v3;
      }

      while (v3);
    }
  }
}

void xsltNamespaceAlias(xsltStylesheetPtr style, xmlNodePtr node)
{
  if (!style || !node)
  {
    return;
  }

  NsProp = xmlGetNsProp(node, "stylesheet-prefix", 0);
  if (NsProp)
  {
    v5 = NsProp;
    v6 = xmlGetNsProp(node, "result-prefix", 0);
    if (!v6)
    {
      xsltTransformError(0, style, node, "namespace-alias: result-prefix attribute missing\n");
      v12 = v5;
LABEL_31:

      free(v12);
      return;
    }

    v7 = v6;
    v8 = xmlStrEqual(v5, "#default");
    doc = node->doc;
    if (v8)
    {
      v10 = xmlSearchNs(doc, node, 0);
      if (v10)
      {
        href = v10->href;
      }

      else
      {
        href = 0;
      }
    }

    else
    {
      v13 = xmlSearchNs(doc, node, v5);
      if (!v13)
      {
        goto LABEL_29;
      }

      href = v13->href;
      if (!href)
      {
        goto LABEL_29;
      }
    }

    v14 = xmlStrEqual(v7, "#default");
    v15 = node->doc;
    if (v14)
    {
      v16 = xmlSearchNs(v15, node, 0);
      if (!v16)
      {
        if (!href)
        {
          goto LABEL_30;
        }

        v17 = -1;
        goto LABEL_26;
      }

      v17 = v16->href;
LABEL_22:
      if (!href)
      {
        style->defaultAlias = v17;
LABEL_30:
        free(v5);
        v12 = v7;
        goto LABEL_31;
      }

LABEL_26:
      nsAliases = style->nsAliases;
      if (nsAliases || (nsAliases = xmlHashCreate(10), (style->nsAliases = nsAliases) != 0))
      {
        xmlHashAddEntry(nsAliases, href, v17);
      }

      else
      {
        xsltTransformError(0, style, node, "namespace-alias: cannot create hash table\n");
      }

      goto LABEL_30;
    }

    v18 = xmlSearchNs(v15, node, v7);
    if (v18)
    {
      v17 = v18->href;
      if (v17)
      {
        goto LABEL_22;
      }
    }

LABEL_29:
    xsltTransformError(0, style, node, "namespace-alias: prefix %s not bound to any namespace\n");
    goto LABEL_30;
  }

  xsltTransformError(0, style, node, "namespace-alias: stylesheet-prefix attribute missing\n");
}

xmlNsPtr xsltGetSpecialNamespace(xsltTransformContextPtr ctxt, xmlNodePtr cur, const xmlChar *URI, const xmlChar *prefix, xmlNodePtr out)
{
  ns = 0;
  v35 = *MEMORY[0x29EDCA608];
  if (!ctxt || !out)
  {
    goto LABEL_60;
  }

  if (out->type != XML_ELEMENT_NODE)
  {
    goto LABEL_59;
  }

  if (prefix)
  {
    if (*prefix == 120 && prefix[1] == 109 && prefix[2] == 108 && !prefix[3])
    {
      doc = out->doc;
      v12 = *MEMORY[0x29EDCA608];

      return xmlSearchNs(doc, out, prefix);
    }
  }

  else if (!URI || !*URI)
  {
    nsDef = out->nsDef;
    if (nsDef)
    {
      while (nsDef->prefix)
      {
        nsDef = nsDef->next;
        if (!nsDef)
        {
          goto LABEL_48;
        }
      }

      href = nsDef->href;
      if (href && *href)
      {
        name = out->name;
        xsltTransformError(ctxt, 0, cur, "Namespace normalization error: Cannot undeclare the default namespace, since the default namespace '%s' is already declared on the result element '%s'.\n");
      }
    }

    else
    {
LABEL_48:
      parent = out->parent;
      if (parent)
      {
        if (parent->type == XML_ELEMENT_NODE)
        {
          if (parent->ns)
          {
            v27 = xmlSearchNs(out->doc, parent, 0);
            if (v27)
            {
              v28 = v27->href;
              if (v28)
              {
                if (*v28)
                {
                  xmlNewNs(out, &unk_2999B6B5E, 0);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_59;
  }

  ns = out->nsDef;
  if (ns)
  {
    while (1)
    {
      v14 = ns->prefix;
      if ((prefix == 0) != (v14 != 0) && (v14 == prefix || xmlStrEqual(v14, prefix)))
      {
        break;
      }

      ns = ns->next;
      if (!ns)
      {
        goto LABEL_19;
      }
    }

    if (xmlStrEqual(ns->href, URI))
    {
      goto LABEL_60;
    }

    goto LABEL_36;
  }

LABEL_19:
  v15 = out->parent;
  if (v15 && v15->type == XML_ELEMENT_NODE)
  {
    ns = v15->ns;
    if (ns)
    {
      v16 = ns->prefix;
      if ((prefix == 0) != (v16 != 0) && (!prefix || xmlStrEqual(v16, prefix)))
      {
        if (xmlStrEqual(ns->href, URI))
        {
          goto LABEL_60;
        }
      }
    }

    v17 = xmlSearchNs(out->doc, out->parent, prefix);
    if (v17)
    {
      ns = v17;
      if (xmlStrEqual(v17->href, URI))
      {
        goto LABEL_60;
      }

      properties = out->properties;
      if (properties)
      {
        while (1)
        {
          v19 = properties->ns;
          if (v19)
          {
            if (xmlStrEqual(v19->prefix, prefix))
            {
              break;
            }
          }

          properties = properties->next;
          if (!properties)
          {
            goto LABEL_32;
          }
        }

LABEL_36:
        v21 = xmlSearchNsByHref(out->doc, out, URI);
        if (!v21)
        {
          *__str = 0;
          v33 = 0;
          memset(v34, 0, sizeof(v34));
          if (prefix)
          {
            v22 = prefix;
          }

          else
          {
            v22 = "ns";
          }

          v23 = 1;
          while (1)
          {
            snprintf(__str, 0x1EuLL, "%s_%d", v22, v23);
            v24 = xmlSearchNs(out->doc, out, __str);
            if (v23 == 1000)
            {
              break;
            }

            ++v23;
            if (!v24)
            {
              v21 = xmlNewNs(out, URI, __str);
              goto LABEL_44;
            }
          }

          xsltTransformError(ctxt, 0, cur, "Internal error in xsltAcquireResultInScopeNs(): Failed to compute a unique ns-prefix for the generated element");
LABEL_59:
          ns = 0;
          goto LABEL_60;
        }

LABEL_44:
        ns = v21;
LABEL_60:
        v30 = *MEMORY[0x29EDCA608];
        return ns;
      }
    }
  }

LABEL_32:
  v20 = *MEMORY[0x29EDCA608];

  return xmlNewNs(out, URI, prefix);
}

xmlNsPtr xsltGetNamespace(xsltTransformContextPtr ctxt, xmlNodePtr cur, xmlNsPtr ns, xmlNodePtr out)
{
  if (!ns || !ctxt || !cur || !out)
  {
    return 0;
  }

  style = ctxt->style;
  if (!ctxt->style)
  {
LABEL_9:
    href = ns->href;
LABEL_14:
    prefix = ns->prefix;
    v11 = ctxt;
    v12 = cur;
    goto LABEL_15;
  }

  while (1)
  {
    nsAliases = style->nsAliases;
    if (nsAliases)
    {
      v10 = xmlHashLookup(nsAliases, ns->href);
      if (v10)
      {
        break;
      }
    }

    style = xsltNextImport(style);
    if (!style)
    {
      goto LABEL_9;
    }
  }

  href = v10;
  if (v10 != -1)
  {
    goto LABEL_14;
  }

  v11 = ctxt;
  v12 = cur;
  href = 0;
  prefix = 0;
LABEL_15:

  return xsltGetSpecialNamespace(v11, v12, href, prefix, out);
}

xmlNsPtr xsltCopyNamespaceList(xsltTransformContextPtr ctxt, xmlNodePtr node, xmlNsPtr cur)
{
  if (cur)
  {
    v3 = cur;
    if (cur->type == XML_NAMESPACE_DECL)
    {
      if (node)
      {
        if (node->type == XML_ELEMENT_NODE)
        {
          v5 = node;
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

      v8 = 0;
      v6 = 0;
      while (1)
      {
        while (1)
        {
          if (v3->type != XML_NAMESPACE_DECL)
          {
            return v6;
          }

          if (!v5)
          {
            break;
          }

          ns = v5->ns;
          if (!ns || !xmlStrEqual(ns->prefix, v3->prefix) || !xmlStrEqual(v5->ns->href, v3->href))
          {
            v10 = xmlSearchNs(v5->doc, v5, v3->prefix);
            if (!v10 || !xmlStrEqual(v10->href, v3->href))
            {
              break;
            }
          }

LABEL_20:
          v3 = v3->next;
          if (!v3)
          {
            return v6;
          }
        }

        if (xmlStrEqual(v3->href, "http://www.w3.org/1999/XSL/Transform"))
        {
          v13 = v8;
        }

        else
        {
          v11 = xmlHashLookup(ctxt->style->nsAliases, v3->href);
          if (v11 == -1)
          {
            goto LABEL_20;
          }

          href = v11;
          if (!v11)
          {
            href = v3->href;
          }

          v13 = xmlNewNs(v5, href, v3->prefix);
          if (v8)
          {
            v8->next = v13;
          }

          else
          {
            v6 = v13;
          }
        }

        v3 = v3->next;
        v8 = v13;
        if (!v3)
        {
          return v6;
        }
      }
    }
  }

  return 0;
}

xmlNsPtr xsltCopyNamespace(xsltTransformContextPtr ctxt, xmlNodePtr elem, xmlNsPtr ns)
{
  if (!ns || ns->type != XML_NAMESPACE_DECL)
  {
    return 0;
  }

  if (elem)
  {
    if (elem->type != XML_ELEMENT_NODE)
    {
      elem = 0;
    }
  }

  return xmlNewNs(elem, ns->href, ns->prefix);
}

void xsltFreeNamespaceAliasHashes(xsltStylesheetPtr style)
{
  nsAliases = style->nsAliases;
  if (nsAliases)
  {
    xmlHashFree(nsAliases, 0);
  }

  style->nsAliases = 0;
}

void xsltNumberFormat(xsltTransformContextPtr ctxt, xsltNumberDataPtr data, xmlNodePtr node)
{
  v3 = MEMORY[0x2A1C7C4A8](ctxt, data, node);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v37[1024] = *MEMORY[0x29EDCA608];
  bzero(&v32, 0x4018uLL);
  v9 = *(v7 + 32);
  if (v9)
  {
    xsltNumberFormatTokenize(v9, &v32);
  }

  else
  {
    if (!*(v7 + 40))
    {
      goto LABEL_37;
    }

    v19 = xsltEvalAttrValueTemplate(v8, *(v7 + 64), "format", "http://www.w3.org/1999/XSL/Transform");
    if (!v19)
    {
      goto LABEL_37;
    }

    v20 = v19;
    xsltNumberFormatTokenize(v19, &v32);
    free(v20);
  }

  v10 = xmlBufferCreate();
  if (v10)
  {
    v11 = v10;
    floatval = 0.0;
    v12 = *(v7 + 24);
    if (v12)
    {
      xpathCtxt = v8->xpathCtxt;
      v14 = xmlBufferCreate();
      if (v14)
      {
        v15 = v14;
        v16 = xpathCtxt->node;
        xmlBufferCCat(v14, "number(");
        xmlBufferCat(v15, v12);
        xmlBufferCCat(v15, ")");
        xpathCtxt->node = v5;
        v17 = xmlBufferContent(v15);
        v18 = xmlXPathEval(v17, xpathCtxt);
        if (v18)
        {
          floatval = v18->floatval;
          xmlXPathFreeObject(v18);
          xmlBufferFree(v15);
          xpathCtxt->node = v16;
          xsltNumberFormatInsertNumbers(v7, &floatval, 1, &v32, v11);
        }

        else
        {
          xmlBufferFree(v15);
          xpathCtxt->node = v16;
        }
      }

      goto LABEL_27;
    }

    if (!*v7)
    {
LABEL_27:
      insert = v8->insert;
      v28 = xmlBufferContent(v11);
      xsltCopyTextString(v8, insert, v28, 0);
      xmlBufferFree(v11);
      goto LABEL_28;
    }

    if (xmlStrEqual(*v7, "single"))
    {
      if (xsltNumberFormatGetMultipleLevel(v8, v5, *(v7 + 72), *(v7 + 80), &floatval, 1) != 1)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (xmlStrEqual(*v7, "multiple"))
    {
      bzero(v37, 0x2000uLL);
      MultipleLevel = xsltNumberFormatGetMultipleLevel(v8, v5, *(v7 + 72), *(v7 + 80), v37, 1024);
      if (MultipleLevel >= 1)
      {
        v22 = MultipleLevel;
        p_floatval = v37;
        v24 = v7;
LABEL_22:
        xsltNumberFormatInsertNumbers(v24, p_floatval, v22, &v32, v11);
      }
    }

    else if (xmlStrEqual(*v7, "any"))
    {
      xsltNumberFormatGetAnyLevel(v8, v5, *(v7 + 72), *(v7 + 80), &floatval);
LABEL_21:
      p_floatval = &floatval;
      v24 = v7;
      v22 = 1;
      goto LABEL_22;
    }

LABEL_23:
    v25 = *(v7 + 72);
    if (v25)
    {
      xsltCompMatchClearCache(v8, v25);
    }

    v26 = *(v7 + 80);
    if (v26)
    {
      xsltCompMatchClearCache(v8, v26);
    }

    goto LABEL_27;
  }

LABEL_28:
  if (v32)
  {
    free(v32);
  }

  if (v35)
  {
    free(v35);
  }

  v29 = v34;
  if (v34 >= 1)
  {
    v30 = &v33;
    do
    {
      if (*v30)
      {
        free(*v30);
      }

      v30 += 2;
      --v29;
    }

    while (v29);
  }

LABEL_37:
  v31 = *MEMORY[0x29EDCA608];
}

xmlChar *xsltNumberFormatTokenize(const xmlChar *a1, uint64_t a2)
{
  v3 = 0;
  qword_2A14C2870 = 0x100000030;
  default_token = ".";
  *(a2 + 8) = 0;
  v35 = a2 + 8;
  len = 0;
  *(a2 + 16400) = 0;
  *a2 = 0;
  v4 = MEMORY[0x29EDC97A8];
  v5 = MEMORY[0x29EDC9798];
  while (1)
  {
    v6 = xmlStringCurrentChar(0, &a1[v3], &len);
    v7 = xmlStringCurrentChar(0, &a1[v3], &len);
    if (v6 <= 255)
    {
      break;
    }

    result = xmlCharInRange(v7, v5);
    if (result)
    {
      goto LABEL_27;
    }

LABEL_14:
    result = xmlStringCurrentChar(0, &a1[v3], &len);
    if (result < 256)
    {
      goto LABEL_15;
    }

    if (xmlStringCurrentChar(0, &a1[v3], &len) >= 19968)
    {
      result = xmlStringCurrentChar(0, &a1[v3], &len);
      if (result < 40870)
      {
        goto LABEL_27;
      }
    }

    result = xmlStringCurrentChar(0, &a1[v3], &len);
    if (result == 12295)
    {
      goto LABEL_27;
    }

    result = xmlStringCurrentChar(0, &a1[v3], &len);
    if (result < 12321)
    {
      if (result <= 255)
      {
LABEL_15:
        if ((result - 48) < 0xA)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    else
    {
      result = xmlStringCurrentChar(0, &a1[v3], &len);
      if (result < 12330)
      {
        goto LABEL_27;
      }
    }

    result = xmlCharInRange(result, v4);
    if (result)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (!a1[v3])
    {
      goto LABEL_27;
    }

    v3 = (len + v3);
  }

  if (v7 < 65 || (result = xmlStringCurrentChar(0, &a1[v3], &len), result >= 91))
  {
    if (xmlStringCurrentChar(0, &a1[v3], &len) < 97 || (result = xmlStringCurrentChar(0, &a1[v3], &len), result >= 123))
    {
      if (xmlStringCurrentChar(0, &a1[v3], &len) < 192 || (result = xmlStringCurrentChar(0, &a1[v3], &len), result >= 215))
      {
        if (xmlStringCurrentChar(0, &a1[v3], &len) < 216 || (result = xmlStringCurrentChar(0, &a1[v3], &len), result >= 247))
        {
          result = xmlStringCurrentChar(0, &a1[v3], &len);
          if (result <= 247)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

LABEL_27:
  v9 = a2;
  if (v3 >= 1)
  {
    result = xmlStrndup(a1, v3);
    *a2 = result;
  }

  v10 = 0;
  *(a2 + 16392) = 0;
  v11 = MEMORY[0x29EDC9798];
  while (2)
  {
    v12 = &a1[v3];
    if (!*v12)
    {
      return result;
    }

    if (v10 >= 1)
    {
      *(v35 + 16 * v10) = *(v9 + 16400);
      *(v9 + 16400) = 0;
    }

    v13 = xmlStringCurrentChar(0, v12, &len);
    v14 = v13 - 1;
    IsDigitZero = xsltIsDigitZero(v13 - 1);
    v16 = xsltIsDigitZero(v13);
    if (IsDigitZero)
    {
      *(v35 + 16 * *(a2 + 16392) + 12) = 1;
      if (!v16)
      {
        v17 = MEMORY[0x29EDC97A8];
        goto LABEL_40;
      }

      do
      {
LABEL_38:
        v18 = v35 + 16 * *(a2 + 16392);
        ++*(v18 + 12);
        v3 = len + v3;
        v13 = xmlStringCurrentChar(0, &a1[v3], &len);
      }

      while (xsltIsDigitZero(v13));
      v14 = v13 - 1;
      v17 = MEMORY[0x29EDC97A8];
LABEL_40:
      v19 = xsltIsDigitZero(v14);
      v20 = v35 + 16 * *(a2 + 16392);
      if (v19)
      {
        *(v20 + 8) = v14;
        v3 = len + v3;
        v13 = xmlStringCurrentChar(0, &a1[v3], &len);
      }

      else
      {
        *(v20 + 8) = 0x100000030;
      }
    }

    else
    {
      if (v16)
      {
        *(v35 + 16 * *(a2 + 16392) + 12) = 1;
        goto LABEL_38;
      }

      HIDWORD(v22) = v13 - 65;
      LODWORD(v22) = v13 - 65;
      v21 = v22 >> 3;
      v23 = v21 > 5;
      v24 = (1 << v21) & 0x33;
      if (v23 || v24 == 0)
      {
        *(v35 + 16 * *(a2 + 16392) + 8) = 0x100000030;
      }

      else
      {
        *(v35 + 16 * *(a2 + 16392) + 8) = v13;
        v3 = len + v3;
        v13 = xmlStringCurrentChar(0, &a1[v3], &len);
      }

      v17 = MEMORY[0x29EDC97A8];
    }

    v26 = v3;
    while (2)
    {
      if (v13 <= 255)
      {
        if ((v13 - 192) >= 0x17 && (v13 & 0xFFFFFFDF) - 65 >= 0x1A && v13 <= 247 && (v13 - 216) >= 0x1F)
        {
          result = ((v13 - 48) < 0xA);
          if ((v13 - 48) >= 0xA)
          {
            break;
          }
        }

        goto LABEL_67;
      }

      if (xmlCharInRange(v13, v11))
      {
        v27 = 1;
      }

      else
      {
        v27 = v13 == 12295;
      }

      v29 = !v27 && (v13 - 19968) >= 0x51A6 && (v13 - 12321) >= 9;
      if (!v29 || (result = xmlCharInRange(v13, v17), result))
      {
LABEL_67:
        v26 = len + v26;
        v13 = xmlStringCurrentChar(0, &a1[v26], &len);
        continue;
      }

      break;
    }

    v3 = v26;
    while (2)
    {
      if (v13 <= 255)
      {
        if ((v13 - 192) < 0x17)
        {
          break;
        }

        if ((v13 & 0xFFFFFFDF) - 65 < 0x1A)
        {
          break;
        }

        if (v13 > 247)
        {
          break;
        }

        if ((v13 - 216) < 0x1F)
        {
          break;
        }

        v30 = (v13 - 48) < 0xA;
        if (!v13)
        {
          break;
        }

        goto LABEL_89;
      }

      result = xmlCharInRange(v13, v11);
      if (result)
      {
        v31 = 1;
      }

      else
      {
        v31 = v13 == 12295;
      }

      if (!v31 && (v13 - 19968) >= 0x51A6 && (v13 - 12321) >= 9)
      {
        result = xmlCharInRange(v13, v17);
        v30 = result != 0;
LABEL_89:
        if (v30)
        {
          break;
        }

        v3 = len + v3;
        result = xmlStringCurrentChar(0, &a1[v3], &len);
        v13 = result;
        continue;
      }

      break;
    }

    v9 = a2;
    if (v3 > v26)
    {
      result = xmlStrndup(&a1[v26], v3 - v26);
      *(a2 + 16400) = result;
    }

    v34 = *(a2 + 16392);
    v10 = v34 + 1;
    *(a2 + 16392) = v34 + 1;
    if (v34 < 1023)
    {
      continue;
    }

    return result;
  }
}

uint64_t xsltNumberFormatInsertNumbers(uint64_t result, uint64_t a2, int a3, uint64_t a4, xmlBufferPtr buf)
{
  v33 = result;
  if (*a4)
  {
    result = xmlBufferCat(buf, *a4);
  }

  if (a3 >= 1)
  {
    v9 = 0;
    v10 = a2 - 8;
    v11 = 8 * a3;
    v12 = (a4 + 8);
    while (1)
    {
      v13 = floor(*(v10 + v11) + 0.5);
      if (v13 < 0.0)
      {
        xsltTransformError(0, 0, 0, "xsl-number : negative value\n");
        v13 = 0.0;
      }

      v14 = *(a4 + 16392);
      v15 = v12;
      if (v9 >= v14)
      {
        v16 = v14 < 1;
        v17 = a4 + 8 + 16 * (v14 - 1);
        if (v16)
        {
          v15 = &default_token;
        }

        else
        {
          v15 = v17;
        }
      }

      if (v9)
      {
        if (*v15)
        {
          xmlBufferCat(buf, *v15);
        }

        else
        {
          xmlBufferCCat(buf, ".");
        }
      }

      IsInf = xmlXPathIsInf(v13);
      if (IsInf == 1)
      {
        break;
      }

      if (IsInf == -1)
      {
        v19 = buf;
        v20 = "-Infinity";
LABEL_21:
        result = xmlBufferCCat(v19, v20);
        goto LABEL_22;
      }

      if (xmlXPathIsNaN(v13))
      {
        v19 = buf;
        v20 = "NaN";
        goto LABEL_21;
      }

      v21 = *(v15 + 2);
      HIDWORD(v23) = v21 - 65;
      LODWORD(v23) = v21 - 65;
      v22 = v23 >> 3;
      if (v22 > 3)
      {
        if (v22 == 4)
        {
          v28 = v33;
          v29 = buf;
          v30 = v13;
          v31 = 0;
          goto LABEL_36;
        }

        if (v22 != 5)
        {
LABEL_32:
          result = xsltIsDigitZero(*(v15 + 2));
          if (result)
          {
            result = xsltNumberFormatDecimal(buf, v21, *(v15 + 3), v33[11], v33[12], v33[13], v13);
          }

          goto LABEL_22;
        }

        v24 = v33;
        v25 = buf;
        v26 = v13;
        v27 = 0;
      }

      else
      {
        if (!v22)
        {
          v28 = v33;
          v29 = buf;
          v30 = v13;
          v31 = 1;
LABEL_36:
          result = xsltNumberFormatAlpha(v28, v29, v31, v30);
          goto LABEL_22;
        }

        if (v22 != 1)
        {
          goto LABEL_32;
        }

        v24 = v33;
        v25 = buf;
        v26 = v13;
        v27 = 1;
      }

      result = xsltNumberFormatRoman(v24, v25, v27, v26);
LABEL_22:
      ++v9;
      v12 += 2;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    v19 = buf;
    v20 = "Infinity";
    goto LABEL_21;
  }

LABEL_37:
  v32 = *(a4 + 16400);
  if (v32)
  {

    return xmlBufferCat(buf, v32);
  }

  return result;
}

uint64_t xsltNumberFormatGetMultipleLevel(xsltTransformContext *a1, uint64_t a2, xsltCompMatch *a3, xsltCompMatch *a4, uint64_t a5, int a6)
{
  xpathCtxt = a1->xpathCtxt;
  node = xpathCtxt->node;
  v13 = xmlXPathNewParserContext(0, xpathCtxt);
  if (v13)
  {
    v14 = v13;
    v23 = node;
    if (a2)
    {
      v15 = 0;
      Ancestor = a2;
      while (Ancestor->type != XML_DOCUMENT_NODE && (!a4 || !xsltTestCompMatchList(a1, Ancestor, a4)))
      {
        if (xsltTestCompMatchCount(a1, Ancestor, a3, a2))
        {
          a1->xpathCtxt->node = Ancestor;
          PrecedingSibling = xmlXPathNextPrecedingSibling(v14, Ancestor);
          if (PrecedingSibling)
          {
            v18 = PrecedingSibling;
            v19 = 1;
            do
            {
              if (xsltTestCompMatchCount(a1, v18, a3, a2))
              {
                ++v19;
              }

              a1->xpathCtxt->node = Ancestor;
              v18 = xmlXPathNextPrecedingSibling(v14, v18);
            }

            while (v18);
            v20 = v19;
          }

          else
          {
            v20 = 1.0;
          }

          v21 = (v15 + 1);
          *(a5 + 8 * v15) = v20;
          v15 = v21;
          if (v21 >= a6)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v21 = v15;
        }

        a1->xpathCtxt->node = a2;
        Ancestor = xmlXPathNextAncestor(v14, Ancestor);
        if (!Ancestor)
        {
          goto LABEL_22;
        }
      }

      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

LABEL_22:
    xmlXPathFreeParserContext(v14);
    node = v23;
  }

  else
  {
    v21 = 0;
  }

  a1->xpathCtxt->node = node;
  return v21;
}

uint64_t xsltNumberFormatGetAnyLevel(uint64_t result, uint64_t node, xsltCompMatch *a3, xsltCompMatch *a4, double *a5)
{
  if (!node)
  {
    v19 = 0.0;
    goto LABEL_28;
  }

  v9 = result;
  v10 = 0;
  v11 = node;
  do
  {
    result = xsltTestCompMatchCount(v9, v11, a3, node);
    if (result)
    {
      ++v10;
    }

    if (a4)
    {
      result = xsltTestCompMatchList(v9, v11, a4);
      if (result)
      {
        break;
      }
    }

    type = v11->type;
    if (type <= 12)
    {
      if (type != 2)
      {
        if (type != 9)
        {
          goto LABEL_18;
        }

        break;
      }
    }

    else
    {
      if (type == 18)
      {
        goto LABEL_14;
      }

      if (type == 13 || type == 21)
      {
        break;
      }

LABEL_18:
      while (1)
      {
        prev = v11->prev;
        if (!prev)
        {
          break;
        }

        v11 = v11->prev;
        v15 = prev->type;
        v16 = v15 > 0x14;
        v17 = (1 << v15) & 0x184000;
        if (v16 || v17 == 0)
        {
          do
          {
            v13 = v11;
            v11 = v11->last;
          }

          while (v11);
          goto LABEL_15;
        }
      }
    }

    v11 = (v11 + 40);
LABEL_14:
    v13 = v11->_private;
LABEL_15:
    v11 = v13;
  }

  while (v13);
  v19 = v10;
LABEL_28:
  *a5 = v19;
  return result;
}

xmlXPathError xsltFormatNumberConversion(xsltDecimalFormatPtr self, xmlChar *format, double number, xmlChar **result)
{
  v6 = format;
  v94 = 0;
  if (xmlStrlen(format) <= 0)
  {
    xsltTransformError(0, 0, 0, "xsltFormatNumberConversion : Invalid format (0-length)\n");
  }

  *result = 0;
  if (xmlXPathIsNaN(number))
  {
    noNumber = "NaN";
    if (self)
    {
      if (self->noNumber)
      {
        noNumber = self->noNumber;
      }
    }

    v9 = xmlStrdup(noNumber);
    goto LABEL_8;
  }

  v12 = xmlBufferCreate();
  if (!v12)
  {
    return 15;
  }

  v13 = v12;
  v93 = 0;
  *v91 = 0u;
  *v92 = 0x1FFFFFFFFLL;
  v95 = v6;
  v14 = xsltFormatNumberPreSuffix(self, &v95, v91);
  if (v14 < 0)
  {
    v16 = 0;
    goto LABEL_93;
  }

  v86 = v14;
  v87 = result;
  v15 = xmlStrlen(self->grouping);
  v16 = v95;
  v17 = BYTE1(v93);
  v18 = v92[0];
  v19 = v92[1];
  v20 = v91[1];
  len = v15;
  v89 = v91[0];
  if (!*v95)
  {
    v21 = 0;
    v22 = 0;
LABEL_38:
    v95 = v16;
    BYTE1(v93) = v17;
    v92[0] = v18;
    v92[1] = v19;
    v91[0] = v89;
    v91[1] = v20;
    goto LABEL_39;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if (!xsltUTF8Charcmp(v16, self->decimalPoint) || !xsltUTF8Charcmp(v16, self->patternSeparator))
    {
      goto LABEL_150;
    }

    if (v22)
    {
      v17 = 1;
      v19 = v22;
    }

    if (!xsltUTF8Charcmp(v16, self->digit))
    {
      if (v20 > 0)
      {
        goto LABEL_88;
      }

      v22 = 0;
      ++v89;
      goto LABEL_28;
    }

    if (!xsltUTF8Charcmp(v16, self->zeroDigit))
    {
      v22 = 0;
      ++v20;
LABEL_28:
      v18 += v18 >= 0;
      goto LABEL_29;
    }

    if (len < 1)
    {
      break;
    }

    v23 = xmlStrncmp(v16, self->grouping, len);
    v24 = len;
    if (v23)
    {
      break;
    }

    v18 = 0;
    v22 = 0;
LABEL_30:
    v16 += v24;
    if (!*v16)
    {
      goto LABEL_38;
    }
  }

  if (!xsltUTF8Charcmp(v16, self->percent))
  {
    if (v17)
    {
LABEL_88:
      v95 = v16;
      BYTE1(v93) = v17;
      v92[0] = v18;
      v92[1] = v19;
      v91[0] = v89;
      v91[1] = v20;
LABEL_91:
      v16 = 0;
      goto LABEL_92;
    }

    v22 = 100;
    goto LABEL_29;
  }

  if (!xsltUTF8Charcmp(v16, self->permille))
  {
    if (v17)
    {
      goto LABEL_88;
    }

    v22 = 1000;
LABEL_29:
    v21 = xmlUTF8Strsize(v16, 1);
    v94 = v21;
    v24 = v21;
    if (v21 < 1)
    {
      goto LABEL_88;
    }

    goto LABEL_30;
  }

  v22 = 0;
LABEL_150:
  v95 = v16;
  BYTE1(v93) = v17;
  v92[0] = v18;
  v92[1] = v19;
  v91[0] = v89;
  v91[1] = v20;
  if (*v16 && !xsltUTF8Charcmp(v16, self->decimalPoint))
  {
    LOBYTE(v93) = 1;
    v85 = xmlUTF8Strsize(v16, 1);
    v94 = v85;
    if (v85 < 1)
    {
      goto LABEL_91;
    }

    v21 = v85;
    v16 += v85;
    v95 = v16;
  }

LABEL_39:
  v25 = v91[2];
  v26 = v91[3];
  while (*v16)
  {
    if (!xsltUTF8Charcmp(v16, self->zeroDigit))
    {
      if (v26)
      {
        goto LABEL_90;
      }

      ++v25;
      goto LABEL_50;
    }

    if (!xsltUTF8Charcmp(v16, self->digit))
    {
      ++v26;
LABEL_50:
      v27 = xmlUTF8Strsize(v16, 1);
      v94 = v27;
      if (v27 < 1)
      {
        goto LABEL_90;
      }

      v21 = v27;
      v16 += v27;
      if (v22)
      {
        v19 = v22;
        v17 = 1;
      }

      v22 = 0;
      continue;
    }

    if (xsltUTF8Charcmp(v16, self->percent))
    {
      if (xsltUTF8Charcmp(v16, self->permille))
      {
        if (xsltUTF8Charcmp(v16, self->grouping))
        {
          break;
        }

        goto LABEL_50;
      }

      if (v17)
      {
        goto LABEL_90;
      }

      v29 = xmlUTF8Strsize(v16, 1);
      v94 = v29;
      if (v29 < 1)
      {
LABEL_89:
        v17 = 0;
LABEL_90:
        v95 = v16;
        BYTE1(v93) = v17;
        goto LABEL_91;
      }

      v21 = v29;
      v17 = 0;
      v16 += v29;
      v22 = 1000;
    }

    else
    {
      if (v17)
      {
        goto LABEL_90;
      }

      v28 = xmlUTF8Strsize(v16, 1);
      v94 = v28;
      if (v28 < 1)
      {
        goto LABEL_89;
      }

      v21 = v28;
      v17 = 0;
      v16 += v28;
      v22 = 100;
    }
  }

  v95 = v16;
  BYTE1(v93) = v17;
  v91[2] = v25;
  v91[3] = v26;
  v92[1] = v19;
  if (v22)
  {
    v16 -= v21;
    v95 = v16;
  }

  v30 = v86;
  v31 = xsltFormatNumberPreSuffix(self, &v95, v91);
  if (v31 < 0)
  {
    goto LABEL_92;
  }

  v32 = v31;
  if (*v95)
  {
    if (xsltUTF8Charcmp(v95, self->patternSeparator))
    {
      goto LABEL_92;
    }
  }

  if (number >= 0.0)
  {
LABEL_162:
    v43 = 1;
    goto LABEL_163;
  }

  v33 = xmlUTF8Strloc(v6, self->patternSeparator);
  if (v33 < 0)
  {
    v43 = 0;
LABEL_163:
    v37 = v16;
    v42 = v32;
    goto LABEL_164;
  }

  v34 = xmlUTF8Strpos(v6, v33 + 1);
  v95 = v34;
  *(&v93 + 1) = 256;
  v35 = xsltFormatNumberPreSuffix(self, &v95, v91);
  if (v35 < 0)
  {
    goto LABEL_92;
  }

  v36 = v35;
  v37 = v95;
  if (!*v95)
  {
    goto LABEL_154;
  }

  v90 = v34;
  v38 = 0;
  v39 = BYTE1(v93);
  do
  {
    if (xsltUTF8Charcmp(v37, self->percent) && xsltUTF8Charcmp(v37, self->permille))
    {
      if (xsltUTF8Charcmp(v37, self->zeroDigit) && xsltUTF8Charcmp(v37, self->digit) && xsltUTF8Charcmp(v37, self->decimalPoint) && xsltUTF8Charcmp(v37, self->grouping) && xsltUTF8Charcmp(v37, self->patternSeparator))
      {
        break;
      }

      v38 = 0;
    }

    else
    {
      if (v39)
      {
        goto LABEL_165;
      }

      v39 = 1;
      v38 = 1;
    }

    v40 = xmlUTF8Strsize(v37, 1);
    v94 = v40;
    if (v40 < 1)
    {
LABEL_165:
      v95 = v37;
      BYTE1(v93) = v39;
      goto LABEL_92;
    }

    v21 = v40;
    v37 += v40;
  }

  while (*v37);
  v95 = v37;
  BYTE1(v93) = v39;
  if (v38)
  {
    BYTE1(v93) = 0;
    v37 -= v21;
    v95 = v37;
  }

  v34 = v90;
  v30 = v86;
  if (!*v37)
  {
LABEL_154:
    v42 = 0;
    v37 = 0;
LABEL_155:
    if (v36 != v30 || v42 != v32 || v30 && xmlStrncmp(v34, v6, v30))
    {
      goto LABEL_161;
    }

    if (!v32)
    {
      v42 = 0;
      v43 = 1;
      v37 = v16;
      goto LABEL_164;
    }

    if (xmlStrncmp(v37, v16, v32))
    {
LABEL_161:
      v6 = v34;
      v43 = 1;
      v30 = v36;
LABEL_164:
      result = v87;
      goto LABEL_94;
    }

    goto LABEL_162;
  }

  v41 = xsltFormatNumberPreSuffix(self, &v95, v91);
  if ((v41 & 0x80000000) == 0 && !*v95)
  {
    v42 = v41;
    goto LABEL_155;
  }

LABEL_92:
  result = v87;
LABEL_93:
  xsltTransformError(0, 0, 0, "xsltFormatNumberConversion : error in format string '%s', using default\n", v6);
  v30 = 0;
  v42 = 0;
  v43 = number >= 0.0;
  *v91 = xmmword_2999BD7B0;
  *v92 = 0x1FFFFFFFFLL;
  LOBYTE(v93) = 1;
  v37 = v16;
LABEL_94:
  v44 = v92[1] * number;
  IsInf = xmlXPathIsInf(v44);
  if (IsInf == 1)
  {
    v47 = *result;
    if (self)
    {
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  if (IsInf == -1)
  {
    if (self->minusSign)
    {
      minusSign = self->minusSign;
    }

    else
    {
      minusSign = "-";
    }

    v47 = xmlStrdup(minusSign);
    *result = v47;
LABEL_101:
    infinity = self->infinity;
    if (!infinity)
    {
LABEL_102:
      infinity = "Infinity";
    }

    v9 = xmlStrcat(v47, infinity);
LABEL_8:
    v10 = v9;
    v11 = XPATH_EXPRESSION_OK;
    *result = v10;
  }

  else
  {
    if (!v43)
    {
      v49 = self->minusSign;
      v50 = xmlUTF8Strsize(v49, 1);
      xmlBufferAdd(v13, v49, v50);
    }

    if (v30 >= 1)
    {
      for (i = 0; i < v30; i += v52)
      {
        if (*v6 == 39)
        {
          ++v6;
        }

        v52 = xmlUTF8Strsize(v6, 1);
        v94 = v52;
        xmlBufferAdd(v13, v6, v52);
        v6 += v52;
      }
    }

    v53 = fabs(v44);
    v54 = v91[2];
    v55 = v91[3];
    v56 = v91[3] + v91[2];
    if (v91[3] + v91[2] >= 309)
    {
      if (v91[2] < 309)
      {
        v55 = 308 - v91[2];
      }

      else
      {
        v55 = 0;
        v54 = 308;
        v91[2] = 308;
      }

      v91[3] = v55;
      v56 = 308;
    }

    v57 = __exp10(v56);
    v58 = v53 + 0.5 / v57 - fmod(v53 + 0.5 / v57, 1.0 / v57);
    grouping = self->grouping;
    if (grouping && *grouping)
    {
      v94 = xmlStrlen(grouping);
      UTF8Char = xsltGetUTF8Char(self->grouping, &v94);
      v61 = floor(v58);
      v62 = *self->zeroDigit;
      v63 = v91[1];
      v64 = v92[0];
      v65 = v94;
      v66 = v13;
      v67 = v91[1];
    }

    else
    {
      v61 = floor(v58);
      v62 = *self->zeroDigit;
      v63 = v91[1];
      v64 = v92[0];
      v66 = v13;
      v67 = v91[1];
      UTF8Char = 44;
      v65 = 1;
    }

    xsltNumberFormatDecimal(v66, v62, v67, v64, UTF8Char, v65, v61);
    if (!(v91[0] + v63 + v54) && v55 >= 1)
    {
      v91[2] = ++v54;
      v91[3] = --v55;
    }

    v68 = floor(v58);
    if (v68 == 0.0 && v63 == -v54)
    {
      zeroDigit = self->zeroDigit;
      v71 = xmlUTF8Strsize(zeroDigit, 1);
      xmlBufferAdd(v13, zeroDigit, v71);
    }

    if (v54 + v55)
    {
      v74 = v58 - v68;
      if (v74 != 0.0 || v54 != 0)
      {
        decimalPoint = self->decimalPoint;
        v77 = xmlUTF8Strsize(decimalPoint, 1);
        xmlBufferAdd(v13, decimalPoint, v77);
        v78 = floor(v57 * v74 + 0.5);
        v79 = fmod(v78, 10.0);
        if (v55 >= 1 && v79 < 1.0)
        {
          do
          {
            v80 = v55--;
            v78 = v78 / 10.0;
            v81 = fmod(v78, 10.0);
          }

          while (v80 >= 2 && v81 < 1.0);
        }

        xsltNumberFormatDecimal(v13, *self->zeroDigit, v55 + v54, 0, 0, 0, floor(v78));
      }
    }

    else if (v93)
    {
      v72 = self->decimalPoint;
      v73 = xmlUTF8Strsize(v72, 1);
      xmlBufferAdd(v13, v72, v73);
    }

    if (v42 >= 1)
    {
      for (j = 0; j < v42; j += v94)
      {
        if (*v37 == 39)
        {
          v83 = v37 + 1;
        }

        else
        {
          v83 = v37;
        }

        v94 = xmlUTF8Strsize(v83, 1);
        xmlBufferAdd(v13, v83, v94);
        v37 = &v83[v94];
      }
    }

    v84 = xmlBufferContent(v13);
    *result = xmlStrdup(v84);
    xmlBufferFree(v13);
    return 0;
  }

  return v11;
}

uint64_t xsltFormatNumberPreSuffix(const xmlChar **a1, const xmlChar **a2, uint64_t a3)
{
  v6 = 0;
  for (i = *a2; ; *a2 = i)
  {
    if (*i == 39)
    {
      *a2 = i + 1;
      if (!i[1])
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (!*i || !xsltUTF8Charcmp(i, a1[11]) || !xsltUTF8Charcmp(*a2, a1[2]) || !xsltUTF8Charcmp(*a2, a1[7]) || !xsltUTF8Charcmp(*a2, a1[8]) || !xsltUTF8Charcmp(*a2, a1[3]))
      {
        return v6;
      }

      if (xsltUTF8Charcmp(*a2, a1[9]))
      {
        if (xsltUTF8Charcmp(*a2, a1[10]))
        {
          goto LABEL_18;
        }

        if (*(a3 + 25))
        {
          return 0xFFFFFFFFLL;
        }

        v8 = 1000;
      }

      else
      {
        if (*(a3 + 25))
        {
          return 0xFFFFFFFFLL;
        }

        v8 = 100;
      }

      *(a3 + 20) = v8;
      *(a3 + 25) = 1;
    }

LABEL_18:
    v9 = xmlUTF8Strsize(*a2, 1);
    if (v9 < 1)
    {
      break;
    }

    v6 = (v9 + v6);
    i = &(*a2)[v9];
  }

  return 0xFFFFFFFFLL;
}

uint64_t xsltUTF8Charcmp(const xmlChar *a1, const xmlChar *a2)
{
  v4 = xmlUTF8Strsize(a1, 1);
  if (v4 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1)
  {

    return xmlStrncmp(a1, a2, v4);
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t xsltNumberFormatDecimal(xmlBufferPtr buf, int a2, int a3, int a4, int val, int a6, double a7)
{
  v13 = 0;
  v25 = *MEMORY[0x29EDCA608];
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  v14 = -a6;
  v15 = &v24;
  *out = 0;
  v24 = 0;
  while (v13 < a3 || fabs(a7) >= 1.0)
  {
    if (a4 >= 1 && val && v13 && !(v13 % a4))
    {
      if (&v15[v14] < v23)
      {
        goto LABEL_17;
      }

      xmlCopyCharMultiByte(&v15[v14], val);
      v15 += v14;
    }

    v16 = fmod(a7, 10.0) + a2;
    if (v16 > 127)
    {
      v17 = xmlCopyCharMultiByte(out, v16);
      v18 = &v15[-v17];
      if (v18 < v23)
      {
LABEL_17:
        xsltGenericError(xsltGenericErrorContext, "xsltNumberFormatDecimal: Internal buffer size exceeded\n");
        break;
      }

      memcpy(&v15[-v17], out, v17);
      v15 = v18;
    }

    else
    {
      if (v15 <= v23)
      {
        goto LABEL_17;
      }

      *--v15 = v16;
    }

    ++v13;
    a7 = a7 / 10.0;
    if (v15 <= v23)
    {
      break;
    }
  }

  result = xmlBufferCat(buf, v15);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t xsltIsDigitZero(int a1)
{
  result = 1;
  if (a1 > 2917)
  {
    if (a1 <= 3429)
    {
      if (a1 != 2918 && a1 != 3174 && a1 != 3302)
      {
        return 0;
      }
    }

    else if (a1 > 3791)
    {
      if (a1 != 3792 && a1 != 3872)
      {
        return 0;
      }
    }

    else if (a1 != 3430 && a1 != 3664)
    {
      return 0;
    }
  }

  else if (a1 <= 2405)
  {
    if (a1 != 48 && a1 != 1632 && a1 != 1776)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 2661)
    {
      if (a1 == 2406 || a1 == 2534)
      {
        return result;
      }

      return 0;
    }

    if (a1 != 2662 && a1 != 2790)
    {
      return 0;
    }
  }

  return result;
}

uint64_t xsltNumberFormatAlpha(_DWORD *a1, xmlBufferPtr buf, int a3, double a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a4 >= 1.0)
  {
    v16 = 0u;
    memset(v15, 0, sizeof(v15));
    v17 = 0;
    if (a3)
    {
      v10 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    }

    else
    {
      v10 = "abcdefghijklmnopqrstuvwxyz";
    }

    v11 = &v16 + 15;
    v12 = 64;
    while (1)
    {
      v13 = a4 + -1.0;
      *v11 = v10[fmod(a4 + -1.0, 26.0)];
      a4 = v13 / 26.0;
      if (v13 / 26.0 < 1.0)
      {
        break;
      }

      --v11;
      if (!--v12)
      {
        v11 = v15;
        break;
      }
    }

    result = xmlBufferCCat(buf, v11);
    v14 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = a1[11];
    v6 = a1[12];
    v7 = a1[13];
    v8 = *MEMORY[0x29EDCA608];

    return xsltNumberFormatDecimal(buf, 48, 1, v5, v6, v7, a4);
  }

  return result;
}

uint64_t xsltNumberFormatRoman(uint64_t result, xmlBufferPtr buf, int a3, double a4)
{
  v4 = a4;
  if (a4 < 1.0 || a4 > 5000.0)
  {
    v20 = *(result + 44);
    v21 = *(result + 48);
    v22 = *(result + 52);

    return xsltNumberFormatDecimal(buf, 48, 1, v20, v21, v22, a4);
  }

  else
  {
    if (a4 >= 1000.0)
    {
      if (a3)
      {
        v7 = "M";
      }

      else
      {
        v7 = "m";
      }

      do
      {
        result = xmlBufferCCat(buf, v7);
        v4 = v4 + -1000.0;
      }

      while (v4 >= 1000.0);
    }

    if (v4 >= 900.0)
    {
      if (a3)
      {
        v8 = "CM";
      }

      else
      {
        v8 = "cm";
      }

      result = xmlBufferCCat(buf, v8);
      v4 = v4 + -900.0;
    }

    if (v4 >= 500.0)
    {
      if (a3)
      {
        v9 = "D";
      }

      else
      {
        v9 = "d";
      }

      do
      {
        result = xmlBufferCCat(buf, v9);
        v4 = v4 + -500.0;
      }

      while (v4 >= 500.0);
    }

    if (v4 >= 400.0)
    {
      if (a3)
      {
        v10 = "CD";
      }

      else
      {
        v10 = "cd";
      }

      result = xmlBufferCCat(buf, v10);
      v4 = v4 + -400.0;
    }

    if (v4 >= 100.0)
    {
      if (a3)
      {
        v11 = "C";
      }

      else
      {
        v11 = "c";
      }

      do
      {
        result = xmlBufferCCat(buf, v11);
        v4 = v4 + -100.0;
      }

      while (v4 >= 100.0);
    }

    if (v4 >= 90.0)
    {
      if (a3)
      {
        v12 = "XC";
      }

      else
      {
        v12 = "xc";
      }

      result = xmlBufferCCat(buf, v12);
      v4 = v4 + -90.0;
    }

    if (v4 >= 50.0)
    {
      if (a3)
      {
        v13 = "L";
      }

      else
      {
        v13 = "l";
      }

      do
      {
        result = xmlBufferCCat(buf, v13);
        v4 = v4 + -50.0;
      }

      while (v4 >= 50.0);
    }

    if (v4 >= 40.0)
    {
      if (a3)
      {
        v14 = "XL";
      }

      else
      {
        v14 = "xl";
      }

      result = xmlBufferCCat(buf, v14);
      v4 = v4 + -40.0;
    }

    if (v4 >= 10.0)
    {
      if (a3)
      {
        v15 = "X";
      }

      else
      {
        v15 = "x";
      }

      do
      {
        result = xmlBufferCCat(buf, v15);
        v4 = v4 + -10.0;
      }

      while (v4 >= 10.0);
    }

    if (v4 >= 9.0)
    {
      if (a3)
      {
        v16 = "IX";
      }

      else
      {
        v16 = "ix";
      }

      result = xmlBufferCCat(buf, v16);
      v4 = v4 + -9.0;
    }

    if (v4 >= 5.0)
    {
      if (a3)
      {
        v17 = "V";
      }

      else
      {
        v17 = "v";
      }

      do
      {
        result = xmlBufferCCat(buf, v17);
        v4 = v4 + -5.0;
      }

      while (v4 >= 5.0);
    }

    if (v4 >= 4.0)
    {
      if (a3)
      {
        v18 = "IV";
      }

      else
      {
        v18 = "iv";
      }

      result = xmlBufferCCat(buf, v18);
      v4 = v4 + -4.0;
    }

    if (v4 >= 1.0)
    {
      if (a3)
      {
        v19 = "I";
      }

      else
      {
        v19 = "i";
      }

      do
      {
        result = xmlBufferCCat(buf, v19);
        v4 = v4 + -1.0;
      }

      while (v4 >= 1.0);
    }
  }

  return result;
}

uint64_t xsltTestCompMatchCount(xsltTransformContext *a1, xmlNodePtr node, xsltCompMatch *a3, uint64_t a4)
{
  if (a3)
  {

    return xsltTestCompMatchList(a1, node, a3);
  }

  else
  {
    type = node->type;
    if (type != *(a4 + 8))
    {
      return 0;
    }

    if (type == XML_NAMESPACE_DECL)
    {
      return 1;
    }

    result = xmlStrEqual(node->name, *(a4 + 16));
    if (!result)
    {
      return result;
    }

    ns = node->ns;
    v9 = *(a4 + 72);
    if (ns == v9)
    {
      return 1;
    }

    result = 0;
    if (ns && v9)
    {
      href = ns->href;
      v11 = v9->href;

      return xmlStrEqual(href, v11);
    }
  }

  return result;
}

void xsltFreeCompMatchList(xsltCompMatchPtr comp)
{
  if (comp)
  {
    do
    {
      v1 = *comp;
      xsltFreeCompMatch(comp);
      comp = v1;
    }

    while (v1);
  }
}

void xsltFreeCompMatch(int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 9);
  if (v3)
  {
    free(v3);
  }

  if (a1[15] >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 11);
      v7 = *(v6 + v4 + 8);
      if (v7)
      {
        free(v7);
      }

      v8 = *(v6 + v4 + 16);
      if (v8)
      {
        free(v8);
      }

      v9 = v6 + v4;
      v10 = *(v9 + 24);
      if (v10)
      {
        free(v10);
      }

      v11 = *(v9 + 32);
      if (v11)
      {
        xmlXPathFreeCompExpr(v11);
      }

      ++v5;
      v4 += 56;
    }

    while (v5 < a1[15]);
  }

  free(*(a1 + 11));
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *(a1 + 4) = v12;
  *(a1 + 5) = v12;
  *(a1 + 2) = v12;
  *(a1 + 3) = v12;
  *a1 = v12;
  *(a1 + 1) = v12;

  free(a1);
}

void xsltNormalizeCompSteps(void *payload, void *data, const xmlChar *name)
{
  v3 = *(payload + 15);
  if (v3 >= 1)
  {
    v4 = *(data + 84);
    v5 = vdup_n_s32(v4);
    v6 = (*(payload + 11) + 48);
    do
    {
      v6[-1] = vadd_s32(v6[-1], v5);
      v6->i32[0] += v4;
      v6 += 7;
      --v3;
    }

    while (v3);
  }
}

int xsltTestCompMatchList(xsltTransformContextPtr ctxt, xmlNodePtr node, xsltCompMatchPtr comp)
{
  result = -1;
  if (ctxt && node)
  {
    v6 = comp;
    if (comp)
    {
      while (1)
      {
        result = xsltTestCompMatch(ctxt, v6, node, 0, 0);
        if (result == 1)
        {
          break;
        }

        v6 = *v6;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xsltTestCompMatch(xsltTransformContext *a1, uint64_t a2, xmlNodePtr node, uint64_t a4, uint64_t a5)
{
  v76 = 0;
  v77 = 0;
  if (!a1 || !node)
  {
    xsltTransformError(a1, 0, node, "xsltTestCompMatch: null arg\n");
    return 0xFFFFFFFFLL;
  }

  v7 = *(a2 + 24);
  if (a4)
  {
    if (v7 == a4)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (v7)
  {
    return 0;
  }

LABEL_8:
  v9 = *(a2 + 32);
  if (a5)
  {
    if (v9 != a5)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  inst = a1->inst;
  a1->inst = *(a2 + 48);
  if (*(a2 + 60) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = node;
    v74 = inst;
    while (1)
    {
      v15 = *(a2 + 88) + 56 * v13;
      v16 = *v15;
      v17 = (*v15 == 14 ? v12 : *(a2 + 88) + 56 * v13);
      if (v16 > 4)
      {
        break;
      }

      if (v16 != 4)
      {
        if (!v16)
        {
          goto LABEL_145;
        }

LABEL_47:
        v31 = v17;
        v32 = xsltTestStepMatch(a1, v14, (*(a2 + 88) + 56 * v13));
        v17 = v31;
        if (v32 == 1)
        {
          goto LABEL_138;
        }

        goto LABEL_54;
      }

      type = v14->type;
      v36 = type > 0x15;
      v22 = (1 << type) & 0x242200;
      if (!v36 && v22 != 0)
      {
        goto LABEL_54;
      }

      v14 = v14->parent;
      if (!v14)
      {
        goto LABEL_54;
      }

      v24 = *(v15 + 8);
      if (!v24)
      {
        goto LABEL_138;
      }

      name = v14->name;
      if (*v24 != *name)
      {
        goto LABEL_54;
      }

      v26 = v17;
      if (!xmlStrEqual(v24, name))
      {
        v17 = v26;
        goto LABEL_54;
      }

      ns = v14->ns;
      v17 = v26;
      if (ns)
      {
        href = ns->href;
        if (!href)
        {
          goto LABEL_138;
        }

        v29 = *(v15 + 16);
        if (!v29)
        {
          goto LABEL_54;
        }

        v30 = xmlStrEqual(v29, href);
        goto LABEL_137;
      }

      if (!*(v15 + 16))
      {
        goto LABEL_138;
      }

LABEL_54:
      v35 = v76;
      if (v77)
      {
        v36 = v76 < 1;
      }

      else
      {
        v36 = 1;
      }

      if (v36)
      {
        matched = 0;
        goto LABEL_148;
      }

      LODWORD(v76) = v76 - 1;
      v37 = v77 + 16 * (v35 - 1);
      v13 = *v37;
      v14 = *(v37 + 1);
LABEL_139:
      v12 = v17;
      if (v13 >= *(a2 + 60))
      {
        goto LABEL_145;
      }
    }

    if (v16 != 5)
    {
      if (v16 != 14)
      {
        goto LABEL_47;
      }

      if (*(a2 + 56))
      {
        matched = xsltTestCompMatchDirect(a1, a2, node, *(a2 + 72), *(a2 + 80));
        goto LABEL_148;
      }

      if (!*(v15 + 8) || !v12 || !*(v15 + 32))
      {
        goto LABEL_54;
      }

      doc = v14->doc;
      v20 = 1;
      if (doc)
      {
        if (doc->type == XML_DOCUMENT_NODE)
        {
          v19 = doc->name;
          if (v19)
          {
            if (*v19 == 32)
            {
              v20 = 0;
            }
          }
        }
      }

      v38 = *&a1->xpathCtxt->contextSize;
      ptr = a1->extras[*(v12 + 40)].val.ptr;
      if (ptr)
      {
        parent = v14->parent;
        if (ptr->parent == parent)
        {
          v72 = v20;
          if (ptr == v14)
          {
            v41 = 0;
          }

          else
          {
            v41 = 0;
            v42 = v14;
            do
            {
              v43 = v17;
              v44 = xsltTestStepMatch(a1, v42, v17);
              v17 = v43;
              if (v44)
              {
                ++v41;
              }

              v42 = v42->prev;
              if (v42)
              {
                v45 = v42 == ptr;
              }

              else
              {
                v45 = 1;
              }
            }

            while (!v45);
            if (!v42)
            {
              v41 = 0;
              v46 = v14;
              while (v46 != ptr)
              {
                v47 = xsltTestStepMatch(a1, v46, v43);
                v17 = v43;
                v41 -= v47 != 0;
                v46 = v46->next;
                LOBYTE(v48) = 1;
                if (!v46)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          extras = a1->extras;
          v58 = extras[v17[11]].val.ival + v41;
          if (v14->doc)
          {
            ival = extras[v17[12]].val.ival;
            if (v72)
            {
              extras[*(v12 + 40)].val.ptr = v14;
              a1->extras[v17[11]].val.ival = v58;
              if (v58)
              {
                xpathCtxt = a1->xpathCtxt;
                xpathCtxt->contextSize = ival;
                xpathCtxt->proximityPosition = v58;
                doc = v14->doc;
                v61 = 1;
                goto LABEL_128;
              }

LABEL_133:
              LOBYTE(v48) = 1;
            }

            else
            {
              if (!v58)
              {
                goto LABEL_133;
              }

              LOBYTE(v48) = 0;
              v67 = a1->xpathCtxt;
              v67->contextSize = ival;
              v67->proximityPosition = v58;
            }

LABEL_134:
            v26 = v17;
            v68 = a1->node;
            a1->node = v14;
            v69 = *(v15 + 32);
            v70 = v48;
            v30 = xsltEvalXPathPredicate(a1, v69, *(a2 + 72), *(a2 + 80));
            if (!v70)
            {
              *&a1->xpathCtxt->contextSize = v38;
            }

            a1->node = v68;
            inst = v74;
LABEL_137:
            v17 = v26;
            if (v30)
            {
              goto LABEL_138;
            }

            goto LABEL_54;
          }

          doc = 0;
          ival = 0;
          v61 = 1;
          v48 = v72;
LABEL_126:
          if (!v58)
          {
            goto LABEL_133;
          }

          v66 = a1->xpathCtxt;
          v66->contextSize = ival;
          v66->proximityPosition = v58;
          if (v48)
          {
LABEL_128:
            LOBYTE(v48) = 0;
            if (v61 && doc)
            {
              LOBYTE(v48) = 0;
              a1->extras[*(v12 + 40)].val.ptr = v14;
              a1->extras[v17[11]].val.ival = v58;
              a1->extras[v17[12]].val.ival = ival;
            }
          }

          goto LABEL_134;
        }
      }

      else
      {
        parent = v14->parent;
      }

      if (!parent)
      {
        goto LABEL_133;
      }

      v73 = v20;
      children = parent->children;
      if (children)
      {
        ival = 0;
        v75 = 0;
        do
        {
          if (children == v14)
          {
            v75 = ++ival;
          }

          else
          {
            v56 = v17;
            v57 = xsltTestStepMatch(a1, children, v17);
            v17 = v56;
            if (v57)
            {
              ++ival;
            }
          }

          children = children->next;
        }

        while (children);
        doc = v14->doc;
        v58 = v75;
      }

      else
      {
        ival = 0;
        v58 = 0;
      }

      v48 = v73;
      if (doc)
      {
        do
        {
          v59 = parent;
          parent = parent->parent;
        }

        while (parent);
        v61 = (v59->type | 4) == 0xD && v59 == doc;
      }

      else
      {
        v61 = 0;
      }

      goto LABEL_126;
    }

    if (*(v15 + 8))
    {
      LODWORD(matched) = 5;
      goto LABEL_51;
    }

    v33 = *(v15 + 56);
    v15 += 56;
    matched = v33;
    if (v33 <= 9)
    {
      if (((1 << matched) & 0x344) != 0)
      {
LABEL_51:
        if (!v14)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }

      if (matched == 1)
      {
        goto LABEL_148;
      }
    }

    if (matched != 7 || v14 == 0)
    {
      goto LABEL_54;
    }

    LODWORD(matched) = 7;
LABEL_52:
    v34 = v14->type;
    if (v34 > 0x15 || ((1 << v34) & 0x242200) == 0)
    {
      v14 = v14->parent;
      if (matched != 2 && matched != 9)
      {
        v62 = v17;
        xsltPatPushState(a1, &v76, v13, v14);
        v17 = v62;
LABEL_138:
        ++v13;
        goto LABEL_139;
      }

      if (!*(v15 + 8))
      {
LABEL_119:
        xsltPatPushState(a1, &v76, v13++, v14);
        v17 = v15;
        goto LABEL_138;
      }

      for (; v14; v14 = v14->parent)
      {
        if (v14->type == XML_ELEMENT_NODE)
        {
          v49 = *(v15 + 8);
          v50 = v14->name;
          if (*v49 == *v50)
          {
            if (xmlStrEqual(v49, v50))
            {
              v51 = v14->ns;
              if (v51)
              {
                v52 = v51->href;
                if (v52)
                {
                  v53 = *(v15 + 16);
                  if (v53)
                  {
                    if (xmlStrEqual(v53, v52))
                    {
                      goto LABEL_119;
                    }
                  }
                }
              }

              else if (!*(v15 + 16))
              {
                goto LABEL_119;
              }
            }
          }
        }
      }

      v17 = v15;
    }

    goto LABEL_54;
  }

LABEL_145:
  matched = 1;
LABEL_148:
  a1->inst = inst;
  if (v77)
  {
    free(v77);
  }

  return matched;
}

void xsltCompMatchClearCache(xsltTransformContextPtr ctxt, xsltCompMatchPtr comp)
{
  if (ctxt && comp)
  {
    v3 = *(comp + 11);
    info = ctxt->extras[v3[12]].info;
    if (info)
    {
      xmlXPathFreeObject(info);
      extras = ctxt->extras;
      extras[v3[12]].info = 0;
      extras[v3[10]].val.ptr = 0;
      ctxt->extras[v3[11]].val.ival = 0;
      ctxt->extras[v3[12]].deallocate = 0;
    }
  }
}

int *xsltCompilePatternInternal(_BYTE *a1, const xmlDoc *a2, xmlNode *a3, xsltStylesheet *a4, uint64_t a5, int a6)
{
  if (!a1)
  {
    xsltTransformError(0, 0, a3, "xsltCompilePattern : NULL pattern\n");
    return 0;
  }

  v10 = a1;
  v11 = malloc_type_malloc(0x40uLL, 0x1070040A9F92CB2uLL);
  if (!v11)
  {
    xsltTransformError(0, 0, 0, "xsltNewParserContext : malloc failed\n");
    return 0;
  }

  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  *v11 = a4;
  *(v11 + 1) = a5;
  *(v11 + 4) = a2;
  *(v11 + 5) = a3;
  v92 = v11;
  if (!*v10)
  {
    v14 = 0;
    goto LABEL_149;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = v10 + 1;
  v16 = v10;
  style = a4;
  v90 = v10 + 1;
  v91 = (v11 + 1);
  do
  {
    v17 = 0;
    v18 = v12 << 32;
    v19 = &v10[v12];
    while (1)
    {
      v20 = *v19++;
      v21 = (1 << v20) & 0x100002600;
      if (v20 > 0x20 || v21 == 0)
      {
        break;
      }

      v18 += 0x100000000;
      --v17;
    }

    v23 = v18 >> 32;
    v24 = v10[v23];
    if (!v10[v23])
    {
LABEL_151:
      xsltTransformError(0, 0, a3, "xsltCompilePattern : NULL pattern\n");
      goto LABEL_161;
    }

    v25 = 0;
    v26 = v12 - v17;
    while (v24 != 124 || v25)
    {
      if (v24 > 90)
      {
        v30 = v25 - 1;
        if (v24 != 93)
        {
          v30 = v25;
        }

        if (v24 == 91)
        {
          ++v25;
        }

        else
        {
          v25 = v30;
        }
      }

      else if (v24 == 34)
      {
        v32 = &v15[v26];
        do
        {
          v34 = *v32++;
          v33 = v34;
          ++v26;
        }

        while (v34 && v33 != 34);
      }

      else if (v24 == 39)
      {
        v27 = &v15[v26];
        do
        {
          v29 = *v27++;
          v28 = v29;
          ++v26;
        }

        while (v29 && v28 != 39);
      }

      if (!v10[v26])
      {
        break;
      }

      v31 = v26 + 1;
      v24 = v10[v31];
      ++v26;
      if (!v10[v31])
      {
        goto LABEL_35;
      }
    }

    LODWORD(v31) = v26;
LABEL_35:
    if (v12 - v31 == v17)
    {
      goto LABEL_151;
    }

    v94 = v13;
    v35 = v12;
    v36 = v10;
    v37 = v16;
    v38 = malloc_type_malloc(0x60uLL, 0x10F0040748D62EAuLL);
    if (!v38)
    {
      xsltTransformError(0, 0, 0, "xsltNewCompMatch : out of memory error\n");
      goto LABEL_161;
    }

    v13 = v38;
    v38[4] = 0u;
    v38[5] = 0u;
    v38[2] = 0u;
    v38[3] = 0u;
    *v38 = 0u;
    v38[1] = 0u;
    *(v38 + 16) = 10;
    v39 = malloc_type_malloc(0x230uLL, 0x1030040C2A3A036uLL);
    *(v13 + 88) = v39;
    if (!v39)
    {
      xsltTransformError(0, 0, 0, "xsltNewCompMatch : out of memory error\n");
      free(v13);
      goto LABEL_161;
    }

    *(v13 + 80) = 0;
    *(v13 + 72) = 0;
    v40 = v13;
    *(v13 + 56) = 0;
    v41 = v37;
    v10 = v36;
    if (v14)
    {
      if (v94)
      {
        *v94 = v13;
      }

      v40 = v14;
    }

    v95 = v40;
    v92[7] = v13;
    v42 = xmlStrndup(v41, v31 - v35);
    v92[3] = v42;
    if (!v42)
    {
      goto LABEL_160;
    }

    *v91 = &v42[-v17];
    *(v13 + 16) = v42;
    *(v13 + 48) = a3;
    NsList = xmlGetNsList(a2, a3);
    *(v13 + 72) = NsList;
    if (NsList)
    {
      v44 = -1;
      do
      {
        v45 = *NsList++;
        ++v44;
      }

      while (v45);
    }

    else
    {
      v44 = 0;
    }

    *(v13 + 80) = v44;
    xsltGenericDebug(xsltGenericDebugContext, "xsltCompilePattern : parsing '%s'\n", *(v13 + 16));
    *(v13 + 8) = 0;
    for (i = *v91; ; *v91 = i)
    {
      v47 = *i++;
      if (v47 <= 0xC)
      {
        if (v47 - 9 >= 2)
        {
          goto LABEL_61;
        }

        continue;
      }

      if (*(i - 1) > 0x1Fu)
      {
        break;
      }

      if (v47 != 13)
      {
        goto LABEL_61;
      }

LABEL_57:
      ;
    }

    if (*(i - 1) <= 0x29u)
    {
      if (v47 != 32)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }

    switch(v47)
    {
      case '*':
        goto LABEL_70;
      case '/':
        if (*i == 47)
        {
          *v91 = i;
          if (*i)
          {
            *v91 = i + 1;
          }

          *(v92[7] + 8) = 1056964608;
        }

        else
        {
          do
          {
            *v91 = i;
            v54 = *i++;
            v55 = (1 << v54) & 0x100002600;
          }

          while (v54 <= 0x20 && v55 != 0);
          if (xsltCompMatchAdd(v92, v92[7], 1, 0, 0, a6) || !**v91 || **v91 == 124 || xsltCompMatchAdd(v92, v92[7], 4, 0, 0, a6))
          {
            goto LABEL_85;
          }
        }

        goto LABEL_70;
      case '@':
LABEL_70:
        v52 = v92;
        v53 = 0;
LABEL_84:
        xsltCompileRelativePathPattern(v52, v53, a6);
        goto LABEL_85;
    }

LABEL_61:
    v48 = xsltScanNCName(v92);
    if (!v48)
    {
      xsltTransformError(0, 0, 0, "xsltCompileLocationPathPattern : Name expected\n");
      *(v92 + 12) = 1;
LABEL_158:
      xsltTransformError(0, style, a3, "xsltCompilePattern : failed to compile '%s'\n", *(v13 + 16));
      if (style)
      {
        ++style->errors;
      }

LABEL_160:
      v14 = v95;
      goto LABEL_161;
    }

    v49 = v48;
    for (j = *v91; ; *v91 = j)
    {
      v51 = *j++;
      if (v51 > 0x28)
      {
        goto LABEL_83;
      }

      if (((1 << v51) & 0x100002600) == 0)
      {
        break;
      }
    }

    if (v51 != 40 || xmlXPathIsNodeType(v48))
    {
LABEL_83:
      v52 = v92;
      v53 = v49;
      goto LABEL_84;
    }

    xsltCompileIdKeyPattern(v92, v49, 1, a6, 0);
    free(v49);
    if (*(v92 + 12))
    {
      goto LABEL_158;
    }

    if (**v91 == 47)
    {
      v80 = v92[7];
      if ((*v91)[1] == 47)
      {
        if (xsltCompMatchAdd(v92, v80, 5, 0, 0, a6))
        {
          goto LABEL_85;
        }

        v81 = *v91;
        if (**v91)
        {
          *v91 = v81 + 1;
          if (v81[1])
          {
            v81 += 2;
            goto LABEL_145;
          }

          ++v81;
        }

        while (1)
        {
          v84 = *v81;
          v69 = v84 > 0x20;
          v85 = (1 << v84) & 0x100002600;
          if (v69 || v85 == 0)
          {
            break;
          }

          ++v81;
LABEL_145:
          *v91 = v81;
        }
      }

      else
      {
        if (xsltCompMatchAdd(v92, v80, 4, 0, 0, a6))
        {
          goto LABEL_85;
        }

        v82 = *v91;
        if (**v91)
        {
          goto LABEL_139;
        }

        while (1)
        {
          v83 = *v82;
          if (v83 > 0x20 || ((1 << v83) & 0x100002600) == 0)
          {
            break;
          }

LABEL_139:
          *v91 = ++v82;
        }
      }

      goto LABEL_70;
    }

LABEL_85:
    if (*(v92 + 12))
    {
      goto LABEL_158;
    }

    v57 = *(v13 + 60);
    if (v57 >= 2)
    {
      v58 = 0;
      v59 = 0;
      v60 = *(v13 + 88);
      v61 = 56 * v57;
      v62 = v57 - 2;
      do
      {
        v63 = v60 + v58;
        v64 = v60 + v61;
        v65 = *(v60 + v58 + 8);
        *(v63 + 8) = *(v60 + v61 - 48);
        *(v64 - 48) = v65;
        v66 = *(v60 + v58);
        *v63 = *(v60 + v61 - 56);
        *(v64 - 56) = v66;
        v67 = *(v60 + v58 + 24);
        *(v63 + 24) = *(v60 + v61 - 32);
        *(v64 - 32) = v67;
        *&v67 = *(v60 + v58 + 40);
        *(v63 + 40) = *(v60 + v61 - 16);
        *(v64 - 16) = v67;
        v68 = *(v60 + v58 + 48);
        *(v63 + 48) = *(v60 + v61 - 8);
        *(v64 - 8) = v68;
        ++v59;
        v61 -= 56;
        v58 += 56;
        v69 = v62-- <= v59;
      }

      while (!v69);
    }

    xsltCompMatchAdd(v92, v13, 0, 0, 0, 0);
    v70 = *(v13 + 60);
    if (v70 >= 2)
    {
      v71 = (v70 - 1);
      v72 = *(v13 + 88);
      while (*v72 != 14 || v72[14] != 14)
      {
        v72 += 14;
        if (!--v71)
        {
          goto LABEL_98;
        }
      }

      *(v13 + 56) = 1;
      if (**(v13 + 16) != 47)
      {
        v73 = xmlStrdup("//");
        v74 = xmlStrcat(v73, *(v13 + 16));
        free(*(v13 + 16));
        *(v13 + 16) = v74;
      }
    }

LABEL_98:
    v75 = *(v13 + 8);
    if (v75 != 0.0)
    {
      goto LABEL_120;
    }

    v76 = *(v13 + 88);
    v77 = *v76;
    if ((*v76 - 2) < 2 || v77 == 10)
    {
      v79 = *(v76 + 1);
      if (v79 && !v76[14])
      {
        goto LABEL_120;
      }

      if (v77 == 8)
      {
        goto LABEL_113;
      }

      if (v77 == 3)
      {
        if (*(v76 + 2))
        {
          goto LABEL_114;
        }

        if (v79)
        {
          goto LABEL_118;
        }
      }

      else
      {
LABEL_116:
        if ((v77 - 9) > 4)
        {
          goto LABEL_118;
        }
      }

      if (v76[14])
      {
        goto LABEL_118;
      }

      v75 = -0.5;
      goto LABEL_119;
    }

    if (v77 != 8)
    {
      goto LABEL_116;
    }

    v79 = *(v76 + 1);
LABEL_113:
    if (v79)
    {
LABEL_114:
      if (!v76[14])
      {
        v75 = -0.25;
        goto LABEL_119;
      }
    }

LABEL_118:
    v75 = 0.5;
LABEL_119:
    *(v13 + 8) = v75;
LABEL_120:
    xsltGenericDebug(xsltGenericDebugContext, "xsltCompilePattern : parsed %s, default priority %f\n", *(v13 + 16), v75);
    if (v36[v31] == 124)
    {
      v12 = v31 + 1;
    }

    else
    {
      v12 = v31;
    }

    v16 = &v36[v12];
    v15 = v90;
    v14 = v95;
  }

  while (v36[v12]);
  if (v12)
  {
    free(v92);
    return v95;
  }

  a4 = style;
LABEL_149:
  xsltTransformError(0, a4, a3, "xsltCompilePattern : NULL pattern\n");
  if (a4)
  {
    ++a4->errors;
  }

LABEL_161:
  free(v92);
  if (v14)
  {
    do
    {
      v88 = *v14;
      xsltFreeCompMatch(v14);
      v14 = v88;
    }

    while (v88);
  }

  return 0;
}