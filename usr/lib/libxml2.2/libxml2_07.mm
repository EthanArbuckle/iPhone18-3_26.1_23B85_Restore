_DWORD *xmlFatalErrMsg(_DWORD *result, int a2, char a3)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", a3);
  }

  v3 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, 0, 0, 0, 0, 0, "%s", a3);
    v3[6] = 0;
    if (!v3[112])
    {
      v3[83] = 1;
    }
  }

  return result;
}

xmlChar *__cdecl xmlStringDecodeEntities(xmlParserCtxtPtr ctxt, const xmlChar *str, int what, xmlChar end, xmlChar end2, xmlChar end3)
{
  if (!ctxt || !str)
  {
    return 0;
  }

  v12 = xmlStrlen(str);

  return xmlStringLenDecodeEntities(ctxt, str, v12, what, end, end2, end3);
}

_DWORD *xmlWarningMsg(_DWORD *result, int a2, const char *a3, const xmlChar *a4)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 1, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  v5 = result;
  if (!result[83] || result[68] != -1)
  {
    v6 = *result;
    if (*result)
    {
      if (*(v6 + 216) == -554844497)
      {
        v7 = *(v6 + 248);
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v6 + 168);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    return __xmlRaiseError(v7, v8, *(v5 + 8), v5, 0, 1u, a2, 1, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  return result;
}

_DWORD *xmlFatalErrMsgStr(_DWORD *result, int a2, const char *a3, const xmlChar *a4)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 3, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  v4 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a4, 0, 0, 0, 0, a3, a4);
    v4[6] = 0;
    if (!v4[112])
    {
      v4[83] = 1;
    }
  }

  return result;
}

xmlChar *__cdecl xmlParseNmtoken(xmlParserCtxtPtr ctxt)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(__src, 0, 105);
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 10000000;
  }

  else
  {
    v2 = 50000;
  }

  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    goto LABEL_60;
  }

  len = 0;
  v3 = xmlCurrentChar(ctxt, &len);
  v4 = 0;
  v5 = 0;
  do
  {
    xmlIsNameChar(ctxt, v3);
    if (!v6)
    {
      if (!v4)
      {
        goto LABEL_60;
      }

      v13 = xmlStrndup(__src, v4);
      goto LABEL_61;
    }

    if (v5 >= 101)
    {
      if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
      {
        xmlGROW(ctxt);
      }

      v5 = 0;
    }

    else
    {
      ++v5;
    }

    if (len == 1)
    {
      *(__src + v4++) = v3;
      v7 = 1;
    }

    else
    {
      v4 += xmlCopyCharMultiByte(__src + v4, v3);
      v7 = len;
    }

    input = ctxt->input;
    cur = input->cur;
    v10 = &cur[v7];
    if (v10 <= input->end)
    {
      if (*cur == 10)
      {
        ++input->line;
        input->col = 1;
      }

      else
      {
        ++input->col;
      }

      input->cur = v10;
    }

    v3 = xmlCurrentChar(ctxt, &len);
    if (!v3)
    {
      if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
      {
        xmlGROW(ctxt);
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_60;
      }

      v3 = xmlCurrentChar(ctxt, &len);
      v5 = 0;
    }
  }

  while (v4 < 100);
  LODWORD(v11) = 2 * v4;
  v12 = malloc_type_malloc((2 * v4), 0x100004077774924uLL);
  v13 = v12;
  if (!v12)
  {
    xmlErrMemory(ctxt, 0);
    goto LABEL_61;
  }

  memcpy(v12, __src, v4);
  while (1)
  {
    xmlIsNameChar(ctxt, v3);
    if (!v14)
    {
      v13[v4] = 0;
      goto LABEL_61;
    }

    if (v5 < 101)
    {
      ++v5;
    }

    else
    {
      if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
      {
        xmlGROW(ctxt);
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_59;
      }

      v5 = 0;
    }

    if (v4 + 10 <= v11)
    {
      goto LABEL_44;
    }

    v11 = (2 * v11);
    v15 = malloc_type_realloc(v13, v11, 0x100004077774924uLL);
    if (!v15)
    {
      break;
    }

    v13 = v15;
LABEL_44:
    if (len == 1)
    {
      v13[v4++] = v3;
    }

    else
    {
      v4 += xmlCopyCharMultiByte(&v13[v4], v3);
    }

    v16 = ctxt->input;
    v17 = v16->cur;
    v18 = &v17[len];
    if (v18 <= v16->end)
    {
      if (*v17 == 10)
      {
        ++v16->line;
        v16->col = 1;
      }

      else
      {
        ++v16->col;
      }

      v16->cur = v18;
    }

    v3 = xmlCurrentChar(ctxt, &len);
    if (v4 > v2)
    {
      xmlFatalErr(ctxt, 110, "NmToken");
      goto LABEL_59;
    }
  }

  xmlErrMemory(ctxt, 0);
LABEL_59:
  free(v13);
LABEL_60:
  v13 = 0;
LABEL_61:
  v19 = *MEMORY[0x1E69E9840];
  return v13;
}

__n128 xmlIsNameChar(uint64_t a1, signed int val)
{
  if ((*(a1 + 566) & 2) != 0)
  {
    if (val > 255)
    {
      if (xmlCharInRange(val, &xmlIsBaseCharGroup) || val == 12295 || (val - 19968) < 0x51A6 || (val - 12321) < 9 || xmlCharInRange(val, &xmlIsDigitGroup))
      {
        return result;
      }
    }

    else if ((val - 192) < 0x17 || (val & 0xFFFFFFDF) - 65 < 0x1A || (val - 48) < 0xA || val > 247 || (val - 216) < 0x1F)
    {
      return result;
    }

    if (((val - 45) > 0x32 || ((1 << (val - 45)) & 0x4000000002003) == 0) && val >= 256 && !xmlCharInRange(val, &xmlIsCombiningGroup))
    {
      xmlCharInRange(val, &xmlIsExtenderGroup);
    }
  }

  else if ((val > 0x3E || ((1 << val) & 0x4000800100000000) == 0) && (val - 48) >= 0xB && (val & 0xFFFFFFDF) - 65 >= 0x1A && ((val - 45) > 0x32 || ((1 << (val - 45)) & 0x4000000000003) == 0) && val != 183)
  {
    v4 = vdupq_n_s32(val);
    result.n128_u8[0] = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB70, vaddq_s32(v4, xmmword_1C79BAB50)), vcgtq_u32(xmmword_1C79BAB80, vaddq_s32(v4, xmmword_1C79BAB60)))));
  }

  return result;
}

xmlChar *__cdecl xmlParseEntityValue(xmlParserCtxtPtr ctxt, xmlChar **orig)
{
  len = 0;
  if ((ctxt->options & 0x80000) != 0)
  {
    v4 = 1000000000;
  }

  else
  {
    v4 = 10000000;
  }

  v22 = 0;
  v5 = *ctxt->input->cur;
  if (v5 != 34 && v5 != 39)
  {
    xmlFatalErr(ctxt, 36, 0);
    return 0;
  }

  v6 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  if (!v6)
  {
    xmlErrMemory(ctxt, 0);
    return 0;
  }

  v7 = v6;
  ctxt->instate = XML_PARSER_ENTITY_VALUE;
  input = ctxt->input;
  if (!ctxt->progressive && input->end - input->cur <= 249)
  {
    xmlGROW(ctxt);
    if (ctxt->instate == XML_PARSER_EOF)
    {
      goto LABEL_64;
    }
  }

  xmlNextChar(ctxt);
  v9 = xmlCurrentChar(ctxt, &len);
  v10 = 0;
  LODWORD(v11) = 100;
  while (1)
  {
    if (v9 > 255)
    {
      if (v9 >> 11 >= 0x1B && (v9 - 57344) >> 1 >= 0xFFF && (v9 - 0x10000) >> 20)
      {
        goto LABEL_49;
      }
    }

    else if (v9 <= 31 && (v9 > 0xD || ((1 << v9) & 0x2600) == 0))
    {
      goto LABEL_49;
    }

    if (v9 == v5 && ctxt->input == input)
    {
      break;
    }

    if (ctxt->instate == XML_PARSER_EOF)
    {
      goto LABEL_49;
    }

    if (v10 + 5 >= v11)
    {
      if ((v11 & 0x80000000) != 0 || (v11 = (2 * v11), (v12 = malloc_type_realloc(v7, v11, 0x100004077774924uLL)) == 0))
      {
        xmlErrMemory(ctxt, 0);
        goto LABEL_66;
      }

      v7 = v12;
    }

    if (len == 1)
    {
      *(v7 + v10++) = v9;
    }

    else
    {
      v10 += xmlCopyCharMultiByte(v7 + v10, v9);
    }

    v13 = ctxt->input;
    cur = v13->cur;
    end = v13->end;
    v16 = &cur[len];
    if (v16 <= end)
    {
      if (*cur == 10)
      {
        ++v13->line;
        v13->col = 1;
      }

      else
      {
        ++v13->col;
      }

      v13->cur = v16;
      cur = v16;
    }

    if (!ctxt->progressive && end - cur <= 249)
    {
      xmlGROW(ctxt);
    }

    v9 = xmlCurrentChar(ctxt, &len);
    if (!v9)
    {
      if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
      {
        xmlGROW(ctxt);
      }

      v9 = xmlCurrentChar(ctxt, &len);
    }

    if (v10 > v4)
    {
      xmlFatalErrMsg(ctxt, 37, "entity value too long\n");
LABEL_66:
      v17 = 0;
      goto LABEL_67;
    }
  }

  v9 = v5;
LABEL_49:
  *(v7 + v10) = 0;
  if (ctxt->instate == XML_PARSER_EOF)
  {
LABEL_64:
    v17 = 0;
    goto LABEL_67;
  }

  if (v9 != v5)
  {
    xmlFatalErr(ctxt, 37, 0);
    goto LABEL_64;
  }

  xmlNextChar(ctxt);
  for (i = v7; ; ++i)
  {
    v22 = i;
    v19 = *i;
    if (v19 != 37)
    {
      break;
    }

LABEL_57:
    v22 = i + 1;
    v20 = xmlParseStringName(ctxt, &v22);
    if (!v20 || (free(v20), i = v22, *v22 != 59))
    {
      xmlFatalErrMsgInt(ctxt, 87, "EntityValue: '%c' forbidden except for entities references\n", v19);
      goto LABEL_66;
    }

    if (v19 == 37 && ctxt->inSubset == 1 && ctxt->inputNr == 1)
    {
      xmlFatalErr(ctxt, 88, 0);
      goto LABEL_66;
    }

LABEL_62:
    ;
  }

  if (v19 == 38)
  {
    if (i[1] == 35)
    {
      goto LABEL_62;
    }

    goto LABEL_57;
  }

  if (*i)
  {
    goto LABEL_62;
  }

  ++ctxt->depth;
  v17 = xmlStringDecodeEntities(ctxt, v7, 2, 0, 0, 0);
  --ctxt->depth;
  if (orig)
  {
    *orig = v7;
    return v17;
  }

LABEL_67:
  free(v7);
  return v17;
}

xmlChar *xmlParseStringName(xmlParserCtxt *a1, const xmlChar **a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v24 = 0u;
  v25 = 0u;
  *out = 0u;
  v23 = 0u;
  v4 = *a2;
  len = 0;
  if ((a1->options & 0x80000) != 0)
  {
    v5 = 10000000;
  }

  else
  {
    v5 = 50000;
  }

  v6 = xmlStringCurrentChar(a1, v4, &len);
  xmlIsNameStartChar(a1, v6);
  if (!v7)
  {
    goto LABEL_32;
  }

  if (len == 1)
  {
    out[0] = v6;
    v8 = 1;
    v9 = 1;
  }

  else
  {
    v9 = xmlCopyCharMultiByte(out, v6);
    v8 = len;
  }

  v10 = &v4[v8];
  v11 = xmlStringCurrentChar(a1, v10, &len);
  do
  {
    xmlIsNameChar(a1, v11);
    if (!v12)
    {
      if (v9 > v5)
      {
        xmlFatalErr(a1, 110, "NCName");
        goto LABEL_32;
      }

      *a2 = v10;
      v16 = xmlStrndup(out, v9);
      goto LABEL_33;
    }

    if (len == 1)
    {
      out[v9++] = v11;
      v13 = 1;
    }

    else
    {
      v9 += xmlCopyCharMultiByte(&out[v9], v11);
      v13 = len;
    }

    v10 += v13;
    v11 = xmlStringCurrentChar(a1, v10, &len);
  }

  while (v9 < 100);
  LODWORD(v14) = 2 * v9;
  v15 = malloc_type_malloc((2 * v9), 0x100004077774924uLL);
  v16 = v15;
  if (!v15)
  {
    xmlErrMemory(a1, 0);
    goto LABEL_33;
  }

  memcpy(v15, out, v9);
  while (1)
  {
    xmlIsNameChar(a1, v11);
    if (!v17)
    {
      v16[v9] = 0;
      *a2 = v10;
      goto LABEL_33;
    }

    if (v9 + 10 <= v14)
    {
      goto LABEL_20;
    }

    v14 = (2 * v14);
    v18 = malloc_type_realloc(v16, v14, 0x100004077774924uLL);
    if (!v18)
    {
      break;
    }

    v16 = v18;
LABEL_20:
    if (len == 1)
    {
      v16[v9++] = v11;
    }

    else
    {
      v9 += xmlCopyCharMultiByte(&v16[v9], v11);
    }

    v10 += len;
    v11 = xmlStringCurrentChar(a1, v10, &len);
    if (v9 > v5)
    {
      xmlFatalErr(a1, 110, "NCName");
      goto LABEL_31;
    }
  }

  xmlErrMemory(a1, 0);
LABEL_31:
  free(v16);
LABEL_32:
  v16 = 0;
LABEL_33:
  v19 = *MEMORY[0x1E69E9840];
  return v16;
}

xmlChar *__cdecl xmlParseAttValue(xmlParserCtxtPtr ctxt)
{
  if (ctxt && ctxt->input)
  {
    return xmlParseAttValueInternal(ctxt, 0, 0, 0);
  }

  else
  {
    return 0;
  }
}

