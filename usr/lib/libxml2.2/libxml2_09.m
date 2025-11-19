_OWORD *xmlRelaxNGParseNameClass(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 72))
  {
    goto LABEL_82;
  }

  v6 = a3;
  if (*(a2 + 8) == 1)
  {
    v7 = xmlStrEqual(*(a2 + 16), "name");
    v8 = *(a2 + 72);
    if (v7)
    {
      if (xmlStrEqual(*(v8 + 16), "http://relaxng.org/ns/structure/1.0"))
      {
LABEL_5:
        v6 = a3;
        if (*a3 != 4)
        {
          v6 = a3;
          if (*a3 != 9)
          {
            v9 = xmlRelaxNGNewDefine(a1, a2);
            v6 = v9;
            if (!v9)
            {
              return v6;
            }

            *(v9 + 7) = a3;
            if (*(a1 + 64))
            {
              v10 = 9;
            }

            else
            {
              v10 = 4;
            }

            *v9 = v10;
          }
        }

        goto LABEL_22;
      }

      v8 = *(a2 + 72);
    }

    if (!v8)
    {
      goto LABEL_82;
    }

    v6 = a3;
    if (*(a2 + 8) == 1)
    {
      v11 = xmlStrEqual(*(a2 + 16), "anyName");
      v12 = *(a2 + 72);
      if (v11)
      {
        if (xmlStrEqual(*(v12 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          goto LABEL_5;
        }

        v12 = *(a2 + 72);
      }

      if (!v12)
      {
        goto LABEL_82;
      }

      v6 = a3;
      if (*(a2 + 8) == 1)
      {
        v6 = a3;
        if (xmlStrEqual(*(a2 + 16), "nsName"))
        {
          v6 = a3;
          if (xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            goto LABEL_5;
          }
        }
      }
    }
  }

LABEL_22:
  if (!*(a2 + 72) || *(a2 + 8) != 1)
  {
    goto LABEL_82;
  }

  v13 = xmlStrEqual(*(a2 + 16), "name");
  v14 = *(a2 + 72);
  if (!v13)
  {
    goto LABEL_30;
  }

  if (!xmlStrEqual(*(v14 + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v14 = *(a2 + 72);
LABEL_30:
    if (v14 && *(a2 + 8) == 1)
    {
      v22 = xmlStrEqual(*(a2 + 16), "anyName");
      v23 = *(a2 + 72);
      if (v22)
      {
        if (xmlStrEqual(*(v23 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          *(v6 + 2) = 0;
          *(v6 + 3) = 0;
LABEL_35:
          v24 = *(a2 + 24);
          if (v24)
          {
            *(v6 + 10) = xmlRelaxNGParseExceptNameClass(a1, v24, *a3 == 9);
          }

          goto LABEL_49;
        }

        v23 = *(a2 + 72);
      }

      if (v23 && *(a2 + 8) == 1)
      {
        v34 = xmlStrEqual(*(a2 + 16), "nsName");
        v35 = *(a2 + 72);
        if (v34)
        {
          if (xmlStrEqual(*(v35 + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            *(v6 + 2) = 0;
            Prop = xmlGetProp(a2, "ns");
            *(v6 + 3) = Prop;
            if (!Prop)
            {
              xmlRngPErr(a1, a2, 1057, "nsName has no ns attribute\n", 0, 0);
            }

            if (*(a1 + 64))
            {
              v37 = *(v6 + 3);
              if (v37)
              {
                if (xmlStrEqual(v37, "http://www.w3.org/2000/xmlns"))
                {
                  xmlRngPErr(a1, a2, 1122, "Attribute with namespace '%s' is not allowed\n", *(v6 + 3), 0);
                }
              }
            }

            goto LABEL_35;
          }

          v35 = *(a2 + 72);
        }

        if (v35 && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "choice") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v6 = a3;
          if (*a3 != 17)
          {
            v38 = xmlRelaxNGNewDefine(a1, a2);
            v6 = v38;
            if (!v38)
            {
              return v6;
            }

            *(v38 + 7) = a3;
            *v38 = 17;
          }

          v39 = *(a2 + 24);
          if (!v39)
          {
            v27 = "Element choice is empty\n";
            v28 = a1;
            v29 = a2;
            v30 = 1007;
            v31 = 0;
            goto LABEL_48;
          }

          v40 = 0;
          while (1)
          {
            v41 = xmlRelaxNGParseNameClass(a1, v39, v6);
            if (!v41)
            {
              break;
            }

            if (v40)
            {
              if (v41 == v6)
              {
                break;
              }

              *(v40 + 64) = v41;
            }

LABEL_80:
            v39 = *(v39 + 48);
            v40 = v41;
            if (!v39)
            {
              goto LABEL_49;
            }
          }

          v41 = v40;
          goto LABEL_80;
        }
      }
    }

LABEL_82:
    xmlRngPErr(a1, a2, 1006, "expecting name, anyName, nsName or choice : got %s\n", *(a2 + 16), 0);
    return 0;
  }

  Content = xmlNodeGetContent(a2);
  xmlRelaxNGNormExtSpace(Content);
  if (xmlValidateNCName(Content, 0))
  {
    v16 = *(a2 + 40);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = "Element %s name '%s' is not an NCName\n";
      v19 = a1;
      v20 = a2;
      v21 = Content;
    }

    else
    {
      v18 = "name '%s' is not an NCName\n";
      v19 = a1;
      v20 = a2;
      v17 = Content;
      v21 = 0;
    }

    xmlRngPErr(v19, v20, 1019, v18, v17, v21);
  }

  *(v6 + 2) = Content;
  v25 = xmlGetProp(a2, "ns");
  v26 = v25;
  *(v6 + 3) = v25;
  if ((*(a1 + 64) & 1) != 0 && v25 && xmlStrEqual(v25, "http://www.w3.org/2000/xmlns"))
  {
    xmlRngPErr(a1, a2, 1122, "Attribute with namespace '%s' is not allowed\n", v26, 0);
  }

  if ((*(a1 + 64) & 1) == 0 || !v26 || *v26 || !xmlStrEqual(*(v6 + 2), "xmlns"))
  {
    goto LABEL_49;
  }

  v27 = "Attribute with QName 'xmlns' is not allowed\n";
  v28 = a1;
  v29 = a2;
  v30 = 1121;
  v31 = v26;
LABEL_48:
  xmlRngPErr(v28, v29, v30, v27, v31, 0);
LABEL_49:
  if (v6 != a3)
  {
    v32 = *(a3 + 80);
    if (v32)
    {
      do
      {
        v33 = v32;
        v32 = *(v32 + 64);
      }

      while (v32);
      *(v33 + 64) = v6;
    }

    else
    {
      *(a3 + 80) = v6;
    }
  }

  return v6;
}

_OWORD *xmlRelaxNGParseExceptNameClass(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a2 + 72) || *(a2 + 8) != 1 || !xmlStrEqual(*(a2 + 16), "except") || !xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v14 = "Expecting an except node\n";
    v15 = a1;
    v16 = a2;
    v17 = 1028;
LABEL_21:
    xmlRngPErr(v15, v16, v17, v14, 0, 0);
    return 0;
  }

  if (*(a2 + 48))
  {
    xmlRngPErr(a1, a2, 1029, "exceptNameClass allows only a single except node\n", 0, 0);
  }

  if (!*(a2 + 24))
  {
    v14 = "except has no content\n";
    v15 = a1;
    v16 = a2;
    v17 = 1027;
    goto LABEL_21;
  }

  v6 = xmlRelaxNGNewDefine(a1, a2);
  v7 = v6;
  if (v6)
  {
    *v6 = 2;
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      if (a3)
      {
        v10 = 9;
      }

      else
      {
        v10 = 4;
      }

      do
      {
        v11 = xmlRelaxNGNewDefine(a1, v8);
        if (!v11)
        {
          break;
        }

        v12 = v11;
        *v11 = v10;
        if (xmlRelaxNGParseNameClass(a1, v8, v11))
        {
          v13 = v9 + 4;
          if (!v9)
          {
            v13 = v7 + 3;
          }

          *v13 = v12;
          v9 = v12;
        }

        v8 = *(v8 + 48);
      }

      while (v8);
    }
  }

  return v7;
}

uint64_t *xmlRelaxNGParseInterleave(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = xmlRelaxNGNewDefine(a1, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = 19;
    if (*(a1 + 104) || (v6 = xmlHashCreate(10), (*(a1 + 104) = v6) != 0))
    {
      *__str = 0u;
      v15 = 0u;
      v7 = *(a1 + 96);
      *(a1 + 96) = v7 + 1;
      snprintf(__str, 0x20uLL, "interleave%d", v7);
      if (xmlHashAddEntry(*(a1 + 104), __str, v5) < 0)
      {
        xmlRngPErr(a1, a2, 1045, "Failed to add %s to hash table\n", __str, 0);
      }
    }

    else
    {
      xmlRngPErrMemory(a1, "create interleaves\n");
    }

    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        if (*(v8 + 72) && *(v8 + 8) == 1 && xmlStrEqual(*(v8 + 16), "element") && xmlStrEqual(*(*(v8 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v10 = xmlRelaxNGParseElement(a1, v8);
          if (v10)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v10 = xmlRelaxNGParsePattern(a1, v8);
          if (v10)
          {
LABEL_16:
            *(v10 + 56) = v5;
            v11 = (v9 + 64);
            if (!v9)
            {
              v11 = v5 + 6;
            }

            *v11 = v10;
            v9 = v10;
          }
        }

        v8 = *(v8 + 48);
        if (!v8)
        {
          goto LABEL_22;
        }
      }
    }

    xmlRngPErr(a1, a2, 1048, "Element interleave is empty\n", 0, 0);
  }

LABEL_22:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

_OWORD *xmlRelaxNGProcessExternalRef(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (!v2)
  {
    return 0;
  }

  v3 = a2;
  v5 = xmlRelaxNGNewDefine(a1, a2);
  v6 = v5;
  if (v5)
  {
    *v5 = 12;
    if (*(v2 + 24))
    {
LABEL_4:
      *(v6 + 6) = *(v2 + 24);
      return v6;
    }

    RootElement = xmlDocGetRootElement(*(v2 + 16));
    if (RootElement)
    {
      v8 = RootElement;
      Prop = xmlGetProp(RootElement, "ns");
      v10 = Prop == 0;
      if (!Prop)
      {
        while (1)
        {
          if (*(v3 + 8) != 1)
          {
LABEL_14:
            v10 = 0;
            goto LABEL_15;
          }

          v12 = xmlGetProp(v3, "ns");
          if (v12)
          {
            break;
          }

          v3 = *(v3 + 40);
          if (!v3)
          {
            goto LABEL_14;
          }
        }

        Prop = v12;
        xmlSetProp(v8, "ns", v12);
      }

      free(Prop);
LABEL_15:
      v13 = *(a1 + 64);
      *(a1 + 64) = v13 | 0x80;
      v14 = xmlRelaxNGParseDocument(a1, v8);
      *(v2 + 32) = v14;
      *(a1 + 64) = v13;
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          *(v2 + 24) = *(v15 + 24);
          v16 = *(v15 + 56);
          if (v16)
          {
            v17 = *(a1 + 48);
            if (v17)
            {
              if (!*(v17 + 56))
              {
                v18 = xmlHashCreate(10);
                *(*(a1 + 48) + 56) = v18;
                if (!v18)
                {
                  xmlRngPErr(a1, 0, 1098, "Could not create references hash\n", 0, 0);
                  if (!v10)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_24;
                }

                v16 = *(v15 + 56);
              }

              xmlHashScan(v16, xmlRelaxNGParseImportRef, a1);
            }
          }
        }
      }

      if (!v10)
      {
        goto LABEL_4;
      }

LABEL_24:
      xmlUnsetProp(v8, "ns");
      goto LABEL_4;
    }

    xmlRngPErr(a1, v3, 1031, "xmlRelaxNGParse: %s is empty\n", *(a1 + 128), 0);
    return 0;
  }

  return v6;
}

xmlChar *xmlRelaxNGGetDataTypeLibrary(uint64_t a1)
{
  v1 = a1;
  if (!*(a1 + 72) || *(a1 + 8) != 1)
  {
    goto LABEL_11;
  }

  v2 = xmlStrEqual(*(a1 + 16), "data");
  v3 = *(v1 + 72);
  if (v2)
  {
    if (xmlStrEqual(*(v3 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      goto LABEL_10;
    }

    v3 = *(v1 + 72);
  }

  if (!v3 || *(v1 + 8) != 1 || !xmlStrEqual(*(v1 + 16), "value") || !xmlStrEqual(*(*(v1 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    goto LABEL_11;
  }

LABEL_10:
  while (1)
  {
    Prop = xmlGetProp(v1, "datatypeLibrary");
    if (Prop)
    {
      break;
    }

LABEL_11:
    v1 = *(v1 + 40);
    if (!v1 || *(v1 + 8) != 1)
    {
      return 0;
    }
  }

  v5 = Prop;
  if (!*Prop)
  {
    v7 = 0;
    goto LABEL_18;
  }

  v6 = xmlURIEscapeStr(Prop, ":/#?");
  if (v6)
  {
    v7 = v6;
LABEL_18:
    free(v5);
    return v7;
  }

  return v5;
}

uint64_t xmlRelaxNGParseImportRef(void *userdata, uint64_t a2, xmlChar *name)
{
  *(userdata + 49) |= 0x100u;
  result = xmlHashAddEntry(*(*(a2 + 48) + 56), name, userdata);
  if ((result & 0x80000000) != 0)
  {
    result = xmlHashLookup(*(*(a2 + 48) + 56), *(userdata + 2));
    if (result)
    {
      *(userdata + 11) = *(result + 88);
      *(result + 88) = userdata;
    }

    else
    {
      v6 = *(userdata + 2);
      if (v6)
      {
        v7 = "Error refs definitions '%s'\n";
      }

      else
      {
        v7 = "Error refs definitions\n";
      }

      return xmlRngPErr(a2, 0, 1098, v7, v6, 0);
    }
  }

  return result;
}

uint64_t xmlRelaxNGTryUnlink(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    *(a3 + 64) = *(a1 + 64);
  }

  else if (a2)
  {
    if (a2[6] == a1)
    {
      a3 = 0;
      a2[6] = *(a1 + 64);
    }

    else if (a2[9] == a1)
    {
      a3 = 0;
      a2[9] = *(a1 + 64);
    }

    else
    {
      a3 = 0;
      if (a2[10] == a1)
      {
        a2[10] = *(a1 + 64);
      }
    }
  }

  else
  {
    *a1 = -1;
    return a1;
  }

  return a3;
}

uint64_t xmlRelaxNGGenerateAttributes(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 68))
  {
    return 0xFFFFFFFFLL;
  }

  result = 1;
  if (a2)
  {
    v3 = a2;
    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = *v3;
        if (v5 - 10 < 0xA)
        {
          break;
        }

        v7 = v5 > 8;
        v8 = (1 << v5) & 0x1F9;
        if (!v7 && v8 != 0)
        {
          return 0;
        }

LABEL_16:
        if (v4 == a2)
        {
          return 1;
        }

        while (1)
        {
          v3 = v4[8];
          if (v3)
          {
            break;
          }

          v4 = v4[7];
          if (v4)
          {
            v10 = v4 == a2;
          }

          else
          {
            v10 = 1;
          }

          if (v10)
          {
            return 1;
          }
        }
      }

      v3 = v4[6];
      if (!v3)
      {
        goto LABEL_16;
      }

      v6 = v4[6];
      do
      {
        *(v6 + 56) = v4;
        v6 = *(v6 + 64);
      }

      while (v6);
    }
  }

  return result;
}

void xmlRelaxNGCheckGroupAttrs(uint64_t a1, uint64_t a2)
{
  v2 = *a2 == 18 || *a2 == 4;
  if (v2 && (*(a2 + 98) & 0x20) == 0 && !*(a1 + 68))
  {
    v5 = *(a2 + 72);
    if (v5)
    {
      v6 = 0;
      do
      {
        ++v6;
        v5 = *(v5 + 64);
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    for (i = *(a2 + 48); i; i = *(i + 64))
    {
      ++v6;
    }

    v8 = malloc_type_malloc(8 * v6, 0x80040B8603338uLL);
    if (v8)
    {
      v9 = v8;
      v10 = v6;
      v11 = *(a2 + 72);
      if (v11)
      {
        v12 = 0;
        do
        {
          v9[v12++] = xmlRelaxNGGetElements(a1, v11, 1);
          v11 = *(v11 + 64);
        }

        while (v11);
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a2 + 48);
      if (v14)
      {
        v15 = &v9[v13];
        do
        {
          *v15++ = xmlRelaxNGGetElements(a1, v14, 1);
          v14 = *(v14 + 64);
        }

        while (v14);
      }

      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          if (v9[j])
          {
            v17 = j == 0;
          }

          else
          {
            v17 = 1;
          }

          if (!v17)
          {
            v18 = 0;
            do
            {
              v19 = v9[v18];
              if (v19 && !xmlRelaxNGCompareElemDefLists(v9[j], v19))
              {
                xmlRngPErr(a1, *(a2 + 8), 1040, "Attributes conflicts in group\n", 0, 0);
              }

              ++v18;
            }

            while (j != v18);
          }
        }

        v20 = v9;
        do
        {
          if (*v20)
          {
            free(*v20);
          }

          ++v20;
          --v10;
        }

        while (v10);
      }

      free(v9);
      *(a2 + 98) |= 0x20u;
    }

    else
    {

      xmlRngPErrMemory(a1, "building group\n");
    }
  }
}

void *xmlRelaxNGGetElements(uint64_t a1, _DWORD *a2, int a3)
{
  if (*(a1 + 68))
  {
    v3 = 1;
  }

  else
  {
    v3 = a2 == 0;
  }

  if (v3)
  {
    return 0;
  }

  v7 = 0;
  LODWORD(v8) = 0;
  v9 = 0;
  v10 = a2;
  while (1)
  {
    v11 = v10;
    v12 = *v10;
    if (a3 == 2)
    {
      break;
    }

    if (a3 == 1)
    {
      if (v12 == 9)
      {
        goto LABEL_22;
      }
    }

    else if (!a3 && v12 - 3 < 2)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (v12 - 10 <= 9 && (v10 = v11[6]) != 0)
    {
      v13 = v11[6];
      do
      {
        *(v13 + 56) = v11;
        v13 = *(v13 + 64);
      }

      while (v13);
    }

    else
    {
LABEL_29:
      if (v11 == a2)
      {
        return v9;
      }

      while (1)
      {
        v10 = v11[8];
        if (v10)
        {
          break;
        }

        v11 = v11[7];
        if (v11)
        {
          v16 = v11 == a2;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          return v9;
        }
      }
    }
  }

  if (v12 > 8 || ((1 << v12) & 0x1B8) == 0)
  {
    goto LABEL_13;
  }

LABEL_22:
  if (!v9)
  {
    v9 = malloc_type_malloc(0x58uLL, 0x2004093837F09uLL);
    if (!v9)
    {
      xmlRngPErrMemory(a1, "getting element list\n");
      return v9;
    }

    v7 = 10;
    goto LABEL_28;
  }

  if (v7 > v8)
  {
LABEL_28:
    v9[v8] = v11;
    v8 = v8 + 1;
    v9[v8] = 0;
    goto LABEL_29;
  }

  v15 = malloc_type_realloc(v9, 8 * ((2 * v7) | 1), 0x2004093837F09uLL);
  if (v15)
  {
    v7 *= 2;
    v9 = v15;
    goto LABEL_28;
  }

  xmlRngPErrMemory(a1, "getting element list\n");
  free(v9);
  return 0;
}

uint64_t xmlRelaxNGCompareElemDefLists(uint64_t a1, void **a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      if (*a1)
      {
        v5 = *a2;
        if (*a2)
        {
          while (1)
          {
            v6 = a2 + 1;
            if (v5)
            {
              break;
            }

LABEL_8:
            v8 = *(a1 + 8);
            a1 += 8;
            if (!v8)
            {
              return 1;
            }

            v5 = *a2;
          }

          while (1)
          {
            result = xmlRelaxNGCompareNameClasses(*a1, v5);
            if (!result)
            {
              break;
            }

            v7 = *v6++;
            v5 = v7;
            if (!v7)
            {
              goto LABEL_8;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t xmlRelaxNGCompareNameClasses(void *a1, void *a2)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  DWORD2(v15) = 9;
  v4 = *a1;
  if (*a1 <= 3)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return *a2 != 3;
      }

      goto LABEL_9;
    }

    if (xmlRelaxNGCompareNameClasses(a1[6], a2))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v4 != 9 && v4 != 4)
  {
LABEL_9:
    v6 = *__xmlGenericError();
    v7 = *__xmlGenericErrorContext();
    v6(v7, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 3855);
    return 0;
  }

  if (*a2 == 3)
  {
    return 1;
  }

  v8 = "\x01";
  v9 = a1[3];
  if (a1[2])
  {
    v8 = a1[2];
  }

  *&v28 = v8;
  if (v9 && *v9)
  {
    *(&v31 + 1) = &v24;
    *&v25 = v9;
  }

  else
  {
    *(&v31 + 1) = 0;
  }

  if (!xmlRelaxNGElementMatch(v14, a2, &v27) || (result = a1[10]) != 0 && (result = xmlRelaxNGCompareNameClasses(result, a2), result))
  {
LABEL_21:
    if (*a2 != 9 && *a2 != 4)
    {
      v12 = *__xmlGenericError();
      v13 = *__xmlGenericErrorContext();
      v12(v13, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 3886);
      return 0;
    }

    v11 = a2[2];
    v10 = a2[3];
    if (!v11)
    {
      v11 = "\x01";
    }

    *&v28 = v11;
    *(&v31 + 1) = &v24;
    if (v10)
    {
      if (*v10)
      {
        *&v25 = v10;
      }

      else
      {
        *(&v31 + 1) = 0;
      }
    }

    else
    {
      *&v25 = "\x01";
    }

    if (xmlRelaxNGElementMatch(v14, a1, &v27))
    {
      result = a2[10];
      if (result)
      {
        return xmlRelaxNGCompareNameClasses(result, a1);
      }

      return result;
    }

    return 1;
  }

  return result;
}

uint64_t xmlRelaxNGElementMatch(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[2];
  if (v6 && !xmlStrEqual(*(a3 + 16), v6))
  {
    v9 = a2[2];
    v10 = *(a3 + 16);
    v11 = a1;
    v12 = 13;
    goto LABEL_23;
  }

  v7 = a2[3];
  if (!v7)
  {
    if (!*(a3 + 72))
    {
      goto LABEL_16;
    }

    v9 = a2[2];
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a3 + 72);
  if (!*v7)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = a2[2];
    if (!v9)
    {
      v9 = *(a3 + 16);
    }

LABEL_15:
    v11 = a1;
    v12 = 19;
LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  if (!v8)
  {
    v9 = *(a3 + 16);
    v11 = a1;
    v12 = 15;
    goto LABEL_22;
  }

  if (!xmlStrEqual(*(v8 + 16), v7))
  {
    v9 = *(a3 + 16);
    v10 = a2[3];
    v11 = a1;
    v12 = 17;
LABEL_23:
    xmlRelaxNGAddValidError(v11, v12, v9, v10, 0);
    return 0;
  }

LABEL_16:
  v13 = a2[10];
  if (!v13)
  {
    return 1;
  }

  if (*v13 == 17)
  {
    if (a1)
    {
      v14 = *(a1 + 56);
      *(a1 + 56) = v14 | 1;
    }

    else
    {
      v14 = 0;
    }

    v20 = *(v13 + 80);
    if (!v20)
    {
LABEL_41:
      if (!a1)
      {
        return 0;
      }

      if (*(a1 + 80) >= 1)
      {
        xmlRelaxNGPopErrors(a1, 0);
      }

      goto LABEL_48;
    }

    while (1)
    {
      v21 = xmlRelaxNGElementMatch(a1, v20, a3);
      if (v21 == 1)
      {
        goto LABEL_33;
      }

      if (v21 < 0)
      {
LABEL_44:
        if (a1)
        {
          *(a1 + 56) = v14;
        }

        return 0xFFFFFFFFLL;
      }

      v20 = *(v20 + 64);
      if (!v20)
      {
        goto LABEL_41;
      }
    }
  }

  if (*v13 == 2)
  {
    if (a1)
    {
      v14 = *(a1 + 56);
      *(a1 + 56) = v14 | 1;
    }

    else
    {
      v14 = 0;
    }

    v18 = *(v13 + 48);
    if (v18)
    {
      while (1)
      {
        v19 = xmlRelaxNGElementMatch(a1, v18, a3);
        if (v19 == 1)
        {
          break;
        }

        if (v19 < 0)
        {
          goto LABEL_44;
        }

        v18 = *(v18 + 64);
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      if (!a1)
      {
        return 0;
      }

LABEL_48:
      result = 0;
      *(a1 + 56) = v14;
      return result;
    }

LABEL_33:
    if (a1)
    {
      *(a1 + 56) = v14;
    }

    return 1;
  }

  v16 = *__xmlGenericError();
  v17 = __xmlGenericErrorContext();
  v16(*v17, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9768);
  return 0xFFFFFFFFLL;
}

void xmlRelaxNGDumpValidError(uint64_t a1)
{
  if (*(a1 + 80) >= 1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 88) + 40 * v3;
      if (v4 <= 4)
      {
        if (v3)
        {
          v6 = 0;
          while (1)
          {
            v7 = *(a1 + 88);
            if (*v5 == *(v7 + v6) && *(v5 + 8) == *(v7 + v6 + 8) && xmlStrEqual(*(v5 + 24), *(v7 + v6 + 24)) && xmlStrEqual(*(v5 + 32), *(v7 + v6 + 32)))
            {
              break;
            }

            v6 += 40;
            if (v2 == v6)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
LABEL_11:
          xmlRelaxNGShowValidError(a1, *v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
          ++v4;
        }
      }

      if (*(v5 + 4))
      {
        v8 = *(v5 + 24);
        if (v8)
        {
          free(v8);
        }

        *(v5 + 24) = 0;
        v9 = *(v5 + 32);
        if (v9)
        {
          free(v9);
        }

        *(v5 + 32) = 0;
        *(v5 + 4) = 0;
      }

      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 80));
  }

  *(a1 + 80) = 0;
}

void xmlRelaxNGPopErrors(uint64_t a1, int a2)
{
  v4 = *(a1 + 80);
  if (v4 > a2)
  {
    v5 = a2;
    v6 = 40 * a2;
    do
    {
      v7 = *(a1 + 88);
      v8 = v7 + v6;
      if (*(v7 + v6 + 4))
      {
        v9 = *(v8 + 24);
        if (v9)
        {
          free(v9);
        }

        *(v8 + 24) = 0;
        v10 = v7 + v6;
        v11 = *(v10 + 32);
        if (v11)
        {
          free(v11);
        }

        *(v10 + 32) = 0;
        *(v8 + 4) = 0;
        v4 = *(a1 + 80);
      }

      ++v5;
      v6 += 40;
    }

    while (v5 < v4);
  }

  *(a1 + 80) = a2;
  if (a2 <= 0)
  {
    *(a1 + 72) = 0;
  }
}

void xmlRelaxNGShowValidError(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const xmlChar *a5, xmlChar *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 8) == 0)
  {
    bzero(v22, 0x3E6uLL);
    __str = 0;
    switch(a2)
    {
      case 0:
        goto LABEL_52;
      case 1:
        v12 = "out of memory\n";
        goto LABEL_41;
      case 2:
        snprintf(&__str, 0x3E8uLL, "failed to validate type %s\n");
        goto LABEL_37;
      case 3:
        snprintf(&__str, 0x3E8uLL, "Type %s doesn't allow value '%s'\n");
        goto LABEL_37;
      case 4:
        snprintf(&__str, 0x3E8uLL, "ID %s redefined\n");
        goto LABEL_37;
      case 5:
        snprintf(&__str, 0x3E8uLL, "failed to compare type %s\n");
        goto LABEL_37;
      case 6:
        v12 = "Internal error: no state\n";
        goto LABEL_41;
      case 7:
        v12 = "Internal error: no define\n";
        goto LABEL_41;
      case 8:
        snprintf(&__str, 0x3E8uLL, "Extra data in list: %s\n");
        goto LABEL_37;
      case 10:
        v12 = "Internal: interleave block has no data\n";
        goto LABEL_41;
      case 11:
        v12 = "Invalid sequence in interleave\n";
        goto LABEL_41;
      case 12:
        snprintf(&__str, 0x3E8uLL, "Extra element %s in interleave\n");
        goto LABEL_37;
      case 13:
        snprintf(&__str, 0x3E8uLL, "Expecting element %s, got %s\n");
        goto LABEL_37;
      case 15:
        snprintf(&__str, 0x3E8uLL, "Expecting a namespace for element %s\n");
        goto LABEL_37;
      case 17:
        snprintf(&__str, 0x3E8uLL, "Element %s has wrong namespace: expecting %s\n");
        goto LABEL_37;
      case 19:
        snprintf(&__str, 0x3E8uLL, "Expecting no namespace for element %s\n");
        goto LABEL_37;
      case 21:
        snprintf(&__str, 0x3E8uLL, "Expecting element %s to be empty\n");
        goto LABEL_37;
      case 22:
        snprintf(&__str, 0x3E8uLL, "Expecting an element %s, got nothing\n");
        goto LABEL_37;
      case 23:
        v12 = "Expecting an element got text\n";
        goto LABEL_41;
      case 24:
        snprintf(&__str, 0x3E8uLL, "Element %s failed to validate attributes\n");
        goto LABEL_37;
      case 25:
        snprintf(&__str, 0x3E8uLL, "Element %s failed to validate content\n");
        goto LABEL_37;
      case 26:
        snprintf(&__str, 0x3E8uLL, "Element %s has extra content: %s\n");
        goto LABEL_37;
      case 27:
        snprintf(&__str, 0x3E8uLL, "Invalid attribute %s for element %s\n");
        goto LABEL_37;
      case 28:
        snprintf(&__str, 0x3E8uLL, "Datatype element %s has child elements\n");
        goto LABEL_37;
      case 29:
        snprintf(&__str, 0x3E8uLL, "Value element %s has child elements\n");
        goto LABEL_37;
      case 30:
        snprintf(&__str, 0x3E8uLL, "List element %s has child elements\n");
        goto LABEL_37;
      case 31:
        snprintf(&__str, 0x3E8uLL, "Error validating datatype %s\n");
        goto LABEL_37;
      case 32:
        snprintf(&__str, 0x3E8uLL, "Error validating value %s\n");
        goto LABEL_37;
      case 33:
        v12 = "Error validating list\n";
        goto LABEL_41;
      case 34:
        v12 = "No top grammar defined\n";
        goto LABEL_41;
      case 35:
        v12 = "Extra data in the document\n";
        goto LABEL_41;
      case 36:
        snprintf(&__str, 0x3E8uLL, "Datatype element %s contains no data\n");
        goto LABEL_37;
      case 37:
        snprintf(&__str, 0x3E8uLL, "Internal error: %s\n");
        goto LABEL_37;
      case 38:
        snprintf(&__str, 0x3E8uLL, "Did not expect element %s there\n");
        goto LABEL_37;
      case 39:
        snprintf(&__str, 0x3E8uLL, "Did not expect text in element %s content\n");
LABEL_37:
        if (!__str)
        {
          snprintf(&__str, 0x3E8uLL, "Unknown error code %d\n", a2);
        }

        v22[998] = 0;
        v20 = xmlCharStrdup(&__str);
        v13 = xmlEscapeFormatString(&v20);
        break;
      default:
        v12 = "Unknown error !\n";
LABEL_41:
        v13 = xmlCharStrdup(v12);
        break;
    }

    v14 = v13;
    if (v13)
    {
      if (!*(a1 + 68))
      {
        *(a1 + 68) = a2;
      }

      if (a4)
      {
        v15 = a4;
      }

      else
      {
        v15 = a3;
      }

      v16 = *(a1 + 24);
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 8);
      }

      v18 = *a1;
      ++*(a1 + 32);
      __xmlRaiseError(v16, v17, v18, 0, v15, 0x13u, a2, 2, 0, 0, a5, a6, 0, 0, 0, v14, a5);
      free(v14);
    }
  }

