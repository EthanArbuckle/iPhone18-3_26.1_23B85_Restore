uint64_t sub_10003F1FC(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10003F258(int a1, void *__s1, size_t __n, void *__s2, unsigned int a5, int *a6)
{
  result = 22;
  if (__n >= 9 && a5 >= 9)
  {
    if (*__s1 < *__s2)
    {
LABEL_4:
      v8 = -1;
LABEL_7:
      result = 0;
      *a6 = v8;
      return result;
    }

    if (*__s1 > *__s2)
    {
      goto LABEL_6;
    }

    v9 = *(__s1 + 8);
    v10 = *(__s2 + 8);
    if (v9 < v10)
    {
      goto LABEL_4;
    }

    if (v9 > v10)
    {
LABEL_6:
      v8 = 1;
      goto LABEL_7;
    }

    if (v9 == 2)
    {
      result = 22;
      if (__n == a5 && __n >= 0x11 && a5 >= 0x11)
      {
        v15 = *(__s1 + 9);
        v16 = *(__s2 + 9);
        v17 = v15 >= v16;
        v8 = v15 > v16;
        if (!v17)
        {
          v8 = -1;
        }

        goto LABEL_7;
      }
    }

    else
    {
      if (v9 != 1)
      {
        if (__n != a5)
        {
          return 22;
        }

        v8 = memcmp(__s1, __s2, __n);
        goto LABEL_7;
      }

      result = 22;
      if (__n == a5 && __n >= 0x19 && a5 >= 0x19)
      {
        v11 = *(__s1 + 9);
        v12 = *(__s2 + 9);
        if (v11 < v12)
        {
          goto LABEL_4;
        }

        if (v11 <= v12)
        {
          v13 = *(__s1 + 17);
          v14 = *(__s2 + 17);
          if (v13 >= v14)
          {
            v8 = v13 > v14;
            goto LABEL_7;
          }

          goto LABEL_4;
        }

        goto LABEL_6;
      }
    }
  }

  return result;
}

uint64_t sub_10003F384(uint64_t a1, unint64_t *a2, unsigned int a3, unint64_t *a4, unsigned int a5, int *a6)
{
  if (a1 && *(a1 + 24) != 13)
  {
    return 22;
  }

  v11 = 22;
  if (a3 >= 8 && a5 >= 8)
  {
    if (sub_10003EF3C(a1, a2, a3, 0) || sub_10003EF3C(a1, a4, a5, 0))
    {
      return 22;
    }

    v13 = *a2 & 0xFFFFFFFFFFFFFFFLL;
    v14 = *a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v13 < v14)
    {
      goto LABEL_10;
    }

    if (v13 <= v14)
    {
      v16 = *a2 >> 60;
      if (v16 == 14)
      {
        LODWORD(v16) = *(a2 + 8);
      }

      v17 = *a4 >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a4 + 8);
      }

      if (!v16)
      {
        v18 = v17 == 0;
LABEL_24:
        if (v18)
        {
          v15 = 0;
        }

        else
        {
          v15 = -1;
        }

        goto LABEL_27;
      }

      if (v17)
      {
        if (v16 < v17)
        {
LABEL_10:
          v15 = -1;
LABEL_27:
          v11 = 0;
          *a6 = v15;
          return v11;
        }

        if (v16 <= v17)
        {
          v11 = 45;
          switch(v16)
          {
            case 1:
            case 2:
            case 3:
            case 6:
            case 7:
            case 10:
            case 12:
            case 18:
              goto LABEL_22;
            case 4:
            case 11:
              goto LABEL_33;
            case 5:
              v25 = a2[1];
              v26 = a4[1];
              if (!v25)
              {
                goto LABEL_56;
              }

              if (v26)
              {
                goto LABEL_47;
              }

              break;
            case 8:
              v25 = a2[1];
              v26 = a4[1];
              if (v25 == -1)
              {
                v18 = v26 == -1;
                goto LABEL_24;
              }

              if (v26 == -1)
              {
                break;
              }

LABEL_47:
              v31 = v25 > v26;
              if (v25 >= v26)
              {
                goto LABEL_52;
              }

              goto LABEL_10;
            case 9:
              if (!a1)
              {
                return 22;
              }

              if ((*(a1 + 56) & 9) == 0)
              {
LABEL_33:
                v22 = *(a2 + 4);
                v24 = *(a4 + 4);
                v21 = a2 + 10;
                v23 = a4 + 10;
                goto LABEL_34;
              }

              v19 = *(a2 + 2);
              v20 = *(a4 + 2);
              if (v19 >> 10 < v20 >> 10)
              {
                goto LABEL_10;
              }

              if (v19 >> 10 <= v20 >> 10)
              {
                v21 = a2 + 12;
                v22 = v19 & 0x3FF;
                v23 = a4 + 12;
                v24 = v20 & 0x3FF;
LABEL_34:
                v15 = sub_10003F684(v21, v22, v23, v24);
                goto LABEL_27;
              }

              break;
            case 13:
              v36 = a2[1];
              v37 = HIBYTE(v36);
              v38 = a4[1];
              v39 = HIBYTE(v38);
              if (!HIBYTE(v36))
              {
                v18 = v39 == 0;
                goto LABEL_24;
              }

              if (!v39)
              {
                break;
              }

              if (v37 != v39)
              {
                if (v37 < v39)
                {
                  v15 = -1;
                }

                else
                {
                  v15 = 1;
                }

                goto LABEL_27;
              }

              v40 = v36 & 0xFFFFFFFFFFFFFFLL;
              v41 = v38 & 0xFFFFFFFFFFFFFFLL;
              if (v40 == 0xFFFFFFFFFFFFFFLL)
              {
                v18 = v41 == 0xFFFFFFFFFFFFFFLL;
                goto LABEL_24;
              }

              if (v41 == 0xFFFFFFFFFFFFFFLL)
              {
                break;
              }

              v31 = v40 > v41;
              if (v40 < v41)
              {
                goto LABEL_10;
              }

              goto LABEL_52;
            case 16:
              v27 = *(a2 + 12);
              v26 = *(a4 + 12);
              if (!v27)
              {
LABEL_56:
                v18 = v26 == 0;
                goto LABEL_24;
              }

              if (!v26)
              {
                break;
              }

              v28 = v27 > v26;
              if (v27 < v26)
              {
                goto LABEL_10;
              }

LABEL_50:
              if (v28)
              {
                break;
              }

              v34 = *(a2 + 20);
              v35 = *(a4 + 20);
              v31 = v34 > v35;
              if (v34 < v35)
              {
                goto LABEL_10;
              }

LABEL_52:
              if (!v31)
              {
LABEL_22:
                v15 = 0;
                goto LABEL_27;
              }

              break;
            case 17:
              v29 = *(a2 + 12);
              v30 = *(a4 + 12);
              if (v29 < v30)
              {
                goto LABEL_10;
              }

              if (v29 == v30)
              {
                goto LABEL_22;
              }

              v31 = v29 > v30;
              goto LABEL_52;
            case 19:
              v32 = *(a2 + 12);
              v33 = *(a4 + 12);
              v28 = v32 > v33;
              if (v32 < v33)
              {
                goto LABEL_10;
              }

              goto LABEL_50;
            default:
              return v11;
          }
        }
      }
    }

    v15 = 1;
    goto LABEL_27;
  }

  return v11;
}

uint64_t sub_10003F684(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (!v4 || (v5 = v4 - 1, v4 == 1))
  {
LABEL_13:
    if (a2 < a4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return a2 > a4;
    }
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + v6);
      v8 = v7 - *(a3 + v6);
      if (v8)
      {
        break;
      }

      ++v6;
      if (v7)
      {
        v9 = v6 >= v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        goto LABEL_13;
      }
    }
  }

  return v8;
}

uint64_t sub_10003F6E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, unint64_t a7)
{
  v52[1] = 0xAAAAAAAAAAAAAAAALL;
  v47[0] = 0;
  v47[1] = a3;
  v49 = 0xAAAAAAAA00000EE0;
  v50 = a6;
  v51 = a7;
  v52[0] = 0;
  LOWORD(v52[1]) = a5;
  v48 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xA93B1C53uLL);
  if (v48)
  {
    v18 = sub_10002D5F0(a1, a2, v47);
    if (v18)
    {
      v26 = v18;
      sub_10004565C("failed to init fsroot tree for lookup in directory\n", v19, v20, v21, v22, v23, v24, v25, v42);
      v27 = 1285;
    }

    else
    {
      v28 = sub_10003F964(&v51 + 8, a4);
      if (!v28)
      {
        while (SDWORD2(v51) >= 1)
        {
          v37 = *(v52[0] + --DWORD2(v51));
          v45 = v37 & 0xFFFFFFFFFFFFFFFLL | 0x9000000000000000;
          v46 = 0;
          v43 = v45;
          v44 = 0;
          v38 = *(a2[5] + 56);
          if ((v38 & 9) != 0)
          {
            v39 = &v43;
          }

          else
          {
            v39 = &v45;
          }

          if ((v38 & 9) != 0)
          {
            v40 = 12;
          }

          else
          {
            v40 = 10;
          }

          v41 = sub_10003FA04(a1, a2, a3, 1, v39, v40, sub_10003FBEC, v47);
          if (v41)
          {
            return v41;
          }
        }

        v26 = 0;
        goto LABEL_8;
      }

      v26 = v28;
      sub_10004565C("failed to allocate dir-stack memory for lookup in directory\n", v29, v30, v31, v32, v33, v34, v35, v42);
      v27 = 1286;
    }

    sub_100049C40(v27, v26);
LABEL_8:
    if (v48)
    {
      free(v48);
    }

    goto LABEL_10;
  }

  sub_10004565C("failed to allocate memory for lookup in directory\n", v11, v12, v13, v14, v15, v16, v17, v42);
  v26 = 12;
  sub_100049C40(0x504, 12);
LABEL_10:
  if (v52[0])
  {
    free(v52[0]);
  }

  return v26;
}

uint64_t sub_10003F8AC(uint64_t a1, void *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 <= 5)
  {
    if ((a3 - 3) >= 3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          return sub_10002D394(a1, a2, a4);
        }

        return 22;
      }

      return sub_10002D2DC(a1, a2, a4);
    }

    return sub_10002D5F0(a1, a2, a4);
  }

  if (a3 <= 0x13)
  {
    if (((1 << a3) & 0x3600) != 0)
    {
      return sub_10002D5F0(a1, a2, a4);
    }

    if (((1 << a3) & 0xD0000) != 0)
    {
LABEL_12:
      if (*(a2[5] + 1096))
      {
        return sub_10002D6C4(a1, a2, a4);
      }

      return sub_10002D5F0(a1, a2, a4);
    }

    if (a3 == 11)
    {
      return sub_10002D2DC(a1, a2, a4);
    }
  }

  if ((a3 - 6) < 2)
  {
    goto LABEL_12;
  }

  if (a3 == 8)
  {
    v9 = a2[6];
    if (!v9)
    {
      v9 = a2[5];
    }

    if ((*(v9 + 56) & 0x20) != 0)
    {
      return sub_10002D44C(a1, a2, a4, a4, a5, a6, a7, a8);
    }

    goto LABEL_12;
  }

  return 22;
}

uint64_t sub_10003F964(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 4);
  if (*a1 >= v4)
  {
    if (v5 > 4095)
    {
      return 12;
    }

    v7 = v4 ? 2 * v4 : 32;
    v6 = malloc_type_realloc(*(a1 + 8), 8 * v7, 0x100004000313F17uLL);
    if (!v6)
    {
      return 12;
    }

    *(a1 + 8) = v6;
    *(a1 + 4) = v7;
    v5 = *a1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v8 = 0;
  *a1 = v5 + 1;
  v6[v5] = a2;
  return v8;
}

uint64_t sub_10003FA04(uint64_t a1, void *a2, uint64_t a3, int a4, unsigned __int8 *a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8)
{
  v9 = a6;
  v13 = *a5 >> 60;
  if (v13 == 14)
  {
    LODWORD(v13) = a5[8];
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_10003F8AC(a1, a2, v13, &v48, a5, a6, a7, a8);
  if (v14)
  {
    v15 = v14;
    v16 = strerror(v14);
    sub_10004565C("unable to init fsroot tree: %s\n", v17, v18, v19, v20, v21, v22, v23, v16);
    v24 = 1085;
LABEL_7:
    sub_100049C40(v24, v15);
    return v15;
  }

  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v25;
  v47 = v25;
  v44 = v25;
  v45 = v25;
  v43 = v25;
  v26 = sub_10003A444(&v43, v48, a3, a5, v9);
  if (v26)
  {
    v15 = v26;
    v27 = strerror(v26);
    sub_10004565C("unable to init fsroot tree iterator: %s\n", v28, v29, v30, v31, v32, v33, v34, v27);
    v24 = 1086;
    goto LABEL_7;
  }

  if (v44)
  {
    v36 = *a5 >> 60;
    if (v36 == 14)
    {
      LODWORD(v36) = a5[8];
    }

    v37 = *v44 >> 60;
    if (v37 == 14)
    {
      LODWORD(v37) = *(v44 + 8);
    }

    v38 = v36 == v37;
  }

  else
  {
    v38 = 0;
  }

  LODWORD(v15) = 0;
  if ((BYTE8(v45) & 1) == 0)
  {
    v39 = a4 ^ 1;
    if (v38 | v39)
    {
      while (1)
      {
        if (v38)
        {
          v40 = a7();
          if (v40)
          {
            break;
          }
        }

        v40 = (*(&v43 + 1))(&v43);
        if (v40)
        {
          break;
        }

        if (v44)
        {
          v41 = *a5 >> 60;
          if (v41 == 14)
          {
            LODWORD(v41) = a5[8];
          }

          v42 = *v44 >> 60;
          if (v42 == 14)
          {
            LODWORD(v42) = *(v44 + 8);
          }

          v38 = v41 == v42;
        }

        else
        {
          v38 = 0;
        }

        LODWORD(v15) = 0;
        if ((BYTE8(v45) & 1) != 0 || ((v38 | v39) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      LODWORD(v15) = v40;
    }
  }

LABEL_32:
  if (v43)
  {
    (v43)(&v43);
  }

  if (v15 == -1)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

uint64_t sub_10003FBEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v47 = 8;
  v7 = *(a5 + 8);
  v8 = *(a5 + 16);
  v48 = *a3 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  *(a5 + 24) = 3808;
  v9 = sub_1000397B8(*a5, v7, 0, &v48, &v47, 8u, v8, (a5 + 24));
  if (v9)
  {
    v10 = v9;
    if (v9 == 2)
    {
      return 0;
    }

    v13 = *a3;
    strerror(v9);
    sub_10004565C("unable to load inode (oid 0x%llx) for lookup in purgatory directory: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    v21 = 1281;
LABEL_16:
    sub_100049C40(v21, v10);
    return v10;
  }

  v11 = (*(a5 + 32))(&v48, v47, v8, *(a5 + 24), *(a5 + 40));
  if (!v11)
  {
    if ((v8[40] & 0xF000) == 0x4000)
    {
      v10 = sub_10003F964(a5 + 48, *a3);
      if (!v10)
      {
        return v10;
      }

      sub_100049C40(0x503, v10);
      if (*(a5 + 64) != 1)
      {
        sub_10004565C("failed to allocate dir-stack memory for lookup in directory\n", v22, v23, v24, v25, v26, v27, v28, v46);
        return v10;
      }

      if ((*(a5 + 65) & 1) == 0)
      {
        v29 = strerror(v10);
        sub_100045744("failed to allocate dir-stack memory for lookup in directory: %s; results may be incomplete\n", v30, v31, v32, v33, v34, v35, v36, v29);
        v10 = 0;
        *(a5 + 65) = 1;
        return v10;
      }
    }

    return 0;
  }

  v10 = v11;
  if (v11 != -1)
  {
    v37 = *a3;
    strerror(v11);
    sub_10004565C("failed to run predicate callback on inode (oid 0x%llx) for lookup in directory: %s\n", v38, v39, v40, v41, v42, v43, v44, v37);
    v21 = 1282;
    goto LABEL_16;
  }

  v12 = *(a5 + 56);
  if (v12)
  {
    free(v12);
  }

  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  return 0xFFFFFFFFLL;
}

uint64_t sub_10003FD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v104 = 0;
  v101 = 3808;
  v102 = 8;
  *a5 = 0;
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v10 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xC514A027uLL);
  if (!v10)
  {
    sub_10004565C("failed to allocate memory for file lookup in purgatory directory\n", v11, v12, v13, v14, v15, v16, v17, v98);
    v27 = 12;
    sub_100049C40(0x32C, 12);
    return v27;
  }

  v18 = v10;
  v103 = 0xAAAAAAAAAAAAAAAALL;
  v19 = sub_10002D5F0(a1, a2, &v104);
  if (v19)
  {
    v27 = v19;
    sub_10004565C("failed to init fsroot tree for file lookup in purgatory directory\n", v20, v21, v22, v23, v24, v25, v26, v98);
    v28 = 805;
LABEL_5:
    sub_100049C40(v28, v27);
    goto LABEL_57;
  }

  if ((v6 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_56;
  }

  v29 = 0;
  v99 = a3;
  while (1)
  {
    v30 = malloc_type_calloc(1uLL, 0x340uLL, 0xF4F6693FuLL);
    v31 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x50A9EED1uLL);
    v39 = v31;
    if (v30 && v31)
    {
      v100 = v29;
      *&v40 = 0xAAAAAAAAAAAAAAAALL;
      *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v112 = v40;
      v113 = v40;
      *__str = v40;
      v111 = v40;
      snprintf(__str, 0x40uLL, "0x%llx-dead", v6);
      v107 = 0;
      v41 = *(*(a2 + 40) + 56);
      v106 = 18;
      v42 = strlen(__str);
      *a5 = 0;
      v43 = sub_10002D5F0(a1, a2, &v107);
      if (v43)
      {
        v27 = v43;
        sub_10004565C("failed to init fsroot tree for file lookup in directory\n", v44, v45, v46, v47, v48, v49, v50, v98);
        sub_100049C40(0x329, v27);
        a3 = v99;
        v29 = v100;
        goto LABEL_52;
      }

      v80 = v42 + 1;
      *v30 = 0x9000000000000003;
      if ((v41 & 9) != 0)
      {
        v105 = -1;
        if (sub_100002E7C(__str, v42, (v41 >> 3) & 1, sub_100040D58, &v105))
        {
          a3 = v99;
          v29 = v100;
LABEL_47:
          if ((*a5 & 1) != 0 && *v39 != v6)
          {
            v27 = 0;
            *a5 = 0;
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_52;
        }

        __memcpy_chk();
        v30[2] = v80 & 0x3FF | (v105 << 10);
        v81 = v42 + 13;
      }

      else
      {
        __memcpy_chk();
        *(v30 + 4) = v80;
        v81 = v42 + 11;
      }

      LODWORD(v109) = v81;
      a3 = v99;
      v82 = sub_1000397B8(v107, v99, 0, v30, &v109, 0x340u, v39, &v106);
      v29 = v100;
      if (v82 != 2)
      {
        v27 = v82;
        if (v82)
        {
          strerror(v82);
          sub_10004565C("unable to load drec (oid 0x%llx) for file lookup in directory\n: %s\n", v83, v84, v85, v86, v87, v88, v89, 3);
          sub_100049C40(0x321, v27);
          goto LABEL_52;
        }

        *a5 = 1;
      }

      goto LABEL_47;
    }

    sub_10004565C("failed to allocate memory for file lookup in purgatory directory\n", v32, v33, v34, v35, v36, v37, v38, v98);
    v27 = 12;
    sub_100049C40(0x32B, 12);
    if (!v30)
    {
      if (!v39)
      {
        goto LABEL_17;
      }

LABEL_16:
      free(v39);
      goto LABEL_17;
    }

LABEL_52:
    free(v30);
    if (v39)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v27)
    {
      goto LABEL_57;
    }

    if (*a5)
    {
      goto LABEL_56;
    }

    v109 = 0xAAAAAAAAAAAAAAAALL;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    *__str = 0u;
    v107 = 0x9000000000000003;
    v108 = 0;
    *a5 = 0;
    v51 = sub_10002D5F0(a1, a2, &v109);
    if (v51)
    {
      v27 = v51;
      sub_10004565C("failed to init fsroot tree for file lookup in directory\n", v52, v53, v54, v55, v56, v57, v58, v98);
      v59 = 810;
LABEL_23:
      sub_100049C40(v59, v27);
      goto LABEL_24;
    }

    v60 = sub_10003A444(__str, v109, a3, &v107, 0xCu);
    if (v60)
    {
      v27 = v60;
      v61 = strerror(v60);
      sub_10004565C("unable to initialize fsroot tree iterator for file lookup in directory: %s\n", v62, v63, v64, v65, v66, v67, v68, v61);
      v59 = 803;
      goto LABEL_23;
    }

    while (1)
    {
      if ((BYTE8(v112) & 1) != 0 || *v111 != 0x9000000000000003)
      {
        v27 = 0;
        goto LABEL_24;
      }

      if (**(&v111 + 1) == v6)
      {
        break;
      }

      v71 = (*&__str[8])(__str);
      if (v71)
      {
        v27 = v71;
        v72 = strerror(v71);
        sub_10004565C("error iterating fsroot tree for file lookup in directory: %s\n", v73, v74, v75, v76, v77, v78, v79, v72);
        v59 = 804;
        goto LABEL_23;
      }
    }

    v27 = 0;
    *a5 = 1;
LABEL_24:
    if (*__str)
    {
      (*__str)(__str);
    }

    if (v27)
    {
      goto LABEL_57;
    }

    if (*a5)
    {
      goto LABEL_56;
    }

    v103 = v6 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
    v101 = 3808;
    v69 = sub_1000397B8(v104, a3, 0, &v103, &v102, v102, v18, &v101);
    v27 = v69;
    if (v69)
    {
      break;
    }

    v6 = *v18;
    if ((*v18 - 3) <= 0xFFFFFFFFFFFFFFFDLL && v29++ < 0x1FF)
    {
      continue;
    }

    goto LABEL_57;
  }

  if (v69 != 2)
  {
    strerror(v69);
    sub_10004565C("unable to load inode (oid 0x%llx) for file lookup in purgatory directory: %s\n", v91, v92, v93, v94, v95, v96, v97, v6);
    v28 = 802;
    goto LABEL_5;
  }

LABEL_56:
  v27 = 0;
LABEL_57:
  free(v18);
  return v27;
}

uint64_t sub_1000402AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return sub_100039748(a1, a2, a3, *(*(a3 + 40) + 120) & 0xC0000000, *(*(a3 + 40) + 120), 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *(*(a3 + 40) + 144), sub_10003F384);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_10002D2DC(a2, a3, &v31);
  if (!v8)
  {
    v9 = malloc_type_malloc(0x340uLL, 0x41C81BDDuLL);
    v10 = malloc_type_malloc(0xEE0uLL, 0x6316D6F7uLL);
    v18 = v10;
    if (v9 && v10)
    {
      *v9 = a4 & 0xFFFFFFFFFFFFFFFLL | 0x1000000000000000;
      v29 = 3808;
      v30 = 8;
      v19 = sub_1000397B8(v31, 0, 0, v9, &v30, 0x340u, v10, &v29);
      if (v19)
      {
        v8 = v19;
        strerror(v19);
        sub_10004565C("failed to lookup extentref tree oid at snap_xid %llu : %s\n", v20, v21, v22, v23, v24, v25, v26, a4);
      }

      else
      {
        v8 = sub_100039748(a1, a2, a3, v18[10] & 0xC0000000, v18[10], 15, 0, *(*(a2 + 8) + 36), 0, 0, 0, *v18, sub_10003F384);
      }
    }

    else
    {
      sub_10004565C("failed to allocate memory for the extentref tree\n", v11, v12, v13, v14, v15, v16, v17, v28);
      v8 = 12;
      if (!v9)
      {
LABEL_12:
        if (v18)
        {
          free(v18);
        }

        return v8;
      }
    }

    free(v9);
    goto LABEL_12;
  }

  return v8;
}

uint64_t sub_100040474(unsigned __int16 *a1, unsigned int a2, int a3, void *a4, _WORD *a5, _DWORD *a6, unsigned int *a7)
{
  if (a2 < 4)
  {
    return 92;
  }

  v7 = *a1;
  if (!*a1)
  {
    return 2;
  }

  if (a1[1] + 4 * v7 + 4 > a2)
  {
    return 92;
  }

  v8 = 0;
  v9 = 0;
  for (i = a1 + 3; ; i += 2)
  {
    v11 = *i;
    if (*(i - 2) == a3)
    {
      break;
    }

    v9 += (v11 + 7) & 0x1FFF8;
    if (v7 == ++v8)
    {
      return 2;
    }
  }

  v13 = a1[1];
  if (v11 > v13 || v13 - v11 < v9)
  {
    return 92;
  }

  if (a4)
  {
    *a4 = &a1[2 * v7 + 2] + v9;
  }

  if (a5)
  {
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = v8;
  }

  result = 0;
  if (a7)
  {
    *a7 = v9;
  }

  return result;
}

uint64_t sub_10004052C(unsigned __int16 *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 4)
  {
    return 92;
  }

  v8 = a6;
  v9 = a5;
  v11 = a3;
  v13 = (a5 + 7) & 0xFFF8;
  v15 = a1 + 2;
  v14 = *a1;
  if (*a1)
  {
    v16 = a1[1];
    if (4 * v14 + v13 + v16 + 8 > a2)
    {
      return 92;
    }

    v17 = 0;
    v18 = a1 + 3;
    v19 = *a1;
    do
    {
      v20 = *v18;
      v18 += 2;
      v17 += (v20 + 7) & 0x1FFF8;
      --v19;
    }

    while (v19);
    if (v17 >= 0x10000)
    {
      sub_10004565C("xf: xf total size (%u) is larger than UINT16_MAX\n", a2, a3, a4, a5, a6, a7, a8, v17);
      v21 = 92;
      sub_100049C40(0x43F, 92);
      return v21;
    }
  }

  else
  {
    if (a2 < (v13 | 4u))
    {
      return 92;
    }

    v17 = 0;
    LODWORD(v16) = a1[1];
  }

  v22 = &v15[2 * v14];
  if (v17 != v16)
  {
    if (v17 <= v16)
    {
      sub_100045744("xf: xf_used_data (%u) is larger than expected (%u)\n", a2, a3, a4, a5, a6, a7, a8, v16);
      sub_100049C40(0x440, -11);
      if (sub_10004758C(qword_10009BA58, "Fix xf_used_data? ", v23, v24, v25, v26, v27, v28, v32))
      {
        bzero(v22 + v17, a1[1] - v17);
        a1[1] = v17;
        LOWORD(v16) = v17;
        goto LABEL_14;
      }
    }

    return 92;
  }

LABEL_14:
  memmove(v22 + 2, v22, v16);
  v29 = *a1;
  v30 = &v15[2 * v29];
  *v30 = v11;
  *(v30 + 1) = v8;
  v30[1] = v9;
  *a1 = v29 + 1;
  memcpy(v22 + a1[1] + 4, a4, v9);
  if (v9 != v13)
  {
    bzero(v22 + v9 + a1[1] + 4, (v13 - v9));
  }

  v21 = 0;
  a1[1] += v13;
  return v21;
}

uint64_t sub_100040708(unsigned __int16 *a1, unsigned int *a2, int a3)
{
  __dst = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v6 = a1 + 2;
  v5 = *a1;
  result = sub_100040474(a1, *a2, a3, &__dst, &v15, &v14, &v13);
  if (!result)
  {
    v8 = (v15 + 7) & 0x1FFF8;
    v9 = (a1[1] + 7) & 0x1FFF8;
    v10 = v8 + v13;
    if (v9 >= v10)
    {
      memmove(__dst, __dst + v8, v9 - v10);
      a1[1] -= v8;
      memmove(&v6[2 * v14], &v6[2 * v14 + 2], 4 * (*a1 + ~v14));
      v11 = *a1 - 1;
      *a1 = v11;
      memmove(&v6[2 * v11], &v6[2 * v5], a1[1]);
      v12 = *a1;
      if (*a1)
      {
        v12 = a1[1] + 4 * v12 + 4;
      }

      result = 0;
      *a2 = v12;
    }

    else
    {
      return 92;
    }
  }

  return result;
}

uint64_t sub_100040818(int a1, uint64_t a2, void *a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 <= 15)
  {
    switch(a1)
    {
      case 3:
        v8 = 92;
        v9 = 92;
        goto LABEL_18;
      case 9:
        v8 = 18;
        v9 = 18;
        goto LABEL_18;
      case 13:
        v8 = 26;
        v9 = 26;
        goto LABEL_18;
    }
  }

  else if (a1 > 18)
  {
    if (a1 == 19)
    {
      v8 = 8;
      v9 = 8;
      goto LABEL_18;
    }

    if (a1 == 20)
    {
      v8 = 12;
      v9 = 12;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 == 16)
    {
      v8 = 24;
      v9 = 24;
      goto LABEL_18;
    }

    if (a1 == 18)
    {
      v8 = 52;
      v9 = 52;
LABEL_18:
      v10 = 0;
      *a3 = a2 + v8;
      *a4 = v9;
      return v10;
    }
  }

  sub_10004565C("unknown obj type (%u) to add xfields\n", a2, a3, a4, a5, a6, a7, a8, a1);
  v10 = 22;
  sub_100049C40(0x565, 22);
  return v10;
}

