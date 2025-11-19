uint64_t xmlSchemaBuildContentModelForSubstGroup(uint64_t a1, uint64_t a2, int a3, xmlAutomataState *a4)
{
  v4 = a4;
  v8 = *(a2 + 24);
  v9 = *(a1 + 144);
  if (!a4)
  {
    v4 = xmlAutomataNewState(*(a1 + 120));
  }

  v10 = *(*(a1 + 48) + 48);
  if (v10 && (v11 = xmlHashLookup2(v10, v8[2], v8[12])) != 0)
  {
    v12 = v11;
    if (a3 < 0)
    {
      v18 = *(a2 + 36);
      if (v18 == 0x40000000 || (--v18, v18))
      {
        v24 = *(a2 + 32);
        if (v24 <= 0)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24 - 1;
        }

        v26 = xmlAutomataNewCounter(*(a1 + 120), v25, v18);
        v27 = xmlAutomataNewState(*(a1 + 120));
        v28 = *(a1 + 120);
        v29 = xmlAutomataNewTransition2(v28, v9, 0, v8[2], v8[12], v8);
        xmlAutomataNewEpsilon(v28, v29, v27);
        v30 = v12[1];
        if (*(v30 + 8) >= 1)
        {
          v31 = 0;
          do
          {
            v32 = *(a1 + 120);
            v33 = xmlAutomataNewTransition2(v32, v9, 0, *(*(*v30 + 8 * v31) + 16), *(*(*v30 + 8 * v31) + 96), *(*v30 + 8 * v31));
            xmlAutomataNewEpsilon(v32, v33, v27);
            ++v31;
            v30 = v12[1];
          }

          while (v31 < *(v30 + 8));
        }

        xmlAutomataNewCountedTrans(*(a1 + 120), v27, v9, v26);
        xmlAutomataNewCounterTrans(*(a1 + 120), v27, v4, v26);
      }

      else
      {
        v19 = *(a1 + 120);
        v20 = xmlAutomataNewTransition2(v19, v9, 0, v8[2], v8[12], v8);
        xmlAutomataNewEpsilon(v19, v20, v4);
        v21 = v12[1];
        if (*(v21 + 8) >= 1)
        {
          v22 = 0;
          do
          {
            v23 = xmlAutomataNewTransition2(*(a1 + 120), v9, 0, *(*(*v21 + 8 * v22) + 16), *(*(*v21 + 8 * v22) + 96), *(*v21 + 8 * v22));
            xmlAutomataNewEpsilon(*(a1 + 120), v23, v4);
            ++v22;
            v21 = v12[1];
          }

          while (v22 < *(v21 + 8));
        }
      }
    }

    else
    {
      v13 = xmlAutomataNewCountedTrans(*(a1 + 120), v9, 0, a3);
      xmlAutomataNewTransition2(*(a1 + 120), v13, v4, v8[2], v8[12], v8);
      v14 = v12[1];
      if (*(v14 + 8) >= 1)
      {
        v15 = 0;
        do
        {
          xmlAutomataNewTransition2(*(a1 + 120), v13, v4, *(*(*v14 + 8 * v15) + 16), *(*(*v14 + 8 * v15) + 96), *(*v14 + 8 * v15));
          ++v15;
          v14 = v12[1];
        }

        while (v15 < *(v14 + 8));
      }
    }

    if (*(a2 + 32))
    {
      result = 0;
    }

    else
    {
      xmlAutomataNewEpsilon(*(a1 + 120), v9, v4);
      result = 1;
    }

    *(a1 + 144) = v4;
  }

  else
  {
    ComponentNode = xmlSchemaGetComponentNode(a2);
    xmlSchemaPErr(a1, ComponentNode, 3069, "Internal error: xmlSchemaBuildContentModelForSubstGroup, declaration is marked having a subst. group but none available.\n", v8[2], 0);
    return 0;
  }

  return result;
}

