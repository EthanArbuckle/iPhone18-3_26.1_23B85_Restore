BOOL sub_10001AF84(uint64_t a1)
{
  if ((*(a1 + 152) & 2) != 0 || (*(a1 + 156) & 4) != 0)
  {
    return *(a1 + 48) == *(a1 + 136);
  }

  else
  {
    if (*(a1 + 144))
    {
      return 1;
    }

    return *(a1 + 136) == 0;
  }
}

BOOL sub_10001AFC4(uint64_t a1)
{
  v1 = *(a1 + 152);
  if ((v1 & 0x800) != 0)
  {
    if ((~v1 & 9) != 0 || (*(a1 + 156) & 0x40) == 0)
    {
      return 0;
    }

    return *(a1 + 128) == *(a1 + 120);
  }

  else
  {
    return (*(a1 + 156) & 0x40) == 0;
  }
}

uint64_t sub_10001B004(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  *v56 = a5;
  if (!a5)
  {
    return 0;
  }

  v5 = a5;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0;
  v54 = 18;
  v52 = 12;
  v16 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC49D8672uLL);
  v51 = 3808;
  if (!v16)
  {
    sub_10004565C("failed to allocate memory to mark dir-stats chain as inconsistent\n", v9, v10, v11, v12, v13, v14, v15, v45);
    v25 = 12;
    v26 = 1426;
    v27 = 12;
    goto LABEL_8;
  }

  v17 = sub_10003F8AC(a1, a2, 18, &v55, v12, v13, v14, v15);
  if (v17)
  {
    v25 = v17;
    sub_10004565C("failed to init fsroot tree to mark dir-stats chain as inconsistent\n", v18, v19, v20, v21, v22, v23, v24, v45);
    v26 = 1427;
    goto LABEL_5;
  }

  v29 = 513;
  while (1)
  {
    if (!--v29)
    {
      sub_100045744("performed too many chained-key iterations (current id %llu); can't mark the entire chain as needing reconciliation\n", v18, v19, v20, v21, v22, v23, v24, v5);
      sub_100049C40(0x594, 92);
LABEL_26:
      v25 = 0;
      goto LABEL_9;
    }

    v50 = 0;
    v53 = v5 & 0xFFFFFFFFFFFFFFFLL | 0xE000000000000000;
    *&v30 = 0xAAAAAAAAAAAAAAAALL;
    *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48[8] = v30;
    v49 = v30;
    v48[6] = v30;
    v48[7] = v30;
    v48[4] = v30;
    v48[5] = v30;
    v48[2] = v30;
    v48[3] = v30;
    v48[0] = v30;
    v48[1] = v30;
    v46 = 160;
    v47 = 8;
    v31 = sub_1000397B8(dword_100080D00, 0, 0, v56, &v47, 8u, v48, &v46);
    if (v31)
    {
      break;
    }

    v34 = DWORD2(v49);
    if ((WORD4(v49) & 0x100) != 0)
    {
      goto LABEL_21;
    }

    DWORD2(v49) |= 0x100u;
    v50 = v34 | 0x100;
    v35 = sub_10003B12C(dword_100080D00, 0, v56, 8, v48, 0xA0u);
    if (v35)
    {
      goto LABEL_27;
    }

LABEL_20:
    sub_100045744("need to mark dir-stats %llu as needing reconciliation, due to an issue with dir-stats %llu\n", v18, v19, v20, v21, v22, v23, v24, v56[0]);
    v35 = sub_10001BC00(a3, 1, 3, &v53, v52, &v50, 4, v36);
    if (v35)
    {
LABEL_27:
      v25 = v35;
      goto LABEL_9;
    }

LABEL_21:
    v5 = v16[4];
    if (v5 != *v56)
    {
      *v56 = v16[4];
      if (v5)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  v25 = v31;
  if (v31 != 2)
  {
    goto LABEL_9;
  }

  v51 = 3808;
  v32 = sub_1000397B8(v55, qword_100080CF8, 0, &v53, &v52, v52, v16, &v51);
  if (!v32)
  {
    v33 = *(v16 + 12);
    v50 = v33 | 0x100;
    if ((v33 & 0x100) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v25 = v32;
  if (v32 == 2)
  {
    goto LABEL_26;
  }

  v37 = v56[0];
  strerror(v32);
  sub_10004565C("failed to look up dir-stats object (id %llu): %s\n", v38, v39, v40, v41, v42, v43, v44, v37);
  v26 = 1429;
LABEL_5:
  v27 = v25;
LABEL_8:
  sub_100049C40(v26, v27);
LABEL_9:
  free(v16);
  return v25;
}

uint64_t sub_10001B2B8(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  *v13 = 0;
  memset(__s1, 0, sizeof(__s1));
  result = memcmp(__s1, a2, 0x40uLL);
  if (result)
  {
    result = sub_10001B3F0(a1, v13, &v12);
    if (!result)
    {
      result = sub_10001BAD8(v12, a2[2]);
      if (!result)
      {
        v11 = *v13;

        return sub_10001B920(v11, a2, v5, v6, v7, v8, v9, v10);
      }
    }
  }

  return result;
}

uint64_t sub_10001B350(uint64_t a1, _OWORD *a2)
{
  v6 = a1;
  v4 = 160;
  v5 = 8;
  result = sub_1000397B8(dword_100080D00, 0, 0, &v6, &v5, 8u, a2, &v4);
  if (result == 2)
  {
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return sub_10003B12C(dword_100080D00, 0, &v6, 8, a2, 0xA0u);
  }

  return result;
}

uint64_t sub_10001B3F0(uint64_t a1, uint64_t *a2, void *a3)
{
  *a3 = 0;
  *a2 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  if ((*(a1 + 152) & 0x10) != 0)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v18 = v8;
    v19 = v8;
    v16 = v8;
    v17 = v8;
    v14 = v8;
    v15 = v8;
    v12 = v8;
    v13 = v8;
    v10 = v8;
    v11 = v8;
    v6 = sub_10001B350(v4, &v10);
    if (!v6)
    {
      *a3 = *(a1 + 16);
      *a2 = v11;
    }
  }

  else
  {
    v6 = 0;
    *a2 = v4;
  }

  return v6;
}

uint64_t sub_10001B490@<X0>(uint64_t result@<X0>, int a2@<W1>, unsigned int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  v6 = dword_100080DE8;
  if (a2)
  {
    v7 = unk_100080DE0;
    v8 = *(&xmmword_100080DD0 + 1) + a5;
    *a6 = qword_100080D80 + a4;
    *(a6 + 8) = v8;
    v9 = qword_100080D90;
    *(a6 + 16) = v7 + a3;
    *(a6 + 24) = v9;
    v10 = qword_100080DA0;
    v11 = qword_100080DB0;
    *(a6 + 32) = qword_100080DA0;
    *(a6 + 40) = v11;
    if ((v6 & 0x40) == 0)
    {
      *(a6 + 48) = qword_100080DC0;
      if ((v6 & 0x800) == 0)
      {
        return result;
      }

      v10 = xmmword_100080DD0;
      goto LABEL_11;
    }

LABEL_10:
    *(a6 + 48) = v9;
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = unk_100080DE0;
  v13 = *(result + 144);
  v14 = *(&xmmword_100080DD0 + 1) + a5 - *(result + 136);
  *a6 = qword_100080D80 + a4 - *(result + 48);
  *(a6 + 8) = v14;
  v15 = v12 + a3 - v13;
  v16 = qword_100080D90;
  v17 = qword_100080D90 - *(result + 64);
  *(a6 + 16) = v15;
  *(a6 + 24) = v17;
  v10 = qword_100080DA0 - *(result + 80);
  v18 = qword_100080DB0 - *(result + 96);
  *(a6 + 32) = v10;
  *(a6 + 40) = v18;
  if ((v6 & 0x40) == 0)
  {
    *(a6 + 48) = qword_100080DC0 - *(result + 112);
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    v10 = xmmword_100080DD0 - *(result + 128);
    goto LABEL_11;
  }

  if ((*(result + 152) & 0x40) == 0)
  {
    v9 = v16 - *(result + 112);
    goto LABEL_10;
  }

  *(a6 + 48) = v17;
  if ((v6 & 0x800) == 0)
  {
    return result;
  }

LABEL_11:
  *(a6 + 56) = v10;
  return result;
}

char *sub_10001B5B8(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10001870C(a2 + 48, *a3, a1, "descendants", a5, a6, a7, a8);
  sub_10001870C(a2 + 136, a3[1], a1, "SAF descendants", v11, v12, v13, v14);
  sub_10001870C(a2 + 144, a3[2], a1, "dir-stats descendants", v15, v16, v17, v18);
  sub_10001870C(a2 + 64, a3[3], a1, "physical size", v19, v20, v21, v22);
  sub_10001870C(a2 + 80, a3[4], a1, "resource fork size", v23, v24, v25, v26);
  sub_10001870C(a2 + 96, a3[5], a1, "clone size", v27, v28, v29, v30);
  sub_10001870C(a2 + 112, a3[6], a1, "purgeable size", v31, v32, v33, v34);
  v39 = a3[7];

  return sub_10001870C(a2 + 128, v39, a1, "purgeable rsrc size", v35, v36, v37, v38);
}

uint64_t sub_10001B6B4(uint64_t result, void *a2)
{
  v10 = result;
  if (!result)
  {
    return result;
  }

  v3 = result;
  memset(__s1, 0, sizeof(__s1));
  if (!memcmp(__s1, a2, 0xA0uLL))
  {
    v12 = v3;
    if (qword_100080E28)
    {
      *&__s1[0] = a2[18];
      *(&__s1[0] + 1) = v3;
      v7 = sub_10003B708(&unk_100080DF0, 0, __s1, 16);
    }

    else
    {
      v7 = 0;
    }

    LODWORD(result) = sub_10003B708(dword_100080D00, 0, &v12, 8);
    if (result)
    {
      return result;
    }

    else
    {
      return v7;
    }
  }

  v4 = *(a2 + 78);
  if ((v4 & 1) == 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  v5 = *(a2 + 38);
  if ((v5 & 0x20) != 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  if ((v5 & 0x10) != 0)
  {
    if ((v5 & 0x80) != 0 || a2[4] || a2[3])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }
  }

  else
  {
    v6 = a2[3];
    if ((v5 & 0x80) != 0)
    {
      if (!v6 || a2[4] != v6)
      {
        return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
      }
    }

    else if (v6 || !a2[4])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }
  }

  if (((a2[19] & 0x10) == 0) == (v4 & 2) >> 1 || *a2 || (v4 & 4) == 0 && (a2[19] & 0x12) == 2 || !sub_10001AF84(a2) || a2[6] != a2[5] || a2[8] != a2[7])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  if (v5)
  {
    if (a2[10] != a2[9])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }
  }

  else if (a2[9])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  if ((v4 & 8) != 0 && (v5 & 4) != 0)
  {
    if (a2[12] != a2[11])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }
  }

  else if ((v4 & 8) != 0 || (v5 & 4) != 0)
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  if ((v5 & 0x50) == 0x40)
  {
    if ((v4 & 0x10) == 0 || (v5 & 8) == 0)
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }

    v8 = 0;
  }

  else
  {
    v8 = (v5 & 8) == 0;
  }

  if ((v4 & 0x20) != 0 && !v8)
  {
    if (a2[14] != a2[13])
    {
      return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
    }

    goto LABEL_49;
  }

  if ((!v8 | ((v4 & 0x20) >> 5)))
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

LABEL_49:
  v9 = sub_10001AFC4(a2);
  if ((v4 & 0x100) != 0 || (v5 & 0x400) != 0 || !v9 || a2[2] != a2[1])
  {
    return sub_10003B12C(dword_100080D00, 0, &v10, 8, a2, 0xA0u);
  }

  return sub_10001BB80(v3, a2);
}

uint64_t sub_10001B920(uint64_t a1, uint64_t *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36 = v10;
  v37 = v10;
  v34 = v10;
  v35 = v10;
  v32 = v10;
  v33 = v10;
  v30 = v10;
  v31 = v10;
  v11 = 513;
  v28 = v10;
  v29 = v10;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    v12 = a1;
    if (!--v11)
    {
      break;
    }

    v40 = 0u;
    v41 = 0u;
    __s1 = 0u;
    v39 = 0u;
    result = memcmp(&__s1, __s2, 0x40uLL);
    if (!result)
    {
      return result;
    }

    result = sub_10001B350(a1, &v28);
    if (result)
    {
      return result;
    }

    sub_10001B5B8(a1, &v28, __s2, v14, v15, v16, v17, v18);
    result = sub_10001B6B4(a1, &v28);
    if (result)
    {
      return result;
    }

    a1 = v29;
    if (v29 && (BYTE8(v37) & 0x10) != 0)
    {
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v20;
      v47 = v20;
      v44 = v20;
      v45 = v20;
      v42 = v20;
      v43 = v20;
      v40 = v20;
      v41 = v20;
      __s1 = v20;
      v39 = v20;
      result = sub_10001B350(v29, &__s1);
      if (result)
      {
        return result;
      }

      v19 = v29;
      a1 = v39;
    }

    else
    {
      v19 = 0;
    }

    result = sub_10001BAD8(v19, __s2[2]);
    if (result)
    {
      return result;
    }

    v21 = v28;
    if (v28)
    {
      result = sub_10001B350(v28, &v28);
      if (result)
      {
        return result;
      }

      sub_10001B5B8(v21, &v28, __s2, v22, v23, v24, v25, v26);
      result = sub_10001B6B4(v21, &v28);
      if (result)
      {
        return result;
      }
    }

    v27 = WORD4(v37);
    if ((BYTE8(v37) & 0x40) != 0)
    {
      __s2[6] = __s2[3];
      if ((v27 & 0x800) != 0)
      {
        __s2[7] = __s2[4];
      }
    }

    if (v12 == a1)
    {
      sub_100045744("detected chained-key loop involving dir-stats %llu\n", __s2, a3, a4, a5, a6, a7, a8, v12);
      sub_100049C40(0x59D, 92);
      return 0;
    }
  }

  sub_100045744("performed too many chained-key iterations (current id %llu); aborting dir-stats repairs\n", __s2, a3, a4, a5, a6, a7, a8, a1);
  sub_100049C40(0x590, 92);
  result = 0;
  byte_100080D40 = 1;
  return result;
}

uint64_t sub_10001BAD8(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v14[8] = v5;
      v15 = v5;
      v14[6] = v5;
      v14[7] = v5;
      v14[4] = v5;
      v14[5] = v5;
      v14[2] = v5;
      v14[3] = v5;
      v14[0] = v5;
      v14[1] = v5;
      result = sub_10001B350(a1, v14);
      if (!result)
      {
        v13 = __OFADD__(v15, a2);
        *&v15 = v15 + a2;
        if (v13)
        {
          sub_100045744("dir-stats object (id %llu): %s overflow\n", v6, v7, v8, v9, v10, v11, v12, a1);
          *&v15 = 0x7FFFFFFFFFFFFFFFLL;
          sub_100049C40(0x56D, 84);
        }

        return sub_10001B6B4(a1, v14);
      }
    }
  }

  return result;
}

uint64_t sub_10001BB80(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  if (qword_100080E28)
  {
    v4[0] = *(a2 + 144);
    v4[1] = a1;
    v2 = sub_10003B708(&unk_100080DF0, 0, v4, 16);
  }

  else
  {
    v2 = 0;
  }

  LODWORD(result) = sub_10003B708(dword_100080D00, 0, &v5, 8);
  if (result)
  {
    return result;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001BC00(_DWORD *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, a2, a3, 0, a4, a5, a6, a7);
  }

  sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

uint64_t sub_10001BC54(char *__s, uint64_t a2, __int128 *a3, io_connect_t *a4, uint64_t a5)
{
  outputStructCnt = 100;
  result = 22;
  if (__s && a4)
  {
    v11 = sub_10002E3D8(__s, 0, a4, 0, 0);
    if (v11)
    {

      return sub_10004F380(v11);
    }

    else
    {
      memset(v20 + 8, 170, 0x950uLL);
      v12 = a3[1];
      outputStruct = *a3;
      v19 = v12;
      *&v20[0] = a2;
      v13 = IOConnectCallStructMethod(*a4, 0x32u, &outputStruct, 0x28uLL, &outputStruct, &outputStructCnt);
      if (v13)
      {
        IOServiceClose(*a4);
      }

      if (a5)
      {
        v14 = v20[3];
        *(a5 + 64) = v20[2];
        *(a5 + 80) = v14;
        *(a5 + 96) = v20[4];
        v15 = v19;
        *a5 = outputStruct;
        *(a5 + 16) = v15;
        v16 = v20[1];
        *(a5 + 32) = v20[0];
        *(a5 + 48) = v16;
      }

      if (v13)
      {
        return sub_10004F380(v13);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10001BD78(io_connect_t *a1)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  v2 = *a1;
  if (!v2)
  {
    return 22;
  }

  v3 = IOConnectCallStructMethod(v2, 0x33u, 0, 0, 0, &outputStructCnt);
  if (v3)
  {
    return sub_10004F380(v3);
  }

  IOServiceClose(*a1);
  result = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_10001BDEC(char *a1, unsigned __int8 *uu, _OWORD *a3, char a4, uint64_t a5)
{
  outputStructCnt = 0;
  if (!a1)
  {
    return 22;
  }

  is_null = uuid_is_null(uu);
  result = 22;
  if (a5 && !is_null)
  {
    v17 = -1431655766;
    memset(__b, 170, sizeof(__b));
    v12 = sub_10002E3D8(a1, 0, &v17, 0, 0);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      uuid_copy(__b, uu);
      v14 = a3[1];
      *&__b[16] = *a3;
      *&__b[32] = v14;
      *&__b[56] = a5;
      __b[48] = a4;
      v13 = IOConnectCallStructMethod(v17, 0x3Bu, __b, 0x40uLL, 0, &outputStructCnt);
      IOServiceClose(v17);
      if (!v13)
      {
        return 0;
      }
    }

    return sub_10004F380(v13);
  }

  return result;
}

uint64_t sub_10001BEF4(char *a1, io_connect_t *a2)
{
  result = 22;
  if (a1 && a2)
  {
    if (*a2)
    {
      return 37;
    }

    else
    {
      v9 = v2;
      v10 = v3;
      if (*a1 == 114)
      {
        v6 = a1 + 1;
      }

      else
      {
        v6 = a1;
      }

      v8 = 0;
      v7 = sub_10002E3D8(v6, &v8, a2, 0, 0);
      return sub_10004F380(v7);
    }
  }

  return result;
}

uint64_t sub_10001BF60(char *a1, mach_port_t a2, unsigned int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, char a9)
{
  v18 = 8;
  v16 = sub_10002E0DC(a1, 0);
  result = 22;
  if (a3 - 6 >= 0xFFFFFFFB && a2 && v16 <= 0x63)
  {
    memset(&outputStruct[4], 170, 0x958uLL);
    outputStruct[0] = __PAIR64__(v16, a3);
    outputStruct[1] = a4;
    outputStruct[2] = a5;
    outputStruct[3] = *a6;
    LOBYTE(outputStruct[4]) = *(a7 + 64);
    outputStruct[5] = a8;
    LOBYTE(outputStruct[6]) = a9;
    result = IOConnectCallStructMethod(a2, 0x40u, outputStruct, 0x38uLL, outputStruct, &v18);
    if (a3 <= 4 && ((1 << a3) & 0x1A) != 0)
    {
      *a6 = outputStruct[0];
    }

    if (result)
    {
      return sub_10004F380(result);
    }
  }

  return result;
}

uint64_t sub_10001C070(uint64_t connect)
{
  if (connect)
  {
    return IOServiceClose(connect);
  }

  return connect;
}

unint64_t sub_10001C07C(unsigned int a1, unint64_t a2, unint64_t a3)
{
  v8 = 8;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (sysctlbyname("hw.memsize", &v9, &v8, 0, 0) == -1)
  {
    v6 = 0x4000000;
  }

  else
  {
    v6 = v9 / a1;
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10001C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (dword_100080E30)
  {
    v6 = qword_100080E38;
    v7 = dword_100080E30;
    do
    {
      if (*v6 == a1)
      {
        return 0;
      }

      v6 += 3;
      --v7;
    }

    while (v7);
    v8 = qword_100080E38;
    if ((dword_100080E30 & (dword_100080E30 - 1)) != 0)
    {
      goto LABEL_9;
    }

    v8 = malloc_type_realloc(qword_100080E38, 24 * (2 * dword_100080E30), 0xF0040613C4080uLL);
    if (v8)
    {
      qword_100080E38 = v8;
      goto LABEL_9;
    }

    return 12;
  }

  v8 = malloc_type_malloc(0x18uLL, 0xF0040613C4080uLL);
  qword_100080E38 = v8;
  if (!v8)
  {
    return 12;
  }

LABEL_9:
  v9 = 0;
  v10 = dword_100080E30;
  v11 = &v8[24 * dword_100080E30];
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *v11 = a1;
  dword_100080E30 = v10 + 1;
  return v9;
}

uint64_t sub_10001C204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_100080E48 || qword_100080E50 < qword_100080E48)
  {
    return 0;
  }

  v42[11] = v8;
  v42[12] = v9;
  if (qword_100080E50 >= qword_100080E40)
  {
    qword_100080E40 = qword_100080E50 + 52428800;
    sub_100045614("Allocated (%llu) MB for cached btrees in %u blocks, limit is (%llu) MB\n", a2, a3, a4, a5, a6, a7, a8, qword_100080E50 >> 20);
    if (dword_100080E30)
    {
      sub_100045614("Node counts:", v11, v12, v13, v14, v15, v16, v17, v41);
      if (dword_100080E30)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *(qword_100080E38 + v18 + 8);
          v42[0] = 0;
          sub_10003B7B8(*(qword_100080E38 + v18), 0, v42);
          sub_100045614(" %s tree (%llu)%s", v21, v22, v23, v24, v25, v26, v27, v20);
          ++v19;
          v18 += 24;
        }

        while (v19 < dword_100080E30);
      }
    }
  }

  result = 1;
  if (qword_100080E38 && dword_100080E30)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = qword_100080E38 + v28;
      v42[0] = 0;
      sub_10003B7B8(*(qword_100080E38 + v28), 0, v42);
      if (v42[0] > v30)
      {
        v31 = v32;
        v30 = v42[0];
      }

      ++v29;
      v28 += 24;
    }

    while (v29 < dword_100080E30);
    if (v31)
    {
      v40 = sub_100045614("Disabling fsck cross checks of %s tree\n", v33, v34, v35, v36, v37, v38, v39, *(v31 + 8));
      (*(v31 + 16))(v40);
      qword_100080E40 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_10001C3D8(size_t size, void *a2, void *a3)
{
  v5 = size;
  if (!qword_100080E48)
  {
    qword_100080E48 = sub_10001C07C(0x10u, 0x80000000uLL, 0);
  }

  if (dword_100080E58)
  {
    if ((dword_100080E58 & (dword_100080E58 - 1)) != 0)
    {
      goto LABEL_8;
    }

    v6 = malloc_type_realloc(qword_100080E60, 8 * (2 * dword_100080E58), 0x10040436913F5uLL);
    if (v6)
    {
      qword_100080E60 = v6;
      goto LABEL_8;
    }

    return 12;
  }

  qword_100080E60 = malloc_type_malloc(8uLL, 0x10040436913F5uLL);
  if (!qword_100080E60)
  {
    return 12;
  }

LABEL_8:
  *a2 = ++dword_100080E58;
  v7 = malloc_type_calloc(1uLL, v5, 0xE56A0005uLL);
  *(qword_100080E60 + 8 * *a2 - 8) = v7;
  qword_100080E50 += v5;
  if (!v7)
  {
    return 12;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = v7;
  result = 0;
  *a3 = v8;
  return result;
}

uint64_t sub_10001C500(unsigned int a1, uint64_t a2)
{
  result = 14;
  if (a2)
  {
    if (dword_100080E58 >= a2)
    {
      v4 = qword_100080E60 + 8 * a2;
      free(*(v4 - 8));
      result = 0;
      qword_100080E50 -= a1;
      *(v4 - 8) = 0;
    }
  }

  return result;
}

uint64_t sub_10001C564(uint64_t a1, uint64_t a2, void *a3)
{
  result = 14;
  if (a2 && dword_100080E58 >= a2)
  {
    v4 = *(qword_100080E60 + 8 * a2 - 8);
    if (v4)
    {
      result = 0;
      *a3 = v4;
    }
  }

  return result;
}

uint64_t sub_10001C59C(size_t __n, uint64_t a2, void *__src)
{
  v3 = 14;
  if (a2 && dword_100080E58 >= a2)
  {
    v4 = *(qword_100080E60 + 8 * a2 - 8);
    if (v4)
    {
      if (v4 != __src)
      {
        memcpy(v4, __src, __n);
      }

      return 0;
    }

    else
    {
      return 14;
    }
  }

  return v3;
}

uint64_t sub_10001C614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100045428("fsck cache stats:\n", a2, a3, a4, a5, a6, a7, a8, vars0);
  sub_10001C65C(1);
  sub_100045428("\n", v8, v9, v10, v11, v12, v13, v14, vars0a);

  return sub_10001C65C(0);
}

uint64_t sub_10001C65C(int a1)
{
  if (a1)
  {
    v1 = &unk_100080E68;
  }

  else
  {
    v1 = &unk_100080E98;
  }

  if (a1)
  {
    v2 = "hit";
  }

  else
  {
    v2 = "miss";
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v50 = v3;
  v51 = v3;
  if (a1)
  {
    v4 = &unk_100080E74;
  }

  else
  {
    v4 = &unk_100080EA4;
  }

  __sprintf_chk(v50, 0, 0x20uLL, "Cache %s count:", v2);
  v46 = *(v1 + 2);
  sub_100045428("\t%-32s %u\n", v5, v6, v7, v8, v9, v10, v11, v50);
  __sprintf_chk(v50, 0, 0x20uLL, "Cache %s time:", v2);
  v47 = *v1;
  sub_100045428("\t%-32s %.2lf [usec]\n", v12, v13, v14, v15, v16, v17, v18, v50);
  __sprintf_chk(v50, 0, 0x20uLL, "Cache average %s time:", v2);
  LODWORD(v19) = *(v1 + 2);
  v48 = *v1 / v19;
  sub_100045428("\t%-32s %.2lf [usec]\n", v20, v21, v22, v23, v24, v25, v26, v50);
  sub_100045428("\tCache %s histogram:\n", v27, v28, v29, v30, v31, v32, v33, v2);
  v34 = 0;
  v35 = 0;
  do
  {
    v43 = __exp10(v34);
    if (v34 >= 4)
    {
      if (v34 == 7)
      {
        v35 /= 0xF4240uLL;
      }

      else
      {
        v35 /= 0x3E8uLL;
      }

LABEL_17:
      v44 = off_100078740[(v34 - 1) / 3u];
      goto LABEL_18;
    }

    if (v34)
    {
      goto LABEL_17;
    }

LABEL_18:
    v49 = v4[v34];
    result = sub_100045428("\t\t[%4llu - %4llu) [%4s] = %d\n", v36, v37, v38, v39, v40, v41, v42, v35);
    ++v34;
    v35 = v43;
  }

  while (v34 != 8);
  return result;
}

uint64_t sub_10001C8D8(uint64_t *a1, __int128 *a2, int a3, unsigned int a4)
{
  v39 = 0;
  v8 = *(*a1 + 72);
  if (v8 && *(v8 + 128) == sub_10001CB80)
  {
    return 0;
  }

  v9 = malloc_type_malloc(0xB0uLL, 0x80040F50BA72EuLL);
  if (!v9)
  {
    return 12;
  }

  v17 = v9;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    v18 = dword_10007C048;
  }

  if (v18 > 0x100000 || v18 % *(*a1 + 84) || vm_page_size < v18 && v18 % vm_page_size || vm_page_size > v18 && vm_page_size % v18)
  {
    v19 = 34;
  }

  else
  {
    v21 = *(*a1 + 72);
    v23 = v21[9];
    v22 = v21[10];
    v24 = v21[7];
    v9[8] = v21[8];
    v25 = v21[2];
    v26 = *v21;
    v9[1] = v21[1];
    v9[2] = v25;
    v28 = v21[5];
    v27 = v21[6];
    v29 = v21[4];
    v9[3] = v21[3];
    v9[4] = v29;
    v9[6] = v27;
    v9[7] = v24;
    v9[9] = v23;
    v9[10] = v22;
    *v9 = v26;
    v9[5] = v28;
    *(v9 + 16) = sub_10001CB80;
    *(v9 + 3) = sub_10001CBDC;
    *(v9 + 5) = sub_10001CC0C;
    *(v9 + 4) = sub_10001CE44;
    *(v9 + 6) = sub_10001CE4C;
    *(v9 + 8) = sub_10001CF9C;
    *(v9 + 9) = sub_10001D018;
    *(v9 + 11) = sub_10001D0A0;
    *(v9 + 18) = sub_10001D120;
    if (*(qword_10009BA60 + 40))
    {
      v30 = 0x4000000;
    }

    else
    {
      if (a3)
      {
        v31 = a3;
      }

      else
      {
        v31 = 8;
      }

      v30 = sub_10001C07C(v31, &_mh_execute_header, 0);
    }

    v32 = a4 != 0;
    v33 = *(*a1 + 84);
    v34 = v30 / v33;
    v35 = *(*a1 + 112);
    v36 = v35 * v33;
    if (v34 <= v35)
    {
      v37 = v30;
    }

    else
    {
      v37 = v36;
    }

    v38 = v37 / v18;
    sub_100045614("Requested cache size: %lluMB (%uk blocks * %ukB)\n", v10, v11, v12, v13, v14, v15, v16, v37 >> 20);
    v19 = sub_1000480B8(&v39, *a1, a2, *(*a1 + 72), v18, v38, 0x101u, 0, v32);
    if (!v19)
    {
      *(*a1 + 16) = v39;
      *(*a1 + 72) = v17;
      return v19;
    }
  }

  free(v17);
  sub_10002F398(*a1);
  *a1 = 0;
  return v19;
}

uint64_t sub_10001CB80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    free(*(a1 + 72));
    *(a1 + 72) = sub_10004853C(*(a1 + 16));
    sub_1000483CC(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  return sub_10002F398(a1);
}

double sub_10001CC0C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {

    sub_10001D304(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {
    v16 = sub_10002F380(a1);
    v24 = 1;
    v23 = 0;
    if ((a9 & 0x10000) != 0)
    {
      v21 = *(sub_10004853C(*(a1 + 16)) + 40);

      LODWORD(a9) = a9 & 0xFFFEFFFF;
      v21(a1, a2, a3, a4, a5, 0, 0, a8, a9, 0);
    }

    else
    {
      v17 = v16 * a2;
      v18 = v16 * a3;
      if (byte_10009B0F0 == 1)
      {
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        tv_sec = __tp.tv_sec;
        v20 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        tv_sec = 0;
        v20 = 0;
      }

      if (!sub_100048780(*(a1 + 16), v17, v18, &v23, a5, a9, &v24, 0, a8))
      {
        if (byte_10009B0F0 == 1)
        {
          __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          sub_10001D50C(v24, tv_sec, v20, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, 0);
        }

        v22 = v23;
        memcpy(a4, *(v23 + 40), v18);
        return sub_100049474(*(a1 + 16), v22, 0);
      }
    }
  }

  return result;
}

uint64_t sub_10001CE4C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 112))
  {
    return 0;
  }

  v4 = sub_10002F380(a1);
  v5 = *(a2 + 120);
  v6 = *(a2 + 128);
  v7 = *(a2 + 112);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (byte_10009B0F0 == 1)
  {
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v9 = SLODWORD(__tp.tv_nsec) / 1000;
  }

  else
  {
    tv_sec = 0;
    v9 = 0;
  }

  result = sub_100048608(*(a1 + 16), v5, &v11);
  if (!result)
  {
    if (byte_10009B0F0 == 1)
    {
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      sub_10001D50C(0, tv_sec, v9, __tp.tv_sec, SLODWORD(__tp.tv_nsec) / 1000, *(a2 + 136));
    }

    memcpy(*(a2 + 104), (v7 + v6), v4);
    return sub_1000486DC(*(a1 + 16), v11);
  }

  return result;
}

