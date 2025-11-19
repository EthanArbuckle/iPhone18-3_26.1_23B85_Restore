uint64_t sub_100027D7C(_DWORD *a1, int a2, int a3, unsigned int a4, char a5, char *a6, unsigned int a7, _BYTE *a8, unsigned int a9)
{
  if (a5)
  {
    v13 = 2048;
  }

  else
  {
    v13 = 0;
    result = 0;
    v15 = dword_10009A358++;
    if (v15 > 999998)
    {
      return result;
    }
  }

  v17 = a2 & 0xF | (16 * (a3 & 3)) & 0x3F | ((a4 & 0x1F) << 6);
  v18 = v13 | 0xA000;
  if (!a3 && (a2 > 6 || ((1 << a2) & 0x5C) == 0))
  {
    a8 = 0;
    a9 = 0;
  }

  v19 = v17 | v18;
  result = 22;
  if (a2 > 4)
  {
    if (a2 > 7)
    {
      if (a2 == 8)
      {
        if (a7 == 8 && a9 == 24)
        {
          v33 = v17 | v18;
          v34 = *a6;
          v20 = &v33;
          v21 = a1;
          v22 = 10;
          v24 = a8;
          v25 = 24;
          return sub_10003B12C(v21, 0, v20, v22, v24, v25);
        }
      }

      else if (a2 == 9)
      {
        if (a7 == 4 && 8 * (a3 != 0) == a9)
        {
          v31 = v17 | v18;
          v32 = *a6;
          v20 = &v31;
          v21 = a1;
          v22 = 6;
          goto LABEL_44;
        }
      }

      else if (a2 == 10 && a7 >= 9 && (!a8 || a9 >= 0xC))
      {
        v29 = v17 | v18;
        *v30 = *a6;
        *&v30[9] = *(a6 + 9);
        v20 = &v29;
        v21 = a1;
        v22 = 27;
        goto LABEL_44;
      }

      return result;
    }

    if ((a2 - 6) >= 2)
    {
      if (a2 == 5 && a7 == 16)
      {
        v35 = v17 | v18;
        v36 = *a6;
        v20 = &v35;
LABEL_18:
        v21 = a1;
        v22 = 18;
LABEL_44:
        v24 = a8;
        v25 = a9;
        return sub_10003B12C(v21, 0, v20, v22, v24, v25);
      }

      return result;
    }

LABEL_27:
    if (a7 - 833 < 0xFFFFFCC7)
    {
      return result;
    }

    if (a3 == 1)
    {
      v23 = 0;
      if (a4 <= 0xF && ((1 << a4) & 0x8140) != 0)
      {
        if (!a9)
        {
          return result;
        }

        v23 = *a8;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = malloc_type_malloc(a7 + 5, 0x99220D33uLL);
    if (!v26)
    {
      return 12;
    }

    v27 = v26;
    *v26 = v19;
    *(v26 + 1) = a7;
    v26[4] = v23;
    memcpy(v26 + 5, a6, a7);
    v28 = sub_10003B12C(a1, 0, v27, a7 + 5, a8, a9);
    free(v27);
    return v28;
  }

  if (a2 > 2)
  {
    if (a2 != 3)
    {
      goto LABEL_27;
    }

    if (a7 != 8 || a9 != 16)
    {
      return result;
    }

    v37 = v17 | v18;
    v38 = *a6;
    v20 = &v37;
    v21 = a1;
    v22 = 10;
LABEL_40:
    v24 = a8;
    v25 = 16;
    return sub_10003B12C(v21, 0, v20, v22, v24, v25);
  }

  if (a2 >= 2)
  {
    if (a2 != 2 || a7 != 16 || a9 != 16)
    {
      return result;
    }

    v39 = v17 | v18;
    v40 = *a6;
    v20 = &v39;
    v21 = a1;
    v22 = 18;
    goto LABEL_40;
  }

  if (a7 == 16 && 8 * (a3 != 0) == a9)
  {
    v41 = v17 | v18;
    v42 = *a6;
    v20 = &v41;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1000280E4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5, void *a6, void *a7, void *a8)
{
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v82 = v15;
  v81 = v15;
  *&v80[8] = v15;
  v79[0] = a2;
  v79[1] = a3;
  LOBYTE(v81) = 0;
  if (a4)
  {
    v16 = sub_100028500;
  }

  else
  {
    v16 = sub_10002897C;
  }

  *(&v81 + 1) = 0;
  *&v82 = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  *v80 = -1;
  *&v80[5] = -1;
  v17 = sub_10003B724(a1, 0, &v82 + 1);
  if (v17)
  {
    v18 = v17;
    v19 = strerror(v17);
    sub_10004565C("unable to access the tree repairs structure: %s\n", v20, v21, v22, v23, v24, v25, v26, v19);
    sub_100049C40(0x2C4, v18);
    goto LABEL_6;
  }

  if (!*(&v82 + 1))
  {
    v18 = 0;
    goto LABEL_6;
  }

  v87 = 0xAAAAAAAAAAAAAAAALL;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v86[2] = v28;
  v86[3] = v28;
  v86[0] = v28;
  v86[1] = v28;
  v29 = malloc_type_calloc(1uLL, 0x345uLL, 0xA70541A5uLL);
  v30 = malloc_type_calloc(1uLL, 0xEE0uLL, 0x4AAE9F65uLL);
  v77 = v30;
  v78 = v29;
  if (!v29 || (v38 = v30) == 0)
  {
    sub_10004565C("unable to allocate memory for tree repairs\n", v31, v32, v33, v34, v35, v36, v37, v76);
    v18 = 12;
    v50 = 701;
    v51 = 12;
LABEL_27:
    sub_100049C40(v50, v51);
    goto LABEL_36;
  }

  if (a3)
  {
    v39 = *(a3 + 40);
    if (((*(v39 + 264) & 1) == 0 || *(v39 + 976)) && *(a3 + 8) == 1)
    {
      v40 = sub_100046258(a3, a2, 2);
      v38 = v77;
      if (v40)
      {
        v18 = v40;
        v41 = strerror(v40);
        sub_10004565C("unable to open the volume for repairs: %s\n", v42, v43, v44, v45, v46, v47, v48, v41);
        sub_100049C40(0x2C5, v18);
LABEL_24:
        v49 = v78;
LABEL_37:
        sub_100046458(a3);
LABEL_38:
        v61 = v77;
        if (!v77)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }
    }
  }

  v52 = sub_100039F68(v86, a1, 0, v29, 2u, 0x345u, v38, 3808);
  if (v52)
  {
    v18 = v52;
    LOBYTE(v81) = 0;
    *(&v81 + 1) = 0;
    *&v82 = 0;
    goto LABEL_36;
  }

  v18 = sub_10002C648(v86, v16, v79, 1);
  if (*(&v81 + 1) >= 2uLL)
  {
    if (v81)
    {
      v60 = "Applied";
    }

    else
    {
      v60 = "Skipped";
    }

    sub_100045428("%s %llu/%llu repairs of this type in total.\n", v53, v54, v55, v56, v57, v58, v59, v60);
  }

  LOBYTE(v81) = 0;
  *(&v81 + 1) = 0;
  *&v82 = 0;
  if (v18)
  {
LABEL_36:
    v49 = v78;
    if (!a3)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v84)
  {
    v62 = sub_10001C8C8(*a2);
    v18 = v62;
    if (a3 && !v62)
    {
      v63 = 0;
      v64 = 1;
      while (1)
      {
        v65 = v64;
        v66 = *(a3 + 24 + 8 * v63);
        if (v66)
        {
          v67 = sub_10001C8C8(v66);
          if (v67)
          {
            break;
          }
        }

        v64 = 0;
        v63 = 1;
        if ((v65 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      v18 = v67;
      goto LABEL_59;
    }

    if (v62)
    {
LABEL_59:
      v68 = strerror(v18);
      sub_10004565C("unable to flush deferred repairs: %s\n", v69, v70, v71, v72, v73, v74, v75, v68);
      v50 = 900;
      v51 = v18;
      goto LABEL_27;
    }
  }

  v61 = v77;
  if (a3)
  {
LABEL_52:
    if (*(a3 + 12) == 1)
    {
      if (v84 == *(&v82 + 1))
      {
        *(*(a3 + 40) + 264) &= ~4uLL;
      }

      sub_100046EA0(a2, a3);
      v18 = 0;
      *(a3 + 12) = 0;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_24;
  }

  v18 = 0;
  v49 = v78;
LABEL_39:
  free(v61);
LABEL_40:
  if (v49)
  {
    free(v49);
  }

LABEL_6:
  if (a5)
  {
    *a5 += *(&v82 + 1);
  }

  if (a6)
  {
    *a6 += v83;
  }

  if (a7)
  {
    *a7 += v84;
  }

  if (a8)
  {
    *a8 += v85;
  }

  sub_10003B928(a1, 0);
  return v18;
}

uint64_t sub_100028500(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LODWORD(v8) = a2;
  v10 = *a5;
  v11 = *(a5 + 8);
  v19 = sub_100028998(a1, a2, (a5 + 16), *(a5 + 36));
  if (v19)
  {
    sub_100028AB4(a5, v12, v13, v14, v15, v16, v17, v18);
    v20 = *a1 & 0xF;
    if (v20 >= 0xB)
    {
      return 22;
    }

    goto LABEL_6;
  }

  v20 = *a1 & 0xF;
  if (v20 >= 0xB)
  {
    return 22;
  }

  if (*(a5 + 40) == 1)
  {
LABEL_6:
    v95 = v8;
    v94 = off_100078758[v20];
    v96 = v10;
    v28 = sub_10001C8B8(*v10);
    if (!v28)
    {
      LOBYTE(v37) = 0;
      v39 = 0;
      v40 = v11 + 3;
      v41 = 1;
      while (1)
      {
        v42 = v41;
        if (v11)
        {
          v43 = v40[v39];
          if (v43)
          {
            v44 = sub_10001C8B8(v43);
            if (v44)
            {
              break;
            }
          }
        }

        v41 = 0;
        v37 = 1;
        v39 = 1;
        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v28 = v44;
      if ((v37 & 1) != 0 && *v40)
      {
        sub_10001C8C0(*v40);
      }

      sub_10001C8C0(*v96);
    }

    v29 = strerror(v28);
    sub_100045744("error starting transaction: %s\n", v30, v31, v32, v33, v34, v35, v36, v29);
    sub_100049C40(0x36E, v28);
    v37 = 0;
LABEL_14:
    if (v19)
    {
      v8 = v95;
      v45 = v96;
      if (!v11)
      {
        goto LABEL_23;
      }

      v46 = v11[6];
      if (!v46)
      {
        v46 = v11[5];
      }

      if ((*(v46 + 56) & 0x20) == 0 || (*a1 & 0xF) != 7)
      {
LABEL_23:
        v47 = 0;
        goto LABEL_26;
      }

      if ((byte_10009A35D & 1) == 0)
      {
        sub_100045744("sealed volume fsroot corruptions cannot be repaired and will automatically be skipped\n", v21, v22, v23, v24, v25, v26, v27, v93);
        byte_10009A35D = 1;
      }

      v47 = 2;
    }

    else
    {
      v47 = 1;
      v8 = v95;
    }

    v45 = v96;
LABEL_26:
    v48 = (v94)(v45, v11, a1, v8, a3, a4, v47);
    v38 = v48;
    *(a5 + 40) = v48 != 89;
    if (v48)
    {
      if (v48 == 89)
      {
        v49 = 0;
        v38 = (*a1 << 20 >> 31) & 0x5C;
      }

      else
      {
        ++*(a5 + 88);
        ++*(a5 + 56);
        v49 = 1;
      }
    }

    else
    {
      ++*(a5 + 80);
      sub_100049BF0();
      v49 = 0;
    }

    if ((*a1 & 0x800) != 0)
    {
      ++*(a5 + 72);
    }

    if (!v37)
    {
      goto LABEL_99;
    }

    v50 = *v45;
    if (v49)
    {
      v51 = sub_10001C8D0(v50);
      if (!v51)
      {
        v51 = sub_10002CB38(v45);
      }

      if (v11)
      {
        v52 = 0;
        v53 = 0;
        v54 = 1;
        do
        {
          v55 = v54;
          v56 = v11[v52 + 3];
          if (v56)
          {
            v57 = sub_10001C8D0(v56);
            if (!v53)
            {
              v53 = v57;
            }
          }

          v54 = 0;
          v52 = 1;
        }

        while ((v55 & 1) != 0);
        if (!v53)
        {
          v53 = sub_10002CDEC(v96, v11);
        }
      }

      else
      {
        v53 = 0;
      }

      if (!v51)
      {
        v51 = v53;
      }

      if (!v51)
      {
        goto LABEL_96;
      }

      v67 = strerror(v51);
      sub_10004565C("error aborting transaction: %s\n", v68, v69, v70, v71, v72, v73, v74, v67);
      v75 = 901;
      goto LABEL_95;
    }

    v58 = sub_10001C8C0(v50);
    v59 = v58 == 84;
    if (v11)
    {
      v97 = v58;
      v60 = 0;
      v61 = 0;
      v62 = 1;
      do
      {
        v63 = v62;
        v64 = v11[v60 + 3];
        if (v64)
        {
          v65 = sub_10001C8C0(v64);
          if (v65)
          {
            if (v65 == 84)
            {
              v59 = 1;
            }

            if (v61 == 84 || !v61)
            {
              v61 = v65;
            }
          }
        }

        v62 = 0;
        v60 = 1;
      }

      while ((v63 & 1) != 0);
      if (v97 == 84)
      {
        v51 = 0;
      }

      else
      {
        v51 = v97;
      }

      if (v61 == 84)
      {
        v66 = 0;
      }

      else
      {
        v66 = v61;
      }

      LODWORD(v8) = v95;
      if (v51)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v66 = 0;
      if (v58 == 84)
      {
        v51 = 0;
      }

      else
      {
        v51 = v58;
      }

      if (v51)
      {
        goto LABEL_88;
      }
    }

    if (v59 && !v66)
    {
      v76 = sub_10001C8C8(*v45);
      v51 = v76;
      if (!v11 || v76)
      {
        if (!v76)
        {
LABEL_96:
          if (v38)
          {
            v38 = v38;
          }

          else
          {
            v38 = v51;
          }

          goto LABEL_99;
        }
      }

      else
      {
        v77 = 0;
        v78 = v11 + 3;
        v79 = 1;
        while (1)
        {
          v80 = v79;
          v81 = v78[v77];
          if (v81)
          {
            v82 = sub_10001C8C8(v81);
            if (v82)
            {
              break;
            }
          }

          v79 = 0;
          v77 = 1;
          if ((v80 & 1) == 0)
          {
            v51 = 0;
            goto LABEL_96;
          }
        }

        v51 = v82;
      }

      goto LABEL_94;
    }

LABEL_88:
    if (!v51)
    {
      v51 = v66;
      if (!v66)
      {
        goto LABEL_96;
      }
    }

LABEL_94:
    v83 = strerror(v51);
    sub_10004565C("error ending transaction: %s\n", v84, v85, v86, v87, v88, v89, v90, v83);
    v75 = 879;
LABEL_95:
    sub_100049C40(v75, v51);
    goto LABEL_96;
  }

  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
    v38 = 92;
  }

  else
  {
    v38 = 0;
  }

LABEL_99:
  if (v8 >= 0x11)
  {
    v91 = 17;
  }

  else
  {
    v91 = v8;
  }

  *(a5 + 36) = v91;
  memcpy((a5 + 16), a1, v91);
  ++*(a5 + 48);
  return v38;
}

uint64_t sub_10002897C(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*a1 & 0x800) != 0)
  {
    ++*(a5 + 72);
  }

  return 0;
}

uint64_t sub_100028998(unsigned __int16 *a1, unsigned int a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = *a1;
  v5 = v4 & 0xF;
  v6 = *a3;
  if (v5 < (v6 & 0xF))
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > (v6 & 0xF))
  {
    return 1;
  }

  if (v5 != 4)
  {
    v8 = 0;
    if (a4 >= 0xD && a2 >= 0xD)
    {
      v9 = 0;
      if (v5 != 7)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  if (a2 < 0xD)
  {
    goto LABEL_22;
  }

  v9 = 0;
  if (a4 < 0xD)
  {
    goto LABEL_23;
  }

LABEL_12:
  v10 = *(a1 + 5) >> 60;
  v11 = *(a3 + 5) >> 60;
  if (a4 >= 0x11 && a2 >= 0x11 && v10 == 14 && v11 == 14)
  {
    LODWORD(v10) = *(a1 + 13);
    LODWORD(v11) = *(a3 + 13);
  }

  v8 = a1;
  v9 = a3;
  if (v10 < v11)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v10 == v11)
  {
LABEL_23:
    v12 = (v4 >> 4) & 3;
    v13 = (v6 >> 4) & 3;
    if (v12 >= v13)
    {
      if (v12 > v13)
      {
        return 1;
      }

      if (v12 != 1)
      {
        return 0;
      }

      v14 = (v4 >> 6) & 0x1F;
      v15 = (v6 >> 6) & 0x1F;
      if (v14 >= v15)
      {
        if (v14 > v15)
        {
          return 1;
        }

        if (!v8 || !v9)
        {
          return 0;
        }

        v16 = *(v8 + 4);
        v17 = *(v9 + 4);
        if (v16 >= v17)
        {
          return v16 > v17;
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100028AB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v10 = (result + 48);
  v9 = *(result + 48);
  if (v9 >= 2)
  {
    if (*(result + 40))
    {
      v11 = "Applied";
    }

    else
    {
      v11 = "Skipped";
    }

    v12 = v9 - *(result + 56);
    v13 = *(result + 48);
    result = sub_100045428("%s %llu/%llu repairs of this type in total.\n", a2, a3, a4, a5, a6, a7, a8, v11);
  }

  *(v8 + 40) = 0;
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_100028B2C(uint64_t *a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002CE54(a1, v10 & 0xF, &v21);
  if (!result)
  {
    v12 = *(a3 + 1);
    v13 = *(a3 + 5);
    v20[0] = v12;
    v20[1] = v13;
    v14 = *a3;
    v15 = (v14 >> 4) & 3;
    if (v15 == 2)
    {
      v16 = (v14 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v16)
      {
        v19 = sub_100045744;
      }

      v19("need to insert spaceman free queue tree entry (0x%llx+%llu, xid %llu) to replace existing overlapping ranges\n", v13, *a5, v12);
      return sub_100029480(v21, 0, v20, 16, a5, 8, "free queue tree entry", a7);
    }

    else if (v15)
    {
      return 22;
    }

    else
    {
      v16 = (v14 & 0x800) == 0;
      v17 = sub_10004565C;
      if (v16)
      {
        v17 = sub_100045744;
      }

      v17("found spaceman free queue tree entry (0x%llx, xid %llu) which overlaps with existing range\n", v13, v12);
      return sub_10002955C(v21, 0, v20, 16, 0, "free queue tree entry", a7 != 0, v18);
    }
  }

  return result;
}

uint64_t sub_100028C70(uint64_t *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002CF5C(a1, a2, &v18);
  if (!result)
  {
    v13 = *(a3 + 2);
    v14 = *(a3 + 10);
    v17[0] = v13;
    v17[1] = v14;
    v15 = sub_10004565C;
    if ((*a3 & 0x800) == 0)
    {
      v15 = sub_100045744;
    }

    v15("found orphan omap mapping (oid %llu xid %llu)\n", v13, v14);
    result = sub_10002955C(v18, 0, v17, 16, 0, "omap mapping", a7 != 0, v16);
    if (!result)
    {
      if (*a5)
      {
        return 0;
      }

      else
      {
        return sub_100002C74(a1, a2, *(a5 + 8), (*(a5 + 4) / *(a1[1] + 36)));
      }
    }
  }

  return result;
}

uint64_t sub_100028D6C(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, int a7)
{
  v7 = *a3 & 0xF;
  if (v7 == 4)
  {
    return sub_100004C90(a1, a2, (a3 + 5), a5, a7 != 0);
  }

  if (v7 == 3)
  {
    return sub_100004B50(a1, a2, *(a3 + 2), *a5, a5[1], a7 != 0);
  }

  return 22;
}

uint64_t sub_100028E00(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7)
{
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[2] = v10;
  v32[3] = v10;
  v32[0] = v10;
  v32[1] = v10;
  v11 = *(a3 + 1);
  result = sub_1000402AC(v32, a1, a2, v11);
  if (!result)
  {
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v15)
      {
        v19 = sub_100045744;
      }

      if (v11)
      {
        v30 = a5[4];
        v26 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v28 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v20 = "missing/invalid physical extent (%llu + %llu) with refcnt %d at snapshot %llu\n";
      }

      else
      {
        v29 = *a5 & 0xFFFFFFFFFFFFFFFLL;
        v31 = a5[4];
        v27 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v20 = "missing/invalid physical extent (%llu + %llu) with refcnt %d\n";
      }

      (v19)(v20);
      v24 = *(a3 + 5) >> 60;
      if (v24 == 14)
      {
        LODWORD(v24) = *(a3 + 18);
      }

      v25 = sub_10003EDFC(v24);
      return sub_100029480(v32, v11, a3 + 5, 8, a5, 20, v25, a7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v17 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
      if (v11)
      {
        v18 = "orphan/invalid physical extent (%llu) at snapshot %llu\n";
      }

      else
      {
        v18 = "orphan/invalid physical extent (%llu)\n";
      }

      (v16)(v18);
      v21 = *(a3 + 5) >> 60;
      if (v21 == 14)
      {
        LODWORD(v21) = *(a3 + 18);
      }

      v22 = sub_10003EDFC(v21);
      return sub_10002955C(v32, v11, (a3 + 5), 8, 0, v22, a7 != 0, v23);
    }
  }

  return result;
}

uint64_t sub_100028FB0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_10009A35C & 1) == 0)
  {
    sub_100045744("detected invalid fsroot tree nodes (& thus data loss), pruning the nodes to make the system usable\n", a2, a3, a4, a5, a6, a7, a8, v23);
    byte_10009A35C = 1;
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D5F0(a1, a2, &v24);
  if (!result)
  {
    v15 = a3[1];
    v16 = *a3;
    v17 = (v16 >> 4) & 3;
    if (v17 == 2)
    {
      v19 = (v16 & 0x800) == 0;
      v22 = sub_10004565C;
      if (v19)
      {
        v22 = sub_100045744;
      }

      v22("need to insert key at id (%llu) to repair invalid internal node\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_100029480(v24, 0, a3 + 5, v15, a5, a6, "btree node", a7);
    }

    else if (v17)
    {
      return 22;
    }

    else
    {
      v18 = *a5 + 1;
      v19 = (v16 & 0x800) == 0;
      v20 = sub_10004565C;
      if (v19)
      {
        v20 = sub_100045744;
      }

      v20("found invalid fsroot btree node key id (%llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_10002955C(v24, 0, a3 + 5, v15, v18, "btree node", a7, v21);
    }
  }

  return result;
}

uint64_t sub_100029134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D134(a1, a2, &v16, a4, a5, a6, a7, a8);
  if (!result)
  {
    v13 = *(a3 + 2);
    v15 = v13;
    v14 = sub_10004565C;
    if ((*a3 & 0x800) == 0)
    {
      v14 = sub_100045744;
    }

    v14("no file key rolling entry found for inode object (%llu)\n", v13);
    return sub_100029480(v16, 0, &v15, 8, a5, a6, "file key rolling", a7);
  }

  return result;
}

uint64_t sub_1000291EC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D210(a1, a2, &v20);
  if (!result)
  {
    v12 = *(a3 + 1);
    v19 = v12;
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 2)
    {
      v15 = (v13 & 0x800) == 0;
      v18 = sub_10004565C;
      if (v15)
      {
        v18 = sub_100045744;
      }

      v18("inode with file-id %llu has doc-id %u but doc-id tree record is missing or points to another inode\n", *a5, v12);
      return sub_100029480(v20, 0, &v19, 4, a5, a6, "doc-id tree entry", a7);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v16("doc-id tree record exists for doc-id %u, but no inode references this doc-id\n", v12);
      return sub_10002955C(v20, 0, &v19, 4, 0, "doc-id tree entry", a7 != 0, v17);
    }
  }

  return result;
}

uint64_t sub_100029324(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D530(a1, a2, &v19);
  if (!result)
  {
    *v18 = *(a3 + 1);
    *&v18[9] = *(a3 + 11);
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 2)
    {
      v14 = (v12 & 0x800) == 0;
      v17 = sub_10004565C;
      if (v14)
      {
        v17 = sub_100045744;
      }

      v17("clone group mapping record missing for (group_id %llu, private_id %llu, file_id %llu)\n", *v18, *&v18[9], *&v18[17]);
      return sub_100029480(v19, 0, v18, 25, a5, a6, "clone group tree entry", a7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("clone group mapping record exists for (group_id %llu, private_id %llu, file_id %llu), but no inode refers to it\n", *v18, *&v18[9], *&v18[17]);
      return sub_10002955C(v19, 0, v18, 25, 0, "clone group tree entry", a7 != 0, v16);
    }
  }

  return result;
}

uint64_t sub_100029480(_DWORD *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  if (a8 != 1 && (a8 == 2 || !sub_10004758C(qword_10009BA58, "Insert missing %s objects? ", a3, a4, a5, a6, a7, a8, a7)))
  {
    return 89;
  }

  v15 = sub_10003B12C(a1, a2, a3, a4, a5, v9);
  v16 = v15;
  if (v15)
  {
    strerror(v15);
    sub_10004565C("failed to insert %s object: %s\n", v17, v18, v19, v20, v21, v22, v23, v8);
    sub_100049C40(0x28F, v16);
  }

  return v16;
}

uint64_t sub_10002955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  if (a7 != 1 && (a7 == 2 || !sub_10004758C(qword_10009BA58, "Remove orphan/invalid %s objects? ", a3, a4, a5, a6, a7, a8, a6)))
  {
    return 89;
  }

  v14 = sub_10003B3FC(a1, a2, a3, a4, v9);
  v22 = v14;
  if (v14)
  {
    if (v14 == 2)
    {
      sub_100045744("tried to remove %s object but it wasn't there!\n", v15, v16, v17, v18, v19, v20, v21, v8);
      return 0;
    }

    else
    {
      strerror(v14);
      sub_10004565C("failed to remove %s object: %s\n", v23, v24, v25, v26, v27, v28, v29, v8);
      sub_100049C40(0x28D, v22);
    }
  }

  return v22;
}

uint64_t sub_100029648(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 3, &v38, a5, a6, a7, a8);
  if (!result)
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = (v13 >> 6) & 0x1F;
    result = 22;
    if (v14 > 0x10)
    {
      if (((v13 >> 6) & 0x1F) <= 0x12)
      {
        if (v14 == 17)
        {
          v15 = (v13 & 0x800) == 0;
          v16 = sub_10004565C;
          if (v15)
          {
            v16 = sub_100045744;
          }

          v25 = *a5;
          v34 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
          v17 = "need to set flags (0x%llx) in inode (object-id %llu)\n";
        }

        else
        {
          if (v14 != 18)
          {
            return result;
          }

          v15 = (v13 & 0x800) == 0;
          v16 = sub_10004565C;
          if (v15)
          {
            v16 = sub_100045744;
          }

          v23 = *a5;
          v32 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
          v17 = "need to clear flags (0x%llx) in inode (object-id %llu)\n";
        }
      }

      else
      {
        switch(v14)
        {
          case 0x13u:
            v15 = (v13 & 0x800) == 0;
            v16 = sub_10004565C;
            if (v15)
            {
              v16 = sub_100045744;
            }

            v27 = *a5;
            v36 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
            v17 = "need to set bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x14u:
            v15 = (v13 & 0x800) == 0;
            v16 = sub_10004565C;
            if (v15)
            {
              v16 = sub_100045744;
            }

            v28 = *a5;
            v37 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
            v17 = "need to clear bsd flags (0x%x) in inode (object-id %llu)\n";
            break;
          case 0x15u:
            v15 = (v13 & 0x800) == 0;
            v16 = sub_10004565C;
            if (v15)
            {
              v16 = sub_100045744;
            }

            v21 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
            v30 = a5[21];
            v17 = "dir_nlink of inode object (id %llu) does not match expected value (%d)\n";
            break;
          default:
            return result;
        }
      }
    }

    else if (((v13 >> 6) & 0x1F) <= 0xD)
    {
      if (v14 == 12)
      {
        v15 = (v13 & 0x800) == 0;
        v16 = sub_10004565C;
        if (v15)
        {
          v16 = sub_100045744;
        }

        v24 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v33 = a5[14];
        v17 = "nchildren of inode object (id %llu) does not match expected value (%d)\n";
      }

      else
      {
        if (v14 != 13)
        {
          return result;
        }

        v15 = (v13 & 0x800) == 0;
        v16 = sub_10004565C;
        if (v15)
        {
          v16 = sub_100045744;
        }

        v22 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v31 = *(a5 + 1);
        v17 = "alloced_size of dstream (object-id %llu) does not match minimum found size (%llu)\n";
      }
    }

    else
    {
      switch(v14)
      {
        case 0xEu:
          v15 = (v13 & 0x800) == 0;
          v16 = sub_10004565C;
          if (v15)
          {
            v16 = sub_100045744;
          }

          v26 = *(a5 + 2);
          v35 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
          v17 = "need to update default_crypto_id (%llu) of dstream (object-id %llu) with missing crypto state\n";
          break;
        case 0xFu:
          if ((v13 & 0x800) != 0)
          {
            v18 = sub_10004565C;
          }

          else
          {
            v18 = sub_100045744;
          }

          v19 = sub_10003EE2C(a3 + 5, *a5);
          v18("found unexpected %s xfield associated with inode (object-id %llu)\n", v19, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
          return sub_10002AC58(v38, (*a3 >> 6) & 0x1F, a3 + 5, v12, a5, v8);
        case 0x10u:
          v15 = (v13 & 0x800) == 0;
          v16 = sub_10004565C;
          if (v15)
          {
            v16 = sub_100045744;
          }

          v20 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
          v29 = *a5;
          v17 = "need to update inode (object-id %llu) sparse bytes with (%llu)\n";
          break;
        default:
          return result;
      }
    }

    (v16)(v17);
    return sub_10002AC58(v38, (*a3 >> 6) & 0x1F, a3 + 5, v12, a5, v8);
  }

  return result;
}

uint64_t sub_1000299C4(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 4, &v22, a5, a6, a7, a8);
  if (!result)
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 1)
    {
      v15 = (v13 & 0x800) == 0;
      v21 = sub_10004565C;
      if (v15)
      {
        v21 = sub_100045744;
      }

      v21("found xattr dstream (id %llu, name %.*s) that references a missing crypto state\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      return sub_10002AC58(v22, 25, a3 + 5, v12, a5, v8);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v16("found orphan/invalid xattr (id %llu, name %.*s)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), a3 + 15);
      v17 = v22;
      v18 = *(a3 + 5) >> 60;
      if (v18 == 14)
      {
        LODWORD(v18) = *(a3 + 13);
      }

      v19 = sub_10003EDFC(v18);
      return sub_10002955C(v17, 0, a3 + 5, v12, 0, v19, v8 != 0, v20);
    }
  }

  return result;
}