xmlChar *xmlSchemaNormalizeValue(_DWORD *a1, const xmlChar *a2)
{
  WhiteSpaceFacetValue = xmlSchemaGetWhiteSpaceFacetValue(a1);
  if (WhiteSpaceFacetValue == 2)
  {

    return xmlSchemaWhiteSpaceReplace(a2);
  }

  else if (WhiteSpaceFacetValue == 3)
  {

    return xmlSchemaCollapseString(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t xmlSchemaValidateNotation(uint64_t a1, uint64_t a2, xmlNode *a3, xmlChar *value, xmlSchemaValPtr *a5, int a6)
{
  if (a1 && !*(a1 + 40))
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaValidateNotation", "a schema is needed on the validation context", 0);
    return 0xFFFFFFFFLL;
  }

  v12 = xmlValidateQName(value, 1);
  if (!v12)
  {
    prefix = 0;
    v13 = xmlSplitQName2(value, &prefix);
    if (prefix)
    {
      v14 = v13;
      if (a1)
      {
        href = xmlSchemaLookupNamespace(a1, prefix);
        if (href)
        {
LABEL_7:
          if (xmlSchemaGetNotation(a2, v14, href))
          {
            v12 = 0;
            if (a5 && a6)
            {
              v16 = xmlStrdup(v14);
              v17 = xmlStrdup(href);
              v18 = xmlSchemaNewNOTATIONValue(v16, v17);
              *a5 = v18;
              if (v18)
              {
                v12 = 0;
              }

              else
              {
                v12 = 0xFFFFFFFFLL;
              }
            }
          }

          else
          {
            v12 = 1;
          }

          free(prefix);
          free(v14);
          return v12;
        }
      }

      else
      {
        if (!a3)
        {
          v22 = prefix;
          goto LABEL_27;
        }

        v21 = xmlSearchNs(a3->doc, a3, prefix);
        if (v21)
        {
          href = v21->href;
          if (href)
          {
            goto LABEL_7;
          }
        }
      }

      v22 = prefix;
LABEL_27:
      free(v22);
      free(v14);
      return 1;
    }

    if (!xmlSchemaGetNotation(a2, value, 0))
    {
      return 1;
    }

    v12 = 0;
    if (a5 && a6)
    {
      v19 = xmlStrdup(value);
      v20 = xmlSchemaNewNOTATIONValue(v19, 0);
      *a5 = v20;
      if (v20)
      {
        return 0;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v12;
}

uint64_t xmlSchemaValidateFacets(_DWORD *a1, uint64_t a2, uint64_t a3, xmlSchemaValType valType, xmlChar *value, xmlSchemaValPtr val, unint64_t actualLen, int a8)
{
  length = 0;
  if (*a3 == 1)
  {
    return 0;
  }

  v13 = *(a3 + 176);
  if (!v13)
  {
    i = 0;
    goto LABEL_41;
  }

  v15 = *(a3 + 88);
  if ((v15 & 0x100) != 0)
  {
    v18 = a3;
    do
    {
      v19 = *(v18 + 160);
      if (v19 == 46)
      {
        goto LABEL_14;
      }

      if ((*(v18 + 89) & 0x40) != 0)
      {
        goto LABEL_13;
      }

      v18 = *(v18 + 112);
    }

    while (v18);
    v19 = MEMORY[0xA0];
LABEL_13:
    if (v19 != 1)
    {
LABEL_14:
      WhiteSpaceFacetValue = XML_SCHEMA_WHITESPACE_COLLAPSE;
      if (v19 != 46 || *v18 != 1)
      {
LABEL_17:
        if (val)
        {
          valType = xmlSchemaGetValType(val);
          v13 = *(a3 + 176);
        }

        for (i = 0; v13; v13 = *v13)
        {
          v21 = v13[1];
          if (v21->type - 1006 >= 3)
          {
            if (v21->type - 1009 > 2)
            {
              v22 = xmlSchemaValidateFacetWhtsp(v21, WhiteSpaceFacetValue, valType, value, val, WhiteSpaceFacetValue);
            }

            else
            {
              v22 = xmlSchemaValidateLengthFacetWhtsp(v21, valType, value, val, &length, WhiteSpaceFacetValue);
            }

            v8 = v22;
            if ((v22 & 0x80000000) != 0)
            {
              v36 = "validating against a atomic type facet";
              goto LABEL_77;
            }

            if (v22)
            {
              if (!a8)
              {
                return v8;
              }

              xmlSchemaFacetErr(a1, v22, a2, value, length, a3, v13[1]);
              if (i)
              {
                i = i;
              }

              else
              {
                i = v8;
              }
            }
          }
        }

        goto LABEL_31;
      }
    }

    WhiteSpaceFacetValue = xmlSchemaGetWhiteSpaceFacetValue(a3);
    goto LABEL_17;
  }

  i = 0;
  if ((v15 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_31:
  if ((*(a3 + 88) & 0x40) == 0 || (v23 = *(a3 + 176)) == 0)
  {
LABEL_41:
    v26 = a3;
    while (1)
    {
      v27 = *(v26 + 120);
      if (v27)
      {
        break;
      }

LABEL_52:
      v26 = *(v26 + 112);
      if (!v26 || *v26 == 1)
      {
        LODWORD(v8) = 0;
        goto LABEL_60;
      }
    }

    v28 = 1;
    do
    {
      while (*v27 == 1007)
      {
        v29 = xmlSchemaAreValuesEqual(*(v27 + 56), val);
        if (v29 == 1)
        {
          LODWORD(v8) = 1;
          goto LABEL_60;
        }

        if (v29 < 0)
        {
          v36 = "validating against an enumeration facet";
          goto LABEL_77;
        }

        v28 = 0;
        v27 = *(v27 + 8);
        if (!v27)
        {
          goto LABEL_55;
        }
      }

      v27 = *(v27 + 8);
    }

    while (v27);
    if (v28)
    {
      goto LABEL_52;
    }

LABEL_55:
    v8 = 1840;
    if (!a8)
    {
      return v8;
    }

    xmlSchemaFacetErr(a1, 1840, a2, value, 0, a3, 0);
    if (i)
    {
      i = i;
    }

    else
    {
      i = 1840;
    }

LABEL_60:
    v30 = 0;
    v31 = a3;
    while (1)
    {
      v32 = *(v31 + 176);
      if (v32)
      {
        v33 = 0;
        do
        {
          v34 = v32[1];
          if (*v34 == 1006)
          {
            v35 = xmlRegexpExec(*(v34 + 64), value);
            LODWORD(v8) = v35;
            if (v35 == 1)
            {
              goto LABEL_70;
            }

            if (v35 < 0)
            {
              v36 = "validating against a pattern facet";
              goto LABEL_77;
            }

            v30 = v32[1];
            v33 = 1;
          }

          v32 = *v32;
        }

        while (v32);
        if (v33 && v8 != 1)
        {
          break;
        }
      }

LABEL_70:
      v31 = *(v31 + 112);
      if (!v31 || *v31 == 1)
      {
        return i;
      }
    }

    v8 = 1839;
    if (a8)
    {
      xmlSchemaFacetErr(a1, 1839, a2, value, 0, a3, v30);
      if (i)
      {
        return i;
      }

      else
      {
        return 1839;
      }
    }

    return v8;
  }

  while (1)
  {
    v24 = v23[1];
    if (v24->type - 1009 <= 2)
    {
      break;
    }

LABEL_40:
    v23 = *v23;
    if (!v23)
    {
      goto LABEL_41;
    }
  }

  v25 = xmlSchemaValidateListSimpleTypeFacet(v24, value, actualLen, 0);
  if ((v25 & 0x80000000) == 0)
  {
    v8 = v25;
    if (v25)
    {
      if (!a8)
      {
        return v8;
      }

      xmlSchemaFacetErr(a1, v25, a2, value, actualLen, a3, v23[1]);
      if (i)
      {
        i = i;
      }

      else
      {
        i = v8;
      }
    }

    goto LABEL_40;
  }

  v36 = "validating against a list type facet";
LABEL_77:
  xmlSchemaInternalErr2(a1, "xmlSchemaValidateFacets", v36, 0);
  return 0xFFFFFFFFLL;
}

void xmlSchemaSimpleTypeErr(_DWORD *a1, int a2, uint64_t a3, const xmlChar *a4, uint64_t a5)
{
  cur = 0;
  xmlSchemaFormatNodeForError(&cur, a1, a3);
  v10 = xmlStrcat(cur, "'%s' is not a valid value of ");
  cur = v10;
  if (xmlSchemaIsGlobalItem(a5))
  {
    v11 = "the ";
  }

  else
  {
    v11 = "the local ";
  }

  v12 = xmlStrcat(v10, v11);
  v13 = v12;
  cur = v12;
  v14 = *(a5 + 88);
  if ((v14 & 0x100) != 0)
  {
    v15 = "atomic type";
  }

  else if ((v14 & 0x40) != 0)
  {
    v15 = "list type";
  }

  else
  {
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    v15 = "union type";
  }

  v13 = xmlStrcat(v12, v15);
  cur = v13;
LABEL_11:
  if (!xmlSchemaIsGlobalItem(a5))
  {
    goto LABEL_18;
  }

  v20 = 0;
  v16 = xmlStrcat(v13, " '");
  cur = v16;
  if (*(a5 + 160))
  {
    cur = xmlStrcat(v16, "xs:");
    v17 = *(a5 + 16);
LABEL_14:
    v20 = xmlStrdup(v17);
    goto LABEL_16;
  }

  v17 = xmlSchemaFormatQName(&v20, *(a5 + 208), *(a5 + 16));
  if (!v20)
  {
    goto LABEL_14;
  }

LABEL_16:
  v18 = cur;
  v19 = xmlEscapeFormatString(&v20);
  cur = xmlStrcat(v18, v19);
  v13 = xmlStrcat(cur, "'");
  cur = v13;
  if (v20)
  {
    free(v20);
    v13 = cur;
  }

LABEL_18:
  cur = xmlStrcat(v13, ".\n");
  xmlSchemaErr4Line(a1, 2, a2, a3, 0, cur, a4, 0, 0, 0);
  if (cur)
  {
    free(cur);
  }
}

uint64_t xmlSchemaGetWhiteSpaceFacetValue(_DWORD *a1)
{
  if (*a1 == 1)
  {
    v1 = a1[40];
    if (v1 == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    if (v1 == 46)
    {
      v2 = 1;
    }

    if (v1 == 1)
    {
      return 1;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    v4 = a1[22];
    if ((v4 & 0x40) != 0)
    {
      return 3;
    }

    else
    {
      if ((v4 & 0x2000000) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      if ((v4 & 0x1000000) != 0)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      if ((v4 & 0x100) != 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = -1;
      }

      if ((v4 & 0x80) != 0)
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }
  }
}

const xmlChar *xmlSchemaLookupNamespace(uint64_t a1, xmlChar *nameSpace)
{
  if (!*(a1 + 72))
  {
    v11 = *(a1 + 280);
    if (v11)
    {
      result = xmlTextReaderLookupNamespace(v11, nameSpace);
      if (result)
      {
        v13 = result;
        v14 = xmlDictLookup(*(a1 + 272), result, -1);
        free(v13);
        return v14;
      }

      return result;
    }

    v15 = *(*(a1 + 192) + 8);
    if (v15)
    {
      doc = v15->doc;
      if (doc)
      {
        result = xmlSearchNs(doc, v15, nameSpace);
        if (result)
        {
          return *(result + 2);
        }

        return result;
      }
    }

    xmlSchemaInternalErr2(a1, "xmlSchemaLookupNamespace", "no node or node's doc available", 0);
    return 0;
  }

  v4 = *(a1 + 172);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(*(a1 + 176) + 8 * v4);
    v6 = *(v5 + 128);
    if (v6 >= 1)
    {
      break;
    }

LABEL_10:
    if (v4-- <= 0)
    {
      return 0;
    }
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v5 + 120);
    v9 = *(v8 + 8 * v7);
    if (nameSpace)
    {
      break;
    }

    if (!v9)
    {
      return *(v8 + 8 * v7 + 8);
    }

LABEL_9:
    v7 += 2;
    if (v7 >= 2 * v6)
    {
      goto LABEL_10;
    }
  }

  if (!xmlStrEqual(nameSpace, v9))
  {
    v6 = *(v5 + 128);
    goto LABEL_9;
  }

  v8 = *(v5 + 120);
  return *(v8 + 8 * v7 + 8);
}

void *xmlSchemaGetNotation(uint64_t a1, const xmlChar *a2, xmlChar *str1)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      if (!xmlStrEqual(str1, *(a1 + 8)) || (result = xmlHashLookup(*(a1 + 88), a2)) == 0)
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
            v8 = *(result[10] + 88);

            return xmlHashLookup(v8, a2);
          }
        }
      }
    }
  }

  return result;
}

void xmlSchemaFacetErr(uint64_t a1, int a2, uint64_t a3, const xmlChar *a4, uint64_t a5, _DWORD *a6, xmlSchemaFacet *a7)
{
  v52 = *MEMORY[0x1E69E9840];
  cur = 0;
  if (a3)
  {
    v14 = (a3 + 8);
LABEL_3:
    v15 = *v14 == 2;
    goto LABEL_7;
  }

  if (*a1 == 2)
  {
    v14 = *(a1 + 192);
    if (v14)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_7:
  xmlSchemaFormatNodeForError(&cur, a1, a3);
  if (a2 == 1840)
  {
    type = 1007;
  }

  else
  {
    type = a7->type;
  }

  cur = xmlStrcat(cur, "[");
  v17 = xmlStrcat(cur, "facet '");
  cur = v17;
  v18 = xmlSchemaFacetTypeToString(type);
  cur = xmlStrcat(v17, v18);
  v19 = xmlStrcat(cur, "'] ");
  cur = v19;
  if ((type - 1009) > 2)
  {
    if (type > 1003)
    {
      if (type <= 1005)
      {
        if (type == 1004)
        {
          v23 = "The value '%s' has more digits than are allowed ('%s').\n";
        }

        else
        {
          v23 = "The value '%s' has more fractional digits than are allowed ('%s').\n";
        }

        goto LABEL_56;
      }

      if (type == 1006)
      {
        v23 = "The value '%s' is not accepted by the pattern '%s'.\n";
        goto LABEL_56;
      }

      if (type == 1007)
      {
        v26 = 0;
        v41 = xmlStrcat(v19, "The value '%s' is not an element of the set {%s}.\n");
        v42 = a4;
        cur = v41;
        *__str = 0;
        while (1)
        {
          v27 = *(a6 + 14);
          WhiteSpaceFacetValue = xmlSchemaGetWhiteSpaceFacetValue(v27);
          v29 = *(a6 + 15);
          if (v29)
          {
            break;
          }

          a6 = v27;
LABEL_49:
          v34 = v42;
          if (!a6 || *a6 == 1)
          {
            goto LABEL_68;
          }
        }

        v30 = WhiteSpaceFacetValue;
        v31 = 0;
        do
        {
          if (*v29 == 1007)
          {
            if (xmlSchemaGetCanonValueWhtspExt_1(*(v29 + 56), v30, __str, 0) == -1)
            {
              xmlSchemaInternalErr2(a1, "xmlSchemaFormatFacetEnumSet", "compute the canonical lexical representation", 0);
              if (v26)
              {
                free(v26);
              }

              v40 = 0;
              v35 = a1;
              v36 = a2;
              v37 = a3;
              v24 = v41;
              v38 = v42;
              goto LABEL_66;
            }

            if (v26)
            {
              v32 = xmlStrcat(v26, ", '");
            }

            else
            {
              v32 = xmlStrdup("'");
            }

            v33 = xmlStrcat(v32, *__str);
            v26 = xmlStrcat(v33, "'");
            if (*__str)
            {
              free(*__str);
              *__str = 0;
            }

            v31 = 1;
          }

          v29 = *(v29 + 8);
        }

        while (v29);
        if (!v31)
        {
          a6 = *(a6 + 14);
          goto LABEL_49;
        }

        v34 = v42;
LABEL_68:
        xmlSchemaErr4Line(a1, 2, a2, a3, 0, v41, v34, v26, 0, 0);
        if (v26)
        {
          free(v26);
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (type > 1001)
      {
        if (type == 1002)
        {
          v23 = "The value '%s' is greater than the maximum value allowed ('%s').\n";
        }

        else
        {
          v23 = "The value '%s' must be less than '%s'.\n";
        }

        goto LABEL_56;
      }

      if (type == 1000)
      {
        v23 = "The value '%s' is less than the minimum value allowed ('%s').\n";
        goto LABEL_56;
      }

      if (type == 1001)
      {
        v23 = "The value '%s' must be greater than '%s'.\n";
LABEL_56:
        v24 = xmlStrcat(v19, v23);
        cur = v24;
        value = a7->value;
        v40 = 0;
        goto LABEL_57;
      }
    }

    if (v15)
    {
      v24 = xmlStrcat(v19, "The value '%s' is not facet-valid.\n");
      cur = v24;
      v40 = 0;
      v35 = a1;
      v36 = a2;
      v37 = a3;
      v38 = a4;
    }

    else
    {
      v24 = xmlStrcat(v19, "The value is not facet-valid.\n");
      cur = v24;
      v40 = 0;
      v35 = a1;
      v36 = a2;
      v37 = a3;
      v38 = 0;
    }

LABEL_66:
    value = 0;
    goto LABEL_58;
  }

  *__str = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  *v44 = 0;
  v45 = 0;
  v47 = 0;
  if (v15)
  {
    v20 = "The value '%s' has a length of '%s'; ";
  }

  else
  {
    v20 = "The value has a length of '%s'; ";
  }

  v46 = 0;
  cur = xmlStrcat(v19, v20);
  FacetValueAsULong = xmlSchemaGetFacetValueAsULong(a7);
  snprintf(__str, 0x18uLL, "%lu", FacetValueAsULong);
  snprintf(v44, 0x18uLL, "%lu", a5);
  if (type == 1011)
  {
    v22 = "this underruns the allowed minimum length of '%s'.\n";
  }

  else if (type == 1010)
  {
    v22 = "this exceeds the allowed maximum length of '%s'.\n";
  }

  else
  {
    v22 = "this differs from the allowed length of '%s'.\n";
  }

  v24 = xmlStrcat(cur, v22);
  cur = v24;
  if (v15)
  {
    v40 = __str;
    value = v44;
LABEL_57:
    v35 = a1;
    v36 = a2;
    v37 = a3;
    v38 = a4;
LABEL_58:
    xmlSchemaErr4Line(v35, 2, v36, v37, 0, v24, v38, value, v40, 0);
    goto LABEL_59;
  }

  xmlSchemaErr4Line(a1, 2, a2, a3, 0, v24, v44, __str, 0, 0);
LABEL_59:
  free(cur);
  v39 = *MEMORY[0x1E69E9840];
}

uint64_t xmlSchemaGetCanonValueWhtspExt_1(xmlSchemaValPtr cur, int a2, xmlChar **a3, int a4)
{
  retValue = 0;
  result = 0xFFFFFFFFLL;
  if (!cur || !a3)
  {
    return result;
  }

  Next = xmlSchemaValueGetNext(cur);
  *a3 = 0;
  while (1)
  {
    ValType = xmlSchemaGetValType(cur);
    v11 = ValType;
    if (ValType <= XML_SCHEMAS_ANYSIMPLETYPE && ((1 << ValType) & 0x400000000006) != 0)
    {
      AsString = xmlSchemaValueGetAsString(cur);
      if (!AsString)
      {
        if (*a3 | Next)
        {
          goto LABEL_33;
        }

LABEL_30:
        v19 = "";
LABEL_31:
        v18 = xmlStrdup(v19);
LABEL_32:
        *a3 = v18;
        goto LABEL_33;
      }

      v13 = AsString;
      if (a2 == 2)
      {
        v14 = xmlSchemaWhiteSpaceReplace(AsString);
      }

      else
      {
        if (a2 != 3)
        {
          v14 = retValue;
LABEL_22:
          if (v14)
          {
            v13 = v14;
          }

          goto LABEL_24;
        }

        v14 = xmlSchemaCollapseString(AsString);
      }

      retValue = v14;
      goto LABEL_22;
    }

    if (xmlSchemaGetCanonValue(cur, &retValue) == -1)
    {
      break;
    }

    v13 = retValue;
    if (a4)
    {
      if (v11 == XML_SCHEMAS_DECIMAL)
      {
        v15 = xmlStrlen(retValue);
        v13 = retValue;
        if (v15 >= 3)
        {
          v16 = &retValue[v15];
          if (*(v16 - 1) == 48 && *(v16 - 2) == 46)
          {
            *(v16 - 2) = 0;
            v13 = retValue;
          }
        }
      }
    }

LABEL_24:
    if (*a3)
    {
      if (v13)
      {
        v17 = xmlStrcat(*a3, " ");
        *a3 = v17;
        v18 = xmlStrcat(v17, v13);
        goto LABEL_32;
      }
    }

    else
    {
      if (v13)
      {
        v19 = v13;
        goto LABEL_31;
      }

      if (!Next)
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    if (retValue)
    {
      free(retValue);
      retValue = 0;
    }

    result = xmlSchemaValueGetNext(cur);
    cur = result;
    if (!result)
    {
      return result;
    }
  }

  if (retValue)
  {
    free(retValue);
  }

  if (*a3)
  {
    free(*a3);
  }

  if (retValue)
  {
    free(retValue);
  }

  return 0xFFFFFFFFLL;
}

void *xmlFreeIDCHashEntry(void *result)
{
  if (result)
  {
    do
    {
      v1 = *result;
      free(result);
      result = v1;
    }

    while (v1);
  }

  return result;
}

void xmlSchemaIDCFreeBinding(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    xmlSchemaItemListFree(v3);
  }

  free(a1);
}

uint64_t xmlSchemaValidatorPushElem(uint64_t a1)
{
  v2 = *(a1 + 172);
  v3 = *(a1 + 184);
  if (v2 > v3)
  {
    v4 = "inconsistent depth encountered";
LABEL_3:
    xmlSchemaInternalErr2(a1, "xmlSchemaGetFreshElemInfo", v4, 0);
LABEL_24:
    *(a1 + 192) = 0;
    xmlSchemaInternalErr2(a1, "xmlSchemaValidatorPushElem", "calling xmlSchemaGetFreshElemInfo()", 0);
    return 0xFFFFFFFFLL;
  }

  if (v3 <= v2)
  {
    if (v3 < 1)
    {
      v8 = 10;
    }

    else
    {
      if (v3 > 0x3B9AC9FF)
      {
        v6 = *(a1 + 108) + 1;
        *(a1 + 104) = 1818;
        *(a1 + 108) = v6;
        v7 = "allocating the element info array";
        goto LABEL_23;
      }

      if (1000000000 - ((v3 + 1) >> 1) >= v3)
      {
        v8 = v3 + ((v3 + 1) >> 1);
      }

      else
      {
        v8 = 1000000000;
      }
    }

    v9 = malloc_type_realloc(*(a1 + 176), 8 * v8, 0x2004093837F09uLL);
    if (!v9)
    {
      v12 = *(a1 + 108) + 1;
      *(a1 + 104) = 1818;
      *(a1 + 108) = v12;
      v7 = "re-allocating the element info array";
      goto LABEL_23;
    }

    *(a1 + 176) = v9;
    *(a1 + 184) = v8;
    if (v3 < v8)
    {
      do
      {
        *(*(a1 + 176) + 8 * v3++) = 0;
      }

      while (v8 != v3);
    }

LABEL_18:
    v5 = malloc_type_malloc(0x90uLL, 0x10F00401135C373uLL);
    if (v5)
    {
      *(*(a1 + 176) + 8 * *(a1 + 172)) = v5;
      goto LABEL_20;
    }

    v11 = *(a1 + 108) + 1;
    *(a1 + 104) = 1818;
    *(a1 + 108) = v11;
    v7 = "allocating an element info";
LABEL_23:
    __xmlSimpleError(0x11u, 2, 0, 0, v7);
    goto LABEL_24;
  }

  v5 = *(*(a1 + 176) + 8 * v2);
  if (!v5)
  {
    goto LABEL_18;
  }

  if (v5[3])
  {
    v4 = "elem info has not been cleared";
    goto LABEL_3;
  }

LABEL_20:
  v10 = 0;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  *v5 = 1;
  *(v5 + 22) = *(a1 + 172);
  *(a1 + 192) = v5;
  *(a1 + 296) = 0;
  return v10;
}

uint64_t xmlSchemaValidatorPushAttribute(_DWORD *a1, const xmlChar *a2, int a3, const xmlChar *a4, const xmlChar *a5, const xmlChar *a6)
{
  FreshAttrInfo = xmlSchemaGetFreshAttrInfo(a1);
  if (!FreshAttrInfo)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaPushAttribute", "calling xmlSchemaGetFreshAttrInfo()", 0);
    return 0xFFFFFFFFLL;
  }

  v13 = FreshAttrInfo;
  FreshAttrInfo[1] = a2;
  *(FreshAttrInfo + 4) = a3;
  *(FreshAttrInfo + 22) = 1;
  FreshAttrInfo[3] = a4;
  FreshAttrInfo[4] = a5;
  if (a5)
  {
    if (xmlStrEqual(a4, "nil"))
    {
      if (!xmlStrEqual(v13[4], "http://www.w3.org/2001/XMLSchema-instance"))
      {
        goto LABEL_19;
      }

      v14 = 2;
    }

    else if (xmlStrEqual(a4, "type"))
    {
      if (!xmlStrEqual(v13[4], "http://www.w3.org/2001/XMLSchema-instance"))
      {
        goto LABEL_19;
      }

      v14 = 1;
    }

    else if (xmlStrEqual(a4, "schemaLocation"))
    {
      if (!xmlStrEqual(v13[4], "http://www.w3.org/2001/XMLSchema-instance"))
      {
        goto LABEL_19;
      }

      v14 = 3;
    }

    else
    {
      v16 = xmlStrEqual(a4, "noNamespaceSchemaLocation");
      v17 = v13[4];
      if (v16)
      {
        if (!xmlStrEqual(v17, "http://www.w3.org/2001/XMLSchema-instance"))
        {
          goto LABEL_19;
        }

        v14 = 4;
      }

      else
      {
        if (!xmlStrEqual(v17, "http://www.w3.org/2000/xmlns/"))
        {
          goto LABEL_19;
        }

        v14 = 5;
      }
    }

    *(v13 + 23) = v14;
  }

LABEL_19:
  v13[5] = a6;
  *(v13 + 16) |= 2u;
  result = 0;
  if (*(v13 + 23))
  {
    *(v13 + 22) = 17;
  }

  return result;
}

uint64_t xmlSchemaValidateElem(unsigned int *data)
{
  v1 = data;
  v97 = *MEMORY[0x1E69E9840];
  v2 = data[76];
  if (v2 != -1 && data[43] >= v2)
  {
    v29 = "xmlSchemaValidateElem";
    v30 = "in skip-state";
    goto LABEL_231;
  }

  if (!data[42])
  {
    goto LABEL_67;
  }

  v3 = data[74];
  if (v3 < 1)
  {
    goto LABEL_66;
  }

  v4 = *(data + 36);
  v5 = v4;
  v6 = data[74];
  while (1)
  {
    v7 = *v5;
    if (*(*v5 + 92) == 3)
    {
      break;
    }

    ++v5;
    if (!--v6)
    {
      while (1)
      {
        v7 = *v4;
        if (*(*v4 + 92) == 4)
        {
          goto LABEL_11;
        }

        ++v4;
        if (!--v3)
        {
          goto LABEL_66;
        }
      }
    }
  }

LABEL_11:
  v88 = 0;
  v8 = 0;
  v9 = *(v7 + 40);
  while (1)
  {
    if (*(v7 + 92) == 3)
    {
      while (1)
      {
        v10 = *v9;
        if (v10 > 0x20 || ((1 << v10) & 0x100002600) == 0)
        {
          break;
        }

        ++v9;
      }

      v12 = 0;
      while (v10 > 0x20u || ((1 << v10) & 0x100002601) == 0)
      {
        LOBYTE(v10) = v9[++v12];
      }

      if (!v12)
      {
        goto LABEL_64;
      }

      v13 = &v9[v12];
      v88 = xmlDictLookup(*(*(v1 + 5) + 120), v9, v12);
      v9 = v13;
    }

    while (1)
    {
      v14 = *v9;
      if (v14 > 0x20 || ((1 << v14) & 0x100002600) == 0)
      {
        break;
      }

      ++v9;
    }

    v16 = 0;
    while (v14 > 0x20u || ((1 << v14) & 0x100002601) == 0)
    {
      LOBYTE(v14) = v9[++v16];
    }

    if (!v16)
    {
      break;
    }

    v17 = xmlDictLookup(*(*(v1 + 5) + 120), v9, v16);
    v18 = *(v1 + 5);
    v19 = *(v7 + 8);
    values[0] = 0;
    if (!v1 || !v18)
    {
      goto LABEL_105;
    }

    v20 = *(v1 + 20);
    if (!v20)
    {
      v51 = "no parser context available";
      v52 = v1;
      goto LABEL_104;
    }

    if (!*(v20 + 48))
    {
      v51 = "no constructor";
      v52 = *(v1 + 20);
LABEL_104:
      xmlSchemaInternalErr2(v52, "xmlSchemaAssembleByLocation", v51, 0);
LABEL_105:
      v29 = "xmlSchemaAssembleByXSI";
      v30 = "assembling schemata";
      goto LABEL_231;
    }

    v21 = v1;
    v22 = xmlSchemaBuildAbsoluteURI(*(v20 + 152), v17, v19);
    v23 = xmlSchemaAddSchemaDoc(v20, 1, v22, 0, 0, 0, v19, 0, v88, values);
    if (v23)
    {
      goto LABEL_39;
    }

    v24 = values[0];
    if (values[0])
    {
      v25 = *(v20 + 48);
      if (!*(v25 + 32))
      {
        *(v25 + 32) = values[0];
      }

      v26 = *(v24 + 4);
      v1 = v21;
      if (v26 && !*(v24 + 13))
      {
        *(v20 + 32) = 0;
        *(v20 + 88) = v26;
        v23 = xmlSchemaParseNewDocWithContext(v20, v18, v24);
        if (v23)
        {
          if (v23 == -1)
          {
            *(v20 + 88) = 0;
            goto LABEL_105;
          }

          v27 = *(v20 + 36);
          if (!v27)
          {
LABEL_56:
            xmlSchemaFixupComponents(v20, values[0]);
            v23 = *(v20 + 32);
            if (v23 && !v21[26])
            {
              v21[26] = v23;
            }

            v27 = *(v20 + 36);
          }
        }

        else
        {
          v27 = *(v20 + 36);
          if (!v27)
          {
            goto LABEL_56;
          }

          v23 = *(v20 + 32);
        }

        v21[27] += v27;
        *(v20 + 88) = 0;
LABEL_39:
        v1 = v21;
        v8 = v23;
        if (v23 == -1)
        {
          goto LABEL_105;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v28 = v22;
      v1 = v21;
      xmlSchemaCustomWarning(v21, 1879, v19, "The document at location '%s' could not be acquired", v28, 0, 0);
    }

    v8 = 0;
LABEL_52:
    v9 += v16;
    if (!*v9)
    {
      goto LABEL_64;
    }
  }

  if (*(v7 + 92) == 3)
  {
    xmlSchemaCustomWarning(v1, 1879, *(v7 + 8), "The value must consist of tuples: the target namespace name and the document's URI", 0, 0, 0);
  }

LABEL_64:
  if (v8 == -1)
  {
    goto LABEL_232;
  }

  if (v8)
  {
    v1[76] = 0;
    goto LABEL_232;
  }

LABEL_66:
  xmlHashScan(*(*(v1 + 5) + 96), xmlSchemaAugmentImportedIDC, v1);
LABEL_67:
  v31 = v1[43];
  if (v31 < 1)
  {
    Elem = xmlSchemaGetElem(*(v1 + 5), *(*(v1 + 24) + 24), *(*(v1 + 24) + 32));
    v40 = *(v1 + 24);
    *(v40 + 80) = Elem;
    if (!Elem)
    {
      v8 = 1845;
      xmlSchemaCustomErr4(v1, 1845, 0, 0, "No matching global declaration available for the validation root", 0, 0, 0, 0);
      goto LABEL_218;
    }

    v41 = Elem;
    goto LABEL_122;
  }

  v32 = *(*(v1 + 22) + 8 * v31 - 8);
  v33 = *(v32 + 64);
  if ((v33 & 0x20) != 0)
  {
    v33 &= ~0x20u;
    *(v32 + 64) = v33;
  }

  if ((v33 & 4) != 0)
  {
    *(v1 + 24) = v32;
    v8 = 1848;
    xmlSchemaCustomErr4(v1, 1848, 0, 0, "Neither character nor element content is allowed, because the element was 'nilled'", 0, 0, 0, 0);
    goto LABEL_81;
  }

  v34 = *(v32 + 56);
  if (*(v34 + 160) != 45)
  {
    v44 = *(v34 + 92);
    if (v44 > 3)
    {
      if (v44 != 4 && v44 != 6)
      {
        goto LABEL_119;
      }

      *(v1 + 24) = v32;
      if (*v34 == 5)
      {
        xmlSchemaCustomErr4(v1, 1842, 0, 0, "Element content is not allowed, because the content type is a simple type definition", 0, 0, 0, 0);
      }

      else
      {
        xmlSchemaCustomErr4(v1, 1828, 0, 0, "Element content is not allowed, because the type definition is simple", 0, 0, 0, 0);
      }

      v42 = v1[43];
      v43 = *(*(v1 + 22) + 8 * v42);
      *(v1 + 24) = v43;
      v8 = v1[26];
      goto LABEL_82;
    }

    if ((v44 - 2) < 2)
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      *values = 0u;
      nbval = 10;
      terminal = 0;
      nbneg = 0;
      v45 = *(v34 + 200);
      if (!v45)
      {
        v49 = "type has elem content but no content model";
        goto LABEL_116;
      }

      if ((v33 & 0x100) != 0)
      {
        v49 = "validating elem, but elem content is already invalid";
      }

      else
      {
        v46 = *(v32 + 112);
        if (v46)
        {
LABEL_92:
          v48 = xmlRegExecPushString2(v46, *(*(v1 + 24) + 24), *(*(v1 + 24) + 32), *(v1 + 24));
          if (v1[26] == 1818)
          {
            v49 = "calling xmlRegExecPushString2()";
            goto LABEL_116;
          }

          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_119;
          }

          xmlRegExecErrInfo(v46, 0, &nbval, &nbneg, values, &terminal);
          xmlSchemaComplexTypeErr(v1, "This element is not expected", nbval, nbneg, values);
          v8 = v1[26];
          LODWORD(v42) = v1[43];
          v43 = *(v1 + 24);
          goto LABEL_82;
        }

        v47 = xmlRegNewExecCtxt(v45, xmlSchemaVContentModelCallback, v1);
        if (v47)
        {
          v46 = v47;
          *(v32 + 112) = v47;
          goto LABEL_92;
        }

        v49 = "failed to create a regex context";
      }

LABEL_116:
      xmlSchemaInternalErr2(v1, "xmlSchemaValidateChildElem", v49, 0);
      goto LABEL_117;
    }

    if (v44 != 1)
    {
      goto LABEL_119;
    }

    *(v1 + 24) = v32;
    v8 = 1841;
    xmlSchemaCustomErr4(v1, 1841, 0, 0, "Element content is not allowed, because the content type is empty", 0, 0, 0, 0);
LABEL_81:
    v42 = v1[43];
    v43 = *(*(v1 + 22) + 8 * v42);
    *(v1 + 24) = v43;
LABEL_82:
    v1[76] = v42;
    *(v43 + 64) |= 0x200u;
    *(v32 + 64) |= 0x100u;
    if (v8)
    {
      goto LABEL_83;
    }

    goto LABEL_119;
  }

  v35 = xmlSchemaGetElem(*(v1 + 5), *(*(v1 + 24) + 24), *(*(v1 + 24) + 32));
  v36 = *(v1 + 24);
  *(v36 + 80) = v35;
  if (v35)
  {
    goto LABEL_119;
  }

  v37 = v1[74];
  if (v37 < 1)
  {
LABEL_77:
    *(*(v1 + 24) + 56) = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
    goto LABEL_119;
  }

  v38 = *(v1 + 36);
  while (*(*v38 + 92) != 1)
  {
    ++v38;
    if (!--v37)
    {
      goto LABEL_77;
    }
  }

  v53 = xmlSchemaProcessXSIType(v1, *v38, v36 + 56, 0);
  if (!v53)
  {
LABEL_119:
    if (v1[43] == v1[76])
    {
LABEL_120:
      v8 = 0;
      goto LABEL_232;
    }

    v40 = *(v1 + 24);
    v41 = *(v40 + 80);
    if (!v41)
    {
      if (!*(v40 + 56))
      {
        v29 = "xmlSchemaValidateElem";
        v30 = "the child element was valid but neither the declaration nor the type was set";
        goto LABEL_231;
      }

      goto LABEL_205;
    }

LABEL_122:
    if (*v41 != 2)
    {
      goto LABEL_129;
    }

    if (*(v41 + 40) == 1)
    {
      v8 = 0;
      goto LABEL_218;
    }

    BuiltInType = xmlSchemaGetElem(*(v1 + 5), *(v40 + 24), *(v40 + 32));
    if (BuiltInType)
    {
      v55 = 80;
LABEL_127:
      *(*(v1 + 24) + v55) = BuiltInType;
      goto LABEL_128;
    }

    if (*(v41 + 40) == 3)
    {
      xmlSchemaCustomErr4(v1, 1845, 0, 0, "No matching global element declaration available, but demanded by the strict wildcard", 0, 0, 0, 0);
      v8 = v1[26];
      if (v8)
      {
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_218;
        }

        goto LABEL_159;
      }
    }

    else
    {
      v62 = v1[74];
      if (v62 < 1)
      {
LABEL_155:
        BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_ANYTYPE);
        v55 = 56;
        goto LABEL_127;
      }

      v63 = *(v1 + 36);
      while (*(*v63 + 92) != 1)
      {
        ++v63;
        if (!--v62)
        {
          goto LABEL_155;
        }
      }

      if (xmlSchemaProcessXSIType(v1, *v63, *(v1 + 24) + 56, 0) == -1)
      {
        xmlSchemaInternalErr2(v1, "xmlSchemaValidateElemWildcard", "calling xmlSchemaProcessXSIType() to process the attribute 'xsi:nil'", 0);
LABEL_159:
        v29 = "xmlSchemaValidateElem";
        v30 = "calling xmlSchemaValidateElemWildcard()";
        goto LABEL_231;
      }
    }

LABEL_128:
    v40 = *(v1 + 24);
    v41 = *(v40 + 80);
    if (*v41 != 14)
    {
      *(v40 + 80) = 0;
      goto LABEL_205;
    }

LABEL_129:
    if ((*(v41 + 88) & 0x10) != 0)
    {
      xmlSchemaCustomErr4(v1, 1846, 0, 0, "The element declaration is abstract", 0, 0, 0, 0);
      v8 = v1[26];
      if (v8)
      {
        if ((v8 & 0x80000000) == 0)
        {
          goto LABEL_218;
        }

        goto LABEL_230;
      }

      v40 = *(v1 + 24);
    }

    else
    {
      v56 = *(v41 + 56);
      if (!v56)
      {
        goto LABEL_216;
      }

      v57 = v1[74];
      if (v57 >= 1)
      {
        v58 = *(v1 + 36);
        while (1)
        {
          v59 = *v58;
          if (*(*v58 + 92) == 2)
          {
            break;
          }

          ++v58;
          if (!--v57)
          {
            goto LABEL_168;
          }
        }

        *(v1 + 24) = v59;
        v60 = xmlSchemaGetBuiltInType(XML_SCHEMAS_BOOLEAN);
        v61 = xmlSchemaVCheckCVCSimpleType(v1, 0, v60, *(v59 + 40), (v59 + 48), 1u, 0, 0);
        *(v1 + 24) = *(*(v1 + 22) + 8 * v1[43]);
        if (v61 < 0)
        {
          v64 = "xmlSchemaValidateElemDecl";
          v65 = "calling xmlSchemaVCheckCVCSimpleType() to validate the attribute 'xsi:nil'";
          goto LABEL_229;
        }

        if (!v61)
        {
          if (*(v41 + 88))
          {
            if (xmlSchemaValueGetAsBoolean(*(v59 + 48)))
            {
              if ((*(v41 + 88) & 8) != 0 && *(v41 + 144))
              {
                xmlSchemaCustomErr4(v1, 1849, 0, 0, "The element cannot be 'nilled' because there is a fixed value constraint defined for it", 0, 0, 0, 0);
              }

              else
              {
                *(*(v1 + 24) + 64) |= 4u;
              }
            }
          }

          else
          {
            xmlSchemaCustomErr4(v1, 1847, 0, 0, "The element is not 'nillable'", 0, 0, 0, 0);
          }
        }

LABEL_168:
        v66 = v1[74];
        if (v66 >= 1)
        {
          v67 = *(v1 + 36);
          while (1)
          {
            v68 = *v67;
            if (*(*v67 + 92) == 1)
            {
              break;
            }

            ++v67;
            if (!--v66)
            {
              goto LABEL_176;
            }
          }

          values[0] = 0;
          if (xmlSchemaProcessXSIType(v1, v68, values, v41) == -1)
          {
            v64 = "xmlSchemaValidateElemDecl";
            v65 = "calling xmlSchemaProcessXSIType() to process the attribute 'xsi:type'";
LABEL_229:
            xmlSchemaInternalErr2(v1, v64, v65, 0);
LABEL_230:
            v29 = "xmlSchemaValidateElem";
            v30 = "calling xmlSchemaValidateElemDecl()";
            goto LABEL_231;
          }

          v69 = values[0];
          if (values[0])
          {
            *(*(v1 + 24) + 64) |= 8u;
            v56 = v69;
          }
        }
      }

LABEL_176:
      v70 = *(v41 + 192);
      v40 = *(v1 + 24);
      if (v70)
      {
        if (*(v40 + 104))
        {
          v64 = "xmlSchemaIDCRegisterMatchers";
          v65 = "The chain of IDC matchers is expected to be empty";
        }

        else
        {
          v71 = 0;
LABEL_180:
          if (*v70 == 24 && (v72 = *(*(v70 + 72) + 8)) != 0)
          {
            *(*(v1 + 24) + 136) = 1;
            v73 = (v1 + 50);
            while (1)
            {
              v73 = *v73;
              if (!v73)
              {
                break;
              }

              if (*(v73 + 1) == v72)
              {
                v74 = *(v73 + 4);
                v75 = v1[43];
                if (v74 == -1 || v75 < v74)
                {
                  *(v73 + 4) = v75;
                }

                goto LABEL_191;
              }
            }
          }

          else
          {
LABEL_191:
            v77 = (v1 + 50);
            while (1)
            {
              v77 = *v77;
              if (!v77)
              {
                break;
              }

              if (*(v77 + 1) == v70)
              {
                v78 = *(v1 + 28);
                if (v78)
                {
                  *(v1 + 28) = *(v78 + 16);
                  *(v78 + 16) = 0;
                }

                else
                {
                  v79 = malloc_type_malloc(0x48uLL, 0x10A00406C79651AuLL);
                  if (!v79)
                  {
                    v87 = v1[27] + 1;
                    v1[26] = 1818;
                    v1[27] = v87;
                    __xmlSimpleError(0x11u, 2, 0, 0, "allocating an IDC matcher");
                    goto LABEL_230;
                  }

                  v78 = v79;
                  v79[8] = 0;
                  *(v79 + 2) = 0u;
                  *(v79 + 3) = 0u;
                  *v79 = 0u;
                  *(v79 + 1) = 0u;
                }

                if (v71)
                {
                  v80 = (v71 + 8);
                }

                else
                {
                  v80 = (*(v1 + 24) + 104);
                }

                *v80 = v78;
                *v78 = 0;
                *(v78 + 4) = v1[43];
                *(v78 + 24) = v77;
                *(v78 + 32) = **(v77 + 1);
                if (xmlSchemaIDCAddStateObject(v1, v78, *(v70 + 48), 1) != -1)
                {
                  v70 = *(v70 + 16);
                  v71 = v78;
                  if (v70)
                  {
                    goto LABEL_180;
                  }

                  v40 = *(v1 + 24);
                  goto LABEL_204;
                }

                goto LABEL_230;
              }
            }
          }

          v64 = "xmlSchemaIDCRegisterMatchers";
          v65 = "Could not find an augmented IDC item for an IDC definition";
        }

        goto LABEL_229;
      }

LABEL_204:
      *(v40 + 56) = v56;
    }

LABEL_205:
    v81 = *(v40 + 56);
    if (v81)
    {
      if ((*(v81 + 90) & 0x10) != 0)
      {
        *(v40 + 64) |= 0x400u;
        v8 = 1876;
        xmlSchemaCustomErr4(v1, 1876, 0, 0, "The type definition is abstract", 0, 0, 0, 0);
        goto LABEL_218;
      }

      if (*(v1 + 26))
      {
        v82 = xmlSchemaXPathEvaluate(v1, 1);
        v83 = *(v1 + 24);
        *(v83 + 140) = 1;
        if (v82 == -1)
        {
          v29 = "xmlSchemaValidateElem";
          v30 = "calling xmlSchemaXPathEvaluate()";
          goto LABEL_231;
        }

        v81 = *(v83 + 56);
      }

      if (*v81 == 5 || *(v81 + 160) == 45)
      {
        if (v1[74] || *(v81 + 216))
        {
          v84 = xmlSchemaVAttributesComplex(v1) == -1;
LABEL_224:
          if (v1[74])
          {
            xmlSchemaClearAttrInfos(v1);
          }

          if (!v84)
          {
            goto LABEL_120;
          }

          v29 = "xmlSchemaValidateElem";
          v30 = "calling attributes validation";
LABEL_231:
          xmlSchemaInternalErr2(v1, v29, v30, 0);
          v8 = 0xFFFFFFFFLL;
          goto LABEL_232;
        }
      }

      else if (v1[74])
      {
        xmlSchemaVAttributesSimple(v1);
      }

      v84 = 0;
      goto LABEL_224;
    }

    *(v40 + 64) |= 0x400u;
LABEL_216:
    v8 = 1875;
    xmlSchemaCustomErr4(v1, 1875, 0, 0, "The type definition is absent", 0, 0, 0, 0);
    goto LABEL_218;
  }

  v8 = v53;
  if (v53 == -1)
  {
    v49 = "calling xmlSchemaProcessXSIType() to process the attribute 'xsi:nil'";
    goto LABEL_116;
  }

LABEL_83:
  if ((v8 & 0x80000000) != 0)
  {
LABEL_117:
    v29 = "xmlSchemaValidateElem";
    v30 = "calling xmlSchemaStreamValidateChildElement()";
    goto LABEL_231;
  }

LABEL_218:
  v1[76] = v1[43];
LABEL_232:
  v85 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t xmlSchemaVPushText(uint64_t a1, int a2, xmlChar *str2, int len, int a5)
{
  v6 = *(a1 + 192);
  v7 = *(v6 + 64);
  if ((v7 & 4) != 0)
  {
    xmlSchemaCustomErr4(a1, 1848, 0, 0, "Neither character nor element content is allowed because the element is 'nilled'", 0, 0, 0, 0);
    return *(a1 + 104);
  }

  v8 = str2;
  v9 = *(*(v6 + 56) + 92);
  if (v9 == 2)
  {
    if (a2 == 3)
    {
      if (!str2)
      {
        return 0;
      }

      if (len < 0)
      {
        while (1)
        {
          v22 = *v8;
          if (v22 > 0x20)
          {
            break;
          }

          if (((1 << v22) & 0x100002600) == 0)
          {
            if (*v8)
            {
              break;
            }

            return 0;
          }

          ++v8;
        }
      }

      else
      {
        result = 0;
        if (!len)
        {
          return result;
        }

        v11 = *str2;
        if (!*str2)
        {
          return result;
        }

        v12 = len - 1;
        v13 = str2 + 1;
        while (v11 <= 0x20 && ((1 << v11) & 0x100002600) != 0)
        {
          result = 0;
          v14 = *v13++;
          v11 = v14;
          v16 = v12-- != 0;
          if (!v11 || !v16)
          {
            return result;
          }
        }
      }
    }

    xmlSchemaCustomErr4(a1, 1843, 0, 0, "Character content other than whitespace is not allowed because the content type is 'element-only'", 0, 0, 0, 0);
    return *(a1 + 104);
  }

  if (v9 == 1)
  {
    xmlSchemaCustomErr4(a1, 1841, 0, 0, "Character content is not allowed, because the content type is empty", 0, 0, 0, 0);
    return *(a1 + 104);
  }

  if (!str2)
  {
    return 0;
  }

  if (!*str2)
  {
    return 0;
  }

  if (v9 == 3)
  {
    v17 = *(v6 + 80);
    if (!v17 || !*(v17 + 144))
    {
      return 0;
    }
  }

  if (*(v6 + 40))
  {
    if (len < 0)
    {
      len = xmlStrlen(str2);
      v6 = *(a1 + 192);
      v7 = *(v6 + 64);
    }

    v18 = *(v6 + 40);
    if ((v7 & 2) != 0)
    {
      v24 = xmlStrncat(v18, v8, len);
      result = 0;
      *(*(a1 + 192) + 40) = v24;
      return result;
    }

    v19 = xmlStrncatNew(v18, v8, len);
LABEL_32:
    v20 = v19;
    result = 0;
    v21 = *(a1 + 192);
    *(v21 + 40) = v20;
    *(v21 + 64) |= 2u;
    return result;
  }

  if (a5 == 3)
  {
    if (len == -1)
    {
      v19 = xmlStrdup(str2);
    }

    else
    {
      v19 = xmlStrndup(str2, len);
    }

    goto LABEL_32;
  }

  result = 0;
  *(v6 + 40) = str2;
  if (a5 == 2)
  {
    v23 = v7 | 2;
  }

  else
  {
    v23 = v7 & 0xFFFFFFF9;
  }

  *(v6 + 64) = v23;
  return result;
}

uint64_t xmlSchemaValidatorPopElem(unsigned int *data)
{
  v179 = *MEMORY[0x1E69E9840];
  v2 = *(data + 24);
  if (data[74])
  {
    xmlSchemaClearAttrInfos(data);
  }

  v3 = *(v2 + 64);
  if ((v3 & 0x200) != 0)
  {
    v4 = 0;
    data[76] = data[43] - 1;
    goto LABEL_24;
  }

  v4 = 0;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_24;
  }

  v5 = *(v2 + 56);
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = *(v5 + 92);
  if ((v6 & 0xFFFFFFFE) != 2 || *(v5 + 160) == 45)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((v3 & 0x100) != 0)
  {
    v4 = 0;
    goto LABEL_330;
  }

  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  *name = 0u;
  LODWORD(v173) = 0;
  nbneg = 0;
  LODWORD(v172) = 10;
  v135 = *(v2 + 112);
  if (!v135)
  {
    v135 = xmlRegNewExecCtxt(*(v5 + 200), xmlSchemaVContentModelCallback, data);
    *(v2 + 112) = v135;
    if (!v135)
    {
      v133 = "failed to create a regex context";
      goto LABEL_298;
    }

    v3 = *(v2 + 64);
  }

  if ((v3 & 4) != 0)
  {
    goto LABEL_309;
  }

  xmlRegExecNextValues(v135, &v172, &nbneg, name, &v173);
  v136 = xmlRegExecPushString(*(v2 + 112), 0, 0);
  if (v136 < 0)
  {
    v137 = *(v2 + 64);
LABEL_328:
    *(v2 + 64) = v137 | 0x100;
    xmlSchemaComplexTypeErr(data, "Missing child element(s)", v172, nbneg, name);
    v4 = 1;
    goto LABEL_329;
  }

  if (!v136)
  {
    v137 = *(v2 + 64);
    if ((v137 & 4) == 0)
    {
      goto LABEL_328;
    }
  }

LABEL_309:
  v4 = 0;
LABEL_329:
  v6 = *(*(v2 + 56) + 92);
LABEL_330:
  if (v6 == 2)
  {
    goto LABEL_24;
  }

LABEL_9:
  v7 = *(data + 17);
  if (v7)
  {
    xmlSchemaFreeValue(v7);
    *(data + 17) = 0;
  }

  v8 = *(v2 + 80);
  if (!v8)
  {
    v131 = *(v2 + 56);
    if (*v131 != 4 && (*v131 != 1 || *(v131 + 160) == 45))
    {
      if ((*(v131 + 92) | 2) != 6)
      {
        goto LABEL_24;
      }

      v131 = *(v131 + 192);
    }

    v4 = xmlSchemaVCheckINodeDataType(data, v2, v131, *(v2 + 40));
    goto LABEL_296;
  }

  v9 = *(v8 + 144);
  v10 = *(v2 + 64);
  if (!v9 || (*(v2 + 64) & 0x24) != 0x20)
  {
    if ((v10 & 4) != 0)
    {
      goto LABEL_24;
    }

    v132 = *(v2 + 56);
    if (*v132 != 4 && (*v132 != 1 || *(v132 + 160) == 45))
    {
      if ((*(v132 + 92) | 2) != 6)
      {
        goto LABEL_295;
      }

      v132 = *(v132 + 192);
    }

    v4 = xmlSchemaVCheckINodeDataType(data, v2, v132, *(v2 + 40));
LABEL_295:
    if (!v4)
    {
      v142 = *(v2 + 80);
      v143 = *(v142 + 144);
      if (!v143 || (*(v142 + 88) & 8) == 0)
      {
        goto LABEL_336;
      }

      if ((*(v2 + 64) & 0x80) != 0)
      {
        v4 = 1856;
        xmlSchemaCustomErr4(data, 1856, 0, 0, "The content must not contain element nodes since there is a fixed value constraint", 0, 0, 0, 0);
        goto LABEL_24;
      }

      v144 = *(*(v2 + 56) + 92);
      if (v144 == 6 || v144 == 4)
      {
        if (xmlStrEqual(*(v2 + 40), v143))
        {
          goto LABEL_336;
        }

        v145 = *(v2 + 40);
        v146 = *(*(v2 + 80) + 144);
        v147 = "The actual value '%s' does not match the fixed value constraint '%s'";
        v4 = 1858;
        v148 = data;
        v149 = 1858;
      }

      else
      {
        if (v144 != 3 || xmlStrEqual(*(v2 + 40), v143))
        {
          goto LABEL_336;
        }

        v145 = *(v2 + 40);
        v146 = *(*(v2 + 80) + 144);
        v147 = "The initial value '%s' does not match the fixed value constraint '%s'";
        v4 = 1857;
        v148 = data;
        v149 = 1857;
      }

      xmlSchemaCustomErr4(v148, v149, 0, 0, v147, v145, v146, 0, 0);
      goto LABEL_24;
    }

LABEL_296:
    if (v4 < 0)
    {
      v133 = "calling xmlSchemaVCheckCVCSimpleType()";
      goto LABEL_298;
    }

    goto LABEL_24;
  }

  if ((v10 & 8) == 0)
  {
    v11 = *(v2 + 56);
    if (*v11 != 4 && (*v11 != 1 || *(v11 + 160) == 45))
    {
      if ((*(v11 + 92) | 2) != 6)
      {
        goto LABEL_21;
      }

      v11 = *(v11 + 192);
    }

    v4 = xmlSchemaVCheckINodeDataType(data, v2, v11, v9);
LABEL_21:
    if (!v4)
    {
LABEL_315:
      if ((data[37] & 1) == 0 || !*(v2 + 8))
      {
        goto LABEL_336;
      }

      v139 = xmlSchemaNormalizeValue(*(v2 + 56), *(*(v2 + 80) + 144));
      if (v139)
      {
        v140 = v139;
        v141 = xmlNewText(v139);
        free(v140);
      }

      else
      {
        v141 = xmlNewText(*(*(v2 + 80) + 144));
      }

      if (v141)
      {
        xmlAddChild(*(v2 + 8), v141);
LABEL_336:
        v4 = 0;
        goto LABEL_24;
      }

      v133 = "calling xmlNewText()";
LABEL_298:
      xmlSchemaInternalErr2(data, "xmlSchemaValidatorPopElem", v133, 0);
      goto LABEL_299;
    }

    goto LABEL_296;
  }

  v138 = xmlSchemaCheckCOSValidDefault(data, v9, (v2 + 48));
  if (!v138)
  {
    goto LABEL_315;
  }

  v4 = v138;
  if (v138 < 0)
  {
    v133 = "calling xmlSchemaCheckCOSValidDefault()";
    goto LABEL_298;
  }

LABEL_24:
  v12 = data[43];
  if (v12 < 0)
  {
    result = 0;
    goto LABEL_300;
  }

  v160 = v4;
  if (v12 == data[76])
  {
    data[76] = -1;
  }

  v170 = v2;
  if (*(v2 + 140) && xmlSchemaXPathProcessHistory(data, v12) == -1)
  {
    goto LABEL_299;
  }

  v13 = *(v2 + 104);
  if (v13 && (data[80] || data[81]))
  {
    while (1)
    {
      v14 = *(v13 + 24);
      v15 = *(v14 + 8);
      if (*v15 == 24)
      {
        goto LABEL_107;
      }

      v16 = *(v13 + 56);
      if (!v16)
      {
        goto LABEL_107;
      }

      if (!*(v16 + 8))
      {
        goto LABEL_107;
      }

      if (!data[81])
      {
        v24 = *(v14 + 16);
        if (v24 == -1 || v24 > data[43])
        {
          goto LABEL_107;
        }
      }

      v17 = *(*(data + 22) + 8 * *(v13 + 4));
      v20 = *(v17 + 96);
      v19 = (v17 + 96);
      v18 = v20;
      if (v20)
      {
        while (1)
        {
          v19 = v18;
          if (v18[1] == v15)
          {
            break;
          }

          v18 = *v18;
          if (!*v19)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_39:
        v21 = xmlSchemaIDCNewBinding(v15);
        *v19 = v21;
        v19 = v21;
        if (!v21)
        {
          goto LABEL_299;
        }
      }

      v22 = v19[4];
      if (!v22)
      {
        break;
      }

      LODWORD(v23) = *(v22 + 8);
      if (!v23)
      {
        goto LABEL_47;
      }

      table = *v22;
LABEL_48:
      v25 = v19[2];
      if (v25)
      {
        v161 = v23 == 0;
        if (!(*(v19 + 6) | v23))
        {
          free(v25);
LABEL_105:
          v52 = *(v13 + 56);
          v19[2] = *v52;
          v19[3] = v52[1];
          *v52 = 0;
          v52[1] = 0;
          v53 = *(v13 + 64);
          if (v53)
          {
            xmlHashFree(v53, xmlFreeIDCHashEntry);
            *(v13 + 64) = 0;
          }

          goto LABEL_107;
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_105;
        }

        v161 = 0;
      }

      v26 = 0;
      v27 = *(v13 + 56);
      v28 = *(v27 + 2);
      v29 = *v27;
      v30 = *(*(*(v13 + 24) + 8) + 64);
      if (v23 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v23;
      }

      v164 = v23;
      if (v28 <= 1)
      {
        v31 = 1;
      }

      else
      {
        v31 = v28;
      }

      v156 = v31;
      v158 = *v27;
      do
      {
        v32 = *(*(v29 + 8 * v26) + 8);
        if (!v161)
        {
          for (i = 0; i != v164; ++i)
          {
            if (v30 == 1)
            {
              v43 = xmlSchemaAreValuesEqual(*(*v32 + 8), *(**(*(table + i) + 8) + 8));
              if (v43 == -1)
              {
                goto LABEL_299;
              }

              if (v43 == 1)
              {
                goto LABEL_76;
              }
            }

            else if (v30 >= 1)
            {
              v44 = *(*(table + i) + 8);
              v45 = v32;
              v46 = v30;
              while (1)
              {
                v47 = xmlSchemaAreValuesEqual(*(*v45 + 8), *(*v44 + 8));
                if (v47 == -1)
                {
                  goto LABEL_299;
                }

                if (!v47)
                {
                  break;
                }

                v44 += 8;
                v45 += 8;
                if (!--v46)
                {
                  goto LABEL_76;
                }
              }
            }
          }
        }

        LODWORD(v33) = *(v19 + 6);
        if (!v33)
        {
LABEL_90:
          v29 = v158;
          v48 = *(v158 + 8 * v26);
          v49 = *(v19 + 7);
          if (v49 > v33)
          {
            v50 = v19[2];
LABEL_100:
            *(v19 + 6) = v33 + 1;
            v50[v33] = v48;
            goto LABEL_101;
          }

          if (v49 >= 1)
          {
            if (v49 > 0x3B9AC9FF)
            {
              v150 = "allocating an array of IDC node-table items";
            }

            else
            {
              if (1000000000 - ((v49 + 1) >> 1) >= v49)
              {
                v51 = v49 + ((v49 + 1) >> 1);
              }

              else
              {
                v51 = 1000000000;
              }

LABEL_98:
              v50 = malloc_type_realloc(v19[2], 8 * v51, 0x2004093837F09uLL);
              if (v50)
              {
                v19[2] = v50;
                *(v19 + 7) = v51;
                LODWORD(v33) = *(v19 + 6);
                goto LABEL_100;
              }

              v150 = "re-allocating an array of IDC node-table items";
            }

LABEL_347:
            __xmlSimpleError(0x11u, 2, 0, 0, v150);
            goto LABEL_299;
          }

          v51 = 10;
          goto LABEL_98;
        }

        v34 = 0;
        while (v30 != 1)
        {
          if (v30 < 1)
          {
            goto LABEL_72;
          }

          v36 = *(*(v19[2] + 8 * v34) + 8);
          v37 = v32;
          v38 = v30;
          while (1)
          {
            v39 = xmlSchemaAreValuesEqual(*(*v37 + 8), *(*v36 + 8));
            if (v39 == -1)
            {
              goto LABEL_299;
            }

            if (!v39)
            {
              break;
            }

            v36 += 8;
            v37 += 8;
            if (!--v38)
            {
              goto LABEL_72;
            }
          }

LABEL_65:
          ++v34;
          v33 = *(v19 + 6);
          if (v34 >= v33)
          {
            goto LABEL_90;
          }
        }

        v35 = xmlSchemaAreValuesEqual(*(*v32 + 8), *(**(*(v19[2] + 8 * v34) + 8) + 8));
        if (!v35)
        {
          goto LABEL_65;
        }

        if (v35 == -1)
        {
          goto LABEL_299;
        }

LABEL_72:
        v40 = v19[4];
        if (!v40)
        {
          v40 = xmlSchemaItemListCreate();
          v19[4] = v40;
          if (!v40)
          {
            goto LABEL_299;
          }
        }

        if (xmlSchemaItemListAddSize(v40, 20, *(v19[2] + 8 * v34)) == -1)
        {
          goto LABEL_299;
        }

        table = *v19[4];
        v41 = *(v19 + 6);
        *(v19[2] + 8 * v34) = *(v19[2] + 8 * v41 - 8);
        *(v19 + 6) = v41 - 1;
LABEL_76:
        v29 = v158;
LABEL_101:
        ++v26;
      }

      while (v26 != v156);
LABEL_107:
      v13 = *(v13 + 8);
      if (!v13)
      {
        goto LABEL_108;
      }
    }

    LODWORD(v23) = 0;
LABEL_47:
    table = 0;
    goto LABEL_48;
  }

LABEL_108:
  v54 = *(data + 24);
  if (*(v54 + 136))
  {
    for (j = *(v54 + 104); j; j = *(j + 8))
    {
      if (*(j + 32) == 24)
      {
        v56 = *(j + 56);
        if (v56)
        {
          if (*(v56 + 8))
          {
            v57 = *(*(j + 24) + 8);
            v58 = *(v57 + 64);
            v59 = *(data + 24) + 96;
            do
            {
              v59 = *v59;
              if (!v59)
              {
                v162 = 0;
                v61 = 0;
                goto LABEL_131;
              }
            }

            while (*(*(v57 + 72) + 8) != *(v59 + 8));
            v60 = *(v59 + 32);
            if (v60)
            {
              v162 = *(v60 + 8) != 0;
            }

            else
            {
              v162 = 0;
            }

            v61 = xmlHashCreate(2 * *(v59 + 24));
            if (*(v59 + 24) >= 1)
            {
              v62 = 0;
              do
              {
                name[0] = 0;
                xmlSchemaFormatIDCKeySequence_1(data, name, *(*(*(v59 + 16) + 8 * v62) + 8), v58, 1);
                v63 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
                if (v63)
                {
                  v64 = v63;
                  *(v63 + 2) = v62;
                  v65 = name[0];
                  v66 = xmlHashLookup(v61, name[0]);
                  if (v66)
                  {
                    *v64 = *v66;
                    *v66 = v64;
                  }

                  else
                  {
                    *v64 = 0;
                    if (xmlHashAddEntry(v61, v65, v64) < 0)
                    {
                      v68 = data[27] + 1;
                      data[26] = 1818;
                      data[27] = v68;
                      __xmlSimpleError(0x11u, 2, 0, 0, 0);
                      free(v64);
                    }
                  }
                }

                else
                {
                  v67 = data[27] + 1;
                  data[26] = 1818;
                  data[27] = v67;
                  __xmlSimpleError(0x11u, 2, 0, 0, 0);
                  v65 = name[0];
                }

                if (v65)
                {
                  free(v65);
                }

                ++v62;
              }

              while (v62 < *(v59 + 24));
            }

LABEL_131:
            v69 = *(j + 56);
            if (*(v69 + 8) >= 1)
            {
              v70 = 0;
              tablea = v61;
              do
              {
                v71 = *(*v69 + 8 * v70);
                if (!v59)
                {
                  goto LABEL_155;
                }

                name[0] = 0;
                v165 = *(v71 + 8);
                xmlSchemaFormatIDCKeySequence_1(data, name, v165, v58, 1);
                v72 = name[0];
                v73 = xmlHashLookup(tablea, name[0]);
                if (v72)
                {
                  free(v72);
                  name[0] = 0;
                }

                for (; v73; v73 = *v73)
                {
                  if (v58 >= 1)
                  {
                    v74 = *(*(*(v59 + 16) + 8 * *(v73 + 2)) + 8);
                    v75 = v165;
                    v76 = v58;
                    while (1)
                    {
                      v77 = xmlSchemaAreValuesEqual(*(*v74 + 8), *(*v75 + 8));
                      if (v77 == -1)
                      {
                        goto LABEL_299;
                      }

                      if (!v77)
                      {
                        break;
                      }

                      v75 += 8;
                      v74 += 8;
                      if (!--v76)
                      {
                        goto LABEL_163;
                      }
                    }
                  }
                }

                if (v162 && (v78 = *(v59 + 32), *(v78 + 8) >= 1))
                {
                  v79 = 0;
                  while (v58 < 1)
                  {
LABEL_154:
                    if (++v79 >= *(v78 + 8))
                    {
                      goto LABEL_155;
                    }
                  }

                  v80 = *(*(*v78 + 8 * v79) + 8);
                  v81 = v165;
                  v82 = v58;
                  do
                  {
                    v83 = xmlSchemaAreValuesEqual(*(*v80 + 8), *(*v81 + 8));
                    if (v83 == -1)
                    {
                      goto LABEL_299;
                    }

                    if (!v83)
                    {
                      v78 = *(v59 + 32);
                      goto LABEL_154;
                    }

                    v81 += 8;
                    v80 += 8;
                    --v82;
                  }

                  while (v82);
                  v172 = 0;
                  v173 = 0;
                  v87 = xmlSchemaFormatIDCKeySequence_1(data, &v173, *(v71 + 8), v58, 0);
                  ComponentQName = xmlSchemaGetComponentQName(&v172, *(*(j + 24) + 8));
                  xmlSchemaKeyrefErr(data, v71, "More than one match found for key-sequence %s of keyref '%s'", v87, ComponentQName);
                  if (v173)
                  {
                    free(v173);
                  }

                  v86 = v172;
                  if (!v172)
                  {
                    goto LABEL_163;
                  }
                }

                else
                {
LABEL_155:
                  v173 = 0;
                  name[0] = 0;
                  v84 = xmlSchemaFormatIDCKeySequence_1(data, name, *(v71 + 8), v58, 0);
                  v85 = xmlSchemaGetComponentQName(&v173, *(*(j + 24) + 8));
                  xmlSchemaKeyrefErr(data, v71, "No match found for key-sequence %s of keyref '%s'", v84, v85);
                  if (name[0])
                  {
                    free(name[0]);
                  }

                  v86 = v173;
                  if (!v173)
                  {
                    goto LABEL_163;
                  }
                }

                free(v86);
LABEL_163:
                v61 = tablea;
                ++v70;
                v69 = *(j + 56);
              }

              while (v70 < *(v69 + 8));
            }

            if (v61)
            {
              xmlHashFree(v61, xmlFreeIDCHashEntry);
            }
          }
        }
      }
    }
  }

  if (!*(v170 + 96) || (v89 = data[43], v89 < 1) || !data[80] && !data[81] || (v90 = *(*(data + 24) + 96)) == 0)
  {
LABEL_275:
    xmlSchemaClearElemInfo(data, v170);
    v127 = data[43];
    if (v127)
    {
      v128 = *(data + 25);
      for (result = v160; v128; v128 = *v128)
      {
        if (*(v128 + 4) == v127)
        {
          *(v128 + 4) = -1;
        }
      }

      v130 = v127 - 1;
      data[43] = v130;
      *(data + 24) = *(*(data + 22) + 8 * v130);
    }

    else
    {
      result = 0;
      data[43] = -1;
      *(data + 24) = 0;
    }

    goto LABEL_300;
  }

  v91 = 0;
  v92 = 0;
  v93 = *(*(data + 22) + 8 * v89 - 8) + 96;
  v157 = v93;
  while (1)
  {
    v94 = *(v90 + 6);
    if (!v94)
    {
      v96 = v90[4];
      if (!v96 || !*(v96 + 8))
      {
        goto LABEL_274;
      }
    }

    if (!data[81])
    {
      v95 = *(data + 25);
      while (v95[1] != v90[1])
      {
        v95 = *v95;
        if (!v95)
        {
          goto LABEL_184;
        }
      }

      v97 = *(v95 + 4);
      if (v97 == -1 || v97 >= data[43])
      {
        goto LABEL_274;
      }
    }

LABEL_184:
    v98 = v93;
    do
    {
      v98 = *v98;
      if (!v98)
      {
        v102 = xmlSchemaIDCNewBinding(v90[1]);
        if (!v102)
        {
          goto LABEL_299;
        }

        v103 = v102;
        v104 = *(v90 + 6);
        v93 = v157;
        if (v104)
        {
          if (data[82])
          {
            v105 = malloc_type_malloc(8 * v104, 0x2004093837F09uLL);
            v103[2] = v105;
            if (!v105)
            {
              __xmlSimpleError(0x11u, 2, 0, 0, "allocating an array of IDC node-table items");
              xmlSchemaIDCFreeBinding(v103);
              goto LABEL_299;
            }

            v106 = *(v90 + 6);
            *(v103 + 6) = v106;
            *(v103 + 7) = v106;
            memcpy(v105, v90[2], 8 * v106);
          }

          else
          {
            v102[2] = v90[2];
            v90[2] = 0;
            v124 = *(v90 + 7);
            *(v102 + 6) = v104;
            *(v102 + 7) = v124;
            v90[3] = 0;
          }
        }

        v125 = v90[4];
        if (v125)
        {
          v126 = v103[4];
          if (v126)
          {
            xmlSchemaItemListFree(v126);
            v125 = v90[4];
          }

          v103[4] = v125;
          v90[4] = 0;
        }

        if (*v157)
        {
          *v103 = *v157;
        }

        *v157 = v103;
        goto LABEL_274;
      }

      v99 = v90[1];
    }

    while (*(v98 + 8) != v99);
    v100 = *(v98 + 32);
    if (v100)
    {
      v101 = *(v100 + 8);
      tableb = v101 ? *v100 : 0;
    }

    else
    {
      tableb = 0;
      v101 = 0;
    }

    if (v94 >= 1)
    {
      break;
    }

LABEL_274:
    v90 = *v90;
    if (!v90)
    {
      goto LABEL_275;
    }
  }

  v107 = 0;
  v159 = *(v98 + 24);
  v108 = *(v98 + 16);
  v151 = v101;
  v152 = (v101 - 1);
  v163 = *(v99 + 64);
  v109 = 8 * v163;
  v154 = v101;
  while (2)
  {
    v110 = *(v90[2] + 8 * v107);
    if (!v110)
    {
      goto LABEL_263;
    }

    v166 = v108;
    if (v101)
    {
      if (v101 < 1)
      {
        LODWORD(k) = 0;
      }

      else
      {
        if (v163 == 1)
        {
          k = 0;
          while (1)
          {
            v112 = xmlSchemaAreValuesEqual(*(**(v110 + 8) + 8), *(**(*(tableb + k) + 8) + 8));
            if (v112)
            {
              break;
            }

            if (++k >= v151)
            {
              v91 = 0;
              v101 = v154;
              LODWORD(k) = v154;
              goto LABEL_226;
            }
          }

          if (v112 == -1)
          {
            goto LABEL_299;
          }

          v91 = 1;
LABEL_225:
          v93 = v157;
          v101 = v154;
LABEL_226:
          v113 = v159;
          v108 = v166;
          goto LABEL_227;
        }

        for (k = 0; ; ++k)
        {
          v92 = *(tableb + k);
          if (v163 < 1)
          {
            if (v91 == 1)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v114 = 0;
            while (1)
            {
              v115 = xmlSchemaAreValuesEqual(*(*(*(v110 + 8) + v114) + 8), *(*(*(v92 + 8) + v114) + 8));
              if (v115 == -1)
              {
                goto LABEL_299;
              }

              v91 = v115;
              if (!v115)
              {
                break;
              }

              v114 += 8;
              if (v109 == v114)
              {
                v91 = 1;
                goto LABEL_225;
              }
            }

            v93 = v157;
            v101 = v154;
            v108 = v166;
          }

          if (k == v152)
          {
            break;
          }
        }

        LODWORD(k) = v101;
      }

LABEL_210:
      v113 = v159;
LABEL_227:
      if (k != v101 || !v113)
      {
        goto LABEL_263;
      }
    }

    else
    {
      v113 = v159;
      if (!v159)
      {
        v159 = 0;
        goto LABEL_263;
      }
    }

    v153 = v113 - 1;
    if (v113 < 1)
    {
      LODWORD(v116) = 0;
LABEL_246:
      v120 = *(v98 + 24);
      if (v116 == v159)
      {
LABEL_247:
        v121 = *(v98 + 28);
        if (v120 >= v121)
        {
          if (v121 < 1)
          {
            v123 = 10;
          }

          else
          {
            if (v121 > 0x3B9AC9FF)
            {
              v150 = "allocating IDC list of node-table items";
              goto LABEL_347;
            }

            if (1000000000 - ((v121 + 1) >> 1) >= v121)
            {
              v123 = v121 + ((v121 + 1) >> 1);
            }

            else
            {
              v123 = 1000000000;
            }
          }

          v108 = malloc_type_realloc(*(v98 + 16), 8 * v123, 0x2004093837F09uLL);
          if (!v108)
          {
            v150 = "re-allocating IDC list of node-table items";
            goto LABEL_347;
          }

          *(v98 + 16) = v108;
          *(v98 + 28) = v123;
          v120 = *(v98 + 24);
        }

        else
        {
          v108 = *(v98 + 16);
        }

        v101 = v154;
        *(v98 + 24) = v120 + 1;
        v108[v120] = v110;
      }

      else
      {
        *(v98 + 24) = v120 - 1;
        v108[v116] = v108[v153];
        if (v120 != v159)
        {
          v108[v153] = v108[v120 - 1];
        }

        v122 = *(v98 + 32);
        if (!v122)
        {
          v122 = xmlSchemaItemListCreate();
          *(v98 + 32) = v122;
          if (!v122)
          {
            goto LABEL_299;
          }
        }

        xmlSchemaItemListAddSize(v122, 20, v92);
        tableb = **(v98 + 32);
        v101 = v154;
        v159 = v153;
        v93 = v157;
        v108 = v166;
      }

LABEL_263:
      if (++v107 >= *(v90 + 6))
      {
        goto LABEL_274;
      }

      continue;
    }

    break;
  }

  v116 = 0;
  v155 = v113;
  while (1)
  {
    v92 = v108[v116];
    if (v163 != 1)
    {
      break;
    }

    v117 = xmlSchemaAreValuesEqual(*(**(v110 + 8) + 8), *(**(v92 + 8) + 8));
    v91 = v117;
    if (v117)
    {
      if (v117 == -1)
      {
        goto LABEL_299;
      }

LABEL_245:
      v91 = 1;
      v93 = v157;
      v108 = v166;
      goto LABEL_246;
    }

LABEL_241:
    ++v116;
    v108 = v166;
    if (v116 == v155)
    {
      v120 = *(v98 + 24);
      v93 = v157;
      goto LABEL_247;
    }
  }

  if (v163 < 1)
  {
    if (v91 == 1)
    {
      goto LABEL_245;
    }

    goto LABEL_241;
  }

  v118 = 0;
  while (1)
  {
    v119 = xmlSchemaAreValuesEqual(*(*(*(v110 + 8) + v118) + 8), *(*(*(v92 + 8) + v118) + 8));
    if (v119 == -1)
    {
      break;
    }

    v91 = v119;
    if (!v119)
    {
      goto LABEL_241;
    }

    v118 += 8;
    if (v109 == v118)
    {
      goto LABEL_245;
    }
  }

LABEL_299:
  result = 0xFFFFFFFFLL;
  data[26] = -1;
LABEL_300:
  v134 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *xmlSchemaGetFreshAttrInfo(uint64_t a1)
{
  v2 = *(a1 + 300);
  if (v2 > *(a1 + 296))
  {
    goto LABEL_2;
  }

  if (v2 < 1)
  {
    v9 = 5;
  }

  else
  {
    if (v2 > 0x3B9AC9FF)
    {
      v5 = *(a1 + 108) + 1;
      *(a1 + 104) = 1818;
      *(a1 + 108) = v5;
      v6 = "allocating attribute info list";
LABEL_21:
      __xmlSimpleError(0x11u, 2, 0, 0, v6);
      return 0;
    }

    if (1000000000 - ((v2 + 1) >> 1) >= v2)
    {
      v9 = v2 + ((v2 + 1) >> 1);
    }

    else
    {
      v9 = 1000000000;
    }
  }

  v10 = malloc_type_realloc(*(a1 + 288), 8 * v9, 0x2004093837F09uLL);
  if (!v10)
  {
    v11 = *(a1 + 108) + 1;
    *(a1 + 104) = 1818;
    *(a1 + 108) = v11;
    v6 = "re-allocating attribute info list";
    goto LABEL_21;
  }

  *(a1 + 288) = v10;
  *(a1 + 300) = v9;
  if (v2 < v9)
  {
    do
    {
      *(*(a1 + 288) + 8 * v2++) = 0;
    }

    while (v9 != v2);
  }

LABEL_2:
  v3 = *(a1 + 296);
  result = *(*(a1 + 288) + 8 * v3);
  if (!result)
  {
    result = malloc_type_malloc(0x70uLL, 0x10700406FDCCECFuLL);
    if (result)
    {
      result[6] = 0u;
      *(result + 84) = 0u;
      *(result + 68) = 0u;
      *(result + 52) = 0u;
      *(result + 36) = 0u;
      *(result + 20) = 0u;
      *(result + 4) = 0u;
      *result = 2;
      v7 = *(a1 + 288);
      v8 = *(a1 + 296);
      *(a1 + 296) = v8 + 1;
      *(v7 + 8 * v8) = result;
      return result;
    }

    v12 = *(a1 + 108) + 1;
    *(a1 + 104) = 1818;
    *(a1 + 108) = v12;
    v6 = "creating new attribute info";
    goto LABEL_21;
  }

  if (!*(result + 3))
  {
    *result = 2;
    *(a1 + 296) = v3 + 1;
    return result;
  }

  xmlSchemaInternalErr2(a1, "xmlSchemaGetFreshAttrInfo", "attr info not cleared", 0);
  return 0;
}

void xmlSchemaAugmentImportedIDC(uint64_t a1, void *data)
{
  v2 = *(*(a1 + 80) + 144);
  if (v2)
  {
    xmlHashScan(v2, xmlSchemaAugmentIDC, data);
  }
}

uint64_t xmlSchemaXPathEvaluate(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  if (a2 == 2)
  {
    v7 = *(a1 + 172) + 1;
  }

  else
  {
    v7 = *(a1 + 172);
  }

  v8 = *(a1 + 208);
  while (1)
  {
    v9 = *(v8 + 56);
    v10 = *(a1 + 192);
    v11 = *(v10 + 24);
    v12 = *(v10 + 32);
    if (a2 != 1)
    {
      break;
    }

    v13 = xmlStreamPush(v9, v11, v12);
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_31:
    v8 = *(v8 + 8);
    if (!v8)
    {
      v8 = *(a1 + 208);
      v6 = v2;
    }

    if (v8 == v6)
    {
      return v5;
    }
  }

  v13 = xmlStreamPushAttr(v9, v11, v12);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_10:
  if (v13 == -1)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaXPathEvaluate", "calling xmlStreamPush()", 0);
    return 0xFFFFFFFFLL;
  }

  v14 = *(v8 + 32);
  v15 = *(v8 + 36);
  if (v15 > v14)
  {
    v16 = *(v8 + 24);
LABEL_21:
    *(v8 + 32) = v14 + 1;
    v16[v14] = v7;
    if (*v8 == 2)
    {
      if (!v5)
      {
        v19 = *(a1 + 192);
        v20 = *(v19 + 64);
        if ((v20 & 0x10) == 0)
        {
          *(v19 + 64) = v20 | 0x10;
        }
      }

      v5 = (v5 + 1);
    }

    else if (*v8 == 1)
    {
      v18 = (*(*(*(v8 + 40) + 24) + 8) + 56);
      while (1)
      {
        v18 = *v18;
        if (!v18)
        {
          break;
        }

        if (xmlSchemaIDCAddStateObject(a1, *(v8 + 40), v18, 2) == -1)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }

    goto LABEL_31;
  }

  if (v15 < 1)
  {
    v17 = 5;
LABEL_19:
    v16 = malloc_type_realloc(*(v8 + 24), 4 * v17, 0x100004052888210uLL);
    if (!v16)
    {
      v21 = "re-allocating the state object history";
      goto LABEL_39;
    }

    *(v8 + 24) = v16;
    *(v8 + 36) = v17;
    v14 = *(v8 + 32);
    goto LABEL_21;
  }

  if (v15 <= 0x3B9AC9FF)
  {
    if (1000000000 - ((v15 + 1) >> 1) >= v15)
    {
      v17 = v15 + ((v15 + 1) >> 1);
    }

    else
    {
      v17 = 1000000000;
    }

    goto LABEL_19;
  }

  v21 = "allocating the state object history";
LABEL_39:
  __xmlSimpleError(0x11u, 2, 0, 0, v21);
  return 0xFFFFFFFFLL;
}

uint64_t xmlSchemaVAttributesComplex(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 192) + 56);
  v3 = *(v2 + 216);
  v4 = *(a1 + 296);
  v5 = *(a1 + 296);
  v85 = v2;
  if (v3)
  {
    v6 = *(v3 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(*v3 + 8 * v7);
        v9 = *(v8 + 24);
        if (v4 < 1)
        {
LABEL_11:
          v14 = *(v8 + 48);
          if (v14 == 2)
          {
            if (*(v8 + 56) || *(v9 + 88))
            {
              FreshAttrInfo = xmlSchemaGetFreshAttrInfo(a1);
              if (!FreshAttrInfo)
              {
LABEL_156:
                xmlSchemaInternalErr2(a1, "xmlSchemaVAttributesComplex", "calling xmlSchemaGetFreshAttrInfo()", 0);
                goto LABEL_160;
              }

              *(FreshAttrInfo + 22) = 8;
              *(FreshAttrInfo + 9) = v9;
              *(FreshAttrInfo + 10) = v8;
              *(FreshAttrInfo + 7) = *(v9 + 96);
              *(FreshAttrInfo + 3) = *(v9 + 16);
              *(FreshAttrInfo + 4) = *(v9 + 112);
            }
          }

          else if (v14 == 1)
          {
            v15 = xmlSchemaGetFreshAttrInfo(a1);
            if (!v15)
            {
              goto LABEL_156;
            }

            *(v15 + 22) = 4;
            *(v15 + 9) = v9;
            *(v15 + 10) = v8;
          }
        }

        else
        {
          v10 = 0;
          while (1)
          {
            v11 = *(*(a1 + 288) + v10);
            if (!*(v11 + 92))
            {
              v12 = *(v11 + 24);
              v13 = *(v9 + 16);
              if (*v12 == *v13 && xmlStrEqual(v12, v13) && xmlStrEqual(*(v11 + 32), *(v9 + 112)))
              {
                break;
              }
            }

            v10 += 8;
            if (8 * v4 == v10)
            {
              goto LABEL_11;
            }
          }

          *(v11 + 88) = 2;
          *(v11 + 72) = v9;
          *(v11 + 80) = v8;
          *(v11 + 56) = *(v9 + 96);
        }

        if (++v7 == v6)
        {
          v5 = *(a1 + 296);
          v2 = v85;
          break;
        }
      }
    }
  }

  if (!v5)
  {
    goto LABEL_60;
  }

  if (*(v2 + 152))
  {
    v17 = v4 < 1;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_54;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(*(a1 + 288) + 8 * v18);
    if (*(v20 + 88) != 1)
    {
      goto LABEL_43;
    }

    v21 = v2;
    if (xmlSchemaCheckCVCWildcardNamespace(*(v2 + 152), *(v20 + 32)))
    {
      v2 = v21;
      goto LABEL_43;
    }

    if (*(*(v21 + 152) + 40) == 1)
    {
      v2 = v21;
      *(v20 + 88) = 13;
      goto LABEL_43;
    }

    AttributeDecl = xmlSchemaGetAttributeDecl(*(a1 + 40), *(v20 + 24), *(v20 + 32));
    *(v20 + 72) = AttributeDecl;
    if (AttributeDecl)
    {
      *(v20 + 88) = 2;
      v23 = AttributeDecl[12];
      *(v20 + 56) = v23;
      if (!xmlSchemaIsDerivedFromBuiltInType(v23))
      {
        goto LABEL_38;
      }

      if (v19)
      {
        *(v20 + 88) = 15;
        v24 = *__xmlGenericError();
        v25 = *__xmlGenericErrorContext();
        v24(v25, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 25706);
LABEL_37:
        v19 = 1;
LABEL_38:
        v2 = v85;
        goto LABEL_43;
      }

      if (!v3)
      {
        goto LABEL_37;
      }

      v27 = *(v3 + 2);
      v2 = v85;
      if (v27 >= 1)
      {
        v28 = *v3;
        while (!xmlSchemaIsDerivedFromBuiltInType(*(*(*v28 + 24) + 96)))
        {
          v28 += 8;
          v19 = 1;
          --v27;
          v2 = v85;
          if (!v27)
          {
            goto LABEL_43;
          }
        }

        *(v20 + 88) = 16;
        v29 = *__xmlGenericError();
        v30 = *__xmlGenericErrorContext();
        v29(v30, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 25724);
        goto LABEL_37;
      }

      v19 = 1;
    }

    else
    {
      v2 = v85;
      if (*(*(v85 + 152) + 40) == 2)
      {
        v26 = 14;
      }

      else
      {
        v26 = 10;
      }

      *(v20 + 88) = v26;
    }

LABEL_43:
    ++v18;
  }

  while (v18 != v4);
  v5 = *(a1 + 296);
  if (!v5)
  {
LABEL_60:
    result = 0;
    goto LABEL_161;
  }

LABEL_54:
  if ((*(a1 + 148) & 1) != 0 && (v31 = *(*(a1 + 176) + 8 * *(a1 + 172))) != 0 && (v32 = *(v31 + 8)) != 0)
  {
    if (v32->doc)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  if (v5 < 1)
  {
    goto LABEL_155;
  }

  v35 = 0;
  while (2)
  {
    v36 = *(*(a1 + 288) + 8 * v35);
    v37 = *(v36 + 88);
    if (v37 != 8 && v37 != 2)
    {
      goto LABEL_127;
    }

    if (!*(v36 + 56))
    {
      *(v36 + 88) = 6;
      goto LABEL_127;
    }

    *(a1 + 192) = v36;
    if (*(a1 + 208))
    {
      v39 = xmlSchemaXPathEvaluate(a1, 2);
      if (v39 == -1)
      {
        goto LABEL_157;
      }

      v40 = v39;
      v37 = *(v36 + 88);
    }

    else
    {
      v40 = 0;
    }

    if (v37 != 8)
    {
      v44 = *(a1 + 136);
      if (v44)
      {
        xmlSchemaFreeValue(v44);
        *(a1 + 136) = 0;
      }

      if ((*(*(v36 + 72) + 121) & 2) != 0 || (v45 = *(v36 + 80)) != 0 && (*(v45 + 33) & 2) != 0)
      {
        v46 = 1;
      }

      else
      {
        if (!v40)
        {
          v47 = xmlSchemaVCheckCVCSimpleType(a1, *(v36 + 8), *(v36 + 56), *(v36 + 40), 0, 1u, 0, 0);
          v46 = 0;
          if (v47)
          {
            goto LABEL_89;
          }

          goto LABEL_105;
        }

        v46 = 0;
      }

      *(v36 + 64) |= 0x10u;
      v47 = xmlSchemaVCheckCVCSimpleType(a1, *(v36 + 8), *(v36 + 56), *(v36 + 40), (v36 + 48), 1u, 1, 0);
      if (v47)
      {
LABEL_89:
        if (v47 != -1)
        {
          *(v36 + 88) = 5;
          goto LABEL_121;
        }

        v82 = "calling xmlSchemaStreamValidateSimpleTypeValue()";
        goto LABEL_158;
      }

LABEL_105:
      if (!v46)
      {
        goto LABEL_121;
      }

      v58 = *(v36 + 48);
      if (!v58)
      {
        v66 = *__xmlGenericError();
        v67 = *__xmlGenericErrorContext();
        v66(v67, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 25978);
        goto LABEL_121;
      }

      v59 = *(v36 + 80);
      if (v59 && (v60 = *(v59 + 56)) != 0)
      {
        v61 = *(v59 + 64);
        if (!v61)
        {
          v62 = *__xmlGenericError();
          v63 = *__xmlGenericErrorContext();
          v64 = 25985;
LABEL_120:
          v62(v63, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", v64);
          goto LABEL_121;
        }
      }

      else
      {
        v65 = *(v36 + 72);
        v61 = *(v65 + 136);
        if (!v61)
        {
          v62 = *__xmlGenericError();
          v63 = *__xmlGenericErrorContext();
          v64 = 26000;
          goto LABEL_120;
        }

        v60 = *(v65 + 88);
      }

      *(v36 + 96) = v60;
      if (!xmlSchemaAreValuesEqual(v58, v61))
      {
        *(v36 + 88) = 7;
      }

      goto LABEL_121;
    }

    if (!v33 && !v40)
    {
      goto LABEL_124;
    }

    v41 = *(v36 + 80);
    v42 = *(v41 + 56);
    if (v42)
    {
      v43 = (v41 + 64);
    }

    else
    {
      v48 = *(v36 + 72);
      v42 = *(v48 + 88);
      v43 = (v48 + 136);
    }

    v49 = *v43;
    *(v36 + 40) = v42;
    *(v36 + 48) = v49;
    if (!v49)
    {
      v82 = "default/fixed value on an attribute use was not precomputed";
LABEL_158:
      xmlSchemaInternalErr2(a1, "xmlSchemaVAttributesComplex", v82, 0);
      goto LABEL_159;
    }

    v50 = xmlSchemaCopyValue(v49);
    *(v36 + 48) = v50;
    if (!v50)
    {
      v82 = "calling xmlSchemaCopyValue()";
      goto LABEL_158;
    }

    if (!v33)
    {
      goto LABEL_121;
    }

    v51 = *(v36 + 40);
    v52 = xmlSchemaNormalizeValue(*(v36 + 56), v51);
    v53 = v52;
    if (v52)
    {
      v51 = v52;
    }

    v54 = *(v36 + 32);
    if (!v54)
    {
      if (xmlNewProp(v33, *(v36 + 24), v51))
      {
        goto LABEL_112;
      }

      v84 = "calling xmlNewProp()";
      goto LABEL_163;
    }

    v55 = xmlSearchNsByHref(v33->doc, v33, v54);
    if (v55)
    {
      goto LABEL_103;
    }

    v56 = 0;
    v87 = 0;
    *__str = 0;
    while (2)
    {
      snprintf(__str, 0xCuLL, "p%d", v56);
      v57 = xmlSearchNs(v33->doc, v33, __str);
      if (v56 == 1000)
      {
        v84 = "could not compute a ns prefix for a default/fixed attribute";
LABEL_163:
        xmlSchemaInternalErr2(a1, "xmlSchemaVAttributesComplex", v84, 0);
        if (v53)
        {
          free(v53);
        }

LABEL_159:
        *(a1 + 192) = *(*(a1 + 176) + 8 * *(a1 + 172));
LABEL_160:
        result = 0xFFFFFFFFLL;
        goto LABEL_161;
      }

      ++v56;
      if (v57)
      {
        continue;
      }

      break;
    }

    v55 = xmlNewNs(*(a1 + 152), *(v36 + 32), __str);
LABEL_103:
    xmlNewNsProp(v33, v55, *(v36 + 24), v51);
LABEL_112:
    if (v53)
    {
      free(v53);
    }

LABEL_121:
    if (!v40)
    {
LABEL_124:
      for (i = *(a1 + 208); i; i = *(i + 8))
      {
        if (xmlStreamPop(*(i + 56)) == -1)
        {
          break;
        }
      }

      goto LABEL_127;
    }

    if (xmlSchemaXPathProcessHistory(a1, *(a1 + 172) + 1) == -1)
    {
LABEL_157:
      v82 = "calling xmlSchemaXPathEvaluate()";
      goto LABEL_158;
    }

LABEL_127:
    ++v35;
    v69 = *(a1 + 296);
    if (v35 < v69)
    {
      continue;
    }

    break;
  }

  v70 = v85;
  if (v69 >= 1)
  {
    for (j = 0; j < *(a1 + 296); ++j)
    {
      v72 = *(*(a1 + 288) + 8 * j);
      v73 = *(v72 + 88);
      if (v73 <= 0x11 && ((1 << v73) & 0x26004) != 0)
      {
        continue;
      }

      *(a1 + 192) = v72;
      if (v73 <= 5)
      {
        if (v73 == 1)
        {
          if (*(v72 + 92))
          {
            continue;
          }

          if (*(v70 + 152))
          {
            v81 = 1867;
          }

          else
          {
            v81 = 1866;
          }

          xmlSchemaIllegalAttrErr(a1, v81, v72);
          goto LABEL_149;
        }

        if (v73 == 4)
        {
          *__str = 0;
          *(a1 + 192) = *(*(a1 + 176) + 8 * *(a1 + 172));
          v78 = xmlSchemaFormatQName(__str, *(*(v72 + 72) + 112), *(*(v72 + 72) + 16));
          xmlSchemaCustomErr4(a1, 1868, 0, 0, "The attribute '%s' is required but missing", v78, 0, 0, 0);
          if (*__str)
          {
            free(*__str);
          }

          goto LABEL_149;
        }
      }

      else
      {
        if (v73 == 6)
        {
          v75 = a1;
          v76 = 1862;
          v77 = "The type definition is absent";
LABEL_146:
          v79 = 0;
          v80 = 0;
LABEL_148:
          xmlSchemaCustomErr4(v75, v76, 0, 0, v77, v79, v80, 0, 0);
LABEL_149:
          v70 = v85;
          continue;
        }

        if (v73 == 7)
        {
          v79 = *(v72 + 40);
          v80 = *(v72 + 96);
          v75 = a1;
          v76 = 1874;
          v77 = "The value '%s' does not match the fixed value constraint '%s'";
          goto LABEL_148;
        }

        v70 = v85;
        if (v73 == 10)
        {
          v75 = a1;
          v76 = 1878;
          v77 = "No matching global attribute declaration available, but demanded by the strict wildcard";
          goto LABEL_146;
        }
      }
    }
  }

LABEL_155:
  result = 0;
  *(a1 + 192) = *(*(a1 + 176) + 8 * *(a1 + 172));
LABEL_161:
  v83 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlSchemaVAttributesSimple(uint64_t a1)
{
  v1 = *(a1 + 296);
  if (v1)
  {
    if (v1 >= 1)
    {
      for (i = 0; i < v1; ++i)
      {
        v4 = *(*(a1 + 288) + 8 * i);
        if (!*(v4 + 92))
        {
          *(a1 + 192) = v4;
          xmlSchemaIllegalAttrErr(a1, 1827, v4);
          v1 = *(a1 + 296);
        }
      }
    }

    *(a1 + 192) = *(*(a1 + 176) + 8 * *(a1 + 172));
  }
}

_DWORD *xmlSchemaAugmentIDC(_DWORD *a1, uint64_t a2)
{
  result = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
  if (result)
  {
    result[4] = -1;
    *result = *(a2 + 200);
    *(result + 1) = a1;
    *(a2 + 200) = result;
    if (!*(a2 + 320) && *a1 == 24)
    {
      *(a2 + 320) = 1;
    }
  }

  else
  {
    if (a2)
    {
      v5 = *(a2 + 108) + 1;
      *(a2 + 104) = 1818;
      *(a2 + 108) = v5;
    }

    return __xmlSimpleError(0x11u, 2, 0, 0, "xmlSchemaAugmentIDC: allocating an augmented IDC definition");
  }

  return result;
}

uint64_t xmlSchemaProcessXSIType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = 0;
  *(a1 + 192) = a2;
  v7 = *(a2 + 40);
  v8 = xmlValidateQName(v7, 1);
  if (v8 == -1)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaValidateElementByDeclaration", "calling xmlSchemaQNameExpand() to validate the attribute 'xsi:type'", 0);
    result = 0xFFFFFFFFLL;
  }

  else if (v8 < 1)
  {
    prefix = 0;
    v11 = xmlSplitQName2(v7, &prefix);
    v12 = *(a1 + 272);
    if (v11)
    {
      v13 = xmlDictLookup(v12, v11, -1);
      free(v11);
    }

    else
    {
      v13 = xmlDictLookup(v12, v7, -1);
    }

    v14 = xmlSchemaLookupNamespace(a1, prefix);
    if (prefix && (free(prefix), !v14))
    {
      BuiltInType = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
      xmlSchemaCustomErr4(a1, 1824, 0, BuiltInType, "The QName value '%s' has no corresponding namespace declaration in scope", v7, 0, 0, 0);
      result = 2;
    }

    else
    {
      Type = xmlSchemaGetType(*(a1 + 40), v13, v14);
      *a3 = Type;
      if (Type)
      {
        if (a4)
        {
          v16 = *(a4 + 88);
          if ((v16 & 0x800) != 0 || (*(*(a4 + 56) + 90) & 4) != 0)
          {
            v17 = 2;
          }

          else
          {
            v17 = 0;
          }

          v21 = *(a4 + 56);
          if ((v16 & 0x1000) != 0 || (*(v21 + 90) & 8) != 0)
          {
            v17 |= 1u;
          }

          result = xmlSchemaCheckCOSDerivedOK(a1, Type, v21, v17);
          if (result)
          {
            prefix = 0;
            v22 = xmlSchemaFormatQName(&prefix, *(*a3 + 208), *(*a3 + 16));
            xmlSchemaCustomErr4(a1, 1852, 0, 0, "The type definition '%s', specified by xsi:type, is blocked or not validly derived from the type definition of the element declaration", v22, 0, 0, 0);
            if (prefix)
            {
              free(prefix);
            }

            result = *(a1 + 104);
            *a3 = 0;
          }
        }

        else
        {
          result = 0;
        }
      }

      else
      {
        prefix = 0;
        v18 = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
        v19 = xmlSchemaFormatQName(&prefix, v14, v13);
        xmlSchemaCustomErr4(a1, 1851, 0, v18, "The QName value '%s' of the xsi:type attribute does not resolve to a type definition", v19, 0, 0, 0);
        if (prefix)
        {
          free(prefix);
        }

        result = *(a1 + 104);
      }
    }
  }

  else
  {
    v9 = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
    xmlSchemaSimpleTypeErr(a1, 1824, 0, v7, v9);
    result = 1;
  }

  *(a1 + 192) = *(*(a1 + 176) + 8 * *(a1 + 172));
  return result;
}

void xmlSchemaComplexTypeErr(uint64_t a1, const xmlChar *a2, int a3, int a4, uint64_t a5)
{
  v9 = a1;
  cur = 0;
  v39 = 0;
  xmlSchemaFormatNodeForError(&cur, a1, 0);
  cur = xmlStrcat(cur, a2);
  v10 = xmlStrcat(cur, ".");
  cur = v10;
  v11 = (a4 + a3);
  if (v11 < 1)
  {
    v36 = xmlStrcat(v10, "\n");
    cur = v36;
    goto LABEL_46;
  }

  *v37 = v9;
  if (v11 == 1)
  {
    v12 = " Expected is(";
  }

  else
  {
    v12 = " Expected is one of(";
  }

  v13 = 0;
  v39 = xmlStrdup(v12);
  v14 = a3;
  do
  {
    v15 = *(a5 + 8 * v13);
    if (!v15)
    {
      goto LABEL_41;
    }

    v16 = *v15;
    if (v16 == 110)
    {
      if (v15[1] != 111 || v15[2] != 116 || v15[3] != 32)
      {
        v16 = 110;
        goto LABEL_15;
      }

      v39 = xmlStrcat(v39, "##other");
      v17 = v15[4];
      v15 += 4;
      v16 = v17;
    }

    if (v16 == 42)
    {
      v18 = xmlStrdup("*");
      v19 = v15 + 1;
      goto LABEL_19;
    }

LABEL_15:
    for (i = 0; v16; v16 = v15[++i])
    {
      if (v16 == 124)
      {
        break;
      }
    }

    v18 = xmlStrncat(0, v15, i);
    v19 = &v15[i];
LABEL_19:
    if (*v19)
    {
      v22 = v19[1];
      v21 = v19 + 1;
      v23 = v22 == 42;
      if (a4)
      {
        if (!v23)
        {
          goto LABEL_29;
        }

        if (*v18 == 42)
        {
          free(v18);
          goto LABEL_41;
        }
      }

      else if (!v23)
      {
LABEL_29:
        v26 = -1;
        v27 = v21;
        do
        {
          v28 = *v27++;
          ++v26;
        }

        while (v28);
        if (v13 >= v14)
        {
          v29 = "{##other:";
        }

        else
        {
          v29 = "{";
        }

        v30 = xmlStrdup(v29);
        v31 = xmlStrncat(v30, v21, v26);
        v25 = xmlStrcat(v31, "}");
LABEL_35:
        v32 = v25;
        v24 = xmlStrcat(v39, v25);
        if (v32)
        {
          free(v32);
        }

        goto LABEL_37;
      }

      v25 = xmlStrdup("{*}");
      goto LABEL_35;
    }

    v24 = v39;
LABEL_37:
    v33 = xmlStrcat(v24, v18);
    v39 = v33;
    if (v18)
    {
      free(v18);
    }

    if (v13 < (v11 - 1))
    {
      v39 = xmlStrcat(v33, ", ");
    }

LABEL_41:
    ++v13;
  }

  while (v13 != v11);
  v39 = xmlStrcat(v39, ").\n");
  v34 = cur;
  v35 = xmlEscapeFormatString(&v39);
  v36 = xmlStrcat(v34, v35);
  cur = v36;
  if (v39)
  {
    free(v39);
    v39 = 0;
    v36 = cur;
  }

  v9 = *v37;
LABEL_46:
  xmlSchemaErr4Line(v9, 2, 1871, 0, 0, v36, 0, 0, 0, 0);
  free(cur);
}

uint64_t xmlSchemaIDCAddStateObject(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a1 + 216);
  if (v8)
  {
    *(a1 + 216) = *(v8 + 1);
    *(v8 + 1) = 0;
  }

  else
  {
    v9 = malloc_type_malloc(0x40uLL, 0x10B004057E52E89uLL);
    if (!v9)
    {
      __xmlSimpleError(0x11u, 2, 0, 0, "allocating an IDC state object");
      return 0xFFFFFFFFLL;
    }

    v8 = v9;
    v9[2] = 0u;
    v9[3] = 0u;
    *v9 = 0u;
    v9[1] = 0u;
  }

  v10 = *(a1 + 208);
  if (v10)
  {
    *(v8 + 1) = v10;
  }

  *(a1 + 208) = v8;
  v11 = *(v8 + 7);
  if (v11)
  {
    xmlFreeStreamCtxt(v11);
  }

  StreamCtxt = xmlPatternGetStreamCtxt(*(a3 + 32));
  *(v8 + 7) = StreamCtxt;
  if (StreamCtxt)
  {
    result = 0;
    *v8 = a4;
    *(v8 + 4) = *(a1 + 172);
    *(v8 + 5) = a2;
    *(v8 + 6) = a3;
    *(v8 + 8) = 0;
    return result;
  }

  xmlSchemaInternalErr2(a1, "xmlSchemaIDCAddStateObject", "failed to create an XPath validation context", 0);
  return 0xFFFFFFFFLL;
}

uint64_t xmlSchemaXPathProcessHistory(uint64_t a1, int a2)
{
  v2 = *(a1 + 208);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(*(a1 + 192) + 56);
  v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
  v8 = "allocating the IDC key storage list";
  while (1)
  {
    if (xmlStreamPop(*(v2 + 56)) == -1)
    {
      v69 = "calling xmlStreamPop()";
      goto LABEL_119;
    }

    v9 = *(v2 + 32);
    if (v9)
    {
      break;
    }

LABEL_103:
    if (*(v2 + 16) == a2)
    {
      if (*(a1 + 208) != v2)
      {
        xmlSchemaInternalErr2(a1, "xmlSchemaXPathProcessHistory", "The state object to be removed is not the first in the list", 0);
      }

      v64 = *(v2 + 8);
      *(a1 + 208) = v64;
      *(v2 + 8) = *(a1 + 216);
      *(a1 + 216) = v2;
      v2 = v64;
      goto LABEL_7;
    }

LABEL_6:
    v2 = *(v2 + 8);
LABEL_7:
    if (!v2)
    {
      return 0;
    }
  }

  if (*(*(v2 + 24) + 4 * v9 - 4) != a2)
  {
    goto LABEL_6;
  }

  if (*v2 != 1)
  {
    if (*v2 == 2)
    {
      if (*v6 == 5 || (v10 = v6, *(v6 + 160) == 45))
      {
        if ((*(v6 + 92) | 2) == 6)
        {
          v10 = *(v6 + 192);
          if (v10)
          {
            goto LABEL_15;
          }

          v69 = "field resolves to a CT with simple content but the CT is missing the ST definition";
LABEL_119:
          xmlSchemaInternalErr2(a1, "xmlSchemaXPathProcessHistory", v69, 0);
          return 0xFFFFFFFFLL;
        }

        v38 = v8;
        name = 0;
        v39 = *(*(*(v2 + 40) + 24) + 8);
        v40 = v7;
        v41 = *(*(v2 + 48) + 24);
        ComponentDesignation = xmlSchemaGetComponentDesignation(&name, v39);
        xmlSchemaCustomErr4(a1, 1877, 0, v39, v40, v41, ComponentDesignation, 0, 0);
        if (name)
        {
          free(name);
        }

        v43 = *(v2 + 32) - 1;
        *(v2 + 32) = v43;
        v8 = v38;
        v7 = v40;
LABEL_102:
        if (v43)
        {
          goto LABEL_6;
        }

        goto LABEL_103;
      }

LABEL_15:
      if (v5 || *(*(a1 + 192) + 48))
      {
        v11 = *(v2 + 40);
        v12 = *(v2 + 16) - *(v11 + 4);
        v13 = *(*(v2 + 48) + 16);
        v14 = *(v11 + 48);
        if (v12 >= v14)
        {
          v75 = v5;
          if (v12 < 1)
          {
            v15 = v6;
            v16 = *(*(v2 + 48) + 16);
            v17 = 10;
          }

          else
          {
            if (v12 > 0x3B9AC9FF)
            {
              v70 = "allocating an array of key-sequences";
              goto LABEL_126;
            }

            v15 = v6;
            v16 = *(*(v2 + 48) + 16);
            if (1000000000 - ((v12 + 1) >> 1) >= v12)
            {
              v17 = v12 + ((v12 + 1) >> 1);
            }

            else
            {
              v17 = 1000000000;
            }
          }

          v44 = malloc_type_realloc(*(v11 + 40), 8 * v17, 0x80040B8603338uLL);
          if (!v44)
          {
            v70 = "reallocating an array of key-sequences";
            goto LABEL_126;
          }

          *(v11 + 40) = v44;
          *(v11 + 48) = v17;
          v13 = v16;
          v6 = v15;
          v5 = v75;
          if (v14 < v17)
          {
            do
            {
              *(*(v11 + 40) + 8 * v14++) = 0;
            }

            while (v17 != v14);
          }
        }

        v45 = *(*(v11 + 40) + 8 * v12);
        if (v45)
        {
          if (v45[v13])
          {
            name = 0;
            v46 = *(*(v11 + 24) + 8);
            v47 = *(*(v2 + 48) + 24);
            v48 = xmlSchemaGetComponentDesignation(&name, v46);
            xmlSchemaCustomErr4(a1, 1877, 0, v46, "The XPath '%s' of a field of %s evaluates to a node-set with more than one member", v47, v48, 0, 0);
            if (name)
            {
              free(name);
            }

            v43 = *(v2 + 32) - 1;
            *(v2 + 32) = v43;
            v8 = "allocating the IDC key storage list";
            v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
            goto LABEL_102;
          }

          goto LABEL_71;
        }

        v49 = v13;
        v50 = malloc_type_malloc(8 * *(*(*(v11 + 24) + 8) + 64), 0x2004093837F09uLL);
        if (v50)
        {
          v45 = v50;
          bzero(v50, 8 * *(*(*(v11 + 24) + 8) + 64));
          *(*(v11 + 40) + 8 * v12) = v45;
          v13 = v49;
LABEL_71:
          if (!v5)
          {
            v76 = v13;
            v51 = malloc_type_malloc(0x10uLL, 0x20040A4A59CD2uLL);
            if (!v51)
            {
              __xmlSimpleError(0x11u, 2, 0, 0, "allocating a IDC key");
              free(v45);
              *(*(v11 + 40) + 8 * v12) = 0;
              return 0xFFFFFFFFLL;
            }

            v5 = v51;
            *v51 = v10;
            v52 = *(a1 + 192);
            v51[1] = *(v52 + 48);
            *(v52 + 48) = 0;
            v53 = *(a1 + 260);
            v54 = *(a1 + 256);
            if (v53 <= v54)
            {
              v56 = "allocating the IDC key storage list";
              if (v53 < 1)
              {
                v57 = 20;
              }

              else
              {
                if (v53 > 0x3B9AC9FF)
                {
                  goto LABEL_134;
                }

                if (1000000000 - ((v53 + 1) >> 1) >= v53)
                {
                  v57 = v53 + ((v53 + 1) >> 1);
                }

                else
                {
                  v57 = 1000000000;
                }
              }

              v55 = malloc_type_realloc(*(a1 + 248), 8 * v57, 0x2004093837F09uLL);
              if (!v55)
              {
                v56 = "re-allocating the IDC key storage list";
LABEL_134:
                v71 = *(a1 + 108) + 1;
                *(a1 + 104) = 1818;
                *(a1 + 108) = v71;
                __xmlSimpleError(0x11u, 2, 0, 0, v56);
                xmlSchemaIDCFreeKey(v5);
                return 0xFFFFFFFFLL;
              }

              *(a1 + 248) = v55;
              *(a1 + 260) = v57;
              v54 = *(a1 + 256);
            }

            else
            {
              v55 = *(a1 + 248);
            }

            v13 = v76;
            *(a1 + 256) = v54 + 1;
            v55[v54] = v5;
          }

          v45[v13] = v5;
          v8 = "allocating the IDC key storage list";
          goto LABEL_100;
        }

        v70 = "allocating an IDC key-sequence";
LABEL_126:
        __xmlSimpleError(0x11u, 2, 0, 0, v70);
        return 0xFFFFFFFFLL;
      }

      xmlSchemaCustomErr4(a1, 1877, 0, *(*(*(v2 + 40) + 24) + 8), "Warning: No precomputed value available, the value was either invalid or something strange happened", 0, 0, 0, 0);
      v5 = 0;
    }

LABEL_101:
    v43 = *(v2 + 32) - 1;
    *(v2 + 32) = v43;
    goto LABEL_102;
  }

  v18 = *(v2 + 40);
  v19 = *(*(v18 + 24) + 8);
  v20 = *(v18 + 40);
  if (!v20 || (v21 = a2 - *(v18 + 4), *(v18 + 48) <= v21))
  {
    if (*v19 == 23)
    {
      v22 = 0;
      goto LABEL_51;
    }

    goto LABEL_100;
  }

  v22 = (v20 + 8 * v21);
  v23 = *v22;
  if (!*v22)
  {
    if (*v19 == 23)
    {
      goto LABEL_51;
    }

LABEL_100:
    v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
    goto LABEL_101;
  }

  v24 = *(v19 + 64);
  v73 = v24;
  if (v24 >= 1)
  {
    while (*v23)
    {
      ++v23;
      if (!--v24)
      {
        goto LABEL_29;
      }
    }

    if (*v19 != 23)
    {
LABEL_53:
      v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
      if (!v22)
      {
        goto LABEL_101;
      }

LABEL_54:
      if (*v22)
      {
        free(*v22);
        *v22 = 0;
      }

      goto LABEL_101;
    }

LABEL_51:
    name = 0;
    v37 = xmlSchemaGetComponentDesignation(&name, v19);
    xmlSchemaCustomErr4(a1, 1877, 0, v19, "Not all fields of %s evaluate to a node", v37, 0, 0, 0);
    if (name)
    {
      free(name);
    }

    goto LABEL_53;
  }

LABEL_29:
  v74 = *(v18 + 56);
  if (!v74)
  {
    v25 = xmlSchemaItemListCreate();
    *(v18 + 56) = v25;
    v74 = v25;
    if (!v25)
    {
      v26 = *(a1 + 108) + 1;
      *(a1 + 104) = 1818;
      *(a1 + 108) = v26;
      __xmlSimpleError(0x11u, 2, 0, 0, 0);
      v74 = *(v18 + 56);
      if (!v74)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (*v19 == 24 || !*(v74 + 8) || !*(v18 + 64))
  {
    goto LABEL_45;
  }

  name = 0;
  xmlSchemaFormatIDCKeySequence_1(a1, &name, *v22, v73, 1);
  v27 = name;
  v28 = xmlHashLookup(*(v18 + 64), name);
  v29 = v27;
  v30 = v28;
  if (v29)
  {
    free(v29);
  }

  if (!v30)
  {
LABEL_45:
    v34 = malloc_type_malloc(0x18uLL, 0x10A00404E934A1DuLL);
    if (v34)
    {
      v35 = v34;
      *v34 = 0;
      v34[1] = 0;
      v34[2] = 0;
      if (*v19 == 24)
      {
        v36 = xmlSchemaVAddNodeQName(a1, *(*(a1 + 192) + 24), *(*(a1 + 192) + 32));
        *(v35 + 5) = v36;
        if (v36 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_87;
      }

      if (xmlSchemaIDCStoreNodeTableItem(a1, v34) != -1)
      {
        *(v35 + 5) = -1;
LABEL_87:
        *v35 = *(a1 + 112);
        *(v35 + 4) = *(*(a1 + 192) + 16);
        v35[1] = *v22;
        *v22 = 0;
        v58 = xmlSchemaItemListAddSize(v74, 20, v35);
        v59 = *v19;
        if (v58 == -1)
        {
          if (v59 == 24)
          {
            free(v35[1]);
            free(v35);
          }

          return 0xFFFFFFFFLL;
        }

        if (v59 == 24)
        {
          v8 = "allocating the IDC key storage list";
          v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
        }

        else
        {
          name = 0;
          if (!*(v18 + 64))
          {
            *(v18 + 64) = xmlHashCreate(4);
          }

          xmlSchemaFormatIDCKeySequence_1(a1, &name, v35[1], v73, 1);
          v60 = malloc_type_malloc(0x10uLL, 0x10200403A5D3213uLL);
          if (v60)
          {
            v61 = v60;
            *(v60 + 2) = *(v74 + 8) - 1;
            v62 = name;
            v63 = xmlHashLookup(*(v18 + 64), name);
            if (v63)
            {
              *v61 = *v63;
              *v63 = v61;
            }

            else
            {
              *v61 = 0;
              if (xmlHashAddEntry(*(v18 + 64), v62, v61) < 0)
              {
                v66 = *(a1 + 108) + 1;
                *(a1 + 104) = 1818;
                *(a1 + 108) = v66;
                __xmlSimpleError(0x11u, 2, 0, 0, 0);
                free(v61);
              }
            }
          }

          else
          {
            v65 = *(a1 + 108) + 1;
            *(a1 + 104) = 1818;
            *(a1 + 108) = v65;
            __xmlSimpleError(0x11u, 2, 0, 0, 0);
            v62 = name;
          }

          v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
          if (v62)
          {
            free(v62);
          }

          v8 = "allocating the IDC key storage list";
        }

        goto LABEL_54;
      }

LABEL_129:
      free(v35);
    }

    else
    {
      __xmlSimpleError(0x11u, 2, 0, 0, "allocating an IDC node-table item");
    }

    free(*v22);
    *v22 = 0;
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v72 = v30;
    if (v73 >= 1)
    {
      break;
    }

LABEL_44:
    v30 = *v72;
    if (!*v72)
    {
      goto LABEL_45;
    }
  }

  v31 = 0;
  v32 = *(*(*v74 + 8 * *(v72 + 2)) + 8);
  while (1)
  {
    result = xmlSchemaAreValuesEqual(*(*(*v22 + v31) + 8), *(*(v32 + v31) + 8));
    if (result == -1)
    {
      return result;
    }

    if (!result)
    {
      goto LABEL_44;
    }

    v31 += 8;
    if (8 * v73 == v31)
    {
      v77 = 0;
      name = 0;
      v67 = xmlSchemaFormatIDCKeySequence_1(a1, &name, *v22, v73, 0);
      v68 = xmlSchemaGetComponentDesignation(&v77, v19);
      xmlSchemaCustomErr4(a1, 1877, 0, v19, "Duplicate key-sequence %s in %s", v67, v68, 0, 0);
      if (name)
      {
        free(name);
      }

      v8 = "allocating the IDC key storage list";
      v7 = "The XPath '%s' of a field of %s does evaluate to a node of non-simple type";
      if (v77)
      {
        free(v77);
      }

      goto LABEL_54;
    }
  }
}

void xmlSchemaIllegalAttrErr(_DWORD *a1, int a2, uint64_t a3)
{
  v9 = 0;
  cur = 0;
  xmlSchemaFormatNodeForError(&cur, a1, 0);
  v6 = xmlStrcat(cur, "The attribute '%s' is not allowed.\n");
  cur = v6;
  if (a3)
  {
    v7 = xmlSchemaFormatQName(&v9, *(a3 + 32), *(a3 + 24));
    v8 = v9;
    xmlSchemaErr4Line(a1, 2, a2, 0, 0, v6, v7, 0, 0, 0);
    if (v8)
    {
      free(v8);
    }
  }

  else
  {
    xmlSchemaErr4Line(a1, 2, a2, 0, 0, v6, 0, 0, 0, 0);
  }

  if (cur)
  {
    free(cur);
  }
}

uint64_t xmlSchemaIDCStoreNodeTableItem(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 240);
  v4 = *(a1 + 244);
  if (v4 <= v5)
  {
    if (v4 < 1)
    {
      v9 = 20;
    }

    else
    {
      if (v4 > 0x3B9AC9FF)
      {
        v7 = *(a1 + 108) + 1;
        *(a1 + 104) = 1818;
        *(a1 + 108) = v7;
        v8 = "allocating the IDC node table item list";
        goto LABEL_14;
      }

      if (1000000000 - ((v4 + 1) >> 1) >= v4)
      {
        v9 = v4 + ((v4 + 1) >> 1);
      }

      else
      {
        v9 = 1000000000;
      }
    }

    v6 = malloc_type_realloc(*(a1 + 232), 8 * v9, 0x2004093837F09uLL);
    if (v6)
    {
      *(a1 + 232) = v6;
      *(a1 + 244) = v9;
      v5 = *(a1 + 240);
      goto LABEL_12;
    }

    v11 = *(a1 + 108) + 1;
    *(a1 + 104) = 1818;
    *(a1 + 108) = v11;
    v8 = "re-allocating the IDC node table item list";
LABEL_14:
    __xmlSimpleError(0x11u, 2, 0, 0, v8);
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 232);
LABEL_12:
  v10 = 0;
  *(a1 + 240) = v5 + 1;
  v6[v5] = a2;
  return v10;
}

uint64_t xmlSchemaVAddNodeQName(uint64_t a1, const xmlChar *a2, const xmlChar *a3)
{
  v5 = 0xFFFFFFFFLL;
  v6 = xmlDictLookup(*(a1 + 272), a2, -1);
  if (v6)
  {
    v7 = v6;
    if (!a3 || (a3 = xmlDictLookup(*(a1 + 272), a3, -1)) != 0)
    {
      v8 = *(a1 + 312);
      v9 = *(v8 + 8);
      if (v9 < 1)
      {
LABEL_9:
        if ((xmlSchemaItemListAddSize(v8, 20, v7) & 0x80000000) == 0)
        {
          v5 = v9;
          if ((xmlSchemaItemListAddSize(*(a1 + 312), 20, a3) & 0x80000000) == 0)
          {
            return v5;
          }

          --*(*(a1 + 312) + 8);
        }

        v11 = *(a1 + 108) + 1;
        *(a1 + 104) = 1818;
        *(a1 + 108) = v11;
        __xmlSimpleError(0x11u, 2, 0, 0, 0);
        return 0xFFFFFFFFLL;
      }

      v5 = 0;
      v10 = (*v8 + 8);
      while (*(v10 - 1) != v7 || *v10 != a3)
      {
        v5 = (v5 + 2);
        v10 += 2;
        if (v9 <= v5)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return v5;
}

xmlChar *xmlSchemaFormatIDCKeySequence_1(_DWORD *a1, xmlChar **a2, uint64_t a3, int a4, int a5)
{
  add = 0;
  v10 = xmlStrdup("[");
  *a2 = v10;
  if (a4 >= 1)
  {
    v11 = 0;
    do
    {
      *a2 = xmlStrcat(*a2, "'");
      v12 = *(a3 + 8 * v11);
      v13 = *(v12 + 8);
      if (a5)
      {
        v14 = *(v12 + 8);
        WhiteSpaceFacetValue = 3;
        v16 = 1;
      }

      else
      {
        WhiteSpaceFacetValue = xmlSchemaGetWhiteSpaceFacetValue(*v12);
        v14 = v13;
        v16 = 0;
      }

      if (xmlSchemaGetCanonValueWhtspExt_1(v14, WhiteSpaceFacetValue, &add, v16))
      {
        xmlSchemaInternalErr2(a1, "xmlSchemaFormatIDCKeySequence", "failed to compute a canonical value", 0);
        v17 = *a2;
        v18 = "???";
      }

      else
      {
        v17 = *a2;
        v18 = add;
      }

      v19 = xmlStrcat(v17, v18);
      *a2 = v19;
      if (v11 >= (a4 - 1))
      {
        v20 = "'";
      }

      else
      {
        v20 = "', ";
      }

      *a2 = xmlStrcat(v19, v20);
      if (add)
      {
        free(add);
        add = 0;
      }

      ++v11;
    }

    while (a4 != v11);
    v10 = *a2;
  }

  result = xmlStrcat(v10, "]");
  *a2 = result;
  return result;
}

uint64_t xmlSchemaVCheckINodeDataType(uint64_t a1, uint64_t a2, uint64_t a3, xmlChar *a4)
{
  if ((*(a2 + 64) & 0x10) != 0)
  {
    v4 = (a2 + 48);
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return xmlSchemaVCheckCVCSimpleType(a1, 0, a3, a4, v4, 1u, v5, 0);
}

uint64_t xmlSchemaCheckCOSValidDefault(uint64_t a1, xmlChar *a2, xmlSchemaValPtr *a3)
{
  v6 = *(*(a1 + 192) + 56);
  v7 = *v6;
  if (*v6 != 5 && *(v6 + 160) != 45 || ((v8 = *(v6 + 92), v8 != 6) ? (v9 = v8 == 4) : (v9 = 1), v9 || v8 == 3 && xmlSchemaIsParticleEmptiable(*(v6 + 56))))
  {
    if (v7 == 4 || v7 == 1 && *(v6 + 160) != 45)
    {
      v11 = a1;
      v10 = v6;
    }

    else
    {
      if ((*(v6 + 92) | 2) != 6)
      {
        return 0;
      }

      v10 = *(v6 + 192);
      v11 = a1;
    }

    v12 = xmlSchemaVCheckCVCSimpleType(v11, 0, v10, a2, a3, 1u, 1, 0);
    if ((v12 & 0x80000000) != 0)
    {
      xmlSchemaInternalErr2(a1, "xmlSchemaCheckCOSValidDefault", "calling xmlSchemaVCheckCVCSimpleType()", 0);
    }
  }

  else
  {
    v12 = 3059;
    xmlSchemaCustomErr4(a1, 3059, 0, 0, "For a string to be a valid default, the type definition must be a simple type or a complex type with simple content or mixed content and a particle emptiable", 0, 0, 0, 0);
  }

  return v12;
}

void *xmlSchemaIDCNewBinding(uint64_t a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10A00408793F413uLL);
  v3 = v2;
  if (v2)
  {
    v2[4] = 0;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v2[1] = a1;
  }

  else
  {
    __xmlSimpleError(0x11u, 2, 0, 0, "allocating a PSVI IDC binding item");
  }

  return v3;
}

void xmlSchemaKeyrefErr(uint64_t a1, uint64_t a2, const xmlChar *a3, xmlChar *a4, xmlChar *a5)
{
  v16 = 0;
  v10 = xmlStrdup("Element '%s': ");
  v11 = xmlStrcat(v10, a3);
  v12 = xmlStrcat(v11, ".\n");
  v13 = *(a2 + 16);
  v14 = **(a1 + 312) + 8 * *(a2 + 20);
  v15 = xmlSchemaFormatQName(&v16, *(v14 + 8), *v14);
  xmlSchemaErr4Line(a1, 2, 1877, 0, v13, v12, v15, a4, a5, 0);
  if (v16)
  {
    free(v16);
  }

  if (v12)
  {

    free(v12);
  }
}

void xmlSchemaInitTypes(void)
{
  if ((xmlSchemaTypesInitialized & 1) == 0)
  {
    xmlSchemaTypesBank = xmlHashCreate(40);
    inited = xmlSchemaInitBasicType("anyType", 0x2Du, 0);
    xmlSchemaTypeAnyTypeDef = inited;
    inited->baseType = inited;
    inited->contentType = XML_SCHEMA_CONTENT_MIXED;
    v1 = xmlSchemaAddParticle_0();
    if (v1)
    {
      v2 = v1;
      *(xmlSchemaTypeAnyTypeDef + 56) = v1;
      v3 = malloc_type_malloc(0x28uLL, 0x1020040E2DCC865uLL);
      if (v3)
      {
        v4 = v3;
        *(v3 + 9) = 0;
        *(v3 + 20) = 0u;
        *(v3 + 4) = 0u;
        *v3 = 6;
        *(v2 + 3) = v3;
        v5 = xmlSchemaAddParticle_0();
        if (!v5)
        {
          return;
        }

        v6 = v5;
        *(v5 + 4) = 0x4000000000000000;
        *(v4 + 3) = v5;
        v7 = malloc_type_malloc(0x48uLL, 0x1070040CB5E18C6uLL);
        if (v7)
        {
          *(v7 + 36) = 0u;
          *(v7 + 17) = 0;
          *(v7 + 52) = 0u;
          *(v7 + 20) = 0u;
          *(v7 + 4) = 0u;
          *v7 = 2;
          *(v7 + 5) = 0x100000002;
          *(v6 + 3) = v7;
          v8 = malloc_type_malloc(0x48uLL, 0x1070040CB5E18C6uLL);
          if (v8)
          {
            v8[8] = 0;
            *(v8 + 2) = 0u;
            *(v8 + 3) = 0u;
            *v8 = 0u;
            *(v8 + 1) = 0u;
            v8[5] = 0x100000002;
            v9 = xmlSchemaTypeAnyTypeDef;
            *(xmlSchemaTypeAnyTypeDef + 152) = v8;
            xmlSchemaTypeAnySimpleTypeDef = xmlSchemaInitBasicType("anySimpleType", 0x2Eu, v9);
            xmlSchemaTypeStringDef = xmlSchemaInitBasicType("string", 1u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeDecimalDef = xmlSchemaInitBasicType("decimal", 3u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeDateDef = xmlSchemaInitBasicType("date", 0xAu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeDatetimeDef = xmlSchemaInitBasicType("dateTime", 0xBu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeTimeDef = xmlSchemaInitBasicType("time", 4u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeGYearDef = xmlSchemaInitBasicType("gYear", 8u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeGYearMonthDef = xmlSchemaInitBasicType("gYearMonth", 9u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeGMonthDef = xmlSchemaInitBasicType("gMonth", 6u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeGMonthDayDef = xmlSchemaInitBasicType("gMonthDay", 7u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeGDayDef = xmlSchemaInitBasicType("gDay", 5u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeDurationDef = xmlSchemaInitBasicType("duration", 0xCu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeFloatDef = xmlSchemaInitBasicType("float", 0xDu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeDoubleDef = xmlSchemaInitBasicType("double", 0xEu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeBooleanDef = xmlSchemaInitBasicType("BOOLean", 0xFu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeAnyURIDef = xmlSchemaInitBasicType("anyURI", 0x1Du, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeHexBinaryDef = xmlSchemaInitBasicType("hexBinary", 0x2Bu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeBase64BinaryDef = xmlSchemaInitBasicType("base64Binary", 0x2Cu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeNotationDef = xmlSchemaInitBasicType("NOTATION", 0x1Cu, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeQNameDef = xmlSchemaInitBasicType("QName", 0x15u, xmlSchemaTypeAnySimpleTypeDef);
            xmlSchemaTypeIntegerDef = xmlSchemaInitBasicType("integer", 0x1Eu, xmlSchemaTypeDecimalDef);
            xmlSchemaTypeNonPositiveIntegerDef = xmlSchemaInitBasicType("nonPositiveInteger", 0x1Fu, xmlSchemaTypeIntegerDef);
            xmlSchemaTypeNegativeIntegerDef = xmlSchemaInitBasicType("negativeInteger", 0x20u, xmlSchemaTypeNonPositiveIntegerDef);
            xmlSchemaTypeLongDef = xmlSchemaInitBasicType("long", 0x25u, xmlSchemaTypeIntegerDef);
            xmlSchemaTypeIntDef = xmlSchemaInitBasicType("int", 0x23u, xmlSchemaTypeLongDef);
            xmlSchemaTypeShortDef = xmlSchemaInitBasicType("short", 0x27u, xmlSchemaTypeIntDef);
            xmlSchemaTypeByteDef = xmlSchemaInitBasicType("byte", 0x29u, xmlSchemaTypeShortDef);
            xmlSchemaTypeNonNegativeIntegerDef = xmlSchemaInitBasicType("nonNegativeInteger", 0x21u, xmlSchemaTypeIntegerDef);
            xmlSchemaTypeUnsignedLongDef = xmlSchemaInitBasicType("unsignedLong", 0x26u, xmlSchemaTypeNonNegativeIntegerDef);
            xmlSchemaTypeUnsignedIntDef = xmlSchemaInitBasicType("unsignedInt", 0x24u, xmlSchemaTypeUnsignedLongDef);
            xmlSchemaTypeUnsignedShortDef = xmlSchemaInitBasicType("unsignedShort", 0x28u, xmlSchemaTypeUnsignedIntDef);
            xmlSchemaTypeUnsignedByteDef = xmlSchemaInitBasicType("unsignedByte", 0x2Au, xmlSchemaTypeUnsignedShortDef);
            xmlSchemaTypePositiveIntegerDef = xmlSchemaInitBasicType("positiveInteger", 0x22u, xmlSchemaTypeNonNegativeIntegerDef);
            xmlSchemaTypeNormStringDef = xmlSchemaInitBasicType("normalizedString", 2u, xmlSchemaTypeStringDef);
            xmlSchemaTypeTokenDef = xmlSchemaInitBasicType("token", 0x10u, xmlSchemaTypeNormStringDef);
            xmlSchemaTypeLanguageDef = xmlSchemaInitBasicType("language", 0x11u, xmlSchemaTypeTokenDef);
            xmlSchemaTypeNameDef = xmlSchemaInitBasicType("Name", 0x14u, xmlSchemaTypeTokenDef);
            xmlSchemaTypeNmtokenDef = xmlSchemaInitBasicType("NMTOKEN", 0x12u, xmlSchemaTypeTokenDef);
            xmlSchemaTypeNCNameDef = xmlSchemaInitBasicType("NCName", 0x16u, xmlSchemaTypeNameDef);
            xmlSchemaTypeIdDef = xmlSchemaInitBasicType("ID", 0x17u, xmlSchemaTypeNCNameDef);
            xmlSchemaTypeIdrefDef = xmlSchemaInitBasicType("IDREF", 0x18u, xmlSchemaTypeNCNameDef);
            xmlSchemaTypeEntityDef = xmlSchemaInitBasicType("ENTITY", 0x1Au, xmlSchemaTypeNCNameDef);
            xmlSchemaTypeEntitiesDef = xmlSchemaInitBasicType("ENTITIES", 0x1Bu, xmlSchemaTypeAnySimpleTypeDef);
            *(xmlSchemaTypeEntitiesDef + 56) = xmlSchemaTypeEntityDef;
            xmlSchemaTypeIdrefsDef = xmlSchemaInitBasicType("IDREFS", 0x19u, xmlSchemaTypeAnySimpleTypeDef);
            *(xmlSchemaTypeIdrefsDef + 56) = xmlSchemaTypeIdrefDef;
            xmlSchemaTypeNmtokensDef = xmlSchemaInitBasicType("NMTOKENS", 0x13u, xmlSchemaTypeAnySimpleTypeDef);
            *(xmlSchemaTypeNmtokensDef + 56) = xmlSchemaTypeNmtokenDef;
            xmlSchemaTypesInitialized = 1;
            return;
          }

          v10 = "could not create an attribute wildcard on anyType";
        }

        else
        {
          v10 = "allocating wildcard component";
        }
      }

      else
      {
        v10 = "allocating model group component";
      }

      __xmlSimpleError(0xFu, 2, 0, 0, v10);
    }
  }
}

xmlSchemaType *xmlSchemaInitBasicType(const xmlChar *name, unsigned int a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0xE0uLL, 0x10F00408DAE91E3uLL);
  v7 = v6;
  if (!v6)
  {
    __xmlSimpleError(0xFu, 2, 0, 0, "could not initialize basic types");
    return v7;
  }

  *(v6 + 20) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 13) = 0u;
  *(v6 + 196) = 0u;
  *(v6 + 116) = 0u;
  *(v6 + 100) = 0u;
  *(v6 + 84) = 0u;
  *(v6 + 180) = 0u;
  *(v6 + 164) = 0u;
  *(v6 + 148) = 0u;
  *(v6 + 132) = 0u;
  *(v6 + 68) = 0u;
  *(v6 + 52) = 0u;
  *(v6 + 36) = 0u;
  *(v6 + 2) = name;
  *(v6 + 26) = "http://www.w3.org/2001/XMLSchema";
  *v6 = 1;
  *(v6 + 14) = a3;
  v8 = 256;
  *(v6 + 23) = 6;
  if (a2 > 0x2E)
  {
    goto LABEL_5;
  }

  if (((1 << a2) & 0x18003020FFFALL) != 0)
  {
    v8 = 16640;
LABEL_5:
    *(v6 + 22) = v8;
    goto LABEL_6;
  }

  if (((1 << a2) & 0xA080000) != 0)
  {
    *(v6 + 22) = 64;
    v10 = xmlSchemaNewFacet();
    v11 = v10;
    if (v10)
    {
      v10->type = XML_SCHEMA_FACET_MINLENGTH;
      v12 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (v12)
      {
        v12[2] = 0u;
        *(v12 + 20) = 0u;
        *(v12 + 4) = 0u;
        *v12 = 33;
        v11[7] = v12;
        *(v12 + 2) = 1;
      }

      else
      {
        free(v11);
        v11 = 0;
      }
    }

    v7->facets = v11;
    v7->flags |= 0x8000000u;
    name = v7->name;
    goto LABEL_6;
  }

  if (((1 << a2) & 0x600000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  if (xmlHashAddEntry2(xmlSchemaTypesBank, name, "http://www.w3.org/2001/XMLSchema", v7) < 0)
  {
    xmlSchemaFreeType(v7);
    return 0;
  }

  else
  {
    v7->builtInType = a2;
  }

  return v7;
}

_OWORD *xmlSchemaAddParticle_0()
{
  v0 = malloc_type_malloc(0x30uLL, 0x1020040EC2530C8uLL);
  v1 = v0;
  if (v0)
  {
    v0[2] = 0u;
    *(v0 + 20) = 0u;
    *(v0 + 4) = 0u;
    *v0 = 25;
    *(v0 + 4) = 0x100000001;
  }

  else
  {
    __xmlSimpleError(0xFu, 2, 0, 0, "allocating particle component");
  }

  return v1;
}

void xmlSchemaCleanupTypes(void)
{
  if (xmlSchemaTypesInitialized == 1)
  {
    xmlSchemaFreeWildcard(*(xmlSchemaTypeAnyTypeDef + 152));
    v0 = xmlSchemaTypeAnyTypeDef;
    v1 = *(xmlSchemaTypeAnyTypeDef + 56);
    if (v1)
    {
      v2 = v1[3];
      if (v2)
      {
        v3 = v2[3];
        if (v3)
        {
          xmlSchemaFreeWildcard(*(v3 + 24));
          free(*(v1[3] + 24));
          v2 = v1[3];
          v0 = xmlSchemaTypeAnyTypeDef;
        }

        free(v2);
      }

      free(v1);
    }

    *(v0 + 56) = 0;
    xmlHashFree(xmlSchemaTypesBank, xmlSchemaFreeTypeEntry);
    xmlSchemaTypesInitialized = 0;
  }
}

int xmlSchemaIsBuiltInTypeFacet(xmlSchemaTypePtr type, int facetType)
{
  if (!type || type->type != XML_SCHEMA_TYPE_BASIC)
  {
    return -1;
  }

  builtInType = type->builtInType;
  if (builtInType <= 0x2C)
  {
    if (((1 << builtInType) & 0x7FF0) != 0)
    {
      if ((facetType - 1000) > 8)
      {
        return 0;
      }

      else
      {
        return dword_1C79BAFF8[facetType - 1000];
      }
    }

    if (((1 << builtInType) & 0x180030200000) != 0)
    {
      return (facetType - 1006) < 6;
    }

    if (builtInType == 15)
    {
      return ((facetType - 1006) & 0xFFFFFFFD) == 0;
    }
  }

  if (builtInType == 1)
  {
    return (facetType - 1006) < 6;
  }

  return builtInType == 3 && (facetType - 1000) < 9;
}

xmlSchemaTypePtr xmlSchemaGetBuiltInType(xmlSchemaValType type)
{
  if ((xmlSchemaTypesInitialized & 1) == 0)
  {
    xmlSchemaInitTypes();
  }

  switch(type)
  {
    case XML_SCHEMAS_STRING:
      result = xmlSchemaTypeStringDef;
      break;
    case XML_SCHEMAS_NORMSTRING:
      result = xmlSchemaTypeNormStringDef;
      break;
    case XML_SCHEMAS_DECIMAL:
      result = xmlSchemaTypeDecimalDef;
      break;
    case XML_SCHEMAS_TIME:
      result = xmlSchemaTypeTimeDef;
      break;
    case XML_SCHEMAS_GDAY:
      result = xmlSchemaTypeGDayDef;
      break;
    case XML_SCHEMAS_GMONTH:
      result = xmlSchemaTypeGMonthDef;
      break;
    case XML_SCHEMAS_GMONTHDAY:
      result = xmlSchemaTypeGMonthDayDef;
      break;
    case XML_SCHEMAS_GYEAR:
      result = xmlSchemaTypeGYearDef;
      break;
    case XML_SCHEMAS_GYEARMONTH:
      result = xmlSchemaTypeGYearMonthDef;
      break;
    case XML_SCHEMAS_DATE:
      result = xmlSchemaTypeDateDef;
      break;
    case XML_SCHEMAS_DATETIME:
      result = xmlSchemaTypeDatetimeDef;
      break;
    case XML_SCHEMAS_DURATION:
      result = xmlSchemaTypeDurationDef;
      break;
    case XML_SCHEMAS_FLOAT:
      result = xmlSchemaTypeFloatDef;
      break;
    case XML_SCHEMAS_DOUBLE:
      result = xmlSchemaTypeDoubleDef;
      break;
    case XML_SCHEMAS_BOOLEAN:
      result = xmlSchemaTypeBooleanDef;
      break;
    case XML_SCHEMAS_TOKEN:
      result = xmlSchemaTypeTokenDef;
      break;
    case XML_SCHEMAS_LANGUAGE:
      result = xmlSchemaTypeLanguageDef;
      break;
    case XML_SCHEMAS_NMTOKEN:
      result = xmlSchemaTypeNmtokenDef;
      break;
    case XML_SCHEMAS_NMTOKENS:
      result = xmlSchemaTypeNmtokensDef;
      break;
    case XML_SCHEMAS_NAME:
      result = xmlSchemaTypeNameDef;
      break;
    case XML_SCHEMAS_QNAME:
      result = xmlSchemaTypeQNameDef;
      break;
    case XML_SCHEMAS_NCNAME:
      result = xmlSchemaTypeNCNameDef;
      break;
    case XML_SCHEMAS_ID:
      result = xmlSchemaTypeIdDef;
      break;
    case XML_SCHEMAS_IDREF:
      result = xmlSchemaTypeIdrefDef;
      break;
    case XML_SCHEMAS_IDREFS:
      result = xmlSchemaTypeIdrefsDef;
      break;
    case XML_SCHEMAS_ENTITY:
      result = xmlSchemaTypeEntityDef;
      break;
    case XML_SCHEMAS_ENTITIES:
      result = xmlSchemaTypeEntitiesDef;
      break;
    case XML_SCHEMAS_NOTATION:
      result = xmlSchemaTypeNotationDef;
      break;
    case XML_SCHEMAS_ANYURI:
      result = xmlSchemaTypeAnyURIDef;
      break;
    case XML_SCHEMAS_INTEGER:
      result = xmlSchemaTypeIntegerDef;
      break;
    case XML_SCHEMAS_NPINTEGER:
      result = xmlSchemaTypeNonPositiveIntegerDef;
      break;
    case XML_SCHEMAS_NINTEGER:
      result = xmlSchemaTypeNegativeIntegerDef;
      break;
    case XML_SCHEMAS_NNINTEGER:
      result = xmlSchemaTypeNonNegativeIntegerDef;
      break;
    case XML_SCHEMAS_PINTEGER:
      result = xmlSchemaTypePositiveIntegerDef;
      break;
    case XML_SCHEMAS_INT:
      result = xmlSchemaTypeIntDef;
      break;
    case XML_SCHEMAS_UINT:
      result = xmlSchemaTypeUnsignedIntDef;
      break;
    case XML_SCHEMAS_LONG:
      result = xmlSchemaTypeLongDef;
      break;
    case XML_SCHEMAS_ULONG:
      result = xmlSchemaTypeUnsignedLongDef;
      break;
    case XML_SCHEMAS_SHORT:
      result = xmlSchemaTypeShortDef;
      break;
    case XML_SCHEMAS_USHORT:
      result = xmlSchemaTypeUnsignedShortDef;
      break;
    case XML_SCHEMAS_BYTE:
      result = xmlSchemaTypeByteDef;
      break;
    case XML_SCHEMAS_UBYTE:
      result = xmlSchemaTypeUnsignedByteDef;
      break;
    case XML_SCHEMAS_HEXBINARY:
      result = xmlSchemaTypeHexBinaryDef;
      break;
    case XML_SCHEMAS_BASE64BINARY:
      result = xmlSchemaTypeBase64BinaryDef;
      break;
    case XML_SCHEMAS_ANYTYPE:
      result = xmlSchemaTypeAnyTypeDef;
      break;
    case XML_SCHEMAS_ANYSIMPLETYPE:
      result = xmlSchemaTypeAnySimpleTypeDef;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

int xmlSchemaValueAppend(xmlSchemaValPtr prev, xmlSchemaValPtr cur)
{
  result = -1;
  if (prev)
  {
    if (cur)
    {
      result = 0;
      *(prev + 1) = cur;
    }
  }

  return result;
}

xmlSchemaValPtr xmlSchemaValueGetNext(xmlSchemaValPtr cur)
{
  if (cur)
  {
    return *(cur + 1);
  }

  return cur;
}

const xmlChar *__cdecl xmlSchemaValueGetAsString(const xmlChar *val)
{
  if (val)
  {
    if (*val <= 0x2Eu)
    {
      v1 = ((1 << *val) & 0x400025D70006) == 0;
      *val;
    }

    else
    {
      v1 = 1;
    }

    if (v1)
    {
      return 0;
    }

    else
    {
      return *(val + 2);
    }
  }

  return val;
}

int xmlSchemaValueGetAsBoolean(xmlSchemaValPtr val)
{
  if (val)
  {
    if (*val == 15)
    {
      LODWORD(val) = *(val + 4);
    }

    else
    {
      LODWORD(val) = 0;
    }
  }

  return val;
}

xmlSchemaValPtr xmlSchemaNewStringValue(xmlSchemaValType type, const xmlChar *value)
{
  if (type != XML_SCHEMAS_STRING)
  {
    return 0;
  }

  result = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (result)
  {
    *(result + 20) = 0u;
    *(result + 4) = 0u;
    *(result + 2) = 0u;
    *result = 1;
    *(result + 2) = value;
  }

  return result;
}

xmlSchemaValPtr xmlSchemaNewNOTATIONValue(const xmlChar *name, const xmlChar *ns)
{
  result = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (result)
  {
    *(result + 20) = 0u;
    *(result + 4) = 0u;
    *(result + 2) = 0u;
    *result = 28;
    *(result + 2) = name;
    if (ns)
    {
      *(result + 3) = ns;
    }
  }

  return result;
}

xmlSchemaValPtr xmlSchemaNewQNameValue(const xmlChar *namespaceName, const xmlChar *localName)
{
  result = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (result)
  {
    *(result + 20) = 0u;
    *(result + 4) = 0u;
    *(result + 2) = 0u;
    *result = 21;
    *(result + 2) = localName;
    *(result + 3) = namespaceName;
  }

  return result;
}

void xmlSchemaFreeValue(xmlSchemaValPtr val)
{
  if (val)
  {
    v1 = val;
    do
    {
      v2 = *v1;
      if (*v1 <= 21)
      {
        if ((v2 - 16) < 5 || (v2 - 1) < 2)
        {
          goto LABEL_19;
        }

        if (v2 == 21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v2 < 28)
        {
          goto LABEL_19;
        }

        if (v2 > 42)
        {
          if (v2 != 43 && v2 != 44 && v2 != 46)
          {
            goto LABEL_21;
          }

          goto LABEL_19;
        }

        if (v2 == 28)
        {
LABEL_17:
          v3 = *(v1 + 3);
          if (v3)
          {
            free(v3);
          }

LABEL_19:
          v4 = *(v1 + 2);
          if (v4)
          {
            free(v4);
          }

          goto LABEL_21;
        }

        if (v2 == 29)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v5 = *(v1 + 1);
      free(v1);
      v1 = v5;
    }

    while (v5);
  }
}

xmlSchemaTypePtr xmlSchemaGetPredefinedType(const xmlChar *name, const xmlChar *ns)
{
  if ((xmlSchemaTypesInitialized & 1) == 0)
  {
    xmlSchemaInitTypes();
  }

  if (!name)
  {
    return 0;
  }

  v4 = xmlSchemaTypesBank;

  return xmlHashLookup2(v4, name, ns);
}

xmlSchemaTypePtr xmlSchemaGetBuiltInListSimpleTypeItemType(xmlSchemaTypePtr type)
{
  if (type)
  {
    if (type->type != XML_SCHEMA_TYPE_BASIC)
    {
      return 0;
    }

    builtInType = type->builtInType;
    switch(builtInType)
    {
      case 27:
        return xmlSchemaTypeEntityDef;
      case 25:
        return xmlSchemaTypeIdrefDef;
      case 19:
        return xmlSchemaTypeNmtokenDef;
      default:
        return 0;
    }
  }

  return type;
}

xmlChar *__cdecl xmlSchemaWhiteSpaceReplace(xmlChar *value)
{
  if (value)
  {
    for (i = 0; ; ++i)
    {
      v2 = value[i];
      if ((v2 - 9) < 2)
      {
        break;
      }

      if (!value[i])
      {
        return 0;
      }

      if (v2 == 13)
      {
        break;
      }
    }

    value = xmlStrdup(value);
    if (value)
    {
      v3 = &value[i + 1];
      v4 = value[i];
      do
      {
        if (v4 <= 0xD && ((1 << v4) & 0x2600) != 0)
        {
          *(v3 - 1) = 32;
        }

        v5 = *v3++;
        v4 = v5;
      }

      while (v5);
    }
  }

  return value;
}

xmlChar *__cdecl xmlSchemaCollapseString(xmlChar *value)
{
  if (!value)
  {
    return value;
  }

  v1 = 0;
  for (i = value; ; ++i)
  {
    v3 = *value;
    if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    ++value;
    --v1;
  }

  v5 = 0;
  for (j = 0; ; ++j)
  {
    if (v3 <= 0x1Fu)
    {
      if (v3 - 9 < 2)
      {
        break;
      }

      if (!v3)
      {
        goto LABEL_33;
      }

      if (v3 == 13)
      {
        break;
      }

LABEL_19:
      LOBYTE(v3) = value[j + 1];
      goto LABEL_20;
    }

    if (v3 != 32)
    {
      goto LABEL_19;
    }

    v3 = value[j + 1];
    if (v3 <= 0x20 && ((1 << v3) & 0x100002600) != 0)
    {
      break;
    }

LABEL_20:
    v5 += 0x100000000;
  }

  if (j)
  {
    value = xmlStrdup(value);
    if (!value)
    {
      return value;
    }

    v8 = &value[v5 >> 32];
    v9 = v8;
LABEL_24:
    while (2)
    {
      v10 = *v8;
      if (v10 <= 0x20)
      {
        if (((1 << v10) & 0x100002600) != 0)
        {
          while (1)
          {
            v12 = *++v8;
            v11 = v12;
            if (v12 > 0x20)
            {
              break;
            }

            if (((1 << v11) & 0x100002600) == 0)
            {
              if (!v11)
              {
                goto LABEL_24;
              }

              break;
            }
          }

          LOBYTE(v10) = 32;
          goto LABEL_32;
        }

        if (!*v8)
        {
          *v9 = 0;
          return value;
        }
      }

      ++v8;
LABEL_32:
      *v9++ = v10;
      continue;
    }
  }

LABEL_33:
  v13 = &value[j];
  v14 = v13 - 1;
  v15 = v13;
  if (v13 - 1 > value)
  {
    do
    {
      v16 = *v14;
      v17 = v16 > 0x20;
      v18 = (1 << v16) & 0x100002600;
      if (v17 || v18 == 0)
      {
        break;
      }

      --v14;
    }

    while (v14 > value);
    v15 = v14 + 1;
  }

  if (!v1 && v13 == v15)
  {
    return 0;
  }

  return xmlStrndup(value, v15 - i);
}

uint64_t xmlSchemaValAtomicType(uint64_t a1, char *a2, xmlChar **a3, uint64_t a4, int a5, int a6, int a7)
{
  v259 = *MEMORY[0x1E69E9840];
  if ((xmlSchemaTypesInitialized & 1) == 0)
  {
    xmlSchemaInitTypes();
  }

  if (!a1)
  {
    goto LABEL_607;
  }

  if (!a2)
  {
    a2 = "";
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a5 || ((v14 = *(a1 + 160), (v14 - 45) >= 2) ? (v15 = v14 == 1) : (v15 = 1), v15))
  {
    v16 = 0;
  }

  else
  {
    if (v14 == 2)
    {
      v27 = xmlSchemaWhiteSpaceReplace(a2);
    }

    else
    {
      v27 = xmlSchemaCollapseString(a2);
    }

    v16 = v27;
    if (v27)
    {
      a2 = v27;
    }
  }

  v17 = *(a1 + 160);
  switch(v17)
  {
    case 0:
      goto LABEL_605;
    case 1:
      if (!a3 || !a7)
      {
        goto LABEL_637;
      }

      v134 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v134)
      {
        goto LABEL_605;
      }

      v69 = v134;
      if (v16)
      {
        v135 = a6 == 0;
      }

      else
      {
        v135 = 1;
      }

      if (v135)
      {
        v136 = a2;
      }

      else
      {
        v136 = v16;
      }

      v69[2] = 0u;
      *(v69 + 20) = 0u;
      *(v69 + 4) = 0u;
      *v69 = 1;
      goto LABEL_283;
    case 2:
      if (a6)
      {
        v128 = xmlSchemaWhiteSpaceReplace(a2);
        v16 = v128;
        if (v128)
        {
          a2 = v128;
        }
      }

      if (!a3)
      {
        goto LABEL_637;
      }

      v129 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v129)
      {
        goto LABEL_605;
      }

      v69 = v129;
      v129[2] = 0u;
      *(v129 + 20) = 0u;
      *(v129 + 4) = 0u;
      v70 = 2;
      goto LABEL_282;
    case 3:
      memset(prefix, 0, sizeof(prefix));
      v258 = 0;
      v256 = prefix;
      v131 = *a2;
      if (!*a2)
      {
        goto LABEL_631;
      }

      v132 = a2 + 1;
      while (2)
      {
        if (v131 > 0x2D)
        {
          goto LABEL_438;
        }

        if (((1 << v131) & 0x100002600) != 0)
        {
          v133 = *v132++;
          v131 = v133;
          continue;
        }

        break;
      }

      if (v131 == 43)
      {
        v158 = 0;
      }

      else if (v131 == 45)
      {
        v158 = 1;
      }

      else
      {
LABEL_438:
        v158 = 0;
        --v132;
      }

      v193 = *v132;
      if (!*v132)
      {
        goto LABEL_631;
      }

      v194 = 0;
      while (v193 == 48)
      {
        v195 = *++v132;
        v193 = v195;
        v194 = 1;
      }

      if (!v193)
      {
        LODWORD(v196) = 0;
        v197 = -1;
        v198 = prefix;
        goto LABEL_612;
      }

      v196 = 0;
      while (1)
      {
        v201 = v132[v196];
        if ((v201 - 48) > 9)
        {
          break;
        }

        *(prefix + v196) = v201;
        v256 = (prefix + ++v196);
        if (v196 == 24)
        {
          v198 = (prefix + v196);
          v132 += v196;
          v197 = -1;
LABEL_553:
          LODWORD(v196) = 24;
          goto LABEL_612;
        }
      }

      v132 += v196;
      if (v201 == 46)
      {
        ++v132;
        v217 = v196;
        while (1)
        {
          v218 = *v132;
          if ((v218 - 48) > 9)
          {
            break;
          }

          ++v132;
          *(prefix + v217) = v218;
          v256 = (prefix + ++v217);
          if (v217 == 24)
          {
            v198 = (prefix + v217);
            v197 = v196;
            goto LABEL_553;
          }
        }

        if (((v217 == 0) & ~v194) != 0)
        {
          goto LABEL_631;
        }

        v198 = (prefix + v217);
        v197 = v196;
        LODWORD(v196) = v217;
      }

      else
      {
        v198 = (prefix + v196);
        v197 = -1;
      }

LABEL_612:
      while (1)
      {
        v227 = *v132;
        if (v227 > 0x20 || ((1 << v227) & 0x100002600) == 0)
        {
          break;
        }

        ++v132;
      }

      if (a3 && !*v132)
      {
        v229 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
        if (v229)
        {
          v230 = v229;
          *(v229 + 2) = 0u;
          *(v229 + 20) = 0u;
          *(v229 + 4) = 0u;
          *v229 = 3;
          if (!v196)
          {
            goto LABEL_634;
          }

          if (v197 == -1 || v196 == v197)
          {
            goto LABEL_628;
          }

          v231 = v198;
          while (1)
          {
            v232 = *(v231 - 1);
            v231 = (v231 - 1);
            if (v232 != 48)
            {
              break;
            }

            LODWORD(v196) = v196 - 1;
            v198 = v231;
            if (v197 == v196)
            {
              v198 = v231;
              LODWORD(v196) = v197;
              break;
            }
          }

          if (v196)
          {
LABEL_628:
            *v198 = 0;
            v256 = prefix;
            xmlSchemaParseUInt(&v256, v229 + 2, v229 + 3, v229 + 4);
            v233 = *(v230 + 22) & 0xFE | (v196 << 8) | v158;
            if (v197 == -1)
            {
              v234 = (v196 << 8) | v158 & 0xFF01;
            }

            else
            {
              v234 = (v196 << 8) | v158 & 0xFF01 | (2 * ((v196 - v197) & 0x7F));
            }
          }

          else
          {
LABEL_634:
            v234 = v158 | 0x100;
          }

          *(v230 + 22) = v234;
          *a3 = v230;
        }

        goto LABEL_637;
      }

      if (!*v132)
      {
        goto LABEL_637;
      }

      goto LABEL_631;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      for (i = a2; ; ++i)
      {
        prefix[0] = i;
        v19 = *i;
        v56 = v19 > 0x20;
        v20 = (1 << v19) & 0x100002600;
        if (v56 || v20 == 0)
        {
          break;
        }
      }

      v22 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v22)
      {
        v38 = 0xFFFFFFFFLL;
        goto LABEL_662;
      }

      v23 = v22;
      v22[1] = 0u;
      v22[2] = 0u;
      *v22 = 0u;
      v24 = *i;
      if (v24 == 45)
      {
        if (i[1] == 45)
        {
          prefix[0] = i + 2;
          if (i[2] == 45)
          {
            if (v17 == 6)
            {
              goto LABEL_655;
            }

            prefix[0] = i + 3;
            if (_xmlSchemaParseGDay((v22 + 1), prefix))
            {
              goto LABEL_655;
            }

            v25 = *prefix[0];
            if ((v25 - 43) > 0x2F || ((1 << (v25 - 43)) & 0x800000000005) == 0)
            {
              if (*prefix[0])
              {
                goto LABEL_655;
              }
            }

            if (_xmlSchemaParseTimeZone((v23 + 1), prefix) || *prefix[0])
            {
              goto LABEL_655;
            }

            v26 = 5;
            goto LABEL_653;
          }

          if (!_xmlSchemaParseGMonth((v22 + 1), prefix))
          {
            v150 = prefix[0];
            v151 = *prefix[0];
            if (v151 != 45)
            {
              goto LABEL_647;
            }

            ++prefix[0];
            if (_xmlSchemaParseGDay((v23 + 1), prefix) || (v152 = *prefix[0], v152 == 58) || ((v153 = 0x8F5C28F5C28F5C29 * *(v23 + 2), v154 = __ROR8__(v153 + 0x51EB851EB851EB8, 2), (v23[1] & 3) == 0) ? (v155 = v154 > 0x28F5C28F5C28F5CLL) : (v155 = 0), !v155 ? (v156 = 0) : (v156 = 1), __ROR8__(v153 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL || v156 ? (v157 = &daysInMonthLeap) : (v157 = &daysInMonth), ((*(v23 + 6) >> 4) & 0x1Fu) > v157[(*(v23 + 6) & 0xF) - 1]))
            {
              prefix[0] = v150;
              v151 = *v150;
LABEL_647:
              if (((v151 - 43) > 0x2F || ((1 << (v151 - 43)) & 0x800000000005) == 0) && v151 || _xmlSchemaParseTimeZone((v23 + 1), prefix) || *prefix[0])
              {
                goto LABEL_655;
              }

              v26 = 6;
              goto LABEL_653;
            }

            if (((v152 - 43) > 0x2F || ((1 << (v152 - 43)) & 0x800000000005) == 0) && *prefix[0] || _xmlSchemaParseTimeZone((v23 + 1), prefix) || *prefix[0])
            {
              goto LABEL_655;
            }

            v26 = 7;
LABEL_653:
            *v23 = v26;
            if (v17 && v26 != v17)
            {
              goto LABEL_655;
            }

            if (a3)
            {
              goto LABEL_658;
            }

            xmlSchemaFreeValue(v23);
            goto LABEL_661;
          }

          goto LABEL_655;
        }
      }

      else if ((v24 - 48) <= 9 && !_xmlSchemaParseTime((v22 + 1), prefix))
      {
        v39 = *prefix[0];
        v40 = (v39 - 43) > 0x2F || ((1 << (v39 - 43)) & 0x800000000005) == 0;
        v41 = !v40 || v39 == 0;
        if (v41 && !_xmlSchemaParseTimeZone((v23 + 1), prefix))
        {
          if (!*prefix[0])
          {
            v26 = 4;
            goto LABEL_653;
          }

          goto LABEL_655;
        }
      }

      prefix[0] = a2;
      v42 = *a2;
      if ((v42 - 58) > 0xFFFFFFF5 || v42 == 45 || v42 == 43)
      {
        v43 = (v42 == 45 ? a2 + 1 : a2);
        LODWORD(v44) = *v43;
        if ((v44 - 48) <= 9)
        {
          v45 = *(v23 + 2);
          v46 = -1;
          v47 = v43;
          do
          {
            if (v45 > 0xCCCCCCCCCCCCCCCLL)
            {
              goto LABEL_655;
            }

            v48 = 10 * v45;
            *(v23 + 2) = v48;
            v44 &= 0xFu;
            if (v48 > (v44 ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              goto LABEL_655;
            }

            v45 = v48 + v44;
            *(v23 + 2) = v45;
            v49 = *++v47;
            LOBYTE(v44) = v49;
            ++v46;
          }

          while ((v49 - 48) < 0xA);
          if (v46 >= 3 && (v46 == 3 || *v43 != 48))
          {
            if (v42 == 45)
            {
              v45 = -v45;
              *(v23 + 2) = v45;
            }

            if (v45)
            {
              if ((prefix[0] = v47, v50 = *v47, (v50 - 43) <= 0x2F) && ((1 << (v50 - 43)) & 0x800000000005) != 0 || !*v47)
              {
                if (_xmlSchemaParseTimeZone((v23 + 1), prefix))
                {
                  if (*prefix[0] != 45)
                  {
                    goto LABEL_655;
                  }

                  ++prefix[0];
                  if (_xmlSchemaParseGMonth((v23 + 1), prefix))
                  {
                    goto LABEL_655;
                  }

                  v51 = *prefix[0];
                  if ((v51 - 43) > 0x2F || ((1 << (v51 - 43)) & 0x800000000005) == 0)
                  {
                    if (*prefix[0])
                    {
                      goto LABEL_655;
                    }
                  }

                  if (_xmlSchemaParseTimeZone((v23 + 1), prefix))
                  {
                    if (*prefix[0] != 45)
                    {
                      goto LABEL_655;
                    }

                    ++prefix[0];
                    if (_xmlSchemaParseGDay((v23 + 1), prefix))
                    {
                      goto LABEL_655;
                    }

                    v52 = *(v23 + 2);
                    if (!v52)
                    {
                      goto LABEL_655;
                    }

                    v53 = (*(v23 + 6) & 0xF) - 1;
                    if (v53 > 0xB)
                    {
                      goto LABEL_655;
                    }

                    v54 = 0x8F5C28F5C28F5C29 * v52;
                    v55 = __ROR8__(0x8F5C28F5C28F5C29 * v52 + 0x51EB851EB851EB8, 2);
                    v56 = (v23[1] & 3) == 0 && v55 > 0x28F5C28F5C28F5CLL;
                    v57 = v56;
                    v58 = __ROR8__(v54 + 0x51EB851EB851EB0, 4) < 0xA3D70A3D70A3D7uLL || v57 ? &daysInMonthLeap : &daysInMonth;
                    if (((*(v23 + 6) >> 4) & 0x1Fu) > v58[v53])
                    {
                      goto LABEL_655;
                    }

                    v238 = prefix[0];
                    v239 = *prefix[0];
                    if (((v239 - 43) > 0x2F || ((1 << (v239 - 43)) & 0x800000000005) == 0) && *prefix[0] || (v240 = _xmlSchemaParseTimeZone((v23 + 1), prefix), v238 = prefix[0], v239 = *prefix[0], v240))
                    {
                      if (v239 != 84)
                      {
                        goto LABEL_655;
                      }

                      prefix[0] = v238 + 1;
                      if (_xmlSchemaParseTime((v23 + 1), prefix))
                      {
                        goto LABEL_655;
                      }

                      v241 = _xmlSchemaParseTimeZone((v23 + 1), prefix);
                      for (j = prefix[0] + 1; ; prefix[0] = j++)
                      {
                        v243 = *(j - 1);
                        if (v243 > 0x20 || ((1 << v243) & 0x100002600) == 0)
                        {
                          break;
                        }
                      }

                      if (v241 | v243)
                      {
                        goto LABEL_655;
                      }

                      v245 = *(v23 + 2);
                      if (!v245)
                      {
                        goto LABEL_655;
                      }

                      v246 = *(v23 + 6);
                      v247 = (v246 & 0xF) - 1;
                      if (v247 > 0xB)
                      {
                        goto LABEL_655;
                      }

                      v248 = 0x8F5C28F5C28F5C29 * v245;
                      v249 = __ROR8__(0x8F5C28F5C28F5C29 * v245 + 0x51EB851EB851EB8, 2);
                      v250 = (v23[1] & 3) == 0 && v249 > 0x28F5C28F5C28F5CLL;
                      v251 = v250;
                      v252 = __ROR8__(v248 + 0x51EB851EB851EB0, 4) >= 0xA3D70A3D70A3D7uLL && !v251;
                      v253 = v252 ? &daysInMonth : &daysInMonthLeap;
                      if (((v246 >> 4) & 0x1F) > v253[v247])
                      {
                        goto LABEL_655;
                      }

                      if ((~v246 & 0x3000) == 0 || (v246 & 0xF0000) == 0xF0000 || (v254 = *(v23 + 4), v254 < 0.0) || v254 >= 60.0)
                      {
                        if ((v246 & 0xFFE00) != 0x3000 || *(v23 + 4) != 0.0)
                        {
                          goto LABEL_655;
                        }
                      }

                      if (((*(v23 + 20) << 19 >> 20) + 840) > 0x690)
                      {
                        goto LABEL_655;
                      }

                      v26 = 11;
                      goto LABEL_653;
                    }

                    if (!*prefix[0])
                    {
                      v26 = 10;
                      goto LABEL_653;
                    }
                  }

                  else if (!*prefix[0])
                  {
                    v26 = 9;
                    goto LABEL_653;
                  }
                }

                else if (!*prefix[0])
                {
                  v26 = 8;
                  goto LABEL_653;
                }
              }
            }
          }
        }
      }

LABEL_655:
      xmlSchemaFreeValue(v23);
      goto LABEL_656;
    case 12:
      v38 = xmlSchemaValidateDuration(a2, a3);
      goto LABEL_662;
    case 13:
    case 14:
      for (k = a2; ; ++k)
      {
        v60 = *k;
        if (v60 > 0x20 || ((1 << v60) & 0x100002600) == 0)
        {
          break;
        }
      }

      if (v60 == 78)
      {
        v62 = (k + 1);
        if (k[1] == 97 && k[2] == 78)
        {
          v63 = k[3];
          if (k[3])
          {
            v64 = 7;
          }

          else
          {
            v64 = 4;
          }

          if (a3 && !v63)
          {
            v65 = xmlSchemaTypeFloatDef;
            v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
            if (v65 != a1)
            {
              if (!v66)
              {
                goto LABEL_605;
              }

              v66[2] = 0u;
              *(v66 + 20) = 0u;
              *(v66 + 4) = 0u;
              *v66 = 14;
              v67 = &xmlXPathNAN;
LABEL_641:
              *(v66 + 2) = *v67;
              goto LABEL_518;
            }

            if (!v66)
            {
              goto LABEL_605;
            }

            v66[2] = 0u;
            *(v66 + 20) = 0u;
            *(v66 + 4) = 0u;
            *v66 = 13;
            v221 = &xmlXPathNAN;
LABEL_643:
            v235 = *v221;
            *(v66 + 4) = v235;
            goto LABEL_518;
          }

          goto LABEL_519;
        }

        v75 = 0;
        v76 = k;
      }

      else
      {
        v62 = (k + 1);
        if (v60 != 45)
        {
          v75 = 0;
          v76 = k;
LABEL_331:
          if (v60 == 73 && v76[1] == 78 && v76[2] == 70)
          {
            if (v76[3])
            {
              v64 = 7;
            }

            else
            {
              v64 = 4;
            }

            if (a3 && !v76[3])
            {
              v159 = xmlSchemaTypeFloatDef;
              v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
              if (v159 != a1)
              {
                if (!v66)
                {
                  goto LABEL_605;
                }

                v66[2] = 0u;
                *(v66 + 20) = 0u;
                *(v66 + 4) = 0u;
                *v66 = 14;
                if (v75)
                {
                  v67 = &xmlXPathNINF;
                }

                else
                {
                  v67 = &xmlXPathPINF;
                }

                goto LABEL_641;
              }

              if (!v66)
              {
                goto LABEL_605;
              }

              v66[2] = 0u;
              *(v66 + 20) = 0u;
              *(v66 + 4) = 0u;
              *v66 = 13;
              if (v75)
              {
                v221 = &xmlXPathNINF;
              }

              else
              {
                v221 = &xmlXPathPINF;
              }

              goto LABEL_643;
            }

            goto LABEL_519;
          }

          if (v60 == 43)
          {
            ++k;
          }

          if (v75)
          {
            k = v62;
          }

          v160 = *k;
          if (v160 <= 0x2D && ((1 << v160) & 0x280000000001) != 0)
          {
            goto LABEL_631;
          }

          v162 = v160 - 58;
          if (v160 - 58 >= 0xFFFFFFF6)
          {
            do
            {
              v163 = *++k;
              v160 = v163;
            }

            while (v163 - 48 < 0xA);
          }

          v164 = 1;
          if (v160 == 46)
          {
            do
            {
              v165 = *++k;
              v160 = v165;
              --v164;
            }

            while (v165 - 48 < 0xA);
            LOBYTE(v164) = v164 == 0;
          }

          if (v162 <= 0xFFFFFFF5 && (v164 & 1) != 0)
          {
            goto LABEL_631;
          }

          if ((v160 | 0x20) == 0x65)
          {
            v166 = (k + 1);
            v167 = k[1];
            if (v167 == 45 || v167 == 43)
            {
              v166 = (k + 2);
            }

            k = (v166 - 1);
            do
            {
              v168 = *++k;
              v160 = v168;
            }

            while (v168 - 48 < 0xA);
          }

          v169 = (k + 1);
          while (v160 <= 0x20 && ((1 << v160) & 0x100002600) != 0)
          {
            v170 = *v169++;
            v160 = v170;
          }

          if (v160)
          {
            v64 = 7;
          }

          else
          {
            v64 = 4;
          }

          if (!a3 || v160)
          {
LABEL_519:
            if (v64 == 4)
            {
              goto LABEL_637;
            }

LABEL_631:
            if (v16)
            {
              free(v16);
            }

            v38 = 1;
            goto LABEL_664;
          }

          v202 = xmlSchemaTypeFloatDef;
          v203 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          v69 = v203;
          if (v202 == a1)
          {
            if (!v203)
            {
              goto LABEL_605;
            }

            v203[2] = 0u;
            *(v203 + 20) = 0u;
            *(v203 + 4) = 0u;
            *v203 = 13;
            v204 = sscanf(a2, "%f");
          }

          else
          {
            if (!v203)
            {
              goto LABEL_605;
            }

            v203[2] = 0u;
            *(v203 + 20) = 0u;
            *(v203 + 4) = 0u;
            *v203 = 14;
            v204 = sscanf(a2, "%lf");
          }

          if (v204 != 1)
          {
            xmlSchemaFreeValue(v69);
            goto LABEL_631;
          }

LABEL_284:
          *a3 = v69;
LABEL_637:
          if (v16)
          {
            free(v16);
          }

          v38 = 0;
          goto LABEL_664;
        }

        v75 = 1;
        v76 = k + 1;
      }

      v60 = *v76;
      goto LABEL_331;
    case 15:
      while (2)
      {
        v130 = *a2;
        if (v130 > 0x31)
        {
          goto LABEL_374;
        }

        if (((1 << v130) & 0x100002600) != 0)
        {
          ++a2;
          continue;
        }

        break;
      }

      if (v130 == 48)
      {
        v172 = 0;
        v171 = 1;
      }

      else if (v130 == 49)
      {
        v171 = 1;
        v172 = 1;
      }

      else
      {
LABEL_374:
        if (v130 == 102)
        {
          if (a2[1] != 97 || a2[2] != 108 || a2[3] != 115 || a2[4] != 101)
          {
            goto LABEL_631;
          }

          v172 = 0;
          v171 = 5;
        }

        else
        {
          if (v130 != 116 || a2[1] != 114 || a2[2] != 117 || a2[3] != 101)
          {
            goto LABEL_631;
          }

          v172 = 1;
          v171 = 4;
        }
      }

      v199 = a2[v171];
      if (a2[v171])
      {
        for (m = v171 + 1; ; ++m)
        {
          if (v199 > 0x20)
          {
            goto LABEL_631;
          }

          if (((1 << v199) & 0x100002600) == 0)
          {
            break;
          }

          v199 = a2[m];
        }

        if (v199)
        {
          goto LABEL_631;
        }
      }

      if (!a3)
      {
        goto LABEL_637;
      }

      v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (v66)
      {
        *(v66 + 4) = 0u;
        v66[2] = 0u;
        *(v66 + 20) = 0u;
        *v66 = 15;
        *(v66 + 4) = v172;
        goto LABEL_518;
      }

      goto LABEL_605;
    case 16:
      if (!a3)
      {
        goto LABEL_637;
      }

      v105 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v105)
      {
        goto LABEL_605;
      }

      v69 = v105;
      v105[2] = 0u;
      *(v105 + 20) = 0u;
      *(v105 + 4) = 0u;
      v70 = 16;
      goto LABEL_282;
    case 17:
      if (!v16)
      {
        v137 = xmlSchemaCollapseString(a2);
        v16 = v137;
        if (v137)
        {
          a2 = v137;
        }
      }

      if (!xmlSchemaCheckLanguageType(a2))
      {
        goto LABEL_631;
      }

      if (!a3)
      {
        goto LABEL_637;
      }

      v138 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v138)
      {
        goto LABEL_605;
      }

      v69 = v138;
      v138[2] = 0u;
      *(v138 + 20) = 0u;
      *(v138 + 4) = 0u;
      v70 = 17;
      goto LABEL_282;
    case 18:
      if (xmlValidateNMToken(a2, 1))
      {
        goto LABEL_631;
      }

      if (!a3)
      {
        goto LABEL_637;
      }

      v101 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v101)
      {
        goto LABEL_605;
      }

      v69 = v101;
      v101[2] = 0u;
      *(v101 + 20) = 0u;
      *(v101 + 4) = 0u;
      v70 = 18;
      goto LABEL_282;
    case 19:
      v38 = xmlSchemaValAtomicListNode(xmlSchemaTypeNmtokenDef, a2, a3, a4) < 1;
      goto LABEL_662;
    case 20:
      v95 = xmlValidateName(a2, 1);
      v38 = v95;
      if (!a3 || v95)
      {
        goto LABEL_662;
      }

      v96 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v96)
      {
        goto LABEL_605;
      }

      v23 = v96;
      v96[2] = 0u;
      *(v96 + 20) = 0u;
      *(v96 + 4) = 0u;
      *v96 = 20;
      while (1)
      {
        v97 = *a2;
        if (v97 > 0x20 || ((1 << v97) & 0x100002600) == 0)
        {
          break;
        }

        ++a2;
      }

      v192 = 0;
      while (v97 > 0x20u || ((1 << v97) & 0x100002601) == 0)
      {
        LOBYTE(v97) = a2[++v192];
      }

      v104 = xmlStrndup(a2, v192);
      goto LABEL_437;
    case 21:
      v38 = xmlValidateQName(a2, 1);
      if (v38)
      {
        goto LABEL_662;
      }

      if (a4)
      {
        prefix[0] = 0;
        v99 = xmlSplitQName2(a2, prefix);
        v100 = xmlSearchNs(*(a4 + 64), a4, prefix[0]);
        if (!v100 && prefix[0])
        {
          free(prefix[0]);
          if (v99)
          {
            goto LABEL_546;
          }

          goto LABEL_631;
        }

        if (v100)
        {
          href = v100->href;
        }

        else
        {
          href = 0;
        }

        if (prefix[0])
        {
          free(prefix[0]);
        }

        if (!a3)
        {
          if (v99)
          {
            free(v99);
          }

LABEL_661:
          v38 = 0;
          goto LABEL_662;
        }

        v222 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
        if (!v222)
        {
          goto LABEL_603;
        }

        v23 = v222;
        v222[2] = 0u;
        *(v222 + 20) = 0u;
        *(v222 + 4) = 0u;
        *v222 = 21;
        if (v99)
        {
LABEL_574:
          *(v23 + 2) = v99;
          if (href)
          {
            *(v23 + 3) = xmlStrdup(href);
          }

          goto LABEL_658;
        }

LABEL_573:
        v99 = xmlStrdup(a2);
        goto LABEL_574;
      }

      if (!a3)
      {
        goto LABEL_661;
      }

      v214 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (v214)
      {
        v23 = v214;
        href = 0;
        v214[2] = 0u;
        *(v214 + 20) = 0u;
        *(v214 + 4) = 0u;
        *v214 = 21;
        goto LABEL_573;
      }

      goto LABEL_605;
    case 22:
      v102 = xmlValidateNCName(a2, 1);
      v38 = v102;
      if (!a3 || v102)
      {
        goto LABEL_662;
      }

      v103 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v103)
      {
        goto LABEL_605;
      }

      v23 = v103;
      v103[2] = 0u;
      *(v103 + 20) = 0u;
      *(v103 + 4) = 0u;
      *v103 = 22;
      v104 = xmlStrdup(a2);
LABEL_437:
      v38 = 0;
      *(v23 + 2) = v104;
      goto LABEL_659;
    case 23:
      v106 = xmlValidateNCName(a2, 1);
      v38 = v106;
      if (!a3 || v106)
      {
        goto LABEL_212;
      }

      v107 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v107)
      {
        goto LABEL_605;
      }

      v108 = v107;
      v107[2] = 0u;
      *(v107 + 20) = 0u;
      *(v107 + 4) = 0u;
      *v107 = 23;
      *(v107 + 2) = xmlStrdup(a2);
      *a3 = v108;
LABEL_212:
      if (!a4 || v38)
      {
        goto LABEL_662;
      }

      if (*(a4 + 8) != 2 || (*(a4 + 80) & 0x87FFFFFF) == 2)
      {
        goto LABEL_661;
      }

      v109 = xmlSchemaStrip(a2);
      v110 = *(a4 + 64);
      if (v109)
      {
        v111 = v109;
        v112 = xmlAddID(0, v110, v109, a4);
        free(v111);
      }

      else
      {
        v112 = xmlAddID(0, v110, a2, a4);
      }

      if (v112)
      {
        v38 = 0;
        v88 = *(a4 + 80) & 0x78000000 | 2;
        goto LABEL_595;
      }

      v38 = 2;
      goto LABEL_662;
    case 24:
      v89 = xmlValidateNCName(a2, 1);
      v38 = v89;
      if (!a3 || v89)
      {
        goto LABEL_175;
      }

      v90 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v90)
      {
        goto LABEL_605;
      }

      v91 = v90;
      v90[2] = 0u;
      *(v90 + 20) = 0u;
      *(v90 + 4) = 0u;
      *v90 = 24;
      *(v90 + 2) = xmlStrdup(a2);
      *a3 = v91;
LABEL_175:
      if (!a4 || v38)
      {
        goto LABEL_662;
      }

      if (*(a4 + 8) != 2)
      {
        goto LABEL_661;
      }

      v92 = xmlSchemaStrip(a2);
      v93 = *(a4 + 64);
      if (v92)
      {
        v94 = v92;
        xmlAddRef(0, v93, v92, a4);
        free(v94);
      }

      else
      {
        xmlAddRef(0, v93, a2, a4);
      }

      v38 = 0;
      v88 = *(a4 + 80) & 0x78000000 | 3;
      goto LABEL_595;
    case 25:
      v87 = xmlSchemaValAtomicListNode(xmlSchemaTypeIdrefDef, a2, a3, a4);
      v38 = (v87 >> 30) & 2;
      if (!a4 || (v87 & 0x80000000) != 0)
      {
        goto LABEL_662;
      }

      if (*(a4 + 8) != 2)
      {
        goto LABEL_661;
      }

      v38 = 0;
      v88 = *(a4 + 80) & 0x78000000 | 4;
      goto LABEL_595;
    case 26:
      v124 = xmlValidateNCName(a2, 1);
      if (!a4 || !*(a4 + 64))
      {
        goto LABEL_537;
      }

      v38 = v124;
      if (v124)
      {
        goto LABEL_662;
      }

      v125 = xmlSchemaStrip(a2);
      v126 = *(a4 + 64);
      if (v125)
      {
        DocEntity = xmlGetDocEntity(v126, v125);
        free(v125);
      }

      else
      {
        DocEntity = xmlGetDocEntity(v126, a2);
      }

      if (!DocEntity || DocEntity->etype != XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
      {
        v38 = 4;
        goto LABEL_662;
      }

      if (a3)
      {
        v219 = *__xmlGenericError();
        v220 = __xmlGenericErrorContext();
        v219(*v220, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 2959);
      }

      if (*(a4 + 8) == 2)
      {
        v38 = 0;
        v88 = *(a4 + 80) & 0x78000000 | 5;
        goto LABEL_595;
      }

      goto LABEL_661;
    case 27:
      if (!a4 || !*(a4 + 64))
      {
        if (v16)
        {
          free(v16);
        }

        v38 = 3;
        goto LABEL_664;
      }

      if (xmlSchemaValAtomicListNode(xmlSchemaTypeEntityDef, a2, a3, a4) < 1)
      {
LABEL_656:
        v38 = 1;
      }

      else
      {
        if (*(a4 + 8) != 2)
        {
          goto LABEL_661;
        }

        v38 = 0;
        v88 = *(a4 + 80) & 0x78000000 | 6;
LABEL_595:
        *(a4 + 80) = v88;
      }

      goto LABEL_662;
    case 28:
      v113 = xmlValidateQName(a2, 1);
      v38 = v113;
      if (!a4 || v113)
      {
        if (!a4)
        {
LABEL_537:
          v38 = 3;
          goto LABEL_662;
        }

        v114 = 0;
        v99 = 0;
      }

      else
      {
        prefix[0] = 0;
        v114 = xmlSplitQName2(a2, prefix);
        if (prefix[0])
        {
          v115 = xmlSearchNs(*(a4 + 64), a4, prefix[0]);
          v99 = 0;
          v38 = v115 == 0;
          if (a3 && v115)
          {
            v99 = xmlStrdup(v115->href);
            v38 = 0;
          }
        }

        else
        {
          v38 = 0;
          v99 = 0;
        }

        if (v114 && (!a3 || v38))
        {
          free(v114);
        }

        if (prefix[0])
        {
          free(prefix[0]);
        }
      }

      v211 = *(a4 + 64);
      if (!v211)
      {
        goto LABEL_537;
      }

      if (!v38)
      {
        v212 = xmlValidateNotationUse(0, v211, a2);
        v38 = v212 != 1;
        if (a3)
        {
          if (v212 == 1)
          {
            v213 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
            if (v213)
            {
              v23 = v213;
              v213[2] = 0u;
              *(v213 + 20) = 0u;
              *(v213 + 4) = 0u;
              *v213 = 28;
              if (!v114)
              {
                v114 = xmlStrdup(a2);
              }

              *(v23 + 2) = v114;
              if (v99)
              {
                *(v23 + 3) = v99;
              }

LABEL_658:
              v38 = 0;
LABEL_659:
              *a3 = v23;
              goto LABEL_662;
            }

            if (v114)
            {
              free(v114);
            }

LABEL_603:
            if (v99)
            {
              free(v99);
            }

LABEL_605:
            if (v16)
            {
              free(v16);
            }

LABEL_607:
            v38 = 0xFFFFFFFFLL;
            goto LABEL_664;
          }
        }
      }

LABEL_662:
      if (v16)
      {
        free(v16);
      }

LABEL_664:
      v236 = *MEMORY[0x1E69E9840];
      return v38;
    case 29:
      if (!*a2)
      {
        goto LABEL_238;
      }

      if (!v16)
      {
        v116 = xmlSchemaCollapseString(a2);
        v16 = v116;
        if (v116)
        {
          a2 = v116;
        }
      }

      v117 = xmlStrdup(a2);
      v118 = v117;
      v119 = *v117;
      if (*v117)
      {
        v120 = (v117 + 1);
        do
        {
          if ((v119 - 127) < 0xA2u || v119 - 34 <= 0x3E && ((1 << (v119 - 34)) & 0x5400000014000021) != 0 || v119 - 123 < 3)
          {
            *(v120 - 1) = 95;
          }

          v121 = *v120++;
          v119 = v121;
        }

        while (v121);
      }

      v122 = xmlParseURI(v117);
      free(v118);
      if (!v122)
      {
        goto LABEL_631;
      }

      xmlFreeURI(v122);
LABEL_238:
      if (!a3)
      {
        goto LABEL_637;
      }

      v123 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v123)
      {
        goto LABEL_605;
      }

      v69 = v123;
      v123[2] = 0u;
      *(v123 + 20) = 0u;
      *(v123 + 4) = 0u;
      v70 = 29;
LABEL_282:
      *v69 = v70;
      v136 = a2;
LABEL_283:
      *(v69 + 2) = xmlStrdup(v136);
      goto LABEL_284;
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
      v256 = 0;
      v255 = 0uLL;
      while (1)
      {
        v28 = *a2;
        if (v28 > 0x20 || ((1 << v28) & 0x100002600) == 0)
        {
          break;
        }

        ++a2;
      }

      prefix[0] = a2;
      if (v28 == 45)
      {
        prefix[0] = (a2 + 1);
        v30 = 1;
      }

      else
      {
        v30 = 0;
        if (v28 == 43)
        {
          prefix[0] = (a2 + 1);
        }
      }

      v71 = xmlSchemaParseUInt(prefix, &v256, &v255 + 1, &v255);
      if ((v71 & 0x80000000) != 0)
      {
        goto LABEL_631;
      }

      v72 = v71;
      v73 = prefix[0];
      while (2)
      {
        v74 = *v73;
        if (v74 > 0x20)
        {
          goto LABEL_631;
        }

        if (((1 << v74) & 0x100002600) != 0)
        {
          ++v73;
          continue;
        }

        break;
      }

      if (*v73)
      {
        goto LABEL_631;
      }

      if (v17 == 34)
      {
        if (v28 == 45)
        {
          goto LABEL_631;
        }
      }

      else
      {
        if (v17 != 32)
        {
          if (v17 == 31)
          {
            if (v28 == 45)
            {
LABEL_405:
              if (!a3)
              {
                goto LABEL_637;
              }

LABEL_406:
              v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
              if (!v66)
              {
                goto LABEL_637;
              }

              *(v66 + 20) = 0u;
              *(v66 + 4) = 0u;
              v66[2] = 0u;
              *v66 = v17;
              if (v72 <= 1)
              {
                v179 = 1;
              }

              else
              {
                v179 = v72;
              }

              v180 = *(&v255 + 1);
              *(v66 + 2) = v256;
              *(v66 + 3) = v180;
              *(v66 + 4) = v255;
              v181 = v30 | (v179 << 8);
LABEL_517:
              *(v66 + 22) = v181;
LABEL_518:
              *a3 = v66;
              goto LABEL_637;
            }
          }

          else if (v17 != 33 || v28 != 45)
          {
            goto LABEL_405;
          }

          v178 = (v255 | *(&v255 + 1) | v256) == 0;
          if (v255 | *(&v255 + 1) | v256)
          {
            v64 = 7;
          }

          else
          {
            v64 = 4;
          }

          if (!a3)
          {
            goto LABEL_519;
          }

LABEL_403:
          if (!v178)
          {
            goto LABEL_519;
          }

          goto LABEL_406;
        }

        if (v28 != 45)
        {
          goto LABEL_631;
        }
      }

      v177 = v255 | *(&v255 + 1) | v256;
      v178 = v177 != 0;
      if (v177)
      {
        v64 = 4;
      }

      else
      {
        v64 = 7;
      }

      if (!a3)
      {
        goto LABEL_519;
      }

      goto LABEL_403;
    case 35:
    case 37:
    case 39:
    case 41:
      v256 = 0;
      prefix[0] = a2;
      v255 = 0uLL;
      v36 = *a2;
      if (v36 == 45)
      {
        prefix[0] = (a2 + 1);
        v37 = 1;
      }

      else
      {
        v37 = 0;
        if (v36 == 43)
        {
          prefix[0] = (a2 + 1);
        }
      }

      v77 = xmlSchemaParseUInt(prefix, &v256, &v255 + 1, &v255);
      if (v77 < 0 || *prefix[0])
      {
        goto LABEL_631;
      }

      v78 = v77;
      if (v17 <= 38)
      {
        if (v17 == 35)
        {
          if (v255)
          {
            goto LABEL_631;
          }

          if (*(&v255 + 1) >= 0x15uLL)
          {
            if (*(&v255 + 1) != 21)
            {
              goto LABEL_631;
            }

            v79 = v256;
            v80 = v36 == 45;
            v81 = 47483647;
LABEL_494:
            if (v80)
            {
              v208 = v81 + 1;
            }

            else
            {
              v208 = v81;
            }

            if (v79 > v208)
            {
              v64 = 7;
            }

            else
            {
              v64 = 4;
            }

            if (!a3 || v79 > v208)
            {
              goto LABEL_519;
            }

LABEL_515:
            v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
            if (!v66)
            {
              goto LABEL_637;
            }

            *(v66 + 20) = 0u;
            *(v66 + 4) = 0u;
            v66[2] = 0u;
            *v66 = v17;
            v210 = *(&v255 + 1);
            *(v66 + 2) = v256;
            *(v66 + 3) = v210;
            *(v66 + 4) = v255;
            v181 = v37 | (v78 << 8);
            goto LABEL_517;
          }
        }

        else if (v17 == 37 && v255 >= 0x39A)
        {
          if (v255 != 922)
          {
            goto LABEL_631;
          }

          if (*(&v255 + 1) > 0x202882FuLL)
          {
            if (*(&v255 + 1) != 33720368)
            {
              goto LABEL_631;
            }

            v79 = v256;
            v80 = v36 == 45;
            v81 = 54775807;
            goto LABEL_494;
          }
        }

LABEL_503:
        if (!a3)
        {
          goto LABEL_637;
        }

        goto LABEL_515;
      }

      if (v17 == 39)
      {
        if (v255 != 0)
        {
          goto LABEL_631;
        }

        v174 = v256;
        v175 = v36 == 45;
        v176 = 0x8000;
      }

      else
      {
        if (v17 != 41)
        {
          goto LABEL_503;
        }

        if (v255 != 0)
        {
          goto LABEL_631;
        }

        v174 = v256;
        v175 = v36 == 45;
        v176 = 128;
      }

      if (v175)
      {
        v209 = v176 + 1;
      }

      else
      {
        v209 = v176;
      }

      if (v174 >= v209)
      {
        v64 = 7;
      }

      else
      {
        v64 = 4;
      }

      if (!a3 || v174 >= v209)
      {
        goto LABEL_519;
      }

      goto LABEL_515;
    case 36:
    case 38:
    case 40:
    case 42:
      v256 = 0;
      prefix[0] = a2;
      v255 = 0uLL;
      v31 = xmlSchemaParseUInt(prefix, &v256, &v255 + 1, &v255);
      if (v31 < 0 || *prefix[0])
      {
        goto LABEL_631;
      }

      v32 = v31;
      if (v17 > 39)
      {
        if (v17 == 40)
        {
          v33 = v255 == 0;
          v173 = v256 >= 0x10000;
          goto LABEL_480;
        }

        if (v17 == 42)
        {
          v33 = v255 == 0;
          v173 = v256 >= 0x100;
LABEL_480:
          v205 = !v173;
          v206 = v33 & v205;
          if (v206)
          {
            v64 = 4;
          }

          else
          {
            v64 = 7;
          }

          if (!a3 || (v206 & 1) == 0)
          {
            goto LABEL_519;
          }

LABEL_488:
          v66 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v66)
          {
            goto LABEL_637;
          }

          *(v66 + 20) = 0u;
          *(v66 + 4) = 0u;
          v66[2] = 0u;
          *v66 = v17;
          v207 = *(&v255 + 1);
          *(v66 + 2) = v256;
          *(v66 + 3) = v207;
          *(v66 + 4) = v255;
          v181 = v32 << 8;
          goto LABEL_517;
        }
      }

      else if (v17 == 36)
      {
        if (v255)
        {
          goto LABEL_631;
        }

        if (*(&v255 + 1) >= 0x2AuLL)
        {
          v33 = *(&v255 + 1) == 42;
          v34 = v256;
          v35 = 94967296;
          goto LABEL_476;
        }
      }

      else if (v17 == 38 && v255 >= 0x734)
      {
        if (v255 != 1844)
        {
          goto LABEL_631;
        }

        if (*(&v255 + 1) > 0x4051060uLL)
        {
          v33 = *(&v255 + 1) == 67440737;
          v34 = v256;
          v35 = 9551616;
LABEL_476:
          v173 = v34 >= v35;
          goto LABEL_480;
        }
      }

      if (!a3)
      {
        goto LABEL_637;
      }

      goto LABEL_488;
    case 43:
      while (1)
      {
        v139 = *a2;
        if (v139 > 0x20 || ((1 << v139) & 0x100002600) == 0)
        {
          break;
        }

        ++a2;
      }

      v141 = 0;
      v142 = 1;
      v143 = a2;
      while ((v139 - 48) < 0xAu || v139 - 65 <= 0x25 && ((1 << (v139 - 65)) & 0x3F0000003FLL) != 0)
      {
        ++v141;
        v144 = *++v143;
        LOBYTE(v139) = v144;
        ++v142;
      }

      v145 = 1;
      while (v139 <= 0x20u && ((1 << v139) & 0x100002600) != 0)
      {
        LOBYTE(v139) = v143[v145++];
      }

      if (!a3 || v139 | v141 & 1)
      {
        if (v139 | v141 & 1)
        {
          goto LABEL_631;
        }

        goto LABEL_637;
      }

      v146 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v146)
      {
        goto LABEL_605;
      }

      v99 = v146;
      *(v146 + 2) = 0u;
      *(v146 + 20) = 0u;
      *(v146 + 4) = 0u;
      *v146 = 43;
      v147 = xmlStrndup(a2, v141);
      if (v147)
      {
        if (v141)
        {
          v148 = v147;
          do
          {
            v149 = *v148;
            if (v149 >= 0x61)
            {
              *v148 = v149 - 32;
            }

            ++v148;
            --v142;
          }

          while (v142 > 1);
        }

        *(v99 + 2) = v147;
        *(v99 + 6) = v141 >> 1;
        *a3 = v99;
        goto LABEL_637;
      }

      __xmlSimpleError(0xFu, 2, a4, 0, "allocating hexbin data");
LABEL_546:
      v216 = v99;
      goto LABEL_547;
    case 44:
      v82 = *a2;
      if (*a2)
      {
        v83 = 0;
        v84 = a2;
        while (1)
        {
          v85 = _xmlSchemaBase64Decode(v82);
          if (v85 < 0x40)
          {
            ++v83;
          }

          if (v85 >= 64)
          {
            break;
          }

          v86 = *++v84;
          v82 = v86;
          if (!v86)
          {
            goto LABEL_412;
          }
        }

        v189 = 0;
        do
        {
          v190 = _xmlSchemaBase64Decode(v82);
          if (v190 < 0x40)
          {
            goto LABEL_631;
          }

          if (v190 == 64)
          {
            ++v189;
          }

          v191 = *++v84;
          v82 = v191;
        }

        while (v191);
        v182 = 3 * (v83 >> 2);
        if (v189 == 2)
        {
          if ((v83 & 3) != 2)
          {
            goto LABEL_631;
          }

          v225 = -1;
          do
          {
            v226 = _xmlSchemaBase64Decode(v84[v225--]);
          }

          while (v226 > 0x3F);
          if ((v226 & 0xF) != 0)
          {
            goto LABEL_631;
          }

          ++v182;
        }

        else
        {
          if (v189 != 1)
          {
            if (v189)
            {
              goto LABEL_631;
            }

            goto LABEL_413;
          }

          if ((~v83 & 3) != 0)
          {
            goto LABEL_631;
          }

          v223 = -1;
          do
          {
            v224 = _xmlSchemaBase64Decode(v84[v223--]);
          }

          while (v224 > 0x3F);
          if ((v224 & 3) != 0)
          {
            goto LABEL_631;
          }

          v182 += 2;
        }

LABEL_415:
        if (!a3)
        {
          goto LABEL_637;
        }

        v183 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
        if (v183)
        {
          v69 = v183;
          v183[2] = 0u;
          *(v183 + 20) = 0u;
          *(v183 + 4) = 0u;
          *v183 = 44;
          v184 = malloc_type_malloc((v83 + v189 + 1), 0x100004077774924uLL);
          if (!v184)
          {
            __xmlSimpleError(0xFu, 2, a4, 0, "allocating base64 data");
            v216 = v69;
LABEL_547:
            free(v216);
            goto LABEL_631;
          }

          v185 = v184;
          *(v69 + 2) = v184;
          v186 = *a2;
          if (*a2)
          {
            v187 = (a2 + 1);
            do
            {
              if ((_xmlSchemaBase64Decode(v186) & 0x80000000) == 0)
              {
                *v185++ = v186;
              }

              v188 = *v187++;
              v186 = v188;
            }

            while (v188);
          }

          *v185 = 0;
          *(v69 + 6) = v182;
          goto LABEL_284;
        }

        goto LABEL_605;
      }

      v83 = 0;
LABEL_412:
      v182 = 3 * (v83 / 4);
LABEL_413:
      if ((v83 & 3) != 0)
      {
        goto LABEL_631;
      }

      v189 = 0;
      goto LABEL_415;
    case 45:
    case 46:
      if (!a3 || !a7)
      {
        goto LABEL_637;
      }

      v68 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
      if (!v68)
      {
        goto LABEL_605;
      }

      v69 = v68;
      v68[2] = 0u;
      *(v68 + 20) = 0u;
      *(v68 + 4) = 0u;
      v70 = 46;
      goto LABEL_282;
    default:
      goto LABEL_661;
  }
}

xmlSchemaValPtr xmlSchemaCopyValue(xmlSchemaValPtr val)
{
  if (val)
  {
    v1 = val;
    v2 = 0;
    v3 = 0;
    while (1)
    {
      v4 = *v1;
      switch(*v1)
      {
        case 1:
        case 2:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x14:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x1A:
        case 0x1D:
        case 0x2E:
          v5 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v5)
          {
            goto LABEL_23;
          }

          v6 = v5;
          v5[2] = 0u;
          *(v5 + 20) = 0u;
          *(v5 + 4) = 0u;
          *v5 = v4;
          goto LABEL_6;
        case 0x13:
        case 0x19:
        case 0x1B:
        case 0x2D:
          goto LABEL_23;
        case 0x15:
        case 0x1C:
          v10 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v10)
          {
            goto LABEL_23;
          }

          v6 = v10;
          v10[2] = 0u;
          *(v10 + 20) = 0u;
          *(v10 + 4) = 0u;
          *v10 = v4;
          v11 = *(v1 + 2);
          v12 = *v1;
          v10[1] = *(v1 + 1);
          v10[2] = v11;
          *v10 = v12;
          *(v10 + 1) = 0;
          v13 = *(v1 + 2);
          if (v13)
          {
            *(v6 + 2) = xmlStrdup(v13);
          }

          v14 = *(v1 + 3);
          if (v14)
          {
            *(v6 + 3) = xmlStrdup(v14);
          }

          goto LABEL_8;
        case 0x2B:
          v15 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v15)
          {
            goto LABEL_23;
          }

          v6 = v15;
          v15[2] = 0u;
          *(v15 + 20) = 0u;
          *(v15 + 4) = 0u;
          *v15 = 43;
          goto LABEL_6;
        case 0x2C:
          v16 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v16)
          {
            goto LABEL_23;
          }

          v6 = v16;
          v16[2] = 0u;
          *(v16 + 20) = 0u;
          *(v16 + 4) = 0u;
          *v16 = 44;
LABEL_6:
          v7 = *(v1 + 2);
          v8 = *v1;
          v6[1] = *(v1 + 1);
          v6[2] = v7;
          *v6 = v8;
          *(v6 + 1) = 0;
          v9 = *(v1 + 2);
          if (v9)
          {
            *(v6 + 2) = xmlStrdup(v9);
          }

          goto LABEL_8;
        default:
          v17 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
          if (!v17)
          {
LABEL_23:
            xmlSchemaFreeValue(v3);
            return 0;
          }

          v6 = v17;
          v17[2] = 0u;
          *(v17 + 20) = 0u;
          *(v17 + 4) = 0u;
          *v17 = v4;
          v18 = *(v1 + 2);
          v19 = *v1;
          v17[1] = *(v1 + 1);
          v17[2] = v18;
          *v17 = v19;
          *(v17 + 1) = 0;
LABEL_8:
          val = v6;
          if (v3)
          {
            *(v2 + 1) = v6;
            val = v3;
          }

          v1 = *(v1 + 1);
          v2 = v6;
          v3 = val;
          if (!v1)
          {
            return val;
          }

          break;
      }
    }
  }

  return val;
}

int xmlSchemaCompareValues(xmlSchemaValPtr x, xmlSchemaValPtr y)
{
  if (!x || !y)
  {
    return -2;
  }

  v4 = *x;
  if (v4 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = *y;
  if (*y == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 3;
  }

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return xmlSchemaCompareValuesInternal(v4, x, 0, v6, v7, y, 0, v9);
}

uint64_t xmlSchemaCompareValuesInternal(int a1, uint64_t a2, xmlChar *str1, int a4, unsigned int a5, uint64_t a6, xmlChar *str2, int a8)
{
  v8 = 4294967294;
  switch(a1)
  {
    case 1:
    case 2:
    case 16:
    case 17:
    case 18:
    case 20:
    case 22:
    case 23:
    case 24:
    case 26:
    case 29:
    case 46:
      if (a2)
      {
        str1 = *(a2 + 16);
      }

      if (a6)
      {
        str2 = *(a6 + 16);
      }

      if (a5 > 0x2E)
      {
        return v8;
      }

      if (((1 << a5) & 0x400025D70006) == 0)
      {
        if (a5 == 21)
        {
          v37 = *__xmlGenericError();
          v38 = *__xmlGenericErrorContext();
          v37(v38, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 4935);
        }

        return v8;
      }

      if (a4 == 3)
      {
        if (a8 == 3)
        {

          return xmlSchemaCompareNormStrings(str1, str2);
        }

        if (a8 != 2)
        {
          if (a8 != 1)
          {
            return v8;
          }

          v33 = str2;
          v34 = str1;
          v35 = 1;
LABEL_109:

          return xmlSchemaComparePreserveCollapseStrings(v33, v34, v35);
        }

        v48 = str2;
        v49 = str1;
        v50 = 1;
LABEL_98:

        return xmlSchemaCompareReplaceCollapseStrings(v48, v49, v50);
      }

      if (a4 != 2)
      {
        if (a4 != 1)
        {
          return v8;
        }

        if (a8 != 3)
        {
          if (a8 != 2)
          {
            if (a8 != 1)
            {
              return v8;
            }

            v12 = xmlStrEqual(str1, str2) == 0;
            return (2 * v12);
          }

          v30 = str1;
          v31 = str2;
          v32 = 0;
          goto LABEL_102;
        }

        v33 = str1;
        v34 = str2;
        v35 = 0;
        goto LABEL_109;
      }

      if (a8 == 3)
      {
        v48 = str1;
        v49 = str2;
        v50 = 0;
        goto LABEL_98;
      }

      if (a8 != 2)
      {
        if (a8 != 1)
        {
          return v8;
        }

        v30 = str2;
        v31 = str1;
        v32 = 1;
LABEL_102:

        return xmlSchemaComparePreserveReplaceStrings(v30, v31, v32);
      }

      return xmlSchemaCompareReplacedStrings(str1, str2);
    case 3:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      if (!a2 || !a6 || a5 != a1 && a5 - 30 >= 0xD && a5 != 3)
      {
        return v8;
      }

      return xmlSchemaCompareDecimals(a2, a6);
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      if (a5 - 4 > 7 || !a2 || !a6 || (*(a2 + 16) - 0x5987B1A9448BE5) < 0xFF4CF09CAD76E837 || (*(a6 + 16) - 0x5987B1A9448BE5) < 0xFF4CF09CAD76E837)
      {
        return v8;
      }

      v13 = *(a6 + 40);
      if (*(a2 + 40))
      {
        if (v13)
        {
          goto LABEL_137;
        }

        v16 = xmlSchemaDateNormalize(a2, 0.0);
        v51 = _xmlSchemaDateCastYMToDays(v16) + ((v16[6] >> 4) & 0x1F);
        v14 = xmlSchemaDateNormalize(a6, 50400.0);
        v52 = _xmlSchemaDateCastYMToDays(v14);
        v53 = v14[6];
        v54 = v52 + ((v53 >> 4) & 0x1F);
        if (v51 < v54)
        {
          goto LABEL_114;
        }

        if (v51 == v54)
        {
          if (*(v16 + 4) + (3600 * ((v16[6] >> 9) & 0x1F) + 60 * (((v16[6] >> 14) & 0x3F) + ((8 * *(v16 + 20)) >> 4))) >= *(v14 + 4) + (3600 * ((v53 >> 9) & 0x1F) + 60 * (((v53 >> 14) & 0x3F) + ((8 * *(v14 + 20)) >> 4))))
          {
            v20 = xmlSchemaDateNormalize(a6, -50400.0);
            v58 = _xmlSchemaDateCastYMToDays(v20);
            v59 = v20[6];
            v60 = v58 + ((v59 >> 4) & 0x1F);
            if (v51 <= v60)
            {
              if (v51 == v60)
              {
                v24 = 0;
                v25 = (3600 * ((v59 >> 9) & 0x1F) + 60 * (((v59 >> 14) & 0x3F) + ((8 * *(v20 + 20)) >> 4)));
                v26 = *(v16 + 4) + (3600 * ((v16[6] >> 9) & 0x1F) + 60 * (((v16[6] >> 14) & 0x3F) + ((8 * *(v16 + 20)) >> 4)));
                v27 = *(v20 + 4);
LABEL_181:
                if (v26 > v27 + v25)
                {
                  v8 = 1;
                }

                else
                {
                  v8 = 2;
                }

LABEL_185:
                xmlSchemaFreeValue(v16);
                xmlSchemaFreeValue(v14);
                xmlSchemaFreeValue(v20);
                if ((v24 & 1) == 0)
                {
                  return v8;
                }

LABEL_137:
                if (*a2 == *a6)
                {
                  v61 = xmlSchemaDateNormalize(a6, 0.0);
                  v62 = _xmlSchemaDateCastYMToDays(v61) + ((v61[6] >> 4) & 0x1F);
                  v63 = xmlSchemaDateNormalize(a2, 0.0);
                  v64 = _xmlSchemaDateCastYMToDays(v63);
                  v65 = v63[6];
                  v66 = v64 + ((v65 >> 4) & 0x1F);
                  if (v66 < v62)
                  {
LABEL_139:
                    v8 = 0xFFFFFFFFLL;
LABEL_144:
                    xmlSchemaFreeValue(v63);
                    xmlSchemaFreeValue(v61);
                    return v8;
                  }

                  if (v66 <= v62)
                  {
                    v80 = *(v63 + 4) + (3600 * ((v65 >> 9) & 0x1F) + 60 * (((v65 >> 14) & 0x3F) + ((8 * *(v63 + 20)) >> 4))) - (*(v61 + 4) + (3600 * ((v61[6] >> 9) & 0x1F) + 60 * (((v61[6] >> 14) & 0x3F) + ((8 * *(v61 + 20)) >> 4))));
                    if (v80 < 0.0)
                    {
                      goto LABEL_139;
                    }

                    if (v80 <= 0.0)
                    {
                      v8 = 0;
                      goto LABEL_144;
                    }
                  }

                  v8 = 1;
                  goto LABEL_144;
                }

                v67 = *a2 - 4;
                if (v67 > 7)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = dword_1C79BB01C[v67];
                }

                v69 = *a6 - 4;
                if (v69 > 7)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = dword_1C79BB01C[v69];
                }

                if (((v70 ^ v68) & 1) == 0)
                {
                  v71 = v70 & v68;
                  if (v70 & v68)
                  {
                    v81 = *(a2 + 16);
                    v82 = *(a6 + 16);
                    if (v81 < v82)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    if (v81 > v82)
                    {
                      return 1;
                    }
                  }

                  if (((v70 ^ v68) & 2) == 0)
                  {
                    if ((v71 & 2) != 0)
                    {
                      if ((*(a2 + 24) & 0xFu) < (*(a6 + 24) & 0xFu))
                      {
                        return 0xFFFFFFFFLL;
                      }

                      if ((*(a2 + 24) & 0xFu) > (*(a6 + 24) & 0xFu))
                      {
                        return 1;
                      }
                    }

                    if (((v70 ^ v68) & 4) == 0)
                    {
                      if ((v71 & 4) != 0)
                      {
                        v83 = (*(a2 + 24) >> 4) & 0x1F;
                        v84 = (*(a6 + 24) >> 4) & 0x1F;
                        if (v83 < v84)
                        {
                          return 0xFFFFFFFFLL;
                        }

                        if (v83 > v84)
                        {
                          return 1;
                        }
                      }

                      if (v68 == v70)
                      {
                        if (v71 < 8)
                        {
                          return 0;
                        }

                        v72 = *(a2 + 24);
                        v73 = (v72 >> 9) & 0x1F;
                        v74 = *(a6 + 24);
                        v75 = (v74 >> 9) & 0x1F;
                        if (v73 < v75)
                        {
                          return 0xFFFFFFFFLL;
                        }

                        if (v73 <= v75)
                        {
                          v76 = (v72 >> 14) & 0x3F;
                          v77 = (v74 >> 14) & 0x3F;
                          if (v76 < v77)
                          {
                            return 0xFFFFFFFFLL;
                          }

                          if (v76 <= v77)
                          {
                            v78 = *(a2 + 32);
                            v79 = *(a6 + 32);
                            if (v78 >= v79)
                            {
                              return v78 > v79;
                            }

                            return 0xFFFFFFFFLL;
                          }
                        }

                        return 1;
                      }
                    }
                  }
                }

                return 2;
              }

LABEL_184:
              v8 = 0;
              v24 = 1;
              goto LABEL_185;
            }

LABEL_135:
            v24 = 0;
            v8 = 1;
            goto LABEL_185;
          }

LABEL_114:
          xmlSchemaFreeValue(v16);
          xmlSchemaFreeValue(v14);
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_137;
        }

        v14 = xmlSchemaDateNormalize(a6, 0.0);
        v15 = _xmlSchemaDateCastYMToDays(v14) + ((v14[6] >> 4) & 0x1F);
        v16 = xmlSchemaDateNormalize(a2, -50400.0);
        v17 = _xmlSchemaDateCastYMToDays(v16);
        v18 = v16[6];
        v19 = v17 + ((v18 >> 4) & 0x1F);
        if (v19 < v15)
        {
          goto LABEL_114;
        }

        if (v19 == v15)
        {
          if (*(v16 + 4) + (3600 * ((v18 >> 9) & 0x1F) + 60 * (((v18 >> 14) & 0x3F) + ((8 * *(v16 + 20)) >> 4))) >= *(v14 + 4) + (3600 * ((v14[6] >> 9) & 0x1F) + 60 * (((v14[6] >> 14) & 0x3F) + ((8 * *(v14 + 20)) >> 4))))
          {
            v20 = xmlSchemaDateNormalize(a2, 50400.0);
            v21 = _xmlSchemaDateCastYMToDays(v20);
            v22 = v20[6];
            v23 = v21 + ((v22 >> 4) & 0x1F);
            if (v23 <= v15)
            {
              if (v23 == v15)
              {
                v24 = 0;
                v25 = (3600 * ((v14[6] >> 9) & 0x1F) + 60 * (((v14[6] >> 14) & 0x3F) + ((8 * *(v14 + 20)) >> 4)));
                v26 = *(v20 + 4) + (3600 * ((v22 >> 9) & 0x1F) + 60 * (((v22 >> 14) & 0x3F) + ((8 * *(v20 + 20)) >> 4)));
                v27 = *(v14 + 4);
                goto LABEL_181;
              }

              goto LABEL_184;
            }

            goto LABEL_135;
          }

          goto LABEL_114;
        }
      }

      xmlSchemaFreeValue(v16);
      xmlSchemaFreeValue(v14);
      goto LABEL_137;
    case 12:
      if (a5 != 12 || !a2 || !a6)
      {
        return v8;
      }

      return xmlSchemaCompareDurations(a2, a6);
    case 13:
    case 14:
      if (a5 - 13 > 1 || !a2 || !a6)
      {
        return v8;
      }

      if (*a2 == 13)
      {
        v36 = *(a2 + 16);
      }

      else
      {
        if (*a2 != 14)
        {
          return v8;
        }

        v36 = *(a2 + 16);
      }

      if (*a6 == 13)
      {
        v55 = *(a6 + 16);
      }

      else
      {
        if (*a6 != 14)
        {
          return v8;
        }

        v55 = *(a6 + 16);
      }

      IsNaN = xmlXPathIsNaN(v36);
      v57 = xmlXPathIsNaN(v55);
      if (IsNaN)
      {
        return v57 == 0;
      }

      if (v57)
      {
        return 0xFFFFFFFFLL;
      }

      if (v36 == xmlXPathPINF)
      {
        return v55 != xmlXPathPINF;
      }

      if (v55 == xmlXPathPINF)
      {
        return 0xFFFFFFFFLL;
      }

      if (v36 == xmlXPathNINF)
      {
        if (v55 == xmlXPathNINF)
        {
          return 0;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      if (v55 == xmlXPathNINF)
      {
        return 1;
      }

      if (v36 < v55)
      {
        return 0xFFFFFFFFLL;
      }

      if (v36 > v55)
      {
        return 1;
      }

      v12 = v36 != v55;
      return (2 * v12);
    case 15:
      if (a5 == 15 && a2 && a6)
      {
        v46 = *(a2 + 16);
        if (v46)
        {
          v47 = 1;
        }

        else
        {
          v47 = -1;
        }

        if (v46 == *(a6 + 16))
        {
          return 0;
        }

        else
        {
          return v47;
        }
      }

      return v8;
    case 19:
    case 25:
    case 27:
      v28 = *__xmlGenericError();
      v29 = *__xmlGenericErrorContext();
      v28(v29, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 5060);
      return v8;
    case 21:
    case 28:
      if (!a2 || !a6 || a5 != 28 && a5 != 21)
      {
        return v8;
      }

      if (xmlStrEqual(*(a2 + 16), *(a6 + 16)) && xmlStrEqual(*(a2 + 24), *(a6 + 24)))
      {
        return 0;
      }

      return 2;
    case 43:
      if (a5 != 43 || !a2 || !a6)
      {
        return v8;
      }

      v39 = *(a2 + 24);
      v40 = *(a6 + 24);
      if (v39 != v40)
      {
        if (v39 <= v40)
        {
          return 0xFFFFFFFFLL;
        }

        return 1;
      }

      v41 = xmlStrcmp(*(a2 + 16), *(a6 + 16));
      if (v41 > 0)
      {
        return 1;
      }

      if (v41)
      {
        return 0xFFFFFFFFLL;
      }

      return 0;
    case 44:
      if (a5 == 44 && a2 && a6)
      {
        v42 = *(a2 + 24);
        v43 = *(a6 + 24);
        if (v42 == v43)
        {
          v44 = xmlStrcmp(*(a2 + 16), *(a6 + 16));
          if (v44)
          {
            v45 = -1;
          }

          else
          {
            v45 = 0;
          }

          if (v44 >= 1)
          {
            return 1;
          }

          else
          {
            return v45;
          }
        }

        else if (v42 > v43)
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v8;
    default:
      return v8;
  }
}