xmlChar *__cdecl xmlParseSystemLiteral(xmlParserCtxtPtr ctxt)
{
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 10000000;
  }

  else
  {
    v2 = 50000;
  }

  instate = ctxt->instate;
  if (!ctxt->progressive)
  {
    input = ctxt->input;
    cur = input->cur;
    if (cur - input->base >= 501 && input->end - cur <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  len = 0;
  v6 = *ctxt->input->cur;
  if (v6 != 34 && v6 != 39)
  {
    xmlFatalErr(ctxt, 43, 0);
    return 0;
  }

  xmlNextChar(ctxt);
  v7 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  if (!v7)
  {
    xmlErrMemory(ctxt, 0);
    return v7;
  }

  v26 = instate;
  ctxt->instate = XML_PARSER_SYSTEM_LITERAL;
  v8 = xmlCurrentChar(ctxt, &len);
  v9 = 0;
  v10 = 0;
  LODWORD(v11) = 100;
  while (1)
  {
    if (v8 > 255)
    {
      v12 = v8 >> 11;
      v15 = (v8 - 65534) < 0xFFFFE002 && (v8 - 1114112) < 0xFFF00000 && v12 > 0x1A;
      if (v8 != v6 && !v15)
      {
        goto LABEL_29;
      }

      v7[v9] = 0;
      ctxt->instate = v26;
      if (v12 < 0x1B || (v8 - 57344) >> 1 < 0xFFF || (v8 - 0x10000) < 0x100000)
      {
        goto LABEL_67;
      }

LABEL_74:
      xmlFatalErr(ctxt, 44, 0);
      return v7;
    }

    if (v8 <= 31 && (v8 > 0xD || ((1 << v8) & 0x2600) == 0))
    {
      v7[v9] = 0;
      ctxt->instate = v26;
      goto LABEL_74;
    }

    if (v8 == v6)
    {
      v7[v9] = 0;
      ctxt->instate = v26;
LABEL_67:
      xmlNextChar(ctxt);
      return v7;
    }

LABEL_29:
    if (v9 + 5 < v11)
    {
      goto LABEL_33;
    }

    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

    v11 = (2 * v11);
    v16 = malloc_type_realloc(v7, v11, 0x100004077774924uLL);
    if (!v16)
    {
      break;
    }

    v7 = v16;
LABEL_33:
    if (v10 < 50)
    {
      ++v10;
      goto LABEL_43;
    }

    if (!ctxt->progressive)
    {
      v17 = ctxt->input;
      v18 = v17->cur;
      if (v18 - v17->base < 501 || v17->end - v18 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
      {
        if (ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
        }
      }
    }

    if (ctxt->instate == XML_PARSER_EOF)
    {
      free(v7);
      return 0;
    }

    v10 = 0;
LABEL_43:
    if (len == 1)
    {
      v7[v9++] = v8;
    }

    else
    {
      v9 += xmlCopyCharMultiByte(&v7[v9], v8);
    }

    v19 = ctxt->input;
    v20 = v19->cur;
    v21 = &v20[len];
    if (v21 <= v19->end)
    {
      if (*v20 == 10)
      {
        ++v19->line;
        v22 = 1;
      }

      else
      {
        v22 = v19->col + 1;
      }

      v19->col = v22;
      v19->cur = v21;
    }

    v8 = xmlCurrentChar(ctxt, &len);
    if (!v8)
    {
      if (!ctxt->progressive)
      {
        if (ctxt->input->end - ctxt->input->cur > 249 || (xmlGROW(ctxt), !ctxt->progressive))
        {
          v23 = ctxt->input;
          v24 = v23->cur;
          if (v24 - v23->base >= 501 && v23->end - v24 <= 499)
          {
            xmlSHRINK(ctxt);
          }
        }
      }

      v8 = xmlCurrentChar(ctxt, &len);
    }

    if (v9 > v2)
    {
      xmlFatalErr(ctxt, 110, "SystemLiteral");
      free(v7);
      goto LABEL_71;
    }
  }

  free(v7);
LABEL_70:
  xmlErrMemory(ctxt, 0);
LABEL_71:
  v7 = 0;
  ctxt->instate = v26;
  return v7;
}

xmlChar *__cdecl xmlParsePubidLiteral(xmlParserCtxtPtr ctxt)
{
  options = ctxt->options;
  instate = ctxt->instate;
  if (!ctxt->progressive)
  {
    input = ctxt->input;
    cur = input->cur;
    if (cur - input->base >= 501 && input->end - cur <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  v6 = *ctxt->input->cur;
  if (v6 == 34 || v6 == 39)
  {
    xmlNextChar(ctxt);
    v7 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
    if (v7)
    {
      v21 = instate;
      v8 = 0;
      v9 = 0;
      ctxt->instate = XML_PARSER_PUBLIC_LITERAL;
      v10 = *ctxt->input->cur;
      if ((options & 0x80000) != 0)
      {
        v11 = 10000001;
      }

      else
      {
        v11 = 50001;
      }

      LODWORD(v12) = 100;
      while (v6 != v10 && xmlIsPubidChar_tab[v10])
      {
        v13 = v8 + 1;
        if (v8 + 1 >= v12)
        {
          if ((v12 & 0x80000000) != 0 || (v12 = (2 * v12), (v14 = malloc_type_realloc(v7, v12, 0x100004077774924uLL)) == 0))
          {
            xmlErrMemory(ctxt, 0);
            goto LABEL_43;
          }

          v7 = v14;
        }

        *(v7 + v8) = v10;
        if (v9 < 50)
        {
          ++v9;
        }

        else
        {
          if (!ctxt->progressive)
          {
            v15 = ctxt->input;
            v16 = v15->cur;
            if (v16 - v15->base < 501 || v15->end - v16 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
            {
              if (ctxt->input->end - ctxt->input->cur <= 249)
              {
                xmlGROW(ctxt);
              }
            }
          }

          if (ctxt->instate == XML_PARSER_EOF)
          {
            goto LABEL_43;
          }

          v9 = 0;
        }

        xmlNextChar(ctxt);
        v17 = ctxt->input;
        v18 = v17->cur;
        v10 = *v18;
        if (!*v18)
        {
          if (!ctxt->progressive)
          {
            if (v17->end - v18 > 249 || (xmlGROW(ctxt), v17 = ctxt->input, !ctxt->progressive))
            {
              v19 = v17->cur;
              if (v19 - v17->base >= 501 && v17->end - v19 <= 499)
              {
                xmlSHRINK(ctxt);
                v17 = ctxt->input;
              }
            }
          }

          v10 = *v17->cur;
        }

        ++v8;
        if (v11 == v13)
        {
          xmlFatalErr(ctxt, 110, "Public ID");
LABEL_43:
          free(v7);
          return 0;
        }
      }

      *(v7 + v8) = 0;
      if (v6 == v10)
      {
        xmlNextChar(ctxt);
      }

      else
      {
        xmlFatalErr(ctxt, 44, 0);
      }

      ctxt->instate = v21;
    }

    else
    {
      xmlErrMemory(ctxt, 0);
    }
  }

  else
  {
    xmlFatalErr(ctxt, 43, 0);
    return 0;
  }

  return v7;
}

xmlChar *__cdecl xmlParseExternalID(xmlParserCtxtPtr ctxt, xmlChar **publicID, int strict)
{
  if (!ctxt->progressive)
  {
    input = ctxt->input;
    cur = input->cur;
    if (cur - input->base >= 501 && input->end - cur <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  *publicID = 0;
  v8 = ctxt->input;
  v9 = v8->cur;
  v10 = *v9;
  if (v10 == 80)
  {
    if (v9[1] != 85 || v9[2] != 66 || v9[3] != 76 || v9[4] != 73 || v9[5] != 67)
    {
      return 0;
    }

    v8->cur = v9 + 6;
    v8->col += 6;
    if (!v9[6])
    {
      xmlParserInputGrow(v8, 250);
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required after 'PUBLIC'\n");
    }

    v12 = xmlParsePubidLiteral(ctxt);
    *publicID = v12;
    if (!v12)
    {
      xmlFatalErr(ctxt, 71, 0);
    }

    v13 = xmlSkipBlankChars(ctxt);
    if (!strict)
    {
      if (!v13)
      {
        return 0;
      }

      v15 = *ctxt->input->cur;
      if (v15 != 39 && v15 != 34)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (!v13)
    {
      v11 = "Space required after the Public Identifier\n";
      goto LABEL_30;
    }
  }

  else
  {
    if (v10 != 83 || v9[1] != 89 || v9[2] != 83 || v9[3] != 84 || v9[4] != 69 || v9[5] != 77)
    {
      return 0;
    }

    v8->cur = v9 + 6;
    v8->col += 6;
    if (!v9[6])
    {
      xmlParserInputGrow(v8, 250);
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      v11 = "Space required after 'SYSTEM'\n";
LABEL_30:
      xmlFatalErrMsg(ctxt, 65, v11);
    }
  }

LABEL_31:
  result = xmlParseSystemLiteral(ctxt);
  if (result)
  {
    return result;
  }

  xmlFatalErr(ctxt, 70, 0);
  return 0;
}

void xmlParseComment(xmlParserCtxtPtr ctxt)
{
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 1000000000;
  }

  else
  {
    v2 = 10000000;
  }

  input = ctxt->input;
  cur = input->cur;
  if (*cur == 60 && cur[1] == 33 && cur[2] == 45 && cur[3] == 45)
  {
    instate = ctxt->instate;
    ctxt->instate = XML_PARSER_COMMENT;
    id = input->id;
    input->cur = cur + 4;
    input->col += 4;
    if (!cur[4])
    {
      xmlParserInputGrow(input, 250);
      input = ctxt->input;
    }

    v35 = instate;
    if (!ctxt->progressive)
    {
      v7 = input->cur;
      if (v7 - input->base < 501 || input->end - v7 > 499 || (xmlSHRINK(ctxt), input = ctxt->input, !ctxt->progressive))
      {
        if (input->end - input->cur <= 249)
        {
          xmlGROW(ctxt);
          input = ctxt->input;
        }
      }
    }

    v8 = 0;
    v9 = 0;
    v10 = input->cur;
    v11 = *v10;
    v12 = 100;
LABEL_17:
    if (v11 == 10)
    {
      v13 = input->line + 1;
      do
      {
        input->line = v13;
        input->col = 1;
        v14 = *++v10;
        ++v13;
      }

      while (v14 == 10);
    }

    while (1)
    {
      col = input->col;
      while (1)
      {
        while (1)
        {
          if (*v10 <= 45)
          {
            v16 = *v10;
            if (v16 != 9 && (v16 - 32) > 0xC)
            {
              break;
            }
          }

          ++v10;
          ++col;
        }

        input->col = col;
        v18 = *v10;
        if (v18 != 10)
        {
          break;
        }

        v19 = input->line + 1;
        do
        {
          col = 1;
          input->line = v19;
          input->col = 1;
          v20 = *++v10;
          ++v19;
        }

        while (v20 == 10);
      }

      v21 = input->cur;
      v22 = v10 - v21;
      if (v10 != v21 && ctxt->sax && ctxt->sax->comment)
      {
        if (v9)
        {
          v23 = v22 + v8;
          if (v22 + v8 + 1 >= v12)
          {
            if (-101 - v23 < v12 || (v12 += v23 + 100, (v24 = malloc_type_realloc(v9, v12, 0x100004077774924uLL)) == 0))
            {
              free(v9);
LABEL_91:
              xmlErrMemory(ctxt, 0);
              goto LABEL_92;
            }

            v9 = v24;
          }
        }

        else
        {
          if (v18 == 45 && v10[1] == 45)
          {
            v25 = 1;
          }

          else
          {
            v25 = 100;
          }

          v12 = v22 + v25;
          v26 = malloc_type_malloc(v22 + v25, 0x100004077774924uLL);
          if (!v26)
          {
            goto LABEL_91;
          }

          v9 = v26;
          v8 = 0;
        }

        memcpy(&v9[v8], ctxt->input->cur, v22);
        v8 += v22;
        v9[v8] = 0;
      }

      if (v8 > v2)
      {
        break;
      }

      input = ctxt->input;
      input->cur = v10;
      v27 = *v10;
      v28 = v10;
      if (v27 == 10)
      {
        ++input->line;
        input->col = 1;
        v28 = (v10 + 1);
        v27 = v10[1];
      }

      if (v27 == 13 && v28[1] == 10)
      {
        input->cur = v28 + 1;
        v10 = v28 + 2;
        ++input->line;
        input->col = 1;
      }

      else
      {
        if (!ctxt->progressive)
        {
          if (v10 - input->base < 501 || input->end - v10 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
          {
            if (ctxt->input->end - ctxt->input->cur <= 249)
            {
              xmlGROW(ctxt);
            }
          }
        }

        if (ctxt->instate == XML_PARSER_EOF)
        {
          goto LABEL_76;
        }

        input = ctxt->input;
        v10 = input->cur;
        v11 = *v10;
        if (v11 != 45)
        {
          if (v11 > 31 || (v11 - 9) < 2)
          {
            goto LABEL_17;
          }

          xmlParseCommentComplex(ctxt, v9, v8, v12);
LABEL_88:
          if (ctxt->instate == XML_PARSER_EOF)
          {
            return;
          }

LABEL_92:
          ctxt->instate = v35;
          return;
        }

        if (v10[1] == 45)
        {
          if (v10[2] == 62)
          {
            if (input->id != id)
            {
              xmlFatalErrMsg(ctxt, 90, "comment doesn't start and stop in the same entity\n");
              input = ctxt->input;
              v10 = input->cur;
            }

            input->cur = v10 + 3;
            input->col += 3;
            if (!v10[3])
            {
              xmlParserInputGrow(input, 250);
            }

            if (ctxt->sax && (comment = ctxt->sax->comment) != 0 && !ctxt->disableSAX)
            {
              userData = ctxt->userData;
              if (!v9)
              {
                (comment)(userData, "");
                goto LABEL_88;
              }

              (comment)(userData, v9);
            }

            else if (!v9)
            {
              goto LABEL_88;
            }

            free(v9);
            goto LABEL_88;
          }

          if (v9)
          {
            v29 = "Double hyphen within comment: <!--%.50s\n";
            v30 = v9;
          }

          else
          {
            v29 = "Double hyphen within comment\n";
            v30 = 0;
          }

          xmlFatalErrMsgStr(ctxt, 80, v29, v30);
          if (ctxt->instate == XML_PARSER_EOF)
          {
            goto LABEL_76;
          }

          input = ctxt->input;
          v31 = input->col + 1;
          input->col = v31;
          ++v10;
        }

        else
        {
          v31 = input->col;
        }

        ++v10;
        input->col = v31 + 1;
      }
    }

    xmlFatalErrMsgStr(ctxt, 45, "Comment too big found", 0);
LABEL_76:

    free(v9);
  }
}

void xmlParseCommentComplex(uint64_t a1, _BYTE *a2, unint64_t a3, size_t a4)
{
  v6 = a2;
  if ((*(a1 + 566) & 8) != 0)
  {
    v8 = 1000000000;
  }

  else
  {
    v8 = 10000000;
  }

  v9 = *(*(a1 + 56) + 100);
  if (!a2)
  {
    a4 = 100;
    v10 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
    if (!v10)
    {

      xmlErrMemory(a1, 0);
      return;
    }

    v6 = v10;
    a3 = 0;
  }

  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  *len = 0;
  v42 = 0;
  v11 = xmlCurrentChar(a1, &len[1]);
  if (!v11)
  {
    goto LABEL_91;
  }

  v12 = v11;
  if (v11 > 255)
  {
    if (v11 >> 11 >= 0x1B && (v11 - 57344) >> 1 >= 0xFFF && (v11 - 0x10000) >= 0x100000)
    {
LABEL_36:
      v18 = a1;
      v19 = v12;
LABEL_37:
      xmlFatalErrMsgInt(v18, 9, "xmlParseComment: invalid xmlChar value %d\n", v19);
      goto LABEL_94;
    }
  }

  else if (v11 <= 31 && (v11 > 0xD || ((1 << v11) & 0x2600) == 0))
  {
    goto LABEL_36;
  }

  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  v15 = &v14[len[1]];
  if (v15 <= *(v13 + 40))
  {
    if (*v14 == 10)
    {
      ++*(v13 + 52);
      *(v13 + 56) = 1;
    }

    else
    {
      ++*(v13 + 56);
    }

    *(v13 + 32) = v15;
  }

  v16 = xmlCurrentChar(a1, len);
  if (!v16)
  {
    goto LABEL_91;
  }

  v17 = v16;
  if (v16 > 255)
  {
    if (v16 >> 11 >= 0x1B && (v16 - 57344) >> 1 >= 0xFFF && (v16 - 0x10000) >= 0x100000)
    {
      goto LABEL_36;
    }
  }

  else if (v16 <= 31 && (v16 > 0xD || ((1 << v16) & 0x2600) == 0))
  {
    goto LABEL_36;
  }

  v20 = *(a1 + 56);
  v21 = *(v20 + 32);
  v22 = &v21[len[0]];
  if (v22 <= *(v20 + 40))
  {
    if (*v21 == 10)
    {
      ++*(v20 + 52);
      *(v20 + 56) = 1;
    }

    else
    {
      ++*(v20 + 56);
    }

    *(v20 + 32) = v22;
  }

  v23 = xmlCurrentChar(a1, &v42);
  if (!v23)
  {
LABEL_91:
    v38 = "Comment not terminated\n";
LABEL_92:
    v39 = a1;
    v40 = 0;
    goto LABEL_93;
  }

  v24 = v23;
  v25 = 0;
  while (1)
  {
    if (v24 > 255)
    {
      if (v24 >> 11 >= 0x1B && (v24 - 57344) >> 1 >= 0xFFF && (v24 - 0x10000) >= 0x100000)
      {
        v6[a3] = 0;
LABEL_95:
        v18 = a1;
        v19 = v24;
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v24 <= 31)
    {
      break;
    }

    if (v12 == 45 && v17 == 45 && v24 == 62)
    {
      v6[a3] = 0;
      if (v9 != *(*(a1 + 56) + 100))
      {
        xmlFatalErrMsg(a1, 90, "Comment doesn't start and stop in the same entity\n");
      }

      xmlNextChar(a1);
      if (*a1)
      {
        v41 = *(*a1 + 160);
        if (v41)
        {
          if (!*(a1 + 332))
          {
            v41(*(a1 + 8), v6);
          }
        }
      }

      goto LABEL_94;
    }

LABEL_57:
    if (v12 == 45 && v17 == 45)
    {
      xmlFatalErr(a1, 80, 0);
    }

    if (a3 + 5 >= a4)
    {
      a4 *= 2;
      v26 = malloc_type_realloc(v6, a4, 0x100004077774924uLL);
      if (!v26)
      {
        free(v6);
        xmlErrMemory(a1, 0);
        return;
      }

      v6 = v26;
    }

    if (len[1] == 1)
    {
      v6[a3++] = v12;
    }

    else
    {
      a3 += xmlCopyCharMultiByte(&v6[a3], v12);
    }

    v28 = v42;
    v27 = len[0];
    len[0] = v42;
    len[1] = v27;
    if (v25 < 0x32)
    {
      ++v25;
    }

    else
    {
      if (!*(a1 + 452))
      {
        v29 = *(a1 + 56);
        v30 = v29[4];
        if (v30 - v29[3] < 501 || v29[5] - v30 > 499 || (xmlSHRINK(a1), !*(a1 + 452)))
        {
          if ((*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
          {
            xmlGROW(a1);
          }
        }
      }

      if (*(a1 + 272) == -1)
      {
        goto LABEL_94;
      }

      v25 = 0;
      v28 = v42;
    }

    v31 = *(a1 + 56);
    v32 = *(v31 + 32);
    v33 = &v32[v28];
    if (v33 <= *(v31 + 40))
    {
      if (*v32 == 10)
      {
        ++*(v31 + 52);
        v34 = 1;
      }

      else
      {
        v34 = *(v31 + 56) + 1;
      }

      *(v31 + 56) = v34;
      *(v31 + 32) = v33;
    }

    v35 = xmlCurrentChar(a1, &v42);
    if (!v35)
    {
      if (!*(a1 + 452))
      {
        v36 = *(a1 + 56);
        v37 = v36[4];
        if (v37 - v36[3] < 501 || v36[5] - v37 > 499 || (xmlSHRINK(a1), !*(a1 + 452)))
        {
          if ((*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
          {
            xmlGROW(a1);
          }
        }
      }

      v35 = xmlCurrentChar(a1, &v42);
    }

    v12 = v17;
    v17 = v24;
    v24 = v35;
    if (a3 > v8)
    {
      v38 = "Comment too big found";
      goto LABEL_92;
    }
  }

  if (v24 <= 0xD && ((1 << v24) & 0x2600) != 0)
  {
    goto LABEL_57;
  }

  v6[a3] = 0;
  if (v24)
  {
    goto LABEL_95;
  }

  v38 = "Comment not terminated \n<!--%.50s\n";
  v39 = a1;
  v40 = v6;
LABEL_93:
  xmlFatalErrMsgStr(v39, 45, v38, v40);
LABEL_94:
  free(v6);
}

const xmlChar *__cdecl xmlParsePITarget(xmlParserCtxtPtr ctxt)
{
  v2 = xmlParseName(ctxt);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    if ((v4 | 0x20) == 0x78 && (v5 = v2[1], (v5 | 0x20) == 0x6D) && (v6 = v2[2], (v6 | 0x20) == 0x6C))
    {
      v7 = v2[3];
      if (v4 == 120 && v5 == 109 && v6 == 108)
      {
        if (!v2[3])
        {
          xmlFatalErrMsg(ctxt, 64, "XML declaration allowed only at the start of the document\n");
          return v3;
        }
      }

      else if (!v2[3])
      {
        xmlFatalErr(ctxt, 64, 0);
        return v3;
      }

      v8 = 0;
      while (!xmlStrEqual(v3, xmlW3CPIs[v8]))
      {
        if (++v8 == 2)
        {
          xmlWarningMsg(ctxt, 64, "xmlParsePITarget: invalid name prefix 'xml'\n", 0);
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      if (xmlStrchr(v3, 0x3Au))
      {
        xmlNsErr(ctxt, 205, "colons are forbidden from PI names '%s'\n", v3, 0, 0);
      }
    }
  }

  return v3;
}

_DWORD *xmlNsErr(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5, xmlChar *a6)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 3u, a2, 2, 0, 0, a4, a5, a6, 0, 0, a3, a4);
  }

  v6 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 3u, a2, 2, 0, 0, a4, a5, a6, 0, 0, a3, a4);
    v6[140] = 0;
  }

  return result;
}

void xmlParsePI(xmlParserCtxtPtr ctxt)
{
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 1000000000;
  }

  else
  {
    v2 = 10000000;
  }

  len = 0;
  input = ctxt->input;
  cur = input->cur;
  if (*cur == 60 && cur[1] == 63)
  {
    id = input->id;
    instate = ctxt->instate;
    ctxt->instate = XML_PARSER_PI;
    input->cur = cur + 2;
    input->col += 2;
    if (!cur[2])
    {
      xmlParserInputGrow(input, 250);
    }

    if (!ctxt->progressive)
    {
      v7 = ctxt->input;
      v8 = v7->cur;
      if (v8 - v7->base >= 501 && v7->end - v8 <= 499)
      {
        xmlSHRINK(ctxt);
      }
    }

    v9 = xmlParsePITarget(ctxt);
    if (v9)
    {
      v10 = v9;
      v11 = ctxt->input;
      v12 = v11->cur;
      if (*v12 != 63 || v12[1] != 62)
      {
        v14 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
        if (v14)
        {
          v15 = v14;
          v31 = id;
          v32 = instate;
          if (!xmlSkipBlankChars(ctxt))
          {
            xmlFatalErrMsgStr(ctxt, 65, "ParsePI: PI %s space expected\n", v10);
          }

          v16 = xmlCurrentChar(ctxt, &len);
          v17 = 0;
          v18 = 0;
          v19 = 100;
          while (1)
          {
            if (v16 > 255)
            {
              if (v16 >> 11 >= 0x1B && (v16 - 57344) >> 1 >= 0xFFF && (v16 - 0x10000) >= 0x100000)
              {
LABEL_74:
                v15[v18] = 0;
                xmlFatalErrMsgStr(ctxt, 47, "ParsePI: PI %s never end ...\n", v10);
                instate = v32;
LABEL_75:
                free(v15);
                goto LABEL_70;
              }
            }

            else if (v16 <= 31)
            {
              if (v16 > 0xD || ((1 << v16) & 0x2600) == 0)
              {
                goto LABEL_74;
              }
            }

            else if (v16 == 63 && *(ctxt->input->cur + 1) == 62)
            {
              v15[v18] = 0;
              v28 = ctxt->input;
              if (v31 != v28->id)
              {
                xmlFatalErrMsg(ctxt, 90, "PI declaration doesn't start and stop in the same entity\n");
                v28 = ctxt->input;
              }

              v29 = v28->cur;
              v28->cur = v29 + 2;
              v28->col += 2;
              instate = v32;
              if (!v29[2])
              {
                xmlParserInputGrow(v28, 250);
              }

              if (v32 <= XML_PARSER_MISC && xmlStrEqual(v10, "oasis-xml-catalog") && (xmlCatalogGetDefaults() & 0xFFFFFFFE) == 2)
              {
                xmlParseCatalogPI(ctxt, v15);
              }

              if (ctxt->sax)
              {
                if (!ctxt->disableSAX)
                {
                  processingInstruction = ctxt->sax->processingInstruction;
                  if (processingInstruction)
                  {
                    (processingInstruction)(ctxt->userData, v10, v15);
                  }
                }
              }

              goto LABEL_75;
            }

            if (v18 + 5 >= v19)
            {
              v19 *= 2;
              v20 = malloc_type_realloc(v15, v19, 0x100004077774924uLL);
              if (!v20)
              {
                xmlErrMemory(ctxt, 0);
                goto LABEL_77;
              }

              v15 = v20;
            }

            if (v17 < 50)
            {
              ++v17;
            }

            else
            {
              if (!ctxt->progressive)
              {
                v21 = ctxt->input;
                v22 = v21->cur;
                if (v22 - v21->base < 501 || v21->end - v22 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
                {
                  if (ctxt->input->end - ctxt->input->cur <= 249)
                  {
                    xmlGROW(ctxt);
                  }
                }
              }

              if (ctxt->instate == XML_PARSER_EOF)
              {
                free(v15);
                return;
              }

              v17 = 0;
            }

            if (len == 1)
            {
              v15[v18++] = v16;
            }

            else
            {
              v18 += xmlCopyCharMultiByte(&v15[v18], v16);
            }

            v23 = ctxt->input;
            v24 = v23->cur;
            v25 = &v24[len];
            if (v25 <= v23->end)
            {
              if (*v24 == 10)
              {
                ++v23->line;
                v23->col = 1;
              }

              else
              {
                ++v23->col;
              }

              v23->cur = v25;
            }

            v16 = xmlCurrentChar(ctxt, &len);
            if (!v16)
            {
              if (!ctxt->progressive)
              {
                v26 = ctxt->input;
                v27 = v26->cur;
                if (v27 - v26->base < 501 || v26->end - v27 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
                {
                  if (ctxt->input->end - ctxt->input->cur <= 249)
                  {
                    xmlGROW(ctxt);
                  }
                }
              }

              v16 = xmlCurrentChar(ctxt, &len);
            }

            if (v18 > v2)
            {
              xmlFatalErrMsgStr(ctxt, 47, "PI %s too big found", v10);
LABEL_77:
              free(v15);
              ctxt->instate = v32;
              return;
            }
          }
        }

        xmlErrMemory(ctxt, 0);
LABEL_73:
        ctxt->instate = instate;
        return;
      }

      if (id != v11->id)
      {
        xmlFatalErrMsg(ctxt, 90, "PI declaration doesn't start and stop in the same entity\n");
        v11 = ctxt->input;
        v12 = v11->cur;
      }

      v11->cur = v12 + 2;
      v11->col += 2;
      if (!v12[2])
      {
        xmlParserInputGrow(v11, 250);
      }

      if (ctxt->sax && !ctxt->disableSAX)
      {
        v13 = ctxt->sax->processingInstruction;
        if (v13)
        {
          (v13)(ctxt->userData, v10, 0);
        }
      }
    }

    else
    {
      xmlFatalErr(ctxt, 46, 0);
    }

LABEL_70:
    if (ctxt->instate == XML_PARSER_EOF)
    {
      return;
    }

    goto LABEL_73;
  }
}

void xmlParseCatalogPI(uint64_t a1, xmlChar *str1)
{
  for (i = str1; ; ++i)
  {
    v5 = *i;
    v6 = v5 > 0x20;
    v7 = (1 << v5) & 0x100002600;
    if (v6 || v7 == 0)
    {
      break;
    }
  }

  if (xmlStrncmp(i, "catalog", 7))
  {
LABEL_8:

    xmlWarningMsg(a1, 93, "Catalog PI syntax error: %s\n", str1);
  }

  else
  {
    for (j = i + 9; ; ++j)
    {
      v10 = *(j - 2);
      if (v10 > 0x3D)
      {
        break;
      }

      if (((1 << v10) & 0x100002600) == 0)
      {
        if (v10 != 61)
        {
          return;
        }

        while (1)
        {
          v11 = *(j - 1);
          if (v11 > 0x27)
          {
            goto LABEL_8;
          }

          if (((1 << v11) & 0x100002600) == 0)
          {
            if (((1 << v11) & 0x8400000000) == 0)
            {
              goto LABEL_8;
            }

            v12 = -1;
            v13 = j;
            do
            {
              v15 = *v13++;
              v14 = v15;
              ++v12;
              if (v15)
              {
                v16 = v14 == v11;
              }

              else
              {
                v16 = 1;
              }
            }

            while (!v16);
            if (!v14)
            {
              goto LABEL_8;
            }

            v17 = xmlStrndup(j, v12);
            v18 = v17;
            for (k = 0; ; ++k)
            {
              v20 = v13[k];
              if (v20 > 0x20)
              {
                break;
              }

              if (((1 << v20) & 0x100002600) == 0)
              {
                if (!v13[k])
                {
                  if (!v17)
                  {
                    return;
                  }

                  *(a1 + 440) = xmlCatalogAddLocal(*(a1 + 440), v17);
                  goto LABEL_35;
                }

                break;
              }
            }

            xmlWarningMsg(a1, 93, "Catalog PI syntax error: %s\n", str1);
            if (!v18)
            {
              return;
            }

LABEL_35:

            free(v18);
            return;
          }

          ++j;
        }
      }
    }
  }
}

void xmlParseNotationDecl(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 60 || cur[1] != 33 || cur[2] != 78 || cur[3] != 79 || cur[4] != 84 || cur[5] != 65 || cur[6] != 84 || cur[7] != 73 || cur[8] != 79 || cur[9] != 78)
  {
    return;
  }

  id = input->id;
  input->cur = cur + 10;
  input->col += 10;
  if (!cur[10])
  {
    xmlParserInputGrow(input, 250);
  }

  if (!ctxt->progressive)
  {
    v5 = ctxt->input;
    v6 = v5->cur;
    if (v6 - v5->base >= 501 && v5->end - v6 <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  if (!xmlSkipBlankChars(ctxt))
  {
    v12 = "Space required after '<!NOTATION'\n";
LABEL_34:

    xmlFatalErrMsg(ctxt, 65, v12);
    return;
  }

  v7 = xmlParseName(ctxt);
  if (v7)
  {
    v8 = v7;
    if (xmlStrchr(v7, 0x3Au))
    {
      xmlNsErr(ctxt, 205, "colons are forbidden from notation names '%s'\n", v8, 0, 0);
    }

    if (xmlSkipBlankChars(ctxt))
    {
      publicID = 0;
      v9 = xmlParseExternalID(ctxt, &publicID, 0);
      xmlSkipBlankChars(ctxt);
      v10 = ctxt->input;
      if (*v10->cur == 62)
      {
        if (id != v10->id)
        {
          xmlFatalErrMsg(ctxt, 90, "Notation declaration doesn't start and stop in the same entity\n");
        }

        xmlNextChar(ctxt);
        if (ctxt->sax)
        {
          if (!ctxt->disableSAX)
          {
            notationDecl = ctxt->sax->notationDecl;
            if (notationDecl)
            {
              (notationDecl)(ctxt->userData, v8, publicID, v9);
            }
          }
        }
      }

      else
      {
        xmlFatalErr(ctxt, 49, 0);
      }

      if (v9)
      {
        free(v9);
      }

      v13 = publicID;
      if (publicID)
      {

        free(v13);
      }

      return;
    }

    v12 = "Space required after the NOTATION name'\n";
    goto LABEL_34;
  }

  xmlFatalErr(ctxt, 48, 0);
}

void xmlParseEntityDecl(xmlParserCtxtPtr ctxt)
{
  v36 = 0;
  publicID = 0;
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 60 || cur[1] != 33 || cur[2] != 69 || cur[3] != 78 || cur[4] != 84 || cur[5] != 73 || cur[6] != 84 || cur[7] != 89)
  {
    return;
  }

  id = input->id;
  input->cur = cur + 8;
  input->col += 8;
  if (!cur[8])
  {
    xmlParserInputGrow(input, 250);
  }

  if (!ctxt->progressive)
  {
    v5 = ctxt->input;
    v6 = v5->cur;
    if (v6 - v5->base >= 501 && v5->end - v6 <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  if (!xmlSkipBlankChars(ctxt))
  {
    xmlFatalErrMsg(ctxt, 65, "Space required after '<!ENTITY'\n");
  }

  v7 = *ctxt->input->cur;
  if (v7 == 37)
  {
    xmlNextChar(ctxt);
    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required after '%%'\n");
    }
  }

  v8 = xmlParseName(ctxt);
  if (v8)
  {
    v9 = v8;
    if (xmlStrchr(v8, 0x3Au))
    {
      xmlNsErr(ctxt, 205, "colons are forbidden from entities names '%s'\n", v9, 0, 0);
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required after the entity name\n");
    }

    ctxt->instate = XML_PARSER_ENTITY_DECL;
    v10 = *ctxt->input->cur;
    if (v7 == 37)
    {
      if (v10 == 39 || v10 == 34)
      {
        v11 = xmlParseEntityValue(ctxt, &v36);
        if (v11)
        {
          if (ctxt->sax)
          {
            if (!ctxt->disableSAX)
            {
              entityDecl = ctxt->sax->entityDecl;
              if (entityDecl)
              {
                (entityDecl)(ctxt->userData, v9, 4, 0, 0, v11);
              }
            }
          }
        }

        goto LABEL_50;
      }

      v18 = xmlParseExternalID(ctxt, &publicID, 1);
      v16 = publicID;
      if (!(v18 | publicID))
      {
        xmlFatalErr(ctxt, 84, 0);
        v16 = 0;
        v11 = 0;
        goto LABEL_51;
      }

      v17 = v18;
      if (v18)
      {
        v20 = xmlParseURI(v18);
        v11 = v20;
        if (!v20)
        {
          xmlErrMsgStr(ctxt, 91, "Invalid URI: %s\n", v17);
          goto LABEL_99;
        }

        if (v20->fragment)
        {
          xmlFatalErr(ctxt, 92, 0);
        }

        else if (ctxt->sax)
        {
          if (!ctxt->disableSAX)
          {
            v35 = ctxt->sax->entityDecl;
            if (v35)
            {
              (v35)(ctxt->userData, v9, 5, v16, v17, 0);
            }
          }
        }

        xmlFreeURI(v11);
      }

LABEL_98:
      v11 = 0;
      goto LABEL_99;
    }

    if (v10 == 39 || v10 == 34)
    {
      v11 = xmlParseEntityValue(ctxt, &v36);
      if (ctxt->sax)
      {
        if (!ctxt->disableSAX)
        {
          v13 = ctxt->sax->entityDecl;
          if (v13)
          {
            (v13)(ctxt->userData, v9, 1, 0, 0, v11);
          }
        }
      }

      myDoc = ctxt->myDoc;
      if (!myDoc)
      {
        goto LABEL_45;
      }

      if (!xmlStrEqual(myDoc->version, "SAX compatibility mode document"))
      {
LABEL_50:
        v16 = 0;
LABEL_51:
        v17 = 0;
LABEL_99:
        if (ctxt->instate == XML_PARSER_EOF)
        {
          goto LABEL_118;
        }

        xmlSkipBlankChars(ctxt);
        v30 = ctxt->input;
        if (*v30->cur == 62)
        {
          if (id != v30->id)
          {
            xmlFatalErrMsg(ctxt, 90, "Entity declaration doesn't start and stop in the same entity\n");
          }

          xmlNextChar(ctxt);
        }

        else
        {
          xmlFatalErrMsgStr(ctxt, 37, "xmlParseEntityDecl: entity %s not terminated\n", v9);
          xmlHaltParser(ctxt);
        }

        if (!v36)
        {
          goto LABEL_118;
        }

        sax = ctxt->sax;
        if (v7 == 37)
        {
          if (!sax)
          {
            goto LABEL_118;
          }

          getParameterEntity = sax->getParameterEntity;
          if (!getParameterEntity)
          {
            goto LABEL_118;
          }

          Entity = getParameterEntity(ctxt->userData, v9);
        }

        else
        {
          if (sax)
          {
            getEntity = sax->getEntity;
            if (getEntity)
            {
              Entity = getEntity(ctxt->userData, v9);
              if (Entity)
              {
LABEL_116:
                if (!Entity->orig)
                {
                  Entity->orig = v36;
                  v36 = 0;
                }

                goto LABEL_118;
              }
            }
          }

          if (ctxt->userData != ctxt)
          {
LABEL_118:
            if (v11)
            {
              free(v11);
            }

            if (v17)
            {
              free(v17);
            }

            if (v16)
            {
              free(v16);
            }

            if (v36)
            {
              free(v36);
            }

            return;
          }

          Entity = xmlSAX2GetEntity(ctxt, v9);
        }

        if (Entity)
        {
          goto LABEL_116;
        }

        goto LABEL_118;
      }

      v15 = ctxt->myDoc;
      if (!v15)
      {
LABEL_45:
        v15 = xmlNewDoc("SAX compatibility mode document");
        ctxt->myDoc = v15;
        if (!v15)
        {
          xmlErrMemory(ctxt, "New Doc failed");
          return;
        }

        v15->properties = v15->properties & 0x78000000 | 0x40;
      }

      if (!v15->intSubset)
      {
        ctxt->myDoc->intSubset = xmlNewDtd(v15, "fake", 0, 0);
      }

      xmlSAX2EntityDecl(ctxt, v9, 1, 0, 0, v11);
      goto LABEL_50;
    }

    v19 = xmlParseExternalID(ctxt, &publicID, 1);
    v17 = v19;
    v16 = publicID;
    if (v19 | publicID)
    {
      if (v19)
      {
        v21 = xmlParseURI(v19);
        if (v21)
        {
          v22 = v21;
          if (v21->fragment)
          {
            xmlFatalErr(ctxt, 92, 0);
          }

          xmlFreeURI(v22);
        }

        else
        {
          xmlErrMsgStr(ctxt, 91, "Invalid URI: %s\n", v17);
        }
      }
    }

    else
    {
      xmlFatalErr(ctxt, 84, 0);
    }

    if (*ctxt->input->cur != 62 && !xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required before 'NDATA'\n");
    }

    v23 = ctxt->input;
    v24 = v23->cur;
    if (*v24 == 78 && v24[1] == 68 && v24[2] == 65 && v24[3] == 84 && v24[4] == 65)
    {
      v23->cur = v24 + 5;
      v23->col += 5;
      if (!v24[5])
      {
        xmlParserInputGrow(v23, 250);
      }

      if (!xmlSkipBlankChars(ctxt))
      {
        xmlFatalErrMsg(ctxt, 65, "Space required after 'NDATA'\n");
      }

      v25 = xmlParseName(ctxt);
      if (ctxt->sax)
      {
        if (!ctxt->disableSAX)
        {
          unparsedEntityDecl = ctxt->sax->unparsedEntityDecl;
          if (unparsedEntityDecl)
          {
            (unparsedEntityDecl)(ctxt->userData, v9, v16, v17, v25);
          }
        }
      }

      goto LABEL_98;
    }

    if (ctxt->sax)
    {
      if (!ctxt->disableSAX)
      {
        v27 = ctxt->sax->entityDecl;
        if (v27)
        {
          (v27)(ctxt->userData, v9, 2, v16, v17, 0);
        }
      }
    }

    if (!ctxt->replaceEntities)
    {
      goto LABEL_98;
    }

    v28 = ctxt->myDoc;
    if (v28)
    {
      if (!xmlStrEqual(v28->version, "SAX compatibility mode document"))
      {
        goto LABEL_98;
      }

      v29 = ctxt->myDoc;
      if (v29)
      {
LABEL_95:
        if (!v29->intSubset)
        {
          ctxt->myDoc->intSubset = xmlNewDtd(v29, "fake", 0, 0);
        }

        xmlSAX2EntityDecl(ctxt, v9, 2, v16, v17, 0);
        goto LABEL_98;
      }
    }

    v29 = xmlNewDoc("SAX compatibility mode document");
    ctxt->myDoc = v29;
    if (v29)
    {
      v29->properties = v29->properties & 0x78000000 | 0x40;
      goto LABEL_95;
    }

    xmlErrMemory(ctxt, "New Doc failed");
  }

  else
  {

    xmlFatalErrMsg(ctxt, 68, "xmlParseEntityDecl: no name\n");
  }
}

_DWORD *xmlErrMsgStr(_DWORD *result, int a2, const char *a3, const xmlChar *a4)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 2, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    return __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 2, 0, 0, a4, 0, 0, 0, 0, a3, a4);
  }

  return result;
}

int xmlParseDefaultDecl(xmlParserCtxtPtr ctxt, xmlChar **value)
{
  *value = 0;
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 35)
  {
    v7 = 1;
    goto LABEL_36;
  }

  v6 = cur[1];
  if (v6 == 70)
  {
    if (cur[2] == 73 && cur[3] == 88 && cur[4] == 69 && cur[5] == 68)
    {
      input->cur = cur + 6;
      input->col += 6;
      if (!cur[6])
      {
        xmlParserInputGrow(input, 250);
      }

      if (!xmlSkipBlankChars(ctxt))
      {
        xmlFatalErrMsg(ctxt, 65, "Space required after '#FIXED'\n");
      }

      v7 = 4;
LABEL_35:
      if (!ctxt->input)
      {
        ctxt->instate = XML_PARSER_DTD;
        goto LABEL_39;
      }

LABEL_36:
      v8 = xmlParseAttValueInternal(ctxt, 0, 0, 0);
      ctxt->instate = XML_PARSER_DTD;
      if (v8)
      {
        *value = v8;
        return v7;
      }

LABEL_39:
      xmlFatalErrMsg(ctxt, ctxt->errNo, "Attribute default value declaration error\n");
      return v7;
    }

    goto LABEL_34;
  }

  if (v6 != 73)
  {
    if (v6 == 82 && cur[2] == 69 && cur[3] == 81 && cur[4] == 85 && cur[5] == 73 && cur[6] == 82 && cur[7] == 69 && cur[8] == 68)
    {
      input->cur = cur + 9;
      input->col += 9;
      if (!cur[9])
      {
        xmlParserInputGrow(input, 250);
      }

      return 2;
    }

    goto LABEL_34;
  }

  if (cur[2] != 77 || cur[3] != 80 || cur[4] != 76 || cur[5] != 73 || cur[6] != 69 || cur[7] != 68)
  {
LABEL_34:
    v7 = 1;
    goto LABEL_35;
  }

  input->cur = cur + 8;
  input->col += 8;
  if (!cur[8])
  {
    xmlParserInputGrow(input, 250);
  }

  return 3;
}

xmlEnumerationPtr xmlParseNotationType(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur == 40)
  {
    if (!ctxt->progressive && cur - input->base >= 501 && input->end - cur <= 499)
    {
      xmlSHRINK(ctxt);
    }

    v4 = 0;
    p_next = 0;
    do
    {
      xmlNextChar(ctxt);
      xmlSkipBlankChars(ctxt);
      v6 = xmlParseName(ctxt);
      if (!v6)
      {
        xmlFatalErrMsg(ctxt, 68, "Name expected in NOTATION declaration\n");
        goto LABEL_24;
      }

      v7 = v6;
      v8 = v4;
      if (v4)
      {
        while (!xmlStrEqual(v7, v8->name))
        {
          v8 = v8->next;
          if (!v8)
          {
            goto LABEL_11;
          }
        }

        xmlValidityError(ctxt, 541, "standalone: attribute notation value token %s duplicated\n", v7, 0);
        if (!xmlDictOwns(ctxt->dict, v7))
        {
          free(v7);
        }
      }

      else
      {
LABEL_11:
        Enumeration = xmlCreateEnumeration(v7);
        if (!Enumeration)
        {
          goto LABEL_24;
        }

        if (p_next)
        {
          *p_next = Enumeration;
        }

        else
        {
          v4 = Enumeration;
        }

        p_next = &Enumeration->next;
      }

      xmlSkipBlankChars(ctxt);
      v10 = *ctxt->input->cur;
    }

    while (v10 == 124);
    if (v10 == 41)
    {
      xmlNextChar(ctxt);
      return v4;
    }

    xmlFatalErr(ctxt, 49, 0);
LABEL_24:
    xmlFreeEnumeration(v4);
  }

  else
  {
    xmlFatalErr(ctxt, 48, 0);
  }

  return 0;
}

_DWORD *xmlValidityError(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 4u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  v5 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    v6 = *result;
    if (*result && *(v6 + 216) == -554844497)
    {
      v7 = *(v6 + 248);
    }

    else
    {
      v7 = 0;
    }

    result = __xmlRaiseError(v7, *(v5 + 168), *(v5 + 160), v5, 0, 4u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
    *(v5 + 152) = 0;
  }

  return result;
}

xmlEnumerationPtr xmlParseEnumerationType(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur == 40)
  {
    if (!ctxt->progressive && cur - input->base >= 501 && input->end - cur <= 499)
    {
      xmlSHRINK(ctxt);
    }

    v4 = 0;
    p_next = 0;
    while (1)
    {
      xmlNextChar(ctxt);
      xmlSkipBlankChars(ctxt);
      v6 = xmlParseNmtoken(ctxt);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      v8 = v4;
      if (v4)
      {
        while (!xmlStrEqual(v7, v8->name))
        {
          v8 = v8->next;
          if (!v8)
          {
            goto LABEL_11;
          }
        }

        xmlValidityError(ctxt, 541, "standalone: attribute enumeration value token %s duplicated\n", v7, 0);
        if (!xmlDictOwns(ctxt->dict, v7))
        {
          free(v7);
        }
      }

      else
      {
LABEL_11:
        Enumeration = xmlCreateEnumeration(v7);
        if (!xmlDictOwns(ctxt->dict, v7))
        {
          free(v7);
        }

        if (!Enumeration)
        {
          xmlFreeEnumeration(v4);
          return 0;
        }

        if (p_next)
        {
          *p_next = Enumeration;
        }

        else
        {
          v4 = Enumeration;
        }

        p_next = &Enumeration->next;
      }

      xmlSkipBlankChars(ctxt);
      v10 = *ctxt->input->cur;
      if (v10 != 124)
      {
        v11 = ctxt;
        if (v10 == 41)
        {
          xmlNextChar(ctxt);
          return v4;
        }

        v12 = 51;
        goto LABEL_27;
      }
    }

    v11 = ctxt;
    v12 = 67;
LABEL_27:
    xmlFatalErr(v11, v12, 0);
    return v4;
  }

  xmlFatalErr(ctxt, 50, 0);
  return 0;
}

int xmlParseEnumeratedType(xmlParserCtxtPtr ctxt, xmlEnumerationPtr *tree)
{
  input = ctxt->input;
  cur = input->cur;
  if (__PAIR64__(cur[1], *cur) == 0x4F0000004ELL && cur[2] == 84 && cur[3] == 65 && cur[4] == 84 && cur[5] == 73 && cur[6] == 79 && cur[7] == 78)
  {
    input->cur = cur + 8;
    input->col += 8;
    if (!cur[8])
    {
      xmlParserInputGrow(input, 250);
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required after 'NOTATION'\n");
      return 0;
    }

    v6 = xmlParseNotationType(ctxt);
    *tree = v6;
    v7 = v6 == 0;
    v8 = 10;
  }

  else
  {
    v9 = xmlParseEnumerationType(ctxt);
    *tree = v9;
    v7 = v9 == 0;
    v8 = 9;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

int xmlParseAttributeType(xmlParserCtxtPtr ctxt, xmlEnumerationPtr *tree)
{
  input = ctxt->input;
  cur = input->cur;
  v5 = *cur;
  if (v5 > 0x48)
  {
    if (v5 == 73)
    {
      if (cur[1] != 68)
      {
        goto LABEL_56;
      }

      v7 = cur + 2;
      if (cur[2] == 82 && cur[3] == 69 && cur[4] == 70 && cur[5] == 83)
      {
        input->cur = cur + 6;
        input->col += 6;
        if (!cur[6])
        {
          xmlParserInputGrow(input, 250);
        }

        v6 = 4;
      }

      else if (*v7 == 82 && cur[3] == 69 && cur[4] == 70)
      {
        input->cur = cur + 5;
        input->col += 5;
        if (!cur[5])
        {
          xmlParserInputGrow(input, 250);
        }

        v6 = 3;
      }

      else
      {
        input->cur = v7;
        input->col += 2;
        if (!*v7)
        {
          xmlParserInputGrow(input, 250);
        }

        v6 = 2;
      }
    }

    else
    {
      if (v5 != 78 || cur[1] != 77)
      {
        goto LABEL_56;
      }

      if (cur[2] == 84 && cur[3] == 79 && cur[4] == 75 && cur[5] == 69 && cur[6] == 78 && cur[7] == 83)
      {
        input->cur = cur + 8;
        input->col += 8;
        if (!cur[8])
        {
          xmlParserInputGrow(input, 250);
        }

        v6 = 8;
      }

      else
      {
        if (cur[2] != 84 || cur[3] != 79 || cur[4] != 75 || cur[5] != 69 || cur[6] != 78)
        {
          goto LABEL_56;
        }

        input->cur = cur + 7;
        input->col += 7;
        if (!cur[7])
        {
          xmlParserInputGrow(input, 250);
        }

        v6 = 7;
      }
    }
  }

  else
  {
    if (v5 != 67)
    {
      if (v5 == 69 && cur[1] == 78)
      {
        if (cur[2] == 84 && cur[3] == 73 && cur[4] == 84 && cur[5] == 89)
        {
          input->cur = cur + 6;
          input->col += 6;
          if (!cur[6])
          {
            xmlParserInputGrow(input, 250);
          }

          v6 = 5;
          goto LABEL_57;
        }

        if (cur[2] == 84 && cur[3] == 73 && cur[4] == 84 && cur[5] == 73 && cur[6] == 69 && cur[7] == 83)
        {
          input->cur = cur + 8;
          input->col += 8;
          if (!cur[8])
          {
            xmlParserInputGrow(input, 250);
          }

          v6 = 6;
          goto LABEL_57;
        }
      }

LABEL_56:
      v6 = xmlParseEnumeratedType(ctxt, tree);
      goto LABEL_57;
    }

    if (cur[1] != 68 || cur[2] != 65 || cur[3] != 84 || cur[4] != 65)
    {
      goto LABEL_56;
    }

    input->cur = cur + 5;
    input->col += 5;
    if (!cur[5])
    {
      xmlParserInputGrow(input, 250);
    }

    v6 = 1;
  }

LABEL_57:
  if (!ctxt->progressive)
  {
    v8 = ctxt->input;
    v9 = v8->cur;
    if (v9 - v8->base >= 501 && v8->end - v9 <= 499)
    {
      xmlSHRINK(ctxt);
    }
  }

  return v6;
}

void xmlParseAttributeListDecl(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur == 60 && cur[1] == 33 && cur[2] == 65 && cur[3] == 84 && cur[4] == 84 && cur[5] == 76 && cur[6] == 73 && cur[7] == 83 && cur[8] == 84)
  {
    id = input->id;
    input->cur = cur + 9;
    input->col += 9;
    if (!cur[9])
    {
      xmlParserInputGrow(input, 250);
    }

    if (!xmlSkipBlankChars(ctxt))
    {
      xmlFatalErrMsg(ctxt, 65, "Space required after '<!ATTLIST'\n");
    }

    v5 = xmlParseName(ctxt);
    if (v5)
    {
      v6 = v5;
      xmlSkipBlankChars(ctxt);
      while (1)
      {
        v7 = ctxt->input;
        if (!ctxt->progressive && v7->end - v7->cur <= 249)
        {
          xmlGROW(ctxt);
          v7 = ctxt->input;
        }

        v8 = v7->cur;
        if (*v8 == 62 || ctxt->instate == XML_PARSER_EOF)
        {
          break;
        }

        v21 = 0;
        if (!ctxt->progressive && v7->end - v8 <= 249)
        {
          xmlGROW(ctxt);
        }

        tree = 0;
        v9 = xmlParseName(ctxt);
        if (!v9)
        {
          v18 = "ATTLIST: no name for Attribute\n";
          v19 = ctxt;
          v20 = 68;
LABEL_61:
          xmlFatalErrMsg(v19, v20, v18);
          goto LABEL_67;
        }

        v10 = v9;
        if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
        }

        if (!xmlSkipBlankChars(ctxt))
        {
          v18 = "Space required after the attribute name\n";
          v19 = ctxt;
          v20 = 65;
          goto LABEL_61;
        }

        v11 = xmlParseAttributeType(ctxt, &tree);
        if (v11 < 1)
        {
          goto LABEL_67;
        }

        v12 = v11;
        if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
        }

        if (!xmlSkipBlankChars(ctxt))
        {
          xmlFatalErrMsg(ctxt, 65, "Space required after the attribute type\n");
          goto LABEL_65;
        }

        v13 = xmlParseDefaultDecl(ctxt, &v21);
        v14 = v21;
        if (v12 != 1 && v21)
        {
          xmlAttrNormalizeSpace(v21, v21);
        }

        v15 = ctxt->input;
        if (!ctxt->progressive && v15->end - v15->cur <= 249)
        {
          xmlGROW(ctxt);
          v15 = ctxt->input;
        }

        if (*v15->cur != 62 && !xmlSkipBlankChars(ctxt))
        {
          xmlFatalErrMsg(ctxt, 65, "Space required after the attribute default value\n");
          if (v14)
          {
            free(v14);
          }

LABEL_65:
          if (tree)
          {
            xmlFreeEnumeration(tree);
          }

LABEL_67:
          v7 = ctxt->input;
          break;
        }

        if (ctxt->sax && !ctxt->disableSAX && (attributeDecl = ctxt->sax->attributeDecl) != 0)
        {
          (attributeDecl)(ctxt->userData, v6, v10, v12, v13, v14, tree);
        }

        else if (tree)
        {
          xmlFreeEnumeration(tree);
        }

        sax2 = ctxt->sax2;
        if (sax2 && v14 && (v13 - 4) <= 0xFFFFFFFD)
        {
          xmlAddDefAttrs(ctxt, v6, v10, v14);
          sax2 = ctxt->sax2;
        }

        if (sax2)
        {
          xmlAddSpecialAttr(ctxt, v6, v10, v12);
        }

        if (v14)
        {
          free(v14);
        }
      }

      if (*v7->cur == 62)
      {
        if (id != v7->id)
        {
          xmlFatalErrMsg(ctxt, 90, "Attribute list declaration doesn't start and stop in the same entity\n");
        }

        xmlNextChar(ctxt);
      }
    }

    else
    {

      xmlFatalErrMsg(ctxt, 68, "ATTLIST: no name for Element\n");
    }
  }
}

uint64_t xmlAttrNormalizeSpace(uint64_t result, _BYTE *a2)
{
  v2 = (result - 1);
  do
  {
    v4 = *++v2;
    v3 = v4;
  }

  while (v4 == 32);
  while (v3 == 32)
  {
    while (v3 == 32)
    {
      v5 = *++v2;
      v3 = v5;
    }

    if (v3)
    {
      LOBYTE(v3) = 32;
      goto LABEL_9;
    }

LABEL_10:
    v3 = *v2;
  }

  if (v3)
  {
    ++v2;
LABEL_9:
    *a2++ = v3;
    goto LABEL_10;
  }

  *a2 = 0;
  return result;
}

_DWORD *xmlAddDefAttrs(uint64_t a1, xmlChar *name, xmlChar *name2, const xmlChar *a4)
{
  v8 = *(a1 + 552);
  if (v8)
  {
    result = xmlHashLookup2(v8, name, name2);
    if (result)
    {
      return result;
    }
  }

  len = 0;
  if (!*(a1 + 544))
  {
    Dict = xmlHashCreateDict(10, *(a1 + 456));
    *(a1 + 544) = Dict;
    if (!Dict)
    {
      return xmlErrMemory(a1, 0);
    }
  }

  v11 = xmlSplitQName3(name, &len);
  v12 = *(a1 + 456);
  if (v11)
  {
    v13 = xmlDictLookup(v12, v11, -1);
    v14 = xmlDictLookup(*(a1 + 456), name, len);
  }

  else
  {
    v13 = xmlDictLookup(v12, name, -1);
    v14 = 0;
  }

  v15 = xmlHashLookup2(*(a1 + 544), v13, v14);
  if (!v15)
  {
    v20 = malloc_type_malloc(0xA8uLL, 0x100004000313F17uLL);
    if (!v20)
    {
      return xmlErrMemory(a1, 0);
    }

    v16 = v20;
    *v20 = 0x400000000;
    goto LABEL_18;
  }

  v16 = v15;
  v17 = v15[1];
  if (*v15 >= v17)
  {
    if (v17 > 0x5F5E0FF)
    {
      return xmlErrMemory(a1, 0);
    }

    v18 = v17 > 0x2FAF080 ? 100000000 : 2 * v17;
    v19 = malloc_type_realloc(v15, (8 * (5 * v18)) | 8, 0x100004000313F17uLL);
    if (!v19)
    {
      return xmlErrMemory(a1, 0);
    }

    v16 = v19;
    v19[1] = v18;
LABEL_18:
    if ((xmlHashUpdateEntry2(*(a1 + 544), v13, v14, v16, 0) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    free(v16);
    return xmlErrMemory(a1, 0);
  }

LABEL_19:
  v21 = xmlSplitQName3(name2, &len);
  v22 = *(a1 + 456);
  if (v21)
  {
    v23 = xmlDictLookup(v22, v21, -1);
    v24 = xmlDictLookup(*(a1 + 456), name2, len);
  }

  else
  {
    v23 = xmlDictLookup(v22, name2, -1);
    v24 = 0;
  }

  v25 = 5 * *v16;
  *&v16[10 * *v16 + 2] = v23;
  *&v16[2 * v25 + 4] = v24;
  len = xmlStrlen(a4);
  result = xmlDictLookup(*(a1 + 456), a4, len);
  v26 = *v16;
  v27 = &v16[10 * *v16 + 2];
  v28 = result + len;
  *(v27 + 2) = result;
  *(v27 + 3) = v28;
  v29 = "external";
  if (!*(a1 + 148))
  {
    v29 = 0;
  }

  *(v27 + 4) = v29;
  *v16 = v26 + 1;
  return result;
}

_DWORD *xmlAddSpecialAttr(uint64_t a1, xmlChar *name, xmlChar *name2, unsigned int a4)
{
  Dict = *(a1 + 552);
  if (Dict || (Dict = xmlHashCreateDict(10, *(a1 + 456)), (*(a1 + 552) = Dict) != 0))
  {
    result = xmlHashLookup2(Dict, name, name2);
    if (!result)
    {
      v10 = *(a1 + 552);

      return xmlHashAddEntry2(v10, name, name2, a4);
    }
  }

  else
  {

    return xmlErrMemory(a1, 0);
  }

  return result;
}

xmlElementContentPtr xmlParseElementMixedContentDecl(xmlParserCtxtPtr ctxt, int inputchk)
{
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  input = ctxt->input;
  cur = input->cur;
  if (*cur == 35 && cur[1] == 80 && cur[2] == 67 && cur[3] == 68 && cur[4] == 65 && cur[5] == 84 && cur[6] == 65)
  {
    input->cur = cur + 7;
    input->col += 7;
    if (!cur[7])
    {
      xmlParserInputGrow(input, 250);
    }

    xmlSkipBlankChars(ctxt);
    v6 = ctxt->input;
    if (!ctxt->progressive)
    {
      v7 = v6->cur;
      if (v7 - v6->base >= 501 && v6->end - v7 <= 499)
      {
        xmlSHRINK(ctxt);
        v6 = ctxt->input;
      }
    }

    v8 = *v6->cur;
    if (v8 == 40 || v8 == 124)
    {
      v10 = xmlNewDocElementContent(ctxt->myDoc, 0, XML_ELEMENT_CONTENT_PCDATA);
      if (!v10)
      {
        return v10;
      }
    }

    else
    {
      if (v8 == 41)
      {
        if (v6->id != inputchk)
        {
          xmlFatalErrMsg(ctxt, 90, "Element content declaration doesn't start and stop in the same entity\n");
        }

        xmlNextChar(ctxt);
        v9 = xmlNewDocElementContent(ctxt->myDoc, 0, XML_ELEMENT_CONTENT_PCDATA);
        v10 = v9;
        if (v9 && *ctxt->input->cur == 42)
        {
          v9->ocur = XML_ELEMENT_CONTENT_MULT;
          xmlNextChar(ctxt);
        }

        return v10;
      }

      v10 = 0;
    }

    v14 = 0;
    v15 = v10;
    while (1)
    {
      v16 = ctxt->input->cur;
      v17 = *v16;
      if (v17 != 124)
      {
        if (v17 != 41 || v16[1] != 42)
        {
LABEL_58:
          xmlFreeDocElementContent(ctxt->myDoc, v10);
          v11 = ctxt;
          v12 = 52;
          goto LABEL_26;
        }

        if (v14)
        {
          v25 = xmlNewDocElementContent(ctxt->myDoc, v14, XML_ELEMENT_CONTENT_ELEMENT);
          v15->c2 = v25;
          if (v25)
          {
            v25->parent = v15;
          }
        }

        if (v10)
        {
          v10->ocur = XML_ELEMENT_CONTENT_MULT;
        }

        v26 = ctxt->input;
        if (v26->id != inputchk)
        {
          xmlFatalErrMsg(ctxt, 90, "Element content declaration doesn't start and stop in the same entity\n");
          v26 = ctxt->input;
        }

        v27 = v26->cur;
        v26->cur = v27 + 2;
        v26->col += 2;
        if (!v27[2])
        {
          xmlParserInputGrow(v26, 250);
        }

        return v10;
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_58;
      }

      xmlNextChar(ctxt);
      v18 = xmlNewDocElementContent(ctxt->myDoc, 0, XML_ELEMENT_CONTENT_OR);
      v19 = v18;
      if (v14)
      {
        break;
      }

      if (!v18)
      {
        myDoc = ctxt->myDoc;
        v28 = v15;
        goto LABEL_61;
      }

      v18->c1 = v15;
      v22 = v15;
      v23 = v18;
      v10 = v18;
      if (v15)
      {
        goto LABEL_42;
      }

LABEL_43:
      xmlSkipBlankChars(ctxt);
      v24 = xmlParseName(ctxt);
      if (!v24)
      {
        xmlFatalErrMsg(ctxt, 68, "xmlParseElementMixedContentDecl : Name expected\n");
        myDoc = ctxt->myDoc;
LABEL_60:
        v28 = v10;
LABEL_61:
        xmlFreeDocElementContent(myDoc, v28);
        return 0;
      }

      v14 = v24;
      xmlSkipBlankChars(ctxt);
      v15 = v19;
      if (!ctxt->progressive)
      {
        v15 = v19;
        if (ctxt->input->end - ctxt->input->cur <= 249)
        {
          xmlGROW(ctxt);
          v15 = v19;
        }
      }
    }

    myDoc = ctxt->myDoc;
    if (!v19)
    {
      goto LABEL_60;
    }

    v21 = xmlNewDocElementContent(myDoc, v14, XML_ELEMENT_CONTENT_ELEMENT);
    v19->c1 = v21;
    if (v21)
    {
      v21->parent = v19;
    }

    v15->c2 = v19;
    v22 = v19;
    v23 = v15;
LABEL_42:
    v22->parent = v23;
    goto LABEL_43;
  }

  v11 = ctxt;
  v12 = 69;
LABEL_26:
  xmlFatalErr(v11, v12, 0);
  return 0;
}

xmlElementContentPtr xmlParseElementChildrenContentDeclPriv(uint64_t a1, int a2, int a3)
{
  if (a3 >= 129 && (a3 > 0x800 || (*(a1 + 564) & 0x80000) == 0))
  {
    xmlFatalErrMsgInt(a1, 55, "xmlParseElementChildrenContentDecl : depth %d too deep, use XML_PARSE_HUGE\n", a3);
    return 0;
  }

  xmlSkipBlankChars(a1);
  if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
  {
    xmlGROW(a1);
  }

  v6 = *(a1 + 56);
  if (**(v6 + 32) != 40)
  {
    v9 = xmlParseName(a1);
    if (!v9)
    {
      xmlFatalErr(a1, 54, 0);
      return 0;
    }

    v8 = xmlNewDocElementContent(*(a1 + 16), v9, XML_ELEMENT_CONTENT_ELEMENT);
    if (!v8)
    {
      xmlErrMemory(a1, 0);
      return v8;
    }

    v10 = *(a1 + 56);
    if (!*(a1 + 452) && (*(v10 + 40) - *(v10 + 32)) <= 249)
    {
      xmlGROW(a1);
      v10 = *(a1 + 56);
    }

    v11 = **(v10 + 32);
    switch(v11)
    {
      case '*':
        v12 = 3;
        break;
      case '+':
        v12 = 4;
        break;
      case '?':
        v12 = 2;
        break;
      default:
        v8->ocur = XML_ELEMENT_CONTENT_ONCE;
        goto LABEL_28;
    }

    v8->ocur = v12;
    xmlNextChar(a1);
LABEL_28:
    if (*(a1 + 452) || (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) > 249)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v7 = *(v6 + 100);
  xmlNextChar(a1);
  xmlSkipBlankChars(a1);
  v8 = xmlParseElementChildrenContentDeclPriv(a1, v7, (a3 + 1));
  if (!v8)
  {
    return v8;
  }

  xmlSkipBlankChars(a1);
  if (*(a1 + 452) || (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) >= 250)
  {
    goto LABEL_31;
  }

LABEL_30:
  xmlGROW(a1);
LABEL_31:
  xmlSkipBlankChars(a1);
  v13 = *(a1 + 56);
  if (!*(a1 + 452))
  {
    v14 = *(v13 + 32);
    if (v14 - *(v13 + 24) >= 501 && *(v13 + 40) - v14 <= 499)
    {
      xmlSHRINK(a1);
      v13 = *(a1 + 56);
    }
  }

  v15 = **(v13 + 32);
  if (v15 == 41)
  {
    v16 = v8;
    goto LABEL_80;
  }

  if (*(a1 + 272) == -1)
  {
    v17 = 0;
    v16 = v8;
LABEL_78:
    if (v17)
    {
LABEL_79:
      v16->c2 = v17;
      v17->parent = v16;
    }

LABEL_80:
    if (*(v13 + 100) != a2)
    {
      xmlFatalErrMsg(a1, 90, "Element content declaration doesn't start and stop in the same entity\n");
    }

    xmlNextChar(a1);
    v29 = **(*(a1 + 56) + 32);
    switch(v29)
    {
      case '*':
        v8->ocur = XML_ELEMENT_CONTENT_MULT;
        if (v8->type == XML_ELEMENT_CONTENT_OR)
        {
          v34 = v8;
          do
          {
            c1 = v34->c1;
            if (c1 && (c1->ocur & 0xFFFFFFFE) == 2)
            {
              c1->ocur = XML_ELEMENT_CONTENT_ONCE;
            }

            v34 = v34->c2;
            if (!v34)
            {
              break;
            }

            if ((v34->ocur & 0xFFFFFFFE) == 2)
            {
              v34->ocur = XML_ELEMENT_CONTENT_ONCE;
            }
          }

          while (v34->type == XML_ELEMENT_CONTENT_OR);
        }

        goto LABEL_112;
      case '+':
        if ((v8->ocur & 0xFFFFFFFE) == 2)
        {
          v31 = 3;
        }

        else
        {
          v31 = 4;
        }

        v8->ocur = v31;
        if (v16->type != XML_ELEMENT_CONTENT_OR)
        {
          goto LABEL_112;
        }

        v32 = 0;
        do
        {
          v33 = v16->c1;
          if (v33 && (v33->ocur & 0xFFFFFFFE) == 2)
          {
            v32 = 1;
            v33->ocur = XML_ELEMENT_CONTENT_ONCE;
          }

          v16 = v16->c2;
          if (!v16)
          {
            break;
          }

          if ((v16->ocur & 0xFFFFFFFE) == 2)
          {
            v32 = 1;
            v16->ocur = XML_ELEMENT_CONTENT_ONCE;
          }
        }

        while (v16->type == XML_ELEMENT_CONTENT_OR);
        if (!v32)
        {
          goto LABEL_112;
        }

        v30 = 3;
        break;
      case '?':
        if (v8->ocur - 3 >= 2)
        {
          v30 = 2;
        }

        else
        {
          v30 = 3;
        }

        break;
      default:
        return v8;
    }

    v8->ocur = v30;
LABEL_112:
    xmlNextChar(a1);
    return v8;
  }

  v17 = 0;
  v18 = 0;
  v16 = v8;
  v19 = v8;
  while (1)
  {
    if (v15 == 124)
    {
      if (v18 && v18 != 124)
      {
LABEL_114:
        xmlFatalErrMsgInt(a1, 66, "xmlParseElementChildrenContentDecl : '%c' expected\n", v18);
        goto LABEL_115;
      }

      xmlNextChar(a1);
      v20 = xmlNewDocElementContent(*(a1 + 16), 0, XML_ELEMENT_CONTENT_OR);
      if (!v20)
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (v15 != 44)
      {
        xmlFatalErr(a1, 55, 0);
LABEL_115:
        if (v17 && v17 != v19)
        {
          xmlFreeDocElementContent(*(a1 + 16), v17);
        }

        goto LABEL_122;
      }

      if (v18 && v18 != 44)
      {
        goto LABEL_114;
      }

      xmlNextChar(a1);
      v20 = xmlNewDocElementContent(*(a1 + 16), 0, XML_ELEMENT_CONTENT_SEQ);
      if (!v20)
      {
        if (v17 && v17 != v19)
        {
          xmlFreeDocElementContent(*(a1 + 16), v17);
        }

LABEL_122:
        v36 = *(a1 + 16);
        v37 = v19;
        goto LABEL_125;
      }
    }

    v21 = v20;
    if (v17)
    {
      v16->c2 = v20;
      v20->parent = v16;
      v20 = v19;
      v21->c1 = v17;
    }

    else
    {
      v20->c1 = v19;
      v17 = v19;
    }

    v17->parent = v21;
    v16 = v21;
    v8 = v20;
    if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
    {
      xmlGROW(a1);
    }

    xmlSkipBlankChars(a1);
    v22 = *(a1 + 56);
    if (!*(a1 + 452) && (*(v22 + 40) - *(v22 + 32)) <= 249)
    {
      xmlGROW(a1);
      v22 = *(a1 + 56);
    }

    if (**(v22 + 32) == 40)
    {
      v23 = *(v22 + 100);
      xmlNextChar(a1);
      xmlSkipBlankChars(a1);
      v24 = xmlParseElementChildrenContentDeclPriv(a1, v23, (a3 + 1));
      if (!v24)
      {
        goto LABEL_124;
      }

      v17 = v24;
      xmlSkipBlankChars(a1);
      goto LABEL_71;
    }

    v25 = xmlParseName(a1);
    if (!v25)
    {
      break;
    }

    v26 = xmlNewDocElementContent(*(a1 + 16), v25, XML_ELEMENT_CONTENT_ELEMENT);
    if (!v26)
    {
      goto LABEL_124;
    }

    v17 = v26;
    v27 = **(*(a1 + 56) + 32);
    if (v27 == 42)
    {
      v26->ocur = XML_ELEMENT_CONTENT_MULT;
    }

    else
    {
      if (v27 == 43)
      {
        v28 = 4;
      }

      else
      {
        if (v27 != 63)
        {
          v26->ocur = XML_ELEMENT_CONTENT_ONCE;
          goto LABEL_71;
        }

        v28 = 2;
      }

      v26->ocur = v28;
    }

    xmlNextChar(a1);
LABEL_71:
    xmlSkipBlankChars(a1);
    v13 = *(a1 + 56);
    if (!*(a1 + 452) && (*(v13 + 40) - *(v13 + 32)) <= 249)
    {
      xmlGROW(a1);
      v13 = *(a1 + 56);
    }

    if (**(v13 + 32) == 41)
    {
      goto LABEL_79;
    }

    v18 = v15;
    v19 = v8;
    v15 = **(v13 + 32);
    if (*(a1 + 272) == -1)
    {
      goto LABEL_78;
    }
  }

  xmlFatalErr(a1, 54, 0);
LABEL_124:
  v36 = *(a1 + 16);
  v37 = v8;
LABEL_125:
  xmlFreeDocElementContent(v36, v37);
  return 0;
}

int xmlParseElementContentDecl(xmlParserCtxtPtr ctxt, const xmlChar *name, xmlElementContentPtr *result)
{
  id = ctxt->input->id;
  *result = 0;
  if (*ctxt->input->cur != 40)
  {
    xmlFatalErrMsgStr(ctxt, 54, "xmlParseElementContentDecl : %s '(' expected\n", name);
    return -1;
  }

  xmlNextChar(ctxt);
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  xmlSkipBlankChars(ctxt);
  cur = ctxt->input->cur;
  if (*cur == 35 && cur[1] == 80 && cur[2] == 67 && cur[3] == 68 && cur[4] == 65 && cur[5] == 84 && cur[6] == 65)
  {
    v7 = xmlParseElementMixedContentDecl(ctxt, id);
    v8 = 3;
  }

  else
  {
    v7 = xmlParseElementChildrenContentDeclPriv(ctxt, id, 1);
    v8 = 4;
  }

  xmlSkipBlankChars(ctxt);
  *result = v7;
  return v8;
}

int xmlParseElementDecl(xmlParserCtxtPtr ctxt)
{
  result = 0;
  input = ctxt->input;
  cur = input->cur;
  if (*cur != 60 || cur[1] != 33 || cur[2] != 69 || cur[3] != 76 || cur[4] != 69 || cur[5] != 77 || cur[6] != 69 || cur[7] != 78 || cur[8] != 84)
  {
    goto LABEL_50;
  }

  id = input->id;
  input->cur = cur + 9;
  input->col += 9;
  if (!cur[9])
  {
    xmlParserInputGrow(input, 250);
  }

  if (!xmlSkipBlankChars(ctxt))
  {
    v16 = "Space required after 'ELEMENT'\n";
    v17 = ctxt;
    v18 = 65;
LABEL_49:
    xmlFatalErrMsg(v17, v18, v16);
LABEL_50:
    LODWORD(v10) = -1;
    return v10;
  }

  v5 = xmlParseName(ctxt);
  if (!v5)
  {
    v16 = "xmlParseElementDecl: no name for Element\n";
    v17 = ctxt;
    v18 = 68;
    goto LABEL_49;
  }

  v6 = v5;
  if (!xmlSkipBlankChars(ctxt))
  {
    xmlFatalErrMsg(ctxt, 65, "Space required after the element name\n");
  }

  v7 = ctxt->input;
  v8 = v7->cur;
  v9 = *v8;
  if (v9 <= 0x40)
  {
    if (v9 != 37)
    {
      if (v9 == 40)
      {
        v20 = v6;
        v10 = xmlParseElementContentDecl(ctxt, v6, &result);
        goto LABEL_20;
      }

      goto LABEL_48;
    }

    if (!ctxt->external && ctxt->inputNr == 1)
    {
      v16 = "PEReference: forbidden within markup decl in internal subset\n";
      v17 = ctxt;
      v18 = 21;
      goto LABEL_49;
    }

LABEL_48:
    v16 = "xmlParseElementDecl: 'EMPTY', 'ANY' or '(' expected\n";
    v17 = ctxt;
    v18 = 54;
    goto LABEL_49;
  }

  if (v9 == 65)
  {
    if (v8[1] != 78 || v8[2] != 89)
    {
      goto LABEL_48;
    }

    v20 = v6;
    v7->cur = v8 + 3;
    v7->col += 3;
    if (!v8[3])
    {
      xmlParserInputGrow(v7, 250);
    }

    v10 = 2;
  }

  else
  {
    if (v9 != 69 || v8[1] != 77 || v8[2] != 80 || v8[3] != 84 || v8[4] != 89)
    {
      goto LABEL_48;
    }

    v20 = v6;
    v7->cur = v8 + 5;
    v7->col += 5;
    if (!v8[5])
    {
      xmlParserInputGrow(v7, 250);
    }

    v10 = 1;
  }

LABEL_20:
  xmlSkipBlankChars(ctxt);
  v11 = ctxt->input;
  if (*v11->cur == 62)
  {
    if (id != v11->id)
    {
      xmlFatalErrMsg(ctxt, 90, "Element declaration doesn't start and stop in the same entity\n");
    }

    xmlNextChar(ctxt);
    if (ctxt->sax)
    {
      if (!ctxt->disableSAX)
      {
        elementDecl = ctxt->sax->elementDecl;
        if (elementDecl)
        {
          v13 = result;
          if (!result)
          {
            (elementDecl)(ctxt->userData, v20, v10, 0);
            return v10;
          }

          result->parent = 0;
          (elementDecl)(ctxt->userData, v20, v10, v13);
          if (!v13->parent)
          {
            myDoc = ctxt->myDoc;
            v15 = v13;
LABEL_55:
            xmlFreeDocElementContent(myDoc, v15);
            return v10;
          }

          return v10;
        }
      }
    }
  }

  else
  {
    xmlFatalErr(ctxt, 73, 0);
  }

  v15 = result;
  if (result)
  {
    myDoc = ctxt->myDoc;
    goto LABEL_55;
  }

  return v10;
}

void xmlParseMarkupDecl(xmlParserCtxtPtr ctxt)
{
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  cur = ctxt->input->cur;
  if (*cur == 60)
  {
    v3 = cur[1];
    if (v3 == 63)
    {
      xmlParsePI(ctxt);
    }

    else if (v3 == 33)
    {
      v4 = cur[2];
      if (v4 > 0x44)
      {
        if (v4 == 78)
        {
          xmlParseNotationDecl(ctxt);
        }

        else if (v4 == 69)
        {
          v5 = cur[3];
          if (v5 == 78)
          {
            xmlParseEntityDecl(ctxt);
          }

          else if (v5 == 76)
          {
            xmlParseElementDecl(ctxt);
          }
        }
      }

      else if (v4 == 45)
      {
        xmlParseComment(ctxt);
      }

      else if (v4 == 65)
      {
        xmlParseAttributeListDecl(ctxt);
      }
    }
  }

  if (ctxt->instate != XML_PARSER_EOF)
  {
    ctxt->instate = XML_PARSER_DTD;
  }
}

void xmlParseTextDecl(xmlParserCtxtPtr ctxt)
{
  input = ctxt->input;
  cur = input->cur;
  if (*cur == 60 && cur[1] == 63 && cur[2] == 120 && cur[3] == 109 && cur[4] == 108)
  {
    v5 = cur[5];
    v4 = cur + 5;
    v6 = (1 << v5) & 0x100002600;
    if (v5 <= 0x20 && v6 != 0)
    {
      input->cur = v4;
      input->col += 5;
      if (!*v4)
      {
        xmlParserInputGrow(input, 250);
      }

      instate = ctxt->instate;
      ctxt->instate = XML_PARSER_START;
      if (!xmlSkipBlankChars(ctxt))
      {
        xmlFatalErrMsg(ctxt, 65, "Space needed after '<?xml'\n");
      }

      v9 = xmlParseVersionInfo(ctxt);
      if (v9)
      {
        v10 = v9;
        if (!xmlSkipBlankChars(ctxt))
        {
          xmlFatalErrMsg(ctxt, 65, "Space needed here\n");
        }
      }

      else
      {
        v10 = xmlCharStrdup("1.0");
      }

      ctxt->input->version = v10;
      v11 = xmlParseEncodingDecl(ctxt);
      errNo = ctxt->errNo;
      if (errNo == 32)
      {
        goto LABEL_36;
      }

      if (!v11 && !errNo)
      {
        xmlFatalErrMsg(ctxt, 101, "Missing encoding in text declaration\n");
      }

      xmlSkipBlankChars(ctxt);
      v13 = ctxt->input;
      v14 = v13->cur;
      v15 = *v14;
      if (v15 == 62)
      {
        xmlFatalErr(ctxt, 57, 0);
      }

      else
      {
        if (v15 == 63 && v14[1] == 62)
        {
          v13->cur = v14 + 2;
          v13->col += 2;
          if (!v14[2])
          {
            xmlParserInputGrow(v13, 250);
          }

          goto LABEL_36;
        }

        xmlFatalErr(ctxt, 57, 0);
        v16 = ctxt->input;
          ;
        }
      }

      xmlNextChar(ctxt);
LABEL_36:
      ctxt->instate = instate;
      return;
    }
  }

  xmlFatalErr(ctxt, 56, 0);
}

void xmlParseExternalSubset(xmlParserCtxtPtr ctxt, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  xmlDetectSAX2(ctxt);
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  if (!ctxt->encoding)
  {
    cur = ctxt->input->cur;
    if (ctxt->input->end - cur >= 4)
    {
      *in = *cur;
      v7 = xmlDetectCharEncoding(in, 4);
      if (v7)
      {
        xmlSwitchEncoding(ctxt, v7);
      }
    }
  }

  v8 = ctxt->input->cur;
  if (*v8 == 60 && v8[1] == 63 && v8[2] == 120 && v8[3] == 109 && v8[4] == 108)
  {
    xmlParseTextDecl(ctxt);
    if (ctxt->errNo == 32)
    {
      xmlHaltParser(ctxt);
      return;
    }
  }

  myDoc = ctxt->myDoc;
  if (!myDoc)
  {
    myDoc = xmlNewDoc("1.0");
    ctxt->myDoc = myDoc;
    if (!myDoc)
    {
      xmlErrMemory(ctxt, "New Doc failed");
      return;
    }

    myDoc->properties = myDoc->properties & 0x78000000 | 0x40;
  }

  if (!myDoc->intSubset)
  {
    xmlCreateIntSubset(myDoc, 0, ExternalID, SystemID);
  }

  ctxt->instate = XML_PARSER_DTD;
  ctxt->external = 1;
  xmlSkipBlankChars(ctxt);
  input = ctxt->input;
  v11 = input->cur;
  while (1)
  {
    v12 = *v11;
    if (v12 != 37)
    {
      if (v12 != 60)
      {
        goto LABEL_38;
      }

      v13 = v11[1];
      if (v13 != 63 && v13 != 33)
      {
        goto LABEL_39;
      }
    }

    consumed_low = LODWORD(input->consumed);
    if (ctxt->progressive)
    {
      v15 = v11;
    }

    else
    {
      v16 = input->end - v11;
      v15 = v11;
      if (v16 <= 249)
      {
        xmlGROW(ctxt);
        v15 = ctxt->input->cur;
        v12 = *v15;
      }
    }

    if (v12 == 60 && v15[1] == 33 && v15[2] == 91)
    {
      xmlParseConditionalSections(ctxt);
    }

    else
    {
      xmlParseMarkupDecl(ctxt);
    }

    xmlSkipBlankChars(ctxt);
    input = ctxt->input;
    v17 = input->cur == v11;
    v11 = input->cur;
    if (v17)
    {
      v11 = input->cur;
      if (consumed_low == input->consumed)
      {
        break;
      }
    }
  }

  xmlFatalErr(ctxt, 60, 0);
  v12 = *ctxt->input->cur;
LABEL_38:
  if (!v12)
  {
    return;
  }

LABEL_39:
  xmlFatalErr(ctxt, 60, 0);
}

void xmlParseConditionalSections(uint64_t a1)
{
  if (*(a1 + 272) == -1)
  {
    v2 = 0;
    goto LABEL_85;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 56);
    v6 = *(v5 + 32);
    v7 = *v6;
    if (v7 == 60)
    {
      break;
    }

    if (!v4 || v7 != 93 || v6[1] != 93 || v6[2] != 62)
    {
      goto LABEL_37;
    }

    if (*(v5 + 100) != v2[--v4])
    {
      xmlFatalErrMsg(a1, 90, "All markup of the conditional section is not in the same entity\n");
      v5 = *(a1 + 56);
      v6 = *(v5 + 32);
    }

    *(v5 + 32) = v6 + 3;
    *(v5 + 56) += 3;
    if (!v6[3])
    {
LABEL_79:
      xmlParserInputGrow(v5, 250);
    }

LABEL_39:
    if (v4)
    {
      xmlSkipBlankChars(a1);
      if (!*(a1 + 452) && (*(*(a1 + 56) + 40) - *(*(a1 + 56) + 32)) <= 249)
      {
        xmlGROW(a1);
      }

      if (*(a1 + 272) != -1)
      {
        continue;
      }
    }

    goto LABEL_85;
  }

  if (v6[1] != 33 || v6[2] != 91)
  {
LABEL_37:
    v14 = *(v5 + 64);
    xmlParseMarkupDecl(a1);
    v15 = *(a1 + 56);
    if (*(v15 + 32) != v6 || v14 != *(v15 + 64))
    {
      goto LABEL_39;
    }

    v23 = a1;
    v24 = 60;
    goto LABEL_84;
  }

  v8 = *(v5 + 100);
  *(v5 + 32) = v6 + 3;
  *(v5 + 56) += 3;
  if (!v6[3])
  {
    xmlParserInputGrow(v5, 250);
  }

  xmlSkipBlankChars(a1);
  v9 = *(a1 + 56);
  cur = v9->cur;
  if (*cur != 73)
  {
    goto LABEL_81;
  }

  v11 = cur[1];
  if (v11 != 71)
  {
    if (v11 == 78 && cur[2] == 67 && cur[3] == 76 && cur[4] == 85 && cur[5] == 68 && cur[6] == 69)
    {
      v9->cur = cur + 7;
      v9->col += 7;
      if (!cur[7])
      {
        xmlParserInputGrow(v9, 250);
      }

      xmlSkipBlankChars(a1);
      v12 = *(a1 + 56);
      if (**(v12 + 32) == 91)
      {
        if (*(v12 + 100) != v8)
        {
          xmlFatalErrMsg(a1, 90, "All markup of the conditional section is not in the same entity\n");
        }

        xmlNextChar(a1);
        if (v3 <= v4)
        {
          if (v3)
          {
            v3 *= 2;
          }

          else
          {
            v3 = 4;
          }

          if (v3 >> 62 || (v13 = malloc_type_realloc(v2, 4 * v3, 0x100004052888210uLL)) == 0)
          {
LABEL_88:
            xmlErrMemory(a1, 0);
            goto LABEL_85;
          }

          v2 = v13;
        }

        v2[v4++] = v8;
        goto LABEL_39;
      }

      goto LABEL_83;
    }

LABEL_81:
    v23 = a1;
    v24 = 95;
LABEL_84:
    xmlFatalErr(v23, v24, 0);
    xmlHaltParser(a1);
    goto LABEL_85;
  }

  if (cur[2] != 78 || cur[3] != 79 || cur[4] != 82 || cur[5] != 69)
  {
    goto LABEL_81;
  }

  v9->cur = cur + 6;
  v9->col += 6;
  if (!cur[6])
  {
    xmlParserInputGrow(v9, 250);
  }

  xmlSkipBlankChars(a1);
  v16 = *(a1 + 56);
  if (**(v16 + 32) != 91)
  {
LABEL_83:
    v23 = a1;
    v24 = 83;
    goto LABEL_84;
  }

  if (*(v16 + 100) != v8)
  {
    xmlFatalErrMsg(a1, 90, "All markup of the conditional section is not in the same entity\n");
  }

  xmlNextChar(a1);
  v17 = *(a1 + 332);
  v18 = *(a1 + 272);
  if (!*(a1 + 448))
  {
    *(a1 + 332) = 1;
  }

  v19 = 0;
  *(a1 + 272) = 15;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a1 + 56);
        v20 = *(v5 + 32);
        v21 = *v20;
        if (v21 != 60)
        {
          break;
        }

        if (v20[1] != 33 || v20[2] != 91)
        {
          goto LABEL_69;
        }

        *(v5 + 32) = v20 + 3;
        *(v5 + 56) += 3;
        if (!v20[3])
        {
          xmlParserInputGrow(v5, 250);
        }

        if (__CFADD__(v19++, 1))
        {
          goto LABEL_88;
        }
      }

      if (v21 == 93)
      {
        break;
      }

      if (!*v20)
      {
        goto LABEL_75;
      }

LABEL_69:
      xmlNextChar(a1);
    }

    if (v20[1] != 93 || v20[2] != 62)
    {
      goto LABEL_69;
    }

    if (!v19)
    {
      break;
    }

    *(v5 + 32) = v20 + 3;
    *(v5 + 56) += 3;
    if (!v20[3])
    {
      xmlParserInputGrow(v5, 250);
    }

    --v19;
  }

LABEL_75:
  *(a1 + 332) = v17;
  *(a1 + 272) = v18;
  if (*v20)
  {
    if (*(v5 + 100) != v8)
    {
      xmlFatalErrMsg(a1, 90, "All markup of the conditional section is not in the same entity\n");
      v5 = *(a1 + 56);
      v20 = *(v5 + 32);
    }

    *(v5 + 32) = v20 + 3;
    *(v5 + 56) += 3;
    if (!v20[3])
    {
      goto LABEL_79;
    }

    goto LABEL_39;
  }

  xmlFatalErr(a1, 59, 0);
LABEL_85:

  free(v2);
}

void xmlParseReference(xmlParserCtxtPtr ctxt)
{
  v70 = *MEMORY[0x1E69E9840];
  cur = 0;
  v1 = ctxt->input->cur;
  if (*v1 != 38)
  {
    goto LABEL_86;
  }

  if (v1[1] == 35)
  {
    *out = 0;
    v69 = 0;
    v3 = v1[2];
    v4 = xmlParseCharRef(ctxt);
    if (!v4)
    {
LABEL_86:
      v38 = *MEMORY[0x1E69E9840];
      return;
    }

    if (ctxt->charset == 1)
    {
      v5 = xmlCopyCharMultiByte(out, v4);
      out[v5] = 0;
      if (!ctxt->sax)
      {
        goto LABEL_86;
      }

      characters = ctxt->sax->characters;
      if (!characters || ctxt->disableSAX)
      {
        goto LABEL_86;
      }

      v7 = v5;
      userData = ctxt->userData;
      goto LABEL_25;
    }

    if (v4 <= 255)
    {
      out[0] = v4;
      out[1] = 0;
      if (!ctxt->sax)
      {
        goto LABEL_86;
      }

      characters = ctxt->sax->characters;
      if (!characters || ctxt->disableSAX)
      {
        goto LABEL_86;
      }

      userData = ctxt->userData;
      v7 = 1;
LABEL_25:
      (characters)(userData, out, v7);
      goto LABEL_86;
    }

    if ((v3 & 0xFFFFFFDF) == 0x58)
    {
      snprintf(out, 0x10uLL, "#x%X");
    }

    else
    {
      snprintf(out, 0x10uLL, "#%d");
    }

    if (!ctxt->sax)
    {
      goto LABEL_86;
    }

    reference = ctxt->sax->reference;
    if (!reference || ctxt->disableSAX)
    {
      goto LABEL_86;
    }

    v17 = ctxt->userData;
    v18 = out;
LABEL_33:
    (reference)(v17, v18);
    goto LABEL_86;
  }

  v9 = xmlParseEntityRef(ctxt);
  if (!v9 || !ctxt->wellFormed)
  {
    goto LABEL_86;
  }

  v10 = v9;
  if (v9->name)
  {
    etype = v9->etype;
    if (etype != XML_INTERNAL_PREDEFINED_ENTITY)
    {
      checked = v9->checked;
      if (!checked || !v9->children && (ctxt->options & 2) != 0)
      {
        if (etype != XML_EXTERNAL_GENERAL_PARSED_ENTITY)
        {
          p_nbentities = &ctxt->nbentities;
          nbentities = ctxt->nbentities;
          if (etype != XML_INTERNAL_GENERAL_ENTITY)
          {
            xmlErrMsgStr(ctxt, 1, "invalid entity type found\n", 0);
            v31 = 88;
LABEL_75:
            v35 = *p_nbentities - nbentities;
            if (v35 + 1 < 0x3FFFFFFF)
            {
              v36 = v35 + 1;
            }

            else
            {
              v36 = 0x3FFFFFFF;
            }

            *(v10 + 132) = 2 * v36;
            v37 = *(v10 + 80);
            if (v37 && xmlStrchr(v37, 0x3Cu))
            {
              *(v10 + 132) |= 1u;
            }

            if (v31 == 111 || v31 == 89)
            {
              xmlFatalErr(ctxt, v31, 0);
              xmlHaltParser(ctxt);
LABEL_85:
              xmlFreeNodeList(cur);
              goto LABEL_86;
            }

            if (xmlParserEntityCheck(ctxt, 0, v10, 0))
            {
              goto LABEL_85;
            }

            v44 = cur;
            if (v31 || !cur)
            {
              if (v31 && v31 != 27)
              {
                xmlFatalErrMsgStr(ctxt, 26, "Entity '%s' failed to parse\n", *(v10 + 16));
                v61 = *(v10 + 80);
                if (v61)
                {
                  *v61 = 0;
                }

                xmlParserEntityCheck(ctxt, 0, v10, 0);
LABEL_134:
                if (!*(v10 + 132))
                {
                  *(v10 + 132) = 2;
                }

                p_children = (v10 + 24);
                if (!*(v10 + 24))
                {
                  goto LABEL_137;
                }

                goto LABEL_46;
              }

              if (!cur)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v45 = *(v10 + 92);
              if ((v45 - 1) <= 1 && !*(v10 + 24))
              {
                *(v10 + 24) = cur;
                if (ctxt->replaceEntities && ctxt->parseMode != XML_PARSE_READER && (v44->type != XML_TEXT_NODE || v44->next))
                {
                  *(v10 + 128) = 0;
                  node = ctxt->node;
                  p_private = &v44->_private;
                  myDoc = ctxt->myDoc;
                  do
                  {
                    v65 = p_private;
                    p_private[5] = node;
                    p_private[8] = myDoc;
                    p_private = p_private[6];
                  }

                  while (p_private);
                  *(v10 + 32) = v65;
                  if (v45 == 2 && xmlEntityRefFunc)
                  {
                    xmlEntityRefFunc(v10, v44, 0);
                  }

                  goto LABEL_134;
                }

                *(v10 + 128) = 1;
                v44->parent = v10;
                v46 = *(v10 + 64);
                next = v44;
                while (1)
                {
                  xmlSetTreeDoc(next, v46);
                  next = cur->next;
                  if (!next)
                  {
                    break;
                  }

                  cur = cur->next;
                  next->parent = v10;
                  v46 = *(v10 + 64);
                }

                *(v10 + 32) = cur;
LABEL_133:
                cur = 0;
                goto LABEL_134;
              }
            }

            xmlFreeNodeList(cur);
            goto LABEL_133;
          }

          if (ctxt->userData == ctxt)
          {
            v30 = 0;
          }

          else
          {
            v30 = ctxt->userData;
          }

          ++ctxt->depth;
          v25 = xmlParseBalancedChunkMemoryInternal(ctxt, v9->content, v30, &cur);
LABEL_66:
          v31 = v25;
          --ctxt->depth;
          goto LABEL_75;
        }

        if ((ctxt->options & 0x12) != 0)
        {
          p_nbentities = &ctxt->nbentities;
          nbentities = ctxt->nbentities;
          sax = ctxt->sax;
          if (ctxt->userData == ctxt)
          {
            v23 = 0;
          }

          else
          {
            v23 = ctxt->userData;
          }

          v24 = ctxt->depth + 1;
          ctxt->depth = v24;
          v25 = xmlParseExternalEntityPrivate(ctxt->myDoc, ctxt, sax, v23, v24, v9->URI, v9->ExternalID, &cur);
          goto LABEL_66;
        }
      }

      if (checked != 1)
      {
        ctxt->nbentities += checked / 2;
      }

      p_children = &v9->children;
      if (!v9->children)
      {
        if (checked)
        {
          if (ctxt->userData == ctxt)
          {
            v32 = 0;
          }

          else
          {
            v32 = ctxt->userData;
          }

          if (etype == XML_EXTERNAL_GENERAL_PARSED_ENTITY)
          {
            p_depth = &ctxt->depth;
            v48 = ctxt->depth + 1;
            ctxt->depth = v48;
            v34 = xmlParseExternalEntityPrivate(ctxt->myDoc, ctxt, ctxt->sax, v32, v48, v9->URI, v9->ExternalID, 0);
          }

          else
          {
            if (etype != XML_INTERNAL_GENERAL_ENTITY)
            {
              xmlErrMsgStr(ctxt, 1, "invalid entity type found\n", 0);
              goto LABEL_137;
            }

            p_depth = &ctxt->depth;
            ++ctxt->depth;
            v34 = xmlParseBalancedChunkMemoryInternal(ctxt, v9->content, v32, 0);
          }

          --*p_depth;
          if (v34 == 89)
          {
            v49 = *MEMORY[0x1E69E9840];

            xmlFatalErr(ctxt, 89, 0);
            return;
          }
        }

LABEL_137:
        if (!ctxt->sax)
        {
          goto LABEL_86;
        }

        reference = ctxt->sax->reference;
        if (!reference || ctxt->replaceEntities || ctxt->disableSAX)
        {
          goto LABEL_86;
        }

        goto LABEL_141;
      }

LABEL_46:
      if (ctxt->sax)
      {
        reference = ctxt->sax->reference;
        if (reference)
        {
          if (!ctxt->replaceEntities && !ctxt->disableSAX)
          {
LABEL_141:
            v17 = ctxt->userData;
            v18 = *(v10 + 16);
            goto LABEL_33;
          }
        }
      }

      if (!ctxt->replaceEntities || !ctxt->node)
      {
        goto LABEL_86;
      }

      if (cur)
      {
        if (ctxt->parseMode != XML_PARSE_READER)
        {
          if (ctxt->inputNr < 1)
          {
            v27 = xmlDictLookup(ctxt->dict, "nbktext", -1);
            v28 = *p_children;
            if ((*p_children)->type == XML_TEXT_NODE)
            {
              v28->name = v27;
            }

            v29 = *(v10 + 32);
            if (v29 != v28 && *(v29 + 8) == 3)
            {
              *(v29 + 16) = v27;
            }

            xmlAddChildList(ctxt->node, v28);
            goto LABEL_163;
          }

LABEL_117:
          v50 = *(v10 + 88) + ctxt->sizeentcopy + 5;
          ctxt->sizeentcopy = v50;
          if (xmlParserEntityCheck(ctxt, 0, v10, v50))
          {
            goto LABEL_86;
          }

          v51 = *(v10 + 24);
          v52 = *(v10 + 32);
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          if (v51)
          {
            v53 = 0;
            do
            {
              v54 = v51->next;
              v51->parent = 0;
              v51->next = 0;
              v55 = xmlDocCopyNode(v51, ctxt->myDoc, 1);
              v56 = v55;
              if (v55)
              {
                if (!v55->_private)
                {
                  v55->_private = v51->_private;
                }

                if (!v53)
                {
                  v53 = v51;
                }

                xmlAddChild(v10, v55);
                xmlAddChild(ctxt->node, v51);
              }

              if (v51 == v52)
              {
                break;
              }

              v51 = v54;
            }

            while (v54);
          }

          else
          {
            v56 = 0;
            v53 = 0;
          }

          if (!*(v10 + 128))
          {
            *(v10 + 128) = 1;
          }

          if (*(v10 + 92) == 2)
          {
            v58 = xmlEntityRefFunc;
            if (xmlEntityRefFunc)
            {
              v59 = v10;
              v60 = v53;
              v43 = v56;
              goto LABEL_162;
            }
          }

          goto LABEL_163;
        }
      }

      else if (*(v10 + 128) && ctxt->parseMode != XML_PARSE_READER)
      {
        goto LABEL_117;
      }

      v39 = *(v10 + 88) + ctxt->sizeentcopy + 5;
      ctxt->sizeentcopy = v39;
      if (xmlParserEntityCheck(ctxt, 0, v10, v39))
      {
        goto LABEL_86;
      }

      v40 = *p_children;
      if (*p_children)
      {
        v41 = 0;
        while (1)
        {
          v42 = xmlDocCopyNode(v40, ctxt->myDoc, 1);
          if (v42)
          {
            if (!v42->_private)
            {
              v42->_private = v40->_private;
            }

            if (!v41)
            {
              v41 = v42;
            }

            v43 = xmlAddChild(ctxt->node, v42);
          }

          else
          {
            v43 = 0;
          }

          if (v40 == *(v10 + 32))
          {
            break;
          }

          v40 = v40->next;
          if (!v40)
          {
            goto LABEL_150;
          }
        }

        v57 = ctxt->parseMode != XML_PARSE_READER || v43 == 0;
        if (!v57 && v43->type == XML_ELEMENT_NODE && !v43->children)
        {
          v43->extra = v43->extra & 0xF000 | 1;
        }
      }

      else
      {
        v43 = 0;
        v41 = 0;
      }

LABEL_150:
      if (*(v10 + 92) == 2)
      {
        v58 = xmlEntityRefFunc;
        if (xmlEntityRefFunc)
        {
          v59 = v10;
          v60 = v41;
LABEL_162:
          v58(v59, v60, v43);
        }
      }

LABEL_163:
      *&ctxt->nodelen = 0;
      goto LABEL_86;
    }
  }

  content = v9->content;
  if (!content || !ctxt->sax || !ctxt->sax->characters || ctxt->disableSAX)
  {
    goto LABEL_86;
  }

  v66 = ctxt->sax->characters;
  v13 = ctxt->userData;
  v14 = xmlStrlen(content);
  v15 = *MEMORY[0x1E69E9840];

  (v66)(v13, content, v14);
}

xmlEntityPtr xmlParseEntityRef(xmlParserCtxtPtr ctxt)
{
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  if (ctxt->instate == XML_PARSER_EOF || *ctxt->input->cur != 38)
  {
    return 0;
  }

  xmlNextChar(ctxt);
  v2 = xmlParseName(ctxt);
  if (!v2)
  {
    xmlFatalErrMsg(ctxt, 68, "xmlParseEntityRef: no name\n");
    return 0;
  }

  if (*ctxt->input->cur != 59)
  {
    xmlFatalErr(ctxt, 23, 0);
    return 0;
  }

  v3 = v2;
  xmlNextChar(ctxt);
  if ((ctxt->options & 0x100000) == 0)
  {
    PredefinedEntity = xmlGetPredefinedEntity(v3);
    if (PredefinedEntity)
    {
      return PredefinedEntity;
    }
  }

  ++ctxt->nbentities;
  if (!ctxt->sax)
  {
    goto LABEL_24;
  }

  getEntity = ctxt->sax->getEntity;
  if (getEntity)
  {
    PredefinedEntity = (getEntity)(ctxt->userData, v3);
  }

  else
  {
    PredefinedEntity = 0;
  }

  wellFormed = ctxt->wellFormed;
  if (wellFormed == 1 && !PredefinedEntity)
  {
    if ((ctxt->options & 0x100000) != 0)
    {
      PredefinedEntity = xmlGetPredefinedEntity(v3);
      wellFormed = ctxt->wellFormed;
    }

    else
    {
      PredefinedEntity = 0;
      wellFormed = 1;
    }
  }

  if (wellFormed == 1 && !PredefinedEntity)
  {
    if (ctxt->userData != ctxt)
    {
LABEL_24:
      PredefinedEntity = 0;
      goto LABEL_25;
    }

    PredefinedEntity = xmlSAX2GetEntity(ctxt, v3);
  }

LABEL_25:
  instate = ctxt->instate;
  if (instate == XML_PARSER_EOF)
  {
    return 0;
  }

  if (PredefinedEntity)
  {
    etype = PredefinedEntity->etype;
    if (etype == XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
    {
      v9 = "Entity reference to unparsed entity %s\n";
      v10 = ctxt;
      v11 = 28;
LABEL_36:
      xmlFatalErrMsgStr(v10, v11, v9, v3);
      return PredefinedEntity;
    }

    if (instate == XML_PARSER_ATTRIBUTE_VALUE && etype == XML_EXTERNAL_GENERAL_PARSED_ENTITY)
    {
      v9 = "Attribute references external entity '%s'\n";
      v10 = ctxt;
      v11 = 29;
      goto LABEL_36;
    }

    if (instate != XML_PARSER_ATTRIBUTE_VALUE)
    {
      if ((etype & 0xFFFFFFFE) != 4)
      {
        return PredefinedEntity;
      }

      v9 = "Attempt to reference the parameter entity '%s'\n";
      v10 = ctxt;
      v11 = 30;
      goto LABEL_36;
    }

    if (etype != XML_INTERNAL_PREDEFINED_ENTITY)
    {
      checked = PredefinedEntity->checked;
      if (!checked || (checked & 1) != 0)
      {
        content = PredefinedEntity->content;
        if (content)
        {
          if (xmlStrchr(content, 0x3Cu))
          {
            v9 = "'<' in entity '%s' is not allowed in attributes values\n";
            v10 = ctxt;
            v11 = 38;
            goto LABEL_36;
          }
        }
      }
    }
  }

  else
  {
    if (ctxt->standalone != 1 && (ctxt->hasExternalSubset || ctxt->hasPErefs))
    {
      xmlErrMsgStr(ctxt, 27, "Entity '%s' not defined\n", v3);
      if (!ctxt->inSubset)
      {
        if (ctxt->sax)
        {
          reference = ctxt->sax->reference;
          if (reference)
          {
            (reference)(ctxt->userData, v3);
          }
        }
      }
    }

    else
    {
      xmlFatalErrMsgStr(ctxt, 26, "Entity '%s' not defined\n", v3);
    }

    xmlParserEntityCheck(ctxt, 0, 0, 0);
    PredefinedEntity = 0;
    ctxt->valid = 0;
  }

  return PredefinedEntity;
}

uint64_t xmlParseBalancedChunkMemoryInternal(uint64_t a1, xmlChar *str, xmlParserCtxt *a3, void *a4)
{
  v4 = a4;
  v8 = *(a1 + 392);
  if (v8 >= 41 && (v8 > 0x400 || (*(a1 + 564) & 0x80000) == 0))
  {
    return 89;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!str)
  {
    return 1;
  }

  v10 = xmlStrlen(str);
  MemoryParserCtxt = xmlCreateMemoryParserCtxt(str, v10);
  if (!MemoryParserCtxt)
  {
    return 27;
  }

  v12 = MemoryParserCtxt;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = MemoryParserCtxt;
  }

  MemoryParserCtxt->userData = v13;
  dict = MemoryParserCtxt->dict;
  if (dict)
  {
    xmlDictFree(dict);
  }

  v15 = *(a1 + 456);
  *(v12 + 456) = v15;
  *(v12 + 736) = *(a1 + 736) + 1;
  *(v12 + 480) = xmlDictLookup(v15, "xml", 3);
  *(v12 + 488) = xmlDictLookup(*(v12 + 456), "xmlns", 5);
  *(v12 + 496) = xmlDictLookup(*(v12 + 456), "http://www.w3.org/XML/1998/namespace", 36);
  if (*(a1 + 508) >= 1)
  {
    v16 = 0;
    do
    {
      nsPush(v12, *(*(a1 + 520) + 8 * v16), *(*(a1 + 520) + 8 * v16 + 8));
      v16 += 2;
    }

    while (*(a1 + 508) > v16);
  }

  v17 = *v12;
  *v12 = *a1;
  xmlDetectSAX2(v12);
  *(v12 + 28) = *(a1 + 28);
  *(v12 + 564) = *(a1 + 564);
  *(v12 + 424) = *(a1 + 424);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = 0;
    *(v12 + 16) = v18;
    v34 = *&v18->children;
    goto LABEL_25;
  }

  v20 = xmlNewDoc("1.0");
  if (!v20)
  {
    *v12 = v17;
    *(v12 + 456) = 0;
    xmlFreeParserCtxt(v12);
    return 1;
  }

  v18 = v20;
  v20->properties = v20->properties & 0x78000000 | 0x40;
  v21 = *(v12 + 456);
  v18->dict = v21;
  xmlDictReference(v21);
  *(v12 + 16) = v18;
  v34 = 0u;
  v19 = v18;
LABEL_25:
  v22 = xmlNewDocNode(v18, 0, "pseudoroot", 0);
  if (!v22)
  {
    *v12 = v17;
    *(v12 + 456) = 0;
    xmlFreeParserCtxt(v12);
    if (v19)
    {
      xmlFreeDoc(v19);
    }

    return 1;
  }

  v23 = v22;
  v24 = *(v12 + 16);
  v24->children = 0;
  v24->last = 0;
  xmlAddChild(v24, v23);
  nodePush(v12, *(*(v12 + 16) + 24));
  *(v12 + 272) = 7;
  *(v12 + 392) = *(a1 + 392) + 1;
  *(v12 + 156) = 0;
  v25 = *(a1 + 432);
  *(v12 + 432) = v25;
  if (*(a1 + 156) || *(a1 + 28))
  {
    *(v12 + 432) = v25 | 8;
  }

  *(v12 + 568) = *(a1 + 568);
  *(v12 + 544) = *(a1 + 544);
  xmlParseContent(v12);
  v26 = *(*(v12 + 56) + 32);
  if (*v26)
  {
    if (*v26 == 60 && v26[1] == 47)
    {
      v27 = 85;
    }

    else
    {
      v27 = 86;
    }

    xmlFatalErr(v12, v27, 0);
  }

  if (*(v12 + 80) != *(*(v12 + 16) + 24))
  {
    xmlFatalErr(v12, 85, 0);
  }

  if (*(v12 + 24))
  {
    v28 = *(v12 + 16);
    if (v4)
    {
      v29 = *(*(v28 + 24) + 24);
      for (*v4 = v29; v29; v29 = *(v29 + 48))
      {
        if (*(a1 + 156))
        {
          if (*(a1 + 24))
          {
            v30 = *(a1 + 16);
            if (v30)
            {
              if (v30->intSubset && *(v29 + 8) == 1)
              {
                *(a1 + 152) &= xmlValidateElement((a1 + 160), v30, v29);
              }
            }
          }
        }

        *(v29 + 40) = 0;
      }

      v4 = 0;
      v31 = *(*(v12 + 16) + 24);
      v31->children = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v32 = *(v12 + 136);
    if (v32 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v32;
    }

    v28 = *(v12 + 16);
  }

  if (v28)
  {
    v31 = *(v28 + 24);
LABEL_56:
    xmlFreeNode(v31);
    *(*(v12 + 16) + 24) = v34;
  }

  *(a1 + 696) += *(v12 + 696);
  if (*(v12 + 604))
  {
    xmlCopyError((v12 + 600), (a1 + 600));
  }

  *v12 = v17;
  *(v12 + 456) = 0;
  *(v12 + 544) = 0;
  *(v12 + 552) = 0;
  xmlFreeParserCtxt(v12);
  if (v19)
  {
    xmlFreeDoc(v19);
  }

  return v4;
}

uint64_t xmlParseExternalEntityPrivate(uint64_t a1, uint64_t a2, _xmlSAXHandler *a3, void *a4, int a5, const xmlChar *a6, const char *a7, _xmlNode **a8)
{
  if (a5 < 41 || (v14 = 89, a2) && a5 <= 0x400 && (*(a2 + 564) & 0x80000) != 0)
  {
    if (a8)
    {
      *a8 = 0;
    }

    v14 = 1;
    if (a1)
    {
      if (a6 | a7)
      {
        EntityParserCtxtInternal = xmlCreateEntityParserCtxtInternal(a6, a7, 0, a2);
        if (EntityParserCtxtInternal)
        {
          v16 = EntityParserCtxtInternal;
          EntityParserCtxtInternal->userData = EntityParserCtxtInternal;
          if (a3)
          {
            sax = EntityParserCtxtInternal->sax;
            EntityParserCtxtInternal->sax = a3;
            if (a4)
            {
              EntityParserCtxtInternal->userData = a4;
            }
          }

          else
          {
            sax = 0;
          }

          xmlDetectSAX2(EntityParserCtxtInternal);
          v18 = xmlNewDoc("1.0");
          if (v18)
          {
            v19 = v18;
            *&v18->intSubset = *(a1 + 80);
            p_intSubset = &v18->intSubset;
            v18->properties = v18->properties & 0x78000000 | 0x40;
            v21 = *(a1 + 152);
            if (v21)
            {
              v19->dict = v21;
              xmlDictReference(v21);
            }

            v22 = *(a1 + 136);
            if (v22)
            {
              v19->URL = xmlStrdup(v22);
            }

            v23 = xmlNewDocNode(v19, 0, "pseudoroot", 0);
            if (!v23)
            {
              if (a3)
              {
                *v16 = sax;
              }

              goto LABEL_77;
            }

            v24 = v23;
            xmlAddChild(v19, v23);
            nodePush(v16, v19->children);
            *(v16 + 16) = a1;
            v24->doc = a1;
            if (!*(v16 + 452) && (*(*(v16 + 56) + 40) - *(*(v16 + 56) + 32)) <= 249)
            {
              xmlGROW(v16);
            }

            *in = 0;
            v25 = *(*(v16 + 56) + 32);
            if ((*(*(v16 + 56) + 40) - v25) >= 4)
            {
              *in = *v25;
              v26 = xmlDetectCharEncoding(in, 4);
              if (v26)
              {
                xmlSwitchEncoding(v16, v26);
              }
            }

            v27 = *(*(v16 + 56) + 32);
            if (*v27 == 60 && v27[1] == 63 && v27[2] == 120 && v27[3] == 109 && v27[4] == 108 && (v28 = v27[5], v28 <= 0x20) && ((1 << v28) & 0x100002600) != 0)
            {
              xmlParseTextDecl(v16);
              if (xmlStrEqual(*(a2 + 32), "1.0") && !xmlStrEqual(*(*(v16 + 56) + 88), "1.0"))
              {
                xmlFatalErrMsg(v16, 109, "Version mismatch between document and entity\n");
              }

              *(v16 + 272) = 7;
              *(v16 + 392) = a5;
            }

            else
            {
              *(v16 + 272) = 7;
              *(v16 + 392) = a5;
              if (!a2)
              {
                v32 = 0;
                *(v16 + 424) = 0;
                *(v16 + 156) = 0;
                *(v16 + 148) = 2;
                *(v16 + 432) = 0;
                goto LABEL_48;
              }
            }

            *(v16 + 424) = *(a2 + 424);
            *(v16 + 432) = *(a2 + 432);
            v29 = *(a2 + 156);
            *(v16 + 152) = *(a2 + 152);
            *(v16 + 156) = v29;
            *(v16 + 28) = *(a2 + 28);
            if (v29)
            {
              *(v16 + 176) = *(a2 + 176);
              *(v16 + 160) = *(a2 + 160);
              *(v16 + 208) = *(a2 + 208);
            }

            *(v16 + 148) = *(a2 + 148);
            v30 = *(v16 + 456);
            if (v30)
            {
              xmlDictFree(v30);
            }

            v31 = *(a2 + 456);
            *(v16 + 456) = v31;
            *(v16 + 480) = xmlDictLookup(v31, "xml", 3);
            *(v16 + 488) = xmlDictLookup(*(v16 + 456), "xmlns", 5);
            *(v16 + 496) = xmlDictLookup(*(v16 + 456), "http://www.w3.org/XML/1998/namespace", 36);
            *(v16 + 568) = *(a2 + 568);
            *(v16 + 544) = *(a2 + 544);
            *(v16 + 436) = *(a2 + 436);
            *(v16 + 104) = *(a2 + 104);
            *(v16 + 112) = *(a2 + 112);
            *(v16 + 128) = *(a2 + 128);
            v32 = 1;
LABEL_48:
            xmlParseContent(v16);
            v33 = *(*(v16 + 56) + 32);
            if (*v33)
            {
              if (*v33 == 60 && v33[1] == 47)
              {
                v34 = 85;
              }

              else
              {
                v34 = 86;
              }

              xmlFatalErr(v16, v34, 0);
            }

            if (*(v16 + 80) != v19->children)
            {
              xmlFatalErr(v16, 85, 0);
            }

            if (*(v16 + 24))
            {
              if (a8)
              {
                children = v19->children->children;
                for (*a8 = children; children; children = children->next)
                {
                  children->parent = 0;
                }

                v14 = 0;
                v19->children->children = 0;
                if (!v32)
                {
                  goto LABEL_72;
                }

                goto LABEL_68;
              }

              v14 = 0;
              if (v32)
              {
LABEL_68:
                *(a2 + 696) += *(v16 + 696);
                v37 = *(v16 + 56);
                if (v37)
                {
                  *(a2 + 704) = *(a2 + 704) + v37[8] + v37[4] - v37[3];
                }

                if (*(v16 + 604))
                {
                  xmlCopyError((v16 + 600), (a2 + 600));
                }
              }
            }

            else
            {
              v36 = *(v16 + 136);
              if (v36 <= 1)
              {
                v14 = 1;
              }

              else
              {
                v14 = v36;
              }

              if (v32)
              {
                goto LABEL_68;
              }
            }

LABEL_72:
            if (a3)
            {
              *v16 = sax;
            }

            if (v32)
            {
              *(v16 + 456) = 0;
              *(v16 + 544) = 0u;
              *(a2 + 152) = *(v16 + 152);
              *(a2 + 112) = *(v16 + 112);
              *(a2 + 128) = *(v16 + 128);
            }

            *(v16 + 112) = 0;
            *(v16 + 120) = 0;
            *(v16 + 128) = 0;
LABEL_77:
            xmlFreeParserCtxt(v16);
            *p_intSubset = 0;
            p_intSubset[1] = 0;
            xmlFreeDoc(v19);
            return v14;
          }

          xmlFreeParserCtxt(v16);
        }

        else
        {
          return 27;
        }
      }
    }
  }

  return v14;
}

void xmlParseDocTypeDecl(xmlParserCtxtPtr ctxt)
{
  publicID = 0;
  input = ctxt->input;
  cur = input->cur;
  input->cur = cur + 9;
  input->col += 9;
  if (!cur[9])
  {
    xmlParserInputGrow(input, 250);
  }

  xmlSkipBlankChars(ctxt);
  v4 = xmlParseName(ctxt);
  if (!v4)
  {
    xmlFatalErrMsg(ctxt, 68, "xmlParseDocTypeDecl : no DOCTYPE name !\n");
  }

  ctxt->intSubName = v4;
  xmlSkipBlankChars(ctxt);
  v5 = xmlParseExternalID(ctxt, &publicID, 1);
  v6 = v5;
  v7 = publicID;
  if (v5 | publicID)
  {
    ctxt->hasExternalSubset = 1;
  }

  ctxt->extSubURI = v5;
  ctxt->extSubSystem = v7;
  xmlSkipBlankChars(ctxt);
  if (ctxt->sax)
  {
    internalSubset = ctxt->sax->internalSubset;
    if (internalSubset)
    {
      if (!ctxt->disableSAX)
      {
        (internalSubset)(ctxt->userData, v4, v7, v6);
      }
    }
  }

  if (ctxt->instate != XML_PARSER_EOF)
  {
    v9 = *ctxt->input->cur;
    if (v9 != 62)
    {
      if (v9 == 91)
      {
        return;
      }

      xmlFatalErr(ctxt, 61, 0);
    }

    xmlNextChar(ctxt);
  }
}

const xmlChar *__cdecl xmlParseAttribute(xmlParserCtxtPtr ctxt, xmlChar **value)
{
  *value = 0;
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  v4 = xmlParseName(ctxt);
  if (v4)
  {
    xmlSkipBlankChars(ctxt);
    if (*ctxt->input->cur == 61)
    {
      xmlNextChar(ctxt);
      xmlSkipBlankChars(ctxt);
      if (ctxt->input)
      {
        v5 = xmlParseAttValueInternal(ctxt, 0, 0, 0);
      }

      else
      {
        v5 = 0;
      }

      ctxt->instate = XML_PARSER_CONTENT;
      if (ctxt->pedantic && xmlStrEqual(v4, "xml:lang") && !xmlCheckLanguageID(v5))
      {
        xmlWarningMsg(ctxt, 98, "Malformed value for xml:lang : %s\n", v5);
      }

      if (xmlStrEqual(v4, "xml:space"))
      {
        if (xmlStrEqual(v5, "default"))
        {
          *ctxt->space = 0;
        }

        else if (xmlStrEqual(v5, "preserve"))
        {
          *ctxt->space = 1;
        }

        else
        {
          xmlWarningMsg(ctxt, 102, "Invalid value %s for xml:space : default or preserve expected\n", v5);
        }
      }

      *value = v5;
    }

    else
    {
      xmlFatalErrMsgStr(ctxt, 41, "Specification mandates value for attribute %s\n", v4);
      return 0;
    }
  }

  else
  {
    xmlFatalErrMsg(ctxt, 68, "error parsing attribute name\n");
  }

  return v4;
}

_DWORD *xmlErrAttributeDup(_DWORD *result, const xmlChar *a2, xmlChar *a3)
{
  v3 = result;
  if (result)
  {
    if (result[83] && result[68] == -1)
    {
      return result;
    }

    result[34] = 42;
  }

  if (a2)
  {
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, 42, 3, 0, 0, a2, a3, 0, 0, 0, "Attribute %s:%s redefined\n", a2);
  }

  else
  {
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, 42, 3, 0, 0, a3, 0, 0, 0, 0, "Attribute %s redefined\n", a3);
  }

  if (v3)
  {
    v3[6] = 0;
    if (!v3[112])
    {
      v3[83] = 1;
    }
  }

  return result;
}