uint64_t sub_10001D0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10002F380(a1);
  v7 = sub_10004853C(*(a1 + 16));
  v8 = (*(v7 + 88))(a1, a2, a3);
  if (!v8)
  {
    sub_100049780(*(a1 + 16), 0, v6 * a2, v6 * a3);
  }

  return v8;
}

uint64_t sub_10001D120(uint64_t a1, uint64_t a2)
{
  result = sub_1000484FC(*(a1 + 16), a2);
  if (!result)
  {
    v5 = *(sub_10004853C(*(a1 + 16)) + 144);

    return v5(a1, a2);
  }

  return result;
}

uint64_t sub_10001D180(int a1, uint64_t *a2)
{
  result = sub_10002FCDC(a1, a2);
  if (!result)
  {

    return sub_10001C8D8(a2, 0, 0, 0);
  }

  return result;
}

uint64_t sub_10001D1D4(int a1, uint64_t a2, uint64_t *a3, __int128 *a4, int a5, unsigned int a6)
{
  result = sub_10002FCDC(a1, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10001D244(char *a1, int a2, uint64_t *a3, __int128 *a4, int a5, unsigned int a6)
{
  result = sub_10002FFDC(a1, a2, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_10001D2B0(char *a1, int a2, uint64_t *a3)
{
  result = sub_10002FFDC(a1, a2, a3);
  if (!result)
  {

    return sub_10001C8D8(a3, 0, 0, 0);
  }

  return result;
}

void sub_10001D304(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 1 && (a6 & 0x10000) == 0)
  {
    v15 = *(a1 + 16);
    v16 = sub_10002F380(a1);
    v24 = sub_1000484F4(v15);
    tv_sec = 0;
    v18 = 0;
    v19 = v16;
    v20 = v16 * a2;
    v27 = 0;
    v26 = 1;
    if (byte_10009B0F0 == 1)
    {
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      tv_sec = __tp.tv_sec;
      v18 = SLODWORD(__tp.tv_nsec) / 1000;
    }

    v25 = tv_sec;
    if (!sub_100048780(*(a1 + 16), v20, v16, &v27, a5, a6, &v26, a7, a8))
    {
      if (byte_10009B0F0 == 1)
      {
        __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v21 = __tp.tv_sec;
        v22 = SLODWORD(__tp.tv_nsec) / 1000;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      if (v26 == 1)
      {
        if (byte_10009B0F0)
        {
          sub_10001D50C(1, v25, v18, v21, v22, 0);
        }

        v23 = v27;
        memcpy(a4, *(v27 + 40), v19);
        sub_100049474(*(a1 + 16), v23, 0);
        *(a7 + 112) = 0;
      }

      else
      {
        if (byte_10009B0F0)
        {
          *(a7 + 136) = 1000000 * (v21 - v25) - v18 + v22;
        }

        *(a7 + 104) = a4;
        *(a7 + 120) = v20 / v24 * v24;
        *(a7 + 128) = v20 % v24;
      }
    }
  }
}

uint64_t sub_10001D50C(uint64_t result, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = result;
  v7 = a6 - a3 + a5 + 1000000 * (a4 - a2);
  if (v7)
  {
    result = sub_10004F1B0(a6 - a3 + a5 + 1000000 * (a4 - a2));
    v8 = result + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    v8 = 7;
  }

  if (v6)
  {
    v9 = &unk_100080E68;
  }

  else
  {
    v9 = &unk_100080E98;
  }

  ++*(v9 + 2);
  *v9 = *v9 + v7;
  v10 = &unk_100080EA4;
  if (v6)
  {
    v10 = &unk_100080E74;
  }

  ++v10[v8];
  return result;
}

uint64_t sub_10001D5B4(void *a1, const char *a2, uint64_t a3)
{
  v6 = sub_1000038F0();
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v7;
  v12 = v7;
  snprintf(__str, 0x20uLL, "%s (%s)", a2, v6);
  v8 = 0;
  v9 = (a1 + 40);
  do
  {
    if (!strncmp(v9, __str, 0x20uLL))
    {
      break;
    }

    ++v8;
    v9 += 48;
  }

  while (v8 != 7);
  memmove(a1 + 46, a1 + 40, 48 * v8);
  __strlcpy_chk();
  result = sub_10000EC94();
  a1[44] = result;
  a1[45] = a3;
  return result;
}

char *sub_10001D6AC(unint64_t a1, char *__str, int a3)
{
  v6 = 0;
  LODWORD(v7) = 1;
  do
  {
    if (__ROR8__(0x1CAC083126E978D5 * (a1 / *(&unk_100076D90 + v6 + 1)), 3) >= 0x4189374BC6A7F0uLL)
    {
      v7 = (v6 + 2);
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  while (v6 != 4);
  v8 = snprintf(__str, a3, "%llu", a1 / 0xE8D4A51000);
  result = 0;
  if ((v8 & 0x80000000) == 0 && v8 <= a3)
  {
    if (v7 < 2)
    {
      return __str;
    }

    else
    {
      v10 = v7 - 1;
      v11 = &qword_100076D98;
      while (1)
      {
        v12 = *v11++;
        v13 = snprintf(&__str[v8], a3 - v8, ".%llu", a1 / v12 % 0x3E8);
        if (v13 < 0)
        {
          break;
        }

        v8 += v13;
        if (v8 > a3)
        {
          break;
        }

        if (!--v10)
        {
          return __str;
        }
      }

      return 0;
    }
  }

  return result;
}

char *sub_10001D82C(uint64_t a1, unsigned int a2)
{
  if (a1 && (v2 = *(a1 + 8)) != 0)
  {
    v3 = *(v2 + 180);
  }

  else
  {
    v3 = 100;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  else
  {
    return &unk_100081090 + 1024 * a2;
  }
}

char *sub_10001D860(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 180);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 184);
  for (result = &unk_100081090; ; result += 1024)
  {
    v6 = *v4++;
    if (v6 == a2)
    {
      break;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

void *sub_10001D898(uint64_t a1, unsigned __int8 *uu1)
{
  v2 = *(a1 + 8);
  if (*(v2 + 180))
  {
    v5 = 0;
    v6 = &unk_100081090;
    do
    {
      v7 = v6[5];
      if (v7)
      {
        if (!uuid_compare(uu1, (v7 + 240)))
        {
          return v6;
        }

        v2 = *(a1 + 8);
      }

      ++v5;
      v6 += 128;
    }

    while (v5 < *(v2 + 180));
  }

  return 0;
}

uint64_t sub_10001D914(uint64_t result, _DWORD *a2, int *a3)
{
  v3 = qword_10009BA60;
  v4 = *(qword_10009BA60 + 24);
  if (v4 == -1)
  {
    *a2 = 0;
    if (result && (v6 = *(result + 8)) != 0)
    {
      v5 = *(v6 + 180);
    }

    else
    {
      v5 = 100;
    }
  }

  else
  {
    *a2 = v4;
    v5 = *(v3 + 24) + 1;
  }

  *a3 = v5;
  return result;
}

void sub_10001D95C()
{
  v0 = &unk_100081090;
  v1 = 100;
  do
  {
    sub_10002C998(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
}

void sub_10001D998()
{
  sub_100046024();
  v0 = &unk_100081090;
  v1 = 100;
  do
  {
    sub_10002C998(v0);
    v0 += 128;
    --v1;
  }

  while (v1);
  sub_10002C8A8(&unk_100080EC8);
  sub_100045FC8();
  sub_1000449F0();
  v2 = qword_10009BA60;
  if (qword_10009BA60)
  {
    if (*(qword_10009BA60 + 56))
    {
      v8 = time(0);
      sub_100049DB4(*(qword_10009BA60 + 56), *(qword_10009BA60 + 32));
      v3 = *(qword_10009BA60 + 56);
      v4 = ctime(&v8);
      fprintf(v3, "fsck_apfs completed at %s", v4);
      fclose(*(qword_10009BA60 + 56));
      v2 = qword_10009BA60;
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      sub_100049DB4(v5, *(v2 + 32));
      fclose(*(qword_10009BA60 + 64));
    }
  }

  sub_100049BCC();
  if (qword_10009BA58)
  {
    sub_1000474B8(qword_10009BA58);
  }

  v6 = qword_10009BA60;
  if (qword_10009BA60)
  {
    v7 = *(qword_10009BA60 + 8);
    if (v7)
    {
      if (*(qword_10009BA60 + 53) == 1)
      {
        sub_100046094(v7);
        v7 = *(qword_10009BA60 + 8);
      }

      free(v7);
      v6 = qword_10009BA60;
    }

    free(v6);
  }
}

void (__cdecl *sub_10001DAC0())(int)
{
  signal(2, sub_10001DB58);
  signal(1, sub_10001DB58);
  signal(15, sub_10001DB58);
  signal(3, sub_10001DB58);
  signal(10, sub_10001DB58);
  signal(11, sub_10001DB58);
  signal(4, sub_10001DB58);

  return signal(6, sub_10001DB58);
}

void sub_10001DB58(int a1)
{
  sub_100046024();
  v2 = &unk_100081090;
  v3 = 100;
  do
  {
    sub_10002CAA4(v2);
    v2 += 1024;
    --v3;
  }

  while (v3);
  sub_10002C980(qword_100080EC8);
  sub_100045FC8();
  if (qword_10009BA60)
  {
    v4 = *(qword_10009BA60 + 8);
    if (v4)
    {
      if (*(qword_10009BA60 + 53) == 1)
      {
        sub_100046094(v4);
      }
    }
  }

  _exit(a1 + 128);
}

void sub_10001DBD0(int a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = 52428800;
  }

  else
  {
    v4 = 10485760;
  }

  if (a1)
  {
    v5 = &unk_10009A110;
  }

  else
  {
    v5 = &unk_10009A090;
  }

  sub_10001E320(v5, a2, v4);
  v5[14] = a3;
  *(v5 + 120) = 1;
}

void sub_10001DC28(int a1)
{
  if (a1)
  {
    v1 = &unk_10009A110;
  }

  else
  {
    v1 = &unk_10009A090;
  }

  sub_10001E44C(v1);
  v1[13] = 0;
  v1[14] = 0;
}

uint64_t sub_10001DC68(int a1, unint64_t a2, int a3)
{
  if (a1)
  {
    v6 = &unk_10009A110;
  }

  else
  {
    v6 = &unk_10009A090;
  }

  if (!sub_10001E4A8(v6))
  {
    return 0;
  }

  v7 = a1 ? &unk_10009A110 : &unk_10009A090;
  if (v7[80])
  {
    return 0;
  }

  v8 = sub_10001E8F4(v6, a2, 1uLL, a3 == 0);
  if (v8 == 17)
  {
    return 0;
  }

  v9 = v8;
  if (!v8)
  {
    if (a1)
    {
      v10 = &unk_10009A110;
    }

    else
    {
      v10 = &unk_10009A090;
    }

    if (v10[13] < a2)
    {
      v9 = 0;
      v10[13] = a2;
      return v9;
    }

    return 0;
  }

  if (v7[80])
  {
    return 0;
  }

  sub_10001E44C(v6);
  if (a1)
  {
    v12 = &unk_10009A110;
  }

  else
  {
    v12 = &unk_10009A090;
  }

  v12[13] = 0;
  v12[14] = 0;
  return v9;
}

uint64_t sub_10001DD4C(unint64_t a1, int a2)
{
  v2 = a1;
  v3 = sub_10001DC68(a2 != 13, a1, 1);
  if (v3)
  {
    v11 = v3;
    sub_100045744("object (oid 0x%llx): Unable to mark omap entry in usefor omap space verification \n", v4, v5, v6, v7, v8, v9, v10, v2);
    sub_100049C40(0x3D1, v11);
  }

  return 0;
}

uint64_t sub_10001DDB0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = &unk_10009A090;
  if (a3)
  {
    v11 = &unk_10009A110;
  }

  else
  {
    v11 = &unk_10009A090;
  }

  if (sub_10001E4A8(v11))
  {
    v12 = &unk_10009A0E0;
    if (a3)
    {
      v12 = &unk_10009A160;
    }

    if ((*v12 & 1) == 0)
    {
      if (a2)
      {
        v14 = *(*(a2 + 40) + 8);
      }

      else
      {
        v14 = 0;
      }

      v40 = 0;
      v15 = sub_100024058(v14);
      v16 = &unk_10009A100;
      if (a3)
      {
        v16 = &unk_10009A180;
      }

      v17 = *v16;
      if (a3)
      {
        v10 = &unk_10009A110;
      }

      if (v15)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v39 = v18;
      v13 = sub_10001DFD0(a1, a2, v11, v18, v10[13] + 1, (v10[15] & 1) == 0, &v40, a4, a5);
      v19 = v40;
      if (v13)
      {
        v20 = 1;
      }

      else
      {
        v20 = v40 == 0;
      }

      if (v20)
      {
        goto LABEL_39;
      }

      v41 = 0;
      if (v14)
      {
        asprintf(&v41, "volume omap (fs_oid 0x%llx)");
      }

      else
      {
        asprintf(&v41, "container omap");
      }

      v28 = v41;
      if (*(v10 + 120) != 1)
      {
        goto LABEL_31;
      }

      v29 = sub_100023544(a1, a2, 1);
      if (v29)
      {
        v13 = v29;
        sub_100045744("%s: could not iterate reaper for omap space verification\n", v30, v31, v32, v33, v34, v35, v36, v28);
        v37 = 978;
        goto LABEL_36;
      }

      if (sub_10001E4A8(v11))
      {
        v13 = sub_10001DFD0(a1, a2, v11, v39, v10[13] + 1, 1, &v40, a4, a5);
        v19 = v40;
      }

      else
      {
LABEL_31:
        v13 = 0;
      }

      if (v13 || !v19 || !a4)
      {
LABEL_37:
        if (v28)
        {
          free(v28);
        }

LABEL_39:
        *(v10 + 120) = 0;
        return v13;
      }

      sub_100045744("%s: %llu orphan mappings found\n", v21, v22, v23, v24, v25, v26, v27, v28);
      v13 = 0;
      v37 = 979;
LABEL_36:
      sub_100049C40(v37, -7);
      goto LABEL_37;
    }
  }

  return 0;
}

uint64_t sub_10001DFD0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6, void *a7, uint64_t a8, uint64_t (*a9)(void))
{
  v50 = 0;
  v51 = 0;
  *a7 = 0;
  if (a4 < a5)
  {
    v13 = a4;
    while (sub_10001E6A4(a3, v13, a5 - v13, &v51))
    {
      if ((a6 & 1) == 0)
      {
        v27 = 0;
        *a7 = 1;
        return v27;
      }

      if ((sub_10001E7C8(a3, v51, a5 - v51, &v50) & 1) == 0)
      {
        v50 = a5;
      }

      if (a8)
      {
        if (v51 == v50 - 1)
        {
          sub_100045744("orphan omap mapping found for oid %llu\n", v15, v16, v17, v18, v19, v20, v21, v51);
        }

        else
        {
          sub_100045744("orphan omap mappings found for oid range %llu --> %llu\n", v15, v16, v17, v18, v19, v20, v21, v51);
        }
      }

      v13 = v50;
      if (*(qword_10009BA60 + 45) == 1)
      {
        v22 = a8;
        v23 = v51;
        v58 = 0xAAAAAAAAAAAAAAAALL;
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v56 = v24;
        v57 = v24;
        v54 = v24;
        v55 = v24;
        v53 = v24;
        v25 = sub_10002CF5C(a1, a2, &v58);
        if (v25)
        {
          return v25;
        }

        v52[0] = v23;
        v52[1] = 0;
        v26 = sub_10003A444(&v53, v58, 0, v52, 0x10u);
        if (v26)
        {
          v27 = v26;
          v40 = strerror(v26);
          sub_10004565C("unable to initialize omap tree iterator for repair: %s\n", v41, v42, v43, v44, v45, v46, v47, v40);
          sub_100049C40(0x3DF, v27);
          return v27;
        }

        if ((BYTE8(v55) & 1) == 0)
        {
          v28 = v54;
          while (*v28 < v13)
          {
            ++*a7;
            v29 = a9();
            if (v29)
            {
              v27 = v29;
              goto LABEL_16;
            }

            v30 = (*(&v53 + 1))(&v53);
            if (v30)
            {
              v27 = v30;
              v31 = strerror(v30);
              sub_10004565C("error iterating omap tree for repair: %s\n", v32, v33, v34, v35, v36, v37, v38, v31);
              sub_100049C40(0x3E1, v27);
              goto LABEL_16;
            }

            v28 = v54;
            if (BYTE8(v55) == 1)
            {
              break;
            }
          }
        }

        v27 = 0;
LABEL_16:
        if (v53)
        {
          (v53)(&v53);
        }

        if (v27)
        {
          return v27;
        }

        v13 = v50;
        a8 = v22;
      }

      if (v13 >= a5)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_10001E224(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = sub_10001DDB0(a1, a2, a3, 1, sub_10001E298);
  if (a3)
  {
    v5 = &unk_10009A110;
  }

  else
  {
    v5 = &unk_10009A090;
  }

  sub_10001E44C(v5);
  v5[13] = 0;
  v5[14] = 0;
  return v4;
}

uint64_t sub_10001E298(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5)
{
  v6 = sub_100027D7C(a5, 2, 0, 0, 0, a1, 0x10u, a3, 0x10u);
  v7 = v6;
  if (v6)
  {
    v8 = *a1;
    strerror(v6);
    sub_10004565C("object (oid 0x%llx): unable to add omap repair: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
    sub_100049C40(0x3E0, v7);
  }

  return v7;
}

void sub_10001E320(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!sub_100039748(a1, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 128, 0, 0, sub_100030C88))
  {
    sub_10003B84C(a1, 0, 64);
  }

  v6 = *(a1 + 24);
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = -1;
  }

  if (v6 > a3)
  {
    v8 = -1;
  }

  else
  {
    v8 = a3 / v6;
  }

  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  *(a1 + 96) = 1024;
  v9 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
  *(a1 + 88) = v9;
  if (v9)
  {
    v10 = v9;
    v11 = *(a1 + 96);
    v12 = v11 - 1;
    if ((v11 - 1) > 7)
    {
      v14 = v12 >> 3;
      *v9 = 0;
      if (v12 >> 3 >= 2)
      {
        bzero(v9 + 1, (v14 - 1));
      }

      v13 = 510 << (v12 & 7);
      v10 += v14;
    }

    else
    {
      v13 = 255 << v11;
    }

    *v10 &= v13;
  }
}

void sub_10001E44C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    free(v2);
    *(a1 + 88) = 0;
  }

  if (*(a1 + 56))
  {

    sub_10003B928(a1, 0);
  }
}

uint64_t sub_10001E4B8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 0;
  }

  v5 = a3;
  v8 = 0;
  v9.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v9.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  v12[6] = v9;
  v12[7] = v9;
  v12[4] = v9;
  v12[5] = v9;
  v12[2] = v9;
  v12[3] = v9;
  v12[0] = v9;
  v12[1] = v9;
  while (1)
  {
    result = sub_10001E5A4(a1, a2, v12);
    if (result)
    {
      break;
    }

    if (v5 >= 1024 - (a2 & 0x3FF))
    {
      v11 = 1024 - (a2 & 0x3FF);
    }

    else
    {
      v11 = v5;
    }

    memcpy((a4 + 8 * v8), v12 + ((a2 >> 3) & 0x78), v11 >> 3);
    a2 += v11;
    v8 += v11 >> 6;
    v5 -= v11;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001E5A4(uint64_t a1, unint64_t a2, int8x16_t *a3)
{
  v6 = a2 >> 10;
  v23 = a2 >> 10;
  v21 = 128;
  v22 = 8;
  v7 = sub_1000397B8(a1, 0, 0, &v23, &v22, 8u, a3, &v21);
  v8 = v7;
  if ((v7 & 0xFFFFFFFD) != 0)
  {
    v9 = v23;
    strerror(v7);
    sub_10004565C("failed to find node at segment (%llu) : error %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
    sub_100049C40(0x363, v8);
  }

  if (v8 == 2)
  {
    v17 = *(a1 + 88);
    if (v17 && *(a1 + 96) > v6 && ((*(v17 + (a2 >> 13)) >> ((a2 >> 10) & 7)) & 1) != 0)
    {
      v18 = 255;
    }

    else
    {
      v18 = 0;
    }

    v8 = 0;
    v19 = vdupq_n_s8(v18);
    a3[6] = v19;
    a3[7] = v19;
    a3[4] = v19;
    a3[5] = v19;
    a3[2] = v19;
    a3[3] = v19;
    *a3 = v19;
    a3[1] = v19;
  }

  return v8;
}

uint64_t sub_10001E6A4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  memset(&v12, 0, 128);
  sub_10001E5A4(a1, a2, &v12);
  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      sub_10001E5A4(a1, v6, &v12);
      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> -((v6 & 0x3F) + v9)) & (-1 << v6) & v12.i64[i];
    if (v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t sub_10001E7C8(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v6 = a2;
  memset(&v13, 0, 128);
  sub_10001E5A4(a1, a2, &v13);
  if (!a3)
  {
    return 0;
  }

  for (i = (v6 >> 6) & 0xF; ; ++i)
  {
    if (i >= 0x10)
    {
      sub_10001E5A4(a1, v6, &v13);
      i = (v6 >> 6) & 0xF;
    }

    v9 = 64 - (v6 & 0x3F);
    if (a3 < v9)
    {
      v9 = a3;
    }

    v10 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v9)) & (-1 << v6);
    v11 = v13.i64[i] & v10;
    if (v11 != v10)
    {
      break;
    }

    v6 += v9;
    a3 -= v9;
    if (!a3)
    {
      return 0;
    }
  }

  *a4 = __clz(__rbit64(v11 ^ v10)) | v6 & 0xFFFFFFFFFFFFFFC0;
  return 1;
}

uint64_t sub_10001E8F4(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  memset(&v22, 0, 128);
  result = sub_10001E5A4(a1, a2, &v22);
  if (!result)
  {
    if (a3)
    {
      v14 = (v6 >> 6) & 0xF;
      v15 = v6;
      while (1)
      {
        if (v14 >= 0x10)
        {
          result = sub_10001EA54(a1, v15, &v22, v9, v10, v11, v12, v13);
          if (result)
          {
            return result;
          }

          result = sub_10001E5A4(a1, v6, &v22);
          if (result)
          {
            return result;
          }

          v14 = (v6 >> 6) & 0xF;
          v15 = v6;
        }

        v16 = 64 - (v6 & 0x3F);
        if (a3 < v16)
        {
          v16 = a3;
        }

        v17 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v16)) & (-1 << v6);
        v18 = v22.i64[v14];
        v19 = a4 ? 0 : (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v16)) & (-1 << v6);
        if ((v18 & v17) != v19)
        {
          break;
        }

        v20 = v18 & ~v17;
        v21 = v18 | v17;
        if (!a4)
        {
          v21 = v20;
        }

        v22.i64[v14] = v21;
        v6 += v16;
        ++v14;
        a3 -= v16;
        if (!a3)
        {
          return sub_10001EA54(a1, v15, &v22, v9, v10, v11, v12, v13);
        }
      }

      return 17;
    }

    else
    {
      v15 = v6;
      return sub_10001EA54(a1, v15, &v22, v9, v10, v11, v12, v13);
    }
  }

  return result;
}

uint64_t sub_10001EA54(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 64) <= a2)
  {
    v41 = *(a1 + 64);
    sub_100045744("bitmap store: address %llu is beyond maximum allowed %llu\n", a2, a3, a4, a5, a6, a7, a8, a2);
    return 34;
  }

  v10 = a1;
  v42 = 0;
  sub_10003B7B8(a1, 0, &v42);
  if (v42 >= *(v10 + 72))
  {
    if ((*(v10 + 80) & 1) == 0)
    {
      sub_100045744("bitmap store: reached limit of %llu B-tree nodes\n", v11, v12, v13, v14, v15, v16, v17, *(v10 + 72));
    }

    *(v10 + 80) = 1;
    return 12;
  }

  else
  {
    if (sub_1000081C4(a3, 0, 1024) && (v18 = *(v10 + 88)) != 0 && !sub_10001EF3C(v10, a2 >> 10))
    {
      v28 = *(v10 + 88);
      v29 = a2 >> 13;
      v30 = *(v28 + (a2 >> 13)) | (1 << ((a2 >> 10) & 7));
    }

    else
    {
      if (!sub_1000082B8(a3, 0, 1024, v18) || !*(v10 + 88) || sub_10001EF3C(v10, a2 >> 10))
      {
        v42 = a2 >> 10;
        v19 = sub_10003B12C(v10, 0, &v42, 8, a3, 0x80u);
        v10 = v19;
        if (v19)
        {
          v20 = v42;
          strerror(v19);
          sub_10004565C("failed to insert node at segment (%llu) error : %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
          sub_100049C40(0x1C9, v10);
        }

        return v10;
      }

      v28 = *(v10 + 88);
      v29 = a2 >> 13;
      v30 = *(v28 + (a2 >> 13)) & ~(1 << ((a2 >> 10) & 7));
    }

    *(v28 + v29) = v30;
    v42 = a2 >> 10;
    v31 = sub_10003B708(v10, 0, &v42, 8);
    LODWORD(v10) = v31;
    if ((v31 & 0xFFFFFFFD) != 0)
    {
      v32 = v42;
      strerror(v31);
      sub_10004565C("failed to remove node at segment (%llu) error : %s\n", v33, v34, v35, v36, v37, v38, v39, v32);
      sub_100049C40(0x1CA, v10);
    }

    if (v10 == 2)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_10001EC40(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v6 = a2;
  memset(&v13, 0, 128);
  result = sub_10001E5A4(a1, a2, &v13);
  if (!result)
  {
    v9 = (v6 >> 6) & 0xF;
    while (a3)
    {
      if (v9 >= 0x10)
      {
        result = sub_10001E5A4(a1, v6, &v13);
        if (result)
        {
          return result;
        }

        v9 = (v6 >> 6) & 0xF;
      }

      v10 = 64 - (v6 & 0x3F);
      if (a3 < v10)
      {
        v10 = a3;
      }

      v11 = (0xFFFFFFFFFFFFFFFFLL >> (-(v6 & 0x3F) - v10)) & (-1 << v6);
      v12 = v13.i64[v9] & v11;
      if (!a4)
      {
        v11 = 0;
      }

      a3 -= v10;
      v6 += v10;
      ++v9;
      if (v12 != v11)
      {
        return 17;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001ED64(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v28[0] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[6] = v6;
  v27[7] = v6;
  v27[4] = v6;
  v27[5] = v6;
  v27[2] = v6;
  v27[3] = v6;
  v27[0] = v6;
  v27[1] = v6;
  if (*(a1 + 88) && (v7 = *(a1 + 96), v7 >= 8))
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v11 = *(a1 + 88);
      v12 = *(v11 + v10);
      if (*(v11 + v10))
      {
        break;
      }

LABEL_13:
      ++v10;
      v9 += 0x2000;
      if (v10 >= v7 >> 3)
      {
        goto LABEL_3;
      }
    }

    v13 = 0;
    v14 = v9;
    while (1)
    {
      if ((v12 >> v13))
      {
        result = a2(v14, 1024, a3);
        if (result)
        {
          break;
        }
      }

      ++v13;
      v14 += 1024;
      if (v13 == 8)
      {
        v7 = *(a1 + 96);
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_3:
    v25 = 128;
    v26 = 8;
    if (sub_100039CDC(a1, 0, v28, &v26, v27, &v25))
    {
      return 0;
    }

    else
    {
      do
      {
        v15 = 0;
        v16 = v28[0] << 10;
        do
        {
          v17 = *(v27 + v15);
          if (v17)
          {
            v18 = 0;
            v19 = 1;
            do
            {
              if ((v19 & v17) != 0)
              {
                v20 = 0;
                do
                {
                  v21 = (v17 & (2 * v19)) == 0;
                  v19 *= 2;
                  ++v20;
                }

                while (!v21 && v20 + v18 < 0x40);
                result = a2(v18 | (v16 + (v15 << 6)), v20, a3);
                if (result)
                {
                  return result;
                }

                LODWORD(v18) = v18 + v20;
              }

              v19 *= 2;
              v18 = v18 + 1;
            }

            while (v18 < 0x40);
          }

          ++v15;
        }

        while (v15 != 16);
        v23 = 128;
        v24 = 8;
        v22 = sub_1000397B8(a1, 0, 2u, v28, &v24, 8u, v27, &v23);
        result = 0;
      }

      while (!v22);
    }
  }

  return result;
}

uint64_t sub_10001EF3C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 96);
  if (v2 > a2)
  {
    return 0;
  }

  v5 = *(a1 + 88);
  v6 = 1 << -__clz(a2);
  v7 = malloc_type_realloc(v5, (v6 + 7) >> 3, 0x100004077774924uLL);
  if (v7)
  {
    v8 = v7;
    v9 = v6 - 1;
    v10 = v2 >> 3;
    v11 = 0xFFu >> (8 - (v2 & 7));
    if (v2 >> 3 == (v6 - 1) >> 3)
    {
      v12 = v11 | (510 << (v9 & 7));
      v13 = v2 >> 3;
    }

    else
    {
      v13 = v9 >> 3;
      v21 = &v7[v10];
      *v21 &= v11;
      if (v10 + 1 < v9 >> 3)
      {
        bzero(v21 + 1, (v13 - v10 - 2) + 1);
      }

      v12 = 510 << (v9 & 7);
    }

    v3 = 0;
    v8[v13] &= v12;
    *(a1 + 88) = v8;
    *(a1 + 96) = v6;
  }

  else
  {
    free(v5);
    sub_10004565C("failed to allocate memory for bitmap store\n", v14, v15, v16, v17, v18, v19, v20, v23);
    v3 = 12;
    sub_100049C40(0x3B2, 12);
  }

  return v3;
}

uint64_t sub_10001F078(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
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

uint64_t sub_10001F0D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = -1;
  }

  v14 = a3;
  v15 = v7;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  v11 = 16;
  result = sub_10002CF5C(a1, a2, &v16);
  if (!result)
  {
    result = sub_1000397B8(v16, 0, 0xFFFFFFFF, &v14, &v11, 0x10u, &v12, &v10);
    if (!result)
    {
      result = 92;
      if (v11 == 16 && v10 == 16)
      {
        if (v14 != a3)
        {
          return 2;
        }

        v9 = v12;
        if (v12)
        {
          return 2;
        }

        else
        {
          result = 0;
          *a5 = v13;
          *(a5 + 8) = HIDWORD(v12);
          *(a5 + 12) = v9;
          *(a5 + 16) = v15;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int32x2_t *a5)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = a3;
  v7[1] = a4;
  v6[0] = vrev64_s32(a5[1]);
  v6[1] = *a5;
  result = sub_10002CF5C(a1, a2, &v8);
  if (!result)
  {
    return sub_10003B12C(v8, 0, v7, 16, v6, 16);
  }

  return result;
}

uint64_t sub_10001F210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v24 = a3;
  *(&v24 + 1) = a4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 16;
  v21 = 16;
  result = sub_10002CD20(a1, a2, &v26);
  if (!result)
  {
    result = sub_10002CF5C(a1, a2, &v25);
    if (!result)
    {
      result = sub_1000397B8(v25, 0, 0, &v24, &v21, 0x10u, &v22, &v20);
      if (!result)
      {
        result = 92;
        if (v21 == 16 && v20 == 16)
        {
          v11 = v22;
          if (v22)
          {
            return 2;
          }

          if (a5)
          {
            *a5 = v23;
            *(a5 + 8) = HIDWORD(v22);
            *(a5 + 12) = v11;
            *(a5 + 16) = *(&v24 + 1);
          }

          v12 = *(v26 + 64);
          if (v12)
          {
            v13 = v12 >= a4;
          }

          else
          {
            v13 = 0;
          }

          v14 = !v13;
          if (v14 != 1)
          {
            goto LABEL_22;
          }

          v19 = v24;
          v18[0] = 0xAAAAAAAAAAAAAAAALL;
          v18[1] = 0xAAAAAAAAAAAAAAAALL;
          result = sub_1000397B8(v25, 0, 0xFFFFFFFE, &v19, &v21, 0x10u, v18, &v20);
          if ((result & 0xFFFFFFFD) == 0)
          {
            v15 = result;
            result = 92;
            if (v21 == 16 && v20 == 16)
            {
              if (v15 == 2 || v19 != a3)
              {
                LODWORD(result) = sub_10003B708(v25, 0, &v24, 16);
                v16 = result == 0;
                goto LABEL_23;
              }

LABEL_22:
              *(&v24 + 1) = *(*(a1 + 8) + 16);
              LODWORD(v22) = 1;
              LODWORD(result) = sub_10003B12C(v25, 0, &v24, 16, &v22, 16);
              v16 = result == 0;
              if (!v14)
              {
                v17 = 17;
LABEL_26:
                if (v16)
                {
                  return v17;
                }

                else
                {
                  return result;
                }
              }

LABEL_23:
              v17 = 0;
              goto LABEL_26;
            }
          }
        }
      }
    }
  }

  return result;
}

char *sub_10001F400(char *result)
{
  if (result[10] == 1 && qword_10009A1C8 == 0)
  {
    if (!sub_100039748(&xmmword_10009A190, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 21, 0, 0, sub_100030C88))
    {
      sub_10003B84C(&xmmword_10009A190, 0, 64);
    }

    result = sub_10001C108(&xmmword_10009A190, "phys extent", sub_10001F4EC);
    if (result)
    {
      sub_100045744("failed to register the phys extent tree in the fsck memory storage\n", v2, v3, v4, v5, v6, v7, v8, v9);

      return sub_100049C40(0x587, 12);
    }
  }

  return result;
}

uint64_t sub_10001F4EC()
{
  xmmword_10007C170 = 0u;
  unk_10007C180 = 0u;
  xmmword_10007C150 = 0u;
  unk_10007C160 = 0u;
  xmmword_10007C130 = 0u;
  unk_10007C140 = 0u;
  xmmword_10007C110 = 0u;
  unk_10007C120 = 0u;
  xmmword_10007C0F0 = 0u;
  unk_10007C100 = 0u;
  xmmword_10007C0D0 = 0u;
  unk_10007C0E0 = 0u;
  xmmword_10007C0B0 = 0u;
  unk_10007C0C0 = 0u;
  xmmword_10007C090 = 0u;
  unk_10007C0A0 = 0u;
  xmmword_10007C070 = 0u;
  unk_10007C080 = 0u;
  xmmword_10007C050 = 0u;
  *&qword_10007C060 = 0u;
  BYTE8(xmmword_10007C070) = 1;
  sub_10003B928(&xmmword_10009A190, 0);

  return sub_10003B928(&xmmword_10009A1D0, 0);
}

uint64_t sub_10001F568(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a4;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v7) = a5;
  return sub_10001F5AC(a1, a2, a3, 1, sub_10001F924, &v6);
}

uint64_t sub_10001F5AC(uint64_t a1, unint64_t a2, uint64_t a3, int a4, void (*a5)(_BYTE *, uint64_t), uint64_t a6)
{
  if (!qword_10009A1C8)
  {
    return 0;
  }

  v10 = a2;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = a2;
  memset(v26, 0, sizeof(v26));
  result = sub_1000206B4(&v27, v26, 0xFFFFFFFE);
  if (result == 2 && (result = sub_1000206B4(&v27, v26, 1u), result == 2) && a4)
  {
    v27 = -1;
  }

  else
  {
    if (result == 2)
    {
      return 0;
    }

    if (result)
    {
LABEL_59:
      if (result == 12)
      {
        xmmword_10007C170 = 0u;
        unk_10007C180 = 0u;
        xmmword_10007C150 = 0u;
        unk_10007C160 = 0u;
        xmmword_10007C130 = 0u;
        unk_10007C140 = 0u;
        xmmword_10007C110 = 0u;
        unk_10007C120 = 0u;
        xmmword_10007C0F0 = 0u;
        unk_10007C100 = 0u;
        xmmword_10007C0D0 = 0u;
        unk_10007C0E0 = 0u;
        xmmword_10007C0B0 = 0u;
        unk_10007C0C0 = 0u;
        xmmword_10007C090 = 0u;
        unk_10007C0A0 = 0u;
        xmmword_10007C070 = 0u;
        unk_10007C080 = 0u;
        xmmword_10007C050 = 0u;
        *&qword_10007C060 = 0u;
        BYTE8(xmmword_10007C070) = 1;
        sub_10003B928(&xmmword_10009A190, 0);
        sub_10003B928(&xmmword_10009A1D0, 0);
        result = 0;
        *(a1 + 10) = 0;
      }

      return result;
    }
  }

  v13 = a3 + v10;
  if (a3 + v10 < v10)
  {
    return 0;
  }

  while (1)
  {
    v14 = v27;
    if (a4)
    {
      v15 = v27 - v10;
      if (v27 > v10)
      {
        v16 = v15 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
        *v26 = v16;
        v17 = v15 & 0xFFFFFFFFFFFFFFFLL;
        *&v26[16] = 0;
        v27 = v10;
        v14 = v10;
LABEL_17:
        v20 = v13 <= v14 || v13 - v14 >= v17;
        v19 = v13;
        if (v20)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }
    }

    v16 = *v26;
    v17 = *v26 & 0xFFFFFFFFFFFFFFFLL;
    v18 = v10 <= v27 || v10 - v27 >= v17;
    v19 = v10;
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_21:
    v31 = v19;
    v30[1] = *&v26[8];
    *(&v30[1] + 5) = *&v26[13];
    v21 = (v14 + v16 - v19) & 0xFFFFFFFFFFFFFFFLL;
    v30[0] = v16 & 0xF000000000000000 | v21;
    *v26 = (v17 - v21) | v16 & 0xF000000000000000;
    if (*&v26[16])
    {
      result = sub_1000207CC(&xmmword_10009A190, &v27, v26);
      if (result)
      {
        goto LABEL_59;
      }

      result = sub_1000207CC(&xmmword_10009A190, &v31, v30);
      if (result)
      {
        goto LABEL_59;
      }

      v14 = v27;
    }

LABEL_25:
    v22 = v14 - v10;
    if (v14 >= v10)
    {
      v23 = v22 < v13 - v10 && v13 - v10 >= (*v26 & 0xFFFFFFFFFFFFFFFuLL);
      if (v23 && v22 <= v13 - v10 - (*v26 & 0xFFFFFFFFFFFFFFFLL))
      {
        a5(v26, a6);
        if ((a4 & 1) != 0 || *&v26[16])
        {
          result = sub_1000207CC(&xmmword_10009A190, &v27, v26);
        }

        else
        {
          result = sub_10002075C(&xmmword_10009A190, &v27);
        }

        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    if (v29 && (*v28 & 0xFFFFFFFFFFFFFFFLL) + v29 == v14 && *&v28[16] == *&v26[16] && v28[20] == v26[20])
    {
      *v28 = ((*v26 & 0xFFFFFFFFFFFFFFFLL) + (*v28 & 0xFFFFFFFFFFFFFFFLL)) | *v28 & 0xF000000000000000;
      if (*&v28[16])
      {
        if (sub_10002075C(&xmmword_10009A190, &v27))
        {
          return 1;
        }

        result = sub_1000207CC(&xmmword_10009A190, &v29, v28);
        if (result)
        {
          goto LABEL_59;
        }

        v14 = v27;
      }
    }

    else
    {
      v29 = v14;
      *v28 = *v26;
      *&v28[13] = *&v26[13];
    }

    v25 = (*v26 & 0xFFFFFFFFFFFFFFFLL) + v14;
    if (v25 > v10)
    {
      v10 = v25;
    }

    result = sub_1000206B4(&v27, v26, 2u);
    if (result != 2 || (a4 & 1) == 0)
    {
      break;
    }

    v27 = -1;
LABEL_54:
    if (v10 > v13)
    {
      return 0;
    }
  }

  if (!result)
  {
    goto LABEL_54;
  }

  if (result != 2)
  {
    goto LABEL_59;
  }

  return 0;
}

uint64_t sub_10001F924(uint64_t result, uint64_t a2)
{
  *(result + 8) = *a2;
  ++*(result + 16);
  if ((*(result + 20) & 1) == 0)
  {
    *(result + 20) = *(a2 + 8);
  }

  return result;
}

uint64_t sub_10001F9A0(uint64_t a1)
{
  v2 = sub_10001FA6C(a1 + 48, &xmmword_10009A190);
  if (v2 || (v2 = sub_10001FA6C(a1 + 168, &xmmword_10009A1D0), v2))
  {
    v3 = v2;
    v4 = strerror(v2);
    sub_10004565C("unable to init physical extent tree iterator for repairs: %s\n", v5, v6, v7, v8, v9, v10, v11, v4);
    sub_100049C40(0x461, v3);
    return v3;
  }

  else
  {
    *(a1 + 8) = sub_10001FB30;
    *(a1 + 16) = a1 + 288;
    *(a1 + 24) = a1 + 296;
    *(a1 + 32) = 0x1500000008;
    *(a1 + 317) = 1;

    return sub_10001FB30(a1);
  }
}

uint64_t sub_10001FA6C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v4 = 0;
    goto LABEL_5;
  }

  v3 = sub_100039F68(a1, a2, 0, (a1 + 72), 8u, 8u, (a1 + 80), 21);
  if (v3)
  {
    v4 = v3;
    v5 = strerror(v3);
    sub_10004565C("unable to init physical extent tree iterator for repairs: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
    sub_100049C40(0x460, v4);
LABEL_5:
    *(a1 + 40) = 1;
    goto LABEL_6;
  }

  if (a1 && (*(a1 + 40) & 1) == 0)
  {
    v4 = 0;
    v15 = *(a1 + 80);
    *(a1 + 104) = *(a1 + 72);
    v13 = v15 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_6:
  v13 = 0;
  *(a1 + 104) = -1;
LABEL_7:
  *(a1 + 112) = v13;
  return v4;
}

uint64_t sub_10001FB30(uint64_t a1)
{
  result = sub_100020858(a1 + 48);
  if (!result)
  {
    result = sub_100020858(a1 + 168);
    if (!result)
    {
      if (*(a1 + 208) == 1)
      {
        v3 = *(a1 + 88);
        *(a1 + 40) = v3;
        if (v3)
        {
          return 0;
        }

        v5 = 0;
        v4 = *(a1 + 72);
      }

      else
      {
        *(a1 + 40) = 0;
        if (*(a1 + 88))
        {
          v4 = 0;
        }

        else
        {
          v4 = *(a1 + 72);
        }

        v5 = *(a1 + 192);
      }

      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = *(a1 + 152);
      v9 = *(a1 + 272);
      v10 = v8 - v9;
      if (v8 >= v9)
      {
        v11 = *(a1 + 272);
      }

      else
      {
        v11 = *(a1 + 152);
      }

      if (v8 >= v9)
      {
        if (v8 <= v9)
        {
          v16 = *(a1 + 160);
          v17 = *(a1 + 280);
          if (v16 >= v17)
          {
            v10 = *(a1 + 280);
          }

          else
          {
            v10 = *(a1 + 160);
          }

          *(a1 + 152) = v10 + v8;
          *(a1 + 160) = v16 - v10;
          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v17 - v10;
          *(v6 + 8) = -1;
          v13 = *(v4 + 16) - *(v5 + 16);
          v14 = 0x2000000000000000;
        }

        else
        {
          v15 = *(a1 + 280);
          if (v15 < v10)
          {
            v10 = *(a1 + 280);
          }

          *(a1 + 272) = v10 + v9;
          *(a1 + 280) = v15 - v10;
          *(v6 + 8) = -1;
          v13 = -*(v5 + 16);
          v14 = 0x2000000000000000;
          v4 = v5;
        }
      }

      else
      {
        v12 = *(a1 + 160);
        v10 = v9 - v8;
        if (v12 < v9 - v8)
        {
          v10 = *(a1 + 160);
        }

        *(a1 + 152) = v10 + v8;
        *(a1 + 160) = v12 - v10;
        *(v6 + 8) = *(v4 + 8);
        v13 = *(v4 + 16);
        v14 = 0x1000000000000000;
      }

      result = 0;
      *(v6 + 16) = v13;
      *(v6 + 20) = *(v4 + 20);
      *v7 = v11;
      *v6 = v10 & 0xFFFFFFFFFFFFFFFLL | v14;
    }
  }

  return result;
}

uint64_t sub_10001FC90(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  if (a5 == 1)
  {
    if (a2)
    {
      v5 = *(*(a2 + 40) + 8);
    }

    else
    {
      v5 = 0;
    }

    return sub_1000422DC(result, a3, a4, v5, 0x40000000, a3, *(a2 + 56), 0, 0xFu, 2u);
  }

  return result;
}

uint64_t sub_10001FCF8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v11 = *a3 & 0xFFFFFFFFFFFFFFFLL;
  v12 = *a4;
  v13 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  v63 = *a4 >> 60;
  if (!qword_10009A1C8 || *(a2 + 14) == 1)
  {
    if ((a5 & 3) != 0)
    {
      return 92;
    }

    sub_10001FC90(a1, a2, v11, v13, v63);
    return 0;
  }

  v15 = a4;
  if (byte_10007C18D)
  {
    v60 = a5;
    v59 = a3;
    v17 = *algn_10007C068;
    v57 = a1;
    v58 = qword_10007C060;
    v18 = *qword_10007C060;
    v19 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    v62 = **algn_10007C068 >> 60;
  }

  else
  {
    v14 = sub_10001F9A0(&xmmword_10007C050);
    if (v14)
    {
      return v14;
    }

    v60 = v8;
    v59 = a3;
    v17 = *algn_10007C068;
    v57 = a1;
    v58 = qword_10007C060;
    v18 = *qword_10007C060;
    v19 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    a5 = **algn_10007C068 >> 60;
    LOBYTE(v62) = a5;
    if ((BYTE8(xmmword_10007C070) & 1) == 0)
    {
      sub_10001FC90(v57, a2, v18, v19, a5);
    }
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  if (v60)
  {
    return sub_1000203C4((a2 + 768), v59, 0, *(a2 + 56), 0, 0);
  }

  if (!v13)
  {
    v14 = 0;
    v46 = v62;
    goto LABEL_115;
  }

  v64 = 0;
  v56 = v12 & 0xF000000000000000;
  v61 = v15;
  do
  {
    while (1)
    {
      if (BYTE8(xmmword_10007C070))
      {
        v18 = -1;
      }

      v20 = v18 >= v11 ? v11 : v18;
      if (*(v17 + 20) == 1)
      {
        v21 = *(a2 + 56);
        if (v18 < v11)
        {
          if (v19 >= v11 - v18)
          {
            v22 = v11 - v18;
          }

          else
          {
            v22 = v19;
          }

          v18 += v22;
          v19 -= v22;
          if (v21)
          {
            goto LABEL_88;
          }

          goto LABEL_27;
        }

        if (v11 < v18)
        {
          if (v13 >= v18 - v11)
          {
            v22 = v18 - v11;
          }

          else
          {
            v22 = v13;
          }

          v11 += v22;
          v13 -= v22;
          if (v21)
          {
            goto LABEL_88;
          }

          goto LABEL_42;
        }

        if (v13 >= v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = v13;
        }

        v18 += v22;
        v19 -= v22;
        v11 += v22;
        v13 -= v22;
        if (v21)
        {
LABEL_56:
          v34 = -1;
          goto LABEL_64;
        }
      }

      else
      {
        if (v18 < v11)
        {
          if (v19 >= v11 - v18)
          {
            v22 = v11 - v18;
          }

          else
          {
            v22 = v19;
          }

          v18 += v22;
          v19 -= v22;
LABEL_27:
          if (!*(v17 + 16))
          {
            goto LABEL_88;
          }

          sub_100049C40(0x462, 92);
          v23 = *(v17 + 16);
          HIDWORD(v64) |= v23 > 0;
          v24 = sub_100045744;
          if ((v64 & 0x100000000) != 0)
          {
            v24 = sub_10004565C;
          }

          v24("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v23, v20, v22);
          goto LABEL_78;
        }

        if (v11 < v18)
        {
          if (v13 >= v18 - v11)
          {
            v22 = v18 - v11;
          }

          else
          {
            v22 = v13;
          }

          v11 += v22;
          v13 -= v22;
LABEL_42:
          sub_100049C40(0x463, 92);
          v32 = *(v15 + 4);
          if (v32)
          {
            HIDWORD(v64) |= v32 < 0;
            v33 = sub_100045744;
            if ((v64 & 0x100000000) != 0)
            {
              v33 = sub_10004565C;
            }

            v33("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (0) for extent (%llu + %llu)\n", v32, v20, v22);
          }

          else
          {
            sub_100045744("invalid extent (%llu + %llu) with reference count (0)\n", v25, v26, v27, v28, v29, v30, v31, v20);
          }

LABEL_73:
          v34 = 0;
          goto LABEL_79;
        }

        v22 = v13 >= v19 ? v19 : v13;
        v18 += v22;
        v19 -= v22;
        v11 += v22;
        v13 -= v22;
      }

      if (*(v17 + 16) == *(v15 + 4))
      {
        goto LABEL_56;
      }

      sub_100049C40(0x464, 92);
      v35 = *(v15 + 4);
      v36 = *(v17 + 16);
      if ((v64 & 0x100000000) != 0 || v35 < v36)
      {
        HIDWORD(v64) = 1;
        (sub_10004565C)("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v35, v36, v20, v22);
      }

      else
      {
        HIDWORD(v64) = 0;
        (sub_100045744)("mismatch between extentref entry reference count (%d) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v35, v36, v20, v22);
      }

      if (!*(v17 + 16))
      {
        goto LABEL_73;
      }

      v34 = 2;
LABEL_64:
      if (v62 != v63)
      {
        if ((v60 & 2) == 0)
        {
          sub_100049C40(0x465, 92);
        }

        sub_10004565C("invalid kind (expected %u, actual %u) for extent (%llu + %llu)\n", a2, a3, a4, a5, a6, a7, a8, v62);
        v34 = 2;
        HIDWORD(v64) = 1;
      }

      if ((v60 & 4) != 0)
      {
LABEL_77:
        HIDWORD(v64) = 1;
LABEL_78:
        v34 = 2;
        goto LABEL_79;
      }

      if (v62 == 1)
      {
        v37 = v61[1];
        HIDWORD(v64) |= v37 > 0xFFFFFFFFFFFFFFFDLL;
        if (v37 > 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = 2;
        }
      }

      else if (v62 == 2 && v61[1] != -1)
      {
        goto LABEL_77;
      }

      if ((v64 & (v34 == -1)) != 0)
      {
        goto LABEL_77;
      }

      if (v34 == -1)
      {
LABEL_81:
        v15 = v61;
        goto LABEL_88;
      }

LABEL_79:
      if (v64)
      {
        goto LABEL_80;
      }

      v38 = *v59;
      v39 = *v59 & 0xFFFFFFFFFFFFFFFLL;
      if (v20 >= v39)
      {
        if (v20 == v39)
        {
          if (v22 == (*v61 & 0xFFFFFFFFFFFFFFFLL))
          {
            goto LABEL_83;
          }

          HIDWORD(v64) = 1;
        }

        else
        {
          v68 = *v59;
          v45 = v61[1];
          v65 = (v20 - v38) & 0xFFFFFFFFFFFFFFFLL | v56;
          v66 = v45;
          v67 = *(v61 + 4);
          HIDWORD(v64) = 1;
          v42 = sub_1000203C4((a2 + 768), &v68, &v65, *(a2 + 56), 2, 1);
          if (v42)
          {
            return v42;
          }
        }

LABEL_80:
        LOBYTE(v64) = 1;
        if (v34 != 2)
        {
          goto LABEL_81;
        }

        goto LABEL_84;
      }

LABEL_83:
      LOBYTE(v64) = 0;
LABEL_84:
      v68 = v20 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v40 = *(v17 + 8);
      v65 = v22 & 0xFFFFFFFFFFFFFFFLL | (v62 << 60);
      v66 = v40;
      v67 = *(v17 + 16);
      if (v34)
      {
        v41 = &v65;
      }

      else
      {
        v41 = 0;
      }

      v42 = sub_1000203C4((a2 + 768), &v68, v41, *(a2 + 56), v34, BYTE4(v64) & 1);
      v15 = v61;
      if (v42)
      {
        return v42;
      }

LABEL_88:
      if (!v19)
      {
        break;
      }

LABEL_93:
      if (!v13)
      {
        goto LABEL_112;
      }
    }

    if (BYTE8(xmmword_10007C070))
    {
      goto LABEL_92;
    }

    v43 = (*(&xmmword_10007C050 + 1))(&xmmword_10007C050);
    if (v43)
    {
      v14 = v43;
      v48 = strerror(v43);
      sub_10004565C("error iterating physical extent tree: %s\n", v49, v50, v51, v52, v53, v54, v55, v48);
      sub_100049C40(0x466, v14);
      return v14;
    }

    if (BYTE8(xmmword_10007C070))
    {
LABEL_92:
      v19 = 0;
      goto LABEL_93;
    }

    v17 = *algn_10007C068;
    v58 = qword_10007C060;
    v18 = *qword_10007C060;
    v19 = **algn_10007C068 & 0xFFFFFFFFFFFFFFFLL;
    v44 = **algn_10007C068 >> 60;
    sub_10001FC90(v57, a2, *qword_10007C060, v19, v44);
    LOBYTE(v62) = v44;
  }

  while (v13);
LABEL_112:
  v46 = v62;
  if (v64)
  {
    v68 = *v59;
    v14 = sub_1000203C4((a2 + 768), &v68, 0, *(a2 + 56), 0, BYTE4(v64) & 1);
  }

  else
  {
    v14 = 0;
  }

LABEL_115:
  *v58 = v18;
  *v17 = v19 & 0xFFFFFFFFFFFFFFFLL | (v46 << 60);
  return v14;
}

uint64_t sub_1000203C4(_DWORD *a1, uint64_t *a2, _BYTE *a3, uint64_t a4, int a5, char a6)
{
  v6 = *a2;
  v19 = a4;
  v20 = v6;
  if (a3)
  {
    v7 = 20;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_100027D7C(a1, 5, a5, 0, a6, &v19, 0x10u, a3, v7);
  v9 = v8;
  if (v8)
  {
    v10 = v20;
    strerror(v8);
    sub_10004565C("could not cache physical extent repair at %llu error: %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
    sub_100049C40(0x336, v9);
  }

  return v9;
}

uint64_t sub_10002045C(uint64_t a1, uint64_t a2)
{
  if (!qword_10009A1C8)
  {
    return 0;
  }

  while ((BYTE8(xmmword_10007C070) & 1) == 0)
  {
    v5 = qword_10007C060;
    v4 = *algn_10007C068;
    if ((*(*algn_10007C068 + 20) != 1 || !*(a1 + 56)) && *(*algn_10007C068 + 16))
    {
      sub_100049C40(0x47D, 92);
      v6 = *(v4 + 4);
      v7 = v6 > 0;
      v8 = sub_100045744;
      if (v6 > 0)
      {
        v8 = sub_10004565C;
      }

      v8("mismatch between extentref entry reference count (0) and calculated fsroot entry reference count (%d) for extent (%llu + %llu)\n", v6, *v5, *v4 & 0xFFFFFFFFFFFFFFFLL);
      v32 = *v5 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v31 = -1431655766;
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v9 = *v4;
      v31 = *(v4 + 4);
      v30 = v9;
      v10 = sub_1000203C4((a1 + 768), &v32, &v30, *(a1 + 56), 2, v7);
      if (v10)
      {
        return v10;
      }
    }

    v11 = (*(&xmmword_10007C050 + 1))(&xmmword_10007C050);
    if (v11)
    {
      v12 = v11;
      v13 = strerror(v11);
      sub_10004565C("error iterating physical extent tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
      sub_100049C40(0x47E, v12);
      return v12;
    }
  }

  xmmword_10007C170 = 0u;
  unk_10007C180 = 0u;
  xmmword_10007C150 = 0u;
  unk_10007C160 = 0u;
  xmmword_10007C130 = 0u;
  unk_10007C140 = 0u;
  xmmword_10007C110 = 0u;
  unk_10007C120 = 0u;
  xmmword_10007C0F0 = 0u;
  unk_10007C100 = 0u;
  xmmword_10007C0D0 = 0u;
  unk_10007C0E0 = 0u;
  xmmword_10007C0B0 = 0u;
  unk_10007C0C0 = 0u;
  xmmword_10007C090 = 0u;
  unk_10007C0A0 = 0u;
  xmmword_10007C070 = 0u;
  unk_10007C080 = 0u;
  xmmword_10007C050 = 0u;
  *&qword_10007C060 = 0u;
  BYTE8(xmmword_10007C070) = 1;
  if (!a2)
  {
    sub_10003B928(&xmmword_10009A190, 0);
    sub_10003B928(&xmmword_10009A1D0, 0);
    return 0;
  }

  sub_10003B928(&xmmword_10009A1D0, 0);
  xmmword_10009A1D0 = xmmword_10009A190;
  unk_10009A1E0 = unk_10009A1A0;
  xmmword_10009A1F0 = xmmword_10009A1B0;
  unk_10009A200 = unk_10009A1C0;
  if (sub_10001C108(&xmmword_10009A1D0, "prev phys extent", sub_10001F4EC))
  {
    sub_100045744("failed to register the prev phys extent tree in the fsck memory storage\n", v21, v22, v23, v24, v25, v26, v27, v29);
    sub_100049C40(0x588, 12);
  }

  v12 = 0;
  xmmword_10009A1B0 = 0u;
  unk_10009A1C0 = 0u;
  xmmword_10009A190 = 0u;
  unk_10009A1A0 = 0u;
  return v12;
}

uint64_t sub_1000206B4(uint64_t *a1, void *a2, unsigned int a3)
{
  if (!qword_10009A1C8)
  {
    return 2;
  }

  v16 = 8;
  v15 = 21;
  v4 = sub_1000397B8(&xmmword_10009A190, 0, a3, a1, &v16, 8u, a2, &v15);
  v5 = v4;
  if ((v4 & 0xFFFFFFFD) != 0)
  {
    v6 = *a1;
    strerror(v4);
    sub_10004565C("could not lookup extent at %llu for physical extent repair: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
    sub_100049C40(0x335, v5);
  }

  return v5;
}

BOOL sub_10002075C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10003B708(a1, 0, a2, 8);
  v4 = v3 != 0;
  if (v3)
  {
    v5 = *a2;
    strerror(v3 != 0);
    sub_10004565C("could not remove extent at %llu for physical extent repair: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
    sub_100049C40(0x2B1, v4);
  }

  return v4;
}

uint64_t sub_1000207CC(_DWORD *a1, uint64_t *a2, void *a3)
{
  v5 = sub_10003B12C(a1, 0, a2, 8, a3, 0x15u);
  v6 = v5;
  if (v5)
  {
    v7 = *a2;
    v16 = *a3 & 0xFFFFFFFFFFFFFFFLL;
    strerror(v5);
    sub_10004565C("could not insert extent with range (%llu + %llu) for physical extent repair: %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
    sub_100049C40(0x34F, v6);
  }

  return v6;
}

uint64_t sub_100020858(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 40) & 1) != 0 || *(result + 112))
    {
      return 0;
    }

    else
    {
      result = (*(result + 8))(result);
      if (!result)
      {
        if (*(v1 + 40))
        {
          v2 = 0;
          v3 = -1;
        }

        else
        {
          v3 = *(v1 + 72);
          v2 = *(v1 + 80) & 0xFFFFFFFFFFFFFFFLL;
        }

        result = 0;
        *(v1 + 104) = v3;
        *(v1 + 112) = v2;
      }
    }
  }

  return result;
}

uint64_t sub_1000208CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1[1];
  v10 = *(v9 + 1400);
  if (v10)
  {
    result = sub_1000209B8(a1, 0x6D6B6579uLL, *(v9 + 1392), v10, (v9 + 72), a6, a7, a8);
    if (result)
    {
      return result;
    }

    v9 = a1[1];
  }

  v12 = *(v9 + 1304);
  if (v12 && (*(qword_10009BA60 + 47) & 1) == 0)
  {
    result = sub_1000209B8(a1, 0x6B657973uLL, *(v9 + 1296), v12, (v9 + 72), a6, a7, a8);
    if (result)
    {
      return result;
    }

    v9 = a1[1];
  }

  sub_1000422DC(a1, *(v9 + 1392), *(v9 + 1400), 0, 0x40000000, *(v9 + 1392), 0, 0, 1u, 1u);
  sub_1000422DC(a1, *(a1[1] + 1296), *(a1[1] + 1304), 0, 0x40000000, *(a1[1] + 1296), 0, 0, 1u, 1u);
  return 0;
}

uint64_t sub_1000209B8(uint64_t *a1, size_t a2, uint64_t a3, size_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v172 = 0xAAAAAAAAAAAAAAAALL;
  v171 = 0;
  v13 = sub_100021DF8(a1, a2, a3, a4, a5, &v172, a7, a8);
  if (v13)
  {
    return v13;
  }

  v16 = v172;
  if (a2 == 1869900147)
  {
    v17 = 14;
  }

  else
  {
    v17 = 12;
  }

  v18 = sub_100031CD8(v172, v17, *(a1[1] + 16), a2, 0, *(a1[1] + 36) * a4, v14, v15);
  if (v18)
  {
    v13 = v18;
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v26 = "OTI keybag";
        goto LABEL_181;
      }

      if (a2 == 1919247219)
      {
        sub_100045744("%s (%llu+%llu): block range isn't a valid keybag, skipping checks\n", v19, v20, v21, v22, v23, v24, v25, "volume keybag");
        goto LABEL_188;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v26 = "container keybag";
        goto LABEL_181;
      }

      if (a2 == 1835754873)
      {
        v26 = "media keybag";
LABEL_181:
        sub_10004565C("%s (%llu+%llu): block range isn't a valid keybag, aborting\n", v19, v20, v21, v22, v23, v24, v25, v26);
        goto LABEL_214;
      }
    }

    v26 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v26 = "OTI blob";
    }

    goto LABEL_181;
  }

  v27 = (v16 + 32);
  v161 = *(a1[1] + 36) * a4;
  v168 = v16;
  v28 = (v16 + 32);
  if (a2 != 1869900147)
  {
    v29 = sub_100022314(a1, v28, a2, a3, a4, 2, 0x18uLL, v25);
    if (v29)
    {
      goto LABEL_190;
    }

    v151 = v8;
    v93 = *(v16 + 9);
    if (v93 < 0x11)
    {
      v158 = 0;
      v160 = 16;
LABEL_185:
      v13 = sub_100022788(v27, a2, a3, a4, v158, v160, &v171, v92);
      goto LABEL_186;
    }

    v94 = 0;
    v95 = &v16[v93 + 32];
    v96 = v16 + 48;
    if (a2 == 1651273570)
    {
      v97 = "OTI blob";
    }

    else
    {
      v97 = "unknown keybag";
    }

    v158 = 0;
    v160 = 16;
    v98 = v161;
    v152 = v97;
    v154 = v16 + 32;
    while (1)
    {
      v163 = v95;
      v99 = *(v96 + 9);
      v100 = v99 + 24;
      if (((v99 + 24) & 0xF) != 0)
      {
        v100 = v99 - ((v99 + 24) & 0xF) + 40;
      }

      v170 = v100;
      v167 = v95 - v96;
      v155 = v100 - (v95 - v96);
      if (v100 > v95 - v96)
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v101) = v97;
          if (a2 == 1919247219)
          {
            v101 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v101 = "container keybag";
        }

        else
        {
          v101 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v101) = v97;
          }
        }

        v150 = *(v16 + 9);
        sub_10004565C("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v86, v87, v88, v89, v90, v91, v92, v101);
        sub_100049C40(0x4EE, -11);
        LODWORD(v99) = *(v96 + 9);
      }

      if (v99 >= 0x201)
      {
        if (a2 > 1869900146)
        {
          if (a2 == 1919247219)
          {
            v97 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v97 = "container keybag";
        }

        else if (a2 == 1835754873)
        {
          v97 = "media keybag";
        }

        sub_10004565C("%s (%llu+%llu): entry %u has size %u > maximum size %u\n", v86, v87, v88, v89, v90, v91, v92, v97);
        v13 = 92;
        v137 = 1066;
        goto LABEL_213;
      }

      if (v160 + v170 > v98)
      {
        if (a2 > 1869900146)
        {
          if (a2 == 1919247219)
          {
            v97 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v97 = "container keybag";
        }

        else if (a2 == 1835754873)
        {
          v97 = "media keybag";
        }

        sub_10004565C("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v86, v87, v88, v89, v90, v91, v92, v97);
        v13 = 92;
        v137 = 1067;
        goto LABEL_213;
      }

      if (!uuid_is_null(v96))
      {
        goto LABEL_105;
      }

      if (a2 > 1869900146)
      {
        LOBYTE(v102) = v97;
        if (a2 == 1919247219)
        {
          v102 = "volume keybag";
        }
      }

      else if (a2 == 1801812339)
      {
        v102 = "container keybag";
      }

      else
      {
        v102 = "media keybag";
        if (a2 != 1835754873)
        {
          LOBYTE(v102) = v97;
        }
      }

      sub_100045744("%s (%llu+%llu): UUID of entry %u is null\n", v86, v87, v88, v89, v90, v91, v92, v102);
      sub_100049C40(0x42C, -2);
      if (sub_10004758C(qword_10009BA58, "Remove entry with null UUID? ", v103, v104, v105, v106, v107, v108, v144))
      {
        v165 = 1;
        v171 = 1;
      }

      else
      {
LABEL_105:
        v165 = 0;
      }

      if (a2 == 1835754873 && !uuid_is_null(v96) && uuid_compare(v96, (a1[1] + 72)))
      {
        *&out[29] = 0xAAAAAAAAAAAAAAAALL;
        *&v109 = 0xAAAAAAAAAAAAAAAALL;
        *(&v109 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *out = v109;
        *&out[16] = v109;
        *&v173[29] = 0xAAAAAAAAAAAAAAAALL;
        *v173 = v109;
        *&v173[16] = v109;
        uuid_unparse(v96, out);
        uuid_unparse((a1[1] + 72), v173);
        v147 = *(v96 + 8);
        sub_100045744("%s (%llu+%llu): UUID %s of entry %u (tag %u) is not the container UUID %s\n", v110, v111, v112, v113, v114, v115, v116, "media keybag");
        sub_100049C40(0x42D, -2);
      }

      if (!*(v96 + 8))
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v117) = v97;
          if (a2 == 1919247219)
          {
            v117 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v117 = "container keybag";
        }

        else
        {
          v117 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v117) = v97;
          }
        }

        sub_100045744("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v86, v87, v88, v89, v90, v91, v92, v117);
        sub_100049C40(0x42E, -5);
      }

      if (v96[20] || v96[21] || v96[22] || v96[23])
      {
        if (a2 > 1869900146)
        {
          LOBYTE(v118) = v97;
          if (a2 == 1919247219)
          {
            v118 = "volume keybag";
          }
        }

        else if (a2 == 1801812339)
        {
          v118 = "container keybag";
        }

        else
        {
          v118 = "media keybag";
          if (a2 != 1835754873)
          {
            LOBYTE(v118) = v97;
          }
        }

        sub_100045744("%s (%llu+%llu): entry %u has invalid padding\n", v86, v87, v88, v89, v90, v91, v92, v118);
        sub_100049C40(0x42F, -10);
      }

      if (a2 == 1801812339)
      {
        v119 = *(v96 + 8);
        if (v119 == 16 || v119 == 3)
        {
          v120 = v27;
          if (v119 == 16)
          {
            v121 = 1869900147;
          }

          else
          {
            v121 = 1919247219;
          }

          if (*(v96 + 9) != 16)
          {
            sub_10004565C("%s (%llu+%llu): %s records entry %u does not contain a range (size %u)\n", v86, v87, v88, v89, v90, v91, v92, "container keybag");
            v13 = 92;
            v137 = 1072;
LABEL_213:
            sub_100049C40(v137, 92);
            goto LABEL_214;
          }

          v122 = *(v96 + 3);
          v123 = *(v96 + 4);
          v124 = *(a1[1] + 40);
          if (v124 - v123 < v122 || v124 <= v123 || v122 < 1 || v124 <= v122)
          {
            v148 = *(v96 + 3);
            sub_10004565C("%s (%llu+%llu): %s records entry %u contains invalid range %llu+%llu\n", v86, v122, v123, v89, v90, v91, v92, "container keybag");
            sub_100049C40(0x431, 92);
            if (v165)
            {
              v165 = 1;
LABEL_152:
              v27 = v120;
              goto LABEL_153;
            }

            LOBYTE(v97) = v152;
            if (!sub_10004758C(qword_10009BA58, "Remove entry with invalid range? ", v87, v88, v89, v90, v91, v92, v140))
            {
              goto LABEL_207;
            }

            v27 = v120;
            v165 = 1;
            v171 = 1;
            v16 = v168;
          }

          else
          {
            v125 = sub_1000209B8(a1, v121);
            if (!v125)
            {
              if (!v165)
              {
                sub_100021B3C(a1, v121, *(v96 + 3), *(v96 + 4));
                v98 = v161;
                v27 = v120;
                v16 = v168;
                LOBYTE(v97) = v152;
                if (v170 <= v167)
                {
                  goto LABEL_169;
                }

LABEL_160:
                if (!sub_10004758C(qword_10009BA58, "Fix the keybag size? ", v87, v88, v89, v90, v91, v92, v140))
                {
                  goto LABEL_169;
                }

                v126 = 0;
                goto LABEL_162;
              }

              v165 = 1;
              v98 = v161;
              goto LABEL_152;
            }

            v13 = v125;
            if (v125 != 92)
            {
              goto LABEL_186;
            }

            v27 = v120;
            sub_10004565C("%s (%llu+%llu): %s records entry %u contains invalid keybag\n", v86, v87, v88, v89, v90, v91, v92, "container keybag");
            sub_100049C40(0x5D8, 92);
            if (v165)
            {
              v165 = 1;
              v98 = v161;
LABEL_153:
              v16 = v168;
              LOBYTE(v97) = v152;
              goto LABEL_154;
            }

            v98 = v161;
            v16 = v168;
            LOBYTE(v97) = v152;
            if (!sub_10004758C(qword_10009BA58, "Remove entry with invalid keybag? ", v87, v88, v89, v90, v91, v92, v140))
            {
LABEL_207:
              v13 = 92;
              goto LABEL_214;
            }

            v165 = 1;
            v171 = 1;
          }
        }
      }

LABEL_154:
      if (v170 <= v167)
      {
        if (!v165)
        {
          goto LABEL_169;
        }

        goto LABEL_165;
      }

      if ((v165 & 1) == 0)
      {
        goto LABEL_160;
      }

      v126 = 1;
LABEL_162:
      v127 = *(v16 + 9) + v155;
      *(v16 + 9) = v127;
      v128 = *(v16 + 17);
      if (v158 + 1 > v128)
      {
        *(v16 + 17) = v128 + 1;
      }

      v163 = v27 + v127;
      v171 = 1;
      if ((v126 & 1) == 0)
      {
LABEL_169:
        v134 = *(v96 + 9);
        v135 = v134 + 24;
        v136 = v134 - ((v134 + 24) & 0xF) + 40;
        if ((v135 & 0xF) == 0)
        {
          v136 = v135;
        }

        v96 += v136;
        ++v158;
        v160 += v170;
        v95 = v163;
        goto LABEL_172;
      }

LABEL_165:
      v129 = *(v96 + 9);
      v130 = v129 + 24;
      v131 = v129 - ((v129 + 24) & 0xF) + 40;
      if ((v130 & 0xF) != 0)
      {
        v132 = v131;
      }

      else
      {
        v132 = v130;
      }

      memmove(v96, &v96[v132], v163 - &v96[v132]);
      memset_s((v163 - v132), v132, 0, v132);
      v133 = (*(v16 + 9) - v132);
      LOBYTE(v97) = v152;
      v27 = v154;
      *(v16 + 9) = v133;
      --*(v16 + 17);
      v95 = &v154[v133];
LABEL_172:
      ++v94;
      if (v96 >= v95)
      {
        goto LABEL_185;
      }
    }
  }

  v29 = sub_100022314(a1, v28, 1869900147, a3, a4, 1, 0x28uLL, v25);
  if (v29)
  {
    goto LABEL_190;
  }

  v37 = *(v16 + 9);
  if (v37 < 0x11)
  {
    v138 = 0;
    v41 = 16;
LABEL_183:
    v13 = sub_100022788(v27, 1869900147, a3, a4, v138, v41, &v171, v36);
    goto LABEL_187;
  }

  v151 = v8;
  v166 = 0;
  v38 = 0;
  v157 = 0;
  v39 = v27 + v37;
  v40 = v16 + 48;
  LODWORD(v41) = 16;
  v153 = v16 + 32;
  while (1)
  {
    v169 = v39 - v40;
    if ((v39 - v40) <= 0x27)
    {
      v149 = *(v168 + 9);
      v42 = v39;
      sub_10004565C("%s (%llu+%llu): entry %u has size %u > remaining size %u (keybag size %u)\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      sub_100049C40(0x5DB, -11);
      v39 = v42;
    }

    if (!*(v40 + 16))
    {
      sub_10004565C("%s (%llu+%llu): entry %u has blob size == 0\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v137 = 1500;
      goto LABEL_213;
    }

    if (*(v40 + 16) > 0x1000u)
    {
      sub_10004565C("%s (%llu+%llu): entry %u has blob size %u > maximum blob size %u\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v137 = 1501;
      goto LABEL_213;
    }

    v43 = (v41 + 40);
    if (v43 > v161)
    {
      sub_10004565C("%s (%llu+%llu): entry %u with size %u brings total size %u beyond object size %u\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
      v13 = 92;
      v137 = 1502;
      goto LABEL_213;
    }

    v164 = v39;
    if (uuid_is_null(v40))
    {
      sub_100045744("%s (%llu+%llu): UUID of entry %u is null\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      sub_100049C40(0x5DF, -2);
      v57 = sub_10004758C(qword_10009BA58, "Remove entry with null UUID? ", v51, v52, v53, v54, v55, v56, v141);
      v162 = v57 != 0;
      v58 = v166;
      if (v57)
      {
        v58 = 1;
      }

      v166 = v58;
    }

    else
    {
      v162 = 0;
    }

    if (!*(v40 + 17))
    {
      sub_100045744("%s (%llu+%llu): entry %u has 'unknown' tag type\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      sub_100049C40(0x5E0, -5);
    }

    v159 = v41;
    if (v40[36] || v40[37] || v40[38] || v40[39])
    {
      sub_100045744("%s (%llu+%llu): entry %u has invalid padding\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      sub_100049C40(0x5E1, -10);
    }

    v59 = *(v40 + 3);
    v60 = *(v40 + 16);
    v61 = a1[1];
    v62 = *(v61 + 36);
    v63 = v60 / v62;
    if (v60 % v62)
    {
      v64 = v63 + 1;
    }

    else
    {
      v64 = v63;
    }

    if (v59 < 1 || (v65 = *(v61 + 40), v65 <= v59) || (v65 > v64 ? (v66 = v65 - v64 >= v59) : (v66 = 0), !v66))
    {
      v146 = *(v40 + 3);
      sub_10004565C("%s (%llu+%llu): entry %u has invalid blob range %llu+%llu\n", v44, v45, v46, v47, v48, v49, v50, "OTI keybag");
      sub_100049C40(0x5E2, 92);
      v27 = v153;
      v41 = v159;
      if (!v162)
      {
        v68 = qword_10009BA58;
        v69 = "Remove entry with invalid blob range? ";
LABEL_54:
        if (!sub_10004758C(v68, v69, v31, v32, v33, v34, v35, v36, v142))
        {
          goto LABEL_207;
        }

        v166 = 1;
        goto LABEL_56;
      }

      goto LABEL_56;
    }

    v156 = v43;
    v67 = v64 * v62;
    if (v64 * v62 < 0x10000)
    {
      break;
    }

    sub_10004565C("%s (%llu+%llu): oti_ke_blob_len (%u) is too large\n", v44, v45, v46, v47, v48, v49, v50, "OTI blob");
    sub_100049C40(0x5D9, 92);
    v27 = v153;
    v41 = v159;
    v43 = v156;
LABEL_52:
    sub_10004565C("%s (%llu+%llu): entry %u has invalid blob\n", v30, v31, v32, v33, v34, v35, v36, "OTI keybag");
    sub_100049C40(0x5E3, 92);
    if (!v162)
    {
      v68 = qword_10009BA58;
      v69 = "Remove entry with invalid blob? ";
      goto LABEL_54;
    }

LABEL_56:
    if (v169 >= 0x28)
    {
      goto LABEL_62;
    }

    v81 = 1;
LABEL_58:
    v82 = *(v168 + 9) - v169 + 40;
    *(v168 + 9) = v82;
    v83 = *(v168 + 17);
    if (v157 + 1 > v83)
    {
      *(v168 + 17) = v83 + 1;
    }

    v39 = v27 + v82;
    if (!v81)
    {
      v166 = 1;
LABEL_64:
      ++v157;
      v40 += 40;
      v41 = v43;
      goto LABEL_65;
    }

    v164 = v39;
    v166 = 1;
LABEL_62:
    memmove(v40, v40 + 40, v164 - (v40 + 40));
    memset_s((v164 - 40), 0x28uLL, 0, 0x28uLL);
    v84 = (*(v168 + 9) - 40);
    *(v168 + 9) = v84;
    --*(v168 + 17);
    v39 = v27 + v84;
LABEL_65:
    ++v38;
    if (v40 >= v39)
    {
      v171 = v166;
      v8 = v151;
      v138 = v157;
      goto LABEL_183;
    }
  }

  *out = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_100021DF8(a1, 0x626C6F62uLL, v59, v64, v151, out, v49, v50);
  if (!v13)
  {
    v72 = v67;
    v73 = *out;
    if (sub_10003ED88(v40 + 2, *out, v72, 0, v70, v71))
    {
      v145 = *(v40 + 2);
      sub_10004565C("%s (%llu+%llu): oti_ke_blob_cksum (0x%llx) is invalid for blob\n", v74, v75, v76, v77, v78, v79, v80, "OTI blob");
      v13 = 92;
      sub_100049C40(0x5DA, 92);
    }

    else
    {
      v13 = 0;
    }

    free(v73);
  }

  if (!v13)
  {
    v43 = v156;
    if (!v162)
    {
      sub_1000422DC(a1, v59, v64, 0, 0x40000000, v59, 0, 0, 0xDu, 1u);
      if (v169 > 0x27)
      {
        v27 = v153;
        v39 = v164;
        goto LABEL_64;
      }

      v85 = sub_10004758C(qword_10009BA58, "Fix the keybag size? ", v31, v32, v33, v34, v35, v36, v143);
      v27 = v153;
      v41 = v159;
      v39 = v164;
      if (!v85)
      {
        goto LABEL_64;
      }

      v81 = 0;
      goto LABEL_58;
    }

    v27 = v153;
    v41 = v159;
    goto LABEL_56;
  }

  v27 = v153;
  v41 = v159;
  v43 = v156;
  if (v13 == 92)
  {
    goto LABEL_52;
  }

  v171 = v166;
LABEL_186:
  v8 = v151;
LABEL_187:
  if (!v13)
  {
LABEL_188:
    if (v171 == 1)
    {
      v29 = sub_100022174(a1, a2, a3, a4, v8, v172, v70, v71);
LABEL_190:
      v13 = v29;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_214:
  free(v172);
  return v13;
}

uint64_t sub_100021B3C(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  if (a2 == 1869900147 || a2 == 1919247219)
  {
    v5 = 13;
  }

  else
  {
    v5 = 1;
  }

  return sub_1000422DC(a1, a3, a4, 0, 0x40000000, a3, 0, 0, v5, 1u);
}

uint64_t sub_100021BA0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[1];
  v9 = *(v8 + 1304);
  if (!v9 || (*(qword_10009BA60 + 47) & 1) != 0)
  {
    return 0;
  }

  v12 = *(v8 + 1296);
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v10 = sub_100021DF8(a1, 0x6B657973uLL, v12, v9, (v8 + 72), &v46, a7, a8);
  if (!v10)
  {
    v13 = v46;
    v14 = *(v46 + 36);
    if (v14 < 0x11)
    {
      goto LABEL_21;
    }

    v15 = 0;
    v16 = 0;
    v17 = v46 + v14 + 32;
    v18 = v46 + 48;
    do
    {
      if (uuid_is_null(v18))
      {
        goto LABEL_9;
      }

      if (sub_10001D898(a1, v18))
      {
        goto LABEL_9;
      }

      *&out[29] = 0xAAAAAAAAAAAAAAAALL;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *out = v24;
      *&out[16] = v24;
      uuid_unparse(v18, out);
      v45 = *(v18 + 16);
      sub_100045744("%s (%llu+%llu): UUID %s of entry %u (tag %u) does not reference any volume\n", v25, v26, v27, v28, v29, v30, v31, "container keybag");
      sub_100049C40(0x445, -2);
      if (!sub_10004758C(qword_10009BA58, "Remove orphan entry? ", v32, v33, v34, v35, v36, v37, v44))
      {
LABEL_9:
        v21 = *(v18 + 18);
        v22 = v21 + 24;
        v23 = v21 - ((v21 + 24) & 0xF) + 40;
        if ((v22 & 0xF) == 0)
        {
          v23 = v22;
        }

        v18 += v23;
      }

      else
      {
        v38 = *(v18 + 18);
        v39 = v38 + 24;
        v40 = v38 - ((v38 + 24) & 0xF) + 40;
        if ((v39 & 0xF) != 0)
        {
          v41 = v40;
        }

        else
        {
          v41 = v39;
        }

        memmove(v18, (v18 + v41), v17 - (v18 + v41));
        memset_s((v17 - v41), v41, 0, v41);
        v42 = (*(v13 + 36) - v41);
        *(v13 + 36) = v42;
        --*(v13 + 34);
        v17 = v13 + 32 + v42;
        v16 = 1;
      }

      ++v15;
    }

    while (v18 < v17);
    v13 = v46;
    if (v16)
    {
      v10 = sub_100022174(a1, 1801812339, v12, v9, (a1[1] + 72), v46, v19, v20);
    }

    else
    {
LABEL_21:
      v10 = 0;
    }

    free(v13);
  }

  return v10;
}

uint64_t sub_100021DF8(uint64_t *a1, size_t a2, uint64_t a3, size_t count, unsigned __int8 *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  if (HIDWORD(count) || (a2 = *(a1[1] + 36), (count * a2) >> 32))
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v24 = "OTI keybag";
        goto LABEL_18;
      }

      if (v10 == 1919247219)
      {
        v24 = "volume keybag";
        goto LABEL_18;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v24 = "container keybag";
        goto LABEL_18;
      }

      if (v10 == 1835754873)
      {
        v24 = "media keybag";
LABEL_18:
        sub_10004565C("%s (%llu+%llu): size is too large\n", a2, a3, count, a5, a6, a7, a8, v24);
        v25 = 92;
        v26 = 1058;
        v27 = 92;
LABEL_19:
        sub_100049C40(v26, v27);
        return v25;
      }
    }

    v24 = "unknown keybag";
    if (v10 == 1651273570)
    {
      v24 = "OTI blob";
    }

    goto LABEL_18;
  }

  v14 = malloc_type_calloc(count, a2, 0xC61E6867uLL);
  if (!v14)
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v29 = "OTI keybag";
        goto LABEL_51;
      }

      if (v10 == 1919247219)
      {
        v29 = "volume keybag";
        goto LABEL_51;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v29 = "container keybag";
        goto LABEL_51;
      }

      if (v10 == 1835754873)
      {
        v29 = "media keybag";
LABEL_51:
        sub_10004565C("%s (%llu+%llu): failed to allocate memory\n", v15, v16, v17, v18, v19, v20, v21, v29);
        v25 = 12;
        v26 = 1059;
        v27 = 12;
        goto LABEL_19;
      }
    }

    v29 = "unknown keybag";
    if (v10 == 1651273570)
    {
      v29 = "OTI blob";
    }

    goto LABEL_51;
  }

  v22 = v14;
  if (v10 == 1835754873)
  {
    v23 = sub_10002F3CC(*a1);
  }

  else if ((*(qword_10009BA60 + 20) & 0x80000000) != 0)
  {
    v30 = a1[1];
    v31 = *(qword_10009BA60 + 8);
    *&v40[0] = a3;
    *(&v40[0] + 1) = count;
    v40[1] = *(v30 + 1392);
    v23 = sub_10001BDEC(v31, a5, v40, 1, v22);
  }

  else
  {
    v23 = sub_100004474(*a1, a3, count, a5);
  }

  v25 = v23;
  if (v23)
  {
    if (v10 > 1869900146)
    {
      if (v10 == 1869900147)
      {
        v32 = "OTI keybag";
        goto LABEL_45;
      }

      if (v10 == 1919247219)
      {
        v32 = "volume keybag";
        goto LABEL_45;
      }
    }

    else
    {
      if (v10 == 1801812339)
      {
        v32 = "container keybag";
        goto LABEL_45;
      }

      if (v10 == 1835754873)
      {
        v32 = "media keybag";
LABEL_45:
        strerror(v23);
        sub_10004565C("%s (%llu+%llu): failed to get keybag data: %s\n", v33, v34, v35, v36, v37, v38, v39, v32);
        sub_100049C40(0x424, v25);
        free(v22);
        return v25;
      }
    }

    if (v10 == 1651273570)
    {
      v32 = "OTI blob";
    }

    else
    {
      v32 = "unknown keybag";
    }

    goto LABEL_45;
  }

  *a6 = v22;
  return v25;
}

uint64_t sub_100022174(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  sub_10003ED18(a6, (a6 + 8), (*(a1[1] + 36) * a4 - 8), 0, a7, a8);
  if (a2 == 1835754873)
  {
    v14 = sub_10002F4AC(*a1);
  }

  else
  {
    v15 = a1[1];
    v16 = *(qword_10009BA60 + 8);
    *&v27[0] = a3;
    *(&v27[0] + 1) = a4;
    v27[1] = *(v15 + 1392);
    v14 = sub_10001BDEC(v16, a5, v27, 0, a6);
  }

  v17 = v14;
  if (v14)
  {
    if (a2 > 1869900146)
    {
      if (a2 == 1869900147)
      {
        v18 = "OTI keybag";
        goto LABEL_17;
      }

      if (a2 == 1919247219)
      {
        v18 = "volume keybag";
        goto LABEL_17;
      }
    }

    else
    {
      if (a2 == 1801812339)
      {
        v18 = "container keybag";
        goto LABEL_17;
      }

      if (a2 == 1835754873)
      {
        v18 = "media keybag";
LABEL_17:
        strerror(v14);
        sub_10004565C("%s (%llu+%llu): failed to put keybag: %s\n", v19, v20, v21, v22, v23, v24, v25, v18);
        sub_100049C40(0x443, v17);
        return v17;
      }
    }

    if (a2 == 1651273570)
    {
      v18 = "OTI blob";
    }

    else
    {
      v18 = "unknown keybag";
    }

    goto LABEL_17;
  }

  return v17;
}

uint64_t sub_100022314(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (!*a2)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v10 = "OTI keybag";
        goto LABEL_47;
      }

      if (a3 == 1919247219)
      {
        v10 = "volume keybag";
        goto LABEL_47;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v10 = "container keybag";
        goto LABEL_47;
      }

      if (a3 == 1835754873)
      {
        v10 = "media keybag";
LABEL_47:
        sub_10004565C("%s (%llu+%llu): version cannot be 0\n", a2, a3, a4, a5, a6, a7, a8, v10);
        v14 = 92;
        v15 = 1061;
LABEL_74:
        sub_100049C40(v15, 92);
        return v14;
      }
    }

    v10 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v10 = "OTI blob";
    }

    goto LABEL_47;
  }

  if (*a2 != a6)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v11 = "OTI keybag";
        goto LABEL_53;
      }

      if (a3 == 1919247219)
      {
        v11 = "volume keybag";
        goto LABEL_53;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v11 = "container keybag";
        goto LABEL_53;
      }

      if (a3 == 1835754873)
      {
        v11 = "media keybag";
LABEL_53:
        v19 = *a2;
        sub_100045744("%s (%llu+%llu): unknown version %u\n, skipping checks\n", a2, a3, a4, a5, a6, a7, a8, v11);
        v16 = 1062;
        v17 = -6;
LABEL_54:
        sub_100049C40(v16, v17);
        return 0;
      }
    }

    v11 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v11 = "OTI blob";
    }

    goto LABEL_53;
  }

  v8 = (*(*(a1 + 8) + 36) * a5);
  if (v8 / a7 < a2[1])
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v9 = "OTI keybag";
        goto LABEL_67;
      }

      if (a3 == 1919247219)
      {
        v9 = "volume keybag";
        goto LABEL_67;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v9 = "container keybag";
        goto LABEL_67;
      }

      if (a3 == 1835754873)
      {
        v9 = "media keybag";
LABEL_67:
        v20 = a2[1];
        sub_10004565C("%s (%llu+%llu): number of entries %u exceeds object capacity %lu\n", a2, a3, a4, a5, a6, a7, a8, v9);
        v14 = 92;
        v15 = 1063;
        goto LABEL_74;
      }
    }

    v9 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v9 = "OTI blob";
    }

    goto LABEL_67;
  }

  if (*(a2 + 1) > v8)
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v12 = "OTI keybag";
        goto LABEL_73;
      }

      if (a3 == 1919247219)
      {
        v12 = "volume keybag";
        goto LABEL_73;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v12 = "container keybag";
        goto LABEL_73;
      }

      if (a3 == 1835754873)
      {
        v12 = "media keybag";
LABEL_73:
        v21 = *(a2 + 1);
        v22 = (*(*(a1 + 8) + 36) * a5);
        sub_10004565C("%s (%llu+%llu): number of bytes %u exceeds object size %u\n", a2, a3, a4, a5, a6, a7, a8, v12);
        v14 = 92;
        v15 = 1064;
        goto LABEL_74;
      }
    }

    v12 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v12 = "OTI blob";
    }

    goto LABEL_73;
  }

  if (*(a2 + 8) || *(a2 + 9) || *(a2 + 10) || *(a2 + 11) || *(a2 + 12) || *(a2 + 13) || *(a2 + 14) || *(a2 + 15))
  {
    if (a3 > 1869900146)
    {
      if (a3 == 1869900147)
      {
        v13 = "OTI keybag";
        goto LABEL_81;
      }

      if (a3 == 1919247219)
      {
        v13 = "volume keybag";
        goto LABEL_81;
      }
    }

    else
    {
      if (a3 == 1801812339)
      {
        v13 = "container keybag";
        goto LABEL_81;
      }

      if (a3 == 1835754873)
      {
        v13 = "media keybag";
LABEL_81:
        sub_100045744("%s (%llu+%llu): invalid padding\n", a2, a3, a4, a5, a6, a7, a8, v13);
        v16 = 1065;
        v17 = -10;
        goto LABEL_54;
      }
    }

    v13 = "unknown keybag";
    if (a3 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_81;
  }

  return 0;
}

