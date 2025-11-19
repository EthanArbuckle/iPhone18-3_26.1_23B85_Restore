uint64_t loc_exportSentenceFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, _DWORD *a7)
{
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v31 = 0;
  __s = 0;
  v14 = LDO_ComputeText(a5, &v32);
  v15 = LH_ERROR_to_VERROR(v14);
  if ((v15 & 0x80000000) != 0)
  {
    return v15;
  }

  v16 = *(a1 + 160);
  v17 = *a6;
  v18 = LHString_Length(v32) + 1;
  v19 = LHString_BorrowCPtr(v32);
  v20 = v16(a2, a3, v17, 0, v18, v19, &v35);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v21 = *(a5 + 16);
  U32Attribute = LDOObject_GetU32Attribute(v21, "SENT_REC_OFFSET", &v34, a7);
  v20 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  v23 = 2147491860;
  if (v34 != 1)
  {
    goto LABEL_12;
  }

  v24 = LDOObject_GetU32Attribute(v21, "EOS", &v34, &v31);
  v20 = LH_ERROR_to_VERROR(v24);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  if (v34 != 1)
  {
    goto LABEL_12;
  }

  v33 = v31;
  v20 = (*(a1 + 160))(a2, a3, *a6, 3, 1, &v33, &v35);
  if ((v20 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

  StringAttribute = LDOObject_GetStringAttribute(v21, "SYNTAX", &v34, &__s);
  v23 = LH_ERROR_to_VERROR(StringAttribute);
  if ((v23 & 0x80000000) == 0 && v34)
  {
    v26 = *(a1 + 160);
    v27 = *a6;
    v28 = cstdlib_strlen(__s);
    v20 = v26(a2, a3, v27, 2, (v28 + 1), __s, &v35);
LABEL_11:
    v23 = v20;
  }

LABEL_12:
  if (v32)
  {
    OOC_PlacementDeleteObject(a4, v32);
  }

  return v23;
}

uint64_t loc_exportMrkLabelsToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v12 = *(a5 + 32);
  v13 = *(v12 + 24);
  if (v13 >= *(v12 + 32))
  {
    LOWORD(v15) = 0;
LABEL_43:
    v19 = 0;
LABEL_44:
    v41 = (*(a2 + 160))(a3, a4, a6, 1, v15, v19, &v52);
    if (v19)
    {
      goto LABEL_45;
    }

    return v41;
  }

  v15 = 0;
  do
  {
    if (*(*v13 + 26) == 1)
    {
      U32Attribute = LDOObject_GetU32Attribute(*v13, "_MTYPE", &v51, &v49 + 1);
      v17 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v17 & 0x80000000) != 0)
      {
        return v17;
      }

      if (v51)
      {
        ++v15;
      }

      v12 = *(a5 + 32);
    }

    ++v13;
  }

  while (v13 < *(v12 + 32));
  if (!v15)
  {
    goto LABEL_43;
  }

  v18 = heap_Calloc(*(a1 + 8), v15, 32);
  if (!v18)
  {
    return 2147491850;
  }

  v19 = v18;
  v43 = a2;
  v44 = a1;
  v20 = *(a5 + 32);
  v21 = *(v20 + 24);
  if (v21 >= *(v20 + 32))
  {
LABEL_41:
    marker_sort(v19, v15);
    a2 = v43;
    a1 = v44;
    goto LABEL_44;
  }

  v22 = 0;
  while (1)
  {
    v23 = a3;
    v24 = a4;
    v25 = a6;
    v26 = *v21;
    if (*(*v21 + 26) != 1)
    {
LABEL_35:
      a6 = v25;
      a4 = v24;
      goto LABEL_40;
    }

    v27 = LDOObject_GetU32Attribute(*v21, "_MTYPE", &v51, &v49 + 1);
    v28 = LH_ERROR_to_VERROR(v27);
    if ((v28 & 0x80000000) != 0)
    {
      break;
    }

    if (!v51)
    {
      goto LABEL_35;
    }

    v45 = v22;
    v29 = v19 + 32 * v22;
    v30 = *(v26 + 96);
    v31 = *(v26 + 100);
    *v29 = HIDWORD(v49);
    *(v29 + 4) = v30;
    *(v29 + 8) = v31 - v30;
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v26);
    *(v29 + 12) = AbsoluteFrom + a7;
    if ((*v29 - 36) <= 0x22 && ((1 << (*v29 - 36)) & 0x402008001) != 0 || *v29 == 1)
    {
      v40 = 0;
    }

    else
    {
      v40 = LDOLabel_GetAbsoluteTo(v26) - AbsoluteFrom;
    }

    *(v29 + 16) = v40;
    v35 = LDOObject_GetU32Attribute(v26, "FROMOVERFLOW", &v51, &v48 + 1);
    v36 = LH_ERROR_to_VERROR(v35);
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    if (v51)
    {
      *(v29 + 16) += HIDWORD(v48);
    }

    v37 = LDOObject_GetU32Attribute(v26, "TOOVERFLOW", &v51, &v48);
    v36 = LH_ERROR_to_VERROR(v37);
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_49;
    }

    if (v51)
    {
      *(v29 + 16) += v48;
    }

    StringAttribute = LDOObject_GetStringAttribute(v26, "STRARGS", &v50 + 1, &v47);
    v36 = LH_ERROR_to_VERROR(StringAttribute);
    if ((v36 & 0x80000000) != 0 || (v39 = LDOObject_GetU32Attribute(v26, "U32ARGS", &v50, &v49), v36 = LH_ERROR_to_VERROR(v39), (v36 & 0x80000000) != 0))
    {
LABEL_49:
      v41 = v36;
      a1 = v44;
      goto LABEL_45;
    }

    if (HIDWORD(v50))
    {
      *(v29 + 24) = v47;
      a6 = v25;
    }

    else
    {
      a6 = v25;
      if (v50)
      {
        *(v29 + 24) = v49;
      }

      else
      {
        *(v29 + 24) = 0;
      }
    }

    a4 = v24;
    v22 = v45 + 1;
LABEL_40:
    a3 = v23;
    if (++v21 >= *(*(a5 + 32) + 32))
    {
      goto LABEL_41;
    }
  }

  v41 = v28;
  a1 = v44;
LABEL_45:
  heap_Free(*(a1 + 8), v19);
  return v41;
}

