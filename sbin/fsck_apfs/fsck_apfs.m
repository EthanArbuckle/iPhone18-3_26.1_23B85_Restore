uint64_t sub_100000860(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 4u)
  {
    if (a1 > 6u)
    {
      if (a1 == 7)
      {
        return ccsha3_384_di();
      }

      if (a1 == 8)
      {
        return ccsha3_512_di();
      }

      return result;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return ccsha3_256_di();
      }

      return result;
    }

    return ccsha512_256_di();
  }

  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      return ccsha384_di();
    }

    if (a1 == 4)
    {
      return ccsha512_di();
    }

    return result;
  }

  if (a1 == 1)
  {
    return ccsha256_di();
  }

  if (a1 == 2)
  {
    return ccsha512_256_di();
  }

  return result;
}

uint64_t sub_100000934(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = a2;
  if (a2 && a2 < a3)
  {
    v22 = &v22;
    v11 = 2 * *a1;
    __chkstk_darwin(a1);
    bzero(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    v12 = *(a1 + 8) + *(a1 + 16) + 19;
    __chkstk_darwin(v13);
    v16 = &v22 - v15;
    if (v17 >= 8)
    {
      memset(&v22 - v15, 170, v14);
    }

    ccdigest_init();
    v18 = 2 * (a2 & 0x7FFFFFFF);
    if (v18 > v7)
    {
      goto LABEL_18;
    }

    do
    {
      ccdigest_parallel();
      ccdigest_update();
      v7 -= v18;
      a4 += v18;
    }

    while (v7 >= v18);
    if (v7)
    {
LABEL_18:
      do
      {
        if (v7 >= v10)
        {
          v19 = v10;
        }

        else
        {
          v19 = v7;
        }

        ccdigest();
        ccdigest_update();
        a4 += v19;
        v7 -= v19;
      }

      while (v7);
    }

    (*(a1 + 56))(a1, v16, a5);
    v20 = *(a1 + 8) + *(a1 + 16);
    return cc_clear();
  }

  else
  {

    return ccdigest();
  }
}

char *sub_100000B78()
{
  byte_10007CEF0 = 1;
  byte_10007CEF1 = 0;
  if (!sub_100039748(&unk_10007CEF8, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 25, 0, 0, sub_100030CBC))
  {
    sub_10003B84C(&unk_10007CEF8, 0, 64);
  }

  result = sub_10001C108(&unk_10007CEF8, "clone mapping", sub_100000C60);
  if (result)
  {
    sub_100045744("failed to register the clone mapping tree in the fsck memory storage\n", v1, v2, v3, v4, v5, v6, v7, v8);

    return sub_100049C40(0x581, 12);
  }

  return result;
}

uint64_t sub_100000C60()
{
  if (qword_10007CF30)
  {
    result = sub_10003B928(&unk_10007CEF8, 0);
  }

  byte_10007CEF0 = 0;
  return result;
}

uint64_t sub_100000C9C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v61[0] = 0xAAAAAAAAAAAAAAAALL;
  v61[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(v60, 170, 25);
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  v3 = *(a2 + 40);
  if ((*(v3 + 48) & 4) == 0 || *(v3 + 1112))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v58 = 25;
  v59 = 16;
  v7 = sub_100039CDC(dword_10007CEF8, 0, v61, &v59, v60, &v58);
  if (!v7)
  {
    while (1)
    {
      v15 = v60[3];
      if ((v60[3] & 3) == 1)
      {
        break;
      }

      if ((v60[3] & 2) != 0)
      {
        v29 = v61[0];
        v66[0] = v61[0];
        v66[1] = 0;
        memset(v57, 170, 25);
        v64 = 25;
        v65 = 16;
        if (sub_1000397B8(dword_10007CEF8, 0, 1u, v66, &v65, 0x10u, v57, &v64) || v66[0] != v29)
        {
LABEL_23:
          if (v15)
          {
            sub_100045744("clone mapping (private_id %llu, file_id %llu) is orphan\n", v30, v31, v32, v33, v34, v35, v36, v61[0]);
            sub_100049C40(0x559, 92);
            *v57 = 0xE000000000000009;
            *&v57[8] = 19;
            *&v57[12] = *v61;
            v41 = sub_10000102C(a3, v57, 0, 0, 0, v38, v39, v40);
            if (v41)
            {
              v4 = v41;
              v42 = v61[0];
              strerror(v41);
              sub_10004565C("can't remove orphan clone mapping (private_id %llu, file_id %llu): %s (%d)\n", v43, v44, v45, v46, v47, v48, v49, v42);
              sub_100049C40(0x548, v4);
              goto LABEL_31;
            }

            if ((v60[3] & 4) == 0)
            {
LABEL_29:
              v52 = sub_1000189F0;
              v53 = sub_1000063BC;
              goto LABEL_30;
            }

LABEL_15:
            v4 = 0;
            goto LABEL_31;
          }
        }

        else
        {
          v37 = 0;
          while (1)
          {
            v37 += (v57[24] >> 1) & 1;
            if (v37 > 1)
            {
              break;
            }

            v62 = 25;
            v63 = 16;
            if (sub_1000397B8(dword_10007CEF8, 0, 2u, v66, &v63, 0x10u, v57, &v62) || v66[0] != v29)
            {
              goto LABEL_23;
            }
          }

          if ((v15 & 1) == 0)
          {
            sub_100045744("clone mapping (private_id %llu, file_id %llu) is missing\n", v30, v31, v32, v33, v34, v35, v36, v61[0]);
            sub_100049C40(0x55A, 92);
            v50 = a3;
            v51 = 0;
            goto LABEL_36;
          }

          if ((v60[3] & 4) != 0)
          {
            v50 = a3;
            v51 = 1;
LABEL_36:
            v54 = sub_100001080(v50, v61, v60, v51);
            if (v54)
            {
              v4 = v54;
              goto LABEL_5;
            }

            v52 = sub_100018970;
            v53 = sub_100006328;
LABEL_30:
            v4 = sub_1000019C4(v61, v60, v52, v53);
LABEL_31:
            if (v4)
            {
              goto LABEL_5;
            }
          }
        }
      }

      v55 = 25;
      v56 = 16;
      v7 = sub_1000397B8(dword_10007CEF8, 0, 2u, v61, &v56, 0x10u, v60, &v55);
      if (v7)
      {
        goto LABEL_9;
      }
    }

    sub_100045744("found an orphan clone mapping (private_id %llu, file_id %llu)\n", v8, v9, v10, v11, v12, v13, v14, v61[0]);
    sub_100049C40(0x545, 92);
    *v57 = 0xE000000000000009;
    *&v57[8] = 19;
    *&v57[12] = *v61;
    v19 = sub_10000102C(a3, v57, 0, 0, 0, v16, v17, v18);
    if (!v19)
    {
      goto LABEL_29;
    }

    v20 = v19;
    v21 = v61[0];
    strerror(v19);
    sub_100045744("can't add orphan clone mapping (private_id %llu, file_id %llu) to the fsck repairs: %s (%d)\n", v22, v23, v24, v25, v26, v27, v28, v21);
    sub_100049C40(0x546, v20);
    goto LABEL_15;
  }

LABEL_9:
  if (v7 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v7;
  }

LABEL_5:
  sub_10003B928(dword_10007CEF8, 0);
  return v4;
}

uint64_t sub_10000102C(_DWORD *a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, a5, 0, 0, a2, 0x1Cu, a3, a4);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100001080(_DWORD *a1, _OWORD *a2, uint64_t *a3, int a4)
{
  v56 = 0xE000000000000009;
  v57 = 19;
  v58 = *a2;
  v8 = *a3;
  v9 = a3 + 1;
  v10 = a3[1];
  if (v10)
  {
    v11 = 28;
  }

  else
  {
    v11 = 16;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 16 * (v10 != 0);
  }

  v13 = malloc_type_calloc(1uLL, (v12 + 8), 0x100004000313F17uLL);
  v21 = v13;
  if (!v13)
  {
    sub_10004565C("can't allocate memory to insert a new clone mapping value\n", v14, v15, v16, v17, v18, v19, v20, v55);
    v32 = 12;
    sub_100049C40(0x53E, 12);
    goto LABEL_13;
  }

  if (!(v10 | v8))
  {
LABEL_17:
    *v21 = a3[2] & 0xFFFFFFFFFFFFFFLL | ((((a3[3] & 8) >> 3) & 1) << 56);
    if (a4 && (v43 = sub_10000102C(a1, &v56, 0, 0, 0, v18, v19, v20), v43))
    {
      v32 = v43;
    }

    else
    {
      v32 = sub_10000102C(a1, &v56, v21, (v12 + 8), 2, v18, v19, v20);
      if (!v32)
      {
        goto LABEL_22;
      }
    }

    v46 = a2;
    v44 = *a2;
    v45 = *(v46 + 1);
    strerror(v32);
    sub_10004565C("can't add clone mapping (private_id %llu, file_id %llu) for repairs: %s (%d)\n", v47, v48, v49, v50, v51, v52, v53, v45);
    sub_100049C40(0x544, v32);
    goto LABEL_22;
  }

  if (!*a3 || (v22 = sub_10004052C(v13 + 4, v12, 2, a3, 8, 16, v19, v20), !v22))
  {
    if (*v9)
    {
      v33 = sub_10004052C(v21 + 4, v12, 1, v9, 8, 16, v19, v20);
      if (v33)
      {
        v34 = v33;
        v35 = strerror(v33);
        sub_10004565C("can't add attribution tag for clone mapping: %s (%d)\n", v36, v37, v38, v39, v40, v41, v42, v35);
        sub_100049C40(0x540, v34);
        v32 = v34;
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

  v23 = v22;
  v24 = strerror(v22);
  sub_10004565C("can't add dir stats key for clone mapping: %s (%d)\n", v25, v26, v27, v28, v29, v30, v31, v24);
  sub_100049C40(0x53F, v23);
  v32 = v23;
LABEL_13:
  free(v21);
  v21 = 0;
LABEL_22:
  free(v21);
  return v32;
}

uint64_t sub_1000012BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  if ((*a3 & 0x100000000000000) != 0)
  {
    v6 = 9;
  }

  else
  {
    v6 = 1;
  }

  return sub_1000012D4(a1, a2, v6, a4, a5, v5 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t sub_1000012D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  v10 = a1;
  memset(v44, 0, 25);
  v43[0] = a1;
  v43[1] = a2;
  v41 = 25;
  v42 = 16;
  v11 = sub_1000397B8(dword_10007CEF8, 0, 0, v43, &v42, 0x10u, v44, &v41);
  if (v11 != 2)
  {
    v19 = v11;
    if (v11)
    {
      strerror(v11);
      sub_10004565C("failed to search for clone mapping (private_id %llu,  file_id %llu): %s (%d)\n", v20, v21, v22, v23, v24, v25, v26, v10);
      sub_100049C40(0x54B, v19);
      return v19;
    }

    v40[24] = -86;
    if ((a3 & 2) != 0)
    {
      *v40 = v44[0];
      *&v40[9] = *(v44 + 9);
    }

    else
    {
      *&v40[8] = a4;
      *&v40[16] = a6;
      *v40 = a5;
    }

    if (*&v44[0] != a5)
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): dir stats key (%llu) != inode (id %llu) dir stats key (%llu)\n", v12, v13, v14, v15, v16, v17, v18, v10);
      sub_100049C40(0x55B, -11);
      BYTE8(v44[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v44[0] = a5;
      }
    }

    if (*(&v44[0] + 1) == a4)
    {
      v27 = BYTE8(v44[1]);
      if (((a3 | BYTE8(v44[1])) & 0x10) != 0)
      {
        if ((a3 & 2) != 0)
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): attribution tag (%llu) != inode (id %llu) attribution tag (%llu)\n", v12, v13, v14, v15, v16, v17, v18, v10);
      sub_100049C40(0x55C, -11);
      v28 = BYTE8(v44[1]);
      v27 = BYTE8(v44[1]) | 4;
      BYTE8(v44[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *(&v44[0] + 1) = a4;
        if (((a3 | v28) & 0x10) != 0)
        {
          goto LABEL_25;
        }
      }

      else if (((a3 | v28) & 0x10) != 0)
      {
LABEL_19:
        if (*&v44[1] != a6)
        {
          sub_100045744("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", v12, v13, v14, v15, v16, v17, v18, v10);
          sub_100049C40(0x56E, -11);
          v27 = BYTE8(v44[1]) | 4;
          BYTE8(v44[1]) |= 4u;
        }

        goto LABEL_25;
      }
    }

    if (*&v44[1] != a6)
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): physical size (%llu) != inode (id %llu) physical size (%llu)\n", v12, v13, v14, v15, v16, v17, v18, v10);
      sub_100049C40(0x55D, -11);
      v27 = BYTE8(v44[1]) | 4;
      BYTE8(v44[1]) |= 4u;
      if ((a3 & 2) != 0)
      {
        *&v44[1] = a6;
      }
    }

LABEL_25:
    if ((a3 & 8) != (v27 & 8))
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): purgeable status is different than inode (id %llu) purgeable status\n", v12, v13, v14, v15, v16, v17, v18, v10);
      sub_100049C40(0x55E, -3);
      v27 = BYTE8(v44[1]) | 4;
      if ((a3 & 2) != 0)
      {
        v27 = BYTE8(v44[1]) & 0xF3 | 4 | a3 & 8;
      }
    }

    BYTE8(v44[1]) = v27 | a3 & 0xF7;
    if (v27 & 4 | a3 & 4)
    {
      byte_10007CEF1 = 1;
      v29 = sub_1000019C4(v43, v40, sub_1000189F0, sub_1000063BC);
      if (v29)
      {
        return v29;
      }
    }

    goto LABEL_31;
  }

  *&v44[0] = a5;
  *(&v44[0] + 1) = a4;
  *&v44[1] = a6;
  BYTE8(v44[1]) |= a3;
LABEL_31:
  v30 = sub_10003B12C(dword_10007CEF8, 0, v43, 16, v44, 0x19u);
  v19 = v30;
  if (v30)
  {
    v31 = v43[0];
    strerror(v30);
    sub_10004565C("failed to insert clone mapping (private_id %llu,  file_id %llu, flags 0x%x): %s (%d)\n", v32, v33, v34, v35, v36, v37, v38, v31);
    sub_100049C40(0x54C, v19);
  }

  return v19;
}

uint64_t sub_10000164C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0x10)
  {
    return 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    a4 = 0;
  }

  if ((*(a2 + 68) & 0x20) != 0)
  {
    v8 = 18;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a2 + 48);
  if ((v9 & 0x180000) == 0x80000 && *(a2 + 56) == 1)
  {
    v8 |= 8u;
  }

  return sub_1000012D4(*(a2 + 8), a1, (v9 >> 9) & 0x20 | v8, a5, a6, a4);
}

uint64_t sub_1000016B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (byte_10007CEF0 != 1)
  {
    return 0;
  }

  v4 = a1;
  v33[0] = 0;
  v33[1] = 0;
  v35 = 0;
  v34 = 0;
  v32[0] = a1;
  v32[1] = a2;
  v30 = 25;
  v31 = 16;
  v5 = sub_1000397B8(dword_10007CEF8, 0, 0, v32, &v31, 0x10u, v33, &v30);
  if (v5)
  {
    v13 = v5;
    strerror(v5);
    sub_10004565C("failed to search for clone mapping (private_id %llu,  file_id %llu) to update compressed clone size: %s (%d)\n", v14, v15, v16, v17, v18, v19, v20, v4);
    sub_100049C40(0x56F, v13);
    return v13;
  }

  if (v35)
  {
    if (v34 != a3)
    {
      sub_100045744("clone mapping (private_id %llu, file_id %llu): compressed physical size (%llu) != inode (id %llu) compressed physical size (%llu)\n", v6, v7, v8, v9, v10, v11, v12, v4);
      sub_100049C40(0x570, -11);
      v13 = sub_1000019C4(v32, v33, sub_1000189F0, sub_1000063BC);
      if (v13)
      {
        return v13;
      }

      v35 |= 4u;
      goto LABEL_5;
    }

    return 0;
  }

LABEL_5:
  v34 = a3;
  v21 = sub_10003B12C(dword_10007CEF8, 0, v32, 16, v33, 0x19u);
  v13 = v21;
  if (v21)
  {
    strerror(v21);
    sub_10004565C("failed to update clone mapping (private_id %llu,  file_id %llu) with compressed clone size: %s (%d)\n", v22, v23, v24, v25, v26, v27, v28, v4);
    sub_100049C40(0x571, v13);
  }

  return v13;
}

uint64_t sub_100001850(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v24 = a1;
  v25 = 0;
  memset(v23, 170, 25);
  if (byte_10007CEF0)
  {
    v21 = 25;
    v22 = 16;
    v8 = sub_1000397B8(dword_10007CEF8, 0, 1u, &v24, &v22, 0x10u, v23, &v21);
    v16 = 0;
    if (v8)
    {
LABEL_9:
      if (v8 == 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = v8;
      }
    }

    else
    {
      while (v24 == a1)
      {
        if ((v23[3] & 2) != 0)
        {
          if (v16 < a3)
          {
            *(a2 + 8 * v16) = v25;
          }

          ++v16;
        }

        v19 = 25;
        v20 = 16;
        v8 = sub_1000397B8(dword_10007CEF8, 0, 2u, &v24, &v20, 0x10u, v23, &v19);
        if (v8)
        {
          goto LABEL_9;
        }
      }

      v17 = 0;
    }

    if (v16 != a3)
    {
      sub_100045614("number of files in the clone mapping (%u) != dstream reference count (%u)\n", v9, v10, v11, v12, v13, v14, v15, v16);
      sub_100049C40(0x54E, 92);
    }

    if (a4)
    {
      *a4 = v16;
    }
  }

  else
  {
    v17 = 12;
    sub_100049C40(0x54D, 12);
  }

  return v17;
}