uint64_t sub_10004093C(int a1, const void *a2, int *a3, uint64_t a4, const void *a5, uint64_t a6, void (*a7)(uint64_t, const void *, uint64_t), uint64_t *a8)
{
  v43 = 0;
  v16 = sub_100040AD8(a1, a2, *a3, a4, a6, &v43, a7, a8);
  v21 = v16;
  if ((v16 & 0xFFFFFFFD) == 0)
  {
    if (v16 != 2)
    {
      a7(v43, a5, a6);
      return 0;
    }

    v45 = 0;
    v44 = 0;
    v22 = sub_100040818(a1, a2, &v45, &v44, v17, v18, v19, v20);
    if (!v22)
    {
      v24 = *a3;
      v25 = v44;
      v26 = a6 + *a3 + 4 * (*a3 == v44) + 4;
      v27 = malloc_type_calloc(1uLL, v26, 0x92A0DDBEuLL);
      *a8 = v27;
      if (!v27)
      {
        sub_10004565C("failed to allocate memory to add an xfield\n", v28, v29, v30, v31, v32, v33, v34, v42);
        v21 = 12;
        sub_100049C40(0x441, 12);
        return v21;
      }

      memcpy(v27, a2, *a3);
      *a3 = v26;
      v22 = sub_100040818(a1, *a8, &v45, &v44, v35, v36, v37, v38);
      if (!v22)
      {
        v41 = v45;
        if (v24 == v25)
        {
          bzero(v45, v26 - v25);
        }

        v22 = sub_10004052C(v41, v26 - v25, a4, a5, a6, 16, v39, v40);
        if (!v22)
        {
          return 0;
        }
      }
    }

    return v22;
  }

  return v21;
}

uint64_t sub_100040AD8(int a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = a5;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  result = sub_100040818(a1, a2, &v14, &v13, a5, a6, a7, a8);
  if (!result)
  {
    if (a3 == v13)
    {
      return 2;
    }

    else
    {
      result = sub_100040474(v14, a3 - v13, a4, a6, &v15, 0, 0);
      if (!result)
      {
        if (v15 == v9)
        {
          return 0;
        }

        else
        {
          return 34;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100040B74(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0;
  result = sub_100040AD8(3, a1, a2, a3, 8, &v11, a7, a8);
  v10 = 0;
  if (!result)
  {
    v10 = *v11;
  }

  *a4 = v10;
  return result;
}

unint64_t sub_100040BD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100040AD8(3, a1, a2, 8, 40, &v18, a7, a8))
  {
    return 0;
  }

  v19 = 0;
  v13 = sub_100040AD8(3, a1, a2, 13, 8, &v19, v10, v11);
  v14 = 0;
  if (!v13)
  {
    v14 = *v19;
  }

  v15 = *(v18 + 8);
  v16 = v15 >= v14;
  v17 = v15 - v14;
  if (v16)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

char *sub_100040CC0(char *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __CFADD__(*result, *a2);
  v9 = *result + *a2;
  *result = v9;
  if (v8)
  {
    v10 = result;
    v11 = *a2;
    sub_100045744("sparse bytes overflow (current %llu, update %llu)\n", a2, a3, a4, a5, a6, a7, a8, v9);
    result = sub_100049C40(0x442, 92);
    *v10 = -1;
  }

  return result;
}

uint64_t sub_100040D58(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = off_10009B0E8(*a3, a1, a2);
  *a3 = result;
  return result;
}

char *sub_100040D98(unsigned int a1)
{
  if (a1 < 0x15)
  {
    return off_100078A30[a1];
  }

  v1 = byte_10009A401;
  snprintf(byte_10009A401, 0x20uLL, "Unknown type %d", a1);
  return v1;
}

double sub_100040DF8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  dword_10009A428 = *(v2 + 36);
  v4 = sub_10001C07C(0x64u, 0x38400000uLL, 0x5A00000uLL);
  if (!sub_100039748(dword_10009BA68, 0, 0, 0x8000000, 2, 0, 0, 4096, 32, 16, 0, 0, sub_100041030))
  {
    sub_10003B84C(dword_10009BA68, 0, 64);
  }

  byte_10009A430 = 1;
  if (!sub_100039748(dword_10009BAA8, 0, 0, 0x8000000, 2, 0, 0, 4096, 24, 16, 0, 0, sub_100041064))
  {
    sub_10003B84C(dword_10009BAA8, 0, 64);
  }

  v5 = &unk_10009BAE8;
  v6 = 3;
  do
  {
    if (!sub_100039748(v5, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_1000410C0))
    {
      sub_10003B84C(v5, 0, 64);
    }

    v5 += 64;
    --v6;
  }

  while (v6);
  byte_10009A431 = 1;
  sub_10001E320(&unk_10009B430, v3, v4);
  byte_10009A432 = 0;
  byte_10009A433 = 1;
  sub_10001E320(&unk_10009B500, v3, v4);
  bzero(&unk_10009A438, 0x640uLL);
  v7 = 0;
  v8 = *(a1 + 8);
  for (i = 184; i != 984; i += 8)
  {
    v10 = *(v8 + i);
    if (v10)
    {
      v11 = 16 * v7++;
      *(&unk_10009A438 + v11) = v10;
    }
  }

  result = 0.0;
  xmmword_10009AAA8 = 0u;
  unk_10009AAB8 = 0u;
  xmmword_10009AA88 = 0u;
  unk_10009AA98 = 0u;
  xmmword_10009AA78 = 0u;
  return result;
}

uint64_t sub_100041064(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  if (*a2 > *a4)
  {
    goto LABEL_2;
  }

  if (*a2 < *a4)
  {
    goto LABEL_4;
  }

  v8 = a2[1];
  v9 = a4[1];
  if (v8 > v9)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_5;
  }

  if (v8 < v9)
  {
LABEL_4:
    v6 = -1;
    goto LABEL_5;
  }

  v10 = a2[2];
  v11 = a4[2];
  v12 = v10 > v11;
  if (v10 >= v11)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  if (v12)
  {
    v6 = 1;
  }

LABEL_5:
  *a6 = v6;
  return 0;
}

uint64_t sub_1000410C0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, int *a6)
{
  v6 = a2[1];
  v7 = a4[1];
  if (v6 <= v7)
  {
    if (v6 >= v7)
    {
      if (*a2 <= *a4)
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }

      if (*a2 < *a4)
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = 1;
  }

  *a6 = v8;
  return 0;
}

void sub_100041108()
{
  sub_10003B928(dword_10009BA68, 0);
  sub_10003B928(dword_10009BAA8, 0);
  v0 = &unk_10009B430;
  v1 = 3;
  do
  {
    sub_10001E44C(v0);
    v0 += 104;
    --v1;
  }

  while (v1);
  v2 = &unk_10009BAE8;
  v3 = 3;
  do
  {
    if (v2[7])
    {
      sub_10003B928(v2, 0);
    }

    v2 += 8;
    --v3;
  }

  while (v3);
}

uint64_t sub_100041190(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8)
{
  v18 = 0;
  result = sub_10003B724(dword_10009BA68, 0, &v18);
  if (byte_10009A430 == 1 && v18 <= 0x31)
  {
    v17[1] = a2;
    v18 = a3;
    v19 = a4;
    v22 = a5;
    v23 = a6;
    v20 = a7;
    v21 = a8;
    v17[0] = a1;
    return sub_10003B12C(dword_10009BA68, 0, &v18, 32, v17, 0x10u);
  }

  return result;
}

uint64_t sub_100041258(unint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, __int16 a8, char a9)
{
  memset(v36, 0, sizeof(v36));
  v28 = 0;
  v29 = 0;
  v30 = a3;
  v31 = a4;
  v34 = a5;
  v35 = a6;
  v32 = a7;
  v33 = a8;
  v26 = 16;
  v27 = 32;
  if (sub_1000397B8(dword_10009BA68, 0, 1u, v36, &v27, 0x20u, &v28, &v26))
  {
    return 0;
  }

  v20 = a8;
  while (1)
  {
    if (a2 + a1 <= v28 || v29 + v28 <= a1)
    {
      goto LABEL_10;
    }

    if (sub_1000413EC(v36, &v30))
    {
      break;
    }

    a9 = 0;
LABEL_10:
    v21 = 16;
    v22 = 32;
    if (sub_1000397B8(dword_10009BA68, 0, 2u, v36, &v22, 0x20u, &v28, &v21))
    {
      return 0;
    }
  }

  if (a9)
  {
    v25[0] = 0;
    v25[1] = 0;
    v23 = 16;
    v24 = 32;
    if (sub_1000397B8(dword_10009BA68, 0, 0, &v30, &v24, 0x20u, v25, &v23))
    {
      sub_100041190(a1, a2, a3, a4, a5, a6, a7, v20);
    }
  }

  return 1;
}

uint64_t sub_1000413EC(uint64_t a1, uint64_t a2)
{
  if (*a1 > *a2)
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v3 > v4)
  {
    return 1;
  }

  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 > v6)
  {
    return 1;
  }

  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v3)
  {
    v14 = *(a1 + 24);
    v15 = *(a2 + 24);
    if (v14 > v15)
    {
      return 1;
    }

    if (v14 < v15)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v7 = *(a1 + 12);
  v8 = *(a2 + 12);
  if (v7 > v8)
  {
    return 1;
  }

  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 14);
  v10 = *(a2 + 14);
  v11 = v9 >= v10;
  v12 = v9 == v10;
  if (v9 >= v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = -1;
  }

  if (!v12 && v11)
  {
    return 1;
  }

  else
  {
    return v13;
  }
}

BOOL sub_100041484()
{
  v1 = 0;
  sub_10003B724(dword_10009BA68, 0, &v1);
  return v1 != 0;
}

uint64_t sub_1000414C4()
{
  v13 = 0u;
  v14 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  v10 = 16;
  v11 = 32;
  for (result = sub_1000397B8(dword_10009BA68, 0, 1u, &v13, &v11, 0x20u, v12, &v10); !result; result = sub_1000397B8(dword_10009BA68, 0, 2u, &v13, &v9, 0x20u, v12, &v8))
  {
    sub_100045744("Overlapping object: (oid : 0x%llx) (type : %u) (subtype : %u), (%llu + %llu)\n", v1, v2, v3, v4, v5, v6, v7, v14);
    v8 = 16;
    v9 = 32;
  }

  return result;
}

uint64_t sub_100041594(uint64_t *a1)
{
  v219 = 0u;
  v220 = 0u;
  v217 = 0;
  v218 = 0;
  v215 = 16;
  v216 = 32;
  v2 = 0;
  if (sub_1000397B8(dword_10009BA68, 0, 1u, &v219, &v216, 0x20u, &v217, &v215))
  {
    return v2;
  }

  do
  {
    if (DWORD2(v219) != 0x40000000 || *(&v220 + 1) != 0 || WORD6(v219) != 0 || HIWORD(v219) != 15)
    {
      goto LABEL_60;
    }

    v213 = 0xAAAAAAAAAAAAAAAALL;
    v214 = 0xAAAAAAAAAAAAAAAALL;
    v212 = 0;
    v210[0] = 0;
    v210[1] = 0;
    v211 = 0;
    v208 = 20;
    v209 = 8;
    v206 = 0;
    v207 = 0;
    v204 = 0;
    v205 = 0;
    v202 = 0;
    v203 = 0;
    if (!sub_100041258(v217, v218, v219, 0x40000000, v220, 0, 0, 15, 0))
    {
      v221 = v219;
      v222 = v220;
      sub_10003B708(dword_10009BA68, 0, &v221, 32);
      v15 = 0;
      goto LABEL_52;
    }

    v7 = sub_10001D860(a1, v219);
    v15 = v7;
    if (!v7)
    {
      sub_100045744("repair_overlapped_extents: unable to find volume for fs_oid 0x%llx\n", v8, v9, v10, v11, v12, v13, v14, v219);
      v22 = 604;
      v23 = 2;
      goto LABEL_51;
    }

    v16 = *(v7 + 5);
    v17 = *(v16 + 976);
    if (*(v16 + 264))
    {
      if (v17)
      {
LABEL_26:
        sub_10004565C("repair_overlapped_extents: encryption is rolling for fs_oid 0x%llx\n", v8, v9, v10, v11, v12, v13, v14, v219);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = 16;
        }

        v22 = 605;
        v23 = 16;
        goto LABEL_51;
      }
    }

    else
    {
      if (v17)
      {
        goto LABEL_26;
      }

      if (v7[8] == 1)
      {
        v18 = sub_100046258(v7, a1, 2);
        if (v18)
        {
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v18;
          }

          goto LABEL_52;
        }
      }
    }

    v24 = sub_10003F8AC(a1, v15, 8, &v214, v11, v12, v13, v14);
    if (v24)
    {
      v32 = v24;
      sub_10004565C("repair_overlapped_extents: unable to init fsroot for fs_oid 0x%llx\n", v25, v26, v27, v28, v29, v30, v31, v219);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 606;
      goto LABEL_50;
    }

    v33 = sub_10002D394(a1, v15, &v213);
    if (v33)
    {
      v32 = v33;
      sub_10004565C("repair_overlapped_extents: unable to init extentref tree for fs_oid 0x%llx\n", v34, v35, v36, v37, v38, v39, v40, v219);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 607;
      goto LABEL_50;
    }

    v212 = v220 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    v41 = sub_1000397B8(v213, 0, 0, &v212, &v209, v209, v210, &v208);
    if (v41)
    {
      v32 = v41;
      v187 = v220;
      strerror(v41);
      sub_10004565C("repair_overlapped_extents: unable to load pext 0x%llx for fs_oid 0x%llx: %s\n", v49, v50, v51, v52, v53, v54, v55, v187);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 608;
      goto LABEL_50;
    }

    v188 = v211;
    sub_100045614("repair_overlapped_extents: allocate space for block_count 0x%llx\n", v42, v43, v44, v45, v46, v47, v48, v218);
    v56 = sub_100001D64(a1, v15, 3u, v218, &v207);
    if (v56)
    {
      v32 = v56;
      v64 = v218;
      strerror(v56);
      sub_10004565C("repair_overlapped_extents: unable to allocate space for block_count 0x%llx: %s\n", v65, v66, v67, v68, v69, v70, v71, v64);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 609;
      goto LABEL_50;
    }

    sub_100045614("repair_overlapped_extents: copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx\n", v57, v58, v59, v60, v61, v62, v63, v217);
    v82 = sub_100031B78(a1, v217, v207, v218);
    if (v82)
    {
      v90 = v82;
      v189 = v217;
      strerror(v82);
      sub_10004565C("repair_overlapped_extents: failed to copy paddr 0x%llx to paddr 0x%llx, block_count 0x%llx: %s\n", v91, v92, v93, v94, v95, v96, v97, v189);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v90;
      }

      goto LABEL_52;
    }

    v212 = v207 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
    sub_100045614("repair_overlapped_extents: insert target pext 0x%llx\n", v83, v84, v85, v86, v87, v88, v89, v207);
    v98 = sub_10003B12C(v213, 0, &v212, v209, v210, v208);
    if (v98)
    {
      v32 = v98;
      v190 = v207;
      strerror(v98);
      sub_10004565C("repair_overlapped_extents: unable to insert target pext 0x%llx for fs_oid 0x%llx: %s\n", v99, v100, v101, v102, v103, v104, v105, v190);
      if (v2)
      {
        v2 = v2;
      }

      else
      {
        v2 = v32;
      }

      v22 = 613;
LABEL_50:
      v23 = v32;
LABEL_51:
      sub_100049C40(v22, v23);
      goto LABEL_52;
    }

    v204 = v219;
    v205 = v220;
    v206 = 0;
    v200 = 16;
    v201 = 24;
    if (sub_1000397B8(dword_10009BAA8, 0, 1u, &v204, &v201, 0x18u, &v202, &v200))
    {
      v180 = 0;
LABEL_73:
      v212 = v220 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      sub_100045614("repair_overlapped_extents: remove source pext 0x%llx\n", v106, v107, v108, v109, v110, v111, v112, v220);
      v113 = sub_10003B708(v213, 0, &v212, v209);
      if (v113)
      {
        v114 = v113;
        v184 = v220;
        strerror(v113);
        sub_10004565C("repair_overlapped_extents: unable to remove source pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v115, v116, v117, v118, v119, v120, v121, v184);
        if (!v2)
        {
          LODWORD(v2) = v114;
        }

        sub_100049C40(0x269, v114);
      }

      v221 = v219;
      v222 = v220;
      sub_10003B708(dword_10009BA68, 0, &v221, 32);
      v122 = sub_100041EF0(a1, v15, v217, v218);
      if (v2)
      {
        v123 = v2;
      }

      else
      {
        v123 = v122;
      }

      if (v122)
      {
        v2 = v123;
      }

      else
      {
        v2 = v2;
      }

      goto LABEL_83;
    }

    v180 = 0;
    v134 = 0;
    while (1)
    {
      v221 = 0uLL;
      *&v222 = 0;
      v197 = 24;
      v198 = 16;
      if (v204 != v219 || v205 != v220)
      {
        break;
      }

      v185 = v134 + 1;
      v181 = v134;
      v199[0] = v206 & 0xFFFFFFFFFFFFFFFLL | 0x8000000000000000;
      v199[1] = v203;
      sub_100045614("repair_overlapped_extents: load fext 0x%llx 0x%llx\n", v106, v107, v108, v109, v110, v111, v112, v206);
      v135 = sub_1000397B8(v214, 0, 0, v199, &v198, v198, &v221, &v197);
      if (v135)
      {
        v143 = v135;
        v182 = v206;
        strerror(v135);
        sub_10004565C("repair_overlapped_extents: unable to load fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v144, v145, v146, v147, v148, v149, v150, v182);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v143;
        }

        v151 = 614;
      }

      else
      {
        *(&v221 + 1) = v207;
        sub_100045614("repair_overlapped_extents: update fext 0x%llx 0x%llx\n", v136, v137, v138, v139, v140, v141, v142, v206);
        v152 = sub_10003B12C(v214, 0, v199, v198, &v221, v197);
        if (!v152)
        {
          ++v180;
          v160 = v181;
          goto LABEL_106;
        }

        v143 = v152;
        v183 = v206;
        strerror(v152);
        sub_10004565C("repair_overlapped_extents: unable to update fext 0x%llx 0x%llx for fs_oid 0x%llx: %s\n", v153, v154, v155, v156, v157, v158, v159, v183);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v143;
        }

        v151 = 615;
      }

      sub_100049C40(v151, v143);
      v160 = v185;
LABEL_106:
      v195 = 16;
      v196 = 24;
      v161 = sub_1000397B8(dword_10009BAA8, 0, 2u, &v204, &v196, 0x18u, &v202, &v195);
      v134 = v160;
      if (v161)
      {
        goto LABEL_116;
      }
    }

    v160 = v134;
LABEL_116:
    if (!v160)
    {
      goto LABEL_73;
    }

    v124 = v188;
    if (v160 != v188)
    {
      v212 = v220 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      v211 = v160;
      sub_100045614("repair_overlapped_extents: update source pext 0x%llx\n", v106, v107, v108, v109, v110, v111, v112, v220);
      v171 = sub_10003B12C(v213, 0, &v212, v209, v210, v208);
      if (v171)
      {
        v172 = v171;
        v186 = v220;
        strerror(v171);
        sub_10004565C("repair_overlapped_extents: unable to update source pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v173, v174, v175, v176, v177, v178, v179, v186);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v172;
        }

        sub_100049C40(0x268, v172);
      }

LABEL_83:
      v124 = v188;
    }

    if (v180)
    {
      if (v180 != v124)
      {
        v212 = v207 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
        v211 = v180;
        sub_100045614("repair_overlapped_extents: update target pext 0x%llx\n", v106, v107, v108, v109, v110, v111, v112, v207);
        v125 = sub_10003B12C(v213, 0, &v212, v209, v210, v208);
        if (v125)
        {
          v126 = v125;
          v191 = v207;
          strerror(v125);
          sub_10004565C("repair_overlapped_extents: unable to target update target pext 0x%llx for fs_oid 0x%llx (refcnt leak): %s\n", v127, v128, v129, v130, v131, v132, v133, v191);
          if (v2)
          {
            v2 = v2;
          }

          else
          {
            v2 = v126;
          }

          sub_100049C40(0x26A, v126);
        }
      }

      v207 = 0;
    }

    else
    {
      v212 = v207 & 0xFFFFFFFFFFFFFFFLL | 0x2000000000000000;
      sub_100045614("repair_overlapped_extents: remove target pext 0x%llx\n", v106, v107, v108, v109, v110, v111, v112, v207);
      v162 = sub_10003B708(v213, 0, &v212, v209);
      if (v162)
      {
        v163 = v162;
        v192 = v207;
        strerror(v162);
        sub_10004565C("repair_overlapped_extents: unable to remove target pext 0x%llx for fs_oid 0x%llx (pext leak): %s\n", v164, v165, v166, v167, v168, v169, v170, v192);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v163;
        }

        sub_100049C40(0x26B, v163);
      }
    }

    sub_100049BF0();
LABEL_52:
    if (v207)
    {
      sub_100045614("repair_overlapped_extents: free space for target_paddr 0x%llx block_count 0x%llx\n", v19, v20, v21, v11, v12, v13, v14, v207);
      v72 = sub_100002C74(a1, v15, v207, v218);
      if (v72)
      {
        v73 = v72;
        v74 = v207;
        strerror(v72);
        sub_10004565C("repair_overlapped_extents: unable to free space for target_paddr 0x%llx block_count 0x%llx: %s\n", v75, v76, v77, v78, v79, v80, v81, v74);
        if (v2)
        {
          v2 = v2;
        }

        else
        {
          v2 = v73;
        }

        sub_100049C40(0x26C, v73);
      }
    }

    if (v15)
    {
      sub_100046458(v15);
    }

LABEL_60:
    v193 = 16;
    v194 = 32;
  }

  while (!sub_1000397B8(dword_10009BA68, 0, 2u, &v219, &v194, 0x20u, &v217, &v193));
  return v2;
}

