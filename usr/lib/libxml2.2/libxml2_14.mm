uint64_t xmlSchemaParseNewDocWithContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 48);
  v88 = *(v6 + 32);
  v7 = (a2 + 48);
  v8 = *(a2 + 48);
  if ((v8 & 0x1FF) != 0)
  {
    *v7 = v8 & 0xFFFFFE00;
  }

  v9 = *(a2 + 32);
  *(a2 + 32) = *(a3 + 32);
  *(a1 + 64) = a2;
  v10 = *(a3 + 24);
  *(a1 + 200) = v10;
  *(v6 + 32) = a3;
  if (v10 && xmlStrEqual(v10, "http://www.w3.org/2001/XMLSchema"))
  {
    *(a1 + 184) = 1;
  }

  ++*(a3 + 52);
  RootElement = xmlDocGetRootElement(*(a3 + 32));
  v12 = *(a1 + 36);
  PropNode = xmlSchemaGetPropNode(RootElement, "id");
  if (PropNode)
  {
    v14 = xmlSchemaPValAttrNodeID(a1, PropNode);
    if (v14 == -1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = xmlSchemaGetPropNode(RootElement, "targetNamespace");
  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v15;
  BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
  v18 = xmlSchemaPValAttrNode(a1, v16, BuiltInType, 0);
  v14 = v18;
  if (v18 == -1)
  {
    goto LABEL_33;
  }

  if (v18)
  {
    *(a1 + 196) = 3037;
  }

  else
  {
LABEL_13:
    v19 = xmlSchemaGetPropNode(RootElement, "elementFormDefault");
    if (v19)
    {
      v20 = v19;
      NodeContent = xmlSchemaGetNodeContent(a1, v19);
      if (xmlSchemaPValAttrFormDefault(NodeContent, v7, 1))
      {
        xmlSchemaPSimpleTypeErr(a1, 1705, v20, 0, "(qualified | unqualified)", NodeContent, 0, 0);
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    v22 = xmlSchemaGetPropNode(RootElement, "attributeFormDefault");
    if (v22)
    {
      v23 = v22;
      v24 = xmlSchemaGetNodeContent(a1, v22);
      if (xmlSchemaPValAttrFormDefault(v24, v7, 2))
      {
        xmlSchemaPSimpleTypeErr(a1, 1701, v23, 0, "(qualified | unqualified)", v24, 0, 0);
        v14 = 1;
      }

      else
      {
        v14 = 0;
      }
    }

    v25 = xmlSchemaGetPropNode(RootElement, "finalDefault");
    if (v25)
    {
      v26 = v25;
      v27 = xmlSchemaGetNodeContent(a1, v25);
      v28 = xmlSchemaPValAttrBlockFinal(v27, v7, 4, 8, -1, 16, 32);
      v14 = v28;
      if (v28 == -1)
      {
        goto LABEL_33;
      }

      if (v28)
      {
        xmlSchemaPSimpleTypeErr(a1, 3037, v26, 0, "(#all | List of (extension | restriction | list | union))", v27, 0, 0);
        v14 = 1;
      }
    }

    v29 = xmlSchemaGetPropNode(RootElement, "blockDefault");
    if (v29)
    {
      v30 = v29;
      v31 = xmlSchemaGetNodeContent(a1, v29);
      v32 = xmlSchemaPValAttrBlockFinal(v31, v7, 64, 128, 256, -1, -1);
      v14 = v32;
      if (v32 == -1)
      {
        goto LABEL_33;
      }

      if (v32)
      {
        xmlSchemaPSimpleTypeErr(a1, 3037, v30, 0, "(#all | List of (extension | restriction | substitution))", v31, 0, 0);
        v14 = 1;
      }
    }
  }

  v33 = *(a1 + 36);
  if (v12 != v33)
  {
    v14 = *(a1 + 32);
  }

  if (!v14)
  {
    children = RootElement->children;
    if (!children)
    {
      v14 = 0;
      goto LABEL_33;
    }

    v14 = 0;
    v36 = "include";
    v37 = "import";
    while (1)
    {
      if (!children->ns || (!xmlStrEqual(children->name, v36) || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!children->ns || (!xmlStrEqual(children->name, v37) || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!children->ns || (!xmlStrEqual(children->name, "redefine") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!children->ns || !xmlStrEqual(children->name, "annotation") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")))))
      {
LABEL_114:
        if (children->ns)
        {
          if (xmlStrEqual(children->name, "complexType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            xmlSchemaParseComplexType(a1, a2, children, 1);
            goto LABEL_158;
          }

          if (children->ns)
          {
            if (xmlStrEqual(children->name, "simpleType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              xmlSchemaParseSimpleType(a1, a2, children, 1);
              goto LABEL_158;
            }

            if (children->ns)
            {
              if (xmlStrEqual(children->name, "element") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                xmlSchemaParseElement(a1, a2, children, 0, 1);
                goto LABEL_158;
              }

              if (children->ns)
              {
                if (xmlStrEqual(children->name, "attribute") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v63 = xmlSchemaGetPropNode(children, "name");
                  if (!v63)
                  {
                    xmlSchemaPMissingAttrErr(a1, children, "name");
                    goto LABEL_158;
                  }

                  v64 = v63;
                  str2 = 0;
                  v65 = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
                  if (xmlSchemaPValAttrNode(a1, v64, v65, &str2))
                  {
                    goto LABEL_158;
                  }

                  if (xmlStrEqual(str2, "xmlns"))
                  {
                    v66 = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
                    xmlSchemaPSimpleTypeErr(a1, 3056, v64, v66, 0, 0, "The value of the attribute must not match 'xmlns'", 0);
                    goto LABEL_158;
                  }

                  if (xmlStrEqual(*(a1 + 200), "http://www.w3.org/2001/XMLSchema-instance"))
                  {
                    xmlSchemaCustomErr4(a1, 3057, children, 0, "The target namespace must not match '%s'", "http://www.w3.org/2001/XMLSchema-instance", 0, 0, 0);
                  }

                  v79 = xmlSchemaAddAttribute(a1, str2, *(a1 + 200), children, 1);
                  if (!v79)
                  {
                    goto LABEL_158;
                  }

                  v80 = v79;
                  v79[30] |= 1u;
                  properties = children->properties;
                  if (properties)
                  {
                    while (2)
                    {
                      v82 = *(properties + 72);
                      if (v82)
                      {
                        if (xmlStrEqual(*(v82 + 16), "http://www.w3.org/2001/XMLSchema"))
                        {
                          goto LABEL_171;
                        }
                      }

                      else if (!xmlStrEqual(*(properties + 16), "id") && !xmlStrEqual(*(properties + 16), "default") && !xmlStrEqual(*(properties + 16), "fixed") && !xmlStrEqual(*(properties + 16), "name") && !xmlStrEqual(*(properties + 16), "type"))
                      {
LABEL_171:
                        xmlSchemaPIllegalAttrErr(a1, properties);
                      }

                      properties = *(properties + 48);
                      if (!properties)
                      {
                        break;
                      }

                      continue;
                    }
                  }

                  xmlSchemaPValAttrQName(a1, a2, children, "type", (v80 + 56), (v80 + 48));
                  v83 = xmlSchemaGetPropNode(children, "id");
                  if (v83)
                  {
                    xmlSchemaPValAttrNodeID(a1, v83);
                  }

                  Prop = xmlSchemaGetProp(a1, children, "fixed");
                  *(v80 + 88) = Prop;
                  if (Prop)
                  {
                    *(v80 + 120) |= 0x200u;
                  }

                  v85 = xmlSchemaGetPropNode(children, "default");
                  if (v85)
                  {
                    if ((*(v80 + 121) & 2) != 0)
                    {
                      xmlSchemaPMutualExclAttrErr(a1, 3051, v80, v85);
                    }

                    else
                    {
                      *(v80 + 88) = xmlSchemaGetNodeContent(a1, v85);
                    }
                  }

                  v73 = children->children;
                  if (!v73)
                  {
                    goto LABEL_158;
                  }

                  if (v73->ns)
                  {
                    if (xmlStrEqual(v73->name, "annotation"))
                    {
                      if (xmlStrEqual(v73->ns->href, "http://www.w3.org/2001/XMLSchema"))
                      {
                        *(v80 + 64) = xmlSchemaParseAnnotation(a1, v73, 1);
                        v73 = v73->next;
                        if (!v73)
                        {
                          goto LABEL_158;
                        }
                      }
                    }
                  }

                  if (v73->ns && xmlStrEqual(v73->name, "simpleType") && xmlStrEqual(v73->ns->href, "http://www.w3.org/2001/XMLSchema"))
                  {
                    if (*(v80 + 48))
                    {
                      xmlSchemaPContentErr(a1, 3055, children, v73, "The attribute 'type' and the <simpleType> child are mutually exclusive", 0);
                    }

                    else
                    {
                      *(v80 + 96) = xmlSchemaParseSimpleType(a1, a2, v73, 0);
                    }

                    v73 = v73->next;
                    if (!v73)
                    {
                      goto LABEL_158;
                    }
                  }

                  v75 = "(annotation?, simpleType?)";
LABEL_203:
                  v76 = a1;
                  parent = children;
                  v77 = v73;
LABEL_157:
                  xmlSchemaPContentErr(v76, 3033, parent, v77, 0, v75);
                  goto LABEL_158;
                }

                if (children->ns)
                {
                  if (xmlStrEqual(children->name, "attributeGroup") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                  {
                    xmlSchemaParseAttributeGroupDefinition(a1, a2, children);
                    goto LABEL_158;
                  }

                  if (children->ns)
                  {
                    if (xmlStrEqual(children->name, "group") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                    {
                      xmlSchemaParseModelGroupDefinition(a1, a2, children);
                      goto LABEL_158;
                    }

                    if (children->ns && xmlStrEqual(children->name, "notation") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                    {
                      v67 = xmlSchemaGetProp(a1, children, "name");
                      if (!v67)
                      {
                        xmlSchemaPErr(a1, children, 1723, "Notation has no name\n", 0, 0);
                        goto LABEL_158;
                      }

                      v68 = v67;
                      v69 = *(a1 + 200);
                      v70 = malloc_type_malloc(0x28uLL, 0x1070040B7007A56uLL);
                      if (!v70)
                      {
                        ++*(a1 + 36);
                        __xmlSimpleError(0x10u, 2, 0, 0, "add annotation");
                        goto LABEL_158;
                      }

                      v71 = v70;
                      *(v70 + 12) = 0;
                      *(v70 + 4) = 0;
                      *(v70 + 7) = 0;
                      *(v70 + 20) = 0;
                      *v70 = 18;
                      v70[1] = v68;
                      v70[4] = v69;
                      if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 64), 5, v70) & 0x80000000) != 0)
                      {
                        ++*(a1 + 36);
                        __xmlSimpleError(0x10u, 2, 0, 0, 0);
                        free(v71);
                        goto LABEL_158;
                      }

                      v72 = xmlSchemaGetPropNode(children, "id");
                      if (v72)
                      {
                        xmlSchemaPValAttrNodeID(a1, v72);
                      }

                      v73 = children->children;
                      if (!v73 || v73->ns && xmlStrEqual(v73->name, "annotation") && xmlStrEqual(v73->ns->href, "http://www.w3.org/2001/XMLSchema") && (v71[2] = xmlSchemaParseAnnotation(a1, v73, 1), (v73 = v73->next) == 0))
                      {
LABEL_158:
                        while (1)
                        {
                          children = children->next;
                          if (!children)
                          {
                            goto LABEL_209;
                          }

                          if (!children->ns || !xmlStrEqual(children->name, "annotation") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                          {
                            goto LABEL_114;
                          }

                          v78 = xmlSchemaParseAnnotation(a1, children, 1);
                          if (*(a2 + 40))
                          {
                            xmlSchemaFreeAnnot(v78);
                          }

                          else
                          {
                            *(a2 + 40) = v78;
                          }
                        }
                      }

                      v75 = "(annotation?)";
                      goto LABEL_203;
                    }
                  }
                }
              }
            }
          }
        }

        parent = children->parent;
        v75 = "((include | import | redefine | annotation)*, (((simpleType | complexType | group | attributeGroup) | element | attribute | notation), annotation*)*)";
        v76 = a1;
        v77 = children;
        goto LABEL_157;
      }

      if (children->ns)
      {
        if (xmlStrEqual(children->name, "annotation") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          v38 = xmlSchemaParseAnnotation(a1, children, 1);
          if (*(a2 + 40))
          {
            xmlSchemaFreeAnnot(v38);
          }

          else
          {
            *(a2 + 40) = v38;
          }

          goto LABEL_88;
        }

        if (children->ns)
        {
          if (xmlStrEqual(children->name, v37) && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            v86 = *(a1 + 36);
            *v90 = 0;
            str2 = 0;
            v89 = 0;
            v39 = children->properties;
            if (v39)
            {
              while (1)
              {
                v40 = *(v39 + 72);
                if (!v40)
                {
                  break;
                }

                if (xmlStrEqual(*(v40 + 16), "http://www.w3.org/2001/XMLSchema"))
                {
                  goto LABEL_59;
                }

LABEL_63:
                v39 = *(v39 + 48);
                if (!v39)
                {
                  goto LABEL_64;
                }
              }

              if (xmlStrEqual(*(v39 + 16), "id") || xmlStrEqual(*(v39 + 16), "namespace") || xmlStrEqual(*(v39 + 16), "schemaLocation"))
              {
                goto LABEL_63;
              }

LABEL_59:
              xmlSchemaPIllegalAttrErr(a1, v39);
              goto LABEL_63;
            }

LABEL_64:
            v41 = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
            v42 = xmlSchemaPValAttr(a1, children, "namespace", v41, &str2);
            v43 = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
            if (v42)
            {
              v44 = str2;
              goto LABEL_83;
            }

            if (xmlSchemaPValAttr(a1, children, "schemaLocation", v43, v90))
            {
              v43 = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
              v44 = *v90;
LABEL_83:
              xmlSchemaPSimpleTypeErr(a1, 3037, children, v43, 0, v44, 0, 0);
LABEL_84:
              v14 = *(a1 + 32);
LABEL_85:
              if (v14 == -1)
              {
                break;
              }

              goto LABEL_86;
            }

            v54 = children->children;
            if (v54)
            {
              if (!*(v54 + 72) || !xmlStrEqual(*(v54 + 16), "annotation") || !xmlStrEqual(*(*(v54 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v54 = *(v54 + 48)) != 0)
              {
                xmlSchemaPContentErr(a1, 3033, children, v54, 0, "(annotation?)");
              }
            }

            v55 = *(*(a1 + 48) + 32);
            v56 = *(v55 + 16);
            if (str2)
            {
              if (xmlStrEqual(*(v55 + 16), str2))
              {
                v57 = a1;
                v58 = 3064;
                v59 = children;
                v60 = "The value of the attribute 'namespace' must not match the target namespace '%s' of the importing schema";
LABEL_112:
                xmlSchemaPCustomErrExt(v57, v58, 0, v59, v60);
                goto LABEL_84;
              }
            }

            else if (!v56)
            {
              v57 = a1;
              v58 = 3065;
              v59 = children;
              v60 = "The attribute 'namespace' must be existent if the importing schema has no target namespace";
              goto LABEL_112;
            }

            if (*v90)
            {
              v61 = xmlSchemaBuildAbsoluteURI(*(a1 + 152), *v90, children);
              *v90 = v61;
            }

            else
            {
              v61 = 0;
            }

            v14 = xmlSchemaAddSchemaDoc(a1, 1, v61, 0, 0, 0, children, v56, str2, &v89);
            if (v14)
            {
              goto LABEL_85;
            }

            v62 = v89;
            if (!v89 && *v90)
            {
              xmlSchemaCustomWarning(a1, 3084, children, "Failed to locate a schema at location '%s'. Skipping the import", *v90, 0, 0);
              v62 = v89;
            }

            if (v62 && v62[4] && !*(v62 + 13))
            {
              v14 = xmlSchemaParseNewDoc(a1, a2, v62);
              goto LABEL_85;
            }

            v14 = 0;
LABEL_86:
            if (*(a1 + 196) || v86 != *(a1 + 36))
            {
LABEL_209:
              *(a1 + 160) = 0;
              if (v33 != *(a1 + 36))
              {
                v14 = *(a1 + 32);
              }

              break;
            }

            goto LABEL_88;
          }

          if (children->ns)
          {
            if (xmlStrEqual(children->name, v36) && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              v87 = v8;
              v45 = v9;
              v46 = v33;
              v47 = v37;
              v48 = *(a1 + 36);
              v14 = xmlSchemaParseIncludeOrRedefine(a1, a2, children, 2);
              if (v14 != -1)
              {
                if (!*(a1 + 196))
                {
                  v49 = v48 == *(a1 + 36);
                  v37 = v47;
                  v33 = v46;
                  goto LABEL_79;
                }

                LODWORD(v33) = v46;
                goto LABEL_208;
              }
            }

            else
            {
              if (!children->ns || !xmlStrEqual(children->name, "redefine") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                goto LABEL_88;
              }

              v87 = v8;
              v45 = v9;
              v50 = v36;
              v51 = v33;
              v52 = v37;
              v53 = *(a1 + 36);
              v14 = xmlSchemaParseIncludeOrRedefine(a1, a2, children, 3);
              if (v14 != -1)
              {
                if (!*(a1 + 196))
                {
                  v49 = v53 == *(a1 + 36);
                  v37 = v52;
                  v33 = v51;
                  v36 = v50;
LABEL_79:
                  v9 = v45;
                  v8 = v87;
                  if (!v49)
                  {
                    goto LABEL_209;
                  }

                  goto LABEL_88;
                }

                LODWORD(v33) = v51;
LABEL_208:
                v9 = v45;
                v8 = v87;
                goto LABEL_209;
              }
            }

            v9 = v45;
            v8 = v87;
            break;
          }
        }
      }

LABEL_88:
      children = children->next;
      if (!children)
      {
        goto LABEL_209;
      }
    }
  }

LABEL_33:
  *(*(a1 + 48) + 32) = v88;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  return v14;
}

uint64_t xmlSchemaFixupComponents(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = v2[5];
  if (!v3 || !*(v3 + 8))
  {
    return 0;
  }

  v145 = v2[4];
  if (!v145)
  {
    v2[4] = a2;
  }

  for (i = v2[7]; i; i = *i)
  {
    v7 = i[1];
    RedefCompInGraph = xmlSchemaFindRedefCompInGraph(i[6], *v7, i[4], i[5]);
    if (!RedefCompInGraph)
    {
      v147 = 0;
      if (i[2])
      {
        v13 = i[2];
      }

      else
      {
        v13 = v7;
      }

      ComponentNode = xmlSchemaGetComponentNode(v13);
      if (*v7 == 1)
      {
        if (*(v7 + 160) == 45)
        {
          v15 = "complex type definition";
        }

        else
        {
          v15 = "simple type definition";
        }
      }

      else
      {
        v15 = xmlSchemaItemTypeToStr(*v7);
      }

      v17 = xmlSchemaFormatQName(&v147, i[5], i[4]);
      xmlSchemaCustomErr4(a1, 3081, ComponentNode, 0, "The %s '%s' to be redefined could not be found in the redefined schema", v15, v17, 0, 0);
LABEL_30:
      if (v147)
      {
        free(v147);
        v147 = 0;
      }

      continue;
    }

    v9 = RedefCompInGraph;
    v10 = *v7;
    if ((*v7 - 4) < 2)
    {
      v16 = RedefCompInGraph[22];
      if ((v16 & 0x40000000) != 0)
      {
        goto LABEL_27;
      }

      RedefCompInGraph[22] = v16 | 0x40000000;
      *(v7 + 112) = RedefCompInGraph;
    }

    else
    {
      if (v10 != 16)
      {
        if (v10 != 17)
        {
          xmlSchemaInternalErr2(a1, "xmlSchemaResolveRedefReferences", "Unexpected redefined component type", 0);
          break;
        }

        v11 = RedefCompInGraph[14];
        if ((v11 & 2) != 0)
        {
LABEL_27:
          v147 = 0;
          v20 = i[2];
          if (!v20)
          {
            v20 = i[1];
          }

          v21 = xmlSchemaGetComponentNode(v20);
          ComponentDesignation = xmlSchemaGetComponentDesignation(&v147, v9);
          xmlSchemaCustomErr4(a1, 3081, v21, 0, "The referenced %s was already redefined. Multiple redefinition of the same component is not supported", ComponentDesignation, 0, 0, 0);
          goto LABEL_30;
        }

        RedefCompInGraph[14] = v11 | 2;
        v12 = i[2];
        if (v12)
        {
          *(v12 + 24) = RedefCompInGraph;
        }

LABEL_34:
        i[3] = RedefCompInGraph;
        continue;
      }

      v18 = RedefCompInGraph[18];
      if ((v18 & 8) != 0)
      {
        goto LABEL_27;
      }

      RedefCompInGraph[18] = v18 | 8;
      v19 = i[2];
      if (!v19)
      {
        goto LABEL_34;
      }

      *(v19 + 8) = RedefCompInGraph;
      i[3] = 0;
    }
  }

  xmlSchemaAddComponents(a1, a2);
  *(a1 + 160) = 0;
  v26 = v2[5];
  v27 = *(v26 + 8);
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = *v26;
    v144 = (a1 + 36);
    v146 = v2;
    while (1)
    {
      v30 = v29[v28];
      v31 = *v30;
      if (*v30 <= 14)
      {
        if ((v31 - 6) < 3)
        {
          v49 = *(v30 + 24);
          if (!v49)
          {
            goto LABEL_155;
          }

          while (2)
          {
            v50 = *(v49 + 24);
            if (v50 && *v50 == 2000)
            {
              *(v49 + 24) = 0;
              NamedComponent = xmlSchemaGetNamedComponent(*(a1 + 64), *(v50 + 16), *(v50 + 24), *(v50 + 32));
              if (NamedComponent)
              {
                if (*NamedComponent != 17)
                {
                  goto LABEL_79;
                }

                v52 = NamedComponent[3];
                if (!v52)
                {
                  goto LABEL_81;
                }

                if (*v52 == 8)
                {
                  v53 = xmlSchemaGetComponentNode(v49);
                  xmlSchemaCustomErr4(a1, 3091, v53, 0, "A model group definition is referenced, but it contains an 'all' model group, which cannot be contained by model groups", 0, 0, 0, 0);
                }

                else
                {
LABEL_79:
                  *(v49 + 24) = NamedComponent;
                }
              }

              else
              {
                v54 = xmlSchemaGetComponentNode(v49);
                xmlSchemaPResCompAttrErr(a1, 0, v54, "ref", *(v50 + 24), *(v50 + 32), *(v50 + 16), 0);
              }
            }

LABEL_81:
            v49 = *(v49 + 16);
            if (!v49)
            {
              goto LABEL_155;
            }

            continue;
          }
        }

        if ((v31 - 4) < 2)
        {
          if (*(v30 + 112))
          {
LABEL_54:
            if (v31 != 4 && (v31 != 1 || *(v30 + 160) == 45))
            {
              v38 = *(v30 + 56);
              if (!v38)
              {
                goto LABEL_166;
              }

              if (*v38 != 25)
              {
                goto LABEL_166;
              }

              v39 = *(v38 + 24);
              if (!v39 || *v39 != 2000)
              {
                goto LABEL_166;
              }

              *(v38 + 24) = 0;
              v40 = xmlSchemaGetNamedComponent(*(a1 + 64), *(v39 + 16), *(v39 + 24), *(v39 + 32));
              if (v40)
              {
                v41 = v40[3];
                if (v41)
                {
                  v42 = *(v30 + 56);
                  *(v42 + 24) = v41;
                  if (*v41 == 8 && *(v42 + 36) != 1)
                  {
                    v43 = xmlSchemaGetComponentNode(v42);
                    xmlSchemaCustomErr4(a1, 3091, v43, 0, "The particle's {max occurs} must be 1, since the reference resolves to an 'all' model group", 0, 0, 0, 0);
                  }

                  goto LABEL_166;
                }
              }

              else
              {
                v92 = xmlSchemaGetComponentNode(*(v30 + 56));
                xmlSchemaPResCompAttrErr(a1, 0, v92, "ref", *(v39 + 24), *(v39 + 32), *(v39 + 16), 0);
              }

              *(v30 + 56) = 0;
              goto LABEL_166;
            }

            v68 = *(v30 + 88);
            if ((v68 & 0x80) != 0)
            {
              v77 = *(v30 + 168);
              if (v77)
              {
                v78 = 0;
                do
                {
                  v79 = v77[1];
                  v81 = *(v79 + 24);
                  v80 = *(v79 + 32);
                  Type = xmlSchemaGetType(*(a1 + 64), v81, v80);
                  if (Type && (*Type == 4 || *Type == 1 && Type[40] != 45))
                  {
                    v77[1] = Type;
                    v83 = *v77;
                    v78 = v77;
                  }

                  else
                  {
                    xmlSchemaPResCompAttrErr(a1, v30, *(v30 + 72), "memberTypes", v81, v80, 4, 0);
                    v83 = *v77;
                    if (v78)
                    {
                      v84 = v78;
                    }

                    else
                    {
                      v84 = (v30 + 168);
                    }

                    *v84 = v83;
                    free(v77);
                  }

                  v77 = v83;
                }

                while (v83);
              }

              else
              {
                v78 = 0;
              }

              v88 = *(v30 + 56);
              if (v88)
              {
                while (1)
                {
                  v89 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
                  if (!v89)
                  {
                    break;
                  }

                  *v89 = 0;
                  v89[1] = v88;
                  if (v78)
                  {
                    v90 = v78;
                  }

                  else
                  {
                    v90 = (v30 + 168);
                  }

                  *v90 = v89;
                  v88 = *(v88 + 8);
                  v78 = v89;
                  if (!v88)
                  {
                    goto LABEL_166;
                  }
                }

                ++*v144;
                __xmlSimpleError(0x10u, 2, 0, 0, "allocating a type link");
              }
            }

            else if ((v68 & 0x40) != 0 && !*(v30 + 56))
            {
              v69 = *(v30 + 96);
              if (v69)
              {
                v70 = xmlSchemaGetType(*(a1 + 64), v69, *(v30 + 104));
                *(v30 + 56) = v70;
                if (!v70 || *v70 != 4 && (*v70 != 1 || v70[40] == 45))
                {
                  *(v30 + 56) = 0;
                  v71 = *(v30 + 72);
                  v72 = *(v30 + 96);
                  v73 = *(v30 + 104);
                  v74 = a1;
                  v75 = v30;
                  v76 = "itemType";
                  goto LABEL_134;
                }
              }
            }
          }

          else
          {
            v37 = xmlSchemaGetType(*(a1 + 64), *(v30 + 96), *(v30 + 104));
            *(v30 + 112) = v37;
            if (v37)
            {
              v31 = *v30;
              goto LABEL_54;
            }

            v71 = *(v30 + 72);
            v72 = *(v30 + 96);
            v73 = *(v30 + 104);
            v74 = a1;
            v75 = v30;
            v76 = "base";
LABEL_134:
            xmlSchemaPResCompAttrErr(v74, v75, v71, v76, v72, v73, 4, 0);
          }

LABEL_166:
          v2 = v146;
          if (*(a1 + 32) == 3069)
          {
            goto LABEL_167;
          }

          goto LABEL_156;
        }

        if (v31 == 14)
        {
          xmlSchemaResolveElementReferences(v29[v28], a1);
          goto LABEL_155;
        }
      }

      else if (v31 > 25)
      {
        switch(v31)
        {
          case 26:
            v60 = *(v30 + 24);
            if (!v60)
            {
              goto LABEL_155;
            }

            if (*v60 != 2000)
            {
              goto LABEL_155;
            }

            AttributeDecl = xmlSchemaGetAttributeDecl(*(a1 + 64), *(v60 + 24), *(v60 + 32));
            *(v30 + 24) = AttributeDecl;
            if (AttributeDecl)
            {
              goto LABEL_155;
            }

            v44 = *(v30 + 40);
            v45 = *(v60 + 24);
            v46 = *(v60 + 32);
            v47 = a1;
            v48 = v30;
            goto LABEL_97;
          case 2000:
            if (*(v30 + 16) != 16 || *(v30 + 8))
            {
              goto LABEL_155;
            }

            v62 = *(a1 + 64);
            if (v62)
            {
              v63 = *(v30 + 24);
              if (v63)
              {
                if ((v64 = *(v30 + 32), xmlStrEqual(v64, *(v62 + 8))) && (v65 = xmlHashLookup(*(v62 + 72), v63)) != 0 || xmlHashSize(*(v62 + 96)) >= 2 && (v64 ? (v66 = v64) : (v66 = "##"), (v67 = xmlHashLookup(*(v62 + 96), v66)) != 0 && (v65 = xmlHashLookup(*(v67[10] + 72), v63)) != 0))
                {
                  *(v30 + 8) = v65;
                  goto LABEL_155;
                }
              }
            }

            v46 = *(v30 + 32);
            v44 = *(v30 + 40);
            v45 = *(v30 + 24);
            v59 = *(v30 + 16);
            v47 = a1;
            v48 = 0;
            v58 = "ref";
            goto LABEL_154;
          case 2001:
            if (xmlSchemaGetAttributeDecl(*(a1 + 64), *(v30 + 16), *(v30 + 24)))
            {
              goto LABEL_155;
            }

            v44 = *(v30 + 8);
            v45 = *(v30 + 16);
            v46 = *(v30 + 24);
            v47 = a1;
            v48 = 0;
LABEL_97:
            v58 = "ref";
            v59 = 15;
            goto LABEL_154;
        }
      }

      else
      {
        if ((v31 - 22) < 2)
        {
          goto LABEL_155;
        }

        if (v31 == 15)
        {
          v55 = *(v30 + 120);
          if ((v55 & 0x100) == 0)
          {
            *(v30 + 120) = v55 | 0x100;
            if (!*(v30 + 96))
            {
              v56 = *(v30 + 48);
              if (v56)
              {
                BuiltInType = xmlSchemaGetType(*(a1 + 64), v56, *(v30 + 56));
                if (!BuiltInType || *BuiltInType != 4 && (*BuiltInType != 1 || BuiltInType[40] == 45))
                {
                  v44 = *(v30 + 104);
                  v45 = *(v30 + 48);
                  v46 = *(v30 + 56);
                  v47 = a1;
                  v48 = v30;
                  v58 = "type";
                  v59 = 4;
                  goto LABEL_154;
                }
              }

              else
              {
                BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYSIMPLETYPE);
              }

              *(v30 + 96) = BuiltInType;
            }
          }

LABEL_155:
          if (*(a1 + 32) == 3069)
          {
            goto LABEL_167;
          }

          goto LABEL_156;
        }

        if (v31 == 24)
        {
          v32 = *(v30 + 72);
          v33 = *(v32 + 24);
          if (!v33)
          {
            goto LABEL_155;
          }

          v34 = *(a1 + 64);
          if (!v34)
          {
            goto LABEL_143;
          }

          v35 = *(v32 + 32);
          if (xmlStrEqual(v35, *(v34 + 8)))
          {
            v36 = xmlHashLookup(*(v34 + 144), v33);
            if (v36)
            {
              *(*(v30 + 72) + 8) = v36;
              goto LABEL_141;
            }
          }

          if (xmlHashSize(*(v34 + 96)) >= 2 && (v35 ? (v85 = v35) : (v85 = "##"), (v86 = xmlHashLookup(*(v34 + 96), v85)) != 0))
          {
            v36 = xmlHashLookup(*(v86[10] + 144), v33);
            v87 = *(v30 + 72);
            v87[1] = v36;
            if (v36)
            {
LABEL_141:
              if (*v36 == 24)
              {
                xmlSchemaCustomErr4(a1, 3080, 0, v30, "The keyref references a keyref", 0, 0, 0, 0);
                *(*(v30 + 72) + 8) = 0;
              }

              else if (*(v30 + 64) != *(v36 + 16))
              {
                v147 = 0;
                v91 = xmlSchemaFormatQName(&v147, *(v36 + 5), *(v36 + 4));
                xmlSchemaCustomErr4(a1, 3080, 0, v30, "The cardinality of the keyref differs from the cardinality of the referenced key/unique '%s'", v91, 0, 0, 0);
                if (v147)
                {
                  free(v147);
                }
              }

              goto LABEL_155;
            }
          }

          else
          {
LABEL_143:
            v87 = *(v30 + 72);
            v87[1] = 0;
          }

          v44 = *(v30 + 24);
          v45 = v87[3];
          v46 = v87[4];
          v47 = a1;
          v48 = v30;
          v58 = "refer";
          v59 = 23;
LABEL_154:
          xmlSchemaPResCompAttrErr(v47, v48, v44, v58, v45, v46, v59, 0);
          goto LABEL_155;
        }
      }

LABEL_156:
      if (++v28 == v27)
      {
        v103 = (a1 + 36);
        if (*v144)
        {
          goto LABEL_191;
        }

        v108 = v27;
        v109 = v29;
        while (1)
        {
          v110 = *v109;
          v111 = **v109;
          if ((v111 - 4) < 2)
          {
            v24 = *(v110 + 14);
            if (v24)
            {
              xmlSchemaCheckTypeDefCircularInternal(a1, *v109, v24);
            }

            goto LABEL_216;
          }

          if (v111 == 16)
          {
            break;
          }

          if (v111 == 17)
          {
            v112 = *(v110 + 3);
            if (v112)
            {
              CircModelGrDefRef = xmlSchemaGetCircModelGrDefRef(*v109, *(v112 + 24));
              if (CircModelGrDefRef)
              {
                v114 = CircModelGrDefRef;
                v147 = 0;
                v115 = xmlSchemaGetComponentNode(CircModelGrDefRef);
                xmlSchemaFormatQName(&v147, *(v110 + 5), *(v110 + 4));
                xmlSchemaPCustomErrExt(a1, 3075, 0, v115, "Circular reference to the model group definition '%s' defined");
                if (v147)
                {
                  free(v147);
                }

                *(v114 + 3) = 0;
                goto LABEL_215;
              }
            }

            goto LABEL_216;
          }

LABEL_218:
          ++v109;
          if (!--v108)
          {
            for (j = 0; j != v27; ++j)
            {
              v121 = v29[j];
              if ((*v121 & 0xFFFFFFFE) == 6)
              {
                for (k = *(v121 + 3); k; k = *(k + 16))
                {
                  v123 = *(k + 24);
                  if (v123 && *v123 == 17)
                  {
                    *(k + 24) = *(v123 + 24);
                  }
                }
              }
            }

            v124 = v27;
            v125 = v29;
            while (1)
            {
              v126 = *v125;
              if (**v125 == 16 && (v126[18] & 0x11) == 0x10)
              {
                xmlSchemaAttributeGroupExpandRefs(a1, v126);
                if (*(a1 + 32) == 3069)
                {
                  break;
                }
              }

              ++v125;
              if (!--v124)
              {
                if (*v144)
                {
                  goto LABEL_191;
                }

                v127 = v27;
                v128 = v29;
                while (1)
                {
                  v129 = *v128;
                  if (**v128 == 4 && (*(v129 + 91) & 0x20) == 0)
                  {
                    xmlSchemaFixupSimpleTypeStageOne(a1, v129);
                    if (*(a1 + 32) == 3069)
                    {
                      goto LABEL_167;
                    }
                  }

                  ++v128;
                  if (!--v127)
                  {
                    if (*v144)
                    {
                      goto LABEL_191;
                    }

                    v130 = v27;
                    v131 = v29;
                    while (1)
                    {
                      v132 = *v131;
                      if (**v131 == 4)
                      {
                        v24 = *(v132 + 21);
                        if (v24)
                        {
                          if ((v132[22] & 0x80) != 0)
                          {
                            xmlSchemaCheckUnionTypeDefCircularRecur(a1, v132, v24);
                          }

                          if (*(a1 + 32) == 3069)
                          {
                            goto LABEL_167;
                          }
                        }
                      }

                      ++v131;
                      if (!--v130)
                      {
                        if (*v144)
                        {
                          goto LABEL_191;
                        }

                        v133 = v27;
                        v134 = v29;
                        while (1)
                        {
                          v135 = *v134;
                          if (**v134 == 4 && (*(v135 + 90) & 0x40) == 0)
                          {
                            xmlSchemaFixupSimpleTypeStageTwo(a1, v135, v24, v25);
                            if (*(a1 + 32) == 3069)
                            {
                              goto LABEL_167;
                            }
                          }

                          ++v134;
                          if (!--v133)
                          {
                            if (*v144)
                            {
                              goto LABEL_191;
                            }

                            v136 = v27;
                            v137 = v29;
                            while (1)
                            {
                              if (**v137 == 15)
                              {
                                xmlSchemaCheckAttrPropsCorrect(a1, *v137);
                                if (*(a1 + 32) == 3069)
                                {
                                  goto LABEL_167;
                                }
                              }

                              ++v137;
                              if (!--v136)
                              {
                                if (*v144)
                                {
                                  goto LABEL_191;
                                }

                                v138 = v27;
                                v139 = v29;
                                while (1)
                                {
                                  v140 = *v139;
                                  if (**v139 == 26)
                                  {
                                    if (*(v140 + 7))
                                    {
                                      xmlSchemaCheckAttrUsePropsCorrect(a1, v140);
                                      if (*(a1 + 32) == 3069)
                                      {
                                        break;
                                      }
                                    }
                                  }

                                  ++v139;
                                  if (!--v138)
                                  {
                                    v2 = v146;
                                    if (*v144)
                                    {
                                      goto LABEL_191;
                                    }

                                    v141 = v27;
                                    while (1)
                                    {
                                      v142 = *v29;
                                      if (**v29 == 16)
                                      {
                                        v143 = *(v142 + 14);
                                        if (v143)
                                        {
                                          if (*(v143 + 8) >= 2)
                                          {
                                            xmlSchemaCheckAGPropsCorrect(a1, v142);
                                            if (*(a1 + 32) == 3069)
                                            {
                                              goto LABEL_272;
                                            }
                                          }
                                        }
                                      }

                                      ++v29;
                                      if (!--v141)
                                      {
                                        v93 = (a1 + 36);
                                        v2 = v146;
                                        if (*v144)
                                        {
                                          goto LABEL_191;
                                        }

                                        goto LABEL_169;
                                      }
                                    }
                                  }
                                }

LABEL_272:
                                v23 = 0xFFFFFFFFLL;
                                v2 = v146;
                                goto LABEL_192;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_167:
            v23 = 0xFFFFFFFFLL;
            goto LABEL_192;
          }
        }

        v116 = *(v110 + 14);
        if (v116)
        {
          if ((v110[18] & 0x10) != 0)
          {
            v117 = xmlSchemaCheckAttrGroupCircularRecur(*v109, v116);
            if (v117)
            {
              v118 = v117;
              v147 = 0;
              v119 = xmlSchemaGetComponentNode(v117);
              xmlSchemaGetComponentQName(&v147, v110);
              xmlSchemaPCustomErrExt(a1, 3073, 0, v119, "Circular reference to the attribute group '%s' defined");
              if (v147)
              {
                free(v147);
              }

              *(v118 + 1) = 0;
LABEL_215:
              v103 = (a1 + 36);
            }
          }
        }

LABEL_216:
        if (*(a1 + 32) == 3069)
        {
          goto LABEL_167;
        }

        if (*v103)
        {
          goto LABEL_191;
        }

        goto LABEL_218;
      }
    }
  }

  v93 = (a1 + 36);
  if (*(a1 + 36))
  {
LABEL_191:
    v23 = *(a1 + 32);
    goto LABEL_192;
  }

LABEL_169:
  if (*(*(a1 + 48) + 56))
  {
    xmlSchemaCheckSRCRedefineSecond(a1);
    if (*(a1 + 36))
    {
      goto LABEL_191;
    }
  }

  if (v27 >= 1)
  {
    v94 = 0;
    v95 = 8 * v27;
    while (1)
    {
      v96 = *(*v2[5] + v94);
      if (*v96 == 5 && (*(v96 + 90) & 0x40) == 0)
      {
        xmlSchemaFixupComplexType(a1, v96);
        if (*(a1 + 32) == 3069)
        {
          goto LABEL_167;
        }
      }

      v94 += 8;
      if (v95 == v94)
      {
        if (*v93)
        {
          goto LABEL_191;
        }

        break;
      }
    }
  }

  v97 = v2[5];
  v98 = *(v97 + 8);
  if (v98 >= 1)
  {
    v99 = *v97;
    v100 = *(v97 + 8);
    v101 = *v97;
    while (1)
    {
      v102 = *v101;
      if (**v101 == 14 && (*(v102 + 90) & 4) == 0)
      {
        xmlSchemaCheckElementDeclComponent(v102, a1);
        if (*(a1 + 32) == 3069)
        {
          goto LABEL_167;
        }
      }

      ++v101;
      if (!--v100)
      {
        if (*v93)
        {
          goto LABEL_191;
        }

        do
        {
          if (**v99 == 5)
          {
            xmlSchemaBuildContentModel(*v99, a1);
          }

          ++v99;
          --v98;
        }

        while (v98);
        if (*v93)
        {
          goto LABEL_191;
        }

        break;
      }
    }
  }

  v23 = 0;
LABEL_192:
  v2[4] = v145;
  *(v2[5] + 8) = 0;
  v104 = v2[6];
  if (v104)
  {
    xmlHashFree(v104, xmlSchemaSubstGroupFreeEntry);
    v2[6] = 0;
  }

  v105 = v2[7];
  if (v105)
  {
    do
    {
      v106 = *v105;
      free(v105);
      v105 = v106;
    }

    while (v106);
    v2[7] = 0;
  }

  return v23;
}

void xmlSchemaSetParserErrors(xmlSchemaParserCtxtPtr ctxt, xmlSchemaValidityErrorFunc err, xmlSchemaValidityWarningFunc warn, void *ctx)
{
  do
  {
    if (!ctxt)
    {
      break;
    }

    *(ctxt + 2) = err;
    *(ctxt + 3) = warn;
    *(ctxt + 1) = ctx;
    v4 = *(ctxt + 22);
    if (!v4)
    {
      break;
    }

    *(v4 + 16) = err;
    *(v4 + 24) = warn;
    *(v4 + 8) = ctx;
    ctxt = *(v4 + 160);
  }

  while (ctxt);
}

void xmlSchemaSetValidErrors(xmlSchemaValidCtxtPtr ctxt, xmlSchemaValidityErrorFunc err, xmlSchemaValidityWarningFunc warn, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 2) = err;
    *(ctxt + 3) = warn;
    *(ctxt + 1) = ctx;
    for (i = *(ctxt + 20); i; i = v5[20])
    {
      i[2] = err;
      i[3] = warn;
      i[1] = ctx;
      v5 = i[22];
      if (!v5)
      {
        break;
      }

      v5[2] = err;
      v5[3] = warn;
      v5[1] = ctx;
    }
  }
}

void xmlSchemaSetParserStructuredErrors(xmlSchemaParserCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  do
  {
    if (!ctxt)
    {
      break;
    }

    *(ctxt + 5) = serror;
    *(ctxt + 1) = ctx;
    v3 = *(ctxt + 22);
    if (!v3)
    {
      break;
    }

    *(v3 + 24) = 0;
    *(v3 + 32) = serror;
    *(v3 + 8) = ctx;
    *(v3 + 16) = 0;
    ctxt = *(v3 + 160);
  }

  while (ctxt);
}

void xmlSchemaSetValidStructuredErrors(xmlSchemaValidCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 3) = 0;
    *(ctxt + 4) = serror;
    *(ctxt + 1) = ctx;
    *(ctxt + 2) = 0;
    for (i = *(ctxt + 20); i; i = v4[20])
    {
      i[5] = serror;
      i[1] = ctx;
      v4 = i[22];
      if (!v4)
      {
        break;
      }

      v4[3] = 0;
      v4[4] = serror;
      v4[1] = ctx;
      v4[2] = 0;
    }
  }
}

int xmlSchemaGetParserErrors(xmlSchemaParserCtxtPtr ctxt, xmlSchemaValidityErrorFunc *err, xmlSchemaValidityWarningFunc *warn, void **ctx)
{
  if (!ctxt)
  {
    return -1;
  }

  if (err)
  {
    *err = *(ctxt + 2);
  }

  if (warn)
  {
    *warn = *(ctxt + 3);
  }

  v4 = 0;
  if (ctx)
  {
    *ctx = *(ctxt + 1);
  }

  return v4;
}

xmlSchemaValidCtxtPtr xmlSchemaNewValidCtxt(xmlSchemaPtr schema)
{
  v2 = malloc_type_malloc(0x160uLL, 0x10B00404E3B849AuLL);
  v3 = v2;
  if (v2)
  {
    v2[21] = 0u;
    *(v2 + 244) = 0u;
    *(v2 + 228) = 0u;
    *(v2 + 212) = 0u;
    *(v2 + 196) = 0u;
    *(v2 + 180) = 0u;
    *(v2 + 164) = 0u;
    *(v2 + 148) = 0u;
    *(v2 + 132) = 0u;
    *(v2 + 116) = 0u;
    *(v2 + 100) = 0u;
    *(v2 + 84) = 0u;
    *(v2 + 68) = 0u;
    *(v2 + 52) = 0u;
    *(v2 + 36) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 308) = 0u;
    *(v2 + 324) = 0u;
    *(v2 + 276) = 0u;
    *(v2 + 292) = 0u;
    *(v2 + 260) = 0u;
    *v2 = 2;
    v4 = xmlDictCreate();
    *(v3 + 34) = v4;
    if (v4 && (v5 = xmlSchemaItemListCreate(), (*(v3 + 39) = v5) != 0))
    {
      *(v3 + 5) = schema;
    }

    else
    {
      xmlSchemaFreeValidCtxt(v3);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(0x11u, 2, 0, 0, "allocating validation context");
  }

  return v3;
}

void *xmlSchemaItemListCreate()
{
  v0 = malloc_type_malloc(0x10uLL, 0x1080040FC6463CFuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 0;
    v0[1] = 0;
  }

  else
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating an item list structure");
  }

  return v1;
}

void xmlSchemaValidateSetFilename(xmlSchemaValidCtxtPtr vctxt, const char *filename)
{
  if (vctxt)
  {
    v4 = *(vctxt + 12);
    if (v4)
    {
      free(v4);
    }

    if (filename)
    {
      v5 = xmlStrdup(filename);
    }

    else
    {
      v5 = 0;
    }

    *(vctxt + 12) = v5;
  }
}

void xmlSchemaIDCFreeKey(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    xmlSchemaFreeValue(v2);
  }

  free(a1);
}

void xmlSchemaFreeIDCStateObjList(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = v1[1];
      v3 = v1[3];
      if (v3)
      {
        free(v3);
      }

      v4 = v1[7];
      if (v4)
      {
        xmlFreeStreamCtxt(v4);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void xmlSchemaClearAttrInfos(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    if (v1 >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *(*(a1 + 288) + 8 * v3);
        if (*(v4 + 64))
        {
          v5 = *(v4 + 24);
          if (v5)
          {
            free(v5);
          }

          v6 = *(v4 + 32);
          if (v6)
          {
            free(v6);
          }
        }

        if ((*(v4 + 64) & 2) != 0)
        {
          v7 = *(v4 + 40);
          if (v7)
          {
            free(v7);
          }
        }

        v8 = *(v4 + 48);
        if (v8)
        {
          xmlSchemaFreeValue(v8);
        }

        *(v4 + 80) = 0u;
        *(v4 + 96) = 0u;
        *(v4 + 48) = 0u;
        *(v4 + 64) = 0u;
        *(v4 + 16) = 0u;
        *(v4 + 32) = 0u;
        *v4 = 0u;
        ++v3;
      }

      while (v3 < *(a1 + 296));
    }

    *(a1 + 296) = 0;
  }
}

void xmlSchemaClearElemInfo(uint64_t a1, uint64_t a2)
{
  *(a2 + 136) = 0;
  if (*(a2 + 64))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      free(v4);
      *(a2 + 24) = 0;
    }

    v5 = *(a2 + 32);
    if (v5)
    {
      free(v5);
      *(a2 + 32) = 0;
    }
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  if ((*(a2 + 64) & 2) != 0)
  {
    v6 = *(a2 + 40);
    if (!v6)
    {
      goto LABEL_11;
    }

    free(v6);
  }

  *(a2 + 40) = 0;
LABEL_11:
  v7 = *(a2 + 48);
  if (v7)
  {
    xmlSchemaFreeValue(v7);
    *(a2 + 48) = 0;
  }

  v8 = *(a2 + 104);
  if (v8)
  {
    do
    {
      v9 = *(v8 + 8);
      if (*(v8 + 40))
      {
        v10 = *(v8 + 48);
        if (v10 >= 1)
        {
          for (i = 0; i < v10; ++i)
          {
            v12 = *(*(v8 + 40) + 8 * i);
            if (v12)
            {
              free(v12);
              *(*(v8 + 40) + 8 * i) = 0;
              v10 = *(v8 + 48);
            }
          }
        }
      }

      v13 = *(v8 + 56);
      if (v13)
      {
        if (*(v8 + 32) == 24 && *(v13 + 8) >= 1)
        {
          v14 = 0;
          do
          {
            v15 = *(*v13 + 8 * v14);
            free(v15[1]);
            free(v15);
            ++v14;
            v13 = *(v8 + 56);
          }

          while (v14 < *(v13 + 8));
        }

        xmlSchemaItemListFree(v13);
        *(v8 + 56) = 0;
      }

      v16 = *(v8 + 64);
      if (v16)
      {
        xmlHashFree(v16, xmlFreeIDCHashEntry);
        *(v8 + 64) = 0;
      }

      *(v8 + 8) = 0;
      v17 = *(a1 + 224);
      if (v17)
      {
        *(v8 + 16) = v17;
      }

      *(a1 + 224) = v8;
      v8 = v9;
    }

    while (v9);
    *(a2 + 104) = 0;
  }

  v18 = *(a2 + 96);
  if (v18)
  {
    do
    {
      v19 = *v18;
      xmlSchemaIDCFreeBinding(v18);
      v18 = v19;
    }

    while (v19);
    *(a2 + 96) = 0;
  }

  v20 = *(a2 + 112);
  if (v20)
  {
    xmlRegFreeExecCtxt(v20);
    *(a2 + 112) = 0;
  }

  v23 = *(a2 + 120);
  v22 = (a2 + 120);
  v21 = v23;
  if (v23)
  {
    free(v21);
    *v22 = 0;
    v22[1] = 0;
  }
}

int xmlSchemaIsValid(xmlSchemaValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    return *(ctxt + 26) == 0;
  }

  else
  {
    return -1;
  }
}

int xmlSchemaGetValidErrors(xmlSchemaValidCtxtPtr ctxt, xmlSchemaValidityErrorFunc *err, xmlSchemaValidityWarningFunc *warn, void **ctx)
{
  if (!ctxt)
  {
    return -1;
  }

  if (err)
  {
    *err = *(ctxt + 2);
  }

  if (warn)
  {
    *warn = *(ctxt + 3);
  }

  v4 = 0;
  if (ctx)
  {
    *ctx = *(ctxt + 1);
  }

  return v4;
}

int xmlSchemaSetValidOptions(xmlSchemaValidCtxtPtr ctxt, int options)
{
  if (ctxt)
  {
    v2 = 1;
    while (((options >> v2) & 1) == 0)
    {
      if (++v2 == 32)
      {
        v3 = 0;
        *(ctxt + 37) = options;
        return v3;
      }
    }
  }

  return -1;
}

int xmlSchemaValidCtxtGetOptions(xmlSchemaValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    return *(ctxt + 37);
  }

  else
  {
    return -1;
  }
}

int xmlSchemaValidateOneElement(xmlSchemaValidCtxtPtr ctxt, xmlNodePtr elem)
{
  if (!ctxt || !elem || elem->type != XML_ELEMENT_NODE || !*(ctxt + 5))
  {
    return -1;
  }

  *(ctxt + 6) = elem->doc;
  *(ctxt + 14) = elem;
  *(ctxt + 19) = elem;
  return xmlSchemaVStart(ctxt);
}

uint64_t xmlSchemaVStart(uint64_t a1)
{
  if ((xmlSchemaPreRun(a1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 48);
  if (!v2)
  {
    if (*(a1 + 280))
    {
      xmlSchemaPostRun(a1);
    }

    else
    {
      if (!*(a1 + 72) || (v19 = *(a1 + 80)) == 0)
      {
        v20 = "xmlSchemaVStart";
        v21 = "no instance to validate";
        goto LABEL_53;
      }

      v17 = xmlParseDocument(v19);
LABEL_46:
      v18 = v17;
      xmlSchemaPostRun(a1);
      if (v18)
      {
        return v18;
      }
    }

    return *(a1 + 104);
  }

  RootElement = *(a1 + 152);
  if (!RootElement)
  {
    RootElement = xmlDocGetRootElement(v2);
    if (!RootElement)
    {
      v18 = 1;
      xmlSchemaCustomErr4(a1, 1, 0, 0, "The document has no document element", 0, 0, 0, 0);
      goto LABEL_55;
    }
  }

  v4 = 0;
  *(a1 + 172) = -1;
  *(a1 + 152) = RootElement;
  children = RootElement;
  while (1)
  {
    while (1)
    {
      v6 = children;
      v7 = *(a1 + 304);
      if (v7 != -1 && *(a1 + 172) >= v7)
      {
        goto LABEL_36;
      }

      type = v6->type;
      if ((type - 3) >= 2)
      {
        break;
      }

      if (v4)
      {
        v9 = *(v4 + 64);
        if ((v9 & 0x20) != 0)
        {
          *(v4 + 64) = v9 & 0xFFFFFFDF;
        }
      }

      if ((xmlSchemaVPushText(a1, type, v6->content, -1, 1) & 0x80000000) != 0)
      {
        v20 = "xmlSchemaVDocWalk";
        v21 = "calling xmlSchemaVPushText()";
        goto LABEL_53;
      }

LABEL_16:
      children = v6->children;
      if (!children)
      {
        goto LABEL_32;
      }
    }

    if (type != 1)
    {
      break;
    }

    ++*(a1 + 172);
    if (xmlSchemaValidatorPushElem(a1) == -1)
    {
      goto LABEL_54;
    }

    v4 = *(a1 + 192);
    *(v4 + 8) = v6;
    *(v4 + 16) = v6->line;
    *(v4 + 24) = v6->name;
    ns = v6->ns;
    if (ns)
    {
      *(v4 + 32) = ns->href;
    }

    *(v4 + 64) |= 0x20u;
    *(a1 + 296) = 0;
    for (i = v6->properties; i; i = i->next)
    {
      v12 = i->ns;
      if (v12)
      {
        href = v12->href;
      }

      else
      {
        href = 0;
      }

      String = xmlNodeListGetString(i->doc, i->children, 1);
      if (xmlSchemaValidatorPushAttribute(a1, i, *(v4 + 16), i->name, href, String) == -1)
      {
        xmlSchemaInternalErr2(a1, "xmlSchemaDocWalk", "calling xmlSchemaValidatorPushAttribute()", 0);
        free(String);
        goto LABEL_54;
      }
    }

    v15 = xmlSchemaValidateElem(a1);
    if (v15)
    {
      if (v15 != -1)
      {
        goto LABEL_32;
      }

      v20 = "xmlSchemaDocWalk";
      v21 = "calling xmlSchemaValidateElem()";
      goto LABEL_53;
    }

    v16 = *(a1 + 304);
    if (v16 == -1 || *(a1 + 172) < v16)
    {
      goto LABEL_16;
    }

    while (1)
    {
LABEL_32:
      if (v6->type == XML_ELEMENT_NODE)
      {
        if (v6 != *(*(a1 + 192) + 8))
        {
          v20 = "xmlSchemaVDocWalk";
          v21 = "element position mismatch";
          goto LABEL_53;
        }

        v17 = xmlSchemaValidatorPopElem(a1);
        if ((v17 & 0x80000000) != 0)
        {
          v20 = "xmlSchemaVDocWalk";
          v21 = "calling xmlSchemaValidatorPopElem()";
          goto LABEL_53;
        }

        if (v6 == RootElement)
        {
          goto LABEL_46;
        }
      }

LABEL_36:
      children = v6->next;
      if (children)
      {
        break;
      }

      v6 = v6->parent;
    }
  }

  if ((type - 5) >= 2)
  {
    goto LABEL_32;
  }

  v20 = "xmlSchemaVDocWalk";
  v21 = "there is at least one entity reference in the node-tree currently being validated. Processing of entities with this XML Schema processor is not supported (yet). Please substitute entities before validation.";
LABEL_53:
  xmlSchemaInternalErr2(a1, v20, v21, 0);
LABEL_54:
  v18 = 0xFFFFFFFFLL;
LABEL_55:
  xmlSchemaPostRun(a1);
  return v18;
}

int xmlSchemaValidateDoc(xmlSchemaValidCtxtPtr ctxt, xmlDocPtr instance)
{
  result = -1;
  if (ctxt && instance)
  {
    *(ctxt + 6) = instance;
    RootElement = xmlDocGetRootElement(instance);
    *(ctxt + 14) = RootElement;
    if (RootElement)
    {
      *(ctxt + 19) = RootElement;

      return xmlSchemaVStart(ctxt);
    }

    else
    {
      xmlSchemaCustomErr4(ctxt, 1872, instance, 0, "The document has no document element", 0, 0, 0, 0);
      return *(ctxt + 26);
    }
  }

  return result;
}

xmlSchemaSAXPlugPtr xmlSchemaSAXPlug(xmlSchemaValidCtxtPtr ctxt, xmlSAXHandlerPtr *sax, void **user_data)
{
  v3 = 0;
  if (ctxt && sax && user_data)
  {
    v7 = *sax;
    if (!*sax || v7->initialized == -554844497 && (v7->startElementNs || v7->endElementNs || !v7->startElement && !v7->endElement))
    {
      v8 = malloc_type_malloc(0x130uLL, 0x10A004041F3505BuLL);
      v3 = v8;
      if (v8)
      {
        *(v8 + 73) = 0;
        *(v8 + 244) = 0u;
        *(v8 + 228) = 0u;
        *(v8 + 212) = 0u;
        *(v8 + 196) = 0u;
        *(v8 + 180) = 0u;
        *(v8 + 164) = 0u;
        *(v8 + 148) = 0u;
        *(v8 + 132) = 0u;
        *(v8 + 116) = 0u;
        *(v8 + 100) = 0u;
        *(v8 + 84) = 0u;
        *(v8 + 68) = 0u;
        *(v8 + 52) = 0u;
        *(v8 + 36) = 0u;
        *(v8 + 20) = 0u;
        *(v8 + 4) = 0u;
        *(v8 + 260) = 0u;
        *(v8 + 276) = 0u;
        *v8 = -599541215;
        v9 = (v8 + 40);
        *(v8 + 64) = -554844497;
        *(v8 + 37) = ctxt;
        *(v8 + 1) = sax;
        *(v8 + 2) = v7;
        if (v7)
        {
          if (v7->internalSubset)
          {
            v9->internalSubset = internalSubsetSplit;
          }

          if (v7->isStandalone)
          {
            *(v8 + 6) = isStandaloneSplit;
          }

          if (v7->hasInternalSubset)
          {
            *(v8 + 7) = hasInternalSubsetSplit;
          }

          if (v7->hasExternalSubset)
          {
            *(v8 + 8) = hasExternalSubsetSplit;
          }

          if (v7->resolveEntity)
          {
            *(v8 + 9) = resolveEntitySplit;
          }

          if (v7->getEntity)
          {
            *(v8 + 10) = getEntitySplit;
          }

          if (v7->entityDecl)
          {
            *(v8 + 11) = entityDeclSplit;
          }

          if (v7->notationDecl)
          {
            *(v8 + 12) = notationDeclSplit;
          }

          if (v7->attributeDecl)
          {
            *(v8 + 13) = attributeDeclSplit;
          }

          if (v7->elementDecl)
          {
            *(v8 + 14) = elementDeclSplit;
          }

          if (v7->unparsedEntityDecl)
          {
            *(v8 + 15) = unparsedEntityDeclSplit;
          }

          if (v7->setDocumentLocator)
          {
            *(v8 + 16) = setDocumentLocatorSplit;
          }

          if (v7->startDocument)
          {
            *(v8 + 17) = startDocumentSplit;
          }

          if (v7->endDocument)
          {
            *(v8 + 18) = endDocumentSplit;
          }

          if (v7->processingInstruction)
          {
            *(v8 + 24) = processingInstructionSplit;
          }

          if (v7->comment)
          {
            *(v8 + 25) = commentSplit;
          }

          if (v7->warning)
          {
            *(v8 + 26) = warningSplit;
          }

          if (v7->error)
          {
            *(v8 + 27) = errorSplit;
          }

          if (v7->fatalError)
          {
            *(v8 + 28) = fatalErrorSplit;
          }

          if (v7->getParameterEntity)
          {
            *(v8 + 29) = getParameterEntitySplit;
          }

          if (v7->externalSubset)
          {
            *(v8 + 31) = externalSubsetSplit;
          }

          *(v8 + 22) = charactersSplit;
          ignorableWhitespace = v7->ignorableWhitespace;
          if (!ignorableWhitespace || (v11 = ignorableWhitespaceSplit, ignorableWhitespace == v7->characters))
          {
            v11 = charactersSplit;
          }

          *(v8 + 23) = v11;
          *(v8 + 30) = cdataBlockSplit;
          *(v8 + 21) = referenceSplit;
          *(v8 + 34) = startElementNsSplit;
          *(v8 + 35) = endElementNsSplit;
          *(v8 + 3) = user_data;
          v12 = *user_data;
          v13 = v8;
        }

        else
        {
          *(v8 + 34) = xmlSchemaSAXHandleStartElementNs;
          *(v8 + 35) = xmlSchemaSAXHandleEndElementNs;
          *(v8 + 22) = xmlSchemaSAXHandleText;
          *(v8 + 23) = xmlSchemaSAXHandleText;
          *(v8 + 30) = xmlSchemaSAXHandleCDataSection;
          *(v8 + 21) = xmlSchemaSAXHandleReference;
          v12 = ctxt;
          v13 = ctxt;
        }

        *(v8 + 4) = v12;
        *user_data = v13;
        *sax = v9;
        *(ctxt + 9) = v9;
        *(ctxt + 66) |= 1u;
        xmlSchemaPreRun(ctxt);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void xmlSchemaSAXHandleStartElementNs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 172) + 1;
  *(a1 + 172) = v9;
  v10 = *(a1 + 304);
  if (v10 != -1 && v9 >= v10)
  {
    return;
  }

  if (xmlSchemaValidatorPushElem(a1) == -1)
  {
    v35 = "calling xmlSchemaValidatorPushElem()";
    goto LABEL_52;
  }

  v18 = *(a1 + 192);
  *(v18 + 16) = xmlSAX2GetLineNumber(*(a1 + 80));
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  *(v18 + 64) |= 0x20u;
  if (a5 >= 1)
  {
    v19 = *(v18 + 128);
    v20 = *(v18 + 132);
    v21 = (a6 + 8);
    do
    {
      if (v20 <= v19)
      {
        if (v20 < 1)
        {
          v20 = 5;
        }

        else
        {
          if (v20 > 0x3B9AC9FF)
          {
            if (a1)
            {
              v39 = *(a1 + 108) + 1;
              *(a1 + 104) = 1818;
              *(a1 + 108) = v39;
            }

            v37 = "allocating namespace bindings for SAX validation";
            goto LABEL_56;
          }

          if (1000000000 - ((v20 + 1) >> 1) >= v20)
          {
            v20 += (v20 + 1) >> 1;
          }

          else
          {
            v20 = 1000000000;
          }
        }

        v22 = malloc_type_realloc(*(v18 + 120), 16 * v20, 0xEE7C939BuLL);
        if (!v22)
        {
          if (a1)
          {
            v36 = *(a1 + 108) + 1;
            *(a1 + 104) = 1818;
            *(a1 + 108) = v36;
          }

          v37 = "re-allocating namespace bindings for SAX validation";
          goto LABEL_56;
        }

        *(v18 + 120) = v22;
        *(v18 + 132) = v20;
        v19 = *(v18 + 128);
      }

      else
      {
        v22 = *(v18 + 120);
      }

      v22[2 * v19] = *(v21 - 1);
      v24 = *v21;
      v21 += 2;
      v23 = v24;
      if (!*v24)
      {
        v23 = 0;
      }

      *(*(v18 + 120) + 16 * v19++ + 8) = v23;
      *(v18 + 128) = v19;
      --a5;
    }

    while (a5);
  }

  if (a7 < 1)
  {
LABEL_41:
    if (xmlSchemaValidateElem(a1) == -1)
    {
      v35 = "calling xmlSchemaValidateElem()";
      goto LABEL_52;
    }

    return;
  }

  v25 = 0;
  v26 = 0;
  while (1)
  {
    v27 = a9 + 8 * v25;
    v28 = *(v27 + 32) - *(v27 + 24);
    v29 = malloc_type_malloc(v28 + 1, 0xA5A687C7uLL);
    if (!v29)
    {
      if (a1)
      {
        v38 = *(a1 + 108) + 1;
        *(a1 + 104) = 1818;
        *(a1 + 108) = v38;
      }

      v37 = "allocating string for decoded attribute";
LABEL_56:
      __xmlSimpleError(0x11u, 2, 0, 0, v37);
      goto LABEL_57;
    }

    if (v28 >= 1)
    {
      v30 = 0;
      v31 = 0;
      while (1)
      {
        v32 = (*(v27 + 24) + v31);
        v33 = *v32;
        if (v31 >= v28 - 4 || v33 != 38)
        {
          goto LABEL_35;
        }

        if (v32[1] != 35 || v32[2] != 51 || v32[3] != 56)
        {
          break;
        }

        LOBYTE(v33) = 38;
        if (v32[4] != 59)
        {
          goto LABEL_35;
        }

        v34 = 5;
LABEL_36:
        v29[v30] = v33;
        v31 += v34;
        ++v30;
        if (v31 >= v28)
        {
          v30 = v30;
          goto LABEL_39;
        }
      }

      LOBYTE(v33) = 38;
LABEL_35:
      v34 = 1;
      goto LABEL_36;
    }

    v30 = 0;
LABEL_39:
    v29[v30] = 0;
    if (xmlSchemaValidatorPushAttribute(a1, 0, *(v18 + 16), *v27, *(v27 + 16), v29) == -1)
    {
      break;
    }

    ++v26;
    v25 += 5;
    if (v26 == a7)
    {
      goto LABEL_41;
    }
  }

  v35 = "calling xmlSchemaValidatorPushAttribute()";
LABEL_52:
  xmlSchemaInternalErr2(a1, "xmlSchemaSAXHandleStartElementNs", v35, 0);
LABEL_57:
  *(a1 + 104) = -1;
  v40 = *(a1 + 80);

  xmlStopParser(v40);
}

void xmlSchemaSAXHandleEndElementNs(uint64_t a1, const xmlChar *a2, uint64_t a3, const xmlChar *a4)
{
  v6 = *(a1 + 304);
  if (v6 != -1)
  {
    v7 = *(a1 + 172);
    if (v7 > v6)
    {
      *(a1 + 172) = v7 - 1;
      return;
    }

    *(a1 + 304) = -1;
  }

  if (!xmlStrEqual(*(*(a1 + 192) + 24), a2) || !xmlStrEqual(*(*(a1 + 192) + 32), a4))
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaSAXHandleEndElementNs", "elem pop mismatch", 0);
  }

  if ((xmlSchemaValidatorPopElem(a1) & 0x80000000) != 0)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaSAXHandleEndElementNs", "calling xmlSchemaValidatorPopElem()", 0);
    *(a1 + 104) = -1;
    v8 = *(a1 + 80);

    xmlStopParser(v8);
  }
}

void xmlSchemaSAXHandleText(uint64_t a1, xmlChar *str2, int len)
{
  v3 = *(a1 + 172);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 304);
    if (v5 == -1 || v3 < v5)
    {
      v7 = *(a1 + 192);
      v8 = *(v7 + 64);
      if ((v8 & 0x20) != 0)
      {
        *(v7 + 64) = v8 & 0xFFFFFFDF;
      }

      if (xmlSchemaVPushText(a1, 3, str2, len, 3) == -1)
      {
        xmlSchemaInternalErr2(a1, "xmlSchemaSAXHandleCDataSection", "calling xmlSchemaVPushText()", 0);
        *(a1 + 104) = -1;
        v9 = *(a1 + 80);

        xmlStopParser(v9);
      }
    }
  }
}

void xmlSchemaSAXHandleCDataSection(uint64_t a1, xmlChar *str2, int len)
{
  v3 = *(a1 + 172);
  if ((v3 & 0x80000000) == 0)
  {
    v5 = *(a1 + 304);
    if (v5 == -1 || v3 < v5)
    {
      v7 = *(a1 + 192);
      v8 = *(v7 + 64);
      if ((v8 & 0x20) != 0)
      {
        *(v7 + 64) = v8 & 0xFFFFFFDF;
      }

      if (xmlSchemaVPushText(a1, 4, str2, len, 3) == -1)
      {
        xmlSchemaInternalErr2(a1, "xmlSchemaSAXHandleCDataSection", "calling xmlSchemaVPushText()", 0);
        *(a1 + 104) = -1;
        v9 = *(a1 + 80);

        xmlStopParser(v9);
      }
    }
  }
}

uint64_t xmlSchemaSAXHandleReference(uint64_t result)
{
  v1 = *(result + 172);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(result + 304);
    if (v2 == -1 || v1 < v2)
    {
      v4 = *__xmlGenericError();
      v5 = __xmlGenericErrorContext();
      return (v4)(*v5, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 27583);
    }
  }

  return result;
}

uint64_t internalSubsetSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (*v1)
      {
        return (*v1)(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t isStandaloneSplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 8)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t hasInternalSubsetSplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 16)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t hasExternalSubsetSplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 24)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t resolveEntitySplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t getEntitySplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 40)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t entityDeclSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t notationDeclSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 56);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

void attributeDeclSplit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, xmlEnumerationPtr cur)
{
  if (a1 && (v7 = *(a1 + 16)) != 0 && (v8 = *(v7 + 64)) != 0)
  {
    v8(*(a1 + 32), a2, a3, a4, a5, a6, cur);
  }

  else
  {
    xmlFreeEnumeration(cur);
  }
}

uint64_t elementDeclSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 72);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t unparsedEntityDeclSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 80);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t setDocumentLocatorSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 88);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t startDocumentSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 96);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t endDocumentSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 104);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t processingInstructionSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 152);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t commentSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 160);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

