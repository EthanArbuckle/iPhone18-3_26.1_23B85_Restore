htmlDocPtr htmlReadFd(int fd, const char *URL, const char *encoding, int options)
{
  if (fd < 0)
  {
    return 0;
  }

  xmlInitParser();
  v8 = xmlParserInputBufferCreateFd(fd, XML_CHAR_ENCODING_NONE);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v8->closecallback = 0;
  v10 = htmlNewParserCtxt();
  if (!v10)
  {
    xmlFreeParserInputBuffer(v9);
    return 0;
  }

  v11 = v10;
  v12 = xmlNewIOInputStream(v10, v9, XML_CHAR_ENCODING_NONE);
  if (!v12)
  {
LABEL_11:
    xmlFreeParserInputBuffer(v9);
    xmlFreeParserCtxt(v11);
    return 0;
  }

  v13 = v12;
  if (inputPush(v11, v12) < 0)
  {
    xmlFreeInputStream(v13);
    goto LABEL_11;
  }

  return htmlDoRead(v11, URL, encoding, options, 0);
}

htmlDocPtr htmlReadIO(xmlInputReadCallback ioread, xmlInputCloseCallback ioclose, void *ioctx, const char *URL, const char *encoding, int options)
{
  if (!ioread)
  {
    return 0;
  }

  xmlInitParser();
  IO = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, XML_CHAR_ENCODING_NONE);
  if (!IO)
  {
    if (ioclose)
    {
      (ioclose)(ioctx);
    }

    return 0;
  }

  v13 = IO;
  v14 = htmlNewParserCtxt();
  if (!v14)
  {
    xmlFreeParserInputBuffer(v13);
    return 0;
  }

  v15 = v14;
  v16 = xmlNewIOInputStream(v14, v13, XML_CHAR_ENCODING_NONE);
  if (!v16)
  {
    xmlFreeParserInputBuffer(v13);
LABEL_14:
    xmlFreeParserCtxt(v15);
    return 0;
  }

  v17 = v16;
  if (inputPush(v15, v16) < 0)
  {
    xmlFreeInputStream(v17);
    goto LABEL_14;
  }

  return htmlDoRead(v15, URL, encoding, options, 0);
}

htmlDocPtr htmlCtxtReadDoc(xmlParserCtxtPtr ctxt, const xmlChar *cur, const char *URL, const char *encoding, int options)
{
  if (!ctxt)
  {
    return 0;
  }

  if (!cur)
  {
    return 0;
  }

  xmlInitParser();
  htmlCtxtReset(ctxt);
  v10 = xmlNewStringInputStream(ctxt, cur);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (inputPush(ctxt, v10) < 0)
  {
    xmlFreeInputStream(v11);
    xmlFreeParserCtxt(ctxt);
    return 0;
  }

  return htmlDoRead(ctxt, URL, encoding, options, 1);
}

htmlDocPtr htmlCtxtReadFile(xmlParserCtxtPtr ctxt, const char *filename, const char *encoding, int options)
{
  if (!ctxt)
  {
    return 0;
  }

  if (!filename)
  {
    return 0;
  }

  xmlInitParser();
  htmlCtxtReset(ctxt);
  ExternalEntity = xmlLoadExternalEntity(filename, 0, ctxt);
  if (!ExternalEntity)
  {
    return 0;
  }

  inputPush(ctxt, ExternalEntity);

  return htmlDoRead(ctxt, 0, encoding, options, 1);
}

htmlDocPtr htmlCtxtReadMemory(xmlParserCtxtPtr ctxt, const char *buffer, int size, const char *URL, const char *encoding, int options)
{
  if (!ctxt)
  {
    return 0;
  }

  if (!buffer)
  {
    return 0;
  }

  xmlInitParser();
  htmlCtxtReset(ctxt);
  Mem = xmlParserInputBufferCreateMem(buffer, size, XML_CHAR_ENCODING_NONE);
  if (!Mem)
  {
    return 0;
  }

  v13 = Mem;
  v14 = xmlNewIOInputStream(ctxt, Mem, XML_CHAR_ENCODING_NONE);
  if (!v14)
  {
    xmlFreeParserInputBuffer(v13);
    return 0;
  }

  v15 = v14;
  if (inputPush(ctxt, v14) < 0)
  {
    xmlFreeInputStream(v15);
    xmlFreeParserCtxt(ctxt);
    return 0;
  }

  return htmlDoRead(ctxt, URL, encoding, options, 1);
}

htmlDocPtr htmlCtxtReadFd(xmlParserCtxtPtr ctxt, int fd, const char *URL, const char *encoding, int options)
{
  if (!ctxt)
  {
    return 0;
  }

  if (fd < 0)
  {
    return 0;
  }

  xmlInitParser();
  htmlCtxtReset(ctxt);
  v10 = xmlParserInputBufferCreateFd(fd, XML_CHAR_ENCODING_NONE);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v10->closecallback = 0;
  v12 = xmlNewIOInputStream(ctxt, v10, XML_CHAR_ENCODING_NONE);
  if (!v12)
  {
    xmlFreeParserInputBuffer(v11);
    return 0;
  }

  v13 = v12;
  if (inputPush(ctxt, v12) < 0)
  {
    xmlFreeInputStream(v13);
    xmlFreeParserCtxt(ctxt);
    return 0;
  }

  return htmlDoRead(ctxt, URL, encoding, options, 1);
}

htmlDocPtr htmlCtxtReadIO(xmlParserCtxtPtr ctxt, xmlInputReadCallback ioread, xmlInputCloseCallback ioclose, void *ioctx, const char *URL, const char *encoding, int options)
{
  if (!ctxt || !ioread)
  {
    return 0;
  }

  xmlInitParser();
  htmlCtxtReset(ctxt);
  IO = xmlParserInputBufferCreateIO(ioread, ioclose, ioctx, XML_CHAR_ENCODING_NONE);
  if (!IO)
  {
    if (ioclose)
    {
      (ioclose)(ioctx);
    }

    return 0;
  }

  v15 = IO;
  v16 = xmlNewIOInputStream(ctxt, IO, XML_CHAR_ENCODING_NONE);
  if (!v16)
  {
    xmlFreeParserInputBuffer(v15);
    return 0;
  }

  v17 = v16;
  if (inputPush(ctxt, v16) < 0)
  {
    xmlFreeInputStream(v17);
    xmlFreeParserCtxt(ctxt);
    return 0;
  }

  return htmlDoRead(ctxt, URL, encoding, options, 1);
}

const xmlChar *htmlParseNameComplex(uint64_t a1)
{
_htmlParseNameComplex:
  v1 = a1;
  v2 = *(a1 + 56);
  base = v2->base;
  if (!*(v1 + 452) && v2->end - v2->cur <= 249)
  {
    xmlParserInputGrow(v2, 250);
  }

  v22 = 0;
  v4 = htmlCurrentChar(v1, &v22);
  v5 = v4;
  if (v4 <= 0x3E && ((1 << v4) & 0x4000800100000000) != 0)
  {
    return 0;
  }

  if (v4 > 255)
  {
    if (xmlCharInRange(v4, &xmlIsBaseCharGroup))
    {
      v7 = 1;
    }

    else
    {
      v7 = v5 == 12295;
    }

    if (!v7 && (v5 - 19968) >= 0x51A6 && (v5 - 12321) >= 9)
    {
      return 0;
    }
  }

  else if ((v4 - 192) >= 0x17 && (v4 & 0xFFFFFFDF) - 65 >= 0x1A && v4 <= 247 && (v4 - 216) >= 0x1F && v4 != 95 && v4 != 58)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  while (v5 > 0x3E || ((1 << v5) & 0x4000800100000000) == 0)
  {
    if (v5 > 255)
    {
      if (xmlCharInRange(v5, &xmlIsBaseCharGroup))
      {
        v12 = 1;
      }

      else
      {
        v12 = v5 == 12295;
      }

      v14 = !v12 && (v5 - 19968) >= 0x51A6 && (v5 - 12321) >= 9;
      if (!v14 || xmlCharInRange(v5, &xmlIsDigitGroup))
      {
        goto LABEL_49;
      }
    }

    else if ((v5 - 192) < 0x17 || (v5 & 0xFFFFFFDF) - 65 < 0x1A || (v5 - 48) < 0xA || v5 > 247 || (v5 - 216) < 0x1F)
    {
      goto LABEL_49;
    }

    if ((v5 - 45) > 0x32 || ((1 << (v5 - 45)) & 0x4000000002003) == 0)
    {
      if (v5 >= 256)
      {
        if (!xmlCharInRange(v5, &xmlIsCombiningGroup) && !xmlCharInRange(v5, &xmlIsExtenderGroup))
        {
          break;
        }
      }

      else if (v5 != 183)
      {
        break;
      }
    }

LABEL_49:
    if (v11 >= 101)
    {
      if (!*(v1 + 452))
      {
        v15 = *(v1 + 56);
        if (v15->end - v15->cur <= 249)
        {
          xmlParserInputGrow(v15, 250);
        }
      }

      v11 = 0;
    }

    else
    {
      ++v11;
    }

    v16 = v22;
    v17 = *(v1 + 56);
    v18 = *(v17 + 32);
    v19 = &v18[v22];
    if (v19 <= *(v17 + 40))
    {
      if (*v18 == 10)
      {
        ++*(v17 + 52);
        *(v17 + 56) = 1;
      }

      else
      {
        ++*(v17 + 56);
      }

      *(v1 + 276) = 0;
      *(v17 + 32) = v19;
      ++*(v1 + 312);
    }

    v10 += v16;
    v5 = htmlCurrentChar(v1, &v22);
    if (*(*(v1 + 56) + 24) != base)
    {
      a1 = v1;

      goto _htmlParseNameComplex;
    }
  }

  v20 = *(*(v1 + 56) + 32);
  if (v20 - *(*(v1 + 56) + 24) < v10)
  {
    htmlParseErr(v1, 1, "unexpected change of input buffer", 0, 0);
    return 0;
  }

  v21 = *(v1 + 456);

  return xmlDictLookup(v21, (v20 - v10), v10);
}

void *htmlParseHTMLAttribute(uint64_t a1, int a2)
{
  str = 0;
  v4 = malloc_type_malloc(0x64uLL, 0x100004077774924uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 56) + 32);
    v7 = *v6;
    if (*v6)
    {
      v8 = v7 == a2;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      LODWORD(v9) = 100;
      v10 = v4;
      while (1)
      {
        if (!a2 && v7 == 62)
        {
          goto LABEL_8;
        }

        if (a2)
        {
          if (v7 != 38)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v7 > 0x26)
          {
            goto LABEL_52;
          }

          if (v7 != 38)
          {
            if (((1 << v7) & 0x100002600) != 0)
            {
              goto LABEL_8;
            }

LABEL_52:
            v39 = 0;
            if (v10 - v5 > v9 - 100)
            {
              if ((v9 - 0x40000000) < 0xC0000001)
              {
                goto LABEL_92;
              }

              v9 = (2 * v9);
              v25 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
              if (!v25)
              {
LABEL_93:
                v37 = "growing buffer\n";
                goto LABEL_94;
              }

              v10 = &v25[v10 - v5];
              v5 = v25;
            }

            v26 = htmlCurrentChar(a1, &v39);
            if (*(a1 + 272) == -1)
            {
              goto LABEL_95;
            }

            if (v26 < 0x80)
            {
              *v10++ = v26;
            }

            else
            {
              if (HIWORD(v26))
              {
                v27 = (v26 >> 18) & 7 | 0xF0;
              }

              else
              {
                v27 = (v26 >> 12) | 0xE0;
              }

              if (HIWORD(v26))
              {
                v28 = 12;
              }

              else
              {
                v28 = 6;
              }

              v29 = (v26 >> 6) | 0xFFFFFFC0;
              if (v26 <= 0x7FF)
              {
                v30 = 0;
              }

              else
              {
                LOBYTE(v29) = v27;
                v30 = v28;
              }

              *v10++ = v29;
              do
              {
                *v10++ = (v26 >> v30) & 0x3F | 0x80;
                v16 = v30 > 5;
                v30 -= 6;
              }

              while (v16);
            }

            xmlNextChar(a1);
            goto LABEL_86;
          }
        }

        if (v6[1] == 35)
        {
          v11 = htmlParseCharRef(a1);
          if (v11 < 0x80)
          {
            *v10++ = v11;
          }

          else
          {
            if (HIWORD(v11))
            {
              v12 = (v11 >> 18) & 7 | 0xF0;
            }

            else
            {
              v12 = (v11 >> 12) | 0xE0;
            }

            if (HIWORD(v11))
            {
              v13 = 12;
            }

            else
            {
              v13 = 6;
            }

            v14 = (v11 >> 6) | 0xFFFFFFC0;
            if (v11 <= 0x7FF)
            {
              v15 = 0;
            }

            else
            {
              LOBYTE(v14) = v12;
              v15 = v13;
            }

            *v10++ = v14;
            do
            {
              *v10++ = (v11 >> v15) & 0x3F | 0x80;
              v16 = v15 > 5;
              v15 -= 6;
            }

            while (v16);
          }
        }

        else
        {
          v17 = htmlParseEntityRef(a1, &str);
          if (str)
          {
            v18 = v17;
            if (v17)
            {
              if (v10 - v5 > v9 - 100)
              {
                if ((v9 - 0x40000000) <= 0xC0000000)
                {
                  goto LABEL_92;
                }

                v9 = (2 * v9);
                v19 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
                if (!v19)
                {
                  goto LABEL_93;
                }

                v10 = &v19[v10 - v5];
                v5 = v19;
              }

              value = v18->value;
              if (v18->value < 0x80)
              {
                *v10++ = value;
              }

              else
              {
                if (HIWORD(value))
                {
                  v21 = (value >> 18) & 7 | 0xF0;
                }

                else
                {
                  v21 = (value >> 12) | 0xE0;
                }

                if (HIWORD(value))
                {
                  v22 = 12;
                }

                else
                {
                  v22 = 6;
                }

                v23 = (value >> 6) | 0xFFFFFFC0;
                if (value <= 0x7FF)
                {
                  v24 = 0;
                }

                else
                {
                  LOBYTE(v23) = v21;
                  v24 = v22;
                }

                *v10++ = v23;
                do
                {
                  *v10++ = (value >> v24) & 0x3F | 0x80;
                  v16 = v24 > 5;
                  v24 -= 6;
                }

                while (v16);
              }
            }

            else
            {
              *v10++ = 38;
              v32 = *str;
              if (*str)
              {
                v33 = str + 1;
                while (1)
                {
                  if (v10 - v5 > v9 - 100)
                  {
                    if ((v9 - 0x40000000) <= 0xC0000000)
                    {
                      goto LABEL_92;
                    }

                    v9 = (2 * v9);
                    v34 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
                    if (!v34)
                    {
                      goto LABEL_93;
                    }

                    v10 = &v34[v10 - v5];
                    v32 = *(v33 - 1);
                    v5 = v34;
                  }

                  *v10++ = v32;
                  v35 = *v33++;
                  v32 = v35;
                  if (!v35)
                  {
                    goto LABEL_86;
                  }
                }
              }
            }

            goto LABEL_86;
          }

          *v10++ = 38;
        }

        if (v10 - v5 > v9 - 100)
        {
          if ((v9 - 0x40000000) <= 0xC0000000)
          {
LABEL_92:
            v37 = "buffer size overflow\n";
LABEL_94:
            htmlErrMemory(a1, v37);
LABEL_95:
            free(v5);
            return 0;
          }

          v9 = (2 * v9);
          v31 = malloc_type_realloc(v5, v9, 0x100004077774924uLL);
          if (!v31)
          {
            goto LABEL_93;
          }

          v10 = &v31[v10 - v5];
          v5 = v31;
        }

LABEL_86:
        v6 = *(*(a1 + 56) + 32);
        v7 = *v6;
        if (*v6)
        {
          v36 = v7 == a2;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          goto LABEL_8;
        }
      }
    }

    v10 = v4;
LABEL_8:
    *v10 = 0;
  }

  else
  {
    htmlErrMemory(a1, "buffer allocation failed\n");
  }

  return v5;
}

uint64_t htmlCheckEncodingDirect(uint64_t result, xmlChar *cur)
{
  if (!cur)
  {
    return result;
  }

  v2 = result;
  if ((*(result + 566) & 0x20) != 0 || *(*(result + 56) + 80))
  {
    return result;
  }

  for (i = cur; ; ++i)
  {
    v4 = *i;
    if (v4 != 32 && v4 != 9)
    {
      break;
    }
  }

  *(*(result + 56) + 80) = xmlStrdup(i);
  v6 = xmlParseCharEncoding(i);
  if ((v6 - 2) >= 4)
  {
    if (v6 == XML_CHAR_ENCODING_ERROR)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler(i);
      if (!CharEncodingHandler)
      {
        result = htmlParseErr(v2, 32, "htmlCheckEncoding: unknown encoding %s\n", i, 0);
        goto LABEL_27;
      }

      result = xmlSwitchToEncoding(v2, CharEncodingHandler);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v7 = **(v2 + 56);
    if (v7 && !*(v7 + 24))
    {
      v8 = "htmlCheckEncoding: wrong encoding meta\n";
      v9 = v2;
      v10 = 81;
      v11 = 0;
LABEL_25:
      result = htmlParseErr(v9, v10, v8, v11, 0);
      goto LABEL_26;
    }
  }

  result = xmlSwitchEncoding(v2, v6);
  if ((result & 0x80000000) != 0)
  {
LABEL_21:
    if (*(v2 + 136))
    {
      v10 = *(v2 + 136);
    }

    else
    {
      v10 = 6003;
    }

    v8 = "htmlCheckEncoding: error switching to encoding '%s'\n";
    v9 = v2;
    v11 = i;
    goto LABEL_25;
  }

LABEL_26:
  *(v2 + 408) = 1;
LABEL_27:
  v13 = *(v2 + 56);
  v14 = *v13;
  if (*v13)
  {
    if (v14[3])
    {
      if (v14[5])
      {
        result = v14[4];
        if (result)
        {
          xmlBufShrink(result, v13[4] - v13[3]);
          v15 = xmlCharEncInput(**(v2 + 56), 1);
          result = xmlBufResetInput(*(**(v2 + 56) + 32), *(v2 + 56));
          if (v15 < 0)
          {

            return htmlParseErr(v2, 81, "htmlCheckEncoding: encoder error\n", 0, 0);
          }
        }
      }
    }
  }

  return result;
}