uint64_t sub_100041EF0(uint64_t *a1, int8x16_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  memset(v51, 0, sizeof(v51));
  v49 = 0;
  v50 = 0;
  v8 = sub_10001E8F4(&unk_10009B430, a3, a4, 0);
  if (v8)
  {
    v9 = v8;
    strerror(v8);
    sub_100045744("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v10, v11, v12, v13, v14, v15, v16, v5);
    sub_100049C40(0x26D, v9);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 16;
  v47 = 32;
  if (!sub_1000397B8(dword_10009BA68, 0, 1u, v51, &v47, 0x20u, &v49, &v46))
  {
    v17 = v4 + v5;
    do
    {
      if (v17 > v49 && v50 + v49 > v5)
      {
        if (v5 <= v49)
        {
          v19 = v49;
        }

        else
        {
          v19 = v5;
        }

        if (v17 - v19 >= v49 - v19 + v50)
        {
          v20 = v49 - v19 + v50;
        }

        else
        {
          v20 = v17 - v19;
        }

        sub_10004217C(v19, v20, WORD6(v51[0]), HIWORD(v51[0]), 0);
      }

      v44 = 16;
      v45 = 32;
    }

    while (!sub_1000397B8(dword_10009BA68, 0, 2u, v51, &v45, 0x20u, &v49, &v44));
  }

  v21 = 0;
  if (sub_10001E7C8(&unk_10009B430, v5, v4, &v48))
  {
    do
    {
      v43 = 0xAAAAAAAAAAAAAAAALL;
      v22 = v4 + v5;
      v23 = v4 + v5 - v48;
      if (sub_10001E6A4(&unk_10009B430, v48, v23, &v43))
      {
        v23 = v43 - v48;
      }

      sub_100045614("free_overlapped_range: free space for source_paddr 0x%llx block_count 0x%llx\n", v24, v25, v26, v27, v28, v29, v30, v48);
      v31 = sub_100002C74(a1, a2, v48, v23);
      if (v31)
      {
        v32 = v31 == 17;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v33 = v31;
        v34 = v48;
        strerror(v31);
        sub_10004565C("free_overlapped_range: unable to free space for source_paddr 0x%llx block_count 0x%llx (leak): %s\n", v35, v36, v37, v38, v39, v40, v41, v34);
        if (v21)
        {
          v21 = v21;
        }

        else
        {
          v21 = v33;
        }

        sub_100049C40(0x26E, v33);
      }

      v5 = v48 + v23;
      v4 = v22 - v5;
    }

    while ((sub_10001E7C8(&unk_10009B430, v5, v22 - v5, &v48) & 1) != 0);
  }

  return v21;
}

uint64_t sub_10004213C(uint64_t a1, uint64_t *a2)
{
  v2 = 100;
  for (i = &qword_10009A440; ; i += 2)
  {
    v4 = *(i - 1);
    if (!v4)
    {
      return 2;
    }

    if (v4 == a1)
    {
      break;
    }

    if (!--v2)
    {
      return 2;
    }
  }

  result = 0;
  *a2 = *i;
  return result;
}

uint64_t sub_10004217C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5)
{
  v8 = 208;
  if (!a5)
  {
    v8 = 0;
  }

  result = sub_10001E8F4(&unk_10009B430 + v8, a1, a2, 1);
  if (!result)
  {
    if (*(qword_10009BA60 + 43) == 1)
    {

      return sub_100042220(a3, a4, a2, v10, v11, v12, v13, v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100042220(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 || a2 != 15)
  {
    if (a1 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a2;
    }

    if (a1 > 3)
    {
      v10 = a1;
    }

    if (v10 >= 0x25)
    {
      sub_100045744("Invalid object type/subtype (type : %u) (subtype : %u)\n", a2, a3, a4, a5, a6, a7, a8, a1);
      v9 = 9;
    }

    else
    {
      v9 = dword_100077018[v10];
    }
  }

  else
  {
    v9 = 8;
  }

  *(&xmmword_10009AA78 + v9) += a3;
  return 0;
}

uint64_t sub_1000422B0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 208;
  if (!a3)
  {
    v3 = 0;
  }

  return sub_10001E8F4(&unk_10009B430 + v3, a1, a2, 0);
}

uint64_t sub_1000422DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, __int16 a8, unsigned int a9, unsigned int a10)
{
  if (*(qword_10009BA60 + 44) == 1)
  {

    return sub_100041258(a2, a3, a4, a5, a6, a7, a8, a9, 1);
  }

  v18 = sub_10004217C(a2, a3, a8, a9, (a10 >> 3) & 1);
  if (v18)
  {
    if (v18 != 12)
    {
      if (v18 == 17)
      {
        sub_100049C40(0x451, 17);
        sub_100041190(a2, a3, a4, a5, a6, a7, a8, a9);
        goto LABEL_11;
      }

      strerror(v18);
      sub_100045744("object oid %llu/xid %llu/type 0x%x/subtype 0x%x: unable to mark range %llu+%llu allocated for space verification: %s\n", v26, v27, v28, v29, v30, v31, v32, a6);
    }

    sub_100049C40(0x437, -7);
    byte_10007C6B8 = 0;
  }

LABEL_11:
  if (a4)
  {
    v33 = &qword_10009A440;
    v34 = 100;
    do
    {
      v35 = *(v33 - 1);
      if (!v35)
      {
        break;
      }

      if (v35 == a4)
      {
        *v33 += a3;
        goto LABEL_19;
      }

      v33 += 2;
      --v34;
    }

    while (v34);
    if ((a10 & 4) == 0)
    {
      sub_100045744("unable to mark allocated blocks for volume oid %llu\n", v19, v20, v21, v22, v23, v24, v25, a4);
    }
  }

LABEL_19:

  return sub_10000D218(a3, a4 != 0);
}

char *sub_1000424B0(uint64_t a1)
{
  v2 = sub_1000422DC(a1, 0, 1, 0, 0x40000000, 0, 0, 1, &_mh_execute_header, &_mh_execute_header >> 32);
  v59 = a1;
  v60 = 0xC00000000;
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  v5 = *(v3 + 112);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = sub_100031608(a1, v5, sub_100042738, &v59);
    if (v6)
    {
      byte_10007C6B8 = 0;
      v14 = *(a1 + 8);
      v51 = *(v14 + 112);
      v55 = *(v14 + 104);
      sub_100045744("object (oid 0x%llx): Unable to mark nx checkpoint desc range (0x%llx + %u) allocated for space verification\n", v7, v8, v9, v10, v11, v12, v13, 0);
      v6 = sub_100049C40(0x1D1, -7);
    }
  }

  else
  {
    v6 = sub_1000422DC(v2, v5, v4, 0, 0x40000000, v5, 0, 0, 0xCu, 1u);
  }

  v15 = *(a1 + 8);
  v16 = *(v15 + 108);
  v17 = *(v15 + 120);
  if ((v16 & 0x80000000) != 0)
  {
    v18 = sub_100031608(a1, v17, sub_100042738, &v59);
    if (v18)
    {
      byte_10007C6B8 = 0;
      v26 = *(a1 + 8);
      v52 = *(v26 + 120);
      v56 = *(v26 + 108);
      sub_100045744("object (oid 0x%llx): Unable to mark nx checkpoint data range (0x%llx + %u) allocated for space verification\n", v19, v20, v21, v22, v23, v24, v25, 0);
      v18 = sub_100049C40(0x1D2, -7);
    }
  }

  else
  {
    v18 = sub_1000422DC(v6, v17, v16, 0, 0x40000000, v17, 0, v60, HIDWORD(v60), 1u);
  }

  v60 = 8;
  v27 = *(a1 + 24);
  v28 = *(v27 + 164);
  v29 = *(v27 + 168);
  if ((v28 & 0x80000000) != 0)
  {
    v30 = sub_100031608(a1, v29, sub_100042738, &v59);
    if (v30)
    {
      byte_10007C6B8 = 0;
      v38 = *(a1 + 24);
      v53 = *(v38 + 168);
      v57 = *(v38 + 164);
      sub_100045744("object (oid 0x%llx): Unable to mark spaceman ip bitmap range (0x%llx + %u) allocated for space verification\n", v31, v32, v33, v34, v35, v36, v37, 0);
      v30 = sub_100049C40(0x1D3, -7);
    }
  }

  else
  {
    v30 = sub_1000422DC(v18, v29, v28, 0, 0x40000000, v29, 0, 8, &_mh_execute_header, &_mh_execute_header >> 32);
  }

  v39 = *(a1 + 24);
  v40 = *(v39 + 152);
  v41 = *(v39 + 176);
  if ((v40 & 0x8000000000000000) == 0)
  {
    return sub_1000422DC(v30, v41, v40, 0, 0x40000000, v41, 0, v60, HIDWORD(v60), 1u);
  }

  result = sub_100031608(a1, v41, sub_100042738, &v59);
  if (result)
  {
    byte_10007C6B8 = 0;
    v50 = *(a1 + 24);
    v54 = *(v50 + 176);
    v58 = *(v50 + 152);
    sub_100045744("object (oid 0x%llx): Unable to mark spaceman ip range (0x%llx + %llu) allocated for space verification\n", v43, v44, v45, v46, v47, v48, v49, 0);
    return sub_100049C40(0x1D4, -7);
  }

  return result;
}

uint64_t sub_10004277C(uint64_t a1, int a2, uint64_t a3, char *__s1, char *__s2, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a8, _BYTE *a9, _DWORD *a10)
{
  v82 = a3;
  v80 = a2;
  v77 = a10;
  v16 = memcmp(__s1, __s2, (a6 + 7) >> 3);
  if (!v16)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (a7)
    {
LABEL_88:
      v66 = v26;
      v67 = a7(a1, v23, v24, 1, a8);
      if (v67)
      {
        *v77 = v67;
      }

      a7(a1, v25, v66, 2, a8);
    }

    return 0;
  }

  v73 = a8;
  v17 = 8 * ((a6 + 63) >> 6);
  v18 = __chkstk_darwin(v16);
  v19 = (v17 + 15) & 0x3FFFFFFFFFFFFFF0;
  v20 = &v69 - v19;
  if (v21 > 0x3F)
  {
    v27 = memset(&v69 - v19, 170, 8 * ((a6 + 63) >> 6));
    __chkstk_darwin(v27);
    v22 = &v69 - v19;
    memset(&v69 - v19, 170, 8 * ((a6 + 63) >> 6));
    v28 = 0;
    do
    {
      v29 = *&__s1[v28];
      v30 = *&__s2[v28];
      *&v20[v28] = v29 & ~v30;
      *&v22[v28] = v30 & ~v29;
      v28 += 8;
    }

    while (v17 != v28);
  }

  else
  {
    __chkstk_darwin(v18);
    v22 = &v69 - v19;
  }

  v86 = 0;
  a8 = v73;
  if (!a6)
  {
    if (byte_10007C6B8 == 1)
    {
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v25 = 0;
    v26 = 0;
LABEL_87:
    if (a7)
    {
      goto LABEL_88;
    }

    return 0;
  }

  v71 = &v69;
  v72 = v22;
  v78 = a1;
  v24 = 0;
  v81 = 0;
  do
  {
    v31 = sub_100042E28(v82, v20, &v86, a6);
    v33 = v31;
    v34 = v32;
    if (a9 && v32)
    {
      *a9 = 1;
    }

    if (a7)
    {
      if (v24)
      {
        if (v24 + v81 == v31)
        {
          v24 += v32;
          continue;
        }

        v35 = (a7)(v78);
        if (v35)
        {
          *v77 = v35;
        }
      }

      v81 = v33;
      v24 = v34;
    }
  }

  while (v86 < a6);
  a1 = v78;
  if ((byte_10007C6B8 & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    v23 = v81;
    goto LABEL_87;
  }

  v26 = 0;
  v79 = 0;
  v83 = 0;
  while (1)
  {
    v74 = v26;
    v36 = sub_100042E28(v82, v72, &v83, a6);
    v38 = v37;
    v87 = 0;
    v88 = 8;
    v39 = malloc_type_calloc(8uLL, 0x18uLL, 0x100004057661CB1uLL);
    v86 = v39;
    if (!v39)
    {
      return 12;
    }

    *v39 = v36;
    v39[1] = v38;
    v41 = v80;
    *(v39 + 16) = v80;
    HIDWORD(v87) = 1;
    if ((v41 & 1) == 0)
    {
      v56 = *(a1 + 24);
      v57 = *(v56 + 152);
      v58 = *(v56 + 176);
      if ((v57 & 0x8000000000000000) != 0)
      {
        v59 = sub_100031608(a1, v58, sub_1000442F0, &v86);
      }

      else
      {
        v89 = *(v56 + 176);
        v90 = v57;
        v59 = sub_1000442F0(v39, v58, &v89, v40, &v86);
      }

      v50 = v59;
      v26 = v74;
      if (v59)
      {
        v43 = 0;
        v75 = 1;
        goto LABEL_57;
      }

      if (SHIDWORD(v87) < 1)
      {
        v43 = 0;
        v50 = 0;
        v75 = 1;
        v26 = v74;
        goto LABEL_57;
      }
    }

    v70 = v36;
    v69 = v38;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v75 = 1;
LABEL_26:
    v76 = v44;
    v45 = &v86[3 * v42];
    v46 = *v45;
    v47 = *(v45 + 1);
    v89 = 0;
    v90 = v46;
    v85 = 0xAAAAAAAAAAAAAAAALL;
    v48 = v45[16];
    v49 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 0xFFFFFFFE);
    if (v49 == 2)
    {
      v49 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 1u);
      if (v49 == 2)
      {
        goto LABEL_35;
      }
    }

    v50 = v49;
    if (v49)
    {
      goto LABEL_46;
    }

    v51 = v47 + v46;
    v52 = v90;
    if (v90 >= v51)
    {
      goto LABEL_35;
    }

    v53 = 0;
    while (1)
    {
      LODWORD(v87) = v42;
      BYTE5(v88) = v80;
      v84 = -86;
      v54 = sub_100002C7C(v86[3 * v42], v86[3 * v42 + 1], v52, v85, &v84, sub_100044454, &v86);
      if (v54)
      {
        return v54;
      }

      v53 |= v84;
      v55 = sub_1000443B4(v48 ^ 1u, &v89, &v85, 2u);
      if (v55)
      {
        break;
      }

      v52 = v90;
      if (v90 >= v51)
      {
        if ((v53 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_41:
        v44 = v76;
LABEL_42:
        if (++v42 >= SHIDWORD(v87))
        {
          goto LABEL_55;
        }

        goto LABEL_26;
      }
    }

    v50 = v55;
    if (v55 == 2)
    {
      if (v53)
      {
        goto LABEL_41;
      }

LABEL_35:
      v44 = malloc_type_malloc(0x18uLL, 0x10200403ED2C137uLL);
      if (v44)
      {
        *v44 = *&v86[3 * v42];
        v44[2] = 0;
        v75 = 0;
        if (v43)
        {
          v76[2] = v44;
        }

        else
        {
          v43 = v44;
        }

        goto LABEL_42;
      }

      v75 = 0;
LABEL_55:
      v50 = 0;
      a8 = v73;
      v26 = v74;
      a1 = v78;
      v38 = v69;
LABEL_56:
      v36 = v70;
    }

    else
    {
LABEL_46:
      a8 = v73;
      v26 = v74;
      v38 = v69;
      v36 = v70;
      a1 = v78;
      if (v43)
      {
        do
        {
          v60 = v43[2];
          free(v43);
          v43 = v60;
        }

        while (v60);
        v26 = v74;
        goto LABEL_56;
      }
    }

LABEL_57:
    if (v86)
    {
      free(v86);
      v26 = v74;
    }

    if (v50)
    {
      return v50;
    }

    if ((v75 & 1) == 0)
    {
      v86 = v36;
      v87 = v38;
      v88 = 0;
      if (!v43)
      {
        v43 = &v86;
      }

      while (1)
      {
        v61 = v43[2];
        if (a9 && v43[1])
        {
          *a9 = 1;
        }

        if (!a7)
        {
          goto LABEL_75;
        }

        v63 = *v43;
        v62 = v43[1];
        if (!v26)
        {
          goto LABEL_74;
        }

        if (v26 + v79 != v63)
        {
          break;
        }

        v26 += v62;
LABEL_75:
        if (v43 != &v86)
        {
          v64 = v43;
          v65 = v26;
          free(v64);
          v26 = v65;
        }

        v43 = v61;
        if (!v61)
        {
          goto LABEL_78;
        }
      }

      (a7)(a1);
LABEL_74:
      v79 = v63;
      v26 = v62;
      goto LABEL_75;
    }

    if ((v80 & 1) == 0 && byte_10009A433 == 1)
    {
      *(&xmmword_10009AA78 + 1) += v38;
    }

LABEL_78:
    if (v83 >= a6)
    {
      v23 = v81;
      v25 = v79;
      goto LABEL_87;
    }
  }
}

uint64_t sub_100042E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *a3;
  v14 = 0;
  v15 = v8;
  if (sub_10000856C(1, a2, v8, a4 - v8, &v15))
  {
    v9 = v15;
  }

  else
  {
    v15 = a4;
    v9 = a4;
  }

  v10 = sub_10000856C(0, a2, v9, a4 - v9, &v14);
  v11 = v14;
  v12 = v15;
  if (!v10)
  {
    v11 = a4;
  }

  *a3 = v11;
  return v12 + a1;
}

uint64_t sub_100042EBC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, char *a5, uint64_t a6, _DWORD *a7)
{
  result = sub_10001E4B8(&unk_10009B500, a2 & 0xFFFFFFFFFFFFFFC0, (a2 + a3 - (a2 & 0xFFFFFFFFFFFFFFC0) + 63) & 0xFFFFFFFFFFFFFFC0, a4);
  if (!result)
  {
    sub_100008A70(a4, (8 * dword_10009A428 + 128) >> 6, a2 & 0x3F);
    return sub_10004277C(a1, 1, a2, a4, a5, a3, sub_100042F8C, a6, 0, a7);
  }

  return result;
}

uint64_t sub_100042F8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v11 = a4;
  v14 = *a5;
  if (a4 == 1)
  {
    v15 = "underallocation";
  }

  else
  {
    v15 = "overallocation";
  }

  if (a4 == 1)
  {
    sub_10004565C("underallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, a2);
    sub_100049C40(0x4F4, 92);
  }

  else
  {
    sub_100045744("overallocation detected in internal pool: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v8 = 92;
    sub_100049C40(0x4F5, 92);
    if (*(qword_10009BA60 + 45) != 1)
    {
      return v8;
    }
  }

  v53 = *a5;
  if (!sub_10004758C(qword_10009BA58, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v16, v17, v18, v19, v20, v21, v15))
  {
    return 92;
  }

  v22 = malloc_type_calloc(1uLL, *(a1[1] + 36), 0x4921D8E2uLL);
  if (v22)
  {
    v30 = v22;
    v31 = *a5;
    v32 = sub_10002F3CC(*a1);
    if (v32)
    {
      v8 = v32;
      sub_10004565C("Failed to fix %s\n", v33, v34, v35, v36, v37, v38, v39, v15);
      v40 = 1271;
    }

    else
    {
      v41 = a5[2] + a2;
      v42 = v41 - a5[1];
      if (v11 == 1)
      {
        sub_1000083A8(v30, v42, a3, v41);
      }

      else
      {
        sub_10000849C(v30, v42, a3);
      }

      v43 = *a5;
      v8 = sub_10002F4AC(*a1);
      if (!v8)
      {
        free(v30);
        sub_100049BF0();
        return v8;
      }

      sub_10004565C("Failed to fix %s\n", v44, v45, v46, v47, v48, v49, v50, v15);
      v40 = 1272;
    }

    sub_100049C40(v40, v8);
    free(v30);
  }

  else
  {
    sub_100045744("failed to allocate memory for the bitmap block\n", v23, v24, v25, v26, v27, v28, v29, v52);
    v8 = 12;
    sub_100049C40(0x4F6, 12);
  }

  return v8;
}

uint64_t sub_1000431A4(uint64_t *a1)
{
  v65 = 0;
  v2 = a1[3];
  v3 = *(v2 + 328);
  v4 = dword_10009A428;
  LODWORD(v5) = *(v2 + 160);
  v64 = 0;
  v6 = malloc_type_calloc(1uLL, dword_10009A428, 0x32792C78uLL);
  v7 = malloc_type_calloc(1uLL, dword_10009A428 + 16, 0x100004000313F17uLL);
  if (v6)
  {
    v15 = v7 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    sub_100045744("failed to allocate memory for the bitmap block\n", v8, v9, v10, v11, v12, v13, v14, v54);
    v5 = 12;
    v16 = 1273;
    v17 = 12;
    goto LABEL_7;
  }

  v18 = v7;
  if (!v5)
  {
    goto LABEL_49;
  }

  v19 = 0;
  v57 = v2 + v3;
  v55 = v5;
  v56 = 8 * v4;
  v58 = (8 * v4) >> 6;
  while (1)
  {
    v20 = *(v57 + 2 * v19);
    v21 = a1[3];
    v22 = *(v21 + 164);
    if ((v22 & 0x7FFFFFFFu) <= v20)
    {
      LODWORD(v5) = 22;
LABEL_48:
      sub_10004565C("error (%d) looking up spaceman IP bitmap block at index %u\n", v8, v20, v10, v11, v12, v13, v14, v5);
      sub_100049C40(0x4FA, v5);
LABEL_49:
      free(v6);
      free(v18);
      if (v65)
      {
        return v65;
      }

      else
      {
        return v5;
      }
    }

    v23 = *(v21 + 168);
    if ((v22 & 0x80000000) == 0)
    {
      v64 = v23 + v20;
      goto LABEL_14;
    }

    v24 = sub_100031504(a1, v23, v20, &v64, 0);
    if (v24)
    {
      LODWORD(v5) = v24;
      goto LABEL_48;
    }

LABEL_14:
    v25 = sub_10002F3CC(*a1);
    if (v25)
    {
      LODWORD(v5) = v25;
      sub_10004565C("error (%d) reading spaceman IP bitmap block at index %u, addr 0x%llx\n", v26, v27, v28, v29, v30, v31, v32, v25);
      sub_100049C40(0x4FB, v5);
      goto LABEL_49;
    }

    bzero(v18, *(a1[1] + 36));
    if (v19 == *(v2 + 160) - 1)
    {
      v34 = *(v2 + 152);
      v35 = (v34 & 0x7FFFFFFFFFFFFFFFuLL) % (8 * *(v2 + 32));
    }

    else
    {
      v35 = (8 * *(v2 + 32));
      v34 = *(v2 + 152);
    }

    v62 = 0;
    v63 = 0;
    v59 = v64;
    v60 = 0;
    v61 = 0;
    if (v34 < 0)
    {
      break;
    }

    v36 = v19 * v56;
    v37 = a1[3];
    v38 = *(v37 + 152);
    if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) <= v36)
    {
      v52 = 22;
LABEL_54:
      sub_10004565C("error (%d) looking up spaceman IP block address at index %u\n", v8, v33, v10, v11, v12, v13, v14, v52);
      sub_100049C40(0x500, v52);
      return v52;
    }

    v39 = *(v37 + 176);
    if (v38 < 0)
    {
      v51 = sub_100031504(a1, v39, v19 * v56, &v63, &v62);
      if (v51)
      {
        v52 = v51;
        goto LABEL_54;
      }

      v40 = v63;
    }

    else
    {
      v40 = v39 + v36;
      v63 = v40;
    }

    v60 = v40;
    v50 = sub_100042EBC(a1, v40, v35, v18, v6, &v59, &v65);
    if (v50)
    {
LABEL_40:
      LODWORD(v5) = v50;
      goto LABEL_49;
    }

LABEL_38:
    if (++v19 == v55)
    {
      LODWORD(v5) = 0;
      goto LABEL_49;
    }
  }

  if (!v35)
  {
    goto LABEL_38;
  }

  v41 = 0;
  v42 = 0;
  v43 = v19 * v56;
  while (2)
  {
    v44 = a1[3];
    v45 = *(v44 + 152);
    if ((v45 & 0x7FFFFFFFFFFFFFFFuLL) <= v42 + v43)
    {
      v5 = 22;
      goto LABEL_45;
    }

    v46 = *(v44 + 176);
    if ((v45 & 0x8000000000000000) == 0)
    {
      v47 = v46 + v42 + v43;
      v63 = v47;
LABEL_29:
      if (v41 >= v35 - v42)
      {
        v49 = v35 - v42;
      }

      else
      {
        v49 = v41;
      }

      v61 = v42;
      v62 = v49;
      v60 = v47;
      v50 = sub_100042EBC(a1, v47, v49, v18, v6, &v59, &v65);
      if (v50)
      {
        goto LABEL_40;
      }

      sub_100008A70(v6, v58, v62);
      v41 = v62;
      v42 += v62;
      if (v42 >= v35)
      {
        goto LABEL_38;
      }

      continue;
    }

    break;
  }

  v48 = sub_100031504(a1, v46, v42 + v43, &v63, &v62);
  if (!v48)
  {
    v41 = v62;
    v47 = v63;
    goto LABEL_29;
  }

  v5 = v48;
LABEL_45:
  sub_10004565C("error (%d) looking up spaceman IP block address at index %llu\n", v8, v33, v10, v11, v12, v13, v14, v5);
  v16 = 1276;
  v17 = v5;
LABEL_7:
  sub_100049C40(v16, v17);
  return v5;
}

uint64_t sub_10004355C(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), char **a4, int a5)
{
  v10 = a1[3];
  v109 = 0;
  v108 = 0;
  v106 = 0;
  v11 = *(v10 + 36);
  v12 = *(v10 + 48);
  v105 = 0u;
  memset(v104, 0, sizeof(v104));
  if (byte_10009B480 == 1)
  {
    byte_10007C6B8 = 0;
  }

  if (!a3 && !a5)
  {
    return 0;
  }

  v14 = sub_100043AB4(a1);
  if (v14)
  {
    v13 = v14;
    v15 = strerror(v14);
    sub_10004565C("error (%s) failed to populate free queue trees \n", v16, v17, v18, v19, v20, v21, v22, v15);
    sub_100049C40(0x4FE, v13);
    return v13;
  }

  v99 = a2;
  v23 = malloc_type_malloc(*(a1[1] + 36), 0xA326E274uLL);
  v24 = malloc_type_malloc(*(a1[1] + 36), 0xCE3BE2C4uLL);
  v107 = v24;
  if (!v23 || !v24)
  {
    sub_100045744("Space Verification: failed to allocate memory for the bitmap block\n", v25, v26, v27, v28, v29, v30, v31, v93);
    v70 = 12;
    sub_100049C40(0x1D9, 12);
    goto LABEL_58;
  }

  if (v99)
  {
    *v99 = 0;
  }

  v94 = a5;
  if (v12)
  {
    v97 = a3;
    v98 = v12;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = &v100;
    if (a4)
    {
      v35 = a4;
    }

    v95 = v23;
    v96 = v35;
    while (1)
    {
      if (!v32 || v107 && BYTE8(v105) == 1)
      {
        v36 = sub_10000AAEC(a1, v34 / *(v10 + 36), &v107);
        if (v36)
        {
          v70 = v36;
          v74 = strerror(v36);
          sub_10004565C("error (%s) failed to get cib for chunk index %llu \n", v75, v76, v77, v78, v79, v80, v81, v74);
          goto LABEL_58;
        }

        v37 = sub_10000B220(v104, a1, v107, &v108, &v106);
        v12 = v98;
        if (v37)
        {
          goto LABEL_46;
        }
      }

      bzero(v23, *(a1[1] + 36));
      if (v12 + v32 >= v11)
      {
        v38 = v11;
      }

      else
      {
        v38 = v12 + v32;
      }

      v37 = sub_10001E4B8(&unk_10009B430, v34, (v38 + 63) & 0x1FFFFFFC0, v23);
      if (v37)
      {
        goto LABEL_46;
      }

      v100 = v108;
      v102 = -1431655766;
      v101 = v106;
      v103 = v107;
      v37 = sub_10004277C(a1, 0, v34, v23, v108, v38, v97, v96, &byte_10009A432, &v109);
      if (v37)
      {
        goto LABEL_46;
      }

      v39 = sub_1000085F0(v108, 0, 0, v38);
      v46 = v39;
      if (v99)
      {
        *v99 += v38 - v39;
      }

      v47 = a1[1];
      v48 = *(v47 + 1248);
      if (v48)
      {
        v110[0] = 0xAAAAAAAAAAAAAAAALL;
        v49 = sub_10004F16C(v34, v38, *(v47 + 1240), v48, v110);
        v50 = v46;
        if (v49)
        {
          v50 = v46 - sub_1000085F0(v108, 0, v32 + v110[0], v32 + v110[0] + v49);
        }
      }

      else
      {
        v50 = v39;
      }

      v51 = v107;
      v52 = &v107[32 * v106];
      v54 = *(v52 + 15);
      v53 = v52 + 60;
      v55 = v54 & 0xFFFFF;
      v56 = v46 & 0xFFFFF;
      if (v56 != v55)
      {
        byte_10009A432 = 1;
        if (v94)
        {
          sub_10004565C("cib: ci_free_count (%u) is not valid (%llu) (ci_addr 0x%llx)\n", v40, v41, v48, v42, v43, v44, v45, v55);
          if (!sub_10004758C(qword_10009BA58, "Fix ci_free_count (%u)? ", v57, v58, v59, v60, v61, v62, *v53))
          {
            v67 = 92;
            v68 = 676;
            v69 = 92;
            goto LABEL_38;
          }

          *v53 = v56 | (*v53 >> 20);
          v65 = *(a1[1] + 36);
          v110[0] = v51[1];
          v110[1] = v65;
          v110[2] = 0;
          v66 = sub_100026A10(a1, 0, v51, v110, v63, v64);
          if (v66)
          {
            v67 = v66;
            v68 = 675;
            v69 = v67;
LABEL_38:
            sub_100049C40(v68, v69);
            v109 = v67;
            goto LABEL_40;
          }

          sub_100049BF0();
        }
      }

LABEL_40:
      v23 = v95;
      if (v108)
      {
        free(v108);
        v108 = 0;
      }

      v37 = sub_10000B0A8(v104, &v108, &v106);
      v12 = v98;
      if (v37)
      {
LABEL_46:
        v70 = v37;
        goto LABEL_58;
      }

      v33 += v50;
      v34 += v11;
      v32 -= v11;
      if (v34 >= v98)
      {
        goto LABEL_48;
      }
    }
  }

  v33 = 0;
LABEL_48:
  if (*(v10 + 72) == v33)
  {
    v70 = 0;
    v71 = v94;
  }

  else
  {
    byte_10009A432 = 1;
    v71 = v94;
    if (!v94)
    {
      v70 = 0;
      goto LABEL_58;
    }

    v72 = sub_100043DC4(a1, v33, v26, v27, v28, v29, v30, v31);
    v70 = v72;
    if (v72)
    {
      v109 = v72;
    }
  }

  v73 = *(v10 + 240);
  if (v73 > *(v10 + 48) - v33)
  {
    byte_10009A432 = 1;
    if (v71)
    {
      sub_10004565C("sm : free queue tree has sfq_count (%llu) greater than available block count (%llu)\n", v25, v26, v27, v28, v29, v30, v31, v73);
      sub_100049C40(0x307, 92);
      v109 = 92;
    }
  }

LABEL_58:
  if (v109)
  {
    v82 = 1;
  }

  else
  {
    v82 = v70 == 0;
  }

  if (v82)
  {
    LODWORD(v13) = v109;
  }

  else
  {
    LODWORD(v13) = v70;
  }

  v83 = sub_10000B318(v104);
  v84 = v83;
  if (v83)
  {
    strerror(v83);
    sub_10004565C("failed to finish pending reads from the bitmap iterator: %d (%s)", v85, v86, v87, v88, v89, v90, v91, v84);
    sub_100049C40(0x5E4, v84);
  }

  if (v108)
  {
    free(v108);
    v108 = 0;
  }

  if (v23)
  {
    free(v23);
  }

  if (v107)
  {
    free(v107);
  }

  byte_10009A433 = 0;
  if (v13)
  {
    return v13;
  }

  else
  {
    return v84;
  }
}