uint64_t warningSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (*(v1 + 168))
      {
        v2 = *__xmlGenericError();
        v3 = __xmlGenericErrorContext();
        return (v2)(*v3, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 28771);
      }
    }
  }

  return result;
}

uint64_t errorSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (*(v1 + 176))
      {
        v2 = *__xmlGenericError();
        v3 = __xmlGenericErrorContext();
        return (v2)(*v3, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 28779);
      }
    }
  }

  return result;
}

uint64_t fatalErrorSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (*(v1 + 184))
      {
        v2 = *__xmlGenericError();
        v3 = __xmlGenericErrorContext();
        return (v2)(*v3, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 28787);
      }
    }
  }

  return result;
}

uint64_t getParameterEntitySplit(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0 && (v2 = *(v1 + 192)) != 0)
  {
    return v2(*(a1 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t externalSubsetSplit(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      v2 = *(v1 + 208);
      if (v2)
      {
        return v2(*(result + 32));
      }
    }
  }

  return result;
}

void charactersSplit(void *a1, xmlChar *str2, uint64_t len)
{
  if (a1)
  {
    v3 = len;
    v6 = a1[2];
    if (v6)
    {
      v7 = *(v6 + 136);
      if (v7)
      {
        v7(a1[4], str2, len);
      }
    }

    v8 = a1[37];
    if (v8)
    {

      xmlSchemaSAXHandleText(v8, str2, v3);
    }
  }
}

void ignorableWhitespaceSplit(void *a1, xmlChar *str2, uint64_t len)
{
  if (a1)
  {
    v3 = len;
    v6 = a1[2];
    if (v6)
    {
      v7 = *(v6 + 144);
      if (v7)
      {
        v7(a1[4], str2, len);
      }
    }

    v8 = a1[37];
    if (v8)
    {

      xmlSchemaSAXHandleText(v8, str2, v3);
    }
  }
}

void cdataBlockSplit(void *a1, xmlChar *str2, uint64_t len)
{
  if (a1)
  {
    v3 = len;
    v6 = a1[2];
    if (v6)
    {
      v7 = *(v6 + 200);
      if (v7)
      {
        v7(a1[4], str2, len);
      }
    }

    v8 = a1[37];
    if (v8)
    {

      xmlSchemaSAXHandleCDataSection(v8, str2, v3);
    }
  }
}

uint64_t referenceSplit(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = *(v2 + 128);
      if (v3)
      {
        result = v3(*(result + 32));
      }
    }

    if (*(v1 + 296))
    {
      v4 = *(v1 + 32);

      return xmlSchemaSAXHandleReference(v4);
    }
  }

  return result;
}

