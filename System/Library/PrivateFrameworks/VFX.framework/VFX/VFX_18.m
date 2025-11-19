uint64_t sub_1AF1F8FCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a2)
  {
    if ((objc_msgSend_conformsToProtocol_(a2, a2, &unk_1F2629960, a4) & 1) == 0)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE5A98(v6);
      }
    }
  }

  sub_1AF1F3034(*(a1 + 8), &v9, 1, a4);
  return objc_msgSend_setFragmentTexture_atIndex_(*(a1 + 16), v7, v9, a3);
}

uint64_t sub_1AF1F905C(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  v6 = CFXBufferAllocatorPerFrameAllocateWithBytes(**(a1 + 32), a2, a3);
  v8 = v7;
  MTLBuffer = CFXBufferSliceGetMTLBuffer(v6, v7);
  v11 = *(a1 + 16);

  return objc_msgSend_setFragmentBuffer_offset_atIndex_(v11, v9, MTLBuffer, v8, a4);
}

__int16 *sub_1AF1F90BC(__int16 *result, __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 4 * v70) > *(*a3 + 4 * v71))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = v9[1];
      v77 = *v9;
      v78 = *v9;
      v79 = *a3;
      v80 = *(*a3 + 4 * v73);
      v81 = *(*a3 + 4 * v77);
      v82 = v9[2];
      v83 = *(*a3 + 4 * v75);
      if (v80 <= v81)
      {
        if (v83 > v80)
        {
          *v72 = v82;
          *v74 = v76;
          v84 = v9;
          result = v9 + 1;
          v77 = v73;
          v75 = v73;
          if (v83 > v81)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v79 + 4 * v88) > *(v79 + 4 * v75))
          {
            *v74 = v88;
            *(a2 - 1) = v76;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v79 + 4 * v89);
            if (v91 > *(v79 + 4 * v90))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 > *(v79 + 4 * v92))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v83 > v80)
        {
          v84 = v9;
          result = v9 + 2;
          v76 = *v9;
          goto LABEL_104;
        }

        *v9 = v76;
        v9[1] = v78;
        v84 = v9 + 1;
        result = v9 + 2;
        v76 = v78;
        if (v83 > v81)
        {
LABEL_104:
          *v84 = v82;
          *result = v78;
          v75 = v77;
          goto LABEL_106;
        }
      }

      v76 = v82;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return sub_1AF1F9810(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1AF1F99E8(v9, a2, a3);
      }

      else
      {

        return sub_1AF1F9A7C(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_1AF1FA028(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * v19);
      if (v20 <= v21)
      {
        if (v17 > v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) > *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 > v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) > v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = v9[1];
      v33 = *(v15 + 4 * *(v13 - 1));
      v34 = *(v15 + 4 * v32);
      v35 = *(v13 - 1);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v33 <= v34)
      {
        if (v37 > v33)
        {
          *v31 = v36;
          *(a2 - 2) = v35;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) > *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 > v33)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v35;
        *v31 = v32;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) > v34)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v43 = v13[1];
      v42 = v13 + 1;
      v44 = v9[2];
      v45 = *(v15 + 4 * v43);
      v46 = *(v15 + 4 * v44);
      v47 = v43;
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v45 <= v46)
      {
        if (v49 > v45)
        {
          *v42 = v48;
          *(a2 - 3) = v47;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) > *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 > v45)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v47;
        *v42 = v44;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) > v46)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v44;
        }
      }

      v53 = *v14;
      v54 = *(v15 + 4 * *v14);
      v55 = *(v15 + 4 * *v31);
      v56 = *v31;
      v57 = *v42;
      v58 = *(v15 + 4 * *v42);
      if (v54 <= v55)
      {
        if (v58 > v54)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          v53 = v56;
          if (v58 > v55)
          {
            goto LABEL_59;
          }

          v53 = v57;
        }
      }

      else
      {
        if (v58 <= v54)
        {
          *v31 = v53;
          *v14 = v56;
          v31 = v14;
          v53 = v57;
          if (v58 <= v55)
          {
            v53 = v56;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v56;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * v23);
    if (v24 > v25)
    {
      if (v17 > v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) > v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 <= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) <= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) <= *(v15 + 4 * *v9))
    {
      result = sub_1AF1F9AEC(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = sub_1AF1F9BC8(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = sub_1AF1F9CA8(v9, v60, a3);
    v9 = v60 + 1;
    result = sub_1AF1F9CA8(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = sub_1AF1F90BC(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = *a3;
  v65 = *(*a3 + 4 * v9[1]);
  v66 = *(*a3 + 4 * v63);
  v67 = v9[1];
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v65 <= v66)
  {
    if (v69 > v65)
    {
      v9[1] = v68;
      *(a2 - 1) = v67;
      v85 = v9[1];
      v86 = *v9;
      if (*(v64 + 4 * v85) > *(v64 + 4 * v86))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 <= v65)
    {
      *v9 = v67;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v64 + 4 * v87) <= v66)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

__int16 *sub_1AF1F9810(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * v6);
  v10 = *(*a6 + 4 * v7);
  v11 = *a2;
  v12 = *a3;
  v13 = *(*a6 + 4 * *a3);
  if (v9 <= v10)
  {
    if (v13 <= v9)
    {
      v7 = *a3;
      v11 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
      v14 = *a2;
      v15 = *result;
      v7 = v6;
      if (*(v8 + 4 * v14) > *(v8 + 4 * v15))
      {
        *result = v14;
        *a2 = v15;
        v7 = *a3;
        v11 = *a3;
      }
    }
  }

  else
  {
    if (v13 <= v9)
    {
      *result = v11;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 4 * *a3) <= v10)
      {
        v7 = *a3;
        goto LABEL_12;
      }

      *a2 = v11;
    }

    else
    {
      *result = v12;
    }

    *a3 = v7;
    v11 = v7;
  }

LABEL_12:
  v16 = *a4;
  if (*(v8 + 4 * v16) > *(v8 + 4 * v7))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) > *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) > *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) > *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) > *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) > *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) > *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

__int16 *sub_1AF1F99E8(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 > *(v5 + 4 * v8))
        {
          v10 = v7;
          v11 = v8;
          v12 = v4;
          while (1)
          {
            *(result + v12 + 2) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(result + v12 - 2);
            v12 -= 2;
            if (v9 <= *(v5 + 4 * v11))
            {
              v13 = (result + v12 + 2);
              goto LABEL_10;
            }
          }

          v13 = result;
LABEL_10:
          *v13 = v10;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int16 *sub_1AF1F9A7C(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 > *(v4 + 4 * v6))
        {
          v8 = v5;
          v9 = v6;
          v10 = result;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            --v10;
          }

          while (v7 > *(v4 + 4 * v9));
          *v10 = v8;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

__int16 *sub_1AF1F9AEC(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 <= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 <= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 <= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 > *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 <= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 > *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

__int16 *sub_1AF1F9BC8(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) > v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) <= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) <= v6);
  }

  if (v8 < a2)
  {
    v12 = v7;
    v13 = *a2;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v12;
      do
      {
        v16 = v14[1];
        ++v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) > v6);
      do
      {
        v17 = *--v15;
        v13 = v17;
      }

      while (*(v5 + 4 * v17) <= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL sub_1AF1F9CA8(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * a1[1]);
      v9 = *(*a3 + 4 * v6);
      v10 = a1[1];
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v8 <= v9)
      {
        if (v12 > v8)
        {
          a1[1] = v11;
          *(a2 - 1) = v10;
          v37 = a1[1];
          v38 = *a1;
          if (*(v7 + 4 * v37) > *(v7 + 4 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v12 <= v8)
      {
        *a1 = v10;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v7 + 4 * v51) <= v9)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1AF1F9810(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = a1[1];
    v28 = *a1;
    v29 = *a1;
    v30 = *a3;
    v31 = *(*a3 + 4 * v24);
    v32 = *(*a3 + 4 * v28);
    v33 = a1[2];
    v34 = *(*a3 + 4 * v26);
    if (v31 <= v32)
    {
      if (v34 > v31)
      {
        *v23 = v33;
        *v25 = v27;
        v35 = a1;
        v36 = a1 + 1;
        v28 = v24;
        v26 = v24;
        if (v34 <= v32)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 > v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v27 = *a1;
LABEL_44:
        *v35 = v33;
        *v36 = v29;
        v26 = v28;
LABEL_46:
        v52 = *(a2 - 1);
        if (*(v30 + 4 * v52) > *(v30 + 4 * v26))
        {
          *v25 = v52;
          *(a2 - 1) = v27;
          v53 = *v25;
          v54 = *v23;
          v55 = *(v30 + 4 * v53);
          if (v55 > *(v30 + 4 * v54))
          {
            a1[1] = v53;
            a1[2] = v54;
            v56 = *a1;
            if (v55 > *(v30 + 4 * v56))
            {
              *a1 = v53;
              a1[1] = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v27 = v29;
      if (v34 > v32)
      {
        goto LABEL_44;
      }
    }

    v27 = v33;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) > *(*a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 4 * v14);
  v18 = *(*a3 + 4 * *a1);
  v19 = a1[2];
  v20 = *(*a3 + 4 * v19);
  if (v17 > v18)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v19;
    *v22 = v15;
    goto LABEL_26;
  }

  if (v20 > v17)
  {
    a1[1] = v19;
    *v13 = v14;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 6; ; i += 2)
  {
    v42 = *v13;
    v43 = *(v16 + 4 * *v39);
    if (v43 > *(v16 + 4 * v42))
    {
      v44 = *v39;
      v45 = v42;
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 2;
        if (v46 == 2)
        {
          break;
        }

        v48 = *(a1 + v46 - 4);
        v45 = v48;
        v49 = *(v16 + 4 * v48);
        v46 = v47;
        if (v43 <= v49)
        {
          v50 = (a1 + v47);
          goto LABEL_34;
        }
      }

      v50 = a1;
LABEL_34:
      *v50 = v44;
      if (++v40 == 8)
      {
        break;
      }
    }

    v13 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__int16 *sub_1AF1FA028(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1AF1FA1D0(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) > *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          sub_1AF1FA1D0(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) > *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          sub_1AF1FA2B8(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1AF1FA1D0(uint64_t result, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *a4;
      v11 = *(v9 + 4 * v10);
      if (*(v9 + 4 * *v7) <= v11)
      {
        v12 = *v7;
        do
        {
          v13 = v7;
          *a4 = v12;
          if (v5 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 2 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) > *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v12 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * *v7) <= v11);
        *v13 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1FA2B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 2 * v4);
    v6 = *v5;
    v9 = *(a2 - 2);
    v7 = (a2 - 2);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) > v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 2 * v4);
        LOWORD(v6) = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * *v5) > v11);
      *v12 = v8;
    }
  }

  return result;
}

__int16 *sub_1AF1FA324(__int16 *result, __int16 *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v9;
        if (*(*a3 + 4 * v70) < *(*a3 + 4 * v71))
        {
          *v9 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v72 = v9 + 1;
      v73 = v9[1];
      v74 = v9 + 2;
      v75 = v9[2];
      v76 = v9[1];
      v77 = *v9;
      v78 = *v9;
      v79 = *a3;
      v80 = *(*a3 + 4 * v73);
      v81 = *(*a3 + 4 * v77);
      v82 = v9[2];
      v83 = *(*a3 + 4 * v75);
      if (v80 >= v81)
      {
        if (v83 < v80)
        {
          *v72 = v82;
          *v74 = v76;
          v84 = v9;
          result = v9 + 1;
          v77 = v73;
          v75 = v73;
          if (v83 < v81)
          {
            goto LABEL_104;
          }

LABEL_106:
          v88 = *(a2 - 1);
          if (*(v79 + 4 * v88) < *(v79 + 4 * v75))
          {
            *v74 = v88;
            *(a2 - 1) = v76;
            v89 = *v74;
            v90 = *v72;
            v91 = *(v79 + 4 * v89);
            if (v91 < *(v79 + 4 * v90))
            {
              v9[1] = v89;
              v9[2] = v90;
              v92 = *v9;
              if (v91 < *(v79 + 4 * v92))
              {
                *v9 = v89;
                v9[1] = v92;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v83 < v80)
        {
          v84 = v9;
          result = v9 + 2;
          v76 = *v9;
          goto LABEL_104;
        }

        *v9 = v76;
        v9[1] = v78;
        v84 = v9 + 1;
        result = v9 + 2;
        v76 = v78;
        if (v83 < v81)
        {
LABEL_104:
          *v84 = v82;
          *result = v78;
          v75 = v77;
          goto LABEL_106;
        }
      }

      v76 = v82;
      goto LABEL_106;
    }

    if (v12 == 5)
    {

      return sub_1AF1FAA78(v9, v9 + 1, v9 + 2, v9 + 3, a2 - 1, a3);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_1AF1FAC50(v9, a2, a3);
      }

      else
      {

        return sub_1AF1FACE4(v9, a2, a3);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_1AF1FB290(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *a3;
    v16 = *(a2 - 1);
    v17 = *(*a3 + 4 * v16);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v9;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * v19);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *(a2 - 1) = v18;
          v26 = *v13;
          v27 = *v9;
          if (*(v15 + 4 * v26) < *(v15 + 4 * v27))
          {
            *v9 = v26;
            *v13 = v27;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v9 = v16;
          goto LABEL_29;
        }

        *v9 = v18;
        *v13 = v19;
        v30 = *(a2 - 1);
        if (*(v15 + 4 * v30) < v21)
        {
          *v13 = v30;
LABEL_29:
          *(a2 - 1) = v19;
        }
      }

      v31 = v13 - 1;
      v32 = v9[1];
      v33 = *(v15 + 4 * *(v13 - 1));
      v34 = *(v15 + 4 * v32);
      v35 = *(v13 - 1);
      v36 = *(a2 - 2);
      v37 = *(v15 + 4 * v36);
      if (v33 >= v34)
      {
        if (v37 < v33)
        {
          *v31 = v36;
          *(a2 - 2) = v35;
          v38 = *v31;
          v39 = v9[1];
          if (*(v15 + 4 * v38) < *(v15 + 4 * v39))
          {
            v9[1] = v38;
            *v31 = v39;
          }
        }
      }

      else
      {
        if (v37 < v33)
        {
          v9[1] = v36;
          goto LABEL_43;
        }

        v9[1] = v35;
        *v31 = v32;
        v41 = *(a2 - 2);
        if (*(v15 + 4 * v41) < v34)
        {
          *v31 = v41;
LABEL_43:
          *(a2 - 2) = v32;
        }
      }

      v43 = v13[1];
      v42 = v13 + 1;
      v44 = v9[2];
      v45 = *(v15 + 4 * v43);
      v46 = *(v15 + 4 * v44);
      v47 = v43;
      v48 = *(a2 - 3);
      v49 = *(v15 + 4 * v48);
      if (v45 >= v46)
      {
        if (v49 < v45)
        {
          *v42 = v48;
          *(a2 - 3) = v47;
          v50 = *v42;
          v51 = v9[2];
          if (*(v15 + 4 * v50) < *(v15 + 4 * v51))
          {
            v9[2] = v50;
            *v42 = v51;
          }
        }
      }

      else
      {
        if (v49 < v45)
        {
          v9[2] = v48;
          goto LABEL_52;
        }

        v9[2] = v47;
        *v42 = v44;
        v52 = *(a2 - 3);
        if (*(v15 + 4 * v52) < v46)
        {
          *v42 = v52;
LABEL_52:
          *(a2 - 3) = v44;
        }
      }

      v53 = *v14;
      v54 = *(v15 + 4 * *v14);
      v55 = *(v15 + 4 * *v31);
      v56 = *v31;
      v57 = *v42;
      v58 = *(v15 + 4 * *v42);
      if (v54 >= v55)
      {
        if (v58 < v54)
        {
          *v14 = v57;
          *v42 = v53;
          v42 = v14;
          v53 = v56;
          if (v58 < v55)
          {
            goto LABEL_59;
          }

          v53 = v57;
        }
      }

      else
      {
        if (v58 >= v54)
        {
          *v31 = v53;
          *v14 = v56;
          v31 = v14;
          v53 = v57;
          if (v58 >= v55)
          {
            v53 = v56;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v31 = v57;
        *v42 = v56;
      }

LABEL_60:
      v59 = *v9;
      *v9 = v53;
      *v14 = v59;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v22 = *v9;
    v23 = *v14;
    v24 = *(v15 + 4 * *v9);
    v25 = *(v15 + 4 * v23);
    if (v24 < v25)
    {
      if (v17 < v24)
      {
        *v14 = v16;
        goto LABEL_38;
      }

      *v14 = v22;
      *v9 = v23;
      v40 = *(a2 - 1);
      if (*(v15 + 4 * v40) < v25)
      {
        *v9 = v40;
LABEL_38:
        *(a2 - 1) = v23;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v17 >= v24)
    {
      goto LABEL_39;
    }

    *v9 = v16;
    *(a2 - 1) = v22;
    v28 = *v9;
    v29 = *v14;
    if (*(v15 + 4 * v28) >= *(v15 + 4 * v29))
    {
      goto LABEL_39;
    }

    *v14 = v28;
    *v9 = v29;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v15 + 4 * *(v9 - 1)) >= *(v15 + 4 * *v9))
    {
      result = sub_1AF1FAD54(v9, a2, a3);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v60 = sub_1AF1FAE30(v9, a2, a3);
    if ((v61 & 1) == 0)
    {
      goto LABEL_67;
    }

    v62 = sub_1AF1FAF10(v9, v60, a3);
    v9 = v60 + 1;
    result = sub_1AF1FAF10(v60 + 1, a2, a3);
    if (result)
    {
      a4 = -v11;
      a2 = v60;
      if (v62)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v62)
    {
LABEL_67:
      result = sub_1AF1FA324(v8, v60, a3, -v11, a5 & 1);
      v9 = v60 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v63 = *v9;
  v64 = *a3;
  v65 = *(*a3 + 4 * v9[1]);
  v66 = *(*a3 + 4 * v63);
  v67 = v9[1];
  v68 = *(a2 - 1);
  v69 = *(*a3 + 4 * v68);
  if (v65 >= v66)
  {
    if (v69 < v65)
    {
      v9[1] = v68;
      *(a2 - 1) = v67;
      v85 = v9[1];
      v86 = *v9;
      if (*(v64 + 4 * v85) < *(v64 + 4 * v86))
      {
        *v9 = v85;
        v9[1] = v86;
      }
    }
  }

  else
  {
    if (v69 >= v65)
    {
      *v9 = v67;
      v9[1] = v63;
      v87 = *(a2 - 1);
      if (*(v64 + 4 * v87) >= v66)
      {
        return result;
      }

      v9[1] = v87;
    }

    else
    {
      *v9 = v68;
    }

    *(a2 - 1) = v63;
  }

  return result;
}

__int16 *sub_1AF1FAA78(__int16 *result, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, uint64_t *a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *a6;
  v9 = *(*a6 + 4 * v6);
  v10 = *(*a6 + 4 * v7);
  v11 = *a2;
  v12 = *a3;
  v13 = *(*a6 + 4 * *a3);
  if (v9 >= v10)
  {
    if (v13 >= v9)
    {
      v7 = *a3;
      v11 = *a3;
    }

    else
    {
      *a2 = v12;
      *a3 = v11;
      v14 = *a2;
      v15 = *result;
      v7 = v6;
      if (*(v8 + 4 * v14) < *(v8 + 4 * v15))
      {
        *result = v14;
        *a2 = v15;
        v7 = *a3;
        v11 = *a3;
      }
    }
  }

  else
  {
    if (v13 >= v9)
    {
      *result = v11;
      *a2 = v7;
      v11 = *a3;
      if (*(v8 + 4 * *a3) >= v10)
      {
        v7 = *a3;
        goto LABEL_12;
      }

      *a2 = v11;
    }

    else
    {
      *result = v12;
    }

    *a3 = v7;
    v11 = v7;
  }

LABEL_12:
  v16 = *a4;
  if (*(v8 + 4 * v16) < *(v8 + 4 * v7))
  {
    *a3 = v16;
    *a4 = v11;
    v17 = *a3;
    v18 = *a2;
    if (*(v8 + 4 * v17) < *(v8 + 4 * v18))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = *a2;
      v20 = *result;
      if (*(v8 + 4 * v19) < *(v8 + 4 * v20))
      {
        *result = v19;
        *a2 = v20;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  if (*(v8 + 4 * v21) < *(v8 + 4 * v22))
  {
    *a4 = v21;
    *a5 = v22;
    v23 = *a4;
    v24 = *a3;
    if (*(v8 + 4 * v23) < *(v8 + 4 * v24))
    {
      *a3 = v23;
      *a4 = v24;
      v25 = *a3;
      v26 = *a2;
      if (*(v8 + 4 * v25) < *(v8 + 4 * v26))
      {
        *a2 = v25;
        *a3 = v26;
        v27 = *a2;
        v28 = *result;
        if (*(v8 + 4 * v27) < *(v8 + 4 * v28))
        {
          *result = v27;
          *a2 = v28;
        }
      }
    }
  }

  return result;
}

__int16 *sub_1AF1FAC50(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = *a3;
      v6 = result;
      do
      {
        v7 = v6[1];
        v8 = *v6;
        v6 = v3;
        v9 = *(v5 + 4 * v7);
        if (v9 < *(v5 + 4 * v8))
        {
          v10 = v7;
          v11 = v8;
          v12 = v4;
          while (1)
          {
            *(result + v12 + 2) = v11;
            if (!v12)
            {
              break;
            }

            v11 = *(result + v12 - 2);
            v12 -= 2;
            if (v9 >= *(v5 + 4 * v11))
            {
              v13 = (result + v12 + 2);
              goto LABEL_10;
            }
          }

          v13 = result;
LABEL_10:
          *v13 = v10;
        }

        v3 = v6 + 1;
        v4 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

__int16 *sub_1AF1FACE4(__int16 *result, __int16 *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = *a3;
      do
      {
        v5 = result[1];
        v6 = *result;
        result = v3;
        v7 = *(v4 + 4 * v5);
        if (v7 < *(v4 + 4 * v6))
        {
          v8 = v5;
          v9 = v6;
          v10 = result;
          do
          {
            *v10 = v9;
            v9 = *(v10 - 2);
            --v10;
          }

          while (v7 < *(v4 + 4 * v9));
          *v10 = v8;
        }

        v3 = result + 1;
      }

      while (result + 1 != a2);
    }
  }

  return result;
}

__int16 *sub_1AF1FAD54(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a3;
  v5 = *(*a3 + 4 * v3);
  if (v5 >= *(*a3 + 4 * *(a2 - 1)))
  {
    v8 = a1 + 1;
    do
    {
      v6 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
    }

    while (v5 >= *(v4 + 4 * *v6));
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = v6[1];
      ++v6;
    }

    while (v5 >= *(v4 + 4 * v7));
  }

  if (v6 < a2)
  {
    do
    {
      v9 = *--a2;
    }

    while (v5 < *(v4 + 4 * v9));
  }

  if (v6 < a2)
  {
    v10 = *v6;
    v11 = *a2;
    do
    {
      *v6 = v11;
      *a2 = v10;
      do
      {
        v12 = v6[1];
        ++v6;
        v10 = v12;
      }

      while (v5 >= *(v4 + 4 * v12));
      do
      {
        v13 = *--a2;
        v11 = v13;
      }

      while (v5 < *(v4 + 4 * v13));
    }

    while (v6 < a2);
  }

  if (v6 - 1 != a1)
  {
    *a1 = *(v6 - 1);
  }

  *(v6 - 1) = v3;
  return v6;
}

__int16 *sub_1AF1FAE30(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = 0;
  v4 = *a1;
  v5 = *a3;
  v6 = *(*a3 + 4 * *a1);
  do
  {
    v7 = a1[++v3];
  }

  while (*(v5 + 4 * v7) < v6);
  v8 = &a1[v3];
  v9 = &a1[v3 - 1];
  if (v3 == 1)
  {
    do
    {
      if (v8 >= a2)
      {
        break;
      }

      v11 = *--a2;
    }

    while (*(v5 + 4 * v11) >= v6);
  }

  else
  {
    do
    {
      v10 = *--a2;
    }

    while (*(v5 + 4 * v10) >= v6);
  }

  if (v8 < a2)
  {
    v12 = v7;
    v13 = *a2;
    v14 = v8;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v12;
      do
      {
        v16 = v14[1];
        ++v14;
        v12 = v16;
      }

      while (*(v5 + 4 * v16) < v6);
      do
      {
        v17 = *--v15;
        v13 = v17;
      }

      while (*(v5 + 4 * v17) >= v6);
    }

    while (v14 < v15);
    v9 = v14 - 1;
  }

  if (v9 != a1)
  {
    *a1 = *v9;
  }

  *v9 = v4;
  return v9;
}

BOOL sub_1AF1FAF10(__int16 *a1, __int16 *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = *a3;
      v8 = *(*a3 + 4 * a1[1]);
      v9 = *(*a3 + 4 * v6);
      v10 = a1[1];
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v8 >= v9)
      {
        if (v12 < v8)
        {
          a1[1] = v11;
          *(a2 - 1) = v10;
          v37 = a1[1];
          v38 = *a1;
          if (*(v7 + 4 * v37) < *(v7 + 4 * v38))
          {
            *a1 = v37;
            a1[1] = v38;
          }
        }

        return 1;
      }

      if (v12 >= v8)
      {
        *a1 = v10;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v7 + 4 * v51) >= v9)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_1AF1FAA78(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = a1[1];
    v28 = *a1;
    v29 = *a1;
    v30 = *a3;
    v31 = *(*a3 + 4 * v24);
    v32 = *(*a3 + 4 * v28);
    v33 = a1[2];
    v34 = *(*a3 + 4 * v26);
    if (v31 >= v32)
    {
      if (v34 < v31)
      {
        *v23 = v33;
        *v25 = v27;
        v35 = a1;
        v36 = a1 + 1;
        v28 = v24;
        v26 = v24;
        if (v34 >= v32)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v34 < v31)
      {
        v35 = a1;
        v36 = a1 + 2;
        v27 = *a1;
LABEL_44:
        *v35 = v33;
        *v36 = v29;
        v26 = v28;
LABEL_46:
        v52 = *(a2 - 1);
        if (*(v30 + 4 * v52) < *(v30 + 4 * v26))
        {
          *v25 = v52;
          *(a2 - 1) = v27;
          v53 = *v25;
          v54 = *v23;
          v55 = *(v30 + 4 * v53);
          if (v55 < *(v30 + 4 * v54))
          {
            a1[1] = v53;
            a1[2] = v54;
            v56 = *a1;
            if (v55 < *(v30 + 4 * v56))
            {
              *a1 = v53;
              a1[1] = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v27;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v27 = v29;
      if (v34 < v32)
      {
        goto LABEL_44;
      }
    }

    v27 = v33;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[1];
  v15 = *a1;
  v16 = *a3;
  v17 = *(*a3 + 4 * v14);
  v18 = *(*a3 + 4 * *a1);
  v19 = a1[2];
  v20 = *(*a3 + 4 * v19);
  if (v17 < v18)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v14;
      a1[1] = v15;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v18)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v19;
    *v22 = v15;
    goto LABEL_26;
  }

  if (v20 < v17)
  {
    a1[1] = v19;
    *v13 = v14;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v18)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v39 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v40 = 0;
  for (i = 6; ; i += 2)
  {
    v42 = *v13;
    v43 = *(v16 + 4 * *v39);
    if (v43 < *(v16 + 4 * v42))
    {
      v44 = *v39;
      v45 = v42;
      v46 = i;
      while (1)
      {
        *(a1 + v46) = v45;
        v47 = v46 - 2;
        if (v46 == 2)
        {
          break;
        }

        v48 = *(a1 + v46 - 4);
        v45 = v48;
        v49 = *(v16 + 4 * v48);
        v46 = v47;
        if (v43 >= v49)
        {
          v50 = (a1 + v47);
          goto LABEL_34;
        }
      }

      v50 = a1;
LABEL_34:
      *v50 = v44;
      if (++v40 == 8)
      {
        break;
      }
    }

    v13 = v39++;
    if (v39 == a2)
    {
      return 1;
    }
  }

  return v39 + 1 == a2;
}

__int16 *sub_1AF1FB290(__int16 *a1, __int16 *a2, __int16 *a3, uint64_t *a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1AF1FB438(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*(*a4 + 4 * v13) < *(*a4 + 4 * v14))
        {
          *v12 = v14;
          *a1 = v13;
          sub_1AF1FB438(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v15 = 0;
        v16 = *a1;
        v17 = *a4;
        v18 = a1;
        do
        {
          v19 = v18;
          v20 = &v18[v15];
          v21 = 2 * v15;
          v18 = v20 + 1;
          v15 = (2 * v15) | 1;
          v22 = v21 + 2;
          if (v22 < v8)
          {
            v24 = v20[2];
            v23 = v20 + 2;
            if (*(v17 + 4 * *(v23 - 1)) < *(v17 + 4 * v24))
            {
              v18 = v23;
              v15 = v22;
            }
          }

          *v19 = *v18;
        }

        while (v15 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v16;
        }

        else
        {
          *v18 = *v6;
          *v6 = v16;
          sub_1AF1FB520(a1, (v18 + 1), a4, v18 + 1 - a1);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1AF1FB438(uint64_t result, uint64_t *a2, uint64_t a3, __int16 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 1)
    {
      v6 = (v4 + 1);
      v7 = (result + 2 * (v4 + 1));
      v8 = (v4 + 2);
      v9 = *a2;
      if (v8 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
      {
        ++v7;
        v6 = v8;
      }

      v10 = *a4;
      v11 = *(v9 + 4 * v10);
      if (*(v9 + 4 * *v7) >= v11)
      {
        v12 = *v7;
        do
        {
          v13 = v7;
          *a4 = v12;
          if (v5 < v6)
          {
            break;
          }

          v14 = 2 * v6;
          v6 = (2 * v6) | 1;
          v7 = (result + 2 * v6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v9 + 4 * *v7) < *(v9 + 4 * v7[1]))
          {
            ++v7;
            v6 = v15;
          }

          v12 = *v7;
          a4 = v13;
        }

        while (*(v9 + 4 * *v7) >= v11);
        *v13 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_1AF1FB520(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 2 * v4);
    v6 = *v5;
    v9 = *(a2 - 2);
    v7 = (a2 - 2);
    v8 = v9;
    v10 = *a3;
    v11 = *(*a3 + 4 * v9);
    if (*(*a3 + 4 * v6) < v11)
    {
      do
      {
        v12 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 2 * v4);
        LOWORD(v6) = *v5;
        v7 = v12;
      }

      while (*(v10 + 4 * *v5) < v11);
      *v12 = v8;
    }
  }

  return result;
}

uint64_t sub_1AF1FBFAC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3, a4);
  v7 = objc_msgSend_pathForResource_ofType_(v5, v6, @"default", @"metallib");
  v8 = [VFXMTLLibrary alloc];
  result = objc_msgSend_initWithPath_manager_(v8, v9, v7, *(a1 + 32));
  *(*(a1 + 32) + 24) = result;
  return result;
}

uint64_t sub_1AF1FC12C(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_objectForKey_(*(a1[4] + 96), a2, a1[5], a4);
  if (!v8)
  {
    v9 = [VFXMTLLibrary alloc];
    v8 = objc_msgSend_initWithPath_manager_(v9, v10, a1[5], a1[4]);
    objc_msgSend_setObject_forKey_(*(a1[4] + 96), v11, v8, a1[5]);
  }

  result = objc_msgSend_library(v8, v5, v6, v7);
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

dispatch_queue_t sub_1AF1FCB58()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);
  result = dispatch_queue_create("com.apple.vfx.shader-collection-queue", v1);
  qword_1EB658690 = result;
  return result;
}

void sub_1AF1FCB9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF1FCC88;
  v12[3] = &unk_1E7A7CB08;
  v13 = *(a1 + 32);
  v5 = objc_msgSend_commonProfileGeneratorAllowingHotReload_(VFXCommonProfileProgramGenerator, a2, 0, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF1FCD28;
  v11[3] = &unk_1E7A7CB30;
  v11[4] = *(a1 + 32);
  objc_msgSend_collectShaderForProgram_hashCode_newVertexFunctionName_newFragmentFunctionName_sourceCodeBlock_additionalFileBlock_(v5, v10, v8, v6, v7, v9, v12, v11);
  CFRelease(*(a1 + 64));
}

void sub_1AF1FCC88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = 0;
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"commonProfile_%@.metal", a4, v15);
  v9 = objc_msgSend_URLByAppendingPathComponent_(v5, v7, v6, v8);
  if (objc_msgSend_writeToURL_atomically_encoding_error_(a2, v10, v9, 1, 4, &v16))
  {
    v11 = v16 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = sub_1AF0D5194();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE5DD4(&v16, v12, v13, v14);
    }
  }
}

void sub_1AF1FCD28(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  v5 = objc_msgSend_URLByAppendingPathComponent_(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v6, v7, v8);
  v13 = objc_msgSend_path(v5, v10, v11, v12);
  if (objc_msgSend_fileExistsAtPath_(v9, v14, v13, v15))
  {
    v19 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x1E696AEC0], v16, v5, 4, 0);
    if ((objc_msgSend_isEqualToString_(v19, v20, a2, v21) & 1) == 0)
    {
      v22 = sub_1AF0D5194();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5E50();
      }
    }
  }

  else
  {
    v23 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v16, v17, v18);
    PathComponent = objc_msgSend_URLByDeletingLastPathComponent(v5, v24, v25, v26);
    objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v23, v28, PathComponent, 1, 0, 0);
    if (!objc_msgSend_writeToURL_atomically_encoding_error_(a2, v29, v5, 1, 4, &v33) || v33)
    {
      v30 = sub_1AF0D5194();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5DD4(&v33, v30, v31, v32);
      }
    }
  }
}