uint64_t sub_100043AB4(uint64_t *a1)
{
  if (byte_10009A431 != 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = a1 + 49;
  for (i = &unk_10009BAE8; ; i += 64)
  {
    v51 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50[3] = v5;
    v50[4] = v5;
    v50[1] = v5;
    v50[2] = v5;
    v50[0] = v5;
    v49 = v2 == 0;
    v6 = sub_10002CE54(a1, v2, &v51);
    if (v6)
    {
      return v6;
    }

    if (*(v51 + 56))
    {
      v7 = sub_10003A444(v50, v51, 0, 0, 0);
      if (v7 || (v7 = sub_10002C648(v50, sub_100044558, &v49, 0), v7))
      {
        v14 = v7;
        v15 = strerror(v7);
        sub_10004565C("failed to iterate the spaceman free queue tree: %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
        sub_100049C40(0x314, v14);
        return v14;
      }

      if ((v49 & 2) != 0)
      {
        break;
      }
    }

LABEL_16:
    if (++v2 == 3)
    {
      v14 = 0;
      byte_10009A431 = 0;
      return v14;
    }
  }

  v8 = v51;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58[2] = v9;
  v58[3] = v9;
  v58[0] = v9;
  v58[1] = v9;
  v57[3] = v9;
  v57[4] = v9;
  v57[1] = v9;
  v57[2] = v9;
  v56[4] = v9;
  v57[0] = v9;
  v56[2] = v9;
  v56[3] = v9;
  v56[0] = v9;
  v56[1] = v9;
  v55[3] = v9;
  v55[4] = v9;
  v55[1] = v9;
  v55[2] = v9;
  v55[0] = v9;
  if (!sub_100039748(v58, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 8, 0, 0, sub_1000410C0))
  {
    sub_10003B84C(v58, 0, 64);
  }

  v10 = sub_10003A444(v57, v8, 0, 0, 0);
  if (v10 || (v10 = sub_10002C648(v57, sub_1000447A4, v58, 0), v10))
  {
    v14 = v10;
    v23 = strerror(v10);
    sub_10004565C("error copying on-disk free queue tree into reordered tree in memory: %s\n", v24, v25, v26, v27, v28, v29, v30, v23);
    v31 = 923;
    goto LABEL_27;
  }

  v52 = v3;
  v54 = -1431655766;
  v53 = v2;
  v11 = sub_10003A444(v56, v58, 0, 0, 0);
  if (v11)
  {
    v14 = v11;
LABEL_25:
    v32 = strerror(v14);
    sub_10004565C("unable to init iterators for free queue tree repair: %s\n", v33, v34, v35, v36, v37, v38, v39, v32);
    v31 = 924;
    goto LABEL_27;
  }

  v12 = sub_10003A444(v55, i, 0, 0, 0);
  if (v12)
  {
    v14 = v12;
    if (*&v56[0])
    {
      (*&v56[0])(v56);
    }

    goto LABEL_25;
  }

  v13 = sub_10002C6E8(v56, v55, sub_100044810, &v52);
  if (!v13)
  {
    sub_10003B928(v58, 0);
    goto LABEL_16;
  }

  v14 = v13;
  v40 = strerror(v13);
  sub_10004565C("error iterating trees during free queue tree repair: %s\n", v41, v42, v43, v44, v45, v46, v47, v40);
  v31 = 925;
LABEL_27:
  sub_100049C40(v31, v14);
  sub_10003B928(v58, 0);
  return v14;
}

uint64_t sub_100043DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10004565C("sm: sm_free_count (%llu) is not valid (%llu) (sm_dev %d)\n", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 24) + 72));
  if (sub_10004758C(qword_10009BA58, "Fix sm_free_count (%llu)? ", v10, v11, v12, v13, v14, v15, *(*(a1 + 24) + 72)))
  {
    v17 = *(a1 + 24);
    *(v17 + 72) = a2;
    v22 = *(a1 + 88);
    v23 = *(a1 + 104);
    v18 = sub_100026A10(a1, 0, v17, &v22, v22, v16);
    if (!v18)
    {
      sub_100049BF0();
      return v18;
    }

    v19 = 677;
    v20 = v18;
  }

  else
  {
    v18 = 92;
    v19 = 678;
    v20 = 92;
  }

  sub_100049C40(v19, v20);
  return v18;
}

uint64_t sub_100043E8C(uint64_t *a1)
{
  v56 = 0;
  v2 = sub_100043AB4(a1);
  if (v2)
  {
    v3 = v2;
    v4 = strerror(v2);
    sub_10004565C("error (%s) failed to populate free queue trees \n", v5, v6, v7, v8, v9, v10, v11, v4);
    sub_100049C40(0x4FF, v3);
  }

  else
  {
    LODWORD(v3) = sub_1000431A4(a1);
    if ((byte_10009A433 & 1) != 0 || (byte_10009A432 & 1) != 0 || (v19 = qword_10009BA60, *(qword_10009BA60 + 44) == 1))
    {
      v20 = sub_10004355C(a1, &v56, sub_100044040, 0, 1);
      v19 = qword_10009BA60;
    }

    else
    {
      v20 = 0;
    }

    if (*(v19 + 43) == 1)
    {
      v21 = v56;
      sub_100045428("\nSpace allocation summary:\n\n", v12, v13, v14, v15, v16, v17, v18, v54);
      sub_100045428("%-20s%-15s\n", v22, v23, v24, v25, v26, v27, v28, "category");
      sub_100045428("%-20s%-15s\n", v29, v30, v31, v32, v33, v34, v35, "--------");
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = *(&xmmword_10009AA78 + v43 * 8);
        if (v45)
        {
          v44 += v45;
          v55 = *(&xmmword_10009AA78 + v43 * 8);
          sub_100045428("%-20s%-15llu\n", v36, v37, v38, v39, v40, v41, v42, off_100078AD0[v43]);
        }

        ++v43;
      }

      while (v43 != 10);
      sub_100045428("\nTotal blocks marked by fsck: %llu\n", v36, v37, v38, v39, v40, v41, v42, v44);
      sub_100045428("Total blocks allocated by spaceman: %llu\n\n", v46, v47, v48, v49, v50, v51, v52, v21);
    }

    if (v3)
    {
      return v3;
    }

    else
    {
      return v20;
    }
  }

  return v3;
}

uint64_t sub_100044040(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 - 3) < 0xFFFFFFFE)
  {
    return 22;
  }

  if (!a3)
  {
    return 0;
  }

  v14 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
  if (a4 == 1)
  {
    v15 = "underallocation";
  }

  else
  {
    v15 = "overallocation";
  }

  if (a4 == 1)
  {
    v31 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
    sub_10004565C("underallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, "Main");
    sub_100049C40(0x1DA, 92);
  }

  else
  {
    v32 = *(*(a5 + 16) + 32 * *(a5 + 8) + 64);
    sub_100045744("overallocation detected on %s device: (0x%llx+%llu) bitmap address (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, "Main");
    sub_100049C40(0x1DB, 92);
    if ((*(qword_10009BA60 + 45) & 1) == 0)
    {
      if (a2 != 1)
      {
        return 92;
      }

      v29 = a1[1];
      if (*(v29 + 36) != 4096 || !(*(v29 + 40) >> 29))
      {
        return 92;
      }
    }
  }

  if (!sub_10004758C(qword_10009BA58, "Fix %s (0x%llx+%llu) bitmap address (0x%llx)? ", v16, v17, v18, v19, v20, v21, v15))
  {
    return 92;
  }

  v8 = sub_10000270C(a1, 0, a2, a3, v14, *a5, *(a5 + 16), a4, 0, 0);
  if (v8)
  {
    sub_10004565C("Failed to fix %s\n", v22, v23, v24, v25, v26, v27, v28, v15);
    sub_100049C40(0x316, v8);
  }

  else
  {
    sub_100049BF0();
  }

  return v8;
}

uint64_t sub_1000441E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t), uint64_t a5)
{
  if (sub_10001E4A8(&unk_10009B430))
  {
    v16 = a3 + a2;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    while (v16 > a2 && sub_10001E7C8(&unk_10009B430, a2, v16 - a2, &v22))
    {
      if (sub_10001E6A4(&unk_10009B430, v22, v16 - v22, &v21))
      {
        v17 = v21;
      }

      else
      {
        v21 = v16;
        v17 = v16;
      }

      v18 = a4(v22, v17 - v22, a5);
      a2 = v21;
      if (v18)
      {
        return v18;
      }
    }

    return 0;
  }

  else
  {
    sub_10004565C("unexpected: space verification data structure not initialized", v9, v10, v11, v12, v13, v14, v15, v21);
    v19 = 22;
    sub_100049C40(0x434, 22);
  }

  return v19;
}

uint64_t sub_1000442F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8) = 0;
  *(a5 + 21) = 1;
  if (*(a5 + 12) < 1)
  {
    return 0;
  }

  v13 = v5;
  v14 = v6;
  v9 = 0;
  v12 = -86;
  do
  {
    v10 = *a5 + 24 * v9;
    if ((*(v10 + 16) & 1) == 0)
    {
      result = sub_100002C7C(*v10, *(v10 + 8), *a3, *(a3 + 8), &v12, sub_100044454, a5);
      if (result)
      {
        return result;
      }

      v9 = *(a5 + 8);
      if ((v12 & 1) == 0)
      {
        *(a5 + 8) = ++v9;
      }
    }
  }

  while (v9 < *(a5 + 12));
  return 0;
}

uint64_t sub_1000443B4(unsigned int a1, void *a2, void *a3, unsigned int a4)
{
  v17 = 16;
  v16 = 8;
  v5 = sub_1000397B8(&unk_10009BAE8 + 64 * a1, 0, a4, a2, &v17, 0x10u, a3, &v16);
  v6 = v5;
  if ((v5 & 0xFFFFFFFD) != 0)
  {
    v7 = a2[1];
    strerror(v5);
    sub_10004565C("Space Verification: failed to lookup paddr (%llu) : error %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
    sub_100049C40(0x364, v6);
  }

  return v6;
}

uint64_t sub_100044454(uint64_t a1, uint64_t a2, int a3, char **a4)
{
  v7 = *(a4 + 2);
  v8 = v7;
  if (a3)
  {
    v9 = *a4;
    *(a4 + 20) = (*a4)[24 * v7 + 16];
    v10 = 21;
LABEL_7:
    result = 0;
    v14 = &v9[24 * v8];
    *v14 = a1;
    *(v14 + 1) = a2;
    v14[16] = *(a4 + v10);
    *(a4 + 2) = v7 + 1;
    return result;
  }

  v11 = *(a4 + 3);
  v12 = *a4;
  if (v11 != *(a4 + 4))
  {
LABEL_6:
    memmove(&v12[24 * v7 + 24], &v12[24 * v7], 24 * (v11 - v7));
    v7 = *(a4 + 2);
    ++*(a4 + 3);
    v9 = *a4;
    v10 = 20;
    goto LABEL_7;
  }

  *(a4 + 4) = 2 * v11;
  v12 = malloc_type_realloc(v12, 48 * v11, 0x100004057661CB1uLL);
  if (v12)
  {
    *a4 = v12;
    v11 = *(a4 + 3);
    goto LABEL_6;
  }

  free(*a4);
  *a4 = 0;
  return 12;
}

uint64_t sub_100044558(__int128 *a1, int a2, uint64_t *a3, int a4, _DWORD *a5)
{
  v5 = 22;
  if (a2 == 16 && (a4 & 0xFFFFFFF7) == 0)
  {
    v7 = *a5 & 1;
    v48 = *a1;
    v8 = 1;
    if (a3 && a4)
    {
      v8 = *a3;
    }

    v47 = v8;
    v9 = v48;
    v46 = *a1;
    v45 = 0xAAAAAAAAAAAAAAAALL;
    v10 = v7 ^ 1;
    v11 = sub_1000443B4(v7 ^ 1, &v46, &v45, 0xFFFFFFFE);
    if (v11 == 2 && (v11 = sub_1000443B4(v10, &v46, &v45, 1u), v19 = v10, v11 == 2))
    {
LABEL_27:
      v35 = sub_10003B12C(&unk_10009BAE8 + 16 * v19, 0, &v48, 16, &v47, 8u);
      v5 = v35;
      if (v35)
      {
        v36 = BYTE8(v48);
        strerror(v35);
        sub_10004565C("Space Verification: failed to insert paddr (%llu) error : %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
        sub_100049C40(0x365, v5);
      }
    }

    else
    {
      v5 = v11;
      if (!v11)
      {
        v20 = v9;
        v21 = v8;
        v22 = *(&v9 + 1);
        do
        {
          if (*(&v46 + 1) >= (v21 + v22))
          {
            v19 = v10;
            goto LABEL_27;
          }

          if (v45 + *(&v46 + 1) > v22)
          {
            sub_100045744("found spaceman free queue tree entry (0x%llx+%llu, xid %llu) which overlaps with existing range (0x%llx+%llu)\n", v12, v13, v14, v15, v16, v17, v18, SBYTE8(v9));
            sub_100049C40(0x1CE, -7);
            *a5 |= 2u;
            if (v22 >= *(&v46 + 1))
            {
              v23 = *(&v46 + 1);
            }

            else
            {
              v23 = v22;
            }

            if (v22 - v23 + v21 <= *(&v46 + 1) - v23 + v45)
            {
              v21 = *(&v46 + 1) - v23 + v45;
            }

            else
            {
              v21 += v22 - v23;
            }

            if (v20 <= v46)
            {
              v20 = v46;
            }

            v24 = sub_10003B708(&unk_10009BAE8 + 64 * v10, 0, &v46, 16);
            if (v24)
            {
              v25 = v24;
              v26 = BYTE8(v46);
              strerror(v24);
              sub_10004565C("Space Verification: failed to remove paddr (%llu) error : %s\n", v27, v28, v29, v30, v31, v32, v33, v26);
              sub_100049C40(0x366, v25);
            }

            *&v48 = v20;
            *(&v48 + 1) = v23;
            v22 = v23;
            v47 = v21;
          }

          v34 = sub_1000443B4(v10, &v46, &v45, 2u);
        }

        while (!v34);
        v5 = v34;
        v19 = v10;
        if (v34 == 2)
        {
          goto LABEL_27;
        }
      }
    }
  }

  return v5;
}

uint64_t sub_1000447A4(const void *a1, uint64_t a2, uint64_t *a3, int a4, _DWORD *a5)
{
  if ((a4 & 0xFFFFFFF7) != 0)
  {
    return 22;
  }

  v8 = 1;
  if (a3)
  {
    if (a4)
    {
      v8 = *a3;
    }
  }

  v9[1] = v5;
  v9[2] = v6;
  v9[0] = v8;
  return sub_10003B12C(a5, 0, a1, a2, v9, 8u);
}

uint64_t sub_100044810(uint64_t *a1, char **a2, int *a3, _DWORD **a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v8 = *a1;
  if (!*a1)
  {
    v15 = "unexpected end of iteration while repairing free queue tree\n";
LABEL_14:
    sub_10004565C(v15, a2, a3, a4, a5, v8, a7, a8, v19);
    return 22;
  }

  a8 = a1[1];
  v10 = *a2;
  if (!*a2)
  {
LABEL_15:
    v18 = 1;
    result = sub_100027D7C(*a4, *(a4 + 2), 0, 0, 1, v8, 0x10u, a8, 8u);
    goto LABEL_19;
  }

  v11 = a2[1];
  v12 = *(v10 + 1);
  v13 = *(v8 + 8);
  if (v12 != v13)
  {
    v16 = *a8;
    goto LABEL_9;
  }

  if (*v10 == *v8 && *v11 == *a8)
  {
    return 0;
  }

  if (*v10 <= *v8)
  {
    v16 = *a8;
    if (*v11 <= *a8)
    {
LABEL_9:
      if (v12 <= v13 || v12 - v13 < v16)
      {
        v22 = *v11;
        v23 = *v10;
        v20 = *v8;
        v21 = *(v10 + 1);
        v19 = *(v8 + 8);
        v15 = "unexpected on-disk range 0x%llx+%llu xid %llu and in-memory range 0x%llx+%llu xid %llu while repairing free queue tree\n";
        goto LABEL_14;
      }

      goto LABEL_15;
    }
  }

  v18 = 2;
  result = sub_100027D7C(*a4, *(a4 + 2), 2, 0, 1, v10, 0x10u, v11, 8u);
LABEL_19:
  if (!result)
  {
    *a3 = v18;
  }

  return result;
}

FILE *sub_100044948(const char *a1)
{
  v1 = open(a1, 777, 438);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v3;
  *v6.st_qspare = v3;
  v6.st_birthtimespec = v3;
  *&v6.st_size = v3;
  v6.st_mtimespec = v3;
  v6.st_ctimespec = v3;
  *&v6.st_uid = v3;
  v6.st_atimespec = v3;
  *&v6.st_dev = v3;
  if (!fstat(v1, &v6) && (v6.st_mode & 0xF000) == 0x8000)
  {
    return fdopen(v2, "a");
  }

  close(v2);
  v5 = __error();
  result = 0;
  *v5 = 1;
  return result;
}

void sub_1000449F0()
{
  dword_10007C6C0 = 0;
  v0 = qword_10009AAC8;
  v1 = qword_10009AAD8;
  v2 = qword_10009AAF8;
  if (qword_10009AAC8)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_10009AAD8 == 0;
  }

  if (v3 && qword_10009AAF8 == 0)
  {
    return;
  }

  v5 = qword_10009AAD0;
  v17 = time(0);
  if (v1)
  {
    v6 = ctime(&v17);
    sub_100044D10(2, &qword_10009AAC8, "fsck_apfs completed at %s\n", v6, 0);
  }

  else
  {
    if (!v0)
    {
      goto LABEL_43;
    }

    if (qword_10009BBA8)
    {
      v7 = qword_10009BBA8;
    }

    else
    {
      v7 = "UNKNOWN-DEV";
    }

    v8 = ctime(&v17);
    fprintf(v0, "%s: fsck_apfs completed at %s\n", v7, v8);
  }

  if (!v0 || dword_10009B568)
  {
    if (v0)
    {
      if (v2 | v1 && dword_10009B568 != 0)
      {
        pthread_mutex_lock(&stru_10007C6C8);
        pthread_cond_broadcast(&stru_10009AB08);
        pthread_mutex_unlock(&stru_10007C6C8);
        pthread_join(qword_10009AB38, 0);
        pthread_join(qword_10009AB40, 0);
        if (v2)
        {
          free(v2);
        }

        qword_10009AAF0 = 0;
        qword_10009AAF8 = 0;
        qword_10009AB00 = 0;
        if (v1)
        {
          free(v1);
        }

        qword_10009AAD0 = 0;
        qword_10009AAD8 = 0;
        qword_10009AAE0 = 0;
        fflush(v0);
        fclose(v0);
        qword_10009AAC8 = 0;
        goto LABEL_43;
      }
    }

    if (v1)
    {
      if (getuid() || (fflush(__stdoutp), fflush(__stderrp), !fork()))
      {
        memset(__b, 170, sizeof(__b));
        fclose(__stdoutp);
        fclose(__stdinp);
        fclose(__stderrp);
        if (getuid())
        {
          v10 = getuid();
          v11 = getpwuid(v10);
          if (!v11)
          {
            goto LABEL_43;
          }

          v12 = __b;
          snprintf(__b, 0x400uLL, "%s/Library/Logs/fsck_apfs.log", v11->pw_dir);
        }

        else
        {
          v12 = "/var/log/fsck_apfs.log";
        }

        v13 = 1;
        while (1)
        {
          v14 = v13;
          v15 = sub_100044948(v12);
          if (v15)
          {
            if (v5)
            {
              break;
            }
          }

          if (*__error() == 30)
          {
            sleep(1u);
            v13 = 0;
            if (v14)
            {
              continue;
            }
          }

          goto LABEL_43;
        }

        v16 = v15;
        fwrite(v1, v5 - v1, 1uLL, v15);
        fflush(v16);
        fclose(v16);
        qword_10009AAC8 = 0;
        free(v1);
        qword_10009AAD0 = 0;
        qword_10009AAD8 = 0;
        qword_10009AAE0 = 0;
      }
    }
  }

  else
  {
    fflush(v0);
    fclose(v0);
    qword_10009AAC8 = 0;
  }

LABEL_43:
  if (qword_10009AAF8)
  {
    free(qword_10009AAF8);
  }

  if (qword_10009AAD8)
  {
    free(qword_10009AAD8);
  }
}

uint64_t sub_100044D10(uint64_t result, uint64_t a2, char *__format, const char *a4, va_list a5)
{
  v18 = 0;
  if (*(a2 + 8) && *(a2 + 16))
  {
    v8 = result;
    if (result == 1)
    {
      v18 = a5;
    }

    if (dword_10009B568 && *a2 == __stdoutp)
    {
      pthread_mutex_lock(&stru_10007C6C8);
    }

    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = v9 - v10;
    if (v8 == 1)
    {
      result = vsnprintf(*(a2 + 8), v11 - (v9 - v10), __format, a5);
    }

    else
    {
      result = snprintf(v9, v11 - (v9 - v10), "%s", a4);
    }

    if (v11 - (v9 - v10) >= result)
    {
      v9 += result;
    }

    else
    {
      if (result >= 4096)
      {
        v13 = (result + 4095) & 0x7FFFF000;
      }

      else
      {
        v13 = 4096;
      }

      v14 = v11 + v13;
      if (!((v11 + v13) >> 20))
      {
        result = malloc_type_realloc(v10, v14, 0xB86594F6uLL);
        if (result)
        {
          v15 = result;
          v16 = result + v12;
          if (v8 == 1)
          {
            result = vsnprintf((result + v12), v14 - v12, __format, v18);
          }

          else
          {
            result = snprintf((result + v12), v14 - v12, "%s", a4);
          }

          v17 = result;
          if (v14 - v12 < result)
          {
            v17 = 0;
          }

          v9 = (v16 + v17);
          v10 = v15;
          v11 = v14;
        }
      }
    }

    *(a2 + 8) = v9;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
    if (dword_10009B568)
    {
      if (*a2 == __stdoutp)
      {
        pthread_cond_signal(&stru_10009AB08);
        return pthread_mutex_unlock(&stru_10007C6C8);
      }
    }
  }

  return result;
}

uint64_t sub_100044EF0()
{
  v0 = qword_10009AAC8;
  setlinebuf(__stdoutp);
  result = setlinebuf(__stderrp);
  dword_10009B568 = byte_10009BBB0;
  if (!v0)
  {
    result = sub_100044948("/var/log/fsck_apfs.log");
    if (result)
    {
      v2 = result;
      qword_10009AAC8 = result;
      setlinebuf(result);
      if (dword_10009B568)
      {
        v3 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        result = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
        if (v3 && result)
        {
          *v3 = 0;
          qword_10009AAD0 = v3;
          qword_10009AAD8 = v3;
          qword_10009AAE0 = 4096;
          *result = 0;
          qword_10009AAE8 = __stdoutp;
          qword_10009AAF0 = result;
          qword_10009AAF8 = result;
          qword_10009AB00 = 4096;
          v7 = time(0);
          v4 = ctime(&v7);
          result = sub_100044D10(2, &qword_10009AAC8, "\nfsck_apfs started at %s", v4, 0);
          if (dword_10009B568)
          {
            pthread_cond_init(&stru_10009AB08, 0);
            pthread_create(&qword_10009AB38, 0, sub_1000450C8, &qword_10009AAE8);
            return pthread_create(&qword_10009AB40, 0, sub_1000450C8, &qword_10009AAC8);
          }
        }
      }

      else
      {
        v7 = time(0);
        if (qword_10009BBA8)
        {
          v5 = qword_10009BBA8;
        }

        else
        {
          v5 = "UNKNOWN-DEV";
        }

        v6 = ctime(&v7);
        fprintf(v2, "\n%s: fsck_apfs started at %s", v5, v6);
        return fflush(v2);
      }
    }

    else
    {
      dword_10009B568 = 0;
    }
  }

  return result;
}

uint64_t sub_1000450C8(uint64_t a1)
{
  v2 = *a1;
  memset(__b, 170, sizeof(__b));
  v3 = 0;
  while (dword_10007C6C0 || *(a1 + 8) != *(a1 + 16))
  {
    pthread_mutex_lock(&stru_10007C6C8);
    while (dword_10007C6C0 && *(a1 + 8) == *(a1 + 16))
    {
      v4 = pthread_cond_wait(&stru_10009AB08, &stru_10007C6C8);
      if (v4)
      {
        fprintf(__stderrp, "error %d from cond wait\n", v4);
        break;
      }
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v5 - v6;
    if (v5 == v6)
    {
      pthread_mutex_unlock(&stru_10007C6C8);
    }

    else
    {
      if (v7 < 0x400)
      {
        __memcpy_chk();
        v8 = v6;
      }

      else
      {
        memcpy(__b, *(a1 + 16), 0x3FFuLL);
        memmove(v6, (v6 + 1023), v7 - 1023);
        v8 = v5 - 1023;
        v7 = 1023;
      }

      __b[v7] = 0;
      *(a1 + 8) = v8;
      *(a1 + 16) = v6;
      pthread_mutex_unlock(&stru_10007C6C8);
      v9 = __b[0];
      if (__b[0])
      {
        v10 = __b;
        do
        {
          v11 = v10++;
          if (v9)
          {
            while (v9 != 10)
            {
              v12 = *v10++;
              v9 = v12;
              if (!v12)
              {
                goto LABEL_19;
              }
            }

            *(v10 - 1) = 0;
            v13 = "\n";
          }

          else
          {
LABEL_19:
            --v10;
            v13 = &byte_10005C3F3;
          }

          if (v2 == __stdoutp || *v11 == 0 || v3)
          {
            fprintf(v2, "%s%s");
          }

          else
          {
            fprintf(v2, "%s: %s%s");
          }

          v3 = *v13 != 10;
          v9 = *v10;
        }

        while (*v10);
      }

      fflush(v2);
    }
  }

  return 0;
}

uint64_t sub_10004530C(uint64_t a1, const char *a2)
{
  byte_10009AB48 = 0;
  if (dword_10009B568)
  {

    return sub_100044D10(2, &qword_10009AAC8, "%s", a2, 0);
  }

  else
  {
    result = qword_10009AAC8;
    if (qword_10009AAC8)
    {
      fprintf(qword_10009AAC8, "%s: ", qword_10009BBA8);
      byte_10009AB48 = 1;
      v4 = qword_10009AAC8;

      return fputs(a2, v4);
    }
  }

  return result;
}

uint64_t sub_1000453E8(int a1, char *a2)
{
  if (dword_10009B568)
  {
    return sub_100044D10(2, &qword_10009AAE8, "%s", a2, 0);
  }

  else
  {
    return fputs(a2, __stdoutp);
  }
}

uint64_t sub_100045454(char *__format, va_list a2)
{
  v9 = a2;
  v10 = a2;
  byte_10009AB48 = 0;
  if (qword_10009BA60 && *(qword_10009BA60 + 36) == 3)
  {
    __s = 0xAAAAAAAAAAAAAAAALL;
    vasprintf(&__s, __format, v10);
    v3 = __s;
    if (__s)
    {
      v4 = strlen(__s);
      v7[0] = 0xAAAAAAAA00000000;
      v7[1] = __s;
      v7[2] = 0x100000005;
      v7[3] = 0xAAAAAAAA00000000;
      v7[4] = 0;
      if (v4)
      {
        if (__s[v4 - 1] == 10)
        {
          __s[v4 - 1] = 0;
          v3 = __s;
        }
      }

      sub_10004788C(qword_10009BA58, v7, v3, 0);
      free(__s);
    }
  }

  else if (dword_10009B568)
  {
    sub_100044D10(1, &qword_10009AAE8, __format, 0, v10);
  }

  else
  {
    vfprintf(__stderrp, __format, v10);
  }

  if (dword_10009B568)
  {
    return sub_100044D10(1, &qword_10009AAC8, __format, 0, v9);
  }

  result = qword_10009AAC8;
  if (qword_10009AAC8)
  {
    if (byte_10009AB48)
    {
      if (!strchr(__format, 10))
      {
        return vfprintf(qword_10009AAC8, __format, v9);
      }

      v6 = 0;
    }

    else
    {
      fprintf(qword_10009AAC8, "%s: ", qword_10009BBA8);
      v6 = strchr(__format, 10) == 0;
    }

    byte_10009AB48 = v6;
    return vfprintf(qword_10009AAC8, __format, v9);
  }

  return result;
}

char *sub_100045614(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (qword_10009BA60)
  {
    if (*(qword_10009BA60 + 28))
    {
      return sub_100045454(result, &a9);
    }
  }

  return result;
}

void sub_100045694(const char *a1, const char *a2, va_list a3)
{
  v5 = strlen(a1);
  v6 = vsnprintf(0, 0, a2, a3);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v6 + 1;
    v8 = malloc_type_malloc(v7 + v5, 0xF1CC683DuLL);
    v9 = strcpy(v8, a1);
    vsnprintf(&v9[v5], v7, a2, a3);
    sub_100045428("%s", v10, v11, v12, v13, v14, v15, v16, v8);
    free(v8);
  }
}

void sub_100045744(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = strlen(a1);
  v11 = off_10009B0E8(0, a1, v10) & 0x3FF;
  v12 = byte_10009AB49[v11];
  if (v12 <= 49)
  {
    byte_10009AB49[v11] = v12 + 1;
    sub_100045694("warning: ", a1, &a9);
    if (byte_10009AB49[v11] == 50)
    {
      sub_100045428("Too many warnings of this type generated; suppressing subsequent ones.\n", v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }
}

char *sub_1000457E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 4);
  v9 = *(a1 + 8);
  v26 = *(a1 + 2);
  sub_100045614("vers: %u.%u flags: %#x class: %c os: ", a2, a3, a4, a5, a6, a7, a8, *a1);
  sub_100045614("%d%d-%d", v11, v12, v13, v14, v15, v16, v17, HIBYTE(*(a1 + 12)));
  v27 = *(a1 + 18);
  return sub_100045614(" revision: %u key len: %u", v18, v19, v20, v21, v22, v23, v24, *(a1 + 16));
}

char *sub_10004588C(uint64_t a1, void *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a3 + 1);
  v12 = *(a3 + 2);
  v9 = *a3;
  v10 = a3[1];
  return sub_100045614("inum: %8lld version: %u flags: %u current_offset: %8llu current_ns_offset: %8llu\n", a2, a3, a4, a5, a6, a7, a8, *a2);
}

