int xmlStreamPop(xmlStreamCtxtPtr stream)
{
  result = -1;
  if (stream)
  {
    do
    {
      v3 = *(stream + 6);
      if (*(stream + 11) == v3)
      {
        *(stream + 11) = -1;
      }

      if (v3)
      {
        *(stream + 6) = --v3;
      }

      v4 = *(stream + 4);
      if (v4 >= 1)
      {
        v5 = v4 - 1;
        v6 = v4 + 1;
        v7 = (*(stream + 4) + 8 * v4 - 4);
        do
        {
          v8 = *v7;
          v7 -= 2;
          if (v8 <= v3)
          {
            break;
          }

          *(stream + 4) = v5--;
          --v6;
        }

        while (v6 > 1);
      }

      stream = *stream;
    }

    while (stream);
    return 0;
  }

  return result;
}

int xmlStreamWantsAnyNode(xmlStreamCtxtPtr stream)
{
  if (stream)
  {
    while ((*(*(stream + 1) + 25) & 0x40) == 0)
    {
      stream = *stream;
      if (!stream)
      {
        return stream;
      }
    }

    LODWORD(stream) = 1;
  }

  else
  {
    LODWORD(stream) = -1;
  }

  return stream;
}

xmlPatternPtr xmlPatterncompile(const xmlChar *pattern, xmlDict *dict, int flags, const xmlChar **namespaces)
{
  if (!pattern)
  {
    return 0;
  }

  v4 = pattern;
  v5 = *pattern;
  if (!*pattern)
  {
    return 0;
  }

  v7 = 0;
  v95 = flags & 6;
  v96 = 0;
  v93 = flags | 0x100;
  v94 = flags | 0x200;
  v99 = 1;
  do
  {
    v8 = 0;
    v9 = v7;
    if (v5)
    {
      while (v5 != 124)
      {
        v5 = v4[++v8];
        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v12 = xmlStrndup(v4, v8);
      v11 = v12;
      if (v12)
      {
        v10 = xmlNewPatParserContext(v12, dict, namespaces);
      }

      else
      {
        v10 = 0;
      }

      v4 += v8 + 1;
      if (!v10)
      {
        goto LABEL_237;
      }
    }

    else
    {
LABEL_7:
      v10 = xmlNewPatParserContext(v4, dict, namespaces);
      v11 = 0;
      v4 += v8;
      if (!v10)
      {
        goto LABEL_237;
      }
    }

    v13 = malloc_type_malloc(0x40uLL, 0x10F0040CA521CA4uLL);
    if (!v13)
    {
      goto LABEL_236;
    }

    v14 = v13;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    if (dict)
    {
      *(v13 + 1) = dict;
      xmlDictReference(dict);
    }

    v7 = v14;
    if (v9)
    {
      *(v14 + 16) = *(v9 + 2);
      *(v9 + 2) = v14;
      v7 = v9;
    }

    *(v14 + 32) = flags;
    *(v10 + 4) = v14;
    v15 = *v10;
    if (v95)
    {
      for (i = v15 + 1; ; ++i)
      {
        v17 = *v15;
        if (v17 > 0x2F)
        {
          break;
        }

        if (((1 << v17) & 0x100002600) == 0)
        {
          if (v17 == 47)
          {
            goto LABEL_141;
          }

          break;
        }

        *v10 = ++v15;
      }

      *(v14 + 32) = v94;
      if (*v15 == 46)
      {
        while (1)
        {
          *v10 = i;
          v18 = *i;
          if (v18 > 0x2F)
          {
            break;
          }

          if (((1 << v18) & 0x100002600) == 0)
          {
            if (*i)
            {
              if (v18 != 47)
              {
                break;
              }

              while (1)
              {
                *v10 = ++i;
                v22 = *i;
                if (v22 > 0x2F)
                {
                  break;
                }

                if (((1 << v22) & 0x100002600) == 0)
                {
                  if (v22 != 47)
                  {
                    break;
                  }

                  v23 = *(i - 1);
                  v24 = v23 > 0x20;
                  v25 = (1 << v23) & 0x100002600;
                  v26 = v24 || v25 == 0;
                  if (!v26 || xmlPatternAdd(v10, v14, 6, 0, 0))
                  {
                    goto LABEL_141;
                  }

                  v27 = *v10;
                  if (**v10)
                  {
                    goto LABEL_101;
                  }

                  while (1)
                  {
                    LODWORD(v22) = *v27;
                    if (v22 > 0x20 || ((1 << v22) & 0x100002600) == 0)
                    {
                      goto LABEL_81;
                    }

LABEL_101:
                    *v10 = ++v27;
                  }
                }
              }

LABEL_81:
              if (!v22)
              {
                break;
              }

              goto LABEL_82;
            }

            if (xmlPatternAdd(v10, v14, 2, 0, 0))
            {
              break;
            }

            goto LABEL_143;
          }

          ++i;
        }
      }

      else
      {
LABEL_82:
        xmlCompileStepPattern(v10);
        v35 = v10 + 1;
        if (!*(v10 + 4))
        {
LABEL_83:
          for (j = *v10; ; *v10 = j)
          {
            v37 = *j++;
            if (v37 > 0x2F)
            {
              break;
            }

            if (((1 << v37) & 0x100002600) == 0)
            {
              if (!*(j - 1))
              {
                goto LABEL_143;
              }

              if (v37 != 47)
              {
                goto LABEL_142;
              }

              if (xmlPatternAdd(v10, *(v10 + 4), 5, 0, 0))
              {
                goto LABEL_141;
              }

              v38 = *v10;
              if (**v10)
              {
                goto LABEL_93;
              }

              while (1)
              {
                v39 = *v38;
                if (v39 > 0x2F)
                {
                  goto LABEL_96;
                }

                if (((1 << v39) & 0x100002600) == 0)
                {
                  break;
                }

LABEL_93:
                *v10 = ++v38;
              }

              if (!*v38 || v39 == 47)
              {
                goto LABEL_141;
              }

LABEL_96:
              xmlCompileStepPattern(v10);
              if (!*(v10 + 4))
              {
                goto LABEL_83;
              }

              goto LABEL_141;
            }
          }

          goto LABEL_142;
        }
      }

LABEL_141:
      v35 = v10 + 1;
LABEL_142:
      *v35 = 1;
      goto LABEL_143;
    }

    for (k = v15 + 1; ; ++k)
    {
      v20 = *(k - 1);
      if (v20 > 0x2F)
      {
        break;
      }

      if (((1 << v20) & 0x100002600) == 0)
      {
        if (v20 == 46)
        {
          v21 = v94;
          goto LABEL_50;
        }

        v21 = v93;
        if (v20 == 47)
        {
          goto LABEL_50;
        }

        break;
      }

      *v10 = k;
    }

    v21 = v94;
    if ((flags & 1) == 0)
    {
      goto LABEL_51;
    }

LABEL_50:
    *(v14 + 32) = v21;
    LODWORD(v20) = *(k - 1);
LABEL_51:
    if (v20 == 46)
    {
      if (*k != 47 || k[1] != 47)
      {
        goto LABEL_112;
      }

      if (xmlPatternAdd(v10, v14, 6, 0, 0))
      {
        goto LABEL_143;
      }

      v29 = *v10;
      if (**v10)
      {
        v30 = v29 + 1;
        *v10 = v29 + 1;
        if (v29[1])
        {
          v30 = v29 + 2;
          *v10 = v29 + 2;
          if (v29[2])
          {
            v29 += 3;
            goto LABEL_105;
          }
        }

        v29 = v30;
      }

      while (1)
      {
        LODWORD(v20) = *v29;
        if (v20 > 0x20)
        {
          goto LABEL_66;
        }

        if (((1 << v20) & 0x100002600) == 0)
        {
          break;
        }

        ++v29;
LABEL_105:
        *v10 = v29;
      }

      if (!*v29)
      {
        goto LABEL_141;
      }
    }

    else if (v20 == 47)
    {
      v28 = v14;
      if (*k != 47)
      {
        goto LABEL_69;
      }

      if (xmlPatternAdd(v10, v14, 6, 0, 0))
      {
        goto LABEL_143;
      }

      v20 = *v10;
      if (!**v10)
      {
        goto LABEL_112;
      }

      *v10 = v20 + 1;
      if (!*(v20 + 1))
      {
        goto LABEL_112;
      }

      v29 = (v20 + 2);
      *v10 = v20 + 2;
      LODWORD(v20) = *(v20 + 2);
    }

    else
    {
      v29 = k - 1;
    }

LABEL_66:
    if (v20 != 64)
    {
      if (v20 != 47)
      {
        goto LABEL_112;
      }

      v28 = *(v10 + 4);
LABEL_69:
      if (xmlPatternAdd(v10, v28, 1, 0, 0))
      {
        goto LABEL_143;
      }

      v31 = *v10;
      if (**v10)
      {
        goto LABEL_110;
      }

      while (1)
      {
        v40 = *v31;
        if (v40 > 0x20)
        {
          goto LABEL_112;
        }

        if (((1 << v40) & 0x100002600) == 0)
        {
          break;
        }

LABEL_110:
        *v10 = ++v31;
      }

      if (*v31)
      {
LABEL_112:
        xmlCompileStepPattern(v10);
        v35 = v10 + 1;
        if (*(v10 + 4))
        {
          goto LABEL_143;
        }

        for (m = *v10; ; *v10 = m)
        {
          v34 = *m;
          if (v34 > 0x2F)
          {
            goto LABEL_140;
          }

          if (((1 << v34) & 0x100002600) == 0)
          {
            break;
          }

          ++m;
        }

        if (v34 == 47)
        {
          while (2)
          {
            v42 = *(v10 + 4);
            if (m[1] == 47)
            {
              if (xmlPatternAdd(v10, v42, 6, 0, 0))
              {
                goto LABEL_143;
              }

              v43 = *v10;
              if (**v10)
              {
                *v10 = v43 + 1;
                if (v43[1])
                {
                  v43 += 2;
                  goto LABEL_137;
                }

                ++v43;
              }

              while (1)
              {
                v46 = *v43;
                v24 = v46 > 0x20;
                v47 = (1 << v46) & 0x100002600;
                if (v24 || v47 == 0)
                {
                  break;
                }

                ++v43;
LABEL_137:
                *v10 = v43;
              }
            }

            else
            {
              if (xmlPatternAdd(v10, v42, 5, 0, 0))
              {
                goto LABEL_143;
              }

              v44 = *v10;
              if (**v10)
              {
                goto LABEL_129;
              }

              while (1)
              {
                v45 = *v44;
                if (v45 > 0x20)
                {
                  goto LABEL_138;
                }

                if (((1 << v45) & 0x100002600) == 0)
                {
                  break;
                }

LABEL_129:
                *v10 = ++v44;
              }

              if (!*v44)
              {
                goto LABEL_142;
              }
            }

LABEL_138:
            xmlCompileStepPattern(v10);
            if (*(v10 + 4))
            {
              goto LABEL_143;
            }

            m = *v10;
            LODWORD(v34) = **v10;
            if (v34 != 47)
            {
              break;
            }

            continue;
          }
        }

LABEL_140:
        if (!v34)
        {
          goto LABEL_143;
        }
      }

      goto LABEL_141;
    }

    *v10 = v29 + 1;
    xmlCompileAttributeTest(v10);
    for (n = *v10; ; *v10 = n)
    {
      v33 = *n++;
      if (v33 > 0x20)
      {
        break;
      }

      if (((1 << v33) & 0x100002600) == 0)
      {
        if (!*(n - 1))
        {
          goto LABEL_143;
        }

        break;
      }
    }

    xmlCompileStepPattern(v10);
    if (!*(v10 + 4))
    {
      LODWORD(v34) = **v10;
      goto LABEL_140;
    }

LABEL_143:
    if (*(v10 + 4))
    {
      v9 = v7;
LABEL_236:
      *&v88 = -1;
      *(&v88 + 1) = -1;
      v10[2] = v88;
      v10[3] = v88;
      *v10 = v88;
      v10[1] = v88;
      free(v10);
LABEL_237:
      if (!v9)
      {
        goto LABEL_239;
      }

      goto LABEL_238;
    }

    *&v49 = -1;
    *(&v49 + 1) = -1;
    v10[2] = v49;
    v10[3] = v49;
    *v10 = v49;
    v10[1] = v49;
    free(v10);
    if (!v99)
    {
      v99 = 0;
      goto LABEL_208;
    }

    if (v96 == 512)
    {
      v70 = *(v14 + 32);
      v99 = !(v70 & 0x100);
      v96 = 512;
      if ((v70 & 0x100) != 0)
      {
        goto LABEL_208;
      }
    }

    else if (v96 == 256)
    {
      v99 = (*(v14 + 32) & 0x200) == 0;
      v96 = 256;
      if ((*(v14 + 32) & 0x200) != 0)
      {
        goto LABEL_208;
      }
    }

    else
    {
      if (!v96)
      {
        v96 = *(v14 + 32) & 0x300;
      }

      v99 = 1;
    }

    v50 = *(v14 + 48);
    if (v50)
    {
      v51 = *(v14 + 36);
      if (v51 == 1 && *v50 == 2 && !*(v50 + 8) && !*(v50 + 16))
      {
        v87 = xmlNewStreamComp(0);
        if (v87)
        {
          *(v87 + 6) |= 0x4000u;
          *(v14 + 56) = v87;
        }

        goto LABEL_208;
      }

      v52 = xmlNewStreamComp(v51 / 2 + 1);
      if (!v52)
      {
        goto LABEL_208;
      }

      v53 = v52;
      v54 = *(v14 + 8);
      if (v54)
      {
        *v53 = v54;
        xmlDictReference(v54);
      }

      v55 = *(v14 + 32);
      if ((v55 & 0x100) != 0)
      {
        *(v53 + 24) |= 0x8000u;
      }

      LODWORD(v56) = *(v14 + 36);
      if (v56 >= 1)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v61 = -1;
        while (1)
        {
          while (1)
          {
            v62 = *(v14 + 48) + 24 * v57;
            v63 = *v62;
            if (*v62 != 1)
            {
              break;
            }

            if (v57)
            {
              goto LABEL_207;
            }

            v57 = 1;
            v59 = 1;
            if (v56 <= 1)
            {
              goto LABEL_194;
            }
          }

          if (v63 > 5)
          {
            switch(v63)
            {
              case 6:
                if ((v58 & 1) == 0)
                {
                  v67 = *(v53 + 24);
                  if ((v67 & 0x10000) == 0)
                  {
                    *(v53 + 24) = v67 | 0x10000;
                  }

                  v58 = 1;
                }

                break;
              case 7:
                v66 = *(v62 + 8);
                v64 = v53;
                v65 = 0;
                goto LABEL_190;
              case 8:
                v64 = v53;
                v65 = 0;
                v66 = 0;
                goto LABEL_190;
            }
          }

          else
          {
            switch(v63)
            {
              case 2:
                v65 = *(v62 + 8);
                v66 = *(v62 + 16);
                if (*(v62 + 8) != 0)
                {
                  goto LABEL_188;
                }

                if (v57 + 1 == v56 && (v58 & 1) != 0)
                {
                  *(v53 + 24) |= 0x4000u;
                  v92 = v61;
                  v60 = xmlStreamCompAddStep(v53, 0, 0, 100, v58 | 0x10u);
                  if (v60 < 0)
                  {
                    goto LABEL_207;
                  }

                  if (v92 == -1)
                  {
LABEL_171:
                    v58 = 0;
                  }

                  else
                  {
                    v58 = 0;
                    *(*(v53 + 16) + 32 * v92) |= 0x20u;
                  }

                  v61 = -1;
                }

                break;
              case 3:
                v65 = *(v62 + 8);
                v66 = *(v62 + 16);
LABEL_188:
                v64 = v53;
LABEL_190:
                v60 = xmlStreamCompAddStep(v64, v65, v66, 1, v58);
                if (v60 < 0)
                {
                  goto LABEL_207;
                }

                v58 = 0;
                v61 = v60;
                break;
              case 4:
                v60 = xmlStreamCompAddStep(v53, *(v62 + 8), *(v62 + 16), 2, v58 | 8u);
                if (v60 < 0)
                {
                  goto LABEL_207;
                }

                goto LABEL_171;
            }
          }

          ++v57;
          v56 = *(v14 + 36);
          if (v57 >= v56)
          {
            if (!v59)
            {
              v55 = *(v14 + 32);
              goto LABEL_202;
            }

LABEL_194:
            if (*(v53 + 8) <= v60)
            {
              goto LABEL_207;
            }

            v68 = *(v53 + 16);
            v68[8 * v60] |= 2u;
            v69 = 4;
LABEL_206:
            *v68 |= v69;
            *(v14 + 56) = v53;
            goto LABEL_208;
          }
        }
      }

      v60 = 0;
LABEL_202:
      if ((v55 & 7) != 0)
      {
        v71 = *(v53 + 8);
      }

      else
      {
        v85 = *(v53 + 24);
        if ((v85 & 0x10000) == 0)
        {
          *(v53 + 24) = v85 | 0x10000;
        }

        v71 = *(v53 + 8);
        if (v71 >= 1)
        {
          v86 = *(v53 + 16);
          if ((*v86 & 1) == 0)
          {
            *v86 |= 1u;
          }
        }
      }

      if (v71 > v60)
      {
        v68 = (*(v53 + 16) + 32 * v60);
        v69 = 2;
        goto LABEL_206;
      }

LABEL_207:
      xmlFreeStreamComp(v53);
    }

LABEL_208:
    LODWORD(v72) = *(v14 + 36);
    if (v72 >= 1)
    {
      v73 = *(v14 + 48);
      if (*v73 == 6)
      {
        v72 = (v72 - 1);
        if (v72)
        {
          v74 = v73 + 6;
          v75 = v72;
          do
          {
            *(v74 - 1) = *(v74 + 2);
            *(v74 - 6) = *v74;
            v74 += 6;
            --v75;
          }

          while (v75);
        }

        *(v14 + 36) = v72;
      }
    }

    if (v72 >= *(v14 + 40))
    {
      if ((xmlPatternGrow(v14) & 0x80000000) == 0)
      {
        LODWORD(v72) = *(v14 + 36);
        goto LABEL_217;
      }

      v9 = v7;
LABEL_238:
      xmlFreePatternList(v9);
LABEL_239:
      if (v11)
      {
        free(v11);
      }

      return 0;
    }

LABEL_217:
    v76 = *(v14 + 48);
    if (v72 <= 1)
    {
      v78 = v72;
    }

    else
    {
      v77 = 0;
      v78 = v72;
      v79 = (v76 + 8);
      v80 = v72 - 2;
      v81 = v76 + 24 * v72 - 24;
      do
      {
        v82 = *v79;
        *v79 = *(v81 + 8);
        *(v81 + 8) = v82;
        v83 = *(v79 - 2);
        *(v79 - 2) = *v81;
        *v81 = v83;
        v81 -= 24;
        ++v77;
        v79 = (v79 + 24);
        v24 = v80-- <= v77;
      }

      while (!v24);
    }

    v84 = v76 + 24 * v78;
    *(v84 + 8) = 0;
    *(v84 + 16) = 0;
    *(v14 + 36) = v72 + 1;
    *v84 = 0;
    if (v11)
    {
      free(v11);
    }

    v5 = *v4;
  }

  while (*v4);
  if (!v99)
  {
    v90 = v7;
    do
    {
      v91 = *(v90 + 7);
      if (v91)
      {
        xmlFreeStreamComp(v91);
        *(v90 + 7) = 0;
      }

      v90 = *(v90 + 2);
    }

    while (v90);
  }

  return v7;
}

_OWORD *xmlNewPatParserContext(_OWORD *result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v5 = result;
    result = malloc_type_malloc(0x40uLL, 0x10F0040874515DCuLL);
    if (result)
    {
      result[2] = 0u;
      result[3] = 0u;
      result[1] = 0u;
      *(result + 3) = a2;
      *result = v5;
      *(result + 1) = v5;
      if (a3)
      {
        v6 = -1;
        v7 = a3;
        do
        {
          v8 = *v7;
          v7 += 2;
          ++v6;
        }

        while (v8);
        *(result + 14) = v6;
      }

      *(result + 6) = a3;
    }
  }

  return result;
}

void xmlFreeStreamComp(xmlDictPtr *a1)
{
  v2 = a1[2];
  if (v2)
  {
    free(v2);
  }

  if (*a1)
  {
    xmlDictFree(*a1);
  }

  free(a1);
}

xmlStreamCtxtPtr xmlPatternGetStreamCtxt(xmlPatternPtr comp)
{
  if (!comp)
  {
    return 0;
  }

  v1 = comp;
  if (*(comp + 7))
  {
    v2 = 0;
    while (1)
    {
      v3 = *(v1 + 7);
      if (!v3)
      {
        break;
      }

      v4 = malloc_type_malloc(0x30uLL, 0x1030040FBB98E00uLL);
      if (!v4)
      {
        break;
      }

      *(v4 + 28) = 0u;
      *v4 = 0u;
      v4[1] = 0u;
      *(v4 + 1) = v3;
      v5 = v4;
      *(v4 + 11) = -1;
      if (v2)
      {
        *v4 = *v2;
        *v2 = v4;
        v5 = v2;
      }

      *(v4 + 10) = *(v1 + 8);
      v1 = *(v1 + 2);
      v2 = v5;
      if (!v1)
      {
        return v5;
      }
    }

    xmlFreeStreamCtxt(v2);
  }

  return 0;
}

int xmlPatternStreamable(xmlPatternPtr comp)
{
  if (!comp)
  {
    return -1;
  }

  while (*(comp + 7))
  {
    comp = *(comp + 2);
    if (!comp)
    {
      return 1;
    }
  }

  return 0;
}

int xmlPatternMaxDepth(xmlPatternPtr comp)
{
  if (comp)
  {
    v1 = comp;
    result = 0;
    while (1)
    {
      v3 = *(v1 + 7);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (v4 >= 1)
      {
        v5 = *(v3 + 16);
        v6 = v4;
        do
        {
          v7 = *v5;
          v5 += 32;
          if (v7)
          {
            return -2;
          }
        }

        while (--v6);
      }

      if (v4 > result)
      {
        result = v4;
      }

      v1 = *(v1 + 2);
      if (!v1)
      {
        return result;
      }
    }
  }

  return -1;
}

int xmlPatternMinDepth(xmlPatternPtr comp)
{
  if (comp)
  {
    v1 = comp;
    result = 12345678;
    while (1)
    {
      v3 = *(v1 + 7);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (v4 < result)
      {
        result = v4;
      }

      if (result)
      {
        v1 = *(v1 + 2);
        if (v1)
        {
          continue;
        }
      }

      return result;
    }
  }

  return -1;
}

int xmlPatternFromRoot(xmlPatternPtr comp)
{
  if (comp)
  {
    while (*(comp + 7))
    {
      if (*(comp + 33))
      {
        LODWORD(comp) = 1;
        return comp;
      }

      comp = *(comp + 2);
      if (!comp)
      {
        return comp;
      }
    }
  }

  LODWORD(comp) = -1;
  return comp;
}