void startElementNsSplit(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v9 = a7;
    v11 = a5;
    v15 = a1[2];
    if (v15)
    {
      v16 = *(v15 + 232);
      if (v16)
      {
        v16(a1[4], a2, a3, a4, a5, a6, a7);
      }
    }

    v17 = a1[37];
    if (v17)
    {

      xmlSchemaSAXHandleStartElementNs(v17, a2, a3, a4, v11, a6, v9, a8, a9);
    }
  }
}

void endElementNsSplit(void *a1, const xmlChar *a2, uint64_t a3, const xmlChar *a4)
{
  if (a1)
  {
    v7 = a1[2];
    if (v7)
    {
      v8 = *(v7 + 240);
      if (v8)
      {
        v8(a1[4], a2, a3, a4);
      }
    }

    v9 = a1[37];
    if (v9)
    {

      xmlSchemaSAXHandleEndElementNs(v9, a2, a3, a4);
    }
  }
}

uint64_t xmlSchemaPreRun(void *data)
{
  data[13] = 0;
  *(data + 43) = -1;
  *(data + 76) = -1;
  data[40] = 0;
  v2 = data[5];
  if (v2)
  {
    goto LABEL_2;
  }

  *(data + 42) = 1;
  v4 = data[20];
  if (!v4)
  {
    v5 = xmlSchemaNewParserCtxt("*");
    data[20] = v5;
    if (!v5)
    {
      xmlSchemaInternalErr2(data, "xmlSchemaCreatePCtxtOnVCtxt", "failed to create a temp. parser context", 0);
      return 0xFFFFFFFFLL;
    }

    v7 = data[2];
    v6 = data[3];
    v8 = v5;
    v9 = data[1];
    do
    {
      v8[2] = v7;
      v8[3] = v6;
      v8[1] = v9;
      v10 = v8[22];
      if (!v10)
      {
        break;
      }

      v10[2] = v7;
      v10[3] = v6;
      v10[1] = v9;
      v8 = v10[20];
    }

    while (v8);
    v11 = data[4];
    v12 = data[1];
    do
    {
      *(v5 + 5) = v11;
      *(v5 + 1) = v12;
      v13 = *(v5 + 22);
      if (!v13)
      {
        break;
      }

      v13[3] = 0;
      v13[4] = v11;
      v13[1] = v12;
      v13[2] = 0;
      v5 = v13[20];
    }

    while (v5);
    v4 = data[20];
  }

  *(v4 + 192) = 1;
  v14 = xmlSchemaNewSchema(v4);
  data[5] = v14;
  if (v14)
  {
    v15 = xmlSchemaConstructionCtxtCreate(*(v4 + 152));
    *(v4 + 48) = v15;
    if (v15)
    {
      v2 = data[5];
      *v15 = v2;
      *(v4 + 56) = 1;
LABEL_2:
      xmlHashScan(*(v2 + 96), xmlSchemaAugmentImportedIDC, data);
      return 0;
    }
  }

  return 0xFFFFFFFFLL;
}

int xmlSchemaSAXUnplug(xmlSchemaSAXPlugPtr plug)
{
  if (!plug)
  {
    return -1;
  }

  if (*plug != -599541215)
  {
    return -1;
  }

  *plug = 0;
  xmlSchemaPostRun(*(plug + 37));
  v2 = *(plug + 2);
  **(plug + 1) = v2;
  if (v2)
  {
    **(plug + 3) = *(plug + 4);
  }

  free(plug);
  return 0;
}