xmlParserInput *xmlParseEndTag1(xmlParserCtxt *a1)
{
  if (!a1->progressive && a1->input->end - a1->input->cur <= 249)
  {
    xmlGROW(a1);
  }

  input = a1->input;
  cur = input->cur;
  if (*cur == 60 && cur[1] == 47)
  {
    input->cur = cur + 2;
    input->col += 2;
    if (!cur[2])
    {
      xmlParserInputGrow(input, 250);
    }

    v4 = xmlParseNameAndCompare(a1, a1->name);
    if (!a1->progressive && a1->input->end - a1->input->cur <= 249)
    {
      xmlGROW(a1);
    }

    xmlSkipBlankChars(a1);
    result = a1->input;
    v6 = result->cur;
    if (*v6 == 62)
    {
      ++result->col;
      result->cur = v6 + 1;
      if (!v6[1])
      {
        result = xmlParserInputGrow(result, 250);
      }
    }

    else
    {
      result = xmlFatalErr(a1, 73, 0);
    }

    if (v4 != 1)
    {
      if (v4)
      {
        v7 = v4;
      }

      else
      {
        v7 = "unparsable";
      }

      result = xmlFatalErrMsgStrIntStr(a1, 76, "Opening and ending tag mismatch: %s line %d and %s\n", a1->name, 0, v7);
    }

    if (a1->sax)
    {
      endElement = a1->sax->endElement;
      if (endElement)
      {
        if (!a1->disableSAX)
        {
          result = endElement(a1->userData, a1->name);
        }
      }
    }

    nameNr = a1->nameNr;
    if (nameNr >= 1)
    {
      nameTab = a1->nameTab;
      v11 = nameNr - 1;
      a1->nameNr = nameNr - 1;
      if (nameNr == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = nameTab[nameNr - 2];
      }

      a1->name = v12;
      nameTab[v11] = 0;
    }

    spaceNr = a1->spaceNr;
    if (spaceNr >= 1)
    {
      spaceTab = a1->spaceTab;
      v15 = &spaceTab[spaceNr - 2];
      v16 = spaceNr - 1;
      a1->spaceNr = v16;
      if (!v16)
      {
        v15 = spaceTab;
      }

      a1->space = v15;
      spaceTab[v16] = -1;
    }
  }

  else
  {

    return xmlFatalErrMsg(a1, 74, "xmlParseEndTag: '</' not found\n");
  }

  return result;
}