uint64_t sub_100022788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v9 = a6;
  v10 = a2;
  if (*(a1 + 2) == a5)
  {
    goto LABEL_16;
  }

  v12 = a5;
  if (a2 > 1869900146)
  {
    if (a2 == 1869900147)
    {
      v13 = "OTI keybag";
      goto LABEL_14;
    }

    if (a2 == 1919247219)
    {
      v13 = "volume keybag";
      goto LABEL_14;
    }

LABEL_9:
    v13 = "unknown keybag";
    if (a2 == 1651273570)
    {
      v13 = "OTI blob";
    }

    goto LABEL_14;
  }

  if (a2 == 1801812339)
  {
    v13 = "container keybag";
    goto LABEL_14;
  }

  if (a2 != 1835754873)
  {
    goto LABEL_9;
  }

  v13 = "media keybag";
LABEL_14:
  v31 = *(a1 + 2);
  sub_10004565C("%s (%llu+%llu): number of keys %u does not match number of entries found %u\n", a2, a3, a4, a5, a6, a7, a8, v13);
  v14 = 92;
  sub_100049C40(0x444, 92);
  if (!sub_10004758C(qword_10009BA58, "Fix the number of keys? ", v15, v16, v17, v18, v19, v20, v29))
  {
    return v14;
  }

  *(a1 + 2) = v12;
  *a7 = 1;