uint64_t sub_1000019C4(uint64_t *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(uint64_t, void))
{
  if (*a2 && (v7 = a3(*a2, a2[2]), v7))
  {
    v8 = v7;
    v10 = *a1;
    v9 = a1[1];
    v11 = *a2;
    strerror(v7);
    sub_10004565C("clone mapping (private_id %llu, file_id %llu): failed to update dir stats %llu: %s (%d)\n", v12, v13, v14, v15, v16, v17, v18, v10);
    sub_100049C40(0x58B, v8);
  }

  else
  {
    v19 = a2[1];
    if (v19)
    {
      v20 = a4(v19, a2[2]);
      v8 = v20;
      if (v20)
      {
        v22 = *a1;
        v21 = a1[1];
        v23 = a2[1];
        strerror(v20);
        sub_10004565C("clone mapping (private_id %llu, file_id %llu): failed to update attribution tag %llu: %s (%d)\n", v24, v25, v26, v27, v28, v29, v30, v22);
        sub_100049C40(0x58C, v8);
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_100001AA0()
{
  if (!off_10009B0E8)
  {
    cpu_capabilities = _get_cpu_capabilities();
    v1 = sub_100001B6C;
    if ((cpu_capabilities & 0x4000000) == 0)
    {
      v2 = off_10009B0E8;
      if (off_10009B0E8)
      {
        return;
      }

      do
      {
        v3 = 0;
        for (i = 0; i != 8; ++i)
        {
          v5 = (v2 >> i) ^ v3;
          v6 = v3 >> 1;
          v3 = (v3 >> 1) ^ 0x82F63B78;
          if ((v5 & 1) == 0)
          {
            v3 = v6;
          }
        }

        dword_10009B588[v2++] = v3;
        v1 = sub_100001B40;
      }

      while (v2 != 256);
    }

    off_10009B0E8 = v1;
  }
}

uint64_t sub_100001B40(uint64_t result, char *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    result = dword_10009B588[(v3 ^ result)] ^ (result >> 8);
  }

  return result;
}

uint64_t sub_100001B6C(uint64_t result, unsigned __int16 *a2, unint64_t a3)
{
  if ((a2 & 7) != 0)
  {
    if (!a3)
    {
      return result;
    }

    if (a2)
    {
      v4 = *a2;
      a2 = (a2 + 1);
      _W8 = v4;
      __asm { CRC32CB         W0, W0, W8 }

      result = _OFF;
      __asm { CRC32CB         W0, W0, W8 }

      --a3;
    }

    if (a3 >= 2 && (a2 & 3) != 0)
    {
      v11 = *a2++;
      _W9 = v11;
      __asm { CRC32CH         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CH         W0, W0, W9 }

      a3 -= 2;
    }

    if (a3 >= 4 && (a2 & 7) != 0)
    {
      v14 = *a2;
      a2 += 2;
      _W9 = v14;
      __asm { CRC32CW         W0, W0, W9 }

      result = _OFF;
      __asm { CRC32CW         W0, W0, W9 }

      a3 -= 4;
    }
  }

  if (a3 >= 8)
  {
    do
    {
      v17 = *a2;
      a2 += 4;
      _X8 = v17;
      __asm { CRC32CX         W0, W0, X8 }

      result = _OFF;
      __asm { CRC32CX         W0, W0, X8 }

      a3 -= 8;
    }

    while (a3 > 7);
  }

  if (a3 >= 4)
  {
    v20 = *a2;
    a2 += 2;
    _W9 = v20;
    __asm { CRC32CW         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CW         W0, W0, W9 }

    a3 -= 4;
  }

  if (a3 >= 2)
  {
    v23 = *a2++;
    _W9 = v23;
    __asm { CRC32CH         W0, W0, W9 }

    result = _OFF;
    __asm { CRC32CH         W0, W0, W9 }

    a3 -= 2;
  }

  if (a3)
  {
    _W8 = *a2;
    __asm { CRC32CB         W0, W0, W8 }

    result = _OFF;
    __asm { CRC32CB         W0, W0, W8 }
  }

  return result;
}

uint64_t sub_100001C14(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        if (v8 >= v9)
        {
          v7 = v9 < v8;
        }

        else
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t sub_100001C74(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v6 = 3;
  for (i = qword_10009B988; ; i += 4)
  {
    sub_100002D6C(a1);
    if (*(i + 24) == 1)
    {
      v8 = i[1];
      if (v8 != *i)
      {
        result = a2(*i, v8 - *i, a3);
        if (result)
        {
          break;
        }
      }
    }

    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 24);
  if ((*(v2 + 144) & 1) == 0 || !*(v2 + 336))
  {
    return 0;
  }

  v4 = (v2 + 352);
  v5 = 8;
  while (1)
  {
    if (*v4 != *(v4 - 1))
    {
      result = a2();
      if (result)
      {
        break;
      }
    }

    v4 += 17;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100001D64(uint64_t a1, int8x16_t *a2, unsigned int a3, unint64_t a4, uint64_t *a5)
{
  v192 = 0;
  v190 = 0;
  v191 = 0xAAAAAAAAAAAAAAAALL;
  v189 = 0;
  v10 = *(a1 + 24);
  v11 = *(v10 + 32);
  v12 = malloc_type_malloc(v11, 0x62B68A1DuLL);
  v13 = malloc_type_malloc(v11, 0xA29E1BB8uLL);
  v193[0] = v13;
  v14 = malloc_type_malloc(v11, 0xA1803BAFuLL);
  v22 = v14;
  if (v12)
  {
    v23 = v13 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || v14 == 0)
  {
    sub_10004565C("Space Allocation: failed to allocate memory\n", v15, v16, v17, v18, v19, v20, v21, v173);
    v25 = 12;
    sub_100049C40(0x1FE, 12);
    if (v22)
    {
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v188 = a1;
  v185 = v12;
  v179 = a2;
  v180 = v11;
  v177 = a3;
  v181 = a5;
  if (a3 - 1 > 2)
  {
    goto LABEL_26;
  }

  if (a3 == 3)
  {
    if (a4 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v26 = *(a1 + 24);
      if (*(v26 + 144))
      {
        if (*(v26 + 336))
        {
          v27 = a4 + 7;
          v28 = v26 + 344;
          v29 = 8;
          do
          {
            v30 = v27 & 7;
            v31 = v28 + 136 * (v27 & 7);
            if (*(v31 + 128) == a4)
            {
              goto LABEL_25;
            }

            v27 = v30 + 1;
          }

          while (--v29);
        }
      }
    }

LABEL_26:
    v178 = 0;
    v31 = &qword_10007CF38;
    goto LABEL_27;
  }

  sub_100002D6C(a1);
  if (byte_10009B9E8 != 1)
  {
    goto LABEL_26;
  }

  v32 = &qword_10009B988[4 * a3];
  if (*(v32 + 24) == 1)
  {
    v31 = (v32 + 2);
  }

  else
  {
    if (a3 != 2)
    {
      goto LABEL_26;
    }

    v31 = &qword_10009B9B8;
    if ((byte_10009B9C0 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

LABEL_25:
  v178 = 1;
LABEL_27:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = *v31;
  v186 = v10 + *(v10 + 80);
  LODWORD(v31) = *(v10 + 36);
  v37 = -1;
  v183 = v36;
  do
  {
    if (v36 >= *(v10 + 48))
    {
      v36 = 0;
    }

    v38 = v36 / v31 / *(v10 + 40);
    if (*(v10 + 68))
    {
      v39 = *(v10 + 44);
      v40 = v38 / v39;
      if (v38 / v39 != v37)
      {
        v41 = *(v186 + 8 * v40);
        v42 = sub_10002F3CC(*v188);
        if (v42)
        {
          sub_10004565C("error (%d) getting cab %u @ %lld\n", v43, v44, v45, v46, v47, v48, v49, v42);
          v52 = (*(v10 + 44) + *(v10 + 44) * v40) * *(v10 + 40);
LABEL_39:
          LODWORD(v31) = *(v10 + 36);
          v36 = (v52 * v31);
          v37 = v40;
          goto LABEL_40;
        }

        v39 = *(v10 + 44);
        v37 = v40;
      }

      v187 = v37;
      v53 = &v185[8 * (v38 - v39 * v37) + 40];
    }

    else
    {
      v187 = v37;
      v53 = (v186 + 8 * v38);
    }

    v54 = *v53;
    v55 = sub_10002F3CC(*v188);
    if (v55)
    {
      sub_10004565C("error (%d) getting cib %u @ %lld\n", v56, v57, v58, v59, v60, v61, v62, v55);
      v52 = *(v10 + 40) + *(v10 + 40) * v38;
      v40 = v187;
      goto LABEL_39;
    }

    v31 = *(v10 + 36);
    v63 = *(v10 + 40) * *(v193[0] + 8);
    if (v35 == *(v10 + 64))
    {
      v64 = v183 / v31 - v63 + 1;
    }

    else
    {
      v64 = *(v193[0] + 9);
    }

    v37 = v187;
    v65 = v36 / v31 - v63;
    v192 = v65;
    if (v65 < v64)
    {
      v184 = v64 - 1;
      v182 = v64;
      while (1)
      {
        v66 = &v193[0][32 * v65];
        if (*(v66 + 8))
        {
          v67 = sub_10002F3CC(*v188);
          v65 = v192;
          if (v67)
          {
            v176 = *(v66 + 8);
            sub_10004565C("error (%d) getting cib bitmap %d @ %lld\n", v68, v69, v70, v71, v72, v73, v74, v67);
            v65 = v192 + 1;
            LODWORD(v31) = *(v10 + 36);
            v36 = (v192 + 1 + *(v10 + 40) * v38) * v31;
            goto LABEL_72;
          }
        }

        if (v35 == *(v10 + 64) && v65 == v184)
        {
          v76 = v183 - *(v66 + 6);
        }

        else
        {
          v76 = *(v66 + 14) & 0xFFFFFLL;
        }

        v77 = v36 % *(v10 + 36);
        while (v76 > v77)
        {
          if (!*(v66 + 8))
          {
            v190 = 0;
LABEL_63:
            v189 = v76;
            v77 = v76;
            goto LABEL_64;
          }

          if (!sub_10000856C(0, v22, v77, v76 - v77, &v190))
          {
            break;
          }

          if (!sub_10000856C(1, v22, v190, v76 - v190, &v189))
          {
            goto LABEL_63;
          }

          v77 = v189;
LABEL_64:
          if (v33 + v34 == *(v66 + 6) + v190)
          {
            v78 = v33;
          }

          else
          {
            v34 = *(v66 + 6) + v190;
            v78 = 0;
          }

          v79 = v77 - v190;
          if (v77 - v190 >= a4 - v78)
          {
            v79 = a4 - v78;
          }

          v33 = v79 + v78;
          if (v79 + v78 >= a4)
          {
            *v181 = v34;
            goto LABEL_74;
          }
        }

        v31 = *(v10 + 36);
        v36 = v76 + v36 / v31 * v31;
        v65 = v192 + 1;
        v64 = v182;
LABEL_72:
        v192 = v65;
        if (v65 >= v64)
        {
          v37 = v187;
          break;
        }
      }
    }

LABEL_40:
    ++v35;
  }

  while (v35 <= *(v10 + 64));
LABEL_74:
  if (v33 < a4)
  {
    v25 = 28;
    sub_100049C40(0x1EF, 28);
    goto LABEL_76;
  }

  v80 = v33 + v34;
  if (v34 >= (v33 + v34))
  {
LABEL_88:
    v111 = sub_100002664(v188, v179, v10, v33, v50, v51);
    if (v111)
    {
      v112 = v111;
      v113 = strerror(v111);
      sub_10004565C("failed to update allocation counts: %s\n", v114, v115, v116, v117, v118, v119, v120, v113);
      v121 = v112;
      sub_100049C40(0x1F1, v112);
      sub_100002664(v188, v179, v10, -v33, v122, v123);
      v81 = v80;
      v87 = v188;
      goto LABEL_106;
    }

    if (sub_10004217C(v34, v33, 0, 0, 0))
    {
      sub_100045744("fsck may bail out with overallocation - could not mark space allocated in fsck's version of the bitmap (%lld + %lld)\n", v124, v125, v126, v127, v128, v129, v130, v34);
    }

    if (v178)
    {
      v12 = v185;
      v25 = 0;
      if (v177 == 3)
      {
        goto LABEL_122;
      }

      if (byte_10009B9E0)
      {
        LODWORD(v131) = 2;
      }

      else
      {
        LODWORD(v131) = 1;
      }

      if (v177 == 2)
      {
        v131 = v131;
      }

      else
      {
        v131 = v177;
      }

      qword_10009B988[4 * v131 + 2] = v80 - 1;
      if (v22)
      {
LABEL_123:
        free(v22);
      }
    }

    else
    {
      v25 = 0;
      qword_10007CF38 = v80 - 1;
LABEL_76:
      v12 = v185;
      if (v22)
      {
        goto LABEL_123;
      }
    }
  }

  else
  {
    v81 = v34;
    while (1)
    {
      v82 = *(v10 + 36);
      v83 = v81 % v82;
      v84 = v82 - v81 % v82;
      if (v84 >= v80 - v81)
      {
        v85 = v80 - v81;
      }

      else
      {
        v85 = v84;
      }

      v86 = sub_10000ACA0(v188, v81, v22, &v191, v193, &v192, 1);
      if (!v191 || v86)
      {
        v121 = v86;
        v87 = v188;
        goto LABEL_106;
      }

      sub_1000083A8(v22, v83, v85, v191);
      v87 = v188;
      v88 = sub_10002F4AC(*v188);
      if (v88)
      {
        v121 = v88;
        sub_10004565C("error (%d) writing bitmap @ %lld\n", v89, v90, v91, v92, v93, v94, v95, v88);
        sub_100049C40(0x1FF, v121);
        goto LABEL_106;
      }

      v98 = v22;
      v99 = v80;
      v100 = v193[0];
      *&v193[0][32 * v192 + 60] -= v85;
      v101 = *(v100 + 1);
      sub_10003ED18(v100, (v100 + 8), (v180 - 8), 0, v96, v97);
      v102 = sub_10002F4AC(*v188);
      if (v102)
      {
        break;
      }

      v81 += v85;
      v80 = v99;
      v110 = v81 < v99;
      v22 = v98;
      if (!v110)
      {
        goto LABEL_88;
      }
    }

    v132 = v102;
    v174 = *(v193[0] + 8);
    sub_10004565C("error (%d) writing cib %u @ %lld\n", v103, v104, v105, v106, v107, v108, v109, v102);
    sub_100049C40(0x200, v132);
    v22 = v98;
    sub_10000849C(v98, v83, v85);
    v121 = v132;
    v87 = v188;
    v133 = sub_10002F4AC(*v188);
    if (v133)
    {
      v141 = v133;
      sub_10004565C("error (%d) writing bitmap @ %lld\n", v134, v135, v136, v137, v138, v139, v140, v133);
      sub_100049C40(0x1F0, v141);
      v121 = v141;
    }

LABEL_106:
    if (v34 < v81)
    {
      while (2)
      {
        v142 = sub_10000ACA0(v87, v34, v22, &v191, v193, &v192, 0);
        if (v191)
        {
          v143 = v142 == 0;
        }

        else
        {
          v143 = 0;
        }

        if (!v143)
        {
          break;
        }

        v144 = *(v10 + 36);
        v145 = v34 % v144;
        v146 = v144 - v34 % v144;
        if (v146 >= v81 - v34)
        {
          v147 = v81 - v34;
        }

        else
        {
          v147 = v146;
        }

        sub_10000849C(v22, v145, v147);
        v148 = sub_10002F4AC(*v87);
        if (v148)
        {
          v158 = v148;
          sub_10004565C("error (%d) writing bitmap @ %lld\n", v149, v150, v151, v152, v153, v154, v155, v148);
          v159 = 513;
          v160 = v158;
          goto LABEL_119;
        }

        v161 = v193[0];
        *&v193[0][32 * v192 + 60] += v147;
        v162 = *(v161 + 1);
        sub_10003ED18(v161, (v161 + 8), (v180 - 8), 0, v156, v157);
        v163 = sub_10002F4AC(*v87);
        if (v163)
        {
          v171 = v163;
          v175 = *(v193[0] + 8);
          sub_10004565C("error (%d) writing cib %u @ %lld\n", v164, v165, v166, v167, v168, v169, v170, v163);
          v159 = 514;
          v160 = v171;
LABEL_119:
          sub_100049C40(v159, v160);
        }

        v34 += v147;
        v87 = v188;
        if (v34 >= v81)
        {
          break;
        }

        continue;
      }
    }

    v12 = v185;
    v25 = v121;
LABEL_122:
    if (v22)
    {
      goto LABEL_123;
    }
  }

LABEL_124:
  if (v193[0])
  {
    free(v193[0]);
  }

  if (v12)
  {
    free(v12);
  }

  return v25;
}

uint64_t sub_100002664(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4, double a5, int8x16_t a6)
{
  *(a3 + 72) -= a4;
  if (!a2)
  {
    goto LABEL_14;
  }

  v7 = a2[2].i64[1];
  v8 = *(v7 + 72);
  v9 = *(v7 + 88);
  v10 = v8 >= v9 ? *(v7 + 88) : *(v7 + 72);
  *(v7 + 88) = v9 + a4;
  v11 = v8 >= v9 + a4 ? v9 + a4 : v8;
  if (v9 < v11 || v9 + a4 < v10)
  {
    *(a3 + 192) += v11 - v10;
  }

  result = sub_100046EA0(a1, a2);
  if (!result)
  {
LABEL_14:
    v14 = *(a1 + 24);
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
    return sub_100026A10(a1, 0, v14, &v15, v15, a6);
  }

  return result;
}

uint64_t sub_10000270C(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, char a9, char a10)
{
  v121 = a7;
  v122 = a5;
  v10 = a1[3];
  v120 = 0;
  v11 = v10[8];
  v12 = a3 % v10[9];
  if (v12 + a4 > (8 * v11))
  {
    sub_10004565C("Spaceman Repair: Cannot modify more than a block's worth of bitmap\n", a2, a3, a4, a5, a6, a7, a8, v112);
    v13 = 45;
    sub_100049C40(0x277, 45);
    return v13;
  }

  v119 = a8;
  v20 = a6;
  if (!a6)
  {
    v20 = malloc_type_malloc(v11, 0xD4E60B18uLL);
    if (!v20)
    {
      sub_10004565C("Spaceman Repair: failed to allocate memory for the bitmap block\n", v21, v22, v23, v24, v25, v26, v27, v112);
      v13 = 12;
      v46 = 632;
LABEL_27:
      v47 = 12;
      goto LABEL_28;
    }
  }

  if (a7)
  {
    if (a6)
    {
      v28 = a7;
      if (a5)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  v121 = malloc_type_malloc(v11, 0x5681932DuLL);
  if (!v121)
  {
    sub_10004565C("Spaceman Repair: failed to allocate memory for the bitmap block\n", v29, v30, v31, v32, v33, v34, v35, v112);
    v13 = 12;
    v46 = 633;
    goto LABEL_27;
  }

LABEL_10:
  v36 = sub_10000ACA0(a1, a3, v20, &v122, &v121, 0, 1);
  if (v36)
  {
    v13 = v36;
    goto LABEL_29;
  }

  v28 = v121;
LABEL_13:
  v116 = v28[8];
  v37 = v10[9];
  v114 = v10[10];
  if ((a10 & 1) == 0 && sub_10000856C(v119 == 1, v20, v12, a4, &v120))
  {
    if (v119 == 1)
    {
      v45 = "bitmap was not entirely unset, stopping allocation\n";
    }

    else
    {
      v45 = "bitmap was not entirely set, stopping deallocation\n";
    }

    sub_10004565C(v45, v38, v39, v40, v41, v42, v43, v44, v112);
    v13 = 22;
    v46 = 634;
    v47 = 22;
    goto LABEL_28;
  }

  if (v119 == 1)
  {
    sub_1000083A8(v20, v12, a4, 1);
  }

  else if (v119 == 2)
  {
    sub_10000849C(v20, v12, a4);
  }

  v48 = sub_10002F4AC(*a1);
  if (v48)
  {
    v13 = v48;
    sub_10004565C("error (%d) writing bitmap @ %lld\n", v49, v50, v51, v52, v53, v54, v55, v48);
    v46 = 635;
    v47 = v13;
LABEL_28:
    sub_100049C40(v46, v47);
    goto LABEL_29;
  }

  v57 = a3 / v37 - v114 * v116;
  v117 = *(v121 + 1);
  v58 = sub_1000085F0(v20, 0, 0, *(v121 + 8 * v57 + 14) & 0xFFFFF);
  v61 = 0;
  v62 = v121;
  v113 = v57;
  v63 = v121 + 32 * v57;
  v65 = *(v63 + 15);
  v64 = v63 + 60;
  v66 = v58 - v65;
  if (v58 != v65)
  {
    *v64 = v58;
    v61 = v66;
  }

  v115 = v61;
  v67 = (v11 - 8);
  sub_10003ED18(v62, (v62 + 8), v67, 0, v59, v60);
  v68 = sub_10002F4AC(*a1);
  if (v68)
  {
    v13 = v68;
    sub_10004565C("error (%d) writing cib during deallocation\n", v69, v70, v71, v72, v73, v74, v75, v68);
    sub_100049C40(0x27C, v13);
  }

  else
  {
    v78 = sub_100002664(a1, a2, v10, -v115, v76, v77);
    if (!v78)
    {
      if (a9)
      {
        if (v119 == 2)
        {
          sub_1000422B0(a3, a4, 0);
        }

        else if (v119 == 1)
        {
          sub_10004217C(a3, a4, 0, 0, 0);
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

    v13 = v78;
    v79 = strerror(v78);
    sub_10004565C("failed to update allocation counts: %s\n", v80, v81, v82, v83, v84, v85, v86, v79);
    sub_100049C40(0x27D, v13);
    sub_100002664(a1, a2, v10, v115, v87, v88);
  }

  if (v119 == 1)
  {
    sub_10000849C(v20, v12, a4);
    sub_1000083A8(v20, v12, a4, v89);
  }

  v90 = sub_10002F4AC(*a1);
  if (v90)
  {
    v100 = v90;
    sub_10004565C("error (%d) writing bitmap @ %lld\n", v91, v92, v93, v94, v95, v96, v97, v90);
    v46 = 638;
    v47 = v100;
    goto LABEL_28;
  }

  v101 = v121;
  *(v121 + 8 * v113 + 15) -= v115;
  v102 = *(v101 + 1);
  sub_10003ED18(v101, (v101 + 8), v67, 0, v98, v99);
  v103 = sub_10002F4AC(*a1);
  if (v103)
  {
    v111 = v103;
    sub_10004565C("error (%d) writing cib\n", v104, v105, v106, v107, v108, v109, v110, v103);
    v46 = 639;
    v47 = v111;
    goto LABEL_28;
  }

LABEL_29:
  if (!a7 && v121)
  {
    free(v121);
  }

  if (!a6 && v20)
  {
    free(v20);
  }

  return v13;
}

uint64_t sub_100002BB8(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4 + a3;
  if (a4 + a3 <= a3)
  {
    return 0;
  }

  v7 = a3;
  v10 = *(a1[3] + 36);
  while (1)
  {
    v11 = v5 - v7 >= v10 + v7 / v10 * v10 - v7 ? v10 + v7 / v10 * v10 - v7 : v5 - v7;
    result = sub_10000270C(a1, a2, v7, v11, 0, 0, 0, a5, 1, 0);
    if (result)
    {
      break;
    }

    v7 += v11;
    if (v7 >= v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100002C7C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5, uint64_t (*a6)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  if (a2 + a1 > a3 && a4 + a3 > a1)
  {
    *a5 = 1;
    if (a1 <= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = a1;
    }

    v15 = v14 - a1;
    if (a2 - (v14 - a1) >= a3 - v14 + a4)
    {
      v16 = a3 - v14 + a4;
    }

    else
    {
      v16 = a2 - (v14 - a1);
    }

    result = a6(v14, v16, 1, a7);
    if (!result)
    {
      if (a3 <= a1 || (result = a6(a1, v15, 0, a7), !result))
      {
        if (a2 - v16 <= v15)
        {
          return 0;
        }

        result = a6(v16 + v14, a2 - v16 - v15, 0, a7);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 0;
    *a5 = 0;
  }

  return result;
}

uint64_t sub_100002D6C(uint64_t result)
{
  if ((byte_10009B9E8 & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 24);
    v3 = *(v2 + 32);
    v4 = *(v2 + 48);
    memset(v7, 170, sizeof(v7));
    if (is_mul_ok(v4, v3))
    {
      v5 = v4 * v3;
    }

    else
    {
      v5 = 0x40000000000;
    }

    result = sub_10002C0AC(0, v3, v4, v5, &v7[3], &v7[2]);
    if (!result)
    {
      v6 = v7[3] / v3 + v7[2];
      sub_10002C1B4(v3, v7[3], v7[2], v6, &v7[1], v7);
      qword_10009B990 = v7[1];
      unk_10009B998 = v7[2];
      qword_10009B988 = v7[2];
      byte_10009B9A0 = 1;
      qword_10009B9B0 = v6;
      qword_10009B9B8 = v7[1];
      qword_10009B9A8 = v7[1];
      byte_10009B9C0 = 1;
      result = sub_10002F3BC(*v1);
      if (!result)
      {
        result = sub_100046E98();
        if (result)
        {
          qword_10009B9B0 = v7[0];
          qword_10009B9B8 = v7[1];
          qword_10009B9A8 = v7[1];
          byte_10009B9C0 = 1;
          qword_10009B9D0 = v6;
          unk_10009B9D8 = v7[0];
          qword_10009B9C8 = v7[0];
          byte_10009B9E0 = 1;
        }
      }
    }

    byte_10009B9E8 = 1;
  }

  return result;
}

uint64_t sub_100002E7C(unint64_t a1, uint64_t a2, int a3, void (*a4)(_OWORD *, uint64_t, uint64_t), uint64_t a5)
{
  v19 = a1;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = a1 + a2;
  v17 = 0;
  v18 = -1431655766;
  v16 = 0;
  v15 = 1;
  do
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[6] = v8;
    v21[7] = v8;
    v21[5] = v8;
    v21[3] = v8;
    v21[4] = v8;
    v21[1] = v8;
    v21[2] = v8;
    v20[1] = v8;
    v21[0] = v8;
    v20[0] = v8;
    v14 = 0;
    v13 = 0;
    v9 = sub_100002FDC(&v19, v7, a3, v22, &v18, &v17, &v16, v21, v20, &v14, &v13, &v15);
    if (v9)
    {
      break;
    }

    v10 = v14;
    if (v14 >= 1)
    {
      if (v13 == 1)
      {
        sub_1000037B4(v21, v20, v14);
      }

      a4(v21, 4 * v10, a5);
    }
  }

  while (v19 < v7 || v17 > 0);
  return v9;
}

uint64_t sub_100002FDC(unint64_t *a1, unint64_t a2, int a3, int *a4, uint64_t a5, int *a6, int *a7, uint64_t a8, uint64_t a9, int *a10, _BYTE *a11, _BYTE *a12)
{
  v17 = *a6;
  v18 = *a7;
  if (*a6 >= 1 && v18 < v17)
  {
    v65 = 0;
    *a11 = 0;
    *a10 = 0;
    v18 = *a7;
    while (1)
    {
      if (v65 >= 1 && *(a5 + v18) && *(a5 + v18) < *(a9 - 1 + v65))
      {
        *a11 = 1;
      }

      *(a8 + 4 * v65) = a4[v18];
      v66 = *a7;
      *a7 = v66 + 1;
      LOBYTE(v66) = *(a5 + v66);
      v67 = *a10;
      *a10 = v67 + 1;
      *(a9 + v67) = v66;
      v18 = *a7;
      v17 = *a6;
      if (*a7 >= *a6 || !*(a5 + v18))
      {
        break;
      }

      v65 = *a10;
    }
  }

  if (v18 >= v17)
  {
    *a6 = 0;
    *a7 = 0;
    v20 = *a1;
    if (*a1 < a2)
    {
      v21 = a4 - 1;
      do
      {
        v23 = v20 + 1;
        *a1 = (v20 + 1);
        v24 = *v20;
        result = 92;
        if (!*v20 || v24 == 47)
        {
          return result;
        }

        if ((v24 & 0x80) == 0)
        {
          result = 0;
          if (v24 - 91 < 0xFFFFFFE6)
          {
            v68 = 1;
          }

          else
          {
            v68 = a3;
          }

          if (v68)
          {
            v69 = *v20;
          }

          else
          {
            v69 = v24 | 0x20;
          }

          *a4 = v69;
          *a6 = 1;
          *a5 = 0;
          goto LABEL_143;
        }

        if (v24 - 225 > 0xB)
        {
          if (v24 - 194 <= 0x1D && v23 < a2)
          {
            v30 = *v23 ^ 0x80;
            if (v30 <= 0x3F)
            {
              v28 = ((v24 & 0x1F) << 6) | v30;
              v23 = v20 + 2;
              goto LABEL_44;
            }
          }
        }

        else if ((v20 + 2) < a2)
        {
          v26 = *v23 ^ 0x80;
          if (v26 <= 0x3F)
          {
            v27 = v20[2] ^ 0x80;
            if (v27 <= 0x3F)
            {
              v28 = ((v24 & 0xF) << 12) | (v26 << 6) | v27;
              v23 = v20 + 3;
              goto LABEL_44;
            }
          }
        }

        if (v24 > 0xEF)
        {
          if (v24 > 0xFD)
          {
            v33 = 0;
            goto LABEL_33;
          }

          if (v24 <= 0xF7)
          {
            v31 = 3;
          }

          else
          {
            v31 = 4;
          }

          v32 = v24 > 0xFB;
        }

        else
        {
          v31 = v24 > 0xDF;
          v32 = v24 > 0xBF;
        }

        if (v32)
        {
          v33 = v31 + 1;
        }

        else
        {
          v33 = v31;
        }

LABEL_33:
        v28 = -1;
        if (&v23[v33] <= a2)
        {
          v34 = v24 & ~(-1 << (6 - v33));
          if (v33 == 1)
          {
            goto LABEL_41;
          }

          if (v33 == 2 || v33 == 3 && (v23 = v20 + 2, v35 = v20[1] ^ 0x80, v28 = -1, v35 <= 0x3F) && (v34 = v35 | (v34 << 6), v34 <= 0x10F))
          {
            v36 = *v23++;
            v37 = v36 ^ 0x80;
            v28 = -1;
            if ((v36 ^ 0x80u) <= 0x3F)
            {
              v34 = v37 | (v34 << 6);
              if ((v34 & 0xFFE0) != 0x360)
              {
LABEL_41:
                v38 = *v23++;
                v39 = v38 ^ 0x80;
                if ((v38 ^ 0x80u) > 0x3F || (v28 = v39 | (v34 << 6), v28 < dword_10006EC60[v33]))
                {
                  v28 = -1;
                }
              }
            }
          }
        }

LABEL_44:
        *a1 = v23;
        if (v28 < 1)
        {
          return result;
        }

        *a5 = 0;
        if (v28 >= 0xF0000)
        {
          if ((~v28 & 0xFFFE) == 0)
          {
            goto LABEL_144;
          }

LABEL_47:
          *a4 = v28;
          goto LABEL_55;
        }

        v40 = v28;
        if (v28 >> 10 >= 0xC9)
        {
          if (v28 - 918016 < 0xFFFFFE00)
          {
            goto LABEL_144;
          }

          v40 = v28 - 711680;
        }

        v41 = word_10006EC70[v40 >> 8];
        if (!word_10006EC70[v40 >> 8])
        {
          goto LABEL_54;
        }

        if (v41 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v41 & 0xFF00) == 0xAD00)
        {
LABEL_54:
          *a4 = v28;
          *a5 = v41;
          goto LABEL_55;
        }

        if (((v40 >> 8) - 172) <= 0x2A)
        {
          goto LABEL_69;
        }

        v50 = word_1000717EC[16 * (v41 & 0xFFF) + (v40 >> 4)];
        if (!v50)
        {
LABEL_75:
          *a4 = v28;
          *a5 = v50;
          goto LABEL_76;
        }

        if (v50 == 0xFFFF)
        {
          goto LABEL_144;
        }

        if ((v50 & 0xFF00) == 0xAE00)
        {
          if ((word_10006F2BC[v50] >> (v40 & 0xF)))
          {
            goto LABEL_144;
          }

          *a4 = v28;
          v42 = 1;
          if (v28 <= 0x4FF && (a3 & 1) == 0)
          {
            *a4 = word_100072B0C[v28];
          }

          goto LABEL_56;
        }

        if ((v50 & 0xFF00) == 0xAD00)
        {
          goto LABEL_75;
        }

        if (v50 == 44032 || (v52 = word_10007350C[16 * (v50 & 0xFFF) + (v40 & 0xF)], v52 == 44032))
        {
LABEL_69:
          v45 = v28 - 44032;
          v46 = v45 / 28;
          v47 = v45 / 588;
          v48 = (49933 * (v45 / 28)) >> 16;
          *(a5 + 1) = 0;
          v49 = v45 % 28;
          *a4 = v47 + 4352;
          a4[1] = (v46 - 21 * ((v48 >> 4) + ((v48 & 0x8000) >> 15)) + 4449);
          if (v49)
          {
            a4[2] = v49 + 4519;
            v42 = 3;
          }

          else
          {
            v42 = 2;
          }

          goto LABEL_56;
        }

        if (v52 == 0xFFFF)
        {
LABEL_144:
          v54 = -1;
LABEL_145:
          *a6 = v54;
          return result;
        }

        if (((v52 + 1792) >> 8) <= 0xB6u)
        {
          if (!v52 || (v52 & 0xFF00) == 0xAD00)
          {
            *a4 = v28;
            *a5 = v52;
          }

          else
          {
            *a4 = v52;
          }

LABEL_76:
          if ((a3 & 1) == 0)
          {
            v51 = *a4;
            if (v51 <= 1279)
            {
              v28 = word_100072B0C[v51];
              goto LABEL_47;
            }
          }

LABEL_55:
          v42 = 1;
LABEL_56:
          *a6 = v42;
          goto LABEL_57;
        }

        v53 = (v52 - 45056) >> 12;
        v54 = -1;
        if (v53 <= 1)
        {
          if (v53)
          {
            if (v53 != 1)
            {
              goto LABEL_145;
            }

            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_10006FFE6 + 6 * (v52 & 0x7FF);
            v42 = 3;
          }

          else
          {
            if ((v52 & 0x800) != 0 && a3)
            {
              goto LABEL_47;
            }

            v70 = 0;
            v55 = &unk_10006F3D2 + 4 * (v52 & 0x7FF);
            v42 = 2;
          }
        }

        else
        {
          if (v53 == 2)
          {
            v70 = 0;
            v58 = (&unk_10007051A + 2 * (v52 & 0x3FF));
            v59 = *v58;
            v55 = (v58 + 1);
            v57 = v59;
            goto LABEL_109;
          }

          if (v53 != 3)
          {
            if (v53 != 4)
            {
              goto LABEL_145;
            }

            v55 = 0;
            v56 = (&unk_100071590 + 4 * (v52 & 0x3FF));
            v57 = *v56;
            v70 = v56 + 1;
LABEL_109:
            v42 = v57 & 0xF;
            *a5 = v57 >> 4;
            if (v42 - 5 < 0xFFFFFFFC)
            {
              v54 = 0;
              goto LABEL_145;
            }

            goto LABEL_110;
          }

          if ((v52 & 0x800) != 0 && a3)
          {
            goto LABEL_47;
          }

          v55 = 0;
          v70 = (&unk_1000706A8 + 4 * (v52 & 0x7FF));
          v42 = 1;
        }

LABEL_110:
        v60 = 0;
        v74 = a3;
        v72 = a12;
        v73 = a2;
        v71 = v21;
        do
        {
          if (v55)
          {
            v62 = *v55;
            v55 += 2;
            v61 = v62;
          }

          else
          {
            v61 = *v70++;
          }

          a4[v60] = v61;
          if (v60)
          {
            v75 = v60;
            v76 = v55;
            v63 = sub_100003828(v61);
            v60 = v75;
            v55 = v76;
            *(a5 + v75) = v63;
          }

          ++v60;
          a3 = v74;
          a12 = v72;
          a2 = v73;
          v21 = v71;
        }

        while (v42 != v60);
        if ((v74 & 1) == 0)
        {
          v64 = *a4;
          if (v64 <= 1279)
          {
            *a4 = word_100072B0C[v64];
          }

          if (v42 < 2)
          {
            goto LABEL_55;
          }

          if (v71[v42] == 837)
          {
            v71[v42] = 953;
          }
        }

        *a6 = v42;
        if (v42 < 1)
        {
          return 92;
        }

LABEL_57:
        if (!*a5 || *a12 == 1)
        {
          result = 0;
LABEL_143:
          *a12 = 0;
          return result;
        }

        v43 = *a10;
        if ((v42 + *a10) > 32)
        {
          return 92;
        }

        v44 = 0;
        do
        {
          if (v43 >= 1 && *(a5 + v44) && *(a5 + v44) < *(a9 - 1 + v43))
          {
            *a11 = 1;
          }

          *(a8 + 4 * v43) = a4[v44];
          *(a9 + *a10) = *(a5 + v44++);
          v43 = *a10 + 1;
          *a10 = v43;
        }

        while (v44 < *a6);
        *a6 = 0;
        v20 = *a1;
      }

      while (*a1 < a2);
    }
  }

  return 0;
}

uint64_t sub_1000037B4(uint64_t result, uint64_t a2, int a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = a3 - 1;
      do
      {
        v5 = *(a2 + v4);
        if (v5 < *(a2 + v4 - 1))
        {
          v6 = *(result + 4 * v4);
          *(result + 4 * v4) = *(result + 4 * (v4 - 1));
          *(a2 + v4) = *(a2 + v4 - 1);
          *(result + 4 * (v4 - 1)) = v6;
          *(a2 + v4 - 1) = v5;
        }

        --v4;
      }

      while (v4 > v3);
      ++v3;
    }

    while (v3 != a3 - 1);
  }

  return result;
}

uint64_t sub_100003828(int a1)
{
  if (a1 >= 983040)
  {
    return 0;
  }

  if (a1 == 953)
  {
    return 240;
  }

  v2 = a1 - 711680;
  if (a1 <= 205823)
  {
    v2 = a1;
  }

  LOWORD(v3) = word_10006EC70[v2 >> 8];
  if (v3)
  {
    v4 = (v3 & 0xFF00) == 44288;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return v3;
  }

  v3 = word_1000717EC[16 * (v3 & 0xFFF) + (v2 >> 4)];
  if (!v3)
  {
    return v3;
  }

  if ((v3 & 0xFF00) == 0xAE00)
  {
    return 0;
  }

  if ((v3 & 0xFF00) == 0xAD00)
  {
    return v3;
  }

  v5 = word_10007350C[16 * (v3 & 0xFFF) + (v2 & 0xF)];
  if ((v5 & 0xFF00) == 0xAD00)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000038FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  sub_100045428("usage: fsck_apfs [ [-q | -n | -y] [-r num] [-l] [-s] [-W] [-S] [-o] [-b num] [-c] [-C] [-d]\n\t\t[-E path] [-F | -M] [-g | -x] [-X] [-T [-D]] ] device\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  sub_100045428("       -q            quick check if the superblock and checkpoint superblock are valid.\n", v9, v10, v11, v12, v13, v14, v15, vars0a);
  sub_100045428("       -n            verify only (answer no to questions)\n", v16, v17, v18, v19, v20, v21, v22, vars0b);
  sub_100045428("       -y            always repair (answer yes to questions)\n", v23, v24, v25, v26, v27, v28, v29, vars0c);
  sub_100045428("       -l            live fsck (lock down for verify-only)\n", v30, v31, v32, v33, v34, v35, v36, vars0d);
  sub_100045428("       -s            print space verification summary\n", v37, v38, v39, v40, v41, v42, v43, vars0e);
  sub_100045428("       -S            skip iteration of snapshots, although no repairs can be made.\n", v44, v45, v46, v47, v48, v49, v50, vars0f);
  sub_100045428("       -o            repair overallocations; please do not run an older fsck_apfs on newer systems with this option\n", v51, v52, v53, v54, v55, v56, v57, vars0g);
  sub_100045428("       -b <num>      set default cache block size to <num> KiB\n", v58, v59, v60, v61, v62, v63, v64, vars0h);
  sub_100045428("       -c            enable cache statistics\n", v65, v66, v67, v68, v69, v70, v71, vars0i);
  sub_100045428("       -C            force a sync prior to freezing for live fsck\n", v72, v73, v74, v75, v76, v77, v78, vars0j);
  sub_100045428("       -d            print extra debugging information\n", v79, v80, v81, v82, v83, v84, v85, vars0k);
  sub_100045428("       -E <path>     write warning/error information to <path>; Use - for stdout\n", v86, v87, v88, v89, v90, v91, v92, vars0l);
  sub_100045428("       -F            force checking of encrypted volumes\n", v93, v94, v95, v96, v97, v98, v99, vars0m);
  sub_100045428("       -M            skip checks which require encrypted volumes to be unlocked\n", v100, v101, v102, v103, v104, v105, v106, vars0n);
  sub_100045428("       -g            print output in form suitable for automatic parsing\n", v107, v108, v109, v110, v111, v112, v113, vars0o);
  sub_100045428("       -x            print output in XML\n", v114, v115, v116, v117, v118, v119, v120, vars0p);
  sub_100045428("       -X            report progress to FSKit\n", v121, v122, v123, v124, v125, v126, v127, vars0q);
  sub_100045428("       -W            treat warnings as errors\n", v128, v129, v130, v131, v132, v133, v134, vars0r);
  sub_100045428("       -T            tree node repair\n", v135, v136, v137, v138, v139, v140, v141, vars0s);
  sub_100045428("       -D            scavenge disk\n", v142, v143, v144, v145, v146, v147, v148, vars0t);

  return sub_100045428("       -r <num>      read password for encrypted external volume from file descriptor <num>\n", v149, v150, v151, v152, v153, v154, v155, a9);
}

char *sub_100003A24(const char *a1, _DWORD *a2)
{
  properties = 0;
  *a2 = -1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  v5 = &a1[v4];
  if (*v5 == 114)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5;
  }

  if (strncmp(v6, "disk", 4uLL))
  {
    sub_100045744("%s: not a valid disk name/path\n", v7, v8, v9, v10, v11, v12, v13, a1);
    return 0;
  }

  v14 = IOBSDNameMatching(kIOMasterPortDefault, 0, v6);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v14);
  if (!MatchingService)
  {
    sub_100045744("%s: couldn't find APFS container\n", v16, v17, v18, v19, v20, v21, v22, v6);
    v31 = 0;
    goto LABEL_35;
  }

  v23 = MatchingService;
  if (IOObjectConformsTo(MatchingService, "AppleAPFSSnapshot"))
  {
    parent[0] = -1431655766;
    if (IORegistryEntryGetParentEntry(v23, "IOService", parent))
    {
      sub_100045744("%s: error %d from IORegistryEntryGetParentEntry\n", v24, v25, v26, v27, v28, v29, v30, v6);
      v31 = 0;
LABEL_34:
      IOObjectRelease(v23);
      goto LABEL_35;
    }

    IOObjectRelease(v23);
    v23 = parent[0];
  }

  if (IOObjectConformsTo(v23, "AppleAPFSVolume"))
  {
    *&v32 = 0xAAAAAAAAAAAAAAAALL;
    *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v84 = v32;
    v85 = v32;
    v82 = v32;
    v83 = v32;
    v80 = v32;
    v81 = v32;
    *parent = v32;
    v79 = v32;
    entry = -1431655766;
    if (IORegistryEntryGetLocationInPlane(v23, "IOService", parent))
    {
      sub_100045744("%s: error %d from IORegistryEntryGetLocationInPlane\n", v33, v34, v35, v36, v37, v38, v39, v6);
      goto LABEL_33;
    }

    *a2 = atoi(parent) - 1;
    if (IORegistryEntryGetParentEntry(v23, "IOService", &entry) || (IOObjectRelease(v23), v23 = entry, IORegistryEntryGetParentEntry(entry, "IOService", &entry)))
    {
      sub_100045744("%s: error %d from IORegistryEntryGetParentEntry\n", v43, v44, v45, v46, v47, v48, v49, v6);
      goto LABEL_33;
    }

    IOObjectRelease(v23);
    v23 = entry;
  }

  else if (!IOObjectConformsTo(v23, "AppleAPFSMedia"))
  {
    parent[0] = -1431655766;
    if (!IORegistryEntryCreateIterator(v23, "IOService", 1u, parent))
    {
      v40 = IOIteratorNext(parent[0]);
      if (v40)
      {
        v41 = v40;
        while (!IOObjectConformsTo(v41, "AppleAPFSMedia"))
        {
          IOObjectRelease(v41);
          v41 = IOIteratorNext(parent[0]);
          if (!v41)
          {
            goto LABEL_24;
          }
        }

        IOObjectRelease(parent[0]);
        v42 = v23;
        v23 = v41;
      }

      else
      {
LABEL_24:
        v42 = parent[0];
      }

      IOObjectRelease(v42);
    }
  }

  if (IORegistryEntryCreateCFProperties(v23, &properties, kCFAllocatorDefault, 0))
  {
    sub_100045744("%s: error %d from IORegistryEntryCreateCFProperties\n", v50, v51, v52, v53, v54, v55, v56, v6);
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(properties, @"BSD Name");
  if (!Value)
  {
    sub_100045744("%s: can't get BSD name of container\n", v59, v60, v61, v62, v63, v64, v65, v6);
    goto LABEL_33;
  }

  memset(v77, 170, sizeof(v77));
  v76 = 0xAAAAAAAAAAAAAAAALL;
  strcpy(__s1, "/dev/r");
  if (!CFStringGetCString(Value, &__s1[6], 26, 0x8000100u))
  {
    sub_100045744("%s: can't create path to container\n", v66, v67, v68, v69, v70, v71, v72, v6);
LABEL_33:
    v31 = 0;
    if (!v23)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v31 = 1;
  if (v23)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (properties)
  {
    CFRelease(properties);
  }

  if (v31)
  {
    return strdup(__s1);
  }

  return 0;
}

uint64_t start(int a1, char *const *a2)
{
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  v55 = 0u;
  v56 = 0xFFFFFFFFFFFFFFFFLL;
  DWORD1(v57) = 1;
  srandomdev();
  sub_100049B70();
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v50 = 0;
  v51 = 0;
  v7 = 0;
  v8 = 0;
  while (2)
  {
    v54 = 0;
    v9 = getopt_long(a1, a2, "b:cCdE:fFglnMopqr:sSWxXyZTD", &off_10007C000, &v54);
    v17 = 1;
    switch(v9)
    {
      case 'C':
        BYTE1(v58) = 1;
        goto LABEL_41;
      case 'D':
        v8 |= 0x100u;
        BYTE4(v58) = 1;
        goto LABEL_41;
      case 'E':
        if (optarg)
        {
          if (*optarg == 45 && !optarg[1])
          {
            v27 = __stdoutp;
          }

          else
          {
            v27 = fopen(optarg, "w");
          }

          *&v59 = v27;
          v6 |= v27 == 0;
        }

        goto LABEL_41;
      case 'F':
        LOBYTE(v58) = 1;
        goto LABEL_41;
      case 'G':
      case 'H':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
      case 'N':
      case 'O':
      case 'P':
      case 'Q':
      case 'R':
      case 'U':
      case 'V':
      case 'Y':
      case '[':
      case '\\':
      case ']':
      case '^':
      case '_':
      case 'a':
      case 'e':
      case 'h':
      case 'i':
      case 'j':
      case 'k':
      case 'm':
      case 't':
      case 'u':
      case 'v':
      case 'w':
        goto LABEL_50;
      case 'M':
        HIBYTE(v57) = 1;
        goto LABEL_41;
      case 'S':
        v8 |= 0x10u;
        BYTE14(v57) = 1;
        goto LABEL_41;
      case 'T':
        v8 |= 0x80u;
        BYTE3(v58) = 1;
        goto LABEL_41;
      case 'W':
        BYTE2(v58) = 1;
        goto LABEL_41;
      case 'X':
        if (os_variant_has_internal_content())
        {
          BYTE6(v58) = 1;
          goto LABEL_41;
        }

        v17 = v5;
        v50 = 1;
        goto LABEL_42;
      case 'Z':
        BYTE4(v51) = 1;
        goto LABEL_41;
      case 'b':
        dword_10007C048 = strtoul(optarg, 0, 10) << 10;
        goto LABEL_41;
      case 'c':
        byte_10009B0F0 = 1;
        goto LABEL_41;
      case 'd':
        HIDWORD(v56) = 1;
        goto LABEL_41;
      case 'f':
        goto LABEL_42;
      case 'g':
        v28 = 2;
        goto LABEL_30;
      case 'l':
        v8 |= 1u;
        v4 = 1;
        BYTE10(v57) = 1;
        goto LABEL_41;
      case 'n':
        v8 |= 4u;
        LODWORD(v57) = 1;
        BYTE9(v57) = 1;
        goto LABEL_41;
      case 'o':
        v8 |= 0x20u;
        BYTE13(v57) = 1;
        goto LABEL_41;
      case 'p':
        v7 = 1;
        goto LABEL_41;
      case 'q':
        BYTE8(v57) = 1;
        if ((v8 & 2) == 0)
        {
          LODWORD(v57) = 1;
          BYTE9(v57) = 1;
        }

        v17 = v5;
        v8 |= 8u;
        goto LABEL_42;
      case 'r':
        v53 = 0xAAAAAAAAAAAAAAAALL;
        v26 = strtol(optarg, &v53, 0);
        if (*v53 || v26 < 0)
        {
          v30 = "Invalid file descriptor passed\n";
          goto LABEL_53;
        }

        DWORD1(v56) = v26;
        goto LABEL_41;
      case 's':
        v8 |= 0x40u;
        BYTE11(v57) = 1;
        goto LABEL_41;
      case 'x':
        v28 = 3;
LABEL_30:
        DWORD1(v57) = v28;
        goto LABEL_41;
      case 'y':
        LODWORD(v57) = 2;
        v8 |= 2u;
        BYTE9(v57) = 0;
        BYTE14(v57) = 0;
        goto LABEL_41;
      default:
        if (!v9)
        {
          if (optarg)
          {
            __endptr = 0xAAAAAAAAAAAAAAAALL;
            v18 = strtol(optarg, &__endptr, 0);
            if (*__endptr || v18 > 0x64)
            {
              v30 = "Invalid volume index passed\n";
              goto LABEL_53;
            }

            DWORD2(v56) = v18;
            LOBYTE(v51) = 1;
          }

LABEL_41:
          v17 = v5;
LABEL_42:
          v5 = v17;
          continue;
        }

        if (v9 != -1 || (v29 = optind, a1 - optind != 1))
        {
LABEL_50:
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          return 64;
        }

        if ((v8 & 2) != 0 && (v8 & 5) != 0)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Conflicting options: [ -y ] option cannot be run with the [ -n | -l ] options\n";
          goto LABEL_53;
        }

        if ((v8 & 0xD) == 1)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Missing required option: [ -l ] option requires the [ -n ] or [ -q ] option\n";
          goto LABEL_53;
        }

        if ((v8 & 0x14) == 0x10)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Missing required option: [ -S ] option requires the [ -n ] option\n";
          goto LABEL_53;
        }

        if ((v8 & 0x20) != 0 && (v8 & 0xC) != 0)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Conflicting options: [ -o ] option cannot be run with the [ -n | -q ] options\n";
          goto LABEL_53;
        }

        if ((v8 & 0x80) != 0 && (v8 & 0xC) != 0)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Conflicting options: [ -T ] option cannot be run with the [ -n | -q ] options\n";
          goto LABEL_53;
        }

        if ((v8 & 0x180) == 0x100)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Missing required option: [ -D ] option requires the [ -T ] option\n";
          goto LABEL_53;
        }

        if ((~v8 & 0x48) == 0)
        {
          sub_1000038FC(v9, v10, v11, v12, v13, v14, v15, v16, v49);
          v30 = "Conflicting options: [ -s ] option cannot be run with the [ -q ] option\n";
          goto LABEL_53;
        }

        qword_10009BBA8 = a2[optind];
        byte_10009BBB0 = v4;
        sub_100001AA0();
        sub_10001DAC0();
        atexit(sub_10001D998);
        if (v51)
        {
          if ((v5 & 1) == 0)
          {
            goto LABEL_72;
          }

LABEL_84:
          sub_100045744("option -f is not implemented, ignoring\n", v32, v33, v34, v35, v36, v37, v38, v49);
          if (v6)
          {
            goto LABEL_85;
          }

LABEL_73:
          if (v7)
          {
            goto LABEL_74;
          }
        }

        else
        {
          sub_100044EF0();
          if (v5)
          {
            goto LABEL_84;
          }

LABEL_72:
          if ((v6 & 1) == 0)
          {
            goto LABEL_73;
          }

LABEL_85:
          sub_100045744("Could not open error file: %s\n", v32, v33, v34, v35, v36, v37, v38, optarg);
          if (v7)
          {
LABEL_74:
            sub_100045744("option -p is not implemented, ignoring\n", v32, v33, v34, v35, v36, v37, v38, v49);
          }
        }

        if ((v51 & 0x100000000) != 0)
        {
          sub_100045744("option -Z is deprecated, ignoring\n", v32, v33, v34, v35, v36, v37, v38, v49);
        }

        if (v50)
        {
          sub_100045744("option -X is specified but FSKit is not present, ignoring\n", v32, v33, v34, v35, v36, v37, v38, v49);
        }

        v39 = a2[v29];
        if (v51)
        {
          __endptr = 0xAAAAAAAAAAAAAAAALL;
          if (strnlen(v39, 9uLL) < 9 || strncmp(v39, "/dev/fd/", 8uLL))
          {
            v30 = "Invalid disk file-descriptor path\n";
            goto LABEL_53;
          }

          v48 = strtol(v39 + 8, &__endptr, 0);
          v30 = "Invalid disk file-descriptor passed\n";
          if (!*__endptr && v48 < 0x80000000)
          {
            LODWORD(v56) = v48;
            *&v55 = v39;
            *(&v55 + 1) = strdup(v39);
            return sub_10004C028(&v55);
          }

LABEL_53:
          sub_100045428(v30, v19, v20, v21, v22, v23, v24, v25, v49);
          return 64;
        }

        else if (access(v39, 0))
        {
          v40 = __error();
          strerror(*v40);
          sub_10004565C("unable to access %s: %s\n", v41, v42, v43, v44, v45, v46, v47, v39);
          return 66;
        }

        else
        {
          *&v55 = v39;
          *(&v55 + 1) = sub_100003A24(v39, &v56 + 2);
          if (!*(&v55 + 1))
          {
            *(&v55 + 1) = strdup(v39);
            DWORD2(v56) = -1;
          }

          return sub_10004C028(&v55);
        }
    }
  }
}

uint64_t sub_100004474(uint64_t a1, int a2, int a3, unsigned __int8 *src)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v6;
  v15[2] = v6;
  *dst = v6;
  v15[0] = v6;
  v13[0] = dst;
  v13[2] = 0xAAAAAAAA00000000;
  uuid_copy(dst, src);
  uuid_copy(v15, src);
  v13[1] = 32;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v11 = v7;
  v12 = v7;
  v10[2] = v7;
  v10[3] = v7;
  v10[0] = v7;
  v10[1] = v7;
  v8 = sub_10000457C(v10, v13);
  if (!v8)
  {
    v8 = sub_10001C898(a1);
    free(v11[1]);
  }

  return v8;
}

uint64_t sub_10000457C(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = malloc_type_calloc(1uLL, v4 + 16, 0x1000040451B5BE8uLL);
  v6 = v5;
  if (v5)
  {
    v5[2] = v4;
    v5[3] = v4;
    memcpy(v5 + 8, v3, v4);
    result = 0;
    *v6 |= 0x10u;
  }

  else
  {
    result = 12;
  }

  *(a1 + 72) = v6;
  return result;
}

uint64_t sub_100004610(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v83 = 0;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  *__s1 = 0u;
  v6 = sub_10000D7DC();
  memset(v73, 0, sizeof(v73));
  memset(v72, 170, sizeof(v72));
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v71 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v65 = 0;
  v66 = 0;
  v7 = *(qword_10009BA60 + 20);
  v74 = 0;
  if (v7 < 0)
  {
    v9 = 22;
LABEL_12:
    v25 = strerror(v9);
    sub_10004565C("Failed to get password for encrypted volume from provided file descriptor: %s\n", v26, v27, v28, v29, v30, v31, v32, v25);
    return v9;
  }

  v8 = v6;
  v9 = sub_10004F5EC(v7, __s1, 0x80uLL, &v74);
  if (!v9)
  {
    __s1[v74] = 0;
  }

  if (close(v7))
  {
    v10 = __error();
    v11 = strerror(*v10);
    sub_10004565C("Failed to close password file descriptor: %s\n", v12, v13, v14, v15, v16, v17, v18, v11);
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v72[2] = __s1;
  v72[3] = strnlen(__s1, 0x80uLL);
  v22 = sub_10000492C(a1, *(a1[1] + 1296), *(a1[1] + 1304), (a1[1] + 72), &v65, v19, v20, v21);
  v23 = v65;
  if (v22)
  {
    v9 = v22;
  }

  else
  {
    v34 = sub_100004A1C(v65 + 32, (*(a2 + 40) + 240), 2, 0);
    if (v34)
    {
      v42 = *(v34 + 18);
      v72[0] = v34 + 24;
      v72[1] = v42;
      v43 = sub_100004A1C(v23 + 32, (*(a2 + 40) + 240), 3, 0);
      if (v43)
      {
        v51 = sub_10000492C(a1, *(v43 + 24), *(v43 + 32), (*(a2 + 40) + 240), &v66, v48, v49, v50);
        if (v51)
        {
          v9 = v51;
          v24 = v66;
        }

        else
        {
          v67 = malloc_type_calloc(1uLL, 0x40uLL, 0xDCEA155CuLL);
          v24 = v66;
          if (v67)
          {
            v52 = 0;
            v68 = 64;
            LODWORD(v69) = 0;
            while (1)
            {
              v53 = sub_100004A1C(v24 + 32, byte_100076D0C, 3, v52);
              if (!v53)
              {
                break;
              }

              v52 = v53;
              v54 = *(v53 + 18);
              v70 = v53 + 24;
              v71 = v54;
              if (!(*(v8 + 8))(v73, &v72[2], &v70, v72, &v67))
              {
                v9 = sub_10000457C(a3, &v67);
                goto LABEL_10;
              }
            }

            v9 = 1;
            v55 = strerror(1);
            sub_10004565C("Failed to unwrap encrypted volume keybag using the provided password: %s\n", v56, v57, v58, v59, v60, v61, v62, v55);
          }

          else
          {
            v9 = 12;
          }
        }
      }

      else
      {
        v64 = *(a2 + 40) + 704;
        sub_10004565C("Failed to get keybag entry with tag %d for volume %s\n", v44, v45, v46, v47, v48, v49, v50, 3);
        v24 = 0;
        v9 = 2;
      }

      goto LABEL_10;
    }

    v9 = 2;
    v63 = *(a2 + 40) + 704;
    sub_10004565C("Failed to get keybag entry with tag %d for volume %s\n", v35, v36, v37, v38, v39, v40, v41, 2);
  }

  v24 = 0;
LABEL_10:
  free(v23);
  free(v24);
  free(v67);
  return v9;
}

uint64_t sub_10000492C(uint64_t *a1, size_t a2, size_t count, unsigned __int8 *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (count >> 20 || (v8 = count, v9 = a2, a2 = *(a1[1] + 36), count * a2 >= 0x100000))
  {
    sub_10004565C("Keybag size is too large\n", a2, count, a4, a5, a6, a7, a8, v33);
    return 92;
  }

  else
  {
    v13 = malloc_type_calloc(count, a2, 0xE829BD6FuLL);
    if (v13)
    {
      v21 = v13;
      v22 = sub_100004474(*a1, v9, v8, a4);
      v23 = v22;
      if (v22)
      {
        v24 = strerror(v22);
        sub_10004565C("Failed to get keybag : %s\n", v25, v26, v27, v28, v29, v30, v31, v24);
        free(v21);
      }

      else
      {
        *a5 = v21;
      }
    }

    else
    {
      sub_10004565C("Failed to allocate memory for keybag\n", v14, v15, v16, v17, v18, v19, v20, v33);
      return 12;
    }
  }

  return v23;
}

unint64_t sub_100004A1C(uint64_t a1, unsigned __int8 *uu, int a3, uint64_t a4)
{
  v6 = a1 + *(a1 + 4);
  if (a4)
  {
    v7 = *(a4 + 18);
    v8 = v7 + 24;
    v9 = v7 - ((v7 + 24) & 0xF) + 40;
    if ((v8 & 0xF) == 0)
    {
      v9 = v8;
    }

    v10 = a4 + v9;
  }

  else
  {
    v10 = a1 + 16;
  }

  while (v10 < v6)
  {
    if (*(v10 + 16) == a3 && (uuid_is_null(uu) || !uuid_compare(uu, v10)))
    {
      return v10;
    }

    v11 = *(v10 + 18);
    v12 = v11 + 24;
    v13 = v11 - ((v11 + 24) & 0xF) + 40;
    if ((v12 & 0xF) == 0)
    {
      v13 = v12;
    }

    v10 += v13;
  }

  return 0;
}

BOOL sub_100004AE0(uint64_t a1, unsigned int a2)
{
  if (a2 < 0x19)
  {
    return 0;
  }

  if (*a1 != 0x6C7070612E6D6F63 || *(a1 + 7) != 0x2E736670612E656CLL)
  {
    return 0;
  }

  return *(a1 + 15) == 0x726F746167727570 && *(a1 + 23) == 11897;
}

uint64_t sub_100004B50(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a4;
  v8 = a3;
  v48[0] = a4;
  v48[1] = a5;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = a3;
  v18 = sub_10002D04C(a1->i64, a2, &v46);
  if (!v18)
  {
    sub_10004565C("no snap_meta tree entry found for omap_snap entry with xid %llu\n", v11, v12, v13, v14, v15, v16, v17, v8);
    if ((a6 & 1) == 0 && !sub_10004758C(qword_10009BA58, "Delete omap_snap entries? ", v19, v20, v21, v22, v23, v24, v45))
    {
      return 89;
    }

    LODWORD(v48[0]) = v7 | 1;
    v25 = sub_10003B12C(v46, 0, &v47, 8, v48, 0x10u);
    if (v25)
    {
      v18 = v25;
      v26 = strerror(v25);
      sub_10004565C("error updating omap_snap entry: %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
      v34 = 657;
LABEL_8:
      sub_100049C40(v34, v18);
      return v18;
    }

    v35 = sub_1000316E8(a1, *(*(a2 + 72) + 24), *(a2 + 112), *(*(a2 + 40) + 8), *(*(a2 + 72) + 8), *(a1->i64[1] + 16), 2);
    v18 = v35;
    if (v35)
    {
      v36 = strerror(v35);
      sub_10004565C("error updating the reap list: %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
      v34 = 658;
      goto LABEL_8;
    }
  }

  return v18;
}

uint64_t sub_100004C90(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char a5)
{
  v72 = 0xAAAAAAAAAAAAAAAALL;
  v15 = sub_10002D2DC(a1, a2, &v72);
  if (!v15)
  {
    sub_10004565C("no omap_snap tree entry found for snap_meta entry with xid %llu\n", v8, v9, v10, v11, v12, v13, v14, *a3);
    if ((a5 & 1) == 0 && !sub_10004758C(qword_10009BA58, "Delete snap_meta entries? ", v16, v17, v18, v19, v20, v21, v70))
    {
      return 89;
    }

    v22 = sub_10002B594(v72, *(a4 + 48), (a4 + 50));
    if (v22)
    {
      v15 = v22;
      if (v22 != 2)
      {
        v51 = strerror(v22);
        sub_10004565C("failed to remove snap_name entry: %s\n", v52, v53, v54, v55, v56, v57, v58, v51);
        v59 = 660;
        goto LABEL_15;
      }

      sub_100045744("tried to remove snap_name entry but it's not there!\n", v23, v24, v25, v26, v27, v28, v29, v70);
    }

    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v74[10] = v30;
    *__str = v30;
    *v74 = v30;
    v31 = snprintf(__str, 0x2AuLL, "%s%s%llx", "com.apple.apfs.", "purgatory.", *a3 & 0xFFFFFFFFFFFFFFFLL);
    v32 = malloc_type_malloc(v31 + 51, 0x10000401FD4EAF9uLL);
    if (!v32)
    {
      sub_10004565C("failed to allocate memory for repair\n", v33, v34, v35, v36, v37, v38, v39, v71);
      v15 = 12;
      v59 = 704;
      v60 = 12;
LABEL_16:
      sub_100049C40(v59, v60);
      return v15;
    }

    v40 = v32;
    v41 = v31 + 1;
    v32[24] = v41;
    memcpy(v32 + 25, __str, v41);
    v42 = sub_10003B12C(v72, 0, a3, 8, v40, v41 + 50);
    if (v42)
    {
      v15 = v42;
      v43 = strerror(v42);
      sub_10004565C("error updating snap_meta entry: %s\n", v44, v45, v46, v47, v48, v49, v50, v43);
      sub_100049C40(0x295, v15);
      free(v40);
      return v15;
    }

    v15 = sub_10002B470(v72, v40[24], v40 + 25, *a3 & 0xFFFFFFFFFFFFFFFLL);
    free(v40);
    if (!v15)
    {
      return v15;
    }

    v61 = strerror(v15);
    sub_10004565C("failed to insert snap_name entry: %s\n", v62, v63, v64, v65, v66, v67, v68, v61);
    v59 = 662;
LABEL_15:
    v60 = v15;
    goto LABEL_16;
  }

  return v15;
}

uint64_t sub_100004ED8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v62 = 0xAAAAAAAAAAAAAAAALL;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v57 = 0u;
  memset(v58, 0, sizeof(v58));
  BYTE8(v59) = 1;
  v55 = 0u;
  v56 = 0u;
  memset(v54, 0, sizeof(v54));
  BYTE8(v55) = 1;
  if (*(*(a2 + 72) + 56))
  {
    v6 = sub_10002D04C(a1, a2, &v63);
    if (v6)
    {
      v14 = v6;
      sub_10004565C("unable to init omap_snap tree for snapshot repair\n", v7, v8, v9, v10, v11, v12, v13, v53);
      v15 = 663;
LABEL_15:
      sub_100049C40(v15, v14);
      return v14;
    }

    v16 = sub_10003A444(v58, v63, 0, 0, 0);
    if (v16)
    {
      v14 = v16;
      v17 = strerror(v16);
      sub_10004565C("unable to init omap_snap tree iterator for snapshot repair: %s\n", v18, v19, v20, v21, v22, v23, v24, v17);
      v15 = 664;
      goto LABEL_15;
    }
  }

  if (*(*(a2 + 40) + 152))
  {
    v25 = sub_10002D2DC(a1, a2, &v62);
    if (v25)
    {
      v14 = v25;
      sub_10004565C("unable to init snap_meta tree for snapshot repair\n", v26, v27, v28, v29, v30, v31, v32, v53);
      v33 = 665;
      goto LABEL_11;
    }

    v34 = sub_10003A444(v54, v62, 0, 0, 0);
    if (v34)
    {
      v14 = v34;
      v35 = strerror(v34);
      sub_10004565C("unable to init snap_meta tree iterator for snapshot repair: %s\n", v36, v37, v38, v39, v40, v41, v42, v35);
      v33 = 666;
LABEL_11:
      sub_100049C40(v33, v14);
      if (*&v58[0])
      {
        (*&v58[0])(v58);
      }

      return v14;
    }
  }

  v43 = sub_10002C6E8(v58, v54, sub_10000508C, a3);
  v14 = v43;
  if (v43)
  {
    v44 = strerror(v43);
    sub_10004565C("error iterating trees during snapshot repair: %s\n", v45, v46, v47, v48, v49, v50, v51, v44);
    v15 = 667;
    goto LABEL_15;
  }

  return v14;
}

uint64_t sub_10000508C(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v9 = *(a1 + 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  if (*a1 && (*(a1 + 16) < 8u || *(a1 + 20) < 0x10u))
  {
    return 22;
  }

  if (!v11)
  {
    v14 = *v10;
    v15 = *v9;
    v16 = v9[1];
    v17 = a4;
    return sub_100005160(v17, v14, v15, v16, a5, a6, a7, a8);
  }

  if (*(a2 + 16) < 8u)
  {
    return 22;
  }

  v18 = *v11;
  if (*v11 >> 60 != 1)
  {
    result = 0;
    *a3 = 2;
    return result;
  }

  if (*(a2 + 20) < 0x32u)
  {
    return 22;
  }

  if (!v10)
  {
    return sub_1000051E4(a4, v11, v12);
  }

  v19 = *v10;
  if (*v10 < (v18 & 0xFFFFFFFFFFFFFFFuLL))
  {
    *a3 = 1;
    v15 = *v9;
    v16 = v9[1];
    v17 = a4;
    v14 = v19;
    return sub_100005160(v17, v14, v15, v16, a5, a6, a7, a8);
  }

  if ((v18 & 0xFFFFFFFFFFFFFFFuLL) < v19)
  {
    *a3 = 2;
    return sub_1000051E4(a4, v11, v12);
  }

  return 0;
}

uint64_t sub_100005160(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a2;
  if (a3)
  {
    return 0;
  }

  sub_10004565C("no snap_meta tree entry found for omap_snap entry with xid %llu\n", a2, a3, a4, a5, a6, a7, a8, a2);
  sub_100049C40(0x290, 92);
  return sub_100027D7C(a1, 3, 0, 0, 1, &v10, 8u, v11, 0x10u);
}

uint64_t sub_1000051E4(_DWORD *a1, char *a2, uint64_t a3)
{
  v6 = sub_100004AE0(a3 + 50, *(a3 + 48));
  v14 = *a2 & 0xFFFFFFFFFFFFFFFLL;
  if (v6)
  {
    sub_100045744("found a snapshot in the purgatory (xid %llu) with no corresponding omap entry\n", v7, v8, v9, v10, v11, v12, v13, *a2);
    return 0;
  }

  else
  {
    sub_10004565C("no omap_snap tree entry found for snap_meta entry with xid %llu\n", v7, v8, v9, v10, v11, v12, v13, *a2);
    sub_100049C40(0x293, 92);
    return sub_100027D7C(a1, 4, 0, 0, 1, a2, 8u, a3, *(a3 + 48) + 50);
  }
}

void sub_100005298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 48;
  if (!a3)
  {
    v3 = 40;
  }

  v4 = *(a2 + v3);
  byte_10007CF40 = 0;
  v5 = *(v4 + 964);
  if (v5 > 0x3F)
  {
    if (v5 != 576 && v5 != 64)
    {
      return;
    }
  }

  else
  {
    if (*(v4 + 964))
    {
      v6 = v5 == 2;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      return;
    }
  }

  if (*(v4 + 1056) == *(v4 + 16) && (a3 || (*(*(a2 + 40) + 1064) & 2) == 0))
  {
    if (*(v4 + 1072))
    {
      if (!sub_100039748(&unk_10007CF48, 0, 0, 0x8000000, 2, 0, 0, 4096, 4, 8, 0, 0, sub_100030C54))
      {
        sub_10003B84C(&unk_10007CF48, 0, 64);
      }

      if (sub_10001C108(&unk_10007CF48, "doc id", sub_1000053DC))
      {
        sub_100045744("failed to register the doc id tree in the fsck memory storage\n", v7, v8, v9, v10, v11, v12, v13, v14);
        sub_100049C40(0x584, 12);
      }
    }

    dword_10007CF88 = 0;
    byte_10007CF40 = 1;
  }
}

uint64_t sub_1000053DC()
{
  result = sub_10003B928(&unk_10007CF48, 0);
  byte_10007CF40 = 0;
  return result;
}

uint64_t sub_100005408(uint64_t *a1, int8x16_t *a2, unint64_t a3, unsigned int *a4, uint64_t a5, _DWORD *a6)
{
  v6 = a2[3].i64[1];
  v94 = *a4;
  if (byte_10007CF40 != 1)
  {
    return 0;
  }

  v93 = 0xAAAAAAAAAAAAAAAALL;
  v11 = v6;
  if (qword_10007CF80)
  {
    v91 = 8;
    v92 = 4;
    v14 = sub_1000397B8(dword_10007CF48, 0, 0, &v94, &v92, 4u, &v93, &v91);
    if (!v14)
    {
      if (v93)
      {
        if (v93 == a3)
        {
          goto LABEL_24;
        }

        v86 = *a4;
        sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record has file-id %llu\n", v15, v16, v17, v18, v19, v20, v21, a3);
        v32 = sub_100049C40(0x3FB, 92);
        if (v6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v88 = *a4;
        sub_10004565C("inode with file-id %llu has doc-id %u but doc-id is already in use\n", v15, v16, v17, v18, v19, v20, v21, a3);
        v32 = sub_100049C40(0x3FC, 92);
        if (v6)
        {
          goto LABEL_17;
        }

        if (!sub_10004758C(qword_10009BA58, "Allocate new doc-id %u for file-id %llu? ", v34, v35, v36, v37, v38, v39, *(a5 + 48)))
        {
          return 92;
        }

        v75 = *(a5 + 48);
        *(a5 + 48) = v75 + 1;
        *a4 = v75;
        v76 = sub_100046EA0(a1, a2);
        if (v76)
        {
          v22 = v76;
          v77 = strerror(v76);
          sub_10004565C("failed to write apfs superblock : %s\n", v78, v79, v80, v81, v82, v83, v84, v77);
          v57 = 1021;
          goto LABEL_27;
        }

        *a6 = 1;
        v94 = *a4;
      }

      v93 = a3;
LABEL_22:
      v48 = sub_100027D7C(a2[48].i32, 9, 2, 0, 1, &v94, 4u, &v93, 8u);
      if (v48)
      {
        v22 = v48;
        v49 = v94;
        strerror(v48);
        sub_10004565C("failed to insert doc-id tree repair for doc-id %u, file-id %llu : %s\n", v50, v51, v52, v53, v54, v55, v56, v49);
        v57 = 1025;
LABEL_27:
        sub_100049C40(v57, v22);
        return v22;
      }

      goto LABEL_24;
    }

    v22 = v14;
    if (v14 != 2)
    {
      v40 = *a4;
      strerror(v14);
      sub_10004565C("failed to lookup doc-id %u error : %s\n", v41, v42, v43, v44, v45, v46, v47, v40);
      sub_100049C40(0x400, v22);
LABEL_19:
      v31 = 0;
      goto LABEL_20;
    }

    v11 = a2[3].i64[1];
  }

  v90 = -86;
  v23 = sub_10003FD88(a1, a2, v11, a3, &v90);
  if (v23)
  {
LABEL_18:
    v22 = v23;
    goto LABEL_19;
  }

  if (v90)
  {
LABEL_8:
    v31 = 0;
    v22 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    v87 = *a4;
    sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", v24, v25, v26, v27, v28, v29, v30, a3);
    v32 = sub_100049C40(0x3FF, 92);
LABEL_17:
    v23 = sub_10002797C(v32, v33, v34, v35, v36, v37, v38, v39);
    goto LABEL_18;
  }

  v68 = a2[2].i64[1];
  if ((*(v68 + 1064) & 1) != 0 && *(v68 + 1088) < a3)
  {
    goto LABEL_8;
  }

  v89 = *a4;
  sub_10004565C("inode with file-id %llu has doc-id %u but doc-id tree record is missing\n", v24, v25, v26, v27, v28, v29, v30, a3);
  sub_100049C40(0x3FE, 92);
  if (*(a2[2].i64[1] + 1072))
  {
    v22 = 0;
    v93 = a3;
    v31 = 1;
  }

  else
  {
    if (sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? ", v69, v70, v71, v72, v73, v74, v85))
    {
      v23 = sub_1000057C4(a1, a2);
      goto LABEL_18;
    }

    v31 = 0;
    v22 = 92;
  }

LABEL_20:
  if (!v22)
  {
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_24:
    if (qword_10007CF80)
    {
      v93 = 0;
      v58 = sub_10003B12C(dword_10007CF48, 0, &v94, 4, &v93, 8u);
      v22 = v58;
      if (!v58)
      {
        ++dword_10007CF88;
        return v22;
      }

      v59 = v94;
      strerror(v58);
      sub_10004565C("failed to mark cached doc-id tree record %d as verified error : %s\n", v60, v61, v62, v63, v64, v65, v66, v59);
      v57 = 1026;
      goto LABEL_27;
    }

    return 0;
  }

  return v22;
}

uint64_t sub_1000057C4(uint64_t *a1, int8x16_t *a2)
{
  *(a2[2].i64[1] + 1064) = *(a2[2].i64[1] + 1064) & 0xFFFFFFFC | 2;
  v2 = sub_100046EA0(a1, a2);
  v3 = v2;
  if (v2)
  {
    v4 = strerror(v2);
    sub_10004565C("failed to write apfs superblock : %s\n", v5, v6, v7, v8, v9, v10, v11, v4);
    sub_100049C40(0x3FA, v3);
  }

  else
  {
    byte_10007CF40 = 0;
  }

  return v3;
}

uint64_t sub_10000583C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = -1431655766;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  if (qword_10007CF80 && (v36 = 0, sub_10003B724(&unk_10007CF48, 0, &v36), v36 != dword_10007CF88))
  {
    v34 = 8;
    v35 = 4;
    for (i = sub_100039CDC(&unk_10007CF48, 0, &v38, &v35, &v37, &v34); !i; i = sub_1000397B8(&unk_10007CF48, 0, 2u, &v38, &v33, 4u, &v37, &v32))
    {
      if (v37)
      {
        sub_100045744("doc-id tree: record exists for doc-id %u, file-id %llu but no inode references this doc-id\n", v7, v8, v9, v10, v11, v12, v13, v38);
        v14 = sub_100049C40(0x403, 92);
        if (a3)
        {
          sub_10002797C(v14, v15, v16, v17, v18, v19, v20, v21);
        }

        else
        {
          v22 = sub_100027D7C((a2 + 768), 9, 0, 0, 0, &v38, 4u, 0, 0);
          if (v22)
          {
            v5 = v22;
            v24 = v38;
            strerror(v22);
            sub_10004565C("failed to add doc-id tree repair record, doc-id %u : %s\n", v25, v26, v27, v28, v29, v30, v31, v24);
            sub_100049C40(0x404, v5);
            goto LABEL_13;
          }
        }
      }

      v32 = 8;
      v33 = 4;
    }

    if (i == 2)
    {
      v5 = 0;
    }

    else
    {
      v5 = i;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_13:
  sub_10003B928(&unk_10007CF48, 0);
  byte_10007CF40 = 0;
  return v5;
}

uint64_t sub_1000059E8(uint64_t *a1, int8x16_t *a2, uint64_t a3)
{
  v6 = 6;
  if (!a3)
  {
    v6 = 5;
  }

  v7 = a2->i64[v6];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v92[2] = v8;
  v92[3] = v8;
  v92[0] = v8;
  v92[1] = v8;
  v9 = sub_100039748(v92, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, *(v7 + 1072), sub_100030C54);
  if (v9)
  {
    v10 = v9;
    v11 = strerror(v9);
    sub_10004565C("failed to initialize the doc-id tree: %s\n", v12, v13, v14, v15, v16, v17, v18, v11);
    v19 = 1031;
LABEL_5:
    sub_100049C40(v19, v10);
    return v10;
  }

  if (*(v7 + 1072))
  {
    if (byte_10007CF40 == 1)
    {
      LODWORD(v91[0]) = 0;
      if (qword_10007CF80)
      {
        v21 = sub_10003570C(v92, a3, sub_100005D60, v91, 0, 0);
        v10 = v21;
        if (!v21)
        {
          goto LABEL_23;
        }

        v22 = strerror(v21);
        sub_10004565C("failed to populate cached doc-id tree : %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
        v30 = sub_100049C40(0x406, v10);
        byte_10007CF40 = 0;
        if (LODWORD(v91[0]))
        {
LABEL_24:
          sub_10003B928(dword_10007CF48, 0);
LABEL_25:
          if (v10)
          {
            return v10;
          }

          goto LABEL_26;
        }

        if (a3)
        {
          v38 = sub_10002797C(v30, v31, v32, v33, v34, v35, v36, v37);
        }

        else
        {
          if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? ", v32, v33, v34, v35, v36, v37, v88))
          {
            goto LABEL_23;
          }

          v38 = sub_1000057C4(a1, a2);
        }

        v10 = v38;
LABEL_23:
        if (byte_10007CF40)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v39 = sub_10003570C(v92, a3, 0, 0, 0, 0);
      if (v39)
      {
        v10 = v39;
        v40 = strerror(v39);
        sub_10004565C("failed to traverse doc-id tree : %s\n", v41, v42, v43, v44, v45, v46, v47, v40);
        v48 = sub_100049C40(0x40A, v10);
        if (a3)
        {
          v56 = sub_10002797C(v48, v49, v50, v51, v52, v53, v54, v55);
        }

        else
        {
          if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree building on next mount? ", v50, v51, v52, v53, v54, v55, v89))
          {
            return v10;
          }

          v56 = sub_1000057C4(a1, a2);
        }

        v10 = v56;
        goto LABEL_25;
      }
    }
  }

LABEL_26:
  v57 = *(v7 + 1080);
  if (!v57)
  {
    return 0;
  }

  *&v58 = 0xAAAAAAAAAAAAAAAALL;
  *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v91[2] = v58;
  v91[3] = v58;
  v91[0] = v58;
  v91[1] = v58;
  v59 = sub_100039748(v91, a1, a2, *(v7 + 1068) & 0xC0000000, *(v7 + 1068), 34, 0, *(a1[1] + 36), 4, 8, 0, v57, sub_100030C54);
  if (v59)
  {
    v10 = v59;
    v60 = strerror(v59);
    sub_10004565C("failed to initialize the prev doc-id tree: %s\n", v61, v62, v63, v64, v65, v66, v67, v60);
    v19 = 1035;
    goto LABEL_5;
  }

  v68 = sub_10003570C(v91, a3, 0, 0, 0, 0);
  if (!v68)
  {
    return 0;
  }

  v69 = v68;
  v70 = strerror(v68);
  sub_10004565C("failed to traverse prev doc-id tree : %s\n", v71, v72, v73, v74, v75, v76, v77, v70);
  v78 = sub_100049C40(0x40E, v69);
  if (a3)
  {
    return sub_10002797C(v78, v79, v80, v81, v82, v83, v84, v85);
  }

  v10 = 0;
  v87 = *(v7 + 964);
  if (v87 > 0x3F)
  {
    if (v87 != 64 && v87 != 576)
    {
      goto LABEL_40;
    }
  }

  else if (*(v7 + 964) && v87 != 2)
  {
LABEL_40:
    v10 = v69;
    if (!sub_10004758C(qword_10009BA58, "Mark volume for doc-id tree cleanup on next mount? ", v80, v81, v82, v83, v84, v85, v90))
    {
      return v10;
    }

    return sub_1000057C4(a1, a2);
  }

  return v10;
}

uint64_t sub_100005D60(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v12 = *(a2 + 56);
  if (a7)
  {
    *a7 = 0;
  }

  if (byte_10007CF40 != 1)
  {
    return 0;
  }

  if (*a5)
  {
    v13 = sub_10003B12C(dword_10007CF48, 0, a3, 4, a5, 8u);
    v14 = v13;
    if (v13)
    {
      v15 = *a3;
      v41 = *a5;
      strerror(v13);
      sub_10004565C("failed to insert cached doc-id record, doc-id %u,file-id %llu : %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
    }
  }

  else
  {
    sub_10004565C("invalid doc-id record, file-id is 0 for doc-id %u\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v23 = sub_100049C40(0x3F9, 92);
    if (v12)
    {
      v14 = sub_10002797C(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    else
    {
      v32 = sub_100027D7C((a2 + 768), 9, 0, 0, 1, a3, 4u, 0, 0);
      v14 = v32;
      if (v32)
      {
        v33 = *a3;
        strerror(v32);
        sub_10004565C("failed to add doc-id repair (deletion), doc-id %u : %s\n", v34, v35, v36, v37, v38, v39, v40, v33);
      }
    }
  }

  if (a7)
  {
    *a7 = v14;
  }

  return v14;
}

char *sub_100005EA4()
{
  if (!sub_100039748(&unk_10007CF90, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 80, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_10007CF90, 0, 64);
  }

  result = sub_10001C108(&unk_10007CF90, "file info", sub_100005F78);
  if (result)
  {
    sub_100045744("failed to register the file info tree in the fsck memory storage\n", v1, v2, v3, v4, v5, v6, v7, v8);

    return sub_100049C40(0x586, 12);
  }

  return result;
}

uint64_t sub_100005F78()
{
  if (qword_10007CFC8)
  {
    result = sub_10003B928(&unk_10007CF90, 0);
  }

  qword_10007D020 = 0;
  return result;
}

uint64_t sub_100005FD0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v9[0] = a5 & 0xFFFFFFFFFFFFFFFLL | 0xD000000000000000;
  v9[1] = a6 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
  if (a1)
  {
    return sub_100027D7C(a1, 7, a2, a3, a4, v9, 0x10u, a7, a8);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

void sub_10000604C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, uint64_t a8)
{
  if (qword_10007CFC8)
  {
    sub_100006178(a2);
    if (!v23)
    {
      if (byte_10007D01A == 1)
      {
        if (!a8)
        {
          a8 = a2;
        }

        sub_100045744("file info: found more than one attribution tag with matching computed hash, invalid entry (hash %llu)\n", v16, v17, v18, v19, v20, v21, v22, a8);
        sub_100049C40(0x557, 92);
        if (a7)
        {
          v24 = a7;
        }

        else
        {
          v24 = 9;
        }

        sub_100005FD0(a1, 0, 0, 1, v24, a8, 0, 0);
      }

      else
      {
        *&xmmword_10007CFD0 = a3;
        qword_10007CFE0 = a4;
        *&xmmword_10007CFF0 = a5;
        byte_10007D01A = 1;
        *&xmmword_10007D008 = a7;
        *(&xmmword_10007D008 + 1) = a8;
        word_10007D018 = a6;
      }
    }
  }
}

double sub_100006178(uint64_t a1)
{
  v9 = a1;
  if (!sub_100006A18(a1) && !qword_10007D020)
  {
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v4 = 0u;
    v2 = 80;
    v3 = 8;
    if ((sub_1000397B8(dword_10007CF90, 0, 0, &v9, &v3, 8u, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_10007D020 = v9;
      xmmword_10007CFF0 = v6;
      *&qword_10007D000 = v7;
      *(&xmmword_10007D008 + 8) = v8;
      result = *&v5;
      xmmword_10007CFD0 = v4;
      *&qword_10007CFE0 = v5;
    }
  }

  return result;
}

void sub_100006234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10007CFC8)
  {
    v4 = a2;
    sub_100006178(a2);
    if (!v13)
    {
      v14 = (*(&xmmword_10007CFD0 + 1))++ == -1;
      if (v14 << 63 >> 63 != v14)
      {
        sub_100045744("file info: computed count overflow for hash (%llu)\n", v6, v7, v8, v9, v10, v11, v12, v4);
        *(&xmmword_10007CFD0 + 1) = -1;
        sub_100049C40(0x51A, 84);
      }

      v15 = __CFADD__(qword_10007CFE8, a3);
      qword_10007CFE8 += a3;
      if (v15)
      {
        sub_100045744("file info: computed size overflow for hash (%llu)\n", v6, v7, v8, v9, v10, v11, v12, v4);
        qword_10007CFE8 = -1;
        sub_100049C40(0x51B, 84);
      }

      if (!qword_10007D000)
      {
        qword_10007D000 = a1;
      }
    }
  }
}

void sub_10000632C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    if (qword_10007CFC8)
    {
      sub_100006178(a1);
      if (!v11)
      {
        v12 = __OFADD__(*(&xmmword_10007CFF0 + 1), a2);
        *(&xmmword_10007CFF0 + 1) += a2;
        if (v12)
        {
          sub_100045744("file info: clone size overflow for hash (%llu)\n", v4, v5, v6, v7, v8, v9, v10, v2);
          *(&xmmword_10007CFF0 + 1) = 0x7FFFFFFFFFFFFFFFLL;
          sub_100049C40(0x555, 84);
        }
      }
    }
  }
}

void sub_1000063C4(uint64_t a1, uint64_t a2)
{
  if (qword_10007CFC8)
  {
    v3 = a1;
    sub_100006178(a1);
    if (!v11)
    {
      v12 = __CFADD__(qword_10007CFE8, a2);
      qword_10007CFE8 += a2;
      if (v12)
      {
        sub_100045744("file info: computed size overflow for hash (%llu)\n", v4, v5, v6, v7, v8, v9, v10, v3);
        qword_10007CFE8 = -1;
        sub_100049C40(0x567, 84);
      }
    }
  }
}

uint64_t sub_100006454(uint64_t a1, void *a2, uint64_t a3)
{
  if (!qword_10007CFC8)
  {
    return 0;
  }

  v6 = sub_100006A18(0);
  if (v6)
  {
    v7 = v6;
    if (qword_10007CFC8)
    {
      sub_10003B928(dword_10007CF90, 0);
    }

    qword_10007D020 = 0;
    return v7;
  }

  v69[0] = 0;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  if (a3)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 + 96;
  }

  v63[0] = 0;
  v63[1] = 0;
  v63[2] = v8;
  v9 = malloc_type_malloc(0xEE0uLL, 0xA200E25EuLL);
  v10 = sub_1000019A8();
  if (!v9)
  {
    sub_100045744("file info: failed to allocate memory\n", v11, v12, v13, v14, v15, v16, v17, v49);
    v7 = 12;
    sub_100049C40(0x51D, 12);
    goto LABEL_17;
  }

  v18 = v10;
  v61 = 80;
  v62 = 8;
  v19 = sub_1000397B8(dword_10007CF90, 0, 1u, v69, &v62, 8u, &v64, &v61);
  if (v19)
  {
    v27 = v19 == 2;
LABEL_13:
    if (v27)
    {
      v7 = 0;
    }

    else
    {
      v7 = v19;
    }

    goto LABEL_17;
  }

  v50 = v18;
  v51 = 0;
  v29 = 0;
  v30 = -1;
  do
  {
    if (*(&v67 + 1))
    {
      v31 = *(&v67 + 1);
    }

    else
    {
      v31 = 9;
    }

    v32 = v68;
    if (v68)
    {
      v33 = v68;
    }

    else
    {
      v33 = v69[0];
    }

    if (v67 || BYTE10(v68) != 1)
    {
      if (*(&v67 + 1))
      {
        sub_100049C40(0x537, 92);
        v41 = sub_100005FD0(v8, 1, 26, 1, *(&v67 + 1), v33, 0, 0);
        if (v41)
        {
          return v41;
        }

        v32 = v68;
      }

      if (v32)
      {
        v41 = sub_100005FD0(v8, 1, 27, 1, 9, v33, v69, 8);
        if (v41)
        {
          return v41;
        }
      }

      if ((BYTE10(v68) & 1) == 0)
      {
        v60 = 0xAAAAAAAAAAAAAAAALL;
        v54 = 0xD000000000000009;
        v55 = v69[0] & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
        v59 = 16;
        v58 = 3808;
        v42 = sub_10003F8AC(a1, a2, 13, &v60, v23, v24, v25, v26);
        if (v42)
        {
          goto LABEL_67;
        }

        v43 = sub_1000397B8(v60, a3, 0, &v54, &v59, v59, v9, &v58);
        v7 = v43;
        if ((v43 & 0xFFFFFFFD) != 0)
        {
          goto LABEL_17;
        }

        if (v43 == 2 || sub_100006B08(&v54, v9, v58))
        {
          v29 += *(&v64 + 1);
          v63[0] = v29;
          if (v67 < v30)
          {
            v30 = v67;
          }

          v51 = 1;
          goto LABEL_60;
        }

        v44 = v9[1];
        v45 = *(&v64 + 1) + *v9;
        *&v64 = *v9;
        *(&v64 + 1) = v45;
        BYTE10(v68) = 1;
        *&v65 = v44;
        *(&v65 + 1) += v44;
        v46 = *(&v66 + 1) + v9[2];
        *&v66 = v9[2];
        *(&v66 + 1) = v46;
        WORD4(v68) = *(v9 + 12);
        *&v67 = 16;
        v42 = sub_10003B12C(dword_10007CF90, 0, v69, 8, &v64, 0x50u);
        if (v42)
        {
LABEL_67:
          v7 = v42;
          goto LABEL_17;
        }
      }

      if (WORD4(v68) > 1u)
      {
        goto LABEL_60;
      }

      if (*(&v64 + 1) != v64)
      {
        sub_100045744("file info: attribution tag (hash %llu): total count (%llu) does not match computed count (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
        sub_100049C40(0x51F, 92);
        v54 = *(&v64 + 1);
        v55 = 0;
        v56 = 0;
        v57 = 0;
        v41 = sub_100005FD0(v8, 1, 28, 0, 9, v69[0], &v54, 26);
        if (v41)
        {
          return v41;
        }
      }

      if (*(&v65 + 1) != v65)
      {
        sub_100045744("file info: attribution tag (hash %llu): physical size (%llu) does not match computed size (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
        sub_100049C40(0x520, 92);
        v54 = 0;
        v55 = *(&v65 + 1);
        v56 = 0;
        v57 = 0;
        v41 = sub_100005FD0(v8, 1, 29, 0, 9, v69[0], &v54, 26);
        if (v41)
        {
          return v41;
        }
      }

      if (v50)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair because the clone mapping repairs were aborted\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
        goto LABEL_60;
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair: full clone size %llu > %llu\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
        v47 = 1440;
LABEL_59:
        sub_100049C40(v47, 92);
        goto LABEL_60;
      }

      if ((*(&v66 + 1) & 0x8000000000000000) != 0)
      {
        sub_100045614("file info: attribution tag (hash %llu) skipping clone size repair because the computed clone size is negative\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
        v47 = 1421;
        goto LABEL_59;
      }

      if (*(&v66 + 1) == v66)
      {
        goto LABEL_60;
      }

      sub_100045744("file info: attribution tag (hash %llu): full clone size (%llu) does not match computed size (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
      sub_100049C40(0x556, 92);
      v54 = 0;
      v55 = 0;
      v56 = *(&v66 + 1);
      v57 = 0;
      v38 = v69[0];
      v39 = &v54;
      v34 = v8;
      v35 = 1;
      v36 = 30;
      v37 = 9;
      v40 = 26;
    }

    else
    {
      sub_100045744("file info: orphan attribution tag with hash (%llu)\n", v20, v21, v22, v23, v24, v25, v26, v69[0]);
      sub_100049C40(0x51E, 92);
      v34 = v8;
      v35 = 0;
      v36 = 0;
      v37 = v31;
      v38 = v33;
      v39 = 0;
      v40 = 0;
    }

    v41 = sub_100005FD0(v34, v35, v36, 0, v37, v38, v39, v40);
    if (v41)
    {
      return v41;
    }

LABEL_60:
    v52 = 80;
    v53 = 8;
    v48 = sub_1000397B8(dword_10007CF90, 0, 2u, v69, &v53, 8u, &v64, &v52);
  }

  while (!v48);
  if (v48 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v48;
  }

  if (v51)
  {
    v54 = v30 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v19 = sub_10003FA04(a1, a2, a3, 0, &v54, 8, sub_100006B98, v63);
    v27 = v19 == -1;
    goto LABEL_13;
  }

LABEL_17:
  free(v9);
  sub_10003B928(dword_10007CF90, 0);
  return v7;
}

uint64_t sub_100006A18(uint64_t a1)
{
  if (qword_10007D020)
  {
    v1 = qword_10007D020 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v5 = qword_10007D020;
  if (xmmword_10007D008 != 0 || (*(&xmmword_10007CFD0 + 1) ? (v3 = *(&xmmword_10007CFD0 + 1) == xmmword_10007CFD0) : (v3 = 0), !v3 || (qword_10007CFE8 ? (v4 = qword_10007CFE8 == qword_10007CFE0) : (v4 = 0), !v4 || *(&xmmword_10007CFF0 + 1) != xmmword_10007CFF0)))
  {
    result = sub_10003B12C(dword_10007CF90, 0, &v5, 8, &xmmword_10007CFD0, 0x50u);
LABEL_22:
    if (result)
    {
      return result;
    }

    goto LABEL_23;
  }

  result = sub_10003B708(dword_10007CF90, 0, &v5, 8);
  if (result != 2)
  {
    goto LABEL_22;
  }

LABEL_23:
  result = 0;
  qword_10007D020 = 0;
  return result;
}

BOOL sub_100006B08(uint64_t a1, uint64_t a2, int a3)
{
  *&__n[1] = 0;
  __n[0] = -21846;
  v4 = 1;
  if (!sub_100040474((a2 + 26), a3 - 26, 1, &__n[1], __n, 0, 0))
  {
    v5 = *(a1 + 8) & 0x1FFFFFFFFFFFFFLL;
    v6 = *&__n[1];
    v7 = strnlen(*&__n[1], __n[0]);
    return v5 != sub_10004F548(v6, v7);
  }

  return v4;
}

uint64_t sub_100006B98(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = 0;
  v48 = 0;
  v10 = sub_100040B74(a3, a4, 19, &v48, a5, a6, a7, a8);
  if (v10)
  {
    if (v10 == 2)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v46 = 0u;
    memset(v45, 0, sizeof(v45));
    v43 = 80;
    v44 = 8;
    if (!sub_1000397B8(dword_10007CF90, 0, 1u, &v47, &v44, 8u, v45, &v43))
    {
      while ((BYTE10(v46) & 1) != 0 || v48 != v47)
      {
        v41 = 80;
        v42 = 8;
        if (sub_1000397B8(dword_10007CF90, 0, 2u, &v47, &v42, 8u, v45, &v41))
        {
          return 0;
        }
      }

      sub_100045744("file info: inode (jobj_id 0x%llx) has unexpected attribution tag with hash (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *a1);
      sub_100049C40(0x51C, 92);
      v25 = sub_100026C40(*(a5 + 16), *a1, 19, v20, v21, v22, v23, v24);
      if (v25 || (v25 = sub_100026C04(*(a5 + 16), *a1 & 0xFFFFFFFFFFFFFFFLL, 0x10000000, v26, v27, v28, v29, v30), v25))
      {
        v11 = v25;
        v31 = *a1 & 0xFFFFFFFFFFFFFFFLL;
        strerror(v25);
        sub_10004565C("inode (jobj_id %llu): unable to add repair for unexpected xfield: %s\n", v32, v33, v34, v35, v36, v37, v38, v31);
        sub_100049C40(0x536, v11);
        return v11;
      }

      v39 = *a5;
      v40 = *(a5 + 8) + 1;
      *(a5 + 8) = v40;
      if (v39 == v40)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }
}

char *sub_100006D30(uint64_t a1)
{
  qword_10007D028 = a1;
  if (!sub_100039748(&unk_10007D030, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 24, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_10007D030, 0, 64);
  }

  result = sub_10001C108(&unk_10007D030, "crypto", sub_100006E0C);
  if (result)
  {
    sub_100045744("failed to register the crypto tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

    return sub_100049C40(0x582, 12);
  }

  return result;
}

uint64_t sub_100006E0C()
{
  if (qword_10007D068)
  {
    result = sub_10003B928(&unk_10007D030, 0);
  }

  qword_10007D088 = 0;
  return result;
}

void sub_100006E48(uint64_t a1, char *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10007D068)
  {
    v12 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v13 = *(a1 + 40);
    v14 = *(v13 + 264);
    if (v12 == 4)
    {
      if ((v14 & 0x108) != 0 || (v14 & 1) != 0 && *(v13 + 976) | qword_10007D028)
      {
        goto LABEL_6;
      }
    }

    else if ((v14 & 9) == 0)
    {
LABEL_6:
      sub_100006FC4(v12);
      if (!v15)
      {
        BYTE8(xmmword_10007D070) = 1;
        LODWORD(xmmword_10007D070) = *a3;
      }

      return;
    }

    v18 = *a3;
    sub_100045744("found unexpected crypto state object (id %llu, refcnt %u)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
    sub_100049C40(0x340, -2);

    sub_100006F5C(a4, 0, 0, 0, a2, 0, v16, v17);
  }
}

uint64_t sub_100006F5C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (a6)
    {
      v9 = *(a6 + 22) + 24;
    }

    else
    {
      v9 = 0;
    }

    return sub_100027D7C(a1, 7, a2, a3, a4, a5, 8u, a6, v9);
  }

  else
  {

    return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

double sub_100006FC4(uint64_t a1)
{
  v6 = a1;
  if (!sub_10000763C(a1) && !qword_10007D088)
  {
    v4 = 0uLL;
    v5 = 0;
    v2 = 24;
    v3 = 8;
    if ((sub_1000397B8(dword_10007D030, 0, 0, &v6, &v3, 8u, &v4, &v2) & 0xFFFFFFFD) == 0)
    {
      qword_10007D088 = v6;
      result = *&v4;
      xmmword_10007D070 = v4;
      qword_10007D080 = v5;
    }
  }

  return result;
}

void sub_100007070(uint64_t a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    v2 = *(a2 + 16);
    if ((v2 + 1) > 6 || ((1 << (v2 + 1)) & 0x43) == 0)
    {
      sub_100006FC4(*(a2 + 16));
      if (!v5)
      {
        if (v2 != 4 && v2 != a1 && !qword_10007D080)
        {
          qword_10007D080 = a1;
        }

        ++DWORD1(xmmword_10007D070);
      }
    }
  }
}

double sub_100007114(uint64_t *a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    if (*(a2 + 7))
    {
      result = sub_100006FC4(4);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v2 = *(a2 + 16);
      if (!v2)
      {
        return result;
      }

      if (v2 == 5)
      {
        return result;
      }

      v5 = *a1;
      result = sub_100006FC4(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v2 != 4 && (v5 & 0xFFFFFFFFFFFFFFFLL) != v2 && !qword_10007D080)
      {
        qword_10007D080 = v5 & 0xFFFFFFFFFFFFFFFLL;
      }
    }

    ++DWORD1(xmmword_10007D070);
  }

  return result;
}

double sub_1000071C4(uint64_t *a1, uint64_t a2)
{
  if (qword_10007D068)
  {
    if (*(a2 + 7))
    {
      result = sub_100006FC4(4);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      v2 = *(a2 + 16);
      if (!v2)
      {
        return result;
      }

      if (v2 == 5)
      {
        return result;
      }

      v5 = *a1;
      result = sub_100006FC4(*(a2 + 16));
      if (v6)
      {
        return result;
      }

      if (v2 != 4 && qword_10007D080 == (v5 & 0xFFFFFFFFFFFFFFFLL))
      {
        qword_10007D080 = 0;
      }
    }

    --DWORD1(xmmword_10007D070);
  }

  return result;
}

uint64_t sub_100007270(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (!qword_10007D068)
  {
    return 0;
  }

  v61 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v6 = sub_10000763C(0);
  if (v6)
  {
LABEL_3:
    v7 = v6;
    goto LABEL_9;
  }

  v56 = 24;
  v57 = 8;
  v8 = sub_1000397B8(dword_10007D030, 0, 1u, &v61, &v57, 8u, &v58, &v56);
  if (v8)
  {
LABEL_6:
    if (v8 == 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = v8;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v17 = v59;
    if (v59)
    {
      goto LABEL_24;
    }

    *v50 = 0xAAAAAAAAAAAAAAAALL;
    v55 = v61 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v53 = 3808;
    v54 = 8;
    v22 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x5B8D365AuLL);
    if (!v22)
    {
      break;
    }

    v7 = sub_10003F8AC(a1, a2, 7, v50, v18, v19, v20, v21);
    if (!v7)
    {
      v7 = sub_1000397B8(*v50, qword_10007D028, 0, &v55, &v54, v54, v22, &v53);
    }

    if (v7 == 2)
    {
      free(v22);
      sub_10004565C("missing crypto state object (id %llu) referenced by %u file extents / dstreams\n", v23, v24, v25, v26, v27, v28, v29, v61);
      sub_100049C40(0x345, 92);
      if ((*(*(a2 + 40) + 264) & 0x109) == 0x100)
      {
        *(a2 + 13) = 1;
      }

      else
      {
        v30 = v61;
        v31 = v60;
        v6 = sub_100007710(a1, a2, a3, v61, v61, v13, v14, v15);
        if (v6)
        {
          goto LABEL_3;
        }

        if (v31)
        {
          v6 = sub_100007710(a1, a2, a3, v30, v31, v13, v14, v15);
          if (v6)
          {
            goto LABEL_3;
          }
        }
      }
    }

    else
    {
      if (v7)
      {
        goto LABEL_35;
      }

      LOBYTE(v59) = 1;
      LODWORD(v58) = *v22;
      HIDWORD(v58) += v58;
      free(v22);
    }

    v17 = v59;
LABEL_24:
    if ((v17 & 1) != 0 && v61 != 4)
    {
      if (HIDWORD(v58))
      {
        if (v58 >= HIDWORD(v58))
        {
          sub_100045744("refcnt (%u) of crypto state object (id %llu) is greater than expected (%u)\n", v9, v10, v11, v12, v13, v14, v15, v58);
          sub_100049C40(0x348, -8);
          v55 = v61 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v51 = 0;
          *&v50[4] = 0;
          v52 = 0;
          *v50 = HIDWORD(v58);
          v34 = &v55;
          v35 = v50;
          v36 = a3;
          v37 = 1;
          v38 = 22;
          v39 = 0;
        }

        else
        {
          sub_10004565C("refcnt (%u) of crypto state object (id %llu) is less than expected (%u)\n", v9, v10, v11, v12, v13, v14, v15, v58);
          sub_100049C40(0x347, 92);
          v55 = v61 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
          v51 = 0;
          *&v50[4] = 0;
          v52 = 0;
          *v50 = HIDWORD(v58);
          v34 = &v55;
          v35 = v50;
          v36 = a3;
          v37 = 1;
          v38 = 22;
          v39 = 1;
        }
      }

      else
      {
        sub_100045744("found orphan crypto state object (id %llu, refcnt %u)\n", v9, v10, v11, v12, v13, v14, v15, v61);
        sub_100049C40(0x346, -8);
        *v50 = v61 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
        v34 = v50;
        v36 = a3;
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v35 = 0;
      }

      v6 = sub_100006F5C(v36, v37, v38, v39, v34, v35, v32, v33);
      if (v6)
      {
        goto LABEL_3;
      }
    }

    v48 = 24;
    v49 = 8;
    v8 = sub_1000397B8(dword_10007D030, 0, 2u, &v61, &v49, 8u, &v58, &v48);
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v7 = 12;
LABEL_35:
  free(v22);
  v40 = v61;
  strerror(v7);
  sub_10004565C("failed to look up crypto state object (id %llu): %s\n", v41, v42, v43, v44, v45, v46, v47, v40);
  sub_100049C40(0x3EE, v7);
LABEL_9:
  sub_10003B928(dword_10007D030, 0);
  return v7;
}

uint64_t sub_10000763C(uint64_t a1)
{
  if (qword_10007D088)
  {
    v1 = qword_10007D088 == a1;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    return 0;
  }

  v3 = xmmword_10007D070;
  v4 = qword_10007D080;
  v5 = qword_10007D088;
  if (qword_10007D088 == 4 || v3 == 0 && (BYTE8(v3) & 1) != 0 || v3 != DWORD1(v3))
  {
    result = sub_10003B12C(dword_10007D030, 0, &v5, 8, &v3, 0x18u);
    goto LABEL_9;
  }

  result = sub_10003B708(dword_10007D030, 0, &v5, 8);
  if (result != 2)
  {
LABEL_9:
    if (result)
    {
      return result;
    }
  }

  result = 0;
  qword_10007D088 = 0;
  return result;
}

uint64_t sub_100007710(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v13) = sub_10003F8AC(a1, a2, 3, &v52, a5, a6, a7, a8);
  v14 = malloc_type_calloc(1uLL, 0x340uLL, 0x8A1E9A27uLL);
  v15 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x829F47D7uLL);
  v23 = v15;
  if (v13 || !v14 || !v15)
  {
    if (v13)
    {
      v13 = v13;
    }

    else
    {
      v13 = 12;
    }

    sub_10004565C("unable to allocate memory to repair missing crypto state\n", v16, v17, v18, v19, v20, v21, v22, v45);
    v37 = 1084;
LABEL_13:
    sub_100049C40(v37, v13);
    goto LABEL_14;
  }

  v50 = 3808;
  v51 = 8;
  *v14 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  v24 = sub_1000397B8(v52, qword_10007D028, 0, v14, &v51, 8u, v15, &v50);
  if (!v24)
  {
LABEL_7:
    v29 = sub_10003F8AC(a1, a2, 6, &v52, v25, v26, v27, v28);
    if (!v29)
    {
      v49 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      v47 = 8;
      v48 = 0;
      v46 = 4;
      v39 = sub_1000397B8(v52, 0, 0, &v49, &v47, 8u, &v48, &v46);
      if (v39 == 2)
      {
        goto LABEL_28;
      }

      v13 = v39;
      if (v39)
      {
        goto LABEL_14;
      }

      if (v14)
      {
        v40 = v23[1];
        v41 = v40 == a5;
        v42 = v40 == a5 ? v14 : 0;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v43 = sub_100007990(a1, a2, a3, a5, v42, v23, v50, a4);
      if (!v43)
      {
        v44 = !v14 || v41;
        if (v44 || (v43 = sub_100007990(a1, a2, a3, v23[1], v14, v23, v50, a4), !v43))
        {
LABEL_28:
          v55[0] = a1;
          v55[1] = a2;
          v55[2] = a3;
          v55[3] = v14;
          v55[4] = v23;
          v55[5] = a4;
          v53 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
          v54 = 0;
          v43 = sub_10003FA04(a1, a2, 0, 1, &v53, 10, sub_100007E74, v55);
        }
      }

      v13 = v43;
      goto LABEL_14;
    }

    v13 = v29;
    sub_10004565C("unable to get fsroot tree to repair missing crypto state\n", v30, v31, v32, v33, v34, v35, v36, v45);
    v37 = 1158;
    goto LABEL_13;
  }

  v13 = v24;
  if (v24 == 2)
  {
    v14 = 0;
    goto LABEL_7;
  }

LABEL_14:
  free(v14);
  free(v23);
  return v13;
}

uint64_t sub_100007990(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, char *a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a5)
  {
    v14 = (*(a6 + 80) & 0xF000) == 0x8000;
  }

  else
  {
    v14 = 0;
  }

  v55 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52 = v15;
  v53 = v15;
  v51 = -21846;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (v14)
  {
    v17 = a3;
    v18 = sub_100040474((a6 + 92), a7 - 92, 8, &v55, &v51, 0, 0);
    if (v18)
    {
LABEL_8:
      v19 = *a5 & 0xFFFFFFFFFFFFFFFLL;
      strerror(v18);
      sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
      sub_100049C40(0x43B, v18);
      return v18;
    }

    if (v51 < 0x28u)
    {
      v18 = 34;
      goto LABEL_8;
    }

    v27 = *(v55 + 32);
    v28 = *(v55 + 16);
    v52 = *v55;
    v53 = v28;
    v54 = v27;
    v16 = v28;
    a3 = v17;
  }

  v29 = v16 == a8 && v14;
  v47[0] = a1;
  v47[1] = a2;
  v44 = a3;
  v47[2] = a3;
  v47[3] = a8;
  v49 = 0;
  v48 = 0xAAAAAAAA00000000;
  BYTE4(v48) = v29;
  v50 = 0;
  if (v29)
  {
    LODWORD(v48) = *(a6 + 60);
  }

  v46[0] = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v46[1] = 0;
  v30 = sub_10003FA04(a1, a2, 0, 1, v46, 16, sub_100007BE0, v47);
  if (v30)
  {
    return v30;
  }

  if (v29)
  {
    v39 = v49;
    if (!v49)
    {
      v39 = -1;
    }

    *&v53 = v39;
    sub_100045744("found dstream (id %llu) with missing crypto state object (id %llu)\n", v31, v32, v33, v34, v35, v36, v37, a4);
    v30 = sub_100007D68(v44, 14, a5, &v52, 40, v40, v41, v42);
    if (v30)
    {
      return v30;
    }

    if (v49)
    {
      v45 = v49 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
      v30 = sub_100006F5C(v44, 1, 23, 1, &v45, 0, v36, v37);
      if (v30)
      {
        return v30;
      }
    }
  }

  v43 = v50 && v14;
  if (v43 && (v30 = sub_100007D68(v44, 16, a5, &v50, 8, v35, v36, v37), v30))
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100007BE0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 16);
  if (v10 == *(a5 + 24))
  {
    v12 = *(a3 + 8);
    if (v12)
    {
      v12 = *a3 & 0xFFFFFFFFFFFFFFLL;
    }

    v13 = *(a5 + 48);
    v14 = __CFADD__(v13, v12);
    v15 = v13 + v12;
    *(a5 + 48) = v15;
    if (v14)
    {
      sub_100045744("sparse bytes overflow (current %llu, update %llu)\n", a2, v10, a4, a5, a6, a7, a8, v15);
      sub_100049C40(0x43A, 92);
      v10 = *(a5 + 24);
    }

    sub_10004565C("found fext (id %llu) with missing crypto state object (id %llu)\n", a2, v10, a4, a5, a6, a7, a8, *a1);
    v23 = *(a5 + 16);
    if (v23)
    {
      v25 = *a5;
      v24 = *(a5 + 8);
      result = sub_100027D7C(v23, 7, 1, 0xBu, 1, a1, 0x10u, a3, 0x18u);
      if (!result)
      {
        v27 = *(a3 + 8);
        v28 = (*a3 & 0xFFFFFFFFFFFFFFuLL) / *(*(v25 + 8) + 36);

        return sub_10001F974(v24, v27, v28);
      }
    }

    else
    {

      return sub_10002797C(0, v16, v17, v18, v19, v20, v21, v22);
    }
  }

  else if (*(a5 + 36) == 1 && (v10 ? (v29 = *(a5 + 40) == 0) : (v29 = 0), v29))
  {
    v30 = 0;
    result = sub_100007DBC(*a5, *(a5 + 8), v10, *(a5 + 32), &v30, a6, a7, a8);
    if (!result && v30 == 1)
    {
      *(a5 + 40) = *(a3 + 16);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100007D68(_DWORD *a1, uint64_t a2, char *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, 1, a2, 1, a3, 8u, a4, a5);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100007DBC(uint64_t a1, void *a2, uint64_t a3, int a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 7, &v18, a5, a6, a7, a8);
  if (!result)
  {
    v16 = 0;
    v17 = a3 & 0xFFFFFFFFFFFFFFFLL | 0x7000000000000000;
    v14 = 0;
    v15 = 0;
    v12 = 24;
    v13 = 8;
    LODWORD(result) = sub_1000397B8(v18, qword_10007D028, 0, &v17, &v13, 8u, &v14, &v12);
    if (!result && (BYTE4(v15) & 0x1F) == a4)
    {
      *a5 = 1;
    }

    if (result == 2)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_100007E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a3 & 1) == 0)
  {
    return 0;
  }

  v40[7] = v8;
  v40[8] = v9;
  if (*(a3 + 28) != *(a5 + 40))
  {
    return 0;
  }

  v13 = *(a3 + 4);
  v14 = (a1 + 10);
  v32 = *(a1 + 8);
  sub_100045744("found xattr (id %llu, name %.*s) with missing crypto state\n", a2, a3, a4, a5, a6, a7, a8, *a1);
  v15 = *a5;
  v16 = *(a5 + 8);
  v36[0] = *a5;
  v36[1] = v16;
  v36[2] = *(a5 + 40);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(a5 + 24);
  LOBYTE(v37) = v17 != 0;
  HIDWORD(v37) = 0;
  v38 = 0;
  v39 = 0xAAAAAAAAAAAAAA00;
  if (v17)
  {
    HIDWORD(v37) = *(*(a5 + 32) + 60);
  }

  v35[0] = v13 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  v35[1] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003FA04(v15, v16, 0, 1, v35, 16, sub_1000080CC, v36);
  if (!result)
  {
    v20 = v38;
    v40[0] = v38;
    if (*(a1 + 8) == 23)
    {
      v21 = strncmp(v14, "com.apple.ResourceFork", 0x17uLL);
      v22 = v21 == 0;
      if (v20)
      {
        goto LABEL_14;
      }

      if (!v21)
      {
        v22 = 1;
        LOBYTE(v39) = 1;
        goto LABEL_15;
      }
    }

    else if (v38)
    {
      v22 = 0;
      goto LABEL_14;
    }

    v22 = 0;
    v40[0] = -1;
LABEL_14:
    if ((v39 & 1) == 0)
    {
      return sub_100008168(*(a5 + 16), 1, 25, a1, v40, 8, v18, v19);
    }

LABEL_15:
    result = sub_100008168(*(a5 + 16), 0, 0, a1, 0, 0, v18, v19);
    if (result)
    {
      return result;
    }

    v26 = *(a5 + 24);
    if (v26)
    {
      if (v22)
      {
        v33 = 0x8000;
        result = sub_100007D68(*(a5 + 16), 17, v26, &v33, 8, v23, v24, v25);
        if (result)
        {
          return result;
        }

        v34 = 0x4000;
        v26 = *(a5 + 24);
LABEL_28:
        result = sub_100007D68(*(a5 + 16), 18, v26, &v34, 8, v27, v28, v29);
        if (result)
        {
          return result;
        }

        return 0;
      }

      v30 = *(a1 + 8);
      if (v30 == 21)
      {
        if (!strncmp(v14, "com.apple.FinderInfo", 0x15uLL))
        {
          v31 = 256;
          goto LABEL_27;
        }
      }

      else if (v30 == 26 && !strncmp(v14, "com.apple.system.Security", 0x1AuLL))
      {
        v31 = 64;
LABEL_27:
        v34 = v31;
        goto LABEL_28;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1000080CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a3 + 16);
  if (v10 == *(a5 + 16))
  {
    *(a5 + 40) = 1;
    return 0xFFFFFFFFLL;
  }

  else if (*(a5 + 24) == 1 && (v10 ? (v12 = *(a5 + 32) == 0) : (v12 = 0), v12))
  {
    v13 = 0;
    result = sub_100007DBC(*a5, *(a5 + 8), v10, *(a5 + 28), &v13, a6, a7, a8);
    if (!result && v13 == 1)
    {
      *(a5 + 32) = *(a3 + 16);
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_100008168(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, a2, a3, 1, a4, *(a4 + 8) + 10, a5, a6);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

BOOL sub_1000081C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  if (a3 >= 64)
  {
    v6 = (a1 + 8 * v4 + 8);
    while (-1 << v5 <= (*(v6 - 1) & (-1 << v5)) && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> -v5) & ~*v6) == 0))
    {
      ++v4;
      v7 = a3 - 64;
      ++v6;
      v8 = a3 <= 127;
      a3 -= 64;
      if (v8)
      {
        if (v7)
        {
          goto LABEL_14;
        }

        return 1;
      }
    }

    return 0;
  }

  v7 = a3;
  if (!a3)
  {
    return 1;
  }

LABEL_14:
  v9 = 64 - v5;
  v10 = ~(-1 << v7);
  v11 = v10 << v5;
  v12 = v10 >> (64 - v5);
  if (!v5)
  {
    v12 = 0;
  }

  v13 = (a1 + 8 * v4);
  return (v11 & ~((-1 << v5) & *v13)) == 0 && (v7 <= v9 || !v12 || (v12 & ~((0xFFFFFFFFFFFFFFFFLL >> v9) & v13[1])) == 0);
}

uint64_t sub_1000082B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 >= 64)
  {
    v7 = (a1 + 8 * v4 + 8);
    while (((-1 << v5) & *(v7 - 1)) == 0 && (!v5 || ((0xFFFFFFFFFFFFFFFFLL >> v6) & *v7) == 0))
    {
      ++v4;
      v8 = a3 - 64;
      ++v7;
      v9 = a3 <= 127;
      a3 -= 64;
      if (v9)
      {
        if (v8)
        {
          goto LABEL_11;
        }

        return 1;
      }
    }

    return 0;
  }

  v8 = a3;
  if (a3)
  {
LABEL_11:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (a1 + 8 * v4);
    if ((v11 & (-1 << v5) & *v13) != 0 || v8 > v6 && v12 && ((0xFFFFFFFFFFFFFFFFLL >> v6) & v12 & v13[1]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000083A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 / 64;
  v5 = a2 - (a4 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) = *(v7 - 1) & ~(-1 << v5) | (-1 << v5);
    if (v5)
    {
      *v7 |= 0xFFFFFFFFFFFFFFFFLL >> v6;
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_10:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (!v5)
    {
      v12 = 0;
    }

    v13 = (result + 8 * v4);
    *v13 = *v13 & ~v11 | v11 & (-1 << v5);
    if (v8 > v6)
    {
      if (v12)
      {
        v13[1] = v13[1] & ~v12 | v12 & (0xFFFFFFFFFFFFFFFFLL >> v6);
      }
    }
  }

  return result;
}

uint64_t sub_10000849C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2 + 63;
  }

  v4 = v3 >> 6;
  v5 = a2 - (v3 & 0xFFFFFFFFFFFFFFC0);
  v6 = 64 - v5;
  if (a3 < 64)
  {
    v8 = a3;
    if (!a3)
    {
      return result;
    }

    goto LABEL_13;
  }

  v7 = (result + 8 * v4 + 8);
  do
  {
    *(v7 - 1) &= ~(-1 << v5);
    if (v5)
    {
      *v7 &= ~(0xFFFFFFFFFFFFFFFFLL >> v6);
    }

    ++v4;
    v8 = a3 - 64;
    ++v7;
    v9 = a3 <= 127;
    a3 -= 64;
  }

  while (!v9);
  if (v8)
  {
LABEL_13:
    v10 = ~(-1 << v8);
    v11 = v10 << v5;
    v12 = v10 >> v6;
    if (v5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = (result + 8 * v4);
    *v14 &= ~v11;
    if (v8 > v6)
    {
      if (v13)
      {
        v14[1] &= ~v13;
      }
    }
  }

  return result;
}

uint64_t sub_10000856C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4 < 1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  v6 = (a2 + 8 * (a3 / 64));
  while (1)
  {
    v7 = a3 & 0x3F;
    if (a3 <= 0)
    {
      v7 = -(-a3 & 0x3F);
    }

    v8 = 64 - v7;
    v10 = *v6++;
    v9 = v10;
    if (64 - v7 >= a4)
    {
      v8 = a4;
    }

    v11 = __clz(__rbit64((v9 >> v7) ^ v5));
    if (v8 > v11)
    {
      break;
    }

    a3 += v8;
    v12 = a4 <= v8;
    a4 -= v8;
    if (v12)
    {
      return 0;
    }
  }

  *a5 = v11 + a3;
  return 1;
}

unint64_t sub_1000085F0(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a3 >= a4)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (a2)
  {
    v7 = -1;
  }

  else
  {
    v7 = 0;
  }

  do
  {
    v8 = a4 - a3;
    if (a4 - a3 < 1)
    {
      break;
    }

    v9 = (a1 + 8 * (a3 / 64));
    while (1)
    {
      v10 = a3 & 0x3F;
      if (a3 <= 0)
      {
        v10 = -(-a3 & 0x3F);
      }

      v11 = 64 - v10;
      v13 = *v9++;
      v12 = v13;
      if (64 - v10 >= v8)
      {
        v11 = v8;
      }

      v14 = __clz(__rbit64((v12 >> v10) ^ v6));
      if (v11 > v14)
      {
        break;
      }

      a3 += v11;
      v15 = v8 <= v11;
      v8 -= v11;
      if (v15)
      {
        return result;
      }
    }

    v16 = v14 + a3;
    v17 = a4 - (v14 + a3);
    if (v17 < 1)
    {
      return result - v16 + a4;
    }

    v18 = v16 + 63;
    if (v16 >= 0)
    {
      v18 = v14 + a3;
    }

    v19 = (a1 + 8 * (v18 >> 6));
    v20 = v14 + a3;
    while (1)
    {
      v21 = v20 & 0x3F;
      if (v20 <= 0)
      {
        v21 = -(-v20 & 0x3F);
      }

      v22 = 64 - v21;
      v24 = *v19++;
      v23 = v24;
      if (64 - v21 >= v17)
      {
        v22 = v17;
      }

      v25 = __clz(__rbit64((v23 >> v21) ^ v7));
      if (v22 > v25)
      {
        break;
      }

      v20 += v22;
      v15 = v17 <= v22;
      v17 -= v22;
      if (v15)
      {
        return result - v16 + a4;
      }
    }

    a3 = v25 + v20;
    result = result - v16 + v25 + v20;
  }

  while ((v25 + v20) < a4);
  return result;
}

void *sub_100008714(void *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 + 63;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = a2 + 63;
  }

  v7 = a2 - (v6 & 0xFFFFFFFFFFFFFFC0);
  v8 = 64 - v7;
  v9 = -1 << v7;
  v10 = (v6 & 0xC0) - a2;
  v11 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  if (a2 == (v6 & 0xFFFFFFFFFFFFFFC0))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFFFFFFFFFLL >> v10;
  }

  if (a4 >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = a4 + 63;
  }

  v14 = a4 - (v13 & 0xFFFFFFFFFFFFFFC0);
  v15 = 64 - v14;
  v16 = -1 << v14;
  v17 = 0xFFFFFFFFFFFFFFFFLL >> ((v13 & 0xC0u) - a4);
  if (result == a3 && a2 <= a4)
  {
    v18 = a5 + a2;
    v20 = a5 + a2 - 1;
    v19 = a5 + a2 < 1;
    v21 = a5 + a2 + 62;
    if (v19)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    v23 = a5 + a4;
    v24 = a5 + a4 - 1;
    v19 = a5 + a4 < 1;
    v25 = a5 + a4 + 62;
    if (!v19)
    {
      v25 = v24;
    }

    if (a5 <= 0)
    {
      v26 = -(-a5 & 0x3F);
    }

    else
    {
      v26 = a5 & 0x3F;
    }

    if (v26)
    {
      v19 = v18 < v26;
      v27 = v18 - v26;
      if (v19)
      {
        v27 += 63;
      }

      v28 = v27 >> 6;
      v19 = v23 < v26;
      v29 = v23 - v26;
      if (v19)
      {
        v29 += 63;
      }

      v30 = v29 >> 6;
      v31 = &result[v28];
      v32 = (*v31 & v9) >> v7;
      if (v26 >= v8)
      {
        v32 |= (v31[1] & v12) << v8;
      }

      v33 = ~(-1 << v26);
      v34 = v32 & v33;
      v35 = v33 << v14;
      if (v14)
      {
        v36 = v33 >> v15;
      }

      else
      {
        v36 = 0;
      }

      v37 = &a3[v30];
      *v37 = (v34 << v14) & v35 | *v37 & ~v35;
      if (v26 > v15 && v36)
      {
        v37[1] = v37[1] & ~v36 | (v34 >> v15) & v36;
      }

      a5 -= v26;
      v38 = v28 - 1;
      v39 = v30 - 1;
    }

    else
    {
      v38 = v22 >> 6;
      v39 = v25 >> 6;
    }

    if (a5 >= 64)
    {
      v55 = v6 >> 6;
      if (v38 >= v55)
      {
        v56 = ~v17;
        result += v38 + 1;
        v57 = &a3[v39 + 1];
        do
        {
          v58 = (*(result - 1) & v9) >> v7;
          if (v7)
          {
            v58 |= *result << v8;
          }

          *(v57 - 1) = *(v57 - 1) & ~v16 | (v58 << v14) & v16;
          if (v14)
          {
            *v57 = *v57 & v56 | (v58 >> v15);
          }

          if (a5 < 128)
          {
            break;
          }

          a5 -= 64;
          --result;
          --v57;
          v19 = v38-- <= v55;
        }

        while (!v19);
      }
    }

    return result;
  }

  v40 = v13 >> 6;
  if (a2 >= 0)
  {
    v5 = a2;
  }

  v41 = v5 >> 6;
  if (a5 < 64)
  {
    v46 = a5;
    if (!a5)
    {
      return result;
    }

    goto LABEL_47;
  }

  v42 = ~v17;
  v43 = &a3[v40 + 1];
  v44 = &result[v41 + 1];
  do
  {
    v45 = (*(v44 - 1) & v9) >> v7;
    if (v7)
    {
      v45 |= *v44 << v8;
    }

    *(v43 - 1) = *(v43 - 1) & ~v16 | (v45 << v14) & v16;
    if (v14)
    {
      *v43 = *v43 & v42 | (v45 >> v15);
    }

    ++v41;
    ++v40;
    v46 = a5 - 64;
    ++v43;
    ++v44;
    v19 = a5 <= 127;
    a5 -= 64;
  }

  while (!v19);
  if (v46)
  {
LABEL_47:
    v47 = &result[v41];
    v48 = (*v47 & v9) >> v7;
    if (v7 && v46 >= v8)
    {
      v48 |= (v47[1] & v11) << v8;
    }

    v49 = ~(-1 << v46);
    v50 = v48 & v49;
    v51 = v49 << v14;
    v52 = v49 >> v15;
    if (v14)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    v54 = &a3[v40];
    *v54 = (v50 << v14) & v51 | *v54 & ~v51;
    if (v46 > v15 && v53)
    {
      v54[1] = v54[1] & ~v53 | (v50 >> v15) & v53;
    }
  }

  return result;
}

uint64_t sub_100008A70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 << 6) - a3;
  sub_100008714(a1, a3, a1, 0, v5);

  return sub_10000849C(a1, v5, a3);
}

uint64_t sub_100008AD4(uint64_t result)
{
  if (dword_10007C040 >= 99)
  {
    dword_10007C040 = 100;
    return result;
  }

  v1 = result;
  v2 = ++dword_10007C040;
  v3 = *(result + 8);
  v4 = *(v3 + 48);
  if (!v4)
  {
    v4 = *(v3 + 40);
  }

  if ((*(v4 + 56) & 0x20) == 0)
  {
    v5 = &xmmword_10007D090 + 152 * v2;
    if (sub_100039748(v5, 0, v3, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100008C38) || sub_10003B84C(v5, 0, 66))
    {

      return sub_10003B928(v5, 0);
    }

    else
    {
      v6 = *(v1 + 8);
      if (v6)
      {
        v6 = *(*(v6 + 40) + 8);
      }

      *(v5 + 16) = v6;
      v5[144] = 0;
      v8 = 0xAAAAAAAAAAAAAAAALL;
      result = sub_10003B7B8(v1, 0, &v8);
      if (result)
      {
        v7 = 50;
      }

      else
      {
        v7 = v8;
        *(v5 + 17) = v8 / 0x64;
        if (v7 > 0x3E7)
        {
          return result;
        }

        if (v7 >= 0xA)
        {
          v7 = 10;
        }
      }

      *(v5 + 17) = v7;
    }
  }

  return result;
}

uint64_t sub_100008C38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x1C && a5 >= 0x1C)
  {
    result = sub_10003F384(a1, (a2 + 20), *(a2 + 16), (a4 + 20), *(a4 + 16), a6);
    if (!result)
    {
      if (*a6)
      {
        return 0;
      }

      if (*a2 > *a4)
      {
        goto LABEL_7;
      }

      if (*a2 >= *a4)
      {
        v12 = *(a2 + 8);
        v13 = *(a4 + 8);
        if (v12 > v13)
        {
LABEL_7:
          v11 = 1;
LABEL_10:
          result = 0;
          *a6 = v11;
          return result;
        }

        if (v12 >= v13)
        {
          return 0;
        }
      }

      v11 = -1;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_100008CF4(uint64_t a1, int *a2, int *a3, _BYTE *a4, uint64_t a5)
{
  v30 = -1431655766;
  v31 = -1431655766;
  v10 = *(a2 + 2);
  v11 = *(a3 + 1);
  if (!(v10 | v11))
  {
    v31 = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    v13 = 1;
LABEL_9:
    v31 = v13;
    goto LABEL_10;
  }

  if (!v11)
  {
    v13 = -1;
    goto LABEL_9;
  }

  result = sub_10003F384(a1, v10, a2[1], v11, *a3, &v31);
  if (result)
  {
    return result;
  }

LABEL_10:
  v14 = *(a3 + 2);
  v15 = *(a2 + 1);
  v16 = v14 | v15;
  if (v14 | v15)
  {
    if (v14)
    {
      if (v15)
      {
        result = sub_10003F384(a1, v14, a3[1], v15, *a2, &v30);
        if (result)
        {
          return result;
        }

        v16 = v30 > 0;
      }

      else
      {
        v16 = 0;
        v30 = -1;
      }
    }

    else
    {
      v16 = 1;
      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  result = 0;
  v17 = (v31 > 0) & v16;
  *a4 = v17;
  if (a5 && v17)
  {
    v18 = *(a2 + 1);
    v19 = *(a3 + 1);
    if (!(v18 | v19))
    {
      v31 = 0;
      goto LABEL_29;
    }

    if (v18)
    {
      if (v19)
      {
        result = sub_10003F384(a1, v18, *a2, v19, *a3, &v31);
        if (result)
        {
          return result;
        }

LABEL_29:
        v21 = *(a2 + 2);
        v22 = *(a3 + 2);
        if (v21 | v22)
        {
          if (v21)
          {
            if (v22)
            {
              result = sub_10003F384(a1, v21, a2[1], v22, a3[1], &v30);
              if (result)
              {
                return result;
              }

              goto LABEL_38;
            }

            v23 = -1;
          }

          else
          {
            v23 = 1;
          }

          v30 = v23;
        }

        else
        {
          v30 = 0;
        }

LABEL_38:
        result = 0;
        if (v31 < 0)
        {
          v24 = a3;
        }

        else
        {
          v24 = a2;
        }

        v25 = *(v24 + 1);
        v26 = *v24;
        if (v30 >= 1)
        {
          v27 = a3;
        }

        else
        {
          v27 = a2;
        }

        v28 = *(v27 + 2);
        *(a5 + 8) = v25;
        *(a5 + 16) = v28;
        v29 = v27[1];
        *a5 = v26;
        *(a5 + 4) = v29;
        return result;
      }

      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    v31 = v20;
    goto LABEL_29;
  }

  return result;
}

uint64_t sub_100008ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, unsigned int a7, const void *a8, unsigned int a9, unsigned int a10)
{
  v10 = a10;
  if (dword_10007C040 != 100)
  {
    if (*(&xmmword_10007D090 + 19 * dword_10007C040 + 7))
    {
      v12 = *(a1 + 8);
      if (v12)
      {
        if (!*(v12 + 56) && a6 && *(a1 + 48) == 14 && (a10 == 92 || a10 == 2))
        {
          v15 = &xmmword_10007D090 + 152 * dword_10007C040;
          if (*(v15 + 17) <= v15[144])
          {
            v24 = *(*(v12 + 40) + 8);
            sub_100045744("reached invalid tree node limit %llu for fs_oid %llu\n", a2, a3, a4, a5, a6, a6, a8, *(v15 + 17));
            sub_10003B928(v15, 0);
          }

          else
          {
            v10 = sub_100009048(v15, a3, a4, a5, 0x7FFFFFFFFFFFFFFFLL, 0, a6, a7, 0, a8, a9, 0);
            if (!v10)
            {
              *(a2 + 74) = 1;
              if ((byte_100080BF4 & 1) == 0)
              {
                sub_100045744("aborting jobj validations for current fsck pass - trying to repair fsroot tree with invalid nodes\n", v16, v17, v18, v19, v20, v21, v22, v23);
              }

              byte_100080BF4 = 1;
              sub_1000147E8(*(a1 + 8));
              sub_1000053DC();
              v10 = 0;
              *(*(a1 + 8) + 9) = 0;
              ++v15[144];
              ++dword_100080BF0;
            }
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_100009048(_DWORD *a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, const void *a7, unsigned int a8, int a9, const void *a10, unsigned int a11, int a12)
{
  v17 = a8 + 20;
  v18 = malloc_type_malloc(v17, 0xE1A0581EuLL);
  v19 = malloc_type_malloc(a11 + 30, 0xEF630B10uLL);
  v20 = v19;
  if (v18)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    *v18 = a2;
    v18[1] = a3;
    *(v18 + 4) = a8;
    memcpy(v18 + 20, a7, a8);
    *(v20 + 4) = a4;
    *(v20 + 10) = a5;
    *v20 = a6;
    *(v20 + 18) = a9;
    *(v20 + 22) = a12;
    *(v20 + 26) = a11;
    if (a10)
    {
      memcpy(v20 + 30, a10, a11);
    }

    v24 = sub_10003B12C(a1, 0, v18, v17, v20, a11 + 30);
    v22 = v24;
    if (v24)
    {
      v25 = *(v18 + 20) & 0xFFFFFFFFFFFFFFFLL;
      strerror(v24);
      sub_10004565C("unable to insert tree node at key id %llu for repairs : %s\n", v26, v27, v28, v29, v30, v31, v32, v25);
      sub_100049C40(0x3F1, v22);
    }

LABEL_14:
    free(v18);
    if (!v20)
    {
      return v22;
    }

    goto LABEL_8;
  }

  v22 = 12;
  sub_100049C40(0x3F0, 12);
  if (v18)
  {
    goto LABEL_14;
  }

  if (v20)
  {
LABEL_8:
    free(v20);
  }

  return v22;
}

uint64_t sub_1000091D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (dword_10007C040 == 100)
  {
    return 0;
  }

  if (!*(&xmmword_10007D090 + 19 * dword_10007C040 + 7))
  {
    return 0;
  }

  v6 = &xmmword_10007D090 + 152 * dword_10007C040;
  v34[0] = 0;
  sub_10003B724(v6, 0, v34);
  if (!v34[0])
  {
    return 0;
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  memset(v34, 0, 80);
  v7 = sub_10002D5F0(a1, a2, &v35);
  if (v7)
  {
    return v7;
  }

  v7 = sub_100034410(v35, *(v35 + 56), 0, v34);
  if (v7)
  {
    return v7;
  }

  memset(v33, 0, sizeof(v33));
  v9 = sub_10003A444(v33, v6, 0, 0, 0);
  if (v9 || (v9 = sub_10002C648(v33, sub_10000947C, a3, 0), v9))
  {
    v8 = v9;
    v10 = strerror(v9);
    sub_10004565C("unable to enqueue tree node prune repairs: %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
    v18 = 1011;
LABEL_10:
    sub_100049C40(v18, v8);
    return v8;
  }

  if ((*(qword_10009BA60 + 51) & 1) == 0)
  {
    sub_100009510();
    return 0;
  }

  v19 = sub_10000958C((v6 + 64), a2);
  if (v19)
  {
    v8 = v19;
    v18 = 1053;
    goto LABEL_10;
  }

  v32[1] = v35;
  v32[2] = v34;
  v32[3] = v6;
  v32[4] = (v6 + 64);
  v8 = sub_10001DDB0(a1, a2, 1, 0, sub_10000961C);
  if (v8)
  {
    return v8;
  }

  if (!*(*(a2 + 40) + 216))
  {
    return 0;
  }

  if (*(qword_10009BA60 + 46))
  {
    return 0;
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v21 = sub_100046F1C(a1, a2, v32);
  if (v21 == 2)
  {
    return 0;
  }

  v8 = v21;
  if (!v21)
  {
    v8 = sub_100034410(v35, *(v35 + 56), v32[0], v34);
    if (!v8)
    {
      v31[0] = v35;
      v31[1] = v34;
      v31[2] = v32[0];
      v31[3] = v6 + 64;
      v22 = sub_10003A444(v33, v6, 0, 0, 0);
      if (v22 || (v22 = sub_10002C648(v33, sub_1000096CC, v31, 0), v22))
      {
        v8 = v22;
        v23 = strerror(v22);
        sub_10004565C("unable to iterate snap fsroot tree for tree node repairs: %s\n", v24, v25, v26, v27, v28, v29, v30, v23);
        v18 = 1054;
        goto LABEL_10;
      }

      return 0;
    }
  }

  return v8;
}

uint64_t sub_10000947C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v17 = *(a3 + 8);
  v6 = sub_100027D7C(a5, 6, 0, 0, 1, (a1 + 20), *(a1 + 16), &v17, 2u);
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 20) & 0xFFFFFFFFFFFFFFFLL;
    strerror(v6);
    sub_10004565C("unable to add tree repair at key at id %llu : %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
    sub_100049C40(0x3F2, v7);
  }

  return v7;
}

void sub_100009510()
{
  v1 = dword_10007C040;
  if (dword_10007C040 != 100)
  {
    v2 = &xmmword_10007D090 + 152 * dword_10007C040;
    dword_100080BF0 -= v2[144];
    v2[144] = 0;
    sub_10003B928(&xmmword_10007D090 + 152 * v1, 0);

    sub_10003B928((v2 + 64), 0);
  }
}

uint64_t sub_10000958C(uint64_t a1, uint64_t a2)
{
  result = sub_100039748(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100008C38);
  if (!result)
  {

    return sub_10003B84C(a1, 0, 66);
  }

  return result;
}

uint64_t sub_10000961C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a3)
  {
    return 0;
  }

  v7 = *a5;
  v8 = *(a5 + 8);
  v13 = 0;
  v11 = 0;
  if (!sub_100025548(*v7, *(v7 + 8), 0, *a1, a1[1], 0, 3, 0xEu, &v13, 0, 0))
  {
    v11 = sub_10000A1E0(v7, v8, *(a5 + 16), *(a5 + 24), v13, *(a3 + 8), v9, v10);
    free(v13);
  }

  return v11;
}

uint64_t sub_1000096CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *(a3 + 26);
  v8 = (a3 + 30);
  v9 = *a5;
  v36 = a5[1];
  if (v7)
  {
    v10 = a3 + 30;
  }

  else
  {
    v10 = 0;
  }

  v11 = a5[2];
  v12 = a5[3];
  v52 = 0;
  memset(v51, 170, sizeof(v51));
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v13 = a1 + 20;
  v14 = sub_10003A0AC(&v46, v9, v11, 0xFFFFFFFE, (a1 + 20), *(a1 + 16), 1u);
  if (v14)
  {
    v15 = v14;
    strerror(v14);
    sub_10004565C("unable to iterate fsroot tree (xid %llu) for tree node repairs: %s\n", v16, v17, v18, v19, v20, v21, v22, v11);
    v23 = 1050;
LABEL_6:
    sub_100049C40(v23, v15);
    goto LABEL_20;
  }

  if ((BYTE8(v48) & 1) == 0)
  {
    while (1)
    {
      v24 = **(&v47 + 1);
      if (v52)
      {
        free(v52);
        v52 = 0;
      }

      v25 = sub_100025548(*v9, *(v9 + 8), 0, v24, v11, 0, 3, 0xEu, &v52, v51, 0);
      if (v25)
      {
        goto LABEL_19;
      }

      memset(v45, 170, sizeof(v45));
      v44 = -21846;
      sub_1000346A4(v52, v36, 0, &v45[5], v45, *(v52 + 9) - 1, &v45[1], &v44);
      v43 = 0;
      if (v7)
      {
        v15 = sub_10003F384(*(*(v9 + 8) + 40), *&v45[5], v45[0], v8, *(a3 + 26), &v43);
        if (v15 || (v43 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      v26 = *(a3 + 26);
      v40[0] = *(a1 + 16);
      v40[1] = v26;
      v41 = v13;
      v42 = v10;
      v37[0] = v45[0];
      v37[1] = v44;
      v38 = *&v45[5];
      v39 = *&v45[1];
      v25 = sub_10000A45C(v12, *(*(v9 + 8) + 40), v36, v52, v51[0], v11, v40, v37);
      if (v25)
      {
LABEL_19:
        v15 = v25;
        goto LABEL_20;
      }

      v27 = (*(&v46 + 1))(&v46);
      if (v27)
      {
        break;
      }

      if (BYTE8(v48) == 1)
      {
        goto LABEL_8;
      }
    }

    v15 = v27;
    strerror(v27);
    sub_10004565C("error iterating fsroot tree (xid %llu) for tree node repairs: %s\n", v29, v30, v31, v32, v33, v34, v35, v11);
    v23 = 1051;
    goto LABEL_6;
  }

LABEL_8:
  v15 = 0;
LABEL_20:
  if (v46)
  {
    (v46)(&v46);
  }

  if (v52)
  {
    free(v52);
  }

  return v15;
}

uint64_t sub_100009950(uint64_t *a1)
{
  if (!dword_100080BF0)
  {
    return 0;
  }

  if (*(qword_10009BA60 + 51) != 1)
  {
    return 92;
  }

  memset(v48, 0, sizeof(v48));
  v49 = malloc_type_malloc(0x354uLL, 0xF84EB4C2uLL);
  v2 = malloc_type_malloc(0x35EuLL, 0x4BB726FuLL);
  v50 = v2;
  v3 = malloc_type_malloc(0x354uLL, 0x27063778uLL);
  v4 = malloc_type_malloc(0x35EuLL, 0xBB9FEEC5uLL);
  v5 = v4;
  if (!v49 || !v2 || !v4 || !v3)
  {
    v7 = 12;
    sub_100049C40(0x41F, 12);
LABEL_13:
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v6 = sub_10004355C(a1, 0, sub_100009D48, a1, 0);
  if (v6 || (v6 = sub_100001C74(a1, sub_100009D80, a1), v6) || *(qword_10009BA60 + 52) == 1 && (v6 = sub_1000442D8(a1, sub_100009DA4, a1), v6))
  {
    v7 = v6;
    goto LABEL_14;
  }

  v9 = dword_10007C040;
  if (dword_10007C040 < 0)
  {
    v7 = 0;
    goto LABEL_14;
  }

  if (dword_10007C040 >= 0x63)
  {
    v9 = 99;
  }

  v10 = (v9 + 1);
  v11 = &xmmword_10007D090;
  while (1)
  {
    v12 = v11[7];
    v45[2] = v11[6];
    v45[3] = v12;
    v46 = v11[8];
    v47 = *(v11 + 18);
    v13 = v11[3];
    v43[2] = v11[2];
    v44 = v13;
    v14 = v11[5];
    v45[0] = v11[4];
    v45[1] = v14;
    v15 = v11[1];
    v43[0] = *v11;
    v43[1] = v15;
    if (!v47)
    {
      goto LABEL_39;
    }

    if (!*(&v44 + 1))
    {
      goto LABEL_39;
    }

    v16 = sub_10001D860(a1, v46);
    if (!v16)
    {
      goto LABEL_39;
    }

    v42 = 0xAAAAAAAAAAAAAAAALL;
    memset(v41, 0, sizeof(v41));
    v17 = sub_10002D5F0(a1, v16, &v42);
    if (v17 || (v17 = sub_100034410(v42, *(v42 + 56), 0, v41), v17))
    {
      v7 = v17;
      goto LABEL_13;
    }

    v40 = 0;
    memset(v39, 0, sizeof(v39));
    *&v48[0] = v42;
    *(&v48[0] + 1) = v45;
    bzero(v49, 0x354uLL);
    bzero(v50, 0x35EuLL);
    bzero(v3, 0x354uLL);
    bzero(v5, 0x35EuLL);
    v3[4] = 8;
    v18 = sub_100039F68(v39, v45, 0, v3, 0x354u, 0x354u, v5, 862);
    if (v18 || (v18 = sub_10002C648(v39, sub_100009EBC, v48, 0), v18))
    {
      v7 = v18;
      v20 = strerror(v18);
      sub_10004565C("unable to fix overlaps in candidate tree: %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v28 = 1056;
      goto LABEL_45;
    }

    v38[0] = v42;
    v38[1] = v41;
    memset(v37, 0, sizeof(v37));
    v19 = sub_10003A444(v37, v45, 0, 0, 0);
    if (v19)
    {
      break;
    }

    v19 = sub_10002C648(v37, sub_10000A020, v38, 0);
    if (v19)
    {
      break;
    }

    sub_10003B928(v43, 0);
    sub_10003B928(v45, 0);
LABEL_39:
    v7 = 0;
    v11 = (v11 + 152);
    if (!--v10)
    {
      goto LABEL_13;
    }
  }

  v7 = v19;
  v29 = strerror(v19);
  sub_10004565C("unable to enqueue tree node insertion repairs: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
  v28 = 1057;
LABEL_45:
  sub_100049C40(v28, v7);
LABEL_14:
  free(v3);
LABEL_15:
  if (v5)
  {
    free(v5);
  }

  if (v49)
  {
    free(v49);
  }

  if (v50)
  {
    free(v50);
  }

  dword_100080BF0 = 0;
  dword_10007C040 = -1;
  return v7;
}

uint64_t sub_100009D48(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  if (a3 && a4 != 1)
  {
    sub_10000A64C(a2, a3, a5);
  }

  return 0;
}

uint64_t sub_100009DA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 8;
  v6 = malloc_type_calloc(8uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  v12 = v6;
  if (!v6)
  {
    return 12;
  }

  HIDWORD(v13) = 1;
  *v6 = a1;
  v6[1] = a2;
  v7 = sub_100001CF4(a3, sub_10000A8D0);
  if (v7 || (v7 = sub_100001C74(a3, sub_10000A8D0, &v12), v7))
  {
    v8 = v7;
  }

  else
  {
    if (SHIDWORD(v13) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        sub_10000A64C(*(v12 + v10), *(v12 + v10 + 8), a3);
        ++v11;
        v10 += 16;
      }

      while (v11 < SHIDWORD(v13));
    }

    v8 = 0;
  }

  if (v12)
  {
    free(v12);
  }

  return v8;
}

uint64_t sub_100009EBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = a5[1];
  v13 = a5[4];
  v12 = a5[5];
  v26 = 0;
  if (*(a5 + 16) != 1)
  {
LABEL_13:
    *(a5 + 16) = 1;
    bzero(a5[4], 0x354uLL);
    memcpy(a5[4], a1, a2);
    *(a5 + 5) = a2;
    bzero(a5[5], 0x35EuLL);
    memcpy(a5[5], a3, a4);
    result = 0;
    *(a5 + 6) = a4;
    return result;
  }

  v14 = *(v12 + 26);
  v15 = v12 + 30;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = *(a3 + 26);
  v17 = a3 + 30;
  if (!v16)
  {
    v17 = 0;
  }

  v23[0] = *(v13 + 16);
  v23[1] = v14;
  v24 = v13 + 20;
  v25 = v15;
  v20[0] = *(a1 + 16);
  v20[1] = v16;
  v21 = a1 + 20;
  v22 = v17;
  result = sub_100008CF4(*(*(v10 + 8) + 40), v23, v20, &v26, 0);
  if (!result)
  {
    v19 = v26;
    if (v26 == 1)
    {
      if (*(v13 + 8) <= *(a1 + 8))
      {
        result = sub_10000AA78(v11, v13, *(a5 + 5));
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_10000AA78(v11, a1, a2);
        if (result)
        {
          return result;
        }

        if (v19)
        {
          return 0;
        }
      }
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10000A020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 8);
  v7 = **a5;
  v8 = *(*a5 + 8);
  v9 = *(*a5 + 24);
  v10 = malloc_type_calloc(1uLL, v9, 0x7AD88AA1uLL);
  if (v10)
  {
    v11 = v10;
    if (!v8 || (v12 = *(v8 + 40), (*(v12 + 264) & 1) != 0))
    {
      v14 = 0;
      v13 = *v7;
    }

    else
    {
      v13 = *v7;
      if (*(v12 + 976))
      {
        v14 = 0;
      }

      else
      {
        v18 = *(v12 + 1096) != 0;
        v19 = *(v8 + 8 * v18 + 24);
        v20 = v8 + 96 * v18 + 832;
        if (v19)
        {
          v13 = v19;
          v14 = v20;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    v15 = sub_10002F454(v13, *(a3 + 10), v9 / *(v7[1] + 36), v11, v14, 0, 0, 0, 0);
    if (!v15)
    {
      memset(v31, 170, sizeof(v31));
      v30 = -21846;
      for (i = *(a3 + 18); ; ++i)
      {
        if (i > *(a3 + 22))
        {
          v15 = 0;
          goto LABEL_18;
        }

        sub_10003452C(v11, v6, i, &v31[5], v31, &v31[1], &v30);
        v17 = sub_100027D7C((v8 + 768), 6, 2, 0, 1, *&v31[5], v31[0], *&v31[1], v30);
        if (v17)
        {
          break;
        }
      }

      v15 = v17;
      v21 = **&v31[5] & 0xFFFFFFFFFFFFFFFLL;
      strerror(v17);
      sub_10004565C("unable to add tree node repair at key id %llu : %s\n", v22, v23, v24, v25, v26, v27, v28, v21);
      sub_100049C40(0x41C, v15);
    }

LABEL_18:
    free(v11);
  }

  else
  {
    v15 = 12;
    sub_100049C40(0x436, 12);
  }

  return v15;
}

uint64_t sub_10000A1E0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a5 + 34) || sub_10003471C(a5, a2, 0, 0, a5, a6, a7, a8))
  {
    return 0;
  }

  memset(v60, 170, 18);
  v59 = -21846;
  sub_1000346A4(a5, a2, 0, &v60[5], v60, *(a5 + 36) - 1, &v60[1], &v59);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v16 = v60[0] + 20;
  v17 = malloc_type_calloc(1uLL, v60[0] + 20, 0x25D373DAuLL);
  v18 = v17;
  if (v17)
  {
    *v17 = -1;
    *(v17 + 1) = -1;
    v19 = v60[0];
    *(v17 + 4) = v60[0];
    memcpy(v17 + 20, *&v60[5], v19);
    v20 = sub_10003A0AC(&v54, a3, 0, 0xFFFFFFFE, v18, v16, 0);
    if (!v20)
    {
      if ((BYTE8(v56) & 1) == 0)
      {
        while (1)
        {
          v31 = v55;
          v32 = *(*(&v55 + 1) + 26);
          v53 = 0;
          v33 = v55 + 20;
          if (sub_10003F384(*(*(a1 + 8) + 40), (v55 + 20), *(v55 + 16), *&v60[1], v59, &v53) || v53 >= 1)
          {
            break;
          }

          v35 = *(&v31 + 1) + 30;
          if (!v32)
          {
            v35 = 0;
          }

          v36 = *(*(&v31 + 1) + 26);
          v50[0] = *(v31 + 16);
          v50[1] = v36;
          v51 = v33;
          v52 = v35;
          v47[0] = v60[0];
          v47[1] = v59;
          v48 = *&v60[5];
          v49 = *&v60[1];
          v37 = sub_10000A45C(a4, *(*(a1 + 8) + 40), a2, a5, a6, 0, v50, v47);
          if (v37)
          {
            v14 = v37;
            goto LABEL_11;
          }

          v38 = (*(&v54 + 1))(&v54);
          v14 = v38;
          if (v38)
          {
            v39 = strerror(v38);
            sub_10004565C("unable to iterate tree for tree node repairs: %s\n", v40, v41, v42, v43, v44, v45, v46, v39);
            v29 = 1049;
            goto LABEL_8;
          }

          if (BYTE8(v56) == 1)
          {
            goto LABEL_11;
          }
        }
      }

      v14 = 0;
      goto LABEL_11;
    }

    v14 = v20;
    v21 = strerror(v20);
    sub_10004565C("unable to iterate tree for tree node repairs: %s\n", v22, v23, v24, v25, v26, v27, v28, v21);
    v29 = 1048;
LABEL_8:
    v30 = v14;
  }

  else
  {
    v14 = 12;
    v29 = 1047;
    v30 = 12;
  }

  sub_100049C40(v29, v30);
LABEL_11:
  if (v54)
  {
    (v54)(&v54);
  }

  if (v18)
  {
    free(v18);
  }

  return v14;
}

uint64_t sub_10000A45C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, int *a8)
{
  v32 = 0;
  memset(v31, 170, sizeof(v31));
  if (sub_100008CF4(a2, a7, a8, &v32, v31) || v32 != 1)
  {
    return 0;
  }

  memset(v30, 170, sizeof(v30));
  v29 = 0;
  v28 = -21846;
  v14 = -1;
  v27 = -1;
  v15 = *(a4 + 36);
  if (v15)
  {
    do
    {
      v16 = v14++;
      sub_10003452C(a4, a3, v14, &v30[2], &v29 + 1, v30, &v28);
      v17 = sub_10003F384(a2, v30[2], HIWORD(v29), v31[1], v31[0], &v27);
      v15 = *(a4 + 36);
      v18 = v17 == 0;
      v19 = v16 + 2 < v15 && v17 == 0;
    }

    while (v19 && v27 < 0);
    v27 = -1;
    if (v14 >= v15 || v17)
    {
      v20 = v14;
    }

    else
    {
      v20 = v14;
      do
      {
        sub_10003452C(a4, a3, v20, &v30[1], &v29, v30, &v28);
        v21 = sub_10003F384(a2, v30[1], v29, v31[2], HIDWORD(v31[0]), &v27);
        ++v20;
        v15 = *(a4 + 36);
        v18 = v21 == 0;
      }

      while (v20 < v15 && v21 == 0 && v27 < 1);
    }
  }

  else
  {
    v18 = 1;
    v20 = -1;
  }

  v24 = v20 - 1;
  if (!v18 || v24 == v15)
  {
    return 0;
  }

  else
  {
    return sub_100009048(a1, *(a4 + 8), *(a4 + 16), *(a4 + 34), a5, a6, v30[2], HIWORD(v29), v14, v30[1], v29, v24);
  }
}

uint64_t sub_10000A64C(unint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = malloc_type_calloc(1uLL, *(a3[1] + 36), 0xE9F84ABCuLL);
  if (!v6)
  {
    sub_100049C40(0x435, 12);
    return 0;
  }

  v7 = v6;
  v8 = dword_10007C040;
  if (dword_10007C040 < 0)
  {
    goto LABEL_30;
  }

  v9 = 0;
  v10 = a2 + a1;
  if (dword_10007C040 >= 0x63)
  {
    v8 = 99;
  }

  v11 = (v8 + 1);
  v32 = v11;
  while (1)
  {
    v12 = &xmmword_10007D090 + 152 * v9;
    v13 = *(v12 + 7);
    v37[2] = *(v12 + 6);
    v37[3] = v13;
    v38 = *(v12 + 8);
    v39 = *(v12 + 18);
    v14 = *(v12 + 3);
    v35[2] = *(v12 + 2);
    v36 = v14;
    v15 = *(v12 + 5);
    v37[0] = *(v12 + 4);
    v37[1] = v15;
    v16 = *(v12 + 1);
    v35[0] = *v12;
    v35[1] = v16;
    if (!v39)
    {
      goto LABEL_29;
    }

    if (!*(&v36 + 1))
    {
      goto LABEL_29;
    }

    v17 = sub_10001D860(a3, v38);
    if (!v17)
    {
      goto LABEL_29;
    }

    v18 = v17;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    memset(v33, 0, sizeof(v33));
    if (sub_10002D5F0(a3, v17, &v34) || sub_100034410(v34, *(v34 + 56), 0, v33))
    {
      goto LABEL_30;
    }

    v19 = *(v18 + 5);
    v20 = (*(v19 + 264) & 1) != 0 || *(v19 + 976) != 0;
    if (a1 < v10)
    {
      break;
    }

LABEL_28:
    v11 = v32;
LABEL_29:
    if (++v9 == v11)
    {
      goto LABEL_30;
    }
  }

  v21 = *(v34 + 24);
  v22 = *(v19 + 1096) != 0;
  v23 = v18 + 24;
  v24 = &v18[96 * (*(v19 + 1096) != 0) + 832];
  while (1)
  {
    v25 = *a3;
    if (v20)
    {
      v26 = 0;
    }

    else if (*&v23[8 * v22])
    {
      v25 = *&v23[8 * v22];
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    if (sub_10002F454(v25, a1, v21 / *(a3[1] + 36), v7, v26, 0, 0, 0, 0) || (*(v7 + 24) & 0xFFFFFFFE) == 2 && *(v7 + 28) == 14 && !sub_10003ED88(v7, (v7 + 8), v21 - 8, 0, v27, v28) && sub_10000A1E0(v34, v33, v35, v37, v7, a1, v29, v30))
    {
      break;
    }

    if (v10 == ++a1)
    {
      a1 = v10;
      goto LABEL_28;
    }
  }

LABEL_30:
  free(v7);
  return 0;
}

uint64_t sub_10000A8D0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (*(a3 + 12) < 1)
  {
    return 0;
  }

  v11 = v3;
  v12 = v4;
  v8 = 0;
  v10 = -86;
  while (1)
  {
    result = sub_100002C7C(*(*a3 + 16 * v8), *(*a3 + 16 * v8 + 8), a1, a2, &v10, sub_10000A988, a3);
    if (result)
    {
      break;
    }

    v8 = *(a3 + 8);
    if ((v10 & 1) == 0)
    {
      *(a3 + 8) = ++v8;
    }

    if (v8 >= *(a3 + 12))
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A988(uint64_t a1, uint64_t a2, int a3, int32x2_t *a4)
{
  v5 = *a4;
  v6 = a4[1].i32[0];
  if (a3)
  {
    memmove(&v5[16 * v6], &v5[16 * v6 + 16], 16 * (a4[1].i32[1] - v6));
    result = 0;
    --a4[1].i32[1];
    return result;
  }

  v10 = a4[1].i32[1];
  if (v10 != a4[2].i32[0])
  {
    goto LABEL_6;
  }

  a4[2].i32[0] = 2 * v10;
  v11 = malloc_type_realloc(v5, 32 * v10, 0x1000040451B5BE8uLL);
  if (v11)
  {
    v10 = a4[1].i32[1];
    v5 = v11;
LABEL_6:
    v12 = &v5[16 * v6];
    memmove(v12 + 16, v12, 16 * (v10 - v6));
    result = 0;
    *v12 = a1;
    *(v12 + 1) = a2;
    a4[1] = vadd_s32(a4[1], 0x100000001);
    return result;
  }

  free(v5);
  return 12;
}

uint64_t sub_10000AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10003B708(a1, 0, a2, a3);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *(a2 + 20) & 0xFFFFFFFFFFFFFFFLL;
    strerror(v4);
    sub_10004565C("unable to remove tree node at key id %llu for repairs : %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
    sub_100049C40(0x416, v5);
  }

  return v5;
}

uint64_t sub_10000AAEC(uint64_t *a1, unint64_t a2, void **a3)
{
  v6 = a1[3];
  v7 = v6[20];
  v8 = *a3;
  if (!*a3)
  {
    v8 = malloc_type_malloc(v6[8], 0xFF691DB1uLL);
    if (!v8)
    {
      v31 = 526;
      v32 = "Failed to allocate memory\n";
      goto LABEL_10;
    }
  }

  v16 = v6 + v7;
  v17 = a2 / v6[10];
  if (!v6[17])
  {
    v19 = 0;
    goto LABEL_12;
  }

  v18 = malloc_type_malloc(v6[8], 0x74CB18D2uLL);
  if (!v18)
  {
    v31 = 527;
    v32 = "Failed to allocate memory for cab\n";
LABEL_10:
    sub_10004565C(v32, v9, v10, v11, v12, v13, v14, v15, v43);
    v30 = 12;
    sub_100049C40(v31, 12);
    goto LABEL_17;
  }

  v19 = v18;
  v20 = v17 / v6[11];
  v21 = *&v16[8 * v20];
  v22 = sub_10002F3CC(*a1);
  if (v22)
  {
    v30 = v22;
    sub_10004565C("error (%d) getting cab %u @ %lld\n", v23, v24, v25, v26, v27, v28, v29, v22);
    sub_100049C40(0x1D6, v30);
LABEL_15:
    free(v19);
    goto LABEL_16;
  }

  v16 = v19 + 40;
  LODWORD(v17) = v17 - v6[11] * v20;
LABEL_12:
  v33 = *&v16[8 * v17];
  v34 = sub_10002F3CC(*a1);
  v30 = v34;
  if (v34)
  {
    sub_10004565C("error (%d) getting cib %u @ %lld\n", v35, v36, v37, v38, v39, v40, v41, v34);
    sub_100049C40(0x1D7, v30);
  }

  if (v19)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (!v30)
  {
LABEL_19:
    *a3 = v8;
    return v30;
  }

LABEL_17:
  if (v8 == *a3)
  {
    goto LABEL_19;
  }

  free(v8);
  return v30;
}

uint64_t sub_10000ACA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, char **a5, _DWORD *a6, int a7)
{
  v93 = 0;
  v12 = a1[3];
  v13 = a2 / *(v12 + 36);
  if (a5)
  {
    v93 = *a5;
  }

  v14 = sub_10000AAEC(a1, v13, &v93);
  if (v14)
  {
    v15 = v14;
    v93 = 0;
    strerror(v14);
    sub_10004565C("failed to get cib for chunk index %llu: %s\n", v16, v17, v18, v19, v20, v21, v22, v13);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_5;
  }

  v23 = v93;
  v27 = v93 + 40;
  v90 = v13 % *(v12 + 40);
  v28 = &v93[32 * v90 + 40];
  v30 = *(v28 + 3);
  v29 = v28 + 24;
  v24 = v30;
  if (v30)
  {
    v31 = sub_10002F3CC(*a1);
    v15 = v31;
    if (v31)
    {
      v39 = v13 / *(v12 + 40);
      v25 = v90;
      sub_10004565C("error (%d) getting cib %d bitmap %d @ %lld\n", v32, v33, v34, v35, v36, v37, v38, v31);
      sub_100049C40(0x1D8, v15);
      goto LABEL_5;
    }

LABEL_40:
    v26 = a4;
    v25 = v90;
LABEL_41:
    if (!a6)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v89 = v29;
  sub_10000849C(a3, 0, *(v12 + 36));
  if (!a7)
  {
    v24 = 0;
    v15 = 2;
    goto LABEL_40;
  }

  v96 = 0;
  v40 = a1[3];
  v41 = v40[8];
  v94 = 0;
  v95 = 0;
  v42 = malloc_type_malloc(v41, 0xCF3215BFuLL);
  if (!v42)
  {
    sub_10004565C("Failed to allocate memory\n", v43, v44, v45, v46, v47, v48, v49, v86);
    sub_100049C40(0x20C, 12);
    goto LABEL_53;
  }

  v50 = v42;
  v87 = v27;
  if (!v40[40])
  {
LABEL_51:
    free(v50);
LABEL_53:
    v24 = 0;
    v15 = 28;
LABEL_54:
    sub_100049C40(0x210, v15);
    v25 = v90;
LABEL_5:
    v26 = a4;
    if ((v15 & 0xFFFFFFFD) != 0)
    {
      if (a6)
      {
        *a6 = 0;
      }

      if (a4)
      {
        v24 = 0;
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v51 = 0;
  v52 = 0;
  v53 = (8 * v41);
  v91 = v40 + v40[82];
  v88 = v42;
  while (1)
  {
    v54 = *&v91[2 * v52];
    v55 = a1[3];
    v56 = *(v55 + 164);
    if ((v56 & 0x7FFFFFFFu) <= v54)
    {
      LOBYTE(v66) = 22;
LABEL_23:
      sub_10004565C("error (%d) looking up spaceman IP bitmap block %u\n", v43, v54, v45, v46, v47, v48, v49, v66);
      goto LABEL_24;
    }

    v57 = *(v55 + 168);
    if (v56 < 0)
    {
      v66 = sub_100031504(a1, v57, v54, &v96, 0);
      if (v66)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v96 = v57 + v54;
    }

    v58 = sub_10002F3CC(*a1);
    if (!v58)
    {
      break;
    }

    sub_10004565C("error (%d) getting spaceman IP bitmap block %u @ %lld\n", v59, v60, v61, v62, v63, v64, v65, v58);
LABEL_24:
    ++v52;
    v51 += v53;
    if (v52 >= v40[40])
    {
      goto LABEL_51;
    }
  }

  if (!sub_10000856C(0, v50, 0, v53, &v95))
  {
    goto LABEL_24;
  }

  v68 = v95;
  v69 = v95 + v51;
  v70 = a1[3];
  v71 = *(v70 + 152);
  if ((v71 & 0x7FFFFFFFFFFFFFFFuLL) <= v69)
  {
    LODWORD(v73) = 22;
LABEL_35:
    v82 = v73;
    sub_10004565C("error (%d) looking up spaceman IP block %llu\n", v68, v67, v45, v46, v47, v48, v49, v73);
    v83 = 543;
    goto LABEL_36;
  }

  v72 = *(v70 + 176);
  if ((v71 & 0x8000000000000000) == 0)
  {
    v73 = v72 + v69;
    v94 = v73;
    goto LABEL_32;
  }

  v73 = sub_100031504(a1, v72, v95 + v51, &v94, 0);
  if (v73)
  {
    goto LABEL_35;
  }

  v68 = v95;
LABEL_32:
  sub_1000083A8(v88, v68, 1, v73);
  v74 = sub_10002F4AC(*a1);
  if (v74)
  {
    v82 = v74;
    sub_10004565C("error (%d) writing spaceman IP bitmap %d @ %lld\n", v75, v76, v77, v78, v79, v80, v81, v74);
    v83 = 525;
LABEL_36:
    sub_100049C40(v83, v82);
    v50 = v88;
    goto LABEL_24;
  }

  v24 = v94;
  free(v88);
  if (!v24)
  {
    v15 = 92;
    goto LABEL_54;
  }

  v15 = 0;
  *v89 = v24;
  v85 = *(v12 + 16);
  v25 = v90;
  *&v87[32 * v90] = v85;
  v26 = a4;
  if (a6)
  {
LABEL_42:
    *a6 = v25;
  }

LABEL_43:
  if (v26)
  {
LABEL_44:
    *v26 = v24;
  }

LABEL_45:
  if (a5 && (!v15 || v23 == *a5))
  {
    *a5 = v23;
  }

  else
  {
    free(v23);
  }

  return v15;
}

uint64_t sub_10000B0A8(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = *(v5 + 36);
  if (v4 >= v6)
  {
    v12 = 0;
    *(a1 + 376) = 1;
  }

  else
  {
    v9 = v4 + 1;
    if (v9 < v6 && (v10 = v5 + 32 * v9, (v11 = *(v10 + 64)) != 0))
    {
      v12 = sub_10002692C(*a1, 0, 0x40000000, v11, *(v10 + 40), 0x20000000, 8, 0, a1 + 176 * (v9 & 1) + 24);
      if (v12)
      {
        sub_100049C40(0x47A, v12);
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *a1;
    v14 = *(a1 + 8) + 40;
    v15 = *(a1 + 16);
    v16 = *(v14 + 32 * v15 + 24);
    *a3 = v15;
    if (v16)
    {
      v17 = sub_100026968(v13, 0, 0x40000000, v16, *(v14 + 32 * v15), 0x20000000, 8, 0, a1 + 176 * (v15 & 1) + 24, a2, 0, 0);
      if (v17)
      {
        v18 = v17;
        sub_100049C40(0x47B, v17);
        if (v12)
        {
          v12 = v12;
        }

        else
        {
          v12 = v18;
        }
      }
    }

    else
    {
      v19 = malloc_type_calloc(1uLL, *(v13[1] + 36), 0x5F4AE810uLL);
      *a2 = v19;
      if (v19)
      {
        v20 = 0;
      }

      else
      {
        v20 = v12 == 0;
      }

      if (v20)
      {
        v12 = 12;
      }

      else
      {
        v12 = v12;
      }
    }

    ++*(a1 + 16);
  }

  return v12;
}

uint64_t sub_10000B220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t **a4, _DWORD *a5)
{
  if (!a1)
  {
    return 22;
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 376) = 0;
  v8 = *(a3 + 64);
  if (v8)
  {
    v9 = sub_10002692C(a2, 0, 0x40000000, v8, *(a3 + 40), 0x20000000, 8, 0, a1 + 24);
    if (v9)
    {
      v10 = v9;
      sub_100049C40(0x47C, v9);
      return v10;
    }
  }

  return sub_10000B0A8(a1, a4, a5);
}

uint64_t sub_10000B318(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  if (v1 < *(v2 + 36))
  {
    v3 = *(v2 + 32 * v1 + 64);
    if (v3)
    {
      sub_100026998(*a1, 0, v3, a1 + 176 * (v1 & 1) + 24);
    }
  }

  return 0;
}

char *sub_10000B374(uint64_t a1)
{
  qword_100080BF8 = a1;
  if (!sub_100039748(&unk_100080C00, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 48, 0, 0, sub_100030C88))
  {
    sub_10003B84C(&unk_100080C00, 0, 64);
  }

  result = sub_10001C108(&unk_100080C00, "dstream", sub_10000B450);
  if (result)
  {
    sub_100045744("failed to register the dstream tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

    return sub_100049C40(0x583, 12);
  }

  return result;
}

uint64_t sub_10000B450()
{
  if (qword_100080C38)
  {
    result = sub_10003B928(&unk_100080C00, 0);
  }

  qword_100080C40 = 0;
  return result;
}

uint64_t sub_10000B48C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080C40)
  {
    return 0;
  }

  if (qword_100080C40 >= a1)
  {
    if (qword_100080C40 > a1)
    {
      sub_10004565C("dstream (id %llu) is older than the current dstream (id %llu)\n", a2, a3, a4, a5, a6, a7, a8, a1);
      v12 = 92;
      sub_100049C40(0x3B8, 92);
      return v12;
    }

    return 0;
  }

  v15 = qword_100080C40;
  if ((BYTE8(xmmword_100080C68) & 3) != 2)
  {
    if ((BYTE8(xmmword_100080C68) & 4) == 0)
    {
      goto LABEL_23;
    }

    if (!xmmword_100080C68 || xmmword_100080C68 != DWORD1(xmmword_100080C68))
    {
      goto LABEL_23;
    }
  }

  v8 = qword_100080C50;
  if (qword_100080C58)
  {
    v9 = (BYTE8(xmmword_100080C68) & 0x80) == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v8 = qword_100080C58;
  }

  if ((BYTE8(xmmword_100080C68) & 0x18) == 0 && qword_100080C60 == v8)
  {
    sub_100038A68(qword_100080C40, DWORD1(xmmword_100080C68));
    v11 = sub_10003B708(dword_100080C00, 0, &v15, 8);
  }

  else
  {
LABEL_23:
    v11 = sub_10003B12C(dword_100080C00, 0, &v15, 8, &unk_100080C48, 0x30u);
  }

  v12 = v11;
  if (!v11)
  {
    qword_100080C40 = 0;
  }

  return v12;
}

uint64_t sub_10000B5B8(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v14;
  v48 = v14;
  v46 = v14;
  v15 = sub_10000B48C(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v15)
  {
    return v15;
  }

  v15 = sub_10000B838(a2, &v46);
  if (v15)
  {
    return v15;
  }

  if ((BYTE8(v48) & 3) == 1)
  {
    v17 = v10;
  }

  else
  {
    v17 = 0;
  }

  if ((BYTE8(v48) & 3) != 0 && !v17)
  {
    v44 = sub_10000CC64(&v46, a2, a1);
    sub_10004565C("found cloned xattr dstream (id %llu, object-ids %s)\n", v18, v19, v20, v21, v22, v23, v24, a2);
    free(v44);
    v16 = 92;
    v25 = 851;
LABEL_23:
    sub_100049C40(v25, 92);
    return v16;
  }

  if (v10)
  {
    v26 = 1;
  }

  else
  {
    v26 = 2;
  }

  v27 = v9 | ((BYTE8(v48) & 0x20) >> 5);
  if (v27)
  {
    v28 = 32;
  }

  else
  {
    v28 = 0;
  }

  if (v8 | ((BYTE8(v48) & 0x40) >> 6))
  {
    v29 = 64;
  }

  else
  {
    v29 = 0;
  }

  v30 = WORD4(v48) & 0xFF9C | v26 | v29 | v28;
  WORD4(v48) = v30;
  if (v27 && DWORD1(v48))
  {
    v45 = sub_10000CC64(&v46, a2, a1);
    sub_10004565C("cloned dstream (id %llu, object-ids %s) is being truncated\n", v31, v32, v33, v34, v35, v36, v37, a2);
    free(v45);
    v16 = 92;
    v25 = 807;
    goto LABEL_23;
  }

  if (DWORD1(v48))
  {
    v38 = *(&v46 + 1);
    if (*(&v46 + 1) != v11)
    {
      if (*(&v46 + 1) > v11)
      {
        *(&v46 + 1) = v11;
        v38 = v11;
      }

      v30 |= 0x10u;
      WORD4(v48) = v30;
      v11 = v38;
    }
  }

  else
  {
    *&v46 = a1;
    *(&v46 + 1) = v11;
  }

  v39 = ++DWORD1(v48);
  v49 = a2;
  if (((v30 & 3) == 2 || (v30 & 4) != 0 && v48 && v48 == v39) && (v47 ? (v40 = (v30 & 0x80) == 0) : (v40 = 1), !v40 ? (v41 = v47) : (v41 = v11), (v30 & 0x18) == 0 && *(&v47 + 1) == v41))
  {
    sub_100038A68(a2, v39);
    v42 = sub_10003B708(dword_100080C00, 0, &v49, 8);
  }

  else
  {
    v42 = sub_10003B12C(dword_100080C00, 0, &v49, 8, &v46, 0x30u);
  }

  v16 = v42;
  if (!v42)
  {
    if (a2 == a1)
    {
      v16 = 0;
      qword_100080C40 = a2;
      unk_100080C48 = v46;
      *&qword_100080C58 = v47;
      xmmword_100080C68 = v48;
      return v16;
    }

    return 0;
  }

  return v16;
}

uint64_t sub_10000B838(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 48;
  v5 = 8;
  result = sub_1000397B8(dword_100080C00, 0, 0, &v6, &v5, 8u, a2, &v4);
  if (result == 2)
  {
    *a2 = xmmword_100076D30;
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 2) = 0;
    *(a2 + 20) &= 0xFE00u;
    return sub_10003B12C(dword_100080C00, 0, &v6, 8, a2, 0x30u);
  }

  return result;
}

uint64_t sub_10000B91C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  if (a1)
  {
    return sub_100027D7C(a1, 7, 1, a2, a3, &v9, 8u, a5, a6);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10000B984(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  if (!qword_100080C38)
  {
    return 0;
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = v3;
  v9 = v3;
  v7 = v3;
  if (qword_100080C40 == a1)
  {
    result = 0;
    qword_100080C58 = a2;
  }

  else
  {
    v5 = 48;
    v6 = 8;
    LODWORD(result) = sub_1000397B8(dword_100080C00, 0, 0, &v10, &v6, 8u, &v7, &v5);
    if (result)
    {
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else
    {
      *&v8 = a2;
      return sub_10003B12C(dword_100080C00, 0, &v10, 8, &v7, 0x30u);
    }
  }

  return result;
}

void sub_10000BA58(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100080C38)
  {
    sub_10000BABC(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
    if (!v9)
    {
      WORD4(xmmword_100080C68) |= 4u;
      LODWORD(xmmword_100080C68) = *a2;
    }
  }
}

double sub_10000BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!sub_10000B48C(a1, a2, a3, a4, a5, a6, a7, a8) && !qword_100080C40)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v10;
    v13 = v10;
    v11 = v10;
    if (!sub_10000B838(a1, &v11))
    {
      qword_100080C40 = a1;
      unk_100080C48 = v11;
      *&qword_100080C58 = v12;
      result = *&v13;
      xmmword_100080C68 = v13;
    }
  }

  return result;
}

void sub_10000BB38(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100080C38)
  {
    sub_10000BABC(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      v11 = *a2 & 0xFFFFFFFFFFFFFFLL;
      if (v11)
      {
        v12 = a1[1];
        if (v12 != qword_100080C60)
        {
          WORD4(xmmword_100080C68) |= 8u;
          v12 = a1[1];
        }

        qword_100080C60 = v12 + v11;
      }

      else
      {
        WORD4(xmmword_100080C68) |= 8u;
      }
    }
  }
}

uint64_t sub_10000BBDC(uint64_t a1, void *a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  sub_10000BABC(*a2 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  v19 = v18;
  if (!v18)
  {
    v20 = a2[1] & 0xFFFFFFFFFFFFFFLL;
    v21 = *a3;
    v22 = *(*(a1 + 8) + 36);
    v23 = qword_100080C58;
    if (!qword_100080C58)
    {
      v23 = qword_100080C50;
    }

    WORD4(xmmword_100080C68) |= 0x80u;
    if (v20 >= v23)
    {
      sub_10004565C("data_hash: object (oid 0x%llx): Found unexpected hash at offset %llu (expected length %llu)\n", v11, v12, v13, v14, v15, v16, v17, qword_100080C40);
      v19 = 92;
      v24 = 929;
    }

    else if (*a3)
    {
      if (v20 == qword_100080C60)
      {
        v19 = 0;
        qword_100080C60 = v20 + (v22 * v21);
        return v19;
      }

      sub_10004565C("data_hash: object (oid 0x%llx): Missing hash at offset %llu (found %llu)\n", v11, v12, v13, v14, v15, v16, v17, qword_100080C40);
      v19 = 92;
      v24 = 931;
    }

    else
    {
      sub_10004565C("data_hash: object (oid 0x%llx): Invalid length at offset %llu\n", v11, v12, v13, v14, v15, v16, v17, qword_100080C40);
      v19 = 92;
      v24 = 930;
    }

    sub_100049C40(v24, 92);
  }

  return v19;
}

uint64_t sub_10000BD20(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  result = sub_10000B48C(*a1 & 0xFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v10;
    v17 = v10;
    v15 = v10;
    result = sub_10000B838(*a2, &v15);
    if (!result)
    {
      v11 = BYTE8(v17);
      WORD4(v17) |= 0x100u;
      v12 = *a2;
      v18 = *a2;
      if (((v11 & 3) == 2 || (v11 & 4) != 0 && v17 && v17 == DWORD1(v17)) && (v16 ? (v13 = (v11 & 0x80) == 0) : (v13 = 1), !v13 ? (v14 = v16) : (v14 = *(&v15 + 1)), (v11 & 0x18) == 0 && *(&v16 + 1) == v14))
      {
        sub_100038A68(v12, DWORD1(v17));
        return sub_10003B708(dword_100080C00, 0, &v18, 8);
      }

      else
      {
        return sub_10003B12C(dword_100080C00, 0, &v18, 8, &v15, 0x30u);
      }
    }
  }

  return result;
}

uint64_t sub_10000BE34(void *a1)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v1;
  v8 = v1;
  v7[0] = v1;
  v9 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  if (qword_100080C40 == v9)
  {
    v2 = WORD4(xmmword_100080C68);
  }

  else
  {
    v5 = 48;
    v6 = 8;
    v4 = sub_1000397B8(&unk_100080C00, 0, 0, &v9, &v6, 8u, v7, &v5);
    result = 0;
    if (v4)
    {
      return result;
    }

    v2 = WORD4(v8);
  }

  return (v2 >> 6) & 1;
}

uint64_t sub_10000BEE4(uint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080C38)
  {
    return 0;
  }

  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0u;
  v11 = *(a2 + 48);
  if (!v11)
  {
    v11 = *(a2 + 40);
  }

  v12 = *(v11 + 56);
  v116 = 1;
  if ((v12 & 0x20) != 0 && (v13 = sub_10004BB6C(a1, a2, qword_100080BF8, &v116, 0, 0, 0, 0), v13) || (v13 = sub_10000B48C(0xFFFFFFFFFFFFFFFFLL, a2, a3, a4, a5, a6, a7, a8), v13))
  {
LABEL_7:
    v14 = v13;
    goto LABEL_13;
  }

  v114 = 48;
  v115 = 8;
  v15 = sub_1000397B8(dword_100080C00, 0, 1u, &v120, &v115, 8u, &v117, &v114);
  if (!v15)
  {
    v111 = v12;
    while (1)
    {
      sub_100038A68(v120, DWORD1(v119));
      if (DWORD1(v119))
      {
        break;
      }

      if ((BYTE8(v119) & 4) != 0)
      {
        sub_100045744("found orphan dstream id object (id %llu, refcnt %u)\n", v17, v18, v19, v20, v21, v22, v23, v120);
        sub_100049C40(0x256, -2);
        v13 = sub_10000C6B0(a3, 0, 0, 0, v120, 0, v33, v34);
        if (v13)
        {
          goto LABEL_7;
        }
      }

      if (*(&v118 + 1))
      {
        v35 = "sealed volume hash records";
        if ((BYTE8(v119) & 0x80) == 0)
        {
          v35 = "file extents";
        }

        sub_100045744("found orphan %s (id %llu, size %llu)\n", v17, v18, v19, v20, v21, v22, v23, v35);
        sub_100049C40(0x257, -2);
        if ((v12 & 0x20) == 0)
        {
          v13 = sub_10000C718(a1, a2, a3, v120, &v117, 0);
          if (v13)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_77:
      v112 = 48;
      v113 = 8;
      v15 = sub_1000397B8(dword_100080C00, 0, 2u, &v120, &v113, 8u, &v117, &v112);
      if (v15)
      {
        goto LABEL_10;
      }
    }

    if ((BYTE8(v119) & 3) != 1)
    {
LABEL_40:
      if (v118)
      {
        v44 = (BYTE8(v119) & 0x80) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        v45 = *(&v117 + 1);
      }

      else
      {
        v45 = v118;
      }

      if ((BYTE8(v119) & 8) != 0 || *(&v118 + 1) != v45)
      {
        LOBYTE(v121[0]) = 0;
        v46 = *(a2 + 48);
        if (!v46)
        {
          v46 = *(a2 + 40);
        }

        if ((*(v46 + 56) & 0x20) != 0)
        {
          goto LABEL_57;
        }

        if ((WORD4(v119) & 0x120) == 0)
        {
          if (DWORD1(v119) != 1)
          {
            goto LABEL_57;
          }

          v13 = sub_10003FD88(a1, a2, qword_100080BF8, v117, v121);
          if (v13)
          {
            goto LABEL_7;
          }

          if ((v121[0] & 1) == 0)
          {
LABEL_57:
            if ((v12 & 0x20) != 0)
            {
              if (v116 == 1)
              {
                sub_10004565C("sealed volume hash records (id %llu, size %llu) do not match size of dstream (%llu)\n", v17, v18, v19, v20, v21, v22, v23, v120);
                v47 = sub_100049C40(0x438, 92);
                if (a3)
                {
                  *(a2 + 13) = 1;
                }

                else
                {
                  sub_10002797C(v47, v48, v49, v50, v51, v52, v53, v54);
                }
              }
            }

            else
            {
              v13 = sub_10000C718(a1, a2, a3, v120, &v117, 1u);
              if (v13)
              {
                goto LABEL_7;
              }
            }
          }
        }

        if ((BYTE8(v119) & 0x10) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((BYTE8(v119) & 0x10) == 0)
      {
        goto LABEL_77;
      }

      v55 = v120;
      v129[0] = 0xAAAAAAAAAAAAAAAALL;
      v126 = 0xAAAAAAAAAAAAAAAALL;
      v125 = -21846;
      v124 = -1431655766;
      v56 = malloc_type_calloc(1uLL, 0x340uLL, 0x371221CAuLL);
      v57 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x95C9F63FuLL);
      v58 = malloc_type_calloc(1uLL, 8 * DWORD1(v119), 0x100004000313F17uLL);
      v63 = sub_10003F8AC(a1, a2, 3, v129, v59, v60, v61, v62);
      v14 = v63;
      if (v56 && v57 && v58 && !v63)
      {
        v71 = sub_10000CE54(v55, v58, DWORD1(v119), &v124);
        if (v71)
        {
          v14 = v71;
          sub_10004565C("unable to get the file ids of dstream_id %llu\n", v72, v73, v74, v75, v76, v77, v78, v55);
        }

        else
        {
          v79 = v124;
          if (v124 > DWORD1(v119))
          {
            v124 = DWORD1(v119);
            v79 = DWORD1(v119);
          }

          if (v79)
          {
            v80 = 0;
            while (1)
            {
              *v56 = v58[v80] & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v127 = 3808;
              v128 = 8;
              v81 = sub_1000397B8(v129[0], qword_100080BF8, 0, v56, &v128, 0x340u, v57, &v127);
              if (v81)
              {
LABEL_91:
                v14 = v81;
                goto LABEL_72;
              }

              v82 = sub_100040474(v57 + 46, v127 - 92, 8, &v126, &v125, 0, 0);
              if (v82)
              {
                v14 = v82;
                goto LABEL_94;
              }

              if (v125 <= 0x27u)
              {
                break;
              }

              v90 = *(v126 + 8);
              if (v90 != *(&v117 + 1))
              {
                v110 = v58[v80];
                sub_10004565C("alloced_size (%llu) of dstream (id %llu, object-id %llu) does not match minimum found size (%llu)\n", v83, v84, v85, v86, v87, v88, v89, v90);
                sub_100049C40(0x2A0, 92);
                v121[0] = 0;
                v122 = 0u;
                v123 = 0;
                v121[1] = *(&v117 + 1);
                v81 = sub_10000B91C(a3, 13, 1, *v56, v121, 40, v91, v92);
                if (v81)
                {
                  goto LABEL_91;
                }
              }

              if (++v80 >= v124)
              {
                v14 = 0;
                goto LABEL_72;
              }
            }

            v14 = 34;
LABEL_94:
            v93 = *v56 & 0xFFFFFFFFFFFFFFFLL;
            strerror(v14);
            sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v94, v95, v96, v97, v98, v99, v100, v93);
            sub_100049C40(0x380, v14);
          }

          else
          {
            v14 = 0;
          }
        }
      }

      else
      {
        sub_10004565C("unable to init fsroot tree for dstream repair\n", v64, v65, v66, v67, v68, v69, v70, v109);
        sub_100049C40(0x355, v14);
LABEL_72:
        if (!v57)
        {
LABEL_74:
          if (v56)
          {
            free(v56);
          }

          LOBYTE(v12) = v111;
          if (v14)
          {
            goto LABEL_13;
          }

          goto LABEL_77;
        }
      }

      free(v57);
      goto LABEL_74;
    }

    if ((BYTE8(v119) & 4) != 0)
    {
      if (v119 >= DWORD1(v119))
      {
        if (v119 <= DWORD1(v119))
        {
          goto LABEL_40;
        }

        sub_100045744("refcnt (%u) of dstream id object (id %llu) is greater than expected (%u)\n", v17, v18, v19, v20, v21, v22, v23, v119);
        sub_100049C40(0x2A2, -2);
        v38 = v120;
        v39 = DWORD1(v119);
        v40 = a3;
        v41 = 1;
        v42 = 9;
        v43 = 0;
        goto LABEL_39;
      }

      sub_10004565C("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v17, v18, v19, v20, v21, v22, v23, v119);
      sub_100049C40(0x2C3, 92);
      v38 = v120;
      v39 = DWORD1(v119);
      v40 = a3;
      v41 = 1;
      v42 = 9;
    }

    else
    {
      v121[0] = 0xAAAAAAAAAAAAAAAALL;
      v129[0] = v120 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
      LODWORD(v126) = 0;
      v127 = 4;
      v128 = 8;
      v14 = sub_10003F8AC(a1, a2, 6, v121, v20, v21, v22, v23);
      if (!v14)
      {
        v14 = sub_1000397B8(v121[0], qword_100080BF8, 0, v129, &v128, v128, &v126, &v127);
      }

      if (v14 != 2)
      {
        if (v14)
        {
          v101 = v120;
          strerror(v14);
          sub_10004565C("failed to look up dstream id object (id %llu): %s\n", v102, v103, v104, v105, v106, v107, v108, v101);
          sub_100049C40(0x3EF, v14);
          goto LABEL_13;
        }

        sub_10004565C("refcnt (%u) of dstream id object (id %llu) is less than expected (%u)\n", v24, v25, v26, v27, v28, v29, v30, v126);
        sub_100049C40(0x358, 92);
        LODWORD(v126) = v126 + DWORD1(v119);
        v13 = sub_10000C6B0(a3, 1, 9, 1, v120, v126, v31, v32);
        if (v13)
        {
          goto LABEL_7;
        }

        WORD4(v119) &= ~0x10u;
        goto LABEL_40;
      }

      sub_10004565C("dstream (id %llu) does not have an associated dstream id object\n", v24, v25, v26, v27, v28, v29, v30, v120);
      sub_100049C40(0x251, 92);
      v38 = v120;
      v39 = DWORD1(v119);
      v40 = a3;
      v41 = 2;
      v42 = 0;
    }

    v43 = 1;
LABEL_39:
    v13 = sub_10000C6B0(v40, v41, v42, v43, v38, v39, v36, v37);
    if (v13)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_10:
  if (v15 == 2)
  {
    v14 = 0;
  }

  else
  {
    v14 = v15;
  }

LABEL_13:
  sub_10003B928(dword_100080C00, 0);
  return v14;
}

uint64_t sub_10000C6B0(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a5 & 0xFFFFFFFFFFFFFFFLL | 0x6000000000000000;
    return sub_100027D7C(a1, 7, a2, a3, a4, &v11, 8u, &v10, 4u);
  }

  else
  {

    return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_10000C718(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  *&v107 = 0xAAAAAAAAAAAAAAAALL;
  *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v106, 170, 24);
  if (*(a5 + 36))
  {
    v101 = *(a5 + 8);
  }

  else
  {
    v101 = 0;
  }

  v112 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v108[0] = v11;
  v108[1] = v11;
  v109 = v11;
  v110 = v11;
  v111 = 0xAAAAAAAAAAAAAAAALL;
  v12 = malloc_type_calloc(1uLL, 0x340uLL, 0xE0BC2888uLL);
  v13 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x27D18C27uLL);
  v18 = sub_10003F8AC(a1, a2, 8, &v112, v14, v15, v16, v17);
  v26 = v18;
  if (!v12 || !v13 || v18)
  {
    sub_10004565C("unable to init fsroot tree for dstream repair\n", v19, v20, v21, v22, v23, v24, v25, v93);
    v44 = 795;
LABEL_10:
    sub_100049C40(v44, v26);
    goto LABEL_11;
  }

  v27 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
  *v12 = v27;
  v12[1] = 0;
  v28 = sub_100039F68(v108, v112, qword_100080BF8, v12, 0x10u, 0x340u, v13, 3808);
  if (!v28)
  {
    v99 = a6;
    if (BYTE8(v109))
    {
      v46 = 0;
      v47 = v101;
LABEL_18:
      if (v47 != v46)
      {
        v97 = *(a5 + 24);
        sub_10004565C("alloced_size (%llu) of dstream (id %llu) does not match calculated size (%llu)\n", v29, v30, v31, v32, v33, v34, v35, v47);
      }

      if (v47 < v46)
      {
        sub_100049C40(0x3E3, 92);
        v48 = *&v106[0];
        v26 = sub_10000CFF8(v106, v47 - *(&v107 + 1), v49, v50, v51, v52, v53, v54);
        if (v26)
        {
          goto LABEL_11;
        }

        sub_10000CEC0(a1, a2, a3, 1, 10, v99, &v107, v106, v48 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
        goto LABEL_66;
      }

      if (v47 <= v46)
      {
        v26 = 0;
        goto LABEL_11;
      }

      if (v46)
      {
        v78 = 997;
      }

      else
      {
        v78 = 996;
      }

      sub_100049C40(v78, 92);
      *&v105 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *(&v105 + 1) = v46;
      memset(v104, 0, sizeof(v104));
      v26 = sub_10000CFF8(v104, v47 - v46, v79, v80, v81, v82, v83, v84);
      if (!v26)
      {
        sub_10000CEC0(a1, a2, a3, 2, 0, v99, &v105, v104, 0, 0);
LABEL_66:
        v26 = v55;
      }

LABEL_11:
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    v98 = 0;
    v46 = 0;
    v47 = v101;
    while (1)
    {
      if (*v12 != v27)
      {
        goto LABEL_18;
      }

      v56 = v12[1];
      v57 = *v13 & 0xFFFFFFFFFFFFFFLL;
      if (v57)
      {
        if (v56 > v46 && v56 < v47)
        {
          v95 = v12[1];
          sub_10004565C("found file extent gap (id %llu) at logical address %llu (expected %llu)\n", v29, v30, v31, v32, v33, v34, v35, a4);
          sub_100049C40(0x255, 92);
          v60 = v12[1];
          *&v105 = *v12;
          *(&v105 + 1) = v46;
          memset(v104, 0, sizeof(v104));
          v67 = sub_10000CFF8(v104, v60 - v46, v61, v62, v63, v64, v65, v66);
          if (v67)
          {
LABEL_67:
            v26 = v67;
            goto LABEL_12;
          }

          sub_10000CEC0(a1, a2, a3, 2, 0, v99, &v105, v104, 0, 0);
          goto LABEL_50;
        }

        if (v56 >= v46 || v56 >= v47)
        {
          if (v56 < v47)
          {
            goto LABEL_51;
          }

          v94 = v12[1];
          if (*(a5 + 36))
          {
            sub_10004565C("found file extent (id %llu) at logical address %llu beyond the end of the dstream %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
          }

          else
          {
            sub_100045744("found orphan file extent (id %llu) at logical address %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
          }

          sub_100049C40(0x37F, 92);
        }

        else
        {
          v96 = v12[1];
          sub_10004565C("found file extent overlap (id %llu) at logical address %llu (expected %llu)\n", v29, v30, v31, v32, v33, v34, v35, a4);
          sub_100049C40(0x354, 92);
          v105 = *v12;
          memset(v104, 170, sizeof(v104));
          v102 = 24;
          v103 = 16;
          v68 = sub_1000397B8(v112, qword_100080BF8, 2u, &v105, &v103, 0x10u, v104, &v102);
          if (v68 || v103 != 16)
          {
            v75 = *(&v107 + 1);
LABEL_48:
            v76 = *&v106[0];
            v67 = sub_10000CFF8(v106, v12[1] - v75, v69, v70, v71, v72, v73, v74);
            if (v67)
            {
              goto LABEL_67;
            }

            sub_10000CEC0(a1, a2, a3, 1, 10, v99, &v107, v106, v76 & 0xFFFFFFFFFFFFFFLL, (*(a5 + 40) & 0x40) != 0);
LABEL_50:
            if (v67)
            {
              goto LABEL_67;
            }

LABEL_51:
            v46 = v12[1] + v57;
            v107 = *v12;
            v106[0] = *v13;
            *&v106[1] = v13[2];
            v98 = v57;
            goto LABEL_56;
          }

          v75 = *(&v107 + 1);
          if (v105 != *v12 || *(&v105 + 1) - *(&v107 + 1) != v98)
          {
            goto LABEL_48;
          }
        }

        sub_10000CEC0(a1, a2, a3, 0, 0, v99, v12, v13, 0, 0);
      }

      else
      {
        sub_10004565C("invalid zero-length extent (id %llu) at logical address %llu\n", v29, v30, v31, v32, v33, v34, v35, a4);
        sub_100049C40(0x31A, 92);
        sub_10000CEC0(a1, a2, a3, 0, 0, 1, v12, v13, 0, 0);
      }

      if (v67)
      {
        goto LABEL_67;
      }

LABEL_56:
      v77 = (*(&v108[0] + 1))(v108);
      if (v77)
      {
        v26 = v77;
        v85 = strerror(v77);
        sub_10004565C("error iterating fsroot tree during dstream repair: %s\n", v86, v87, v88, v89, v90, v91, v92, v85);
        v44 = 796;
        goto LABEL_10;
      }

      v47 = v101;
      if (BYTE8(v109))
      {
        goto LABEL_18;
      }
    }
  }

  v26 = v28;
  v36 = strerror(v28);
  sub_10004565C("unable to init fsroot tree iterator for dstream repair: %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
LABEL_12:
  free(v13);
LABEL_13:
  if (v12)
  {
    free(v12);
  }

  return v26;
}

char *sub_10000CC64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v6) = *(a1 + 36);
  v22 = v6;
  v7 = malloc_type_malloc(8 * (v6 + 1), 0x100004000313F17uLL);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 36);
  if (v9)
  {
    if (v9 == 1)
    {
      *v7 = *a1;
      goto LABEL_9;
    }

    if (!sub_10000CE54(a2, v7, v9, &v22))
    {
      LODWORD(v6) = v22;
      v9 = *(a1 + 36);
      goto LABEL_9;
    }

    free(v8);
    return 0;
  }

LABEL_9:
  if (v6 > v9)
  {
    v22 = v9;
    LODWORD(v6) = v9;
  }

  *(v8 + v6) = a3;
  if (v6)
  {
    v11 = 0;
    v12 = 1;
    v6 = v6;
    do
    {
      v13 = *(v8 + v11);
      v14 = 1;
      if (v13 >= 0x3E8)
      {
        v15 = *(v8 + v11);
        do
        {
          v13 = v15 / 0x3E8;
          v14 += 3;
          v16 = v15 > 0xF423F;
          v15 /= 0x3E8uLL;
        }

        while (v16);
      }

      if (v13 >= 0xA)
      {
        do
        {
          ++v14;
          v16 = v13 > 0x63;
          v13 /= 0xAuLL;
        }

        while (v16);
      }

      v12 += v14 + 1;
      ++v11;
    }

    while (v11 != v6);
    v10 = malloc_type_malloc(v12, 0xDD739202uLL);
    if (v10)
    {
      v17 = 0;
      v18 = v8;
      while (1)
      {
        v19 = *v18++;
        v20 = snprintf(&v10[v17], v12 - v17, "%llu ", v19);
        if ((v20 & 0x80000000) != 0)
        {
          break;
        }

        v17 += v20;
        if (v17 >= v12)
        {
          break;
        }

        if (!--v6)
        {
          goto LABEL_27;
        }
      }

      free(v10);
      v10 = 0;
    }
  }

  else
  {
    v10 = malloc_type_malloc(1uLL, 0xDD739202uLL);
  }

LABEL_27:
  free(v8);
  return v10;
}