void xmlParseCDSect(xmlParserCtxtPtr ctxt)
{
  *len = 0;
  v35 = 0;
  if ((ctxt->options & 0x80000) != 0)
  {
    v2 = 1000000000;
  }

  else
  {
    v2 = 10000000;
  }

  input = ctxt->input;
  cur = input->cur;
  if (*cur != 60 || cur[1] != 33 || cur[2] != 91 || cur[3] != 67 || cur[4] != 68 || cur[5] != 65 || cur[6] != 84 || cur[7] != 65 || cur[8] != 91)
  {
    return;
  }

  input->cur = cur + 9;
  input->col += 9;
  if (!cur[9])
  {
    xmlParserInputGrow(input, 250);
  }

  ctxt->instate = XML_PARSER_CDATA_SECTION;
  v5 = xmlCurrentChar(ctxt, &len[1]);
  v6 = v5;
  if (v5 > 255)
  {
    if (v5 >> 11 >= 0x1B && (v5 - 57344) >> 1 >= 0xFFF && (v5 - 0x10000) >= 0x100000)
    {
      goto LABEL_36;
    }
  }

  else if (v5 <= 31 && (v5 > 0xD || ((1 << v5) & 0x2600) == 0))
  {
    goto LABEL_36;
  }

  v7 = ctxt->input;
  v8 = v7->cur;
  v9 = &v8[len[1]];
  if (v9 <= v7->end)
  {
    if (*v8 == 10)
    {
      ++v7->line;
      v7->col = 1;
    }

    else
    {
      ++v7->col;
    }

    v7->cur = v9;
  }

  v10 = xmlCurrentChar(ctxt, len);
  v11 = v10;
  if (v10 > 255)
  {
    if (v10 >> 11 >= 0x1B && (v10 - 57344) >> 1 >= 0xFFF && (v10 - 0x10000) >= 0x100000)
    {
      goto LABEL_36;
    }
  }

  else if (v10 <= 31 && (v10 > 0xD || ((1 << v10) & 0x2600) == 0))
  {
LABEL_36:
    xmlFatalErr(ctxt, 63, 0);
    ctxt->instate = XML_PARSER_CONTENT;
    return;
  }

  v12 = ctxt->input;
  v13 = v12->cur;
  v14 = &v13[len[0]];
  if (v14 <= v12->end)
  {
    if (*v13 == 10)
    {
      ++v12->line;
      v12->col = 1;
    }

    else
    {
      ++v12->col;
    }

    v12->cur = v14;
  }

  v15 = xmlCurrentChar(ctxt, &v35);
  v16 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  if (!v16)
  {
LABEL_81:
    xmlErrMemory(ctxt, 0);
    return;
  }

  v17 = v16;
  v18 = 0;
  v19 = 0;
  LODWORD(v20) = 100;
  while (v15 > 255)
  {
    if (v15 >> 11 >= 0x1B && (v15 - 57344) >> 1 >= 0xFFF && (v15 - 0x10000) >= 0x100000)
    {
LABEL_82:
      v17[v18] = 0;
      ctxt->instate = XML_PARSER_CONTENT;
      xmlFatalErrMsgStr(ctxt, 63, "CData section not finished\n%.50s\n", v17);
      goto LABEL_83;
    }

LABEL_56:
    if (v18 + 5 >= v20)
    {
      if (v20 >> 27 || (v20 = (2 * v20), (v21 = malloc_type_realloc(v17, v20, 0x100004077774924uLL)) == 0))
      {
        free(v17);
        goto LABEL_81;
      }

      v17 = v21;
    }

    if (len[1] == 1)
    {
      v17[v18] = v6;
      v18 = (v18 + 1);
    }

    else
    {
      v18 = (xmlCopyCharMultiByte(&v17[v18], v6) + v18);
    }

    v23 = v35;
    v22 = len[0];
    len[0] = v35;
    len[1] = v22;
    if (v19 < 50)
    {
      ++v19;
    }

    else
    {
      if (!ctxt->progressive)
      {
        v24 = ctxt->input;
        v25 = v24->cur;
        if (v25 - v24->base < 501 || v24->end - v25 > 499 || (xmlSHRINK(ctxt), !ctxt->progressive))
        {
          if (ctxt->input->end - ctxt->input->cur <= 249)
          {
            xmlGROW(ctxt);
          }
        }
      }

      if (ctxt->instate == XML_PARSER_EOF)
      {
        goto LABEL_83;
      }

      v19 = 0;
      v23 = v35;
    }

    v26 = ctxt->input;
    v27 = v26->cur;
    v28 = &v27[v23];
    if (v28 <= v26->end)
    {
      if (*v27 == 10)
      {
        ++v26->line;
        v29 = 1;
      }

      else
      {
        v29 = v26->col + 1;
      }

      v26->col = v29;
      v26->cur = v28;
    }

    v6 = v11;
    v11 = v15;
    v15 = xmlCurrentChar(ctxt, &v35);
    if (v18 > v2)
    {
      xmlFatalErrMsg(ctxt, 63, "CData section too big found\n");
      goto LABEL_83;
    }
  }

  if (v15 <= 31)
  {
    if (v15 > 0xD || ((1 << v15) & 0x2600) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_56;
  }

  if (v6 != 93 || v11 != 93 || v15 != 62)
  {
    goto LABEL_56;
  }

  v17[v18] = 0;
  ctxt->instate = XML_PARSER_CONTENT;
  v30 = ctxt->input;
  v31 = v30->cur;
  v32 = &v31[v35];
  if (v32 <= v30->end)
  {
    if (*v31 == 10)
    {
      ++v30->line;
      v30->col = 1;
    }

    else
    {
      ++v30->col;
    }

    v30->cur = v32;
  }

  sax = ctxt->sax;
  if (ctxt->sax)
  {
    if (!ctxt->disableSAX)
    {
      cdataBlock = sax->cdataBlock;
      if (cdataBlock || (cdataBlock = sax->characters) != 0)
      {
        cdataBlock(ctxt->userData, v17, v18);
      }
    }
  }

LABEL_83:
  free(v17);
}

void xmlParseContent(xmlParserCtxtPtr ctxt)
{
  nameNr = ctxt->nameNr;
  xmlParseContentInternal(ctxt);
  if (ctxt->instate != XML_PARSER_EOF)
  {
    v3 = ctxt->nameNr;
    if (v3 > nameNr)
    {
      v4 = v3 - 1;
      v5 = ctxt->nameTab[v4];
      v6 = *(ctxt->pushTab + 6 * v4 + 4);

      xmlFatalErrMsgStrIntStr(ctxt, 77, "Premature end of data in tag %s line %d\n", v5, v6, 0);
    }
  }
}

_DWORD *xmlFatalErrMsgStrIntStr(_DWORD *result, int a2, const char *a3, const xmlChar *a4, int a5, xmlChar *cur)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 3, 0, 0, a4, cur, 0, a5, 0, a3, a4);
  }

  v6 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a4, cur, 0, a5, 0, a3, a4);
    v6[6] = 0;
    if (!v6[112])
    {
      v6[83] = 1;
    }
  }

  return result;
}