LABEL_16:
  if (*(a1 + 4) == v9)
  {
    return 0;
  }

  if (v10 > 1869900146)
  {
    if (v10 == 1869900147)
    {
      v21 = "OTI keybag";
    }

    else
    {
      if (v10 != 1919247219)
      {
        goto LABEL_25;
      }

      v21 = "volume keybag";
    }
  }

  else
  {
    if (v10 != 1801812339)
    {
      if (v10 == 1835754873)
      {
        v21 = "media keybag";
        goto LABEL_30;
      }

LABEL_25:
      v21 = "unknown keybag";
      if (v10 == 1651273570)
      {
        v21 = "OTI blob";
      }

      goto LABEL_30;
    }

    v21 = "container keybag";
  }

LABEL_30:
  v32 = *(a1 + 4);
  sub_10004565C("%s (%llu+%llu): number of bytes %u does not match sum of all entries %u\n", a2, a3, a4, a5, a6, a7, a8, v21);
  v14 = 92;
  sub_100049C40(0x432, 92);
  if (sub_10004758C(qword_10009BA58, "Fix the number of bytes? ", v22, v23, v24, v25, v26, v27, v30))
  {
    v14 = 0;
    *(a1 + 4) = v9;
    *a7 = 1;
  }

  return v14;
}