void sub_1AF1FCE58(uint64_t a1, const char *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = *(a1 + 144);
    if (v6)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, a2, a3, *(a1 + 32));
    }
  }

  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 40) + 112));
    if (!CFDictionaryGetValue(*(*(a1 + 40) + 104), *(a1 + 48)))
    {
      CFDictionarySetValue(*(*(a1 + 40) + 104), *(a1 + 48), a2);
    }

    os_unfair_lock_unlock((*(a1 + 40) + 112));
  }

  else
  {
    v7 = *(a1 + 176);
    if (v7 && (v8 = sub_1AF1D5F1C(v7)) != 0 && (v9 = *v8) != 0)
    {
      v10 = sub_1AF1D5F64(*(a1 + 176));
      v9(0, a3, v10);
    }

    else
    {
      v11 = sub_1AF0D5194();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE5EB8(a3, v11, v12, v13);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
  v14 = sub_1AF0D5194();
  v15 = *(a1 + 184);
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v14;
    if (os_signpost_enabled(v14))
    {
      v17 = *(a1 + 192);
      v18[0] = 67109120;
      v18[1] = v17;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v16, OS_SIGNPOST_INTERVAL_END, v15, "CompileShader", "programID=%d", v18, 8u);
    }
  }
}

void sub_1AF1FCFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1AF1FD070;
  v5[3] = &unk_1E7A7CBA8;
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 32) + 40);
  v5[4] = a2;
  v5[5] = a3;
  v6 = v3;
  dispatch_async(v4, v5);
}

void sub_1AF1FD070(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 48) + 48);

  dispatch_group_leave(v2);
}

void sub_1AF1FD0BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 40);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF1FD13C;
  block[3] = &unk_1E7A7CBF8;
  v4 = *(a1 + 40);
  block[5] = a3;
  block[6] = v4;
  block[4] = a2;
  dispatch_async(v3, block);
}

void sub_1AF1FD154(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1AF1FD174(uint64_t a1, unsigned int a2, UInt8 a3)
{
  if (a2 != 0xFF)
  {
    sub_1AF22DA94(a1, 1u, a2, a3);
  }

  if (~(a2 >> 8))
  {

    sub_1AF22DA94(a1, 2u, BYTE1(a2), a3);
  }
}

void sub_1AF1FD200(uint64_t a1, unsigned int a2, UInt8 a3)
{
  v5 = a1;
  if (a2 != 0xFF)
  {
    v6 = a2;
    if (a2 == BYTE1(a2))
    {
      v7 = 3;
      goto LABEL_7;
    }

    sub_1AF22DB5C(a1, 1u, a2, a3);
  }

  if (!~(a2 >> 8))
  {
    return;
  }

  v6 = BYTE1(a2);
  a1 = v5;
  v7 = 2;
LABEL_7:

  sub_1AF22DB5C(a1, v7, v6, a3);
}

intptr_t sub_1AF1FE3A4(uint64_t a1, void *a2)
{
  prof_eventSmallData(1, "Current CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1269, *(a1 + 48) | 0x300000000);
  objc_msgSend_GPUEndTime(a2, v4, v5, v6);
  v8 = v7;
  objc_msgSend_GPUStartTime(a2, v9, v10, v11);
  *(*(*(a1 + 32) + 16) + 200) = v8 - v12;
  if (objc_msgSend_status(a2, v13, v14, v15) != 4)
  {
    objc_msgSend_commandBufferDidCompleteWithError_(*(*(a1 + 32) + 112), v16, a2, v17);
    v18 = sub_1AF0D5194();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE6234(a2, v18, v19, v20);
    }

    Weak = objc_loadWeak((*(a1 + 32) + 19112));
    objc_msgSend_renderContext_commandBufferDidCompleteWithError_(Weak, v22, *(a1 + 32), a2);
  }

  prof_commit();
  return dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1AF1FE520(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*a1)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE62D8(v5, a2, a3, a4, v6, v7, v8, v9);
    }
  }

  result = objc_msgSend_endEncoding(*a1, a2, a3, a4);
  *a1 = 0;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1AF1FE924(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v3, &v11, v15, 16);
    if (result)
    {
      v6 = result;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v11 + 1) + 8 * v8++) + 16))();
        }

        while (v6 != v8);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v11, v15, 16);
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    v10 = v4[2];

    return v10(v4);
  }

  return result;
}

void sub_1AF1FEA80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  objc_msgSend_kernelStartTime(a2, a2, a3, a4);
  v7 = v6;
  objc_msgSend_kernelEndTime(a2, v8, v9, v10);
  v12 = v11;
  v13 = *(a1 + 40);
  v14 = prof_clockTicksFromSecondsMonotonic(v7);
  v15 = prof_clockTicksFromSecondsMonotonic(v12);
  prof_eventTimeRangeSmallData(v14, v15, "Kernel time", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1364, v13 | 0x300000000);
  objc_msgSend_GPUStartTime(a2, v16, v17, v18);
  v20 = v19;
  objc_msgSend_GPUEndTime(a2, v21, v22, v23);
  v25 = v24;
  v26 = *(a1 + 40);
  v27 = prof_clockTicksFromSecondsMonotonic(v20);
  v28 = prof_clockTicksFromSecondsMonotonic(v25);
  prof_eventTimeRangeSmallData(v27, v28, "CommandBuffer GPU time", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1365, v26 | 0x300000000);
  if (*(a1 + 32))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v31 = *(a1 + 32);
    if (isKindOfClass)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v30, &v38, v42, 16);
      if (v32)
      {
        v33 = v32;
        v34 = *v39;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v39 != v34)
            {
              objc_enumerationMutation(v31);
            }

            (*(*(*(&v38 + 1) + 8 * i) + 16))();
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v36, &v38, v42, 16);
        }

        while (v33);
      }
    }

    else
    {
      v37 = v31[2];

      v37(v31);
    }
  }
}

void sub_1AF1FEC98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  objc_msgSend_presentedTime(a2, a2, a3, a4);
  v6 = v5;
  v7 = *(a1 + 48);
  if (v5 == 0.0)
  {
    prof_eventSmallData(2, "Drawable present skipped", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1411, v7 | 0x300000000);
  }

  else
  {
    v11 = prof_clockTicksFromSecondsMonotonic(v5);
    prof_eventTimeSmallData(2, v11, "Presented time", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1413, v7 | 0x300000000);
  }

  if (*(a1 + 32))
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = *(a1 + 32);
    if (isKindOfClass)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v13, &v20, v24, 16);
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v20 + 1) + 8 * i) + 16))();
          }

          v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v19, &v20, v24, 16);
        }

        while (v16);
      }
    }

    else
    {
      v14[2](*(a1 + 32));
    }
  }

  if (*(a1 + 56) == 1)
  {
    objc_msgSend__didPresentAtTime_(*(a1 + 40), v8, v9, v10, v6);
  }
}

void sub_1AF1FF240(uint64_t a1, void *a2)
{
  prof_eventSmallData(1, "Resource CB creation to completion", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/NewRenderer/VFXMTLRenderContext.mm", 1767, *(*(a1 + 32) + 8) | 0x300000000);
  if (objc_msgSend_status(a2, v4, v5, v6) != 4)
  {
    objc_msgSend_commandBufferDidCompleteWithError_(*(*(a1 + 32) + 112), v7, a2, v8);
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE63C8(a2, v9, v10, v11);
    }

    Weak = objc_loadWeak((*(a1 + 32) + 19112));
    objc_msgSend_renderContext_commandBufferDidCompleteWithError_(Weak, v13, *(a1 + 32), a2);
  }

  prof_commit();
}

void *sub_1AF1FF3B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 && (v7 = sub_1AF0D5194(), os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE646C(v7, a2, a3, a4, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = sub_1AF0D5194();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE64E4(v12, a2, a3, a4, v13, v14, v15, v16);
  }

LABEL_6:
  *a1 = 0;
  a1[1] = 0;
  result = objc_msgSend_blitCommandEncoder(a2, a2, a3, a4);
  *a1 = result;
  a1[1] = a2;
  if (a3)
  {
    return objc_msgSend_setLabel_(result, v18, a3, v19);
  }

  return result;
}

double sub_1AF1FF934(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double result)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = objc_msgSend_contents(a2, a2, a3, a4);
    v11 = objc_msgSend_length(a2, v8, v9, v10);

    *&result = sub_1AF13CF10(v5, v7, v11, v12).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AF20107C(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    v2 = sub_1AF0D5194();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 24);
}

uint64_t sub_1AF2010C8(uint64_t a1, const char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v2 < 2)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v3, a2, 3, 0, 3);
  }

  else
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v3, a2, 3, 0, 3);
  }
}

float sub_1AF2014BC(uint64_t a1, __n128 *a2)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  sub_1AF2766B0(a1, &v23, &v22, &v21);
  v3 = sub_1AF1305D8(a2);
  v4 = v3;
  if (v23 != 1)
  {
    switch(v3)
    {
      case 4u:
        v5 = 1065353216;
        goto LABEL_13;
      case 3u:
        v11 = 0;
LABEL_15:
        v20 = *&v11;
        __asm { FMOV            V0.2S, #1.0 }

        goto LABEL_18;
      case 2u:
        goto LABEL_9;
    }

LABEL_16:
    __asm { FMOV            V0.2S, #1.0 }

    goto LABEL_17;
  }

  if (v3 == 4)
  {
    goto LABEL_16;
  }

  if (v3 != 3)
  {
    if (v3 == 2)
    {
      v5 = 0;
LABEL_13:
      v20 = *&v5;
      __asm { FMOV            V0.2S, #1.0 }

      goto LABEL_18;
    }

    v11 = 1065353216;
    goto LABEL_15;
  }

LABEL_9:
  __asm { FMOV            V0.2S, #1.0 }

  LODWORD(_D0) = 0;
LABEL_17:
  v20 = *&_D0;
LABEL_18:
  v14 = sub_1AF130548(a2);
  v15 = v14.n128_f32[2];
  if (v4 >= 3)
  {
    v16 = v14.n128_f32[2];
  }

  else
  {
    v16 = v14.n128_f32[3];
  }

  if (v4 >= 3)
  {
    v15 = v14.n128_f32[3];
  }

  v17 = v16 * v21;
  v18 = v15 * v22;
  if (v17 > v18)
  {
    return v20;
  }

  result = v20;
  if (v17 < v18)
  {
    return ((v20 + -0.5) * (v17 / v18)) + 0.5;
  }

  return result;
}

uint64_t sub_1AF2016F4(uint64_t a1, const char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (v2 < 2)
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v3, a2, 4, 0, 4);
  }

  else
  {
    return objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v3, a2, 4, 0, 4);
  }
}

uint64_t sub_1AF2021D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v6, a2, v7, a4, v8, v9, v10, v11);
    }
  }

  return objc_msgSend_setLockFillMode_(*(a1 + 24), a2, a2, a4);
}

uint64_t sub_1AF202238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6A18(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = sub_1AF146110(a2);
  v15 = *(a1 + 136);
  v16 = *(a1 + 656);
  if (sub_1AF14620C(a2) && (v17 = sub_1AF0D5194(), os_log_type_enabled(v17, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE6A90(v17, v18, v19, v20, v21, v22, v23, v24);
    if (!v14)
    {
      goto LABEL_11;
    }
  }

  else if (!v14)
  {
    goto LABEL_11;
  }

  if (sub_1AF1B8A30(v14) <= 0.0 && (*(a2 + 80) & 7) != 3)
  {
    v25 = sub_1AF0D5194();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6B08(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

LABEL_11:
  if (!sub_1AF145EB0(a2))
  {
    return objc_msgSend_drawRenderElement_withOverrides_(a1, v33, a2, v16);
  }

  result = sub_1AF131168(v15);
  if ((result & 1) == 0)
  {
    if (!*(a2 + 48))
    {
      v35 = sub_1AF0D5194();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE6B80(v35, v36, v37, v38, v39, v40, v41, v42);
      }
    }

    ++*(*(a1 + 16) + 8);
    if (a3)
    {
      v43 = a3 + 12288;
      *(a1 + 19164) = *(v43 + 2992);
      result = sub_1AF12F5E8(v15);
      *(a1 + 19168) = result;
      v44 = *(v43 + 2506);
      *(a1 + 19160) = v44;
      if (v44 == 1 && (*(v43 + 2507) & 1) == 0 && *(a2 + 80) < 0 || v44 && *(v43 + 2507) && (*(a2 + 80) & 8) != 0)
      {
        return result;
      }
    }

    else
    {
      *(a1 + 19164) = 0;
      *(a1 + 19168) = sub_1AF12F5E8(v15);
      *(a1 + 19160) = 0;
    }

    v45 = *(a2 + 48);
    v46 = sub_1AF20107C(*(a1 + 424));
    (*(v45 + 16))(v45, v46, a1);
    return objc_msgSend__clearRenderCaches(a1, v47, v48, v49);
  }

  return result;
}

uint64_t sub_1AF203660()
{
  if ((atomic_load_explicit(qword_1ED72E030, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDE6D70();
  }

  return byte_1ED72E028;
}

void sub_1AF2043F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(a1 + 32) + 16560) = a2;
  if (a2)
  {
    v6 = sub_1AF14CD4C(*(*(a1 + 32) + 688), *(a2 + 88));
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v10 = *(a1 + 32);
    v10[831] = *v6;
    v10[832] = v7;
    v10[833] = v8;
    v10[834] = v9;
    v11 = *(a1 + 48);
    if (v11)
    {
      *&v12 = sub_1AF1CA3E8(v11, *(a1 + 72), *(*(a1 + 32) + 13296), *(*(a1 + 32) + 13312), *(*(a1 + 32) + 13328), *(*(a1 + 32) + 13344));
      v13 = *(a1 + 32);
      v13[831] = v12;
      v13[832] = v14;
      v13[833] = v15;
      v13[834] = v16;
    }

    v17 = sub_1AF1B9E68(a2);
    v37 = *v17;
    v38 = v17[1];
    v39 = v17[2];
    v40 = v17[3];
    v18 = sub_1AF1B92C8(a2);
    if (v18)
    {
      v19 = v18;
      v20 = sub_1AF1C9420(v18);
      *v21.i64 = sub_1AF1CA3E8(v19, v20, v37, v38, v39, v40);
    }

    else
    {
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = v40;
    }

    v30 = *(a1 + 32);
    v30[835] = v21;
    v30[836] = v22;
    v30[837] = v23;
    v30[838] = v24;
  }

  else
  {
    v25 = *(MEMORY[0x1E69E9B18] + 16);
    v26 = *(MEMORY[0x1E69E9B18] + 32);
    v27 = *(MEMORY[0x1E69E9B18] + 48);
    v28 = *(a1 + 32);
    v28[831] = *MEMORY[0x1E69E9B18];
    v28[832] = v25;
    v28[833] = v26;
    v28[834] = v27;
    v29 = *(a1 + 32);
    v29[838] = v29[834];
    v29[837] = v29[833];
    v29[836] = v29[832];
    v29[835] = v29[831];
  }

  *(*(a1 + 32) + 16568) = 0;
  *(*(a1 + 32) + 16576) = *(a1 + 56);
  if (*(a1 + 76))
  {
    v31 = 0;
    do
    {
      if (objc_msgSend_semanticsCount(*(a1 + 40), a2, a3, a4, *&v37, *&v38, *&v39, *&v40) >= 1)
      {
        v32 = 0;
        v33 = 0;
        do
        {
          (*(*(*(*(a1 + 40) + 48) + v32) + 16))();
          ++v33;
          v32 += 16;
        }

        while (v33 < objc_msgSend_semanticsCount(*(a1 + 40), v34, v35, v36));
      }

      ++v31;
    }

    while (v31 < *(a1 + 76));
  }
}

__n128 sub_1AF206918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 13296);
  v5 = *(a4 + 13312);
  v6 = *(a4 + 13344);
  *(a2 + 32) = *(a4 + 13328);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

__n128 sub_1AF206970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 16568);
  if ((v6 & 2) == 0)
  {
    *(a4 + 16568) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 13296);
      v9 = *(a4 + 13312);
      v10 = *(a4 + 13328);
      v11 = *(a4 + 13344);
      do
      {
        v12 = 0;
        v13 = (a4 + 720 + 784 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 14448 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 14448);
  v24 = *(v22 + 14464);
  v25 = *(v22 + 14496);
  *(a2 + 32) = *(v22 + 14480);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

void sub_1AF206A40(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 16568);
  if ((v6 & 2) == 0)
  {
    *(a4 + 16568) = v6 | 2;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 13296);
      v9 = *(a4 + 13312);
      v10 = *(a4 + 13328);
      v11 = *(a4 + 13344);
      do
      {
        v12 = 0;
        v13 = (a4 + 720 + 784 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 14448 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 14448));
}

__n128 sub_1AF206B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  v6 = *(a4 + 16568);
  if ((v6 & 1) == 0)
  {
    *(a4 + 16568) = v6 | 1;
    if ((v6 & 2) == 0)
    {
      *(a4 + 16568) = v6 | 3;
      if (!a6)
      {
        goto LABEL_11;
      }

      v7 = 0;
      v8 = *(a4 + 13296);
      v9 = *(a4 + 13312);
      v10 = *(a4 + 13328);
      v11 = *(a4 + 13344);
      do
      {
        v12 = 0;
        v13 = (a4 + 720 + 784 * v7);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        v46[0] = v8;
        v46[1] = v9;
        v46[2] = v10;
        v46[3] = v11;
        do
        {
          v47[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v46[v12])), v15, *&v46[v12], 1), v16, v46[v12], 2), v17, v46[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v47[1];
        v19 = v47[2];
        v20 = v47[3];
        v21 = (a4 + 14448 + (v7 << 6));
        *v21 = v47[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }

    if (a6)
    {
      v22 = a4 + 13424;
      v23 = a6;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        v29 = *(v22 + 1024);
        v30 = *(v22 + 1040);
        v31 = *(v22 + 1056);
        v32 = *(v22 + 1072);
        v33 = vmulq_f32(v29, v29);
        v34 = vmulq_f32(v30, v30);
        v35 = vmulq_f32(v31, v31);
        v36 = vzip2q_s32(v33, v35);
        v37 = vzip1q_s32(vzip1q_s32(v33, v35), v34);
        v38 = vtrn2q_s32(v33, v34);
        v38.i32[2] = v35.i32[1];
        v39 = vaddq_f32(vzip1q_s32(v36, vdupq_laneq_s32(v34, 2)), vaddq_f32(v37, v38));
        v40 = vceqzq_f32(v39);
        v40.i32[3] = 0;
        v41 = vbslq_s8(vcltzq_s32(v40), v39, vdivq_f32(_Q0, v39));
        *v22 = vmulq_n_f32(v29, v41.f32[0]);
        *(v22 + 16) = vmulq_lane_f32(v30, *v41.f32, 1);
        *(v22 + 32) = vmulq_laneq_f32(v31, v41, 2);
        *(v22 + 48) = v32;
        v22 += 64;
        --v23;
      }

      while (v23);
    }
  }

LABEL_11:
  v42 = a4 + (a5 << 6);
  result = *(v42 + 13424);
  v44 = *(v42 + 13440);
  v45 = *(v42 + 13472);
  *(a2 + 32) = *(v42 + 13456);
  *(a2 + 48) = v45;
  *a2 = result;
  *(a2 + 16) = v44;
  return result;
}