LABEL_52:
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t xmlRelaxNGIsNullable(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(a1 + 98);
  if (v2)
  {
    return 1;
  }

  if ((v2 & 2) != 0)
  {
    return 0;
  }

  v3 = *a1;
  result = 0xFFFFFFFFLL;
  if (v3 > 9)
  {
    if (v3 > 0x14)
    {
      return result;
    }

    if (((1 << v3) & 0x13C00) != 0)
    {
LABEL_13:
      result = xmlRelaxNGIsNullable(*(a1 + 48));
      goto LABEL_14;
    }

    if (((1 << v3) & 0x1C0000) == 0)
    {
      if (v3 != 17)
      {
        return result;
      }

      v7 = *(a1 + 48);
      if (!v7)
      {
        goto LABEL_31;
      }

      while (1)
      {
        result = xmlRelaxNGIsNullable(v7);
        if (result)
        {
          goto LABEL_14;
        }

        v7 = *(v7 + 64);
        if (!v7)
        {
          goto LABEL_31;
        }
      }
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      while (1)
      {
        result = xmlRelaxNGIsNullable(v6);
        if (result != 1)
        {
          break;
        }

        v6 = *(v6 + 64);
        if (!v6)
        {
          return result;
        }
      }

LABEL_14:
      if (result)
      {
        if (result != 1)
        {
          return result;
        }

        v2 = *(a1 + 98);
        goto LABEL_20;
      }

LABEL_31:
      result = 0;
      v5 = *(a1 + 98) | 2;
      goto LABEL_32;
    }

    return 1;
  }

  if (v3 <= 2)
  {
    if ((v3 - 1) < 2)
    {
      goto LABEL_31;
    }

    if (v3 != -1)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if ((v3 - 4) < 6)
  {
    goto LABEL_31;
  }

  if (v3 == 3)
  {
LABEL_20:
    v5 = v2 | 1;
    result = 1;
LABEL_32:
    *(a1 + 98) = v5;
  }

  return result;
}

uint64_t xmlRelaxNGIsCompilable(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  v3 = *(a1 + 98);
  if (*a1 == 4)
  {
    if ((v3 & 0xC0) == 0)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        while (1)
        {
          v7 = xmlRelaxNGIsCompilable(v6);
          if (v7 != 1)
          {
            break;
          }

          v6 = *(v6 + 64);
          if (!v6)
          {
            if ((*(a1 + 98) & 0x80) != 0)
            {
              v8 = 128;
            }

            else
            {
              v8 = 64;
            }

            goto LABEL_28;
          }
        }

        if (v7)
        {
          goto LABEL_4;
        }

        v8 = *(a1 + 98) & 0xFF3F | 0x80;
LABEL_28:
        *(a1 + 98) = v8;
      }
    }

LABEL_4:
    if (!*(a1 + 80))
    {
      return *(a1 + 16) != 0;
    }

    return 0;
  }

  if ((v3 & 0x40) != 0)
  {
    return 1;
  }

  if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (v2 <= 2)
  {
    if ((v2 - 1) < 2)
    {
      goto LABEL_43;
    }

    if (v2 != -1)
    {
      if (v2)
      {
        return result;
      }

LABEL_45:
      *(a1 + 98) = v3 | 0x40;
      return 1;
    }

    result = xmlRelaxNGIsCompilable(*(a1 + 48));
LABEL_40:
    if (result != 1)
    {
      if (result)
      {
        return result;
      }

      v3 = *(a1 + 98);
      goto LABEL_43;
    }

LABEL_44:
    v3 = *(a1 + 98);
    goto LABEL_45;
  }

  if (v2 > 0x14)
  {
    goto LABEL_37;
  }

  if (((1 << v2) & 0x17C400) != 0)
  {
    v9 = *(a1 + 48);
    if (!v9)
    {
      return result;
    }

    while (1)
    {
      result = xmlRelaxNGIsCompilable(v9);
      if (result != 1)
      {
        goto LABEL_40;
      }

      v9 = *(v9 + 64);
      if (!v9)
      {
        goto LABEL_44;
      }
    }
  }

  if (((1 << v2) & 0x803E0) != 0)
  {
LABEL_43:
    result = 0;
    *(a1 + 98) = v3 | 0x80;
    return result;
  }

  if (((1 << v2) & 0x3800) != 0)
  {
    if (*(a1 + 96) == -20)
    {
      return 1;
    }

    *(a1 + 96) = -20;
    v5 = *(a1 + 48);
    if (!v5)
    {
      return result;
    }

    while (1)
    {
      result = xmlRelaxNGIsCompilable(v5);
      if (result != 1)
      {
        goto LABEL_40;
      }

      v5 = *(v5 + 64);
      if (!v5)
      {
        goto LABEL_44;
      }
    }
  }

LABEL_37:
  if (v2 == 3)
  {
    goto LABEL_45;
  }

  return result;
}

uint64_t xmlRelaxNGCompile(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  while (2)
  {
    switch(*v2)
    {
      case -1:
        v2 = *(v2 + 6);
        if (!v2)
        {
          return 0xFFFFFFFFLL;
        }

        continue;
      case 0:
        v13 = *(a1 + 232);
        v14 = *(a1 + 240);
        goto LABEL_52;
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 19:
        fprintf(*MEMORY[0x1E69E9848], "RNG internal error trying to compile %s\n", off_1E82C5DB8[*v2 - 1]);
        return 0;
      case 3:
        v18 = xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), 0);
        *(a1 + 240) = v18;
        xmlRelaxNGCompile(a1, *(v2 + 6));
        xmlAutomataNewTransition(*(a1 + 232), *(a1 + 240), *(a1 + 240), "#text", 0);
        goto LABEL_46;
      case 4:
        v23 = *(a1 + 232);
        if (v23)
        {
          v24 = *(v2 + 2);
          if (v24)
          {
            *(a1 + 240) = xmlAutomataNewTransition2(v23, *(a1 + 240), 0, v24, *(v2 + 3), v2);
          }
        }

        if ((*(v2 + 49) & 0x40) == 0)
        {
          v25 = *(a1 + 232);
LABEL_48:
          result = xmlRelaxNGTryCompile(a1, v2);
          *(a1 + 232) = v25;
          return result;
        }

        v25 = *(a1 + 232);
        if (*(v2 + 48) == -25)
        {
          goto LABEL_48;
        }

        v29 = *(a1 + 240);
        *(v2 + 48) = -25;
        v30 = *(v2 + 6);
        v31 = xmlNewAutomata();
        *(a1 + 232) = v31;
        if (!v31)
        {
          return 0xFFFFFFFFLL;
        }

        xmlAutomataSetFlags(v31, 1);
        InitState = xmlAutomataGetInitState(*(a1 + 232));
        *(a1 + 240) = InitState;
        if (v30)
        {
          do
          {
            xmlRelaxNGCompile(a1, v30);
            v30 = *(v30 + 64);
          }

          while (v30);
          v33 = *(a1 + 240);
        }

        else
        {
          v33 = InitState;
        }

        xmlAutomataSetFinalState(*(a1 + 232), v33);
        v34 = xmlAutomataCompile(*(a1 + 232));
        *(v2 + 13) = v34;
        if (!xmlRegexpIsDeterminist(v34))
        {
          xmlRegFreeRegexp(*(v2 + 13));
          *(v2 + 13) = 0;
        }

        xmlFreeAutomata(*(a1 + 232));
        result = 0;
        *(a1 + 232) = v25;
        *(a1 + 240) = v29;
        return result;
      case 10:
      case 11:
      case 12:
      case 13:
      case 18:
        v5 = *(v2 + 6);
        if (!v5)
        {
          return 0;
        }

        while (1)
        {
          result = xmlRelaxNGCompile(a1, v5);
          if (result)
          {
            break;
          }

          v5 = *(v5 + 64);
          if (!v5)
          {
            return 0;
          }
        }

        return result;
      case 14:
        v15 = *(a1 + 240);
        v16 = *(v2 + 6);
        v17 = v15;
        if (v16)
        {
          do
          {
            xmlRelaxNGCompile(a1, v16);
            v16 = *(v16 + 64);
          }

          while (v16);
          v17 = *(a1 + 240);
        }

        xmlAutomataNewEpsilon(*(a1 + 232), v15, v17);
        return 0;
      case 15:
        v18 = xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), 0);
        *(a1 + 240) = v18;
        v26 = *(v2 + 6);
        v27 = v18;
        if (v26)
        {
          do
          {
            xmlRelaxNGCompile(a1, v26);
            v26 = *(v26 + 64);
          }

          while (v26);
          v27 = *(a1 + 240);
        }

        xmlAutomataNewEpsilon(*(a1 + 232), v27, v18);
LABEL_46:
        v13 = *(a1 + 232);
        v14 = v18;
        goto LABEL_52;
      case 16:
        v6 = *(v2 + 6);
        if (!v6)
        {
          v8 = *(a1 + 240);
LABEL_50:
          v9 = v8;
          goto LABEL_51;
        }

        do
        {
          xmlRelaxNGCompile(a1, v6);
          v6 = *(v6 + 64);
        }

        while (v6);
        v7 = *(v2 + 6);
        v8 = *(a1 + 240);
        if (!v7)
        {
          goto LABEL_50;
        }

        do
        {
          xmlRelaxNGCompile(a1, v7);
          v7 = *(v7 + 64);
        }

        while (v7);
        v9 = *(a1 + 240);
LABEL_51:
        xmlAutomataNewEpsilon(*(a1 + 232), v9, v8);
        v13 = *(a1 + 232);
        v14 = v8;
LABEL_52:
        v28 = xmlAutomataNewEpsilon(v13, v14, 0);
        result = 0;
        *(a1 + 240) = v28;
        return result;
      case 17:
        v10 = *(v2 + 6);
        if (v10)
        {
          v11 = 0;
          v12 = *(a1 + 240);
          do
          {
            *(a1 + 240) = v12;
            result = xmlRelaxNGCompile(a1, v10);
            if (result)
            {
              goto LABEL_55;
            }

            if (v11)
            {
              xmlAutomataNewEpsilon(*(a1 + 232), *(a1 + 240), v11);
            }

            else
            {
              v11 = *(a1 + 240);
            }

            v10 = *(v10 + 64);
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        result = 0;
LABEL_55:
        *(a1 + 240) = v11;
        return result;
      case 20:
        if (xmlRelaxNGIsCompilable(v2) != 1 || *(v2 + 48) == -25)
        {
          return 0;
        }

        v35 = *(a1 + 232);
        *(v2 + 48) = -25;
        v19 = *(v2 + 6);
        v20 = xmlNewAutomata();
        *(a1 + 232) = v20;
        if (!v20)
        {
          return 0xFFFFFFFFLL;
        }

        xmlAutomataSetFlags(v20, 1);
        v21 = xmlAutomataGetInitState(*(a1 + 232));
        *(a1 + 240) = v21;
        if (v19)
        {
          do
          {
            xmlRelaxNGCompile(a1, v19);
            v19 = *(v19 + 64);
          }

          while (v19);
          v22 = *(a1 + 240);
        }

        else
        {
          v22 = v21;
        }

        xmlAutomataSetFinalState(*(a1 + 232), v22);
        if (xmlAutomataIsDeterminist(*(a1 + 232)))
        {
          *(v2 + 13) = xmlAutomataCompile(*(a1 + 232));
        }

        xmlFreeAutomata(*(a1 + 232));
        result = 0;
        *(a1 + 232) = v35;
        return result;
      default:
        return 0;
    }
  }
}