uint64_t loc_exportNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, _DWORD *a8, unsigned __int16 *a9)
{
  v21 = 0;
  v22 = 0;
  if (a7 == 1 || (v16 = LDOObject_GetU32Attribute(a6, "_TTYPE", &v22, &v21), result = LH_ERROR_to_VERROR(v16), (result & 0x80000000) == 0) && v22 && v21 >= 4)
  {
    if (*a8 == 1)
    {
      result = (*(a2 + 72))(a3, a4, 3, a5, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *a8 = 0;
    }

    else
    {
      result = (*(a2 + 80))(a3, a4, *a9, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v28 = 0;
    v25 = 0;
    v24 = 0;
    v23 = 0;
    U32Attribute = LDOObject_GetU32Attribute(a6, "_TTYPE", &v23, &v25);
    result = LH_ERROR_to_VERROR(U32Attribute);
    if ((result & 0x80000000) == 0)
    {
      if (v23)
      {
        v29 = v25;
        result = (*(a2 + 160))(a3, a4, *a9, 0, 1, &v29, &v28);
        if ((result & 0x80000000) == 0)
        {
          v19 = LDOTreeNode_ComputeAbsoluteFrom(a6, &v24 + 1);
          result = LH_ERROR_to_VERROR(v19);
          if ((result & 0x80000000) == 0)
          {
            v27 = WORD2(v24);
            result = (*(a2 + 160))(a3, a4, *a9, 1, 1, &v27, &v28);
            if ((result & 0x80000000) == 0)
            {
              v20 = LDOTreeNode_ComputeAbsoluteTo(a6, &v24);
              result = LH_ERROR_to_VERROR(v20);
              if ((result & 0x80000000) == 0)
              {
                v26 = v24;
                result = (*(a2 + 160))(a3, a4, *a9, 2, 1, &v26, &v28);
                if ((result & 0x80000000) == 0 && v29 == 6)
                {
                  return loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, a6, *a9);
                }
              }
            }
          }
        }
      }

      else
      {
        return 2147491860;
      }
    }
  }

  return result;
}

uint64_t loc_exportNonMarkerLabelWithTType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, _DWORD *a8, unsigned __int16 *a9)
{
  if (a7 != 1 || (LODWORD(__s) = 0, v45 = 0, v41 = 0, v16 = LDOObject_GetU32Attribute(a6, "_TTYPE", &__s, &v45), result = LH_ERROR_to_VERROR(v16), (result & 0x80000000) == 0) && (v45 != 6 || (v18 = LDOObject_GetU32Attribute(a6, "CREATED_BEFORE_TOKENTN", &__s, &v41), result = LH_ERROR_to_VERROR(v18), (result & 0x80000000) == 0) && __s && v41 == 1))
  {
    if (*a8 == 1)
    {
      result = (*(a2 + 72))(a3, a4, 3, a5, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      *a8 = 0;
    }

    else
    {
      result = (*(a2 + 80))(a3, a4, *a9, a9);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    v19 = *a9;
    v44 = 0;
    v40 = 0;
    v41 = 0;
    __s = 0;
    U32Attribute = LDOObject_GetU32Attribute(a6, "_TTYPE", &v40, &v41);
    result = LH_ERROR_to_VERROR(U32Attribute);
    if ((result & 0x80000000) == 0)
    {
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a6);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(a6);
      v45 = v41;
      result = (*(a2 + 160))(a3, a4, v19, 0, 1, &v45, &v44);
      if ((result & 0x80000000) == 0)
      {
        result = (*(a2 + 160))(a3, a4, v19, 1, 1, &AbsoluteFrom, &v44);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a2 + 160))(a3, a4, v19, 2, 1, &AbsoluteTo, &v44);
          if ((result & 0x80000000) == 0)
          {
            v21 = v45;
            if (v45 == 6)
            {
              result = loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, a6, v19);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              v21 = v45;
            }

            if ((v21 & 0xFFFFFFFD) == 5)
            {
              StringAttribute = LDOObject_GetStringAttribute(a6, "TNTAG", &v40, &__s);
              result = LH_ERROR_to_VERROR(StringAttribute);
              if ((result & 0x80000000) != 0)
              {
                return result;
              }

              if (v40)
              {
                v23 = *(a2 + 160);
                v24 = cstdlib_strlen(__s);
                result = v23(a3, a4, v19, 4, (v24 + 1), __s, &v44);
                if ((result & 0x80000000) == 0)
                {
                  v25 = LDOObject_GetStringAttribute(a6, "NORM", &v40, &__s);
                  result = LH_ERROR_to_VERROR(v25);
                  if ((result & 0x80000000) == 0)
                  {
                    if (!v40 || (v26 = *(a2 + 160), v27 = cstdlib_strlen(__s), result = v26(a3, a4, v19, 3, (v27 + 1), __s, &v44), (result & 0x80000000) == 0))
                    {
                      v28 = LDOObject_GetStringAttribute(a6, "LANGMAP", &v40, &__s);
                      result = LH_ERROR_to_VERROR(v28);
                      if ((result & 0x80000000) == 0)
                      {
                        if (v40)
                        {
                          v29 = *(a2 + 160);
                          v30 = cstdlib_strlen(__s);
                          v31 = __s;
                          v32 = (v30 + 1);
                          v33 = a3;
                          v34 = a4;
                          v35 = v19;
                          v36 = 6;
                          return v29(v33, v34, v35, v36, v32, v31, &v44);
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                return 2147491860;
              }
            }

            else if (v21 == 4)
            {
              v37 = LDOObject_GetStringAttribute(a6, "NORM", &v40, &__s);
              result = LH_ERROR_to_VERROR(v37);
              if ((result & 0x80000000) == 0)
              {
                if (v40)
                {
                  v29 = *(a2 + 160);
                  v38 = cstdlib_strlen(__s);
                  v31 = __s;
                  v32 = (v38 + 1);
                  v33 = a3;
                  v34 = a4;
                  v35 = v19;
                  v36 = 3;
                  return v29(v33, v34, v35, v36, v32, v31, &v44);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t exportToLingDBWordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v58 = 1;
  v59 = 0;
  v57 = 0;
  v14 = (*(a2 + 64))(a3, a4);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a2 + 56))(a3, a4);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = (*(a2 + 104))(a3, a4, 1, 0, &v62);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = loc_exportSentenceFields(a2, a3, a4, a5, a6, &v62, &v60 + 1);
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v14 = loc_exportMrkLabelsToLingDB(a1, a2, a3, a4, a6, v62, SHIDWORD(v60));
  if ((v14 & 0x80000000) != 0)
  {
    return v14;
  }

  v64 = 0;
  v63 = 0;
  v15 = *(a6 + 32);
  v16 = *(v15 + 24);
  if (v16 < *(v15 + 32))
  {
    v50 = a1;
    v51 = a7;
    v52 = a5;
    v17 = 0;
    v18 = 0;
    v56 = 0;
    v19 = 0;
    v20 = 0;
    do
    {
      v21 = *v16;
      if (*(*v16 + 26) == 1)
      {
        U32Attribute = LDOObject_GetU32Attribute(*v16, "_WTYPE", &v64, &v63);
        v19 = LH_ERROR_to_VERROR(U32Attribute);
        if ((v19 & 0x80000000) != 0)
        {
          a5 = v52;
          goto LABEL_50;
        }

        if (v64 == 1)
        {
          v53 = v20;
          v23 = v18;
          v24 = v56 - v18;
          v25 = (v56 - v18) >> 3;
          if (v17 != v25 || v25 == -1)
          {
            v30 = (v24 >> 3);
            v18 = v23;
          }

          else
          {
            v26 = 2 * v17;
            if (2 * v17 >= v17 + 1000000)
            {
              v26 = v17 + 1000000;
            }

            if (v26 <= v17 + 1)
            {
              v27 = v17 + 1;
            }

            else
            {
              v27 = v26;
            }

            if (v27 <= 8)
            {
              v17 = 8;
            }

            else
            {
              v17 = v27;
            }

            v28 = OOCAllocator_Realloc(v52, v23, 8 * v17, &v64 + 1);
            v29 = HIDWORD(v64);
            if (HIDWORD(v64))
            {
              v18 = v28;
              goto LABEL_30;
            }

            v30 = (v24 >> 3);
            v56 = v28 + 8 * v25;
            v18 = v28;
          }

          v31 = v30 > v53;
          v32 = v30 - v53;
          if (v31)
          {
            cstdlib_memmove((v18 + 8 * v53 + 8), (v18 + 8 * v53), 8 * v32);
          }

          v56 += 8;
          *(v18 + 8 * v53) = v21;
          v20 = v53 + 1;
        }
      }

      ++v16;
    }

    while (v16 < *(*(a6 + 32) + 32));
    v29 = HIDWORD(v64);
    if (!HIDWORD(v64))
    {
      goto LABEL_31;
    }

LABEL_30:
    v19 = LH_ERROR_to_VERROR(v29);
LABEL_31:
    a5 = v52;
    a7 = v51;
    a1 = v50;
    if ((v19 & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    v33 = *(a6 + 16);
    v35 = *(v33 + 80);
    v34 = *(v33 + 88);
    v36 = v56;
    v37 = v35 >= v34 || v18 >= v56;
    if (v37)
    {
      v49 = v18;
      v54 = v18;
      goto LABEL_39;
    }

    v42 = v18;
    v48 = v34;
    while (1)
    {
      v43 = *v35;
      v55 = v42;
      v44 = *v42;
      v45 = LDOObject_GetU32Attribute(*v35, "INDEX", &v57, &v60);
      v14 = LH_ERROR_to_VERROR(v45);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      v46 = LDOObject_GetU32Attribute(v44, "INDEX", &v57, &v59);
      v14 = LH_ERROR_to_VERROR(v46);
      if ((v14 & 0x80000000) != 0)
      {
        return v14;
      }

      if (v60 <= v59)
      {
        v19 = loc_exportNode_WordRecord(v50, a2, a3, a4, v62, v43, &v58, &v61, v51);
        v36 = v56;
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        ++v35;
        a7 = v51;
        a1 = v50;
        v42 = v55;
      }

      else
      {
        a7 = v51;
        a1 = v50;
        v19 = loc_exportNonMarkerLabelWithWType(v50, a2, a3, a4, v62, v44, &v58, &v61, v51);
        if ((v19 & 0x80000000) != 0)
        {
          goto LABEL_50;
        }

        v36 = v56;
        v42 = v55 + 1;
      }

      v34 = v48;
      if (v35 >= v48 || v42 >= v36)
      {
        v54 = v42;
        v49 = v18;
        goto LABEL_39;
      }
    }
  }

  v49 = 0;
  v19 = 0;
  v54 = 0;
  v38 = *(a6 + 16);
  v36 = 0;
  v35 = *(v38 + 80);
  v34 = *(v38 + 88);
LABEL_39:
  if (v35 >= v34)
  {
LABEL_42:
    if (v54 < v36)
    {
      v40 = a5;
      v41 = v54 + 8;
      do
      {
        v19 = loc_exportNonMarkerLabelWithWType(a1, a2, a3, a4, v62, *(v41 - 8), &v58, &v61, a7);
        if ((v19 & 0x80000000) != 0)
        {
          break;
        }

        v37 = v41 >= v36;
        v41 += 8;
      }

      while (!v37);
      a5 = v40;
      v18 = v49;
      goto LABEL_50;
    }
  }

  else
  {
    while (1)
    {
      v39 = v34;
      v19 = loc_exportNode_WordRecord(a1, a2, a3, a4, v62, *v35, &v58, &v61, a7);
      if ((v19 & 0x80000000) != 0)
      {
        break;
      }

      ++v35;
      v34 = v39;
      if (v35 >= v39)
      {
        goto LABEL_42;
      }
    }
  }

  v18 = v49;
LABEL_50:
  if (v18)
  {
    OOCAllocator_Free(a5, v18);
  }

  return v19;
}

uint64_t loc_exportNode_WordRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, unsigned __int16 *a8, int a9)
{
  if (*a7 == 1)
  {
    result = (*(a2 + 72))(a3, a4, 2, a5, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *a7 = 0;
  }

  else
  {
    result = (*(a2 + 80))(a3, a4, *a8, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v31 = 0;
  v30 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  U32Attribute = LDOObject_GetU32Attribute(a6, "_WTYPE", &v24, &v26);
  result = LH_ERROR_to_VERROR(U32Attribute);
  if ((result & 0x80000000) == 0)
  {
    if (v24)
    {
      v31 = v26;
      result = (*(a2 + 160))(a3, a4, *a8, 0, 1, &v31, &v30);
      if ((result & 0x80000000) == 0)
      {
        v18 = LDOTreeNode_ComputeAbsoluteFrom(a6, &v25 + 1);
        result = LH_ERROR_to_VERROR(v18);
        if ((result & 0x80000000) == 0)
        {
          v19 = WORD2(v25);
          v29 = WORD2(v25);
          v20 = LDOObject_GetU32Attribute(a6, "FROMOVERFLOW", &v24, &v27);
          result = LH_ERROR_to_VERROR(v20);
          if ((result & 0x80000000) == 0)
          {
            if (v24)
            {
              v29 = v27 + v19;
            }

            result = (*(a2 + 160))(a3, a4, *a8, 1, 1, &v29, &v30);
            if ((result & 0x80000000) == 0)
            {
              v21 = LDOTreeNode_ComputeAbsoluteTo(a6, &v25);
              result = LH_ERROR_to_VERROR(v21);
              if ((result & 0x80000000) == 0)
              {
                v22 = v25;
                v28 = v25;
                v23 = LDOObject_GetU32Attribute(a6, "TOOVERFLOW", &v24, &v26 + 1);
                result = LH_ERROR_to_VERROR(v23);
                if ((result & 0x80000000) == 0)
                {
                  if (v24)
                  {
                    v28 = WORD2(v26) + v22;
                  }

                  result = (*(a2 + 160))(a3, a4, *a8, 2, 1, &v28, &v30);
                  if ((result & 0x80000000) == 0)
                  {
                    return loc_exportWordRecordCommonFieldsToLingDB(a1, a2, a3, a4, a6, *a8, a9);
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
      return 2147491860;
    }
  }

  return result;
}

uint64_t loc_exportNonMarkerLabelWithWType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, unsigned __int16 *a8, int a9)
{
  if (*a7 == 1)
  {
    result = (*(a2 + 72))(a3, a4, 2, a5, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }

    *a7 = 0;
  }

  else
  {
    result = (*(a2 + 80))(a3, a4, *a8, a8);
    if ((result & 0x80000000) != 0)
    {
      return result;
    }
  }

  v17 = *a8;
  v28 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  U32Attribute = LDOObject_GetU32Attribute(a6, "_WTYPE", &v23, &v24);
  result = LH_ERROR_to_VERROR(U32Attribute);
  if ((result & 0x80000000) == 0)
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a6);
    v27 = AbsoluteFrom;
    v20 = LDOObject_GetU32Attribute(a6, "FROMOVERFLOW", &v23, &v25);
    result = LH_ERROR_to_VERROR(v20);
    if ((result & 0x80000000) == 0)
    {
      if (v23)
      {
        v27 = v25 + AbsoluteFrom;
      }

      AbsoluteTo = LDOLabel_GetAbsoluteTo(a6);
      v26 = AbsoluteTo;
      v22 = LDOObject_GetU32Attribute(a6, "TOOVERFLOW", &v23, &v24 + 1);
      result = LH_ERROR_to_VERROR(v22);
      if ((result & 0x80000000) == 0)
      {
        if (v23)
        {
          v26 = WORD2(v24) + AbsoluteTo;
        }

        v29 = v24;
        result = (*(a2 + 160))(a3, a4, v17, 0, 1, &v29, &v28);
        if ((result & 0x80000000) == 0)
        {
          result = (*(a2 + 160))(a3, a4, v17, 1, 1, &v27, &v28);
          if ((result & 0x80000000) == 0)
          {
            result = (*(a2 + 160))(a3, a4, v17, 2, 1, &v26, &v28);
            if ((result & 0x80000000) == 0)
            {
              return loc_exportWordRecordCommonFieldsToLingDB(a1, a2, a3, a4, a6, v17, a9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t replaceBasicTokensWithTokenIntTnInLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = 0;
  v58 = 0;
  v57 = 0;
  v7 = *(a5 + 32);
  v8 = *(v7 + 24);
  if (v8 >= *(v7 + 32))
  {
    return v6;
  }

  v6 = 0;
  while (1)
  {
    v13 = *v8;
    if (*(*v8 + 26) == 1)
    {
      U32Attribute = LDOObject_GetU32Attribute(*v8, "_TTYPE", &v57 + 1, &v58);
      v6 = LH_ERROR_to_VERROR(U32Attribute);
      if ((v6 & 0x80000000) != 0)
      {
        return v6;
      }

      if (HIDWORD(v57) && v58 == 6)
      {
        AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v13);
        AbsoluteTo = LDOLabel_GetAbsoluteTo(v13);
        v17 = LDOObject_GetU32Attribute(v13, "CREATED_BEFORE_TOKENTN", &v57 + 1, &v57);
        v6 = LH_ERROR_to_VERROR(v17);
        if ((v6 & 0x80000000) != 0)
        {
          return v6;
        }

        if (!HIDWORD(v57) || v57 != 1)
        {
          break;
        }
      }
    }

LABEL_49:
    if (++v8 >= *(*(a5 + 32) + 32))
    {
      return v6;
    }
  }

  v61 = 0;
  v62 = 0;
  v60 = 0;
  v18 = (*(a2 + 104))(a3, a4, 1, 0, &v62 + 2);
  if ((v18 & 0x80000000) != 0)
  {
LABEL_57:
    v6 = v18;
    v25 = a6;
    v48 = a1;
    goto LABEL_60;
  }

  v25 = (*(a2 + 104))(a3, a4, 3, HIWORD(v62), &v62);
  if ((v25 & 0x80000000) != 0 || !v62)
  {
    log_OutText(*(a1 + 32), a6, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v22, v23, v24, v25);
    v6 = v25;
    if ((v25 & 0x80000000) != 0)
    {
      return v25 | 0x80002000;
    }

    goto LABEL_49;
  }

  v53 = 0;
  v54 = AbsoluteFrom;
  v26 = AbsoluteTo;
  v27 = 1;
  while (1)
  {
    v28 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    v29 = (*(a2 + 184))(a3, a4, v62, 1, &v63);
    v34 = 24031;
    if (v29 < 0 || v63 != 1)
    {
      goto LABEL_55;
    }

    (*(a2 + 168))(a3, a4, v28, 1, 1, &v61 + 2, &v66);
    if (v66 != 1)
    {
      break;
    }

    v35 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    v36 = (*(a2 + 184))(a3, a4, v62, 2, &v63);
    v34 = 24031;
    if (v36 < 0 || v63 != 1)
    {
      goto LABEL_55;
    }

    (*(a2 + 168))(a3, a4, v35, 2, 1, &v61, &v66);
    if (v66 != 1)
    {
      break;
    }

    v37 = v62;
    LOWORD(v63) = 0;
    v66 = 0;
    if (((*(a2 + 184))(a3, a4, v62, 0, &v63) & 0x80000000) == 0 && v63 == 1)
    {
      (*(a2 + 168))(a3, a4, v37, 0, 1, &v60, &v66);
      if (v66 != 1)
      {
        v6 = 2147491840;
        v25 = a6;
        v48 = a1;
        v49 = *(a1 + 32);
        v50 = a6;
        v34 = 24030;
        goto LABEL_56;
      }
    }

    if (HIWORD(v61) >= v26 && v60 != 5)
    {
      v6 = 0;
LABEL_53:
      log_OutText(*(a1 + 32), a6, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v31, v32, v33, v6);
      goto LABEL_49;
    }

    if (HIWORD(v61) < v54 || v61 > v26 || v60 > 3)
    {
      v6 = 0;
      v47 = v62;
      goto LABEL_45;
    }

    if (v27 == 1)
    {
      if (HIWORD(v61) != v54)
      {
        v6 = 0;
        v27 = 1;
        goto LABEL_39;
      }

      v59 = v62;
      v38 = (*(a2 + 80))(a3, a4);
      if (v38 < 0)
      {
        LODWORD(v25) = v38;
        return v25 | 0x80002000;
      }

      v39 = v59;
      v66 = v54;
      v65 = v26;
      v64 = 0;
      v63 = 6;
      v40 = (*(a2 + 160))(a3, a4, v59, 0, 1, &v63, &v64);
      if ((v40 & 0x80000000) != 0 || (v40 = (*(a2 + 160))(a3, a4, v39, 1, 1, &v66, &v64), (v40 & 0x80000000) != 0) || (v40 = (*(a2 + 160))(a3, a4, v39, 2, 1, &v65, &v64), (v40 & 0x80000000) != 0))
      {
        v6 = v40;
LABEL_59:
        v25 = a6;
        v48 = a1;
        goto LABEL_60;
      }

      v6 = loc_exportTokenIntTnSpecificFieldToLingDB(a1, a2, a3, a4, v13, v39);
      if ((v6 & 0x80000000) != 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v6 = 0;
    }

    v27 = 0;
LABEL_39:
    v45 = (*(a2 + 192))(a3, a4, v62);
    v46 = *(a1 + 32);
    if (v45)
    {
      log_OutPublic(v46, a6, 24033, "%s%d", v41, v42, v43, v44, "tokenRecId");
      goto LABEL_53;
    }

    log_OutText(v46, a6, 5, 0, "deleting key %d", v42, v43, v44, v62);
    if (!v53)
    {
      v18 = (*(a2 + 104))(a3, a4, 3, HIWORD(v62), &v62);
      if ((v18 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      continue;
    }

    v47 = v53;
    LOWORD(v62) = v53;
LABEL_45:
    v53 = v47;
    if ((*(a2 + 120))(a3, a4, v47, &v62) || !v62)
    {
      goto LABEL_53;
    }
  }

  v34 = 24030;
LABEL_55:
  v6 = 2147491840;
  v25 = a6;
  v48 = a1;
  v49 = *(a1 + 32);
  v50 = a6;
LABEL_56:
  log_OutPublic(v49, v50, v34, 0, v30, v31, v32, v33, v52);
LABEL_60:
  log_OutText(*(v48 + 32), v25, 4, 0, "ldoutil : loc_replaceBasicTokensWithTokenIntTnInLingDB End (%x) ", v19, v20, v21, v6);
  LODWORD(v25) = v6;
  return v25 | 0x80002000;
}

uint64_t LingDBIsValid(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v10 + 2);
  if ((result & 0x80000000) == 0)
  {
    v9 = (*(a1 + 184))(a2, a3, HIWORD(v10), 3, &v10);
    result = 0;
    if ((v9 & 0x80000000) == 0)
    {
      if (v10)
      {
        result = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t LingDBHasSentence(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v11 = 0;
  v10 = 0;
  v9 = 0;
  *a4 = 0;
  result = (*(a1 + 104))(a2, a3, 1, 0, &v11 + 2);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 184))(a2, a3, HIWORD(v11), 0, &v11);
    if ((result & 0x80000000) == 0)
    {
      if (v11)
      {
        result = (*(a1 + 176))(a2, a3, HIWORD(v11), 0, &v9, &v10);
        if ((result & 0x80000000) == 0 && v10 >= 2u)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t loc_importTokenIntTnFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = 0;
  v28 = 0;
  v27 = 0;
  LDOObject_SetU32Attribute(a5, "CREATED_BEFORE_TOKENTN", 1);
  v13 = LH_ERROR_to_VERROR(v12);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 3, &v29, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = LDOObject_SetStringAttribute(a5, "NORM", v29);
  v13 = LH_ERROR_to_VERROR(v14);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 4, &v29, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = LDOObject_SetStringAttribute(a5, "TNTAG", v29);
  v13 = LH_ERROR_to_VERROR(v15);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v13 = (*(a2 + 184))(a3, a4, a6, 5, &v28);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!v28)
  {
    v18 = 0;
    goto LABEL_21;
  }

  v13 = (*(a2 + 176))(a3, a4, a6, 5, &v27, &v28 + 2);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  LDOObject_SetU32Attribute(a5, "_MRKRD", HIWORD(v28));
  v13 = LH_ERROR_to_VERROR(v16);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (HIWORD(v28))
  {
    v17 = heap_Calloc(*(a1 + 8), HIWORD(v28), 4);
    if (!v17)
    {
      return 2147491850;
    }

    v18 = v17;
    v19 = HIWORD(v28);
    if (HIWORD(v28))
    {
      v20 = 0;
      v21 = v27;
      do
      {
        *(v17 + 4 * v20) = *(v21 + 2 * v20);
        ++v20;
      }

      while (v19 != v20);
    }
  }

  else
  {
    v18 = 0;
    LODWORD(v19) = 0;
  }

  v24 = LDOObject_SetListU32Attribute(a5, "_MRK", v18, v19);
  v25 = LH_ERROR_to_VERROR(v24);
  if ((v25 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v22 = (*(a2 + 184))(a3, a4, a6, 6, &v28);
  if ((v22 & 0x80000000) == 0 && v28)
  {
    v25 = (*(a2 + 176))(a3, a4, a6, 6, &v29, &v28 + 2);
    if ((v25 & 0x80000000) == 0)
    {
      v26 = LDOObject_SetStringAttribute(a5, "LANGMAP", v29);
      v25 = LH_ERROR_to_VERROR(v26);
    }

LABEL_25:
    v22 = v25;
  }

  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
  }

  return v22;
}

uint64_t loc_importTokenDctFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v13 = 0;
  LDOObject_SetU32Attribute(a4, "CREATED_BEFORE_TOKENTN", 1);
  result = LH_ERROR_to_VERROR(v10);
  if ((result & 0x80000000) == 0)
  {
    result = (*(a1 + 176))(a2, a3, a5, 3, &v14, &v13);
    if ((result & 0x80000000) == 0)
    {
      v12 = LDOObject_SetStringAttribute(a4, "NORM", v14);
      return LH_ERROR_to_VERROR(v12);
    }
  }

  return result;
}

uint64_t loc_compute_overflow(uint64_t a1, unsigned int *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v16 = 0;
  v9 = LDO_ComputeText(a1, &v16);
  v10 = LH_ERROR_to_VERROR(v9);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = LHString_Length(v16);
    *a4 = 0;
    *a5 = 0;
    v12 = *a3;
    if (*a3 > v11)
    {
      *a5 = *a3 - v11;
      *a3 = v11;
      v12 = v11;
    }

    v13 = *a2;
    if (*a2 > v11)
    {
      *a4 = *a2 - v11;
      *a2 = v11;
      v12 = *a3;
      v13 = v11;
    }

    if (v13 > v12)
    {
      *a2 = v12;
    }
  }

  if (v16)
  {
    v14 = LDOString_BorrowAllocator(v16);
    OOC_PlacementDeleteObject(v14, v16);
  }

  return v10;
}

uint64_t loc_importWordRecordFieldsFromLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10)
{
  v51 = 0;
  v50 = 0;
  v48 = 0;
  __s = 0;
  LDOObject_SetU32Attribute(a5, "INDEX", a7);
  v18 = LH_ERROR_to_VERROR(v17);
  if ((v18 & 0x80000000) == 0)
  {
    if (!a9 || (LDOObject_SetU32Attribute(a5, "FROMOVERFLOW", a9), v18 = LH_ERROR_to_VERROR(v19), (v18 & 0x80000000) == 0))
    {
      if (!a10 || (LDOObject_SetU32Attribute(a5, "TOOVERFLOW", a10), v18 = LH_ERROR_to_VERROR(v20), (v18 & 0x80000000) == 0))
      {
        v46 = a8;
        v47 = a1;
        v21 = "PRIORITY";
        v22 = 4;
        v23 = &off_279DABCA8;
        do
        {
          v24 = *(v23 - 8);
          v18 = (*(a2 + 184))(a3, a4, a6, v24, &v51);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          if (v51)
          {
            v18 = (*(a2 + 168))(a3, a4, a6, v24, 1, &v50, &v51 + 2);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            LDOObject_SetU32Attribute(a5, v21, v50);
            v18 = LH_ERROR_to_VERROR(v25);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }
          }

          v26 = *v23;
          v23 += 2;
          v21 = v26;
          --v22;
        }

        while (v22);
        v45 = a5;
        v27 = "PHON";
        v28 = 14;
        v29 = &off_279DABCF8;
        v30 = v46;
        while (1)
        {
          v31 = *(v29 - 8);
          v18 = (*(a2 + 184))(a3, a4, a6, v31, &v51);
          if ((v18 & 0x80000000) != 0)
          {
            return v18;
          }

          if (v51)
          {
            v18 = (*(a2 + 176))(a3, a4, a6, v31, &__s, &v51 + 2);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }

            if (v30)
            {
              if (v31 <= 0xF && ((1 << v31) & 0x8808) != 0)
              {
LABEL_19:
                v32 = __s;
                v52 = 0;
                v33 = cstdlib_strlen(__s);
                v34 = Utf8_DepesLengthInBytesUtf8(v32, v33);
                v35 = heap_Calloc(*(v47 + 8), v34 + 1, 1);
                if (!v35)
                {
                  return 2147491850;
                }

                v36 = v35;
                v37 = cstdlib_strlen(v32);
                v38 = utf8_DepesToUtf8(v32, v37, 0, v36, v34, &v52, 0);
                if ((v38 & 0x80000000) != 0 || (v36[v52] = 0, v38 = (*(a2 + 320))(a3, a4, 0), (v38 & 0x80000000) != 0) || (v39 = LDOObject_SetStringAttribute(v45, v27, v36), v38 = LH_ERROR_to_VERROR(v39), (v38 & 0x80000000) != 0))
                {
                  v42 = v38;
                  heap_Free(*(v47 + 8), v36);
                  return v42;
                }

                heap_Free(*(v47 + 8), v36);
                v30 = v46;
                goto LABEL_26;
              }
            }

            else if (v31 == 15)
            {
              goto LABEL_19;
            }

            v40 = LDOObject_SetStringAttribute(v45, v27, __s);
            v18 = LH_ERROR_to_VERROR(v40);
            if ((v18 & 0x80000000) != 0)
            {
              return v18;
            }
          }

LABEL_26:
          v41 = *v29;
          v29 += 2;
          v27 = v41;
          if (!--v28)
          {
            v42 = (*(a2 + 184))(a3, a4, a6, 16, &v51);
            if ((v42 & 0x80000000) != 0 || !v51)
            {
              return v42;
            }

            v18 = (*(a2 + 176))(a3, a4, a6, 16, &v48, &v51 + 2);
            if ((v18 & 0x80000000) == 0)
            {
              v43 = LDOObject_SetListU32Attribute(v45, "SGT", v48, HIWORD(v51));
              return LH_ERROR_to_VERROR(v43);
            }

            return v18;
          }
        }
      }
    }
  }

  return v18;
}

uint64_t loc_exportTokenIntTnSpecificFieldToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v41 = 1;
  __s = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  StringAttribute = LDOObject_GetStringAttribute(a5, "NORM", &v41, &__s);
  v13 = LH_ERROR_to_VERROR(StringAttribute);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v14 = 2147491860;
  if (!v41)
  {
    return 2147491860;
  }

  v15 = *(a2 + 160);
  v16 = cstdlib_strlen(__s);
  v13 = v15(a3, a4, a6, 3, (v16 + 1), __s, &v39);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v17 = LDOObject_GetStringAttribute(a5, "TNTAG", &v41, &__s);
  v13 = LH_ERROR_to_VERROR(v17);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (!v41)
  {
    return 2147491860;
  }

  v18 = *(a2 + 160);
  v19 = cstdlib_strlen(__s);
  v13 = v18(a3, a4, a6, 4, (v19 + 1), __s, &v39);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v20 = LDOObject_GetStringAttribute(a5, "LANGMAP", &v41, &__s);
  v13 = LH_ERROR_to_VERROR(v20);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v41)
  {
    v21 = *(a2 + 160);
    v22 = cstdlib_strlen(__s);
    v13 = v21(a3, a4, a6, 6, (v22 + 1), __s, &v39);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

  U32Attribute = LDOObject_GetU32Attribute(a5, "ORIGREFDUR", &v41, &v37);
  v13 = LH_ERROR_to_VERROR(U32Attribute);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  if (v41)
  {
    v36 = v37;
    v13 = (*(a2 + 160))(a3, a4, a6, 8, 1, &v36, &v39);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }
  }

  v24 = LDOObject_GetU32Attribute(a5, "_MRKRD", &v41, &v38);
  v25 = LH_ERROR_to_VERROR(v24);
  if ((v25 & 0x80000000) == 0 && v41)
  {
    v35 = 0;
    v34 = 0;
    ListU32Attribute = LDOObject_GetListU32Attribute(a5, "_MRK", &v41, &v35, &v34);
    v27 = LH_ERROR_to_VERROR(ListU32Attribute);
    if ((v27 & 0x80000000) != 0)
    {
      return v27;
    }

    if (!v41)
    {
      return v14;
    }

    v33 = v34;
    v28 = v34;
    if (v34)
    {
      v29 = heap_Calloc(*(a1 + 8), v34, 2);
      if (!v29)
      {
        return 2147491850;
      }
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v31 = 0;
      v32 = v35;
      do
      {
        *(v29 + 2 * v31) = *(v32 + 4 * v31);
        ++v31;
      }

      while (v31 < v28);
    }

    v25 = (*(a2 + 160))(a3, a4, a6, 5, v38, v29, &v33);
    if (v29)
    {
      heap_Free(*(a1 + 8), v29);
    }

    if (v35)
    {
      heap_Free(*(a1 + 8), v35);
    }
  }

  return v25;
}

uint64_t loc_exportWordRecordCommonFieldsToLingDB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7)
{
  v41 = 0;
  __s = 0;
  v44 = 0;
  v43 = 0;
  v12 = "PRIORITY";
  v42 = 0;
  v13 = &off_279DABCA8;
  v14 = 4;
  while (1)
  {
    v15 = *(v13 - 8);
    U32Attribute = LDOObject_GetU32Attribute(a5, v12, &v41, &v43);
    v17 = LH_ERROR_to_VERROR(U32Attribute);
    if ((v17 & 0x80000000) != 0)
    {
      break;
    }

    if (v41)
    {
      v17 = (*(a2 + 160))(a3, a4, a6, v15, 1, &v43, &v44);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }
    }

    v18 = *v13;
    v13 += 2;
    v12 = v18;
    if (!--v14)
    {
      v38 = a6;
      v19 = "PHON";
      v20 = &off_279DABCF8;
      v21 = 14;
      while (1)
      {
        v22 = *(v20 - 8);
        StringAttribute = LDOObject_GetStringAttribute(a5, v19, &v41, &__s);
        v17 = LH_ERROR_to_VERROR(StringAttribute);
        if ((v17 & 0x80000000) != 0)
        {
          break;
        }

        if (v41)
        {
          if ((!a7 || cstdlib_strcmp(v19, "PHON") && cstdlib_strcmp(v19, "MULTIPHON")) && cstdlib_strcmp(v19, "SPTCHK"))
          {
            v24 = *(a2 + 160);
            v25 = cstdlib_strlen(__s);
            v17 = v24(a3, a4, v38, v22, (v25 + 1), __s, &v44);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }
          }

          else
          {
            v26 = __s;
            v27 = cstdlib_strlen(__s);
            v28 = (v27 + 1);
            v46 = v27 + 1;
            v29 = heap_Calloc(*(a1 + 8), v28, 1);
            if (!v29)
            {
              return 2147491850;
            }

            v30 = v29;
            v17 = utf8_Utf8ToDepes(v26, v28, 0, v29, v28, &v46, 0);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v30[v46 - 1] = 0;
            v17 = (*(a2 + 320))(a3, a4, 1);
            if ((v17 & 0x80000000) != 0)
            {
              return v17;
            }

            v31 = *(a2 + 160);
            v32 = cstdlib_strlen(v30);
            v33 = v31(a3, a4, v38, v22, (v32 + 1), v30, &v44);
            heap_Free(*(a1 + 8), v30);
            if ((v33 & 0x80000000) != 0)
            {
              return v33;
            }
          }
        }

        v34 = *v20;
        v20 += 2;
        v19 = v34;
        if (!--v21)
        {
          ListU32Attribute = LDOObject_GetListU32Attribute(a5, "SGT", &v41, &v42, &v41 + 1);
          v33 = LH_ERROR_to_VERROR(ListU32Attribute);
          v36 = v42;
          if ((v33 & 0x80000000) == 0 && v41 && (v33 = (*(a2 + 160))(a3, a4, v38, 16, WORD2(v41), v42, &v44), v36 = v42, (v33 & 0x80000000) == 0) && v42 || v36)
          {
            heap_Free(*(a1 + 8), v36);
          }

          return v33;
        }
      }

      return v17;
    }
  }

  return v17;
}

uint64_t luavmldoutil_destroy_lua_vm(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  if (v3)
  {
    result = OOC_PlacementDeleteObject(result, v3);
    *a2 = 0;
  }

  return result;
}

uint64_t hlp_luavmldoutil_initialize_lua_vm(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, char *__src, unsigned int a8, int a9)
{
  v21 = 0;
  if (*a6)
  {
    OOC_PlacementDeleteObject(a3, *a6);
    *a6 = 0;
  }

  if (a9 == 1)
  {
    IsLuaCodeAvailable = LuaVMLDO_IsLuaCodeAvailable(a1, a2, __src, &v21);
    if (IsLuaCodeAvailable)
    {
      goto LABEL_7;
    }

    if (!v21)
    {
      v18 = 0;
      goto LABEL_10;
    }
  }

  v21 = 0;
  IsLuaCodeAvailable = PNEW_LuaVMLDO_Con(a3, a3, a1, a2, a5, a6);
  if (IsLuaCodeAvailable)
  {
    goto LABEL_7;
  }

  v20 = *a6;
  if (a9 != 1)
  {
    IsLuaCodeAvailable = LuaVMLDO_LoadScriptFromBuffer(v20, __src, a8);
    if (!IsLuaCodeAvailable)
    {
      goto LABEL_20;
    }

LABEL_7:
    if (IsLuaCodeAvailable == 1)
    {
      v18 = -2147475446;
    }

    else
    {
      v18 = -2147475456;
    }

    goto LABEL_10;
  }

  IsLuaCodeAvailable = LuaVMLDO_LoadScriptFromRIFF(v20, __src);
  if (IsLuaCodeAvailable)
  {
    goto LABEL_7;
  }

LABEL_20:
  result = LuaVMLDO_IsLuaFunctionAvailable(*a6, a4, &v21);
  if (result == 1)
  {
    v18 = -2147475446;
  }

  else
  {
    if (result)
    {
      v18 = -2147475456;
    }

    else
    {
      v18 = 0;
    }

    if (!result && v21)
    {
      return result;
    }
  }

LABEL_10:
  if (*a6)
  {
    OOC_PlacementDeleteObject(a3, *a6);
    *a6 = 0;
  }

  if (v18 < 0)
  {
    return v18;
  }

  else
  {
    return 2147491860;
  }
}

uint64_t LDO_ConFromNode(void *a1, uint64_t a2, uint64_t a3)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDO;
    a1[1] = a2;
    a1[2] = a3;
    result = PNEW_LDOLabelSet_Con(a2, a2, a1 + 4);
    if (!result)
    {
      v7 = a1[2];

      return LDOTreeNode_ComputeText(v7, a1 + 3);
    }
  }

  return result;
}

uint64_t LDO_ConFromText(void *a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDO;
    a1[1] = a2;
    result = PNEW_LDOString_ConFromCPtr(a2, a2, a3, a1 + 3);
    if (!result)
    {
      result = PNEW_LDOTreeNode_ConRoot(a1[1], a1[1], a3, a4, a5, a1 + 2);
      if (!result)
      {
        v11 = a1[1];

        return PNEW_LDOLabelSet_Con(v11, v11, a1 + 4);
      }
    }
  }

  return result;
}

uint64_t LDO_Des(uint64_t *a1)
{
  v2 = a1[3];
  if (!v2 || (result = OOC_PlacementDeleteObject(a1[1], v2), !result))
  {
    v4 = a1[2];
    if (!v4 || (result = OOC_PlacementDeleteObject(a1[1], v4), !result))
    {
      v5 = a1[4];
      if (!v5 || (result = OOC_PlacementDeleteObject(a1[1], v5), !result))
      {

        return Object_Des();
      }
    }
  }

  return result;
}

uint64_t LDO_AddLabel(uint64_t a1, char *a2, char *a3, uint64_t a4, void *a5)
{
  v15 = 0;
  if (((*(a4 + 16) - *(a4 + 8)) & 0x7FFFFFFF8) != 0 && LDOTreeNode_HaveSameParent(a4) == 1)
  {
    PNEW_LDOLabel_Con(*(a1 + 8), *(a1 + 8), a2, a3, a4, &v15);
    v11 = v15;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v14 = LDOLabelSet_AddLabel(*(a1 + 32), v15);
      v12 = v14;
      v11 = v15;
      if (a5 && !v14)
      {
        *a5 = v15;
        return v12;
      }
    }

    if (v12)
    {
      if (v11)
      {
        OOC_PlacementDeleteObject(*(a1 + 8), v11);
      }
    }

    return v12;
  }

  return err_GenerateErrorArg();
}

uint64_t LDO_AddLabelOnSubstring(uint64_t a1, char *a2, char *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v12 = LDO_ValidateIndices(a1, a4, a5, &v15 + 1, &v15, 0);
  if (v12)
  {
    return v12;
  }

  if (HIDWORD(v15) == v15)
  {
    return LDO_AddSpecialLabel(a1, a2, a3, &v15 + 1, &v15, a6);
  }

  v12 = LDO_ComputeLeafNodesByRange(a1, a4, a5, &v16);
  if (v12)
  {
    return v12;
  }

  v13 = LDO_AddLabel(a1, a2, a3, &v16, a6);
  LODWORD(v16) = 0;
  if (v17)
  {
    OOCAllocator_Free(*(a1 + 8), v17);
  }

  return v13;
}

uint64_t LDO_ValidateIndices(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  v17 = 0;
  LDOTreeNode_ComputeAbsoluteTo(*(a1 + 16), &v17);
  if (a2)
  {
    v11 = *a2;
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = &v17;
    }

    v13 = *v12;
    if (v11 > v13)
    {
      return err_GenerateErrorArg();
    }

    v15 = v17;
    if (v11 > v17)
    {
      return err_GenerateErrorArg();
    }
  }

  else
  {
    v11 = 0;
    if (a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = &v17;
    }

    v13 = *v14;
    v15 = v17;
  }

  if (v13 > v15)
  {
    return err_GenerateErrorArg();
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v13;
  }

  result = 0;
  if (a6)
  {
    *a6 = v15;
  }

  return result;
}

uint64_t LDO_AddSpecialLabel(uint64_t a1, char *a2, char *a3, unsigned int *a4, unsigned int *a5, void *a6)
{
  v16 = 0;
  v17 = 0;
  v10 = LDO_ValidateIndices(a1, a4, a5, &v16 + 1, &v16, 0);
  if (!v10)
  {
    PNEW_LDOLabel_ConSpecial(*(a1 + 8), *(a1 + 8), a2, a3, SHIDWORD(v16), v16, &v17);
    v13 = v17;
    if (v12)
    {
      v10 = v12;
    }

    else
    {
      v15 = LDOLabelSet_AddLabel(*(a1 + 32), v17);
      v10 = v15;
      v13 = v17;
      if (a6 && !v15)
      {
        *a6 = v17;
        return v10;
      }
    }

    if (v10)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v13);
    }
  }

  return v10;
}

uint64_t LDO_ComputeLeafNodesByRange(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned int *a4)
{
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  LDOTreeNode_ComputeAbsoluteTo(*(a1 + 16), &v25);
  if (a2)
  {
    LODWORD(a2) = *a2;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = &v25;
  }

  v9 = *v8;
  *a4 = 0;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  ErrorArg = LDOTreeNode_ComputeSubtreeNodes(*(a1 + 16), &v22);
  if (!ErrorArg)
  {
    if (a2 <= v9 && a2 <= v25 && v9 <= v25)
    {
      for (i = v23; i < v24; ++i)
      {
        v21 = *i;
        if (LDOTreeNode_IsLeaf(v21))
        {
          LDOTreeNode_ComputeAbsoluteFrom(v21, &v26);
          if (a2 <= v26)
          {
            LDOTreeNode_ComputeAbsoluteTo(v21, &v25 + 1);
            if (v9 >= HIDWORD(v25))
            {
              v13 = *(a4 + 1);
              v12 = *(a4 + 2);
              v14 = &v12[-v13];
              v15 = (&v12[-v13] >> 3) + 1;
              v16 = *a4;
              if (v15 > *a4)
              {
                v17 = 2 * v16;
                v18 = v16 + 1000000;
                if (v17 < v18)
                {
                  v18 = v17;
                }

                if (v18 > v15)
                {
                  v15 = v18;
                }

                if (v15 <= 8)
                {
                  v19 = 8;
                }

                else
                {
                  v19 = v15;
                }

                v20 = OOCAllocator_Realloc(*(a1 + 8), v13, 8 * v19, &ErrorArg);
                *(a4 + 1) = v20;
                if (ErrorArg)
                {
                  break;
                }

                *a4 = v19;
                v12 = (v20 + (v14 & 0x7FFFFFFF8));
                *(a4 + 2) = v12;
              }

              cstdlib_memcpy(v12, &v21, 8uLL);
              *(a4 + 2) += 8;
            }
          }
        }
      }
    }

    else
    {
      ErrorArg = err_GenerateErrorArg();
    }
  }

  LODWORD(v22) = 0;
  if (v23)
  {
    OOCAllocator_Free(*(a1 + 8), v23);
  }

  return ErrorArg;
}

uint64_t LDO_AppendNewNode(uint64_t a1, size_t a2, char *a3, char *a4, int a5, unsigned int a6, void *a7)
{
  v9 = 0;
  result = PNEW_LDOTreeNode_Con(*(a1 + 8), *(a1 + 8), a2, a3, a4, a5, a6, &v9);
  if (a7)
  {
    if (!result)
    {
      *a7 = v9;
    }
  }

  return result;
}

uint64_t LDO_ComputeLeafNodeContainingRange(uint64_t a1, _DWORD *a2, _DWORD *a3, size_t *a4)
{
  v4 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v18 = 0;
  *a4 = 0;
  if (*a2 != *a3)
  {
    v9 = LDO_ComputeLeafNodesByRange(a1, 0, 0, &v16);
    v10 = v17;
    if (v9)
    {
      goto LABEL_3;
    }

    v11 = v18;
    if (v17 < v18)
    {
      v12 = v17;
      while (1)
      {
        v13 = *v12;
        v9 = LDOTreeNode_ComputeAbsoluteFrom(*v12, &v15 + 1);
        if (v9)
        {
          break;
        }

        v9 = LDOTreeNode_ComputeAbsoluteTo(v13, &v15);
        if (v9)
        {
          break;
        }

        if (HIDWORD(v15) <= *a2 && v15 >= *a3)
        {
          v4 = 0;
          *a4 = v13;
          if (v10)
          {
            goto LABEL_13;
          }

          return v4;
        }

        if (++v12 >= v11)
        {
          goto LABEL_12;
        }
      }

LABEL_3:
      v4 = v9;
      if (!v10)
      {
        return v4;
      }

      goto LABEL_13;
    }

LABEL_12:
    v4 = 0;
    if (v10)
    {
LABEL_13:
      OOCAllocator_Free(*(a1 + 8), v10);
    }
  }

  return v4;
}

uint64_t LDO_FreeLDOTreeNodeVector(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return 0;
}

uint64_t LDO_ComputeNodesCoveredByLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  *(a3 + 8) = 0;
  v5 = (a3 + 8);
  *a3 = 0;
  *(a3 + 16) = 0;
  v7 = a2 + 72;
  v6 = *(a2 + 72);
  v8 = *(v7 + 8) - v6;
  if (!(v8 >> 3))
  {
    v10 = 0;
    goto LABEL_8;
  }

  if ((v8 >> 3) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8 >> 3;
  }

  v10 = OOCAllocator_Realloc(*(a1 + 8), 0, 8 * v9, &v13);
  *v5 = v10;
  v11 = v13;
  if (!v13)
  {
    *a3 = v9;
    *(a3 + 16) = v10;
    v6 = *(a2 + 72);
    v8 = *(a2 + 80) - v6;
LABEL_8:
    cstdlib_memcpy(v10, v6, v8 & 0x7FFFFFFF8);
    *(a3 + 16) += (*(a2 + 80) - *(a2 + 72)) & 0x7FFFFFFF8;
    return v13;
  }

  return v11;
}

uint64_t LDO_ComputeOverlappingLabels(uint64_t a1, unsigned int *a2, unsigned int *a3, int a4, unsigned int *a5)
{
  v9 = 0;
  result = LDO_ValidateIndices(a1, a2, a3, &v9 + 1, &v9, 0);
  if (!result)
  {
    return LDOLabelSet_ComputeOverlappingLabels(*(a1 + 32), HIDWORD(v9), v9, a4, a5);
  }

  return result;
}

uint64_t LDO_CountLeafNodesOnRange(uint64_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v8 = LDO_ComputeLeafNodesByRange(a1, a2, a3, &v12);
  if (v8)
  {
    v9 = v13;
    goto LABEL_3;
  }

  v9 = v13;
  v10 = (v14 - v13) >> 3;
  *a4 = v10;
  if (!a5 || !v10)
  {
LABEL_3:
    if (!v9)
    {
      return v8;
    }

    goto LABEL_8;
  }

  LDOTreeNode_ComputeAbsoluteFrom(*v9, a5);
LABEL_8:
  OOCAllocator_Free(*(a1 + 8), v9);
  return v8;
}

__n128 LDO_GetLabels@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v2 = *(a1 + 32);
  result = v2[1];
  *a2 = result;
  a2[1].n128_u64[0] = v2[2].n128_u64[0];
  return result;
}

uint64_t LDO_InsertNewNodeWithText(uint64_t a1, size_t a2, char *a3, char *a4, unsigned int a5, char *a6, uint64_t *a7)
{
  *v16 = 0;
  v10 = PNEW_LDOTreeNode_Con(*(a1 + 8), *(a1 + 8), a2, a3, a4, a5, a5, v16);
  if (v10)
  {
    return v10;
  }

  v12 = *v16;
  v13 = LDO_SetText(a1, *v16, a6);
  v11 = v13;
  if (!a7 || v13)
  {
    if (v12 && v13)
    {
      v14 = LDOObject_BorrowAllocator(v12);
      OOC_PlacementDeleteObject(v14, v12);
    }
  }

  else
  {
    *a7 = v12;
  }

  return v11;
}

uint64_t LDO_SetText(uint64_t a1, size_t a2, char *__s)
{
  v7 = 0;
  result = LDOTreeNode_ComputeUpdateInfo(a2, __s, &v7 + 1, &v7);
  if (!result)
  {
    result = LDOTreeNode_SetText(a2, __s);
    if (!result)
    {
      return LDOLabelSet_UpdateSpan(*(a1 + 32), HIDWORD(v7), v7);
    }
  }

  return result;
}

uint64_t LDO_ReplaceNodes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = 0;
  v26 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (((*(a2 + 16) - *(a2 + 8)) & 0x7FFFFFFF8) == 0 || LDOTreeNode_HaveSameParent(a2) != 1)
  {
    ErrorArg = err_GenerateErrorArg();
LABEL_24:
    v20 = ErrorArg;
    goto LABEL_25;
  }

  v6 = **(a2 + 8);
  v7 = *(v6 + 64);
  if (!v7)
  {
    v7 = *(a1 + 16);
  }

  v8 = *(v6 + 104);
  ErrorArg = LDOTreeNode_ComputeFromToIndices(a2, 1, &v26 + 1, &v26);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  ErrorArg = LDOTreeNode_ComputeVectorTextLength(a2, &v25 + 1);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  ErrorArg = LDOTreeNode_ComputeVectorTextLength(a3, &v25);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  v10 = v25;
  v11 = HIDWORD(v25);
  v13 = v26;
  v12 = HIDWORD(v26);
  ErrorArg = LDOLabelSet_ComputeContainedLabels(*(a1 + 32), HIDWORD(v26), v26, 0, &v22);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  ErrorArg = __LDO_UpdateOrthography(a2, a3, v7, v8);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  ErrorArg = LDOLabelSet_UpdateRegularLabels(*(a1 + 32), a2, a3);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  ErrorArg = LDOLabelSet_UpdateSpan(*(a1 + 32), HIDWORD(v26), v10 - v11);
  if (ErrorArg)
  {
    goto LABEL_24;
  }

  v15 = v23;
  v14 = v24;
  if (v23 < v24)
  {
    v16 = v13 + v10 - v11;
    do
    {
      v17 = *v15;
      if (*(*v15 + 112) == 1)
      {
        v18 = v17[22];
        v19 = v17[23];
        v17[22] = v12;
        if (v18 == v19)
        {
          v17[23] = v12;
        }

        else
        {
          v17[23] = v16;
        }
      }

      else
      {
        ErrorArg = LDOLabel_RemoveNodes(*v15, a2);
        if (ErrorArg)
        {
          goto LABEL_24;
        }

        ErrorArg = LDOLabel_AddNodes(v17, a3);
        if (ErrorArg)
        {
          goto LABEL_24;
        }

        v14 = v24;
      }

      v17[26] = 1;
      ++v15;
    }

    while (v15 < v14);
  }

  __LDO_DestroyLDOTreeNodeVector(a2);
  v20 = 0;
LABEL_25:
  LODWORD(v22) = 0;
  if (v23)
  {
    OOCAllocator_Free(*(a1 + 8), v23);
  }

  return v20;
}

uint64_t __LDO_UpdateOrthography(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22 = 0;
  v7 = *(a1 + 8);
  if (v7 >= *(a1 + 16))
  {
LABEL_5:
    for (i = *(a2 + 8); ; ++i)
    {
      if (i >= *(a2 + 16))
      {
        return 0;
      }

      v12 = *i;
      v13 = LDOTreeNode_ComputeText(*i, &v22);
      v14 = v22;
      if (v13)
      {
        break;
      }

      v15 = LHString_Length(v22);
      v16 = *(v12 + 96);
      if (v16)
      {
        v17 = LHString_Erase(v16);
        if (v17)
        {
          v13 = v17;
          v14 = v22;
          break;
        }
      }

      *(v12 + 104) = a4;
      *(v12 + 108) = a4;
      v13 = LDOTreeNode_AddChild(a3, v12);
      v14 = v22;
      if (v13)
      {
        break;
      }

      v18 = LHString_BorrowCPtr(v22);
      v13 = LDOTreeNode_SetText(v12, v18);
      v14 = v22;
      if (v13)
      {
        break;
      }

      if (v22)
      {
        v19 = LDOString_BorrowAllocator(v22);
        OOC_PlacementDeleteObject(v19, v22);
        v22 = 0;
      }

      a4 += v15;
    }

    if (v14)
    {
      v20 = LDOString_BorrowAllocator(v14);
      OOC_PlacementDeleteObject(v20, v22);
    }
  }

  else
  {
    while (1)
    {
      v9 = *v7;
      v10 = LDOTreeNode_SetText(*v7, "");
      if (v10)
      {
        return v10;
      }

      v10 = LDOTreeNode_RemoveChild(a3, v9);
      if (v10)
      {
        return v10;
      }

      if (++v7 >= *(a1 + 16))
      {
        goto LABEL_5;
      }
    }
  }

  return v13;
}

uint64_t __LDO_DestroyLDOTreeNodeVector(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 < *(result + 16))
  {
    v2 = result;
    do
    {
      v3 = *v1++;
      v4 = LDOObject_BorrowAllocator(v3);
      result = OOC_PlacementDeleteObject(v4, v3);
    }

    while (v1 < *(v2 + 16));
  }

  return result;
}

size_t LDO_ReplaceNodesUsingMapping(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 72);
  v3 = *(a2 + 80) - v2;
  if ((v3 & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  v5 = (v3 >> 3);
  while (1)
  {
    v6 = *v2;
    v11 = 0;
    v12 = 0;
    v15 = *(v6 + 72);
    v16 = *(v6 + 88);
    v13 = *(v6 + 96);
    v14 = *(v6 + 112);
    result = LDOTreeNode_ComputeVectorTextLength(&v15, &v11 + 1);
    if (result)
    {
      break;
    }

    result = LDOTreeNode_ComputeVectorTextLength(&v13, &v11);
    if (result)
    {
      break;
    }

    v8 = v11;
    v9 = HIDWORD(v11);
    ParentNode = LDOTreeNodeMappingItem_GetParentNode(v6);
    if (!ParentNode)
    {
      ParentNode = *(a1 + 16);
    }

    result = LDOTreeNodeMappingItem_GetPositions(v6, &v12, &v12 + 1);
    if (result)
    {
      break;
    }

    result = __LDO_UpdateOrthography(&v15, &v13, ParentNode, SHIDWORD(v12));
    if (result)
    {
      break;
    }

    result = LDOLabelSet_UpdateRegularLabels(*(a1 + 32), &v15, &v13);
    if (result)
    {
      break;
    }

    result = LDOLabelSet_UpdateSpan(*(a1 + 32), v12, v8 - v9);
    if (result)
    {
      break;
    }

    __LDO_DestroyLDOTreeNodeVector(&v15);
    ++v2;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t LDO_ReplaceNodesUsingMappingString(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = 0;
  v9 = 0;
  v25 = 0;
  __src = 0;
  v24 = 0;
  v22 = 0;
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  if (v11 < *(v10 + 32))
  {
    v12 = 0;
    v9 = 0;
    v8 = 0;
    do
    {
      v13 = *v11;
      __src = v13;
      if (*(v13 + 112) != 1)
      {
        v22 = 0;
        v25 = LDOLabel_ContainsAllNodes(v13, a2, &v22);
        if (v25)
        {
          goto LABEL_27;
        }

        if (v22 == 1)
        {
          v14 = &v8[-v9];
          v15 = (&v8[-v9] >> 3) + 1;
          if (v15 > v12)
          {
            v16 = 2 * v12;
            if (2 * v12 >= v12 + 1000000)
            {
              v16 = v12 + 1000000;
            }

            if (v16 > v15)
            {
              v15 = v16;
            }

            if (v15 <= 8)
            {
              v12 = 8;
            }

            else
            {
              v12 = v15;
            }

            v17 = OOCAllocator_Realloc(*(a1 + 8), v9, 8 * v12, &v25);
            v9 = v17;
            if (v25)
            {
              goto LABEL_27;
            }

            v8 = (v17 + (v14 & 0x7FFFFFFF8));
          }

          cstdlib_memcpy(v8, &__src, 8uLL);
          v8 += 8;
        }
      }

      ++v11;
    }

    while (v11 < *(*(a1 + 32) + 32));
  }

  v25 = PNEW_LDOTreeNodeMapping_ConEx(*(a1 + 8), *(a1 + 8), a2, a3, a4, &v24);
  if (!v25)
  {
    v25 = LDO_ReplaceNodesUsingMapping(a1, v24);
    if (!v25 && v9 < v8)
    {
      v18 = v9 + 8;
      do
      {
        __src = *(v18 - 8);
        v25 = LDOLabel_AddNodes(__src, a3);
        if (v25)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18 >= v8;
        }

        v18 += 8;
      }

      while (!v19);
    }
  }

LABEL_27:
  if (v9)
  {
    OOCAllocator_Free(*(a1 + 8), v9);
  }

  if (v24)
  {
    v20 = LDOObject_BorrowAllocator(v24);
    OOC_PlacementDeleteObject(v20, v24);
  }

  return v25;
}

uint64_t LDO_ToString(uint64_t a1, uint64_t *a2)
{
  v18 = 0;
  v4 = PNEW_LDOString_Con(*(a1 + 8), *(a1 + 8), a2);
  if (v4)
  {
    return v4;
  }

  v5 = *a2;
  appended = LHString_Append(v5, "LDO\n");
  if (!appended)
  {
    appended = LDOString_AppendPrefixStringSuffix(v5, "  Initial text: ", *(a1 + 24), "\n");
    if (!appended)
    {
      v10 = LDOTreeNode_ComputeText(*(a1 + 16), &v18);
      v11 = v18;
      if (v10)
      {
        goto LABEL_13;
      }

      v10 = LDOString_AppendPrefixStringSuffix(v5, "  Current text: ", v18, "\n");
      v11 = v18;
      if (v10)
      {
        goto LABEL_13;
      }

      if (v18)
      {
        v13 = LDOString_BorrowAllocator(v18);
        OOC_PlacementDeleteObject(v13, v18);
        v18 = 0;
      }

      v14 = *(a1 + 16);
      if (v14)
      {
        v10 = (*(*v14 + 24))(v14, &v18, v11);
        v11 = v18;
        if (v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v11 = 0;
      }

      v10 = LDOString_AppendPrefixStringSuffix(v5, "LDO Tree:\n", v11, "\n");
      v11 = v18;
      if (!v10)
      {
        if (v18)
        {
          v15 = LDOString_BorrowAllocator(v18);
          OOC_PlacementDeleteObject(v15, v18);
          v18 = 0;
        }

        v16 = *(a1 + 32);
        if (!v16)
        {
          v11 = 0;
LABEL_29:
          v4 = LDOString_AppendPrefixStringSuffix(v5, "LDO Labels:\n", v11, "\n");
          v11 = v18;
          if (!v4 && v18)
          {
            v17 = LDOString_BorrowAllocator(v18);
            OOC_PlacementDeleteObject(v17, v18);
            return 0;
          }

          goto LABEL_14;
        }

        v10 = LDOLabelSet_ToString(v16, &v18);
        v11 = v18;
        if (!v10)
        {
          goto LABEL_29;
        }
      }

LABEL_13:
      v4 = v10;
LABEL_14:
      if (v11)
      {
        v12 = LDOString_BorrowAllocator(v11);
        OOC_PlacementDeleteObject(v12, v18);
        v18 = 0;
      }

      goto LABEL_5;
    }
  }

  v4 = appended;
LABEL_5:
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = LDOString_BorrowAllocator(v5);
    OOC_PlacementDeleteObject(v8, v5);
  }

  return v4;
}

uint64_t PNEW_LDO_ConFromText(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 40, &v14);
  result = v14;
  if (!v14)
  {
    result = LDO_ConFromText(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t PNEW_LDO_ConFromNode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 40, &v10);
  result = v10;
  if (!v10)
  {
    result = LDO_ConFromNode(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t LDOTreeNodeMapping_Con(uint64_t a1, uint64_t a2)
{
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNodeMapping;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  return result;
}

uint64_t LDOTreeNodeMapping_ConEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v10 = LDOObject_Con(a1, a2);
  if (v10)
  {
    goto LABEL_2;
  }

  *a1 = &__LDOTreeNodeMapping;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  LODWORD(v28) = 0;
  v29 = 0;
  v30 = 0;
  if (((*(a3 + 16) - *(a3 + 8)) & 0x7FFFFFFF8) == 0)
  {
    goto LABEL_44;
  }

  if (!a5)
  {
    v39 = 0;
    v24 = LDOObject_BorrowAllocator(a1);
    v25 = PNEW_LDOTreeNodeMappingItem_ConEx(v24, v24, a3, a4, &v39);
    if (v25)
    {
      appended = v25;
    }

    else
    {
      appended = LDOTreeNodeMapping_AppendMappingItem(a1, v39);
      if (!appended)
      {
        goto LABEL_45;
      }
    }

    if (v39)
    {
      OOC_PlacementDeleteObject(v24, v39);
    }

LABEL_45:
    if (appended)
    {
      goto LABEL_3;
    }

    goto LABEL_38;
  }

  if (!cstdlib_strlen(a5))
  {
LABEL_44:
    appended = err_GenerateErrorArg();
    goto LABEL_45;
  }

  v10 = PNEW_LDOString_ConFromCPtr(a2, a2, a5, &v31);
  if (v10)
  {
    goto LABEL_2;
  }

  v10 = LDOString_SplitEx(v31, ";", &v28);
  if (v10)
  {
    goto LABEL_2;
  }

  __LDOTreeNodeMapping_AddRemoveMappedAttribute(a3, 1);
  if (v10)
  {
    goto LABEL_2;
  }

  __LDOTreeNodeMapping_AddRemoveMappedAttribute(a4, 1);
  if (v10)
  {
    goto LABEL_2;
  }

  v16 = v29;
  if (v29 < v30)
  {
    while (1)
    {
      v17 = *v16;
      v39 = 0;
      v36 = 0;
      v32 = 0;
      v33 = 0;
      v18 = LDOObject_BorrowAllocator(a1);
      LODWORD(v36) = 0;
      v37 = 0;
      v38 = 0;
      LODWORD(v33) = 0;
      v34 = 0;
      v35 = 0;
      LODWORD(v39) = 0;
      v40 = 0;
      v41 = 0;
      ErrorArg = LDOString_SplitEx(v17, ":", &v39);
      if (ErrorArg)
      {
        goto LABEL_23;
      }

      if (((v41 - v40) & 0x7FFFFFFF8) != 0x10)
      {
        break;
      }

      ErrorArg = __LDOTreeNodeMapping_ParseMappingItemPartString(a1, a3, *v40, &v36);
      if (ErrorArg)
      {
        goto LABEL_23;
      }

      ErrorArg = __LDOTreeNodeMapping_ParseMappingItemPartString(a1, a4, v40[1], &v33);
      if (ErrorArg)
      {
        goto LABEL_23;
      }

      v20 = PNEW_LDOTreeNodeMappingItem_ConEx(v18, v18, &v36, &v33, &v32);
      v21 = v32;
      if (v20)
      {
        appended = v20;
      }

      else
      {
        appended = LDOTreeNodeMapping_AppendMappingItem(a1, v32);
        v21 = v32;
      }

      if (appended && v21)
      {
        OOC_PlacementDeleteObject(v18, v21);
        v32 = 0;
      }

LABEL_24:
      LDOString_FreeAndDestroyLDOStringVector(v18, &v39);
      LODWORD(v33) = 0;
      if (v34)
      {
        OOCAllocator_Free(v18, v34);
        v34 = 0;
      }

      v35 = 0;
      LODWORD(v36) = 0;
      if (v37)
      {
        OOCAllocator_Free(v18, v37);
      }

      if (appended)
      {
        goto LABEL_3;
      }

      if (++v16 >= v30)
      {
        goto LABEL_50;
      }
    }

    ErrorArg = err_GenerateErrorArg();
LABEL_23:
    appended = ErrorArg;
    goto LABEL_24;
  }

LABEL_50:
  v10 = __LDOTreeNodeMapping_AppendMappingItemDeletedOldNodes(a1, a3);
  if (v10 || (v10 = __LDOTreeNodeMapping_AppendMappingItemUnmappedNewNodes(a1, a4), v10))
  {
LABEL_2:
    appended = v10;
    goto LABEL_3;
  }

  for (i = *(a3 + 8); i < *(a3 + 16); ++i)
  {
    v10 = LDOObject_RemoveAttribute(*i, "__MAPPED");
    if (v10)
    {
      goto LABEL_2;
    }
  }

  v27 = *(a4 + 8);
  if (v27 < *(a4 + 16))
  {
    while (1)
    {
      appended = LDOObject_RemoveAttribute(*v27, "__MAPPED");
      if (appended)
      {
        break;
      }

      if (++v27 >= *(a4 + 16))
      {
        goto LABEL_38;
      }
    }

LABEL_3:
    v12 = *(a1 + 72);
    if (!v12)
    {
      goto LABEL_38;
    }

    if (v12 >= *(a1 + 80))
    {
      *(a1 + 64) = 0;
    }

    else
    {
      do
      {
        v13 = LDOObject_BorrowAllocator(a1);
        v14 = *v12++;
        OOC_PlacementDeleteObject(v13, v14);
      }

      while (v12 < *(a1 + 80));
      v15 = *(a1 + 72);
      *(a1 + 64) = 0;
      if (!v15)
      {
        goto LABEL_37;
      }
    }

    v22 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v22, *(a1 + 72));
    *(a1 + 72) = 0;
LABEL_37:
    *(a1 + 80) = 0;
    goto LABEL_38;
  }

  appended = 0;
LABEL_38:
  LDOString_FreeAndDestroyLDOStringVector(a2, &v28);
  if (v31)
  {
    OOC_PlacementDeleteObject(a2, v31);
  }

  return appended;
}

void __LDOTreeNodeMapping_AddRemoveMappedAttribute(uint64_t a1, int a2)
{
  for (i = *(a1 + 8); i < *(a1 + 16); ++i)
  {
    v5 = *i;
    if (a2 == 1)
    {
      LDOObject_SetBoolAttribute(v5, "__MAPPED", 0);
      if (v6)
      {
        return;
      }
    }

    else if (LDOObject_RemoveAttribute(v5, "__MAPPED"))
    {
      return;
    }
  }
}

uint64_t __LDOTreeNodeMapping_AppendMappingItemDeletedOldNodes(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = *(a2 + 8);
  if (v5 >= *(a2 + 16))
  {
    return 0;
  }

  v6 = v4;
  while (1)
  {
    v7 = *v5;
    BoolAttribute = LDOObject_GetBoolAttribute(*v5, "__MAPPED", &v12 + 1, &v12);
    if (BoolAttribute)
    {
      break;
    }

    if (v12 != 1)
    {
      BoolAttribute = PNEW_LDOTreeNodeMappingItem_Con(v6, v6, &v11);
      if (BoolAttribute)
      {
        break;
      }

      BoolAttribute = LDOTreeNodeMappingItem_AppendOldNode(v11, v7);
      if (BoolAttribute)
      {
        break;
      }

      BoolAttribute = LDOTreeNodeMapping_AppendMappingItem(a1, v11);
      if (BoolAttribute)
      {
        break;
      }

      v11 = 0;
    }

    if (++v5 >= *(a2 + 16))
    {
      return 0;
    }
  }

  v9 = BoolAttribute;
  if (v11)
  {
    OOC_PlacementDeleteObject(v6, v11);
  }

  return v9;
}

uint64_t __LDOTreeNodeMapping_AppendMappingItemUnmappedNewNodes(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = *(a2 + 8);
  if (v5 >= *(a2 + 16))
  {
    return 0;
  }

  v6 = v4;
  for (i = -1; ; ++i)
  {
    v8 = *v5;
    BoolAttribute = LDOObject_GetBoolAttribute(*v5, "__MAPPED", &v14 + 1, &v14);
    if (BoolAttribute)
    {
      break;
    }

    if (v14 != 1)
    {
      if (i == -1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *(*(a2 + 8) + 8 * i);
      }

      BoolAttribute = PNEW_LDOTreeNodeMappingItem_ConUnmappedNewNode(v6, v6, v8, v10, &v13);
      if (BoolAttribute)
      {
        break;
      }

      BoolAttribute = LDOTreeNodeMapping_AppendMappingItem(a1, v13);
      if (BoolAttribute)
      {
        break;
      }

      v13 = 0;
    }

    if (++v5 >= *(a2 + 16))
    {
      return 0;
    }
  }

  v11 = BoolAttribute;
  if (v13)
  {
    OOC_PlacementDeleteObject(v6, v13);
  }

  return v11;
}

uint64_t LDOTreeNodeMapping_Des(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (v2 >= *(a1 + 80))
    {
      *(a1 + 64) = 0;
    }

    else
    {
      do
      {
        v3 = LDOObject_BorrowAllocator(a1);
        v4 = *v2++;
        OOC_PlacementDeleteObject(v3, v4);
      }

      while (v2 < *(a1 + 80));
      v5 = *(a1 + 72);
      *(a1 + 64) = 0;
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v6, *(a1 + 72));
    *(a1 + 72) = 0;
LABEL_8:
    *(a1 + 80) = 0;
  }

  return LDOObject_Des(a1);
}

uint64_t LDOTreeNodeMapping_AppendMappingItem(uint64_t a1, uint64_t a2)
{
  __src = a2;
  v14 = 0;
  v3 = *(a1 + 80);
  v4 = &v3[-*(a1 + 72)];
  v5 = (v4 >> 3) + 1;
  v6 = *(a1 + 64);
  if (v5 <= v6)
  {
    goto LABEL_11;
  }

  v7 = 2 * v6;
  v8 = v6 + 1000000;
  if (v7 < v8)
  {
    v8 = v7;
  }

  if (v8 > v5)
  {
    v5 = v8;
  }

  if (v5 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v5;
  }

  v10 = LDOObject_BorrowAllocator(a1);
  v11 = OOCAllocator_Realloc(v10, *(a1 + 72), 8 * v9, &v14);
  *(a1 + 72) = v11;
  v12 = v14;
  if (!v14)
  {
    *(a1 + 64) = v9;
    v3 = (v11 + (v4 & 0x7FFFFFFF8));
    *(a1 + 80) = v3;
LABEL_11:
    cstdlib_memcpy(v3, &__src, 8uLL);
    *(a1 + 80) += 8;
    return v14;
  }

  return v12;
}

uint64_t PNEW_LDOTreeNodeMapping_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 88, &v8);
  result = v8;
  if (!v8)
  {
    result = LDOObject_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOTreeNodeMapping;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNodeMapping_ConEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 88, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOTreeNodeMapping_ConEx(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t __LDOTreeNodeMapping_ParseMappingItemPartString(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  __src = 0;
  v7 = LDOObject_BorrowAllocator(a1);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  ErrorArg = LDOString_SplitEx(a3, ",", &v26);
  if (!ErrorArg)
  {
    v10 = v27;
    if (v27 < v28)
    {
      v11 = (v8 - v9) >> 3;
      while (1)
      {
        v12 = LDOString_ConvertToU32(*v10);
        if (v12 >= v11)
        {
          break;
        }

        v13 = *(*(a2 + 8) + 8 * v12);
        __src = v13;
        if (!v13)
        {
          break;
        }

        LDOObject_SetBoolAttribute(v13, "__MAPPED", 1);
        ErrorArg = v14;
        if (v14)
        {
          goto LABEL_20;
        }

        v16 = *(a4 + 1);
        v15 = *(a4 + 2);
        v17 = &v15[-v16];
        v18 = (&v15[-v16] >> 3) + 1;
        v19 = *a4;
        if (v18 > *a4)
        {
          v20 = 2 * v19;
          v21 = v19 + 1000000;
          if (v20 < v21)
          {
            v21 = v20;
          }

          if (v21 > v18)
          {
            v18 = v21;
          }

          if (v18 <= 8)
          {
            v22 = 8;
          }

          else
          {
            v22 = v18;
          }

          v23 = OOCAllocator_Realloc(v7, v16, 8 * v22, &ErrorArg);
          *(a4 + 1) = v23;
          if (ErrorArg)
          {
            goto LABEL_20;
          }

          *a4 = v22;
          v15 = (v23 + (v17 & 0x7FFFFFFF8));
          *(a4 + 2) = v15;
        }

        cstdlib_memcpy(v15, &__src, 8uLL);
        *(a4 + 2) += 8;
        if (++v10 >= v28)
        {
          goto LABEL_20;
        }
      }

      ErrorArg = err_GenerateErrorArg();
    }
  }

LABEL_20:
  LDOString_FreeAndDestroyLDOStringVector(v7, &v26);
  return ErrorArg;
}

double LDOLabel_Con(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5)
{
  if (!LDOObject_Con(a1, a2))
  {
    *a1 = &__LDOLabel;
    *(a1 + 112) = 0;
    if (!LDOObject_SetCategory(a1, a3) && !LDOObject_SetType(a1, a4))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      if (!LDOLabel_AddNodes(a1, a5) && !LDOTreeNode_ComputeFromToIndices(a5, 1, (a1 + 96), (a1 + 100)))
      {
        *&result = 1;
        *(a1 + 104) = 1;
      }
    }
  }

  return result;
}

uint64_t LDOLabel_AddNodes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_AddNode(a1, *v2);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a2 + 16))
    {
      return 0;
    }
  }

  return result;
}

double LDOLabel_ConSpecial(uint64_t a1, uint64_t a2, char *a3, char *a4, int a5, int a6)
{
  if (!LDOObject_Con(a1, a2))
  {
    *a1 = &__LDOLabel;
    *(a1 + 112) = 1;
    if (!LDOObject_SetCategory(a1, a3) && !LDOObject_SetType(a1, a4))
    {
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = a5;
      *(a1 + 92) = a6;
      *(a1 + 96) = a5;
      *(a1 + 100) = a6;
      *&result = 1;
      *(a1 + 104) = 1;
    }
  }

  return result;
}

uint64_t LDOLabel_Des(uint64_t a1)
{
  *(a1 + 64) = 0;
  if (*(a1 + 72))
  {
    v2 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v2, *(a1 + 72));
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0;

  return LDOObject_Des(a1);
}

uint64_t LDOLabel_AddNode(uint64_t a1, size_t a2)
{
  v23 = 0;
  if (*(a1 + 112) != 1)
  {
    v7 = a1 + 72;
    v5 = *(a1 + 72);
    v6 = *(v7 + 8);
    v8 = 0;
    v9 = v6 - v5;
    if (v6 != v5)
    {
      v10 = v9 >> 3;
      while (1)
      {
        v11 = v10 >> 1;
        v12 = LDOTreeNode_CompareToWithID(a2, *(*(a1 + 72) + 8 * v8 + 8 * (v10 >> 1)));
        if (v12 < 1)
        {
          v10 >>= 1;
          if ((v12 & 0x80000000) == 0)
          {
            v19 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          v8 += v11 + 1;
          v10 -= v11 + 1;
        }

        if (!v10)
        {
          v5 = *(a1 + 72);
          v6 = *(a1 + 80);
          v9 = v6 - v5;
          break;
        }
      }
    }

    v13 = v9 >> 3;
    if (*(a1 + 64) == (v9 >> 3) && v13 != -1)
    {
      v15 = 2 * v13;
      if (2 * v13 >= (v13 + 1000000))
      {
        v15 = v13 + 1000000;
      }

      if (v15 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16 <= 8)
      {
        v17 = 8;
      }

      else
      {
        v17 = v16;
      }

      v18 = LDOObject_BorrowAllocator(a1);
      v5 = OOCAllocator_Realloc(v18, *(a1 + 72), 8 * v17, &v23);
      *(a1 + 72) = v5;
      v19 = v23;
      if (v23)
      {
        return v19;
      }

      *(a1 + 64) = v17;
      v6 = v5 + (v9 & 0x7FFFFFFF8);
    }

    *(a1 + 80) = v6 + 8;
    v20 = (v9 >> 3);
    v21 = v20 > v8;
    v22 = v20 - v8;
    if (v21)
    {
      cstdlib_memmove((v5 + 8 * v8 + 8), (v5 + 8 * v8), 8 * v22);
      v5 = *(a1 + 72);
      v19 = v23;
    }

    else
    {
      v19 = 0;
    }

    *(v5 + 8 * v8) = a2;
LABEL_31:
    *(a1 + 104) = 1;
    return v19;
  }

  return err_GenerateErrorArg();
}

uint64_t LDOLabel_CompareTo(uint64_t a1, uint64_t a2)
{
  AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
  AbsoluteTo = LDOLabel_GetAbsoluteTo(a1);
  v6 = LDOLabel_GetAbsoluteFrom(a2);
  v7 = LDOLabel_GetAbsoluteTo(a2);
  if (AbsoluteTo >= v7)
  {
    v8 = AbsoluteTo > v7;
  }

  else
  {
    v8 = -1;
  }

  if (AbsoluteFrom <= v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (AbsoluteFrom >= v6)
  {
    return v9;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOLabel_GetAbsoluteFrom(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 112) == 1)
  {
    return *(a1 + 88);
  }

  v2 = *(a1 + 72);
  if (((*(a1 + 80) - v2) & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  LDOTreeNode_ComputeAbsoluteFrom(*v2, &v3);
  return v3;
}

uint64_t LDOLabel_GetAbsoluteTo(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 112) == 1)
  {
    return *(a1 + 92);
  }

  v2 = *(a1 + 80);
  if (((v2 - *(a1 + 72)) & 0x7FFFFFFF8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  LDOTreeNode_ComputeAbsoluteTo(*(v2 - 8), &v3);
  return v3;
}

uint64_t LDOLabel_CompareToWithID(uint64_t a1, uint64_t a2)
{
  result = LDOLabel_CompareTo(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t LDOLabel_ComputeText(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (!v5)
  {
    for (i = *(a1 + 72); ; ++i)
    {
      if (i >= *(a1 + 80))
      {
        return 0;
      }

      appended = LDOTreeNode_ComputeText(*i, &v11);
      v8 = v11;
      if (appended)
      {
        break;
      }

      appended = LDOString_AppendString(*a2, v11);
      v8 = v11;
      if (appended)
      {
        break;
      }

      v9 = OOC_PlacementDeleteObject(v4, v11);
      if (v9)
      {
        v5 = v9;
        v8 = v11;
        if (!v11)
        {
          return v5;
        }

LABEL_10:
        OOC_PlacementDeleteObject(v4, v8);
        return v5;
      }

      v11 = 0;
    }

    v5 = appended;
    if (!v8)
    {
      return v5;
    }

    goto LABEL_10;
  }

  return v5;
}

uint64_t LDOLabel_ContainsAllNodes(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (((v3 - v4) & 0x7FFFFFFF8) == 0)
  {
    return 0;
  }

  if (v4 >= v3)
  {
LABEL_6:
    result = 0;
    *a3 = 1;
  }

  else
  {
    while (1)
    {
      result = LDOLabel_ContainsNode(a1, *v4, a3);
      if (result)
      {
        break;
      }

      if (!*a3)
      {
        return 0;
      }

      if (++v4 >= *(a2 + 16))
      {
        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t LDOLabel_ContainsNode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 112) == 1)
  {

    return err_GenerateErrorArg();
  }

  else
  {
    *a3 = 0;
    v7 = *(a1 + 72);
    if (v7 < *(a1 + 80))
    {
      while (!LDOObject_IsEqual(a2, *v7))
      {
        if (++v7 >= *(a1 + 80))
        {
          return 0;
        }
      }

      *a3 = 1;
    }

    return 0;
  }
}

uint64_t LDOLabel_ContainsAtLeastOneNode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = *(a2 + 8);
  if (v3 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_ContainsNode(a1, *v3, a3);
    if (result)
    {
      break;
    }

    if (*a3 != 1 && ++v3 < *(a2 + 16))
    {
      continue;
    }

    return 0;
  }

  return result;
}

uint64_t LDOLabel_RemoveNode(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  if (*(a1 + 112) == 1)
  {

    return err_GenerateErrorArg();
  }

  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 >= v4)
  {
LABEL_10:
    if (((v4 - v5) & 0x7FFFFFFF8) == 0)
    {
      result = 0;
      *(a1 + 104) = 0;
      return result;
    }

    return 0;
  }

  v7 = 1;
  while (!LDOObject_IsEqual(a2, *v5))
  {
    ++v5;
    v4 = *(a1 + 80);
    ++v7;
    if (v5 >= v4)
    {
      v5 = *(a1 + 72);
      goto LABEL_10;
    }
  }

  v8 = *(a1 + 72);
  v9 = (*(a1 + 80) - v8) >> 3;
  cstdlib_memmove((v8 + 8 * (v7 - 1)), (v8 + 8 * (v7 - 1) + 8), 8 * (v9 - v7));
  v10 = *(a1 + 80) - 8;
  *(a1 + 80) = v10;
  v11 = v9 - 1;
  if (*(a1 + 64) < (3 * (v9 - 1)))
  {
    return 0;
  }

  v12 = *(a1 + 72);
  v13 = 2 * v11;
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = v13;
  }

  v15 = LDOObject_BorrowAllocator(a1);
  v16 = OOCAllocator_Realloc(v15, *(a1 + 72), 8 * v14, &v17);
  *(a1 + 72) = v16;
  result = v17;
  if (!v17)
  {
    *(a1 + 64) = v14;
    *(a1 + 80) = v16 + ((v10 - v12) & 0x7FFFFFFF8);
  }

  return result;
}

uint64_t LDOLabel_RemoveNodes(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(a2 + 16))
  {
    return 0;
  }

  while (1)
  {
    result = LDOLabel_RemoveNode(a1, *v2);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a2 + 16))
    {
      return 0;
    }
  }

  return result;
}

uint64_t LDOLabel_SetReferenceFrom(uint64_t a1, int a2)
{
  *(a1 + 96) = a2;
  *(a1 + 108) = 1;
  return 0;
}

uint64_t LDOLabel_SetReferenceTo(uint64_t a1, int a2)
{
  *(a1 + 100) = a2;
  *(a1 + 108) = 1;
  return 0;
}

uint64_t LDOLabel_ToString(unsigned int *a1, uint64_t *a2)
{
  v15 = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (!v5)
  {
    v6 = *a2;
    appended = LHString_Append(v6, "  LDOLabel\n");
    if (!appended)
    {
      appended = LDOObject_ToString(a1, &v15);
      if (!appended)
      {
        appended = LDOString_AppendString(v6, v15);
        if (!appended)
        {
          if (v15)
          {
            v8 = LDOString_BorrowAllocator(v15);
            OOC_PlacementDeleteObject(v8, v15);
            v15 = 0;
          }

          if (a1[26] == 1)
          {
            v9 = "  Is valid: LH_TRUE\n";
          }

          else
          {
            v9 = "  Is valid: LH_FALSE\n";
          }

          appended = LHString_Append(v6, v9);
          if (!appended)
          {
            AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
            appended = LDOString_AppendPrefixU32Suffix(v6, "  Absolute from: ", AbsoluteFrom, "\n");
            if (!appended)
            {
              AbsoluteTo = LDOLabel_GetAbsoluteTo(a1);
              appended = LDOString_AppendPrefixU32Suffix(v6, "  Absolute to: ", AbsoluteTo, "\n");
              if (!appended)
              {
                if (a1[27] == 1)
                {
                  appended = LHString_Append(v6, "  Has reference indices: LH_TRUE\n");
                  if (!appended)
                  {
                    appended = LDOString_AppendPrefixU32Suffix(v6, "  Reference from: ", a1[24], "\n");
                    if (!appended)
                    {
                      appended = LDOString_AppendPrefixU32Suffix(v6, "  Reference to: ", a1[25], "\n");
                    }
                  }
                }

                else
                {
                  appended = LHString_Append(v6, "  Has reference indices: LH_FALSE\n");
                }
              }
            }
          }
        }
      }
    }

    v5 = appended;
    if (v15)
    {
      v12 = LDOString_BorrowAllocator(v15);
      OOC_PlacementDeleteObject(v12, v15);
      v15 = 0;
    }

    if (v6 && v5)
    {
      v13 = LDOString_BorrowAllocator(v6);
      OOC_PlacementDeleteObject(v13, v6);
    }
  }

  return v5;
}

uint64_t LDOLabel_UpdateSpanLength(_DWORD *a1, unsigned int a2, int a3)
{
  if (a1[28] == 1)
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(a1);
    v7 = LDOLabel_GetAbsoluteTo(a1) + a3;
    if (LDOLabel_GetAbsoluteFrom(a1) > a2)
    {
      if (((AbsoluteFrom + a3) & 0x80000000) == 0)
      {
        a1[22] = AbsoluteFrom + a3;
LABEL_8:
        a1[23] = v7;
        return 0;
      }

LABEL_9:
      a1[26] = 0;
      return 0;
    }

    v8 = a1[22];
    if (v8 <= a2)
    {
      if ((v7 & 0x80000000) == 0 && v7 >= v8)
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  return 0;
}

void PNEW_LDOLabel_Con(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 120, &v14);
  if (!v14)
  {
    LDOLabel_Con(v12, a2, a3, a4, a5);
    v14 = v13;
    if (v13)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
    }

    else
    {
      *a6 = v12;
    }
  }
}

void PNEW_LDOLabel_ConSpecial(uint64_t a1, uint64_t a2, char *a3, char *a4, int a5, int a6, uint64_t *a7)
{
  v16 = 0;
  v14 = OOCAllocator_Malloc(a1, 120, &v16);
  if (!v16)
  {
    LDOLabel_ConSpecial(v14, a2, a3, a4, a5, a6);
    v16 = v15;
    if (v15)
    {
      OOCAllocator_Free(a1, v14);
      *a7 = 0;
    }

    else
    {
      *a7 = v14;
    }
  }
}

uint64_t LDOTreeNode_Con(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, int a6, unsigned int a7)
{
  v14 = a7;
  v15 = a6;
  v13 = 0;
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNode;
    *(a1 + 96) = 0;
    *(a1 + 64) = 0;
    result = __LDOTreeNode_ValidateIndices(a3, &v15, &v14, &v13 + 1, &v13);
    if (!result)
    {
      v12 = v13;
      *(a1 + 104) = HIDWORD(v13);
      *(a1 + 108) = v12;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      result = LDOObject_SetCategory(a1, a4);
      if (!result)
      {
        result = LDOObject_SetType(a1, a5);
        if (!result)
        {
          return LDOTreeNode_SetParent(a1, a3);
        }
      }
    }
  }

  return result;
}

uint64_t __LDOTreeNode_ValidateIndices(size_t a1, _DWORD *a2, unsigned int *a3, _DWORD *a4, unsigned int *a5)
{
  v19 = 0;
  v18 = 0;
  __LDOTreeNode_ComputeTextLength(a1, &v19);
  if (a2)
  {
    LODWORD(a2) = *a2;
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = &v19;
    }

    v11 = *v10;
    if (a2 > *v10)
    {
      goto LABEL_13;
    }

    v13 = v19;
    if (a2 > v19)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v12 = &v19;
    }

    v11 = *v12;
    v13 = v19;
  }

  if (v11 > v13)
  {
LABEL_13:
    ErrorArg = err_GenerateErrorArg();
    goto LABEL_14;
  }

  ErrorArg = LDOTreeNode_ComputeText(a1, &v18);
  if (!ErrorArg)
  {
    v17 = LHString_BorrowCPtr(v18);
    if (!LDOString_IsValidUTF8(v17, 0))
    {
      goto LABEL_13;
    }

    if (a4)
    {
      *a4 = a2;
    }

    ErrorArg = 0;
    if (a5)
    {
      *a5 = v11;
    }
  }

LABEL_14:
  if (v18)
  {
    v15 = LDOString_BorrowAllocator(v18);
    OOC_PlacementDeleteObject(v15, v18);
  }

  return ErrorArg;
}

uint64_t LDOTreeNode_SetParent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (!v4 || (result = LDOTreeNode_RemoveChild(v4, a1), !result))
  {
    if (a2)
    {

      return LDOTreeNode_AddChild(a2, a1);
    }

    else
    {
      result = 0;
      *(a1 + 64) = 0;
    }
  }

  return result;
}

uint64_t LDOTreeNode_ConEx(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, _DWORD *a6, unsigned int *a7)
{
  v15 = 0;
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNode;
    *(a1 + 96) = 0;
    *(a1 + 64) = 0;
    result = __LDOTreeNode_ValidateIndices(a3, a6, a7, &v15 + 1, &v15);
    if (!result)
    {
      v14 = v15;
      *(a1 + 104) = HIDWORD(v15);
      *(a1 + 108) = v14;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      result = LDOObject_SetCategory(a1, a4);
      if (!result)
      {
        result = LDOObject_SetType(a1, a5);
        if (!result)
        {
          return LDOTreeNode_SetParent(a1, a3);
        }
      }
    }
  }

  return result;
}

uint64_t LDOTreeNode_ConRoot(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5)
{
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNode;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    result = LDOObject_SetCategory(a1, a4);
    if (!result)
    {
      result = LDOObject_SetType(a1, a5);
      if (!result)
      {

        return LDOTreeNode_SetText(a1, a3);
      }
    }
  }

  return result;
}