char *sub_1000458CC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_100045614("obj-id: %8lld type: %-11s\n", a2, a3, a4, a5, a6, a7, a8, *a2);
  v19 = *a3 & 0xFFFFFFFFFFFFFFLL;
  v18 = a3[1];
  return sub_100045614("logical addr: %lld  phys-block-num: %lld  len: %lld  flags: %x\n", v10, v11, v12, v13, v14, v15, v16, a2[1]);
}

void sub_100045938(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a3 > 7)
  {
    v9 = a5;
    v11 = a3;
    v14 = *a2;
    if (a3 <= 0xB && (v14 & 0xF000000000000000) == 0xE000000000000000)
    {
      sub_100045614("obj-id: %8lld type: ???\n", a2, a3, a4, a5, a6, a7, a8, v14);
    }

    else
    {
      v15 = v14 >> 60;
      if (v14 >> 60 == 14)
      {
        LODWORD(v15) = *(a2 + 8);
      }

      v123 = -1431655766;
      v124 = -1431655766;
      v16 = v14;
      sub_100040D98(v15);
      sub_100045614("obj-id: %8lld type: %-11s\n", v17, v18, v19, v20, v21, v22, v23, v16);
      if (sub_10003EF3C(*(a1 + 40), a2, v11, &v124) || sub_10003F058(a2, a4, v9, &v123))
      {
        sub_10004565C("key size (%u)/val size (%u) is invalid\n", v24, v25, v26, v27, v28, v29, v30, v11);
      }

      else if (v124 <= v11)
      {
        if (v123 <= v9)
        {
          switch(v15)
          {
            case 1:
              v96 = *(a4 + 3);
              v107 = *(a4 + 2);
              sub_100045614(" extentref_tree_oid: %lld sblock_oid: %lld change_time: %llu create_time: %llu\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (v9 - 50 >= a4[24])
              {
                v38 = a4[24];
              }

              v87 = *(a4 + 11);
              sub_100045614(" extentref_Tree_type: %u flags: %u name: '%.*s' name_len: %u\n", v31, v32, v33, v34, v35, v36, v37, *(a4 + 10));
              break;
            case 2:
              v89 = *a4 & 0xFFFFFFFFFFFFFFFLL;
              v99 = *(a4 + 1);
              sub_100045614("refcnt %d len %lld owning_obj_id %lld\n", v24, v25, v26, v27, v28, v29, v30, *(a4 + 4));
              break;
            case 3:
              v100 = *(a4 + 2);
              v110 = *(a4 + 3);
              v90 = *a4;
              sub_100045614("private-id: %lld parent-id: %lld cr/mtime: %lld/%lld \n", v24, v25, v26, v27, v28, v29, v30, *(a4 + 1));
              if ((a4[40] & 0xF000) == 0x4000)
              {
                v91 = *(a4 + 14);
                sub_100045614("gen-count: %u nchildren: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 16));
              }

              else if (*(a4 + 14) >= 2)
              {
                sub_100045614("nlink: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 14));
              }

              sub_100045614("def-prot-class: %d \n", v51, v52, v53, v54, v55, v56, v57, *(a4 + 15));
              if (a4[41])
              {
                sub_100045614("pad1: 0x%x \n", v77, v78, v79, v80, v81, v82, v83, a4[41]);
              }

              if (*(a4 + 42))
              {
                sub_100045614("uncompressed-size: 0x%llx \n", v77, v78, v79, v80, v81, v82, v83, *(a4 + 42));
              }

              v117 = *(a4 + 6);
              v105 = a4[40];
              v113 = *(a4 + 17);
              v95 = *(a4 + 19);
              sub_100045614("uid/gid/mode: %d/%d/0x%x bsd_flags: 0x%x internal_flags: 0x%llx name: %s\n", v77, v78, v79, v80, v81, v82, v83, *(a4 + 18));
              break;
            case 4:
              v42 = *a4;
              if (v9 - 4 >= a4[1])
              {
                v43 = a4[1];
              }

              sub_100045614("flags: 0x%x data-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (*a4)
              {
                v76 = *(a4 + 2);
                v104 = *(a4 + 14);
                sub_100045614(" out-of-line data size: %lld (under obj-id: %lld / crypto-id: %lld)\n", v44, v45, v46, v47, v48, v49, v50, *(a4 + 6));
              }

              else
              {
                sub_100045614(" embedded data size: %d\n", v44, v45, v46, v47, v48, v49, v50, a4[1]);
              }

              break;
            case 5:
              v40 = *a4;
              a4[4];
              sub_100045614("sib-id: %lld parent-id: %lld name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 8));
              break;
            case 6:
              sub_100045614("refcnt %d\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 7:
              v121 = *(a4 + 2);
              v122 = *(a4 + 5);
              sub_100045614("refcnt: %d \n", v24, v25, v26, v27, v28, v29, v30, *a4);
              sub_1000457E8(&v121, v58, v59, v60, v61, v62, v63, v64);
              break;
            case 8:
              v111 = *a4 & 0xFFFFFFFFFFFFFFLL;
              v92 = *(a4 + 1);
              v101 = *(a4 + 2);
              sub_100045614("logical addr: %lld  phys-block-num: %lld  crypto-id: %lld  len: %lld  flags: %x\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 8));
              break;
            case 9:
              if ((*(*(a1 + 40) + 56) & 9) != 0)
              {
                v73 = a4[8];
                v74 = *(a4 + 1);
                *(a2 + 8);
                sub_100045614("file-id: %6lld flags: %d date-added: %lld hash: 0x%x name-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              }

              else
              {
                v84 = a4[8];
                v85 = *(a4 + 1);
                if (v11 - 10 >= *(a2 + 8))
                {
                  v86 = *(a2 + 8);
                }

                sub_100045614("file-id: %6lld flags: %d date-added: %lld name-len: %d name: %.*s\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              }

              break;
            case 10:
              v103 = *(a4 + 3);
              sub_100045614("num children: %lld total size: %lld gen-count: %lld\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              if (*(a4 + 2))
              {
                sub_100045614(" chained-key: %lld\n", v66, v67, v68, v69, v70, v71, v72, *(a4 + 2));
              }

              break;
            case 11:
              v39 = v11 - 10;
              if (v39 >= *(a2 + 8))
              {
                LOWORD(v39) = *(a2 + 8);
              }

              v98 = *(a2 + 8);
              v109 = *a4;
              sub_100045614(" name: '%.*s' name_len: %u snap_xid: %lld\n", v24, v25, v26, v27, v28, v29, v30, v39);
              break;
            case 12:
              sub_100045614("sib-map: %lld\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 13:
              v41 = *(a2 + 8);
              if (HIBYTE(v41) == 2)
              {
                v114 = *(a4 + 1);
                v118 = a4[12];
                v106 = *a4;
                sub_100045614(" type: %u hash: 0x%llx total_count: %llu physical_size: %llu flags: 0x%x\n", v24, v25, v26, v27, v28, v29, v30, 2);
              }

              else if (HIBYTE(v41) == 1)
              {
                sub_100045614(" type: %u logical addr: %lld\n", v24, v25, v26, v27, v28, v29, v30, 1);
              }

              else
              {
                sub_100045614(" type: %u\n", v24, v25, v26, v27, v28, v29, v30, SHIBYTE(v41));
              }

              break;
            case 16:
              v115 = *(a4 + 4);
              v119 = *(a4 + 5);
              v97 = *a4;
              v108 = *(a4 + 1);
              v88 = *(a2 + 20);
              sub_100045614(" atime: %llu file_id: %llu file_size: %llu dstream_id: %llu flags: 0x%x owning_uid: %u\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 12));
              break;
            case 17:
              v65 = *(a2 + 12);
              v93 = *a4;
              sub_100045614(" file_id: %llu dstream_id: %llu\n", v24, v25, v26, v27, v28, v29, v30, v65);
              break;
            case 18:
              v116 = *(a4 + 4);
              v120 = *(a4 + 12);
              v102 = *(a4 + 2);
              v112 = *(a4 + 5);
              sub_100045614(" descendants: %llu phys_size: %llu resource_fork_size: %llu gen_count: %llu chained_key: %llu flags: 0x%x\n", v24, v25, v26, v27, v28, v29, v30, *a4);
              break;
            case 19:
              v75 = *(a2 + 12);
              v94 = *(a2 + 20);
              sub_100045614(" private_id: %llu, file_id: %llu\n", v24, v25, v26, v27, v28, v29, v30, v75);
              break;
            default:
              return;
          }
        }

        else
        {
          sub_10004565C("val size is too small, actual: %u, minimum: %u\n", v24, v25, v26, v27, v28, v29, v30, v9);
        }
      }

      else
      {
        sub_10004565C("key size is too small, actual: %u, minimum: %u\n", v24, v25, v26, v27, v28, v29, v30, v11);
      }
    }
  }

  else
  {

    sub_100045614("obj-id: ??? type: ???\n", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

char *sub_100045F58()
{
  AssertionID = 0;
  if (IOPMAssertionCreateWithName(@"PreventUserIdleDisplaySleep", 0xFFu, @"Running FSCK", &AssertionID))
  {
    v7 = "failed!";
  }

  else
  {
    dword_10009AF4C = AssertionID;
    v7 = "succeeded.";
  }

  return sub_100045614("Disabling idle sleep, %s\n", v0, v1, v2, v3, v4, v5, v6, v7);
}

char *sub_100045FC8()
{
  result = dword_10009AF4C;
  if (dword_10009AF4C)
  {
    dword_10009AF4C = 0;
    v1 = IOPMAssertionRelease(result);
    v9 = "failed!";
    if (!v1)
    {
      v9 = "succeeded.";
    }

    return sub_100045614("Enabling idle sleep, %s\n", v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return result;
}

uint64_t sub_100046024()
{
  v0 = dword_10007CE88;
  if ((dword_10007CE88 & 0x80000000) == 0)
  {
    dword_10007CE88 = -1;
    fcntl(v0, 54, 0);
    result = close(v0);
  }

  if (dword_10009AF50)
  {
    v2 = dword_10009AF50;
    dword_10009AF50 = 0;
    return sub_10001BD78(&v2);
  }

  return result;
}

uint64_t sub_100046094(const char *a1)
{
  result = open(a1, 2);
  if ((result & 0x80000000) == 0)
  {

    return close(result);
  }

  return result;
}

BOOL sub_1000460CC(const char *a1)
{
  v1 = sub_10002DDB4(a1);
  v2 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (MatchingService)
  {
    v4 = MatchingService;
    iterator = 0;
    IORegistryEntryGetChildIterator(MatchingService, "IOService", &iterator);
    if (iterator)
    {
      v5 = IOIteratorNext(iterator);
      if (!v5)
      {
LABEL_8:
        IOObjectRelease(iterator);
        v11 = 0;
LABEL_16:
        IOObjectRelease(v4);
        return v11;
      }

      v6 = v5;
      v7 = kCFAllocatorDefault;
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v6, @"IOMatchCategory", kCFAllocatorDefault, 0);
        if (CFProperty)
        {
          v9 = CFProperty;
          v10 = CFEqual(CFProperty, @"IOStorage");
          CFRelease(v9);
          if (v10)
          {
            break;
          }
        }

        IOObjectRelease(v6);
        v6 = IOIteratorNext(iterator);
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      IOObjectRelease(iterator);
    }

    else
    {
      v7 = kCFAllocatorDefault;
      v6 = v4;
    }

    v12 = IORegistryEntryCreateCFProperty(v6, @"Status", v7, 0);
    if (v12)
    {
      v13 = v12;
      v11 = CFEqual(v12, @"Corrupt") != 0;
      CFRelease(v13);
    }

    else
    {
      v11 = 0;
    }

    IOObjectRelease(v6);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_100046258(const char **a1, uint64_t *a2, char a3)
{
  v6 = sub_10002DF68(*a1);
  v7 = v6;
  if (v6)
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v33 = v8;
  if (a2)
  {
    v9 = *(a2[1] + 36);
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v31 = a3;
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = a1 + 104;
  v32 = a1;
  v13 = a1 + 3;
  for (i = 1; ; i = 0)
  {
    v15 = &v12[12 * v10];
    *(v15 + 64) = v10;
    v16 = &v13[v10];
    if (*v16)
    {
      v17 = sub_10001C8D8(v16, v15, v33, v11);
LABEL_13:
      v18 = v17;
      if (v17)
      {
        goto LABEL_31;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      break;
    }

    v19 = sub_10002FFDC(*v32, a3 & 3, v16);
    if (v19)
    {
      goto LABEL_30;
    }

LABEL_23:
    v21 = i & v7;
    v10 = 1;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(qword_10009BA60 + 20) & 0x80000000) == 0)
  {
    v19 = sub_100004610(a2, v32, v15);
    if (v19)
    {
      goto LABEL_30;
    }

    v20 = dup(*(qword_10009BA60 + 16));
    if ((v20 & 0x80000000) == 0)
    {
      v17 = sub_10001D1D4(v20, a3 & 3, v16, v15, v33, v11);
      goto LABEL_13;
    }

    v18 = *__error();
    if (v18)
    {
      goto LABEL_31;
    }

LABEL_14:
    if (a2 && *v16)
    {
      sub_10002F3A4(*v16);
    }

    goto LABEL_23;
  }

  if (!*(qword_10009BA60 + 72) || (v19 = sub_100004610(a2, v32, v15), !v19))
  {
    a3 = v31;
    v17 = sub_10001D244(*v32, v31 & 3, v16, v15, v33, v11);
    goto LABEL_13;
  }

LABEL_30:
  v18 = v19;
LABEL_31:
  v22 = *v32;
  strerror(v18);
  sub_10004565C("device %s failed to open with error: %s\n", v23, v24, v25, v26, v27, v28, v29, v22);
  return v18;
}

void sub_100046458(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = a1 + 832;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = *(v2 + 8 * v1);
    if (v6)
    {
      sub_10002F398(v6);
      *(v2 + 8 * v1) = 0;
    }

    v7 = v3 + 96 * v1;
    if (*(v7 + 72))
    {
      sub_100004AD8(v7);
    }

    v4 = 0;
    v1 = 1;
  }

  while ((v5 & 1) != 0);
}

uint64_t sub_1000464C8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(qword_10009BA60 + 16) != -1)
  {
    *a2 = 0;
    *(a2 + 2) = 0;
    goto LABEL_3;
  }

  v6 = sub_1000467A0(*(qword_10009BA60 + 8), 1, a2, (a2 + 1), (a2 + 2), (a2 + 8));
  if (v6)
  {
    v14 = v6;
    v15 = *(qword_10009BA60 + 8);
    strerror(v6);
    sub_10004565C("dev_is_mounted(%s) failed with error: %s\n", v16, v17, v18, v19, v20, v21, v22, v15);
    v23 = 153;
LABEL_7:
    sub_100049C40(v23, v14);
    return 66;
  }

  if ((*a2 & 1) == 0)
  {
LABEL_3:
    if (*(qword_10009BA60 + 41) != 1)
    {
      v4 = 0;
      *(a2 + 32) = 18;
      return v4;
    }

    goto LABEL_4;
  }

  v25 = qword_10009BA60;
  if (*(a2 + 1) != 1)
  {
    if (*(qword_10009BA60 + 24) == -1)
    {
      *(a2 + 16) = 1;
    }

    else
    {
      v27 = sub_1000467A0(*qword_10009BA60, 0, (a2 + 16), (a2 + 17), (a2 + 18), (a2 + 24));
      if (v27)
      {
        v14 = v27;
        v28 = *qword_10009BA60;
        strerror(v27);
        sub_10004565C("dev_is_mounted(%s) failed with error: %s\n", v29, v30, v31, v32, v33, v34, v35, v28);
        v23 = 155;
        goto LABEL_7;
      }

      if ((*(a2 + 16) & 1) == 0)
      {
        v36 = qword_10009BA60;
        if (*(qword_10009BA60 + 41) != 1)
        {
          *(a2 + 32) = 18;
          *(a2 + 40) = 1;
          sub_10004565C("live repair of a volume in mounted container %s is not supported yet.\n", v7, v8, v9, v10, v11, v12, v13, *(v36 + 8));
          v4 = 64;
          v26 = 158;
          v38 = 64;
          goto LABEL_34;
        }

        v37 = *(qword_10009BA60 + 42);
        if ((*(qword_10009BA60 + 40) & 1) == 0)
        {
          if (*(qword_10009BA60 + 42))
          {
            goto LABEL_26;
          }

          sub_10004565C("container %s is mounted with write access; please re-run with -l.\n", v7, v8, v9, v10, v11, v12, v13, *(qword_10009BA60 + 8));
          v4 = 65;
          v26 = 589;
          goto LABEL_33;
        }

        if (*(qword_10009BA60 + 42))
        {
          goto LABEL_26;
        }

LABEL_31:
        v4 = 0;
        *a3 = 1;
        return v4;
      }
    }

    if (*(qword_10009BA60 + 41) != 1)
    {
      sub_10004565C("container %s is mounted with write access.\n", v7, v8, v9, v10, v11, v12, v13, *(qword_10009BA60 + 8));
      v4 = 65;
      v26 = 157;
      goto LABEL_33;
    }

    if (*(qword_10009BA60 + 40) != 1 || *(a2 + 18) != 1 || (*(qword_10009BA60 + 42) & 1) != 0)
    {
      if (*(qword_10009BA60 + 42) == 1)
      {
LABEL_26:
        v4 = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 1;
        return v4;
      }

      sub_10004565C("container %s is mounted with write access; please re-run with -l.\n", v7, v8, v9, v10, v11, v12, v13, *(qword_10009BA60 + 8));
      v4 = 65;
      v26 = 156;
LABEL_33:
      v38 = 65;
LABEL_34:
      sub_100049C40(v26, v38);
      return v4;
    }

    goto LABEL_31;
  }

  if (*(qword_10009BA60 + 41) != 1)
  {
    if (*(a2 + 2) == 1)
    {
      *(a2 + 32) = 0x4000000000012;
      sub_10004565C("container %s is mounted. repairs in a mounted container is not supported yet.\n", v7, v8, v9, v10, v11, v12, v13, *(v25 + 8));
      v4 = 65;
      v26 = 857;
    }

    else
    {
      sub_10004565C("container %s is mounted.\n", v7, v8, v9, v10, v11, v12, v13, *(qword_10009BA60 + 8));
      v4 = 65;
      v26 = 154;
    }

    goto LABEL_33;
  }

LABEL_4:
  v4 = 0;
  *(a2 + 32) = 0;
  return v4;
}

uint64_t sub_1000467A0(const char *a1, int a2, _BYTE *a3, _BYTE *a4, char *a5, void **a6)
{
  v8 = a4;
  *a3 = 0;
  *a4 = 1;
  *a5 = 0;
  *a6 = 0;
  v10 = sub_10002DDB4(a1);
  v11 = strlen(v10);
  v12 = getfsstat(0, 0, 2);
  if ((v12 & 0x80000000) != 0)
  {
    v15 = 0;
    goto LABEL_34;
  }

  v13 = 2168 * v12;
  v14 = malloc_type_malloc(2168 * v12, 0x100004087E0324AuLL);
  v15 = v14;
  if (!v14 || (v16 = getfsstat(v14, v13, 2), (v16 & 0x80000000) != 0))
  {
LABEL_34:
    v28 = *__error();
  }

  else
  {
    if (v16)
    {
      v30 = v8;
      v17 = v16;
      v18 = v15;
      while (1)
      {
        f_mntfromname = v18->f_mntfromname;
        if (!strcmp(v18->f_mntfromname, "root_device"))
        {
          f_mntfromname = devname(v18->f_fsid.val[0], 0x6000u);
        }

        v20 = strrchr(f_mntfromname, 64);
        if (v20)
        {
          v21 = v20 + 1;
        }

        else
        {
          v21 = f_mntfromname;
        }

        v22 = sub_10002DDB4(v21);
        if (strncmp(v22, v10, v11))
        {
          goto LABEL_31;
        }

        v23 = v22[v11];
        if (v22[v11])
        {
          if (a2)
          {
            if (v23 != 115)
            {
              goto LABEL_31;
            }

LABEL_17:
            f_flags = v18->f_flags;
            if ((f_flags & 0x4000) == 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

          if (v23 != 115 || (v18->f_flags & 0x40000000) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (a2)
        {
          goto LABEL_17;
        }

        f_flags = v18->f_flags;
        if ((f_flags & 0x40000000) == 0)
        {
LABEL_18:
          v25 = 0;
          goto LABEL_26;
        }

LABEL_24:
        if (*a3)
        {
          goto LABEL_27;
        }

        v25 = 1;
LABEL_26:
        *a5 = v25;
LABEL_27:
        *a3 = 1;
        if ((f_flags & 1) == 0)
        {
          *v30 = 0;
        }

        if (!*a6)
        {
          v27 = strdup(v18->f_mntonname);
          *a6 = v27;
          if (!v27)
          {
            v8 = v30;
            goto LABEL_34;
          }
        }

LABEL_31:
        ++v18;
        if (!--v17)
        {
          v28 = 0;
          v8 = v30;
          goto LABEL_35;
        }
      }
    }

    v28 = 0;
  }

LABEL_35:
  if ((*a3 & 1) == 0)
  {
    *v8 = 0;
  }

  if (v15)
  {
    free(v15);
  }

  if (v28 && *a6)
  {
    free(*a6);
    *a6 = 0;
  }

  return v28;
}

uint64_t sub_1000469C4(uint64_t *a1, int a2)
{
  v3 = *(qword_10009BA60 + 16);
  if (v3 == -1)
  {
    v4 = sub_10001D2B0(*(qword_10009BA60 + 8), a2, a1);
  }

  else
  {
    v4 = sub_10001D180(v3, a1);
  }

  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  v6 = *(qword_10009BA60 + 8);
  strerror(v4);
  sub_10004565C("device %s failed to open with error: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
  sub_100049C40(0xA3, v5);
  return 66;
}

uint64_t sub_100046A58(uint64_t a1, char a2, _BYTE *a3)
{
  v22 = -1431655766;
  v23 = -1431655766;
  sub_10001D914(a1, &v23, &v22);
  *a3 = 0;
  for (i = v23; i < v22; ++i)
  {
    v7 = sub_10001D82C(a1, i);
    v8 = *v7;
    if (!*v7)
    {
      v9 = *(qword_10009BA60 + 8);
      v24 = 0;
      asprintf(&v24, "/dev/r%ss%d", (v9 + 6), i + 1);
      v8 = v24;
      *v7 = v24;
      if (!v8)
      {
        sub_10004565C("failed to allocate memory for device path\n", v10, v11, v12, v13, v14, v15, v16, v21);
        sub_100049C40(0xA4, 12);
        return 71;
      }
    }

    if ((*(qword_10009BA60 + 40) & 1) == 0 && (*(qword_10009BA60 + 47) & 1) == 0)
    {
      v17 = sub_10002DF14(v8);
      *a3 |= v17;
      if (v17)
      {
        if (*(qword_10009BA60 + 48) == 1)
        {
          *strrchr(*v7, 115) = 0;
          v7[8] = 1;
          *a3 = 0;
        }

        v18 = sub_100046258(v7, 0, a2);
        if (v18)
        {
          sub_100049C40(0x9F, v18);
          return 66;
        }
      }

      if ((*(qword_10009BA60 + 20) & 0x80000000) != 0)
      {
        v19 = v7[8];
      }

      else
      {
        v19 = 1;
      }

      v7[8] = v19;
    }
  }

  return 0;
}

uint64_t sub_100046BE8(uint64_t a1, char a2)
{
  v24 = -1431655766;
  v25 = -1431655766;
  sub_10001D914(a1, &v25, &v24);
  if (dword_10009AF50)
  {
    v4 = v24;
  }

  else
  {
    v27 = -1431655766;
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[4] = v8;
    v26[5] = v8;
    v26[2] = v8;
    v26[3] = v8;
    v26[0] = v8;
    v26[1] = v8;
    v9 = *(a1 + 8);
    v10 = *(qword_10009BA60 + 8);
    v11 = *(v9 + 1392);
    v23[0] = *(v9 + 1296);
    v23[1] = v11;
    v12 = sub_10001BC54(v10, (a2 & 3) != 0, v23, &dword_10009AF50, v26);
    if (v12)
    {
      v13 = v12;
      v14 = *(qword_10009BA60 + 8);
      strerror(v12);
      sub_10004565C("failed to enable crypto I/O mode for container %s: %s\n", v15, v16, v17, v18, v19, v20, v21, v14);
      sub_100049C40(0x3B1, v13);
      return 66;
    }

    v4 = v24;
    for (i = v25; i < v24; v4 = v24)
    {
      sub_10001D82C(a1, i)[8] = *(v26 + i) != 0;
      ++i;
    }
  }

  v5 = v25;
  if (v25 < v4)
  {
    do
    {
      v6 = sub_10001D82C(a1, v5);
      if ((v6[8] & 1) == 0)
      {
        sub_100046458(v6);
      }

      ++v5;
    }

    while (v5 < v24);
  }

  return 0;
}

uint64_t sub_100046D6C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a2 + 24);
  if (!v4)
  {
    v4 = *(a2 + 8);
  }

  v5 = open(v4, 0);
  dword_10007CE88 = v5;
  if (v5 < 0)
  {
    v17 = *__error();
    strerror(v17);
    sub_10004565C("could not open %s to freeze the volume: %s\n", v18, v19, v20, v21, v22, v23, v24, v4);
    sub_100049C40(0xA1, v17);
    return 66;
  }

  if (a3)
  {
    v33 = 0;
    result = ffsctl(v5, 0x80044A62uLL, &v33, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v8 = strerror(v7);
    sub_10004565C("could not sync and freeze volume: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
    v16 = 1081;
  }

  else
  {
    result = fcntl(v5, 53, 0);
    if (!result)
    {
      return result;
    }

    v7 = *__error();
    v25 = strerror(v7);
    sub_10004565C("could not freeze volume: %s\n", v26, v27, v28, v29, v30, v31, v32, v25);
    v16 = 162;
  }

  sub_100049C40(v16, v7);
  return 71;
}

uint64_t sub_100046EA0(uint64_t *a1, int8x16_t *a2)
{
  sub_10001D5B4(a2[2].i64[1], "fsck_apfs", *(a2[2].i64[1] + 16));
  v4 = a2[2].i64[1];
  v7 = a2[5];
  v8 = a2[6].i64[0];
  result = sub_100026A10(a1, 0, v4, &v7, v7, v5);
  if (!result)
  {
    *(qword_10009BA60 + 53) = 1;
  }

  return result;
}

uint64_t sub_100046F1C(uint64_t *a1, uint64_t a2, void *a3)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *a3 = -1;
  v21 = 8;
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = 16;
  v4 = sub_10002D04C(a1, a2, &v22);
  if (!v4)
  {
    v14 = v22;
    v15 = -1;
    v16 = a3;
    v17 = 8;
    while (1)
    {
      v18 = sub_1000397B8(v14, 0, v15, v16, &v21, v17, v20, &v19);
      v4 = v18;
      if ((v18 & 0xFFFFFFFD) != 0)
      {
        break;
      }

      if (v18)
      {
        return v4;
      }

      if ((v20[0] & 3) == 0)
      {
        return 0;
      }

      v14 = v22;
      v17 = v21;
      v15 = -2;
      v16 = a3;
    }
  }

  v5 = strerror(v4);
  sub_10004565C("unable to lookup latest snap xid: %s\n", v6, v7, v8, v9, v10, v11, v12, v5);
  return v4;
}

void sub_100047000(uint64_t a1, const char *a2, va_list a3)
{
  if (!a1)
  {
    return;
  }

  memset(__b, 170, sizeof(__b));
  v5 = vsnprintf(__b, 0x400uLL, a2, a3);
  if (v5 < 0x401)
  {
LABEL_10:
    if (*(a1 + 56) == 1)
    {
      v11 = *(a1 + 48);
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v11 = *(a1 + 40);
      if (!v11)
      {
        return;
      }
    }

    v11(a1, __b);
    return;
  }

  v6 = v5;
  v7 = v5 + 1;
  v8 = malloc_type_malloc(v7, 0x6FBDF0F3uLL);
  if (!v8)
  {
    strcpy(__b, "* * * cannot allocate memory * * *\n");
    goto LABEL_10;
  }

  v9 = v8;
  if (v7 <= vsnprintf(v8, v6, a2, a3))
  {
    strcpy(__b, " * * * cannot allocate memory * * *\n");
    free(v9);
    goto LABEL_10;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v10(a1, v9);
  }

  free(v9);
}

uint64_t sub_100047190(FILE **a1, char *a2)
{
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    v2 = __stdoutp;
  }

  fputs(a2, v2);

  return fflush(v2);
}

const char *sub_1000471E4(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_100078B20[a1 - 1];
  }
}

_BYTE *sub_10004720C(char *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = 1;
  do
  {
    a1 = strchr(a1 + 1, 37);
    v2 += 5;
  }

  while (a1);
  v3 = strlen(v1);
  v4 = malloc_type_calloc(1uLL, v3 + v2, 0xFC76B622uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *v1;
    v7 = v4;
    if (*v1)
    {
      v8 = 0;
      v9 = 0;
      v10 = v4;
      do
      {
        if (v8)
        {
          v11 = v6 - 65;
          v12 = ((1 << (v6 - 65)) & 0x94E17D0094407DLL) == 0;
          v8 = v11 > 0x37 || v12;
          v7 = v10;
        }

        else
        {
          *v10 = v6;
          v7 = v10 + 1;
          if (*v1 == 37)
          {
            if (v1[1] == 37)
            {
              v8 = 0;
              v7 = v10 + 2;
              v10[1] = 37;
              ++v1;
            }

            else
            {
              v7 += sprintf(v10 + 1, "%d$@", ++v9);
              v8 = 1;
            }
          }

          else
          {
            v8 = 0;
          }
        }

        v13 = *++v1;
        v6 = v13;
        v10 = v7;
      }

      while (v13);
    }

    *v7 = 0;
  }

  return v5;
}

FILE **sub_100047360()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040D577FD4FuLL);
  v1 = v0;
  if (v0)
  {
    if (sub_1000473DC(v0, &unk_10007C190) == -1)
    {
      sub_1000474B8(v1);
      return 0;
    }

    else
    {
      v1[5] = sub_100047190;
    }
  }

  return v1;
}

uint64_t sub_1000473DC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    v4 = a2;
    if (a2)
    {
      if (!*(a2 + 8))
      {
        return 0;
      }

      v5 = 0;
      v6 = (a2 + 48);
      do
      {
        v7 = *v6;
        v6 += 5;
        ++v5;
      }

      while (v7);
      v8 = malloc_type_realloc(*(a1 + 32), 8 * (*(a1 + 24) + v5), 0x2004093837F09uLL);
      if (v8)
      {
        *(a1 + 32) = v8;
        v9 = *(a1 + 24);
        v10 = 8 * v9;
        v11 = v5;
        do
        {
          *(*(a1 + 32) + v10) = v4;
          v10 += 8;
          v4 += 40;
          --v11;
        }

        while (v11);
        v12 = *(a1 + 32);
        v13 = v9 + v5;
        *(a1 + 24) = v13;
        qsort(v12, v13, 8uLL, sub_1000476F4);
        return 0;
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_1000474B8(FILE **a1)
{
  if (a1)
  {
    v2 = a1[4];
    if (v2)
    {
      free(v2);
    }

    if (a1[1])
    {
      fclose(*a1);
    }

    v3 = a1[8];
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

uint64_t sub_10004751C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 40) = a2;
  return result;
}

uint64_t sub_100047538(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

uint64_t sub_100047554(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 16) = a2;
  return result;
}

uint64_t sub_100047570(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 20) = a2;
  return result;
}

uint64_t sub_10004758C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 16) != 1)
  {
    v29 = *(a1 + 20);
    if (v29 == 2)
    {
      v30 = 1;
    }

    else
    {
      v30 = -1;
    }

    if (v29 == 1)
    {
      return 0;
    }

    else
    {
      return v30;
    }
  }

  v11 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    v34 = &a9;
    sub_100047000(a1, a2, &a9);
    v18 = *(a1 + 20);
    if (v18 == 1)
    {
      v28 = 0;
      v31 = "NO\n";
      goto LABEL_30;
    }

    if (v18 == 2)
    {
      v28 = 1;
      v31 = "YES\n";
LABEL_30:
      sub_100047164(a1, v31, v12, v13, v14, v15, v16, v17, v33);
      return v28;
    }

    v33 = 0xAAAAAAAAAAAAAAAALL;
    v19 = fgetln(__stdinp, &v33);
    if (v19)
    {
      v26 = v33 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_12;
    }

    v27 = *v19;
    if (v27 <= 0x4D)
    {
      break;
    }

    if (*v19 > 0x6Du)
    {
      if (v27 == 110)
      {
        return 0;
      }

      if (v27 == 121)
      {
        return 1;
      }
    }

    else
    {
      if (v27 == 78)
      {
        return 0;
      }

      if (v27 == 89)
      {
        return 1;
      }
    }

LABEL_13:
    ++v11;
  }

  if (v27 != 10)
  {
    goto LABEL_13;
  }

LABEL_12:
  if (v11 < 0xA)
  {
    goto LABEL_13;
  }

  sub_100047164(a1, "\n", v20, v21, v22, v23, v24, v25, v33);
  return 0;
}

const void **sub_100047720(const void **result, int a2)
{
  __key = a2;
  if (result)
  {
    result = bsearch(&__key, result[4], *(result + 6), 8uLL, sub_10004770C);
    if (result)
    {
      return *result;
    }
  }

  return result;
}

char *sub_100047770(int a1, const char *a2, va_list a3)
{
  v8 = 0;
  v7 = 0;
  v3 = a1 - 1;
  if ((a1 - 1) > 8)
  {
    v4 = &byte_10005C3F3;
    v5 = &byte_10005C3F3;
  }

  else
  {
    v4 = off_100078B68[v3];
    v5 = *(&off_100078BB0 + v3);
  }

  vasprintf(&v7, a2, a3);
  if (!v7)
  {
    return 0;
  }

  asprintf(&v8, "%s%s%s\n", v4, v7, v5);
  free(v7);
  return v8;
}

uint64_t sub_10004780C(uint64_t a1, uint64_t a2, const char *a3, va_list a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_1000517D0();
  }

  v5 = *(a2 + 16);
  if (v5 == 8)
  {
    return 0;
  }

  v6 = sub_100047770(v5, a3, a4);
  if (v6)
  {
    v13 = v6;
    sub_100047164(a1, "%s", v7, v8, v9, v10, v11, v12, v6);
    free(v13);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_10004788C(uint64_t a1, unsigned int *a2, char *a3, uint64_t *a4)
{
  v5 = *(a2 + 1);
  if (v5 != a3)
  {
    sub_1000517FC();
  }

  v7 = sub_10004720C(v5);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v7;
  sub_100047164(a1, "<plist version=1.0>\n", v8, v9, v10, v11, v12, v13, v102);
  sub_100047164(a1, "\t<dict>\n", v15, v16, v17, v18, v19, v20, v103);
  sub_1000471E4(a2[4]);
  sub_100047164(a1, "\t\t<key>%s</key> <string>%s</string>\n", v21, v22, v23, v24, v25, v26, "fsck_msg_type");
  if (*a2 != 119)
  {
    a2[5];
    sub_100047164(a1, "\t\t<key>%s</key> <integer>%s</integer>\n", v27, v28, v29, v30, v31, v32, "fsck_verbosity");
    v108 = *a2;
    sub_100047164(a1, "\t\t<key>%s</key> <integer>%u</integer>\n", v33, v34, v35, v36, v37, v38, "fsck_msg_number");
    sub_100047164(a1, "\t\t<key>%s</key> <string>%s</string>\n", v39, v40, v41, v42, v43, v44, "fsck_msg_string");
  }

  if (a2[6] >= 1)
  {
    sub_100047164(a1, "\t\t<key>%s</key>\n", v27, v28, v29, v30, v31, v32, "parameters");
    sub_100047164(a1, "\t\t<array>\n", v45, v46, v47, v48, v49, v50, v105);
    if (a2[6] >= 1)
    {
      for (i = 0; i < a2[6]; ++i)
      {
        v58 = *(*(a2 + 4) + 4 * i);
        if (v58 > 5)
        {
          if (v58 <= 7)
          {
            if (v58 == 6)
            {
              v74 = a4++;
              v75 = *v74;
              v67 = sub_100047C78();
              v68 = "directory";
            }

            else
            {
              v71 = a4++;
              v72 = *v71;
              v67 = sub_100047C78();
              v68 = "volumename";
            }

LABEL_27:
            sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v61, v62, v63, v64, v65, v66, v68);
            goto LABEL_28;
          }

          if (v58 == 8)
          {
LABEL_23:
            v73 = a4++;
            sub_100047164(a1, "\t\t\t<integer>%d</integer>\n", v51, v52, v53, v54, v55, v56, *v73);
            continue;
          }

          if (v58 == 9)
          {
            v86 = a4++;
            v87 = *v86;
            v67 = sub_100047C78();
            sub_100047164(a1, "\t\t\t<dict><key>%s</key> <string>%s</string></dict>\n", v88, v89, v90, v91, v92, v93, "fstype");
            goto LABEL_28;
          }

          if (v58 != 10)
          {
            goto LABEL_30;
          }

          v69 = a4++;
          sub_100047164(a1, "\t\t\t<integer>%llu</integer>\n", v51, v52, v53, v54, v55, v56, *v69);
        }

        else
        {
          if (v58 > 2)
          {
            if (v58 != 3)
            {
              if (v58 == 4)
              {
                v84 = a4++;
                v85 = *v84;
                v67 = sub_100047C78();
                v68 = "path";
              }

              else
              {
                v59 = a4++;
                v60 = *v59;
                v67 = sub_100047C78();
                v68 = "file";
              }

              goto LABEL_27;
            }

            v76 = a4++;
            v77 = *v76;
            v67 = sub_100047C78();
            sub_100047164(a1, "\t\t\t<string>%s</string>\n", v78, v79, v80, v81, v82, v83, v67);
LABEL_28:
            free(v67);
            continue;
          }

          if (v58 == 1)
          {
            goto LABEL_23;
          }

          if (v58 != 2)
          {
LABEL_30:
            v94 = a4++;
            sub_100047164(a1, "\t\t\t<integer>%p</integer>\n", v51, v52, v53, v54, v55, v56, *v94);
            continue;
          }

          v70 = a4++;
          sub_100047164(a1, "\t\t\t<integer>%ld</integer>\n", v51, v52, v53, v54, v55, v56, *v70);
        }
      }
    }

    sub_100047164(a1, "\t\t</array>\n", v51, v52, v53, v54, v55, v56, v106);
  }

  sub_100047164(a1, "\t</dict>\n", v27, v28, v29, v30, v31, v32, v104);
  sub_100047164(a1, "</plist>\n", v95, v96, v97, v98, v99, v100, v107);
  free(v14);
  return 0;
}

char *sub_100047C78()
{
  result = __chkstk_darwin();
  if (result)
  {
    v1 = result;
    v2 = __s1;
    bzero(__s1, 0x1801uLL);
    while (1)
    {
      v3 = *v1;
      if (v3 <= 0x26)
      {
        if (v3 == 34)
        {
          *v2 = 1869967654;
          *(v2 + 2) = 15220;
          goto LABEL_15;
        }

        if (v3 == 38)
        {
          *v2 = 1886216486;
          v2[4] = 59;
          v4 = 5;
          goto LABEL_18;
        }

        if (!*v1)
        {
          return strdup(__s1);
        }
      }

      else
      {
        switch(v3)
        {
          case '\'':
            *v2 = 1869635878;
            *(v2 + 2) = 15219;
LABEL_15:
            v4 = 6;
            goto LABEL_18;
          case '<':
            *v2 = 997485606;
            goto LABEL_13;
          case '>':
            *v2 = 997484326;
LABEL_13:
            v4 = 4;
            goto LABEL_18;
        }
      }

      *v2 = v3;
      v4 = 1;
LABEL_18:
      v2 += v4;
      ++v1;
    }
  }

  return result;
}

uint64_t sub_100047DCC(uint64_t a1, uint64_t a2, char *a3, _DWORD *a4)
{
  if (*(a2 + 8) != a3)
  {
    sub_100051828();
  }

  v6 = sub_10004720C(a3);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v6;
  v14 = *(a2 + 16) - 1;
  if (v14 > 8)
  {
    LOBYTE(v15) = 63;
  }

  else
  {
    v15 = dword_100077100[v14];
  }

  if (*a2 != 119)
  {
    v25 = *(a2 + 24);
    sub_100047164(a1, "(%c,%s,%d)\n", v7, v8, v9, v10, v11, v12, v15);
  }

  if (*(a2 + 24) >= 1)
  {
    for (i = 0; i < *(a2 + 24); ++i)
    {
      v18 = *(*(a2 + 32) + 4 * i);
      if (v18 > 7)
      {
        if (v18 == 8)
        {
          v22 = a4;
          a4 += 2;
          sub_100047164(a1, "(%d %%)\n", v7, v8, v9, v10, v11, v12, *v22);
          continue;
        }

        if (v18 == 9)
        {
LABEL_13:
          v19 = a4;
          a4 += 2;
          sub_100047164(a1, "%s\n", v7, v8, v9, v10, v11, v12, *v19);
          continue;
        }

        if (v18 != 10)
        {
          goto LABEL_24;
        }

        v20 = a4;
        a4 += 2;
        sub_100047164(a1, "%llu\n", v7, v8, v9, v10, v11, v12, *v20);
      }

      else
      {
        if ((v18 - 3) < 5)
        {
          goto LABEL_13;
        }

        if (v18 == 1)
        {
          v24 = a4;
          a4 += 2;
          sub_100047164(a1, "%d\n", v7, v8, v9, v10, v11, v12, *v24);
          continue;
        }

        if (v18 != 2)
        {
LABEL_24:
          v23 = a4;
          a4 += 2;
          sub_100047164(a1, "%p\n", v7, v8, v9, v10, v11, v12, *v23);
          continue;
        }

        v21 = a4;
        a4 += 2;
        sub_100047164(a1, "%ld\n", v7, v8, v9, v10, v11, v12, *v21);
      }
    }
  }

  free(v13);
  return 0;
}

uint64_t sub_100047FFC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = sub_100047720(a1, a2);
  if (!v10)
  {
    sub_100051854();
  }

  v11 = v10;
  v12 = *(a1 + 16) - 1;
  if (v12 > 3)
  {
    v13 = sub_100047FF4;
  }

  else
  {
    v13 = off_100078BF8[v12];
  }

  *(a1 + 56) = 1;
  sub_10004780C(a1, v10, v10[1], &a9);
  *(a1 + 56) = 0;
  return (v13)(a1, v11, v11[1], &a9);
}

uint64_t sub_1000480B8(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, char a9)
{
  if (!a1)
  {
    return 22;
  }

  v11 = a6;
  if (a6 > 0x10000 && (a9 & 1) != 0)
  {
    v11 = 0x10000;
  }

  else
  {
    while (a5 > 0x10000 && v11 < 0x10000 || a5 > 0x1000 && v11 < 0x400)
    {
      a5 >>= 1;
      v11 *= 2;
    }

    while (a5 <= 0xFFF && v11 > 0x400 || !HIWORD(a5) && v11 > 0x10000)
    {
      a5 *= 2;
      v11 >>= 1;
    }
  }

  result = 34;
  if (a5 - 65537 >= 0xFFFF0FFF && v11 - 65537 >= 0xFFFF03FF)
  {
    v18 = *(a2 + 84);
    v19 = malloc_type_calloc(1uLL, 0x118uLL, 0x10E004027214369uLL);
    if (v19)
    {
      v20 = v19;
      *(v19 + 4) = a2;
      *(v19 + 5) = a4;
      *(v19 + 12) = v18;
      *(v19 + 7) = *(a2 + 112);
      *(v19 + 18) = a7;
      if (a3)
      {
        v21 = *a3;
        *(v19 + 200) = a3[1];
        *(v19 + 184) = v21;
        v22 = a3[2];
        v23 = a3[3];
        v24 = a3[4];
        *(v19 + 264) = a3[5];
        *(v19 + 248) = v24;
        *(v19 + 232) = v23;
        *(v19 + 216) = v22;
      }

      v25 = malloc_type_calloc(1uLL, 8 * a7, 0x2004093837F09uLL);
      *(v20 + 8) = v25;
      if (v25)
      {
        v26 = v11 * a5;
        do
        {
          if (a5 % v18)
          {
            sub_1000483CC(v20);
            return 34;
          }

          v27 = v11;
          v28 = a5;
          v29 = mmap(0, v26, 3, 4098, -1, 0);
          v30 = v29;
          *(v20 + 15) = v29;
          if (v29 != -1)
          {
            break;
          }

          v11 = 0;
          a5 = 0x10000;
          v31 = v26 > 0x400000;
          v26 = 0;
        }

        while (v31);
        if (v29 != -1)
        {
          *(v20 + 14) = v29;
          if (a8)
          {
            v32 = getpagesize();
            v33 = v27 * v28;
            if (v33)
            {
              v34 = &v30[v33];
              do
              {
                *v30 = 0;
                v30 += v32;
              }

              while (v30 < v34);
              v30 = *(v20 + 15);
            }
          }

          v35 = v27 - 1;
          if (v27 == 1)
          {
            v36 = v30;
          }

          else
          {
            do
            {
              v36 = &v30[v28];
              *v30 = v36;
              v30 = v36;
              --v35;
            }

            while (v35);
          }

          *v36 = 0;
          *(v20 + 32) = v27;
          *(v20 + 19) = v28;
          *(v20 + 20) = v27;
          v37 = malloc_type_malloc(0x900uLL, 0x10A0040E6181C31uLL);
          if (v37)
          {
            v38 = v37;
            bzero(v37, 0x900uLL);
            v39 = 0;
            v40 = v38 + 48;
            v41 = vdupq_n_s64(0x2FuLL);
            do
            {
              v42 = vorrq_s8(vdupq_n_s64(v39), xmmword_100076F20);
              if (vmovn_s64(vcgtq_u64(v41, v42)).u8[0])
              {
                *(v40 - 6) = v40;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x2FuLL), v42)).i32[1])
              {
                *v40 = v40 + 6;
              }

              v39 += 2;
              v40 += 12;
            }

            while (v39 != 48);
            result = 0;
            *(v20 + 19) = v38;
            *(v20 + 17) = v38;
            *a1 = v20;
            *v20 = v20;
            *(v20 + 1) = v20;
            *(v20 + 2) = v20 + 16;
            *(v20 + 3) = v20 + 16;
            return result;
          }
        }
      }

      sub_1000483CC(v20);
    }

    return 12;
  }

  return result;
}

uint64_t sub_1000483CC(unsigned int *a1)
{
  if (a1)
  {
    if (*(a1 + 17))
    {
      for (i = *(a1 + 18); i; i = *i)
      {
        v3 = i[5];
        if (v3 && (i[2] & 0x80000000) != 0)
        {
          free(v3);
        }
      }

      for (j = *(a1 + 19); j; j = *j)
      {
        v5 = j[5];
        if (v5 && (j[2] & 0x80000000) != 0)
        {
          free(v5);
        }
      }

      free(*(a1 + 17));
    }

    if (*(a1 + 14))
    {
      sub_100048548(a1);
      munmap(*(a1 + 14), a1[20] * a1[19]);
    }

    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = a1[18];
      if (v7)
      {
        for (k = 0; k < v7; ++k)
        {
          v9 = *(*(a1 + 8) + 8 * k);
          if (v9)
          {
            do
            {
              v10 = v9[2];
              free(v9);
              v9 = v10;
            }

            while (v10);
            v7 = a1[18];
          }
        }

        v6 = *(a1 + 8);
      }

      free(v6);
    }

    *(a1 + 34) = 0;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    free(a1);
  }

  return 0;
}

uint64_t sub_1000484FC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 76) % a2)
  {
    return 34;
  }

  result = 0;
  v4 = *(a1 + 56) * *(a1 + 48) / a2;
  *(a1 + 48) = a2;
  *(a1 + 56) = v4;
  return result;
}

uint64_t sub_10004853C(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_100048548(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 16;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *(*(a1 + 64) + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *(v5 + 40);
          if (v6)
          {
            if ((v6 & 4) != 0)
            {
              v7 = a1 + 184;
            }

            else
            {
              v7 = 0;
            }

            result = sub_100049854(a1, v5, v7);
            if (result)
            {
              return result;
            }

            *(v5 + 40) &= ~1u;
            --*(a1 + 84);
          }

          v5 = *(v5 + 16);
        }

        while (v5);
        v3 = *(a1 + 72);
      }
    }
  }

  *(a1 + 88) = 0;
  (*(*(a1 + 40) + 80))(*(a1 + 32), 1);
  return 0;
}

uint64_t sub_100048608(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a2 / *(a1 + 76) * *(a1 + 76) % *(a1 + 72);
  if (a3)
  {
    *a3 = 0;
  }

  v6 = *(*(a1 + 64) + 8 * v5);
  if (!v6)
  {
    return 2;
  }

  while (*(v6 + 48) != a2)
  {
    v6 = *(v6 + 16);
    if (!v6)
    {
      return 2;
    }
  }

  if (!*(v6 + 112))
  {
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_14;
  }

  v7 = (*(*(a1 + 40) + 48))(*(a1 + 32));
  if (v7)
  {
    v9 = *(v6 + 56);
    *v9 = *(a1 + 120);
    *(a1 + 120) = v9;
    ++*(a1 + 128);
    *(v6 + 56) = 0;
  }

  free(*(v6 + 112));
  *(v6 + 112) = 0;
  if (a3)
  {
LABEL_14:
    if (!v7)
    {
      *a3 = v6;
    }
  }

  return v7;
}

uint64_t sub_1000486DC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  if (!v2)
  {
    return 37;
  }

  *(a2 + 44) = v2 - 1;
  sub_100048718(a1, a2, 0);
  return 0;
}

void *sub_100048718(void *result, uint64_t *a2, int a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    if (v4)
    {
      *(v3 + 8) = v4;
      *a2[1] = v3;
    }
  }

  if (*(a2 + 11))
  {
    v5 = result[2];
    *a2 = v5;
    v6 = result + 2;
    result = v5;
  }

  else if (a3)
  {
    *a2 = result;
    v6 = result[1];
  }

  else
  {
    v6 = result;
    result = *result;
    *a2 = result;
  }

  a2[1] = v6;
  result[1] = a2;
  *a2[1] = a2;
  return result;
}

uint64_t sub_100048780(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5, int a6, _BYTE *a7, __int128 *a8, uint64_t a9)
{
  v15 = *(a1 + 76);
  if ((a6 & 4) != 0 && v15 != *(a1 + 48))
  {
    return 45;
  }

  v69 = 0xAAAAAAAAAAAAAAAALL;
  v16 = a2 / v15 * v15;
  v17 = (a1 + 144);
  while (1)
  {
    v17 = *v17;
    if (!v17)
    {
      break;
    }

    v18 = v17[3];
    v19 = v18 < a2 || v18 >= a2 + a3;
    if (!v19)
    {
      return 11;
    }
  }

  v64 = (a1 + 144);
  v65 = a2 % v15;
  v21 = sub_100048CCC(a1, v16, &v69, a5, a6, a7, a8 != 0, a9);
  v20 = v21;
  if (a8 && (*a7 & 1) == 0)
  {
    v26 = v69;
    v27 = *(a1 + 32);
    if (!v69)
    {
      v28 = *(a1 + 72);
      v29 = sub_100049A4C(v16, a5, a9, a6);
      if (!v29)
      {
        return 12;
      }

      v26 = v29;
      v29[3] = 0;
      v30 = *(a1 + 64);
      v31 = *(v30 + 8 * (v16 % v28));
      v29[2] = v31;
      if (v31)
      {
        *(v31 + 24) = v29;
      }

      *(v30 + 8 * (v16 % v28)) = v29;
    }

    v32 = v26[7];
    if (v32)
    {
      if (!v26[14])
      {
        return 14;
      }

      *(a8 + 14) = v32;
      ++*(v26 + 11);
      sub_100048718(a1, v26, 0);
      return 0;
    }

    v34 = *(a1 + 48);
    v35 = v16 / v34;
    v36 = *(a1 + 56) - 1;
    v19 = v36 >= v16 / v34;
    v37 = v36 - v16 / v34;
    if (!v19)
    {
      return 6;
    }

    v38 = *(a1 + 76) / v34;
    if (v37 < v38)
    {
      v39 = v37 + 1;
    }

    else
    {
      v39 = v38;
    }

    v40 = sub_100049AC0(*(v27 + 16));
    v26[7] = v40;
    if (v40)
    {
      v41 = malloc_type_malloc(0x68uLL, 0x10A2040BE83C1C8uLL);
      v26[14] = v41;
      if (v41)
      {
        v42 = *a8;
        v43 = a8[2];
        v41[1] = a8[1];
        v41[2] = v43;
        *v41 = v42;
        v44 = a8[3];
        v45 = a8[4];
        v46 = a8[5];
        *(v41 + 12) = *(a8 + 12);
        v41[4] = v45;
        v41[5] = v46;
        v41[3] = v44;
        v20 = (*(*(a1 + 40) + 40))(v27, v35, v39, v26[7], a5, 1, v26[14], v26[12], *(v26 + 26), 0);
        if (v20)
        {
          v47 = *(v27 + 16);
          v48 = v26[7];
          *v48 = *(v47 + 120);
          *(v47 + 120) = v48;
          ++*(v47 + 128);
          v26[7] = 0;
          free(v26[14]);
          v26[14] = 0;
        }

        else
        {
          *(a8 + 14) = v26[7];
          ++*(v26 + 11);
          sub_100048718(a1, v26, 0);
        }

        return v20;
      }

      v59 = *(v27 + 16);
      v60 = v26[7];
      *v60 = *(v59 + 120);
      *(v59 + 120) = v60;
      ++*(v59 + 128);
      v26[7] = 0;
    }

    return 12;
  }

  if (v21)
  {
    return v20;
  }

  v22 = *(a1 + 152);
  if (!v22)
  {
    return 55;
  }

  *(a1 + 152) = *v22;
  *a4 = v22;
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = 0;
  if (v16 / *(a1 + 76) == (a2 + a3 - 1) / *(a1 + 76))
  {
    v23 = v69;
    *(v22 + 40) = *(v69 + 56) + v65;
    ++*(v23 + 44);
    sub_100048718(a1, v23, 0);
LABEL_16:
    v24 = v64;
    v25 = *v64;
    if (*v64)
    {
      *v22 = v25;
      *(v22 + 8) = 0;
      v24 = (v25 + 8);
    }

    v20 = 0;
    *v24 = v22;
    ++*(a1 + 160);
    return v20;
  }

  *(v22 + 16) = 0x80000000;
  v68 = -86;
  if (a8)
  {
    *v22 = *(a1 + 152);
    *(a1 + 152) = v22;
    return 45;
  }

  v49 = malloc_type_malloc(a3, 0xF03CC91FuLL);
  *(v22 + 40) = v49;
  if (!v49)
  {
    return 12;
  }

  v50 = *(a1 + 76) - v65;
  v51 = a3 - v50;
  memcpy(v49, (*(v69 + 56) + v65), v50);
  v52 = v69;
  ++*(v69 + 44);
  sub_100048718(a1, v52, 0);
  if (!v51)
  {
LABEL_52:
    ++*(a1 + 176);
    goto LABEL_16;
  }

  v53 = v16 + *(a1 + 76);
  while (1)
  {
    v54 = sub_100048CCC(a1, v53, &v69, a5, a6, &v68, 0, 0);
    if (v54)
    {
      break;
    }

    v55 = *(a1 + 76);
    if (v51 >= v55)
    {
      v56 = v55;
    }

    else
    {
      v56 = v51;
    }

    memcpy((*(v22 + 40) + v50), *(v69 + 56), v56);
    v57 = v69;
    ++*(v69 + 44);
    v58 = *(a1 + 76);
    sub_100048718(a1, v57, 0);
    if ((v68 & 1) == 0)
    {
      *a7 = 0;
    }

    v50 += v56;
    v53 += v58;
    v51 -= v56;
    if (!v51)
    {
      goto LABEL_52;
    }
  }

  v20 = v54;
  free(*(v22 + 40));
  *(v22 + 40) = 0;
  if (!v50)
  {
    v61 = v53 - *(a1 + 76);
    v62 = sub_100048CCC(a1, v61, &v69, a5, a6, a7, 0, 0);
    if (v62)
    {
      return v62;
    }

    else
    {
      do
      {
        v63 = v69;
        --*(v69 + 44);
        sub_100048718(a1, v63, 0);
        v20 = sub_100048CCC(a1, v61, &v69, a5, a6, a7, 0, 0);
      }

      while (!v20);
    }
  }

  return v20;
}

uint64_t sub_100048CCC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, int a5, _BYTE *a6, int a7, uint64_t a8)
{
  result = 22;
  if (!a3 || !a6)
  {
    return result;
  }

  v10 = a7;
  v13 = a2 % *(a1 + 72);
  *a6 = 0;
  *a3 = 0;
  v14 = *(a1 + 64);
  v15 = *(v14 + 8 * v13);
  if (v15)
  {
    v16 = *(v14 + 8 * v13);
    while (v16[6] != a2)
    {
      v16 = v16[2];
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    if (v15 != v16)
    {
      v18 = v16[2];
      v19 = v16[3];
      if (v18)
      {
        *(v18 + 24) = v19;
      }

      *(v19 + 16) = v18;
    }

    if (v16[7] && !v16[14])
    {
      *a6 = 1;
    }
  }

  else
  {
LABEL_7:
    if (a7)
    {
      ++*(a1 + 160);
      return 2;
    }

    v17 = sub_100049A4C(a2, a4, a8, a5);
    if (!v17)
    {
      return 12;
    }

    v16 = v17;
    v14 = *(a1 + 64);
  }

  if (*(v14 + 8 * v13) != v16)
  {
    v16[3] = 0;
    v20 = *(v14 + 8 * v13);
    v16[2] = v20;
    if (v20)
    {
      *(v20 + 24) = v16;
    }

    *(v14 + 8 * v13) = v16;
  }

  if (v10)
  {
    goto LABEL_26;
  }

  if (v16[7])
  {
    if (v16[14])
    {
      sub_100048608(a1, a2, 0);
    }

    goto LABEL_26;
  }

  v21 = sub_100049AC0(a1);
  v16[7] = v21;
  if (!v21)
  {
    return 12;
  }

  v22 = *(a1 + 48);
  if (a2 % v22 || *(a1 + 76) % v22)
  {
    return 22;
  }

  if (*(a1 + 56) - 1 < a2 / v22)
  {
    return 6;
  }

  v23 = v16[12];
  v24 = *(v16 + 26);
  result = (*(*(a1 + 40) + 40))(*(a1 + 32));
  if (!result)
  {
    ++*(a1 + 168);
LABEL_26:
    result = 0;
    *a3 = v16;
  }

  return result;
}

uint64_t sub_100048EBC(_DWORD *a1, uint64_t a2, unint64_t a3, int a4, int a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  v16 = a1[19];
  if ((a8 & 4) != 0 && v16 != a1[12])
  {
    return 45;
  }

  v33 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = a6;
  v28 = -86;
  v17 = a1[26];
  if (v17)
  {
    v32 = v17 | a6;
  }

  else if ((a6 & 1) == 0)
  {
    if (a1[22])
    {
      result = sub_100048548(a1);
      if (result)
      {
        return result;
      }
    }
  }

  v18 = a3 / v16 * v16;
  result = sub_100048CCC(a1, v18, &v33, a7, a8, &v28, 0, a9);
  if (result)
  {
    return result;
  }

  v20 = a3 - v18;
  v21 = a1[19];
  if (a3 - v18 + a4 <= v21)
  {
    result = sub_100049090(a1, &v29, v33, a5, a7);
    if (result)
    {
      return result;
    }

    goto LABEL_22;
  }

  v22 = v21 - v20;
  v31 = v21 - v20;
  result = sub_100049090(a1, &v29, v33, a5, a7);
  if (result)
  {
    return result;
  }

  v23 = a4 - v22;
  if (a4 == v22)
  {
LABEL_22:
    result = 0;
    ++a1[41];
    return result;
  }

  v24 = a1[19];
  v25 = v18 + v24;
  while (1)
  {
    v26 = v23 >= v24 ? v24 : v23;
    sub_100048CCC(a1, v25, &v33, a7, a8, &v28, 0, 0);
    v27 = *(v33 + 48);
    v31 = v26;
    v29 = a2 + v22;
    v30 = v27;
    result = sub_100049090(a1, &v29, v33, a5, a7);
    if (result)
    {
      return result;
    }

    v22 += v26;
    v24 = a1[19];
    v25 += v24;
    v23 -= v26;
    if (!v23)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_100049090(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = *(a2 + 8) % *(a1 + 76);
  if (*(a1 + 104))
  {
    v11 = *(a2 + 16);
    v12 = *(a3 + 64);
    if (v12)
    {
      v13 = *(a3 + 80);
      if (v13)
      {
        v14 = *(a3 + 72);
        if (v13 != v11 || v14 != v10)
        {
          v15 = v14 + v13;
          memcpy(v12, *(a3 + 56), v14);
          memcpy((*(a3 + 64) + v15), (*(a3 + 56) + v15), *(a1 + 76) - v15);
          *(a3 + 72) = 0;
          *(a3 + 80) = 0;
        }
      }
    }

    else
    {
      v16 = sub_100049AC0(a1);
      *(a3 + 64) = v16;
      if (!v16)
      {
        return 12;
      }

      memcpy(v16 + v10, (*(a3 + 56) + v10), v11);
      *(a3 + 72) = v10;
      v17 = *(a3 + 40);
      *(a3 + 80) = v11;
      *(a3 + 84) = v17;
      *(a3 + 32) = *(a1 + 96);
      *(a1 + 96) = a3;
      ++*(a1 + 92);
    }
  }

  memcpy((*(a3 + 56) + v10), *a2, *(a2 + 16));
  v18 = *(a2 + 8);
  v19 = *(a1 + 76);
  v20 = *(a1 + 48);
  v21 = (v18 % v19) / v20;
  LODWORD(v19) = (v18 + *(a2 + 16) - 1) % v19;
  v22 = a3 + 88;
  v23 = v21 >> 3;
  v24 = v19 / v20;
  v25 = 255 << (v21 & 7);
  if (v21 >> 3 == v24 >> 3)
  {
    v26 = (0xFFu >> (~v24 & 7)) & v25;
  }

  else
  {
    *(v22 + v23) |= v25;
    if (v23 + 1 < v24 >> 3)
    {
      memset((a3 + v23 + 89), 255, ((v24 >> 3) - v23 - 2) + 1);
    }

    v26 = 0xFFu >> (~v24 & 7);
    v23 = v24 >> 3;
  }

  *(v22 + v23) |= v26;
  v27 = *(a2 + 20) & 3;
  if (v27)
  {
    v28 = *(a3 + 40);
    if ((v28 & 1) == 0)
    {
      ++*(a1 + 84);
    }

    *(a3 + 40) = v28 | v27;
    goto LABEL_18;
  }

  result = sub_100049854(a1, a3, a5);
  if (!result)
  {
LABEL_18:
    sub_100048718(a1, a3, a4);
    return 0;
  }

  return result;
}

uint64_t sub_1000492BC(uint64_t a1)
{
  if (*(a1 + 104))
  {
    return 37;
  }

  result = 0;
  *(a1 + 104) = 1;
  ++*(a1 + 88);
  return result;
}

uint64_t sub_1000492EC(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 37;
  }

  v1 = *(a1 + 96);
  if (v1)
  {
    v2 = *(a1 + 128);
    v3 = *(a1 + 120);
    do
    {
      v4 = *(v1 + 64);
      *v4 = v3;
      *(a1 + 120) = v4;
      ++v2;
      *(v1 + 64) = 0;
      *(v1 + 84) = 0;
      v1 = *(v1 + 32);
      v3 = v4;
    }

    while (v1);
    *(a1 + 128) = v2;
  }

  *(a1 + 100) = 0;
  *(a1 + 92) = 0;
  v5 = *(a1 + 80);
  v6 = v5 - *(a1 + 84);
  v7 = v5 >> 2;
  v8 = v6 >= 0x101 && v6 >= v7;
  if (v8 && *(a1 + 88) < 0x400u)
  {
    return 0;
  }

  result = sub_100048548(a1);
  if (!result)
  {
    return 84;
  }

  return result;
}

uint64_t sub_10004938C(uint64_t a1)
{
  if (!*(a1 + 104))
  {
    return 22;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = -1;
    while (1)
    {
      v4 = *(v2 + 64);
      if (!v4)
      {
        return 14;
      }

      if (++v3 >= *(a1 + 92))
      {
        return 14;
      }

      v5 = *(v2 + 80);
      v6 = *(v2 + 56);
      if (v5)
      {
        memcpy(v6 + *(v2 + 72), (v4 + *(v2 + 72)), v5);
        v6 = *(v2 + 64);
      }

      else
      {
        *(v2 + 56) = v4;
      }

      *v6 = *(a1 + 120);
      *(a1 + 120) = v6;
      ++*(a1 + 128);
      *(v2 + 64) = 0;
      v7 = *(v2 + 84);
      *(v2 + 40) = v7;
      *(v2 + 84) = 0;
      if ((v7 & 1) == 0)
      {
        --*(a1 + 84);
      }

      v2 = *(v2 + 32);
      if (!v2)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    result = 0;
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
    --*(a1 + 88);
  }

  return result;
}

double sub_100049474(uint64_t a1, uint64_t *a2, int a3)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v6 = a2[3];
  v7 = v6 / *(a1 + 76) * *(a1 + 76);
  v19 = -86;
  if (!sub_100048CCC(a1, v7, &v20, 0, 0, &v19, 0, 0))
  {
    if ((a2[2] & 0x80000000) != 0)
    {
      v10 = *(a2 + 8) + v6 - v7 - *(a1 + 76);
      v11 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100048718(a1, v11, a3);
      if (v10)
      {
        v12 = v7 + *(a1 + 76);
        do
        {
          sub_100048CCC(a1, v12, &v20, 0, 0, &v19, 0, 0);
          v13 = *(a1 + 76);
          if (v10 >= v13)
          {
            v14 = v10 - v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v20;
          if ((*(v20 + 40) & 2) == 0)
          {
            --*(v20 + 44);
          }

          sub_100048718(a1, v15, a3);
          v12 += *(a1 + 76);
          v16 = v10 > v13;
          v10 = v14;
        }

        while (v16);
      }

      free(a2[5]);
    }

    else
    {
      v9 = v20;
      if ((*(v20 + 40) & 2) == 0)
      {
        --*(v20 + 44);
      }

      sub_100048718(a1, v9, a3);
    }

    v17 = *a2;
    v18 = a2[1];
    if (*a2)
    {
      *(v17 + 8) = v18;
    }

    if (v18)
    {
      *v18 = v17;
    }

    if (*(a1 + 144) == a2)
    {
      *(a1 + 144) = *a2;
    }

    result = 0.0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    *a2 = *(a1 + 152);
    *(a1 + 152) = a2;
  }

  return result;
}

uint64_t sub_100049628(uint64_t a1, _DWORD *a2)
{
  if (a2[11])
  {
    return 16;
  }

  v4 = *(a2 + 2);
  v5 = *(a2 + 3);
  if (v4)
  {
    *(v4 + 24) = v5;
  }

  if (v5)
  {
    v6 = (v5 + 16);
  }

  else
  {
    v6 = (*(a1 + 64) + 8 * (*(a2 + 6) % *(a1 + 72)));
  }

  *v6 = v4;
  if (!*(a2 + 7) || (result = sub_1000496C8(a1, a2), !result))
  {
    *(a2 + 14) = 0;
    *(a2 + 5) = 0u;
    *(a2 + 6) = 0u;
    *(a2 + 3) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
    free(a2);
    return 0;
  }

  return result;
}

uint64_t sub_1000496C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if ((v4 & 4) != 0)
  {
    v5 = a1 + 184;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) != 0 || *(a2 + 64))
  {
    if (*(a1 + 104))
    {
      return 16;
    }

    if (*(a1 + 88))
    {
      result = sub_100048548(a1);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40);
    }

    else
    {
      result = sub_100049854(a1, a2, v5);
      if (result)
      {
        return result;
      }

      v4 = *(a2 + 40) & 0xFFFFFFFE;
      *(a2 + 40) = v4;
      --*(a1 + 84);
    }
  }

  result = 0;
  if ((v4 & 2) == 0)
  {
    v7 = *(a2 + 56);
    *v7 = *(a1 + 120);
    *(a1 + 120) = v7;
    ++*(a1 + 128);
  }

  return result;
}

uint64_t sub_100049780(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = a2;
  v4 = *(a1 + 76);
  if (a2)
  {
    v5 = *(a1 + 76);
  }

  else
  {
    v5 = a3 % v4 + a4;
  }

  if (!v5)
  {
    return 0;
  }

  v10 = -86;
  v7 = a3 - a3 % v4;
  while (!a2)
  {
    sub_100048CCC(a1, v7, &v11, 0, 0, &v10, 1, 0);
    a2 = v11;
    if (v11)
    {
      break;
    }

LABEL_13:
    a2 = 0;
    v11 = 0;
    v9 = *(a1 + 76);
    v7 += v9;
    v5 -= v9;
    if (!v5)
    {
      return 0;
    }
  }

  if (!*(a2 + 44))
  {
    if (*(a2 + 56))
    {
      result = sub_1000496C8(a1, a2);
      if (result)
      {
        return result;
      }

      a2 = v11;
    }

    *(a2 + 56) = 0;
    goto LABEL_13;
  }

  return 16;
}

uint64_t sub_100049854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  v4 = *(a1 + 48);
  if (v3 % v4)
  {
    return 22;
  }

  v6 = *(a1 + 76);
  v7 = v6 / v4;
  if (v6 % v4)
  {
    return 22;
  }

  result = 0;
  if (v7 >= 1)
  {
    v9 = (v7 - 1) >> 3;
    if ((v9 & 0x80000000) == 0)
    {
      v12 = *(a2 + 56);
      v13 = (a2 + 88);
      do
      {
        v14 = 0;
        v15 = (v9 + 1);
        v16 = v13;
        while (1)
        {
          v18 = *v16++;
          v17 = v18;
          if (v18)
          {
            break;
          }

          v14 += 8;
          if (!--v15)
          {
            return 0;
          }
        }

        if ((v17 & 1) == 0)
        {
          do
          {
            v19 = v17;
            ++v14;
            v17 >>= 1;
          }

          while ((v19 & 2) == 0);
        }

        result = 0;
        if (v14 >= v7 || v14 == -1)
        {
          break;
        }

        LODWORD(v20) = 0;
        do
        {
          v20 = (v20 + 1);
        }

        while (((v13[(v20 + v14) >> 3] >> ((v20 + v14) & 7)) & 1) != 0);
        v21 = v14 >> 3;
        v22 = v14 + v20 - 1;
        v23 = v22 >> 3;
        v24 = 0xFFu >> (8 - (v14 & 7));
        if (v22 >> 3 == v14 >> 3)
        {
          v25 = (510 << (v22 & 7)) | v24;
          v23 = v14 >> 3;
        }

        else
        {
          v26 = &v13[v21];
          *v26 &= v24;
          if (v21 + 1 < v23)
          {
            bzero(v26 + 1, (v23 - v21 - 2) + 1);
          }

          v25 = 510 << (v22 & 7);
        }

        v13[v23] &= v25;
        result = (*(*(a1 + 40) + 72))(*(a1 + 32), (v3 + (*(a1 + 48) * v14)) / *(a1 + 48), v20, v12 + (*(a1 + 48) * v14), a3, *(a2 + 96), *(a2 + 104), 0);
        if (result)
        {
          break;
        }

        ++*(a1 + 172);
        v7 = *(a1 + 76) / *(a1 + 48);
        if (v7 < 1)
        {
          break;
        }

        v9 = (v7 - 1) >> 3;
      }

      while ((v9 & 0x80000000) == 0);
    }
  }

  return result;
}