uint64_t sub_100029B28(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  v12 = (a3 + 5);
  v13 = a3[1];
  v14 = *(a3 + 5) >> 60;
  result = sub_10003F8AC(a1, a2, v14, &v42, a5, a6, a7, a8);
  if (result)
  {
    return result;
  }

  if (v14 == 8)
  {
    goto LABEL_13;
  }

  if (v14 != 6)
  {
    return 22;
  }

  v16 = *a3;
  v17 = (v16 >> 4) & 3;
  if (v17 <= 1)
  {
    v18 = (v16 & 0x800) == 0;
    if (!v17)
    {
      v19 = sub_10004565C;
      if (v18)
      {
        v19 = sub_100045744;
      }

      v19("found orphan dstream id object (id %llu)\n", *v12 & 0xFFFFFFFFFFFFFFFLL);
      v20 = v42;
      v21 = *v12;
LABEL_23:
      v30 = v21 >> 60;
      if (v21 >> 60 == 14)
      {
        LODWORD(v30) = *(a3 + 13);
      }

      v31 = sub_10003EDFC(v30);
      return sub_10002955C(v20, 0, v12, v13, 0, v31, a7 != 0, v32);
    }

    v38 = sub_10004565C;
    if (v18)
    {
      v38 = sub_100045744;
    }

    v39 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
    v37 = "refcnt of dstream id object (id %llu) less than expected\n";
LABEL_44:
    (v38)(v37);
    return sub_10002AC58(v42, (*a3 >> 6) & 0x1F, v12, v13, a5, a7);
  }

  if (v17 != 2)
  {
LABEL_13:
    if (a6)
    {
      v25 = *a5 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = 0;
    }

    v26 = *a3;
    v27 = (v26 >> 4) & 3;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v33 = sub_10004565C;
        if ((v26 & 0x800) == 0)
        {
          v33 = sub_100045744;
        }

        v33("found file extent gap (id %llu) at logical address %llu+%llu\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13), v25);
        v23 = v42;
        v24 = *(a3 + 5);
        goto LABEL_30;
      }
    }

    else
    {
      if (!v27)
      {
        v28 = sub_10004565C;
        if ((v26 & 0x800) == 0)
        {
          v28 = sub_100045744;
        }

        v29 = "invalid";
        if ((v26 & 0x800) == 0)
        {
          v29 = "orphan";
        }

        v28("found %s file extent object (id %llu) at logical address %llu\n", v29, *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL, *(a3 + 13));
        v20 = v42;
        v21 = *(a3 + 5);
        goto LABEL_23;
      }

      v36 = (v26 >> 6) & 0x1F;
      if (v36 == 10)
      {
        v37 = "found file extent overlap (id %llu) with next extent / end of dstream at logical address %llu+%llu\n";
        goto LABEL_41;
      }

      if (v36 == 11)
      {
        v37 = "need to make file extent with missing crypto state (id %llu) at logical address %llu+%llu sparse\n";
LABEL_41:
        v38 = sub_10004565C;
        if ((v26 & 0x800) == 0)
        {
          v38 = sub_100045744;
        }

        v41 = *(a3 + 13);
        v40 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        goto LABEL_44;
      }
    }

    return 22;
  }

  v18 = (v16 & 0x800) == 0;
  v22 = sub_10004565C;
  if (v18)
  {
    v22 = sub_100045744;
  }

  v22("dstream (id %llu) does not have an associated dstream id object\n", *v12 & 0xFFFFFFFFFFFFFFFLL);
  v23 = v42;
  v24 = *v12;
LABEL_30:
  v34 = v24 >> 60;
  if (v24 >> 60 == 14)
  {
    LODWORD(v34) = *(a3 + 13);
  }

  v35 = sub_10003EDFC(v34);
  return sub_100029480(v23, 0, v12, v13, a5, a6, v35, a7);
}

uint64_t sub_100029E6C(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 7, &v27, a5, a6, a7, a8);
  if (result)
  {
    return result;
  }

  v12 = a3[1];
  v13 = *a3;
  v14 = (v13 >> 4) & 3;
  if (v14 == 1)
  {
    v20 = (v13 >> 6) & 0x1F;
    if (v20 == 23)
    {
      v21 = sub_10004565C;
      if ((v13 & 0x800) == 0)
      {
        v21 = sub_100045744;
      }

      v24 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
      v25 = *a5;
      v22 = "need to increment crypto state object (id %llu) refcount (%u)\n";
    }

    else
    {
      if (v20 != 22)
      {
        return 22;
      }

      v21 = sub_10004565C;
      if ((v13 & 0x800) == 0)
      {
        v21 = sub_100045744;
      }

      v26 = *a5;
      v23 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
      v22 = "refcnt of crypto state object (id %llu) is %s than expected (%u)\n";
    }

    (v21)(v22);
    return sub_10002AC58(v27, (*a3 >> 6) & 0x1F, a3 + 5, v12, a5, v8);
  }

  if (v14)
  {
    return 22;
  }

  v15 = sub_10004565C;
  if ((v13 & 0x800) == 0)
  {
    v15 = sub_100045744;
  }

  v15("found orphan/unexpected crypto state object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
  v16 = v27;
  v17 = *(a3 + 5) >> 60;
  if (v17 == 14)
  {
    LODWORD(v17) = *(a3 + 13);
  }

  v18 = sub_10003EDFC(v17);
  return sub_10002955C(v16, 0, a3 + 5, v12, 0, v18, v8 != 0, v19);
}

uint64_t sub_10002A028(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 9, &v22, a5, a6, a7, a8);
  if (!result)
  {
    v12 = a3[1];
    v13 = *a3;
    v14 = (v13 >> 4) & 3;
    if (v14 == 1)
    {
      v15 = (v13 & 0x800) == 0;
      v21 = sub_10004565C;
      if (v15)
      {
        v21 = sub_100045744;
      }

      v21("found invalid directory record object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      return sub_10002AC58(v22, 24, a3 + 5, v12, a5, v8);
    }

    else if (v14)
    {
      return 22;
    }

    else
    {
      v15 = (v13 & 0x800) == 0;
      v16 = sub_10004565C;
      if (v15)
      {
        v16 = sub_100045744;
      }

      v16("found orphan directory record object (id %llu)\n", *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL);
      v17 = v22;
      v18 = *(a3 + 5) >> 60;
      if (v18 == 14)
      {
        LODWORD(v18) = *(a3 + 13);
      }

      v19 = sub_10003EDFC(v18);
      return sub_10002955C(v17, 0, a3 + 5, v12, 0, v19, v8 != 0, v20);
    }
  }

  return result;
}

uint64_t sub_10002A174(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = 0;
  v12 = (a3 + 5);
  v13 = *(a3 + 5) >> 60;
  if (v13 == 14)
  {
    LODWORD(v13) = *(a3 + 13);
  }

  v14 = *(v12 - 3);
  result = sub_10003F8AC(a1, a2, v13, &v48, a5, a6, a7, a8);
  if (!result)
  {
    v16 = *a3;
    v17 = (v16 >> 4) & 3;
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        return 22;
      }

      v18 = (v16 & 0x800) == 0;
      v24 = sub_10004565C;
      if (v18)
      {
        v24 = sub_100045744;
      }

      v24("dir-stats (id %llu) is missing\n", *v12 & 0xFFFFFFFFFFFFFFFLL);
      v25 = v48;
      v26 = *v12 >> 60;
      if (v26 == 14)
      {
        LODWORD(v26) = *(a3 + 13);
      }

      v27 = sub_10003EDFC(v26);
      return sub_100029480(v25, 0, v12, v14, a5, a6, v27, a7);
    }

    if (!v17)
    {
      v18 = (v16 & 0x800) == 0;
      v19 = sub_10004565C;
      if (v18)
      {
        v19 = sub_100045744;
      }

      v19("found invalid dir-stats object (id %llu)\n", *v12 & 0xFFFFFFFFFFFFFFFLL);
      v20 = v48;
      v21 = *v12 >> 60;
      if (v21 == 14)
      {
        LODWORD(v21) = *(a3 + 13);
      }

      v22 = sub_10003EDFC(v21);
      return sub_10002955C(v20, 0, v12, v14, 0, v22, a7 != 0, v23);
    }

    v28 = (v16 >> 6) & 0x1F;
    result = 22;
    if (v28 <= 4)
    {
      if (((v16 >> 6) & 0x1F) > 2)
      {
        if (v28 == 3)
        {
          v18 = (v16 & 0x800) == 0;
          v29 = sub_10004565C;
          if (v18)
          {
            v29 = sub_100045744;
          }

          v39 = *v12 & 0xFFFFFFFFFFFFFFFLL;
          v45 = *a5;
          v30 = "flags of dir-stats object (id %llu) does not match expected value (0x%x)\n";
        }

        else
        {
          if (v28 != 4)
          {
            return result;
          }

          v18 = (v16 & 0x800) == 0;
          v29 = sub_10004565C;
          if (v18)
          {
            v29 = sub_100045744;
          }

          v36 = *v12 & 0xFFFFFFFFFFFFFFFLL;
          v42 = *a5;
          v30 = "origin_id of dir-stats object (id %llu) does not match expected value (%llu)\n";
        }
      }

      else if (v28 == 1)
      {
        v18 = (v16 & 0x800) == 0;
        v29 = sub_10004565C;
        if (v18)
        {
          v29 = sub_100045744;
        }

        v37 = *v12 & 0xFFFFFFFFFFFFFFFLL;
        v43 = *a5;
        v30 = "chained key of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      else
      {
        if (v28 != 2)
        {
          return result;
        }

        v18 = (v16 & 0x800) == 0;
        v29 = sub_10004565C;
        if (v18)
        {
          v29 = sub_100045744;
        }

        v35 = *v12 & 0xFFFFFFFFFFFFFFFLL;
        v41 = *a5;
        v30 = "descendants of dir-stats object (id %llu) does not match expected value (%llu)\n";
      }

      goto LABEL_57;
    }

    if (((v16 >> 6) & 0x1F) > 6)
    {
      if (v28 != 7)
      {
        if (v28 != 8)
        {
          return result;
        }

        if ((v16 & 0x800) != 0)
        {
          v31 = sub_10004565C;
        }

        else
        {
          v31 = sub_100045744;
        }

        sub_10003EE2C(v12, *a5);
        v34 = *v12 & 0xFFFFFFFFFFFFFFFLL;
        v47 = *(a5 + 1);
        v33 = "%s xfield of dir-stats object (id %llu) does not match expected value (%llu)\n";
        goto LABEL_44;
      }

      v18 = (v16 & 0x800) == 0;
      v29 = sub_10004565C;
      if (v18)
      {
        v29 = sub_100045744;
      }

      v40 = *v12 & 0xFFFFFFFFFFFFFFFLL;
      v46 = *a5;
      v30 = "resource fork size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

    else
    {
      if (v28 != 5)
      {
        if (v28 != 6)
        {
          return result;
        }

        if ((v16 & 0x800) != 0)
        {
          v31 = sub_10004565C;
        }

        else
        {
          v31 = sub_100045744;
        }

        sub_10003EE2C(v12, *a5);
        v32 = *v12 & 0xFFFFFFFFFFFFFFFLL;
        v33 = "%s xfield of dir-stats object (id %llu) exists unexpectedly\n";
LABEL_44:
        (v31)(v33);
        return sub_10002AC58(v48, (*a3 >> 6) & 0x1F, v12, v14, a5, a7);
      }

      v18 = (v16 & 0x800) == 0;
      v29 = sub_10004565C;
      if (v18)
      {
        v29 = sub_100045744;
      }

      v38 = *v12 & 0xFFFFFFFFFFFFFFFLL;
      v44 = *a5;
      v30 = "physical size of dir-stats object (id %llu) does not match expected value (%llu)\n";
    }

LABEL_57:
    (v29)(v30);
    return sub_10002AC58(v48, (*a3 >> 6) & 0x1F, v12, v14, a5, a7);
  }

  return result;
}

uint64_t sub_10002A5B0(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10002D2DC(a1, a2, &v24);
  if (!result)
  {
    v11 = a3[1];
    v12 = *a3;
    v13 = (v12 >> 4) & 3;
    if (v13 == 2)
    {
      v14 = (v12 & 0x800) == 0;
      v20 = sub_10004565C;
      if (v14)
      {
        v20 = sub_100045744;
      }

      v20("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", *a5, *(a3 + 13), a3 + 15);
      v21 = v24;
      v22 = *(a3 + 5) >> 60;
      if (v22 == 14)
      {
        LODWORD(v22) = *(a3 + 13);
      }

      v23 = sub_10003EDFC(v22);
      return sub_100029480(v21, 0, a3 + 5, v11, a5, 8, v23, a7);
    }

    else if (v13)
    {
      return 22;
    }

    else
    {
      v14 = (v12 & 0x800) == 0;
      v15 = sub_10004565C;
      if (v14)
      {
        v15 = sub_100045744;
      }

      v15("no snap_meta entry found for snap_name entry with name %.*s\n", *(a3 + 13), a3 + 15);
      v16 = v24;
      v17 = *(a3 + 5) >> 60;
      if (v17 == 14)
      {
        LODWORD(v17) = *(a3 + 13);
      }

      v18 = sub_10003EDFC(v17);
      return sub_10002955C(v16, 0, a3 + 5, v11, 0, v18, a7 != 0, v19);
    }
  }

  return result;
}

uint64_t sub_10002A72C(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v11 = (a3 + 5);
  v12 = a3[1];
  v13 = *(a3 + 5) >> 60;
  v14 = v11[1];
  v41 = 0;
  result = sub_10003F8AC(a1, a2, v13, &v41, a5, a6, a7, a8);
  if (result)
  {
    return result;
  }

  v16 = *a3;
  v17 = (v16 >> 4) & 3;
  if (v17 != 1)
  {
    if (!v17)
    {
      if (HIBYTE(v14) == 2)
      {
        v18 = (v16 & 0x800) == 0;
        v19 = sub_10004565C;
        if (v18)
        {
          v19 = sub_100045744;
        }

        v32 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
        v20 = "file info: found orphan attribution tag with hash (%llu)\n";
        goto LABEL_25;
      }

      if (HIBYTE(v14) == 1)
      {
        v18 = (v16 & 0x800) == 0;
        v19 = sub_10004565C;
        if (v18)
        {
          v19 = sub_100045744;
        }

        v29 = *(a3 + 5) & 0xFFFFFFFFFFFFFFFLL;
        v36 = *(a3 + 13) & 0xFFFFFFFFFFFFFFLL;
        v20 = "file info: found orphan data hash (id %llu) at logical address %llu\n";
LABEL_25:
        (v19)(v20);
        v25 = v41;
        v26 = *v11 >> 60;
        if (v26 == 14)
        {
          LODWORD(v26) = *(a3 + 13);
        }

        v27 = sub_10003EDFC(v26);
        return sub_10002955C(v25, 0, v11, v12, 0, v27, v8 != 0, v28);
      }
    }

    return 22;
  }

  v21 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
  v22 = (v16 >> 6) & 0x1F;
  result = 22;
  if (v22 <= 0x1B)
  {
    if (v22 == 26)
    {
      v18 = (v16 & 0x800) == 0;
      v23 = sub_10004565C;
      if (v18)
      {
        v23 = sub_100045744;
      }

      v35 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
      v40 = *v11 & 0xFFFFFFFFFFFFFFFLL;
      v24 = "file info: attribution tag (hash %llu) with invalid jobj_id (%llu)\n";
    }

    else
    {
      if (v22 != 27)
      {
        return result;
      }

      v18 = (v16 & 0x800) == 0;
      v23 = sub_10004565C;
      if (v18)
      {
        v23 = sub_100045744;
      }

      v31 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
      v24 = "file info: attribution tag with invalid hash (%llu)\n";
    }
  }

  else
  {
    switch(v22)
    {
      case 0x1Cu:
        v18 = (v16 & 0x800) == 0;
        v23 = sub_10004565C;
        if (v18)
        {
          v23 = sub_100045744;
        }

        v33 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
        v38 = *a5;
        v24 = "file info: attribution tag (hash %llu): total count does not match expected value (%llu)\n";
        break;
      case 0x1Du:
        v18 = (v16 & 0x800) == 0;
        v23 = sub_10004565C;
        if (v18)
        {
          v23 = sub_100045744;
        }

        v34 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
        v39 = *(a5 + 8);
        v24 = "file info: attribution tag (hash %llu): physical size does not match expected value (%llu)\n";
        break;
      case 0x1Eu:
        v18 = (v16 & 0x800) == 0;
        v23 = sub_10004565C;
        if (v18)
        {
          v23 = sub_100045744;
        }

        v30 = *(a3 + 13) & 0x1FFFFFFFFFFFFFLL;
        v37 = *(a5 + 16);
        v24 = "file info: attribution tag (hash %llu): full clone size does not match expected value (%llu)\n";
        break;
      default:
        return result;
    }
  }

  (v23)(v24);
  return sub_10002AC58(v41, (*a3 >> 6) & 0x1F, v11, v12, a5, v8);
}

uint64_t sub_10002A9FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 16, &v18, a5, a6, a7, a8);
  if (!result)
  {
    if ((*a3 & 0x30) != 0)
    {
      return 22;
    }

    else
    {
      v11 = *(a3 + 2);
      v12 = sub_10004565C;
      if ((*a3 & 0x800) == 0)
      {
        v12 = sub_100045744;
      }

      v13 = *(a3 + 25);
      v12("found orphan/invalid purgeable record (file_id %llu, atime %llu)\n", v13, *(a3 + 17));
      v14 = v18;
      v15 = *(a3 + 5) >> 60;
      if (v15 == 14)
      {
        LODWORD(v15) = *(a3 + 13);
      }

      v16 = sub_10003EDFC(v15);
      return sub_10002955C(v14, 0, a3 + 5, v11, 0, v16, v8 != 0, v17);
    }
  }

  return result;
}

uint64_t sub_10002AADC(uint64_t a1, void *a2, unsigned __int16 *a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003F8AC(a1, a2, 19, &v28, a5, a6, a7, a8);
  if (!result)
  {
    v13 = a3[1];
    v14 = *a3;
    v15 = (v14 >> 4) & 3;
    if (v15 == 2)
    {
      v16 = (v14 & 0x800) == 0;
      v23 = sub_10004565C;
      if (v16)
      {
        v23 = sub_100045744;
      }

      v24 = *(a3 + 17);
      v23("need to insert missing clone mapping (private_id %llu, file_id %llu)\n", v24, *(a3 + 25));
      v25 = v28;
      v26 = *(a3 + 5) >> 60;
      if (v26 == 14)
      {
        LODWORD(v26) = *(a3 + 13);
      }

      v27 = sub_10003EDFC(v26);
      return sub_100029480(v25, 0, a3 + 5, v13, a5, a6, v27, a7);
    }

    else if (v15)
    {
      return 22;
    }

    else
    {
      v16 = (v14 & 0x800) == 0;
      v17 = sub_10004565C;
      if (v16)
      {
        v17 = sub_100045744;
      }

      v18 = *(a3 + 17);
      v17("found orphan/invalid clone mapping (private_id %llu, file_id %llu)\n", v18, *(a3 + 25));
      v19 = v28;
      v20 = *(a3 + 5) >> 60;
      if (v20 == 14)
      {
        LODWORD(v20) = *(a3 + 13);
      }

      v21 = sub_10003EDFC(v20);
      return sub_10002955C(v19, 0, a3 + 5, v13, 0, v21, a7 != 0, v22);
    }
  }

  return result;
}