void xmlParseInternalSubset(uint64_t a1)
{
  v2 = **(*(a1 + 56) + 32);
  if (v2 == 91)
  {
    v3 = *(a1 + 64);
    *(a1 + 272) = 3;
    xmlNextChar(a1);
    while (1)
    {
      v4 = *(a1 + 56);
      v5 = *(v4 + 32);
      v2 = *v5;
      if (v2 == 93 && *(a1 + 64) <= v3)
      {
        break;
      }

      if (*(a1 + 272) == -1)
      {
        goto LABEL_17;
      }

      v6 = *(v4 + 64);
      xmlSkipBlankChars(a1);
      xmlParseMarkupDecl(a1);
      xmlParsePEReference(a1);
      v7 = *(a1 + 56);
      if (*(a1 + 64) >= 2)
      {
        if (v7[1])
        {
          v8 = v7[4];
          if (*v8 == 60 && v8[1] == 33 && v8[2] == 91)
          {
            xmlParseConditionalSections(a1);
            v7 = *(a1 + 56);
          }
        }
      }

      if (v7[4] == v5 && v6 == v7[8])
      {
        xmlFatalErr(a1, 1, "xmlParseInternalSubset: error detected in Markup declaration\n");
        if (*(a1 + 64) <= v3)
        {
          v2 = **(*(a1 + 56) + 32);
LABEL_17:
          if (v2 != 93)
          {
            goto LABEL_19;
          }

          break;
        }

        xmlPopInput(a1);
      }
    }

    xmlNextChar(a1);
    xmlSkipBlankChars(a1);
    v2 = **(*(a1 + 56) + 32);
  }

LABEL_19:
  if (v2 == 62)
  {

    xmlNextChar(a1);
  }

  else
  {

    xmlFatalErr(a1, 61, 0);
  }
}