uint64_t htmlParseScript(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  bzero(v20, 0x3EDuLL);
  v2 = *(a1 + 56);
  cur = v2->cur;
  if (cur - v2->base >= 501 && v2->end - cur <= 499)
  {
    xmlParserInputShrink(v2);
  }

  len = 0;
  result = htmlCurrentChar(a1, &len);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 != 60)
    {
      if (!v5)
      {
        break;
      }

      if (v5 > 255)
      {
        if (v5 >> 11 >= 0x1B && (v5 - 57344) >> 1 >= 0xFFF && (v5 - 0x10000) >> 20)
        {
LABEL_19:
          htmlParseErrInt(a1, "Invalid char in CDATA 0x%X\n", v5);
          v10 = len;
          goto LABEL_24;
        }
      }

      else if (v5 <= 31 && (v5 > 0xD || ((1 << v5) & 0x2600) == 0))
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    v7 = *(*(a1 + 56) + 32);
    if (*(v7 + 1) == 47)
    {
      if (*(a1 + 448))
      {
        v8 = *(a1 + 288);
        v9 = xmlStrlen(v8);
        result = xmlStrncasecmp(v8, (v7 + 2), v9);
        if (!result)
        {
          break;
        }

        htmlParseErr(a1, 76, "Element %s embeds close tag\n", *(a1 + 288), 0);
        goto LABEL_21;
      }

      if ((*(v7 + 2) & 0xDFu) - 65 < 0x1A)
      {
        break;
      }
    }

LABEL_21:
    v10 = len;
    if (len == 1)
    {
      v20[v6] = v5;
      v6 = (v6 + 1);
    }

    else
    {
      v6 = (xmlCopyChar(len, &v20[v6], v5) + v6);
    }

LABEL_24:
    v11 = *(a1 + 56);
    v12 = *(v11 + 32);
    v13 = &v12[v10];
    if (v13 <= *(v11 + 40))
    {
      if (*v12 == 10)
      {
        ++*(v11 + 52);
        *(v11 + 56) = 1;
      }

      else
      {
        ++*(v11 + 56);
      }

      *(a1 + 276) = 0;
      *(v11 + 32) = v13;
      ++*(a1 + 312);
    }

    if (v6 >= 1000)
    {
      v20[v6] = 0;
      v14 = *(*a1 + 200);
      if (v14 || (v14 = *(*a1 + 136)) != 0)
      {
        v14(*(a1 + 8), v20, v6);
      }

      v6 = 0;
    }

    if (!*(a1 + 452))
    {
      v15 = *(a1 + 56);
      if (v15->end - v15->cur <= 249)
      {
        xmlParserInputGrow(v15, 250);
      }
    }

    result = htmlCurrentChar(a1, &len);
    v5 = result;
  }

  if (v6)
  {
    v16 = *a1;
    if (*a1)
    {
      if (!*(a1 + 332))
      {
        v20[v6] = 0;
        v17 = *(v16 + 200);
        if (v17 || (v17 = *(v16 + 136)) != 0)
        {
          result = v17(*(a1 + 8), v20, v6);
        }
      }
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t htmlParseReference(uint64_t ctxt)
{
  v21 = 0;
  v20 = 0;
  str = 0;
  v1 = *(*(ctxt + 56) + 32);
  if (*v1 != 38)
  {
    return ctxt;
  }

  v2 = ctxt;
  if (v1[1] == 35)
  {
    ctxt = htmlParseCharRef(ctxt);
    if (!ctxt)
    {
      return ctxt;
    }

    if (ctxt >= 0x80)
    {
      if (ctxt > 0x7FF)
      {
        if (WORD1(ctxt))
        {
          LOBYTE(v20) = (ctxt >> 18) & 7 | 0xF0;
          v3 = 12;
        }

        else
        {
          LOBYTE(v20) = (ctxt >> 12) | 0xE0;
          v3 = 6;
        }
      }

      else
      {
        v3 = 0;
        LOBYTE(v20) = (ctxt >> 6) | 0xC0;
      }

      v17 = 1;
      do
      {
        *(&v20 + v17++) = (ctxt >> v3) & 0x3F | 0x80;
        v18 = v3 > 5;
        v3 -= 6;
      }

      while (v18);
      goto LABEL_33;
    }

    LOBYTE(v20) = ctxt;
    goto LABEL_23;
  }

  v4 = htmlParseEntityRef(ctxt, &str);
  if (str)
  {
    if (!v4 || (value = v4->value) == 0)
    {
      ctxt = htmlCheckParagraph(v2);
      if (*v2)
      {
        v7 = *(*v2 + 136);
        if (v7)
        {
          v7(v2[1], "&", 1);
          v8 = *v2;
          v9 = v2[1];
          v10 = *(v8 + 136);
          v11 = str;
          v12 = xmlStrlen(str);
          return v10(v9, v11, v12);
        }
      }

      return ctxt;
    }

    if (value >= 0x80)
    {
      if (value > 0x7FF)
      {
        if (HIWORD(value))
        {
          LOBYTE(v20) = (value >> 18) & 7 | 0xF0;
          v6 = 12;
        }

        else
        {
          LOBYTE(v20) = (value >> 12) | 0xE0;
          v6 = 6;
        }
      }

      else
      {
        v6 = 0;
        LOBYTE(v20) = (value >> 6) | 0xC0;
      }

      v17 = 1;
      do
      {
        *(&v20 + v17++) = (value >> v6) & 0x3F | 0x80;
        v18 = v6 > 5;
        v6 -= 6;
      }

      while (v18);
LABEL_33:
      *(&v20 + v17) = 0;
      ctxt = htmlCheckParagraph(v2);
      if (*v2)
      {
        v13 = *(*v2 + 136);
        if (v13)
        {
          v14 = v2[1];
          v15 = &v20;
          v16 = v17;
          return v13(v14, v15, v16);
        }
      }

      return ctxt;
    }

    LOBYTE(v20) = v4->value;
LABEL_23:
    v17 = 1;
    goto LABEL_33;
  }

  ctxt = htmlCheckParagraph(v2);
  if (*v2)
  {
    v13 = *(*v2 + 136);
    if (v13)
    {
      v14 = v2[1];
      v15 = "&";
      v16 = 1;
      return v13(v14, v15, v16);
    }
  }

  return ctxt;
}

void htmlParserFinishElementParsing(xmlParserCtxtPtr ctxt)
{
  node = ctxt->node;
  if (node)
  {
    if (ctxt->record_info)
    {
      input = ctxt->input;
      v4 = &input->cur[input->consumed] - input->base;
      nodeInfo = ctxt->nodeInfo;
      line = input->line;
      nodeInfo->end_pos = v4;
      nodeInfo->end_line = line;
      nodeInfo->node = node;
      xmlParserAddNodeInfo(ctxt, nodeInfo);
      nodeInfoNr = ctxt->nodeInfoNr;
      if (nodeInfoNr >= 1)
      {
        v8 = &ctxt->nodeInfoTab[nodeInfoNr - 2];
        v9 = nodeInfoNr - 1;
        ctxt->nodeInfoNr = v9;
        if (v9)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        ctxt->nodeInfo = v10;
      }
    }
  }

  if (!*ctxt->input->cur)
  {

    htmlAutoCloseOnEnd(ctxt);
  }
}

_DWORD *htmlNodeInfoPush(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 720);
  v5 = *(a1 + 724);
  if (v4 < v5)
  {
    result = *(a1 + 728);
LABEL_11:
    v8 = &result[10 * v4];
    v9 = *a2;
    v10 = a2[1];
    *(v8 + 4) = *(a2 + 4);
    *v8 = v9;
    *(v8 + 1) = v10;
    v11 = *(a1 + 720);
    *(a1 + 712) = *(a1 + 728) + 40 * v11;
    *(a1 + 720) = v11 + 1;
    return result;
  }

  if (v5 < 1)
  {
    v7 = 5;
  }

  else
  {
    if (v5 >= 0x3B9ACA00)
    {
      v12 = "Could not allocate new memory.";
      goto LABEL_14;
    }

    if (1000000000 - ((v5 + 1) >> 1) >= v5)
    {
      v7 = v5 + ((v5 + 1) >> 1);
    }

    else
    {
      v7 = 1000000000;
    }
  }

  result = malloc_type_realloc(*(a1 + 728), 40 * v7, 0x1060040A09B13B7uLL);
  if (result)
  {
    *(a1 + 728) = result;
    *(a1 + 724) = v7;
    v4 = *(a1 + 720);
    goto LABEL_11;
  }

  v12 = "Could not re-allocate new memory.";
LABEL_14:

  return htmlErrMemory(a1, v12);
}

xmlChar *htmlParseSystemLiteral(xmlParserCtxtPtr ctxt)
{
  v1 = ctxt;
  v2 = *ctxt->input->cur;
  if (v2 != 34 && v2 != 39)
  {
    v9 = "SystemLiteral  or ' expected\n";
    v10 = 43;
LABEL_29:
    htmlParseErr(ctxt, v10, v9, 0, 0);
    return 0;
  }

  xmlNextChar(ctxt);
  input = v1->input;
  base = input->base;
  cur = input->cur;
  v6 = &cur[-base];
  if (cur >= base)
  {
    v7 = *cur;
    if (*cur)
    {
      v8 = v7 == v2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v7 == v2)
      {
        v12 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (v7 - 9 >= 2 && v7 != 13 && v7 <= 0x1F)
        {
          htmlParseErrInt(v1, "Invalid char in SystemLiteral 0x%X\n", v7);
          v11 = 1;
        }

        xmlNextChar(v1);
        ++v12;
        input = v1->input;
        v15 = input->cur;
        v7 = *v15;
        if (*v15)
        {
          v16 = v7 == v2;
        }

        else
        {
          v16 = 1;
        }
      }

      while (!v16);
      if (v7 == v2)
      {
        if (v11)
        {
          v17 = 0;
LABEL_33:
          xmlNextChar(v1);
          return v17;
        }

LABEL_32:
        v17 = xmlStrndup(&input->base[v6], v12);
        goto LABEL_33;
      }
    }

    v9 = "Unfinished SystemLiteral\n";
    ctxt = v1;
    v10 = 44;
    goto LABEL_29;
  }

  return 0;
}

xmlChar *htmlParsePubidLiteral(xmlParserCtxtPtr ctxt)
{
  v1 = ctxt;
  v2 = *ctxt->input->cur;
  if (v2 != 34 && v2 != 39)
  {
    v9 = "PubidLiteral  or ' expected\n";
    v10 = 43;
LABEL_23:
    htmlParseErr(ctxt, v10, v9, 0, 0);
    return 0;
  }

  xmlNextChar(ctxt);
  input = v1->input;
  base = input->base;
  cur = input->cur;
  v6 = &cur[-base];
  if (cur >= base)
  {
    v7 = *cur;
    if (*cur)
    {
      v8 = v7 == v2;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v7 == v2)
      {
        v12 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (!xmlIsPubidChar_tab[v7])
        {
          htmlParseErrInt(v1, "Invalid char in PubidLiteral 0x%X\n", v7);
          v11 = 1;
        }

        ++v12;
        xmlNextChar(v1);
        input = v1->input;
        v13 = input->cur;
        v7 = *v13;
        if (*v13)
        {
          v14 = v7 == v2;
        }

        else
        {
          v14 = 1;
        }
      }

      while (!v14);
      if (v7 == v2)
      {
        if (v11)
        {
          v15 = 0;
LABEL_27:
          xmlNextChar(v1);
          return v15;
        }

LABEL_26:
        v15 = xmlStrndup(&input->base[v6], v12);
        goto LABEL_27;
      }
    }

    v9 = "Unfinished PubidLiteral\n";
    ctxt = v1;
    v10 = 44;
    goto LABEL_23;
  }

  return 0;
}