uint64_t LDOTreeNode_SetText(uint64_t a1, char *a2)
{
  v27 = 0;
  v26 = 0;
  if (*(a1 + 80) != *(a1 + 88))
  {

    return err_GenerateErrorStateObjName();
  }

  v4 = a1;
  v5 = LDOObject_BorrowAllocator(a1);
  v6 = v5;
  if (*(v4 + 64))
  {
    memset(v23, 0, sizeof(v23));
    __LDOTreeNode_ComputeTextLength(v4, &v27);
    v7 = LDOString_ComputeCPtrLength(a2, 0, &v26);
    if (v7)
    {
      return v7;
    }

    v25 = 0;
    v8 = *(v4 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = v26 - v27;
      v11 = *(v4 + 64);
      v12 = v4;
      do
      {
        v9 += *(v12 + 104);
        v12 = v11;
        v11 = *(v11 + 64);
      }

      while (v11);
      v24 = v9 + v27;
      v25 = v9;
      v13 = v4;
      do
      {
        v4 = v8;
        v14 = *(v13 + 104);
        v15 = *(v13 + 108);
        v16 = *(v4 + 80);
        v17 = *(v4 + 88);
        while (v16 < v17)
        {
          v18 = *v16;
          v19 = *(*v16 + 104);
          if (v19 >= v14)
          {
            v20 = *(v18 + 108) + v10;
            *(v18 + 104) = v19 + v10;
            *(v18 + 108) = v20;
          }

          ++v16;
        }

        *(v13 + 104) = v14;
        *(v13 + 108) = v15 + v10;
        v8 = *(v4 + 64);
        v13 = v4;
      }

      while (v8);
    }

    else
    {
      v24 = v27;
    }

    v7 = LDOString_ConFromCPtr(v23, v6, a2);
    if (v7)
    {
      return v7;
    }

    v22 = LDOString_ReplaceSubstring(*(v4 + 96), &v25, &v24, v23);
    if (!v22)
    {
      *(v4 + 104) = 0;
      *(v4 + 108) = LHString_Length(*(v4 + 96));
    }

    (*(*&v23[0] + 16))(v23);
    return v22;
  }

  if (*(v4 + 96))
  {
    if (!LDOString_IsValidUTF8(a2, 0))
    {

      return err_GenerateErrorArg();
    }

    v21 = LHString_SetContentFromCPtr(*(v4 + 96), a2);
  }

  else
  {
    v21 = PNEW_LDOString_ConFromCPtr(v5, v5, a2, (v4 + 96));
  }

  v22 = v21;
  if (v21)
  {
    return v22;
  }

  *(v4 + 104) = 0;

  return LDOString_ComputeCPtrLength(a2, 0, (v4 + 108));
}