void xmlCleanSpecialAttr(void *data)
{
  v2 = *(data + 69);
  if (v2)
  {
    xmlHashScanFull(v2, xmlCleanSpecialAttrCallback, data);
    if (!xmlHashSize(*(data + 69)))
    {
      xmlHashFree(*(data + 69), 0);
      *(data + 69) = 0;
    }
  }
}

int xmlParseExtParsedEnt(xmlParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return -1;
  }

  if (!ctxt->input)
  {
    return -1;
  }

  xmlDefaultSAXHandlerInit();
  xmlDetectSAX2(ctxt);
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  if (ctxt->sax)
  {
    setDocumentLocator = ctxt->sax->setDocumentLocator;
    if (setDocumentLocator)
    {
      userData = ctxt->userData;
      v4 = __xmlDefaultSAXLocator();
      (setDocumentLocator)(userData, v4);
    }
  }

  *in = 0;
  cur = ctxt->input->cur;
  if (ctxt->input->end - cur >= 4)
  {
    *in = *cur;
    v6 = xmlDetectCharEncoding(in, 4);
    if (v6)
    {
      xmlSwitchEncoding(ctxt, v6);
    }
  }

  input = ctxt->input;
  if (!*input->cur)
  {
    xmlFatalErr(ctxt, 4, 0);
    input = ctxt->input;
  }

  if (!ctxt->progressive && input->end - input->cur <= 249)
  {
    xmlGROW(ctxt);
    input = ctxt->input;
  }

  v8 = input->cur;
  if (*v8 != 60 || v8[1] != 63 || v8[2] != 120 || v8[3] != 109 || v8[4] != 108 || (v9 = v8[5], v9 > 0x20) || ((1 << v9) & 0x100002600) == 0)
  {
    ctxt->version = xmlCharStrdup("1.0");
    goto LABEL_27;
  }

  xmlParseXMLDecl(ctxt);
  if (ctxt->errNo == 32)
  {
    return -1;
  }

  xmlSkipBlankChars(ctxt);
LABEL_27:
  if (ctxt->sax)
  {
    startDocument = ctxt->sax->startDocument;
    if (startDocument)
    {
      if (!ctxt->disableSAX)
      {
        (startDocument)(ctxt->userData);
      }
    }
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  ctxt->instate = XML_PARSER_CONTENT;
  ctxt->validate = 0;
  ctxt->loadsubset = 0;
  ctxt->depth = 0;
  xmlParseContent(ctxt);
  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  v11 = ctxt->input->cur;
  if (*v11)
  {
    if (*v11 == 60 && v11[1] == 47)
    {
      v12 = 85;
    }

    else
    {
      v12 = 86;
    }

    xmlFatalErr(ctxt, v12, 0);
  }

  if (ctxt->sax)
  {
    endDocument = ctxt->sax->endDocument;
    if (endDocument)
    {
      (endDocument)(ctxt->userData);
    }
  }

  if (ctxt->wellFormed)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

xmlParserCtxtPtr xmlCreateIOParserCtxt(xmlSAXHandlerPtr sax, void *user_data, xmlInputReadCallback ioread, xmlInputCloseCallback ioclose, void *ioctx, xmlCharEncoding enc)
{
  if (!ioread)
  {
    return 0;
  }

  v8 = ioclose;
  IO = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, enc);
  if (IO)
  {
    v12 = IO;
    v13 = xmlNewParserCtxt();
    v8 = v13;
    if (v13)
    {
      if (sax)
      {
        v14 = v13->sax;
        if (v14 != __xmlDefaultSAXHandler())
        {
          free(v8->sax);
        }

        v15 = malloc_type_malloc(0x100uLL, 0x1080040AADF51B8uLL);
        v8->sax = v15;
        if (!v15)
        {
          xmlFreeParserInputBuffer(v12);
          xmlErrMemory(v8, 0);
          goto LABEL_20;
        }

        *&v15->_private = 0u;
        *&v15->endElementNs = 0u;
        *&v15->getParameterEntity = 0u;
        *&v15->externalSubset = 0u;
        *&v15->comment = 0u;
        *&v15->error = 0u;
        *&v15->reference = 0u;
        *&v15->ignorableWhitespace = 0u;
        *&v15->startDocument = 0u;
        *&v15->startElement = 0u;
        *&v15->attributeDecl = 0u;
        *&v15->unparsedEntityDecl = 0u;
        *&v15->resolveEntity = 0u;
        *&v15->entityDecl = 0u;
        *&v15->internalSubset = 0u;
        *&v15->hasInternalSubset = 0u;
        if (sax->initialized == -554844497)
        {
          v16 = 256;
        }

        else
        {
          v16 = 224;
        }

        memcpy(v8->sax, sax, v16);
        if (user_data)
        {
          v8->userData = user_data;
        }
      }

      v17 = xmlNewIOInputStream(v8, v12, enc);
      if (!v17)
      {
LABEL_20:
        xmlFreeParserCtxt(v8);
        return 0;
      }

      v18 = v17;
      if (inputPush(v8, v17) < 0)
      {
        xmlFreeInputStream(v18);
        goto LABEL_20;
      }
    }

    else
    {
      xmlFreeParserInputBuffer(v12);
    }
  }

  else if (v8)
  {
    (v8)(ioctx);
    return 0;
  }

  return v8;
}

xmlDtdPtr xmlIOParseDTD(xmlSAXHandlerPtr sax, xmlParserInputBufferPtr input, xmlCharEncoding enc)
{
  if (!input)
  {
    return 0;
  }

  v6 = xmlNewParserCtxt();
  if (!v6)
  {
    xmlFreeParserInputBuffer(input);
    return 0;
  }

  v7 = v6;
  v6->options |= 4u;
  if (sax)
  {
    v8 = v6->sax;
    if (v7->sax)
    {
      free(v8);
    }

    v7->sax = sax;
    v7->userData = v7;
  }

  xmlDetectSAX2(v7);
  v9 = xmlNewIOInputStream(v7, input, XML_CHAR_ENCODING_NONE);
  if (!v9)
  {
    if (sax)
    {
      v7->sax = 0;
    }

    xmlFreeParserInputBuffer(input);
    goto LABEL_28;
  }

  v10 = v9;
  if (xmlPushInput(v7, v9) < 0)
  {
    if (sax)
    {
      v7->sax = 0;
    }

LABEL_28:
    xmlFreeParserCtxt(v7);
    return 0;
  }

  if (enc)
  {
    xmlSwitchEncoding(v7, enc);
  }

  v10->filename = 0;
  *&v10->line = 0x100000001;
  cur = v7->input->cur;
  v10->base = cur;
  v10->cur = cur;
  v10->free = 0;
  v7->inSubset = 2;
  v12 = xmlNewDoc("1.0");
  v7->myDoc = v12;
  if (!v12)
  {
    xmlErrMemory(v7, "New Doc failed");
    return 0;
  }

  *in = 0;
  v12->properties = v12->properties & 0x78000000 | 0x40;
  v7->myDoc->extSubset = xmlNewDtd(v12, "none", "none", "none");
  if (enc == XML_CHAR_ENCODING_NONE)
  {
    v13 = v7->input->cur;
    if (v7->input->end - v13 >= 4)
    {
      *in = *v13;
      v14 = xmlDetectCharEncoding(in, 4);
      if (v14)
      {
        xmlSwitchEncoding(v7, v14);
      }
    }
  }

  xmlParseExternalSubset(v7, "none", "none");
  myDoc = v7->myDoc;
  if (myDoc)
  {
    if (v7->wellFormed)
    {
      extSubset = myDoc->extSubset;
      myDoc->extSubset = 0;
      if (extSubset)
      {
        extSubset->doc = 0;
        for (i = extSubset->children; i; i = i->next)
        {
          i->doc = 0;
        }
      }
    }

    else
    {
      extSubset = 0;
    }

    xmlFreeDoc(myDoc);
    v7->myDoc = 0;
  }

  else
  {
    extSubset = 0;
  }

  if (sax)
  {
    v7->sax = 0;
  }

  xmlFreeParserCtxt(v7);
  return extSubset;
}

