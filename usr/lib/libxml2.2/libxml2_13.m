int xmlRegexpExec(xmlRegexpPtr comp, const xmlChar *value)
{
  result = -1;
  if (!comp || !value)
  {
    return result;
  }

  v60 = 0;
  v58 = 0u;
  v57 = 0u;
  *v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v51 = 0u;
  v56 = value;
  LODWORD(v55) = 0;
  v59 = 0;
  v49 = 0x100000000;
  v53[0] = 0;
  v53[1] = 0;
  v50 = comp;
  v52 = **(comp + 2);
  *(&v56 + 1) = 0;
  LODWORD(v54[1]) = 0;
  v4 = *(comp + 10);
  if (v4 < 1)
  {
    v54[0] = 0;
  }

  else
  {
    v5 = malloc_type_malloc(4 * v4, 0x100004052888210uLL);
    v54[0] = v5;
    if (!v5)
    {
      xmlRegexpErrMemory(0, "running regexp");
      return -1;
    }

    bzero(v5, 4 * *(comp + 10));
  }

  len = 0;
  do
  {
    v6 = v52;
    if (!v52 || !*(v56 + v55) && *v52 == 2)
    {
      break;
    }

    len = 1;
    v7 = DWORD2(v52);
    v8 = *(v52 + 24);
    if (*(v56 + v55))
    {
      v9 = 0;
    }

    else
    {
      v9 = v54[0] == 0;
    }

    if (!v9 || SDWORD2(v52) < v8 && ((v38 = *(v52 + 32) + 24 * SDWORD2(v52), (*(v38 + 8) & 0x80000000) != 0) || (v39 = *v38, !*(v39 + 12)) && *(v39 + 16) >= 1))
    {
      HIDWORD(v52) = 0;
      while (1)
      {
        if (v7 >= v8)
        {
LABEL_79:
          if (!v7 && *(v52 + 24))
          {
            goto LABEL_81;
          }

          break;
        }

        v10 = *(v6 + 32) + 24 * v7;
        if ((*(v10 + 8) & 0x80000000) == 0)
        {
          v11 = *(v10 + 16);
          if ((v11 & 0x80000000) == 0)
          {
            if (!v54[0])
            {
              goto LABEL_91;
            }

            v12 = *(v54[0] + v11);
            v13 = (*(v50 + 6) + 8 * v11);
            v14 = *v13;
            if (v12 < *v13)
            {
              goto LABEL_71;
            }

            v15 = v13[1];
            if (v12 > v15)
            {
              goto LABEL_71;
            }

            v16 = v14 != v15;
            goto LABEL_60;
          }

          v17 = *v10;
          if (!*v10)
          {
            fwrite("epsilon transition left at runtime\n", 0x23uLL, 1uLL, *MEMORY[0x1E69E9848]);
            v41 = -2;
            goto LABEL_78;
          }

          if (!*(v56 + v55) || (v18 = xmlStringCurrentChar(0, (v56 + v55), &len), (v19 = xmlRegCheckCharacter(v17, v18)) == 0))
          {
            if (*(v17 + 12) || *(v17 + 16) < 1)
            {
              goto LABEL_71;
            }

            v16 = 0;
            HIDWORD(v52) = 1;
            len = 0;
LABEL_60:
            if (*(v10 + 20) == 1)
            {
              goto LABEL_61;
            }

            v34 = !v16;
            if (*(v10 + 16) < 0)
            {
              v34 = 1;
            }

            if ((v34 & 1) == 0 && *(v52 + 24) > DWORD2(v52) + 1)
            {
LABEL_61:
              xmlFARegExecSave(&v49);
            }

            v35 = *(v10 + 12);
            if ((v35 & 0x80000000) != 0)
            {
              goto LABEL_86;
            }

            if (!v54[0])
            {
              goto LABEL_91;
            }

            if (!v50)
            {
              goto LABEL_91;
            }

            v36 = *(v50 + 6);
            if (!v36)
            {
              goto LABEL_91;
            }

            v37 = *(v54[0] + v35);
            if (v37 < *(v36 + 8 * v35 + 4))
            {
              *(v54[0] + v35) = v37 + 1;
LABEL_86:
              v40 = *(v10 + 16);
              if (v40 <= 0x123455)
              {
                if (!v54[0])
                {
LABEL_91:
                  LODWORD(v49) = -1;
                  goto LABEL_92;
                }

                *(v54[0] + v40) = 0;
              }

              *&v52 = *(*(comp + 2) + 8 * *(v10 + 8));
              DWORD2(v52) = 0;
              if (*v10)
              {
                LODWORD(v55) = v55 + len;
              }

              goto LABEL_81;
            }

            goto LABEL_71;
          }

          if (v19 == 1)
          {
            if ((*(v17 + 12) & 0x80000000) == 0 && *(v17 + 16) >= 1)
            {
              v20 = *(v10 + 12);
              v21 = *(*(comp + 2) + 8 * *(v10 + 8));
              if ((v20 & 0x80000000) == 0)
              {
                if (!v54[0])
                {
                  goto LABEL_91;
                }

                if (!v50)
                {
                  goto LABEL_91;
                }

                v22 = *(v50 + 6);
                if (!v22)
                {
                  goto LABEL_91;
                }

                v23 = *(v54[0] + v20);
                if (v23 >= *(v22 + 8 * v20 + 4))
                {
                  goto LABEL_71;
                }

                *(v54[0] + v20) = v23 + 1;
              }

              if (*(v52 + 24) > DWORD2(v52) + 1)
              {
                xmlFARegExecSave(&v49);
              }

              v24 = 1;
              HIDWORD(v52) = 1;
              while (v24 != *(v17 + 16))
              {
                v25 = v55;
                v26 = v55 + len;
                LODWORD(v55) = v55 + len;
                v27 = v56;
                if (!*(v56 + v26))
                {
                  LODWORD(v55) = v25;
                  break;
                }

                if (v24 >= *(v17 + 12))
                {
                  v28 = DWORD2(v52);
                  v29 = v52;
                  DWORD2(v52) = -1;
                  *&v52 = v21;
                  xmlFARegExecSave(&v49);
                  DWORD2(v52) = v28;
                  *&v52 = v29;
                  v27 = v56;
                  v26 = v55;
                }

                v30 = xmlStringCurrentChar(0, (v27 + v26), &len);
                v31 = xmlRegCheckCharacter(v17, v30);
                v24 = ++HIDWORD(v52);
                if (v31 != 1)
                {
                  goto LABEL_51;
                }
              }

              v31 = 1;
LABEL_51:
              if (v24 >= *(v17 + 12))
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              if (v32 < 1)
              {
                break;
              }

              v33 = *(v10 + 12);
              if ((v33 & 0x80000000) == 0)
              {
                if (!v54[0])
                {
                  goto LABEL_91;
                }

                --*(v54[0] + v33);
              }

              if (v32 != 1)
              {
                goto LABEL_71;
              }
            }

            v16 = 0;
            goto LABEL_60;
          }

          if (v19 < 0)
          {
            v41 = -4;
LABEL_78:
            LODWORD(v49) = v41;
            v7 = DWORD2(v52);
            goto LABEL_79;
          }
        }

LABEL_71:
        v7 = ++DWORD2(v52);
        v6 = v52;
        v8 = *(v52 + 24);
      }
    }

    HIDWORD(v49) = 0;
    xmlFARegExecRollBack(&v49);
LABEL_81:
    ;
  }

  while (!v49);
LABEL_92:
  v42 = v53[1];
  if (v53[1])
  {
    v43 = v53[0];
    if (v54[0])
    {
      v44 = SLODWORD(v53[0]) < 1;
    }

    else
    {
      v44 = 1;
    }

    if (!v44)
    {
      v45 = 0;
      v46 = v53[0];
      v47 = (v53[1] + 16);
      do
      {
        if (*v47)
        {
          free(*v47);
          v43 = v46;
        }

        ++v45;
        v47 += 3;
      }

      while (v45 < v43);
      v42 = v53[1];
    }

    free(v42);
  }

  if (!v52)
  {
    return -1;
  }

  if (v54[0])
  {
    free(v54[0]);
  }

  result = v49;
  if (!v49)
  {
    return 1;
  }

  if (v49 == -1)
  {
    if (v59 <= 10000000)
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

int xmlRegexpIsDeterminist(xmlRegexpPtr comp)
{
  if (!comp)
  {
    return -1;
  }

  v2 = *(comp + 14);
  if (v2 != -1)
  {
    return v2;
  }

  v3 = xmlNewAutomata();
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = *(v3 + 10);
  if (v5)
  {
    if (*(v4 + 19) >= 1)
    {
      v6 = 0;
      do
      {
        xmlRegFreeState(*(*(v4 + 10) + 8 * v6++));
      }

      while (v6 < *(v4 + 19));
      v5 = *(v4 + 10);
    }

    free(v5);
  }

  *(v4 + 15) = *(comp + 6);
  *(v4 + 8) = *(comp + 4);
  *(v4 + 19) = *(comp + 2);
  *(v4 + 10) = *(comp + 2);
  *(v4 + 26) = -1;
  *(v4 + 28) = *(comp + 15);
  v2 = xmlFAComputesDeterminism(v4);
  *(v4 + 8) = 0;
  *(v4 + 10) = 0;
  xmlRegFreeParserCtxt(v4);
  *(comp + 14) = v2;
  return v2;
}

xmlAutomataPtr xmlNewAutomata(void)
{
  v0 = malloc_type_malloc(0x78uLL, 0x10B00408D8BA187uLL);
  v1 = v0;
  if (v0)
  {
    v0[5] = 0u;
    v0[6] = 0u;
    *(v0 + 14) = 0;
    v0[3] = 0u;
    v0[4] = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    *v0 = 0u;
    *(v0 + 26) = -1;
    v2 = xmlRegNewState(v0);
    *(v1 + 40) = v2;
    *(v1 + 24) = v2;
    if (v2)
    {
      *v2 = 1;
      if ((xmlRegStatePush(v1, v2) & 0x80000000) == 0)
      {
        *(v1 + 112) = 0;
        return v1;
      }

      xmlRegFreeState(*(v1 + 24));
    }

    xmlRegFreeParserCtxt(v1);
    return 0;
  }

  return v1;
}

void xmlRegFreeState(void *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    v3 = a1[6];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t xmlFAComputesDeterminism(_DWORD *a1)
{
  v1 = a1[26];
  if (v1 == -1)
  {
    v2 = a1;
    v3 = a1[19];
    if (v3 < 1)
    {
      goto LABEL_249;
    }

    v4 = 0;
    v5 = a1[28];
    while (1)
    {
      v6 = *(*(v2 + 80) + 8 * v4);
      if (v6)
      {
        v7 = *(v6 + 24);
        if (v7 >= 2)
        {
          break;
        }
      }

LABEL_37:
      if (++v4 >= v3)
      {
        if (v3 >= 1)
        {
          v22 = 0;
          v1 = 1;
          v85 = v2;
          while (1)
          {
            v23 = *(*(v2 + 80) + 8 * v22);
            if (!v23)
            {
              goto LABEL_247;
            }

            v24 = *(v23 + 24);
            if (v24 < 2)
            {
              goto LABEL_247;
            }

            v84 = v22;
            v25 = 0;
            v26 = 0;
            do
            {
              v27 = *(v23 + 32) + 24 * v25;
              if (*v27)
              {
                if (*(v27 + 8) != -1 && v25 != 0)
                {
                  v29 = 0;
                  v30 = (v27 + 20);
                  while (1)
                  {
                    v31 = *(v23 + 32) + 24 * v29;
                    if (*(v31 + 8) == -1)
                    {
                      goto LABEL_194;
                    }

                    v32 = *v31;
                    if (*v31)
                    {
                      break;
                    }

                    v44 = *(v27 + 8);
                    if (v44 != -1)
                    {
                      v45 = v30;
                      v46 = xmlFARecurseDeterminism(v2, *(*(v2 + 80) + 8 * v44));
                      xmlFAFinishRecurseDeterminism(v2, *(*(v2 + 80) + 8 * *(v27 + 8)));
                      v30 = v45;
                      v47 = v45;
                      if (!v46)
                      {
                        goto LABEL_193;
                      }

                      v1 = 1;
                    }

LABEL_194:
                    if (++v29 == v25)
                    {
                      v24 = *(v23 + 24);
                      goto LABEL_243;
                    }
                  }

                  v33 = *v27;
                  if (*v27 == v32)
                  {
                    goto LABEL_192;
                  }

                  if (!v33)
                  {
                    goto LABEL_194;
                  }

                  v34 = *(v33 + 4);
                  if (v34 == 6)
                  {
                    goto LABEL_192;
                  }

                  v35 = *(v32 + 4);
                  if (v35 == 6)
                  {
                    goto LABEL_192;
                  }

                  if (v34 <= v35)
                  {
                    v36 = *v31;
                  }

                  else
                  {
                    v36 = *v27;
                  }

                  if (v34 <= v35)
                  {
                    v37 = *v27;
                  }

                  else
                  {
                    v37 = *v31;
                  }

                  v38 = *(v37 + 4);
                  v39 = *(v36 + 4);
                  if (v38 != v39 && v38 - 1 >= 6 && v39 - 1 >= 6)
                  {
                    if (v38 >= v39)
                    {
                      v48 = *(v36 + 4);
                    }

                    else
                    {
                      v48 = *(v37 + 4);
                    }

                    if (v38 <= v39)
                    {
                      v49 = *(v36 + 4);
                    }

                    else
                    {
                      v49 = *(v37 + 4);
                    }

                    if (v48 > 12)
                    {
                      switch(v48)
                      {
                        case 100:
                          if (v49 < 0x6A)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 101:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 107:
                        case 108:
                        case 109:
                        case 111:
                        case 112:
                        case 113:
                        case 115:
                        case 116:
                        case 117:
                        case 118:
                        case 119:
                        case 120:
                        case 121:
                        case 123:
                        case 124:
                        case 125:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case 132:
                        case 133:
                        case 134:
                        case 135:
                          goto LABEL_194;
                        case 106:
                          if (v49 < 0x6E)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 110:
                          if (v49 < 0x72)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 114:
                          if (v49 < 0x7A)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 122:
                          if (v49 < 0x7E)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 126:
                          if (v49 < 0x83)
                          {
                            goto LABEL_66;
                          }

                          break;
                        case 131:
                          if (v49 <= 0x87)
                          {
                            goto LABEL_66;
                          }

                          break;
                        default:
                          if (v48 == 13)
                          {
                            v82 = v49 - 100 > 0x23 || ((1 << (v49 - 100)) & 0xFFFFFC3FFLL) == 0;
                            if (v82 && v49 - 14 >= 2)
                            {
                              goto LABEL_66;
                            }
                          }

                          else
                          {
                            if (v48 != 15)
                            {
                              goto LABEL_66;
                            }

                            if (v49 - 114 >= 0x16 && v49 - 106 >= 4 && v49 != 14)
                            {
                              goto LABEL_66;
                            }
                          }

                          break;
                      }

                      goto LABEL_194;
                    }

                    switch(v48)
                    {
                      case 7:
                        if (v49 - 100 < 0x16)
                        {
                          goto LABEL_194;
                        }

                        if (v49 - 126 < 5 || v49 == 8)
                        {
                          goto LABEL_194;
                        }

                        break;
                      case 9:
                        if (v49 - 106 < 0x1E || v49 == 10)
                        {
                          goto LABEL_194;
                        }

                        break;
                      case 11:
                        if (v49 - 114 < 0x16)
                        {
                          goto LABEL_194;
                        }

                        if (v49 - 106 < 4 || v49 == 12)
                        {
                          goto LABEL_194;
                        }

                        break;
                    }
                  }

LABEL_66:
                  if (v38 == 2)
                  {
                    v98 = v26;
                    v74 = *(v37 + 44);
                    if (v39 == 2)
                    {
                      v43 = v74 == *(v36 + 44);
                    }

                    else
                    {
                      v97 = v1;
                      v75 = v30;
                      v76 = v36;
                      v43 = xmlRegCheckCharacter(v36, v74);
                      v36 = v76;
                      v30 = v75;
                      v1 = v97;
                      if (v43 < 0)
                      {
                        v43 = 1;
                      }
                    }

                    goto LABEL_188;
                  }

                  if (v38 != 3)
                  {
                    if (v38 != 5)
                    {
                      goto LABEL_192;
                    }

                    v91 = v36;
                    v93 = v30;
                    v98 = v26;
                    v95 = v1;
                    v89 = v37;
                    v41 = *(v36 + 24);
                    v86 = *(v37 + 24);
                    v42 = xmlStrchr(v86, 0x7Cu) != 0;
                    if (v42 != (xmlStrchr(v41, 0x7Cu) == 0))
                    {
                      v43 = xmlRegStrEqualWildcard(v86, v41);
                      v1 = v95;
                      v36 = v91;
                      v30 = v93;
                      v37 = v89;
                      goto LABEL_188;
                    }

                    v1 = v95;
                    v26 = v98;
                    v30 = v93;
                    goto LABEL_194;
                  }

                  v98 = v26;
                  if (v39 != 3)
                  {
LABEL_183:
                    v43 = 1;
                    goto LABEL_188;
                  }

                  v50 = *(v37 + 76);
                  if (v50 < 1)
                  {
                    v43 = 0;
                    goto LABEL_188;
                  }

                  v51 = 0;
                  v52 = *(v36 + 76);
                  while (2)
                  {
                    if (v52 < 1)
                    {
                      goto LABEL_179;
                    }

                    v53 = 0;
LABEL_89:
                    v54 = *(*(*(v37 + 80) + 8 * v51) + 4);
                    if (v54 == 3 || ((v55 = *(*(v36 + 80) + 8 * v53), v56 = *(v55 + 1), (v54 & 0xFFFFFFFE) != 4) ? (v57 = v56 - 3 >= 3) : (v57 = 0), !v57))
                    {
LABEL_113:
                      if (++v53 >= v52)
                      {
                        v50 = *(v37 + 76);
LABEL_179:
                        v43 = 0;
                        if (++v51 >= v50)
                        {
LABEL_188:
                          if (*(v37 + 40) == *(v36 + 40))
                          {
                            v77 = v43;
                          }

                          else
                          {
                            v77 = v43 == 0;
                          }

                          v26 = v98;
                          if (v77)
                          {
LABEL_192:
                            *v30 = 1;
                            v47 = (v31 + 20);
LABEL_193:
                            v1 = 0;
                            *v47 = 1;
                            v26 = v27;
                          }

                          goto LABEL_194;
                        }

                        continue;
                      }

                      goto LABEL_89;
                    }

                    break;
                  }

                  v58 = v54 > v56;
                  if (v54 <= v56)
                  {
                    v59 = *(*(v37 + 80) + 8 * v51);
                  }

                  else
                  {
                    v59 = *(*(v36 + 80) + 8 * v53);
                  }

                  if (v58)
                  {
                    v55 = *(*(v37 + 80) + 8 * v51);
                  }

                  v60 = v59[1];
                  if (v60 == 6 || (v61 = *(v55 + 1), v61 == 6))
                  {
LABEL_102:
                    v62 = 1;
                    goto LABEL_103;
                  }

                  if (v60 == 1 || v61 == 1)
                  {
                    goto LABEL_113;
                  }

                  if (v60 == v61)
                  {
                    if (v60 != 2)
                    {
                      goto LABEL_102;
                    }

                    if (v59[3] >= *(v55 + 2))
                    {
                      v62 = *(v55 + 3) >= v59[2];
                    }

                    else
                    {
LABEL_118:
                      v62 = 0;
                    }

LABEL_103:
                    if ((*v59 == 0) == (*v55 == 0))
                    {
                      if (v62)
                      {
                        goto LABEL_183;
                      }
                    }

                    else if (!v62)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_113;
                  }

                  if (v60 != 2)
                  {
                    if (v60 == 136 || v61 == 136)
                    {
                      goto LABEL_183;
                    }

                    if (v60 < 0x64 || v61 <= 0x63)
                    {
                      v43 = 1;
                      if (v60 <= 10)
                      {
                        if (v60 == 7)
                        {
                          if (v61 != 8)
                          {
                            goto LABEL_188;
                          }
                        }

                        else if (v60 != 9 || v61 != 10)
                        {
                          goto LABEL_188;
                        }
                      }

                      else if (v60 == 11)
                      {
                        if (v61 != 12)
                        {
                          goto LABEL_188;
                        }
                      }

                      else if (v60 == 13)
                      {
                        if (v61 != 14)
                        {
                          goto LABEL_188;
                        }
                      }

                      else if (v60 != 15 || v61 != 16)
                      {
                        goto LABEL_188;
                      }

                      goto LABEL_118;
                    }

                    if (v60 <= 113)
                    {
                      switch(v60)
                      {
                        case 'd':
                          v73 = v61 - 101 >= 5;
                          goto LABEL_176;
                        case 'j':
                          v64 = v61 - 107;
                          break;
                        case 'n':
                          v64 = v61 - 111;
                          break;
                        default:
                          goto LABEL_170;
                      }
                    }

                    else
                    {
                      if (v60 <= 125)
                      {
                        if (v60 != 114)
                        {
                          if (v60 == 122)
                          {
                            v64 = v61 - 123;
                            goto LABEL_175;
                          }

LABEL_170:
                          if (v61 > 0x87)
                          {
                            goto LABEL_183;
                          }

                          goto LABEL_118;
                        }

                        v73 = v61 - 115 >= 7;
LABEL_176:
                        v62 = !v73;
                        goto LABEL_103;
                      }

                      if (v60 == 126)
                      {
                        v73 = v61 - 127 >= 4;
                        goto LABEL_176;
                      }

                      if (v60 != 131)
                      {
                        goto LABEL_170;
                      }

                      v64 = v61 - 132;
                    }

LABEL_175:
                    v73 = v64 >= 3;
                    goto LABEL_176;
                  }

                  v65 = *v55;
                  if (*v59)
                  {
                    if (v65)
                    {
                      goto LABEL_131;
                    }

LABEL_140:
                    v88 = 0;
                    v87 = 1;
                  }

                  else
                  {
                    if (v65)
                    {
                      goto LABEL_140;
                    }

LABEL_131:
                    v87 = 0;
                    v88 = 1;
                  }

                  v66 = v59[2];
                  v96 = v1;
                  v92 = v36;
                  v94 = v30;
                  v90 = v37;
                  if (v66 <= v59[3])
                  {
                    do
                    {
                      v67 = v55;
                      v68 = v51;
                      v69 = v59;
                      v70 = xmlRegCheckCharacterRange(*(v55 + 1), v66, *(v55 + 2), *(v55 + 3), v55[2]);
                      v59 = v69;
                      v51 = v68;
                      v55 = v67;
                      v37 = v90;
                      v36 = v92;
                      v30 = v94;
                      v1 = v96;
                      v2 = v85;
                      if (v70 < 0)
                      {
                        break;
                      }

                      if (v70)
                      {
                        v71 = 0;
                      }

                      else
                      {
                        v71 = v87;
                      }

                      v72 = v88;
                      if (v70 != 1)
                      {
                        v72 = 0;
                      }

                      v43 = 1;
                      if (v71 & 1) != 0 || (v72)
                      {
                        goto LABEL_188;
                      }

                      v58 = v66++ < v59[3];
                    }

                    while (v58);
                    v52 = *(v92 + 76);
                  }

                  goto LABEL_113;
                }
              }

LABEL_243:
              ++v25;
            }

            while (v25 < v24);
            if (v26)
            {
              *(v26 + 20) = 2;
            }

            v22 = v84;
LABEL_247:
            if (++v22 >= *(v2 + 76))
            {
LABEL_250:
              *(v2 + 104) = v1;
              return v1;
            }
          }
        }

LABEL_249:
        v1 = 1;
        goto LABEL_250;
      }
    }

    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(v6 + 32) + 24 * v9;
      if (*v10)
      {
        if (*(v10 + 8) != -1 && v9 != 0)
        {
          break;
        }
      }

LABEL_35:
      ++v9;
      v8 += 24;
      if (v9 >= v7)
      {
        v3 = *(v2 + 76);
        goto LABEL_37;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = *(v6 + 32);
      v14 = *(v13 + v12 + 8);
      if (v14 == -1)
      {
        goto LABEL_33;
      }

      v15 = *(v13 + v12);
      if (!v15 || *(v10 + 8) != v14)
      {
        goto LABEL_33;
      }

      v16 = *v10;
      if (*v10 == v15)
      {
        goto LABEL_30;
      }

      if (!v16)
      {
        goto LABEL_33;
      }

      v17 = *(v16 + 4);
      if (v17 != *(v15 + 4))
      {
        goto LABEL_33;
      }

      if (v17 == 2)
      {
        v20 = *(v16 + 44) == *(v15 + 44);
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_33;
        }

        v18 = *(v16 + 24);
        v19 = *(v15 + 24);
        if ((v5 & 1) == 0)
        {
          if (xmlStrEqual(v18, v19))
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }

        v20 = v18 == v19;
      }

      if (v20)
      {
LABEL_30:
        if (*(v10 + 12) == *(v13 + v12 + 12) && *(v10 + 16) == *(v13 + v12 + 16))
        {
          *(v13 + v12 + 8) = -1;
        }
      }

LABEL_33:
      v12 += 24;
      if (v8 == v12)
      {
        v7 = *(v6 + 24);
        goto LABEL_35;
      }
    }
  }

  return v1;
}

void xmlFreeAutomata(xmlAutomataPtr am)
{
  if (am)
  {
    xmlRegFreeParserCtxt(am);
  }
}

void xmlRegFreeRegexp(xmlRegexpPtr regexp)
{
  if (regexp)
  {
    v2 = *regexp;
    if (v2)
    {
      free(v2);
    }

    v3 = *(regexp + 2);
    if (v3)
    {
      if (*(regexp + 2) >= 1)
      {
        v4 = 0;
        do
        {
          xmlRegFreeState(*(*(regexp + 2) + 8 * v4++));
        }

        while (v4 < *(regexp + 2));
        v3 = *(regexp + 2);
      }

      free(v3);
    }

    v5 = *(regexp + 4);
    if (v5)
    {
      if (*(regexp + 6) >= 1)
      {
        v6 = 0;
        do
        {
          xmlRegFreeAtom(*(*(regexp + 4) + 8 * v6++));
        }

        while (v6 < *(regexp + 6));
        v5 = *(regexp + 4);
      }

      free(v5);
    }

    v7 = *(regexp + 6);
    if (v7)
    {
      free(v7);
    }

    v8 = *(regexp + 9);
    if (v8)
    {
      free(v8);
    }

    v9 = *(regexp + 10);
    if (v9)
    {
      free(v9);
    }

    v10 = *(regexp + 12);
    if (v10)
    {
      if (*(regexp + 22) >= 1)
      {
        v11 = 0;
        do
        {
          free(*(*(regexp + 12) + 8 * v11++));
        }

        while (v11 < *(regexp + 22));
        v10 = *(regexp + 12);
      }

      free(v10);
    }

    free(regexp);
  }
}

void xmlRegFreeAtom(int *a1)
{
  if (!a1)
  {
    return;
  }

  if (a1[19] >= 1)
  {
    v2 = 0;
    do
    {
      xmlRegFreeRange(*(*(a1 + 10) + 8 * v2++));
    }

    while (v2 < a1[19]);
  }

  v3 = *(a1 + 10);
  if (v3)
  {
    free(v3);
  }

  v4 = a1[1];
  if (v4 != 5)
  {
    goto LABEL_12;
  }

  v5 = *(a1 + 3);
  if (v5)
  {
    free(v5);
    v4 = a1[1];
    if (v4 != 5)
    {
      goto LABEL_12;
    }
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    free(v6);
    v4 = a1[1];
LABEL_12:
    if (v4 == 136)
    {
      v7 = *(a1 + 3);
      if (v7)
      {
        free(v7);
      }
    }
  }

  free(a1);
}

uint64_t xmlAutomataSetFlags(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 112) |= a2;
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataGetInitState(xmlAutomataStatePtr am)
{
  if (am)
  {
    return *(am + 3);
  }

  return am;
}

int xmlAutomataSetFinalState(xmlAutomataPtr am, xmlAutomataStatePtr state)
{
  result = -1;
  if (am)
  {
    if (state)
    {
      result = 0;
      *state = 2;
    }
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataNewTransition(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, void *data)
{
  result = 0;
  if (am)
  {
    if (from)
    {
      if (token)
      {
        result = xmlRegNewAtom(am, 5);
        if (result)
        {
          v11 = result;
          *(result + 11) = data;
          *(result + 3) = xmlStrdup(token);
          if ((xmlFAGenerateTransitions(am, from, to, v11) & 0x80000000) != 0)
          {
            xmlRegFreeAtom(v11);
            return 0;
          }

          else
          {
            result = to;
            if (!to)
            {
              return *(am + 5);
            }
          }
        }
      }
    }
  }

  return result;
}

_OWORD *xmlRegNewAtom(uint64_t a1, int a2)
{
  v4 = malloc_type_malloc(0x60uLL, 0x10A00409A880DBFuLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0u;
    v4[1] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *(v4 + 1) = a2;
    *(v4 + 2) = 2;
    *(v4 + 4) = 0;
  }

  else
  {
    xmlRegexpErrMemory(a1, "allocating atom");
  }

  return v5;
}

uint64_t xmlFAGenerateTransitions(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  if (!a4)
  {
    *(a1 + 16) = 1450;
    xmlRegexpErrCompile(a1, "generate transition: atom == NULL");
    return 0xFFFFFFFFLL;
  }

  v6 = a3;
  if (*(a4 + 4) == 4)
  {
    if ((xmlRegAtomPush(a1, a4) & 0x80000000) == 0)
    {
      if (v6)
      {
        v7 = *(a4 + 64);
        if (v7 != v6 && *(a4 + 8) != 8)
        {
          xmlRegStateAddTrans(a1, v7, 0, v6, -1, -1);
        }
      }

      v8 = *(a4 + 8);
      if (v8 <= 4)
      {
        if (v8 == 3)
        {
          *(a4 + 8) = 2;
          v20 = *(a4 + 48);
          if (!v6)
          {
            xmlFAGenerateEpsilonTransition(a1, v20, 0);
            v21 = *(a4 + 64);
            v22 = *(a1 + 40);
            goto LABEL_54;
          }

          xmlRegStateAddTrans(a1, v20, 0, v6, -1, -1);
        }

        else if (v8 == 4)
        {
          *(a4 + 8) = 2;
          xmlFAGenerateEpsilonTransition(a1, *(a4 + 48), *(a4 + 64));
LABEL_53:
          v21 = *(a4 + 64);
          v22 = *(a4 + 48);
LABEL_54:
          xmlFAGenerateEpsilonTransition(a1, v21, v22);
          goto LABEL_55;
        }

        goto LABEL_55;
      }

      if (v8 == 5)
      {
        *(a4 + 8) = 2;
        goto LABEL_53;
      }

      if (v8 != 8)
      {
LABEL_55:
        result = 0;
        *(a4 + 48) = 0;
        *(a4 + 56) = 0;
        *(a4 + 64) = 0;
        return result;
      }

      if (!v6)
      {
        v6 = xmlRegNewState(a1);
        xmlRegStatePush(a1, v6);
      }

      if (*(a4 + 12) || *(a4 + 56))
      {
        Counter = xmlRegGetCounter(a1);
        if ((Counter & 0x80000000) == 0)
        {
          v18 = Counter;
          *(*(a1 + 96) + 8 * Counter) = vadd_s32(*(a4 + 12), -1);
          xmlFAGenerateCountedEpsilonTransition(a1, *(a4 + 64), *(a4 + 48), Counter);
          xmlFAGenerateCountedTransition(a1, *(a4 + 64), v6, v18);
          if (*(a4 + 12))
          {
LABEL_45:
            *(a4 + 16) = 0;
            *(a4 + 8) = 2;
            *(a1 + 40) = v6;
            goto LABEL_55;
          }

          v19 = (a4 + 56);
LABEL_44:
          xmlFAGenerateEpsilonTransition(a1, *v19, v6);
          goto LABEL_45;
        }
      }

      else
      {
        v24 = xmlRegCopyAtom(a1, a4);
        if (v24)
        {
          *(v24 + 1) = 2;
          *(v24 + 4) = 0;
          v19 = (a4 + 48);
          if ((xmlFAGenerateTransitions(a1, *(a4 + 48), 0, v24) & 0x80000000) == 0)
          {
            v25 = *(a1 + 40);
            v26 = xmlRegGetCounter(a1);
            if ((v26 & 0x80000000) == 0)
            {
              v27 = v26;
              *(*(a1 + 96) + 8 * v26) = vadd_s32(*(a4 + 12), -1);
              xmlFAGenerateCountedEpsilonTransition(a1, v25, *(a4 + 64), v26);
              xmlFAGenerateCountedTransition(a1, v25, v6, v27);
              goto LABEL_44;
            }
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a4 + 12) && !*(a4 + 16) && *(a4 + 8) == 8)
  {
    if (!a3)
    {
      v11 = xmlRegNewState(a1);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = v11;
      xmlRegStatePush(a1, v11);
    }

    xmlRegStateAddTrans(a1, a2, 0, v6, -1, -1);
    *(a1 + 40) = v6;
    xmlRegFreeAtom(a4);
    return 0;
  }

  if (!a3)
  {
    v12 = xmlRegNewState(a1);
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = v12;
    xmlRegStatePush(a1, v12);
  }

  v13 = v6;
  if ((*(a4 + 8) & 0xFFFFFFFE) == 4)
  {
    v14 = xmlRegNewState(a1);
    if (!v14)
    {
      return 0xFFFFFFFFLL;
    }

    v13 = v14;
    xmlRegStatePush(a1, v14);
    xmlRegStateAddTrans(a1, v13, 0, v6, -1, -1);
  }

  if ((xmlRegAtomPush(a1, a4) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a4 + 8) == 8 && !*(a4 + 12))
  {
    v23 = *(a4 + 16);
    v15 = 1;
    if (v23 >= 1)
    {
      *(a4 + 12) = 1;
      v15 = 0;
      if (v23 == 1)
      {
        *(a4 + 8) = 3;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  xmlRegStateAddTrans(a1, a2, a4, v13, -1, -1);
  result = 0;
  *(a1 + 40) = v6;
  v16 = *(a4 + 8);
  if (v16 <= 4)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        return result;
      }

      *(a4 + 8) = 2;
      xmlFAGenerateEpsilonTransition(a1, a2, v13);
      goto LABEL_59;
    }

    *(a4 + 8) = 2;
LABEL_57:
    xmlFAGenerateEpsilonTransition(a1, a2, v13);
    return 0;
  }

  if (v16 == 5)
  {
    *(a4 + 8) = 2;
LABEL_59:
    xmlRegStateAddTrans(a1, v13, a4, v13, -1, -1);
    return 0;
  }

  if (v16 != 8)
  {
    return result;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_57;
  }

  return 0;
}

xmlAutomataStatePtr xmlAutomataNewTransition2(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, const xmlChar *token2, void *data)
{
  result = 0;
  if (am)
  {
    if (from)
    {
      if (token)
      {
        result = xmlRegNewAtom(am, 5);
        if (result)
        {
          v13 = result;
          *(result + 11) = data;
          if (token2 && *token2)
          {
            v14 = strlen(token2);
            v15 = strlen(token);
            v16 = malloc_type_malloc(v15 + v14 + 2, 0x100004077774924uLL);
            if (!v16)
            {
              goto LABEL_13;
            }

            v17 = v16;
            memcpy(v16, token, v15);
            v17[v15] = 124;
            memcpy(&v17[v15 + 1], token2, v14);
            v17[v15 + 1 + v14] = 0;
          }

          else
          {
            v17 = xmlStrdup(token);
          }

          *(v13 + 3) = v17;
          if ((xmlFAGenerateTransitions(am, from, to, v13) & 0x80000000) == 0)
          {
            result = to;
            if (!to)
            {
              return *(am + 5);
            }

            return result;
          }

LABEL_13:
          xmlRegFreeAtom(v13);
          return 0;
        }
      }
    }
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataNewNegTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, const xmlChar *token2, void *data)
{
  result = 0;
  v31 = *MEMORY[0x1E69E9840];
  if (!am)
  {
    goto LABEL_14;
  }

  if (!from)
  {
    goto LABEL_14;
  }

  if (!token)
  {
    goto LABEL_14;
  }

  result = xmlRegNewAtom(am, 5);
  if (!result)
  {
    goto LABEL_14;
  }

  v13 = result;
  v29 = 0u;
  memset(v30, 0, 23);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *__str = 0u;
  v20 = 0u;
  *(result + 11) = data;
  *(result + 10) = 1;
  if (token2 && *token2)
  {
    v14 = strlen(token2);
    v15 = strlen(token);
    v16 = malloc_type_malloc(v15 + v14 + 2, 0x100004077774924uLL);
    if (!v16)
    {
LABEL_13:
      xmlRegFreeAtom(v13);
      result = 0;
      goto LABEL_14;
    }

    v17 = v16;
    memcpy(v16, token, v15);
    v17[v15] = 124;
    memcpy(&v17[v15 + 1], token2, v14);
    v17[v15 + 1 + v14] = 0;
  }

  else
  {
    v17 = xmlStrdup(token);
  }

  *(v13 + 3) = v17;
  snprintf(__str, 0xC7uLL, "not %s", v17);
  v30[23] = 0;
  *(v13 + 4) = xmlStrdup(__str);
  if ((xmlFAGenerateTransitions(am, from, to, v13) & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

  ++*(am + 27);
  result = to;
  if (!to)
  {
    result = *(am + 5);
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

xmlAutomataStatePtr xmlAutomataNewCountTrans2(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, const xmlChar *token2, int min, int max, void *data)
{
  result = 0;
  if (!am)
  {
    return result;
  }

  if (!from)
  {
    return result;
  }

  if (!token)
  {
    return result;
  }

  if (min < 0)
  {
    return result;
  }

  result = 0;
  if (max < min)
  {
    return result;
  }

  if (max < 1)
  {
    return result;
  }

  result = xmlRegNewAtom(am, 5);
  if (!result)
  {
    return result;
  }

  v17 = result;
  if (token2 && *token2)
  {
    v24 = strlen(token2);
    v25 = strlen(token);
    v18 = malloc_type_malloc(v25 + v24 + 2, 0x100004077774924uLL);
    if (!v18)
    {
LABEL_23:
      xmlRegFreeAtom(v17);
      return 0;
    }

    v19 = v18;
    memcpy(v18, token, v25);
    v19[v25] = 124;
    memcpy(&v19[v25 + 1], token2, v24);
    v19[v25 + 1 + v24] = 0;
  }

  else
  {
    v19 = xmlStrdup(token);
  }

  *(v17 + 3) = v19;
  *(v17 + 11) = data;
  if (min)
  {
    v20 = min;
  }

  else
  {
    v20 = 1;
  }

  *(v17 + 3) = v20;
  *(v17 + 4) = max;
  Counter = xmlRegGetCounter(am);
  if ((Counter & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  v22 = Counter;
  v23 = (*(am + 12) + 8 * Counter);
  *v23 = min;
  v23[1] = max;
  if (!to)
  {
    to = xmlRegNewState(am);
    xmlRegStatePush(am, to);
  }

  xmlRegStateAddTrans(am, from, v17, to, v22, -1);
  xmlRegAtomPush(am, v17);
  *(am + 5) = to;
  if (!min)
  {
    if (to)
    {
      xmlRegStateAddTrans(am, from, 0, to, -1, -1);
    }
  }

  return to;
}

uint64_t xmlRegGetCounter(uint64_t a1)
{
  result = *(a1 + 92);
  v3 = *(a1 + 88);
  if (result < v3)
  {
    v4 = *(a1 + 96);
LABEL_11:
    v4[result] = -1;
    *(a1 + 92) = result + 1;
    return result;
  }

  if (v3 < 1)
  {
    v5 = 4;
  }

  else
  {
    if (v3 > 0x3B9AC9FF)
    {
      goto LABEL_12;
    }

    if (1000000000 - ((v3 + 1) >> 1) >= v3)
    {
      v5 = v3 + ((v3 + 1) >> 1);
    }

    else
    {
      v5 = 1000000000;
    }
  }

  v6 = malloc_type_realloc(*(a1 + 96), 8 * v5, 0x100004000313F17uLL);
  if (v6)
  {
    v4 = v6;
    *(a1 + 96) = v6;
    *(a1 + 88) = v5;
    result = *(a1 + 92);
    goto LABEL_11;
  }

LABEL_12:
  xmlRegexpErrMemory(a1, "allocating counter");
  return 0xFFFFFFFFLL;
}

_DWORD *xmlRegStateAddTrans(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = result;
  if (!a2)
  {
    result[4] = 1450;
    v17 = "add state: state is NULL";
LABEL_14:

    return xmlRegexpErrCompile(result, v17);
  }

  if (!a4)
  {
    result[4] = 1450;
    v17 = "add state: target is NULL";
    goto LABEL_14;
  }

  v12 = *(a2 + 24);
  if (v12 < 1)
  {
LABEL_10:
    v15 = *(a2 + 20);
    if (v12 >= v15)
    {
      if (v15 < 1)
      {
        v18 = 8;
      }

      else
      {
        if (v15 > 0x3B9AC9FF)
        {
          goto LABEL_37;
        }

        if (1000000000 - ((v15 + 1) >> 1) >= v15)
        {
          v18 = v15 + ((v15 + 1) >> 1);
        }

        else
        {
          v18 = 1000000000;
        }
      }

      v16 = malloc_type_realloc(*(a2 + 32), 24 * v18, 0x102004024DAA5DEuLL);
      if (!v16)
      {
        goto LABEL_37;
      }

      *(a2 + 32) = v16;
      *(a2 + 20) = v18;
      LODWORD(v12) = *(a2 + 24);
    }

    else
    {
      v16 = *(a2 + 32);
    }

    v19 = &v16[24 * v12];
    *v19 = a3;
    *(v19 + 2) = *(a4 + 16);
    *(v19 + 3) = a5;
    *(v19 + 4) = a6;
    *(v19 + 5) = 0;
    *(a2 + 24) = v12 + 1;
    v20 = *(a2 + 16);
    v22 = *(a4 + 40);
    v21 = *(a4 + 44);
    if (v21 < v22)
    {
      result = *(a4 + 48);
LABEL_35:
      result[v21] = v20;
      ++*(a4 + 44);
      return result;
    }

    if (v22 < 1)
    {
      v23 = 8;
    }

    else
    {
      if (v22 > 0x3B9AC9FF)
      {
        goto LABEL_37;
      }

      if (1000000000 - ((v22 + 1) >> 1) >= v22)
      {
        v23 = v22 + ((v22 + 1) >> 1);
      }

      else
      {
        v23 = 1000000000;
      }
    }

    result = malloc_type_realloc(*(a4 + 48), 4 * v23, 0x100004052888210uLL);
    if (result)
    {
      *(a4 + 48) = result;
      *(a4 + 40) = v23;
      v21 = *(a4 + 44);
      goto LABEL_35;
    }

LABEL_37:

    return xmlRegexpErrMemory(v6, "adding transition");
  }

  v13 = v12 + 1;
  v14 = (*(a2 + 32) + 24 * v12 - 12);
  while (*(v14 - 3) != a3 || *(v14 - 1) != *(a4 + 16) || *v14 != a5 || v14[1] != a6)
  {
    --v13;
    v14 -= 6;
    if (v13 <= 1)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t xmlRegAtomPush(uint64_t a1, signed int *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 60);
  if (v5 >= v4)
  {
    if (v4 < 1)
    {
      v8 = 4;
    }

    else
    {
      if (v4 > 0x3B9AC9FF)
      {
        v7 = "Malloc failed.\n";
        goto LABEL_14;
      }

      if (1000000000 - ((v4 + 1) >> 1) >= v4)
      {
        v8 = v4 + ((v4 + 1) >> 1);
      }

      else
      {
        v8 = 1000000000;
      }
    }

    v6 = malloc_type_realloc(*(a1 + 64), 8 * v8, 0x2004093837F09uLL);
    if (v6)
    {
      *(a1 + 64) = v6;
      *(a1 + 56) = v8;
      v5 = *(a1 + 60);
      goto LABEL_12;
    }

    v7 = "allocating counter";
LABEL_14:
    xmlRegexpErrMemory(a1, v7);
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 64);
LABEL_12:
  v9 = 0;
  *a2 = v5;
  *(a1 + 60) = v5 + 1;
  v6[v5] = a2;
  return v9;
}

_DWORD *xmlFAGenerateEpsilonTransition(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  if (!a3)
  {
    v3 = xmlRegNewState(a1);
    xmlRegStatePush(a1, v3);
    *(a1 + 40) = v3;
  }

  return xmlRegStateAddTrans(a1, a2, 0, v3, -1, -1);
}

xmlAutomataStatePtr xmlAutomataNewCountTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, int min, int max, void *data)
{
  result = 0;
  if (am)
  {
    if (from)
    {
      if (token)
      {
        if ((min & 0x80000000) == 0)
        {
          result = 0;
          if (max >= min && max >= 1)
          {
            result = xmlRegNewAtom(am, 5);
            if (result)
            {
              v15 = result;
              *(result + 3) = xmlStrdup(token);
              *(v15 + 11) = data;
              if (min)
              {
                v16 = min;
              }

              else
              {
                v16 = 1;
              }

              *(v15 + 3) = v16;
              *(v15 + 4) = max;
              Counter = xmlRegGetCounter(am);
              if ((Counter & 0x80000000) != 0)
              {
                xmlRegFreeAtom(v15);
                return 0;
              }

              else
              {
                v18 = Counter;
                v19 = (*(am + 12) + 8 * Counter);
                *v19 = min;
                v19[1] = max;
                if (!to)
                {
                  to = xmlRegNewState(am);
                  xmlRegStatePush(am, to);
                }

                xmlRegStateAddTrans(am, from, v15, to, v18, -1);
                xmlRegAtomPush(am, v15);
                *(am + 5) = to;
                if (!min)
                {
                  if (to)
                  {
                    xmlRegStateAddTrans(am, from, 0, to, -1, -1);
                  }
                }

                return to;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataNewOnceTrans2(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, const xmlChar *token2, int min, int max, void *data)
{
  result = 0;
  if (!am)
  {
    return result;
  }

  if (!from)
  {
    return result;
  }

  if (!token)
  {
    return result;
  }

  if (min < 1)
  {
    return result;
  }

  if (max < min)
  {
    return result;
  }

  result = xmlRegNewAtom(am, 5);
  if (!result)
  {
    return result;
  }

  v17 = result;
  if (token2 && *token2)
  {
    v22 = strlen(token2);
    v23 = strlen(token);
    v18 = malloc_type_malloc(v23 + v22 + 2, 0x100004077774924uLL);
    if (!v18)
    {
LABEL_16:
      xmlRegFreeAtom(v17);
      return 0;
    }

    v19 = v18;
    memcpy(v18, token, v23);
    v19[v23] = 124;
    memcpy(&v19[v23 + 1], token2, v22);
    v19[v23 + 1 + v22] = 0;
  }

  else
  {
    v19 = xmlStrdup(token);
  }

  *(v17 + 3) = v19;
  *(v17 + 11) = data;
  *(v17 + 2) = 6;
  *(v17 + 3) = min;
  *(v17 + 4) = max;
  Counter = xmlRegGetCounter(am);
  if ((Counter & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v21 = Counter;
  *(*(am + 12) + 8 * Counter) = 0x100000001;
  if (!to)
  {
    to = xmlRegNewState(am);
    xmlRegStatePush(am, to);
  }

  xmlRegStateAddTrans(am, from, v17, to, v21, -1);
  xmlRegAtomPush(am, v17);
  *(am + 5) = to;
  return to;
}

xmlAutomataStatePtr xmlAutomataNewOnceTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, const xmlChar *token, int min, int max, void *data)
{
  result = 0;
  if (am)
  {
    if (from)
    {
      if (token)
      {
        if (min >= 1 && max >= min)
        {
          result = xmlRegNewAtom(am, 5);
          if (result)
          {
            v15 = result;
            *(result + 3) = xmlStrdup(token);
            *(v15 + 11) = data;
            *(v15 + 2) = 6;
            *(v15 + 3) = min;
            *(v15 + 4) = max;
            Counter = xmlRegGetCounter(am);
            if ((Counter & 0x80000000) != 0)
            {
              xmlRegFreeAtom(v15);
              return 0;
            }

            else
            {
              v17 = Counter;
              *(*(am + 12) + 8 * Counter) = 0x100000001;
              if (!to)
              {
                to = xmlRegNewState(am);
                xmlRegStatePush(am, to);
              }

              xmlRegStateAddTrans(am, from, v15, to, v17, -1);
              xmlRegAtomPush(am, v15);
              *(am + 5) = to;
              return to;
            }
          }
        }
      }
    }
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataNewState(xmlAutomataPtr am)
{
  if (!am)
  {
    return 0;
  }

  v2 = xmlRegNewState(am);
  xmlRegStatePush(am, v2);
  return v2;
}

xmlAutomataStatePtr xmlAutomataNewEpsilon(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to)
{
  result = 0;
  if (am && from)
  {
    xmlFAGenerateEpsilonTransition(am, from, to);
    result = to;
    if (!to)
    {
      return *(am + 5);
    }
  }

  return result;
}

xmlAutomataStatePtr xmlAutomataNewAllTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, int lax)
{
  result = 0;
  if (am && from)
  {
    if (to)
    {
      if (lax)
      {
        v9 = 1193047;
      }

      else
      {
        v9 = 1193046;
      }

      xmlRegStateAddTrans(am, from, 0, to, -1, v9);
      return to;
    }

    else
    {
      v10 = xmlRegNewState(am);
      xmlRegStatePush(am, v10);
      *(am + 5) = v10;
      if (lax)
      {
        v11 = 1193047;
      }

      else
      {
        v11 = 1193046;
      }

      xmlRegStateAddTrans(am, from, 0, v10, -1, v11);
      return *(am + 5);
    }
  }

  return result;
}

int xmlAutomataNewCounter(xmlAutomataPtr am, int min, int max)
{
  if (!am)
  {
    return -1;
  }

  result = xmlRegGetCounter(am);
  if (result < 0)
  {
    return -1;
  }

  v7 = (*(am + 12) + 8 * result);
  *v7 = min;
  v7[1] = max;
  return result;
}

xmlAutomataStatePtr xmlAutomataNewCountedTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, int counter)
{
  result = 0;
  if (am && from && (counter & 0x80000000) == 0)
  {
    xmlFAGenerateCountedEpsilonTransition(am, from, to, counter);
    result = to;
    if (!to)
    {
      return *(am + 5);
    }
  }

  return result;
}

_DWORD *xmlFAGenerateCountedEpsilonTransition(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v5 = a3;
  if (!a3)
  {
    v5 = xmlRegNewState(a1);
    xmlRegStatePush(a1, v5);
    *(a1 + 40) = v5;
  }

  return xmlRegStateAddTrans(a1, a2, 0, v5, a4, -1);
}

xmlAutomataStatePtr xmlAutomataNewCounterTrans(xmlAutomataPtr am, xmlAutomataStatePtr from, xmlAutomataStatePtr to, int counter)
{
  result = 0;
  if (am && from && (counter & 0x80000000) == 0)
  {
    xmlFAGenerateCountedTransition(am, from, to, counter);
    result = to;
    if (!to)
    {
      return *(am + 5);
    }
  }

  return result;
}

_DWORD *xmlFAGenerateCountedTransition(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v5 = a3;
  if (!a3)
  {
    v5 = xmlRegNewState(a1);
    xmlRegStatePush(a1, v5);
    *(a1 + 40) = v5;
  }

  return xmlRegStateAddTrans(a1, a2, 0, v5, -1, a4);
}

xmlRegexpPtr xmlAutomataCompile(xmlAutomataPtr am)
{
  if (!am || *(am + 4))
  {
    return 0;
  }

  xmlFAEliminateEpsilonTransitions(am);

  return xmlRegEpxFromParse(am);
}

int xmlAutomataIsDeterminist(xmlAutomataPtr am)
{
  if (am)
  {
    return xmlFAComputesDeterminism(am);
  }

  else
  {
    return -1;
  }
}

xmlChar *xmlFARegExecSaveInputString(uint64_t a1, xmlChar *cur, xmlChar *a3)
{
  v6 = *(a1 + 72);
  if (*(a1 + 76) + 1 < v6)
  {
    goto LABEL_11;
  }

  if (v6 < 1)
  {
    v7 = 4;
  }

  else
  {
    if (v6 > 0x3B9AC9FF)
    {
      goto LABEL_12;
    }

    if (1000000000 - ((v6 + 1) >> 1) >= v6)
    {
      v7 = v6 + ((v6 + 1) >> 1);
    }

    else
    {
      v7 = 1000000000;
    }
  }

  v8 = malloc_type_realloc(*(a1 + 104), 16 * v7, 0x900405DDA6445uLL);
  if (v8)
  {
    *(a1 + 104) = v8;
    *(a1 + 72) = v7;
LABEL_11:
    result = xmlStrdup(cur);
    v10 = *(a1 + 104);
    v11 = *(a1 + 76);
    v12 = (v10 + 16 * v11);
    *v12 = result;
    v12[1] = a3;
    *(a1 + 76) = ++v11;
    v13 = (v10 + 16 * v11);
    *v13 = 0;
    v13[1] = 0;
    return result;
  }

LABEL_12:

  return xmlRegexpErrMemory(0, "pushing input string");
}

uint64_t xmlRegStrEqualWildcard(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *a2;
    while (1)
    {
      if (*a1 == v3)
      {
        v4 = *++a2;
        v3 = v4;
        v5 = a1;
      }

      else
      {
        if (v3 == 42)
        {
          v5 = a2;
        }

        else
        {
          v5 = a1;
        }

        if (v3 == 42)
        {
          a2 = a1;
        }

        v3 = *a2;
        if (!*a2 || *v5 != 42)
        {
          return 0;
        }

        while (v3 != 124)
        {
          v6 = *++a2;
          v3 = v6;
          if (!v6)
          {
            a1 = v5 + 1;
            return *a1 == 0;
          }
        }
      }

      a1 = v5 + 1;
      if (!v3)
      {
        return *a1 == 0;
      }
    }
  }

  return v2;
}

void xmlFARegExecSave(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 > 10000000)
  {
    return;
  }

  *(a1 + 144) = v1 + 1;
  v3 = *(a1 + 48);
  v4 = *(a1 + 52);
  if (v4 >= v3)
  {
    if (v3 < 1)
    {
      v5 = 4;
    }

    else
    {
      if (v3 > 0x3B9AC9FF)
      {
        goto LABEL_19;
      }

      if (1000000000 - ((v3 + 1) >> 1) >= v3)
      {
        v5 = v3 + ((v3 + 1) >> 1);
      }

      else
      {
        v5 = 1000000000;
      }
    }

    v6 = malloc_type_realloc(*(a1 + 56), 24 * v5, 0x1030040CE42941AuLL);
    if (!v6)
    {
LABEL_19:

      xmlRegexpErrMemory(0, "saving regexp");
      return;
    }

    *(a1 + 56) = v6;
    *(a1 + 48) = v5;
    bzero(&v6[24 * v4], 24 * (v5 - v4));
    v4 = *(a1 + 52);
  }

  v7 = *(a1 + 56);
  v8 = v7 + 24 * v4;
  *v8 = *(a1 + 32);
  v9 = *(a1 + 40) + 1;
  *(v8 + 8) = *(a1 + 80);
  *(v8 + 12) = v9;
  v10 = *(*(a1 + 8) + 40);
  if (v10 >= 1)
  {
    v11 = *(v7 + 24 * v4 + 16);
    if (!v11)
    {
      v11 = malloc_type_malloc(4 * v10, 0x100004052888210uLL);
      *(*(a1 + 56) + 24 * *(a1 + 52) + 16) = v11;
      if (!v11)
      {
        xmlRegexpErrMemory(0, "saving regexp");
        *a1 = -5;
        return;
      }

      LODWORD(v10) = *(*(a1 + 8) + 40);
    }

    memcpy(v11, *(a1 + 64), 4 * v10);
    v4 = *(a1 + 52);
  }

  *(a1 + 52) = v4 + 1;
}

int *xmlFARegExecRollBack(int *result)
{
  v1 = result;
  v2 = result[13];
  if (v2 <= 0)
  {
    v9 = -1;
LABEL_10:
    *v1 = v9;
    return result;
  }

  v3 = v2 - 1;
  result[13] = v3;
  v4 = *(result + 7);
  v5 = v4 + 24 * v3;
  *(result + 4) = *v5;
  v6 = *(v5 + 8);
  LODWORD(v5) = *(v5 + 12);
  result[20] = v6;
  result[10] = v5;
  v7 = *(*(result + 1) + 40);
  if (v7 < 1)
  {
    return result;
  }

  v8 = *(v4 + 24 * v3 + 16);
  if (!v8)
  {
    result = fwrite("exec save: allocation failed", 0x1CuLL, 1uLL, *MEMORY[0x1E69E9848]);
    v9 = -6;
    goto LABEL_10;
  }

  result = *(result + 8);
  if (result)
  {

    return memcpy(result, v8, 4 * v7);
  }

  return result;
}

FILE *xmlRegPrintAtomType(FILE *__stream, int a2)
{
  v2 = __stream;
  switch(a2)
  {
    case 100:
      v3 = "LETTER ";
      goto LABEL_66;
    case 101:
      v3 = "LETTER_UPPERCASE ";
      goto LABEL_31;
    case 102:
      v3 = "LETTER_LOWERCASE ";
      goto LABEL_31;
    case 103:
      v3 = "LETTER_TITLECASE ";
LABEL_31:
      v4 = 17;
      return fwrite(v3, v4, 1uLL, v2);
    case 104:
      v3 = "LETTER_MODIFIER ";
      goto LABEL_64;
    case 105:
      v3 = "LETTER_OTHERS ";
      goto LABEL_56;
    case 106:
      v3 = "MARK ";
      v4 = 5;
      return fwrite(v3, v4, 1uLL, v2);
    case 107:
      v3 = "MARK_NONSPACING ";
      goto LABEL_64;
    case 108:
      v3 = "MARK_SPACECOMBINING ";
      v4 = 20;
      return fwrite(v3, v4, 1uLL, v2);
    case 109:
      v3 = "MARK_ENCLOSING ";
      goto LABEL_37;
    case 110:
      v3 = "NUMBER ";
      goto LABEL_66;
    case 111:
      v3 = "NUMBER_DECIMAL ";
      goto LABEL_37;
    case 112:
      v3 = "NUMBER_LETTER ";
      goto LABEL_56;
    case 113:
      v3 = "NUMBER_OTHERS ";
      goto LABEL_56;
    case 114:
      v3 = "PUNCT ";
      goto LABEL_58;
    case 115:
      v3 = "PUNCT_CONNECTOR ";
      goto LABEL_64;
    case 116:
      v3 = "PUNCT_DASH ";
      goto LABEL_48;
    case 117:
      v3 = "PUNCT_OPEN ";
      goto LABEL_48;
    case 118:
      v3 = "PUNCT_CLOSE ";
      goto LABEL_61;
    case 119:
      v3 = "PUNCT_INITQUOTE ";
      goto LABEL_64;
    case 120:
      v3 = "PUNCT_FINQUOTE ";
LABEL_37:
      v4 = 15;
      return fwrite(v3, v4, 1uLL, v2);
    case 121:
      v3 = "PUNCT_OTHERS ";
      goto LABEL_40;
    case 122:
      v3 = "SEPAR ";
      goto LABEL_58;
    case 123:
      v3 = "SEPAR_SPACE ";
      goto LABEL_61;
    case 124:
      v3 = "SEPAR_LINE ";
      goto LABEL_48;
    case 125:
      v3 = "SEPAR_PARA ";
LABEL_48:
      v4 = 11;
      return fwrite(v3, v4, 1uLL, v2);
    case 126:
      v3 = "SYMBOL ";
LABEL_66:
      v4 = 7;
      return fwrite(v3, v4, 1uLL, v2);
    case 127:
      v3 = "SYMBOL_MATH ";
LABEL_61:
      v4 = 12;
      return fwrite(v3, v4, 1uLL, v2);
    case 128:
      v3 = "SYMBOL_CURRENCY ";
      goto LABEL_64;
    case 129:
      v3 = "SYMBOL_MODIFIER ";
LABEL_64:
      v4 = 16;
      return fwrite(v3, v4, 1uLL, v2);
    case 130:
      v3 = "SYMBOL_OTHERS ";
      goto LABEL_56;
    case 131:
      v3 = "OTHER ";
      goto LABEL_58;
    case 132:
      v3 = "OTHER_CONTROL ";
      goto LABEL_56;
    case 133:
      v3 = "OTHER_FORMAT ";
LABEL_40:
      v4 = 13;
      return fwrite(v3, v4, 1uLL, v2);
    case 134:
      v3 = "OTHER_PRIVATE ";
LABEL_56:
      v4 = 14;
      break;
    case 135:
      v3 = "OTHER_NA ";
LABEL_53:
      v4 = 9;
      break;
    case 136:
      v3 = "BLOCK ";
LABEL_58:
      v4 = 6;
      break;
    default:
      switch(a2)
      {
        case 1:
          v3 = "epsilon ";
          goto LABEL_44;
        case 2:
          v3 = "charval ";
          goto LABEL_44;
        case 3:
          v3 = "ranges ";
          goto LABEL_66;
        case 4:
          v3 = "subexpr ";
          goto LABEL_44;
        case 5:
          v3 = "string ";
          goto LABEL_66;
        case 6:
          v3 = "anychar ";
          goto LABEL_44;
        case 7:
          v3 = "anyspace ";
          goto LABEL_53;
        case 8:
          v3 = "notspace ";
          goto LABEL_53;
        case 9:
          v3 = "initname ";
          goto LABEL_53;
        case 10:
          v3 = "notinitname ";
          goto LABEL_61;
        case 11:
          v3 = "namechar ";
          goto LABEL_53;
        case 12:
          v3 = "notnamechar ";
          goto LABEL_61;
        case 13:
          v3 = "decimal ";
LABEL_44:
          v4 = 8;
          return fwrite(v3, v4, 1uLL, v2);
        case 14:
          v3 = "notdecimal ";
          goto LABEL_48;
        case 15:
          v3 = "realchar ";
          goto LABEL_53;
        case 16:
          v3 = "notrealchar ";
          goto LABEL_61;
        default:
          return __stream;
      }
  }

  return fwrite(v3, v4, 1uLL, v2);
}

uint64_t xmlFAParseBranch(uint64_t a1, char *a2)
{
  v4 = *(a1 + 40);
  if (xmlFAParsePiece(a1))
  {
    do
    {
      v5 = **(a1 + 8);
      if (!**(a1 + 8) || v5 == 124 || v5 == 41)
      {
        v6 = a2;
      }

      else
      {
        v6 = 0;
      }

      result = xmlFAGenerateTransitions(a1, v4, v6, *(a1 + 48));
      if ((result & 0x80000000) != 0)
      {
        break;
      }

      v4 = *(a1 + 40);
      *(a1 + 48) = 0;
      if (*(a1 + 16))
      {
        break;
      }

      result = xmlFAParsePiece(a1);
    }

    while (result);
  }

  else
  {

    return xmlFAGenerateEpsilonTransition(a1, v4, a2);
  }

  return result;
}

uint64_t xmlFAParsePiece(uint64_t a1)
{
  *(a1 + 48) = 0;
  *len = 0;
  v2 = xmlStringCurrentChar(0, *(a1 + 8), &len[1]);
  v3 = v2 > 0x3F || ((1 << v2) & 0x80004F0000000001) == 0;
  if (!v3 || ((v2 - 91) <= 0x21 ? (v4 = ((1 << (v2 - 91)) & 0x200000007) == 0) : (v4 = 1), !v4 || v2 < 1))
  {
    v5 = *(a1 + 8);
    v6 = *v5;
    if (v6 > 0x5A)
    {
      if (v6 != 91)
      {
        if (v6 != 92)
        {
          return 0;
        }

        goto LABEL_16;
      }

      *(a1 + 8) = v5 + 1;
      v9 = xmlRegNewAtom(a1, 3);
      *(a1 + 48) = v9;
      if (!v9)
      {
        goto LABEL_34;
      }

      xmlFAParseCharGroup(a1);
      v10 = *(a1 + 8);
      if (*v10 == 93)
      {
        v11 = v10 + 1;
LABEL_27:
        *(a1 + 8) = v11;
        goto LABEL_33;
      }

      *(a1 + 16) = 1450;
      v8 = "xmlFAParseCharClass: ']' expected";
    }

    else
    {
      if (v6 != 40)
      {
        if (v6 != 46)
        {
          return 0;
        }

LABEL_16:
        xmlFAParseCharClassEsc(a1);
        goto LABEL_33;
      }

      *(a1 + 8) = v5 + 1;
      if (*(a1 + 116) < 50)
      {
        xmlFAGenerateEpsilonTransition(a1, *(a1 + 40), 0);
        v12 = *(a1 + 40);
        xmlFAGenerateEpsilonTransition(a1, v12, 0);
        v13 = *(a1 + 32);
        v14 = *(a1 + 40);
        *(a1 + 32) = 0;
        *(a1 + 48) = 0;
        ++*(a1 + 116);
        xmlFAParseRegExp(a1, 0);
        --*(a1 + 116);
        v15 = *(a1 + 8);
        if (*v15 == 41)
        {
          *(a1 + 8) = v15 + 1;
        }

        else
        {
          *(a1 + 16) = 1450;
          xmlRegexpErrCompile(a1, "xmlFAParseAtom: expecting ')'");
        }

        v17 = xmlRegNewAtom(a1, 4);
        *(a1 + 48) = v17;
        if (!v17)
        {
          goto LABEL_34;
        }

        v17[6] = v14;
        v17[7] = v12;
        v17[8] = *(a1 + 40);
        *(a1 + 32) = v13;
LABEL_33:
        if (*(a1 + 48))
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      *(a1 + 16) = 1450;
      v8 = "xmlFAParseAtom: maximum nesting depth exceeded";
    }

    xmlRegexpErrCompile(a1, v8);
    goto LABEL_33;
  }

  v16 = xmlRegNewAtom(a1, 2);
  *(a1 + 48) = v16;
  if (v16)
  {
    *(*(a1 + 48) + 44) = xmlStringCurrentChar(0, *(a1 + 8), len);
    v11 = (*(a1 + 8) + len[0]);
    goto LABEL_27;
  }

LABEL_34:
  *(a1 + 16) = 1450;
  xmlRegexpErrCompile(a1, "internal: no atom generated");
LABEL_35:
  v18 = *(a1 + 8);
  v19 = *v18;
  if ((v19 - 42) < 2)
  {
    goto LABEL_38;
  }

  if (v19 == 123)
  {
    *(a1 + 8) = v18 + 1;
    v22 = xmlFAParseQuantExact(a1);
    if (v22 < 0)
    {
      *(a1 + 16) = 1450;
      xmlRegexpErrCompile(a1, "Improper quantifier");
      v22 = 0;
    }

    v23 = *(a1 + 8);
    if (*v23 == 44)
    {
      *(a1 + 8) = v23 + 1;
      if (v23[1] == 125)
      {
        v24 = 0x7FFFFFFF;
        goto LABEL_56;
      }

      v24 = xmlFAParseQuantExact(a1);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_56:
        v25 = *(a1 + 8);
        if (*v25 == 125)
        {
          *(a1 + 8) = v25 + 1;
        }

        else
        {
          *(a1 + 16) = 1450;
          xmlRegexpErrCompile(a1, "Unterminated quantifier");
        }

        v26 = *(a1 + 48);
        if (v26)
        {
          if (v24)
          {
            v27 = v24;
          }

          else
          {
            v27 = v22;
          }

          v26[2] = 8;
          v26[3] = v22;
          v26[4] = v27;
        }

        return 1;
      }

      *(a1 + 16) = 1450;
      xmlRegexpErrCompile(a1, "Improper quantifier");
    }

    v24 = 0;
    goto LABEL_56;
  }

  if (v19 == 63)
  {
LABEL_38:
    v20 = *(a1 + 48);
    if (v20)
    {
      switch(v19)
      {
        case '?':
          v21 = 3;
          goto LABEL_50;
        case '+':
          v21 = 5;
          goto LABEL_50;
        case '*':
          v21 = 4;
LABEL_50:
          *(v20 + 8) = v21;
          break;
      }
    }

    *(a1 + 8) = v18 + 1;
  }

  return 1;
}

_DWORD *xmlFAParseCharGroup(_DWORD *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(result + 1);
  v4 = *v3;
  if (v4 != 94)
  {
    goto LABEL_4;
  }

  *(result + 1) = v3 + 1;
  result[5] = v2 == 0;
  result = xmlFAParsePosCharGroup(result);
  *(v1 + 20) = v2;
  while (1)
  {
    v3 = *(v1 + 8);
    v4 = *v3;
LABEL_4:
    if (v4 == 93 || *(v1 + 16))
    {
      break;
    }

    if (v4 == 45 && v3[1] == 91)
    {
      *(v1 + 8) = v3 + 2;
      *(v1 + 20) = 2;
      result = xmlFAParseCharGroup(v1);
      *(v1 + 20) = v2;
      v5 = *(v1 + 8);
      if (*v5 == 93)
      {
        *(v1 + 8) = v5 + 1;
      }

      else
      {
        *(v1 + 16) = 1450;

        return xmlRegexpErrCompile(v1, "charClassExpr: ']' expected");
      }

      return result;
    }

    result = xmlFAParsePosCharGroup(v1);
  }

  return result;
}

_DWORD *xmlFAParseCharClassEsc(_DWORD *result)
{
  v1 = result;
  v2 = *(result + 1);
  v3 = *v2;
  if (v3 != 92)
  {
    if (v3 == 46)
    {
      v4 = *(result + 6);
      if (!v4)
      {
        result = xmlRegNewAtom(result, 6);
        *(v1 + 6) = result;
        goto LABEL_41;
      }

      if (*(v4 + 4) != 3)
      {
        goto LABEL_41;
      }

      v5 = result[5];
      v6 = 6;
      v7 = 0;
      v8 = 0;
LABEL_40:
      result = xmlRegAtomAddRange(result, v4, v5, v6, v7, v8, 0);
      goto LABEL_41;
    }

    result[4] = 1450;
    v12 = "Escaped sequence: expecting \";
LABEL_12:

    return xmlRegexpErrCompile(v1, v12);
  }

  *(result + 1) = v2 + 1;
  v9 = v2[1];
  if (v9 > 0x43)
  {
    v10 = 7;
    switch(v2[1])
    {
      case 'P':
        *(result + 1) = v2 + 2;
        if (v2[2] != 123)
        {
          goto LABEL_58;
        }

        *(result + 1) = v2 + 3;
        result = xmlFAParseCharProp(result);
        v11 = *(v1 + 6);
        if (v11)
        {
          *(v11 + 40) = 1;
        }

        goto LABEL_54;
      case 'Q':
      case 'R':
      case 'T':
      case 'U':
      case 'V':
      case 'X':
      case 'Y':
      case 'Z':
      case '_':
      case 'a':
      case 'b':
      case 'e':
      case 'f':
      case 'g':
      case 'h':
      case 'j':
      case 'k':
      case 'l':
      case 'm':
      case 'o':
      case 'q':
      case 'u':
      case 'v':
      case 'x':
      case 'y':
      case 'z':
        goto LABEL_44;
      case 'S':
        v10 = 8;
        goto LABEL_61;
      case 'W':
        v10 = 16;
        goto LABEL_61;
      case '[':
      case '\\':
      case ']':
      case '^':
      case 'n':
      case 'r':
      case 't':
      case '{':
      case '|':
      case '}':
        goto LABEL_23;
      case 'c':
        v10 = 11;
        goto LABEL_61;
      case 'd':
        v10 = 13;
        goto LABEL_61;
      case 'i':
        v10 = 9;
        goto LABEL_61;
      case 'p':
        *(result + 1) = v2 + 2;
        if (v2[2] != 123)
        {
LABEL_58:
          result[4] = 1450;
          v12 = "Expecting '{'";
          goto LABEL_12;
        }

        *(result + 1) = v2 + 3;
        result = xmlFAParseCharProp(result);
LABEL_54:
        v14 = *(v1 + 1);
        if (*v14 != 125)
        {
          v1[4] = 1450;
          v12 = "Expecting '}'";
          goto LABEL_12;
        }

        goto LABEL_42;
      case 's':
        goto LABEL_61;
      case 'w':
        v10 = 15;
        goto LABEL_61;
      default:
        if (v9 == 68)
        {
          v10 = 14;
        }

        else
        {
          if (v9 != 73)
          {
            goto LABEL_44;
          }

          v10 = 10;
        }

        break;
    }

    goto LABEL_61;
  }

  if (v2[1] > 0x2Cu)
  {
    if (v9 - 45 >= 2 && v9 != 63)
    {
      if (v9 == 67)
      {
        v10 = 12;
LABEL_61:
        *(result + 1) = v2 + 2;
        v15 = *(result + 6);
        if (v15)
        {
          if (*(v15 + 4) == 3)
          {
            v16 = result[5];

            return xmlRegAtomAddRange(result, v15, v16, v10, 0, 0, 0);
          }
        }

        else
        {
          result = xmlRegNewAtom(result, v10);
          *(v1 + 6) = result;
        }

        return result;
      }

LABEL_44:
      result[4] = 1450;
      v12 = "Wrong escape sequence, misuse of character '\\'";
      goto LABEL_12;
    }
  }

  else if (v9 - 40 >= 4)
  {
    goto LABEL_44;
  }

LABEL_23:
  v4 = *(result + 6);
  if (v4)
  {
    if (*(v4 + 4) != 3)
    {
      goto LABEL_41;
    }

    switch(v9)
    {
      case 't':
        v9 = 9;
        break;
      case 'r':
        v9 = 13;
        break;
      case 'n':
        v9 = 10;
        break;
    }

    v5 = result[5];
    v6 = 2;
    v7 = v9;
    v8 = v9;
    goto LABEL_40;
  }

  result = xmlRegNewAtom(result, 2);
  *(v1 + 6) = result;
  if (!result)
  {
    goto LABEL_41;
  }

  switch(v9)
  {
    case 't':
      v13 = 9;
      goto LABEL_47;
    case 'r':
      v13 = 13;
      goto LABEL_47;
    case 'n':
      v13 = 10;
LABEL_47:
      result[11] = v13;
      goto LABEL_41;
  }

  result[11] = v9;
LABEL_41:
  v14 = *(v1 + 1);
LABEL_42:
  *(v1 + 1) = v14 + 1;
  return result;
}

uint64_t xmlFAParsePosCharGroup(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  v3 = *v2;
  do
  {
    if (v3 != 92)
    {
      len = 0;
      v4 = *v2;
      if (v4 > 0x5B)
      {
        if (v4 == 92)
        {
          v6 = (v2 + 1);
          *(v1 + 8) = v2 + 1;
          v5 = v2[1];
          if (v5 > 0x71)
          {
            if (v5 - 123 >= 3)
            {
              if (v5 == 116)
              {
                v5 = 9;
              }

              else
              {
                if (v5 != 114)
                {
                  goto LABEL_49;
                }

                v5 = 13;
              }
            }
          }

          else if (v5 - 40 > 0x36 || ((1 << (v5 - 40)) & 0x7800000080006FLL) == 0)
          {
            if (v5 != 110)
            {
              goto LABEL_49;
            }

            v5 = 10;
          }

          len = 1;
LABEL_23:
          if (v5 == 45 && v6[1] != 93)
          {
            v9 = *(v6 - 1);
            if (v9 != 91 && v9 != 94)
            {
              *(v1 + 8) = &v6[len];
              goto LABEL_55;
            }
          }

          v10 = &v6[len];
          *(v1 + 8) = v10;
          if (*v10 != 45 || (v11 = v10 + 1, v10[1] == 93))
          {
            v12 = *(v1 + 48);
            v13 = *(v1 + 20);
            v14 = v1;
            v15 = v5;
            v16 = v5;
LABEL_30:
            result = xmlRegAtomAddRange(v14, v12, v13, 2, v15, v16, 0);
            goto LABEL_55;
          }

          *(v1 + 8) = v11;
          v17 = *v11;
          if (v17 > 0x5B)
          {
            if (v17 == 93)
            {
              goto LABEL_42;
            }

            if (v17 == 92)
            {
              *(v1 + 8) = v10 + 2;
              v16 = v10[2];
              if (v16 > 0x71)
              {
                if (v16 - 123 >= 3)
                {
                  if (v16 == 116)
                  {
                    v16 = 9;
                  }

                  else
                  {
                    if (v16 != 114)
                    {
LABEL_49:
                      *(v1 + 16) = 1450;
                      v7 = v1;
                      v8 = "Invalid escape value";
                      goto LABEL_54;
                    }

                    v16 = 13;
                  }
                }
              }

              else if (v16 - 40 > 0x36 || ((1 << (v16 - 40)) & 0x7800000080006FLL) == 0)
              {
                if (v16 != 110)
                {
                  goto LABEL_49;
                }

                v16 = 10;
              }

              len = 1;
              goto LABEL_52;
            }
          }

          else if (!*v11 || v17 == 91)
          {
LABEL_42:
            *(v1 + 16) = 1450;
            v7 = v1;
            v8 = "Expecting the end of a char range";
            goto LABEL_54;
          }

          v16 = xmlStringCurrentChar(0, v11, &len);
LABEL_52:
          if (v16 < v5)
          {
            *(v1 + 16) = 1450;
            v7 = v1;
            v8 = "End of range is before start of range";
            goto LABEL_54;
          }

          *(v1 + 8) += len;
          v12 = *(v1 + 48);
          v13 = *(v1 + 20);
          v14 = v1;
          v15 = v5;
          goto LABEL_30;
        }

        if (v4 != 93)
        {
LABEL_7:
          result = xmlStringCurrentChar(0, v2, &len);
          v5 = result;
          v6 = *(v1 + 8);
          goto LABEL_23;
        }

LABEL_10:
        *(v1 + 16) = 1450;
        v7 = v1;
        v8 = "Expecting a char range";
      }

      else
      {
        if (*v2)
        {
          if (v4 == 91)
          {
            goto LABEL_10;
          }

          goto LABEL_7;
        }

        *(v1 + 16) = 1450;
        v7 = v1;
        v8 = "Expecting ']'";
      }

LABEL_54:
      result = xmlRegexpErrCompile(v7, v8);
      goto LABEL_55;
    }

    result = xmlFAParseCharClassEsc(v1);
LABEL_55:
    v2 = *(v1 + 8);
    v3 = *v2;
  }

  while (*v2 && v3 != 45 && v3 != 93 && !*(v1 + 16));
  return result;
}

_DWORD *xmlRegAtomAddRange(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  if (!a2)
  {
    *(a1 + 16) = 1450;
    v16 = "add range: atom is NULL";
LABEL_11:

    return xmlRegexpErrCompile(a1, v16);
  }

  if (*(a2 + 4) != 3)
  {
    *(a1 + 16) = 1450;
    v16 = "add range: atom is not ranges";
    goto LABEL_11;
  }

  v14 = *(a2 + 72);
  if (*(a2 + 76) >= v14)
  {
    if (v14 < 1)
    {
      v17 = 4;
    }

    else
    {
      if (v14 > 0x3B9AC9FF)
      {

        return xmlRegexpErrMemory(a1, "adding ranges");
      }

      if (1000000000 - ((v14 + 1) >> 1) >= v14)
      {
        v17 = v14 + ((v14 + 1) >> 1);
      }

      else
      {
        v17 = 1000000000;
      }
    }

    v18 = malloc_type_realloc(*(a2 + 80), 8 * v17, 0x2004093837F09uLL);
    if (!v18)
    {
      result = xmlRegexpErrMemory(a1, "adding ranges");
      *(a2 + 72) /= 2;
      return result;
    }

    *(a2 + 80) = v18;
    *(a2 + 72) = v17;
  }

  result = xmlRegNewRange(a1, a3, a4, a5, a6);
  if (result)
  {
    *(result + 2) = a7;
    v19 = *(a2 + 80);
    v20 = *(a2 + 76);
    *(a2 + 76) = v20 + 1;
    *(v19 + 8 * v20) = result;
  }

  return result;
}

_DWORD *xmlRegNewRange(uint64_t a1, int a2, int a3, int a4, int a5)
{
  v10 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
  v11 = v10;
  if (v10)
  {
    *v10 = a2;
    v10[1] = a3;
    v10[2] = a4;
    v10[3] = a5;
  }

  else
  {
    xmlRegexpErrMemory(a1, "allocating range");
  }

  return v11;
}

_DWORD *xmlFAParseCharProp(_DWORD *result)
{
  v1 = result;
  v2 = *(result + 1);
  v3 = *v2;
  if (v3 > 0x4D)
  {
    if (*v2 > 0x52u)
    {
      if (v3 == 83)
      {
        v11 = 0;
        *(result + 1) = v2 + 1;
        v19 = (((v2[1] - 99) >> 1) | ((v2[1] - 99) << 7));
        v13 = 126;
        if (v19 > 4)
        {
          if (v19 == 6)
          {
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 130;
          }

          else if (v19 == 5)
          {
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 127;
          }
        }

        else if (((v2[1] - 99) >> 1) | ((v2[1] - 99) << 7))
        {
          if (v19 == 4)
          {
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 129;
          }
        }

        else
        {
          v11 = 0;
          *(result + 1) = v2 + 2;
          v13 = 128;
        }

        goto LABEL_97;
      }

      if (v3 != 90)
      {
        goto LABEL_55;
      }

      *(result + 1) = v2 + 1;
      v15 = v2[1];
      if (v15 == 108)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 124;
      }

      else if (v15 == 112)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 125;
      }

      else
      {
        v11 = 0;
        if (v15 == 115)
        {
          *(result + 1) = v2 + 2;
          v13 = 123;
        }

        else
        {
          v13 = 122;
        }
      }
    }

    else
    {
      if (v3 != 78)
      {
        if (v3 == 80)
        {
          v11 = 0;
          *(result + 1) = v2 + 1;
          v12 = v2[1];
          v13 = 114;
          if (v12 <= 0x65)
          {
            switch(v12)
            {
              case 'c':
                v11 = 0;
                *(result + 1) = v2 + 2;
                v13 = 115;
                break;
              case 'd':
                v11 = 0;
                *(result + 1) = v2 + 2;
                v13 = 116;
                break;
              case 'e':
                v11 = 0;
                *(result + 1) = v2 + 2;
                v13 = 118;
                break;
            }
          }

          else if (v2[1] > 0x6Eu)
          {
            if (v12 == 111)
            {
              v11 = 0;
              *(result + 1) = v2 + 2;
              v13 = 121;
            }

            else if (v12 == 115)
            {
              v11 = 0;
              *(result + 1) = v2 + 2;
              v13 = 117;
            }
          }

          else if (v12 == 102)
          {
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 120;
          }

          else if (v12 == 105)
          {
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 119;
          }

          goto LABEL_97;
        }

        goto LABEL_55;
      }

      *(result + 1) = v2 + 1;
      v17 = v2[1];
      if (v17 == 111)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 113;
      }

      else if (v17 == 108)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 112;
      }

      else
      {
        v11 = 0;
        if (v17 == 100)
        {
          *(result + 1) = v2 + 2;
          v13 = 111;
        }

        else
        {
          v13 = 110;
        }
      }
    }

LABEL_97:
    v21 = *(v1 + 6);
    if (v21)
    {
      if (*(v21 + 4) == 3)
      {
        v22 = v1[5];

        return xmlRegAtomAddRange(v1, v21, v22, v13, 0, 0, v11);
      }
    }

    else
    {
      result = xmlRegNewAtom(v1, v13);
      *(v1 + 6) = result;
      if (result)
      {
        *(result + 3) = v11;
      }
    }

    return result;
  }

  if (*v2 > 0x4Bu)
  {
    if (v3 == 76)
    {
      v11 = 0;
      *(result + 1) = v2 + 1;
      v18 = v2[1];
      v13 = 100;
      if (v18 <= 0x6E)
      {
        if (v18 == 108)
        {
          v11 = 0;
          *(result + 1) = v2 + 2;
          v13 = 102;
        }

        else if (v18 == 109)
        {
          v11 = 0;
          *(result + 1) = v2 + 2;
          v13 = 104;
        }
      }

      else
      {
        switch(v18)
        {
          case 'o':
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 105;
            break;
          case 't':
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 103;
            break;
          case 'u':
            v11 = 0;
            *(result + 1) = v2 + 2;
            v13 = 101;
            break;
        }
      }

      goto LABEL_97;
    }

    if (v3 == 77)
    {
      *(result + 1) = v2 + 1;
      v14 = v2[1];
      if (v14 == 99)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 108;
      }

      else if (v14 == 101)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 109;
      }

      else
      {
        v11 = 0;
        if (v14 == 110)
        {
          *(result + 1) = v2 + 2;
          v13 = 107;
        }

        else
        {
          v13 = 106;
        }
      }

      goto LABEL_97;
    }

LABEL_55:
    result[4] = 1450;
    v20 = "Unknown char property";
    goto LABEL_63;
  }

  if (v3 == 67)
  {
    v11 = 0;
    *(result + 1) = v2 + 1;
    v16 = v2[1];
    v13 = 131;
    if (v16 > 0x6D)
    {
      if (v16 == 110)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 135;
      }

      else if (v16 == 111)
      {
        v11 = 0;
        *(result + 1) = v2 + 2;
        v13 = 134;
      }
    }

    else if (v16 == 99)
    {
      v11 = 0;
      *(result + 1) = v2 + 2;
      v13 = 132;
    }

    else if (v16 == 102)
    {
      v11 = 0;
      *(result + 1) = v2 + 2;
      v13 = 133;
    }

    goto LABEL_97;
  }

  if (v3 != 73)
  {
    goto LABEL_55;
  }

  *(result + 1) = v2 + 1;
  if (v2[1] == 115)
  {
    v4 = v2 + 2;
    *(v1 + 1) = v2 + 2;
    v5 = v2[2];
    if ((v5 & 0xFFFFFFDF) - 65 > 0x19 && (v5 != 45 ? (v6 = (v5 - 48) >= 0xA) : (v6 = 0), v6))
    {
      i = 0;
    }

    else
    {
      v7 = v2 + 3;
      for (i = 1; ; ++i)
      {
        *(v1 + 1) = v7;
        v9 = *v7;
        if ((v9 & 0xFFFFFFDF) - 65 > 0x19 && v9 != 45 && (v9 - 48) >= 0xA)
        {
          break;
        }

        ++v7;
      }
    }

    result = xmlStrndup(v4, i);
    v11 = result;
    v13 = 136;
    goto LABEL_97;
  }

  result[4] = 1450;
  v20 = "IsXXXX expected";
LABEL_63:

  return xmlRegexpErrCompile(result, v20);
}

uint64_t xmlFAParseQuantExact(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if ((v2 - 58) < 0xFFFFFFF6)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 0;
  v6 = v1 + 1;
  do
  {
    v7 = -2147483601 - v2;
    v8 = v2 - 48;
    if (10 * v5 > v7)
    {
      v8 = 0;
    }

    v9 = v8 + 10 * v5;
    if (10 * v5 > v7)
    {
      v4 = 1;
    }

    if (v5 > 214748364)
    {
      v4 = 1;
    }

    else
    {
      v5 = v9;
    }

    *(a1 + 8) = v6;
    v10 = *v6++;
    v2 = v10;
  }

  while ((v10 - 48) < 0xA);
  if (v4 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

_DWORD *xmlFAReduceEpsilonTransitions(_DWORD *result, uint64_t a2, unsigned int a3, int a4)
{
  v4 = *(result + 10);
  v5 = *(v4 + 8 * a2);
  if (v5)
  {
    v6 = *(v4 + 8 * a3);
    if (v6)
    {
      if ((*(v6 + 4) - 1) >= 2)
      {
        v9 = result;
        *(v6 + 4) = 2;
        if (*v6 == 2)
        {
          *v5 = 2;
        }

        if (*(v6 + 24) >= 1)
        {
          v10 = 0;
          for (i = 0; i < *(v6 + 24); ++i)
          {
            v12 = *(v6 + 32);
            v13 = *(v12 + v10 + 8);
            if ((v13 & 0x80000000) == 0)
            {
              if (*(v12 + v10))
              {
                v14 = *(v12 + v10 + 12);
                v15 = *(*(v9 + 10) + 8 * v13);
                v16 = v9;
                v17 = v5;
                v18 = *(v12 + v10);
                if (v14 < 0)
                {
                  v14 = a4;
                }

                v19 = -1;
              }

              else
              {
                if (v13 == a2)
                {
                  goto LABEL_18;
                }

                v19 = *(v12 + v10 + 16);
                if (v19 < 0)
                {
                  *(v12 + v10 + 12);
                  result = xmlFAReduceEpsilonTransitions(v9, a2);
                  goto LABEL_18;
                }

                v15 = *(*(v9 + 10) + 8 * v13);
                v16 = v9;
                v17 = v5;
                v18 = 0;
                v14 = -1;
              }

              result = xmlRegStateAddTrans(v16, v17, v18, v15, v14, v19);
            }

LABEL_18:
            v10 += 24;
          }
        }

        *(v6 + 4) = 0;
      }
    }
  }

  return result;
}

void *__xmlRegEpxFromParse_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32) + 1;
  v2 = *(a1 + 36) + 1;
  if (v1 <= (0x7FFFFFFF / v2) >> 2)
  {
    return malloc_type_calloc(v2 * v1, 4uLL, 0x100004052888210uLL);
  }

  else
  {
    return 0;
  }
}

void *__xmlRegEpxFromParse_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 36);
  if (v1 <= (0x7FFFFFFF / v2) >> 3)
  {
    return malloc_type_calloc(v2 * v1, 8uLL, 0x80040B8603338uLL);
  }

  else
  {
    return 0;
  }
}

uint64_t xmlRegCheckCharacter(uint64_t a1, unsigned int code)
{
  if (code > 255)
  {
    if (code >> 11 >= 0x1B && (code - 57344) >> 1 >= 0xFFF && (code - 0x10000) >> 20)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (code <= 31)
  {
    v4 = 0xFFFFFFFFLL;
    if (code > 0xD || ((1 << code) & 0x2600) == 0)
    {
      return v4;
    }
  }

  v5 = *(a1 + 4);
  if ((v5 - 100) < 0x25)
  {
    goto LABEL_13;
  }

  v6 = 0;
  v4 = 0xFFFFFFFFLL;
  if (v5 > 3)
  {
    if ((v5 - 6) >= 0xB)
    {
      if (v5 == 4)
      {
        return v4;
      }

      if (v5 == 5)
      {
        puts("TODO: XML_REGEXP_STRING");
        return v4;
      }

      return v6;
    }

LABEL_13:
    v7 = xmlRegCheckCharacterRange(v5, code, 0, 0, *(a1 + 24));
    if (*(a1 + 40))
    {
      return v7 == 0;
    }

    else
    {
      return v7;
    }
  }

  if (v5 == 1)
  {
    return v4;
  }

  if (v5 == 2)
  {
    return *(a1 + 44) == code;
  }

  if (v5 != 3)
  {
    return v6;
  }

  if (*(a1 + 76) < 1)
  {
    return 0;
  }

  v9 = 0;
  v4 = 0;
  do
  {
    v10 = *(*(a1 + 80) + 8 * v9);
    v11 = *v10;
    v12 = xmlRegCheckCharacterRange(*(v10 + 1), code, *(v10 + 2), *(v10 + 3), v10[2]);
    if (v11)
    {
      if (v11 == 2)
      {
        if (v12)
        {
          return 0;
        }
      }

      else
      {
        if (v12)
        {
          return 0;
        }

        v4 = 1;
      }
    }

    else if (v12)
    {
      v4 = 1;
    }

    else
    {
      v4 = v4;
    }

    ++v9;
  }

  while (v9 < *(a1 + 76));
  return v4;
}

uint64_t xmlRegCheckCharacterRange(int a1, int code, int a3, int a4, char *block)
{
  v6 = 0;
  switch(a1)
  {
    case 100:
      return xmlUCSIsCatL(code);
    case 101:
      return xmlUCSIsCatLu(code);
    case 102:
      return xmlUCSIsCatLl(code);
    case 103:
      return xmlUCSIsCatLt(code);
    case 104:
      return xmlUCSIsCatLm(code);
    case 105:
      return xmlUCSIsCatLo(code);
    case 106:
      return xmlUCSIsCatM(code);
    case 107:
      return xmlUCSIsCatMn(code);
    case 108:
      return xmlUCSIsCatMc(code);
    case 109:
      return xmlUCSIsCatMe(code);
    case 110:
      return xmlUCSIsCatN(code);
    case 111:
      return xmlUCSIsCatNd(code);
    case 112:
      return xmlUCSIsCatNl(code);
    case 113:
      return xmlUCSIsCatNo(code);
    case 114:
      return xmlUCSIsCatP(code);
    case 115:
      return xmlUCSIsCatPc(code);
    case 116:
      return xmlUCSIsCatPd(code);
    case 117:
      return xmlUCSIsCatPs(code);
    case 118:
      return xmlUCSIsCatPe(code);
    case 119:
      return xmlUCSIsCatPi(code);
    case 120:
      return xmlUCSIsCatPf(code);
    case 121:
      return xmlUCSIsCatPo(code);
    case 122:
      return xmlUCSIsCatZ(code);
    case 123:
      return xmlUCSIsCatZs(code);
    case 124:
      return xmlUCSIsCatZl(code);
    case 125:
      return xmlUCSIsCatZp(code);
    case 126:
      return xmlUCSIsCatS(code);
    case 127:
      return xmlUCSIsCatSm(code);
    case 128:
      return xmlUCSIsCatSc(code);
    case 129:
      return xmlUCSIsCatSk(code);
    case 130:
      return xmlUCSIsCatSo(code);
    case 131:
      return xmlUCSIsCatC(code);
    case 132:
      return xmlUCSIsCatCc(code);
    case 133:
      return xmlUCSIsCatCf(code);
    case 134:
      return xmlUCSIsCatCo(code);
    case 135:
      return v6;
    case 136:
      return xmlUCSIsBlock(code, block);
    default:
      v8 = a1 - 1;
      result = 0xFFFFFFFFLL;
      switch(v8)
      {
        case 0:
        case 2:
        case 3:
        case 4:
          return result;
        case 1:
          return code >= a3 && code <= a4;
        case 5:
          return code != 10 && code != 13;
        case 6:
          goto LABEL_77;
        case 7:
          LODWORD(v6) = 1;
LABEL_77:
          if (code <= 0xD)
          {
            LODWORD(result) = 1;
            if (((1 << code) & 0x2600) != 0)
            {
              goto LABEL_97;
            }
          }

          v11 = code == 32;
          goto LABEL_94;
        case 8:
          goto LABEL_56;
        case 9:
          LODWORD(v6) = 1;
LABEL_56:
          if (code > 255)
          {
            if (xmlCharInRange(code, &xmlIsBaseCharGroup))
            {
              goto LABEL_81;
            }

            LODWORD(result) = 1;
            if (code == 12295 || (code - 19968) < 0x51A6 || (code - 12321) < 9)
            {
              goto LABEL_97;
            }
          }

          else
          {
            LODWORD(result) = 1;
            if ((code - 192) < 0x17 || (code & 0xFFFFFFDF) - 65 < 0x1A || code == 95 || code > 247 || (code - 216) < 0x1F)
            {
              goto LABEL_97;
            }
          }

          v11 = code == 58;
          goto LABEL_94;
        case 10:
          goto LABEL_48;
        case 11:
          LODWORD(v6) = 1;
LABEL_48:
          if (code > 255)
          {
            if (xmlCharInRange(code, &xmlIsBaseCharGroup))
            {
              goto LABEL_81;
            }

            LODWORD(result) = 1;
            if (code == 12295 || (code - 19968) < 0x51A6 || (code - 12321) < 9)
            {
              goto LABEL_97;
            }

            if (xmlCharInRange(code, &xmlIsDigitGroup))
            {
LABEL_81:
              LODWORD(result) = 1;
              goto LABEL_97;
            }
          }

          else
          {
            LODWORD(result) = 1;
            if ((code - 192) < 0x17 || (code & 0xFFFFFFDF) - 65 < 0x1A || (code - 48) < 0xA || code > 247 || (code - 216) < 0x1F)
            {
              goto LABEL_97;
            }
          }

          if ((code - 45) <= 0x32 && ((1 << (code - 45)) & 0x4000000002003) != 0)
          {
            goto LABEL_81;
          }

          if (code < 256)
          {
            v11 = code == 183;
LABEL_94:
            LODWORD(result) = v11;
            goto LABEL_97;
          }

          if (xmlCharInRange(code, &xmlIsCombiningGroup))
          {
            goto LABEL_81;
          }

          LODWORD(result) = xmlCharInRange(code, &xmlIsExtenderGroup) != 0;
LABEL_97:
          if (v6)
          {
            return result == 0;
          }

          else
          {
            return result;
          }

        case 12:
          goto LABEL_89;
        case 13:
          LODWORD(v6) = 1;
LABEL_89:
          LODWORD(result) = xmlUCSIsCatNd(code);
          goto LABEL_97;
        case 14:
          LODWORD(v6) = 1;
          goto LABEL_73;
        case 15:
LABEL_73:
          LODWORD(result) = xmlUCSIsCatP(code);
          if (!result)
          {
            LODWORD(result) = xmlUCSIsCatZ(code);
            if (!result)
            {
              LODWORD(result) = xmlUCSIsCatC(code);
            }
          }

          goto LABEL_97;
        default:
          return v6;
      }
  }
}

uint64_t xmlFARecurseDeterminism(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (*(a2 + 8) == 2)
  {
    return 1;
  }

  v3 = *(a2 + 24);
  if (v3 < 1)
  {
    return 1;
  }

  v5 = 0;
  v6 = 24 * v3;
  v7 = 1;
  do
  {
    v8 = *(a2 + 32);
    if (!*(v8 + v5))
    {
      v9 = *(v8 + v5 + 8);
      if ((v9 & 0x80000000) == 0)
      {
        *(a2 + 8) = 2;
        if (xmlFARecurseDeterminism(a1, *(*(a1 + 80) + 8 * v9)))
        {
          v7 = v7;
        }

        else
        {
          v7 = 0;
        }
      }
    }

    v5 += 24;
  }

  while (v6 != v5);
  return v7;
}

uint64_t xmlFAFinishRecurseDeterminism(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 8) == 2)
    {
      *(a2 + 8) = 0;
      v3 = *(a2 + 24);
      if (v3 >= 1)
      {
        v4 = result;
        v5 = 0;
        v6 = 24 * v3;
        do
        {
          v7 = *(a2 + 32);
          if (!*(v7 + v5))
          {
            v8 = *(v7 + v5 + 8);
            if ((v8 & 0x80000000) == 0)
            {
              result = xmlFAFinishRecurseDeterminism(v4, *(*(v4 + 80) + 8 * v8));
            }
          }

          v5 += 24;
        }

        while (v6 != v5);
      }
    }
  }

  return result;
}

void xmlRegFreeRange(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

_OWORD *xmlRegCopyAtom(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x60uLL, 0x10A00409A880DBFuLL);
  v5 = v4;
  if (v4)
  {
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    *(v4 + 4) = *(a2 + 4);
    v6 = *(a2 + 76);
    if (v6 >= 1)
    {
      v7 = malloc_type_malloc(8 * v6, 0x2004093837F09uLL);
      *(v5 + 10) = v7;
      if (v7)
      {
        if (*(a2 + 76) >= 1)
        {
          v8 = 0;
          do
          {
            v9 = *(*(a2 + 80) + 8 * v8);
            if (v9)
            {
              v10 = xmlRegNewRange(a1, *v9, *(v9 + 4), *(v9 + 8), *(v9 + 12));
              if (!v10)
              {
                goto LABEL_12;
              }

              v11 = *(v9 + 16);
              if (!v11)
              {
                goto LABEL_12;
              }

              v12 = xmlStrdup(v11);
              v10[2] = v12;
              if (v12)
              {
                goto LABEL_12;
              }

              xmlRegexpErrMemory(a1, "allocating range");
              xmlRegFreeRange(v10);
            }

            v10 = 0;
LABEL_12:
            *(*(v5 + 10) + 8 * v8) = v10;
            if (!*(*(v5 + 10) + 8 * v8))
            {
              goto LABEL_17;
            }

            *(v5 + 19) = ++v8;
          }

          while (v8 < *(a2 + 76));
        }
      }

      else
      {
        xmlRegexpErrMemory(a1, "copying atom");
LABEL_17:
        xmlRegFreeAtom(v5);
        return 0;
      }
    }
  }

  else
  {
    xmlRegexpErrMemory(a1, "copying atom");
  }

  return v5;
}

int xmlIsXHTML(const xmlChar *systemID, const xmlChar *publicID)
{
  if (!(systemID | publicID))
  {
    return -1;
  }

  return publicID && (xmlStrEqual(publicID, "-//W3C//DTD XHTML 1.0 Strict//EN") || xmlStrEqual(publicID, "-//W3C//DTD XHTML 1.0 Frameset//EN") || xmlStrEqual(publicID, "-//W3C//DTD XHTML 1.0 Transitional//EN")) || systemID && (xmlStrEqual(systemID, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd") || xmlStrEqual(systemID, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd") || xmlStrEqual(systemID, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"));
}

xmlBuffer *xmlBufDumpNotationTable(uint64x2_t *a1, xmlNotationTable *a2)
{
  result = xmlBufferCreate();
  if (result)
  {
    v5 = result;
    xmlDumpNotationTable(result, a2);

    return xmlBufMergeBuffer(a1, v5);
  }

  return result;
}

xmlBuffer *xmlBufDumpElementDecl(uint64x2_t *a1, xmlElement *a2)
{
  result = xmlBufferCreate();
  if (result)
  {
    v5 = result;
    xmlDumpElementDecl(result, a2);

    return xmlBufMergeBuffer(a1, v5);
  }

  return result;
}

xmlBuffer *xmlBufDumpAttributeDecl(uint64x2_t *a1, xmlAttribute *a2)
{
  result = xmlBufferCreate();
  if (result)
  {
    v5 = result;
    xmlDumpAttributeDecl(result, a2);

    return xmlBufMergeBuffer(a1, v5);
  }

  return result;
}

xmlBuffer *xmlBufDumpEntityDecl(uint64x2_t *a1, xmlEntity *a2)
{
  result = xmlBufferCreate();
  if (result)
  {
    v5 = result;
    xmlDumpEntityDecl(result, a2);

    return xmlBufMergeBuffer(a1, v5);
  }

  return result;
}

uint64_t xmlNsListDumpOutput(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = xmlNsDumpOutput(v3, v2, 0);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t xmlNsDumpOutput(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (a2)
    {
      if (*(a2 + 8) == 18)
      {
        if (*(a2 + 16))
        {
          v5 = result;
          result = xmlStrEqual(*(a2 + 24), "xml");
          if (!result)
          {
            if (a3 && *(a3 + 56) == 2)
            {
              xmlOutputBufferWriteWSNonSig(a3, 2);
            }

            else
            {
              xmlOutputBufferWrite(v5, 1, " ");
            }

            if (*(a2 + 24))
            {
              xmlOutputBufferWrite(v5, 6, "xmlns:");
              xmlOutputBufferWriteString(v5, *(a2 + 24));
            }

            else
            {
              xmlOutputBufferWrite(v5, 5, "xmlns");
            }

            xmlOutputBufferWrite(v5, 1, "=");
            buffer = v5->buffer;
            v7 = *(a2 + 16);

            return xmlBufWriteQuotedString(buffer, v7);
          }
        }
      }
    }
  }

  return result;
}

xmlSaveCtxtPtr xmlSaveToFd(int fd, const char *encoding, int options)
{
  v4 = xmlNewSaveCtxt(encoding, options);
  v5 = v4;
  if (v4)
  {
    v6 = xmlOutputBufferCreateFd(fd, *(v4 + 4));
    *(v5 + 5) = v6;
    if (!v6)
    {
      xmlCharEncCloseFunc(*(v5 + 4));
      xmlFreeSaveCtxt(v5);
      return 0;
    }
  }

  return v5;
}

int *xmlNewSaveCtxt(const char *a1, int a2)
{
  v4 = malloc_type_malloc(0x98uLL, 0x10F0040C1B2DE51uLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 18) = 0;
    *(v4 + 7) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 5) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    if (a1)
    {
      CharEncodingHandler = xmlFindCharEncodingHandler(a1);
      *(v5 + 4) = CharEncodingHandler;
      if (!CharEncodingHandler)
      {
        __xmlSimpleError(7u, 1403, 0, "unknown encoding %s\n", a1);
        xmlFreeSaveCtxt(v5);
        return 0;
      }

      *(v5 + 3) = xmlStrdup(a1);
      *(v5 + 17) = 0;
    }

    xmlSaveCtxtInit(v5);
    if ((((a2 & 4) == 0) & ((v5[12] & 4u) >> 2)) != 0)
    {
      v7 = a2 | 4;
    }

    else
    {
      v7 = a2;
    }

    v5[12] = v7;
    if (v7)
    {
      v8 = 1;
      goto LABEL_13;
    }

    if ((v7 & 0x80) != 0)
    {
      v8 = 2;
LABEL_13:
      v5[14] = v8;
    }
  }

  else
  {
    __xmlSimpleError(7u, 2, 0, 0, "creating saving context");
  }

  return v5;
}

void xmlFreeSaveCtxt(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    xmlOutputBufferClose(v3);
  }

  free(a1);
}

xmlSaveCtxtPtr xmlSaveToFilename(const char *filename, const char *encoding, int options)
{
  v4 = xmlNewSaveCtxt(encoding, options);
  v5 = v4;
  if (v4)
  {
    v6 = xmlOutputBufferCreateFilename(filename, *(v4 + 4), 0);
    *(v5 + 5) = v6;
    if (!v6)
    {
      xmlCharEncCloseFunc(*(v5 + 4));
      xmlFreeSaveCtxt(v5);
      return 0;
    }
  }

  return v5;
}

xmlSaveCtxtPtr xmlSaveToBuffer(xmlBufferPtr buffer, const char *encoding, int options)
{
  v4 = xmlNewSaveCtxt(encoding, options);
  v5 = v4;
  if (v4)
  {
    v6 = xmlOutputBufferCreateBuffer(buffer, *(v4 + 4));
    *(v5 + 5) = v6;
    if (!v6)
    {
      xmlCharEncCloseFunc(*(v5 + 4));
      xmlFreeSaveCtxt(v5);
      return 0;
    }
  }

  return v5;
}

xmlSaveCtxtPtr xmlSaveToIO(xmlOutputWriteCallback iowrite, xmlOutputCloseCallback ioclose, void *ioctx, const char *encoding, int options)
{
  v8 = xmlNewSaveCtxt(encoding, options);
  v9 = v8;
  if (v8)
  {
    IO = xmlOutputBufferCreateIO(iowrite, ioclose, ioctx, *(v8 + 4));
    *(v9 + 5) = IO;
    if (!IO)
    {
      xmlCharEncCloseFunc(*(v9 + 4));
      xmlFreeSaveCtxt(v9);
      return 0;
    }
  }

  return v9;
}

uint64_t xmlSaveDoc(xmlSaveCtxtPtr ctxt, xmlDocPtr doc)
{
  result = -1;
  if (ctxt)
  {
    if (doc)
    {
      return xmlDocContentDumpOutput(ctxt, doc);
    }
  }

  return result;
}

uint64_t xmlDocContentDumpOutput(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 112);
  v5 = *(a1 + 24);
  v25 = *(a1 + 136);
  v6 = *(a1 + 40);
  xmlInitParser();
  v7 = *(a2 + 8);
  if ((v7 | 4) != 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a2 + 112) = v8;
    MetaEncoding = v5;
  }

  else if (*(a2 + 112))
  {
    MetaEncoding = *(a2 + 112);
  }

  else
  {
    MetaEncoding = v5;
  }

  if (((*(a1 + 48) & 0x30) != 0 || v7 != 13) && (*(a1 + 48) & 0x40) == 0)
  {
    if (v7 != 9 && (*(a1 + 48) & 0x30) == 0)
    {
      result = 0;
LABEL_67:
      *(a2 + 112) = v4;
      return result;
    }

    v13 = xmlParseCharEncoding(MetaEncoding);
    v14 = 0;
    if (MetaEncoding && !v5)
    {
      if (*(v6 + 24) || *(v6 + 40) || (*(a1 + 48) & 2) != 0)
      {
        v14 = 0;
      }

      else
      {
        if (v13 <= XML_CHAR_ENCODING_ASCII && ((1 << v13) & 0x400003) != 0)
        {
          v14 = 0;
        }

        else
        {
          if ((xmlSaveSwitchEncoding(a1, MetaEncoding) & 0x80000000) != 0)
          {
LABEL_70:
            result = 0xFFFFFFFFLL;
            goto LABEL_67;
          }

          v14 = 1;
        }

        if (*(a1 + 136) == xmlEscapeEntities)
        {
          *(a1 + 136) = 0;
        }

        if (*(a1 + 144) == xmlEscapeEntities)
        {
          *(a1 + 144) = 0;
        }
      }
    }

    v15 = *(a1 + 48);
    if ((v15 & 2) != 0)
    {
LABEL_54:
      v21 = (v15 >> 4) & 1;
      if ((v15 & 8) == 0)
      {
        IntSubset = xmlGetIntSubset(a2);
        if (IntSubset)
        {
          IsXHTML = xmlIsXHTML(IntSubset->SystemID, IntSubset->ExternalID);
          v21 = IsXHTML & ~(IsXHTML >> 31);
        }
      }

      for (i = *(a2 + 24); i; i = *(i + 48))
      {
        *(a1 + 52) = 0;
        if (v21)
        {
          xhtmlNodeDumpOutput(a1, i);
        }

        else
        {
          xmlNodeDumpOutputInternal(a1, i);
        }

        if ((*(i + 8) - 19) >= 2)
        {
          xmlOutputBufferWrite(v6, 1, "\n");
        }
      }

      result = 0;
      if (v14 && !v5)
      {
        xmlSaveClearEncoding(a1);
        result = 0;
        *(a1 + 136) = v25;
      }

      goto LABEL_67;
    }

    xmlOutputBufferWrite(v6, 14, "<?xml version=");
    v16 = *(a2 + 104);
    if (v16)
    {
      xmlBufWriteQuotedString(*(v6 + 32), v16);
      if (!MetaEncoding)
      {
        goto LABEL_46;
      }
    }

    else
    {
      xmlOutputBufferWrite(v6, 5, "1.0");
      if (!MetaEncoding)
      {
LABEL_46:
        v17 = *(a2 + 76);
        if (v17 == 1)
        {
          v18 = " standalone=yes";
          v19 = v6;
          v20 = 17;
        }

        else
        {
          if (v17)
          {
LABEL_53:
            xmlOutputBufferWrite(v6, 3, "?>\n");
            v15 = *(a1 + 48);
            goto LABEL_54;
          }

          v18 = " standalone=no";
          v19 = v6;
          v20 = 16;
        }

        xmlOutputBufferWrite(v19, v20, v18);
        goto LABEL_53;
      }
    }

    xmlOutputBufferWrite(v6, 10, " encoding=");
    xmlBufWriteQuotedString(*(v6 + 32), MetaEncoding);
    goto LABEL_46;
  }

  if (MetaEncoding)
  {
    htmlSetMetaEncoding(a2, MetaEncoding);
  }

  else
  {
    MetaEncoding = htmlGetMetaEncoding(a2);
  }

  if (!MetaEncoding)
  {
    MetaEncoding = "HTML";
  }

  if (!v5 && !*(v6 + 24) && !*(v6 + 40) && (xmlSaveSwitchEncoding(a1, MetaEncoding) & 0x80000000) != 0)
  {
    goto LABEL_70;
  }

  htmlDocContentDumpFormatOutput(v6, a2, MetaEncoding, *(a1 + 48) & 1);
  result = 0;
  if (*(a1 + 24))
  {
    goto LABEL_67;
  }

  return result;
}

uint64_t xmlSaveTree(xmlSaveCtxtPtr ctxt, xmlNodePtr node)
{
  result = -1;
  if (ctxt && node)
  {
    v5 = *(ctxt + 12);
    if ((v5 & 0x10) != 0)
    {
      xhtmlNodeDumpOutput(ctxt, node);
      return 0;
    }

    if (node->type == XML_NAMESPACE_DECL || (doc = node->doc) == 0)
    {
      if ((v5 & 0x40) == 0)
      {
LABEL_10:
        xmlNodeDumpOutputInternal(ctxt, node);
        return 0;
      }
    }

    else
    {
      v7 = doc->type == XML_HTML_DOCUMENT_NODE;
      v8 = (v5 >> 5) & 1;
      if (!v7)
      {
        LOBYTE(v8) = 1;
      }

      if (v5 & 0x40) == 0 && (v8)
      {
        goto LABEL_10;
      }
    }

    v9 = *(ctxt + 3);
    v10 = *(ctxt + 5);
    xmlInitParser();
    v11 = node->doc;
    if (v11)
    {
      encoding = v11->encoding;
      v13 = *(ctxt + 3);
      if (v13)
      {
        v11->encoding = v13;
        MetaEncoding = v9;
      }

      else if (encoding)
      {
        MetaEncoding = v11->encoding;
      }

      else
      {
        MetaEncoding = v9;
      }

      if (MetaEncoding)
      {
        htmlSetMetaEncoding(v11, MetaEncoding);
      }

      else
      {
        MetaEncoding = htmlGetMetaEncoding(v11);
      }
    }

    else
    {
      encoding = 0;
      MetaEncoding = v9;
    }

    if (!MetaEncoding)
    {
      MetaEncoding = "HTML";
    }

    if (v9 || v10->encoder || v10->conv)
    {
      v15 = 0;
    }

    else
    {
      if ((xmlSaveSwitchEncoding(ctxt, MetaEncoding) & 0x80000000) != 0)
      {
        goto LABEL_35;
      }

      v15 = 1;
    }

    htmlNodeDumpFormatOutput(v10, v11, node, MetaEncoding, *(ctxt + 12) & 1);
    if (!v9)
    {
      if (v15)
      {
        xmlSaveClearEncoding(ctxt);
      }
    }

    if (!v11)
    {
      return 0;
    }

LABEL_35:
    result = 0;
    v11->encoding = encoding;
  }

  return result;
}

uint64_t xhtmlNodeDumpOutput(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = 0;
  v83 = *(result + 56);
  v5 = "\n";
  v6 = "</";
  v7 = ">";
  v8 = ":";
  v9 = *(result + 40);
  v10 = a2;
LABEL_2:
  while (2)
  {
    while (1)
    {
      v11 = v10;
      v12 = *(v10 + 8);
      if (v12 != 11)
      {
        break;
      }

      v10 = *(v11 + 24);
      if (!v10)
      {
        goto LABEL_193;
      }
    }

    switch(v12)
    {
      case 1:
        if (v11 != v2 && *(v3 + 56) == 1 && *__xmlIndentTreeOutput())
        {
          v29 = *(v3 + 52);
          if (v29 >= *(v3 + 124))
          {
            v29 = *(v3 + 124);
          }

          xmlOutputBufferWrite(v9, v29 * *(v3 + 128), (v3 + 60));
        }

        xmlOutputBufferWrite(v9, 1, "<");
        v30 = *(v11 + 72);
        if (v30)
        {
          v31 = *(v30 + 24);
          if (v31)
          {
            xmlOutputBufferWriteString(v9, v31);
            xmlOutputBufferWrite(v9, 1, v8);
          }
        }

        xmlOutputBufferWriteString(v9, *(v11 + 16));
        for (i = *(v11 + 96); i; i = *i)
        {
          xmlNsDumpOutput(*(v3 + 40), i, v3);
        }

        if (xmlStrEqual(*(v11 + 16), "html") && !*(v11 + 72) && !*(v11 + 96))
        {
          xmlOutputBufferWriteString(v9, " xmlns=http://www.w3.org/1999/xhtml");
        }

        v33 = *(v11 + 88);
        if (!v33)
        {
          goto LABEL_103;
        }

        v34 = 0;
        v35 = 0;
        out = *(v3 + 40);
        v77 = 0;
        v78 = *(v33 + 40);
        v79 = 0;
        while (1)
        {
          if (!*(v33 + 72))
          {
            if (xmlStrEqual(*(v33 + 16), "id"))
            {
              v34 = v33;
              goto LABEL_63;
            }

            if (!*(v33 + 72))
            {
              if (xmlStrEqual(*(v33 + 16), "name"))
              {
                v79 = v33;
                goto LABEL_63;
              }

              if (!*(v33 + 72))
              {
                if (xmlStrEqual(*(v33 + 16), "lang"))
                {
                  v77 = v33;
                  goto LABEL_63;
                }

                if (!*(v33 + 72))
                {
LABEL_53:
                  v36 = *(v33 + 24);
                  if (!v36 || (v37 = *(v36 + 80)) == 0 || !*v37)
                  {
                    if (htmlIsBooleanAttr(*(v33 + 16)))
                    {
                      v38 = *(v33 + 24);
                      if (v38)
                      {
                        xmlFreeNode(v38);
                      }

                      v39 = xmlNewText(*(v33 + 16));
                      *(v33 + 24) = v39;
                      if (v39)
                      {
                        v39->parent = v33;
                      }
                    }
                  }

                  goto LABEL_63;
                }
              }
            }
          }

          if (xmlStrEqual(*(v33 + 16), "lang") && xmlStrEqual(*(*(v33 + 72) + 24), "xml"))
          {
            v35 = v33;
          }

          else if (!*(v33 + 72))
          {
            goto LABEL_53;
          }

LABEL_63:
          xmlAttrDumpOutput(v3, v33);
          v33 = *(v33 + 48);
          if (!v33)
          {
            if (v79)
            {
              if (!v34)
              {
                if (v78)
                {
                  v40 = *(v78 + 16);
                  if (v40)
                  {
                    if (xmlStrEqual(v40, "a") || xmlStrEqual(*(v78 + 16), "p") || xmlStrEqual(*(v78 + 16), "div") || xmlStrEqual(*(v78 + 16), "img") || xmlStrEqual(*(v78 + 16), "map") || xmlStrEqual(*(v78 + 16), "applet") || xmlStrEqual(*(v78 + 16), "form") || xmlStrEqual(*(v78 + 16), "frame") || xmlStrEqual(*(v78 + 16), "iframe"))
                    {
                      xmlOutputBufferWrite(out, 5, " id=");
                      xmlAttrSerializeContent(out, v79);
                      xmlOutputBufferWrite(out, 1, "");
                    }
                  }
                }
              }
            }

            v41 = v77;
            if (v77 && !v35)
            {
              xmlOutputBufferWrite(out, 11, " xml:lang=");
              goto LABEL_102;
            }

            if (v35 && !v77)
            {
              xmlOutputBufferWrite(out, 7, " lang=");
              v41 = v35;
LABEL_102:
              xmlAttrSerializeContent(out, v41);
              xmlOutputBufferWrite(out, 1, "");
            }

LABEL_103:
            v42 = *(v11 + 40);
            if (v42 && *(v42 + 40) == *(v11 + 64) && xmlStrEqual(*(v11 + 16), "head") && xmlStrEqual(*(*(v11 + 40) + 16), "html"))
            {
              v43 = (v11 + 24);
              v49 = *(v11 + 24);
              if (v49)
              {
                v80 = (v11 + 24);
                do
                {
                  if (xmlStrEqual(v49->name, "meta"))
                  {
                    Prop = xmlGetProp(v49, "http-equiv");
                    if (Prop)
                    {
                      v55 = Prop;
                      v56 = xmlStrcasecmp(Prop, "Content-Type");
                      free(v55);
                      if (!v56)
                      {
                        goto LABEL_105;
                      }
                    }
                  }

                  v49 = v49->next;
                }

                while (v49);
                v43 = (v11 + 24);
                if (*v80)
                {
                  xmlOutputBufferWrite(v9, 1, v7);
                  v6 = "</";
                  v8 = ":";
                  if (*(v3 + 56) == 1)
                  {
                    xmlOutputBufferWrite(v9, 1, v5);
                    if (*__xmlIndentTreeOutput())
                    {
                      v57 = *(v3 + 52);
                      if (v57 < *(v3 + 124))
                      {
                        v58 = v57 + 1;
                      }

                      else
                      {
                        v58 = *(v3 + 124);
                      }

                      xmlOutputBufferWrite(v9, v58 * *(v3 + 128), (v3 + 60));
                    }
                  }

                  xmlOutputBufferWriteString(v9, "<meta http-equiv=Content-Type content=text/html; charset=");
                  v59 = *(v3 + 24);
                  if (v59)
                  {
                    xmlOutputBufferWriteString(v9, v59);
                  }

                  else
                  {
                    xmlOutputBufferWrite(v9, 5, "UTF-8");
                  }

                  result = xmlOutputBufferWrite(v9, 4, " />");
LABEL_107:
                  v44 = v80;
                  if (*(v3 + 56) == 1)
                  {
                    v45 = *v80;
                    if (*v80)
                    {
                      while (1)
                      {
                        v46 = *(v45 + 8);
                        if (v46 == 5 || v46 == 3)
                        {
                          break;
                        }

                        v45 = *(v45 + 48);
                        if (!v45)
                        {
                          goto LABEL_114;
                        }
                      }

                      *(v3 + 56) = 0;
                      v4 = v11;
                    }

                    else
                    {
LABEL_114:
                      result = xmlOutputBufferWrite(v9, 1, v5);
                      v44 = v80;
                    }
                  }

                  v63 = *(v3 + 52);
                  if ((v63 & 0x80000000) == 0)
                  {
                    *(v3 + 52) = v63 + 1;
                  }

                  v10 = *v44;
                  goto LABEL_2;
                }

                LODWORD(v49) = 0;
              }

              v48 = 1;
            }

            else
            {
LABEL_105:
              v43 = (v11 + 24);
              if (*(v11 + 24))
              {
                v80 = (v11 + 24);
                result = xmlOutputBufferWrite(v9, 1, v7);
                v6 = "</";
                v8 = ":";
                goto LABEL_107;
              }

              v48 = 0;
              LODWORD(v49) = 1;
            }

            v8 = ":";
            v50 = *(v11 + 72);
            if (!v50)
            {
              if (*(v11 + 8) == 1)
              {
                goto LABEL_140;
              }

              goto LABEL_176;
            }

            if (*(v50 + 24))
            {
              goto LABEL_176;
            }

            if (*(v11 + 8) != 1)
            {
              goto LABEL_176;
            }

            v81 = v48;
            v51 = v49;
            v49 = v43;
            v52 = xmlStrEqual(*(v50 + 16), "http://www.w3.org/1999/xhtml");
            v53 = v49;
            LODWORD(v49) = v51;
            v48 = v81;
            if (!v52 || v53->_private)
            {
              goto LABEL_176;
            }

LABEL_140:
            v60 = *(v11 + 16);
            v61 = *v60;
            if (v61 <= 0x67)
            {
              if (*v60 > 0x62u)
              {
                if (v61 == 99)
                {
                  v62 = "col";
                }

                else
                {
                  if (v61 != 102)
                  {
                    goto LABEL_176;
                  }

                  v62 = "frame";
                }

                goto LABEL_173;
              }

              if (v61 == 97)
              {
                v62 = "area";
                goto LABEL_173;
              }

              if (v61 != 98)
              {
                goto LABEL_176;
              }

              if (!xmlStrEqual(v60, "br") && !xmlStrEqual(*(v11 + 16), "base"))
              {
                v60 = *(v11 + 16);
                v62 = "basefont";
                goto LABEL_173;
              }
            }

            else
            {
              if (*v60 > 0x6Bu)
              {
                switch(v61)
                {
                  case 'l':
                    v62 = "link";
                    break;
                  case 'm':
                    v62 = "meta";
                    break;
                  case 'p':
                    v62 = "param";
                    break;
                  default:
LABEL_176:
                    xmlOutputBufferWrite(v9, 1, v7);
                    if (v48)
                    {
                      if (*(v3 + 56) == 1)
                      {
                        xmlOutputBufferWrite(v9, 1, v5);
                        if (*__xmlIndentTreeOutput())
                        {
                          v65 = *(v3 + 52);
                          if (v65 < *(v3 + 124))
                          {
                            v66 = v65 + 1;
                          }

                          else
                          {
                            v66 = *(v3 + 124);
                          }

                          xmlOutputBufferWrite(v9, v66 * *(v3 + 128), (v3 + 60));
                        }
                      }

                      xmlOutputBufferWriteString(v9, "<meta http-equiv=Content-Type content=text/html; charset=");
                      v67 = *(v3 + 24);
                      if (v67)
                      {
                        xmlOutputBufferWriteString(v9, v67);
                      }

                      else
                      {
                        xmlOutputBufferWrite(v9, 5, "UTF-8");
                      }

                      xmlOutputBufferWrite(v9, 4, " />");
                      if (*(v3 + 56) == 1)
                      {
                        xmlOutputBufferWrite(v9, 1, v5);
                      }
                    }

                    v6 = "</";
                    xmlOutputBufferWrite(v9, 2, "</");
                    v68 = *(v11 + 72);
                    if (v68)
                    {
                      v69 = *(v68 + 24);
                      if (v69)
                      {
                        xmlOutputBufferWriteString(v9, v69);
                        xmlOutputBufferWrite(v9, 1, ":");
                      }
                    }

                    xmlOutputBufferWriteString(v9, *(v11 + 16));
                    v13 = v9;
                    v14 = 1;
                    v15 = v7;
LABEL_192:
                    result = xmlOutputBufferWrite(v13, v14, v15);
                    goto LABEL_193;
                }

LABEL_173:
                v64 = xmlStrEqual(v60, v62) != 0;
LABEL_174:
                if ((v49 & v64) != 1)
                {
                  goto LABEL_176;
                }

                result = xmlOutputBufferWrite(v9, 3, " />");
                v6 = "</";
                goto LABEL_193;
              }

              if (v61 == 104)
              {
                v62 = "hr";
                goto LABEL_173;
              }

              if (v61 != 105)
              {
                goto LABEL_176;
              }

              if (!xmlStrEqual(v60, "img") && !xmlStrEqual(*(v11 + 16), "input"))
              {
                v60 = *(v11 + 16);
                v62 = "isindex";
                goto LABEL_173;
              }
            }

            v64 = 1;
            goto LABEL_174;
          }
        }

      case 2:
        result = xmlAttrDumpOutput(v3, v11);
        goto LABEL_193;
      case 3:
        v25 = *(v11 + 80);
        if (v25)
        {
          if ("text" != "textnoenc" && *(v11 + 16) == "textnoenc")
          {
            result = xmlOutputBufferWriteString(v9, v25);
          }

          else
          {
            result = xmlOutputBufferWriteEscape(v9, v25, *(v3 + 136));
          }
        }

        goto LABEL_193;
      case 4:
        v16 = *(v11 + 80);
        if (!v16 || (v17 = *v16, v18 = *(v11 + 80), v82 = v2, !*v16))
        {
          v13 = v9;
          v14 = 12;
          v15 = "<![CDATA[]]>";
          goto LABEL_192;
        }

        while (2)
        {
          if (v17 == 93)
          {
            if (v18[1] == 93)
            {
              v19 = v8;
              v20 = v5;
              v21 = v7;
              v22 = v6;
              v23 = v18 + 2;
              if (v18[2] == 62)
              {
                xmlOutputBufferWrite(v9, 9, "<![CDATA[");
                xmlOutputBufferWrite(v9, v23 - v16, v16);
                result = xmlOutputBufferWrite(v9, 3, "]]>");
                v16 = v23;
                v18 = v23;
              }

              v6 = v22;
              v7 = v21;
              v5 = v20;
              v8 = v19;
              v2 = v82;
            }

LABEL_18:
            v24 = *++v18;
            v17 = v24;
            continue;
          }

          break;
        }

        if (v17)
        {
          goto LABEL_18;
        }

        if (v16 != v18)
        {
          xmlOutputBufferWrite(v9, 9, "<![CDATA[");
          xmlOutputBufferWriteString(v9, v16);
          v13 = v9;
          v14 = 3;
          v15 = "]]>";
          goto LABEL_192;
        }

LABEL_193:
        if (v11 != v2)
        {
          while (1)
          {
            if (*(v3 + 56) == 1)
            {
              result = xmlOutputBufferWrite(v9, 1, v5);
            }

            v10 = *(v11 + 48);
            if (v10)
            {
              break;
            }

            v11 = *(v11 + 40);
            if (v11)
            {
              if (*(v11 + 8) == 1)
              {
                v70 = *(v3 + 52);
                v71 = __OFSUB__(v70, 1);
                v72 = v70 - 1;
                if (v72 < 0 == v71)
                {
                  *(v3 + 52) = v72;
                }

                if (*__xmlIndentTreeOutput() && *(v3 + 56) == 1)
                {
                  v73 = *(v3 + 52);
                  if (v73 >= *(v3 + 124))
                  {
                    v73 = *(v3 + 124);
                  }

                  xmlOutputBufferWrite(v9, v73 * *(v3 + 128), (v3 + 60));
                }

                xmlOutputBufferWrite(v9, 2, v6);
                v74 = *(v11 + 72);
                if (v74)
                {
                  v75 = *(v74 + 24);
                  if (v75)
                  {
                    xmlOutputBufferWriteString(v9, v75);
                    xmlOutputBufferWrite(v9, 1, v8);
                  }
                }

                xmlOutputBufferWriteString(v9, *(v11 + 16));
                result = xmlOutputBufferWrite(v9, 1, v7);
                if (v11 == v4)
                {
                  v4 = 0;
                  *(v3 + 56) = v83;
                }
              }

              if (v11 != v2)
              {
                continue;
              }
            }

            return result;
          }

          continue;
        }

        return result;
      case 5:
        xmlOutputBufferWrite(v9, 1, "&");
        xmlOutputBufferWriteString(v9, *(v11 + 16));
        v13 = v9;
        v14 = 1;
        v15 = ";";
        goto LABEL_192;
      case 7:
        v27 = v6;
        v28 = *(v11 + 80);
        xmlOutputBufferWrite(v9, 2, "<?");
        xmlOutputBufferWriteString(v9, *(v11 + 16));
        if (v28 && *(v11 + 80))
        {
          xmlOutputBufferWrite(v9, 1, " ");
          xmlOutputBufferWriteString(v9, *(v11 + 80));
        }

        result = xmlOutputBufferWrite(v9, 2, "?>");
        v6 = v27;
        goto LABEL_193;
      case 8:
        if (!*(v11 + 80))
        {
          goto LABEL_193;
        }

        xmlOutputBufferWrite(v9, 4, "<!--");
        xmlOutputBufferWriteString(v9, *(v11 + 80));
        v13 = v9;
        v14 = 3;
        v15 = "-->";
        goto LABEL_192;
      case 9:
      case 13:
        result = xmlDocContentDumpOutput(v3, v11);
        goto LABEL_193;
      case 14:
        result = xmlDtdDumpOutput(v3, v11);
        goto LABEL_193;
      case 15:
        result = xmlBufDumpElementDecl(*(v9 + 32), v11);
        goto LABEL_193;
      case 16:
        result = xmlBufDumpAttributeDecl(*(v9 + 32), v11);
        goto LABEL_193;
      case 17:
        result = xmlBufDumpEntityDecl(*(v9 + 32), v11);
        goto LABEL_193;
      case 18:
        result = xmlNsDumpOutput(*(v3 + 40), v11, v3);
        goto LABEL_193;
      default:
        goto LABEL_193;
    }
  }
}

int xmlSaveFlush(xmlSaveCtxtPtr ctxt)
{
  if (ctxt && (v1 = *(ctxt + 5)) != 0)
  {
    return xmlOutputBufferFlush(v1);
  }

  else
  {
    return -1;
  }
}

int xmlSaveClose(xmlSaveCtxtPtr ctxt)
{
  if (!ctxt)
  {
    return -1;
  }

  v2 = *(ctxt + 5);
  if (v2)
  {
    v3 = xmlOutputBufferFlush(v2);
  }

  else
  {
    v3 = -1;
  }

  xmlFreeSaveCtxt(ctxt);
  return v3;
}

int xmlSaveSetEscape(xmlSaveCtxtPtr ctxt, xmlCharEncodingOutputFunc escape)
{
  if (!ctxt)
  {
    return -1;
  }

  result = 0;
  *(ctxt + 17) = escape;
  return result;
}

int xmlSaveSetAttrEscape(xmlSaveCtxtPtr ctxt, xmlCharEncodingOutputFunc escape)
{
  if (!ctxt)
  {
    return -1;
  }

  result = 0;
  *(ctxt + 18) = escape;
  return result;
}

uint64_t xmlSerializeHexCharRef(uint64_t a1, unsigned int a2)
{
  *a1 = 8998;
  *(a1 + 2) = 120;
  if (a2 >= 16)
  {
    if (a2 >> 20)
    {
      v3 = a1 + 8;
    }

    else
    {
      v3 = a1 + 7;
    }

    if (HIWORD(a2))
    {
      v2 = v3;
    }

    else
    {
      v2 = a1 + 6;
    }

    if (a2 <= 0xFFF)
    {
      v2 = a1 + 5;
    }

    if (a2 <= 0xFF)
    {
      v2 = a1 + 4;
    }
  }

  else
  {
    v2 = a1 + 3;
    if (a2 < 1)
    {
      goto LABEL_16;
    }
  }

  v4 = v2;
  do
  {
    *v4-- = a0123456789abcd_0[a2 & 0xF];
    v5 = a2 > 0xF;
    a2 >>= 4;
  }

  while (v5);
LABEL_16:
  *(v2 + 1) = 59;
  return v2 + 2;
}

void xmlAttrSerializeTxtContent(xmlBufferPtr buf, xmlDocPtr doc, xmlAttrPtr attr, const xmlChar *string)
{
  if (buf)
  {
    if (string)
    {
      v7 = xmlBufFromBuffer(buf);
      if (v7)
      {
        v8 = v7;
        xmlBufAttrSerializeTxtContent(v7, doc, attr, string);

        xmlBufBackToBuffer(v8);
      }
    }
  }
}

void xmlElemDump(FILE *f, xmlDocPtr doc, xmlNodePtr cur)
{
  xmlInitParser();
  if (cur)
  {
    File = xmlOutputBufferCreateFile(f, 0);
    if (File)
    {
      v7 = File;
      if (doc && doc->type == XML_HTML_DOCUMENT_NODE)
      {
        htmlNodeDumpOutput(File, doc, cur, 0);
      }

      else
      {
        xmlNodeDumpOutput(File, doc, cur, 0, 1, 0);
      }

      xmlOutputBufferClose(v7);
    }
  }
}

void xmlDocDumpFormatMemoryEnc(xmlDocPtr out_doc, xmlChar **doc_txt_ptr, int *doc_txt_len, const char *txt_encoding, int format)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!doc_txt_ptr)
  {
    if (doc_txt_len)
    {
      *doc_txt_len = 0;
    }

    goto LABEL_30;
  }

  encoding = txt_encoding;
  *doc_txt_ptr = 0;
  if (doc_txt_len)
  {
    *doc_txt_len = 0;
  }

  if (!out_doc)
  {
    goto LABEL_30;
  }

  if (!txt_encoding)
  {
    encoding = out_doc->encoding;
    if (!encoding)
    {
      CharEncodingHandler = 0;
LABEL_12:
      v16 = xmlAllocOutputBuffer(CharEncodingHandler);
      if (!v16)
      {
        v23 = *MEMORY[0x1E69E9840];
        v15 = "creating buffer";
        v13 = 2;
        v14 = 0;
        v12 = 0;
        goto LABEL_17;
      }

      v17 = v16;
      v29 = 0;
      v31 = 0u;
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v26 = 0u;
      v27 = 0;
      v30 = v16;
      DWORD2(v31) = format != 0;
      v28 = encoding;
      xmlSaveCtxtInit(&v26);
      LODWORD(v31) = v31 | 0x20;
      xmlDocContentDumpOutput(&v26, out_doc);
      xmlOutputBufferFlush(v17);
      conv = v17->conv;
      if (conv)
      {
        v19 = xmlBufUse(conv);
        v20 = v19;
        if (doc_txt_len)
        {
          *doc_txt_len = v19;
          v21 = xmlBufContent(v17->conv);
          v20 = 0;
          v22 = *doc_txt_len;
        }

        else
        {
          v21 = xmlBufContent(v17->conv);
          v22 = v20;
        }
      }

      else
      {
        v24 = xmlBufUse(v17->buffer);
        v20 = v24;
        if (doc_txt_len)
        {
          *doc_txt_len = v24;
          v21 = xmlBufContent(v17->buffer);
          v20 = 0;
          v22 = *doc_txt_len;
        }

        else
        {
          v21 = xmlBufContent(v17->buffer);
          v22 = v20;
        }
      }

      *doc_txt_ptr = xmlStrndup(v21, v22);
      xmlOutputBufferClose(v17);
      if (!*doc_txt_ptr)
      {
        if (doc_txt_len)
        {
          if (*doc_txt_len >= 1)
          {
            *doc_txt_len = 0;
LABEL_29:
            __xmlSimpleError(7u, 2, 0, 0, "creating output");
          }
        }

        else if (v20 > 0)
        {
          goto LABEL_29;
        }
      }

LABEL_30:
      v25 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  CharEncodingHandler = xmlFindCharEncodingHandler(encoding);
  if (CharEncodingHandler)
  {
    goto LABEL_12;
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = "unknown encoding %s\n";
  v13 = 1403;
  v14 = out_doc;
  v15 = encoding;
LABEL_17:

  __xmlSimpleError(7u, v13, v14, v12, v15);
}

int xmlDocFormatDump(FILE *f, xmlDocPtr cur, int format)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!cur)
  {
    goto LABEL_8;
  }

  encoding = cur->encoding;
  if (encoding)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(cur->encoding);
    if (!CharEncodingHandler)
    {
      free(cur->encoding);
      encoding = 0;
      CharEncodingHandler = 0;
      cur->encoding = 0;
    }
  }

  else
  {
    CharEncodingHandler = 0;
  }

  File = xmlOutputBufferCreateFile(f, CharEncodingHandler);
  if (File)
  {
    v9 = File;
    v15 = 0;
    v17 = 0u;
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v12 = 0u;
    v13 = 0;
    v16 = File;
    DWORD2(v17) = format != 0;
    v14 = encoding;
    xmlSaveCtxtInit(&v12);
    LODWORD(v17) = v17 | 0x20;
    xmlDocContentDumpOutput(&v12, cur);
    result = xmlOutputBufferClose(v9);
  }

  else
  {
LABEL_8:
    result = -1;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlSaveFileTo(xmlOutputBufferPtr buf, xmlDocPtr cur, const char *encoding)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!buf)
  {
    goto LABEL_5;
  }

  if (!cur)
  {
    xmlOutputBufferClose(buf);
LABEL_5:
    result = -1;
    goto LABEL_6;
  }

  v10 = 0;
  v12 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v7 = 0u;
  v8 = 0;
  v11 = buf;
  DWORD2(v12) = 0;
  v9 = encoding;
  xmlSaveCtxtInit(&v7);
  LODWORD(v12) = v12 | 0x20;
  xmlDocContentDumpOutput(&v7, cur);
  result = xmlOutputBufferClose(buf);
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlSaveFormatFileTo(xmlOutputBufferPtr buf, xmlDocPtr cur, const char *encoding, int format)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!buf)
  {
    goto LABEL_6;
  }

  if (!cur || (cur->type | 4) != 0xD)
  {
    xmlOutputBufferClose(buf);
LABEL_6:
    result = -1;
    goto LABEL_7;
  }

  v11 = 0;
  v13 = 0u;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v8 = 0u;
  v9 = 0;
  v12 = buf;
  DWORD2(v13) = format != 0;
  v10 = encoding;
  xmlSaveCtxtInit(&v8);
  LODWORD(v13) = v13 | 0x20;
  xmlDocContentDumpOutput(&v8, cur);
  result = xmlOutputBufferClose(buf);
LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

int xmlSaveFormatFileEnc(const char *filename, xmlDocPtr cur, const char *encoding, int format)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!cur)
  {
    goto LABEL_11;
  }

  v5 = encoding;
  if (encoding || (v5 = cur->encoding) != 0)
  {
    CharEncodingHandler = xmlFindCharEncodingHandler(v5);
    if (!CharEncodingHandler)
    {
LABEL_11:
      result = -1;
      goto LABEL_12;
    }
  }

  else
  {
    CharEncodingHandler = 0;
  }

  compression = cur->compression;
  if (compression < 0)
  {
    compression = xmlGetCompressMode();
    cur->compression = compression;
  }

  v10 = xmlOutputBufferCreateFilename(filename, CharEncodingHandler, compression);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v17 = 0;
  v19 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v14 = 0u;
  v15 = 0;
  v18 = v10;
  DWORD2(v19) = format != 0;
  v16 = v5;
  xmlSaveCtxtInit(&v14);
  LODWORD(v19) = v19 | 0x20;
  xmlDocContentDumpOutput(&v14, cur);
  result = xmlOutputBufferClose(v11);
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

xmlBufPtr xmlOutputBufferWriteWSNonSig(xmlBufPtr result, int a2)
{
  if (result)
  {
    v2 = result;
    result = *(result + 5);
    if (result)
    {
      result = xmlOutputBufferWrite(result, 1, "\n");
      v4 = *(v2 + 13) + a2;
      if (v4 >= 1)
      {
        v5 = 0;
        v6 = *(v2 + 31);
        do
        {
          v7 = v4 - v5;
          if (v7 < v6)
          {
            v6 = v7;
          }

          result = xmlOutputBufferWrite(*(v2 + 5), v6 * *(v2 + 32), v2 + 60);
          v6 = *(v2 + 31);
          v5 += v6;
          v4 = *(v2 + 13) + a2;
        }

        while (v5 < v4);
      }
    }
  }

  return result;
}

uint64_t xmlSaveSwitchEncoding(uint64_t a1, char *name)
{
  if (!name)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (*(v2 + 24) || *(v2 + 40))
  {
    return 0;
  }

  CharEncodingHandler = xmlFindCharEncodingHandler(name);
  *(v2 + 24) = CharEncodingHandler;
  if (CharEncodingHandler)
  {
    v6 = xmlBufCreate();
    *(v2 + 40) = v6;
    if (v6)
    {
      xmlCharEncOutput(v2, 1);
      return 0;
    }

    xmlCharEncCloseFunc(*(v2 + 24));
    v9 = "creating encoding buffer";
    v8 = 2;
    v7 = 0;
  }

  else
  {
    v7 = "unknown encoding %s\n";
    v8 = 1403;
    v9 = name;
  }

  __xmlSimpleError(7u, v8, 0, v7, v9);
  return 0xFFFFFFFFLL;
}

uint64_t xmlEscapeEntities(_BYTE *a1, int *a2, unsigned __int8 *a3, int *a4)
{
  v5 = a3;
  v7 = a1;
  v8 = *a2;
  v9 = *a4;
  v10 = v9 < 1 || v8 < 1;
  LODWORD(v11) = a3;
  LODWORD(v12) = a1;
  if (v10)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  v14 = &a1[v8];
  v15 = &a3[v9];
  v12 = a1;
  v11 = a3;
  while (1)
  {
    v16 = *v11;
    switch(v16)
    {
      case '&':
        if ((v14 - v12) < 5)
        {
          goto LABEL_6;
        }

        *v12 = 1886216486;
        v12[4] = 59;
        v12 += 5;
        goto LABEL_17;
      case '>':
        if ((v14 - v12) < 4)
        {
          goto LABEL_6;
        }

        *v12 = 997484326;
        v12 += 4;
        goto LABEL_17;
      case '<':
        if ((v14 - v12) < 4)
        {
          goto LABEL_6;
        }

        *v12 = 997485606;
        v12 += 4;
LABEL_17:
        ++v11;
        goto LABEL_27;
    }

    if (v16 > 31 || v16 - 9 <= 1)
    {
      ++v11;
      *v12++ = v16;
      goto LABEL_27;
    }

    if ((v16 & 0x80) != 0)
    {
      if ((v14 - v12) < 11)
      {
        goto LABEL_6;
      }

      if (v16 <= 0xBF)
      {
        v20 = "string is not in UTF-8\n";
        v21 = 1400;
        goto LABEL_51;
      }

      if (v16 > 0xDF)
      {
        if (v16 > 0xEF)
        {
          if (v16 > 0xF7)
          {
            goto LABEL_49;
          }

          if ((v15 - v11) < 4)
          {
            goto LABEL_6;
          }

          v17 = ((v11[2] & 0x3F) << 6) | ((v11[1] & 0x3F | ((v16 & 7) << 6)) << 12);
          v18 = 3;
          v19 = 4;
        }

        else
        {
          if ((v15 - v11) < 3)
          {
            goto LABEL_6;
          }

          v17 = (v11[1] & 0x3F | ((v16 & 0xF) << 6)) << 6;
          v18 = 2;
          v19 = 3;
        }
      }

      else
      {
        if ((v15 - v11) < 2)
        {
          goto LABEL_6;
        }

        v17 = (v16 & 0x1F) << 6;
        v18 = 1;
        v19 = 2;
      }

      v16 = v17 | v11[v18] & 0x3F;
      v11 += v19;
      if (v16 > 0xFF)
      {
        if (v16 >> 11 >= 0x1B && (v16 - 57344) >> 1 >= 0xFFF && v16 - 0x10000 >= 0x100000)
        {
LABEL_49:
          v20 = "invalid character value\n";
          v21 = 1401;
LABEL_51:
          __xmlSimpleError(7u, v21, 0, v20, 0);
          goto LABEL_53;
        }
      }

      else if (v16 <= 0x1F && (v16 > 0xD || ((1 << v16) & 0x2600) == 0))
      {
        goto LABEL_49;
      }

      goto LABEL_26;
    }

    if (v16 > 0xD || ((1 << v16) & 0x2600) == 0)
    {
      break;
    }

    if ((v14 - v12) < 6)
    {
      goto LABEL_6;
    }

    ++v11;
LABEL_26:
    v12 = xmlSerializeHexCharRef(v12, v16);
LABEL_27:
    if (v11 >= v15 || v12 >= v14)
    {
      goto LABEL_6;
    }
  }

  v22 = *__xmlGenericError();
  v23 = __xmlGenericErrorContext();
  v22(*v23, "xmlEscapeEntities : char out of range\n");
LABEL_53:
  LODWORD(v11) = v11 + 1;
  result = 0xFFFFFFFFLL;
LABEL_7:
  *a2 = v12 - v7;
  *a4 = v11 - v5;
  return result;
}

void xmlSaveClearEncoding(uint64_t a1)
{
  v1 = *(a1 + 40);
  xmlOutputBufferFlush(v1);
  xmlCharEncCloseFunc(*(v1 + 24));
  xmlBufFree(*(v1 + 40));
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
}

uint64_t xmlDtdDumpOutput(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = *(result + 40);
  if (!v4)
  {
    return result;
  }

  xmlOutputBufferWrite(*(result + 40), 10, "<!DOCTYPE ");
  xmlOutputBufferWriteString(v4, *(a2 + 16));
  if (*(a2 + 104))
  {
    xmlOutputBufferWrite(v4, 8, " PUBLIC ");
    v5 = (v4 + 32);
    xmlBufWriteQuotedString(*(v4 + 32), *(a2 + 104));
    xmlOutputBufferWrite(v4, 1, " ");
    v6 = (a2 + 112);
  }

  else
  {
    v6 = (a2 + 112);
    if (!*(a2 + 112))
    {
      goto LABEL_10;
    }

    xmlOutputBufferWrite(v4, 8, " SYSTEM ");
    v5 = (v4 + 32);
  }

  xmlBufWriteQuotedString(*v5, *v6);
LABEL_10:
  if (*(a2 + 96) || *(a2 + 80) || *(a2 + 88) || *(a2 + 72) || *(a2 + 120))
  {
    xmlOutputBufferWrite(v4, 3, " [\n");
    v7 = *(a2 + 72);
    if (v7)
    {
      v8 = *(a2 + 64);
      if (!v8 || *(v8 + 80) == a2)
      {
        xmlBufDumpNotationTable(*(v4 + 32), v7);
      }
    }

    v9 = *(v3 + 52);
    *(v3 + 52) = 0xFFFFFFFFLL;
    for (i = *(a2 + 24); i; i = *(i + 48))
    {
      xmlNodeDumpOutputInternal(v3, i);
    }

    *(v3 + 52) = v9;
    v11 = "]>";
    v12 = v4;
    v13 = 2;
  }

  else
  {
    v11 = ">";
    v12 = v4;
    v13 = 1;
  }

  return xmlOutputBufferWrite(v12, v13, v11);
}

xmlSchemaFacetPtr xmlSchemaNewFacet(void)
{
  result = malloc_type_malloc(0x48uLL, 0x1070040FC6FB3EFuLL);
  if (result)
  {
    result->regexp = 0;
    *&result->annot = 0u;
    *&result->fixed = 0u;
    *&result->type = 0u;
    *&result->value = 0u;
  }

  return result;
}

void xmlSchemaFreeWildcard(xmlSchemaWildcardPtr wildcard)
{
  if (wildcard)
  {
    annot = wildcard->annot;
    if (annot)
    {
      xmlSchemaFreeAnnot(annot);
    }

    nsSet = wildcard->nsSet;
    if (nsSet)
    {
      do
      {
        next = nsSet->next;
        free(nsSet);
        nsSet = next;
      }

      while (next);
    }

    negNsSet = wildcard->negNsSet;
    if (negNsSet)
    {
      free(negNsSet);
    }

    free(wildcard);
  }
}

void xmlSchemaFreeAnnot(void **a1)
{
  if (a1)
  {
    v1 = *a1;
    free(a1);
    if (v1)
    {
      do
      {
        v2 = *v1;
        free(v1);
        v1 = v2;
      }

      while (v2);
    }
  }
}

void xmlSchemaFreeFacet(xmlSchemaFacetPtr facet)
{
  if (facet)
  {
    val = facet->val;
    if (val)
    {
      xmlSchemaFreeValue(val);
    }

    regexp = facet->regexp;
    if (regexp)
    {
      xmlRegFreeRegexp(regexp);
    }

    annot = facet->annot;
    if (annot)
    {
      xmlSchemaFreeAnnot(annot);
    }

    free(facet);
  }
}

void xmlSchemaFreeType(xmlSchemaTypePtr type)
{
  if (type)
  {
    annot = type->annot;
    if (annot)
    {
      xmlSchemaFreeAnnot(annot);
    }

    facets = type->facets;
    if (facets)
    {
      do
      {
        next = facets->next;
        xmlSchemaFreeFacet(facets);
        facets = next;
      }

      while (next);
    }

    attrUses = type->attrUses;
    if (attrUses)
    {
      xmlSchemaItemListFree(attrUses);
    }

    memberTypes = type->memberTypes;
    if (memberTypes)
    {
      do
      {
        v7 = memberTypes->next;
        free(memberTypes);
        memberTypes = v7;
      }

      while (v7);
    }

    facetSet = type->facetSet;
    if (facetSet)
    {
      do
      {
        v9 = facetSet->next;
        free(facetSet);
        facetSet = v9;
      }

      while (v9);
    }

    contModel = type->contModel;
    if (contModel)
    {
      xmlRegFreeRegexp(contModel);
    }

    free(type);
  }
}

void xmlSchemaItemListFree(void **a1)
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

void xmlSchemaFree(xmlSchemaPtr schema)
{
  if (schema)
  {
    if (schema->volatiles)
    {
      v2 = *__xmlGenericError();
      v3 = __xmlGenericErrorContext();
      v2(*v3, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 4196);
    }

    notaDecl = schema->notaDecl;
    if (notaDecl)
    {
      xmlHashFree(notaDecl, 0);
    }

    attrDecl = schema->attrDecl;
    if (attrDecl)
    {
      xmlHashFree(attrDecl, 0);
    }

    attrgrpDecl = schema->attrgrpDecl;
    if (attrgrpDecl)
    {
      xmlHashFree(attrgrpDecl, 0);
    }

    elemDecl = schema->elemDecl;
    if (elemDecl)
    {
      xmlHashFree(elemDecl, 0);
    }

    typeDecl = schema->typeDecl;
    if (typeDecl)
    {
      xmlHashFree(typeDecl, 0);
    }

    groupDecl = schema->groupDecl;
    if (groupDecl)
    {
      xmlHashFree(groupDecl, 0);
    }

    idcDef = schema->idcDef;
    if (idcDef)
    {
      xmlHashFree(idcDef, 0);
    }

    schemasImports = schema->schemasImports;
    if (schemasImports)
    {
      xmlHashFree(schemasImports, xmlSchemaBucketFreeEntry);
    }

    includes = schema->includes;
    if (includes)
    {
      if (includes[2] >= 1)
      {
        v13 = 0;
        do
        {
          xmlSchemaBucketFree(*(*includes + 8 * v13++));
        }

        while (v13 < includes[2]);
      }

      xmlSchemaItemListFree(includes);
    }

    annot = schema->annot;
    if (annot)
    {
      xmlSchemaFreeAnnot(annot);
    }

    xmlDictFree(schema->dict);

    free(schema);
  }
}

void xmlSchemaBucketFree(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      xmlSchemaComponentListFree(v2);
      xmlSchemaItemListFree(*(a1 + 8));
    }

    v3 = *(a1 + 9);
    if (v3)
    {
      xmlSchemaComponentListFree(v3);
      xmlSchemaItemListFree(*(a1 + 9));
    }

    v4 = *(a1 + 5);
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

    if (!*(a1 + 15))
    {
      v6 = *(a1 + 4);
      if (v6)
      {
        xmlFreeDoc(v6);
      }
    }

    if (*a1 == 1)
    {
      v7 = *(a1 + 10);
      if (v7)
      {
        xmlSchemaFree(v7);
      }
    }

    free(a1);
  }
}

void xmlSchemaDump(FILE *output, xmlSchemaPtr schema)
{
  if (output)
  {
    if (schema)
    {
      fwrite("Schemas: ", 9uLL, 1uLL, output);
      if (schema->name)
      {
        fprintf(output, "%s, ", schema->name);
      }

      else
      {
        fwrite("no name, ", 9uLL, 1uLL, output);
      }

      targetNamespace = schema->targetNamespace;
      if (targetNamespace)
      {
        fputs(targetNamespace, output);
      }

      else
      {
        fwrite("no target namespace", 0x13uLL, 1uLL, output);
      }

      fputc(10, output);
      annot = schema->annot;
      if (annot)
      {
        xmlSchemaAnnotDump(output, annot);
      }

      xmlHashScan(schema->typeDecl, xmlSchemaTypeDumpEntry, output);
      elemDecl = schema->elemDecl;

      xmlHashScanFull(elemDecl, xmlSchemaElementDump, output);
    }

    else
    {

      fwrite("Schemas: NULL\n", 0xEuLL, 1uLL, output);
    }
  }
}

void xmlSchemaAnnotDump(FILE *a1, uint64_t a2)
{
  Content = xmlNodeGetContent(*(a2 + 8));
  if (Content)
  {
    v4 = Content;
    fprintf(a1, "  Annot: %s\n", Content);

    free(v4);
  }

  else
  {

    fwrite("  Annot: empty\n", 0xFuLL, 1uLL, a1);
  }
}

void xmlSchemaElementDump(uint64_t a1, FILE *__stream, uint64_t a3, const char *a4)
{
  if (!a1)
  {
    return;
  }

  fwrite("Element", 7uLL, 1uLL, __stream);
  if ((*(a1 + 88) & 2) != 0)
  {
    fwrite(" (global)", 9uLL, 1uLL, __stream);
  }

  fprintf(__stream, ": '%s' ", *(a1 + 16));
  if (a4)
  {
    fprintf(__stream, "ns '%s'", a4);
  }

  fputc(10, __stream);
  if ((*(a1 + 88) & 0x1D) != 0)
  {
    fwrite("  props: ", 9uLL, 1uLL, __stream);
    v7 = *(a1 + 88);
    if ((v7 & 8) != 0)
    {
      fwrite("[fixed] ", 8uLL, 1uLL, __stream);
      v7 = *(a1 + 88);
      if ((v7 & 4) == 0)
      {
LABEL_9:
        if ((v7 & 0x10) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if ((v7 & 4) == 0)
    {
      goto LABEL_9;
    }

    fwrite("[default] ", 0xAuLL, 1uLL, __stream);
    v7 = *(a1 + 88);
    if ((v7 & 0x10) == 0)
    {
LABEL_10:
      if ((v7 & 1) == 0)
      {
LABEL_12:
        fputc(10, __stream);
        goto LABEL_13;
      }

LABEL_11:
      fwrite("[nillable] ", 0xBuLL, 1uLL, __stream);
      goto LABEL_12;
    }

LABEL_22:
    fwrite("[abstract] ", 0xBuLL, 1uLL, __stream);
    if ((*(a1 + 88) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (*(a1 + 144))
  {
    fprintf(__stream, "  value: '%s'\n", *(a1 + 144));
  }

  if (*(a1 + 104))
  {
    fprintf(__stream, "  type: '%s' ", *(a1 + 104));
    if (*(a1 + 112))
    {
      fprintf(__stream, "ns '%s'\n", *(a1 + 112));
    }

    else
    {
      fputc(10, __stream);
    }
  }

  else
  {
    v8 = *(a1 + 56);
    if (v8)
    {
      xmlSchemaTypeDump(v8, __stream);
    }
  }

  if (*(a1 + 120))
  {
    fprintf(__stream, "  substitutionGroup: '%s' ", *(a1 + 120));
    if (*(a1 + 128))
    {
      fprintf(__stream, "ns '%s'\n", *(a1 + 128));
    }

    else
    {

      fputc(10, __stream);
    }
  }
}

xmlSchemaParserCtxtPtr xmlSchemaNewParserCtxt(const char *URL)
{
  if (!URL)
  {
    return 0;
  }

  v2 = xmlSchemaParserCtxtCreate();
  if (v2)
  {
    v3 = xmlDictCreate();
    *(v2 + 19) = v3;
    *(v2 + 10) = xmlDictLookup(v3, URL, -1);
  }

  return v2;
}

void *xmlSchemaParserCtxtCreate()
{
  v0 = malloc_type_malloc(0xF0uLL, 0x10F0040DCDB168EuLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 14) = 0u;
    *(v0 + 212) = 0u;
    *(v0 + 196) = 0u;
    *(v0 + 180) = 0u;
    *(v0 + 164) = 0u;
    *(v0 + 148) = 0u;
    *(v0 + 132) = 0u;
    *(v0 + 116) = 0u;
    *(v0 + 100) = 0u;
    *(v0 + 84) = 0u;
    *(v0 + 68) = 0u;
    *(v0 + 52) = 0u;
    *(v0 + 36) = 0u;
    *(v0 + 20) = 0u;
    *(v0 + 4) = 0u;
    *v0 = 1;
    v2 = xmlSchemaItemListCreate();
    v1[29] = v2;
    if (!v2)
    {
      free(v1);
      return 0;
    }
  }

  else
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema parser context");
  }

  return v1;
}

xmlSchemaParserCtxtPtr xmlSchemaNewMemParserCtxt(const char *buffer, int size)
{
  v2 = 0;
  if (buffer)
  {
    if (size >= 1)
    {
      v5 = xmlSchemaParserCtxtCreate();
      v2 = v5;
      if (v5)
      {
        *(v5 + 13) = buffer;
        *(v5 + 28) = size;
        *(v5 + 19) = xmlDictCreate();
      }
    }
  }

  return v2;
}

xmlSchemaParserCtxtPtr xmlSchemaNewDocParserCtxt(xmlDocPtr doc)
{
  if (!doc)
  {
    return 0;
  }

  v2 = xmlSchemaParserCtxtCreate();
  v3 = v2;
  if (v2)
  {
    v2[11] = doc;
    v2[19] = xmlDictCreate();
    *(v3 + 24) = 1;
  }

  return v3;
}

void xmlSchemaFreeParserCtxt(xmlSchemaParserCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 11);
    if (v2 && !*(ctxt + 24))
    {
      xmlFreeDoc(v2);
    }

    v3 = *(ctxt + 22);
    if (v3)
    {
      xmlSchemaFreeValidCtxt(v3);
    }

    if (*(ctxt + 14))
    {
      v4 = *(ctxt + 6);
      if (v4)
      {
        xmlSchemaConstructionCtxtFree(v4);
        *(ctxt + 6) = 0;
        *(ctxt + 14) = 0;
      }
    }

    v5 = *(ctxt + 29);
    if (v5)
    {
      xmlSchemaItemListFree(v5);
    }

    xmlDictFree(*(ctxt + 19));

    free(ctxt);
  }
}

void xmlSchemaFreeValidCtxt(xmlSchemaValidCtxtPtr ctxt)
{
  if (ctxt)
  {
    v2 = *(ctxt + 17);
    if (v2)
    {
      xmlSchemaFreeValue(v2);
    }

    v3 = *(ctxt + 20);
    if (v3)
    {
      xmlSchemaFreeParserCtxt(v3);
    }

    v4 = *(ctxt + 29);
    if (v4)
    {
      if (*(ctxt + 60) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = *(*(ctxt + 29) + 8 * v5);
          free(v6[1]);
          free(v6);
          ++v5;
        }

        while (v5 < *(ctxt + 60));
        v4 = *(ctxt + 29);
      }

      free(v4);
    }

    v7 = *(ctxt + 31);
    if (v7)
    {
      if (*(ctxt + 64) >= 1)
      {
        v8 = 0;
        do
        {
          xmlSchemaIDCFreeKey(*(*(ctxt + 31) + 8 * v8++));
        }

        while (v8 < *(ctxt + 64));
        v7 = *(ctxt + 31);
      }

      free(v7);
    }

    v9 = *(ctxt + 26);
    if (v9)
    {
      xmlSchemaFreeIDCStateObjList(v9);
      *(ctxt + 26) = 0;
    }

    v10 = *(ctxt + 27);
    if (v10)
    {
      xmlSchemaFreeIDCStateObjList(v10);
      *(ctxt + 27) = 0;
    }

    v11 = *(ctxt + 25);
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

    if (*(ctxt + 36))
    {
      if (*(ctxt + 74))
      {
        xmlSchemaClearAttrInfos(ctxt);
      }

      if (*(ctxt + 75) >= 1)
      {
        v13 = 0;
        do
        {
          free(*(*(ctxt + 36) + 8 * v13++));
        }

        while (v13 < *(ctxt + 75));
      }

      free(*(ctxt + 36));
    }

    v14 = *(ctxt + 22);
    if (v14)
    {
      if (*(ctxt + 46) >= 1)
      {
        v15 = 0;
        while (1)
        {
          v14 = *(ctxt + 22);
          v16 = v14[v15];
          if (!v16)
          {
            break;
          }

          xmlSchemaClearElemInfo(ctxt, v16);
          free(v16);
          if (++v15 >= *(ctxt + 46))
          {
            v14 = *(ctxt + 22);
            break;
          }
        }
      }

      free(v14);
    }

    v17 = *(ctxt + 39);
    if (v17)
    {
      xmlSchemaItemListFree(v17);
    }

    v18 = *(ctxt + 34);
    if (v18)
    {
      xmlDictFree(v18);
    }

    v19 = *(ctxt + 12);
    if (v19)
    {
      free(v19);
    }

    free(ctxt);
  }
}

void xmlSchemaConstructionCtxtFree(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    xmlSchemaItemListFree(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    xmlSchemaItemListFree(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    xmlHashFree(v4, xmlSchemaSubstGroupFreeEntry);
  }

  v5 = a1[7];
  if (v5)
  {
    do
    {
      v6 = *v5;
      free(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[2];
  if (v7)
  {
    xmlDictFree(v7);
  }

  free(a1);
}

int xmlSchemaCheckFacet(xmlSchemaFacetPtr facet, xmlSchemaTypePtr typeDecl, xmlSchemaParserCtxtPtr ctxt, const xmlChar *name)
{
  v4 = -1;
  if (!facet)
  {
    return v4;
  }

  baseType = typeDecl;
  if (!typeDecl)
  {
    return v4;
  }

  v4 = 0;
  type = facet->type;
  if (facet->type > XML_SCHEMA_FACET_FRACTIONDIGITS)
  {
    if (type > XML_SCHEMA_FACET_WHITESPACE)
    {
      v9 = ctxt;
      if (type - 1009 >= 3)
      {
        goto LABEL_61;
      }

      goto LABEL_24;
    }

    if (type == XML_SCHEMA_FACET_PATTERN)
    {
      v26 = xmlRegexpCompile(facet->value);
      facet->regexp = v26;
      if (v26)
      {
        v4 = 0;
      }

      else
      {
        v4 = 1756;
      }

      if (!ctxt)
      {
        goto LABEL_60;
      }

      v9 = ctxt;
      if (v26)
      {
        goto LABEL_61;
      }

      node = facet->node;
      value = facet->value;
      v29 = "The value '%s' of the facet 'pattern' is not a valid regular expression";
      v4 = 1756;
      v30 = ctxt;
      v31 = 1756;
    }

    else
    {
      if (type == XML_SCHEMA_FACET_ENUMERATION)
      {
        goto LABEL_5;
      }

      v9 = ctxt;
      if (type != XML_SCHEMA_FACET_WHITESPACE)
      {
        goto LABEL_61;
      }

      if (xmlStrEqual(facet->value, "preserve"))
      {
        v4 = 0;
        v14 = 1;
LABEL_59:
        facet->whitespace = v14;
        goto LABEL_60;
      }

      if (xmlStrEqual(facet->value, "replace"))
      {
        v4 = 0;
        v14 = 2;
        goto LABEL_59;
      }

      if (xmlStrEqual(facet->value, "collapse"))
      {
        v4 = 0;
        v14 = 3;
        goto LABEL_59;
      }

      if (!ctxt)
      {
        return 1717;
      }

      node = facet->node;
      value = facet->value;
      v29 = "The value '%s' of the facet 'whitespace' is not valid";
      v4 = 1717;
      v30 = ctxt;
      v31 = 1717;
    }

    xmlSchemaCustomErr4(v30, v31, node, baseType, v29, value, 0, 0, 0);
    return v4;
  }

  if (type - 1000 >= 4)
  {
    if (type == XML_SCHEMA_FACET_TOTALDIGITS)
    {
      v15 = XML_SCHEMAS_PINTEGER;
      goto LABEL_25;
    }

    v9 = ctxt;
    if (type != XML_SCHEMA_FACET_FRACTIONDIGITS)
    {
      goto LABEL_61;
    }

LABEL_24:
    v15 = XML_SCHEMAS_NNINTEGER;
LABEL_25:
    BuiltInType = xmlSchemaGetBuiltInType(v15);
    v17 = xmlSchemaValidatePredefinedType(BuiltInType, facet->value, &facet->val);
    if (v17)
    {
      if (v17 < 0)
      {
        if (!ctxt)
        {
          return -1;
        }

        v25 = "validating facet value";
LABEL_49:
        xmlSchemaInternalErr2(ctxt, "xmlSchemaCheckFacet", v25, 0);
        return -1;
      }

      if (ctxt)
      {
        v18 = facet->node;
        v19 = facet->value;
        v20 = facet->type;
        v21 = xmlSchemaFacetTypeToString(v20);
        if (v20 == XML_SCHEMA_FACET_TOTALDIGITS)
        {
          v22 = "positiveInteger";
        }

        else
        {
          v22 = "nonNegativeInteger";
        }

        v4 = 1717;
        xmlSchemaCustomErr4(ctxt, 1717, v18, baseType, "The value '%s' of the facet '%s' is not a valid '%s'", v19, v21, v22, 0);
        return v4;
      }

      return 1717;
    }

    v4 = 0;
LABEL_60:
    v9 = ctxt;
    goto LABEL_61;
  }

LABEL_5:
  if (typeDecl->type != XML_SCHEMA_TYPE_BASIC)
  {
    baseType = typeDecl->baseType;
    if (!baseType)
    {
      v25 = "a type user derived type has no base type";
      goto LABEL_49;
    }
  }

  v9 = ctxt;
  if (!ctxt)
  {
    v9 = xmlSchemaNewParserCtxt("*");
    if (!v9)
    {
      return -1;
    }
  }

  v10 = xmlSchemaVCheckCVCSimpleType(v9, facet->node, baseType, facet->value, &facet->val, 1u, 1, 0);
  if (v10)
  {
    if ((v10 & 0x80000000) == 0)
    {
      if (ctxt)
      {
        v36 = 0;
        v11 = facet->node;
        v12 = facet->value;
        v13 = xmlSchemaFormatQName(&v36, baseType->targetNamespace, baseType->name);
        xmlSchemaCustomErr4(v9, 1717, v11, facet, "The value '%s' of the facet does not validate against the base type '%s'", v12, v13, 0, 0);
        if (v36)
        {
          free(v36);
        }

        return 1717;
      }

      v4 = 1717;
      goto LABEL_61;
    }

    if (ctxt)
    {
      v32 = facet->node;
      v33 = facet->value;
      v34 = xmlSchemaFacetTypeToString(facet->type);
      xmlSchemaCustomErr4(v9, 3069, v32, 0, "Internal error: xmlSchemaCheckFacet, failed to validate the value '%s' of the facet '%s' against the base type", v33, v34, 0, 0);
    }

    else
    {
      xmlSchemaFreeParserCtxt(v9);
    }

    return -1;
  }

  if (!facet->val)
  {
    if (ctxt)
    {
      xmlSchemaInternalErr2(v9, "xmlSchemaCheckFacet", "value was not computed", 0);
    }

    v23 = *__xmlGenericError();
    v24 = __xmlGenericErrorContext();
    v23(*v24, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 18903);
  }

  v4 = 0;
LABEL_61:
  if (!ctxt && v9)
  {
    xmlSchemaFreeParserCtxt(v9);
  }

  return v4;
}

uint64_t xmlSchemaVCheckCVCSimpleType(uint64_t a1, xmlNode *a2, uint64_t a3, xmlChar *a4, xmlSchemaValPtr *a5, unsigned int a6, int a7, int a8)
{
  val = 0;
  if (a5)
  {
    if (*a5)
    {
      xmlSchemaFreeValue(*a5);
      *a5 = 0;
    }

    v14 = 1;
  }

  else
  {
    v14 = (*(a3 + 90) >> 5) & 1;
  }

  v81 = v14;
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = "";
  }

  v16 = *a3;
  if (*a3 != 1 || *(a3 + 160) != 46)
  {
    v17 = *(a3 + 88);
    if ((v17 & 0x100) == 0)
    {
      if ((v17 & 0x40) == 0)
      {
        if ((v17 & 0x80) != 0)
        {
          v18 = a3;
          while (1)
          {
            if (*v18 != 4)
            {
LABEL_18:
              v20 = "union simple type has no member types";
LABEL_19:
              xmlSchemaInternalErr2(a1, "xmlSchemaVCheckCVCSimpleType", v20, 0);
              goto LABEL_78;
            }

            v19 = *(v18 + 168);
            if (v19)
            {
              break;
            }

            v18 = *(v18 + 112);
            if (!v18)
            {
              goto LABEL_18;
            }
          }

          while (1)
          {
            if (v81)
            {
              p_val = &val;
              v23 = a1;
              v24 = a2;
              v25 = v15;
            }

            else
            {
              v23 = a1;
              v24 = a2;
              v25 = v15;
              p_val = 0;
            }

            v26 = xmlSchemaVCheckCVCSimpleType(v23, v24, v19[1], v25, p_val, 0, 1, 0);
            if (v26 < 1)
            {
              break;
            }

            v19 = *v19;
            if (!v19)
            {
              v21 = 0;
              goto LABEL_132;
            }
          }

          if (v26)
          {
            v20 = "validating members of union simple type";
            goto LABEL_19;
          }

          v71 = *(a3 + 88);
          if ((v71 & 0x8000000) == 0)
          {
            goto LABEL_156;
          }

          if (a8 || !(v71 & 0x10000000 | a7))
          {
            v21 = 0;
          }

          else
          {
            v73 = xmlSchemaNormalizeValue(v19[1], v15);
            v21 = v73;
            if (v73)
            {
              v15 = v73;
            }
          }

          v74 = xmlSchemaValidateFacets(a1, a2, a3, XML_SCHEMAS_UNKNOWN, v15, val, 0, a6);
          if (!v74)
          {
            goto LABEL_150;
          }

          if (v74 < 0)
          {
            v33 = "validating facets of union simple type";
            goto LABEL_75;
          }

LABEL_132:
          if (a6)
          {
            v42 = 1826;
            v43 = a1;
            v44 = 1826;
            goto LABEL_67;
          }

          v42 = 1826;
          goto LABEL_151;
        }

        goto LABEL_156;
      }

      v84 = 0;
      if (a8)
      {
        cur = v15;
        v76 = 0;
        v77 = 0;
      }

      else if (v17 & 0x10000000 | a7)
      {
        v40 = xmlSchemaNormalizeValue(a3, v15);
        v76 = 0;
        v77 = v40;
        if (v40)
        {
          v15 = v40;
        }

        cur = v15;
      }

      else
      {
        cur = v15;
        v77 = 0;
        v76 = 1;
      }

      v50 = 0;
      v51 = 0;
      v52 = *(a3 + 56);
      v53 = cur;
      v79 = a1;
      do
      {
        while (1)
        {
          v54 = *v53;
          if (v54 > 0x20 || ((1 << v54) & 0x100002600) == 0)
          {
            break;
          }

          ++v53;
        }

        v56 = 0;
        while (v54 > 0x20u || ((1 << v54) & 0x100002601) == 0)
        {
          LOBYTE(v54) = v53[++v56];
        }

        if (!v56)
        {
          break;
        }

        v57 = xmlStrndup(v53, v56);
        if (v81)
        {
          v58 = &v84;
          v59 = a1;
          v60 = a2;
          v61 = v52;
          v62 = v57;
        }

        else
        {
          v59 = a1;
          v60 = a2;
          v61 = v52;
          v62 = v57;
          v58 = 0;
        }

        v63 = xmlSchemaVCheckCVCSimpleType(v59, v60, v61, v62, v58, a6, 0, 1);
        if (v57)
        {
          free(v57);
        }

        v64 = v84;
        if (v84)
        {
          if (val)
          {
            xmlSchemaValueAppend(v51, v84);
            v64 = v84;
          }

          else
          {
            val = v84;
          }

          v84 = 0;
          v51 = v64;
        }

        if (v63)
        {
          v21 = v77;
          v65 = cur;
          if ((v63 & 0x80000000) == 0)
          {
LABEL_114:
            if (!a6)
            {
              v42 = 1825;
              goto LABEL_151;
            }

            if (v76)
            {
              v67 = xmlSchemaNormalizeValue(a3, v65);
              v21 = v67;
              if (v67)
              {
                v65 = v67;
              }
            }

            v42 = 1825;
            v43 = v79;
            v44 = 1825;
            v45 = a2;
            v46 = v65;
LABEL_119:
            xmlSchemaSimpleTypeErr(v43, v44, v45, v46, a3);
            goto LABEL_151;
          }

          v33 = "validating an item of list simple type";
LABEL_122:
          v48 = v79;
          goto LABEL_76;
        }

        v53 += v56;
        ++v50;
        a1 = v79;
      }

      while (*v53);
      if ((*(a3 + 91) & 8) == 0)
      {
        v42 = 0;
        v21 = v77;
        goto LABEL_151;
      }

      v65 = cur;
      v66 = xmlSchemaValidateFacets(a1, a2, a3, XML_SCHEMAS_UNKNOWN, cur, val, v50, a6);
      v21 = v77;
      if (v66)
      {
        if ((v66 & 0x80000000) == 0)
        {
          goto LABEL_114;
        }

        v33 = "validating facets of list simple type";
        goto LABEL_122;
      }

LABEL_150:
      v42 = 0;
      goto LABEL_151;
    }
  }

  if (!a8 && (a7 || (*(a3 + 91) & 0x10) != 0))
  {
    v27 = xmlSchemaNormalizeValue(a3, v15);
    v21 = v27;
    if (v27)
    {
      v15 = v27;
    }

    v16 = *a3;
  }

  else
  {
    v21 = 0;
  }

  v28 = a3;
  if (v16 != 1)
  {
    v28 = a3;
    while (1)
    {
      v28 = v28->baseType;
      if (!v28)
      {
        break;
      }

      if (v28->type == XML_SCHEMA_TYPE_BASIC)
      {
        goto LABEL_38;
      }
    }

    v33 = "could not get the built-in type";
    goto LABEL_75;
  }

LABEL_38:
  if (*a1 == 1)
  {
    if (v28->builtInType == 28)
    {
      v30 = *(a1 + 64);
      v31 = 0;
      v32 = a2;
      goto LABEL_48;
    }

LABEL_51:
    if (v81)
    {
      v37 = &val;
      v38 = v28;
      v39 = v15;
    }

    else
    {
      v38 = v28;
      v39 = v15;
      v37 = 0;
    }

    v34 = xmlSchemaValPredefTypeNodeNoNorm(v38, v39, v37, a2);
    goto LABEL_59;
  }

  if (*a1 != 2)
  {
    v35 = *__xmlGenericError();
    v36 = __xmlGenericErrorContext();
    v35(*v36, "Unimplemented block at %s:%d\n", "/Library/Caches/com.apple.xbs/Sources/libxml2/libxml2/xmlschemas.c", 24893);
    if (!v21)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  builtInType = v28->builtInType;
  if (builtInType != 21)
  {
    if (builtInType == 28)
    {
      v30 = *(a1 + 40);
      v31 = a1;
      v32 = 0;
LABEL_48:
      v34 = xmlSchemaValidateNotation(v31, v30, v32, v15, &val, v81);
LABEL_59:
      v41 = v34;
      goto LABEL_60;
    }

    goto LABEL_51;
  }

  v84 = 0;
  v49 = xmlValidateQName(v15, 1);
  if (v49)
  {
    if (v49 == -1)
    {
      xmlSchemaInternalErr2(a1, "xmlSchemaValidateQName", "calling xmlValidateQName()", 0);
      v41 = -1;
    }

    else
    {
      v41 = 1824;
    }
  }

  else
  {
    v68 = xmlSplitQName2(v15, &v84);
    if (!v68)
    {
      v68 = xmlStrdup(v15);
    }

    v69 = xmlSchemaLookupNamespace(a1, v84);
    if (v84 && (free(v84), !v69))
    {
      v72 = xmlSchemaGetBuiltInType(XML_SCHEMAS_QNAME);
      v41 = 1824;
      xmlSchemaCustomErr4(a1, 1824, 0, v72, "The QName value '%s' has no corresponding namespace declaration in scope", v15, 0, 0, 0);
      if (v68)
      {
        free(v68);
      }
    }

    else if (v81)
    {
      if (v69)
      {
        v70 = xmlStrdup(v69);
      }

      else
      {
        v70 = 0;
      }

      v41 = 0;
      val = xmlSchemaNewQNameValue(v70, v68);
    }

    else
    {
      free(v68);
      v41 = 0;
    }
  }

LABEL_60:
  if (!v41)
  {
    if ((*(a3 + 91) & 8) == 0)
    {
      goto LABEL_150;
    }

    v47 = xmlSchemaValidateFacets(a1, a2, a3, v28->builtInType, v15, val, 0, a6);
    if (!v47)
    {
      goto LABEL_150;
    }

    if ((v47 & 0x80000000) == 0)
    {
      if ((*(a3 + 88) & 0x40) != 0)
      {
        v42 = 1825;
      }

      else
      {
        v42 = 1824;
      }

      goto LABEL_151;
    }

    v33 = "validating facets of atomic simple type";
LABEL_75:
    v48 = a1;
LABEL_76:
    xmlSchemaInternalErr2(v48, "xmlSchemaVCheckCVCSimpleType", v33, 0);
    if (!v21)
    {
      goto LABEL_78;
    }

LABEL_77:
    free(v21);
LABEL_78:
    if (val)
    {
      xmlSchemaFreeValue(val);
    }

    return 0xFFFFFFFFLL;
  }

  if (v41 < 0)
  {
    v33 = "validating against a built-in type";
    goto LABEL_75;
  }

  if ((*(a3 + 88) & 0x40) != 0)
  {
    v42 = 1825;
  }

  else
  {
    v42 = 1824;
  }

  if (a6)
  {
    v43 = a1;
    v44 = v42;
LABEL_67:
    v45 = a2;
    v46 = v15;
    goto LABEL_119;
  }

LABEL_151:
  if (v21)
  {
    free(v21);
  }

  if (v42)
  {
    if (val)
    {
      xmlSchemaFreeValue(val);
    }

    return v42;
  }

LABEL_156:
  if (a5)
  {
    v42 = 0;
    *a5 = val;
  }

  else
  {
    if (val)
    {
      xmlSchemaFreeValue(val);
    }

    return 0;
  }

  return v42;
}

const char *xmlSchemaFacetTypeToString(int a1)
{
  if ((a1 - 1000) > 0xB)
  {
    return "Internal Error";
  }

  else
  {
    return off_1E82C6090[a1 - 1000];
  }
}

xmlChar *xmlSchemaFormatQName(void **a1, const xmlChar *a2, xmlChar *a3)
{
  v6 = *a1;
  if (v6)
  {
    free(v6);
    *a1 = 0;
  }

  if (a2)
  {
    v7 = xmlStrdup("{");
    *a1 = v7;
    v8 = xmlStrcat(v7, a2);
    *a1 = v8;
    v9 = xmlStrcat(v8, "}");
    *a1 = v9;
    if (a3)
    {
      v10 = a3;
LABEL_9:
      a3 = xmlStrcat(v9, v10);
      *a1 = a3;
      return a3;
    }

LABEL_8:
    v10 = "(NULL)";
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_8;
  }

  return a3;
}

void xmlSchemaCustomErr4(_DWORD *a1, int a2, uint64_t a3, int *a4, const xmlChar *a5, const xmlChar *a6, xmlChar *a7, xmlChar *a8, uint64_t a9)
{
  ComponentNode = a3;
  cur = 0;
  if (!a3 && a4 && *a1 == 1)
  {
    ComponentNode = xmlSchemaGetComponentNode(a4);
    xmlSchemaFormatItemForReport(&cur, a4, 0);
    v17 = xmlStrcat(cur, ": ");
    cur = v17;
  }

  else
  {
    xmlSchemaFormatNodeForError(&cur, a1, a3);
    v17 = cur;
  }

  cur = xmlStrcat(v17, a5);
  cur = xmlStrcat(cur, ".\n");
  xmlSchemaErr4Line(a1, 2, a2, ComponentNode, 0, cur, a6, a7, a8, a9);
  if (cur)
  {
    free(cur);
  }
}

xmlSchemaPtr xmlSchemaParse(xmlSchemaParserCtxtPtr ctxt)
{
  v10 = 0;
  xmlSchemaInitTypes();
  if (!ctxt)
  {
    return 0;
  }

  *(ctxt + 4) = 0;
  *(ctxt + 18) = 0;
  v2 = xmlSchemaNewSchema(ctxt);
  if (v2)
  {
    v3 = v2;
    v4 = *(ctxt + 6);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = xmlSchemaConstructionCtxtCreate(*(ctxt + 19));
    *(ctxt + 6) = v4;
    if (v4)
    {
      *(ctxt + 14) = 1;
LABEL_6:
      *v4 = v3;
      v5 = xmlSchemaAddSchemaDoc(ctxt, 0, *(ctxt + 10), *(ctxt + 11), *(ctxt + 13), *(ctxt + 28), 0, 0, 0, &v10);
      if (v5 != -1)
      {
        if (v5)
        {
          goto LABEL_23;
        }

        if (!v10)
        {
          v8 = *(ctxt + 10);
          if (v8)
          {
            xmlSchemaCustomErr4(ctxt, 1757, 0, 0, "Failed to locate the main schema resource at '%s'", v8, 0, 0, 0);
          }

          else
          {
            xmlSchemaCustomErr4(ctxt, 1757, 0, 0, "Failed to locate the main schema resource", 0, 0, 0, 0);
          }

          goto LABEL_23;
        }

        if (xmlSchemaParseNewDocWithContext(ctxt, v3, v10) != -1)
        {
          if (*(ctxt + 9))
          {
LABEL_24:
            xmlSchemaFree(v3);
            v9 = *(ctxt + 6);
            if (v9)
            {
              xmlSchemaConstructionCtxtFree(v9);
              v3 = 0;
              *(ctxt + 6) = 0;
              *(ctxt + 14) = 0;
              goto LABEL_17;
            }

            goto LABEL_16;
          }

          v3->doc = v10[4];
          v3->preserve = *(ctxt + 24);
          *(ctxt + 8) = v3;
          if (xmlSchemaFixupComponents(ctxt, *(*(ctxt + 6) + 8)) == -1)
          {
            goto LABEL_12;
          }

LABEL_23:
          if (!*(ctxt + 9))
          {
            goto LABEL_17;
          }

          goto LABEL_24;
        }
      }

LABEL_12:
      xmlSchemaFree(v3);
      goto LABEL_13;
    }

    return 0;
  }

LABEL_13:
  v6 = *(ctxt + 6);
  if (v6)
  {
    xmlSchemaConstructionCtxtFree(v6);
    *(ctxt + 6) = 0;
    *(ctxt + 14) = 0;
  }

  xmlSchemaInternalErr2(ctxt, "xmlSchemaParse", "An internal error occurred", 0);
LABEL_16:
  v3 = 0;
LABEL_17:
  *(ctxt + 8) = 0;
  return v3;
}

_OWORD *xmlSchemaNewSchema(uint64_t a1)
{
  v2 = malloc_type_malloc(0xA0uLL, 0x10F0040C951C574uLL);
  v3 = v2;
  if (v2)
  {
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
    v4 = *(a1 + 152);
    *(v3 + 15) = v4;
    xmlDictReference(v4);
  }

  else
  {
    if (a1)
    {
      ++*(a1 + 36);
    }

    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema");
  }

  return v3;
}

void *xmlSchemaConstructionCtxtCreate(xmlDict *a1)
{
  v2 = malloc_type_malloc(0x48uLL, 0x20040D91ED9E0uLL);
  v3 = v2;
  if (!v2)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema construction context");
    return v3;
  }

  v2[8] = 0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v4 = xmlSchemaItemListCreate();
  v3[3] = v4;
  if (!v4)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating list of schema buckets");
    free(v3);
    return 0;
  }

  v5 = xmlSchemaItemListCreate();
  v3[5] = v5;
  if (!v5)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating list of pending global components");
    xmlSchemaConstructionCtxtFree(v3);
    return 0;
  }

  v3[2] = a1;
  xmlDictReference(a1);
  return v3;
}

uint64_t xmlSchemaAddSchemaDoc(uint64_t a1, int a2, const xmlChar *a3, xmlDoc *a4, const char *a5, int a6, uint64_t a7, uint64_t a8, xmlChar *a9, const xmlChar ***a10)
{
  v14 = a3;
  if (a10)
  {
    *a10 = 0;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v17 = 3050;
    }

    else
    {
      v17 = 3081;
    }
  }

  else
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v17 = 3082;
  }

  v18 = *(a1 + 48);
  v19 = *(v18 + 24);
  if (!v19)
  {
LABEL_17:
    v22 = 0;
    goto LABEL_18;
  }

  v20 = *(v19 + 2);
  if (v20 < 1)
  {
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    v21 = *v19;
    while (1)
    {
      v22 = *v21;
      if ((*v21)[1] == a3)
      {
        break;
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_15;
      }
    }

    if (*(v18 + 32) == v22)
    {
      xmlSchemaCustomErr4(a1, v17, a7, 0, "The schema must not import/include/redefine itself", 0, 0, 0, 0);
      goto LABEL_131;
    }
  }

  else
  {
LABEL_15:
    v22 = 0;
  }

  v44 = malloc_type_malloc(0x20uLL, 0x107004054400B9BuLL);
  if (!v44)
  {
    v52 = "allocating schema relation";
LABEL_95:
    __xmlSimpleError(0x10u, 2, 0, 0, v52);
    return 0xFFFFFFFFLL;
  }

  v19 = v44;
  *v44 = 0u;
  v44[1] = 0u;
  v45 = *(*(a1 + 48) + 32);
  v48 = *(v45 + 40);
  v46 = (v45 + 40);
  for (i = v48; i; i = *i)
  {
    v46 = i;
  }

  *v46 = v44;
  *(v44 + 2) = a2;
  if (a2 != 1)
  {
    if (!v22)
    {
      goto LABEL_18;
    }

    if (*(v22 + 14))
    {
      v73 = v44;
      if (!v14)
      {
        v14 = "in_memory_buffer";
      }

      if (!xmlStrEqual(v14, v22[1]))
      {
        v51 = "The schema document '%s' cannot be included or redefined, since it was already imported";
        goto LABEL_120;
      }

      v19 = v73;
    }

    if (v22[2] || v22[3] == a8)
    {
LABEL_93:
      *(v19 + 3) = v22;
      goto LABEL_131;
    }

    v62 = v19;
    ChameleonSchemaBucket = xmlSchemaGetChameleonSchemaBucket(a1, v14, a8);
    if (ChameleonSchemaBucket)
    {
      *(v62 + 3) = ChameleonSchemaBucket;
      goto LABEL_131;
    }

    v22 = 0;
    goto LABEL_141;
  }

  *(v44 + 2) = a9;
  if (!v14)
  {
    goto LABEL_131;
  }

  if (v22)
  {
    if (!*(v22 + 14))
    {
      v49 = v44;
      v50 = xmlStrEqual(v14, v22[1]);
      v19 = v49;
      if (!v50)
      {
        v51 = "The schema document '%s' cannot be imported, since it was already included or redefined";
LABEL_120:
        xmlSchemaCustomErr4(a1, v17, a7, 0, v51, v14, 0, 0, 0);
        goto LABEL_131;
      }
    }

    goto LABEL_93;
  }

  v62 = v44;
  SchemaBucketByTNS = xmlSchemaGetSchemaBucketByTNS(a1, a9);
  v22 = SchemaBucketByTNS;
  if (!SchemaBucketByTNS)
  {
LABEL_141:
    v19 = v62;
    goto LABEL_18;
  }

  *(v62 + 3) = SchemaBucketByTNS;
  v64 = *(SchemaBucketByTNS + 8);
  if (v64)
  {
    if (!xmlStrEqual(v14, v64))
    {
      xmlSchemaCustomWarning(a1, 3083, a7, "Skipping import of schema located at '%s' for the namespace '%s', since this namespace was already imported with the schema located at '%s'", v14, a9, v22[1]);
    }

    goto LABEL_131;
  }

  v19 = v62;
  *(SchemaBucketByTNS + 8) = v14;
  if (*(SchemaBucketByTNS + 32))
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaAddSchemaDoc", "trying to load a schema doc, but a doc is already assigned to the schema bucket", 0);
    return 0xFFFFFFFFLL;
  }

LABEL_18:
  if (a4)
  {
    v72 = v19;
    URL = a4->URL;
    if (URL)
    {
      v14 = xmlDictLookup(*(a1 + 152), URL, -1);
    }

    else
    {
      v14 = "in_memory_buffer";
    }

    File = a4;
    goto LABEL_31;
  }

  if (!(a5 | v14))
  {
    xmlSchemaPErr(a1, 0, 1758, "No information for parsing was provided with the given schema parser context.\n", 0, 0);
    return 0xFFFFFFFFLL;
  }

  v72 = v19;
  v24 = xmlNewParserCtxt();
  if (!v24)
  {
    v52 = "xmlSchemaGetDoc, allocating a parser context";
    goto LABEL_95;
  }

  v25 = v24;
  if (*(a1 + 152))
  {
    dict = v24->dict;
    if (dict)
    {
      xmlDictFree(dict);
      v27 = *(a1 + 152);
      v25->dict = v27;
      xmlDictReference(v27);
    }
  }

  if (v14)
  {
    File = xmlCtxtReadFile(v25, v14, 0, 2);
    if (!File)
    {
LABEL_123:
      LastError = xmlGetLastError();
      if (LastError && LastError->domain == 8)
      {
        xmlFreeParserCtxt(v25);
        if (v22)
        {
          v22[1] = v14;
          *(v22 + 12) = 0;
          goto LABEL_127;
        }

LABEL_131:
        result = 0;
        if (a10)
        {
          *a10 = v22;
        }

        return result;
      }

      xmlSchemaCustomErr4(a1, 3067, a7, 0, "Failed to parse the XML resource '%s'", v14, 0, 0, 0);
      xmlFreeParserCtxt(v25);
      return *(a1 + 32);
    }
  }

  else
  {
    if (!a5)
    {
      v14 = 0;
      goto LABEL_123;
    }

    Memory = xmlCtxtReadMemory(v25, a5, a6, 0, 0, 2);
    if (!Memory)
    {
      v14 = "in_memory_buffer";
      goto LABEL_123;
    }

    File = Memory;
    v14 = "in_memory_buffer";
    Memory->URL = xmlStrdup("in_memory_buffer");
  }

  xmlFreeParserCtxt(v25);
LABEL_31:
  RootElement = xmlDocGetRootElement(File);
  if (!RootElement)
  {
    xmlSchemaCustomErr4(a1, 1759, a7, 0, "The document '%s' has no document element", v14, 0, 0, 0);
    if (!a4)
    {
      goto LABEL_72;
    }

    return *(a1 + 32);
  }

  v30 = RootElement;
  v31 = 0;
  children = RootElement;
  do
  {
LABEL_33:
    v33 = children;
    if (v31)
    {
      xmlUnlinkNode(v31);
      xmlFreeNode(v31);
    }

    type = v33->type;
    if (type != XML_ELEMENT_NODE && type != XML_CDATA_SECTION_NODE)
    {
      v31 = v33;
      if (type != XML_TEXT_NODE)
      {
        goto LABEL_55;
      }

      content = v33->content;
      if (!content)
      {
LABEL_47:
        if (xmlNodeGetSpacePreserve(v33) == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = v33;
        }

        goto LABEL_50;
      }

      while (1)
      {
        v37 = *content;
        if (v37 > 0x20)
        {
          break;
        }

        if (((1 << v37) & 0x100002600) == 0)
        {
          if (*content)
          {
            break;
          }

          goto LABEL_47;
        }

        ++content;
      }
    }

    v31 = 0;
LABEL_50:
    children = v33->children;
    if (!children)
    {
      break;
    }

    v38 = children->type;
    v39 = v38 > 0x11;
    v40 = (1 << v38) & 0x20060;
  }

  while (v39 || v40 == 0);
  do
  {
LABEL_55:
    children = v33->next;
    if (children)
    {
      goto LABEL_33;
    }

    v33 = v33->parent;
    if (v33)
    {
      v42 = v33 == v30;
    }

    else
    {
      v42 = 1;
    }
  }

  while (!v42);
  if (v31)
  {
    xmlUnlinkNode(v31);
    xmlFreeNode(v31);
  }

  if (!v30->ns || !xmlStrEqual(v30->name, "schema") || !xmlStrEqual(v30->ns->href, "http://www.w3.org/2001/XMLSchema"))
  {
    xmlSchemaCustomErr4(a1, 1772, a7, 0, "The XML document '%s' is not a schema document", v14, 0, 0, 0);
    if (!a4)
    {
LABEL_72:
      xmlFreeDoc(File);
      if (v22)
      {
        v22[4] = 0;
      }
    }

    return *(a1 + 32);
  }

  Prop = xmlSchemaGetProp(a1, v30, "targetNamespace");
  if (v22)
  {
LABEL_67:
    *(v22 + 12) = 1;
    v22[3] = Prop;
    v22[4] = File;
    v22[1] = v14;
    v22[2] = Prop;
    if (a4)
    {
      *(v22 + 15) = 1;
    }

LABEL_127:
    if (a2 <= 1)
    {
      ++*(v22 + 14);
    }

    if (v72)
    {
      *(v72 + 3) = v22;
    }

    goto LABEL_131;
  }

  v55 = **(a1 + 48);
  if (!v55)
  {
    xmlSchemaInternalErr2(a1, "xmlSchemaBucketCreate", "no main schema on constructor", 0);
    goto LABEL_161;
  }

  v56 = malloc_type_malloc(0x58uLL, 0x10700403F790832uLL);
  if (!v56)
  {
    __xmlSimpleError(0x10u, 2, 0, 0, "allocating schema bucket");
    goto LABEL_161;
  }

  v22 = v56;
  *(v56 + 20) = 0u;
  *(v56 + 21) = 0;
  *(v56 + 68) = 0u;
  *(v56 + 52) = 0u;
  *(v56 + 36) = 0u;
  *(v56 + 4) = 0u;
  *(v56 + 3) = Prop;
  *v56 = a2;
  v57 = xmlSchemaItemListCreate();
  v22[8] = v57;
  if (!v57 || (v58 = xmlSchemaItemListCreate(), (v22[9] = v58) == 0))
  {
    free(v22);
    goto LABEL_161;
  }

  v59 = *(a1 + 48);
  v60 = v59[3];
  if (!v60 || *(v60 + 8) <= 0)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v61 = "first bucket but it's an include or redefine";
LABEL_159:
      xmlSchemaInternalErr2(a1, "xmlSchemaBucketCreate", v61, 0);
      goto LABEL_160;
    }

    *v22 = 0;
    v59[1] = v22;
    v22[10] = v55;
    *(v55 + 1) = Prop;
    if (a2 > 1)
    {
      goto LABEL_145;
    }

LABEL_152:
    v70 = *(v55 + 12);
    if (!v70)
    {
      v70 = xmlHashCreateDict(5, *(*(a1 + 48) + 16));
      *(v55 + 12) = v70;
      if (!v70)
      {
        goto LABEL_160;
      }
    }

    if (Prop)
    {
      v71 = Prop;
    }

    else
    {
      v71 = "##";
    }

    if (!xmlHashAddEntry(v70, v71, v22))
    {
      goto LABEL_163;
    }

    v61 = "failed to add the schema bucket to the hash";
    goto LABEL_159;
  }

  if (a2 == 1)
  {
    v69 = xmlSchemaNewSchema(a1);
    v22[10] = v69;
    if (!v69)
    {
LABEL_160:
      xmlSchemaBucketFree(v22);
      goto LABEL_161;
    }

    *(v69 + 1) = Prop;
    goto LABEL_152;
  }

  if (!a2)
  {
    v61 = "main bucket but it's not the first one";
    goto LABEL_159;
  }

LABEL_145:
  v67 = v59[4];
  if (*v67 >= 2u)
  {
    v67 = *(v67 + 80);
  }

  v22[10] = v67;
  v68 = *(v55 + 16);
  if (!v68)
  {
    v68 = xmlSchemaItemListCreate();
    *(v55 + 16) = v68;
    if (!v68)
    {
      goto LABEL_160;
    }
  }

  xmlSchemaItemListAddSize(v68, 20, v22);
LABEL_163:
  if (xmlSchemaItemListAddSize(*(*(a1 + 48) + 24), 20, v22) != -1)
  {
    goto LABEL_67;
  }

LABEL_161:
  if (!a4)
  {
    xmlFreeDoc(File);
  }

  return 0xFFFFFFFFLL;
}