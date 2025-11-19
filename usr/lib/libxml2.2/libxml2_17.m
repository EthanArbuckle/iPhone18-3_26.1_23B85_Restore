int xmlSchemaCompareValuesWhtsp(xmlSchemaValPtr x, xmlSchemaWhitespaceValueType xws, xmlSchemaValPtr y, xmlSchemaWhitespaceValueType yws)
{
  if (x && y)
  {
    return xmlSchemaCompareValuesInternal(*x, x, 0, xws, *y, y, 0, yws);
  }

  else
  {
    return -2;
  }
}

unint64_t xmlSchemaGetFacetValueAsULong(unint64_t facet)
{
  if (facet)
  {
    v1 = *(facet + 56);
    if (v1)
    {
      return *(v1 + 16);
    }

    else
    {
      return 0;
    }
  }

  return facet;
}

int xmlSchemaValidateListSimpleTypeFacet(xmlSchemaFacetPtr facet, const xmlChar *value, unint64_t actualLen, unint64_t *expectedLen)
{
  if (!facet)
  {
    return -1;
  }

  type = facet->type;
  if (facet->type != XML_SCHEMA_FACET_MINLENGTH)
  {
    if (type == XML_SCHEMA_FACET_MAXLENGTH)
    {
      v5 = *(facet->val + 2);
      if (v5 < actualLen)
      {
        result = 1832;
        if (!expectedLen)
        {
          return result;
        }

        goto LABEL_11;
      }

      return 0;
    }

    if (type == XML_SCHEMA_FACET_LENGTH)
    {
      v5 = *(facet->val + 2);
      if (v5 != actualLen)
      {
        result = 1830;
        if (!expectedLen)
        {
          return result;
        }

        goto LABEL_11;
      }

      return 0;
    }

    return -1;
  }

  v5 = *(facet->val + 2);
  if (v5 <= actualLen)
  {
    return 0;
  }

  result = 1831;
  if (expectedLen)
  {
LABEL_11:
    *expectedLen = v5;
  }

  return result;
}

int xmlSchemaValidateFacet(xmlSchemaTypePtr base, xmlSchemaFacetPtr facet, const xmlChar *value, xmlSchemaValPtr val)
{
  if (val)
  {
    builtInType = *val;
    v7 = facet;
    return xmlSchemaValidateFacetInternal(v7, 0, builtInType, value, val, 0);
  }

  if (base)
  {
    builtInType = base->builtInType;
    v7 = facet;
    val = 0;
    return xmlSchemaValidateFacetInternal(v7, 0, builtInType, value, val, 0);
  }

  return -1;
}

int xmlSchemaValidateLengthFacet(xmlSchemaTypePtr type, xmlSchemaFacetPtr facet, const xmlChar *value, xmlSchemaValPtr val, unint64_t *length)
{
  if (type)
  {
    return xmlSchemaValidateLengthFacetInternal(facet, type->builtInType, value, val, length, 0);
  }

  else
  {
    return -1;
  }
}

uint64_t xmlSchemaValidateLengthFacetInternal(uint64_t a1, unsigned int a2, xmlChar *utf, _DWORD *a4, void *a5, int a6)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a5)
    {
      *a5 = 0;
      if ((*a1 - 1009) <= 2)
      {
        v9 = *(a1 + 56);
        if (v9)
        {
          v10 = *v9 == 33 || *v9 == 3;
          if (v10 && (*(v9 + 44) & 0xFE) == 0)
          {
            if (a4 && (*a4 == 44 || *a4 == 43))
            {
              v11 = a4[6];
              goto LABEL_27;
            }

            if (a2 <= 0x1D)
            {
              if (((1 << a2) & 0x21D70000) != 0)
              {
                if (utf)
                {
LABEL_18:
                  v11 = xmlSchemaNormLen(utf);
                  goto LABEL_27;
                }

                goto LABEL_26;
              }

              if (((1 << a2) & 6) != 0)
              {
                if (a6)
                {
                  if (!utf)
                  {
                    goto LABEL_26;
                  }

                  if (a6 == 3)
                  {
                    goto LABEL_18;
                  }
                }

                else if (a2 != 1)
                {
                  goto LABEL_18;
                }

                v11 = xmlUTF8Strlen(utf);
LABEL_27:
                *a5 = v11;
                v14 = *(*(a1 + 56) + 16);
                if (*a1 == 1011)
                {
                  if (v14 > v11)
                  {
                    return 1831;
                  }
                }

                else if (*a1 == 1009)
                {
                  if (v14 != v11)
                  {
                    return 1830;
                  }
                }

                else if (v14 < v11)
                {
                  return 1832;
                }

                return 0;
              }

              if (((1 << a2) & 0x10200000) != 0)
              {
                return 0;
              }
            }

            v12 = *__xmlGenericError();
            v13 = __xmlGenericErrorContext();
            v12(*v13, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 5361);
LABEL_26:
            v11 = 0;
            goto LABEL_27;
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlSchemaValidateFacetInternal(uint64_t a1, int a2, unsigned int a3, xmlChar *str2, uint64_t a5, int a6)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  if (*a1 <= 1005)
  {
    if (v7 <= 1002)
    {
      if (v7 == 1000)
      {
        v8 = xmlSchemaCompareValues(a5, *(a1 + 56));
        v9 = v8 >= 2;
        v10 = 1833;
        goto LABEL_41;
      }

      if (v7 != 1001)
      {
        if (v7 == 1002)
        {
          v8 = xmlSchemaCompareValues(a5, *(a1 + 56));
          v9 = v8 + 1 >= 2;
          v10 = 1834;
LABEL_41:
          if (!v9)
          {
            v10 = 0;
          }

          if (v8 == -2)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v10;
          }
        }

        goto LABEL_68;
      }

      v18 = xmlSchemaCompareValues(a5, *(a1 + 56));
      v19 = v18 == 1;
      v20 = 1835;
      goto LABEL_63;
    }

    if ((v7 - 1004) < 2)
    {
      v13 = *(a1 + 56);
      if (v13 && (*v13 - 33) <= 1)
      {
        result = 0xFFFFFFFFLL;
        if (!a5 || (*(v13 + 44) & 0xFE) != 0 || (*a5 - 30) >= 0xD && *a5 != 3)
        {
          return result;
        }

        v14 = *(a5 + 44);
        if (v7 == 1004)
        {
          if (*(v13 + 16) < v14 >> 8)
          {
            return 1837;
          }
        }

        else if (*(v13 + 16) < (v14 >> 1))
        {
          return 1838;
        }

        return 0;
      }

      return 0xFFFFFFFFLL;
    }

    if (v7 == 1003)
    {
      v18 = xmlSchemaCompareValues(a5, *(a1 + 56));
      v19 = v18 == -1;
      v20 = 1836;
LABEL_63:
      if (v19)
      {
        v20 = 0;
      }

      if (v18 == -2)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return v20;
      }
    }

    goto LABEL_68;
  }

  v12 = str2;
  if (v7 > 1008)
  {
    if ((v7 - 1010) >= 2 && v7 != 1009)
    {
      goto LABEL_68;
    }

    result = 0;
    if (a3 == 21 || a3 == 28)
    {
      return result;
    }

    v15 = *(a1 + 56);
    if (!v15)
    {
      return 0xFFFFFFFFLL;
    }

    v16 = *v15 == 33 || *v15 == 3;
    if (!v16 || (*(v15 + 44) & 0xFE) != 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (a5 && (*a5 == 44 || *a5 == 43))
    {
      v17 = *(a5 + 24);
      goto LABEL_89;
    }

    if (a3 > 0x1D)
    {
      goto LABEL_87;
    }

    if (((1 << a3) & 0x21D70000) != 0)
    {
      if (str2)
      {
LABEL_79:
        v17 = xmlSchemaNormLen(str2);
        goto LABEL_89;
      }

      goto LABEL_88;
    }

    if (((1 << a3) & 6) != 0)
    {
      if (!a6)
      {
        if (a3 != 1)
        {
          goto LABEL_79;
        }

LABEL_98:
        v17 = xmlUTF8Strlen(str2);
LABEL_89:
        v29 = *(*(a1 + 56) + 16);
        if (*a1 == 1011)
        {
          if (v29 > v17)
          {
            return 1831;
          }
        }

        else if (*a1 == 1009)
        {
          if (v29 != v17)
          {
            return 1830;
          }
        }

        else if (v29 < v17)
        {
          return 1832;
        }

        return 0;
      }

      if (str2)
      {
        if (a6 == 3)
        {
          goto LABEL_79;
        }

        goto LABEL_98;
      }
    }

    else
    {
LABEL_87:
      v27 = *__xmlGenericError();
      v28 = __xmlGenericErrorContext();
      v27(*v28, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 5615);
    }

LABEL_88:
    v17 = 0;
    goto LABEL_89;
  }

  if (v7 != 1006)
  {
    if (v7 == 1007)
    {
      if (!a6)
      {
        v26 = *(a1 + 16);
        if (!v26 || !xmlStrEqual(v26, str2))
        {
          return 1840;
        }

        return 0;
      }

      v18 = xmlSchemaCompareValuesInternal(**(a1 + 56), *(a1 + 56), *(a1 + 16), a2, a3, a5, str2, a6);
      v19 = v18 == 0;
      v20 = 1840;
      goto LABEL_63;
    }

    if (v7 == 1008)
    {
      return 0;
    }

LABEL_68:
    v24 = *__xmlGenericError();
    v25 = __xmlGenericErrorContext();
    v24(*v25, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemastypes.c", 5666);
    return 0;
  }

  if (!str2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a5)
  {
    if (*(a5 + 16))
    {
      v21 = *a5;
      if ((*a5 - 1) < 2 || v21 != 21 && (v21 - 28) >= 0xFFFFFFF4)
      {
        v12 = *(a5 + 16);
      }
    }
  }

  v22 = xmlRegexpExec(*(a1 + 64), v12);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 1839;
  }

  if (v22 == 1)
  {
    return 0;
  }

  else
  {
    return v23;
  }
}

int xmlSchemaGetCanonValue(xmlSchemaValPtr val, const xmlChar **retValue)
{
  v93 = *MEMORY[0x1E69E9840];
  result = -1;
  if (!val || !retValue)
  {
    goto LABEL_112;
  }

  *retValue = 0;
  switch(*val)
  {
    case 1:
      v16 = *(val + 2);
      if (v16)
      {
        goto LABEL_103;
      }

      goto LABEL_75;
    case 2:
      v57 = *(val + 2);
      if (!v57)
      {
LABEL_75:
        v16 = "";
        goto LABEL_103;
      }

      v15 = xmlSchemaWhiteSpaceReplace(v57);
LABEL_14:
      *retValue = v15;
      if (!v15)
      {
LABEL_15:
        v16 = *(val + 2);
        goto LABEL_103;
      }

      goto LABEL_109;
    case 3:
      v39 = *(val + 22);
      if ((v39 & 0xFF00) == 0x100 && *(val + 2) == 0)
      {
        v16 = "0.0";
        goto LABEL_103;
      }

      v41 = *(val + 3);
      v42 = *(val + 4);
      v43 = v39 >> 8;
      if (v39)
      {
        v44 = 3;
      }

      else
      {
        v44 = 2;
      }

      v45 = v44 + (v39 >> 8);
      v46 = v39 >> 1;
      if (v39 >> 1)
      {
        v47 = v43 == v46;
      }

      else
      {
        v47 = 1;
      }

      if (v47)
      {
        v48 = v45 + 1;
      }

      else
      {
        v48 = v45;
      }

      v49 = malloc_type_malloc(v48, 0x33D99EEAuLL);
      if (!v49)
      {
        goto LABEL_96;
      }

      v50 = v49;
      v51 = v49;
      if (v39)
      {
        *v49 = 45;
        v51 = v49 + 1;
      }

      if (v43 == v46)
      {
        *v51 = 11824;
        v51 += 2;
      }

      v52 = &v49[v48] - v51;
      if (v42)
      {
        snprintf(v51, v52, "%lu%lu%lu");
      }

      else if (v41)
      {
        snprintf(v51, v52, "%lu%lu");
      }

      else
      {
        snprintf(v51, v52, "%lu");
      }

      if (!(v39 >> 1))
      {
        v76 = &v50[v48 - 3];
        *&v50[v48 - 2] = 48;
LABEL_124:
        *v76 = 46;
        goto LABEL_125;
      }

      if (v43 != v46)
      {
        v76 = &v51[(v43 - v46)];
        memmove(v76 + 1, v76, v46 + 1);
        goto LABEL_124;
      }

      v74 = -1;
      do
      {
        ++v74;
      }

      while (v51[v74]);
      v75 = v43 - v74;
      if (v43 > v74)
      {
        memmove(&v51[v75], v51, v74 + 1);
        memset(v51, 48, v75);
      }

LABEL_125:
      *retValue = v50;
LABEL_109:
      if (*retValue)
      {
        result = 0;
      }

      else
      {
        result = -1;
      }

LABEL_112:
      v73 = *MEMORY[0x1E69E9840];
      return result;
    case 4:
      memset(__str, 0, sizeof(__str));
      *(v88 + 6) = 0;
      *&v88[0] = 0;
      if ((*(val + 40) & 1) == 0)
      {
        v37 = *(val + 6);
        v82 = *(val + 4);
        *&v78 = (v37 >> 9) & 0x1F;
        v80 = (v37 >> 14) & 0x3F;
        v21 = "%02u:%02u:%02.14g";
        goto LABEL_70;
      }

      v62 = xmlSchemaDateNormalize(val, 0.0);
      if (!v62)
      {
        goto LABEL_96;
      }

      v63 = v62;
      v64 = v62[6];
      v83 = *(v62 + 4);
      v79 = (v64 >> 9) & 0x1F;
      v81 = (v64 >> 14) & 0x3F;
      v65 = "%02u:%02u:%02.14gZ";
      goto LABEL_94;
    case 5:
      v12 = malloc_type_malloc(6uLL, 0x86FC1858uLL);
      *retValue = v12;
      if (!v12)
      {
        goto LABEL_96;
      }

      v77 = (*(val + 6) >> 4) & 0x1F;
      v13 = "---%02u";
      goto LABEL_40;
    case 6:
      v12 = malloc_type_malloc(6uLL, 0xF2947D5EuLL);
      *retValue = v12;
      if (!v12)
      {
        goto LABEL_96;
      }

      v77 = *(val + 6) & 0xF;
      v13 = "--%02u";
LABEL_40:
      v38 = 6;
      goto LABEL_108;
    case 7:
      v35 = malloc_type_malloc(8uLL, 0xEBF66DCCuLL);
      *retValue = v35;
      if (!v35)
      {
        goto LABEL_96;
      }

      v36 = *(val + 6);
      snprintf(v35, 8uLL, "--%02u-%02u");
      goto LABEL_109;
    case 8:
      memset(__str, 0, sizeof(__str));
      *(v88 + 6) = 0;
      *&v88[0] = 0;
      v78 = *(val + 2);
      v21 = "%04ld";
      goto LABEL_70;
    case 9:
      *__str = 0u;
      memset(v88, 0, 19);
      v34 = *(val + 2);
      if (v34 < 0)
      {
        *&v78 = -v34;
        v80 = *(val + 6) & 0xF;
        v21 = "-%04ld-%02u";
      }

      else
      {
        v78 = *(val + 2);
        v80 = *(val + 6) & 0xF;
        v21 = "%04ld-%02u";
      }

      v58 = 35;
      goto LABEL_101;
    case 0xA:
      memset(__str, 0, sizeof(__str));
      *(v88 + 6) = 0;
      *&v88[0] = 0;
      if ((*(val + 40) & 1) == 0)
      {
        v56 = *(val + 6);
        v80 = v56 & 0xF;
        v82 = (v56 >> 4) & 0x1F;
        v78 = *(val + 2);
        v21 = "%04ld-%02u-%02u";
LABEL_70:
        v58 = 30;
LABEL_101:
        snprintf(__str, v58, v21, *&v78, v80, v82, v84, v85, v86, *__str, *&__str[8], v88[0], v88[1], v89, v90, v91, v92);
        goto LABEL_102;
      }

      v70 = xmlSchemaDateNormalize(val, 0.0);
      if (!v70)
      {
        goto LABEL_96;
      }

      v63 = v70;
      v71 = v70[6];
      v81 = v71 & 0xF;
      v83 = (v71 >> 4) & 0x1F;
      v79 = *(v70 + 2);
      v65 = "%04ld-%02u-%02uZ";
LABEL_94:
      snprintf(__str, 0x1EuLL, v65, v79, v81, v83, v84, v85, v86, *__str, *&__str[8], v88[0], v88[1], v89);
      goto LABEL_95;
    case 0xB:
      LOWORD(v89) = 0;
      memset(v88, 0, sizeof(v88));
      *__str = 0u;
      if ((*(val + 20) & 1) == 0)
      {
        v53 = *(val + 2);
        v54 = *(val + 6);
        v55 = *(val + 4);
        snprintf(__str, 0x32uLL, "%04ld-%02u-%02uT%02u:%02u:%02.14g");
        goto LABEL_102;
      }

      v66 = xmlSchemaDateNormalize(val, 0.0);
      if (!v66)
      {
        goto LABEL_96;
      }

      v63 = v66;
      v67 = *(v66 + 2);
      v68 = v66[6];
      v69 = *(v66 + 4);
      snprintf(__str, 0x32uLL, "%04ld-%02u-%02uT%02u:%02u:%02.14gZ");
LABEL_95:
      xmlSchemaFreeValue(v63);
      goto LABEL_102;
    case 0xC:
      LODWORD(v92) = 0;
      v90 = 0u;
      v91 = 0u;
      v89 = 0u;
      *__str = 0u;
      memset(v88, 0, sizeof(v88));
      v22 = *(val + 2);
      if (v22 >= 0)
      {
        v23 = *(val + 2);
      }

      else
      {
        v23 = -v22;
      }

      v24 = vcvtmd_u64_f64(v23 / 12.0);
      v25 = v23 - 12 * v24;
      v26 = *(val + 4);
      v27 = fabs(v26);
      v28 = vcvtmd_u64_f64(v27 / 86400.0);
      v29 = v27 - (86400 * v28);
      v30 = 0.0;
      if (v29 <= 0.0)
      {
        v31 = 0;
      }

      else
      {
        v31 = vcvtmd_u64_f64(v29 / 3600.0);
        v32 = v29 - (3600 * v31);
        if (v32 > 0.0)
        {
          v33 = vcvtmd_u64_f64(v32 / 60.0);
          v30 = v32 - (60 * v33);
          goto LABEL_80;
        }
      }

      v33 = 0;
LABEL_80:
      if (v26 < 0.0 || v22 < 0)
      {
        v61 = "P%luY%luM%luDT%luH%luM%.14gS";
      }

      else
      {
        v61 = "-P%luY%luM%luDT%luH%luM%.14gS";
      }

      snprintf(__str, 0x64uLL, v61, v24, v25, v28, v31, v33, *&v30, *__str, *&__str[8], v88[0], v88[1], v89, v90, v91, v92);
LABEL_102:
      v16 = __str;
      goto LABEL_103;
    case 0xD:
      memset(__str, 0, sizeof(__str));
      *(v88 + 6) = 0;
      *&v88[0] = 0;
      v78 = *(val + 4);
      v21 = "%01.14e";
      goto LABEL_70;
    case 0xE:
      *__str = 0u;
      memset(v88, 0, 24);
      v59 = *(val + 2);
      snprintf(__str, 0x28uLL, "%01.14e");
      goto LABEL_102;
    case 0xF:
      if (*(val + 4))
      {
        v16 = "true";
      }

      else
      {
        v16 = "false";
      }

      goto LABEL_103;
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x14:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x1A:
    case 0x1C:
    case 0x1D:
      v14 = *(val + 2);
      if (!v14)
      {
        goto LABEL_96;
      }

      v15 = xmlSchemaCollapseString(v14);
      goto LABEL_14;
    case 0x15:
      if (*(val + 3))
      {
        v17 = xmlStrdup("{");
        *retValue = v17;
        v18 = xmlStrcat(v17, *(val + 3));
        *retValue = v18;
        v19 = xmlStrcat(v18, "}");
        *retValue = v19;
        v20 = xmlStrcat(v19, *(val + 3));
        goto LABEL_104;
      }

      v72 = xmlStrdup(*(val + 2));
      result = 0;
      *retValue = v72;
      goto LABEL_112;
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
      v5 = *(val + 22);
      v6 = *(val + 2);
      if ((v5 & 0xFF00) == 0x100 && v6 == 0)
      {
        v16 = "0";
LABEL_103:
        v20 = xmlStrdup(v16);
LABEL_104:
        *retValue = v20;
      }

      else
      {
        v8 = *(val + 3);
        v9 = *(val + 4);
        v10 = v5 & 1;
        v11 = v10 + (v5 >> 8) + 1;
        v12 = malloc_type_malloc(v11, 0x3C599FF3uLL);
        *retValue = v12;
        if (!v12)
        {
LABEL_96:
          result = -1;
          goto LABEL_112;
        }

        if (v9)
        {
          v80 = v8;
          v82 = v6;
          v77 = v9;
          if (v10)
          {
            v13 = "-%lu%lu%lu";
          }

          else
          {
            v13 = "%lu%lu%lu";
          }
        }

        else if (v8)
        {
          v77 = v8;
          v80 = v6;
          if (v10)
          {
            v13 = "-%lu%lu";
          }

          else
          {
            v13 = "%lu%lu";
          }
        }

        else
        {
          v77 = v6;
          if (v10)
          {
            v13 = "-%lu";
          }

          else
          {
            v13 = "%lu";
          }
        }

        v38 = v11;
LABEL_108:
        snprintf(v12, v38, v13, v77, v80, v82);
      }

      goto LABEL_109;
    case 0x2B:
    case 0x2C:
      goto LABEL_15;
    default:
      *retValue = xmlStrdup("???");
      result = 1;
      goto LABEL_112;
  }
}

int *xmlSchemaDateNormalize(unsigned int *a1, double a2)
{
  v3 = *a1;
  v4 = *a1 > 0xB || ((1 << *a1) & 0xC10) == 0;
  if (v4 || (a1[10] & 0x1FFE) == 0)
  {
    v33 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
    v10 = v33;
    if (v33)
    {
      v33[2] = 0u;
      *(v33 + 20) = 0u;
      *(v33 + 4) = 0u;
      *v33 = v3;
      v34 = *(a1 + 2);
      v35 = *a1;
      v33[1] = *(a1 + 1);
      v33[2] = v34;
      *v33 = v35;
      *(v33 + 1) = 0;
    }

    return v10;
  }

  v6 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v6[2] = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 4) = 0u;
  *v6 = 12;
  *(v6 + 4) = 0.0 - a2;
  v8 = *a1;
  v9 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_77;
  }

  v9[2] = 0u;
  *(v9 + 20) = 0u;
  *(v9 + 4) = 0u;
  *v9 = v8;
  v11 = *a1;
  v12 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (!v12)
  {
    v12 = v10;
    v10 = 0;
    goto LABEL_76;
  }

  v12[2] = 0u;
  *(v12 + 20) = 0u;
  *(v12 + 4) = 0u;
  *v12 = v11;
  v14 = *(a1 + 1);
  v13 = *(a1 + 2);
  *v12 = *a1;
  v12[1] = v14;
  v12[2] = v13;
  *(v12 + 1) = 0;
  v15 = *(v12 + 6);
  if ((v15 & 0xF) == 0)
  {
    *(v12 + 6) = v15 | 1;
  }

  v7[4] = v7[4] - (60 * (*(v12 + 20) << 19 >> 20));
  *(v12 + 20) &= 0xE001u;
  v16 = *(v12 + 6);
  if ((v16 & 0x1F0) == 0)
  {
    v16 |= 0x10u;
    *(v12 + 6) = v16;
  }

  v17 = (*(v7 + 2) + (v16 & 0xF) - 1);
  v18 = (v17 - floor(v17 / 12.0) * 12.0 + 1.0);
  v19 = v10[6] & 0xFFFFFFF0 | v18 & 0xF;
  v10[6] = v19;
  v20 = *(v12 + 2) + vcvtmd_s64_f64(v17 / 12.0);
  *(v10 + 2) = v20;
  if (!v20)
  {
    v20 = 1;
    if (*(v12 + 2) >= 1)
    {
      v20 = -1;
    }

    *(v10 + 2) = v20;
  }

  v21 = v18 & 0xF;
  v22 = v10[10] & 0xE001 | (2 * ((*(v12 + 20) >> 1) & 0xFFF));
  *(v10 + 20) = v22;
  *(v10 + 20) = v22 & 0xFFFE | *(v12 + 20) & 1;
  v23 = *(v12 + 4) + v7[4];
  v24 = vcvtmd_s64_f64(v23 / 60.0);
  if (v23 != 0.0)
  {
    v23 = v23 - floor(v23 / 60.0) * 60.0;
  }

  *(v10 + 4) = v23;
  v25 = (((*(v12 + 6) >> 14) & 0x3F) + v24);
  v26 = v19 & 0xFFF03FFF | (((v25 - floor(v25 / 60.0) * 60.0) & 0x3F) << 14);
  v10[6] = v26;
  v27 = (vcvtmd_s64_f64(v25 / 60.0) + ((*(v12 + 6) >> 9) & 0x1F));
  v28 = v26 & 0xFFFFC1FF | (((v27 - floor(v27 / 24.0) * 24.0) & 0x1F) << 9);
  v10[6] = v28;
  v29 = v21 - 1;
  v30 = (*(v12 + 6) >> 4) & 0x1F;
  v31 = vcvtmd_s64_f64(v27 / 24.0);
  if ((v21 - 1) > 0xB || ((v20 & 3) == 0 && v20 % 100 || __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v20, 4) <= 0xA3D70A3D70A3D6uLL ? (v32 = daysInMonthLeap[v29]) : (v32 = daysInMonth[v29]), v30 <= v32))
  {
    if (v30 <= 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = (*(v12 + 6) >> 4) & 0x1F;
    }
  }

  v36 = *(v7 + 3) + v31 + v32;
  while (1)
  {
    v37 = v28 & 0xF;
    if (v36 > 0)
    {
      break;
    }

    v41 = (v37 - 2);
    v42 = (v41 - floor(v41 / 12.0) * 12.0 + 1.0);
    v43 = v20 + vcvtmd_s64_f64(v41 / 12.0);
    if (!v43)
    {
      v43 = -1;
    }

    if (v42 <= 1)
    {
      v42 = 1;
    }

    if (v42 >= 12)
    {
      v42 = 12;
    }

    v44 = 0x8F5C28F5C28F5C29 * v43;
    v45 = __ROR8__(0x8F5C28F5C28F5C29 * v43 + 0x51EB851EB851EB8, 2);
    v46 = v43 & 3;
    v47 = v45 > 0x28F5C28F5C28F5CLL && v46 == 0;
    v48 = __ROR8__(v44 + 0x51EB851EB851EB0, 4);
    if (!v47 && v48 >= 0xA3D70A3D70A3D7)
    {
      v50 = daysInMonth;
    }

    else
    {
      v50 = daysInMonthLeap;
    }

    v36 += v50[v42 - 1];
    v40 = -1;
LABEL_59:
    v51 = v40 + (v28 & 0xF);
    v52 = (v51 - 1);
    v28 = v28 & 0xFFFFFFF0 | (v52 - floor(v52 / 12.0) * 12.0 + 1.0) & 0xF;
    v10[6] = v28;
    v20 += vcvtmd_s64_f64(v52 / 12.0);
    if (v51 < 1)
    {
      v53 = -1;
    }

    else
    {
      v53 = 1;
    }

    if (!v20)
    {
      v20 = v53;
    }

    *(v10 + 2) = v20;
  }

  v38 = v37 - 1;
  if ((v37 - 1) <= 0xB)
  {
    v39 = (v20 & 3) == 0 && v20 % 100 || __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v20, 4) <= 0xA3D70A3D70A3D6uLL ? daysInMonthLeap[v38] : daysInMonth[v38];
    if (v36 > v39)
    {
      v36 -= v39;
      v40 = 1;
      goto LABEL_59;
    }
  }

  v10[6] = v28 & 0xFFFFFE0F | (16 * (v36 & 0x1F));
  v54 = *v10;
  if (*v10 != 11)
  {
    v55 = 11;
    if (v23 != 0.0 || (v28 & 0xFFE00) != 0)
    {
LABEL_75:
      *v10 = v55;
    }

    else if (v54 != 10)
    {
      if (v37 != 1 && (v36 & 0x1F) != 1)
      {
        v55 = 10;
        goto LABEL_75;
      }

      if (v37 != 1 && v54 != 9)
      {
        v55 = 9;
        goto LABEL_75;
      }
    }
  }