uint64_t htmlParseLookupSequence(uint64_t a1, int a2, int a3, int a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v4 + 24);
  LODWORD(v6) = *(v4 + 32) - v5;
  if ((v6 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 320) <= (v6 & 0x7FFFFFFF))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(a1 + 144) & 1;
    v6 = *(a1 + 320);
  }

  if (*v4)
  {
    v5 = xmlBufContent(*(*v4 + 32));
    v12 = xmlBufUse(*(*v4 + 32));
  }

  else
  {
    v12 = *(v4 + 48);
  }

  LODWORD(v13) = v12 - (a3 != 0);
  if (v6 >= v13)
  {
    v13 = v6;
LABEL_26:
    *(a1 + 320) = v13;
    v19 = *(a1 + 144);
    if (v11)
    {
      v20 = v19 | 1;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    *(a1 + 144) = v20;
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  v13 = v13;
  v15 = -v6;
  v16 = &v5[v6 + 1];
  v17 = v12 - (a3 != 0) - v6;
  while (1)
  {
    v18 = *(v16 - 1);
    if (!a4)
    {
      break;
    }

    if (v18 == 39 || v18 == 34)
    {
      if (v11)
      {
        if (v18 != v14)
        {
          break;
        }

        v11 = 0;
      }

      else
      {
        v11 = 1;
        v14 = *(v16 - 1);
      }
    }

    else
    {
      if (!v11)
      {
        break;
      }

      v11 = 1;
    }

LABEL_23:
    ++v16;
    --v15;
    if (!--v17)
    {
      goto LABEL_26;
    }
  }

  if (v18 != a2 || a3 && *v16 != a3)
  {
    goto LABEL_23;
  }

  *(a1 + 320) = 0;
  return (*(v4 + 24) - *(v4 + 32) - v15);
}

uint64_t htmlParseLookupCommentEnd(uint64_t a1)
{
  v2 = *(a1 + 56);
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  result = htmlParseLookupSequence(a1, 45, 45, 0);
  if ((result & 0x80000000) == 0)
  {
    v6 = v3 - v4 + 1;
    do
    {
      v7 = *(*(a1 + 56) + 32) + result;
      v8 = *(v7 + 2);
      if (v8 == 33)
      {
        if (*(v7 + 3) == 62)
        {
          return result;
        }
      }

      else if (v8 == 62)
      {
        return result;
      }

      *(a1 + 320) = v6 + result;
      result = htmlParseLookupSequence(a1, 45, 45, 0);
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

const xmlChar *__cdecl htmlGetMetaEncoding(const xmlChar *doc)
{
  if (!doc)
  {
    return doc;
  }

  v1 = *(doc + 3);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    if (*(v1 + 8) != 1)
    {
      goto LABEL_8;
    }

    v2 = *(v1 + 16);
    if (!v2)
    {
      goto LABEL_8;
    }

    if (xmlStrEqual(v2, "html"))
    {
      v1 = *(v1 + 24);
      if (v1)
      {
        while (1)
        {
          if (*(v1 + 8) == 1)
          {
            v3 = *(v1 + 16);
            if (v3)
            {
              if (xmlStrEqual(v3, "head"))
              {
                goto LABEL_17;
              }

              if (xmlStrEqual(*(v1 + 16), "meta"))
              {
                goto LABEL_18;
              }
            }
          }

          doc = 0;
          v1 = *(v1 + 48);
          if (!v1)
          {
            return doc;
          }
        }
      }

      return 0;
    }

    if (xmlStrEqual(*(v1 + 16), "head"))
    {
LABEL_17:
      v1 = *(v1 + 24);
      if (v1)
      {
        break;
      }

      return 0;
    }

    if (xmlStrEqual(*(v1 + 16), "meta"))
    {
      break;
    }

LABEL_8:
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

LABEL_18:
  while (1)
  {
    if (*(v1 + 8) == 1)
    {
      v4 = *(v1 + 16);
      if (v4)
      {
        if (xmlStrEqual(v4, "meta"))
        {
          v5 = *(v1 + 88);
          if (v5)
          {
            break;
          }
        }
      }
    }

LABEL_36:
    v1 = *(v1 + 48);
    if (!v1)
    {
      return 0;
    }
  }

  v6 = 0;
  v7 = 0;
  while (2)
  {
    v8 = *(v5 + 24);
    if (!v8 || *(v8 + 8) != 3 || *(v8 + 48))
    {
      goto LABEL_33;
    }

    v9 = *(v8 + 80);
    if (!xmlStrcasecmp(*(v5 + 16), "http-equiv") && !xmlStrcasecmp(v9, "Content-Type"))
    {
      v6 = 1;
      break;
    }

    if (v9 && !xmlStrcasecmp(*(v5 + 16), "content"))
    {
      v7 = v9;
    }

    if (!v6)
    {
LABEL_33:
      v5 = *(v5 + 48);
      if (!v5)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (!v7)
  {
    goto LABEL_33;
  }

  v10 = xmlStrstr(v7, "charset=");
  if (v10 || (v10 = xmlStrstr(v7, "Charset=")) != 0 || (v10 = xmlStrstr(v7, "CHARSET=")) != 0)
  {
    doc = v10 + 8;
LABEL_48:
    while (1)
    {
      v11 = *doc;
      if (v11 != 32 && v11 != 9)
      {
        break;
      }

      ++doc;
    }
  }

  else
  {
    doc = xmlStrstr(v7, "charset =");
    if (doc || (doc = xmlStrstr(v7, "Charset =")) != 0 || (doc = xmlStrstr(v7, "CHARSET =")) != 0)
    {
      doc += 9;
      goto LABEL_48;
    }
  }

  return doc;
}

int htmlSetMetaEncoding(htmlDocPtr doc, const xmlChar *encoding)
{
  v25 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__str = 0u;
  v19 = 0u;
  if (!doc || !xmlStrcasecmp(encoding, "html"))
  {
    goto LABEL_12;
  }

  if (encoding)
  {
    snprintf(__str, 0x64uLL, "text/html; charset=%s", encoding);
    HIBYTE(v24) = 0;
  }

  children = doc->children;
  if (!children)
  {
    goto LABEL_12;
  }

  while (1)
  {
    if (children->type == XML_ELEMENT_NODE)
    {
      name = children->name;
      if (name)
      {
        break;
      }
    }

LABEL_11:
    children = children->next;
    if (!children)
    {
      goto LABEL_12;
    }
  }

  if (!xmlStrcasecmp(name, "html"))
  {
    children = children->children;
    if (children)
    {
      while (1)
      {
        if (children->type == XML_ELEMENT_NODE)
        {
          v8 = children->name;
          if (v8)
          {
            if (!xmlStrcasecmp(v8, "head"))
            {
              goto LABEL_21;
            }

            if (!xmlStrcasecmp(children->name, "meta"))
            {
              parent = children->parent;
              goto LABEL_27;
            }
          }
        }

        children = children->next;
        result = -1;
        if (!children)
        {
          goto LABEL_13;
        }
      }
    }

LABEL_12:
    result = -1;
    goto LABEL_13;
  }

  if (xmlStrcasecmp(children->name, "head"))
  {
    if (!xmlStrcasecmp(children->name, "meta"))
    {
      parent = 0;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

LABEL_21:
  parent = children;
  children = children->children;
  if (!children)
  {
    goto LABEL_22;
  }

LABEL_27:
  while (2)
  {
    if (children->type != XML_ELEMENT_NODE)
    {
      goto LABEL_30;
    }

    v12 = children->name;
    if (!v12)
    {
      goto LABEL_30;
    }

    if (xmlStrcasecmp(v12, "meta"))
    {
      goto LABEL_30;
    }

    properties = children->properties;
    if (!properties)
    {
      goto LABEL_30;
    }

    v14 = 0;
    v15 = 0;
    while (2)
    {
      v16 = properties->children;
      if (!v16 || v16->type != XML_TEXT_NODE || v16->next)
      {
        goto LABEL_44;
      }

      content = v16->content;
      if (!xmlStrcasecmp(properties->name, "http-equiv") && !xmlStrcasecmp(content, "Content-Type"))
      {
        v14 = 1;
        break;
      }

      if (content && !xmlStrcasecmp(properties->name, "content"))
      {
        v15 = content;
      }

      if (!v14)
      {
LABEL_44:
        properties = properties->next;
        if (!properties)
        {
          goto LABEL_48;
        }

        continue;
      }

      break;
    }

    if (!v15)
    {
      goto LABEL_44;
    }

    v14 = 1;
LABEL_48:
    if (v14 && v15)
    {
      if (encoding)
      {
        if (!xmlStrcasestr(v15, encoding))
        {
          xmlSetProp(children, "content", __str);
        }
      }

      else
      {
        xmlUnlinkNode(children);
        xmlFreeNode(children);
      }

      goto LABEL_55;
    }

LABEL_30:
    children = children->next;
    if (children)
    {
      continue;
    }

    break;
  }

LABEL_22:
  result = 0;
  if (encoding && parent)
  {
    v10 = xmlNewDocNode(doc, 0, "meta", 0);
    v11 = parent->children;
    if (v11)
    {
      xmlAddPrevSibling(v11, v10);
    }

    else
    {
      xmlAddChild(parent, v10);
    }

    xmlNewProp(v10, "http-equiv", "Content-Type");
    xmlNewProp(v10, "content", __str);
LABEL_55:
    result = 0;
  }

LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

int htmlIsBooleanAttr(const xmlChar *name)
{
  v2 = 0;
  while (xmlStrcasecmp(htmlBooleanAttrs[v2], name))
  {
    if (++v2 == 13)
    {
      return 0;
    }
  }

  return 1;
}

int htmlNodeDump(xmlBufferPtr buf, xmlDocPtr doc, xmlNodePtr cur)
{
  v3 = -1;
  if (buf)
  {
    if (cur)
    {
      xmlInitParser();
      v7 = xmlBufFromBuffer(buf);
      if (v7)
      {
        v8 = v7;
        v9 = malloc_type_malloc(0x38uLL, 0x10A0040906386E4uLL);
        if (v9)
        {
          v10 = v9;
          v9->conv = 0;
          *&v9->written = 0;
          v9->buffer = v8;
          *&v9->context = 0u;
          *&v9->closecallback = 0u;
          v11 = xmlBufUse(v8);
          htmlNodeDumpFormatOutput(v10, doc, cur, 0, 1);
          free(v10);
          v3 = xmlBufUse(v8) - v11;
          xmlBufBackToBuffer(v8);
          if ((v3 & 0x80000000) == 0)
          {
            return v3;
          }
        }

        else
        {
          __xmlSimpleError(7u, 2, 0, 0, "allocating HTML output buffer");
          xmlBufBackToBuffer(v8);
        }

        return -1;
      }
    }
  }

  return v3;
}

int htmlNodeDumpFileFormat(FILE *out, xmlDocPtr doc, xmlNodePtr cur, const char *encoding, int format)
{
  xmlInitParser();
  if (encoding)
  {
    if (xmlParseCharEncoding(encoding) == XML_CHAR_ENCODING_UTF8)
    {
LABEL_5:
      v11 = 0;
      goto LABEL_9;
    }

    CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
    if (!CharEncodingHandler)
    {
      __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", encoding);
      goto LABEL_5;
    }
  }

  else
  {
    CharEncodingHandler = xmlFindCharEncodingHandler("HTML");
    if (!CharEncodingHandler)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler("ascii");
    }
  }

  v11 = CharEncodingHandler;
LABEL_9:
  File = xmlOutputBufferCreateFile(out, v11);
  if (File)
  {
    v13 = File;
    htmlNodeDumpFormatOutput(File, doc, cur, 0, format);

    LODWORD(File) = xmlOutputBufferClose(v13);
  }

  return File;
}

void htmlNodeDumpFormatOutput(xmlOutputBufferPtr buf, xmlDocPtr doc, xmlNodePtr cur, const char *encoding, int format)
{
  xmlInitParser();
  if (buf && cur)
  {
    parent = cur->parent;
    for (i = cur; ; i = *p_children)
    {
      while (1)
      {
        v10 = parent;
        parent = i;
        type = i->type;
        if (type <= 4)
        {
          break;
        }

        if (type <= 7)
        {
          if (type == 5)
          {
            xmlOutputBufferWriteString(buf, "&");
            xmlOutputBufferWriteString(buf, parent->name);
            v19 = buf;
            v18 = ";";
            goto LABEL_99;
          }

          if (type == 7 && parent->name)
          {
            xmlOutputBufferWriteString(buf, "<?");
            xmlOutputBufferWriteString(buf, parent->name);
            if (parent->content)
            {
              xmlOutputBufferWriteString(buf, " ");
              xmlOutputBufferWriteString(buf, parent->content);
            }

            v19 = buf;
            v18 = ">";
LABEL_99:
            xmlOutputBufferWriteString(v19, v18);
          }

          goto LABEL_100;
        }

        if (type == 8)
        {
          if (parent->content)
          {
            xmlOutputBufferWriteString(buf, "<!--");
            xmlOutputBufferWriteString(buf, parent->content);
            v19 = buf;
            v18 = "-->";
            goto LABEL_99;
          }

          goto LABEL_100;
        }

        if (type == 13 || type == 9)
        {
          content = parent->content;
          if (content)
          {
            xmlOutputBufferWriteString(buf, "<!DOCTYPE ");
            xmlOutputBufferWriteString(buf, *(content + 2));
            if (*(content + 13))
            {
              xmlOutputBufferWriteString(buf, " PUBLIC ");
              xmlBufWriteQuotedString(buf->buffer, *(content + 13));
              v15 = *(content + 14);
              v14 = (content + 112);
              if (v15)
              {
                v16 = buf;
                v17 = " ";
                goto LABEL_50;
              }
            }

            else
            {
              v26 = *(content + 14);
              v14 = (content + 112);
              v25 = v26;
              if (v26 && xmlStrcmp(v25, "about:legacy-compat"))
              {
                v16 = buf;
                v17 = " SYSTEM ";
LABEL_50:
                xmlOutputBufferWriteString(v16, v17);
                xmlBufWriteQuotedString(buf->buffer, *v14);
              }
            }

            xmlOutputBufferWriteString(buf, ">\n");
          }

          i = parent->children;
          if (!i)
          {
            goto LABEL_98;
          }

          if (parent->parent != v10)
          {
            goto LABEL_100;
          }
        }

        else
        {
          while (1)
          {
LABEL_100:
            if (parent == cur)
            {
              return;
            }

            i = parent->next;
            parent = v10;
            if (i)
            {
              break;
            }

            v10 = v10->parent;
            if ((parent->type | 4) == 0xD)
            {
              goto LABEL_98;
            }

            if (format && !parent->ns)
            {
              v45 = htmlTagLookup(parent->name);
              v42 = v45;
              if (v45)
              {
                if (!v45->isinline)
                {
                  last = parent->last;
                  v47 = last->type;
                  if (v47 != XML_TEXT_NODE && v47 != XML_ENTITY_REF_NODE && parent->children != last)
                  {
                    name = parent->name;
                    if (name)
                    {
                      if (*name != 112)
                      {
                        xmlOutputBufferWriteString(buf, "\n");
                      }
                    }
                  }
                }

                v41 = 1;
              }

              else
              {
                v41 = 0;
              }
            }

            else
            {
              v41 = 0;
              v42 = 0;
            }

            xmlOutputBufferWriteString(buf, "</");
            ns = parent->ns;
            if (ns)
            {
              prefix = ns->prefix;
              if (prefix)
              {
                xmlOutputBufferWriteString(buf, prefix);
                xmlOutputBufferWriteString(buf, ":");
              }
            }

            xmlOutputBufferWriteString(buf, parent->name);
            xmlOutputBufferWriteString(buf, ">");
            if (v41)
            {
              if (!v42->isinline)
              {
                next = parent->next;
                if (next)
                {
LABEL_93:
                  v39 = next->type;
                  if (v39 != XML_TEXT_NODE && v39 != XML_ENTITY_REF_NODE)
                  {
                    if (v10)
                    {
                      v40 = v10->name;
                      if (v40)
                      {
                        if (*v40 != 112)
                        {
LABEL_98:
                          v19 = buf;
                          v18 = "\n";
                          goto LABEL_99;
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

      if (type > 2)
      {
        if (type == 3)
        {
          v18 = parent->content;
          if (!v18)
          {
            goto LABEL_100;
          }

          if ("text" == "textnoenc" || parent->name != "textnoenc")
          {
            if (!v10)
            {
              goto LABEL_40;
            }

            if (xmlStrcasecmp(v10->name, "script"))
            {
              v21 = xmlStrcasecmp(v10->name, "style");
              v18 = parent->content;
              if (v21)
              {
LABEL_40:
                v22 = xmlEncodeEntitiesReentrant(doc, v18);
                if (v22)
                {
                  v23 = v22;
                  xmlOutputBufferWriteString(buf, v22);
                  free(v23);
                }

                goto LABEL_100;
              }
            }

            else
            {
              v18 = parent->content;
            }
          }
        }

        else
        {
          v18 = parent->content;
          if (!v18)
          {
            goto LABEL_100;
          }
        }

        v19 = buf;
        goto LABEL_99;
      }

      if (type != 1)
      {
        if (type == 2)
        {
          htmlAttrDumpOutput(buf, doc, parent);
        }

        goto LABEL_100;
      }

      if (parent->parent != v10 && parent->children)
      {
        htmlNodeDumpFormatOutput(buf, doc, parent, encoding, format);
        goto LABEL_100;
      }

      if (parent->ns)
      {
        v24 = 0;
      }

      else
      {
        v24 = htmlTagLookup(parent->name);
      }

      xmlOutputBufferWriteString(buf, "<");
      v27 = parent->ns;
      if (v27)
      {
        v28 = v27->prefix;
        if (v28)
        {
          xmlOutputBufferWriteString(buf, v28);
          xmlOutputBufferWriteString(buf, ":");
        }
      }

      v50 = v24;
      xmlOutputBufferWriteString(buf, parent->name);
      nsDef = parent->nsDef;
      if (nsDef)
      {
        xmlNsListDumpOutput(buf, nsDef);
      }

      for (j = parent->properties; j; j = *(j + 48))
      {
        htmlAttrDumpOutput(buf, doc, j);
      }

      if (!v50)
      {
        break;
      }

      if (v50->empty)
      {
        goto LABEL_89;
      }

      p_children = &parent->children;
      if (!parent->children)
      {
        if (!v50->saveEndTag || !xmlStrcmp(v50->name, "html") || !xmlStrcmp(v50->name, "body"))
        {
LABEL_85:
          xmlOutputBufferWriteString(buf, "></");
          v36 = parent->ns;
          if (v36)
          {
            v37 = v36->prefix;
            if (v37)
            {
              xmlOutputBufferWriteString(buf, v37);
              xmlOutputBufferWriteString(buf, ":");
            }
          }

          xmlOutputBufferWriteString(buf, parent->name);
        }

LABEL_89:
        xmlOutputBufferWriteString(buf, ">");
        if (format)
        {
          if (v50)
          {
            next = parent->next;
            if (next)
            {
              if (!v50->isinline)
              {
                goto LABEL_93;
              }
            }
          }
        }

        goto LABEL_100;
      }

      xmlOutputBufferWriteString(buf, ">");
      if (format && !v50->isinline)
      {
        v32 = (*p_children)->type;
        if (v32 != XML_TEXT_NODE && v32 != XML_ENTITY_REF_NODE && *p_children != parent->last)
        {
          v34 = parent->name;
          if (v34)
          {
            v35 = "\n";
            if (*v34 != 112)
            {
              goto LABEL_78;
            }
          }
        }
      }

LABEL_79:
      ;
    }

    p_children = &parent->children;
    if (!parent->children)
    {
      goto LABEL_85;
    }

    v35 = ">";
LABEL_78:
    xmlOutputBufferWriteString(buf, v35);
    goto LABEL_79;
  }
}

void htmlDocDumpMemoryFormat(xmlDocPtr cur, xmlChar **mem, int *size, int format)
{
  xmlInitParser();
  if (!mem || !size)
  {
    return;
  }

  if (!cur)
  {
LABEL_17:
    *mem = 0;
    *size = 0;
    return;
  }

  MetaEncoding = htmlGetMetaEncoding(cur);
  if (MetaEncoding)
  {
    v9 = MetaEncoding;
    if (xmlParseCharEncoding(MetaEncoding) != XML_CHAR_ENCODING_UTF8)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler(v9);
      if (CharEncodingHandler)
      {
        goto LABEL_11;
      }

      __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", v9);
    }

    CharEncodingHandler = 0;
  }

  else
  {
    CharEncodingHandler = xmlFindCharEncodingHandler("HTML");
    if (!CharEncodingHandler)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler("ascii");
    }
  }

LABEL_11:
  v11 = xmlAllocOutputBufferInternal(CharEncodingHandler);
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  type = cur->type;
  cur->type = XML_HTML_DOCUMENT_NODE;
  htmlNodeDumpFormatOutput(v11, cur, cur, 0, format);
  cur->type = type;
  xmlOutputBufferFlush(v12);
  p_conv = &v12->conv;
  conv = v12->conv;
  if (!conv)
  {
    p_conv = &v12->buffer;
    conv = v12->buffer;
  }

  *size = xmlBufUse(conv);
  v16 = xmlBufContent(*p_conv);
  *mem = xmlStrndup(v16, *size);

  xmlOutputBufferClose(v12);
}

void htmlDocContentDumpFormatOutput(xmlOutputBufferPtr buf, xmlDocPtr cur, const char *encoding, int format)
{
  if (cur)
  {
    type = cur->type;
    cur->type = XML_HTML_DOCUMENT_NODE;
    htmlNodeDumpFormatOutput(buf, cur, cur, 0, format);
    cur->type = type;
  }

  else
  {

    htmlNodeDumpFormatOutput(buf, 0, 0, 0, format);
  }
}

void htmlAttrDumpOutput(xmlOutputBuffer *a1, xmlDoc *a2, uint64_t a3)
{
  if (a3)
  {
    xmlOutputBufferWriteString(a1, " ");
    v6 = *(a3 + 72);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7)
      {
        xmlOutputBufferWriteString(a1, v7);
        xmlOutputBufferWriteString(a1, ":");
      }
    }

    xmlOutputBufferWriteString(a1, *(a3 + 16));
    if (*(a3 + 24))
    {
      v8 = 0;
      v9 = *(a3 + 16);
      do
      {
        if (!xmlStrcasecmp(htmlBooleanAttrs[v8], v9))
        {
          return;
        }

        ++v8;
      }

      while (v8 != 13);
      String = xmlNodeListGetString(a2, *(a3 + 24), 0);
      if (String)
      {
        v11 = String;
        xmlOutputBufferWriteString(a1, "=");
        if (*(a3 + 72) || (v13 = *(a3 + 40)) == 0 || *(v13 + 72) || xmlStrcasecmp(*(a3 + 16), "href") && xmlStrcasecmp(*(a3 + 16), "action") && xmlStrcasecmp(*(a3 + 16), "src") && (xmlStrcasecmp(*(a3 + 16), "name") || xmlStrcasecmp(*(*(a3 + 40) + 16), "a")))
        {
          buffer = a1->buffer;
        }

        else
        {
          for (i = v11; ; ++i)
          {
            v15 = *i;
            v16 = v15 > 0x20;
            v17 = (1 << v15) & 0x100002600;
            if (v16 || v17 == 0)
            {
              break;
            }
          }

          v19 = xmlURIEscapeStr(i, "@/:=?;#%&,+<>");
          buffer = a1->buffer;
          if (v19)
          {
            xmlBufWriteQuotedString(buffer, v19);
            free(v19);
            goto LABEL_13;
          }
        }

        xmlBufWriteQuotedString(buffer, v11);
LABEL_13:

        free(v11);
        return;
      }

      xmlOutputBufferWriteString(a1, "=");
    }
  }
}

int htmlDocDump(FILE *f, xmlDocPtr cur)
{
  xmlInitParser();
  if (!f || !cur)
  {
    return -1;
  }

  MetaEncoding = htmlGetMetaEncoding(cur);
  if (MetaEncoding)
  {
    v5 = MetaEncoding;
    if (xmlParseCharEncoding(MetaEncoding) == XML_CHAR_ENCODING_UTF8)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_11;
    }

    CharEncodingHandler = xmlFindCharEncodingHandler(v5);
    if (!CharEncodingHandler)
    {
      __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", v5);
      goto LABEL_7;
    }
  }

  else
  {
    CharEncodingHandler = xmlFindCharEncodingHandler("HTML");
    if (!CharEncodingHandler)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler("ascii");
    }
  }

  v7 = CharEncodingHandler;
LABEL_11:
  File = xmlOutputBufferCreateFile(f, v7);
  if (!File)
  {
    return -1;
  }

  v9 = File;
  htmlNodeDumpFormatOutput(File, cur, cur, 0, 1);

  return xmlOutputBufferClose(v9);
}

int htmlSaveFile(const char *filename, xmlDocPtr cur)
{
  v2 = filename;
  LODWORD(filename) = -1;
  if (!v2 || !cur)
  {
    return filename;
  }

  xmlInitParser();
  MetaEncoding = htmlGetMetaEncoding(cur);
  if (MetaEncoding)
  {
    v5 = MetaEncoding;
    if (xmlParseCharEncoding(MetaEncoding) == XML_CHAR_ENCODING_UTF8)
    {
LABEL_7:
      v7 = 0;
      goto LABEL_11;
    }

    CharEncodingHandler = xmlFindCharEncodingHandler(v5);
    if (!CharEncodingHandler)
    {
      __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", v5);
      goto LABEL_7;
    }
  }

  else
  {
    CharEncodingHandler = xmlFindCharEncodingHandler("HTML");
    if (!CharEncodingHandler)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler("ascii");
    }
  }

  v7 = CharEncodingHandler;
LABEL_11:
  filename = xmlOutputBufferCreateFilename(v2, v7, cur->compression);
  if (filename)
  {
    v8 = filename;
    htmlNodeDumpFormatOutput(filename, cur, cur, 0, 1);

    LODWORD(filename) = xmlOutputBufferClose(v8);
  }

  return filename;
}

int htmlSaveFileFormat(const char *filename, xmlDocPtr cur, const char *encoding, int format)
{
  v4 = filename;
  LODWORD(filename) = -1;
  if (v4 && cur)
  {
    xmlInitParser();
    if (encoding)
    {
      if (xmlParseCharEncoding(encoding) == XML_CHAR_ENCODING_UTF8)
      {
        CharEncodingHandler = 0;
      }

      else
      {
        CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
        if (!CharEncodingHandler)
        {
          __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", encoding);
        }
      }

      htmlSetMetaEncoding(cur, encoding);
    }

    else
    {
      htmlSetMetaEncoding(cur, "UTF-8");
      CharEncodingHandler = xmlFindCharEncodingHandler("HTML");
      if (!CharEncodingHandler)
      {
        CharEncodingHandler = xmlFindCharEncodingHandler("ascii");
      }
    }

    filename = xmlOutputBufferCreateFilename(v4, CharEncodingHandler, 0);
    if (filename)
    {
      v10 = filename;
      htmlDocContentDumpFormatOutput(filename, cur, v9, format);

      LODWORD(filename) = xmlOutputBufferClose(v10);
    }
  }

  return filename;
}

int xmlGetFeaturesList(int *len, const char **result)
{
  v3 = 42;
  if (len && result)
  {
    v4 = *len;
    if (*len > 0x3E7)
    {
      return -1;
    }

    if (v4 < 0x2B)
    {
      if (!v4)
      {
        return v3;
      }
    }

    else
    {
      v4 = 42;
      *len = 42;
    }

    memcpy(result, xmlFeaturesList, 8 * v4);
    return 42;
  }

  return v3;
}

int xmlGetFeature(xmlParserCtxtPtr ctxt, const char *name, void *result)
{
  v4 = -1;
  if (ctxt && name && result)
  {
    v4 = strcmp(name, "validate");
    if (v4)
    {
      v4 = strcmp(name, "keep blanks");
      if (v4)
      {
        v4 = strcmp(name, "disable SAX");
        if (v4)
        {
          v4 = strcmp(name, "fetch external entities");
          if (v4)
          {
            v4 = strcmp(name, "substitute entities");
            if (v4)
            {
              v4 = strcmp(name, "gather line info");
              if (v4)
              {
                v4 = strcmp(name, "user data");
                if (!v4)
                {
                  userData = ctxt->userData;
                  goto LABEL_52;
                }

                v4 = strcmp(name, "is html");
                if (v4)
                {
                  v4 = strcmp(name, "is standalone");
                  if (v4)
                  {
                    v4 = strcmp(name, "document");
                    if (v4)
                    {
                      v4 = strcmp(name, "is well formed");
                      if (v4)
                      {
                        v4 = strcmp(name, "is valid");
                        if (v4)
                        {
                          v4 = strcmp(name, "SAX block");
                          if (v4)
                          {
                            v4 = strcmp(name, "SAX function internalSubset");
                            if (v4)
                            {
                              v4 = strcmp(name, "SAX function isStandalone");
                              if (v4)
                              {
                                v4 = strcmp(name, "SAX function hasInternalSubset");
                                if (v4)
                                {
                                  v4 = strcmp(name, "SAX function hasExternalSubset");
                                  if (v4)
                                  {
                                    v4 = strcmp(name, "SAX function resolveEntity");
                                    if (v4)
                                    {
                                      v4 = strcmp(name, "SAX function getEntity");
                                      if (v4)
                                      {
                                        v4 = strcmp(name, "SAX function entityDecl");
                                        if (v4)
                                        {
                                          v4 = strcmp(name, "SAX function notationDecl");
                                          if (v4)
                                          {
                                            v4 = strcmp(name, "SAX function attributeDecl");
                                            if (v4)
                                            {
                                              v4 = strcmp(name, "SAX function elementDecl");
                                              if (v4)
                                              {
                                                v4 = strcmp(name, "SAX function unparsedEntityDecl");
                                                if (v4)
                                                {
                                                  v4 = strcmp(name, "SAX function setDocumentLocator");
                                                  if (v4)
                                                  {
                                                    v4 = strcmp(name, "SAX function startDocument");
                                                    if (v4)
                                                    {
                                                      v4 = strcmp(name, "SAX function endDocument");
                                                      if (v4)
                                                      {
                                                        v4 = strcmp(name, "SAX function startElement");
                                                        if (v4)
                                                        {
                                                          v4 = strcmp(name, "SAX function endElement");
                                                          if (v4)
                                                          {
                                                            v4 = strcmp(name, "SAX function reference");
                                                            if (v4)
                                                            {
                                                              v4 = strcmp(name, "SAX function characters");
                                                              if (v4)
                                                              {
                                                                v4 = strcmp(name, "SAX function ignorableWhitespace");
                                                                if (v4)
                                                                {
                                                                  v4 = strcmp(name, "SAX function processingInstruction");
                                                                  if (v4)
                                                                  {
                                                                    v4 = strcmp(name, "SAX function comment");
                                                                    if (v4)
                                                                    {
                                                                      v4 = strcmp(name, "SAX function warning");
                                                                      if (v4)
                                                                      {
                                                                        v4 = strcmp(name, "SAX function error");
                                                                        if (v4)
                                                                        {
                                                                          v4 = strcmp(name, "SAX function fatalError");
                                                                          if (v4)
                                                                          {
                                                                            v4 = strcmp(name, "SAX function getParameterEntity");
                                                                            if (v4)
                                                                            {
                                                                              v4 = strcmp(name, "SAX function cdataBlock");
                                                                              if (v4)
                                                                              {
                                                                                v4 = strcmp(name, "SAX function externalSubset");
                                                                                if (v4)
                                                                                {
                                                                                  return -1;
                                                                                }

                                                                                userData = ctxt->sax->externalSubset;
                                                                              }

                                                                              else
                                                                              {
                                                                                userData = ctxt->sax->cdataBlock;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              userData = ctxt->sax->getParameterEntity;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            userData = ctxt->sax->fatalError;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          userData = ctxt->sax->error;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        userData = ctxt->sax->warning;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      userData = ctxt->sax->comment;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    userData = ctxt->sax->processingInstruction;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  userData = ctxt->sax->ignorableWhitespace;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                userData = ctxt->sax->characters;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              userData = ctxt->sax->reference;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            userData = ctxt->sax->endElement;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          userData = ctxt->sax->startElement;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        userData = ctxt->sax->endDocument;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      userData = ctxt->sax->startDocument;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    userData = ctxt->sax->setDocumentLocator;
                                                  }
                                                }

                                                else
                                                {
                                                  userData = ctxt->sax->unparsedEntityDecl;
                                                }
                                              }

                                              else
                                              {
                                                userData = ctxt->sax->elementDecl;
                                              }
                                            }

                                            else
                                            {
                                              userData = ctxt->sax->attributeDecl;
                                            }
                                          }

                                          else
                                          {
                                            userData = ctxt->sax->notationDecl;
                                          }
                                        }

                                        else
                                        {
                                          userData = ctxt->sax->entityDecl;
                                        }
                                      }

                                      else
                                      {
                                        userData = ctxt->sax->getEntity;
                                      }
                                    }

                                    else
                                    {
                                      userData = ctxt->sax->resolveEntity;
                                    }
                                  }

                                  else
                                  {
                                    userData = ctxt->sax->hasExternalSubset;
                                  }
                                }

                                else
                                {
                                  userData = ctxt->sax->hasInternalSubset;
                                }
                              }

                              else
                              {
                                userData = ctxt->sax->isStandalone;
                              }
                            }

                            else
                            {
                              userData = ctxt->sax->internalSubset;
                            }
                          }

                          else
                          {
                            userData = ctxt->sax;
                          }

                          goto LABEL_52;
                        }

                        valid = ctxt->valid;
                      }

                      else
                      {
                        valid = ctxt->wellFormed;
                      }

                      goto LABEL_58;
                    }

                    userData = ctxt->myDoc;
LABEL_52:
                    *result = userData;
                    return v4;
                  }

                  valid = ctxt->standalone;
                }

                else
                {
                  valid = ctxt->html;
                }
              }

              else
              {
                valid = ctxt->record_info;
              }
            }

            else
            {
              valid = ctxt->replaceEntities;
            }
          }

          else
          {
            valid = ctxt->loadsubset;
          }
        }

        else
        {
          valid = ctxt->disableSAX;
        }
      }

      else
      {
        valid = ctxt->keepBlanks;
      }
    }

    else
    {
      valid = ctxt->validate;
    }

LABEL_58:
    *result = valid;
  }

  return v4;
}

int xmlSetFeature(xmlParserCtxtPtr ctxt, const char *name, void *value)
{
  result = -1;
  if (ctxt && name && value)
  {
    if (!strcmp(name, "validate"))
    {
      v7 = *value;
      if (!ctxt->validate && v7)
      {
        if (!ctxt->vctxt.warning)
        {
          ctxt->vctxt.warning = xmlParserValidityWarning;
        }

        if (!ctxt->vctxt.error)
        {
          ctxt->vctxt.error = xmlParserValidityError;
        }

        ctxt->vctxt.nodeMax = 0;
      }

      result = 0;
      ctxt->validate = v7;
    }

    else
    {
      result = strcmp(name, "keep blanks");
      if (result)
      {
        result = strcmp(name, "disable SAX");
        if (result)
        {
          result = strcmp(name, "fetch external entities");
          if (result)
          {
            result = strcmp(name, "substitute entities");
            if (result)
            {
              result = strcmp(name, "gather line info");
              if (result)
              {
                result = strcmp(name, "user data");
                if (result)
                {
                  result = strcmp(name, "is html");
                  if (result)
                  {
                    result = strcmp(name, "is standalone");
                    if (result)
                    {
                      result = strcmp(name, "document");
                      if (result)
                      {
                        result = strcmp(name, "is well formed");
                        if (result)
                        {
                          result = strcmp(name, "is valid");
                          if (result)
                          {
                            result = strcmp(name, "SAX block");
                            if (result)
                            {
                              result = strcmp(name, "SAX function internalSubset");
                              if (result)
                              {
                                result = strcmp(name, "SAX function isStandalone");
                                if (result)
                                {
                                  result = strcmp(name, "SAX function hasInternalSubset");
                                  if (result)
                                  {
                                    result = strcmp(name, "SAX function hasExternalSubset");
                                    if (result)
                                    {
                                      result = strcmp(name, "SAX function resolveEntity");
                                      if (result)
                                      {
                                        result = strcmp(name, "SAX function getEntity");
                                        if (result)
                                        {
                                          result = strcmp(name, "SAX function entityDecl");
                                          if (result)
                                          {
                                            result = strcmp(name, "SAX function notationDecl");
                                            if (result)
                                            {
                                              result = strcmp(name, "SAX function attributeDecl");
                                              if (result)
                                              {
                                                result = strcmp(name, "SAX function elementDecl");
                                                if (result)
                                                {
                                                  result = strcmp(name, "SAX function unparsedEntityDecl");
                                                  if (result)
                                                  {
                                                    result = strcmp(name, "SAX function setDocumentLocator");
                                                    if (result)
                                                    {
                                                      result = strcmp(name, "SAX function startDocument");
                                                      if (result)
                                                      {
                                                        result = strcmp(name, "SAX function endDocument");
                                                        if (result)
                                                        {
                                                          result = strcmp(name, "SAX function startElement");
                                                          if (result)
                                                          {
                                                            result = strcmp(name, "SAX function endElement");
                                                            if (result)
                                                            {
                                                              result = strcmp(name, "SAX function reference");
                                                              if (result)
                                                              {
                                                                result = strcmp(name, "SAX function characters");
                                                                if (result)
                                                                {
                                                                  result = strcmp(name, "SAX function ignorableWhitespace");
                                                                  if (result)
                                                                  {
                                                                    result = strcmp(name, "SAX function processingInstruction");
                                                                    if (result)
                                                                    {
                                                                      result = strcmp(name, "SAX function comment");
                                                                      if (result)
                                                                      {
                                                                        result = strcmp(name, "SAX function warning");
                                                                        if (result)
                                                                        {
                                                                          result = strcmp(name, "SAX function error");
                                                                          if (result)
                                                                          {
                                                                            result = strcmp(name, "SAX function fatalError");
                                                                            if (result)
                                                                            {
                                                                              result = strcmp(name, "SAX function getParameterEntity");
                                                                              if (result)
                                                                              {
                                                                                result = strcmp(name, "SAX function cdataBlock");
                                                                                if (result)
                                                                                {
                                                                                  result = strcmp(name, "SAX function externalSubset");
                                                                                  if (result)
                                                                                  {
                                                                                    return -1;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    ctxt->sax->externalSubset = *value;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  ctxt->sax->cdataBlock = *value;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                ctxt->sax->getParameterEntity = *value;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              ctxt->sax->fatalError = *value;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            ctxt->sax->error = *value;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          ctxt->sax->warning = *value;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        ctxt->sax->comment = *value;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      ctxt->sax->processingInstruction = *value;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    ctxt->sax->ignorableWhitespace = *value;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  ctxt->sax->characters = *value;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                ctxt->sax->reference = *value;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              ctxt->sax->endElement = *value;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            ctxt->sax->startElement = *value;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          ctxt->sax->endDocument = *value;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        ctxt->sax->startDocument = *value;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      ctxt->sax->setDocumentLocator = *value;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    ctxt->sax->unparsedEntityDecl = *value;
                                                  }
                                                }

                                                else
                                                {
                                                  ctxt->sax->elementDecl = *value;
                                                }
                                              }

                                              else
                                              {
                                                ctxt->sax->attributeDecl = *value;
                                              }
                                            }

                                            else
                                            {
                                              ctxt->sax->notationDecl = *value;
                                            }
                                          }

                                          else
                                          {
                                            ctxt->sax->entityDecl = *value;
                                          }
                                        }

                                        else
                                        {
                                          ctxt->sax->getEntity = *value;
                                        }
                                      }

                                      else
                                      {
                                        ctxt->sax->resolveEntity = *value;
                                      }
                                    }

                                    else
                                    {
                                      ctxt->sax->hasExternalSubset = *value;
                                    }
                                  }

                                  else
                                  {
                                    ctxt->sax->hasInternalSubset = *value;
                                  }
                                }

                                else
                                {
                                  ctxt->sax->isStandalone = *value;
                                }
                              }

                              else
                              {
                                ctxt->sax->internalSubset = *value;
                              }
                            }

                            else
                            {
                              ctxt->sax = *value;
                            }
                          }

                          else
                          {
                            ctxt->valid = *value;
                          }
                        }

                        else
                        {
                          ctxt->wellFormed = *value;
                        }
                      }

                      else
                      {
                        ctxt->myDoc = *value;
                      }
                    }

                    else
                    {
                      ctxt->standalone = *value;
                    }
                  }

                  else
                  {
                    ctxt->html = *value;
                  }
                }

                else
                {
                  ctxt->userData = *value;
                }
              }

              else
              {
                ctxt->record_info = *value;
              }
            }

            else
            {
              ctxt->replaceEntities = *value;
            }
          }

          else
          {
            ctxt->loadsubset = *value;
          }
        }

        else
        {
          ctxt->disableSAX = *value;
        }
      }

      else
      {
        ctxt->keepBlanks = *value;
      }
    }
  }

  return result;
}

xmlChar *__cdecl xmlDecodeEntities(xmlParserCtxtPtr ctxt, int len, int what, xmlChar end, xmlChar end2, xmlChar end3)
{
  if ((xmlDecodeEntities_deprecated & 1) == 0)
  {
    v6 = *__xmlGenericError();
    v7 = __xmlGenericErrorContext();
    v6(*v7, "xmlDecodeEntities() deprecated function reached\n");
    xmlDecodeEntities_deprecated = 1;
  }

  return 0;
}

xmlChar *__cdecl xmlNamespaceParseNCName(xmlParserCtxtPtr ctxt)
{
  if ((xmlNamespaceParseNCName_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlNamespaceParseNCName() deprecated function reached\n");
    xmlNamespaceParseNCName_deprecated = 1;
  }

  return 0;
}

xmlChar *__cdecl xmlNamespaceParseQName(xmlParserCtxtPtr ctxt, xmlChar **prefix)
{
  if ((xmlNamespaceParseQName_deprecated & 1) == 0)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "xmlNamespaceParseQName() deprecated function reached\n");
    xmlNamespaceParseQName_deprecated = 1;
  }

  return 0;
}

xmlChar *__cdecl xmlNamespaceParseNSDef(xmlParserCtxtPtr ctxt)
{
  if ((xmlNamespaceParseNSDef_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlNamespaceParseNSDef() deprecated function reached\n");
    xmlNamespaceParseNSDef_deprecated = 1;
  }

  return 0;
}

xmlChar *__cdecl xmlParseQuotedString(xmlParserCtxtPtr ctxt)
{
  if ((xmlParseQuotedString_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlParseQuotedString() deprecated function reached\n");
    xmlParseQuotedString_deprecated = 1;
  }

  return 0;
}

void xmlParseNamespace(xmlParserCtxtPtr ctxt)
{
  if ((xmlParseNamespace_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlParseNamespace() deprecated function reached\n");
    xmlParseNamespace_deprecated = 1;
  }
}

xmlChar *__cdecl xmlScanName(xmlParserCtxtPtr ctxt)
{
  if ((xmlScanName_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlScanName() deprecated function reached\n");
    xmlScanName_deprecated = 1;
  }

  return 0;
}

void xmlParserHandleReference(xmlParserCtxtPtr ctxt)
{
  if ((xmlParserHandleReference_deprecated & 1) == 0)
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "xmlParserHandleReference() deprecated function reached\n");
    xmlParserHandleReference_deprecated = 1;
  }
}

void xmlHandleEntity(xmlParserCtxtPtr ctxt, xmlEntityPtr entity)
{
  if ((xmlHandleEntity_deprecated & 1) == 0)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "xmlHandleEntity() deprecated function reached\n");
    xmlHandleEntity_deprecated = 1;
  }
}

xmlNsPtr xmlNewGlobalNs(xmlDocPtr doc, const xmlChar *href, const xmlChar *prefix)
{
  if ((xmlNewGlobalNs_deprecated & 1) == 0)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "xmlNewGlobalNs() deprecated function reached\n");
    xmlNewGlobalNs_deprecated = 1;
  }

  return 0;
}

const xmlChar *__cdecl xmlEncodeEntities(xmlDocPtr doc, const xmlChar *input)
{
  if ((xmlEncodeEntities_warning & 1) == 0)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Deprecated API xmlEncodeEntities() used\n");
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "   change code to use xmlEncodeEntitiesReentrant()\n");
    xmlEncodeEntities_warning = 1;
  }

  return 0;
}

const xmlChar *__cdecl getPublicId(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "getPublicId");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2GetPublicId(ctx);
}

const xmlChar *__cdecl getSystemId(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "getSystemId");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2GetSystemId(ctx);
}

int getLineNumber(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "getLineNumber");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2GetLineNumber(ctx);
}

int getColumnNumber(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "getColumnNumber");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2GetColumnNumber(ctx);
}

int isStandalone(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "isStandalone");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2IsStandalone(ctx);
}

int hasInternalSubset(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "hasInternalSubset");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2HasInternalSubset(ctx);
}

int hasExternalSubset(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "hasExternalSubset");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  return xmlSAX2HasExternalSubset(ctx);
}

void internalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  v8 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Use of deprecated SAXv1 function %s\n", "internalSubset");
    v8 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v8 + 1;

  xmlSAX2InternalSubset(ctx, name, ExternalID, SystemID);
}

void externalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  v8 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Use of deprecated SAXv1 function %s\n", "externalSubset");
    v8 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v8 + 1;

  xmlSAX2ExternalSubset(ctx, name, ExternalID, SystemID);
}

xmlParserInputPtr resolveEntity(void *ctx, const xmlChar *publicId, const xmlChar *systemId)
{
  v6 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Use of deprecated SAXv1 function %s\n", "resolveEntity");
    v6 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v6 + 1;

  return xmlSAX2ResolveEntity(ctx, publicId, systemId);
}

xmlEntityPtr getEntity(void *ctx, const xmlChar *name)
{
  v4 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Use of deprecated SAXv1 function %s\n", "getEntity");
    v4 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v4 + 1;

  return xmlSAX2GetEntity(ctx, name);
}

xmlEntityPtr getParameterEntity(void *ctx, const xmlChar *name)
{
  v4 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Use of deprecated SAXv1 function %s\n", "getParameterEntity");
    v4 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v4 + 1;

  return xmlSAX2GetParameterEntity(ctx, name);
}

void entityDecl(void *ctx, const xmlChar *name, int type, const xmlChar *publicId, const xmlChar *systemId, xmlChar *content)
{
  v12 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v13 = *__xmlGenericError();
    v14 = __xmlGenericErrorContext();
    v13(*v14, "Use of deprecated SAXv1 function %s\n", "entityDecl");
    v12 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v12 + 1;

  xmlSAX2EntityDecl(ctx, name, type, publicId, systemId, content);
}

void attributeDecl(void *ctx, const xmlChar *elem, const xmlChar *fullname, int type, int def, const xmlChar *defaultValue, xmlEnumerationPtr tree)
{
  v14 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v15 = *__xmlGenericError();
    v16 = __xmlGenericErrorContext();
    v15(*v16, "Use of deprecated SAXv1 function %s\n", "attributeDecl");
    v14 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v14 + 1;

  xmlSAX2AttributeDecl(ctx, elem, fullname, type, def, defaultValue, tree);
}

void elementDecl(void *ctx, const xmlChar *name, int type, xmlElementContentPtr content)
{
  v8 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Use of deprecated SAXv1 function %s\n", "elementDecl");
    v8 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v8 + 1;

  xmlSAX2ElementDecl(ctx, name, type, content);
}

void notationDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId)
{
  v8 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Use of deprecated SAXv1 function %s\n", "notationDecl");
    v8 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v8 + 1;

  xmlSAX2NotationDecl(ctx, name, publicId, systemId);
}

void unparsedEntityDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId, const xmlChar *notationName)
{
  v10 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v11 = *__xmlGenericError();
    v12 = __xmlGenericErrorContext();
    v11(*v12, "Use of deprecated SAXv1 function %s\n", "unparsedEntityDecl");
    v10 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v10 + 1;

  xmlSAX2UnparsedEntityDecl(ctx, name, publicId, systemId, notationName);
}

void setDocumentLocator(void *ctx, xmlSAXLocatorPtr loc)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "setDocumentLocator");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;
}

void endDocument(void *ctx)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "endDocument");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;

  xmlSAX2EndDocument(ctx);
}

void attribute(void *ctx, const xmlChar *fullname, const xmlChar *value)
{
  v3 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Use of deprecated SAXv1 function %s\n", "attribute");
    v3 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v3 + 1;
}

void endElement(void *ctx, const xmlChar *name)
{
  v4 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Use of deprecated SAXv1 function %s\n", "endElement");
    v4 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v4 + 1;

  xmlSAX2EndElement(ctx, name);
}

void reference(void *ctx, const xmlChar *name)
{
  v4 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Use of deprecated SAXv1 function %s\n", "reference");
    v4 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v4 + 1;

  xmlSAX2Reference(ctx, name);
}

void characters(void *ctx, const xmlChar *ch, int len)
{
  v6 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Use of deprecated SAXv1 function %s\n", "characters");
    v6 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v6 + 1;

  xmlSAX2Characters(ctx, ch, len);
}

void ignorableWhitespace(void *ctx, const xmlChar *ch, int len)
{
  v3 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Use of deprecated SAXv1 function %s\n", "ignorableWhitespace");
    v3 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v3 + 1;
}

void processingInstruction(void *ctx, const xmlChar *target, const xmlChar *data)
{
  v6 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Use of deprecated SAXv1 function %s\n", "processingInstruction");
    v6 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v6 + 1;

  xmlSAX2ProcessingInstruction(ctx, target, data);
}

void globalNamespace(void *ctx, const xmlChar *href, const xmlChar *prefix)
{
  v3 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Use of deprecated SAXv1 function %s\n", "globalNamespace");
    v3 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v3 + 1;
}

void setNamespace(void *ctx, const xmlChar *name)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "setNamespace");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;
}

xmlNsPtr getNamespace(void *ctx)
{
  v1 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Use of deprecated SAXv1 function %s\n", "getNamespace");
    v1 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v1 + 1;
  return 0;
}

int checkNamespace(void *ctx, xmlChar *nameSpace)
{
  v2 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v3 = *__xmlGenericError();
    v4 = __xmlGenericErrorContext();
    v3(*v4, "Use of deprecated SAXv1 function %s\n", "checkNamespace");
    v2 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v2 + 1;
  return 0;
}

void namespaceDecl(void *ctx, const xmlChar *href, const xmlChar *prefix)
{
  v3 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v4 = *__xmlGenericError();
    v5 = __xmlGenericErrorContext();
    v4(*v5, "Use of deprecated SAXv1 function %s\n", "namespaceDecl");
    v3 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v3 + 1;
}

void comment(void *ctx, const xmlChar *value)
{
  v4 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Use of deprecated SAXv1 function %s\n", "comment");
    v4 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v4 + 1;

  xmlSAX2Comment(ctx, value);
}

void cdataBlock(void *ctx, const xmlChar *value, int len)
{
  v6 = deprecated_v1_msg;
  if (!deprecated_v1_msg)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Use of deprecated SAXv1 function %s\n", "cdataBlock");
    v6 = deprecated_v1_msg;
  }

  deprecated_v1_msg = v6 + 1;

  xmlSAX2CDataBlock(ctx, value, len);
}

xmlListPtr xmlListCreate(xmlListDeallocator deallocator, xmlListDataCompare compare)
{
  v4 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
  if (!v4)
  {
    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Cannot initialize memory for list");
    return 0;
  }

  v5 = v4;
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v6 = malloc_type_malloc(0x18uLL, 0xA0040E93CF5C4uLL);
  *v5 = v6;
  if (!v6)
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Cannot initialize memory for sentinel");
    free(v5);
    return 0;
  }

  *v6 = v6;
  v6[1] = v6;
  v6[2] = 0;
  if (deallocator)
  {
    v5[1] = deallocator;
  }

  if (compare)
  {
    v5[2] = compare;
  }

  else
  {
    v5[2] = xmlLinkCompare;
  }

  return v5;
}

uint64_t xmlLinkCompare(unint64_t a1, unint64_t a2)
{
  if (a1 < a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return a1 != a2;
  }
}

void *__cdecl xmlListSearch(void *l, void *data)
{
  if (l)
  {
    l = xmlListLinkSearch(l, data);
    if (l)
    {
      return *(l + 2);
    }
  }

  return l;
}

void *xmlListLinkSearch(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  do
  {
    v4 = *v4;
    if (v4 == *a1)
    {
      return 0;
    }
  }

  while (((*(a1 + 16))(v4[2], a2) & 0x80000000) != 0);
  if (v4 == *a1)
  {
    return 0;
  }

  if ((*(a1 + 16))(v4[2], a2))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *__cdecl xmlListReverseSearch(void *l, void *data)
{
  if (l)
  {
    l = xmlListLinkReverseSearch(l, data);
    if (l)
    {
      return *(l + 2);
    }
  }

  return l;
}

uint64_t xmlListLinkReverseSearch(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  do
  {
    v4 = *(v4 + 8);
    if (v4 == *a1)
    {
      return 0;
    }
  }

  while ((a1[2])(*(v4 + 16), a2) > 0);
  if (v4 == *a1)
  {
    return 0;
  }

  if ((a1[2])(*(v4 + 16), a2))
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

int xmlListInsert(xmlListPtr l, void *data)
{
  if (!l)
  {
    return 1;
  }

  v4 = *l;
  do
  {
    v4 = *v4;
  }

  while (v4 != *l && ((*(l + 2))(v4[2], data) & 0x80000000) != 0);
  v5 = malloc_type_malloc(0x18uLL, 0xA0040E93CF5C4uLL);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v6[2] = data;
    v8 = v4[1];
    v9 = *v8;
    *(v9 + 8) = v6;
    *v6 = v9;
    *v8 = v6;
    v6[1] = v8;
  }

  else
  {
    v10 = *__xmlGenericError();
    v11 = __xmlGenericErrorContext();
    v10(*v11, "Cannot initialize memory for new link");
    return 1;
  }

  return result;
}

int xmlListAppend(xmlListPtr l, void *data)
{
  if (!l)
  {
    return 1;
  }

  v4 = *l;
  do
  {
    v4 = v4[1];
  }

  while (v4 != *l && (*(l + 2))(v4[2], data) > 0);
  v5 = malloc_type_malloc(0x18uLL, 0xA0040E93CF5C4uLL);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v6[2] = data;
    v8 = *v4;
    *(v8 + 8) = v6;
    *v6 = v8;
    *v4 = v6;
    v6[1] = v4;
  }

  else
  {
    v9 = *__xmlGenericError();
    v10 = __xmlGenericErrorContext();
    v9(*v10, "Cannot initialize memory for new link");
    return 1;
  }

  return result;
}

void xmlListDelete(xmlListPtr l)
{
  if (l)
  {
    xmlListClear(l);
    free(*l);

    free(l);
  }
}

void xmlListClear(xmlListPtr l)
{
  if (l)
  {
    v2 = **l;
    if (v2 != *l)
    {
      do
      {
        v4 = *v2;
        v3 = v2[1];
        *v3 = *v2;
        v4[1] = v3;
        v5 = *(l + 1);
        if (v5)
        {
          v5(v2);
        }

        free(v2);
        v2 = v4;
      }

      while (v4 != *l);
    }
  }
}

int xmlListRemoveFirst(xmlListPtr l, void *data)
{
  if (l)
  {
    v2 = l;
    l = xmlListLinkSearch(l, data);
    if (l)
    {
      v3 = l;
      v4 = *l;
      v5 = *(l + 1);
      *v5 = *l;
      *(v4 + 8) = v5;
      v6 = *(v2 + 1);
      if (v6)
      {
        v6(l);
      }

      free(v3);
      LODWORD(l) = 1;
    }
  }

  return l;
}

int xmlListRemoveLast(xmlListPtr l, void *data)
{
  if (l)
  {
    v2 = l;
    l = xmlListLinkReverseSearch(l, data);
    if (l)
    {
      v3 = l;
      v4 = *l;
      v5 = *(l + 1);
      *v5 = *l;
      *(v4 + 8) = v5;
      v6 = *(v2 + 1);
      if (v6)
      {
        v6(l);
      }

      free(v3);
      LODWORD(l) = 1;
    }
  }

  return l;
}

int xmlListRemoveAll(xmlListPtr l, void *data)
{
  if (!l)
  {
    return 0;
  }

  v4 = -1;
  do
  {
    ++v4;
  }

  while (xmlListRemoveFirst(l, data));
  return v4;
}

int xmlListEmpty(xmlListPtr l)
{
  if (l)
  {
    return **l == *l;
  }

  else
  {
    return -1;
  }
}

xmlLinkPtr xmlListFront(xmlLinkPtr l)
{
  if (l)
  {
    return **l;
  }

  return l;
}

xmlLinkPtr xmlListEnd(xmlLinkPtr l)
{
  if (l)
  {
    return *(*l + 8);
  }

  return l;
}

int xmlListSize(xmlListPtr l)
{
  if (!l)
  {
    return -1;
  }

  v1 = *l;
  result = -1;
  v3 = v1;
  do
  {
    v3 = *v3;
    ++result;
  }

  while (v3 != v1);
  return result;
}

void xmlListPopFront(xmlListPtr l)
{
  if (l)
  {
    v1 = **l;
    if (v1 != *l)
    {
      v2 = *v1;
      v3 = v1[1];
      *v3 = *v1;
      *(v2 + 8) = v3;
      v4 = *(l + 1);
      if (v4)
      {
        v4(v1);
      }

      free(v1);
    }
  }
}

void xmlListPopBack(xmlListPtr l)
{
  if (l && **l != *l)
  {
    v2 = *(*l + 8);
    v3 = *v2;
    v4 = v2[1];
    *v4 = *v2;
    *(v3 + 8) = v4;
    v5 = *(l + 1);
    if (v5)
    {
      v5(v2);
    }

    free(v2);
  }
}

int xmlListPushFront(xmlListPtr l, void *data)
{
  if (l)
  {
    v3 = *l;
    l = malloc_type_malloc(0x18uLL, 0xA0040E93CF5C4uLL);
    if (l)
    {
      *(l + 2) = data;
      v4 = *v3;
      *(v4 + 1) = l;
      *l = v4;
      *v3 = l;
      *(l + 1) = v3;
      LODWORD(l) = 1;
    }

    else
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Cannot initialize memory for new link");
      LODWORD(l) = 0;
    }
  }

  return l;
}

int xmlListPushBack(xmlListPtr l, void *data)
{
  if (l)
  {
    v3 = *(*l + 8);
    l = malloc_type_malloc(0x18uLL, 0xA0040E93CF5C4uLL);
    if (l)
    {
      *(l + 2) = data;
      v4 = *v3;
      *(v4 + 1) = l;
      *l = v4;
      *v3 = l;
      *(l + 1) = v3;
      LODWORD(l) = 1;
    }

    else
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "Cannot initialize memory for new link");
      LODWORD(l) = 0;
    }
  }

  return l;
}

void *__cdecl xmlLinkGetData(void *lk)
{
  if (lk)
  {
    return *(lk + 2);
  }

  return lk;
}

void xmlListReverse(xmlListPtr l)
{
  if (l)
  {
    v1 = *l;
    v2 = **l;
    if (v2 == *l)
    {
      v4 = *l;
    }

    else
    {
      v3 = *l;
      do
      {
        v4 = v2;
        *v3 = v3[1];
        v3[1] = v2;
        v2 = *v2;
        v3 = v4;
      }

      while (v2 != v1);
    }

    *v4 = v4[1];
    v4[1] = v2;
  }
}

void xmlListSort(xmlListPtr l)
{
  if (l)
  {
    if (**l != *l)
    {
      v2 = xmlListDup(l);
      if (v2)
      {
        v3 = v2;
        xmlListClear(l);
        xmlListCopy(l, v3);
        xmlListClear(v3);

        xmlListDelete(v3);
      }
    }
  }
}

xmlListPtr xmlListDup(xmlListPtr old)
{
  if (old)
  {
    v1 = old;
    old = xmlListCreate(0, *(old + 2));
    if (old)
    {
      v2 = old;
      if (xmlListCopy(old, v1))
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }
  }

  return old;
}

void xmlListMerge(xmlListPtr l1, xmlListPtr l2)
{
  xmlListCopy(l1, l2);

  xmlListClear(l2);
}

void xmlListWalk(xmlListPtr l, xmlListWalker walker, void *user)
{
  if (l && walker)
  {
    v6 = *l;
    do
    {
      v6 = *v6;
    }

    while (v6 != *l && (walker)(v6[2], user));
  }
}

void xmlListReverseWalk(xmlListPtr l, xmlListWalker walker, void *user)
{
  if (l && walker)
  {
    v6 = *l;
    do
    {
      v6 = *(v6 + 8);
    }

    while (v6 != *l && (walker)(*(v6 + 16), user));
  }
}

int xmlListCopy(xmlListPtr cur, const xmlListPtr old)
{
  result = 1;
  if (cur && old)
  {
    v5 = *old;
    while (1)
    {
      v5 = *v5;
      if (v5 == *old)
      {
        break;
      }

      if (xmlListInsert(cur, v5[2]))
      {
        xmlListDelete(cur);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void xmlNanoFTPInit(void)
{
  if ((initialized & 1) == 0)
  {
    proxyPort = 21;
    v0 = getenv("no_proxy");
    if (!v0 || *v0 != 42 || v0[1])
    {
      v1 = getenv("ftp_proxy");
      if (v1 || (v1 = getenv("FTP_PROXY")) != 0)
      {
        xmlNanoFTPScanProxy(v1);
      }

      v2 = getenv("ftp_proxy_user");
      if (v2)
      {
        proxyUser = strdup(v2);
      }

      v3 = getenv("ftp_proxy_password");
      if (v3)
      {
        proxyPasswd = strdup(v3);
      }

      initialized = 1;
    }
  }
}

void xmlNanoFTPScanProxy(const char *URL)
{
  if (proxy)
  {
    free(proxy);
    proxy = 0;
  }

  proxyPort = 0;
  if (URL)
  {
    v2 = xmlParseURIRaw(URL, 1);
    if (v2)
    {
      v3 = v2;
      scheme = v2->scheme;
      if (scheme && !strcmp(scheme, "ftp") && (server = v3->server) != 0)
      {
        proxy = strdup(server);
        if (v3->port)
        {
          proxyPort = v3->port;
        }
      }

      else
      {
        __xmlIOErr(9u, 2003, "Syntax Error\n");
      }

      xmlFreeURI(v3);
    }

    else
    {

      __xmlIOErr(9u, 2003, "Syntax Error\n");
    }
  }
}

void xmlNanoFTPCleanup(void)
{
  if (proxy)
  {
    free(proxy);
    proxy = 0;
  }

  if (proxyUser)
  {
    free(proxyUser);
    proxyUser = 0;
  }

  if (proxyPasswd)
  {
    free(proxyPasswd);
    proxyPasswd = 0;
  }

  initialized = 0;
}

void xmlNanoFTPProxy(const char *host, int port, const char *user, const char *passwd, int type)
{
  if (proxy)
  {
    free(proxy);
    proxy = 0;
  }

  if (proxyUser)
  {
    free(proxyUser);
    proxyUser = 0;
  }

  if (proxyPasswd)
  {
    free(proxyPasswd);
    proxyPasswd = 0;
  }

  if (host)
  {
    proxy = strdup(host);
  }

  if (user)
  {
    proxyUser = strdup(user);
  }

  if (passwd)
  {
    proxyPasswd = strdup(passwd);
  }

  proxyPort = port;
  proxyType = type;
}

int xmlNanoFTPUpdateURL(void *ctx, const char *URL)
{
  v2 = -1;
  if (ctx)
  {
    if (URL)
    {
      if (*ctx)
      {
        if (*(ctx + 1))
        {
          v4 = xmlParseURIRaw(URL, 1);
          if (v4)
          {
            v5 = v4;
            if (v4->scheme)
            {
              server = v4->server;
              if (server && !strcmp(*ctx, v4->scheme) && !strcmp(*(ctx + 1), server) && ((port = v5->port) == 0 || *(ctx + 4) == port))
              {
                v9 = *(ctx + 3);
                if (v9)
                {
                  free(v9);
                  *(ctx + 3) = 0;
                }

                path = v5->path;
                if (!path)
                {
                  path = "/";
                }

                v2 = 0;
                *(ctx + 3) = strdup(path);
              }

              else
              {
                v2 = -1;
              }
            }

            xmlFreeURI(v5);
          }
        }
      }
    }
  }

  return v2;
}

void *__cdecl xmlNanoFTPNewCtxt(const char *URL)
{
  v2 = malloc_type_malloc(0x4D8uLL, 0x1010040A4ECED6FuLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, 0x4D8uLL);
    *(v3 + 16) = 21;
    *(v3 + 1224) = 0;
    *(v3 + 176) = 0xFFFFFFFF00000001;
    v4 = xmlURIUnescapeString(URL, 0, 0);
    if (v4)
    {
      v5 = v4;
      xmlNanoFTPScanURL(v3, v4);
      free(v5);
    }

    else if (URL)
    {
      xmlNanoFTPScanURL(v3, URL);
    }
  }

  else
  {
    __xmlSimpleError(9u, 2, 0, 0, "allocating FTP context");
  }

  return v3;
}

void xmlNanoFTPScanURL(uint64_t a1, char *str)
{
  v4 = *a1;
  if (v4)
  {
    free(v4);
    *a1 = 0;
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    free(v5);
    *(a1 + 8) = 0;
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    free(v6);
    *(a1 + 24) = 0;
  }

  v7 = xmlParseURIRaw(str, 1);
  if (v7)
  {
    v8 = v7;
    scheme = v7->scheme;
    if (scheme)
    {
      server = v8->server;
      if (server)
      {
        *a1 = strdup(scheme);
        *(a1 + 8) = strdup(server);
        path = v8->path;
        if (!path)
        {
          path = "/";
        }

        *(a1 + 24) = strdup(path);
        port = v8->port;
        if (port)
        {
          *(a1 + 16) = port;
        }

        user = v8->user;
        if (user)
        {
          v14 = strchr(v8->user, 58);
          if (v14)
          {
            v15 = v14;
            *(a1 + 32) = xmlStrndup(user, v14 - user);
            user = (v15 + 1);
            v16 = 40;
          }

          else
          {
            v16 = 32;
          }

          *(a1 + v16) = strdup(user);
        }
      }
    }

    xmlFreeURI(v8);
  }
}

void xmlNanoFTPFreeCtxt(void *ctx)
{
  if (ctx)
  {
    v2 = *(ctx + 1);
    if (v2)
    {
      free(v2);
    }

    if (*ctx)
    {
      free(*ctx);
    }

    v3 = *(ctx + 3);
    if (v3)
    {
      free(v3);
    }

    v4 = *(ctx + 4);
    if (v4)
    {
      free(v4);
    }

    v5 = *(ctx + 5);
    if (v5)
    {
      free(v5);
    }

    *(ctx + 44) = 1;
    v6 = *(ctx + 45);
    if (v6 != -1)
    {
      close(v6);
    }

    free(ctx);
  }
}

unint64_t xmlNanoFTPReadResponse(int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1[45] != -1)
  {
    v2 = a1 + 49;
    v3 = a1[306];
    do
    {
      if (v3 > 0x400)
      {
        break;
      }

      v4 = a1[307];
      if (v4 > 0x400 || v4 < v3)
      {
        break;
      }

      if (v3)
      {
        memmove(a1 + 49, v2 + v3, v4 - v3);
        v4 = a1[307] - a1[306];
        a1[307] = v4;
        a1[306] = 0;
      }

      if (v4 == 1024)
      {
        v6 = 0;
        v3 = 1024;
      }

      else
      {
        v6 = recv(a1[45], a1 + 49, 1024 - v4, 0);
        if (v6 < 0)
        {
          __xmlIOErr(9u, 0, "recv failed");
          close(a1[45]);
          result = 0xFFFFFFFFLL;
          a1[45] = -1;
          return result;
        }

        v7 = a1[307] + v6;
        a1[307] = v7;
        *(v2 + v7) = 0;
        v3 = a1[307];
      }

      if (!(v3 | v6))
      {
        return 0xFFFFFFFFLL;
      }

      v8 = a1[306];
      if (v8 < v3)
      {
        v9 = v2 + v3;
        v10 = v2 + v8;
        while (1)
        {
          v11 = v9 - v10;
          if (v9 - v10 >= 3)
          {
            v12 = *v10;
            if ((v12 - 48) <= 9)
            {
              v13 = v10[1] - 48;
              if (v13 <= 9)
              {
                v14 = v10[2] - 48;
                if (v14 <= 9 && v10[3] != 45)
                {
                  v15 = 10 * (((10 * v12 + 32) & 0xFE) + v13) + v14;
                  if (v15)
                  {
                    break;
                  }
                }
              }
            }
          }

          if (v10 >= v9)
          {
LABEL_31:
            a1[306] = v3;
            goto LABEL_32;
          }

          ++v10;
          while (*(v10 - 1) != 10)
          {
            ++v10;
            if (!--v11)
            {
              goto LABEL_31;
            }
          }

          if (v10 >= v9)
          {
            goto LABEL_30;
          }
        }

        v17 = v10 + 3;
        a1[308] = v10 + 3 - v2;
        while (v17 < v9 && *v17 != 10)
        {
          ++v17;
        }

        if (*v17 == 10)
        {
          ++v17;
        }

        if (*v17 == 13)
        {
          LODWORD(v17) = v17 + 1;
        }

        a1[306] = v17 - v2;
        return (42949673 * v15) >> 32;
      }

LABEL_30:
      v3 = a1[306];
LABEL_32:
      ;
    }

    while (a1[45] != -1);
  }

  return 0xFFFFFFFFLL;
}

int xmlNanoFTPCheckResponse(void *ctx)
{
  if (!ctx)
  {
    return -1;
  }

  v2 = *(ctx + 45);
  if (v2 == -1)
  {
    return -1;
  }

  v4.tv_sec = 0;
  *&v4.tv_usec = 0;
  memset(&v5, 0, sizeof(v5));
  if (__darwin_check_fd_set_overflow(v2, &v5, 0))
  {
    *(v5.fds_bits + ((v2 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v2;
  }

  result = select(*(ctx + 45) + 1, &v5, 0, 0, &v4);
  if (result)
  {
    if (result == -1)
    {
      __xmlIOErr(9u, 0, "select");
      return -1;
    }

    return xmlNanoFTPReadResponse(ctx);
  }

  return result;
}

int xmlNanoFTPQuit(void *ctx)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!ctx || (v1 = *(ctx + 45), v1 == -1))
  {
    result = -1;
  }

  else
  {
    v19 = 0;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    strcpy(v6, "QUIT\r\n");
    v2 = strlen(v6);
    v3 = send(v1, v6, v2, 0);
    result = 0;
    if (v3 < 0)
    {
      __xmlIOErr(9u, 0, "send failed");
      result = v3;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlNanoFTPConnect(void *ctx)
{
  v61 = *MEMORY[0x1E69E9840];
  if (!ctx || !*(ctx + 1))
  {
    goto LABEL_50;
  }

  v2 = proxy;
  *(ctx + 3) = 0u;
  if (v2)
  {
    v3 = &proxyPort;
  }

  else
  {
    v3 = (ctx + 16);
  }

  v4 = *v3;
  *(ctx + 4) = 0uLL;
  *(ctx + 5) = 0uLL;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 21;
  }

  *(ctx + 6) = 0uLL;
  *(ctx + 7) = 0uLL;
  *(ctx + 8) = 0uLL;
  *(ctx + 9) = 0uLL;
  *(ctx + 10) = 0uLL;
  v6 = socket(30, 1, 0);
  if (v6 == -1)
  {
    v10 = proxy;
    if (!proxy)
    {
      v10 = *(ctx + 1);
    }

    v11 = gethostbyname(v10);
    if (v11)
    {
      h_length = v11->h_length;
      if (h_length < 5)
      {
        *(ctx + 49) = 2;
        memcpy(ctx + 52, *v11->h_addr_list, h_length);
        *(ctx + 25) = bswap32(v5) >> 16;
        v16 = socket(2, 1, 0);
        *(ctx + 45) = v16;
        v17 = 16;
LABEL_37:
        if (v16 != -1)
        {
          if (connect(v16, ctx + 3, v17) < 0)
          {
            v26 = "Failed to create a connection";
            goto LABEL_53;
          }

          if (xmlNanoFTPReadResponse(ctx) != 2)
          {
            goto LABEL_55;
          }

          if (!proxy)
          {
LABEL_66:
            v47 = 0u;
            memset(v48, 0, 23);
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v40 = 0u;
            memset(&v39, 0, sizeof(v39));
            if (*(ctx + 4))
            {
              snprintf(&v39, 0xC8uLL, "USER %s\r\n", *(ctx + 4));
            }

            else
            {
              strcpy(&v39, "USER anonymous\r\n");
            }

            v48[23] = 0;
            v30 = strlen(&v39);
            if ((send(*(ctx + 45), &v39, v30, 0) & 0x80000000) == 0)
            {
              v31 = xmlNanoFTPReadResponse(ctx);
              if (v31 == 2)
              {
                goto LABEL_79;
              }

              if (v31 != 3 || (xmlNanoFTPSendPasswd(ctx) & 0x80000000) != 0)
              {
                goto LABEL_55;
              }

              v32 = xmlNanoFTPReadResponse(ctx);
              if (v32 == 2)
              {
LABEL_79:
                v21 = 0;
                goto LABEL_51;
              }

              if (v32 == 3)
              {
                v26 = "FTP server asking for ACCNT on anonymous\n";
                v27 = 2002;
                goto LABEL_54;
              }

LABEL_55:
              close(*(ctx + 45));
              v21 = -1;
              *(ctx + 45) = -1;
              goto LABEL_51;
            }

            v26 = "send failed";
LABEL_53:
            v27 = 0;
LABEL_54:
            __xmlIOErr(9u, v27, v26);
            goto LABEL_55;
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          memset(v48, 0, sizeof(v48));
          v46 = 0u;
          v47 = 0u;
          v45 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          memset(&v39, 0, sizeof(v39));
          if (!proxyUser)
          {
            goto LABEL_62;
          }

          snprintf(&v39, 0x190uLL, "USER %s\r\n", proxyUser);
          HIBYTE(v60) = 0;
          v20 = strlen(&v39);
          v21 = send(*(ctx + 45), &v39, v20, 0);
          if (v21 < 0)
          {
            goto LABEL_56;
          }

          v22 = xmlNanoFTPReadResponse(ctx);
          switch(v22)
          {
            case 1:
LABEL_62:
              if (proxyType >= 2)
              {
                if (proxyType != 2)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                snprintf(&v39, 0x190uLL, "SITE %s\r\n", *(ctx + 1));
                HIBYTE(v60) = 0;
                v29 = strlen(&v39);
                v21 = send(*(ctx + 45), &v39, v29, 0);
                if (v21 < 0)
                {
                  goto LABEL_56;
                }

                if (xmlNanoFTPReadResponse(ctx) == 2)
                {
                  proxyType = 1;
                  goto LABEL_66;
                }

                if (proxyType == 1)
                {
                  goto LABEL_55;
                }
              }

              v33 = *(ctx + 1);
              if (*(ctx + 4))
              {
                v36 = *(ctx + 4);
                snprintf(&v39, 0x190uLL, "USER %s@%s\r\n");
              }

              else
              {
                v37 = *(ctx + 1);
                snprintf(&v39, 0x190uLL, "USER anonymous@%s\r\n");
              }

              HIBYTE(v60) = 0;
              v34 = strlen(&v39);
              v21 = send(*(ctx + 45), &v39, v34, 0);
              if ((v21 & 0x80000000) == 0)
              {
                if (xmlNanoFTPReadResponse(ctx) - 1 <= 1)
                {
                  goto LABEL_91;
                }

                if (*(ctx + 5))
                {
                  snprintf(&v39, 0x190uLL, "PASS %s\r\n", *(ctx + 5));
                }

                else
                {
                  strcpy(&v39, "PASS anonymous@\r\n");
                }

                HIBYTE(v60) = 0;
                v35 = strlen(&v39);
                v21 = send(*(ctx + 45), &v39, v35, 0);
                if ((v21 & 0x80000000) == 0)
                {
                  if (xmlNanoFTPReadResponse(ctx) - 1 > 1)
                  {
                    goto LABEL_55;
                  }

LABEL_91:
                  v21 = 0;
                  proxyType = 2;
                  goto LABEL_51;
                }
              }

LABEL_56:
              __xmlIOErr(9u, 0, "send failed");
              close(*(ctx + 45));
              *(ctx + 45) = -1;
              goto LABEL_51;
            case 3:
              v23 = proxyPasswd;
              if (!proxyPasswd)
              {
                strcpy(&v39, "PASS anonymous@\r\n");
                goto LABEL_60;
              }

              break;
            case 2:
              v23 = proxyPasswd;
              if (!proxyPasswd)
              {
                goto LABEL_62;
              }

              break;
            default:
              goto LABEL_55;
          }

          snprintf(&v39, 0x190uLL, "PASS %s\r\n", v23);
LABEL_60:
          HIBYTE(v60) = 0;
          v28 = strlen(&v39);
          v21 = send(*(ctx + 45), &v39, v28, 0);
          if (v21 < 0)
          {
            goto LABEL_56;
          }

          if (xmlNanoFTPReadResponse(ctx) >= 4)
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }

        v9 = "socket failed";
        goto LABEL_49;
      }

      v9 = "gethostbyname address mismatch";
    }

    else
    {
      v9 = "gethostbyname failed";
    }
  }

  else
  {
    close(v6);
    v38 = 0;
    memset(&v39, 0, sizeof(v39));
    v39.ai_socktype = 1;
    v7 = proxy;
    if (!proxy)
    {
      v7 = *(ctx + 1);
    }

    if (!getaddrinfo(v7, 0, &v39, &v38) && v38)
    {
      v13 = v38;
      while (1)
      {
        ai_family = v13->ai_family;
        if (ai_family == 2 || ai_family == 30)
        {
          break;
        }

        v13 = v13->ai_next;
        if (!v13)
        {
          v8 = "getaddrinfo failed";
LABEL_32:
          freeaddrinfo(v38);
          goto LABEL_14;
        }
      }

      ai_addrlen = v13->ai_addrlen;
      if (ai_addrlen > 0x80)
      {
        v8 = "gethostbyname address mismatch";
        goto LABEL_32;
      }

      memcpy(ctx + 48, v13->ai_addr, ai_addrlen);
      *(ctx + 25) = bswap32(v5) >> 16;
      if (ai_family == 30)
      {
        v19 = 30;
      }

      else
      {
        v19 = 2;
      }

      *(ctx + 45) = socket(v19, 1, 0);
      v17 = v13->ai_addrlen;
      freeaddrinfo(v38);
      v16 = *(ctx + 45);
      goto LABEL_37;
    }

    v8 = "getaddrinfo failed";
LABEL_14:
    v9 = v8;
  }

LABEL_49:
  __xmlIOErr(9u, 0, v9);
LABEL_50:
  v21 = -1;
LABEL_51:
  v24 = *MEMORY[0x1E69E9840];
  return v21;
}

ssize_t xmlNanoFTPSendPasswd(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  memset(v16, 0, 23);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(__str, 0, sizeof(__str));
  if (*(a1 + 40))
  {
    snprintf(__str, 0xC8uLL, "PASS %s\r\n", *(a1 + 40));
  }

  else
  {
    strcpy(__str, "PASS anonymous@\r\n");
  }

  v16[23] = 0;
  v2 = strlen(__str);
  v3 = send(*(a1 + 180), __str, v2, 0);
  result = 0;
  if ((v3 & 0x80000000) != 0)
  {
    __xmlIOErr(9u, 0, "send failed");
    result = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *__cdecl xmlNanoFTPConnectTo(const char *server, int port)
{
  xmlNanoFTPInit();
  v4 = 0;
  if (server)
  {
    if (port >= 1)
    {
      v4 = xmlNanoFTPNewCtxt(0);
      if (v4)
      {
        v5 = strdup(server);
        v4[1] = v5;
        if (!v5 || (*(v4 + 4) = port, xmlNanoFTPConnect(v4) < 0))
        {
          xmlNanoFTPFreeCtxt(v4);
          return 0;
        }
      }
    }
  }

  return v4;
}

int xmlNanoFTPCwd(void *ctx, const char *directory)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!ctx || *(ctx + 45) == -1)
  {
    v4 = -1;
  }

  else
  {
    if (!directory)
    {
      goto LABEL_8;
    }

    v30 = 0u;
    memset(v31, 0, 31);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *__str = 0u;
    v9 = 0u;
    snprintf(__str, 0x190uLL, "CWD %s\r\n", directory);
    v31[31] = 0;
    v3 = strlen(__str);
    v4 = send(*(ctx + 45), __str, v3, 0);
    if (v4 < 0)
    {
      __xmlIOErr(9u, 0, "send failed");
      goto LABEL_10;
    }

    v5 = xmlNanoFTPReadResponse(ctx) - 2;
    if (v5 <= 3)
    {
      v4 = dword_1C79BAB00[v5];
    }

    else
    {
LABEL_8:
      v4 = 0;
    }
  }

LABEL_10:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

int xmlNanoFTPDele(void *ctx, const char *file)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = -1;
  if (ctx && file && *(ctx + 45) != -1)
  {
    v30 = 0u;
    memset(v31, 0, 31);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    *__str = 0u;
    v9 = 0u;
    snprintf(__str, 0x190uLL, "DELE %s\r\n", file);
    v31[31] = 0;
    v4 = strlen(__str);
    v2 = send(*(ctx + 45), __str, v4, 0);
    if (v2 < 0)
    {
      __xmlIOErr(9u, 0, "send failed");
    }

    else
    {
      v5 = xmlNanoFTPReadResponse(ctx) - 2;
      if (v5 > 3)
      {
        v2 = 0;
      }

      else
      {
        v2 = dword_1C79BAB00[v5];
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

int xmlNanoFTPGetConnection(void *ctx)
{
  v32 = *MEMORY[0x1E69E9840];
  if (ctx)
  {
    memset(v26, 0, sizeof(v26));
    v2 = *(ctx + 49);
    if (v2 == 30)
    {
      v3 = 30;
    }

    else
    {
      v3 = 2;
    }

    if (v2 == 30)
    {
      v4 = 28;
    }

    else
    {
      v4 = 16;
    }

    v5 = socket(v3, 1, 6);
    *(ctx + 46) = v5;
    v26[0].sa_family = v3;
    v23 = v4;
    if (v5 != -1)
    {
      v31 = 0;
      memset(__s, 0, sizeof(__s));
      v28 = 0;
      v29 = 0;
      v27 = 0;
      if (*(ctx + 44))
      {
        if (*(ctx + 49) == 30)
        {
          *(__s + 3) = 658774;
          v6 = 20549;
        }

        else
        {
          *(__s + 3) = 658774;
          v6 = 16720;
        }

        LODWORD(__s[0]) = v6 | 0x56530000;
        v8 = strlen(__s);
        if ((send(*(ctx + 45), __s, v8, 0) & 0x80000000) == 0)
        {
          v9 = xmlNanoFTPReadResponse(ctx);
          if (v9 == 2)
          {
LABEL_23:
            v10 = ctx + *(ctx + 308) + 195;
            do
            {
              v11 = *++v10;
              v12 = v11 - 48;
              if (v11)
              {
                v13 = v12 > 9;
              }

              else
              {
                v13 = 0;
              }
            }

            while (v13);
            if (*(ctx + 49) == 30)
            {
              if (sscanf(v10, "%u", &v27) == 1)
              {
                *&v26[0].sa_data[6] = *(ctx + 56);
                v14 = bswap32(v27) >> 16;
                goto LABEL_36;
              }

              v20 = "Invalid answer to EPSV\n";
              v21 = 2001;
            }

            else
            {
              if (sscanf(v10, "%u,%u,%u,%u,%u,%u", &v27, &v27 + 4, &v28, &v28 + 4, &v29, &v29 + 4) == 6)
              {
                v16 = 0;
                *&v24[4] = 0;
                *v24 = 0;
                do
                {
                  v24[v16] = *(&v27 + v16);
                  ++v16;
                }

                while (v16 != 6);
                *&v26[0].sa_data[2] = *v24;
                LOWORD(v14) = *&v24[4];
LABEL_36:
                *v26[0].sa_data = v14;
                if (connect(*(ctx + 46), v26, v4) < 0)
                {
                  v15 = "Failed to create a data connection";
                  goto LABEL_44;
                }

                goto LABEL_42;
              }

              v20 = "Invalid answer to PASV\n";
              v21 = 2000;
            }

            __xmlIOErr(9u, v21, v20);
            v22 = *(ctx + 46);
            v7 = -1;
            if (v22 == -1)
            {
              goto LABEL_47;
            }

            close(v22);
            goto LABEL_46;
          }

          if (v9 != 5)
          {
            close(*(ctx + 46));
            *(ctx + 46) = -1;
            *(ctx + 44) = 0;
            goto LABEL_23;
          }

LABEL_45:
          close(*(ctx + 46));
          v7 = -1;
LABEL_46:
          *(ctx + 46) = -1;
          goto LABEL_47;
        }
      }

      else
      {
        getsockname(v5, v26, &v23);
        *v26[0].sa_data = 0;
        if (bind(*(ctx + 46), v26, v23) < 0)
        {
          v15 = "bind failed";
LABEL_44:
          __xmlIOErr(9u, 0, v15);
          goto LABEL_45;
        }

        getsockname(*(ctx + 46), v26, &v23);
        if (listen(*(ctx + 46), 1) < 0)
        {
          v15 = "listen failed";
          goto LABEL_44;
        }

        if (*(ctx + 49) == 30)
        {
          *v24 = 0u;
          memset(v25, 0, sizeof(v25));
          inet_ntop(30, &v26[0].sa_data[6], v24, 0x2Eu);
          snprintf(__s, 0xC8uLL, "EPRT |2|%s|%s|\r\n");
        }

        else
        {
          snprintf(__s, 0xC8uLL, "PORT %d,%d,%d,%d,%d,%d\r\n", v26[0].sa_data[2]);
        }

        HIBYTE(v31) = 0;
        v17 = strlen(__s);
        if ((send(*(ctx + 45), __s, v17, 0) & 0x80000000) == 0)
        {
          if (xmlNanoFTPReadResponse(ctx) == 2)
          {
LABEL_42:
            v7 = *(ctx + 46);
            goto LABEL_47;
          }

          goto LABEL_45;
        }
      }

      v15 = "send failed";
      goto LABEL_44;
    }

    __xmlIOErr(9u, 0, "socket failed");
  }

  v7 = -1;
LABEL_47:
  v18 = *MEMORY[0x1E69E9840];
  return v7;
}

int xmlNanoFTPCloseConnection(void *ctx)
{
  if (!ctx)
  {
    return -1;
  }

  v2 = -1;
  if (*(ctx + 45) != -1)
  {
    close(*(ctx + 46));
    *(ctx + 46) = -1;
    v7 = xmmword_1C79BAAF0;
    DWORD2(v7) = 0;
    memset(&v9, 0, sizeof(v9));
    v3 = *(ctx + 45);
    if (__darwin_check_fd_set_overflow(v3, &v9, 0))
    {
      *(v9.fds_bits + ((v3 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v3;
    }

    memset(&v8, 0, sizeof(v8));
    v4 = *(ctx + 45);
    if (__darwin_check_fd_set_overflow(v4, &v8, 0))
    {
      *(v8.fds_bits + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v4;
    }

    v5 = select(*(ctx + 45) + 1, &v9, 0, &v8, &v7);
    if ((v5 & 0x80000000) == 0)
    {
      if (!v5)
      {
        v2 = 0;
        goto LABEL_14;
      }

      if (xmlNanoFTPReadResponse(ctx) == 2)
      {
        return 0;
      }
    }

    v2 = -1;
LABEL_14:
    close(*(ctx + 45));
    *(ctx + 45) = -1;
  }

  return v2;
}

int xmlNanoFTPList(void *ctx, ftpListCallback callback, void *userData, const char *filename)
{
  v4 = MEMORY[0x1EEE9AC00](ctx, callback);
  v86 = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    goto LABEL_154;
  }

  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  bzero(__str, 0x1001uLL);
  memset(&v78, 0, sizeof(v78));
  *&v77.tv_usec = 0;
  if (v8)
  {
    if (*v8 == 47 || xmlNanoFTPCwd(v11, *(v11 + 24)) >= 1)
    {
      v12 = xmlNanoFTPGetConnection(v11);
      *(v11 + 184) = v12;
      if (v12 != -1)
      {
        snprintf(__str, 0x1001uLL, "LIST -L %s\r\n", v8);
        goto LABEL_10;
      }
    }

LABEL_154:
    v15 = -1;
    goto LABEL_155;
  }

  if (xmlNanoFTPCwd(v11, *(v11 + 24)) < 1)
  {
    goto LABEL_154;
  }

  v13 = xmlNanoFTPGetConnection(v11);
  *(v11 + 184) = v13;
  if (v13 == -1)
  {
    goto LABEL_154;
  }

  strcpy(__str, "LIST -L\r\n");
LABEL_10:
  __str[4096] = 0;
  v14 = strlen(__str);
  v15 = send(*(v11 + 180), __str, v14, 0);
  if (v15 < 0)
  {
    __xmlIOErr(9u, 0, "send failed");
    close(*(v11 + 184));
    goto LABEL_157;
  }

  v16 = xmlNanoFTPReadResponse(v11);
  if (v16 != 1)
  {
    v74 = v16;
    close(*(v11 + 184));
    *(v11 + 184) = -1;
    v15 = -v74;
    goto LABEL_155;
  }

  v75 = v9;
  v76 = v10;
  v17 = 0;
  do
  {
    v77.tv_sec = 1;
    v77.tv_usec = 0;
    memset(&v79, 0, sizeof(v79));
    v18 = *(v11 + 184);
    if (__darwin_check_fd_set_overflow(v18, &v79, 0))
    {
      *(v79.fds_bits + ((v18 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v18;
    }

    memset(&v78, 0, sizeof(v78));
    v19 = *(v11 + 184);
    if (__darwin_check_fd_set_overflow(v19, &v78, 0))
    {
      *(v78.fds_bits + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v19;
    }

    v20 = select(*(v11 + 184) + 1, &v79, 0, &v78, &v77);
    if (v20 < 0)
    {
      goto LABEL_160;
    }

    if (!v20)
    {
      v71 = xmlNanoFTPCheckResponse(v11);
      if (v71 < 0)
      {
LABEL_160:
        close(*(v11 + 184));
        v15 = -1;
        *(v11 + 184) = -1;
        goto LABEL_155;
      }

      if (v71 != 2)
      {
        continue;
      }

      close(*(v11 + 184));
      v15 = 0;
LABEL_157:
      *(v11 + 184) = -1;
      goto LABEL_155;
    }

    v21 = recv(*(v11 + 184), &__str[v17], 4097 - (v17 + 1), 0);
    v14 = v21;
    if (v21 < 0)
    {
      __xmlIOErr(9u, 0, "recv");
      goto LABEL_160;
    }

    v22 = 0;
    v23 = v17 + v21;
    __str[v23] = 0;
    while (1)
    {
      v24 = &__str[v22];
      memset(v85, 0, sizeof(v85));
      memset(v84, 0, 11);
      memset(v83, 0, 11);
      memset(v82, 0, 11);
      v80 = 0;
      if (strncmp(v24, "total", 5uLL))
      {
        break;
      }

      v26 = &__str[v22 + 4];
      do
      {
        v31 = *++v26;
        v30 = v31;
      }

      while (v31 == 32);
      if (v30 - 48 <= 9)
      {
        do
        {
          v32 = *++v26;
          v30 = v32;
        }

        while (v32 - 48 < 0xA);
      }

      while (v30 <= 0x20 && ((1 << v30) & 0x100002400) != 0)
      {
        v33 = *++v26;
        v30 = v33;
      }

LABEL_148:
      v22 += v26 - v24;
      if (v26 - v24 <= 0)
      {
        goto LABEL_149;
      }
    }

    v25 = *v24;
    if (v25 == 43)
    {
      goto LABEL_149;
    }

    v26 = &__str[v22];
    while (v25 > 12)
    {
      if (v25 != 13 && v25 != 32)
      {
        goto LABEL_31;
      }

LABEL_29:
      v27 = *++v26;
      v25 = v27;
    }

    if (v25 == 10)
    {
      goto LABEL_29;
    }

    if (!v25)
    {
      goto LABEL_149;
    }

LABEL_31:
    v28 = 0;
    while (v25 != 32)
    {
      if (v28 <= 9)
      {
        v84[v28++] = v25;
      }

      v29 = *++v26;
      v25 = v29;
      if (!v29)
      {
        goto LABEL_149;
      }
    }

    v84[10] = 0;
    while (v25 == 32)
    {
      v34 = *++v26;
      LOBYTE(v25) = v34;
    }

    if (v25)
    {
      if ((v25 - 48) > 9u)
      {
        v35 = 0;
      }

      else
      {
        LODWORD(v35) = 0;
        v36 = v25;
        do
        {
          v37 = *++v26;
          LOBYTE(v25) = v37;
          v35 = 10 * v35 + (v36 - 48);
          v36 = v37;
        }

        while ((v37 - 48) < 0xA);
      }

      while (v25 == 32)
      {
        v38 = *++v26;
        LOBYTE(v25) = v38;
      }

      if (v25)
      {
        v39 = 0;
        while (v25 != 32)
        {
          if (v39 <= 9)
          {
            v83[v39++] = v25;
          }

          v40 = *++v26;
          LOBYTE(v25) = v40;
          if (!v40)
          {
            goto LABEL_149;
          }
        }

        v83[v39] = 0;
        while (1)
        {
          v41 = *v26;
          if (v41 != 32)
          {
            break;
          }

          ++v26;
        }

        if (*v26)
        {
          v42 = 0;
          while (v41 != 32)
          {
            if (v42 <= 9)
            {
              v82[v42++] = v41;
            }

            v43 = *++v26;
            v41 = v43;
            if (!v43)
            {
              goto LABEL_149;
            }
          }

          v82[v42] = 0;
          while (1)
          {
            v44 = *v26;
            if (v44 != 32)
            {
              break;
            }

            ++v26;
          }

          if (*v26)
          {
            if ((v44 - 48) > 9)
            {
              v45 = 0;
            }

            else
            {
              v45 = 0;
              v46 = *v26;
              do
              {
                v47 = *++v26;
                LOBYTE(v44) = v47;
                v45 = 10 * v45 + (v46 - 48);
                v46 = v47;
              }

              while ((v47 - 48) < 0xA);
            }

            while (v44 == 32)
            {
              v48 = *++v26;
              LOBYTE(v44) = v48;
            }

            if (v44)
            {
              v49 = 0;
              while (v44 != 32)
              {
                if (v49 <= 2)
                {
                  __str[v49++ - 4] = v44;
                }

                v50 = *++v26;
                LOBYTE(v44) = v50;
                if (!v50)
                {
                  goto LABEL_149;
                }
              }

              __str[v49 - 4] = 0;
              while (1)
              {
                v51 = *v26;
                if (v51 != 32)
                {
                  break;
                }

                ++v26;
              }

              if (*v26)
              {
                if ((v51 - 48) > 9)
                {
                  v52 = 0;
                }

                else
                {
                  v52 = 0;
                  v53 = *v26;
                  do
                  {
                    v54 = *++v26;
                    LOBYTE(v51) = v54;
                    v52 = 10 * v52 + (v53 - 48);
                    v53 = v54;
                  }

                  while ((v54 - 48) < 0xA);
                }

                while (v51 == 32)
                {
                  v55 = *++v26;
                  LOBYTE(v51) = v55;
                }

                if (v51 && v26[1] && v26[2])
                {
                  if (v26[1] == 58 || v26[2] == 58)
                  {
                    if ((v51 - 48) > 9u)
                    {
                      v58 = 0;
                    }

                    else
                    {
                      v58 = 0;
                      v59 = v51;
                      do
                      {
                        v60 = *++v26;
                        LOBYTE(v51) = v60;
                        v58 = 10 * v58 + (v59 - 48);
                        v59 = v60;
                      }

                      while ((v60 - 48) < 0xA);
                    }

                    if (v51 == 58)
                    {
                      ++v26;
                    }

                    v51 = *v26;
                    if ((v51 - 48) > 9)
                    {
                      v56 = 0;
                      v61 = 0;
                    }

                    else
                    {
                      v61 = 0;
                      do
                      {
                        v62 = *++v26;
                        v61 = 10 * v61 + (v51 - 48);
                        LOBYTE(v51) = v62;
                      }

                      while ((v62 - 48) < 0xA);
                      v56 = 0;
                    }
                  }

                  else
                  {
                    if ((v51 - 48) > 9u)
                    {
                      v56 = 0;
                    }

                    else
                    {
                      LODWORD(v56) = 0;
                      do
                      {
                        v57 = *++v26;
                        v56 = 10 * v56 + (v51 - 48);
                        LOBYTE(v51) = v57;
                      }

                      while ((v57 - 48) < 0xA);
                    }

                    v61 = 0;
                    v58 = 0;
                  }

                  while (v51 == 32)
                  {
                    v63 = *++v26;
                    LOBYTE(v51) = v63;
                  }

                  if (v51)
                  {
                    v64 = 0;
                    while (v51 != 10 && v51 != 13)
                    {
                      if (v64 <= 149)
                      {
                        v85[v64++] = v51;
                      }

                      v66 = *++v26;
                      LOBYTE(v51) = v66;
                      if (!v66)
                      {
                        goto LABEL_149;
                      }
                    }

                    v85[v64] = 0;
                    v67 = *v26;
                    if (v67 == 13 || v67 == 10)
                    {
                      while (v67 == 13 || v67 == 10)
                      {
                        v69 = *++v26;
                        LOBYTE(v67) = v69;
                      }

                      if (v76)
                      {
                        v76(v75, v85, v84, v83, v82, v45, v35, v56, &v80, __PAIR64__(v58, v52), v61);
                      }

                      goto LABEL_148;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_149:
    v17 = v23 - v22;
    __memmove_chk();
  }

  while (v14);
  xmlNanoFTPCloseConnection(v11);
  v15 = 0;
LABEL_155:
  v72 = *MEMORY[0x1E69E9840];
  return v15;
}

int xmlNanoFTPGetSocket(void *ctx, const char *filename)
{
  v28 = *MEMORY[0x1E69E9840];
  if (ctx && (filename || *(ctx + 3)))
  {
    result = xmlNanoFTPGetConnection(ctx);
    *(ctx + 46) = result;
    if (result != -1)
    {
      v26 = 0u;
      memset(v27, 0, sizeof(v27));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      strcpy(__s, "TYPE I\r\n");
      v5 = strlen(__s);
      if ((send(*(ctx + 45), __s, v5, 0) & 0x80000000) == 0)
      {
        if (xmlNanoFTPReadResponse(ctx) != 2)
        {
LABEL_15:
          result = *(ctx + 46);
LABEL_16:
          close(result);
          result = -1;
          *(ctx + 46) = -1;
          goto LABEL_17;
        }

        if (filename)
        {
          snprintf(__s, 0x12CuLL, "RETR %s\r\n", filename);
        }

        else
        {
          snprintf(__s, 0x12CuLL, "RETR %s\r\n", *(ctx + 3));
        }

        v27[18] = 0;
        v6 = strlen(__s);
        if ((send(*(ctx + 45), __s, v6, 0) & 0x80000000) == 0)
        {
          v7 = xmlNanoFTPReadResponse(ctx);
          result = *(ctx + 46);
          if (v7 == 1)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }

      __xmlIOErr(9u, 0, "send failed");
      goto LABEL_15;
    }
  }

  else
  {
    result = -1;
  }

LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlNanoFTPGet(void *ctx, ftpDataCallback callback, void *userData, const char *filename)
{
  v4 = MEMORY[0x1EEE9AC00](ctx, callback);
  v20 = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    goto LABEL_4;
  }

  v8 = v6;
  v9 = v5;
  v10 = v4;
  if (v7)
  {
    if (!v5)
    {
LABEL_4:
      result = -1;
      goto LABEL_21;
    }
  }

  else
  {
    result = -1;
    if (!v5 || !*(v10 + 24))
    {
      goto LABEL_21;
    }
  }

  result = xmlNanoFTPGetSocket(v10, v7);
  if (result != -1)
  {
    bzero(v19, 0x1000uLL);
    LODWORD(v12) = 0;
    *&v17.tv_usec = 0;
    while (1)
    {
      v17.tv_sec = 1;
      v17.tv_usec = 0;
      memset(&v18, 0, sizeof(v18));
      v13 = *(v10 + 184);
      if (__darwin_check_fd_set_overflow(v13, &v18, 0))
      {
        *(v18.fds_bits + ((v13 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v13;
      }

      v14 = select(*(v10 + 184) + 1, &v18, 0, 0, &v17);
      if (v14 < 0)
      {
        goto LABEL_20;
      }

      if (v14)
      {
        v12 = recv(*(v10 + 184), v19, 0x1000uLL, 0);
        if ((v12 & 0x80000000) != 0)
        {
          __xmlIOErr(9u, 0, "recv failed");
          v9(v8, v19, v12);
LABEL_20:
          close(*(v10 + 184));
          result = -1;
          *(v10 + 184) = -1;
          break;
        }

        v9(v8, v19, v12);
      }

      else
      {
        v15 = xmlNanoFTPCheckResponse(v10);
        if (v15 < 0)
        {
          goto LABEL_20;
        }

        if (v15 == 2)
        {
          close(*(v10 + 184));
          result = 0;
          *(v10 + 184) = -1;
          break;
        }
      }

      if (!v12)
      {
        result = xmlNanoFTPCloseConnection(v10);
        break;
      }
    }
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlNanoFTPRead(void *ctx, void *dest, int len)
{
  if (!ctx)
  {
    return -1;
  }

  v4 = *(ctx + 46);
  if (v4 == -1)
  {
    return 0;
  }

  if (!dest)
  {
    return -1;
  }

  if (len < 1)
  {
    return 0;
  }

  v5 = recv(v4, dest, len, 0);
  v6 = v5;
  if (v5 <= 0)
  {
    if (v5 < 0)
    {
      __xmlIOErr(9u, 0, "recv failed");
    }

    xmlNanoFTPCloseConnection(ctx);
  }

  return v6;
}

void *__cdecl xmlNanoFTPOpen(const char *URL)
{
  xmlNanoFTPInit();
  if (URL)
  {
    if (strncmp("ftp://", URL, 6uLL))
    {
      return 0;
    }

    v3 = xmlNanoFTPNewCtxt(URL);
    URL = v3;
    if (v3 && (xmlNanoFTPConnect(v3) < 0 || xmlNanoFTPGetSocket(URL, *(URL + 3)) == -1))
    {
      xmlNanoFTPFreeCtxt(URL);
      return 0;
    }
  }

  return URL;
}

int xmlNanoFTPClose(void *ctx)
{
  if (!ctx)
  {
    return -1;
  }

  v2 = *(ctx + 46);
  if (v2 != -1)
  {
    close(v2);
    *(ctx + 46) = -1;
  }

  if (*(ctx + 45) != -1)
  {
    xmlNanoFTPQuit(ctx);
    close(*(ctx + 45));
    *(ctx + 45) = -1;
  }

  xmlNanoFTPFreeCtxt(ctx);
  return 0;
}

void xmlNanoHTTPInit(void)
{
  if ((initialized_0 & 1) == 0)
  {
    if (!proxy_0)
    {
      proxyPort_0 = 80;
      v0 = getenv("no_proxy");
      if (!v0 || *v0 != 42 || v0[1])
      {
        v1 = getenv("http_proxy");
        if (v1 || (v1 = getenv("HTTP_PROXY")) != 0)
        {
          xmlNanoHTTPScanProxy(v1);
        }
      }
    }

    initialized_0 = 1;
  }
}

void xmlNanoHTTPScanProxy(const char *URL)
{
  if (proxy_0)
  {
    free(proxy_0);
    proxy_0 = 0;
  }

  proxyPort_0 = 0;
  if (URL)
  {
    v2 = xmlParseURIRaw(URL, 1);
    if (v2)
    {
      v3 = v2;
      scheme = v2->scheme;
      if (scheme && !strcmp(scheme, "http") && (server = v3->server) != 0)
      {
        proxy_0 = strdup(server);
        if (v3->port)
        {
          proxyPort_0 = v3->port;
        }
      }

      else
      {
        __xmlIOErr(0xAu, 2020, "Syntax Error\n");
      }

      xmlFreeURI(v3);
    }

    else
    {

      __xmlIOErr(0xAu, 2020, "Syntax Error\n");
    }
  }
}

void xmlNanoHTTPCleanup(void)
{
  if (proxy_0)
  {
    free(proxy_0);
    proxy_0 = 0;
  }

  initialized_0 = 0;
}

void *__cdecl xmlNanoHTTPOpen(const char *URL, char **contentType)
{
  if (contentType)
  {
    *contentType = 0;
  }

  return xmlNanoHTTPMethodRedir(URL, 0, 0, contentType, 0, 0, 0);
}

void *__cdecl xmlNanoHTTPOpenRedir(const char *URL, char **contentType, char **redir)
{
  if (contentType)
  {
    *contentType = 0;
  }

  if (redir)
  {
    *redir = 0;
  }

  return xmlNanoHTTPMethodRedir(URL, 0, 0, contentType, redir, 0, 0);
}

void *__cdecl xmlNanoHTTPMethodRedir(const char *URL, const char *method, const char *input, char **contentType, char **redir, const char *headers, int ilen)
{
  v7 = MEMORY[0x1EEE9AC00](URL, method);
  v135 = v13;
  *&v137[1] = *MEMORY[0x1E69E9840];
  v130 = v7;
  if (!v7)
  {
    goto LABEL_233;
  }

  v14 = v12;
  v15 = v9;
  v129 = v10;
  v16 = "GET";
  if (v8)
  {
    v16 = v8;
  }

  v133 = v16;
  __s = v11;
  xmlNanoHTTPInit();
  v17 = 0;
  v18 = 0;
  while (2)
  {
    v19 = xmlNanoHTTPNewCtxt(v130);
    if (!v19)
    {
      goto LABEL_234;
    }

LABEL_8:
    if (!*v19 || strcmp(*v19, "http"))
    {
      v118 = "Not a valid HTTP URI";
      v119 = 2020;
LABEL_222:
      __xmlIOErr(0xAu, v119, v118);
LABEL_223:
      xmlNanoHTTPFreeCtxt(v19);
      if (!v18)
      {
LABEL_233:
        v19 = 0;
        goto LABEL_234;
      }

      v122 = v18;
LABEL_225:
      free(v122);
      goto LABEL_233;
    }

    v20 = *(v19 + 1);
    if (!v20)
    {
      v118 = "Failed to identify host in URI";
      v119 = 2022;
      goto LABEL_222;
    }

    v132 = v17;
    v21 = v15;
    v22 = v18;
    v23 = strlen(v20);
    v24 = v23;
    if (proxy_0)
    {
      v24 = 2 * v23 + 16;
      v25 = proxyPort_0;
      v26 = proxy_0;
    }

    else
    {
      v25 = *(v19 + 4);
      v26 = *(v19 + 1);
    }

    v27 = xmlNanoHTTPConnectHost(v26, v25);
    if (v27 == -1)
    {
      goto LABEL_223;
    }

    *(v19 + 10) = v27;
    if (v21)
    {
      v28 = v14;
    }

    else
    {
      v28 = 0;
    }

    if (v21)
    {
      v29 = v24 + 36;
    }

    else
    {
      v29 = v24;
    }

    if (__s)
    {
      v29 += strlen(__s) + 2;
    }

    if (v135 && *v135)
    {
      v29 += strlen(*v135) + 16;
    }

    v30 = *(v19 + 4);
    if (v30)
    {
      v29 += strlen(v30) + 1;
    }

    v31 = strlen(v133);
    v32 = v29 + strlen(*(v19 + 3)) + v31;
    if (*(v19 + 4) == 80)
    {
      v33 = v32 + 47;
    }

    else
    {
      v34 = v32 + 24;
      v35 = v34 + 34;
      v33 = v34 + 40;
      if (!proxy_0)
      {
        v33 = v35;
      }
    }

    v36 = v33;
    v37 = malloc_type_malloc(v33, 0x100004077774924uLL);
    if (!v37)
    {
      xmlNanoHTTPFreeCtxt(v19);
      __xmlSimpleError(0xAu, 2, 0, 0, "allocating header buffer");
      goto LABEL_233;
    }

    v38 = v37;
    v131 = v28;
    if (proxy_0)
    {
      v39 = *(v19 + 1);
      if (*(v19 + 4) == 80)
      {
        v125 = *(v19 + 1);
        v127 = *(v19 + 3);
        v40 = snprintf(v37, v36, "%s http://%s%s");
      }

      else
      {
        v128 = *(v19 + 3);
        v40 = snprintf(v37, v36, "%s http://%s:%d%s");
      }
    }

    else
    {
      v126 = *(v19 + 3);
      v40 = snprintf(v37, v36, "%s %s");
    }

    v41 = &v38[v40];
    if (*(v19 + 4))
    {
      v41 += snprintf(&v38[v40], v36 - v40, "?%s", *(v19 + 4));
    }

    v42 = &v38[v36];
    v43 = &v38[v36] - v41;
    v44 = *(v19 + 1);
    if (*(v19 + 4) == 80)
    {
      v45 = snprintf(v41, v43, " HTTP/1.0\r\nHost: %s\r\n");
    }

    else
    {
      v45 = snprintf(v41, v43, " HTTP/1.0\r\nHost: %s:%d\r\n");
    }

    v46 = &v41[v45 + snprintf(&v41[v45], v42 - &v41[v45], "Accept-Encoding: gzip\r\n")];
    if (v135)
    {
      v47 = v22;
      if (*v135)
      {
        v46 += snprintf(v46, v42 - v46, "Content-Type: %s\r\n", *v135);
      }
    }

    else
    {
      v47 = v22;
    }

    v15 = v21;
    if (__s)
    {
      v46 += snprintf(v46, v42 - v46, "%s", __s);
    }

    v48 = v42 - v46;
    if (v21)
    {
      snprintf(v46, v48, "Content-Length: %d\r\n\r\n");
    }

    else
    {
      snprintf(v46, v48, "\r\n");
    }

    *(v19 + 6) = v38;
    *(v19 + 7) = v38;
    *(v19 + 11) = 1;
    v49 = strlen(v38);
    xmlNanoHTTPSend(v19, v38, v49);
    if (v21)
    {
      xmlNanoHTTPSend(v19, v21, v14);
    }

    *(v19 + 11) = 2;
    while (2)
    {
      v50 = __s1;
      bzero(__s1, 0x1000uLL);
      while (1)
      {
        v51 = *(v19 + 11);
        if (v51 == *(v19 + 10))
        {
          break;
        }

LABEL_60:
        *(v19 + 11) = v51 + 1;
        v53 = *v51;
        *v50 = v53;
        if (v53 != 13)
        {
          if (v53 == 10)
          {
            goto LABEL_66;
          }

          ++v50;
        }

        if (v50 - __s1 >= 4095)
        {
          v50 = v137;
          goto LABEL_66;
        }
      }

      v52 = xmlNanoHTTPRecv(v19);
      if (v52 == -1)
      {
        break;
      }

      if (v52)
      {
        v51 = *(v19 + 11);
        goto LABEL_60;
      }

      if (v50 == __s1)
      {
        break;
      }

LABEL_66:
      *v50 = 0;
      v54 = strdup(__s1);
      if (v54)
      {
        v55 = v54;
        if (*v54)
        {
          if (!strncmp(v54, "HTTP/", 5uLL))
          {
            v56 = v55 + 5;
            v57 = v55[5];
            if (v57 - 48 > 9)
            {
              v58 = 0;
            }

            else
            {
              v58 = 0;
              do
              {
                v58 = 10 * v58 + (v57 - 48);
                v59 = *++v56;
                v57 = v59;
              }

              while (v59 - 48 < 0xA);
            }

            if (v57 == 46)
            {
              v77 = v56[1];
              v76 = v56 + 1;
              v78 = v77 - 48;
              if ((v77 - 48) < 0xA)
              {
                ++v76;
              }

              v56 = v76 - 1;
              do
              {
                v79 = *++v56;
                v57 = v79;
              }

              while (v79 - 48 < 0xA);
              v80 = v78;
              v81 = 10 * v58 + v78;
              if (v80 < 0xA)
              {
                v58 = v81;
              }
            }

            else
            {
              v58 *= 10;
            }

            if (v57 == 32 || v57 == 9)
            {
              while (v57 == 32 || v57 == 9)
              {
                v84 = *++v56;
                LOBYTE(v57) = v84;
              }

              if ((v57 - 58) >= 0xF6u)
              {
                v85 = 0;
                v86 = 1;
                do
                {
                  v85 = 10 * v85 + (v57 - 48);
                  v57 = v56[v86++];
                }

                while (v57 - 48 < 0xA);
                if (v57 <= 0x20 && ((1 << v57) & 0x100000201) != 0)
                {
                  *(v19 + 26) = v85;
                  *(v19 + 27) = v58;
                }
              }
            }

            goto LABEL_193;
          }

          if (xmlStrncasecmp(v55, "Content-Type:", 13))
          {
            if (xmlStrncasecmp(v55, "ContentType:", 12))
            {
              if (!xmlStrncasecmp(v55, "Location:", 9))
              {
                for (i = (v55 + 9); ; ++i)
                {
                  v92 = *i;
                  if (v92 != 32 && v92 != 9)
                  {
                    break;
                  }
                }

                v94 = *(v19 + 16);
                if (v94)
                {
                  free(v94);
                  v92 = *i;
                }

                if (v92 == 47)
                {
                  v95 = xmlStrdup("http://");
                  v96 = xmlStrcat(v95, *(v19 + 1));
                  v97 = xmlStrcat(v96, i);
                }

                else
                {
                  v97 = strdup(i);
                }

                *(v19 + 16) = v97;
                goto LABEL_193;
              }

              if (xmlStrncasecmp(v55, "WWW-Authenticate:", 17))
              {
                if (xmlStrncasecmp(v55, "Proxy-Authenticate:", 19))
                {
                  if (xmlStrncasecmp(v55, "Content-Encoding:", 17))
                  {
                    if (!xmlStrncasecmp(v55, "Content-Length:", 15))
                    {
                      *(v19 + 28) = strtol(v55 + 15, 0, 10);
                    }
                  }

                  else
                  {
                    for (j = (v55 + 17); ; ++j)
                    {
                      v115 = *j;
                      if (v115 != 32 && v115 != 9)
                      {
                        break;
                      }
                    }

                    if (!xmlStrncasecmp(j, "gzip", 4))
                    {
                      *(v19 + 42) = 1;
                      v117 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
                      *(v19 + 20) = v117;
                      if (v117)
                      {
                        v117->avail_in = 0;
                        v117->next_in = 0;
                        v117->zfree = 0;
                        v117->opaque = 0;
                        v117->zalloc = 0;
                        inflateInit2_(v117, 31, "1.2.12", 112);
                      }
                    }
                  }

LABEL_193:
                  free(v55);
                  continue;
                }

                for (k = v55 + 19; ; ++k)
                {
                  v111 = *k;
                  if (v111 != 32 && v111 != 9)
                  {
                    break;
                  }
                }
              }

              else
              {
                for (k = v55 + 17; ; ++k)
                {
                  v99 = *k;
                  if (v99 != 32 && v99 != 9)
                  {
                    break;
                  }
                }
              }

              v113 = *(v19 + 17);
              if (v113)
              {
                free(v113);
              }

              *(v19 + 17) = strdup(k);
              goto LABEL_193;
            }

            if (*(v19 + 15))
            {
              goto LABEL_193;
            }

            for (m = v55 + 12; ; ++m)
            {
              v89 = *m;
              if (v89 != 32 && v89 != 9)
              {
                break;
              }
            }

            v101 = 0;
            *(v19 + 15) = strdup(m);
            while (1)
            {
              v102 = m[v101];
              v66 = v102 > 0x3B;
              v103 = (1 << v102) & 0x800100100000201;
              if (!v66 && v103 != 0)
              {
                break;
              }

              ++v101;
            }

            v105 = *(v19 + 19);
            if (v105)
            {
              free(v105);
            }

            *(v19 + 19) = xmlStrndup(m, v101);
            v106 = xmlStrstr(*(v19 + 15), "charset=");
            if (!v106)
            {
              goto LABEL_193;
            }

            v71 = 0;
            v72 = v106 + 8;
            while (1)
            {
              v107 = v72[v71];
              v66 = v107 > 0x3B;
              v108 = (1 << v107) & 0x800100100000201;
              if (!v66 && v108 != 0)
              {
                break;
              }

              ++v71;
            }
          }

          else
          {
            for (n = v55 + 13; ; ++n)
            {
              v61 = *n;
              if (v61 != 32 && v61 != 9)
              {
                break;
              }
            }

            v63 = *(v19 + 15);
            if (v63)
            {
              free(v63);
            }

            v64 = 0;
            *(v19 + 15) = strdup(n);
            while (1)
            {
              v65 = n[v64];
              v66 = v65 > 0x3B;
              v67 = (1 << v65) & 0x800100100000201;
              if (!v66 && v67 != 0)
              {
                break;
              }

              ++v64;
            }

            v69 = *(v19 + 19);
            if (v69)
            {
              free(v69);
            }

            *(v19 + 19) = xmlStrndup(n, v64);
            v70 = xmlStrstr(*(v19 + 15), "charset=");
            if (!v70)
            {
              goto LABEL_193;
            }

            v71 = 0;
            v72 = v70 + 8;
            while (1)
            {
              v73 = v72[v71];
              v66 = v73 > 0x3B;
              v74 = (1 << v73) & 0x800100100000201;
              if (!v66 && v74 != 0)
              {
                break;
              }

              ++v71;
            }
          }

          v110 = *(v19 + 18);
          if (v110)
          {
            free(v110);
          }

          *(v19 + 18) = xmlStrndup(v72, v71);
          goto LABEL_193;
        }

        *(v19 + 9) = *(v19 + 11);
        free(v54);
      }

      break;
    }

    if (!*(v19 + 16) || (*(v19 + 26) - 300) > 0x63)
    {
      v120 = v135;
      if (v135)
      {
        v121 = *(v19 + 15);
        if (v121)
        {
          v121 = strdup(v121);
          v120 = v135;
        }

        *v120 = v121;
      }

      if (v129 && v47)
      {
        *v129 = v47;
      }

      else
      {
        if (v47)
        {
          free(v47);
        }

        if (v129)
        {
          *v129 = 0;
        }
      }

      goto LABEL_234;
    }

      ;
    }

    if (v132 == 10)
    {
      xmlNanoHTTPFreeCtxt(v19);
      if (!v47)
      {
        goto LABEL_233;
      }

      v122 = v47;
      goto LABEL_225;
    }

    if (v47)
    {
      free(v47);
    }

    v17 = v132 + 1;
    v18 = strdup(*(v19 + 16));
    xmlNanoHTTPFreeCtxt(v19);
    v14 = v131;
    if (!v18)
    {
      continue;
    }

    break;
  }

  v19 = xmlNanoHTTPNewCtxt(v18);
  if (v19)
  {
    *(v19 + 16) = strdup(v18);
    goto LABEL_8;
  }

LABEL_234:
  v123 = *MEMORY[0x1E69E9840];
  return v19;
}

int xmlNanoHTTPRead(void *ctx, void *dest, int len)
{
  v3 = -1;
  if (!ctx || !dest)
  {
    return v3;
  }

  if (len < 1)
  {
    return 0;
  }

  if (*(ctx + 42) == 1)
  {
    v7 = *(ctx + 20);
    if (v7)
    {
      v8 = 0;
      v7->next_out = dest;
      v7->avail_out = len;
      avail_in = *(ctx + 20) - *(ctx + 22);
      v7->avail_in = avail_in;
      do
      {
        if (!v7->avail_out)
        {
          break;
        }

        if (!avail_in)
        {
          v10 = xmlNanoHTTPRecv(ctx);
          v7 = *(ctx + 20);
          if (v10 < 1)
          {
            break;
          }
        }

        v11 = *(ctx + 11);
        v12 = *(ctx + 20) - (v8 + v11);
        v7->avail_in = v12;
        v7->next_in = (v11 + v8);
        v13 = inflate(v7, 0);
        v7 = *(ctx + 20);
        avail_in = v7->avail_in;
        v8 += v12 - avail_in;
      }

      while (!v13);
      *(ctx + 11) += v8;
      return len - v7->avail_out;
    }

    return 0;
  }

  while (1)
  {
    v14 = *(ctx + 11);
    v15 = *(ctx + 10) - v14;
    if (v15 >= len)
    {
      break;
    }

    if (xmlNanoHTTPRecv(ctx) <= 0)
    {
      v14 = *(ctx + 11);
      v15 = *(ctx + 10) - v14;
      break;
    }
  }

  if (v15 >= len)
  {
    v3 = len;
  }

  else
  {
    v3 = v15;
  }

  memcpy(dest, v14, v3);
  *(ctx + 11) += v3;
  return v3;
}

ssize_t xmlNanoHTTPRecv(uint64_t a1)
{
  if ((*(a1 + 44) & 2) == 0)
  {
    return 0;
  }

  v15 = v1;
  v16 = v2;
  v14 = 0;
  while (1)
  {
    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = *(a1 + 80);
      v7 = *(a1 + 88);
    }

    else
    {
      v8 = malloc_type_malloc(0xFDE8uLL, 0x100004077774924uLL);
      *(a1 + 64) = v8;
      if (!v8)
      {
        __xmlSimpleError(0xAu, 2, 0, 0, "allocating input");
        goto LABEL_28;
      }

      v6 = v8;
      *(a1 + 96) = 65000;
      *(a1 + 80) = v8;
      *(a1 + 88) = v8;
      v5 = v8;
      v7 = v8;
      *(a1 + 72) = v8;
    }

    if (v7 > v5 + 4096)
    {
      v9 = v7 - v5;
      memmove(v5, v7, v6 - v7);
      v7 = (*(a1 + 88) - (v7 - v5));
      v5 = *(a1 + 64);
      v6 = (*(a1 + 80) - v9);
      *(a1 + 72) -= v9;
      *(a1 + 80) = v6;
      *(a1 + 88) = v7;
    }

    v10 = *(a1 + 96);
    if (&v5[v10] < v6 + 4096)
    {
      v11 = *(a1 + 72);
      *(a1 + 96) = 2 * v10;
      v12 = malloc_type_realloc(v5, 2 * v10, 0x100004077774924uLL);
      *(a1 + 64) = v12;
      if (v12)
      {
        v6 = &v12[v6 - v5];
        *(a1 + 72) = &v12[v11 - v5];
        *(a1 + 80) = v6;
        *(a1 + 88) = &v12[v7 - v5];
        goto LABEL_13;
      }

      __xmlSimpleError(0xAu, 2, 0, 0, "allocating input buffer");
      free(v5);
LABEL_28:
      result = 0xFFFFFFFFLL;
      *(a1 + 100) = -1;
      return result;
    }

LABEL_13:
    result = recv(*(a1 + 40), v6, 0x1000uLL, 0);
    *(a1 + 100) = result;
    if (result >= 1)
    {
      *(a1 + 80) += result & 0x7FFFFFFF;
      return result;
    }

    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      goto LABEL_18;
    }

    v13 = *__error();
    if ((v13 - 35) >= 2)
    {
      break;
    }

LABEL_18:
    v14.fd = *(a1 + 40);
    v14.events = 1;
    if (poll(&v14, 1u, 60000) <= 0 && *__error() != 4 || (*(a1 + 44) & 2) == 0)
    {
      return 0;
    }
  }

  result = 0;
  if (v13 != 54 && v13 != 58)
  {
    __xmlIOErr(0xAu, 0, "recv failed\n");
    return 0xFFFFFFFFLL;
  }

  return result;
}

void xmlNanoHTTPClose(void *ctx)
{
  if (ctx)
  {
    xmlNanoHTTPFreeCtxt(ctx);
  }
}

void xmlNanoHTTPFreeCtxt(void *a1)
{
  v2 = *(a1 + 1);
  if (v2)
  {
    free(v2);
  }

  if (*a1)
  {
    free(*a1);
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 4);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 6);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  v7 = *(a1 + 15);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 18);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 19);
  if (v9)
  {
    free(v9);
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    free(v10);
  }

  v11 = *(a1 + 17);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 20);
  if (v12)
  {
    inflateEnd(v12);
    free(*(a1 + 20));
  }

  *(a1 + 11) = 4;
  v13 = *(a1 + 10);
  if (v13 != -1)
  {
    close(v13);
  }

  free(a1);
}

_OWORD *xmlNanoHTTPNewCtxt(const char *a1)
{
  v2 = malloc_type_malloc(0xB0uLL, 0x10300409289052FuLL);
  v3 = v2;
  if (v2)
  {
    v2[9] = 0u;
    v2[10] = 0u;
    v2[7] = 0u;
    v2[8] = 0u;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    *(v2 + 4) = 80;
    *(v2 + 10) = -1;
    *(v2 + 28) = -1;
    v4 = xmlParseURIRaw(a1, 1);
    if (v4)
    {
      v5 = v4;
      scheme = v4->scheme;
      if (scheme)
      {
        server = v5->server;
        if (server)
        {
          *v3 = strdup(scheme);
          if (*server == 91 && (v8 = strlen(server), v8 >= 3) && server[v8 - 1] == 93)
          {
            v9 = xmlCharStrndup(server + 1, v8 - 2);
          }

          else
          {
            v9 = strdup(server);
          }

          *(v3 + 1) = v9;
          path = v5->path;
          if (!path)
          {
            path = "/";
          }

          *(v3 + 3) = strdup(path);
          query = v5->query;
          if (query)
          {
            *(v3 + 4) = strdup(query);
          }

          port = v5->port;
          if (port)
          {
            *(v3 + 4) = port;
          }
        }
      }

      xmlFreeURI(v5);
    }
  }

  else
  {
    __xmlSimpleError(0xAu, 2, 0, 0, "allocating context");
  }

  return v3;
}

uint64_t xmlNanoHTTPConnectHost(const char *a1, unsigned int a2)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v28 = 0uLL;
  v29[0] = 0;
  v29[1] = 0;
  v26 = 0uLL;
  v25 = 0;
  v27 = 0;
  if (!have_ipv6())
  {
    v24.ai_flags = 0;
    v5 = gethostbyname(a1);
    if (!v5)
    {
      v4 = "Failed to resolve host";
      goto LABEL_35;
    }

    v6 = v5;
    if (*v5->h_addr_list)
    {
      v7 = 0;
      v8 = bswap32(a2) >> 16;
      do
      {
        if (v6->h_addrtype == 2)
        {
          if (v6->h_length >= 5u)
          {
            goto LABEL_34;
          }

          __memcpy_chk();
          BYTE1(v29[0]) = 2;
          HIDWORD(v29[0]) = v24.ai_flags;
          v9 = v29;
        }

        else
        {
          if (!have_ipv6() || v6->h_addrtype != 30)
          {
            break;
          }

          if (v6->h_length >= 0x11u)
          {
LABEL_34:
            v4 = "address size mismatch\n";
LABEL_35:
            __xmlIOErr(0xAu, 0, v4);
            break;
          }

          v10 = v6->h_addr_list[v7];
          __memcpy_chk();
          BYTE1(v25) = 30;
          v26 = v28;
          v9 = &v25;
        }

        *(v9 + 1) = v8;
        v11 = xmlNanoHTTPConnectAttempt(v9);
        if (v11 != -1)
        {
          v20 = v11;
          goto LABEL_37;
        }
      }

      while (v6->h_addr_list[++v7]);
    }

LABEL_36:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_37;
  }

  v23 = 0;
  memset(&v24, 0, sizeof(v24));
  v24.ai_socktype = 1;
  if (getaddrinfo(a1, 0, &v24, &v23))
  {
    v4 = "getaddrinfo failed\n";
    goto LABEL_35;
  }

  v13 = v23;
  if (!v23)
  {
    goto LABEL_36;
  }

  v14 = bswap32(a2) >> 16;
  while (1)
  {
    if (v13->ai_family == 2)
    {
      if (v13->ai_addrlen >= 0x11)
      {
        goto LABEL_31;
      }

      ai_addr = v13->ai_addr;
      v16 = v29;
    }

    else
    {
      if (!have_ipv6() || v13->ai_family != 30)
      {
        goto LABEL_27;
      }

      if (v13->ai_addrlen >= 0x1D)
      {
LABEL_31:
        __xmlIOErr(0xAu, 0, "address size mismatch\n");
        v19 = v23;
LABEL_32:
        freeaddrinfo(v19);
        goto LABEL_36;
      }

      v17 = v13->ai_addr;
      v16 = &v25;
    }

    __memcpy_chk();
    *(v16 + 1) = v14;
    v18 = xmlNanoHTTPConnectAttempt(v16);
    if (v18 != -1)
    {
      break;
    }

LABEL_27:
    v13 = v13->ai_next;
    if (!v13)
    {
      v19 = v23;
      if (!v23)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  v20 = v18;
  freeaddrinfo(v23);
LABEL_37:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

ssize_t xmlNanoHTTPSend(ssize_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = result;
    if ((*(result + 44) & 1) != 0 && a3 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        result = send(*(v4 + 40), (a2 + v7), a3 - v7, 0);
        if (result < 1)
        {
          if (result == -1 && *__error() != 35)
          {
            return __xmlIOErr(0xAu, 0, "send failed\n");
          }

          v8.fd = *(v4 + 40);
          v8.events = 4;
          result = poll(&v8, 1u, 60000);
        }

        else
        {
          v7 += result;
        }
      }

      while (v7 < a3);
    }
  }

  return result;
}

int xmlNanoHTTPFetch(const char *URL, const char *filename, char **contentType)
{
  *&__nbyte[1] = 0;
  if (!filename)
  {
    return -1;
  }

  if (contentType)
  {
    *contentType = 0;
  }

  v5 = xmlNanoHTTPMethodRedir(URL, 0, 0, contentType, 0, 0, 0);
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if (*filename == 45 && !filename[1])
  {
    v7 = 0;
  }

  else
  {
    v7 = open(filename, 513, 420);
    if (v7 < 0)
    {
      xmlNanoHTTPFreeCtxt(v6);
      if (contentType && *contentType)
      {
        free(*contentType);
        *contentType = 0;
      }

      return -1;
    }
  }

  __nbyte[0] = 0;
  xmlNanoHTTPFetchContent(v6, &__nbyte[1], __nbyte);
  if (__nbyte[0] < 1)
  {
    v8 = 0;
  }

  else if (write(v7, *&__nbyte[1], __nbyte[0]) == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  xmlNanoHTTPFreeCtxt(v6);
  close(v7);
  return v8;
}

ssize_t xmlNanoHTTPFetchContent(ssize_t result, void *a2, int *a3)
{
  v5 = *(result + 72);
  if (v5)
  {
    v6 = result;
    v7 = *(result + 80) - v5;
    do
    {
      result = xmlNanoHTTPRecv(v6);
      if (result < 1)
      {
        break;
      }

      v7 += result;
      v8 = *(v6 + 112);
    }

    while (v8 < 1 || v7 < v8);
    if (a2)
    {
      *a2 = *(v6 + 72);
    }

    if (a3)
    {
      *a3 = v7;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a2)
    {
      *a2 = 0;
    }
  }

  return result;
}

int xmlNanoHTTPSave(void *ctxt, const char *filename)
{
  *&__nbyte[1] = 0;
  v2 = -1;
  if (ctxt && filename)
  {
    if (*filename == 45 && !filename[1])
    {
      v4 = 0;
    }

    else
    {
      v4 = open(filename, 513, 438);
      if (v4 < 0)
      {
        xmlNanoHTTPFreeCtxt(ctxt);
        return v2;
      }
    }

    __nbyte[0] = 0;
    xmlNanoHTTPFetchContent(ctxt, &__nbyte[1], __nbyte);
    if (__nbyte[0] < 1)
    {
      v2 = 0;
    }

    else if (write(v4, *&__nbyte[1], __nbyte[0]) == -1)
    {
      v2 = -1;
    }

    else
    {
      v2 = 0;
    }

    xmlNanoHTTPFreeCtxt(ctxt);
    close(v4);
  }

  return v2;
}

int xmlNanoHTTPReturnCode(void *ctx)
{
  if (ctx)
  {
    return *(ctx + 26);
  }

  else
  {
    return -1;
  }
}

const char *__cdecl xmlNanoHTTPAuthHeader(const char *ctx)
{
  if (ctx)
  {
    return *(ctx + 17);
  }

  return ctx;
}

int xmlNanoHTTPContentLength(void *ctx)
{
  if (ctx)
  {
    return *(ctx + 28);
  }

  else
  {
    return -1;
  }
}

const char *__cdecl xmlNanoHTTPRedir(const char *ctx)
{
  if (ctx)
  {
    return *(ctx + 16);
  }

  return ctx;
}

const char *__cdecl xmlNanoHTTPEncoding(const char *ctx)
{
  if (ctx)
  {
    return *(ctx + 18);
  }

  return ctx;
}

const char *__cdecl xmlNanoHTTPMimeType(const char *ctx)
{
  if (ctx)
  {
    return *(ctx + 19);
  }

  return ctx;
}

uint64_t have_ipv6()
{
  v0 = socket(30, 1, 0);
  if (v0 == -1)
  {
    return 0;
  }

  close(v0);
  return 1;
}

uint64_t xmlNanoHTTPConnectAttempt(const sockaddr *a1)
{
  sa_family = a1->sa_family;
  if (sa_family == 30)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  if (sa_family == 30)
  {
    v4 = 28;
  }

  else
  {
    v4 = 16;
  }

  v5 = socket(v3, 1, 6);
  v6 = v5;
  if (v5 == -1)
  {
    __xmlIOErr(0xAu, 0, "socket failed\n");
    return v6;
  }

  v7 = fcntl(v5, 3, 0);
  if (v7 == -1 || (v13 = fcntl(v6, 4, v7 | 4u), v13 < 0))
  {
    v9 = "error setting non-blocking IO\n";
  }

  else
  {
    v14 = 0;
    if (connect(v6, a1, v4) == -1 && (*__error() - 35) >= 2)
    {
      v9 = "error connecting to HTTP server";
    }

    else
    {
      v14.fd = v6;
      v14.events = 4;
      v8 = poll(&v14, 1u, 60000);
      if (v8 == -1)
      {
        v9 = "Connect failed";
      }

      else if (v8)
      {
        if (v14.revents == 4)
        {
          revents = v14.revents;
          if ((getsockopt(v6, 0xFFFF, 4103, &v13, &revents) & 0x80000000) == 0)
          {
            if (!v13)
            {
              return v6;
            }

            __xmlIOErr(0xAu, 0, "Error connecting to remote host");
            close(v6);
            v11 = v13;
            *__error() = v11;
            return 0xFFFFFFFFLL;
          }

          v9 = "getsockopt failed\n";
        }

        else
        {
          v9 = "select failed\n";
        }
      }

      else
      {
        v9 = "Connect attempt timed out";
      }
    }
  }

  __xmlIOErr(0xAu, 0, v9);
  close(v6);
  return 0xFFFFFFFFLL;
}

int xmlHasFeature(xmlFeature feature)
{
  if (feature - 1 > 0x20)
  {
    return 0;
  }

  else
  {
    return dword_1C79BACA4[feature - 1];
  }
}

int xmlCheckLanguageID(const xmlChar *lang)
{
  if (lang)
  {
    v1 = *lang;
    if (v1 > 0x68)
    {
      if (v1 != 120 && v1 != 105)
      {
        goto LABEL_12;
      }
    }

    else if (v1 != 73 && v1 != 88)
    {
LABEL_12:
      v6 = 0;
      do
      {
        v7 = lang[v6++];
      }

      while ((v7 & 0xFFFFFFDF) - 65 < 0x1A);
      v8 = v6 - 1;
      if (v6 - 1 >= 4)
      {
        v5 = v8 < 9 && v7 == 0;
LABEL_18:
        LODWORD(lang) = v5;
        return lang;
      }

      if (v8 >= 2)
      {
        if (!v7)
        {
          goto LABEL_58;
        }

        if (v7 == 45)
        {
          v9 = &lang[v6];
          v10 = lang[v6];
          if ((v10 - 48) < 0xA)
          {
            goto LABEL_26;
          }

          if ((v10 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            do
            {
              v12 = *++v9;
              v10 = v12;
            }

            while ((v12 & 0xFFFFFFDF) - 65 < 0x1A);
          }

          v13 = v9 - lang - v6;
          if (v13 == 2)
          {
            goto LABEL_52;
          }

          if (v13 == 4)
          {
            goto LABEL_33;
          }

          if ((v13 - 5) < 4)
          {
            goto LABEL_59;
          }

          if (v9 - lang - 3 == v6)
          {
            if (!v10)
            {
              goto LABEL_58;
            }

            if (v10 == 45)
            {
              v14 = v9 + 1;
              if (v9[1] - 48 < 0xA)
              {
                goto LABEL_36;
              }

              v15 = -6;
              do
              {
                v16 = *++v9;
                v10 = v16;
                ++v15;
              }

              while ((v16 & 0xFFFFFFDF) - 65 < 0x1A);
              if (v15 == -3)
              {
                goto LABEL_52;
              }

              if (v15 < 4)
              {
                goto LABEL_59;
              }

              if (v15 == -1)
              {
LABEL_33:
                if (!v10)
                {
                  goto LABEL_58;
                }

                if (v10 == 45)
                {
                  v14 = v9 + 1;
                  if (v9[1] - 48 < 0xA)
                  {
LABEL_36:
                    v9 = v14;
LABEL_26:
                    if (v9[1] - 48 > 9 || v9[2] - 48 > 9)
                    {
                      goto LABEL_57;
                    }

                    v11 = v9[3];
                    v9 += 3;
                    v10 = v11;
                    goto LABEL_52;
                  }

                  v17 = -6;
                  do
                  {
                    v18 = *++v9;
                    v10 = v18;
                    ++v17;
                  }

                  while ((v18 & 0xFFFFFFDF) - 65 < 0x1A);
                  if (v17 < 4)
                  {
                    goto LABEL_59;
                  }

                  if (v17 == -3)
                  {
LABEL_52:
                    if (v10)
                    {
                      if (v10 != 45)
                      {
                        goto LABEL_57;
                      }

                      v19 = 1;
                      do
                      {
                        v10 = v9[v19++];
                      }

                      while ((v10 & 0xFFFFFFDF) - 65 < 0x1A);
                      if ((v19 - 11) < 0xFFFFFFFFFFFFFFFCLL)
                      {
                        goto LABEL_57;
                      }

LABEL_59:
                      if (v10)
                      {
                        v5 = v10 == 45;
                      }

                      else
                      {
                        v5 = 1;
                      }

                      goto LABEL_18;
                    }

LABEL_58:
                    LODWORD(lang) = 1;
                    return lang;
                  }
                }
              }
            }
          }
        }
      }

LABEL_57:
      LODWORD(lang) = 0;
      return lang;
    }

    if (lang[1] == 45)
    {
      v2 = lang + 2;
      do
      {
        v4 = *v2++;
        v3 = v4;
      }

      while ((v4 & 0xFFFFFFDF) - 65 < 0x1A);
      v5 = v3 == 0;
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  return lang;
}

_DWORD *xmlFatalErrMsgInt(_DWORD *result, int a2, const char *a3, int a4)
{
  if (!result)
  {
    return __xmlRaiseError(0, 0, 0, 0, 0, 1u, a2, 3, 0, 0, 0, 0, 0, a4, 0, a3, a4);
  }

  v4 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, 0, 0, 0, a4, 0, a3, a4);
    v4[6] = 0;
    if (!v4[112])
    {
      v4[83] = 1;
    }
  }

  return result;
}

int namePush(xmlParserCtxtPtr ctxt, const xmlChar *value)
{
  if (!ctxt)
  {
    return -1;
  }

  result = ctxt->nameNr;
  nameMax = ctxt->nameMax;
  if (result < nameMax)
  {
    nameTab = ctxt->nameTab;
LABEL_8:
    nameTab[result] = value;
    ctxt->name = value;
    ctxt->nameNr = result + 1;
    return result;
  }

  if ((nameMax & 0x80000000) == 0)
  {
    v7 = malloc_type_realloc(ctxt->nameTab, 16 * nameMax, 0x50040EE9192B6uLL);
    if (v7)
    {
      nameTab = v7;
      ctxt->nameTab = v7;
      ctxt->nameMax *= 2;
      result = ctxt->nameNr;
      goto LABEL_8;
    }
  }

  xmlErrMemory(ctxt, 0);
  return -1;
}

const xmlChar *__cdecl namePop(const xmlChar *ctxt)
{
  if (ctxt)
  {
    v1 = *(ctxt + 74);
    if (v1 < 1)
    {
      return 0;
    }

    else
    {
      v2 = *(ctxt + 38);
      v3 = v1 - 1;
      *(ctxt + 74) = v1 - 1;
      if (v1 == 1)
      {
        v4 = 0;
      }

      else
      {
        v4 = *(v2 + 8 * v1 - 16);
      }

      *(ctxt + 36) = v4;
      ctxt = *(v2 + 8 * v3);
      *(v2 + 8 * v3) = 0;
    }
  }

  return ctxt;
}

void xmlParsePEReference(xmlParserCtxtPtr ctxt)
{
  if (*ctxt->input->cur == 37)
  {
    xmlNextChar(ctxt);
    v2 = xmlParseName(ctxt);
    if (v2)
    {
      v3 = v2;
      if (*__xmlParserDebugEntities())
      {
        v4 = *__xmlGenericError();
        v5 = __xmlGenericErrorContext();
        v4(*v5, "PEReference: %s\n", v3);
      }

      if (*ctxt->input->cur == 59)
      {
        xmlNextChar(ctxt);
        ++ctxt->nbentities;
        if (ctxt->sax && (getParameterEntity = ctxt->sax->getParameterEntity) != 0)
        {
          v7 = (getParameterEntity)(ctxt->userData, v3);
        }

        else
        {
          v7 = 0;
        }

        if (ctxt->instate != XML_PARSER_EOF)
        {
          if (!v7)
          {
            if (ctxt->standalone != 1 && (ctxt->hasExternalSubset || ctxt->hasPErefs))
            {
              if (ctxt->validate && ctxt->vctxt.error)
              {
                xmlValidityError(ctxt, 27, "PEReference: %%%s; not found\n", v3, 0);
              }

              else
              {
                xmlWarningMsg(ctxt, 27, "PEReference: %%%s; not found\n", v3);
              }

              ctxt->valid = 0;
            }

            else
            {
              xmlFatalErrMsgStr(ctxt, 26, "PEReference: %%%s; not found\n", v3);
            }

            xmlParserEntityCheck(ctxt, 0, 0, 0);
            goto LABEL_52;
          }

          if ((*(v7 + 92) & 0xFFFFFFFE) != 4)
          {
            xmlWarningMsg(ctxt, 27, "Internal: %%%s; is not a parameter entity\n", v3);
LABEL_52:
            ctxt->hasPErefs = 1;
            return;
          }

          *in = 0;
          if (!xmlParserEntityCheck(ctxt, 0, v7, 0) && (*(v7 + 92) != 5 || (ctxt->options & 0x1E) != 0 || ctxt->replaceEntities || ctxt->validate))
          {
            v8 = xmlNewEntityInputStream(ctxt, v7);
            if (xmlPushInput(ctxt, v8) < 0)
            {
              xmlFreeInputStream(v8);
              return;
            }

            if (*(v7 + 92) != 5)
            {
              goto LABEL_52;
            }

            if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
            {
              xmlGROW(ctxt);
            }

            if (ctxt->instate != XML_PARSER_EOF)
            {
              cur = ctxt->input->cur;
              if (ctxt->input->end - cur >= 4)
              {
                *in = *cur;
                v10 = xmlDetectCharEncoding(in, 4);
                if (v10)
                {
                  xmlSwitchEncoding(ctxt, v10);
                }
              }

              v11 = ctxt->input->cur;
              if (*v11 == 60 && v11[1] == 63 && v11[2] == 120 && v11[3] == 109 && v11[4] == 108)
              {
                v12 = v11[5];
                if (v12 <= 0x20 && ((1 << v12) & 0x100002600) != 0)
                {
                  xmlParseTextDecl(ctxt);
                }
              }

              goto LABEL_52;
            }
          }
        }
      }

      else
      {

        xmlFatalErr(ctxt, 25, 0);
      }
    }

    else
    {

      xmlFatalErrMsg(ctxt, 24, "PEReference: no name\n");
    }
  }
}

xmlChar xmlPopInput(xmlParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return ctxt;
  }

  v1 = ctxt;
  if (ctxt->inputNr < 2)
  {
    LOBYTE(ctxt) = 0;
    return ctxt;
  }

  if (*__xmlParserDebugEntities())
  {
    v2 = *__xmlGenericError();
    v3 = __xmlGenericErrorContext();
    v2(*v3, "Popping input %d\n", v1->inputNr);
  }

  inputNr = v1->inputNr;
  v5 = inputNr - 1;
  if (inputNr > 1)
  {
    if (v1->inSubset || v1->instate == XML_PARSER_EOF)
    {
      v1->inputNr = v5;
      inputTab = v1->inputTab;
      goto LABEL_14;
    }

    xmlFatalErr(v1, 1, "Unfinished entity outside the DTD");
    inputNr = v1->inputNr;
  }

  v5 = inputNr - 1;
  if (inputNr >= 1)
  {
    v1->inputNr = v5;
    inputTab = v1->inputTab;
    if (inputNr == 1)
    {
      v7 = 0;
      v8 = 0;
LABEL_15:
      v1->input = v8;
      v9 = inputTab[v7];
      inputTab[v7] = 0;
      goto LABEL_17;
    }

LABEL_14:
    v8 = inputTab[inputNr - 2];
    v7 = v5;
    goto LABEL_15;
  }

  v9 = 0;
LABEL_17:
  xmlFreeInputStream(v9);
  LOBYTE(ctxt) = *v1->input->cur;
  if (!ctxt)
  {
    xmlParserInputGrow(v1->input, 250);
    LOBYTE(ctxt) = *v1->input->cur;
  }

  return ctxt;
}

_DWORD *xmlFatalErr(_DWORD *result, int a2, const xmlChar *a3)
{
  v3 = result;
  if (result && result[83] && result[68] == -1)
  {
    return result;
  }

  if ((a2 - 1) <= 0x6D)
  {
    v4 = off_1E82C5A48[a2 - 1];
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = "Unregistered error message";
  if (result)
  {
LABEL_8:
    result[34] = a2;
  }

LABEL_9:
  if (a3)
  {
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a3, 0, 0, 0, 0 >> 96, "%s: %s\n", v4);
  }

  else
  {
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, 0, 0, 0, 0, 0, "%s\n", v4);
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

int xmlPushInput(xmlParserCtxtPtr ctxt, xmlParserInputPtr input)
{
  if (!input)
  {
    return -1;
  }

  if (*__xmlParserDebugEntities())
  {
    v4 = ctxt->input;
    if (v4 && v4->filename)
    {
      v5 = *__xmlGenericError();
      v6 = __xmlGenericErrorContext();
      v5(*v6, "%s(%d): ", ctxt->input->filename, ctxt->input->line);
    }

    v7 = *__xmlGenericError();
    v8 = __xmlGenericErrorContext();
    v7(*v8, "Pushing input %d : %.30s\n", ctxt->inputNr + 1, input->cur);
  }

  inputNr = ctxt->inputNr;
  if (inputNr >= 41 && (inputNr > 0x400 || (ctxt->options & 0x80000) == 0))
  {
    xmlFatalErr(ctxt, 89, 0);
    v12 = ctxt->inputNr;
    if (v12 >= 2)
    {
      do
      {
        ctxt->inputNr = v12 - 1;
        inputTab = ctxt->inputTab;
        ctxt->input = inputTab[v12 - 2];
        v14 = inputTab[v12 - 1];
        inputTab[v12 - 1] = 0;
        xmlFreeInputStream(v14);
        v12 = ctxt->inputNr;
      }

      while (v12 > 1);
    }

    return -1;
  }

  if (ctxt->instate == XML_PARSER_EOF)
  {
    return -1;
  }

  v10 = inputPush(ctxt, input);
  if (v10 < 0)
  {
    xmlFreeInputStream(input);
    xmlFreeParserCtxt(ctxt);
    return -1;
  }

  v11 = v10;
  if (!ctxt->progressive && ctxt->input->end - ctxt->input->cur <= 249)
  {
    xmlGROW(ctxt);
  }

  return v11;
}

void xmlParserHandlePEReference(xmlParserCtxtPtr ctxt)
{
  instate = ctxt->instate;
  if (instate > XML_PARSER_PI)
  {
    if (instate > XML_PARSER_PUBLIC_LITERAL)
    {
      goto LABEL_13;
    }

    if (((1 << instate) & 0x1BFE0) != 0)
    {
      return;
    }

    if (instate != XML_PARSER_PROLOG)
    {
      if (instate == XML_PARSER_EPILOG)
      {
        v2 = 20;
LABEL_23:
        xmlFatalErr(ctxt, v2, 0);
        return;
      }

LABEL_13:
      if (instate == XML_PARSER_DTD)
      {
        if (!ctxt->external && ctxt->inputNr == 1)
        {
          return;
        }

        v3 = *(ctxt->input->cur + 1);
        v4 = v3 > 0x20;
        v5 = (1 << v3) & 0x100002601;
        if (!v4 && v5 != 0)
        {
          return;
        }
      }

LABEL_21:
      xmlParsePEReference(ctxt);
      return;
    }

LABEL_12:
    v2 = 19;
    goto LABEL_23;
  }

  if (instate < XML_PARSER_PI)
  {
    goto LABEL_12;
  }

  if (instate == XML_PARSER_EOF)
  {
    v2 = 18;
    goto LABEL_23;
  }

  if (instate != XML_PARSER_PI)
  {
    goto LABEL_21;
  }
}

uint64_t xmlParserEntityCheck(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result)
  {
    v4 = result;
    if ((*(result + 566) & 8) == 0)
    {
      if (*(result + 604) == 89)
      {
        return 1;
      }

      if (a3)
      {
        if (*(a3 + 92) != 6)
        {
          v8 = *(a3 + 80);
          if (v8)
          {
            if (!*(a3 + 132) && *(result + 136) != 89)
            {
              v9 = *(result + 696);
              *(a3 + 132) = 1;
              ++*(result + 392);
              v10 = xmlStrlen(v8);
              v11 = xmlStringLenDecodeEntities(v4, v8, v10, 1, 0, 0, 0);
              v12 = v11;
              --*(v4 + 392);
              if (!v11 || *(v4 + 136) == 89)
              {
                **(a3 + 80) = 0;
              }

              v13 = *(v4 + 696) - v9;
              if ((v13 + 1) < 0x3FFFFFFF)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = 0x3FFFFFFF;
              }

              *(a3 + 132) = 2 * v14;
              if (v11)
              {
                if (xmlStrchr(v11, 0x3Cu))
                {
                  *(a3 + 132) |= 1u;
                }

                free(v12);
              }
            }
          }
        }
      }

      if (*(v4 + 272) == 3)
      {
        v15 = *(v4 + 696);
        if (v15 >= 0x2711 && (v15 & 0x3FF) == 0)
        {
          v16 = *(v4 + 64);
          if (v16 < 1)
          {
            goto LABEL_27;
          }

          v17 = 0;
          v18 = *(v4 + 72);
          do
          {
            v19 = *v18++;
            v17 = v19[8] + v17 + v19[4] - v19[3];
            --v16;
          }

          while (v16);
          if (v15 > 10 * v17)
          {
LABEL_27:
            xmlFatalErr(v4, 89, 0);
            *(v4 + 272) = -1;
            return 1;
          }
        }
      }

      if (a4)
      {
        if (a4 >= 0x989680)
        {
          v20 = *(v4 + 56);
          if (v20)
          {
            v20 = (v20[8] + v20[4] - v20[3]);
          }

          if (10 * (v20 + *(v4 + 704)) <= a4)
          {
            goto LABEL_50;
          }
        }
      }

      else if (a2)
      {
        if (a2 >= 0x3E8)
        {
          v21 = *(v4 + 56);
          if (v21)
          {
            v21 = (v21[8] + v21[4] - v21[3]);
          }

          v22 = 10 * (v21 + *(v4 + 704));
          if (v22 <= a2 || 3 * *(v4 + 696) >= v22)
          {
            goto LABEL_50;
          }
        }
      }

      else if (a3)
      {
        v23 = *(v4 + 56);
        if (v23)
        {
          v23 = (v23[8] + v23[4] - v23[3]);
        }

        if (3 * ((*(a3 + 132) + (*(a3 + 132) >> 31)) >> 1) >= (10 * (v23 + *(v4 + 704))))
        {
          goto LABEL_50;
        }
      }

      else if ((*(v4 + 604) & 0xFFFFFFFE) == 0x1A && *(v4 + 696) >= 0x2711uLL)
      {
LABEL_50:
        xmlFatalErr(v4, 89, 0);
        return 1;
      }
    }

    return 0;
  }

  return result;
}