xmlDtdPtr xmlSAXParseDTD(xmlSAXHandlerPtr sax, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (!(ExternalID | SystemID))
  {
    return 0;
  }

  v6 = xmlNewParserCtxt();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v6->options |= 4u;
  if (sax)
  {
    v8 = v6->sax;
    if (v7->sax)
    {
      free(v8);
    }

    v7->sax = sax;
    v7->userData = v7;
  }

  v9 = xmlCanonicPath(SystemID);
  v10 = v9;
  if (SystemID && !v9)
  {
LABEL_9:
    xmlFreeParserCtxt(v7);
    return 0;
  }

  if (!v7->sax || (resolveEntity = v7->sax->resolveEntity) == 0 || (v12 = resolveEntity(v7->userData, ExternalID, v9)) == 0 || (v13 = v12, xmlPushInput(v7, v12) < 0))
  {
    if (sax)
    {
      v7->sax = 0;
    }

    xmlFreeParserCtxt(v7);
    if (v10)
    {
      free(v10);
    }

    return 0;
  }

  input = v7->input;
  cur = input->cur;
  if (input->end - cur >= 4)
  {
    v16 = xmlDetectCharEncoding(cur, 4);
    xmlSwitchEncoding(v7, v16);
  }

  if (v13->filename)
  {
    free(v10);
  }

  else
  {
    v13->filename = v10;
  }

  *&v13->line = 0x100000001;
  v19 = v7->input->cur;
  v13->base = v19;
  v13->cur = v19;
  v13->free = 0;
  v7->inSubset = 2;
  v20 = xmlNewDoc("1.0");
  v7->myDoc = v20;
  if (!v20)
  {
    xmlErrMemory(v7, "New Doc failed");
    if (sax)
    {
      v7->sax = 0;
    }

    goto LABEL_9;
  }

  v20->properties = v20->properties & 0x78000000 | 0x40;
  v7->myDoc->extSubset = xmlNewDtd(v20, "none", ExternalID, SystemID);
  xmlParseExternalSubset(v7, ExternalID, SystemID);
  myDoc = v7->myDoc;
  if (myDoc)
  {
    if (v7->wellFormed)
    {
      extSubset = myDoc->extSubset;
      myDoc->extSubset = 0;
      if (extSubset)
      {
        extSubset->doc = 0;
        for (i = extSubset->children; i; i = i->next)
        {
          i->doc = 0;
        }
      }
    }

    else
    {
      extSubset = 0;
    }

    xmlFreeDoc(myDoc);
    v7->myDoc = 0;
  }

  else
  {
    extSubset = 0;
  }

  if (sax)
  {
    v7->sax = 0;
  }

  xmlFreeParserCtxt(v7);
  return extSubset;
}

int xmlParseCtxtExternalEntity(xmlParserCtxtPtr ctx, const xmlChar *URL, const xmlChar *ID, xmlNodePtr *lst)
{
  if (!ctx)
  {
    return -1;
  }

  if (ctx->userData == ctx)
  {
    userData = 0;
  }

  else
  {
    userData = ctx->userData;
  }

  return xmlParseExternalEntityPrivate(ctx->myDoc, ctx, ctx->sax, userData, ctx->depth + 1, URL, ID, lst);
}

int xmlParseBalancedChunkMemoryRecover(xmlDocPtr doc, xmlSAXHandlerPtr sax, void *user_data, int depth, const xmlChar *string, xmlNodePtr *lst, int recover)
{
  if (depth > 40)
  {
    return 89;
  }

  if (lst)
  {
    *lst = 0;
  }

  if (!string)
  {
    return -1;
  }

  v15 = xmlStrlen(string);
  MemoryParserCtxt = xmlCreateMemoryParserCtxt(string, v15);
  if (!MemoryParserCtxt)
  {
    return -1;
  }

  v17 = MemoryParserCtxt;
  MemoryParserCtxt->userData = MemoryParserCtxt;
  if (sax)
  {
    v18 = MemoryParserCtxt->sax;
    MemoryParserCtxt->sax = sax;
    if (user_data)
    {
      MemoryParserCtxt->userData = user_data;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = xmlNewDoc("1.0");
  if (!v19)
  {
    xmlFreeParserCtxt(v17);
    return -1;
  }

  v20 = v19;
  v19->properties = v19->properties & 0x78000000 | 0x40;
  if (doc && doc->dict)
  {
    xmlDictFree(v17->dict);
    dict = doc->dict;
    v17->dict = dict;
    xmlDictReference(dict);
    v17->str_xml = xmlDictLookup(v17->dict, "xml", 3);
    v17->str_xmlns = xmlDictLookup(v17->dict, "xmlns", 5);
    v17->str_xml_ns = xmlDictLookup(v17->dict, "http://www.w3.org/XML/1998/namespace", 36);
    v17->dictNames = 1;
  }

  else
  {
    v17->recovery = 0;
    v17->replaceEntities = 0;
    v17->pedantic = 0;
    v17->keepBlanks = 1;
    v17->validate = 0;
    v17->options |= 0x1000u;
    v17->dictNames = 0;
    *&v17->loadsubset = 0x100000000;
    if (!doc)
    {
      goto LABEL_17;
    }
  }

  *&v20->intSubset = *&doc->intSubset;
LABEL_17:
  v22 = xmlNewDocNode(v20, 0, "pseudoroot", 0);
  if (!v22)
  {
    if (sax)
    {
      v17->sax = v18;
    }

    xmlFreeParserCtxt(v17);
    v20->intSubset = 0;
    v20->extSubset = 0;
    xmlFreeDoc(v20);
    return -1;
  }

  v23 = v22;
  xmlAddChild(v20, v22);
  nodePush(v17, v23);
  v17->myDoc = v20;
  if (doc)
  {
    v20->children->doc = doc;
    xmlSearchNsByHref(doc, doc, "http://www.w3.org/XML/1998/namespace");
    v20->oldNs = doc->oldNs;
  }

  v17->instate = XML_PARSER_CONTENT;
  v17->input_id = 2;
  v17->depth = depth;
  v17->validate = 0;
  v17->loadsubset = 0;
  xmlDetectSAX2(v17);
  if (doc)
  {
    children = doc->children;
    doc->children = 0;
    xmlParseContent(v17);
    doc->children = children;
  }

  else
  {
    xmlParseContent(v17);
  }

  cur = v17->input->cur;
  if (*cur)
  {
    if (*cur == 60 && cur[1] == 47)
    {
      v27 = 85;
    }

    else
    {
      v27 = 86;
    }

    xmlFatalErr(v17, v27, 0);
  }

  if (v17->node != v20->children)
  {
    xmlFatalErr(v17, 85, 0);
  }

  if (v17->wellFormed)
  {
    errNo = 0;
    if (!lst)
    {
      goto LABEL_49;
    }

LABEL_44:
    if (recover == 1 || !errNo)
    {
      v28 = v20->children->children;
      for (*lst = v28; v28; v28 = v28->next)
      {
        xmlSetTreeDoc(v28, doc);
        v28->parent = 0;
      }

      v20->children->children = 0;
    }

    goto LABEL_49;
  }

  if (v17->errNo <= 1u)
  {
    errNo = 1;
  }

  else
  {
    errNo = v17->errNo;
  }

  if (lst)
  {
    goto LABEL_44;
  }

LABEL_49:
  if (sax)
  {
    v17->sax = v18;
  }

  xmlFreeParserCtxt(v17);
  v20->intSubset = 0;
  v20->extSubset = 0;
  v20->oldNs = 0;
  xmlFreeDoc(v20);
  return errNo;
}

xmlDocPtr xmlSAXParseEntity(xmlSAXHandlerPtr sax, const char *filename)
{
  URLParserCtxt = xmlCreateURLParserCtxt(filename, 0);
  if (!URLParserCtxt)
  {
    return 0;
  }

  v4 = URLParserCtxt;
  if (sax)
  {
    v5 = URLParserCtxt->sax;
    if (v4->sax)
    {
      free(v5);
    }

    v4->sax = sax;
    v4->userData = 0;
  }

  xmlParseExtParsedEnt(v4);
  myDoc = v4->myDoc;
  if (!v4->wellFormed)
  {
    xmlFreeDoc(v4->myDoc);
    myDoc = 0;
    v4->myDoc = 0;
  }

  if (sax)
  {
    v4->sax = 0;
  }

  xmlFreeParserCtxt(v4);
  return myDoc;
}

xmlParserCtxt *xmlCreateEntityParserCtxtInternal(const xmlChar *a1, const char *a2, const xmlChar *a3, uint64_t a4)
{
  v8 = xmlNewParserCtxt();
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  if (a4)
  {
    v8->options = *(a4 + 564);
    v8->_private = *(a4 + 424);
    v8->input_id = *(a4 + 736) + 1;
  }

  if (!xmlStrcmp(a1, "-"))
  {
    a1 = "./-";
  }

  v10 = xmlBuildURI(a1, a3);
  if (v10)
  {
    v11 = v10;
    ExternalEntity = xmlLoadExternalEntity(v10, a2, v9);
    if (ExternalEntity)
    {
      v13 = ExternalEntity;
      if ((inputPush(v9, ExternalEntity) & 0x80000000) == 0)
      {
        if (!v9->directory)
        {
          Directory = xmlParserGetDirectory(v11);
          if (!v9->directory)
          {
            if (Directory)
            {
              v9->directory = Directory;
            }
          }
        }

        free(v11);
        return v9;
      }

      v18 = v13;
      goto LABEL_23;
    }

    free(v11);
LABEL_24:
    xmlFreeParserCtxt(v9);
    return 0;
  }

  v15 = xmlLoadExternalEntity(a1, a2, v9);
  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = v15;
  if (inputPush(v9, v15) < 0)
  {
    v18 = v16;
LABEL_23:
    xmlFreeInputStream(v18);
    goto LABEL_24;
  }

  if (!v9->directory)
  {
    v17 = xmlParserGetDirectory(a1);
    if (!v9->directory)
    {
      if (v17)
      {
        v9->directory = v17;
      }
    }
  }

  return v9;
}

xmlDocPtr xmlSAXParseFileWithData(xmlSAXHandlerPtr sax, const char *filename, int recovery, void *data)
{
  xmlInitParser();
  URLParserCtxt = xmlCreateURLParserCtxt(filename, 0);
  if (!URLParserCtxt)
  {
    return 0;
  }

  v9 = URLParserCtxt;
  if (sax)
  {
    v10 = URLParserCtxt->sax;
    if (v9->sax)
    {
      free(v10);
    }

    v9->sax = sax;
  }

  xmlDetectSAX2(v9);
  if (data)
  {
    v9->_private = data;
  }

  if (!v9->directory)
  {
    v9->directory = xmlParserGetDirectory(filename);
  }

  v9->recovery = recovery;
  xmlParseDocument(v9);
  myDoc = v9->myDoc;
  if (v9->wellFormed | recovery)
  {
    if (myDoc)
    {
      buf = v9->input->buf;
      if (buf)
      {
        compressed = buf->compressed;
        if (compressed >= 1)
        {
          compressed = 9;
        }

        myDoc->compression = compressed;
      }
    }
  }

  else
  {
    xmlFreeDoc(v9->myDoc);
    myDoc = 0;
    v9->myDoc = 0;
  }

  if (sax)
  {
    v9->sax = 0;
  }

  xmlFreeParserCtxt(v9);
  return myDoc;
}

xmlDocPtr xmlSAXParseDoc(xmlSAXHandlerPtr sax, const xmlChar *cur, int recovery)
{
  if (!cur)
  {
    return 0;
  }

  v6 = xmlStrlen(cur);
  MemoryParserCtxt = xmlCreateMemoryParserCtxt(cur, v6);
  if (!MemoryParserCtxt)
  {
    return 0;
  }

  v8 = MemoryParserCtxt;
  if (sax)
  {
    v9 = MemoryParserCtxt->sax;
    MemoryParserCtxt->sax = sax;
    MemoryParserCtxt->userData = 0;
  }

  else
  {
    v9 = 0;
  }

  xmlDetectSAX2(MemoryParserCtxt);
  xmlParseDocument(v8);
  myDoc = v8->myDoc;
  if (!(v8->wellFormed | recovery))
  {
    xmlFreeDoc(v8->myDoc);
    myDoc = 0;
    v8->myDoc = 0;
  }

  if (sax)
  {
    v8->sax = v9;
  }

  xmlFreeParserCtxt(v8);
  return myDoc;
}

void xmlSetupParserForBuffer(xmlParserCtxtPtr ctxt, const xmlChar *buffer, const char *filename)
{
  if (ctxt && buffer)
  {
    v6 = xmlNewInputStream(ctxt);
    if (v6)
    {
      v7 = v6;
      xmlClearParserCtxt(ctxt);
      if (filename)
      {
        v7->filename = xmlCanonicPath(filename);
      }

      v7->base = buffer;
      v7->cur = buffer;
      v7->end = &buffer[xmlStrlen(buffer)];
      if (inputPush(ctxt, v7) < 0)
      {
        xmlFreeInputStream(v7);

        xmlFreeParserCtxt(ctxt);
      }
    }

    else
    {
      xmlErrMemory(0, "parsing new buffer: out of memory\n");

      xmlClearParserCtxt(ctxt);
    }
  }
}

int xmlSAXUserParseFile(xmlSAXHandlerPtr sax, void *user_data, const char *filename)
{
  URLParserCtxt = xmlCreateURLParserCtxt(filename, 0);
  if (!URLParserCtxt)
  {
    return -1;
  }

  v6 = URLParserCtxt;
  v7 = URLParserCtxt->sax;
  if (v7 != __xmlDefaultSAXHandler())
  {
    free(v6->sax);
  }

  v6->sax = sax;
  xmlDetectSAX2(v6);
  if (user_data)
  {
    v6->userData = user_data;
  }

  xmlParseDocument(v6);
  if (v6->wellFormed)
  {
    errNo = 0;
    if (sax)
    {
LABEL_8:
      v6->sax = 0;
    }
  }

  else
  {
    if (v6->errNo)
    {
      errNo = v6->errNo;
    }

    else
    {
      errNo = -1;
    }

    if (sax)
    {
      goto LABEL_8;
    }
  }

  myDoc = v6->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
    v6->myDoc = 0;
  }

  xmlFreeParserCtxt(v6);
  return errNo;
}

int xmlSAXUserParseMemory(xmlSAXHandlerPtr sax, void *user_data, const char *buffer, int size)
{
  xmlInitParser();
  MemoryParserCtxt = xmlCreateMemoryParserCtxt(buffer, size);
  if (!MemoryParserCtxt)
  {
    return -1;
  }

  v9 = MemoryParserCtxt;
  v10 = MemoryParserCtxt->sax;
  if (v10 != __xmlDefaultSAXHandler())
  {
    free(v9->sax);
  }

  v9->sax = sax;
  xmlDetectSAX2(v9);
  if (user_data)
  {
    v9->userData = user_data;
  }

  xmlParseDocument(v9);
  if (v9->wellFormed)
  {
    errNo = 0;
    if (sax)
    {
LABEL_8:
      v9->sax = 0;
    }
  }

  else
  {
    if (v9->errNo)
    {
      errNo = v9->errNo;
    }

    else
    {
      errNo = -1;
    }

    if (sax)
    {
      goto LABEL_8;
    }
  }

  myDoc = v9->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
    v9->myDoc = 0;
  }

  xmlFreeParserCtxt(v9);
  return errNo;
}

xmlParserCtxtPtr xmlCreateDocParserCtxt(xmlParserCtxtPtr cur)
{
  if (cur)
  {
    v1 = cur;
    v2 = xmlStrlen(cur);

    return xmlCreateMemoryParserCtxt(v1, v2);
  }

  return cur;
}

void xmlCleanupParser(void)
{
  if (xmlParserInitialized == 1)
  {
    xmlCleanupCharEncodingHandlers();
    xmlCatalogCleanup();
    xmlDictCleanup();
    xmlCleanupInputCallbacks();
    xmlCleanupOutputCallbacks();
    xmlSchemaCleanupTypes();
    xmlRelaxNGCleanupTypes();
    xmlResetLastError();
    xmlCleanupGlobals();
    xmlCleanupThreads();
    xmlCleanupMemory();
    xmlParserInitialized = 0;
  }
}

void xmlCtxtReset(xmlParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return;
  }

  dict = ctxt->dict;
  inputNr = ctxt->inputNr;
  if (inputNr >= 1)
  {
    do
    {
      inputTab = ctxt->inputTab;
      v5 = inputNr - 1;
      ctxt->inputNr = inputNr - 1;
      if (inputNr == 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = inputTab[inputNr - 2];
      }

      ctxt->input = v6;
      v7 = inputTab[v5];
      inputTab[v5] = 0;
      if (!v7)
      {
        break;
      }

      xmlFreeInputStream(v7);
      inputNr = ctxt->inputNr;
    }

    while (inputNr > 0);
  }

  ctxt->inputNr = 0;
  ctxt->input = 0;
  ctxt->spaceNr = 0;
  spaceTab = ctxt->spaceTab;
  if (spaceTab)
  {
    *spaceTab = -1;
  }

  ctxt->space = spaceTab;
  ctxt->nodeNr = 0;
  ctxt->node = 0;
  ctxt->nameNr = 0;
  ctxt->name = 0;
  ctxt->nsNr = 0;
  version = ctxt->version;
  if (version)
  {
    if (dict)
    {
      if (xmlDictOwns(dict, version))
      {
        goto LABEL_15;
      }

      version = ctxt->version;
    }

    free(version);
  }

LABEL_15:
  ctxt->version = 0;
  encoding = ctxt->encoding;
  if (!encoding)
  {
    goto LABEL_20;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, encoding))
    {
      goto LABEL_20;
    }

    encoding = ctxt->encoding;
  }

  free(encoding);
LABEL_20:
  ctxt->encoding = 0;
  directory = ctxt->directory;
  if (!directory)
  {
    goto LABEL_25;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, directory))
    {
      goto LABEL_25;
    }

    directory = ctxt->directory;
  }

  free(directory);
LABEL_25:
  ctxt->directory = 0;
  extSubURI = ctxt->extSubURI;
  if (!extSubURI)
  {
    goto LABEL_30;
  }

  if (dict)
  {
    if (xmlDictOwns(dict, extSubURI))
    {
      goto LABEL_30;
    }

    extSubURI = ctxt->extSubURI;
  }

  free(extSubURI);
LABEL_30:
  ctxt->extSubURI = 0;
  extSubSystem = ctxt->extSubSystem;
  if (extSubSystem)
  {
    if (!dict)
    {
LABEL_34:
      free(extSubSystem);
      goto LABEL_35;
    }

    if (!xmlDictOwns(dict, extSubSystem))
    {
      extSubSystem = ctxt->extSubSystem;
      goto LABEL_34;
    }
  }

LABEL_35:
  ctxt->extSubSystem = 0;
  myDoc = ctxt->myDoc;
  if (myDoc)
  {
    xmlFreeDoc(myDoc);
  }

  ctxt->myDoc = 0;
  *&ctxt->standalone = 0xFFFFFFFFLL;
  *&ctxt->instate = 0;
  ctxt->wellFormed = 1;
  ctxt->nsWellFormed = 1;
  *&ctxt->disableSAX = 0;
  *&ctxt->hasExternalSubset = xmmword_1C79BAA30;
  ctxt->record_info = 0;
  ctxt->checkIndex = 0;
  ctxt->errNo = 0;
  ctxt->depth = 0;
  ctxt->charset = 1;
  ctxt->catalogs = 0;
  ctxt->sizeentcopy = 0;
  *&ctxt->nbentities = 0u;
  xmlInitNodeInfoSeq(&ctxt->node_seq);
  attsDefault = ctxt->attsDefault;
  if (attsDefault)
  {
    xmlHashFree(attsDefault, xmlHashDefaultDeallocator);
    ctxt->attsDefault = 0;
  }

  attsSpecial = ctxt->attsSpecial;
  if (attsSpecial)
  {
    xmlHashFree(attsSpecial, 0);
    ctxt->attsSpecial = 0;
  }

  catalogs = ctxt->catalogs;
  if (catalogs)
  {
    xmlCatalogFreeLocal(catalogs);
  }

  if (ctxt->lastError.code)
  {

    xmlResetError(&ctxt->lastError);
  }
}

int xmlCtxtResetPush(xmlParserCtxtPtr ctxt, const char *chunk, int size, const char *filename, const char *encoding)
{
  if (!ctxt)
  {
    return 1;
  }

  v10 = XML_CHAR_ENCODING_NONE;
  if (chunk && size >= 4 && !encoding)
  {
    v10 = xmlDetectCharEncoding(chunk, size);
  }

  v11 = xmlAllocParserInputBuffer(v10);
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  xmlCtxtReset(ctxt);
  if (filename)
  {
    ctxt->directory = xmlParserGetDirectory(filename);
    v13 = xmlNewInputStream(ctxt);
    if (v13)
    {
      v14 = v13;
      v15 = xmlCanonicPath(filename);
      goto LABEL_13;
    }

LABEL_24:
    xmlFreeParserInputBuffer(v12);
    return 1;
  }

  ctxt->directory = 0;
  v17 = xmlNewInputStream(ctxt);
  if (!v17)
  {
    goto LABEL_24;
  }

  v14 = v17;
  v15 = 0;
LABEL_13:
  v14->buf = v12;
  v14->filename = v15;
  xmlBufResetInput(v12->buffer, v14);
  if (inputPush(ctxt, v14) < 0)
  {
    xmlFreeInputStream(v14);
    xmlFreeParserCtxt(ctxt);
    return 1;
  }

  if (chunk)
  {
    if (size >= 1)
    {
      input = ctxt->input;
      if (input)
      {
        if (input->buf)
        {
          InputBase = xmlBufGetInputBase(input->buf->buffer, input);
          v20 = ctxt->input;
          v21 = v20->cur - v20->base;
          xmlParserInputBufferPush(v20->buf, size, chunk);
          xmlBufSetInputBaseCur(ctxt->input->buf->buffer, &ctxt->input->buf, InputBase, v21);
        }
      }
    }
  }

  if (encoding)
  {
    v22 = ctxt->encoding;
    if (v22)
    {
      free(v22);
    }

    ctxt->encoding = xmlStrdup(encoding);
    CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
    if (CharEncodingHandler)
    {
      xmlSwitchToEncoding(ctxt, CharEncodingHandler);
    }

    else
    {
      xmlFatalErrMsgStr(ctxt, 32, "Unsupported encoding %s\n", encoding);
    }
  }

  else if (v10)
  {
    xmlSwitchEncoding(ctxt, v10);
  }

  return 0;
}

__n128 xmlIsNameStartChar(uint64_t a1, signed int val)
{
  if ((*(a1 + 566) & 2) != 0)
  {
    if (val > 255)
    {
      xmlCharInRange(val, &xmlIsBaseCharGroup);
    }
  }

  else if ((val > 0x3E || ((1 << val) & 0x4000800100000000) == 0) && (val & 0xFFFFFFDF) - 65 >= 0x1A && val != 58 && val != 95)
  {
    v3 = vdupq_n_s32(val);
    result.n128_u8[0] = vmaxv_u8(vmovn_s16(vuzp1q_s16(vcgtq_u32(xmmword_1C79BAB30, vaddq_s32(v3, xmmword_1C79BAB10)), vcgtq_u32(xmmword_1C79BAB40, vaddq_s32(v3, xmmword_1C79BAB20)))));
  }

  return result;
}

_DWORD *xmlNsWarn(_DWORD *result, const char *a2, const xmlChar *a3, xmlChar *a4)
{
  if (!result || !result[83] || result[68] != -1)
  {
    return __xmlRaiseError(0, 0, 0, result, 0, 3u, 100, 1, 0, 0, a3, a4, 0, 0, 0, a2, a3);
  }

  return result;
}

uint64_t xmlCleanSpecialAttrCallback(uint64_t result, uint64_t a2, xmlChar *name, xmlChar *name2)
{
  if (result == 1)
  {
    return xmlHashRemoveEntry2(*(a2 + 552), name, name2, 0);
  }

  return result;
}

uint64_t xmlCheckCdataPush(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  if (a1 && a2 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = (a1 + v4);
      v6 = *v5;
      if ((*v5 & 0x80000000) == 0)
      {
        if (v6 < 0x20 && (v6 > 0xD || ((1 << v6) & 0x2600) == 0))
        {
          return -v4;
        }

        v3 = v4 + 1;
        goto LABEL_11;
      }

      if ((v6 & 0xE0) == 0xC0)
      {
        v3 = v4 + 2;
        if (v3 > a2)
        {
          goto LABEL_54;
        }

        v8 = v5[1];
        if ((v8 & 0xC0) != 0x80)
        {
          return -v4;
        }

        v9 = (v6 & 0x1F) << 6;
        v11 = v9 > 0xFF;
        v10 = v8 & 0x3F | v9;
        v11 = v11 || v10 > 0x1F;
        if (!v11)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if ((v6 & 0xF0) == 0xE0)
        {
          v3 = v4 + 3;
          if (v3 > a2)
          {
            goto LABEL_54;
          }

          v12 = v5[1];
          if ((v12 & 0xC0) != 0x80)
          {
            return -v4;
          }

          v13 = v5[2];
          if ((v13 & 0xC0) != 0x80)
          {
            return -v4;
          }

          v14 = (v6 & 0xF) << 12;
          v15 = v14 | ((v12 & 0x3F) << 6);
          v10 = v15 | v13 & 0x3F;
          if (v15 > 0xFF)
          {
            if (v15 >> 11 >= 0x1B && (v14 < 0xE000 || v10 >= 0xFFFE))
            {
              return -v4;
            }

            goto LABEL_11;
          }

          if (v10 > 0x1F)
          {
            goto LABEL_11;
          }

LABEL_27:
          v11 = v10 > 0xD;
          v16 = (1 << v10) & 0x2600;
          if (v11 || v16 == 0)
          {
            return -v4;
          }

          goto LABEL_11;
        }

        if ((v6 & 0xF8) != 0xF0)
        {
          return -v4;
        }

        v3 = v4 + 4;
        if (v3 > a2)
        {
LABEL_54:
          if (a3)
          {
            return -v4;
          }

          else
          {
            return v4;
          }
        }

        v18 = v5[1];
        if ((v18 & 0xC0) != 0x80)
        {
          return -v4;
        }

        v19 = v5[2];
        if ((v19 & 0xC0) != 0x80)
        {
          return -v4;
        }

        v20 = v5[3];
        if ((v20 & 0xC0) != 0x80)
        {
          return -v4;
        }

        v21 = ((v6 & 7) << 18) | ((v18 & 0x3F) << 12);
        v22 = v21 & 0xFFFFF03F | ((v19 & 0x3F) << 6);
        v23 = v21 & 0xFFFFF000 | ((v19 & 0x3F) << 6) | v20 & 0x3F;
        if (v22 > 0xFF)
        {
          if (v22 >> 11 >= 0x1B)
          {
            v24 = v23 < 0xFFFE && v21 >> 13 > 6;
            if (!v24 && v21 - 0x10000 >= 0x100000)
            {
              return -v4;
            }
          }
        }

        else if (v23 <= 0x1F && (v23 > 0xD || ((1 << (((v19 & 0x3F) << 6) | v20 & 0x3F)) & 0x2600) == 0))
        {
          return -v4;
        }
      }

LABEL_11:
      v4 = v3;
    }

    while (v3 < a2);
  }

  return v3;
}