__n128 sub_1AF206C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 16568);
  if ((v6 & 4) == 0)
  {
    *(a4 + 16568) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 13296);
      v9 = *(a4 + 13312);
      v10 = *(a4 + 13328);
      v11 = *(a4 + 13344);
      do
      {
        v12 = 0;
        v13 = (a4 + 720 + 784 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v26[0] = v8;
        v26[1] = v9;
        v26[2] = v10;
        v26[3] = v11;
        do
        {
          v27[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v26[v12])), v15, *&v26[v12], 1), v16, v26[v12], 2), v17, v26[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v27[1];
        v19 = v27[2];
        v20 = v27[3];
        v21 = (a4 + 15472 + (v7 << 6));
        *v21 = v27[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  v22 = a4 + (a5 << 6);
  result = *(v22 + 15472);
  v24 = *(v22 + 15488);
  v25 = *(v22 + 15520);
  *(a2 + 32) = *(v22 + 15504);
  *(a2 + 48) = v25;
  *a2 = result;
  *(a2 + 16) = v24;
  return result;
}

void sub_1AF206D64(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v6 = *(a4 + 16568);
  if ((v6 & 4) == 0)
  {
    *(a4 + 16568) = v6 | 4;
    if (a6)
    {
      v7 = 0;
      v8 = *(a4 + 13296);
      v9 = *(a4 + 13312);
      v10 = *(a4 + 13328);
      v11 = *(a4 + 13344);
      do
      {
        v12 = 0;
        v13 = (a4 + 720 + 784 * v7);
        v14 = v13[12];
        v15 = v13[13];
        v16 = v13[14];
        v17 = v13[15];
        v22[0] = v8;
        v22[1] = v9;
        v22[2] = v10;
        v22[3] = v11;
        do
        {
          v23[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v22[v12])), v15, *&v22[v12], 1), v16, v22[v12], 2), v17, v22[v12], 3);
          ++v12;
        }

        while (v12 != 4);
        v18 = v23[1];
        v19 = v23[2];
        v20 = v23[3];
        v21 = (a4 + 15472 + (v7 << 6));
        *v21 = v23[0];
        v21[1] = v18;
        v21[2] = v19;
        v21[3] = v20;
        ++v7;
      }

      while (v7 != a6);
    }
  }

  *a2 = __invert_f4(*(a4 + (a5 << 6) + 15472));
}

__n128 sub_1AF206E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 13360);
  v5 = *(a4 + 13376);
  v6 = *(a4 + 13408);
  *(a2 + 32) = *(a4 + 13392);
  *(a2 + 48) = v6;
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

float sub_1AF206E70(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(a4 + 1172);
  *a2 = result;
  return result;
}

__n128 sub_1AF206E7C(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  sub_1AF1B7A3C(a4[1035].i64[0], &v9);
  v6 = v9;
  v7 = v10;
  a4[1031] = vsubq_f32(v9, v10);
  a4[1032] = vaddq_f32(v6, v7);
  result = a4[1032];
  *a2 = a4[1031];
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1AF206ED4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  sub_1AF1B7A3C(a4[1035].i64[0], &v13);
  v6 = a4[831];
  v7 = a4[832];
  v8 = a4[833];
  v9 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a4[834], v8, v13, 2), v7, *v13.f32, 1), v6, v13.f32[0]);
  v9.i32[3] = v13.i32[3];
  v10 = v14;
  v10.i32[1] = v14.i32[0];
  v10.i32[2] = v14.i32[0];
  v11 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v7), vuzp2q_s32(vdupq_lane_s32(*v14.i8, 1), v14)), v10, vabsq_f32(v6)), vzip2q_s32(vtrn1q_s32(v14, v14), v14), vabsq_f32(v8));
  a4[1033] = vsubq_f32(v9, v11);
  a4[1034] = vaddq_f32(v11, v9);
  result = a4[1034];
  *a2 = a4[1033];
  *(a2 + 16) = result;
  return result;
}

void sub_1AF206F80(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16560);
  if (v5)
  {
    sub_1AF1BA79C(v5);
  }

  else
  {
    v6 = 1.0;
  }

  *a2 = v6;
}

__n128 sub_1AF206FB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_1AF139110(*(a4 + 640));
  v8 = sub_1AF13D0B0(v7);
  if (v8 == 3)
  {
    sub_1AF13CCA0(v7, *(a4 + 16576), &v29, *(a4 + 13344));
    if (a3 != 112)
    {
      v19 = sub_1AF0D5194();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7180(v19, v20, v21, v22, v23, v24, v25, v26);
      }
    }

    v27 = v34;
    *(a2 + 64) = v33;
    *(a2 + 80) = v27;
    *(a2 + 96) = v35;
    v28 = v30;
    *a2 = v29;
    *(a2 + 16) = v28;
    result = v32;
    *(a2 + 32) = v31;
    *(a2 + 48) = result;
  }

  else if (v8 == 2)
  {
    sub_1AF13CB2C(v7, *(a4 + 16576), &v29, *(a4 + 13344));
    if (a3 != 48)
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7180(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v18 = v30;
    *a2 = v29;
    *(a2 + 16) = v18;
    result.n128_u64[0] = v31;
    *(a2 + 32) = v31;
  }

  return result;
}

uint64_t sub_1AF2070BC(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AF1BAF14(*(a4 + 16560));
  *a2 = result;
  return result;
}

uint64_t sub_1AF2070E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v8 = objc_msgSend_bufferAtIndices_(*(a3 + 18688), a2, *(a2 + 9), a4);
  result = objc_msgSend_buffer(v8, v9, v10, v11);
  if (result)
  {
    v16 = *(a2 + 16);
    if (v16)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v13, &v47, v51, 16);
      if (v17)
      {
        v18 = v17;
        v19 = *v48;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v48 != v19)
            {
              objc_enumerationMutation(v16);
            }

            objc_msgSend_useResource_usage_stages_(*(*(a3 + 424) + 16), v13, *(*(&v47 + 1) + 8 * i), 1, 3);
          }

          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v13, &v47, v51, 16);
        }

        while (v18);
      }
    }

    v21 = *(a3 + 424);
    v22 = objc_msgSend_buffer(v8, v13, v14, v15);
    result = objc_msgSend_offset(v8, v23, v24, v25);
    v27 = result;
    v28 = *(a2 + 9);
    if (v28 != 0xFF)
    {
      result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v21 + 16), v26, v22, result, v28);
    }

    if ((~v28 & 0xFF00) != 0)
    {
      return objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v21 + 16), v26, v22, v27, v28 >> 8);
    }
  }

  else if (v6 != -1 && (result = sub_1AF2073B0(*(a3 + 424), v6, v14, v15)) == 0 || v7 != -1 && (result = sub_1AF207410(*(a3 + 424), v7, v14, v15)) == 0)
  {
    v30 = *(a3 + 424);
    v31 = objc_msgSend_binding(a2, v29, v14, v15);
    v35 = objc_msgSend_bufferDataSize(v31, v32, v33, v34);
    v36 = *(a2 + 9);
    CFXBufferAllocatorPerFrameAllocateWithLength(**(v30 + 32), v35);
    v38 = v37;
    v40 = v39;
    CPUPointer = CFXBufferSliceGetCPUPointer(v37, v39, v41, v42);
    bzero(CPUPointer, v35);
    CFXBufferSliceDidModify(v38, v40);
    result = CFXBufferSliceGetMTLBuffer(v38, v40);
    v45 = result;
    if (v36 != 0xFF)
    {
      result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v30 + 16), v44, result, v40, v36);
    }

    if ((~v36 & 0xFF00) != 0)
    {
      v46 = *(v30 + 16);

      return objc_msgSend_setFragmentBuffer_offset_atIndex_(v46, v44, v45, v40, v36 >> 8);
    }
  }

  return result;
}

uint64_t sub_1AF2073B0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v6, a2, v7, a4, v8, v9, v10, v11);
    }
  }

  return objc_msgSend_vertexBufferBoundAt_(*(a1 + 24), a2, a2, a4);
}

uint64_t sub_1AF207410(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 24))
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE6844(v6, a2, v7, a4, v8, v9, v10, v11);
    }
  }

  return objc_msgSend_fragmentBufferBoundAt_(*(a1 + 24), a2, a2, a4);
}

uint64_t sub_1AF207470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_textureAtIndices_(*(a3 + 18688), a2, *(a2 + 9), a4);
  v10 = result;
  if (!result)
  {
    v11 = objc_msgSend_binding(a2, v7, v8, v9);
    v15 = objc_msgSend_textureType(v11, v12, v13, v14);
    v10 = objc_msgSend_defaultTextureForTextureType_(*(a3 + 112), v16, v15, v17);
    result = objc_loadWeak((a3 + 19104));
    if (result)
    {
      v18 = result;
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"Unable to find texture for binding %@ and shadable %@", v9, a2, *(a3 + 18688));
      result = objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v18, v20, a3, a2, v19);
    }
  }

  v21 = *(a3 + 424);
  v22 = *(a2 + 9);
  if (v22 != 0xFF)
  {
    result = sub_1AF20B7FC(*(a3 + 424), v10, v22, v9);
  }

  if ((~v22 & 0xFF00) != 0)
  {
    result = sub_1AF1F8FCC(v21, v10, v22 >> 8, v9);
  }

  v23 = *(a2 + 11);
  v24 = *(a2 + 12);
  if (v24 != 255 || v23 != 255)
  {
    result = objc_msgSend_samplerAtIndices_(*(a3 + 18688), v7, v23 | (v24 << 8), v9);
    v26 = result;
    v27 = *(a3 + 424);
    if (v23 != 255)
    {
      result = objc_msgSend_setVertexSamplerState_atIndex_(*(v27 + 16), v25, result, v23);
    }

    if (v24 != 255)
    {
      v28 = *(v27 + 16);

      return objc_msgSend_setFragmentSamplerState_atIndex_(v28, v25, v26, v24);
    }
  }

  return result;
}

uint64_t sub_1AF207600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_samplerAtIndices_(*(a3 + 18688), a2, *(a2 + 9), a4);
  v8 = result;
  v9 = *(a3 + 424);
  v10 = *(a2 + 9);
  if (v10 != 0xFF)
  {
    result = objc_msgSend_setVertexSamplerState_atIndex_(*(v9 + 16), v7, result, v10);
  }

  if ((~v10 & 0xFF00) != 0)
  {
    v11 = *(v9 + 16);

    return objc_msgSend_setFragmentSamplerState_atIndex_(v11, v7, v8, v10 >> 8);
  }

  return result;
}

uint64_t sub_1AF2076A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[53];
  result = CFXBufferSliceGetMTLBuffer(a3[2152], a3[2153]);
  v8 = result;
  v9 = *(a3 + 4306);
  v10 = *(a2 + 9);
  if (v10 != 0xFF)
  {
    result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v5 + 16), v7, result, v9, v10);
  }

  if ((~v10 & 0xFF00) != 0)
  {
    v11 = *(v5 + 16);

    return objc_msgSend_setFragmentBuffer_offset_atIndex_(v11, v7, v8, v9, v10 >> 8);
  }

  return result;
}

uint64_t sub_1AF20775C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *(a3 + 17232);
  v3 = *(a3 + 424);
  v4 = *(a2 + 9);
  v5 = CFXBufferAllocatorPerFrameAllocateWithBytes(**(v3 + 32), &v11, 4uLL);
  v7 = v6;
  result = CFXBufferSliceGetMTLBuffer(v5, v6);
  v10 = result;
  if (v4 != 0xFF)
  {
    result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v3 + 16), v9, result, v7, v4);
  }

  if ((~v4 & 0xFF00) != 0)
  {
    return objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v3 + 16), v9, v10, v7, v4 >> 8);
  }

  return result;
}

uint64_t sub_1AF207814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __asm { FMOV            V0.4S, #1.0 }

  v22 = _Q0;
  v10 = *(a3 + 18648);
  if (v10)
  {
    v11 = *(a3 + 1396) * *(a3 + 868);
    *&v21 = sub_1AF1A7644(v10) * v11;
    v20 = sub_1AF1A7654(*(a3 + 18648));
    DWORD2(v22) = sub_1AF1A7664(*(a3 + 18648));
    *&v22 = __PAIR64__(LODWORD(v20), v21);
  }

  v12 = CFXBufferAllocatorPerFrameAllocateWithBytes(*(a3 + 504), &v22, 0x10uLL);
  v14 = v13;
  v15 = *(a3 + 424);
  result = CFXBufferSliceGetMTLBuffer(v12, v13);
  v18 = result;
  v19 = *(a2 + 9);
  if (v19 != 0xFF)
  {
    result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v15 + 16), v17, result, v14, v19);
  }

  if ((~v19 & 0xFF00) != 0)
  {
    return objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v15 + 16), v17, v18, v14, v19 >> 8);
  }

  return result;
}

void sub_1AF207910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 424);
  v5 = *(a3 + 17136);
  v6 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    sub_1AF20B7FC(v4, v5, v6, a4);
  }

  if ((~v6 & 0xFF00) != 0)
  {

    sub_1AF1F8FCC(v4, v5, v6 >> 8, a4);
  }
}

void sub_1AF2079A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 424);
  v5 = *(a3 + 17144);
  v6 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    sub_1AF20B7FC(v4, v5, v6, a4);
  }

  if ((~v6 & 0xFF00) != 0)
  {

    sub_1AF1F8FCC(v4, v5, v6 >> 8, a4);
  }
}

void *sub_1AF207A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_areaLightPrecomputedDataTexture(*(a3 + 112), a2, a3, a4);
  v8 = result;
  v9 = *(a3 + 424);
  v10 = *(a2 + 9);
  if (v10 != 0xFF)
  {
    result = sub_1AF20B7FC(v9, result, v10, v7);
  }

  if ((~v10 & 0xFF00) != 0)
  {

    return sub_1AF1F8FCC(v9, v8, v10 >> 8, v7);
  }

  return result;
}

void sub_1AF207AD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  BufferWithBytes = a3[78];
  if (!BufferWithBytes)
  {
    sub_1AF27FB18(v8, 32, 1.0, 1.0, 1.0);
    BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(a3[15], v8, 0x200, 0);
    a3[78] = BufferWithBytes;
  }

  v6 = a3[53];
  v7 = *(a2 + 9);
  if (v7 != 0xFF)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v6 + 16), a2, BufferWithBytes, 0, v7);
  }

  if ((~v7 & 0xFF00) != 0)
  {
    objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v6 + 16), a2, BufferWithBytes, 0, v7 >> 8);
  }
}

void sub_1AF207BC8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF1656E4(*(a4 + 18696), a2, 0);
  sub_1AF0D839C();
  if (!v6 || (v10 = objc_msgSend_textureForMaterialProperty_(a4, v7, v6, v9), v47 = v10, sub_1AF16679C(v6), !v10))
  {
    v11 = objc_msgSend_binding(a3, v7, v8, v9);
    v15 = objc_msgSend_textureType(v11, v12, v13, v14);
    v10 = objc_msgSend_defaultTextureForTextureType_(*(a4 + 112), v16, v15, v17);
    v47 = v10;
    sub_1AF1C4F6C();
    if (!v10)
    {
      v18 = sub_1AF0D5194();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE71F8(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    Weak = objc_loadWeak((a4 + 19104));
    if (Weak)
    {
      v27 = Weak;
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"Unable to find texture for binding %@ and material property %@", v9, a3, v6);
      objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v27, v29, a4, a3, v28);
    }
  }

  v30 = *(a3 + 11);
  v31 = *(a3 + 12);
  if (objc_msgSend_pixelFormat(v10, v7, v8, v9) == 520 || objc_msgSend_pixelFormat(v47, v32, v33, v34) == 500)
  {
    v36 = sub_1AFDE8554(*(a4 + 112));
    v38 = sub_1AF20107C(*(a4 + 424));
    if (*(a3 + 9) != 255)
    {
      v39 = sub_1AF0D5194();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE7270();
      }
    }

    if (*(a3 + 10) != 255)
    {
      sub_1AF1F3034(*(a4 + 416), &v47, 1, v37);
      objc_msgSend_setFragmentTexture_atTextureIndex_samplerState_atSamplerIndex_(v38, v40, v47, *(a3 + 10), v36, v31);
    }
  }

  else
  {
    v41 = *(a4 + 424);
    v42 = *(a3 + 9);
    if (v42 != 0xFF)
    {
      sub_1AF20B7FC(*(a4 + 424), v47, v42, v35);
    }

    if ((~v42 & 0xFF00) != 0)
    {
      sub_1AF1F8FCC(v41, v47, v42 >> 8, v35);
    }

    if (v31 != -1 || v30 != -1)
    {
      v45 = sub_1AFDE8554(*(a4 + 112));
      v46 = *(a4 + 424);
      if (v30 != -1)
      {
        objc_msgSend_setVertexSamplerState_atIndex_(*(v46 + 16), v44, v45, v30);
      }

      if (v31 != -1)
      {
        objc_msgSend_setFragmentSamplerState_atIndex_(*(v46 + 16), v44, v45, v31);
      }
    }
  }
}

void sub_1AF207E6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1AF12E2A0(a3[17]))
  {
    v6 = sub_1AF1310A0(a3[17]);
    v7 = *(a2 + 9);

    sub_1AF1FD174(v6, v7, 1u);
  }

  else
  {
    v8 = a3[2155];
    if (v8)
    {
      v9 = a3[53];
      v10 = *(a2 + 9);
      if (v10 != 0xFF)
      {
        sub_1AF20B7FC(v9, v8, v10, v5);
      }

      if ((~v10 & 0xFF00) != 0)
      {

        sub_1AF1F8FCC(v9, v8, v10 >> 8, v5);
      }
    }
  }
}

void sub_1AF207F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + 8 * *(a1 + 32);
  v7 = *(v6 + 17248);
  if (v7)
  {
    v8 = *(v6 + 17312);
  }

  else
  {
    v9 = objc_msgSend_binding(a2, a2, a3, a4);
    v13 = objc_msgSend_textureType(v9, v10, v11, v12);
    v7 = objc_msgSend_defaultTextureForTextureType_(*(a3 + 112), v14, v13, v15);
    v16 = *(a3 + 112);
    sub_1AF1C4F6C();
    v8 = sub_1AFDE8554(v16);
    Weak = objc_loadWeak((a3 + 19104));
    if (Weak)
    {
      v18 = Weak;
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Unable to find IES or gobo texture for binding %@", a4, a2);
      objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v18, v20, a3, a2, v19);
    }

    if (!v7)
    {
      v21 = sub_1AF0D5194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE71F8(v21, a2, v22, a4, v23, v24, v25, v26);
      }

      v7 = 0;
    }
  }

  v27 = *(a3 + 424);
  v28 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    sub_1AF20B7FC(*(a3 + 424), v7, v28, a4);
  }

  if ((~v28 & 0xFF00) != 0)
  {
    sub_1AF1F8FCC(v27, v7, v28 >> 8, a4);
  }

  v29 = *(a2 + 11);
  v30 = *(a2 + 12);
  if (v30 != -1 || v29 != 255)
  {
    v31 = *(a3 + 424);
    if (v29 != -1)
    {
      objc_msgSend_setVertexSamplerState_atIndex_(*(v31 + 16), a2, v8, v29);
    }

    if (v30 != -1)
    {
      objc_msgSend_setFragmentSamplerState_atIndex_(*(v31 + 16), a2, v8, v30);
    }
  }
}

__n128 sub_1AF2080E8(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 16712);
  result = *v4;
  *a2 = *v4;
  return result;
}

uint64_t sub_1AF208100(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[1057].i8[0] == 1)
  {
    v4 = *(a4[1044].i64[*(result + 32) + 1] + 16);
    v5 = vaddq_f32(a4[1052], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[1049], v4.f32[0]), a4[1050], *v4.f32, 1), a4[1051], v4, 2));
  }

  else
  {
    v5 = *(a4[1044].i64[*(result + 32) + 1] + 16);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1AF20815C(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  if (a4[1057].i8[0] == 1)
  {
    v4 = *(a4[1044].i64[*(result + 32) + 1] + 32);
    v5 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4[1049], v4.f32[0]), a4[1050], *v4.f32, 1), a4[1051], v4, 2), 0, a4[1052]);
  }

  else
  {
    v5 = *(a4[1044].i64[*(result + 32) + 1] + 32);
  }

  *a2 = v5;
  return result;
}

__n128 sub_1AF2081BC(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 64);
  *a2 = result;
  return result;
}

__n128 sub_1AF2081D4(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 48);
  *a2 = result;
  return result;
}

__n128 sub_1AF2081EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 16712);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 sub_1AF20820C(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 80);
  *a2 = result;
  return result;
}

__n128 sub_1AF208224(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 96);
  *a2 = result;
  return result;
}

void *sub_1AF20823C(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (a3 >= 0x101)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE72A4(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  if (*(a4 + 16912) == 1)
  {
    for (i = 0; i != 4; ++i)
    {
      v17 = (*(a4 + 16712 + 8 * *(a1 + 32)) + (i << 6));
      v27 = v17[8];
      v28 = v17[9];
      v25 = v17[11];
      v26 = v17[10];
      v33 = __invert_f4(*(a4 + 16784));
      v18 = 0;
      v29 = v33;
      do
      {
        v30[v18] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*&v29.columns[v18])), v28, *v29.columns[v18].f32, 1), v26, v29.columns[v18], 2), v25, v29.columns[v18], 3);
        ++v18;
      }

      while (v18 != 4);
      v19 = v30[1];
      v20 = v30[2];
      v21 = v30[3];
      v22 = &v31[64 * i];
      *v22 = v30[0];
      v22[1] = v19;
      v22[2] = v20;
      v22[3] = v21;
    }

    v23 = v31;
  }

  else
  {
    v23 = (*(a4 + 8 * *(a1 + 32) + 16712) + 128);
  }

  return memcpy(a2, v23, v7);
}

float sub_1AF2083B8(uint64_t a1, float *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 116);
  *a2 = result;
  return result;
}

__n128 sub_1AF2083D0(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 384);
  *a2 = result;
  return result;
}

__n128 sub_1AF2083E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8 * *(a1 + 32) + 16712);
  result = *(v4 + 128);
  v6 = *(v4 + 144);
  v7 = *(v4 + 160);
  v8 = *(v4 + 176);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  return result;
}

__n128 sub_1AF208408(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(a4 + 8 * *(a1 + 32) + 16712) + 384);
  *a2 = result;
  return result;
}

void sub_1AF208420(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[2172];
  v6 = a3[2173];
  v7 = a3[*(a1 + 32) + 2174];
  if (!v5)
  {
    v8 = sub_1AF0D5194();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE731C(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = a3[53];
  v16 = *(a2 + 9);
  if (v16 != 0xFF)
  {
    objc_msgSend_setVertexBuffer_offset_atIndex_(*(v15 + 16), a2, v5, v7 + v6, v16);
  }

  if ((~v16 & 0xFF00) != 0)
  {
    objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v15 + 16), a2, v5, v7 + v6, v16 >> 8);
  }
}

void sub_1AF2084E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1AF12E2A0(*(a3 + 136)))
  {
    v7 = sub_1AF1310A0(*(a3 + 136));
    v8 = *(a2 + 9);

    sub_1AF1FD174(v7, v8, 2u);
  }

  else
  {
    v10 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(*(a3 + 112), v5, a3, v6);
    v11 = *(a3 + 424);
    v12 = *(a2 + 9);
    if (v12 != 0xFF)
    {
      sub_1AF20B7FC(v11, v10, v12, v9);
    }

    if ((~v12 & 0xFF00) != 0)
    {

      sub_1AF1F8FCC(v11, v10, v12 >> 8, v9);
    }
  }
}

