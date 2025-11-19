void *xmlSchemaParseModelGroupDefRef(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  str2 = 0;
  v19 = 0;
  if (!a3)
  {
    return 0;
  }

  PropNode = xmlSchemaGetPropNode(a3, "ref");
  if (!PropNode)
  {
    xmlSchemaPMissingAttrErr(a1, a3, "ref");
    return 0;
  }

  v7 = PropNode;
  NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
  if (xmlSchemaPValAttrNodeQNameValue(a1, a2, v7, NodeContent, &str2, &v19))
  {
    return 0;
  }

  v9 = str2;
  xmlSchemaCheckReference(a1, a3, v7, str2);
  MinOccurs = xmlGetMinOccurs(a1, a3, -1, "xs:nonNegativeInteger");
  MaxOccurs = xmlGetMaxOccurs(a1, a3, 0, 0x40000000, "(xs:nonNegativeInteger | unbounded)");
  v12 = *(a3 + 88);
  if (v12)
  {
    while (1)
    {
      v13 = *(v12 + 72);
      if (!v13)
      {
        break;
      }

      if (xmlStrEqual(*(v13 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_7;
      }

LABEL_12:
      v12 = *(v12 + 48);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    if (xmlStrEqual(*(v12 + 16), "ref") || xmlStrEqual(*(v12 + 16), "id") || xmlStrEqual(*(v12 + 16), "minOccurs") || xmlStrEqual(*(v12 + 16), "maxOccurs"))
    {
      goto LABEL_12;
    }

LABEL_7:
    xmlSchemaPIllegalAttrErr(a1, v12);
    goto LABEL_12;
  }

LABEL_13:
  v14 = xmlSchemaGetPropNode(a3, "id");
  if (v14)
  {
    xmlSchemaPValAttrNodeID(a1, v14);
  }

  result = xmlSchemaAddParticle(a1, a3, MinOccurs, MaxOccurs);
  if (result)
  {
    v16 = result;
    result[3] = xmlSchemaNewQNameRef(a1, 17, v19, v9);
    xmlSchemaPCheckParticleCorrect_2(a1, a3, MinOccurs, MaxOccurs);
    v17 = *(a3 + 24);
    if (v17)
    {
      if (!*(v17 + 72) || !xmlStrEqual(*(v17 + 16), "annotation") || !xmlStrEqual(*(*(v17 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (*(v16 + 8) = xmlSchemaParseAnnotation(a1, v17, 1), (v17 = *(v17 + 48)) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, v17, 0, "(annotation?)");
      }
    }

    if (MinOccurs | MaxOccurs)
    {
      return v16;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xmlSchemaParseLocalAttributes(uint64_t a1, uint64_t a2, uint64_t *a3, void *****a4, int a5, _DWORD *a6)
{
  v6 = *a3;
  if (!*a3)
  {
    return 0;
  }

  v9 = "attributeGroup";
  v10 = "name";
  while (1)
  {
    if (*(v6 + 72))
    {
      v11 = xmlStrEqual(*(v6 + 16), "attribute");
      v6 = *a3;
      if (v11)
      {
        if (xmlStrEqual(*(*(v6 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_11;
        }

        v6 = *a3;
      }

      if (!v6)
      {
        return 0;
      }
    }

    if (!*(v6 + 72))
    {
      return 0;
    }

    result = xmlStrEqual(*(v6 + 16), v9);
    if (!result)
    {
      return result;
    }

    result = xmlStrEqual(*(*(*a3 + 72) + 16), "http://www.w3.org/2001/XMLSchema");
    if (!result)
    {
      return result;
    }

LABEL_11:
    v13 = *a3;
    if (!*a3)
    {
      goto LABEL_160;
    }

    if (!*(v13 + 72))
    {
      v89 = 0;
      str2 = 0;
      goto LABEL_63;
    }

    v14 = xmlStrEqual(*(v13 + 16), "attribute");
    v13 = *a3;
    if (!v14)
    {
      break;
    }

    v15 = xmlStrEqual(*(*(v13 + 72) + 16), "http://www.w3.org/2001/XMLSchema");
    v13 = *a3;
    if (!v15)
    {
      break;
    }

    v16 = *a4;
    v89 = 0;
    v87 = 0;
    str2 = 0;
    if (!v13)
    {
      goto LABEL_159;
    }

    PropNode = xmlSchemaGetPropNode(v13, "ref");
    if (PropNode)
    {
      NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
      if (xmlSchemaPValAttrNodeQNameValue(a1, a2, PropNode, NodeContent, &str2, &v87) || xmlSchemaCheckReference(a1, v13, PropNode, str2))
      {
        goto LABEL_159;
      }
    }

    v79 = *(a1 + 36);
    v19 = *(v13 + 88);
    if (!v19)
    {
      v78 = 0;
      str1 = 0;
      v80 = 0;
      v81 = 2;
      v29 = 1;
      goto LABEL_96;
    }

    v77 = 0;
    v78 = 0;
    str1 = 0;
    v80 = 0;
    v81 = 2;
    do
    {
      ns = v19->ns;
      if (ns)
      {
        if (!xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_56;
        }

LABEL_23:
        xmlSchemaPIllegalAttrErr(a1, v19);
        goto LABEL_56;
      }

      name = v19->name;
      if (PropNode)
      {
        if (xmlStrEqual(name, "id"))
        {
          goto LABEL_26;
        }

        if (xmlStrEqual(v19->name, "ref"))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (xmlStrEqual(name, v10))
        {
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "id"))
        {
LABEL_26:
          xmlSchemaPValAttrNodeID(a1, v19);
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "type"))
        {
          v22 = xmlSchemaGetNodeContent(a1, v19);
          xmlSchemaPValAttrNodeQNameValue(a1, a2, v19, v22, &str2, &v87);
          goto LABEL_56;
        }

        if (xmlStrEqual(v19->name, "form"))
        {
          v23 = v16;
          v24 = v10;
          v28 = xmlSchemaGetNodeContent(a1, v19);
          if (xmlStrEqual(v28, "qualified"))
          {
            str1 = *(a1 + 200);
          }

          else if (!xmlStrEqual(v28, "unqualified"))
          {
            xmlSchemaPSimpleTypeErr(a1, 3037, v19, 0, "(qualified | unqualified)", v28, 0, 0);
          }

          v77 = 1;
          goto LABEL_55;
        }
      }

      if (xmlStrEqual(v19->name, "use"))
      {
        v23 = v16;
        v24 = v10;
        v25 = xmlSchemaGetNodeContent(a1, v19);
        if (xmlStrEqual(v25, "optional"))
        {
          v26 = 2;
        }

        else
        {
          if (xmlStrEqual(v25, "prohibited"))
          {
            v81 = 0;
            goto LABEL_55;
          }

          if (!xmlStrEqual(v25, "required"))
          {
            xmlSchemaPSimpleTypeErr(a1, 1774, v19, 0, "(optional | prohibited | required)", v25, 0, 0);
            goto LABEL_55;
          }

          v26 = 1;
        }

        v81 = v26;
LABEL_55:
        v10 = v24;
        v16 = v23;
        goto LABEL_56;
      }

      if (xmlStrEqual(v19->name, "default"))
      {
        if (v78)
        {
          goto LABEL_46;
        }

        v78 = xmlSchemaGetNodeContent(a1, v19);
        v27 = 1;
      }

      else
      {
        if (!xmlStrEqual(v19->name, "fixed"))
        {
          goto LABEL_23;
        }

        if (v78)
        {
LABEL_46:
          xmlSchemaPMutualExclAttrErr(a1, 3051, 0, v19);
          goto LABEL_56;
        }

        v78 = xmlSchemaGetNodeContent(a1, v19);
        v27 = 2;
      }

      v80 = v27;
LABEL_56:
      v19 = v19->next;
    }

    while (v19);
    v29 = v77 == 0;
    if (v80 == 1 && v81 != 2)
    {
      xmlSchemaPSimpleTypeErr(a1, 3052, v13, 0, "(optional | prohibited | required)", 0, "The value of the attribute 'use' must be 'optional' if the attribute 'default' is present", 0);
      v80 = 1;
    }

LABEL_96:
    if (v79 != *(a1 + 36))
    {
      goto LABEL_159;
    }

    if (!PropNode)
    {
      if (v29 && (*(a2 + 48) & 2) != 0)
      {
        str1 = *(a1 + 200);
      }

      if (xmlStrEqual(str1, "http://www.w3.org/2001/XMLSchema-instance"))
      {
        xmlSchemaCustomErr4(a1, 3057, v13, 0, "The target namespace must not match '%s'", "http://www.w3.org/2001/XMLSchema-instance", 0, 0, 0);
      }

      v53 = xmlSchemaGetPropNode(v13, v10);
      if (!v53)
      {
        xmlSchemaPMissingAttrErr(a1, v13, v10);
        goto LABEL_159;
      }

      v54 = v53;
      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
      if (xmlSchemaPValAttrNode(a1, v54, BuiltInType, &v89))
      {
        goto LABEL_159;
      }

      if (xmlStrEqual(v89, "xmlns"))
      {
        v56 = xmlSchemaGetBuiltInType(XML_SCHEMAS_NCNAME);
        xmlSchemaPSimpleTypeErr(a1, 3056, v54, v56, 0, 0, "The value of the attribute must not match 'xmlns'", 0);
        goto LABEL_159;
      }

      if (v81)
      {
        v59 = xmlSchemaAddAttributeUse(a1, v13);
        if (!v59)
        {
          goto LABEL_159;
        }

        v44 = v59;
        v59[12] = v81;
        v60 = xmlSchemaAddAttribute(a1, v89, str1, v13, 0);
        if (!v60)
        {
          goto LABEL_159;
        }

        if (v87)
        {
          v61 = str2;
          v60[6] = v87;
          v60[7] = v61;
        }

        *(v44 + 24) = v60;
        if (v78)
        {
          v60[11] = v78;
          if (v80 == 2)
          {
            v48 = v60 + 15;
            v49 = 512;
LABEL_107:
            *v48 |= v49;
          }
        }

LABEL_108:
        v50 = *(v13 + 24);
        if (v50)
        {
          if (*(v50 + 72) && xmlStrEqual(*(v50 + 16), "annotation") && xmlStrEqual(*(*(v50 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            *(v44 + 8) = xmlSchemaParseAnnotation(a1, v50, 1);
            v50 = *(v50 + 48);
          }

          if (PropNode)
          {
            if (v50)
            {
              v9 = "attributeGroup";
              if (*(v50 + 72) && xmlStrEqual(*(v50 + 16), "simpleType") && xmlStrEqual(*(*(v50 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
              {
                v51 = a1;
                v52 = 3054;
              }

              else
              {
                v51 = a1;
                v52 = 3033;
              }

              v72 = v13;
              v73 = v50;
              v74 = "(annotation?)";
              goto LABEL_183;
            }
          }

          else if (v50)
          {
            v9 = "attributeGroup";
            if (*(v50 + 72) && xmlStrEqual(*(v50 + 16), "simpleType") && xmlStrEqual(*(*(v50 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              if (*(*(v44 + 24) + 48))
              {
                xmlSchemaPContentErr(a1, 3055, v13, v50, "The attribute 'type' and the <simpleType> child are mutually exclusive", 0);
              }

              else
              {
                *(*(v44 + 24) + 96) = xmlSchemaParseSimpleType(a1, a2, v50, 0);
              }

              v50 = *(v50 + 48);
              if (!v50)
              {
                goto LABEL_90;
              }
            }

            v51 = a1;
            v52 = 3033;
            v72 = v13;
            v73 = v50;
            v74 = "(annotation?, simpleType?)";
LABEL_183:
            xmlSchemaPContentErr(v51, v52, v72, v73, 0, v74);
            goto LABEL_90;
          }
        }

LABEL_175:
        v9 = "attributeGroup";
        goto LABEL_90;
      }

LABEL_148:
      v62 = *(v13 + 24);
      if (v62)
      {
        if (!*(v62 + 72) || !xmlStrEqual(*(v62 + 16), "annotation") || !xmlStrEqual(*(*(v62 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (xmlSchemaParseAnnotation(a1, v62, 0), (v62 = *(v62 + 48)) != 0))
        {
          xmlSchemaPContentErr(a1, 3033, v13, v62, 0, "(annotation?)");
        }
      }

      if (a5 == 13)
      {
        v63 = a1;
        v64 = v13;
        v65 = "Skipping attribute use prohibition, since it is pointless when extending a type";
      }

      else
      {
        if (a5 != 16)
        {
          if (!PropNode)
          {
            v87 = v89;
            str2 = str1;
          }

          if (v16)
          {
            v66 = *(v16 + 2);
            if (v66 >= 1)
            {
              v67 = *v16;
              while (1)
              {
                v68 = *v67;
                if (**v67 == 2001 && v87 == v68[2] && str2 == v68[3])
                {
                  break;
                }

                ++v67;
                if (!--v66)
                {
                  goto LABEL_171;
                }
              }

              v86 = 0;
              v75 = xmlSchemaFormatQName(&v86, str2, v87);
              xmlSchemaCustomWarning(a1, 3086, v13, "Skipping duplicate attribute use prohibition '%s'", v75, 0, 0);
              if (v86)
              {
                free(v86);
              }

              goto LABEL_159;
            }
          }

LABEL_171:
          v69 = xmlSchemaAddAttributeUseProhib(a1);
          if (!v69)
          {
            goto LABEL_159;
          }

          v44 = v69;
          v71 = v87;
          v70 = str2;
          v69[1] = v13;
          v69[2] = v71;
          v69[3] = v70;
          if (PropNode && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v69) & 0x80000000) != 0)
          {
            ++*(a1 + 36);
            __xmlSimpleError(0x10u, 2, 0, 0, 0);
          }

          goto LABEL_175;
        }

        v63 = a1;
        v64 = v13;
        v65 = "Skipping attribute use prohibition, since it is pointless inside an <attributeGroup>";
      }

      xmlSchemaCustomWarning(v63, 3086, v64, v65, 0, 0, 0);
      goto LABEL_159;
    }

    if (!v81)
    {
      goto LABEL_148;
    }

    v46 = xmlSchemaAddAttributeUse(a1, v13);
    if (v46)
    {
      v44 = v46;
      if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v46) & 0x80000000) != 0)
      {
        ++*(a1 + 36);
        __xmlSimpleError(0x10u, 2, 0, 0, 0);
      }

      *(v44 + 48) = v81;
      v47 = xmlSchemaNewQNameRef(a1, 15, v87, str2);
      if (v47)
      {
        *(v44 + 24) = v47;
        if (v78)
        {
          *(v44 + 56) = v78;
        }

        if (v80 == 2)
        {
          v48 = (v44 + 32);
          v49 = 1;
          goto LABEL_107;
        }

        goto LABEL_108;
      }
    }

LABEL_159:
    v9 = "attributeGroup";
LABEL_160:
    v6 = *(*a3 + 48);
    *a3 = v6;
    if (!v6)
    {
      return 0;
    }
  }

  v89 = 0;
  str2 = 0;
  if (!v13)
  {
    goto LABEL_160;
  }

LABEL_63:
  v30 = v10;
  v31 = xmlSchemaGetPropNode(v13, "ref");
  if (!v31)
  {
    xmlSchemaPMissingAttrErr(a1, v13, "ref");
    goto LABEL_160;
  }

  v32 = v31;
  v33 = xmlSchemaGetNodeContent(a1, v31);
  xmlSchemaPValAttrNodeQNameValue(a1, a2, v32, v33, &v89, &str2);
  v34 = v89;
  v35 = xmlSchemaCheckReference(a1, v13, v32, v89);
  v10 = v30;
  if (v35)
  {
    goto LABEL_160;
  }

  v36 = v9;
  v37 = *(v13 + 88);
  if (v37)
  {
    while (2)
    {
      v38 = *(v37 + 72);
      if (v38)
      {
        if (xmlStrEqual(*(v38 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_68;
        }
      }

      else if (!xmlStrEqual(*(v37 + 16), "ref") && !xmlStrEqual(*(v37 + 16), "id"))
      {
LABEL_68:
        xmlSchemaPIllegalAttrErr(a1, v37);
      }

      v37 = *(v37 + 48);
      if (!v37)
      {
        break;
      }

      continue;
    }
  }

  v39 = xmlSchemaGetPropNode(v13, "id");
  if (v39)
  {
    xmlSchemaPValAttrNodeID(a1, v39);
  }

  v40 = *(v13 + 24);
  if (v40)
  {
    if (!*(v40 + 72) || !xmlStrEqual(*(v40 + 16), "annotation") || !xmlStrEqual(*(*(v40 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (xmlSchemaParseAnnotation(a1, v40, 0), (v40 = *(v40 + 48)) != 0))
    {
      xmlSchemaPContentErr(a1, 3033, v13, v40, 0, "(annotation?)");
    }
  }

  if (*(a1 + 188) && (v41 = *(a1 + 216)) != 0 && **(v41 + 8) == 16 && (v42 = str2, str2 == *(v41 + 32)) && v34 == *(v41 + 40))
  {
    v9 = v36;
    if (*(a1 + 224))
    {
      v87 = 0;
      v57 = xmlSchemaFormatQName(&v87, v34, str2);
      xmlSchemaCustomErr4(a1, 3081, v13, 0, "The redefining attribute group definition '%s' must not contain more than one reference to the redefined definition", v57, 0, 0, 0);
      v10 = v30;
      if (v87)
      {
        free(v87);
      }

      goto LABEL_160;
    }

    *(a1 + 224) = 1;
    v58 = xmlSchemaNewQNameRef(a1, 16, v42, v34);
    v10 = v30;
    if (!v58)
    {
      goto LABEL_160;
    }

    v44 = v58;
    v58[5] = v13;
    *(*(a1 + 216) + 16) = v58;
  }

  else
  {
    v43 = xmlSchemaNewQNameRef(a1, 16, str2, v34);
    v9 = v36;
    v10 = v30;
    if (!v43)
    {
      goto LABEL_160;
    }

    v44 = v43;
    v43[5] = v13;
    if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v43) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, 0);
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

LABEL_90:
  v45 = *a4;
  if (!*a4)
  {
    v45 = xmlSchemaItemListCreate();
    *a4 = v45;
    if (!v45)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = xmlSchemaItemListAddSize(v45, 2, v44);
  if (result != -1)
  {
    goto LABEL_160;
  }

  return result;
}

void *xmlSchemaParseAnyAttribute(_DWORD *a1, uint64_t a2, xmlNode *a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = xmlSchemaAddWildcard(a1, a2, 21, a3);
  if (v5)
  {
    properties = a3->properties;
    if (properties)
    {
      while (1)
      {
        v7 = *(properties + 72);
        if (!v7)
        {
          break;
        }

        if (xmlStrEqual(*(v7 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_6;
        }

LABEL_10:
        properties = *(properties + 48);
        if (!properties)
        {
          goto LABEL_11;
        }
      }

      if (xmlStrEqual(*(properties + 16), "id") || xmlStrEqual(*(properties + 16), "namespace") || xmlStrEqual(*(properties + 16), "processContents"))
      {
        goto LABEL_10;
      }

LABEL_6:
      xmlSchemaPIllegalAttrErr(a1, properties);
      goto LABEL_10;
    }

LABEL_11:
    PropNode = xmlSchemaGetPropNode(a3, "id");
    if (PropNode)
    {
      xmlSchemaPValAttrNodeID(a1, PropNode);
    }

    if (xmlSchemaParseWildcardNs(a1, v5, a3))
    {
      return 0;
    }

    children = a3->children;
    if (children)
    {
      if (!*(children + 72) || !xmlStrEqual(*(children + 16), "annotation") || !xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v5[2] = xmlSchemaParseAnnotation(a1, children, 1), (children = *(children + 48)) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, children, 0, "(annotation?)");
      }
    }
  }

  return v5;
}

_OWORD *xmlSchemaAddRedef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = malloc_type_malloc(0x38uLL, 0x70040989CC7FAuLL);
  v11 = v10;
  if (v10)
  {
    *v10 = 0u;
    v10[1] = 0u;
    *(v10 + 1) = a3;
    *(v10 + 5) = a5;
    *(v10 + 6) = a2;
    *(v10 + 4) = a4;
    v12 = *(a1 + 48);
    v13 = (v12 + 56);
    if (*(v12 + 56))
    {
      v13 = *(v12 + 64);
    }

    *v13 = v10;
    *(v12 + 64) = v10;
  }

  else
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating redefinition info");
  }

  return v11;
}

uint64_t xmlSchemaAddItemSize(void **a1, int a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    v6 = xmlSchemaItemListCreate();
    *a1 = v6;
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return xmlSchemaItemListAddSize(v6, a2, a3);
}

void xmlSchemaAddAnnotation(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    return;
  }

  v2 = *a1;
  if (*a1 <= 20)
  {
    if (v2 > 13)
    {
      if (v2 <= 15)
      {
        if (v2 != 14)
        {
          v3 = *(a1 + 64);
          if (!v3)
          {
            *(a1 + 64) = a2;
            return;
          }

          goto LABEL_27;
        }
      }

      else if (v2 != 16)
      {
        if (v2 == 17)
        {
          goto LABEL_18;
        }

        if (v2 == 18)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if ((v2 - 6) < 3)
      {
        goto LABEL_18;
      }

      if ((v2 - 4) >= 2)
      {
        if (v2 == 2)
        {
          goto LABEL_26;
        }

        goto LABEL_32;
      }
    }

    v3 = *(a1 + 48);
    if (!v3)
    {
      *(a1 + 48) = a2;
      return;
    }

    goto LABEL_27;
  }

  if ((v2 - 1000) >= 0xC)
  {
    if ((v2 - 22) < 4)
    {
LABEL_18:
      v3 = *(a1 + 8);
      if (!v3)
      {
        *(a1 + 8) = a2;
        return;
      }

      goto LABEL_27;
    }

    if (v2 == 21)
    {
LABEL_26:
      v3 = *(a1 + 16);
      if (!v3)
      {
        *(a1 + 16) = a2;
        return;
      }

      goto LABEL_27;
    }

LABEL_32:
    xmlSchemaPCustomErrExt(0, 3069, 0, 0, "Internal error: xmlSchemaAddAnnotation, The item is not a annotated schema component");
    return;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    *(a1 + 32) = a2;
    return;
  }

LABEL_27:
  if (*v3)
  {
    v3 = *v3;
  }

  *v3 = a2;
}

void xmlSchemaParseRestriction(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v71 = 0;
  v8 = *(a1 + 160);
  *(v8 + 88) |= 4u;
  v9 = *(a3 + 88);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 72);
      if (!v10)
      {
        break;
      }

      if (xmlStrEqual(*(v10 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v9 = *(v9 + 48);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v9 + 16), "id") || xmlStrEqual(*(v9 + 16), "base"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v9);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  if (!xmlSchemaPValAttrQName(a1, a2, a3, "base", (v8 + 104), (v8 + 96)))
  {
    v14 = *(v8 + 96);
    if (!v14 && *v8 == 5)
    {
      goto LABEL_52;
    }

    if (!*(a1 + 188) || (*(v8 + 88) & 8) == 0)
    {
      goto LABEL_11;
    }

    if (!v14)
    {
LABEL_52:
      xmlSchemaPMissingAttrErr(a1, a3, "base");
      goto LABEL_11;
    }

    if (!xmlStrEqual(v14, *(v8 + 16)) || !xmlStrEqual(*(v8 + 104), *(v8 + 208)))
    {
      v69 = 0;
      v70 = 0;
      xmlSchemaFormatQName(&v70, *(v8 + 104), *(v8 + 96));
      xmlSchemaFormatQName(&v69, *(v8 + 208), *(v8 + 16));
      xmlSchemaPCustomErrExt(a1, 3081, 0, a3, "This is a redefinition, but the QName value '%s' of the 'base' attribute does not match the type's designation '%s'");
      if (v70)
      {
        free(v70);
      }

      if (v69)
      {
        free(v69);
      }

      *(v8 + 96) = 0;
      *(v8 + 104) = 0;
    }
  }

LABEL_11:
  v12 = *(a3 + 24);
  v71 = v12;
  if (v12 && v12->ns && xmlStrEqual(v12->name, "annotation") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    v13 = xmlSchemaParseAnnotation(a1, v12, 1);
    xmlSchemaAddAnnotation(v8, v13);
    v12 = v12->next;
    v71 = v12;
  }

  if (a4 == 10)
  {
    if (!v12 || !v12->ns)
    {
      goto LABEL_201;
    }

    v15 = xmlStrEqual(v12->name, "all");
    ns = v12->ns;
    if (v15)
    {
      if (xmlStrEqual(ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 8;
LABEL_199:
        v67 = xmlSchemaParseModelGroup(v17, v18, v19, v20, 1);
        goto LABEL_200;
      }

      ns = v12->ns;
    }

    if (!ns)
    {
      goto LABEL_201;
    }

    v22 = xmlStrEqual(v12->name, "choice");
    v23 = v12->ns;
    if (v22)
    {
      if (xmlStrEqual(v23->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 7;
        goto LABEL_199;
      }

      v23 = v12->ns;
    }

    if (!v23)
    {
      goto LABEL_201;
    }

    v65 = xmlStrEqual(v12->name, "sequence");
    v66 = v12->ns;
    if (v65)
    {
      if (xmlStrEqual(v66->href, "http://www.w3.org/2001/XMLSchema"))
      {
        v17 = a1;
        v18 = a2;
        v19 = v12;
        v20 = 6;
        goto LABEL_199;
      }

      v66 = v12->ns;
    }

    if (!v66 || !xmlStrEqual(v12->name, "group") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      goto LABEL_201;
    }

    v67 = xmlSchemaParseModelGroupDefRef(a1, a2, v12);
LABEL_200:
    *(v8 + 56) = v67;
    v12 = v12->next;
    v71 = v12;
    goto LABEL_201;
  }

  if (a4 == 4)
  {
    if (!v12 || !v12->ns || !xmlStrEqual(v12->name, "simpleType") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
    {
      if (!*(v8 + 96))
      {
        xmlSchemaPContentErr(a1, 3005, a3, v12, "Either the attribute 'base' or a <simpleType> child must be present", 0);
      }

LABEL_60:
      if (v12)
      {
LABEL_61:
        v24 = 0;
        do
        {
          if (!v12->ns)
          {
            break;
          }

          v25 = xmlStrEqual(v12->name, "minInclusive");
          v26 = v12->ns;
          if (v25)
          {
            if (xmlStrEqual(v26->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v26 = v12->ns;
          }

          if (!v26)
          {
            break;
          }

          v27 = xmlStrEqual(v12->name, "minExclusive");
          v28 = v12->ns;
          if (v27)
          {
            if (xmlStrEqual(v28->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v28 = v12->ns;
          }

          if (!v28)
          {
            break;
          }

          v29 = xmlStrEqual(v12->name, "maxInclusive");
          v30 = v12->ns;
          if (v29)
          {
            if (xmlStrEqual(v30->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v30 = v12->ns;
          }

          if (!v30)
          {
            break;
          }

          v31 = xmlStrEqual(v12->name, "maxExclusive");
          v32 = v12->ns;
          if (v31)
          {
            if (xmlStrEqual(v32->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v32 = v12->ns;
          }

          if (!v32)
          {
            break;
          }

          v33 = xmlStrEqual(v12->name, "totalDigits");
          v34 = v12->ns;
          if (v33)
          {
            if (xmlStrEqual(v34->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v34 = v12->ns;
          }

          if (!v34)
          {
            break;
          }

          v35 = xmlStrEqual(v12->name, "fractionDigits");
          v36 = v12->ns;
          if (v35)
          {
            if (xmlStrEqual(v36->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v36 = v12->ns;
          }

          if (!v36)
          {
            break;
          }

          v37 = xmlStrEqual(v12->name, "pattern");
          v38 = v12->ns;
          if (v37)
          {
            if (xmlStrEqual(v38->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v38 = v12->ns;
          }

          if (!v38)
          {
            break;
          }

          v39 = xmlStrEqual(v12->name, "enumeration");
          v40 = v12->ns;
          if (v39)
          {
            if (xmlStrEqual(v40->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v40 = v12->ns;
          }

          if (!v40)
          {
            break;
          }

          v41 = xmlStrEqual(v12->name, "whiteSpace");
          v42 = v12->ns;
          if (v41)
          {
            if (xmlStrEqual(v42->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v42 = v12->ns;
          }

          if (!v42)
          {
            break;
          }

          v43 = xmlStrEqual(v12->name, "length");
          v44 = v12->ns;
          if (v43)
          {
            if (xmlStrEqual(v44->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v44 = v12->ns;
          }

          if (!v44)
          {
            break;
          }

          v45 = xmlStrEqual(v12->name, "maxLength");
          v46 = v12->ns;
          if (v45)
          {
            if (xmlStrEqual(v46->href, "http://www.w3.org/2001/XMLSchema"))
            {
              goto LABEL_109;
            }

            v46 = v12->ns;
          }

          if (!v46 || !xmlStrEqual(v12->name, "minLength") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
          {
            break;
          }

LABEL_109:
          v47 = malloc_type_malloc(0x48uLL, 0x1070040FC6FB3EFuLL);
          if (!v47)
          {
            if (a1)
            {
              ++*(a1 + 36);
            }

            __xmlSimpleError(0x10u, 2, v12, 0, "allocating facet");
            goto LABEL_180;
          }

          v48 = v47;
          v47->regexp = 0;
          *&v47->annot = 0u;
          *&v47->fixed = 0u;
          *&v47->type = 0u;
          *&v47->value = 0u;
          v47->node = v12;
          Prop = xmlSchemaGetProp(a1, v12, "value");
          if (Prop)
          {
            if (v12->ns)
            {
              v50 = Prop;
              if (xmlStrEqual(v12->name, "minInclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
              {
                v51 = 1000;
LABEL_163:
                v48->type = v51;
                v57 = xmlSchemaGetPropNode(v12, "id");
                if (v57)
                {
                  xmlSchemaPValAttrNodeID(a1, v57);
                }

                v48->value = v50;
                if ((v48->type & 0xFFFFFFFE) != 0x3EE)
                {
                  v58 = xmlSchemaGetProp(a1, v12, "fixed");
                  if (v58)
                  {
                    if (xmlStrEqual(v58, "true"))
                    {
                      v48->fixed = 1;
                    }
                  }
                }

                children = v12->children;
                if (children)
                {
                  if (!*(children + 72) || !xmlStrEqual(*(children + 16), "annotation") || !xmlStrEqual(*(*(children + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v48->annot = xmlSchemaParseAnnotation(a1, children, 1), (children = *(children + 48)) != 0))
                  {
                    xmlSchemaPErr(a1, children, 1740, "Facet %s has unexpected child content\n", v12->name, 0);
                  }
                }

                p_next = &v24->next;
                if (!v24)
                {
                  p_next = (v8 + 120);
                }

                *p_next = v48;
                v48->next = 0;
                v24 = v48;
                goto LABEL_180;
              }

              if (v12->ns)
              {
                if (xmlStrEqual(v12->name, "minExclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                {
                  v51 = 1001;
                  goto LABEL_163;
                }

                if (v12->ns)
                {
                  if (xmlStrEqual(v12->name, "maxInclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                  {
                    v51 = 1002;
                    goto LABEL_163;
                  }

                  if (v12->ns)
                  {
                    if (xmlStrEqual(v12->name, "maxExclusive") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                    {
                      v51 = 1003;
                      goto LABEL_163;
                    }

                    if (v12->ns)
                    {
                      if (xmlStrEqual(v12->name, "totalDigits") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                      {
                        v51 = 1004;
                        goto LABEL_163;
                      }

                      if (v12->ns)
                      {
                        if (xmlStrEqual(v12->name, "fractionDigits") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                        {
                          v51 = 1005;
                          goto LABEL_163;
                        }

                        if (v12->ns)
                        {
                          if (xmlStrEqual(v12->name, "pattern") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                          {
                            v51 = 1006;
                            goto LABEL_163;
                          }

                          if (v12->ns)
                          {
                            if (xmlStrEqual(v12->name, "enumeration") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                            {
                              v51 = 1007;
                              goto LABEL_163;
                            }

                            if (v12->ns)
                            {
                              if (xmlStrEqual(v12->name, "whiteSpace") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                              {
                                v51 = 1008;
                                goto LABEL_163;
                              }

                              if (v12->ns)
                              {
                                if (xmlStrEqual(v12->name, "length") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                {
                                  v51 = 1009;
                                  goto LABEL_163;
                                }

                                if (v12->ns)
                                {
                                  if (xmlStrEqual(v12->name, "maxLength") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                  {
                                    v51 = 1010;
                                    goto LABEL_163;
                                  }

                                  if (v12->ns && xmlStrEqual(v12->name, "minLength") && xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
                                  {
                                    v51 = 1011;
                                    goto LABEL_163;
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
              }
            }

            name = v12->name;
            v53 = a1;
            v54 = v12;
            v55 = 1741;
            v56 = "Unknown facet type %s\n";
          }

          else
          {
            name = v12->name;
            v53 = a1;
            v54 = v12;
            v55 = 1708;
            v56 = "Facet %s has no value\n";
          }

          xmlSchemaPErr(v53, v54, v55, v56, name, 0);
          xmlSchemaFreeFacet(v48);
LABEL_180:
          v12 = v12->next;
        }

        while (v12);
      }

      v71 = v12;
      v61 = *(v8 + 120);
      if (v61)
      {
        v62 = 0;
        while (1)
        {
          v63 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
          if (!v63)
          {
            break;
          }

          *v63 = 0;
          v63[1] = v61;
          if (v62)
          {
            v64 = v62;
          }

          else
          {
            v64 = (v8 + 176);
          }

          *v64 = v63;
          v61 = *(v61 + 8);
          v62 = v63;
          if (!v61)
          {
            goto LABEL_201;
          }
        }

        if (a1)
        {
          ++*(a1 + 36);
        }

        __xmlSimpleError(0x10u, 2, 0, 0, "allocating a facet link");
        return;
      }

LABEL_201:
      if (*v8 == 5)
      {
        if (xmlSchemaParseLocalAttributes(a1, a2, &v71, (v8 + 216), 12, 0) == -1)
        {
          return;
        }

        v12 = v71;
        if (!v71)
        {
          return;
        }

        if (!v71->ns || !xmlStrEqual(v71->name, "anyAttribute") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
        {
          goto LABEL_209;
        }

        *(v8 + 152) = xmlSchemaParseAnyAttribute(a1, a2, v12);
        v12 = v12->next;
      }

      if (!v12)
      {
        return;
      }

LABEL_209:
      if (a4 == 9)
      {
        v68 = "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*)?, ((attribute | attributeGroup)*, anyAttribute?))";
      }

      else if (a4 == 10)
      {
        v68 = "annotation?, (group | all | choice | sequence)?, ((attribute | attributeGroup)*, anyAttribute?))";
      }

      else
      {
        v68 = "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))";
      }

      xmlSchemaPContentErr(a1, 3033, a3, v12, 0, v68);
      return;
    }

    if (*(v8 + 96))
    {
      xmlSchemaPContentErr(a1, 3005, a3, v12, "The attribute 'base' and the <simpleType> child are mutually exclusive", 0);
    }

    else
    {
      *(v8 + 112) = xmlSchemaParseSimpleType(a1, a2, v12, 0);
    }

LABEL_59:
    v12 = v12->next;
    v71 = v12;
    goto LABEL_60;
  }

  if (a4 != 9 || !v12)
  {
    if (a4 != 9)
    {
      goto LABEL_201;
    }

    goto LABEL_60;
  }

  if (!v12->ns || !xmlStrEqual(v12->name, "simpleType") || !xmlStrEqual(v12->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    goto LABEL_61;
  }

  v21 = xmlSchemaParseSimpleType(a1, a2, v12, 0);
  *(v8 + 192) = v21;
  if (v21)
  {
    goto LABEL_59;
  }
}

void xmlSchemaParseExtension(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 160);
  *(v8 + 88) |= 2u;
  v9 = *(a3 + 88);
  if (v9)
  {
    while (1)
    {
      v10 = *(v9 + 72);
      if (!v10)
      {
        break;
      }

      if (xmlStrEqual(*(v10 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v9 = *(v9 + 48);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v9 + 16), "id") || xmlStrEqual(*(v9 + 16), "base"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v9);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  if (!xmlSchemaPValAttrQName(a1, a2, a3, "base", (v8 + 104), (v8 + 96)) && !*(v8 + 96))
  {
    xmlSchemaPMissingAttrErr(a1, a3, "base");
  }

  v12 = *(a3 + 24);
  v29 = v12;
  if (v12)
  {
    if (*(v12 + 72) && xmlStrEqual(*(v12 + 16), "annotation") && xmlStrEqual(*(*(v12 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
    {
      v13 = xmlSchemaParseAnnotation(a1, v12, 1);
      xmlSchemaAddAnnotation(v8, v13);
      v12 = *(v12 + 48);
      v29 = v12;
    }

    v14 = a4 == 10;
    v15 = a4 == 10;
    if (!v14)
    {
LABEL_37:
      if (!v12)
      {
        return;
      }

LABEL_45:
      if (xmlSchemaParseLocalAttributes(a1, a2, &v29, (v8 + 216), 13, 0) == -1)
      {
        return;
      }

      v27 = v29;
      if (!v29)
      {
        return;
      }

      if (v29->ns && xmlStrEqual(v29->name, "anyAttribute") && xmlStrEqual(v27->ns->href, "http://www.w3.org/2001/XMLSchema"))
      {
        *(*(a1 + 160) + 152) = xmlSchemaParseAnyAttribute(a1, a2, v27);
        v27 = v27->next;
        if (!v27)
        {
          return;
        }

        if (!v15)
        {
          goto LABEL_52;
        }
      }

      else if (!v15)
      {
LABEL_52:
        v28 = "(annotation?, ((attribute | attributeGroup)*, anyAttribute?))";
LABEL_56:

        xmlSchemaPContentErr(a1, 3033, a3, v27, 0, v28);
        return;
      }

      v28 = "(annotation?, ((group | all | choice | sequence)?, ((attribute | attributeGroup)*, anyAttribute?)))";
      goto LABEL_56;
    }

    if (!v12)
    {
      return;
    }

    if (*(v12 + 72))
    {
      v16 = xmlStrEqual(*(v12 + 16), "all");
      v17 = *(v12 + 72);
      if (v16)
      {
        if (xmlStrEqual(*(v17 + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          v18 = a1;
          v19 = a2;
          v20 = v12;
          v21 = 8;
LABEL_35:
          v26 = xmlSchemaParseModelGroup(v18, v19, v20, v21, 1);
LABEL_36:
          *(v8 + 56) = v26;
          v12 = *(v12 + 48);
          v29 = v12;
          goto LABEL_37;
        }

        v17 = *(v12 + 72);
      }

      if (v17)
      {
        v22 = xmlStrEqual(*(v12 + 16), "choice");
        v23 = *(v12 + 72);
        if (v22)
        {
          if (xmlStrEqual(*(v23 + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            v18 = a1;
            v19 = a2;
            v20 = v12;
            v21 = 7;
            goto LABEL_35;
          }

          v23 = *(v12 + 72);
        }

        if (v23)
        {
          v24 = xmlStrEqual(*(v12 + 16), "sequence");
          v25 = *(v12 + 72);
          if (v24)
          {
            if (xmlStrEqual(*(v25 + 16), "http://www.w3.org/2001/XMLSchema"))
            {
              v18 = a1;
              v19 = a2;
              v20 = v12;
              v21 = 6;
              goto LABEL_35;
            }

            v25 = *(v12 + 72);
          }

          if (v25 && xmlStrEqual(*(v12 + 16), "group") && xmlStrEqual(*(*(v12 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
          {
            v26 = xmlSchemaParseModelGroupDefRef(a1, a2, v12);
            goto LABEL_36;
          }
        }
      }
    }

    v15 = 1;
    goto LABEL_45;
  }
}

xmlNode *xmlSchemaPValAttrQName(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *str2, const xmlChar **a5, const xmlChar **a6)
{
  result = xmlSchemaGetPropNode(a3, str2);
  if (result)
  {
    v11 = result;
    NodeContent = xmlSchemaGetNodeContent(a1, result);

    return xmlSchemaPValAttrNodeQNameValue(a1, a2, v11, NodeContent, a5, a6);
  }

  else
  {
    *a6 = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t xmlSchemaPValAttrNodeQNameValue(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *value, const xmlChar **a5, const xmlChar **a6)
{
  *a5 = 0;
  *a6 = 0;
  v12 = xmlValidateQName(value, 1);
  if (v12 < 1)
  {
    if (v12 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    len = 0;
    if (strchr(value, 58))
    {
      v15 = xmlSplitQName3(value, &len);
      *a6 = v15;
      *a6 = xmlDictLookup(*(a1 + 152), v15, -1);
      v16 = xmlDictLookup(*(a1 + 152), value, len);
      v17 = xmlSearchNs(*(a3 + 64), *(a3 + 40), v16);
      if (v17)
      {
        v18 = xmlDictLookup(*(a1 + 152), v17->href, -1);
        result = 0;
        *a5 = v18;
        return result;
      }

      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
      xmlSchemaPSimpleTypeErr(a1, 3037, a3, BuiltInType, 0, value, "The value '%s' of simple type 'xs:QName' has no corresponding namespace declaration in scope", value);
      return *(a1 + 32);
    }

    v19 = xmlSearchNs(*(a3 + 64), *(a3 + 40), 0);
    if (v19 && (href = v19->href) != 0 && *href)
    {
      v21 = xmlDictLookup(*(a1 + 152), href, -1);
    }

    else
    {
      if ((*(a2 + 49) & 2) == 0)
      {
LABEL_17:
        v22 = xmlDictLookup(*(a1 + 152), value, -1);
        result = 0;
        *a6 = v22;
        return result;
      }

      v21 = *(a1 + 200);
    }

    *a5 = v21;
    goto LABEL_17;
  }

  v13 = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
  xmlSchemaPSimpleTypeErr(a1, 3037, a3, v13, 0, value, 0, 0);
  *a6 = value;
  return *(a1 + 32);
}

_DWORD *xmlSchemaPErr2(uint64_t a1, uint64_t a2, uint64_t a3, int a4, const char *a5, const xmlChar *a6, xmlChar *a7)
{
  if (a3)
  {
    a2 = a3;
  }

  return xmlSchemaPErr(a1, a2, a4, a5, a6, a7);
}

xmlChar *xmlGetBooleanProp(uint64_t a1, xmlNode *a2, xmlChar *a3)
{
  result = xmlSchemaGetProp(a1, a2, a3);
  if (result)
  {
    v7 = result;
    if (xmlStrEqual(result, "true"))
    {
      return 1;
    }

    if (!xmlStrEqual(v7, "false"))
    {
      if (xmlStrEqual(v7, "1"))
      {
        return 1;
      }

      if (!xmlStrEqual(v7, "0"))
      {
        PropNode = xmlSchemaGetPropNode(a2, a3);
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_BOOLEAN);
        xmlSchemaPSimpleTypeErr(a1, 1714, PropNode, BuiltInType, 0, v7, 0, 0);
      }
    }

    return 0;
  }

  return result;
}

void *xmlSchemaAddModelGroup(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v8 = malloc_type_malloc(0x28uLL, 0x1020040E2DCC865uLL);
    v4 = v8;
    if (!v8)
    {
      ++*(a1 + 36);
      v9 = "allocating model group component";
      goto LABEL_9;
    }

    *(v8 + 12) = 0;
    *(v8 + 4) = 0;
    *(v8 + 7) = 0;
    *(v8 + 20) = 0;
    *v8 = a3;
    *(v8 + 4) = a4;
    if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, 0);
      free(v4);
      return 0;
    }

    if ((a3 & 0xFFFFFFFE) == 6 && (xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v4) & 0x80000000) != 0)
    {
      ++*(a1 + 36);
      v9 = 0;
LABEL_9:
      __xmlSimpleError(0x10u, 2, 0, 0, v9);
    }
  }

  return v4;
}

uint64_t xmlGetMinOccurs(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  PropNode = xmlSchemaGetPropNode(a2, "minOccurs");
  if (PropNode)
  {
    v8 = PropNode;
    NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
    for (i = NodeContent; ; ++i)
    {
      v11 = *i;
      if (v11 > 0x20)
      {
        break;
      }

      if (((1 << v11) & 0x100002600) == 0)
      {
        if (!*i)
        {
          goto LABEL_7;
        }

        break;
      }
    }

    if (v11 - 48 > 9)
    {
      result = 0;
    }

    else
    {
      LODWORD(result) = 0;
      do
      {
        v13 = -2147483601 - v11;
        v14 = v11 + 10 * result - 48;
        if (10 * result > v13)
        {
          v14 = 0x7FFFFFFF;
        }

        if (result <= 214748364)
        {
          result = v14;
        }

        else
        {
          result = 0x7FFFFFFFLL;
        }

        v15 = *++i;
        v11 = v15;
      }

      while (v15 - 48 < 0xA);
    }

    v16 = (i + 1);
    while (v11 <= 0x20)
    {
      if (((1 << v11) & 0x100002600) == 0)
      {
        if (v11 || (result & 0x80000000) != 0 || a3 != -1 && result > a3)
        {
          break;
        }

        return result;
      }

      v17 = *v16++;
      v11 = v17;
    }

LABEL_7:
    xmlSchemaPSimpleTypeErr(a1, 3037, v8, 0, a4, NodeContent, 0, 0);
  }

  return 1;
}

uint64_t xmlGetMaxOccurs(uint64_t a1, uint64_t a2, int a3, int a4, const char *a5)
{
  PropNode = xmlSchemaGetPropNode(a2, "maxOccurs");
  if (PropNode)
  {
    v10 = PropNode;
    NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
    if (xmlStrEqual(NodeContent, "unbounded"))
    {
      result = 0x40000000;
      if (a4 == 0x40000000)
      {
        return result;
      }
    }

    else
    {
      for (i = NodeContent; ; ++i)
      {
        v14 = *i;
        if (v14 > 0x20)
        {
          break;
        }

        if (((1 << v14) & 0x100002600) == 0)
        {
          if (!*i)
          {
            goto LABEL_10;
          }

          break;
        }
      }

      if (v14 - 48 > 9)
      {
        result = 0;
      }

      else
      {
        LODWORD(result) = 0;
        do
        {
          v15 = -2147483601 - v14;
          v16 = v14 + 10 * result - 48;
          if (10 * result > v15)
          {
            v16 = 0x7FFFFFFF;
          }

          if (result <= 214748364)
          {
            result = v16;
          }

          else
          {
            result = 0x7FFFFFFFLL;
          }

          v17 = *++i;
          v14 = v17;
        }

        while (v17 - 48 < 0xA);
      }

      v18 = (i + 1);
      while (v14 <= 0x20)
      {
        if (((1 << v14) & 0x100002600) == 0)
        {
          if (!v14 && result >= a3 && result <= a4)
          {
            return result;
          }

          break;
        }

        v19 = *v18++;
        v14 = v19;
      }
    }

LABEL_10:
    xmlSchemaPSimpleTypeErr(a1, 3037, v10, 0, a5, NodeContent, 0, 0);
  }

  return 1;
}

void xmlSchemaPCheckParticleCorrect_2(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 != 0x40000000 && (a4 | a3) != 0)
  {
    if (a4 <= 0)
    {
      PropNode = xmlSchemaGetPropNode(a2, "maxOccurs");
      v7 = a1;
      v8 = 3044;
    }

    else
    {
      if (a3 <= a4)
      {
        return;
      }

      PropNode = xmlSchemaGetPropNode(a2, "minOccurs");
      v7 = a1;
      v8 = 3043;
    }

    xmlSchemaPCustomAttrErr(v7, v8, PropNode);
  }
}

void *xmlSchemaAddParticle(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = malloc_type_malloc(0x30uLL, 0x1020040EC2530C8uLL);
  v9 = v8;
  if (!v8)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating particle component");
    return v9;
  }

  *v8 = 25;
  *(v8 + 5) = a2;
  v8[8] = a3;
  v8[9] = a4;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = 0;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v9);
    return 0;
  }

  return v9;
}

void xmlSchemaPCustomAttrErr(uint64_t a1, int a2, uint64_t a3)
{
  v7 = 0;
  xmlSchemaFormatItemForReport(&v7, 0, *(a3 + 40));
  v6 = *(a3 + 16);
  xmlSchemaPErrExt(a1, a3, a2, "%s, attribute '%s': %s.\n", v7);
  if (v7)
  {
    free(v7);
  }
}

void *xmlSchemaAddWildcard(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2)
  {
    v8 = malloc_type_malloc(0x48uLL, 0x1070040CB5E18C6uLL);
    v4 = v8;
    if (v8)
    {
      *(v8 + 20) = 0u;
      *(v8 + 17) = 0;
      *(v8 + 52) = 0u;
      *(v8 + 36) = 0u;
      *(v8 + 4) = 0u;
      *v8 = a3;
      *(v8 + 3) = a4;
      if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
      {
        ++*(a1 + 36);
        __xmlSimpleError(0x10u, 2, 0, 0, 0);
        free(v4);
        return 0;
      }
    }

    else
    {
      ++*(a1 + 36);
      __xmlSimpleError(0x10u, 2, 0, 0, "adding wildcard");
    }
  }

  return v4;
}

uint64_t xmlSchemaParseWildcardNs(uint64_t a1, uint64_t a2, xmlNode *node)
{
  Prop = xmlSchemaGetProp(a1, node, "processContents");
  if (Prop && (v7 = Prop, !xmlStrEqual(Prop, "strict")))
  {
    if (xmlStrEqual(v7, "skip"))
    {
      v8 = 0;
      v9 = 1;
      goto LABEL_5;
    }

    if (xmlStrEqual(v7, "lax"))
    {
      v8 = 0;
      v9 = 2;
      goto LABEL_5;
    }

    v8 = 3037;
    xmlSchemaPSimpleTypeErr(a1, 3037, node, 0, "(strict | skip | lax)", v7, 0, 0);
  }

  else
  {
    v8 = 0;
  }

  v9 = 3;
LABEL_5:
  *(a2 + 40) = v9;
  PropNode = xmlSchemaGetPropNode(node, "namespace");
  NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
  if (PropNode && (v12 = NodeContent, !xmlStrEqual(NodeContent, "##any")))
  {
    if (xmlStrEqual(v12, "##other"))
    {
      v14 = xmlSchemaNewWildcardNsConstraint(a1);
      *(a2 + 56) = v14;
      if (v14)
      {
        v14[1] = *(a1 + 200);
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v23 = 0;
      v24 = (a2 + 48);
      do
      {
        while (1)
        {
          v15 = *v12;
          if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
          {
            break;
          }

          ++v12;
        }

        v17 = 0;
        while (v15 > 0x20u || ((1 << v15) & 0x100002601) == 0)
        {
          LOBYTE(v15) = v12[++v17];
        }

        if (!v17)
        {
          break;
        }

        v18 = xmlStrndup(v12, v17);
        if (xmlStrEqual(v18, "##other") || xmlStrEqual(v18, "##any"))
        {
          v8 = 1792;
          xmlSchemaPSimpleTypeErr(a1, 1792, PropNode, 0, "((##any | ##other) | List of (xs:anyURI | (##targetNamespace | ##local)))", v18, 0, 0);
        }

        else
        {
          if (xmlStrEqual(v18, "##targetNamespace"))
          {
            v19 = *(a1 + 200);
          }

          else if (xmlStrEqual(v18, "##local"))
          {
            v19 = 0;
          }

          else
          {
            BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYURI);
            xmlSchemaPValAttrNodeValue(a1, PropNode, v18, BuiltInType);
            v19 = xmlDictLookup(*(a1 + 152), v18, -1);
          }

          v21 = (a2 + 48);
          while (1)
          {
            v21 = *v21;
            if (!v21)
            {
              break;
            }

            if (v19 == v21[1])
            {
              goto LABEL_30;
            }
          }

          v22 = xmlSchemaNewWildcardNsConstraint(a1);
          if (!v22)
          {
            free(v18);
            return 0xFFFFFFFFLL;
          }

          *v22 = 0;
          v22[1] = v19;
          if (*v24)
          {
            if (v23)
            {
              *v23 = v22;
            }

            v23 = v22;
          }

          else
          {
            *v24 = v22;
            v23 = v22;
          }
        }

LABEL_30:
        v12 += v17;
        free(v18);
      }

      while (*v12);
    }
  }

  else
  {
    *(a2 + 44) = 1;
  }

  return v8;
}

void *xmlSchemaNewWildcardNsConstraint(uint64_t a1)
{
  v2 = malloc_type_malloc(0x10uLL, 0x700404252BEB2uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "creating wildcard namespace constraint");
  }

  return v3;
}

uint64_t xmlSchemaCheckReference(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *str2)
{
  if (xmlStrEqual(*(a1 + 200), str2) || xmlStrEqual("http://www.w3.org/2001/XMLSchema", str2))
  {
    return 0;
  }

  v10 = *(*(*(a1 + 48) + 32) + 40);
  if (v10)
  {
    while (*(v10 + 2) > 1u || !xmlStrEqual(str2, v10[2]))
    {
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

LABEL_9:
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a2;
  }

  if (str2)
  {
    v8 = 3004;
    xmlSchemaCustomErr4(a1, 3004, v11, 0, "References from this schema to components in the namespace '%s' are not allowed, since not indicated by an import statement", str2, 0, 0, 0);
  }

  else
  {
    v8 = 3004;
    xmlSchemaCustomErr4(a1, 3004, v11, 0, "References from this schema to components in no namespace are not allowed, since not indicated by an import statement", 0, 0, 0, 0);
  }

  return v8;
}

void *xmlSchemaNewQNameRef(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_malloc(0x30uLL, 0x10700402C13C43AuLL);
  if (!v8)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating QName reference item");
    return 0;
  }

  v9 = v8;
  *(v8 + 4) = a4;
  *(v8 + 5) = 0;
  *v8 = 2000;
  *(v8 + 3) = a3;
  *(v8 + 1) = 0;
  v8[4] = a2;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v8) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v9);
    return 0;
  }

  return v9;
}

void xmlSchemaPMutualExclAttrErr(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  xmlSchemaFormatItemForReport(&v7, a3, *(a4 + 40));
  xmlSchemaPErrExt(a1, a4, a2, "%s: The attributes '%s' and '%s' are mutually exclusive.\n", v7);
  if (v7)
  {
    free(v7);
  }
}

void *xmlSchemaAddAttributeUse(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x48uLL, 0x107004031BF07FDuLL);
  if (!v4)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute");
    return 0;
  }

  v5 = v4;
  *(v4 + 36) = 0u;
  *(v4 + 17) = 0;
  *(v4 + 52) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 4) = 0u;
  *v4 = 26;
  *(v4 + 5) = a2;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v4) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v5);
    return 0;
  }

  return v5;
}

void *xmlSchemaAddAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = malloc_type_malloc(0x98uLL, 0x10700407EC41536uLL);
  if (!v10)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute");
    return 0;
  }

  v11 = v10;
  *(v10 + 100) = 0u;
  *(v10 + 20) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 116) = 0u;
  *(v10 + 37) = 0;
  *(v10 + 132) = 0u;
  *(v10 + 84) = 0u;
  *(v10 + 68) = 0u;
  *(v10 + 52) = 0u;
  *(v10 + 36) = 0u;
  *v10 = 15;
  *(v10 + 2) = a2;
  *(v10 + 13) = a4;
  *(v10 + 14) = a3;
  v12 = *(*(a1 + 48) + 32);
  if (a5)
  {
    v13 = (v12 + 64);
    v14 = 5;
  }

  else
  {
    v13 = (v12 + 72);
    v14 = 10;
  }

  if ((xmlSchemaAddItemSize(v13, v14, v11) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v11);
    return 0;
  }

  if ((xmlSchemaAddItemSize((*(a1 + 48) + 40), 10, v11) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
  }

  return v11;
}

void *xmlSchemaAddAttributeUseProhib(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x1070040FEECF9D1uLL);
  if (!v2)
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating attribute use prohibition");
    return 0;
  }

  v3 = v2;
  *(v2 + 9) = 0;
  *(v2 + 20) = 0u;
  *(v2 + 4) = 0u;
  *v2 = 2001;
  if ((xmlSchemaAddItemSize((*(*(a1 + 48) + 32) + 72), 10, v2) & 0x80000000) != 0)
  {
    ++*(a1 + 36);
    __xmlSimpleError(0x10u, 2, 0, 0, 0);
    free(v3);
    return 0;
  }

  return v3;
}

void xmlSchemaParseUnion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 160);
  *(v6 + 88) |= 0x80u;
  v28 = v6;
  *(v6 + 112) = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYSIMPLETYPE);
  v7 = *(a3 + 88);
  if (v7)
  {
    while (1)
    {
      v8 = *(v7 + 72);
      if (!v8)
      {
        break;
      }

      if (xmlStrEqual(*(v8 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v7 = *(v7 + 48);
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v7 + 16), "id") || xmlStrEqual(*(v7 + 16), "memberTypes"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v7);
    goto LABEL_7;
  }

LABEL_8:
  PropNode = xmlSchemaGetPropNode(a3, "id");
  if (PropNode)
  {
    xmlSchemaPValAttrNodeID(a1, PropNode);
  }

  v10 = xmlSchemaGetPropNode(a3, "memberTypes");
  if (v10)
  {
    v30 = 0;
    v31 = 0;
    NodeContent = xmlSchemaGetNodeContent(a1, v10);
    *(v6 + 96) = NodeContent;
    v29 = 0;
    do
    {
      while (1)
      {
        v12 = *NodeContent;
        if (v12 > 0x20 || ((1 << v12) & 0x100002600) == 0)
        {
          break;
        }

        ++NodeContent;
      }

      v14 = 0;
      while (v12 > 0x20u || ((1 << v12) & 0x100002601) == 0)
      {
        LOBYTE(v12) = NodeContent[++v14];
      }

      if (!v14)
      {
        break;
      }

      v15 = xmlStrndup(NodeContent, v14);
      if (xmlSchemaPValAttrNodeQNameValue(a1, a2, v10, v15, &v30, &v31))
      {
        if (v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v16 = v10;
        v17 = a2;
        v18 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        if (!v18)
        {
          if (a1)
          {
            ++*(a1 + 36);
          }

          __xmlSimpleError(0x10u, 2, 0, 0, "xmlSchemaParseUnion, allocating a type link");
          return;
        }

        v19 = v18;
        *v18 = 0;
        v18[1] = 0;
        v20 = xmlSchemaNewQNameRef(a1, 4, v31, v30);
        if (!v20)
        {
          if (a1)
          {
            ++*(a1 + 36);
          }

          __xmlSimpleError(0x10u, 2, 0, 0, "xmlSchemaParseUnion, allocating a type item");
          free(v19);
          if (v15)
          {
            free(v15);
          }

          return;
        }

        v19[1] = v20;
        v21 = v29;
        if (!v29)
        {
          v21 = (v6 + 168);
        }

        *v21 = v19;
        v29 = v19;
        a2 = v17;
        v10 = v16;
        if (v15)
        {
LABEL_24:
          free(v15);
        }
      }

      NodeContent += v14;
    }

    while (*NodeContent);
  }

  v22 = *(a3 + 24);
  if (v22)
  {
    if (!*(v22 + 72) || !xmlStrEqual(*(v22 + 16), "annotation") || !xmlStrEqual(*(*(v22 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v23 = xmlSchemaParseAnnotation(a1, v22, 1), xmlSchemaAddAnnotation(v6, v23), (v22 = *(v22 + 48)) != 0))
    {
      if (*(v22 + 72) && xmlStrEqual(*(v22 + 16), "simpleType") && xmlStrEqual(*(*(v22 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        v24 = 0;
        v25 = (v6 + 56);
        while (*(v22 + 72) && xmlStrEqual(*(v22 + 16), "simpleType") && xmlStrEqual(*(*(v22 + 72) + 16), "http://www.w3.org/2001/XMLSchema"))
        {
          v26 = xmlSchemaParseSimpleType(a1, a2, v22, 0);
          if (v26)
          {
            v27 = (v24 + 8);
            if (!v24)
            {
              v27 = v25;
            }

            *v27 = v26;
            *(v26 + 8) = 0;
            v24 = v26;
          }

          v22 = *(v22 + 48);
          if (!v22)
          {
            goto LABEL_52;
          }
        }
      }

      xmlSchemaPContentErr(a1, 3033, a3, v22, 0, "(annotation?, simpleType*)");
    }
  }

LABEL_52:
  if (!v10 && !*(v28 + 56))
  {

    xmlSchemaPCustomErrExt(a1, 3007, 0, a3, "Either the attribute 'memberTypes' or at least one <simpleType> child must be present");
  }
}

void *xmlSchemaParseIDCSelectorAndField(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 88);
  if (v8)
  {
    while (1)
    {
      v9 = *(v8 + 72);
      if (!v9)
      {
        break;
      }

      if (xmlStrEqual(*(v9 + 16), "http://www.w3.org/2001/XMLSchema"))
      {
        goto LABEL_4;
      }

LABEL_7:
      v8 = *(v8 + 48);
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    if (xmlStrEqual(*(v8 + 16), "id") || xmlStrEqual(*(v8 + 16), "xpath"))
    {
      goto LABEL_7;
    }

LABEL_4:
    xmlSchemaPIllegalAttrErr(a1, v8);
    goto LABEL_7;
  }

LABEL_8:
  v10 = malloc_type_malloc(0x28uLL, 0x10F00407EC66000uLL);
  v11 = v10;
  if (v10)
  {
    v10[4] = 0;
    *v10 = 0u;
    *(v10 + 1) = 0u;
    PropNode = xmlSchemaGetPropNode(a3, "xpath");
    if (PropNode)
    {
      v13 = PropNode;
      NodeContent = xmlSchemaGetNodeContent(a1, PropNode);
      v11[3] = NodeContent;
      if (!NodeContent)
      {
        v19 = "The XPath expression of the selector is not valid";
        v20 = a1;
        v21 = v13;
LABEL_35:
        xmlSchemaPCustomErrExt(v20, 3037, 0, v21, v19);
        goto LABEL_39;
      }

      NsList = xmlGetNsList(*(v13 + 64), *(v13 + 40));
      if (NsList)
      {
        v16 = NsList;
        if (*NsList)
        {
          v17 = 0;
            ;
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v23 = malloc_type_malloc(8 * ((2 * (v17 & 0x3FFFFFFF)) | 1), 0x50040EE9192B6uLL);
        if (!v23)
        {
          if (a1)
          {
            ++a1[9];
          }

          __xmlSimpleError(0x10u, 2, 0, 0, "allocating a namespace array");
          free(v16);
          xmlSchemaPErr(a1, v13, 3069, "Internal error: xmlSchemaParseIDCSelectorAndField, validating the XPath expression of a IDC selector.\n", 0, 0);
          goto LABEL_39;
        }

        v22 = v23;
        if (v17)
        {
          v24 = v17;
          v25 = v23 + 8;
          v26 = v16;
          do
          {
            *(v25 - 1) = (*v26)->href;
            v27 = *v26++;
            *v25 = *(v27 + 24);
            v25 += 2;
            --v24;
          }

          while (v24);
        }

        *&v23[8 * (2 * v17)] = 0;
        free(v16);
      }

      else
      {
        v22 = 0;
      }

      if (a4)
      {
        v28 = 4;
      }

      else
      {
        v28 = 2;
      }

      v29 = xmlPatterncompile(v11[3], 0, v28, v22);
      v11[4] = v29;
      if (v22)
      {
        free(v22);
        v29 = v11[4];
      }

      if (!v29)
      {
        v30 = v11[3];
        v19 = "The XPath expression '%s' could not be compiled";
        v20 = a1;
        v21 = v13;
        goto LABEL_35;
      }
    }

    else
    {
      xmlSchemaPMissingAttrErr(a1, a3, "name");
    }

LABEL_39:
    v31 = xmlSchemaGetPropNode(a3, "id");
    if (v31)
    {
      xmlSchemaPValAttrNodeID(a1, v31);
    }

    v32 = *(a3 + 24);
    if (v32)
    {
      if (!*(v32 + 72) || !xmlStrEqual(*(v32 + 16), "annotation") || !xmlStrEqual(*(*(v32 + 72) + 16), "http://www.w3.org/2001/XMLSchema") || (v33 = xmlSchemaParseAnnotation(a1, v32, 1), xmlSchemaAddAnnotation(a2, v33), (v32 = *(v32 + 48)) != 0))
      {
        xmlSchemaPContentErr(a1, 3033, a3, v32, 0, "(annotation?)");
      }
    }

    return v11;
  }

  if (a1)
  {
    ++a1[9];
  }

  __xmlSimpleError(0x10u, 2, 0, 0, "allocating a 'selector' of an identity-constraint definition");
  return v11;
}

uint64_t xmlSchemaAddComponents(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 4);
  if ((v3 & 2) != 0)
  {
    return 0;
  }

  *(a2 + 4) = v3 | 2;
  v5 = *(a2 + 64);
  if (*(v5 + 8) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*v5 + 8 * v6);
      v8 = *v7;
      if (*v7 > 16)
      {
        if ((v8 - 22) >= 3)
        {
          if (v8 == 17)
          {
            if ((*(v7 + 56) & 2) != 0)
            {
              goto LABEL_48;
            }

            v9 = *(v7 + 32);
            v16 = *(a2 + 80);
            if (*a2 > 1u)
            {
              v16 = *(v16 + 80);
            }

            v11 = (v16 + 112);
          }

          else
          {
            if (v8 != 18)
            {
              goto LABEL_47;
            }

            v9 = *(v7 + 8);
            v13 = *(a2 + 80);
            if (*a2 > 1u)
            {
              v13 = *(v13 + 80);
            }

            v11 = (v13 + 88);
          }
        }

        else
        {
          v9 = *(v7 + 32);
          v12 = *(a2 + 80);
          if (*a2 > 1u)
          {
            v12 = *(v12 + 80);
          }

          v11 = (v12 + 144);
        }

        goto LABEL_37;
      }

      if (v8 <= 14)
      {
        if ((v8 - 4) >= 2)
        {
          if (v8 != 14)
          {
LABEL_47:
            xmlSchemaInternalErr2(a1, "xmlSchemaAddComponents", "Unexpected global component type", 0);
            goto LABEL_48;
          }

          v9 = *(v7 + 16);
          v11 = (*(a2 + 80) + 80);
          if (*a2 >= 2u)
          {
            v11 = (*v11 + 80);
          }
        }

        else
        {
          if ((*(v7 + 91) & 0x40) != 0)
          {
            goto LABEL_48;
          }

          v9 = *(v7 + 16);
          v10 = *(a2 + 80);
          if (*a2 > 1u)
          {
            v10 = *(v10 + 80);
          }

          v11 = (v10 + 56);
        }

        goto LABEL_37;
      }

      if (v8 == 15)
      {
        break;
      }

      if (v8 != 16)
      {
        goto LABEL_47;
      }

      if ((*(v7 + 72) & 8) == 0)
      {
        v9 = *(v7 + 16);
        v14 = *(a2 + 80);
        if (*a2 > 1u)
        {
          v14 = *(v14 + 80);
        }

        v11 = (v14 + 72);
LABEL_37:
        Dict = *v11;
        if (!*v11)
        {
          Dict = xmlHashCreateDict(10, *(a1 + 152));
          *v11 = Dict;
          if (!Dict)
          {
            xmlSchemaInternalErr2(a1, "xmlSchemaAddComponents", "failed to create a component hash table", 0);
            return 0xFFFFFFFFLL;
          }
        }

        if (xmlHashAddEntry(Dict, v9, v7))
        {
          v24 = 0;
          ComponentNode = xmlSchemaGetComponentNode(v7);
          if (*v7 == 1)
          {
            if (*(v7 + 160) == 45)
            {
              v19 = "complex type definition";
            }

            else
            {
              v19 = "simple type definition";
            }
          }

          else
          {
            v19 = xmlSchemaItemTypeToStr(*v7);
          }

          ComponentQName = xmlSchemaGetComponentQName(&v24, v7);
          xmlSchemaCustomErr4(a1, 1761, ComponentNode, v7, "A global %s '%s' does already exist", v19, ComponentQName, 0, 0);
          if (v24)
          {
            free(v24);
          }
        }
      }

LABEL_48:
      ++v6;
      v5 = *(a2 + 64);
      if (v6 >= *(v5 + 8))
      {
        goto LABEL_49;
      }
    }

    v9 = *(v7 + 16);
    v15 = *(a2 + 80);
    if (*a2 > 1u)
    {
      v15 = *(v15 + 80);
    }

    v11 = (v15 + 64);
    goto LABEL_37;
  }

LABEL_49:
  v21 = *(a2 + 40);
  if (!v21)
  {
    return 0;
  }

  while (1)
  {
    v22 = v21[3];
    if (v22)
    {
      if ((*(v22 + 4) & 2) == 0)
      {
        result = xmlSchemaAddComponents(a1);
        if (result == -1)
        {
          break;
        }
      }
    }

    v21 = *v21;
    if (!v21)
    {
      return 0;
    }
  }

  return result;
}

xmlSchemaTypePtr xmlSchemaResolveElementReferences(xmlSchemaTypePtr result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  flags = result->flags;
  if ((flags & 0x100) != 0)
  {
    return result;
  }

  result->flags = flags | 0x100;
  if (!result->subtypes)
  {
    baseNs = result->baseNs;
    if (baseNs)
    {
      Type = xmlSchemaGetType(*(a2 + 64), baseNs, result->baseType);
      if (Type)
      {
        *(v2 + 56) = Type;
      }

      else
      {
        xmlSchemaPResCompAttrErr(a2, v2, *(v2 + 72), "type", *(v2 + 104), *(v2 + 112), 1, "type definition");
      }
    }
  }

  v5 = *(v2 + 120);
  if (!v5)
  {
    goto LABEL_13;
  }

  Elem = xmlSchemaGetElem(*(a2 + 64), v5, *(v2 + 128));
  if (!Elem)
  {
    xmlSchemaPResCompAttrErr(a2, v2, 0, "substitutionGroup", *(v2 + 120), *(v2 + 128), 14, 0);
LABEL_13:
    result = *(v2 + 56);
    goto LABEL_14;
  }

  v7 = Elem;
  result = xmlSchemaResolveElementReferences(Elem, a2);
  *(v2 + 152) = v7;
  if (*(v2 + 56))
  {
    return result;
  }

  result = v7[7];
  if (result)
  {
    goto LABEL_18;
  }

  result = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
  *(v2 + 56) = result;
LABEL_14:
  if (!result && !*(v2 + 104) && !*(v2 + 120))
  {
    result = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
LABEL_18:
    *(v2 + 56) = result;
  }

  return result;
}

uint64_t xmlSchemaAttributeGroupExpandRefs(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 72);
  if (v3)
  {
    return 0;
  }

  *(a2 + 72) = v3 | 1;
  if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 80), v2, 0) == -1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t xmlSchemaFixupSimpleTypeStageOne(_DWORD *a1, uint64_t a2)
{
  if (*a2 != 4)
  {
    return 0;
  }

  v3 = *(a2 + 88);
  if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  *(a2 + 88) = v3 | 0x20000000;
  if ((v3 & 0x40) != 0)
  {
    if (*(a2 + 56))
    {
      return 0;
    }

    v8 = "list type has no item-type assigned";
    goto LABEL_21;
  }

  if ((v3 & 0x80) != 0)
  {
    if (*(a2 + 168))
    {
      return 0;
    }

    v8 = "union type has no member-types assigned";
    goto LABEL_21;
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
    v8 = "type has no base-type assigned";
LABEL_21:
    xmlSchemaInternalErr2(a1, "xmlSchemaFixupSimpleTypeStageOne", v8, 0);
    return 0xFFFFFFFFLL;
  }

  if (*v4 != 1 && (*(v4 + 91) & 0x20) == 0)
  {
    result = xmlSchemaFixupSimpleTypeStageOne();
    if (result == -1)
    {
      return result;
    }

    v4 = *(a2 + 112);
  }

  v6 = *(v4 + 88);
  if ((v6 & 0x100) != 0)
  {
    result = 0;
    v7 = *(a2 + 88) | 0x100;
    goto LABEL_24;
  }

  if ((v6 & 0x40) == 0)
  {
    if ((v6 & 0x80) != 0)
    {
      result = 0;
      v7 = *(a2 + 88) | 0x80;
LABEL_24:
      *(a2 + 88) = v7;
      return result;
    }

    return 0;
  }

  result = 0;
  *(a2 + 88) |= 0x40u;
  *(a2 + 56) = *(v4 + 56);
  return result;
}

uint64_t xmlSchemaFixupSimpleTypeStageTwo(xmlSchemaParserCtxt *ctxt, int *typeDecl, uint64_t a3, xmlSchemaFacetPtr i)
{
  if (*typeDecl != 4)
  {
    return 0xFFFFFFFFLL;
  }

  v60[11] = v4;
  v60[12] = v5;
  v7 = typeDecl[22];
  if ((v7 & 0x400000) != 0)
  {
    return 0;
  }

  v9 = *(ctxt + 9);
  typeDecl[22] = v7 | 0x400000;
  typeDecl[23] = 4;
  v10 = *(typeDecl + 14);
  if (!v10)
  {
    v26 = "xmlSchemaFixupSimpleTypeStageTwo";
    v27 = "missing baseType";
LABEL_31:
    xmlSchemaInternalErr2(ctxt, v26, v27, 0);
    return 0xFFFFFFFFLL;
  }

  if (v10->type != XML_SCHEMA_TYPE_BASIC && (v10->flags & 0x400000) == 0)
  {
    xmlSchemaTypeFixup(v10, ctxt);
  }

  v11 = (typeDecl + 42);
  v12 = *(typeDecl + 21);
  if (v12)
  {
    while (1)
    {
      type = v12->type;
      if (*type != 1 && (*(type + 90) & 0x40) == 0)
      {
        xmlSchemaTypeFixup(type, ctxt);
        type = v12->type;
      }

      if ((*(type + 88) & 0x80) != 0)
      {
        while (1)
        {
          if (*type != 4)
          {
            goto LABEL_20;
          }

          v14 = *(type + 168);
          if (v14)
          {
            break;
          }

          type = *(type + 112);
          if (!type)
          {
            goto LABEL_20;
          }
        }

        v12->type = *(v14 + 8);
        v15 = *v14;
        if (*v14)
        {
          break;
        }
      }

LABEL_20:
      v12 = v12->next;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    next = v12->next;
    p_next = &v12->next;
    while (1)
    {
      v18 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
      if (!v18)
      {
        break;
      }

      v18[1] = v15[1];
      *p_next = v18;
      *v18 = next;
      v15 = *v15;
      p_next = v18;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    if (ctxt)
    {
      ++*(ctxt + 9);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating a type link");
    return 0xFFFFFFFFLL;
  }

LABEL_21:
  v19 = *(typeDecl + 14);
  v60[0] = 0;
  if (!v19)
  {
    v28 = "No base type existent";
LABEL_37:
    v29 = ctxt;
    v30 = 3008;
LABEL_38:
    xmlSchemaPCustomErrExt(v29, v30, typeDecl, 0, v28);
    goto LABEL_39;
  }

  v20 = v19->type;
  if (v19->type != XML_SCHEMA_TYPE_SIMPLE && (v20 != XML_SCHEMA_TYPE_BASIC || v19->builtInType == 45))
  {
    xmlSchemaGetComponentQName(v60, v19);
    v21 = "The base type '%s' is not a simple type";
    goto LABEL_26;
  }

  v31 = typeDecl[22];
  if ((v31 & 0xC0) != 0 && (v31 & 4) == 0 && v20 != XML_SCHEMA_TYPE_SIMPLE && (v20 != XML_SCHEMA_TYPE_BASIC || v19->builtInType != 46))
  {
    xmlSchemaGetComponentQName(v60, v19);
    v21 = "A type, derived by list or union, must have the simple ur-type definition as base type, not '%s'";
LABEL_26:
    v22 = ctxt;
    v23 = 3008;
LABEL_27:
    xmlSchemaPCustomErrExt(v22, v23, typeDecl, 0, v21);
    v24 = v60[0];
    if (!v60[0])
    {
      goto LABEL_39;
    }

LABEL_28:
    free(v24);
    goto LABEL_39;
  }

  if ((v31 & 0x1C0) == 0)
  {
    v28 = "The variety is absent";
    goto LABEL_37;
  }

  flags = v19->flags;
  if ((flags & 0x400) != 0)
  {
    xmlSchemaGetComponentQName(v60, v19);
    v21 = "The 'final' of its base type '%s' must not contain 'restriction'";
    v22 = ctxt;
    v23 = 3010;
    goto LABEL_27;
  }

  v60[0] = 0;
  if (*typeDecl != 4)
  {
    v26 = "xmlSchemaCheckCOSSTRestricts";
    v27 = "given type is not a user-derived simpleType";
    goto LABEL_31;
  }

  if ((v31 & 0x100) != 0)
  {
    if ((flags & 0x100) == 0)
    {
      xmlSchemaGetComponentQName(v60, v19);
      v21 = "The base type '%s' is not an atomic simple type";
      v22 = ctxt;
      v23 = 3011;
      goto LABEL_27;
    }

    v36 = *(typeDecl + 15);
    if (v36)
    {
      v27 = "failed to get primitive type";
      v37 = typeDecl;
      while (v37->builtInType != 46 && (v37->flags & 0x4000) == 0)
      {
        v37 = v37->baseType;
        if (!v37)
        {
          goto LABEL_77;
        }
      }

      v38 = 0;
      do
      {
        while (!xmlSchemaIsBuiltInTypeFacet(v37, v36->type))
        {
          xmlSchemaPIllegalFacetAtomicErr(ctxt, typeDecl, v37, v36);
          v36 = v36->next;
          v38 = 1;
          if (!v36)
          {
            goto LABEL_39;
          }
        }

        v36 = v36->next;
      }

      while (v36);
      if (v38)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_85;
  }

  if ((v31 & 0x40) != 0)
  {
    v35 = *(typeDecl + 7);
    if (v35)
    {
      if (v35->type == XML_SCHEMA_TYPE_SIMPLE)
      {
        if ((v35->flags & 0x400000) == 0)
        {
          xmlSchemaTypeFixup(*(typeDecl + 7), ctxt);
        }
      }

      else if (v35->type != XML_SCHEMA_TYPE_BASIC || v35->builtInType == 45)
      {
        goto LABEL_71;
      }

      v42 = v35->flags;
      if ((v42 & 0x180) != 0)
      {
        if ((v42 & 0x80) == 0)
        {
LABEL_104:
          v43 = *(typeDecl + 14);
          if (v43->type == XML_SCHEMA_TYPE_BASIC && v43->builtInType == 46)
          {
            if ((v42 & 0x800) != 0)
            {
              xmlSchemaGetComponentQName(v60, v35);
              v21 = "The final of its item type '%s' must not contain 'list'";
              v22 = ctxt;
              v23 = 3016;
              goto LABEL_27;
            }

            for (i = *(typeDecl + 15); i; i = i->next)
            {
              if (i->type != XML_SCHEMA_FACET_WHITESPACE)
              {
                xmlSchemaPIllegalFacetListUnionErr(ctxt, 3017, typeDecl, i);
                goto LABEL_39;
              }
            }

            goto LABEL_85;
          }

          v45 = v43->flags;
          if ((v45 & 0x40) == 0)
          {
            xmlSchemaGetComponentQName(v60, v43);
            v21 = "The base type '%s' must be a list type";
            v22 = ctxt;
            v23 = 3018;
            goto LABEL_27;
          }

          if ((v45 & 0x400) != 0)
          {
            xmlSchemaGetComponentQName(v60, v43);
            v21 = "The 'final' of the base type '%s' must not contain 'restriction'";
            v22 = ctxt;
            v23 = 3019;
            goto LABEL_27;
          }

          subtypes = v43->subtypes;
          if (subtypes && (*subtypes == 4 || *subtypes == 1 && subtypes[40] != 45))
          {
            if (v35 != subtypes && xmlSchemaCheckCOSSTDerivedOK(ctxt, v35, subtypes, 0))
            {
              v58 = 0;
              v59 = 0;
              xmlSchemaGetComponentQName(v60, v35);
              xmlSchemaGetComponentQName(&v59, subtypes);
              xmlSchemaGetComponentQName(&v58, *(typeDecl + 14));
              v54 = "The item type '%s' is not validly derived from the item type '%s' of the base type '%s'";
              v55 = ctxt;
              v56 = 3020;
              goto LABEL_155;
            }

            v57 = *(typeDecl + 15);
            if (v57)
            {
              v52 = 0;
              do
              {
                while (v57->type - 1006 > 5)
                {
                  xmlSchemaPIllegalFacetListUnionErr(ctxt, 3021, typeDecl, v57);
                  v57 = v57->next;
                  v52 = 1;
                  if (!v57)
                  {
                    goto LABEL_39;
                  }
                }

                v57 = v57->next;
              }

              while (v57);
LABEL_168:
              if (v52)
              {
                goto LABEL_39;
              }
            }

            goto LABEL_85;
          }

          v27 = "failed to eval the item type of a base type";
          goto LABEL_77;
        }

        p_memberTypes = &v35->memberTypes;
        do
        {
          p_memberTypes = *p_memberTypes;
          if (!p_memberTypes)
          {
            goto LABEL_104;
          }

          v47 = p_memberTypes[1];
        }

        while ((*(v47 + 89) & 1) != 0);
        xmlSchemaGetComponentQName(v60, v47);
        v21 = "The item type is a union type, but the member type '%s' of this item type is not atomic";
      }

      else
      {
        xmlSchemaGetComponentQName(v60, v35);
        v21 = "The item type '%s' does not have a variety of atomic or union";
      }

      v22 = ctxt;
      v23 = 3015;
      goto LABEL_27;
    }

LABEL_71:
    v27 = "failed to evaluate the item type";
LABEL_77:
    v26 = "xmlSchemaCheckCOSSTRestricts";
    goto LABEL_31;
  }

  if ((v31 & 0x80) == 0)
  {
    goto LABEL_85;
  }

  v33 = (typeDecl + 42);
  while (1)
  {
    v33 = *v33;
    if (!v33)
    {
      break;
    }

    v34 = v33[1];
    if (*v34 != 1 && (*(v34 + 90) & 0x40) == 0)
    {
      xmlSchemaTypeFixup(v33[1], ctxt);
      v34 = v33[1];
    }

    if ((*(v34 + 88) & 0x140) == 0)
    {
      xmlSchemaGetComponentQName(v60, v34);
      v21 = "The member type '%s' is neither an atomic, nor a list type";
      v22 = ctxt;
      v23 = 3023;
      goto LABEL_27;
    }
  }

  v39 = *(typeDecl + 14);
  if (v39->builtInType == 46)
  {
    v40 = *v11;
    if (*v11)
    {
      while (1)
      {
        v41 = v40[1];
        if (v41)
        {
          if ((*(v41 + 89) & 0x10) != 0)
          {
            break;
          }
        }

        v40 = *v40;
        if (!v40)
        {
          goto LABEL_98;
        }
      }

      xmlSchemaGetComponentQName(v60, v41);
      v21 = "The 'final' of member type '%s' contains 'union'";
      v22 = ctxt;
      v23 = 3024;
      goto LABEL_27;
    }

LABEL_98:
    if (*(typeDecl + 22))
    {
      v28 = "No facets allowed";
      v29 = ctxt;
      v30 = 3025;
      goto LABEL_38;
    }

LABEL_85:
    result = xmlSchemaCheckFacetValues(typeDecl, ctxt, a3, i);
    if (result != -1)
    {
      if (result)
      {
        goto LABEL_39;
      }

      if (!*(typeDecl + 22) && !*(*(typeDecl + 14) + 176) || (result = xmlSchemaDeriveAndValidateFacets(ctxt, typeDecl), result != -1))
      {
        result = xmlSchemaTypeFixupWhitespace(typeDecl);
        if (result != -1)
        {
          if (!result)
          {
            xmlSchemaTypeFixupOptimFacets(typeDecl);
          }

          goto LABEL_39;
        }
      }
    }

    return result;
  }

  v44 = v39->flags;
  if ((v44 & 0x80) == 0)
  {
    xmlSchemaGetComponentQName(v60, v39);
    v21 = "The base type '%s' is not a union type";
    v22 = ctxt;
    v23 = 3027;
    goto LABEL_27;
  }

  if ((v44 & 0x400) != 0)
  {
    xmlSchemaGetComponentQName(v60, v39);
    v21 = "The 'final' of its base type '%s' must not contain 'restriction'";
    v22 = ctxt;
    v23 = 3026;
    goto LABEL_27;
  }

  v48 = *v11;
  if (!*v11)
  {
LABEL_133:
    v51 = *(typeDecl + 15);
    if (v51)
    {
      v52 = 0;
      do
      {
        while ((v51->type & 0xFFFFFFFE) == 0x3EE)
        {
          v51 = v51->next;
          if (!v51)
          {
            goto LABEL_168;
          }
        }

        xmlSchemaPIllegalFacetListUnionErr(ctxt, 3029, typeDecl, v51);
        v51 = v51->next;
        v52 = 1;
      }

      while (v51);
      goto LABEL_39;
    }

    goto LABEL_85;
  }

  do
  {
    if (v39->type != XML_SCHEMA_TYPE_SIMPLE)
    {
      break;
    }

    v49 = &v39->memberTypes->next;
    if (v49)
    {
      goto LABEL_127;
    }

    v39 = v39->baseType;
  }

  while (v39);
  v49 = 0;
  while (1)
  {
LABEL_127:
    if (!v49)
    {
      xmlSchemaInternalErr2(ctxt, "xmlSchemaCheckCOSSTRestricts", "different number of member types in base", 0);
      goto LABEL_132;
    }

    v50 = v48[1];
    a3 = v49[1];
    if (v50 != a3)
    {
      if (xmlSchemaCheckCOSSTDerivedOK(ctxt, v50, a3, 0))
      {
        break;
      }
    }

    v49 = *v49;
LABEL_132:
    v48 = *v48;
    if (!v48)
    {
      goto LABEL_133;
    }
  }

  v58 = 0;
  v59 = 0;
  xmlSchemaGetComponentQName(v60, v48[1]);
  xmlSchemaGetComponentQName(&v59, v49[1]);
  xmlSchemaGetComponentQName(&v58, *(typeDecl + 14));
  v54 = "The member type %s is not validly derived from its corresponding member type %s of the base type %s";
  v55 = ctxt;
  v56 = 3028;
LABEL_155:
  xmlSchemaPCustomErrExt(v55, v56, typeDecl, 0, v54);
  if (v60[0])
  {
    free(v60[0]);
  }

  if (v59)
  {
    free(v59);
  }

  v24 = v58;
  if (v58)
  {
    goto LABEL_28;
  }

LABEL_39:
  if (v9 == *(ctxt + 9))
  {
    return 0;
  }

  else
  {
    return *(ctxt + 8);
  }
}

void xmlSchemaCheckAttrPropsCorrect(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    v4 = *(a2 + 88);
    if (v4)
    {
      v6 = *(a2 + 96);
      do
      {
        if (*v6 == 5)
        {
          break;
        }

        v7 = *(v6 + 160);
        if (v7 == 45)
        {
          break;
        }

        if (*v6 == 1)
        {
          if (v7 == 23)
          {
            xmlSchemaCustomErr4(a1, 3090, 0, a2, "Value constraints are not allowed if the type definition is or is derived from xs:ID", 0, 0, 0, 0);
            return;
          }

          if (v7 == 46)
          {
            break;
          }
        }

        v6 = *(v6 + 56);
      }

      while (v6);
      v8 = xmlSchemaVCheckCVCSimpleType(a1, *(a2 + 104), v2, v4, (a2 + 136), 1u, 1, 0);
      if (v8)
      {
        if (v8 < 0)
        {

          xmlSchemaInternalErr2(a1, "xmlSchemaCheckAttrPropsCorrect", "calling xmlSchemaVCheckCVCSimpleType()", 0);
        }

        else
        {
          xmlSchemaCustomErr4(a1, 3079, 0, a2, "The value of the value constraint is not valid", 0, 0, 0, 0);
        }
      }
    }
  }
}

void xmlSchemaCheckAttrUsePropsCorrect(_DWORD *a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return;
  }

  v4 = *(a2 + 24);
  if (!v4 || *v4 != 15)
  {
    return;
  }

  v5 = a1;
  if (*(v4 + 88) && (*(v4 + 121) & 2) != 0 && (*(a2 + 32) & 1) == 0)
  {
    v6 = "The attribute declaration has a 'fixed' value constraint , thus the attribute use must also have a 'fixed' value constraint";
    v7 = a2;
LABEL_26:

    xmlSchemaPCustomErrExt(a1, 3078, v7, 0, v6);
    return;
  }

  v8 = (a2 + 64);
  if (!*(a2 + 64) || (v9 = *(v4 + 96)) == 0)
  {
LABEL_22:
    v13 = *(v4 + 136);
    if (!v13 || (*(v4 + 120) & 1) != 0 || xmlSchemaAreValuesEqual(*v8, v13))
    {
      return;
    }

    v14 = *(*(a2 + 24) + 88);
    v6 = "The 'fixed' value constraint of the attribute use must match the attribute declaration's value constraint '%s'";
    a1 = v5;
    v7 = a2;
    goto LABEL_26;
  }

  v10 = *(v4 + 96);
  do
  {
    if (*v10 == 5)
    {
      break;
    }

    v11 = *(v10 + 160);
    if (v11 == 45)
    {
      break;
    }

    if (*v10 == 1)
    {
      if (v11 == 23)
      {
        xmlSchemaCustomErr4(a1, 3089, 0, a2, "Value constraints are not allowed if the type definition is or is derived from xs:ID", 0, 0, 0, 0);
        return;
      }

      if (v11 == 46)
      {
        break;
      }
    }

    v10 = *(v10 + 56);
  }

  while (v10);
  v12 = xmlSchemaVCheckCVCSimpleType(a1, *(a2 + 40), v9, v3, (a2 + 64), 1u, 1, 0);
  if (!v12)
  {
    v4 = *(a2 + 24);
    goto LABEL_22;
  }

  if (v12 < 0)
  {

    xmlSchemaInternalErr2(v5, "xmlSchemaCheckAttrUsePropsCorrect", "calling xmlSchemaVCheckCVCSimpleType()", 0);
  }

  else
  {
    xmlSchemaCustomErr4(v5, 3089, 0, a2, "The value of the value constraint is not valid", 0, 0, 0, 0);
  }
}

uint64_t xmlSchemaCheckAGPropsCorrect(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 112);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3 >= 2)
    {
      v5 = result;
      v6 = 0;
      v7 = v3 - 2;
      v8 = v3 - 1;
      do
      {
        v9 = v3--;
        v10 = *(*v2 + 8 * v3);
        if (v3)
        {
          v11 = *(v10 + 24);
          v12 = *v2 + 8 * v7;
          v13 = v8;
          while (1)
          {
            v14 = *(*v12 + 24);
            if (*(v11 + 16) == *(v14 + 16) && *(v11 + 112) == *(v14 + 112))
            {
              break;
            }

            --v13;
            v12 -= 8;
            if (v13 <= 0)
            {
              goto LABEL_9;
            }
          }

          v21 = 0;
          v17 = *(a2 + 64);
          ComponentDesignation = xmlSchemaGetComponentDesignation(&v21, v10);
          xmlSchemaCustomErr4(v5, 3087, v17, a2, "Duplicate %s", ComponentDesignation, 0, 0, 0);
          if (v21)
          {
            free(v21);
          }

          result = xmlSchemaItemListRemove(v2, v3);
          if (result == -1)
          {
            return result;
          }
        }

        else
        {
LABEL_9:
          for (i = *(*(v10 + 24) + 96); i; i = *(i + 56))
          {
            if (*i == 5)
            {
              break;
            }

            v16 = *(i + 160);
            if (v16 == 45)
            {
              break;
            }

            if (*i == 1)
            {
              if (v16 == 23)
              {
                if (!v6)
                {
                  goto LABEL_25;
                }

                v21 = 0;
                v19 = *(a2 + 64);
                v20 = xmlSchemaGetComponentDesignation(&v21, v10);
                xmlSchemaCustomErr4(v5, 3087, v19, a2, "There must not exist more than one attribute declaration of type 'xs:ID' (or derived from 'xs:ID'). The %s violates this constraint", v20, 0, 0, 0);
                if (v21)
                {
                  free(v21);
                }

                result = xmlSchemaItemListRemove(v2, v3);
                if (result != -1)
                {
LABEL_25:
                  v6 = 1;
                  break;
                }

                return result;
              }

              if (v16 == 46)
              {
                break;
              }
            }
          }
        }

        --v7;
        --v8;
      }

      while (v9 > 1);
    }
  }

  return result;
}

uint64_t xmlSchemaCheckSRCRedefineSecond(uint64_t result)
{
  v1 = *(*(result + 48) + 56);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = v1[3];
      if (v3)
      {
        v4 = v1[1];
        if ((*v4 - 4) >= 2)
        {
          if (*v4 == 16)
          {
            result = xmlSchemaCheckDerivationOKRestriction2to4(v2, 1, v4, v3, *(v4 + 112), *(v3 + 112), *(v4 + 80), *(v3 + 80));
            if (result == -1)
            {
              return result;
            }
          }
        }

        else
        {
          *(v3 + 16) = 0;
        }
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

uint64_t xmlSchemaFixupComplexType(_DWORD *a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    return 0;
  }

  v101[11] = v2;
  v101[12] = v3;
  v6 = *(a2 + 88);
  if ((v6 & 0x400000) != 0)
  {
    return 0;
  }

  v8 = a1[9];
  v9 = *(a2 + 112);
  *(a2 + 88) = v6 | 0x400000;
  if (!v9)
  {
    v15 = "xmlSchemaFixupComplexType";
    v16 = "missing baseType";
LABEL_19:
    xmlSchemaInternalErr2(a1, v15, v16, 0);
LABEL_20:
    *(a2 + 88) |= 0x800000u;
    return 0xFFFFFFFFLL;
  }

  if (v9->type != XML_SCHEMA_TYPE_BASIC && (v9->flags & 0x400000) == 0)
  {
    xmlSchemaTypeFixup(v9, a1);
  }

  if ((v9->flags & 0x800000) != 0)
  {
    return 0;
  }

  v10 = *(a2 + 112);
  v11 = *(a2 + 92);
  if ((v11 | 2) != 6)
  {
    if (*v10 == 5 || *(v10 + 160) == 45)
    {
      goto LABEL_39;
    }

    v101[0] = 0;
    v17 = *(a2 + 72);
    xmlSchemaFormatQName(v101, *(v10 + 208), *(v10 + 16));
    v18 = "If using <complexContent>, the base type is expected to be a complex type. The base type '%s' is a simple type";
    v19 = a1;
    v20 = a2;
    v21 = v17;
LABEL_33:
    xmlSchemaPCustomErrExt(v19, 3076, v20, v21, v18);
    if (v101[0])
    {
      free(v101[0]);
    }

    goto LABEL_35;
  }

  if (*v10 == 4 || *v10 == 1 && *(v10 + 160) != 45)
  {
    if ((*(a2 + 88) & 2) != 0)
    {
      goto LABEL_39;
    }

    v101[0] = 0;
    xmlSchemaFormatQName(v101, *(v10 + 208), *(v10 + 16));
    v18 = "If using <simpleContent> and <restriction>, the base type must be a complex type. The base type '%s' is a simple type";
    goto LABEL_26;
  }

  v12 = *(v10 + 92);
  if (v12 == 3)
  {
    if ((*(a2 + 88) & 4) == 0)
    {
      v22 = "If <simpleContent> and <extension> is used, the base type must be a simple type. The base type '%s' is a complex type";
LABEL_32:
      v101[0] = 0;
      xmlSchemaFormatQName(v101, *(v10 + 208), *(v10 + 16));
      v19 = a1;
      v20 = a2;
      v21 = 0;
      v18 = v22;
      goto LABEL_33;
    }

    if (!xmlSchemaIsParticleEmptiable(*(v10 + 56)))
    {
      v22 = "If <simpleContent> and <restriction> is used, the base type must be a simple type or a complex type with mixed content and particle emptiable. The base type '%s' is none of those";
      goto LABEL_32;
    }

    if (*(a2 + 192))
    {
      goto LABEL_39;
    }

    v101[0] = 0;
    xmlSchemaFormatQName(v101, *(v10 + 208), *(v10 + 16));
    v18 = "A <simpleType> is expected among the children of <restriction>, if <simpleContent> is used and the base type '%s' is a complex type";
LABEL_26:
    v19 = a1;
    v20 = a2;
    v21 = 0;
    goto LABEL_33;
  }

  if (v12 != 4 && v12 != 6)
  {
    if ((*(a2 + 88) & 4) != 0)
    {
      v22 = "If <simpleContent> and <restriction> is used, the base type must be a simple type or a complex type with mixed content and particle emptiable. The base type '%s' is none of those";
    }

    else
    {
      v22 = "If <simpleContent> and <extension> is used, the base type must be a simple type. The base type '%s' is a complex type";
    }

    goto LABEL_32;
  }

  if (!*(v10 + 192))
  {
    v13 = *(a2 + 16);
    v14 = "Internal error: xmlSchemaCheckSRCCT, '%s', base type has no content type";
LABEL_56:
    xmlSchemaPCustomErrExt(a1, 3069, a2, 0, v14);
    goto LABEL_20;
  }

LABEL_39:
  if (v11 == 4)
  {
    type = v9->type;
    if (v9->type != XML_SCHEMA_TYPE_COMPLEX && v9->builtInType != 45)
    {
LABEL_51:
      if (type != XML_SCHEMA_TYPE_SIMPLE && (type != XML_SCHEMA_TYPE_BASIC || v9->builtInType == 45) || (*(a2 + 88) & 2) == 0)
      {
        v25 = *(a2 + 16);
        v14 = "Internal error: xmlSchemaTypeFixup, complex type '%s' with <simpleContent>: unhandled derivation case";
        goto LABEL_56;
      }

      *(a2 + 192) = v9;
      goto LABEL_110;
    }

    contentTypeDef = v9->contentTypeDef;
    if (!contentTypeDef || (*(a2 + 88) & 4) == 0)
    {
      if (type == XML_SCHEMA_TYPE_COMPLEX || v9->builtInType == 45)
      {
        if (v9->contentType == XML_SCHEMA_CONTENT_MIXED && (*(a2 + 88) & 4) != 0)
        {
          v44 = *(a2 + 192);
          if (!v44 || !*(v44 + 112))
          {
            v45 = *(a2 + 16);
            v14 = "Internal error: xmlSchemaTypeFixup, complex type '%s': the <simpleContent><restriction> is missing a <simpleType> child, but was not caught by xmlSchemaCheckSRCCT()";
            goto LABEL_56;
          }

          goto LABEL_110;
        }

        if ((type == XML_SCHEMA_TYPE_COMPLEX || v9->builtInType == 45) && (*(a2 + 88) & 2) != 0)
        {
          if (!contentTypeDef)
          {
            v77 = *(a2 + 16);
            v14 = "Internal error: xmlSchemaTypeFixup, complex type '%s': the <extension>ed base type is a complex type with no simple content type";
            goto LABEL_56;
          }

          *(a2 + 192) = contentTypeDef;
          goto LABEL_110;
        }
      }

      goto LABEL_51;
    }

    v31 = *(a2 + 192);
    if (v31)
    {
      *(a2 + 192) = 0;
      contentTypeDef = v31;
    }

    v32 = xmlSchemaAddType(a1, *(a1 + 8), 4, 0, *(a2 + 208), *(a2 + 72), 0);
    if (!v32)
    {
      goto LABEL_20;
    }

    v33 = v32;
    v32->type = XML_SCHEMA_TYPE_SIMPLE;
    v32->baseType = contentTypeDef;
    v32->facets = *(a2 + 120);
    *(a2 + 120) = 0;
    v32->facetSet = *(a2 + 176);
    *(a2 + 176) = 0;
    *(a2 + 192) = v32;
    if (contentTypeDef->type != XML_SCHEMA_TYPE_BASIC && (contentTypeDef->flags & 0x400000) == 0)
    {
      xmlSchemaTypeFixup(contentTypeDef, a1);
    }

    if (xmlSchemaFixupSimpleTypeStageOne(a1, v33) == -1)
    {
      goto LABEL_20;
    }

    v34 = xmlSchemaFixupSimpleTypeStageTwo(a1, v33);
    if (v34 == -1)
    {
      goto LABEL_20;
    }

    if (!v34)
    {
      goto LABEL_110;
    }

LABEL_35:
    *(a2 + 88) |= 0x800000u;
    return a1[8];
  }

  v26 = *(a2 + 56);
  if (!v26)
  {
    v30 = *(a2 + 88);
    if (v30)
    {
LABEL_81:
      v35 = xmlSchemaAddParticle(a1, *(a2 + 72), 1, 1);
      if (!v35)
      {
        goto LABEL_20;
      }

      v26 = v35;
      v36 = xmlSchemaAddModelGroup(a1, *(a1 + 8), 6, *(a2 + 72));
      v26[3] = v36;
      if (!v36)
      {
        goto LABEL_20;
      }

      *(a2 + 56) = v26;
      goto LABEL_84;
    }

LABEL_69:
    *(a2 + 92) = 1;
    if ((v30 & 4) == 0)
    {
      *(a2 + 92) = v9->contentType;
      *(a2 + 56) = v9->subtypes;
      *(a2 + 192) = v9->contentTypeDef;
    }

    goto LABEL_110;
  }

  if (*v26 != 25 || ((v27 = v26[3], v28 = *v27, *v27 != 6) ? (v29 = v28 == 8) : (v29 = 1), !v29 && (v28 != 7 || *(v26 + 8)) || *(v27 + 3)))
  {
    v37 = 0;
    goto LABEL_88;
  }

  v30 = *(a2 + 88);
  if ((v30 & 1) == 0)
  {
    goto LABEL_69;
  }

  if (v28 != 6)
  {
    goto LABEL_81;
  }

LABEL_84:
  v37 = 1;
LABEL_88:
  *(a2 + 92) = 2;
  v38 = *(a2 + 88);
  if ((v38 & 4) != 0 || v9->contentType == XML_SCHEMA_CONTENT_EMPTY)
  {
    if (v38)
    {
      *(a2 + 92) = 3;
    }
  }

  else
  {
    if (v38)
    {
      *(a2 + 92) = 3;
    }

    v39 = v26[3];
    if (v39 && *v39 == 8)
    {
      ComponentNode = xmlSchemaGetComponentNode(a2);
      xmlSchemaCustomErr4(a1, 3091, ComponentNode, 0, "The type has an 'all' model group in its {content type} and thus cannot be derived from a non-empty type, since this would produce a 'sequence' model group containing the 'all' model group; 'all' model groups are not allowed to appear inside other model groups", 0, 0, 0, 0);
      goto LABEL_110;
    }

    subtypes = v9->subtypes;
    if (!subtypes)
    {
      goto LABEL_109;
    }

    id = subtypes->id;
    if (id && *id == 8)
    {
      v43 = xmlSchemaGetComponentNode(a2);
      xmlSchemaCustomErr4(a1, 3091, v43, 0, "A type cannot be derived by extension from a type which has an 'all' model group in its {content type}, since this would produce a 'sequence' model group containing the 'all' model group; 'all' model groups are not allowed to appear inside other model groups", 0, 0, 0, 0);
      goto LABEL_110;
    }

    if ((v37 & 1) == 0)
    {
      v78 = xmlSchemaAddParticle(a1, *(a2 + 72), 1, 1);
      if (!v78)
      {
        goto LABEL_20;
      }

      v79 = v78;
      v80 = xmlSchemaAddModelGroup(a1, *(a1 + 8), 6, *(a2 + 72));
      v79[3] = v80;
      if (!v80)
      {
        goto LABEL_20;
      }

      *(a2 + 56) = v79;
      v81 = xmlSchemaAddParticle(a1, *(a2 + 72), v9->subtypes->ref, HIDWORD(v9->subtypes->ref));
      *(v79[3] + 24) = v81;
      if (!v81)
      {
        goto LABEL_20;
      }

      v82 = v9->subtypes->id;
      v81[2] = v26;
      v81[3] = v82;
    }

    else
    {
LABEL_109:
      *(v39 + 24) = subtypes;
    }
  }

LABEL_110:
  v46 = *(a2 + 112);
  if (!v46)
  {
    v15 = "xmlSchemaFixupTypeAttributeUses";
    v16 = "no base type";
    goto LABEL_19;
  }

  v100 = v8;
  if (*v46 != 1 && (*(v46 + 90) & 0x40) == 0 && xmlSchemaTypeFixup(v46, a1) == -1)
  {
    goto LABEL_20;
  }

  v47 = *(a2 + 216);
  v48 = *(v46 + 216);
  if (!v47)
  {
    goto LABEL_117;
  }

  if ((*(a2 + 88) & 4) == 0)
  {
    if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 152), *(a2 + 216), 0) != -1)
    {
LABEL_117:
      v49 = 0;
      goto LABEL_123;
    }

    goto LABEL_134;
  }

  if (xmlSchemaExpandAttributeGroupRefs(a1, a2, (a2 + 152), *(a2 + 216), *(a1 + 29)) == -1)
  {
LABEL_134:
    v15 = "xmlSchemaFixupTypeAttributeUses";
    v16 = "failed to expand attributes";
    goto LABEL_19;
  }

  if (*(*(a1 + 29) + 8))
  {
    v49 = *(a1 + 29);
  }

  else
  {
    v49 = 0;
  }

LABEL_123:
  if (!v48)
  {
    goto LABEL_153;
  }

  if ((*(a2 + 88) & 4) != 0)
  {
    if (v47)
    {
      v54 = *(v47 + 2);
    }

    else
    {
      v54 = 0;
    }

    v55 = *(v48 + 8);
    if (v55 >= 1)
    {
      for (i = 0; i < v55; ++i)
      {
        v57 = *(*v48 + 8 * i);
        if (v49 && (v58 = *(v49 + 2), v58 >= 1))
        {
          v59 = *v49;
          v60 = *(v57 + 24);
          while (*(v60 + 16) != *(*v59 + 16) || *(v60 + 112) != *(*v59 + 24))
          {
            v59 += 8;
            if (!--v58)
            {
              goto LABEL_144;
            }
          }
        }

        else
        {
LABEL_144:
          if (v54 < 1)
          {
LABEL_149:
            if (!v47)
            {
              v47 = xmlSchemaItemListCreate();
              *(a2 + 216) = v47;
              if (!v47)
              {
                goto LABEL_20;
              }
            }

            xmlSchemaItemListAddSize(v47, 2, v57);
            v55 = *(v48 + 8);
          }

          else
          {
            v61 = *v47;
            v62 = *(v57 + 24);
            v63 = v54;
            while (1)
            {
              v64 = *(*v61 + 24);
              if (*(v62 + 16) == *(v64 + 16) && *(v62 + 112) == *(v64 + 112))
              {
                break;
              }

              v61 += 8;
              if (!--v63)
              {
                goto LABEL_149;
              }
            }
          }
        }
      }
    }

LABEL_153:
    if (!v47)
    {
      goto LABEL_156;
    }

    goto LABEL_154;
  }

  LODWORD(v50) = *(v48 + 8);
  if (v50 < 1)
  {
    goto LABEL_153;
  }

  v51 = 0;
  do
  {
    v52 = *(*v48 + 8 * v51);
    if (!v47)
    {
      v53 = xmlSchemaItemListCreate();
      *(a2 + 216) = v53;
      if (!v53)
      {
        goto LABEL_20;
      }

      v47 = v53;
      LODWORD(v50) = *(v48 + 8);
    }

    xmlSchemaItemListAddSize(v47, v50, v52);
    ++v51;
    v50 = *(v48 + 8);
  }

  while (v51 < v50);
LABEL_154:
  if (!*(v47 + 2))
  {
    xmlSchemaItemListFree(v47);
    *(a2 + 216) = 0;
  }

LABEL_156:
  if ((*(a2 + 88) & 2) == 0)
  {
    goto LABEL_258;
  }

  v65 = *(v46 + 152);
  if (!v65)
  {
    goto LABEL_258;
  }

  v66 = *(a2 + 152);
  if (!v66)
  {
    *(a2 + 152) = v65;
    goto LABEL_258;
  }

  v67 = *(v66 + 44);
  if (v67 != *(v65 + 44))
  {
    if (v67)
    {
      goto LABEL_258;
    }

    *(v66 + 44) = 1;
    v74 = *(v66 + 48);
    if (!v74)
    {
      goto LABEL_178;
    }

    do
    {
      v75 = *v74;
      free(v74);
      v74 = v75;
    }

    while (v75);
    goto LABEL_177;
  }

  v68 = *(v66 + 48);
  v69 = *(v65 + 48);
  if ((v68 == 0) != (v69 != 0))
  {
    v70 = *(v66 + 56);
    v71 = *(v65 + 56);
    if ((v70 == 0) != (v71 != 0) && (!v70 || *(v70 + 8) == *(v71 + 8)))
    {
      if (!v68)
      {
        goto LABEL_258;
      }

      v90 = *(v66 + 48);
LABEL_216:
      v91 = (v65 + 48);
      while (1)
      {
        v91 = *v91;
        if (!v91)
        {
          break;
        }

        if (v90[1] == v91[1])
        {
          v90 = *v90;
          if (v90)
          {
            goto LABEL_216;
          }

          goto LABEL_258;
        }
      }
    }
  }

  if (v68 && v69)
  {
    do
    {
      v72 = v68;
      while (v69[1] != v72[1])
      {
        v72 = *v72;
        if (!v72)
        {
          v73 = xmlSchemaNewWildcardNsConstraint(a1);
          if (!v73)
          {
            goto LABEL_20;
          }

          v73[1] = v69[1];
          *v73 = *(v66 + 48);
          *(v66 + 48) = v73;
          break;
        }
      }

      v69 = *v69;
    }

    while (v69);
    goto LABEL_258;
  }

  v76 = *(v66 + 56);
  v83 = *(v65 + 56);
  if (!v76)
  {
    goto LABEL_264;
  }

  v84 = v76[1];
  if (v83 && v84 != *(v83 + 8))
  {
LABEL_190:
    v76[1] = 0;
    goto LABEL_258;
  }

  if (!v69 || !v84)
  {
LABEL_264:
    if (v83 && v68 && *(v83 + 8))
    {
      goto LABEL_198;
    }

    if (v76 && v69 && !v76[1])
    {
      if (v68)
      {
        v89 = *(v66 + 48);
      }

      else
      {
        v89 = *(v65 + 48);
      }

      goto LABEL_224;
    }

    if (!v83)
    {
      goto LABEL_258;
    }

    if (!v68)
    {
      goto LABEL_258;
    }

    v92 = *(v83 + 8);
    v89 = *(v66 + 48);
    if (v92)
    {
      goto LABEL_258;
    }

LABEL_224:
    while (v89[1])
    {
      v89 = *v89;
      if (!v89)
      {
        if (v76)
        {
          goto LABEL_258;
        }

        if (v68)
        {
          do
          {
            v93 = *v68;
            free(v68);
            v68 = v93;
          }

          while (v93);
          *(v66 + 48) = 0;
        }

        goto LABEL_242;
      }
    }

    *(v66 + 44) = 1;
    if (!v68)
    {
      goto LABEL_179;
    }

    do
    {
      v96 = *v68;
      free(v68);
      v68 = v96;
    }

    while (v96);
LABEL_177:
    *(v66 + 48) = 0;
LABEL_178:
    v76 = *(v66 + 56);
    goto LABEL_179;
  }

  v85 = *(v66 + 56);
  if (v68)
  {
LABEL_198:
    v85 = *(v65 + 56);
    v69 = *(v66 + 48);
  }

  v86 = 0;
  v87 = 0;
  while (1)
  {
    v88 = v69[1];
    if (v88)
    {
      if (v88 == *(v85 + 8))
      {
        v87 = 1;
      }
    }

    else
    {
      v86 = 1;
    }

    if (v87 && v86)
    {
      break;
    }

    v69 = *v69;
    if (!v69)
    {
      goto LABEL_231;
    }
  }

  v87 = 1;
  v86 = 1;
LABEL_231:
  if (v87 && v86)
  {
    *(v66 + 44) = 1;
    if (!v68)
    {
LABEL_179:
      if (v76)
      {
        free(v76);
        *(v66 + 56) = 0;
      }

      goto LABEL_258;
    }

    do
    {
      v94 = *v68;
      free(v68);
      v68 = v94;
    }

    while (v94);
    goto LABEL_177;
  }

  if (v87 && !v86)
  {
    if (v68)
    {
      do
      {
        v95 = *v68;
        free(v68);
        v68 = v95;
      }

      while (v95);
      *(v66 + 48) = 0;
      v76 = *(v66 + 56);
    }

    if (!v76)
    {
LABEL_242:
      v76 = xmlSchemaNewWildcardNsConstraint(a1);
      *(v66 + 56) = v76;
      if (!v76)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_190;
  }

  if (v87 || !v86)
  {
    if (!v76 && !v87 && !v86)
    {
      if (v68)
      {
        do
        {
          v97 = *v68;
          free(v68);
          v68 = v97;
        }

        while (v97);
        *(v66 + 48) = 0;
      }

      v98 = xmlSchemaNewWildcardNsConstraint(a1);
      *(v66 + 56) = v98;
      if (!v98)
      {
        goto LABEL_20;
      }

      v98[1] = *(*(v65 + 56) + 8);
    }
  }

  else
  {
    xmlSchemaPErr(a1, *(v66 + 24), 1794, "The union of the wildcard is not expressible.\n", 0, 0);
  }

LABEL_258:
  v99 = xmlSchemaCheckCTComponent(a1, a2);
  if (v99 == -1)
  {
    goto LABEL_20;
  }

  if (v99)
  {
    goto LABEL_35;
  }

  if (v100 != a1[9])
  {
    return a1[8];
  }

  return 0;
}

void xmlSchemaCheckElementDeclComponent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v3 = *(a1 + 88);
  if ((v3 & 0x40000) != 0)
  {
    return;
  }

  *(a1 + 88) = v3 | 0x40000;
  v5 = *(a1 + 56);
  v6 = *(a1 + 152);
  if (v6)
  {
    xmlSchemaCheckElementDeclComponent(*(a1 + 152), a2);
    if ((*(a1 + 88) & 2) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3046;
      xmlSchemaPCustomErrExt(a2, 3046, a1, 0, "Only global element declarations can have a substitution group affiliation");
    }

    v8 = v6;
    if (v6 == a1 || *(v6 + 152) && (v8 = xmlSchemaCheckSubstGroupCircular(v6, v6)) != 0)
    {
      v44 = 0;
      v45 = 0;
      xmlSchemaGetComponentQName(&v45, v8);
      xmlSchemaGetComponentQName(&v44, v6);
      xmlSchemaPCustomErrExt(a2, 3049, v8, 0, "The element declaration '%s' defines a circular substitution group to element declaration '%s'");
      if (v45)
      {
        free(v45);
      }

      if (v44)
      {
        free(v44);
      }

      v7 = 3049;
    }

    if (v5 != *(*(a1 + 152) + 56) && xmlSchemaCheckCOSDerivedOK(a2, v5, *(v6 + 56), (*(v6 + 88) >> 14) & 2 | HIWORD(*(v6 + 88)) & 1u))
    {
      v44 = 0;
      v45 = 0;
      v43 = 0;
      xmlSchemaGetComponentQName(&v45, v5);
      xmlSchemaGetComponentQName(&v44, v6);
      xmlSchemaGetComponentQName(&v43, *(v6 + 56));
      xmlSchemaPCustomErrExt(a2, 3047, a1, 0, "The type definition '%s' was either rejected by the substitution group affiliation '%s', or not validly derived from its type definition '%s'");
      if (v45)
      {
        free(v45);
      }

      if (v44)
      {
        free(v44);
      }

      if (v43)
      {
        free(v43);
      }

      v7 = 3047;
    }
  }

  else
  {
    v7 = 0;
  }

  if (!*(a1 + 144))
  {
    goto LABEL_58;
  }

  v9 = *v5;
  if (*v5 == 5)
  {
    goto LABEL_113;
  }

  if (v9 == 4 || v9 == 1 && *(v5 + 160) != 45)
  {
    v10 = v5;
    do
    {
      if (*v10 == 5)
      {
        break;
      }

      v11 = *(v10 + 160);
      if (v11 == 45)
      {
        break;
      }

      if (*v10 == 1)
      {
        if (v11 == 23)
        {
          goto LABEL_40;
        }

        if (v11 == 46)
        {
          break;
        }
      }

      v10 = *(v10 + 56);
    }

    while (v10);
  }

  if (*(v5 + 160) == 45)
  {
LABEL_113:
    if ((*(v5 + 92) | 2) == 6 && xmlSchemaIsDerivedFromBuiltInType(*(v5 + 192)))
    {
LABEL_40:
      v12 = "The type definition (or type definition's content type) is or is derived from ID; value constraints are not allowed in conjunction with such a type definition";
      v13 = a2;
      v14 = 3048;
      v15 = a1;
      v16 = 0;
LABEL_105:

      xmlSchemaPCustomErrExt(v13, v14, v15, v16, v12);
      return;
    }
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    if ((*(a1 + 88) & 8) != 0)
    {
      v18 = "fixed";
    }

    else
    {
      v18 = "default";
    }

    v19 = xmlHasProp(v17, v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(a1 + 144);
  v21 = *v5;
  if (*v5 == 5 || *(v5 + 160) == 45)
  {
    v22 = *(v5 + 92);
    if (v22 != 6 && v22 != 4 && (v22 != 3 || !xmlSchemaIsParticleEmptiable(*(v5 + 56))))
    {
      v16 = *(v5 + 72);
      v12 = "For a string to be a valid default, the type definition must be a simple type or a complex type with mixed content and a particle emptiable";
      v13 = a2;
      v14 = 3059;
      v15 = v5;
      goto LABEL_105;
    }
  }

  if (v21 != 4 && (v21 != 1 || *(v5 + 160) == 45))
  {
    if ((*(v5 + 92) | 2) == 6)
    {
      v23 = *(v5 + 192);
      v24 = (a1 + 184);
      v25 = a2;
      v26 = v19;
      goto LABEL_61;
    }

LABEL_58:
    if (v7)
    {
      return;
    }

    goto LABEL_63;
  }

  v24 = (a1 + 184);
  v25 = a2;
  v26 = v19;
  v23 = v5;
LABEL_61:
  v27 = xmlSchemaVCheckCVCSimpleType(v25, v26, v23, v20, v24, 1u, 1, 0);
  if ((v27 & 0x80000000) == 0)
  {
    if (v27 | v7)
    {
      return;
    }

LABEL_63:
    v28 = *(a1 + 152);
    if (!v28 || (*(a1 + 88) & 0x10) != 0)
    {
      return;
    }

    while (1)
    {
      v29 = *(v28 + 88);
      if ((v29 & 0x2000) != 0)
      {
        goto LABEL_102;
      }

      v30 = *(v28 + 56);
      v31 = *(a1 + 56);
      if (v30 != v31)
      {
        v32 = 0;
        if (v31)
        {
          v33 = *(a1 + 56);
          do
          {
            v34 = *(v33 + 88);
            if ((((v32 & 0x80000) == 0) & (v34 >> 1)) != 0)
            {
              v32 |= 0x40000u;
            }

            if ((((v32 & 0x80000) == 0) & (v34 >> 2)) != 0)
            {
              v32 |= 0x80000u;
            }

            v33 = *(v33 + 112);
          }

          while (v33 && v33 != v30);
        }

        v35 = (v29 << 7) & 0xC0000;
        do
        {
          v31 = *(v31 + 112);
          if (!v31 || *v31 != 5 && *(v31 + 160) != 45)
          {
            break;
          }

          v36 = *(v31 + 88);
          if ((((v35 & 0x40000) == 0) & (v36 >> 18)) != 0)
          {
            v35 |= 0x40000u;
          }

          if ((((v35 & 0x80000) == 0) & (v36 >> 19)) != 0)
          {
            v35 |= 0x80000u;
          }
        }

        while (v31 != v30);
        if (v35 && ((v35 & 0x40000) != 0 && (v32 & 0x40000) != 0 || (v35 & 0x80000) != 0 && (v32 & 0x80000) != 0))
        {
          goto LABEL_102;
        }
      }

      v37 = *(*(a2 + 48) + 48);
      if (v37)
      {
        v38 = xmlHashLookup2(v37, *(v28 + 16), *(v28 + 96));
        if (v38)
        {
          goto LABEL_91;
        }

        if (*(*(a2 + 48) + 48))
        {
          goto LABEL_94;
        }
      }

      Dict = xmlHashCreateDict(10, *(a2 + 152));
      *(*(a2 + 48) + 48) = Dict;
      if (Dict)
      {
LABEL_94:
        v40 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
        if (v40)
        {
          v38 = v40;
          *v40 = v28;
          v40[1] = 0;
          v41 = xmlSchemaItemListCreate();
          v38[1] = v41;
          if (v41)
          {
            if (!xmlHashAddEntry2(*(*(a2 + 48) + 48), *(v28 + 16), *(v28 + 96), v38))
            {
LABEL_91:
              xmlSchemaItemListAddSize(v38[1], 20, a1);
              goto LABEL_100;
            }

            xmlSchemaInternalErr2(a2, "xmlSchemaSubstGroupAdd", "failed to add a new substitution container", 0);
          }

          xmlSchemaSubstGroupFree(v38);
        }

        else
        {
          __xmlSimpleError(0x10u, 2, 0, 0, "allocating a substitution group container");
        }
      }

LABEL_100:
      v42 = *(v28 + 88);
      if ((v42 & 0x20000) == 0)
      {
        *(v28 + 88) = v42 | 0x20000;
      }

LABEL_102:
      v28 = *(v28 + 152);
      if (!v28)
      {
        return;
      }
    }
  }

  xmlSchemaInternalErr2(a2, "xmlSchemaParseCheckCOSValidDefault", "calling xmlSchemaVCheckCVCSimpleType()", 0);

  xmlSchemaInternalErr2(a2, "xmlSchemaElemCheckValConstr", "failed to validate the value constraint of an element declaration", 0);
}

void xmlSchemaBuildContentModel(uint64_t a1, uint64_t a2)
{
  if (*a1 == 5 && !*(a1 + 200) && (*(a1 + 92) & 0xFFFFFFFE) == 2)
  {
    *(a2 + 120) = 0;
    v4 = xmlNewAutomata();
    *(a2 + 120) = v4;
    if (!v4)
    {
      v10 = *__xmlGenericError();
      v11 = __xmlGenericErrorContext();
      v10(*v11, "Cannot create automata for complex type %s\n", *(a1 + 16));
      return;
    }

    *(a2 + 144) = xmlAutomataGetInitState(v4);
    xmlSchemaBuildAContentModel(a2, *(a1 + 56));
    xmlAutomataSetFinalState(*(a2 + 120), *(a2 + 144));
    v5 = xmlAutomataCompile(*(a2 + 120));
    *(a1 + 200) = v5;
    if (v5)
    {
      if (xmlRegexpIsDeterminist(v5) == 1)
      {
LABEL_11:
        *(a2 + 144) = 0;
        xmlFreeAutomata(*(a2 + 120));
        *(a2 + 120) = 0;
        return;
      }

      v6 = *(a1 + 72);
      v7 = "The content model is not determinist";
      v8 = a2;
      v9 = 3070;
    }

    else
    {
      v6 = *(a1 + 72);
      v7 = "Failed to compile the content model";
      v8 = a2;
      v9 = 3069;
    }

    xmlSchemaPCustomErrExt(v8, v9, a1, v6, v7);
    goto LABEL_11;
  }
}

void *xmlSchemaFindRedefCompInGraph(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 && a3)
  {
    v6 = *(a1 + 64);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7 >= 1)
      {
        v8 = *v6;
        do
        {
          result = *v8;
          if (**v8 == a2)
          {
            if ((a2 - 4) < 2)
            {
              if (result[2] == a3)
              {
                v9 = result[26];
                goto LABEL_16;
              }
            }

            else if (a2 == 16)
            {
              if (result[2] == a3)
              {
                v9 = result[13];
LABEL_16:
                if (v9 == a4)
                {
                  return result;
                }
              }
            }

            else
            {
              if (a2 != 17)
              {
                return 0;
              }

              if (result[4] == a3)
              {
                v9 = result[5];
                goto LABEL_16;
              }
            }
          }

          ++v8;
          --v7;
        }

        while (v7);
      }
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      *(a1 + 4) |= 1u;
      while (1)
      {
        v11 = v10[3];
        if (v11)
        {
          if ((*(v11 + 4) & 1) == 0)
          {
            result = xmlSchemaFindRedefCompInGraph();
            if (result)
            {
              break;
            }
          }
        }

        v10 = *v10;
        if (!v10)
        {
          result = 0;
          *(a1 + 4) ^= 1u;
          return result;
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

void *xmlSchemaGetType(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  if (!a2)
  {
    return 0;
  }

  if (str1 && xmlStrEqual(str1, "http://www.w3.org/2001/XMLSchema"))
  {
    result = xmlSchemaGetPredefinedType(a2, str1);
    if (!a1 || result)
    {
      return result;
    }
  }

  else if (!a1)
  {
    return 0;
  }

  if (xmlStrEqual(str1, *(a1 + 8)))
  {
    result = xmlHashLookup(*(a1 + 56), a2);
    if (result)
    {
      return result;
    }
  }

  if (xmlHashSize(*(a1 + 96)) < 2)
  {
    return 0;
  }

  if (str1)
  {
    v7 = str1;
  }

  else
  {
    v7 = "##";
  }

  result = xmlHashLookup(*(a1 + 96), v7);
  if (result)
  {
    v8 = *(result[10] + 56);

    return xmlHashLookup(v8, a2);
  }

  return result;
}

void xmlSchemaPResCompAttrErr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, xmlChar *a5, const xmlChar *a6, int a7, uint64_t a8)
{
  v15 = 0;
  v16 = 0;
  xmlSchemaFormatItemForReport(&v16, a2, a3);
  if (!a8)
  {
    xmlSchemaItemTypeToStr(a7);
  }

  v14 = v16;
  xmlSchemaFormatQName(&v15, a6, a5);
  xmlSchemaPErrExt(a1, a3, 3004, "%s, attribute '%s': The QName value '%s' does not resolve to a(n) %s.\n", v14);
  if (v16)
  {
    free(v16);
    v16 = 0;
  }

  if (v15)
  {
    free(v15);
  }
}

void *xmlSchemaGetElem(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!xmlStrEqual(str1, *(a1 + 8)) || (result = xmlHashLookup(*(a1 + 80), a2)) == 0)
      {
        if (xmlHashSize(*(a1 + 96)) < 2)
        {
          return 0;
        }

        else
        {
          if (str1)
          {
            v7 = str1;
          }

          else
          {
            v7 = "##";
          }

          result = xmlHashLookup(*(a1 + 96), v7);
          if (result)
          {
            v8 = *(result[10] + 80);

            return xmlHashLookup(v8, a2);
          }
        }
      }
    }
  }

  return result;
}

void *xmlSchemaGetNamedComponent(uint64_t a1, int a2, const xmlChar *a3, xmlChar *str1)
{
  if (a2 != 14)
  {
    if (a2 == 17)
    {
      result = 0;
      if (!a1)
      {
        return result;
      }

      if (!a3)
      {
        return result;
      }

      if (xmlStrEqual(str1, *(a1 + 8)))
      {
        result = xmlHashLookup(*(a1 + 112), a3);
        if (result)
        {
          return result;
        }
      }

      if (xmlHashSize(*(a1 + 96)) >= 2)
      {
        if (str1)
        {
          v8 = str1;
        }

        else
        {
          v8 = "##";
        }

        result = xmlHashLookup(*(a1 + 96), v8);
        if (result)
        {
          v9 = *(result[10] + 112);

          return xmlHashLookup(v9, a3);
        }

        return result;
      }
    }

    else
    {
      v10 = *__xmlGenericError();
      v11 = __xmlGenericErrorContext();
      v10(*v11, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 5068);
    }

    return 0;
  }

  return xmlSchemaGetElem(a1, a3, str1);
}

void *xmlSchemaGetAttributeDecl(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!xmlStrEqual(str1, *(a1 + 8)) || (result = xmlHashLookup(*(a1 + 64), a2)) == 0)
      {
        if (xmlHashSize(*(a1 + 96)) < 2)
        {
          return 0;
        }

        else
        {
          if (str1)
          {
            v7 = str1;
          }

          else
          {
            v7 = "##";
          }

          result = xmlHashLookup(*(a1 + 96), v7);
          if (result)
          {
            v8 = *(result[10] + 64);

            return xmlHashLookup(v8, a2);
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlSchemaCheckTypeDefCircularInternal(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    return v3;
  }

  if (*a3 != 1)
  {
    if (a2 == a3)
    {
      ComponentNode = xmlSchemaGetComponentNode(a2);
      v3 = 3009;
      xmlSchemaPCustomErrExt(a1, 3009, a2, ComponentNode, "The definition is circular");
      return v3;
    }

    v6 = *(a3 + 88);
    if ((v6 & 0x10000) == 0)
    {
      *(a3 + 88) = v6 | 0x10000;
      result = xmlSchemaCheckTypeDefCircularInternal(a1, a2, *(a3 + 112));
      *(v3 + 88) ^= 0x10000u;
      return result;
    }
  }

  return 0;
}

uint64_t xmlSchemaGetCircModelGrDefRef(uint64_t a1, uint64_t a2)
{
  for (i = a2; i; i = *(i + 16))
  {
    v4 = *(i + 24);
    if (v4)
    {
      if ((*v4 - 6) >= 3)
      {
        if (*v4 == 17)
        {
          if (v4 == a1)
          {
            return i;
          }

          v6 = *(v4 + 56);
          if ((v6 & 1) == 0)
          {
            v7 = *(v4 + 24);
            if (v7)
            {
              *(v4 + 56) = v6 | 1;
              CircModelGrDefRef = xmlSchemaGetCircModelGrDefRef(a1, *(v7 + 24));
              *(v4 + 56) ^= 1u;
              if (CircModelGrDefRef)
              {
                return CircModelGrDefRef;
              }
            }
          }
        }
      }

      else
      {
        CircModelGrDefRef = xmlSchemaGetCircModelGrDefRef(a1, *(v4 + 24));
        if (CircModelGrDefRef)
        {
          return CircModelGrDefRef;
        }
      }
    }
  }

  return i;
}

uint64_t xmlSchemaCheckAttrGroupCircularRecur(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 2);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a2;
  do
  {
    result = *(v6 + 8 * v5);
    if (*result == 2000 && *(result + 16) == 16)
    {
      v8 = *(result + 8);
      if (v8)
      {
        if (v8 == a1)
        {
          return result;
        }

        v9 = *(v8 + 72);
        if ((v9 & 4) == 0 && (v9 & 0x10) != 0 && *(v8 + 112))
        {
          *(v8 + 72) = v9 | 4;
          result = xmlSchemaCheckAttrGroupCircularRecur(a1);
          *(v8 + 72) ^= 4u;
          if (result)
          {
            return result;
          }

          v6 = *a2;
          v2 = *(a2 + 2);
        }
      }
    }

    ++v5;
  }

  while (v5 < v2);
  return 0;
}

uint64_t xmlSchemaExpandAttributeGroupRefs(uint64_t a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a3 != 0;
  if (a5)
  {
    *(a5 + 8) = 0;
  }

  v10 = *(a4 + 8);
  if (v10 < 1)
  {
LABEL_102:
    if (!a5)
    {
      return 0;
    }

    result = 0;
    if (v10)
    {
      v55 = *(a5 + 8);
      if (v55 >= 1)
      {
        while (1)
        {
          v56 = v55--;
          v57 = *(a4 + 8);
          if (v57 >= 1)
          {
            v58 = *(*a5 + 8 * v55);
            v59 = *a4;
            v60 = v58[2];
            while (1)
            {
              v61 = *(*v59 + 24);
              if (v60 == *(v61 + 16))
              {
                v62 = v58[3];
                if (v62 == *(v61 + 112))
                {
                  break;
                }
              }

              v59 += 8;
              if (!--v57)
              {
                goto LABEL_114;
              }
            }

            v67 = 0;
            v63 = v58[1];
            v64 = xmlSchemaFormatQName(&v67, v62, v60);
            xmlSchemaCustomWarning(v8, 3086, v63, "Skipping pointless attribute use prohibition '%s', since a corresponding attribute use exists already in the type definition", v64, 0, 0);
            if (v67)
            {
              free(v67);
            }

            result = xmlSchemaItemListRemove(a5, v55);
            if (result == -1)
            {
              break;
            }
          }

LABEL_114:
          if (v56 <= 1)
          {
            return 0;
          }
        }
      }
    }

    return result;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(*a4 + 8 * v11);
    if (*v12 == 2000)
    {
      if (*(v12 + 16) != 16)
      {
        goto LABEL_100;
      }

      v14 = *(v12 + 8);
      if (!v14)
      {
        return 0xFFFFFFFFLL;
      }

      if ((*(v14 + 72) & 1) == 0)
      {
        result = xmlSchemaAttributeGroupExpandRefs(a1, v14);
        if (result == -1)
        {
          return result;
        }
      }

      v15 = *(v14 + 80);
      if (!v15)
      {
        goto LABEL_85;
      }

      v16 = *a3;
      if (!*a3)
      {
        *a3 = v15;
        goto LABEL_85;
      }

      if (!v9)
      {
        v17 = *(a1 + 64);
        ComponentNode = xmlSchemaGetComponentNode(a2);
        v19 = xmlSchemaAddWildcard(a1, v17, 21, ComponentNode);
        if (!v19)
        {
          return 0xFFFFFFFFLL;
        }

        v16 = v19;
        result = xmlSchemaCloneWildcardNsConstraints(a1, v19, *a3);
        if (result == -1)
        {
          return result;
        }

        *(v16 + 40) = *(*a3 + 40);
        *a3 = v16;
        v15 = *(v14 + 80);
      }

      v20 = *(v16 + 44);
      v21 = *(v15 + 44);
      if (v20 == v21)
      {
        v22 = *(v16 + 48);
        if ((v22 == 0) == (*(v15 + 48) != 0))
        {
          goto LABEL_36;
        }

        v23 = *(v16 + 56);
        v24 = *(v15 + 56);
        if ((v23 == 0) == (v24 != 0) || v23 && *(v23 + 8) != *(v24 + 8))
        {
          goto LABEL_36;
        }

        if (!v22)
        {
          goto LABEL_84;
        }

LABEL_26:
        v25 = (v15 + 48);
        while (1)
        {
          v25 = *v25;
          if (!v25)
          {
            break;
          }

          if (v22[1] == v25[1])
          {
            v22 = *v22;
            v9 = 1;
            if (v22)
            {
              goto LABEL_26;
            }

            goto LABEL_85;
          }
        }
      }

      if (v20 && v20 != v21)
      {
        result = xmlSchemaCloneWildcardNsConstraints(a1, v16, v15);
        if (result == -1)
        {
          return result;
        }

        goto LABEL_84;
      }

LABEL_36:
      v26 = *(v16 + 56);
      if (v26 && *(v15 + 48))
      {
        v27 = (v16 + 48);
        if (!*(v16 + 48))
        {
          v30 = *(v26 + 8);
          result = xmlSchemaCloneWildcardNsConstraints(a1, v16, v15);
          if (result == -1)
          {
            return result;
          }

LABEL_59:
          v37 = 0;
          v38 = v27;
          while (1)
          {
            v38 = *v38;
            if (!v38)
            {
              break;
            }

            v39 = v37;
            v37 = v38;
            if (!v38[1])
            {
              if (!v39)
              {
                v39 = v27;
              }

              *v39 = *v38;
              free(v38);
              break;
            }
          }

          if (v30)
          {
            v40 = 0;
            v41 = v27;
            while (1)
            {
              v41 = *v41;
              if (!v41)
              {
                break;
              }

              v42 = v40;
              v40 = v41;
              if (v41[1] == v30)
              {
                if (!v42)
                {
                  v42 = v27;
                }

                *v42 = *v41;
                free(v41);
                goto LABEL_84;
              }
            }
          }

          goto LABEL_84;
        }

        v28 = *(v15 + 56);
LABEL_42:
        v30 = *(v28 + 8);
        goto LABEL_59;
      }

      v28 = *(v15 + 56);
      v27 = (v16 + 48);
      v29 = *(v16 + 48);
      if (!v28)
      {
        if (v29)
        {
          v32 = *(v15 + 48);
          v31 = (v15 + 48);
          if (v32)
          {
            v33 = 0;
            while (2)
            {
              if (v33)
              {
                v34 = v33;
              }

              else
              {
                v34 = v27;
              }

              v33 = v29;
LABEL_50:
              v35 = v31;
              do
              {
                v35 = *v35;
                if (!v35)
                {
                  v36 = *v33;
                  *v34 = *v33;
                  free(v33);
                  v9 = 1;
                  v33 = v36;
                  if (v36)
                  {
                    goto LABEL_50;
                  }

                  goto LABEL_85;
                }
              }

              while (v33[1] != v35[1]);
              v29 = *v33;
              v9 = 1;
              if (*v33)
              {
                continue;
              }

              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

      if (v29)
      {
        goto LABEL_42;
      }

      if (v26)
      {
        v43 = *(v26 + 8);
        v44 = *(v28 + 8);
        if (v43)
        {
          v45 = v43 == v44;
        }

        else
        {
          v45 = 1;
        }

        if (!v45 && v44 != 0)
        {
          xmlSchemaPErr(a1, *(v16 + 24), 1793, "The intersection of the wildcard is not expressible.\n", 0, 0);
          goto LABEL_84;
        }

        v9 = 1;
        if (!v43 && v44)
        {
          *(v26 + 8) = v44;
        }

LABEL_85:
        v47 = *(v14 + 112);
        if (v47 && (v48 = *(v47 + 8)) != 0)
        {
          v49 = v11;
          *(*a4 + 8 * v11) = **v47;
          if (v48 >= 2)
          {
            LODWORD(v50) = *(a4 + 8);
            v51 = 1;
            while (1)
            {
              v52 = *(*v47 + 8 * v51);
              if (*(a4 + 12) <= v50)
              {
                if ((xmlSchemaItemListGrow(a4, 20) & 0x80000000) != 0)
                {
                  __xmlSimpleError(0x10u, 2, 0, 0, "growing item list");
                  return 0xFFFFFFFFLL;
                }

                LODWORD(v50) = *(a4 + 8);
              }

              ++v49;
              v53 = v50;
              v50 = v50;
              if (v49 >= v50)
              {
                v54 = *a4;
                LODWORD(v50) = v50 + 1;
                *(a4 + 8) = v50;
                *(v54 + 8 * v53) = v52;
              }

              else
              {
                do
                {
                  *(*a4 + 8 * v50) = *(*a4 + 8 * v50 - 8);
                  --v50;
                }

                while (v50 > v49);
                *(*a4 + 8 * v49) = v52;
                LODWORD(v50) = v53 + 1;
                *(a4 + 8) = v53 + 1;
              }

              if (++v51 >= *(v47 + 8))
              {
                v11 = v49;
                goto LABEL_100;
              }
            }
          }
        }

        else
        {
          result = xmlSchemaItemListRemove(a4, v11);
          if (result == -1)
          {
            return result;
          }

          --v11;
        }

        goto LABEL_100;
      }

LABEL_84:
      v9 = 1;
      goto LABEL_85;
    }

    if (*v12 == 2001)
    {
      break;
    }

LABEL_100:
    ++v11;
    v10 = *(a4 + 8);
    if (v11 >= v10)
    {
      v8 = a1;
      goto LABEL_102;
    }
  }

  if (!a5)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaExpandAttributeGroupRefs", "unexpected attr prohibition found", 0);
    return 0xFFFFFFFFLL;
  }

  result = xmlSchemaItemListRemove(a4, v11);
  if (result != -1)
  {
    --v11;
    xmlSchemaItemListAddSize(a5, 2, v12);
    goto LABEL_100;
  }

  return result;
}

uint64_t xmlSchemaItemListRemove(uint64_t a1, int a2)
{
  v3 = *a1;
  if (v3 && (v4 = *(a1 + 8), v4 > a2))
  {
    if (v4 == 1)
    {
      free(v3);
      result = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      v6 = v4 - 1;
      if (v6 == a2)
      {
        result = 0;
        *(a1 + 8) = a2;
      }

      else
      {
        if (v6 > a2)
        {
          v7 = a2;
          do
          {
            *(*a1 + 8 * v7) = *(*a1 + 8 * v7 + 8);
            ++v7;
          }

          while (v6 != v7);
        }

        result = 0;
        *(a1 + 8) = v6;
      }
    }
  }

  else
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "Internal error: xmlSchemaItemListRemove, index error.\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t xmlSchemaCloneWildcardNsConstraints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    *(a2 + 44) = *(a3 + 44);
    v7 = *(a3 + 48);
    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = xmlSchemaNewWildcardNsConstraint(a1);
        if (!v9)
        {
          return 0xFFFFFFFFLL;
        }

        v9[1] = v7[1];
        if (v8)
        {
          v10 = v8;
        }

        else
        {
          v10 = (a2 + 48);
        }

        *v10 = v9;
        v7 = *v7;
        v8 = v9;
      }

      while (v7);
    }

    v11 = *(a2 + 56);
    if (v11)
    {
      do
      {
        v12 = *v11;
        free(v11);
        v11 = v12;
      }

      while (v12);
    }

    if (*(a3 + 56))
    {
      v13 = xmlSchemaNewWildcardNsConstraint(a1);
      *(a2 + 56) = v13;
      if (v13)
      {
        v14 = v13;
        result = 0;
        v14[1] = *(*(a3 + 56) + 8);
        return result;
      }

      return 0xFFFFFFFFLL;
    }

    result = 0;
    *(a2 + 56) = 0;
  }

  return result;
}

uint64_t xmlSchemaCheckUnionTypeDefCircularRecur(uint64_t a1, int *a2, void *a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      v6 = v3[1];
      if (v6)
      {
        while (*v6 != 1)
        {
          if (v6 == a2)
          {
            v11 = 3003;
            xmlSchemaPCustomErrExt(a1, 3003, a2, 0, "The union type definition is circular");
            return v11;
          }

          v7 = *(v6 + 88);
          if ((v7 & 0x10080) == 0x80)
          {
            *(v6 + 88) = v7 | 0x10000;
            v8 = v6;
            do
            {
              if (*v8 != 4)
              {
                break;
              }

              v9 = *(v8 + 168);
              if (v9)
              {
                goto LABEL_12;
              }

              v8 = *(v8 + 112);
            }

            while (v8);
            v9 = 0;
LABEL_12:
            v10 = xmlSchemaCheckUnionTypeDefCircularRecur(a1, a2, v9);
            *(v6 + 88) ^= 0x10000u;
            if (v10)
            {
              return v10;
            }
          }

          v6 = *(v6 + 112);
          if (!v6)
          {
            break;
          }
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

  return 0;
}

uint64_t xmlSchemaTypeFixup(uint64_t typeDecl, xmlSchemaParserCtxt *a2)
{
  if (!typeDecl)
  {
    return typeDecl;
  }

  if (*a2 != 1)
  {
    xmlSchemaInternalErr2(a2, "xmlSchemaTypeFixup", "this function needs a parser context", 0);
    return 0xFFFFFFFFLL;
  }

  v3 = *typeDecl;
  if (*typeDecl == 1 || (*(typeDecl + 90) & 0x40) != 0)
  {
    return 0;
  }

  if (v3 != 4)
  {
    if (v3 == 5)
    {

      return xmlSchemaFixupComplexType(a2, typeDecl);
    }

    return 0;
  }

  return xmlSchemaFixupSimpleTypeStageTwo(a2, typeDecl);
}

uint64_t xmlSchemaCheckFacetValues(xmlSchemaTypePtr typeDecl, _DWORD *ctxt, uint64_t a3, const xmlChar *a4)
{
  facets = typeDecl->facets;
  if (!facets)
  {
    return 0;
  }

  v7 = ctxt[9];
  if (!*(ctxt + 22))
  {
    v9 = xmlSchemaNewValidCtxt(0);
    *(ctxt + 22) = v9;
    if (!v9)
    {
      xmlSchemaPErr(ctxt, 0, 3069, "Internal error: xmlSchemaCreateVCtxtOnPCtxt, failed to create a temp. validation context.\n", 0, 0);
      return 0xFFFFFFFFLL;
    }

    v11 = *(ctxt + 2);
    v10 = *(ctxt + 3);
    v12 = *(ctxt + 1);
    *(v9 + 2) = v11;
    *(v9 + 3) = v10;
    v13 = (v9 + 16);
    v14 = *(v9 + 20);
    if (v14)
    {
      v15 = *(v9 + 20);
      do
      {
        v15[2] = v11;
        v15[3] = v10;
        v15[1] = v12;
        v16 = v15[22];
        if (!v16)
        {
          break;
        }

        v16[2] = v11;
        v16[3] = v10;
        v16[1] = v12;
        v15 = v16[20];
      }

      while (v15);
      v17 = *(ctxt + 1);
      v18 = *(ctxt + 5);
      *(v9 + 4) = v18;
      *v13 = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v17;
      do
      {
        v14[5] = v18;
        v14[1] = v17;
        v19 = v14[22];
        if (!v19)
        {
          break;
        }

        v19[3] = 0;
        v19[4] = v18;
        v19[1] = v17;
        v19[2] = 0;
        v14 = v19[20];
      }

      while (v14);
    }

    else
    {
      *(v9 + 4) = *(ctxt + 5);
      *v13 = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v12;
    }
  }

  *(*(ctxt + 22) + 40) = *(ctxt + 8);
  while (1)
  {
    result = xmlSchemaCheckFacet(facets, typeDecl, ctxt, a4);
    if (result == -1)
    {
      break;
    }

    facets = facets->next;
    if (!facets)
    {
      *(*(ctxt + 22) + 40) = 0;
      if (v7 == ctxt[9])
      {
        return 0;
      }

      return ctxt[8];
    }
  }

  return result;
}

uint64_t xmlSchemaDeriveAndValidateFacets(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 176);
  v2 = (a2 + 176);
  v3 = v4;
  v5 = *(v2 - 8);
  if (!v4)
  {
    if (!*(v5 + 176))
    {
      return 0;
    }

    v97 = 0;
    goto LABEL_57;
  }

  v6 = v3;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6);
  v97 = v7;
  if (!v3)
  {
LABEL_57:
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_58;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  do
  {
    v17 = v3[1];
    v18 = *v17;
    if (*v17 == 1009)
    {
      v19 = v3[1];
    }

    else
    {
      v19 = v16;
    }

    if (v18 == 1010)
    {
      v19 = v16;
      v20 = v3[1];
    }

    else
    {
      v20 = v13;
    }

    if (v18 == 1011)
    {
      v19 = v16;
      v20 = v13;
      v21 = v3[1];
    }

    else
    {
      v21 = v12;
    }

    if (v18 == 1005)
    {
      v22 = v3[1];
    }

    else
    {
      v22 = v14;
    }

    if (v18 == 1004)
    {
      v23 = v3[1];
    }

    else
    {
      v23 = v15;
    }

    if (v18 == 1004)
    {
      v22 = v14;
    }

    if (v18 > 1008)
    {
      v23 = v15;
      v22 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v18 <= 1008)
    {
      v20 = v13;
      v21 = v12;
    }

    if (v18 == 1003)
    {
      v24 = v3[1];
    }

    else
    {
      v24 = v8;
    }

    if (v18 == 1002)
    {
      v25 = v3[1];
    }

    else
    {
      v25 = v10;
    }

    if (v18 == 1002)
    {
      v24 = v8;
    }

    if (v18 == 1001)
    {
      v26 = v3[1];
    }

    else
    {
      v26 = v9;
    }

    if (v18 == 1000)
    {
      v26 = v9;
    }

    else
    {
      v17 = v11;
    }

    if (v18 <= 1001)
    {
      v25 = v10;
    }

    else
    {
      v17 = v11;
    }

    if (v18 <= 1001)
    {
      v24 = v8;
    }

    else
    {
      v26 = v9;
    }

    if (v18 <= 1003)
    {
      v11 = v17;
    }

    else
    {
      v16 = v19;
      v15 = v23;
      v14 = v22;
      v13 = v20;
      v12 = v21;
    }

    if (v18 <= 1003)
    {
      v10 = v25;
      v9 = v26;
      v8 = v24;
    }

    v3 = *v3;
  }

  while (v3);
LABEL_58:
  v103 = v11;
  v104 = v10;
  v101 = v9;
  v102 = v8;
  v98 = v2;
  v99 = v15;
  v95 = *(v2 - 8);
  v96 = v14;
  v27 = *(v5 + 176);
  if (v27)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    do
    {
      v37 = v27[1];
      v38 = *v37;
      if (*v37 == 1009)
      {
        v39 = v27[1];
      }

      else
      {
        v39 = v36;
      }

      if (v38 == 1010)
      {
        v39 = v36;
        v40 = v27[1];
      }

      else
      {
        v40 = v33;
      }

      if (v38 == 1011)
      {
        v39 = v36;
        v40 = v33;
        v41 = v27[1];
      }

      else
      {
        v41 = v32;
      }

      if (v38 == 1005)
      {
        v42 = v27[1];
      }

      else
      {
        v42 = v34;
      }

      if (v38 == 1004)
      {
        v43 = v27[1];
      }

      else
      {
        v43 = v35;
      }

      if (v38 == 1004)
      {
        v42 = v34;
      }

      if (v38 > 1008)
      {
        v43 = v35;
        v42 = v34;
      }

      else
      {
        v39 = v36;
      }

      if (v38 <= 1008)
      {
        v40 = v33;
        v41 = v32;
      }

      if (v38 == 1003)
      {
        v44 = v27[1];
      }

      else
      {
        v44 = v28;
      }

      if (v38 == 1002)
      {
        v45 = v27[1];
      }

      else
      {
        v45 = v30;
      }

      if (v38 == 1002)
      {
        v44 = v28;
      }

      if (v38 == 1001)
      {
        v46 = v27[1];
      }

      else
      {
        v46 = v29;
      }

      if (v38 == 1000)
      {
        v46 = v29;
      }

      else
      {
        v37 = v31;
      }

      if (v38 <= 1001)
      {
        v45 = v30;
      }

      else
      {
        v37 = v31;
      }

      if (v38 <= 1001)
      {
        v44 = v28;
      }

      else
      {
        v46 = v29;
      }

      if (v38 <= 1003)
      {
        v31 = v37;
      }

      else
      {
        v36 = v39;
        v35 = v43;
        v34 = v42;
        v33 = v40;
        v32 = v41;
      }

      if (v38 <= 1003)
      {
        v30 = v45;
        v29 = v46;
        v28 = v44;
      }

      v27 = *v27;
    }

    while (v27);
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v30 = 0;
    v29 = 0;
    v28 = 0;
  }

  v100 = v35;
  v106 = v34;
  if (v16 && v12 | v13)
  {
    xmlSchemaPCustomErrExt(a1, 1717, v16, *(v16 + 40), "It is an error for both 'length' and either of 'minLength' or 'maxLength' to be specified on the same type definition");
    v34 = v106;
  }

  if (v104 && v102)
  {
    v93 = *(v104 + 40);
    xmlSchemaFacetTypeToString(*v104);
    xmlSchemaFacetTypeToString(*v102);
    xmlSchemaPCustomErrExt(a1, 1717, v104, v93, "It is an error for both '%s' and '%s' to be specified on the same type definition");
    v34 = v106;
  }

  if (v103 && v101)
  {
    v94 = *(v103 + 5);
    xmlSchemaFacetTypeToString(*v103);
    xmlSchemaFacetTypeToString(*v101);
    xmlSchemaPCustomErrExt(a1, 1717, v103, v94, "It is an error for both '%s' and '%s' to be specified on the same type definition");
    v34 = v106;
  }

  if (v16 && v36)
  {
    v47 = xmlSchemaCompareValues(*(v16 + 56), *(v36 + 56));
    if (v47 == -2)
    {
      goto LABEL_296;
    }

    v34 = v106;
    if (v47)
    {
      xmlSchemaDeriveFacetErr(a1, v16, v36, 0, 0, 1);
      v34 = v106;
      if (*(v36 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v16, *(v16 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        v34 = v106;
      }
    }
  }

  if (v12 && v32)
  {
    v48 = xmlSchemaCompareValues(*(v12 + 56), *(v32 + 56));
    if (v48 == -2)
    {
      goto LABEL_296;
    }

    v34 = v106;
    if (v48)
    {
      if (v48 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v12, v32, 1, 1, 1);
        v34 = v106;
      }

      if (*(v32 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v12, *(v12 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        v34 = v106;
      }
    }
  }

  if (v13 && v33)
  {
    v49 = xmlSchemaCompareValues(*(v13 + 56), *(v33 + 56));
    if (v49 == -2)
    {
      goto LABEL_296;
    }

    v34 = v106;
    if (v49)
    {
      if (v49 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v13, v33, -1, 1, 1);
        v34 = v106;
      }

      if (*(v33 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v13, *(v13 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        v34 = v106;
      }
    }
  }

  if (!v16)
  {
    v16 = v36;
  }

  if (v16)
  {
    if (v12)
    {
      v50 = v12;
    }

    else
    {
      v50 = v32;
    }

    if (v50)
    {
      v51 = xmlSchemaCompareValues(*(v16 + 56), *(v50 + 56));
      if (v51 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      if (v51 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v16, v50, 1, 1, 0);
        v34 = v106;
      }
    }

    if (v13)
    {
      v33 = v13;
    }

    if (v33)
    {
      v52 = xmlSchemaCompareValues(*(v16 + 56), *(v33 + 56));
      if (v52 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      if (v52 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v16, v33, -1, 1, 0);
        v34 = v106;
      }
    }
  }

  v53 = v104;
  if (v104)
  {
    if (v103)
    {
      v54 = xmlSchemaCompareValues(*(v104 + 56), *(v103 + 7));
      if (v54 == -2)
      {
        goto LABEL_296;
      }

      v53 = v104;
      if (v54 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v103, 1, 1, 0);
      }
    }

    if (v30)
    {
      v55 = xmlSchemaCompareValues(*(v53 + 56), *(v30 + 56));
      if (v55 == -2)
      {
        goto LABEL_296;
      }

      v53 = v104;
      if (v55)
      {
        if (v55 == 1)
        {
          xmlSchemaDeriveFacetErr(a1, v104, v30, -1, 1, 1);
        }

        if (*(v30 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v104, *(v104 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        }
      }
    }

    if (v28)
    {
      v56 = xmlSchemaCompareValues(*(v53 + 56), *(v28 + 56));
      if (v56 == -2)
      {
        goto LABEL_296;
      }

      v53 = v104;
      if (v56 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v28, -1, 0, 1);
      }
    }

    if (v31)
    {
      v57 = xmlSchemaCompareValues(*(v53 + 56), *(v31 + 7));
      if (v57 == -2)
      {
        goto LABEL_296;
      }

      v53 = v104;
      if (v57 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v31, 1, 1, 1);
      }
    }

    v34 = v106;
    if (v29)
    {
      v58 = xmlSchemaCompareValues(*(v53 + 56), *(v29 + 56));
      if (v58 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v53 = v104;
      if (v58 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v104, v29, 1, 0, 1);
        v34 = v106;
      }
    }
  }

  v59 = v102;
  if (v102)
  {
    if (v101)
    {
      v60 = xmlSchemaCompareValues(*(v102 + 56), *(v101 + 56));
      if (v60 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      if (v60 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v102, v101, 1, 1, 0);
        v34 = v106;
      }
    }

    if (v28)
    {
      v61 = xmlSchemaCompareValues(*(v59 + 56), *(v28 + 56));
      if (v61 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      if (v61)
      {
        if (v61 == 1)
        {
          xmlSchemaDeriveFacetErr(a1, v102, v28, -1, 1, 1);
          v34 = v106;
        }

        if (*(v28 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v102, *(v102 + 40), "The base type's facet is 'fixed', thus the value must not differ");
          v34 = v106;
        }
      }
    }

    if (v30)
    {
      v62 = xmlSchemaCompareValues(*(v59 + 56), *(v30 + 56));
      if (v62 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      if (v62 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v102, v30, -1, 1, 1);
        v34 = v106;
      }
    }

    if (v31)
    {
      v63 = xmlSchemaCompareValues(*(v59 + 56), *(v31 + 7));
      if (v63 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      if (v63 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v102, v31, 1, 0, 1);
        v34 = v106;
      }
    }

    v53 = v104;
    if (v29)
    {
      v64 = xmlSchemaCompareValues(*(v59 + 56), *(v29 + 56));
      if (v64 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      v53 = v104;
      if (v64 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v102, v29, 1, 0, 1);
        v34 = v106;
      }
    }
  }

  v65 = v101;
  if (v101)
  {
    if (v53)
    {
      v66 = xmlSchemaCompareValues(*(v101 + 56), *(v53 + 56));
      if (v66 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v65 = v101;
      if (v66 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v101, v104, -1, 0, 0);
        v34 = v106;
      }
    }

    if (v29)
    {
      v67 = xmlSchemaCompareValues(*(v65 + 56), *(v29 + 56));
      if (v67 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v65 = v101;
      if (v67)
      {
        if (v67 == -1)
        {
          xmlSchemaDeriveFacetErr(a1, v101, v29, 1, 1, 1);
          v34 = v106;
        }

        if (*(v29 + 48))
        {
          xmlSchemaPCustomErrExt(a1, 1717, v101, *(v101 + 40), "The base type's facet is 'fixed', thus the value must not differ");
          v34 = v106;
        }
      }
    }

    if (v30)
    {
      v68 = xmlSchemaCompareValues(*(v65 + 56), *(v30 + 56));
      if (v68 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v65 = v101;
      if (v68 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v101, v30, -1, 1, 1);
        v34 = v106;
      }
    }

    if (v31)
    {
      v69 = xmlSchemaCompareValues(*(v65 + 56), *(v31 + 7));
      if (v69 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v65 = v101;
      if (v69 == -1)
      {
        xmlSchemaDeriveFacetErr(a1, v101, v31, 1, 1, 1);
        v34 = v106;
      }
    }

    v59 = v102;
    if (v28)
    {
      v70 = xmlSchemaCompareValues(*(v65 + 56), *(v28 + 56));
      if (v70 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      v59 = v102;
      if (v70 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v101, v28, -1, 0, 1);
        v34 = v106;
      }
    }
  }

  v71 = v103;
  if (v103)
  {
    if (v59)
    {
      v72 = xmlSchemaCompareValues(*(v103 + 7), *(v59 + 56));
      if (v72 == -2)
      {
        goto LABEL_296;
      }

      v71 = v103;
      v34 = v106;
      if (v72 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v102, -1, 0, 0);
        v34 = v106;
      }
    }

    if (v31)
    {
      v73 = xmlSchemaCompareValues(*(v71 + 7), *(v31 + 7));
      if (v73 == -2)
      {
        goto LABEL_296;
      }

      v71 = v103;
      v34 = v106;
      if (v73)
      {
        if (v73 == -1)
        {
          xmlSchemaDeriveFacetErr(a1, v103, v31, 1, 1, 1);
          v34 = v106;
        }

        if (v31[12])
        {
          xmlSchemaPCustomErrExt(a1, 1717, v103, *(v103 + 5), "The base type's facet is 'fixed', thus the value must not differ");
          v34 = v106;
        }
      }
    }

    if (v30)
    {
      v74 = xmlSchemaCompareValues(*(v71 + 7), *(v30 + 56));
      if (v74 == -2)
      {
        goto LABEL_296;
      }

      v71 = v103;
      v34 = v106;
      if (v74 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v30, -1, 1, 1);
        v34 = v106;
      }
    }

    if (v29)
    {
      v75 = xmlSchemaCompareValues(*(v71 + 7), *(v29 + 56));
      if (v75 == -2)
      {
        goto LABEL_296;
      }

      v71 = v103;
      v34 = v106;
      if (v75 != 1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v29, 1, 0, 1);
        v34 = v106;
      }
    }

    if (v28)
    {
      v76 = xmlSchemaCompareValues(*(v71 + 7), *(v28 + 56));
      if (v76 == -2)
      {
        goto LABEL_296;
      }

      v34 = v106;
      if (v76 != -1)
      {
        xmlSchemaDeriveFacetErr(a1, v103, v28, -1, 0, 1);
        v34 = v106;
      }
    }
  }

  v78 = v99;
  v77 = v100;
  if (v99 && v100)
  {
    v79 = xmlSchemaCompareValues(*(v99 + 56), *(v100 + 56));
    if (v79 == -2)
    {
      goto LABEL_296;
    }

    v78 = v99;
    v77 = v100;
    v34 = v106;
    if (v79)
    {
      if (v79 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v99, v100, -1, 1, 1);
        v77 = v100;
        v34 = v106;
      }

      if (*(v77 + 48))
      {
        xmlSchemaPCustomErrExt(a1, 1717, v99, *(v99 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        v77 = v100;
        v34 = v106;
      }
    }
  }

  v81 = v97;
  v80 = v98;
  v82 = v96;
  if (v96 && v34)
  {
    v83 = xmlSchemaCompareValues(*(v96 + 56), *(v34 + 7));
    if (v83 == -2)
    {
      goto LABEL_296;
    }

    v81 = v97;
    v80 = v98;
    v82 = v96;
    v78 = v99;
    v77 = v100;
    v34 = v106;
    if (v83)
    {
      if (v83 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v96, v106, -1, 1, 1);
        v77 = v100;
        v34 = v106;
      }

      if (v34[12])
      {
        xmlSchemaPCustomErrExt(a1, 1717, v96, *(v96 + 40), "The base type's facet is 'fixed', thus the value must not differ");
        v77 = v100;
        v34 = v106;
      }
    }
  }

  if (!v78)
  {
    v78 = v77;
  }

  if (!v82)
  {
    v82 = v34;
  }

  if (v78 && v82)
  {
    v84 = xmlSchemaCompareValues(*(v82 + 7), *(v78 + 56));
    if (v84 != -2)
    {
      v81 = v97;
      v80 = v98;
      if (v84 == 1)
      {
        xmlSchemaDeriveFacetErr(a1, v82, v78, -1, 1, 0);
      }

      goto LABEL_278;
    }

LABEL_296:
    xmlSchemaInternalErr2(a1, "xmlSchemaDeriveAndValidateFacets", "an error occurred", 0);
    return 0xFFFFFFFFLL;
  }

LABEL_278:
  v85 = *(v95 + 176);
  if (v85)
  {
    while (1)
    {
      v86 = v85[1];
      v87 = *v86;
      if ((*v86 & 0xFFFFFFFE) != 0x3EE)
      {
        break;
      }

LABEL_294:
      result = 0;
      v85 = *v85;
      if (!v85)
      {
        return result;
      }
    }

    v88 = v80;
    while (1)
    {
      v88 = *v88;
      if (!v88)
      {
        break;
      }

      v89 = v88[1];
      if (*v89 == v87)
      {
        if (v87 == 1008)
        {
          if (*(v89 + 52) < v86[13])
          {
            xmlSchemaPCustomErrExt(a1, 1717, v89, *(v89 + 40), "The 'whitespace' value has to be equal to or stronger than the 'whitespace' value of the base type");
          }

          if (v86[12])
          {
            if (*(v89 + 52) != v86[13])
            {
              xmlSchemaPCustomErrExt(a1, 1717, v89, *(v89 + 40), "The base type's facet is 'fixed', thus the value must not differ");
            }
          }
        }

        goto LABEL_294;
      }
    }

    v90 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
    if (v90)
    {
      v91 = v85[1];
      *v90 = 0;
      v90[1] = v91;
      if (v81)
      {
        *v81 = v90;
      }

      else
      {
        *v80 = v90;
      }

      v81 = v90;
      goto LABEL_294;
    }

    if (a1)
    {
      ++a1[9];
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "deriving facets, creating a facet link");
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t xmlSchemaTypeFixupWhitespace(uint64_t a1)
{
  v1 = *(a1 + 88);
  if ((v1 & 0x40) != 0)
  {
LABEL_14:
    v6 = 0x4000000;
  }

  else
  {
    if ((v1 & 0x80) != 0)
    {
      return 0;
    }

    v2 = *(a1 + 176);
    if (v2)
    {
      while (1)
      {
        v3 = v2[1];
        if (*v3 == 1008)
        {
          break;
        }

        v2 = *v2;
        if (!v2)
        {
          goto LABEL_6;
        }
      }

      v9 = v3[13] - 1;
      if (v9 >= 3)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = *&a0123456789abcd_0[4 * v9 + 16];
      goto LABEL_15;
    }

LABEL_6:
    v4 = a1;
    do
    {
      v4 = *(v4 + 112);
      if (v4)
      {
        v5 = *(v4 + 160);
        if (v5 != 45)
        {
          continue;
        }
      }

      return 0;
    }

    while (*v4 != 1);
    if (v5 == 46)
    {
LABEL_13:
      v6 = 0x1000000;
      goto LABEL_15;
    }

    if (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v6 = 0x2000000;
  }

LABEL_15:
  v7 = 0;
  *(a1 + 88) = v1 | v6;
  return v7;
}

uint64_t xmlSchemaTypeFixupOptimFacets(uint64_t result)
{
  v1 = *(result + 120);
  v2 = *(*(result + 112) + 88);
  v3 = (v2 >> 27) & 1;
  v4 = (v2 >> 21) & ((16 * v2) >> 31);
  for (i = (v2 >> 28) & ((16 * v2) >> 31); v1; v1 = *(v1 + 1))
  {
    v6 = *v1;
    if (*v1 == 1006)
    {
      v7 = 1;
    }

    else
    {
      v7 = i;
    }

    if (v6 == 1007)
    {
      v8 = 1;
    }

    else
    {
      v8 = v4;
    }

    if (v6 == 1007)
    {
      v7 = 1;
    }

    if (v6 != 1008)
    {
      v4 = v8;
      i = v7;
      v3 = 1;
    }
  }

  if (i)
  {
    *(result + 88) |= 0x10000000u;
  }

  if (v4)
  {
    v10 = *(result + 88);
    result += 88;
    v9 = v10;
    *result = v10 | 0x200000;
    if (v3)
    {
LABEL_17:
      *result = v9 | 0x8200000;
    }
  }

  else if (v3)
  {
    v11 = result + 88;
    v9 = *(result + 88);
    *(result + 88) = v9 | 0x8000000;
    if ((v9 & 0x100) != 0)
    {
      while (1)
      {
        v12 = *(result + 160);
        if (v12 == 46)
        {
          break;
        }

        if ((*(result + 89) & 0x40) != 0)
        {
          if (v12 == 1)
          {
            return result;
          }

          result = v11;
          goto LABEL_17;
        }

        result = *(result + 112);
      }
    }
  }

  return result;
}

void xmlSchemaPIllegalFacetAtomicErr(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v10 = 0;
  v11 = 0;
  xmlSchemaFormatItemForReport(&v11, a2, *(a2 + 72));
  v8 = *(a2 + 72);
  v9 = v11;
  xmlSchemaFacetTypeToString(*a4);
  xmlSchemaFormatItemForReport(&v10, a3, 0);
  xmlSchemaPErrExt(a1, v8, 3013, "%s: The facet '%s' is not allowed on types derived from the type %s.\n", v9);
  if (v11)
  {
    free(v11);
    v11 = 0;
  }

  if (v10)
  {
    free(v10);
  }
}

void xmlSchemaPIllegalFacetListUnionErr(uint64_t a1, int a2, uint64_t a3, int *a4)
{
  v11 = 0;
  xmlSchemaFormatItemForReport(&v11, a3, *(a3 + 72));
  v8 = *(a3 + 72);
  v9 = v11;
  v10 = xmlSchemaFacetTypeToString(*a4);
  xmlSchemaPErr(a1, v8, a2, "%s: The facet '%s' is not allowed.\n", v9, v10);
  if (v11)
  {
    free(v11);
  }
}

uint64_t xmlSchemaCheckCOSSTDerivedOK(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a2 == a3)
  {
    return 0;
  }

  if (*a2 == 1 || (*(a2 + 90) & 0x40) != 0 || (result = xmlSchemaTypeFixup(a2, a1), result != -1))
  {
    if (*a3 == 1 || (*(a3 + 90) & 0x40) != 0 || (result = xmlSchemaTypeFixup(a3, a1), result != -1))
    {
      if (a4)
      {
        return 3031;
      }

      v9 = *(a2 + 112);
      if (v9 && (*(v9 + 89) & 4) != 0)
      {
        return 3031;
      }

      else
      {
        if (v9 == a3)
        {
          return 0;
        }

        if (*v9 == 1 && *(v9 + 160) == 45 || (result = xmlSchemaCheckCOSSTDerivedOK(a1), result))
        {
          if (*a3 == 1 && *(a3 + 160) == 46 && (*(a2 + 88) & 0xC0) != 0)
          {
            return 0;
          }

          if ((*(a3 + 88) & 0x80) != 0)
          {
            v10 = (a3 + 168);
            while (1)
            {
              v10 = *v10;
              if (!v10)
              {
                break;
              }

              v11 = v10[1];
              if (*v11 != 1 && (*(v11 + 90) & 0x40) == 0)
              {
                result = xmlSchemaTypeFixup(v10[1], a1);
                if (result == -1)
                {
                  return result;
                }

                v12 = v10[1];
              }

              v13 = xmlSchemaCheckCOSSTDerivedOK(a1);
              result = 0;
              if (!v13)
              {
                return result;
              }
            }
          }

          return 3032;
        }
      }
    }
  }

  return result;
}

void xmlSchemaDeriveFacetErr(uint64_t a1, int *a2, int *a3, int a4, int a5, int a6)
{
  v12 = xmlStrdup("'");
  v13 = xmlSchemaFacetTypeToString(*a2);
  v14 = xmlStrcat(v12, v13);
  v15 = xmlStrcat(v14, "' has to be");
  if (a4 == 1)
  {
    v16 = " greater than";
  }

  else
  {
    if (!a4)
    {
      v15 = xmlStrcat(v15, " equal to");
    }

    v16 = " less than";
  }

  v17 = xmlStrcat(v15, v16);
  if (a5)
  {
    v17 = xmlStrcat(v17, " or equal to");
  }

  v18 = xmlStrcat(v17, " '");
  v19 = xmlSchemaFacetTypeToString(*a3);
  v20 = xmlStrcat(v18, v19);
  if (a6)
  {
    v21 = "' of the base type";
  }

  else
  {
    v21 = "'";
  }

  v22 = xmlStrcat(v20, v21);
  xmlSchemaPCustomErrExt(a1, 1717, a2, 0, v22);
  if (v22)
  {

    free(v22);
  }
}

uint64_t xmlSchemaIsDerivedFromBuiltInType(uint64_t result)
{
  for (; result; result = *(result + 56))
  {
    if (*result == 5)
    {
      return 0;
    }

    v1 = *(result + 160);
    if (v1 == 45)
    {
      return 0;
    }

    if (*result == 1)
    {
      if (v1 == 23)
      {
        return 1;
      }

      if (v1 == 46)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t xmlSchemaAreValuesEqual(xmlSchemaValPtr val, xmlSchemaVal *a2)
{
  while (1)
  {
    if (!val)
    {
      return 0;
    }

    ValType = xmlSchemaGetValType(val);
    BuiltInType = xmlSchemaGetBuiltInType(ValType);
    v6 = xmlSchemaGetValType(a2);
    for (i = xmlSchemaGetBuiltInType(v6); BuiltInType; BuiltInType = BuiltInType->baseType)
    {
      if (BuiltInType->builtInType == 46)
      {
        break;
      }

      if ((BuiltInType->flags & 0x4000) != 0)
      {
        break;
      }
    }

    for (; i; i = i->baseType)
    {
      if (i->builtInType == 46)
      {
        break;
      }

      if ((i->flags & 0x4000) != 0)
      {
        break;
      }
    }

    if (BuiltInType != i)
    {
      return 0;
    }

    v8 = BuiltInType->builtInType;
    if (v8 != 1 && (v8 != 46 || BuiltInType->type != XML_SCHEMA_TYPE_BASIC))
    {
      break;
    }

    AsString = xmlSchemaValueGetAsString(val);
    v12 = xmlSchemaValueGetAsString(a2);
    result = xmlStrEqual(AsString, v12);
    if (!result)
    {
      return result;
    }

LABEL_19:
    val = xmlSchemaValueGetNext(val);
    Next = xmlSchemaValueGetNext(a2);
    a2 = Next;
    if (!val)
    {
      return Next == 0;
    }

    if (!Next)
    {
      return 0;
    }
  }

  v10 = xmlSchemaCompareValuesWhtsp(val, XML_SCHEMA_WHITESPACE_PRESERVE, a2, XML_SCHEMA_WHITESPACE_PRESERVE);
  if (!v10)
  {
    goto LABEL_19;
  }

  if (v10 == -2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t xmlSchemaCheckDerivationOKRestriction2to4(_DWORD *a1, int a2, int *a3, int *a4, int *a5, uint64_t **a6, uint64_t a7, uint64_t a8)
{
  v13 = a1;
  if (a5 && a5[2] >= 1)
  {
    v14 = 0;
    if (a2)
    {
      v15 = "redefined";
    }

    else
    {
      v15 = "base";
    }

    do
    {
      v16 = *(*a5 + 8 * v14);
      if (a6 && (v17 = *(a6 + 2), v17 >= 1))
      {
        v18 = *a6;
        v19 = *(v16 + 24);
        while (1)
        {
          v20 = *v18;
          v21 = *(*v18 + 24);
          if (v19[2] == v21[2] && v19[14] == v21[14])
          {
            break;
          }

          ++v18;
          if (!--v17)
          {
            goto LABEL_12;
          }
        }

        if (*(v16 + 48) != 2 || *(v20 + 48) != 1)
        {
          if (!xmlSchemaCheckCOSSTDerivedOK(v13, v19[12], v21[12], 0))
          {
            goto LABEL_17;
          }

          v63 = 0;
          v64 = 0;
          v62 = 0;
          ComponentNode = xmlSchemaGetComponentNode(a3);
          ComponentDesignation = xmlSchemaGetComponentDesignation(&v64, *(*(v16 + 24) + 96));
          v27 = xmlSchemaGetComponentDesignation(&v63, *(*(v20 + 24) + 96));
          v28 = xmlSchemaGetComponentDesignation(&v62, a4);
          xmlSchemaPAttrUseErr4(v13, 1789, ComponentNode, a3, v16, "The attribute declaration's %s is not validly derived from the corresponding %s of the attribute declaration in the %s %s", ComponentDesignation, v27, v15, v28);
          if (v64)
          {
            free(v64);
          }

          if (v63)
          {
            free(v63);
          }

          v24 = v62;
          v13 = a1;
          if (!v62)
          {
            goto LABEL_17;
          }

LABEL_16:
          free(v24);
          goto LABEL_17;
        }

        v64 = 0;
        v25 = xmlSchemaGetComponentNode(a3);
        v26 = xmlSchemaGetComponentDesignation(&v64, a4);
        xmlSchemaPAttrUseErr4(v13, 1788, v25, a3, v16, "The 'optional' attribute use is inconsistent with the corresponding 'required' attribute use of the %s %s", v15, v26, 0, 0);
      }

      else
      {
LABEL_12:
        if (a8 && !xmlSchemaCheckCVCWildcardNamespace(a8, *(*(v16 + 24) + 112)))
        {
          goto LABEL_17;
        }

        v64 = 0;
        v22 = xmlSchemaGetComponentNode(a3);
        v23 = xmlSchemaGetComponentDesignation(&v64, a4);
        xmlSchemaPAttrUseErr4(v13, 1790, v22, a3, v16, "Neither a matching attribute use, nor a matching wildcard exists in the %s %s", v15, v23, 0, 0);
      }

      v24 = v64;
      if (v64)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v14;
    }

    while (v14 < a5[2]);
  }

  if (a6)
  {
    v29 = *(a6 + 2);
    if (v29 >= 1)
    {
      v30 = 0;
      if (a2)
      {
        v31 = "redefined";
      }

      else
      {
        v31 = "base";
      }

      do
      {
        v32 = (*a6)[v30];
        if (*(v32 + 48) == 1)
        {
          if (a5 && (v33 = a5[2], v33 >= 1))
          {
            v34 = *a5;
            v35 = *(v32 + 24);
            while (1)
            {
              v36 = *(*v34 + 24);
              if (*(v36 + 16) == *(v35 + 16) && *(v36 + 112) == *(v35 + 112))
              {
                break;
              }

              v34 += 8;
              if (!--v33)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
LABEL_41:
            v63 = 0;
            v64 = 0;
            v37 = xmlSchemaGetComponentDesignation(&v64, v32);
            v38 = xmlSchemaGetComponentDesignation(&v63, a4);
            xmlSchemaCustomErr4(v13, 1791, 0, a3, "A matching attribute use for the 'required' %s of the %s %s is missing", v37, v31, v38, 0);
            if (v64)
            {
              free(v64);
            }

            if (v63)
            {
              free(v63);
            }

            v29 = *(a6 + 2);
          }
        }

        ++v30;
      }

      while (v30 < v29);
    }
  }

  if (!a7)
  {
    return 0;
  }

  if (!a8)
  {
    v64 = 0;
    if (*a3 == 1)
    {
      if (a3[40] == 45)
      {
        v42 = "complex type definition";
      }

      else
      {
        v42 = "simple type definition";
      }
    }

    else
    {
      v42 = xmlSchemaItemTypeToStr(*a3);
    }

    if (a2)
    {
      v49 = "redefined";
    }

    else
    {
      v49 = "base";
    }

    if (*a4 == 1)
    {
      if (a4[40] == 45)
      {
        v50 = "complex type definition";
      }

      else
      {
        v50 = "simple type definition";
      }
    }

    else
    {
      v50 = xmlSchemaItemTypeToStr(*a4);
    }

    ComponentQName = xmlSchemaGetComponentQName(&v64, a4);
    xmlSchemaCustomErr4(v13, 1797, 0, a3, "The %s has an attribute wildcard, but the %s %s '%s' does not have one", v42, v49, v50, ComponentQName);
    goto LABEL_102;
  }

  if (!*(a8 + 44))
  {
    v43 = *(a7 + 56);
    if (!v43 || (v44 = *(a8 + 56)) == 0 || *(v43 + 8) != *(v44 + 8))
    {
      v45 = *(a7 + 48);
      if (v45)
      {
        if (*(a8 + 48))
        {
LABEL_66:
          v46 = (a8 + 48);
          while (1)
          {
            v46 = *v46;
            if (!v46)
            {
              break;
            }

            if (v45[1] == v46[1])
            {
              v45 = *v45;
              if (v45)
              {
                goto LABEL_66;
              }

              goto LABEL_50;
            }
          }
        }

        else
        {
          v51 = *(a8 + 56);
          if (v51)
          {
            v52 = *(v51 + 8);
            while (v45[1] != v52)
            {
              v45 = *v45;
              if (!v45)
              {
                goto LABEL_50;
              }
            }
          }
        }
      }

      v64 = 0;
      if (a2)
      {
        v53 = "redefined";
      }

      else
      {
        v53 = "base";
      }

      if (*a4 == 1)
      {
        if (a4[40] == 45)
        {
          v54 = "complex type definition";
        }

        else
        {
          v54 = "simple type definition";
        }
      }

      else
      {
        v54 = xmlSchemaItemTypeToStr(*a4);
      }

      v55 = xmlSchemaGetComponentQName(&v64, a4);
      xmlSchemaCustomErr4(v13, 1798, 0, a3, "The attribute wildcard is not a valid subset of the wildcard in the %s %s '%s'", v53, v54, v55, 0);
      goto LABEL_102;
    }
  }

LABEL_50:
  v39 = *a4;
  if (*a4 != 1)
  {
    if (*(a7 + 40) < *(a8 + 40))
    {
      v64 = 0;
      if (a2)
      {
        v40 = "redefined";
      }

      else
      {
        v40 = "base";
      }

      v41 = xmlSchemaItemTypeToStr(v39);
      goto LABEL_76;
    }

    return 0;
  }

  if (a4[40] == 45 || *(a7 + 40) >= *(a8 + 40))
  {
    return 0;
  }

  v64 = 0;
  if (a2)
  {
    v40 = "redefined";
  }

  else
  {
    v40 = "base";
  }

  v41 = "simple type definition";
LABEL_76:
  v47 = xmlSchemaGetComponentQName(&v64, a4);
  xmlSchemaCustomErr4(v13, 1799, 0, a4, "The {process contents} of the attribute wildcard is weaker than the one in the %s %s '%s'", v40, v41, v47, 0);
LABEL_102:
  if (v64)
  {
    free(v64);
  }

  return v13[8];
}

void xmlSchemaPAttrUseErr4(_DWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const xmlChar *a6, const xmlChar *a7, xmlChar *a8, xmlChar *a9, uint64_t a10)
{
  cur = 0;
  v21 = 0;
  xmlSchemaFormatItemForReport(&cur, a4, 0);
  v17 = xmlStrcat(cur, ", ");
  cur = v17;
  v18 = xmlSchemaFormatItemForReport(&v21, a5, 0);
  v19 = xmlStrcat(v17, v18);
  cur = v19;
  if (v21)
  {
    free(v21);
    v21 = 0;
    v19 = cur;
  }

  cur = xmlStrcat(v19, ": ");
  cur = xmlStrcat(cur, a6);
  cur = xmlStrcat(cur, ".\n");
  xmlSchemaErr4Line(a1, 2, a2, a3, 0, cur, a7, a8, a9, a10);
  free(cur);
}

uint64_t xmlSchemaCheckCVCWildcardNamespace(uint64_t a1, xmlChar *str2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 44))
  {
    return 0;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    while (!xmlStrEqual(v4[1], str2))
    {
      v4 = *v4;
      if (!v4)
      {
        return 1;
      }
    }

    return 0;
  }

  else
  {
    if (!str2)
    {
      return 1;
    }

    v5 = *(a1 + 56);
    if (!v5)
    {
      return 1;
    }

    result = xmlStrEqual(*(v5 + 8), str2);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t xmlSchemaCheckCTComponent(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  if (!v4 || *v4 != 4 && (*v4 != 1 || v4[40] == 45) || (*(a2 + 88) & 2) != 0)
  {
    v6 = *(a2 + 216);
    if (v6)
    {
      v7 = *(v6 + 8);
      if (v7 >= 2)
      {
        v8 = 0;
        v9 = v7 - 2;
        v10 = v7 - 1;
        do
        {
          v11 = v7--;
          v12 = *(*v6 + 8 * v7);
          if (v7)
          {
            v13 = *(v12 + 24);
            v14 = *v6 + 8 * v9;
            v15 = v10;
            while (1)
            {
              v16 = *(*v14 + 24);
              if (v13[2] == *(v16 + 16) && v13[14] == *(v16 + 112))
              {
                break;
              }

              --v15;
              v14 -= 8;
              if (v15 <= 0)
              {
                goto LABEL_16;
              }
            }

            v36 = 0;
            ComponentDesignation = xmlSchemaGetComponentDesignation(&v36, v12);
            xmlSchemaCustomErr4(a1, 3087, 0, a2, "Duplicate %s", ComponentDesignation, 0, 0, 0);
            if (v36)
            {
              free(v36);
            }

            if (xmlSchemaItemListRemove(v6, v7) == -1)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            v13 = *(v12 + 24);
LABEL_16:
            for (i = v13[12]; i; i = *(i + 56))
            {
              if (*i == 5)
              {
                break;
              }

              v18 = *(i + 160);
              if (v18 == 45)
              {
                break;
              }

              if (*i == 1)
              {
                if (v18 == 23)
                {
                  if (!v8)
                  {
                    goto LABEL_32;
                  }

                  v36 = 0;
                  v20 = xmlSchemaGetComponentDesignation(&v36, v12);
                  xmlSchemaCustomErr4(a1, 3087, 0, a2, "There must not exist more than one attribute declaration of type 'xs:ID' (or derived from 'xs:ID'). The %s violates this constraint", v20, 0, 0, 0);
                  if (v36)
                  {
                    free(v36);
                  }

                  if (xmlSchemaItemListRemove(v6, v7) != -1)
                  {
LABEL_32:
                    v8 = 1;
                    break;
                  }

                  return 0xFFFFFFFFLL;
                }

                if (v18 == 46)
                {
                  break;
                }
              }
            }
          }

          --v9;
          --v10;
        }

        while (v11 > 1);
      }
    }

    v21 = *(a2 + 112);
    v22 = *v21;
    if ((*(a2 + 88) & 2) == 0)
    {
      if (v22 == 5 || v21[40] == 45)
      {
        if ((*(v21 + 89) & 4) == 0)
        {
          if (xmlSchemaCheckDerivationOKRestriction2to4(a1, 0, a2, *(a2 + 112), *(a2 + 216), *(v21 + 27), *(a2 + 152), *(v21 + 19)) == -1)
          {
            return 0xFFFFFFFFLL;
          }

          if (v21[40] == 45)
          {
            return 0;
          }

          v23 = *(a2 + 92);
          if (v23 <= 2)
          {
            if (v23 == 1)
            {
              v33 = v21[23];
              if ((v33 - 2) >= 2)
              {
                if (v33 == 1)
                {
                  return 0;
                }
              }

              else if (xmlSchemaIsParticleEmptiable(*(v21 + 7)))
              {
                return 0;
              }

              v32 = "The content type of the base type must be either empty or 'mixed' (or 'elements-only') and an emptiable particle";
              goto LABEL_89;
            }

            if (v23 == 2)
            {
              return 0;
            }
          }

          else
          {
            if (v23 == 3)
            {
              if (v21[23] == 3)
              {
                return 0;
              }

              v32 = "If the content type is 'mixed', then the content type of the base type must also be 'mixed'";
              goto LABEL_89;
            }

            if (v23 == 6 || v23 == 4)
            {
              v24 = v21[23];
              if (v24 == 3)
              {
                if (xmlSchemaIsParticleEmptiable(*(v21 + 7)))
                {
                  return 0;
                }
              }

              else if (v24 == 6 || v24 == 4)
              {
                v25 = xmlSchemaCheckCOSSTDerivedOK(a1, *(a2 + 192), *(v21 + 24), 0);
                if (v25)
                {
                  v35 = 0;
                  v36 = 0;
                  if (v25 != -1)
                  {
                    v26 = xmlSchemaGetComponentDesignation(&v36, *(a2 + 192));
                    v27 = xmlSchemaGetComponentDesignation(&v35, *(v21 + 24));
                    xmlSchemaCustomErr4(a1, 1787, 0, a2, "The {content type} %s is not validly derived from the base type's {content type} %s", v26, v27, 0, 0);
                    if (v36)
                    {
                      free(v36);
                    }

                    if (v35)
                    {
                      free(v35);
                    }

                    return a1[8];
                  }

                  return 0xFFFFFFFFLL;
                }

                return 0;
              }

              v32 = "The content type of the base type must be either a simple type or 'mixed' and an emptiable particle";
              goto LABEL_89;
            }
          }

          v32 = "The type is not a valid restriction of its base type";
LABEL_89:
          xmlSchemaPCustomErrExt(a1, 1787, a2, 0, v32);
          return a1[8];
        }

        xmlSchemaCustomErr4(a1, 1787, *(a2 + 72), a2, "The 'final' of the base type definition contains 'restriction'", 0, 0, 0, 0);
      }

      else
      {
        xmlSchemaCustomErr4(a1, 1787, *(a2 + 72), a2, "The base type must be a complex type", 0, 0, 0, 0);
      }

      return a1[8];
    }

    if (v22 == 5 || v21[40] == 45)
    {
      if ((*(v21 + 89) & 2) == 0)
      {
        v28 = *(a2 + 192);
        if (v28 && v28 == *(v21 + 24))
        {
          return 0;
        }

        v29 = *(a2 + 92);
        if (v29 == 1 && v21[23] == 1)
        {
          return 0;
        }

        if (*(a2 + 56))
        {
          v30 = v21[23];
          if (v30 == 1)
          {
            return 0;
          }

          v31 = "The content type of both, the type and its base type, must either 'mixed' or 'element-only'";
          if ((v29 & 0xFFFFFFFE) == 2 && v29 == v30)
          {
            return 0;
          }
        }

        else
        {
          v31 = "The content type must specify a particle";
        }

LABEL_73:
        v5 = 3063;
        xmlSchemaPCustomErrExt(a1, 3063, a2, 0, v31);
        return v5;
      }
    }

    else
    {
      if (*(a2 + 192) != v21)
      {
        v31 = "The content type must be the simple base type";
        goto LABEL_73;
      }

      if ((*(v21 + 89) & 2) == 0)
      {
        return 0;
      }
    }

    v31 = "The 'final' of the base type definition contains 'extension'";
    goto LABEL_73;
  }

  v5 = 3076;
  xmlSchemaCustomErr4(a1, 3076, 0, a2, "If the base type is a simple type, the derivation method must be 'extension'", 0, 0, 0, 0);
  return v5;
}

uint64_t xmlSchemaIsParticleEmptiable(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (!*(a1 + 32))
  {
    return 1;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    return 1;
  }

  if ((*v1 - 6) > 2)
  {
    return 0;
  }

  return xmlSchemaGetParticleEmptiable(a1);
}

uint64_t xmlSchemaGetParticleEmptiable(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 1;
  }

  if (!*(a1 + 32))
  {
    return 1;
  }

  v2 = *(v1 + 24);
  if (!v2)
  {
    return 1;
  }

  do
  {
    v3 = **(v2 + 24);
    if (v3 == 14 || v3 == 2)
    {
      result = *(v2 + 32) == 0;
    }

    else
    {
      result = xmlSchemaGetParticleEmptiable(v2);
    }

    if (*v1 == 7)
    {
      if (result)
      {
        return 1;
      }
    }

    else if (!result)
    {
      return result;
    }

    v2 = *(v2 + 16);
  }

  while (v2);
  return *v1 != 7;
}

uint64_t xmlSchemaCheckSubstGroupCircular(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a2 + 152);
  if (!v3)
  {
    return 0;
  }

  if (v3 != a1)
  {
    v4 = *(v3 + 88);
    if ((v4 & 0x200) == 0)
    {
      *(v3 + 88) = v4 | 0x200;
      result = xmlSchemaCheckSubstGroupCircular();
      *(*(v2 + 152) + 88) ^= 0x200u;
      return result;
    }

    return 0;
  }

  return v2;
}

uint64_t xmlSchemaCheckCOSDerivedOK(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*a2 == 4 || *a2 == 1 && *(a2 + 160) != 45)
  {
    return xmlSchemaCheckCOSSTDerivedOK(a1, a2, a3, a4);
  }

  if (a2 == a3)
  {
    return 0;
  }

  while (((a4 & 2) == 0 || (*(a2 + 88) & 2) == 0) && ((a4 & 1) == 0 || (*(a2 + 88) & 4) == 0))
  {
    a2 = *(a2 + 112);
    if (a2 == a3)
    {
      return 0;
    }

    if (*a2 != 5)
    {
      if (*a2 == 1)
      {
        if (*(a2 + 160) != 45)
        {
          return xmlSchemaCheckCOSSTDerivedOK(a1, a2, a3, a4);
        }

        return 1;
      }

      if (*(a2 + 160) != 45)
      {
        return xmlSchemaCheckCOSSTDerivedOK(a1, a2, a3, a4);
      }
    }
  }

  return 1;
}

uint64_t xmlSchemaBuildAContentModel(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaBuildAContentModel", "particle is NULL", 0);
    return 1;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    return 1;
  }

  v5 = *v4;
  if (*v4 <= 6)
  {
    if (v5 == 1)
    {
      if (v4[40] == 45)
      {
        v17 = "complex type definition";
      }

      else
      {
        v17 = "simple type definition";
      }

LABEL_41:
      v18 = "found unexpected term of type '%s' in content model";
      v19 = a1;
LABEL_42:
      xmlSchemaInternalErr2(v19, "xmlSchemaBuildAContentModel", v18, v17);
      return 0;
    }

    if (v5 == 2)
    {
      v20 = *(a1 + 144);
      v21 = xmlAutomataNewState(*(a1 + 120));
      v32 = *(a2 + 36);
      if (v32 == 0x40000000 || (--v32, v32))
      {
        v41 = *(a2 + 32);
        if (v41 <= 0)
        {
          v42 = 0;
        }

        else
        {
          v42 = v41 - 1;
        }

        v43 = xmlAutomataNewCounter(*(a1 + 120), v42, v32);
        v44 = xmlAutomataNewState(*(a1 + 120));
        if (v4[11] == 1)
        {
          v45 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", "*", v4);
          *(a1 + 144) = v45;
          xmlAutomataNewEpsilon(*(a1 + 120), v45, v44);
          v46 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", 0, v4);
          *(a1 + 144) = v46;
          xmlAutomataNewEpsilon(*(a1 + 120), v46, v44);
        }

        else
        {
          v52 = *(v4 + 6);
          if (v52)
          {
            do
            {
              v53 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", v52[1], v4);
              *(a1 + 144) = v53;
              xmlAutomataNewEpsilon(*(a1 + 120), v53, v44);
              v52 = *v52;
            }

            while (v52);
          }

          else
          {
            v69 = *(v4 + 7);
            if (v69)
            {
              *(a1 + 144) = xmlAutomataNewNegTrans(*(a1 + 120), v20, v44, "*", *(v69 + 8), v4);
            }
          }
        }

        xmlAutomataNewCountedTrans(*(a1 + 120), v44, v20, v43);
        xmlAutomataNewCounterTrans(*(a1 + 120), v44, v21, v43);
      }

      else if (v4[11] == 1)
      {
        v33 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", "*", v4);
        *(a1 + 144) = v33;
        xmlAutomataNewEpsilon(*(a1 + 120), v33, v21);
        v34 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", 0, v4);
        *(a1 + 144) = v34;
        xmlAutomataNewEpsilon(*(a1 + 120), v34, v21);
      }

      else
      {
        v61 = *(v4 + 6);
        if (v61)
        {
          do
          {
            *(a1 + 144) = v20;
            v62 = xmlAutomataNewTransition2(*(a1 + 120), v20, 0, "*", v61[1], v4);
            *(a1 + 144) = v62;
            xmlAutomataNewEpsilon(*(a1 + 120), v62, v21);
            v61 = *v61;
          }

          while (v61);
        }

        else
        {
          v79 = *(v4 + 7);
          if (v79)
          {
            *(a1 + 144) = xmlAutomataNewNegTrans(*(a1 + 120), v20, v21, "*", *(v79 + 8), v4);
          }
        }
      }

      if (!*(a2 + 32))
      {
LABEL_136:
        xmlAutomataNewEpsilon(*(a1 + 120), v20, v21);
        v12 = 1;
        goto LABEL_137;
      }

      v12 = 0;
LABEL_137:
      *(a1 + 144) = v21;
      return v12;
    }

    if (v5 != 6)
    {
LABEL_37:
      v17 = xmlSchemaItemTypeToStr(v5);
      goto LABEL_41;
    }

    v14 = *(a2 + 32);
    if (v14 == 1)
    {
      v15 = *(a2 + 36);
      if (v15 == 1)
      {
        v16 = *(v4 + 3);
        if (v16)
        {
          LODWORD(v12) = 1;
          do
          {
            if (xmlSchemaBuildAContentModel(a1, v16))
            {
              v12 = v12;
            }

            else
            {
              v12 = 0;
            }

            v16 = *(v16 + 16);
          }

          while (v16);
          return v12;
        }

        return 1;
      }

      v47 = (a1 + 144);
      v26 = *(a1 + 144);
      if (v15 > 0x3FFFFFFF)
      {
        goto LABEL_98;
      }

      if (v15 >= 2)
      {
        goto LABEL_125;
      }
    }

    else
    {
      v47 = (a1 + 144);
      v26 = *(a1 + 144);
      v48 = *(a2 + 36);
      if (v48 > 0x3FFFFFFF)
      {
        if (v14 >= 2)
        {
          v49 = xmlAutomataNewEpsilon(*(a1 + 120), *(a1 + 144), 0);
          *(a1 + 144) = v49;
          v50 = xmlAutomataNewCounter(*(a1 + 120), *(a2 + 32) - 1, 0x40000000);
          v51 = *(*(a2 + 24) + 24);
          if (v51)
          {
            LODWORD(v12) = 1;
            do
            {
              if (xmlSchemaBuildAContentModel(a1, v51))
              {
                v12 = v12;
              }

              else
              {
                v12 = 0;
              }

              v51 = *(v51 + 16);
            }

            while (v51);
          }

          else
          {
            v12 = 1;
          }

          v80 = *(a1 + 144);
          xmlAutomataNewCountedTrans(*(a1 + 120), v80, v49, v50);
          v81 = xmlAutomataNewCounterTrans(*(a1 + 120), v80, 0, v50);
          *(a1 + 144) = v81;
          if (v12 == 1)
          {
            xmlAutomataNewEpsilon(*(a1 + 120), v49, v81);
          }

          return v12;
        }

LABEL_98:
        v56 = xmlAutomataNewEpsilon(*(a1 + 120), v26, 0);
        v26 = v56;
        *(a1 + 144) = v56;
        v57 = *(*(a2 + 24) + 24);
        if (v57)
        {
          LODWORD(v12) = 1;
          do
          {
            if (xmlSchemaBuildAContentModel(a1, v57))
            {
              v12 = v12;
            }

            else
            {
              v12 = 0;
            }

            v57 = *(v57 + 16);
          }

          while (v57);
          v58 = *v47;
        }

        else
        {
          v12 = 1;
          v58 = v56;
        }

        xmlAutomataNewEpsilon(*(a1 + 120), v58, v26);
        v70 = *(a1 + 120);
        v60 = *(a1 + 144);
LABEL_146:
        v74 = xmlAutomataNewEpsilon(v70, v60, 0);
        *(a1 + 144) = v74;
        if (*(a2 + 32))
        {
          return v12;
        }

        v55 = v74;
        goto LABEL_156;
      }

      if (v14 > 1 || v48 > 1)
      {
LABEL_125:
        v7 = xmlAutomataNewEpsilon(*(a1 + 120), v26, 0);
        *(a1 + 144) = v7;
        v65 = xmlAutomataNewCounter(*(a1 + 120), *(a2 + 32) - 1, *(a2 + 36) - 1);
        v66 = *(*(a2 + 24) + 24);
        if (v66)
        {
          v67 = 1;
          do
          {
            if (!xmlSchemaBuildAContentModel(a1, v66))
            {
              v67 = 0;
            }

            v66 = *(v66 + 16);
          }

          while (v66);
          v68 = v67 == 1;
        }

        else
        {
          v68 = 1;
        }

        v71 = *(a1 + 144);
        xmlAutomataNewCountedTrans(*(a1 + 120), v71, v7, v65);
        v55 = xmlAutomataNewCounterTrans(*(a1 + 120), v71, 0, v65);
        *(a1 + 144) = v55;
        if (!*(a2 + 32) || v68)
        {
          goto LABEL_143;
        }

        return 0;
      }
    }

    v59 = *(v4 + 3);
    if (v59)
    {
      LODWORD(v12) = 1;
      do
      {
        if (xmlSchemaBuildAContentModel(a1, v59))
        {
          v12 = v12;
        }

        else
        {
          v12 = 0;
        }

        v59 = *(v59 + 16);
      }

      while (v59);
      v60 = *v47;
    }

    else
    {
      v12 = 1;
      v60 = v26;
    }

    v70 = *(a1 + 120);
    goto LABEL_146;
  }

  if (v5 <= 13)
  {
    if (v5 != 7)
    {
      if (v5 == 8)
      {
        v6 = *(v4 + 3);
        if (v6)
        {
          v7 = *(a1 + 144);
          v8 = xmlAutomataNewState(*(a1 + 120));
          xmlAutomataNewEpsilon(*(a1 + 120), *(a1 + 144), v8);
          do
          {
            *(a1 + 144) = v8;
            v9 = *(v6 + 24);
            if (!v9)
            {
              v18 = "<element> particle has no term";
              v19 = a1;
              v17 = 0;
              goto LABEL_42;
            }

            if ((*(v9 + 90) & 2) != 0)
            {
              v11 = xmlAutomataNewCounter(*(a1 + 120), *(v6 + 32), *(v6 + 36));
              xmlSchemaBuildContentModelForSubstGroup(a1, v6, v11, *(a1 + 144));
            }

            else
            {
              v10 = *(v6 + 32);
              if (v10)
              {
                if (v10 == 1 && *(v6 + 36) == 1)
                {
                  xmlAutomataNewOnceTrans2(*(a1 + 120), v8, v8, *(v9 + 16), *(v9 + 96), 1, 1, v9);
                }
              }

              else if (*(v6 + 36) == 1)
              {
                xmlAutomataNewCountTrans2(*(a1 + 120), v8, v8, *(v9 + 16), *(v9 + 96), 0, 1, v9);
              }
            }

            v6 = *(v6 + 16);
          }

          while (v6);
          v54 = xmlAutomataNewAllTrans(*(a1 + 120), *(a1 + 144), 0, 0);
          *(a1 + 144) = v54;
          if (!*(a2 + 32))
          {
            v55 = v54;
LABEL_143:
            v72 = *(a1 + 120);
            v73 = v7;
LABEL_157:
            xmlAutomataNewEpsilon(v72, v73, v55);
            return 1;
          }

          return 0;
        }

        return 1;
      }

      goto LABEL_37;
    }

    v20 = *(a1 + 144);
    v21 = xmlAutomataNewState(*(a1 + 120));
    v22 = *(a2 + 36);
    if (v22 == 0x40000000 || (--v22, v22))
    {
      v35 = *(a2 + 32);
      if (v35 <= 0)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35 - 1;
      }

      v37 = xmlAutomataNewCounter(*(a1 + 120), v36, v22);
      v38 = xmlAutomataNewState(*(a1 + 120));
      v39 = xmlAutomataNewState(*(a1 + 120));
      v40 = *(*(a2 + 24) + 24);
      if (v40)
      {
        LODWORD(v12) = 0;
        do
        {
          *(a1 + 144) = v39;
          if (xmlSchemaBuildAContentModel(a1, v40))
          {
            v12 = 1;
          }

          else
          {
            v12 = v12;
          }

          xmlAutomataNewEpsilon(*(a1 + 120), *(a1 + 144), v38);
          v40 = *(v40 + 16);
        }

        while (v40);
      }

      else
      {
        v12 = 0;
      }

      xmlAutomataNewEpsilon(*(a1 + 120), v20, v39);
      xmlAutomataNewCountedTrans(*(a1 + 120), v38, v39, v37);
      xmlAutomataNewCounterTrans(*(a1 + 120), v38, v21, v37);
      if (v12 == 1)
      {
        xmlAutomataNewEpsilon(*(a1 + 120), v39, v21);
      }
    }

    else
    {
      v23 = *(*(a2 + 24) + 24);
      if (v23)
      {
        LODWORD(v12) = 0;
        do
        {
          *(a1 + 144) = v20;
          if (xmlSchemaBuildAContentModel(a1, v23))
          {
            v12 = 1;
          }

          else
          {
            v12 = v12;
          }

          xmlAutomataNewEpsilon(*(a1 + 120), *(a1 + 144), v21);
          v23 = *(v23 + 16);
        }

        while (v23);
      }

      else
      {
        v12 = 0;
      }
    }

    if (!*(a2 + 32))
    {
      goto LABEL_136;
    }

    goto LABEL_137;
  }

  if (v5 != 14)
  {
    if (v5 == 17)
    {
      return 1;
    }

    goto LABEL_37;
  }

  v24 = v4[22];
  if ((v24 & 0x20000) == 0)
  {
    if ((v24 & 0x10) != 0)
    {
      return 0;
    }

    v25 = *(a2 + 36);
    if (v25 == 1)
    {
      v26 = *(a1 + 144);
      v27 = *(a1 + 120);
      v28 = *(v4 + 2);
      v29 = *(v4 + 12);
      v30 = v26;
      v31 = 0;
    }

    else
    {
      v63 = *(a2 + 32);
      if (v25 < 0x40000000 || v63 > 1)
      {
        if (v25 == 0x40000000)
        {
          v75 = 0x40000000;
        }

        else
        {
          v75 = v25 - 1;
        }

        if (v63 <= 0)
        {
          v76 = 0;
        }

        else
        {
          v76 = v63 - 1;
        }

        v26 = xmlAutomataNewEpsilon(*(a1 + 120), *(a1 + 144), 0);
        v77 = xmlAutomataNewCounter(*(a1 + 120), v76, v75);
        v78 = xmlAutomataNewTransition2(*(a1 + 120), v26, 0, *(v4 + 2), *(v4 + 12), v4);
        *(a1 + 144) = v78;
        xmlAutomataNewCountedTrans(*(a1 + 120), v78, v26, v77);
        v64 = xmlAutomataNewCounterTrans(*(a1 + 120), *(a1 + 144), 0, v77);
LABEL_155:
        v55 = v64;
        *(a1 + 144) = v64;
        if (*(a2 + 32))
        {
          return 0;
        }

LABEL_156:
        v72 = *(a1 + 120);
        v73 = v26;
        goto LABEL_157;
      }

      v26 = *(a1 + 144);
      v30 = xmlAutomataNewTransition2(*(a1 + 120), v26, 0, *(v4 + 2), *(v4 + 12), v4);
      *(a1 + 144) = v30;
      v27 = *(a1 + 120);
      v28 = *(v4 + 2);
      v29 = *(v4 + 12);
      v31 = v30;
    }

    v64 = xmlAutomataNewTransition2(v27, v30, v31, v28, v29, v4);
    goto LABEL_155;
  }

  return xmlSchemaBuildContentModelForSubstGroup(a1, a2, -1, 0);
}