uint64_t xmlStreamCtxtAddState(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 16);
  if (v6 < 1)
  {
LABEL_5:
    v9 = *(a1 + 20);
    if (v6 < v9)
    {
      v10 = *(a1 + 32);
LABEL_16:
      v10[2 * v6] = a2;
      v12 = *(a1 + 16);
      *(a1 + 16) = v12 + 1;
      v10[(2 * v12) | 1] = a3;
      return (*(a1 + 16) - 1);
    }

    if (v9 < 1)
    {
      v11 = 4;
    }

    else
    {
      if (v9 > 0x3B9AC9FF)
      {
        return 0xFFFFFFFFLL;
      }

      if (1000000000 - ((v9 + 1) >> 1) >= v9)
      {
        v11 = v9 + ((v9 + 1) >> 1);
      }

      else
      {
        v11 = 1000000000;
      }
    }

    v10 = malloc_type_realloc(*(a1 + 32), 8 * v11, 0x100004052888210uLL);
    if (v10)
    {
      *(a1 + 32) = v10;
      *(a1 + 20) = v11;
      LODWORD(v6) = *(a1 + 16);
      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  v8 = *(a1 + 32);
  while ((*v8 & 0x80000000) == 0)
  {
    ++result;
    v8 += 2;
    if (v6 == result)
    {
      goto LABEL_5;
    }
  }

  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t xmlPatternAdd(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 36);
  if (v9 < *(a2 + 40))
  {
    goto LABEL_4;
  }

  if ((xmlPatternGrow(a2) & 0x80000000) == 0)
  {
    v9 = *(a2 + 36);
LABEL_4:
    result = 0;
    v12 = *(a2 + 48) + 24 * v9;
    *v12 = a3;
    *(v12 + 8) = a4;
    *(v12 + 16) = a5;
    *(a2 + 36) = v9 + 1;
    return result;
  }

  result = 0xFFFFFFFFLL;
  *(a1 + 16) = -1;
  return result;
}

void xmlCompileStepPattern(uint64_t a1)
{
  v1 = a1;
  for (i = *a1 + 1; ; ++i)
  {
    v3 = *(i - 1) - 9;
    if (v3 > 0x37)
    {
      goto LABEL_12;
    }

    if (((1 << (*(i - 1) - 9)) & 0x800013) == 0)
    {
      break;
    }

    *a1 = i;
  }

  if (v3 != 37)
  {
    if (v3 == 55)
    {
      if ((*(*(a1 + 32) + 32) & 2) == 0)
      {
        *a1 = i;
LABEL_9:

        xmlCompileAttributeTest(v1);
        return;
      }

LABEL_71:
      *(v1 + 4) = 1;
      return;
    }

LABEL_12:
    v4 = xmlPatScanNCName(a1);
    v5 = *v1;
    v6 = **v1;
    if (v4)
    {
      v7 = v4;
      if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
      {
        v13 = 0;
      }

      else
      {
        v9 = (v5 + 1);
        while (v6 <= 0x20 && ((1 << v6) & 0x100002600) != 0)
        {
          *v1 = v9;
          v10 = *v9++;
          v6 = v10;
        }

        v5 = (v9 - 1);
        v13 = 1;
      }

      if (v6 != 42)
      {
        if (v6 != 58)
        {
          if (!xmlPatternAdd(v1, v1[4], 2, v4, 0))
          {
            return;
          }

LABEL_64:
          if (!v7)
          {
            return;
          }

          goto LABEL_65;
        }

        *v1 = v5 + 1;
        v14 = *(v5 + 1);
        if (v14 == 58)
        {
          *v1 = v5 + 2;
          if (xmlStrEqual(v4, "child"))
          {
            if (!*(v1[4] + 8))
            {
              free(v7);
            }

            v15 = xmlPatScanName(v1);
            v16 = *v1;
            v17 = **v1;
            if (v15)
            {
              v7 = v15;
              if (v17 != 58)
              {
                if (!xmlPatternAdd(v1, v1[4], 2, v15, 0))
                {
                  return;
                }

                goto LABEL_65;
              }

              *v1 = v16 + 1;
              v18 = *(v16 + 1);
              if (v18 <= 0x20 && ((1 << v18) & 0x100002600) != 0)
              {
                *(v1 + 4) = 1;
LABEL_65:
                if (!*(v1[4] + 8))
                {

                  free(v7);
                }

                return;
              }

              v21 = xmlPatScanName(v1);
              if (*v7 != 120 || v7[1] != 109 || v7[2] != 108 || v7[3])
              {
                if (*(v1 + 14) >= 1)
                {
                  v22 = 0;
                  v23 = 0;
                  while (!xmlStrEqual(*(v1[6] + v22 + 8), v7))
                  {
                    ++v23;
                    v22 += 16;
                    if (v23 >= *(v1 + 14))
                    {
                      goto LABEL_85;
                    }
                  }

LABEL_86:
                  v26 = *(v1[4] + 8);
                  v27 = v1[6];
                  if (v26)
                  {
                    v28 = xmlDictLookup(v26, *&v27[v22], -1);
                  }

                  else
                  {
                    v28 = xmlStrdup(*&v27[v22]);
                  }

                  v25 = v28;
                  goto LABEL_90;
                }

                goto LABEL_84;
              }

              goto LABEL_107;
            }

            if (v17 != 42)
            {
              goto LABEL_71;
            }

            v19 = (v16 + 1);
            goto LABEL_39;
          }

          if (xmlStrEqual(v7, "attribute"))
          {
            v24 = v1[4];
            if (!*(v24 + 1))
            {
              free(v7);
              v24 = v1[4];
            }

            if ((v24[32] & 2) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (v14 == 32)
          {
            v20 = 1;
          }

          else
          {
            v20 = v13;
          }

          if ((v20 & 1) == 0 && (v14 > 0xD || ((1 << v14) & 0x2600) == 0))
          {
            v21 = xmlPatScanName(v1);
            if (*v7 != 120 || v7[1] != 109 || v7[2] != 108 || v7[3])
            {
              if (*(v1 + 14) >= 1)
              {
                v22 = 0;
                v23 = 0;
                while (!xmlStrEqual(*(v1[6] + v22 + 8), v7))
                {
                  ++v23;
                  v22 += 16;
                  if (v23 >= *(v1 + 14))
                  {
                    goto LABEL_85;
                  }
                }

                goto LABEL_86;
              }

LABEL_84:
              LODWORD(v23) = 0;
LABEL_85:
              v25 = 0;
LABEL_90:
              if (v23 >= *(v1 + 14))
              {
                goto LABEL_100;
              }

              goto LABEL_91;
            }

LABEL_107:
            v29 = *(v1[4] + 8);
            if (v29)
            {
              v30 = xmlDictLookup(v29, "http://www.w3.org/XML/1998/namespace", -1);
            }

            else
            {
              v30 = xmlStrdup("http://www.w3.org/XML/1998/namespace");
            }

            v25 = v30;
LABEL_91:
            if (!*(v1[4] + 8))
            {
              free(v7);
            }

            if (v21)
            {
              if (!xmlPatternAdd(v1, v1[4], 2, v21, v25))
              {
                return;
              }

              v7 = 0;
              goto LABEL_101;
            }

            if (**v1 == 42)
            {
              ++*v1;
              if (!xmlPatternAdd(v1, v1[4], 7, v25, 0))
              {
                return;
              }

              v7 = 0;
              v21 = 0;
              goto LABEL_101;
            }

            v7 = 0;
            v21 = 0;
LABEL_100:
            *(v1 + 4) = 1;
LABEL_101:
            if (v25 && !*(v1[4] + 8))
            {
              free(v25);
            }

            if (v21 && !*(v1[4] + 8))
            {
              free(v21);
            }

            goto LABEL_64;
          }
        }
      }

      *(v1 + 4) = 1;
      goto LABEL_64;
    }

    if (v6 != 42)
    {
      goto LABEL_71;
    }

    v19 = (v5 + 1);
LABEL_39:
    *v1 = v19;
    v11 = v1[4];
    a1 = v1;
    v12 = 8;
    goto LABEL_22;
  }

  *a1 = i;
  v11 = *(a1 + 32);
  v12 = 2;
LABEL_22:

  xmlPatternAdd(a1, v11, v12, 0, 0);
}

uint64_t xmlPatternGrow(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 < 1)
  {
    v3 = 10;
  }

  else
  {
    if (v2 > 0x3B9AC9FF)
    {
      return 0xFFFFFFFFLL;
    }

    if (1000000000 - ((v2 + 1) >> 1) >= v2)
    {
      v3 = v2 + ((v2 + 1) >> 1);
    }

    else
    {
      v3 = 1000000000;
    }
  }

  v4 = malloc_type_realloc(*(a1 + 48), 24 * v3, 0x1050040C62AA19FuLL);
  if (v4)
  {
    v5 = v4;
    result = 0;
    *(a1 + 48) = v5;
    *(a1 + 40) = v3;
    return result;
  }

  return 0xFFFFFFFFLL;
}

void xmlCompileAttributeTest(uint64_t *a1)
{
  for (i = *a1 + 1; ; ++i)
  {
    v3 = *(i - 1);
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    if (v4 || v5 == 0)
    {
      break;
    }

    *a1 = i;
  }

  v7 = xmlPatScanNCName(a1);
  v8 = *a1;
  v9 = **a1;
  if (v7)
  {
    v10 = v7;
    if (v9 == 58)
    {
      *a1 = (v8 + 1);
      v11 = v8[1];
      v4 = v11 > 0x20;
      v12 = (1 << v11) & 0x100002600;
      if (!v4 && v12 != 0)
      {
        if (!*(a1[4] + 8))
        {
          free(v7);
        }

        goto LABEL_19;
      }

      v15 = xmlPatScanName(a1);
      if (*v10 == 120 && v10[1] == 109 && v10[2] == 108 && !v10[3])
      {
        v22 = *(a1[4] + 8);
        if (v22)
        {
          v23 = xmlDictLookup(v22, "http://www.w3.org/XML/1998/namespace", -1);
        }

        else
        {
          v23 = xmlStrdup("http://www.w3.org/XML/1998/namespace");
        }

        v18 = v23;
      }

      else
      {
        if (*(a1 + 14) < 1)
        {
          LODWORD(v17) = 0;
LABEL_34:
          v18 = 0;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          while (!xmlStrEqual(*(a1[6] + v16 + 8), v10))
          {
            ++v17;
            v16 += 16;
            if (v17 >= *(a1 + 14))
            {
              goto LABEL_34;
            }
          }

          v19 = *(a1[4] + 8);
          v20 = a1[6];
          if (v19)
          {
            v21 = xmlDictLookup(v19, *&v20[v16], -1);
          }

          else
          {
            v21 = xmlStrdup(*&v20[v16]);
          }

          v18 = v21;
        }

        if (v17 >= *(a1 + 14))
        {
          if (!*(a1[4] + 8))
          {
            free(v10);
          }

          goto LABEL_51;
        }
      }

      if (!*(a1[4] + 8))
      {
        free(v10);
      }

      if (v15)
      {
        if (!xmlPatternAdd(a1, a1[4], 4, v15, v18))
        {
          return;
        }

        goto LABEL_52;
      }

      if (**a1 == 42)
      {
        ++*a1;
        v15 = 0;
        if (!xmlPatternAdd(a1, a1[4], 4, 0, v18))
        {
          return;
        }

        goto LABEL_52;
      }

      v15 = 0;
LABEL_51:
      *(a1 + 4) = 1;
LABEL_52:
      if (v18 && !*(a1[4] + 8))
      {
        free(v18);
      }

      if (v15 && !*(a1[4] + 8))
      {

        free(v15);
      }

      return;
    }

    v14 = a1[4];

    xmlPatternAdd(a1, v14, 4, v7, 0);
  }

  else
  {
    if (v9 != 42)
    {
LABEL_19:
      *(a1 + 4) = 1;
      return;
    }

    if (!xmlPatternAdd(a1, a1[4], 4, 0, 0) && **a1)
    {
      ++*a1;
    }
  }
}

void *xmlPatScanNCName(const xmlChar **a1)
{
  len = 0;
  v2 = *a1;
  v3 = *a1;
  while (1)
  {
    v4 = *v3;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    *a1 = ++v3;
    LODWORD(v2) = v2 + 1;
  }

  v8 = xmlStringCurrentChar(0, v3, &len);
  v9 = v8;
  if (v8 > 255)
  {
    if (xmlCharInRange(v8, &xmlIsBaseCharGroup) || v9 == 12295 || (v9 - 40870) > 0xFFFFAE59 || (v9 - 12330) >= 0xFFFFFFF7)
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
  for (i = v3; ; v9 = xmlStringCurrentChar(0, i, &len))
  {
    if (v9 > 255)
    {
      if (xmlCharInRange(v9, &xmlIsBaseCharGroup))
      {
        v11 = 1;
      }

      else
      {
        v11 = v9 == 12295;
      }

      v13 = !v11 && (v9 - 19968) >= 0x51A6 && (v9 - 12321) >= 9;
      if (!v13 || xmlCharInRange(v9, &xmlIsDigitGroup))
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

  if (xmlCharInRange(v9, &xmlIsCombiningGroup) || xmlCharInRange(v9, &xmlIsExtenderGroup))
  {
    goto LABEL_37;
  }

LABEL_43:
  v14 = a1[3];
  if (v14)
  {
    result = xmlDictLookup(v14, v3, i - v2);
  }

  else
  {
    result = xmlStrndup(v3, i - v2);
  }

  *a1 = i;
  return result;
}

void *xmlPatScanName(const xmlChar **a1)
{
  len = 0;
  v2 = *a1;
  v3 = *a1;
  while (1)
  {
    v4 = *v3;
    v5 = v4 > 0x20;
    v6 = (1 << v4) & 0x100002600;
    if (v5 || v6 == 0)
    {
      break;
    }

    *a1 = ++v3;
    LODWORD(v2) = v2 + 1;
  }

  v8 = xmlStringCurrentChar(0, v3, &len);
  v9 = v8;
  if (v8 > 255)
  {
    if (!xmlCharInRange(v8, &xmlIsBaseCharGroup) && v9 != 12295 && (v9 - 19968) >= 0x51A6 && (v9 - 12321) >= 9)
    {
      return 0;
    }
  }

  else if ((v8 - 192) >= 0x17 && (v8 & 0xFFFFFFDF) - 65 >= 0x1A && v8 <= 247 && (v8 - 216) >= 0x1F && v8 != 95 && v8 != 58)
  {
    return 0;
  }

  for (i = v3; ; v9 = xmlStringCurrentChar(0, i, &len))
  {
    if (v9 > 255)
    {
      if (xmlCharInRange(v9, &xmlIsBaseCharGroup))
      {
        v11 = 1;
      }

      else
      {
        v11 = v9 == 12295;
      }

      v13 = !v11 && (v9 - 19968) >= 0x51A6 && (v9 - 12321) >= 9;
      if (!v13 || xmlCharInRange(v9, &xmlIsDigitGroup))
      {
        goto LABEL_38;
      }
    }

    else if ((v9 - 192) < 0x17 || (v9 & 0xFFFFFFDF) - 65 < 0x1A || (v9 - 48) < 0xA || v9 > 247 || (v9 - 216) < 0x1F)
    {
      goto LABEL_38;
    }

    if ((v9 - 45) <= 0x32 && ((1 << (v9 - 45)) & 0x4000000000003) != 0)
    {
      goto LABEL_38;
    }

    if (v9 >= 256)
    {
      break;
    }

    if (v9 != 183)
    {
      goto LABEL_44;
    }

LABEL_38:
    i += len;
  }

  if (xmlCharInRange(v9, &xmlIsCombiningGroup) || xmlCharInRange(v9, &xmlIsExtenderGroup))
  {
    goto LABEL_38;
  }

LABEL_44:
  v14 = a1[3];
  if (v14)
  {
    result = xmlDictLookup(v14, v3, i - v2);
  }

  else
  {
    result = xmlStrndup(v3, i - v2);
  }

  *a1 = i;
  return result;
}

_OWORD *xmlNewStreamComp(int a1)
{
  if (a1 <= 4)
  {
    v1 = 4;
  }

  else
  {
    v1 = a1;
  }

  v2 = malloc_type_malloc(0x20uLL, 0x10200402CFBC8ADuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0u;
    v2[1] = 0u;
    v4 = malloc_type_malloc(32 * v1, 0x1050040095E78ADuLL);
    *(v3 + 2) = v4;
    if (v4)
    {
      *(v3 + 2) = 0;
      *(v3 + 3) = v1;
    }

    else
    {
      free(v3);
      return 0;
    }
  }

  return v3;
}

uint64_t xmlStreamCompAddStep(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  result = *(a1 + 8);
  v11 = *(a1 + 12);
  if (result < v11)
  {
    v12 = *(a1 + 16);
LABEL_11:
    *(a1 + 8) = result + 1;
    v15 = &v12[32 * result];
    *v15 = a5;
    *(v15 + 1) = a2;
    *(v15 + 2) = a3;
    *(v15 + 6) = a4;
    return result;
  }

  if (v11 < 1)
  {
    v13 = 4;
  }

  else
  {
    if (v11 > 0x3B9AC9FF)
    {
      return 0xFFFFFFFFLL;
    }

    if (1000000000 - ((v11 + 1) >> 1) >= v11)
    {
      v13 = v11 + ((v11 + 1) >> 1);
    }

    else
    {
      v13 = 1000000000;
    }
  }

  v14 = malloc_type_realloc(*(a1 + 16), 32 * v13, 0x1050040095E78ADuLL);
  if (v14)
  {
    v12 = v14;
    *(a1 + 16) = v14;
    *(a1 + 12) = v13;
    result = *(a1 + 8);
    goto LABEL_11;
  }

  return 0xFFFFFFFFLL;
}

void xmlRelaxNGFree(xmlRelaxNGPtr schema)
{
  if (schema)
  {
    v2 = *(schema + 1);
    if (v2)
    {
      xmlRelaxNGFreeGrammar(v2);
    }

    v3 = *(schema + 2);
    if (v3)
    {
      xmlFreeDoc(v3);
    }

    v4 = *(schema + 6);
    if (v4)
    {
      do
      {
        v5 = *v4;
        xmlRelaxNGFreeDocument(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(schema + 7);
    if (v6)
    {
      do
      {
        v7 = *v6;
        xmlRelaxNGFreeInclude(v6);
        v6 = v7;
      }

      while (v7);
    }

    v8 = *(schema + 9);
    if (v8)
    {
      if (*(schema + 16) >= 1)
      {
        v9 = 0;
        do
        {
          xmlRelaxNGFreeDefine(*(*(schema + 9) + 8 * v9++));
        }

        while (v9 < *(schema + 16));
        v8 = *(schema + 9);
      }

      free(v8);
    }

    free(schema);
  }
}

void xmlRelaxNGFreeGrammar(void *a1)
{
  if (a1[1])
  {
    xmlRelaxNGFreeGrammar();
  }

  if (a1[2])
  {
    xmlRelaxNGFreeGrammar();
  }

  v2 = a1[7];
  if (v2)
  {
    xmlHashFree(v2, 0);
  }

  v3 = a1[6];
  if (v3)
  {
    xmlHashFree(v3, 0);
  }

  free(a1);
}

void xmlRelaxNGFreeDefine(void *a1)
{
  if (!a1)
  {
    return;
  }

  if (*a1 == 7)
  {
    if (a1[9])
    {
      v2 = a1[5];
      if (v2)
      {
        v3 = *(v2 + 48);
        if (v3)
        {
          v3(*(v2 + 8));
        }
      }
    }
  }

  v4 = a1[5];
  if (v4)
  {
    v5 = *a1;
    if (*a1 != 19)
    {
      goto LABEL_11;
    }

    xmlRelaxNGFreePartition(v4);
    v4 = a1[5];
    if (v4)
    {
      v5 = *a1;
LABEL_11:
      if (v5 == 17)
      {
        xmlHashFree(v4, 0);
      }
    }
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    free(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    xmlRegFreeRegexp(v9);
  }

  free(a1);
}

int xmlRelaxParserSetFlag(xmlRelaxNGParserCtxtPtr ctxt, int flag)
{
  if (!ctxt)
  {
    return -1;
  }

  if (flag)
  {
    *(ctxt + 62) |= 1u;
    --flag;
  }

  if ((flag & 2) != 0)
  {
    *(ctxt + 62) |= 2u;
    flag -= 2;
  }

  if (flag)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

int xmlRelaxNGInitTypes(void)
{
  if (xmlRelaxNGTypeInitialized)
  {
    return 0;
  }

  xmlRelaxNGRegisteredTypes = xmlHashCreate(10);
  if (xmlRelaxNGRegisteredTypes)
  {
    xmlRelaxNGRegisterTypeLibrary("http://www.w3.org/2001/XMLSchema-datatypes", xmlRelaxNGSchemaTypeHave, xmlRelaxNGSchemaTypeCheck, xmlRelaxNGSchemaTypeCompare, xmlRelaxNGSchemaFacetCheck, xmlRelaxNGSchemaFreeValue);
    xmlRelaxNGRegisterTypeLibrary("http://relaxng.org/ns/structure/1.0", xmlRelaxNGDefaultTypeHave, xmlRelaxNGDefaultTypeCheck, xmlRelaxNGDefaultTypeCompare, 0, 0);
    result = 0;
    xmlRelaxNGTypeInitialized = 1;
  }

  else
  {
    v1 = *__xmlGenericError();
    v2 = __xmlGenericErrorContext();
    v1(*v2, "Failed to allocate sh table for Relax-NG types\n");
    return -1;
  }

  return result;
}

void xmlRelaxNGRegisterTypeLibrary(xmlChar *name, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a4 && a3 && name && xmlRelaxNGRegisteredTypes)
  {
    if (xmlHashLookup(xmlRelaxNGRegisteredTypes, name))
    {
      v12 = *__xmlGenericError();
      v13 = __xmlGenericErrorContext();
      v12(*v13, "Relax-NG types library '%s' already registered\n", name);
    }

    else
    {
      v14 = malloc_type_malloc(0x38uLL, 0xD0040DBC6D676uLL);
      if (v14)
      {
        v15 = v14;
        v14[6] = 0;
        *(v14 + 1) = 0u;
        *(v14 + 2) = 0u;
        *v14 = 0u;
        *v14 = xmlStrdup(name);
        v15[1] = 0;
        v15[2] = a2;
        v15[3] = a3;
        v15[4] = a4;
        v15[5] = a5;
        v15[6] = a6;
        if (xmlHashAddEntry(xmlRelaxNGRegisteredTypes, name, v15) < 0)
        {
          v16 = *__xmlGenericError();
          v17 = __xmlGenericErrorContext();
          v16(*v17, "Relax-NG types library failed to register '%s'\n", name);
          if (*v15)
          {
            free(*v15);
          }

          free(v15);
        }
      }

      else
      {

        xmlRngVErrMemory(0, "adding types library\n");
      }
    }
  }
}

uint64_t xmlRelaxNGSchemaTypeHave(int a1, xmlChar *name)
{
  if (name)
  {
    return xmlSchemaGetPredefinedType(name, "http://www.w3.org/2001/XMLSchema") != 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t xmlRelaxNGSchemaTypeCheck(int a1, xmlChar *name, const xmlChar *a3, xmlSchemaValPtr *a4, xmlNode *a5)
{
  result = 0xFFFFFFFFLL;
  if (name && a3)
  {
    PredefinedType = xmlSchemaGetPredefinedType(name, "http://www.w3.org/2001/XMLSchema");
    if (PredefinedType)
    {
      v10 = xmlSchemaValPredefTypeNode(PredefinedType, a3, a4, a5);
      if (v10 >= 1)
      {
        v11 = 0;
      }

      else
      {
        v11 = -1;
      }

      if (!v10)
      {
        v11 = 1;
      }

      if (v10 == 2)
      {
        return 2;
      }

      else
      {
        return v11;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t xmlRelaxNGSchemaTypeCompare(int a1, xmlChar *name, const xmlChar *a3, xmlNode *a4, xmlSchemaVal *a5, const xmlChar *a6, xmlNode *a7)
{
  y = 0;
  val = 0;
  result = 0xFFFFFFFFLL;
  if (name && a3 && a6)
  {
    PredefinedType = xmlSchemaGetPredefinedType(name, "http://www.w3.org/2001/XMLSchema");
    if (!PredefinedType)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = PredefinedType;
    if (a5)
    {
      val = a5;
    }

    else
    {
      v15 = xmlSchemaValPredefTypeNode(PredefinedType, a3, &val, a4);
      result = 0xFFFFFFFFLL;
      if (v15 || !val)
      {
        return result;
      }
    }

    if (xmlSchemaValPredefTypeNode(v14, a6, &y, a7))
    {
      if (val != a5)
      {
        xmlSchemaFreeValue(val);
      }

      return 0xFFFFFFFFLL;
    }

    v16 = xmlSchemaCompareValues(val, y);
    if (val != a5)
    {
      xmlSchemaFreeValue(val);
    }

    xmlSchemaFreeValue(y);
    if (v16 == -2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v16 == 0;
    }
  }

  return result;
}

uint64_t xmlRelaxNGSchemaFacetCheck(int a1, xmlChar *name, const xmlChar *a3, const xmlChar *a4, const xmlChar *a5, xmlSchemaVal *a6)
{
  result = 0xFFFFFFFFLL;
  if (name && a5)
  {
    PredefinedType = xmlSchemaGetPredefinedType(name, "http://www.w3.org/2001/XMLSchema");
    if (!PredefinedType)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = PredefinedType;
    v14 = xmlSchemaNewFacet();
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = v14;
    if (xmlStrEqual(a3, "minInclusive"))
    {
      v16 = 1000;
    }

    else if (xmlStrEqual(a3, "minExclusive"))
    {
      v16 = 1001;
    }

    else if (xmlStrEqual(a3, "maxInclusive"))
    {
      v16 = 1002;
    }

    else if (xmlStrEqual(a3, "maxExclusive"))
    {
      v16 = 1003;
    }

    else if (xmlStrEqual(a3, "totalDigits"))
    {
      v16 = 1004;
    }

    else if (xmlStrEqual(a3, "fractionDigits"))
    {
      v16 = 1005;
    }

    else if (xmlStrEqual(a3, "pattern"))
    {
      v16 = 1006;
    }

    else if (xmlStrEqual(a3, "enumeration"))
    {
      v16 = 1007;
    }

    else if (xmlStrEqual(a3, "whiteSpace"))
    {
      v16 = 1008;
    }

    else if (xmlStrEqual(a3, "length"))
    {
      v16 = 1009;
    }

    else if (xmlStrEqual(a3, "maxLength"))
    {
      v16 = 1010;
    }

    else
    {
      if (!xmlStrEqual(a3, "minLength"))
      {
LABEL_30:
        xmlSchemaFreeFacet(v15);
        return 0xFFFFFFFFLL;
      }

      v16 = 1011;
    }

    v15->type = v16;
    v15->value = a4;
    if (xmlSchemaCheckFacet(v15, v13, 0, name))
    {
      goto LABEL_30;
    }

    v17 = xmlSchemaValidateFacet(v13, v15, a5, a6);
    xmlSchemaFreeFacet(v15);
    if (v17)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t xmlRelaxNGDefaultTypeHave(int a1, xmlChar *str1)
{
  if (!str1)
  {
    return 0xFFFFFFFFLL;
  }

  if (xmlStrEqual(str1, "string"))
  {
    return 1;
  }

  return xmlStrEqual(str1, "token") != 0;
}

uint64_t xmlRelaxNGDefaultTypeCheck(int a1, xmlChar *str1, uint64_t a3)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (xmlStrEqual(str1, "string"))
  {
    return 1;
  }

  return xmlStrEqual(str1, "token") != 0;
}

uint64_t xmlRelaxNGDefaultTypeCompare(int a1, xmlChar *str1, xmlChar *a3, uint64_t a4, uint64_t a5, xmlChar *a6)
{
  if (!xmlStrEqual(str1, "string"))
  {
    if (!xmlStrEqual(str1, "token"))
    {
      return 0xFFFFFFFFLL;
    }

    if (xmlStrEqual(a3, a6))
    {
      return 1;
    }

    v11 = xmlRelaxNGNormalize(0, a3);
    v12 = xmlRelaxNGNormalize(0, a6);
    v13 = v12;
    if (v11 && v12)
    {
      v10 = xmlStrEqual(v11, v12) != 0;
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    free(v11);
LABEL_14:
    if (v13)
    {
      free(v13);
    }

    return v10;
  }

  return xmlStrEqual(a3, a6);
}

void xmlRelaxNGCleanupTypes(void)
{
  xmlSchemaCleanupTypes();
  if (xmlRelaxNGTypeInitialized == 1)
  {
    xmlHashFree(xmlRelaxNGRegisteredTypes, xmlRelaxNGFreeTypeLibrary);
    xmlRelaxNGTypeInitialized = 0;
  }
}

void xmlRelaxNGFreeTypeLibrary(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

xmlRelaxNGParserCtxtPtr xmlRelaxNGNewParserCtxt(const char *URL)
{
  if (!URL)
  {
    return 0;
  }

  v2 = malloc_type_malloc(0x100uLL, 0x10F0040EE64494EuLL);
  v3 = v2;
  if (v2)
  {
    v2[14] = 0u;
    v2[15] = 0u;
    v2[12] = 0u;
    v2[13] = 0u;
    v2[10] = 0u;
    v2[11] = 0u;
    v2[8] = 0u;
    v2[9] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    *(v2 + 16) = xmlStrdup(URL);
    *(v3 + 1) = *__xmlGenericError();
    *v3 = *__xmlGenericErrorContext();
  }

  else
  {
    xmlRngPErrMemory(0, "building parser\n");
  }

  return v3;
}

_DWORD *xmlRngPErrMemory(uint64_t a1, const xmlChar *a2)
{
  if (a1)
  {
    v3 = a1;
    a1 = *(a1 + 24);
    if (a1)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 + 8);
    }

    v5 = *v3;
    ++*(v3 + 68);
    if (a2)
    {
      return __xmlRaiseError(a1, v4, v5, 0, 0, 0x12u, 2, 3, 0, 0, a2, 0, 0, 0, 0, "Memory allocation failed : %s\n", a2);
    }

    return __xmlRaiseError(a1, v4, v5, 0, 0, 0x12u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v7);
  }

  v4 = 0;
  v5 = 0;
  if (!a2)
  {
    return __xmlRaiseError(a1, v4, v5, 0, 0, 0x12u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v7);
  }

  return __xmlRaiseError(a1, v4, v5, 0, 0, 0x12u, 2, 3, 0, 0, a2, 0, 0, 0, 0, "Memory allocation failed : %s\n", a2);
}

xmlRelaxNGParserCtxtPtr xmlRelaxNGNewMemParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer && size >= 1)
  {
    v5 = malloc_type_malloc(0x100uLL, 0x10F0040EE64494EuLL);
    v2 = v5;
    if (v5)
    {
      *(v5 + 14) = 0u;
      *(v5 + 15) = 0u;
      *(v5 + 12) = 0u;
      *(v5 + 13) = 0u;
      *(v5 + 10) = 0u;
      *(v5 + 11) = 0u;
      *(v5 + 8) = 0u;
      *(v5 + 9) = 0u;
      *(v5 + 6) = 0u;
      *(v5 + 7) = 0u;
      *(v5 + 4) = 0u;
      *(v5 + 5) = 0u;
      *(v5 + 2) = 0u;
      *(v5 + 3) = 0u;
      *v5 = 0u;
      *(v5 + 1) = 0u;
      *(v5 + 20) = buffer;
      *(v5 + 42) = size;
      *(v5 + 1) = *__xmlGenericError();
      *v2 = *__xmlGenericErrorContext();
    }

    else
    {
      xmlRngPErrMemory(0, "building parser\n");
    }
  }

  return v2;
}

xmlRelaxNGParserCtxtPtr xmlRelaxNGNewDocParserCtxt(xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v1 = xmlCopyDoc(doc, 1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(0x100uLL, 0x10F0040EE64494EuLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 236) = 0u;
    *(v3 + 13) = 0u;
    *(v3 + 14) = 0u;
    *(v3 + 11) = 0u;
    *(v3 + 12) = 0u;
    *(v3 + 9) = 0u;
    *(v3 + 10) = 0u;
    *(v3 + 7) = 0u;
    *(v3 + 8) = 0u;
    *(v3 + 5) = 0u;
    *(v3 + 6) = 0u;
    *(v3 + 3) = 0u;
    *(v3 + 4) = 0u;
    *(v3 + 1) = 0u;
    *(v3 + 2) = 0u;
    *v3 = 0u;
    *(v3 + 17) = v2;
    *(v3 + 63) = 1;
    *v3 = *__xmlGenericErrorContext();
  }

  else
  {
    xmlRngPErrMemory(0, "building parser\n");
    xmlFreeDoc(v2);
  }

  return v4;
}

void xmlRelaxNGFreeParserCtxt(xmlRelaxNGParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 16);
    if (v2)
    {
      free(v2);
    }

    v3 = *(ctxt + 22);
    if (v3)
    {
      xmlRelaxNGFreeDocument(v3);
    }

    v4 = *(ctxt + 13);
    if (v4)
    {
      xmlHashFree(v4, 0);
    }

    v5 = *(ctxt + 14);
    if (v5)
    {
      do
      {
        v6 = *v5;
        xmlRelaxNGFreeDocument(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *(ctxt + 15);
    if (v7)
    {
      do
      {
        v8 = *v7;
        xmlRelaxNGFreeInclude(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *(ctxt + 24);
    if (v9)
    {
      free(v9);
    }

    v10 = *(ctxt + 27);
    if (v10)
    {
      free(v10);
    }

    v11 = *(ctxt + 19);
    if (v11)
    {
      if (*(ctxt + 36) >= 1)
      {
        v12 = 0;
        do
        {
          xmlRelaxNGFreeDefine(*(*(ctxt + 19) + 8 * v12++));
        }

        while (v12 < *(ctxt + 36));
        v11 = *(ctxt + 19);
      }

      free(v11);
    }

    v13 = *(ctxt + 17);
    if (v13 && *(ctxt + 63))
    {
      xmlFreeDoc(v13);
    }

    free(ctxt);
  }
}

void xmlRelaxNGFreeDocument(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    xmlFreeDoc(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      xmlFreeDoc(v5);
    }

    v6 = *(v4 + 72);
    if (v6)
    {
      if (*(v4 + 64) >= 1)
      {
        v7 = 0;
        do
        {
          xmlRelaxNGFreeDefine(*(*(v4 + 72) + 8 * v7++));
        }

        while (v7 < *(v4 + 64));
        v6 = *(v4 + 72);
      }

      free(v6);
    }

    free(v4);
  }

  free(a1);
}

xmlRelaxNGPtr xmlRelaxNGParse(xmlRelaxNGParserCtxtPtr ctxt)
{
  xmlRelaxNGInitTypes();
  if (!ctxt)
  {
    return 0;
  }

  v2 = *(ctxt + 16);
  if (!v2)
  {
    v8 = *(ctxt + 20);
    if (v8)
    {
      Memory = xmlReadMemory(v8, *(ctxt + 42), 0, 0, 0);
      if (Memory)
      {
        Memory->URL = xmlStrdup("in_memory_buffer");
        *(ctxt + 16) = xmlStrdup("in_memory_buffer");
        goto LABEL_9;
      }

      v5 = "xmlRelaxNGParse: could not parse schemas\n";
      v6 = ctxt;
      v7 = 1065;
    }

    else
    {
      Memory = *(ctxt + 17);
      if (Memory)
      {
        goto LABEL_9;
      }

      v5 = "xmlRelaxNGParse: nothing to parse\n";
      v6 = ctxt;
      v7 = 1022;
    }

    v4 = 0;
    goto LABEL_32;
  }

  Memory = xmlReadFile(v2, 0, 0);
  if (!Memory)
  {
    v4 = *(ctxt + 16);
    v5 = "xmlRelaxNGParse: could not load %s\n";
    v6 = ctxt;
    v7 = 1065;
LABEL_32:
    xmlRngPErr(v6, 0, v7, v5, v4, 0);
    return Memory;
  }

LABEL_9:
  *(ctxt + 17) = Memory;
  v9 = xmlRelaxNGCleanupDoc(ctxt, Memory);
  if (!v9)
  {
LABEL_21:
    xmlFreeDoc(*(ctxt + 17));
    Memory = 0;
LABEL_22:
    *(ctxt + 17) = 0;
    return Memory;
  }

  v10 = v9;
  RootElement = xmlDocGetRootElement(v9);
  if (!RootElement)
  {
    if (*(ctxt + 16))
    {
      v13 = *(ctxt + 16);
    }

    else
    {
      v13 = "schemas";
    }

    xmlRngPErr(ctxt, v10, 1022, "xmlRelaxNGParse: %s is empty\n", v13, 0);
    goto LABEL_21;
  }

  Memory = xmlRelaxNGParseDocument(ctxt, RootElement);
  if (!Memory)
  {
    xmlFreeDoc(*(ctxt + 17));
    goto LABEL_22;
  }

  v12 = *(ctxt + 13);
  if (v12)
  {
    xmlHashScan(v12, xmlRelaxNGComputeInterleaves, ctxt);
  }

  if (*(ctxt + 17) >= 1)
  {
    xmlRelaxNGFree(Memory);
    *(ctxt + 17) = 0;
    xmlFreeDoc(v10);
    return 0;
  }

  v14 = *&Memory->type;
  if (v14)
  {
    v15 = *(v14 + 24);
    if (v15)
    {
      if (*v15 != 20)
      {
        v16 = xmlRelaxNGNewDefine(ctxt, 0);
        v17 = *&Memory->type;
        if (v16)
        {
          v15 = v16;
          *v16 = 20;
          *(v16 + 6) = *(v17 + 24);
          *(v17 + 24) = v16;
        }

        else
        {
          v15 = *(v17 + 24);
        }
      }

      xmlRelaxNGTryCompile(ctxt, v15);
    }
  }

  Memory->name = v10;
  *(ctxt + 17) = 0;
  v19 = *(ctxt + 7);
  *(ctxt + 14) = 0;
  *&Memory->next = v19;
  *(ctxt + 15) = 0;
  LODWORD(Memory->doc) = *(ctxt + 36);
  *&Memory->compression = *(ctxt + 19);
  *(ctxt + 19) = 0;
  if (*(ctxt + 56) == 1)
  {
    LODWORD(Memory->children) = 1;
  }

  return Memory;
}

_DWORD *xmlRngPErr(uint64_t a1, uint64_t a2, int a3, const char *a4, const xmlChar *a5, xmlChar *a6)
{
  if (a1)
  {
    v8 = a1;
    a1 = *(a1 + 24);
    if (a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(v8 + 8);
    }

    v10 = *v8;
    ++*(v8 + 68);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return __xmlRaiseError(a1, v9, v10, 0, a2, 0x12u, a3, 2, 0, 0, a5, a6, 0, 0, 0, a4, a5);
}

xmlDoc *xmlRelaxNGCleanupDoc(uint64_t a1, xmlDoc *doc)
{
  v2 = doc;
  RootElement = xmlDocGetRootElement(doc);
  if (RootElement)
  {
    xmlRelaxNGCleanupTree(a1, RootElement);
  }

  else
  {
    xmlRngPErr(a1, v2, 1022, "xmlRelaxNGParse: %s is empty\n", *(a1 + 128), 0);
    return 0;
  }

  return v2;
}

_OWORD *xmlRelaxNGParseDocument(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x50uLL, 0x10A00404C5AC1A8uLL);
  v5 = v4;
  if (v4)
  {
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v6 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (*(a2 + 72) && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "grammar") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v7 = xmlRelaxNGParseGrammar(a1, *(a2 + 24));
      *(v5 + 1) = v7;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v8 = xmlRelaxNGNewGrammar(a1);
      *(v5 + 1) = v8;
      if (!v8)
      {
LABEL_14:
        xmlRelaxNGFree(v5);
        return 0;
      }

      v9 = *(a1 + 48);
      *v8 = v9;
      if (v9)
      {
        v10 = *(v9 + 8);
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *(v10 + 16);
          }

          while (v10);
          *(v11 + 16) = v8;
        }

        else
        {
          *(v9 + 8) = v8;
        }

        *(a1 + 48) = v8;
        xmlRelaxNGParseStart(a1, a2);
        *(a1 + 48) = v9;
      }

      else
      {
        *(a1 + 48) = v8;
        xmlRelaxNGParseStart(a1, a2);
      }
    }

    *(a1 + 80) = v6;
    v12 = *(*(v5 + 1) + 24);
    if (v12)
    {
      xmlRelaxNGCheckCycles(a1, v12, 0);
      if ((*(a1 + 64) & 0x80) == 0)
      {
        xmlRelaxNGSimplify(a1, *(*(v5 + 1) + 24), 0);
        v13 = *(v5 + 1);
        for (i = *(v13 + 24); i; *(v13 + 24) = i)
        {
          if (*i != -1)
          {
            break;
          }

          if (!*(i + 64))
          {
            break;
          }

          i = *(i + 48);
        }

        xmlRelaxNGCheckRules(a1, i, 16, -1);
      }
    }
  }

  else
  {
    xmlRngPErrMemory(a1, 0);
  }

  return v5;
}

void xmlRelaxNGComputeInterleaves(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 68))
  {
    return;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = 0;
    do
    {
      v4 = *(v4 + 64);
      v5 += 8;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc(v5, 0x2004093837F09uLL);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = malloc_type_malloc(0x18uLL, 0xA00402214FCE6uLL);
        *&v7[8 * v9] = v11;
        if (!v11)
        {
          goto LABEL_62;
        }

        if (*v8 == 3)
        {
          ++v10;
        }

        *v11 = v8;
        *(*&v7[8 * v9] + 8) = xmlRelaxNGGetElements(a2, v8, 2);
        *(*&v7[8 * v9++] + 16) = xmlRelaxNGGetElements(a2, v8, 1);
        v8 = *(v8 + 64);
      }

      while (v8);
      v12 = v10 == 0;
    }

    else
    {
      LODWORD(v9) = 0;
      v12 = 1;
    }

    v13 = malloc_type_malloc(0x20uLL, 0x10A0040F99330FAuLL);
    if (v13)
    {
      v14 = v13;
      v37 = v12;
      *(v13 + 12) = 0;
      *(v13 + 4) = 0;
      *(v13 + 7) = 0;
      *(v13 + 20) = 0;
      *v13 = v9;
      *(v13 + 1) = xmlHashCreate(v9);
      if (!v9)
      {
        v19 = 1;
LABEL_73:
        *(v14 + 3) = v7;
        *(a1 + 40) = v14;
        if (!v37)
        {
          *(a1 + 98) |= 8u;
        }

        if (v19 == 2)
        {
          v36 = 3;
        }

        else
        {
          if (v19 != 1)
          {
            return;
          }

          v36 = 1;
        }

        *(v14 + 4) = v36;
        return;
      }

      v15 = 0;
      v16 = v9;
      v17 = v7 + 8;
      v18 = v9 - 1;
      v19 = 1;
      v38 = v7;
      v39 = v16;
      while (1)
      {
        v20 = *&v7[8 * v15++];
        if (v15 < v16)
        {
          v21 = v18;
          v22 = v17;
          do
          {
            if (*v22)
            {
              if (!xmlRelaxNGCompareElemDefLists(*(v20 + 8), *(*v22 + 8)))
              {
                xmlRngPErr(a2, *(a1 + 8), 1021, "Element or text conflicts in interleave\n", 0, 0);
              }

              if (!xmlRelaxNGCompareElemDefLists(*(v20 + 16), *(*v22 + 16)))
              {
                xmlRngPErr(a2, *(a1 + 8), 1001, "Attributes conflicts in interleave\n", 0, 0);
              }
            }

            v22 += 8;
            --v21;
          }

          while (v21);
        }

        v23 = *(v20 + 8);
        if (v23)
        {
          v24 = *v23;
          if (*v23)
          {
            break;
          }
        }

        v19 = 0;
        v7 = v38;
LABEL_60:
        v17 += 8;
        --v18;
        v16 = v39;
        if (v15 == v39)
        {
          goto LABEL_73;
        }
      }

      v25 = v23 + 1;
      v7 = v38;
      while (*v24 != 4)
      {
        if (*v24 == 3)
        {
          v26 = *(v14 + 1);
          v27 = "#text";
          goto LABEL_37;
        }

        v19 = -1;
LABEL_57:
        v32 = *v25++;
        v24 = v32;
        if (!v32)
        {
          goto LABEL_60;
        }
      }

      v27 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v27)
      {
        if (v28)
        {
          v26 = *(v14 + 1);
          if (!*v28)
          {
LABEL_37:
            v28 = 0;
          }

          if (xmlHashAddEntry2(v26, v27, v28, v15))
          {
            v19 = -1;
          }

          goto LABEL_57;
        }

        v26 = *(v14 + 1);
        goto LABEL_37;
      }

      if (v28)
      {
        v29 = *(v14 + 1);
        if (*v28)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v29 = *(v14 + 1);
      }

      v28 = 0;
LABEL_51:
      v30 = xmlHashAddEntry2(v29, "#any", v28, v15);
      if (*(*(v25 - 1) + 80))
      {
        v31 = 2;
      }

      else
      {
        v31 = v19;
      }

      if (v30)
      {
        v19 = -1;
      }

      else
      {
        v19 = v31;
      }

      goto LABEL_57;
    }

LABEL_62:
    xmlRngPErrMemory(a2, "in interleave computation\n");
    if (v9)
    {
      v33 = v9;
      v34 = v7;
      do
      {
        v35 = *v34;
        if (*v34)
        {
          if (v35[1])
          {
            free(v35[1]);
            v35 = *v34;
          }

          free(v35);
        }

        ++v34;
        --v33;
      }

      while (v33);
    }

    free(v7);
  }

  else
  {

    xmlRngPErrMemory(a2, "in interleave computation\n");
  }
}

_OWORD *xmlRelaxNGNewDefine(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 148);
  if (v4)
  {
    if (v4 <= *(a1 + 144))
    {
      *(a1 + 148) = 2 * v4;
      v5 = malloc_type_realloc(*(a1 + 152), 16 * v4, 0x2004093837F09uLL);
      if (!v5)
      {
        goto LABEL_8;
      }

      *(a1 + 152) = v5;
    }
  }

  else
  {
    *(a1 + 144) = 0x1000000000;
    v6 = malloc_type_malloc(0x80uLL, 0x2004093837F09uLL);
    *(a1 + 152) = v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  result = malloc_type_malloc(0x70uLL, 0x10B004024D7BF11uLL);
  if (result)
  {
    result[5] = 0u;
    result[6] = 0u;
    result[3] = 0u;
    result[4] = 0u;
    result[1] = 0u;
    result[2] = 0u;
    *result = 0u;
    v8 = *(a1 + 152);
    v9 = *(a1 + 144);
    *(a1 + 144) = v9 + 1;
    *(v8 + 8 * v9) = result;
    *(result + 1) = a2;
    *(result + 48) = -1;
    return result;
  }

LABEL_8:
  xmlRngPErrMemory(a1, "allocating define\n");
  return 0;
}

uint64_t xmlRelaxNGTryCompile(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2;
  while (1)
  {
    v4 = *v2;
    if ((*v2 | 0x10) == 0x14)
    {
      result = xmlRelaxNGIsCompilable(v2);
      if ((*(v2 + 98) & 0x40) != 0 && *(v2 + 96) != -25)
      {
        *(a1 + 232) = 0;

        return xmlRelaxNGCompile(a1, v2);
      }

      v4 = *v2;
    }

    else
    {
      result = 0;
    }

    v6 = v4 + 1;
    if (v6 > 0x15)
    {
      return result;
    }

    if (v6)
    {
      break;
    }

    v2 = *(v2 + 48);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (((1 << v6) & 0x1007FE) != 0)
  {
    return 0;
  }

  v7 = *(v2 + 48);
  if (v7)
  {
    while (1)
    {
      result = xmlRelaxNGTryCompile(a1, v7);
      if (result)
      {
        break;
      }

      v7 = *(v7 + 64);
      if (!v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void xmlRelaxNGSetParserErrors(xmlRelaxNGParserCtxtPtr ctxt, xmlRelaxNGValidityErrorFunc err, xmlRelaxNGValidityWarningFunc warn, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 2) = warn;
    *(ctxt + 3) = 0;
    *ctxt = ctx;
    *(ctxt + 1) = err;
  }
}

int xmlRelaxNGGetParserErrors(xmlRelaxNGParserCtxtPtr ctxt, xmlRelaxNGValidityErrorFunc *err, xmlRelaxNGValidityWarningFunc *warn, void **ctx)
{
  if (!ctxt)
  {
    return -1;
  }

  if (err)
  {
    *err = *(ctxt + 1);
  }

  if (warn)
  {
    *warn = *(ctxt + 2);
  }

  v4 = 0;
  if (ctx)
  {
    *ctx = *ctxt;
  }

  return v4;
}

void xmlRelaxNGSetParserStructuredErrors(xmlRelaxNGParserCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 2) = 0;
    *(ctxt + 3) = serror;
    *ctxt = ctx;
    *(ctxt + 1) = 0;
  }
}

void xmlRelaxNGDump(FILE *output, xmlRelaxNGPtr schema)
{
  if (output)
  {
    if (schema)
    {
      fwrite("RelaxNG: ", 9uLL, 1uLL, output);
      v4 = *(schema + 2);
      if (v4)
      {
        v5 = *(v4 + 136);
        if (v5)
        {
          fprintf(output, "%s\n", v5);
        }

        else
        {
          fputc(10, output);
        }
      }

      else
      {
        fwrite("no document\n", 0xCuLL, 1uLL, output);
      }

      v8 = *(schema + 1);
      if (v8)
      {
        fwrite("<grammar", 8uLL, 1uLL, output);
        fwrite(" xmlns=http://relaxng.org/ns/structure/1.0", 0x2CuLL, 1uLL, output);
        v9 = *(v8 + 32);
        if (v9)
        {
          if (v9 == 2)
          {
            v10 = " combine=interleave";
            v11 = 21;
          }

          else if (v9 == 1)
          {
            v10 = " combine=choice";
            v11 = 17;
          }

          else
          {
            v10 = " <!-- invalid combine value -->";
            v11 = 31;
          }

          fwrite(v10, v11, 1uLL, output);
        }

        fwrite(">\n", 2uLL, 1uLL, output);
        if (*(v8 + 24))
        {
          fwrite("<start>\n", 8uLL, 1uLL, output);
          xmlRelaxNGDumpDefine(output, *(v8 + 24));
          v12 = "</start>\n";
          v13 = 9;
        }

        else
        {
          v12 = " <!-- grammar had no start -->";
          v13 = 30;
        }

        fwrite(v12, v13, 1uLL, output);
        v6 = "</grammar>\n";
        v7 = 11;
      }

      else
      {
        v6 = "RelaxNG has no top grammar\n";
        v7 = 27;
      }
    }

    else
    {
      v6 = "RelaxNG empty or failed to compile\n";
      v7 = 35;
    }

    fwrite(v6, v7, 1uLL, output);
  }
}

void xmlRelaxNGDumpTree(FILE *output, xmlRelaxNGPtr schema)
{
  if (output)
  {
    if (schema)
    {
      v3 = *(schema + 2);
      if (v3)
      {
        xmlDocDump(output, v3);
        return;
      }

      v4 = "no document\n";
      v5 = 12;
    }

    else
    {
      v4 = "RelaxNG empty or failed to compile\n";
      v5 = 35;
    }

    fwrite(v4, v5, 1uLL, output);
  }
}

int xmlRelaxNGValidatePushElement(xmlRelaxNGValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem)
{
  v3 = -1;
  if (ctxt && elem)
  {
    v5 = ctxt;
    if (*(ctxt + 17))
    {
LABEL_4:
      *(v5 + 21) = elem;
      *(v5 + 40) = 0;
      ns = elem->ns;
      v7 = *(v5 + 17);
      name = elem->name;
      if (ns)
      {
        v9 = xmlRegExecPushString2(v7, name, ns->href, v5);
      }

      else
      {
        v9 = xmlRegExecPushString(v7, name, v5);
      }

      v3 = v9;
      if ((v9 & 0x80000000) == 0)
      {
        v17 = *(v5 + 40);
        if (v17)
        {
          return (v17 >> 31) | 1;
        }

        else
        {
          return 0;
        }
      }

      v16 = elem->name;
      ctxt = v5;
      v15 = 38;
LABEL_19:
      xmlRelaxNGAddValidError(ctxt, v15, v16, 0, 0);
      return v3;
    }

    v10 = *(ctxt + 5);
    if (!v10 || (v11 = *(v10 + 8)) == 0 || (v12 = *(v11 + 24)) == 0)
    {
      v15 = 34;
      v16 = 0;
      goto LABEL_19;
    }

    v13 = *(v12 + 104);
    if (!v13)
    {
      v3 = 0;
      *(v5 + 22) = v12;
      return v3;
    }

    v14 = xmlRegNewExecCtxt(v13, xmlRelaxNGValidateProgressiveCallback, v5);
    if (v14)
    {
      xmlRelaxNGElemPush(v5, v14);
      goto LABEL_4;
    }
  }

  return v3;
}

void xmlRelaxNGAddValidError(uint64_t a1, int a2, xmlChar *cur, xmlChar *a4, int a5)
{
  if (!a1 || (*(a1 + 56) & 8) != 0)
  {
    return;
  }

  if ((*(a1 + 56) & 3) == 1)
  {
    v10 = *(a1 + 88);
    if (!v10)
    {
      *(a1 + 80) = 0x800000000;
      v10 = malloc_type_malloc(0x140uLL, 0x10700406E71CC98uLL);
      *(a1 + 88) = v10;
      if (!v10)
      {
LABEL_27:

        xmlRngVErrMemory(a1, "pushing error\n");
        return;
      }

      *(a1 + 72) = 0;
    }

    v11 = *(a1 + 80);
    v12 = *(a1 + 84);
    if (v11 < v12)
    {
      v13 = *(a1 + 72);
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    *(a1 + 84) = 2 * v12;
    v10 = malloc_type_realloc(v10, 80 * v12, 0x10700406E71CC98uLL);
    *(a1 + 88) = v10;
    if (v10)
    {
      v11 = *(a1 + 80);
      v13 = &v10[40 * v11 - 40];
      *(a1 + 72) = v13;
      if (&v10[40 * v11] == 40)
      {
LABEL_19:
        v18 = &v10[40 * v11];
        *v18 = a2;
        if (a5)
        {
          *(v18 + 3) = xmlStrdup(cur);
          a4 = xmlStrdup(a4);
          v19 = 1;
        }

        else
        {
          v19 = 0;
          *(v18 + 3) = cur;
        }

        *(v18 + 4) = a4;
        *(v18 + 1) = v19;
        v20 = *(a1 + 96);
        if (v20)
        {
          v21 = *v20;
        }

        else
        {
          v21 = 0uLL;
        }

        *(v18 + 8) = v21;
        *(a1 + 72) = v18;
        ++*(a1 + 80);
        return;
      }

LABEL_16:
      v17 = *(a1 + 96);
      if (v17 && *(v13 + 8) == *v17 && *v13 == a2)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (*(a1 + 80))
  {
    xmlRelaxNGDumpValidError(a1);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    v15 = *v14;
    v16 = v14[1];
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  if (!(v15 | v16))
  {
    v15 = *(a1 + 168);
  }

  xmlRelaxNGShowValidError(a1, a2, v15, v16, cur, a4);
}

void xmlRelaxNGValidateProgressiveCallback(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing context\n", a2);
    return;
  }

  v6 = *(a4 + 168);
  *(a4 + 160) = 1;
  if (!a3)
  {
    if (*a2 == 35)
    {
      return;
    }

    fprintf(*MEMORY[0x1E69E9848], "callback on %s missing define\n");
    goto LABEL_23;
  }

  if (*a3 != 4)
  {
    fprintf(*MEMORY[0x1E69E9848], "callback on %s define is not element\n");
LABEL_23:
    if (!*(a4 + 68))
    {
      *(a4 + 68) = 37;
    }

    goto LABEL_27;
  }

  if (*(v6 + 8) != 1)
  {
    xmlRelaxNGAddValidError(a4, 23, 0, 0, 0);
    if ((*(a4 + 56) & 1) == 0)
    {
      xmlRelaxNGDumpValidError(a4);
    }

LABEL_27:
    *(a4 + 160) = -1;
    return;
  }

  v7 = *(a3 + 104);
  if (!v7)
  {
    *(a4 + 160) = 0;
    *(a4 + 176) = a3;
    return;
  }

  v8 = xmlRegNewExecCtxt(v7, xmlRelaxNGValidateProgressiveCallback, a4);
  if (!v8)
  {
    goto LABEL_27;
  }

  xmlRelaxNGElemPush(a4, v8);
  v9 = xmlRelaxNGNewValidState(a4, v6);
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = *(a4 + 96);
  *(a4 + 96) = v9;
  v11 = *(a3 + 72);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = xmlRelaxNGValidateAttributeList(a4, v11);
  if (v12)
  {
    *(a4 + 160) = -1;
    xmlRelaxNGAddValidError(a4, 24, *(v6 + 16), 0, 0);
  }

  v9 = *(a4 + 96);
  if (!v9)
  {
    v13 = *(a4 + 104);
    if (v13)
    {
      v14 = *(a4 + 56);
      v15 = v14;
      if (*v13 < 1)
      {
LABEL_36:
        *(a4 + 56) = v15 | 1;
        xmlRelaxNGLogBestError(a4);
        v18 = 1;
      }

      else
      {
        v16 = 0;
        while (1)
        {
          v17 = *(*(v13 + 1) + 8 * v16);
          *(a4 + 96) = v17;
          *(v17 + 8) = 0;
          if (!xmlRelaxNGValidateElementEnd(a4, 0))
          {
            break;
          }

          ++v16;
          v13 = *(a4 + 104);
          if (v16 >= *v13)
          {
            v15 = *(a4 + 56);
            goto LABEL_36;
          }
        }

        v18 = 0;
      }

      v19 = *(a4 + 104);
      if (*v19 >= 1)
      {
        v20 = 0;
        do
        {
          xmlRelaxNGFreeValidState(a4, *(*(v19 + 1) + 8 * v20++));
          v19 = *(a4 + 104);
        }

        while (v20 < *v19);
      }

      xmlRelaxNGFreeStates(a4, v19);
      *(a4 + 104) = 0;
      v21 = v18 ^ 1;
      if (v12)
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        *(a4 + 160) = -1;
      }

      *(a4 + 56) = v14;
    }
  }

  else
  {
LABEL_12:
    v9[1] = 0;
    if (xmlRelaxNGValidateElementEnd(a4, 1))
    {
      *(a4 + 160) = -1;
    }

    xmlRelaxNGFreeValidState(a4, *(a4 + 96));
  }

  if (*(a4 + 160) == -1 && (*(a4 + 56) & 1) == 0)
  {
    xmlRelaxNGDumpValidError(a4);
  }

  *(a4 + 96) = v10;
}

_DWORD *xmlRelaxNGElemPush(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 152);
  if (result || (*(a1 + 148) = 10, result = malloc_type_malloc(0x50uLL, 0x2004093837F09uLL), (*(a1 + 152) = result) != 0))
  {
    v5 = *(a1 + 144);
    v6 = *(a1 + 148);
    if (v5 < v6)
    {
LABEL_6:
      *(a1 + 144) = v5 + 1;
      *&result[2 * v5] = a2;
      *(a1 + 136) = a2;
      return result;
    }

    *(a1 + 148) = 2 * v6;
    result = malloc_type_realloc(result, 16 * v6, 0x2004093837F09uLL);
    *(a1 + 152) = result;
    if (result)
    {
      v5 = *(a1 + 144);
      goto LABEL_6;
    }
  }

  return xmlRngVErrMemory(a1, "validating\n");
}

int xmlRelaxNGValidatePushCData(xmlRelaxNGValidCtxtPtr ctxt, const xmlChar *data, int len)
{
  v3 = -1;
  if (ctxt)
  {
    if (data)
    {
      v5 = *(ctxt + 17);
      if (v5)
      {
        while (1)
        {
          v6 = *data;
          if (v6 > 0x20)
          {
            goto LABEL_8;
          }

          if (((1 << v6) & 0x100002600) == 0)
          {
            break;
          }

          ++data;
        }

        if (!*data)
        {
          return 1;
        }

LABEL_8:
        if ((xmlRegExecPushString(v5, "#text", ctxt) & 0x80000000) == 0)
        {
          return 1;
        }

        xmlRelaxNGAddValidError(ctxt, 39, " TODO ", 0, 0);
        return -1;
      }
    }
  }

  return v3;
}

int xmlRelaxNGValidatePopElement(xmlRelaxNGValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem)
{
  v3 = -1;
  if (ctxt && elem && *(ctxt + 17))
  {
    v5 = *(ctxt + 36);
    v6 = __OFSUB__(v5, 1);
    v7 = (v5 - 1);
    if (v7 < 0 != v6)
    {
      v9 = 0;
    }

    else
    {
      *(ctxt + 36) = v7;
      v8 = *(ctxt + 19);
      v9 = *(v8 + 8 * v7);
      *(v8 + 8 * v7) = 0;
      if (v7)
      {
        v10 = *(*(ctxt + 19) + 8 * v7 - 8);
      }

      else
      {
        v10 = 0;
      }

      *(ctxt + 17) = v10;
    }

    v11 = xmlRegExecPushString(v9, 0, 0);
    if (v11)
    {
      v3 = (v11 >> 31) | 1;
    }

    else
    {
      xmlRelaxNGAddValidError(ctxt, 22, "", 0, 0);
    }

    xmlRegFreeExecCtxt(v9);
  }

  return v3;
}

int xmlRelaxNGValidateFullElement(xmlRelaxNGValidCtxtPtr ctxt, xmlDocPtr doc, xmlNodePtr elem)
{
  if (!ctxt)
  {
    return -1;
  }

  v4 = -1;
  if (elem)
  {
    if (*(ctxt + 22))
    {
      v6 = xmlRelaxNGNewValidState(ctxt, elem->parent);
      if (v6)
      {
        v6[1] = elem;
        *(ctxt + 12) = v6;
        *(ctxt + 17) = 0;
        if (!xmlRelaxNGValidateDefinition(ctxt, *(ctxt + 22)))
        {
          if (*(ctxt + 17))
          {
            v4 = -1;
          }

          else
          {
            v4 = 1;
          }
        }

        xmlRelaxNGFreeValidState(ctxt, *(ctxt + 12));
        *(ctxt + 12) = 0;
      }
    }
  }

  return v4;
}

void *xmlRelaxNGNewValidState(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  if (a2)
  {
    v4 = *(a2 + 88);
    if (v4)
    {
      v5 = 0;
      do
      {
        if (v5 <= 0x13)
        {
          *(v19 + v5) = v4;
        }

        ++v5;
        v4 = *(v4 + 48);
      }

      while (v4);
      v6 = 0;
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }
  }

  else
  {
    RootElement = xmlDocGetRootElement(*(a1 + 48));
    if (!RootElement)
    {
      v10 = 0;
      goto LABEL_36;
    }

    v6 = RootElement;
    LODWORD(v5) = 0;
  }

  v8 = *(a1 + 112);
  if (v8 && (v9 = *v8 - 1, *v8 >= 1))
  {
    *v8 = v9;
    v10 = *(*(v8 + 8) + 8 * v9);
  }

  else
  {
    v11 = malloc_type_malloc(0x38uLL, 0x10B004079B1E1FAuLL);
    v10 = v11;
    if (!v11)
    {
      goto LABEL_30;
    }

    v11[6] = 0;
    *(v11 + 1) = 0u;
    *(v11 + 2) = 0u;
    *v11 = 0u;
  }

  v10[4] = 0;
  v10[5] = 0;
  if (a2)
  {
    v6 = *(a2 + 24);
    v12 = a2;
  }

  else
  {
    v12 = *(a1 + 48);
  }

  *v10 = v12;
  v10[1] = v6;
  *(v10 + 4) = 0;
  if (!v5)
  {
    goto LABEL_34;
  }

  v13 = v10[6];
  if (v13)
  {
    if (*(v10 + 5) >= v5)
    {
      goto LABEL_28;
    }

    v13 = malloc_type_realloc(v13, 8 * v5, 0x2004093837F09uLL);
    if (v13)
    {
      v10[6] = v13;
      *(v10 + 5) = v5;
LABEL_28:
      *(v10 + 4) = v5;
      if (v5 > 0x13)
      {
        v15 = *(a2 + 88);
        if (v15)
        {
          v16 = 0;
          do
          {
            *(v10[6] + v16) = v15;
            v15 = *(v15 + 48);
            v16 += 8;
          }

          while (v15);
        }
      }

      else
      {
        memcpy(v13, v19, (8 * v5));
        LODWORD(v5) = *(v10 + 4);
      }

LABEL_34:
      *(v10 + 6) = v5;
      goto LABEL_36;
    }
  }

  else
  {
    if (v5 <= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v5;
    }

    *(v10 + 5) = v14;
    v13 = malloc_type_malloc(8 * v14, 0x2004093837F09uLL);
    v10[6] = v13;
    if (v13)
    {
      goto LABEL_28;
    }
  }

LABEL_30:
  xmlRngVErrMemory(a1, "allocating states\n");
LABEL_36:
  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t xmlRelaxNGValidateDefinition(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  if (*(a1 + 96) && *(a1 + 104))
  {
    v5 = *__xmlGenericError();
    v6 = __xmlGenericErrorContext();
    v5(*v6, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10667);
    xmlRelaxNGFreeValidState(a1, *(a1 + 96));
    *(a1 + 96) = 0;
  }

  v8 = (a1 + 104);
  v7 = *(a1 + 104);
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = *v7;
  if (*v7 != 1)
  {
    *(a1 + 104) = 0;
    v14 = *(a1 + 56);
    *(a1 + 56) = v14 | 1;
    if (v9 <= 0)
    {
      *(a1 + 56) = v14;
      goto LABEL_47;
    }

    v33 = v14;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      *(a1 + 96) = *(*(v7 + 1) + 8 * v15);
      *(a1 + 104) = 0;
      v18 = xmlRelaxNGValidateState(a1, a2);
      v19 = *(a1 + 96);
      if (v19 && *v8)
      {
        v20 = *__xmlGenericError();
        v21 = __xmlGenericErrorContext();
        v20(*v21, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10704);
        xmlRelaxNGFreeValidState(a1, *(a1 + 96));
        v19 = 0;
        *(a1 + 96) = 0;
      }

      if (!v18)
      {
        break;
      }

      if (v19)
      {
        xmlRelaxNGFreeValidState(a1, v19);
        goto LABEL_21;
      }

      v26 = *v8;
      if (*v8)
      {
        if (*v26 >= 1)
        {
          v27 = 0;
          do
          {
            xmlRelaxNGFreeValidState(a1, *(*(v26 + 1) + 8 * v27++));
            v26 = *(a1 + 104);
          }

          while (v27 < *v26);
        }

        v25 = a1;
        goto LABEL_33;
      }

LABEL_35:
      if (++v15 >= *v7)
      {
        *(a1 + 56) = v33;
        if (v17)
        {
          xmlRelaxNGFreeStates(a1, v7);
          v10 = 0;
          *(a1 + 104) = v17;
          goto LABEL_54;
        }

        if (v16 >= 2)
        {
          v10 = 0;
          *v7 = v16;
          *v8 = v7;
          goto LABEL_54;
        }

        if (v16 == 1)
        {
          *(a1 + 96) = **(v7 + 1);
          xmlRelaxNGFreeStates(a1, v7);
          v10 = 0;
          goto LABEL_54;
        }

LABEL_47:
        xmlRelaxNGFreeStates(a1, v7);
        v29 = *(a1 + 104);
        if (v29)
        {
          xmlRelaxNGFreeStates(a1, v29);
          *(a1 + 104) = 0;
        }

        v10 = 0xFFFFFFFFLL;
LABEL_54:
        if (*v4 && *v8)
        {
          v30 = *__xmlGenericError();
          v31 = __xmlGenericErrorContext();
          v30(*v31, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10770);
          xmlRelaxNGFreeValidState(a1, *(a1 + 96));
          v8 = v4;
LABEL_57:
          *v8 = 0;
        }

        return v10;
      }
    }

    v23 = *v8;
    if (*v8)
    {
      if (!v17)
      {
        *v8 = 0;
        if (v16 >= 1)
        {
          v28 = 0;
          do
          {
            xmlRelaxNGAddStates(a1, v23, *(*(v7 + 1) + v28));
            v28 += 8;
          }

          while (8 * v16 != v28);
        }

        v17 = v23;
        goto LABEL_35;
      }

      if (*v23 >= 1)
      {
        v24 = 0;
        do
        {
          xmlRelaxNGAddStates(a1, v17, *(*(v23 + 1) + 8 * v24++));
          v23 = *(a1 + 104);
        }

        while (v24 < *v23);
      }

      v25 = a1;
      v26 = v23;
LABEL_33:
      xmlRelaxNGFreeStates(v25, v26);
      v22 = (a1 + 104);
    }

    else if (v17)
    {
      xmlRelaxNGAddStates(a1, v17, v19);
LABEL_21:
      v22 = v4;
    }

    else
    {
      *(*(v7 + 1) + 8 * v16) = v19;
      v22 = v4;
      ++v16;
    }

    *v22 = 0;
    goto LABEL_35;
  }

  *(a1 + 96) = **(v7 + 1);
  xmlRelaxNGFreeStates(a1, v7);
  *(a1 + 104) = 0;
LABEL_7:
  v10 = xmlRelaxNGValidateState(a1, a2);
  if (*(a1 + 96))
  {
    if (!*v8)
    {
      return v10;
    }

    v11 = *__xmlGenericError();
    v12 = __xmlGenericErrorContext();
    v11(*v12, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/relaxng.c", 10679);
    xmlRelaxNGFreeValidState(a1, *(a1 + 96));
    *(a1 + 96) = 0;
  }

  v13 = *v8;
  if (*v8 && *v13 == 1)
  {
    *(a1 + 96) = **(v13 + 1);
    xmlRelaxNGFreeStates(a1, v13);
    goto LABEL_57;
  }

  return v10;
}

void xmlRelaxNGFreeValidState(uint64_t a1, void *a2)
{
  if (a2)
  {
    if (a1 && ((v4 = *(a1 + 112)) != 0 || (v4 = xmlRelaxNGNewStates(a1, 40), (*(a1 + 112) = v4) != 0)))
    {
      v5 = *v4;
      v6 = *(v4 + 1);
      if (*v4 < v6)
      {
        v7 = v4[1];
LABEL_14:
        *v4 = v5 + 1;
        v7[v5] = a2;
        return;
      }

      v7 = malloc_type_realloc(v4[1], 16 * v6, 0x2004093837F09uLL);
      if (v7)
      {
        v4[1] = v7;
        *(v4 + 1) = 2 * v6;
        v5 = *v4;
        goto LABEL_14;
      }

      xmlRngVErrMemory(a1, "adding states\n");
    }

    else
    {
      v8 = a2[6];
      if (v8)
      {
        free(v8);
      }

      free(a2);
    }
  }
}

xmlRelaxNGValidCtxtPtr xmlRelaxNGNewValidCtxt(xmlRelaxNGPtr schema)
{
  v2 = malloc_type_malloc(0xC0uLL, 0x10A004013E4A167uLL);
  v3 = v2;
  if (v2)
  {
    v2[10] = 0u;
    v2[11] = 0u;
    v2[8] = 0u;
    v2[9] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    *(v2 + 5) = schema;
    *(v2 + 1) = *__xmlGenericError();
    *v3 = *__xmlGenericErrorContext();
    *(v3 + 10) = 0;
    *(v3 + 11) = 0;
    *(v3 + 9) = 0;
    if (schema)
    {
      *(v3 + 16) = *(schema + 6);
    }

    *(v3 + 16) = 0;
    *(v3 + 17) = 0;
    *(v3 + 13) = 0;
    *(v3 + 14) = 0;
  }

  else
  {
    xmlRngVErrMemory(0, "building context\n");
  }

  return v3;
}

_DWORD *xmlRngVErrMemory(uint64_t a1, const xmlChar *a2)
{
  if (a1)
  {
    v3 = a1;
    a1 = *(a1 + 24);
    if (a1)
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 + 8);
    }

    v5 = *v3;
    ++*(v3 + 32);
    if (a2)
    {
      return __xmlRaiseError(a1, v4, v5, 0, 0, 0x13u, 2, 3, 0, 0, a2, 0, 0, 0, 0, "Memory allocation failed : %s\n", a2);
    }

    return __xmlRaiseError(a1, v4, v5, 0, 0, 0x13u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v7);
  }

  v4 = 0;
  v5 = 0;
  if (!a2)
  {
    return __xmlRaiseError(a1, v4, v5, 0, 0, 0x13u, 2, 3, 0, 0, 0, 0, 0, 0, 0, "Memory allocation failed\n", v7);
  }

  return __xmlRaiseError(a1, v4, v5, 0, 0, 0x13u, 2, 3, 0, 0, a2, 0, 0, 0, 0, "Memory allocation failed : %s\n", a2);
}

void xmlRelaxNGFreeValidCtxt(xmlRelaxNGValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 13);
    if (v2)
    {
      free(v2[1]);
      free(v2);
    }

    v3 = *(ctxt + 14);
    if (v3)
    {
      if (*v3 >= 1)
      {
        v4 = 0;
        do
        {
          xmlRelaxNGFreeValidState(0, *(*(v3 + 1) + 8 * v4++));
          v3 = *(ctxt + 14);
        }

        while (v4 < *v3);
      }

      free(*(v3 + 1));
      free(v3);
    }

    v5 = *(ctxt + 16);
    if (v5)
    {
      v6 = *(ctxt + 30);
      if (v6 >= 1)
      {
        for (i = 0; i < v6; ++i)
        {
          v8 = *(*(ctxt + 16) + 8 * i);
          if (v8)
          {
            free(v8[1]);
            free(v8);
            v6 = *(ctxt + 30);
          }
        }

        v5 = *(ctxt + 16);
      }

      free(v5);
    }

    v9 = *(ctxt + 11);
    if (v9)
    {
      free(v9);
    }

    v10 = *(ctxt + 19);
    if (v10)
    {
      v11 = *(ctxt + 36);
      v12 = __OFSUB__(v11, 1);
      v13 = (v11 - 1);
      if (v13 < 0 == v12)
      {
        *(ctxt + 36) = v13;
        v14 = *(v10 + 8 * v13);
        *(v10 + 8 * v13) = 0;
        if (!v13)
        {
          goto LABEL_24;
        }

        v15 = *(ctxt + 19) + 8 * v13;
LABEL_25:
        for (j = *(v15 - 8); ; j = 0)
        {
          *(ctxt + 17) = j;
          if (!v14)
          {
            break;
          }

          xmlRegFreeExecCtxt(v14);
          v17 = *(ctxt + 36);
          v12 = __OFSUB__(v17, 1);
          v18 = (v17 - 1);
          if (v18 < 0 != v12)
          {
            break;
          }

          *(ctxt + 36) = v18;
          v19 = *(ctxt + 19);
          v14 = *(v19 + 8 * v18);
          *(v19 + 8 * v18) = 0;
          if (v18)
          {
            v15 = *(ctxt + 19) + 8 * v18;
            goto LABEL_25;
          }

LABEL_24:
          ;
        }
      }

      free(*(ctxt + 19));
    }

    free(ctxt);
  }
}

void xmlRelaxNGFreeStates(uint64_t a1, void **a2)
{
  if (a2)
  {
    if (a1)
    {
      v4 = *(a1 + 128);
      if (v4)
      {
        v5 = *(a1 + 124);
        if (*(a1 + 120) < v5)
        {
LABEL_9:
          v6 = *(a1 + 120);
          *(a1 + 120) = v6 + 1;
          v4[v6] = a2;
          return;
        }

        v4 = malloc_type_realloc(v4, 16 * v5, 0x2004093837F09uLL);
        if (v4)
        {
          *(a1 + 128) = v4;
          *(a1 + 124) *= 2;
          goto LABEL_9;
        }

        xmlRngVErrMemory(a1, "storing states\n");
      }

      else
      {
        *(a1 + 120) = 0x2800000000;
        v4 = malloc_type_malloc(0x140uLL, 0x2004093837F09uLL);
        *(a1 + 128) = v4;
        if (v4)
        {
          goto LABEL_9;
        }

        xmlRngVErrMemory(a1, "storing states\n");
        v4 = *(a1 + 128);
        if (v4)
        {
          goto LABEL_9;
        }
      }
    }

    free(a2[1]);

    free(a2);
  }
}

void xmlRelaxNGSetValidErrors(xmlRelaxNGValidCtxtPtr ctxt, xmlRelaxNGValidityErrorFunc err, xmlRelaxNGValidityWarningFunc warn, void *ctx)
{
  if (ctxt)
  {
    *ctxt = ctx;
    *(ctxt + 1) = err;
    *(ctxt + 2) = warn;
    *(ctxt + 3) = 0;
  }
}

void xmlRelaxNGSetValidStructuredErrors(xmlRelaxNGValidCtxtPtr ctxt, xmlStructuredErrorFunc serror, void *ctx)
{
  if (ctxt)
  {
    *(ctxt + 2) = 0;
    *(ctxt + 3) = serror;
    *ctxt = ctx;
    *(ctxt + 1) = 0;
  }
}

int xmlRelaxNGGetValidErrors(xmlRelaxNGValidCtxtPtr ctxt, xmlRelaxNGValidityErrorFunc *err, xmlRelaxNGValidityWarningFunc *warn, void **ctx)
{
  if (!ctxt)
  {
    return -1;
  }

  if (err)
  {
    *err = *(ctxt + 1);
  }

  if (warn)
  {
    *warn = *(ctxt + 2);
  }

  v4 = 0;
  if (ctx)
  {
    *ctx = *ctxt;
  }

  return v4;
}

int xmlRelaxNGValidateDoc(xmlRelaxNGValidCtxtPtr ctxt, xmlDocPtr doc)
{
  result = -1;
  if (ctxt && doc)
  {
    *(ctxt + 6) = doc;
    v5 = *(ctxt + 5);
    if (v5)
    {
      *(ctxt + 17) = 0;
      v6 = *(v5 + 8);
      if (v6)
      {
        v7 = xmlRelaxNGNewValidState(ctxt, 0);
        *(ctxt + 12) = v7;
        v8 = xmlRelaxNGValidateDefinition(ctxt, *(v6 + 24));
        v9 = *(ctxt + 12);
        if (v9 && v7[1])
        {
          if (!xmlRelaxNGSkipIgnored(ctxt, *(v9 + 8)) || v8 == -1)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v10 = *(ctxt + 13);
          if (!v10)
          {
            goto LABEL_25;
          }

          if (*v10 < 1)
          {
            v14 = 1;
          }

          else
          {
            v11 = 0;
            v12 = -1;
            do
            {
              v13 = *(*(v10 + 1) + 8 * v11);
              if (!xmlRelaxNGSkipIgnored(ctxt, v13[1]))
              {
                v12 = 0;
              }

              xmlRelaxNGFreeValidState(ctxt, v13);
              ++v11;
              v10 = *(ctxt + 13);
            }

            while (v11 < *v10);
            v14 = v12 == -1;
          }

          if (!v14 || v8 == -1)
          {
LABEL_25:
            v17 = *(ctxt + 12);
            if (v17)
            {
              xmlRelaxNGFreeValidState(ctxt, v17);
              *(ctxt + 12) = 0;
            }

            if (v8)
            {
              xmlRelaxNGDumpValidError(ctxt);
              if (*(ctxt + 16) != 1)
              {
                v15 = v8;
                goto LABEL_39;
              }
            }

            else if (*(ctxt + 16) != 1)
            {
              goto LABEL_36;
            }

            memset(&v24.node, 0, 88);
            v24.valid = 1;
            v24.warning = *(ctxt + 2);
            *&v24.userData = *ctxt;
            v18 = xmlValidateDocumentFinal(&v24, doc);
            if (v18 == 1)
            {
              v15 = v8;
            }

            else
            {
              v15 = -1;
            }

            if (v8 || v18 != 1)
            {
LABEL_39:
              type = doc->type;
              if (type != XML_HTML_DOCUMENT_NODE && type != XML_DOCUMENT_NODE)
              {
                if (type != XML_ELEMENT_NODE)
                {
LABEL_54:
                  if (v15 == -1)
                  {
                    return 1;
                  }

                  else
                  {
                    return v15;
                  }
                }

                doc->version = 0;
              }

              children = doc->children;
              if (children)
              {
                while (1)
                {
                  do
                  {
                    v22 = children;
                    if (children->type != XML_ELEMENT_NODE)
                    {
                      break;
                    }

                    children->psvi = 0;
                    children = children->children;
                  }

                  while (children);
                  while (1)
                  {
                    children = v22->next;
                    if (children)
                    {
                      break;
                    }

                    v22 = v22->parent;
                    if (v22)
                    {
                      v23 = v22 == doc;
                    }

                    else
                    {
                      v23 = 1;
                    }

                    if (v23)
                    {
                      goto LABEL_54;
                    }
                  }
                }
              }

              goto LABEL_54;
            }

LABEL_36:
            if (*(ctxt + 17))
            {
              v15 = -1;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_39;
          }
        }

        xmlRelaxNGAddValidError(ctxt, 35, 0, 0, 0);
        v8 = -1;
        goto LABEL_25;
      }

      xmlRelaxNGAddValidError(ctxt, 34, 0, 0, 0);
    }

    v15 = -1;
    goto LABEL_39;
  }

  return result;
}

void xmlRelaxNGFreeInclude(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    xmlFreeDoc(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    xmlRelaxNGFree(v4);
  }

  free(a1);
}

void xmlRelaxNGFreePartition(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = *a1;
      if (*a1 >= 1)
      {
        v4 = 0;
        do
        {
          v5 = *(a1[3] + 8 * v4);
          if (v5)
          {
            v6 = v5[1];
            if (v6)
            {
              free(v6);
            }

            v7 = v5[2];
            if (v7)
            {
              free(v7);
            }

            free(v5);
            v3 = *a1;
          }

          ++v4;
        }

        while (v4 < v3);
        v2 = a1[3];
      }

      free(v2);
    }

    v8 = a1[1];
    if (v8)
    {
      xmlHashFree(v8, 0);
    }

    free(a1);
  }
}

_BYTE *xmlRelaxNGNormalize(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  v5 = a2;
  do
  {
    v6 = *v5++;
    v4 += 0x100000000;
  }

  while (v6);
  result = malloc_type_malloc(v4 >> 32, 0x100004077774924uLL);
  if (result)
  {
    while (1)
    {
      v8 = *v2;
      if (v8 > 0x20 || ((1 << v8) & 0x100002600) == 0)
      {
        break;
      }

      ++v2;
    }

    for (i = result; ; ++i)
    {
      if (v8 > 0x20u)
      {
        goto LABEL_19;
      }

      if (((1 << v8) & 0x100002600) == 0)
      {
        break;
      }

      while (v8 <= 0x20u)
      {
        if (((1 << v8) & 0x100002600) == 0)
        {
          if (!v8)
          {
            goto LABEL_21;
          }

          break;
        }

        v11 = *++v2;
        LOBYTE(v8) = v11;
      }

      LOBYTE(v8) = 32;
LABEL_20:
      *i = v8;
      LOBYTE(v8) = *v2;
    }

    if (!v8)
    {
LABEL_21:
      *i = 0;
      return result;
    }

LABEL_19:
    ++v2;
    goto LABEL_20;
  }

  xmlRngVErrMemory(a1, "validating\n");
  return 0;
}

void xmlRelaxNGCleanupTree(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v4 = 0;
  v5 = a2;
  while (1)
  {
LABEL_3:
    v6 = v5;
    if (v4)
    {
      xmlUnlinkNode(v4);
      xmlFreeNode(v4);
    }

    v7 = *(v6 + 8);
    if ((v7 - 3) >= 2)
    {
      break;
    }

    v8 = *(v6 + 80);
    if (v8)
    {
      while (1)
      {
        v9 = *v8;
        if (v9 > 0x20)
        {
          break;
        }

        if (((1 << v9) & 0x100002600) == 0)
        {
          if (*v8)
          {
            break;
          }

          goto LABEL_51;
        }

        ++v8;
      }

LABEL_54:
      v4 = 0;
      goto LABEL_55;
    }

LABEL_51:
    v28 = *(v6 + 40);
    v4 = v6;
    if (!v28)
    {
      goto LABEL_250;
    }

    v4 = v6;
    if (*(v28 + 8) != 1)
    {
      goto LABEL_250;
    }

    if (xmlStrEqual(*(v28 + 16), "value"))
    {
      goto LABEL_54;
    }

    if (xmlStrEqual(*(*(v6 + 40) + 16), "param"))
    {
      v4 = 0;
    }

    else
    {
      v4 = v6;
    }

LABEL_55:
    v5 = *(v6 + 24);
    if (v5)
    {
      v29 = *(v5 + 8);
      v30 = v29 > 0x11;
      v31 = (1 << v29) & 0x20060;
      if (v30 || v31 == 0)
      {
        continue;
      }
    }

    goto LABEL_250;
  }

  v4 = v6;
  if (v7 != 1)
  {
    goto LABEL_250;
  }

  v10 = *(v6 + 72);
  if (!v10 || !xmlStrEqual(*(v10 + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v33 = *(v6 + 40);
    v4 = v6;
    if (!v33)
    {
      goto LABEL_250;
    }

    v4 = v6;
    if (*(v33 + 8) != 1)
    {
      goto LABEL_250;
    }

    if (!xmlStrEqual(*(v33 + 16), "name") && !xmlStrEqual(*(*(v6 + 40) + 16), "value"))
    {
      v4 = v6;
      if (!xmlStrEqual(*(*(v6 + 40) + 16), "param"))
      {
        goto LABEL_250;
      }
    }

    v34 = *(*(v6 + 40) + 16);
    v35 = a1;
    v36 = v6;
    v37 = 1035;
    v38 = "element %s doesn't allow foreign elements\n";
    goto LABEL_68;
  }

  v11 = *(v6 + 88);
  if (v11)
  {
    while (1)
    {
      v12 = v11;
      v11 = *(v11 + 48);
      v13 = *(v12 + 72);
      if (v13 && !xmlStrEqual(*(v13 + 16), "http://relaxng.org/ns/structure/1.0"))
      {
        goto LABEL_35;
      }

      if (xmlStrEqual(*(v12 + 16), "name"))
      {
        break;
      }

      if (xmlStrEqual(*(v12 + 16), "type"))
      {
        if (xmlStrEqual(*(v6 + 16), "value"))
        {
          goto LABEL_35;
        }

        v16 = *(v6 + 16);
        v17 = "data";
        goto LABEL_32;
      }

      if (xmlStrEqual(*(v12 + 16), "href"))
      {
        if (xmlStrEqual(*(v6 + 16), "externalRef"))
        {
          goto LABEL_35;
        }

        v16 = *(v6 + 16);
        v17 = "include";
        goto LABEL_32;
      }

      if (xmlStrEqual(*(v12 + 16), "combine"))
      {
        v14 = *(v6 + 16);
        v15 = "start";
        goto LABEL_30;
      }

      if (xmlStrEqual(*(v12 + 16), "datatypeLibrary"))
      {
        String = xmlNodeListGetString(*(v6 + 64), *(v12 + 24), 1);
        if (String)
        {
          v25 = String;
          if (*String)
          {
            v26 = xmlParseURI(String);
            if (v26)
            {
              v27 = v26;
              if (!v26->scheme)
              {
                xmlRngPErr(a1, v6, 1118, "Attribute %s URI %s is not absolute\n", *(v12 + 16), v25);
              }

              if (v27->fragment)
              {
                xmlRngPErr(a1, v6, 1117, "Attribute %s URI %s has a fragment ID\n", *(v12 + 16), v25);
              }

              xmlFreeURI(v27);
            }

            else
            {
              xmlRngPErr(a1, v6, 1050, "Attribute %s contains invalid URI %s\n", *(v12 + 16), v25);
            }
          }

          free(v25);
        }

        goto LABEL_35;
      }

      if (!xmlStrEqual(*(v12 + 16), "ns"))
      {
        v18 = *(v12 + 16);
        v19 = *(v6 + 16);
        v20 = a1;
        v21 = v6;
        v22 = 1113;
        v23 = "Unknown attribute %s on %s\n";
        goto LABEL_34;
      }

LABEL_35:
      if (!v11)
      {
        goto LABEL_69;
      }
    }

    if (xmlStrEqual(*(v6 + 16), "element") || xmlStrEqual(*(v6 + 16), "attribute") || xmlStrEqual(*(v6 + 16), "ref") || xmlStrEqual(*(v6 + 16), "parentRef"))
    {
      goto LABEL_35;
    }

    v14 = *(v6 + 16);
    v15 = "param";
LABEL_30:
    if (xmlStrEqual(v14, v15))
    {
      goto LABEL_35;
    }

    v16 = *(v6 + 16);
    v17 = "define";
LABEL_32:
    if (!xmlStrEqual(v16, v17))
    {
      v18 = *(v12 + 16);
      v19 = *(v6 + 16);
      v20 = a1;
      v21 = v6;
      v22 = 1034;
      v23 = "Attribute %s is not allowed on %s\n";
LABEL_34:
      xmlRngPErr(v20, v21, v22, v23, v18, v19);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

LABEL_69:
  if (!xmlStrEqual(*(v6 + 16), "externalRef"))
  {
    if (xmlStrEqual(*(v6 + 16), "include"))
    {
      Prop = xmlGetProp(v6, "href");
      if (Prop)
      {
        v42 = Prop;
        Base = xmlNodeGetBase(*(v6 + 64), v6);
        v43 = xmlBuildURI(v42, Base);
        if (!v43)
        {
          xmlRngPErr(a1, v6, 1041, "Failed to compute URL for include %s\n", v42, 0);
          free(v42);
          v4 = v6;
          if (!Base)
          {
            goto LABEL_250;
          }

          goto LABEL_95;
        }

        v44 = v43;
        free(v42);
        if (Base)
        {
          free(Base);
        }

        v45 = xmlGetProp(v6, "ns");
        if (v45)
        {
LABEL_81:
          v46 = v45;
        }

        else
        {
          v70 = v6;
          while (1)
          {
            v70 = *(v70 + 40);
            if (!v70 || *(v70 + 8) != 1)
            {
              break;
            }

            v45 = xmlGetProp(v70, "ns");
            if (v45)
            {
              goto LABEL_81;
            }
          }

          v46 = 0;
        }

        if (*(a1 + 208) >= 1)
        {
          v75 = 0;
          while (!xmlStrEqual(*(*(*(a1 + 216) + 8 * v75) + 8), v44))
          {
            if (++v75 >= *(a1 + 208))
            {
              goto LABEL_149;
            }
          }

          v83 = a1;
          v84 = 0;
          v85 = 1044;
          v86 = "Detected an Include recursion for %s\n";
          goto LABEL_228;
        }

LABEL_149:
        doca = xmlReadFile(v44, 0, 0);
        if (!doca)
        {
          v83 = a1;
          v84 = v6;
          v85 = 1065;
          v86 = "xmlRelaxNG: could not load %s\n";
          goto LABEL_228;
        }

        v76 = malloc_type_malloc(0x28uLL, 0x3004061DD35B1uLL);
        v69 = v76;
        if (!v76)
        {
          xmlRngPErrMemory(a1, "allocating include\n");
          xmlFreeDoc(doca);
          goto LABEL_229;
        }

        v76[4] = 0;
        *v76 = 0u;
        *(v76 + 1) = 0u;
        v76[2] = doca;
        v77 = xmlStrdup(v44);
        *v69 = *(a1 + 120);
        v69[1] = v77;
        v140 = v69;
        *(a1 + 120) = v69;
        if (v46)
        {
          RootElement = xmlDocGetRootElement(doca);
          if (RootElement)
          {
            v79 = RootElement;
            if (!xmlHasProp(RootElement, "ns"))
            {
              xmlSetProp(v79, "ns", v46);
            }
          }
        }

        v80 = *(a1 + 216);
        if (v80 || (*(a1 + 208) = 0x400000000, v80 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL), (*(a1 + 216) = v80) != 0))
        {
          v81 = *(a1 + 208);
          v82 = *(a1 + 212);
          if (v81 < v82)
          {
            goto LABEL_176;
          }

          *(a1 + 212) = 2 * v82;
          v80 = malloc_type_realloc(v80, 16 * v82, 0x2004093837F09uLL);
          *(a1 + 216) = v80;
          if (v80)
          {
            v81 = *(a1 + 208);
LABEL_176:
            *(v80 + v81) = v140;
            *(a1 + 200) = v140;
            *(a1 + 208) = v81 + 1;
            goto LABEL_177;
          }
        }

        xmlRngPErrMemory(a1, "allocating include\n");
LABEL_177:
        v93 = xmlRelaxNGCleanupDoc(a1, doca);
        if (!v93)
        {
          v69 = 0;
          *(a1 + 200) = 0;
          goto LABEL_229;
        }

        v94 = *(a1 + 208);
        if (v94 >= 1)
        {
          v95 = *(a1 + 216);
          v96 = v94 - 1;
          *(a1 + 208) = v94 - 1;
          if (v94 == 1)
          {
            v97 = 0;
          }

          else
          {
            v97 = *(v95 + 8 * v94 - 16);
          }

          *(a1 + 200) = v97;
          *(v95 + 8 * v96) = 0;
        }

        v102 = xmlDocGetRootElement(v93);
        if (v102)
        {
          if (v102->ns)
          {
            if (v102->type == XML_ELEMENT_NODE)
            {
              docb = v102;
              if (xmlStrEqual(v102->name, "grammar"))
              {
                if (xmlStrEqual(*(*&docb->compression + 16), "http://relaxng.org/ns/structure/1.0"))
                {
                  children = *(v6 + 24);
                  if (!children)
                  {
LABEL_225:
                    v69 = v140;
                    goto LABEL_229;
                  }

                  while (1)
                  {
                    v104 = children;
                    if (!children->ns)
                    {
                      goto LABEL_223;
                    }

                    node = children;
                    if (children->type != XML_ELEMENT_NODE)
                    {
                      goto LABEL_218;
                    }

                    v105 = xmlStrEqual(children->name, "start");
                    v104 = node;
                    ns = node->ns;
                    if (!v105)
                    {
                      goto LABEL_208;
                    }

                    if (!xmlStrEqual(ns->href, "http://relaxng.org/ns/structure/1.0"))
                    {
                      break;
                    }

                    v107 = xmlRelaxNGRemoveRedefine(docb->children, 0);
                    v104 = node;
                    if (v107)
                    {
                      goto LABEL_218;
                    }

                    xmlRngPErr(a1, v6, 1107, "xmlRelaxNG: include %s has a start but not the included grammar\n", v44, 0);
LABEL_217:
                    v104 = node;
LABEL_218:
                    if (v104->ns)
                    {
                      if (v104->type == XML_ELEMENT_NODE)
                      {
                        v112 = xmlStrEqual(v104->name, "div");
                        v104 = node;
                        if (v112)
                        {
                          v113 = xmlStrEqual(node->ns->href, "http://relaxng.org/ns/structure/1.0");
                          v104 = node;
                          if (v113)
                          {
                            children = node->children;
                            if (children)
                            {
                              continue;
                            }
                          }
                        }
                      }
                    }

LABEL_223:
                    while (1)
                    {
                      children = v104->next;
                      if (children)
                      {
                        break;
                      }

                      v104 = v104->parent;
                      if (v104 == v6)
                      {
                        goto LABEL_225;
                      }
                    }
                  }

                  v104 = node;
                  ns = node->ns;
LABEL_208:
                  if (!ns)
                  {
                    goto LABEL_223;
                  }

                  if (v104->type != XML_ELEMENT_NODE)
                  {
                    goto LABEL_218;
                  }

                  v108 = xmlStrEqual(v104->name, "define");
                  v104 = node;
                  if (!v108)
                  {
                    goto LABEL_218;
                  }

                  v109 = xmlStrEqual(node->ns->href, "http://relaxng.org/ns/structure/1.0");
                  v104 = node;
                  if (!v109)
                  {
                    goto LABEL_218;
                  }

                  v110 = xmlGetProp(node, "name");
                  if (v110)
                  {
                    v111 = v110;
                    xmlRelaxNGNormExtSpace(v110);
                    if (!xmlRelaxNGRemoveRedefine(docb->children, v111))
                    {
                      xmlRngPErr(a1, v6, 1013, "xmlRelaxNG: include %s has a define %s but not the included grammar\n", v44, v111);
                    }

                    free(v111);
                  }

                  else
                  {
                    xmlRngPErr(a1, v6, 1053, "xmlRelaxNG: include %s has define without name\n", v44, 0);
                  }

                  goto LABEL_217;
                }
              }
            }
          }

          v83 = a1;
          v84 = v6;
          v85 = 1038;
          v86 = "xmlRelaxNG: included document %s root is not a grammar\n";
        }

        else
        {
          v83 = a1;
          v84 = v6;
          v85 = 1022;
          v86 = "xmlRelaxNG: included document is empty %s\n";
        }

LABEL_228:
        xmlRngPErr(v83, v84, v85, v86, v44, 0);
        v69 = 0;
LABEL_229:
        if (v46)
        {
          free(v46);
        }

        if (!v69)
        {
          xmlRngPErr(a1, v6, 1043, "Failed to load include %s\n", v44, 0);
LABEL_248:
          v52 = v44;
          goto LABEL_249;
        }

        goto LABEL_232;
      }

      v35 = a1;
      v36 = v6;
      v37 = 1052;
      v38 = "xmlRelaxNGParse: include has no href attribute\n";
      v34 = 0;
LABEL_68:
      xmlRngPErr(v35, v36, v37, v38, v34, 0);
      v4 = v6;
      goto LABEL_250;
    }

    if (!xmlStrEqual(*(v6 + 16), "element") && !xmlStrEqual(*(v6 + 16), "attribute"))
    {
      if (xmlStrEqual(*(v6 + 16), "name") || xmlStrEqual(*(v6 + 16), "nsName") || xmlStrEqual(*(v6 + 16), "value"))
      {
        if (!xmlHasProp(v6, "ns"))
        {
          v87 = v6;
          while (1)
          {
            v87 = *(v87 + 40);
            if (!v87 || *(v87 + 8) != 1)
            {
              break;
            }

            v88 = xmlGetProp(v87, "ns");
            if (v88)
            {
              v89 = v88;
              xmlSetProp(v6, "ns", v88);
              free(v89);
              goto LABEL_258;
            }
          }

          xmlSetProp(v6, "ns", "");
        }

LABEL_258:
        if (xmlStrEqual(*(v6 + 16), "name"))
        {
          prefix = 0;
          Content = xmlNodeGetContent(v6);
          if (Content)
          {
            v124 = Content;
            v125 = xmlSplitQName2(Content, &prefix);
            if (v125)
            {
              v126 = v125;
              v127 = xmlSearchNs(*(v6 + 64), v6, prefix);
              if (v127)
              {
                xmlSetProp(v6, "ns", v127->href);
                xmlNodeSetContent(v6, v126);
              }

              else
              {
                xmlRngPErr(a1, v6, 1097, "xmlRelaxNGParse: no namespace for prefix %s\n", prefix, 0);
              }

              free(v126);
              free(prefix);
            }

            free(v124);
          }
        }

        if (!xmlStrEqual(*(v6 + 16), "nsName") || (*(a1 + 65) & 2) == 0)
        {
          goto LABEL_233;
        }

        v128 = a1;
        v129 = v6;
        v130 = 1085;
        v131 = "Found nsName/except//nsName forbidden construct\n";
      }

      else
      {
        v132 = xmlStrEqual(*(v6 + 16), "except");
        if (v6 != a2 && v132)
        {
          v133 = *(v6 + 40);
          if (!v133)
          {
            goto LABEL_233;
          }

          v134 = *(a1 + 64);
          if (xmlStrEqual(*(v133 + 16), "anyName"))
          {
            v135 = *(a1 + 64) | 0x100;
          }

          else
          {
            v137 = *(v6 + 40);
            if (!v137 || !xmlStrEqual(*(v137 + 16), "nsName"))
            {
              goto LABEL_233;
            }

            v135 = *(a1 + 64) | 0x200;
          }

          *(a1 + 64) = v135;
          xmlRelaxNGCleanupTree(a1, v6);
          v4 = 0;
          *(a1 + 64) = v134;
          goto LABEL_250;
        }

        if (!xmlStrEqual(*(v6 + 16), "anyName"))
        {
          goto LABEL_233;
        }

        v136 = *(a1 + 64);
        if ((v136 & 0x100) != 0)
        {
          v128 = a1;
          v129 = v6;
          v130 = 1066;
          v131 = "Found anyName/except//anyName forbidden construct\n";
        }

        else
        {
          if ((v136 & 0x200) == 0)
          {
            goto LABEL_233;
          }

          v128 = a1;
          v129 = v6;
          v130 = 1084;
          v131 = "Found nsName/except//anyName forbidden construct\n";
        }
      }

      xmlRngPErr(v128, v129, v130, v131, 0, 0);
      goto LABEL_233;
    }

    v53 = xmlGetProp(v6, "name");
    if (!v53)
    {
      goto LABEL_233;
    }

    v54 = v53;
    if (*(v6 + 24))
    {
      v55 = xmlNewDocNode(*(v6 + 64), *(v6 + 72), "name", 0);
      if (v55)
      {
        v56 = v55;
        xmlAddPrevSibling(*(v6 + 24), v55);
        v57 = xmlNewText(v54);
        xmlAddChild(v56, v57);
LABEL_136:
        v72 = 0;
        goto LABEL_138;
      }
    }

    else
    {
      v71 = xmlNewChild(v6, *(v6 + 72), "name", v53);
      if (v71)
      {
        v56 = v71;
        goto LABEL_136;
      }
    }

    xmlRngPErr(a1, v6, 1008, "Failed to create a name %s element\n", v54, 0);
    v56 = 0;
    v72 = 1;
LABEL_138:
    xmlUnsetProp(v6, "name");
    free(v54);
    v73 = xmlGetProp(v6, "ns");
    if (v73)
    {
      v74 = v73;
      if ((v72 & 1) == 0)
      {
        xmlSetProp(v56, "ns", v73);
      }

      free(v74);
    }

    else if (xmlStrEqual(*(v6 + 16), "attribute"))
    {
      xmlSetProp(v56, "ns", "");
    }

LABEL_233:
    if (xmlStrEqual(*(v6 + 16), "div"))
    {
      v114 = xmlGetProp(v6, "ns");
      v115 = *(v6 + 24);
      if (v115)
      {
        Sibling = v6;
        do
        {
          if (v114 && !xmlHasProp(v115, "ns"))
          {
            xmlSetProp(v115, "ns", v114);
          }

          next = v115->next;
          xmlUnlinkNode(v115);
          Sibling = xmlAddNextSibling(Sibling, v115);
          v115 = next;
        }

        while (next);
      }

      if (v114)
      {
        free(v114);
      }

      v118 = *(v6 + 96);
      v4 = v6;
      if (v118)
      {
        v119 = *(v6 + 40);
        v4 = v6;
        if (v119)
        {
          v120 = (v119 + 96);
          do
          {
            v121 = v120;
            v120 = *v120;
          }

          while (v120);
          *v121 = v118;
          *(v6 + 96) = 0;
          v4 = v6;
        }
      }

      goto LABEL_250;
    }

    goto LABEL_54;
  }

  v39 = xmlGetProp(v6, "ns");
  if (v39)
  {
LABEL_71:
    Base = v39;
  }

  else
  {
    v47 = v6;
    while (1)
    {
      v47 = *(v47 + 40);
      if (!v47 || *(v47 + 8) != 1)
      {
        break;
      }

      v39 = xmlGetProp(v47, "ns");
      if (v39)
      {
        goto LABEL_71;
      }
    }

    Base = 0;
  }

  v48 = xmlGetProp(v6, "href");
  if (!v48)
  {
    xmlRngPErr(a1, v6, 1052, "xmlRelaxNGParse: externalRef has no href attribute\n", 0, 0);
    v4 = v6;
    if (!Base)
    {
      goto LABEL_250;
    }

LABEL_95:
    v52 = Base;
LABEL_249:
    free(v52);
    v4 = v6;
    goto LABEL_250;
  }

  v49 = v48;
  v50 = xmlParseURI(v48);
  if (!v50)
  {
    xmlRngPErr(a1, v6, 1041, "Incorrect URI for externalRef %s\n", v49, 0);
    if (Base)
    {
      free(Base);
    }

    goto LABEL_98;
  }

  v51 = v50;
  if (v50->fragment)
  {
    xmlRngPErr(a1, v6, 1041, "Fragment forbidden in URI for externalRef %s\n", v49, 0);
    if (Base)
    {
      free(Base);
    }

    xmlFreeURI(v51);
LABEL_98:
    free(v49);
    v4 = v6;
    goto LABEL_250;
  }

  xmlFreeURI(v50);
  v58 = xmlNodeGetBase(*(v6 + 64), v6);
  v59 = xmlBuildURI(v49, v58);
  if (v59)
  {
    v44 = v59;
    free(v49);
    if (v58)
    {
      free(v58);
    }

    if (*(a1 + 184) >= 1)
    {
      v60 = 0;
      while (!xmlStrEqual(*(*(*(a1 + 192) + 8 * v60) + 8), v44))
      {
        if (++v60 >= *(a1 + 184))
        {
          goto LABEL_112;
        }
      }

      v90 = a1;
      v91 = 1033;
      v92 = "Detected an externalRef recursion for %s\n";
      goto LABEL_172;
    }

LABEL_112:
    doc = xmlReadFile(v44, 0, 0);
    if (!doc)
    {
      v90 = a1;
      v91 = 1065;
      v92 = "xmlRelaxNG: could not load %s\n";
LABEL_172:
      xmlRngPErr(v90, 0, v91, v92, v44, 0);
      goto LABEL_191;
    }

    v61 = malloc_type_malloc(0x30uLL, 0x103004044A2E727uLL);
    if (!v61)
    {
      xmlRngPErr(a1, doc, 2, "xmlRelaxNG: allocate memory for doc %s\n", v44, 0);
      xmlFreeDoc(doc);
      goto LABEL_191;
    }

    v62 = v61;
    v61[1] = 0u;
    v61[2] = 0u;
    *v61 = 0u;
    *(v61 + 2) = doc;
    v63 = xmlStrdup(v44);
    *v62 = *(a1 + 112);
    *(v62 + 1) = v63;
    *(v62 + 10) = 1;
    v139 = v62;
    *(a1 + 112) = v62;
    if (Base)
    {
      v64 = xmlDocGetRootElement(doc);
      if (v64)
      {
        v65 = v64;
        if (!xmlHasProp(v64, "ns"))
        {
          xmlSetProp(v65, "ns", Base);
        }
      }
    }

    v66 = *(a1 + 192);
    if (!v66)
    {
      *(a1 + 184) = 0x400000000;
      v66 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
      *(a1 + 192) = v66;
      if (!v66)
      {
        xmlRngPErrMemory(a1, "adding document\n");
        v69 = v139;
        goto LABEL_186;
      }
    }

    v67 = *(a1 + 184);
    v68 = *(a1 + 188);
    if (v67 >= v68)
    {
      *(a1 + 188) = 2 * v68;
      v66 = malloc_type_realloc(v66, 16 * v68, 0x2004093837F09uLL);
      *(a1 + 192) = v66;
      v69 = v139;
      if (!v66)
      {
        xmlRngPErrMemory(a1, "adding document\n");
        goto LABEL_186;
      }

      v67 = *(a1 + 184);
    }

    else
    {
      v69 = v139;
    }

    *(v66 + v67) = v69;
    *(a1 + 176) = v69;
    *(a1 + 184) = v67 + 1;
LABEL_186:
    if (xmlRelaxNGCleanupDoc(a1, doc))
    {
      v98 = *(a1 + 184);
      if (v98 >= 1)
      {
        v99 = *(a1 + 192);
        v100 = v98 - 1;
        *(a1 + 184) = v98 - 1;
        if (v98 == 1)
        {
          v101 = 0;
        }

        else
        {
          v101 = *(v99 + 8 * v98 - 16);
        }

        *(a1 + 176) = v101;
        *(v99 + 8 * v100) = 0;
      }

      if (Base)
      {
        free(Base);
      }

LABEL_232:
      free(v44);
      *(v6 + 104) = v69;
      goto LABEL_233;
    }

    *(a1 + 176) = 0;
LABEL_191:
    xmlRngPErr(a1, v6, 1032, "Failed to load externalRef %s\n", v44, 0);
    if (Base)
    {
      free(Base);
    }

    goto LABEL_248;
  }

  xmlRngPErr(a1, v6, 1041, "Failed to compute URL for externalRef %s\n", v49, 0);
  if (Base)
  {
    free(Base);
  }

  free(v49);
  v4 = v6;
  if (v58)
  {
    v52 = v58;
    goto LABEL_249;
  }

  do
  {
LABEL_250:
    v5 = *(v6 + 48);
    if (v5)
    {
      goto LABEL_3;
    }

    v6 = *(v6 + 40);
    if (v6)
    {
      v122 = v6 == a2;
    }

    else
    {
      v122 = 1;
    }
  }

  while (!v122);
  if (v4)
  {
    xmlUnlinkNode(v4);
    xmlFreeNode(v4);
  }
}

uint64_t xmlRelaxNGRemoveRedefine(uint64_t a1, const xmlChar *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0;
    while (1)
    {
      v5 = v3;
      v3 = *(v3 + 48);
      v6 = *(v5 + 72);
      if (a2)
      {
        if (!v6 || *(v5 + 8) != 1 || !xmlStrEqual(*(v5 + 16), "define") || !xmlStrEqual(*(*(v5 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          goto LABEL_17;
        }

        Prop = xmlGetProp(v5, "name");
        xmlRelaxNGNormExtSpace(Prop);
        if (Prop)
        {
          if (xmlStrEqual(a2, Prop))
          {
            xmlUnlinkNode(v5);
            xmlFreeNode(v5);
            v4 = 1;
          }

          free(Prop);
        }
      }

      else
      {
        if (!v6 || *(v5 + 8) != 1 || !xmlStrEqual(*(v5 + 16), "start") || !xmlStrEqual(*(*(v5 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
        {
LABEL_17:
          if (*(v5 + 72) && *(v5 + 8) == 1 && xmlStrEqual(*(v5 + 16), "include") && xmlStrEqual(*(*(v5 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            v8 = *(v5 + 104);
            if (v8)
            {
              v9 = *(v8 + 16);
              if (v9)
              {
                v10 = *(v9 + 24);
                if (v10)
                {
                  if (xmlStrEqual(*(v10 + 16), "grammar"))
                  {
                    RootElement = xmlDocGetRootElement(*(v8 + 16));
                    if (xmlRelaxNGRemoveRedefine(RootElement->children, a2) == 1)
                    {
                      LODWORD(v4) = 1;
                    }
                  }
                }
              }
            }

            if (xmlRelaxNGRemoveRedefine(*(v5 + 24), a2) == 1)
            {
              v4 = 1;
            }

            else
            {
              v4 = v4;
            }
          }

          goto LABEL_30;
        }

        xmlUnlinkNode(v5);
        xmlFreeNode(v5);
        v4 = 1;
      }

LABEL_30:
      if (!v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

unsigned __int8 *xmlRelaxNGNormExtSpace(unsigned __int8 *result)
{
  if (!result)
  {
    return result;
  }

  for (i = 0; ; ++i)
  {
    v2 = result[i];
    v3 = v2 > 0x20;
    v4 = (1 << v2) & 0x100002600;
    if (v3 || v4 == 0)
    {
      break;
    }
  }

  if (i)
  {
    for (j = &result[i]; ; ++j)
    {
      v7 = *j;
      if (v7 > 0x20)
      {
        k = *j;
      }

      else if (((1 << v7) & 0x100002600) != 0)
      {
        for (k = *j; k <= 0x20u; k = v9)
        {
          v7 = k;
          if (((1 << k) & 0x100002600) == 0)
          {
            goto LABEL_17;
          }

          v9 = *++j;
        }
      }

      else
      {
        k = *j;
LABEL_17:
        if (!v7)
        {
          goto LABEL_30;
        }
      }

      *result++ = k;
    }
  }

  while (1)
  {
LABEL_21:
    v10 = *result;
    if (v10 > 0x20)
    {
      goto LABEL_29;
    }

    v11 = *result;
    v12 = result;
    if (((1 << v10) & 0x100002600) != 0)
    {
      break;
    }

    if (!*result)
    {
      return result;
    }

LABEL_29:
    ++result;
  }

  while (1)
  {
    if (v11 > 0x20u)
    {
      goto LABEL_27;
    }

    if (((1 << v11) & 0x100002600) == 0)
    {
      break;
    }

    v13 = *++v12;
    v11 = v13;
  }

  if (v11)
  {
LABEL_27:
    result = v12;
    goto LABEL_21;
  }

LABEL_30:
  *result = 0;
  return result;
}

void *xmlRelaxNGParseGrammar(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = xmlRelaxNGNewGrammar(a1);
  v5 = v4;
  if (!v4)
  {
    goto LABEL_47;
  }

  v6 = *(a1 + 48);
  *v4 = v6;
  if (v6)
  {
    v7 = (v6 + 8);
    v8 = *(v6 + 8);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *(v8 + 16);
      }

      while (v8);
      v7 = (v9 + 16);
    }

    *v7 = v4;
  }

  *(a1 + 48) = v4;
  xmlRelaxNGParseGrammarContent(a1, a2);
  *(a1 + 48) = v5;
  v10 = v5[3];
  if (!v10)
  {
    xmlRngPErr(a1, a2, 1039, "Element <grammar> has no <start>\n", 0, 0);
    v10 = v5[3];
    if (!v10)
    {
      goto LABEL_42;
    }
  }

  if (!*(v10 + 64))
  {
    goto LABEL_42;
  }

  v11 = 0;
  v12 = -1;
  v13 = v10;
  do
  {
    v14 = *(v13 + 8);
    if (v14 && (v15 = *(v14 + 40)) != 0 && (v16 = xmlStrEqual(*(v15 + 16), "start"), v14 = *(v13 + 8), v16))
    {
      Prop = xmlGetProp(*(v14 + 40), "combine");
      if (Prop)
      {
        v18 = Prop;
        if (xmlStrEqual(Prop, "choice"))
        {
          if (v12)
          {
            v12 = 1;
LABEL_29:
            free(v18);
            goto LABEL_22;
          }
        }

        else
        {
          if (!xmlStrEqual(v18, "interleave"))
          {
            v19 = *(v13 + 8);
            v20 = a1;
            v21 = 1114;
            v22 = "<start> uses unknown combine value '%s''\n";
            v23 = v18;
            goto LABEL_28;
          }

          if (v12 != 1)
          {
            v12 = 0;
            goto LABEL_29;
          }
        }

        v19 = *(v13 + 8);
        v20 = a1;
        v21 = 1104;
        v22 = "<start> use both 'choice' and 'interleave'\n";
        v23 = 0;
LABEL_28:
        xmlRngPErr(v20, v19, v21, v22, v23, 0);
        goto LABEL_29;
      }
    }

    else
    {
      xmlRngPErr(a1, v14, 1107, "Internal error: start element not found\n", 0, 0);
    }

    if (v11)
    {
      xmlRngPErr(a1, *(v13 + 8), 1054, "Some <start> element miss the combine attribute\n", 0, 0);
    }

    v11 = 1;
LABEL_22:
    v13 = *(v13 + 64);
  }

  while (v13);
  v24 = xmlRelaxNGNewDefine(a1, *(v10 + 8));
  if (v24)
  {
    v25 = v24;
    v26 = (v12 + 1) >= 2 ? 17 : 19;
    *v24 = v26;
    *(v24 + 6) = v5[3];
    v5[3] = v24;
    if ((v12 + 1) <= 1)
    {
      if (*(a1 + 104) || (v27 = xmlHashCreate(10), (*(a1 + 104) = v27) != 0))
      {
        *__str = 0u;
        v38 = 0u;
        v28 = *(a1 + 96);
        *(a1 + 96) = v28 + 1;
        snprintf(__str, 0x20uLL, "interleave%d", v28);
        if (xmlHashAddEntry(*(a1 + 104), __str, v25) < 0)
        {
          v29 = v25[1];
          v30 = "Failed to add %s to hash table\n";
          v31 = __str;
          v32 = a1;
          goto LABEL_41;
        }
      }

      else
      {
        v29 = v25[1];
        v30 = "Failed to create interleaves hash table\n";
        v32 = a1;
        v31 = 0;
LABEL_41:
        xmlRngPErr(v32, v29, 1046, v30, v31, 0);
      }
    }
  }

LABEL_42:
  v33 = v5[6];
  if (v33)
  {
    xmlHashScan(v33, xmlRelaxNGCheckCombine, a1);
  }

  v34 = v5[7];
  if (v34)
  {
    xmlHashScan(v34, xmlRelaxNGCheckReference, a1);
  }

  *(a1 + 48) = v6;
LABEL_47:
  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

_OWORD *xmlRelaxNGNewGrammar(uint64_t a1)
{
  v2 = malloc_type_malloc(0x40uLL, 0x1020040DC7609F6uLL);
  v3 = v2;
  if (v2)
  {
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
  }

  else
  {
    xmlRngPErrMemory(a1, 0);
  }

  return v3;
}

uint64_t xmlRelaxNGParseStart(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 72) || *(a2 + 8) != 1)
  {
    goto LABEL_17;
  }

  v4 = xmlStrEqual(*(a2 + 16), "empty");
  v5 = *(a2 + 72);
  if (v4)
  {
    if (xmlStrEqual(*(v5 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v6 = xmlRelaxNGNewDefine(a1, a2);
      if (v6)
      {
        v7 = v6;
        *v6 = 0;
        if (!*(a2 + 24))
        {
          goto LABEL_18;
        }

        v8 = "element empty is not empty\n";
        v9 = a1;
        v10 = a2;
        v11 = 1024;
        goto LABEL_8;
      }

      return 0xFFFFFFFFLL;
    }

    v5 = *(a2 + 72);
  }

  if (v5 && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "notAllowed") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v12 = xmlRelaxNGNewDefine(a1, a2);
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v12;
    *v12 = 1;
    if (*(a2 + 24))
    {
      v8 = "element notAllowed is not empty\n";
      v9 = a1;
      v10 = a2;
      v11 = 1055;
LABEL_8:
      xmlRngPErr(v9, v10, v11, v8, 0, 0);
    }
  }

  else
  {
LABEL_17:
    v7 = xmlRelaxNGParsePatterns(a1, a2, 1);
  }

LABEL_18:
  v13 = *(a1 + 48);
  v16 = *(v13 + 24);
  v14 = (v13 + 24);
  v15 = v16;
  if (v16)
  {
    do
    {
      v17 = v15;
      v15 = *(v15 + 64);
    }

    while (v15);
    v14 = (v17 + 64);
  }

  *v14 = v7;
  v18 = *(a2 + 48);
  if (v18)
  {
    xmlRngPErr(a1, v18, 1105, "start more than one children\n", 0, 0);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t xmlRelaxNGCheckCycles(uint64_t a1, int *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  while (1)
  {
    v6 = *v4;
    if (*v4 == 4)
    {
      v10 = *(v4 + 6);
      v12 = (a3 + 1);
      v11 = a1;
      goto LABEL_13;
    }

    if (v6 != 13 && v6 != 11)
    {
      v10 = *(v4 + 6);
      v11 = a1;
      v12 = a3;
LABEL_13:
      result = xmlRelaxNGCheckCycles(v11, v10, v12);
      goto LABEL_15;
    }

    v8 = *(v4 + 48);
    if (v8 == -1)
    {
      *(v4 + 48) = a3;
      result = xmlRelaxNGCheckCycles(a1, *(v4 + 6), a3);
      *(v4 + 48) = -2;
      goto LABEL_15;
    }

    if (v8 == a3)
    {
      break;
    }

    result = 0;
LABEL_15:
    v4 = *(v4 + 8);
    if (result)
    {
      v13 = 1;
    }

    else
    {
      v13 = v4 == 0;
    }

    if (v13)
    {
      return result;
    }
  }

  xmlRngPErr(a1, *(v4 + 1), 1099, "Detected a cycle in %s references\n", *(v4 + 2), 0);
  return 0xFFFFFFFFLL;
}

uint64_t xmlRelaxNGSimplify(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return result;
  }

  v4 = a2;
  v5 = result;
  v6 = 0;
  while (1)
  {
    v7 = *v4;
    if (*v4 > 10)
    {
      if (v7 == 13 || v7 == 11)
      {
        if (*(v4 + 96) != -3)
        {
          *(v4 + 96) = -3;
          result = xmlRelaxNGSimplify(v5, *(v4 + 48), v4);
        }

        goto LABEL_63;
      }
    }

    else
    {
      if (!v7)
      {
        *(v4 + 56) = a3;
        if (a3)
        {
          if ((*a3 - 15) < 2)
          {
            goto LABEL_72;
          }

          if ((*a3 & 0xFFFFFFFE) == 0x12)
          {
LABEL_60:
            if (v6)
            {
              *(v6 + 64) = *(v4 + 64);
            }

            else if (*(a3 + 48) == v4)
            {
              v6 = 0;
              *(a3 + 48) = *(v4 + 64);
            }

            else if (*(a3 + 72) == v4)
            {
              v6 = 0;
              *(a3 + 72) = *(v4 + 64);
            }

            else
            {
              v6 = 0;
              if (*(a3 + 80) == v4)
              {
                *(a3 + 80) = *(v4 + 64);
              }
            }

            goto LABEL_63;
          }
        }

        goto LABEL_62;
      }

      if (v7 == 1)
      {
        *(v4 + 56) = a3;
LABEL_7:
        if (!a3)
        {
          goto LABEL_62;
        }

        v8 = *a3;
        if (*a3 > 0x13u)
        {
          goto LABEL_62;
        }

        if (v8 == 17)
        {
          goto LABEL_60;
        }

        v6 = v4;
        if (((1 << v8) & 0xD8300) != 0)
        {
          v20 = 1;
          goto LABEL_73;
        }

        goto LABEL_63;
      }
    }

    *(v4 + 56) = a3;
    v10 = *(v4 + 48);
    if (v10)
    {
      result = xmlRelaxNGSimplify(v5, v10, v4);
      v7 = *v4;
    }

    if (v7 != 7)
    {
      v11 = *(v4 + 72);
      if (v11)
      {
        result = xmlRelaxNGSimplify(v5, v11, v4);
      }
    }

    v12 = *(v4 + 80);
    if (v12)
    {
      result = xmlRelaxNGSimplify(v5, v12, v4);
    }

    if (*v4 == 4)
    {
      v13 = *(v4 + 48);
      if (v13)
      {
        while (1)
        {
          result = xmlRelaxNGGenerateAttributes(v5, v13);
          v14 = *(v4 + 48);
          if (result != 1)
          {
            break;
          }

          v13 = *(v14 + 64);
          *(v4 + 48) = v13;
          *(v14 + 64) = *(v4 + 72);
          *(v4 + 72) = v14;
          if (!v13)
          {
            goto LABEL_40;
          }
        }

        if (v14)
        {
          while (1)
          {
            v15 = *(v14 + 64);
            if (!v15)
            {
              break;
            }

            result = xmlRelaxNGGenerateAttributes(v5, *(v14 + 64));
            if (result == 1)
            {
              *(v14 + 64) = *(v15 + 64);
              *(v15 + 64) = *(v4 + 72);
              *(v4 + 72) = v15;
            }

            else
            {
              v14 = v15;
            }
          }
        }
      }
    }

LABEL_40:
    v16 = *v4;
    if ((*v4 & 0xFFFFFFFE) == 0x12)
    {
      break;
    }

LABEL_51:
    if (!v16)
    {
      goto LABEL_57;
    }

    if (v16 == 1)
    {
      goto LABEL_7;
    }

    if (v16 != 2)
    {
      goto LABEL_62;
    }

    v19 = *(v4 + 48);
    if (!v19 || *v19 != 1)
    {
      goto LABEL_62;
    }

    result = xmlRelaxNGTryUnlink(v4, a3, v6);
    v6 = result;
LABEL_63:
    v4 = *(v4 + 64);
    if (!v4)
    {
      return result;
    }
  }

  v17 = *(v4 + 48);
  if (v17)
  {
    if (!*(v17 + 64))
    {
      if (!(a3 | v6))
      {
        *v4 = -1;
        goto LABEL_62;
      }

      if (v6)
      {
        *(v17 + 64) = *(v4 + 64);
        v18 = v6;
        v4 = v17;
      }

      else
      {
        *(a3 + 48) = v17;
        v17 = *(v4 + 64);
        v18 = *(v4 + 48);
        v4 = v18;
      }

      *(v18 + 64) = v17;
    }

    v16 = *v4;
    goto LABEL_51;
  }

  *v4 = 0;
LABEL_57:
  if (!a3)
  {
LABEL_62:
    v6 = v4;
    goto LABEL_63;
  }

  if ((*a3 - 15) >= 2)
  {
    if ((*a3 - 17) <= 2)
    {
      goto LABEL_60;
    }

    goto LABEL_62;
  }

LABEL_72:
  v20 = 0;
LABEL_73:
  *a3 = v20;
  return result;
}

uint64_t xmlRelaxNGCheckRules(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  v6 = a2;
  v8 = 0;
  v9 = a3 | 8;
  v10 = (32 * a3) & 0x40;
  v11 = (16 * a3) & 0x20;
  while (2)
  {
    v12 = *v6;
    switch(v12)
    {
      case 0:
        if ((a3 & 8) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1071, "Found forbidden pattern data/except//empty\n", 0, 0);
        }

        if ((a3 & 0x10) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1090, "Found forbidden pattern start//empty\n", 0, 0);
        }

        goto LABEL_170;
      case 2:
        v29 = *(v6 + 7);
        v28 = a3;
        if (v29)
        {
          if (*v29 == 5)
          {
            v28 = v9;
          }

          else
          {
            v28 = a3;
          }
        }

        v26 = *(v6 + 6);
        v27 = a1;
        v12 = 2;
        goto LABEL_166;
      case 3:
        if ((a3 & 4) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1083, "Found forbidden pattern list//text\n", 0, 0);
          if ((a3 & 8) == 0)
          {
LABEL_33:
            if ((a3 & 0x10) == 0)
            {
              goto LABEL_79;
            }

            goto LABEL_78;
          }
        }

        else if ((a3 & 8) == 0)
        {
          goto LABEL_33;
        }

        xmlRngPErr(a1, *(v6 + 1), 1077, "Found forbidden pattern data/except//text\n", 0, 0);
        if ((a3 & 0x10) == 0)
        {
          goto LABEL_79;
        }

LABEL_78:
        xmlRngPErr(a1, *(v6 + 1), 1095, "Found forbidden pattern start//text\n", 0, 0);
        goto LABEL_79;
      case 4:
        xmlRelaxNGCheckGroupAttrs(a1, v6);
        if ((a3 & 8) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1070, "Found forbidden pattern data/except//element(ref)\n", 0, 0);
          if ((a3 & 4) == 0)
          {
LABEL_68:
            if ((a3 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }
        }

        else if ((a3 & 4) == 0)
        {
          goto LABEL_68;
        }

        xmlRngPErr(a1, *(v6 + 1), 1079, "Found forbidden pattern list//element(ref)\n", 0, 0);
        if ((a3 & 1) == 0)
        {
LABEL_70:
          if (xmlRelaxNGCheckRules(a1, *(v6 + 9), 0, *v6))
          {
            xmlRngPErr(a1, *(v6 + 1), 1015, "Element %s attributes have a content type error\n", *(v6 + 2), 0);
          }

          if (xmlRelaxNGCheckRules(a1, *(v6 + 6), 0, *v6) == -1)
          {
            xmlRngPErr(a1, *(v6 + 1), 1016, "Element %s has a content type error\n", *(v6 + 2), 0);
            v18 = -1;
            goto LABEL_171;
          }

LABEL_79:
          v18 = 2;
          goto LABEL_171;
        }

LABEL_69:
        xmlRngPErr(a1, *(v6 + 1), 1068, "Found forbidden pattern attribute//element(ref)\n", 0, 0);
        xmlRngPErr(a1, *(v6 + 1), 1068, "Found forbidden pattern attribute//element(ref)\n", 0, 0);
        goto LABEL_70;
      case 5:
        if ((a3 & 0x10) == 0)
        {
          v25 = 5;
          goto LABEL_102;
        }

        v30 = *(v6 + 1);
        v31 = a1;
        v32 = 1089;
        v33 = "Found forbidden pattern start//data\n";
        goto LABEL_101;
      case 7:
        if ((a3 & 0x10) != 0)
        {
          v30 = *(v6 + 1);
          v31 = a1;
          v32 = 1096;
          v33 = "Found forbidden pattern start//value\n";
LABEL_101:
          xmlRngPErr(v31, v30, v32, v33, 0, 0);
          v25 = *v6;
        }

        else
        {
          v25 = 7;
        }

LABEL_102:
        xmlRelaxNGCheckRules(a1, *(v6 + 6), a3, v25);
        v18 = 1;
        goto LABEL_171;
      case 8:
        if ((a3 & 4) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1081, "Found forbidden pattern list//list\n", 0, 0);
          if ((a3 & 8) == 0)
          {
LABEL_49:
            if ((a3 & 0x10) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }
        }

        else if ((a3 & 8) == 0)
        {
          goto LABEL_49;
        }

        xmlRngPErr(a1, *(v6 + 1), 1074, "Found forbidden pattern data/except//list\n", 0, 0);
        if ((a3 & 0x10) != 0)
        {
LABEL_50:
          xmlRngPErr(a1, *(v6 + 1), 1093, "Found forbidden pattern start//list\n", 0, 0);
        }

LABEL_51:
        v26 = *(v6 + 6);
        v12 = *v6;
        v28 = a3 | 4;
        goto LABEL_65;
      case 9:
        if (a3)
        {
          xmlRngPErr(a1, *(v6 + 1), 1067, "Found forbidden pattern attribute//attribute\n", 0, 0);
          if ((a3 & 4) == 0)
          {
LABEL_54:
            if ((a3 & 0x20) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_86;
          }
        }

        else if ((a3 & 4) == 0)
        {
          goto LABEL_54;
        }

        xmlRngPErr(a1, *(v6 + 1), 1078, "Found forbidden pattern list//attribute\n", 0, 0);
        if ((a3 & 0x20) == 0)
        {
LABEL_55:
          if ((a3 & 0x40) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_87;
        }

LABEL_86:
        xmlRngPErr(a1, *(v6 + 1), 1086, "Found forbidden pattern oneOrMore//group//attribute\n", 0, 0);
        if ((a3 & 0x40) == 0)
        {
LABEL_56:
          if ((a3 & 8) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_88;
        }

LABEL_87:
        xmlRngPErr(a1, *(v6 + 1), 1087, "Found forbidden pattern oneOrMore//interleave//attribute\n", 0, 0);
        if ((a3 & 8) == 0)
        {
LABEL_57:
          if ((a3 & 0x10) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_89;
        }

LABEL_88:
        xmlRngPErr(a1, *(v6 + 1), 1069, "Found forbidden pattern data/except//attribute\n", 0, 0);
        if ((a3 & 0x10) == 0)
        {
LABEL_58:
          if ((a3 & 2) != 0)
          {
            goto LABEL_169;
          }

          goto LABEL_90;
        }

LABEL_89:
        xmlRngPErr(a1, *(v6 + 1), 1088, "Found forbidden pattern start//attribute\n", 0, 0);
        if ((a3 & 2) != 0)
        {
          goto LABEL_169;
        }

LABEL_90:
        if (!*(v6 + 2) && !*(v6 + 10))
        {
          if (*(v6 + 3))
          {
            v34 = 1056;
            v35 = "Found nsName attribute without oneOrMore ancestor\n";
          }

          else
          {
            v34 = 1000;
            v35 = "Found anyName attribute without oneOrMore ancestor\n";
          }

          xmlRngPErr(a1, *(v6 + 1), v34, v35, 0, 0);
        }

LABEL_169:
        xmlRelaxNGCheckRules(a1, *(v6 + 6), a3 | 1, *v6);
LABEL_170:
        v18 = 0;
        goto LABEL_171;
      case 11:
      case 13:
        if ((a3 & 8) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1076, "Found forbidden pattern data/except//ref\n", 0, 0);
        }

        if (!*(v6 + 6))
        {
          if (*v6 == 13)
          {
            v13 = a1;
            v14 = "Internal found no define for parent refs\n";
            v15 = 0;
          }

          else
          {
            if (*(v6 + 2))
            {
              v15 = *(v6 + 2);
            }

            else
            {
              v15 = "null";
            }

            v13 = a1;
            v14 = "Internal found no define for ref %s\n";
          }

          xmlRngPErr(v13, *(v6 + 1), 1101, v14, v15, 0);
        }

        v36 = *(v6 + 48);
        if (v36 < -3)
        {
          v55 = v36 == -4;
          v37 = v36 + 15;
          if (v55)
          {
            v18 = 2;
          }

          else
          {
            v18 = v37;
          }
        }

        else
        {
          *(v6 + 48) = -4;
          v18 = xmlRelaxNGCheckRules(a1, *(v6 + 6), a3, *v6);
          *(v6 + 48) = v18 - 15;
        }

        goto LABEL_171;
      case 15:
      case 16:
        if ((a3 & 8) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1075, "Found forbidden pattern data/except//oneOrMore\n", 0, 0);
        }

        if ((a3 & 0x10) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1094, "Found forbidden pattern start//oneOrMore\n", 0, 0);
        }

        v16 = xmlRelaxNGCheckRules(a1, *(v6 + 6), a3 | 2, *v6);
        if (v16 == 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = -1;
        }

        if ((v16 + 1) >= 2)
        {
          v18 = v17;
        }

        else
        {
          v18 = v16;
        }

        goto LABEL_171;
      case 17:
        if ((*(v6 + 49) & 0x20) != 0 || *(a1 + 68))
        {
          goto LABEL_165;
        }

        v61 = v10;
        v19 = xmlRelaxNGIsNullable(v6);
        v20 = *(v6 + 6);
        v60 = v11;
        for (i = 0; v20; v20 = *(v20 + 64))
        {
          ++i;
        }

        v63 = 8 * i;
        v22 = malloc_type_malloc(8 * i, 0x80040B8603338uLL);
        if (!v22)
        {
          xmlRngPErrMemory(a1, "building choice\n");
          v10 = v61;
          goto LABEL_165;
        }

        v23 = v22;
        v59 = v9;
        if (v19)
        {
          v24 = 0;
          v64 = 0;
        }

        else
        {
          v24 = xmlHashCreate(10);
          v64 = 1;
        }

        v38 = *(v6 + 6);
        v62 = a1;
        if (!v38)
        {
          goto LABEL_143;
        }

        v39 = 0;
        do
        {
          v40 = xmlRelaxNGGetElements(a1, v38, 0);
          v23[v39] = v40;
          if (!v40 || (v41 = *v40) == 0)
          {
            v64 = 0;
            goto LABEL_142;
          }

          if (v64 != 1)
          {
            goto LABEL_142;
          }

          v42 = v40 + 1;
          do
          {
            if (*v41 != 4)
            {
              if (*v41 != 3)
              {
                v48 = -1;
                goto LABEL_141;
              }

              v43 = v24;
              v44 = "#text";
              goto LABEL_133;
            }

            v44 = *(v41 + 16);
            v45 = *(v41 + 24);
            if (v44)
            {
              if (!v45 || !*v45)
              {
                v43 = v24;
LABEL_133:
                v45 = 0;
                goto LABEL_134;
              }

              v43 = v24;
            }

            else
            {
              if (!v45 || !*v45)
              {
                v43 = v24;
                v44 = "#any";
                goto LABEL_133;
              }

              v43 = v24;
              v44 = "#any";
            }

LABEL_134:
            v46 = xmlHashAddEntry2(v43, v44, v45, v38);
            if (v46)
            {
              break;
            }

            v47 = *v42++;
            v41 = v47;
          }

          while (v47);
          if (v46)
          {
            v48 = -1;
          }

          else
          {
            v48 = 1;
          }

LABEL_141:
          v64 = v48;
          a1 = v62;
LABEL_142:
          ++v39;
          v38 = *(v38 + 64);
        }

        while (v38);
LABEL_143:
        if (i)
        {
          v49 = 0;
          v50 = 0;
          do
          {
            if (v49 && v23[v49])
            {
              for (j = 0; j != v49; ++j)
              {
                v52 = v23[j];
                if (v52 && !xmlRelaxNGCompareElemDefLists(v23[v49], v52))
                {
                  v50 = 1;
                }
              }
            }

            ++v49;
          }

          while (v49 != i);
          v53 = 0;
          v10 = v61;
          do
          {
            v54 = v23[v53 / 8];
            if (v54)
            {
              free(v54);
            }

            v53 += 8;
          }

          while (v63 != v53);
          free(v23);
          if (v50)
          {
            *(v6 + 49) |= 4u;
          }
        }

        else
        {
          free(v23);
          v10 = v61;
        }

        v11 = v60;
        if (v64 == 1)
        {
          *(v6 + 49) |= 0x10u;
          *(v6 + 5) = v24;
          a1 = v62;
        }

        else
        {
          a1 = v62;
          if (v24)
          {
            xmlHashFree(v24, 0);
          }
        }

        *(v6 + 49) |= 0x20u;
        v9 = v59;
LABEL_165:
        v26 = *(v6 + 6);
        v12 = *v6;
        v27 = a1;
        v28 = a3;
LABEL_166:
        v18 = xmlRelaxNGCheckRules(v27, v26, v28, v12);
LABEL_171:
        v6 = *(v6 + 8);
        if (a4 <= 16)
        {
          if (a4 == 2)
          {
            if (v18 == -1)
            {
              v8 = 0xFFFFFFFFLL;
            }

            else
            {
              v8 = 1;
            }

            if (!v6)
            {
              return v8;
            }
          }

          else
          {
            if (a4 != 8)
            {
              goto LABEL_179;
            }

            v8 = 1;
            if (!v6)
            {
              return v8;
            }
          }

          continue;
        }

        if (a4 == 17)
        {
          if (v18 == 2 || v8 == 2)
          {
            v56 = 2;
          }

          else
          {
            v56 = 0;
          }

          if (v18 == 1)
          {
            v56 = 1;
          }

          if (v8 == 1)
          {
            v56 = 1;
          }

LABEL_200:
          if (v18 == -1)
          {
            v56 = -1;
          }

          if (v8 == -1)
          {
            v8 = 0xFFFFFFFFLL;
          }

          else
          {
            v8 = v56;
          }
        }

        else if (a4 != 19)
        {
LABEL_179:
          v55 = v18 == 2 && v8 == 2;
          if (v55)
          {
            v56 = 2;
          }

          else
          {
            v56 = -1;
          }

          if (!v18)
          {
            v56 = v8;
          }

          if (!v8)
          {
            v56 = v18;
          }

          goto LABEL_200;
        }

        if (v6)
        {
          continue;
        }

        return v8;
      case 18:
        if ((a3 & 8) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1072, "Found forbidden pattern data/except//group\n", 0, 0);
        }

        if ((a3 & 0x10) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1091, "Found forbidden pattern start//group\n", 0, 0);
        }

        v18 = xmlRelaxNGCheckRules(a1, *(v6 + 6), v11 | a3, *v6);
        xmlRelaxNGCheckGroupAttrs(a1, v6);
        goto LABEL_171;
      case 19:
        if ((a3 & 4) != 0)
        {
          xmlRngPErr(a1, *(v6 + 1), 1080, "Found forbidden pattern list//interleave\n", 0, 0);
          if ((a3 & 8) == 0)
          {
LABEL_62:
            if ((a3 & 0x10) == 0)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }
        }

        else if ((a3 & 8) == 0)
        {
          goto LABEL_62;
        }

        xmlRngPErr(a1, *(v6 + 1), 1073, "Found forbidden pattern data/except//interleave\n", 0, 0);
        if ((a3 & 0x10) == 0)
        {
LABEL_64:
          v26 = *(v6 + 6);
          v12 = *v6;
          v28 = v10 | a3;
LABEL_65:
          v27 = a1;
          goto LABEL_166;
        }

LABEL_63:
        xmlRngPErr(a1, *(v6 + 1), 1073, "Found forbidden pattern start//interleave\n", 0, 0);
        goto LABEL_64;
      default:
        v26 = *(v6 + 6);
        v27 = a1;
        v28 = a3;
        goto LABEL_166;
    }
  }
}

uint64_t xmlRelaxNGParseGrammarContent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = 0;
    v5 = "define";
    v6 = "include";
    while (1)
    {
      if (!*(v3 + 72) || *(v3 + 8) != 1)
      {
        goto LABEL_33;
      }

      v7 = xmlStrEqual(*(v3 + 16), "start");
      v8 = *(v3 + 72);
      if (v7)
      {
        if (xmlStrEqual(*(v8 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v9 = *(v3 + 24);
          if (v9)
          {
            if (xmlRelaxNGParseStart(a1, v9))
            {
              v4 = 0xFFFFFFFFLL;
            }

            else
            {
              v4 = v4;
            }
          }

          else
          {
            xmlRngPErr(a1, v3, 1106, "start has no children\n", 0, 0);
          }

          goto LABEL_35;
        }

        v8 = *(v3 + 72);
      }

      if (!v8 || *(v3 + 8) != 1)
      {
        goto LABEL_33;
      }

      v10 = xmlStrEqual(*(v3 + 16), v5);
      v11 = *(v3 + 72);
      if (!v10)
      {
        goto LABEL_24;
      }

      if (!xmlStrEqual(*(v11 + 16), "http://relaxng.org/ns/structure/1.0"))
      {
        break;
      }

      Prop = xmlGetProp(v3, "name");
      if (Prop)
      {
        v13 = Prop;
        xmlRelaxNGNormExtSpace(Prop);
        if (xmlValidateNCName(v13, 0))
        {
          xmlRngPErr(a1, v3, 1049, "define name '%s' is not an NCName\n", v13, 0);
        }

        v14 = xmlRelaxNGNewDefine(a1, v3);
        if (!v14)
        {
          free(v13);
LABEL_50:
          v4 = 0xFFFFFFFFLL;
          goto LABEL_35;
        }

        v15 = v14;
        *v14 = 10;
        *(v14 + 2) = v13;
        v16 = *(v3 + 24);
        if (v16)
        {
          v17 = v5;
          v18 = v6;
          v19 = *(a1 + 80);
          *(a1 + 80) = v13;
          *(v14 + 6) = xmlRelaxNGParsePatterns(a1, v16, 0);
          *(a1 + 80) = v19;
          v6 = v18;
          v5 = v17;
        }

        else
        {
          xmlRngPErr(a1, v3, 1012, "define has no children\n", 0, 0);
        }

        v29 = *(*(a1 + 48) + 48);
        if (!v29)
        {
          v29 = xmlHashCreate(10);
          *(*(a1 + 48) + 48) = v29;
          if (!v29)
          {
            v32 = a1;
            v33 = v3;
            v34 = "Could not create definition hash\n";
            v35 = 0;
LABEL_49:
            xmlRngPErr(v32, v33, 1011, v34, v35, 0);
            goto LABEL_50;
          }
        }

        if (xmlHashAddEntry(v29, v13, v15) < 0)
        {
          v30 = xmlHashLookup(*(*(a1 + 48) + 48), v13);
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = v30[11];
            }

            while (v30);
            v31[11] = v15;
            goto LABEL_35;
          }

          v32 = a1;
          v33 = v3;
          v34 = "Internal error on define aggregation of %s\n";
          v35 = v13;
          goto LABEL_49;
        }
      }

      else
      {
        xmlRngPErr(a1, v3, 1014, "define has no name\n", 0, 0);
      }

LABEL_35:
      v3 = *(v3 + 48);
      if (!v3)
      {
        return v4;
      }
    }

    v11 = *(v3 + 72);
LABEL_24:
    if (v11 && *(v3 + 8) == 1 && xmlStrEqual(*(v3 + 16), v6) && xmlStrEqual(*(*(v3 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v20 = *(v3 + 104);
      if (v20)
      {
        RootElement = xmlDocGetRootElement(*(v20 + 16));
        if (RootElement)
        {
          v22 = RootElement;
          if (xmlStrEqual(RootElement->name, "grammar"))
          {
            if (v22->children)
            {
              v23 = xmlRelaxNGParseGrammarContent(a1) == 0;
            }

            else
            {
              v23 = 1;
            }

            if (!*(v3 + 24) || !xmlRelaxNGParseGrammarContent(a1))
            {
              if (v23)
              {
                v4 = v4;
              }

              else
              {
                v4 = 0xFFFFFFFFLL;
              }

              goto LABEL_35;
            }

            goto LABEL_58;
          }

          v36 = a1;
          v37 = v3;
          v38 = 1038;
          v39 = "Include document root is not a grammar\n";
        }

        else
        {
          v36 = a1;
          v37 = v3;
          v38 = 1022;
          v39 = "Include document is empty\n";
        }

        xmlRngPErr(v36, v37, v38, v39, 0, 0);
LABEL_58:
        v4 = 0xFFFFFFFFLL;
        goto LABEL_35;
      }

      v25 = a1;
      v26 = v3;
      v27 = 1042;
      v28 = "Include node has no data\n";
      v24 = 0;
    }

    else
    {
LABEL_33:
      v24 = *(v3 + 16);
      v25 = a1;
      v26 = v3;
      v27 = 1036;
      v28 = "grammar has unexpected child %s\n";
    }

    xmlRngPErr(v25, v26, v27, v28, v24, 0);
    v4 = 0xFFFFFFFFLL;
    goto LABEL_35;
  }

  xmlRngPErr(a1, 0, 1037, "grammar has no children\n", 0, 0);
  return 0xFFFFFFFFLL;
}

_DWORD *xmlRelaxNGCheckCombine(_DWORD *result, uint64_t a2, const xmlChar *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!*(result + 11))
  {
LABEL_37:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = -1;
  v8 = result;
  do
  {
    Prop = xmlGetProp(v8[1], "combine");
    if (Prop)
    {
      v10 = Prop;
      if (xmlStrEqual(Prop, "choice"))
      {
        if (v7)
        {
          v7 = 1;
LABEL_15:
          free(v10);
          goto LABEL_16;
        }
      }

      else
      {
        if (!xmlStrEqual(v10, "interleave"))
        {
          v11 = *(v5 + 1);
          v12 = a2;
          v13 = 1114;
          v14 = "Defines for %s use unknown combine value '%s''\n";
          v15 = a3;
          v16 = v10;
          goto LABEL_14;
        }

        if (v7 != 1)
        {
          v7 = 0;
          goto LABEL_15;
        }
      }

      v11 = *(v5 + 1);
      v12 = a2;
      v13 = 1010;
      v14 = "Defines for %s use both 'choice' and 'interleave'\n";
      v15 = a3;
      v16 = 0;
LABEL_14:
      xmlRngPErr(v12, v11, v13, v14, v15, v16);
      goto LABEL_15;
    }

    if (v6)
    {
      xmlRngPErr(a2, *(v5 + 1), 1054, "Some defines for %s needs the combine attribute\n", a3, 0);
    }

    v6 = 1;
LABEL_16:
    v8 = v8[11];
  }

  while (v8);
  result = xmlRelaxNGNewDefine(a2, *(v5 + 1));
  if (!result)
  {
    goto LABEL_37;
  }

  v17 = result;
  v18 = 0;
  v19 = v7 + 1;
  v20 = (v7 + 1) >= 2 ? 17 : 19;
  *result = v20;
  v21 = result + 12;
  v22 = v5;
  do
  {
    result = *(v22 + 6);
    if (result)
    {
      if (*(result + 8))
      {
        result = xmlRelaxNGNewDefine(a2, *(result + 1));
        if (!result)
        {
          break;
        }

        *result = 18;
        *(result + 6) = *(v22 + 6);
      }

      v23 = v18 + 16;
      if (!v18)
      {
        v23 = v21;
      }

      *v23 = result;
      v18 = result;
    }

    *(v22 + 6) = v17;
    v22 = *(v22 + 11);
  }

  while (v22);
  *(v5 + 6) = v17;
  if (v19 > 1)
  {
    goto LABEL_37;
  }

  if (*(a2 + 104) || (v24 = xmlHashCreate(10), (*(a2 + 104) = v24) != 0))
  {
    *__str = 0u;
    v30 = 0u;
    v25 = *(a2 + 96);
    *(a2 + 96) = v25 + 1;
    snprintf(__str, 0x20uLL, "interleave%d", v25);
    result = xmlHashAddEntry(*(a2 + 104), __str, v17);
    if ((result & 0x80000000) != 0)
    {
      result = xmlRngPErr(a2, *(v5 + 1), 1046, "Failed to add %s to hash table\n", __str, 0);
    }

    goto LABEL_37;
  }

  v27 = *(v5 + 1);
  v28 = *MEMORY[0x1E69E9840];

  return xmlRngPErr(a2, v27, 1046, "Failed to create interleaves hash table\n", 0, 0);
}

_DWORD *xmlRelaxNGCheckReference(_DWORD *result, uint64_t a2, const xmlChar *a3)
{
  if ((*(result + 49) & 0x100) != 0)
  {
    return result;
  }

  v5 = result;
  v6 = *(a2 + 48);
  if (v6)
  {
    if (!*(result + 6))
    {
      v11 = *(v6 + 48);
      if (v11)
      {
        result = xmlHashLookup(v11, a3);
        if (result)
        {
          do
          {
            v5[6] = result;
            v5 = v5[11];
          }

          while (v5);
          return result;
        }
      }

      v7 = v5[1];
      v8 = "Reference %s has no matching definition\n";
      v9 = a2;
      v10 = 1101;
      goto LABEL_7;
    }

    v7 = *(result + 1);
    v8 = "Internal error: reference has content in CheckReference %s\n";
  }

  else
  {
    v7 = *(result + 1);
    v8 = "Internal error: no grammar in CheckReference %s\n";
  }

  v9 = a2;
  v10 = 1;
LABEL_7:

  return xmlRngPErr(v9, v7, v10, v8, a3, 0);
}

uint64_t *xmlRelaxNGParsePatterns(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = a2;
  v6 = 0;
  v7 = 0;
  v8 = *(a1 + 88);
  do
  {
    if (*(v4 + 72) && *(v4 + 8) == 1 && xmlStrEqual(*(v4 + 16), "element") && xmlStrEqual(*(*(v4 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v9 = xmlRelaxNGParseElement(a1, v4);
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      if (v7)
      {
        if (a3 == 1 && *v7 == 4 && v7 == v6)
        {
          v11 = xmlRelaxNGNewDefine(a1, v4);
          v7 = v11;
          if (!v11)
          {
            return v7;
          }

          *v11 = 18;
          v11[6] = v6;
        }

        v6[8] = v10;
        v9 = v7;
      }

      v10[7] = v8;
      v7 = v9;
    }

    else
    {
      v12 = xmlRelaxNGParsePattern(a1, v4);
      if (v12)
      {
        v10 = v12;
        if (v7)
        {
          v6[8] = v12;
        }

        else
        {
          v7 = v12;
        }
      }

      else
      {
        v10 = v6;
      }
    }

    v4 = *(v4 + 48);
    v6 = v10;
  }

  while (v4);
  return v7;
}

_OWORD *xmlRelaxNGParseElement(uint64_t a1, uint64_t a2)
{
  v4 = xmlRelaxNGNewDefine(a1, a2);
  v5 = v4;
  if (v4)
  {
    *v4 = 4;
    *(v4 + 7) = *(a1 + 88);
    v6 = *(a2 + 24);
    if (v6)
    {
      if (!xmlRelaxNGParseNameClass(a1, *(a2 + 24), v4) || (v6 = *(v6 + 48)) != 0)
      {
        v7 = 0;
        v8 = *(a1 + 80);
        v9 = (v5 + 3);
        *(a1 + 80) = 0;
        while (1)
        {
          v10 = xmlRelaxNGParsePattern(a1, v6);
          if (v10)
          {
            v11 = v10;
            v10[7] = v5;
            v12 = *v10;
            if (*v10 <= 5)
            {
              if (v12 > 2 || v12 < 2)
              {
LABEL_17:
                if (v7)
                {
                  if (*v7 == 4 && *v9 == v7)
                  {
                    v17 = xmlRelaxNGNewDefine(a1, a2);
                    *v9 = v17;
                    v18 = (v5 + 3);
                    if (v17)
                    {
                      *v17 = 18;
                      v18 = (v17 + 6);
                    }

                    *v18 = v7;
                  }

                  v7[8] = v11;
                }

                else
                {
                  *v9 = v10;
                }

                goto LABEL_33;
              }

              if (v12 == -1)
              {
                v13 = a1;
                v14 = a2;
                v15 = "RNG Internal error, noop found in element\n";
                goto LABEL_31;
              }

              if (v12 == 2)
              {
                v13 = a1;
                v14 = a2;
                v15 = "RNG Internal error, except found in element\n";
                goto LABEL_31;
              }
            }

            else
            {
              if (v12 <= 0x14)
              {
                if (((1 << v12) & 0xFFD80) != 0)
                {
                  goto LABEL_17;
                }

                if (v12 == 9)
                {
                  v10[8] = *(v5 + 9);
                  *(v5 + 9) = v10;
                  goto LABEL_32;
                }

                if (v12 == 20)
                {
                  v13 = a1;
                  v14 = a2;
                  v15 = "RNG Internal error, start found in element\n";
LABEL_31:
                  xmlRngPErr(v13, v14, 1018, v15, 0, 0);
                  goto LABEL_32;
                }
              }

              if (v12 == 6)
              {
                v13 = a1;
                v14 = a2;
                v15 = "RNG Internal error, param found in element\n";
                goto LABEL_31;
              }
            }
          }

LABEL_32:
          v11 = v7;
LABEL_33:
          v6 = *(v6 + 48);
          v7 = v11;
          if (!v6)
          {
            *(a1 + 80) = v8;
            return v5;
          }
        }
      }

      v19 = "xmlRelaxNGParseElement: element has no content\n";
      v20 = a1;
      v21 = a2;
      v22 = 1020;
    }

    else
    {
      v19 = "xmlRelaxNGParseElement: element has no children\n";
      v20 = a1;
      v21 = a2;
      v22 = 1017;
    }

    xmlRngPErr(v20, v21, v22, v19, 0, 0);
  }

  return v5;
}

uint64_t *xmlRelaxNGParsePattern(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 72) || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v4 = xmlStrEqual(*(a2 + 16), "element");
  v5 = *(a2 + 72);
  if (v4)
  {
    if (xmlStrEqual(*(v5 + 16), "http://relaxng.org/ns/structure/1.0"))
    {

      return xmlRelaxNGParseElement(a1, a2);
    }

    v5 = *(a2 + 72);
  }

  if (!v5 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v7 = xmlStrEqual(*(a2 + 16), "attribute");
  v8 = *(a2 + 72);
  if (v7)
  {
    if (xmlStrEqual(*(v8 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v9 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v9;
      if (!v9)
      {
        return v10;
      }

      *v9 = 9;
      *(v9 + 7) = *(a1 + 88);
      v11 = *(a2 + 24);
      if (v11)
      {
        v12 = *(a1 + 64);
        *(a1 + 64) = v12 | 1;
        if (!xmlRelaxNGParseNameClass(a1, v11, v9) || (v11 = *(v11 + 48)) != 0)
        {
          v13 = xmlRelaxNGParsePattern(a1, v11);
          if (v13)
          {
            v14 = *v13 + 1;
            if (v14 <= 0x15)
            {
              v15 = 1 << v14;
              if ((v15 & 0x1FFF76) != 0)
              {
                *(v10 + 6) = v13;
                *(v13 + 56) = v10;
              }

              else
              {
                if ((v15 & 0x200088) != 0)
                {
                  v28 = "attribute has invalid content\n";
                  v29 = a1;
                  v30 = a2;
                  v31 = 1003;
                }

                else
                {
                  v28 = "RNG Internal error, noop found in attribute\n";
                  v29 = a1;
                  v30 = a2;
                  v31 = 1005;
                }

                xmlRngPErr(v29, v30, v31, v28, 0, 0);
              }
            }
          }

          if (*(v11 + 48))
          {
            xmlRngPErr(a1, a2, 1002, "attribute has multiple children\n", 0, 0);
          }
        }

        *(a1 + 64) = v12;
        return v10;
      }

      v19 = "xmlRelaxNGParseattribute: attribute has no children\n";
      v20 = a1;
      v21 = a2;
      v22 = 1004;
      goto LABEL_33;
    }

    v8 = *(a2 + 72);
  }

  if (!v8 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v16 = xmlStrEqual(*(a2 + 16), "empty");
  v17 = *(a2 + 72);
  if (v16)
  {
    if (xmlStrEqual(*(v17 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v18 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v18;
      if (!v18)
      {
        return v10;
      }

      *v18 = 0;
      if (!*(a2 + 24))
      {
        return v10;
      }

      v19 = "empty: had a child node\n";
      v20 = a1;
      v21 = a2;
      v22 = 1025;
      goto LABEL_33;
    }

    v17 = *(a2 + 72);
  }

  if (!v17 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v25 = xmlStrEqual(*(a2 + 16), "text");
  v26 = *(a2 + 72);
  if (v25)
  {
    if (xmlStrEqual(*(v26 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v27 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v27;
      if (!v27)
      {
        return v10;
      }

      *v27 = 3;
      if (!*(a2 + 24))
      {
        return v10;
      }

      v19 = "text: had a child node\n";
      v20 = a1;
      v21 = a2;
      v22 = 1109;
      goto LABEL_33;
    }

    v26 = *(a2 + 72);
  }

  if (!v26 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v32 = xmlStrEqual(*(a2 + 16), "zeroOrMore");
  v33 = *(a2 + 72);
  if (v32)
  {
    if (xmlStrEqual(*(v33 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 15;
LABEL_53:
      *v10 = v34;
      if (*(a2 + 24))
      {
        v35 = a1;
LABEL_55:
        v36 = xmlRelaxNGParsePatterns(v35);
LABEL_56:
        *(v10 + 6) = v36;
        return v10;
      }

      goto LABEL_82;
    }

    v33 = *(a2 + 72);
  }

  if (!v33 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v37 = xmlStrEqual(*(a2 + 16), "oneOrMore");
  v38 = *(a2 + 72);
  if (v37)
  {
    if (xmlStrEqual(*(v38 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 16;
      goto LABEL_53;
    }

    v38 = *(a2 + 72);
  }

  if (!v38 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v39 = xmlStrEqual(*(a2 + 16), "optional");
  v40 = *(a2 + 72);
  if (v39)
  {
    if (xmlStrEqual(*(v40 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v34 = 14;
      goto LABEL_53;
    }

    v40 = *(a2 + 72);
  }

  if (!v40 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v41 = xmlStrEqual(*(a2 + 16), "choice");
  v42 = *(a2 + 72);
  if (v41)
  {
    if (xmlStrEqual(*(v42 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v43 = 17;
LABEL_80:
      *v10 = v43;
      if (*(a2 + 24))
      {
        v35 = a1;
        goto LABEL_55;
      }

LABEL_82:
      name = *(a2 + 16);
      v19 = "Element %s is empty\n";
      v20 = a1;
      v21 = a2;
      v22 = 1023;
      goto LABEL_34;
    }

    v42 = *(a2 + 72);
  }

  if (!v42 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v44 = xmlStrEqual(*(a2 + 16), "group");
  v45 = *(a2 + 72);
  if (v44)
  {
    if (xmlStrEqual(*(v45 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v43 = 18;
      goto LABEL_80;
    }

    v45 = *(a2 + 72);
  }

  if (!v45 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v46 = xmlStrEqual(*(a2 + 16), "ref");
  v47 = *(a2 + 72);
  if (v46)
  {
    if (xmlStrEqual(*(v47 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v48 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v48;
      if (!v48)
      {
        return v10;
      }

      *v48 = 11;
      Prop = xmlGetProp(a2, "name");
      *(v10 + 2) = Prop;
      if (Prop)
      {
        xmlRelaxNGNormExtSpace(Prop);
        if (!xmlValidateNCName(*(v10 + 2), 0))
        {
LABEL_119:
          if (*(a2 + 24))
          {
            xmlRngPErr(a1, a2, 1103, "ref is not empty\n", 0, 0);
          }

          v63 = *(*(a1 + 48) + 56);
          if (v63 || (v63 = xmlHashCreate(10), (*(*(a1 + 48) + 56) = v63) != 0))
          {
            if ((xmlHashAddEntry(v63, *(v10 + 2), v10) & 0x80000000) == 0)
            {
              return v10;
            }

            v64 = xmlHashLookup(*(*(a1 + 48) + 56), *(v10 + 2));
            if (v64)
            {
LABEL_125:
              *(v10 + 11) = v64[11];
              v64[11] = v10;
              return v10;
            }

            v78 = *(v10 + 2);
            if (v78)
            {
              v74 = "Error refs definitions '%s'\n";
            }

            else
            {
              v74 = "Error refs definitions\n";
            }

            v75 = a1;
            v76 = a2;
            v77 = 1098;
            goto LABEL_267;
          }

          v74 = "Could not create references hash\n";
          v75 = a1;
          v76 = a2;
          v77 = 1098;
          goto LABEL_145;
        }

        v50 = *(v10 + 2);
        v51 = "ref name '%s' is not an NCName\n";
        v52 = a1;
        v53 = a2;
        v54 = 1100;
      }

      else
      {
        v51 = "ref has no name\n";
        v52 = a1;
        v53 = a2;
        v54 = 1102;
        v50 = 0;
      }

      xmlRngPErr(v52, v53, v54, v51, v50, 0);
      goto LABEL_119;
    }

    v47 = *(a2 + 72);
  }

  if (!v47 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v55 = xmlStrEqual(*(a2 + 16), "data");
  v56 = *(a2 + 72);
  if (v55)
  {
    if (xmlStrEqual(*(v56 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v57 = xmlGetProp(a2, "type");
      if (v57)
      {
        v58 = v57;
        xmlRelaxNGNormExtSpace(v57);
        if (xmlValidateNCName(v58, 0))
        {
          xmlRngPErr(a1, a2, 1112, "data type '%s' is not an NCName\n", v58, 0);
        }

        v59 = xmlRelaxNGGetDataTypeLibrary(a2);
        if (!v59)
        {
          v59 = xmlStrdup("http://relaxng.org/ns/structure/1.0");
        }

        v60 = xmlRelaxNGNewDefine(a1, a2);
        v10 = v60;
        if (!v60)
        {
          free(v59);
          free(v58);
          return v10;
        }

        *v60 = 5;
        *(v60 + 2) = v58;
        *(v60 + 3) = v59;
        v61 = xmlHashLookup(xmlRelaxNGRegisteredTypes, v59);
        if (!v61)
        {
          xmlRngPErr(a1, a2, 1116, "Use of unregistered type library '%s'\n", v59, 0);
          *(v10 + 5) = 0;
          goto LABEL_160;
        }

        *(v10 + 5) = v61;
        v62 = v61[2];
        if (v62)
        {
          if (v62(v61[1], *(v10 + 2)) == 1)
          {
            if (xmlStrEqual(v59, "http://www.w3.org/2001/XMLSchema-datatypes") && (xmlStrEqual(*(v10 + 2), "IDREF") || xmlStrEqual(*(v10 + 2), "IDREFS")))
            {
              *(a1 + 224) = 1;
            }

LABEL_160:
            v87 = *(a2 + 24);
            if (v87)
            {
              v88 = 0;
              while (xmlStrEqual(v87->name, "param"))
              {
                if (xmlStrEqual(v59, "http://relaxng.org/ns/structure/1.0"))
                {
                  xmlRngPErr(a1, a2, 1058, "Type library '%s' does not allow type parameters\n", v59, 0);
                  while (1)
                  {
                    v87 = v87->next;
                    if (!v87)
                    {
                      return v10;
                    }

                    if (!xmlStrEqual(v87->name, "param"))
                    {
                      goto LABEL_175;
                    }
                  }
                }

                v89 = xmlRelaxNGNewDefine(a1, a2);
                if (v89)
                {
                  v90 = v89;
                  *v89 = 6;
                  v91 = xmlGetProp(v87, "name");
                  *(v90 + 2) = v91;
                  if (!v91)
                  {
                    xmlRngPErr(a1, a2, 1059, "param has no name\n", 0, 0);
                  }

                  *(v90 + 4) = xmlNodeGetContent(v87);
                  v92 = v88 + 4;
                  if (!v88)
                  {
                    v92 = v10 + 9;
                  }

                  *v92 = v90;
                  v88 = v90;
                }

                v87 = v87->next;
LABEL_175:
                if (!v87)
                {
                  return v10;
                }
              }

              if (!xmlStrEqual(v87->name, "except"))
              {
                goto LABEL_224;
              }

              v95 = xmlRelaxNGNewDefine(a1, a2);
              if (v95)
              {
                *v95 = 2;
                children = v87->children;
                *(v10 + 6) = v95;
                if (children)
                {
                  v97 = 0;
                  v98 = (v95 + 3);
                  do
                  {
                    v99 = xmlRelaxNGParsePattern(a1, children);
                    if (v99)
                    {
                      v100 = (v97 + 64);
                      if (!v97)
                      {
                        v100 = v98;
                      }

                      *v100 = v99;
                      v97 = v99;
                    }

                    children = children->next;
                  }

                  while (children);
                }

                else
                {
                  xmlRngPErr(a1, v87, 1030, "except has no content\n", 0, 0);
                }

                v87 = v87->next;
                if (v87)
                {
LABEL_224:
                  name = v87->name;
                  v19 = "Element data has unexpected content %s\n";
                  v20 = a1;
                  v21 = v87;
                  v22 = 1009;
                  goto LABEL_34;
                }
              }
            }

            return v10;
          }

          v85 = *(v10 + 2);
          v81 = "Error type '%s' is not exported by type library '%s'\n";
          v82 = a1;
          v83 = a2;
          v84 = 1111;
          v86 = v59;
        }

        else
        {
          v81 = "Internal error with type library '%s': no 'have'\n";
          v82 = a1;
          v83 = a2;
          v84 = 1026;
          v85 = v59;
          v86 = 0;
        }

        xmlRngPErr(v82, v83, v84, v81, v85, v86);
        goto LABEL_160;
      }

      v74 = "data has no type\n";
      v75 = a1;
      v76 = a2;
      v77 = 1110;
LABEL_145:
      v78 = 0;
LABEL_267:
      xmlRngPErr(v75, v76, v77, v74, v78, 0);
      return 0;
    }

    v56 = *(a2 + 72);
  }

  if (!v56 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v65 = xmlStrEqual(*(a2 + 16), "value");
  v66 = *(a2 + 72);
  if (v65)
  {
    if (xmlStrEqual(*(v66 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v67 = xmlRelaxNGNewDefine(a1, a2);
      v10 = v67;
      if (!v67)
      {
        return v10;
      }

      *v67 = 7;
      v68 = xmlGetProp(a2, "type");
      v69 = v68;
      if (v68)
      {
        xmlRelaxNGNormExtSpace(v68);
        if (xmlValidateNCName(v69, 0))
        {
          xmlRngPErr(a1, a2, 1112, "value type '%s' is not an NCName\n", v69, 0);
        }

        v70 = xmlRelaxNGGetDataTypeLibrary(a2);
        if (!v70)
        {
          v70 = xmlStrdup("http://relaxng.org/ns/structure/1.0");
        }

        *(v10 + 2) = v69;
        *(v10 + 3) = v70;
        v71 = xmlHashLookup(xmlRelaxNGRegisteredTypes, v70);
        v69 = v71;
        if (!v71)
        {
          xmlRngPErr(a1, a2, 1116, "Use of unregistered type library '%s'\n", v70, 0);
          v73 = 0;
          *(v10 + 5) = 0;
          goto LABEL_200;
        }

        *(v10 + 5) = v71;
        v72 = *(v71 + 2);
        if (v72)
        {
          if (v72(*(v71 + 1), *(v10 + 2)) == 1)
          {
            v73 = 1;
            goto LABEL_200;
          }

          v105 = *(v10 + 2);
          v101 = "Error type '%s' is not exported by type library '%s'\n";
          v102 = a1;
          v103 = a2;
          v104 = 1111;
          v106 = v70;
        }

        else
        {
          v101 = "Internal error with type library '%s': no 'have'\n";
          v102 = a1;
          v103 = a2;
          v104 = 1026;
          v105 = v70;
          v106 = 0;
        }

        xmlRngPErr(v102, v103, v104, v101, v105, v106);
      }

      v73 = 0;
LABEL_200:
      v107 = *(a2 + 24);
      if (!v107)
      {
        *(v10 + 4) = xmlStrdup("");
        return v10;
      }

      if ((*(v107 + 8) - 3) > 1 || *(v107 + 48))
      {
        v19 = "Expecting a single text value for <value>content\n";
        v20 = a1;
        v21 = a2;
        v22 = 1108;
      }

      else
      {
        Content = xmlNodeGetContent(a2);
        *(v10 + 4) = Content;
        if (Content)
        {
          if (!v69)
          {
            return v10;
          }

          v109 = *(v69 + 3);
          v110 = v73 ^ 1;
          if (!v109)
          {
            v110 = 1;
          }

          if (v110)
          {
            return v10;
          }

          v135 = 0;
          if (v109(*(v69 + 1), *(v10 + 2), Content, &v135, a2) == 1)
          {
            if (v135)
            {
              *(v10 + 9) = v135;
            }

            return v10;
          }

          name = *(v10 + 4);
          v24 = *(v10 + 2);
          v19 = "Value '%s' is not acceptable for type '%s'\n";
          v20 = a1;
          v21 = a2;
          v22 = 1051;
          goto LABEL_35;
        }

        v19 = "Element <value> has no content\n";
        v20 = a1;
        v21 = a2;
        v22 = 1120;
      }

      goto LABEL_33;
    }

    v66 = *(a2 + 72);
  }

  if (!v66 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v79 = xmlStrEqual(*(a2 + 16), "list");
  v80 = *(a2 + 72);
  if (v79)
  {
    if (xmlStrEqual(*(v80 + 16), "http://relaxng.org/ns/structure/1.0"))
    {
      v10 = xmlRelaxNGNewDefine(a1, a2);
      if (!v10)
      {
        return v10;
      }

      v43 = 8;
      goto LABEL_80;
    }

    v80 = *(a2 + 72);
  }

  if (!v80 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v93 = xmlStrEqual(*(a2 + 16), "interleave");
  v94 = *(a2 + 72);
  if (v93)
  {
    if (xmlStrEqual(*(v94 + 16), "http://relaxng.org/ns/structure/1.0"))
    {

      return xmlRelaxNGParseInterleave(a1, a2);
    }

    v94 = *(a2 + 72);
  }

  if (!v94 || *(a2 + 8) != 1)
  {
    goto LABEL_266;
  }

  v111 = xmlStrEqual(*(a2 + 16), "externalRef");
  v112 = *(a2 + 72);
  if (!v111)
  {
LABEL_227:
    if (v112 && *(a2 + 8) == 1)
    {
      v113 = xmlStrEqual(*(a2 + 16), "notAllowed");
      v114 = *(a2 + 72);
      if (v113)
      {
        if (xmlStrEqual(*(v114 + 16), "http://relaxng.org/ns/structure/1.0"))
        {
          v115 = xmlRelaxNGNewDefine(a1, a2);
          v10 = v115;
          if (!v115)
          {
            return v10;
          }

          *v115 = 1;
          if (!*(a2 + 24))
          {
            return v10;
          }

          v19 = "xmlRelaxNGParse: notAllowed element is not empty\n";
          v20 = a1;
          v21 = a2;
          v22 = 1055;
LABEL_33:
          name = 0;
LABEL_34:
          v24 = 0;
LABEL_35:
          xmlRngPErr(v20, v21, v22, v19, name, v24);
          return v10;
        }

        v114 = *(a2 + 72);
      }

      if (v114 && *(a2 + 8) == 1)
      {
        v116 = xmlStrEqual(*(a2 + 16), "grammar");
        v117 = *(a2 + 72);
        if (v116)
        {
          if (xmlStrEqual(*(v117 + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            v118 = *(a1 + 48);
            v134 = *(a1 + 48);
            *(a1 + 56) = v134;
            v119 = xmlRelaxNGParseGrammar(a1, *(a2 + 24));
            if (v118)
            {
              *(a1 + 48) = v134;
            }

            if (v119)
            {
              return *(v119 + 24);
            }

            return 0;
          }

          v117 = *(a2 + 72);
        }

        if (v117 && *(a2 + 8) == 1)
        {
          v120 = xmlStrEqual(*(a2 + 16), "parentRef");
          v121 = *(a2 + 72);
          if (v120)
          {
            if (xmlStrEqual(*(v121 + 16), "http://relaxng.org/ns/structure/1.0"))
            {
              if (!*(a1 + 56))
              {
                v74 = "Use of parentRef without a parent grammar\n";
                v75 = a1;
                v76 = a2;
                v77 = 1063;
                goto LABEL_145;
              }

              v122 = xmlRelaxNGNewDefine(a1, a2);
              v10 = v122;
              if (!v122)
              {
                return v10;
              }

              *v122 = 13;
              v123 = xmlGetProp(a2, "name");
              *(v10 + 2) = v123;
              if (v123)
              {
                xmlRelaxNGNormExtSpace(v123);
                if (!xmlValidateNCName(*(v10 + 2), 0))
                {
LABEL_273:
                  if (*(a2 + 24))
                  {
                    xmlRngPErr(a1, a2, 1064, "parentRef is not empty\n", 0, 0);
                  }

                  v132 = *(*(a1 + 56) + 56);
                  if (v132 || (v132 = xmlHashCreate(10), (*(*(a1 + 56) + 56) = v132) != 0))
                  {
                    v133 = *(v10 + 2);
                    if (!v133 || (xmlHashAddEntry(v132, v133, v10) & 0x80000000) == 0)
                    {
                      return v10;
                    }

                    v64 = xmlHashLookup(*(*(a1 + 56) + 56), *(v10 + 2));
                    if (v64)
                    {
                      goto LABEL_125;
                    }

                    v78 = *(v10 + 2);
                    v74 = "Internal error parentRef definitions '%s'\n";
                    v75 = a1;
                    v76 = a2;
                    v77 = 1060;
                    goto LABEL_267;
                  }

                  v74 = "Could not create references hash\n";
                  v75 = a1;
                  v76 = a2;
                  v77 = 1060;
                  goto LABEL_145;
                }

                v124 = *(v10 + 2);
                v125 = "parentRef name '%s' is not an NCName\n";
                v126 = a1;
                v127 = a2;
                v128 = 1061;
              }

              else
              {
                v125 = "parentRef has no name\n";
                v126 = a1;
                v127 = a2;
                v128 = 1062;
                v124 = 0;
              }

              xmlRngPErr(v126, v127, v128, v125, v124, 0);
              goto LABEL_273;
            }

            v121 = *(a2 + 72);
          }

          if (v121 && *(a2 + 8) == 1 && xmlStrEqual(*(a2 + 16), "mixed") && xmlStrEqual(*(*(a2 + 72) + 16), "http://relaxng.org/ns/structure/1.0"))
          {
            if (*(a2 + 24))
            {
              v129 = xmlRelaxNGParseInterleave(a1, a2);
              v10 = v129;
              if (!v129)
              {
                return v10;
              }

              v130 = v129[6];
              if (v130)
              {
                if (*(v130 + 64))
                {
                  v131 = xmlRelaxNGNewDefine(a1, a2);
                  if (v131)
                  {
                    *v131 = 18;
                    *(v131 + 6) = *(v10 + 6);
                    *(v10 + 6) = v131;
                  }
                }
              }

              v36 = xmlRelaxNGNewDefine(a1, a2);
              if (!v36)
              {
                return v10;
              }

              *v36 = 3;
              *(v36 + 8) = *(v10 + 6);
              goto LABEL_56;
            }

            v74 = "Mixed is empty\n";
            v75 = a1;
            v76 = a2;
            v77 = 1023;
            goto LABEL_145;
          }
        }
      }
    }

LABEL_266:
    v78 = *(a2 + 16);
    v74 = "Unexpected node %s is not a pattern\n";
    v75 = a1;
    v76 = a2;
    v77 = 1115;
    goto LABEL_267;
  }

  if (!xmlStrEqual(*(v112 + 16), "http://relaxng.org/ns/structure/1.0"))
  {
    v112 = *(a2 + 72);
    goto LABEL_227;
  }

  return xmlRelaxNGProcessExternalRef(a1, a2);
}