void sub_1AF2085CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF12E2A0(*(a3 + 136));
  v6 = *(a3 + 136);
  if (v5)
  {
    v7 = sub_1AF1310A0(v6);
    v8 = *(a2 + 9);

    sub_1AF1FD174(v7, v8, 4u);
  }

  else
  {
    v9 = sub_1AF12DDCC(v6);
    v10 = sub_1AF1D005C(v9, 0);
    if (!v10 || (v11 = v10, !sub_1AF166220(v10)) && !sub_1AF1676A0(v11) || (v14 = objc_msgSend_radianceTextureForMaterialProperty_(a3, v12, v11, v13)) == 0)
    {
      if (!sub_1AF13103C(*(a3 + 136)) || (v19 = objc_msgSend_currentExternalDrawCallContext(a3, v16, v17, v18), (v14 = objc_msgSend_texture::(v19, v20, 7, @"texturePrefilteredSpecular")) == 0) && (v23 = objc_msgSend_currentExternalDrawCallContext(a3, v21, v22, v15), (v14 = objc_msgSend_texture::(v23, v24, 2, @"prefilteredSpecularMap")) == 0))
      {
        if (!sub_1AF12F038(*(a3 + 136)) || (v14 = objc_msgSend_defaultLightingEnvironmentRadianceTexture(*(a3 + 112), v25, v26, v15)) == 0)
        {
          v14 = objc_msgSend_defaultCubeTexture(*(a3 + 112), v25, v26, v15);
        }
      }
    }

    v27 = v14;
    v28 = *(a3 + 424);
    v29 = *(a2 + 9);
    if (v29 != 0xFF)
    {
      sub_1AF20B7FC(v28, v14, v29, v15);
    }

    if ((~v29 & 0xFF00) != 0)
    {

      sub_1AF1F8FCC(v28, v27, v29 >> 8, v15);
    }
  }
}

void sub_1AF20874C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF12E2A0(*(a3 + 136));
  v6 = *(a3 + 136);
  if (v5)
  {
    v7 = sub_1AF1310A0(v6);
    v8 = *(a2 + 9);

    sub_1AF1FD174(v7, v8, 3u);
  }

  else
  {
    v9 = sub_1AF12DDCC(v6);
    v10 = sub_1AF1D005C(v9, 0);
    if (!v10 || (v11 = v10, !sub_1AF166220(v10)) && !sub_1AF1676A0(v11) || (v14 = objc_msgSend_irradianceTextureForMaterialProperty_(a3, v12, v11, v13)) == 0)
    {
      if (!sub_1AF13103C(*(a3 + 136)) || (v19 = objc_msgSend_currentExternalDrawCallContext(a3, v16, v17, v18), (v14 = objc_msgSend_texture::(v19, v20, 7, @"texturePrefilteredDiffuse")) == 0) && (v23 = objc_msgSend_currentExternalDrawCallContext(a3, v21, v22, v15), (v14 = objc_msgSend_texture::(v23, v24, 2, @"prefilteredDiffuseMap")) == 0))
      {
        if (!sub_1AF12F038(*(a3 + 136)) || (v14 = objc_msgSend_defaultLightingEnvironmentIrradianceTexture(*(a3 + 112), v25, v26, v15)) == 0)
        {
          v14 = objc_msgSend_defaultCubeTexture(*(a3 + 112), v25, v26, v15);
        }
      }
    }

    v27 = v14;
    v28 = *(a3 + 424);
    v29 = *(a2 + 9);
    if (v29 != 0xFF)
    {
      sub_1AF20B7FC(v28, v14, v29, v15);
    }

    if ((~v29 & 0xFF00) != 0)
    {

      sub_1AF1F8FCC(v28, v27, v29 >> 8, v15);
    }
  }
}

void sub_1AF2088CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 17456);
  v5 = *(a3 + 424);
  v6 = *(a2 + 9);
  if (*(a2 + 9) != 0xFF)
  {
    sub_1AF20B7FC(v5, v4, v6, a4);
  }

  if ((~v6 & 0xFF00) != 0)
  {

    sub_1AF1F8FCC(v5, v4, v6 >> 8, a4);
  }
}

uint64_t sub_1AF20895C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF130FD8(*(a3 + 136));
  v9 = result;
  if (!result)
  {
    v9 = objc_msgSend_defaultTexture(*(a3 + 112), v6, v7, v8);
    result = objc_loadWeak((a3 + 19104));
    if (result)
    {
      v11 = result;
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"Unable to find VFX-SSAO texture in render graph for binding %@", v8, a2);
      result = objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v11, v13, a3, a2, v12);
    }
  }

  v14 = *(a3 + 424);
  v15 = *(a2 + 9);
  if (v15 != 0xFF)
  {
    result = sub_1AF20B7FC(v14, v9, v15, v8);
  }

  if ((~v15 & 0xFF00) != 0)
  {

    return sub_1AF1F8FCC(v14, v9, v15 >> 8, v8);
  }

  return result;
}

uint64_t sub_1AF208A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 18720);
  v6 = *(a3 + 18680);
  v7 = *(a3 + 18736);
  if (!v5 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDD137C(v8, v9, v10, v11, v12, v13, v14, v15);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else if (v6)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDCF18(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!v7)
  {
    v24 = sub_1AF0D5194();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE7394(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  v32 = sub_1AF1B40A0(v6);
  v34 = objc_msgSend_renderResourceForDeformerStack_node_dataKind_(*(a3 + 112), v33, v7, v5, v32);
  v38 = objc_msgSend_name(a2, v35, v36, v37);
  result = sub_1AFDE26F4(v34, v38);
  v41 = result;
  v42 = *(a3 + 424);
  v43 = *(a2 + 9);
  if (v43 != 0xFF)
  {
    result = objc_msgSend_setVertexBuffer_offset_atIndex_(*(v42 + 16), v40, result, 0, v43);
  }

  if ((~v43 & 0xFF00) != 0)
  {
    return objc_msgSend_setFragmentBuffer_offset_atIndex_(*(v42 + 16), v40, v41, 0, v43 >> 8);
  }

  return result;
}

uint64_t sub_1AF208B94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = objc_msgSend_frequency(a2, a2, a3, a4);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1AF208C34;
  v10[3] = &unk_1E7A7CDF0;
  v10[4] = a2;
  return objc_msgSend_addResourceBindingsForArgument_frequency_needsRenderResource_block_(a4, v8, a3, v7, 0, v10);
}

uint64_t sub_1AF208C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 470) = *(a2 + 9);
  v5 = *(a3 + 18720);
  if (v5)
  {
    sub_1AF16CDEC(v5);
  }

  v6 = *(a3 + 18672);
  if (v6)
  {
    sub_1AF16CDEC(v6);
  }

  sub_1AF12F434(*(a3 + 136));
  v10 = *(objc_msgSend_block(*(a1 + 32), v7, v8, v9) + 16);

  return v10();
}

void sub_1AF208E78(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B72DC(a2))
  {
    v4 = sub_1AF1AF080(a2);
    sub_1AF1CB354(v4, *(a1 + 32));
    v5 = *(a1 + 40) + sub_1AF1CB564(v4);

    sub_1AF1B727C(a2, v5);
  }
}

void sub_1AF208FF0(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1B72DC(a2))
  {

    sub_1AF1B727C(a2, 0);
  }
}

uint64_t sub_1AF20A944(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a2 && (v8 = sub_1AF0D5194(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE7664(v8, a2, v9, a4, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = sub_1AF0D5194();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE76DC(v14, a2, v15, a4, v16, v17, v18, v19);
  }

LABEL_6:
  *(a1 + 8) = a2;
  result = objc_msgSend_setEncoder_(*(a1 + 24), a2, a3, a4);
  *(a1 + 16) = *(a1 + 24);
  *(a1 + 32) = a4;
  *a1 = 1;
  *(a1 + 4) = 1;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AF20A9F8(uint64_t result)
{
  if (result)
  {

    JUMPOUT(0x1B271C6B0);
  }

  return result;
}

uint64_t sub_1AF20B7FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  if (a2)
  {
    if ((objc_msgSend_conformsToProtocol_(a2, a2, &unk_1F2629960, a4) & 1) == 0)
    {
      v6 = sub_1AF0D5194();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE7850(v6, v7, v8, a4, v9, v10, v11, v12);
      }
    }
  }

  sub_1AF1F3034(*(a1 + 8), &v15, 1, a4);
  return objc_msgSend_setVertexTexture_atIndex_(*(a1 + 16), v13, v15, a3);
}

void *sub_1AF20B88C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

unint64_t sub_1AF20BB08(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = objc_msgSend_allKeys(a1, a2, a3, a4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v34, 16);
  if (v7)
  {
    v11 = v7;
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v12 ^= (v12 << 6) + 2654435769u + (v12 >> 2) + objc_msgSend_hash(*(*(&v29 + 1) + 8 * i), v8, v9, v10);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v29, v34, 16);
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = objc_msgSend_allValues(a1, v8, v9, v10, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v25, v33, 16);
  if (v17)
  {
    v21 = v17;
    v22 = *v26;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v26 != v22)
        {
          objc_enumerationMutation(v15);
        }

        v12 ^= (v12 << 6) + 2654435769u + (v12 >> 2) + objc_msgSend_hash(*(*(&v25 + 1) + 8 * j), v18, v19, v20);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v25, v33, 16);
    }

    while (v21);
  }

  return v12;
}

uint64_t sub_1AF20BCB8(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  CC_SHA256_Init(&v3);
  sub_1AF148DA8(a1, &v3);
  CC_SHA256_Final(md, &v3);
  return *md;
}

uint64_t sub_1AF20BEF0(uint64_t a1, void *a2)
{
  v3 = sub_1AF15B948(a1, 0);
  v4 = HIDWORD(v3);
  v8 = objc_msgSend_colorAttachments(a2, v5, v6, v7);
  v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0, v10);
  v15 = objc_msgSend_pixelFormat(v11, v12, v13, v14) != 0;
  objc_msgSend_setBlendingEnabled_(v11, v16, v15 & v3, v17);
  v18 = sub_1AF1F12F8(BYTE2(v3));
  objc_msgSend_setSourceRGBBlendFactor_(v11, v19, v18, v20);
  v21 = sub_1AF1F12F8(BYTE3(v3));
  objc_msgSend_setDestinationRGBBlendFactor_(v11, v22, v21, v23);
  v24 = sub_1AF1F134C(BYTE4(v3));
  objc_msgSend_setRgbBlendOperation_(v11, v25, v24, v26);
  v27 = HIBYTE(v3);
  v28 = v3 >> 40;
  v29 = (v3 & 0x100) == 0;
  if ((v3 & 0x100) != 0)
  {
    v30 = BYTE6(v3);
  }

  else
  {
    LOBYTE(v28) = BYTE2(v3);
    v30 = BYTE3(v3);
  }

  if (v29)
  {
    v31 = v4;
  }

  else
  {
    v31 = v27;
  }

  v32 = sub_1AF1F12F8(v28);
  objc_msgSend_setSourceAlphaBlendFactor_(v11, v33, v32, v34);
  v35 = sub_1AF1F12F8(v30);
  objc_msgSend_setDestinationAlphaBlendFactor_(v11, v36, v35, v37);
  v38 = sub_1AF1F134C(v31);

  return MEMORY[0x1EEE66B58](v11, sel_setAlphaBlendOperation_, v38, v39);
}

uint64_t sub_1AF20C004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  v5 = [VFXMTLResourceManager alloc];

  return objc_msgSend_initWithDevice_remoteEncoding_(v5, v6, a2, a3);
}

_BYTE *sub_1AF20C050(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  if (qword_1ED73B2F0 != -1)
  {
    sub_1AFDE86A4();
  }

  v3 = j__MTLCreateSystemDefaultDevice();
  os_unfair_lock_lock(&dword_1ED73B010);
  if (!objc_msgSend_count(qword_1ED73A418, v4, v5, v6))
  {
    objc_msgSend_allocateRegistry(VFXMTLShaderBindingsGenerator, v7, v8, v9);
    objc_msgSend_registerBindings(VFXMTLRenderContext, v10, v11, v12);
  }

  v16 = objc_msgSend_objectForKey_(qword_1ED73A418, v7, v3, v9);
  if (!v16)
  {
    v17 = [VFXMTLResourceManager alloc];
    v16 = objc_msgSend_initWithDevice_remoteEncoding_(v17, v18, a2, 0);
    if (v16)
    {
      objc_msgSend_setObject_forKey_(qword_1ED73A418, v13, v16, v3);
      v16[648] = 1;
    }
  }

  objc_msgSend_incrementUsageCount(v16, v13, v14, v15);
  os_unfair_lock_unlock(&dword_1ED73B010);

  return v16;
}

id sub_1AF20C140(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  dword_1ED73B010 = 0;
  result = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x1E696AD18], a2, a3, a4);
  qword_1ED73A418 = result;
  return result;
}

void sub_1AF20C174()
{
  objc_opt_self();
  v17 = j__MTLCreateSystemDefaultDevice();
  os_unfair_lock_lock(&dword_1ED73B010);
  v2 = objc_msgSend_objectForKey_(qword_1ED73A418, v0, v17, v1);
  if (!objc_msgSend_decrementUsageCount(v2, v3, v4, v5))
  {
    objc_msgSend_removeObjectForKey_(qword_1ED73A418, v6, v17, v7);
    if (!objc_msgSend_count(qword_1ED73A418, v8, v9, v10))
    {
      objc_msgSend_deallocateRegistry(VFXMTLShaderBindingsGenerator, v11, v12, v13);
      objc_msgSend_unregisterBindings(VFXMTLRenderContext, v14, v15, v16);
    }
  }

  os_unfair_lock_unlock(&dword_1ED73B010);
}

uint64_t sub_1AF20C220(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = 0;
  }

  else
  {
    v2 = 258;
  }

  v3 = objc_alloc(MEMORY[0x1E696AD18]);
  result = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v3, v4, v2, 0, 100);
  *a1 = result;
  return result;
}

uint64_t sub_1AF20CD04(uint64_t a1, const char *a2)
{
  objc_msgSend_removeResourceForKey_fromRegistry_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 32) + 280);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40) | 1;

  return objc_msgSend_removeResourceForKey_fromRegistry_(v4, v3, v5, v4 + 280);
}

uint64_t sub_1AF20CD50(uint64_t a1, const char *a2)
{
  objc_msgSend_removeResourceForKey_fromRegistry_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 32) + 296);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40) | 1;

  return objc_msgSend_removeResourceForKey_fromRegistry_(v4, v3, v5, v4 + 296);
}

void sub_1AF20D0BC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 88));
  objc_msgSend_removeResourceForKey_fromRegistry_(*(a1 + 32), v4, a2, *(a1 + 32) + 80);
  os_unfair_lock_unlock((*(a1 + 32) + 88));
  os_unfair_lock_lock((*(a1 + 32) + 104));
  objc_msgSend_removeResourceForKey_fromRegistry_(*(a1 + 32), v5, a2, *(a1 + 32) + 96);
  v6 = (*(a1 + 32) + 104);

  os_unfair_lock_unlock(v6);
}

void sub_1AF20D338(void *value, uint64_t a2, void *a3)
{
  if (!*a3 || *(a2 + 24) == *a3)
  {
    v5 = a3[1];
    if (!v5 || *(a2 + 16) == v5)
    {
      Mutable = a3[2];
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
        a3[2] = Mutable;
      }

      CFArrayAppendValue(Mutable, value);
    }
  }
}

uint64_t sub_1AF20DC3C(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v8 = 2;
        goto LABEL_20;
      case 5:
        v8 = 4;
        goto LABEL_20;
      case 6:
        v8 = 5;
        goto LABEL_20;
    }

LABEL_13:
    v9 = sub_1AF0D5194();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE87A0();
    }

    v8 = 14;
    goto LABEL_20;
  }

  if (a3 < 2)
  {
    v8 = a3;
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v8 = 3;
    goto LABEL_20;
  }

  if (a3 != 3)
  {
    goto LABEL_13;
  }

  if (a4 == -1)
  {
    v8 = 6;
    goto LABEL_20;
  }

  v8 = a4 + 6;
  if ((a4 + 6) == 14)
  {
    goto LABEL_13;
  }

LABEL_20:
  v10 = sub_1AF1AF080(a2);
  v11 = sub_1AF1CAED8(v10);
  v12 = sub_1AF1CAED0(v10);
  v13 = sub_1AF2885E4(v11, v12);
  v17 = sub_1AF15B364(a2);
  if (!v17)
  {
    v17 = sub_1AF1F1A28(v13);
  }

  v18 = objc_msgSend_attributes(a1, v14, v15, v16);
  v21 = objc_msgSend_objectAtIndexedSubscript_(v18, v19, v8, v20);
  objc_msgSend_setFormat_(v21, v22, v17, v23);
  v27 = objc_msgSend_attributes(a1, v24, v25, v26);
  v30 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, v8, v29);
  if (!objc_msgSend_format(v30, v31, v32, v33))
  {
    v34 = sub_1AF0D5194();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE8824(v13);
    }
  }

  v35 = sub_1AF1CB564(v10);
  v39 = objc_msgSend_attributes(a1, v36, v37, v38);
  v42 = objc_msgSend_objectAtIndexedSubscript_(v39, v40, v8, v41);
  objc_msgSend_setOffset_(v42, v43, v35, v44);
  v48 = objc_msgSend_attributes(a1, v45, v46, v47);
  v51 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, v8, v50);
  objc_msgSend_setBufferIndex_(v51, v52, a5 + 18, v53);
  v54 = sub_1AF121B74(v10);
  v58 = objc_msgSend_layouts(a1, v55, v56, v57);
  v61 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, a5 + 18, v60);
  objc_msgSend_setStride_(v61, v62, v54, v63);
  v64 = sub_1AF1B7300(a2);
  if (v64)
  {
    v68 = v64;
    v69 = objc_msgSend_layouts(a1, v65, v66, v67);
    v72 = objc_msgSend_objectAtIndexedSubscript_(v69, v70, a5 + 18, v71);
    objc_msgSend_setStepFunction_(v72, v73, 2, v74);
    v78 = objc_msgSend_layouts(a1, v75, v76, v77);
    v81 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, a5 + 18, v80);
    return objc_msgSend_setStepRate_(v81, v82, v68, v83);
  }

  else
  {
    v85 = objc_msgSend_layouts(a1, v65, v66, v67);
    v88 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, a5 + 18, v87);
    return objc_msgSend_setStepFunction_(v88, v89, 1, v90);
  }
}

void *sub_1AF20E0F4(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1ADBDC(a2);
  if (result)
  {
    result = sub_1AF1AF180(a2);
    if (!result)
    {
      v5 = sub_1AF1AE6E8(a2);
      v8 = objc_msgSend_objectForKey_(*(*(a1 + 32) + 216), v6, v5, v7);
      v9 = sub_1AFDEA1E8(*(a1 + 40));
      if (objc_msgSend_indexOfObject_(v9, v10, v8, v11) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = sub_1AF0D5194();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE88AC(v12, v13, v14, v15, v16, v17, v18, v19);
        }
      }

      BytePtr = CFDataGetBytePtr(v5);
      Length = CFDataGetLength(v5);
      if (Length != objc_msgSend_length(v8, v22, v23, v24))
      {
        v28 = sub_1AF0D5194();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_1AFDE8924(Length, v8, v28, v27);
        }
      }

      v29 = objc_msgSend_contents(v8, v25, v26, v27);
      return memcpy(v29, BytePtr, Length);
    }
  }

  return result;
}

VFXMTLMesh *sub_1AF20E1F8(uint64_t a1, uint64_t a2, int a3)
{
  *(&v49[1] + 4) = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = a3 == 0;
  os_unfair_lock_lock((a1 + 208));
  v9 = *(a1 + 200);
  if (!v9)
  {
    if (*(a1 + 212))
    {
      v10 = 0;
    }

    else
    {
      v10 = 258;
    }

    v11 = objc_alloc(MEMORY[0x1E696AD18]);
    v9 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v11, v12, v10, 0, 100);
    *(a1 + 200) = v9;
  }

  v13 = objc_msgSend_objectForKey_(v9, v7, v6 | a2, v8);
  if (v13)
  {
    v14 = v13;
    if (sub_1AF1A56A0(a2))
    {
      objc_msgSend___updateMutableMesh_withMetalMesh_(a1, v15, a2, v14);
    }
  }

  else
  {
    v14 = objc_alloc_init(VFXMTLMesh);
    sub_1AF16CBEC(a2);
    v19 = objc_msgSend_vertexDescriptor(MEMORY[0x1E69741E0], v16, v17, v18);
    v20 = sub_1AF1A4F3C(a2);
    v21 = objc_alloc(MEMORY[0x1E695DF70]);
    v24 = objc_msgSend_initWithCapacity_(v21, v22, v20, v23);
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1AF20E580;
    v41[3] = &unk_1E7A7CEA8;
    v42 = a3;
    v41[7] = v19;
    v41[8] = &v44;
    v43 = a3 == 0;
    v41[4] = v14;
    v41[5] = a1;
    v41[6] = v24;
    sub_1AF1A2BEC(a2, a3, v41);
    if (a3 == 1)
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_1AF20E678;
      v40[3] = &unk_1E7A7CED0;
      v40[5] = v24;
      v40[6] = &v44;
      v40[4] = v19;
      sub_1AF1A2BEC(a2, 1, v40);
    }

    sub_1AFDEA024(v14, v19);
    sub_1AFDEA1F4(v14, v24);
    sub_1AFDEA26C(v14, v45[3]);

    v25 = sub_1AF1A3CCC(a2);
    v26 = objc_alloc(MEMORY[0x1E695DF70]);
    v29 = objc_msgSend_initWithCapacity_(v26, v27, v25, v28);
    if (v25 >= 1)
    {
      for (i = 0; i != v25; ++i)
      {
        v31 = sub_1AF1A3D1C(a2, i, a3);
        if (v31)
        {
          v32 = sub_1AF1A7034(v31);
          if (sub_1AF1F156C(v32))
          {
            v33 = sub_1AFDE7F98(a1);
            objc_msgSend_addObject_(v29, v34, v33, v35);
          }

          else if (a3)
          {
            v36 = sub_1AF0D5194();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDE655C(v48, v49, v36);
            }
          }
        }
      }
    }

    sub_1AFDEA214(v14, v29);

    objc_msgSend_setObject_forKey_(*(a1 + 200), v37, v14, v6 | a2);
    _Block_object_dispose(&v44, 8);
  }

  v38 = v14;
  os_unfair_lock_unlock((a1 + 208));
  return v14;
}