char *sub_1000229E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1 && (v10 = *(a1 + 40), (*(v10 + 57) & 2) != 0))
  {
    v12 = *(v10 + 176);
    v13 = sub_10001C07C(0x64u, 0x38400000uLL, 0x5A00000uLL);
    byte_10009A210 = BYTE1(*(*(a1 + 40) + 56)) & 1;
    sub_10001E320(&unk_10009A218, v12, v13);
    if (!sub_100039748(&unk_10009A280, 0, 0, 0x8000000, 2, 0, 0, 4096, 8, 9, 0, 0, sub_100030C88))
    {
      sub_10003B84C(&unk_10009A280, 0, 64);
    }

    result = sub_10001C108(&unk_10009A280, "purgeable", sub_100022B40);
    if (result)
    {
      sub_100045744("failed to register the purgeable tree in the fsck memory storage\n", v14, v15, v16, v17, v18, v19, v20, v21);

      return sub_100049C40(0x5C1, 12);
    }
  }

  else
  {

    return sub_100045614("skipping purgeable cross checks\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return result;
}

uint64_t sub_100022B40()
{
  sub_10001E44C(&unk_10009A218);

  return sub_10003B928(&unk_10009A280, 0);
}

uint64_t sub_100022B7C(unint64_t a1)
{
  if (!sub_10001E4A8(&unk_10009A218))
  {
    return 0;
  }

  if (byte_10009A210 != 1)
  {
    v11 = sub_10001E8F4(&unk_10009A218, a1, 1uLL, 1);
    if (v11 != 17)
    {
LABEL_8:
      v10 = v11;
      goto LABEL_9;
    }

LABEL_7:
    v11 = sub_100022CF0(a1);
    goto LABEL_8;
  }

  v2 = sub_10001EC40(&unk_10009A218, a1, 1uLL, 1);
  if (!v2)
  {
    v10 = sub_10001E8F4(&unk_10009A218, a1, 1uLL, 0);
    if (!v10)
    {
      return v10;
    }

    sub_10004565C("can't unmark purgeable (file_id %llu) for cross checks\n", v27, v28, v29, v30, v31, v32, v33, a1);
    sub_100049C40(0x5C3, 92);
LABEL_10:
    if (v10 == 34)
    {
      strerror(34);
      sub_100045744("failed to cross check purgeable record: %d (%s)\n", v12, v13, v14, v15, v16, v17, v18, 34);
      sub_100049C40(0x5C5, 0);
    }

    else
    {
      if (v10 != 12)
      {
        strerror(v10);
        sub_10004565C("failed to cross check purgeable record: %d (%s)\n", v20, v21, v22, v23, v24, v25, v26, v10);
        sub_100049C40(0x5C6, v10);
        return v10;
      }

      sub_100045744("aborting purgeable cross checks - out of memory\n", v3, v4, v5, v6, v7, v8, v9, v34);
      sub_100049C40(0x5C4, 12);
      sub_10001E44C(&unk_10009A218);
      sub_10003B928(dword_10009A280, 0);
    }

    return 0;
  }

  v10 = v2;
  if (v2 == 17)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v10)
  {
    goto LABEL_10;
  }

  return v10;
}

uint64_t sub_100022CF0(uint64_t a1)
{
  v14 = 0;
  v12 = a1;
  v13 = 0;
  v1 = sub_10003B12C(dword_10009A280, 0, &v12, 8, &v13, 9u);
  v2 = v1;
  if (v1)
  {
    v3 = v12;
    strerror(v1);
    sub_10004565C("failed to insert purgeable (file_id %llu): %s (%d)\n", v4, v5, v6, v7, v8, v9, v10, v3);
    sub_100049C40(0x5C2, v2);
  }

  return v2;
}

uint64_t sub_100022D78(uint64_t a1, unint64_t a2)
{
  if (!sub_10001E4A8(&unk_10009A218))
  {
    return 0;
  }

  if (byte_10009A210 == 1)
  {
    v4 = sub_10001E8F4(&unk_10009A218, a2, 1uLL, 1);
    if (v4 == 17)
    {
      sub_10004565C("purgeable inode (id %llu) was unexpectedly registered twice\n", v5, v6, v7, v8, v9, v10, v11, a2);
      v12 = 92;
      sub_100049C40(0x5C7, 92);
LABEL_14:
      strerror(v12);
      sub_10004565C("failed to cross check purgeable inode: %d (%s)\n", v27, v28, v29, v30, v31, v32, v33, v12);
      sub_100049C40(0x5CC, v12);
      return v12;
    }

    v12 = v4;
    goto LABEL_10;
  }

  v13 = sub_10001EC40(&unk_10009A218, a2, 1uLL, 1);
  if (!v13)
  {
    v12 = sub_10001E8F4(&unk_10009A218, a2, 1uLL, 0);
    if (!v12)
    {
      return v12;
    }

    sub_10004565C("can't unmark purgeable (file_id %llu) for cross checks\n", v35, v36, v37, v38, v39, v40, v41, a2);
    sub_100049C40(0x5CA, 92);
    goto LABEL_11;
  }

  v12 = v13;
  if (v13 != 17)
  {
LABEL_10:
    if (v12)
    {
      goto LABEL_11;
    }

    return v12;
  }

  sub_100045744("purgeable inode (id %llu) is missing a purgeable record\n", v5, v6, v7, v8, v9, v10, v11, a2);
  sub_100049C40(0x5C8, -2);
  v19 = sub_100026C04((a1 + 768), a2, 0x80000, v14, v15, v16, v17, v18);
  v12 = v19;
  if (v19)
  {
    strerror(v19);
    sub_10004565C("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v20, v21, v22, v23, v24, v25, v26, a2);
    sub_100049C40(0x5C9, v12);
LABEL_11:
    if (v12 != 12)
    {
      goto LABEL_14;
    }

    sub_100045744("aborting purgeable cross checks - out of memory\n", v5, v6, v7, v8, v9, v10, v11, v42);
    sub_100049C40(0x5CB, 12);
    sub_10001E44C(&unk_10009A218);
    sub_10003B928(dword_10009A280, 0);
    return 0;
  }

  return v12;
}

uint64_t sub_100022F40(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = 0;
  memset(v44, 170, 17);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0;
  v40 = 0;
  v42 = 0;
  v41 = 0;
  sub_10001ED64(&unk_10009A218, sub_100023240, a3);
  v38 = 0;
  sub_10003B724(dword_10009A280, 0, &v38);
  if (v38)
  {
    v6 = malloc_type_calloc(1uLL, 0x340uLL, 0x30AFF060uLL);
    v7 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x37CBAB78uLL);
    v19 = sub_10003F8AC(a1, a2, 3, &v43, v8, v9, v10, v11);
    if (!v7 || !v6 || !v43)
    {
      sub_10004565C("unable to init fsroot tree to enque purgeable repairs\n", v12, v13, v14, v15, v16, v17, v18, v31);
      sub_100049C40(0x5D4, v19);
      goto LABEL_19;
    }

    v32 = a1;
    v33 = a2;
  }

  else
  {
    v32 = a1;
    v33 = a2;
    v7 = 0;
    v6 = 0;
  }

  v36 = 9;
  v37 = 8;
  if (!sub_100039CDC(dword_10009A280, 0, &v45, &v37, &v44[1], &v36))
  {
    while (1)
    {
      *v6 = v45 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      v44[0] = 0x800000EE0;
      v20 = sub_1000397B8(v43, 0, 0, v6, v44 + 1, 0x340u, v7, v44);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (v20 == 2)
      {
        goto LABEL_12;
      }

      v22 = v45;
      strerror(v20);
      sub_10004565C("unable to find inode (id %llu): %d (%s)\n", v23, v24, v25, v26, v27, v28, v29, v22);
      sub_100049C40(0x5D5, v21);
LABEL_14:
      v34 = 9;
      v35 = 8;
      if (sub_1000397B8(dword_10009A280, 0, 2u, &v45, &v35, 8u, &v44[1], &v34))
      {
        goto LABEL_15;
      }
    }

    v44[1] = *(v7 + 5);
    if ((*(v7 + 50) & 0x18) == 0)
    {
LABEL_12:
      LOBYTE(v44[2]) |= 1u;
    }

    sub_10003B12C(dword_10009A280, 0, &v45, 8, &v44[1], 9u);
    goto LABEL_14;
  }

LABEL_15:
  v38 = 0;
  sub_10003B724(dword_10009A280, 0, &v38);
  if (v38)
  {
    LODWORD(v40) = 16;
    v39 = 0xE000000000000007;
    v19 = sub_10003FA04(v32, v33, 0, 1, &v39, 28, sub_100023334, a3);
  }

  else
  {
    v19 = 0;
  }

LABEL_19:
  free(v6);
  free(v7);
  sub_10001E44C(&unk_10009A218);
  sub_10003B928(dword_10009A280, 0);
  return v19;
}

uint64_t sub_100023240(unint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 + a1 <= a1)
  {
    return 0;
  }

  v9 = a2;
  v10 = a1;
  do
  {
    if (byte_10009A210 == 1)
    {
      sub_100045744("purgeable inode (id %llu) is missing a purgeable record\n", a2, a3, a4, a5, a6, a7, a8, v10);
      sub_100049C40(0x5D2, -2);
      v16 = sub_100026C04(a3, v10, 0x80000, v11, v12, v13, v14, v15);
      v17 = v16;
      if (v16)
      {
        strerror(v16);
        sub_10004565C("inode (id %llu): unable to add repair to unmark purgeable: %d (%s)\n", v18, v19, v20, v21, v22, v23, v24, v10);
        sub_100049C40(0x5D3, v17);
      }
    }

    else
    {
      v17 = sub_100022CF0(v10);
      if (v17)
      {
        return v17;
      }
    }

    ++v10;
    --v9;
  }

  while (v9);
  return v17;
}