uint64_t LDOTreeNode_Des(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = LDOString_BorrowAllocator(v2);
    result = OOC_PlacementDeleteObject(v3, *(a1 + 96));
    if (result)
    {
      return result;
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    if (v5 >= *(a1 + 88))
    {
      *(a1 + 72) = 0;
    }

    else
    {
      do
      {
        v6 = LDOObject_BorrowAllocator(a1);
        v7 = *v5++;
        OOC_PlacementDeleteObject(v6, v7);
      }

      while (v5 < *(a1 + 88));
      v8 = *(a1 + 80);
      *(a1 + 72) = 0;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    v9 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v9, *(a1 + 80));
    *(a1 + 80) = 0;
LABEL_10:
    *(a1 + 88) = 0;
  }

  return LDOObject_Des(a1);
}

uint64_t LDOTreeNode_AddChild(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = 0;
  v7 = v5 - v4;
  if (v5 != v4)
  {
    v8 = v7 >> 3;
    do
    {
      v9 = v8 >> 1;
      v10 = __LDOTreeNode_CompareToWithIDRelativeToParent(a2, *(v4 + 8 * v6 + 8 * (v8 >> 1)));
      if (v10 < 1)
      {
        v8 >>= 1;
        if ((v10 & 0x80000000) == 0)
        {
          result = 0;
          goto LABEL_26;
        }
      }

      else
      {
        v6 += v9 + 1;
        v8 -= v9 + 1;
      }
    }

    while (v8);
  }

  v11 = v7 >> 3;
  if (*(a1 + 72) == (v7 >> 3) && v11 != -1)
  {
    v13 = 2 * v11;
    if (2 * v11 >= (v11 + 1000000))
    {
      v13 = v11 + 1000000;
    }

    if (v13 <= v11 + 1)
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = v13;
    }

    if (v14 <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = v14;
    }

    v16 = LDOObject_BorrowAllocator(a1);
    v4 = OOCAllocator_Realloc(v16, *(a1 + 80), 8 * v15, &v21);
    *(a1 + 80) = v4;
    result = v21;
    if (v21)
    {
      return result;
    }

    *(a1 + 72) = v15;
    v5 = v4 + (v7 & 0x7FFFFFFF8);
  }

  *(a1 + 88) = v5 + 8;
  v18 = (v7 >> 3);
  v19 = v18 > v6;
  v20 = v18 - v6;
  if (v19)
  {
    cstdlib_memmove((v4 + 8 * v6 + 8), (v4 + 8 * v6), 8 * v20);
    v4 = *(a1 + 80);
    result = v21;
  }

  else
  {
    result = 0;
  }

  *(v4 + 8 * v6) = a2;