uint64_t sub_1AF20E580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 != 7)
  {
    v7 = result;
    result = sub_1AFDEA290(*(result + 32));
    if (!result)
    {
      v8 = sub_1AF1AE6EC(a2);
      result = sub_1AFDEA29C(*(v7 + 32), v8);
    }

    if ((a3 == 3 || a4 <= 0) && (a3 != 3 || a4 <= 7))
    {
      if (*(v7 + 72) == 1 && (result = sub_1AF1B72DC(a2), result))
      {
        v9 = sub_1AF1AF080(a2);
        sub_1AF1CB5AC(v9, *(*(*(v7 + 64) + 8) + 24));
        result = sub_1AF121B74(v9);
        *(*(*(v7 + 64) + 8) + 24) += result;
      }

      else if (!a3 || (*(v7 + 73) & 1) == 0)
      {
        return sub_1AFDE89D4(v7, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_1AF20E678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AF1B72DC(a2);
  if (result)
  {
    v9 = sub_1AF1AF080(a2);
    sub_1AF1CB600(v9, *(*(*(a1 + 48) + 8) + 24));
    v10 = *(a1 + 32);
    v14 = objc_msgSend_count(*(a1 + 40), v11, v12, v13);

    return sub_1AF20DC3C(v10, a2, a3, a4, v14);
  }

  return result;
}

void sub_1AF20E9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF20EA10(uint64_t result, void *a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) != a3)
  {
    v6 = result;
    result = sub_1AF1EB234(VFXMTLSkinDeformer, *(result + 56), a2);
    if (result)
    {
      result = objc_msgSend_objectForKey_(a3, v7, *(v6 + 40), v8);
      *(*(*(v6 + 48) + 8) + 40) = result;
      if (*(*(*(v6 + 48) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

void sub_1AF20EC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF20EC98(uint64_t result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (*(result + 32) != a3)
  {
    v6 = result;
    result = sub_1AF1EA2C8();
    if (result)
    {
      result = objc_msgSend_objectForKey_(a3, v7, *(v6 + 40), v8);
      *(*(*(v6 + 48) + 8) + 40) = result;
      if (*(*(*(v6 + 48) + 8) + 40))
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

VFXMTLShadable *sub_1AF20ED1C(uint64_t a1, __CFXMaterial *a2, __CFXModel *a3, void *a4, uint64_t a5)
{
  v350 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    v5 = sub_1AF0D5194();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!a4)
  {
    v13 = sub_1AF0D5194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE8A8C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  v21 = sub_1AF16E5E4(a2);
  if (a3)
  {
    v22 = sub_1AF16E5E4(a3);
  }

  else
  {
    v22 = 0;
  }

  v23 = a1;
  os_unfair_lock_lock((a1 + 416));
  if (!*(a1 + 408))
  {
    if (*(a1 + 420))
    {
      v26 = 0;
    }

    else
    {
      v26 = 258;
    }

    v27 = objc_alloc(MEMORY[0x1E696AD18]);
    v29 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v27, v28, v26, 0, 100);
    v23 = a1;
    *(a1 + 408) = v29;
  }

  *(*(v23 + 424) + 8) = a2;
  *(*(v23 + 424) + 16) = a3;
  *(*(v23 + 424) + 24) = a4;
  v310 = objc_msgSend_objectForKey_(*(v23 + 408), v24, *(v23 + 424), v25);
  *(*(a1 + 424) + 8) = 0;
  *(*(a1 + 424) + 16) = 0;
  *(*(a1 + 424) + 24) = 0;
  if (v310 && v21 == objc_msgSend_materialModificationCount(v310, v30, v31, v32) && v22 == objc_msgSend_modelModificationCount(v310, v33, v34, v35))
  {
    os_unfair_lock_unlock((a1 + 416));
    return v310;
  }

  v306 = sub_1AF12E2AC(a5);
  cf = objc_msgSend_frameConstantBufferPool(v306, v36, v37, v38);
  if (cf)
  {
    CFRetain(cf);
  }

  v39 = objc_alloc_init(VFXMTLShadable);
  objc_msgSend_setMaterialModificationCount_(v39, v40, v21, v41);
  objc_msgSend_setModelModificationCount_(v39, v42, v22, v43);
  v315 = v39;
  v44 = sub_1AF1A12B8(a2);
  v48 = sub_1AF16E250(a2, 0);
  if (a3)
  {
    v324 = sub_1AF16E250(a3, 0);
  }

  else
  {
    v324 = 0;
  }

  v320 = v44;
  v342 = 0u;
  v343 = 0u;
  v340 = 0u;
  v341 = 0u;
  v49 = objc_msgSend_shadableBufferBindings(a4, v45, v46, v47);
  v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v340, v349, 16);
  if (v51)
  {
    v321 = *v341;
    obj = v49;
    do
    {
      v322 = v51;
      for (i = 0; i != v322; ++i)
      {
        if (*v341 != v321)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v340 + 1) + 8 * i);
        if (objc_msgSend_needsRenderResource(v55, v52, v53, v54))
        {
          v56 = objc_msgSend_name(v55, v52, v53, v54);
          v60 = objc_msgSend_type(v55, v57, v58, v59);
          if (v60 <= 2)
          {
            switch(v60)
            {
              case 0:
                v313 = v313 & 0xFFFFFFFFFFFF0000 | *(v55 + 9);
                v73 = objc_msgSend_bufferAtIndices_(v310, v52, v313, v54);
                if (v320 && objc_msgSend_isEqualToString_(v56, v71, @"vfx_commonprofile", v72))
                {
                  HIDWORD(__src[14]) = sub_1AF1662B4(v320, 1);
                  LODWORD(__src[15]) = sub_1AF1662B4(v320, 2);
                  DWORD2(__src[17]) = sub_1AF1662B4(v320, 11);
                  HIDWORD(__src[17]) = sub_1AF1662B4(v320, 12);
                  LODWORD(__src[18]) = sub_1AF1662B4(v320, 13);
                  DWORD1(__src[18]) = sub_1AF1662B4(v320, 14);
                  DWORD2(__src[18]) = sub_1AF1662B4(v320, 15);
                  HIDWORD(__src[18]) = sub_1AF1662B4(v320, 16);
                  LODWORD(__src[19]) = sub_1AF1662B4(v320, 17);
                  DWORD1(__src[15]) = sub_1AF1662B4(v320, 6);
                  DWORD1(__src[16]) = sub_1AF1662B4(v320, 3);
                  DWORD2(__src[16]) = sub_1AF1662B4(v320, 5);
                  HIDWORD(__src[16]) = sub_1AF1662B4(v320, 4);
                  LODWORD(__src[17]) = sub_1AF1662B4(v320, 9);
                  DWORD1(__src[17]) = sub_1AF1662B4(v320, 10);
                  DWORD1(__src[19]) = sub_1AF1662B4(v320, 18);
                  *&__src[0] = sub_1AF16612C(v320, 1);
                  *(&__src[0] + 1) = v74;
                  *&__src[1] = sub_1AF16612C(v320, 2);
                  *(&__src[1] + 1) = v75;
                  LODWORD(__src[8]) = sub_1AF166324(v320, 11);
                  DWORD1(__src[8]) = sub_1AF166324(v320, 12);
                  LODWORD(__src[10]) = sub_1AF166324(v320, 14);
                  *&__src[11] = sub_1AF16612C(v320, 15);
                  *(&__src[11] + 1) = v76;
                  LODWORD(__src[12]) = sub_1AF166324(v320, 16);
                  *&__src[13] = sub_1AF16612C(v320, 17);
                  *(&__src[13] + 1) = v77;
                  LODWORD(__src[14]) = sub_1AF165BEC(v320, 20);
                  *&__src[5] = sub_1AF16612C(v320, 3);
                  *(&__src[5] + 1) = v78;
                  *&__src[6] = sub_1AF16612C(v320, 5);
                  *(&__src[6] + 1) = v79;
                  *&__src[7] = sub_1AF16612C(v320, 4);
                  *(&__src[7] + 1) = v80;
                  DWORD1(__src[14]) = sub_1AF166324(v320, 9);
                  DWORD2(__src[14]) = sub_1AF166324(v320, 10);
                  if (sub_1AF166D04(v320))
                  {
                    *&__src[2] = sub_1AF16612C(v320, 7);
                    *(&__src[2] + 1) = v81;
                    DWORD2(__src[15]) = sub_1AF1662B4(v320, 7);
                  }

                  *&__src[4] = sub_1AF16612C(v320, 8);
                  *(&__src[4] + 1) = v82;
                  LODWORD(__src[16]) = sub_1AF1662B4(v320, 8);
                  *&__src[3] = sub_1AF16612C(v320, 0);
                  *(&__src[3] + 1) = v83;
                  HIDWORD(__src[15]) = sub_1AF1662B4(v320, 0);
                  *(&__src[19] + 2) = sub_1AF165BEC(v320, 19) * 128.0;
                  HIDWORD(__src[19]) = sub_1AF166D0C(v320);
                  LODWORD(__src[20]) = sub_1AF1A1450(a2);
                  v84 = sub_1AF165BEC(v320, 20);
                  v85 = sub_1AF165BEC(v320, 21);
                  v86 = 0;
                  *&v87 = ((1.0 - v84) * (1.0 - v84)) / ((v84 + 1.0) * (v84 + 1.0));
                  *(&v87 + 1) = 1.0 - *&v87;
                  *(&v87 + 2) = v85;
                  __src[21] = v87;
                  memset(v347, 0, sizeof(v347));
                  v336 = 0;
                  v337 = &v336;
                  v338 = 0x2020000000;
                  v339 = 0;
                  do
                  {
                    v88 = sub_1AF1656E4(v320, v86, 0);
                    v89 = v88;
                    if (v88 && sub_1AF166220(v88) && sub_1AF167434(v89))
                    {
                      v90 = sub_1AF167220(v89);
                      v91 = v337[3];
                      v337[3] = v91 + 1;
                      *(v347 + v91) = v90;
                    }

                    ++v86;
                  }

                  while (v86 != 19);
                  v335[0] = MEMORY[0x1E69E9820];
                  v335[1] = 3221225472;
                  v335[2] = sub_1AF210260;
                  v335[3] = &unk_1E7A7CF20;
                  v335[5] = v347;
                  v335[4] = &v336;
                  sub_1AF16E48C(a2, v335);
                  if (a3)
                  {
                    sub_1AF16E48C(a3, v335);
                  }

                  if (v337[3] < 1)
                  {
                    if (objc_msgSend_argumentEncoder(v55, v92, v93, v94))
                    {
                      v318 = objc_alloc_init(VFXMTLBuffer);
                      v244 = objc_msgSend_argumentEncoder(v55, v241, v242, v243);
                      v248 = objc_msgSend_encodedLength(v244, v245, v246, v247);
                      BufferWithLength = CFXGPUDeviceCreateBufferWithLength(*(a1 + 8), v248, 0);
                      objc_msgSend_setBuffer_(v318, v250, BufferWithLength, v251);

                      v255 = objc_msgSend_argumentEncoder(v55, v252, v253, v254);
                      v259 = objc_msgSend_buffer(v318, v256, v257, v258);
                      v263 = objc_msgSend_offset(v318, v260, v261, v262);
                      objc_msgSend_setArgumentBuffer_offset_(v255, v264, v259, v263);
                      v334 = 0;
                      v268 = sub_1AF203660();
                      if (v268)
                      {
                        v269 = 0;
                        v270 = 26;
                        do
                        {
                          v271 = sub_1AF1656E4(v320, v269, 0);
                          sub_1AF0D839C();
                          if (v271)
                          {
                            isDynamic = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(a1, v265, v271, a5, 0, 0);
                            sub_1AF16679C(v271);
                            if (isDynamic)
                            {
                              v273 = objc_msgSend_argumentEncoder(v55, v265, v266, v267);
                              objc_msgSend_setTexture_atIndex_(v273, v274, isDynamic, v270);
                              v278 = objc_msgSend_usedResources(v55, v275, v276, v277);
                              objc_msgSend_addObject_(v278, v279, isDynamic, v280);
                              v281 = sub_1AFDE8554(a1);
                              v285 = objc_msgSend_argumentEncoder(v55, v282, v283, v284);
                              objc_msgSend_setSamplerState_atIndex_(v285, v286, v281, v270 + 1);
                            }
                          }

                          v270 += 2;
                          ++v269;
                        }

                        while (v269 != v268);
                      }

                      v287 = objc_msgSend_argumentEncoder(v55, v265, v266, v267);
                      v290 = objc_msgSend_constantDataAtIndex_(v287, v288, 0, v289);
                      memcpy(v290, __src, 0x160uLL);
                    }

                    else
                    {
                      v291 = sub_1AF12E2AC(a5);
                      v318 = objc_msgSend_newSubBufferWithBytes_length_renderContext_(*(a1 + 72), v292, __src, 352, v291);
                    }

                    v293 = *(a1 + 32);
                    ++*(v293 + 240);
                    *(v293 + 264) += 352;
                  }

                  else
                  {
                    v318 = objc_alloc_init(VFXMTLBuffer);
                    v95 = CFXGPUDeviceCreateBufferWithLength(*(a1 + 8), ((v337[3] << 6) + 352), 0);
                    v99 = objc_msgSend_contents(v95, v96, v97, v98);
                    memcpy(v99, __src, 0x160uLL);
                    if (v337[3] >= 1)
                    {
                      v102 = 0;
                      v103 = v99 + 22;
                      do
                      {
                        v104 = *(v347 + v102);
                        if (!v104)
                        {
                          v105 = sub_1AF0D5194();
                          if (os_log_type_enabled(v105, OS_LOG_TYPE_FAULT))
                          {
                            sub_1AFDE8B44(v345, &v346, v105);
                          }
                        }

                        v106 = v104[2];
                        v107 = v104[3];
                        v108 = v104[1];
                        *v103 = *v104;
                        v103[1] = v108;
                        v103[2] = v106;
                        v103[3] = v107;
                        ++v102;
                        v103 += 4;
                      }

                      while (v102 < v337[3]);
                    }

                    objc_msgSend_setBuffer_(v318, v100, v95, v101);
                  }

                  _Block_object_dispose(&v336, 8);
LABEL_150:
                  v294 = objc_msgSend_type(v55, v163, v164, v165);
                  v311 = v311 & 0xFFFFFFFFFFFF0000 | *(v55 + 9);
                  objc_msgSend_setResource_ofType_atIndices_(v315, v295, v318, v294);

                  continue;
                }

                v318 = objc_alloc_init(VFXMTLBuffer);
                if (v48)
                {
                  v113 = sub_1AF135D60(v48, v56);
                }

                else
                {
                  v113 = 0;
                }

                if (a3 && !v113 && v324)
                {
                  v113 = sub_1AF135D60(v324, v56);
                }

                v140 = objc_msgSend_binding(v55, v110, v111, v112);
                v144 = objc_msgSend_bufferDataSize(v140, v141, v142, v143);
                if (v113)
                {
                  v145 = CFGetTypeID(v113);
                }

                else
                {
                  v145 = 0;
                }

                v146 = v55;
                v147 = sub_1AF1CD8D8();
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (!((v145 == v147) | isKindOfClass & 1) && objc_msgSend_conformsToProtocol_(v113, v148, &unk_1F2629B38, v150))
                {
                  v55 = v146;
                  if (objc_msgSend_length(v113, v148, v149, v150) >= v144)
                  {
                    objc_msgSend_setBuffer_(v318, v152, v113, v153);
                  }

                  else
                  {
                    if ((byte_1EB6586A8 & 1) == 0)
                    {
                      byte_1EB6586A8 = 1;
                      v154 = sub_1AF0D5194();
                      if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                      {
                        v296 = v146[9];
                        v297 = v146[10];
                        v298 = objc_msgSend_length(v113, v155, v156, v157);
                        *&__src[0] = __PAIR64__(v296, 67109888);
                        WORD4(__src[0]) = 1024;
                        *(__src + 10) = v297;
                        HIWORD(__src[0]) = 1024;
                        LODWORD(__src[1]) = v144;
                        WORD2(__src[1]) = 1024;
                        *(&__src[1] + 6) = v298;
                        _os_log_error_impl(&dword_1AF0CE000, v154, OS_LOG_TYPE_ERROR, "Error: incorrect buffer size for attachments vertex [%d] fragments [%d]. Expected:%d Provided:%d", __src, 0x1Au);
                      }
                    }

                    v158 = CFXGPUDeviceCreateBufferWithLength(*(a1 + 8), v144, 0);
                    objc_msgSend_setBuffer_(v318, v159, v158, v160);

                    objc_msgSend_setOffset_(v318, v161, 0, v162);
                  }

                  goto LABEL_150;
                }

                if (isKindOfClass)
                {
                  v166 = objc_msgSend_length(v113, v148, v149, v150);
                  if (v166 > v144)
                  {
                    v144 = v166;
                  }
                }

                v167 = objc_msgSend_buffer(v73, v148, v149, v150);
                if (objc_msgSend_length(v167, v168, v169, v170) == v144)
                {
                  v174 = objc_msgSend_buffer(v73, v171, v172, v173);
                  objc_msgSend_setBuffer_(v318, v175, v174, v176);
                  if (v113 || !objc_msgSend_bufferStructType(v140, v177, v178, v179))
                  {
                    CFXBufferAllocatorPerFrameAllocateWithLength(cf, v144);
                    v181 = v180;
                    v183 = v182;
                    CPUPointer = CFXBufferSliceGetCPUPointer(v180, v182, v184, v185);
                    sub_1AF2102D4(v140, CPUPointer, a3, v144, a2, v113, isKindOfClass & 1);
                    CFXBufferSliceDidModify(v181, v183);
                    v190 = *objc_msgSend_resourceBlitEncoder(v306, v187, v188, v189);
                    MTLBuffer = CFXBufferSliceGetMTLBuffer(v181, v183);
                    v195 = objc_msgSend_buffer(v318, v192, v193, v194);
                    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v190, v196, MTLBuffer, v183, v195, 0, v144);
                  }
                }

                else
                {
                  v197 = CFXGPUDeviceCreateBufferWithLength(*(a1 + 8), v144, 0);
                  objc_msgSend_setBuffer_(v318, v198, v197, v199);

                  objc_msgSend_setOffset_(v318, v200, 0, v201);
                  v205 = objc_msgSend_contents(v318, v202, v203, v204);
                  sub_1AF2102D4(v140, v205, a3, v144, a2, v113, isKindOfClass & 1);
                }

                if (!v320 || v113 || !objc_msgSend_hasPrefix_(v56, v163, @"u_shaderModifierParameters", v165))
                {
                  v55 = v146;
                  if ((byte_1EB6586AA & 1) == 0)
                  {
                    byte_1EB6586AA = 1;
                    v237 = sub_1AF0D5194();
                    if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
                    {
                      v238 = objc_msgSend_name(v146, v163, v164, v165);
                      v239 = v146[9];
                      v240 = v146[10];
                      LODWORD(__src[0]) = 138412802;
                      *(__src + 4) = v238;
                      WORD6(__src[0]) = 1024;
                      *(__src + 14) = v239;
                      WORD1(__src[1]) = 1024;
                      DWORD1(__src[1]) = v240;
                      _os_log_error_impl(&dword_1AF0CE000, v237, OS_LOG_TYPE_ERROR, "Error: Missing shadable value for parameter %@ [vertex: %d fragment: %d]", __src, 0x18u);
                    }
                  }

                  goto LABEL_150;
                }

                v206 = objc_msgSend_contents(v318, v163, v164, v165);
                v55 = v146;
                v210 = objc_msgSend_bufferStructType(v140, v207, v208, v209);
                v214 = objc_msgSend_members(v210, v211, v212, v213);
                v332 = 0u;
                v333 = 0u;
                v330 = 0u;
                v331 = 0u;
                v216 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v215, &v330, v344, 16);
                if (!v216)
                {
                  goto LABEL_150;
                }

                v308 = v56;
                v217 = *v331;
                while (2)
                {
                  v218 = 0;
LABEL_111:
                  if (*v331 != v217)
                  {
                    objc_enumerationMutation(v214);
                  }

                  v219 = *(*(&v330 + 1) + 8 * v218);
                  v220 = objc_msgSend_name(v219, v163, v164, v165);
                  if (v48)
                  {
                    v221 = sub_1AF135D60(v48, v220);
                  }

                  else
                  {
                    v221 = 0;
                  }

                  if (!a3 || v221)
                  {
LABEL_120:
                    if (!v221)
                    {
                      goto LABEL_125;
                    }

                    v222 = CFGetTypeID(v221);
                    if (v222 != sub_1AF1CD8D8() || (v223 = objc_msgSend_dataType(v219, v163, v164, v165), v227 = objc_msgSend_offset(v219, v224, v225, v226), sub_1AF1F2118(v221, v223, v206 + v227)) || (v228 = sub_1AF0D5194(), !os_log_type_enabled(v228, OS_LOG_TYPE_ERROR)))
                    {
LABEL_127:
                      if (v216 == ++v218)
                      {
                        v55 = v146;
                        v236 = objc_msgSend_countByEnumeratingWithState_objects_count_(v214, v163, &v330, v344, 16);
                        v216 = v236;
                        if (!v236)
                        {
                          goto LABEL_150;
                        }

                        continue;
                      }

                      goto LABEL_111;
                    }

                    LODWORD(__src[0]) = 138412546;
                    *(__src + 4) = v308;
                    WORD6(__src[0]) = 2112;
                    *(__src + 14) = v221;
                    v229 = v228;
                    v230 = "Error: Argument %@ : failed to write value to Metal buffer (%@)";
                    v231 = 22;
                  }

                  else
                  {
                    if (v324)
                    {
                      v221 = sub_1AF135D60(v324, v220);
                      goto LABEL_120;
                    }

LABEL_125:
                    if (byte_1EB6586A9)
                    {
                      goto LABEL_127;
                    }

                    byte_1EB6586A9 = 1;
                    v232 = sub_1AF0D5194();
                    if (!os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_127;
                    }

                    v233 = objc_msgSend_name(v146, v163, v164, v165);
                    v234 = v146[9];
                    v235 = v146[10];
                    LODWORD(__src[0]) = 138413058;
                    *(__src + 4) = v233;
                    WORD6(__src[0]) = 2112;
                    *(__src + 14) = v220;
                    WORD3(__src[1]) = 1024;
                    DWORD2(__src[1]) = v234;
                    WORD6(__src[1]) = 1024;
                    *(&__src[1] + 14) = v235;
                    v229 = v232;
                    v230 = "Error: Missing shadable value for parameter %@.%@ [vertex: %d fragment: %d]";
                    v231 = 34;
                  }

                  break;
                }

                _os_log_error_impl(&dword_1AF0CE000, v229, OS_LOG_TYPE_ERROR, v230, __src, v231);
                goto LABEL_127;
              case 1:
                continue;
              case 2:
                v61 = sub_1AF16E3F4(a2, v56);
                v62 = v61;
                if (a3 && !v61)
                {
                  v62 = sub_1AF16E3F4(a3, v56);
                }

                sub_1AF0D839C();
                LOBYTE(v347[0]) = 0;
                LOBYTE(v336) = 0;
                if (v62)
                {
                  v63 = CFGetTypeID(v62);
                  if (v63 == sub_1AF167C2C())
                  {
                    v65 = objc_msgSend_renderResourceForMaterialProperty_withEngineContext_didFallbackToDefaultTexture_isDynamic_(a1, v64, v62, a5, v347, &v336);
                    sub_1AF16679C(v62);
                    v69 = v62;
                    if (v65)
                    {
LABEL_77:
                      v134 = objc_msgSend_type(v55, v66, v67, v68);
                      v312 = v312 & 0xFFFFFFFFFFFF0000 | *(v55 + 9);
                      objc_msgSend_setResource_ofType_atIndices_(v315, v135, v65, v134);
                      if ((v347[0] & 1) != 0 || v336 == 1)
                      {
                        objc_msgSend_setMaterialModificationCount_(v315, v52, -1, v54);
                      }

                      v136 = *(v55 + 11);
                      v137 = *(v55 + 12);
                      if (v137 != 255 || v136 != 255)
                      {
                        v138 = sub_1AFDE8554(a1);
                        v309 = v309 & 0xFFFFFFFFFFFF0000 | v136 | (v137 << 8);
                        objc_msgSend_setResource_ofType_atIndices_(v315, v139, v138, 3);
                      }

                      continue;
                    }

LABEL_76:
                    LOBYTE(v347[0]) = 1;
                    v118 = objc_msgSend_binding(v55, v66, v67, v68);
                    v122 = objc_msgSend_textureType(v118, v119, v120, v121);
                    v65 = objc_msgSend_defaultTextureForTextureType_(a1, v123, v122, v124);
                    sub_1AF1C4F6C();
                    v125 = sub_1AF12E2AC(a5);
                    v129 = objc_msgSend_resourceManagerMonitor(v125, v126, v127, v128);
                    v132 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v130, @"Unable to find texture for binding %@ (%@) and material property %@ derived from value %@ (model=%@, material=%@)", v131, v55, v56, v69, v62, a3, a2);
                    objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v129, v133, v125, v55, v132);
                    goto LABEL_77;
                  }

                  v117 = sub_1AF0D5194();
                  if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(__src[0]) = 138412802;
                    *(__src + 4) = v56;
                    WORD6(__src[0]) = 2048;
                    *(__src + 14) = a2;
                    WORD3(__src[1]) = 2048;
                    *(&__src[1] + 1) = a3;
                    v115 = v117;
                    v116 = "Warning: Missing material property for binding %@ (material: %p, model: %p)";
LABEL_74:
                    _os_log_impl(&dword_1AF0CE000, v115, OS_LOG_TYPE_DEFAULT, v116, __src, 0x20u);
                  }
                }

                else
                {
                  v114 = sub_1AF0D5194();
                  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(__src[0]) = 138412802;
                    *(__src + 4) = v56;
                    WORD6(__src[0]) = 2048;
                    *(__src + 14) = a2;
                    WORD3(__src[1]) = 2048;
                    *(&__src[1] + 1) = a3;
                    v115 = v114;
                    v116 = "Warning: Missing shadable value for binding %@ (material: %p, model: %p)";
                    goto LABEL_74;
                  }
                }

                v69 = 0;
                goto LABEL_76;
            }

LABEL_66:
            v109 = sub_1AF0D5194();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE8B8C(&v326, v327, v109);
            }

            continue;
          }

          if ((v60 - 16) < 2)
          {
            continue;
          }

          if (v60 != 3)
          {
            goto LABEL_66;
          }

          v70 = sub_1AF0D5194();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDE8B04(&buf, v329, v70);
          }
        }
      }

      v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v52, &v340, v349, 16);
    }

    while (v51);
  }

  v299 = objc_alloc_init(VFXMTLShadableKey);
  v299->_material = a2;
  v299->_model = a3;
  objc_msgSend_setPipeline_(v299, v300, a4, v301);
  objc_msgSend_setObject_forKey_(*(a1 + 408), v302, v315, v299);
  v303 = v315;

  os_unfair_lock_unlock((a1 + 416));
  if (cf)
  {
    CFRelease(cf);
  }

  return v315;
}

void sub_1AF210100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1AF210260(uint64_t a1, int a2, CFTypeRef cf)
{
  v5 = CFGetTypeID(cf);
  result = sub_1AF167C2C();
  if (cf && v5 == result)
  {
    result = sub_1AF167434(cf);
    if (result)
    {
      result = sub_1AF167220(cf);
      v7 = *(a1 + 40);
      v8 = *(*(a1 + 32) + 8);
      v9 = *(v8 + 24);
      *(v8 + 24) = v9 + 1;
      *(v7 + 8 * v9) = result;
    }
  }

  return result;
}