void xmlSchemaPostRun(uint64_t a1)
{
  if (*(a1 + 168))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      xmlSchemaFree(v2);
      *(a1 + 40) = 0;
    }
  }

  *(a1 + 264) = 0;
  *(a1 + 152) = 0;
  *(a1 + 48) = 0;
  *(a1 + 280) = 0;
  *(a1 + 320) = 0;
  v3 = *(a1 + 136);
  if (v3)
  {
    xmlSchemaFreeValue(v3);
    *(a1 + 136) = 0;
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    do
    {
      v5 = *v4;
      free(v4);
      v4 = v5;
    }

    while (v5);
    *(a1 + 200) = 0;
  }

  v6 = *(a1 + 224);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 16);
      do
      {
        v8 = *(v7 + 8);
        v9 = *(v7 + 40);
        if (v9)
        {
          v10 = *(v7 + 48);
          if (v10 >= 1)
          {
            for (i = 0; i < v10; ++i)
            {
              v12 = *(*(v7 + 40) + 8 * i);
              if (v12)
              {
                free(v12);
                v10 = *(v7 + 48);
              }
            }

            v9 = *(v7 + 40);
          }

          free(v9);
        }

        v13 = *(v7 + 56);
        if (v13)
        {
          if (*(v7 + 32) == 24 && *(v13 + 8) >= 1)
          {
            v14 = 0;
            do
            {
              v15 = *(*v13 + 8 * v14);
              free(v15[1]);
              free(v15);
              ++v14;
              v13 = *(v7 + 56);
            }

            while (v14 < *(v13 + 8));
          }

          xmlSchemaItemListFree(v13);
        }

        v16 = *(v7 + 64);
        if (v16)
        {
          xmlHashFree(v16, xmlFreeIDCHashEntry);
        }

        free(v7);
        v7 = v8;
      }

      while (v8);
    }

    while (v6);
    *(a1 + 224) = 0;
  }

  v18 = (a1 + 232);
  v17 = *(a1 + 232);
  if (v17)
  {
    if (*(a1 + 240) >= 1)
    {
      v19 = 0;
      do
      {
        v20 = *(*(a1 + 232) + 8 * v19);
        free(v20[1]);
        free(v20);
        ++v19;
      }

      while (v19 < *(a1 + 240));
      v17 = *v18;
    }

    free(v17);
    *v18 = 0;
    *(a1 + 240) = 0;
  }

  v22 = (a1 + 248);
  v21 = *(a1 + 248);
  if (v21)
  {
    if (*(a1 + 256) >= 1)
    {
      v23 = 0;
      do
      {
        xmlSchemaIDCFreeKey(*(*(a1 + 248) + 8 * v23++));
      }

      while (v23 < *(a1 + 256));
      v21 = *v22;
    }

    free(v21);
    *v22 = 0;
    *(a1 + 256) = 0;
  }

  v24 = *(a1 + 208);
  if (v24)
  {
    xmlSchemaFreeIDCStateObjList(v24);
    *(a1 + 208) = 0;
  }

  if (*(a1 + 296))
  {
    xmlSchemaClearAttrInfos(a1);
  }

  if (*(a1 + 176) && *(a1 + 184) >= 1)
  {
    v25 = 0;
    do
    {
      v26 = *(*(a1 + 176) + 8 * v25);
      if (!v26)
      {
        break;
      }

      xmlSchemaClearElemInfo(a1, v26);
      ++v25;
    }

    while (v25 < *(a1 + 184));
  }

  v27 = *(a1 + 312);
  if (*v27)
  {
    free(*v27);
    *v27 = 0;
  }

  *(v27 + 8) = 0;
  xmlDictFree(*(a1 + 272));
  *(a1 + 272) = xmlDictCreate();
  v28 = *(a1 + 96);
  if (v28)
  {
    free(v28);
    *(a1 + 96) = 0;
  }
}

void xmlSchemaValidateSetLocator(xmlSchemaValidCtxtPtr vctxt, xmlSchemaValidityLocatorFunc f, void *ctxt)
{
  if (vctxt)
  {
    *(vctxt + 42) = f;
    *(vctxt + 43) = ctxt;
  }
}

int xmlSchemaValidateStream(xmlSchemaValidCtxtPtr ctxt, xmlParserInputBufferPtr input, xmlCharEncoding enc, xmlSAXHandlerPtr sax, void *user_data)
{
  v5 = -1;
  if (ctxt)
  {
    if (input)
    {
      v11 = xmlNewParserCtxt();
      if (v11)
      {
        v12 = v11;
        v13 = v11->sax;
        v11->sax = sax;
        v11->userData = user_data;
        p_userData = &v11->userData;
        v11->linenumbers = 1;
        *(ctxt + 42) = xmlSchemaValidateStreamLocator;
        *(ctxt + 43) = v11;
        v15 = xmlNewIOInputStream(v11, input, enc);
        if (v15)
        {
          v16 = v15;
          if (inputPush(v12, v15) < 0)
          {
            xmlFreeInputStream(v16);
          }

          else
          {
            *(ctxt + 10) = v12;
            *(ctxt + 7) = input;
            v17 = xmlSchemaSAXPlug(ctxt, &v12->sax, p_userData);
            if (v17)
            {
              v18 = v17;
              *(ctxt + 7) = input;
              *(ctxt + 16) = enc;
              *(ctxt + 9) = v12->sax;
              *(ctxt + 66) |= 1u;
              v5 = xmlSchemaVStart(ctxt);
              if (!v5)
              {
                v19 = *(ctxt + 10);
                if (*(v19 + 24))
                {
                  v5 = 0;
                }

                else
                {
                  v20 = *(v19 + 136);
                  if (v20 <= 1)
                  {
                    v5 = 1;
                  }

                  else
                  {
                    v5 = v20;
                  }
                }
              }

              *(ctxt + 7) = 0;
              *(ctxt + 9) = 0;
              *(ctxt + 10) = 0;
              xmlSchemaSAXUnplug(v18);
              goto LABEL_16;
            }
          }
        }

        *(ctxt + 7) = 0;
        v5 = -1;
        *(ctxt + 9) = 0;
        *(ctxt + 10) = 0;
LABEL_16:
        v12->sax = v13;
        xmlFreeParserCtxt(v12);
      }
    }
  }

  return v5;
}

uint64_t xmlSchemaValidateStreamLocator(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1 || !(a2 | a3))
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

  v3 = *(a1 + 56);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    *a2 = *(v3 + 8);
  }

  v4 = 0;
  if (a3)
  {
    *a3 = *(*(a1 + 56) + 52);
  }

  return v4;
}

int xmlSchemaValidateFile(xmlSchemaValidCtxtPtr ctxt, const char *filename, int options)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!filename)
  {
    return -1;
  }

  v4 = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
  if (!v4)
  {
    return -1;
  }

  return xmlSchemaValidateStream(ctxt, v4, XML_CHAR_ENCODING_NONE, 0, 0);
}

xmlParserCtxtPtr xmlSchemaValidCtxtGetParserCtxt(xmlParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    return ctxt->node;
  }

  return ctxt;
}

void xmlSchemaComponentListFree(uint64_t *a1)
{
  v1 = *(a1 + 2);
  if (v1)
  {
    if (v1 >= 1)
    {
      v3 = 0;
      v4 = *a1;
      do
      {
        v5 = *(v4 + 8 * v3);
        if (v5)
        {
          v6 = *v5;
          switch(*v5)
          {
            case 1:
              if (*(v5 + 40) == 45)
              {
                v13 = "complex type definition";
              }

              else
              {
                v13 = "simple type definition";
              }

              goto LABEL_31;
            case 2:
            case 0x15:
              xmlSchemaFreeWildcard(*(v4 + 8 * v3));
              break;
            case 3:
            case 9:
            case 0xA:
            case 0xB:
            case 0xC:
            case 0xD:
            case 0x13:
            case 0x14:
              goto LABEL_21;
            case 4:
            case 5:
              xmlSchemaFreeType(*(v4 + 8 * v3));
              break;
            case 6:
            case 7:
            case 8:
            case 0x11:
            case 0x19:
              v7 = *(v5 + 1);
              if (v7)
              {
                xmlSchemaFreeAnnot(v7);
              }

              goto LABEL_36;
            case 0xE:
              v19 = *(v5 + 6);
              if (v19)
              {
                xmlSchemaFreeAnnot(v19);
              }

              v20 = *(v5 + 20);
              if (v20)
              {
                xmlRegFreeRegexp(v20);
              }

              v17 = *(v5 + 23);
              if (!v17)
              {
                goto LABEL_36;
              }

              goto LABEL_35;
            case 0xF:
              v16 = *(v5 + 8);
              if (v16)
              {
                xmlSchemaFreeAnnot(v16);
              }

              v17 = *(v5 + 17);
              if (v17)
              {
                goto LABEL_35;
              }

              goto LABEL_36;
            case 0x10:
              v14 = *(v5 + 6);
              if (v14)
              {
                xmlSchemaFreeAnnot(v14);
              }

              v15 = *(v5 + 14);
              if (v15)
              {
                xmlSchemaItemListFree(v15);
              }

              goto LABEL_36;
            case 0x12:
              goto LABEL_36;
            case 0x16:
            case 0x17:
            case 0x18:
              v8 = *(v5 + 1);
              if (v8)
              {
                xmlSchemaFreeAnnot(v8);
              }

              v9 = *(v5 + 6);
              if (v9)
              {
                if (v9[4])
                {
                  xmlFreePattern(v9[4]);
                  v9 = *(v5 + 6);
                }

                free(v9);
              }

              v10 = *(v5 + 7);
              if (v10)
              {
                do
                {
                  v11 = *v10;
                  v12 = v10[4];
                  if (v12)
                  {
                    xmlFreePattern(v12);
                  }

                  free(v10);
                  v10 = v11;
                }

                while (v11);
              }

              goto LABEL_36;
            case 0x1A:
              v18 = *(v5 + 1);
              if (v18)
              {
                xmlSchemaFreeAnnot(v18);
              }

              v17 = *(v5 + 8);
              if (!v17)
              {
                goto LABEL_36;
              }

LABEL_35:
              xmlSchemaFreeValue(v17);
              goto LABEL_36;
            default:
              if (v6 == 2000 || v6 == 2001)
              {
LABEL_36:
                free(v5);
              }

              else
              {
LABEL_21:
                v13 = xmlSchemaItemTypeToStr(v6);
LABEL_31:
                __xmlSimpleError(0x10u, 3069, 0, "Internal error: xmlSchemaComponentListFree, unexpected component type '%s'\n", v13);
              }

              break;
          }
        }

        ++v3;
      }

      while (v3 < *(a1 + 2));
    }

    *(a1 + 2) = 0;
  }
}

const char *xmlSchemaItemTypeToStr(int a1)
{
  v1 = a1 - 1;
  result = "simple type definition";
  switch(v1)
  {
    case 0:
    case 3:
      return result;
    case 1:
      result = "wildcard (any)";
      break;
    case 2:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 18:
    case 19:
    case 20:
      goto LABEL_5;
    case 4:
      result = "complex type definition";
      break;
    case 5:
      result = "model group (sequence)";
      break;
    case 6:
      result = "model group (choice)";
      break;
    case 7:
      result = "model group (all)";
      break;
    case 13:
      result = "element declaration";
      break;
    case 14:
      result = "attribute declaration";
      break;
    case 15:
      result = "attribute group definition";
      break;
    case 16:
      result = "model group definition";
      break;
    case 17:
      result = "notation declaration";
      break;
    case 21:
      result = "unique identity-constraint";
      break;
    case 22:
      result = "key identity-constraint";
      break;
    case 23:
      result = "keyref identity-constraint";
      break;
    case 24:
      result = "particle";
      break;
    case 25:
      result = "attribute use";
      break;
    default:
      if ("simple type definition" == 2000)
      {
        result = "[helper component] QName reference";
      }

      else if ("simple type definition" == 2001)
      {
        result = "[helper component] attribute use prohibition";
      }

      else
      {
LABEL_5:
        result = "Not a schema component";
      }

      break;
  }

  return result;
}

void xmlSchemaTypeDump(_DWORD *a1, FILE *__stream)
{
  if (a1)
  {
    fwrite("Type: ", 6uLL, 1uLL, __stream);
    if (*(a1 + 2))
    {
      fprintf(__stream, "'%s' ", *(a1 + 2));
    }

    else
    {
      fwrite("(no name) ", 0xAuLL, 1uLL, __stream);
    }

    if (*(a1 + 26))
    {
      fprintf(__stream, "ns '%s' ", *(a1 + 26));
    }

    v4 = *a1;
    if (*a1 <= 6)
    {
      if (v4 > 4)
      {
        if (v4 == 5)
        {
          v5 = "[complex] ";
          v6 = 10;
        }

        else
        {
          v5 = "[sequence] ";
          v6 = 11;
        }

        goto LABEL_31;
      }

      if (v4 == 1)
      {
        v5 = "[basic] ";
        v6 = 8;
        goto LABEL_31;
      }

      if (v4 != 4)
      {
        goto LABEL_75;
      }

      v5 = "[simple] ";
    }

    else
    {
      if (v4 > 10)
      {
        switch(v4)
        {
          case 11:
            v5 = "[ur] ";
            v6 = 5;
            goto LABEL_31;
          case 12:
            v5 = "[restriction] ";
            v6 = 14;
            goto LABEL_31;
          case 13:
            v5 = "[extension] ";
            v6 = 12;
LABEL_31:
            fwrite(v5, v6, 1uLL, __stream);
            goto LABEL_32;
        }

        goto LABEL_75;
      }

      if (v4 != 7)
      {
        if (v4 == 8)
        {
          v5 = "[all] ";
          v6 = 6;
          goto LABEL_31;
        }

LABEL_75:
        fprintf(__stream, "[unknown type %d] ", *a1);
LABEL_32:
        fwrite("content: ", 9uLL, 1uLL, __stream);
        v7 = a1[23];
        if (v7 > 2)
        {
          if (v7 > 5)
          {
            if (v7 != 6)
            {
              if (v7 == 7)
              {
                v8 = "[any] ";
                v9 = 6;
                goto LABEL_50;
              }

LABEL_51:
              fputc(10, __stream);
              if (*(a1 + 12))
              {
                fprintf(__stream, "  base type: '%s'", *(a1 + 12));
                if (*(a1 + 13))
                {
                  fprintf(__stream, " ns '%s'\n", *(a1 + 13));
                }

                else
                {
                  fputc(10, __stream);
                }
              }

              v10 = *(a1 + 27);
              if (v10)
              {
                v19 = 0;
                if (*(v10 + 8))
                {
                  fwrite("  attributes:\n", 0xEuLL, 1uLL, __stream);
                  if (*(v10 + 8) >= 1)
                  {
                    v11 = 0;
                    do
                    {
                      v12 = *(*v10 + 8 * v11);
                      if (*v12 == 2000)
                      {
                        fwrite("  [reference] ", 0xEuLL, 1uLL, __stream);
                        v13 = (v12 + 24);
                        v14 = (v12 + 32);
                      }

                      else if (*v12 == 2001)
                      {
                        fwrite("  [prohibition] ", 0x10uLL, 1uLL, __stream);
                        v13 = (v12 + 16);
                        v14 = (v12 + 24);
                      }

                      else
                      {
                        fwrite("  [use] ", 8uLL, 1uLL, __stream);
                        v15 = *(v12 + 24);
                        v13 = (v15 + 16);
                        v14 = (v15 + 112);
                      }

                      v16 = xmlSchemaFormatQName(&v19, *v14, *v13);
                      fprintf(__stream, "'%s'\n", v16);
                      if (v19)
                      {
                        free(v19);
                        v19 = 0;
                      }

                      ++v11;
                    }

                    while (v11 < *(v10 + 8));
                  }
                }
              }

              v17 = *(a1 + 6);
              if (v17)
              {
                xmlSchemaAnnotDump(__stream, v17);
              }

              if (*a1 == 5)
              {
                v18 = *(a1 + 7);
                if (v18)
                {

                  xmlSchemaContentModelDump(v18, __stream, 1);
                }
              }

              return;
            }

            v8 = "[basic] ";
          }

          else
          {
            if (v7 != 3)
            {
              if (v7 == 4)
              {
                v8 = "[simple] ";
                v9 = 9;
LABEL_50:
                fwrite(v8, v9, 1uLL, __stream);
                goto LABEL_51;
              }

              goto LABEL_51;
            }

            v8 = "[mixed] ";
          }

LABEL_49:
          v9 = 8;
          goto LABEL_50;
        }

        if (v7)
        {
          if (v7 == 1)
          {
            v8 = "[empty] ";
            goto LABEL_49;
          }

          if (v7 != 2)
          {
            goto LABEL_51;
          }

          v8 = "[element] ";
        }

        else
        {
          v8 = "[unknown] ";
        }

        v9 = 10;
        goto LABEL_50;
      }

      v5 = "[choice] ";
    }

    v6 = 9;
    goto LABEL_31;
  }

  fwrite("Type: NULL\n", 0xBuLL, 1uLL, __stream);
}

size_t xmlSchemaContentModelDump(size_t result, FILE *a2, uint64_t a3)
{
  while (1)
  {
    v3 = a3;
    v4 = a2;
    v5 = result;
    v24 = *MEMORY[0x1E69E9840];
    v21 = 0;
    v23 = 0;
    memset(__b, 0, sizeof(__b));
    v6 = a3 - 1;
    if (a3 < 1)
    {
      v7 = 0;
    }

    else
    {
      if (v6 >= 0x18)
      {
        v6 = 24;
      }

      v7 = 2 * v6 + 2;
      memset(__b, 32, v7);
    }

    *(__b + v7) = 0;
    fputs(__b, v4);
    v8 = *(v5 + 24);
    if (!v8)
    {
      v11 = *MEMORY[0x1E69E9840];
      v12 = "MISSING particle term\n";
      v13 = 22;
      goto LABEL_37;
    }

    v9 = *v8;
    if (*v8 <= 6)
    {
      break;
    }

    if (v9 == 7)
    {
      v14 = "CHOICE";
      v15 = 6;
      goto LABEL_21;
    }

    if (v9 == 8)
    {
      v14 = "ALL";
      goto LABEL_20;
    }

    if (v9 != 14)
    {
      goto LABEL_36;
    }

    v10 = xmlSchemaFormatQName(&v21, *(v8 + 96), *(v8 + 16));
    fprintf(v4, "ELEM '%s'", v10);
    if (v21)
    {
      free(v21);
    }

LABEL_22:
    if (*(v5 + 32) != 1)
    {
      fprintf(v4, " min: %d", *(v5 + 32));
    }

    v16 = *(v5 + 36);
    if (v16 < 0x40000000)
    {
      if (v16 != 1)
      {
        fprintf(v4, " max: %d", *(v5 + 36));
      }
    }

    else
    {
      fwrite(" max: unbounded", 0xFuLL, 1uLL, v4);
    }

    fputc(10, v4);
    if ((*v8 - 6) <= 2)
    {
      v17 = *(v8 + 24);
      if (v17)
      {
        xmlSchemaContentModelDump(v17, v4, (v3 + 1));
      }
    }

    result = *(v5 + 16);
    if (!result)
    {
      v19 = *MEMORY[0x1E69E9840];
      return result;
    }

    v18 = *MEMORY[0x1E69E9840];
    a2 = v4;
    a3 = v3;
  }

  if (v9 == 2)
  {
    v14 = "ANY";
LABEL_20:
    v15 = 3;
LABEL_21:
    fwrite(v14, v15, 1uLL, v4);
    goto LABEL_22;
  }

  if (v9 == 6)
  {
    v14 = "SEQUENCE";
    v15 = 8;
    goto LABEL_21;
  }

LABEL_36:
  v20 = *MEMORY[0x1E69E9840];
  v12 = "UNKNOWN\n";
  v13 = 8;
LABEL_37:

  return fwrite(v12, v13, 1uLL, v4);
}

void xmlSchemaSubstGroupFree(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      xmlSchemaItemListFree(v2);
    }

    free(a1);
  }
}

void xmlSchemaInternalErr2(_DWORD *a1, const xmlChar *a2, const xmlChar *a3, xmlChar *a4)
{
  if (!a1)
  {
    return;
  }

  v8 = xmlStrdup("Internal error: %s, ");
  v9 = xmlStrcat(v8, a3);
  v10 = xmlStrcat(v9, ".\n");
  if (*a1 == 2)
  {
    v11 = 1818;
  }

  else
  {
    if (*a1 != 1)
    {
      goto LABEL_7;
    }

    v11 = 3069;
  }

  xmlSchemaErr4Line(a1, 2, v11, 0, 0, v10, a2, a4, 0, 0);
LABEL_7:
  if (v10)
  {

    free(v10);
  }
}

_DWORD *xmlSchemaErr4Line(_DWORD *result, int a2, int a3, uint64_t a4, int a5, const char *a6, const xmlChar *a7, xmlChar *cur, xmlChar *a9, uint64_t a10)
{
  if (result)
  {
    v12 = a4;
    v13 = a3;
    v15 = result;
    v16 = a9;
    if (*result != 1)
    {
      if (*result != 2)
      {
        v20 = *__xmlGenericError();
        v21 = __xmlGenericErrorContext();
        return (v20)(*v21, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 2223);
      }

      v17 = a5;
      if (a2 == 1)
      {
        v18 = 6;
      }

      else
      {
        v22 = result[27] + 1;
        result[26] = a3;
        result[27] = v22;
        v18 = 4;
      }

      v23 = *&result[v18];
      v24 = *(result + 4);
      v25 = *(v15 + 1);
      if (a5)
      {
        v26 = *(v15 + 6);
        if (v26)
        {
          v27 = 0;
          v12 = 0;
          v28 = *(v26 + 136);
          goto LABEL_28;
        }

        v30 = *(v15 + 10);
        if (v30)
        {
          v31 = *(v30 + 56);
          if (v31)
          {
            v27 = 0;
            v12 = 0;
            v28 = *(v31 + 8);
            goto LABEL_28;
          }
        }
      }

      else
      {
        if (a4 || (v15[43] & 0x80000000) == 0 && (v32 = *(v15 + 24)) != 0 && (v12 = *(v32 + 8)) != 0)
        {
          v17 = 0;
          v28 = 0;
          v27 = 0;
          goto LABEL_28;
        }

        v33 = *(v15 + 10);
        if (v33)
        {
          v34 = *(v33 + 56);
          if (v34)
          {
            v12 = 0;
            v28 = *(v34 + 8);
            v17 = *(v34 + 52);
            v27 = *(v34 + 56);
            goto LABEL_28;
          }
        }

        v17 = 0;
      }

      v28 = 0;
      v27 = 0;
      v12 = 0;
LABEL_28:
      v35 = *(v15 + 42);
      if (v35)
      {
        if (v28 && v17)
        {
          return __xmlRaiseError(v24, v23, v25, v15, v12, 0x11u, v13, a2, v28, v17, a7, cur, v16, 0, v27, a6, a7);
        }

        v42 = 0;
        v43 = 0;
        v39 = v24;
        v40 = v25;
        *v41 = v23;
        v36 = a6;
        v37 = v13;
        v38 = v27;
        v35(*(v15 + 43), &v42, &v43);
        v27 = v38;
        v24 = v39;
        v25 = v40;
        v23 = *v41;
        v13 = v37;
        v16 = a9;
        a6 = v36;
        if (!v28)
        {
          v28 = v42;
        }

        if (!v17)
        {
          v17 = v43;
        }
      }

      if (!v28)
      {
        v28 = *(v15 + 12);
      }

      return __xmlRaiseError(v24, v23, v25, v15, v12, 0x11u, v13, a2, v28, v17, a7, cur, v16, 0, v27, a6, a7);
    }

    if (a2 == 1)
    {
      v19 = 6;
    }

    else
    {
      v29 = result[9] + 1;
      result[8] = a3;
      result[9] = v29;
      v19 = 4;
    }

    return __xmlRaiseError(*(result + 5), *&result[v19], *(result + 1), result, a4, 0x10u, a3, a2, 0, 0, a7, cur, a9, 0, 0, a6, a7);
  }

  return result;
}