uint64_t sub_100023334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = -86;
  v59 = *(a1 + 20);
  v55 = 9;
  v56 = 8;
  v7 = sub_1000397B8(dword_10009A280, 0, 0, &v59, &v56, 8u, &v57, &v55);
  if (v7 == 2)
  {
    return 0;
  }

  v15 = v7;
  if (v7)
  {
    v17 = *(a1 + 20);
    strerror(v7);
    sub_10004565C("failed to search purgeable record (file id %llu) in the fsck_apfs tree: %d (%s)\n", v18, v19, v20, v21, v22, v23, v24, v17);
    v25 = 1489;
    goto LABEL_11;
  }

  if (v58)
  {
    v51 = *(a1 + 20);
    sub_100045744("found an orphan purgeable record (atime %llu, file_id %llu)\n", v8, v9, v10, v11, v12, v13, v14, *(a1 + 12));
    sub_100049C40(0x5CD, -2);
    v15 = sub_1000234CC(a5, *(a1 + 20), *(a1 + 12), v26, v27, v28, v29, v30);
    if (!v15)
    {
      return v15;
    }

    v52 = *(a1 + 12);
    sub_10004565C("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", v31, v32, v33, v34, v35, v36, v37, *(a1 + 20));
    v25 = 1486;
LABEL_11:
    sub_100049C40(v25, v15);
    return v15;
  }

  v16 = *(a1 + 12);
  if (v57 != v16)
  {
    v53 = *(a1 + 20);
    sub_100045744("purgeable record (atime %llu, file_id %llu) is different than inode atime (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v16);
    sub_100049C40(0x5CF, -2);
    v15 = sub_1000234CC(a5, *(a1 + 20), *(a1 + 12), v38, v39, v40, v41, v42);
    if (!v15)
    {
      return v15;
    }

    v54 = *(a1 + 12);
    sub_10004565C("failed to enqueue purgeable record (file id %llu, atime %llu) for remove\n", v43, v44, v45, v46, v47, v48, v49, *(a1 + 20));
    v25 = 1488;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1000234CC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0xE000000000000007;
  v10 = 16;
  v11 = a3;
  v12 = a2;
  if (a1)
  {
    return sub_100027D7C(a1, 7, 0, 0, 0, &v9, 0x1Cu, 0, 0);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100023544(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = *(v6 + 104);
  v8 = *(v6 + 96);
  v27 = 0;
  *v28 = v7;
  *&v28[4] = *(v6 + 72);
  v29 = *(v6 + 80);
  v30 = v8;
  v31 = 0;
  v9 = sub_1000236D8(a1, a2, &v27, a3);
  if (v9)
  {
    return v9;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  while (2)
  {
    if (v12)
    {
      free(v12);
      v31 = 0;
    }

    memset(v26, 170, sizeof(v26));
    v13 = sub_100025548(a1, 0, 0x80000000, v11, 0, 0, 18, 0, &v31, v26, 0);
    if (!v13)
    {
      v12 = v31;
      for (i = *(v31 + 13); i != -1; i = *(v31 + 10 * i + 16))
      {
        v15 = &v12[5 * i];
        v16 = *(v15 + 19);
        v17 = v15[12];
        v27 = 0;
        *v28 = *(v15 + 68);
        *&v28[8] = v16;
        v29 = *(v15 + 5);
        v30 = v17;
        v18 = sub_1000236D8(a1, a2, &v27, a3);
        if (v18)
        {
          v9 = v18;
          goto LABEL_15;
        }

        v12 = v31;
      }

      v11 = v12[4];
      if (v11)
      {
        continue;
      }

      v9 = 0;
      goto LABEL_16;
    }

    break;
  }

  v9 = v13;
  strerror(v13);
  sub_10004565C("Could not read nx_reaper_list object (oid (0x%llx)): %s\n", v19, v20, v21, v22, v23, v24, v25, v11);
LABEL_15:
  v12 = v31;
  if (v31)
  {
LABEL_16:
    free(v12);
  }

  return v9;
}

uint64_t sub_1000236D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = 0;
  memset(v37, 170, sizeof(v37));
  v9 = *(a3 + 4);
  v8 = *(a3 + 8);
  if ((v9 & 0x10) == 0 || v8 != 11)
  {
    goto LABEL_12;
  }

  v10 = *(a3 + 16);
  if (!byte_10009B0F8[0])
  {
    v15 = 0;
LABEL_11:
    ++byte_10009B0F8[0];
    *&byte_10009B0F8[8 * v15 + 8] = v10;
    goto LABEL_12;
  }

  if (qword_10009B100 != v10)
  {
    v11 = &qword_10009B108;
    v12 = 1;
    do
    {
      v13 = v12;
      if (byte_10009B0F8[0] == v12)
      {
        break;
      }

      v14 = *v11++;
      ++v12;
    }

    while (v14 != v10);
    v15 = byte_10009B0F8[0];
    if (v13 >= byte_10009B0F8[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v16 = *(a3 + 24);
  if ((v9 & 0x1A) != 0 || v16 == 0)
  {
    goto LABEL_17;
  }

  v20 = v8 & 0xC0000000;
  if (a4 == 1)
  {
    if (v20)
    {
      goto LABEL_17;
    }

    v22 = a2 ? *(*(a2 + 40) + 8) : 0;
    if (v22 != *(a3 + 16))
    {
      goto LABEL_17;
    }

    v21 = (v8 & 0xFFFE) == 2;
  }

  else
  {
    v21 = 1;
    if (!a4 && !v20 && v8 != 13)
    {
      goto LABEL_17;
    }
  }

  v23 = sub_100025548(a1, a2, v8 & 0xC0000000, v16, 0, v8 & 0x3FFF0000, v8, 0, &v38, v37, 0);
  if (v23)
  {
    v18 = v23;
    sub_10004565C("failed to read object (oid (0x%llx)) being reaped from disk \n", v24, v25, v26, v27, v28, v29, v30, *(a3 + 24));
    sub_100049C40(0x22A, v18);
    goto LABEL_18;
  }

  if (v21)
  {
    v31 = *(v38 + 12);
    if (v31 > 0xC)
    {
      if (v31 == 13)
      {
        v36 = *(a3 + 16);
        v41 = *a3;
        v42 = v36;
        v43 = *(a3 + 32);
        v33 = sub_100024580(a1, &v41, v38);
LABEL_44:
        v18 = v33;
        if (v33)
        {
          goto LABEL_18;
        }

        goto LABEL_45;
      }

      if (v31 == 25)
      {
        v34 = *(a3 + 16);
        v41 = *a3;
        v42 = v34;
        v43 = *(a3 + 32);
        v33 = sub_100024854(a1, &v41, v38);
        goto LABEL_44;
      }
    }

    else
    {
      if (v31 - 2 < 2)
      {
        v32 = *(a3 + 16);
        v41 = *a3;
        v42 = v32;
        v43 = *(a3 + 32);
        v39 = *v37;
        v40 = *&v37[16];
        v33 = sub_1000240B8(a1, a2, &v41, v38, &v39, a4, v29, v30);
        goto LABEL_44;
      }

      if (v31 == 11)
      {
        v35 = *(a3 + 16);
        v41 = *a3;
        v42 = v35;
        v43 = *(a3 + 32);
        v33 = sub_100024370(a1, &v41, v38);
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  if (v20 == 0x40000000)
  {
    sub_1000422DC(a1, *v37, (*&v37[8] / *(a1[1] + 36)), *(a3 + 16), 0x40000000, *(a3 + 24), 0, *(v38 + 12), *(v38 + 7), 5u);
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  if (a4 == 1 && !v20)
  {
    sub_10001DD4C(*(a3 + 24), *(a3 + 8));
    goto LABEL_17;
  }

LABEL_18:
  if (v38)
  {
    free(v38);
  }

  return v18;
}

uint64_t sub_1000239E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = 0;
  memset(v62, 170, sizeof(v62));
  v8 = a1[2];
  if (*(v8 + 40) >= *(v8 + 32))
  {
    sub_10004565C("reaper completed ID 0x%llx not less than next reap ID 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 40));
    v9 = 92;
    v10 = 96;
    goto LABEL_5;
  }

  if ((*(v8 + 64) & 1) == 0)
  {
    sub_10004565C("reaper needs more cowbell, flags 0x%x\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 64));
    v9 = 92;
    v10 = 97;
    goto LABEL_5;
  }

  v12 = *(v8 + 48);
  if ((v12 == 0) == (*(v8 + 56) != 0))
  {
    sub_10004565C("reaper head (0x%llx) and tail (0x%llx) should be both valid or both invalid\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 48));
    v9 = 92;
    v10 = 98;
    goto LABEL_5;
  }

  if (!v12)
  {
LABEL_65:
    v9 = sub_100023544(a1, 0, 0);
    goto LABEL_6;
  }

  v14 = 0;
  v15 = *(v8 + 68);
  while (1)
  {
    if (v14)
    {
      free(v14);
    }

    v16 = sub_100025548(a1, 0, 0x80000000, v12, 0, 0, 18, 0, &v61, v62, 0);
    if (v16)
    {
      v9 = v16;
      sub_10004565C("verification/reading of the nx_reaper object failed\n", v17, v18, v19, v20, v21, v22, v23, v60);
      goto LABEL_6;
    }

    v24 = *(v61 + 11);
    if ((LODWORD(v62[1]) - 64) / 0x28 != v24)
    {
      v54 = *(v61 + 11);
      sub_10004565C("reap list object 0x%llx max record count %u different than expected %lu\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 642;
      goto LABEL_5;
    }

    if (*(v61 + 12) > v24)
    {
      v55 = *(v61 + 12);
      sub_10004565C("reap list object 0x%llx record count %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 99;
      goto LABEL_5;
    }

    v25 = *(v61 + 13);
    if (v25 != -1 && v25 > v24)
    {
      v56 = *(v61 + 13);
      sub_10004565C("reap list object 0x%llx first index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 100;
      goto LABEL_5;
    }

    v27 = *(v61 + 14);
    if (v27 != -1 && v27 > v24)
    {
      v57 = *(v61 + 13);
      sub_10004565C("reap list object 0x%llx last index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 101;
      goto LABEL_5;
    }

    v29 = *(v61 + 15);
    if (v29 != -1 && v29 > v24)
    {
      v58 = *(v61 + 15);
      sub_10004565C("reap list object 0x%llx free index %u larger than max %u\n", v17, v18, v19, v20, v21, v22, v23, v12);
      v9 = 92;
      v10 = 102;
      goto LABEL_5;
    }

    v31 = v61[4];
    v32 = *(v8 + 56);
    if (v31)
    {
      if (v32 == v12)
      {
        sub_10004565C("reap list tail 0x%llx is not last reap list object, next 0x%llx\n", v17, v18, v19, v20, v21, v22, v23, v12);
        v9 = 92;
        v10 = 104;
        goto LABEL_5;
      }

      goto LABEL_33;
    }

    if (v32 != v12)
    {
      break;
    }

LABEL_33:
    if (*(v8 + 68))
    {
      --v15;
      if (v31 && !v15)
      {
        sub_10004565C("reap list expected %u objects, but haven't seen last reap list object yet\n", v17, v18, v19, v20, v21, v22, v23, *(v8 + 68));
        v9 = 92;
        v10 = 105;
        goto LABEL_5;
      }

      if (!v31 && v15)
      {
        sub_10004565C("reap list expected %u objects, but got last reap list object with %u more objects left\n", v17, v18, v19, v20, v21, v22, v23, *(v8 + 68));
        v9 = 92;
        v10 = 106;
        goto LABEL_5;
      }
    }

    v60 = &v60;
    v33 = 2 * v24;
    __chkstk_darwin(v16);
    v34 = &v60 - ((v33 + 15) & 0x3FFFFFFF0);
    if (v35)
    {
      memset(&v60 - ((v33 + 15) & 0x3FFFFFFF0), 170, v33);
    }

    else
    {
      v33 = 0;
    }

    bzero(v34, v33);
    v43 = v61;
    v44 = *(v61 + 13);
    if (v44 != -1)
    {
      v45 = 0;
      while (1)
      {
        if (v44 >= *(v43 + 11))
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v36, v37, v38, v39, v40, v41, v42, v44);
          v52 = 556;
          goto LABEL_75;
        }

        if (*&v34[2 * v44] == 1)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v36, v37, v38, v39, v40, v41, v42, v44);
          v52 = 643;
          goto LABEL_75;
        }

        *&v34[2 * v44] = 1;
        if (HIDWORD(v43[5 * v44 + 8]) >= 0x20)
        {
          sub_100045744("reaper list entry (index (%u) list oid (0x%llx)) : invalid flags (0x%x) set\n", v36, v37, v38, v39, v40, v41, v42, v44);
          sub_100049C40(0x22D, -3);
          v43 = v61;
        }

        v46 = &v43[5 * v44];
        if ((*(v46 + 17) & 1) == 0)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : is not valid as per flags(0x%x)\n", v36, v37, v38, v39, v40, v41, v42, v44);
          v52 = 572;
          goto LABEL_75;
        }

        if ((v46[10] - 1) <= 0x3FE)
        {
          break;
        }

        ++v45;
        v44 = *(v46 + 16);
        if (v44 == -1)
        {
          goto LABEL_52;
        }
      }

      sub_100045744("reaper list entry (index (%u) list oid (0x%llx)) : invalid nrle_fs_oid (0x%llx)\n", v36, v37, v38, v39, v40, v41, v42, v44);
      v52 = 558;
      v53 = -2;
      goto LABEL_76;
    }

    v45 = 0;
LABEL_52:
    if (v45 != *(v43 + 12))
    {
      v59 = *(v43 + 12);
      sub_10004565C("reap list object (oid 0x%llx) expected %u entries, found %u\n", v36, v37, v38, v39, v40, v41, v42, v12);
      v52 = 644;
      goto LABEL_75;
    }

    v47 = *(v43 + 15);
    v48 = *(v43 + 11);
    if (v47 != -1)
    {
      v49 = v43 + 8;
      while (1)
      {
        if (v47 >= v48)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : index not less than nrl_max (%u)\n", v36, v37, v38, v39, v40, v41, v42, v47);
          v52 = 645;
          goto LABEL_75;
        }

        v50 = *&v34[2 * v47];
        if (v50 == 2)
        {
          break;
        }

        if (v50 == 1)
        {
          sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : entry is both occupied and free!\n", v36, v37, v38, v39, v40, v41, v42, v47);
          v52 = 646;
          goto LABEL_75;
        }

        *&v34[2 * v47] = 2;
        v47 = v49[5 * v47];
        if (v47 == -1)
        {
          goto LABEL_61;
        }
      }

      sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : cycle detected\n", v36, v37, v38, v39, v40, v41, v42, v47);
      v52 = 647;
LABEL_75:
      v53 = 92;
LABEL_76:
      sub_100049C40(v52, v53);
      v9 = 92;
      goto LABEL_6;
    }

    if (v48)
    {
LABEL_61:
      v51 = 0;
      while (*&v34[2 * v51])
      {
        if (v48 == ++v51)
        {
          goto LABEL_64;
        }
      }

      sub_10004565C("reaper list entry (index (%u) list oid (0x%llx)) : entry is not referenced\n", v36, v37, v38, v39, v40, v41, v42, v51);
      v52 = 648;
      goto LABEL_75;
    }

LABEL_64:
    v14 = v61;
    v12 = v61[4];
    if (!v12)
    {
      goto LABEL_65;
    }
  }

  sub_10004565C("last reap list object 0x%llx doesn't match tail 0x%llx\n", v17, v18, v19, v20, v21, v22, v23, v12);
  v9 = 92;
  v10 = 103;
LABEL_5:
  sub_100049C40(v10, 92);
LABEL_6:
  if (v61)
  {
    free(v61);
  }

  return v9;
}

BOOL sub_100024058(uint64_t a1)
{
  if (!byte_10009B0F8)
  {
    return 0;
  }

  if (qword_10009B100 == a1)
  {
    return 1;
  }

  v2 = &qword_10009B108;
  v3 = 1;
  do
  {
    v4 = v3;
    if (byte_10009B0F8 == v3)
    {
      break;
    }

    v5 = *v2++;
    ++v3;
  }

  while (v5 != a1);
  return v4 < byte_10009B0F8;
}

uint64_t sub_1000240B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v51 = 0;
  v52 = 0;
  v8 = *(a4 + 32);
  if ((v8 & 2) != 0)
  {
    return 0;
  }

  v10 = *(a3 + 24);
  if ((v8 & 8) == 0)
  {
    v46 = *(*(a1 + 8) + 36);
    v15 = *(a3 + 8);
    if (v8)
    {
      v21 = a4 + *(a5 + 8);
      v22 = *(v21 - 24);
      v53 = *(v21 - 40);
      v54 = v22;
      *&v55 = *(v21 - 8);
    }

    else
    {
      v16 = *(a4 + 28);
      if (v16 > 0x24 || ((0x87BF631FFuLL >> v16) & 1) != 0)
      {
        v44 = *(a4 + 28);
        sub_100045744("object (oid (0%llx)) being reaped : Invalid tree subtype (%u)\n", a2, a3, a4, a5, a6, a7, a8, v10);
        sub_100049C40(0x233, -5);
        return 22;
      }

      if ((0x100001C000uLL >> v16))
      {
        v17 = 0;
      }

      else
      {
        v17 = dword_100076DC0[v16];
      }

      DWORD1(v53) = *(*(a1 + 8) + 36);
      DWORD2(v53) = v17;
    }

    if (*(a4 + 36))
    {
      v23 = 0;
      v24 = v15 & 0xC0000000;
      v50 = -21846;
      v49 = -21846;
      v25 = v15 & 0xC0000000 | 3;
      v27 = a6 == 1 && v24 == 0;
      v45 = v27;
      while (1)
      {
        sub_10003452C(a4, &v53, v23, &v52, &v50, &v51, &v49);
        if (v49 != 8)
        {
          break;
        }

        v35 = *v51;
        *(a3 + 24) = *v51;
        *(a3 + 8) = v25;
        if (*(a4 + 34) < 2u)
        {
          if (v24 == 0x40000000)
          {
            v38 = DWORD1(v53) / v46;
            v39 = *(*(a1 + 8) + 40);
            if (v39 <= v38 || v35 < 1 || v39 <= v35 || v39 - v38 < v35)
            {
              sub_10004565C("invalid btree node address range (0x%llx+%llu)\n", v35, v38, v30, v31, v32, v33, v34, v35);
              v18 = 92;
              v19 = 1238;
              goto LABEL_45;
            }

            sub_1000422DC(a1, v35, v38, *(a3 + 16), 0x40000000, v35, 0, 3, *(a4 + 28), 5u);
          }

          else if (v45)
          {
            sub_10001DD4C(v35, v24 | 3);
          }
        }

        else
        {
          v36 = *(a3 + 16);
          v47[0] = *a3;
          v47[1] = v36;
          v48 = *(a3 + 32);
          v37 = sub_1000236D8(a1, a2, v47, a6);
          if (v37)
          {
            return v37;
          }
        }

        if (++v23 >= *(a4 + 36))
        {
          return 0;
        }
      }

      sub_10004565C("btree node (oid (0%llx)) being reaped has invalid val_len (%u) at index (%d) \n", v28, v29, v30, v31, v32, v33, v34, v10);
      v18 = 92;
      v19 = 559;
LABEL_45:
      v20 = 92;
      goto LABEL_11;
    }

    return 0;
  }

  sub_10004565C("btree node (oid (0%llx)) being reaped is hashed\n", a2, a3, a4, a5, a6, a7, a8, *(a3 + 24));
  v18 = 22;
  v19 = 916;
  v20 = 22;
LABEL_11:
  sub_100049C40(v19, v20);
  return v18;
}

uint64_t sub_100024370(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[2] = v6;
  v43[3] = v6;
  v43[0] = v6;
  v43[1] = v6;
  v41[2] = v6;
  v41[3] = v6;
  v41[0] = v6;
  v41[1] = v6;
  v7 = a2[1];
  v37 = *a2;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  memset(v40, 170, sizeof(v40));
  v36[1] = 0;
  v36[2] = 0;
  v36[0] = a1;
  v38 = v7;
  v39 = *(a2 + 4);
  if (!*(a3 + 48))
  {
    goto LABEL_9;
  }

  v8 = sub_100039748(v43, a1, 0, *(a3 + 40) & 0xC0000000, *(a3 + 40), 11, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a3 + 48), sub_10001F078);
  if (!v8)
  {
    v40[2] = 0;
    v40[3] = 0;
    v19 = sub_100039F68(v41, v43, 0, &v40[2], 0x10u, 0x10u, v40, 16);
    if (v19 || (v19 = sub_10002C648(v41, sub_100024A10, v36, 0), v19))
    {
      v9 = v19;
      v20 = *(a3 + 48);
      strerror(v19);
      sub_10004565C("Could not iterate omap tree to read reaper objects (oid 0x%llx): %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v18 = 567;
      goto LABEL_7;
    }

    *(a2 + 2) = *(a3 + 40);
    *(a2 + 3) = *(*(a1 + 8) + 36);
    *(a2 + 3) = *(a3 + 48);
    *(a2 + 4) = 0;
    v28 = a2[1];
    v33 = *a2;
    v34 = v28;
    v35 = 0;
    v29 = sub_1000236D8(a1, 0, &v33, 0);
    if (v29)
    {
      return v29;
    }

LABEL_9:
    v30 = *(a3 + 56);
    if (!v30)
    {
      return 0;
    }

    *(a2 + 2) = *(a3 + 44);
    *(a2 + 3) = *(*(a1 + 8) + 36);
    *(a2 + 3) = v30;
    *(a2 + 4) = 0;
    v31 = a2[1];
    v33 = *a2;
    v34 = v31;
    v35 = 0;
    v29 = sub_1000236D8(a1, 0, &v33, 0);
    if (!v29)
    {
      return 0;
    }

    return v29;
  }

  v9 = v8;
  v10 = *(a3 + 48);
  strerror(v8);
  sub_10004565C("Could not initialize omap tree (oid 0x%llx): %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
  v18 = 566;
LABEL_7:
  sub_100049C40(v18, v9);
  return v9;
}

uint64_t sub_100024580(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  bzero(v39, 0x400uLL);
  v40 = a3;
  v6 = *(a3 + 152);
  if (!v6)
  {
LABEL_16:
    v31 = *(a3 + 144);
    v32 = *(a3 + 120);
    v33 = *(a2 + 1);
    v49 = *a2;
    v50 = v33;
    *&v51 = a2[4];
    v10 = sub_100024AF4(a1, v39, &v49, 0, v31, v32);
    if (!v10)
    {
      *(a2 + 2) = 1073741835;
      *(a2 + 3) = *(*(a1 + 8) + 36);
      a2[3] = *(a3 + 128);
      a2[4] = 0;
      v34 = *(a2 + 1);
      v49 = *a2;
      v50 = v34;
      *&v51 = 0;
      return sub_1000236D8(a1, 0, &v49, 0);
    }

    return v10;
  }

  v7 = *a2;
  v8 = a2[2];
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[2] = v9;
  v54[3] = v9;
  v54[0] = v9;
  v54[1] = v9;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v51 = v9;
  v52 = v9;
  v49 = v9;
  v50 = v9;
  v47[0] = a1;
  v47[1] = v39;
  v47[2] = 0;
  v47[3] = v7;
  v47[4] = a2[1];
  v47[5] = v8;
  v48 = *(a2 + 3);
  LODWORD(v10) = sub_100039748(v54, a1, v39, *(a3 + 124) & 0xC0000000, *(a3 + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, v6, sub_10003F384);
  v11 = malloc_type_calloc(1uLL, 0x340uLL, 0xC893D30DuLL);
  v12 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xE7670BF5uLL);
  v13 = v12;
  if (!v10 && v11 && v12)
  {
    v14 = sub_100039F68(&v49, v54, 0, v11, 8u, 0x340u, v12, 3808);
    if (v14 || (v14 = sub_10002C648(&v49, sub_100024C90, v47, 0), v14))
    {
      v10 = v14;
      v15 = *(v40 + 152);
      strerror(v14);
      sub_10004565C("Could not iterate snap meta tree to read reaper objects (oid 0x%llx): %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
      sub_100049C40(0x23A, v10);
    }

    else
    {
      v36 = *(v40 + 124);
      v37 = *(*(a1 + 8) + 36);
      v38 = *(v40 + 152);
      v41 = v7;
      v42 = v36;
      v43 = v37;
      v44 = v8;
      v45 = v38;
      v46 = 0;
      v10 = sub_1000236D8(a1, 0, &v41, 0);
    }

LABEL_12:
    free(v11);
    goto LABEL_13;
  }

  if (v10)
  {
    v10 = v10;
  }

  else
  {
    v10 = 12;
  }

  v23 = *(v40 + 152);
  strerror(v10);
  sub_10004565C("Could not initialize snap meta tree (oid 0x%llx): %s\n", v24, v25, v26, v27, v28, v29, v30, v23);
  sub_100049C40(0x239, v10);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v13)
  {
    free(v13);
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  return v10;
}

uint64_t sub_100024854(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[1];
  v34 = *a2;
  v37 = 0;
  v38 = 0;
  v33[1] = 0;
  v33[2] = 0;
  v33[0] = a1;
  v35 = v3;
  v36 = *(a2 + 4);
  if ((*(a3 + 27) & 0x40) != 0)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41[2] = v8;
    v41[3] = v8;
    v41[0] = v8;
    v41[1] = v8;
    v39[2] = v8;
    v39[3] = v8;
    v40 = 0xAAAAAAAAAAAAAAAALL;
    v39[0] = v8;
    v39[1] = v8;
    v9 = sub_100039748(v41, a1, 0, 0x40000000, 2, 26, 0, *(*(a1 + 8) + 36), 8, 8, 0, *(a3 + 32), sub_100030C88);
    if (v9)
    {
      v4 = v9;
      v10 = *(a3 + 32);
      strerror(v9);
      sub_10004565C("Could not initialize gbitmap tree (oid 0x%llx): %s\n", v11, v12, v13, v14, v15, v16, v17, v10);
      v18 = 553;
    }

    else
    {
      v19 = sub_100039F68(v39, v41, 0, &v38, 8u, 8u, &v37, 8);
      if (!v19)
      {
        v19 = sub_10002C648(v39, sub_100024E40, v33, 0);
        if (!v19)
        {
          v29 = *(*(a1 + 8) + 36);
          *(a2 + 2) = 0x40000000;
          *(a2 + 3) = v29;
          *(a2 + 3) = *(a3 + 32);
          v30 = a2[1];
          v31[0] = *a2;
          v31[1] = v30;
          v32 = *(a2 + 4);
          v4 = sub_1000236D8(a1, 0, v31, 0);
          if (v4)
          {
            return v4;
          }

          return 0;
        }
      }

      v4 = v19;
      v20 = *(a3 + 32);
      strerror(v19);
      sub_10004565C("Could not iterate gbitmap tree to read reaper objects (oid 0x%llx): %s\n", v21, v22, v23, v24, v25, v26, v27, v20);
      v18 = 571;
    }

    sub_100049C40(v18, v4);
    return v4;
  }

  return 0;
}

uint64_t sub_100024A10(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3)
  {
    return 0;
  }

  v10 = *(*a5 + 8);
  v11 = (*(v10 + 36) + a3[1] - 1) / *(v10 + 36);
  v12 = *(a3 + 1);
  v13 = *(v10 + 40);
  if (v13 - v11 >= v12 && v13 > v11 && v12 >= 1 && v13 > v12)
  {
    if ((v8 & 0xE0) == 0x20)
    {
      v17 = 36;
    }

    else
    {
      v17 = 14;
    }

    v18 = a5[5];
    if (v18)
    {
      v19 = 3;
    }

    else
    {
      v19 = 13;
    }

    if (v18)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

    sub_1000422DC(*a5, v12, v11, v18, 0, *a1, a1[1], v19, v20, 5u);
    return 0;
  }

  sub_10004565C("omap entry (oid 0x%llx): invalid ov_range (0x%llx+%llu)\n", v12, v11, a4, a5, a6, a7, a8, *a1);
  v21 = 92;
  sub_100049C40(0x4D7, 92);
  return v21;
}

uint64_t sub_100024AF4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, int a6)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43[2] = v10;
  v43[3] = v10;
  v43[0] = v10;
  v43[1] = v10;
  v41[2] = v10;
  v41[3] = v10;
  v41[0] = v10;
  v41[1] = v10;
  v11 = a3[1];
  v36 = *a3;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  memset(v39, 170, 20);
  v35[0] = a1;
  v35[1] = a2;
  v35[2] = a4;
  v37 = v11;
  v38 = *(a3 + 4);
  v12 = sub_100039748(v43, a1, a2, a6 & 0xC0000000, a6, 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, a5, sub_10003F384);
  if (v12)
  {
    v13 = v12;
    strerror(v12);
    sub_10004565C("Could not initialize extentref tree (oid 0x%llx): %s\n", v14, v15, v16, v17, v18, v19, v20, a5);
    v21 = 548;
  }

  else
  {
    v40 = 0;
    v22 = sub_100039F68(v41, v43, 0, &v40, 8u, 0x340u, v39, 20);
    if (!v22)
    {
      v22 = sub_10002C648(v41, sub_100024D88, v35, 0);
      if (!v22)
      {
        v31 = *(*(a1 + 8) + 36);
        *(a3 + 2) = a6;
        *(a3 + 3) = v31;
        *(a3 + 3) = a5;
        *(a3 + 4) = 0;
        v32 = a3[1];
        v33[0] = *a3;
        v33[1] = v32;
        v34 = 0;
        return sub_1000236D8(a1, 0, v33, 0);
      }
    }

    v13 = v22;
    strerror(v22);
    sub_10004565C("Could not iterate extentref tree to read reaper objects(oid 0x%llx): %s\n", v23, v24, v25, v26, v27, v28, v29, a5);
    v21 = 568;
  }

  sub_100049C40(v21, v13);
  return v13;
}

uint64_t sub_100024C90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a5;
  v10 = *(a5 + 8);
  v11 = *a3;
  v12 = *(a3 + 40);
  v13 = *(a5 + 40);
  v27[0] = *(a5 + 24);
  v27[1] = v13;
  v28 = *(a5 + 56);
  v20 = sub_100024AF4(v9, v10, v27, v5 & 0xFFFFFFFFFFFFFFFLL, v11, v12);
  if (!v20)
  {
    v21 = *(a3 + 8);
    v22 = *(*(*a5 + 8) + 40);
    if (v22 - 1 < v21 || v22 < 2 || v21 < 1 || v22 <= v21)
    {
      sub_10004565C("invalid sblock_oid (%llu)\n", v21, v14, v15, v16, v17, v18, v19, *(a3 + 8));
      v20 = 92;
      sub_100049C40(0x4D9, 92);
      return v20;
    }

    sub_1000422DC(*a5, v21, 1, *(a5 + 40), 0x40000000, v21, *a1 & 0xFFFFFFFFFFFFFFFLL, 13, 0, 5u);
    return 0;
  }

  return v20;
}

uint64_t sub_100024D88(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3;
  if (*a3 >> 60 != 1)
  {
    return 0;
  }

  v9 = *a1 & 0xFFFFFFFFFFFFFFFLL;
  v10 = v8 & 0xFFFFFFFFFFFFFFFLL;
  v11 = *(*(*a5 + 8) + 40);
  if (v11 - (v8 & 0xFFFFFFFFFFFFFFFLL) >= v9 && v11 > v10 && v9 != 0 && v11 > v9)
  {
    sub_1000422DC(*a5, v9, v10, *(a5 + 40), 0x40000000, v9, *(a5 + 16), 0, 0xFu, 6u);
    return 0;
  }

  sub_10004565C("invalid extent address range (0x%llx+%llu)\n", *a1 & 0xFFFFFFFFFFFFFFFLL, v10, a4, a5, a6, a7, a8, *a1);
  v15 = 92;
  sub_100049C40(0x4D8, 92);
  return v15;
}

uint64_t sub_100024E40(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a3 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(*(*a5 + 8) + 40);
  if (v9 - 1 >= v8 && v9 >= 2)
  {
    v11 = v8 == 0;
    *a3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11 && v9 > v8)
  {
    sub_1000422DC(*a5, v8, 1, *(a5 + 40), 0x40000000, v8, 0, 27, 0, 5u);
    return 0;
  }

  else
  {
    sub_10004565C("invalid gbitmap block oid 0x%llx\n", v8, a3, a4, a5, a6, a7, a8, *a3);
    v13 = 92;
    sub_100049C40(0x4DA, 92);
  }

  return v13;
}

uint64_t sub_100024EE0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = a4;
  v13 = *(a1[1] + 36);
  v104 = 0uLL;
  v105 = 0;
  if (a3 == 0x80000000)
  {
    v14 = sub_100031300(a1, a4, a6, a7, &v104);
    if (v14)
    {
      v15 = v14;
      sub_100025298(a7, a8);
      strerror(v15);
      sub_10004565C("(oid 0x%llx) %s: _xp_lookup_obj(0x%llx): %s\n", v16, v17, v18, v19, v20, v21, v22, v11);
      v23 = 341;
LABEL_10:
      v33 = v15;
LABEL_44:
      sub_100049C40(v23, v33);
      return v15;
    }

LABEL_40:
    if (DWORD2(v104) && (v84 = DWORD2(v104) / v13, !(DWORD2(v104) % v13)))
    {
      v93 = *(a1[1] + 40);
      if (v93 - v84 >= v104 && v93 > v84 && v104 >= 1 && v93 > v104)
      {
        v15 = 0;
        *a9 = v104;
        *(a9 + 16) = v105;
        return v15;
      }

      sub_100025298(a7, a8);
      sub_10004565C("(oid 0x%llx) %s: invalid object address (0x%llx)\n", v97, v98, v99, v100, v101, v102, v103, v11);
      v15 = 92;
      v23 = 346;
    }

    else
    {
      sub_100025298(a7, a8);
      sub_10004565C("(oid 0x%llx) %s: invalid object size (0x%x)\n", v85, v86, v87, v88, v89, v90, v91, v11);
      v15 = 92;
      v23 = 345;
    }

    v33 = 92;
    goto LABEL_44;
  }

  if (a3 == 0x40000000)
  {
    *&v104 = a4;
    DWORD2(v104) = v13;
    goto LABEL_40;
  }

  v25 = sub_10001F0D4(a1, a2, a4, a5, &v104);
  if (!v25)
  {
    v34 = WORD6(v104);
    if (HIDWORD(v104) >= 0x800)
    {
      sub_100025298(a7, a8);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x)\n", v35, v36, v37, v38, v39, v40, v41, v11);
      sub_100049C40(0x1DF, -3);
      v34 = WORD6(v104);
    }

    if ((v34 & 4) == 0 && (v34 & 0xE0) != 0)
    {
      sub_100025298(a7, a8);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x), crypto key index set for unencrypted object\n", v42, v43, v44, v45, v46, v47, v48, v11);
      sub_100049C40(0x481, -3);
      v34 = WORD6(v104);
    }

    if ((v34 & 4) == 0 && (v34 & 0x700) != 0)
    {
      sub_100025298(a7, a8);
      sub_100045744("(oid 0x%llx) %s: invalid ov_flags (0x%x), tweak type set for unencrypted object\n", v49, v50, v51, v52, v53, v54, v55, v11);
      sub_100049C40(0x4D0, -3);
    }

    if (!a2)
    {
      if ((BYTE12(v104) & 4) == 0)
      {
        goto LABEL_40;
      }

      sub_100025298(a7, a8);
      sub_100045744("(oid 0x%llx) %s: invalid encryption type ov_flags (0x%x)\n", v60, v61, v62, v63, v64, v65, v66, v11);
      v67 = 480;
      goto LABEL_39;
    }

    v56 = *(a2 + 40);
    v57 = *(v56 + 264);
    if ((BYTE12(v104) & 4) != 0)
    {
      if ((v57 & 1) != 0 && !*(v56 + 976))
      {
        v58 = 854;
        v59 = "(oid 0x%llx) %s: should not be encrypted (ov_flags 0x%x)\n";
        goto LABEL_29;
      }
    }

    else if ((v57 & 1) == 0 && !*(v56 + 976))
    {
      v58 = 855;
      v59 = "(oid 0x%llx) %s: should be encrypted (ov_flags 0x%x)\n";
LABEL_29:
      sub_100025298(a7, a8);
      sub_100045744(v59, v68, v69, v70, v71, v72, v73, v74, v11);
      sub_100049C40(v58, -3);
    }

    if ((BYTE12(v104) & 4) == 0)
    {
      goto LABEL_40;
    }

    v75 = (a8 & 0xFFFFFFFE) != 0x24 || *(*(a2 + 40) + 1096) == 0;
    v76 = !v75;
    if (BYTE12(v104) >> 5 == v76)
    {
      goto LABEL_40;
    }

    sub_100025298(a7, a8);
    sub_100045744("(oid 0x%llx) %s: invalid crypto key index (%u) given obj_subtype\n", v77, v78, v79, v80, v81, v82, v83, v11);
    v67 = 1201;
LABEL_39:
    sub_100049C40(v67, -3);
    goto LABEL_40;
  }

  v15 = v25;
  if (a7 != 29 || v25 != 2)
  {
    sub_100025298(a7, a8);
    strerror(v15);
    sub_10004565C("(oid 0x%llx) %s: _omap_lookup_obj(0x%llx, 0x%llx): %s\n", v26, v27, v28, v29, v30, v31, v32, v11);
    v23 = 344;
    goto LABEL_10;
  }

  return v15;
}

const char *sub_100025298(int a1, int a2)
{
  v2 = "nx";
  switch(a1)
  {
    case 1:
      return v2;
    case 2:
    case 3:
      if (a2 > 18)
      {
        if (a2 <= 32)
        {
          if (a2 == 19)
          {
            v3 = "oms: ";
            goto LABEL_42;
          }

          if (a2 == 26)
          {
            v3 = "gbitmap: ";
            goto LABEL_42;
          }
        }

        else
        {
          switch(a2)
          {
            case '!':
              v3 = "evict_mapping_tree: ";
              goto LABEL_42;
            case '$':
              v3 = "apfs_sec_root: ";
              goto LABEL_42;
            case '%':
              v3 = "clonegroup_tree: ";
              goto LABEL_42;
          }
        }
      }

      else if (a2 <= 13)
      {
        if (a2 == 10)
        {
          v3 = "extent_list: ";
          goto LABEL_42;
        }

        if (a2 == 11)
        {
          v3 = "om: ";
          goto LABEL_42;
        }
      }

      else
      {
        switch(a2)
        {
          case 14:
            v3 = "apfs_root: ";
            goto LABEL_42;
          case 15:
            v3 = "apfs_extentref: ";
            goto LABEL_42;
          case 16:
            v3 = "apfs_snap_meta: ";
            goto LABEL_42;
        }
      }

      v3 = &byte_10005C3F3;
LABEL_42:
      v4 = "btn";
      if (a1 == 2)
      {
        v4 = "bt";
      }

      v2 = byte_10009A2C0;
      snprintf(byte_10009A2C0, 0x28uLL, "%s%s", v3, v4);
      return v2;
    case 5:
      return "sm";
    case 6:
      return "cab";
    case 7:
      return "cib";
    case 8:
      return "sm_ip";
    case 11:
      return "om";
    case 12:
      return "cpm";
    case 13:
      return "apfs";
    case 15:
      return "extent";
    case 17:
      return "nr";
    case 18:
      return "nrl";
    case 20:
      return "efi_jumpstart";
    case 24:
      return "er_state";
    case 25:
      return "gbitmap";
    case 27:
      return "gbitmap_blk";
    case 29:
      return "snap_meta_ext";
    default:
      return "?";
  }
}

uint64_t sub_100025548(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t **a9, uint64_t a10, char a11)
{
  if (a9)
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, 0, a9, a10, a11);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10002558C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t **a10, uint64_t a11, char a12)
{
  v12 = a7;
  v15 = a4;
  v17 = a2;
  v18 = *(a1[1] + 36);
  v415 = 0uLL;
  v416 = 0;
  if (a9 && a10)
  {
    v413 = a3;
    v415 = *(a9 + 144);
    v19 = *(a9 + 168);
    v416 = *(a9 + 160);
    if (v19)
    {
      v403 = a5;
      *(a9 + 168) = 0;
      goto LABEL_7;
    }

    sub_100025298(a7, a8);
    sub_10004565C("(oid 0x%llx) %s: object read was finished already\n", v35, v36, v37, v38, v39, v40, v41, v15);
    v23 = 37;
    v42 = 1558;
    v43 = 37;
LABEL_34:
    sub_100049C40(v42, v43);
    return v23;
  }

  v20 = a1;
  v21 = sub_100024EE0(a1, a2, a3, a4, a5, a6, a7, a8, &v415);
  v22 = a5;
  v23 = v21;
  if (v21)
  {
    return v23;
  }

  v403 = v22;
  v413 = a3;
  v19 = malloc_type_malloc(DWORD2(v415), 0xDA49114EuLL);
  a1 = v20;
  if (!v19)
  {
    sub_100025298(v12, a8);
    sub_10004565C("(oid 0x%llx) %s: malloc(%u)\n", v52, v53, v54, v55, v56, v57, v58, v15);
    v23 = 12;
    v42 = 347;
    v43 = 12;
    goto LABEL_34;
  }

LABEL_7:
  v412 = a1;
  v24 = v416;
  v25 = HIDWORD(v415);
  v26 = *a1;
  if ((BYTE12(v415) & 4) == 0)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_24;
  }

  if ((WORD6(v415) & 0x700) == 0x100)
  {
    v27 = v15 ^ HIDWORD(v416) | v15 & 0xFFFFFFFF00000000 ^ (v416 << 32);
  }

  else
  {
    v27 = 0;
  }

  if ((WORD6(v415) & 0x700) == 0x100)
  {
    v28 = 4;
  }

  else
  {
    v28 = 0;
  }

  if (!v17)
  {
LABEL_24:
    v30 = 0;
    if (a9)
    {
      goto LABEL_25;
    }

LABEL_22:
    v407 = DWORD2(v415);
    v404 = v415;
    v31 = sub_10002F454(v26, v415, DWORD2(v415) / v18, v19, v30, 0, 0, v27, v28);
    if (v31)
    {
      v23 = v31;
LABEL_31:
      sub_100025298(v12, a8);
      strerror(v23);
      sub_10004565C("(oid 0x%llx) %s: %s(%llu, %u): %s\n", v45, v46, v47, v48, v49, v50, v51, v15);
      sub_100049C40(0x15C, v23);
LABEL_32:
      free(v19);
      return v23;
    }

    if (a10)
    {
      goto LABEL_38;
    }

LABEL_43:
    v23 = 0;
    *(a9 + 144) = v415;
    *(a9 + 160) = v416;
    *(a9 + 168) = v19;
    return v23;
  }

  v29 = *(v17 + 8 * (BYTE12(v415) >> 5) + 24);
  if (v29)
  {
    v30 = v17 + 96 * (BYTE12(v415) >> 5) + 832;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v26 = *(v17 + 8 * (BYTE12(v415) >> 5) + 24);
  }

  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (!a10)
  {
    v44 = sub_10002F454(v26, v415, DWORD2(v415) / v18, v19, v30, 1, a9, v27, v28);
    if (v44)
    {
      v23 = v44;
      goto LABEL_31;
    }

    goto LABEL_43;
  }

  v34 = sub_10002F4A0(v26);
  v407 = DWORD2(v415);
  if (v34)
  {
    v23 = v34;
    goto LABEL_31;
  }

  v404 = v415;
LABEL_38:
  if (v17)
  {
    v60 = *(v17 + 40);
    v61 = (*(v60 + 264) & 1) == 0;
    v62 = *(v60 + 976) == 0;
    if (*(v60 + 976))
    {
      v61 = 1;
    }

    v400 = *(v60 + 1096) != 0;
    v401 = v61;
    if ((a6 & 0x20000000) != 0)
    {
      goto LABEL_232;
    }
  }

  else
  {
    v400 = 0;
    v401 = 0;
    v62 = 1;
    if ((a6 & 0x20000000) != 0)
    {
      goto LABEL_232;
    }
  }

  v389 = v62;
  v392 = 0;
  v63 = 0;
  v408 = 0;
  v397 = 0;
  v399 = (v25 & 4) != 0;
  v64 = a6 | ((v25 & 4) << 26);
  v410 = v25;
  v406 = v25 >> 5;
  v395 = v17 + 24;
  v394 = v17 + 832;
  v388 = a8 & 0xFFFFFFFE;
  v65 = v407;
  v66 = 8 * v407;
  v67 = v407 - 8;
  v396 = v15 ^ HIDWORD(v24) | v15 & 0xFFFFFFFF00000000 ^ (v24 << 32);
  v398 = v17;
  v393 = v24;
LABEL_46:
  v402 = v64;
  while (1)
  {
    v69 = sub_10003ED88(v19, (v19 + 1), v407 - 8, 0, v32, v33);
    if (v69)
    {
      sub_100025298(v12, a8);
      v378 = *v19;
      sub_100045744("(oid 0x%llx) %s: invalid o_cksum (0x%llx)\n", v70, v71, v72, v73, v74, v75, v76, v15);
      sub_100049C40(0x15E, 92);
    }

    if (sub_1000082B8(v19, 0, 8 * v407, v68))
    {
      sub_100025298(v12, a8);
      sub_10004565C("(oid 0x%llx) %s: found zeroed-out block\n", v249, v250, v251, v252, v253, v254, v255, v15);
      v23 = 92;
      v256 = 845;
      v257 = 92;
LABEL_231:
      sub_100049C40(v256, v257);
      goto LABEL_241;
    }

    v79 = v19[1];
    if (v79 == v15)
    {
      v80 = 0;
      v81 = v408;
    }

    else
    {
      v82 = v408;
      if (!v69)
      {
        sub_100025298(v12, a8);
        v379 = v19[1];
        sub_10004565C("(oid 0x%llx) %s: invalid o_oid (0x%llx)\n", v83, v84, v85, v86, v87, v88, v89, v15);
        sub_100049C40(0x15F, 92);
        v82 = v408;
        v79 = v19[1];
      }

      *v77.i8 = vcnt_s8((v79 ^ v15));
      v77.i16[0] = vaddlv_u8(*v77.i8);
      v81 = v82 + v77.i32[0];
      v80 = 92;
    }

    v405 = v63;
    v90 = v19[2];
    if (v90)
    {
      v91 = *(v412[1] + 16);
      if (v90 <= v91)
      {
        v23 = v80;
      }

      else
      {
        v23 = 92;
      }

      if (!v69 && v90 > v91)
      {
LABEL_64:
        v92 = v81;
        sub_100025298(v12, a8);
        v380 = v19[2];
        sub_10004565C("(oid 0x%llx) %s: invalid o_xid (0x%llx)\n", v93, v94, v95, v96, v97, v98, v99, v15);
        v23 = 92;
        sub_100049C40(0x160, 92);
        v81 = v92;
        v66 = 8 * v407;
      }
    }

    else
    {
      if (!v69)
      {
        goto LABEL_64;
      }

      v23 = 92;
    }

    if (v24)
    {
      v100 = v19[2];
      if (v100 != v24)
      {
        if (!v69)
        {
          v101 = v81;
          sub_100025298(v12, a8);
          v381 = v19[2];
          sub_10004565C("(oid 0x%llx) %s: invalid o_xid (0x%llx, expected 0x%llx)\n", v102, v103, v104, v105, v106, v107, v108, v15);
          sub_100049C40(0x371, 92);
          v81 = v101;
          v100 = v19[2];
        }

        *v77.i8 = vcnt_s8((v100 ^ v24));
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        v23 = 92;
      }
    }

    if (v12)
    {
      v109 = *(v19 + 12);
      if (v109 != v12)
      {
        if (!v69)
        {
          v110 = v81;
          sub_100025298(v12, a8);
          v382 = *(v19 + 6);
          sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v111, v112, v113, v114, v115, v116, v117, v15);
          sub_100049C40(0x161, 92);
          v81 = v110;
          v109 = *(v19 + 12);
        }

        v77.i32[0] = v109 ^ v12;
        *v77.i8 = vcnt_s8(*v77.i8);
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        v23 = 92;
      }
    }

    if (a8)
    {
      v118 = *(v19 + 7);
      if (v118 != a8)
      {
        if (v69)
        {
          v77.i32[0] = *(v19 + 7) ^ a8;
          *v77.i8 = vcnt_s8(*v77.i8);
          v77.i16[0] = vaddlv_u8(*v77.i8);
          v81 += v77.i32[0];
          v119 = *(v19 + 6);
          if ((v119 & 0xC0000000) == v413)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }

        v409 = v81;
        if (a8 != 33 || v118)
        {
          sub_100025298(v12, a8);
          v384 = *(v19 + 7);
          sub_10004565C("(oid 0x%llx) %s: invalid o_subtype (0x%x, expected 0x%x)\n", v133, v134, v135, v136, v137, v138, v139, v15);
          v23 = 92;
          sub_100049C40(0x164, 92);
          v77.i32[0] = *(v19 + 14) ^ a8;
          *v77.i8 = vcnt_s8(*v77.i8);
          v77.i16[0] = vaddlv_u8(*v77.i8);
          v81 = v77.i32[0] + v409;
        }

        else
        {
          sub_100025298(v12, 33);
          v383 = *(v19 + 7);
          sub_100045744("(oid 0x%llx) %s: using old subtype (0x%x, expected 0x%x)\n", v120, v121, v122, v123, v124, v125, v126, v15);
          if (!v23)
          {
            v397 |= sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) subtype? ", v127, v128, v129, v130, v131, v132, v15) != 0;
          }

          v81 = v409;
        }

        v66 = 8 * v407;
      }
    }

    v119 = *(v19 + 6);
    if ((v119 & 0xC0000000) == v413)
    {
      goto LABEL_92;
    }

    if (!v69)
    {
      v140 = v81;
      sub_100025298(v12, a8);
      v385 = *(v19 + 6);
      sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v141, v142, v143, v144, v145, v146, v147, v15);
      sub_100049C40(0x162, 92);
      v81 = v140;
      v119 = *(v19 + 6);
    }