uint64_t sub_1AF2102D4(void *a1, void *a2, uint64_t a3, size_t a4, uint64_t a5, void *cf, int a7)
{
  v82 = *MEMORY[0x1E69E9840];
  v68 = a2;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == sub_1AF1CD8D8())
    {
      v17 = objc_msgSend_bufferDataType(a1, v14, v15, v16, v68);
      if (!sub_1AF1F2118(cf, v17, a2))
      {
        v21 = sub_1AF0D5194();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDE8C50(a1, cf, v21, v20);
        }
      }
    }

    else if (a7)
    {
      v22 = objc_msgSend_bytes(cf, v14, v15, v16, v68);
      v26 = objc_msgSend_length(cf, v23, v24, v25);
      if (v26 == a4)
      {
        memcpy(a2, v22, a4);
      }

      else
      {
        v31 = v26;
        v32 = sub_1AF0D5194();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v77 = objc_msgSend_name(a1, v18, v19, v20);
          v78 = 2048;
          v79 = v31;
          v80 = 2048;
          v81 = a4;
          _os_log_error_impl(&dword_1AF0CE000, v32, OS_LOG_TYPE_ERROR, "Error: Argument %@ : mismatch between the NSData and the buffer size %ld != %ld", buf, 0x20u);
        }
      }
    }

    else
    {
      v27 = CFGetTypeID(cf);
      v28 = CFCopyTypeIDDescription(v27);
      v29 = sub_1AF0D5194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE8BCC(a1, v28, v29, v30);
      }

      CFRelease(v28);
    }
  }

  else
  {
    bzero(a2, a4);
  }

  result = objc_msgSend_bufferDataType(a1, v18, v19, v20, v68);
  if (result == 1)
  {
    v37 = objc_msgSend_name(a1, v34, v35, v36);
    v40 = objc_msgSend_stringByAppendingString_(v37, v38, @".", v39);
    v44 = objc_msgSend_bufferStructType(a1, v41, v42, v43);
    v48 = objc_msgSend_members(v44, v45, v46, v47);
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v49, &v71, v75, 16);
    if (result)
    {
      v53 = result;
      v54 = *v72;
      if (a3)
      {
        v55 = cf == 0;
      }

      else
      {
        v55 = 0;
      }

      v56 = v55;
      do
      {
        v57 = 0;
        do
        {
          if (*v72 != v54)
          {
            objc_enumerationMutation(v48);
          }

          v58 = *(*(&v71 + 1) + 8 * v57);
          v59 = objc_msgSend_name(v58, v50, v51, v52);
          v62 = objc_msgSend_stringByAppendingString_(v40, v60, v59, v61);
          v63 = sub_1AF16E3F4(a5, v62);
          if (v56)
          {
            v63 = sub_1AF16E3F4(a3, v62);
          }

          v64 = v63;
          if (v63)
          {
            v65 = CFGetTypeID(v63);
            if (v65 == sub_1AF1CD8D8())
            {
              sub_1AF1F2B68(v64, v58, v69, v66);
            }

            else
            {
              v67 = sub_1AF0D5194();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
              {
                sub_1AFDE8CD4(buf, &v77, v67);
              }
            }
          }

          ++v57;
        }

        while (v53 != v57);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v48, v50, &v71, v75, 16);
        v53 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_1AF21082C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AF210848(uint64_t a1, void *a2)
{
  if (objc_loadWeak((a1 + 64)))
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    sub_1AF2108A4(v6, v4, v5, v7, v8, v9, a2);
  }
}

void sub_1AF2108A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  os_unfair_lock_lock((a3 + 8));
  if (!*a3)
  {
    if (*(a3 + 12))
    {
      v16 = 0;
    }

    else
    {
      v16 = 258;
    }

    v17 = objc_alloc(MEMORY[0x1E696AD18]);
    *a3 = objc_msgSend_initWithKeyOptions_valueOptions_capacity_(v17, v18, v16, 0, 100);
  }

  objc_msgSend_removeObjectForKey_(a6, v14, a4, v15);
  if (!objc_msgSend_count(a6, v19, v20, v21))
  {
    objc_msgSend_removeObjectForKey_(a5, v22, a2, v24);
    if (!objc_msgSend_count(a5, v25, v26, v27))
    {

      *(a3 + 16) = 0;
    }
  }

  if (objc_msgSend_status(a7, v22, v23, v24) == 4 && !objc_msgSend_objectForKey_(*a3, v28, a2, v29))
  {
    objc_msgSend_setObject_forKey_(*a3, v30, a1, a2);
  }

  os_unfair_lock_unlock((a3 + 8));
}

void sub_1AF210B6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1AF210B88(uint64_t a1, void *a2)
{
  if (objc_loadWeak((a1 + 64)))
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);

    sub_1AF2108A4(v6, v4, v5, v7, v8, v9, a2);
  }
}

void sub_1AF210CEC()
{
  v2 = *(v1 + 32);
  ++*(v2 + 228);
  *(v2 + 256) += v0;
}

uint64_t sub_1AF210D0C(void *a1, uint64_t a2)
{

  return CFXGPUDeviceCreateBuffer(v2, a1, a2);
}

uint64_t sub_1AF210D30(void *a1, const char *a2)
{

  return objc_msgSend_initWithKeyOptions_valueOptions_capacity_(a1, a2, v2, 0, 100);
}

uint64_t sub_1AF210D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return RGBufferDescriptorMake(a2, a3);
}

void sub_1AF211210(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(a2 + 8 * v10);
      v13 = sub_1AF1D5C2C(*(a4 + 8));
      v15 = sub_1AF2114F8(v12, v13, a5, v14);
      if (v15)
      {
        v19 = v15;
        if (*a1)
        {
          v20 = objc_msgSend_privateFunctions(*a1, v16, v17, v18);
          v23 = objc_msgSend_arrayByAddingObject_(v20, v21, v19, v22);
        }

        else
        {
          *a1 = objc_alloc_init(MEMORY[0x1E6974100]);
          v27[0] = v19;
          v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v27, 1);
        }

        objc_msgSend_setPrivateFunctions_(*a1, v24, v23, v25);
      }

      v10 = ++v11;
    }

    while (v11 < a3);
  }
}

id sub_1AF211324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1AF2114F8(*(a1 + 304), *(a1 + 288), *(a1 + 112), a4);
  if (!v6)
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_1AF2114F8(*(a1 + 312), *(a1 + 288), *(a1 + 112), v7);
  if (!v9)
  {

    return 0;
  }

  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x1E6974148]);
  objc_msgSend_setVertexFunction_(v11, v12, v8, v13);

  objc_msgSend_setFragmentFunction_(v11, v14, v10, v15);
  objc_msgSend_setFragmentLinkedFunctions_(v11, v16, *(a1 + 328), v17);
  objc_msgSend_setVertexLinkedFunctions_(v11, v18, *(a1 + 320), v19);
  for (i = 0; i != 8; ++i)
  {
    v24 = *(a1 + 120 + 8 * i);
    v25 = objc_msgSend_colorAttachments(v11, v20, v21, v22);
    v28 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, i, v27);
    objc_msgSend_setPixelFormat_(v28, v29, v24, v30);
  }

  if (*(a1 + 347) == 1)
  {
    for (j = 0; j != 8; ++j)
    {
      v32 = *(a1 + 216 + 8 * j);
      v33 = objc_msgSend_colorAttachments(v11, v20, v21, v22);
      v36 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, j, v35);
      objc_msgSend_setWriteMask_(v36, v37, v32, v38);
    }
  }

  v39 = *(a1 + 208);
  if (v39)
  {
    sub_1AF20BEF0(v39, v11);
  }

  objc_msgSend_setVertexDescriptor_(v11, v20, *(a1 + 296), v22);
  if (*(a1 + 200) <= 1u)
  {
    objc_msgSend_setRasterSampleCount_(v11, v40, 1, v41);
  }

  else
  {
    objc_msgSend_setRasterSampleCount_(v11, v40, *(a1 + 200), v41);
  }

  objc_msgSend_setDepthAttachmentPixelFormat_(v11, v42, *(a1 + 184), v43);
  objc_msgSend_setStencilAttachmentPixelFormat_(v11, v44, *(a1 + 192), v45);
  if (a3)
  {
    objc_msgSend_setBinaryArchives_(v11, v46, a3, v47);
  }

  v48 = *(a1 + 51);
  if (v48 >= 2)
  {
    objc_msgSend_setMaxVertexAmplificationCount_(v11, v46, v48, v47);
  }

  v49 = *(a1 + 336);
  if (v49)
  {
    (*(v49 + 16))(v49, v11);
  }

  objc_msgSend_setInputPrimitiveTopology_(v11, v46, *(a1 + 280), v47);

  return v11;
}

uint64_t sub_1AF2114F8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v8 = 0;
  if (a2)
  {
    v4 = objc_msgSend_newFunctionWithName_constantValues_error_(a3, a2, a1, a2, &v8);
  }

  else
  {
    v4 = objc_msgSend_newFunctionWithName_(a3, 0, a1, a4);
  }

  v5 = v4;
  if (!v4)
  {
    v6 = sub_1AF0D5194();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE8FB4();
    }
  }

  return v5;
}

void sub_1AF211868(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    if (a3)
    {
      v7 = sub_1AF0D5194();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE90A4(a3, v7, v8, a4);
      }
    }
  }

  objc_msgSend_setState_(*(a1 + 32), a2, a2, a4);
  v9 = *(a1 + 32) + 32;
  v10 = *(a1 + 216);
  v11 = *(a1 + 232);
  v12 = *(a1 + 200);
  *(v9 + 80) = *(a1 + 248);
  *(v9 + 48) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v12;
  v13 = *(a1 + 184);
  *v9 = *(a1 + 168);
  *(v9 + 16) = v13;
  v17 = objc_msgSend_vertexDescriptor(*(a1 + 40), v14, v15, v16);
  objc_msgSend_setVertexDescriptor_(*(a1 + 32), v18, v17, v19);
  v23 = objc_msgSend_vertexFunction(*(a1 + 40), v20, v21, v22);
  objc_msgSend_setVertexFunction_(*(a1 + 32), v24, v23, v25);
  v29 = objc_msgSend_fragmentFunction(*(a1 + 40), v26, v27, v28);
  objc_msgSend_setFragmentFunction_(*(a1 + 32), v30, v29, v31);
  *(*(a1 + 32) + 24) = *(a1 + 56);
  v32 = *(a1 + 72);
  if (v32)
  {
    v32 = CFRetain(v32);
  }

  *(*(a1 + 32) + 16) = v32;
  memcpy(v33, (a1 + 48), sizeof(v33));
  sub_1AF219758(v33);
}

void sub_1AF2119A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memcpy(__dst, (a1 + 64), sizeof(__dst));
  sub_1AF2196E8(__dst);
  v11 = objc_msgSend_deviceQueue(*(*(a1 + 32) + 40), v8, v9, v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF211A98;
  block[3] = &unk_1E7A7D000;
  block[4] = a4;
  block[5] = a2;
  v13 = *(a1 + 32);
  v14 = a3;
  memcpy(v16, (a1 + 64), sizeof(v16));
  v15 = *(a1 + 48);
  dispatch_async(v11, block);
}

void sub_1AF211A98(uint64_t a1)
{
  (*(*(a1 + 80) + 16))();
  if (*(a1 + 40))
  {
    objc_msgSend_generateBindingsForPipeline_withReflection_program_materialIdentifier_overrides_(*(*(a1 + 48) + 48), v2, *(a1 + 56), *(a1 + 64), *(a1 + 96), *(a1 + 104), *(a1 + 120));
    objc_msgSend_setState_(*(a1 + 56), v4, *(a1 + 40), v5);
  }

  else
  {
    objc_msgSend_setState_(*(a1 + 56), v2, 0, v3);
  }

  memcpy(v6, (a1 + 88), sizeof(v6));
  sub_1AF219758(v6);
  dispatch_group_leave(*(a1 + 72));
}

void sub_1AF211B38(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_1AF211E58(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = (a1 + 48);
  v8 = *(a1 + 112);
  v55 = *(a1 + 96);
  v56 = v8;
  v9 = *(a1 + 144);
  v57 = *(a1 + 128);
  v58 = v9;
  v10 = *(a1 + 80);
  v53 = *(a1 + 64);
  v54 = v10;
  v11 = *(a1 + 184);
  v47 = *(a1 + 168);
  v48 = v11;
  v12 = *(a1 + 200);
  v13 = *(a1 + 216);
  v14 = *(a1 + 232);
  v15 = *(a1 + 256);
  v52 = *(a1 + 248);
  v50 = v13;
  v51 = v14;
  v49 = v12;
  v16 = *(a1 + 264);
  v17 = *(a1 + 280);
  v18 = *(a1 + 296);
  v19 = *(a1 + 312);
  v20 = *(a1 + 336);
  v46 = *(a1 + 328);
  v44 = v18;
  v45 = v19;
  v42 = v16;
  v43 = v17;
  v21 = *(a1 + 344);
  v22 = *(a1 + 352);
  v23 = *(a1 + 360);
  v24 = *(a1 + 384);
  v40 = *(a1 + 368);
  v41 = v24;
  v36 = v21;
  if (a2)
  {
    v25 = a2;
    if (*(a1 + 400) == 1 || objc_msgSend_commonProfileCacheLibrary(*(*(a1 + 32) + 40), a2, a3, a4) == a2 && v6)
    {
      v38 = sub_1AF1D5940(v6, 0);
      v37 = sub_1AF1D5940(v6, 1);
    }

    else
    {
      v37 = v23;
      v38 = v22;
    }
  }

  else
  {
    v25 = objc_msgSend_frameworkLibrary(*(*(a1 + 32) + 40), 0, a3, a4);
    v6 = objc_msgSend_defaultProgramUsingTessellation_(*(a1 + 32), v26, *(a1 + 384) != 0, v27);
    v38 = sub_1AF1D5940(v6, 0);
    v37 = sub_1AF1D5940(v6, 1);
    v20 = sub_1AF1D5C2C(v6);
    v15 = 0;
  }

  v28 = sub_1AFDE79F4(*(a1 + 32));
  *&__dst[0] = v7;
  *(&__dst[0] + 1) = v6;
  __dst[3] = v55;
  __dst[4] = v56;
  __dst[5] = v57;
  __dst[6] = v58;
  __dst[1] = v53;
  __dst[2] = v54;
  *&__dst[7] = v25;
  *(&__dst[8] + 8) = v48;
  *(&__dst[7] + 8) = v47;
  *(&__dst[11] + 8) = v51;
  *(&__dst[10] + 8) = v50;
  *(&__dst[9] + 8) = v49;
  *(&__dst[12] + 1) = v52;
  *&__dst[13] = v15;
  *(&__dst[16] + 8) = v45;
  *(&__dst[13] + 8) = v42;
  *(&__dst[15] + 8) = v44;
  *(&__dst[14] + 8) = v43;
  *(&__dst[17] + 1) = v46;
  *&__dst[18] = v20;
  *(&__dst[18] + 1) = v36;
  *&__dst[19] = v38;
  *(&__dst[19] + 1) = v37;
  __dst[20] = v40;
  __dst[21] = v41;
  v31 = sub_1AF211324(__dst, v29, v28, v30);
  if (v31)
  {
    v33 = v31;
    v34 = *(a1 + 32);
    v35 = *(a1 + 40);
    *&__dst[0] = v7;
    *(&__dst[0] + 1) = v6;
    __dst[3] = v55;
    __dst[4] = v56;
    __dst[5] = v57;
    __dst[6] = v58;
    __dst[1] = v53;
    __dst[2] = v54;
    *&__dst[7] = v25;
    *(&__dst[8] + 8) = v48;
    *(&__dst[7] + 8) = v47;
    *(&__dst[11] + 8) = v51;
    *(&__dst[10] + 8) = v50;
    *(&__dst[9] + 8) = v49;
    *(&__dst[12] + 1) = v52;
    *&__dst[13] = v15;
    *(&__dst[16] + 8) = v45;
    *(&__dst[13] + 8) = v42;
    *(&__dst[15] + 8) = v44;
    *(&__dst[14] + 8) = v43;
    *(&__dst[17] + 1) = v46;
    *&__dst[18] = v20;
    *(&__dst[18] + 1) = v36;
    *&__dst[19] = v38;
    *(&__dst[19] + 1) = v37;
    __dst[20] = v40;
    __dst[21] = v41;
    objc_msgSend__createPipelineStateWithDescriptor_desc_pipeline_(v34, v32, v33, __dst, v35);
  }

  if ((*(a1 + 401) & 1) == 0)
  {
    sub_1AF1D5AC4(*(a1 + 56));
  }

  memcpy(__dst, v5, sizeof(__dst));
  sub_1AF219758(__dst);
}

unint64_t sub_1AF213F78(void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_mipmapLevelCount(a2, a2, a3, a4);
  if (result >= 2)
  {
    if (objc_msgSend_width(a2, v7, v8, v9) > 1 || objc_msgSend_height(a2, v10, v11, v12) > 1 || (result = objc_msgSend_depth(a2, v10, v13, v12), result >= 2))
    {
      v14 = *a1;

      return objc_msgSend_generateMipmapsForTexture_(v14, v10, a2, v12);
    }
  }

  return result;
}

float sub_1AF2156C8(uint64_t a1, unsigned int a2, int a3, int a4, float *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  LODWORD(v6) = 0;
  v7 = a4 * a4;
  memset(v43, 0, sizeof(v43));
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    v6 = 1.0;
    v10 = 1.0 / v9 + -1.0;
    v11 = (1.0 - 1.0 / v9 + 1.0 - 1.0 / v9) / (v9 + -1.0);
    __asm
    {
      FMOV            V4.4S, #-1.0
      FMOV            V5.4S, #1.0
    }

    _S17 = 3.0;
    do
    {
      v19 = 0;
      v20 = v10 + (v8 * v11);
      LODWORD(v21) = _Q4.i32[0];
      v22 = _Q5;
      do
      {
        _Q24.f32[0] = v10 + (v19 * v11);
        v23.f32[0] = _Q24.f32[0];
        v24 = 0uLL;
        if (a3 > 2)
        {
          if (a3 == 3)
          {
            v24 = _Q4;
            v24.f32[0] = v10 + (v19 * v11);
            v24.f32[2] = -v20;
          }

          else
          {
            if (a3 == 4)
            {
              v24.i64[1] = _Q5.i64[1];
            }

            else
            {
              if (a3 != 5)
              {
                goto LABEL_18;
              }

              _Q24.f32[0] = -_Q24.f32[0];
              v24.i64[1] = _Q4.i64[1];
            }

            v24.i32[0] = _Q24.i32[0];
            v24.f32[1] = -v20;
          }
        }

        else if (a3)
        {
          if (a3 == 1)
          {
            *(&v21 + 1) = -v20;
            v24.i64[0] = v21;
            v24.i64[1] = _Q24.i64[0];
          }

          else if (a3 == 2)
          {
            v24 = _Q5;
            v24.f32[2] = v10 + (v8 * v11);
            v24.i32[0] = _Q24.i32[0];
          }
        }

        else
        {
          v22.f32[1] = -v20;
          v24 = v22;
          v24.f32[2] = -_Q24.f32[0];
        }

LABEL_18:
        if (a4 < 1)
        {
          goto LABEL_22;
        }

        v44 = 1049652929;
        if (a4 != 1)
        {
          _Q24 = vmulq_f32(v24, v24);
          *&v25 = _Q24.f32[2] + vaddv_f32(*_Q24.f32);
          *_Q24.f32 = vrsqrte_f32(v25);
          *_Q24.f32 = vmul_f32(*_Q24.f32, vrsqrts_f32(v25, vmul_f32(*_Q24.f32, *_Q24.f32)));
          v26 = vmulq_n_f32(v24, vmul_f32(*_Q24.f32, vrsqrts_f32(v25, vmul_f32(*_Q24.f32, *_Q24.f32))).f32[0]);
          *_Q24.f32 = vmul_f32(*&vextq_s8(v26, v26, 4uLL), 0x3EFA2A2CBEFA2A2CLL);
          v45 = _Q24.i64[0];
          v46 = -0.4886 * v26.f32[0];
          if (a4 >= 3)
          {
            _Q24 = vmulq_f32(v26, v26);
            v47 = vmuls_lane_f32(v26.f32[0] * 1.0925, *v26.f32, 1);
            __asm { FMLA            S27, S17, V24.S[2] }

            *&v28 = v26.f32[0] * -1.0925;
            v29 = xmmword_1AFE42A90;
            v29.i32[0] = vmuls_lane_f32(-1.0925, *v26.f32, 1);
            v30 = vdupq_laneq_s32(v26, 2);
            v29.i32[2] = v30.i32[2];
            v30.i32[1] = _S27;
            v30.i64[1] = __PAIR64__(_Q24.f32[0] - _Q24.f32[1], v28);
            v48 = vmulq_f32(v30, v29);
          }

LABEL_22:
          if (!v7)
          {
            goto LABEL_25;
          }
        }

        v23.f32[1] = v10 + (v8 * v11);
        v31 = vaddv_f32(vmul_f32(v23, v23)) + 1.0;
        *&v31 = (4.0 / (a2 * a2)) / (v31 * sqrt(v31));
        v32 = vmulq_n_f32(*(a1 + 16 * (v8 * a2 + v19)), *&v31);
        v33 = &v44;
        v34 = v43;
        v35 = (a4 * a4);
        do
        {
          v36 = *v33++;
          _Q24 = vmlaq_n_f32(*v34, v32, v36);
          *v34++ = _Q24;
          --v35;
        }

        while (v35);
LABEL_25:
        ++v19;
      }

      while (v19 != a2);
      ++v8;
    }

    while (v8 != a2);
  }

  if (v7)
  {
    v37 = 2 * v7;
    v38 = v43;
    v39 = (a4 * a4);
    v40 = a5;
    do
    {
      v41 = *v38++;
      *v40 = *v40 + *&v41;
      ++v40;
      a5[v7] = *(&v41 + 1) + a5[v7];
      *&v6 = *(&v41 + 2) + a5[v37];
      a5[v37++] = *&v6;
      ++v7;
      --v39;
    }

    while (v39);
  }

  return *&v6;
}

void sub_1AF2159F8(uint64_t a1, int a2, uint64_t a3, int a4, int a5, unsigned int a6)
{
  if (a6)
  {
    v11 = 0;
    v12 = xmmword_1AFE42AA0;
    v13 = vdupq_n_s32(0x3B808081u);
    v14 = vdupq_n_s32(0x3D6147AEu);
    v15 = vdupq_n_s32(0x3F870A3Du);
    v16 = xmmword_1AFE42AB0;
    v17 = a6;
    v18.i64[0] = 0xFF000000FFLL;
    v18.i64[1] = 0xFF000000FFLL;
    v31 = v13;
    v29 = v15;
    v30 = v14;
    v28 = vdupq_n_s32(0x414EB852u);
    v27 = vdupq_n_s32(0x3D25AEE6u);
    do
    {
      if (a5)
      {
        v19 = (a1 + (v11 * a2));
        v20 = (a3 + (v11 * a4));
        v21 = a5;
        do
        {
          v22 = vld1q_dup_f32(v20++);
          v32 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v22, v12), v18)), v13);
          v23 = vdivq_f32(vaddq_f32(v32, v14), v15);
          v23.i32[3] = 0;
          v24 = _simd_pow_f4(v23, v16);
          v18.i64[0] = 0xFF000000FFLL;
          v18.i64[1] = 0xFF000000FFLL;
          v16 = xmmword_1AFE42AB0;
          v15 = v29;
          v25 = vcgeq_f32(v27, v32);
          v25.i32[3] = 0;
          v26 = vbslq_s8(vcltzq_s32(v25), vdivq_f32(v32, v28), v24);
          v14 = v30;
          v13 = v31;
          v12 = xmmword_1AFE42AA0;
          v26.i32[3] = v32.i32[3];
          *v19++ = v26;
          --v21;
        }

        while (v21);
      }

      ++v11;
    }

    while (v11 != v17);
  }
}

uint64_t sub_1AF215B48(uint64_t result, int a2, uint64_t a3, int a4, int a5, int a6)
{
  if (a6)
  {
    v6 = 0;
    v7.i64[0] = 0x8000000080000000;
    v7.i64[1] = 0x8000000080000000;
    v8 = vdupq_n_s32(0x7FE000u);
    v9 = vdupq_n_s32(0xF800000u);
    v10.i64[0] = 0x3800000038000000;
    v10.i64[1] = 0x3800000038000000;
    do
    {
      if (a5)
      {
        v11 = (result + (v6 * a2));
        v12 = (a3 + (v6 * a4));
        v13 = a5;
        do
        {
          v14 = *v12++;
          v15 = vshll_n_u16(v14, 0xDuLL);
          *v11++ = vaddq_s32(vorrq_s8(vandq_s8(v15, v9), vorrq_s8(vandq_s8(vmovl_s16(v14), v7), vandq_s8(v15, v8))), v10);
          --v13;
        }

        while (v13);
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return result;
}

id sub_1AF21620C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 6; ++i)
  {
    v8 = objc_msgSend_pixelFormat(a1, a2, a3, a4);
    result = objc_msgSend_newTextureViewWithPixelFormat_textureType_levels_slices_(a1, v9, v8, 2, a2, 1, i, 1);
    *(a3 + 8 * i) = result;
  }

  return result;
}

uint64_t sub_1AF21627C(void *a1, void *a2, uint64_t a3, uint64_t a4, const __CFData *a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_width(a2, a2, a3, a4);
  v16 = objc_msgSend_height(a2, v13, v14, v15);
  v20 = objc_msgSend_pixelFormat(a1, v17, v18, v19);
  v21 = sub_1AF1F1AAC();
  if ((v20 & 0xFFFFFFFFFFFFFFF8) == 0xA0)
  {
    v22 = 0;
  }

  else
  {
    v22 = (v21 >> 3) * v12;
  }

  if (v8)
  {
    v23 = v8;
    do
    {
      if (v12 >> 1 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 >>= 1;
      }

      if (v16 >> 1 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 >>= 1;
      }

      if ((v20 & 0xFFFFFFFFFFFFFFF8) != 0xA0)
      {
        if (a6 && *(a6 + 4))
        {
          v22 = ((v12 + *(a6 + 4) - 1) / *(a6 + 4) * *(a6 + 1)) >> 3;
        }

        else
        {
          v22 = v12 * (v21 >> 3);
        }
      }

      --v23;
    }

    while (v23);
  }

  BytePtr = CFDataGetBytePtr(a5);
  memset(v27, 0, 24);
  v27[3] = v12;
  v27[4] = v16;
  v27[5] = 1;
  return objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(a1, v25, v27, v8, v9, BytePtr, v22, 0);
}

unint64_t sub_1AF2163AC(void *a1, void *a2, unsigned int a3, CFArrayRef theArray, uint64_t a5)
{
  Count = CFArrayGetCount(theArray);
  v14 = objc_msgSend_width(a2, v11, v12, v13);
  v18 = objc_msgSend_height(a2, v15, v16, v17);
  v22 = objc_msgSend_pixelFormat(a1, v19, v20, v21);
  result = sub_1AF1F1AAC();
  if (Count >= 1)
  {
    v24 = 0;
    v30 = result >> 3;
    v25 = v22 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v24);
      BytePtr = CFDataGetBytePtr(ValueAtIndex);
      if (v25 == 160)
      {
        v29 = 0;
      }

      else if (a5 && *(a5 + 4))
      {
        v29 = ((v14 + *(a5 + 4) - 1) / *(a5 + 4) * *(a5 + 1)) >> 3;
      }

      else
      {
        v29 = v14 * v30;
      }

      memset(v31, 0, 24);
      v31[3] = v14;
      v31[4] = v18;
      v31[5] = 1;
      result = objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(a1, v27, v31, v24, a3, BytePtr, v29, 0);
      if (v14 >> 1 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 >>= 1;
      }

      if (v18 >> 1 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 >>= 1;
      }

      ++v24;
    }

    while (Count != v24);
  }

  return result;
}