void *sub_100049A4C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = malloc_type_calloc(0x78uLL, 1uLL, 0x10A0040F6E85490uLL);
  if (result)
  {
    result[6] = a1;
    if (a2)
    {
      *(result + 10) |= 4u;
    }

    result[12] = a3;
    *(result + 26) = a4 & 0xFFFEFFFF;
  }

  return result;
}

void *sub_100049AC0(uint64_t a1)
{
  result = *(a1 + 120);
  if (result && *(a1 + 128))
  {
    goto LABEL_3;
  }

  v4 = *(a1 + 8);
  if (v4 == a1)
  {
    return 0;
  }

  while (1)
  {
    v6 = *v4;
    v5 = v4[1];
    *(v6 + 8) = v5;
    *v5 = v6;
    if ((v4[5] & 1) == 0 && !*(v4 + 11))
    {
      break;
    }

    v7 = *(a1 + 16);
    *v4 = v7;
    v4[1] = a1 + 16;
    *(v7 + 8) = v4;
    *v4[1] = v4;
    v4 = *(a1 + 8);
    if (v4 == a1)
    {
      return 0;
    }
  }

  sub_100049628(a1, v4);
  result = *(a1 + 120);
  if (result)
  {
LABEL_3:
    v3 = *(a1 + 128);
    if (v3)
    {
      *(a1 + 120) = *result;
      *(a1 + 128) = v3 - 1;
      return result;
    }

    return 0;
  }

  return result;
}