LABEL_90:
    v77.i32[0] = *(v19 + 7) & 0xC0000000 ^ v413;
    *v77.i8 = vcnt_s8(*v77.i8);
    v77.i16[0] = vaddlv_u8(*v77.i8);
    v81 += v77.i32[0];
LABEL_91:
    v23 = 92;
LABEL_92:
    v148 = v402;
    v149 = v119 & 0x3FFF0000;
    if (v149 != v402)
    {
      if (v69 && v23)
      {
        goto LABEL_97;
      }

      v150 = v81;
      sub_100025298(v12, a8);
      v386 = *(v19 + 6);
      sub_10004565C("(oid 0x%llx) %s: invalid o_type (0x%x, expected 0x%x)\n", v151, v152, v153, v154, v155, v156, v157, v15);
      sub_100049C40(0x163, 92);
      if (v23)
      {
        v149 = v19[3] & 0x3FFF0000;
        v148 = v402;
        v81 = v150;
        v66 = 8 * v407;
LABEL_97:
        v77.i32[0] = v149 ^ v148;
        *v77.i8 = vcnt_s8(*v77.i8);
        v77.i16[0] = vaddlv_u8(*v77.i8);
        v81 += v77.i32[0];
        goto LABEL_98;
      }

      v222 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) flags? ", v158, v159, v160, v161, v162, v163, v15);
      v397 |= v222 != 0;
      if (v222)
      {
        v23 = 0;
      }

      else
      {
        v23 = 92;
      }

      v81 = v150;
      v66 = 8 * v407;
    }

LABEL_98:
    v408 = v81;
    if (a8 && v12 && v81 == 1)
    {
      sub_100025298(v12, a8);
      sub_10004565C("(oid 0x%llx) %s: found a bit flip in the header\n", v164, v165, v166, v167, v168, v169, v170, v15);
      sub_100049C40(0x3E9, 92);
      v177 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) header bit flip? ", v171, v172, v173, v174, v175, v176, v15);
      v184 = v410;
      if (v177)
      {
        v19[1] = v15;
        if (v24)
        {
          v19[2] = v24;
          v17 = v398;
          if (v69)
          {
LABEL_176:
            if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) checksum? ", v178, v179, v180, v181, v182, v183, v15))
            {
              v23 = 92;
              goto LABEL_241;
            }
          }

          LOBYTE(v397) = 1;
          goto LABEL_178;
        }

        v23 = 0;
        v397 = 1;
      }

      goto LABEL_104;
    }

    if (!v69)
    {
      break;
    }

    if (v81)
    {
      v185 = 1005;
      goto LABEL_110;
    }

    v417 = 0;
    if (!v65)
    {
      v185 = 1004;
      goto LABEL_110;
    }

    v387 = v69;
    v390 = v12;
    v391 = v15;
    v193 = v67;
    v194 = v66;
    v195 = 0;
    v196 = 0;
    LODWORD(v197) = -1431655766;
    do
    {
      v198 = v195 >> 3;
      v199 = 1 << (v195 & 7);
      *(v19 + v198) ^= v199;
      v200 = *v19;
      sub_10003ED18(&v417, (v19 + 1), v193, 0, v77, v78);
      if (v200 == *&v417)
      {
        v197 = v195;
      }

      else
      {
        v197 = v197;
      }

      if (v200 == *&v417)
      {
        ++v196;
      }

      *(v19 + v198) ^= v199;
      ++v195;
    }

    while (v194 != v195);
    if (!v196)
    {
      v185 = 1004;
      v15 = v391;
      v23 = v23;
      v12 = v390;
      v17 = v398;
      v66 = 8 * v407;
      v24 = v393;
      v65 = v407;
      v67 = v193;
      goto LABEL_110;
    }

    v15 = v391;
    v23 = v23;
    v12 = v390;
    v66 = 8 * v407;
    v67 = v193;
    if (v196 != 1)
    {
      sub_100025298(v390, a8);
      sub_10004565C("(oid 0x%llx) %s: could not repair object to match checksum: too many bit flip candidates (%d)\n", v223, v224, v225, v226, v227, v228, v229, v391);
      v185 = 1003;
      v17 = v398;
      v24 = v393;
      v65 = v407;
LABEL_110:
      sub_100049C40(v185, 92);
      v184 = v410;
      if (!v23)
      {
        goto LABEL_176;
      }

      goto LABEL_111;
    }

    sub_100025298(v390, a8);
    sub_10004565C("(oid 0x%llx) %s: found a bit flip at index 0x%x\n", v201, v202, v203, v204, v205, v206, v207, v391);
    v23 = 92;
    sub_100049C40(0x3EA, 92);
    v214 = sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) bit flip? ", v208, v209, v210, v211, v212, v213, v391);
    v24 = v393;
    v184 = v410;
    v65 = v407;
    v69 = v387;
    if (v214)
    {
      LOBYTE(v397) = 1;
      *(v19 + (v197 >> 3)) ^= 1 << (v197 & 7);
      v17 = v398;
LABEL_178:
      v258 = v406;
      goto LABEL_179;
    }

LABEL_104:
    v17 = v398;
    if (!v69)
    {
      break;
    }

    if (!v23)
    {
      goto LABEL_176;
    }

LABEL_111:
    v186 = v406;
    if ((v401 & ~v405 & v399 & 1) == 0 || v406 != 1 && !v400)
    {
      if ((v392 & 1) != 0 || ((v401 | v399) & 1) == 0)
      {
        goto LABEL_241;
      }

      if ((v184 & 4) != 0)
      {
        v235 = v184 & 0xFFFFFF1B;
      }

      else
      {
        v230 = v388 == 36;
        v231 = *(*(v17 + 40) + 1096) != 0;
        v232 = (v230 & v231) == 0;
        v233 = (v230 & v231) != 0 ? 256 : v231 << 8;
        v234 = v232 ? 0 : 32;
        v186 = v234 >> 5;
        v235 = v184 & 0xFFFFF81F | v233 | v234 | 4;
      }

      v236 = v412;
      v237 = *v412;
      v410 = v235;
      if ((v235 & 4) != 0)
      {
        v239 = 4 * ((v235 & 0x700) == 256);
        v240 = (v235 & 0x700) == 0x100 ? v396 : 0;
        if (v17)
        {
          if (*(v395 + 8 * (v235 >> 5)))
          {
            v237 = *(v395 + 8 * (v235 >> 5));
            v238 = v394 + 96 * (v235 >> 5);
          }

          else
          {
            v238 = 0;
          }

          v236 = v412;
        }

        else
        {
          v238 = 0;
        }
      }

      else
      {
        v238 = 0;
        v239 = 0;
        v240 = 0;
      }

      if (sub_10002F454(v237, v404, v65 / *(v236[1] + 36), v19, v238, 0, 0, v240, v239))
      {
        goto LABEL_241;
      }

      v406 = v186;
      v64 = v402 ^ 0x10000000;
      if (v399)
      {
        v248 = "encrypted";
      }

      else
      {
        v248 = "unencrypted";
      }

      sub_100045744("failed to validate %s object, retrying as %s\n", v241, v242, v243, v244, v245, v246, v247, v248);
      v392 = 1;
      v399 ^= 1u;
      v65 = v407;
      v24 = v393;
      v63 = v405;
      goto LABEL_46;
    }

    v187 = v406 ^ 1;
    v188 = v412;
    v189 = *v412;
    if ((v184 & 4) != 0)
    {
      v191 = 4 * ((v184 & 0x700) == 256);
      if ((v184 & 0x700) == 0x100)
      {
        v192 = v396;
      }

      else
      {
        v192 = 0;
      }

      if (v17)
      {
        if (*(v395 + 8 * ((v406 ^ 1) & 7)))
        {
          v189 = *(v395 + 8 * ((v406 ^ 1) & 7));
          v190 = v394 + 96 * ((v406 ^ 1) & 7);
        }

        else
        {
          v190 = 0;
        }

        v188 = v412;
      }

      else
      {
        v190 = 0;
      }
    }

    else
    {
      v190 = 0;
      v191 = 0;
      v192 = 0;
    }

    if (sub_10002F454(v189, v404, v65 / *(v188[1] + 36), v19, v190, 0, 0, v192, v191))
    {
      goto LABEL_241;
    }

    v410 = v410 & 0xFFFFFF1F | (32 * (v187 & 7));
    v406 = v406 ^ 1;
    sub_100045744("failed to validate object with crypto key index (%u), retrying with (%u)\n", v215, v216, v217, v218, v219, v220, v221, v187 ^ 1);
    v63 = 1;
  }

  v258 = v406;
  if (v23)
  {
    goto LABEL_241;
  }

LABEL_179:
  if (v17)
  {
    v259 = (v413 | *(*(v17 + 40) + 264) & 1) == 0;
  }

  else
  {
    v259 = 0;
  }

  v260 = v410;
  v261 = v392;
  v262 = a8;
  if (!a8)
  {
    v262 = *(v19 + 7);
  }

  v263 = v402;
  v264 = v17 && (v262 & 0xFFFFFFFE) == 0x24 && *(*(v17 + 40) + 1096);
  if (((v392 | v405) & 1) == 0)
  {
    if (v389)
    {
      v279 = v258 != v264;
      if (v258 != v264)
      {
        sub_100025298(v12, a8);
        sub_100045744("(oid 0x%llx) %s: invalid crypto key index (%u), expected (%u)\n", v280, v281, v282, v283, v284, v285, v286, v15);
        v23 = 92;
        sub_100049C40(0x4B4, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", v287, v288, v289, v290, v291, v292, v15))
        {
          goto LABEL_241;
        }

        v260 = (v410 & 0xFFFFFF1F | (32 * (v258 & 7))) ^ 0x20;
        LOBYTE(v397) = 1;
        v263 = v402;
      }

      v278 = v393;
      if ((v399 & 1) != v259)
      {
        v293 = v260;
        sub_100025298(v12, a8);
        sub_100045744("(oid 0x%llx) %s: object is %s but should be %s\n", v294, v295, v296, v297, v298, v299, v300, v15);
        sub_100049C40(0x374, -3);
        if (sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) encryption and omap flags? ", v301, v302, v303, v304, v305, v306, v15))
        {
          v307 = v404;
          if ((v293 & 4) != 0)
          {
            v260 = v293 & 0xFFFFFF1B;
          }

          else
          {
            v308 = *(*(v17 + 40) + 1096) != 0;
            if (v308 && v388 == 36)
            {
              v309 = 32;
            }

            else
            {
              v309 = 32 * v308;
            }

            v260 = v293 & 0xFFFFFF1F | v309 | 4;
          }

          v279 = 1;
          v65 = v407;
          goto LABEL_256;
        }

        v307 = v404;
        v260 = v293;
        v65 = v407;
        goto LABEL_251;
      }
    }

    else
    {
      v279 = 0;
      v278 = v393;
    }

LABEL_219:
    v307 = v404;
    goto LABEL_220;
  }

  if (v405)
  {
    if (v258 == v264)
    {
      sub_100025298(v12, a8);
      sub_10004565C("(oid 0x%llx) %s: object is encrypted with crypto key index (%u)but omap says it's encrypted with crypto key index (%u)\n", v265, v266, v267, v268, v269, v270, v271, v15);
      v23 = 92;
      sub_100049C40(0x4B3, 92);
      v278 = v393;
      if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) omap flags? ", v272, v273, v274, v275, v276, v277, v15))
      {
        goto LABEL_241;
      }

      v279 = 1;
      v260 = v410;
    }

    else
    {
      sub_100025298(v12, a8);
      sub_10004565C("(oid 0x%llx) %s: object is encrypted with crypto key index (%u) but should be encrypted with crypto key index (%u)\n", v310, v311, v312, v313, v314, v315, v316, v15);
      v23 = 92;
      sub_100049C40(0x4B2, 92);
      if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) crypto key index? ", v317, v318, v319, v320, v321, v322, v15))
      {
        goto LABEL_241;
      }

      v279 = 0;
      v260 = (v410 & 0xFFFFFF1F | (32 * (v258 & 7))) ^ 0x20;
      LOBYTE(v397) = 1;
      v278 = v393;
    }

    v263 = v402;
    v261 = v392;
  }

  else
  {
    v279 = 0;
    v278 = v393;
  }

  if ((v261 & 1) == 0)
  {
    goto LABEL_219;
  }

  v411 = v260;
  sub_100025298(v12, a8);
  if ((v399 & 1) == v259)
  {
    sub_10004565C("(oid 0x%llx) %s: object is %s but omap says it's %s\n", v323, v324, v325, v326, v327, v328, v329, v15);
    v23 = 92;
    sub_100049C40(0x373, 92);
    v307 = v404;
    if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) omap flags? ", v372, v373, v374, v375, v376, v377, v15))
    {
      goto LABEL_241;
    }

    v279 = 1;
    v260 = v411;