void sub_1AF21683C(void **a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = objc_msgSend_width(a2, a2, a3, a4);
  v14 = objc_msgSend_height(a2, v11, v12, v13);
  v18 = objc_msgSend_depth(a2, v15, v16, v17);
  v22 = objc_msgSend_arrayLength(a2, v19, v20, v21);
  if ((objc_msgSend_textureType(a2, v23, v24, v25) - 5) >= 2)
  {
    v29 = v22;
  }

  else
  {
    v29 = 6 * v22;
  }

  v30 = objc_msgSend_arrayLength(a4, v26, v27, v28);
  if ((objc_msgSend_textureType(a4, v31, v32, v33) - 5) >= 2)
  {
    v35 = v30;
  }

  else
  {
    v35 = 6 * v30;
  }

  if (v29 != v35 && (v36 = sub_1AF0D5194(), os_log_type_enabled(v36, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDE9B20(v36, v34, v37, v38, v39, v40, v41, v42);
    if (!v29)
    {
      return;
    }
  }

  else if (!v29)
  {
    return;
  }

  for (i = 0; i != v29; ++i)
  {
    v44 = *a1;
    memset(v47, 0, sizeof(v47));
    v46[0] = v10;
    v46[1] = v14;
    v46[2] = v18;
    memset(v45, 0, sizeof(v45));
    objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v44, v34, a2, i, a3, v47, v46, a4, i, a5, v45);
  }
}

uint64_t sub_1AF21720C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  return objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v3, a2, v6, 0, a2, a3, *(a1 + 96), *(a1 + 88) * *(a1 + 96));
}

uint64_t sub_1AF217264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  v13[0] = *(a1 + 48);
  v13[1] = v6;
  v14 = *(a1 + 80);
  v7 = a2;
  v8 = *(a1 + 96);
  v9 = *(a1 + 32);
  v10 = objc_msgSend_height(*(a1 + 40), a2, a3, a4, v13[0], v6, v14);
  return objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v9, v11, v13, 0, v7, a3, v8, *(a1 + 96) * v10);
}

uint64_t sub_1AF2172E4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = objc_msgSend_width(*(a1 + 32), a2, a3, a4);
  v11 = objc_msgSend_height(*(a1 + 32), v8, v9, v10);
  v20[0] = 0;
  v20[1] = 0;
  v21 = v6;
  v22 = v7;
  v23 = v11;
  v24 = 1;
  v13 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = objc_msgSend_height(*(a1 + 32), v14, v15, v16, 0, 0, v21, v22, v11, 1);
  return objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v13, v18, v20, 0, 0, a3, v12, *(a1 + 48) * v17);
}

uint64_t sub_1AF217370(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  v13[0] = *(a1 + 48);
  v13[1] = v6;
  v14 = *(a1 + 80);
  v7 = a2;
  v8 = *(a1 + 96);
  v9 = *(a1 + 32);
  v10 = objc_msgSend_height(*(a1 + 40), a2, a3, a4, v13[0], v6, v14);
  return objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v9, v11, v13, 0, v7, a3, v8, *(a1 + 96) * v10);
}

void sub_1AF2177B4(void **a1, void *a2, void *a3, uint64_t a4)
{
  v98 = 0uLL;
  v99 = 0;
  v7 = objc_msgSend_width(a2, a2, a3, a4);
  if (v7 != objc_msgSend_width(a3, v8, v9, v10))
  {
    v14 = sub_1AF0D5194();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9D88(v14, v11, v12, v13, v15, v16, v17, v18);
    }
  }

  v19 = objc_msgSend_height(a2, v11, v12, v13);
  if (v19 != objc_msgSend_height(a3, v20, v21, v22))
  {
    v26 = sub_1AF0D5194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9E00(v26, v23, v24, v25, v27, v28, v29, v30);
    }
  }

  v31 = objc_msgSend_depth(a2, v23, v24, v25);
  if (v31 != objc_msgSend_depth(a3, v32, v33, v34))
  {
    v38 = sub_1AF0D5194();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9E78(v38, v35, v36, v37, v39, v40, v41, v42);
    }
  }

  v92 = a1;
  v43 = objc_msgSend_textureType(a2, v35, v36, v37);
  IsCube = VFXMTLTextureTypeIsCube(v43);
  v48 = objc_msgSend_mipmapLevelCount(a2, v45, v46, v47);
  v52 = objc_msgSend_mipmapLevelCount(a3, v49, v50, v51);
  if (v48 >= v52)
  {
    v56 = v52;
  }

  else
  {
    v56 = v48;
  }

  v57 = objc_msgSend_arrayLength(a2, v53, v54, v55);
  if ((objc_msgSend_textureType(a2, v58, v59, v60) - 5) >= 2)
  {
    v64 = v57;
  }

  else
  {
    v64 = 6 * v57;
  }

  v65 = objc_msgSend_arrayLength(a3, v61, v62, v63);
  if ((objc_msgSend_textureType(a3, v66, v67, v68) - 5) >= 2)
  {
    v72 = v65;
  }

  else
  {
    v72 = 6 * v65;
  }

  if (v64 != v72)
  {
    v73 = sub_1AF0D5194();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE9B20(v73, v69, v70, v71, v74, v75, v76, v77);
    }
  }

  if (v64)
  {
    v78 = 0;
    v79 = IsCube;
    do
    {
      v80 = objc_msgSend_width(a2, v69, v70, v71);
      v84 = objc_msgSend_height(a2, v81, v82, v83);
      v88 = objc_msgSend_depth(a2, v85, v86, v87);
      if (v56)
      {
        v89 = v88;
        for (i = 0; i != v56; ++i)
        {
          v91 = *v92;
          v96 = v98;
          v97 = v99;
          v95[0] = v80;
          v95[1] = v84;
          v95[2] = v89;
          v93 = v98;
          v94 = v99;
          objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v91, v69, a2, v78, i, &v96, v95, a3, v78, i, &v93);
          v80 >>= 1;
          v84 >>= 1;
          v89 >>= v79;
        }
      }

      ++v78;
    }

    while (v78 != v64);
  }
}

void *sub_1AF2182A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_swizzle(a2, a2, a3, a4);
  v10 = objc_msgSend_width(a2, v7, v8, v9);
  v14 = v10 & 0xFFFFFFFF0000FFFFLL | (objc_msgSend_height(a2, v11, v12, v13) << 16);
  v18 = v14 & 0xFFFF0000FFFFFFFFLL | (objc_msgSend_depth(a2, v15, v16, v17) << 32);
  v22 = v18 | (objc_msgSend_arrayLength(a2, v19, v20, v21) << 48);
  v26 = objc_msgSend_pixelFormat(a2, v23, v24, v25);
  v30 = v26 & 0xFFFFFFFFFF00FFFFLL | (objc_msgSend_mipmapLevelCount(a2, v27, v28, v29) << 16);
  v34 = v30 & 0xFFFFFFFF00FFFFFFLL | (objc_msgSend_sampleCount(a2, v31, v32, v33) << 24);
  v38 = v34 & 0xFFFFFF00FFFFFFFFLL | (objc_msgSend_usage(a2, v35, v36, v37) << 32);
  v42 = v38 & 0xFFFFF0FFFFFFFFFFLL | ((objc_msgSend_textureType(a2, v39, v40, v41) & 0xF) << 40);
  LOBYTE(v18) = objc_msgSend_storageMode(a2, v43, v44, v45);
  v49 = objc_msgSend_hazardTrackingMode(a2, v46, v47, v48);
  v50 = v42 & 0xFFFF8FFFFFFFFFFFLL | ((v18 & 7) << 44);
  if (objc_msgSend_allowGPUOptimizedContents(a2, v51, v52, v53))
  {
    v57 = 0x2000000000000;
  }

  else
  {
    v57 = 0;
  }

  v58 = (objc_msgSend_cpuCacheMode(a2, v54, v55, v56) & 1) << 50;
  v62 = v50 & 0xFFFE7FFFFFFFFFFFLL | ((v49 & 3) << 47) | v57 | v58 | ((objc_msgSend_compressionType(a2, v59, v60, v61) & 1) << 51);
  v63 = sub_1AFDE323C(*(a1 + 32));
  v79 = v6;
  v80 = v22;
  v81 = v62;
  v82 = 0;
  Texture = CFXGPUDeviceCreateTexture(v63, &v79);
  v68 = objc_msgSend_label(a2, v65, v66, v67);
  objc_msgSend_setLabel_(Texture, v69, v68, v70);
  v71 = Texture;
  v75 = objc_msgSend_resourceBlitEncoder(*(a1 + 40), v72, v73, v74);
  sub_1AF21683C(v75, a2, 0, Texture, 0);
  sub_1AF213F78(v75, Texture, v76, v77);
  return Texture;
}

BOOL sub_1AF218E70(_BOOL8 result)
{
  if (result)
  {
    if (*(result + 80))
    {
      return *result || *(result + 64) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_1AF218EA4@<D0>(void *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!a1)
  {
    *(a5 + 80) = 0;
    result = 0.0;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1;
  *(a5 + 80) = 1;
  do
  {
    v10 = objc_msgSend_colorAttachments(a1, a2, a3, a4);
    v13 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v7, v12);
    v17 = objc_msgSend_texture(v13, v14, v15, v16);
    *(a5 + 8 * v7) = objc_msgSend_pixelFormat(v17, v18, v19, v20);
    if (v8)
    {
      goto LABEL_6;
    }

    v21 = objc_msgSend_colorAttachments(a1, a2, a3, a4);
    v24 = objc_msgSend_objectAtIndexedSubscript_(v21, v22, v7, v23);
    if (objc_msgSend_texture(v24, v25, v26, v27))
    {
      v28 = objc_msgSend_colorAttachments(a1, a2, a3, a4);
      v31 = objc_msgSend_objectAtIndexedSubscript_(v28, v29, v7, v30);
      v35 = objc_msgSend_texture(v31, v32, v33, v34);
      v9 = objc_msgSend_sampleCount(v35, v36, v37, v38);
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    v8 = 0;
LABEL_7:
    ++v7;
  }

  while (v7 != 8);
  v39 = objc_msgSend_depthAttachment(a1, a2, a3, a4);
  v43 = objc_msgSend_texture(v39, v40, v41, v42);
  *(a5 + 64) = objc_msgSend_pixelFormat(v43, v44, v45, v46);
  v50 = objc_msgSend_stencilAttachment(a1, v47, v48, v49);
  v54 = objc_msgSend_texture(v50, v51, v52, v53);
  *(a5 + 72) = objc_msgSend_pixelFormat(v54, v55, v56, v57);
  v61 = objc_msgSend_depthAttachment(a1, v58, v59, v60);
  v65 = objc_msgSend_texture(v61, v62, v63, v64);
  v69 = objc_msgSend_sampleCount(v65, v66, v67, v68);
  if (v69 > v9)
  {
    v9 = v69;
  }

  v73 = objc_msgSend_stencilAttachment(a1, v70, v71, v72);
  v77 = objc_msgSend_texture(v73, v74, v75, v76);
  v81 = objc_msgSend_sampleCount(v77, v78, v79, v80);
  v83 = v9;
  if (v9 <= v81)
  {
    v83 = v81;
  }

  *(a5 + 80) = v83;
  return result;
}

id sub_1AF2196E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 112);
  v4 = *(a1 + 296);
  v5 = *(a1 + 208);
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *(a1 + 288);
  v7 = *(a1 + 304);
  v8 = *(a1 + 312);
  v9 = *(a1 + 336);

  return v9;
}

void sub_1AF219758(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 208) = 0;
  }

  v3 = *(a1 + 336);
}

void sub_1AF21A580(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void sub_1AF21A5A0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_error_impl(a1, v11, OS_LOG_TYPE_ERROR, a4, &buf, 8u);
}

uint64_t sub_1AF21AC80(void *Object, const char *a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; ; i += objc_msgSend_offset(Object, v18, v19, v20))
  {
    v6 = objc_msgSend_dataType(Object, a2, a3, a4);
    if (v6 != 1)
    {
      break;
    }

    v10 = objc_msgSend_structType(Object, v7, v8, v9);
    v14 = objc_msgSend_members(v10, v11, v12, v13);
    Object = objc_msgSend_lastObject(v14, v15, v16, v17);
  }

  if (v6 == 2)
  {
    v21 = objc_msgSend_arrayType(Object, v7, v8, v9);
    v25 = objc_msgSend_arrayLength(v21, v22, v23, v24);
    v29 = objc_msgSend_elementType(v21, v26, v27, v28);
    v30 = sub_1AF1F1A9C(v29) * v25;
  }

  else
  {
    v30 = sub_1AF1F1A9C(v6);
  }

  return (v30 + i);
}

void sub_1AF21B4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AF21BA20(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AF10A1D0();
}

uint64_t sub_1AF21BD50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_setTessellationPartitionMode_(a2, a2, *(a1 + 40) & 3, a4);
  objc_msgSend_setTessellationFactorStepFunction_(a2, v6, (*(a1 + 40) >> 2) & 3, v7);
  objc_msgSend_setTessellationControlPointIndexType_(a2, v8, (*(a1 + 40) >> 4) & 3, v9);
  objc_msgSend_setTessellationFactorScaleEnabled_(a2, v10, (*(a1 + 40) >> 6) & 1, v11);
  objc_msgSend_setTessellationFactorFormat_(a2, v12, 0, v13);
  objc_msgSend_setTessellationOutputWindingOrder_(a2, v14, 1, v15);
  v19 = objc_msgSend_maxTessellationFactor(*(a1 + 32), v16, v17, v18);

  return MEMORY[0x1EEE66B58](a2, sel_setMaxTessellationFactor_, v19, v20);
}

uint64_t sub_1AF21CE48(uint64_t a1, uint64_t a2)
{

  return sub_1AFDEA208(a2);
}

void sub_1AF21CE68(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 8u);
}

void sub_1AF21CE8C(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

CFStringRef sub_1AF21CECC(unsigned int *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | curve segments: %d linear, %d quadratic, %d cubic>", v3, a1, a1[4], a1[5], a1[6]);
}

uint64_t sub_1AF21CF2C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6586B0 = result;
  return result;
}

float32x2_t *sub_1AF21CF54(const CGPath *a1)
{
  if (qword_1EB6586B8 != -1)
  {
    sub_1AFDEAD88();
  }

  v2 = sub_1AF0D160C(qword_1EB6586B0, 0x30uLL);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF21D26C;
  block[3] = &unk_1E7A7D1B0;
  block[4] = &v28;
  block[5] = &v24;
  block[6] = v2;
  CGPathApplyWithBlock(a1, block);
  v3 = *(v25 + 12);
  v2[3].i32[1] = v3;
  v2[4] = malloc_type_malloc(8 * v3, 0x100004000313F17uLL);
  v2[5] = malloc_type_malloc(2 * *(v29 + 12), 0x1000040BDFB0063uLL);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1AF21D488;
  v20[3] = &unk_1E7A7D1D8;
  v20[4] = v21;
  v20[5] = v2;
  sub_1AF21D354(a1, 1, v20);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1AF21D4F0;
  v19[3] = &unk_1E7A7D1D8;
  v19[4] = v21;
  v19[5] = v2;
  sub_1AF21D354(a1, 2, v19);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1AF21D584;
  v18[3] = &unk_1E7A7D1D8;
  v18[4] = v21;
  v18[5] = v2;
  sub_1AF21D354(a1, 3, v18);
  BoundingBox = CGPathGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  MinX = CGRectGetMinX(BoundingBox);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinY = CGRectGetMinY(v33);
  v9.f64[0] = MinX;
  v9.f64[1] = MinY;
  v2[6] = vcvt_f32_f64(v9);
  v10 = x;
  v9.f64[0] = y;
  v11 = width;
  v12 = height;
  MaxX = CGRectGetMaxX(*(&v9 - 8));
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MaxY = CGRectGetMaxY(v34);
  v14.f64[0] = MaxX;
  v14.f64[1] = MaxY;
  v2[7] = vcvt_f32_f64(v14);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  return v2;
}

void sub_1AF21D230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 144), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF21D26C(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      ++*(*(result + 48) + 16);
      *(*(*(result + 32) + 8) + 24) += 2;
    }

    v3 = 1;
  }

  else
  {
    switch(v2)
    {
      case 2:
        ++*(*(result + 48) + 20);
        *(*(*(result + 32) + 8) + 24) += 3;
        v3 = 2;
        break;
      case 3:
        ++*(*(result + 48) + 24);
        *(*(*(result + 32) + 8) + 24) += 4;
        v3 = 3;
        break;
      case 4:
        ++*(*(result + 48) + 16);
        v3 = 2;
        v4 = 32;
        goto LABEL_13;
      default:
        return result;
    }
  }

  v4 = 40;
LABEL_13:
  *(*(*(result + v4) + 8) + 24) += v3;
  return result;
}

void sub_1AF21D354(const CGPath *a1, int a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v9 = -1;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = -1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1AF21D6F4;
  v3[3] = &unk_1E7A7D200;
  v3[6] = v8;
  v3[7] = v7;
  v3[8] = v5;
  v4 = a2;
  v3[4] = a3;
  v3[5] = v10;
  CGPathApplyWithBlock(a1, v3);
  _Block_object_dispose(v5, 8);
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v10, 8);
}

void sub_1AF21D44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Block_object_dispose((v11 - 48), 8);
  _Unwind_Resume(a1);
}

double sub_1AF21D488(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v3 + 8 * *a2) = *a3;
  result = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 2;
  return result;
}

double sub_1AF21D4F0(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  result = *(a3 + 16);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 3;
  return result;
}

double sub_1AF21D584(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = *(*(a1 + 40) + 32);
  v4 = *(*(a1 + 40) + 40);
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24)) = *a2;
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 2) = a2[1];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 4) = a2[2];
  *(v4 + 2 * *(*(*(a1 + 32) + 8) + 24) + 6) = a2[3];
  *(v3 + 8 * *a2) = *a3;
  *(*(*(a1 + 40) + 32) + 8 * a2[1]) = *(a3 + 8);
  *(*(*(a1 + 40) + 32) + 8 * a2[2]) = *(a3 + 16);
  result = *(a3 + 24);
  *(*(*(a1 + 40) + 32) + 8 * a2[3]) = result;
  *(*(*(a1 + 32) + 8) + 24) += 4;
  return result;
}

uint64_t sub_1AF21D658(uint64_t a1, _WORD *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 20) + 2 * *(a1 + 16) + 4 * *(a1 + 24);
  }

  return *(a1 + 40);
}

double sub_1AF21D67C(uint64_t a1, void *a2, double *a3)
{
  *a2 = *(a1 + 48);
  result = *(a1 + 56);
  *a3 = result;
  return result;
}

uint64_t sub_1AF21D690(uint64_t a1)
{
  v2 = CFDataCreate(*MEMORY[0x1E695E480], *(a1 + 32), 8 * *(a1 + 28));
  v3 = sub_1AF1ADBE4(v2, 0, *(a1 + 28), 2, 1);
  CFRelease(v2);
  return v3;
}

uint64_t sub_1AF21D6F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = result;
  v33 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 > 1)
  {
    if (v7 == 2)
    {
      v15 = *(a2 + 8);
      v16 = vcvt_f32_f64(v15[1]);
      if (*(result + 72) == 2)
      {
        v17 = vcvt_f32_f64(*v15);
        v29 = *(*(*(result + 48) + 8) + 24);
        v30 = v29 + 1;
        v31 = v29 + 2;
        v18 = *(result + 32);
        v25 = *(*(v6[5] + 8) + 24);
        v26 = v17;
        v27 = v16;
        result = (*(v18 + 16))(v18, &v29, &v25);
      }

      *(*(v6[5] + 8) + 24) = v16;
      v13 = *(v6[6] + 8);
      v14 = *(v13 + 24) + 2;
      goto LABEL_20;
    }

    if (v7 == 3)
    {
      v19 = *(a2 + 8);
      v20 = vcvt_f32_f64(v19[2]);
      if (*(result + 72) == 3)
      {
        v21 = vcvt_f32_f64(v19[1]);
        v22 = vcvt_f32_f64(*v19);
        v29 = *(*(*(result + 48) + 8) + 24);
        v30 = v29 + 1;
        v31 = v29 + 2;
        v32 = v29 + 3;
        v23 = *(result + 32);
        v25 = *(*(v6[5] + 8) + 24);
        v26 = v22;
        v27 = v21;
        v28 = v20;
        result = (*(v23 + 16))(v23, &v29, &v25, a4, a5, a6);
      }

      *(*(v6[5] + 8) + 24) = v20;
      v13 = *(v6[6] + 8);
      v14 = *(v13 + 24) + 3;
      goto LABEL_20;
    }

    if (v7 != 4)
    {
      return result;
    }

    if (*(result + 72) == 1)
    {
      v8 = *(result + 56);
      v29 = *(*(*(result + 48) + 8) + 24);
      v30 = *(*(*(result + 64) + 8) + 24);
      v9 = *(result + 32);
      v10 = *(*(v8 + 8) + 24);
      v25 = *(*(v6[5] + 8) + 24);
      v26 = v10;
      result = (*(v9 + 16))(v9, &v29);
    }

    *(*(v6[5] + 8) + 24) = *(*(v6[7] + 8) + 24);
LABEL_13:
    v13 = *(v6[6] + 8);
    v14 = *(v13 + 24) + 1;
LABEL_20:
    *(v13 + 24) = v14;
    return result;
  }

  if (!v7)
  {
    v24 = vcvt_f32_f64(**(a2 + 8));
    *(*(*(result + 40) + 8) + 24) = v24;
    ++*(*(*(result + 48) + 8) + 24);
    *(*(*(result + 56) + 8) + 24) = v24;
    *(*(*(result + 64) + 8) + 24) = *(*(*(result + 48) + 8) + 24);
    return result;
  }

  if (v7 == 1)
  {
    v11 = vcvt_f32_f64(**(a2 + 8));
    if (*(result + 72) == 1)
    {
      v29 = *(*(*(result + 48) + 8) + 24);
      v30 = v29 + 1;
      v12 = *(result + 32);
      v25 = *(*(v6[5] + 8) + 24);
      v26 = v11;
      result = (*(v12 + 16))(v12, &v29);
    }

    *(*(v6[5] + 8) + 24) = v11;
    goto LABEL_13;
  }

  return result;
}

CFStringRef sub_1AF21D9E4(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | '%@'>", v3, a1, a1[2]);
}

uint64_t sub_1AF21DA3C()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6586C0 = result;
  return result;
}

uint64_t sub_1AF21DA64(uint64_t a1)
{
  if (qword_1EB6586C8 != -1)
  {
    sub_1AFDEAD9C();
  }

  v2 = sub_1AF0D160C(qword_1EB6586C0, 0x28uLL);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  sub_1AF21DADC(v2, v5);
  return v2;
}

void sub_1AF21DADC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = CGPathRetain(*(a2 + 24));
  v4 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v4;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  sub_1AF221FE4(a1, v5);
  sub_1AF222720(a1);
}

void sub_1AF21DB48(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      free(v2);
    }

    if (*(a1 + 48))
    {
      v3 = 0;
      do
      {
        v4 = *(a1 + 40) + 32 * v3;
        if (*(v4 + 8))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            free(*(*v4 + v5));
            ++v6;
            v4 = *(a1 + 40) + 32 * v3;
            v5 += 40;
          }

          while (v6 < *(v4 + 8));
        }

        free(*v4);
        free(*(*(a1 + 40) + 32 * v3++ + 16));
      }

      while (v3 < *(a1 + 48));
    }

    free(*(a1 + 40));
    v7 = *(a1 + 16);

    CGPathRelease(v7);
  }
}

void sub_1AF21DC14(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(a1 + 1);
      if (*(v4 + v2))
      {
        free(*(v4 + v2 + 8));
      }

      v5 = v4 + v2;
      *(v5 + 8) = 0;
      *v5 = 0;
      ++v3;
      v6 = *a1;
      v2 += 16;
    }

    while (v3 < v6);
    if (v6)
    {
      free(*(a1 + 1));
    }
  }

  *(a1 + 1) = 0;
  *a1 = 0;
}