time_t sub_100049B70()
{
  result = time(0);
  qword_10009AF58 = result;
  qword_10009AF60 = &byte_10005C3F3;
  dword_10009AF68 = 1;
  dword_10009AF6C = -1;
  dword_10009AF70 = 0;
  dword_10009AF74 = 1;
  return result;
}

BOOL sub_100049C04()
{
  v0 = dword_10009AF74;
  if (dword_10009AF74 <= 4)
  {
    ++dword_10009AF74;
  }

  return v0 < 5;
}

char *sub_100049C40(char *result, int a2)
{
  v2 = result;
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = -1;
  }

  if ((v3 + 11) >= 0xA)
  {
    v8 = dword_10009B07C;
    v9 = dword_10009B07C;
    v10 = dword_10009AF6C;
    if (dword_10009B07C < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v11 = 0;
      while (dword_10009B080[v11] != dword_10009AF6C)
      {
        if (dword_10009B07C == ++v11)
        {
          LODWORD(v11) = dword_10009B07C;
          goto LABEL_15;
        }
      }

      ++dword_10009B094[v11];
    }

LABEL_15:
    if (v11 == v9 && v8 <= 4 && v10 >= 1)
    {
      dword_10009B080[v9] = v10;
      dword_10009B094[v9] = 1;
      dword_10009B07C = v9 + 1;
    }

    free(qword_10009AF78);
    result = strdup(qword_10009AF60);
    qword_10009AF78 = result;
    dword_10009B0A8 = dword_10009AF68;
    dword_10009AF6C = v2;
    dword_10009AF70 = v3;
    v7 = &dword_10009AF88;
    v4 = dword_10009AF88;
    goto LABEL_20;
  }

  v4 = dword_10009AF84;
  if (dword_10009AF84 <= 20)
  {
    v5 = (-2 - v3);
    v6 = dword_10009AF8C[v5];
    if (v6 <= 4)
    {
      *(&unk_10009AFB4 + 5 * v5 + v6) = result;
      dword_10009AF8C[v5] = v6 + 1;
      v7 = &dword_10009AF84;
LABEL_20:
      *v7 = v4 + 1;
    }
  }

  return result;
}