LABEL_26:
  *(a2 + 64) = a1;
  return result;
}

uint64_t __LDOTreeNode_CompareToWithIDRelativeToParent(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[26];
  v3 = a2[26];
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = a1[27];
  v6 = a2[27];
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = a1[4];
  v8 = a2[4];
  v9 = v7 >= v8;
  v10 = v7 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOTreeNode_CompareTo(size_t a1, size_t a2)
{
  v10 = 0;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 0;
    v5 = a1;
    do
    {
      v4 += *(v5 + 104);
      v5 = v3;
      v3 = *(v3 + 64);
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(a2 + 64);
  if (v6)
  {
    v7 = 0;
    v8 = a2;
    do
    {
      v7 += *(v8 + 104);
      v8 = v6;
      v6 = *(v6 + 64);
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if (v4 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 > v7)
  {
    return 1;
  }

  LDOTreeNode_ComputeAbsoluteTo(a1, &v10 + 1);
  LDOTreeNode_ComputeAbsoluteTo(a2, &v10);
  if (HIDWORD(v10) >= v10)
  {
    return HIDWORD(v10) > v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t LDOTreeNode_ComputeAbsoluteFrom(uint64_t a1, _DWORD *a2)
{
  *a2 = 0;
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = 0;
    do
    {
      v3 += *(a1 + 104);
      *a2 = v3;
      a1 = v2;
      v2 = *(v2 + 64);
    }

    while (v2);
  }

  return 0;
}

uint64_t LDOTreeNode_ComputeAbsoluteTo(size_t a1, _DWORD *a2)
{
  v3 = a1;
  v7 = 0;
  __LDOTreeNode_ComputeTextLength(a1, &v7);
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = 0;
    do
    {
      v5 += *(v3 + 104);
      v3 = v4;
      v4 = *(v4 + 64);
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v7 + v5;
  return 0;
}

uint64_t LDOTreeNode_CompareToWithID(size_t a1, size_t a2)
{
  result = LDOTreeNode_CompareTo(a1, a2);
  if (!result)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    v7 = v5 >= v6;
    v8 = v5 > v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

size_t __LDOTreeNode_ComputeTextLength(size_t result, _DWORD *a2)
{
  *a2 = 0;
  if (result)
  {
    if (*(result + 64))
    {
      v3 = *(result + 104);
      v4 = *(result + 108);
      result = v4 - v3;
      if (v4 < v3)
      {
        return result;
      }
    }

    else
    {
      result = *(result + 96);
      if (!result)
      {
        return result;
      }

      result = LHString_Length(result);
    }

    *a2 = result;
  }

  return result;
}

uint64_t LDOTreeNode_ComputeFromToIndices(uint64_t a1, int a2, unsigned int *a3, unsigned int *a4)
{
  v22 = 0;
  v4 = *(a1 + 8);
  if (((*(a1 + 16) - v4) & 0x7FFFFFFF8) != 0)
  {
    if (a2 == 1)
    {
      v9 = *v4;
      v10 = *(*v4 + 64);
      if (v10)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v11 += *(v12 + 104);
          v12 = v10;
          v10 = *(v10 + 64);
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      LDOTreeNode_ComputeAbsoluteTo(v9, &v22 + 1);
      v14 = *(a1 + 8);
      v13 = HIDWORD(v22);
LABEL_15:
      v16 = *(a1 + 16);
      while (v14 < v16)
      {
        v17 = *v14;
        if (a2 == 1)
        {
          v18 = *(v17 + 64);
          if (v18)
          {
            v19 = 0;
            v20 = *v14;
            do
            {
              v19 += *(v20 + 104);
              v20 = v18;
              v18 = *(v18 + 64);
            }

            while (v18);
          }

          else
          {
            v19 = 0;
          }

          LDOTreeNode_ComputeAbsoluteTo(v17, &v22);
          v21 = v22;
          v16 = *(a1 + 16);
        }

        else
        {
          v19 = *(v17 + 104);
          v21 = *(v17 + 108);
          LODWORD(v22) = v21;
        }

        if (v19 < v11)
        {
          v11 = v19;
        }

        if (v21 > v13)
        {
          v13 = v21;
        }

        ++v14;
      }

      if (a3)
      {
        *a3 = v11;
      }

      if (a4)
      {
        *a4 = v13;
      }

      return 0;
    }

    if (LDOTreeNode_HaveSameParent(a1) == 1)
    {
      v13 = 0;
      v11 = 0;
      v14 = *(a1 + 8);
      LODWORD(v22) = *(*v14 + 108);
      goto LABEL_15;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t LDOTreeNode_HaveSameParent(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (((v1 - v2) & 0x7FFFFFFF8) == 0)
  {
    return 1;
  }

  v3 = *(*v2 + 64);
  if (!v3)
  {
    while (v2 < v1)
    {
      if (*(*v2 + 64))
      {
        return 0;
      }

      v2 += 8;
    }

    return 1;
  }

  if (v2 >= v1)
  {
    return 1;
  }

  while (1)
  {
    v5 = *(*v2 + 64);
    if (!v5 || !LDOObject_IsEqual(v3, v5))
    {
      break;
    }

    v2 += 8;
    if (v2 >= *(a1 + 16))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t LDOTreeNode_ComputeIndexInParent(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    return __LDOTreeNode_ComputeChildIndex(v4, a1, a2);
  }

  else
  {
    return err_GenerateErrorStateObjName();
  }
}

uint64_t __LDOTreeNode_ComputeChildIndex(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *(a1 + 80);
  v4 = *(a1 + 88) - v3;
  if (v4)
  {
    v7 = 0;
    v8 = v4 >> 3;
    do
    {
      v9 = v8 >> 1;
      v10 = __LDOTreeNode_CompareToWithIDRelativeToParent(a2, *(v3 + 8 * v7 + 8 * (v8 >> 1)));
      if (v10 < 1)
      {
        if ((v10 & 0x80000000) == 0)
        {
          *a3 = v9 + v7;
          return 0;
        }
      }

      else
      {
        v7 += v9 + 1;
        v9 = v8 - (v9 + 1);
      }

      v8 = v9;
    }

    while (v9);
  }

  return err_GenerateErrorArg();
}

uint64_t LDOTreeNode_ComputeRoot(uint64_t result, void *a2)
{
  do
  {
    v2 = result;
    result = *(result + 64);
  }

  while (result);
  *a2 = v2;
  return result;
}

uint64_t LDOTreeNode_ComputeSubtreeNodes(uint64_t a1, uint64_t a2)
{
  __src = a1;
  v63 = 0;
  v62 = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = (a2 + 8);
  *(a2 + 16) = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = OOCAllocator_Realloc(v4, 0, 64, &v63);
  v6 = v5;
  v7 = v63 == 0;
  if (v63)
  {
    goto LABEL_2;
  }

  v10 = v5;
  cstdlib_memcpy(v5, &__src, 8uLL);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = 0;
  v14 = v12 - v11;
  if (v12 == v11)
  {
    goto LABEL_15;
  }

  v15 = v14 >> 3;
  do
  {
    v16 = v15 >> 1;
    v17 = __src;
    v18 = *(*v3 + 8 * v13 + 8 * (v15 >> 1));
    v19 = LDOTreeNode_CompareTo(__src, v18);
    if (!v19)
    {
      v20 = *(v17 + 16);
      v21 = *(v18 + 16);
      if (v20 < v21)
      {
        goto LABEL_13;
      }

      v19 = v20 > v21;
    }

    if (v19 < 1)
    {
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 += v16 + 1;
      v16 = v15 - (v16 + 1);
    }

LABEL_13:
    v15 = v16;
  }

  while (v16);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v14 = v12 - v11;
LABEL_15:
  v22 = v14 >> 3;
  if (*a2 == (v14 >> 3) && v22 != -1)
  {
    v24 = 2 * v22;
    if (2 * v22 >= (v22 + 1000000))
    {
      v24 = v22 + 1000000;
    }

    if (v24 <= v22 + 1)
    {
      v25 = v22 + 1;
    }

    else
    {
      v25 = v24;
    }

    if (v25 <= 8)
    {
      v26 = 8;
    }

    else
    {
      v26 = v25;
    }

    v27 = LDOObject_BorrowAllocator(__src);
    v11 = OOCAllocator_Realloc(v27, *v3, 8 * v26, &v63);
    *v3 = v11;
    if (v63)
    {
      v6 = v10;
      goto LABEL_2;
    }

    *a2 = v26;
    v12 = v11 + (v14 & 0x7FFFFFFF8);
  }

  *(a2 + 16) = v12 + 8;
  v28 = (v14 >> 3);
  v29 = v28 > v13;
  v30 = v28 - v13;
  if (v29)
  {
    cstdlib_memmove((v11 + 8 * v13 + 8), (v11 + 8 * v13), 8 * v30);
    v11 = *v3;
  }

  *(v11 + 8 * v13) = __src;
LABEL_34:
  v31 = 0;
  v32 = 8 * v7;
  v6 = v10;
  v33 = v10 + 8;
  while (1)
  {
    v59 = v31;
    v60 = *(v6 + 8 * v31);
    v34 = *(v60 + 80);
    if (v34 < *(v60 + 88))
    {
      break;
    }

LABEL_75:
    v31 = v59 + 1;
    if (v59 + 1 >= (&v33[-v6] >> 3))
    {
      goto LABEL_2;
    }
  }

  while (2)
  {
    v62 = *v34;
    v35 = &v33[-v6];
    v36 = (&v33[-v6] >> 3) + 1;
    if (v36 > v32)
    {
      v37 = 2 * v32;
      if (2 * v32 >= v32 + 1000000)
      {
        v37 = v32 + 1000000;
      }

      if (v37 > v36)
      {
        v36 = v37;
      }

      if (v36 <= 8)
      {
        v32 = 8;
      }

      else
      {
        v32 = v36;
      }

      v38 = LDOObject_BorrowAllocator(__src);
      v39 = OOCAllocator_Realloc(v38, v6, 8 * v32, &v63);
      v6 = v39;
      if (v63)
      {
        goto LABEL_2;
      }

      v33 = (v39 + (v35 & 0x7FFFFFFF8));
    }

    v61 = v6;
    cstdlib_memcpy(v33, &v62, 8uLL);
    v40 = *(a2 + 8);
    v41 = *(a2 + 16);
    v42 = 0;
    v43 = v41 - v40;
    if (v41 == v40)
    {
      goto LABEL_56;
    }

    v44 = v43 >> 3;
    while (2)
    {
      v45 = v44 >> 1;
      v46 = v62;
      v47 = *(*v3 + 8 * v42 + 8 * (v44 >> 1));
      v48 = LDOTreeNode_CompareTo(v62, v47);
      if (v48)
      {
LABEL_51:
        if (v48 < 1)
        {
          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v42 += v45 + 1;
          v45 = v44 - (v45 + 1);
        }
      }

      else
      {
        v49 = *(v46 + 16);
        v50 = *(v47 + 16);
        if (v49 >= v50)
        {
          v48 = v49 > v50;
          goto LABEL_51;
        }
      }

      v44 = v45;
      if (v45)
      {
        continue;
      }

      break;
    }

    v40 = *(a2 + 8);
    v41 = *(a2 + 16);
    v43 = v41 - v40;
LABEL_56:
    v51 = v43 >> 3;
    if (*a2 != (v43 >> 3) || v51 == -1)
    {
LABEL_70:
      *(a2 + 16) = v41 + 8;
      v57 = (v43 >> 3);
      v29 = v57 > v42;
      v58 = v57 - v42;
      if (v29)
      {
        cstdlib_memmove((v40 + 8 * v42 + 8), (v40 + 8 * v42), 8 * v58);
        v40 = *v3;
      }

      *(v40 + 8 * v42) = v62;
LABEL_74:
      v33 += 8;
      ++v34;
      v6 = v61;
      if (v34 < *(v60 + 88))
      {
        continue;
      }

      goto LABEL_75;
    }

    break;
  }

  v53 = 2 * v51;
  if (2 * v51 >= (v51 + 1000000))
  {
    v53 = v51 + 1000000;
  }

  if (v53 <= v51 + 1)
  {
    v54 = v51 + 1;
  }

  else
  {
    v54 = v53;
  }

  if (v54 <= 8)
  {
    v55 = 8;
  }

  else
  {
    v55 = v54;
  }

  v56 = LDOObject_BorrowAllocator(__src);
  v40 = OOCAllocator_Realloc(v56, *v3, 8 * v55, &v63);
  *v3 = v40;
  if (!v63)
  {
    *a2 = v55;
    v41 = v40 + (v43 & 0x7FFFFFFF8);
    goto LABEL_70;
  }

  v6 = v61;
LABEL_2:
  if (v6)
  {
    v8 = LDOObject_BorrowAllocator(__src);
    OOCAllocator_Free(v8, v6);
  }

  return v63;
}

uint64_t LDOTreeNode_ComputeText(size_t a1, void *a2)
{
  v12 = 0;
  v4 = a1;
  do
  {
    v5 = v4;
    v4 = *(v4 + 64);
  }

  while (v4);
  v6 = LDOObject_BorrowAllocator(a1);
  v7 = v6;
  if (*(v5 + 96))
  {
    v13 = 0;
    v8 = *(a1 + 64);
    if (v8)
    {
      v9 = 0;
      v10 = a1;
      do
      {
        v9 += *(v10 + 104);
        v10 = v8;
        v8 = *(v8 + 64);
      }

      while (v8);
      v13 = v9;
    }

    LDOTreeNode_ComputeAbsoluteTo(a1, &v12);
    return PNEW_LDOString_ConFromStringSubstring(v7, v7, *(v5 + 96), &v13, &v12, a2);
  }

  else
  {

    return PNEW_LDOString_Con(v6, v6, a2);
  }
}

uint64_t LDOTreeNode_ComputeUpdateInfo(size_t a1, char *__s, _DWORD *a3, _DWORD *a4)
{
  v11 = 0;
  if (LDOString_IsValidUTF8(__s, 0))
  {
    result = LDOString_ComputeCPtrLength(__s, 0, &v11);
    if (!result)
    {
      __LDOTreeNode_ComputeTextLength(a1, &v11 + 1);
      *a3 = 0;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = 0;
        do
        {
          v10 += *(a1 + 104);
          *a3 = v10;
          a1 = v9;
          v9 = *(v9 + 64);
        }

        while (v9);
      }

      result = 0;
      *a4 = v11 - HIDWORD(v11);
    }
  }

  else
  {

    return err_GenerateErrorArg();
  }

  return result;
}

uint64_t LDOTreeNode_ComputeVectorTextLength(uint64_t a1, _DWORD *a2)
{
  v3 = 0;
  v11 = 0;
  *a2 = 0;
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
LABEL_7:
    v6 = 0;
    *a2 = v3;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v6 = LDOTreeNode_ComputeText(*v4, &v11);
      if (v6)
      {
        break;
      }

      v7 = LHString_Length(v11);
      if (v11)
      {
        v8 = LDOString_BorrowAllocator(v11);
        OOC_PlacementDeleteObject(v8, v11);
        v11 = 0;
      }

      v3 += v7;
      if (++v4 >= *(a1 + 16))
      {
        goto LABEL_7;
      }
    }

    if (v11)
    {
      v10 = LDOString_BorrowAllocator(v11);
      OOC_PlacementDeleteObject(v10, v11);
    }
  }

  return v6;
}

uint64_t LDOTreeNode_DestroyChildrenMatchingCondition(uint64_t a1, uint64_t (*a2)(void, uint64_t *))
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  ChildrenMatchingCondition = LDOTreeNode_FindChildrenMatchingCondition(a1, a2, &v12);
  v4 = v13;
  if (!ChildrenMatchingCondition)
  {
    v8 = v14;
    if (v13 >= v14)
    {
LABEL_9:
      v5 = 0;
      if (!v4)
      {
        return v5;
      }

      goto LABEL_3;
    }

    v9 = v13;
    while (1)
    {
      ChildrenMatchingCondition = LDOTreeNode_RemoveChild(a1, *v9);
      if (ChildrenMatchingCondition)
      {
        break;
      }

      v10 = LDOObject_BorrowAllocator(a1);
      v11 = *v9++;
      OOC_PlacementDeleteObject(v10, v11);
      if (v9 >= v8)
      {
        goto LABEL_9;
      }
    }
  }

  v5 = ChildrenMatchingCondition;
  if (v4)
  {
LABEL_3:
    v6 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v6, v4);
  }

  return v5;
}

uint64_t LDOTreeNode_FindChildrenMatchingCondition(uint64_t a1, uint64_t (*a2)(void, uint64_t *), unsigned int *a3)
{
  v17 = 0;
  if (*(a3 + 1) == *(a3 + 2))
  {
    v5 = *(a1 + 80);
    if (v5 >= *(a1 + 88))
    {
      return 0;
    }

    while (a2)
    {
      result = a2(*v5, &v17);
      HIDWORD(v17) = result;
      if (result)
      {
        return result;
      }

      if (v17)
      {
        goto LABEL_11;
      }

LABEL_22:
      if (++v5 >= *(a1 + 88))
      {
        return HIDWORD(v17);
      }
    }

    LODWORD(v17) = 1;
LABEL_11:
    v8 = *(a3 + 2);
    v9 = &v8[-*(a3 + 1)];
    v10 = (v9 >> 3) + 1;
    v11 = *a3;
    if (v10 > *a3)
    {
      v12 = 2 * v11;
      v13 = v11 + 1000000;
      if (v12 < v13)
      {
        v13 = v12;
      }

      if (v13 > v10)
      {
        v10 = v13;
      }

      if (v10 <= 8)
      {
        v14 = 8;
      }

      else
      {
        v14 = v10;
      }

      v15 = LDOObject_BorrowAllocator(a1);
      v16 = OOCAllocator_Realloc(v15, *(a3 + 1), 8 * v14, &v17 + 1);
      *(a3 + 1) = v16;
      result = HIDWORD(v17);
      if (HIDWORD(v17))
      {
        return result;
      }

      *a3 = v14;
      v8 = (v16 + (v9 & 0x7FFFFFFF8));
      *(a3 + 2) = v8;
    }

    cstdlib_memcpy(v8, v5, 8uLL);
    *(a3 + 2) += 8;
    goto LABEL_22;
  }

  return err_GenerateErrorArg();
}

uint64_t LDOTreeNode_RemoveChild(uint64_t a1, _DWORD *a2)
{
  v5 = 0;
  result = __LDOTreeNode_ComputeChildIndex(a1, a2, &v5);
  if (!result)
  {
    v4 = v5;

    return LDOTreeNode_RemoveChildAtIndex(a1, v4);
  }

  return result;
}

uint64_t LDOTreeNode_GetNextSibling(uint64_t a1, void *a2)
{
  v6 = 0;
  *a2 = 0;
  result = *(a1 + 64);
  if (result)
  {
    result = __LDOTreeNode_ComputeChildIndex(result, a1, &v6);
    if (!result)
    {
      v5 = *(*(a1 + 64) + 80);
      result = 0;
      if (v6 + 1 < ((*(*(a1 + 64) + 88) - v5) >> 3))
      {
        *a2 = *(v5 + 8 * (v6 + 1));
      }
    }
  }

  return result;
}

uint64_t LDOTreeNode_GetPreviousSibling(uint64_t a1, void *a2)
{
  v6 = 0;
  *a2 = 0;
  result = *(a1 + 64);
  if (result)
  {
    result = __LDOTreeNode_ComputeChildIndex(result, a1, &v6);
    if (result)
    {
      v5 = 1;
    }

    else
    {
      v5 = v6 == 0;
    }

    if (!v5)
    {
      result = 0;
      *a2 = *(*(*(a1 + 64) + 80) + 8 * (v6 - 1));
    }
  }

  return result;
}

uint64_t LDOTreeNode_RemoveChildAtIndex(uint64_t a1, unsigned int a2)
{
  v13 = 0;
  v3 = *(a1 + 80);
  v4 = (*(a1 + 88) - v3) >> 3;
  cstdlib_memmove((v3 + 8 * a2), (v3 + 8 * a2 + 8), 8 * (v4 + ~a2));
  result = 0;
  v6 = *(a1 + 88) - 8;
  *(a1 + 88) = v6;
  v7 = v4 - 1;
  if (*(a1 + 72) >= (3 * (v4 - 1)))
  {
    v8 = *(a1 + 80);
    v9 = 2 * v7;
    if (v9 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = v9;
    }

    v11 = LDOObject_BorrowAllocator(a1);
    v12 = OOCAllocator_Realloc(v11, *(a1 + 80), 8 * v10, &v13);
    *(a1 + 80) = v12;
    result = v13;
    if (!v13)
    {
      *(a1 + 72) = v10;
      *(a1 + 88) = v12 + ((v6 - v8) & 0x7FFFFFFF8);
    }
  }

  return result;
}

uint64_t LDOTreeNode_ToString(size_t a1, uint64_t *a2)
{
  v16 = 0;
  v4 = LDOObject_BorrowAllocator(a1);
  v5 = PNEW_LDOString_Con(v4, v4, a2);
  if (v5)
  {
    return v5;
  }

  v6 = *a2;
  appended = LHString_Append(v6, "  LDOTreeNode\n");
  if (!appended)
  {
    appended = LDOObject_ToString(a1, &v16);
    if (!appended)
    {
      appended = LDOString_AppendString(v6, v16);
      if (!appended)
      {
        if (v16)
        {
          v8 = LDOString_BorrowAllocator(v16);
          OOC_PlacementDeleteObject(v8, v16);
          v16 = 0;
        }

        appended = LDOString_AppendPrefixU32Suffix(v6, "  Parent from: ", *(a1 + 104), "\n");
        if (!appended)
        {
          appended = LDOString_AppendPrefixU32Suffix(v6, "  Parent to: ", *(a1 + 108), "\n");
          if (!appended)
          {
            appended = LDOString_AppendPrefixStringSuffix(v6, "  pText: ", *(a1 + 96), "\n");
            if (!appended)
            {
              appended = LDOTreeNode_ComputeText(a1, &v16);
              if (!appended)
              {
                appended = LDOString_AppendPrefixStringSuffix(v6, "  text: ", v16, "\n");
                if (!appended)
                {
                  if (v16)
                  {
                    v9 = LDOString_BorrowAllocator(v16);
                    OOC_PlacementDeleteObject(v9, v16);
                    v16 = 0;
                  }

                  appended = LDOString_AppendPrefixU32Suffix(v6, "  children: ", (*(a1 + 88) - *(a1 + 80)) >> 3, "\n\n");
                  if (!appended)
                  {
                    v13 = *(a1 + 80);
                    if (v13 >= *(a1 + 88))
                    {
                      v5 = 0;
                      goto LABEL_16;
                    }

                    v14 = 0;
                    while (1)
                    {
                      appended = LDOString_AppendPrefixU32Suffix(v6, "  child #", v14, "\n");
                      if (appended)
                      {
                        break;
                      }

                      appended = (*(**v13 + 24))(*v13, &v16);
                      if (appended)
                      {
                        break;
                      }

                      appended = LDOString_AppendString(v6, v16);
                      if (appended)
                      {
                        break;
                      }

                      if (v16)
                      {
                        v15 = LDOString_BorrowAllocator(v16);
                        OOC_PlacementDeleteObject(v15, v16);
                        v16 = 0;
                      }

                      v5 = 0;
                      ++v14;
                      if (++v13 >= *(a1 + 88))
                      {
                        goto LABEL_16;
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

  v5 = appended;
LABEL_16:
  if (v16)
  {
    v10 = LDOString_BorrowAllocator(v16);
    OOC_PlacementDeleteObject(v10, v16);
    v16 = 0;
  }

  if (v6 && v5)
  {
    v11 = LDOString_BorrowAllocator(v6);
    OOC_PlacementDeleteObject(v11, v6);
  }

  return v5;
}

uint64_t PNEW_LDOTreeNode_Con(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, int a6, unsigned int a7, uint64_t *a8)
{
  v18 = 0;
  v16 = OOCAllocator_Malloc(a1, 112, &v18);
  result = v18;
  if (!v18)
  {
    result = LDOTreeNode_Con(v16, a2, a3, a4, a5, a6, a7);
    v18 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v16);
      *a8 = 0;
      return v18;
    }

    else
    {
      *a8 = v16;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNode_ConEx(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, _DWORD *a6, unsigned int *a7, uint64_t *a8)
{
  v18 = 0;
  v16 = OOCAllocator_Malloc(a1, 112, &v18);
  result = v18;
  if (!v18)
  {
    result = LDOTreeNode_ConEx(v16, a2, a3, a4, a5, a6, a7);
    v18 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v16);
      *a8 = 0;
      return v18;
    }

    else
    {
      *a8 = v16;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNode_ConRoot(uint64_t a1, uint64_t a2, char *a3, char *a4, char *a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 112, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOTreeNode_ConRoot(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t LDOString_Con(void *a1, uint64_t a2)
{
  result = LHString_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOString;
  }

  return result;
}

uint64_t LDOString_ConFromCPtr(void *a1, uint64_t a2, char *__s)
{
  result = LDOString_ValidateIndicesCPtr(__s, 0, 0, 1, 0, 0, 0);
  if (!result)
  {
    result = LHString_ConFromCPtr(a1, a2, __s);
    if (!result)
    {
      *a1 = &__LDOString;
    }
  }

  return result;
}

uint64_t LDOString_ValidateIndicesCPtr(char *__s, _DWORD *a2, unsigned int *a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  if (__s)
  {
    v14 = cstdlib_strlen(__s);
    if (a2)
    {
LABEL_3:
      LODWORD(a2) = *a2;
    }
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }

    v14 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v15 = v14;
  if (a3)
  {
    v15 = *a3;
  }

  if (a2 > v15 || a2 > v14 || v15 > v14 || a4 == 1 && !LDOString_IsValidUTF8(&__s[a2], &__s[v15]))
  {

    return err_GenerateErrorArg();
  }

  else
  {
    if (a5)
    {
      *a5 = a2;
    }

    if (a6)
    {
      *a6 = v15;
    }

    result = 0;
    if (a7)
    {
      *a7 = v14;
    }
  }

  return result;
}

uint64_t LDOString_ConFromCPtrSubstring(void *a1, uint64_t a2, char *__s, _DWORD *a4, unsigned int *a5)
{
  v9 = 0;
  result = LDOString_ValidateIndicesCPtr(__s, a4, a5, 1, &v9 + 1, &v9, 0);
  if (!result)
  {
    result = LHString_ConFromCPtrInterval(a1, a2, &__s[HIDWORD(v9)], &__s[v9]);
    if (!result)
    {
      *a1 = &__LDOString;
    }
  }

  return result;
}

uint64_t LDOString_ConFromString(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = LHString_BorrowCPtr(a3);
  result = LDOString_ConFromCPtr(a1, a2, v5);
  if (!result)
  {
    *a1 = &__LDOString;
  }

  return result;
}

uint64_t LDOString_ConFromStringSubstring(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int *a5)
{
  v9 = LHString_BorrowCPtr(a3);
  result = LDOString_ConFromCPtrSubstring(a1, a2, v9, a4, a5);
  if (!result)
  {
    *a1 = &__LDOString;
  }

  return result;
}

uint64_t LDOString_AppendPrefixBoolSuffix(uint64_t a1, char *a2, int a3, char *a4)
{
  if (a3 == 1)
  {
    v4 = "true";
  }

  else
  {
    v4 = "false";
  }

  return __LDOString_AppendPrefixCPtrSuffix(a1, a2, v4, a4);
}

uint64_t __LDOString_AppendPrefixCPtrSuffix(uint64_t a1, char *__s, char *a3, char *a4)
{
  if (__s)
  {
    if (!LDOString_IsValidUTF8(__s, 0))
    {
      goto LABEL_18;
    }

    result = LHString_Append(a1, __s);
    if (result)
    {
      return result;
    }
  }

  if (a3)
  {
    if (!LDOString_IsValidUTF8(a3, 0))
    {
      goto LABEL_18;
    }

    v9 = a1;
    v10 = a3;
  }

  else
  {
    v10 = "NULL";
    v9 = a1;
  }

  result = LHString_Append(v9, v10);
  if (result)
  {
    return result;
  }

  if (!a4)
  {
    return 0;
  }

  if (LDOString_IsValidUTF8(a4, 0))
  {

    return LHString_Append(a1, a4);
  }

LABEL_18:

  return err_GenerateErrorArg();
}

uint64_t LDOString_AppendPrefixS32Suffix(uint64_t a1, char *a2, unsigned int a3, char *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *v8 = 0;
  v9 = 0;
  LH_itoa(a3, v8, 0xAu);
  return __LDOString_AppendPrefixCPtrSuffix(a1, a2, v8, a4);
}

uint64_t LDOString_AppendPrefixStringSuffix(uint64_t a1, char *__s, char *a3, char *a4)
{
  if (a3)
  {
    a3 = LHString_BorrowCPtr(a3);
  }

  return __LDOString_AppendPrefixCPtrSuffix(a1, __s, a3, a4);
}

uint64_t LDOString_AppendPrefixU32Suffix(uint64_t a1, char *a2, unsigned int a3, char *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  *v8 = 0;
  v9 = 0;
  LH_utoa(a3, v8, 0xAu);
  return __LDOString_AppendPrefixCPtrSuffix(a1, a2, v8, a4);
}

uint64_t LDOString_AppendString(uint64_t a1, uint64_t a2)
{
  v3 = LHString_BorrowCPtr(a2);

  return LHString_Append(a1, v3);
}

uint64_t LDOString_CompareTo(uint64_t a1, uint64_t a2)
{
  v3 = LHString_BorrowCPtr(a1);
  v4 = LHString_BorrowCPtr(a2);

  return cstdlib_strcmp(v3, v4);
}

uint64_t LDOString_CompareToCPtr(uint64_t a1, const char *a2)
{
  v3 = LHString_BorrowCPtr(a1);

  return cstdlib_strcmp(v3, a2);
}

uint64_t LDOString_ComputeCPtrLength(const char *a1, int a2, _DWORD *a3)
{
  if (a1)
  {
    *a3 = cstdlib_strlen(a1);
    return 0;
  }

  if (a2 == 1)
  {
    *a3 = 0;
    return 0;
  }

  return err_GenerateErrorArg();
}

unsigned __int8 *LDOString_ConvertToU32(uint64_t a1)
{
  result = LHString_BorrowCPtr(a1);
  if (result)
  {

    return cstdlib_atoi(result);
  }

  return result;
}

uint64_t LDOString_FreeAndDestroyLDOStringVector(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 < *(a2 + 16))
  {
    do
    {
      v5 = *v4++;
      OOC_PlacementDeleteObject(a1, v5);
    }

    while (v4 < *(a2 + 16));
    v4 = *(a2 + 8);
  }

  *a2 = 0;
  if (v4)
  {
    OOCAllocator_Free(a1, v4);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return 0;
}

BOOL LDOString_IsValidUTF8(char *__s, unint64_t a2)
{
  if (a2)
  {
    v3 = a2 >= __s;
    v4 = a2 - __s;
    if (!v3 || !v4)
    {
      return 1;
    }

    return utf8_CheckValid(__s, v4) == 1;
  }

  if (__s)
  {
    v4 = cstdlib_strlen(__s);
    if (v4)
    {
      return utf8_CheckValid(__s, v4) == 1;
    }
  }

  else if (err_GenerateErrorArg())
  {
    return 0;
  }

  return 1;
}

uint64_t LDOString_ReplaceSubstring(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v8 = LHString_BorrowCPtr(a1);
  v9 = LDOString_ValidateIndicesCPtr(v8, a2, a3, 1, &v18 + 1, &v18, 0);
  if (v9)
  {
    return v9;
  }

  v9 = LDOString_ConFromString(v17, *(a1 + 24), a1);
  if (v9)
  {
    return v9;
  }

  v10 = LDOString_ConFromStringSubstring(v16, *(a1 + 24), a1, &v18, 0);
  if (!v10)
  {
    v12 = LHString_BorrowCPtr(v17);
    if (LDOString_IsValidUTF8(v12, &v12[HIDWORD(v18)]))
    {
      ErrorArg = LHString_SetContentFromNCPtr(a1, v12, HIDWORD(v18));
      if (!ErrorArg)
      {
        v14 = LHString_BorrowCPtr(a4);
        ErrorArg = LHString_Append(a1, v14);
        if (!ErrorArg)
        {
          v15 = LHString_BorrowCPtr(v16);
          ErrorArg = LHString_Append(a1, v15);
        }
      }
    }

    else
    {
      ErrorArg = err_GenerateErrorArg();
    }

    v10 = ErrorArg;
    (*(*&v16[0] + 16))(v16);
  }

  (*(*&v17[0] + 16))(v17);
  return v10;
}

uint64_t LDOString_ValidateIndices(uint64_t a1, _DWORD *a2, unsigned int *a3, int a4, _DWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v13 = LHString_BorrowCPtr(a1);

  return LDOString_ValidateIndicesCPtr(v13, a2, a3, a4, a5, a6, a7);
}

uint64_t LDOString_SetContentFromStringSubstring(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v11 = 0;
  v8 = LHString_BorrowCPtr(a2);
  result = LDOString_ValidateIndicesCPtr(v8, a3, a4, 1, &v11 + 1, &v11, 0);
  if (!result)
  {
    v10 = LHString_BorrowCPtr(a2);
    return LHString_SetContentFromNCPtr(a1, (v10 + HIDWORD(v11)), v11 - HIDWORD(v11));
  }

  return result;
}

size_t LDOString_SplitEx(uint64_t a1, const char *a2, unsigned int *a3)
{
  v28 = 0;
  v26 = 0;
  __src = 0;
  v6 = LHString_BorrowCPtr(a1);
  result = cstdlib_strlen(v6);
  if (result)
  {
    v8 = *(a1 + 24);
    result = LHString_BorrowCPtr(a1);
    if (result)
    {
      v9 = result;
      while (1)
      {
        v10 = cstdlib_strstr(v9, a2);
        v11 = v10;
        HIDWORD(v26) = 0;
        if (v10)
        {
          LODWORD(v26) = v10 - v9;
          v12 = &v26;
          v13 = v8;
          v14 = v8;
          v15 = v9;
        }

        else
        {
          v13 = v8;
          v14 = v8;
          v15 = v9;
          v12 = 0;
        }

        result = PNEW_LDOString_ConFromCPtrSubstring(v13, v14, v15, &v26 + 1, v12, &__src);
        v28 = result;
        if (result)
        {
          break;
        }

        v16 = LHString_BorrowCPtr(__src);
        if (cstdlib_strlen(v16))
        {
          v18 = *(a3 + 1);
          v17 = *(a3 + 2);
          v19 = &v17[-v18];
          v20 = (&v17[-v18] >> 3) + 1;
          v21 = *a3;
          if (v20 > *a3)
          {
            v22 = 2 * v21;
            v23 = v21 + 1000000;
            if (v22 < v23)
            {
              v23 = v22;
            }

            if (v23 > v20)
            {
              v20 = v23;
            }

            if (v20 <= 8)
            {
              v24 = 8;
            }

            else
            {
              v24 = v20;
            }

            v25 = OOCAllocator_Realloc(v8, v18, 8 * v24, &v28);
            *(a3 + 1) = v25;
            result = v28;
            if (v28)
            {
              return result;
            }

            *a3 = v24;
            v17 = (v25 + (v19 & 0x7FFFFFFF8));
            *(a3 + 2) = v17;
          }

          cstdlib_memcpy(v17, &__src, 8uLL);
          *(a3 + 2) += 8;
          v9 = v11 + 1;
          if (!v11)
          {
            return v28;
          }
        }

        else
        {
          result = OOC_PlacementDeleteObject(v8, __src);
          v28 = result;
          if (v11)
          {
            v9 = v11 + 1;
          }

          else
          {
            v9 = 0;
          }

          if (result || !v11)
          {
            return result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t PNEW_LDOString_ConFromCPtrSubstring(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4, unsigned int *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 32, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOString_ConFromCPtrSubstring(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t PNEW_LDOString_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 32, &v8);
  result = v8;
  if (!v8)
  {
    result = LHString_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOString;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_LDOString_ConFromCPtr(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 32, &v10);
  result = v10;
  if (!v10)
  {
    result = LDOString_ConFromCPtr(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t PNEW_LDOString_ConFromString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v8 = OOCAllocator_Malloc(a1, 32, &v10);
  result = v10;
  if (!v10)
  {
    result = LDOString_ConFromString(v8, a2, a3);
    v10 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v8);
      *a4 = 0;
      return v10;
    }

    else
    {
      *a4 = v8;
    }
  }

  return result;
}

uint64_t PNEW_LDOString_ConFromStringSubstring(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, unsigned int *a5, void *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 32, &v14);
  result = v14;
  if (!v14)
  {
    result = LDOString_ConFromStringSubstring(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t LDOLabelSet_Con(uint64_t a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDOLabelSet;
    *(a1 + 8) = a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t LDOLabelSet_Des(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    *(a1 + 16) = 0;
LABEL_10:
    *(a1 + 32) = 0;

    return Object_Des();
  }

  if (v2 >= *(a1 + 32))
  {
    *(a1 + 16) = 0;
LABEL_9:
    OOCAllocator_Free(*(a1 + 8), v2);
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  while (1)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), *v2);
    if (result)
    {
      return result;
    }

    if (++v2 >= *(a1 + 32))
    {
      v2 = *(a1 + 24);
      *(a1 + 16) = 0;
      if (v2)
      {
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }
}

uint64_t LDOLabelSet_AddLabel(uint64_t a1, uint64_t a2)
{
  __src = a2;
  v14 = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 24);
  v5 = &v3[-v4];
  v6 = (&v3[-v4] >> 3) + 1;
  v7 = *(a1 + 16);
  if (v6 <= v7)
  {
    goto LABEL_11;
  }

  v8 = 2 * v7;
  v9 = v7 + 1000000;
  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v9 > v6)
  {
    v6 = v9;
  }

  if (v6 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v6;
  }

  v11 = OOCAllocator_Realloc(*(a1 + 8), v4, 8 * v10, &v14);
  *(a1 + 24) = v11;
  v12 = v14;
  if (!v14)
  {
    *(a1 + 16) = v10;
    v3 = (v11 + (v5 & 0x7FFFFFFF8));
    *(a1 + 32) = v3;
LABEL_11:
    cstdlib_memcpy(v3, &__src, 8uLL);
    *(a1 + 32) += 8;
    return v14;
  }

  return v12;
}

uint64_t LDOLabelSet_ComputeContainedLabels(uint64_t *a1, unsigned int a2, unsigned int a3, int a4, unsigned int *a5)
{
  result = 0;
  v31 = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  v7 = (a5 + 2);
  *(a5 + 2) = 0;
  v8 = a1[3];
  if (v8 < a1[4])
  {
    do
    {
      v30 = *v8;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v30);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v30);
      v16 = AbsoluteFrom >= a2 && AbsoluteTo <= a3;
      v18 = AbsoluteFrom == a2 && AbsoluteTo == a3;
      if (a4 == 1)
      {
        v16 = v18;
      }

      if ((AbsoluteFrom != a3 || *(v30 + 112) != 1) && v16)
      {
        v22 = *(a5 + 1);
        v21 = *(a5 + 2);
        v23 = &v21[-v22];
        v24 = (&v21[-v22] >> 3) + 1;
        v25 = *a5;
        if (v24 > *a5)
        {
          v26 = 2 * v25;
          v27 = v25 + 1000000;
          if (v26 < v27)
          {
            v27 = v26;
          }

          if (v27 > v24)
          {
            v24 = v27;
          }

          if (v24 <= 8)
          {
            v28 = 8;
          }

          else
          {
            v28 = v24;
          }

          v29 = OOCAllocator_Realloc(a1[1], v22, 8 * v28, &v31);
          *v7 = v29;
          result = v31;
          if (v31)
          {
            return result;
          }

          *a5 = v28;
          v21 = (v29 + (v23 & 0x7FFFFFFF8));
          *(a5 + 2) = v21;
        }

        cstdlib_memcpy(v21, &v30, 8uLL);
        *(a5 + 2) += 8;
      }

      ++v8;
    }

    while (v8 < a1[4]);
    return v31;
  }

  return result;
}

uint64_t LDOLabelSet_ComputeOverlappingLabels(uint64_t *a1, unsigned int a2, unsigned int a3, int a4, unsigned int *a5)
{
  result = 0;
  v33 = 0;
  *a5 = 0;
  *(a5 + 1) = 0;
  v7 = (a5 + 2);
  *(a5 + 2) = 0;
  v8 = a1[3];
  if (v8 < a1[4])
  {
    while (1)
    {
      v32 = *v8;
      AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v32);
      AbsoluteTo = LDOLabel_GetAbsoluteTo(v32);
      v16 = AbsoluteFrom > a2 || AbsoluteTo < a3;
      if (a4 != 1)
      {
        v18 = AbsoluteFrom >= a3 || AbsoluteTo < a3;
        if (AbsoluteTo > a2 && AbsoluteFrom <= a2 || !v18)
        {
LABEL_30:
          v24 = *(a5 + 1);
          v23 = *(a5 + 2);
          v25 = &v23[-v24];
          v26 = (&v23[-v24] >> 3) + 1;
          v27 = *a5;
          if (v26 > *a5)
          {
            v28 = 2 * v27;
            v29 = v27 + 1000000;
            if (v28 < v29)
            {
              v29 = v28;
            }

            if (v29 > v26)
            {
              v26 = v29;
            }

            if (v26 <= 8)
            {
              v30 = 8;
            }

            else
            {
              v30 = v26;
            }

            v31 = OOCAllocator_Realloc(a1[1], v24, 8 * v30, &v33);
            *v7 = v31;
            result = v33;
            if (v33)
            {
              return result;
            }

            *a5 = v30;
            v23 = (v31 + (v25 & 0x7FFFFFFF8));
            *(a5 + 2) = v23;
          }

          cstdlib_memcpy(v23, &v32, 8uLL);
          *(a5 + 2) += 8;
          goto LABEL_41;
        }

        v22 = AbsoluteFrom < a2 || AbsoluteTo > a3;
        v16 &= v22;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_41:
      if (++v8 >= a1[4])
      {
        return v33;
      }
    }
  }

  return result;
}

uint64_t LDOLabelSet_FreeLDOLabelVector(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    OOCAllocator_Free(*(a1 + 8), v3);
    *(a2 + 8) = 0;
  }

  *(a2 + 16) = 0;
  return 0;
}

uint64_t LDOLabelSet_MergeLabels(uint64_t a1, uint64_t a2, char *a3, char *a4, void *a5)
{
  v19 = 0;
  v6 = *(a2 + 8);
  if (((*(a2 + 16) - v6) & 0x7FFFFFFF8) != 0)
  {
    v9 = *v6;
    v17 = *(v9 + 64);
    v18 = *(v9 + 80);
    PNEW_LDOLabel_Con(*(a1 + 8), *(a1 + 8), a3, a4, &v17, &v19);
    if (v10)
    {
      return v10;
    }

    else
    {
      for (i = *(a2 + 8); i < *(a2 + 16); ++i)
      {
        v10 = LDOLabel_AddNodes(v19, *i + 64);
        if (v10)
        {
          return v10;
        }
      }

      v14 = LDOLabelSet_AddLabel(a1, v19);
      if (v14)
      {
        v11 = v14;
        if (v19)
        {
          OOC_PlacementDeleteObject(*(a1 + 8), v19);
        }
      }

      else
      {
        for (j = *(a2 + 8); j < *(a2 + 16); ++j)
        {
          v16 = *j;
          v10 = LDOObject_CopyAttributes(v19, *j);
          if (v10)
          {
            return v10;
          }

          v10 = LDOLabelSet_RemoveLabel(a1, v16);
          if (v10)
          {
            return v10;
          }
        }

        v11 = 0;
        if (a5)
        {
          *a5 = v19;
        }
      }
    }
  }

  else
  {
    v11 = 0;
    *a5 = 0;
  }

  return v11;
}

uint64_t LDOLabelSet_RemoveLabel(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 >= v5)
  {
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  v6 = 0;
  v7 = *(a1 + 24);
  while (*(a2 + 16) != *(*v7 + 16))
  {
    v7 += 8;
    ++v6;
    if (v7 >= v5)
    {
      return OOC_PlacementDeleteObject(*(a1 + 8), a2);
    }
  }

  v8 = ((v5 - v4) >> 3) - 1;
  cstdlib_memmove((v4 + 8 * v6), (v4 + 8 * v6 + 8), 8 * (v8 - v6));
  v9 = *(a1 + 32) - 8;
  *(a1 + 32) = v9;
  if (*(a1 + 16) < (3 * v8))
  {
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  v10 = *(a1 + 24);
  if ((2 * v8) <= 8)
  {
    v11 = 8;
  }

  else
  {
    v11 = 2 * v8;
  }

  v12 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 24), 8 * v11, &v15);
  *(a1 + 24) = v12;
  v13 = v15;
  if (!v15)
  {
    *(a1 + 16) = v11;
    *(a1 + 32) = v12 + ((v9 - v10) & 0x7FFFFFFF8);
    return OOC_PlacementDeleteObject(*(a1 + 8), a2);
  }

  return v13;
}

uint64_t LDOLabelSet_ToString(uint64_t *a1, uint64_t *a2)
{
  v15 = 0;
  v4 = PNEW_LDOString_Con(a1[1], a1[1], a2);
  if (!v4)
  {
    v5 = a1[3];
    if (v5 >= a1[4])
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = *a2;
      while (1)
      {
        appended = LDOString_AppendPrefixU32Suffix(v7, "  label #", v6, "\n");
        if (appended)
        {
          break;
        }

        v9 = (*(**v5 + 24))(*v5, &v15);
        v10 = v15;
        if (v9 || (v9 = LDOString_AppendPrefixStringSuffix(v7, 0, v15, "\n"), v10 = v15, v9))
        {
          v4 = v9;
          if (!v10)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

        if (v15)
        {
          v11 = LDOString_BorrowAllocator(v15);
          OOC_PlacementDeleteObject(v11, v15);
          v15 = 0;
        }

        ++v6;
        if (++v5 >= a1[4])
        {
          return 0;
        }
      }

      v4 = appended;
      v10 = v15;
      if (v15)
      {
LABEL_12:
        v12 = LDOString_BorrowAllocator(v10);
        OOC_PlacementDeleteObject(v12, v15);
        v15 = 0;
      }

LABEL_13:
      if (v7)
      {
        v13 = LDOString_BorrowAllocator(v7);
        OOC_PlacementDeleteObject(v13, v7);
      }
    }
  }

  return v4;
}

uint64_t LDOLabelSet_UpdateRegularLabels(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  for (i = *(a1 + 24); i < *(a1 + 32); ++i)
  {
    v7 = *i;
    if (*(*i + 112) != 1)
    {
      v10 = 0;
      result = LDOLabel_ContainsAllNodes(v7, a2, &v10);
      if (result)
      {
        return result;
      }

      if (v10 == 1)
      {
        result = LDOLabel_RemoveNodes(v7, a2);
        if (result)
        {
          return result;
        }

        result = LDOLabel_AddNodes(v7, a3);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = LDOLabel_ContainsAtLeastOneNode(v7, a2, &v9);
        if (result)
        {
          return result;
        }

        if (v9 == 1)
        {
          result = LDOLabel_RemoveNodes(v7, a2);
          if (result)
          {
            return result;
          }

          result = LDOLabel_Invalidate(v7);
          if (result)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t LDOLabelSet_UpdateSpan(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 24);
  if (v3 >= *(a1 + 32))
  {
    return 0;
  }

  while (1)
  {
    v7 = *v3;
    if (*(*v3 + 104) == 1 && *(v7 + 112) == 1 && LDOLabel_GetAbsoluteTo(v7) > a2)
    {
      result = LDOLabel_UpdateSpanLength(*v3, a2, a3);
      if (result)
      {
        break;
      }
    }

    if (++v3 >= *(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t PNEW_LDOLabelSet_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 40, &v8);
  result = v8;
  if (!v8)
  {
    result = Object_Con(v6);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOLabelSet;
      *(v6 + 8) = a2;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t LDOTreeNodeMappingItem_Con(uint64_t a1, uint64_t a2)
{
  result = LDOObject_Con(a1, a2);
  if (!result)
  {
    *a1 = &__LDOTreeNodeMappingItem;
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  return result;
}

uint64_t LDOTreeNodeMappingItem_ConEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LDOObject_Con(a1, a2);
  if (v7 || (*a1 = &__LDOTreeNodeMappingItem, *(a1 + 72) = 0, *(a1 + 64) = 0, *(a1 + 80) = 0, *(a1 + 88) = 0, *(a1 + 96) = 0, *(a1 + 104) = 0, *(a1 + 112) = 0, v7 = LDOTreeNodeMappingItem_AppendOldNodes(a1, a3), v7))
  {
    appended = v7;
  }

  else
  {
    appended = LDOTreeNodeMappingItem_AppendNewNodes(a1, a4);
    if (!appended)
    {
      return appended;
    }
  }

  if (*(a1 + 80))
  {
    *(a1 + 72) = 0;
    v9 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v9, *(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  if (*(a1 + 104))
  {
    *(a1 + 96) = 0;
    v10 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v10, *(a1 + 104));
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  return appended;
}

uint64_t LDOTreeNodeMappingItem_AppendOldNodes(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v4 = *(a1 + 88);
  v5 = &v4[-*(a1 + 80)];
  v7 = a2 + 8;
  v6 = *(a2 + 8);
  v8 = *(v7 + 8) - v6;
  v9 = (v8 >> 3) + (v5 >> 3);
  v10 = *(a1 + 72);
  if (v9 <= v10)
  {
    goto LABEL_11;
  }

  v11 = 2 * v10;
  v12 = v10 + 1000000;
  if (v11 >= v12)
  {
    v11 = v12;
  }

  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = LDOObject_BorrowAllocator(a1);
  v15 = OOCAllocator_Realloc(v14, *(a1 + 80), 8 * v13, &v18);
  *(a1 + 80) = v15;
  v16 = v18;
  if (!v18)
  {
    *(a1 + 72) = v13;
    v4 = (v15 + (v5 & 0x7FFFFFFF8));
    *(a1 + 88) = v4;
    v6 = *(a2 + 8);
    v8 = *(a2 + 16) - v6;
LABEL_11:
    cstdlib_memcpy(v4, v6, v8 & 0x7FFFFFFF8);
    *(a1 + 88) += (*(a2 + 16) - *(a2 + 8)) & 0x7FFFFFFF8;
    *(a1 + 64) = 0;
    return v18;
  }

  return v16;
}

uint64_t LDOTreeNodeMappingItem_AppendNewNodes(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v4 = *(a1 + 112);
  v5 = &v4[-*(a1 + 104)];
  v7 = a2 + 8;
  v6 = *(a2 + 8);
  v8 = *(v7 + 8) - v6;
  v9 = (v8 >> 3) + (v5 >> 3);
  v10 = *(a1 + 96);
  if (v9 <= v10)
  {
    goto LABEL_11;
  }

  v11 = 2 * v10;
  v12 = v10 + 1000000;
  if (v11 >= v12)
  {
    v11 = v12;
  }

  if (v11 <= v9)
  {
    v11 = v9;
  }

  if (v11 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = v11;
  }

  v14 = LDOObject_BorrowAllocator(a1);
  v15 = OOCAllocator_Realloc(v14, *(a1 + 104), 8 * v13, &v18);
  *(a1 + 104) = v15;
  v16 = v18;
  if (!v18)
  {
    *(a1 + 96) = v13;
    v4 = (v15 + (v5 & 0x7FFFFFFF8));
    *(a1 + 112) = v4;
    v6 = *(a2 + 8);
    v8 = *(a2 + 16) - v6;
LABEL_11:
    cstdlib_memcpy(v4, v6, v8 & 0x7FFFFFFF8);
    *(a1 + 112) += (*(a2 + 16) - *(a2 + 8)) & 0x7FFFFFFF8;
    return v18;
  }

  return v16;
}

uint64_t LDOTreeNodeMappingItem_ConUnmappedNewNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LDOObject_Con(a1, a2);
  if (v7)
  {
    appended = v7;
  }

  else
  {
    *a1 = &__LDOTreeNodeMappingItem;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 64) = a4;
    appended = LDOTreeNodeMappingItem_AppendNewNode(a1, a3);
    if (!appended)
    {
      return appended;
    }
  }

  if (*(a1 + 80))
  {
    *(a1 + 72) = 0;
    v9 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v9, *(a1 + 80));
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  if (*(a1 + 104))
  {
    *(a1 + 96) = 0;
    v10 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v10, *(a1 + 104));
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  return appended;
}

uint64_t LDOTreeNodeMappingItem_AppendNewNode(uint64_t a1, uint64_t a2)
{
  __src = a2;
  v14 = 0;
  v3 = *(a1 + 112);
  v4 = &v3[-*(a1 + 104)];
  v5 = (v4 >> 3) + 1;
  v6 = *(a1 + 96);
  if (v5 <= v6)
  {
    goto LABEL_11;
  }

  v7 = 2 * v6;
  v8 = v6 + 1000000;
  if (v7 < v8)
  {
    v8 = v7;
  }

  if (v8 > v5)
  {
    v5 = v8;
  }

  if (v5 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v5;
  }

  v10 = LDOObject_BorrowAllocator(a1);
  v11 = OOCAllocator_Realloc(v10, *(a1 + 104), 8 * v9, &v14);
  *(a1 + 104) = v11;
  v12 = v14;
  if (!v14)
  {
    *(a1 + 96) = v9;
    v3 = (v11 + (v4 & 0x7FFFFFFF8));
    *(a1 + 112) = v3;
LABEL_11:
    cstdlib_memcpy(v3, &__src, 8uLL);
    *(a1 + 112) += 8;
    return v14;
  }

  return v12;
}

uint64_t LDOTreeNodeMappingItem_Des(uint64_t a1)
{
  v2 = (a1 + 80);
  if (*(a1 + 80))
  {
    *(a1 + 72) = 0;
    v3 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v3, *(a1 + 80));
    *v2 = 0;
    v2[1] = 0;
  }

  if (*(a1 + 104))
  {
    *(a1 + 96) = 0;
    v4 = LDOObject_BorrowAllocator(a1);
    OOCAllocator_Free(v4, *(a1 + 104));
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  return LDOObject_Des(a1);
}

uint64_t LDOTreeNodeMappingItem_AppendOldNode(uint64_t a1, uint64_t a2)
{
  __src = a2;
  v14 = 0;
  v3 = *(a1 + 88);
  v4 = &v3[-*(a1 + 80)];
  v5 = (v4 >> 3) + 1;
  v6 = *(a1 + 72);
  if (v5 <= v6)
  {
    goto LABEL_11;
  }

  v7 = 2 * v6;
  v8 = v6 + 1000000;
  if (v7 < v8)
  {
    v8 = v7;
  }

  if (v8 > v5)
  {
    v5 = v8;
  }

  if (v5 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v5;
  }

  v10 = LDOObject_BorrowAllocator(a1);
  v11 = OOCAllocator_Realloc(v10, *(a1 + 80), 8 * v9, &v14);
  *(a1 + 80) = v11;
  v12 = v14;
  if (!v14)
  {
    *(a1 + 72) = v9;
    v3 = (v11 + (v4 & 0x7FFFFFFF8));
    *(a1 + 88) = v3;
LABEL_11:
    cstdlib_memcpy(v3, &__src, 8uLL);
    *(a1 + 88) += 8;
    *(a1 + 64) = 0;
    return v14;
  }

  return v12;
}

uint64_t LDOTreeNodeMappingItem_GetParentNode(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (((*(a1 + 88) - v1) & 0x7FFFFFFF8) != 0)
  {
    return *(*v1 + 64);
  }

  else
  {
    return 0;
  }
}

size_t LDOTreeNodeMappingItem_GetPositions(void *a1, _DWORD *a2, _DWORD *a3)
{
  *a2 = 0;
  *a3 = 0;
  v4 = a1[10];
  if (((a1[11] - v4) & 0x7FFFFFFF8) != 0)
  {
    v5 = *v4;
    result = LDOTreeNode_ComputeAbsoluteFrom(*v4, a2);
    if (result)
    {
      return result;
    }

    v7 = (v5 + 104);
    goto LABEL_7;
  }

  result = a1[8];
  if (result)
  {
    result = LDOTreeNode_ComputeAbsoluteTo(result, a2);
    if (!result)
    {
      v7 = (a1[8] + 108);
LABEL_7:
      result = 0;
      *a3 = *v7;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNodeMappingItem_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 120, &v8);
  result = v8;
  if (!v8)
  {
    result = LDOObject_Con(v6, a2);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LDOTreeNodeMappingItem;
      *(v6 + 72) = 0;
      *(v6 + 64) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNodeMappingItem_ConEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 120, &v12);
  result = v12;
  if (!v12)
  {
    result = LDOTreeNodeMappingItem_ConEx(v10, a2, a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t PNEW_LDOTreeNodeMappingItem_ConUnmappedNewNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v12 = 0;
  v10 = OOCAllocator_Malloc(a1, 120, &v12);
  result = v12;
  if (!v12)
  {
    result = LDOTreeNodeMappingItem_ConUnmappedNewNode(v10, a2, a3, a4);
    v12 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v10);
      *a5 = 0;
      return v12;
    }

    else
    {
      *a5 = v10;
    }
  }

  return result;
}

uint64_t LDOObject_Con(uint64_t a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LDOObject;
    *(a1 + 8) = a2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 16) = a1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t LDOObject_Des(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v2);
    if (result)
    {
      return result;
    }

    *(a1 + 48) = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 32);
  if (!v5)
  {
    *(a1 + 24) = 0;
LABEL_18:
    *(a1 + 40) = 0;

    return Object_Des();
  }

  if (v5 >= *(a1 + 40))
  {
    *(a1 + 24) = 0;
LABEL_17:
    OOCAllocator_Free(*(a1 + 8), v5);
    *(a1 + 32) = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v6 = *(v5 + 8);
    v7 = *(v5 + 24);
    result = __LDOObject_DeallocateValue(a1, &v6);
    if (result)
    {
      return result;
    }

    result = OOC_PlacementDeleteObject(*(a1 + 8), *v5);
    if (result)
    {
      return result;
    }

    v5 += 32;
    if (v5 >= *(a1 + 40))
    {
      v5 = *(a1 + 32);
      *(a1 + 24) = 0;
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }
  }
}

uint64_t __LDOObject_DeallocateValue(uint64_t a1, int *a2)
{
  v4 = *a2;
  if (*a2 == 2)
  {
    v5 = *(a2 + 2);
    if (!v5)
    {
      return 0;
    }

    result = OOC_PlacementDeleteObject(*(a1 + 8), v5);
    if (result)
    {
      return result;
    }

    *(a2 + 2) = 0;
    v4 = *a2;
  }

  if (v4 != 3)
  {
    return 0;
  }

  v7 = *(a2 + 2);
  if (!v7)
  {
    return 0;
  }

  *v7 = 0;
  if (*(v7 + 8))
  {
    OOCAllocator_Free(*(a1 + 8), *(v7 + 8));
    v7 = *(a2 + 2);
    *(v7 + 8) = 0;
  }

  *(v7 + 16) = 0;
  OOCAllocator_Free(*(a1 + 8), v7);
  result = 0;
  *(a2 + 2) = 0;
  return result;
}

uint64_t LDOObject_CopyAttributes(uint64_t a1, uint64_t *a2)
{
  for (i = a2[4]; i < a2[5]; i += 32)
  {
    v5 = *(i + 8);
    v6 = LHString_BorrowCPtr(*i);
    if (v5 <= 1)
    {
      if (!v5)
      {
        LODWORD(v16) = 0;
        v17 = 0;
        U32Attribute = LDOObject_GetU32Attribute(a2, v6, &v16, &v17);
        if (U32Attribute)
        {
          v13 = 0;
        }

        else
        {
          v13 = v16 == 1;
        }

        if (v13)
        {
          LDOObject_SetU32Attribute(a1, v6, v17);
          goto LABEL_37;
        }

LABEL_38:
        if (U32Attribute)
        {
          return U32Attribute;
        }

        continue;
      }

      if (v5 == 1)
      {
        LODWORD(v16) = 0;
        v17 = 0;
        U32Attribute = LDOObject_GetS32Attribute(a2, v6, &v16, &v17);
        if (U32Attribute)
        {
          v9 = 0;
        }

        else
        {
          v9 = v16 == 1;
        }

        if (!v9)
        {
          goto LABEL_38;
        }

        LDOObject_SetS32Attribute(a1, v6, v17);
LABEL_37:
        U32Attribute = v8;
        goto LABEL_38;
      }
    }

    else
    {
      switch(v5)
      {
        case 2:
          v17 = 0;
          v16 = 0;
          U32Attribute = LDOObject_GetStringAttribute(a2, v6, &v17, &v16);
          if (U32Attribute)
          {
            v10 = 0;
          }

          else
          {
            v10 = v17 == 1;
          }

          if (!v10)
          {
            goto LABEL_38;
          }

          v8 = LDOObject_SetStringAttribute(a1, v6, v16);
          goto LABEL_37;
        case 3:
          v17 = 0;
          v16 = 0;
          v15 = 0;
          U32Attribute = LDOObject_GetListU32Attribute(a2, v6, &v17, &v16, &v15);
          v11 = v16;
          if (U32Attribute)
          {
            v12 = 0;
          }

          else
          {
            v12 = v17 == 1;
          }

          if (v12)
          {
            U32Attribute = LDOObject_SetListU32Attribute(a1, v6, v16, v15);
          }

          if (v11)
          {
            OOCAllocator_Free(*(a1 + 8), v11);
          }

          goto LABEL_38;
        case 4:
          LODWORD(v16) = 0;
          v17 = 0;
          U32Attribute = LDOObject_GetBoolAttribute(a2, v6, &v16, &v17);
          if (U32Attribute || v16 != 1)
          {
            goto LABEL_38;
          }

          LDOObject_SetBoolAttribute(a1, v6, v17);
          goto LABEL_37;
      }
    }
  }

  return 0;
}

uint64_t LDOObject_GetAttributeType(uint64_t *a1, char *a2, int *a3)
{
  __b = 0u;
  v18 = 0u;
  v16 = 0;
  cstdlib_memset(&__b, 0, 0x20uLL);
  result = PNEW_LDOString_ConFromCPtr(a1[1], a1[1], a2, &v16);
  if (!result)
  {
    v7 = a1[5] - a1[4];
    if (v7)
    {
      v8 = 0;
      v9 = v7 >> 5;
      do
      {
        v10 = v9 >> 1;
        v11 = LDOString_CompareTo(v16, *(a1[4] + 32 * v8 + 32 * (v9 >> 1)));
        if (v11 < 1)
        {
          if ((v11 & 0x80000000) == 0)
          {
            v14 = (a1[4] + 32 * v10 + 32 * v8);
            v15 = v14[1];
            __b = *v14;
            v18 = v15;
            v12 = 1;
            goto LABEL_9;
          }
        }

        else
        {
          v8 += v10 + 1;
          v10 = v9 - (v10 + 1);
        }

        v9 = v10;
      }

      while (v10);
    }

    v12 = 0;
LABEL_9:
    result = OOC_PlacementDeleteObject(a1[1], v16);
    if (!result)
    {
      v13 = DWORD2(__b);
      if (!v12)
      {
        v13 = 5;
      }

      *a3 = v13;
    }
  }

  return result;
}

uint64_t LDOObject_GetBoolAttribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v9 = xmmword_26ECCE7B0;
  v10 = 0;
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, &v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = v9 == 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = DWORD1(v9) == 1;
    }
  }

  return result;
}

uint64_t __LDOObject_GetAttributeMapItem(uint64_t *a1, char *a2, void *a3, uint64_t a4)
{
  memset(__b, 0, sizeof(__b));
  v17 = 0;
  cstdlib_memset(__b, 0, 0x20uLL);
  result = PNEW_LDOString_ConFromCPtr(a1[1], a1[1], a2, &v17);
  if (!result)
  {
    v9 = a1[5] - a1[4];
    if (v9)
    {
      v10 = 0;
      v11 = v9 >> 5;
      do
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v17, *(a1[4] + 32 * v10 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v15 = (a1[4] + 32 * v12 + 32 * v10);
            v16 = v15[1];
            __b[0] = *v15;
            __b[1] = v16;
            v14 = 1;
            goto LABEL_9;
          }
        }

        else
        {
          v10 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
      }

      while (v12);
    }

    v14 = 0;
LABEL_9:
    result = OOC_PlacementDeleteObject(a1[1], v17);
    if (!result)
    {
      result = 0;
      if (v14)
      {
        *a3 = *&__b[0];
        *(a4 + 16) = *(&__b[1] + 1);
        *a4 = *(__b + 8);
      }

      else
      {
        *a3 = 0;
      }
    }
  }

  return result;
}

uint64_t LDOObject_GetCategory(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    *a2 = LHString_BorrowCPtr(v2);
  }

  return 0;
}

uint64_t LDOObject_GetListU32Attribute(uint64_t *a1, char *a2, _DWORD *a3, uint64_t *a4, _DWORD *a5)
{
  v17 = 0;
  v18 = xmmword_26ECCE7C8;
  v19 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v17, &v18);
  v20 = result;
  if (!result)
  {
    *a3 = 0;
    if (v17)
    {
      if (v18 == 3)
      {
        *a3 = 1;
        v10 = v19;
        v11 = *(v19 + 16) - *(v19 + 8);
        *a5 = v11 >> 2;
        if ((v11 >> 2))
        {
          v12 = OOCAllocator_Calloc(a1[1], (v11 >> 2), 4, &v20);
          *a4 = v12;
          result = v20;
          if (!v20)
          {
            v13 = *(v10 + 8);
            v14 = *(v10 + 16);
            if (v13 >= v14)
            {
              return 0;
            }

            else
            {
              v15 = 0;
              do
              {
                v16 = *v13++;
                *(v12 + 4 * v15++) = v16;
              }

              while (v13 < v14);
              return v20;
            }
          }
        }

        else
        {
          result = 0;
          *a4 = 0;
        }
      }
    }
  }

  return result;
}

uint64_t LDOObject_GetS32Attribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  v9 = xmmword_26ECCE7E0;
  v10 = 0;
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, &v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = v9 == 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = DWORD2(v9);
    }
  }

  return result;
}

uint64_t LDOObject_GetStringAttribute(uint64_t *a1, char *a2, _DWORD *a3, uint64_t *a4)
{
  v10 = xmmword_26ECCE7F8;
  v11 = 0;
  v9 = 0;
  AttributeMapItem = __LDOObject_GetAttributeMapItem(a1, a2, &v9, &v10);
  if (!AttributeMapItem)
  {
    *a3 = 0;
    if (v9)
    {
      v7 = v10 == 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = LHString_BorrowCPtr(v11);
    }
  }

  return AttributeMapItem;
}

uint64_t LDOObject_GetType(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    *a2 = LHString_BorrowCPtr(v2);
  }

  return 0;
}

uint64_t LDOObject_GetU32Attribute(uint64_t *a1, char *a2, _DWORD *a3, _DWORD *a4)
{
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v8, v9);
  if (!result)
  {
    *a3 = 0;
    if (v8)
    {
      v7 = LODWORD(v9[0]) == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      *a3 = 1;
      *a4 = HIDWORD(v9[0]);
    }
  }

  return result;
}

uint64_t LDOObject_HasAttribute(uint64_t *a1, char *a2, _DWORD *a3)
{
  v5 = 5;
  result = LDOObject_GetAttributeType(a1, a2, &v5);
  if (!result)
  {
    *a3 = v5 != 5;
  }

  return result;
}

uint64_t LDOObject_RemoveAttribute(uint64_t a1, char *a2)
{
  v21 = 0;
  v19 = xmmword_26ECCE798;
  v20 = 0;
  result = __LDOObject_GetAttributeMapItem(a1, a2, &v21, &v19);
  v22 = result;
  v4 = v21;
  if (result || !v21)
  {
    goto LABEL_11;
  }

  v22 = __LDOObject_DeallocateValue(a1, &v19);
  if (v22 || (v5 = *(a1 + 40) - *(a1 + 32)) == 0)
  {
LABEL_12:
    OOC_PlacementDeleteObject(*(a1 + 8), v4);
    return v22;
  }

  v6 = 0;
  v7 = v5 >> 5;
  while (1)
  {
    v8 = v7 >> 1;
    v9 = LDOString_CompareTo(v4, *(*(a1 + 32) + 32 * v6 + 32 * (v7 >> 1)));
    if (v9 < 1)
    {
      break;
    }

    v6 += v8 + 1;
    v8 = v7 - (v8 + 1);
LABEL_9:
    v7 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  v10 = v8 + v6;
  v11 = *(a1 + 32);
  v12 = (*(a1 + 40) - v11) >> 5;
  cstdlib_memmove((v11 + 32 * v10), (v11 + 32 * v10 + 32), 32 * (~v10 + v12));
  v13 = *(a1 + 40) - 32;
  *(a1 + 40) = v13;
  v14 = v12 - 1;
  if (*(a1 + 24) < (3 * (v12 - 1)))
  {
LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  v15 = *(a1 + 32);
  v16 = 2 * v14;
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = v16;
  }

  v18 = OOCAllocator_Realloc(*(a1 + 8), *(a1 + 32), 32 * v17, &v22);
  *(a1 + 32) = v18;
  result = v22;
  if (!v22)
  {
    *(a1 + 24) = v17;
    *(a1 + 40) = v18 + ((v13 - v15) & 0x1FFFFFFFE0);
  }

LABEL_11:
  if (v4)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t LDOObject_RemoveAttributes(uint64_t *a1)
{
  v17 = 0;
  v1 = a1[4];
  if (v1 >= a1[5])
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v16 = *v1;
    v6 = &v5[-v4];
    v7 = (&v5[-v4] >> 3) + 1;
    if (v7 <= v3)
    {
      v11 = v5;
    }

    else
    {
      v8 = 2 * v3;
      if (2 * v3 >= v3 + 1000000)
      {
        v8 = v3 + 1000000;
      }

      if (v8 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 8)
      {
        v3 = 8;
      }

      else
      {
        v3 = v8;
      }

      v9 = OOCAllocator_Realloc(a1[1], v4, 8 * v3, &v17);
      v4 = v9;
      v10 = v17;
      if (v17)
      {
        goto LABEL_21;
      }

      v11 = (v9 + (v6 & 0x7FFFFFFF8));
    }

    cstdlib_memcpy(v11, &v16, 8uLL);
    v5 = v11 + 8;
    v1 += 4;
  }

  while (v1 < a1[5]);
  v10 = v17;
  if (v17)
  {
    goto LABEL_21;
  }

  if (v4 >= v5)
  {
LABEL_20:
    v10 = 0;
LABEL_21:
    if (!v4)
    {
      return v10;
    }

    goto LABEL_22;
  }

  v12 = v4 - 8;
  while (1)
  {
    v13 = LHString_BorrowCPtr(*(v12 + 8));
    v14 = LDOObject_RemoveAttribute(a1, v13);
    if (v14)
    {
      break;
    }

    v12 += 8;
    if (v12 >= v11)
    {
      goto LABEL_20;
    }
  }

  v10 = v14;
  if (v4)
  {
LABEL_22:
    OOCAllocator_Free(a1[1], v4);
  }

  return v10;
}

double LDOObject_SetBoolAttribute(uint64_t a1, char *a2, int a3)
{
  v27 = xmmword_26ECCE7B0;
  v28 = 0;
  v26 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v26, &v27);
  v29 = v5;
  if (!v5)
  {
    DWORD1(v27) = a3 == 1;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v26, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v23 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v27;
            *(v23 + 8) = v27;
            *(v23 + 24) = v28;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v26;
    v24 = v27;
    v25 = v28;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v16 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v16 = v15 + 1000000;
      }

      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 8)
      {
        v18 = 8;
      }

      else
      {
        v18 = v17;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v18, &v29);
      *(a1 + 32) = v7;
      v5 = v29;
      if (v29)
      {
        goto LABEL_25;
      }

      *(a1 + 24) = v18;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v19 = (v10 >> 5);
    v20 = v19 > v9;
    v21 = v19 - v9;
    if (v20)
    {
      cstdlib_memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v21);
      v7 = *(a1 + 32);
      v5 = v29;
    }

    else
    {
      v5 = 0;
    }

    v22 = v7 + 32 * v9;
    *v22 = v14;
    result = *&v24;
    *(v22 + 24) = v25;
    *(v22 + 8) = v24;
  }

LABEL_25:
  if (v5)
  {
    if (v26)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v26);
    }
  }

  return result;
}

uint64_t __LDOObject_EnsureKeyWithEmptyValue(uint64_t *a1, char *a2, void *a3, int *a4)
{
  result = __LDOObject_GetAttributeMapItem(a1, a2, a3, a4);
  if (!result)
  {
    if (*a3)
    {

      return __LDOObject_DeallocateValue(a1, a4);
    }

    else
    {
      v9 = a1[1];

      return PNEW_LDOString_ConFromCPtr(v9, v9, a2, a3);
    }
  }

  return result;
}

uint64_t LDOObject_SetCategory(uint64_t a1, char *a2)
{
  v5 = (a1 + 48);
  v4 = *(a1 + 48);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);

  return PNEW_LDOString_ConFromCPtr(v7, v7, a2, v5);
}

uint64_t LDOObject_SetListU32Attribute(uint64_t a1, char *a2, const void *a3, unsigned int a4)
{
  v34 = xmmword_26ECCE7C8;
  v35 = 0;
  v33 = 0;
  v7 = 0;
  v36 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v33, &v34);
  if (v36 || (v8 = OOCAllocator_Calloc(*(a1 + 8), 1, 24, &v36), v7 = v8, v36))
  {
LABEL_3:
    if (v33)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v33);
    }

    if (v7)
    {
      OOCAllocator_Free(*(a1 + 8), v7);
    }

    return v36;
  }

  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  if (a4)
  {
    if (a4 <= 8)
    {
      v10 = 8;
    }

    else
    {
      v10 = a4;
    }

    v11 = OOCAllocator_Realloc(*(a1 + 8), 0, 4 * v10, &v36);
    *(v7 + 8) = v11;
    if (v36)
    {
      goto LABEL_3;
    }

    *v7 = v10;
    *(v7 + 16) = v11;
    cstdlib_memcpy(v11, a3, 4 * a4);
    *(v7 + 16) += 4 * a4;
  }

  v35 = v7;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = 0;
  v15 = v13 - v12;
  if (v13 != v12)
  {
    v16 = v15 >> 5;
    while (1)
    {
      v17 = v16 >> 1;
      v18 = LDOString_CompareTo(v33, *(*(a1 + 32) + 32 * v14 + 32 * (v16 >> 1)));
      if (v18 < 1)
      {
        if ((v18 & 0x80000000) == 0)
        {
          v30 = *(a1 + 32) + 32 * (v14 + v17);
          *(v30 + 8) = v34;
          *(v30 + 24) = v35;
          goto LABEL_40;
        }
      }

      else
      {
        v14 += v17 + 1;
        v17 = v16 - (v17 + 1);
      }

      v16 = v17;
      if (!v17)
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v15 = v13 - v12;
        break;
      }
    }
  }

  v19 = v33;
  v31 = v34;
  v32 = v35;
  v20 = v15 >> 5;
  if (*(a1 + 24) == (v15 >> 5) && v20 != -1)
  {
    v22 = 2 * v20;
    if (2 * v20 >= (v20 + 1000000))
    {
      v22 = v20 + 1000000;
    }

    if (v22 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v22;
    }

    if (v23 <= 8)
    {
      v24 = 8;
    }

    else
    {
      v24 = v23;
    }

    v25 = OOCAllocator_Realloc(*(a1 + 8), v12, 32 * v24, &v36);
    *(a1 + 32) = v25;
    if (v36)
    {
      goto LABEL_3;
    }

    v12 = v25;
    *(a1 + 24) = v24;
    v13 = v25 + (v15 & 0x1FFFFFFFE0);
  }

  *(a1 + 40) = v13 + 32;
  v26 = (v15 >> 5);
  v27 = v26 > v14;
  v28 = v26 - v14;
  if (v27)
  {
    cstdlib_memmove((v12 + 32 * v14 + 32), (v12 + 32 * v14), 32 * v28);
    v12 = *(a1 + 32);
  }

  v29 = v12 + 32 * v14;
  *v29 = v19;
  *(v29 + 24) = v32;
  *(v29 + 8) = v31;
LABEL_40:
  if (v36)
  {
    goto LABEL_3;
  }

  return v36;
}

double LDOObject_SetS32Attribute(uint64_t a1, char *a2, int a3)
{
  v27 = xmmword_26ECCE7E0;
  v28 = 0;
  v26 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v26, &v27);
  v29 = v5;
  if (!v5)
  {
    DWORD2(v27) = a3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v26, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v23 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v27;
            *(v23 + 8) = v27;
            *(v23 + 24) = v28;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v26;
    v24 = v27;
    v25 = v28;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v16 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v16 = v15 + 1000000;
      }

      if (v16 <= v15 + 1)
      {
        v17 = v15 + 1;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= 8)
      {
        v18 = 8;
      }

      else
      {
        v18 = v17;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v18, &v29);
      *(a1 + 32) = v7;
      v5 = v29;
      if (v29)
      {
        goto LABEL_25;
      }

      *(a1 + 24) = v18;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v19 = (v10 >> 5);
    v20 = v19 > v9;
    v21 = v19 - v9;
    if (v20)
    {
      cstdlib_memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v21);
      v7 = *(a1 + 32);
      v5 = v29;
    }

    else
    {
      v5 = 0;
    }

    v22 = v7 + 32 * v9;
    *v22 = v14;
    result = *&v24;
    *(v22 + 24) = v25;
    *(v22 + 8) = v24;
  }

LABEL_25:
  if (v5)
  {
    if (v26)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v26);
    }
  }

  return result;
}

uint64_t LDOObject_SetStringAttribute(uint64_t a1, char *a2, char *a3)
{
  v32 = 0;
  v30 = xmmword_26ECCE7F8;
  v31 = 0;
  v29 = 0;
  v33 = PNEW_LDOString_ConFromCPtr(*(a1 + 8), *(a1 + 8), a3, &v32);
  if (!v33)
  {
    v33 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v29, &v30);
    if (!v33)
    {
      v31 = v32;
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 0;
      v9 = v7 - v6;
      if (v7 != v6)
      {
        v10 = v9 >> 5;
        while (1)
        {
          v11 = v10 >> 1;
          v12 = LDOString_CompareTo(v29, *(*(a1 + 32) + 32 * v8 + 32 * (v10 >> 1)));
          if (v12 < 1)
          {
            if ((v12 & 0x80000000) == 0)
            {
              v26 = *(a1 + 32) + 32 * (v8 + v11);
              *(v26 + 8) = v30;
              *(v26 + 24) = v31;
              return v33;
            }
          }

          else
          {
            v8 += v11 + 1;
            v11 = v10 - (v11 + 1);
          }

          v10 = v11;
          if (!v11)
          {
            v6 = *(a1 + 32);
            v7 = *(a1 + 40);
            v9 = v7 - v6;
            break;
          }
        }
      }

      v13 = v29;
      v27 = v30;
      v28 = v31;
      v14 = v9 >> 5;
      if (*(a1 + 24) == (v9 >> 5) && v14 != -1)
      {
        v16 = 2 * v14;
        if (2 * v14 >= (v14 + 1000000))
        {
          v16 = v14 + 1000000;
        }

        if (v16 <= v14 + 1)
        {
          v17 = v14 + 1;
        }

        else
        {
          v17 = v16;
        }

        if (v17 <= 8)
        {
          v18 = 8;
        }

        else
        {
          v18 = v17;
        }

        v19 = OOCAllocator_Realloc(*(a1 + 8), v6, 32 * v18, &v33);
        *(a1 + 32) = v19;
        if (v33)
        {
          goto LABEL_3;
        }

        v6 = v19;
        *(a1 + 24) = v18;
        v7 = v19 + (v9 & 0x1FFFFFFFE0);
      }

      *(a1 + 40) = v7 + 32;
      v20 = (v9 >> 5);
      v21 = (v6 + 32 * v8);
      v22 = v20 > v8;
      v23 = v20 - v8;
      if (!v22)
      {
        *v21 = v13;
        *(v21 + 3) = v28;
        *(v21 + 8) = v27;
        return v33;
      }

      cstdlib_memmove(v21 + 32, v21, 32 * v23);
      v24 = v33;
      v25 = *(a1 + 32) + 32 * v8;
      *v25 = v13;
      *(v25 + 24) = v28;
      *(v25 + 8) = v27;
      if (!v24)
      {
        return v33;
      }
    }
  }

LABEL_3:
  if (v29)
  {
    OOC_PlacementDeleteObject(*(a1 + 8), v29);
  }

  if (v32)
  {
    OOC_PlacementDeleteObject(*(a1 + 8), v32);
  }

  return v33;
}

uint64_t LDOObject_SetType(uint64_t a1, char *a2)
{
  v5 = (a1 + 56);
  v4 = *(a1 + 56);
  if (v4)
  {
    result = OOC_PlacementDeleteObject(*(a1 + 8), v4);
    if (result)
    {
      return result;
    }

    *v5 = 0;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(a1 + 8);

  return PNEW_LDOString_ConFromCPtr(v7, v7, a2, v5);
}

double LDOObject_SetU32Attribute(uint64_t a1, char *a2, int a3)
{
  v28 = 0uLL;
  v29 = 0;
  v27 = 0;
  v5 = __LDOObject_EnsureKeyWithEmptyValue(a1, a2, &v27, &v28);
  v30 = v5;
  if (!v5)
  {
    DWORD1(v28) = a3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 0;
    v10 = v8 - v7;
    if (v8 != v7)
    {
      v11 = v10 >> 5;
      while (1)
      {
        v12 = v11 >> 1;
        v13 = LDOString_CompareTo(v27, *(*(a1 + 32) + 32 * v9 + 32 * (v11 >> 1)));
        if (v13 < 1)
        {
          if ((v13 & 0x80000000) == 0)
          {
            v24 = *(a1 + 32) + 32 * (v9 + v12);
            result = *&v28;
            *(v24 + 8) = v28;
            *(v24 + 24) = v29;
            return result;
          }
        }

        else
        {
          v9 += v12 + 1;
          v12 = v11 - (v12 + 1);
        }

        v11 = v12;
        if (!v12)
        {
          v7 = *(a1 + 32);
          v8 = *(a1 + 40);
          v10 = v8 - v7;
          break;
        }
      }
    }

    v14 = v27;
    v25 = v28;
    v26 = v29;
    v15 = v10 >> 5;
    if (*(a1 + 24) == (v10 >> 5) && v15 != -1)
    {
      v17 = 2 * v15;
      if (2 * v15 >= (v15 + 1000000))
      {
        v17 = v15 + 1000000;
      }

      if (v17 <= v15 + 1)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      v7 = OOCAllocator_Realloc(*(a1 + 8), v7, 32 * v19, &v30);
      *(a1 + 32) = v7;
      v5 = v30;
      if (v30)
      {
        goto LABEL_27;
      }

      *(a1 + 24) = v19;
      v8 = v7 + (v10 & 0x1FFFFFFFE0);
    }

    *(a1 + 40) = v8 + 32;
    v20 = (v10 >> 5);
    v21 = v20 > v9;
    v22 = v20 - v9;
    if (v21)
    {
      cstdlib_memmove((v7 + 32 * v9 + 32), (v7 + 32 * v9), 32 * v22);
      v7 = *(a1 + 32);
      v5 = v30;
    }

    else
    {
      v5 = 0;
    }

    v23 = v7 + 32 * v9;
    *v23 = v14;
    result = *&v25;
    *(v23 + 24) = v26;
    *(v23 + 8) = v25;
  }

LABEL_27:
  if (v5)
  {
    if (v27)
    {
      OOC_PlacementDeleteObject(*(a1 + 8), v27);
    }
  }

  return result;
}

uint64_t LDOObject_ToString(uint64_t a1, uint64_t *a2)
{
  v4 = PNEW_LDOString_Con(*(a1 + 8), *(a1 + 8), a2);
  if (v4)
  {
    return v4;
  }

  v5 = *a2;
  appended = LDOString_AppendPrefixU32Suffix(v5, "  ID: ", *(a1 + 16), "\n");
  if (!appended)
  {
    appended = LDOString_AppendPrefixStringSuffix(v5, "  Category: ", *(a1 + 48), "\n");
    if (!appended)
    {
      appended = LDOString_AppendPrefixStringSuffix(v5, "  Type: ", *(a1 + 56), "\n");
      if (!appended)
      {
        appended = LHString_Append(v5, "  Attributes:\n");
        if (!appended)
        {
          v9 = *(a1 + 32);
          if (!v9 || v9 >= *(a1 + 40))
          {
            return 0;
          }

          while (1)
          {
            v10 = *(v9 + 8);
            v11 = *(v9 + 12);
            v12 = *(v9 + 16);
            v13 = *(v9 + 24);
            appended = LDOString_AppendPrefixStringSuffix(v5, "    ", *v9, " = ");
            if (appended)
            {
              break;
            }

            if (v10 <= 1)
            {
              if (v10)
              {
                if (v10 != 1)
                {
LABEL_28:
                  v15 = v5;
                  v16 = "UNKNOWN TYPE OF ATTRIBUTE\n";
LABEL_30:
                  v17 = LHString_Append(v15, v16);
                  goto LABEL_31;
                }

                v17 = LDOString_AppendPrefixS32Suffix(v5, 0, v12, "\n");
              }

              else
              {
                v17 = LDOString_AppendPrefixU32Suffix(v5, 0, v11, "\n");
              }
            }

            else
            {
              switch(v10)
              {
                case 2:
                  v17 = LDOString_AppendPrefixStringSuffix(v5, 0, v13, "\n");
                  break;
                case 3:
                  appended = LHString_Append(v5, "[");
                  if (appended)
                  {
                    goto LABEL_6;
                  }

                  for (i = *(v13 + 8); i < *(v13 + 16); ++i)
                  {
                    appended = LDOString_AppendPrefixU32Suffix(v5, 0, *i, ", ");
                    if (appended)
                    {
                      goto LABEL_6;
                    }
                  }

                  v15 = v5;
                  v16 = "]\n";
                  goto LABEL_30;
                case 4:
                  v17 = LDOString_AppendPrefixBoolSuffix(v5, 0, v11 == 1, "\n");
                  break;
                default:
                  goto LABEL_28;
              }
            }

LABEL_31:
            v4 = v17;
            if (v17)
            {
              goto LABEL_7;
            }

            v9 += 32;
            if (v9 >= *(a1 + 40))
            {
              return v4;
            }
          }
        }
      }
    }
  }

LABEL_6:
  v4 = appended;
LABEL_7:
  if (v5)
  {
    v7 = LDOString_BorrowAllocator(v5);
    OOC_PlacementDeleteObject(v7, v5);
  }

  return v4;
}