uint64_t xmlSchemaGetComponentNode(int *a1)
{
  v1 = 0;
  v2 = *a1;
  if (*a1 > 16)
  {
    if (v2 > 24)
    {
      if (v2 == 25 || v2 == 26 || v2 == 2000)
      {
        v3 = 10;
        return *&a1[v3];
      }
    }

    else
    {
      if ((v2 - 22) < 3)
      {
        goto LABEL_11;
      }

      if (v2 == 17)
      {
        v3 = 12;
        return *&a1[v3];
      }

      if (v2 == 21)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v3 = 18;
    if (v2 <= 13)
    {
      if ((v2 - 6) < 3)
      {
        v3 = 8;
        return *&a1[v3];
      }

      if ((v2 - 4) < 2)
      {
        return *&a1[v3];
      }

      if (v2 != 2)
      {
        return v1;
      }

LABEL_11:
      v3 = 6;
      return *&a1[v3];
    }

    switch(v2)
    {
      case 14:
        return *&a1[v3];
      case 15:
        v3 = 26;
        return *&a1[v3];
      case 16:
        v3 = 16;
        return *&a1[v3];
    }
  }

  return v1;
}

unsigned __int8 *xmlSchemaFormatItemForReport(xmlChar **a1, uint64_t a2, uint64_t a3)
{
  v56 = 0;
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a2)
  {
    v7 = *a2;
    v8 = "unique '";
    switch(*a2)
    {
      case 1:
        v38 = *(a2 + 88);
        v39 = "list type 'xs:";
        v40 = "union type 'xs:";
        if ((v38 & 0x80) == 0)
        {
          v40 = "simple type 'xs:";
        }

        if ((v38 & 0x40) == 0)
        {
          v39 = v40;
        }

        if ((v38 & 0x100) != 0)
        {
          v41 = "atomic type 'xs:";
        }

        else
        {
          v41 = v39;
        }

        v14 = xmlStrdup(v41);
        goto LABEL_71;
      case 2:
      case 0x15:
        v17 = *(a2 + 40) - 1;
        if (v17 > 2)
        {
          v18 = "invalid process contents";
        }

        else
        {
          v18 = off_1E82C60F0[v17];
        }

        v15 = xmlStrdup(v18);
        *a1 = v15;
        v16 = " wildcard";
        goto LABEL_11;
      case 3:
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
      case 0xD:
      case 0x13:
      case 0x14:
        break;
      case 4:
        if ((*(a2 + 88) & 8) != 0)
        {
          v51 = "";
        }

        else
        {
          v51 = "local ";
        }

        v45 = xmlStrdup(v51);
        *a1 = v45;
        v52 = *(a2 + 88);
        v53 = "list type";
        v54 = "union type";
        if ((v52 & 0x80) == 0)
        {
          v54 = "simple type";
        }

        if ((v52 & 0x40) == 0)
        {
          v53 = v54;
        }

        if ((v52 & 0x100) != 0)
        {
          v46 = "atomic type";
        }

        else
        {
          v46 = v53;
        }

        goto LABEL_69;
      case 5:
        if ((*(a2 + 88) & 8) != 0)
        {
          v44 = "";
        }

        else
        {
          v44 = "local ";
        }

        v45 = xmlStrdup(v44);
        *a1 = v45;
        v46 = "complex type";
LABEL_69:
        v55 = xmlStrcat(v45, v46);
        *a1 = v55;
        if ((*(a2 + 88) & 8) == 0)
        {
          goto LABEL_13;
        }

        v14 = xmlStrcat(v55, " '");
LABEL_71:
        *a1 = v14;
        v13 = *(a2 + 16);
        goto LABEL_9;
      case 6:
      case 7:
      case 8:
      case 0x19:
        v9 = xmlSchemaItemTypeToStr(v7);
        v10 = xmlStrdup(v9);
        goto LABEL_12;
      case 0xE:
        v42 = xmlStrdup("element decl.");
        *a1 = v42;
        v11 = xmlStrcat(v42, " '");
        *a1 = v11;
        v12 = xmlSchemaFormatQName(&v56, *(a2 + 96), *(a2 + 16));
        goto LABEL_8;
      case 0xF:
        v43 = xmlStrdup("attribute decl.");
        *a1 = v43;
        v36 = xmlStrcat(v43, " '");
        *a1 = v36;
        v37 = xmlSchemaFormatQName(&v56, *(a2 + 112), *(a2 + 16));
        goto LABEL_51;
      case 0x10:
        xmlSchemaGetComponentDesignation(a1, a2);
        goto LABEL_13;
      case 0x11:
        v47 = xmlStrdup("model group def.");
        *a1 = v47;
        v48 = xmlStrcat(v47, " '");
        *a1 = v48;
        ComponentQName = xmlSchemaGetComponentQName(&v56, a2);
        v50 = xmlStrcat(v48, ComponentQName);
        *a1 = v50;
        *a1 = xmlStrcat(v50, "'");
        if (v56)
        {
          free(v56);
          v56 = 0;
        }

        goto LABEL_13;
      case 0x12:
        v19 = xmlSchemaItemTypeToStr(18);
        v20 = xmlStrdup(v19);
        *a1 = v20;
        v21 = xmlStrcat(v20, " '");
        *a1 = v21;
        v22 = xmlSchemaGetComponentQName(&v56, a2);
        v23 = xmlStrcat(v21, v22);
        *a1 = v23;
        *a1 = xmlStrcat(v23, "'");
        if (v56)
        {
          free(v56);
          v56 = 0;
        }

        break;
      case 0x16:
        goto LABEL_73;
      case 0x17:
        v8 = "key '";
        goto LABEL_73;
      case 0x18:
        v8 = "keyRef '";
LABEL_73:
        v14 = xmlStrdup(v8);
        *a1 = v14;
        v13 = *(a2 + 32);
        goto LABEL_9;
      case 0x1A:
        v15 = xmlStrdup("attribute use ");
        *a1 = v15;
        if (*(a2 + 24))
        {
          v36 = xmlStrcat(v15, "'");
          *a1 = v36;
          v37 = xmlSchemaGetComponentQName(&v56, *(a2 + 24));
LABEL_51:
          v15 = xmlStrcat(v36, v37);
          *a1 = v15;
          if (v56)
          {
            free(v56);
            v56 = 0;
            v15 = *a1;
          }

LABEL_10:
          v16 = "'";
        }

        else
        {
          v16 = "(unknown)";
        }

LABEL_11:
        v10 = xmlStrcat(v15, v16);
LABEL_12:
        *a1 = v10;
LABEL_13:
        if (!a3)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      default:
        if ((v7 - 1000) >= 0xC)
        {
          break;
        }

        v11 = xmlStrdup("facet '");
        *a1 = v11;
        v12 = xmlSchemaFacetTypeToString(*a2);
LABEL_8:
        v13 = v12;
        v14 = v11;
LABEL_9:
        v15 = xmlStrcat(v14, v13);
        *a1 = v15;
        goto LABEL_10;
    }
  }

  if (a3)
  {
    v24 = a3;
    if (*(a3 + 8) == 2)
    {
      v24 = *(a3 + 40);
    }

    v25 = xmlStrdup("Element '");
    v26 = v25;
    *a1 = v25;
    v27 = *(v24 + 72);
    if (v27)
    {
      v28 = xmlSchemaFormatQName(&v56, *(v27 + 16), *(v24 + 16));
      v29 = xmlStrcat(v26, v28);
      *a1 = v29;
      if (v56)
      {
        free(v56);
        v56 = 0;
        v29 = *a1;
      }
    }

    else
    {
      v29 = xmlStrcat(v25, *(v24 + 16));
      *a1 = v29;
    }

    *a1 = xmlStrcat(v29, "'");
LABEL_28:
    if (*(a3 + 8) == 2)
    {
      v30 = xmlStrcat(*a1, ", attribute '");
      v31 = v30;
      *a1 = v30;
      v32 = *(a3 + 72);
      if (v32)
      {
        v33 = xmlSchemaFormatQName(&v56, *(v32 + 16), *(a3 + 16));
        v34 = xmlStrcat(v31, v33);
        *a1 = v34;
        if (v56)
        {
          free(v56);
          v56 = 0;
          v34 = *a1;
        }
      }

      else
      {
        v34 = xmlStrcat(v30, *(a3 + 16));
        *a1 = v34;
      }

      *a1 = xmlStrcat(v34, "'");
    }
  }

LABEL_34:
  if (v56)
  {
    free(v56);
  }

  return xmlEscapeFormatString(a1);
}

unsigned __int8 *xmlSchemaFormatNodeForError(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  v32 = 0;
  *a1 = 0;
  if (a3)
  {
    v5 = *(a3 + 8);
    if ((v5 - 1) >= 2)
    {
      result = xmlStrdup("");
      *a1 = result;
      return result;
    }

    if (v5 == 2)
    {
      v6 = *(a3 + 40);
      v7 = xmlStrdup("Element '");
      *a1 = v7;
      v8 = *(v6 + 72);
      if (v8)
      {
        v9 = *(v8 + 16);
      }

      else
      {
        v9 = 0;
      }

      v25 = xmlSchemaFormatQName(&v32, v9, *(v6 + 16));
      v26 = xmlStrcat(v7, v25);
      *a1 = v26;
      if (v32)
      {
        free(v32);
        v32 = 0;
        v26 = *a1;
      }

      v27 = xmlStrcat(v26, "', ");
      *a1 = v27;
      v18 = xmlStrcat(v27, "attribute '");
    }

    else
    {
      v18 = xmlStrdup("Element '");
    }

    v28 = v18;
    *a1 = v18;
    v29 = *(a3 + 72);
    if (v29)
    {
      v30 = *(v29 + 16);
    }

    else
    {
      v30 = 0;
    }

    v23 = xmlSchemaFormatQName(&v32, v30, *(a3 + 16));
    v24 = v28;
LABEL_27:
    v31 = xmlStrcat(v24, v23);
    *a1 = v31;
    if (v32)
    {
      free(v32);
      v31 = *a1;
    }

    v19 = xmlStrcat(v31, "': ");
    goto LABEL_30;
  }

  if (*a2 != 1)
  {
    if (*a2 != 2)
    {
      v20 = *__xmlGenericError();
      v21 = __xmlGenericErrorContext();
      return (v20)(*v21, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 2344);
    }

    if (**(a2 + 192) == 2)
    {
      v11 = *(*(a2 + 176) + 8 * *(a2 + 172));
      v12 = xmlStrdup("Element '");
      *a1 = v12;
      v13 = xmlSchemaFormatQName(&v32, *(v11 + 32), *(v11 + 24));
      v14 = xmlStrcat(v12, v13);
      *a1 = v14;
      if (v32)
      {
        free(v32);
        v32 = 0;
        v14 = *a1;
      }

      v15 = xmlStrcat(v14, "', ");
      *a1 = v15;
      v16 = xmlStrcat(v15, "attribute '");
    }

    else
    {
      v16 = xmlStrdup("Element '");
    }

    v22 = v16;
    *a1 = v16;
    v23 = xmlSchemaFormatQName(&v32, *(*(a2 + 192) + 32), *(*(a2 + 192) + 24));
    v24 = v22;
    goto LABEL_27;
  }

  v19 = xmlStrdup("");
LABEL_30:
  *a1 = v19;

  return xmlEscapeFormatString(a1);
}

xmlChar *xmlSchemaGetComponentQName(void **a1, uint64_t a2)
{
  v2 = "http://www.w3.org/2001/XMLSchema";
  v3 = a2;
  while (1)
  {
    if (!v3)
    {
      v2 = 0;
      goto LABEL_23;
    }

    v4 = *v3;
    if (*v3 != 26)
    {
      break;
    }

    v3 = *(v3 + 24);
    if (!v3)
    {
      v5 = 0;
      goto LABEL_26;
    }
  }

  v5 = 0;
  if (v4 > 16)
  {
    if (v4 <= 21)
    {
      if (v4 != 17)
      {
        if (v4 != 18)
        {
          goto LABEL_26;
        }

        goto LABEL_19;
      }
    }

    else if ((v4 - 22) >= 3)
    {
      if (v4 != 2000)
      {
        goto LABEL_26;
      }

LABEL_19:
      v5 = *(v3 + 32);
      goto LABEL_26;
    }

    v5 = *(v3 + 40);
    goto LABEL_26;
  }

  if (v4 > 13)
  {
    if (v4 == 14)
    {
      v5 = *(v3 + 96);
    }

    else if (v4 == 15)
    {
      v5 = *(v3 + 112);
    }

    else
    {
      v5 = *(v3 + 104);
    }

    goto LABEL_26;
  }

  if ((v4 - 4) < 2)
  {
    v5 = *(v3 + 208);
    goto LABEL_26;
  }

  if (v4 == 1)
  {
LABEL_23:
    v5 = v2;
    goto LABEL_26;
  }

  while (1)
  {
LABEL_26:
    if (!a2)
    {
      goto LABEL_40;
    }

    v6 = *a2;
    if (*a2 != 26)
    {
      break;
    }

    a2 = *(a2 + 24);
    if (!a2)
    {
      goto LABEL_40;
    }
  }

  if (v6 <= 0x18)
  {
    if (((1 << v6) & 0x1C032) != 0)
    {
      v7 = 16;
LABEL_35:
      v8 = *(a2 + v7);
      return xmlSchemaFormatQName(a1, v5, v8);
    }

    if (((1 << v6) & 0x1C20000) != 0)
    {
      v7 = 32;
      goto LABEL_35;
    }

    if (v6 == 18)
    {
      v7 = 8;
      goto LABEL_35;
    }
  }

  if (v6 == 2000)
  {
    v7 = 24;
    goto LABEL_35;
  }

LABEL_40:
  v8 = 0;
  return xmlSchemaFormatQName(a1, v5, v8);
}

xmlChar *xmlSchemaGetComponentDesignation(xmlChar **a1, int *a2)
{
  v11 = 0;
  v4 = *a1;
  if (*a2 == 1)
  {
    if (a2[40] == 45)
    {
      v5 = "complex type definition";
    }

    else
    {
      v5 = "simple type definition";
    }
  }

  else
  {
    v5 = xmlSchemaItemTypeToStr(*a2);
  }

  v6 = xmlStrcat(v4, v5);
  *a1 = v6;
  v7 = xmlStrcat(v6, " '");
  *a1 = v7;
  ComponentQName = xmlSchemaGetComponentQName(&v11, a2);
  v9 = xmlStrcat(v7, ComponentQName);
  *a1 = v9;
  result = xmlStrcat(v9, "'");
  *a1 = result;
  if (v11)
  {
    free(v11);
    return *a1;
  }

  return result;
}