uint64_t sub_10002AC58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, int a6)
{
  v12 = *a3 >> 60;
  if (v12 == 14)
  {
    LODWORD(v12) = *(a3 + 8);
  }

  v112 = sub_10003EDFC(v12);
  v13 = malloc_type_calloc(1uLL, 0x340uLL, 0x2FA3EB61uLL);
  v118 = -1431655766;
  v14 = malloc_type_calloc(1uLL, 0xEE0uLL, 0xF8F0F913uLL);
  v22 = v14;
  v117 = 3808;
  if (v13 && v14)
  {
    if (a6 == 1 || a6 != 2 && sub_10004758C(qword_10009BA58, "Update %s objects? ", v16, v17, v18, v19, v20, v21, v112))
    {
      __memcpy_chk();
      v118 = a4;
      v23 = sub_1000397B8(a1, 0, 0, v13, &v118, 0x340u, v22, &v117);
      if (v23)
      {
        v24 = v23;
        strerror(v23);
        sub_10004565C("failed to lookup %s object: %s\n", v25, v26, v27, v28, v29, v30, v31, v112);
        v32 = 819;
LABEL_10:
        sub_100049C40(v32, v24);
        goto LABEL_16;
      }

      v34 = 0xAAAAAAAAAAAAAAAALL;
      v116 = 0;
      memset(v115, 170, sizeof(v115));
      if ((a2 - 13) > 1)
      {
        v43 = 0;
        v44 = 0xAAAAAAAAAAAAAAAALL;
        v45 = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v24 = sub_100040474(v22 + 46, v117 - 92, 8, &v116, v115, 0, 0);
        if (v24)
        {
LABEL_22:
          v35 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v24);
          sub_10004565C("failed to get inode (id %llu) dstream: %s\n", v36, v37, v38, v39, v40, v41, v42, v35);
          v32 = 892;
          goto LABEL_10;
        }

        if (v115[0] < 0x28u)
        {
          v24 = 34;
          goto LABEL_22;
        }

        v43 = v116;
        v34 = *v116;
        v44 = *(v116 + 8);
        v45 = *(v116 + 16);
        *&v115[1] = *(v116 + 24);
      }

      switch(a2)
      {
        case 1:
          v60 = *a5;
          if (v12 == 10)
          {
            goto LABEL_66;
          }

          v22[4] = v60;
          goto LABEL_78;
        case 2:
        case 10:
        case 28:
          *v22 = *a5;
          goto LABEL_78;
        case 3:
          *(v22 + 12) = *a5;
          goto LABEL_78;
        case 4:
          v22[3] = *a5;
          goto LABEL_78;
        case 5:
          v80 = *a5;
          goto LABEL_64;
        case 6:
          v61 = *a5;
          LODWORD(v114) = v117 - 52;
          v62 = sub_100040708(v22 + 26, &v114, v61);
          if (v62)
          {
            v24 = v62;
            v63 = *v13 & 0xFFFFFFFFFFFFFFFLL;
            sub_10003EE2C(v13, v61);
            strerror(v24);
            sub_10004565C("failed to remove dir stats (id %llu) %s xfield: %s (%d)", v64, v65, v66, v67, v68, v69, v70, v63);
            v32 = 1377;
            goto LABEL_10;
          }

          v117 = v114 + 52;
          goto LABEL_78;
        case 7:
          v60 = *a5;
          goto LABEL_66;
        case 8:
          v114 = 0;
          v57 = sub_100040D28(v22, &v117, *a5, a5 + 4, *(a5 + 1), &v114);
          v24 = v57;
          if (!v57)
          {
            v58 = v114;
            if (v114)
            {
              free(v22);
              v22 = v58;
              goto LABEL_78;
            }
          }

          if (!v57)
          {
            goto LABEL_78;
          }

          goto LABEL_16;
        case 9:
        case 22:
          v46 = *a5;
          goto LABEL_62;
        case 11:
          v22[1] = 0;
          v22[2] = 0;
          goto LABEL_78;
        case 12:
          *(v22 + 14) = *(a5 + 14);
          goto LABEL_78;
        case 13:
          v44 = *(a5 + 1);
          goto LABEL_43;
        case 14:
          v45 = *(a5 + 2);
          if (v45 == -1)
          {
            v22[6] |= 0x10uLL;
          }

LABEL_43:
          *v43 = v34;
          *(v43 + 8) = v44;
          *(v43 + 16) = v45;
          *(v43 + 24) = *&v115[1];
          goto LABEL_78;
        case 15:
          v47 = *a5;
          LODWORD(v114) = v117 - 92;
          v48 = sub_100040708(v22 + 46, &v114, v47);
          v117 = v114 + 92;
          if (!v48)
          {
            goto LABEL_78;
          }

          v24 = v48;
          v49 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v48);
          sub_10004565C("failed to remove inode (oid 0x%llx) xfield (type %u): %s\n", v50, v51, v52, v53, v54, v55, v56, v49);
          v32 = 893;
          goto LABEL_10;
        case 16:
          v22[6] |= 0x200uLL;
          v114 = 0;
          v71 = sub_100040C6C(v22, &v117, *a5, &v114);
          if (!v71)
          {
            goto LABEL_76;
          }

          v24 = v71;
          v72 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v71);
          sub_10004565C("failed to repair inode sparse bytes (id %llu): %s\n", v73, v74, v75, v76, v77, v78, v79, v72);
          v32 = 1205;
          goto LABEL_10;
        case 17:
          v82 = v22[6] | *a5;
          goto LABEL_60;
        case 18:
          v82 = v22[6] & ~*a5;
LABEL_60:
          v22[6] = v82;
          goto LABEL_78;
        case 19:
          v81 = *(v22 + 17) | *a5;
          goto LABEL_53;
        case 20:
          v81 = *(v22 + 17) & ~*a5;
LABEL_53:
          *(v22 + 17) = v81;
          goto LABEL_78;
        case 21:
          v83 = *(*(a1 + 8) + 40);
          if ((*(v83 + 57) & 2) != 0)
          {
            *(v22 + 21) = *(a5 + 21);
          }

          else
          {
            if ((*(v83 + 48) & 2) == 0)
            {
LABEL_58:
              v24 = 22;
              goto LABEL_16;
            }

            v113 = *(a5 + 21);
            v114 = 0;
            v92 = sub_10004090C(v22, &v117, 17, &v113, 8, &v114);
            if (v92)
            {
              v24 = v92;
              v93 = *v13 & 0xFFFFFFFFFFFFFFFLL;
              strerror(v92);
              sub_10004565C("failed to repair inode nlink (id %llu): %s\n", v94, v95, v96, v97, v98, v99, v100, v93);
              v32 = 1206;
              goto LABEL_10;
            }

LABEL_76:
            v101 = v114;
            if (v114)
            {
              free(v22);
              v22 = v101;
            }
          }

LABEL_78:
          v102 = sub_10003B12C(a1, 0, v13, v118, v22, v117);
          v24 = v102;
          if (!v102)
          {
            goto LABEL_16;
          }

          strerror(v102);
          sub_10004565C("failed to update %s object: %s\n", v103, v104, v105, v106, v107, v108, v109, v112);
          v32 = 706;
          break;
        case 23:
          v46 = *v22 + 1;
LABEL_62:
          *v22 = v46;
          goto LABEL_78;
        case 24:
          v59 = v13[2];
          v13[2] &= 0x3FFu;
          v13[2] = v59 & 0x3FF | (*a5 << 10);
          goto LABEL_68;
        case 25:
          *(v22 + 28) = *a5;
          goto LABEL_78;
        case 26:
          *v13 = 0xD000000000000009;
          goto LABEL_68;
        case 27:
          *(v13 + 1) = *a5 & 0xFFFFFFFFFFFFFFLL | 0x200000000000000;
LABEL_68:
          v84 = sub_10003B708(a1, 0, a3, a4);
          if (!v84)
          {
            goto LABEL_78;
          }

          v24 = v84;
          v111 = *v13 & 0xFFFFFFFFFFFFFFFLL;
          strerror(v84);
          sub_10004565C("failed to remove %s object (id %llu): %s\n", v85, v86, v87, v88, v89, v90, v91, v112);
          v32 = 950;
          goto LABEL_10;
        case 29:
          v80 = *(a5 + 1);
LABEL_64:
          v22[1] = v80;
          goto LABEL_78;
        case 30:
          v60 = *(a5 + 2);
LABEL_66:
          v22[2] = v60;
          goto LABEL_78;
        default:
          goto LABEL_58;
      }

      goto LABEL_10;
    }

    v24 = 89;
LABEL_16:
    free(v13);
    if (!v22)
    {
      return v24;
    }

    goto LABEL_13;
  }

  sub_10004565C("unable to allocate memory for tree repairs\n", v15, v16, v17, v18, v19, v20, v21, v110);
  v24 = 12;
  sub_100049C40(0x34B, 12);
  if (v13)
  {
    goto LABEL_16;
  }

  if (v22)
  {
LABEL_13:
    free(v22);
  }

  return v24;
}

const char *sub_10002B324(const char *result, ...)
{
  va_start(va, result);
  if (dword_10007C5F0 >= 5)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

const char *sub_10002B374(const char *result, ...)
{
  va_start(va, result);
  if (dword_10007C5F0 >= 2)
  {
    return vfprintf(__stderrp, result, va);
  }

  return result;
}

void *sub_10002B3C4(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_10009B428, a2 * a1, memory_order_relaxed);
  }

  return result;
}

void sub_10002B400(void *a1, uint64_t a2)
{
  if (a1)
  {
    free(a1);
    atomic_fetch_add_explicit(&qword_10009B428, -a2, memory_order_relaxed);
  }
}

void *sub_10002B43C(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (result)
  {
    atomic_fetch_add_explicit(&qword_10009B428, a1, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10002B470(_DWORD *a1, unsigned int a2, const void *a3, uint64_t a4)
{
  v11 = -1431655766;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10002B508(a2, a3, &v10, &v11);
  if (!v6)
  {
    v9 = a4;
    v7 = v10;
    v6 = sub_10003B12C(a1, 0, v10, v11, &v9, 8u);
    free(v7);
  }

  return v6;
}

uint64_t sub_10002B508(unsigned int a1, const void *a2, void *a3, unsigned int *a4)
{
  v8 = a1 + 10;
  v9 = malloc_type_malloc(a1 + 10, 0x98375D02uLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  *v9 = 0xBFFFFFFFFFFFFFFFLL;
  v9[4] = a1;
  memcpy(v9 + 5, a2, a1);
  *a3 = v10;
  result = 0;
  if (a4)
  {
    *a4 = v8;
  }

  return result;
}

uint64_t sub_10002B594(uint64_t a1, unsigned int a2, const void *a3)
{
  v8 = -1431655766;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_10002B508(a2, a3, &v7, &v8);
  if (!v4)
  {
    v5 = v7;
    v4 = sub_10003B708(a1, 0, v7, v8);
    free(v5);
  }

  return v4;
}

uint64_t sub_10002B61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unsigned int a5, char a6, _DWORD *a7)
{
  v13 = *a3;
  v14 = malloc_type_calloc(1uLL, 0x10AuLL, 0xAF4999DuLL);
  v15 = malloc_type_calloc(1uLL, 0x132uLL, 0xAD51FE41uLL);
  if (v14 && (v23 = v15) != 0)
  {
    v75 = 0xAAAAAAAAAAAAAAAALL;
    v76 = 0xAAAAAAAAAAAAAAAALL;
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v72[0] = v24;
    v72[1] = v24;
    v73 = v24;
    v74 = v24;
    __src[14] = v24;
    __src[15] = v24;
    __src[12] = v24;
    __src[13] = v24;
    __src[10] = v24;
    __src[11] = v24;
    __src[8] = v24;
    __src[9] = v24;
    __src[6] = v24;
    __src[7] = v24;
    __src[4] = v24;
    __src[5] = v24;
    __src[3] = v24;
    __src[1] = v24;
    __src[2] = v24;
    __src[0] = v24;
    *v14 = 0xBFFFFFFFFFFFFFFFLL;
    v25 = sub_10002D2DC(a1, a2, &v76);
    if (v25 || (v25 = sub_100039F68(v72, v76, 0, v14, 0xAu, 0x10Au, v23, 306), v25))
    {
      v26 = v25;
      v27 = strerror(v25);
      sub_10004565C("unable to setup snapshot tree iteration: %s\n", v28, v29, v30, v31, v32, v33, v34, v27);
      v35 = 1266;
LABEL_6:
      sub_100049C40(v35, v26);
    }

    else if (BYTE8(v73))
    {
      v26 = 2;
    }

    else
    {
      v69 = 0;
      v37 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v38 = a5 - 50;
      v70 = -1;
      do
      {
        if (*v14 >> 60 == 11 && *v23 == v37)
        {
          v71 = -1431655766;
          v39 = sub_10000EDD8(a2, v14, v73, v23, SDWORD1(v73), 0, &v71);
          if (!(v39 | v71))
          {
            v40 = v14[4];
            if (v38 <= v40)
            {
              v41 = v38;
            }

            else
            {
              v41 = v14[4];
            }

            if ((a6 & 2) != 0 && !strncmp((a4 + 50), v14 + 10, v41))
            {
              if (sub_10004758C(qword_10009BA58, "Fix snapshot meta name_len (%u) from snap name entry? ", v42, v43, v44, v45, v46, v47, v40))
              {
                *(a4 + 48) = v41;
                bzero((a4 + 50), v38);
                v57 = (a4 + 50);
                v58 = v14 + 5;
                v59 = v41;
                goto LABEL_29;
              }

              goto LABEL_34;
            }

            if (a6)
            {
              v48 = sub_10002B984(a4 + 50, *(a4 + 48), v14 + 10, v40);
              if (v48 < v70)
              {
                v49 = v48;
                __memcpy_chk();
                v70 = v49;
                v69 = v41;
              }
            }
          }
        }

        v50 = (*(&v72[0] + 1))(v72);
        if (v50)
        {
          v26 = v50;
          v60 = strerror(v50);
          sub_10004565C("error iterating snapshot tree: %s\n", v61, v62, v63, v64, v65, v66, v67, v60);
          v35 = 1267;
          goto LABEL_6;
        }
      }

      while ((BYTE8(v73) & 1) == 0);
      if (v70 == -1)
      {
        v26 = 0;
        goto LABEL_7;
      }

      if (sub_10004758C(qword_10009BA58, "Fix snapshot meta name (%.*s) from snap name entry? ", v51, v52, v53, v54, v55, v56, v69))
      {
        *(a4 + 48) = v69;
        bzero((a4 + 50), v69);
        v57 = (a4 + 50);
        v58 = __src;
        v59 = v69;
LABEL_29:
        memcpy(v57, v58, v59);
        v26 = 0;
        *a7 = 1;
        goto LABEL_7;
      }

LABEL_34:
      v26 = 92;
    }

LABEL_7:
    free(v14);
    free(v23);
  }

  else
  {
    sub_10004565C("failed to allocate memory for snapshot repair\n", v16, v17, v18, v19, v20, v21, v22, v68);
    v26 = 12;
    sub_100049C40(0x4F1, 12);
  }

  return v26;
}

uint64_t sub_10002B984(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4)
{
  v8 = a4;
  __chkstk_darwin(a1);
  v10 = (&v31 - v9);
  memset(&v31 - v9, 170, v11);
  v12 = 0;
  v13 = vdupq_n_s64(v8);
  v14 = v10 + 2;
  v15 = xmmword_100076F10;
  v16 = xmmword_100076F20;
  v17 = vdupq_n_s64(4uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v13, v16));
    if (vuzp1_s16(v18, *v13.i8).u8[0])
    {
      *(v14 - 2) = v12;
    }

    if (vuzp1_s16(v18, *&v13).i8[2])
    {
      *(v14 - 1) = v12 + 1;
    }

    if (vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v15))).i32[1])
    {
      *v14 = v12 + 2;
      v14[1] = v12 + 3;
    }

    v12 += 4;
    v15 = vaddq_s64(v15, v17);
    v16 = vaddq_s64(v16, v17);
    v14 += 4;
  }

  while (((a4 + 4) & 0x1FFFC) != v12);
  if (a2)
  {
    v19 = 1;
    do
    {
      v20 = v19;
      if (a4)
      {
        v21 = v19 - 1;
        v22 = *(a1 + v19 - 1);
        v23 = v10 + 1;
        v24 = v8;
        v25 = a3;
        LOWORD(v26) = v19;
        do
        {
          v27 = *v25++;
          if (v22 != v27)
          {
            ++v21;
          }

          v28 = *v23;
          LOWORD(v26) = v26 + 1;
          if ((*v23 + 1) >= v26)
          {
            v26 = v26;
          }

          else
          {
            v26 = (v28 + 1);
          }

          if (v26 >= v21)
          {
            v26 = v21;
          }

          *v23++ = v26;
          v21 = v28;
          --v24;
        }

        while (v24);
      }
    }

    while (v19++ != a2);
    *v10 = v20;
  }

  return v10[v8];
}

uint64_t sub_10002BB60()
{
  result = sub_100039748(&unk_10009A360, 0, 0, 0x8000000, 2, 0, 0, 4096, 0, 2, 0, 0, sub_10002BBE4);
  if (!result)
  {
    result = sub_10003B84C(&unk_10009A360, 0, 0);
    if (result)
    {
      qword_10009A398 = 0;
    }
  }

  return result;
}

uint64_t sub_10002BBE4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int *a6)
{
  result = 22;
  if (a3 >= 0x10 && a5 >= 0x10)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v8 = 1;
        goto LABEL_7;
      }

      v9 = *(a2 + 8);
      v10 = *(a4 + 8);
      if (v9 >= v10)
      {
        v11 = *(a4 + 8);
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = memcmp((a2 + 10), (a4 + 10), v11);
      if ((v12 & 0x80000000) == 0)
      {
        if (v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = -1;
        }

        if (v12)
        {
          v13 = 0;
        }

        else
        {
          v13 = v9 >= v10;
        }

        if (v13)
        {
          v8 = v9 > v10;
        }

        goto LABEL_7;
      }
    }

    v8 = -1;
LABEL_7:
    result = 0;
    *a6 = v8;
  }

  return result;
}

uint64_t sub_10002BCA8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (!qword_10009A398)
  {
    return 0;
  }

  v5 = a2;
  v22 = a2 + 16;
  v7 = malloc_type_calloc(1uLL, 0x110uLL, 0xEFF35303uLL);
  if (v7)
  {
    v15 = v7;
    v21 = 2;
    v20 = 0;
    *v7 = a1;
    v7[4] = v5;
    __memcpy_chk();
    v16 = sub_1000397B8(dword_10009A360, 0, 0, v15, &v22, 0x110u, &v20, &v21);
    if (v16)
    {
      v17 = v16;
      if (v16 != 2)
      {
LABEL_12:
        free(v15);
        return v17;
      }

      *v15 = a1;
      v15[4] = v5;
      __memcpy_chk();
    }

    if (a4)
    {
      HIBYTE(v20) = 1;
    }

    else
    {
      LOBYTE(v20) = 1;
    }

    v17 = sub_10003B12C(dword_10009A360, 0, v15, v22, &v20, v21);
    goto LABEL_12;
  }

  sub_10004565C("failed to allocate memory for snapshot tracking\n", v8, v9, v10, v11, v12, v13, v14, v19);
  v17 = 12;
  sub_100049C40(0x153, 12);
  return v17;
}

uint64_t sub_10002BE24(_DWORD *a1)
{
  if (qword_10009A398)
  {
    v53 = 0xAAAAAAAAAAAAAAAALL;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v2;
    v52 = v2;
    v50[0] = v2;
    v50[1] = v2;
    v3 = malloc_type_calloc(1uLL, 0x110uLL, 0x710BD337uLL);
    if (!v3)
    {
      sub_10004565C("failed to allocate memory for snapshot validation\n", v4, v5, v6, v7, v8, v9, v10, v43);
      v20 = 12;
      sub_100049C40(0x368, 12);
LABEL_9:
      sub_10003B928(&unk_10009A360, 0);
      return v20;
    }

    v11 = v3;
    v49 = 0;
    v48 = -1431655766;
    v46 = 0;
    v47 = 0;
    v12 = sub_100039F68(v50, &unk_10009A360, 0, v3, 0x10u, 0x110u, &v49, 2);
    if (v12)
    {
      v20 = v12;
      v21 = strerror(v12);
      sub_10004565C("unable to initialize iterator for snapshot validation: %s\n", v22, v23, v24, v25, v26, v27, v28, v21);
      v29 = 873;
LABEL_5:
      sub_100049C40(v29, v20);
LABEL_6:
      free(v11);
      goto LABEL_9;
    }

    while (1)
    {
      if (BYTE8(v51))
      {
        v20 = 0;
        goto LABEL_6;
      }

      if (HIBYTE(v49) == 1)
      {
        if ((v49 & 1) == 0)
        {
          v44 = v11[4];
          sub_10004565C("no snap_meta entry found for snap_name entry with xid %llu and name %.*s\n", v13, v14, v15, v16, v17, v18, v19, *v11);
          sub_100049C40(0x28C, 92);
          v31 = sub_10002B508(v11[4], v11 + 5, &v47, &v48);
          if (v31)
          {
            goto LABEL_23;
          }

          v46 = *v11;
          v32 = v47;
          v33 = sub_100027D7C(a1, 4, 0, 0, 1, v47, v48, 0, 0);
LABEL_19:
          v20 = v33;
          free(v32);
          if (v20)
          {
            goto LABEL_6;
          }
        }
      }

      else if (v49)
      {
        v45 = v11[4];
        sub_10004565C("no snap_name entry found for snap_meta entry with xid %llu and name %.*s\n", v13, v14, v15, v16, v17, v18, v19, *v11);
        sub_100049C40(0x28E, 92);
        v31 = sub_10002B508(v11[4], v11 + 5, &v47, &v48);
        if (v31)
        {
LABEL_23:
          v20 = v31;
          goto LABEL_6;
        }

        v46 = *v11;
        v32 = v47;
        v33 = sub_100027D7C(a1, 4, 2, 0, 1, v47, v48, &v46, 8u);
        goto LABEL_19;
      }

      v34 = (*(&v50[0] + 1))(v50);
      if (v34)
      {
        v20 = v34;
        v35 = strerror(v34);
        sub_10004565C("error iterating snapshot tree: %s\n", v36, v37, v38, v39, v40, v41, v42, v35);
        v29 = 874;
        goto LABEL_5;
      }
    }
  }

  return 0;
}

uint64_t sub_10002C0AC(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (!a4)
  {
    return 28;
  }

  v6 = a1;
  if (a1 <= a2 || a4 < a1)
  {
    if (0x180000000 * (a2 >> 12) > a4)
    {
      return 28;
    }

    if (a4 >> 34)
    {
      v9 = 0x1000000000;
      if (a4 >= 0x1000000000)
      {
        v10 = 0x1000000000;
      }

      else
      {
        v10 = a4;
      }

      v8 = v10 >> 5;
      if (a4 >= 0x1000000001)
      {
        if (a4 - 0x1000000000 < 0x1000000000)
        {
          v9 = a4 - 0x1000000000;
        }

        v8 += (v9 * 0x666666666666667uLL) >> 64;
        if (a4 >= 0x2000000001)
        {
          v11 = a4 - 0x2000000000;
          if (a4 - 0x2000000000 >= 0x2000000000)
          {
            v11 = 0x2000000000;
          }

          v8 += v11 >> 7;
          if (a4 >= 0x4000000001)
          {
            v8 += (a4 - 0x4000000000) / 0xA0;
          }
        }
      }
    }

    else
    {
      v8 = 0x20000000;
    }

    v6 = v8 * (a2 >> 12);
    if (v6 >= a4 >> 2)
    {
      v6 = a4 >> 2;
    }
  }

  result = 0;
  v12 = v6 / a2;
  *a5 = v12 * a2;
  *a6 = a3 - v12;
  return result;
}

unint64_t sub_10002C1B4(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a5)
  {
    *a5 = (a2 >> 1) / result + a3;
  }

  if (a6)
  {
    v6 = (a2 >> 4) / result;
    if (v6 >= 0x8000000 / result)
    {
      v6 = 0x8000000 / result;
    }

    *a6 = a4 - v6;
  }

  return result;
}

uint64_t sub_10002C1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!qword_10009A3A0 || (result = sub_10002C230(a1, a2, a3, a5, a5, a6, a7, a8), !result))
  {
    result = 0;
    qword_10009A3A0 = a4;
  }

  return result;
}

uint64_t sub_10002C230(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = 0;
  v10 = qword_10009A3A8;
  v9 = HIDWORD(qword_10009A3A8);
  v11 = *(a2 + 40);
  if ((*(v11 + 57) & 2) != 0)
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(v11 + 48) >> 1) & 1;
  }

  if (unk_10009A3B4 == dword_10009A3B0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (HIDWORD(qword_10009A3A8) != qword_10009A3A8 || v13 != 0)
  {
    result = sub_10003FD88(a1, a2, a3, qword_10009A3A0, &v29);
    if (result)
    {
      return result;
    }

    if (v29)
    {
      goto LABEL_17;
    }
  }

  v16 = qword_10009A3A0 & 0xFFFFFFFFFFFFFFFLL | 0x3000000000000000;
  if (v9 == v10)
  {
    goto LABEL_20;
  }

  sub_10004565C("directory valence check: directory (oid 0x%llx): nchildren (%d) does not match drec count (%d)\n", a2, a3, a4, a5, a6, a7, a8, qword_10009A3A0);
  sub_100049C40(0x330, 92);
  *v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  *&v28[8] = qword_10009A3A8;
  memset(&v28[12], 0, 32);
  result = sub_10002C5E0(a4, 12, v16, &v25, v17, v18, v19, v20);
  if (!result)
  {
LABEL_20:
    if (!v13)
    {
      goto LABEL_17;
    }

    sub_10004565C("directory valence check: directory (oid 0x%llx): nlink (%d) does not match subdirectory count (%d)\n", a2, a3, a4, a5, a6, a7, a8, qword_10009A3A0);
    sub_100049C40(0x4B7, 92);
    memset(v28, 0, 36);
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    *&v28[36] = dword_10009A3B0;
    result = sub_10002C5E0(a4, 21, v16, &v25, v21, v22, v23, v24);
    if (!result)
    {
LABEL_17:
      result = 0;
      qword_10009A3A8 = 0;
      *&dword_10009A3B0 = 0;
      qword_10009A3A0 = 0;
    }
  }

  return result;
}