double sub_1AF21DC98(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a5 - a3;
  v7 = a6 - a4;
  v8 = a1 - a3;
  v9 = a2 - a4;
  v10 = hypot(a5 - a3, a6 - a4);
  v11 = hypot(v8, v9);
  if (v10 == 0.0)
  {
    return 0.0;
  }

  v12 = v11;
  if (v12 == 0.0)
  {
    return 0.0;
  }

  v13 = (v9 * v7 + v6 * v8) / (v10 * v12);
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  if (v13 < -1.0)
  {
    v13 = -1.0;
  }

  *&result = acosf(v13);
  return result;
}

__n128 sub_1AF21DD5C(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 88 * v5, 0x1020040662E9E32uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[88 * v4];
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 1) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(v7 + 10) = *(a2 + 80);
  *(v7 + 3) = v10;
  *(v7 + 4) = v11;
  *(v7 + 2) = result;
  return result;
}

void sub_1AF21DDF4(unsigned int a1, void ***a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = *v4++;
      free(v5[1]);
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

void *sub_1AF21DE58(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    result = malloc_type_realloc(*(a1 + 1), 8 * v5, 0x2004093837F09uLL);
    *(a1 + 1) = result;
    v4 = *a1;
  }

  else
  {
    result = *(a1 + 1);
  }

  *a1 = v4 + 1;
  result[v4] = a2;
  return result;
}

void sub_1AF21DEC8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  *(a4 + 56) = 0u;
  *(a4 + 72) = 0u;
  *a4 = a5;
  *(a4 + 8) = a6;
  *(a4 + 16) = a1;
  *(a4 + 24) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 52) = -1;
  v16 = a5 - a7;
  v17 = a6 - a8;
  v18 = hypot(a5 - a7, a6 - a8);
  v19 = v18;
  v20 = v16 / v19;
  v36 = a9;
  v37 = a10;
  v21 = a10 - a6;
  v22 = v17 / v19;
  v23 = hypot(a9 - a5, v21);
  v24 = v23;
  v25 = (a9 - a5) / v24;
  v26 = v21 / v24;
  v27 = v20 + v25;
  v28 = v22 + v26;
  v29 = hypotf(v27, v28);
  if (v29 == 0.0)
  {
    v30 = *MEMORY[0x1E695EFF8];
    v31 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v30 = (v27 / v29);
    v31 = (v28 / v29);
  }

  v32 = hypot(v30, v31);
  if (v32 >= 0.00001)
  {
    *(a4 + 84) = v36 * a6 - a5 * v37 - v36 * a8 + a7 * v37 + a5 * a8 - a7 * a6 > 0.0;
    *(a4 + 64) = -v31;
    *(a4 + 72) = v30;
    v33 = sub_1AF21DC98(a7, a8, a5, a6, v36, v37);
    v34 = sin(*&v33 * 0.5);
    if (fabsf(v34) >= 0.00001)
    {
      *(a4 + 80) = 1.0 / v34;
    }
  }

  else
  {
    *(a4 + 64) = v25;
    *(a4 + 72) = v26;
  }
}

float64_t sub_1AF21E08C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  v5 = *(a2 + 72);
  v6 = *(a1 + 72);
  v7 = v3.f64[0] * v5 - v6 * v4;
  if (v7 == 0.0 || (v8 = *a1, v9 = *(a1 + 8) - *(a2 + 8), v10 = *a1 - *a2, v11 = (v4 * v9 - v5 * v10) / v7, v11 < 0.0) || (v12 = (v10 * -v6 + v3.f64[0] * v9) / v7, v12 < 0.0))
  {
    v8.f64[0] = -0.0078125;
    *a3 = xmmword_1AFE42B38;
    *(a3 + 16) = unk_1AFE42B48;
    *(a3 + 32) = 0;
  }

  else
  {
    v13 = v11 / *(a1 + 80);
    v14 = v12 / *(a2 + 80);
    *(a3 + 8) = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(v8, v3), v11), v8, (1.0 - v11));
    if (v13 <= v14)
    {
      *v8.f64 = v14;
    }

    else
    {
      *v8.f64 = v13;
    }

    *(a3 + 4) = LODWORD(v8.f64[0]);
    *a3 = 1;
    *(a3 + 24) = a1;
    *(a3 + 32) = a2;
  }

  return v8.f64[0];
}

void sub_1AF21E160(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *a2;
  v11 = *(a2 + 8);
  v13 = *a3;
  v12 = *(a3 + 8);
  v14 = *a3 - *a2;
  v15 = hypot(v14, v12 - v11);
  v16 = v15;
  v17 = v14 / v16;
  v18 = (v12 - v11) / v16;
  v19 = v9 - v10;
  v20 = v8 - v11;
  v21 = *(a2 + 80);
  v22 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v25 = *(a2 + 64) * v21 - v23 * v22;
  v26 = *(a2 + 72) * v21 - v24 * v22;
  v27 = v17;
  v28 = v18;
  v29 = fabsf(v27);
  if (v29 <= 0.00001)
  {
    if (fabsf(v28) <= 0.00001)
    {
      goto LABEL_14;
    }

    v33 = (v27 * v26) / v28;
    if (vabds_f32(v25, v33) <= 0.00001)
    {
      goto LABEL_14;
    }

    v31 = (v19 - ((v20 * v27) / v28)) / (v25 - v33);
    v32 = (v20 - (v26 * v31)) / v28;
  }

  else
  {
    v30 = (v28 * v25) / v27;
    if (vabds_f32(v26, v30) <= 0.00001)
    {
      goto LABEL_14;
    }

    v31 = (v20 - ((v19 * v28) / v27)) / (v26 - v30);
    v32 = (v19 - (v25 * v31)) / v27;
  }

  if (v31 < 0.0 || v32 < 0.0)
  {
    goto LABEL_14;
  }

  v34 = *(a3 + 80);
  if (v29 > 0.00001)
  {
    v35 = -v27;
    v36 = *(a3 + 64) * v34 - v23 * v22;
    v37 = v9 - v13;
    goto LABEL_13;
  }

  if (fabsf(v28) <= 0.00001)
  {
LABEL_14:
    *a4 = xmmword_1AFE42B38;
    *(a4 + 16) = unk_1AFE42B48;
    *(a4 + 32) = 0;
    return;
  }

  v35 = -v28;
  v36 = *(a3 + 72) * v34 - v24 * v22;
  v37 = v8 - v12;
LABEL_13:
  v38 = v37;
  v39 = v36;
  if (((v38 - (v39 * v31)) / v35) < 0.0)
  {
    goto LABEL_14;
  }

  *a4 = 2;
  *(a4 + 4) = v31;
  *(a4 + 8) = v9 + v23 * v22 * v31;
  *(a4 + 16) = v8 + v24 * v22 * v31;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
}

double sub_1AF21E370(unsigned int a1, uint64_t a2)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = (a2 + 8);
  LODWORD(result) = 0;
  v4 = 1;
  do
  {
    if (v4 == a1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v4;
    }

    result = *(v2 - 1) * *(a2 + 24 * v5 + 8) - *v2 * *(a2 + 24 * v5) + *&result;
    *&result = result;
    v2 += 3;
    ++v4;
  }

  while (v4 - a1 != 1);
  *&result = *&result * 0.5;
  return result;
}

void sub_1AF21E3DC(int *a1, unsigned int a2, uint64_t a3)
{
  if (a2 >= 3 && fabsf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(sub_1AF21E370(a2, a3)))) >= 0.0001)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
    *v6 = 0x400000000;
    v7 = malloc_type_malloc(0x160uLL, 0x1020040662E9E32uLL);
    v8 = 0;
    *(v6 + 1) = v7;
    v9 = (a3 + 16);
    do
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v11 = v8 + 1;
      if (a2 - 1 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 + 1;
      }

      v10 = (a3 + 24 * ((a2 - 1 + v8) % a2));
      sub_1AF21DEC8(*v9, v6, v8, &v15, *(v9 - 2), *(v9 - 1), *v10, v10[1], *(a3 + 24 * v12), *(a3 + 24 * v12 + 8));
      v13[2] = v17;
      v13[3] = v18;
      v13[4] = v19;
      v14 = v20;
      v13[0] = v15;
      v13[1] = v16;
      sub_1AF21DD5C(v6, v13);
      v9 += 3;
      v8 = v11;
    }

    while (a2 != v11);

    sub_1AF21DE58(a1, v6);
  }
}

void sub_1AF21E578(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  *(a3 + 48) = 0;
  *(a3 + 52) = a4;
  v6 = malloc_type_malloc(0xE0uLL, 0x10A0040E17462F8uLL);
  *(a3 + 16) = 0x400000000;
  *(a3 + 24) = v6;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  v7 = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
  *a3 = 0x400000000;
  *(a3 + 8) = v7;
  a1 = a1;
  if (a1)
  {
    v9 = (a2 + 8);
    do
    {
      sub_1AF21E3DC(a3, *(v9 - 1), *v9);
      v9 += 2;
      --a1;
    }

    while (a1);
  }
}

void sub_1AF21E614(uint64_t a1)
{
  sub_1AF21E65C(*(a1 + 16), *(a1 + 24));
  sub_1AF21DDF4(*a1, *(a1 + 8));

  sub_1AF21DC14((a1 + 32));
}

void sub_1AF21E65C(unsigned int a1, _OWORD *a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    do
    {
      v5 = v4[1];
      v6[0] = *v4;
      v6[1] = v5;
      v6[2] = v4[2];
      v7 = *(v4 + 6);
      sub_1AF21E614(v6);
      v4 = (v4 + 56);
      --v3;
    }

    while (v3);
  }

  free(a2);
}

__n128 sub_1AF21E6D8(int *a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 == a1[1])
  {
    v5 = 2 * v4;
    a1[1] = v5;
    v6 = malloc_type_realloc(*(a1 + 1), 56 * v5, 0x10A0040E17462F8uLL);
    *(a1 + 1) = v6;
    v4 = *a1;
  }

  else
  {
    v6 = *(a1 + 1);
  }

  *a1 = v4 + 1;
  v7 = &v6[56 * v4];
  result = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  *(v7 + 6) = *(a2 + 48);
  *(v7 + 1) = v9;
  *(v7 + 2) = v10;
  *v7 = result;
  return result;
}

float sub_1AF21E768(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  sub_1AF21E08C(a2, *(*(a2 + 40) + 8) + 88 * ((*(a2 + 48) + 1) % **(a2 + 40)), &v25);
  v8 = v26;
  *a3 = v25;
  *(a3 + 16) = v8;
  *(a3 + 32) = v27;
  if (*a3)
  {
    v9 = *(a3 + 4);
  }

  else
  {
    v9 = 3.4028e38;
  }

  if (*(a2 + 84) == 1)
  {
    v10 = *a1;
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(*(a1 + 1) + 8 * i);
        v13 = *v12;
        if (v13)
        {
          v14 = 0;
          v15 = 1;
          do
          {
            v16 = *(v12 + 1);
            v17 = v16 + v14;
            if (v15 == v13)
            {
              v18 = 0;
            }

            else
            {
              v18 = v15;
            }

            v19 = v16 + 88 * v18;
            if (v17 != a2 && v19 != a2)
            {
              v27 = 0;
              v25 = 0u;
              v26 = 0u;
              sub_1AF21E160(a2, v17, v19, &v25);
              if (v25)
              {
                v21 = *(&v25 + 1);
                if (v9 + -0.00001 > *(&v25 + 1))
                {
                  *a3 = 0;
                  v22 = v26;
                  *a4 = v25;
                  *(a4 + 16) = v22;
                  *(a4 + 32) = v27;
                  v9 = v21;
                }
              }

              v13 = *v12;
            }

            v14 += 88;
          }

          while (v15++ < v13);
          v10 = *a1;
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1AF21E8F8(unsigned int *a1, int a2, float a3, float a4)
{
  LODWORD(v4) = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(a1 + 1);
      v13 = v12 + v8;
      v14 = vmlaq_n_f64(*(v12 + v8), *(v12 + v8 + 64), (*(v12 + v8 + 80) * a3));
      v15 = *(v12 + v8 + 16);
      if (v15)
      {
        *(v15 + 48) = v14;
        *(v15 + 64) = a4;
      }

      *(v13 + 24) = v14;
      *(v13 + 52) = a2;
      v25 = v14;
      if (!v10)
      {
        break;
      }

      v16 = v10 - 1;
      v17 = v14.f64[1];
      v18 = hypot(v11[3 * v16] - v14.f64[0], v11[3 * v16 + 1] - v14.f64[1]);
      if (v18 >= 1.0)
      {
        if (v9 != v4 - 1 || (v19 = hypot(*v11 - v25.f64[0], v11[1] - v17), v19 >= 1.0))
        {
          v21 = v10 + 1;
          v11 = malloc_type_realloc(v11, 24 * (v10 + 1), 0x10200403ED2C137uLL);
          v22 = &v11[3 * v10];
          *v22 = v25.f64[0];
          v22[1] = v17;
          v20 = v22 + 2;
          goto LABEL_12;
        }

        v16 = 0;
      }

LABEL_13:
      *(v12 + v8 + 56) = v16;
      ++v9;
      v4 = *a1;
      v8 += 88;
      if (v9 >= v4)
      {
        return v10;
      }
    }

    v11 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
    *v11 = v25;
    v20 = v11 + 2;
    v21 = 1;
LABEL_12:
    *v20 = v15;
    v16 = v10;
    v10 = v21;
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1AF21EAC0(unsigned int *a1, float a2)
{
  if (!*a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    v7 = sub_1AF21E8F8(*(*(a1 + 1) + 8 * v4), v4, a2, *(a1 + 13) + a2);
    v9 = v7;
    v10 = v8;
    if (v7 < 3)
    {
      if (v7)
      {
        free(v8);
      }
    }

    else
    {
      v5 = malloc_type_realloc(v5, 16 * (v6 + 1), 0x1020040D5A9D86FuLL);
      v11 = &v5[16 * v6];
      *v11 = v9;
      v11[1] = v10;
      ++v6;
    }

    ++v4;
  }

  while (v4 < *a1);
  return v6;
}

uint64_t sub_1AF21EBAC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6, unsigned int *a7, unsigned int *a8)
{
  v9 = *(a4 + 24);
  v8 = *(a4 + 32);
  *a5 = *(v9 + 52);
  v10 = *(v8 + 52);
  *a6 = v10;
  v11 = *(v9 + 52);
  if (v11 >= a2 || v10 >= a2)
  {
    v13 = sub_1AF0D5194();
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDEADB0(v13);
      return 0;
    }
  }

  else
  {
    v17 = (a3 + 16 * v11);
    v18 = (a3 + 16 * v10);
    v19 = *v17;
    v20 = *v18;
    v21 = *(v9 + 56);
    v22 = *(v8 + 56);
    v23 = (v22 + 1) % v20;
    *a8 = 0;
    *a7 = 0;
    v24 = (v21 + 1) % v19;
    *(a8 + 1) = 0;
    *(a7 + 1) = 0;
    if (v11 == v10)
    {
      result = 3;
      if (v21 != v22 && v21 != v23)
      {
        v25 = v21;
        v26 = (*(v17 + 1) + 24 * v21);
        v27 = *v26;
        v28 = v26[1];
        *a7 = 1;
        v29 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
        *(a7 + 1) = v29;
        *v29 = v27;
        v29[1] = v28;
        v29[2] = 0;
        v30 = *a7;
        do
        {
          v31 = (*(v17 + 1) + 24 * v23);
          v32 = v31[2];
          v33 = *v31;
          v34 = v31[1];
          v29 = malloc_type_realloc(v29, 24 * (v30 + 1), 0x10200403ED2C137uLL);
          *(a7 + 1) = v29;
          v35 = *a7;
          v36 = &v29[3 * *a7];
          *v36 = v33;
          v36[1] = v34;
          v36[2] = v32;
          v30 = v35 + 1;
          *a7 = v30;
          LODWORD(v23) = (v23 + 1) % v19;
        }

        while (v23 != v25);
        v37 = (*(v17 + 1) + 24 * v25);
        v38 = *v37;
        v39 = v37[1];
        *a8 = 1;
        v40 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
        *(a8 + 1) = v40;
        *v40 = v38;
        v40[1] = v39;
        v40[2] = 0;
        v41 = *a8;
        while (v24 != v22)
        {
          v42 = (*(v17 + 1) + 24 * v24);
          v43 = v42[2];
          v44 = *v42;
          v45 = v42[1];
          v40 = malloc_type_realloc(v40, 24 * (v41 + 1), 0x10200403ED2C137uLL);
          *(a8 + 1) = v40;
          v46 = *a8;
          v47 = &v40[3 * *a8];
          *v47 = v44;
          v47[1] = v45;
          v47[2] = v43;
          v41 = v46 + 1;
          *a8 = v41;
          if (v24 + 1 == v19)
          {
            v24 = 0;
          }

          else
          {
            ++v24;
          }
        }

        v83 = (*(v17 + 1) + 24 * v22);
        v84 = *v83;
        v85 = v83[1];
        v86 = malloc_type_realloc(v40, 24 * (v41 + 1), 0x10200403ED2C137uLL);
        *(a8 + 1) = v86;
        v87 = *a8;
        v88 = &v86[24 * *a8];
        *v88 = v84;
        *(v88 + 1) = v85;
        *(v88 + 2) = 0;
        *a8 = v87 + 1;
        if (*v17)
        {
          free(*(v17 + 1));
        }

        *(v17 + 1) = 0;
        *v17 = 0;
        return 1;
      }
    }

    else
    {
      v89 = v20;
      v90 = v21;
      v91 = a3 + 16 * v11;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      do
      {
        v51 = (*(v18 + 1) + 24 * v50);
        v52 = v51[2];
        v53 = *v51;
        v54 = v51[1];
        v49 = malloc_type_realloc(v49, 24 * (v48 + 1), 0x10200403ED2C137uLL);
        *(a7 + 1) = v49;
        v55 = *a7;
        v56 = &v49[24 * *a7];
        *v56 = v53;
        *(v56 + 1) = v54;
        *(v56 + 2) = v52;
        v48 = v55 + 1;
        *a7 = v55 + 1;
        ++v50;
      }

      while (v50 <= v22);
      v57 = (*(v91 + 8) + 24 * v90);
      v58 = *v57;
      v59 = v57[1];
      v60 = malloc_type_realloc(v49, 24 * (v55 + 2), 0x10200403ED2C137uLL);
      *(a7 + 1) = v60;
      v61 = *a7;
      v62 = &v60[24 * *a7];
      *v62 = v58;
      *(v62 + 1) = v59;
      *(v62 + 2) = 0;
      v63 = v61 + 1;
      *a7 = v63;
      while (v24 != v90)
      {
        v64 = (*(v91 + 8) + 24 * v24);
        v65 = v64[2];
        v66 = *v64;
        v67 = v64[1];
        v60 = malloc_type_realloc(v60, 24 * (v63 + 1), 0x10200403ED2C137uLL);
        *(a7 + 1) = v60;
        v68 = *a7;
        v69 = &v60[24 * *a7];
        *v69 = v66;
        *(v69 + 1) = v67;
        *(v69 + 2) = v65;
        v63 = v68 + 1;
        *a7 = v63;
        if (v24 + 1 == v19)
        {
          v24 = 0;
        }

        else
        {
          ++v24;
        }
      }

      v70 = (*(v91 + 8) + 24 * v90);
      v71 = *v70;
      v72 = v70[1];
      v73 = malloc_type_realloc(v60, 24 * (v63 + 1), 0x10200403ED2C137uLL);
      *(a7 + 1) = v73;
      v74 = *a7;
      v75 = &v73[24 * *a7];
      *v75 = v71;
      *(v75 + 1) = v72;
      *(v75 + 2) = 0;
      v76 = v74 + 1;
      *a7 = v76;
      if (v23)
      {
        do
        {
          v77 = (*(v18 + 1) + 24 * v23);
          v78 = v77[2];
          v79 = *v77;
          v80 = v77[1];
          v73 = malloc_type_realloc(v73, 24 * (v76 + 1), 0x10200403ED2C137uLL);
          *(a7 + 1) = v73;
          v81 = *a7;
          v82 = &v73[24 * *a7];
          *v82 = v79;
          *(v82 + 1) = v80;
          *(v82 + 2) = v78;
          v76 = v81 + 1;
          *a7 = v76;
          ++v23;
        }

        while (v23 < v89);
      }

      if (*v91)
      {
        free(*(v91 + 8));
      }

      *(v91 + 8) = 0;
      *v91 = 0;
      if (*v18)
      {
        free(*(v18 + 1));
      }

      *(v18 + 1) = 0;
      *v18 = 0;
      return 2;
    }
  }

  return result;
}

void sub_1AF21EFF8(unsigned int *a1, float a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      v11 = *(*(a1 + 1) + 8 * v5);
      if (*v11)
      {
        v45 = v5;
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = *(v11 + 1);
          v48 = 0;
          v46 = 0u;
          v47 = 0u;
          v59 = 0;
          v57 = 0u;
          v58 = 0u;
          v15 = sub_1AF21E768(a1, v14 + v12, &v46, &v57);
          if (v10 + -0.00001 > v15)
          {
            if (v6)
            {
              free(v6);
            }

            if (v7)
            {
              free(v7);
              v9 = 0;
              v8 = 0;
              v7 = 0;
            }

            else
            {
              v9 = 0;
              v8 = 0;
            }

            v6 = 0;
            v10 = v15;
          }

          if (vabds_f32(v15, v10) < 0.00001)
          {
            if (v46)
            {
              v6 = malloc_type_realloc(v6, 40 * (v8 + 1), 0x1020040BD065CB0uLL);
              v16 = &v6[40 * v8];
              v17 = v47;
              *v16 = v46;
              *(v16 + 1) = v17;
              *(v16 + 4) = v48;
              ++v8;
            }

            if (v57)
            {
              v7 = malloc_type_realloc(v7, 40 * (v9 + 1), 0x1020040BD065CB0uLL);
              v18 = v7 + 40 * v9;
              v19 = v58;
              *v18 = v57;
              *(v18 + 1) = v19;
              *(v18 + 4) = v59;
              ++v9;
            }
          }

          ++v13;
          v12 += 88;
        }

        while (v13 < *v11);
        v4 = *a1;
        v5 = v45;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v10 = 3.4028e38;
  }

  if (fabsf(v10) >= 0.00001)
  {
    *(a1 + 12) = v10;
    v56 = 0;
    v54[1] = 0;
    v55 = 0uLL;
    v54[0] = 0;
    v53 = 0uLL;
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0;
    if (v10 <= a2)
    {
      v22 = sub_1AF21EAC0(a1, v10);
      v21 = v22;
      v24 = v23;
      *&v55 = v22;
      *(&v55 + 1) = v23;
      if (!v6 || v7)
      {
        if (!v22)
        {
          goto LABEL_50;
        }

        if (!v7)
        {
          v32 = sub_1AF0D5194();
          v22 = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
          if (v22)
          {
            sub_1AFDEADF4(v32);
          }
        }

        if (*(*(v7 + 3) + 52) < v21 && *(*(v7 + 4) + 52) < v21)
        {
          v33 = *v7;
          v34 = v7[1];
          v48 = *(v7 + 4);
          v46 = v33;
          v47 = v34;
          v35 = sub_1AF21EBAC(v22, v21, v24, &v46, &v56 + 1, &v56, &v51, &v49);
          if (v35 == 2 || v35 == 1)
          {
            if (v51)
            {
              free(v52);
            }

            v52 = 0;
            LODWORD(v51) = 0;
            if (v49)
            {
              free(v50);
            }

            v50 = 0;
            LODWORD(v49) = 0;
            v31 = &v55;
            goto LABEL_36;
          }
        }

LABEL_28:
        v25 = *(a1 + 12);
        v26 = v25 + *(a1 + 13);
        v27 = a2 - v25;
        v28.n128_u64[1] = *(&v55 + 1);
        v53 = v55;
        v28.n128_f64[0] = v27;
        if (v27 > 0.00001)
        {
          if (v53)
          {
            sub_1AF21E578(v53, *(&v53 + 1), &v46, v26);
            sub_1AF21E6D8(a1 + 4, &v46);
          }

          if (a1[4])
          {
            v29 = 0;
            v30 = 0;
            do
            {
              sub_1AF21EFF8(*(a1 + 3) + v29, v27, v28);
              ++v30;
              v29 += 56;
            }

            while (v30 < a1[4]);
          }

          goto LABEL_50;
        }

        sub_1AF21DC14(&v53);
        v31 = v54;
LABEL_36:
        sub_1AF21DC14(v31);
        goto LABEL_50;
      }
    }

    else
    {
      *(a1 + 12) = a2;
      *&v55 = sub_1AF21EAC0(a1, a2);
      *(&v55 + 1) = v20;
      v21 = v55;
    }

    if (!v21)
    {
      goto LABEL_50;
    }

    goto LABEL_28;
  }

LABEL_50:
  if (v6)
  {
    free(v6);
  }

  if (v7)
  {
    free(v7);
  }

  if (byte_1EB6586D0 == 1 && *a1)
  {
    v36 = 0;
    v37 = qword_1EB6586D8;
    do
    {
      v38 = *(*(a1 + 1) + 8 * v36);
      v37 = malloc_type_realloc(v37, 32 * (*v38 + dword_1EB6586E0), 0x1000040E0EAB150uLL);
      qword_1EB6586D8 = v37;
      v39 = *v38;
      if (v39)
      {
        v40 = dword_1EB6586E0;
        v41 = *(v38 + 1);
        do
        {
          v42 = v40++;
          v43 = *(v41 + 24);
          v44 = &v37[32 * v42];
          *v44 = *v41;
          *(v44 + 1) = v43;
          v41 = (v41 + 88);
          --v39;
        }

        while (v39);
        dword_1EB6586E0 = v40;
      }

      ++v36;
    }

    while (v36 < *a1);
  }
}