LABEL_76:
  xmlSchemaFreeValue(v12);
LABEL_77:
  xmlSchemaFreeValue(v7);
  return v10;
}

int xmlSchemaGetCanonValueWhtsp(xmlSchemaValPtr val, const xmlChar **retValue, xmlSchemaWhitespaceValueType ws)
{
  result = -1;
  if (val && retValue && ws - 4 >= 0xFFFFFFFD)
  {
    *retValue = 0;
    if (*val == 2)
    {
      v6 = *(val + 2);
      if (!v6)
      {
        v8 = "";
        goto LABEL_22;
      }

      if (ws == XML_SCHEMA_WHITESPACE_COLLAPSE)
      {
LABEL_12:
        v7 = xmlSchemaCollapseString(v6);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (*val == 1)
    {
      v6 = *(val + 2);
      if (!v6)
      {
        v7 = xmlStrdup("");
LABEL_18:
        *retValue = v7;
        if (v7)
        {
          return 0;
        }

        goto LABEL_20;
      }

      if (ws != XML_SCHEMA_WHITESPACE_REPLACE)
      {
        if (ws != XML_SCHEMA_WHITESPACE_COLLAPSE)
        {
LABEL_20:
          v8 = *(val + 2);
LABEL_22:
          v9 = xmlStrdup(v8);
          result = 0;
          *retValue = v9;
          return result;
        }

        goto LABEL_12;
      }

LABEL_16:
      v7 = xmlSchemaWhiteSpaceReplace(v6);
      goto LABEL_18;
    }

    return xmlSchemaGetCanonValue(val, retValue);
  }

  return result;
}

xmlSchemaValType xmlSchemaGetValType(xmlSchemaValPtr val)
{
  if (val)
  {
    LODWORD(val) = *val;
  }

  return val;
}

uint64_t xmlSchemaParseUInt(unsigned __int8 **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = **a1;
  if ((v5 - 48) > 9)
  {
    return 4294967294;
  }

  if (v5 == 48)
  {
    do
    {
      v6 = *++v4;
      v7 = v6 - 48;
    }

    while (v6 == 48);
    if (v7 > 9)
    {
      v16 = 0;
      v11 = 0;
      v12 = 0;
      v17 = 0;
LABEL_22:
      *a1 = v4;
      *a2 = v17;
      *a3 = v16;
      *a4 = v12;
      return v11;
    }
  }

  v8 = -1;
  v9 = v4;
  do
  {
    v10 = *++v9;
    ++v8;
  }

  while ((v10 - 48) < 0xA);
  if (v8 <= 0x17)
  {
    v11 = v8 + 1;
    if (v8 < 0x10)
    {
      v12 = 0;
      v16 = 0;
      v15 = v8 + 1;
      v18 = v8 + 1;
      if (v8 < 8)
      {
LABEL_19:
        v17 = 0;
        v22 = v18 + 1;
        v23 = v4;
        do
        {
          v24 = *v23++;
          v17 = v24 + 10 * v17 - 48;
          --v22;
        }

        while (v22 > 1);
        v4 += v18;
        goto LABEL_22;
      }
    }

    else
    {
      v12 = 0;
      v13 = v8 + 1;
      do
      {
        v14 = *v4++;
        v12 = v14 + 10 * v12 - 48;
        --v13;
      }

      while (v13 > 0x10);
      v4 = v9 - 16;
      v15 = 16;
    }

    v16 = 0;
    v19 = (v15 - 8);
    v20 = v4;
    do
    {
      v21 = *v20++;
      v16 = v21 + 10 * v16 - 48;
      --v15;
    }

    while (v15 > 8);
    v4 += v19;
    v18 = 8;
    goto LABEL_19;
  }

  *a1 = v9;
  return 0xFFFFFFFFLL;
}

uint64_t xmlSchemaValidateDuration(unsigned __int8 *a1, void *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  while (1)
  {
    v3 = *a1;
    v4 = v3 > 0x20 || ((1 << v3) & 0x100002600) == 0;
    if (v4)
    {
      break;
    }

    ++a1;
  }

  if (v3 == 45)
  {
    v5 = a1 + 1;
  }

  else
  {
    v5 = a1;
  }

  v7 = *v5;
  v6 = v5 + 1;
  if (v7 != 80 || !*v6)
  {
    return 1;
  }

  v8 = malloc_type_malloc(0x30uLL, 0x103204000EFBC0FuLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v8[2] = 0u;
  *(v8 + 20) = 0u;
  *(v8 + 4) = 0u;
  *v8 = 12;
  v9 = *v6;
  if (*v6)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0u;
    v14 = 0.0;
    while (1)
    {
      if (v13 > 5)
      {
LABEL_67:
        xmlSchemaFreeValue(v8);
        return 1;
      }

      if (v9 == 84)
      {
        if (v13 > 3)
        {
          goto LABEL_67;
        }

        v15 = *++v6;
        v9 = v15;
        v13 = 3u;
      }

      else if (v13 == 3)
      {
        goto LABEL_67;
      }

      if ((v9 - 48) <= 9)
      {
        v16 = 0;
        while (v16 <= 0xCCCCCCCCCCCCCCCLL)
        {
          v17 = v9 & 0xF;
          v18 = 10 * v16;
          if (v18 > (v17 ^ 0x7FFFFFFFFFFFFFFFLL))
          {
            break;
          }

          v16 = v18 + v17;
          v19 = *++v6;
          v9 = v19;
          if ((v19 - 48) >= 0xA)
          {
            v20 = 1;
            goto LABEL_27;
          }
        }

        goto LABEL_67;
      }

      v16 = 0;
      v20 = 0;
LABEL_27:
      if (v9 == 46)
      {
        v22 = *++v6;
        v21 = v22;
        if ((v22 - 48) <= 9)
        {
          v23 = 1.0;
          do
          {
            v23 = v23 / 10.0;
            v14 = v14 + (v21 - 48) * v23;
            v24 = *++v6;
            v21 = v24;
          }

          while ((v24 - 48) < 0xA);
          v20 = 1;
        }
      }

      else
      {
        v21 = v9;
      }

      while (v21 != aYmdhms[v13])
      {
        if (v13 != 2)
        {
          v4 = v13++ == 5;
          if (!v4)
          {
            continue;
          }
        }

        goto LABEL_67;
      }

      v26 = v9 == 46 && v13 != 5;
      if (!v20 || v26)
      {
        goto LABEL_67;
      }

      if (v13 > 2)
      {
        switch(v13)
        {
          case 3:
            if (v11 > ((v16 / 24) ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              goto LABEL_67;
            }

            v11 += v16 / 24;
            *(v8 + 3) = v11;
            v12 = 3600 * (v16 % 24);
            break;
          case 4:
            if (v11 > ((v16 / 1440) ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              goto LABEL_67;
            }

            v11 += v16 / 1440;
            *(v8 + 3) = v11;
            v12 += 60 * (v16 % 1440);
            break;
          case 5:
            if (v11 > ((v16 / 86400) ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              goto LABEL_67;
            }

            v11 += v16 / 86400;
            *(v8 + 3) = v11;
            v12 += v16 % 86400;
            break;
        }

        goto LABEL_65;
      }

      if (v13)
      {
        if (v13 != 1)
        {
          if (v13 == 2)
          {
            *(v8 + 3) = v16;
            v11 = v16;
          }

          goto LABEL_65;
        }

        if (v10 > (v16 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_67;
        }

        v10 += v16;
      }

      else
      {
        if (v16 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_67;
        }

        v10 = 12 * v16;
      }

      *(v8 + 2) = v10;
LABEL_65:
      ++v13;
      v27 = *++v6;
      v9 = v27;
      if (!v27)
      {
        v28 = v12 / 86400;
        if (v11 <= ((v12 / 86400) ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          goto LABEL_73;
        }

        goto LABEL_67;
      }
    }
  }

  v28 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v14 = 0.0;
LABEL_73:
  v31 = v11 + v28;
  *(v8 + 3) = v31;
  v32 = v14 + (v12 % 86400);
  *(v8 + 4) = v32;
  if (v3 == 45)
  {
    *(v8 + 2) = -v10;
    *(v8 + 3) = -v31;
    *(v8 + 4) = -v32;
  }

  if (a2)
  {
    v29 = 0;
    *a2 = v8;
  }

  else
  {
    xmlSchemaFreeValue(v8);
    return 0;
  }

  return v29;
}

_BYTE *xmlSchemaCheckLanguageType(_BYTE *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      v2 = 0;
      v3 = result + 1;
      v4 = 1;
      while (1)
      {
        if ((v1 & 0xDFu) - 65 >= 0x1A)
        {
          if (v1 == 45)
          {
            v4 = 0;
            result = 0;
            v5 = v2 - 9;
            v2 = 0;
            if (v5 < 0xFFFFFFF8)
            {
              return result;
            }

            goto LABEL_11;
          }

          result = 0;
          if (v4 || (v1 - 48) >= 0xA)
          {
            return result;
          }
        }

        ++v2;
LABEL_11:
        v6 = *v3++;
        v1 = v6;
        if (!v6)
        {
          return ((v2 - 1) < 8);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t xmlSchemaValAtomicListNode(uint64_t a1, xmlChar *cur, void *a3, uint64_t a4)
{
  if (!cur)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = xmlStrdup(cur);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v7;
  if (a3)
  {
    *a3 = 0;
  }

  for (i = v7; ; ++i)
  {
    v10 = *i;
    v11 = v10 > 0x20 || ((1 << v10) & 0x100002600) == 0;
    if (v11)
    {
      break;
    }

    *i = 0;
  }

  v12 = 0;
  while (1)
  {
    while (v10 > 0x20u)
    {
LABEL_22:
      v12 = (v12 + 1);
      do
      {
        v14 = *++i;
        LOBYTE(v10) = v14;
        v15 = (1 << v14) & 0x100002601;
      }

      while (v14 > 0x20 || v15 == 0);
    }

    if (((1 << v10) & 0x100002600) == 0)
    {
      break;
    }

    do
    {
      *i++ = 0;
      v10 = *i;
    }

    while (v10 <= 0x20 && ((1 << v10) & 0x100002600) != 0);
  }

  if (v10)
  {
    goto LABEL_22;
  }

  if (v12)
  {
    v17 = v7;
    do
    {
      v11 = v17 == i;
      v19 = *v17++;
      v18 = v19;
    }

    while (!v11 && !v18);
    while (1)
    {
      v23 = v17 - 1;
      if (v17 - 1 == i)
      {
        break;
      }

      if (xmlSchemaValAtomicType(a1, v17 - 1, 0, a4, 0, 1, 0))
      {
        v12 = 0xFFFFFFFFLL;
        break;
      }

      v17 = v23 - 1;
        ;
      }

      do
      {
        v11 = v17 == i;
        v22 = *v17++;
        v21 = v22;
      }

      while (!v11 && !v21);
    }
  }

  free(v8);
  return v12;
}

xmlChar *xmlSchemaStrip(const xmlChar *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 0;
  v2 = a1;
  for (i = a1; ; a1 = i)
  {
    v5 = *i++;
    v4 = v5;
    if (v5 > 0x20)
    {
      v6 = a1;
      goto LABEL_9;
    }

    if (((1 << v4) & 0x100002600) == 0)
    {
      break;
    }

    ++v2;
    --v1;
  }

  v6 = a1;
  if (!v4)
  {
    v6 = a1;
    goto LABEL_10;
  }

LABEL_9:
    ;
  }

LABEL_10:
  v8 = v6 - 1;
  v9 = v6;
  if (v6 - 1 <= a1)
  {
LABEL_17:
    if (v1)
    {
      return xmlStrndup(a1, v9 - v2);
    }
  }

  else
  {
    v9 = (a1 + 1);
    while (1)
    {
      v10 = *v8;
      v11 = v10 > 0x20;
      v12 = (1 << v10) & 0x100002600;
      if (v11 || v12 == 0)
      {
        break;
      }

      if (--v8 <= a1)
      {
        goto LABEL_17;
      }
    }

    v9 = (v8 + 1);
    if (v1)
    {
      return xmlStrndup(a1, v9 - v2);
    }
  }

  if (v6 == v9)
  {
    return 0;
  }

  return xmlStrndup(a1, v9 - v2);
}

uint64_t _xmlSchemaBase64Decode(int a1)
{
  v1 = a1 - 65;
  if (a1 == 47)
  {
    v2 = 63;
  }

  else
  {
    v2 = -1;
  }

  if (a1 == 61)
  {
    v3 = 64;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 43)
  {
    v4 = 62;
  }

  else
  {
    v4 = v3;
  }

  if ((a1 - 48) <= 9)
  {
    v5 = a1 + 4;
  }

  else
  {
    v5 = v4;
  }

  if ((a1 - 97) <= 0x19)
  {
    v6 = a1 - 71;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 0x19)
  {
    return v1;
  }

  else
  {
    return v6;
  }
}

uint64_t _xmlSchemaParseGDay(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v4 + 10 * v3;
  if ((v7 - 529) > 0x1E)
  {
    return 2;
  }

  v5 = 0;
  *(a1 + 8) = (*(a1 + 8) & 0xFFFFFE0F) + 16 * v7 - 8448;
  *a2 = (v2 + 2);
  return v5;
}

uint64_t _xmlSchemaParseTimeZone(uint64_t a1, unsigned __int8 **a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a2;
  v3 = **a2;
  v4 = 1;
  if (v3 <= 0x2C)
  {
    if (!**a2)
    {
      v7 = *(a1 + 24) & 0xE000;
LABEL_14:
      *(a1 + 24) = v7;
      goto LABEL_15;
    }

    if (v3 != 43)
    {
      return v4;
    }

LABEL_10:
    v5 = v2[1];
    if ((v5 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v6 = v2[2];
    if ((v6 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v9 = v6 + 10 * v5;
    if (v9 > 0x227)
    {
      return 2;
    }

    if (v2[3] != 58)
    {
      return 1;
    }

    v10 = (120 * v9 + 2176) & 0x1FF8;
    v11 = *(a1 + 24) & 0xE001;
    v12 = v11 | v10;
    *(a1 + 24) = *(a1 + 24) & 0xE001 | v10;
    v13 = v2[4];
    if ((v13 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v14 = v2[5];
    if ((v14 - 58) < 0xFFFFFFF6)
    {
      return 1;
    }

    v15 = v14 + 10 * v13;
    if (v15 > 0x24B)
    {
      return 2;
    }

    v16 = v12 + 2 * v15 - 1056;
    v17 = v3 == 45 ? -(v16 & 0x1FFE) : v16;
    v18 = v17 & 0x1FFE | v11;
    *(a1 + 24) = v18;
    if (((v17 << 19 >> 20) + 840) > 0x690)
    {
      return 2;
    }

    v2 += 6;
    v7 = v18 | 1;
    goto LABEL_14;
  }

  if (v3 == 45)
  {
    goto LABEL_10;
  }

  if (v3 == 90)
  {
    *(a1 + 24) = *(a1 + 24) & 0xE000 | 1;
    ++v2;
LABEL_15:
    v4 = 0;
    *a2 = v2;
  }

  return v4;
}

uint64_t _xmlSchemaParseGMonth(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = *(v2 + 1);
  if ((v4 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v7 = v4 + 10 * v3;
  if ((v7 - 529) > 0xB)
  {
    return 2;
  }

  v5 = 0;
  *(a1 + 8) = v7 + (*(a1 + 8) & 0xFFFFFFF0) - 528;
  *a2 = (v2 + 2);
  return v5;
}

uint64_t _xmlSchemaParseTime(uint64_t a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if ((v3 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v4 = v2[1];
  if ((v4 - 58) < 0xFFFFFFF6 || v2[2] != 58)
  {
    return 1;
  }

  v5 = v4 + 10 * v3;
  if (v5 > 0x228)
  {
    return 2;
  }

  v7 = (*(a1 + 8) & 0xFFFFC1FF | ((v5 & 0x1F) << 9)) ^ 0x2000;
  *(a1 + 8) = v7;
  v8 = v2[3];
  if ((v8 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v9 = v2[4];
  if ((v9 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v11 = v9 + 10 * v8;
  if (v11 > 0x24B)
  {
    return 2;
  }

  v12 = (v11 << 14) + 786432;
  *(a1 + 8) = v12 & 0xFC000 | v7 & 0xFFF03FFF;
  if (v2[5] != 58)
  {
    return 1;
  }

  v13 = v2[6];
  if ((v13 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v14 = v2[7];
  if ((v14 - 58) < 0xFFFFFFF6)
  {
    return 1;
  }

  v15 = (v14 + 10 * v13 - 528);
  *(a1 + 16) = v15;
  v16 = v2 + 8;
  if (v2[8] == 46)
  {
    v19 = v2[9];
    v17 = v2 + 9;
    v18 = v19;
    v20 = v19 - 48;
    if ((v19 - 48) > 9)
    {
      return 1;
    }

    v21 = 1.0;
    v16 = v17;
    do
    {
      v21 = v21 / 10.0;
      v15 = v15 + (v18 - 48) * v21;
      *(a1 + 16) = v15;
      v22 = *++v16;
      v18 = v22;
    }

    while ((v22 - 48) < 0xA);
    if (v20 > 9)
    {
      return 1;
    }
  }

  if ((~v7 & 0x3000) != 0 && (v12 & 0xF0000) != 0xF0000 && (v15 >= 0.0 ? (v23 = v15 < 60.0) : (v23 = 0), v23) || (v24 = (v5 & 0x1F) << 9, v6 = 2, v24 == 4096) && (v12 & 0xFC000) == 0 && v15 == 0.0)
  {
    if (((*(a1 + 24) << 19 >> 20) + 840) <= 0x690)
    {
      v6 = 0;
      *a2 = v16;
      return v6;
    }

    return 2;
  }

  return v6;
}

uint64_t xmlSchemaCompareDecimals(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 44);
  if ((v3 & 1) != 0 && (*(a1 + 16) || *(a1 + 24) || *(a1 + 32)))
  {
    v4 = *(a2 + 44);
    if ((v4 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a2 + 16) || *(a2 + 24))
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0xFFFFFFFFLL;
      if (!*(a2 + 32))
      {
        return result;
      }
    }
  }

  else
  {
    v4 = *(a2 + 44);
    if (v4)
    {
      if (*(a2 + 16) || *(a2 + 24))
      {
        return 1;
      }

      result = 1;
      if (*(a2 + 32))
      {
        return result;
      }
    }

    else
    {
      result = 1;
    }
  }

  v6 = (v3 >> 8) - (v3 >> 1);
  v7 = (v4 >> 8) - (v4 >> 1);
  if (v6 == 1 && !v2[2])
  {
    if (v7 != 1)
    {
      return -result;
    }

    if (*(a2 + 16))
    {
      return -result;
    }

    else
    {
      return 0;
    }
  }

  else if (v7 == 1 && !*(a2 + 16))
  {
    if (v6 == 1)
    {
      if (v2[2])
      {
        return result;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v6 > v7)
    {
      return result;
    }

    if (v7 > v6)
    {
      return -result;
    }

    v8 = (v3 >> 8) - (v4 >> 8);
    if (v8 < 0)
    {
      v8 = (v4 >> 8) - (v3 >> 8);
      result = -result;
      v9 = a2;
    }

    else
    {
      v9 = v2;
      v2 = a2;
    }

    v10 = v9[2];
    v11 = v9[3];
    v12 = v8 + 8;
    v13 = v9[4];
    do
    {
      v14 = v10;
      v10 = v11;
      v11 = v13;
      v12 -= 8;
      v13 = 0;
    }

    while (v12 > 8);
    if (v12)
    {
      v15 = v12 + 1;
      do
      {
        v16 = v11 / 0xA;
        v17 = v10 % 0xA;
        v10 = (v10 + 100000000 * (v11 % 0xA)) / 0xA;
        v14 = (v14 + 100000000 * v17) / 0xA;
        --v15;
        v11 /= 0xAuLL;
      }

      while (v15 > 1);
    }

    else
    {
      v16 = v11;
    }

    v18 = v2[4];
    if (v16 <= v18)
    {
      if (v16 == v18)
      {
        v19 = v2[3];
        if (v10 > v19)
        {
          return result;
        }

        if (v10 == v19)
        {
          v20 = v2[2];
          if (v14 > v20)
          {
            return result;
          }

          if (v14 == v20)
          {
            if ((v4 ^ v3) >= 0x100)
            {
              return result;
            }

            else
            {
              return 0;
            }
          }
        }
      }

      return -result;
    }
  }

  return result;
}

uint64_t xmlSchemaCompareDurations(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) - *(a2 + 32);
  v3 = (v2 / 86400.0);
  v4 = *(a2 + 16);
  v5 = v2 - v3 * 86400.0;
  v6 = *(a1 + 24) - *(a2 + 24) + v3;
  v7 = *(a1 + 16) - v4;
  if (v7)
  {
    v8 = *(a1 + 16) != v4;
    if (v7 < 1)
    {
      if (v6 <= 0 && v5 <= 0.0)
      {
        return 0xFFFFFFFFLL;
      }

      v7 = v4 - *(a1 + 16);
      v10 = -1;
    }

    else
    {
      if ((v6 & 0x8000000000000000) == 0 && v5 >= 0.0)
      {
        return 1;
      }

      v6 = -v6;
      v10 = 1;
    }

    if (v7 >= 0xC)
    {
      if (v7 > 0x4325C53EF368EBBLL)
      {
        return 4294967294;
      }

      v12 = 365 * (v7 / 0xC) + ((v7 / 0xC + 3) >> 2);
      v11 = v12 - 1;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = (&xmlSchemaCompareDurations_dayRange + 8 * (v7 % 0xC));
    v14 = *v13 + v11;
    v15 = v13[12] + v12;
    if (v15 != v14 || v15 != v6)
    {
      if (v15 < v6)
      {
        return -v10;
      }

      if (v14 <= v6)
      {
        return 2;
      }

      return v10;
    }

    return 0;
  }

  if (v6)
  {
    if (v6 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v5 == 0.0)
    {
      return 0;
    }

    if (v5 >= 0.0)
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

uint64_t xmlSchemaComparePreserveReplaceStrings(_BYTE *a1, _BYTE *a2, int a3)
{
  v3 = *a1;
  if (!*a1)
  {
LABEL_14:
    if (a3)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    if (*a2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  v4 = a1 + 1;
  while (1)
  {
    v5 = *a2;
    if (v5 - 9 < 2 || v5 == 13)
    {
      break;
    }

    if (!*a2)
    {
      goto LABEL_29;
    }

    if (v3 < v5)
    {
      v12 = a3 == 0;
      v13 = -1;
LABEL_31:
      if (v12)
      {
        return v13;
      }

      else
      {
        return -v13;
      }
    }

    if (v3 != v5)
    {
LABEL_29:
      v12 = a3 == 0;
      v13 = 1;
      goto LABEL_31;
    }

LABEL_13:
    ++a2;
    v7 = *v4++;
    v3 = v7;
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  if (v3 == 32)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  if (a3)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (v3 <= 0x1F)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

uint64_t xmlSchemaComparePreserveCollapseStrings(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  while (1)
  {
    v3 = *a2;
    if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    ++a2;
  }

  v5 = *a1;
  if (*a1)
  {
    while (1)
    {
      if (v3 > 0x20)
      {
        goto LABEL_18;
      }

      if (((1 << v3) & 0x100002600) == 0)
      {
        break;
      }

      if (v5 != 32)
      {
        if (a3)
        {
          v15 = -1;
        }

        else
        {
          v15 = 1;
        }

        if (a3)
        {
          v16 = 1;
        }

        else
        {
          v16 = -1;
        }

        if (v5 <= 0x1F)
        {
          return v16;
        }

        else
        {
          return v15;
        }
      }

      do
      {
        v6 = *++a2;
        v7 = (1 << v6) & 0x100002600;
      }

      while (v6 <= 0x20 && v7 != 0);
LABEL_15:
      v9 = *++a1;
      v5 = v9;
      v3 = *a2;
      if (!v9)
      {
        goto LABEL_21;
      }
    }

    if (!v3)
    {
      goto LABEL_38;
    }

LABEL_18:
    if (v5 < v3)
    {
      goto LABEL_28;
    }

    if (v5 != v3)
    {
LABEL_38:
      v13 = a3 == 0;
      v14 = 1;
      goto LABEL_39;
    }

    ++a2;
    goto LABEL_15;
  }

LABEL_21:
  if (!v3)
  {
    return 0;
  }

  v10 = a2 + 1;
  while (v3 <= 0x20)
  {
    if (((1 << v3) & 0x100002600) == 0)
    {
      if (v3)
      {
        break;
      }

      return 0;
    }

    v11 = *v10++;
    v3 = v11;
  }

LABEL_28:
  v13 = a3 == 0;
  v14 = -1;
LABEL_39:
  if (v13)
  {
    return v14;
  }

  else
  {
    return -v14;
  }
}

uint64_t xmlSchemaCompareReplacedStrings(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (!*a1)
  {
LABEL_15:
    if (*a2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  v3 = a1 + 1;
  while (1)
  {
    v4 = *a2;
    if (v4 > 0x20)
    {
      break;
    }

    if (((1 << v4) & 0x100002600) == 0)
    {
      if (!*a2)
      {
        return 1;
      }

      break;
    }

    if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
    {
      if (v2 < 0x20)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

LABEL_7:
    ++a2;
    v5 = *v3++;
    v2 = v5;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
  {
    if (v2 < v4)
    {
      return 0xFFFFFFFFLL;
    }

    if (v2 != v4)
    {
      return 1;
    }

    goto LABEL_7;
  }

  if (v4 > 0x20)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

uint64_t xmlSchemaCompareReplaceCollapseStrings(_BYTE *a1, unsigned __int8 *a2, int a3)
{
  while (1)
  {
    v3 = *a2;
    if (v3 > 0x20 || ((1 << v3) & 0x100002600) == 0)
    {
      break;
    }

    ++a2;
  }

  v5 = *a1;
  if (*a1)
  {
    do
    {
      if (v3 <= 0x20)
      {
        if (((1 << v3) & 0x100002600) != 0)
        {
          if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
          {
            if (a3)
            {
              v17 = -1;
            }

            else
            {
              v17 = 1;
            }

            if (a3)
            {
              v18 = 1;
            }

            else
            {
              v18 = -1;
            }

            if (v5 <= 0x1F)
            {
              return v18;
            }

            else
            {
              return v17;
            }
          }

          do
          {
            v6 = *++a2;
            v7 = (1 << v6) & 0x100002600;
          }

          while (v6 <= 0x20 && v7 != 0);
          goto LABEL_16;
        }

        if (!v3)
        {
          v13 = a3 == 0;
          v14 = 1;
          goto LABEL_42;
        }
      }

      if (v5 <= 0x20 && ((1 << v5) & 0x100002600) != 0)
      {
        if (a3)
        {
          v15 = -1;
        }

        else
        {
          v15 = 1;
        }

        if (a3)
        {
          v16 = 1;
        }

        else
        {
          v16 = -1;
        }

        if (v3 >= 0x21)
        {
          return v16;
        }

        else
        {
          return v15;
        }
      }

      if (v5 < v3)
      {
        return 0xFFFFFFFFLL;
      }

      if (v5 != v3)
      {
        return 1;
      }

      ++a2;
LABEL_16:
      v9 = *++a1;
      v5 = v9;
      v3 = *a2;
    }

    while (v9);
  }

  if (!v3)
  {
    return 0;
  }

  v10 = a2 + 1;
  while (v3 <= 0x20)
  {
    if (((1 << v3) & 0x100002600) == 0)
    {
      if (!v3)
      {
        return 0;
      }

      break;
    }

    v11 = *v10++;
    v3 = v11;
  }

  v13 = a3 == 0;
  v14 = -1;
LABEL_42:
  if (v13)
  {
    return v14;
  }

  else
  {
    return -v14;
  }
}

uint64_t xmlSchemaCompareNormStrings(_BYTE *a1, _BYTE *a2)
{
  while (1)
  {
    v2 = *a1;
    if (v2 > 0x20 || ((1 << v2) & 0x100002600) == 0)
    {
      break;
    }

    ++a1;
  }

  while (1)
  {
    v4 = *a2;
    if (v4 > 0x20 || ((1 << v4) & 0x100002600) == 0)
    {
      break;
    }

    ++a2;
  }

  if (*a1)
  {
    for (; *a2; v4 = *a2)
    {
      if (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0)
      {
        if (v4 > 0x20 || ((1 << v4) & 0x100002600) == 0)
        {
          return v2 - v4;
        }

        while (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0)
        {
          v6 = *++a1;
          v2 = v6;
        }

        while (v4 <= 0x20 && ((1 << v4) & 0x100002600) != 0)
        {
          v7 = *++a2;
          v4 = v7;
        }

        if (!v2)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v2 < v4)
        {
          return 0xFFFFFFFFLL;
        }

        if (v2 != v4)
        {
          return 1;
        }

        v8 = *++a1;
        v2 = v8;
        ++a2;
        if (!v8)
        {
LABEL_35:
          v4 = *a2;
          goto LABEL_36;
        }
      }
    }

    v9 = a1 + 1;
    while (v2 <= 0x20)
    {
      if (((1 << v2) & 0x100002600) == 0)
      {
        if (v2)
        {
          return 1;
        }

        goto LABEL_35;
      }

      v10 = *v9++;
      v2 = v10;
    }

    return 1;
  }

  else
  {
LABEL_36:
    if (v4)
    {
      v11 = a2 + 1;
      while (v4 <= 0x20)
      {
        if (((1 << v4) & 0x100002600) == 0)
        {
          if (v4)
          {
            return 0xFFFFFFFFLL;
          }

          return 0;
        }

        v12 = *v11++;
        v4 = v12;
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _xmlSchemaDateCastYMToDays(uint64_t a1)
{
  if ((*(a1 + 24) & 0xE) != 0)
  {
    v1 = *(a1 + 24) & 0xF;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(a1 + 16);
  v3 = v1 - 1;
  if (v2 <= 0)
  {
    v11 = 365 * v2;
    v12 = v2 + 1;
    v13 = v2 + 4;
    if (v2 >= -1)
    {
      v13 = v2 + 1;
    }

    v14 = ((v12 * 0x5C28F5C28F5C28F5) >> 64) + ~v2;
    v15 = (v14 >> 6) + (v14 >> 63);
    v16 = v12 / 400;
    v17 = 0x70A3D70A3D70A3D7 * v2;
    v18 = __ROR8__(v17, 2) > 0x28F5C28F5C28F5CuLL && (*(a1 + 16) & 3) == 0;
    v19 = __ROR8__(v17, 4);
    v20 = !v18 && v19 >= 0xA3D70A3D70A3D8;
    v21 = &dayInYearByMonth;
    if (!v20)
    {
      v21 = &dayInLeapYearByMonth;
    }

    return v11 + (v13 >> 2) + v15 + v16 + v21[v3];
  }

  else
  {
    v4 = (v2 - 1) / 0x190uLL - (v2 - 1) / 0x64uLL + ((v2 - 1) >> 2) + 365 * (v2 - 1);
    v5 = 0x8F5C28F5C28F5C29 * v2;
    v6 = __ROR8__(v5, 2) > 0x28F5C28F5C28F5CuLL && (*(a1 + 16) & 3) == 0;
    v7 = __ROR8__(v5, 4);
    v8 = !v6 && v7 >= 0xA3D70A3D70A3D8;
    v9 = &dayInYearByMonth;
    if (!v8)
    {
      v9 = &dayInLeapYearByMonth;
    }

    return v4 + v9[v3];
  }
}

uint64_t xmlSchemaNormLen(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  for (i = a1; ; ++i)
  {
    v2 = *i;
    if (v2 > 0x20)
    {
      goto LABEL_8;
    }

    if (((1 << v2) & 0x100002600) == 0)
    {
      break;
    }
  }

  if (*i)
  {
LABEL_8:
    result = 0;
    while (1)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((i[1] & 0xC0) != 0x80)
        {
          return 0xFFFFFFFFLL;
        }

        if ((~v2 & 0xE0) != 0)
        {
          i += 2;
        }

        else
        {
          if ((i[2] & 0xC0) != 0x80)
          {
            return 0xFFFFFFFFLL;
          }

          if ((~v2 & 0xF0) != 0)
          {
            i += 3;
          }

          else
          {
            if ((v2 & 0xF8) != 0xF0 || (i[3] & 0xC0) != 0x80)
            {
              return 0xFFFFFFFFLL;
            }

            i += 4;
          }
        }
      }

      else if (v2 <= 0x20 && ((1 << v2) & 0x100002600) != 0)
      {
        while (v2 <= 0x20)
        {
          if (((1 << v2) & 0x100002600) == 0)
          {
            if (!v2)
            {
              return result;
            }

            break;
          }

          v4 = *++i;
          v2 = v4;
        }
      }

      else
      {
        ++i;
      }

      result = (result + 1);
      v2 = *i;
      if (!*i)
      {
        return result;
      }
    }
  }

  return 0;
}

int xmlStrcmp(const xmlChar *str1, const xmlChar *str2)
{
  if (str1 == str2)
  {
    return 0;
  }

  if (!str1)
  {
    return -1;
  }

  if (!str2)
  {
    return 1;
  }

  while (1)
  {
    v2 = *str2;
    v3 = *str1 - v2;
    if (v3)
    {
      break;
    }

    ++str1;
    ++str2;
    if (!v2)
    {
      return 0;
    }
  }

  return v3;
}

int xmlStrQEqual(const xmlChar *pref, const xmlChar *name, const xmlChar *str)
{
  if (pref)
  {
    v3 = pref;
    result = 0;
    if (name && str)
    {
      v5 = *v3;
      while (v5 == *str)
      {
        v6 = str++;
        if (v5)
        {
          v7 = *++v3;
          v5 = v7;
          if (v7)
          {
            continue;
          }
        }

        if (*str == 58)
        {
          for (i = 2; ; ++i)
          {
            v9 = *name;
            if (v9 != v6[i])
            {
              break;
            }

            ++name;
            if (!v9)
            {
              return 1;
            }
          }
        }

        return 0;
      }

      return 0;
    }
  }

  else if (name == str)
  {
    return 1;
  }

  else
  {
    result = 0;
    if (name && str)
    {
      while (1)
      {
        v10 = *name;
        if (v10 != *str)
        {
          break;
        }

        ++name;
        ++str;
        if (!v10)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

int xmlStrncmp(const xmlChar *str1, const xmlChar *str2, int len)
{
  result = 0;
  if (str1 != str2)
  {
    v5 = len - 1;
    if (len >= 1)
    {
      if (str1)
      {
        if (str2)
        {
          do
          {
            v6 = *str1;
            v7 = *str2;
            result = v6 - v7;
            if (v6 != v7)
            {
              break;
            }

            if (!v5)
            {
              break;
            }

            ++str1;
            ++str2;
            --v5;
          }

          while (v7);
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

int xmlStrncasecmp(const xmlChar *str1, const xmlChar *str2, int len)
{
  v3 = 0;
  if (str1 != str2)
  {
    v4 = len - 1;
    if (len >= 1)
    {
      if (str1)
      {
        if (str2)
        {
          do
          {
            v5 = *str2;
            v3 = casemap[*str1] - casemap[v5];
            if (v3)
            {
              break;
            }

            if (!v4)
            {
              break;
            }

            ++str1;
            ++str2;
            --v4;
          }

          while (v5);
        }

        else
        {
          return 1;
        }
      }

      else
      {
        return -1;
      }
    }
  }

  return v3;
}

const xmlChar *__cdecl xmlStrcasestr(const xmlChar *str, const xmlChar *val)
{
  v2 = 0;
  if (str && val)
  {
    if (!*val)
    {
      return str;
    }

    v3 = 0;
    do
    {
      v4 = &val[v3++];
    }

    while (v4[1]);
    if (!(v3 >> 31) && v3)
    {
      v5 = *str;
      if (*str)
      {
        while (1)
        {
          if (casemap[v5] == casemap[*val])
          {
            if (v3 < 1 || str == val)
            {
              return str;
            }

            v6 = 0;
            while (1)
            {
              v7 = val[v6];
              if (casemap[str[v6]] != casemap[v7])
              {
                break;
              }

              if (v3 - 1 != v6)
              {
                ++v6;
                if (v7)
                {
                  continue;
                }
              }

              return str;
            }
          }

          v2 = 0;
          v8 = *++str;
          v5 = v8;
          if (!v8)
          {
            return v2;
          }
        }
      }

      return 0;
    }

    else
    {
      return str;
    }
  }

  return v2;
}

xmlChar *__cdecl xmlStrsub(const xmlChar *str, int start, int len)
{
  if (str && ((len | start) & 0x80000000) == 0)
  {
    if (start < 1)
    {
LABEL_8:
      if (*str)
      {
        return xmlStrndup(str, len);
      }
    }

    else
    {
      v3 = &str[start];
      while (*str)
      {
        ++str;
        if (!--start)
        {
          str = v3;
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

xmlChar *__cdecl xmlStrncat(xmlChar *cur, const xmlChar *add, int len)
{
  v3 = cur;
  if (add && len)
  {
    if (len < 0)
    {
      return 0;
    }

    else if (cur)
    {
      if (*cur)
      {
        v6 = 0;
          ;
        }

        if (v6 >> 31)
        {
          v8 = 0;
        }

        else
        {
          v8 = v6;
        }
      }

      else
      {
        v8 = 0;
      }

      cur = 0;
      if ((v8 & 0x80000000) == 0 && v8 <= (len ^ 0x7FFFFFFF))
      {
        v9 = malloc_type_realloc(v3, len + v8 + 1, 0x100004077774924uLL);
        cur = v3;
        if (v9)
        {
          memcpy(&v9[v8], add, len);
          v9[v8 + len] = 0;
          return v9;
        }
      }
    }

    else
    {

      return xmlStrndup(add, len);
    }
  }

  return cur;
}

xmlChar *__cdecl xmlStrncatNew(const xmlChar *str1, const xmlChar *str2, int len)
{
  LODWORD(v3) = len;
  v5 = str1;
  if (len < 0)
  {
    if (!str2)
    {
      goto LABEL_16;
    }

    if (!*str2)
    {
      goto LABEL_16;
    }

    v3 = 0;
      ;
    }

    if (v3 >> 31)
    {
      goto LABEL_16;
    }
  }

  if (str2 && v3)
  {
    if (str1)
    {
      if (*str1)
      {
        v6 = 0;
          ;
        }

        if (v6 >> 31)
        {
          v8 = 0;
        }

        else
        {
          v8 = v6;
        }
      }

      else
      {
        v8 = 0;
      }

      v13 = 0;
      if ((v8 & 0x80000000) != 0 || v8 > (v3 ^ 0x7FFFFFFF))
      {
        return v13;
      }

      v14 = malloc_type_malloc(v3 + v8 + 1, 0x100004077774924uLL);
      if (v14)
      {
        v13 = v14;
        memcpy(v14, v5, v8);
        memcpy(&v13[v8], str2, v3);
        v13[v8 + v3] = 0;
        return v13;
      }

      str1 = v5;
      v10 = v8;
    }

    else
    {
      str1 = str2;
      v10 = v3;
    }
  }

  else
  {
LABEL_16:
    if (!str1)
    {
      return 0;
    }

    v10 = -1;
    v11 = str1;
    do
    {
      v12 = *v11++;
      ++v10;
    }

    while (v12);
  }

  return xmlStrndup(str1, v10);
}

xmlChar *__cdecl xmlStrcat(xmlChar *cur, const xmlChar *add)
{
  if (add)
  {
    if (cur)
    {
      v2 = -1;
      v3 = add;
      do
      {
        v4 = *v3++;
        ++v2;
      }

      while (v4);
      return xmlStrncat(cur, add, v2);
    }

    else
    {
      v5 = -1;
      v6 = add;
      do
      {
        v7 = *v6++;
        ++v5;
      }

      while (v7);
      return xmlStrndup(add, v5);
    }
  }

  return cur;
}

int xmlStrPrintf(xmlChar *buf, int len, const char *msg, ...)
{
  va_start(va, msg);
  result = -1;
  if (len >= 1 && buf)
  {
    if (msg)
    {
      result = vsnprintf(buf, len, msg, va);
      buf[len - 1] = 0;
    }
  }

  return result;
}

int xmlStrVPrintf(xmlChar *buf, int len, const char *msg, va_list ap)
{
  if (len < 1 || !buf || !msg)
  {
    return -1;
  }

  result = vsnprintf(buf, len, msg, ap);
  buf[len - 1] = 0;
  return result;
}

int xmlUTF8Size(const xmlChar *utf)
{
  if (!utf)
  {
    return -1;
  }

  if ((*utf & 0x80000000) == 0)
  {
    return 1;
  }

  v2 = *utf;
  if ((v2 & 0x40) == 0)
  {
    return -1;
  }

  v3 = 32;
  result = 2;
  while ((v3 & v2) != 0)
  {
    ++result;
    v3 >>= 1;
    if (result == 8)
    {
      return -1;
    }
  }

  return result;
}

int xmlUTF8Charcmp(const xmlChar *utf1, const xmlChar *utf2)
{
  if (!utf1)
  {
    if (utf2)
    {
      return -1;
    }

    else
    {
      return 0;
    }
  }

  v2 = *utf1;
  if (v2 < 0)
  {
    if ((v2 & 0x40) == 0)
    {
      return 0;
    }

    v7 = 32;
    v3 = 2;
    while ((v7 & *utf1) != 0)
    {
      ++v3;
      v7 >>= 1;
      if (v3 == 8)
      {
        return 0;
      }
    }
  }

  else
  {
    v3 = 1;
  }

  if (utf1 == utf2)
  {
    return 0;
  }

  if (!utf2)
  {
    return 1;
  }

  v4 = v3 - 1;
  do
  {
    v5 = *utf2;
    v6 = *utf1 - v5;
    if (v6)
    {
      break;
    }

    if (!v4)
    {
      break;
    }

    ++utf1;
    ++utf2;
    --v4;
  }

  while (v5);
  return v6;
}

int xmlGetUTF8Char(const unsigned __int8 *utf, int *len)
{
  if (!utf || !len)
  {
    if (!len)
    {
      return -1;
    }

    goto LABEL_23;
  }

  v3 = *utf;
  result = *utf;
  v5 = *len;
  if ((v3 & 0x80000000) == 0)
  {
    if (v5 >= 1)
    {
      *len = 1;
      return result;
    }

    goto LABEL_23;
  }

  if (v5 < 2 || (utf[1] & 0xC0) != 0x80)
  {
    goto LABEL_23;
  }

  if (result <= 0xDF)
  {
    if (result >= 0xC2)
    {
      *len = 2;
      return utf[1] & 0x3F | ((result & 0x1F) << 6);
    }

    goto LABEL_23;
  }

  if (v5 == 2 || (utf[2] & 0xC0) != 0x80)
  {
    goto LABEL_23;
  }

  if (result > 0xEF)
  {
    if (v5 >= 4 && (utf[3] & 0xC0) == 0x80)
    {
      *len = 4;
      v8 = ((result & 7) << 18) | ((utf[1] & 0x3F) << 12);
      if ((v8 - 1114112) >= 0xFFF00000)
      {
        return utf[3] & 0x3F | ((utf[2] & 0x3F) << 6) | v8;
      }
    }

    goto LABEL_23;
  }

  *len = 3;
  v6 = (result & 0xF) << 12;
  v7 = v6 | ((utf[1] & 0x3F) << 6);
  if (v7 < 0x800 || (result = v7 | utf[2] & 0x3F, v6 >> 13 <= 6) && v7 >> 11 > 0x1A)
  {
LABEL_23:
    *len = 0;
    return -1;
  }

  return result;
}

int xmlCheckUTF8(const unsigned __int8 *utf)
{
  if (utf)
  {
    while (1)
    {
      v1 = *utf;
      if (!*utf)
      {
        LODWORD(utf) = 1;
        return utf;
      }

      if ((*utf & 0x80) != 0)
      {
        if ((v1 & 0xE0) == 0xC0)
        {
          if ((utf[1] & 0xC0) != 0x80)
          {
            goto LABEL_20;
          }

          v2 = 2;
        }

        else if ((v1 & 0xF0) == 0xE0)
        {
          if ((utf[1] & 0xC0) != 0x80 || (utf[2] & 0xC0) != 0x80)
          {
            goto LABEL_20;
          }

          v2 = 3;
        }

        else
        {
          if ((v1 & 0xF8) != 0xF0 || (utf[1] & 0xC0) != 0x80 || (utf[2] & 0xC0) != 0x80 || (utf[3] & 0xC0) != 0x80)
          {
LABEL_20:
            LODWORD(utf) = 0;
            return utf;
          }

          v2 = 4;
        }
      }

      else
      {
        v2 = 1;
      }

      utf += v2;
    }
  }

  return utf;
}

const xmlChar *__cdecl xmlUTF8Strpos(const xmlChar *utf, int pos)
{
  result = 0;
  if (utf && (pos & 0x80000000) == 0)
  {
    if (pos)
    {
      result = utf;
      while (1)
      {
        v5 = *result++;
        v4 = v5;
        if (!v5)
        {
          break;
        }

        if ((v4 & 0x80) != 0)
        {
          if ((~v4 & 0xC0) != 0)
          {
            return 0;
          }

          while ((v4 & 0x40) != 0)
          {
            LOBYTE(v4) = 2 * v4;
            v6 = *result++;
            if ((v6 & 0xC0) != 0x80)
            {
              return 0;
            }
          }
        }

        if (!--pos)
        {
          return result;
        }
      }

      return 0;
    }

    else
    {
      return utf;
    }
  }

  return result;
}

int xmlUTF8Strloc(const xmlChar *utf, const xmlChar *utfchar)
{
  v2 = -1;
  if (utf && utfchar)
  {
    v4 = utf;
    v5 = xmlUTF8Strsize(utfchar, 1);
    v6 = *v4;
    if (*v4)
    {
      v7 = 0;
      while (v5 >= 1 && v4 != utfchar)
      {
        v8 = v5 - 1;
        v9 = v4;
        v10 = utfchar;
        while (1)
        {
          v11 = *v9;
          if (v11 != *v10)
          {
            break;
          }

          if (v8)
          {
            ++v9;
            ++v10;
            --v8;
            if (v11)
            {
              continue;
            }
          }

          goto LABEL_19;
        }

        ++v4;
        if ((v6 & 0x80) != 0)
        {
          if ((~v6 & 0xC0) != 0)
          {
            return -1;
          }

          while ((v6 & 0x40) != 0)
          {
            LOBYTE(v6) = 2 * v6;
            v12 = *v4++;
            if ((v12 & 0xC0) != 0x80)
            {
              return -1;
            }
          }
        }

        ++v7;
        v6 = *v4;
        v2 = -1;
        if (!*v4)
        {
          return v2;
        }
      }

LABEL_19:
      if (v7 >> 31)
      {
        return 0;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return -1;
    }
  }

  return v2;
}

unsigned __int8 *xmlEscapeFormatString(unsigned __int8 **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v3;
        v8 = &v2[v4++];
        if (v7 == 37)
        {
          ++v5;
        }

        v3 = v8[1];
      }

      while (v3);
      if (v5)
      {
        v2 = 0;
        if (!(v5 >> 31) && v4 <= 0x7FFFFFFF - v5)
        {
          if (v7 == 37)
          {
            v9 = v6 + 1;
          }

          else
          {
            v9 = v6;
          }

          v2 = malloc_type_malloc(v9 + v4 + 1, 0x100004077774924uLL);
          v10 = *a1;
          if (v2)
          {
            v11 = *v10;
            if (*v10)
            {
              v12 = v10 + 1;
              v13 = v2;
              do
              {
                *v13 = v11;
                if (*(v12 - 1) == 37)
                {
                  *++v13 = 37;
                }

                ++v13;
                v14 = *v12++;
                v11 = v14;
              }

              while (v14);
            }

            if (v7 == 37)
            {
              v15 = v6 + 1;
            }

            else
            {
              v15 = v6;
            }

            v2[v15 + v4] = 0;
            v10 = *a1;
          }

          free(v10);
          *a1 = v2;
        }
      }
    }
  }

  return v2;
}

uint64_t xmlUnicodeLookup(uint64_t *a1, char *__s1)
{
  result = 0;
  if (a1 && __s1)
  {
    v5 = *(a1 + 2);
    v6 = v5 - 1;
    if (v5 < 1)
    {
      return 0;
    }

    else
    {
      v7 = 0;
      v8 = *a1;
      while (1)
      {
        v9 = (v6 + v7) >> 1;
        v10 = strcmp(__s1, *(v8 + 16 * v9));
        if (!v10)
        {
          break;
        }

        if (v10 < 0)
        {
          v6 = v9 - 1;
        }

        else
        {
          v7 = v9 + 1;
        }

        if (v7 > v6)
        {
          return 0;
        }
      }

      return *(v8 + 16 * v9 + 8);
    }
  }

  return result;
}

int xmlUCSIsCatCo(int code)
{
  result = 1;
  if (code >= 983040)
  {
    if (code == 983040 || code == 1048573 || code == 0x100000)
    {
      return result;
    }

    return code == 1114109;
  }

  if (code != 57344 && code != 63743)
  {
    return code == 1114109;
  }

  return result;
}

int xmlUCSIsCatMe(int code)
{
  v1 = (code - 8413) < 4 || (code - 8418) < 3;
  if (code == 1758)
  {
    v1 = 1;
  }

  if ((code - 1160) >= 2)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

int xmlUCSIsCatNl(int code)
{
  v1 = (code - 8544) < 0x24 || code == 66378;
  if (code == 12295)
  {
    v1 = 1;
  }

  if ((code - 12321) < 9)
  {
    v1 = 1;
  }

  if ((code - 12344) < 3)
  {
    v1 = 1;
  }

  if ((code - 5870) >= 3)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

int xmlUCSIsCatPc(int code)
{
  v1 = code - 8255;
  v2 = code == 65343 || code == 65381;
  v3 = (code - 65101) < 3 || v2;
  if ((code - 65075) >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (code == 12539)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (code == 95)
  {
    v5 = 1;
  }

  v6 = v1 > 0x15;
  v7 = (1 << v1) & 0x200003;
  if (v6 || v7 == 0)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

int xmlUCSIsCatPf(int code)
{
  v1 = code == 8221 || code == 8250;
  v2 = code == 8217 || v1;
  if (code == 187)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

int xmlUCSIsCatPi(int code)
{
  v1 = code - 8216;
  v2 = code == 8249;
  if (code == 171)
  {
    v2 = 1;
  }

  v3 = v1 > 7;
  v4 = (1 << v1) & 0x99;
  return !v3 && v4 != 0 || v2;
}

int xmlUCSIsCatZs(int code)
{
  v1 = 1;
  if (code > 5759)
  {
    if (code == 5760 || code == 6158)
    {
      return v1;
    }
  }

  else if (code == 32 || code == 160)
  {
    return v1;
  }

  v2 = code == 8287 || code == 12288;
  v3 = code == 8239 || v2;
  if ((code - 0x2000) >= 0xB)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

uint64_t linkedOnOrAfter2024EReleases()
{
  if (linkedOnOrAfter2024EReleases_once != -1)
  {
    linkedOnOrAfter2024EReleases_cold_1();
  }

  return linkedOnOrAfter2024EReleases_result;
}

uint64_t __linkedOnOrAfter2024EReleases_block_invoke()
{
  result = dyld_program_sdk_at_least();
  linkedOnOrAfter2024EReleases_result = result;
  return result;
}

xmlTextWriterPtr xmlNewTextWriter(xmlOutputBufferPtr out)
{
  v2 = malloc_type_malloc(0x50uLL, 0x10300402E3EBEB1uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriter : out of memory!\n");
    return v3;
  }

  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  *v2 = 0u;
  v4 = xmlListCreate(xmlFreeTextWriterStackEntry, xmlCmpTextWriterStackEntry);
  *(v3 + 1) = v4;
  if (!v4)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriter : out of memory!\n");
LABEL_9:
    free(v3);
    return 0;
  }

  v5 = xmlListCreate(xmlFreeTextWriterNsStackEntry, xmlCmpTextWriterNsStackEntry);
  *(v3 + 2) = v5;
  if (!v5)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriter : out of memory!\n");
    xmlListDelete(*(v3 + 1));
    goto LABEL_9;
  }

  *v3 = out;
  v6 = xmlStrdup(" ");
  *(v3 + 5) = v6;
  *(v3 + 48) = 34;
  if (!v6)
  {
    xmlListDelete(*(v3 + 1));
    xmlListDelete(*(v3 + 2));
    free(v3);
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriter : out of memory!\n");
    return 0;
  }

  *(v3 + 9) = xmlNewDoc(0);
  *(v3 + 16) = 0;
  return v3;
}

_DWORD *xmlWriterErrMsg(uint64_t a1, int a2, char a3)
{
  if (a1)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    v3 = 0;
  }

  return __xmlRaiseError(0, 0, 0, v3, 0, 0x19u, a2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", a3);
}

void xmlFreeTextWriterStackEntry(xmlLink *a1)
{
  Data = xmlLinkGetData(a1);
  if (Data)
  {
    v2 = Data;
    v3 = *Data;
    if (v3)
    {
      free(v3);
    }

    free(v2);
  }
}

uint64_t xmlCmpTextWriterStackEntry(const xmlChar **a1, const xmlChar **a2)
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
    return xmlStrcmp(*a1, *a2);
  }

  return 1;
}

void xmlFreeTextWriterNsStackEntry(xmlLink *a1)
{
  Data = xmlLinkGetData(a1);
  if (Data)
  {
    v2 = Data;
    v3 = *Data;
    if (v3)
    {
      free(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      free(v4);
    }

    free(v2);
  }
}

uint64_t xmlCmpTextWriterNsStackEntry(uint64_t a1, uint64_t a2)
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

  if (xmlStrcmp(*a1, *a2) || *(a1 + 16) != *(a2 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

xmlTextWriterPtr xmlNewTextWriterFilename(const char *uri, int compression)
{
  Filename = xmlOutputBufferCreateFilename(uri, 0, compression);
  if (Filename)
  {
    v3 = Filename;
    result = xmlNewTextWriter(Filename);
    if (result)
    {
      *(result + 7) = 0;
      *(result + 8) = 0;
      return result;
    }

    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterFilename : out of memory!\n");
    xmlOutputBufferClose(v3);
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1516, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterFilename : cannot open uri\n");
  }

  return 0;
}

xmlTextWriterPtr xmlNewTextWriterMemory(xmlBufferPtr buf, int compression)
{
  Buffer = xmlOutputBufferCreateBuffer(buf, 0);
  if (Buffer)
  {
    v3 = Buffer;
    result = xmlNewTextWriter(Buffer);
    if (result)
    {
      return result;
    }

    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterMemory : out of memory!\n");
    xmlOutputBufferClose(v3);
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterMemory : out of memory!\n");
  }

  return 0;
}

xmlTextWriterPtr xmlNewTextWriterPushParser(xmlParserCtxtPtr ctxt, int compression)
{
  if (!ctxt)
  {
    v6 = "xmlNewTextWriterPushParser : invalid context!\n";
LABEL_7:
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", v6);
    return 0;
  }

  IO = xmlOutputBufferCreateIO(xmlTextWriterWriteDocCallback, xmlTextWriterCloseDocCallback, ctxt, 0);
  if (!IO)
  {
    v6 = "xmlNewTextWriterPushParser : error at xmlOutputBufferCreateIO!\n";
    goto LABEL_7;
  }

  v4 = IO;
  result = xmlNewTextWriter(IO);
  if (result)
  {
    *(result + 7) = ctxt;
    return result;
  }

  __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterPushParser : error at xmlNewTextWriter!\n");
  xmlOutputBufferClose(v4);
  return 0;
}

uint64_t xmlTextWriterWriteDocCallback(xmlParserCtxt *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v4 = xmlParseChunk(a1, a2, a3, 0);
  if (v4)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, v4, 0, "xmlTextWriterWriteDocCallback : XML error %d !\n", v4);
    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t xmlTextWriterCloseDocCallback(xmlParserCtxt *a1)
{
  result = xmlParseChunk(a1, 0, 0, 1);
  if (result)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, result, 0, "xmlTextWriterCloseDocCallback : XML error %d !\n", result);
    return 0xFFFFFFFFLL;
  }

  return result;
}

xmlTextWriterPtr xmlNewTextWriterDoc(xmlDocPtr *doc, int compression)
{
  memset(&hdlr, 0, sizeof(hdlr));
  xmlSAX2InitDefaultSAXHandler(&hdlr, 1);
  hdlr.startDocument = xmlTextWriterStartDocumentCallback;
  hdlr.startElement = xmlSAX2StartElement;
  hdlr.endElement = xmlSAX2EndElement;
  v4 = xmlCreatePushParserCtxt(&hdlr, 0, 0, 0, 0);
  if (!v4)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterDoc : error at xmlCreatePushParserCtxt!\n");
    return 0;
  }

  v5 = v4;
  v4->dictNames = 0;
  v6 = xmlNewDoc("1.0");
  v5->myDoc = v6;
  if (!v6)
  {
    xmlFreeParserCtxt(v5);
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterDoc : error at xmlNewDoc!\n");
    return 0;
  }

  v8 = xmlNewTextWriterPushParser(v5, v7);
  myDoc = v5->myDoc;
  if (v8)
  {
    xmlSetDocCompressMode(myDoc, compression);
    if (doc)
    {
      *doc = v5->myDoc;
      *(v8 + 16) = 1;
    }
  }

  else
  {
    xmlFreeDoc(myDoc);
    xmlFreeParserCtxt(v5);
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterDoc : error at xmlNewTextWriterPushParser!\n");
  }

  return v8;
}

const xmlChar **xmlTextWriterStartDocumentCallback(const xmlChar **result)
{
  v1 = result;
  v2 = result[2];
  if (*(result + 13))
  {
    if (!v2)
    {
      result = htmlNewDocNoDtD(0, 0);
      v2 = result;
      v1[2] = result;
      if (!result)
      {
LABEL_13:
        if (*v1)
        {
          v4 = *(*v1 + 22);
          if (v4)
          {
            result = v4(v1[1], "SAX.startDocument(): out of memory\n");
          }
        }

        *(v1 + 34) = 2;
        *(v1 + 68) = -1;
        *(v1 + 83) = 1;
        return result;
      }
    }
  }

  else
  {
    if (!v2)
    {
      result = xmlNewDoc(result[4]);
      v2 = result;
      v1[2] = result;
      if (!result)
      {
        goto LABEL_13;
      }
    }

    if (!v2[3])
    {
      result = v1[5];
      if (result)
      {
        result = xmlStrdup(result);
        v5 = v1[2];
        v2[14] = result;
        *(v2 + 19) = *(v1 + 12);
        v2 = v5;
        if (!v5)
        {
          return result;
        }
      }

      else
      {
        v2[14] = 0;
        *(v2 + 19) = *(v1 + 12);
      }
    }
  }

  if (!v2[17])
  {
    v3 = v1[7];
    if (v3)
    {
      result = *(v3 + 1);
      if (result)
      {
        result = xmlCanonicPath(result);
        *(v1[2] + 17) = result;
        if (!result)
        {
          result = xmlStrdup(*(v1[7] + 1));
          *(v1[2] + 17) = result;
        }
      }
    }
  }

  return result;
}

xmlTextWriterPtr xmlNewTextWriterTree(xmlDocPtr doc, xmlNodePtr node, int compression)
{
  if (!doc)
  {
    v11 = "xmlNewTextWriterTree : invalid document tree!\n";
LABEL_7:
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", v11);
    return 0;
  }

  memset(&hdlr, 0, sizeof(hdlr));
  xmlSAX2InitDefaultSAXHandler(&hdlr, 1);
  hdlr.startDocument = xmlTextWriterStartDocumentCallback;
  hdlr.startElement = xmlSAX2StartElement;
  hdlr.endElement = xmlSAX2EndElement;
  v6 = xmlCreatePushParserCtxt(&hdlr, 0, 0, 0, 0);
  if (!v6)
  {
    v11 = "xmlNewTextWriterDoc : error at xmlCreatePushParserCtxt!\n";
    goto LABEL_7;
  }

  v8 = v6;
  v6->dictNames = 0;
  v9 = xmlNewTextWriterPushParser(v6, v7);
  v10 = v9;
  if (v9)
  {
    v8->myDoc = doc;
    v8->node = node;
    *(v9 + 16) = 1;
    xmlSetDocCompressMode(doc, compression);
  }

  else
  {
    xmlFreeParserCtxt(v8);
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlNewTextWriterDoc : error at xmlNewTextWriterPushParser!\n");
  }

  return v10;
}

void xmlFreeTextWriter(xmlTextWriterPtr writer)
{
  if (writer)
  {
    v2 = *writer;
    if (v2)
    {
      xmlOutputBufferClose(v2);
    }

    v3 = *(writer + 1);
    if (v3)
    {
      xmlListDelete(v3);
    }

    v4 = *(writer + 2);
    if (v4)
    {
      xmlListDelete(v4);
    }

    v5 = *(writer + 7);
    if (v5)
    {
      if (v5->myDoc && !*(writer + 16))
      {
        xmlFreeDoc(v5->myDoc);
        v5 = *(writer + 7);
        v5->myDoc = 0;
      }

      xmlFreeParserCtxt(v5);
    }

    v6 = *(writer + 9);
    if (v6)
    {
      xmlFreeDoc(v6);
    }

    v7 = *(writer + 5);
    if (v7)
    {
      free(v7);
    }

    free(writer);
  }
}

int xmlTextWriterStartDocument(xmlTextWriterPtr writer, const char *version, const char *encoding, const char *standalone)
{
  if (!writer || !*writer)
  {
    v9 = "xmlTextWriterStartDocument : invalid writer!\n";
    goto LABEL_7;
  }

  v8 = xmlListFront(*(writer + 1));
  if (v8 && xmlLinkGetData(v8))
  {
    v9 = "xmlTextWriterStartDocument : not allowed in this context!\n";
LABEL_7:
    v10 = writer;
    v11 = 1;
LABEL_8:
    xmlWriterErrMsg(v10, v11, v9);
    return -1;
  }

  if (encoding)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
    if (!CharEncodingHandler)
    {
      v9 = "xmlTextWriterStartDocument : unsupported encoding\n";
      v10 = writer;
      v11 = 32;
      goto LABEL_8;
    }

    v14 = CharEncodingHandler;
    v15 = *writer;
    v15[3] = v14;
    if (!v15[5])
    {
      Size = xmlBufCreateSize(4000);
      v15 = *writer;
      *(*writer + 40) = Size;
    }

    xmlCharEncOutput(v15, 1);
    v17 = *(writer + 9);
    if (v17 && !*(v17 + 112))
    {
      *(*(writer + 9) + 112) = xmlStrdup(**(*writer + 24));
    }
  }

  else
  {
    v18 = *writer;
    *(v18 + 24) = 0;
    *(v18 + 40) = 0;
  }

  v19 = xmlOutputBufferWriteString(*writer, "<?xml version=");
  if (v19 < 0)
  {
    return -1;
  }

  v20 = v19;
  v21 = xmlOutputBufferWrite(*writer, 1, writer + 48);
  if (v21 < 0)
  {
    return -1;
  }

  v22 = v21;
  v23 = version ? version : "1.0";
  v24 = xmlOutputBufferWriteString(*writer, v23);
  if (v24 < 0)
  {
    return -1;
  }

  v25 = v24;
  v26 = xmlOutputBufferWrite(*writer, 1, writer + 48);
  if (v26 < 0)
  {
    return -1;
  }

  v27 = v22 + v20 + v25 + v26;
  v28 = *writer;
  if (*(*writer + 24))
  {
    v29 = xmlOutputBufferWriteString(v28, " encoding=");
    if (v29 < 0)
    {
      return -1;
    }

    v30 = v29;
    v31 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v31 < 0)
    {
      return -1;
    }

    v32 = v31;
    v33 = xmlOutputBufferWriteString(*writer, **(*writer + 24));
    if (v33 < 0)
    {
      return -1;
    }

    v34 = v33;
    v35 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v35 < 0)
    {
      return -1;
    }

    v27 += v30 + v32 + v35 + v34;
    v28 = *writer;
  }

  if (standalone)
  {
    v36 = xmlOutputBufferWriteString(v28, " standalone=");
    if (v36 < 0)
    {
      return -1;
    }

    v37 = v36;
    v38 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v38 < 0)
    {
      return -1;
    }

    v39 = v38;
    v40 = xmlOutputBufferWriteString(*writer, standalone);
    if (v40 < 0)
    {
      return -1;
    }

    v41 = v40;
    v42 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v42 < 0)
    {
      return -1;
    }

    v27 += v37 + v39 + v41 + v42;
    v28 = *writer;
  }

  v43 = xmlOutputBufferWriteString(v28, "?>\n");
  if (v43 < 0)
  {
    return -1;
  }

  return v43 + v27;
}

int xmlTextWriterEndDocument(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterEndDocument : invalid writer!\n");
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  for (i = 0; v2; v2 = xmlListFront(*(writer + 1)))
  {
    Data = xmlLinkGetData(v2);
    if (!Data)
    {
      break;
    }

    v5 = Data[2];
    if (v5 <= 6)
    {
      if ((v5 - 1) < 3)
      {
        v6 = xmlTextWriterEndElement(writer);
        if (v6 < 0)
        {
          return -1;
        }

        goto LABEL_19;
      }

      if ((v5 - 4) < 2)
      {
        v6 = xmlTextWriterEndPI(writer);
        if (v6 < 0)
        {
          return -1;
        }

        goto LABEL_19;
      }

      if (v5 == 6)
      {
        v6 = xmlTextWriterEndCDATA(writer);
        if (v6 < 0)
        {
          return -1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      if ((v5 - 7) < 9)
      {
        v6 = xmlTextWriterEndDTD(writer);
        if (v6 < 0)
        {
          return -1;
        }

LABEL_19:
        i += v6;
        continue;
      }

      if (v5 == 16)
      {
        v6 = xmlTextWriterEndComment(writer);
        if (v6 < 0)
        {
          return -1;
        }

        goto LABEL_19;
      }
    }
  }

  if (*(writer + 7))
  {
    goto LABEL_24;
  }

  v7 = xmlOutputBufferWriteString(*writer, "\n");
  if (v7 < 0)
  {
    return -1;
  }

  i += v7;
LABEL_24:
  v8 = *writer;
  if (*writer)
  {
    LODWORD(v8) = xmlOutputBufferFlush(v8);
  }

  return v8 + i;
}

int xmlTextWriterEndElement(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    goto LABEL_8;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    goto LABEL_8;
  }

  v4 = Data;
  v5 = *(Data + 2);
  if (v5 == 1)
  {
    v6 = 0;
LABEL_15:
    v10 = xmlTextWriterOutputNSDecl(writer);
    if (v10 < 0)
    {
      return -1;
    }

    v11 = v10;
    if (*(writer + 7))
    {
      *(writer + 8) = 1;
    }

    v12 = xmlOutputBufferWriteString(*writer, "/>");
    if (v12 < 0)
    {
      return -1;
    }

    v7 = v11 + v6 + v12;
    goto LABEL_25;
  }

  if (v5 != 3)
  {
    if (v5 != 2)
    {
      return -1;
    }

    v6 = xmlTextWriterEndAttribute(writer);
    if (v6 < 0)
    {
LABEL_8:
      xmlListDelete(*(writer + 2));
      *(writer + 2) = 0;
      return -1;
    }

    goto LABEL_15;
  }

  if (*(writer + 7) && *(writer + 8))
  {
    v9 = xmlTextWriterWriteIndent(writer);
  }

  else
  {
    v9 = 0;
  }

  *(writer + 8) = 1;
  v13 = xmlOutputBufferWriteString(*writer, "</");
  if (v13 < 0)
  {
    return -1;
  }

  v14 = v13;
  v15 = xmlOutputBufferWriteString(*writer, *v4);
  if (v15 < 0)
  {
    return -1;
  }

  v16 = v15;
  v17 = xmlOutputBufferWriteString(*writer, ">");
  if (v17 < 0)
  {
    return -1;
  }

  v7 = v14 + v9 + v17 + v16;
LABEL_25:
  if (*(writer + 7))
  {
    v7 += xmlOutputBufferWriteString(*writer, "\n");
  }

  xmlListPopFront(*(writer + 1));
  return v7;
}

int xmlTextWriterEndPI(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return 0;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return 0;
  }

  if ((Data[2] & 0xFFFFFFFE) != 4)
  {
    return -1;
  }

  v4 = xmlOutputBufferWriteString(*writer, "?>");
  if (v4 < 0)
  {
    return -1;
  }

  v5 = v4;
  if (*(writer + 7))
  {
    v6 = xmlOutputBufferWriteString(*writer, "\n");
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      goto LABEL_9;
    }

    return -1;
  }

LABEL_9:
  xmlListPopFront(*(writer + 1));
  return v5;
}

int xmlTextWriterEndCDATA(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  if (Data[2] != 6)
  {
    return -1;
  }

  v4 = xmlOutputBufferWriteString(*writer, "]]>");
  if (v4 < 0)
  {
    return -1;
  }

  v5 = v4;
  xmlListPopFront(*(writer + 1));
  return v5;
}

int xmlTextWriterEndDTD(xmlTextWriterPtr writer)
{
  if (writer)
  {
    v2 = 0;
    while (1)
    {
      v3 = xmlListFront(*(writer + 1));
      if (!v3)
      {
        return v2;
      }

      Data = xmlLinkGetData(v3);
      if (!Data)
      {
        return v2;
      }

      v5 = Data[2];
      if (v5 > 10)
      {
        break;
      }

      if ((v5 - 9) < 2)
      {
        v9 = xmlTextWriterEndDTDElement(writer);
LABEL_22:
        v8 = v9;
        goto LABEL_23;
      }

      if (v5 != 7)
      {
        if (v5 != 8)
        {
          return v2;
        }

        v6 = xmlOutputBufferWriteString(*writer, "]");
        if (v6 < 0)
        {
          return -1;
        }

        v2 += v6;
      }

      v7 = xmlOutputBufferWriteString(*writer, ">");
      v8 = v7;
      if (*(writer + 7))
      {
        if (v7 < 0)
        {
          return -1;
        }

        v2 += v7;
        v8 = xmlOutputBufferWriteString(*writer, "\n");
      }

      xmlListPopFront(*(writer + 1));
LABEL_23:
      v2 += v8;
      if (v8 < 0)
      {
        return -1;
      }
    }

    if ((v5 - 13) < 3)
    {
      v9 = xmlTextWriterEndDTDEntity(writer);
    }

    else if ((v5 - 11) >= 2)
    {
      if (v5 != 16)
      {
        return v2;
      }

      v9 = xmlTextWriterEndComment(writer);
    }

    else
    {
      v9 = xmlTextWriterEndDTDAttlist(writer);
    }

    goto LABEL_22;
  }

  return -1;
}

int xmlTextWriterEndComment(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterEndComment : invalid writer!\n");
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    xmlWriterErrMsg(writer, 1, "xmlTextWriterEndComment : not allowed in this context!\n");
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  if (Data[2] != 16)
  {
    return -1;
  }

  v4 = xmlOutputBufferWriteString(*writer, "-->");
  if (v4 < 0)
  {
    return -1;
  }

  v5 = v4;
  if (*(writer + 7))
  {
    v6 = xmlOutputBufferWriteString(*writer, "\n");
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      goto LABEL_9;
    }

    return -1;
  }

LABEL_9:
  xmlListPopFront(*(writer + 1));
  return v5;
}

int xmlTextWriterFlush(xmlTextWriterPtr writer)
{
  if (writer)
  {
    v1 = *writer;
    if (v1)
    {
      LODWORD(v1) = xmlOutputBufferFlush(v1);
    }
  }

  else
  {
    LODWORD(v1) = -1;
  }

  return v1;
}

int xmlTextWriterStartComment(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterStartComment : invalid writer!\n");
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (v2 && (Data = xmlLinkGetData(v2)) != 0 && ((v4 = Data, (v5 = Data[2]) != 0) ? (v6 = v5 == 3) : (v6 = 1), !v6))
  {
    if (v5 != 1)
    {
      return -1;
    }

    v12 = xmlTextWriterOutputNSDecl(writer);
    if (v12 < 0)
    {
      return -1;
    }

    v13 = v12;
    v14 = xmlOutputBufferWriteString(*writer, ">");
    if (v14 < 0)
    {
      return -1;
    }

    v7 = v14 + v13;
    if (*(writer + 7))
    {
      v15 = xmlOutputBufferWriteString(*writer, "\n");
      if (v15 < 0)
      {
        return -1;
      }

      v7 += v15;
    }

    v4[2] = 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (!v8)
  {
    xmlWriterErrMsg(writer, 2, "xmlTextWriterStartElement : out of memory!\n");
    return -1;
  }

  *v8 = 0;
  v8[2] = 16;
  xmlListPushFront(*(writer + 1), v8);
  if (!*(writer + 7))
  {
    goto LABEL_14;
  }

  v9 = xmlTextWriterWriteIndent(writer);
  if (v9 < 0)
  {
    return -1;
  }

  v7 += v9;
LABEL_14:
  v10 = xmlOutputBufferWriteString(*writer, "<!--");
  if (v10 >= 0)
  {
    return v10 + v7;
  }

  else
  {
    return -1;
  }
}

uint64_t xmlTextWriterOutputNSDecl(uint64_t a1)
{
  v2 = 0;
  while (!xmlListEmpty(*(a1 + 16)))
  {
    v3 = xmlListFront(*(a1 + 16));
    Data = xmlLinkGetData(v3);
    if (Data)
    {
      v5 = Data;
      v6 = xmlStrdup(Data[1]);
      v7 = xmlStrdup(*v5);
      xmlListPopFront(*(a1 + 16));
      v8 = xmlTextWriterWriteAttribute(a1, v7, v6);
      free(v6);
      free(v7);
      if (v8 < 0)
      {
        xmlListDelete(*(a1 + 16));
        *(a1 + 16) = 0;
        return 0xFFFFFFFFLL;
      }

      v2 = (v8 + v2);
    }

    else
    {
      xmlListPopFront(*(a1 + 16));
    }
  }

  return v2;
}

uint64_t xmlTextWriterWriteIndent(uint64_t a1)
{
  v2 = xmlListSize(*(a1 + 8));
  v3 = (v2 - 1);
  if (v2 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 != 1)
  {
    v4 = v2 - 1;
    while (xmlOutputBufferWriteString(*a1, *(a1 + 40)) != -1)
    {
      if (!--v4)
      {
        return v3;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

int xmlTextWriterWriteVFormatComment(xmlTextWriterPtr writer, const char *format, va_list argptr)
{
  if (writer)
  {
    v4 = xmlTextWriterVSprintf(format, argptr);
    if (v4)
    {
      v5 = v4;
      v6 = xmlTextWriterWriteComment(writer, v4);
      free(v5);
      return v6;
    }
  }

  else
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterWriteVFormatComment : invalid writer!\n");
  }

  return -1;
}

void (__cdecl *xmlTextWriterVSprintf(const char *a1, va_list a2))(void *, xmlErrorPtr)
{
  v3 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  v4 = v3;
  if (!v3)
  {
LABEL_9:
    __xmlRaiseError(v3, 0, 0, 0, 0, 0x19u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterVSprintf : out of memory!\n");
    return v4;
  }

  if (vsnprintf(v3, 0x400uLL, a1, a2) >= 0x3FF)
  {
    v5 = 2047;
    while (1)
    {
      v6 = v5;
      free(v4);
      v3 = malloc_type_malloc(v6 + 1, 0x100004077774924uLL);
      v4 = v3;
      if (!v3)
      {
        break;
      }

      v7 = vsnprintf(v3, v6 + 1, a1, a2);
      v5 = v6 + 1024;
      if (v6 + 1 > v7 && (v7 & 0x80000000) == 0 && v6 != v7)
      {
        return v4;
      }
    }

    goto LABEL_9;
  }

  return v4;
}

int xmlTextWriterWriteComment(xmlTextWriterPtr writer, const xmlChar *content)
{
  started = xmlTextWriterStartComment(writer);
  if (started < 0)
  {
    return -1;
  }

  v5 = started;
  v6 = xmlTextWriterWriteString(writer, content);
  if (v6 < 0)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterEndComment(writer);
  if (v8 >= 0)
  {
    return v7 + v5 + v8;
  }

  else
  {
    return -1;
  }
}

int xmlTextWriterWriteString(xmlTextWriterPtr writer, const xmlChar *content)
{
  v2 = -1;
  if (writer && content)
  {
    v5 = xmlListFront(*(writer + 1));
    v6 = content;
    if (v5)
    {
      Data = xmlLinkGetData(v5);
      v6 = content;
      if (Data)
      {
        v8 = Data[2];
        if (v8 == 1 || v8 == 3)
        {
          v6 = xmlEncodeSpecialChars(0, content);
          if (!v6)
          {
            return 0;
          }
        }

        else
        {
          v6 = content;
          if (v8 == 2)
          {
            xmlBufAttrSerializeTxtContent(*(*writer + 32), *(writer + 9), 0, content);
            return 0;
          }
        }
      }
    }

    v10 = xmlStrlen(v6);
    v2 = xmlTextWriterWriteRawLen(writer, v6, v10);
    if (v6 != content)
    {
      free(v6);
    }

    if (v2 < 0)
    {
      return -1;
    }
  }

  return v2;
}

int xmlTextWriterStartElement(xmlTextWriterPtr writer, const xmlChar *name)
{
  result = -1;
  if (writer && name && *name)
  {
    v5 = xmlListFront(*(writer + 1));
    if (v5 && (Data = xmlLinkGetData(v5)) != 0)
    {
      v7 = Data;
      v8 = Data[2];
      if ((v8 - 4) < 2)
      {
        return -1;
      }

      v9 = 0;
      if (v8 == 1)
      {
        goto LABEL_10;
      }

      if (v8 == 2)
      {
        v9 = xmlTextWriterEndAttribute(writer);
        if (v9 < 0)
        {
          return -1;
        }

LABEL_10:
        v10 = xmlTextWriterOutputNSDecl(writer);
        if (v10 < 0)
        {
          return -1;
        }

        v11 = v10;
        v12 = xmlOutputBufferWriteString(*writer, ">");
        if (v12 < 0)
        {
          return -1;
        }

        v9 += v11 + v12;
        if (*(writer + 7))
        {
          xmlOutputBufferWriteString(*writer, "\n");
        }

        v7[2] = 3;
      }
    }

    else
    {
      v9 = 0;
    }

    v13 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
    if (v13)
    {
      v14 = v13;
      v15 = xmlStrdup(name);
      *v14 = v15;
      if (v15)
      {
        v14[2] = 1;
        xmlListPushFront(*(writer + 1), v14);
        if (*(writer + 7))
        {
          v9 += xmlTextWriterWriteIndent(writer);
        }

        v16 = xmlOutputBufferWriteString(*writer, "<");
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v16;
          v18 = xmlOutputBufferWriteString(*writer, *v14);
          if (v18 >= 0)
          {
            return v17 + v9 + v18;
          }

          else
          {
            return -1;
          }
        }
      }

      else
      {
        xmlWriterErrMsg(writer, 2, "xmlTextWriterStartElement : out of memory!\n");
        free(v14);
      }
    }

    else
    {
      xmlWriterErrMsg(writer, 2, "xmlTextWriterStartElement : out of memory!\n");
    }

    return -1;
  }

  return result;
}

int xmlTextWriterEndAttribute(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data || Data[2] != 2)
  {
    return -1;
  }

  Data[2] = 1;
  result = xmlOutputBufferWrite(*writer, 1, writer + 48);
  if (result < 0)
  {
    return -1;
  }

  return result;
}

int xmlTextWriterStartElementNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI)
{
  started = -1;
  if (writer && name && *name)
  {
    if (prefix)
    {
      v9 = xmlStrdup(prefix);
      v10 = xmlStrcat(v9, ":");
    }

    else
    {
      v10 = 0;
    }

    v11 = xmlStrcat(v10, name);
    started = xmlTextWriterStartElement(writer, v11);
    free(v11);
    if (started < 0)
    {
      return -1;
    }

    if (namespaceURI)
    {
      v12 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
      if (v12)
      {
        v13 = v12;
        v14 = xmlStrdup("xmlns");
        if (prefix)
        {
          v15 = xmlStrcat(v14, ":");
          v14 = xmlStrcat(v15, prefix);
        }

        *v13 = v14;
        v16 = xmlStrdup(namespaceURI);
        v13[1] = v16;
        if (v16)
        {
          v13[2] = xmlListFront(*(writer + 1));
          xmlListPushFront(*(writer + 2), v13);
          return started;
        }

        xmlWriterErrMsg(writer, 2, "xmlTextWriterStartElementNS : out of memory!\n");
        free(v13);
      }

      else
      {
        xmlWriterErrMsg(writer, 2, "xmlTextWriterStartElementNS : out of memory!\n");
      }

      return -1;
    }
  }

  return started;
}

int xmlTextWriterFullEndElement(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  v4 = Data;
  v5 = *(Data + 2);
  switch(v5)
  {
    case 1:
      v6 = 0;
      break;
    case 3:
      v7 = 0;
      v8 = (writer + 28);
      if (!*(writer + 7))
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    case 2:
      v6 = xmlTextWriterEndAttribute(writer);
      if (v6 < 0)
      {
        return -1;
      }

      break;
    default:
      return -1;
  }

  v9 = xmlTextWriterOutputNSDecl(writer);
  if (v9 < 0)
  {
    return -1;
  }

  v10 = v9;
  v11 = xmlOutputBufferWriteString(*writer, ">");
  if (v11 < 0)
  {
    return -1;
  }

  v7 = v10 + v6 + v11;
  v8 = (writer + 28);
  if (!*(writer + 7))
  {
    goto LABEL_18;
  }

  *(writer + 8) = 0;
LABEL_16:
  if (*(writer + 8))
  {
    v7 += xmlTextWriterWriteIndent(writer);
  }

LABEL_18:
  *(writer + 8) = 1;
  v12 = xmlOutputBufferWriteString(*writer, "</");
  if (v12 < 0)
  {
    return -1;
  }

  v13 = v12;
  v14 = xmlOutputBufferWriteString(*writer, *v4);
  if (v14 < 0)
  {
    return -1;
  }

  v15 = v14;
  v16 = xmlOutputBufferWriteString(*writer, ">");
  if (v16 < 0)
  {
    return -1;
  }

  v17 = v13 + v7 + v16 + v15;
  if (*v8)
  {
    v17 += xmlOutputBufferWriteString(*writer, "\n");
  }

  xmlListPopFront(*(writer + 1));
  return v17;
}

int xmlTextWriterWriteVFormatRaw(xmlTextWriterPtr writer, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v4 = xmlTextWriterVSprintf(format, argptr);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = xmlStrlen(v4);
  v7 = xmlTextWriterWriteRawLen(writer, v5, v6);
  free(v5);
  return v7;
}

int xmlTextWriterWriteRaw(xmlTextWriterPtr writer, const xmlChar *content)
{
  v4 = xmlStrlen(content);

  return xmlTextWriterWriteRawLen(writer, content, v4);
}

int xmlTextWriterWriteRawLen(xmlTextWriterPtr writer, const xmlChar *content, int len)
{
  if (!writer)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterWriteRawLen : invalid writer!\n");
    return -1;
  }

  if (!content || len < 0)
  {
    xmlWriterErrMsg(writer, 1, "xmlTextWriterWriteRawLen : invalid content!\n");
    return -1;
  }

  v6 = xmlListFront(*(writer + 1));
  if (v6)
  {
    Data = xmlLinkGetData(v6);
    v8 = xmlTextWriterHandleStateDependencies(writer, Data);
    if (v8 < 0)
    {
      return -1;
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(writer + 7))
  {
    *(writer + 8) = 0;
  }

  v10 = xmlOutputBufferWrite(*writer, len, content);
  if (v10 < 0)
  {
    return -1;
  }

  else
  {
    return v10 + v8;
  }
}

uint64_t xmlTextWriterHandleStateDependencies(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  *str = 0;
  v12 = 0;
  v5 = *(a2 + 8);
  if (v5 <= 8)
  {
    switch(v5)
    {
      case 1:
        v9 = xmlTextWriterOutputNSDecl(a1);
        if (v9 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        v6 = v9;
        str[0] = 62;
        v7 = 3;
        break;
      case 4:
        v6 = 0;
        str[0] = 32;
        v7 = 5;
        break;
      case 7:
        v6 = 0;
        *str = 23328;
        v7 = 8;
        break;
      default:
        return result;
    }

    goto LABEL_22;
  }

  if (v5 <= 12)
  {
    if (v5 == 9)
    {
      v6 = 0;
      str[0] = 32;
      v7 = 10;
    }

    else
    {
      if (v5 != 11)
      {
        return result;
      }

      v6 = 0;
      str[0] = 32;
      v7 = 12;
    }

    goto LABEL_22;
  }

  if (v5 == 13 || v5 == 15)
  {
    v6 = 0;
    str[0] = 32;
    str[1] = *(a1 + 48);
    v7 = 14;
LABEL_22:
    *(a2 + 8) = v7;
    v10 = xmlOutputBufferWriteString(*a1, str);
    if (v10 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return (v10 + v6);
    }
  }

  return result;
}

int xmlTextWriterWriteFormatString(xmlTextWriterPtr writer, const char *format, ...)
{
  va_start(va, format);
  v2 = -1;
  if (writer && format)
  {
    return xmlTextWriterWriteVFormatString(writer, format, va);
  }

  return v2;
}

int xmlTextWriterWriteVFormatString(xmlTextWriterPtr writer, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  if (!format)
  {
    return -1;
  }

  v4 = xmlTextWriterVSprintf(format, argptr);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = xmlTextWriterWriteString(writer, v4);
  free(v5);
  return v6;
}

int xmlTextWriterWriteBase64(xmlTextWriterPtr writer, const char *data, int start, int len)
{
  v4 = -1;
  if (writer && data && ((len | start) & 0x80000000) == 0)
  {
    v9 = xmlListFront(*(writer + 1));
    if (v9 && (v10 = xmlLinkGetData(v9)) != 0)
    {
      v4 = xmlTextWriterHandleStateDependencies(writer, v10);
      if (v4 < 0)
      {
        return -1;
      }
    }

    else
    {
      v4 = 0;
    }

    if (*(writer + 7))
    {
      *(writer + 8) = 0;
    }

    v11 = *writer;
    if (!v11)
    {
      return -1;
    }

    v28 = 0;
    __dst = 0;
    if (len >= 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = &data[start];
      while (1)
      {
        v16 = ~v14 + len;
        if (v16 >= 2)
        {
          v16 = 2;
        }

        memcpy(&__dst, &v15[v14], v16 + 1);
        v17 = 0;
        v18 = v14 + 1;
        do
        {
          v19 = v17;
          v20 = v18;
          ++v17;
          ++v14;
          if (v19 > 1)
          {
            break;
          }

          ++v18;
        }

        while (v20 < len);
        buf[0] = xmlOutputBufferWriteBase64_dtable[__dst >> 2];
        buf[1] = xmlOutputBufferWriteBase64_dtable[(HIBYTE(__dst) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (__dst & 3))];
        v25 = xmlOutputBufferWriteBase64_dtable[(v28 >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (HIBYTE(__dst) & 0xF))];
        v26 = xmlOutputBufferWriteBase64_dtable[v28 & 0x3F];
        if (v19 <= 1)
        {
          v26 = 61;
          if (v17 != 2)
          {
            v25 = 61;
          }
        }

        if (v13 >= 72)
        {
          v21 = xmlOutputBufferWrite(v11, 2, "\r\n");
          if (v21 == -1)
          {
            return -1;
          }

          v13 = 0;
          v12 += v21;
        }

        v22 = xmlOutputBufferWrite(v11, 4, buf);
        if (v22 == -1)
        {
          break;
        }

        v12 += v22;
        if (v20 < len)
        {
          v13 += 4;
          v28 = 0;
          __dst = 0;
          if (v14 < len)
          {
            continue;
          }
        }

        if (v12 < 0)
        {
          return -1;
        }

        v4 += v12;
        return v4;
      }

      return -1;
    }
  }

  return v4;
}

int xmlTextWriterWriteBinHex(xmlTextWriterPtr writer, const char *data, int start, int len)
{
  v4 = -1;
  if (writer && data && ((len | start) & 0x80000000) == 0)
  {
    v9 = xmlListFront(*(writer + 1));
    if (v9 && (v10 = xmlLinkGetData(v9)) != 0)
    {
      v4 = xmlTextWriterHandleStateDependencies(writer, v10);
      if (v4 < 0)
      {
        return -1;
      }
    }

    else
    {
      v4 = 0;
    }

    if (*(writer + 7))
    {
      *(writer + 8) = 0;
    }

    v11 = *writer;
    if (!v11)
    {
      return -1;
    }

    if (len >= 1)
    {
      v12 = 0;
      v13 = &data[start];
      v14 = len;
      while (1)
      {
        v15 = xmlOutputBufferWrite(v11, 1, &xmlOutputBufferWriteBinHex_hex[*v13 >> 4]);
        if (v15 == -1)
        {
          break;
        }

        v16 = v15;
        v17 = xmlOutputBufferWrite(v11, 1, &xmlOutputBufferWriteBinHex_hex[*v13 & 0xF]);
        if (v17 == -1)
        {
          break;
        }

        v12 += v16 + v17;
        ++v13;
        if (!--v14)
        {
          if (v12 < 0)
          {
            return -1;
          }

          v4 += v12;
          return v4;
        }
      }

      return -1;
    }
  }

  return v4;
}

int xmlTextWriterStartAttribute(xmlTextWriterPtr writer, const xmlChar *name)
{
  result = -1;
  if (writer && name && *name)
  {
    v5 = xmlListFront(*(writer + 1));
    if (!v5)
    {
      return -1;
    }

    Data = xmlLinkGetData(v5);
    if (!Data)
    {
      return -1;
    }

    v7 = Data;
    v8 = Data[2];
    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      if (v8 != 2)
      {
        return -1;
      }

      v9 = xmlTextWriterEndAttribute(writer);
      if (v9 < 0)
      {
        return -1;
      }
    }

    v10 = xmlOutputBufferWriteString(*writer, " ");
    if ((v10 & 0x80000000) == 0)
    {
      v11 = v10;
      v12 = xmlOutputBufferWriteString(*writer, name);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = v12;
        v14 = xmlOutputBufferWriteString(*writer, "=");
        if ((v14 & 0x80000000) == 0)
        {
          v15 = v14;
          v16 = xmlOutputBufferWrite(*writer, 1, writer + 48);
          if ((v16 & 0x80000000) == 0)
          {
            result = v11 + v9 + v13 + v15 + v16;
            v7[2] = 2;
            return result;
          }
        }
      }
    }

    return -1;
  }

  return result;
}

int xmlTextWriterStartAttributeNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI)
{
  started = -1;
  if (writer && name && *name)
  {
    if (namespaceURI)
    {
      v9 = xmlStrdup("xmlns");
      v10 = v9;
      if (prefix)
      {
        v11 = xmlStrcat(v9, ":");
        v10 = xmlStrcat(v11, prefix);
      }

      data[0] = v10;
      data[1] = namespaceURI;
      data[2] = xmlListFront(*(writer + 1));
      v12 = xmlListSearch(*(writer + 2), data);
      if (v12)
      {
        v13 = v12;
        free(v10);
        if (xmlStrcmp(v13[1], namespaceURI))
        {
          return -1;
        }
      }

      else if (v10)
      {
        v14 = malloc_type_malloc(0x18uLL, 0x30040254F79A5uLL);
        if (!v14)
        {
          xmlWriterErrMsg(writer, 2, "xmlTextWriterStartAttributeNS : out of memory!\n");
          return -1;
        }

        v15 = v14;
        *v14 = v10;
        v16 = xmlStrdup(namespaceURI);
        v15[1] = v16;
        if (!v16)
        {
          xmlWriterErrMsg(writer, 2, "xmlTextWriterStartAttributeNS : out of memory!\n");
          free(v15);
          return -1;
        }

        v15[2] = xmlListFront(*(writer + 1));
        xmlListPushFront(*(writer + 2), v15);
      }
    }

    if (prefix)
    {
      v17 = xmlStrdup(prefix);
      v18 = xmlStrcat(v17, ":");
    }

    else
    {
      v18 = 0;
    }

    v19 = xmlStrcat(v18, name);
    started = xmlTextWriterStartAttribute(writer, v19);
    free(v19);
  }

  return started;
}

int xmlTextWriterWriteVFormatAttribute(xmlTextWriterPtr writer, const xmlChar *name, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v6 = xmlTextWriterVSprintf(format, argptr);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterWriteAttribute(writer, name, v6);
  free(v7);
  return v8;
}

int xmlTextWriterWriteAttribute(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *content)
{
  started = xmlTextWriterStartAttribute(writer, name);
  if (started < 0)
  {
    return -1;
  }

  v6 = started;
  v7 = xmlTextWriterWriteString(writer, content);
  if (v7 < 0)
  {
    return -1;
  }

  v8 = v7;
  v9 = xmlTextWriterEndAttribute(writer);
  if (v9 >= 0)
  {
    return v8 + v6 + v9;
  }

  else
  {
    return -1;
  }
}

int xmlTextWriterWriteVFormatAttributeNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v10 = xmlTextWriterVSprintf(format, argptr);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  v12 = xmlTextWriterWriteAttributeNS(writer, prefix, name, namespaceURI, v10);
  free(v11);
  return v12;
}

int xmlTextWriterWriteAttributeNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI, const xmlChar *content)
{
  result = -1;
  if (writer && name && *name)
  {
    started = xmlTextWriterStartAttributeNS(writer, prefix, name, namespaceURI);
    if (started < 0)
    {
      return -1;
    }

    v9 = started;
    v10 = xmlTextWriterWriteString(writer, content);
    if (v10 < 0)
    {
      return -1;
    }

    else
    {
      v11 = v10;
      v12 = xmlTextWriterEndAttribute(writer);
      if (v12 >= 0)
      {
        return v11 + v9 + v12;
      }

      else
      {
        return -1;
      }
    }
  }

  return result;
}

int xmlTextWriterWriteVFormatElement(xmlTextWriterPtr writer, const xmlChar *name, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v6 = xmlTextWriterVSprintf(format, argptr);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterWriteElement(writer, name, v6);
  free(v7);
  return v8;
}

int xmlTextWriterWriteElement(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *content)
{
  result = xmlTextWriterStartElement(writer, name);
  if (result != -1)
  {
    v6 = result;
    if (content)
    {
      result = xmlTextWriterWriteString(writer, content);
      if (result == -1)
      {
        return result;
      }

      v6 += result;
    }

    v7 = xmlTextWriterEndElement(writer);
    if (v7 == -1)
    {
      return -1;
    }

    else
    {
      return v7 + v6;
    }
  }

  return result;
}

int xmlTextWriterWriteVFormatElementNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v10 = xmlTextWriterVSprintf(format, argptr);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  v12 = xmlTextWriterWriteElementNS(writer, prefix, name, namespaceURI, v10);
  free(v11);
  return v12;
}

int xmlTextWriterWriteElementNS(xmlTextWriterPtr writer, const xmlChar *prefix, const xmlChar *name, const xmlChar *namespaceURI, const xmlChar *content)
{
  result = -1;
  if (writer && name && *name)
  {
    started = xmlTextWriterStartElementNS(writer, prefix, name, namespaceURI);
    if (started < 0)
    {
      return -1;
    }

    else
    {
      v9 = started;
      result = xmlTextWriterWriteString(writer, content);
      if (result != -1)
      {
        v10 = result;
        v11 = xmlTextWriterEndElement(writer);
        if (v11 == -1)
        {
          return -1;
        }

        else
        {
          return v10 + v9 + v11;
        }
      }
    }
  }

  return result;
}

int xmlTextWriterStartPI(xmlTextWriterPtr writer, const xmlChar *target)
{
  result = -1;
  if (writer && target && *target)
  {
    if (xmlStrcasecmp(target, "xml"))
    {
      v5 = xmlListFront(*(writer + 1));
      if (!v5 || (Data = xmlLinkGetData(v5)) == 0)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v7 = Data;
      v8 = 0;
      v9 = Data[2];
      result = -1;
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 != 1)
          {
            if (v9 != 2)
            {
              return result;
            }

            v8 = xmlTextWriterEndAttribute(writer);
            if (v8 < 0)
            {
              return -1;
            }
          }

          v10 = xmlTextWriterOutputNSDecl(writer);
          if (v10 < 0)
          {
            return -1;
          }

          v11 = v10;
          v12 = xmlOutputBufferWriteString(*writer, ">");
          if (v12 < 0)
          {
            return -1;
          }

          v8 += v11 + v12;
          v7[2] = 3;
        }

        goto LABEL_16;
      }

      if ((v9 - 4) >= 2)
      {
        if (v9 != 3 && v9 != 7)
        {
          return result;
        }

LABEL_16:
        v13 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
        if (v13)
        {
          v14 = v13;
          v15 = xmlStrdup(target);
          *v14 = v15;
          if (v15)
          {
            v14[2] = 4;
            xmlListPushFront(*(writer + 1), v14);
            v16 = xmlOutputBufferWriteString(*writer, "<?");
            if ((v16 & 0x80000000) == 0)
            {
              v17 = v16;
              v18 = xmlOutputBufferWriteString(*writer, *v14);
              if (v18 >= 0)
              {
                return v17 + v8 + v18;
              }

              else
              {
                return -1;
              }
            }
          }

          else
          {
            xmlWriterErrMsg(writer, 2, "xmlTextWriterStartPI : out of memory!\n");
            free(v14);
          }

          return -1;
        }

        v19 = "xmlTextWriterStartPI : out of memory!\n";
        v20 = writer;
        v21 = 2;
LABEL_25:
        xmlWriterErrMsg(v20, v21, v19);
        return -1;
      }

      v19 = "xmlTextWriterStartPI : nested PI!\n";
    }

    else
    {
      v19 = "xmlTextWriterStartPI : target name [Xx][Mm][Ll] is reserved for xml standardization!\n";
    }

    v20 = writer;
    v21 = 1;
    goto LABEL_25;
  }

  return result;
}

int xmlTextWriterWriteVFormatPI(xmlTextWriterPtr writer, const xmlChar *target, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v6 = xmlTextWriterVSprintf(format, argptr);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterWritePI(writer, target, v6);
  free(v7);
  return v8;
}

int xmlTextWriterWritePI(xmlTextWriterPtr writer, const xmlChar *target, const xmlChar *content)
{
  result = xmlTextWriterStartPI(writer, target);
  if (result != -1)
  {
    v6 = result;
    if (content)
    {
      result = xmlTextWriterWriteString(writer, content);
      if (result == -1)
      {
        return result;
      }

      v6 += result;
    }

    v7 = xmlTextWriterEndPI(writer);
    if (v7 == -1)
    {
      return -1;
    }

    else
    {
      return v7 + v6;
    }
  }

  return result;
}

int xmlTextWriterStartCDATA(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (v2 && (Data = xmlLinkGetData(v2)) != 0)
  {
    v4 = Data;
    v5 = 0;
    v6 = Data[2];
    result = -1;
    if (v6 <= 2)
    {
      if (v6)
      {
        if (v6 != 1)
        {
          if (v6 != 2)
          {
            return result;
          }

          v5 = xmlTextWriterEndAttribute(writer);
          if (v5 < 0)
          {
            return -1;
          }
        }

        v13 = xmlTextWriterOutputNSDecl(writer);
        if (v13 < 0)
        {
          return -1;
        }

        v14 = v13;
        v15 = xmlOutputBufferWriteString(*writer, ">");
        if (v15 < 0)
        {
          return -1;
        }

        v5 += v14 + v15;
        v4[2] = 3;
      }
    }

    else if ((v6 - 3) >= 3)
    {
      if (v6 != 6)
      {
        return result;
      }

      v8 = "xmlTextWriterStartCDATA : CDATA not allowed in this context!\n";
      v9 = writer;
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (!v11)
  {
    v8 = "xmlTextWriterStartCDATA : out of memory!\n";
    v9 = writer;
    v10 = 2;
LABEL_15:
    xmlWriterErrMsg(v9, v10, v8);
    return -1;
  }

  *v11 = 0;
  v11[2] = 6;
  xmlListPushFront(*(writer + 1), v11);
  v12 = xmlOutputBufferWriteString(*writer, "<![CDATA[");
  if (v12 < 0)
  {
    return -1;
  }

  else
  {
    return v12 + v5;
  }
}

int xmlTextWriterWriteVFormatCDATA(xmlTextWriterPtr writer, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v4 = xmlTextWriterVSprintf(format, argptr);
  if (!v4)
  {
    return -1;
  }

  v5 = v4;
  v6 = xmlTextWriterWriteCDATA(writer, v4);
  free(v5);
  return v6;
}

int xmlTextWriterWriteCDATA(xmlTextWriterPtr writer, const xmlChar *content)
{
  result = xmlTextWriterStartCDATA(writer);
  if (result != -1)
  {
    v5 = result;
    if (content)
    {
      result = xmlTextWriterWriteString(writer, content);
      if (result == -1)
      {
        return result;
      }

      v5 += result;
    }

    v6 = xmlTextWriterEndCDATA(writer);
    if (v6 == -1)
    {
      return -1;
    }

    else
    {
      return v6 + v5;
    }
  }

  return result;
}

int xmlTextWriterStartDTD(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid)
{
  v4 = -1;
  if (writer && name && *name)
  {
    v9 = xmlListFront(*(writer + 1));
    if (v9 && xmlLinkGetData(v9))
    {
      v10 = "xmlTextWriterStartDTD : DTD allowed only in prolog!\n";
      v11 = writer;
      v12 = 1;
LABEL_24:
      xmlWriterErrMsg(v11, v12, v10);
      return v4;
    }

    v13 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
    if (!v13)
    {
      v10 = "xmlTextWriterStartDTD : out of memory!\n";
      v11 = writer;
      v12 = 2;
      goto LABEL_24;
    }

    v14 = v13;
    v15 = xmlStrdup(name);
    *v14 = v15;
    if (v15)
    {
      v14[2] = 7;
      xmlListPushFront(*(writer + 1), v14);
      v16 = xmlOutputBufferWriteString(*writer, "<!DOCTYPE ");
      if ((v16 & 0x80000000) == 0)
      {
        v17 = v16;
        v18 = xmlOutputBufferWriteString(*writer, name);
        if ((v18 & 0x80000000) == 0)
        {
          v4 = v18 + v17;
          if (!pubid)
          {
            if (!sysid)
            {
              return v4;
            }

            if (*(writer + 7))
            {
              v33 = "\n";
            }

            else
            {
              v33 = " ";
            }

            v34 = xmlOutputBufferWrite(*writer, 1, v33);
            if (v34 < 0)
            {
              return -1;
            }

            v35 = v34;
            v31 = xmlOutputBufferWriteString(*writer, "SYSTEM ");
            if (v31 < 0)
            {
              return -1;
            }

            v36 = v35 + v4;
            goto LABEL_39;
          }

          if (sysid)
          {
            if (*(writer + 7))
            {
              v19 = "\n";
            }

            else
            {
              v19 = " ";
            }

            v20 = xmlOutputBufferWrite(*writer, 1, v19);
            if ((v20 & 0x80000000) == 0)
            {
              v21 = v20;
              v22 = xmlOutputBufferWriteString(*writer, "PUBLIC ");
              if ((v22 & 0x80000000) == 0)
              {
                v23 = v22;
                v24 = xmlOutputBufferWrite(*writer, 1, writer + 48);
                if ((v24 & 0x80000000) == 0)
                {
                  v25 = v24;
                  v26 = xmlOutputBufferWriteString(*writer, pubid);
                  if ((v26 & 0x80000000) == 0)
                  {
                    v27 = v26;
                    v28 = xmlOutputBufferWrite(*writer, 1, writer + 48);
                    if ((v28 & 0x80000000) == 0)
                    {
                      v29 = v28;
                      v30 = *writer;
                      v31 = *(writer + 7) ? xmlOutputBufferWriteString(v30, "\n       ") : xmlOutputBufferWrite(v30, 1, " ");
                      if ((v31 & 0x80000000) == 0)
                      {
                        v36 = v21 + v4 + v23 + v25 + v27 + v29;
LABEL_39:
                        v37 = v36 + v31;
                        v38 = xmlOutputBufferWrite(*writer, 1, writer + 48);
                        if ((v38 & 0x80000000) == 0)
                        {
                          v39 = v38;
                          v40 = xmlOutputBufferWriteString(*writer, sysid);
                          if ((v40 & 0x80000000) == 0)
                          {
                            v41 = v40;
                            v42 = xmlOutputBufferWrite(*writer, 1, writer + 48);
                            if ((v42 & 0x80000000) == 0)
                            {
                              return v39 + v37 + v41 + v42;
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

          else
          {
            xmlWriterErrMsg(writer, 1, "xmlTextWriterStartDTD : system identifier needed!\n");
          }
        }
      }
    }

    else
    {
      xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTD : out of memory!\n");
      free(v14);
    }

    return -1;
  }

  return v4;
}

int xmlTextWriterEndDTDElement(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  if ((Data[2] - 9) > 1)
  {
    return -1;
  }

  v4 = xmlOutputBufferWriteString(*writer, ">");
  if (v4 < 0)
  {
    return -1;
  }

  v5 = v4;
  if (*(writer + 7))
  {
    v6 = xmlOutputBufferWriteString(*writer, "\n");
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      goto LABEL_9;
    }

    return -1;
  }

LABEL_9:
  xmlListPopFront(*(writer + 1));
  return v5;
}

int xmlTextWriterEndDTDAttlist(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  if ((Data[2] - 11) > 1)
  {
    return -1;
  }

  v4 = xmlOutputBufferWriteString(*writer, ">");
  if (v4 < 0)
  {
    return -1;
  }

  v5 = v4;
  if (*(writer + 7))
  {
    v6 = xmlOutputBufferWriteString(*writer, "\n");
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      goto LABEL_9;
    }

    return -1;
  }

LABEL_9:
  xmlListPopFront(*(writer + 1));
  return v5;
}

int xmlTextWriterEndDTDEntity(xmlTextWriterPtr writer)
{
  if (!writer)
  {
    return -1;
  }

  v2 = xmlListFront(*(writer + 1));
  if (!v2)
  {
    return -1;
  }

  Data = xmlLinkGetData(v2);
  if (!Data)
  {
    return -1;
  }

  v4 = Data[2];
  if (v4 == 13 || v4 == 15)
  {
    v6 = 0;
  }

  else
  {
    if (v4 != 14)
    {
      return -1;
    }

    v6 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v6 < 0)
    {
      return -1;
    }
  }

  v7 = xmlOutputBufferWriteString(*writer, ">");
  if (v7 < 0)
  {
    return -1;
  }

  v8 = v7 + v6;
  if (*(writer + 7))
  {
    v9 = xmlOutputBufferWriteString(*writer, "\n");
    if ((v9 & 0x80000000) == 0)
    {
      v8 += v9;
      goto LABEL_16;
    }

    return -1;
  }

LABEL_16:
  xmlListPopFront(*(writer + 1));
  return v8;
}

int xmlTextWriterWriteVFormatDTD(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v10 = xmlTextWriterVSprintf(format, argptr);
  if (!v10)
  {
    return -1;
  }

  v11 = v10;
  v12 = xmlTextWriterWriteDTD(writer, name, pubid, sysid, v10);
  free(v11);
  return v12;
}

int xmlTextWriterWriteDTD(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid, const xmlChar *subset)
{
  result = xmlTextWriterStartDTD(writer, name, pubid, sysid);
  if (result != -1)
  {
    v8 = result;
    if (subset)
    {
      result = xmlTextWriterWriteString(writer, subset);
      if (result == -1)
      {
        return result;
      }

      v8 += result;
    }

    v9 = xmlTextWriterEndDTD(writer);
    if (v9 == -1)
    {
      return -1;
    }

    else
    {
      return v9 + v8;
    }
  }

  return result;
}

int xmlTextWriterStartDTDElement(xmlTextWriterPtr writer, const xmlChar *name)
{
  result = -1;
  if (writer && name && *name)
  {
    v5 = xmlListFront(*(writer + 1));
    if (v5)
    {
      Data = xmlLinkGetData(v5);
      if (!Data || ((v7 = Data, (v8 = Data[2]) != 0) ? (v9 = v8 == 8) : (v9 = 1), v9))
      {
        v10 = 0;
      }

      else
      {
        if (v8 != 7)
        {
          return -1;
        }

        v18 = xmlOutputBufferWriteString(*writer, " [");
        if (v18 < 0)
        {
          return -1;
        }

        v10 = v18;
        if (*(writer + 7))
        {
          v19 = xmlOutputBufferWriteString(*writer, "\n");
          if (v19 < 0)
          {
            return -1;
          }

          v10 += v19;
        }

        v7[2] = 8;
      }

      v11 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
      if (v11)
      {
        v12 = v11;
        v13 = xmlStrdup(name);
        *v12 = v13;
        if (v13)
        {
          v12[2] = 9;
          xmlListPushFront(*(writer + 1), v12);
          if (!*(writer + 7))
          {
LABEL_17:
            v15 = xmlOutputBufferWriteString(*writer, "<!ELEMENT ");
            if ((v15 & 0x80000000) == 0)
            {
              v16 = v15;
              v17 = xmlOutputBufferWriteString(*writer, name);
              if ((v17 & 0x80000000) == 0)
              {
                return v16 + v10 + v17;
              }
            }

            return -1;
          }

          v14 = xmlTextWriterWriteIndent(writer);
          if ((v14 & 0x80000000) == 0)
          {
            v10 += v14;
            goto LABEL_17;
          }
        }

        else
        {
          xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDElement : out of memory!\n");
          free(v12);
        }
      }

      else
      {
        xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDElement : out of memory!\n");
      }
    }

    return -1;
  }

  return result;
}

int xmlTextWriterWriteVFormatDTDElement(xmlTextWriterPtr writer, const xmlChar *name, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v6 = xmlTextWriterVSprintf(format, argptr);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterWriteDTDElement(writer, name, v6);
  free(v7);
  return v8;
}

int xmlTextWriterWriteDTDElement(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *content)
{
  if (!content)
  {
    return -1;
  }

  result = xmlTextWriterStartDTDElement(writer, name);
  if (result != -1)
  {
    v6 = result;
    result = xmlTextWriterWriteString(writer, content);
    if (result != -1)
    {
      v7 = result;
      v8 = xmlTextWriterEndDTDElement(writer);
      if (v8 == -1)
      {
        return -1;
      }

      else
      {
        return v7 + v6 + v8;
      }
    }
  }

  return result;
}

int xmlTextWriterStartDTDAttlist(xmlTextWriterPtr writer, const xmlChar *name)
{
  result = -1;
  if (writer && name && *name)
  {
    v5 = xmlListFront(*(writer + 1));
    if (v5)
    {
      Data = xmlLinkGetData(v5);
      if (!Data || ((v7 = Data, (v8 = Data[2]) != 0) ? (v9 = v8 == 8) : (v9 = 1), v9))
      {
        v10 = 0;
      }

      else
      {
        if (v8 != 7)
        {
          return -1;
        }

        v18 = xmlOutputBufferWriteString(*writer, " [");
        if (v18 < 0)
        {
          return -1;
        }

        v10 = v18;
        if (*(writer + 7))
        {
          v19 = xmlOutputBufferWriteString(*writer, "\n");
          if (v19 < 0)
          {
            return -1;
          }

          v10 += v19;
        }

        v7[2] = 8;
      }

      v11 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
      if (v11)
      {
        v12 = v11;
        v13 = xmlStrdup(name);
        *v12 = v13;
        if (v13)
        {
          v12[2] = 11;
          xmlListPushFront(*(writer + 1), v12);
          if (!*(writer + 7))
          {
LABEL_17:
            v15 = xmlOutputBufferWriteString(*writer, "<!ATTLIST ");
            if ((v15 & 0x80000000) == 0)
            {
              v16 = v15;
              v17 = xmlOutputBufferWriteString(*writer, name);
              if ((v17 & 0x80000000) == 0)
              {
                return v16 + v10 + v17;
              }
            }

            return -1;
          }

          v14 = xmlTextWriterWriteIndent(writer);
          if ((v14 & 0x80000000) == 0)
          {
            v10 += v14;
            goto LABEL_17;
          }
        }

        else
        {
          xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDAttlist : out of memory!\n");
          free(v12);
        }
      }

      else
      {
        xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDAttlist : out of memory!\n");
      }
    }

    return -1;
  }

  return result;
}

int xmlTextWriterWriteVFormatDTDAttlist(xmlTextWriterPtr writer, const xmlChar *name, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v6 = xmlTextWriterVSprintf(format, argptr);
  if (!v6)
  {
    return -1;
  }

  v7 = v6;
  v8 = xmlTextWriterWriteDTDAttlist(writer, name, v6);
  free(v7);
  return v8;
}

int xmlTextWriterWriteDTDAttlist(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *content)
{
  if (!content)
  {
    return -1;
  }

  result = xmlTextWriterStartDTDAttlist(writer, name);
  if (result != -1)
  {
    v6 = result;
    result = xmlTextWriterWriteString(writer, content);
    if (result != -1)
    {
      v7 = result;
      v8 = xmlTextWriterEndDTDAttlist(writer);
      if (v8 == -1)
      {
        return -1;
      }

      else
      {
        return v7 + v6 + v8;
      }
    }
  }

  return result;
}

int xmlTextWriterStartDTDEntity(xmlTextWriterPtr writer, int pe, const xmlChar *name)
{
  result = -1;
  if (writer && name && *name)
  {
    v7 = xmlListFront(*(writer + 1));
    if (v7 && (Data = xmlLinkGetData(v7)) != 0 && ((v9 = Data, (v10 = Data[2]) != 0) ? (v11 = v10 == 8) : (v11 = 1), !v11))
    {
      if (v10 != 7)
      {
        return -1;
      }

      v22 = xmlOutputBufferWriteString(*writer, " [");
      if (v22 < 0)
      {
        return -1;
      }

      v12 = v22;
      if (*(writer + 7))
      {
        v23 = xmlOutputBufferWriteString(*writer, "\n");
        if (v23 < 0)
        {
          return -1;
        }

        v12 += v23;
      }

      v9[2] = 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
    if (!v13)
    {
      xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDElement : out of memory!\n");
      return -1;
    }

    v14 = v13;
    v15 = xmlStrdup(name);
    *v14 = v15;
    if (!v15)
    {
      xmlWriterErrMsg(writer, 2, "xmlTextWriterStartDTDElement : out of memory!\n");
      free(v14);
      return -1;
    }

    if (pe)
    {
      v16 = 15;
    }

    else
    {
      v16 = 13;
    }

    v14[2] = v16;
    xmlListPushFront(*(writer + 1), v14);
    if (*(writer + 7))
    {
      v17 = xmlTextWriterWriteIndent(writer);
      if (v17 < 0)
      {
        return -1;
      }

      v12 += v17;
    }

    v18 = xmlOutputBufferWriteString(*writer, "<!ENTITY ");
    if ((v18 & 0x80000000) == 0)
    {
      v19 = v18 + v12;
      if (!pe)
      {
        goto LABEL_24;
      }

      v20 = xmlOutputBufferWriteString(*writer, "% ");
      if ((v20 & 0x80000000) == 0)
      {
        v19 += v20;
LABEL_24:
        v21 = xmlOutputBufferWriteString(*writer, name);
        if (v21 >= 0)
        {
          return v21 + v19;
        }

        else
        {
          return -1;
        }
      }
    }

    return -1;
  }

  return result;
}

int xmlTextWriterWriteVFormatDTDInternalEntity(xmlTextWriterPtr writer, int pe, const xmlChar *name, const char *format, va_list argptr)
{
  if (!writer)
  {
    return -1;
  }

  v8 = xmlTextWriterVSprintf(format, argptr);
  if (!v8)
  {
    return -1;
  }

  v9 = v8;
  v10 = xmlTextWriterWriteDTDInternalEntity(writer, pe, name, v8);
  free(v9);
  return v10;
}

int xmlTextWriterWriteDTDInternalEntity(xmlTextWriterPtr writer, int pe, const xmlChar *name, const xmlChar *content)
{
  if (!name)
  {
    return -1;
  }

  result = -1;
  if (content)
  {
    if (*name)
    {
      result = xmlTextWriterStartDTDEntity(writer, pe, name);
      if (result != -1)
      {
        v7 = result;
        result = xmlTextWriterWriteString(writer, content);
        if (result != -1)
        {
          v8 = result;
          v9 = xmlTextWriterEndDTDEntity(writer);
          if (v9 == -1)
          {
            return -1;
          }

          else
          {
            return v8 + v7 + v9;
          }
        }
      }
    }
  }

  return result;
}

int xmlTextWriterWriteDTDEntity(xmlTextWriterPtr writer, int pe, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid, const xmlChar *ndataid, const xmlChar *content)
{
  if (!sysid && !pubid && !content || pe && ndataid)
  {
    return -1;
  }

  if (pubid | sysid)
  {
    return xmlTextWriterWriteDTDExternalEntity(writer, pe, name, pubid, sysid, ndataid);
  }

  return xmlTextWriterWriteDTDInternalEntity(writer, pe, name, content);
}

int xmlTextWriterWriteDTDExternalEntity(xmlTextWriterPtr writer, int pe, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid, const xmlChar *ndataid)
{
  if (!(pubid | sysid))
  {
    return -1;
  }

  if (pe && ndataid)
  {
    return -1;
  }

  result = xmlTextWriterStartDTDEntity(writer, pe, name);
  if (result != -1)
  {
    v11 = result;
    v12 = xmlTextWriterWriteDTDExternalEntityContents(writer, pubid, sysid, ndataid);
    if (v12 < 0)
    {
      return -1;
    }

    v13 = v12;
    v14 = xmlTextWriterEndDTDEntity(writer);
    if (v14 == -1)
    {
      return -1;
    }

    else
    {
      return v13 + v11 + v14;
    }
  }

  return result;
}

int xmlTextWriterWriteDTDExternalEntityContents(xmlTextWriterPtr writer, const xmlChar *pubid, const xmlChar *sysid, const xmlChar *ndataid)
{
  if (!writer)
  {
    __xmlRaiseError(0, 0, 0, 0, 0, 0x19u, 1, 3, 0, 0, 0, 0, 0, 0, 0, "%s", "xmlTextWriterWriteDTDExternalEntityContents: xmlTextWriterPtr invalid!\n");
    goto LABEL_11;
  }

  v8 = xmlListFront(*(writer + 1));
  if (!v8)
  {
    goto LABEL_9;
  }

  Data = xmlLinkGetData(v8);
  if (!Data)
  {
LABEL_11:
    LODWORD(sysid) = -1;
    return sysid;
  }

  v10 = Data[2];
  if (v10 == 13)
  {
    goto LABEL_13;
  }

  if (v10 != 15)
  {
LABEL_9:
    v11 = "xmlTextWriterWriteDTDExternalEntityContents: you must call xmlTextWriterStartDTDEntity before the call to this function!\n";
    goto LABEL_10;
  }

  if (ndataid)
  {
    v11 = "xmlTextWriterWriteDTDExternalEntityContents: notation not allowed with parameter entities!\n";
LABEL_10:
    xmlWriterErrMsg(writer, 1, v11);
    goto LABEL_11;
  }

LABEL_13:
  if (pubid)
  {
    if (!sysid)
    {
      v11 = "xmlTextWriterWriteDTDExternalEntityContents: system identifier needed!\n";
      goto LABEL_10;
    }

    v13 = xmlOutputBufferWriteString(*writer, " PUBLIC ");
    if (v13 < 0)
    {
      goto LABEL_11;
    }

    v14 = v13;
    v15 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v15 < 0)
    {
      goto LABEL_11;
    }

    v16 = v15;
    v17 = xmlOutputBufferWriteString(*writer, pubid);
    if (v17 < 0)
    {
      goto LABEL_11;
    }

    v18 = v17;
    v19 = xmlOutputBufferWrite(*writer, 1, writer + 48);
    if (v19 < 0)
    {
      goto LABEL_11;
    }

    v20 = v16 + v14 + v18 + v19;
  }

  else
  {
    if (!sysid)
    {
      goto LABEL_27;
    }

    v20 = xmlOutputBufferWriteString(*writer, " SYSTEM");
    if (v20 < 0)
    {
      goto LABEL_11;
    }
  }

  v21 = xmlOutputBufferWriteString(*writer, " ");
  if (v21 < 0)
  {
    goto LABEL_11;
  }

  v22 = v21;
  v23 = xmlOutputBufferWrite(*writer, 1, writer + 48);
  if (v23 < 0)
  {
    goto LABEL_11;
  }

  v24 = v23;
  v25 = xmlOutputBufferWriteString(*writer, sysid);
  if (v25 < 0)
  {
    goto LABEL_11;
  }

  v26 = v25;
  v27 = xmlOutputBufferWrite(*writer, 1, writer + 48);
  if (v27 < 0)
  {
    goto LABEL_11;
  }

  LODWORD(sysid) = v22 + v20 + v24 + v26 + v27;
LABEL_27:
  if (!ndataid)
  {
    return sysid;
  }

  v28 = xmlOutputBufferWriteString(*writer, " NDATA ");
  if (v28 < 0)
  {
    goto LABEL_11;
  }

  v29 = v28;
  v30 = xmlOutputBufferWriteString(*writer, ndataid);
  if (v30 >= 0)
  {
    LODWORD(sysid) = v29 + sysid + v30;
  }

  else
  {
    LODWORD(sysid) = -1;
  }

  return sysid;
}

int xmlTextWriterWriteDTDNotation(xmlTextWriterPtr writer, const xmlChar *name, const xmlChar *pubid, const xmlChar *sysid)
{
  result = -1;
  if (writer && name && *name)
  {
    v9 = xmlListFront(*(writer + 1));
    if (!v9)
    {
      return -1;
    }

    Data = xmlLinkGetData(v9);
    if (!Data || (v11 = Data, v12 = Data[2], v12 == 8))
    {
      v14 = 0;
    }

    else
    {
      if (v12 != 7)
      {
        return -1;
      }

      v13 = xmlOutputBufferWriteString(*writer, " [");
      if (v13 < 0)
      {
        return -1;
      }

      v14 = v13;
      if (*(writer + 7))
      {
        v15 = xmlOutputBufferWriteString(*writer, "\n");
        if (v15 < 0)
        {
          return -1;
        }

        v14 += v15;
      }

      v11[2] = 8;
    }

    if (*(writer + 7))
    {
      v16 = xmlTextWriterWriteIndent(writer);
      if (v16 < 0)
      {
        return -1;
      }

      v14 += v16;
    }

    v17 = xmlOutputBufferWriteString(*writer, "<!NOTATION ");
    if (v17 < 0)
    {
      return -1;
    }

    v18 = v17;
    v19 = xmlOutputBufferWriteString(*writer, name);
    if (v19 < 0)
    {
      return -1;
    }

    v20 = v18 + v14 + v19;
    if (pubid)
    {
      v21 = xmlOutputBufferWriteString(*writer, " PUBLIC ");
      if (v21 < 0)
      {
        return -1;
      }

      v22 = v21;
      v23 = xmlOutputBufferWrite(*writer, 1, writer + 48);
      if (v23 < 0)
      {
        return -1;
      }

      v24 = v23;
      v25 = xmlOutputBufferWriteString(*writer, pubid);
      if (v25 < 0)
      {
        return -1;
      }

      v26 = v25;
      v27 = xmlOutputBufferWrite(*writer, 1, writer + 48);
      if (v27 < 0)
      {
        return -1;
      }

      v20 += v22 + v24 + v26 + v27;
      if (!sysid)
      {
LABEL_34:
        v36 = xmlOutputBufferWriteString(*writer, ">");
        if (v36 >= 0)
        {
          return v36 + v20;
        }

        else
        {
          return -1;
        }
      }
    }

    else
    {
      if (!sysid)
      {
        goto LABEL_34;
      }

      v28 = xmlOutputBufferWriteString(*writer, " SYSTEM");
      if (v28 < 0)
      {
        return -1;
      }

      v20 += v28;
    }

    v29 = xmlOutputBufferWriteString(*writer, " ");
    if ((v29 & 0x80000000) == 0)
    {
      v30 = v29;
      v31 = xmlOutputBufferWrite(*writer, 1, writer + 48);
      if ((v31 & 0x80000000) == 0)
      {
        v32 = v31;
        v33 = xmlOutputBufferWriteString(*writer, sysid);
        if ((v33 & 0x80000000) == 0)
        {
          v34 = v33;
          v35 = xmlOutputBufferWrite(*writer, 1, writer + 48);
          if ((v35 & 0x80000000) == 0)
          {
            v20 += v30 + v32 + v34 + v35;
            goto LABEL_34;
          }
        }
      }
    }

    return -1;
  }

  return result;
}

int xmlTextWriterSetIndent(xmlTextWriterPtr writer, int indent)
{
  result = -1;
  if (writer)
  {
    if ((indent & 0x80000000) == 0)
    {
      result = 0;
      *(writer + 7) = indent;
      *(writer + 8) = 1;
    }
  }

  return result;
}

int xmlTextWriterSetIndentString(xmlTextWriterPtr writer, const xmlChar *str)
{
  result = -1;
  if (writer && str)
  {
    v5 = *(writer + 5);
    if (v5)
    {
      free(v5);
    }

    v6 = xmlStrdup(str);
    *(writer + 5) = v6;
    if (v6)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return result;
}

int xmlTextWriterSetQuoteChar(xmlTextWriterPtr writer, xmlChar quotechar)
{
  if (!writer || quotechar != 39 && quotechar != 34)
  {
    return -1;
  }

  result = 0;
  *(writer + 48) = quotechar;
  return result;
}

uint64_t PUSH_NEXT(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7)
{
  v13 = *a7;
  v14 = a2 - *a7;
  if (v14 == 1)
  {
    v15 = 1;
    goto LABEL_29;
  }

  v38 = a4;
  v16 = a2 - 2;
  if (a2 - 2 <= v13)
  {
    v36 = a1 + 8 * a2;
    v37 = *(a1 + 8 * v16);
    v24 = *(v36 - 8);
    v25 = xmlXPathCmpNodesExt(v37, v24);
    v15 = 2;
    if (v25 != -2)
    {
      a4 = v38;
      if (v25 < 0)
      {
        *(a1 + 8 * v16) = v24;
        *(v36 - 8) = v37;
        v15 = 2;
      }

      goto LABEL_29;
    }

LABEL_23:
    a4 = v38;
    goto LABEL_29;
  }

  v17 = v13 + 2;
  v18 = (a1 + 8 * v13);
  v19 = xmlXPathCmpNodesExt(*v18, v18[1]);
  v20 = a2 - 1;
  if (v19 == -2 || (v19 & 0x80000000) == 0)
  {
    if (v17 != v20)
    {
      v26 = v13 + 3;
      v27 = v18 + 2;
      while (1)
      {
        v28 = xmlXPathCmpNodesExt(*(v27 - 1), *v27);
        if (v28 != -2 && v28 < 0)
        {
          break;
        }

        ++v26;
        ++v27;
        if (a2 == v26)
        {
          v17 = a2 - 1;
          goto LABEL_22;
        }
      }

      v17 = v26 - 1;
    }

LABEL_22:
    v15 = v17 - v13;
    goto LABEL_23;
  }

  if (v17 != v20)
  {
    v21 = v13 + 3;
    v22 = v18 + 2;
    while (1)
    {
      v23 = xmlXPathCmpNodesExt(*(v22 - 1), *v22);
      if (v23 == -2 || (v23 & 0x80000000) == 0)
      {
        break;
      }

      ++v21;
      ++v22;
      if (a2 == v21)
      {
        v17 = a2 - 1;
        goto LABEL_25;
      }
    }

    v17 = v21 - 1;
  }

LABEL_25:
  v29 = v17 - 1;
  a4 = v38;
  if (v17 - 1 > v13)
  {
    v30 = v13;
    do
    {
      v31 = *(a1 + 8 * v30);
      *(a1 + 8 * v30) = *(a1 + 8 * v29);
      *(a1 + 8 * v29) = v31;
      ++v30;
      --v29;
    }

    while (v30 < v29);
  }

  v15 = v17 - v13;
LABEL_29:
  if (v14 >= a4)
  {
    v32 = a4;
  }

  else
  {
    v32 = v14;
  }

  if (v32 > v15)
  {
    libxml_domnode_binary_insertion_sort_start(a1 + 8 * v13, v15, v32);
    v13 = *a7;
    v15 = v32;
  }

  *(a5 + 16 * *a6) = v13;
  *(a5 + 16 * (*a6)++ + 8) = v15;
  v33 = *a7 + v15;
  *a7 = v33;
  if (v33 != a2)
  {
    return 1;
  }

  v34 = *a6;
  if (*a6 >= 2)
  {
    do
    {
      libxml_domnode_tim_sort_merge(a1, a5, v34, a3);
      *(a5 + 16 * *a6 - 24) += *(a5 + 16 * *a6 - 8);
      v34 = *a6 - 1;
      *a6 = v34;
    }

    while (v34 > 1);
  }

  result = *(a3 + 8);
  if (result)
  {
    free(result);
    result = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

int xmlXPathIsInf(double val)
{
  v1 = fabs(val);
  if (val > 0.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  if (v1 == INFINITY)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void *xmlXPathErrMemory(uint64_t a1, const char *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    xmlResetError((a1 + 232));
    if (a2)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      *buf = 0u;
      v10 = 0u;
      xmlStrPrintf(buf, 200, "Memory allocation failed : %s\n", a2);
      v4 = buf;
    }

    else
    {
      v4 = "Memory allocation failed\n";
    }

    result = xmlStrdup(v4);
    *(a1 + 240) = result;
    *(a1 + 232) = 0x20000000CLL;
    v6 = *(a1 + 224);
    if (v6)
    {
      result = v6(*(a1 + 216), a1 + 232);
    }
  }

  else if (a2)
  {
    result = __xmlRaiseError(0, 0, 0, 0, 0, 0xCu, 2, 3, 0, 0, a2, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a2);
  }

  else
  {
    result = __xmlRaiseError(0, 0, 0, 0, 0, 0xCu, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void *xmlXPathPErrMemory(uint64_t a1, const char *a2)
{
  if (a1)
  {
    *(a1 + 16) = 15;
    a1 = *(a1 + 24);
  }

  return xmlXPathErrMemory(a1, a2);
}

void xmlXPathDebugDumpObject(FILE *output, xmlXPathObjectPtr cur, int depth)
{
  v60 = *MEMORY[0x1E69E9840];
  if (!output)
  {
    goto LABEL_96;
  }

  v45 = 0;
  memset(__b, 0, sizeof(__b));
  v6 = depth - 1;
  if (depth < 1)
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
  fputs(__b, output);
  if (!cur)
  {
    v9 = *MEMORY[0x1E69E9840];
    v10 = "Object is empty (NULL)\n";
    goto LABEL_15;
  }

  type = cur->type;
  if (cur->type <= XPATH_STRING)
  {
    if (type > XPATH_NODESET)
    {
      if (type == XPATH_BOOLEAN)
      {
        fwrite("Object is a Boolean : ", 0x16uLL, 1uLL, output);
        v23 = *MEMORY[0x1E69E9840];
        if (cur->BOOLval)
        {
          v10 = "true\n";
          v11 = 5;
        }

        else
        {
          v10 = "false\n";
          v11 = 6;
        }

        goto LABEL_16;
      }

      if (type != XPATH_NUMBER)
      {
        if (type == XPATH_STRING)
        {
          fwrite("Object is a string : ", 0x15uLL, 1uLL, output);
          xmlDebugDumpString(output, cur->stringval);
LABEL_67:
          v32 = *MEMORY[0x1E69E9840];

          fputc(10, output);
          return;
        }

LABEL_96:
        v40 = *MEMORY[0x1E69E9840];
        return;
      }

      floatval = cur->floatval;
      v28 = fabs(floatval);
      if (floatval > 0.0)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (v28 != INFINITY)
      {
        v29 = 0;
      }

      if (v29 == -1)
      {
        v41 = *MEMORY[0x1E69E9840];
        v10 = "Object is a number : -Infinity\n";
        v11 = 31;
        goto LABEL_16;
      }

      if (v29 == 1)
      {
        v30 = *MEMORY[0x1E69E9840];
        v10 = "Object is a number : Infinity\n";
        v11 = 30;
        goto LABEL_16;
      }

      if (floatval != 0.0)
      {
        fprintf(output, "Object is a number : %0g\n", cur->floatval);
        goto LABEL_96;
      }

      v42 = *MEMORY[0x1E69E9840];
      v10 = "Object is a number : 0\n";
      goto LABEL_15;
    }

    if (type == XPATH_UNDEFINED)
    {
      v21 = *MEMORY[0x1E69E9840];
      v10 = "Object is uninitialized\n";
      v11 = 24;
      goto LABEL_16;
    }

    if (type != XPATH_NODESET)
    {
      goto LABEL_96;
    }

    fwrite("Object is a Node Set :\n", 0x17uLL, 1uLL, output);
    nodesetval = cur->nodesetval;
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    *v53 = 0u;
    v54 = 0u;
    v16 = depth - 1;
    if (depth < 1)
    {
      v17 = 0;
    }

    else
    {
      if (v16 >= 0x18)
      {
        v16 = 24;
      }

      v17 = 2 * v16 + 2;
      memset(v53, 32, v17);
    }

    *&v53[v17] = 0;
    if (nodesetval)
    {
      fprintf(output, "Set contains %d nodes:\n", nodesetval->nodeNr);
      if (nodesetval->nodeNr >= 1)
      {
        v33 = 0;
        do
        {
          fputs(v53, output);
          fprintf(output, "%d", v33 + 1);
          xmlXPathDebugDumpNode(output, nodesetval->nodeTab[v33++], depth + 1);
        }

        while (v33 < nodesetval->nodeNr);
      }

      goto LABEL_96;
    }

    fputs(v53, output);
    v34 = "NodeSet is NULL !\n";
    v35 = 18;
LABEL_95:
    fwrite(v34, v35, 1uLL, output);
    goto LABEL_96;
  }

  if (type > XPATH_RANGE)
  {
    if (type == XPATH_LOCATIONSET)
    {
      fwrite("Object is a Location Set:\n", 0x1AuLL, 1uLL, output);
      user = cur->user;
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      *v53 = 0u;
      v54 = 0u;
      v25 = depth - 1;
      if (depth < 1)
      {
        v26 = 0;
      }

      else
      {
        if (v25 >= 0x18)
        {
          v25 = 24;
        }

        v26 = 2 * v25 + 2;
        memset(v53, 32, v26);
      }

      *&v53[v26] = 0;
      if (user)
      {
        if (*user >= 1)
        {
          v36 = 0;
          do
          {
            fputs(v53, output);
            fprintf(output, "%d : ", v36 + 1);
            xmlXPathDebugDumpObject(output, *(*(user + 1) + 8 * v36++), depth + 1);
          }

          while (v36 < *user);
        }

        goto LABEL_96;
      }

      fputs(v53, output);
      v34 = "LocationSet is NULL !\n";
      v35 = 22;
      goto LABEL_95;
    }

    if (type != XPATH_USERS)
    {
      if (type != XPATH_XSLT_TREE)
      {
        goto LABEL_96;
      }

      fwrite("Object is an XSLT value tree :\n", 0x1FuLL, 1uLL, output);
      v12 = cur->nodesetval;
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      *v46 = 0u;
      v47 = 0u;
      if (depth < 1)
      {
        v14 = 0;
      }

      else
      {
        if ((depth - 1) >= 0x18)
        {
          v13 = 24;
        }

        else
        {
          v13 = depth - 1;
        }

        memset(v46, 32, (2 * v13 + 2));
        v14 = v13 + 1;
      }

      v46[2 * v14 + 1] = 0;
      v46[2 * v14] = 0;
      if (v12 && v12->nodeNr && *v12->nodeTab)
      {
        fputs(v46, output);
        fprintf(output, "%d", v14 + 1);
        children = (*v12->nodeTab)->children;
        v59 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *v53 = 0u;
        v54 = 0u;
        if (depth < 0)
        {
          v39 = 0;
        }

        else
        {
          if (depth >= 0x18)
          {
            v38 = 24;
          }

          else
          {
            v38 = depth;
          }

          v39 = 2 * v38 + 2;
          memset(v53, 32, v39);
        }

        *&v53[v39] = 0;
        if (children)
        {
          do
          {
            next = children->next;
            xmlDebugDumpOneNode(output, children, depth + 1);
            children = next;
          }

          while (next);
          goto LABEL_96;
        }

        fputs(v53, output);
        v34 = "Node is NULL !\n";
        v35 = 15;
      }

      else
      {
        fputs(v46, output);
        v34 = "Value Tree is NULL !\n";
        v35 = 21;
      }

      goto LABEL_95;
    }

    v31 = *MEMORY[0x1E69E9840];
    v10 = "Object is user defined\n";
LABEL_15:
    v11 = 23;
LABEL_16:

    fwrite(v10, v11, 1uLL, output);
    return;
  }

  if (type == XPATH_POINT)
  {
    fprintf(output, "Object is a point : index %d in node", cur->index);
    v22 = cur->user;
LABEL_66:
    xmlXPathDebugDumpNode(output, v22, depth + 1);
    goto LABEL_67;
  }

  if (type != XPATH_RANGE)
  {
    goto LABEL_96;
  }

  user2 = cur->user2;
  if (user2 && (user2 != cur->user || cur->index != cur->index2))
  {
    fwrite("Object is a range :\n", 0x14uLL, 1uLL, output);
    fputs(__b, output);
    fwrite("From ", 5uLL, 1uLL, output);
    if ((cur->index & 0x80000000) == 0)
    {
      fprintf(output, "index %d in ", cur->index);
    }

    fwrite("node\n", 5uLL, 1uLL, output);
    xmlXPathDebugDumpNode(output, cur->user, depth + 1);
    fputs(__b, output);
    fwrite("To ", 3uLL, 1uLL, output);
    if ((cur->index2 & 0x80000000) == 0)
    {
      fprintf(output, "index %d in ", cur->index2);
    }

    fwrite("node\n", 5uLL, 1uLL, output);
    v22 = cur->user2;
    goto LABEL_66;
  }

  fwrite("Object is a collapsed range :\n", 0x1EuLL, 1uLL, output);
  fputs(__b, output);
  if ((cur->index & 0x80000000) == 0)
  {
    fprintf(output, "index %d in ", cur->index);
  }

  fwrite("node\n", 5uLL, 1uLL, output);
  v19 = cur->user;
  v20 = *MEMORY[0x1E69E9840];

  xmlXPathDebugDumpNode(output, v19, depth + 1);
}

void xmlXPathDebugDumpNode(FILE *a1, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
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
    memset(v16, 32, v7);
  }

  *(v16 + v7) = 0;
  if (!a2)
  {
    fputs(v16, a1);
    v13 = *MEMORY[0x1E69E9840];
    v11 = "Node is NULL !\n";
    v12 = 15;
LABEL_15:

    fwrite(v11, v12, 1uLL, a1);
    return;
  }

  v8 = *(a2 + 8);
  if (v8 != 2)
  {
    if (v8 != 13 && v8 != 9)
    {
      v14 = *MEMORY[0x1E69E9840];

      xmlDebugDumpOneNode(a1, a2, a3);
      return;
    }

    fputs(v16, a1);
    v10 = *MEMORY[0x1E69E9840];
    v11 = " /\n";
    v12 = 3;
    goto LABEL_15;
  }

  v15 = *MEMORY[0x1E69E9840];

  xmlDebugDumpAttr(a1, a2, a3);
}

void xmlXPathDebugDumpCompExpr(FILE *output, xmlXPathCompExprPtr comp, int depth)
{
  v14 = *MEMORY[0x1E69E9840];
  if (output && comp)
  {
    v13 = 0;
    memset(__b, 0, sizeof(__b));
    v6 = depth - 1;
    if (depth < 1)
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
    fputs(__b, output);
    if (*(comp + 5))
    {
      v9 = *MEMORY[0x1E69E9840];

      fwrite("Streaming Expression\n", 0x15uLL, 1uLL, output);
    }

    else
    {
      fprintf(output, "Compiled Expression : %d elements\n", *comp);
      v10 = *MEMORY[0x1E69E9840];
      v11 = *(comp + 1) + 56 * *(comp + 4);

      xmlXPathDebugDumpStepOp(output, comp, v11, depth + 1);
    }
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

void xmlXPathDebugDumpStepOp(FILE *a1, uint64_t a2, uint64_t a3, int a4)
{
  while (1)
  {
    v4 = a4;
    v5 = a3;
    v6 = a2;
    v7 = a1;
    v41 = *MEMORY[0x1E69E9840];
    v40 = 0;
    memset(__b, 0, sizeof(__b));
    v8 = a4 - 1;
    if (a4 < 1)
    {
      v9 = 0;
    }

    else
    {
      if (v8 >= 0x18)
      {
        v8 = 24;
      }

      v9 = 2 * v8 + 2;
      memset(__b, 32, v9);
    }

    *(__b + v9) = 0;
    fputs(__b, v7);
    if (!v5)
    {
      break;
    }

    switch(*v5)
    {
      case 0:
        v10 = "END";
        goto LABEL_29;
      case 1:
        v10 = "AND";
        goto LABEL_29;
      case 2:
        v10 = "OR";
        v15 = 2;
        goto LABEL_58;
      case 3:
        if (!*(v5 + 12))
        {
          v10 = "EQUAL !=";
          goto LABEL_55;
        }

        v10 = "EQUAL =";
LABEL_41:
        v15 = 7;
        goto LABEL_58;
      case 4:
        if (*(v5 + 12))
        {
          v13 = "CMP <";
        }

        else
        {
          v13 = "CMP >";
        }

        fwrite(v13, 5uLL, 1uLL, v7);
        if (!*(v5 + 16))
        {
          fputc(61, v7);
        }

        goto LABEL_59;
      case 5:
        v16 = *(v5 + 12);
        if (v16 <= 1)
        {
          if (v16)
          {
            if (v16 != 1)
            {
              goto LABEL_59;
            }

            v10 = "PLUS +";
          }

          else
          {
            v10 = "PLUS -";
          }

          goto LABEL_57;
        }

        if (v16 == 2)
        {
          v10 = "PLUS unary -";
          v15 = 12;
        }

        else
        {
          if (v16 != 3)
          {
            goto LABEL_59;
          }

          v10 = "PLUS unary - -";
          v15 = 14;
        }

        goto LABEL_58;
      case 6:
        v19 = *(v5 + 12);
        if (v19 == 1)
        {
          v10 = "MULT div";
LABEL_55:
          v15 = 8;
          goto LABEL_58;
        }

        if (v19)
        {
          v10 = "MULT mod";
          goto LABEL_55;
        }

        v10 = "MULT *";
LABEL_57:
        v15 = 6;
LABEL_58:
        fwrite(v10, v15, 1uLL, v7);
LABEL_59:
        fputc(10, v7);
LABEL_60:
        v26 = *(v5 + 4);
        if ((v26 & 0x80000000) == 0)
        {
          xmlXPathDebugDumpStepOp(v7, v6, *(v6 + 8) + 56 * v26, (v4 + 1));
        }

        v27 = *(v5 + 8);
        if ((v27 & 0x80000000) != 0)
        {
LABEL_66:
          v29 = *MEMORY[0x1E69E9840];
          return;
        }

        v28 = *MEMORY[0x1E69E9840];
        a3 = *(v6 + 8) + 56 * v27;
        a4 = v4 + 1;
        a1 = v7;
        a2 = v6;

        break;
      case 7:
        v10 = "UNION";
        v15 = 5;
        goto LABEL_58;
      case 8:
        v10 = "ROOT";
        goto LABEL_45;
      case 9:
        v10 = "NODE";
        goto LABEL_45;
      case 0xA:
        v21 = *(v5 + 12);
        v20 = *(v5 + 16);
        v22 = *(v5 + 20);
        v24 = *(v5 + 24);
        v23 = *(v5 + 32);
        fwrite("COLLECT ", 8uLL, 1uLL, v7);
        switch(v21)
        {
          case 1:
            v25 = " 'ancestors' ";
            goto LABEL_83;
          case 2:
            v25 = " 'ancestors-or-self' ";
            goto LABEL_77;
          case 3:
            v25 = " 'attributes' ";
            goto LABEL_73;
          case 4:
            v25 = " 'child' ";
            v30 = 9;
            goto LABEL_84;
          case 5:
            v25 = " 'descendant' ";
LABEL_73:
            v30 = 14;
            goto LABEL_84;
          case 6:
            v25 = " 'descendant-or-self' ";
            goto LABEL_79;
          case 7:
            v25 = " 'following' ";
            goto LABEL_83;
          case 8:
            v25 = " 'following-siblings' ";
LABEL_79:
            v30 = 22;
            goto LABEL_84;
          case 9:
            v25 = " 'namespace' ";
            goto LABEL_83;
          case 10:
            v25 = " 'parent' ";
            v30 = 10;
            goto LABEL_84;
          case 11:
            v25 = " 'preceding' ";
LABEL_83:
            v30 = 13;
            goto LABEL_84;
          case 12:
            v25 = " 'preceding-sibling' ";
LABEL_77:
            v30 = 21;
            goto LABEL_84;
          case 13:
            v25 = " 'self' ";
            v30 = 8;
LABEL_84:
            fwrite(v25, v30, 1uLL, v7);
            break;
          default:
            break;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v31 = "'all' ";
            v32 = 6;
            goto LABEL_99;
          }

          if (v20 != 4)
          {
            if (v20 != 5)
            {
              goto LABEL_100;
            }

            v31 = "'name' ";
            goto LABEL_97;
          }

          v31 = "'namespace' ";
          v32 = 12;
        }

        else
        {
          if (!v20)
          {
            v31 = "'none' ";
LABEL_97:
            v32 = 7;
            goto LABEL_99;
          }

          if (v20 == 1)
          {
            v31 = "'type' ";
            goto LABEL_97;
          }

          if (v20 != 2)
          {
            goto LABEL_100;
          }

          v31 = "'PI' ";
          v32 = 5;
        }

LABEL_99:
        fwrite(v31, v32, 1uLL, v7);
LABEL_100:
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            v33 = "'PI' ";
            v34 = 5;
          }

          else
          {
            if (v22 != 8)
            {
              goto LABEL_111;
            }

            v33 = "'comment' ";
            v34 = 10;
          }
        }

        else
        {
          if (v22)
          {
            if (v22 != 3)
            {
              goto LABEL_111;
            }

            v33 = "'text' ";
          }

          else
          {
            v33 = "'node' ";
          }

          v34 = 7;
        }

        fwrite(v33, v34, 1uLL, v7);
LABEL_111:
        if (v24)
        {
          fprintf(v7, "%s:", v24);
        }

        if (v23)
        {
          fputs(v23, v7);
        }

        goto LABEL_59;
      case 0xB:
        v12 = *(v5 + 24);
        fwrite("ELEM ", 5uLL, 1uLL, v7);
        xmlXPathDebugDumpObject(v7, v12, 0);
        goto LABEL_60;
      case 0xC:
        v14 = *(v5 + 24);
        if (*(v5 + 32))
        {
          v35 = *(v5 + 32);
          fprintf(v7, "VARIABLE %s:%s");
        }

        else
        {
          v36 = *(v5 + 24);
          fprintf(v7, "VARIABLE %s");
        }

        goto LABEL_59;
      case 0xD:
        v17 = *(v5 + 12);
        v18 = *(v5 + 24);
        if (*(v5 + 32))
        {
          v38 = *(v5 + 24);
          fprintf(v7, "FUNCTION %s:%s(%d args)");
        }

        else
        {
          v37 = *(v5 + 24);
          fprintf(v7, "FUNCTION %s(%d args)");
        }

        goto LABEL_59;
      case 0xE:
        v10 = "ARG";
LABEL_29:
        v15 = 3;
        goto LABEL_58;
      case 0xF:
        v10 = "PREDICATE";
        v15 = 9;
        goto LABEL_58;
      case 0x10:
        v10 = "FILTER";
        goto LABEL_57;
      case 0x11:
        v10 = "SORT";
LABEL_45:
        v15 = 4;
        goto LABEL_58;
      case 0x12:
        v10 = "RANGETO";
        goto LABEL_41;
      default:
        fprintf(v7, "UNKNOWN %d\n", *v5);
        goto LABEL_66;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  fwrite("Step is NULL\n", 0xDuLL, 1uLL, v7);
}