uint64_t xmlSchemaGetSchemaBucketByTNS(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 48) + 24);
  v3 = *(v2 + 2);
  if (v3 < 1)
  {
    return 0;
  }

  for (i = *v2; ; ++i)
  {
    result = *i;
    if ((*(*i + 32) || !*(result + 8)) && *(result + 16) == a2 && *(result + 56))
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void xmlSchemaCustomWarning(_DWORD *a1, int a2, uint64_t a3, const xmlChar *a4, const xmlChar *a5, xmlChar *a6, xmlChar *a7)
{
  cur = 0;
  xmlSchemaFormatNodeForError(&cur, a1, a3);
  cur = xmlStrcat(cur, a4);
  cur = xmlStrcat(cur, ".\n");
  xmlSchemaErr4Line(a1, 1, a2, a3, 0, cur, a5, a6, a7, 0);
  if (cur)
  {
    free(cur);
  }
}

uint64_t xmlSchemaGetChameleonSchemaBucket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 48) + 24);
  v4 = *(v3 + 2);
  if (v4 < 1)
  {
    return 0;
  }

  for (i = *v3; ; ++i)
  {
    result = *i;
    if (!*(*i + 16) && *(result + 8) == a2 && *(result + 24) == a3)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

_DWORD *xmlSchemaPErr(uint64_t a1, uint64_t a2, int a3, const char *a4, const xmlChar *a5, xmlChar *a6)
{
  v8 = a1;
  if (a1)
  {
    v9 = *(a1 + 36) + 1;
    *(a1 + 32) = a3;
    *(a1 + 36) = v9;
    v11 = *(a1 + 8);
    v10 = *(a1 + 16);
    a1 = *(a1 + 40);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  return __xmlRaiseError(a1, v10, v11, v8, a2, 0x10u, a3, 2, 0, 0, a5, a6, 0, 0, 0, a4, a5);
}

xmlChar *xmlSchemaGetProp(uint64_t a1, xmlNode *node, xmlChar *name)
{
  result = xmlGetNoNsProp(node, name);
  if (result)
  {
    v5 = result;
    v6 = xmlDictLookup(*(a1 + 152), result, -1);
    free(v5);
    return v6;
  }

  return result;
}

uint64_t xmlSchemaItemListAddSize(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (*(a1 + 12) > v5)
  {
    goto LABEL_4;
  }

  if ((xmlSchemaItemListGrow(a1, a2) & 0x80000000) == 0)
  {
    v5 = *(a1 + 8);
LABEL_4:
    result = 0;
    v7 = *a1;
    *(a1 + 8) = v5 + 1;
    *(v7 + 8 * v5) = a3;
    return result;
  }

  __xmlSimpleError(0x10u, 2, 0, 0, "growing item list");
  return 0xFFFFFFFFLL;
}

uint64_t xmlSchemaItemListGrow(uint64_t a1, int a2)
{
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(a1 + 12);
  if (v4 >= 1)
  {
    if (v4 > 0x3B9AC9FF)
    {
      return 0xFFFFFFFFLL;
    }

    if (1000000000 - ((v4 + 1) >> 1) >= v4)
    {
      v3 = v4 + ((v4 + 1) >> 1);
    }

    else
    {
      v3 = 1000000000;
    }
  }

  v5 = malloc_type_realloc(*a1, 8 * v3, 0x80040B8603338uLL);
  if (v5)
  {
    v6 = v5;
    result = 0;
    *a1 = v6;
    *(a1 + 12) = v3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

uint64_t xmlSchemaGetPropNode(uint64_t a1, xmlChar *str2)
{
  i = 0;
  if (a1)
  {
    if (str2)
    {
      for (i = *(a1 + 88); i; i = *(i + 48))
      {
        if (!*(i + 72) && xmlStrEqual(*(i + 16), str2))
        {
          break;
        }
      }
    }
  }

  return i;
}

uint64_t xmlSchemaPValAttrNode(_DWORD *a1, xmlNode *a2, xmlSchemaType *a3, xmlChar **a4)
{
  if (!a2 || !a3)
  {
    return 0xFFFFFFFFLL;
  }

  NodeContent = xmlSchemaGetNodeContent(a1, a2);
  if (a4)
  {
    *a4 = NodeContent;
  }

  return xmlSchemaPValAttrNodeValue(a1, a2, NodeContent, a3);
}

const xmlChar *xmlSchemaGetNodeContent(uint64_t a1, xmlNode *cur)
{
  Content = xmlNodeGetContent(cur);
  if (!Content)
  {
    Content = xmlStrdup("");
  }

  v4 = xmlDictLookup(*(a1 + 152), Content, -1);
  free(Content);
  return v4;
}

BOOL xmlSchemaPValAttrFormDefault(const xmlChar *a1, _DWORD *a2, int a3)
{
  if (xmlStrEqual(a1, "qualified"))
  {
    if ((*a2 & a3) == 0)
    {
      *a2 |= a3;
    }

    return 0;
  }

  return !xmlStrEqual(a1, "unqualified");
}

void xmlSchemaPSimpleTypeErr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5, const xmlChar *a6, const xmlChar *a7, char a8)
{
  cur = 0;
  xmlSchemaFormatNodeForError(&cur, a1, a3);
  if (a7)
  {
    cur = xmlStrcat(cur, a7);
    cur = xmlStrcat(cur, ".\n");
    xmlSchemaPErrExt(a1, a3, a2, cur, a8);
    goto LABEL_37;
  }

  v16 = *(a3 + 8);
  if (!a4)
  {
    if (v16 == 2)
    {
      v24 = "The value '%s' is not valid.";
    }

    else
    {
      v24 = "The character content is not valid.";
    }

    cur = xmlStrcat(cur, v24);
    goto LABEL_28;
  }

  if (v16 == 2)
  {
    v17 = "'%s' is not a valid value of ";
  }

  else
  {
    v17 = "The character content is not a valid value of ";
  }

  v18 = xmlStrcat(cur, v17);
  cur = v18;
  if (xmlSchemaIsGlobalItem(a4))
  {
    v19 = "the ";
  }

  else
  {
    v19 = "the local ";
  }

  v20 = xmlStrcat(v18, v19);
  v21 = v20;
  cur = v20;
  v22 = *(a4 + 88);
  if ((v22 & 0x100) != 0)
  {
    v23 = "atomic type";
  }

  else if ((v22 & 0x40) != 0)
  {
    v23 = "list type";
  }

  else
  {
    if ((v22 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    v23 = "union type";
  }

  v21 = xmlStrcat(v20, v23);
  cur = v21;
LABEL_21:
  if (xmlSchemaIsGlobalItem(a4))
  {
    v35 = 0;
    v25 = xmlStrcat(v21, " '");
    cur = v25;
    if (*(a4 + 160))
    {
      cur = xmlStrcat(v25, "xs:");
      v26 = *(a4 + 16);
    }

    else
    {
      v26 = xmlSchemaFormatQName(&v35, *(a4 + 208), *(a4 + 16));
      if (v35)
      {
LABEL_26:
        v27 = cur;
        v28 = xmlEscapeFormatString(&v35);
        cur = xmlStrcat(v27, v28);
        cur = xmlStrcat(cur, "'.");
        if (v35)
        {
          free(v35);
        }

        goto LABEL_28;
      }
    }

    v35 = xmlStrdup(v26);
    goto LABEL_26;
  }

LABEL_28:
  if (a5)
  {
    v35 = xmlCharStrdup(a5);
    v29 = xmlStrcat(cur, " Expected is '");
    cur = v29;
    v30 = xmlEscapeFormatString(&v35);
    v31 = xmlStrcat(v29, v30);
    cur = v31;
    if (v35)
    {
      free(v35);
      v35 = 0;
      v31 = cur;
    }

    v32 = "'.\n";
  }

  else
  {
    v31 = cur;
    v32 = "\n";
  }

  v33 = xmlStrcat(v31, v32);
  cur = v33;
  if (*(a3 + 8) == 2)
  {
    v34 = a6;
  }

  else
  {
    v34 = 0;
  }

  xmlSchemaPErr(a1, a3, a2, v33, v34, 0);
LABEL_37:
  if (cur)
  {
    free(cur);
  }
}

uint64_t xmlSchemaPValAttrBlockFinal(xmlChar *str1, int *a2, int a3, int a4, int a5, int a6, int a7)
{
  result = 0xFFFFFFFFLL;
  if (str1 && a2)
  {
    if (!*str1)
    {
      return 0;
    }

    if (xmlStrEqual(str1, "#all"))
    {
      if (a3 == -1)
      {
        v15 = 0;
      }

      else
      {
        v15 = a3;
      }

      if (a5 == -1)
      {
        v16 = 0;
      }

      else
      {
        v16 = a5;
      }

      v17 = v15 | v16;
      if (a6 == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = a6;
      }

      v19 = *a2 | v17 | v18 | a4;
      *a2 = v19;
      if (a7 != -1)
      {
        result = 0;
        *a2 = v19 | a7;
        return result;
      }

      return 0;
    }

    v29 = a4;
    while (1)
    {
      while (1)
      {
        v20 = *str1;
        if (v20 > 0x20 || ((1 << v20) & 0x100002600) == 0)
        {
          break;
        }

        ++str1;
      }

      v22 = 0;
      while (v20 > 0x20u || ((1 << v20) & 0x100002601) == 0)
      {
        LOBYTE(v20) = str1[++v22];
      }

      if (!v22)
      {
        return 0;
      }

      v23 = xmlStrndup(str1, v22);
      if (xmlStrEqual(v23, "extension"))
      {
        break;
      }

      if (xmlStrEqual(v23, "restriction"))
      {
        v25 = *a2;
        v26 = v29;
        goto LABEL_33;
      }

      if (xmlStrEqual(v23, "substitution"))
      {
        if (a5 != -1)
        {
          if ((*a2 & a5) == 0)
          {
            v24 = *a2 | a5;
LABEL_35:
            *a2 = v24;
          }

          goto LABEL_36;
        }

        goto LABEL_44;
      }

      if (xmlStrEqual(v23, "list"))
      {
        v26 = a6;
        if (a6 != -1)
        {
          v25 = *a2;
          goto LABEL_33;
        }

LABEL_44:
        v27 = 0;
        goto LABEL_45;
      }

      v28 = xmlStrEqual(v23, "union");
      v27 = 0;
      if (a7 != -1 && v28)
      {
        v25 = *a2;
        v26 = a7;
LABEL_33:
        if ((v25 & v26) == 0)
        {
          v24 = v25 | v26;
          goto LABEL_35;
        }

LABEL_36:
        v27 = 1;
      }

LABEL_45:
      if (v23)
      {
        free(v23);
      }

      if (!v27)
      {
        return 1;
      }

      str1 += v22;
      if (!*str1)
      {
        return 0;
      }
    }

    if (a3 != -1)
    {
      if ((*a2 & a3) == 0)
      {
        v24 = *a2 | a3;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    goto LABEL_44;
  }

  return result;
}

uint64_t xmlSchemaPValAttrNodeID(uint64_t a1, xmlNode *cur)
{
  Content = xmlNodeGetContent(cur);
  v5 = xmlValidateNCName(Content, 1);
  if (v5)
  {
    v6 = v5;
    if (v5 >= 1)
    {
      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ID);
      v8 = "The value '%s' of simple type 'xs:ID' is not a valid 'xs:NCName'";
      goto LABEL_4;
    }
  }

  else
  {
    if ((cur->content & 0x87FFFFFF) != 2)
    {
      v10 = xmlSchemaCollapseString(Content);
      if (v10)
      {
        v11 = v10;
        free(Content);
        Content = v11;
      }

      if (!xmlAddID(0, cur->doc, Content, cur))
      {
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ID);
        v8 = "Duplicate value '%s' of simple type 'xs:ID'";
LABEL_4:
        v6 = 3037;
        xmlSchemaPSimpleTypeErr(a1, 3037, cur, BuiltInType, 0, 0, v8, Content);
        if (!Content)
        {
          return v6;
        }

        goto LABEL_9;
      }

      v6 = 0;
      LODWORD(cur->content) = cur->content & 0x78000000 | 2;
      if (!Content)
      {
        return v6;
      }

LABEL_9:
      free(Content);
      return v6;
    }

    v6 = 0;
  }

  if (Content)
  {
    goto LABEL_9;
  }

  return v6;
}

uint64_t xmlSchemaPValAttrNodeValue(_DWORD *a1, xmlNodePtr node, xmlChar *value, xmlSchemaTypePtr type)
{
  if (!type)
  {
    return 0xFFFFFFFFLL;
  }

  if (type->type != XML_SCHEMA_TYPE_BASIC)
  {
    v14 = "the given type is not a built-in type";
LABEL_17:
    xmlSchemaInternalErr2(a1, "xmlSchemaPValAttrNodeValue", v14, 0);
    return 0xFFFFFFFFLL;
  }

  builtInType = type->builtInType;
  v7 = builtInType > 0x1D;
  v8 = (1 << builtInType) & 0x20630000;
  if (v7 || v8 == 0)
  {
    v14 = "validation using the given type is not supported while parsing a schema";
    goto LABEL_17;
  }

  v12 = xmlSchemaValPredefTypeNode(type, value, 0, node);
  if (v12 < 0)
  {
    v14 = "failed to validate a schema attribute value";
    goto LABEL_17;
  }

  if (!v12)
  {
    return 0;
  }

  if ((type->flags & 0x40) != 0)
  {
    v13 = 1825;
  }

  else
  {
    v13 = 1824;
  }

  xmlSchemaPSimpleTypeErr(a1, v13, node, type, 0, value, 0, 0);
  return v13;
}

BOOL xmlSchemaIsGlobalItem(int *a1)
{
  v1 = *a1;
  if ((*a1 - 4) < 2)
  {
    if ((a1[22] & 8) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v1 != 14)
    {
      return v1 != 15 || (a1[30] & 1) != 0;
    }

    if ((a1[22] & 2) == 0)
    {
      return 0;
    }
  }

  return 1;
}

_DWORD *xmlSchemaPErrExt(uint64_t a1, uint64_t a2, int a3, const char *a4, char a5)
{
  v7 = a1;
  if (a1)
  {
    v8 = *(a1 + 36) + 1;
    *(a1 + 32) = a3;
    *(a1 + 36) = v8;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    a1 = *(a1 + 40);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return __xmlRaiseError(a1, v9, v10, v7, a2, 0x10u, a3, 2, 0, 0, 0, 0, 0, 0, 0, a4, a5);
}

void *xmlSchemaParseAnnotation(_DWORD *a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a3)
  {
    v5 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    if (v5)
    {
      v6 = v5;
      *v5 = 0;
      v5[1] = a2;
      goto LABEL_10;
    }

    if (a1)
    {
      ++a1[9];
    }

    __xmlSimpleError(0x10u, 2, a2, 0, "allocating annotation");
  }

  v6 = 0;
LABEL_10:
  v7 = *(a2 + 88);
  if (v7)
  {
    while (1)
    {
      v8 = *(v7 + 72);
      if (v8)
      {
        goto LABEL_12;
      }

      if (xmlStrEqual(*(v7 + 16), "id"))
      {
        break;
      }

LABEL_17:
      xmlSchemaPIllegalAttrErr(a1, v7);
LABEL_18:
      v7 = *(v7 + 48);
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    v8 = *(v7 + 72);
    if (!v8)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (!xmlStrEqual(*(v8 + 16), "http://www.w3.org/2001/XMLSchema"))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  PropNode = xmlSchemaGetPropNode(a2, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  v10 = *(a2 + 24);
  if (v10)
  {
    v22 = v6;
    v11 = 0;
    while (1)
    {
      if (!*(v10 + 72))
      {
LABEL_54:
        if (!v11)
        {
          xmlSchemaPContentErr(a1, 3033, a2, v10, 0, "(appinfo | documentation)*");
        }

        v11 = 1;
        goto LABEL_57;
      }

      if (xmlStrEqual(*(v10 + 16), "appinfo") && xmlStrEqual(*(*(v10 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        v12 = *(v10 + 88);
        if (!v12)
        {
LABEL_35:
          BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
          xmlSchemaPValAttr(a1, v10, "source", BuiltInType, 0);
          goto LABEL_57;
        }

        while (2)
        {
          v13 = *(v12 + 72);
          if (v13)
          {
LABEL_28:
            if (!xmlStrEqual(*(v13 + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_34;
            }
          }

          else if (xmlStrEqual(*(v12 + 16), "source"))
          {
            v13 = *(v12 + 72);
            if (v13)
            {
              goto LABEL_28;
            }

LABEL_34:
            v12 = *(v12 + 48);
            if (!v12)
            {
              goto LABEL_35;
            }

            continue;
          }

          break;
        }

        xmlSchemaPIllegalAttrErr(a1, v12);
        goto LABEL_34;
      }

      if (!*(v10 + 72) || !xmlStrEqual(*(v10 + 16), "documentation") || !xmlStrEqual(*(*(v10 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_54;
      }

      v15 = *(v10 + 88);
      if (!v15)
      {
        goto LABEL_57;
      }

      do
      {
        v16 = *(v15 + 72);
        if (!v16)
        {
          v17 = *(v15 + 16);
          v18 = "source";
          goto LABEL_45;
        }

        if (!xmlStrEqual(*(v16 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          if (!xmlStrEqual(*(v15 + 16), "lang"))
          {
            goto LABEL_47;
          }

          v17 = *(*(v15 + 72) + 16);
          v18 = "http://www.w3.org/XML/1998/namespace";
LABEL_45:
          if (xmlStrEqual(v17, v18))
          {
            goto LABEL_47;
          }
        }

        xmlSchemaPIllegalAttrErr(a1, v15);
LABEL_47:
        v15 = *(v15 + 48);
      }

      while (v15);
      v19 = *(v10 + 88);
      if (v19)
      {
        while (!v19->ns || !xmlStrEqual(v19->name, "lang") || !xmlStrEqual(v19->ns->href, "http://www.w3.org/XML/1998/namespace"))
        {
          v19 = v19->next;
          if (!v19)
          {
            goto LABEL_57;
          }
        }

        v20 = xmlSchemaGetBuiltInType(XML_SCHEMAS_LANGUAGE);
        xmlSchemaPValAttrNode(a1, v19, v20, 0);
      }

LABEL_57:
      v10 = *(v10 + 48);
      if (!v10)
      {
        return v22;
      }
    }
  }

  return v6;
}

uint64_t xmlSchemaParseComplexType(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v62 = 0;
  next = 0;
  v8 = *(a1 + 160);
  if (a4)
  {
    PropNode = xmlSchemaGetPropNode(a3, "name");
    if (!PropNode)
    {
      xmlSchemaPMissingAttrErr(a1, a3, "name");
      return PropNode;
    }

    BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
    if (xmlSchemaPValAttrNode(a1, PropNode, BuiltInType, &v62))
    {
      return 0;
    }

    v11 = xmlSchemaAddType(a1, a2, 5, v62, *(a1 + 200), a3, 1);
    PropNode = v11;
    if (!v11)
    {
      return PropNode;
    }

    v11[9] = a3;
    *v11 = 5;
    *(v11 + 22) |= 8u;
  }

  else
  {
    v12 = xmlSchemaAddType(a1, a2, 5, 0, *(a1 + 200), a3, 0);
    PropNode = v12;
    if (!v12)
    {
      return PropNode;
    }

    v62 = v12[2];
    v12[9] = a3;
    *v12 = 5;
  }

  *(PropNode + 208) = *(a1 + 200);
  v13 = *(a3 + 88);
  if (v13)
  {
    v59 = 0;
    v14 = 1;
    while (1)
    {
      while (1)
      {
        ns = v13->ns;
        if (!ns)
        {
          break;
        }

        if (xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_12;
        }

LABEL_22:
        v13 = v13->next;
        if (!v13)
        {
          v21 = v59 == 0;
          if (v14)
          {
            goto LABEL_42;
          }

          goto LABEL_45;
        }
      }

      if (xmlStrEqual(v13->name, "id"))
      {
        v16 = xmlSchemaGetPropNode(a3, "id");
        if (v16)
        {
          xmlSchemaPValAttrNodeID(a1, v16);
        }

        goto LABEL_22;
      }

      if (xmlStrEqual(v13->name, "mixed"))
      {
        if (xmlSchemaPGetBoolNodeValue(a1, v13))
        {
          v17 = *(PropNode + 88) | 1;
LABEL_19:
          *(PropNode + 88) = v17;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      if (!a4)
      {
        goto LABEL_12;
      }

      if (xmlStrEqual(v13->name, "name"))
      {
        goto LABEL_22;
      }

      if (xmlStrEqual(v13->name, "abstract"))
      {
        if (!xmlSchemaPGetBoolNodeValue(a1, v13))
        {
          goto LABEL_22;
        }

        v17 = *(PropNode + 88) | 0x100000;
        goto LABEL_19;
      }

      if (xmlStrEqual(v13->name, "final"))
      {
        NodeContent = xmlSchemaGetNodeContent(a1, v13);
        if (!xmlSchemaPValAttrBlockFinal(NodeContent, (PropNode + 88), 512, 1024, -1, -1, -1))
        {
          v59 = 1;
          goto LABEL_22;
        }

        v18 = a1;
        v19 = v13;
        v20 = "(#all | List of (extension | restriction))";
        goto LABEL_33;
      }

      if (!xmlStrEqual(v13->name, "block"))
      {
LABEL_12:
        xmlSchemaPIllegalAttrErr(a1, v13);
        goto LABEL_22;
      }

      NodeContent = xmlSchemaGetNodeContent(a1, v13);
      if (xmlSchemaPValAttrBlockFinal(NodeContent, (PropNode + 88), 0x40000, 0x80000, -1, -1, -1))
      {
        v18 = a1;
        v19 = v13;
        v20 = "(#all | List of (extension | restriction)) ";
LABEL_33:
        xmlSchemaPSimpleTypeErr(v18, 3037, v19, 0, v20, NodeContent, 0, 0);
        goto LABEL_22;
      }

      v14 = 0;
      v13 = v13->next;
      if (!v13)
      {
        if (v59)
        {
          goto LABEL_52;
        }

        goto LABEL_48;
      }
    }
  }

  v21 = 1;
LABEL_42:
  v22 = *(a2 + 48);
  if ((v22 & 0x80) != 0)
  {
    *(PropNode + 88) |= 0x80000u;
  }

  if ((v22 & 0x40) != 0)
  {
    *(PropNode + 88) |= 0x40000u;
    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
LABEL_45:
    if (!v21)
    {
      goto LABEL_52;
    }
  }

LABEL_48:
  v23 = *(a2 + 48);
  if ((v23 & 8) != 0)
  {
    *(PropNode + 88) |= 0x400u;
  }

  if ((v23 & 4) != 0)
  {
    *(PropNode + 88) |= 0x200u;
  }

LABEL_52:
  v24 = *(a3 + 24);
  next = v24;
  if (v24)
  {
    if (v24->ns && xmlStrEqual(v24->name, "annotation") && xmlStrEqual(v24->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      v25 = 1;
      *(PropNode + 48) = xmlSchemaParseAnnotation(a1, v24, 1);
      v24 = v24->next;
      next = v24;
      *(a1 + 160) = PropNode;
      if (!v24)
      {
        goto LABEL_110;
      }
    }

    else
    {
      *(a1 + 160) = PropNode;
    }

    if (v24->ns)
    {
      v26 = xmlStrEqual(v24->name, "simpleContent");
      v27 = v24->ns;
      if (v26)
      {
        if (xmlStrEqual(v27->href, "http://www.w3.org/2001/XMLSchema"))
        {
          v61 = v8;
          v28 = *(PropNode + 88);
          if (v28)
          {
            *(PropNode + 88) = v28 & 0xFFFFFFFE;
          }

          v29 = *(a1 + 160);
          *(v29 + 92) = 4;
          properties = v24->properties;
          if (properties)
          {
            while (1)
            {
              v31 = *(properties + 72);
              if (!v31)
              {
                break;
              }

              if (xmlStrEqual(*(v31 + 16), "http://www.w3.org/2001/XMLSchema"))
              {
                goto LABEL_67;
              }

LABEL_68:
              properties = *(properties + 48);
              if (!properties)
              {
                goto LABEL_73;
              }
            }

            if (xmlStrEqual(*(properties + 16), "id"))
            {
              goto LABEL_68;
            }

LABEL_67:
            xmlSchemaPIllegalAttrErr(a1, properties);
            goto LABEL_68;
          }

LABEL_73:
          v32 = xmlSchemaGetPropNode(v24, "id");
          if (v32)
          {
            xmlSchemaPValAttrNodeID(a1, v32);
          }

          children = v24->children;
          if (!children || *(children + 72) && xmlStrEqual(*(children + 16), "annotation") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") && (v34 = xmlSchemaParseAnnotation(a1, children, 1), xmlSchemaAddAnnotation(v29, v34), (children = *(children + 48)) == 0))
          {
            xmlSchemaPContentErr(a1, 3034, v24, 0, 0, "(annotation?, (restriction | extension))");
            xmlSchemaPContentErr(a1, 3034, v24, 0, 0, "(annotation?, (restriction | extension))");
            v46 = 0;
            v8 = v61;
            goto LABEL_152;
          }

          if (!*(children + 72))
          {
            v46 = 0;
            v8 = v61;
            goto LABEL_151;
          }

          if (xmlStrEqual(*(children + 16), "restriction") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            xmlSchemaParseRestriction(a1, a2, children, 9);
            v8 = v61;
            goto LABEL_148;
          }

          v8 = v61;
          if (*(children + 72) && xmlStrEqual(*(children + 16), "extension") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            v49 = a1;
            v50 = a2;
            v51 = children;
            v52 = 9;
LABEL_147:
            xmlSchemaParseExtension(v49, v50, v51, v52);
LABEL_148:
            children = *(children + 48);
            v46 = 1;
            if (!children)
            {
LABEL_152:
              v24 = v24->next;
              next = v24;
              if (!v24)
              {
                goto LABEL_154;
              }

              goto LABEL_153;
            }

LABEL_151:
            xmlSchemaPContentErr(a1, 3033, v24, children, 0, "(annotation?, (restriction | extension))");
            v24 = next;
            goto LABEL_152;
          }

          goto LABEL_150;
        }

        v27 = v24->ns;
      }

      if (v27 && xmlStrEqual(v24->name, "complexContent") && xmlStrEqual(v24->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        *(PropNode + 92) = 1;
        v60 = *(a1 + 160);
        v35 = v24->properties;
        if (!v35)
        {
LABEL_95:
          v37 = xmlSchemaGetPropNode(v24, "id");
          if (v37)
          {
            xmlSchemaPValAttrNodeID(a1, v37);
          }

          if (xmlGetBooleanProp(a1, v24, "mixed"))
          {
            v38 = *(v60 + 88);
            if ((v38 & 1) == 0)
            {
              *(v60 + 88) = v38 | 1;
            }
          }

          children = v24->children;
          if (!children || *(children + 72) && xmlStrEqual(*(children + 16), "annotation") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") && (v39 = xmlSchemaParseAnnotation(a1, children, 1), xmlSchemaAddAnnotation(v60, v39), (children = *(children + 48)) == 0))
          {
            xmlSchemaPContentErr(a1, 3034, v24, 0, 0, "(annotation?, (restriction | extension))");
            xmlSchemaPContentErr(a1, 3034, v24, 0, 0, "(annotation?, (restriction | extension))");
            v46 = 0;
            goto LABEL_152;
          }

          if (*(children + 72))
          {
            if (xmlStrEqual(*(children + 16), "restriction") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              xmlSchemaParseRestriction(a1, a2, children, 10);
              goto LABEL_148;
            }

            if (*(children + 72) && xmlStrEqual(*(children + 16), "extension") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              v49 = a1;
              v50 = a2;
              v51 = children;
              v52 = 10;
              goto LABEL_147;
            }
          }

LABEL_150:
          v46 = 0;
          goto LABEL_151;
        }

        while (1)
        {
          v36 = *(v35 + 72);
          if (!v36)
          {
            break;
          }

          if (xmlStrEqual(*(v36 + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            goto LABEL_91;
          }

LABEL_94:
          v35 = *(v35 + 48);
          if (!v35)
          {
            goto LABEL_95;
          }
        }

        if (xmlStrEqual(*(v35 + 16), "id") || xmlStrEqual(*(v35 + 16), "mixed"))
        {
          goto LABEL_94;
        }

LABEL_91:
        xmlSchemaPIllegalAttrErr(a1, v35);
        goto LABEL_94;
      }
    }

    v25 = 0;
  }

  else
  {
    *(a1 + 160) = PropNode;
    v25 = 1;
  }

LABEL_110:
  *(PropNode + 112) = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
  *(PropNode + 88) |= 4u;
  if ((v25 & 1) == 0 && v24->ns)
  {
    v40 = xmlStrEqual(v24->name, "all");
    v41 = v24->ns;
    if (v40)
    {
      if (xmlStrEqual(v41->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v42 = a1;
        v43 = a2;
        v44 = v24;
        v45 = 8;
LABEL_132:
        v55 = xmlSchemaParseModelGroup(v42, v43, v44, v45, 1);
LABEL_133:
        *(PropNode + 56) = v55;
        next = v24->next;
        goto LABEL_134;
      }

      v41 = v24->ns;
    }

    if (!v41)
    {
      goto LABEL_134;
    }

    v47 = xmlStrEqual(v24->name, "choice");
    v48 = v24->ns;
    if (v47)
    {
      if (xmlStrEqual(v48->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v42 = a1;
        v43 = a2;
        v44 = v24;
        v45 = 7;
        goto LABEL_132;
      }

      v48 = v24->ns;
    }

    if (!v48)
    {
      goto LABEL_134;
    }

    v53 = xmlStrEqual(v24->name, "sequence");
    v54 = v24->ns;
    if (v53)
    {
      if (xmlStrEqual(v54->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v42 = a1;
        v43 = a2;
        v44 = v24;
        v45 = 6;
        goto LABEL_132;
      }

      v54 = v24->ns;
    }

    if (v54 && xmlStrEqual(v24->name, "group") && xmlStrEqual(v24->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      v55 = xmlSchemaParseModelGroupDefRef(a1, a2, v24);
      goto LABEL_133;
    }
  }

LABEL_134:
  if (xmlSchemaParseLocalAttributes(a1, a2, &next, (PropNode + 216), 12, 0) == -1)
  {
    return 0;
  }

  v24 = next;
  if (!next)
  {
    v46 = 0;
    goto LABEL_154;
  }

  if (next->ns && xmlStrEqual(next->name, "anyAttribute") && xmlStrEqual(v24->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    v56 = xmlSchemaParseAnyAttribute(a1, a2, v24);
    v46 = 0;
    *(PropNode + 152) = v56;
    goto LABEL_152;
  }

  v46 = 0;
LABEL_153:
  xmlSchemaPContentErr(a1, 3033, a3, v24, 0, "(annotation?, (simpleContent | complexContent | ((group | all | choice | sequence)?, ((attribute | attributeGroup)*, anyAttribute?))))");
LABEL_154:
  if (a4 && !v46 && *(a1 + 188))
  {
    xmlSchemaPCustomErrExt(a1, 3081, 0, a3, "This is a redefinition, thus the <complexType> must have a <restriction> or <extension> grand-child");
  }

  *(a1 + 160) = v8;
  return PropNode;
}

uint64_t xmlSchemaParseSimpleType(uint64_t a1, uint64_t a2, xmlNode *a3, int a4)
{
  name = 0;
  if (!a3)
  {
    return 0;
  }

  if (!a4)
  {
    v10 = xmlSchemaAddType(a1, a2, 4, 0, *(a1 + 200), a3, 0);
    PropNode = v10;
    if (!v10)
    {
      return PropNode;
    }

    *v10 = 4;
    v10[23] = 4;
    properties = a3->properties;
    if (!properties)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v12 = *(properties + 72);
      if (!v12)
      {
        break;
      }

      if (xmlStrEqual(*(v12 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_10;
      }

LABEL_11:
      properties = *(properties + 48);
      if (!properties)
      {
        goto LABEL_36;
      }
    }

    if (xmlStrEqual(*(properties + 16), "id"))
    {
      goto LABEL_11;
    }

LABEL_10:
    xmlSchemaPIllegalAttrErr(a1, properties);
    goto LABEL_11;
  }

  PropNode = xmlSchemaGetPropNode(a3, "name");
  if (!PropNode)
  {
    xmlSchemaPMissingAttrErr(a1, a3, "name");
    return PropNode;
  }

  BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
  if (xmlSchemaPValAttrNode(a1, PropNode, BuiltInType, &name))
  {
    return 0;
  }

  if (*(a1 + 184))
  {
    if (*(a1 + 188))
    {
      xmlSchemaPCustomErrExt(a1, 3081, 0, a3, "Redefinition of built-in simple types is not supported");
      return 0;
    }

    PropNode = xmlSchemaGetPredefinedType(name, "http://www.w3.org/2001/XMLSchema");
    if (PropNode)
    {
      return PropNode;
    }
  }

  v13 = xmlSchemaAddType(a1, a2, 4, name, *(a1 + 200), a3, 1);
  PropNode = v13;
  if (!v13)
  {
    return PropNode;
  }

  *v13 = 4;
  v13[23] = 4;
  v14 = v13 + 22;
  v13[22] |= 8u;
  v15 = a3->properties;
  if (v15)
  {
    while (1)
    {
      v16 = *(v15 + 72);
      if (!v16)
      {
        break;
      }

      if (xmlStrEqual(*(v16 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_24;
      }

LABEL_28:
      v15 = *(v15 + 48);
      if (!v15)
      {
        goto LABEL_29;
      }
    }

    if (xmlStrEqual(*(v15 + 16), "id") || xmlStrEqual(*(v15 + 16), "name") || xmlStrEqual(*(v15 + 16), "final"))
    {
      goto LABEL_28;
    }

LABEL_24:
    xmlSchemaPIllegalAttrErr(a1, v15);
    goto LABEL_28;
  }

LABEL_29:
  v17 = xmlSchemaGetPropNode(a3, "final");
  if (v17)
  {
    v18 = v17;
    name = xmlSchemaGetProp(a1, a3, "final");
    if (xmlSchemaPValAttrBlockFinal(name, (PropNode + 88), -1, 1024, -1, 2048, 4096))
    {
      xmlSchemaPSimpleTypeErr(a1, 3037, v18, 0, "(#all | List of (list | union | restriction)", name, 0, 0);
    }

    goto LABEL_36;
  }

  v19 = *(a2 + 48);
  if ((v19 & 8) == 0)
  {
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_34;
    }

LABEL_78:
    *v14 |= 0x800u;
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  *v14 |= 0x400u;
  if ((v19 & 0x10) != 0)
  {
    goto LABEL_78;
  }

LABEL_34:
  if ((v19 & 0x20) != 0)
  {
LABEL_35:
    *v14 |= 0x1000u;
  }

LABEL_36:
  *(PropNode + 208) = *(a1 + 200);
  v20 = xmlSchemaGetPropNode(a3, "id");
  if (v20)
  {
    xmlSchemaPValAttrNodeID(a1, v20);
  }

  v21 = *(a1 + 160);
  *(a1 + 160) = PropNode;
  children = a3->children;
  if (!children || *(children + 72) && xmlStrEqual(*(children + 16), "annotation") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") && (*(PropNode + 48) = xmlSchemaParseAnnotation(a1, children, 1), (children = *(children + 48)) == 0))
  {
    xmlSchemaPContentErr(a1, 3034, a3, 0, 0, "(annotation?, (restriction | list | union))");
    v23 = 0;
    goto LABEL_91;
  }

  if (!*(children + 72))
  {
    goto LABEL_74;
  }

  if (xmlStrEqual(*(children + 16), "restriction") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    xmlSchemaParseRestriction(a1, a2, children, 4);
    v23 = 1;
    goto LABEL_89;
  }

  if (!*(children + 72))
  {
    goto LABEL_74;
  }

  if (!xmlStrEqual(*(children + 16), "list") || !xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    if (*(children + 72) && xmlStrEqual(*(children + 16), "union") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
    {
      xmlSchemaParseUnion(a1, a2, children);
      goto LABEL_88;
    }

LABEL_74:
    v23 = 0;
LABEL_90:
    xmlSchemaPContentErr(a1, 3033, a3, children, 0, "(annotation?, (restriction | list | union))");
    goto LABEL_91;
  }

  v24 = *(a1 + 160);
  *(v24 + 88) |= 0x40u;
  v32 = v24;
  *(v24 + 112) = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYSIMPLETYPE);
  v25 = *(children + 88);
  if (v25)
  {
    while (1)
    {
      v26 = *(v25 + 72);
      if (!v26)
      {
        break;
      }

      if (xmlStrEqual(*(v26 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_54;
      }

LABEL_57:
      v25 = *(v25 + 48);
      if (!v25)
      {
        goto LABEL_58;
      }
    }

    if (xmlStrEqual(*(v25 + 16), "id") || xmlStrEqual(*(v25 + 16), "itemType"))
    {
      goto LABEL_57;
    }

LABEL_54:
    xmlSchemaPIllegalAttrErr(a1, v25);
    goto LABEL_57;
  }

LABEL_58:
  v27 = xmlSchemaGetPropNode(children, "id");
  if (v27)
  {
    xmlSchemaPValAttrNodeID(a1, v27);
  }

  xmlSchemaPValAttrQName(a1, a2, children, "itemType", (v32 + 104), (v32 + 96));
  v28 = *(children + 24);
  if (v28 && (!*(v28 + 72) || !xmlStrEqual(*(v28 + 16), "annotation") || !xmlStrEqual(*(*(v28 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v29 = xmlSchemaParseAnnotation(a1, v28, 1), xmlSchemaAddAnnotation(v32, v29), (v28 = *(v28 + 48)) != 0)) && *(v28 + 72) && xmlStrEqual(*(v28 + 16), "simpleType") && xmlStrEqual(*(*(v28 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    if (*(v32 + 96))
    {
      xmlSchemaPCustomErrExt(a1, 3000, 0, children, "The attribute 'itemType' and the <simpleType> child are mutually exclusive");
    }

    else
    {
      *(v32 + 56) = xmlSchemaParseSimpleType(a1, a2, v28, 0);
    }

    v28 = *(v28 + 48);
  }

  else if (!*(v32 + 96))
  {
    xmlSchemaPCustomErrExt(a1, 3000, 0, children, "Either the attribute 'itemType' or the <simpleType> child must be present");
  }

  if (v28)
  {
    xmlSchemaPContentErr(a1, 3033, children, v28, 0, "(annotation?, simpleType?)");
  }

  if (!*(v32 + 96) && !*(v32 + 56) && !xmlSchemaGetPropNode(children, "itemType"))
  {
    xmlSchemaPCustomErrExt(a1, 3000, 0, children, "Either the attribute 'itemType' or the <simpleType> child must be present");
  }

LABEL_88:
  v23 = 0;
LABEL_89:
  children = *(children + 48);
  if (children)
  {
    goto LABEL_90;
  }

LABEL_91:
  if (a4)
  {
    if (*(a1 + 188))
    {
      v30 = v23;
    }

    else
    {
      v30 = 1;
    }

    if ((v30 & 1) == 0)
    {
      xmlSchemaPCustomErrExt(a1, 3081, 0, a3, "This is a redefinition, thus the <simpleType> must have a <restriction> child");
    }
  }

  *(a1 + 160) = v21;
  return PropNode;
}

xmlNode *xmlSchemaParseElement(uint64_t a1, uint64_t a2, xmlNode *a3, _DWORD *a4, int a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  PropNode = xmlSchemaGetPropNode(a3, "name");
  v11 = xmlSchemaGetPropNode(a3, "ref");
  if (v11)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 && PropNode == 0)
  {
    xmlSchemaPMissingAttrErr(a1, a3, "name");
    return 0;
  }

  v14 = v11;
  v15 = xmlSchemaGetPropNode(a3, "id");
  if (v15)
  {
    xmlSchemaPValAttrNodeID(a1, v15);
  }

  children = a3->children;
  if (children && children->ns && xmlStrEqual(children->name, "annotation") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    v17 = xmlSchemaParseAnnotation(a1, children, 1);
    children = children->next;
    if (!a5)
    {
      goto LABEL_17;
    }

LABEL_41:
    v25 = 0;
    goto LABEL_42;
  }

  v17 = 0;
  if (a5)
  {
    goto LABEL_41;
  }

LABEL_17:
  v94 = v17;
  MinOccurs = xmlGetMinOccurs(a1, a3, -1, "xs:nonNegativeInteger");
  MaxOccurs = xmlGetMaxOccurs(a1, a3, 0, 0x40000000, "(xs:nonNegativeInteger | unbounded)");
  xmlSchemaPCheckParticleCorrect_2(a1, a3, MinOccurs, MaxOccurs);
  cur = xmlSchemaAddParticle(a1, a3, MinOccurs, MaxOccurs);
  if (!cur)
  {
    v17 = v94;
    if (v94)
    {
LABEL_53:
      xmlSchemaFreeAnnot(v17);
    }

    return 0;
  }

  if (!v14)
  {
    v25 = cur;
    v17 = v94;
LABEL_42:
    v96 = 0;
    BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
    if (xmlSchemaPValAttrNode(a1, PropNode, BuiltInType, &v96))
    {
      goto LABEL_43;
    }

    if (a5)
    {
      goto LABEL_47;
    }

    v35 = xmlSchemaGetPropNode(a3, "form");
    if (v35)
    {
      v36 = v35;
      NodeContent = xmlSchemaGetNodeContent(a1, v35);
      if (!xmlStrEqual(NodeContent, "qualified"))
      {
        if (!xmlStrEqual(NodeContent, "unqualified"))
        {
          xmlSchemaPSimpleTypeErr(a1, 3037, v36, 0, "(qualified | unqualified)", NodeContent, 0, 0);
        }

        goto LABEL_99;
      }
    }

    else if ((*(a2 + 48) & 1) == 0)
    {
LABEL_99:
      v27 = 0;
LABEL_48:
      v28 = v96;
      if (!v96)
      {
        goto LABEL_43;
      }

      v29 = malloc_type_malloc(0xC8uLL, 0x10F00404BED9830uLL);
      if (v29)
      {
        v30 = v29;
        *(v29 + 20) = 0u;
        *(v29 + 4) = 0u;
        *(v29 + 100) = 0u;
        *(v29 + 84) = 0u;
        *(v29 + 68) = 0u;
        *(v29 + 49) = 0;
        *(v29 + 180) = 0u;
        *(v29 + 164) = 0u;
        *(v29 + 148) = 0u;
        *(v29 + 132) = 0u;
        *(v29 + 116) = 0u;
        *(v29 + 52) = 0u;
        *(v29 + 36) = 0u;
        *v29 = 14;
        *(v29 + 2) = v28;
        *(v29 + 12) = v27;
        *(v29 + 9) = a3;
        v31 = *(*(a1 + 48) + 32);
        if (a5)
        {
          v32 = (v31 + 64);
          v33 = 5;
        }

        else
        {
          v32 = (v31 + 72);
          v33 = 10;
        }

        if ((xmlSchemaAddItemSize(v32, v33, v30) & 0x80000000) == 0)
        {
          v95 = v17;
          if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v30) & 0x80000000) != 0)
          {
            ++*(a1 + 36);
            __xmlSimpleError(0x10u, 2, 0, 0, 0);
          }

          for (i = a3->properties; i; i = *(i + 48))
          {
            v39 = *(i + 72);
            if (v39)
            {
              if (xmlStrEqual(*(v39 + 16), "http://www.w3.org/2001/XMLSchema"))
              {
                goto LABEL_72;
              }
            }

            else
            {
              if (xmlStrEqual(*(i + 16), "name") || xmlStrEqual(*(i + 16), "type") || xmlStrEqual(*(i + 16), "id") || xmlStrEqual(*(i + 16), "default") || xmlStrEqual(*(i + 16), "fixed") || xmlStrEqual(*(i + 16), "block") || xmlStrEqual(*(i + 16), "nillable"))
              {
                continue;
              }

              v40 = *(i + 16);
              if (a5)
              {
                if (xmlStrEqual(v40, "final") || xmlStrEqual(*(i + 16), "abstract"))
                {
                  continue;
                }

                v41 = *(i + 16);
                v42 = "substitutionGroup";
              }

              else
              {
                if (xmlStrEqual(v40, "maxOccurs") || xmlStrEqual(*(i + 16), "minOccurs"))
                {
                  continue;
                }

                v41 = *(i + 16);
                v42 = "form";
              }

              if (!xmlStrEqual(v41, v42))
              {
LABEL_72:
                xmlSchemaPIllegalAttrErr(a1, i);
              }
            }
          }

          if (a5)
          {
            v43 = (v30 + 88);
            *(v30 + 88) |= 0x22u;
            xmlSchemaPValAttrQName(a1, a2, a3, "substitutionGroup", (v30 + 128), (v30 + 120));
            if (xmlGetBooleanProp(a1, a3, "abstract"))
            {
              *v43 |= 0x10u;
            }

            v44 = xmlSchemaGetPropNode(a3, "final");
            if (v44)
            {
              v45 = v44;
              v46 = xmlSchemaGetNodeContent(a1, v44);
              if (xmlSchemaPValAttrBlockFinal(v46, (v30 + 88), 0x8000, 0x10000, -1, -1, -1))
              {
                xmlSchemaPSimpleTypeErr(a1, 3037, v45, 0, "(#all | List of (extension | restriction))", v46, 0, 0);
              }
            }

            else
            {
              v47 = *(a2 + 48);
              if ((v47 & 4) != 0)
              {
                *v43 |= 0x8000u;
              }

              if ((v47 & 8) != 0)
              {
                *v43 |= 0x10000u;
              }
            }
          }

          v48 = xmlSchemaGetPropNode(a3, "block");
          if (v48)
          {
            v49 = v48;
            v50 = xmlSchemaGetNodeContent(a1, v48);
            if (xmlSchemaPValAttrBlockFinal(v50, (v30 + 88), 2048, 4096, 0x2000, -1, -1))
            {
              xmlSchemaPSimpleTypeErr(a1, 3037, v49, 0, "(#all | List of (extension | restriction | substitution))", v50, 0, 0);
            }

LABEL_111:
            if (xmlGetBooleanProp(a1, a3, "nillable"))
            {
              *(v30 + 88) |= 1u;
            }

            v52 = xmlSchemaGetPropNode(a3, "type");
            if (v52)
            {
              v53 = v52;
              v54 = xmlSchemaGetNodeContent(a1, v52);
              xmlSchemaPValAttrNodeQNameValue(a1, a2, v53, v54, (v30 + 112), (v30 + 104));
              xmlSchemaCheckReference(a1, a3, v53, *(v30 + 112));
            }

            *(v30 + 144) = xmlSchemaGetProp(a1, a3, "default");
            v55 = xmlSchemaGetPropNode(a3, "fixed");
            if (v55)
            {
              v56 = v55;
              v57 = xmlSchemaGetNodeContent(a1, v55);
              if (*(v30 + 144))
              {
                xmlSchemaPMutualExclAttrErr(a1, 3038, 0, v56);
              }

              else
              {
                *(v30 + 88) |= 8u;
                *(v30 + 144) = v57;
              }
            }

            if (!children)
            {
              goto LABEL_228;
            }

            if (children->ns)
            {
              if (xmlStrEqual(children->name, "complexType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                if (*(v30 + 104))
                {
                  v58 = "The attribute 'type' and the <complexType> child are mutually exclusive";
LABEL_130:
                  xmlSchemaPContentErr(a1, 3041, a3, children, v58, 0);
                  goto LABEL_137;
                }

                v59 = xmlSchemaParseComplexType(a1, a2, children);
                goto LABEL_136;
              }

              if (children->ns && xmlStrEqual(children->name, "simpleType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                if (*(v30 + 104))
                {
                  v58 = "The attribute 'type' and the <simpleType> child are mutually exclusive";
                  goto LABEL_130;
                }

                v59 = xmlSchemaParseSimpleType(a1, a2, children, 0);
LABEL_136:
                *(v30 + 56) = v59;
LABEL_137:
                children = children->next;
                if (!children)
                {
                  goto LABEL_228;
                }
              }
            }

            v60 = 0;
            v61 = (v30 + 192);
            while (1)
            {
              if (!children->ns || (!xmlStrEqual(children->name, "unique") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!children->ns || (!xmlStrEqual(children->name, "key") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!children->ns || !xmlStrEqual(children->name, "keyref") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))))
              {
                xmlSchemaPContentErr(a1, 3033, a3, children, 0, "(annotation?, ((simpleType | complexType)?, (unique | key | keyref)*))");
LABEL_228:
                *(v30 + 48) = v95;
                if (a5)
                {
                  return v30;
                }

                v25->children = v30;
                return v25;
              }

              v62 = v60;
              if (children->ns)
              {
                if (xmlStrEqual(children->name, "unique") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  cura = 0;
                  v63 = 22;
                  goto LABEL_156;
                }

                v62 = v60;
                if (children->ns)
                {
                  break;
                }
              }

LABEL_189:
              v76 = (v60 + 16);
              if (!v60)
              {
                v76 = v61;
              }

              *v76 = v62;
              children = children->next;
              v60 = v62;
              if (!children)
              {
                goto LABEL_228;
              }
            }

            if (xmlStrEqual(children->name, "key") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              cura = 0;
              v63 = 23;
LABEL_156:
              v88 = v63;
            }

            else
            {
              v62 = v60;
              if (!children->ns)
              {
                goto LABEL_189;
              }

              v62 = v60;
              if (!xmlStrEqual(children->name, "keyref"))
              {
                goto LABEL_189;
              }

              v62 = v60;
              if (!xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                goto LABEL_189;
              }

              v88 = 24;
              cura = 1;
            }

            v87 = *(v30 + 96);
            str2 = 0;
            properties = children->properties;
            if (properties)
            {
              while (1)
              {
                v65 = *(properties + 72);
                if (!v65)
                {
                  break;
                }

                if (xmlStrEqual(*(v65 + 16), "http://www.w3.org/2001/XMLSchema"))
                {
                  goto LABEL_160;
                }

LABEL_163:
                properties = *(properties + 48);
                if (!properties)
                {
                  goto LABEL_168;
                }
              }

              if (xmlStrEqual(*(properties + 16), "id") || xmlStrEqual(*(properties + 16), "name") || cura && xmlStrEqual(*(properties + 16), "refer"))
              {
                goto LABEL_163;
              }

LABEL_160:
              xmlSchemaPIllegalAttrErr(a1, properties);
              goto LABEL_163;
            }

LABEL_168:
            v66 = xmlSchemaGetPropNode(children, "name");
            if (v66)
            {
              v67 = v66;
              v68 = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
              if (xmlSchemaPValAttrNode(a1, v67, v68, &str2))
              {
                goto LABEL_187;
              }

              v69 = str2;
              if (!str2)
              {
                goto LABEL_187;
              }

              v70 = malloc_type_malloc(0x50uLL, 0x1070040F9469641uLL);
              if (!v70)
              {
                v61 = (v30 + 192);
                if (a1)
                {
                  ++*(a1 + 36);
                }

                __xmlSimpleError(0x10u, 2, 0, 0, "allocating an identity-constraint definition");
                v62 = 0;
                goto LABEL_189;
              }

              v62 = v70;
              *(v70 + 36) = 0u;
              *(v70 + 20) = 0u;
              v70[4] = 0u;
              *(v70 + 52) = 0u;
              *(v70 + 4) = 0u;
              *(v70 + 4) = v69;
              *(v70 + 5) = v87;
              *v70 = v88;
              *(v70 + 3) = children;
              if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 64), 5, v70) & 0x80000000) != 0)
              {
                ++*(a1 + 36);
                __xmlSimpleError(0x10u, 2, 0, 0, 0);
                free(v62);
                goto LABEL_187;
              }

              v61 = (v30 + 192);
              if (cura && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v62) & 0x80000000) != 0)
              {
                ++*(a1 + 36);
                __xmlSimpleError(0x10u, 2, 0, 0, 0);
              }

              v71 = xmlSchemaGetPropNode(children, "id");
              if (v71)
              {
                xmlSchemaPValAttrNodeID(a1, v71);
              }

              if (cura)
              {
                v72 = xmlSchemaGetPropNode(children, "refer");
                if (v72)
                {
                  curb = v72;
                  v73 = xmlSchemaNewQNameRef(a1, 23, 0, 0);
                  *(v62 + 72) = v73;
                  if (v73)
                  {
                    v74 = v73;
                    v75 = xmlSchemaGetNodeContent(a1, curb);
                    xmlSchemaPValAttrNodeQNameValue(a1, a2, curb, v75, v74 + 4, v74 + 3);
                    xmlSchemaCheckReference(a1, children, curb, *(*(v62 + 72) + 32));
                    v61 = (v30 + 192);
                    goto LABEL_198;
                  }

LABEL_187:
                  v62 = 0;
LABEL_188:
                  v61 = (v30 + 192);
                  goto LABEL_189;
                }

                xmlSchemaPMissingAttrErr(a1, children, "refer");
              }

LABEL_198:
              next = children->children;
              if (!next)
              {
                goto LABEL_203;
              }

              if (*(next + 72))
              {
                curc = children->children;
                if (xmlStrEqual(*(next + 16), "annotation") && xmlStrEqual(curc->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  *(v62 + 8) = xmlSchemaParseAnnotation(a1, curc, 1);
                  next = curc->next;
                  if (!next)
                  {
LABEL_203:
                    xmlSchemaPContentErr(a1, 3034, children, 0, "A child element is missing", "(annotation?, (selector, field+))");
                    goto LABEL_189;
                  }
                }

                else
                {
                  next = curc;
                }
              }

              if (*(next + 72))
              {
                v78 = next;
                if (xmlStrEqual(*(next + 16), "selector") && xmlStrEqual(*(*(v78 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
                {
                  *(v62 + 48) = xmlSchemaParseIDCSelectorAndField(a1, v62, v78, 0);
                  v79 = *(v78 + 48);
                  if (!v79)
                  {
                    v85 = a1;
                    v86 = children;
                    next = 0;
                    goto LABEL_225;
                  }

                  v78 = *(v78 + 48);
                  if (*(v79 + 72) && xmlStrEqual(*(v79 + 16), "field") && xmlStrEqual(*(*(v78 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
                  {
                    next = v78;
                    curd = 0;
                    while (1)
                    {
                      v80 = next;
                      v81 = xmlSchemaParseIDCSelectorAndField(a1, v62, next, 1);
                      if (v81)
                      {
                        v82 = *(v62 + 64);
                        *(v81 + 4) = v82;
                        *(v62 + 64) = v82 + 1;
                        v83 = (v62 + 56);
                        if (curd)
                        {
                          v83 = curd;
                        }

                        v83->_private = v81;
                        curd = v81;
                      }

                      next = *(v80 + 48);
                      if (!next)
                      {
                        goto LABEL_188;
                      }

                      if (!*(next + 72))
                      {
                        goto LABEL_224;
                      }

                      v78 = *(v80 + 48);
                      if (!xmlStrEqual(*(next + 16), "field"))
                      {
                        goto LABEL_223;
                      }

                      v84 = xmlStrEqual(*(*(v78 + 72) + 16), "http://www.w3.org/2001/XMLSchema");
                      next = v78;
                      if (!v84)
                      {
                        goto LABEL_224;
                      }
                    }
                  }

                  xmlSchemaPContentErr(a1, 3033, children, v78, 0, "(annotation?, (selector, field+))");
                }

LABEL_223:
                next = v78;
              }

LABEL_224:
              v85 = a1;
              v86 = children;
LABEL_225:
              xmlSchemaPContentErr(v85, 3033, v86, next, 0, "(annotation?, (selector, field+))");
              goto LABEL_188;
            }

            xmlSchemaPMissingAttrErr(a1, children, "name");
            goto LABEL_187;
          }

          v51 = *(a2 + 48);
          if ((v51 & 0x80) != 0)
          {
            *(v30 + 88) |= 0x1000u;
            if ((v51 & 0x40) == 0)
            {
LABEL_109:
              if ((v51 & 0x100) == 0)
              {
                goto LABEL_111;
              }

              goto LABEL_110;
            }
          }

          else if ((v51 & 0x40) == 0)
          {
            goto LABEL_109;
          }

          *(v30 + 88) |= 0x800u;
          if ((v51 & 0x100) == 0)
          {
            goto LABEL_111;
          }

LABEL_110:
          *(v30 + 88) |= 0x2000u;
          goto LABEL_111;
        }

        ++*(a1 + 36);
        __xmlSimpleError(0x10u, 2, 0, 0, 0);
        free(v30);
      }

      else
      {
        if (a1)
        {
          ++*(a1 + 36);
        }

        __xmlSimpleError(0x10u, 2, 0, 0, "allocating element");
      }

LABEL_43:
      if (v17)
      {
        if (v25)
        {
          *&v25->type = 0;
        }

        goto LABEL_53;
      }

      return 0;
    }

LABEL_47:
    v27 = *(a1 + 200);
    goto LABEL_48;
  }

  v96 = 0;
  str2 = 0;
  if (a4)
  {
    *a4 = 1;
  }

  v20 = xmlSchemaGetNodeContent(a1, v14);
  xmlSchemaPValAttrNodeQNameValue(a1, a2, v14, v20, &str2, &v96);
  v21 = str2;
  xmlSchemaCheckReference(a1, a3, v14, str2);
  if (PropNode)
  {
    xmlSchemaPMutualExclAttrErr(a1, 3039, 0, PropNode);
  }

  v22 = a3->properties;
  if (!v22)
  {
LABEL_33:
    if (children)
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  while (1)
  {
    v23 = *(v22 + 72);
    if (v23)
    {
      if (xmlStrEqual(*(v23 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        xmlSchemaPIllegalAttrErr(a1, v22);
      }

      goto LABEL_32;
    }

    if (!xmlStrEqual(*(v22 + 16), "ref") && !xmlStrEqual(*(v22 + 16), "name") && !xmlStrEqual(*(v22 + 16), "id") && !xmlStrEqual(*(v22 + 16), "maxOccurs") && !xmlStrEqual(*(v22 + 16), "minOccurs"))
    {
      break;
    }

LABEL_32:
    v22 = *(v22 + 48);
    if (!v22)
    {
      goto LABEL_33;
    }
  }

  xmlSchemaPCustomAttrErr(a1, 3040, v22);
  if (!children)
  {
    goto LABEL_35;
  }

LABEL_34:
  xmlSchemaPContentErr(a1, 3033, a3, children, 0, "(annotation?)");
LABEL_35:
  if (!(MaxOccurs | MinOccurs) || (v24 = xmlSchemaNewQNameRef(a1, 14, v96, v21)) == 0)
  {
    v25 = cur;
    v17 = v94;
    goto LABEL_43;
  }

  v25 = cur;
  cur->children = v24;
  *&cur->type = v94;
  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, cur) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
  }

  return v25;
}

void xmlSchemaParseAttributeGroupDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  PropNode = xmlSchemaGetPropNode(a3, "name");
  if (!PropNode)
  {

    xmlSchemaPMissingAttrErr(a1, a3, "name");
    return;
  }

  v7 = PropNode;
  v22 = 0;
  BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
  if (xmlSchemaPValAttrNode(a1, v7, BuiltInType, &v22))
  {
    return;
  }

  v9 = v22;
  if (!v22)
  {
    return;
  }

  v10 = *(a1 + 200);
  v11 = malloc_type_malloc(0x78uLL, 0x10F00405DD70B3FuLL);
  if (!v11)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute group");
    return;
  }

  v12 = v11;
  *(v11 + 20) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 100) = 0u;
  *(v11 + 68) = 0u;
  *(v11 + 52) = 0u;
  *(v11 + 29) = 0;
  *(v11 + 84) = 0u;
  *(v11 + 36) = 0u;
  *v11 = 16;
  *(v11 + 2) = v9;
  *(v11 + 13) = v10;
  *(v11 + 8) = a3;
  *(v11 + 18) = 2;
  if (*(a1 + 188))
  {
    v13 = xmlSchemaAddRedef(a1, *(a1 + 208), v11, v9, v10);
    *(a1 + 216) = v13;
    if (!v13)
    {
LABEL_40:
      free(v12);
      return;
    }

    *(a1 + 224) = 0;
  }

  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 64), 5, v12) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    goto LABEL_40;
  }

  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v12) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
  }

  v14 = *(a3 + 88);
  if (v14)
  {
    while (1)
    {
      v15 = *(v14 + 72);
      if (!v15)
      {
        break;
      }

      if (xmlStrEqual(*(v15 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_18;
      }

LABEL_21:
      v14 = *(v14 + 48);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    if (xmlStrEqual(*(v14 + 16), "name") || xmlStrEqual(*(v14 + 16), "id"))
    {
      goto LABEL_21;
    }

LABEL_18:
    xmlSchemaPIllegalAttrErr(a1, v14);
    goto LABEL_21;
  }

LABEL_22:
  v16 = xmlSchemaGetPropNode(a3, "id");
  if (v16)
  {
    xmlSchemaPValAttrNodeID(a1, v16);
  }

  v17 = *(a3 + 24);
  v21 = v17;
  if (v17 && *(v17 + 72) && xmlStrEqual(*(v17 + 16), "annotation") && xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    *(v12 + 48) = xmlSchemaParseAnnotation(a1, v17, 1);
    v21 = *(v17 + 48);
  }

  v18 = xmlSchemaParseLocalAttributes(a1, a2, &v21, (v12 + 112), 16, &v20);
  if (v20)
  {
    *(v12 + 72) |= 0x10u;
  }

  if (v18 != -1)
  {
    v19 = v21;
    if (v21)
    {
      if (!v21->ns || !xmlStrEqual(v21->name, "anyAttribute") || !xmlStrEqual(v19->ns->href, "http://www.w3.org/2001/XMLSchema") || (*(v12 + 80) = xmlSchemaParseAnyAttribute(a1, a2, v19), (v19 = v19->next) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, v19, 0, "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))");
      }
    }
  }
}

void xmlSchemaParseModelGroupDefinition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  PropNode = xmlSchemaGetPropNode(a3, "name");
  if (!PropNode)
  {

    xmlSchemaPMissingAttrErr(a1, a3, "name");
    return;
  }

  v7 = PropNode;
  v19 = 0;
  BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
  if (xmlSchemaPValAttrNode(a1, v7, BuiltInType, &v19))
  {
    return;
  }

  v9 = v19;
  if (!v19)
  {
    return;
  }

  v10 = *(a1 + 200);
  v11 = malloc_type_malloc(0x40uLL, 0x1070040BDA8D268uLL);
  if (!v11)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, "adding group");
    return;
  }

  v12 = v11;
  *(v11 + 36) = 0u;
  *(v11 + 20) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *v11 = 17;
  *(v11 + 5) = v10;
  *(v11 + 6) = a3;
  *(v11 + 4) = v9;
  if (*(a1 + 188))
  {
    v13 = xmlSchemaAddRedef(a1, *(a1 + 208), v11, v9, v10);
    *(a1 + 216) = v13;
    if (!v13)
    {
LABEL_35:
      free(v12);
      return;
    }

    *(a1 + 224) = 0;
  }

  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 64), 5, v12) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    goto LABEL_35;
  }

  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v12) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
  }

  v14 = *(a3 + 88);
  if (v14)
  {
    while (1)
    {
      v15 = *(v14 + 72);
      if (!v15)
      {
        break;
      }

      if (xmlStrEqual(*(v15 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_18;
      }

LABEL_21:
      v14 = *(v14 + 48);
      if (!v14)
      {
        goto LABEL_22;
      }
    }

    if (xmlStrEqual(*(v14 + 16), "name") || xmlStrEqual(*(v14 + 16), "id"))
    {
      goto LABEL_21;
    }

LABEL_18:
    xmlSchemaPIllegalAttrErr(a1, v14);
    goto LABEL_21;
  }

LABEL_22:
  v16 = xmlSchemaGetPropNode(a3, "id");
  if (v16)
  {
    xmlSchemaPValAttrNodeID(a1, v16);
  }

  v17 = *(a3 + 24);
  if (!v17)
  {
    return;
  }

  if (*(v17 + 72))
  {
    if (xmlStrEqual(*(v17 + 16), "annotation"))
    {
      if (xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        v12[1] = xmlSchemaParseAnnotation(a1, v17, 1);
        v17 = *(v17 + 48);
        if (!v17)
        {
          return;
        }
      }
    }
  }

  if (!*(v17 + 72))
  {
    goto LABEL_45;
  }

  if (xmlStrEqual(*(v17 + 16), "all") && xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    v18 = 8;
    goto LABEL_44;
  }

  if (!*(v17 + 72))
  {
LABEL_45:
    xmlSchemaPContentErr(a1, 3033, a3, v17, 0, "(annotation?, (all | choice | sequence)?)");
    return;
  }

  if (xmlStrEqual(*(v17 + 16), "choice") && xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
  {
    v18 = 7;
  }

  else
  {
    if (!*(v17 + 72) || !xmlStrEqual(*(v17 + 16), "sequence") || !xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
    {
      goto LABEL_45;
    }

    v18 = 6;
  }

LABEL_44:
  v12[3] = xmlSchemaParseModelGroup(a1, a2, v17, v18, 0);
  v17 = *(v17 + 48);
  if (v17)
  {
    goto LABEL_45;
  }
}

void xmlSchemaPContentErr(uint64_t a1, int a2, uint64_t a3, uint64_t a4, xmlChar *a5, xmlChar *a6)
{
  v19 = 0;
  xmlSchemaFormatItemForReport(&v19, 0, a3);
  if (a5)
  {
    v12 = v19;
    v13 = "%s: %s.\n";
    v14 = a1;
    v15 = a3;
    v16 = a4;
    v17 = a2;
    v18 = a5;
  }

  else
  {
    v12 = v19;
    if (a6)
    {
      v13 = "%s: The content is not valid. Expected is %s.\n";
      v14 = a1;
      v15 = a3;
      v16 = a4;
      v17 = a2;
      v18 = a6;
    }

    else
    {
      v13 = "%s: The content is not valid.\n";
      v14 = a1;
      v15 = a3;
      v16 = a4;
      v17 = a2;
      v18 = 0;
    }
  }

  xmlSchemaPErr2(v14, v15, v16, v17, v13, v12, v18);
  if (v19)
  {
    free(v19);
  }
}

void xmlSchemaPIllegalAttrErr(_DWORD *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  xmlSchemaFormatNodeForError(&v9, a1, *(a2 + 40));
  v4 = v9;
  v5 = *(a2 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = xmlSchemaFormatQName(&v8, v6, *(a2 + 16));
  xmlSchemaErr4Line(a1, 2, 3035, a2, 0, "%sThe attribute '%s' is not allowed.\n", v4, v7, 0, 0);
  if (v9)
  {
    free(v9);
    v9 = 0;
  }

  if (v8)
  {
    free(v8);
  }
}

uint64_t xmlSchemaPValAttr(_DWORD *a1, uint64_t a2, xmlChar *str2, xmlSchemaType *a4, xmlChar **a5)
{
  if (!a4)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return 0xFFFFFFFFLL;
  }

  if (a4->type != XML_SCHEMA_TYPE_BASIC)
  {
    if (a5)
    {
      *a5 = 0;
    }

    xmlSchemaPErr(a1, a2, 3069, "Internal error: xmlSchemaPValAttr, the given type '%s' is not a built-in type.\n", a4->name, 0);
    return 0xFFFFFFFFLL;
  }

  PropNode = xmlSchemaGetPropNode(a2, str2);
  if (PropNode)
  {

    return xmlSchemaPValAttrNode(a1, PropNode, a4, a5);
  }

  else
  {
    result = 0;
    if (a5)
    {
      *a5 = 0;
    }
  }

  return result;
}

xmlChar *xmlSchemaBuildAbsoluteURI(xmlDict *a1, xmlChar *a2, xmlNode *cur)
{
  v3 = a2;
  if (a2 && cur)
  {
    Base = xmlNodeGetBase(cur->doc, cur);
    if (Base)
    {
      v7 = Base;
      v3 = xmlBuildURI(v3, Base);
      free(v7);
      if (v3)
      {
LABEL_5:
        v8 = xmlDictLookup(a1, v3, -1);
        free(v3);
        return v8;
      }
    }

    else
    {
      v3 = xmlBuildURI(v3, cur->doc->URL);
      if (v3)
      {
        goto LABEL_5;
      }
    }
  }

  return v3;
}

uint64_t xmlSchemaParseNewDoc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    if (*(a3 + 52))
    {
      v5 = "reparsing a schema doc";
LABEL_4:
      xmlSchemaInternalErr2(a1, "xmlSchemaParseNewDoc", v5, 0);
      return 0xFFFFFFFFLL;
    }

    if (!*(a3 + 32))
    {
      v5 = "parsing a schema doc, but there's no doc";
      goto LABEL_4;
    }

    if (!*(a1 + 48))
    {
      v5 = "no constructor";
      goto LABEL_4;
    }

    v8 = xmlSchemaNewParserCtxtUseDict(*(a3 + 8), *(a1 + 152));
    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = v8;
    v8[6] = *(a1 + 48);
    v8[8] = a2;
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = *(a1 + 8);
    v13 = v8;
    do
    {
      v13[2] = v11;
      v13[3] = v10;
      v13[1] = v12;
      v14 = v13[22];
      if (!v14)
      {
        break;
      }

      v14[2] = v11;
      v14[3] = v10;
      v14[1] = v12;
      v13 = v14[20];
    }

    while (v13);
    v15 = *(a1 + 40);
    v16 = *(a1 + 8);
    v17 = v8;
    do
    {
      v17[5] = v15;
      v17[1] = v16;
      v18 = v17[22];
      if (!v18)
      {
        break;
      }

      v18[3] = 0;
      v18[4] = v15;
      v18[1] = v16;
      v18[2] = 0;
      v17 = v18[20];
    }

    while (v17);
    *(v8 + 18) = *(a1 + 72);
    v19 = xmlSchemaParseNewDocWithContext(v8, a2, v3);
    v3 = v19;
    if (v19)
    {
      *(a1 + 32) = v19;
    }

    *(a1 + 36) += *(v9 + 9);
    *(a1 + 72) = *(v9 + 18);
    v9[6] = 0;
    xmlSchemaFreeParserCtxt(v9);
  }

  return v3;
}

void xmlSchemaPCustomErrExt(uint64_t a1, int a2, int *a3, uint64_t a4, const xmlChar *a5)
{
  ComponentNode = a4;
  v13 = 0;
  xmlSchemaFormatItemForReport(&v13, a3, a4);
  v10 = xmlStrdup("%s: ");
  v11 = xmlStrcat(v10, a5);
  v12 = xmlStrcat(v11, ".\n");
  if (a3 && !ComponentNode)
  {
    ComponentNode = xmlSchemaGetComponentNode(a3);
  }

  xmlSchemaPErrExt(a1, ComponentNode, a2, v12, v13);
  if (v13)
  {
    free(v13);
    v13 = 0;
  }

  if (v12)
  {
    free(v12);
  }
}

void *xmlSchemaNewParserCtxtUseDict(const xmlChar *a1, xmlDict *a2)
{
  v4 = xmlSchemaParserCtxtCreate();
  v5 = v4;
  if (v4)
  {
    v4[19] = a2;
    xmlDictReference(a2);
    if (a1)
    {
      v5[10] = xmlDictLookup(a2, a1, -1);
    }
  }

  return v5;
}

uint64_t xmlSchemaParseIncludeOrRedefine(uint64_t a1, uint64_t a2, const xmlNode *a3, int a4)
{
  v32 = 0;
  URI = 0;
  properties = a3->properties;
  if (properties)
  {
    while (1)
    {
      v9 = *(properties + 72);
      if (!v9)
      {
        break;
      }

      if (xmlStrEqual(*(v9 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      properties = *(properties + 48);
      if (!properties)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(properties + 16), "id") || xmlStrEqual(*(properties + 16), "schemaLocation"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, properties);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  v11 = xmlSchemaGetPropNode(a3, "schemaLocation");
  if (!v11)
  {
    xmlSchemaPMissingAttrErr(a1, a3, "schemaLocation");
    goto LABEL_18;
  }

  v12 = v11;
  BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
  if (!xmlSchemaPValAttrNode(a1, v12, BuiltInType, &URI))
  {
    Base = xmlNodeGetBase(a3->doc, a3);
    if (Base)
    {
      v15 = xmlBuildURI(URI, Base);
      free(Base);
      if (v15)
      {
LABEL_14:
        URI = xmlDictLookup(*(a1 + 152), v15, -1);
        free(v15);
        v16 = xmlStrEqual(URI, *(a1 + 80));
        v17 = URI;
        if (!v16)
        {
          goto LABEL_20;
        }

        if (a4 == 3)
        {
          v18 = "The schema document '%s' cannot redefine itself.";
          v19 = a1;
          v20 = 3081;
        }

        else
        {
          v18 = "The schema document '%s' cannot include itself.";
          v19 = a1;
          v20 = 3050;
        }

        xmlSchemaPCustomErrExt(v19, v20, 0, a3, v18);
        goto LABEL_18;
      }
    }

    else
    {
      v15 = xmlBuildURI(URI, a3->doc->URL);
      if (v15)
      {
        goto LABEL_14;
      }
    }

    xmlSchemaInternalErr2(a1, "xmlSchemaParseIncludeOrRedefine", "could not build an URI from the schemaLocation", 0);
    return 0xFFFFFFFFLL;
  }

LABEL_18:
  v21 = *(a1 + 32);
  if (v21)
  {
    return v21;
  }

  v17 = URI;
LABEL_20:
  v21 = xmlSchemaAddSchemaDoc(a1, a4, v17, 0, 0, 0, a3, *(a1 + 200), 0, &v32);
  if (v21)
  {
    return v21;
  }

  if (v32 && v32[4])
  {
    v22 = v32[2];
    v23 = *(a1 + 200);
    if (v22)
    {
      if (!v23)
      {
        xmlSchemaCustomErr4(a1, 3050, a3, 0, "The target namespace of the included/redefined schema '%s' has to be absent, since the including/redefining schema has no target namespace", URI, 0, 0, 0);
        return *(a1 + 32);
      }

      if (!xmlStrEqual(v22, v23))
      {
        v24 = v32[2];
        v25 = *(a1 + 200);
        xmlSchemaPCustomErrExt(a1, 3050, 0, a3, "The target namespace '%s' of the included/redefined schema '%s' differs from '%s' of the including/redefining schema");
        return *(a1 + 32);
      }
    }

    else if (v23)
    {
      v21 = 0;
      v26 = 0;
      v32[3] = v23;
      goto LABEL_35;
    }

    v21 = 0;
  }

  else if (a4 == 2)
  {
    v21 = 3050;
    xmlSchemaCustomErr4(a1, 3050, a3, 0, "Failed to load the document '%s' for inclusion", URI, 0, 0, 0);
  }

  else
  {
    v21 = 3081;
    xmlSchemaCustomErr4(a1, 3081, a3, 0, "Failed to load the document '%s' for redefinition", URI, 0, 0, 0);
  }

  v26 = 1;
LABEL_35:
  v27 = v32;
  if (v32 && !*(v32 + 13) && v32[4])
  {
    if ((v26 & 1) != 0 || (v28 = *(a2 + 48), (v28 & 0x200) != 0))
    {
      xmlSchemaParseNewDoc(a1, a2, v32);
    }

    else
    {
      *(a2 + 48) = v28 | 0x200;
      xmlSchemaParseNewDoc(a1, a2, v27);
      *(a2 + 48) ^= 0x200u;
    }
  }

  children = a3->children;
  if (a4 == 3)
  {
    *(a1 + 208) = v32;
    *(a1 + 188) = 1;
    if (children)
    {
      while (children->ns && (xmlStrEqual(children->name, "annotation") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || children->ns && (xmlStrEqual(children->name, "simpleType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || children->ns && (xmlStrEqual(children->name, "complexType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || children->ns && (xmlStrEqual(children->name, "group") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || children->ns && xmlStrEqual(children->name, "attributeGroup") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))))))
      {
        if (children->ns && (!xmlStrEqual(children->name, "annotation") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema")) && children->ns)
        {
          if (xmlStrEqual(children->name, "simpleType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            xmlSchemaParseSimpleType(a1, a2, children, 1);
          }

          else if (children->ns)
          {
            if (xmlStrEqual(children->name, "complexType") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              xmlSchemaParseComplexType(a1, a2, children, 1);
            }

            else if (children->ns)
            {
              if (xmlStrEqual(children->name, "group") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                xmlSchemaParseModelGroupDefinition(a1, a2, children);
              }

              else if (children->ns && xmlStrEqual(children->name, "attributeGroup") && xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                xmlSchemaParseAttributeGroupDefinition(a1, a2, children);
              }
            }
          }
        }

        children = children->next;
        if (!children)
        {
          goto LABEL_82;
        }
      }

      *(a1 + 208) = 0;
      *(a1 + 188) = 0;
      v30 = "(annotation | (simpleType | complexType | group | attributeGroup))*";
      goto LABEL_90;
    }

LABEL_82:
    *(a1 + 208) = 0;
    *(a1 + 188) = 0;
  }

  else if (children)
  {
    if (!children->ns || !xmlStrEqual(children->name, "annotation") || !xmlStrEqual(children->ns->href, "http://www.w3.org/2001/XMLSchema") || (children = children->next) != 0)
    {
      v30 = "(annotation?)";
LABEL_90:
      v21 = 3033;
      xmlSchemaPContentErr(a1, 3033, a3, children, 0, v30);
    }
  }

  return v21;
}

void xmlSchemaPMissingAttrErr(uint64_t a1, uint64_t a2, xmlChar *a3)
{
  v6 = 0;
  xmlSchemaFormatItemForReport(&v6, 0, a2);
  xmlSchemaPErr(a1, a2, 3036, "%s: The attribute '%s' is required but missing.\n", v6, a3);
  if (v6)
  {
    free(v6);
  }
}

void *xmlSchemaAddType(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = 0;
  if (!a1 || !a2)
  {
    return v7;
  }

  v14 = malloc_type_malloc(0xE0uLL, 0x10F00408DAE91E3uLL);
  v7 = v14;
  if (!v14)
  {
    ++*(a1 + 36);
    v18 = "allocating type";
LABEL_14:
    __xmlSimpleError(0x10u, 2, 0, 0, v18);
    return v7;
  }

  *(v14 + 20) = 0u;
  *(v14 + 4) = 0u;
  *(v14 + 13) = 0u;
  *(v14 + 196) = 0u;
  *(v14 + 68) = 0u;
  *(v14 + 180) = 0u;
  *(v14 + 164) = 0u;
  *(v14 + 148) = 0u;
  *(v14 + 132) = 0u;
  *(v14 + 116) = 0u;
  *(v14 + 100) = 0u;
  *(v14 + 84) = 0u;
  *(v14 + 52) = 0u;
  *(v14 + 36) = 0u;
  *v14 = a3;
  *(v14 + 2) = a4;
  *(v14 + 26) = a5;
  *(v14 + 9) = a6;
  if (a7)
  {
    if (*(a1 + 188))
    {
      v15 = xmlSchemaAddRedef(a1, *(a1 + 208), v14, a4, a5);
      *(a1 + 216) = v15;
      if (!v15)
      {
LABEL_16:
        free(v7);
        return 0;
      }

      *(a1 + 224) = 0;
    }

    v16 = (*(*(a1 + 48) + 32) + 64);
    v17 = 5;
  }

  else
  {
    v16 = (*(*(a1 + 48) + 32) + 72);
    v17 = 10;
  }

  if ((xmlSchemaAddItemSize(v16, v17, v7) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    goto LABEL_16;
  }

  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v7) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    v18 = 0;
    goto LABEL_14;
  }

  return v7;
}

uint64_t xmlSchemaPGetBoolNodeValue(uint64_t a1, xmlNode *cur)
{
  Content = xmlNodeGetContent(cur);
  if (!xmlStrEqual(Content, "true"))
  {
    if (!xmlStrEqual(Content, "false"))
    {
      if (xmlStrEqual(Content, "1"))
      {
        goto LABEL_2;
      }

      if (!xmlStrEqual(Content, "0"))
      {
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_BOOLEAN);
        xmlSchemaPSimpleTypeErr(a1, 1714, cur, BuiltInType, 0, Content, 0, 0);
      }
    }

    v5 = 0;
    if (!Content)
    {
      return v5;
    }

    goto LABEL_3;
  }

LABEL_2:
  v5 = 1;
  if (Content)
  {
LABEL_3:
    free(Content);
  }

  return v5;
}

void *xmlSchemaParseModelGroup(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (!a3)
  {
    return 0;
  }

  v10 = xmlSchemaAddModelGroup(a1, a2, a4, a3);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (!a5)
  {
    v18 = *(a3 + 88);
    if (!v18)
    {
LABEL_14:
      v64 = 0x100000001;
      v20 = v11;
LABEL_25:
      PropNode = xmlSchemaGetPropNode(a3, "id");
      if (PropNode)
      {
        xmlSchemaPValAttrNodeID(a1, PropNode);
      }

      v67 = 0;
      v26 = *(a3 + 24);
      v63 = v11;
      if (!v26)
      {
        goto LABEL_143;
      }

      if (v26->ns && xmlStrEqual(v26->name, "annotation") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v11[1] = xmlSchemaParseAnnotation(a1, v26, 1);
        v26 = v26->next;
      }

      if (a4 == 8)
      {
        if (v26)
        {
          v27 = 0;
          v65 = 0;
          while (v26->ns && xmlStrEqual(v26->name, "element") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            v28 = xmlSchemaParseElement(a1, a2, v26, &v67, 0);
            if (v28)
            {
              v29 = v28;
              v30 = v65;
              if (v67)
              {
                v30 = v65 + 1;
              }

              v65 = v30;
              if (SLODWORD(v28->last) >= 2)
              {
                xmlSchemaPCustomErrExt(a1, 3091, 0, v26, "Invalid value for minOccurs (must be 0 or 1)");
                LODWORD(v29->last) = 1;
              }

              if (SHIDWORD(v29->last) >= 2)
              {
                xmlSchemaPCustomErrExt(a1, 3091, 0, v26, "Invalid value for maxOccurs (must be 0 or 1)");
                HIDWORD(v29->last) = 1;
              }

              p_name = &v27->name;
              if (!v27)
              {
                p_name = (v63 + 24);
              }

              *p_name = v29;
              v27 = v29;
            }

            v26 = v26->next;
            if (!v26)
            {
              goto LABEL_147;
            }
          }

          v58 = "(annotation?, (annotation?, element*)";
          goto LABEL_146;
        }

LABEL_143:
        v65 = 0;
        goto LABEL_147;
      }

      if (!v26)
      {
        goto LABEL_143;
      }

      v32 = 0;
      v33 = 0;
      v65 = 0;
      v34 = v11 + 3;
      while (1)
      {
        if (!v26->ns || (!xmlStrEqual(v26->name, "element") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "group") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "any") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || (!xmlStrEqual(v26->name, "choice") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema")) && (!v26->ns || !xmlStrEqual(v26->name, "sequence") || !xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))))))
        {
          v58 = "(annotation?, (element | group | choice | sequence | any)*)";
LABEL_146:
          xmlSchemaPContentErr(a1, 3033, a3, v26, 0, v58);
          goto LABEL_147;
        }

        if (v26->ns)
        {
          if (xmlStrEqual(v26->name, "element") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            v35 = xmlSchemaParseElement(a1, a2, v26, &v67, 0);
            v33 = v35;
            if (v35)
            {
              v36 = v67 == 0;
            }

            else
            {
              v36 = 1;
            }

            v37 = v65;
            if (!v36)
            {
              v37 = v65 + 1;
            }

            v65 = v37;
            if (!v35)
            {
              goto LABEL_126;
            }

            goto LABEL_123;
          }

          if (v26->ns)
          {
            if (xmlStrEqual(v26->name, "group") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
            {
              v38 = xmlSchemaParseModelGroupDefRef(a1, a2, v26);
              v33 = v38;
              v39 = v65;
              if (v38)
              {
                v39 = v65 + 1;
              }

              v65 = v39;
              if (*(a1 + 188))
              {
                v40 = *(a1 + 216);
                if (v40)
                {
                  if (v38 && **(v40 + 8) == 17)
                  {
                    v41 = v38[3];
                    if (!v41)
                    {
                      goto LABEL_123;
                    }

                    v42 = *(v40 + 32);
                    if (*(v41 + 24) != v42)
                    {
                      goto LABEL_123;
                    }

                    v43 = *(v40 + 40);
                    if (*(v41 + 32) != v43)
                    {
                      goto LABEL_123;
                    }

                    if (*(a1 + 224))
                    {
                      v66 = 0;
                      v44 = xmlSchemaFormatQName(&v66, v43, v42);
                      xmlSchemaCustomErr4(a1, 3081, v26, 0, "The redefining model group definition '%s' must not contain more than one reference to the redefined definition", v44, 0, 0, 0);
                    }

                    else
                    {
                      if (*(v38 + 8) == 1 && *(v38 + 9) == 1)
                      {
                        goto LABEL_141;
                      }

                      v66 = 0;
                      v57 = xmlSchemaFormatQName(&v66, v43, v42);
                      xmlSchemaCustomErr4(a1, 3081, v26, 0, "The redefining model group definition '%s' must not contain a reference to the redefined definition with a maxOccurs/minOccurs other than 1", v57, 0, 0, 0);
                    }

                    if (v66)
                    {
                      free(v66);
                    }

                    v33 = 0;
LABEL_141:
                    *(*(a1 + 216) + 16) = v33;
                    ++*(a1 + 224);
                    if (!v33)
                    {
                      goto LABEL_126;
                    }

LABEL_123:
                    v55 = (v32 + 16);
                    if (!v32)
                    {
                      v55 = v34;
                    }

                    *v55 = v33;
                    v32 = v33;
                    goto LABEL_126;
                  }
                }
              }

              goto LABEL_122;
            }

            if (v26->ns)
            {
              if (xmlStrEqual(v26->name, "any") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                properties = v26->properties;
                if (properties)
                {
                  while (1)
                  {
                    v46 = *(properties + 72);
                    if (!v46)
                    {
                      break;
                    }

                    if (xmlStrEqual(*(v46 + 16), "http://www.w3.org/2001/XMLSchema"))
                    {
                      goto LABEL_97;
                    }

LABEL_103:
                    properties = *(properties + 48);
                    if (!properties)
                    {
                      goto LABEL_104;
                    }
                  }

                  if (xmlStrEqual(*(properties + 16), "id") || xmlStrEqual(*(properties + 16), "minOccurs") || xmlStrEqual(*(properties + 16), "maxOccurs") || xmlStrEqual(*(properties + 16), "namespace") || xmlStrEqual(*(properties + 16), "processContents"))
                  {
                    goto LABEL_103;
                  }

LABEL_97:
                  xmlSchemaPIllegalAttrErr(a1, properties);
                  goto LABEL_103;
                }

LABEL_104:
                v47 = xmlSchemaGetPropNode(v26, "id");
                if (v47)
                {
                  xmlSchemaPValAttrNodeID(a1, v47);
                }

                MaxOccurs = xmlGetMaxOccurs(a1, v26, 0, 0x40000000, "(xs:nonNegativeInteger | unbounded)");
                HIDWORD(v62) = xmlGetMinOccurs(a1, v26, -1, "xs:nonNegativeInteger");
                xmlSchemaPCheckParticleCorrect_2(a1, v26, SHIDWORD(v62), MaxOccurs);
                v49 = xmlSchemaAddWildcard(a1, a2, 2, v26);
                if (v49)
                {
                  LODWORD(v62) = MaxOccurs;
                  v60 = v49;
                  xmlSchemaParseWildcardNs(a1, v49, v26);
                  children = v26->children;
                  if (children)
                  {
                    if (*(children + 72) && xmlStrEqual(*(children + 16), "annotation") && xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
                    {
                      v61 = xmlSchemaParseAnnotation(a1, children, 1);
                      children = *(children + 48);
                      if (!children)
                      {
                        goto LABEL_131;
                      }
                    }

                    else
                    {
                      v61 = 0;
                    }

                    xmlSchemaPContentErr(a1, 3033, v26, children, 0, "(annotation?)");
                  }

                  else
                  {
                    v61 = 0;
                  }

LABEL_131:
                  if (v62)
                  {
                    v56 = xmlSchemaAddParticle(a1, v26, SHIDWORD(v62), v62);
                    v33 = v56;
                    if (v56)
                    {
                      v56[1] = v61;
                      v56[3] = v60;
                      goto LABEL_123;
                    }

                    goto LABEL_126;
                  }
                }

                v33 = 0;
                goto LABEL_126;
              }

              if (v26->ns)
              {
                if (xmlStrEqual(v26->name, "choice") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = a1;
                  v52 = a2;
                  v53 = v26;
                  v54 = 7;
LABEL_121:
                  v33 = xmlSchemaParseModelGroup(v51, v52, v53, v54, 1);
                  goto LABEL_122;
                }

                if (v26->ns && xmlStrEqual(v26->name, "sequence") && xmlStrEqual(v26->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = a1;
                  v52 = a2;
                  v53 = v26;
                  v54 = 6;
                  goto LABEL_121;
                }
              }
            }
          }
        }

LABEL_122:
        if (v33)
        {
          goto LABEL_123;
        }

LABEL_126:
        v26 = v26->next;
        if (!v26)
        {
LABEL_147:
          if (v64)
          {
            if (v65 && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v63) & 0x80000000) != 0)
            {
              ++*(a1 + 36);
              __xmlSimpleError(0x10u, 2, 0, 0, 0);
            }

            return v20;
          }

          return 0;
        }
      }
    }

    while (1)
    {
      v19 = *(v18 + 72);
      if (!v19)
      {
        break;
      }

      if (xmlStrEqual(*(v19 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_9;
      }

LABEL_10:
      v18 = *(v18 + 48);
      if (!v18)
      {
        goto LABEL_14;
      }
    }

    if (xmlStrEqual(*(v18 + 16), "id"))
    {
      goto LABEL_10;
    }

LABEL_9:
    xmlSchemaPIllegalAttrErr(a1, v18);
    goto LABEL_10;
  }

  if (a4 == 8)
  {
    MinOccurs = xmlGetMinOccurs(a1, a3, 1, "(0 | 1)");
    v13 = "1";
    v14 = a1;
    v15 = a3;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    MinOccurs = xmlGetMinOccurs(a1, a3, -1, "xs:nonNegativeInteger");
    v13 = "(xs:nonNegativeInteger | unbounded)";
    v14 = a1;
    v15 = a3;
    v16 = 0;
    v17 = 0x40000000;
  }

  v21 = xmlGetMaxOccurs(v14, v15, v16, v17, v13);
  xmlSchemaPCheckParticleCorrect_2(a1, a3, MinOccurs, v21);
  v22 = xmlSchemaAddParticle(a1, a3, MinOccurs, v21);
  v20 = v22;
  if (v22)
  {
    v64 = __PAIR64__(MinOccurs, v21);
    v22[3] = v11;
    v23 = *(a3 + 88);
    if (v23)
    {
      while (1)
      {
        v24 = *(v23 + 72);
        if (!v24)
        {
          break;
        }

        if (xmlStrEqual(*(v24 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_20;
        }

LABEL_24:
        v23 = *(v23 + 48);
        if (!v23)
        {
          goto LABEL_25;
        }
      }

      if (xmlStrEqual(*(v23 + 16), "id") || xmlStrEqual(*(v23 + 16), "maxOccurs") || xmlStrEqual(*(v23 + 16), "minOccurs"))
      {
        goto LABEL_24;
      }

LABEL_20:
      xmlSchemaPIllegalAttrErr(a1, v23);
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  return v20;
}