void xmlCheckVersion(int version)
{
  xmlInitParser();
  if ((version - 20000) >> 4 >= 0x271)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Fatal: program compiled against libxml %d using libxml %d\n", version / 10000, 2);
    fprintf(*MEMORY[0x1E69E9848], "Fatal: program compiled against libxml %d using libxml %d\n", version / 10000, 2);
  }

  if (version >= 21000)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Warning: program compiled against libxml %d using older %d\n", version / 0x64u, 209);
  }
}

_DWORD *xmlErrMemory(_DWORD *result, const xmlChar *a2)
{
  if (!result)
  {
    goto LABEL_5;
  }

  if (!result[83] || result[68] != -1)
  {
    result[34] = 2;
    result[68] = -1;
    result[83] = 1;
LABEL_5:
    if (a2)
    {
      return __xmlRaiseError(0, 0, 0, result, 0, 1u, 2, 3, 0, 0, a2, 0, 0, 0, 0 >> 96, "Memory allocation failed : %s\n", a2);
    }

    else
    {
      return __xmlRaiseError(0, 0, 0, result, 0, 1u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v2);
    }
  }

  return result;
}

_DWORD *__xmlErrEncoding(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 3, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  v5 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a4, a5, 0, 0, 0, a3, a4);
    v5[6] = 0;
    if (!v5[112])
    {
      v5[83] = 1;
    }
  }

  return result;
}

int xmlIsLetter(int c)
{
  if (c > 255)
  {
    v6 = xmlCharInRange(c, &xmlIsBaseCharGroup);
    v9 = (c - 19968) < 0x51A6 || (c - 12321) < 9 || c == 12295;
    return v6 || v9;
  }

  else
  {
    v3 = c > 247 || (c - 216) < 0x1F;
    v4 = (c & 0xFFFFFFDF) - 65 < 0x1A || v3;
    if ((c - 192) >= 0x17)
    {
      return v4;
    }

    else
    {
      return 1;
    }
  }
}

_DWORD *xmlErrInternal(_DWORD *result, const char *a2, const xmlChar *a3)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, 1, 3, 0, 0, a3, 0, 0, 0, 0, a2, a3);
  }

  v3 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = 1;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, 1, 3, 0, 0, a3, 0, 0, 0, 0, a2, a3);
    v3[6] = 0;
    if (!v3[112])
    {
      v3[83] = 1;
    }
  }

  return result;
}

_DWORD *xmlErrEncodingInt(_DWORD *result, const char *a2, int a3)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, 9, 3, 0, 0, 0, 0, 0, a3, 0, a2, a3);
  }

  v3 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = 9;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, 9, 3, 0, 0, 0, 0, 0, a3, 0, a2, a3);
    v3[6] = 0;
    if (!v3[112])
    {
      v3[83] = 1;
    }
  }

  return result;
}

int xmlStringCurrentChar(xmlParserCtxtPtr ctxt, const xmlChar *cur, int *len)
{
  v3 = 0;
  v26 = *MEMORY[0x1E69E9840];
  if (!cur || !len)
  {
    goto LABEL_7;
  }

  if (ctxt && ctxt->charset != 1 || (*cur & 0x80000000) == 0)
  {
LABEL_6:
    *len = 1;
    v3 = *cur;
    goto LABEL_7;
  }

  v9 = cur + 1;
  if ((cur[1] & 0xC0) != 0x80)
  {
    goto LABEL_34;
  }

  v10 = *cur;
  if ((~v10 & 0xE0) != 0)
  {
    *len = 2;
    v16 = (*cur & 0x1F) << 6;
    goto LABEL_23;
  }

  v9 = cur + 2;
  if ((cur[2] & 0xC0) != 0x80)
  {
    goto LABEL_34;
  }

  if ((~v10 & 0xF0) != 0)
  {
    *len = 3;
    v11 = (*cur & 0xF) << 12;
    v12 = cur[1];
    goto LABEL_22;
  }

  if ((v10 & 0xF8) != 0xF0 || (v9 = cur + 3, (cur[3] & 0xC0) != 0x80))
  {
LABEL_34:
    if (!ctxt || (input = ctxt->input) == 0 || (p_cur = &input->cur, v14 = input->cur, p_cur[1] - v14 <= 3))
    {
      v3 = 0;
      *len = 0;
      goto LABEL_7;
    }

    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    *__str = 0u;
    snprintf(__str, 0x95uLL, "Bytes: 0x%02X 0x%02X 0x%02X 0x%02X\n", *v14, v14[1], v14[2], v14[3]);
    __xmlErrEncoding(ctxt, 9, "Input is not proper UTF-8, indicate encoding !\n%s", __str, 0);
    goto LABEL_6;
  }

  *len = 4;
  v11 = ((*cur & 7) << 18) | ((cur[1] & 0x3F) << 12);
  v12 = cur[2];
LABEL_22:
  v16 = v11 & 0xFFFFF03F | ((v12 & 0x3F) << 6);
LABEL_23:
  v3 = v16 | *v9 & 0x3F;
  if (v3 > 0xFF)
  {
    if (v3 >> 11 >= 0x1B && (v3 - 57344) >> 1 >= 0xFFF && v3 - 0x10000 >= 0x100000)
    {
      goto LABEL_31;
    }
  }

  else if (v3 <= 0x1F && (v3 > 0xD || ((1 << v3) & 0x2600) == 0))
  {
LABEL_31:
    xmlErrEncodingInt(ctxt, "Char 0x%X out of allowed range\n", v3);
  }

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

xmlParserInputPtr xmlNewIOInputStream(xmlParserCtxtPtr ctxt, xmlParserInputBufferPtr input, xmlCharEncoding enc)
{
  if (!input)
  {
    return 0;
  }

  if (*__xmlParserDebugEntities())
  {
    v6 = *__xmlGenericError();
    v7 = __xmlGenericErrorContext();
    v6(*v7, "new input from I/O\n");
  }

  v8 = xmlNewInputStream(ctxt);
  v9 = v8;
  if (v8)
  {
    v8->buf = input;
    v8->filename = 0;
    xmlBufResetInput(input->buffer, v8);
    if (enc)
    {
      xmlSwitchEncoding(ctxt, enc);
    }
  }

  return v9;
}

xmlParserInputPtr xmlNewEntityInputStream(xmlParserCtxtPtr ctxt, xmlEntityPtr entity)
{
  v2 = ctxt;
  if (!entity)
  {
    v10 = "xmlNewEntityInputStream entity = NULL\n";
    name = 0;
LABEL_27:
    xmlErrInternal(ctxt, v10, name);
    return 0;
  }

  if (*__xmlParserDebugEntities())
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "new input from entity: %s\n", entity->name);
  }

  if (entity->content)
  {
    v6 = xmlNewInputStream(v2);
    if (v6)
    {
      URI = entity->URI;
      if (URI)
      {
        v6->filename = xmlStrdup(URI);
      }

      content = entity->content;
      v6->base = content;
      length = entity->length;
      if (!length)
      {
        length = xmlStrlen(content);
        entity->length = length;
        content = entity->content;
      }

      v6->length = length;
      v6->cur = content;
      v6->end = &content[length];
    }

    return v6;
  }

  v6 = 0;
  etype = entity->etype;
  if (etype > XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
  {
    if (etype == XML_INTERNAL_PARAMETER_ENTITY)
    {
      name = entity->name;
      v10 = "Internal parameter entity %s without content !\n";
      goto LABEL_26;
    }

    if (etype != XML_EXTERNAL_PARAMETER_ENTITY)
    {
      if (etype == XML_INTERNAL_PREDEFINED_ENTITY)
      {
        name = entity->name;
        v10 = "Predefined entity %s without content !\n";
        goto LABEL_26;
      }

      return v6;
    }
  }

  else
  {
    if (etype == XML_INTERNAL_GENERAL_ENTITY)
    {
      name = entity->name;
      v10 = "Internal entity %s without content !\n";
      goto LABEL_26;
    }

    if (etype != XML_EXTERNAL_GENERAL_PARSED_ENTITY)
    {
      if (etype == XML_EXTERNAL_GENERAL_UNPARSED_ENTITY)
      {
        name = entity->name;
        v10 = "Cannot parse entity %s\n";
LABEL_26:
        ctxt = v2;
        goto LABEL_27;
      }

      return v6;
    }
  }

  v13 = entity->URI;
  ExternalID = entity->ExternalID;

  return xmlLoadExternalEntity(v13, ExternalID, v2);
}

xmlParserInputPtr xmlNewStringInputStream(xmlParserCtxtPtr ctxt, const xmlChar *buffer)
{
  if (buffer)
  {
    if (*__xmlParserDebugEntities())
    {
      v4 = *__xmlGenericError();
      v5 = __xmlGenericErrorContext();
      v4(*v5, "new fixed input: %.30s\n", buffer);
    }

    v6 = xmlNewInputStream(ctxt);
    v7 = v6;
    if (v6)
    {
      v6->base = buffer;
      v6->cur = buffer;
      v8 = xmlStrlen(buffer);
      v7->length = v8;
      v7->end = &buffer[v8];
    }

    else
    {
      xmlErrMemory(ctxt, "couldn't allocate a new input stream\n");
    }
  }

  else
  {
    xmlErrInternal(ctxt, "xmlNewStringInputStream string = NULL\n", 0);
    return 0;
  }

  return v7;
}

xmlParserInputPtr xmlNewInputFromFile(xmlParserCtxtPtr ctxt, const char *filename)
{
  if (*__xmlParserDebugEntities())
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "new input from file: %s\n", filename);
  }

  if (!ctxt)
  {
    return 0;
  }

  v6 = xmlParserInputBufferCreateFilename(filename, XML_CHAR_ENCODING_NONE);
  if (!v6)
  {
    if (filename)
    {
      v16 = "failed to load external entity %s\n";
      v17 = ctxt;
      v18 = filename;
    }

    else
    {
      v16 = "failed to load external entity: NULL filename \n";
      v17 = ctxt;
      v18 = 0;
    }

    __xmlLoaderErr(v17, v16, v18);
    return 0;
  }

  v7 = v6;
  v8 = xmlNewInputStream(ctxt);
  if (!v8)
  {
    xmlFreeParserInputBuffer(v7);
    return 0;
  }

  v8->buf = v7;
  v9 = xmlCheckHTTPInput(ctxt, v8);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  if (v9->filename)
  {
    v11 = v9->filename;
  }

  else
  {
    v11 = filename;
  }

  v12 = xmlCanonicPath(v11);
  if (!v12)
  {
    __xmlLoaderErr(ctxt, "failed to get canonic path for URI.\n", 0);
    xmlFreeInputStream(v10);
    return 0;
  }

  v13 = v12;
  v14 = v10->filename;
  if (v14)
  {
    free(v14);
  }

  v10->filename = v13;
  Directory = xmlParserGetDirectory(v13);
  xmlBufResetInput(v10->buf->buffer, v10);
  if (ctxt->directory || !Directory)
  {
    if (Directory)
    {
      free(Directory);
    }
  }

  else
  {
    ctxt->directory = Directory;
  }

  return v10;
}

void xmlInitNodeInfoSeq(xmlParserNodeInfoSeqPtr seq)
{
  if (seq)
  {
    seq->maximum = 0;
    seq->length = 0;
    seq->buffer = 0;
  }
}

void xmlClearParserCtxt(xmlParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    buffer = ctxt->node_seq.buffer;
    if (buffer)
    {
      free(buffer);
    }

    ctxt->node_seq.maximum = 0;
    ctxt->node_seq.length = 0;
    ctxt->node_seq.buffer = 0;

    xmlCtxtReset(ctxt);
  }
}

void xmlClearNodeInfoSeq(xmlParserNodeInfoSeqPtr seq)
{
  if (seq)
  {
    buffer = seq->buffer;
    if (buffer)
    {
      free(buffer);
    }

    seq->maximum = 0;
    seq->length = 0;
    seq->buffer = 0;
  }
}

const xmlParserNodeInfo *__cdecl xmlParserFindNodeInfo(const xmlParserCtxtPtr ctxt, const xmlNodePtr node)
{
  result = 0;
  if (ctxt)
  {
    if (node)
    {
      NodeInfoIndex = xmlParserFindNodeInfoIndex(&ctxt->node_seq, node);
      if (NodeInfoIndex >= ctxt->node_seq.length)
      {
        return 0;
      }

      result = &ctxt->node_seq.buffer[NodeInfoIndex];
      if (result->node != node)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t xmlParserFindNodeInfoIndex(const xmlParserNodeInfoSeqPtr seq, const xmlNodePtr node)
{
  length = -1;
  if (seq)
  {
    if (node)
    {
      length = seq->length;
      if (length)
      {
        v3 = 1;
        do
        {
          v4 = v3 + ((length - v3) >> 1);
          v5 = seq->buffer[v4 - 1].node;
          if (v5 > node)
          {
            length = v4 - 1;
          }

          if (v5 < node)
          {
            v3 = v4 + 1;
          }
        }

        while (v3 <= length && v5 != node);
        if (v4)
        {
          if (seq->buffer[v4 - 1].node >= node)
          {
            return v4 - 1;
          }

          else
          {
            return v4;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return length;
}

void xmlParserAddNodeInfo(xmlParserCtxtPtr ctxt, const xmlParserNodeInfoPtr info)
{
  if (!ctxt || !info)
  {
    return;
  }

  node = info->node;
  NodeInfoIndex = xmlParserFindNodeInfoIndex(&ctxt->node_seq, info->node);
  v6 = NodeInfoIndex;
  length = ctxt->node_seq.length;
  if (NodeInfoIndex < length)
  {
    buffer = ctxt->node_seq.buffer;
    if (buffer)
    {
      v9 = &buffer[NodeInfoIndex];
      if (v9->node == node)
      {
        v20 = *&info->node;
        v21 = *&info->begin_line;
        v9->end_line = info->end_line;
        *&v9->node = v20;
        *&v9->begin_line = v21;
        return;
      }
    }
  }

  maximum = ctxt->node_seq.maximum;
  if (length + 1 <= maximum)
  {
    v11 = ctxt->node_seq.buffer;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  if (maximum)
  {
    if (maximum >= 0x3333334)
    {
      v12 = "detected unsigned wraparound \n";
LABEL_23:

      xmlErrMemory(ctxt, v12);
      return;
    }
  }

  else
  {
    LODWORD(maximum) = 2;
    ctxt->node_seq.maximum = 2;
  }

  v13 = ctxt->node_seq.buffer;
  if (!v13)
  {
    v11 = malloc_type_malloc((80 * maximum), 0x1060040A09B13B7uLL);
    if (v11)
    {
      goto LABEL_14;
    }

LABEL_22:
    v12 = "failed to allocate buffer\n";
    goto LABEL_23;
  }

  v11 = malloc_type_realloc(v13, (80 * maximum), 0x1060040A09B13B7uLL);
  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_14:
  ctxt->node_seq.buffer = v11;
  length = ctxt->node_seq.length;
  ctxt->node_seq.maximum *= 2;
LABEL_15:
  if (length > v6)
  {
    v14 = length;
    do
    {
      v15 = &ctxt->node_seq.buffer[v14];
      v16 = *&v15[-1].begin_line;
      *&v15->node = *&v15[-1].node;
      *&v15->begin_line = v16;
      v15->end_line = v15[-1].end_line;
      --length;
      --v14;
    }

    while (length > v6);
    v11 = ctxt->node_seq.buffer;
  }

  v17 = &v11[v6];
  v18 = *&info->node;
  v19 = *&info->begin_line;
  v17->end_line = info->end_line;
  *&v17->node = v18;
  *&v17->begin_line = v19;
  ++ctxt->node_seq.length;
}

int xmlPedanticParserDefault(int val)
{
  v2 = *__xmlPedanticParserDefaultValue();
  *__xmlPedanticParserDefaultValue() = val;
  return v2;
}

int xmlLineNumbersDefault(int val)
{
  v2 = *__xmlLineNumbersDefaultValue();
  *__xmlLineNumbersDefaultValue() = val;
  return v2;
}

int xmlSubstituteEntitiesDefault(int val)
{
  v2 = *__xmlSubstituteEntitiesDefaultValue();
  *__xmlSubstituteEntitiesDefaultValue() = val;
  return v2;
}

int xmlKeepBlanksDefault(int val)
{
  v2 = *__xmlKeepBlanksDefaultValue();
  *__xmlKeepBlanksDefaultValue() = val;
  if (!val)
  {
    *__xmlIndentTreeOutput() = 1;
  }

  return v2;
}

void xmlFreePatternList(xmlPatternPtr comp)
{
  if (comp)
  {
    v1 = comp;
    do
    {
      v2 = *(v1 + 2);
      *(v1 + 2) = 0;
      v3 = *(v1 + 7);
      if (v3)
      {
        xmlFreeStreamComp(v3);
      }

      v4 = *(v1 + 3);
      if (v4)
      {
        free(v4);
      }

      v5 = *(v1 + 6);
      if (v5)
      {
        if (!*(v1 + 1) && *(v1 + 9) >= 1)
        {
          v6 = 0;
          v7 = 0;
          do
          {
            v8 = *(v1 + 6) + v6;
            v9 = *(v8 + 8);
            if (v9)
            {
              free(v9);
            }

            v10 = *(v8 + 16);
            if (v10)
            {
              free(v10);
            }

            ++v7;
            v6 += 24;
          }

          while (v7 < *(v1 + 9));
          v5 = *(v1 + 6);
        }

        free(v5);
      }

      v11 = *(v1 + 1);
      if (v11)
      {
        xmlDictFree(v11);
      }

      *&v12 = -1;
      *(&v12 + 1) = -1;
      *(v1 + 2) = v12;
      *(v1 + 3) = v12;
      *v1 = v12;
      *(v1 + 1) = v12;
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void xmlFreeStreamCtxt(xmlStreamCtxtPtr stream)
{
  if (stream)
  {
    v1 = stream;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 4);
      if (v3)
      {
        free(v3);
      }

      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t xmlStreamPushInternal(uint64_t a1, xmlChar *a2, xmlChar *a3, int a4)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a1;
  v5 = 0xFFFFFFFFLL;
  if ((*(a1 + 16) & 0x80000000) == 0)
  {
    v7 = a3;
    v8 = a2;
    v9 = 0;
    v10 = 0;
    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4 == 1;
    }

    v13 = v11 && a3 == 0;
    v64 = a4 - 3;
    while (1)
    {
      v14 = 0;
      v15 = v10;
      v16 = v4;
      while (1)
      {
        v17 = *(v16 + 8);
        if (v13)
        {
          break;
        }

        if (*(v17 + 8))
        {
          if (*(v16 + 44) != -1 || v64 <= 0xFFFFFFFD && (*(v17 + 25) & 0x40) == 0)
          {
LABEL_79:
            ++*(v16 + 24);
            goto LABEL_17;
          }

          v60 = v10;
          v61 = v9;
          str2 = v8;
          v63 = v7;
          v19 = *(v16 + 16);
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = *(v17 + 24);
            do
            {
              v22 = *(v16 + 32);
              if ((v21 & 0x10000) != 0)
              {
                v25 = *(v22 + 4 * (2 * v20));
                if ((v25 & 0x80000000) != 0)
                {
                  goto LABEL_67;
                }

                v34 = *(v22 + 4 * ((2 * v20) | 1u));
                v24 = *(v16 + 24);
                if (v34 > v24)
                {
                  goto LABEL_67;
                }

                v26 = *(v17 + 16);
                if (v34 < v24 && (*(v26 + 32 * v25) & 1) == 0)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v23 = 2 * *(v16 + 16);
                v24 = *(v16 + 24);
                if (*(v22 + 4 * (v23 - 1)) < v24)
                {
                  return 0xFFFFFFFFLL;
                }

                LODWORD(v25) = *(v22 + 4 * (v23 - 2));
                v26 = *(v17 + 16);
                v20 = v19;
              }

              v27 = (v26 + 32 * v25);
              v28 = *v27;
              v29 = v27[6];
              if (v29 == a4)
              {
                if (a4 != 100)
                {
                  v30 = *(v27 + 1);
                  v31 = *(v27 + 2);
                  if (v30)
                  {
                    v32 = 1;
                    if (!str2 || (v63 == 0) == (v31 != 0))
                    {
                      goto LABEL_60;
                    }

                    if (*v30 != *str2)
                    {
                      goto LABEL_59;
                    }

                    v56 = v14;
                    v57 = v15;
                    if (!xmlStrEqual(v30, str2))
                    {
                      v32 = 1;
                      v14 = v56;
                      v15 = v57;
                      goto LABEL_60;
                    }

                    LODWORD(v15) = v57;
                    if (v31 != v63)
                    {
                      v33 = xmlStrEqual(v31, v63);
                      v14 = v56;
                      v15 = v57;
                      if (!v33)
                      {
                        goto LABEL_59;
                      }
                    }
                  }

                  else if (v31)
                  {
                    if (!v63)
                    {
                      goto LABEL_59;
                    }

                    v58 = v15;
                    v36 = v14;
                    v37 = xmlStrEqual(*(v27 + 2), v63);
                    v15 = v58;
                    if (!v37)
                    {
                      v14 = v36;
LABEL_59:
                      v32 = 1;
                      goto LABEL_60;
                    }
                  }
                }
              }

              else if (v29 != 100)
              {
                if (v29 != 2 || (v21 & 0x10000) != 0)
                {
                  goto LABEL_67;
                }

LABEL_65:
                *(v16 + 44) = v24 + 1;
                goto LABEL_67;
              }

              if ((v28 & 2) != 0)
              {
                v32 = 0;
                v14 = v28 & 2;
                v15 = 1;
              }

              else
              {
                v38 = v25 + 1;
                v39 = v15;
                xmlStreamCtxtAddState(v16, v38, *(v16 + 24) + 1);
                v32 = 0;
                if (v39 == 1)
                {
                  v15 = 1;
                }

                else
                {
                  v15 = (v28 >> 5) & 1;
                }

                v14 = 0;
              }

LABEL_60:
              v21 = *(v17 + 24);
              if ((v21 & 0x10000) == 0)
              {
                if (v14)
                {
                  v32 = 1;
                }

                if (v32 != 1)
                {
                  v14 = 0;
                  goto LABEL_67;
                }

                v24 = *(v16 + 24);
                goto LABEL_65;
              }

LABEL_67:
              ++v20;
            }

            while (v20 < v19);
          }

          v40 = *(v16 + 24);
          *(v16 + 24) = v40 + 1;
          v41 = *(v17 + 16);
          v42 = *v41;
          if ((*v41 & 4) != 0)
          {
            v9 = v61;
            v7 = v63;
          }

          else
          {
            v43 = *(v41 + 1);
            v44 = *(v41 + 2);
            v45 = v41[6];
            v46 = *(v16 + 40);
            v7 = v63;
            if ((v46 & 7) != 0)
            {
              if (v40)
              {
                if ((v42 & 1) == 0 && (v40 != 1 || (v46 & 6) == 0))
                {
                  goto LABEL_96;
                }
              }

              else if ((v46 & 6) != 0)
              {
                goto LABEL_96;
              }
            }

            if (v45 == a4)
            {
              if (a4 == 100)
              {
                goto LABEL_94;
              }

              if (v43)
              {
                if (!str2 || (v63 == 0) == (v44 != 0) || *v43 != *str2 || (v47 = v15, v48 = xmlStrEqual(v43, str2), v15 = v47, !v48) || v44 != v63 && (v49 = xmlStrEqual(v44, v63), v15 = v47, !v49))
                {
LABEL_106:
                  v14 = v42 & 2;
                  v50 = 1;
                  goto LABEL_107;
                }

LABEL_94:
                v14 = v42 & 2;
                if ((v42 & 2) != 0)
                {
LABEL_95:
                  v50 = 0;
                  v15 = 1;
                  goto LABEL_107;
                }

LABEL_102:
                v52 = v15;
                xmlStreamCtxtAddState(v16, 1, *(v16 + 24));
                v14 = 0;
                if (v52 == 1)
                {
                  v15 = 1;
                }

                else
                {
                  v15 = (v42 >> 5) & 1;
                }

                v50 = 0;
LABEL_107:
                v10 = v60;
                v9 = v61;
              }

              else
              {
                if (!v44)
                {
                  goto LABEL_94;
                }

                if (!v63)
                {
                  goto LABEL_106;
                }

                v59 = v15;
                v51 = xmlStrEqual(v44, v63);
                v14 = v42 & 2;
                if (v51)
                {
                  LODWORD(v15) = v59;
                  if ((v42 & 2) != 0)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_102;
                }

                v50 = 1;
                v10 = v60;
                v9 = v61;
                v15 = v59;
              }

              v8 = str2;
              if ((*(v17 + 26) & 1) == 0)
              {
                if (((v14 == 0) & ~v50) != 0)
                {
                  v14 = 0;
                }

                else
                {
                  *(v16 + 44) = *(v16 + 24);
                }
              }

              goto LABEL_17;
            }

            if (a4 != 2 && v45 == 100)
            {
              goto LABEL_94;
            }

LABEL_96:
            v9 = v61;
          }

          v8 = str2;
          v10 = v60;
          goto LABEL_17;
        }

        v18 = *(v16 + 40);
        if ((v18 & 1) == 0)
        {
          if (a4 != 2 && ((v18 & 6) == 0 || !*(v16 + 24)))
          {
            v15 = 1;
          }

          goto LABEL_79;
        }

LABEL_17:
        v16 = *v16;
        if (!v16)
        {
          LODWORD(v10) = v15;
LABEL_125:
          if (v9 > 0)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return v10;
          }
        }
      }

      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 44) = -1;
      if ((*(v17 + 25) & 0x80) != 0)
      {
        v53 = *(v17 + 8);
        if (v53)
        {
          if (v53 != 1)
          {
            v54 = *(v17 + 16);
LABEL_120:
            if ((*v54 & 4) != 0)
            {
              v9 += xmlStreamCtxtAddState(v4, 0, 0) >> 31;
            }

            goto LABEL_122;
          }

          v54 = *(v17 + 16);
          if (*(v54 + 24) != 100 || (*v54 & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        v10 = 1;
      }

LABEL_122:
      v4 = *v4;
      if (!v4)
      {
        goto LABEL_125;
      }
    }
  }

  return v5;
}