uint64_t sub_100049DB4(FILE *a1, int a2)
{
  v3 = &byte_10005C3F3;
  v4 = "n";
  if (a2 != 1)
  {
    v4 = &byte_10005C3F3;
  }

  if (a2 == 2)
  {
    v4 = "y";
  }

  if (qword_10009AF78)
  {
    v3 = qword_10009AF78;
  }

  fprintf(a1, "dev=%s vers=%s default_ans=%s result=%d ", v3, "2632.40.15.0.2", v4, dword_10009AF70);
  if (dword_10009AF84)
  {
    v5 = 0;
    v6 = &dword_10009AFB8;
    do
    {
      v7 = dword_10009AF8C[v5];
      if (v7 >= 1)
      {
        fprintf(a1, "wr=%d wl=%d", -2 - v5, *(&unk_10009AFB4 + 5 * v5));
        if (v7 != 1)
        {
          v8 = v7 - 1;
          v9 = v6;
          do
          {
            v10 = *v9++;
            fprintf(a1, ":%d", v10);
            --v8;
          }

          while (v8);
        }

        fputc(32, a1);
      }

      ++v5;
      v6 += 5;
    }

    while (v5 != 10);
  }

  if (dword_10009B07C >= 1)
  {
    v11 = 0;
    do
    {
      fprintf(a1, "pl=%d:%d ", dword_10009B080[v11], dword_10009B094[v11]);
      ++v11;
    }

    while (v11 < dword_10009B07C);
  }

  v12 = dword_10009B0A8;
  v13 = dword_10009AF6C;
  v14 = dword_10009AF80;
  v15 = time(0);
  return fprintf(a1, "fp=%d fl=%d repairs=%d time=%ld iter=%d\n", v12, v13, v14, (v15 - qword_10009AF58 + 59) / 60, dword_10009AF74);
}

uint64_t sub_100049FC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 8 && a4 == 16)
  {
    v9 = *a3;
    v8 = a3[1];
    v10 = *(*(*a5 + 8) + 40);
    if (v10 - v8 >= *a3 && v10 > v8 && v9 >= 1 && v10 > v9)
    {
      v14 = 0;
      a5[1] += v8;
    }

    else
    {
      v16 = a3[1];
      sub_10004565C("invalid range: 0x%llx+%llu\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v14 = 92;
    sub_100049C40(0x218, 92);
  }

  return v14;
}

uint64_t sub_10004A074(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 == 8 && a4 == 16)
  {
    v8 = a5[1];
    v9 = a3[1];
    v10 = *a5 - *a3;
    if (v10 > v9 - v8)
    {
      v11 = 0;
    }

    else
    {
      v11 = -1;
    }

    if (v10 < v9 && v9 >= v8)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    if (*a5 >= *a3)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in extent list tree\n", a2, a3, a4, a5, a6, a7, a8, a2);
    v14 = 92;
    sub_100049C40(0x219, 92);
  }

  return v14;
}

uint64_t sub_10004A0FC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 24);
  v9 = *(v8 + 32);
  v10 = *(a1 + 8);
  if (v9 != *(v10 + 36))
  {
    sub_10004565C("spaceman block size %u doesn't match NX superblock block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 32));
    v33 = 92;
    v34 = 131;
    goto LABEL_40;
  }

  v11 = *(v8 + 48);
  if (v11 != *(v10 + 40))
  {
    sub_10004565C("spaceman block count %llu doesn't match NX superblock block count %llu\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 48));
    v33 = 92;
    v34 = 132;
    goto LABEL_40;
  }

  v12 = *(v8 + 36);
  if (v12 != 8 * v9)
  {
    sub_10004565C("spaceman blocks per chunk %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 36));
    v33 = 92;
    v34 = 133;
    goto LABEL_40;
  }

  if (*(v8 + 40) != (v9 - 40) >> 5)
  {
    sub_10004565C("spaceman chunks per cib %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 40));
    v33 = 92;
    v34 = 138;
    goto LABEL_40;
  }

  if (*(v8 + 44) != (v9 - 40) >> 3)
  {
    sub_10004565C("spaceman cibs per cab %u is inconsistent with block size %u\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 44));
    v33 = 92;
    v34 = 139;
    goto LABEL_40;
  }

  v15 = *(a1 + 96);
  if (*(v8 + 96) || *(v8 + 104) || *(v8 + 112) || *(v8 + 116) || *(v8 + 120))
  {
    sub_10004565C("spaceman tier2 fields should be empty but they aren't\n", a2, a3, a4, a5, a6, a7, a8, v134);
    sub_100049C40(0x5C0, -6);
    v11 = *(v8 + 48);
    v12 = *(v8 + 36);
  }

  v16 = *(v8 + 56);
  if (v11 % v12)
  {
    v17 = v11 / v12 + 1;
  }

  else
  {
    v17 = v11 / v12;
  }

  if (v16 != v17)
  {
    sub_10004565C("spaceman chunk count %llu is inconsistent with block count %llu and blocks per chunk %u\n", a2, a3, a4, a5, a6, a7, a8, v16);
    v33 = 92;
    v34 = 134;
    goto LABEL_40;
  }

  v18 = *(v8 + 64);
  v19 = *(v8 + 40);
  v20 = v16 / v19;
  if (v16 % v19)
  {
    ++v20;
  }

  if (v20 != v18)
  {
    v126 = *(v8 + 56);
    sub_10004565C("spaceman cib count %u is inconsistent with chunk count %llu and chunks per cib %u\n", a2, a3, a4, a5, a6, a7, a8, v18);
    v33 = 92;
    v34 = 135;
    goto LABEL_40;
  }

  v21 = *(v8 + 44);
  v22 = v18 / v21;
  if (v18 % v21)
  {
    ++v22;
  }

  if (v22 == 1)
  {
    v22 = 0;
  }

  v23 = *(v8 + 68);
  if (v23 != v22)
  {
    v127 = *(v8 + 64);
    sub_10004565C("spaceman cab count %u is inconsistent with cib count %u and cibs per cab %u\n", a2, a3, a4, a5, a6, a7, a8, v23);
    v33 = 92;
    v34 = 140;
    goto LABEL_40;
  }

  if (*(v8 + 72) > v11)
  {
    sub_10004565C("spaceman free count is too large: %llu > %llu\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 72));
    sub_100049C40(0x93, -8);
    v16 = *(v8 + 56);
    v18 = *(v8 + 64);
    v22 = *(v8 + 68);
  }

  v24 = v16 + v18 + v22;
  v25 = *(v8 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  if (v25 != 3 * v24)
  {
    sub_10004565C("spaceman ip block count is bad: %lld\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 152));
    v33 = 92;
    v34 = 142;
    goto LABEL_40;
  }

  if ((*(v8 + 32) + 8 * ((v25 + 63) >> 6) - 1) / *(v8 + 32) != *(v8 + 160))
  {
    sub_10004565C("spaceman ip bm block count is bad: %d\n", a2, a3, a4, a5, a6, a7, a8, *(v8 + 160));
    v33 = 92;
    v34 = 143;
    goto LABEL_40;
  }

  v140 = a1;
  v141 = 0;
  if (!sub_10004AE10(a1, &v140, a3, a4, a5, a6, a7, a8))
  {
    if (v141 != (*(v8 + 164) & 0x7FFFFFFF))
    {
      sub_10004565C("spaceman IP bitmap blocks field is %u, but sum of ranges is %llu\n", v26, v27, v28, v29, v30, v31, v32, *(v8 + 164));
      v33 = 92;
      v34 = 576;
      goto LABEL_40;
    }

    v141 = 0;
    if (sub_10004AE78(a1, sub_100049FC8, &v140))
    {
      v132 = *(v8 + 152);
      sub_10004565C("spaceman IP range is invalid: 0x%llx+0x%llx\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 176));
      v33 = 92;
      v34 = 145;
      goto LABEL_40;
    }

    v134 = v15;
    v43 = *(v8 + 152);
    if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != v141)
    {
      sub_10004565C("spaceman IP blocks field is %llu, but sum of ranges is %llu\n", v36, v37, v38, v39, v40, v41, v42, v43);
      v33 = 92;
      v34 = 577;
      goto LABEL_40;
    }

    if ((v43 & 0x8000000000000000) == 0)
    {
      v44 = *(v8 + 164);
      if ((v44 & 0x80000000) == 0)
      {
        v45 = *(v8 + 168);
        v46 = *(v8 + 176);
        if (v45 < v46 + v43 && v46 < (v45 + v44))
        {
          v129 = *(v8 + 176);
          sub_10004565C("spaceman ip bm range (%llu, %llu) overlaps with spaceman ip range (%llu, %llu)\n", v36, v37, v38, v39, v40, v41, v42, v45);
          v33 = 92;
          v34 = 146;
          goto LABEL_40;
        }
      }
    }

    v47 = *(v8 + 184);
    if (v47 > *(*(a1 + 8) + 40))
    {
      sub_10004565C("spaceman fs_reserve_block_count %llu is greater than nx_block_count %llu\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 184));
      sub_100049C40(0x2F4, 92);
      v47 = *(v8 + 184);
    }

    if (*(v8 + 192) > v47)
    {
      sub_100045744("spaceman fs_reserve_alloc_count %llu is greater than sm_fs_reserve_block_count %llu\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 192));
      sub_100049C40(0x2F5, -7);
    }

    if ((*(v8 + 144) & 1) == 0)
    {
      v48 = 336;
LABEL_106:
      LODWORD(__base) = 0;
      DWORD1(__base) = v48;
      v68 = *(v8 + 160);
      v69 = *(v8 + 164);
      DWORD2(__base) = *(v8 + 324);
      HIDWORD(__base) = 8 * v68;
      LODWORD(v143) = *(v8 + 328);
      DWORD1(v143) = 2 * v68;
      DWORD2(v143) = *(v8 + 332);
      HIDWORD(v143) = 2 * v69;
      LODWORD(v144) = *(v8 + 80);
      v70 = *(v8 + 68);
      if (!v70)
      {
        v70 = *(v8 + 64);
      }

      DWORD1(v144) = 8 * v70;
      qsort(&__base, 5uLL, 8uLL, sub_10004AEE0);
      for (i = 0; i != 40; i += 8)
      {
        v80 = *(&__base + i);
        v81 = *(&__base + i + 4);
        if (v134 < v80 || v81 > v134 - v80)
        {
          v128 = *(&__base + i + 4);
          sub_10004565C("spaceman struct range %u+%u lies outside the struct itself (size %u)\n", v72, v73, v74, v75, v76, v77, v78, v80);
          v84 = 92;
          v85 = 578;
          goto LABEL_125;
        }

        if (i == 32)
        {
          break;
        }

        if (v81 > *(&__base + i + 8) - v80)
        {
          v130 = *(&__base + i + 8);
          v133 = *(&__base + i + 12);
          sub_10004565C("spaceman struct ranges %u+%u and %u+%u overlap\n", v72, v73, v74, v75, v76, v77, v78, v80);
          v84 = 92;
          v85 = 579;
          goto LABEL_125;
        }
      }

      v83 = *(v8 + 322);
      if (*(v8 + 320) == 0xFFFF)
      {
        if (v83 != 0xFFFF)
        {
          goto LABEL_122;
        }
      }

      else if (v83 == 0xFFFF)
      {
LABEL_122:
        sub_10004565C("spaceman sm_ip_bm_free_head %u and sm_ip_bm_free_tail %u do not point to a valid list\n", v72, v73, v74, v75, v76, v77, v78, *(v8 + 320));
        v84 = 92;
        v85 = 760;
LABEL_125:
        sub_100049C40(v85, 92);
        return v84;
      }

      v86 = *(v8 + 164);
      if ((v86 & 0x7FFF0000) != 0)
      {
        sub_10004565C("spaceman sm_ip_bm_block_count %u is too large\n", v72, v73, v74, v75, v76, v77, v78, *(v8 + 164));
        v84 = 92;
        v85 = 778;
        goto LABEL_125;
      }

      v138 = &v134;
      v87 = v8 + *(v8 + 332);
      v88 = 2 * v86;
      __chkstk_darwin(v71);
      v90 = &v134 - v89;
      if (v91)
      {
        memset(&v134 - v89, 170, v88);
      }

      else
      {
        v88 = 0;
      }

      bzero(v90, v88);
      v99 = *(v8 + 320);
      do
      {
        if (v99 == 0xFFFF)
        {
          goto LABEL_136;
        }

        v100 = v99;
        if ((*(v8 + 164) & 0x7FFFFFFFu) <= v99)
        {
          sub_10004565C("spaceman sm_ip_bm_free_next index %u does not lie in ip bm range\n", v92, v93, v94, v95, v96, v97, v98, v99);
          v84 = 92;
          v125 = 764;
          goto LABEL_165;
        }

        if (*&v90[2 * v99] == 2)
        {
          sub_10004565C("spaceman ip bm list has a loop\n", v92, v93, v94, v95, v96, v97, v98, v134);
          v84 = 92;
          v125 = 765;
          goto LABEL_165;
        }

        *&v90[2 * v99] = 2;
        v99 = *(v87 + 2 * v99);
      }

      while (v99 != 0xFFFF);
      if (*(v8 + 322) != v100)
      {
        sub_10004565C("spaceman sm_ip_bm_free_tail %u does not point to the last index on the free list %u\n", v92, v93, v94, v95, v96, v97, v98, *(v8 + 322));
        v84 = 92;
        v125 = 761;
LABEL_165:
        sub_100049C40(v125, 92);
        return v84;
      }

LABEL_136:
      v101 = *(v8 + 160);
      if (v101)
      {
        v102 = 0;
        v103 = v8 + *(v8 + 324);
        v104 = v8 + *(v8 + 328);
        v84 = 92;
        while (1)
        {
          if (*(v103 + 8 * v102) > *(v8 + 16))
          {
            sub_10004565C("spaceman ip bitmap block xid is invalid: %llu > %llu\n", v92, v93, v94, v95, v96, v97, v98, *(v103 + 8 * v102));
            v84 = 92;
            v125 = 149;
            goto LABEL_165;
          }

          v105 = *(v104 + 2 * v102);
          if ((*(v8 + 164) & 0x7FFFFFFFu) <= v105)
          {
            sub_10004565C("spaceman ip bitmap block address is invalid: %hu > %u\n", v92, v93, v94, v95, v96, v97, v98, *(v104 + 2 * v102));
            v84 = 92;
            v125 = 150;
            goto LABEL_165;
          }

          v106 = *&v90[2 * *(v104 + 2 * v102)];
          if (v106 == 1)
          {
            break;
          }

          if (v106 == 2)
          {
            sub_10004565C("spaceman ip bitmap %u at index %u was on the free list\n", v92, v93, v94, v95, v96, v97, v98, *(v104 + 2 * v102));
            v84 = 92;
            v125 = 770;
            goto LABEL_165;
          }

          if (*(v87 + 2 * v105) != -1)
          {
            sub_10004565C("spaceman ip bitmap %u at index %u is not invalidated on the free list\n", v92, v93, v94, v95, v96, v97, v98, *(v104 + 2 * v102));
            sub_100049C40(0x30B, 92);
            if (!sub_10004758C(qword_10009BA58, "Invalidate spaceman ip bm free list at index at index %u? ", v107, v108, v109, v110, v111, v112, *(v104 + 2 * v102)))
            {
              return v84;
            }

            *(v87 + 2 * *(v104 + 2 * v102)) = -1;
            *a2 = 1;
            v101 = *(v8 + 160);
            v105 = *(v104 + 2 * v102);
          }

          *&v90[2 * v105] = 1;
          if (++v102 >= v101)
          {
            goto LABEL_146;
          }
        }

        sub_10004565C("spaceman ip bitmap %u at index %u was referenced by a previous entry in sm_ip_bitmap \n", v92, v93, v94, v95, v96, v97, v98, *(v104 + 2 * v102));
        v84 = 92;
        v125 = 780;
        goto LABEL_165;
      }

LABEL_146:
      v113 = *(v8 + 164) & 0x7FFFFFFF;
      if (v113)
      {
        v114 = 0;
        while (*&v90[2 * v114])
        {
          if (v113 == ++v114)
          {
            goto LABEL_150;
          }
        }

        sub_10004565C("spaceman ip bitmap block at index [%u] is neither on the sm_ip_bitmap[] nor on the free list\n", v92, v93, v94, v95, v96, v97, v98, v114);
        v84 = 92;
        v125 = 773;
        goto LABEL_165;
      }

LABEL_150:
      v115 = *(v8 + 80);
      v139 = 0;
      v116 = *(v8 + 68);
      if (v116)
      {
        v117 = sub_10004AEF8(a1, v8 + v115, v116, &v139, v95, v96, v97, v98);
        if (v117)
        {
          return v117;
        }
      }

      else
      {
        v117 = sub_10004B0E0(a1, v8 + v115, v116, *(v8 + 64), &v139, v96, v97, v98);
        if (v117)
        {
          return v117;
        }
      }

      if (v139 != *(v8 + 72))
      {
        sub_100045744("spaceman free count %llu does not match sum of free counts %llu\n", v118, v119, v120, v121, v122, v123, v124, *(v8 + 72));
        sub_100049C40(0x24C, -7);
      }

      return 0;
    }

    v49 = *(v8 + 336);
    if (v49 == 1)
    {
      if (*(v8 + 340) != 2520)
      {
        sub_10004565C("unexpected spaceman struct size %u != %u\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 340));
        v33 = 92;
        v34 = 603;
        goto LABEL_40;
      }
    }

    else
    {
      if (!v49)
      {
        sub_10004565C("spaceman struct is versioned but version is 0\n", v36, v37, v38, v39, v40, v41, v42, v134);
        v33 = 92;
        v34 = 602;
        goto LABEL_40;
      }

      sub_100045744("unknown spaceman struct version %u > %u\n", v36, v37, v38, v39, v40, v41, v42, *(v8 + 336));
    }

    v50 = 0;
    v135 = v8 + 344;
    v138 = (v8 + 608);
    v137 = -7;
    while (1)
    {
      v51 = (v135 + 136 * v50);
      __base = *v51;
      v147 = v51[5];
      v148 = v51[6];
      v149 = v51[7];
      v150 = *(v51 + 16);
      v143 = v51[1];
      v144 = v51[2];
      v145 = v51[3];
      v146 = v51[4];
      v52 = __base != 0;
      if (__base != 0)
      {
        v53 = *(&__base + 1) - __base;
        if (*(&__base + 1) < __base || (__base & 0x8000000000000000) != 0 || (v54 = *(v8 + 48), v54 <= __base) || v54 <= v53 || v54 - v53 < __base)
        {
          sub_100045744("spaceman datazone current boundaries (%llu -> %llu) is not a valid address range on disk\n", v36, v37, v38, v39, v40, v41, v42, __base);
          sub_100049C40(0x3BA, -7);
        }
      }

      v55 = 0;
      v56 = 0;
      do
      {
        v57 = *(&__base + v55 + 16);
        v58 = *(&v143 + v55 + 8);
        v59 = *(&__base + v55 + 16) != 0;
        if (*(&__base + v55 + 16) != 0)
        {
          if ((v60 = v58 - v57, v58 < v57) || (v57 & 0x8000000000000000) != 0 || ((v61 = *(v8 + 48), v61 > v57) ? (v62 = v61 > v60) : (v62 = 0), v62 ? (v63 = v61 - v60 >= v57) : (v63 = 0), !v63))
          {
            sub_100045744("spaceman datazone previous boundaries (%llu -> %llu) is not a valid address range on disk\n", v36, v37, v38, v39, v40, v41, v42, *(&__base + v55 + 16));
            sub_100049C40(0x3BB, -7);
          }
        }

        v56 |= v59;
        v55 += 16;
      }

      while (v55 != 112);
      v64 = v150;
      if (v150 > 4u)
      {
        break;
      }

      if (v150)
      {
        goto LABEL_90;
      }

      if (v52 || v56 & 1 | (WORD1(v150) != 0))
      {
        sub_100045744("spaceman datazone zone id is zero but other fields are initialized\n", v36, v37, v38, v39, v40, v41, v42, v134);
        sub_100049C40(0x3BD, 92);
        v65 = 1;
        goto LABEL_91;
      }

      v65 = 1;
LABEL_93:
      v136 = v50;
      if (v50 <= 6)
      {
        v66 = v138;
        v67 = v137;
        do
        {
          if ((v65 & 1) == 0 && v64 == *v66)
          {
            sub_100045744("spaceman datazone duplicate zone id (%hu) for allocation zones at indices (%hu, %hu)\n", v36, v37, v38, v39, v40, v41, v42, v64);
            sub_100049C40(0x3BF, -2);
          }

          v66 += 68;
          v63 = __CFADD__(v67++, 1);
        }

        while (!v63);
      }

      v50 = v136 + 1;
      ++v137;
      v138 += 68;
      if (v136 == 7)
      {
        v48 = 2520;
        goto LABEL_106;
      }
    }

    sub_100045744("spaceman datazone unknown zone id (%hu)\n", v36, v37, v38, v39, v40, v41, v42, v150);
    sub_100049C40(0x3BC, -2);
LABEL_90:
    v65 = 0;
LABEL_91:
    if (WORD1(v150) >= 7u)
    {
      sub_100045744("spaceman datazone invalid previous boundary index (%hu)\n", v36, v37, v38, v39, v40, v41, v42, SBYTE2(v150));
      sub_100049C40(0x3BE, -2);
    }

    goto LABEL_93;
  }

  v131 = *(v8 + 164);
  sub_10004565C("spaceman IP bitmap range is invalid: 0x%llx+0x%x\n", v26, v27, v28, v29, v30, v31, v32, *(v8 + 168));
  v33 = 92;
  v34 = 144;
LABEL_40:
  sub_100049C40(v34, 92);
  return v33;
}

uint64_t sub_10004AE10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  v11 = *(v10 + 164);
  v12 = *(v10 + 168);
  if ((v11 & 0x80000000) != 0)
  {

    return sub_100031608(a1, v12, sub_100049FC8, a2);
  }

  else
  {
    v14[0] = *(v10 + 168);
    v14[1] = v11;
    return sub_100049FC8(a1, 8, v14, 16, a2, a6, a7, a8);
  }
}

uint64_t sub_10004AE78(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 24);
  v6 = *(v5 + 152);
  v7 = *(v5 + 176);
  if (v6 < 0)
  {

    return sub_100031608(a1, v7, a2, a3);
  }

  else
  {
    v10 = 0;
    v9[0] = v7;
    v9[1] = v6;
    return a2(&v10, 8, v9, 16, a3);
  }
}

uint64_t sub_10004AEE0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

uint64_t sub_10004AEF8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3];
  v39 = 0;
  if (!a3)
  {
    return 0;
  }

  v12 = 0;
  v13 = v8[16];
  v14 = v8[17] - 1;
  v15 = a3;
  while (1)
  {
    v16 = *(a2 + 8 * v12);
    v40[0] = v16;
    v40[1] = 1;
    v17 = a1[3];
    v18 = *(v17 + 152);
    v19 = *(v17 + 176);
    if ((v18 & 0x8000000000000000) != 0)
    {
      v33 = sub_100031608(a1, v19, sub_10004A074, v40);
      v16 = *(a2 + 8 * v12);
      if (v33 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v16 < v19 || v16 - v19 >= v18)
    {
LABEL_9:
      sub_100045744("spaceman cab %u address 0x%llx is not in the internal pool\n", v19, a3, v16, a5, a6, a7, a8, v12);
      sub_100049C40(0x38C, -7);
      v16 = *(a2 + 8 * v12);
    }

    v21 = sub_100025548(a1, 0, 0x40000000, v16, 0, 0, 6, 0, &v39, 0, 1);
    if (v21)
    {
      v34 = v21;
      v37 = *(a2 + 8 * v12);
      sub_10004565C("failed to read spaceman cab %u at address 0x%llx\n", v22, v23, v24, v25, v26, v27, v28, v12);
      return v34;
    }

    v29 = *(v39 + 8);
    if (v12 != v29)
    {
      sub_10004565C("spaceman cab out of order: %u, expected %u\n", v22, v23, v24, v25, v26, v27, v28, *(v39 + 8));
      v35 = 586;
LABEL_25:
      v34 = 92;
      sub_100049C40(v35, 92);
      goto LABEL_27;
    }

    v30 = v8[11];
    if (v29 == v14)
    {
      v31 = v13 - v30 * v14;
    }

    else
    {
      v31 = v30;
    }

    if (*(v39 + 9) != v31)
    {
      v38 = *(v39 + 9);
      sub_10004565C("spaceman cab %u wrong number of cibs: %u, expected %u\n", v22, v23, v31, v25, v26, v27, v28, v29);
      v35 = 587;
      goto LABEL_25;
    }

    v32 = sub_10004B0E0(a1, v39 + 40, v30 * v29, v31, a4, v26, v27, v28);
    if (v32)
    {
      break;
    }

    free(v39);
    v39 = 0;
    if (v15 == ++v12)
    {
      return 0;
    }
  }

  v34 = v32;
LABEL_27:
  if (v39)
  {
    free(v39);
  }

  return v34;
}