uint64_t sub_10002C3DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v8 = *a4 & 0xFFFFFFFFFFFFFFFLL;
  if (v8 == 1 || v8 == 7)
  {
    return 0;
  }

  if (v8 == qword_10009A3A0)
  {
    v12 = __OFADD__(qword_10009A3A8, 1);
    v13 = qword_10009A3A8 + 1;
    LODWORD(qword_10009A3A8) = qword_10009A3A8 + 1;
    if (v12)
    {
      sub_100045744("drec count overflow (%d)\n", a2, a3, a4, a5, a6, a7, a8, v13);
      sub_100049C40(0x4B8, 92);
      LODWORD(qword_10009A3A8) = 0x7FFFFFFF;
    }

    if ((*(a6 + 16) & 0xF) == 4)
    {
      v12 = __OFADD__(dword_10009A3B0, 1);
      v14 = ++dword_10009A3B0;
      if (v12)
      {
        sub_100045744("subdir count overflow (%d)\n", a2, a3, a4, a5, a6, a7, a8, v14);
        sub_100049C40(0x4B9, 92);
        dword_10009A3B0 = 0x7FFFFFFF;
      }
    }

    return 0;
  }

  result = sub_10002C230(a1, a2, a3, a8, a5, a6, a7, a8);
  if (!result)
  {
    sub_100045744("directory valence check: directory (oid 0x%llx): orphan directory record\n", v19, v20, v21, v22, v23, v24, v25, v8);
    sub_100049C40(0x34C, -8);
    result = sub_10002C520(a8, 0, 0, a4, a5, a6, a7, v26);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002C520(_DWORD *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    return sub_100027D7C(a1, 7, a2, a3, 0, a4, a5, a6, a7);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10002C578(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10009A3A0)
  {
    return sub_10002C230(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002C5E0(_DWORD *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  if (a1)
  {
    return sub_100027D7C(a1, 7, 1, a2, 1, &v9, 8u, a4, 0x5Cu);
  }

  return sub_10002797C(0, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_10002C648(uint64_t a1, uint64_t (*a2)(void, void, void, void, uint64_t), uint64_t a3, int a4)
{
  v8 = 0;
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    if (*(a1 + 40))
    {
      break;
    }

    v9 = a2(*(a1 + 16), *(a1 + 32), *(a1 + 24), *(a1 + 36), a3);
    if (v9)
    {
      v10 = a4 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (!v10)
    {
      v8 = v9 ? v9 : v8;
      v9 = (*(a1 + 8))(a1);
      if (!v9)
      {
        continue;
      }
    }

    v8 = v9;
    break;
  }

  if (*a1)
  {
    (*a1)(a1);
  }

  return v8;
}

uint64_t sub_10002C6E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(__int128 *, __int128 *, int *, uint64_t), uint64_t a4)
{
  v17 = -1431655766;
  if (a1)
  {
    if (a2 && (*(a1 + 40) & 1) == 0)
    {
      while (1)
      {
        if (*(a2 + 40))
        {
          goto LABEL_4;
        }

        v17 = 3;
        v15 = *(a1 + 16);
        v16 = *(a1 + 32);
        v13 = *(a2 + 16);
        v14 = *(a2 + 32);
        v8 = a3(&v15, &v13, &v17, a4);
        if (v8)
        {
          break;
        }

        v12 = v17;
        if (v17)
        {
          v8 = (*(a1 + 8))(a1);
          if (v8)
          {
            break;
          }

          v12 = v17;
        }

        if ((v12 & 2) != 0)
        {
          v8 = (*(a2 + 8))(a2);
          if (v8)
          {
            break;
          }
        }

        if (*(a1 + 40) == 1)
        {
          goto LABEL_4;
        }
      }

LABEL_7:
      v9 = v8;
      goto LABEL_15;
    }

LABEL_4:
    while (*(a1 + 40) != 1)
    {
      v15 = *(a1 + 16);
      v16 = *(a1 + 32);
      v13 = 0uLL;
      v14 = 0;
      v8 = a3(&v15, &v13, &v17, a4);
      if (!v8)
      {
        v8 = (*(a1 + 8))(a1);
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

  if (a2)
  {
    while ((*(a2 + 40) & 1) == 0)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 32);
      v13 = 0uLL;
      v14 = 0;
      v10 = a3(&v13, &v15, &v17, a4);
      if (!v10)
      {
        v10 = (*(a2 + 8))(a2);
        if (!v10)
        {
          continue;
        }
      }

      v9 = v10;
      if (a1)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }
  }

  v9 = 0;
  if (a1)
  {
LABEL_15:
    if (*a1)
    {
      (*a1)(a1);
    }
  }

LABEL_17:
  if (a2 && *a2)
  {
    (*a2)(a2);
  }

  return v9;
}

double sub_10002C8A8(uint64_t a1)
{
  if (*(a1 + 448))
  {
    sub_10003B928(a1 + 392, 0);
  }

  for (i = 192; i != 384; i += 64)
  {
    if (*(a1 + i))
    {
      *(a1 + i) = 0;
    }
  }

  if (*(a1 + 384))
  {
    *(a1 + 384) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    free(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    free(v5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    free(v6);
  }

  if (*a1)
  {
    sub_10002F398(*a1);
  }

  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
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
  return result;
}

uint64_t sub_10002C980(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    *a1 = 0;
    return sub_10002F398(result);
  }

  return result;
}

void sub_10002C998(void **a1)
{
  if (a1[103])
  {
    sub_10003B928((a1 + 96), 0);
  }

  if (a1[71])
  {
    a1[71] = 0;
  }

  if (a1[63])
  {
    a1[63] = 0;
  }

  if (a1[55])
  {
    a1[55] = 0;
  }

  if (a1[47])
  {
    a1[47] = 0;
  }

  if (a1[39])
  {
    a1[39] = 0;
  }

  if (a1[79])
  {
    a1[79] = 0;
  }

  if (a1[31])
  {
    a1[31] = 0;
  }

  if (a1[23])
  {
    a1[23] = 0;
  }

  v2 = a1[9];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    free(v4);
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = a1[v5 + 3];
    if (v8)
    {
      sub_10002F398(v8);
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  if (*a1)
  {
    free(*a1);
  }

  bzero(a1, 0x400uLL);
}

uint64_t sub_10002CAA4(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 24;
  v3 = 1;
  do
  {
    v4 = v3;
    result = *(v2 + 8 * v1);
    if (result)
    {
      *(v2 + 8 * v1) = 0;
      result = sub_10002F398(result);
    }

    v3 = 0;
    v1 = 1;
  }

  while ((v4 & 1) != 0);
  return result;
}

void sub_10002CAEC(uint64_t a1, char a2)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    free(v4);
    *(a1 + 48) = 0;
  }

  *(a1 + 14) = a2;
  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  *(a1 + 64) = v5;
  *(a1 + 568) = 0;
  *(a1 + 504) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_10002CB38(uint64_t *a1)
{
  v2 = a1[5];
  v3 = a1[1];
  result = sub_10002F3CC(*a1);
  if (!result)
  {
    v5 = a1[2];
    if (!v5 || (free(v5), a1[2] = 0, result = sub_10002CBE0(a1, 0), !result))
    {
      v6 = a1[3];
      if (!v6 || (free(v6), a1[3] = 0, result = sub_10002CC80(a1, 0), !result))
      {
        v7 = a1[4];
        if (!v7)
        {
          return 0;
        }

        free(v7);
        a1[4] = 0;
        result = sub_10002CD20(a1, 0, 0);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002CBE0(uint64_t *a1, void *a2)
{
  v3 = a1 + 2;
  if (a1[2] || (v5 = sub_100025548(a1, 0, 0x80000000, *(a1[1] + 168), 0, 0, 17, 0, a1 + 2, (a1 + 8), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    sub_10004565C("verification/reading of the nx_reaper object failed: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v4;
}

uint64_t sub_10002CC80(uint64_t *a1, void *a2)
{
  v3 = a1 + 3;
  if (a1[3] || (v5 = sub_100025548(a1, 0, 0x80000000, *(a1[1] + 152), 0, 0, 5, 0, a1 + 3, (a1 + 11), 0), !v5))
  {
    v4 = 0;
    if (a2)
    {
      *a2 = *v3;
    }
  }

  else
  {
    v4 = v5;
    v6 = strerror(v5);
    sub_10004565C("verification/reading of the spaceman object failed: %s\n", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v4;
}

uint64_t sub_10002CD20(uint64_t *a1, uint64_t a2, uint64_t **a3)
{
  if (a2)
  {
    v4 = (a2 + 72);
  }

  else
  {
    v4 = (a1 + 4);
  }

  if (*v4)
  {
    goto LABEL_5;
  }

  v6 = a1 + 1;
  if (a2)
  {
    v6 = (a2 + 40);
  }

  v7 = *v6;
  v8 = 128;
  if (!a2)
  {
    v8 = 160;
  }

  v9 = (a1 + 14);
  if (a2)
  {
    v9 = a2 + 104;
  }

  v10 = sub_100025548(a1, a2, 0x40000000, *(v7 + v8), 0, 0, 11, 0, v4, v9, 0);
  if (!v10)
  {
LABEL_5:
    v5 = 0;
    if (a3)
    {
      *a3 = *v4;
    }
  }

  else
  {
    v5 = v10;
    v11 = strerror(v10);
    sub_10004565C("verification/reading of the omap object failed: %s\n", v12, v13, v14, v15, v16, v17, v18, v11);
  }

  return v5;
}

uint64_t sub_10002CDEC(uint64_t *a1, void *a2)
{
  v4 = a2[10];
  v5 = a2[5];
  result = sub_10002F3CC(*a1);
  if (!result)
  {
    v7 = a2[9];
    if (!v7)
    {
      return 0;
    }

    free(v7);
    a2[9] = 0;
    result = sub_10002CD20(a1, a2, 0);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002CE54(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  if (a2 > 2)
  {
    return 22;
  }

  v5 = a2;
  v8 = &a1[8 * a2];
  v9 = (v8 + 17);
  if (!v8[24])
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v3 = sub_10002CC80(a1, &v19);
    if (v3)
    {
      return v3;
    }

    v10 = sub_100039748(v9, a1, 0, 0x80000000, 2, 9, 0, *(a1[1] + 36), 16, 8, 0, *(v19 + 40 * a2 + 208), sub_100001C14);
    if (v10)
    {
      v3 = v10;
      strerror(v10);
      sub_10004565C("failed to initialize the spaceman free queue tree %d: %s\n", v11, v12, v13, v14, v15, v16, v17, v5);
      return v3;
    }
  }

  v3 = 0;
  if (a3)
  {
    *a3 = v9;
  }

  return v3;
}

uint64_t sub_10002CF5C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v4 = a2 + 128;
  }

  else
  {
    v4 = (a1 + 41);
  }

  if (!*(v4 + 56))
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v5 = sub_10002CD20(a1, a2, &v18);
    if (v5)
    {
      return v5;
    }

    v8 = sub_100039748(v4, a1, a2, v18[5] & 0xC0000000, *(v18 + 10), 11, 0, *(a1[1] + 36), 16, 16, 0, v18[6], sub_10001F078);
    if (v8)
    {
      v5 = v8;
      v9 = strerror(v8);
      sub_10004565C("failed to initialize the omap tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
      return v5;
    }
  }

  v5 = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

uint64_t sub_10002D04C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 192;
  if (!*(a2 + 248))
  {
    v18 = 0xAAAAAAAAAAAAAAAALL;
    v5 = sub_10002CD20(a1, a2, &v18);
    if (v5)
    {
      return v5;
    }

    v8 = sub_100039748(v4, a1, a2, *(v18 + 11) & 0xC0000000, *(v18 + 11), 19, 0, *(a1[1] + 36), 8, 16, 0, v18[7], sub_100030C88);
    if (v8)
    {
      v5 = v8;
      v9 = strerror(v8);
      sub_10004565C("failed to initialize the omap snap tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
      return v5;
    }
  }

  v5 = 0;
  if (a3)
  {
    *a3 = v4;
  }

  return v5;
}

uint64_t sub_10002D134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 40);
  if ((*(v9 + 56) & 0x40) != 0)
  {
    v11 = a2 + 576;
    if (*(a2 + 632) || (v12 = sub_100039748(a2 + 576, a1, a2, *(v9 + 1044) & 0xC0000000, *(v9 + 1044), 32, 0, *(*(a1 + 8) + 36), 8, 24, 0, *(v9 + 1048), sub_100030C88), !v12))
    {
      v10 = 0;
      if (a3)
      {
        *a3 = v11;
      }
    }

    else
    {
      v10 = v12;
      v13 = strerror(v12);
      sub_10004565C("failed to initialize the pfkur tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }

  else
  {
    sub_10004565C("get_pfkur_tree() called on non-pfk volume\n", a2, a2, a4, a5, a6, a7, a8, v22);
    return 22;
  }

  return v10;
}

uint64_t sub_10002D210(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a2 + 40);
  v5 = *(v4 + 1072);
  if (!v5)
  {
    return 2;
  }

  v6 = a2 + 640;
  if (*(a2 + 696) || (v8 = sub_100039748(a2 + 640, a1, a2, *(v4 + 1068) & 0xC0000000, *(v4 + 1068), 34, 0, *(*(a1 + 8) + 36), 4, 8, 0, v5, sub_100030C54), !v8))
  {
    v7 = 0;
    if (a3)
    {
      *a3 = v6;
    }
  }

  else
  {
    v7 = v8;
    v9 = strerror(v8);
    sub_10004565C("failed to initialize the doc-id tree: %s\n", v10, v11, v12, v13, v14, v15, v16, v9);
  }

  return v7;
}

uint64_t sub_10002D2DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 256;
  if (*(a2 + 312) || (v6 = sub_100039748(v4, a1, a2, *(*(a2 + 40) + 124) & 0xC0000000, *(*(a2 + 40) + 124), 16, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 152), sub_10003F384), !v6))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v6;
    v7 = strerror(v6);
    sub_10004565C("failed to initialize the snap meta tree: %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  return v5;
}

uint64_t sub_10002D394(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 320;
  if (*(a2 + 376) || (v6 = sub_100039748(v4, a1, a2, *(*(a2 + 40) + 120) & 0xC0000000, *(*(a2 + 40) + 120), 15, 0, *(*(a1 + 8) + 36), 0, 0, 0, *(*(a2 + 40) + 144), sub_10003F384), !v6))
  {
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v6;
    v7 = strerror(v6);
    sub_10004565C("failed to initialize the extentref tree: %s\n", v8, v9, v10, v11, v12, v13, v14, v7);
  }

  return v5;
}

uint64_t sub_10002D44C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[6];
  if (!v9)
  {
    v9 = a2[5];
  }

  if ((*(v9 + 56) & 0x20) != 0)
  {
    v11 = a2 + 48;
    if (a2[55] || (v12 = sub_100039748((a2 + 48), a1, a2, *(a2[5] + 1040) & 0xC0000000, *(a2[5] + 1040), 31, 0, *(*(a1 + 8) + 36), 16, 16, 0, *(a2[5] + 1032), sub_10003F1FC), !v12))
    {
      v10 = 0;
      if (a3)
      {
        *a3 = v11;
      }
    }

    else
    {
      v10 = v12;
      v13 = strerror(v12);
      sub_10004565C("failed to initialize the fext tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }

  else
  {
    sub_10004565C("get_fext_tree() called on unsealed volume\n", a1, a2, a4, a5, a6, a7, a8, v22);
    return 22;
  }

  return v10;
}

uint64_t sub_10002D530(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(*(a2 + 40) + 1112);
  if (!v4)
  {
    return 2;
  }

  v5 = a2 + 704;
  if (*(a2 + 760) || (v7 = sub_100039748(a2 + 704, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v4, sub_10003F258), !v7))
  {
    v6 = 0;
    if (a3)
    {
      *a3 = v5;
    }
  }

  else
  {
    v6 = v7;
    v8 = strerror(v7);
    sub_10004565C("failed to initialize the clone group tree: %s\n", v9, v10, v11, v12, v13, v14, v15, v8);
  }

  return v6;
}

uint64_t sub_10002D5F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 448;
  if (*(a2 + 504))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 116);
  v8 = *(v6 + 136);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_100039748(v4, a1, a2, v7 & 0xC0000000, v7, 14, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, sub_10003F384);
  if (!v11)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v11;
    v12 = strerror(v11);
    sub_10004565C("failed to initialize the fsroot tree: %s\n", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  return v5;
}

uint64_t sub_10002D6C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2 + 512;
  if (*(a2 + 568))
  {
    goto LABEL_2;
  }

  v6 = *(a2 + 40);
  v7 = *(v6 + 1104);
  v8 = *(v6 + 1096);
  if (*(a2 + 48))
  {
    v6 = *(a2 + 48);
  }

  if ((*(v6 + 56) & 0x20) != 0)
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 20);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_100039748(v4, a1, a2, v7 & 0xC0000000, v7, 36, v9, *(*(a1 + 8) + 36), 0, 0, v10, v8, sub_10003F384);
  if (!v11)
  {
LABEL_2:
    v5 = 0;
    if (a3)
    {
      *a3 = v4;
    }
  }

  else
  {
    v5 = v11;
    v12 = strerror(v11);
    sub_10004565C("failed to initialize the secondary fsroot tree: %s\n", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  return v5;
}

uint64_t sub_10002D798(io_object_t a1)
{
  v1 = a1;
  IOObjectRetain(a1);
  if (!v1)
  {
    return 0;
  }

  iterator = -1431655766;
  while (1)
  {
    parent = -1431655766;
    if (IOObjectConformsTo(v1, "AppleAPFSContainerScheme"))
    {
      break;
    }

    if (IOObjectConformsTo(v1, "IOBlockStorageDevice"))
    {
      goto LABEL_15;
    }

    if (IORegistryEntryGetParentEntry(v1, "IOService", &parent))
    {
      parent = 0;
    }

    IOObjectRelease(v1);
    v1 = parent;
    if (!parent)
    {
      return 0;
    }
  }

  v3 = IORegistryEntrySearchCFProperty(v1, "IOService", @"Device Characteristics", kCFAllocatorDefault, 3u);
  if (v3)
  {
    v4 = v3;
    Value = CFDictionaryGetValue(v3, @"Target Disk Mode");
    if (Value)
    {
      v6 = CFBooleanGetValue(Value);
      CFRelease(v4);
      if (v6)
      {
LABEL_15:
        v2 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  if (IORegistryEntryGetParentIterator(v1, "IOService", &iterator))
  {
    goto LABEL_15;
  }

  while (1)
  {
    while (1)
    {
      v8 = IOIteratorNext(iterator);
      if (!v8)
      {
        v2 = 0;
        goto LABEL_32;
      }

      v9 = v8;
      if (!sub_10002D9FC(v8, @"image-format-read-only"))
      {
        break;
      }

LABEL_28:
      IOObjectRelease(v9);
    }

    if (sub_10002D9FC(v9, @"Removable"))
    {
      break;
    }

    v10 = IORegistryEntrySearchCFProperty(v9, "IOService", @"Protocol Characteristics", kCFAllocatorDefault, 3u);
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = v10;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(v11) || (v13 = CFDictionaryGetValue(v11, @"Physical Interconnect Location")) == 0 || (v14 = v13, v15 = CFStringGetTypeID(), v15 != CFGetTypeID(v14)))
    {
      CFRelease(v11);
      goto LABEL_28;
    }

    v16 = CFEqual(v14, @"Internal");
    CFRelease(v11);
    IOObjectRelease(v9);
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  IOObjectRelease(v9);
LABEL_31:
  v2 = 1;
LABEL_32:
  IOObjectRelease(iterator);
LABEL_16:
  IOObjectRelease(v1);
  return v2;
}

BOOL sub_10002D9FC(io_registry_entry_t a1, CFStringRef key)
{
  v2 = IORegistryEntrySearchCFProperty(a1, "IOService", key, kCFAllocatorDefault, 3u);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

uint64_t sub_10002DA60(int a1, dev_t *a2, _DWORD *a3, _DWORD *a4, dev_t *a5)
{
  if (a2)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644CuLL, &v27))
    {
      if (*__error() != 25)
      {
        v10 = __error();
        v11 = strerror(*v10);
        sub_10002B374("%s:%d: can't get features for device (%s)\n", "io_get_device_features", 180, v11);
      }

      st_dev = 0;
    }

    else
    {
      st_dev = v27.st_dev;
    }

    *a2 = st_dev;
  }

  if (a3)
  {
    *a3 = (fcntl(a1, 3) & 3) != 0;
  }

  if (a4)
  {
    v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v27.st_blksize = v13;
    *v27.st_qspare = v13;
    v27.st_birthtimespec = v13;
    *&v27.st_size = v13;
    v27.st_mtimespec = v13;
    v27.st_ctimespec = v13;
    *&v27.st_uid = v13;
    v27.st_atimespec = v13;
    *&v27.st_dev = v13;
    if (!fstat(a1, &v27) && (v27.st_mode & 0xB000 | 0x4000) == 0x6000)
    {
      v14 = IOServiceMatching("IOMedia");
      if (!v14)
      {
        goto LABEL_13;
      }

      v25 = v27.st_rdev & 0xFFFFFF;
      valuePtr = HIBYTE(v27.st_rdev);
      v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v18)
      {
        v19 = v18;
        CFDictionarySetValue(v14, @"BSD Major", v18);
        CFRelease(v19);
      }

      v20 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v25);
      if (v20)
      {
        v21 = v20;
        CFDictionarySetValue(v14, @"BSD Minor", v20);
        CFRelease(v21);
      }

      MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v14);
      if (MatchingService)
      {
        v23 = MatchingService;
        LODWORD(v14) = sub_10002D798(MatchingService);
        IOObjectRelease(v23);
        goto LABEL_13;
      }

      sub_10002B324("%s:%d: fd %d is type %o rdev %d (%d, %d): I/O registry entry not found\n", "io_get_device_features", 228, a1, v27.st_mode & 0xF000, v27.st_rdev, HIBYTE(v27.st_rdev), v27.st_rdev & 0xFFFFFF);
    }

    LODWORD(v14) = 0;
LABEL_13:
    *a4 = v14;
  }

  if (a5)
  {
    v27.st_dev = -1431655766;
    if (ioctl(a1, 0x4004644FuLL, &v27))
    {
      if (*__error() != 25)
      {
        v15 = __error();
        v16 = strerror(*v15);
        sub_10002B374("%s:%d: can't get solidstate for device (%s)\n", "io_get_device_features", 244, v16);
      }

      v17 = 1;
    }

    else
    {
      v17 = v27.st_dev;
    }

    *a5 = v17;
  }

  return 0;
}

uint64_t sub_10002DD10(io_object_t *a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = IOObjectConformsTo(*a1, "AppleAPFSSnapshot");
  v5 = *a1;
  if (v4)
  {
    parent = -1431655766;
    if (IORegistryEntryGetParentEntry(v5, "IOService", &parent))
    {
      return 0;
    }

    IOObjectRelease(*a1);
    v5 = parent;
    *a1 = parent;
    if (a2)
    {
      *a2 = 1;
    }
  }

  result = IOObjectConformsTo(v5, "AppleAPFSVolume");
  if (result)
  {
    return *a1;
  }

  return result;
}

const char *sub_10002DDB4(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  return v1;
}

unint64_t sub_10002DDF8(char *a1, _DWORD *a2)
{
  if (!sub_10002DE7C(a1))
  {
    return 0;
  }

  result = strrchr(a1, 115);
  if (result)
  {
    v5 = result;
    result = strtoul((result + 1), 0, 10);
    if (result)
    {
      v6 = result;
      result = strndup(a1, v5 - a1);
      if (result)
      {
        if (a2)
        {
          *a2 = v6 - 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_10002DE7C(const char *a1)
{
  v1 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v2 = *(v1 + 5);
    v1 += 5;
    if (v2 == 114)
    {
      ++v1;
    }
  }

  v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if (!MatchingService)
  {
    return 0;
  }

  v5 = MatchingService;
  v6 = IOObjectConformsTo(MatchingService, "AppleAPFSVolume") != 0;
  IOObjectRelease(v5);
  return v6;
}

BOOL sub_10002DF20(const char *a1, const char *a2)
{
  v2 = sub_10002DF74(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2 == kCFBooleanTrue;
  CFRelease(v2);
  return v3;
}

CFTypeRef sub_10002DF74(const char *a1, const char *a2)
{
  v3 = a1;
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v4 = *(v3 + 5);
    v3 += 5;
    if (v4 == 114)
    {
      ++v3;
    }
  }

  if (*v3 == 114)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3;
  }

  v6 = IOBSDNameMatching(kIOMasterPortDefault, 0, v5);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  if (!MatchingService)
  {
    return 0;
  }

  v8 = MatchingService;
  v9 = CFStringCreateWithCString(0, a2, 0x8000100u);
  if (v9)
  {
    v10 = v9;
    CFProperty = IORegistryEntryCreateCFProperty(v8, v9, kCFAllocatorDefault, 0);
    CFRelease(v10);
  }

  else
  {
    CFProperty = 0;
  }

  IOObjectRelease(v8);
  return CFProperty;
}

uint64_t sub_10002E05C(io_registry_entry_t a1, const char *a2)
{
  iterator = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  while (1)
  {
    v4 = IOIteratorNext(iterator);
    v3 = v4;
    if (!v4 || IOObjectConformsTo(v4, a2))
    {
      break;
    }

    IOObjectRelease(v3);
  }

  IOObjectRelease(iterator);
  return v3;
}

uint64_t sub_10002E0DC(char *a1, int a2)
{
  v4 = strrchr(a1, 115);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v5 = v4 - 1;
    while (v5 > a1)
    {
      v7 = *v5--;
      v6 = v7;
      if ((v7 - 48) >= 0xA)
      {
        if (v6 != 115)
        {
          return 0xFFFFFFFFLL;
        }

        v4 = v5 + 1;
        goto LABEL_8;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_8:
  if (v4 <= a1 || *(v4 - 1) == 47)
  {
    return 0xFFFFFFFFLL;
  }

  return strtoul(v4 + 1, 0, 10) - 1;
}

const char *sub_10002E16C(const char *result)
{
  if (result)
  {
    v1 = result;
    if (!strncmp(result, "/dev/", 5uLL))
    {
      v2 = *(v1 + 5);
      v1 += 5;
      if (v2 == 114)
      {
        ++v1;
      }
    }

    v3 = IOBSDNameMatching(kIOMasterPortDefault, 0, v1);

    return IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  }

  return result;
}

const char *sub_10002E1E8(const char *a1, _BYTE *a2)
{
  result = sub_10002E16C(a1);
  object = result;
  if (result)
  {
    v4 = sub_10002DD10(&object, a2);
    result = object;
    if (!v4)
    {
      IOObjectRelease(object);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002E23C(io_registry_entry_t a1)
{
  v9 = -1431655766;
  iterator = -1431655766;
  object = -1431655766;
  if (IORegistryEntryGetChildIterator(a1, "IOService", &iterator))
  {
    return 0;
  }

  v2 = IOIteratorNext(iterator);
  if (!v2)
  {
LABEL_19:
    v1 = 0;
    v5 = iterator;
    goto LABEL_21;
  }

  v3 = v2;
  while (1)
  {
    if (!IOObjectConformsTo(v3, "AppleAPFSContainerScheme") || IORegistryEntryGetChildIterator(v3, "IOService", &v9))
    {
      goto LABEL_18;
    }

    v4 = IOIteratorNext(v9);
    if (v4)
    {
      break;
    }

LABEL_17:
    IOObjectRelease(v9);
LABEL_18:
    IOObjectRelease(v3);
    v3 = IOIteratorNext(iterator);
    if (!v3)
    {
      goto LABEL_19;
    }
  }

  v5 = v4;
  while (1)
  {
    if (!IOObjectConformsTo(v5, "AppleAPFSMedia") || IORegistryEntryGetChildIterator(v5, "IOService", &object))
    {
      goto LABEL_16;
    }

    v6 = IOIteratorNext(object);
    if (v6)
    {
      break;
    }

LABEL_15:
    IOObjectRelease(object);
LABEL_16:
    IOObjectRelease(v5);
    v5 = IOIteratorNext(v9);
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  v1 = v6;
  while (!IOObjectConformsTo(v1, "AppleAPFSContainer"))
  {
    IOObjectRelease(v1);
    v1 = IOIteratorNext(object);
    if (!v1)
    {
      goto LABEL_15;
    }
  }

  IOObjectRelease(iterator);
  IOObjectRelease(v9);
  IOObjectRelease(object);
  IOObjectRelease(v3);
LABEL_21:
  IOObjectRelease(v5);
  return v1;
}

uint64_t sub_10002E3D8(char *__s, _DWORD *a2, io_connect_t *a3, io_registry_entry_t *a4, int a5)
{
  parent = -1431655766;
  if (a2)
  {
    v9 = strrchr(__s, 47);
    if (v9)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = __s;
    }

    v20 = 0;
    v11 = sub_10002E1E8(v10, &v20);
    if (v11)
    {
      v12 = v11;
      if (IORegistryEntryGetParentEntry(v11, "IOService", &parent))
      {
        v13 = 49158;
LABEL_24:
        IOObjectRelease(v12);
        return v13;
      }

      if (IOObjectConformsTo(parent, "AppleAPFSContainer"))
      {
        v17 = sub_10002E0DC(v10, v20);
        *a2 = v17;
        if (v17 != -1)
        {
          v16 = parent;
LABEL_17:
          v13 = IOServiceOpen(v16, mach_task_self_, 0, a3);
          v18 = parent;
          if (a4 && !v13)
          {
            *a4 = parent;
            goto LABEL_24;
          }

LABEL_23:
          IOObjectRelease(v18);
          goto LABEL_24;
        }

        v13 = 49154;
      }

      else
      {
        v13 = 49231;
      }

      v18 = parent;
      goto LABEL_23;
    }
  }

  else
  {
    v15 = sub_10002E16C(__s);
    if (v15)
    {
      v12 = v15;
      v16 = sub_10002E05C(v15, "AppleAPFSContainer");
      parent = v16;
      if (!v16)
      {
        if (!a5 || (v16 = sub_10002E23C(v12), (parent = v16) == 0))
        {
          v13 = 49231;
          goto LABEL_24;
        }
      }

      goto LABEL_17;
    }
  }

  return 49154;
}

uint64_t sub_10002E53C(uint64_t a1, uint64_t a2)
{
  if (((*(*(a2 + 40) + 264) | 0x100u) & 0x109) == 0x100)
  {
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v57 = 0xAAAAAAAAAAAAAAAALL;
    v3 = sub_10002E908(a1, a2, &v57, &v56);
    if (v3)
    {
      v11 = v3;
      if (v3 != 2)
      {
        sub_10004565C("iOS encryption rolling state object: cannot get ierso xattr\n", v4, v5, v6, v7, v8, v9, v10, v54);
        v12 = 1143;
LABEL_16:
        sub_100049C40(v12, v11);
        return v11;
      }

      return 0;
    }

    v21 = v57;
    if (v56 <= 4)
    {
      sub_10004565C("iOS encryption rolling state object: xattr record too small (%zu)\n", v4, v5, v6, v7, v8, v9, v10, v56);
      v11 = 92;
      v22 = 1136;
LABEL_19:
      v25 = 92;
LABEL_20:
      sub_100049C40(v22, v25);
LABEL_21:
      v23 = v21;
      goto LABEL_22;
    }

    if ((*v57 & 3) != 2)
    {
      sub_10004565C("iOS encryption rolling state object: xattr invalid storage type, flags (%hu)\n", v4, v5, v6, v7, v8, v9, v10, *v57);
      v11 = 92;
      v22 = 1137;
      goto LABEL_19;
    }

    v24 = *(v57 + 2);
    if (v24 + 4 != v56)
    {
      sub_10004565C("iOS encryption rolling state object: xattr payload (%hu) does not match record size (%zu)\n", v4, v5, v6, v7, v8, v9, v10, *(v57 + 2));
      v11 = 92;
      v22 = 1138;
      goto LABEL_19;
    }

    if (v24 <= 3)
    {
      sub_10004565C("iOS encryption rolling state object: xattr payload (%hu) is too small\n", v4, v5, v6, v7, v8, v9, v10, *(v57 + 2));
      v11 = 92;
      v22 = 1139;
      goto LABEL_19;
    }

    v27 = *(v57 + 4);
    if (v27 > 2)
    {
      sub_100045744("iOS encryption rolling state object: ierso version (%u) unrecognized\n", v4, v5, v6, v7, v8, v9, v10, *(v57 + 4));
      sub_100049C40(0x474, -6);
      v11 = 0;
      goto LABEL_21;
    }

    if (qword_100076F30[v27] != v24)
    {
      v55 = *(v57 + 4);
      sub_10004565C("iOS encryption rolling state object: size (%u), version (%u) does not match expected size (%zu)\n", v4, v5, v6, v7, v8, v9, v10, v24);
      v11 = 92;
      v22 = 1141;
      goto LABEL_19;
    }

    v28 = malloc_type_calloc(1uLL, 0x170uLL, 0x1000040BCF37258uLL);
    if (!v28)
    {
      sub_10004565C("iOS encryption rolling state object: failed to allocate ierso\n", v29, v30, v31, v32, v33, v34, v35, v54);
      v11 = 12;
      v22 = 1142;
      v25 = 12;
      goto LABEL_20;
    }

    v36 = v28;
    __memcpy_chk();
    v44 = *v36;
    if (!*v36)
    {
      *(v36 + 32) = 1;
    }

    v45 = 48;
    if (!*(a2 + 56))
    {
      v45 = 40;
    }

    v46 = *(a2 + v45);
    v48 = *(v36 + 8);
    v47 = *(v36 + 16);
    v49 = *(v46 + 176);
    if (v47 > v48 || (v48 < v49 ? (v50 = v49 >> 60 == 0) : (v50 = 0), !v50))
    {
      sub_10004565C("iOS encryption rolling state object: epoch unordered: current_id (%llu) <= epoch (%llu) < apfs_next_obj_id (%llu) <= MAX_JOBJ_ID (%llu)\n", v37, v38, v39, v40, v41, v42, v43, v47);
      v11 = 92;
      v51 = 1128;
LABEL_38:
      sub_100049C40(v51, 92);
LABEL_39:
      free(v36);
      goto LABEL_21;
    }

    if (*(v36 + 24) >> 55)
    {
      sub_10004565C("iOS encryption rolling state object: current_offset (%llu) too large\n", v37, v38, v39, v40, v41, v42, v43, *(v36 + 24));
      v11 = 92;
      v51 = 1129;
      goto LABEL_38;
    }

    v52 = *(v36 + 32);
    if ((v52 - 1) >= 2)
    {
      sub_10004565C("iOS encryption rolling state object: (version %u) invalid policy (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
      v11 = 92;
      v51 = 1130;
      goto LABEL_38;
    }

    v53 = *(v36 + 36);
    if (v52 == 1)
    {
      if (v53 >= 2)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) lite rolling has invalid current_state (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1131;
LABEL_56:
        v11 = 92;
        goto LABEL_38;
      }
    }

    else if (v53 - 1 >= 2)
    {
      if (v53)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) full rolling has unrecognized current_state (%u)\n", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1133;
        goto LABEL_56;
      }

      if (v47)
      {
        sub_10004565C("iOS encryption rolling state object: (version %u) current_state unset, yet non-zero current_id (%llu)", v37, v38, v39, v40, v41, v42, v43, v44);
        v51 = 1132;
        goto LABEL_56;
      }
    }

    v11 = sub_10002EACC(v36);
    if (!v11)
    {
      sub_10002EB3C(v36);
    }

    goto LABEL_39;
  }

  v57 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10002E908(a1, a2, &v57, &v56);
  if (!v13)
  {
    sub_10004565C("iOS encryption rolling state object: non-iOS content protected volume unexpectedly has ierso\n", v14, v15, v16, v17, v18, v19, v20, v54);
    v11 = 92;
    sub_100049C40(0x479, 92);
    v23 = v57;
LABEL_22:
    free(v23);
    return v11;
  }

  v11 = v13;
  if (v13 != 2)
  {
    sub_10004565C("iOS encryption rolling state object: cannot determine absence of ierso xattr\n", v14, v15, v16, v17, v18, v19, v20, v54);
    v12 = 1144;
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_10002E908(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = 38;
  v23 = 3804;
  v25 = 0x4000000000000003;
  v26 = 28;
  strcpy(v27, "com.apple.system.apfs.ierso");
  v8 = malloc_type_malloc(0xEDCuLL, 0xBC85CF50uLL);
  if (!v8)
  {
    return 12;
  }

  v9 = v8;
  v10 = *(a2 + 48);
  v11 = 48;
  if (!*(a2 + 56))
  {
    v11 = 40;
  }

  v12 = *(a2 + v11);
  v13 = *(a2 + 48);
  if (!v10)
  {
    v13 = *(a2 + 40);
  }

  v14 = *(v12 + 116);
  v15 = *(v12 + 136);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[2] = v16;
  v22[3] = v16;
  v22[0] = v16;
  v22[1] = v16;
  if ((*(v13 + 56) & 0x20) != 0)
  {
    v17 = *(a2 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (!v10)
  {
    v10 = *(a2 + 40);
  }

  if ((*(v10 + 56) & 0x20) != 0)
  {
    v19 = *(a2 + 20);
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_100039748(v22, a1, a2, v14 & 0xC0000000, v14, 14, v17, *(*(a1 + 8) + 36), 0, 0, v19, v15, sub_10003F384);
  if (v20)
  {
    v18 = v20;
  }

  else
  {
    v18 = sub_1000397B8(v22, *(a2 + 56), 0, &v25, &v24, 0x26u, v9, &v23);
    if (!v18)
    {
      *a3 = v9;
      *a4 = v23;
      return v18;
    }
  }

  free(v9);
  return v18;
}

uint64_t sub_10002EACC(_DWORD *a1)
{
  if (a1[8] != 2 || a1[9] != 2 || memchr(a1 + 10, 0, 0x80uLL))
  {
    return 0;
  }

  sub_10004565C("iOS encryption rolling state object: current_xattr is unterminated\n", v1, v2, v3, v4, v5, v6, v7, v10);
  v8 = 92;
  sub_100049C40(0x46E, 92);
  return v8;
}

char *sub_10002EB3C(uint64_t a1)
{
  result = sub_10000EC94();
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  if (!v10)
  {
    v10 = result;
  }

  if (!v11)
  {
    v11 = result;
  }

  if (v10 > v11 || v11 > result)
  {
    sub_100045744("iOS encryption rolling state object: (version %u) timestamps unordered: start_time (%llu) <= end_time (%llu) <= current_time (%llu)\n", v3, v4, v5, v6, v7, v8, v9, *a1);

    return sub_100049C40(0x46F, -4);
  }

  return result;
}

uint64_t sub_10002EBC8(uint64_t **a1, void **a2, int a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v8 = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      v9 = sub_100031300(*a1, a5, 0, 0, &v22);
    }

    else
    {
      if (a3)
      {
        goto LABEL_17;
      }

      v9 = sub_10001F0D4(*a1, a1[1], a5, a4, &v22);
    }

    v8 = v9;
    if (!v9)
    {
      v12 = v23;
      v13 = *(a1 + 6);
      goto LABEL_14;
    }

LABEL_17:
    v14 = *a2;
    if (!*a2)
    {
      v14 = malloc_type_malloc(*(a1 + 6), 0x6FE5E56FuLL);
      *a2 = v14;
      if (!v14)
      {
        return 12;
      }
    }

    if (!v8)
    {
      v15 = **a1;
      if ((v23 & 0x400000000) != 0)
      {
        v19 = a1[1];
        if ((WORD2(v23) & 0x700) == 0x100)
        {
          v17 = 4;
        }

        else
        {
          v17 = 0;
        }

        if ((WORD2(v23) & 0x700) == 0x100)
        {
          v18 = a5 ^ HIDWORD(v24) | a5 & 0xFFFFFFFF00000000 ^ (v24 << 32);
        }

        else
        {
          v18 = 0;
        }

        if (v19)
        {
          v20 = v19[(BYTE4(v23) >> 5) + 3];
          v21 = &v19[12 * (BYTE4(v23) >> 5) + 104];
          if (v20)
          {
            v15 = v20;
            v16 = v21;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
      }

      return sub_10002F454(v15, v22, v23 / *((*a1)[1] + 36), v14, v16, 0, 0, v18, v17);
    }

    return v8;
  }

  if (a3 == 0x40000000)
  {
    LODWORD(v23) = *(a1 + 6);
    v13 = v23;
    v22 = a5;
    v12 = v23;
LABEL_14:
    if (v12 == v13)
    {
      v8 = 0;
    }

    else
    {
      v8 = 22;
    }

    goto LABEL_17;
  }

  if (a3 != 0x8000000)
  {
    goto LABEL_17;
  }

  v10 = *(a1 + 6);

  return sub_10001C564(v10, a5, a2);
}

uint64_t sub_10002EDA8(uint64_t **a1, void *__src, int a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = 22;
  if (a3 <= 0x7FFFFFF)
  {
    if (a3 == 0x80000000)
    {
      result = sub_100031300(*a1, a5, 0, 0, &v19);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (a3)
      {
        return result;
      }

      result = sub_10001F0D4(*a1, a1[1], a5, a4, &v19);
      if (result)
      {
        return result;
      }
    }

    v10 = *(a1 + 6);
    if (v20 != v10)
    {
      return 22;
    }

    goto LABEL_15;
  }

  if (a3 == 0x40000000)
  {
    v10 = *(a1 + 6);
    LODWORD(v20) = v10;
    v19 = a5;
LABEL_15:
    v11 = **a1;
    if ((v20 & 0x400000000) != 0)
    {
      v15 = a1[1];
      if ((WORD2(v20) & 0x700) == 0x100)
      {
        v13 = 4;
      }

      else
      {
        v13 = 0;
      }

      if ((WORD2(v20) & 0x700) == 0x100)
      {
        v14 = a5 ^ HIDWORD(v21) | a5 & 0xFFFFFFFF00000000 ^ (v21 << 32);
      }

      else
      {
        v14 = 0;
      }

      if (v15)
      {
        v16 = v15[(BYTE4(v20) >> 5) + 3];
        v17 = &v15[12 * (BYTE4(v20) >> 5) + 104];
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

    result = sub_10002F4BC(v11, v19, v10 / *((*a1)[1] + 36), __src, v12, v14, v13);
    if (!result)
    {
      v18 = a1[1];
      result = 0;
      if (v18)
      {
        *(v18 + 12) = 1;
      }
    }

    return result;
  }

  if (a3 == 0x8000000)
  {
    v9 = *(a1 + 6);

    return sub_10001C59C(v9, a5, __src);
  }

  return result;
}

uint64_t sub_10002EF64(uint64_t **a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v7 = a5;
  v28 = 0uLL;
  v29 = 0;
  if (a3 && a5)
  {
    return 22;
  }

  if (a3 && a3 != 0x40000000)
  {
    if (a3 != 0x8000000)
    {
      return 45;
    }

    result = sub_10001C3D8(*(a1 + 6), &v28, a2);
    if (!result)
    {
      *a6 = v28;
    }

    return result;
  }

  v13 = *a1;
  if (!(*a1)[3])
  {
    return 22;
  }

  v14 = a1[1];
  v15 = (*(a1 + 6) / *(*(v13 + 8) + 36));
  if (v14)
  {
    v16 = (*(v14[2].i64[1] + 264) & 1) == 0;
    if ((*(v14[2].i64[1] + 264) & 1) == 0 && !a3)
    {
      result = sub_100001D64(v13, v14, 0, v15, &v28);
      if (result)
      {
        return result;
      }

      v16 = 1;
      goto LABEL_28;
    }
  }

  else
  {
    v16 = 0;
  }

  if (*(a1 + 12) == 11)
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  result = sub_100001D64(v13, v14, v17, v15, &v28);
  if (result)
  {
    return result;
  }

  if (a3)
  {
    v7 = v28;
LABEL_24:
    *a6 = v7;
    if (!a2)
    {
      return 0;
    }

    if (*a2)
    {
      return 0;
    }

    v18 = malloc_type_malloc(*(a1 + 6), 0x9583098AuLL);
    *a2 = v18;
    if (v18)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

LABEL_28:
  if (!v7)
  {
    v19 = (*a1)[1];
    v7 = *(v19 + 88);
    *(v19 + 88) = v7 + 1;
  }

  DWORD2(v28) = *(a1 + 6);
  v20 = a1[1];
  if (v16)
  {
    v21 = HIDWORD(v28) | 4;
    v22 = *(v20 + 72);
    if (v22 && (*(v22 + 32) & 0x10) != 0)
    {
      v21 = HIDWORD(v28) | 0x14;
    }

    HIDWORD(v28) = v21 & 0xFFFFFF1F | (32 * (*(*(v20 + 40) + 1096) != 0));
  }

  v23 = *a1;
  v26 = v28;
  v27 = v29;
  result = sub_10001F1AC(v23, v20, v7, a4, &v26);
  if (!result)
  {
    result = sub_100030D18(*a1, v24, v25);
    if (!result)
    {
      goto LABEL_24;
    }
  }

  return result;
}

uint64_t sub_10002F164(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  memset(v18, 0, sizeof(v18));
  if (a2 != 0x8000000)
  {
    if ((a2 | 0x40000000) != 0x40000000)
    {
      return 45;
    }

    v8 = *a1;
    if (!*(*a1 + 24))
    {
      return 22;
    }

    v9 = *(a1 + 24);
    v10 = *(v8[1] + 36);
    if (a2)
    {
      v18[0] = a4;
    }

    else
    {
      LODWORD(result) = sub_10001F210(v8, *(a1 + 8), a4, a3, v18);
      if (result == 2)
      {
        sub_100045744("tried to remove oid %llu from the omap but it wasn't there\n", v11, v12, v13, v14, v15, v16, v17, v4);
        return 0;
      }

      if (result)
      {
        if (result == 17)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }

      v8 = *a1;
      v4 = v18[0];
    }

    return sub_100002C74(v8, *(a1 + 8), v4, v9 / v10);
  }

  v6 = *(a1 + 24);

  return sub_10001C500(v6, a4);
}

uint64_t sub_10002F278(int a1)
{
  v7 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v6.st_blksize = v2;
  *v6.st_qspare = v2;
  v6.st_birthtimespec = v2;
  *&v6.st_size = v2;
  v6.st_mtimespec = v2;
  v6.st_ctimespec = v2;
  *&v6.st_uid = v2;
  v6.st_atimespec = v2;
  *&v6.st_dev = v2;
  memset(&__b, 170, sizeof(__b));
  if (!ioctl(a1, 0x40046418uLL, &v7))
  {
    return v7;
  }

  if (!fstatfs(a1, &__b))
  {
    return __b.f_bsize;
  }

  if (!fstat(a1, &v6))
  {
    return v6.st_blksize;
  }

  v3 = __error();
  v4 = strerror(*v3);
  sub_10002B374("%s:%d: can't get the device block size (%s). assuming 512\n", "io_get_device_block_size", 57, v4);
  return 512;
}

uint64_t sub_10002F3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 72);
  v8 = *(v7 + 32);
  if (v8)
  {

    return v8();
  }

  else
  {
    v10 = (*(v7 + 24))();
    v11 = v10;
    v12 = *a6;
    if (*a6)
    {
      *(a6 + 96) = v10;
      v12(a6);
    }

    return v11;
  }
}

uint64_t sub_10002F454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a9)
  {
    v9 = *(*(a1 + 72) + 40);
    if (v9)
    {
      return v9();
    }

    else
    {
      return 45;
    }
  }

  else if (a6)
  {
    return sub_10002F3DC(a1, a2, a3, a4, a5, a7);
  }

  else
  {
    return (*(*(a1 + 72) + 24))();
  }
}

uint64_t sub_10002F4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = *(a1 + 72);
  if (!a7)
  {
    return (*(v7 + 64))();
  }

  v8 = *(v7 + 72);
  if (v8)
  {
    return v8();
  }

  else
  {
    return 45;
  }
}

uint64_t sub_10002F4F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 68);
  if (v3 && (v4 = *(a2 + 88)) != 0)
  {
    v5 = *(a2 + 24);
    v7 = *(a2 + 32);
    return sub_10001BF60((a1 + 212), v3, 5u, v5, *(a2 + 16), &v7, v4, 0, 0);
  }

  else
  {
    result = aio_error((a2 + 8));
    if (result == -1)
    {
      return *__error();
    }
  }

  return result;
}

uint64_t sub_10002F574(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a2)
  {
    *a2 = a1[22];
  }

  if (a3)
  {
    *a3 = a1[23];
  }

  if (a4)
  {
    *a4 = a1[24];
  }

  if (a5)
  {
    *a5 = a1[25];
  }

  return 0;
}

uint64_t sub_10002F5BC(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  if ((a9 & 0xFFFFFFFA) != 0 || (a8 != 0) == a9 < 4)
  {
    if ((a8 != 0) != a9 < 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 22;
    }

    if ((a9 & 0xFFFFFFFA) != 0)
    {
      v11 = 45;
    }

    else
    {
      v11 = v10;
    }

    sub_10002B374("%s:%d: failed to read blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_read_extended", 597, a2, a3, a9, v11, (a1 + 212));
    return v11;
  }

  else if (a6)
  {

    return sub_100030810(a1, a2, a3, a4, a5, a9, a7, a8);
  }

  else
  {

    return sub_10003045C(a1, a2, a3, a4, a5, a9, a8);
  }
}

uint64_t sub_10002F69C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  aiocblist = (a2 + 8);
  v5 = *(a1 + 68);
  if (v5 && (v6 = *(a2 + 88)) != 0)
  {
    v7 = *(a2 + 24);
    v17 = *(a2 + 32);
    v8 = sub_10001BF60((a1 + 212), v5, 3u, v7, *(a2 + 16), &v17, v6, 0, 0);
    if (!v8)
    {
      if (v17 == *(a2 + 32))
      {
        v8 = 0;
      }

      else
      {
        v8 = 5;
      }
    }
  }

  else if (aio_suspend(&aiocblist, 1, 0) || (v11 = aio_return(v4), v11 == -1))
  {
    v8 = *__error();
  }

  else
  {
    v12 = v11;
    if (v11 >= *(a2 + 32))
    {
      v8 = 0;
    }

    else
    {
      v8 = 5;
    }

    v13 = *(a2 + 88);
    if (v13)
    {
      v14 = *(v13 + 72);
      if (v14)
      {
        v15 = *(a1 + 84);
        v16 = *(a2 + 24);
        *(v14 + 8) = *(a2 + 16) / v15;
        sub_10000D37C(v13, v16, v16, v12, *(a2 + 16), v15, 0);
      }
    }
  }

  v9 = *a2;
  if (*a2)
  {
    *(a2 + 96) = v8;
    v9(a2);
  }

  return v8;
}

uint64_t sub_10002F7C0(uint64_t a1, unint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if ((a7 & 0xFFFFFFFA) != 0 || (a6 != 0) == a7 < 4)
  {
    if ((a6 != 0) != a7 < 4)
    {
      v9 = 0;
    }

    else
    {
      v9 = 22;
    }

    if ((a7 & 0xFFFFFFFA) != 0)
    {
      v10 = 45;
    }

    else
    {
      v10 = v9;
    }

    sub_10002B374("%s:%d: failed to write blknum 0x%llx size %zu flags 0x%x error %d dev_name = %s\n", "fd_dev_write_extended", 845, a2, a3, a7, v10, (a1 + 212));
    return v10;
  }

  else
  {

    return sub_10003097C(a1, a2, a3, a4, a5, a7, a6);
  }
}

uint64_t sub_10002F86C(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 36);
    if (v5)
    {
      result = sub_1000306D4(a1, *(a1 + 40), v5, v4, *(a1 + 48), *(a1 + 56) & 1, 0);
      if (result)
      {
        return result;
      }

      *(a1 + 36) = 0;
    }
  }

  fsync(*a1);
  v7 = *(a1 + 4);
  if ((v7 & 0x80000000) == 0)
  {
    fsync(v7);
  }

  if (!a2 && (*(a1 + 88) & 2) != 0)
  {
    v9 = ioctl(*a1, 0x80186416uLL, &v10, 0, 0, 2);
  }

  else
  {
    v8 = *a1;
    if ((*(a1 + 64) & 0xF000) == 0x8000)
    {
      v9 = fcntl(v8, 51, 0);
    }

    else
    {
      v9 = ioctl(v8, 0x20006416uLL, 0, v10, v11);
    }
  }

  if (v9 == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002F974(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  v4 = *(a1 + 112);
  v5 = v4 > a2;
  v6 = v4 - a2;
  if (!v5 || v6 < a3)
  {
    return 6;
  }

  v10 = *(a1 + 192);
  if (!v10)
  {
    return 45;
  }

  if (a4 != 1)
  {
    return 22;
  }

  v13 = *(a1 + 200);
  if (v13 >= *(a1 + 204) || *(a1 + 208) != 1)
  {
    result = sub_10002FA34(a1);
    if (result)
    {
      return result;
    }

    v13 = *(a1 + 200);
    v10 = *(a1 + 192);
  }

  result = 0;
  *(a1 + 200) = v13 + 1;
  v14 = *(a1 + 84);
  v15 = (v10 + 16 * v13);
  *v15 = v14 * a2;
  v15[1] = v14 * a3;
  *(a1 + 208) = 1;
  return result;
}

uint64_t sub_10002FA34(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (!v1)
  {
    return 45;
  }

  v3 = *(a1 + 200);
  if (!v3)
  {
    return 0;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v7 = v1;
  v4 = *(a1 + 208);
  v8 = v3;
  v9 = v4;
  if (ioctl(*a1, 0x80406459uLL, &v7) == -1)
  {
    v5 = *__error();
    if (v5)
    {
      sub_10002B374("%s:%d: hinting %d blocks from hint_list failed w/: %d (entry %lld:%lld ; %lld:%lld)\n", "fd_dev_hint_flush", 936, *(a1 + 200), v5, **(a1 + 192), *(*(a1 + 192) + 8), *(*(a1 + 192) + 16), *(*(a1 + 192) + 24));
    }
  }

  else
  {
    v5 = 0;
  }

  bzero(*(a1 + 192), 16 * *(a1 + 204));
  *(a1 + 200) = 0;
  return v5;
}

uint64_t sub_10002FB18(uint64_t a1)
{
  v2 = (a1 + 212);
  v3 = strlen((a1 + 212));
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v5 = *(a1 + 36);
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    sub_10002B400(v4, (*(a1 + 84) * *(a1 + 32)));
    *(a1 + 24) = 0;
    goto LABEL_10;
  }

  v6 = sub_1000306D4(a1, *(a1 + 40), v5, v4, *(a1 + 48), *(a1 + 56) & 1, 0);
  v7 = v6;
  if (v6)
  {
    sub_10002B374("%s:%d: Hit an error flushing the cache, %d dev_name = %s\n", "fd_dev_close", 333, v6, v2);
  }

  *(a1 + 36) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 192))
  {
    v8 = sub_10002FA34(a1);
    v7 = v8;
    if (v8)
    {
      sub_10002B374("%s:%d: Hit an error flushing the hint list, %d dev_name = %s\n", "fd_dev_close", 346, v8, v2);
    }

    sub_10002B400(*(a1 + 192), 16 * *(a1 + 204));
    *(a1 + 192) = 0;
  }

  if (close(*a1))
  {
    v7 = *__error();
  }

  v9 = *(a1 + 4);
  if ((v9 & 0x80000000) == 0 && close(v9))
  {
    v7 = *__error();
  }

  v10 = *(a1 + 8);
  if ((v10 & 0x80000000) == 0 && close(v10))
  {
    v7 = *__error();
  }

  sub_10001C070(*(a1 + 68));
  sub_10002B400(a1, v3 + 216);
  return v7;
}

uint64_t sub_10002FC90(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112) * *(a1 + 84) / a2;
  *(a1 + 84) = a2;
  *(a1 + 112) = v2;
  return 0;
}

uint64_t sub_10002FCDC(int a1, void *a2)
{
  memset(__b, 170, sizeof(__b));
  *a2 = 0;
  if (fcntl(a1, 50, __b))
  {
    LOBYTE(__b[0]) = 0;
  }

  if (__b[0] ^ 0x7665642F | LOBYTE(__b[1]) ^ 0x2F)
  {
    v4 = 0;
  }

  else
  {
    v4 = 5;
  }

  v5 = strlen(__b + v4);
  v6 = sub_10002B3C4(1uLL, v5 + 216, 0xC2501DC2uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *(v6 + 4) = -1;
  *v6 = a1;
  strlcpy(v6 + 212, __b + v4, v5 + 1);
  v8 = sub_10002FE18(v7);
  if (v8)
  {
    sub_10002B400(v7, v5 + 216);
  }

  else
  {
    *a2 = v7;
  }

  return v8;
}

uint64_t sub_10002FE18(uint64_t a1)
{
  v20 = -1431655766;
  v18 = -1431655766;
  v19 = -1431655766;
  v17 = -1431655766;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v2;
  *v16.st_qspare = v2;
  v16.st_birthtimespec = v2;
  *&v16.st_size = v2;
  v16.st_mtimespec = v2;
  v16.st_ctimespec = v2;
  *&v16.st_uid = v2;
  v16.st_atimespec = v2;
  *&v16.st_dev = v2;
  if (fstat(*a1, &v16))
  {
    v3 = __error();
    v4 = *v3;
    sub_10002B374("%s:%d: Couldn't fstat dev_fd (%d), err %d dev_name = %s\n", "dev_init_common", 1035, *a1, *v3, (a1 + 212));
  }

  else
  {
    *(a1 + 72) = off_10007C5F8;
    v5 = sub_10002F278(*a1);
    *(a1 + 80) = v5;
    *(a1 + 84) = v5;
    v6 = *a1;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v7;
    *v21.st_qspare = v7;
    v21.st_birthtimespec = v7;
    *&v21.st_size = v7;
    v21.st_mtimespec = v7;
    v21.st_ctimespec = v7;
    *&v21.st_uid = v7;
    v21.st_atimespec = v7;
    *&v21.st_dev = v7;
    if (ioctl(v6, 0x40086419uLL, &v22))
    {
      if (fstat(v6, &v21))
      {
        v8 = __error();
        v9 = strerror(*v8);
        sub_10002B374("%s:%d: can't get block count (%s)\n", "io_get_num_device_blocks", 78, v9);
        v10 = 0;
      }

      else
      {
        st_size = v21.st_size;
        v10 = st_size / sub_10002F278(v6);
      }
    }

    else
    {
      v10 = v22;
    }

    *(a1 + 112) = v10;
    sub_10002DA60(*a1, &v20, &v19, &v18, &v17);
    v12 = v19;
    *(a1 + 88) = v20;
    *(a1 + 92) = v12;
    v13 = v17;
    *(a1 + 96) = v18;
    *(a1 + 100) = v13;
    *(a1 + 64) = v16.st_mode;
    *(a1 + 104) = 0;
    v14 = *(a1 + 80) >> 4;
    *(a1 + 204) = *(a1 + 80) >> 4;
    v4 = 0;
    *(a1 + 192) = sub_10002B3C4(v14, 0x10uLL, 0x1000040451B5BE8uLL);
    *(a1 + 200) = 0;
  }

  return v4;
}

uint64_t sub_10002FFDC(char *a1, int a2, uint64_t *a3)
{
  if (!strncmp(a1, "/dev/", 5uLL))
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  v7 = &a1[v6];
  v8 = strlen(&a1[v6]);
  *a3 = 0;
  v9 = sub_10002B3C4(1uLL, v8 + 216, 0xB22E4C5DuLL);
  if (v9)
  {
    v10 = v9;
    v11.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v11.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v37.st_blksize = v11;
    *v37.st_qspare = v11;
    v37.st_birthtimespec = v11;
    *&v37.st_size = v11;
    v37.st_mtimespec = v11;
    v37.st_ctimespec = v11;
    *&v37.st_uid = v11;
    v37.st_atimespec = v11;
    *&v37.st_dev = v11;
    v9[17] = 0;
    v12 = v9 + 17;
    if (stat(a1, &v37) || (v37.st_mode & 0xF000) != 0x4000)
    {
      v15 = sub_10002DDF8(a1, 0);
      if (v15)
      {
        v16 = v15;
        *(v10 + 8) = -1;
        v17 = open(a1, a2 & 0xFFFFFFCF | 0x10);
        *(v10 + 4) = v17;
        if (v17 < 0)
        {
          v25 = __error();
          v14 = *v25;
          v26 = strerror(*v25);
          sub_10002B374("%s:%d: failed to open volume device %s: %s\n", "dev_init", 1163, a1, v26);
        }

        else
        {
          v18 = open(v16, a2 & 0xFFFFFFCF | 0x10);
          *v10 = v18;
          if ((v18 & 0x80000000) == 0)
          {
            if (sub_10002DF68(v7))
            {
              v19 = sub_10001BEF4(v7, v12);
              if (v19)
              {
                v14 = v19;
                v20 = strerror(v19);
                sub_10002B374("%s:%d: failed to open connection for multikey crypto i/o on device %s: %s\n", "dev_init", 1177, v16, v20);
                close(*v10);
                close(*(v10 + 4));
LABEL_35:
                free(v16);
LABEL_42:
                sub_10002B400(v10, v8 + 216);
                return v14;
              }
            }

            goto LABEL_33;
          }

          v27 = __error();
          v14 = *v27;
          v28 = strerror(*v27);
          sub_10002B374("%s:%d: failed to open container device %s: %s\n", "dev_init", 1169, v16, v28);
          close(*(v10 + 4));
        }
      }

      else
      {
        *(v10 + 4) = -1;
        v21 = open(a1, a2);
        *v10 = v21;
        if ((v21 & 0x80000000) == 0)
        {
LABEL_32:
          v16 = 0;
LABEL_33:
          v33 = sub_10002FE18(v10);
          if (v33)
          {
            v14 = v33;
            goto LABEL_35;
          }

          strlcpy((v10 + 212), v7, v8 + 1);
          free(v16);
LABEL_43:
          v14 = 0;
          *a3 = v10;
          return v14;
        }

        v22 = 30;
        while (*__error() == 16 && v22 != 0)
        {
          sub_10002B374("%s:%d: open %s hit EBUSY, attempts remaining: %u dev_name = %s\n", "dev_init", 1189, a1, v22, v7);
          sleep(1u);
          v24 = open(a1, a2);
          *v10 = v24;
          --v22;
          if ((v24 & 0x80000000) == 0)
          {
            v16 = 0;
            goto LABEL_33;
          }
        }

        v16 = 0;
        v14 = *__error();
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      memset(v39, 170, sizeof(v39));
      memset(__str, 170, sizeof(__str));
      snprintf(__b, 0x400uLL, "%s/apfs", a1);
      snprintf(__str, 0x400uLL, "%s/apfs_data", a1);
      snprintf(v39, 0x400uLL, "%s/nx", a1);
      v13 = open(__b, a2);
      *(v10 + 4) = v13;
      if (v13 < 0)
      {
        v14 = *__error();
      }

      else
      {
        v14 = 0;
      }

      v29 = open(__str, a2);
      *(v10 + 8) = v29;
      if (v29 < 0)
      {
        v14 = *__error();
      }

      v30 = open(v39, a2);
      v31 = v30;
      *v10 = v30;
      v32 = *(v10 + 4);
      if ((v32 & 0x80000000) == 0 && (*(v10 + 8) & 0x80000000) == 0 && (v30 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      if (!v14)
      {
        v14 = *__error();
        v31 = *v10;
        v32 = *(v10 + 4);
      }

      v34 = *(v10 + 8);
      v35 = strerror(v14);
      sub_10002B374("%s:%d: failed to open apfs/nx special devices ['%s'(%d) / '%s'(%d) / '%s'(%d)] - err %d (%s) dev_name = '%s'\n", "dev_init", 1150, __b, v32, __str, v34, v39, v31, v14, v35, v7);
      close(*v10);
      close(*(v10 + 4));
      close(*(v10 + 8));
      v16 = 0;
    }

    free(v16);
    if (v14)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  return 12;
}

uint64_t sub_10003045C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = sub_100030640(a1, a2, a3);
  if (!v14)
  {
    v15 = *(a1 + 84);
    if ((a2 & 0x8000000000000000) == 0 && (v16 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v15)) && (v17 = a2 * v15, ((a2 * v15) & 0x8000000000000000) == 0) && (v18 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v15)))
    {
      v20 = a3 * v15;
      if (a5 && (v21 = *(a1 + 68)) != 0)
      {
        v22 = a7 == 0;
        if ((a6 & 4) != 0)
        {
          v23 = 0;
        }

        else
        {
          v23 = v17;
        }

        if ((a6 & 4) != 0)
        {
          v22 = 0;
        }

        if (a7)
        {
          v24 = a7;
        }

        else
        {
          v24 = v23;
        }

        v32 = v20;
        v25 = sub_10001BF60((a1 + 212), v21, 1u, a4, v17, &v32, a5, v24, v22);
        if (v32 == v20)
        {
          v26 = 0;
        }

        else
        {
          v26 = 5;
        }

        if (v25)
        {
          return v25;
        }

        else
        {
          return v26;
        }
      }

      else
      {
        if (!a5 || (v27 = *(a1 + 4), v27 < 0))
        {
          v27 = *a1;
        }

        v28 = pread(v27, a4, a3 * v15, a2 * v15);
        v29 = v28;
        if (v28 < 0)
        {
          v30 = __error();
          v14 = *v30;
          if (v14 == 6)
          {
            v14 = 6;
          }

          else
          {
            sub_10002B374("%s:%d: blknum 0x%llx size %zu, error %d dev_name = %s\n", "fd_dev_read_helper", 484, a2, a3, *v30, (a1 + 212));
          }
        }

        else if (v28 == v20)
        {
          v14 = 0;
        }

        else
        {
          v14 = 5;
        }

        if (a5)
        {
          if (v29 >= 1)
          {
            v31 = *(a5 + 72);
            if (v31)
            {
              if (a6)
              {
                *(v31 + 8) = a2;
              }

              sub_10000D37C(a5, a4, a4, v29, v17, *(a1 + 84), 0);
            }
          }
        }
      }
    }

    else
    {
      sub_10002B374("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "fd_dev_read_helper", 448, a2, a3, *(a1 + 84), (a1 + 212));
      return 22;
    }
  }

  return v14;
}

uint64_t sub_100030640(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 36);
    if (v7)
    {
      v8 = *(a1 + 40);
      if (a3 + a2 > v8 && v8 + v7 > a2)
      {
        result = sub_1000306D4(a1, v8, v7, v6, *(a1 + 48), *(a1 + 56) & 1, 0);
        if (result)
        {
          return result;
        }

        *(a1 + 36) = 0;
      }
    }
  }

  v10 = *(a1 + 112);
  if (v10 - a2 >= a3 && v10 > a2)
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1000306D4(uint64_t a1, unint64_t a2, unint64_t a3, void *__buf, uint64_t a5, char a6, uint64_t a7)
{
  v9 = *(a1 + 112);
  v10 = v9 > a2;
  v11 = v9 - a2;
  if (!v10 || v11 < a3)
  {
    return 6;
  }

  v27[3] = v7;
  v27[4] = v8;
  v14 = *(a1 + 84);
  if ((a2 & 0x8000000000000000) == 0 && (v15 = (a2 * *(a1 + 84)) >> 64, is_mul_ok(a2, v14)) && (v17 = a2 * v14, ((a2 * v14) & 0x8000000000000000) == 0) && (v18 = (a3 * *(a1 + 84)) >> 64, is_mul_ok(a3, v14)))
  {
    v19 = a3 * v14;
    if (a5 && (v20 = *(a1 + 68)) != 0)
    {
      v21 = a7 == 0;
      if ((a6 & 4) != 0)
      {
        v22 = 0;
      }

      else
      {
        v22 = v17;
      }

      if ((a6 & 4) != 0)
      {
        v21 = 0;
      }

      if (a7)
      {
        v23 = a7;
      }

      else
      {
        v23 = v22;
      }

      v27[0] = v19;
      LODWORD(result) = sub_10001BF60((a1 + 212), v20, 4u, __buf, v17, v27, a5, v23, v21);
      if (v27[0] == v19)
      {
        v24 = 0;
      }

      else
      {
        v24 = 5;
      }

      if (result)
      {
        return result;
      }

      else
      {
        return v24;
      }
    }

    else
    {
      if (!a5 || (v25 = *(a1 + 4), v25 < 0))
      {
        v25 = *a1;
      }

      v26 = pwrite(v25, __buf, a3 * v14, v17);
      if (v26 < 0)
      {
        return *__error();
      }

      else if (v26 == v19)
      {
        return 0;
      }

      else
      {
        return 5;
      }
    }
  }

  else
  {
    sub_10002B374("%s:%d: blknum %lld size %zu blksize %u invalid, dev_name = %s\n", "_fd_dev_write", 702, a2, a3, *(a1 + 84), (a1 + 212));
    return 22;
  }
}

uint64_t sub_100030810(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_100030640(a1, a2, a3);
  if (v16)
  {
    goto LABEL_2;
  }

  *(a7 + 8) = 0u;
  v19 = (a7 + 8);
  *(a7 + 88) = a5;
  *(a7 + 24) = 0u;
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 72) = 0u;
  v20 = *(a1 + 84);
  v21 = v20 * a2;
  *(a7 + 16) = v20 * a2;
  *(a7 + 24) = a4;
  v22 = v20 * a3;
  *(a7 + 32) = v22;
  if (!a5 || (v23 = *(a1 + 68)) == 0)
  {
    if (a5)
    {
      v27 = *(a1 + 4);
      if (v27 < 0)
      {
        v27 = *a1;
      }

      v19->aio_fildes = v27;
      if (a6)
      {
        v28 = *(a5 + 72);
        if (v28)
        {
          *(v28 + 8) = a2;
        }
      }
    }

    else
    {
      v19->aio_fildes = *a1;
    }

    if (!aio_read(v19))
    {
      return 0;
    }

    if (*__error() == 35)
    {
      v16 = 16;
    }

    else
    {
      v16 = *__error();
      if (!v16)
      {
        return v16;
      }
    }

    goto LABEL_2;
  }

  v24 = (a6 & 4) == 0;
  if ((a6 & 4) != 0)
  {
    v25 = 0;
  }

  else
  {
    v25 = v21;
  }

  if (a8)
  {
    v26 = a8;
  }

  else
  {
    v26 = v25;
  }

  if (a8)
  {
    v24 = 0;
  }

  v29 = v22;
  v16 = sub_10001BF60((a1 + 212), v23, 2u, a4, v21, &v29, a5, v26, v24);
  if (v16)
  {
LABEL_2:
    v17 = *a7;
    if (*a7)
    {
      *(a7 + 96) = v16;
      v17(a7);
    }
  }

  return v16;
}

uint64_t sub_10003097C(uint64_t a1, unint64_t a2, unint64_t a3, char *__buf, uint64_t a5, int a6, uint64_t a7)
{
  if (*(a1 + 60) && !*(a1 + 24))
  {
    v14 = *(a1 + 84);
    v15 = v14 <= 0x100000 ? 0x100000 / v14 : 1;
    *(a1 + 32) = v15;
    v16 = sub_10002B43C(v15 * v14, 0x835B50A5uLL);
    *(a1 + 24) = v16;
    *(a1 + 36) = 0;
    if (!v16)
    {
      return 12;
    }
  }

  if (!a5)
  {
    if (!*(a1 + 24))
    {
      goto LABEL_45;
    }

LABEL_23:
    if (!a3)
    {
      return 0;
    }

    v26 = *(a1 + 36);
    while (1)
    {
      while (1)
      {
        v27 = *(a1 + 32) - v26;
        v28 = a3 <= v27 ? a3 : v27;
        if ((a6 & 4) != 0 || ((*(a1 + 56) ^ a6) & 1) != 0 || a2 != *(a1 + 40) + v26)
        {
          break;
        }

        if (*(a1 + 48) != a5 || v28 == 0)
        {
          break;
        }

        v31 = *(a1 + 24);
        v32 = *(a1 + 84);
        v33 = v32 * v26;
        if (a5 && *(a5 + 72))
        {
          sub_10000D37C(a5, __buf, (v31 + v33), (v32 * v28), a2 * v32, v32, 1);
          *(*(a5 + 72) + 8) += v28;
        }

        else
        {
          memcpy((v31 + v33), __buf, (v32 * v28));
        }

        v26 = *(a1 + 36) + v28;
        *(a1 + 36) = v26;
        a2 += v28;
        a3 -= v28;
        __buf += (*(a1 + 84) * v28);
        if (!a3)
        {
          return 0;
        }
      }

      if (v26)
      {
        v30 = sub_1000306D4(a1, *(a1 + 40), v26, *(a1 + 24), *(a1 + 48), *(a1 + 56) & 1, a7);
        if (v30)
        {
          break;
        }
      }

      v26 = 0;
      *(a1 + 36) = 0;
      *(a1 + 40) = a2;
      *(a1 + 48) = a5;
      *(a1 + 56) = a6;
    }

    return v30;
  }

  v17 = *(a5 + 72);
  if ((a6 & 1) != 0 && v17)
  {
    *(v17 + 8) = a2;
  }

  if (*(a1 + 24))
  {
    goto LABEL_23;
  }

  if (v17)
  {
    v18 = sub_10002B43C(*(a1 + 84), 0x4C8514E4uLL);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 84);
      if (a3)
      {
        v21 = a3 - 1;
        do
        {
          sub_10000D37C(a5, __buf, v19, v20, a2 * v20, v20, 1);
          ++*(*(a5 + 72) + 8);
          v22 = sub_1000306D4(a1, a2, 1uLL, v19, a5, a6, a7);
          v23 = v22;
          v20 = *(a1 + 84);
          v25 = v21-- != 0;
          if (v22)
          {
            break;
          }

          ++a2;
          __buf += v20;
        }

        while (v25);
      }

      else
      {
        v23 = 0;
      }

      sub_10002B400(v19, v20);
      return v23;
    }

    return 12;
  }

LABEL_45:

  return sub_1000306D4(a1, a2, a3, __buf, a5, a6, a7);
}

uint64_t sub_100030C54(uint64_t a1, _DWORD *a2, int a3, _DWORD *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 4 && a5 == 4)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100030C88(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t sub_100030CBC(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_100030D18(uint64_t *a1, double a2, int8x16_t a3)
{
  v4 = a1[1];
  v5 = *(v4 + 36);
  v13.i64[0] = 0;
  v14 = 0;
  v13.i64[1] = v5;
  v6 = *(v4 + 104);
  v7 = (*(v4 + 140) + *(v4 + 136) - 1) % (v6 & 0x7FFFFFFFu);
  v8 = *(v4 + 112);
  if (v6 < 0)
  {
    result = sub_100031504(a1, v8, v7, &v13, 0);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v13.i64[0] = v8 + v7;
  }

  v11 = v13;
  v12 = v14;
  result = sub_100026A10(a1, 0, v4, &v11, v13, a3);
  if (!result)
  {
    v13.i64[0] = 0;
    v11 = v13;
    v12 = v14;
    return sub_100026A10(a1, 0, v4, &v11, v13, v10);
  }

  return result;
}

uint64_t sub_100030DE8(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return sub_100031504(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t sub_100030E2C(uint64_t *a1, int a2, int a3, size_t size, uint64_t a5, void *a6, uint64_t a7)
{
  v7 = a1[1];
  v8 = *(v7 + 140);
  v9 = *(v7 + 148);
  v10 = *(v7 + 36);
  v74 = 0;
  v72.i64[0] = 0;
  v73 = 0;
  v72.i64[1] = v10;
  v11 = size / v10;
  if (size % v10)
  {
    return 22;
  }

  v16 = size;
  v69 = v9;
  v20 = malloc_type_calloc(1uLL, size, 0x90A0C383uLL);
  if (!v20)
  {
    return 12;
  }

  v21 = (*(v7 + 140) + *(v7 + 136) - 2) % (*(v7 + 104) & 0x7FFFFFFFu);
  v22 = a1[1];
  v23 = *(v22 + 104);
  v68 = v20;
  v67 = v8;
  if ((v23 & 0x7FFFFFFFu) <= v21)
  {
    v12 = 22;
    goto LABEL_29;
  }

  v24 = *(v22 + 112);
  if (v23 < 0)
  {
    v26 = sub_100031504(a1, v24, v21, &v72, 0);
    if (v26)
    {
      goto LABEL_22;
    }

    v65 = a3;
    v25 = v72.i64[0];
  }

  else
  {
    v65 = a3;
    v25 = v24 + v21;
    v72.i64[0] = v24 + v21;
  }

  v26 = sub_100025548(a1, 0, 0x40000000, v25, 0, 0, 12, 0, &v74, 0, 0);
  if (v26)
  {
LABEL_22:
    v12 = v26;
    goto LABEL_29;
  }

  v64 = v25;
  v29 = v74;
  if (*(v74 + 9) >= ((v10 - 40) / 0x28))
  {
    v63 = v74;
    v60 = v72.i32[3];
    v61 = v72.i32[2];
    v46 = v73;
    v74 = 0;
    v47 = sub_100030DE8(a1, (*(v7 + 140) + *(v7 + 136) - 1) % (*(v7 + 104) & 0x7FFFFFFFu), &v72);
    if (v47)
    {
      v12 = v47;
    }

    else
    {
      v59 = v46;
      v29 = malloc_type_calloc(1uLL, v10, 0x7433E636uLL);
      v74 = v29;
      if (v29)
      {
        v29[1] = v72.i64[0];
        v33 = a1[1];
        v29[2] = *(v33 + 16);
        v27.i64[0] = 1073741836;
        v29[3] = 1073741836;
        *(v29 + 8) |= 1u;
        v35 = v63;
        *(v63 + 8) &= ~1u;
        v48 = *(v7 + 140);
        v49 = *(v7 + 104) & 0x7FFFFFFF;
        v50 = (*(v7 + 136) + v48) % v49;
        *(v7 + 140) = v48 + 1;
        if (*(v7 + 128) == v50)
        {
          *(v7 + 128) = (v49 + v50 + 1) % v49;
        }

        v30 = v64;
        v31 = v60;
        v32 = v59;
        v34 = v61;
        goto LABEL_11;
      }

      v12 = 12;
    }

    v35 = v63;
    goto LABEL_28;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = a1[1];
  v34 = v10;
  v35 = 0;
LABEL_11:
  v36 = a2 | 0x80000000;
  v37 = &v29[5 * *(v29 + 9) + 5];
  *v37 = v36;
  *(v37 + 4) = v65;
  *(v37 + 8) = v16;
  *(v37 + 16) = a5;
  v38 = *(v7 + 88);
  *(v7 + 88) = v38 + 1;
  *(v37 + 24) = v38;
  LODWORD(v37) = *(v7 + 148);
  v39 = (*(v7 + 144) + v37) % (*(v7 + 108) & 0x7FFFFFFFu);
  *(v7 + 148) = v11 + v37;
  v40 = *(v33 + 108);
  if ((v40 & 0x7FFFFFFFu) > v39)
  {
    v41 = &v29[5 * *(v29 + 9) + 5];
    v42 = *(v33 + 120);
    if (v40 < 0)
    {
      v62 = v34;
      v51 = v35;
      v52 = v31;
      v53 = v32;
      v54 = sub_100031504(a1, v42, v39, (v41 + 32), 0);
      v34 = v62;
      v32 = v53;
      v31 = v52;
      v35 = v51;
      if (v54)
      {
        v12 = v54;
        if (!v51)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      *(v41 + 32) = v42 + v39;
    }

    if (*(v7 + 132) == v39)
    {
      *(v7 + 132) = (v39 + (*(v7 + 108) & 0x7FFFFFFF) + 1) % (*(v7 + 108) & 0x7FFFFFFFu);
    }

    v43 = v74;
    ++*(v74 + 9);
    if (v35)
    {
      v70.i64[0] = v30;
      v70.i64[1] = __PAIR64__(v31, v34);
      v71 = v32;
      v44 = v35;
      v45 = sub_100026A10(a1, 0, v35, &v70, v27, v28);
      if (v45)
      {
        v12 = v45;
        v35 = v44;
LABEL_28:
        free(v35);
        goto LABEL_29;
      }

      v43 = v74;
    }

    else
    {
      v44 = 0;
    }

    v70 = v72;
    v71 = v73;
    v55 = sub_100026A10(a1, 0, v43, &v70, v72, v28);
    if (v55 || (v55 = sub_100030D18(a1, v56, v57), v55))
    {
      v12 = v55;
      v35 = v44;
      if (!v44)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v58 = v74;
      v35 = v44;
      if (a7)
      {
        *a7 = v74[5 * (*(v74 + 9) - 1) + 9];
        *(a7 + 8) = v16;
        *(a7 + 12) = 0;
        *(a7 + 16) = 0;
      }

      v12 = 0;
      v68[1] = v58[5 * (*(v58 + 9) - 1) + 8];
      v68[2] = *(v7 + 16);
      *(v68 + 6) = v36;
      *(v68 + 7) = v65;
      *a6 = v68;
      if (!v44)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_28;
  }

  v12 = 22;
  if (v35)
  {
    goto LABEL_28;
  }

LABEL_29:
  if (v74)
  {
    free(v74);
  }

  if (v12)
  {
    free(v68);
    *(v7 + 140) = v67;
    *(v7 + 148) = v69;
  }

  return v12;
}

uint64_t sub_100031300(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v10 = a1[1];
  v11 = v10[9];
  v12 = malloc_type_malloc(v11, 0x96FA381CuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  if (v10[35] == 1)
  {
    v14 = 0;
    v15 = 0;
LABEL_4:
    v16 = 2 * (v15 == v14);
  }

  else
  {
    v15 = 0;
    v28 = 0xAAAAAAAAAAAAAAAALL;
    v17 = (v11 - 40) / 0x28;
    while (1)
    {
      v18 = (v10[34] + v15) % (v10[26] & 0x7FFFFFFF);
      v19 = a1[1];
      v20 = *(v19 + 104);
      if ((v20 & 0x7FFFFFFFu) <= v18)
      {
        break;
      }

      v21 = *(v19 + 112);
      if (v20 < 0)
      {
        v22 = sub_100031504(a1, v21, v18, &v28, 0);
        if (v22)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v28 = v21 + v18;
      }

      v22 = sub_10002F3CC(*a1);
      if (v22)
      {
LABEL_27:
        v16 = v22;
        goto LABEL_29;
      }

      if (v13[6] != 1073741836)
      {
        goto LABEL_26;
      }

      v23 = v13[9];
      if (v17 < v23)
      {
        goto LABEL_26;
      }

      if (v23)
      {
        v24 = 0;
        v25 = v13 + 18;
        while (*(v25 - 1) != a2)
        {
          ++v24;
          v25 += 5;
          if (v23 == v24)
          {
            goto LABEL_18;
          }
        }

        if (a4 && *(v25 - 8) != (a3 | a4 | 0x80000000))
        {
LABEL_26:
          v16 = 92;
          goto LABEL_29;
        }

        if (a5)
        {
          *a5 = *v25;
          *(a5 + 8) = *(v25 - 6);
          LODWORD(v23) = v13[9];
        }

        v26 = v10[35];
        if (v23 > v24)
        {
LABEL_25:
          v14 = v26 - 1;
          goto LABEL_4;
        }
      }

      else
      {
LABEL_18:
        v26 = v10[35];
      }

      if (++v15 >= v26 - 1)
      {
        goto LABEL_25;
      }
    }

    v16 = 22;
  }

LABEL_29:
  free(v13);
  return v16;
}

uint64_t sub_100031504(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v8;
  v16[3] = v8;
  v16[0] = v8;
  v16[1] = v8;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = a3;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v11 = 16;
  v12 = 8;
  result = sub_100039748(v16, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, a2, sub_100030C88);
  if (!result)
  {
    result = sub_1000397B8(v16, 0, 0xFFFFFFFF, &v15, &v12, 8u, &v13, &v11);
    if (!result)
    {
      v10 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        return 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        result = 0;
        if (a5)
        {
          *a5 = v10;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100031608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void, void, uint64_t), uint64_t a4)
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[2] = v6;
  v12[3] = v6;
  v12[0] = v6;
  v12[1] = v6;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v6;
  v10[3] = v6;
  v10[0] = v6;
  v10[1] = v6;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = 0;
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100039748(v12, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, a2, sub_100030C88);
  if (!result)
  {
    result = sub_100039F68(v10, v12, 0, &v9, 8u, 8u, v8, 16);
    if (!result)
    {
      return sub_10002C648(v10, a3, a4, 0);
    }
  }

  return result;
}

uint64_t sub_1000316E8(int8x16_t *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v40 = 0;
  v38 = 0uLL;
  v39 = 0;
  v36 = 0uLL;
  v37 = 0;
  v14 = a1[1].i64[0];
  if (*(v14 + 48))
  {
    v15 = sub_100025548(a1->i64, 0, 0x80000000, *(v14 + 56), 0, 0, 18, 0, &v40, &v38, 0);
    if (v15)
    {
LABEL_3:
      v17 = v15;
      goto LABEL_24;
    }
  }

  else
  {
    v15 = sub_1000319A8(a1->i64, 0, &v40, &v38);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v18 = v40;
  if ((*(v40 + 11) - *(v40 + 12)) > 1)
  {
    v20 = v40;
    v18 = 0;
  }

  else
  {
    v36 = v38;
    v37 = v39;
    v40 = 0;
    v19 = sub_1000319A8(a1->i64, v18, &v40, &v38);
    if (v19)
    {
LABEL_19:
      v17 = v19;
LABEL_23:
      free(v18);
      goto LABEL_24;
    }

    v20 = v40;
  }

  v22 = *(v20 + 14);
  v21 = *(v20 + 15);
  v23 = &v20[5 * v21 + 8];
  *(v20 + 15) = *v23;
  if (v22 != -1)
  {
    LODWORD(v20[5 * v22 + 8]) = v21;
  }

  v24 = (8 * a7) & 0x10;
  if (*(v20 + 13) == -1)
  {
    *(v20 + 13) = v21;
  }

  *(v20 + 14) = v21;
  ++*(v20 + 12);
  *(v23 + 8) = a2;
  *(v23 + 12) = a3;
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *v23 = -1;
  *(v23 + 4) = v24 | 5;
  v25 = v40;
  v26 = a1[1].i64[0];
  v27 = *(v26 + 32);
  *(v26 + 32) = v27 + 1;
  v29 = *(v25 + 14);
  v28 = *(v25 + 15);
  v30 = &v25[5 * v28 + 8];
  *(v25 + 15) = *v30;
  if (v29 != -1)
  {
    LODWORD(v25[5 * v29 + 8]) = v28;
  }

  if (*(v25 + 13) == -1)
  {
    *(v25 + 13) = v28;
  }

  *(v25 + 14) = v28;
  ++*(v25 + 12);
  *(v30 + 8) = a2;
  *(v30 + 12) = a3;
  *(v30 + 16) = a4;
  *(v30 + 24) = a5;
  *(v30 + 32) = v27;
  *v30 = -1;
  *(v30 + 4) = v24 | (a7 << 31 >> 31) & 0xC | 3;
  if (v18)
  {
    v34 = v36;
    v35 = v37;
    v19 = sub_100026A10(a1->i64, 0, v18, &v34, v36, v16);
    if (v19)
    {
      goto LABEL_19;
    }
  }

  v34 = v38;
  v35 = v39;
  v17 = sub_100026A10(a1->i64, 0, v40, &v34, v38, v16);
  if (!v17)
  {
    v32 = a1[1].i64[0];
    v34 = a1[4];
    v35 = a1[5].i64[0];
    v17 = sub_100026A10(a1->i64, 0, v32, &v34, v34, v31);
  }

  if (v18)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v40)
  {
    free(v40);
  }

  return v17;
}

uint64_t sub_1000319A8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  memset(v31, 170, sizeof(v31));
  v7 = a1[2];
  result = sub_100030E2C(a1, 18, 0, *(a1[1] + 36), 0, &v31[1] + 1, v31);
  if (result)
  {
    return result;
  }

  v9 = *(&v31[1] + 1);
  *(*(&v31[1] + 1) + 32) = 0;
  v10 = (DWORD2(v31[0]) - 64) / 0x28;
  *(v9 + 44) = v10;
  *(v9 + 52) = -1;
  *(v9 + 60) = 0;
  if (v10)
  {
    v11 = 0;
    v12 = (v10 - 1);
    v13 = vdupq_n_s64(v10 - 1);
    v14 = (v10 + 3) & 0x1FFFFFFFCLL;
    v15 = xmmword_100076F10;
    v16 = xmmword_100076F20;
    v17 = vdupq_n_s64(1uLL);
    v18 = vdupq_n_s64(4uLL);
    v19 = (v9 + 104);
    do
    {
      v20 = vmovn_s64(vcgeq_u64(v13, v16));
      v21 = vaddq_s64(v16, v17);
      if (vuzp1_s16(v20, *v13.i8).u8[0])
      {
        v22 = v21.i32[0];
        if (v11 >= v12)
        {
          v22 = -1;
        }

        *(v19 - 10) = v22;
      }

      if (vuzp1_s16(v20, *&v13).i8[2])
      {
        if (v11 + 1 >= v12)
        {
          v23 = -1;
        }

        else
        {
          v23 = v21.i32[2];
        }

        *v19 = v23;
      }

      v24 = vaddq_s64(v15, v17);
      v25 = vmovn_s64(vcgeq_u64(v13, v15));
      if (vuzp1_s16(*&v13, v25).i32[1])
      {
        if (v11 + 2 >= v12)
        {
          v26 = -1;
        }

        else
        {
          v26 = v24.i32[0];
        }

        v19[10] = v26;
      }

      if (vuzp1_s16(*&v13, v25).i8[6])
      {
        if (v11 + 3 >= v12)
        {
          v27 = -1;
        }

        else
        {
          v27 = v24.i32[2];
        }

        v19[20] = v27;
      }

      v11 += 4;
      v15 = vaddq_s64(v15, v18);
      v16 = vaddq_s64(v16, v18);
      v19 += 40;
    }

    while (v14 != v11);
  }

  v28 = *(v9 + 8);
  *(v7 + 56) = v28;
  if (!a2)
  {
    *(v7 + 48) = v28;
    v30 = 1;
    goto LABEL_28;
  }

  *(a2 + 32) = v28;
  v29 = *(v7 + 68);
  if (v29)
  {
    v30 = v29 + 1;
LABEL_28:
    *(v7 + 68) = v30;
  }

  if (a4)
  {
    *a4 = v31[0];
    *(a4 + 16) = *&v31[1];
  }

  result = 0;
  *a3 = v9;
  return result;
}

uint64_t sub_100031B78(uint64_t *a1, char a2, char a3, unint64_t a4)
{
  v4 = a4;
  if (*(a1[1] + 36) * a4 >= 0x100000)
  {
    v8 = 0x100000;
  }

  else
  {
    v8 = *(a1[1] + 36) * a4;
  }

  v9 = malloc_type_malloc(v8, 0xA5FFDFFBuLL);
  if (v9)
  {
    v17 = v9;
    if (v4)
    {
      v18 = v8 / *(a1[1] + 36);
      while (1)
      {
        if (v4 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v4;
        }

        v20 = sub_10001C898(*a1);
        if (v20)
        {
          v22 = v20;
          strerror(v20);
          sub_10004565C("blockcopy: unable to read paddr 0x%llx block_count 0x%llx: %s\n", v23, v24, v25, v26, v27, v28, v29, a2);
          v30 = 611;
          goto LABEL_17;
        }

        v21 = sub_10001C8A8(*a1);
        if (v21)
        {
          break;
        }

        a2 += v19;
        a3 += v19;
        v4 -= v19;
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      v22 = v21;
      strerror(v21);
      sub_10004565C("blockcopy: unable to write paddr 0x%llx block_count 0x%llx: %s\n", v31, v32, v33, v34, v35, v36, v37, a3);
      v30 = 612;
LABEL_17:
      sub_100049C40(v30, v22);
    }

    else
    {
LABEL_13:
      v22 = 0;
    }

    free(v17);
  }

  else
  {
    sub_10004565C("blockcopy: unable to allocate memory for buffer_size 0x%zx.\n", v10, v11, v12, v13, v14, v15, v16, v8);
    v22 = 12;
    sub_100049C40(0x262, 12);
  }

  return v22;
}

uint64_t sub_100031CD8(uint64_t *a1, char a2, unint64_t a3, int a4, int a5, int a6, int8x16_t a7, int8x16_t a8)
{
  if (sub_10003ED88(a1, (a1 + 1), (a6 - 8), 0, a7, a8))
  {
    v23 = *a1;
    sub_10004565C("object (oid 0x%llx): o_cksum (0x%llx) is invalid for object\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    sub_100049C40(5, 92);
    if ((a2 & 1) == 0)
    {
LABEL_6:
      if ((a2 & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v20 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  if (a1[1])
  {
    goto LABEL_6;
  }

  sub_10004565C("object (oid 0x%llx): o_oid invalid\n", v13, v14, v15, v16, v17, v18, v19, 0);
  v20 = 92;
  sub_100049C40(6, 92);
  if ((a2 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v21 = a1[2];
  if (!v21)
  {
    sub_10004565C("object (oid 0x%llx): o_xid invalid, o_xid is 0\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    sub_100049C40(7, 92);
    v21 = a1[2];
  }

  if (v21 > a3)
  {
    sub_10004565C("object (oid 0x%llx): o_xid invalid, o_xid %llu is greater than nx_next_xid: %llu\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    sub_100049C40(8, 92);
  }

LABEL_12:
  if ((a2 & 4) != 0 && *(a1 + 6) != a4)
  {
    v24 = *(a1 + 6);
    sub_10004565C("object (oid 0x%llx): o_type invalid, o_type 0x%x should be 0x%x\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    sub_100049C40(9, 92);
  }

  if ((a2 & 8) != 0 && *(a1 + 7) != a5)
  {
    v25 = *(a1 + 7);
    sub_10004565C("object (oid 0x%llx): o_subtype invalid, o_subtype 0x%x should be 0x%x\n", v13, v14, v15, v16, v17, v18, v19, a1[1]);
    v20 = 92;
    sub_100049C40(0xA, 92);
  }

  return v20;
}

unsigned int *sub_100031E70(uint64_t a1, _BYTE *a2)
{
  v4 = sub_10002F380(a1);
  if (v4 <= 0x1000)
  {
    v5 = 4096;
  }

  else
  {
    v5 = v4;
  }

  v6 = sub_10002F38C(a1);
  v7 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
  if (!v7)
  {
LABEL_13:
    sub_10004565C("failed to allocate memory to read the container superblock\n", v8, v9, v10, v11, v12, v13, v14, v57);
    sub_100049C40(0x56, 12);
    return 0;
  }

  v15 = v7;
  while (1)
  {
    sub_10002F380(a1);
    v16 = sub_10002F3CC(a1);
    if (v16)
    {
      v38 = v16;
      sub_10004565C("failed to read container superblock\n", v17, v18, v19, v20, v21, v22, v23, v57);
      v37 = 87;
      v39 = v38;
LABEL_25:
      sub_100049C40(v37, v39);
      free(v15);
      return 0;
    }

    if (v15[8] != 1112758350)
    {
      sub_1000394A4(v15, v5);
      sub_10004565C("Device does not contain a valid APFS container.\n", v40, v41, v42, v43, v44, v45, v46, v57);
      v37 = 88;
LABEL_24:
      v39 = 22;
      goto LABEL_25;
    }

    v24.i32[0] = v15[9];
    if ((v24.i32[0] - 65537) < 0xFFFF0FFF || (v25 = v24.i32[0] % sub_10002F380(a1), v24 = v15[9], v25) || (v26 = vcnt_s8(v24), v26.i16[0] = vaddlv_u8(v26), v26.i32[0] >= 2u))
    {
      sub_10004565C("nx_block_size of %u is invalid\n", v17, v18, v19, v20, v21, v22, v23, v24.i8[0]);
      v37 = 89;
      goto LABEL_24;
    }

    if (v24.i32[0] == sub_10002F380(a1))
    {
      break;
    }

    v36 = v15[9];
    sub_10002F3A4(a1);
    v5 = v15[9];
    free(v15);
    v6 = sub_10002F38C(a1);
    v15 = malloc_type_calloc(1uLL, v5, 0xF6CF7D2AuLL);
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (*(v15 + 5) - 1 >= v6)
  {
    sub_100045744("nx_block_count is %llu, while device block count is %llu\n", v27, v28, v29, v30, v31, v32, v33, *(v15 + 5));
    sub_100049C40(0x1F9, -7);
    *(v15 + 5) = v6;
    *a2 = 1;
  }

  if (!sub_100031CD8(v15, 15, *(v15 + 12), -2147483647, 0, v15[9], v34, v35))
  {
    return v15;
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v59[0] = a1;
  v59[1] = v15;
  v58[0] = v59;
  v58[1] = 0;
  v54 = v15[26];
  if ((v54 & 0x7FFFFFF8) == 0)
  {
    goto LABEL_23;
  }

  v55 = *(v15 + 14);
  if ((v54 & 0x80000000) != 0)
  {
    if (!sub_100031608(v59, v55, sub_100049FC8, v58))
    {
      goto LABEL_29;
    }

LABEL_23:
    sub_10004565C("cannot find checkpoint area because container superblock is too damaged\n", v47, v48, v49, v50, v51, v52, v53, v57);
    v37 = 506;
    goto LABEL_24;
  }

  v88[1] = v15[26];
  v89 = 0;
  v88[0] = v55;
  if (sub_100049FC8(&v89, 8, v88, 16, v58, v51, v52, v53))
  {
    goto LABEL_23;
  }

LABEL_29:
  *a2 = 1;
  return v15;
}

uint64_t sub_100032164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 8) != 1)
  {
    sub_10004565C("nx_sb->nx_o.o_oid != OID_NX_SUPERBLOCK, %llu\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    v19 = 92;
    v20 = 51;
    goto LABEL_12;
  }

  if (*(a2 + 32) != 1112758350)
  {
    sub_10004565C("nx_superblock magic number invalid: 0x%X\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 32));
    v19 = 92;
    v20 = 52;
    goto LABEL_12;
  }

  v9 = a3;
  if (*(a2 + 40) - 1 >= sub_10002F38C(a1))
  {
    sub_10004565C("nx_block_count is %llu, while device block count is %llu\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 40));
    v22 = 53;
    v23 = 92;
    goto LABEL_15;
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    sub_100045744("nx_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 48) & 0xFE);
    sub_100049C40(0x36, -3);
  }

  if (*(a2 + 56))
  {
    sub_100045744("nx_read_only_compatible_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 56));
    v18 = qword_10009BA60;
    *(qword_10009BA60 + 32) = 1;
    *(v18 + 41) = 1;
    sub_100047570(qword_10009BA58, 1);
    sub_100049C40(0x37, -3);
  }

  if ((*(a2 + 64) & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    if (uuid_is_null((a2 + 72)))
    {
      sub_10004565C("nx_uuid is NULL\n", v24, v25, v26, v27, v28, v29, v30, v85);
      v19 = 92;
      v20 = 57;
      goto LABEL_12;
    }

    if (*(a2 + 88) <= 0x3FFuLL)
    {
      sub_10004565C("nx_next_oid (%llu) is less than the minimum (%u)\n", v24, v25, v26, v27, v28, v29, v30, *(a2 + 88));
      v19 = 92;
      v20 = 58;
      goto LABEL_12;
    }

    v119 = 0;
    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    v90 = a1;
    v91 = a2;
    v31 = *(a2 + 104) & 0x7FFFFFFF;
    v88 = &v90;
    v89 = 0;
    if (v31 <= 7)
    {
      sub_10004565C("nx_xp_desc_blocks (%u) is less than 8\n", v24, v25, v26, v27, v28, v29, v30, v31);
      v19 = 92;
      v20 = 59;
      goto LABEL_12;
    }

    if (sub_100032A3C(&v90, &v88, v25, v26, v27, v28, v29, v30))
    {
      v86 = *(a2 + 104);
      sub_10004565C("NX checkpoint desc range is invalid: 0x%llx+0x%x\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 112));
      v19 = 92;
      v20 = 60;
      goto LABEL_12;
    }

    if (v89 != (*(a2 + 104) & 0x7FFFFFFF))
    {
      sub_10004565C("NX checkpoint desc blocks field is %u, but sum of ranges is %llu\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 104));
      v19 = 92;
      v20 = 574;
      goto LABEL_12;
    }

    if ((*(a2 + 108) & 0x7FFFFFFFu) <= 7)
    {
      sub_10004565C("nx_xp_data_blocks (%u) is less than 8\n", v32, v33, v34, v35, v36, v37, v38, *(a2 + 108));
      v19 = 92;
      v20 = 61;
      goto LABEL_12;
    }

    v89 = 0;
    if (sub_100032AAC(&v90, sub_100049FC8, &v88))
    {
      v87 = *(a2 + 108);
      sub_10004565C("NX checkpoint data range is invalid: 0x%llx+0x%x\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 120));
      v19 = 92;
      v20 = 62;
      goto LABEL_12;
    }

    v46 = *(a2 + 108) & 0x7FFFFFFF;
    if (v89 != v46)
    {
      sub_10004565C("NX checkpoint data blocks field is %u, but sum of ranges is %llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 108));
      v19 = 92;
      v20 = 575;
      goto LABEL_12;
    }

    v47 = *(a2 + 104) & 0x7FFFFFFF;
    if (*(a2 + 128) >= v47)
    {
      sub_10004565C("nx_xp_desc_next (%u) is larger than the # of nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 128));
      v19 = 92;
      v20 = 63;
      goto LABEL_12;
    }

    if (*(a2 + 132) >= v46)
    {
      sub_10004565C("nx_xp_data_next (%u) is larger than the # of nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 132));
      v19 = 92;
      v20 = 64;
      goto LABEL_12;
    }

    if ((v9 & 1) != 0 || *(a2 + 140) || *(a2 + 148) || *(a2 + 136) || *(a2 + 144))
    {
      if (*(a2 + 136) >= v47)
      {
        sub_10004565C("nx_xp_desc_index (%u) is larger than nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 136));
        v19 = 92;
        v20 = 65;
        goto LABEL_12;
      }

      v48 = *(a2 + 140);
      if (v48 <= 1)
      {
        sub_10004565C("nx_xp_desc_len (%u) is less than 2\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 140));
        v19 = 92;
        v20 = 66;
        goto LABEL_12;
      }

      if (v48 >= v47)
      {
        sub_10004565C("nx_xp_desc_len (%u) is larger than nx_xp_desc_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 140));
        v19 = 92;
        v20 = 67;
        goto LABEL_12;
      }

      if (*(a2 + 144) >= v46)
      {
        sub_10004565C("nx_xp_data_index (%u) is is larger than nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 144));
        v19 = 92;
        v20 = 68;
        goto LABEL_12;
      }

      v49 = *(a2 + 148);
      if (v49 <= 1)
      {
        sub_10004565C("nx_xp_data_len (%u) is less than 2\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 148));
        v19 = 92;
        v20 = 69;
        goto LABEL_12;
      }

      if (v49 >= v46)
      {
        sub_10004565C("nx_xp_data_len (%u) is larger than nx_xp_data_blocks (%u)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 148));
        v19 = 92;
        v20 = 70;
        goto LABEL_12;
      }
    }

    if (!*(a2 + 152))
    {
      sub_10004565C("nx_spaceman_oid is invalid\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 71;
      goto LABEL_12;
    }

    if (!*(a2 + 160))
    {
      sub_10004565C("nx_omap_oid is invalid\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 72;
      goto LABEL_12;
    }

    if ((*(a2 + 168) - 1) <= 0x3FE)
    {
      sub_10004565C("nx_reaper_oid (%llu) is less than minimum OID (%d)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 168));
      v19 = 92;
      v20 = 73;
      goto LABEL_12;
    }

    if ((*(a2 + 180) - 101) < 0xFFFFFF9C)
    {
      sub_10004565C("nx_max_file_systems (%u) is invalid\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 180));
      v19 = 92;
      v20 = 74;
      goto LABEL_12;
    }

    for (i = 0; i != 100; ++i)
    {
      v51 = *(a2 + 184 + 8 * i);
      if ((v51 - 1) < 0x3FF)
      {
        sub_10004565C("nx_fs_oid (%llu) at index (%d) is less than minimum OID (%d)\n", v39, v40, v41, v42, v43, v44, v45, v51);
        v19 = 92;
        v20 = 75;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1264) >= 8uLL)
    {
      sub_100045744("nx_flags (0x%llx) has an unknown flag set \n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1264));
      sub_100049C40(0x4C, -3);
    }

    v52 = *(a2 + 1312);
    if (v52 != 1)
    {
      sub_100045744("nx_ephemeral_info 0: invalid version (%u), should be: (%d)\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1312));
      sub_100049C40(0x4D, -6);
    }

    if (WORD1(v52) != 4)
    {
      sub_100045744("nx_ephemeral_info 0: invalid structures per fs (%u), should be: (%d)\n", v39, v40, v41, v42, v43, v44, v45, SBYTE2(v52));
      sub_100049C40(0x4E, -8);
    }

    if ((v52 - 0x900000000) <= 0xFFFFFFF7FFFFFFFFLL)
    {
      sub_100045744("nx_ephemeral_info 0: invalid minimum block count per structure (%u), should be less than: (%d)\n", v39, v40, v41, v42, v43, v44, v45, SBYTE2(v52));
      sub_100049C40(0x4F, -7);
    }

    for (j = 0; j != 3; ++j)
    {
      if (*(a2 + 1320 + 8 * j))
      {
        sub_100045744("nx_ephemeral_info %d: invalid info (0x%llx)\n", v39, v40, v41, v42, v43, v44, v45, j + 1);
        sub_100049C40(0x50, -10);
      }
    }

    v54 = *(a2 + 1400);
    if (v54)
    {
      v55 = *(a2 + 1392);
      v56 = *(v91 + 40);
      v57 = v56 - v54 >= v55 && v56 > v54;
      v58 = !v57 || v55 < 1;
      if (v58 || v56 <= v55)
      {
        sub_10004565C("NX media keylocker data range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1392));
        v19 = 92;
        v20 = 949;
        goto LABEL_12;
      }
    }

    v60 = *(a2 + 1304);
    if (v60)
    {
      v61 = *(a2 + 1296);
      v62 = *(v91 + 40);
      v63 = v62 - v60 >= v61 && v62 > v60;
      v64 = !v63 || v61 < 1;
      if (v64 || v62 <= v61)
      {
        sub_10004565C("NX keybag data range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1296));
        v19 = 92;
        v20 = 81;
        goto LABEL_12;
      }
    }

    v66 = *(a2 + 1248);
    if (v66)
    {
      v67 = *(a2 + 1240);
      v68 = *(v91 + 40);
      v69 = v68 - v66 >= v67 && v68 > v66;
      v70 = !v69 || v67 < 1;
      if (v70 || v68 <= v67)
      {
        sub_10004565C("NX blocked out range is invalid: 0x%llx+%llu\n", v39, v40, v41, v42, v43, v44, v45, *(a2 + 1240));
        v19 = 92;
        v20 = 82;
        goto LABEL_12;
      }
    }

    if (*(a2 + 1352))
    {
      sub_10004565C("nx_fusion_mt_oid should be invalid but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 83;
      goto LABEL_12;
    }

    if (*(a2 + 1360))
    {
      sub_10004565C("nx_fusion_wbc_oid should be invalid but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      v19 = 92;
      v20 = 84;
      goto LABEL_12;
    }

    if (*(a2 + 1376) || *(a2 + 1368))
    {
      sub_100045744("nx_fusion_wbc should be empty but isn't\n", v39, v40, v41, v42, v43, v44, v45, v85);
      sub_100049C40(0x5BF, -6);
    }

    v72 = *(a2 + 1384);
    v73 = v72 - 1;
    if (v72 <= 0x3B9AC9BB15066FFFLL && v73 > 0x4BFFE92108FFELL)
    {
      return 0;
    }

    memset(v121, 170, 17);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    v74 = sub_10001D6AC(v72, __str, 25);
    LOBYTE(v82) = v74;
    if (!v74)
    {
      v82 = __str;
      snprintf(__str, 0x19uLL, "%llu", v72);
    }

    if (v72 <= 0x3B9AC9BB15066FFFLL)
    {
      if (v73 >= 0xE8D4A50FFFLL)
      {
        v84 = "nx_newest_mounted_version is less than expected: %s\n";
      }

      else
      {
        v84 = "nx_newest_mounted_version should not start with a 0: %s\n";
      }

      if (v73 < 0xE8D4A50FFFLL)
      {
        v83 = 859;
      }

      else
      {
        v83 = 860;
      }

      if (v73 > 0x4BFFE92108FFELL)
      {
        return 0;
      }
    }

    else
    {
      v83 = 858;
      v84 = "nx_newest_mounted_version is greater than expected: %s\n";
    }

    sub_100045744(v84, v75, v76, v77, v78, v79, v80, v81, v82);
    v22 = v83;
    v23 = -6;
LABEL_15:
    sub_100049C40(v22, v23);
    return 0;
  }

  sub_10004565C("nx_incompatible_features has unsupported flags: (0x%llX)\n", v11, v12, v13, v14, v15, v16, v17, *(a2 + 64) & 0xFD);
  v19 = 92;
  v20 = 56;
LABEL_12:
  sub_100049C40(v20, 92);
  return v19;
}

uint64_t sub_100032A3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 8);
  v11 = *(v10 + 104);
  v12 = *(v10 + 112);
  if ((v11 & 0x80000000) != 0)
  {

    return sub_100031608(a1, v12, sub_100049FC8, a2);
  }

  else
  {
    v15 = 0;
    v14[0] = v12;
    v14[1] = v11;
    return sub_100049FC8(&v15, 8, v14, 16, a2, a6, a7, a8);
  }
}

uint64_t sub_100032AAC(uint64_t a1, uint64_t (*a2)(void *, uint64_t, void *, uint64_t, uint64_t), uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 108);
  v7 = *(v5 + 120);
  if ((v6 & 0x80000000) != 0)
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

uint64_t sub_100032B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    v10 = *(a2 + 16);
    if (*(a1 + 16) > v10)
    {
      v26 = *(a1 + 16);
      sub_100045614("the checkpoint superblock has a lower o_xid (%lld) than the %s (%lld)\n", a2, a3, a4, a5, a6, a7, a8, v10);
      return 92;
    }
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    v20 = *(a2 + 36);
    v27 = *(a1 + 36);
    sub_100045614("checkpoint<->%s mismatch on nx_block_size: %d %d\n", a2, a3, a4, a5, a6, a7, a8, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 40) != *(a2 + 40))
  {
    v21 = *(a2 + 40);
    v28 = *(a1 + 40);
    sub_100045614("checkpoint<->%s mismatch on nx_block_count: %lld %lld\n", a2, a3, a4, a5, a6, a7, a8, "block 0 superblock");
    return 92;
  }

  if (uuid_compare((a1 + 72), (a2 + 72)))
  {
    sub_100045614("checkpoint<->%s mismatch on uuid\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1288) != *(a2 + 1288))
  {
    sub_100045614("checkpoint<->%s mismatch on fusion uuid\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 104) != *(a2 + 104))
  {
    v22 = *(a2 + 104);
    v29 = *(a1 + 104);
    sub_100045614("checkpoint<->%s mismatch on nx_xp_desc_blocks: %d %d\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 108) != *(a2 + 108))
  {
    v23 = *(a2 + 108);
    v30 = *(a1 + 108);
    sub_100045614("checkpoint<->%s mismatch on nx_xp_data_blocks: %d %d\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 112) != *(a2 + 112))
  {
    v24 = *(a2 + 112);
    v31 = *(a1 + 112);
    sub_100045614("checkpoint<->%s mismatch on nx_xp_desc_base: %lld %lld\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  if (*(a1 + 120) != *(a2 + 120))
  {
    v25 = *(a2 + 120);
    v32 = *(a1 + 120);
    sub_100045614("checkpoint<->%s mismatch on nx_xp_data_base: %lld %lld\n", v11, v12, v13, v14, v15, v16, v17, "block 0 superblock");
    return 92;
  }

  return 0;
}

uint64_t sub_100032CE0(uint64_t a1, uint64_t a2, void **a3, unint64_t *a4)
{
  v179 = a3;
  v175 = a4;
  v176 = &v170;
  v6 = *(a2 + 36);
  __chkstk_darwin(a1);
  v14 = &v170 - ((v8 + 15) & 0x1FFFFFFF0);
  if (v8)
  {
    memset(&v170 - ((v8 + 15) & 0x1FFFFFFF0), 170, v8);
  }

  v209 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(a2 + 1264);
  v207 = 0u;
  v208 = 0u;
  v205 = 0u;
  v206 = 0u;
  v203 = 0u;
  v204 = 0u;
  v201 = 0u;
  v202 = 0u;
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  v196 = 0u;
  v195 = 0u;
  v194 = 0u;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v180 = a1;
  *v179 = 0;
  if (!*(a2 + 140) || !*(a2 + 148) || !*(a2 + 136) || !*(a2 + 144) || sub_10002F3B0(a1) || (v15 & 2) == 0)
  {
    goto LABEL_132;
  }

  v16 = (*(a2 + 140) + *(a2 + 136) - 1) % (*(a2 + 104) & 0x7FFFFFFFu);
  v17 = 1;
  v177 = 1;
  do
  {
    v18 = 0;
    while (1)
    {
      v19 = *(a2 + 104);
      v20 = v16 - v18 + (v19 & 0x7FFFFFFF);
      v21 = v20 % (v19 & 0x7FFFFFFFu);
      *&v181 = a2;
      v22 = *(a2 + 112);
      if (v19 < 0)
      {
        v35 = sub_100031504(&v180, v22, v20 % (v19 & 0x7FFFFFFFu), &v209, 0);
        if (v35)
        {
          v26 = v35;
          v36 = strerror(v35);
          sub_100045744("failed to look up checkpoint block address: %s\n", v37, v38, v39, v40, v41, v42, v43, v36);
          v34 = 542;
          goto LABEL_17;
        }
      }

      else
      {
        v209 = v22 + v21;
      }

      v23 = sub_10002F3CC(a1);
      if (v23)
      {
        v26 = v23;
        v163 = v209;
        strerror(v23);
        sub_10004565C("dev_read(%llu, 1): %s\n", v27, v28, v29, v30, v31, v32, v33, v163);
        v34 = 127;
LABEL_17:
        v44 = v26;
        goto LABEL_18;
      }

      if (!*(v14 + 1) && *v179)
      {
        return 0;
      }

      if (*(v14 + 6) == -2147483647)
      {
        if (sub_100031CD8(v14, 11, *(v14 + 2), 0, 0, *(a2 + 36), v24, v25))
        {
          v165 = *(v14 + 2);
          sub_100045744("checkpoint %d (xid %llu) fsck_obj_phys failed\n", v45, v46, v47, v48, v49, v50, v51, v21);
          goto LABEL_19;
        }

        if (sub_100032B14(a2, v14, v18 == 0, v47, v48, v49, v50, v51))
        {
          v166 = *(v14 + 2);
          sub_100045744("checkpoint %d (xid %llu) superblock disagrees with block 0\n", v7, v8, v9, v10, v11, v12, v13, v21);
          goto LABEL_19;
        }

        v52 = *(v14 + 35);
        v53 = (v52 + *(v14 + 34) - 1) % (*(v14 + 26) & 0x7FFFFFFFu);
        if (v21 != v53)
        {
          sub_100045744("xp_sb->nx_xp_desc_index (%d) doesn't match index block (%d)\n", v7, v8, v9, v10, v11, v12, v13, v53);
          v34 = 128;
          goto LABEL_34;
        }

        if (v52 + v18 <= (*(a2 + 104) & 0x7FFFFFFFu))
        {
          break;
        }
      }

LABEL_19:
      if (++v18 == v17)
      {
        goto LABEL_130;
      }
    }

    if (sub_100032164(a1, v14, 1, v9, v10, v11, v12, v13))
    {
      v167 = *(v14 + 2);
      sub_100045744("checkpoint %d (xid %llu) superblock is invalid\n", v54, v55, v56, v57, v58, v59, v60, v21);
      goto LABEL_19;
    }

    *&v181 = v14;
    v210 = 0xAAAAAAAAAAAAAAAALL;
    v211 = 0;
    if (*(v14 + 35) == 1)
    {
      goto LABEL_113;
    }

    v61 = 0;
    while (1)
    {
      v62 = *(v14 + 34);
      v171 = v61;
      v63 = (v62 + v61) % (*(v14 + 26) & 0x7FFFFFFFu);
      v64 = *(v181 + 104);
      if ((v64 & 0x7FFFFFFFu) <= v63)
      {
        v66 = 22;
LABEL_98:
        LODWORD(v178) = v66;
        strerror(v66);
        sub_10004565C("failed to look up checkpoint block address %d: %s\n", v96, v97, v98, v99, v100, v101, v102, v63);
        v105 = 540;
        v103 = v178;
        goto LABEL_109;
      }

      v65 = *(v181 + 112);
      if (v64 < 0)
      {
        v66 = sub_100031504(&v180, v65, v63, &v210, 0);
        if (v66)
        {
          goto LABEL_98;
        }
      }

      else
      {
        v210 = v65 + v63;
      }

      if (v211)
      {
        free(v211);
        v211 = 0;
      }

      v67 = sub_100025548(&v180, 0, 0x40000000, v210, 0, 0, 12, 0, &v211, 0, 0);
      v75 = v67 == 0;
      if (v67)
      {
        goto LABEL_110;
      }

      v76 = v211;
      if (*(v211 + 1) != v210)
      {
        sub_10004565C("cpm_o.o_oid (0x%llx) doesn't match the physical address (0x%llx)\n", v68, v69, v70, v71, v72, v73, v74, *(v211 + 1));
        v105 = 107;
        goto LABEL_108;
      }

      if (*(v211 + 2) != *(v181 + 16))
      {
        sub_10004565C("checkpoint map o_xid (0x%llx) doesn't match checkpoint superblock o_xid (0x%llx)\n", v68, v69, v70, v71, v72, v73, v74, *(v211 + 2));
        v105 = 108;
        goto LABEL_108;
      }

      v77 = v211[9];
      if (!v77)
      {
        sub_10004565C("cpm_count is 0\n", v68, v69, v70, v71, v72, v73, v74, v170);
        v105 = 109;
        goto LABEL_108;
      }

      v78 = *(v181 + 36);
      v172 = v181;
      v173 = v78;
      if ((v78 - 40) / 0x28uLL < v77)
      {
        sub_10004565C("cpm_count (%u) is larger than the max that this block size can accommodate (%u)\n", v68, v69, v70, v71, v72, v73, v74, v77);
        v105 = 110;
        goto LABEL_108;
      }

      v170 = v67 == 0;
      v79 = *(v14 + 35);
      v80 = v211[8];
      v174 = v211;
      if (v80 >= 2)
      {
        sub_100045744("cpm_flags has an unknown flag set 0x%x\n", v68, v69, v70, v71, v72, v73, v74, v80);
        sub_100049C40(0x6F, -3);
        v76 = v174;
        v80 = *(v174 + 8);
      }

      if (v171 == v79 - 2)
      {
        if ((v80 & 1) == 0)
        {
          sub_10004565C("cpm_flags has invalid flags set: 0x%x\n", v68, v69, v70, v71, v72, v73, v74, v80);
          v105 = 112;
          goto LABEL_108;
        }
      }

      else if (v80)
      {
        sub_10004565C("cpm_flags has invalid flags set: 0x%x\n", v68, v69, v70, v71, v72, v73, v74, v80);
        v105 = 113;
        goto LABEL_108;
      }

      if (*(v76 + 9))
      {
        break;
      }

LABEL_88:
      v75 = v170;
      v61 = v171 + 1;
      if (v171 + 1 >= (*(v14 + 35) - 1))
      {
        goto LABEL_110;
      }
    }

    v81 = 0;
    v82 = (v76 + 9);
    while (2)
    {
      v83 = *(v82 - 8);
      if ((v83 & 0xC0000000) != 0x80000000)
      {
        sub_10004565C("cpm_map[%d].cpm_type storage type (0x%x) != OBJ_EPHEMERAL\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 114;
        goto LABEL_108;
      }

      v84 = *(v82 - 8) > 0x12u || ((1 << v83) & 0x6002C) == 0;
      v178 = v81;
      if (v84)
      {
        sub_100045744("cpm_map[%d].cpm_type object type (0x%x) is invalid!\n", v68, v69, v70, v71, v72, v73, v74, v81);
        sub_100049C40(0x73, -5);
        LOBYTE(v81) = v178;
      }

      v85 = *(v82 - 7);
      if ((v85 & 0xC0000000) != 0)
      {
        sub_10004565C("cpm_map[%d].cpm_subtype has nonzero storage type (0x%x)\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 649;
        goto LABEL_108;
      }

      if ((*(v82 - 7) > 0x24u || ((1 << v85) & 0x100009CA01) == 0) && *(v82 - 7) != 255)
      {
        sub_100045744("cmp_map[%d].cpm_subtype object type (0x%x) is invalid!\n", v68, v69, v70, v71, v72, v73, v74, v81);
        sub_100049C40(0x28A, -5);
        LOBYTE(v81) = v178;
      }

      if (*(v82 - 2) - 1 <= 0x3FE)
      {
        v160 = *(v82 - 2);
        sub_10004565C("cpm_map[%d].cpm_fs_oid (%llu) is less than minimum oid (%u)!\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 515;
        goto LABEL_108;
      }

      if (!*(v82 - 1))
      {
        sub_10004565C("cpm_map[%d].cpm_oid object type is invalid!\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 116;
        goto LABEL_108;
      }

      v86 = *(v82 - 6);
      if (!v86)
      {
        sub_10004565C("xp_map->cpm_map[%d].cpm_size is 0\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 121;
        goto LABEL_108;
      }

      if (v86 % v173)
      {
        v161 = *(v82 - 6);
        sub_10004565C("xp_map->cpm_map[%d].cpm_size (%u) is not a multiple of nx_block_size (%u)\n", v68, v69, v70, v71, v72, v73, v74, v81);
        v105 = 122;
        goto LABEL_108;
      }

      v212[0] = *v82;
      v212[1] = (v86 / v173);
      v87 = *(v181 + 120);
      if ((*(v181 + 108) & 0x80000000) != 0)
      {
        if (!sub_100031608(&v180, v87, sub_10004A074, v212))
        {
LABEL_96:
          v162 = *v82;
          v164 = *(v82 - 6);
          sub_10004565C("cpm_map[%d].cpm_paddr (%llu) + cpm_size (%u) is not in the checkpoint data area\n", v88, v69, v70, v71, v72, v73, v74, v178);
          v105 = 538;
          goto LABEL_108;
        }
      }

      else
      {
        v213[1] = *(v181 + 108);
        v214 = 0;
        v213[0] = v87;
        if (!sub_10004A074(&v214, 8, v213, 16, v212, v72, v73, v74))
        {
          goto LABEL_96;
        }
      }

      v89 = *v82;
      v213[0] = *v82;
      v90 = *(v181 + 108);
      v68 = *(v181 + 120);
      if ((v90 & 0x80000000) == 0)
      {
        v91 = v89 - v68;
        if (v89 < v68)
        {
          goto LABEL_105;
        }

        v92 = v178;
        if (v91 >= v90)
        {
          goto LABEL_106;
        }

        goto LABEL_79;
      }

      if (sub_100031608(&v180, v68, sub_100033FB4, v213) == -1)
      {
        v91 = v213[0];
        v92 = v178;
LABEL_79:
        v93 = v172[36];
        if (v91 >= v93)
        {
          v94 = v91 >= (v172[37] + v93);
          v95 = v174;
          if (v94)
          {
            sub_10004565C("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v68, v69, v70, v71, v72, v73, v74, v172[36]);
            v105 = 120;
            goto LABEL_108;
          }
        }

        else
        {
          v94 = v91 + (v172[27] & 0x7FFFFFFF) >= (v172[37] + v93);
          v95 = v174;
          if (v94)
          {
            sub_10004565C("nx_xp_data_index (%u) puts the checkpoint data outside of its range\n", v68, v69, v70, v71, v72, v73, v74, v172[36]);
            v105 = 119;
            goto LABEL_108;
          }
        }

        v81 = v92 + 1;
        v82 += 5;
        if (v81 >= *(v95 + 9))
        {
          goto LABEL_88;
        }

        continue;
      }

      break;
    }

    v104 = *v82;
LABEL_105:
    LOBYTE(v92) = v178;
LABEL_106:
    sub_10004565C("could not look up cpm_map[%d].cpm_paddr (%llu) in checkpoint data area\n", v68, v69, v70, v71, v72, v73, v74, v92);
    v105 = 539;
LABEL_108:
    v103 = 92;
LABEL_109:
    sub_100049C40(v105, v103);
    v75 = 0;
LABEL_110:
    if (v211)
    {
      free(v211);
    }

    if (!v75)
    {
      v169 = *(v14 + 2);
      sub_100045744("checkpoint %d (xid %llu) checkpoint map is invalid\n", v68, v69, v70, v71, v72, v73, v74, v21);
      goto LABEL_19;
    }

LABEL_113:
    if (sub_10002CBE0(&v180, 0) || sub_10002CC80(&v180, 0) || sub_10002CD20(&v180, 0, 0) || (v213[0] = 0, sub_10002CF5C(&v180, 0, v213)) || sub_10003570C(v213[0], 0, 0, 0, 0, 0))
    {
LABEL_118:
      v106 = v180;
      v180 = 0;
      *&v181 = 0;
      sub_10002C8A8(&v180);
      v180 = v106;
      v168 = *(v14 + 2);
      sub_100045744("checkpoint %d (xid %llu) failed consistency check\n", v107, v108, v109, v110, v111, v112, v113, v21);
      v34 = 990;
LABEL_34:
      v44 = -7;
LABEL_18:
      sub_100049C40(v34, v44);
      goto LABEL_19;
    }

    v212[0] = 0;
    v114 = v181;
    if (*(v181 + 180))
    {
      v115 = 0;
      do
      {
        v116 = *(v114 + 8 * v115 + 184);
        if (v116)
        {
          if (sub_100025548(&v180, 0, 0, v116, 0, 0, 13, 0, v212, 0, 0))
          {
            goto LABEL_118;
          }

          free(v212[0]);
          v212[0] = 0;
          v114 = v181;
        }

        ++v115;
      }

      while (v115 < *(v114 + 180));
    }

    v117 = v180;
    v180 = 0;
    *&v181 = 0;
    sub_10002C8A8(&v180);
    v180 = v117;
    if (*v179)
    {
      free(*v179);
    }

    v118 = malloc_type_malloc(*(a2 + 36), 0x3D218F84uLL);
    *v179 = v118;
    if (!v118)
    {
      sub_10004565C("malloc(%u)\n", v119, v120, v121, v122, v123, v124, v125, *(a2 + 36));
      v156 = 12;
      v157 = 129;
      v158 = 12;
      goto LABEL_164;
    }

    memcpy(v118, v14, 0x588uLL);
    v126 = v175;
    *v175 = v209;
    *(v126 + 2) = *(a2 + 36);
LABEL_130:
    if (*v179)
    {
      return 0;
    }

    if ((v177 & 1) == 0)
    {
      goto LABEL_162;
    }

LABEL_132:
    v127 = *(a2 + 104);
    if ((v127 & 0x7FFFFFFF) == 0)
    {
LABEL_161:
      sub_10004565C("no valid checkpoint found\n", v7, v8, v9, v10, v11, v12, v13, v170);
      v156 = 92;
      v157 = 126;
      goto LABEL_163;
    }

    v128 = 0;
    v129 = 0;
    LODWORD(v178) = 0;
    v130 = 0;
    while (2)
    {
      *&v181 = a2;
      v131 = *(a2 + 112);
      if ((v127 & 0x80000000) == 0)
      {
        v209 = v128 + v131;
        goto LABEL_136;
      }

      v145 = sub_100031504(&v180, v131, v128, &v209, 0);
      if (v145)
      {
        v135 = v145;
        strerror(v145);
        sub_100045744("failed to look up checkpoint block address %d: %s\n", v146, v147, v148, v149, v150, v151, v152, v128);
        v144 = 541;
LABEL_140:
        v153 = v135;
LABEL_141:
        sub_100049C40(v144, v153);
      }

      else
      {
LABEL_136:
        v132 = sub_10002F3CC(a1);
        if (v132)
        {
          v135 = v132;
          v136 = v209;
          strerror(v132);
          sub_10004565C("dev_read(%llu, 1): %s\n", v137, v138, v139, v140, v141, v142, v143, v136);
          v144 = 124;
          goto LABEL_140;
        }

        if (*(v14 + 1))
        {
          if (sub_100031CD8(v14, 10, *(v14 + 2), 0, 0, *(a2 + 36), v133, v134))
          {
            sub_100045744("checkpoint %d fsck_obj_phys failed\n", v7, v8, v9, v10, v11, v12, v13, v128);
            goto LABEL_142;
          }

          v154 = *(v14 + 6);
          if (v154 != -2147483647 && v154 != 1073741836)
          {
            sub_100045744("checkpoint %d obj->o_type is invalid: (0x%x)\n", v7, v8, v9, v10, v11, v12, v13, v128);
            v144 = 125;
            v153 = -5;
            goto LABEL_141;
          }
        }

        v155 = *(v14 + 2);
        if (v155 == v130 && v129)
        {
          v129 = 1;
          if (*(v14 + 6) != -2147483647)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v155 < v130)
          {
            goto LABEL_142;
          }

          v129 = *(v14 + 6) == -2147483647;
        }

        v130 = *(v14 + 2);
        LODWORD(v178) = v128;
      }

LABEL_142:
      ++v128;
      v127 = *(a2 + 104);
      v17 = v127 & 0x7FFFFFFF;
      if (v128 < (v127 & 0x7FFFFFFFu))
      {
        continue;
      }

      break;
    }

    if (!v130)
    {
      goto LABEL_161;
    }

    v177 = 0;
    v16 = v178;
  }

  while (v17);
  if (*v179)
  {
    return 0;
  }

LABEL_162:
  sub_10004565C("no valid checkpoint\n", v7, v8, v9, v10, v11, v12, v13, v170);
  v156 = 92;
  v157 = 130;
LABEL_163:
  v158 = 92;
LABEL_164:
  sub_100049C40(v157, v158);
  return v156;
}

uint64_t sub_100033A0C(uint64_t *a1)
{
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v2 = a1[1];
  v3 = *(v2 + 36);
  v4 = sub_100025548(a1, 0, 0x40000000, *(v2 + 1272), 0, 0, 20, 0, &v32, 0, 1);
  if (!v4)
  {
    v13 = v32;
    if (*(v32 + 8) == 1380209482)
    {
      v14 = *(v32 + 9);
      if (v14 == 1)
      {
        if (!*(v32 + 10))
        {
          sub_10004565C("invalid EFI jumpstart record file length: %d\n", v5, v6, v7, v8, v9, v10, v11, 0);
          v12 = 92;
          v16 = 92;
          goto LABEL_10;
        }

        v15 = *(v32 + 11);
        if (!v15 || v15 > (v3 - 176) >> 4)
        {
          sub_10004565C("invalid EFI jumpstart record number of extents: %d\n", v5, v6, v7, v8, v9, v10, v11, *(v32 + 11));
          v12 = 92;
          v16 = 93;
LABEL_10:
          sub_100049C40(v16, 92);
LABEL_13:
          free(v32);
          return v12;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &v13[v18];
          v22 = *(v21 + 22);
          v23 = *(v21 + 23);
          v24 = *(a1[1] + 40);
          if (v24 - v23 < v22 || v24 <= v23 || v22 < 1 || v24 <= v22)
          {
            sub_10004565C("NX jumpstart record range is invalid: 0x%llx+%llu\n", v22, v23, v7, v8, v9, v10, v11, v22);
            v12 = 92;
            v16 = 1243;
            goto LABEL_10;
          }

          v20 += v23;
          sub_1000422DC(a1, v22, v23, 0, 0x40000000, v22, 0, 0, 0x14u, 1u);
          ++v19;
          v13 = v32;
          v18 += 16;
        }

        while (v19 < *(v32 + 11));
        v30 = *(v32 + 10);
        if (v20 * v3 != (v30 + v3 - 1) / v3 * v3)
        {
          sub_10004565C("the EFI jumpstart entry has length %u but occupies %llu blocks of size %u\n", v28, v29, v7, v8, v9, v10, v11, v30);
          v12 = 92;
          v16 = 95;
          goto LABEL_10;
        }
      }

      else
      {
        sub_100045744("found EFI jumpstart record of unknown version %d (max known: %d)\n", v5, v6, v7, v8, v9, v10, v11, v14);
        sub_100049C40(0x5B, -6);
      }

      v12 = 0;
      goto LABEL_13;
    }

    sub_10004565C("the EFI jumpstart record magic number is invalid: 0x%x\n", v5, v6, v7, v8, v9, v10, v11, *(v32 + 8));
    v12 = 92;
    v16 = 90;
    goto LABEL_10;
  }

  v12 = v4;
  sub_10004565C("verification/reading of the EFI jumpstart record failed\n", v5, v6, v7, v8, v9, v10, v11, v31);
  return v12;
}