FILE *xmlRelaxNGDumpDefine(FILE *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    switch(*a2)
    {
      case 0xFFFFFFFF:
        for (i = *(a2 + 48); i; i = *(i + 64))
        {
          result = xmlRelaxNGDumpDefine(v3, i);
        }

        return result;
      case 0:
        v9 = "<empty/>\n";
        goto LABEL_45;
      case 1:
        v9 = "<notAllowed/>\n";
        goto LABEL_49;
      case 2:
      case 6:
      case 0x14:
        v4 = *__xmlGenericError();
        v5 = *__xmlGenericErrorContext();
        return (v4)(v5, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 7849);
      case 3:
        v9 = "<text/>\n";
        goto LABEL_63;
      case 4:
        fwrite("<element>\n", 0xAuLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fwrite("<name", 5uLL, 1uLL, v3);
          if (*(a2 + 24))
          {
            fprintf(v3, " ns=%s", *(a2 + 24));
          }

          fprintf(v3, ">%s</name>\n", *(a2 + 16));
        }

        for (j = *(a2 + 72); j; j = *(j + 64))
        {
          xmlRelaxNGDumpDefine(v3, j);
        }

        for (k = *(a2 + 48); k; k = *(k + 64))
        {
          xmlRelaxNGDumpDefine(v3, k);
        }

        v9 = "</element>\n";
        v10 = 11;
        goto LABEL_68;
      case 5:
      case 7:
        v6 = *__xmlGenericError();
        v7 = *__xmlGenericErrorContext();
        return (v6)(v7, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 7845);
      case 8:
        fwrite("<list>\n", 7uLL, 1uLL, result);
        for (m = *(a2 + 48); m; m = *(m + 64))
        {
          xmlRelaxNGDumpDefine(v3, m);
        }

        v9 = "</list>\n";
LABEL_63:
        v10 = 8;
        goto LABEL_68;
      case 9:
        fwrite("<attribute>\n", 0xCuLL, 1uLL, result);
        for (n = *(a2 + 48); n; n = *(n + 64))
        {
          xmlRelaxNGDumpDefine(v3, n);
        }

        v9 = "</attribute>\n";
        goto LABEL_58;
      case 0xA:
        fwrite("<define", 7uLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (ii = *(a2 + 48); ii; ii = *(ii + 64))
        {
          xmlRelaxNGDumpDefine(v3, ii);
        }

        v9 = "</define>\n";
        goto LABEL_67;
      case 0xB:
        fwrite("<ref", 4uLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (jj = *(a2 + 48); jj; jj = *(jj + 64))
        {
          xmlRelaxNGDumpDefine(v3, jj);
        }

        v9 = "</ref>\n";
        v10 = 7;
        goto LABEL_68;
      case 0xC:
        fwrite("<externalRef>", 0xDuLL, 1uLL, result);
        for (kk = *(a2 + 48); kk; kk = *(kk + 64))
        {
          xmlRelaxNGDumpDefine(v3, kk);
        }

        v9 = "</externalRef>\n";
        v10 = 15;
        goto LABEL_68;
      case 0xD:
        fwrite("<parentRef", 0xAuLL, 1uLL, result);
        if (*(a2 + 16))
        {
          fprintf(v3, " name=%s", *(a2 + 16));
        }

        fwrite(">\n", 2uLL, 1uLL, v3);
        for (mm = *(a2 + 48); mm; mm = *(mm + 64))
        {
          xmlRelaxNGDumpDefine(v3, mm);
        }

        v9 = "</parentRef>\n";
        goto LABEL_58;
      case 0xE:
        fwrite("<optional>\n", 0xBuLL, 1uLL, result);
        for (nn = *(a2 + 48); nn; nn = *(nn + 64))
        {
          xmlRelaxNGDumpDefine(v3, nn);
        }

        v9 = "</optional>\n";
        v10 = 12;
        goto LABEL_68;
      case 0xF:
        fwrite("<zeroOrMore>\n", 0xDuLL, 1uLL, result);
        for (i1 = *(a2 + 48); i1; i1 = *(i1 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i1);
        }

        v9 = "</zeroOrMore>\n";
        goto LABEL_49;
      case 0x10:
        fwrite("<oneOrMore>\n", 0xCuLL, 1uLL, result);
        for (i2 = *(a2 + 48); i2; i2 = *(i2 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i2);
        }

        v9 = "</oneOrMore>\n";
LABEL_58:
        v10 = 13;
        goto LABEL_68;
      case 0x11:
        fwrite("<choice>\n", 9uLL, 1uLL, result);
        for (i3 = *(a2 + 48); i3; i3 = *(i3 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i3);
        }

        v9 = "</choice>\n";
LABEL_67:
        v10 = 10;
        goto LABEL_68;
      case 0x12:
        fwrite("<group>\n", 8uLL, 1uLL, result);
        for (i4 = *(a2 + 48); i4; i4 = *(i4 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i4);
        }

        v9 = "</group>\n";
LABEL_45:
        v10 = 9;
        goto LABEL_68;
      case 0x13:
        fwrite("<interleave>\n", 0xDuLL, 1uLL, result);
        for (i5 = *(a2 + 48); i5; i5 = *(i5 + 64))
        {
          xmlRelaxNGDumpDefine(v3, i5);
        }

        v9 = "</interleave>\n";
LABEL_49:
        v10 = 14;
LABEL_68:

        result = fwrite(v9, v10, 1uLL, v3);
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t xmlRelaxNGValidateAttributeList(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = 0;
  v6 = a2;
  do
  {
    if (*v6 == 9)
    {
      if (xmlRelaxNGValidateAttribute(a1, v6))
      {
        v5 = 0xFFFFFFFFLL;
      }

      else
      {
        v5 = v5;
      }
    }

    else
    {
      v4 = 1;
    }

    v6 = *(v6 + 64);
  }

  while (v6);
  if (v4)
  {
    do
    {
      if (*v2 != 9)
      {
        if (!*(a1 + 96) && !*(a1 + 104))
        {
          xmlRelaxNGAddValidError(a1, 6, 0, 0, 0);
          return 0xFFFFFFFFLL;
        }

        v7 = xmlRelaxNGValidateDefinition(a1, v2);
        if (v7 < 0)
        {
          v5 = 0xFFFFFFFFLL;
        }

        else
        {
          v5 = v5;
        }

        if (v7 == -1)
        {
          return v5;
        }
      }

      v2 = *(v2 + 64);
    }

    while (v2);
  }

  return v5;
}

uint64_t xmlRelaxNGValidateElementEnd(uint64_t a1, int a2)
{
  v4 = *(a1 + 96);
  v5 = *(v4 + 8);
  if (v5 && (v6 = xmlRelaxNGSkipIgnored(a1, v5), (*(v4 + 8) = v6) != 0))
  {
    if (a2)
    {
      xmlRelaxNGAddValidError(a1, 26, *(*v4 + 16), *(v6 + 16), 0);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = *(v4 + 16);
    if (v8 < 1)
    {
      return 0;
    }

    else
    {
      v9 = *(v4 + 48);
      v7 = 0xFFFFFFFFLL;
      while (!*v9)
      {
        v7 = (v7 - 1);
        v9 += 8;
        if (!--v8)
        {
          return 0;
        }
      }

      if (a2)
      {
        xmlRelaxNGAddValidError(a1, 27, *(*v9 + 16), *(*v4 + 16), 0);
      }
    }
  }

  return v7;
}

uint64_t xmlRelaxNGLogBestError(uint64_t result)
{
  v1 = *(result + 104);
  if (v1)
  {
    v2 = *v1;
    if (v2 >= 1)
    {
      v3 = 0;
      v4 = *(v1 + 1);
      v5 = -1;
      v6 = 1000000;
      do
      {
        v7 = *(v4 + 8 * v3);
        if (v7)
        {
          if (*(v7 + 8))
          {
            if (v5 == -1 || v6 > 100000)
            {
              v5 = v3;
              v6 = 100000;
            }
          }

          else
          {
            v10 = *(v7 + 24);
            if (v5 == -1 || v6 > v10)
            {
              v5 = v3;
              v6 = v10;
            }
          }
        }

        ++v3;
      }

      while (v2 != v3);
      if (v5 < v2)
      {
        *(result + 96) = *(v4 + 8 * v5);
        return xmlRelaxNGValidateElementEnd(result, 1);
      }
    }
  }

  return result;
}

uint64_t xmlRelaxNGValidateAttribute(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (*(v2 + 24) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(v2 + 16);
  if (*(a2 + 16))
  {
    if (v5 >= 1)
    {
      for (i = 0; i < *(v2 + 16); ++i)
      {
        v7 = *(*(v2 + 48) + 8 * i);
        if (!v7 || !xmlStrEqual(*(a2 + 16), *(v7 + 16)))
        {
          goto LABEL_13;
        }

        v8 = *(a2 + 24);
        if (v8 && *v8)
        {
          v9 = *(v7 + 72);
          if (!v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v9 = *(v7 + 72);
          if (!v9)
          {
            goto LABEL_23;
          }
        }

        if (xmlStrEqual(v8, *(v9 + 16)))
        {
LABEL_23:
          String = xmlNodeListGetString(*(v7 + 64), *(v7 + 24), 1);
          v15 = *(a1 + 96);
          v16 = v15[4];
          v17 = v15[1];
          v15[1] = v7;
          v15[4] = String;
          v15[5] = 0;
          v18 = *(a2 + 48);
          if (v18)
          {
            do
            {
              v12 = xmlRelaxNGValidateValue(a1, v18);
              if (v12)
              {
                break;
              }

              v18 = *(v18 + 64);
            }

            while (v18);
            goto LABEL_30;
          }

LABEL_31:
          v12 = 0;
          v20 = String;
          goto LABEL_32;
        }

LABEL_13:
        v2 = *(a1 + 96);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  i = 0;
  while (1)
  {
    v10 = *(v2 + 48);
    v11 = *(v10 + 8 * i);
    if (v11)
    {
      break;
    }

LABEL_20:
    if (++i >= *(v2 + 16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (xmlRelaxNGAttributeMatch(a2, *(v10 + 8 * i)) != 1)
  {
    v2 = *(a1 + 96);
    goto LABEL_20;
  }

  String = xmlNodeListGetString(*(v11 + 64), *(v11 + 24), 1);
  v15 = *(a1 + 96);
  v16 = v15[4];
  v17 = v15[1];
  v15[1] = v11;
  v15[4] = String;
  v19 = *(a2 + 48);
  if (!v19)
  {
    goto LABEL_31;
  }

  do
  {
    v12 = xmlRelaxNGValidateValue(a1, v19);
    if (v12)
    {
      break;
    }

    v19 = *(v19 + 64);
  }

  while (v19);
LABEL_30:
  v15 = *(a1 + 96);
  v20 = v15[4];
LABEL_32:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = String;
  }

  if (v21)
  {
    free(v21);
    v15 = *(a1 + 96);
  }

  v15[4] = v16;
  v15[1] = v17;
  if (!v12)
  {
    v12 = 0;
    *(v15[6] + 8 * i) = 0;
    --*(*(a1 + 96) + 24);
  }

  return v12;
}

uint64_t xmlRelaxNGAttributeMatch(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4)
  {
    result = xmlStrEqual(v4, *(a2 + 16));
    if (!result)
    {
      return result;
    }
  }

  v6 = a1[3];
  if (v6)
  {
    v7 = *(a2 + 72);
    if (*v6)
    {
      if (!v7)
      {
        return 0;
      }

      result = xmlStrEqual(v6, *(v7 + 16));
      if (!result)
      {
        return result;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  v8 = a1[10];
  if (!v8)
  {
    return 1;
  }

  if (*v8 != 17)
  {
    if (*v8 == 2)
    {
      v9 = *(v8 + 48);
      if (v9)
      {
        while (xmlRelaxNGAttributeMatch(v9, a2) != 1)
        {
          v9 = *(v9 + 64);
          result = 1;
          if (!v9)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      v11 = *__xmlGenericError();
      v12 = __xmlGenericErrorContext();
      v11(*v12, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9117);
    }

    return 1;
  }

  v10 = *(v8 + 80);
  if (!v10)
  {
    return 0;
  }

  do
  {
    result = xmlRelaxNGAttributeMatch(v10, a2);
    if (result == 1)
    {
      break;
    }

    result = 0;
    v10 = *(v10 + 64);
  }

  while (v10);
  return result;
}

uint64_t xmlRelaxNGValidateValue(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  while (2)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 32);
    switch(*a2)
    {
      case 0:
        if (!v5)
        {
          return 0;
        }

        v19 = *v5;
        if (!*v5)
        {
          return 0;
        }

        for (i = v5 + 1; ; ++i)
        {
          if (v19 > 0x20)
          {
            return 0xFFFFFFFFLL;
          }

          if (((1 << v19) & 0x100002600) == 0)
          {
            break;
          }

          v21 = *i;
          v19 = v21;
        }

        if (!v19)
        {
          return 0;
        }

        return 0xFFFFFFFFLL;
      case 2:
        v18 = *(a2 + 48);
        if (!v18)
        {
          return 0;
        }

        while (xmlRelaxNGValidateValue(v3))
        {
          v17 = 0;
          v18 = *(v18 + 64);
          if (!v18)
          {
            return v17;
          }
        }

        return 0xFFFFFFFFLL;
      case 3:
        return 0;
      case 5:
        v17 = xmlRelaxNGValidateDatatype(a1, *(v4 + 32), a2, *(v4 + 8));
        if (!v17)
        {
          xmlRelaxNGNextValue(v3);
        }

        return v17;
      case 7:
        if (xmlStrEqual(*(v4 + 32), *(a2 + 32)))
        {
          goto LABEL_38;
        }

        v7 = *(a2 + 16);
        if (!v7)
        {
          v49 = xmlRelaxNGNormalize(v3, *(a2 + 32));
          v50 = xmlRelaxNGNormalize(v3, v5);
          v51 = v50;
          if (v49 && v50)
          {
            v52 = xmlStrEqual(v49, v50) != 0;
          }

          else
          {
            v52 = 0;
            v53 = 0;
            if (!v49)
            {
              goto LABEL_100;
            }
          }

          free(v49);
          v53 = v52;
LABEL_100:
          if (v51)
          {
            free(v51);
          }

          if (!v53)
          {
            return 0xFFFFFFFFLL;
          }

          goto LABEL_38;
        }

        v45 = *(a2 + 40);
        if (v45)
        {
          v46 = *(v45 + 32);
          if (v46)
          {
            v47 = v46(*(v45 + 8), *(a2 + 16), *(a2 + 32), *(a2 + 8), *(a2 + 72), v5, **(v3 + 96));
            if ((v47 & 0x80000000) == 0)
            {
              if (v47 != 1)
              {
                return 0xFFFFFFFFLL;
              }

LABEL_38:
              xmlRelaxNGNextValue(v3);
              return 0;
            }

            v7 = *(a2 + 16);
          }
        }

        a1 = v3;
        v6 = 5;
LABEL_6:
        xmlRelaxNGAddValidError(a1, v6, v7, 0, 0);
        return 0xFFFFFFFFLL;
      case 8:
        v22 = *(a2 + 48);
        v23 = *(v4 + 40);
        v24 = xmlStrdup(*(v4 + 32));
        if (!v24)
        {
          v24 = xmlStrdup("");
          if (!v24)
          {
            a1 = v3;
            v6 = 6;
LABEL_5:
            v7 = 0;
            goto LABEL_6;
          }
        }

        v25 = v24;
        v26 = v24;
        break;
      case 0xA:
      case 0x12:
        v8 = *(a2 + 48);
        if (!v8)
        {
          return 0;
        }

        while (!xmlRelaxNGValidateValue(v3))
        {
          v8 = *(v8 + 64);
          if (!v8)
          {
            return 0;
          }
        }

        return 0xFFFFFFFFLL;
      case 0xB:
      case 0xD:
        a2 = *(a2 + 48);
        if (a2)
        {
          continue;
        }

        v6 = 7;
        goto LABEL_5;
      case 0xE:
        if (!v5 || !*v5)
        {
          return 0;
        }

        v32 = *(a1 + 56);
        *(a1 + 56) = v32 | 1;
        v33 = *(a2 + 48);
        v34 = xmlRelaxNGValidateValue(a1);
        *(v3 + 56) = v32;
        if (v34)
        {
          *(*(v3 + 96) + 32) = v5;
        }

        goto LABEL_78;
      case 0xF:
        goto LABEL_15;
      case 0x10:
        v9 = *(a2 + 48);
        if (!v9)
        {
          goto LABEL_15;
        }

        do
        {
          v10 = xmlRelaxNGValidateValue(v3);
          if (v10)
          {
            return v10;
          }

          v9 = *(v9 + 64);
        }

        while (v9);
        v4 = *(v3 + 96);
        v5 = *(v4 + 32);
LABEL_15:
        if (!v5 || !*v5)
        {
          return 0;
        }

        v11 = 0;
        v12 = *(v3 + 56);
        *(v3 + 56) = v12 | 1;
        do
        {
          if (v11 == v5)
          {
            break;
          }

          v11 = v5;
          if (v5 == *(v4 + 40))
          {
            break;
          }

          v13 = *(a2 + 48);
          if (v13)
          {
            while (!xmlRelaxNGValidateValue(v3))
            {
              v13 = *(v13 + 64);
              if (!v13)
              {
                v4 = *(v3 + 96);
                goto LABEL_24;
              }
            }

            *(*(v3 + 96) + 32) = v11;
            break;
          }

LABEL_24:
          v5 = *(v4 + 32);
        }

        while (v5);
        *(v3 + 56) = v12;
        goto LABEL_78;
      case 0x11:
        v14 = *(a2 + 48);
        v15 = *(a1 + 56);
        *(a1 + 56) = v15 | 1;
        if (!v14)
        {
          goto LABEL_75;
        }

        while (1)
        {
          v16 = xmlRelaxNGValidateValue(v3);
          if (!v16)
          {
            break;
          }

          *(*(v3 + 96) + 32) = v5;
          v14 = *(v14 + 64);
          if (!v14)
          {
            v17 = v16;
            *(v3 + 56) = v15;
            if ((v15 & 1) == 0)
            {
              xmlRelaxNGDumpValidError(v3);
            }

            return v17;
          }
        }

LABEL_75:
        *(v3 + 56) = v15;
LABEL_78:
        if (*(v3 + 80) >= 1)
        {
          xmlRelaxNGPopErrors(v3, 0);
        }

        return 0;
      default:
        v35 = *__xmlGenericError();
        v36 = __xmlGenericErrorContext();
        v35(*v36, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 9029);
        return 0xFFFFFFFFLL;
    }

    break;
  }

  while (1)
  {
    v27 = *v26;
    if (v27 > 0x20)
    {
      goto LABEL_57;
    }

    if (((1 << v27) & 0x100002600) != 0)
    {
      do
      {
        *v26++ = 0;
        v28 = *v26;
        v29 = v28 > 0x20;
        v30 = (1 << v28) & 0x100002600;
        v31 = v29 || v30 == 0;
      }

      while (!v31);
    }

    else
    {
      if (!*v26)
      {
        v37 = *(v3 + 96);
        *(v37 + 40) = v26;
        v38 = v24;
        do
        {
          v31 = v38 == v26;
          v40 = *v38++;
          v39 = v40;
        }

        while (!v31 && !v39);
        v41 = v38 - 1;
        *(v37 + 32) = v38 - 1;
        if (v22)
        {
          do
          {
            v42 = *(v3 + 96);
            if (*(v42 + 32) == *(v42 + 40))
            {
              *(v42 + 32) = 0;
            }

            v43 = xmlRelaxNGValidateValue(v3);
            if (v43)
            {
              v17 = v43;
              goto LABEL_93;
            }

            v22 = *(v22 + 64);
          }

          while (v22);
          v37 = *(v3 + 96);
          v41 = *(v37 + 32);
          if (v41)
          {
            goto LABEL_73;
          }

LABEL_91:
          v17 = 0;
        }

        else
        {
LABEL_73:
          if (v41 == *(v37 + 40))
          {
            goto LABEL_91;
          }

          xmlRelaxNGAddValidError(v3, 8, v41, 0, 0);
          v17 = 0xFFFFFFFFLL;
        }

LABEL_93:
        free(v25);
        v48 = *(v3 + 96);
        *(v48 + 32) = v5;
        *(v48 + 40) = v23;
        return v17;
      }

LABEL_57:
      ++v26;
    }
  }
}

uint64_t xmlRelaxNGNextValue(uint64_t result)
{
  v1 = *(result + 96);
  v4 = *(v1 + 32);
  v2 = (v1 + 32);
  v3 = v4;
  if (v4 && (v5 = *(*(result + 96) + 40)) != 0)
  {
    v6 = (v3 - 1);
      ;
    }

    while (1)
    {
      if (v6 == v5)
      {
        *v2 = 0;
        return result;
      }

      if (*v6)
      {
        break;
      }

      ++v6;
    }

    *v2 = v6;
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
  }

  return result;
}

uint64_t xmlRelaxNGValidateDatatype(uint64_t a1, xmlChar *a2, uint64_t a3, uint64_t a4)
{
  v24 = 0;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a3 + 40);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v5[3];
  if (!v7)
  {
    goto LABEL_12;
  }

  v10 = *(a3 + 72);
  if (v10 && *v10 == 6)
  {
    v11 = v5[1];
    v12 = *(a3 + 16);
    v13 = &v24;
    v14 = a2;
  }

  else
  {
    v11 = v5[1];
    v12 = *(a3 + 16);
    v14 = a2;
    v13 = 0;
  }

  v15 = v7(v11, v12, v14, v13, a4);
  if (v15 < 0)
  {
LABEL_12:
    xmlRelaxNGAddValidError(a1, 2, *(a3 + 16), 0, 0);
    if (v24)
    {
      v17 = v5[6];
      if (v17)
      {
        v17(v5[1]);
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v15 == 1)
  {
    v19 = *(a3 + 72);
    if (v19)
    {
      while (*v19 == 6)
      {
        v20 = v5[5];
        if (v20)
        {
          if (v20(v5[1], *(a3 + 16), *(v19 + 16), *(v19 + 32), a2, v24))
          {
            v16 = 0xFFFFFFFFLL;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
LABEL_27:
            if (v16)
            {
              goto LABEL_32;
            }

            break;
          }
        }

        else
        {
          v16 = 0;
        }

        v19 = *(v19 + 64);
        if (!v19)
        {
          goto LABEL_27;
        }
      }
    }

    if (*(a3 + 48))
    {
      v21 = *(a1 + 96);
      v23 = *(v21 + 32);
      *(v21 + 32) = a2;
      *(v21 + 40) = 0;
      v16 = xmlRelaxNGValidateValue(a1);
      *(*(a1 + 96) + 32) = v23;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 == 2)
  {
    xmlRelaxNGAddValidError(a1, 4, a2, 0, 1);
    v16 = 2;
  }

  else
  {
    xmlRelaxNGAddValidError(a1, 3, *(a3 + 16), a2, 1);
    v16 = 0xFFFFFFFFLL;
  }

LABEL_32:
  if (v24)
  {
    v22 = v5[6];
    if (v22)
    {
      v22(v5[1]);
    }
  }

  return v16;
}

uint64_t xmlRelaxNGSkipIgnored(uint64_t a1, uint64_t a2)
{
  for (; a2; a2 = *(a2 + 48))
  {
    v2 = *(a2 + 8);
    if (v2 > 0x14)
    {
      break;
    }

    v3 = 1 << v2;
    if ((v3 & 0x180180) == 0)
    {
      if ((v3 & 0x18) == 0)
      {
        return a2;
      }

      if ((*(a1 + 56) & 4) == 0)
      {
        v4 = *(a2 + 80);
        if (v4)
        {
          while (1)
          {
            v5 = *v4;
            if (v5 > 0x20)
            {
              return a2;
            }

            if (((1 << v5) & 0x100002600) == 0)
            {
              if (!*v4)
              {
                break;
              }

              return a2;
            }

            ++v4;
          }
        }
      }
    }
  }

  return a2;
}

void *xmlRelaxNGNewStates(uint64_t a1, int a2)
{
  v3 = *(a1 + 128);
  if (!v3 || (v4 = *(a1 + 120), v5 = __OFSUB__(v4, 1), v6 = v4 - 1, (v6 < 0) ^ v5))
  {
    if (a2 <= 16)
    {
      v8 = 16;
    }

    else
    {
      v8 = a2;
    }

    v9 = malloc_type_malloc(8 * (v8 - 1) + 16, 0x108004057E67DB5uLL);
    v7 = v9;
    if (v9)
    {
      *v9 = 0;
      v9[1] = v8;
      v10 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
      v7[1] = v10;
      if (!v10)
      {
        xmlRngVErrMemory(a1, "allocating states\n");
        free(v7);
        return 0;
      }
    }

    else
    {
      xmlRngVErrMemory(a1, "allocating states\n");
    }
  }

  else
  {
    *(a1 + 120) = v6;
    v7 = *(v3 + 8 * v6);
    *v7 = 0;
  }

  return v7;
}

uint64_t xmlRelaxNGValidateState(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v5 = (a1 + 96);
    v4 = *(a1 + 96);
    if (v4)
    {
      v6 = *(v4 + 1);
    }

    else
    {
      v6 = 0;
    }

    v7 = 0;
    ++*(a1 + 60);
    switch(*a2)
    {
      case 0xFFFFFFFF:
      case 0xB:
      case 0xC:
      case 0xD:
      case 0x14:
        v8 = *(a2 + 48);
        goto LABEL_8;
      case 1:
        goto LABEL_253;
      case 2:
      case 6:
        v10 = *__xmlGenericError();
        v11 = __xmlGenericErrorContext();
        v10(*v11, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10628);
        goto LABEL_253;
      case 3:
        for (; v6; v6 = *(v6 + 48))
        {
          v30 = *(v6 + 8);
          v31 = v30 > 8;
          v32 = (1 << v30) & 0x198;
          if (v31 || v32 == 0)
          {
            break;
          }
        }

        v7 = 0;
        *(v4 + 1) = v6;
        goto LABEL_254;
      case 4:
        v7 = *(a1 + 80);
        v20 = xmlRelaxNGSkipIgnored(a1, v6);
        if (v20)
        {
          v21 = v20;
          if (*(v20 + 8) == 1)
          {
            if (*(v20 + 104) != a2)
            {
              if (xmlRelaxNGElementMatch(v2, a2, v20) > 0)
              {
                v22 = *(v2 + 80);
                if (v22)
                {
                  if (v22 > v7)
                  {
                    xmlRelaxNGPopErrors(v2, v7);
                  }

                  while (1)
                  {
                    v24 = *(v2 + 72);
                    if (!v24)
                    {
                      break;
                    }

                    v23 = *v24;
                    if (*v24 == 13)
                    {
                      if (xmlStrEqual(v24[4], *(v21 + 16)))
                      {
                        goto LABEL_42;
                      }

                      v24 = *(v2 + 72);
                      v23 = *v24;
                    }

                    if (v23 == 19)
                    {
                      if (xmlStrEqual(v24[3], *(v21 + 16)))
                      {
                        goto LABEL_42;
                      }

                      v23 = **(v2 + 72);
                    }

                    if ((v23 & 0xFFFFFFFE) != 0x16)
                    {
                      break;
                    }

LABEL_42:
                    xmlRelaxNGValidErrorPop(v2);
                  }
                }

                v25 = *(v2 + 56);
                if ((v25 & 4) != 0)
                {
                  *(v2 + 56) = v25 - 4;
                }

                v26 = *(v2 + 80);
                v27 = xmlRelaxNGNewValidState(v2, v21);
                if (v27)
                {
                  v28 = *v5;
                  *v5 = v27;
                  v29 = *(a2 + 72);
                  if (v29 && xmlRelaxNGValidateAttributeList(v2, v29))
                  {
                    xmlRelaxNGAddValidError(v2, 24, *(v21 + 16), 0, 0);
                    v7 = 0xFFFFFFFFLL;
                  }

                  else
                  {
                    v7 = 0;
                  }

                  if (*(a2 + 104))
                  {
                    v210 = v25;
                    v171 = v28;
                    v172 = v26;
                    v207 = *(v2 + 96);
                    v173 = xmlRelaxNGNewValidState(v2, v21);
                    *(v2 + 96) = v173;
                    *(v2 + 104) = 0;
                    v174 = xmlRelaxNGValidateCompiledContent(v2, *(a2 + 104), v173[1]);
                    v175 = *(*(v2 + 96) + 8);
                    *(v2 + 96) = v207;
                    xmlRelaxNGFreeValidState(v2, v173);
                    if (v174)
                    {
                      v7 = 0xFFFFFFFFLL;
                    }

                    else
                    {
                      v7 = v7;
                    }

                    v176 = *(v2 + 104);
                    if (v176)
                    {
                      v26 = v172;
                      v28 = v171;
                      v25 = v210;
                      if (*v176 < 1)
                      {
LABEL_329:
                        *(v2 + 56) |= 1u;
                        xmlRelaxNGLogBestError(v2);
                        v179 = 1;
                      }

                      else
                      {
                        v177 = 0;
                        while (1)
                        {
                          v178 = *(*(v176 + 1) + 8 * v177);
                          *(v2 + 96) = v178;
                          *(v178 + 8) = v175;
                          if (!xmlRelaxNGValidateElementEnd(v2, 0))
                          {
                            break;
                          }

                          ++v177;
                          v176 = *(v2 + 104);
                          if (v177 >= *v176)
                          {
                            goto LABEL_329;
                          }
                        }

                        v179 = 0;
                      }

                      v188 = *(v2 + 104);
                      if (*v188 >= 1)
                      {
                        v189 = 0;
                        do
                        {
                          xmlRelaxNGFreeValidState(v2, *(*(v188 + 1) + 8 * v189++));
                          v188 = *(v2 + 104);
                        }

                        while (v189 < *v188);
                      }

                      goto LABEL_386;
                    }

                    v187 = *v5;
                    if (*v5)
                    {
                      *(v187 + 1) = v175;
                    }

                    v26 = v172;
                    if (v7)
                    {
                      v7 = 0xFFFFFFFFLL;
                      v28 = v171;
                      v25 = v210;
LABEL_381:
                      xmlRelaxNGFreeValidState(v2, v187);
                      goto LABEL_391;
                    }

                    v28 = v171;
                    v25 = v210;
                  }

                  else
                  {
                    v181 = *(a2 + 48);
                    if (v181 && xmlRelaxNGValidateDefinitionList(v2, v181))
                    {
                      if (*v5)
                      {
                        xmlRelaxNGAddValidError(v2, 25, *(v21 + 16), 0, 0);
                      }

                      else
                      {
                        *(v2 + 96) = v28;
                        xmlRelaxNGAddValidError(v2, 25, *(v21 + 16), 0, 0);
                        *(v2 + 96) = 0;
                      }

                      v7 = 0xFFFFFFFFLL;
                    }

                    v191 = *(v2 + 104);
                    if (v191)
                    {
                      if (*v191 < 1)
                      {
LABEL_377:
                        *(v2 + 56) |= 1u;
                        xmlRelaxNGLogBestError(v2);
                        v179 = 1;
                      }

                      else
                      {
                        v192 = 0;
                        while (1)
                        {
                          *(v2 + 96) = *(*(v191 + 1) + 8 * v192);
                          if (!xmlRelaxNGValidateElementEnd(v2, 0))
                          {
                            break;
                          }

                          ++v192;
                          v191 = *(v2 + 104);
                          if (v192 >= *v191)
                          {
                            goto LABEL_377;
                          }
                        }

                        v179 = 0;
                      }

                      v188 = *(v2 + 104);
                      if (*v188 >= 1)
                      {
                        v193 = 0;
                        do
                        {
                          xmlRelaxNGFreeValidState(v2, *(*(v188 + 1) + 8 * v193));
                          *(*(*(v2 + 104) + 8) + 8 * v193++) = 0;
                          v188 = *(v2 + 104);
                        }

                        while (v193 < *v188);
                      }

LABEL_386:
                      xmlRelaxNGFreeStates(v2, v188);
                      *(v2 + 104) = 0;
                      if (v7)
                      {
                        v194 = 0;
                      }

                      else
                      {
                        v194 = v179;
                      }

                      if (v194)
                      {
                        v195 = 0;
                        v7 = 0xFFFFFFFFLL;
LABEL_394:
                        *(v2 + 56) = v25;
                        *(v2 + 96) = v28;
                        if (v28)
                        {
                          *(v28 + 1) = xmlRelaxNGSkipIgnored(v2, *(v21 + 48));
                        }

                        if ((v195 & 1) == 0)
                        {
                          if (v25)
                          {
                            goto LABEL_254;
                          }

                          xmlRelaxNGDumpValidError(v2);
                          goto LABEL_235;
                        }

                        if (*(v2 + 80) <= v26)
                        {
LABEL_235:
                          v7 = 0;
LABEL_254:
                          --*(v2 + 60);
                          return v7;
                        }

                        v126 = v2;
                        v127 = v26;
LABEL_234:
                        xmlRelaxNGPopErrors(v126, v127);
                        goto LABEL_235;
                      }

LABEL_391:
                      if (v7)
                      {
                        v195 = 0;
                      }

                      else
                      {
                        *(v21 + 104) = a2;
                        v195 = 1;
                      }

                      goto LABEL_394;
                    }

                    v187 = *v5;
                    if (v7)
                    {
                      v7 = 0xFFFFFFFFLL;
                      goto LABEL_381;
                    }
                  }

                  v7 = xmlRelaxNGValidateElementEnd(v2, 1);
                  goto LABEL_381;
                }
              }

              goto LABEL_210;
            }

            *(v4 + 1) = xmlRelaxNGSkipIgnored(v2, *(v20 + 48));
            if (!v7)
            {
              goto LABEL_254;
            }

            v135 = *(v2 + 72);
            if (!v135)
            {
              goto LABEL_235;
            }

            while (1)
            {
              v136 = *v135;
              if (*v135 == 13)
              {
                if (xmlStrEqual(v135[4], *(v21 + 16)))
                {
                  goto LABEL_249;
                }

                v135 = *(v2 + 72);
                v136 = *v135;
              }

              if (v136 != 19)
              {
                goto LABEL_248;
              }

              if (!xmlStrEqual(v135[3], *(v21 + 16)))
              {
                v136 = **(v2 + 72);
LABEL_248:
                if ((v136 & 0xFFFFFFFE) != 0x16)
                {
                  goto LABEL_235;
                }
              }

LABEL_249:
              xmlRelaxNGValidErrorPop(v2);
              v7 = 0;
              v135 = *(v2 + 72);
              if (!v135)
              {
                goto LABEL_254;
              }
            }
          }

          v100 = v2;
          v101 = 23;
          v99 = 0;
        }

        else
        {
          v99 = *(a2 + 16);
          v100 = v2;
          v101 = 22;
        }

        xmlRelaxNGAddValidError(v100, v101, v99, 0, 0);
LABEL_210:
        if ((*(v2 + 56) & 1) == 0)
        {
          xmlRelaxNGDumpValidError(v2);
        }

LABEL_253:
        v7 = 0xFFFFFFFFLL;
        goto LABEL_254;
      case 5:
        if (!v6)
        {
          goto LABEL_64;
        }

        v34 = 0;
        v35 = v6;
        do
        {
          v36 = *(v35 + 8);
          if ((v36 - 3) >= 2)
          {
            if (v36 == 1)
            {
              v129 = *(*(v6 + 40) + 16);
              v130 = v2;
              v131 = 28;
              goto LABEL_228;
            }
          }

          else
          {
            v34 = xmlStrcat(v34, *(v35 + 80));
          }

          v35 = *(v35 + 48);
        }

        while (v35);
        if (!v34)
        {
LABEL_64:
          v34 = xmlStrdup("");
          if (!v34)
          {
            goto LABEL_156;
          }
        }

        v37 = xmlRelaxNGValidateDatatype(v2, v34, a2, *(*(v2 + 96) + 8));
        v7 = v37;
        if (!v37)
        {
          v57 = *v5;
          goto LABEL_219;
        }

        if (v37 != -1)
        {
          goto LABEL_220;
        }

        v38 = *(a2 + 16);
        v39 = v2;
        v40 = 31;
        goto LABEL_217;
      case 7:
        if (!v6)
        {
          goto LABEL_92;
        }

        v34 = 0;
        v52 = v6;
        do
        {
          v53 = *(v52 + 8);
          if ((v53 - 3) >= 2)
          {
            if (v53 == 1)
            {
              v129 = *(*(v6 + 40) + 16);
              v130 = v2;
              v131 = 29;
              goto LABEL_228;
            }
          }

          else
          {
            v34 = xmlStrcat(v34, *(v52 + 80));
          }

          v52 = *(v52 + 48);
        }

        while (v52);
        if (!v34)
        {
LABEL_92:
          v34 = xmlStrdup("");
          if (!v34)
          {
            goto LABEL_156;
          }
        }

        v54 = *(v2 + 96);
        v55 = *(v54 + 32);
        *(v54 + 32) = v34;
        v56 = xmlRelaxNGValidateValue(v2, a2);
        v7 = v56;
        v57 = *(v2 + 96);
        *(v57 + 4) = v55;
        if (!v56)
        {
LABEL_219:
          *(v57 + 1) = 0;
          goto LABEL_220;
        }

        if (v56 != -1)
        {
          goto LABEL_220;
        }

        v38 = *(a2 + 16);
        v39 = v2;
        v40 = 32;
        goto LABEL_217;
      case 8:
        if (!v6)
        {
          goto LABEL_103;
        }

        v34 = 0;
        v58 = v6;
        do
        {
          v59 = *(v58 + 8);
          if ((v59 - 3) >= 2)
          {
            if (v59 == 1)
            {
              v129 = *(*(v6 + 40) + 16);
              v130 = v2;
              v131 = 30;
LABEL_228:
              xmlRelaxNGAddValidError(v130, v131, v129, 0, 0);
              if (v34)
              {
                free(v34);
              }

              goto LABEL_253;
            }
          }

          else
          {
            v34 = xmlStrcat(v34, *(v58 + 80));
          }

          v58 = *(v58 + 48);
        }

        while (v58);
        if (!v34)
        {
LABEL_103:
          v34 = xmlStrdup("");
          if (!v34)
          {
LABEL_156:
            xmlRngVErrMemory(v2, "validating\n");
            goto LABEL_253;
          }
        }

        v60 = xmlStrlen(v34);
        v61 = *(v2 + 96);
        v209 = *(v61 + 32);
        *(v61 + 32) = v34;
        *(v61 + 40) = &v34[v60];
        v62 = xmlRelaxNGValidateValue(v2, a2);
        v7 = v62;
        v63 = *(v2 + 96);
        *(v63 + 32) = v209;
        if (v62 == -1)
        {
          v39 = v2;
          v40 = 33;
          v38 = 0;
LABEL_217:
          xmlRelaxNGAddValidError(v39, v40, v38, 0, 0);
        }

        else if (!v62 && v6)
        {
          *(v63 + 8) = *(v6 + 48);
        }

LABEL_220:
        v128 = v34;
LABEL_221:
        free(v128);
        goto LABEL_254;
      case 9:
        v9 = xmlRelaxNGValidateAttribute(a1, a2);
        goto LABEL_73;
      case 0xA:
      case 0x12:
        v9 = xmlRelaxNGValidateDefinitionList(a1, *(a2 + 48));
        goto LABEL_73;
      case 0xE:
        v41 = *(a1 + 80);
        v42 = *(a1 + 56);
        *(a1 + 56) = v42 | 1;
        v43 = xmlRelaxNGCopyValidState(a1, v4);
        if (xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48)))
        {
          if (*v5)
          {
            xmlRelaxNGFreeValidState(v2, *v5);
          }

          *(v2 + 96) = v43;
        }

        else
        {
          v102 = *(v2 + 104);
          if (v102)
          {
            xmlRelaxNGAddStates(v2, v102, v43);
          }

          else
          {
            v132 = xmlRelaxNGNewStates(v2, 1);
            *(v2 + 104) = v132;
            if (!v132)
            {
              xmlRelaxNGFreeValidState(v2, v43);
              *(v2 + 56) = v42;
              if (*(v2 + 80) > v41)
              {
                xmlRelaxNGPopErrors(v2, v41);
              }

              goto LABEL_253;
            }

            xmlRelaxNGAddStates(v2, v132, v43);
            xmlRelaxNGAddStates(v2, *(v2 + 104), *(v2 + 96));
            *(v2 + 96) = 0;
          }
        }

        *(v2 + 56) = v42;
        if (*(v2 + 80) <= v41)
        {
          goto LABEL_235;
        }

        v126 = v2;
        v127 = v41;
        goto LABEL_234;
      case 0xF:
        goto LABEL_111;
      case 0x10:
        v64 = *(a1 + 80);
        if (xmlRelaxNGValidateDefinitionList(a1, *(a2 + 48)))
        {
          goto LABEL_253;
        }

        if (*(v2 + 80) > v64)
        {
          xmlRelaxNGPopErrors(v2, v64);
        }

LABEL_111:
        v65 = xmlRelaxNGNewStates(v2, 1);
        if (!v65)
        {
          goto LABEL_253;
        }

        v66 = v65;
        if (*v5)
        {
          v67 = xmlRelaxNGCopyValidState(v2, *v5);
          xmlRelaxNGAddStates(v2, v66, v67);
        }

        else
        {
          v105 = *(v2 + 104);
          if (*v105 >= 1)
          {
            v106 = 0;
            do
            {
              v107 = xmlRelaxNGCopyValidState(v2, *(*(v105 + 1) + 8 * v106));
              xmlRelaxNGAddStates(v2, v66, v107);
              ++v106;
              v105 = *(v2 + 104);
            }

            while (v106 < *v105);
          }
        }

        v108 = 0;
        v109 = *(v2 + 56);
        *(v2 + 56) = v109 | 1;
        while (2)
        {
          v110 = *(v2 + 104);
          if (v110)
          {
            if (*v110 < 1)
            {
              goto LABEL_259;
            }

            v111 = 0;
            v112 = 0;
            v113 = *v66;
            do
            {
              *(v2 + 96) = *(*(v110 + 1) + 8 * v111);
              *(v2 + 104) = 0;
              v114 = xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48));
              v115 = *(v2 + 96);
              if (v114)
              {
                if (v115)
                {
                  xmlRelaxNGFreeValidState(v2, *(v2 + 96));
                  *(v2 + 96) = 0;
                }
              }

              else if (v115)
              {
                v116 = xmlRelaxNGAddStates(v2, v66, v115);
                *(v2 + 96) = 0;
                if (v116 == 1)
                {
                  v112 = 1;
                }
              }

              else
              {
                v117 = *(v2 + 104);
                if (v117)
                {
                  if (*v117 >= 1)
                  {
                    v118 = 0;
                    do
                    {
                      if (xmlRelaxNGAddStates(v2, v66, *(*(v117 + 1) + 8 * v118)) == 1)
                      {
                        v112 = 1;
                      }

                      ++v118;
                      v117 = *(v2 + 104);
                    }

                    while (v118 < *v117);
                  }

                  xmlRelaxNGFreeStates(v2, v117);
                  *(v2 + 104) = 0;
                }
              }

              ++v111;
            }

            while (v111 < *v110);
            v108 = v110;
            if (!v112)
            {
LABEL_259:
              xmlRelaxNGFreeStates(v2, v110);
              goto LABEL_260;
            }

LABEL_200:
            v123 = *v66 - v113;
            if (v123 == 1)
            {
              *(v2 + 96) = xmlRelaxNGCopyValidState(v2, *(*(v66 + 1) + 8 * v113));
              continue;
            }

            if (v108 || (xmlRelaxNGNewStates(v2, v123), (v108 = *(v2 + 104)) != 0))
            {
              *v108 = 0;
              if (v113 < *v66)
              {
                v124 = v113;
                do
                {
                  v125 = xmlRelaxNGCopyValidState(v2, *(*(v66 + 1) + 8 * v124));
                  xmlRelaxNGAddStates(v2, v108, v125);
                  ++v124;
                }

                while (v124 < *v66);
              }

              *(v2 + 104) = v108;
              continue;
            }

LABEL_260:
            v7 = 0;
            *(v2 + 104) = v66;
            *(v2 + 56) = v109;
            goto LABEL_254;
          }

          break;
        }

        if (xmlRelaxNGValidateDefinitionList(v2, *(a2 + 48)))
        {
          xmlRelaxNGFreeValidState(v2, *(v2 + 96));
          *(v2 + 96) = 0;
        }

        else
        {
          v113 = *v66;
          if (*v5)
          {
            v119 = xmlRelaxNGAddStates(v2, v66, *v5);
            *(v2 + 96) = 0;
            if (v119 == 1)
            {
              goto LABEL_200;
            }
          }

          else
          {
            v120 = *(v2 + 104);
            if (v120)
            {
              if (*v120 < 1)
              {
                v122 = 0;
              }

              else
              {
                v121 = 0;
                v122 = 0;
                do
                {
                  if (xmlRelaxNGAddStates(v2, v66, *(*(v120 + 1) + 8 * v121)) == 1)
                  {
                    v122 = 1;
                  }

                  ++v121;
                  v120 = *(v2 + 104);
                }

                while (v121 < *v120);
              }

              if (v108)
              {
                xmlRelaxNGFreeStates(v2, v120);
              }

              else
              {
                v108 = v120;
              }

              *(v2 + 104) = 0;
              v110 = v108;
              if (!v122)
              {
                goto LABEL_259;
              }

              goto LABEL_200;
            }
          }
        }

        v110 = v108;
        if (!v108)
        {
          goto LABEL_260;
        }

        goto LABEL_259;
      case 0x11:
        v12 = xmlRelaxNGSkipIgnored(a1, v6);
        v13 = *(v2 + 80);
        if ((*(a2 + 98) & 0x10) != 0)
        {
          v68 = *(a2 + 40);
          if (v68)
          {
            v69 = v12;
            if (v12)
            {
              v70 = *(v12 + 8);
              if ((v70 - 3) >= 2)
              {
                if (v70 != 1)
                {
LABEL_251:
                  v104 = *(v69 + 16);
                  a1 = v2;
                  v103 = 38;
                  goto LABEL_252;
                }

                v133 = *(v12 + 72);
                v134 = *(v12 + 16);
                if (v133)
                {
                  v72 = xmlHashLookup2(*(a2 + 40), v134, *(v133 + 16));
                  if (v72)
                  {
LABEL_239:
                    v8 = v72;
                    goto LABEL_8;
                  }

                  v186 = *(*(v69 + 72) + 16);
                  v134 = "#any";
                  v185 = v68;
                }

                else
                {
                  v185 = *(a2 + 40);
                  v186 = 0;
                }

                v8 = xmlHashLookup2(v185, v134, v186);
                if (v8)
                {
LABEL_8:
                  v9 = xmlRelaxNGValidateDefinition(v2, v8);
LABEL_73:
                  v7 = v9;
                  goto LABEL_254;
                }

                v71 = "#any";
              }

              else
              {
                v71 = "#text";
              }

              v72 = xmlHashLookup2(v68, v71, 0);
              if (!v72)
              {
                goto LABEL_251;
              }

              goto LABEL_239;
            }
          }
        }

        v14 = *(a2 + 48);
        v15 = *(v2 + 56);
        *(v2 + 56) = v15 | 1;
        v16 = (v2 + 104);
        if (v14)
        {
          v17 = 0;
          do
          {
            v4 = xmlRelaxNGCopyValidState(v2, v4);
            v7 = xmlRelaxNGValidateDefinition(v2, v14);
            if (v7)
            {
              xmlRelaxNGFreeValidState(v2, *(v2 + 96));
            }

            else
            {
              if (!v17)
              {
                v17 = xmlRelaxNGNewStates(v2, 1);
              }

              if (*v5)
              {
                xmlRelaxNGAddStates(v2, v17, *v5);
              }

              else
              {
                v18 = *v16;
                if (*v16)
                {
                  if (*v18 >= 1)
                  {
                    v19 = 0;
                    do
                    {
                      xmlRelaxNGAddStates(v2, v17, *(*(v18 + 1) + 8 * v19++));
                      v18 = *(v2 + 104);
                    }

                    while (v19 < *v18);
                  }

                  xmlRelaxNGFreeStates(v2, v18);
                  *(v2 + 104) = 0;
                }
              }
            }

            *v5 = v4;
            v14 = *(v14 + 64);
          }

          while (v14);
          if (!v17)
          {
            *(v2 + 104) = 0;
            *(v2 + 56) = v15;
            if (v7)
            {
              if ((v15 & 1) == 0)
              {
                xmlRelaxNGDumpValidError(v2);
              }

              goto LABEL_254;
            }

            goto LABEL_214;
          }

          xmlRelaxNGFreeValidState(v2, v4);
          *(v2 + 104) = v17;
        }

        else
        {
          v5 = (v2 + 104);
        }

        *v5 = 0;
        *(v2 + 56) = v15;
LABEL_214:
        if (*(v2 + 80) <= v13)
        {
          goto LABEL_235;
        }

        v126 = v2;
        v127 = v13;
        goto LABEL_234;
      case 0x13:
        v44 = *(a2 + 40);
        if (!v44)
        {
          v103 = 10;
          v104 = 0;
LABEL_252:
          xmlRelaxNGAddValidError(a1, v103, v104, 0, 0);
          goto LABEL_253;
        }

        v45 = *(a1 + 80);
        v46 = *v44;
        v47 = *(a1 + 56);
        v208 = *(a2 + 40);
        if ((*(a2 + 98) & 8) != 0)
        {
          *(a1 + 56) = v47 | 4;
          if (v46 == 2)
          {
            if (v4)
            {
              v48 = xmlRelaxNGSkipIgnored(a1, *(v4 + 1));
              v44 = v208;
              *(v4 + 1) = v48;
            }

            v49 = *(v44 + 3);
            v50 = **v49;
            if (*v50 == 3)
            {
              v50 = *v49[1];
            }

            v7 = xmlRelaxNGValidateDefinition(v2, v50);
            if (!v7 && *v5)
            {
              v51 = *v5;
              *(v51 + 1) = xmlRelaxNGSkipIgnored(v2, *(v51 + 1));
            }

            *(v2 + 56) = v47;
            goto LABEL_254;
          }
        }

        v73 = malloc_type_malloc(8 * v46, 0x2004093837F09uLL);
        if (!v73)
        {
          goto LABEL_156;
        }

        v74 = v73;
        bzero(v73, 8 * v46);
        v75 = malloc_type_malloc(8 * v46, 0x2004093837F09uLL);
        if (!v75)
        {
          goto LABEL_156;
        }

        v205 = v46;
        v76 = v46;
        v203 = v75;
        bzero(v75, 8 * v46);
        v77 = *(v2 + 96);
        v78 = xmlRelaxNGSkipIgnored(v2, *(v77 + 1));
        v198 = v78;
        if (!v78)
        {
          v79 = 0;
          v202 = 0;
LABEL_262:
          if (v76 < 1)
          {
            v139 = 0;
            v141 = v77;
            v143 = v203;
LABEL_314:
            if (v77)
            {
              v170 = v79;
              xmlRelaxNGFreeValidState(v2, v77);
              *(v2 + 96) = v141;
              *(v141 + 1) = v170;
              if (v139)
              {
                goto LABEL_337;
              }
            }

            else
            {
              *v5 = v141;
              *(v141 + 1) = v79;
              if (v139)
              {
                goto LABEL_337;
              }
            }

            goto LABEL_331;
          }

          v197 = v47;
          v138 = v45;
          v204 = 0;
          v139 = 1;
          v196 = v79;
          v140 = v79;
          v141 = v77;
          v142 = 0;
          v143 = v203;
          v200 = v138;
          v199 = v74;
LABEL_264:
          v144 = xmlRelaxNGCopyValidState(v2, v141);
          *(v2 + 96) = v144;
          if (!v144)
          {
            *v5 = v141;
            *(v141 + 1) = v196;
            v45 = v138;
            v47 = v197;
            goto LABEL_337;
          }

          v145 = *(*(v208 + 3) + 8 * v142);
          v146 = *&v143[8 * v142];
          if (v146)
          {
            v204 = *(v146 + 48);
            *(v146 + 48) = 0;
          }

          v206 = v142;
          v144[1] = v74[v142];
          v147 = xmlRelaxNGValidateDefinition(v2, *v145);
          v77 = *(v2 + 96);
          if (v147)
          {
LABEL_312:
            v79 = v196;
            v45 = v138;
            v47 = v197;
            goto LABEL_314;
          }

          if (v77)
          {
            v140 = xmlRelaxNGSkipIgnored(v2, *(v77 + 1));
            xmlRelaxNGFreeValidState(v2, v141);
            v141 = *(v2 + 96);
            *(v2 + 96) = 0;
            if (!v140)
            {
              goto LABEL_308;
            }

            v148 = *(a2 + 56);
            if (*v148 == 10)
            {
              if (xmlStrEqual(*(v148 + 16), "open-name-class"))
              {
                goto LABEL_308;
              }
            }

            xmlRelaxNGAddValidError(v2, 12, *(v140 + 16), 0, 0);
            v180 = 0;
            *(v2 + 96) = v141;
            v7 = 0xFFFFFFFFLL;
            v182 = v198;
            v183 = v202;
            v45 = v138;
            goto LABEL_369;
          }

          v149 = *(v2 + 104);
          if (!v149)
          {
            *v5 = v141;
            *(v141 + 1) = v196;
            v45 = v138;
            v47 = v197;
            if (v139)
            {
LABEL_337:
              xmlRelaxNGAddValidError(v2, 11, 0, 0, 0);
              v180 = 0;
              v7 = 0xFFFFFFFFLL;
              goto LABEL_338;
            }

LABEL_331:
            v7 = 0;
            v180 = 1;
LABEL_338:
            v182 = v198;
            v183 = v202;
            goto LABEL_339;
          }

          v150 = *v149;
          if (v150 <= 0)
          {
            xmlRelaxNGFreeStates(v2, v149);
            *(v2 + 104) = 0;
LABEL_364:
            if (v140)
            {
              v190 = *(v140 + 16);
            }

            else
            {
              v190 = "noname";
            }

            xmlRelaxNGAddValidError(v2, 12, v190, 0, 0);
            v45 = v138;
            v180 = 0;
            *v5 = v141;
            v7 = 0xFFFFFFFFLL;
            v182 = v198;
            v183 = v202;
LABEL_369:
            v47 = v197;
LABEL_339:
            *(v2 + 56) = v47;
            if (v183 && v183 != v182)
            {
              do
              {
                v184 = *(v183 + 56);
                if (!v184)
                {
                  break;
                }

                *(v184 + 48) = v183;
                v183 = v184;
              }

              while (v184 != v182);
            }

            if (v180 && *(v2 + 80) > v45)
            {
              xmlRelaxNGPopErrors(v2, v45);
            }

            free(v74);
            v128 = v143;
            goto LABEL_221;
          }

          v201 = v141;
          v151 = 0;
          v152 = 0;
          v153 = v149[1];
          v154 = -1;
          v155 = -1;
          while (1)
          {
            v156 = v153[v151];
            v157 = xmlRelaxNGSkipIgnored(v2, *(v156 + 8));
            if (v157)
            {
              if (v152)
              {
                v152 = 1;
              }

              else
              {
                v161 = *(v156 + 24);
                if (v154 == -1)
                {
                  v152 = 0;
                  v155 = v151;
                  v154 = *(v156 + 24);
                }

                else
                {
                  v152 = 0;
                  if (v161 <= v154)
                  {
                    v155 = v151;
                  }

                  if (v161 < v154)
                  {
                    v154 = *(v156 + 24);
                  }
                }
              }
            }

            else
            {
              v158 = *(v156 + 24);
              if (v152)
              {
                v159 = v155;
              }

              else
              {
                v159 = v151;
              }

              if (v152)
              {
                v160 = v154;
              }

              else
              {
                v160 = *(v156 + 24);
              }

              if (v158 <= v160)
              {
                v155 = v151;
              }

              else
              {
                v155 = v159;
              }

              if (v158 >= v160)
              {
                v154 = v160;
              }

              else
              {
                v154 = *(v156 + 24);
              }

              v152 = 1;
              if (!v154)
              {
LABEL_301:
                v140 = v157;
                xmlRelaxNGFreeValidState(v2, v201);
                v162 = *(v2 + 104);
                v163 = *(v162 + 1);
                if (v155 == -1)
                {
                  v167 = v163 + 8 * *v162;
                  v164 = *(v167 - 8);
                  *(v167 - 8) = 0;
                  v165 = *(v2 + 104);
                  v166 = *v165 - 1;
                  *v165 = v166;
                }

                else
                {
                  v164 = *(v163 + 8 * v155);
                  *(v163 + 8 * v155) = 0;
                  v165 = *(v2 + 104);
                  v166 = *v165;
                }

                v138 = v200;
                v143 = v203;
                v74 = v199;
                if (v166 >= 1)
                {
                  v168 = 0;
                  do
                  {
                    xmlRelaxNGFreeValidState(v2, *(*(v165 + 1) + 8 * v168++));
                    v165 = *(v2 + 104);
                  }

                  while (v168 < *v165);
                }

                xmlRelaxNGFreeStates(v2, v165);
                *(v2 + 104) = 0;
                v141 = v164;
                if (!v152)
                {
                  goto LABEL_364;
                }

LABEL_308:
                v169 = *&v143[8 * v206];
                if (v169)
                {
                  *(v169 + 48) = v204;
                }

                v142 = v206 + 1;
                v139 = v206 + 1 < v205;
                if (v206 + 1 == v205)
                {
                  v77 = *v5;
                  goto LABEL_312;
                }

                goto LABEL_264;
              }
            }

            if (v150 == ++v151)
            {
              goto LABEL_301;
            }
          }
        }

        v202 = 0;
        v79 = v78;
        v80 = v208;
        break;
      default:
        goto LABEL_254;
    }

    while (1)
    {
      *(*v5 + 1) = v79;
      v81 = *(v80 + 1);
      v82 = v79;
      if (!v81 || (v80[4] & 1) == 0)
      {
        if (v76 < 1)
        {
          LODWORD(v83) = 0;
        }

        else
        {
          v83 = 0;
          while (1)
          {
            v84 = *(*(v80 + 3) + 8 * v83);
            if (v84)
            {
              v85 = xmlRelaxNGNodeMatchesList(v79, *(v84 + 8));
              v79 = v82;
              v80 = v208;
              if (v85)
              {
                break;
              }
            }

            if (v76 == ++v83)
            {
              goto LABEL_256;
            }
          }
        }

        goto LABEL_140;
      }

      v86 = *(v79 + 8);
      if ((v86 - 3) < 2)
      {
        v87 = "#text";
        goto LABEL_134;
      }

      if (v86 != 1)
      {
        goto LABEL_256;
      }

      v96 = *(v79 + 72);
      v97 = *(v79 + 16);
      if (v96)
      {
        v88 = xmlHashLookup2(v81, v97, *(v96 + 16));
        v89 = v208;
        v79 = v82;
        if (v88)
        {
          goto LABEL_135;
        }

        v81 = *(v208 + 1);
        v98 = *(*(v82 + 72) + 16);
        v97 = "#any";
      }

      else
      {
        v98 = 0;
      }

      v88 = xmlHashLookup2(v81, v97, v98);
      v89 = v208;
      v79 = v82;
      if (!v88)
      {
        v81 = *(v208 + 1);
        v87 = "#any";
LABEL_134:
        v88 = xmlHashLookup2(v81, v87, 0);
        v89 = v208;
        v79 = v82;
        if (!v88)
        {
          goto LABEL_256;
        }
      }

LABEL_135:
      LODWORD(v83) = v88 - 1;
      if ((v89[4] & 2) != 0)
      {
        v90 = xmlRelaxNGNodeMatchesList(v79, *(*(*(v89 + 3) + 8 * v83) + 8));
        v79 = v82;
        if (!v90)
        {
          LODWORD(v83) = v76;
        }
      }

LABEL_140:
      if (v83 < v205)
      {
        v91 = *&v203[8 * v83];
        v92 = v91 ? (v91 + 48) : &v74[v83];
        *v92 = v79;
        *&v203[8 * v83] = v79;
        v93 = *(v79 + 48);
        v94 = v93 ? *(v79 + 48) : v79;
        v202 = v94;
        v95 = xmlRelaxNGSkipIgnored(v2, v93);
        v80 = v208;
        v79 = v95;
        if (v95)
        {
          continue;
        }
      }

LABEL_256:
      v77 = *v5;
      goto LABEL_262;
    }
  }

  xmlRelaxNGAddValidError(a1, 7, 0, 0, 0);
  return 0xFFFFFFFFLL;
}

uint64_t xmlRelaxNGAddStates(uint64_t a1, int *a2, void *a3)
{
  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    v7 = *a2;
    v8 = a2[1];
    if (*a2 >= v8)
    {
      v9 = malloc_type_realloc(*(a2 + 1), 16 * v8, 0x2004093837F09uLL);
      if (!v9)
      {
        xmlRngVErrMemory(a1, "adding states\n");
        return 0xFFFFFFFFLL;
      }

      *(a2 + 1) = v9;
      a2[1] = 2 * v8;
      v7 = *a2;
    }

    if (v7 > 0)
    {
      v10 = 0;
      while (1)
      {
        v11 = *(*(a2 + 1) + 8 * v10);
        if (v11)
        {
          if (v11 == a3)
          {
            goto LABEL_24;
          }

          if (*a3 == *v11 && a3[1] == v11[1] && *(a3 + 6) == *(v11 + 6))
          {
            v12 = *(a3 + 4);
            if (v12 == *(v11 + 4) && a3[5] == v11[5])
            {
              v13 = a3[4];
              v14 = v11[4];
              if (v13 != v14)
              {
                if (!xmlStrEqual(v13, v14))
                {
                  goto LABEL_15;
                }

                v12 = *(a3 + 4);
              }

              if (v12 < 1)
              {
LABEL_24:
                xmlRelaxNGFreeValidState(a1, a3);
                return 0;
              }

              v15 = a3[6];
              v16 = v11[6];
              while (*v15 == *v16)
              {
                ++v16;
                ++v15;
                if (!--v12)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }

LABEL_15:
        ++v10;
        v7 = *a2;
        if (v10 >= *a2)
        {
          v17 = v7;
          goto LABEL_26;
        }
      }
    }

    v17 = v7;
LABEL_26:
    v18 = *(a2 + 1);
    *a2 = v7 + 1;
    *(v18 + 8 * v17) = a3;
    return 1;
  }

  return result;
}

void xmlRelaxNGValidErrorPop(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 <= 0)
  {
    *(a1 + 72) = 0;
  }

  else
  {
    v2 = *(a1 + 88);
    v3 = v2 + 40 * v1 - 80;
    v4 = v1 - 1;
    *(a1 + 80) = v4;
    if (!v4)
    {
      v3 = 0;
    }

    *(a1 + 72) = v3;
    v5 = v2 + 40 * v4;
    if (*(v5 + 4))
    {
      v6 = *(v5 + 24);
      if (v6)
      {
        free(v6);
      }

      *(v5 + 24) = 0;
      v7 = *(v5 + 32);
      if (v7)
      {
        free(v7);
      }

      *(v5 + 32) = 0;
      *(v5 + 4) = 0;
    }
  }
}

uint64_t xmlRelaxNGValidateCompiledContent(_DWORD *data, xmlRegexpPtr comp, uint64_t a3)
{
  if (!comp)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = data[46];
  v6 = xmlRegNewExecCtxt(comp, xmlRelaxNGValidateCompiledCallback, data);
  data[46] = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

  while (1)
  {
    *(*(data + 12) + 8) = a3;
    v7 = *(a3 + 8);
    if ((v7 - 3) < 2)
    {
      if (!xmlIsBlankNode(a3) && xmlRegExecPushString(v6, "#text", data) < 0)
      {
        a3 = *(a3 + 40);
        v11 = 39;
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (v7 != 1)
    {
      goto LABEL_12;
    }

    v8 = *(a3 + 72);
    v9 = *(a3 + 16);
    if (!v8)
    {
      break;
    }

    if (xmlRegExecPushString2(v6, v9, *(v8 + 16), data) < 0)
    {
      goto LABEL_15;
    }

LABEL_12:
    a3 = *(a3 + 48);
    if (!a3)
    {
      goto LABEL_17;
    }
  }

  if ((xmlRegExecPushString(v6, v9, data) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v11 = 38;
LABEL_16:
  xmlRelaxNGAddValidError(data, v11, *(a3 + 16), 0, 0);
LABEL_17:
  v12 = xmlRegExecPushString(v6, 0, 0);
  if (v12 == 1)
  {
    *(*(data + 12) + 8) = 0;
    xmlRegFreeExecCtxt(v6);
    result = data[46];
  }

  else
  {
    if (!v12)
    {
      xmlRelaxNGAddValidError(data, 22, "", 0, 0);
      if ((data[14] & 1) == 0)
      {
        xmlRelaxNGDumpValidError(data);
      }
    }

    xmlRegFreeExecCtxt(v6);
    result = 0xFFFFFFFFLL;
  }

  data[46] = v5;
  return result;
}

uint64_t xmlRelaxNGValidateDefinitionList(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    v3 = a2;
    LODWORD(v4) = 0;
    while (*(v2 + 96) || *(v2 + 104))
    {
      v5 = xmlRelaxNGValidateDefinition(v2, v3);
      if (v5 < 0)
      {
        v4 = 0xFFFFFFFFLL;
      }

      else
      {
        v4 = v4;
      }

      if (v5 != -1)
      {
        v3 = *(v3 + 64);
        if (v3)
        {
          continue;
        }
      }

      return v4;
    }

    a1 = v2;
    v7 = 6;
    v6 = 0;
  }

  else
  {
    v6 = "NULL definition list";
    v7 = 37;
  }

  xmlRelaxNGAddValidError(a1, v7, v6, 0, 0);
  return 0xFFFFFFFFLL;
}

void *xmlRelaxNGCopyValidState(uint64_t a1, __int128 *a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 112);
  if (v4 && (v5 = *v4 - 1, *v4 >= 1))
  {
    *v4 = v5;
    v6 = *(*(v4 + 8) + 8 * v5);
  }

  else
  {
    v7 = malloc_type_malloc(0x38uLL, 0x10B004079B1E1FAuLL);
    v6 = v7;
    if (!v7)
    {
      xmlRngVErrMemory(a1, "allocating states\n");
      return v6;
    }

    v7[6] = 0;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
  }

  v8 = v6[6];
  v9 = *(v6 + 5);
  v11 = a2[1];
  v10 = a2[2];
  v12 = *a2;
  v6[6] = *(a2 + 6);
  *(v6 + 1) = v11;
  *(v6 + 2) = v10;
  *v6 = v12;
  v6[6] = v8;
  *(v6 + 5) = v9;
  v13 = *(a2 + 4);
  if (v13 >= 1)
  {
    if (v8)
    {
      if (v9 >= v13)
      {
LABEL_15:
        memcpy(v8, *(a2 + 6), 8 * *(a2 + 4));
        return v6;
      }

      v8 = malloc_type_realloc(v8, 8 * *(a2 + 5), 0x2004093837F09uLL);
      if (v8)
      {
        *(v6 + 5) = *(a2 + 5);
        v6[6] = v8;
        goto LABEL_15;
      }
    }

    else
    {
      v14 = *(a2 + 5);
      *(v6 + 5) = v14;
      v8 = malloc_type_malloc(8 * v14, 0x2004093837F09uLL);
      v6[6] = v8;
      if (v8)
      {
        goto LABEL_15;
      }
    }

    xmlRngVErrMemory(a1, "allocating states\n");
    *(v6 + 4) = 0;
  }

  return v6;
}

void xmlRelaxNGValidateCompiledCallback(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  if (!a4)
  {
    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing context\n", a2);
    return;
  }

  if (a3)
  {
    if (*a3 == 4)
    {
      v5 = xmlRelaxNGValidateDefinition(a4, a3);
      if (v5)
      {
        *(a4 + 184) = v5;
      }

      return;
    }

    fprintf(*MEMORY[0x1E69E9848], "callback on %s define is not element\n");
  }

  else
  {
    if (*a2 == 35)
    {
      return;
    }

    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing define\n");
  }

  if (!*(a4 + 68))
  {
    *(a4 + 68) = 37;
  }
}

uint64_t xmlRelaxNGNodeMatchesList(uint64_t a1, void **a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 0;
  }

  for (i = a2 + 1; ; ++i)
  {
    v6 = *(a1 + 8);
    if (v6 == 1)
    {
      if (*v3 == 4)
      {
        result = xmlRelaxNGElementMatch(0, v3, a1);
        if (result == 1)
        {
          return result;
        }
      }

      goto LABEL_11;
    }

    if ((v6 - 3) <= 1)
    {
      v8 = *v3 - 3;
      if (v8 < 6 && ((0x35u >> v8) & 1) != 0)
      {
        break;
      }
    }

LABEL_11:
    v9 = *i;
    v3 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return 1;
}

const xmlChar *__cdecl xmlSAX2GetSystemId(const xmlChar *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return ctx;
}

int xmlSAX2GetLineNumber(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 52);
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2GetColumnNumber(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 7);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 56);
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2IsStandalone(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 76) == 1;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2HasInternalSubset(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 80) != 0;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

int xmlSAX2HasExternalSubset(void *ctx)
{
  if (ctx)
  {
    v1 = *(ctx + 2);
    if (v1)
    {
      LODWORD(ctx) = *(v1 + 88) != 0;
    }

    else
    {
      LODWORD(ctx) = 0;
    }
  }

  return ctx;
}

void xmlSAX2InternalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (ctx)
  {
    v5 = *(ctx + 2);
    if (v5)
    {
      IntSubset = xmlGetIntSubset(v5);
      if (IntSubset)
      {
        if (*(ctx + 13))
        {
          return;
        }

        v10 = IntSubset;
        xmlUnlinkNode(IntSubset);
        xmlFreeDtd(v10);
        v11 = *(ctx + 2);
        v11->intSubset = 0;
      }

      else
      {
        v11 = *(ctx + 2);
      }

      v12 = xmlCreateIntSubset(v11, name, ExternalID, SystemID);
      *(*(ctx + 2) + 80) = v12;
      if (!v12)
      {

        xmlSAX2ErrMemory(ctx, "xmlSAX2InternalSubset");
      }
    }
  }
}

_DWORD *xmlSAX2ErrMemory(uint64_t *a1, const char *a2)
{
  *(a1 + 34) = 2;
  v3 = *a1;
  if (*a1 && *(v3 + 216) == -554844497)
  {
    v4 = *(v3 + 248);
  }

  else
  {
    v4 = 0;
  }

  result = __xmlRaiseError(v4, a1[21], a1[20], a1, 0, 1u, 2, 2, 0, 0, "out of memory\n", 0, 0, 0, 0, a2, "out of memory\n");
  *(a1 + 34) = 2;
  *(a1 + 68) = -1;
  *(a1 + 83) = 1;
  return result;
}

void xmlSAX2ExternalSubset(void *ctx, const xmlChar *name, const xmlChar *ExternalID, const xmlChar *SystemID)
{
  if (ctx && ExternalID | SystemID && (*(ctx + 39) || *(ctx + 108)))
  {
    if (*(ctx + 6))
    {
      if (*(ctx + 2))
      {
        if (*ctx)
        {
          v8 = *(*ctx + 32);
          if (v8)
          {
            v9 = v8(*(ctx + 1), ExternalID, SystemID);
            if (v9)
            {
              v10 = v9;
              xmlNewDtd(*(ctx + 2), name, ExternalID, SystemID);
              v11 = *(ctx + 7);
              v12 = *(ctx + 8);
              v13 = *(ctx + 9);
              v14 = *(ctx + 102);
              v15 = *(ctx + 5);
              *(ctx + 5) = 0;
              v16 = malloc_type_malloc(0x28uLL, 0x2004093837F09uLL);
              *(ctx + 9) = v16;
              if (v16)
              {
                *(ctx + 8) = 0x500000000;
                *(ctx + 7) = 0;
                if ((xmlPushInput(ctx, v10) & 0x80000000) == 0)
                {
                  v17 = *(ctx + 7);
                  if (*(v17 + 48) >= 4)
                  {
                    v18 = xmlDetectCharEncoding(*(v17 + 32), 4);
                    xmlSwitchEncoding(ctx, v18);
                  }

                  if (!*(v10 + 8))
                  {
                    *(v10 + 8) = xmlCanonicPath(SystemID);
                  }

                  *(v10 + 52) = 0x100000001;
                  v19 = *(*(ctx + 7) + 32);
                  *(v10 + 24) = v19;
                  *(v10 + 32) = v19;
                  *(v10 + 72) = 0;
                  xmlParseExternalSubset(ctx, ExternalID, SystemID);
                  if (*(ctx + 16) >= 2)
                  {
                    do
                    {
                      xmlPopInput(ctx);
                    }

                    while (*(ctx + 16) > 1);
                  }
                }
              }

              else
              {
                xmlSAX2ErrMemory(ctx, "xmlSAX2ExternalSubset");
              }

              xmlFreeInputStream(v10);
              free(*(ctx + 9));
              *(ctx + 7) = v11;
              *(ctx + 8) = v12;
              *(ctx + 9) = v13;
              *(ctx + 102) = v14;
              v20 = *(ctx + 5);
              if (!v20)
              {
                goto LABEL_25;
              }

              v21 = *(ctx + 57);
              if (v21)
              {
                if (xmlDictOwns(v21, v20))
                {
LABEL_25:
                  *(ctx + 5) = v15;
                  return;
                }

                v20 = *(ctx + 5);
              }

              free(v20);
              goto LABEL_25;
            }
          }
        }
      }
    }
  }
}

xmlParserInputPtr xmlSAX2ResolveEntity(void *ctx, const xmlChar *publicId, const xmlChar *systemId)
{
  ExternalEntity = ctx;
  if (ctx)
  {
    v6 = *(ctx + 7);
    if (!v6 || (v7 = *(v6 + 8)) == 0)
    {
      v7 = *(ctx + 35);
    }

    if (xmlStrlen(systemId) > 2000 || xmlStrlen(v7) >= 2001)
    {
      xmlFatalErrMsg_0(ExternalEntity, 91, "URI too long", 0);
      return 0;
    }

    v9 = xmlBuildURI(systemId, v7);
    if (!v9)
    {
      xmlSAX2ErrMemory(ExternalEntity, "xmlSAX2ResolveEntity");
      return 0;
    }

    v10 = v9;
    if (xmlStrlen(v9) < 2001)
    {
      ExternalEntity = xmlLoadExternalEntity(v10, publicId, ExternalEntity);
    }

    else
    {
      xmlFatalErrMsg_0(ExternalEntity, 91, "URI too long", 0);
      ExternalEntity = 0;
    }

    free(v10);
  }

  return ExternalEntity;
}

_DWORD *xmlFatalErrMsg_0(_DWORD *result, int a2, const char *a3, const xmlChar *a4)
{
  v4 = result;
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    result = __xmlRaiseError(0, 0, 0, result, 0, 1u, a2, 3, 0, 0, a4, 0, 0, 0, 0, a3, a4);
    v4[6] = 0;
    v4[38] = 0;
    if (!v4[112])
    {
      v4[83] = 1;
    }
  }

  return result;
}

xmlEntityPtr xmlSAX2GetEntity(void *ctx, const xmlChar *name)
{
  if (!ctx)
  {
    return 0;
  }

  if (!*(ctx + 84))
  {
    PredefinedEntity = xmlGetPredefinedEntity(name);
    if (PredefinedEntity)
    {
      return PredefinedEntity;
    }
  }

  v4 = *(ctx + 2);
  if (v4 && v4->standalone == 1)
  {
    if (*(ctx + 84) == 2)
    {
      v4->standalone = 0;
      result = xmlGetDocEntity(v4, name);
      *(*(ctx + 2) + 76) = 1;
      return result;
    }

    PredefinedEntity = xmlGetDocEntity(v4, name);
    if (!PredefinedEntity)
    {
      v8 = *(ctx + 2);
      v8->standalone = 0;
      DocEntity = xmlGetDocEntity(v8, name);
      if (DocEntity)
      {
        xmlFatalErrMsg_0(ctx, 103, "Entity(%s) document marked standalone but requires external subset\n", name);
      }

      *(*(ctx + 2) + 76) = 1;
      return DocEntity;
    }

    return PredefinedEntity;
  }

  return xmlGetDocEntity(v4, name);
}

xmlEntityPtr xmlSAX2GetParameterEntity(xmlEntityPtr ctx, const xmlChar *name)
{
  if (ctx)
  {
    return xmlGetParameterEntity(ctx->name, name);
  }

  return ctx;
}

void xmlSAX2EntityDecl(void *ctx, const xmlChar *name, int type, const xmlChar *publicId, const xmlChar *systemId, xmlChar *content)
{
  if (ctx)
  {
    v9 = *(ctx + 84);
    if (v9 == 2)
    {
      v13 = xmlAddDtdEntity(*(ctx + 2), name, type, publicId, systemId, content);
      if (v13)
      {
        if (systemId)
        {
          v14 = v13;
          if (!v13->URI)
          {
            v15 = *(ctx + 7);
            if (!v15 || (v16 = *(v15 + 8)) == 0)
            {
              v16 = *(ctx + 35);
            }

            v17 = xmlBuildURI(systemId, v16);
            if (v17)
            {
              v18 = v17;
              if (xmlStrlen(v17) < 2001)
              {
                v14->URI = v18;
              }

              else
              {
                xmlFatalErrMsg_0(ctx, 91, "URI too long", name);

                free(v18);
              }
            }

            else
            {

              xmlSAX2ErrMemory(ctx, "xmlSAX2EntityDecl");
            }
          }
        }
      }

      else if (*(ctx + 105))
      {
        if (*ctx)
        {
          v19 = *(*ctx + 168);
          if (v19)
          {
            v19(*(ctx + 1), "Entity(%s) already defined in the external subset\n", name);
          }
        }
      }
    }

    else if (v9 == 1)
    {
      v10 = xmlAddDocEntity(*(ctx + 2), name, type, publicId, systemId, content);
      if (v10)
      {
        if (systemId && !v10->URI)
        {
          v11 = *(ctx + 7);
          if (!v11 || (v12 = *(v11 + 8)) == 0)
          {
            v12 = *(ctx + 35);
          }

          v10->URI = xmlBuildURI(systemId, v12);
        }
      }

      else if (*(ctx + 105) && (!*(ctx + 83) || *(ctx + 68) != -1))
      {
        *(ctx + 34) = 107;
        __xmlRaiseError(0, 0, 0, ctx, 0, 1u, 107, 1, 0, 0, name, 0, 0, 0, 0, "Entity(%s) already defined in the internal subset\n", name);
      }
    }

    else
    {

      xmlFatalErrMsg_0(ctx, 104, "SAX.xmlSAX2EntityDecl(%s) called while not in subset\n", name);
    }
  }
}

void xmlSAX2AttributeDecl(void *ctx, const xmlChar *elem, const xmlChar *fullname, int type, int def, const xmlChar *defaultValue, xmlEnumerationPtr tree)
{
  prefix = 0;
  if (ctx && *(ctx + 2))
  {
    v14 = xmlStrEqual(fullname, "xml:id");
    if (type != 2 && v14)
    {
      v15 = *(ctx + 38);
      xmlErrValid(ctx, 540, "xml:id : attribute type should be ID\n", 0, 0);
      *(ctx + 38) = v15;
    }

    v16 = xmlSplitQName(ctx, fullname, &prefix);
    *(ctx + 56) = 1;
    v17 = *(ctx + 84);
    if (v17 == 2)
    {
      v18 = *(*(ctx + 2) + 88);
    }

    else
    {
      if (v17 != 1)
      {
        xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2AttributeDecl(%s) called while not in subset\n", v16);
        free(v16);
        xmlFreeEnumeration(tree);
        return;
      }

      v18 = *(*(ctx + 2) + 80);
    }

    v19 = xmlAddAttributeDecl((ctx + 160), v18, elem, v16, prefix, type, def, defaultValue, tree);
    if (!*(ctx + 56))
    {
      *(ctx + 38) = 0;
    }

    if (v19)
    {
      if (*(ctx + 39))
      {
        if (*(ctx + 6))
        {
          v20 = *(ctx + 2);
          if (v20->intSubset)
          {
            *(ctx + 38) &= xmlValidateAttributeDecl((ctx + 160), v20, v19);
          }
        }
      }
    }

    if (prefix)
    {
      free(prefix);
    }

    if (v16)
    {
      free(v16);
    }
  }
}

_DWORD *xmlErrValid(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
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

void xmlSAX2ElementDecl(void *ctx, const xmlChar *name, int type, xmlElementContentPtr content)
{
  if (!ctx)
  {
    return;
  }

  v5 = *(ctx + 2);
  if (!v5)
  {
    return;
  }

  v6 = *(ctx + 84);
  if (v6 == 1)
  {
    v7 = 80;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = 88;
LABEL_7:
    v8 = xmlAddElementDecl((ctx + 160), *(v5 + v7), name, type, content);
    if (!v8)
    {
      *(ctx + 38) = 0;
    }

    if (*(ctx + 39))
    {
      if (*(ctx + 6))
      {
        v9 = *(ctx + 2);
        if (v9)
        {
          if (v9->intSubset)
          {
            *(ctx + 38) &= xmlValidateElementDecl((ctx + 160), v9, v8);
          }
        }
      }
    }

    return;
  }

  xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2ElementDecl(%s) called while not in subset\n", name);
}

void xmlSAX2NotationDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId)
{
  if (!ctx)
  {
    return;
  }

  v5 = *(ctx + 2);
  if (!v5)
  {
    return;
  }

  if (!(publicId | systemId))
  {
    v6 = "SAX.xmlSAX2NotationDecl(%s) externalID or PublicID missing\n";
LABEL_17:

    xmlFatalErrMsg_0(ctx, 105, v6, name);
    return;
  }

  v7 = *(ctx + 84);
  if (v7 == 1)
  {
    v8 = 80;
  }

  else
  {
    if (v7 != 2)
    {
      v6 = "SAX.xmlSAX2NotationDecl(%s) called while not in subset\n";
      goto LABEL_17;
    }

    v8 = 88;
  }

  v9 = xmlAddNotationDecl((ctx + 160), *(v5 + v8), name, publicId, systemId);
  if (!v9)
  {
    *(ctx + 38) = 0;
  }

  if (*(ctx + 39))
  {
    if (*(ctx + 6))
    {
      v10 = *(ctx + 2);
      if (v10->intSubset)
      {
        *(ctx + 38) &= xmlValidateNotationDecl((ctx + 160), v10, v9);
      }
    }
  }
}

void xmlSAX2UnparsedEntityDecl(void *ctx, const xmlChar *name, const xmlChar *publicId, const xmlChar *systemId, const xmlChar *notationName)
{
  if (!ctx)
  {
    return;
  }

  v7 = *(ctx + 84);
  if (v7 != 2)
  {
    if (v7 != 1)
    {

      xmlFatalErrMsg_0(ctx, 1, "SAX.xmlSAX2UnparsedEntityDecl(%s) called while not in subset\n", name);
      return;
    }

    v8 = xmlAddDocEntity(*(ctx + 2), name, 3, publicId, systemId, notationName);
    if (!v8)
    {
      if (*(ctx + 105))
      {
        if (*ctx)
        {
          v9 = *(*ctx + 168);
          if (v9)
          {
            v10 = *(ctx + 1);
            v11 = "Entity(%s) already defined in the internal subset\n";
LABEL_23:
            v9(v10, v11);
            return;
          }
        }
      }

      return;
    }

LABEL_10:
    if (systemId && !v8->URI)
    {
      v12 = *(ctx + 7);
      if (!v12 || (v13 = *(v12 + 8)) == 0)
      {
        v13 = *(ctx + 35);
      }

      v8->URI = xmlBuildURI(systemId, v13);
    }

    return;
  }

  v8 = xmlAddDtdEntity(*(ctx + 2), name, 3, publicId, systemId, notationName);
  if (v8)
  {
    goto LABEL_10;
  }

  if (*(ctx + 105))
  {
    if (*ctx)
    {
      v9 = *(*ctx + 168);
      if (v9)
      {
        v10 = *(ctx + 1);
        v11 = "Entity(%s) already defined in the external subset\n";
        goto LABEL_23;
      }
    }
  }
}

void xmlSAX2AttributeInternal(uint64_t *ctxt, xmlChar *name, xmlChar *a3, const xmlChar *a4)
{
  prefix = 0;
  if (*(ctxt + 13))
  {
    v8 = xmlStrdup(name);
    prefix = 0;
    if (!v8)
    {
LABEL_16:
      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
      goto LABEL_102;
    }
  }

  else
  {
    v9 = xmlSplitQName(ctxt, name, &prefix);
    if (!v9)
    {
      goto LABEL_16;
    }

    v8 = v9;
    if (!*v9)
    {
      if (xmlStrEqual(prefix, "xmlns"))
      {
        xmlNsErrMsg(ctxt, 35, "invalid namespace declaration '%s'\n", name, 0);
      }

      else
      {
        xmlNsWarnMsg(ctxt, 106, "Avoid attribute ending with ':' like '%s'\n", name, 0);
      }

      if (prefix)
      {
        free(prefix);
      }

      prefix = 0;
      free(v8);
      v8 = xmlStrdup(name);
      if (!v8)
      {
        goto LABEL_16;
      }
    }
  }

  if (!a3 && *(ctxt + 13) && htmlIsBooleanAttr(name))
  {
    a3 = xmlStrdup(name);
    v10 = a3;
  }

  else
  {
    *(ctxt + 56) = 1;
    v11 = xmlValidCtxtNormalizeAttributeValue((ctxt + 20), ctxt[2], ctxt[10], name, a3);
    v10 = v11;
    if (*(ctxt + 56) != 1)
    {
      *(ctxt + 38) = 0;
    }

    if (v11)
    {
      a3 = v11;
    }
  }

  v12 = *(ctxt + 13);
  if (!v12 && !prefix)
  {
    if (*v8 == 120 && v8[1] == 109 && v8[2] == 108 && v8[3] == 110 && v8[4] == 115 && !v8[5])
    {
      v13 = a3;
      if (*(ctxt + 7) || (++*(ctxt + 98), v13 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0), --*(ctxt + 98), v13))
      {
        if (*v13)
        {
          v14 = xmlParseURI(v13);
          if (v14)
          {
            v15 = v14;
            if (!v14->scheme)
            {
              if (*ctxt)
              {
                v39 = *(*ctxt + 168);
                if (v39)
                {
                  v39(ctxt[1], "xmlns: URI %s is not absolute\n", v13);
                }
              }
            }

            xmlFreeURI(v15);
          }

          else if (*ctxt)
          {
            v38 = *(*ctxt + 168);
            if (v38)
            {
              v38(ctxt[1], "xmlns: %s not a valid URI\n", v13);
            }
          }
        }

        v16 = xmlNewNs(ctxt[10], v13, 0);
        if (v16)
        {
          if (*(ctxt + 39))
          {
            if (*(ctxt + 6))
            {
              v17 = ctxt[2];
              if (v17)
              {
                if (v17->intSubset)
                {
                  v18 = v16;
                  v19 = ctxt[10];
                  v20 = (ctxt + 20);
                  v21 = a4;
                  v22 = v13;
LABEL_129:
                  *(ctxt + 38) &= xmlValidateOneNamespace(v20, v17, v19, v21, v18, v22);
                  goto LABEL_130;
                }
              }
            }
          }
        }

        goto LABEL_130;
      }

      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
LABEL_120:
      free(v8);
      v13 = v10;
      if (!v10)
      {
        return;
      }

LABEL_103:
      free(v13);
      return;
    }

    goto LABEL_68;
  }

  if (v12 || !prefix)
  {
    if (!prefix)
    {
LABEL_68:
      v25 = 0;
      goto LABEL_70;
    }

LABEL_60:
    v25 = xmlSearchNs(ctxt[2], ctxt[10], prefix);
    if (v25)
    {
      v26 = *(ctxt[10] + 88);
      if (v26)
      {
        while (1)
        {
          if (v26->ns)
          {
            if (xmlStrEqual(v8, v26->name))
            {
              ns = v26->ns;
              if (v25 == ns || xmlStrEqual(v25->href, ns->href))
              {
                break;
              }
            }
          }

          v26 = v26->next;
          if (!v26)
          {
            goto LABEL_70;
          }
        }

        xmlNsErrMsg(ctxt, 42, "Attribute %s in %s redefined\n", v8, v25->href);
        *(ctxt + 6) = 0;
        if (!*(ctxt + 112))
        {
          *(ctxt + 83) = 1;
        }

        v33 = v8;
        goto LABEL_97;
      }
    }

    else
    {
      xmlNsErrMsg(ctxt, 201, "Namespace prefix %s of attribute %s is not defined\n", prefix, v8);
    }

LABEL_70:
    v28 = xmlNewNsPropEatName(ctxt[10], v25, v8, 0);
    if (v28)
    {
      if (*(ctxt + 7) || *(ctxt + 13))
      {
        if (a3)
        {
          v29 = xmlNewDocText(ctxt[2], a3);
          v28->children = v29;
          v28->last = v29;
          if (v29)
          {
            v29->parent = v28;
          }
        }
      }

      else
      {
        NodeList = xmlStringGetNodeList(ctxt[2], a3);
        v28->children = NodeList;
        if (NodeList)
        {
          do
          {
            v31 = NodeList;
            NodeList->parent = v28;
            NodeList = NodeList->next;
          }

          while (NodeList);
          v28->last = v31;
        }
      }
    }

    if (*(ctxt + 13) || !*(ctxt + 39) || !*(ctxt + 6) || (v32 = ctxt[2]) == 0 || !v32->intSubset)
    {
      if ((ctxt[54] & 8) != 0)
      {
        goto LABEL_100;
      }

      if (*(ctxt + 7))
      {
        if (*(ctxt + 84))
        {
          goto LABEL_100;
        }
      }

      else if (*(ctxt + 37) == 2)
      {
        goto LABEL_100;
      }

      if (xmlStrEqual(name, "xml:id"))
      {
        if (xmlValidateNCName(a3, 1))
        {
          xmlErrValid(ctxt, 539, "xml:id : attribute value %s is not an NCName\n", a3, 0);
        }
      }

      else if (!xmlIsID(ctxt[2], ctxt[10], v28))
      {
        if (xmlIsRef(ctxt[2], ctxt[10], v28))
        {
          xmlAddRef((ctxt + 20), ctxt[2], a3, v28);
        }

        goto LABEL_100;
      }

      xmlAddID((ctxt + 20), ctxt[2], a3, v28);
LABEL_100:
      if (v10)
      {
        free(v10);
      }

LABEL_102:
      v13 = prefix;
      if (!prefix)
      {
        return;
      }

      goto LABEL_103;
    }

    if (*(ctxt + 7))
    {
LABEL_89:
      *(ctxt + 38) &= xmlValidateOneAttribute((ctxt + 20), v32, ctxt[10], v28, a3);
      goto LABEL_100;
    }

    ++*(ctxt + 98);
    v34 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0);
    --*(ctxt + 98);
    if (!v34)
    {
      v32 = ctxt[2];
      goto LABEL_89;
    }

    v35 = v34;
    v36 = xmlValidNormalizeAttributeValue(ctxt[2], ctxt[10], name, v34);
    if (v36)
    {
      v37 = v36;
      free(v35);
      v35 = v37;
    }

    *(ctxt + 38) &= xmlValidateOneAttribute((ctxt + 20), ctxt[2], ctxt[10], v28, v35);
    v33 = v35;
LABEL_97:
    free(v33);
    goto LABEL_100;
  }

  if (*prefix != 120 || prefix[1] != 109 || prefix[2] != 108 || prefix[3] != 110 || prefix[4] != 115 || prefix[5])
  {
    goto LABEL_60;
  }

  v13 = a3;
  if (!*(ctxt + 7))
  {
    ++*(ctxt + 98);
    v13 = xmlStringDecodeEntities(ctxt, a3, 1, 0, 0, 0);
    --*(ctxt + 98);
    if (!v13)
    {
      xmlSAX2ErrMemory(ctxt, "xmlSAX2StartElement");
      free(prefix);
      goto LABEL_120;
    }
  }

  if (!*v13)
  {
    xmlNsErrMsg(ctxt, 204, "Empty namespace name for prefix %s\n", v8, 0);
  }

  if (*(ctxt + 105) && *v13)
  {
    v23 = xmlParseURI(v13);
    if (v23)
    {
      v24 = v23;
      if (!v23->scheme)
      {
        xmlNsWarnMsg(ctxt, 100, "xmlns:%s: URI %s is not absolute\n", v8, a3);
      }

      xmlFreeURI(v24);
    }

    else
    {
      xmlNsWarnMsg(ctxt, 99, "xmlns:%s: %s not a valid URI\n", v8, a3);
    }
  }

  v40 = xmlNewNs(ctxt[10], v13, v8);
  free(prefix);
  if (v40)
  {
    if (*(ctxt + 39))
    {
      if (*(ctxt + 6))
      {
        v17 = ctxt[2];
        if (v17)
        {
          if (v17->intSubset)
          {
            v19 = ctxt[10];
            v20 = (ctxt + 20);
            v21 = a4;
            v18 = v40;
            v22 = a3;
            goto LABEL_129;
          }
        }
      }
    }
  }

LABEL_130:
  free(v8);
  if (v10)
  {
    free(v10);
  }

  if (v13 != a3)
  {
    goto LABEL_103;
  }
}

_DWORD *xmlNsWarnMsg(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    return __xmlRaiseError(0, 0, 0, result, 0, 3u, a2, 1, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  return result;
}

void xmlSAX2Reference(void *ctx, const xmlChar *name)
{
  if (ctx)
  {
    v3 = *(ctx + 2);
    v4 = *name == 35 ? xmlNewCharRef(v3, name) : xmlNewReference(v3, name);
    v5 = v4;
    if (!xmlAddChild(*(ctx + 10), v4))
    {

      xmlFreeNode(v5);
    }
  }
}

void xmlSAX2ProcessingInstruction(void *ctx, const xmlChar *target, const xmlChar *data)
{
  if (!ctx)
  {
    return;
  }

  v4 = *(ctx + 10);
  v5 = xmlNewDocPI(*(ctx + 2), target, data);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (*(ctx + 109))
  {
    v7 = *(ctx + 7);
    if (v7)
    {
      v8 = *(v7 + 52);
      if (v8 >= 0xFFFF)
      {
        LOWORD(v8) = -1;
      }

      v5->line = v8;
    }
  }

  v9 = *(ctx + 84);
  if (v9 == 2)
  {
    v10 = *(*(ctx + 2) + 88);
    goto LABEL_19;
  }

  if (v9 == 1)
  {
    v10 = *(*(ctx + 2) + 80);
    goto LABEL_19;
  }

  if (!v4)
  {
    v10 = *(ctx + 2);
    goto LABEL_19;
  }

  v10 = v4;
  if (*(v4 + 8) == 1)
  {
LABEL_19:

    xmlAddChild(v10, v6);
    return;
  }

  xmlAddSibling(v4, v6);
}

void xmlSAX2Comment(void *ctx, const xmlChar *value)
{
  if (!ctx)
  {
    return;
  }

  v3 = *(ctx + 10);
  v4 = xmlNewDocComment(*(ctx + 2), value);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (*(ctx + 109))
  {
    v6 = *(ctx + 7);
    if (v6)
    {
      v7 = *(v6 + 52);
      if (v7 >= 0xFFFF)
      {
        LOWORD(v7) = -1;
      }

      v4->line = v7;
    }
  }

  v8 = *(ctx + 84);
  if (v8 == 2)
  {
    v9 = *(*(ctx + 2) + 88);
    goto LABEL_19;
  }

  if (v8 == 1)
  {
    v9 = *(*(ctx + 2) + 80);
    goto LABEL_19;
  }

  if (!v3)
  {
    v9 = *(ctx + 2);
    goto LABEL_19;
  }

  v9 = v3;
  if (*(v3 + 8) == 1)
  {
LABEL_19:

    xmlAddChild(v9, v5);
    return;
  }

  xmlAddSibling(v3, v5);
}

int xmlSAXDefaultVersion(int version)
{
  if ((version - 3) < 0xFFFFFFFE)
  {
    return -1;
  }

  result = xmlSAX2DefaultVersionValue;
  xmlSAX2DefaultVersionValue = version;
  return result;
}

void xmlSAX2InitDefaultSAXHandler(xmlSAXHandler *hdlr, int warning)
{
  if (hdlr && !hdlr->initialized)
  {
    xmlSAXVersion(hdlr, xmlSAX2DefaultVersionValue);
    if (warning)
    {
      v4 = xmlParserWarning;
    }

    else
    {
      v4 = 0;
    }

    hdlr->warning = v4;
  }
}

void xmlSAX2InitDocbDefaultSAXHandler(xmlSAXHandler *hdlr)
{
  if (hdlr)
  {
    if (!hdlr->initialized)
    {
      hdlr->internalSubset = xmlSAX2InternalSubset;
      hdlr->externalSubset = 0;
      hdlr->isStandalone = xmlSAX2IsStandalone;
      hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
      hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
      hdlr->resolveEntity = xmlSAX2ResolveEntity;
      hdlr->getEntity = xmlSAX2GetEntity;
      hdlr->entityDecl = xmlSAX2EntityDecl;
      *&hdlr->notationDecl = 0u;
      *&hdlr->elementDecl = 0u;
      hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
      hdlr->startDocument = xmlSAX2StartDocument;
      hdlr->endDocument = xmlSAX2EndDocument;
      hdlr->startElement = xmlSAX2StartElement;
      hdlr->endElement = xmlSAX2EndElement;
      hdlr->reference = xmlSAX2Reference;
      hdlr->characters = xmlSAX2Characters;
      hdlr->getParameterEntity = 0;
      hdlr->cdataBlock = 0;
      hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;
      hdlr->processingInstruction = 0;
      hdlr->comment = xmlSAX2Comment;
      hdlr->warning = xmlParserWarning;
      hdlr->error = xmlParserError;
      hdlr->fatalError = xmlParserError;
      hdlr->initialized = 1;
    }
  }
}

void docbDefaultSAXHandlerInit(void)
{
  v0 = __docbDefaultSAXHandler();

  xmlSAX2InitDocbDefaultSAXHandler(v0);
}

_DWORD *xmlNsErrMsg(_DWORD *result, int a2, const char *a3, const xmlChar *a4, xmlChar *a5)
{
  if (!result[83] || result[68] != -1)
  {
    result[34] = a2;
    return __xmlRaiseError(0, 0, 0, result, 0, 3u, a2, 2, 0, 0, a4, a5, 0, 0, 0, a3, a4);
  }

  return result;
}

xmlChar *xmlSAX2DecodeAttrEntities(xmlParserCtxtPtr ctxt, const xmlChar *a2, unint64_t a3)
{
  v4 = a2;
  while (v4 < a3)
  {
    v5 = *v4++;
    if (v5 == 38)
    {
      ++ctxt->depth;
      result = xmlStringLenDecodeEntities(ctxt, a2, a3 - a2, 1, 0, 0, 0);
      --ctxt->depth;
      return result;
    }
  }

  return 0;
}

void xmlSchematronFree(xmlSchematronPtr schema)
{
  if (schema)
  {
    v2 = *(schema + 2);
    if (v2 && !*(schema + 2))
    {
      xmlFreeDoc(v2);
    }

    v3 = *(schema + 11);
    if (v3)
    {
      free(v3);
    }

    v4 = *(schema + 9);
    if (v4)
    {
      do
      {
        v5 = *v4;
        v6 = v4[4];
        if (v6)
        {
          do
          {
            v7 = *v6;
            v8 = v6[3];
            if (v8)
            {
              free(v8);
            }

            v9 = v6[4];
            if (v9)
            {
              xmlXPathFreeCompExpr(v9);
            }

            v10 = v6[5];
            if (v10)
            {
              free(v10);
            }

            free(v6);
            v6 = v7;
          }

          while (v7);
        }

        v11 = v4[3];
        if (v11)
        {
          free(v11);
        }

        v12 = v4[5];
        if (v12)
        {
          xmlFreePattern(v12);
        }

        v13 = v4[6];
        if (v13)
        {
          free(v13);
        }

        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    v14 = *(schema + 8);
    if (v14)
    {
      do
      {
        v15 = *v14;
        v16 = v14[2];
        if (v16)
        {
          free(v16);
        }

        free(v14);
        v14 = v15;
      }

      while (v15);
    }

    xmlDictFree(*(schema + 5));

    free(schema);
  }
}

xmlSchematronParserCtxtPtr xmlSchematronNewParserCtxt(const char *URL)
{
  if (!URL)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    return v3;
  }

  v2[8] = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 100) = 0u;
  *(v2 + 84) = 0u;
  *(v2 + 68) = 0u;
  *(v2 + 52) = 0u;
  *(v2 + 36) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 4) = 0u;
  *v2 = 1;
  v4 = xmlDictCreate();
  *(v3 + 6) = v4;
  *(v3 + 1) = xmlDictLookup(v4, URL, -1);
  *(v3 + 13) = 0;
  v5 = xmlXPathNewContext(0);
  *(v3 + 8) = v5;
  if (!v5)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
    xmlSchematronFreeParserCtxt(v3);
    return 0;
  }

  v5->flags = 1;
  return v3;
}

void xmlSchematronFreeParserCtxt(xmlSchematronParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 2);
    if (v2 && !*(ctxt + 6))
    {
      xmlFreeDoc(v2);
    }

    v3 = *(ctxt + 8);
    if (v3)
    {
      xmlXPathFreeContext(v3);
    }

    v4 = *(ctxt + 11);
    if (v4)
    {
      free(v4);
    }

    xmlDictFree(*(ctxt + 6));

    free(ctxt);
  }
}

xmlSchematronParserCtxtPtr xmlSchematronNewMemParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer && size >= 1)
  {
    v5 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
    v2 = v5;
    if (v5)
    {
      v5[7] = 0u;
      v5[8] = 0u;
      v5[5] = 0u;
      v5[6] = 0u;
      v5[3] = 0u;
      v5[4] = 0u;
      v5[1] = 0u;
      v5[2] = 0u;
      *v5 = 0u;
      *(v5 + 4) = buffer;
      *(v5 + 10) = size;
      *(v5 + 6) = xmlDictCreate();
      v6 = xmlXPathNewContext(0);
      *(v2 + 8) = v6;
      if (!v6)
      {
        __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
        xmlSchematronFreeParserCtxt(v2);
        return 0;
      }
    }

    else
    {
      __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    }
  }

  return v2;
}

xmlSchematronParserCtxtPtr xmlSchematronNewDocParserCtxt(xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x90uLL, 0x10F0040B9406136uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
    return v3;
  }

  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *v2 = 0u;
  *(v2 + 2) = doc;
  *(v2 + 6) = xmlDictCreate();
  *(v3 + 6) = 1;
  v4 = xmlXPathNewContext(doc);
  *(v3 + 8) = v4;
  if (!v4)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
    xmlSchematronFreeParserCtxt(v3);
    return 0;
  }

  return v3;
}

xmlSchematronPtr xmlSchematronParse(xmlSchematronParserCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return 0;
  }

  *(ctxt + 14) = 0;
  v2 = *(ctxt + 1);
  if (v2)
  {
    File = xmlReadFile(v2, 0, 2);
    if (File)
    {
      v4 = File;
      v5 = 0;
LABEL_8:
      v9 = 1;
      goto LABEL_9;
    }

    v17 = *(ctxt + 1);
    v18 = "xmlSchematronParse: could not load '%s'.\n";
    v19 = ctxt;
    v20 = 1757;
    goto LABEL_40;
  }

  v6 = *(ctxt + 4);
  if (v6)
  {
    Memory = xmlReadMemory(v6, *(ctxt + 10), 0, 0, 2);
    if (Memory)
    {
      v4 = Memory;
      Memory->URL = xmlStrdup("in_memory_buffer");
      v8 = xmlDictLookup(*(ctxt + 6), "in_memory_buffer", -1);
      v5 = 0;
      *(ctxt + 1) = v8;
      goto LABEL_8;
    }

    v18 = "xmlSchematronParse: could not parse.\n";
    v19 = ctxt;
    v20 = 1766;
    goto LABEL_39;
  }

  v4 = *(ctxt + 2);
  if (!v4)
  {
    v18 = "xmlSchematronParse: could not parse.\n";
    v19 = ctxt;
    v20 = 1758;
LABEL_39:
    v17 = 0;
LABEL_40:
    xmlSchematronPErr(v19, 0, v20, v18, v17);
    return 0;
  }

  v9 = 0;
  v5 = 1;
LABEL_9:
  *(ctxt + 6) = v5;
  RootElement = xmlDocGetRootElement(v4);
  if (!RootElement)
  {
    xmlSchematronPErr(ctxt, v4, 1759, "The schema has no document element.\n", 0);
    if (v9)
    {
      xmlFreeDoc(v4);
    }

    return 0;
  }

  v11 = RootElement;
  if (RootElement->type != XML_ELEMENT_NODE || !RootElement->ns || !xmlStrEqual(RootElement->name, "schema") || !xmlStrEqual(*(*(v11 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v11 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v11, 1759, "The XML document '%s' is not a XML schematron document", *(ctxt + 1));
    v13 = 0;
    goto LABEL_26;
  }

  v12 = malloc_type_malloc(0x60uLL, 0x10F004073DB652CuLL);
  v13 = v12;
  if (!v12)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema");
    goto LABEL_26;
  }

  v12[4] = 0u;
  v12[5] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *v12 = 0u;
  v12[1] = 0u;
  v14 = *(ctxt + 6);
  *(v13 + 5) = v14;
  xmlDictReference(v14);
  *(ctxt + 9) = v13;
  v15 = *(v11 + 24);
  if (!v15)
  {
    goto LABEL_22;
  }

  while (1)
  {
    if (*(v15 + 8) == 1)
    {
      v16 = *(v15 + 72);
      if (v16)
      {
        if (xmlStrEqual(*(v16 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v15 = *(v15 + 48);
    if (!v15)
    {
      goto LABEL_22;
    }
  }

  if (*(v15 + 8) == 1 && *(v15 + 72) && xmlStrEqual(*(v15 + 16), "title") && (xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron")))
  {
    Content = xmlNodeGetContent(v15);
    if (Content)
    {
      v23 = Content;
      *(v13 + 6) = xmlDictLookup(*(v13 + 5), Content, -1);
      free(v23);
    }

    v15 = *(v15 + 48);
    if (!v15)
    {
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v15 + 8) == 1)
      {
        v24 = *(v15 + 72);
        if (v24)
        {
          if (xmlStrEqual(*(v24 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }

      v15 = *(v15 + 48);
      if (!v15)
      {
        goto LABEL_22;
      }
    }
  }

  while (*(v15 + 8) == 1)
  {
    if (!*(v15 + 72) || !xmlStrEqual(*(v15 + 16), "ns") || !xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
    {
      break;
    }

    NoNsProp = xmlGetNoNsProp(v15, "prefix");
    v26 = xmlGetNoNsProp(v15, "uri");
    v27 = v26;
    if (!v26 || !*v26)
    {
      xmlSchematronPErr(ctxt, v15, 1759, "ns element has no uri", 0);
    }

    if (!NoNsProp || !*NoNsProp)
    {
      xmlSchematronPErr(ctxt, v15, 1759, "ns element has no prefix", 0);
    }

    if (!NoNsProp || !v27)
    {
      if (!v27)
      {
        goto LABEL_84;
      }

      goto LABEL_83;
    }

    xmlXPathRegisterNs(*(ctxt + 8), NoNsProp, v27);
    v28 = *(ctxt + 11);
    if (v28)
    {
      v29 = *(ctxt + 21);
      if (*(ctxt + 20) + 2 >= v29)
      {
        v30 = malloc_type_realloc(v28, 32 * v29, 0x50040EE9192B6uLL);
        if (!v30)
        {
          goto LABEL_81;
        }

        *(ctxt + 11) = v30;
        *(ctxt + 21) *= 2;
      }
    }

    else
    {
      *(ctxt + 21) = 10;
      v31 = malloc_type_malloc(0xA0uLL, 0x50040EE9192B6uLL);
      *(ctxt + 11) = v31;
      if (!v31)
      {
LABEL_81:
        __xmlSimpleError(0x10u, 2, 0, 0, "allocating parser namespaces");
        goto LABEL_82;
      }

      *(ctxt + 20) = 0;
    }

    *(*(ctxt + 11) + 16 * *(ctxt + 20)) = xmlDictLookup(*(ctxt + 6), v27, -1);
    v32 = xmlDictLookup(*(ctxt + 6), NoNsProp, -1);
    v33 = *(ctxt + 20);
    *(*(ctxt + 11) + 8 * ((2 * v33) | 1)) = v32;
    *(ctxt + 20) = v33 + 1;
    *(*(ctxt + 11) + 16 * (v33 + 1)) = 0;
    *(*(ctxt + 11) + 16 * (v33 + 1) + 8) = 0;
LABEL_82:
    ++*(v13 + 14);
LABEL_83:
    free(v27);
LABEL_84:
    if (NoNsProp)
    {
      free(NoNsProp);
    }

    while (1)
    {
      v15 = *(v15 + 48);
      if (!v15)
      {
        goto LABEL_22;
      }

      if (*(v15 + 8) == 1)
      {
        v34 = *(v15 + 72);
        if (v34)
        {
          if (xmlStrEqual(*(v34 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }
    }
  }

LABEL_92:
  if (*(v15 + 8) != 1 || !*(v15 + 72) || !xmlStrEqual(*(v15 + 16), "pattern") || !xmlStrEqual(*(*(v15 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v15, 1759, "Expecting a pattern element instead of %s", *(v15 + 16));
    goto LABEL_112;
  }

  v35 = xmlGetNoNsProp(v15, "id");
  if (!v35)
  {
    v35 = xmlGetNoNsProp(v15, "name");
  }

  if (!v35 || (v36 = *(ctxt + 9)) == 0)
  {
    if (!v35)
    {
      goto LABEL_122;
    }

    goto LABEL_121;
  }

  v37 = malloc_type_malloc(0x18uLL, 0x3004039D06D92uLL);
  if (!v37)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, v15, 0, "allocating schema pattern");
LABEL_121:
    free(v35);
    goto LABEL_122;
  }

  v37[1] = 0;
  v72 = v37 + 1;
  v37[2] = v35;
  *v37 = 0;
  v40 = *(v36 + 64);
  v39 = (v36 + 64);
  for (i = v40; i; i = *i)
  {
    v39 = i;
  }

  *v39 = v37;
  v41 = *(v15 + 24);
  if (!v41)
  {
    goto LABEL_110;
  }

  while (1)
  {
    if (*(v41 + 8) == 1)
    {
      v42 = *(v41 + 72);
      if (v42)
      {
        if (xmlStrEqual(*(v42 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v41 = *(v41 + 48);
    if (!v41)
    {
      goto LABEL_110;
    }
  }

  v71 = 0;
LABEL_124:
  if (*(v41 + 8) != 1 || !*(v41 + 72) || !xmlStrEqual(*(v41 + 16), "rule") || !xmlStrEqual(*(*(v41 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
  {
    xmlSchematronPErr(ctxt, v41, 1759, "Expecting a rule element instead of %s", *(v41 + 16));
    goto LABEL_149;
  }

  pattern = xmlGetNoNsProp(v41, "context");
  if (!pattern)
  {
    v53 = ctxt;
    v54 = v41;
    v55 = "rule has no context attribute";
    goto LABEL_156;
  }

  if (!*pattern)
  {
    xmlSchematronPErr(ctxt, v41, 1759, "rule has an empty context attribute", 0);
    goto LABEL_159;
  }

  if (!*(ctxt + 9))
  {
LABEL_159:
    free(pattern);
    goto LABEL_160;
  }

  v44 = *(ctxt + 9);
  v66 = xmlPatterncompile(pattern, *(ctxt + 6), 1, *(ctxt + 11));
  if (!v66)
  {
    xmlSchematronPErr(ctxt, v41, 1759, "Failed to compile context expression %s", pattern);
  }

  v68 = malloc_type_malloc(0x38uLL, 0x300405D29F4A9uLL);
  if (!v68)
  {
    ++*(ctxt + 14);
    __xmlSimpleError(0x10u, 2, v41, 0, "allocating schema rule");
    goto LABEL_159;
  }

  *(v68 + 8) = 0u;
  *(v68 + 24) = 0u;
  *(v68 + 2) = v41;
  *(v68 + 3) = pattern;
  *(v68 + 5) = v66;
  *(v68 + 6) = 0;
  *v68 = 0;
  v47 = *(v44 + 72);
  v46 = (v44 + 72);
  for (j = v47; j; j = *j)
  {
    v46 = j;
  }

  *v46 = v68;
  *(v68 + 1) = 0;
  v48 = v72;
  v49 = *v72;
  if (*v72)
  {
    do
    {
      v50 = v49;
      v49 = *(v49 + 8);
    }

    while (v49);
    v48 = (v50 + 8);
  }

  *v48 = v68;
  if (!*(v41 + 24))
  {
LABEL_147:
    v53 = ctxt;
    v54 = v41;
    v55 = "rule has no assert nor report element";
LABEL_156:
    xmlSchematronPErr(v53, v54, 1759, v55, 0);
    goto LABEL_160;
  }

  v51 = *(v41 + 24);
  while (1)
  {
    if (*(v51 + 8) == 1)
    {
      v52 = *(v51 + 72);
      if (v52)
      {
        if (xmlStrEqual(*(v52 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          break;
        }
      }
    }

    v51 = *(v51 + 48);
    if (!v51)
    {
      goto LABEL_147;
    }
  }

  patterna = 0;
  while (1)
  {
    if (*(v51 + 8) != 1)
    {
LABEL_180:
      v60 = v51;
      v61 = *(v51 + 16);
      v62 = ctxt;
      v63 = "Expecting an assert or a report element instead of %s";
LABEL_181:
      xmlSchematronPErr(v62, v60, 1759, v63, v61);
      goto LABEL_182;
    }

    if (*(v51 + 72) && xmlStrEqual(*(v51 + 16), "assert") && (xmlStrEqual(*(*(v51 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron")))
    {
      ++patterna;
      v67 = xmlGetNoNsProp(v51, "test");
      if (!v67)
      {
        goto LABEL_190;
      }

      if (*v67)
      {
        v65 = v51;
        v57 = xmlNodeGetContent(v51);
        v58 = ctxt;
        v59 = 1;
        goto LABEL_178;
      }
    }

    else
    {
      if (*(v51 + 8) != 1 || !*(v51 + 72) || !xmlStrEqual(*(v51 + 16), "report") || !xmlStrEqual(*(*(v51 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
      {
        goto LABEL_180;
      }

      ++patterna;
      v67 = xmlGetNoNsProp(v51, "test");
      if (!v67)
      {
LABEL_190:
        v62 = ctxt;
        v60 = v51;
        v63 = "assert has no test attribute";
        v61 = 0;
        goto LABEL_181;
      }

      if (*v67)
      {
        v65 = v51;
        v57 = xmlNodeGetContent(v51);
        v58 = ctxt;
        v59 = 2;
LABEL_178:
        if (xmlSchematronAddTest(v58, v59, v68, v65, v67, v57))
        {
          goto LABEL_182;
        }

        goto LABEL_192;
      }
    }

    xmlSchematronPErr(ctxt, v51, 1759, "assert has an empty test attribute", 0);
LABEL_192:
    free(v67);
LABEL_182:
    if (!*(v51 + 48))
    {
      break;
    }

    v51 = *(v51 + 48);
    while (1)
    {
      if (*(v51 + 8) == 1)
      {
        v64 = *(v51 + 72);
        if (v64)
        {
          if (xmlStrEqual(*(v64 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v51 + 72) + 16), "http://www.ascc.net/xml/schematron"))
          {
            break;
          }
        }
      }

      v51 = *(v51 + 48);
      if (!v51)
      {
        goto LABEL_193;
      }
    }
  }

LABEL_193:
  if (!patterna)
  {
    goto LABEL_147;
  }

LABEL_160:
  ++v71;
LABEL_149:
  while (1)
  {
    v41 = *(v41 + 48);
    if (!v41)
    {
      break;
    }

    if (*(v41 + 8) == 1)
    {
      v56 = *(v41 + 72);
      if (v56)
      {
        if (xmlStrEqual(*(v56 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v41 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          goto LABEL_124;
        }
      }
    }
  }

  if (!v71)
  {
LABEL_110:
    xmlSchematronPErr(ctxt, v15, 1759, "Pattern has no rule element", 0);
  }

LABEL_122:
  ++*(v13 + 15);
LABEL_112:
  while (1)
  {
    v15 = *(v15 + 48);
    if (!v15)
    {
      break;
    }

    if (*(v15 + 8) == 1)
    {
      v43 = *(v15 + 72);
      if (v43)
      {
        if (xmlStrEqual(*(v43 + 16), "http://purl.oclc.org/dsdl/schematron") || xmlStrEqual(*(*(v15 + 72) + 16), "http://www.ascc.net/xml/schematron"))
        {
          goto LABEL_92;
        }
      }
    }
  }

LABEL_22:
  if (*(v13 + 15))
  {
    *(v13 + 2) = v4;
    if ((v9 & 1) == 0)
    {
      *(v13 + 2) = 1;
    }

    goto LABEL_29;
  }

  xmlSchematronPErr(ctxt, v11, 1759, "The schematron document '%s' has no pattern", *(ctxt + 1));
LABEL_26:
  if (v9)
  {
    xmlFreeDoc(v4);
  }

  if (v13)
  {
LABEL_29:
    if (*(ctxt + 14))
    {
      xmlSchematronFree(v13);
      return 0;
    }

    *(v13 + 11) = *(ctxt + 11);
    *(v13 + 20) = *(ctxt + 20);
    *(ctxt + 11) = 0;
  }

  return v13;
}

void xmlSchematronSetValidStructuredErrors(xmlSchematronValidCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 12) = 0;
    *(ctxt + 13) = serror;
    *(ctxt + 10) = ctx;
    *(ctxt + 11) = 0;
  }
}

xmlSchematronValidCtxtPtr xmlSchematronNewValidCtxt(xmlSchematronPtr schema, int options)
{
  v4 = malloc_type_malloc(0x70uLL, 0x10A0040EAD6294DuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 20) = 0u;
    v4[6] = 0u;
    *(v4 + 84) = 0u;
    *(v4 + 68) = 0u;
    *(v4 + 52) = 0u;
    *(v4 + 36) = 0u;
    *(v4 + 4) = 0u;
    *v4 = 2;
    *(v4 + 3) = schema;
    v6 = xmlXPathNewContext(0);
    *(v5 + 4) = v6;
    *(v5 + 1) = options;
    if (v6)
    {
      if (*(schema + 20) >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          v9 = *(schema + 11);
          v10 = *(v9 + v7);
          if (!v10)
          {
            break;
          }

          v11 = *(v9 + v7 + 8);
          if (!v11)
          {
            break;
          }

          xmlXPathRegisterNs(*(v5 + 4), v11, v10);
          ++v8;
          v7 += 16;
        }

        while (v8 < *(schema + 20));
      }
    }

    else
    {
      __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser XPath context");
      xmlSchematronFreeValidCtxt(v5);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(0x11u, 2, 0, 0, "allocating validation context");
  }

  return v5;
}

void xmlSchematronFreeValidCtxt(xmlSchematronValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 4);
    if (v2)
    {
      xmlXPathFreeContext(v2);
    }

    v3 = *(ctxt + 1);
    if (v3)
    {
      xmlDictFree(v3);
    }

    free(ctxt);
  }
}

int xmlSchematronValidateDoc(xmlSchematronValidCtxtPtr ctxt, xmlDocPtr instance)
{
  v22 = *MEMORY[0x1E69E9840];
  if (ctxt && (v3 = *(ctxt + 3)) != 0)
  {
    result = -1;
    if (instance && *(v3 + 72))
    {
      *(ctxt + 4) = 0;
      RootElement = xmlDocGetRootElement(instance);
      if (RootElement)
      {
        Node = RootElement;
        v8 = *(ctxt + 1);
        if (!v8 || (v8 & 1) != 0)
        {
          do
          {
            for (i = *(*(ctxt + 3) + 72); i; i = *i)
            {
              if (xmlPatternMatch(i[5], Node) == 1)
              {
                for (j = i[4]; j; j = *j)
                {
                  xmlSchematronRunTest(ctxt, j, instance, Node, i[5]);
                }
              }
            }

            Node = xmlSchematronNextNode(Node);
          }

          while (Node);
        }

        else
        {
          for (k = *(*(ctxt + 3) + 64); k; k = *k)
          {
            v10 = *(ctxt + 1);
            if ((v10 & 9) == 0)
            {
              if ((v10 & 4) != 0)
              {
                v11 = *__xmlGenericError();
                v12 = __xmlGenericErrorContext();
                v11(*v12, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1460);
              }

              else
              {
                bzero(__str, 0x3E8uLL);
                if (*(k + 16))
                {
                  snprintf(__str, 0x3E7uLL, "Pattern: %s\n", *(k + 16));
                  fputs(__str, *MEMORY[0x1E69E9848]);
                }
              }
            }

            v13 = Node;
            do
            {
              for (m = *(k + 8); m; m = *(m + 8))
              {
                if (xmlPatternMatch(*(m + 40), v13) == 1)
                {
                  for (n = *(m + 32); n; n = *n)
                  {
                    xmlSchematronRunTest(ctxt, n, instance, v13, k);
                  }
                }
              }

              v13 = xmlSchematronNextNode(v13);
            }

            while (v13);
          }
        }

        result = *(ctxt + 4);
      }

      else
      {
        v19 = *__xmlGenericError();
        v20 = __xmlGenericErrorContext();
        v19(*v20, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1684);
        ++*(ctxt + 4);
        result = 1;
      }
    }
  }

  else
  {
    result = -1;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void xmlSchematronRunTest(uint64_t a1, uint64_t a2, xmlDoc *a3, const xmlNode *a4, uint64_t a5)
{
  v51 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v9->doc = a3;
  v9->node = a4;
  v10 = xmlXPathCompiledEval(*(a2 + 32), v9);
  if (v10)
  {
    v11 = v10;
    type = v10->type;
    if (v10->type > XPATH_NUMBER)
    {
      if ((type - 5) >= 4)
      {
        if (type != 4)
        {
          if (type != 9)
          {
LABEL_28:
            xmlXPathFreeObject(v11);
            goto LABEL_29;
          }

          goto LABEL_21;
        }

        stringval = v10->stringval;
        if (stringval && *stringval)
        {
          goto LABEL_28;
        }
      }

LABEL_8:
      xmlXPathFreeObject(v11);
      goto LABEL_9;
    }

    if (type <= 1)
    {
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_28;
        }

LABEL_21:
        p_nodeNr = &v10->nodesetval->nodeNr;
        if (p_nodeNr && *p_nodeNr)
        {
          goto LABEL_28;
        }

        goto LABEL_8;
      }

      goto LABEL_8;
    }

    if (type != 2)
    {
      if (type != 3 || !xmlXPathIsNaN(v10->floatval) && v11->floatval != 0.0)
      {
        goto LABEL_28;
      }

      goto LABEL_8;
    }

    BOOLval = v10->BOOLval;
    xmlXPathFreeObject(v10);
    if (BOOLval)
    {
LABEL_29:
      v13 = *(a2 + 8);
      if (v13 == 2)
      {
        ++*(a1 + 16);
      }

      v16 = 1;
LABEL_32:
      v15 = (a1 + 4);
      v14 = *(a1 + 4);
      if ((v14 & 5) == 1)
      {
        if (v13 == 2)
        {
          goto LABEL_101;
        }

        goto LABEL_36;
      }

LABEL_35:
      if ((v14 & 4) != 0)
      {
        v40 = *__xmlGenericError();
        v41 = __xmlGenericErrorContext();
        v40(*v41, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/schematron.c", 1383);
        goto LABEL_101;
      }

LABEL_36:
      bzero(__str, 0x3E8uLL);
      if (v13 == v16)
      {
        goto LABEL_101;
      }

      goto LABEL_37;
    }
  }

LABEL_9:
  v13 = *(a2 + 8);
  if (v13 != 1)
  {
    v16 = 2;
    goto LABEL_32;
  }

  v15 = (a1 + 4);
  v14 = *(a1 + 4);
  ++*(a1 + 16);
  if ((v14 & 5) != 1)
  {
    v13 = 1;
    v16 = 2;
    goto LABEL_35;
  }

  bzero(__str, 0x3E8uLL);
LABEL_37:
  LineNo = xmlGetLineNo(a4);
  NodePath = xmlGetNodePath(a4);
  if (!NodePath)
  {
    NodePath = a4->name;
  }

  v22 = *(a2 + 16);
  if (!v22 || (v23 = *(v22 + 24)) == 0)
  {
LABEL_82:
    if (*(a2 + 8) == 1)
    {
      v42 = "node failed assert";
    }

    else
    {
      v42 = "node failed report";
    }

    v24 = xmlStrdup(v42);
    goto LABEL_86;
  }

  v24 = 0;
  do
  {
    v25 = *(v23 + 8);
    if (v25 == 1)
    {
      if (!*(v23 + 72) || !xmlStrEqual(*(v23 + 16), "name") || !xmlStrEqual(*(*(v23 + 72) + 16), "http://purl.oclc.org/dsdl/schematron") && !xmlStrEqual(*(*(v23 + 72) + 16), "http://www.ascc.net/xml/schematron"))
      {
        goto LABEL_49;
      }

      v49 = a5;
      NoNsProp = xmlGetNoNsProp(v23, "path");
      v28 = a4;
      if (NoNsProp)
      {
        v29 = *(a1 + 32);
        v29->doc = a4->doc;
        v29->node = a4;
        v48 = NoNsProp;
        v30 = xmlXPathEval(NoNsProp, v29);
        if (v30)
        {
          if (v30->type == XPATH_NODESET && (nodesetval = v30->nodesetval) != 0 && nodesetval->nodeNr >= 1)
          {
            v28 = *nodesetval->nodeTab;
          }

          else
          {
            v28 = 0;
          }

          xmlXPathFreeObject(v30);
        }

        else
        {
          v28 = 0;
        }

        if (!v28)
        {
          v28 = a4;
        }

        free(v48);
      }

      ns = v28->ns;
      if (ns)
      {
        prefix = ns->prefix;
        if (prefix)
        {
          v34 = xmlStrcat(v24, prefix);
          v24 = xmlStrcat(v34, ":");
        }
      }

      p_name = &v28->name;
      a5 = v49;
    }

    else
    {
      if ((v25 - 3) > 1)
      {
        goto LABEL_49;
      }

      p_name = (v23 + 80);
    }

    v35 = xmlStrcat(v24, *p_name);
    v24 = v35;
    if (v35)
    {
      v36 = xmlStrlen(v35);
      if (v36 >= 1)
      {
        v37 = v24[v36 - 1];
        if (v37 <= 0x20 && ((1 << v37) & 0x100002600) != 0)
        {
          v39 = v36;
          while (v37 <= 0x20u && ((1 << v37) & 0x100002600) != 0)
          {
            if (v39 == 1)
            {
              LODWORD(v39) = 0;
              break;
            }

            LOBYTE(v37) = v24[v39-- - 2];
          }

          v24[v39] = 32;
          v24[v39 + 1] = 0;
        }
      }
    }

LABEL_49:
    v23 = *(v23 + 48);
  }

  while (v23);
  if (!v24)
  {
    goto LABEL_82;
  }

LABEL_86:
  snprintf(__str, 0x3E7uLL, "%s line %ld: %s\n", NodePath, LineNo, v24);
  if ((*v15 & 8) != 0)
  {
    v43 = *(a1 + 104);
    if (v43)
    {
      v44 = 0;
    }

    else
    {
      v44 = *(a1 + 88);
    }

    if (*(a2 + 8) == 1)
    {
      v45 = 4000;
    }

    else
    {
      v45 = 4001;
    }

    if (a5)
    {
      v46 = *(a5 + 16);
    }

    else
    {
      v46 = 0;
    }

    __xmlRaiseError(v43, v44, *(a1 + 80), 0, a4, 0x1Cu, v45, 2, 0, LineNo, v46, NodePath, v24, 0, 0, "%s", __str);
  }

  else
  {
    fputs(__str, *MEMORY[0x1E69E9848]);
  }

  free(v24);
  if (NodePath && NodePath != a4->name)
  {
    free(NodePath);
  }

LABEL_101:
  v47 = *MEMORY[0x1E69E9840];
}

uint64_t xmlSchematronNextNode(uint64_t a1)
{
  v1 = a1;
  result = *(a1 + 24);
  if (result)
  {
    v3 = *(result + 8);
    if (v3 != 17)
    {
      if (v3 != 14)
      {
        return result;
      }

      v1 = result;
    }
  }

  v4 = *(v1 + 48);
  result = v1;
  if (!v4)
  {
    goto LABEL_15;
  }

  while (1)
  {
    result = v4;
    v5 = *(v4 + 8);
    if (v5 != 17 && v5 != 14)
    {
      break;
    }

    v4 = *(v4 + 48);
    if (!v4)
    {
LABEL_15:
      while (1)
      {
        result = *(result + 40);
        if (!result)
        {
          break;
        }

        if (*(result + 8) == 9)
        {
          return 0;
        }

        if (*(result + 48))
        {
          return *(result + 48);
        }
      }

      return result;
    }
  }

  return result;
}

_DWORD *xmlSchematronAddTest(uint64_t a1, int a2, uint64_t a3, uint64_t a4, xmlChar *str, uint64_t a6)
{
  v12 = xmlXPathCtxtCompile(*(a1 + 64), str);
  if (!v12)
  {
    xmlSchematronPErr(a1, a4, 1759, "Failed to compile test expression %s", str);
    return 0;
  }

  v13 = v12;
  result = malloc_type_malloc(0x30uLL, 0x10300400BFA76D7uLL);
  if (!result)
  {
    ++*(a1 + 56);
    __xmlSimpleError(0x10u, 2, a4, 0, "allocating schema test");
    return 0;
  }

  result[2] = a2;
  result[3] = 0;
  *(result + 2) = a4;
  *(result + 3) = str;
  *(result + 4) = v13;
  *(result + 5) = a6;
  *result = 0;
  v15 = *(a3 + 32);
  if (v15)
  {
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
    *v16 = result;
  }

  else
  {
    *(a3 + 32) = result;
  }

  return result;
}

void xmlFreeMutex(xmlMutexPtr tok)
{
  if (tok)
  {
    pthread_mutex_destroy(tok);

    free(tok);
  }
}

void xmlFreeRMutex(xmlRMutexPtr tok)
{
  if (tok)
  {
    pthread_mutex_destroy(tok);
    pthread_cond_destroy((tok + 80));

    free(tok);
  }
}

xmlChar *__cdecl xmlBuildQName(const xmlChar *ncname, const xmlChar *prefix, xmlChar *memory, int len)
{
  result = 0;
  if (ncname && (len & 0x80000000) == 0)
  {
    if (prefix)
    {
      v9 = strlen(ncname);
      v10 = strlen(prefix);
      if (v9 < -2 - v10)
      {
        v11 = v10;
        v12 = v10 + v9;
        v13 = v10 + v9 + 2;
        if (memory && v13 <= len || (memory = malloc_type_malloc(v13, 0x100004077774924uLL)) != 0)
        {
          memcpy(memory, prefix, v11);
          memory[v11] = 58;
          memcpy(&memory[v11 + 1], ncname, v9);
          memory[v12 + 1] = 0;
          return memory;
        }

        __xmlSimpleError(2u, 2, 0, 0, "building QName");
      }

      return 0;
    }

    else
    {
      return ncname;
    }
  }

  return result;
}

const xmlChar *__cdecl xmlSplitQName3(const xmlChar *name, int *len)
{
  result = 0;
  if (name && len)
  {
    v4 = *name;
    if (v4 == 58)
    {
      return 0;
    }

    v5 = 0;
    result = name + 1;
    if (!*name)
    {
      return 0;
    }

    else
    {
      while (v4 != 58)
      {
        v6 = *result++;
        v4 = v6;
        ++v5;
        if (!v6)
        {
          return 0;
        }
      }

      *len = v5;
    }
  }

  return result;
}

int xmlValidateNCName(const xmlChar *value, int space)
{
  if (!value)
  {
    return -1;
  }

  v3 = value;
  if (space)
  {
    for (i = value; ; ++i)
    {
      v5 = *i;
      if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v5 = *value;
    i = value;
  }

  len = 0;
  if (v5 - 97 < 0x1A || v5 == 95 || v5 - 65 <= 0x19)
  {
    do
    {
      v8 = i;
      v10 = *++i;
      v9 = v10;
      v11 = (v10 & 0xFFFFFFDF) - 65;
    }

    while (v10 - 48 < 0xA || v11 < 0x1A || v9 - 45 <= 0x32 && ((1 << (v9 - 45)) & 0x4000000000003) != 0);
    if (space)
    {
      v14 = 2;
      while (v9 <= 0x20 && ((1 << v9) & 0x100002600) != 0)
      {
        v9 = v8[v14++];
      }
    }

    if (!v9)
    {
      return 0;
    }
  }

  v15 = xmlStringCurrentChar(0, value, &len);
  v16 = v15;
  if (!space)
  {
    if (v15 < 256)
    {
      goto LABEL_38;
    }

LABEL_44:
    if (xmlCharInRange(v16, &xmlIsBaseCharGroup) || v16 == 12295 || (v16 - 40870) > 0xFFFFAE59 || (v16 - 12330) >= 0xFFFFFFF7)
    {
      goto LABEL_45;
    }

    return 1;
  }

  if (v15 > 255)
  {
    goto LABEL_44;
  }

  while (v16 <= 0x20 && ((1 << v16) & 0x100002600) != 0)
  {
    v3 += len;
    v16 = xmlStringCurrentChar(0, v3, &len);
    if (v16 >= 256)
    {
      goto LABEL_44;
    }
  }

LABEL_38:
  if ((v16 - 192) >= 0x17 && (v16 & 0xFFFFFFDF) - 65 >= 0x1A && v16 != 95 && v16 <= 247 && (v16 - 216) >= 0x1F)
  {
    return 1;
  }

  do
  {
    while (1)
    {
      do
      {
        do
        {
LABEL_45:
          while (1)
          {
            v3 += len;
            v17 = xmlStringCurrentChar(0, v3, &len);
            v18 = v17;
            if (v17 > 255)
            {
              break;
            }

            v19 = (v17 - 192) >= 0x17 && (v17 & 0xFFFFFFDF) - 65 >= 0x1A;
            if (v19 && (v17 - 48) >= 0xA && v17 <= 247 && (v17 - 216) >= 0x1F)
            {
              goto LABEL_69;
            }
          }

          if (xmlCharInRange(v17, &xmlIsBaseCharGroup))
          {
            v21 = 1;
          }

          else
          {
            v21 = v18 == 12295;
          }

          v23 = !v21 && (v18 - 19968) >= 0x51A6 && (v18 - 12321) >= 9;
        }

        while (!v23 || xmlCharInRange(v18, &xmlIsDigitGroup));
LABEL_69:
        ;
      }

      while ((v18 - 45) <= 0x32 && ((1 << (v18 - 45)) & 0x4000000000003) != 0);
      if (v18 >= 256)
      {
        break;
      }

      if (v18 != 183)
      {
        goto LABEL_79;
      }
    }
  }

  while (xmlCharInRange(v18, &xmlIsCombiningGroup) || xmlCharInRange(v18, &xmlIsExtenderGroup));
LABEL_79:
  if (space && v18 <= 255)
  {
    do
    {
      if (v18 > 0x20)
      {
        break;
      }

      if (((1 << v18) & 0x100002600) == 0)
      {
        break;
      }

      v3 += len;
      v18 = xmlStringCurrentChar(0, v3, &len);
    }

    while (v18 < 256);
  }

  return v18 != 0;
}

int xmlValidateQName(const xmlChar *value, int space)
{
  if (!value)
  {
    return -1;
  }

  v3 = value;
  if (space)
  {
    for (i = value; ; ++i)
    {
      v5 = *i;
      if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v5 = *value;
    i = value;
  }

  len = 0;
  if (v5 - 97 < 0x1A || v5 == 95 || v5 - 65 <= 0x19)
  {
    do
    {
      v9 = *++i;
      v8 = v9;
      v10 = (v9 & 0xFFFFFFDF) - 65;
      v11 = v9 - 48 >= 0xA && v10 >= 0x1A;
    }

    while (!v11 || v8 - 45 < 2 || v8 == 95);
    if (v8 == 58)
    {
      v12 = i[1];
      if ((v12 - 97) >= 0x1A && v12 != 95 && (v12 - 65) > 0x19)
      {
        goto LABEL_44;
      }

      for (i += 2; ; ++i)
      {
        v8 = *i;
        if (v8 - 48 >= 0xA && (v8 & 0xFFFFFFDF) - 65 >= 0x1A && (v8 - 45 > 0x32 || ((1 << (v8 - 45)) & 0x4000000000003) == 0))
        {
          break;
        }
      }
    }

    if (space)
    {
      v15 = (i + 1);
      while (v8 <= 0x20 && ((1 << v8) & 0x100002600) != 0)
      {
        v16 = *v15++;
        v8 = v16;
      }
    }

    if (!v8)
    {
      return 0;
    }
  }

LABEL_44:
  v17 = xmlStringCurrentChar(0, value, &len);
  v18 = v17;
  if (space)
  {
    if (v17 <= 255)
    {
      while (v18 <= 0x20 && ((1 << v18) & 0x100002600) != 0)
      {
        v3 += len;
        v18 = xmlStringCurrentChar(0, v3, &len);
        if (v18 >= 256)
        {
          goto LABEL_57;
        }
      }

      goto LABEL_51;
    }

LABEL_57:
    if (xmlCharInRange(v18, &xmlIsBaseCharGroup) || v18 == 12295 || (v18 - 40870) > 0xFFFFAE59 || (v18 - 12330) >= 0xFFFFFFF7)
    {
      goto LABEL_58;
    }

    return 1;
  }

  if (v17 >= 256)
  {
    goto LABEL_57;
  }

LABEL_51:
  if ((v18 - 192) >= 0x17 && (v18 & 0xFFFFFFDF) - 65 >= 0x1A && v18 != 95 && v18 <= 247 && (v18 - 216) >= 0x1F)
  {
    return 1;
  }

  do
  {
    while (1)
    {
      do
      {
        do
        {
LABEL_58:
          while (1)
          {
            v3 += len;
            v19 = xmlStringCurrentChar(0, v3, &len);
            v20 = v19;
            if (v19 > 255)
            {
              break;
            }

            v21 = (v19 - 192) >= 0x17 && (v19 & 0xFFFFFFDF) - 65 >= 0x1A;
            if (v21 && (v19 - 48) >= 0xA && v19 <= 247 && (v19 - 216) >= 0x1F)
            {
              goto LABEL_82;
            }
          }

          if (xmlCharInRange(v19, &xmlIsBaseCharGroup))
          {
            v23 = 1;
          }

          else
          {
            v23 = v20 == 12295;
          }

          v25 = !v23 && (v20 - 19968) >= 0x51A6 && (v20 - 12321) >= 9;
        }

        while (!v25 || xmlCharInRange(v20, &xmlIsDigitGroup));
LABEL_82:
        ;
      }

      while ((v20 - 45) <= 0x32 && ((1 << (v20 - 45)) & 0x4000000000003) != 0);
      if (v20 >= 256)
      {
        break;
      }

      if (v20 != 183)
      {
        goto LABEL_92;
      }
    }
  }

  while (xmlCharInRange(v20, &xmlIsCombiningGroup) || xmlCharInRange(v20, &xmlIsExtenderGroup));
LABEL_92:
  if (v20 == 58)
  {
    v3 += len;
    v27 = xmlStringCurrentChar(0, v3, &len);
    v28 = v27;
    if (v27 <= 255)
    {
      if ((v27 - 192) < 0x17 || (v27 & 0xFFFFFFDF) - 65 < 0x1A || v27 == 95 || v27 > 247 || (v27 - 216) < 0x1F)
      {
        goto LABEL_105;
      }

      return 1;
    }

    if (!xmlCharInRange(v27, &xmlIsBaseCharGroup) && v28 != 12295 && (v28 - 40870) <= 0xFFFFAE59 && (v28 - 12330) < 0xFFFFFFF7)
    {
      return 1;
    }

    while (1)
    {
LABEL_105:
      v3 += len;
      v29 = xmlStringCurrentChar(0, v3, &len);
      v20 = v29;
      if (v29 > 255)
      {
        if (xmlCharInRange(v29, &xmlIsBaseCharGroup))
        {
          v32 = 1;
        }

        else
        {
          v32 = v20 == 12295;
        }

        v34 = !v32 && (v20 - 19968) >= 0x51A6 && (v20 - 12321) >= 9;
        if (!v34 || xmlCharInRange(v20, &xmlIsDigitGroup))
        {
          continue;
        }
      }

      else
      {
        v30 = (v29 - 192) >= 0x17 && (v29 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (!v30 || (v29 - 48) < 0xA)
        {
          continue;
        }

        if (v29 > 247 || (v29 - 216) < 0x1F)
        {
          continue;
        }
      }

      if ((v20 - 45) > 0x32 || ((1 << (v20 - 45)) & 0x4000000000003) == 0)
      {
        if (v20 >= 256)
        {
          if (!xmlCharInRange(v20, &xmlIsCombiningGroup) && !xmlCharInRange(v20, &xmlIsExtenderGroup))
          {
            break;
          }
        }

        else if (v20 != 183)
        {
          break;
        }
      }
    }
  }

  if (space && v20 <= 255)
  {
    do
    {
      if (v20 > 0x20)
      {
        break;
      }

      if (((1 << v20) & 0x100002600) == 0)
      {
        break;
      }

      v3 += len;
      v20 = xmlStringCurrentChar(0, v3, &len);
    }

    while (v20 < 256);
  }

  return v20 != 0;
}

int xmlValidateName(const xmlChar *value, int space)
{
  if (!value)
  {
    return -1;
  }

  v3 = value;
  if (space)
  {
    for (i = value; ; ++i)
    {
      v5 = *i;
      if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v5 = *value;
    i = value;
  }

  len = 0;
  if ((v5 & 0xFFFFFFDF) - 65 < 0x1A || v5 == 95 || v5 == 58)
  {
    do
    {
      v8 = i;
      v10 = *++i;
      v9 = v10;
      v11 = (v10 & 0xFFFFFFDF) - 65;
    }

    while (v10 - 48 < 0xA || v11 < 0x1A || v9 - 45 <= 0x32 && ((1 << (v9 - 45)) & 0x4000000002003) != 0);
    if (space)
    {
      v14 = 2;
      while (v9 <= 0x20 && ((1 << v9) & 0x100002600) != 0)
      {
        v9 = v8[v14++];
      }
    }

    if (!v9)
    {
      return 0;
    }
  }

  v15 = xmlStringCurrentChar(0, value, &len);
  v16 = v15;
  if (space)
  {
    if (v15 <= 255)
    {
      while (v16 <= 0x20 && ((1 << v16) & 0x100002600) != 0)
      {
        v3 += len;
        v16 = xmlStringCurrentChar(0, v3, &len);
        if (v16 >= 256)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_38;
    }
  }

  else if (v15 < 256)
  {
LABEL_38:
    if ((v16 - 192) < 0x17 || (v16 & 0xFFFFFFDF) - 65 < 0x1A || v16 > 247 || (v16 - 216) < 0x1F || v16 == 95 || v16 == 58)
    {
      goto LABEL_55;
    }

    return 1;
  }

LABEL_45:
  if (xmlCharInRange(v16, &xmlIsBaseCharGroup))
  {
    v17 = 0;
  }

  else
  {
    v17 = (v16 - 12321) >= 9;
  }

  if (v17 && v16 != 12295 && (v16 - 19968) >= 0x51A6)
  {
    return 1;
  }

  do
  {
    while (1)
    {
      do
      {
        do
        {
LABEL_55:
          while (1)
          {
            v3 += len;
            v20 = xmlStringCurrentChar(0, v3, &len);
            v21 = v20;
            if (v20 > 255)
            {
              break;
            }

            v22 = (v20 - 192) >= 0x17 && (v20 & 0xFFFFFFDF) - 65 >= 0x1A;
            if (v22 && (v20 - 48) >= 0xA && v20 <= 247 && (v20 - 216) >= 0x1F)
            {
              goto LABEL_79;
            }
          }

          if (xmlCharInRange(v20, &xmlIsBaseCharGroup))
          {
            v24 = 1;
          }

          else
          {
            v24 = v21 == 12295;
          }

          v26 = !v24 && (v21 - 19968) >= 0x51A6 && (v21 - 12321) >= 9;
        }

        while (!v26 || xmlCharInRange(v21, &xmlIsDigitGroup));
LABEL_79:
        ;
      }

      while ((v21 - 45) <= 0x32 && ((1 << (v21 - 45)) & 0x4000000002003) != 0);
      if (v21 >= 256)
      {
        break;
      }

      if (v21 != 183)
      {
        goto LABEL_89;
      }
    }
  }

  while (xmlCharInRange(v21, &xmlIsCombiningGroup) || xmlCharInRange(v21, &xmlIsExtenderGroup));
LABEL_89:
  if (space && v21 <= 255)
  {
    do
    {
      if (v21 > 0x20)
      {
        break;
      }

      if (((1 << v21) & 0x100002600) == 0)
      {
        break;
      }

      v3 += len;
      v21 = xmlStringCurrentChar(0, v3, &len);
    }

    while (v21 < 256);
  }

  return v21 != 0;
}

int xmlValidateNMToken(const xmlChar *value, int space)
{
  if (!value)
  {
    return -1;
  }

  v3 = value;
  if (space)
  {
    for (i = value; ; ++i)
    {
      v5 = *i;
      if (v5 > 0x20 || ((1 << v5) & 0x100002600) == 0)
      {
        break;
      }
    }
  }

  else
  {
    v5 = *value;
    i = value;
  }

  len = 0;
  v8 = v5 - 48 >= 0xA && (v5 & 0xFFFFFFDF) - 65 >= 0x1A;
  if (!v8 || ((v9 = v5 - 45, v10 = v9 > 0x32, v11 = (1 << v9) & 0x4000000002003, !v10) ? (v12 = v11 == 0) : (v12 = 1), !v12))
  {
    do
    {
      v13 = i;
      v15 = *++i;
      v14 = v15;
      v16 = (v15 & 0xFFFFFFDF) - 65;
    }

    while (v15 - 48 < 0xA || v16 < 0x1A || v14 - 45 <= 0x32 && ((1 << (v14 - 45)) & 0x4000000002003) != 0);
    if (space)
    {
      v19 = 2;
      while (v14 <= 0x20 && ((1 << v14) & 0x100002600) != 0)
      {
        v14 = v13[v19++];
      }
    }

    if (!v14)
    {
      return 0;
    }
  }

  v20 = xmlStringCurrentChar(0, value, &len);
  v21 = v20;
  if (space)
  {
    if (v20 <= 255)
    {
      while (v21 <= 0x20 && ((1 << v21) & 0x100002600) != 0)
      {
        v3 += len;
        v21 = xmlStringCurrentChar(0, v3, &len);
        if (v21 >= 256)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_44;
    }
  }

  else if (v20 < 256)
  {
LABEL_44:
    if ((v21 - 192) < 0x17 || (v21 & 0xFFFFFFDF) - 65 < 0x1A || (v21 - 48) < 0xA || v21 > 247 || (v21 - 216) < 0x1F)
    {
      goto LABEL_60;
    }

    v22 = 1;
    goto LABEL_102;
  }

LABEL_50:
  if (xmlCharInRange(v21, &xmlIsBaseCharGroup))
  {
    v23 = 1;
  }

  else
  {
    v23 = v21 == 12295;
  }

  v25 = !v23 && (v21 - 19968) >= 0x51A6 && (v21 - 12321) >= 9;
  if (!v25 || xmlCharInRange(v21, &xmlIsDigitGroup))
  {
    while (1)
    {
LABEL_60:
      while (1)
      {
        v3 += len;
        v26 = xmlStringCurrentChar(0, v3, &len);
        v27 = v26;
        if (v26 <= 255)
        {
          break;
        }

        if (xmlCharInRange(v26, &xmlIsBaseCharGroup))
        {
          v30 = 1;
        }

        else
        {
          v30 = v27 == 12295;
        }

        v32 = !v30 && (v27 - 19968) >= 0x51A6 && (v27 - 12321) >= 9;
        if (v32 && !xmlCharInRange(v27, &xmlIsDigitGroup))
        {
          goto LABEL_84;
        }
      }

      v28 = (v26 - 192) >= 0x17 && (v26 & 0xFFFFFFDF) - 65 >= 0x1A;
      if (v28 && (v26 - 48) >= 0xA && v26 <= 247 && (v26 - 216) >= 0x1F)
      {
LABEL_84:
        if ((v27 - 45) > 0x32 || ((1 << (v27 - 45)) & 0x4000000002003) == 0)
        {
          if (v27 >= 256)
          {
            if (!xmlCharInRange(v27, &xmlIsCombiningGroup) && !xmlCharInRange(v27, &xmlIsExtenderGroup))
            {
LABEL_94:
              if (space && v27 <= 255)
              {
                do
                {
                  if (v27 > 0x20)
                  {
                    break;
                  }

                  if (((1 << v27) & 0x100002600) == 0)
                  {
                    break;
                  }

                  v3 += len;
                  v27 = xmlStringCurrentChar(0, v3, &len);
                }

                while (v27 < 256);
              }

              return v27 != 0;
            }
          }

          else if (v27 != 183)
          {
            goto LABEL_94;
          }
        }
      }
    }
  }

  v22 = 0;
LABEL_102:
  if ((v21 - 45) <= 0x32 && ((1 << (v21 - 45)) & 0x4000000002003) != 0)
  {
    goto LABEL_60;
  }

  if (v22)
  {
    if (v21 == 183)
    {
      goto LABEL_60;
    }
  }

  else if (xmlCharInRange(v21, &xmlIsCombiningGroup) || xmlCharInRange(v21, &xmlIsExtenderGroup))
  {
    goto LABEL_60;
  }

  return 1;
}