LABEL_251:
    v263 = v402;
    goto LABEL_220;
  }

  sub_10004565C("(oid 0x%llx) %s: object is %s but should be %s\n", v323, v324, v325, v326, v327, v328, v329, v15);
  v23 = 92;
  sub_100049C40(0x372, 92);
  if (!sub_10004758C(qword_10009BA58, "Fix object (oid 0x%llx) encryption? ", v330, v331, v332, v333, v334, v335, v15))
  {
    goto LABEL_241;
  }

  if ((v411 & 4) != 0)
  {
    v260 = v411 & 0xFFFFFF1B;
  }

  else
  {
    v336 = *(*(v17 + 40) + 1096) != 0;
    if (v336 && v388 == 36)
    {
      v337 = 32;
    }

    else
    {
      v337 = 32 * v336;
    }

    v260 = v411 & 0xFFFFFF1F | v337 | 4;
  }

  v307 = v404;
LABEL_256:
  v263 = v402 ^ 0x10000000;
  LOBYTE(v397) = 1;
LABEL_220:
  v338 = v12;
  if (!v12)
  {
    v338 = *(v19 + 12);
  }

  v339 = a8;
  if (!a8)
  {
    v339 = *(v19 + 7);
  }

  if (v397)
  {
    *(v19 + 6) = v263 | v338 | v413;
    *(v19 + 7) = v339;
    v417 = v307;
    v418 = v65;
    v419 = v260;
    v420 = v278;
    v340 = v260;
    v341 = sub_100026A10(v412, v17, v19, &v417, v77, v78);
    v260 = v340;
    if (v341)
    {
      v23 = v341;
      v342 = strerror(v341);
      sub_10004565C("error writing object: %s\n", v343, v344, v345, v346, v347, v348, v349, v342);
      v256 = 880;
LABEL_230:
      v257 = v23;
      goto LABEL_231;
    }
  }

  if (v279)
  {
    v350 = v19[1];
    v351 = v19[2];
    v417 = v307;
    v418 = v407;
    v419 = v260;
    v420 = v278;
    v352 = sub_10001F1AC(v412, v17, v350, v351, &v417);
    if (v352)
    {
      v23 = v352;
      v353 = strerror(v352);
      sub_10004565C("error updating omap entry: %s\n", v354, v355, v356, v357, v358, v359, v360, v353);
      v256 = 885;
      goto LABEL_230;
    }
  }

LABEL_232:
  v23 = 0;
  if (v413 && a12)
  {
    if ((v12 - 6) >= 3)
    {
      v361 = 1;
    }

    else
    {
      v361 = 9;
    }

    if (v17)
    {
      v362 = *(*(v17 + 40) + 8);
    }

    else
    {
      v362 = 0;
    }

    sub_1000422DC(v412, v415, (DWORD2(v415) / *(v412[1] + 36)), v362, v413, v15, v403, v12, a8, v361);
    v23 = 0;
  }

LABEL_241:
  if ((v12 - 4) > 0xFFFFFFFD || v23 | v413)
  {
    if (!v23)
    {
      goto LABEL_246;
    }

    goto LABEL_32;
  }

  v363 = sub_10001DC68(v17 != 0, v15, 1);
  if (v363)
  {
    v371 = v363;
    sub_100045744("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v364, v365, v366, v367, v368, v369, v370, v15);
    sub_100049C40(0x3D4, v371);
  }

LABEL_246:
  *a10 = v19;
  v23 = 0;
  if (a11)
  {
    *a11 = v415;
    *(a11 + 16) = v416;
  }

  return v23;
}

uint64_t sub_10002692C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9)
{
  if (a9)
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100026968(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int a8, uint64_t a9, uint64_t **a10, uint64_t a11, char a12)
{
  if (a9)
  {
    v12 = a10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 22;
  }

  else
  {
    return sub_10002558C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  }
}

double sub_100026998(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 168))
  {
    v5 = *(a4 + 156);
    v6 = *a1;
    if ((v5 & 4) != 0)
    {
      if (a2)
      {
        v7 = *(a2 + 8 * (v5 >> 5) + 24);
        if (v7)
        {
          v6 = v7;
        }
      }
    }

    sub_10002F4A0(v6);
    free(*(a4 + 168));
  }

  result = 0.0;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_100026A10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5, int8x16_t a6)
{
  sub_10003ED18(a3, (a3 + 8), (*(a4 + 8) - 8), 0, a5, a6);
  v10 = *(a4 + 12);
  v11 = *a1;
  if ((v10 & 4) != 0)
  {
    if ((*(a4 + 12) & 0x700) == 0x100)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    if ((*(a4 + 12) & 0x700) == 0x100)
    {
      v14 = *(a3 + 8) ^ HIDWORD(*(a4 + 16)) | *(a3 + 8) & 0xFFFFFFFF00000000 ^ (*(a4 + 16) << 32);
    }

    else
    {
      v14 = 0;
    }

    if (a2)
    {
      v15 = v10 >> 5;
      v16 = *(a2 + 8 * v15 + 24);
      v17 = a2 + 96 * v15 + 832;
      if (v16)
      {
        v11 = v16;
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  v18 = sub_10002F4BC(v11, *a4, (*(a4 + 8) / *(a1[1] + 36)), a3, v12, v14, v13);
  if (v18)
  {
    v19 = *(a3 + 8);
    sub_100025298(*(a3 + 24), *(a3 + 28));
    v20 = *a4;
    v29 = (*(a4 + 8) / *(a1[1] + 36));
    strerror(v18);
    sub_10004565C("(oid 0x%llx) %s: dev_write(%llu, %u): %s\n", v21, v22, v23, v24, v25, v26, v27, v19);
    sub_100049C40(0x166, v18);
  }

  if (a2)
  {
    *(a2 + 12) = 1;
  }

  return v18;
}

uint64_t sub_100026B74(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100026BB0(a1, &v10, &v9, 8, 17, a6, a7, a8);
}

uint64_t sub_100026BB0(_DWORD *a1, char *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, 1, a5, 0, a2, 8u, a3, a4);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100026C04(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  return sub_100026BB0(a1, &v10, &v9, 8, 18, a6, a7, a8);
}

uint64_t sub_100026C40(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v9 = a3;
  if (a1)
  {
    return sub_100027D7C(a1, 7, 1, 0xFu, 0, &v10, 8u, &v9, 1u);
  }

  sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
  return 0;
}

void sub_100026C9C(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4, uint64_t a5, BOOL *a6, uint64_t a7, uint64_t a8)
{
  v10 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v10 != xmmword_10009A2E8)
  {
    v73 = *(a4 + 8);
    sub_100045744("extended attribute (id %llu, name %.*s) is orphan\n", a2, a3, a4, a5, a6, a7, a8, *a4);
    sub_100049C40(0x3C1, -2);
    sub_100027170(a2, a4, *(a4 + 8) + 10, v32, v33, v34, v35, v36);
    goto LABEL_43;
  }

  v14 = *(a4 + 8);
  if (!strncmp((a4 + 10), "com.apple.decmpfs", v14) && (dword_10009A334 & 0x40000020) != 0)
  {
    BYTE8(xmmword_10009A318) = 1;
    v37 = *(a5 + 2);
    dword_10009A330 = v37;
    if ((*a5 & 2) != 0)
    {
      if (v37 > 0xF)
      {
        if (*(a5 + 4) == 1668116582)
        {
          v53 = *(a5 + 8);
          byte_10009A328 = sub_1000271C4(v53, v15, v16, v17, v18, v19, v20, v21);
          byte_10009A329 = (v53 + 0x7FFFFFFF) < 2;
          dword_10009A32C = v53;
          goto LABEL_43;
        }

        sub_100045744("compression xattr (id %llu): compression magic is unknown: 0x%x\n", v15, v16, v17, v18, v19, v20, v21, v10);
        v30 = 1220;
      }

      else
      {
        sub_100045744("compression xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v15, v16, v17, v18, v19, v20, v21, v10);
        v30 = 1219;
      }

      v38 = 92;
      goto LABEL_42;
    }

    if (!*a5 || (*a5 & 1) != 0)
    {
      goto LABEL_43;
    }

    sub_100045744("compression xattr (id %llu): internal flags are invalid (0x%x)\n", v15, v16, v17, v18, v19, v20, v21, v10);
    v30 = 1221;
    goto LABEL_13;
  }

  if (strncmp((a4 + 10), "com.apple.ResourceFork", v14))
  {
    if (strncmp((a4 + 10), "com.apple.system.fs.speculative_telemetry", v14))
    {
      goto LABEL_43;
    }

    v22 = sub_10000EC94();
    if ((BYTE11(xmmword_10009A2F8) & 0x20) != 0)
    {
      v44 = v22;
      v45 = *a5;
      if ((*a5 & 4) == 0)
      {
        sub_100045744("speculative download xattr (id %llu): invalid flags: 0x%x\n", v23, v24, v25, v26, v27, v28, v29, v10);
        sub_100049C40(0x5B6, -3);
        v52 = sub_10004758C(qword_10009BA58, "set missing flag? (0x%x) ", v46, v47, v48, v49, v50, v51, 4);
        v45 = *a5;
        if (v52)
        {
          v45 |= 4u;
          *a5 = v45;
          *a3 = 1;
        }
      }

      if (v45)
      {
        v54 = *(a5 + 12);
        sub_100045744("speculative download xattr (id %llu): shouldn't be stream based\n", v23, v24, v25, v26, v27, v28, v29, v10);
        sub_100049C40(0x5B7, -5);
        if (v54 > 0xB)
        {
          goto LABEL_43;
        }

        v75 = *(a5 + 2);
        sub_100045744("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v55, v56, v57, v58, v59, v60, v61, v10);
        v30 = 1464;
      }

      else
      {
        if (*(a5 + 2) > 0xBu)
        {
          v62 = *(a5 + 4);
          if (v62)
          {
            sub_100045744("speculative download xattr (id %llu): unknown version: %u\n", v23, v24, v25, v26, v27, v28, v29, v10);
            v30 = 1466;
            v38 = -6;
          }

          else
          {
            LODWORD(v64) = *(a5 + 5);
            v65 = *(a5 + 6);
            v66 = *(a5 + 8);
            if (v64 >= 6)
            {
              v76 = *(a5 + 5);
              v64 = *(a5 + 8);
              sub_100045744("speculative download xattr (id %llu): unknown purge reason: %u\n", v23, v24, v25, v26, v27, v28, v29, v10);
              sub_100049C40(0x5BB, -3);
              v66 = v64;
              LOBYTE(v64) = v76;
            }

            if (v65 >= 0x40)
            {
              v77 = v66;
              sub_100045744("speculative download xattr (id %llu): unknown flags: %x\n", v23, v24, v25, v26, v27, v28, v29, v10);
              sub_100049C40(0x5BC, -3);
              v72 = sub_10000ED68(a1, v65, 63, v67, v68, v69, v70, v71);
              v66 = v77;
              if (v72)
              {
                *a3 = 1;
                *a5 = v62;
                *(a5 + 1) = v64;
                *(a5 + 2) = v65 & 0x3F;
                *(a5 + 4) = v77;
              }
            }

            if (v66 <= v44)
            {
              goto LABEL_43;
            }

            sub_100045744("speculative download xattr (id %llu): pristine time (%llu) is greater than current time (%llu)\n", v23, v24, v25, v26, v27, v28, v29, v10);
            v30 = 1469;
            v38 = -4;
          }

          goto LABEL_42;
        }

        v74 = *(a5 + 2);
        sub_100045744("speculative download xattr (id %llu): size is too small, actual: %u, minimum: %lu\n", v23, v24, v25, v26, v27, v28, v29, v10);
        v30 = 1465;
      }

      v38 = -11;
LABEL_42:
      sub_100049C40(v30, v38);
LABEL_43:
      if (a6)
      {
        *a6 = v10 != xmmword_10009A2E8;
      }

      return;
    }

    sub_100045744("speculative download xattr (id %llu): found outside of an SAF dir stats hierarchy\n", v23, v24, v25, v26, v27, v28, v29, v10);
    v30 = 1461;
LABEL_13:
    v38 = -3;
    goto LABEL_42;
  }

  if ((*a5 & 2) != 0)
  {
    v39 = *(a5 + 2);
LABEL_23:
    if (v39)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    HIDWORD(xmmword_10009A318) = v43;
    goto LABEL_43;
  }

  v39 = *(a5 + 12);
  v40 = *(a5 + 20);
  *&xmmword_10009A318 = v40;
  if (!*(&xmmword_10009A2E8 + 1) || (sub_1000185E4(*(&xmmword_10009A2E8 + 1), v40), !v41) && ((WORD2(qword_10009A338) & 0xF000) != 0x8000 || (BYTE8(xmmword_10009A2F8) & 2) == 0 || (DWORD2(xmmword_10009A2F8) & 0x180000) != 0x80000 || qword_10009A338 != 1 || (dword_10009A334 & 0x40000020) != 0x20 || (sub_100018A74(*(&xmmword_10009A2E8 + 1), v40), !v63)))
  {
    if (!xmmword_10009A2F8)
    {
      goto LABEL_23;
    }

    sub_1000063C4(xmmword_10009A2F8, v40);
    if (!v42)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_100027170(_DWORD *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, 0, 0, 0, a2, a3, 0, 0);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

BOOL sub_1000271C4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != 2 && (a1 - 1) <= 0xD)
  {
    return (a1 & 1) == 0;
  }

  if ((a1 + 0x7FFFFFFF) >= 2)
  {
    sub_100045744("inode (id %llu): unknown compression type: %u\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
    sub_100049C40(0x4C2, 92);
  }

  return 0;
}

uint64_t sub_100027244(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = xmmword_10009A2E8;
  if (!xmmword_10009A2E8)
  {
    return 0;
  }

  v12 = dword_10009A334;
  if ((dword_10009A334 & 0x20) != 0)
  {
    if ((BYTE8(xmmword_10009A318) & 1) == 0)
    {
      if (qword_10009A348 != xmmword_10009A2E8)
      {
        v15 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350);
        qword_10009A348 = v8;
        if (v15)
        {
          return v15;
        }
      }

      if (byte_10009A350)
      {
        return 0;
      }

      sub_100045744("inode (id %llu): has the compression bsdflag, but doesn't have the compression xattr\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
      sub_100049C40(0x4C8, -3);
    }

    if (byte_10009A328 != 1 || HIDWORD(xmmword_10009A318) == 2)
    {
      goto LABEL_19;
    }

    v25 = xmmword_10009A2E8;
    if (qword_10009A348 != xmmword_10009A2E8)
    {
      v15 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350);
      qword_10009A348 = v25;
      if (v15)
      {
        return v15;
      }
    }

    if (byte_10009A350)
    {
      return 0;
    }

    sub_100045744("inode (id %llu): Resource Fork xattr is missing or empty for compressed file\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
    sub_100049C40(0x4C6, 92);
    v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 32;
    v13 = sub_100026BB0(a3, &v60, &v59, 4, 20, v26, v27, v28);
    if (!v13 && dword_10009A330 == 16)
    {
      v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x4000000000000000;
      v61 = 18;
      strcpy(v62, "com.apple.decmpfs");
      v13 = sub_100027170(a3, &v60, 28, a4, a5, a6, a7, a8);
    }

    if (!v13)
    {
LABEL_19:
      v12 = dword_10009A334;
      if ((dword_10009A334 & 0x40000000) != 0 || byte_10009A329 != 1)
      {
        goto LABEL_3;
      }

      sub_100045744("inode (id %llu): compression type is dataless, but the dataless bsd_flag is not set\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
      sub_100049C40(0x4FD, -3);
      v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
      LODWORD(v59) = 0x40000000;
      v13 = sub_100026BB0(a3, &v60, &v59, 4, 19, v17, v18, v19);
      if (!v13)
      {
        v12 = dword_10009A334;
        goto LABEL_3;
      }
    }

    sub_10004565C("inode (id %llu): failed to enqueue to the repairs\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
    sub_100049C40(0x4D2, v13);
    goto LABEL_51;
  }

LABEL_3:
  if ((v12 & 0x40000000) == 0)
  {
    goto LABEL_4;
  }

  if ((v12 & 0x20) != 0)
  {
    if (BYTE8(xmmword_10009A318))
    {
      if (byte_10009A329)
      {
        goto LABEL_4;
      }

      v29 = xmmword_10009A2E8;
      if (qword_10009A348 == xmmword_10009A2E8 || (v15 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350), qword_10009A348 = v29, !v15))
      {
        if ((byte_10009A350 & 1) == 0)
        {
          sub_100045744("inode (id %llu): dataless bsd_flag is set, but the compression type is different: 0x%x\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
          v30 = 1226;
LABEL_69:
          sub_100049C40(v30, -3);
LABEL_4:
          v13 = 0;
          v14 = HIDWORD(xmmword_10009A318);
          if ((dword_10009A334 & 0x20) == 0 || HIDWORD(xmmword_10009A318) != 2)
          {
LABEL_52:
            if (v14)
            {
              if (v14 == 1)
              {
LABEL_64:
                xmmword_10009A318 = 0u;
                *&byte_10009A328 = 0u;
                qword_10009A338 = 0;
                xmmword_10009A2F8 = 0u;
                xmmword_10009A308 = 0u;
                xmmword_10009A2E8 = 0u;
                *&dword_10009A32C = -1;
                return v13;
              }

              v32 = WORD4(xmmword_10009A2F8) & 0x8000;
              v33 = ~DWORD2(xmmword_10009A2F8) & 0x4000;
              if (v13)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v33 = ~DWORD2(xmmword_10009A2F8) & 0x8000;
              v32 = WORD4(xmmword_10009A2F8) & 0x4000;
              if (v13)
              {
                goto LABEL_60;
              }
            }

            if (v33)
            {
              sub_100045744("inode (id %llu): need to set internal_flags 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
              sub_100049C40(0x5A9, 92);
              v59 = v33;
              v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
              v37 = sub_100026BB0(a3, &v60, &v59, 8, 17, v34, v35, v36);
              v13 = v37;
              if (v37)
              {
                v38 = xmmword_10009A2E8;
                strerror(v37);
                sub_10004565C("inode (id %llu): can't add internal flags repair: %d (%s)\n", v39, v40, v41, v42, v43, v44, v45, v38);
                sub_100049C40(0x5AA, v13);
                goto LABEL_64;
              }
            }

LABEL_60:
            if (v32)
            {
              if (!v13)
              {
                sub_100045744("inode (id %llu): need to clear internal_flags 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
                sub_100049C40(0x5AB, 92);
                v59 = v32;
                v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
                v49 = sub_100026BB0(a3, &v60, &v59, 8, 18, v46, v47, v48);
                v13 = v49;
                if (v49)
                {
                  v50 = xmmword_10009A2E8;
                  strerror(v49);
                  sub_10004565C("inode (id %llu): can't add internal flags repair: %d (%s)\n", v51, v52, v53, v54, v55, v56, v57, v50);
                  sub_100049C40(0x5AC, v13);
                }
              }
            }

            goto LABEL_64;
          }

          if (sub_1000271C4(dword_10009A32C, a2, a3, a4, a5, a6, a7, a8))
          {
            if ((BYTE8(xmmword_10009A2F8) & 0x10) != 0)
            {
              v13 = sub_1000016B8(*(&xmmword_10009A308 + 1), xmmword_10009A2E8, xmmword_10009A318);
            }

            else
            {
              v13 = 0;
            }

            if (xmmword_10009A308)
            {
              sub_1000387BC(*(&xmmword_10009A308 + 1), xmmword_10009A2E8, xmmword_10009A318);
            }
          }

          else
          {
            v13 = 0;
          }

LABEL_51:
          v14 = HIDWORD(xmmword_10009A318);
          goto LABEL_52;
        }

        return 0;
      }
    }

    else
    {
      v31 = xmmword_10009A2E8;
      if (qword_10009A348 == xmmword_10009A2E8 || (v15 = sub_10003FD88(a1, a2, qword_10009A340, xmmword_10009A2E8, &byte_10009A350), qword_10009A348 = v31, !v15))
      {
        if ((byte_10009A350 & 1) == 0)
        {
          sub_100045744("inode (id %llu): dataless bsd_flag is set, but the compression xattr is missing\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
          v30 = 1237;
          goto LABEL_69;
        }

        return 0;
      }
    }

    return v15;
  }

  sub_100045744("inode (id %llu): dataless bsd_flag is set, but compression bsd_flag is not\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
  sub_100049C40(0x4D3, -3);
  if (BYTE8(xmmword_10009A318) == 1 && byte_10009A329 == 1)
  {
    v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 32;
    v23 = a3;
    v24 = 19;
  }

  else
  {
    v60 = xmmword_10009A2E8 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    LODWORD(v59) = 0x40000000;
    v23 = a3;
    v24 = 20;
  }

  v13 = sub_100026BB0(v23, &v60, &v59, 4, v24, v20, v21, v22);
  if (!v13)
  {
    goto LABEL_4;
  }

  sub_10004565C("inode (id %llu): failed to enqueue to the repairs\n", a2, a3, a4, a5, a6, a7, a8, xmmword_10009A2E8);
  sub_100049C40(0x4D4, v13);
  return v13;
}

uint64_t sub_1000278CC(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_100027244(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!result)
  {
    *&xmmword_10009A2E8 = a4;
    *(&xmmword_10009A2E8 + 1) = a6;
    dword_10009A334 = *(a5 + 68);
    v14 = *(a5 + 48);
    *&xmmword_10009A2F8 = a7;
    *(&xmmword_10009A2F8 + 1) = v14;
    *&xmmword_10009A308 = a8;
    *(&xmmword_10009A308 + 1) = *(a5 + 8);
    LODWORD(qword_10009A338) = *(a5 + 56);
    WORD2(qword_10009A338) = *(a5 + 80);
  }

  return result;
}

double sub_10002794C(uint64_t a1)
{
  qword_10009A340 = a1;
  xmmword_10009A318 = 0u;
  *&byte_10009A328 = 0u;
  xmmword_10009A2E8 = 0u;
  xmmword_10009A2F8 = 0u;
  xmmword_10009A308 = 0u;
  qword_10009A338 = 0;
  result = NAN;
  *&dword_10009A32C = -1;
  return result;
}

uint64_t sub_10002797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_10009A354 & 1) == 0)
  {
    sub_100045744("snapshot fsroot / file key rolling / doc-id / clone group tree corruptions are not repaired; they'll go away once the snapshot is deleted\n", a2, a3, a4, a5, a6, a7, a8, v9);
    byte_10009A354 = 1;
  }

  return 0;
}

uint64_t sub_1000279BC(uint64_t a1, uint64_t a2)
{
  result = sub_100039748(a1, 0, a2, 0x8000000, 2, 0, 0, 4096, 0, 0, 0, 0, sub_100027A4C);
  if (!result)
  {

    return sub_10003B84C(a1, 0, 66);
  }

  return result;
}

uint64_t sub_100027A4C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 < 2 || a5 < 2)
  {
    return result;
  }

  result = sub_100028998(a2, a3, a4, a5);
  *a6 = result;
  if (result)
  {
    return 0;
  }

  v13 = *a2 & 0xF;
  if (v13 > 4)
  {
    if ((*a2 & 0xFu) <= 7)
    {
      if (v13 - 6 >= 2)
      {
        if (v13 != 5)
        {
          return result;
        }

        result = 22;
        if (a3 != 18 || a5 != 18)
        {
          return result;
        }

        v14 = *(a2 + 2);
        v15 = *(a4 + 2);
        if (v14 < v15)
        {
          result = 0;
          v16 = -1;
LABEL_53:
          *a6 = v16;
          return result;
        }

        if (v14 > v15)
        {
          result = 0;
          v16 = 1;
          goto LABEL_53;
        }

        v19 = (a2 + 10);
        v20 = (a4 + 10);
        v21 = a1;
        v17 = 8;
        v18 = 8;
LABEL_32:

        return sub_10003F384(v21, v19, v17, v20, v18, a6);
      }

LABEL_29:
      result = 22;
      if (a3 < 0xD || a5 < 0xD)
      {
        return result;
      }

      v17 = a3 - 5;
      v18 = a5 - 5;
      v19 = (a2 + 5);
      v20 = (a4 + 5);
      v21 = a1;
      goto LABEL_32;
    }

    if (v13 != 8)
    {
      if (v13 == 9)
      {
        result = 22;
        if (a3 == 6 && a5 == 6)
        {

          return sub_100030C54(a1, (a2 + 2), 4, (a4 + 2), 4, a6);
        }
      }

      else if (v13 == 10)
      {
        result = 22;
        if (a3 == 27 && a5 == 27)
        {

          return sub_10003F258(a1, (a2 + 2), 0x19uLL, (a4 + 2), 0x19u, a6);
        }
      }

      return result;
    }

    result = 22;
    if (a3 != 10 || a5 != 10)
    {
      return result;
    }

    v26 = *(a2 + 2);
    v27 = *(a4 + 2);
    v28 = v26;
    v24 = &v28;
    v25 = &v27;
    return sub_100030C88(a1, v24, 8, v25, 8, a6);
  }

  if ((*a2 & 0xFu) > 2)
  {
    if (v13 != 3)
    {
      if (v13 != 4)
      {
        return result;
      }

      goto LABEL_29;
    }

    result = 22;
    if (a3 != 10 || a5 != 10)
    {
      return result;
    }

    v23 = *(a2 + 2);
    v29 = *(a4 + 2);
    v30 = v23;
    v24 = &v30;
    v25 = &v29;
    return sub_100030C88(a1, v24, 8, v25, 8, a6);
  }

  if (v13 >= 2)
  {
    result = 22;
    if (a3 == 18 && a5 == 18)
    {
      v22 = *(a2 + 2);
      v31 = *(a4 + 2);
      v32 = v22;
      return sub_10001F078(a1, &v32, 16, &v31, 16, a6);
    }
  }

  else
  {
    result = 22;
    if (a3 == 18 && a5 == 18)
    {
      v34 = *(a2 + 2);
      v33 = *(a4 + 2);
      return sub_100001C14(a1, &v34, 16, &v33, 16, a6);
    }
  }

  return result;
}