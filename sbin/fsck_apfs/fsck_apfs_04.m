uint64_t sub_100033C3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 == 8 && a6 == 16)
  {
    v8 = *a3;
    v9 = *a5;
    v10 = a5[1];
    v11 = *(*(a1 + 8) + 40);
    v12 = v11 - v10;
    if (v11 > v10 && v8 >= 1 && v11 > v8 && v12 >= v8 && v9 >= 1 && v11 > v9 && v12 >= v9)
    {
      return 0;
    }

    v22 = *a5;
    v23 = a5[1];
    sub_10004565C("evict mapping range is invalid: (0x%llx+%llu --> 0x%llx+%llu)\n", a2, a3, a4, a5, a6, a7, a8, v8);
    v19 = 850;
  }

  else
  {
    sub_10004565C("unexpected key (%u) / val (%u) size in evict mapping tree\n", a2, a3, a4, a5, a6, a7, a8, a4);
    v19 = 849;
  }

  v20 = 92;
  sub_100049C40(v19, 92);
  return v20;
}

uint64_t sub_100033CE8(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[2] = v2;
  v20[3] = v2;
  v20[0] = v2;
  v20[1] = v2;
  v19[0] = a1;
  v19[1] = 0;
  v3 = *(a1 + 8);
  if ((*(v3 + 104) & 0x80000000) != 0)
  {
    sub_100039748(v20, a1, 0, 0x40000000, 2, 10, 0, *(v3 + 36), 8, 16, 0, *(v3 + 112), sub_100030C88);
    v6 = sub_10003570C(v20, 0, sub_100033F7C, v19, 0, 1);
    if (v6)
    {
      v5 = v6;
      v14 = "NX checkpoint descriptor area fragmented metadata tree is invalid\n";
LABEL_14:
      sub_10004565C(v14, v7, v8, v9, v10, v11, v12, v13, v18);
      return v5;
    }

    v3 = *(a1 + 8);
  }

  if ((*(v3 + 108) & 0x80000000) != 0)
  {
    sub_100039748(v20, a1, 0, 0x40000000, 2, 10, 0, *(v3 + 36), 8, 16, 0, *(v3 + 120), sub_100030C88);
    v15 = sub_10003570C(v20, 0, sub_100033F7C, v19, 0, 1);
    if (v15)
    {
      v5 = v15;
      v14 = "NX checkpoint data area fragmented metadata tree is invalid\n";
      goto LABEL_14;
    }
  }

  v4 = *(a1 + 24);
  if ((*(v4 + 164) & 0x80000000) != 0)
  {
    sub_100039748(v20, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v4 + 168), sub_100030C88);
    v16 = sub_10003570C(v20, 0, sub_100033F7C, v19, 0, 1);
    if (v16)
    {
      v5 = v16;
      v14 = "Spaceman internal pool bitmap fragmented metadata tree is invalid\n";
      goto LABEL_14;
    }

    v4 = *(a1 + 24);
  }

  if ((*(v4 + 152) & 0x8000000000000000) == 0)
  {
    return 0;
  }

  sub_100039748(v20, a1, 0, 0x40000000, 2, 10, 0, *(*(a1 + 8) + 36), 8, 16, 0, *(v4 + 176), sub_100030C88);
  v5 = sub_10003570C(v20, 0, sub_100033F7C, v19, 0, 1);
  if (v5)
  {
    v14 = "Spaceman internal pool fragmented metadata tree is invalid\n";
    goto LABEL_14;
  }

  return v5;
}

uint64_t sub_100033F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (sub_100049FC8(a3, a4, a5, a6, a7, a6, a7, a8))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100033FB4(void *a1, int a2, void *a3, int a4, void *a5)
{
  result = 92;
  if (a2 == 8 && a4 == 16)
  {
    v7 = *a5 - *a3;
    if (*a5 < *a3 || v7 >= a3[1])
    {
      return 0;
    }

    else
    {
      *a5 = *a1 + v7;
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

char *sub_100034004(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((byte_10009A3B8 & 1) == 0)
  {
    if (dword_10009A3BC <= 0xFF && (v8 = result, (result = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL)) != 0))
    {
      *result = v8;
      *(result + 1) = 0;
      *off_10007C6B0 = result;
      off_10007C6B0 = (result + 8);
      ++dword_10009A3BC;
    }

    else
    {
      result = sub_100045614("more than %d inodes tracked as rolling, disabling pfkur tracking repairs\n", a2, a3, a4, a5, a6, a7, a8, 0);
      byte_10009A3B8 = 1;
    }
  }

  return result;
}

uint64_t sub_1000340B4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_10009A3B8)
  {
LABEL_8:
    v26 = 0;
LABEL_9:
    v19 = off_10007C6A8;
    if (!off_10007C6A8)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v20 = v19;
      v19 = v19[1];
      v21 = off_10007C6A8;
      if (off_10007C6A8 != v20)
      {
        break;
      }

      off_10007C6A8 = *(off_10007C6A8 + 1);
      if (!off_10007C6A8)
      {
        v24 = &off_10007C6A8;
LABEL_16:
        off_10007C6B0 = v24;
      }

LABEL_17:
      free(v20);
      if (!v19)
      {
        goto LABEL_20;
      }
    }

    do
    {
      v22 = v21;
      v21 = v21[1];
    }

    while (v21 != v20);
    v23 = v21[1];
    v22[1] = v23;
    v24 = (v22 + 1);
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v8 = off_10007C6A8;
  if (off_10007C6A8)
  {
    while (1)
    {
      sub_100045744("missing upgrade-rolling entry for inode (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *v8);
      v10 = sub_100049C40(0x3C2, -2);
      memset(v27, 0, sizeof(v27));
      if (a3)
      {
        v18 = sub_100027D7C(a3, 8, 2, 0, 1, v8, 8u, v27, 0x18u);
        if (v18)
        {
          v26 = v18;
          goto LABEL_9;
        }
      }

      else
      {
        sub_10002797C(v10, v11, v12, v13, v14, v15, v16, v17);
      }

      v8 = *(v8 + 1);
      if (!v8)
      {
        goto LABEL_8;
      }
    }
  }

  v26 = 0;
LABEL_20:
  dword_10009A3BC = 0;
  byte_10009A3B8 = 0;
  return v26;
}

uint64_t sub_100034204(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(*(a2 + 40) + 56) & 0x40) == 0)
  {
    sub_10004565C("pfkur_tree_key : object (oid 0x%llx): pfkur tree record present on non-pfkur volume\n", a2, a3, a4, a5, a6, a7, a8, *a3);
    v11 = 963;
    goto LABEL_26;
  }

  v12 = *a3;
  if ((byte_10009A3B8 & 1) == 0)
  {
    v13 = off_10007C6A8;
    if (off_10007C6A8)
    {
      v14 = off_10007C6A8;
      while (*v14 != v12)
      {
        v14 = v14[1];
        if (!v14)
        {
          goto LABEL_14;
        }
      }

      if (off_10007C6A8 == v14)
      {
        v17 = &off_10007C6A8;
        off_10007C6A8 = *(off_10007C6A8 + 1);
        if (off_10007C6A8)
        {
          goto LABEL_13;
        }
      }

      else
      {
        do
        {
          v15 = v13;
          v13 = v13[1];
        }

        while (v13 != v14);
        v16 = v13[1];
        v15[1] = v16;
        v17 = (v15 + 1);
        if (v16)
        {
          goto LABEL_13;
        }
      }

      off_10007C6B0 = v17;
LABEL_13:
      --dword_10009A3BC;
      free(v14);
      v12 = *a3;
    }
  }

LABEL_14:
  if (v12 - 0x1000000000000000 > 0xF000000000000001)
  {
    if (v12 <= 0xF)
    {
      sub_10004565C("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v12);
      sub_100049C40(0x3C5, -2);
    }

    if (*a5)
    {
      v25 = *a5;
      sub_100045744("pfk_val : object (oid 0x%llx): unknown version (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      sub_100049C40(0x3C6, -6);
    }

    if (a5[1] >= 0x10)
    {
      v26 = a5[1];
      sub_100045744("pfk_val : object (oid 0x%llx): unknown flags (%u)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      sub_100049C40(0x3C7, -3);
    }

    if (HIBYTE(*(a5 + 1)))
    {
      v27 = *(a5 + 1);
      sub_10004565C("pfk_val : object (oid 0x%llx): invalid current_offset (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v11 = 968;
    }

    else
    {
      if (!HIBYTE(*(a5 + 2)))
      {
        return 0;
      }

      v28 = *(a5 + 2);
      sub_10004565C("pfk_val : object (oid 0x%llx): invalid current_ns_offset (%llu)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
      v11 = 969;
    }
  }

  else
  {
    sub_10004565C("pfkur_key : object (oid 0x%llx): invalid oid (0x%llx)\n", a2, a3, a4, a5, a6, a7, a8, v12);
    v11 = 964;
  }

LABEL_26:
  v18 = 92;
  sub_100049C40(v11, 92);
  sub_10004588C(a2, a3, a5, v19, v20, v21, v22, v23);
  return v18;
}

uint64_t sub_100034428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, char a8)
{
  v14 = *(a1 + 48);
  v15 = *(a1 + 52) != 0;
  v22 = 0;
  v23 = 0;
  v21 = 0uLL;
  v16 = sub_100025548(*a1, *(a1 + 8), *(a1 + 40), *(a1 + 56), a3, v15 << 29, 2, v14, &v23, &v21, a8);
  if (!v16)
  {
    v18 = v23;
    v19 = v23 + DWORD2(v21) - 40;
    if (a7)
    {
      *a7 = *v19;
      v20 = *(a1 + 36);
      *(a7 + 40) = *(a1 + 52);
      *(a7 + 44) = v20;
      *(a7 + 64) = a2;
    }

    if (a4)
    {
      *a4 = v21;
      *(a4 + 16) = v22;
    }

    if (a5)
    {
      *a5 = v18;
      if (a6)
      {
        *a6 = v19;
      }
    }

    else
    {
      free(v18);
    }
  }

  return v16;
}

unint64_t sub_10003452C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, _WORD *a5, uint64_t *a6, _WORD *a7)
{
  result = sub_1000345FC(a1, a2, a3);
  if (result == 0xFFFFLL)
  {
    v14 = 0;
    LOWORD(v15) = 0;
  }

  else
  {
    v15 = result >> 16;
    v14 = a1 + result + *(a1 + 42) + 56;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 4);
  *a4 = v14;
  *a5 = v15;
  if (a6)
  {
    v18 = HIWORD(result);
    v19 = a1 + v17 + ((v16 << 31 >> 31) & 0xFFFFFFD8) - 56 - WORD2(result) + 56;
    if ((result & 0xFFFE00000000) == 0xFFFE00000000)
    {
      v19 = 0;
      LOWORD(v18) = 0;
    }

    *a6 = v19;
    *a7 = v18;
  }

  return result;
}

unint64_t sub_1000345FC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = a1 + 56;
  if ((v3 & 4) != 0)
  {
    v10 = (v4 + 4 * a3);
    v6 = *v10;
    v8 = v10[1];
    if (v6 == 0xFFFF)
    {
      LOWORD(v7) = 0;
    }

    else
    {
      v7 = *(a2 + 8);
    }

    if (v8 == 0xFFFF)
    {
      v9 = 0;
    }

    else if (v8 == 65534)
    {
      v9 = 65534;
    }

    else if ((v3 & 2) != 0)
    {
      v9 = *(a2 + 12);
    }

    else if ((v3 & 8) != 0)
    {
      v9 = *(a2 + 44) + 8;
    }

    else
    {
      v9 = 8;
    }
  }

  else
  {
    v5 = (v4 + 8 * a3);
    v6 = *v5;
    LOWORD(v7) = v5[1];
    v8 = v5[2];
    v9 = v5[3];
  }

  return (v8 << 32) | (v9 << 48) | (v7 << 16) | v6;
}

unint64_t sub_1000346A4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4, _WORD *a5, unsigned int a6, uint64_t *a7, _WORD *a8)
{
  sub_10003452C(a1, a2, a3, a4, a5, 0, 0);

  return sub_10003452C(a1, a2, a6, a7, a8, 0, 0);
}

uint64_t sub_10003471C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v12 = *(a1 + 32);
  v13 = 8;
  if ((v12 & 2) != 0)
  {
    v13 = *(a2 + 12);
  }

  if ((v12 & 4) != 0)
  {
    v14 = 4;
  }

  else
  {
    v14 = 8;
  }

  if (v12)
  {
    v15 = -96;
  }

  else
  {
    v15 = -56;
  }

  v16 = *a2;
  v17 = *(a2 + 4);
  v18 = v12 < 0x20 || a3 == 0;
  v19 = *a2;
  if (!v18)
  {
    v218 = *(a1 + 34);
    v179 = *(a1 + 28);
    v131 = *(a1 + 16);
    v155 = *(a1 + 24);
    sub_100045744("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
    sub_100049C40(0x17A, -3);
    v19 = *a2;
  }

  v20 = *(a1 + 32);
  if ((v19 & 0x80) != 0)
  {
    if ((v20 & 0x18) != 0x18)
    {
      if (v9)
      {
        v220 = *(a1 + 34);
        v157 = *(a1 + 24);
        v181 = *(a1 + 28);
        v133 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: missing btn_flags (expected 0x%x, actual 0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
        sub_100049C40(0x390, 92);
      }

      if (!a4 || !sub_10004758C(qword_10009BA58, "Set missing flags? ", a3, a4, a5, a6, a7, a8, v130))
      {
        return 92;
      }

      v20 = *(a1 + 32) | 0x18;
      *(a1 + 32) = v20;
      *a4 = 1;
    }

    v13 = (*(a2 + 44) + v13);
  }

  else if ((v20 & 0x18) != 0)
  {
    if (v9)
    {
      v219 = *(a1 + 34);
      v180 = *(a1 + 28);
      v132 = *(a1 + 16);
      v156 = *(a1 + 24);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      sub_100049C40(0x391, 92);
    }

    if (!a4 || !sub_10004758C(qword_10009BA58, "Clear unexpected flags? ", a3, a4, a5, a6, a7, a8, v130))
    {
      return 92;
    }

    v20 = *(a1 + 32) & 0xFFE7;
    *(a1 + 32) = v20;
    *a4 = 1;
  }

  v21 = v20;
  if ((v20 & 4) != 0)
  {
    if (!v13)
    {
      if (v9)
      {
        v242 = *(a2 + 12);
        v224 = *(a1 + 34);
        v161 = *(a1 + 24);
        v185 = *(a1 + 28);
        v137 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
        v22 = 92;
        v23 = 380;
        goto LABEL_52;
      }

      return 92;
    }
  }

  else if (*(a2 + 8) && v13)
  {
    if (v9)
    {
      v249 = *(a2 + 8);
      v221 = *(a1 + 34);
      v182 = *(a1 + 28);
      v134 = *(a1 + 16);
      v158 = *(a1 + 24);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_btree.bt_fixed.bt_key_size (%u) and btn_btree.bt_fixed.bt_val_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 379;
LABEL_52:
      v46 = 92;
LABEL_53:
      sub_100049C40(v23, v46);
      return v22;
    }

    return 92;
  }

  v24 = *(a1 + 42);
  if (v14 > v24)
  {
    if (v9)
    {
      v222 = *(a1 + 34);
      v183 = *(a1 + 28);
      v135 = *(a1 + 16);
      v159 = *(a1 + 24);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space.len (%u), given toc_entry_size (%u) and btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 381;
      goto LABEL_52;
    }

    return 92;
  }

  v25 = *(a1 + 36);
  if ((v12 & 4) != 0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (v25 > v24 >> v26)
  {
    if (v9)
    {
      v250 = *(a1 + 42);
      v223 = *(a1 + 34);
      v184 = *(a1 + 28);
      v136 = *(a1 + 16);
      v160 = *(a1 + 24);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_table_space.len (%u) and toc_entry_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 382;
      goto LABEL_52;
    }

    return 92;
  }

  if (!(v25 | v21 & 1))
  {
    if (v9)
    {
      v225 = *(a1 + 34);
      v162 = *(a1 + 24);
      v186 = *(a1 + 28);
      v138 = *(a1 + 16);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_nkeys (%u), given btn_flags (0x%x)\n", a2, a3, a4, a5, a6, a7, a8, *(a1 + 8));
      v22 = 92;
      v23 = 383;
      goto LABEL_52;
    }

    return 92;
  }

  v27 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
  if (!v27)
  {
LABEL_57:
    if (!v9)
    {
      return 12;
    }

    v226 = *(a1 + 34);
    v243 = *(a1 + 36);
    v187 = *(a1 + 28);
    v203 = *(a1 + 32);
    v139 = *(a1 + 16);
    v163 = *(a1 + 24);
    sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: validate_loc_ctx_alloc failed for btn_nkeys (%u)\n", v28, v29, v30, v31, v32, v33, v34, *(a1 + 8));
    v22 = 12;
    v23 = 384;
    v46 = 12;
    goto LABEL_53;
  }

  v35 = v27;
  v36 = (2 * *(a1 + 36) + 7) & 0xFFFFFFF8;
  *v35 = v36;
  v37 = malloc_type_calloc(v36, 4uLL, 0x100004052888210uLL);
  *(v35 + 8) = v37;
  if (!v37)
  {
    free(v35);
    goto LABEL_57;
  }

  if (*(a1 + 40))
  {
    v45 = 0;
    goto LABEL_61;
  }

  v45 = sub_10003533C(a1, a2, *(a1 + 40), 0, v35);
  if (!v45)
  {
    if ((*(a1 + 32) & 4) != 0)
    {
      v48 = *(a1 + 42) >> v26;
      if ((((*(a2 + 4) - 56) / ((*(a2 + 8) + v13) + 4)) & 0xFFFFFFFFFFFFFFFELL) > v48)
      {
        if (v9)
        {
          v252 = *(a1 + 42);
          v228 = *(a1 + 34);
          v245 = *(a1 + 40);
          v189 = *(a1 + 28);
          v141 = *(a1 + 16);
          v165 = *(a1 + 24);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u), given btn_flags (0x%x)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 386;
LABEL_74:
          v49 = 92;
LABEL_66:
          sub_100049C40(v50, v49);
          goto LABEL_67;
        }

        goto LABEL_79;
      }
    }

    if (*(a1 + 46))
    {
      v52 = sub_10003533C(a1, a2, *(a1 + 44), 5, v35);
      if (v52)
      {
        if (v9)
        {
          v53 = v52;
          v246 = *(a1 + 44);
          v253 = *(a1 + 46);
          v205 = *(a1 + 32);
          v229 = *(a1 + 34);
          v166 = *(a1 + 24);
          v190 = *(a1 + 28);
          v142 = *(a1 + 16);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          sub_100049C40(0x183, v53);
        }

        goto LABEL_79;
      }
    }

    v54 = *(a1 + 48);
    v263 = v35;
    if (v54 == 0xFFFF)
    {
      v55 = *(a1 + 50);
LABEL_82:
      v56 = (v15 + v17);
      v57 = *(a1 + 52);
      if (v57 != 0xFFFF)
      {
        v261 = v55;
        v86 = 0;
        v256 = v56;
        v258 = a1 + v56 + 56;
        while (1)
        {
          if ((*a2 & 0x40) != 0)
          {
            v87 = 0x40000;
          }

          else
          {
            v87 = 0x80000;
          }

          v13 = v13 & 0xFFFFFFFF00000000 | v87 | v57;
          v88 = sub_10003533C(a1, a2, v13, 4, 0);
          if (v88)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v99 = v88;
            v235 = *(a1 + 34);
            v196 = *(a1 + 28);
            v211 = *(a1 + 32);
            v148 = *(a1 + 16);
            v172 = *(a1 + 24);
            sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list offset %u\n", v89, v90, v91, v92, v93, v94, v95, *(a1 + 8));
            v100 = 391;
            goto LABEL_138;
          }

          v96 = (v258 - v57);
          v97 = v96[1];
          v262 = v262 & 0xFFFFFFFF00000000 | v57 | (v97 << 16);
          v98 = sub_10003533C(a1, a2, v57 | (v97 << 16), 4, v263);
          if (v98)
          {
            break;
          }

          v86 += v97;
          v57 = *v96;
          if (v57 == 0xFFFF)
          {
            v58 = *(a1 + 54);
            v35 = v263;
            v56 = v256;
            v55 = v261;
            if (v58 >= v86)
            {
              goto LABEL_84;
            }

            if (v9)
            {
              v248 = *(a1 + 54);
              v207 = *(a1 + 32);
              v231 = *(a1 + 34);
              v168 = *(a1 + 24);
              v192 = *(a1 + 28);
              v144 = *(a1 + 16);
              sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list length (%u), given total value length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
              v22 = 92;
              v50 = 393;
              goto LABEL_74;
            }

            goto LABEL_79;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v99 = v98;
        v213 = *(a1 + 32);
        v237 = *(a1 + 34);
        v174 = *(a1 + 24);
        v198 = *(a1 + 28);
        v150 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_val_free_list entry (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
        v100 = 392;
LABEL_138:
        v103 = v99;
        goto LABEL_145;
      }

      v58 = *(a1 + 54);
LABEL_84:
      if (*(a1 + 36))
      {
        v255 = v56;
        v257 = v58;
        v59 = 0;
        while (1)
        {
          v260 = v55;
          v60 = sub_1000345FC(a1, a2, v59);
          v35 = v35 & 0xFFFFFFFF00000000 | v60;
          v61 = sub_10003533C(a1, a2, v35, 1, v263);
          if (v61)
          {
            if (!v9)
            {
              goto LABEL_146;
            }

            v101 = v61;
            v214 = *(a1 + 32);
            v238 = *(a1 + 34);
            v175 = *(a1 + 24);
            v199 = *(a1 + 28);
            v151 = *(a1 + 16);
            sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key (%u, %u)\n", v62, v63, v64, v65, v66, v67, v68, *(a1 + 8));
            v100 = 394;
            goto LABEL_144;
          }

          v69 = HIWORD(v60);
          v262 = v262 & 0xFFFFFFFF00000000 | WORD2(v60) | (HIWORD(v60) << 16);
          v70 = sub_10003533C(a1, a2, WORD2(v60) | (HIWORD(v60) << 16), 2, v263);
          if (v70)
          {
            break;
          }

          if (WORD1(v60) > *(a2 + 16))
          {
            *(a2 + 16) = WORD1(v60);
          }

          if ((*(a1 + 32) & 2) != 0 && v69 != 65534 && *(a2 + 20) < v69)
          {
            *(a2 + 20) = v69;
          }

          v71 = v60 >> 16;
          if ((v16 & 0x40) == 0)
          {
            LODWORD(v71) = ((v60 >> 16) + 7) & 0xFFFFFFF8;
          }

          if (v69 != 65534)
          {
            if ((v16 & 0x40) != 0)
            {
              v257 += v69;
            }

            else
            {
              v257 += (v69 + 7) & 0x1FFF8;
            }
          }

          v55 = v71 + v260;
          ++v59;
          v72 = *(a1 + 36);
          if (v59 >= v72)
          {
            v35 = v263;
            v56 = v255;
            LOWORD(v58) = v257;
            goto LABEL_128;
          }
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v101 = v70;
        v215 = *(a1 + 32);
        v239 = *(a1 + 34);
        v176 = *(a1 + 24);
        v200 = *(a1 + 28);
        v152 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid value (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
        v100 = 395;
LABEL_144:
        v103 = v101;
        goto LABEL_145;
      }

      v72 = 0;
LABEL_128:
      v102 = *(a1 + 44);
      if (v102 < v55)
      {
        if (v9)
        {
          v254 = *(a1 + 46);
          v234 = *(a1 + 34);
          v195 = *(a1 + 28);
          v210 = *(a1 + 32);
          v147 = *(a1 + 16);
          v171 = *(a1 + 24);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total key length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 396;
          goto LABEL_74;
        }

LABEL_79:
        v22 = 92;
        goto LABEL_67;
      }

      if (*(a1 + 46) + v102 < v56 - (*(a1 + 42) + v58))
      {
        if (v9)
        {
          v236 = *(a1 + 34);
          v197 = *(a1 + 28);
          v212 = *(a1 + 32);
          v149 = *(a1 + 16);
          v173 = *(a1 + 24);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_free_space (%u, %u), given total value length (%u) (%d %d %d = %d)\n", v56, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v22 = 92;
          v50 = 397;
          goto LABEL_74;
        }

        goto LABEL_79;
      }

      v104 = sub_100035670(a1, a2, v35);
      if (v104)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        v112 = v104;
        v113 = *(a1 + 8);
        v114 = *(a1 + 16);
        v115 = *(a1 + 32);
        v116 = *(a1 + 34);
        v118 = *(a1 + 24);
        v117 = *(a1 + 28);
        strerror(v104);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list, btn_val_free_list, or btn_free_space: %s\n", v119, v120, v121, v122, v123, v124, v125, v113);
        v100 = 398;
        v103 = v112;
LABEL_145:
        sub_100049C40(v100, v103);
LABEL_146:
        v22 = 92;
        goto LABEL_147;
      }

      v126 = *(a2 + 24);
      v127 = __CFADD__(v126, v72);
      v128 = v126 + v72;
      if (v127)
      {
        if (!v9)
        {
          goto LABEL_146;
        }

        v216 = *(a1 + 32);
        v240 = *(a1 + 34);
        v177 = *(a1 + 24);
        v201 = *(a1 + 28);
        v153 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (overflow)\n", v105, v106, v107, v108, v109, v110, v111, *(a1 + 8));
        v22 = 92;
        v85 = 399;
      }

      else
      {
        v129 = *(a2 + 32);
        if (v129 != -1)
        {
          if ((*(a1 + 32) & 2) != 0)
          {
            *(a2 + 24) = v128;
          }

          *(a2 + 32) = v129 + 1;
          v22 = 0;
          goto LABEL_147;
        }

        if (!v9)
        {
          goto LABEL_146;
        }

        v217 = *(a1 + 32);
        v241 = *(a1 + 34);
        v178 = *(a1 + 24);
        v202 = *(a1 + 28);
        v154 = *(a1 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (overflow)\n", v105, v106, v107, v108, v109, v110, v111, *(a1 + 8));
        v22 = 92;
        v85 = 400;
      }
    }

    else
    {
      v73 = 0;
      v13 = a1 + 56;
      do
      {
        if ((*a2 & 0x40) != 0)
        {
          v74 = 0x40000;
        }

        else
        {
          v74 = 0x80000;
        }

        v262 = v48 & 0xFFFFFFFF00000000 | v74 | v54;
        v75 = sub_10003533C(a1, a2, v74 | v54, 3, 0);
        if (v75)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v99 = v75;
          v232 = *(a1 + 34);
          v193 = *(a1 + 28);
          v208 = *(a1 + 32);
          v145 = *(a1 + 16);
          v169 = *(a1 + 24);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list offset %u\n", v76, v77, v78, v79, v80, v81, v82, *(a1 + 8));
          v100 = 388;
          goto LABEL_138;
        }

        v83 = *(v13 + *(a1 + 42) + v54 + 2);
        v259 = v259 & 0xFFFFFFFF00000000 | v54 | (v83 << 16);
        v84 = sub_10003533C(a1, a2, v54 | (v83 << 16), 3, v263);
        if (v84)
        {
          if (!v9)
          {
            goto LABEL_146;
          }

          v101 = v84;
          v209 = *(a1 + 32);
          v233 = *(a1 + 34);
          v170 = *(a1 + 24);
          v194 = *(a1 + 28);
          v146 = *(a1 + 16);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list entry (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
          v100 = 389;
          goto LABEL_144;
        }

        v73 += v83;
        v54 = *(v13 + *(a1 + 42) + v54);
        v48 = v262;
      }

      while (v54 != 0xFFFF);
      if (*(a1 + 50) >= v73)
      {
        v55 = *(a1 + 50);
        v35 = v263;
        goto LABEL_82;
      }

      if (!v9)
      {
        goto LABEL_146;
      }

      v247 = *(a1 + 50);
      v206 = *(a1 + 32);
      v230 = *(a1 + 34);
      v167 = *(a1 + 24);
      v191 = *(a1 + 28);
      v143 = *(a1 + 16);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_key_free_list length (%u), given total key length (%u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
      v22 = 92;
      v85 = 390;
    }

    sub_100049C40(v85, 92);
LABEL_147:
    v35 = v263;
    goto LABEL_67;
  }

LABEL_61:
  v22 = 92;
  if (v9)
  {
    v244 = *(a1 + 40);
    v251 = *(a1 + 42);
    v204 = *(a1 + 32);
    v227 = *(a1 + 34);
    v164 = *(a1 + 24);
    v188 = *(a1 + 28);
    v140 = *(a1 + 16);
    sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_table_space (%u, %u)\n", v38, v39, v40, v41, v42, v43, v44, *(a1 + 8));
    if (v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = 92;
    }

    v50 = 385;
    goto LABEL_66;
  }

LABEL_67:
  v51 = *(v35 + 8);
  if (v51)
  {
    free(v51);
  }

  free(v35);
  return v22;
}

uint64_t sub_10003533C(unsigned __int16 *a1, _DWORD *a2, int a3, int a4, uint64_t a5)
{
  v6 = a3;
  v8 = HIWORD(a3);
  v9 = a1[16];
  if ((v9 & 2) != 0)
  {
    v10 = a2[3];
  }

  else if ((v9 & 8) != 0)
  {
    v10 = a2[11] + 8;
  }

  else
  {
    v10 = 8;
  }

  v11 = *a2;
  if (a3 == 0xFFFF || !HIWORD(a3))
  {
    result = 22;
    if (a3 == 0xFFFF)
    {
      if ((v11 & 4) != 0 && a4 == 2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 22;
      }

      if ((v9 & 2) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 22;
      }

      if (HIWORD(a3))
      {
        return 22;
      }

      else
      {
        return v18;
      }
    }

    return result;
  }

  v12 = a1[22];
  v13 = a2[1] + ((v9 << 31 >> 31) & 0xFFFFFFD8) - 56;
  v14 = 8;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      if (HIWORD(a3) <= 0x340u)
      {
        v20 = a2[2];
        v14 = 1;
        if (!v20 || HIWORD(a3) == v20)
        {
LABEL_46:
          result = 84;
          if (v12 <= a3 || HIWORD(a3) > (v12 - a3))
          {
            return result;
          }

          goto LABEL_48;
        }

        return 22;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_41;
      }

      if (a3 == 65534 || HIWORD(a3) == 65534)
      {
        result = 22;
        if (a3 == 65534 && HIWORD(a3) == 65534)
        {
          if ((v11 & 4) != 0)
          {
            v27 = 0;
          }

          else
          {
            v27 = 22;
          }

          if ((v9 & 2) != 0)
          {
            return v27;
          }

          else
          {
            return 22;
          }
        }

        return result;
      }

      if (HIWORD(a3) <= 0xEE0u)
      {
        v14 = 1;
        if (!v10 || HIWORD(a3) == v10)
        {
          goto LABEL_33;
        }

        return 22;
      }
    }

    return 7;
  }

  if (a4 == 3)
  {
    goto LABEL_46;
  }

  if (a4 != 4)
  {
    if (a4 != 5)
    {
      goto LABEL_41;
    }

LABEL_48:
    v6 = a1[21] + a3;
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_33:
  if (a3 > v13 - (a1[23] + v12) || HIWORD(a3) > a3)
  {
    return 84;
  }

  v6 = *(a2 + 2) + (((v9 << 15) >> 15) & 0xFFD8) - 56 - a3;
LABEL_41:
  if ((v11 & 0x40) != 0)
  {
    goto LABEL_52;
  }

LABEL_49:
  if ((v6 & 7) != 0 || HIWORD(a3) % v14)
  {
    return 14;
  }

LABEL_52:
  result = 84;
  if (v13 < v6 || HIWORD(a3) > v13 - v6)
  {
    return result;
  }

  if (!a5)
  {
    return 0;
  }

  v21 = *(a5 + 4);
  if (v21)
  {
    v22 = 0;
    v23 = *(a5 + 4);
    do
    {
      if (v6 >= *(*(a5 + 8) + 4 * ((v22 + v23) >> 1)))
      {
        v22 = ((v22 + v23) >> 1) + 1;
      }

      else
      {
        v23 = (v22 + v23) >> 1;
      }
    }

    while (v22 < v23);
    if (v22)
    {
      v24 = (*(a5 + 8) + 4 * (v22 - 1));
      v25 = *v24;
      if (v24[1] + v25 > v6 && HIWORD(a3) + v6 > v25)
      {
        return 34;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (v22 < v21)
  {
    v28 = (*(a5 + 8) + 4 * v22);
    v29 = *v28;
    if (v28[1] + v29 > v6 && HIWORD(a3) + v6 > v29)
    {
      return 34;
    }
  }

  if (v21 == *a5)
  {
    v31 = v21 + 8;
    *a5 = v31;
    v32 = reallocf(*(a5 + 8), 4 * v31);
    *(a5 + 8) = v32;
    if (!v32)
    {
      return 12;
    }

    v21 = *(a5 + 4);
  }

  if (v21 > v22)
  {
    memmove((*(a5 + 8) + 4 * (v22 + 1)), (*(a5 + 8) + 4 * v22), 4 * (v21 - v22));
    v21 = *(a5 + 4);
  }

  result = 0;
  v33 = (*(a5 + 8) + 4 * v22);
  *v33 = v6;
  v33[1] = v8;
  *(a5 + 4) = v21 + 1;
  return result;
}

uint64_t sub_100035670(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + 4);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a3 + 8);
    while (1)
    {
      if ((v3 & 0x40) != 0)
      {
        v6 = *v7;
      }

      else
      {
        v8 = ((v5 + 7) & 0x1FFF8) + v6;
        v6 = *v7;
        if (v8 != v6)
        {
          return 22;
        }
      }

      v5 = v7[1];
      v7 += 2;
      if (!--v4)
      {
        v9 = ((v5 + 7) & 0x1FFF8) + v6;
        goto LABEL_9;
      }
    }
  }

  v9 = 0;
LABEL_9:
  v10 = (v3 >> 6) & 1;
  if (v9 == a2[1] + ((*(a1 + 32) << 31 >> 31) & 0xFFFFFFD8) - 56)
  {
    v10 = 1;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10003570C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, unsigned __int8 *, void, uint64_t *, void, uint64_t, int *), uint64_t a4, void *a5, char a6)
{
  if (*(a1 + 44) != 2)
  {
    return 45;
  }

  v12 = *(a1 + 56);
  v184 = 0;
  memset(v185, 170, sizeof(v185));
  v183 = 0;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v178 = 0u;
  memset(v187, 0, sizeof(v187));
  v186 = v12;
  v177 = -1;
  v20 = sub_100034428(a1, v12, a2, v185, &v184, &v183, &v178, a6);
  if (!v20)
  {
    v21 = v183;
    v22 = *v183;
    if ((*v183 & 0xFFFFFE20) != 0)
    {
      v156 = *(v184 + 17);
      v127 = *(v184 + 7);
      v144 = *(v184 + 16);
      v93 = v184[2];
      v110 = *(v184 + 6);
      sub_100045744("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
      sub_100049C40(0x19A, -3);
      v21 = v183;
      v22 = *v183;
    }

    if ((~v22 & 0x18) == 0)
    {
      v157 = *(v184 + 17);
      v128 = *(v184 + 7);
      v145 = *(v184 + 16);
      v94 = v184[2];
      v111 = *(v184 + 6);
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
      v20 = 92;
      v24 = 411;
LABEL_36:
      v33 = 92;
LABEL_37:
      sub_100049C40(v24, v33);
      goto LABEL_38;
    }

    v25 = v22 & 0x180;
    v26 = *(a1 + 52);
    if (v25 == 384)
    {
      if (v26)
      {
        goto LABEL_11;
      }
    }

    else if (!(v26 | v25))
    {
LABEL_11:
      if (((v22 << 26) & 0x40000000 | ((v22 >> 3) << 31)) != *(a1 + 40))
      {
        v160 = *(v184 + 17);
        v131 = *(v184 + 7);
        v147 = *(v184 + 16);
        v97 = v184[2];
        v114 = *(v184 + 6);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_flags (0x%x), given mt_btflags\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 412;
        goto LABEL_36;
      }

      v27 = *(a1 + 24);
      if (v27 && v21[1] != v27)
      {
        v149 = *(v184 + 16);
        v162 = *(v184 + 17);
        v116 = *(v184 + 6);
        v133 = *(v184 + 7);
        v99 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_node_size (%u), given mt_node_size (%u)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 415;
        goto LABEL_36;
      }

      v28 = v21[2];
      v29 = v184;
      if (v28 > 0x340 || (v28 & 3) != 0)
      {
        v161 = *(v184 + 17);
        v132 = *(v184 + 7);
        v148 = *(v184 + 16);
        v98 = v184[2];
        v115 = *(v184 + 6);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 416;
        goto LABEL_36;
      }

      if (!v28 && (v184[4] & 4) != 0)
      {
        v158 = *(v184 + 17);
        v112 = *(v184 + 6);
        v129 = *(v184 + 7);
        v95 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_flags (0x%x)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 417;
        goto LABEL_36;
      }

      if ((v22 & 1) != 0 && v28 != 8)
      {
        v163 = *(v184 + 17);
        v117 = *(v184 + 6);
        v134 = *(v184 + 7);
        v100 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 418;
        goto LABEL_36;
      }

      v30 = *(a1 + 28);
      if (v30 && v28 != v30)
      {
        v164 = *(v184 + 17);
        v118 = *(v184 + 6);
        v135 = *(v184 + 7);
        v101 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_key_size (%u), given mt_key_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 419;
        goto LABEL_36;
      }

      v31 = v21[3];
      if (v31 > 0xEE0 || (v31 & 7) != 0)
      {
        v166 = *(v184 + 17);
        v137 = *(v184 + 7);
        v103 = v184[2];
        v120 = *(v184 + 6);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 420;
        goto LABEL_36;
      }

      v32 = *(a1 + 32);
      if (v32 && v31 != v32)
      {
        v165 = *(v184 + 17);
        v119 = *(v184 + 6);
        v136 = *(v184 + 7);
        v102 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_fixed.bt_val_size (%u), given mt_val_size (%u)\n", v13, v14, v184, v16, v17, v18, v19, v184[1]);
        v20 = 92;
        v24 = 421;
        goto LABEL_36;
      }

      if (v25 == 384)
      {
        v34 = sub_10004BB6C(*a1, *(a1 + 8), a2, &v182 + 8, &v181, &v181 + 1, v187, 0x40u);
        if (v34)
        {
LABEL_44:
          v20 = v34;
          goto LABEL_38;
        }

        v29 = v184;
      }

      v175 = 0uLL;
      v176 = 0;
      v173 = *v185;
      v174 = *&v185[16];
      v34 = sub_100036064(a1, 0, &v175, v29, &v173, &v186, a2, a3, a4, 0, 0, 0, 0, &v177, &v178, 1u, a6);
      if (v34)
      {
        goto LABEL_44;
      }

      if (BYTE11(v182) == 1)
      {
        do
        {
          sub_100045428("Restarting tree validation in case more minkey errors exist...\n", v35, v36, v37, v38, v39, v40, v41, v92);
          BYTE11(v182) = 0;
          BYTE9(v182) = 1;
          v43 = v180;
          v175 = 0uLL;
          v176 = 0;
          v173 = *v185;
          v174 = *&v185[16];
          v34 = sub_100036064(a1, 0, &v175, v184, &v173, &v186, a2, 0, 0, 0, 0, 0, 0, &v177, &v178, 1u, 0);
          if (v34)
          {
            goto LABEL_44;
          }

          *&v180 = v43;
        }

        while ((BYTE11(v182) & 1) != 0);
      }

      v44 = v183;
      v45 = v183[4];
      if (v45 > 0x340 || v45 < v179)
      {
        v150 = *(v184 + 16);
        v167 = *(v184 + 17);
        v121 = *(v184 + 6);
        v138 = *(v184 + 7);
        v104 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (expected %u, actual %u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        sub_100049C40(0x1AA, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix btree: bt_longest_key (%u)? ", v47, v48, v49, v50, v51, v52, v183[4]))
        {
          goto LABEL_38;
        }

        v45 = v179;
        v44 = v183;
        v183[4] = v179;
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (*(v44 + 3))
      {
        v53 = v44[2];
        if (v53)
        {
          if (v45 != v53)
          {
            v151 = *(v184 + 16);
            v168 = *(v184 + 17);
            v122 = *(v184 + 6);
            v139 = *(v184 + 7);
            v105 = v184[2];
            sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_key (%u), given btn_btree.bt_fixed.bt_key_size (%u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
            v20 = 92;
            sub_100049C40(0x1AB, 92);
            if (!sub_10004758C(qword_10009BA58, "Fix btree: bt_longest_key (%u)? ", v54, v55, v56, v57, v58, v59, v183[4]))
            {
              goto LABEL_38;
            }

            v44 = v183;
            v183[4] = v183[2];
            v46 = 1;
          }
        }
      }

      v60 = v44[5];
      if (v60 > 0xEE0 || (v61 = v44[5], v60 < DWORD1(v179)))
      {
        v152 = *(v184 + 16);
        v169 = *(v184 + 17);
        v123 = *(v184 + 6);
        v140 = *(v184 + 7);
        v106 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (expected %u, actual %u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        sub_100049C40(0x1AC, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix btree: bt_longest_val (%u)? ", v62, v63, v64, v65, v66, v67, v183[5]))
        {
          goto LABEL_38;
        }

        v61 = DWORD1(v179);
        v44 = v183;
        v183[5] = DWORD1(v179);
        v46 = 1;
      }

      v68 = *(v44 + 3);
      if (v68)
      {
        v69 = v44[3];
        if (v69)
        {
          if (v61 != v69 && (v61 || (*v44 & 4) == 0))
          {
            v153 = *(v184 + 16);
            v170 = *(v184 + 17);
            v124 = *(v184 + 6);
            v141 = *(v184 + 7);
            v107 = v184[2];
            sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_longest_val (%u), given btn_btree.bt_fixed.bt_val_size (%u)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
            v20 = 92;
            sub_100049C40(0x1AD, 92);
            if (!sub_10004758C(qword_10009BA58, "Fix btree: bt_longest_val (%u)? ", v70, v71, v72, v73, v74, v75, v183[5]))
            {
              goto LABEL_38;
            }

            v44 = v183;
            v183[5] = v183[3];
            v68 = *(v44 + 3);
            v46 = 1;
          }
        }
      }

      if (v68 == *(&v179 + 1))
      {
        if (*(v44 + 4) == v180)
        {
          if (!v46)
          {
            goto LABEL_80;
          }

          goto LABEL_77;
        }
      }

      else
      {
        v154 = *(v184 + 16);
        v171 = *(v184 + 17);
        v125 = *(v184 + 6);
        v142 = *(v184 + 7);
        v108 = v184[2];
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_key_count (expected %llu, actual %llu)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
        v20 = 92;
        sub_100049C40(0x1AE, 92);
        if (!sub_10004758C(qword_10009BA58, "Fix btree: bt_key_count (%llu)? ", v76, v77, v78, v79, v80, v81, *(v183 + 3)))
        {
          goto LABEL_38;
        }

        v82 = v183;
        *(v183 + 3) = *(&v179 + 1);
        if (*(v82 + 4) == v180)
        {
LABEL_77:
          v89 = *a1;
          v90 = *(a1 + 8);
          v175 = *v185;
          v176 = *&v185[16];
          v91 = sub_100026A10(v89, v90, v184, &v175, *v185, v42);
          if (v91)
          {
            v20 = v91;
            v24 = 434;
            v33 = v20;
            goto LABEL_37;
          }

          sub_100049BF0();
LABEL_80:
          v20 = 0;
          if (a5)
          {
            *a5 = *(&v179 + 1);
          }

          goto LABEL_38;
        }
      }

      v155 = *(v184 + 16);
      v172 = *(v184 + 17);
      v126 = *(v184 + 6);
      v143 = *(v184 + 7);
      v109 = v184[2];
      sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_btree.bt_node_count (expected %llu, actual %llu)\n", v35, v36, v37, v38, v39, v40, v41, v184[1]);
      v20 = 92;
      sub_100049C40(0x1AF, 92);
      if (sub_10004758C(qword_10009BA58, "Fix btree: bt_node_count (%llu)? ", v83, v84, v85, v86, v87, v88, *(v183 + 4)))
      {
        *(v183 + 4) = v180;
        goto LABEL_77;
      }

LABEL_38:
      if (v184)
      {
        free(v184);
      }

      return v20;
    }

    v159 = *(v184 + 17);
    v130 = *(v184 + 7);
    v146 = *(v184 + 16);
    v96 = v184[2];
    v113 = *(v184 + 6);
    sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unexpected btn_btree.bt_fixed.bt_flags (0x%x)\n", v13, v14, v15, v16, v17, v18, v19, v184[1]);
    v20 = 92;
    v24 = 914;
    goto LABEL_36;
  }

  return v20;
}

uint64_t sub_100036064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void, unsigned __int8 *, void, uint64_t *, void, uint64_t, int *), uint64_t a9, unsigned __int8 *a10, unsigned int a11, void *a12, unsigned int a13, _WORD *a14, uint64_t a15, unsigned __int8 a16, char a17)
{
  v18 = a14;
  v19 = a11;
  v299 = a10;
  v296 = 0;
  v297 = 0;
  v295 = a11;
  v294 = -21846;
  v293 = 0;
  v291 = 0;
  if (*(a5 + 8) != *(a15 + 4))
  {
    v273 = *(a5 + 8);
    v260 = *(a4 + 32);
    v267 = *(a4 + 34);
    v236 = *(a4 + 24);
    v248 = *(a4 + 28);
    v227 = *(a4 + 16);
    sub_100045744("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: invalid cpm_size or ov_size (%u), given btn_btree.bt_fixed.bt_node_size (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
    v27 = 92;
    v56 = 401;
    goto LABEL_15;
  }

  v20 = a6;
  v23 = *(a4 + 32);
  if ((v23 & 1) != a16)
  {
    v24 = *(a4 + 16);
    v25 = "not a root";
    if (a16)
    {
      v25 = "a root";
    }

    v272 = *(a4 + 32);
    v276 = v25;
    v259 = v272;
    v266 = *(a4 + 34);
    v235 = *(a4 + 24);
    v247 = *(a4 + 28);
    if (a16)
    {
      v26 = "Set";
    }

    else
    {
      v26 = "Clear";
    }

    sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
    v27 = 92;
    sub_100049C40(0x192, 92);
    if (!sub_10004758C(qword_10009BA58, "%s BTNODE_ROOT flag? ", v28, v29, v30, v31, v32, v33, v26))
    {
      goto LABEL_48;
    }

    v23 = *(a4 + 32) & 0xFFFE | a16;
    *(a4 + 32) = v23;
    v291 = 1;
  }

  v34 = *(a4 + 34);
  v282 = v20;
  if ((*(a4 + 34) == 0) == ((v23 & 2) == 0))
  {
    if ((v23 & 1) == 0 || (v58 = a4 + *(a5 + 8), v59 = *(a4 + 36), v60 = *(v58 - 16), (v60 == v59) == (*(v58 - 8) != 1)))
    {
      v66 = *a14;
      v20 = v282;
      if (v66 != 0xFFFF && v34 == v66)
      {
        v67 = *(a4 + 16);
        v68 = "not a leaf";
        if (!*(a4 + 34))
        {
          v68 = "a leaf";
        }

        v272 = v23;
        v276 = v68;
        v259 = v23;
        v266 = *(a4 + 34);
        v237 = *(a4 + 24);
        v249 = *(a4 + 28);
        if (*(a4 + 34))
        {
          v69 = "Clear";
        }

        else
        {
          v69 = "Set";
        }

        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, *(a4 + 8));
        v27 = 92;
        sub_100049C40(0x4AF, 92);
        if (!sub_10004758C(qword_10009BA58, "%s BTNODE_LEAF flag? ", v70, v71, v72, v73, v74, v75, v69))
        {
          goto LABEL_48;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v34 == 0));
        v291 = 1;
      }
    }

    else
    {
      v61 = *(a4 + 8);
      v62 = *(a4 + 16);
      v63 = *(a4 + 24);
      v64 = *(a4 + 28);
      v65 = "not a leaf";
      if (v60 == v59)
      {
        v65 = "a leaf";
      }

      if ((v34 == 0) != (v60 == v59))
      {
        v272 = *(a4 + 34);
        v276 = v65;
        v259 = v23;
        v266 = v272;
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (%u), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, v61);
        sub_100049C40(0x4AE, 92);
      }

      else
      {
        v272 = v23;
        v276 = v65;
        v259 = v23;
        v266 = *(a4 + 34);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", a2, a3, a4, a5, a6, a7, a8, v61);
        v27 = 92;
        sub_100049C40(0x4AD, 92);
        v197 = "Clear";
        if (v60 == v59)
        {
          v197 = "Set";
        }

        if (!sub_10004758C(qword_10009BA58, "%s BTNODE_LEAF flag? ", v191, v192, v193, v194, v195, v196, v197))
        {
          goto LABEL_48;
        }

        *(a4 + 32) = *(a4 + 32) & 0xFFFD | (2 * (v60 == v59));
        v291 = 1;
      }

      v20 = v282;
    }
  }

  v298 = 0xAAAAAAAAAAAAAAAALL;
  v292 = -1431655766;
  v35 = sub_10003471C(a4, a15, 1, &v291, a5, a6, a7, a8);
  v44 = *(a4 + 32);
  if (v35)
  {
    v45 = v35;
    *(a4 + 32) = v44 ^ 2;
    v46 = sub_10003471C(a4, a15, 0, &v291, v39, v40, v41, v42);
    v54 = *(a4 + 32);
    *(a4 + 32) = v54 ^ 2;
    if (v46)
    {
      goto LABEL_13;
    }

    v76 = *(a4 + 16);
    v77 = "a leaf";
    if ((v54 & 2) == 0)
    {
      v77 = "not a leaf";
    }

    v272 = v54 ^ 2u;
    v276 = v77;
    v259 = v272;
    v266 = *(a4 + 34);
    v238 = *(a4 + 24);
    v250 = *(a4 + 28);
    v78 = (v54 & 2) != 0 ? "Set" : "Clear";
    sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btree node is %s\n", v47, v48, v49, v50, v51, v52, v53, *(a4 + 8));
    sub_100049C40(0x480, 92);
    v35 = sub_10004758C(qword_10009BA58, "%s BTNODE_LEAF flags? ", v79, v80, v81, v82, v83, v84, v78);
    if (!v35)
    {
LABEL_13:
      v55 = sub_100008ED8(a1, a15, *(a4 + 8), *(a4 + 16), *(a4 + 34), a10, a11, a12, a13, v45);
      goto LABEL_46;
    }

    v85 = *(a4 + 32);
    v44 = v85 ^ 2;
    *(a4 + 32) = v85 ^ 2;
    if ((v54 & 2) != 0)
    {
      *(a4 + 34) = 0;
    }

    v291 = 1;
  }

  v86 = a1;
  if ((v44 & 2) != 0 && sub_10001C204(v35, v36, v37, v38, v39, v40, v41, v42))
  {
    sub_10004565C("fsck_apfs is out of memory - some cross checks are skipped\n", v36, v37, v87, v39, v40, v41, v42, v224);
    sub_100049C40(0x585, 12);
  }

  if (!*(a1 + 52) || (v55 = sub_10004BF14(a15, a4, v20, *(a1 + 24), v39, v40, v41, v42), !v55))
  {
    v279 = a5;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v284 = v44;
    v278 = v44 << 25;
    v283 = a13;
    v92 = *(a4 + 36);
    v93 = a10;
    while (1)
    {
      v94 = v19;
      v95 = v93;
      if (v92 <= v89)
      {
        v93 = a12;
        v296 = 0;
        v297 = a12;
        HIWORD(v293) = a13;
        if (!v95)
        {
          goto LABEL_119;
        }
      }

      else
      {
        sub_10003452C(a4, a15, v89, &v297, &v293 + 1, &v296, &v293);
        v93 = v297;
        if (!v95)
        {
          goto LABEL_119;
        }
      }

      if (v93)
      {
        v96 = *(v86 + 8);
        if (v96)
        {
          v97 = *(v96 + 40);
        }

        else
        {
          v97 = 0;
        }

        v98 = HIWORD(v293);
        v285 = v95;
        v288 = v93;
        v99 = (*(v86 + 16))(v97, v95, v94);
        if (v99 == 45)
        {
          v272 = (v89 - 1);
          v276 = v89;
          v259 = *(a4 + 32);
          v266 = *(a4 + 34);
          v239 = *(a4 + 24);
          v251 = *(a4 + 28);
          v228 = *(a4 + 16);
          sub_100045744("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nwarning: btn: can't compare key (%u) with key (%u)\n", v36, v37, v100, v39, v40, v41, v42, *(a4 + 8));
          sub_100049C40(0x55F, -5);
          v101 = (v89 != 0) << 31 >> 31;
          v292 = v101;
        }

        else
        {
          v27 = v99;
          if (v99)
          {
            v263 = *(a4 + 32);
            v269 = *(a4 + 34);
            v243 = *(a4 + 24);
            v255 = *(a4 + 28);
            v231 = *(a4 + 16);
            sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: key (%u) compare error: %d\n", v36, v37, v100, v39, v40, v41, v42, *(a4 + 8));
            v216 = 403;
LABEL_165:
            v217 = v27;
            goto LABEL_166;
          }

          v101 = v292;
        }

        v95 = v285;
        if (!v89 && v101)
        {
          v102 = *(a4 + 16);
          v103 = v101 < 0;
          v104 = "greater than";
          if (v103)
          {
            v104 = "less than";
          }

          v266 = *(a4 + 34);
          v272 = v104;
          v252 = *(a4 + 28);
          v259 = *(a4 + 32);
          v240 = *(a4 + 24);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: minkey is %s index 0 (should be equal)\n", v36, v37, v100, v39, v40, v41, v42, *(a4 + 8));
          v105 = 1117;
          goto LABEL_67;
        }

        v86 = a1;
        v93 = v288;
        if (v89)
        {
          if ((v101 & 0x80000000) == 0)
          {
            v151 = *(a4 + 8);
            v152 = *(a4 + 16);
            v153 = *(a4 + 24);
            v154 = *(a4 + 28);
            v155 = *(a4 + 32);
            v156 = *(a4 + 34);
            v157 = v101 == 0;
            v158 = "greater than";
            if (v157)
            {
              v158 = "equal to";
            }

            if (v89 == *(a4 + 36))
            {
              v272 = (v89 - 1);
              v276 = v158;
              v259 = *(a4 + 32);
              v266 = *(a4 + 34);
              sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s maxkey (should be less than)\n", v36, v37, v288, v39, v40, v41, v42, v151);
              v105 = 1118;
            }

            else
            {
              v276 = v158;
              v277 = v89;
              v266 = *(a4 + 34);
              v272 = (v89 - 1);
              v259 = *(a4 + 32);
              sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid key order: index %u is %s index %u (should be less than)\n", v36, v37, v288, v39, v40, v41, v42, v151);
              v105 = 404;
            }

LABEL_67:
            sub_100049C40(v105, 92);
            v106 = v94;
            if (v94 <= v98)
            {
              v106 = v98;
            }

            v107 = 3 * v106 + 1;
            v108 = malloc_type_malloc(v107, 0x19ECC3C2uLL);
            *&v116 = 0xAAAAAAAAAAAAAAAALL;
            *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *__str = v116;
            v314 = v116;
            if (v108)
            {
              v117 = v108;
              if (v89 && v90)
              {
                sub_10003710C(__str, v89 - 1, *(a4 + 36));
                sub_100037198(v117, v107, v90, v91);
                sub_100045428("\t%-14s: %s\n", v118, v119, v120, v121, v122, v123, v124, __str);
              }

              sub_10003710C(__str, v89, *(a4 + 36));
              sub_100037198(v117, v107, v285, v94);
              sub_100045428("\t%-14s: %s\n", v125, v126, v127, v128, v129, v130, v131, __str);
              sub_10003710C(__str, v89 + 1, *(a4 + 36));
              sub_100037198(v117, v107, v288, v98);
              sub_100045428("\t%-14s: %s\n", v132, v133, v134, v135, v136, v137, v138, __str);
              v139 = *(a4 + 36);
              if (v89 < v139)
              {
                *v302 = 0xAAAAAAAAAAAAAAAALL;
                LOWORD(v300) = -21846;
                v140 = a13;
                v141 = a12;
                if (v139 > v89 + 1)
                {
                  sub_10003452C(a4, a15, v89 + 1, v302, &v300, 0, 0);
                  v139 = *(a4 + 36);
                  v141 = *v302;
                  v140 = v300;
                }

                sub_10003710C(__str, v89 + 2, v139);
                sub_100037198(v117, v107, v141, v140);
                sub_100045428("\t%-14s: %s\n", v142, v143, v144, v145, v146, v147, v148, __str);
              }

              free(v117);
            }

            v27 = 92;
            if (v89 || (v292 & 0x80000000) == 0)
            {
              goto LABEL_47;
            }

            sub_100045428("Checking if the parent's minkey can be updated...\n", v109, v110, v111, v112, v113, v114, v115, v225);
            *v289 = *a3;
            v290 = *(a3 + 16);
            v311 = 0xAAAAAAAAAAAAAAAALL;
            if (!*(a2 + 36))
            {
              goto LABEL_95;
            }

            v149 = 0;
            do
            {
              sub_10003452C(a2, a15, v149, &v312, &v308, &v311, &v307);
              v150 = *(a15 + 40) ? *(a15 + 64) : 0;
              if (v150 + *v311 == *v282)
              {
                break;
              }

              ++v149;
            }

            while (v149 < *(a2 + 36));
            if (!v149)
            {
LABEL_95:
              v149 = 0;
              if ((*(a2 + 32) & 1) == 0)
              {
                *(a15 + 75) = 1;
              }
            }

            v309 = 0xAAAAAAAAAAAAAAAALL;
            v310 = 0xAAAAAAAAAAAAAAAALL;
            v306 = -21846;
            v305 = -21846;
            sub_10003452C(a4, a15, 0, &v310, &v306, 0, 0);
            v163 = v149 + 1;
            if (*(a2 + 36) <= v163)
            {
              v164 = a12;
              v309 = a12;
              v305 = a13;
            }

            else
            {
              sub_10003452C(a2, a15, v163, &v309, &v305, 0, 0);
              v164 = v309;
            }

            v304 = -1431655766;
            if (v164)
            {
              v165 = *(a1 + 8);
              v166 = v165 ? *(v165 + 40) : 0;
              v169 = (*(a1 + 16))(v166, v310, v306);
              if (v169 || (v304 & 0x80000000) == 0)
              {
                v264 = *(a2 + 32);
                v270 = *(a2 + 34);
                v244 = *(a2 + 24);
                v256 = *(a2 + 28);
                v232 = *(a2 + 16);
                sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", v167, v163, v168, v159, v160, v161, v162, *(a2 + 8));
                if (v169)
                {
                  v27 = v169;
                }

                else
                {
                  v27 = 92;
                }

                v216 = 1114;
                goto LABEL_165;
              }
            }

            if (*(a4 + 36) < 2u)
            {
              v305 = a13;
              v170 = a12;
              if (!a12)
              {
LABEL_115:
                if (!sub_10004758C(qword_10009BA58, "Update the parent's minkey? ", v163, v170, v159, v160, v161, v162, v226))
                {
                  v27 = 92;
                  goto LABEL_47;
                }

                *v302 = *a15;
                v86 = a1;
                v175 = *(a1 + 36);
                v176 = *(a1 + 56);
                *&v302[20] = -1431655766;
                v303 = v176;
                *&v302[16] = v175;
                if (!sub_10003A458(v302, a2, v149, v310, v306, 0, 0))
                {
                  v262 = *(a2 + 32);
                  v268 = *(a2 + 34);
                  v242 = *(a2 + 24);
                  v254 = *(a2 + 28);
                  v230 = *(a2 + 16);
                  sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: parent doesn't have enough space to update the minkey\n", v177, v178, v179, v180, v181, v182, v183, *(a2 + 8));
                  v27 = 92;
                  v216 = 1116;
                  v217 = 92;
LABEL_166:
                  sub_100049C40(v216, v217);
                  goto LABEL_47;
                }

                v185 = *a1;
                v186 = *(a1 + 8);
                v300 = *v289;
                v301 = v290;
                v55 = sub_100026A10(v185, v186, a2, &v300, *v289, v184);
                if (v55)
                {
                  break;
                }

                sub_100049BF0();
                v93 = v288;
                v95 = v285;
                goto LABEL_119;
              }
            }

            else
            {
              sub_10003452C(a4, a15, 1u, &v309, &v305, 0, 0);
              v170 = v309;
              if (!v309)
              {
                goto LABEL_115;
              }
            }

            v171 = *(a1 + 8);
            if (v171)
            {
              v172 = *(v171 + 40);
            }

            else
            {
              v172 = 0;
            }

            v174 = (*(a1 + 16))(v172, v310, v306);
            if (v174 || (v304 & 0x80000000) == 0)
            {
              v265 = *(a2 + 32);
              v271 = *(a2 + 34);
              v245 = *(a2 + 24);
              v257 = *(a2 + 28);
              v233 = *(a2 + 16);
              sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: unable to repair minkey\n", v173, v163, v170, v159, v160, v161, v162, *(a2 + 8));
              if (v174)
              {
                v27 = v174;
              }

              else
              {
                v27 = 92;
              }

              v216 = 1115;
              goto LABEL_165;
            }

            goto LABEL_115;
          }
        }
      }

LABEL_119:
      v92 = *(a4 + 36);
      if ((v284 & 2) != 0 && a8 && v89 < v92)
      {
        v19 = HIWORD(v293);
        if ((*(a15 + 74) & 1) == 0)
        {
          v187 = v93;
          v55 = a8(*v86, *(v86 + 8), v93, HIWORD(v293), v296, v293, a9, &v291);
          if (v55)
          {
            break;
          }

          v92 = *(a4 + 36);
          v93 = v187;
        }
      }

      else
      {
        v19 = HIWORD(v293);
      }

      v298 = v296;
      v89 = (v89 + 1);
      v90 = v95;
      v91 = v94;
      if (v89 > v92)
      {
        v299 = v93;
        v295 = v19;
        v18 = a14;
        if ((v284 & 2) != 0 || !v92)
        {
          v188 = v279;
          if ((v284 & 2) != 0)
          {
            *a14 = 0;
          }
        }

        else
        {
          v188 = v279;
          if (*(a15 + 73) != 1 || *(a4 + 34) >= 2u)
          {
            memset(v302, 170, sizeof(v302));
            v289[0] = 0;
            sub_10003452C(a4, a15, 0, &v299, &v295, &v298, &v294);
            v189 = *v298;
            v190 = *(a15 + 40) ? *(a15 + 64) : 0;
            v218 = sub_100025548(*v86, *(v86 + 8), *(v86 + 40), v190 + v189, a7, v278 & 0x20000000, 3, *(v86 + 48), v289, v302, a17);
            if (v218)
            {
              v219 = v218;
              v220 = a12;
              if (*(a4 + 36) >= 2u)
              {
                sub_10003452C(a4, a15, 1u, &v297, &v293 + 1, 0, 0);
                v220 = v297;
                v283 = HIWORD(v293);
              }

              v221 = sub_100008ED8(a1, a15, v190 + v189, *(a4 + 16), (*(a4 + 34) - 1), v299, v295, v220, v283, v219);
              if (v221)
              {
                goto LABEL_182;
              }
            }

            if (*(a4 + 34) > 1u)
            {
              v222 = sub_1000372B8;
              v86 = a1;
              goto LABEL_181;
            }

            *__str = -1431655766;
            v86 = a1;
            v223 = sub_10002F4E8(**a1);
            if (v223)
            {
              v27 = v223;
              free(v289[0]);
              goto LABEL_48;
            }

            v222 = sub_100037634;
            if (!*__str)
            {
              v222 = sub_100037B04;
            }

LABEL_181:
            *__str = *v279;
            *&v314 = *(v279 + 16);
            v300 = *v302;
            v301 = *&v302[16];
            LOBYTE(v259) = a17;
            v221 = (v222)(v86, a4, __str, v289[0], &v300, a7, a8, a9, a12, a13, a14, a15, v259, v266, v272, v276, v277);
            if (v221)
            {
LABEL_182:
              v27 = v221;
              goto LABEL_48;
            }
          }
        }

        if (*(a15 + 74) & 1) != 0 || (*(a15 + 73))
        {
          goto LABEL_185;
        }

        v198 = *(a4 + 34);
        if (v198 != *a14)
        {
          v274 = *a14;
          v261 = *(a4 + 32);
          v241 = *(a4 + 24);
          v253 = *(a4 + 28);
          v229 = *(a4 + 16);
          sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_level (expected %u, actual %u)\n", v36, v37, v93, v39, v40, v41, v42, *(a4 + 8));
          v27 = 92;
          sub_100049C40(0x197, 92);
          if (!sub_10004758C(qword_10009BA58, "Fix btn_level (%u)? ", v199, v200, v201, v202, v203, v204, *(a4 + 34)))
          {
            goto LABEL_48;
          }

          v198 = *a14;
          *(a4 + 34) = v198;
          v291 = 1;
        }

        if (((v284 & 2) == 0) != (v198 == 0))
        {
LABEL_185:
          if (!*(v86 + 40))
          {
            v205 = sub_10001DC68(1, *v282, 1);
            if (v205)
            {
              v213 = v205;
              sub_100045744("object (oid 0x%llx): Unable to mark omap entry in use for omap space verification \n", v206, v207, v208, v209, v210, v211, v212, *v282);
              sub_100049C40(0x3F4, v213);
            }
          }

          if (v291)
          {
            v214 = *a1;
            v215 = *(a1 + 8);
            *v302 = *v188;
            *&v302[16] = *(v188 + 16);
            v27 = sub_100026A10(v214, v215, a4, v302, *v302, v43);
            if (v27)
            {
              v56 = 409;
              v57 = v27;
              goto LABEL_16;
            }

            sub_100049BF0();
          }

          else
          {
            v27 = 0;
          }

          goto LABEL_48;
        }

        v275 = *(a4 + 32);
        v246 = *(a4 + 24);
        v258 = *(a4 + 28);
        v234 = *(a4 + 16);
        sub_10004565C("btn: oid (%llu), xid (%llu), type (0x%x), subtype (0x%x), flags (0x%x) level (%u)\nerror: btn: invalid btn_flags (0x%x), given btn_level (%u)\n", v36, v37, v93, v39, v40, v41, v42, *(a4 + 8));
        v27 = 92;
        v56 = 408;
LABEL_15:
        v57 = 92;
LABEL_16:
        sub_100049C40(v56, v57);
        goto LABEL_48;
      }
    }
  }

LABEL_46:
  v27 = v55;
LABEL_47:
  v18 = a14;
LABEL_48:
  ++*v18;
  return v27;
}

char *sub_10003710C(char *__str, unsigned int a2, int a3)
{
  if (!a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1802398061;
LABEL_6:
    *__str = v4;
    return __str;
  }

  if (a3 + 1 <= a2)
  {
    *(__str + 3) = 7955819;
    v4 = 1803051373;
    goto LABEL_6;
  }

  snprintf(__str, 0x20uLL, "index %u key", a2 - 1);
  return __str;
}

char *sub_100037198(char *__s, size_t __size, unsigned __int8 *a3, unsigned int a4)
{
  v4 = a3;
  v5 = __size;
  if (a4 == 4)
  {
    v8 = *a3;
    snprintf(__s, __size, "0x%08x");
  }

  else if (a4 == 8)
  {
    v7 = *a3;
    snprintf(__s, __size, "0x%016llx");
  }

  else
  {
    v10 = a4 != 0;
    if (a4 && __size)
    {
      v11 = __size;
      v12 = 1;
      v13 = 3;
      v14 = __s;
      v15 = a4;
      do
      {
        v16 = *v4++;
        snprintf(v14, v5, "%02x ", v16);
        v10 = v12 < v15;
        if (v12 >= v15)
        {
          break;
        }

        v5 -= 3;
        ++v12;
        v14 += 3;
        v17 = v13 >= v11;
        v13 += 3;
      }

      while (!v17);
    }

    if (v10)
    {
      __s[strlen(__s) - 1] = 43;
    }
  }

  return __s;
}

uint64_t sub_1000372B8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, __int16 a10, _WORD *a11, uint64_t a12, char a13)
{
  v13 = a4;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v53 = a4;
  v50 = 0;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0;
  v48 = -21846;
  v47 = -21846;
  v46 = 0;
  v16 = *(a2 + 32);
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v17;
  v57 = v17;
  v56 = v17;
  v55 = v17;
  sub_10003452C(a2, a12, 0, &v52, &v48, &v51, &v47);
  v18 = v51;
  v19 = *v51;
  v54 = *v51;
  if (*(a12 + 40))
  {
    v54 = *(a12 + 64) + v19;
    v20 = *(a12 + 44);
    __memcpy_chk();
  }

  v21 = v52;
  v22 = v48;
  v23 = v47;
  v24 = *(a2 + 36);
  if (!v24)
  {
LABEL_22:
    v33 = 0;
    goto LABEL_23;
  }

  v25 = 0;
  v39 = (v16 & 0x10) << 25;
  v26 = v13;
  while (1)
  {
    *a11 = *(a2 + 34) - 1;
    v27 = v25 + 1;
    if (v24 <= v25 + 1)
    {
      v50 = a9;
      HIWORD(v46) = a10;
      v49 = 0;
      if (!v25)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_10003452C(a2, a12, v25 + 1, &v50, &v46 + 1, &v49, &v46);
      if (!v25)
      {
        goto LABEL_17;
      }
    }

    v28 = *v18;
    v54 = *v18;
    if (*(a12 + 40))
    {
      v28 += *(a12 + 64);
      v54 = v28;
      v29 = *(a12 + 44);
      __memcpy_chk();
    }

    v30 = sub_100025548(*a1, *(a1 + 8), *(a1 + 40), v28, a6, v39, 3, *(a1 + 48), &v53, a5, a13);
    if (!v30)
    {
      v13 = v53;
      v26 = v53;
LABEL_17:
      if (v26)
      {
        v44 = *a3;
        v45 = *(a3 + 2);
        v42 = *a5;
        v43 = *(a5 + 16);
        BYTE1(v35) = a13;
        LOBYTE(v35) = 0;
        v33 = sub_100036064(a1, a2, &v44, v26, &v42, &v54, a6, a7, a8, v21, v22, v50, HIWORD(v46), a11, a12, v35);
        free(v53);
        v53 = 0;
        if (v33)
        {
          return v33;
        }

        v13 = 0;
        v21 = v50;
      }

      else
      {
        v21 = v50;
      }

      goto LABEL_21;
    }

    v31 = v50;
    v32 = sub_100008ED8(a1, a12, v54, *(a2 + 16), (*(a2 + 34) - 1), v21, v22, v50, HIWORD(v46), v30);
    v13 = v53;
    if (v32)
    {
      break;
    }

    if (v53)
    {
      free(v53);
    }

    v13 = 0;
    v53 = 0;
    v21 = v31;
LABEL_21:
    v26 = 0;
    v22 = HIWORD(v46);
    v18 = v49;
    v51 = v49;
    v23 = v46;
    v24 = *(a2 + 36);
    ++v25;
    if (v27 >= v24)
    {
      goto LABEL_22;
    }
  }

  v33 = v32;
LABEL_23:
  v52 = v21;
  v48 = v22;
  v47 = v23;
  if (v13)
  {
    free(v13);
  }

  return v33;
}

uint64_t sub_100037634(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, unsigned __int16 a10, _WORD *a11, uint64_t a12, char a13)
{
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v54 = a4;
  v51 = 0;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v50 = -21846;
  v49 = -21846;
  v48 = 0;
  v15 = *(a2 + 32);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v61[56] = v16;
  *&v61[40] = v16;
  *&v61[24] = v16;
  *&v61[8] = v16;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  memset(v55, 0, sizeof(v55));
  sub_10003452C(a2, a12, 0, &v53, &v50, &v52, &v49);
  v17 = *v52;
  *v61 = *v52;
  if (*(a12 + 40))
  {
    *v61 = *(a12 + 64) + v17;
    v18 = *(a12 + 44);
    __memcpy_chk();
  }

  v47 = -21846;
  v19 = *(a2 + 36);
  if (!v19)
  {
    LOBYTE(v23) = 0;
    v34 = 0;
    goto LABEL_29;
  }

  v20 = 0;
  v40 = (v15 & 0x10) << 25;
  v21 = v50;
  v22 = v53;
  while (1)
  {
    v23 = v20;
    *a11 = *(a2 + 34) - 1;
    if (v19 <= ++v20)
    {
      v51 = a9;
      v52 = 0;
      v48 = a10;
    }

    else
    {
      sub_10003452C(a2, a12, v20, &v51, &v48, &v52, &v49);
      v19 = *(a2 + 36);
    }

    if (v23 < v19 - 1)
    {
      v24 = *v52;
      *&v56 = *v52;
      if (*(a12 + 40))
      {
        v24 += *(a12 + 64);
        *&v56 = v24;
        v25 = *(a12 + 44);
        __memcpy_chk();
      }

      *(&v47 + (v23 & 1)) = 1;
      v26 = sub_10002692C(*a1, *(a1 + 8), *(a1 + 40), v24, a6, v40, 3, *(a1 + 48), &v55[11 * (v23 & 1)]);
      if (v26)
      {
        break;
      }
    }

LABEL_16:
    if (v23 && (v31 = !(v23 & 1), *(&v47 + v31) == 1) && (*(&v47 + v31) = 0, (v32 = sub_100026968(*a1, *(a1 + 8), *(a1 + 40), *v61, a6, v40, 3, *(a1 + 48), &v55[11 * !(v23 & 1)], &v54, a5, a13)) != 0))
    {
      v33 = v51;
      v30 = sub_100008ED8(a1, a12, *v61, *(a2 + 16), (*(a2 + 34) - 1), v22, v21, v51, v48, v32);
      if (v30)
      {
        goto LABEL_28;
      }

      if (v54)
      {
        free(v54);
      }

      v54 = 0;
    }

    else
    {
      v33 = v51;
      if (v54)
      {
        v45 = *a3;
        v46 = *(a3 + 2);
        v43 = *a5;
        v44 = *(a5 + 16);
        BYTE1(v36) = a13;
        LOBYTE(v36) = 0;
        v34 = sub_100036064(a1, a2, &v45, v54, &v43, v61, a6, a7, a8, v22, v21, v51, v48, a11, a12, v36);
        free(v54);
        v54 = 0;
        if (v34)
        {
          goto LABEL_32;
        }
      }
    }

    v21 = v48;
    *&v61[32] = v58;
    *&v61[48] = v59;
    *&v61[64] = v60;
    *v61 = v56;
    *&v61[16] = v57;
    v22 = v33;
    v19 = *(a2 + 36);
    if (v20 >= v19)
    {
      v34 = 0;
      LOBYTE(v23) = v20;
      goto LABEL_29;
    }
  }

  v27 = v26;
  *&v45 = 0xAAAAAAAAAAAAAAAALL;
  LOWORD(v43) = -21846;
  v28 = a10;
  v29 = a9;
  if (*(a2 + 36) > v23 + 2)
  {
    sub_10003452C(a2, a12, v23 + 2, &v45, &v43, 0, 0);
    v29 = v45;
    v28 = v43;
  }

  v30 = sub_100008ED8(a1, a12, v56, *(a2 + 16), (*(a2 + 34) - 1), v51, v48, v29, v28, v27);
  if (!v30)
  {
    *(&v47 + (v23 & 1)) = 0;
    goto LABEL_16;
  }

LABEL_28:
  v34 = v30;
LABEL_29:
  if (v54)
  {
    free(v54);
    v54 = 0;
  }

  if (v34)
  {
LABEL_32:
    if (*(&v47 + !(v23 & 1)) == 1)
    {
      sub_100026998(*a1, *(a1 + 8), *v61, &v55[11 * !(v23 & 1)]);
    }
  }

  return v34;
}

uint64_t sub_100037B04(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, _OWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, _WORD *a11, uint64_t a12, unsigned __int8 a13)
{
  v93 = a7;
  v94 = a8;
  v105 = a6;
  v101 = a5;
  v102 = a4;
  v92 = a3;
  v116 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0xAAAAAAAAAAAAAAAALL;
  v115 = 0;
  v114 = -21846;
  v113 = -21846;
  v112 = 0;
  v16 = *(a2 + 32);
  sub_10003452C(a2, a12, 0, &v117, &v114, &v116, &v113);
  bzero(v118, 0x580uLL);
  v91[1] = v91;
  v17 = 112 * *(a2 + 36);
  v19 = __chkstk_darwin(v18);
  if (v20)
  {
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v17;
    v23 = &v91[v17 / 0xFFFFFFFFFFFFFFF8];
    do
    {
      v23[5] = v21;
      v23[6] = v21;
      v23[3] = v21;
      v23[4] = v21;
      v23[1] = v21;
      v23[2] = v21;
      *v23 = v21;
      v23 += 7;
      v22 -= 112;
    }

    while (v22);
  }

  v24 = v16 & 0x10;
  v25 = *(a2 + 36);
  v26 = __chkstk_darwin(v19);
  v28 = (v91 - v27);
  v29 = 4 * v25;
  v103 = v30;
  if (v25)
  {
    v31 = memset(v91 - v27, 170, 8 * v25);
    __chkstk_darwin(v31);
    v98 = v91 - ((v29 + 15) & 0x7FFFFFFF0);
    memset(v98, 170, 4 * v25);
  }

  else
  {
    __chkstk_darwin(v26);
    v98 = v91 - ((v29 + 15) & 0x7FFFFFFF0);
  }

  v104 = v24 << 25;
  bzero(v103, v17);
  v32 = v103;
  v33 = v116;
  v34 = *v116;
  *(v103 + 1) = *v116;
  if (*(a12 + 40))
  {
    *(v32 + 1) = *(a12 + 64) + v34;
    memcpy(v103 + 16, v33 + 1, *(a12 + 44));
    v32 = v103;
  }

  v35 = a10;
  v97 = a9;
  v36 = v101;
  v37 = v102;
  *(v32 + 5) = *v101;
  *(v32 + 12) = *(v36 + 2);
  v32[104] = v37 != 0;
  bzero(v28, 8 * v25);
  *v28 = v37;
  v102 = v28;
  if (v25 >= 2)
  {
    LODWORD(v101) = a10;
    v38 = v32 + 216;
    v39 = 1;
    while (1)
    {
      sub_10003452C(a2, a12, v39, &v117, &v114, &v116, &v113);
      *(v38 - 26) = v39;
      *v38 = 1;
      v40 = v116;
      v41 = *v116;
      *(v38 - 12) = *v116;
      if (*(a12 + 40))
      {
        v41 += *(a12 + 64);
        *(v38 - 12) = v41;
        memcpy(v38 - 88, v40 + 1, *(a12 + 44));
      }

      v42 = sub_100024EE0(*a1, *(a1 + 8), *(a1 + 40), v41, v105, v104, 3, *(a1 + 48), (v38 - 24));
      v43 = v39 + 1;
      if (v42)
      {
        v44 = v42;
        if (v43 >= *(a2 + 36))
        {
          v45 = v97;
          v115 = v97;
          v112 = a10;
          v46 = a10;
        }

        else
        {
          sub_10003452C(a2, a12, v39 + 1, &v115, &v112, 0, 0);
          v45 = v115;
          v46 = v112;
        }

        v47 = sub_100008ED8(a1, a12, *(v38 - 12), *(a2 + 16), (*(a2 + 34) - 1), v117, v114, v45, v46, v44);
        if (v47)
        {
          v69 = v47;
          goto LABEL_76;
        }

        *v38 = 0;
        *(v38 - 3) = 0x7FFFFFFFFFFFFFFFLL;
      }

      v38 += 112;
      ++v39;
      if (v43 >= *(a2 + 36))
      {
        LODWORD(v25) = *(a2 + 36);
        v32 = v103;
        v35 = v101;
        break;
      }
    }
  }

  qsort(v32 + 112, (v25 - 1), 0x70uLL, sub_1000383E8);
  v48 = *(a2 + 36);
  if (!v48)
  {
    goto LABEL_25;
  }

  v49 = 0;
  v50 = v32;
  v51 = v98;
  do
  {
    v52 = *v50;
    v50 += 28;
    *&v51[4 * v52] = v49++;
  }

  while (v48 != v49);
  if (v48 != 1)
  {
    v54 = v35;
    v55 = v32 + 120;
    v56 = v118;
    v57 = 1;
    do
    {
      if (v55[96] == 1)
      {
        v58 = sub_10002692C(*a1, *(a1 + 8), *(a1 + 40), *v55, v105, v104, 3, *(a1 + 48), v56);
        if (v58)
        {
          v69 = v58;
          v62 = 1;
          LODWORD(v53) = v57;
          goto LABEL_67;
        }

        v48 = *(a2 + 36);
      }

      v53 = v57 + 1;
      if (v57 > 7)
      {
        break;
      }

      v55 += 112;
      v56 += 11;
      ++v57;
    }

    while (v53 < v48);
    v35 = v54;
  }

  else
  {
LABEL_25:
    LODWORD(v53) = 1;
  }

  sub_10003452C(a2, a12, 0, &v117, &v114, 0, 0);
  v59 = *(a2 + 36);
  if (v59)
  {
    v60 = 0;
    v61 = a11;
    v95 = v35;
    v96 = a13;
    v62 = 1;
    v100 = v114;
    v99 = v117;
    v63 = v103;
    v101 = a11;
    while (1)
    {
      v64 = *&v98[4 * v60];
      v65 = v102[v60];
      if (v65 || (v63[112 * v64 + 104] & 1) == 0)
      {
        if (v59 <= v60 + 1)
        {
          v66 = v97;
          v115 = v97;
          v67 = v95;
          v112 = v95;
        }

        else
        {
          sub_10003452C(a2, a12, v60 + 1, &v115, &v112, 0, 0);
          v61 = v101;
          v63 = v103;
          v66 = v115;
          v67 = v112;
        }

        *v61 = *(a2 + 34) - 1;
        v68 = &v63[112 * v64];
        if (v68[104] == 1)
        {
          v110 = *v92;
          v111 = *(v92 + 2);
          v108 = *(v68 + 5);
          v109 = *(v68 + 12);
          BYTE1(v90) = v96;
          LOBYTE(v90) = 0;
          v69 = sub_100036064(a1, a2, &v110, v65, &v108, v68 + 8, v105, v93, v94, v99, v100, v66, v67, v61, a12, v90);
          v70 = v102;
          free(v102[v60]);
          v70[v60] = 0;
          if (v69)
          {
            goto LABEL_67;
          }

          v66 = v115;
          v67 = v112;
          v63 = v103;
          v61 = v101;
        }

        v59 = *(a2 + 36);
        v100 = v67;
        v99 = v66;
        ++v60;
      }

      if (v62 < v59)
      {
        v71 = &v63[112 * v62];
        if (v71[104] == 1)
        {
          v72 = *v71;
          v73 = (v62 - 1) & 7;
          if (1 - v62 >= 0)
          {
            v73 = -((1 - v62) & 7);
          }

          v74 = sub_100026968(*a1, *(a1 + 8), *(a1 + 40), *(v71 + 1), v105, v104, 3, *(a1 + 48), &v118[11 * v73], &v102[v72], (v71 + 80), v96);
          v61 = v101;
          v63 = v103;
          if (v74)
          {
            v75 = v74;
            *&v110 = 0xAAAAAAAAAAAAAAAALL;
            *&v108 = 0xAAAAAAAAAAAAAAAALL;
            v107 = -21846;
            v106 = -21846;
            sub_10003452C(a2, a12, v72, &v110, &v107, 0, 0);
            v76 = v95;
            v77 = v97;
            if (*(a2 + 36) > (v72 + 1))
            {
              sub_10003452C(a2, a12, v72 + 1, &v108, &v106, 0, 0);
              v77 = v108;
              v76 = v106;
            }

            v78 = sub_100008ED8(a1, a12, *(v71 + 1), *(a2 + 16), (*(a2 + 34) - 1), v110, v107, v77, v76, v75);
            if (v78)
            {
LABEL_65:
              v69 = v78;
              goto LABEL_67;
            }

            v71[104] = 0;
            v63 = v103;
            v61 = v101;
          }
        }

        ++v62;
        v59 = *(a2 + 36);
      }

      if (v53 < v59)
      {
        v79 = &v63[112 * v53];
        if (v79[104] == 1)
        {
          v80 = (v53 - 1) & 7;
          if (1 - v53 >= 0)
          {
            v80 = -((1 - v53) & 7);
          }

          v78 = sub_10002692C(*a1, *(a1 + 8), *(a1 + 40), *(v79 + 1), v105, v104, 3, *(a1 + 48), &v118[11 * v80]);
          if (v78)
          {
            goto LABEL_65;
          }

          v59 = *(a2 + 36);
          v63 = v103;
          v61 = v101;
        }

        LODWORD(v53) = v53 + 1;
      }

      if (v60 >= v59)
      {
        v69 = 0;
        goto LABEL_68;
      }
    }
  }

  v69 = 0;
  v62 = 1;
LABEL_67:
  v63 = v103;
LABEL_68:
  if (v62 < v53)
  {
    v81 = v62 - 1;
    v82 = &v63[112 * v62 + 104];
    v83 = -v53;
    do
    {
      if (*v82 == 1)
      {
        if (v81 <= 0)
        {
          v84 = -(-v81 & 7);
        }

        else
        {
          v84 = v81 & 7;
        }

        sub_100026998(*a1, *(a1 + 8), *(v82 - 12), &v118[11 * v84]);
      }

      ++v81;
      v82 += 112;
    }

    while (v83 + v81 != -1);
  }

LABEL_76:
  v85 = *(a2 + 36);
  v86 = v102;
  if (v85)
  {
    for (i = 0; i < v85; ++i)
    {
      v88 = v86[i];
      if (v88)
      {
        free(v88);
        v85 = *(a2 + 36);
      }
    }
  }

  return v69;
}

uint64_t sub_1000383E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a2 + 80);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100038400()
{
  if (qword_10009A3F8)
  {
    result = sub_10003B928(&unk_10009A3C0, 0);
  }

  byte_10009A400 = 0;
  return result;
}

uint64_t sub_10003843C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v65 = 0u;
  memset(v66, 0, 27);
  if (byte_10009A400 != 1)
  {
    return 0;
  }

  v11 = *(a2 + 8);
  memset(v64, 170, sizeof(v64));
  sub_100040B74(a2, a3, 21, v64, a5, a6, a7, a8);
  sub_100040B74(a2, a3, 10, &v64[2], v12, v13, v14, v15);
  sub_100040B74(a2, a3, 19, &v64[1], v16, v17, v18, v19);
  v67[0] = v11;
  v67[1] = a1;
  v62 = 43;
  v63 = 16;
  v20 = sub_1000397B8(dword_10009A3C0, 0, 0, v67, &v63, 0x10u, &v65, &v62);
  if (!v20)
  {
    if (v65 != v64[0])
    {
      sub_100049C40(0x604, 92);
      sub_10004565C("file_id %llu (group_id %llu, private_id %llu) has different clonegroup group_id (%llu)\n", v30, v31, v32, v33, v34, v35, v36, a1);
      BYTE2(v66[3]) |= 1u;
    }

    if (v66[1] != v64[1])
    {
      sub_100049C40(0x605, 92);
      sub_10004565C("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect attribution tag (%llu)\n", v37, v38, v39, v40, v41, v42, v43, v64[0]);
      BYTE2(v66[3]) |= 1u;
    }

    if (v66[0] == v64[2])
    {
      v44 = BYTE2(v66[3]);
    }

    else
    {
      sub_100049C40(0x606, 92);
      sub_10004565C("clonegroup_record (group_id %llu, private_id %llu, file_id %llu) has incorrect dir-stats key (%llu)\n", v52, v53, v54, v55, v56, v57, v58, v64[0]);
      v44 = BYTE2(v66[3]) | 1;
    }

    v29 = v44 | 2;
    goto LABEL_14;
  }

  v28 = v20;
  if (v20 == 2)
  {
    sub_100045744("missing clone group record for file_id %llu (private_id %llu, group_id %llu)\n", v21, v22, v23, v24, v25, v26, v27, a1);
    sub_100049C40(0x5E9, 2);
    v65 = 0u;
    memset(v66, 0, 26);
    v29 = 3;
LABEL_14:
    BYTE2(v66[3]) = v29;
    *(&v65 + 1) = v64[0];
    v66[0] = v64[2];
    v66[1] = v64[1];
    v59 = *(a2 + 68);
    if ((v59 & 0x20) != 0)
    {
      v29 |= 0x20u;
      BYTE2(v66[3]) = v29;
    }

    if ((*(a2 + 50) & 8) != 0)
    {
      BYTE2(v66[3]) = v29 | 0x40;
    }

    if ((v59 & 0x20) != 0)
    {
      v60 = 0;
    }

    else
    {
      v60 = sub_100040BD0(a2, a3, v22, v23, v24, v25, v26, v27);
    }

    v66[2] = v60;
    sub_1000386C8(v67, &v65, v22, v23, v24, v25, v26, v27);
    return 0;
  }

  sub_100049C40(0x607, v20);
  strerror(v28);
  sub_10004565C("can't cross check inode (id %llu) with its corresponding clonegroup record: %d (%s)\n", v45, v46, v47, v48, v49, v50, v51, a1);
  return v28;
}

uint64_t sub_1000386C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 42);
  if ((v10 & 1) == 0 && (~v10 & 6) == 0)
  {
    if ((v10 & 0x48) != 0 || (*(a2 + 40) & 0xF) == 0)
    {
      if ((v10 & 0x20) == 0)
      {

        return sub_10003B708(dword_10009A3C0, 0, a1, 16);
      }
    }

    else
    {
      v12 = *(a2 + 40);
      sub_100045744("file (id %llu) isn't purgeable but its matching clonegroup record flags (0x%x) suggest it is\n", a2, a3, a4, a5, a6, a7, a8, a1[1]);
      sub_100049C40(0x600, -3);
      *(a2 + 42) |= 1u;
      *(a2 + 40) &= 0xFFF0u;
    }
  }

  return sub_10003B12C(dword_10009A3C0, 0, a1, 16, a2, 0x2Bu);
}

uint64_t sub_1000387BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v13[1] = a2;
  memset(v12, 0, 43);
  if (byte_10009A400 == 1)
  {
    v10 = 43;
    v11 = 16;
    result = sub_1000397B8(dword_10009A3C0, 0, 0, v13, &v11, 0x10u, v12, &v10);
    if (!result)
    {
      *&v12[2] = a3;
      return sub_1000386C8(v13, v12, v4, v5, v6, v7, v8, v9);
    }
  }

  return result;
}

uint64_t sub_10003884C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v25[0] = a1;
  v25[1] = a2;
  memset(v24, 0, 43);
  if (byte_10009A400 == 1)
  {
    v4 = a2;
    v22 = 43;
    v23 = 16;
    if (!sub_1000397B8(dword_10009A3C0, 0, 0, v25, &v23, 0x10u, v24, &v22))
    {
      if ((a3 & 0x1000) != 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = a3;
      }

      v12 = (v11 >> 12) & 8 | (v11 >> 9) & 7;
      if (v12 == (BYTE8(v24[2]) & 0xF))
      {
        v13 = BYTE10(v24[2]);
      }

      else
      {
        sub_100049C40(0x608, -3);
        sub_100045744("file (id %llu) purgeable_flags (0x%x) disagree with its matching clonegroup record flags (0x%x)\n", v14, v15, v16, v17, v18, v19, v20, v4);
        WORD4(v24[2]) = BYTE8(v24[2]) & 0x10 | v12;
        v13 = BYTE10(v24[2]) | 1;
      }

      BYTE10(v24[2]) = v13 | 8;
      sub_1000386C8(v25, v24, v5, v6, v7, v8, v9, v10);
    }
  }

  return 0;
}

uint64_t sub_100038958(uint64_t *a1, uint64_t a2, uint64_t a3, __int16 a4, char a5)
{
  if (byte_10009A400 != 1)
  {
    return 0;
  }

  v25 = v5;
  v26 = v6;
  v24 = *(a1 + 9);
  memset(v23, 0, 43);
  v21 = 43;
  v22 = 16;
  if (sub_1000397B8(dword_10009A3C0, 0, 0, &v24, &v22, 0x10u, v23, &v21))
  {
    v19 = *a1;
    *&v23[1] = a2;
    *(&v23[1] + 1) = a3;
    *&v23[0] = v19;
    WORD4(v23[2]) = a4;
    BYTE10(v23[2]) = a5 | 0x10;
    return sub_10003B12C(dword_10009A3C0, 0, &v24, 16, v23, 0x2Bu);
  }

  else
  {
    sub_100045744("found multiple clonegroup records for file_id %llu\n", v12, v13, v14, v15, v16, v17, v18, SBYTE8(v24));
    sub_100049C40(0x609, -2);
    return 0;
  }
}

char *sub_100038A68(char *result, unsigned int a2)
{
  v19[0] = result;
  v19[1] = 0;
  memset(v18, 0, 43);
  if (!a2)
  {
    return result;
  }

  if (!byte_10009A400)
  {
    return result;
  }

  v3 = result;
  v16 = 43;
  v17 = 16;
  result = sub_1000397B8(dword_10009A3C0, 0, 1u, v19, &v17, 0x10u, v18, &v16);
  if (result || v19[0] != v3)
  {
    return result;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (v11)
    {
      if (v11 != *&v18[0])
      {
        sub_100045744("private_id (%llu) has multiple clonegroup ids (%llu, %llu)\n", v4, v5, v6, v7, v8, v9, v10, v3);
        sub_100049C40(0x60A, -3);
        v11 = *&v18[0];
      }
    }

    else
    {
      v11 = *&v18[0];
    }

    if (a2 < 2)
    {
      if ((BYTE8(v18[2]) & 0x10) != 0)
      {
        sub_100045744("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", v4, v5, v6, v7, v8, v9, v10, v11);
        sub_100049C40(0x60C, -3);
        v13 = WORD4(v18[2]) & 0xFFEF;
        goto LABEL_15;
      }
    }

    else if ((BYTE8(v18[2]) & 0x10) == 0)
    {
      sub_100045744("clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", v4, v5, v6, v7, v8, v9, v10, v11);
      sub_100049C40(0x60B, -3);
      v13 = WORD4(v18[2]) | 0x10;
LABEL_15:
      WORD4(v18[2]) = v13;
      BYTE10(v18[2]) |= 1u;
    }

    BYTE10(v18[2]) |= 4u;
    sub_1000386C8(v19, v18, v5, v6, v7, v8, v9, v10);
    v14 = 43;
    v15 = 16;
    result = sub_1000397B8(dword_10009A3C0, 0, 2u, v19, &v15, 0x10u, v18, &v14);
    ++v12;
  }

  while (!result && v19[0] == v3);
  if (v12)
  {
    if (a2 != v12)
    {
      sub_100045744("clonegroup records of (private_id %llu) count (%u) != dstream_id refcount (%u)\n", v4, v5, v6, v7, v8, v9, v10, v3);
      return sub_100049C40(0x60D, -3);
    }
  }

  return result;
}

uint64_t sub_100038C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 64);
  v6 = 48;
  if (!v5)
  {
    v6 = 40;
  }

  v7 = *(a2 + v6);
  v8 = *(v7 + 1112);
  if (!v8)
  {
    return 0;
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38[2] = v10;
  v38[3] = v10;
  v38[0] = v10;
  v38[1] = v10;
  v11 = sub_100039748(v38, a1, a2, 0, 2, 37, 0, *(*(a1 + 8) + 36), 0, 0, 0, v8, sub_10003F258);
  if (v11)
  {
    v12 = v11;
    v13 = strerror(v11);
    sub_10004565C("failed to initialize the clone-group tree: %s\n", v14, v15, v16, v17, v18, v19, v20, v13);
    sub_100049C40(0x5EA, v12);
  }

  else
  {
    if (*(v7 + 1108))
    {
      if (!sub_100039748(dword_10009A3C0, 0, 0, 0x8000000, 2, 0, 0, 4096, 16, 43, 0, 0, sub_100030CBC))
      {
        sub_10003B84C(dword_10009A3C0, 0, 64);
      }

      if (sub_10001C108(dword_10009A3C0, "clonegroup", sub_100038400))
      {
        byte_10009A400 = 0;
        sub_100045744("failed to register the clonegroup tree in the fsck memory storage\n", v22, v23, v24, v25, v26, v27, v28, v37);
        sub_100049C40(0x5E8, 12);
      }

      else if ((*(v7 + 1108) & 2) != 0)
      {
        byte_10009A400 = 0;
        sub_100045744("Skipping clonegroup cross-check since INVALID flag is set\n", v22, v23, v24, v25, v26, v27, v28, v37);
      }

      else
      {
        byte_10009A400 = 1;
        sub_100000C60();
      }
    }

    v29 = sub_10003570C(v38, a3, sub_10001431C, a4, 0, 0);
    v12 = v29;
    if (v29)
    {
      if (qword_10009A3F8)
      {
        v29 = sub_10003B928(dword_10009A3C0, 0);
      }

      byte_10009A400 = 0;
      if (v5)
      {
        sub_10002797C(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }
  }

  return v12;
}

uint64_t sub_100038E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (byte_10009A400 != 1)
  {
    return 0;
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v34[11] = v4;
  v33 = v4;
  *v34 = v4;
  v31 = 43;
  v32 = 16;
  v5 = sub_100039CDC(dword_10009A3C0, 0, &v35, &v32, &v33, &v31);
  if (!v5)
  {
    while (1)
    {
      if ((v34[26] & 0x20) == 0)
      {
        goto LABEL_15;
      }

      v13 = v35;
      v42[0] = v35;
      v42[1] = 0;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v41[11] = v14;
      v40 = v14;
      *v41 = v14;
      v38 = 43;
      v39 = 16;
      if (sub_1000397B8(dword_10009A3C0, 0, 1u, v42, &v39, 0x10u, &v40, &v38) || v42[0] != v13)
      {
        break;
      }

      v15 = 0;
      while (1)
      {
        v15 += (v41[26] >> 1) & 1;
        if (v15 > 1)
        {
          break;
        }

        v36 = 43;
        v37 = 16;
        if (sub_1000397B8(dword_10009A3C0, 0, 2u, v42, &v37, 0x10u, &v40, &v36) || v42[0] != v13)
        {
          goto LABEL_10;
        }
      }

      if ((v34[24] & 0x10) == 0)
      {
        sub_100045744("compressed clonegroup record (group_id %llu, private_id %llu, file_id %llu): missing the full clone flag\n", v6, v7, v8, v9, v10, v11, v12, v33);
        sub_100049C40(0x60E, -3);
        v16 = *&v34[24] | 0x10;
LABEL_14:
        *&v34[24] = v16;
        v34[26] |= 1u;
      }

LABEL_15:
      if ((v34[26] & 2) != 0)
      {
        if ((v34[26] & 1) == 0)
        {
          goto LABEL_22;
        }

        if ((v34[26] & 0x10) != 0)
        {
          v18 = sub_10003915C(a3, &v35, &v33, 0, v9, v10, v11, v12);
          if (v18)
          {
LABEL_29:
            v19 = v18;
            v21 = v33;
            strerror(v18);
            sub_10004565C("failed to enqueue clonegroup mapping (group_id %llu, private_id %llu, file_id %llu) repair: %s\n", v22, v23, v24, v25, v26, v27, v28, v21);
            goto LABEL_26;
          }
        }

        v17 = 2;
      }

      else
      {
        sub_10004565C("found orphan clone group mapping: (group_id %llu, private_id %llu, file_id %llu)\n", v6, v7, v8, v9, v10, v11, v12, v33);
        sub_100049C40(0x5EB, -2);
        v17 = 0;
      }

      v18 = sub_10003915C(a3, &v35, &v33, v17, v9, v10, v11, v12);
      if (v18)
      {
        goto LABEL_29;
      }

LABEL_22:
      v29 = 43;
      v30 = 16;
      v5 = sub_1000397B8(dword_10009A3C0, 0, 2u, &v35, &v30, 0x10u, &v33, &v29);
      if (v5)
      {
        goto LABEL_23;
      }
    }

LABEL_10:
    if ((v34[24] & 0x10) == 0)
    {
      goto LABEL_15;
    }

    sub_100045744("clonegroup record (group_id %llu, private_id %llu, file_id %llu): has the full clone flag turned on\n", v6, v7, v8, v9, v10, v11, v12, v33);
    sub_100049C40(0x60F, -3);
    v16 = *&v34[24] & 0xFFEF;
    goto LABEL_14;
  }

LABEL_23:
  if (v5 == 2)
  {
    v19 = 0;
  }

  else
  {
    v19 = v5;
  }

LABEL_26:
  sub_10003B928(dword_10009A3C0, 0);
  byte_10009A400 = 0;
  return v19;
}

uint64_t sub_10003915C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a1;
  v41 = *(a3 + 8 * (a4 != 0));
  v42 = 1;
  v43 = *a2;
  if (a4 != 2)
  {
    v18 = 0;
    v17 = 0;
    if (!a1)
    {
LABEL_21:
      v30 = sub_10002797C(a1, a2, a3, a4, a5, a6, a7, a8);
      goto LABEL_22;
    }

LABEL_14:
    v30 = sub_100027D7C(v9, 10, v8, 0, 0, &v41, 0x19u, v18, v17);
LABEL_22:
    v19 = v30;
    goto LABEL_23;
  }

  v11 = (a3 + 16);
  v12 = *(a3 + 16);
  v13 = (a3 + 24);
  v14 = *(a3 + 24);
  if (v14)
  {
    v15 = 28;
  }

  else
  {
    v15 = 16;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 16 * (v14 != 0);
  }

  v17 = v16 + 12;
  a1 = malloc_type_calloc(1uLL, (v16 + 12), 0x10000403E1C8BA9uLL);
  v18 = a1;
  if (!a1)
  {
    sub_10004565C("can't allocate memory to insert a new clonegroup value\n", a2, a3, a4, a5, a6, a7, a8, v40);
    v19 = 12;
    v28 = 1537;
    v29 = 12;
    goto LABEL_16;
  }

  if (!(v14 | v12))
  {
LABEL_20:
    *v18 = *(a3 + 32);
    *(v18 + 8) = *(a3 + 40);
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (!*v11 || (a1 = sub_10004052C((a1 + 12), v16, 1, v11, 8, 16, a7, a8), !a1))
  {
    if (*v13)
    {
      a1 = sub_10004052C((v18 + 12), v16, 2, v13, 8, 16, a7, a8);
      if (a1)
      {
        v19 = a1;
        v31 = strerror(a1);
        sub_10004565C("can't add attribution tag for clonegroup: %s (%d)\n", v32, v33, v34, v35, v36, v37, v38, v31);
        sub_100049C40(0x603, v19);
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v19 = a1;
  v20 = strerror(a1);
  sub_10004565C("can't add dir stats key for clonegroup: %s (%d)\n", v21, v22, v23, v24, v25, v26, v27, v20);
  v28 = 1538;
  v29 = v19;
LABEL_16:
  sub_100049C40(v28, v29);
LABEL_23:
  free(v18);
  return v19;
}

uint64_t sub_100039350(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v26 = a1;
  v27 = 0;
  if (byte_10009A400)
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v25[11] = v8;
    v24 = v8;
    *v25 = v8;
    v22 = 43;
    v23 = 16;
    v9 = sub_1000397B8(dword_10009A3C0, 0, 1u, &v26, &v23, 0x10u, &v24, &v22);
    v17 = 0;
    if (v9)
    {
LABEL_9:
      if (v9 == 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = v9;
      }
    }

    else
    {
      while (v26 == a1)
      {
        if ((v25[26] & 2) != 0)
        {
          if (v17 < a3)
          {
            *(a2 + 8 * v17) = v27;
          }

          ++v17;
        }

        v20 = 43;
        v21 = 16;
        v9 = sub_1000397B8(dword_10009A3C0, 0, 2u, &v26, &v21, 0x10u, &v24, &v20);
        if (v9)
        {
          goto LABEL_9;
        }
      }

      v18 = 0;
    }

    if (v17 != a3)
    {
      sub_100045614("number of files in clonegroup (%u) != dstream reference count (%u)\n", v10, v11, v12, v13, v14, v15, v16, v17);
      sub_100049C40(0x611, 92);
    }

    if (a4)
    {
      *a4 = v17;
    }
  }

  else
  {
    v18 = 12;
    sub_100049C40(0x610, 12);
  }

  return v18;
}

uint64_t sub_1000394A4(unsigned __int8 *a1, uint64_t a2)
{
  v21 = a1;
  if (a2 >= 1)
  {
    v2 = 0;
    v3 = a1;
    v4 = &a1[a2];
    v23 = a1 + 17;
    v5 = a1 + 16;
    v22 = &a1[a2];
    v20 = &a1[a2];
    while (1)
    {
      if (v5 >= v22)
      {
        v6 = v22;
      }

      else
      {
        v6 = v5;
      }

      if ((v5 - v6) <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 - v6;
      }

      v8 = v3 + 16;
      if (v4 >= (v3 + 16))
      {
        v9 = v3 + 16;
      }

      else
      {
        v9 = v4;
      }

      if (v4 < v8 || v9 == v4 || !v2)
      {
        goto LABEL_20;
      }

      v10 = v3;
      if (v3 < v9)
      {
        break;
      }

LABEL_18:
      if (v2 == 1)
      {
        fwrite(". . .\n", 6uLL, 1uLL, __stderrp);
        v2 = 2;
      }

LABEL_46:
      v23 += 16;
      v5 += 16;
      v3 = v8;
      if (v8 >= v4)
      {
        goto LABEL_47;
      }
    }

    while (!*v10)
    {
      if (++v10 >= v9)
      {
        goto LABEL_18;
      }
    }

LABEL_20:
    fprintf(__stderrp, "%04x:  ", v3 - v21);
    if (v3 >= v9)
    {
      v2 = 1;
    }

    else
    {
      v11 = 0;
      v2 = 1;
      do
      {
        fprintf(__stderrp, "%02x", v3[v11]);
        if (v11)
        {
          fputc(32, __stderrp);
        }

        if (v3[v11])
        {
          v2 = 0;
        }

        ++v11;
      }

      while (&v3[v11] < v9);
    }

    v12 = v8 - v9;
    if (((v8 - v9) & 0x80000000) == 0)
    {
      v13 = v23 - v6;
      do
      {
        fwrite("  ", 2uLL, 1uLL, __stderrp);
        if (v12)
        {
          fputc(32, __stderrp);
        }

        --v12;
        --v13;
      }

      while (v13 > 0);
    }

    fwrite("    |", 5uLL, 1uLL, __stderrp);
    while (v3 < v9)
    {
      v14 = __stderrp;
      v15 = *v3;
      if (*v3 < 0)
      {
        v16 = __maskrune(*v3, 0x500uLL);
      }

      else
      {
        v16 = _DefaultRuneLocale.__runetype[*v3] & 0x500;
      }

      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 46;
      }

      fputc(v17, v14);
      ++v3;
    }

    v4 = v20;
    if (v20 < v8)
    {
      do
      {
        fputc(32, __stderrp);
        --v7;
      }

      while (v7);
    }

    fwrite("|\n", 2uLL, 1uLL, __stderrp);
    goto LABEL_46;
  }

LABEL_47:
  v18 = __stderrp;

  return fputc(10, v18);
}

uint64_t sub_100039748(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, uint64_t a12, uint64_t a13)
{
  result = 22;
  if (a4 <= 0x7FFFFFF)
  {
    if (a4 != 0x80000000 && a4)
    {
      return result;
    }

LABEL_7:
    result = 0;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 40) = a4;
    *(a1 + 44) = a5;
    *(a1 + 48) = a6;
    *(a1 + 52) = a7;
    *(a1 + 24) = a8;
    *(a1 + 28) = a9;
    *(a1 + 32) = a10;
    *(a1 + 36) = a11;
    *(a1 + 56) = a12;
    *(a1 + 16) = a13;
    return result;
  }

  if (a4 == 0x40000000 || a4 == 0x8000000)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000397B8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5, unsigned int a6, void *a7, unsigned int *a8)
{
  if (*(a1 + 44) == 2)
  {
    return sub_1000397F4(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_1000397F4(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5, unsigned int a6, void *a7, unsigned int *a8, void **a9, unsigned __int16 a10)
{
  v60 = -1431655766;
  v61[0] = -1431655766;
  v59 = 0;
  v16 = a3 - 1;
  LODWORD(v50) = a3 - 1 < 2;
  HIDWORD(v50) = a3 == -2;
  v53 = 0u;
  v54 = 0u;
  v51 = 0;
  __src = 0;
  v17 = *(a1 + 56);
  if (a9)
  {
    *a9 = 0;
  }

  v18 = sub_10002EBC8(a1, &__src, *(a1 + 40), a2, v17);
  if (!v18)
  {
    v46 = v16;
    v44 = a6;
    v45 = a8;
    v48 = 0;
    v21 = -4081;
    while (1)
    {
      v22 = a4;
      v23 = a5;
      v24 = __src;
      v25 = *(a1 + 56);
      v18 = sub_10003BA10(a1, __src, v17 == v25, v21);
      if (v18)
      {
        goto LABEL_4;
      }

      v26 = v24[17];
      if (v26 < a10)
      {
        return 22;
      }

      v43 = v17 == v25;
      a5 = v23;
      a4 = v22;
      if (v43)
      {
        v27 = *(a1 + 24);
        v53 = *(v24 + v27 - 40);
        *&v54 = *(a1 + 36) | 0xAAAAAAAA00000000;
        *(&v54 + 1) = v17;
        v18 = sub_10003BBA0(a9, v26 - a10 + 1, v27);
        if (v18)
        {
          goto LABEL_4;
        }

        v24 = __src;
      }

      if (a9)
      {
        v28 = *(*a9 + 2 * (v26 - a10) + 1);
        if (v28)
        {
          memcpy(v28, v24, *(a1 + 24));
        }
      }

      while (v26 > a10)
      {
        v29 = sub_10003BC54(a1, &v53, __src, v22, *a5, &v60, v61);
        v19 = v29;
        v30 = v60;
        if (a9)
        {
          *(*a9 + 4 * (v26 - a10) + 4) = v60;
        }

        if (v29)
        {
          goto LABEL_5;
        }

        v31 = __src;
        if (HIDWORD(v50) && v30 > 0 || v50 && v30 < *(__src + 9) - 1)
        {
          v18 = sub_10003BC98(&v53, __src, v50 - HIDWORD(v50) + v30, &v51);
          if (v18)
          {
            goto LABEL_4;
          }

          v48 = v26 - 1;
          v31 = __src;
        }

        v18 = sub_10003BD54(a1, a2, &v53, v31, v30, 0, &__src);
        if (v18)
        {
          goto LABEL_4;
        }

        v26 = *(__src + 17);
        if (a9)
        {
          v32 = *(*a9 + 2 * (v26 - a10) + 1);
          if (v32)
          {
            memcpy(v32, __src, *(a1 + 24));
          }
        }
      }

      v18 = sub_10003BE18(a1, &v53, __src, v22, *a5, &v60, v61);
      if (v18)
      {
        goto LABEL_4;
      }

      v33 = v61[0];
      if (v61[0])
      {
        v34 = a3;
        if (a3 == -2)
        {
          v35 = v60--;
          v33 = v35 > 0;
        }

        else
        {
          if (a3 != 2)
          {
            goto LABEL_55;
          }

          v33 = ++v60 < *(__src + 9);
        }

        v61[0] = v33;
      }

      else
      {
        v34 = a3;
      }

      if (!v34 || v33)
      {
        break;
      }

      if (v34 >= 0xFFFFFFFE)
      {
        v36 = v60 - 1;
        if (v60 >= 1)
        {
          goto LABEL_58;
        }
      }

      if (v46 <= 1 && v60 < *(__src + 9))
      {
        v36 = v60;
LABEL_58:
        if (a9)
        {
          *(*a9 + 4 * (v26 - a10) + 4) = v36;
        }

        v58 = 0xAAAAAAAAAAAAAAAALL;
        v56 = -1431655766;
        v37 = sub_10003BF40(&v53, __src, v36, &v58, &v56);
        v19 = v37;
        if (!v34 || v37)
        {
          if (v37)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v38 = *(a1 + 8);
          if (v38)
          {
            v39 = *(v38 + 40);
          }

          else
          {
            v39 = 0;
          }

          v18 = (*(a1 + 16))(v39, v58, v56, v22, *a5, &v59);
          if (v18)
          {
            goto LABEL_4;
          }

          if (v34 == -2 && (v59 & 0x80000000) == 0)
          {
            v19 = 92;
            goto LABEL_5;
          }

          v40 = v34 == 1;
          if (v59 >= 0)
          {
            v40 = 0;
          }

          v42 = v34 == 2 && v59 < 1;
          v43 = v59 > 0 && v34 == -1;
          v19 = 92;
          if (v43 || v40 || v42)
          {
            goto LABEL_5;
          }
        }

        *v57 = 0xAAAAAAAAAAAAAAAALL;
        v55 = -1431655766;
        v18 = sub_10003BFC8(&v53, __src, v36, v57, &v55);
        if (v18)
        {
          goto LABEL_4;
        }

        *a5 = v44;
        v19 = sub_10003C0B8(v58, v56, *v57, v55, v22, a5, a7, v45);
        if (v19)
        {
          goto LABEL_5;
        }

        goto LABEL_7;
      }

      v17 = v51;
      if (!v51)
      {
        goto LABEL_56;
      }

      v51 = 0;
      v19 = sub_10002EBC8(a1, &__src, *(a1 + 40), a2, v17);
      v50 = 0;
      v21 = v48;
      if (v19)
      {
        goto LABEL_5;
      }
    }

    if (!v33)
    {
LABEL_56:
      v19 = 2;
      goto LABEL_5;
    }

LABEL_55:
    v36 = v60;
    goto LABEL_58;
  }

LABEL_4:
  v19 = v18;
LABEL_5:
  if (a9)
  {
    free(*a9);
    *a9 = 0;
  }

LABEL_7:
  if (__src && *(a1 + 40) != 0x8000000)
  {
    free(__src);
  }

  return v19;
}

uint64_t sub_100039CDC(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  if (*(a1 + 44) == 2)
  {
    return sub_100039CFC(a1, a2, a3, a4, a5, a6, 0, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100039CFC(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6, void **a7, unsigned int a8)
{
  __src = 0;
  if (a7)
  {
    *a7 = 0;
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v16 = sub_10003C30C(a1, a2, 0, &__src, &v37);
  if (v16)
  {
    goto LABEL_4;
  }

  if ((*(__src + 16) & 2) != 0 && !*(__src + 9))
  {
    v17 = 2;
    goto LABEL_5;
  }

  v18 = *(__src + 17);
  if (v18 < a8)
  {
    return 22;
  }

  v34 = *v37;
  v20 = *(a1 + 56);
  v35 = *(a1 + 36) | 0xAAAAAAAA00000000;
  v36 = v20;
  v16 = sub_10003BBA0(a7, v18 - a8 + 1, *(a1 + 24));
  if (v16)
  {
    goto LABEL_4;
  }

  if (a7)
  {
    v21 = *(*a7 + 2 * (v18 - a8) + 1);
    if (v21)
    {
      memcpy(v21, __src, *(a1 + 24));
    }
  }

  if (v18 > a8)
  {
    do
    {
      v16 = sub_10003BD54(a1, a2, &v34, __src, 0, 0, &__src);
      if (v16)
      {
        goto LABEL_4;
      }

      v22 = *(__src + 17);
      if (a7)
      {
        v23 = *(*a7 + 2 * (v22 - a8) + 1);
        if (v23)
        {
          memcpy(v23, __src, *(a1 + 24));
        }
      }
    }

    while (v22 > a8);
  }

  if (!*(__src + 9))
  {
    v17 = 22;
    goto LABEL_5;
  }

  v24 = __src + 56;
  v25 = *(__src + 28);
  v26 = *(__src + 22);
  v27 = v26 >= v25;
  v28 = v26 - v25;
  if (v28 == 0 || !v27 || ((*(__src + 16) & 4) != 0 ? (v29 = WORD4(v34)) : (v29 = *(__src + 29)), v28 < v29))
  {
    v17 = 92;
    goto LABEL_5;
  }

  v30 = *(__src + 21);
  *v32 = 0xAAAAAAAAAAAAAAAALL;
  v31 = -1431655766;
  v16 = sub_10003BFC8(&v34, __src, 0, v32, &v31);
  if (v16)
  {
LABEL_4:
    v17 = v16;
    goto LABEL_5;
  }

  v17 = sub_10003C0B8(&v24[v30 + v25], v29, *v32, v31, a3, a4, a5, a6);
  if (v17)
  {
LABEL_5:
    if (a7)
    {
      free(*a7);
      *a7 = 0;
    }
  }

  if (__src && *(a1 + 40) != 0x8000000)
  {
    free(__src);
  }

  return v17;
}

uint64_t sub_100039F68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, unsigned int a6, void *a7, int a8)
{
  if (a5 > a6)
  {
    return 34;
  }

  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a6;
  *(a1 + 68) = a8;
  *a1 = 0;
  *(a1 + 8) = sub_10003A024;
  *(a1 + 16) = a4;
  *(a1 + 24) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = 0;
  *(a1 + 36) = a8;
  if (*(a2 + 44) == 2)
  {
    result = sub_1000397F4(a2, a3, 1u, a4, (a1 + 32), a6, a7, (a1 + 36), 0, 0);
    if (result)
    {
      *(a1 + 40) = 1;
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    *(a1 + 40) = 1;
    return 22;
  }

  return result;
}

uint64_t sub_10003A024(uint64_t a1)
{
  *(a1 + 36) = *(a1 + 68);
  v2 = (a1 + 36);
  v3 = *(a1 + 48);
  if (*(v3 + 44) == 2)
  {
    result = sub_1000397F4(v3, *(a1 + 56), 2u, *(a1 + 16), (a1 + 32), *(a1 + 64), *(a1 + 24), v2, 0, 0);
    if (result)
    {
      *(a1 + 40) = 1;
      if (result == 2)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else
  {
    *(a1 + 40) = 1;
    return 22;
  }

  return result;
}

uint64_t sub_10003A0AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5, unsigned int a6, unsigned int a7)
{
  v14 = *(a2 + 24);
  v15 = (__chkstk_darwin)();
  v16 = (v14 + 15) & 0x1FFFFFFF0;
  v17 = &v24 - v16;
  if (v14)
  {
    v18 = memset(&v24 - v16, 170, v14);
    __chkstk_darwin(v18);
    v19 = &v24 - v16;
    memset(v19, 170, v14);
  }

  else
  {
    __chkstk_darwin(v15);
    v19 = &v24 - v16;
  }

  v24 = v14;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = sub_10003A354;
  *(a1 + 8) = sub_10003A380;
  *(a1 + 40) = 1;
  if (*(a2 + 44) != 2)
  {
    return 22;
  }

  if (v14 < a6)
  {
    return 34;
  }

  if (a5)
  {
    memcpy(v17, a5, a6);
    v25 = a6;
    v20 = sub_1000397F4(a2, a3, a4, v17, &v25, v14, v19, &v24, (a1 + 72), a7);
    if (v20 != 2)
    {
      goto LABEL_15;
    }

    if (a4 < 0xFFFFFFFE)
    {
      return 0;
    }

    v22 = sub_1000397F4(a2, a3, 1u, v17, &v25, v14, v19, &v24, (a1 + 72), a7);
  }

  else
  {
    v25 = v14;
    v22 = sub_100039CFC(a2, a3, v17, &v25, v19, &v24, (a1 + 72), a7);
  }

  v20 = v22;
LABEL_15:
  if (v20 == 2)
  {
    return 0;
  }

  if (v20 || (v23 = *(a1 + 72) + 16 * **(a1 + 72), *(a1 + 48) = a2, *(a1 + 56) = a3, *(a1 + 64) = *(v23 - 8) + *(a2 + 24) - 40, v20 = sub_10003A3C4(a1), v20))
  {
    free(*(a1 + 72));
    *(a1 + 72) = 0;
  }

  else
  {
    *(a1 + 40) = 0;
  }

  return v20;
}

uint64_t sub_10003A380(uint64_t a1)
{
  if (sub_10003C3D0(a1, 0) || sub_10003A3C4(a1))
  {
    *(a1 + 40) = 1;
  }

  return 0;
}

uint64_t sub_10003A3C4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  v7 = **(a1 + 64);
  v4 = *(v2 + 36);
  v5 = *(v2 + 56);
  v9 = -1431655766;
  v10 = v5;
  v8 = v4;
  result = sub_10003BF40(&v7, *(v3 + 8), *(v3 + 16), (a1 + 16), (a1 + 32));
  if (!result)
  {
    return sub_10003BFC8(&v7, *(v3 + 8), *(v3 + 16), (a1 + 24), (a1 + 36));
  }

  return result;
}

BOOL sub_10003A458(uint64_t a1, unsigned __int16 *a2, int a3, const void *a4, unsigned int a5, const void *a6, unsigned int a7)
{
  if (a4)
  {
    v12 = a2[16];
    v13 = &a2[2 * a3 + 28];
    if ((v12 & 4) == 0)
    {
      v13 = &a2[4 * a3 + 28];
    }

    v44 = *v13;
    if ((v12 & 4) != 0)
    {
      v14 = *(a1 + 8);
    }

    else
    {
      LOWORD(v14) = a2[4 * a3 + 29];
    }

    if ((*a1 & 0x40) != 0)
    {
      v15 = a5;
    }

    else
    {
      v15 = (a5 + 7) & 0xFFFFFFF8;
    }

    v17 = v14;
    v18 = (v14 + 7) & 0x1FFF8;
    if ((*a1 & 0x40) != 0)
    {
      v16 = v17;
    }

    else
    {
      v16 = v18;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v44 = 0xFFFF;
  }

  if (a6)
  {
    if ((a2[16] & 4) != 0)
    {
      v19 = &a2[2 * a3 + 29];
    }

    else
    {
      v19 = &a2[4 * a3 + 30];
    }

    v20 = *v19;
    v21 = sub_10003A864(a1, a2, a3);
    v22 = v21;
    if (a7 == 65534)
    {
      v23 = 0;
    }

    else
    {
      v23 = (a7 + 7) & 0xFFFFFFF8;
      if ((*a1 & 0x40) != 0)
      {
        v23 = a7;
      }
    }

    v15 += v23;
    if (v21 == 65534)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v21 + 7) & 0x1FFF8;
      if ((*a1 & 0x40) != 0)
      {
        v24 = v21;
      }
    }

    v16 += v24;
  }

  else
  {
    v22 = 0;
    v20 = 0xFFFF;
  }

  v25 = sub_10003A8DC(a1, a2, 0) + v16;
  if (v15 <= v25)
  {
    __n = a7;
    if (a4)
    {
      sub_10003A94C(a1, a2, 0, v44, v17);
      v26 = a5;
      v27 = sub_10003AA4C(a1, a2, 0, a5);
      if (v27)
      {
        v26 = 0;
      }

      else if ((*a1 & 0x40) == 0)
      {
        v26 = (a5 + 7) & 0xFFFFFFF8;
      }
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    if (a6)
    {
      sub_10003A94C(a1, a2, 1, v20, v22);
      v28 = sub_10003AA4C(a1, a2, 1, __n);
      if (!v28)
      {
        if (__n == 65534)
        {
          v31 = 0;
        }

        else
        {
          v31 = (__n + 7) & 0xFFFFFFF8;
          if ((*a1 & 0x40) != 0)
          {
            v31 = __n;
          }
        }

        v30 = a6;
        v29 = 0;
        v26 += v31;
LABEL_45:
        if (v26 <= a2[23])
        {
LABEL_56:
          if (a4)
          {
            v34 = sub_10003B000(a1, a2, 0, a5, v27);
            v35 = v34;
            v36 = a2 + 28;
            memcpy(a2 + a2[21] + v34 + 56, a4, a5);
            if ((a2[16] & 4) != 0)
            {
              v36[2 * a3] = v35;
            }

            else
            {
              v37 = &v36[4 * a3];
              *v37 = v35;
              v37[1] = a5;
            }

            v30 = a6;
          }

          if (v30)
          {
            v38 = sub_10003B000(a1, a2, 1, __n, v29);
            v39 = v38;
            if (v38 <= 0xFFFD)
            {
              v40 = -40;
              if ((a2[16] & 1) == 0)
              {
                v40 = 0;
              }

              memcpy(a2 + *(a1 + 4) + v40 - v38, a6, __n);
            }

            v41 = a2 + 28;
            if ((a2[16] & 4) != 0)
            {
              v41[2 * a3 + 1] = v39;
            }

            else
            {
              v42 = &v41[4 * a3];
              v42[2] = v39;
              v42[3] = __n;
            }
          }

          return v15 <= v25;
        }

        if (a4)
        {
          v32 = a2 + 28;
          if ((a2[16] & 4) != 0)
          {
            v32[2 * a3] = -1;
            if (!v30)
            {
LABEL_55:
              sub_10003ABC0(a1, a2, 0);
              v27 = 0;
              v29 = 0;
              goto LABEL_56;
            }

LABEL_52:
            v33 = a2 + 28;
            if ((a2[16] & 4) != 0)
            {
              v33[2 * a3 + 1] = -1;
            }

            else
            {
              *&v33[4 * a3 + 2] = 0xFFFF;
            }

            goto LABEL_55;
          }

          *&v32[4 * a3] = 0xFFFF;
        }

        if (!v30)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = a6;
    goto LABEL_45;
  }

  return v15 <= v25;
}

uint64_t sub_10003A864(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 32);
  v4 = a2 + 56;
  if ((v3 & 4) != 0)
  {
    v5 = (v4 + 4 * a3 + 2);
    LODWORD(v4) = *(a1 + 12);
  }

  else
  {
    v4 += 8 * a3;
    v5 = (v4 + 4);
    LOWORD(v4) = *(v4 + 6);
  }

  v6 = *v5;
  if (v6 == 65534)
  {
    LOWORD(v4) = -2;
  }

  else if (v6 == 0xFFFF)
  {
    LOWORD(v4) = 0;
  }

  else if ((v3 & 2) == 0)
  {
    if ((v3 & 8) != 0)
    {
      LOWORD(v4) = *(a1 + 16) + 8;
    }

    else
    {
      LOWORD(v4) = 8;
    }
  }

  return v4;
}

uint64_t sub_10003A8DC(_BYTE *a1, _WORD *a2, int a3)
{
  v3 = a2[25] + a2[23] + a2[27];
  if ((a2[16] & 4) != 0 && (*a1 & 4) == 0)
  {
    return v3;
  }

  v4 = a2[21];
  v5 = sub_10003C4A8(a1, a2, a3);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    return v3 - v5 + v4;
  }

  if (v5 <= v4)
  {
    return v3;
  }

  v7 = v3 >= v6;
  v8 = v3 - v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003A94C(uint64_t result, unsigned __int16 *a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a4 <= 0xFFFD)
  {
    v5 = a2[22];
    v6 = *(result + 4);
    v7 = a2[21];
    v8 = a2[23];
    v9 = a2[16];
    v10 = (a5 + 7) & 0xFFFFFFF8;
    if ((*result & 0x40) != 0)
    {
      v10 = a5;
    }

    if (a3 || v10 + a4 != v5)
    {
      if (a3 == 1 && v6 - v8 - (v5 + v7) + ((v9 << 31 >> 31) & 0xFFFFFFD8) - 56 == a4)
      {
        a2[23] = v8 + v10;
      }

      else
      {
        v11 = 26;
        if (!a3)
        {
          v11 = 24;
        }

        v12 = &a2[v11];
        v12[1] += v10;
        if (v10 >= 4)
        {
          v13 = a2 + v7 + a4 + 56;
          v14 = a2 + v6;
          v15 = (v9 & 1) == 0;
          v16 = -40;
          if (v15)
          {
            v16 = 0;
          }

          v17 = &v14[v16 - a4];
          if (!a3)
          {
            v17 = v13;
          }

          *(v17 + 1) = v10;
          *v17 = *v12;
          *v12 = a4;
        }
      }
    }

    else
    {
      a2[23] = v8 + v10;
      a2[22] = v5 - v10;
    }
  }

  return result;
}

unsigned __int16 *sub_10003AA4C(int *a1, unsigned __int16 *a2, int a3, unsigned int a4)
{
  result = 0;
  if (a4 && a4 != 65534)
  {
    v6 = 26;
    if (!a3)
    {
      v6 = 24;
    }

    v7 = &a2[v6];
    v8 = *a1;
    v9 = (a4 + 7) & 0xFFFFFFF8;
    if ((*a1 & 0x40) != 0)
    {
      v9 = a4;
    }

    if (v9 <= v7[1])
    {
      v10 = *v7;
      if (v10 != 0xFFFF)
      {
        result = 0;
        v11 = -1;
        while (1)
        {
          if (a3)
          {
            if (v10 < 4)
            {
              return result;
            }

            v12 = a1[1];
            v13 = a2[16];
            if (v12 - a2[23] - (a2[21] + a2[22]) + ((v13 << 31 >> 31) & 0xFFFFFFD8) - 56 < v10)
            {
              return result;
            }

            v14 = a2 + v12;
            v15 = (v13 & 1) != 0 ? -40 : 0;
            v16 = &v14[v15 - v10];
            v17 = v16[1];
            if (v17 < 4)
            {
              return result;
            }

            v18 = (v17 + 7) & 0x1FFF8;
            if ((v8 & 0x40) != 0)
            {
              v18 = v16[1];
            }

            if (v18 > v10)
            {
              return result;
            }
          }

          else
          {
            v19 = a2[22];
            v20 = v19 - v10;
            if (v19 <= v10)
            {
              return result;
            }

            if (v20 < 4)
            {
              return result;
            }

            v16 = (a2 + a2[21] + v10 + 56);
            v17 = v16[1];
            if (v17 < 4)
            {
              return result;
            }

            v21 = (v17 + 7) & 0x1FFF8;
            if ((v8 & 0x40) != 0)
            {
              v21 = v16[1];
            }

            if (v21 > v20)
            {
              return result;
            }
          }

          if (v9 <= v17 && v11 > v17)
          {
            result = v7;
            v11 = v17;
          }

          v10 = *v16;
          v7 = v16;
          if (v10 == 0xFFFF)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_10003ABC0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = malloc_type_calloc(*(a2 + 36), 6uLL, 0x1000040274DC3F3uLL);
  v7 = v6;
  v8 = *(a2 + 36);
  if (v8)
  {
    v9 = 0;
    v10 = v6 + 1;
    v11 = 60;
    v12 = 58;
    do
    {
      *(v10 - 1) = v9;
      if ((*(a2 + 32) & 4) != 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      *v10 = *(a2 + v13);
      v14 = sub_10003A864(a1, a2, v9);
      if (v14 == 65534)
      {
        v15 = 0;
      }

      else if ((*a1 & 0x40) != 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = (v14 + 7) & 0xFFF8;
      }

      ++v9;
      v10[1] = v15;
      v10 += 3;
      v11 += 8;
      v12 += 4;
    }

    while (v8 != v9);
  }

  else
  {
    v8 = 0;
  }

  qsort(v7, v8, 6uLL, sub_10003C51C);
  v16 = *(a2 + 32);
  v17 = -40;
  if ((v16 & 1) == 0)
  {
    v17 = 0;
  }

  __base = v7;
  if (*(a2 + 36))
  {
    v18 = v7;
    v58 = a3;
    v19 = 0;
    LODWORD(v20) = 0;
    v21 = a2 + *(a1 + 4) + v17;
    v22 = a2 + 56;
    v23 = (v18 + 4);
    do
    {
      v24 = *(v23 - 1);
      if (v24 <= 0xFFFD)
      {
        v25 = *v23;
        v20 = (v20 + v25);
        memmove((v21 - v20), (v21 - v24), v25);
        v26 = *(v23 - 2);
        v16 = *(a2 + 32);
        if ((v16 & 4) != 0)
        {
          *(v22 + 4 * v26 + 2) = v20;
        }

        else
        {
          v27 = sub_10003A864(a1, a2, *(v23 - 2));
          v28 = v22 + 8 * v26;
          *(v28 + 4) = v20;
          *(v28 + 6) = v27;
        }
      }

      ++v19;
      v29 = *(a2 + 36);
      v23 += 3;
    }

    while (v19 < v29);
    a3 = v58;
  }

  else
  {
    LOWORD(v20) = 0;
    LODWORD(v29) = 0;
  }

  *(a2 + 46) = v20;
  if ((v16 & 4) == 0 || (*a1 & 4) != 0)
  {
    v30 = sub_10003C4A8(a1, a2, a3);
  }

  else
  {
    v30 = *(a2 + 42);
  }

  if (v29)
  {
    v31 = 0;
    v32 = (a2 + 56);
    v33 = *a1;
    v34 = v29;
    v35 = __base + 1;
    v36 = (a2 + 56);
    do
    {
      *(v35 - 1) = v31;
      if ((*(a2 + 32) & 4) != 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = v32;
      }

      *v35 = *v37;
      if ((*(a2 + 32) & 4) != 0)
      {
        v38 = *(a1 + 8);
      }

      else
      {
        LOWORD(v38) = v32[1];
      }

      if ((v33 & 0x40) == 0)
      {
        LOWORD(v38) = (v38 + 7) & 0xFFF8;
      }

      v35[1] = v38;
      ++v31;
      v36 += 2;
      v35 += 3;
      v32 += 4;
    }

    while (v29 != v31);
  }

  else
  {
    v34 = 0;
  }

  qsort(__base, v34, 6uLL, sub_10003C51C);
  v39 = *(a2 + 36);
  if (v39)
  {
    v40 = 0;
    v41 = __base + 2;
    v42 = v30;
    while (v42 > *(v41 - 1) + *(a2 + 42))
    {
      v43 = *v41;
      v41 += 3;
      v42 += v43;
      if (v39 == ++v40)
      {
        v44 = *(a2 + 36);
        goto LABEL_49;
      }
    }

    v44 = v40;
LABEL_49:
    if (v44 >= 1)
    {
      v45 = a2 + 56;
      v46 = v44 + 1;
      v47 = &__base[3 * v44 - 1];
      LODWORD(v48) = v42;
      do
      {
        v49 = *v47;
        v48 = (v48 - v49);
        memmove((v45 + v48), (v45 + *(a2 + 42) + *(v47 - 1)), v49);
        v50 = *(v47 - 2);
        if ((*(a2 + 32) & 4) != 0)
        {
          v51 = 4 * v50;
        }

        else
        {
          v51 = 8 * v50;
        }

        *(v45 + v51) = v48 - v30;
        v47 -= 3;
        --v46;
      }

      while (v46 > 1);
      v39 = *(a2 + 36);
    }
  }

  else
  {
    v44 = 0;
    v39 = 0;
    v42 = v30;
  }

  if (v44 < v39)
  {
    v52 = a2 + 56;
    v53 = &__base[3 * v44 + 2];
    do
    {
      v54 = *(v53 - 1);
      if (v54 != 0xFFFF)
      {
        memmove((v52 + v42), (v52 + *(a2 + 42) + v54), *v53);
        v55 = *(v53 - 2);
        if ((*(a2 + 32) & 4) != 0)
        {
          v56 = 4 * v55;
        }

        else
        {
          v56 = 8 * v55;
        }

        *(v52 + v56) = v42 - v30;
        v42 += *v53;
        v39 = *(a2 + 36);
      }

      ++v44;
      v53 += 3;
    }

    while (v44 < v39);
  }

  *(a2 + 42) = v30;
  *(a2 + 44) = v42 - v30;
  v57 = *(a1 + 4) - (v42 + *(a2 + 46)) + ((*(a2 + 32) << 31 >> 31) & 0xFFD8) + 65480;
  *(a2 + 46) = *(a1 + 4) - (v42 + *(a2 + 46)) + (((*(a2 + 32) << 15) >> 15) & 0xFFD8) - 56;
  *(a2 + 48) = 0xFFFF0000FFFFLL;

  free(__base);
}

uint64_t sub_10003B000(int *a1, _WORD *a2, int a3, unsigned int a4, _WORD *a5)
{
  if (a4)
  {
    if (a4 == 65534)
    {
      LOWORD(v5) = -2;
    }

    else
    {
      v6 = *a1;
      v7 = a4 + 7;
      if (a5)
      {
        v8 = v7 & 0xFFFFFFF8;
        if ((v6 & 0x40) != 0)
        {
          v8 = a4;
        }

        v9 = 26;
        if (!a3)
        {
          v9 = 24;
        }

        v10 = &a2[v9];
        v5 = *a5;
        if (a3)
        {
          v11 = -40;
          if ((a2[16] & 1) == 0)
          {
            v11 = 0;
          }

          v12 = (a2 + a1[1] + v11 - v5);
        }

        else
        {
          v12 = (a2 + a2[21] + v5 + 56);
        }

        v10[1] -= v8;
        v15 = v12[1] - v8;
        if (v15 < 4)
        {
          *a5 = *v12;
        }

        else
        {
          v12[1] = v15;
          if (a3)
          {
            v15 = -v15;
          }

          LOWORD(v5) = v5 + v15;
        }
      }

      else
      {
        v13 = v7 & 0xFFF8;
        if ((v6 & 0x40) != 0)
        {
          v13 = a4;
        }

        v14 = a2[23] - v13;
        a2[23] = v14;
        if (a3)
        {
          LODWORD(v5) = a1[1] - a2[22] - (a2[21] + v14) + ((a2[16] << 31 >> 31) & 0xFFD8) + 65480;
        }

        else
        {
          LOWORD(v5) = a2[22];
          a2[22] = v5 + v13;
        }
      }
    }
  }

  else
  {
    LOWORD(v5) = -1;
  }

  return v5;
}

uint64_t sub_10003B12C(_DWORD *a1, uint64_t a2, const void *a3, uint64_t a4, const void *a5, unsigned int a6)
{
  if (a1[11] != 2)
  {
    return 22;
  }

  v7 = a5;
  v9 = a3;
  v38 = 0;
  __src = 0;
  v37 = 0;
  if (a3)
  {
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_9:
    v7 = &unk_100076F59;
    if (a6 != 65534 && a6)
    {
      return 14;
    }

    goto LABEL_4;
  }

  if (a4)
  {
    return 14;
  }

  v9 = &unk_100076F58;
  if (!a5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v12 = sub_10003C30C(a1, a2, 1, &__src, &v40);
  if (v12)
  {
LABEL_5:
    v13 = v12;
    goto LABEL_43;
  }

  if ((*(__src + 16) & 8) != 0)
  {
    v13 = 45;
    goto LABEL_43;
  }

  v14 = *v40;
  v15 = *(v40 + 1);
  v17 = *(v40 + 2);
  v16 = *(v40 + 3);
  v18 = a1[9];
  if (v17)
  {
    if (v17 != a4)
    {
LABEL_42:
      v13 = 22;
      goto LABEL_43;
    }
  }

  else if (!a4 || ((v15 - 160) >> 2) - v18 - 8 < a4)
  {
    goto LABEL_42;
  }

  if (v16 && v16 != a6 && ((v14 & 4) == 0 || a6 != 65534 && a6))
  {
    goto LABEL_42;
  }

  v19 = (a4 + 7) & 0xFFFFFFF8;
  if ((v14 & 0x40) != 0)
  {
    v19 = a4;
  }

  v20 = (a6 + 7) & 0xFFFFFFF8;
  if ((v14 & 0x40) != 0)
  {
    v20 = a6;
  }

  if (a6 == 65534)
  {
    v20 = 0;
  }

  v21 = v20 + v19;
  v22 = v15 - 160;
  v23 = (v22 >> 2) - v18 - 8;
  v24 = v17 - 1;
  v25 = (*v40 & 0x40) == 0;
  if ((v14 & 0x40) != 0)
  {
    v26 = *(v40 + 2);
  }

  else
  {
    v26 = (v17 + 7) & 0xFFFFFFF8;
  }

  v27 = (v16 + 7) & 0xFFFFFFF8;
  if ((*v40 & 0x40) != 0)
  {
    v27 = *(v40 + 3);
  }

  if (v24 >= v23)
  {
    v26 = v23;
  }

  v28 = v26 + v27;
  if (v16)
  {
    v29 = v28;
  }

  else
  {
    v29 = v22;
  }

  if (v21 > v29)
  {
    v13 = 34;
    goto LABEL_43;
  }

  v12 = sub_10003C534(a1, a2, v40, __src, v9, a4, v7, a6, &v38, &v37, &v36);
  if (v12)
  {
    goto LABEL_5;
  }

  if (!v38 || (v30 = v37, v34 = sub_10003C88C(a1, a2, v40, __src, v38, v37), !v34))
  {
    v35 = v40;
    if (*(v40 + 4) < a4)
    {
      *(v40 + 4) = a4;
    }

    if (a6 != 65534 && *(v35 + 5) < a6)
    {
      *(v35 + 5) = a6;
    }

    sub_10003CA8C(a1, a2, __src, v32, v33);
    v13 = 0;
LABEL_43:
    v30 = v37;
    if (v37)
    {
      goto LABEL_44;
    }

    goto LABEL_46;
  }

  v13 = v34;
  if (v30)
  {
LABEL_44:
    if (a1[10] != 0x8000000)
    {
      free(v30);
    }
  }

LABEL_46:
  if (v38 && a1[10] != 0x8000000)
  {
    free(v38);
  }

  if (__src && a1[10] != 0x8000000)
  {
    free(__src);
  }

  return v13;
}

uint64_t sub_10003B3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (*(a1 + 44) == 2)
  {
    return sub_10003B414(a1, a2, a3, a4, a5);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10003B414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0;
  __src = 0;
  v10 = sub_10003C30C(a1, a2, 1, &__src, &v33);
  if (v10)
  {
    goto LABEL_2;
  }

  v11 = __src;
  if (*(__src + 17) >= a5)
  {
    if ((*(__src + 16) & 8) != 0)
    {
      v10 = 45;
      goto LABEL_2;
    }

    v27 = -86;
    v30 = *v33;
    v13 = *(a1 + 56);
    v31 = *(a1 + 36) | 0xAAAAAAAA00000000;
    v32 = v13;
    v14 = sub_10003DB98(a1, a2, v33, __src, a3, a4, &v28, &v27, a5);
    v17 = v28;
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      if (v28)
      {
        v18 = sub_10003C88C(a1, a2, v33, __src, v28, 0);
        if (v18)
        {
          v10 = v18;
LABEL_34:
          if (*(a1 + 40) != 0x8000000)
          {
            free(v17);
          }

LABEL_2:
          v11 = __src;
          if (!__src)
          {
            return v10;
          }

          goto LABEL_6;
        }
      }

      v19 = __src;
      while (1)
      {
        v20 = *(v19 + 9);
        if (v20 != 1)
        {
          goto LABEL_29;
        }

        if ((v19[16] & 2) != 0)
        {
          goto LABEL_32;
        }

        v21 = v19[17];
        v22 = v33;
        v35 = *v33;
        v23 = *(a1 + 36);
        v24 = *(a1 + 56);
        v37 = -1431655766;
        v38 = v24;
        v36 = v23;
        v34 = 0;
        v25 = sub_10003BD54(a1, a2, &v35, v19, 0, 1, &v34);
        if (v25)
        {
          break;
        }

        if (sub_10003A8DC(&v35, v34, 0) >= 0x28)
        {
          sub_10003DA70(&v35, v19, 0);
          if (v19[17] == 1)
          {
            v26 = 3;
          }

          else
          {
            v26 = 1;
          }

          sub_10003D9C4(&v35, v19, v26, v19[17] - 1);
          sub_10003D7AC(&v35, v34, v19, 0, -1, 0, 0, 0, 0, 0);
          sub_10002F164(a1, *(a1 + 40), *(v34 + 2), *(v34 + 1));
          if (*(a1 + 40) != 0x8000000)
          {
            free(v34);
          }

          --*(v22 + 4);
        }

        v19 = __src;
        if (*(__src + 17) == v21)
        {
          v20 = *(__src + 9);
LABEL_29:
          if (!v20 && (v19[16] & 2) == 0)
          {
            sub_10003D9C4(&v30, v19, 3, 0);
            v19 = __src;
          }

LABEL_32:
          sub_10003CA8C(a1, a2, v19, v15, v16);
          v10 = 0;
          v17 = v28;
          goto LABEL_33;
        }
      }

      v10 = v25;
      if (v34 && *(a1 + 40) != 0x8000000)
      {
        free(v34);
      }
    }

LABEL_33:
    if (!v17)
    {
      goto LABEL_2;
    }

    goto LABEL_34;
  }

  v10 = 22;
LABEL_6:
  if (*(a1 + 40) != 0x8000000)
  {
    free(v11);
  }

  return v10;
}

uint64_t sub_10003B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 44) == 2)
  {
    return sub_10003B414(a1, a2, a3, a4, 0);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10003B724(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_10003C30C(a1, a2, 0, &v7, &v8);
  if (!v5)
  {
    *a3 = *(v8 + 24);
  }

  if (v7 && *(a1 + 40) != 0x8000000)
  {
    free(v7);
  }

  return v5;
}

uint64_t sub_10003B7B8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v7 = 0;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  v5 = sub_10003C30C(a1, a2, 0, &v7, &v8);
  if (!v5)
  {
    *a3 = *(v8 + 32);
  }

  if (v7 && *(a1 + 40) != 0x8000000)
  {
    free(v7);
  }

  return v5;
}

uint64_t sub_10003B84C(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 44) == 2)
  {
    return sub_10003B864(a1, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t sub_10003B864(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 0;
  v14 = 0;
  __src = 0;
  if (*(a1 + 56))
  {
    return 17;
  }

  v10 = a3;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  result = sub_10003D680(a1, a2, &v10, 3, 0, &__src);
  if (!result)
  {
    v8 = __src;
    ++*(__src + *(a1 + 24) - 8);
    sub_10003CA8C(a1, a2, v8, v6, v7);
    *(a1 + 56) = *(v8 + 1);
    if (*(a1 + 40) != 0x8000000)
    {
      free(v8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10003B928(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44) != 2)
  {
    return 22;
  }

  v8 = 0;
  if (!*(a1 + 56))
  {
    return 0;
  }

  v12 = 0xAAAAAAAAAAAAAAAALL;
  v4 = sub_10003C30C(a1, a2, 1, &v8, &v12);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v9 = *v12;
    v6 = *(a1 + 56);
    v10 = *(a1 + 36) | 0xAAAAAAAA00000000;
    v11 = v6;
    v5 = sub_10003DE78(a1, a2, &v9, v8);
    if (!v5)
    {
      *(a1 + 56) = 0;
    }
  }

  if (v8 && *(a1 + 40) != 0x8000000)
  {
    free(v8);
  }

  return v5;
}

uint64_t sub_10003BA10(unsigned int *a1, uint64_t a2, int a3, int a4)
{
  v4 = *(a2 + 32);
  if ((v4 & 0x10) != 0)
  {
    v5 = 0;
    v6 = 0;
    if (a3)
    {
      if ((v4 & 1) == 0)
      {
LABEL_4:
        v7 = 0;
        v8 = v5 + 1;
        goto LABEL_24;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = *(a2 + 28);
    v10 = a1[12];
    v22 = v9 == v10;
    v5 = v9 != v10;
    v11 = *(a2 + 24);
    if (v22)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (a3)
    {
      if (v11 != 2)
      {
        v5 = v12;
      }

      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_12:
      v13 = a1[6];
      v14 = a2 + v13;
      v15 = *(a2 + v13 - 40);
      if (*(a2 + v13 - 36) != v13)
      {
        ++v5;
      }

      v16 = *(v14 - 32);
      v17 = *(v14 - 28);
      if (v16 != a1[7])
      {
        ++v5;
      }

      if (v17 != a1[8])
      {
        ++v5;
      }

      v8 = v5 + ((a1[13] != 0) ^ ((v15 & 0x80) >> 7)) + ((a1[13] != 0) ^ ((v15 & 0x100) >> 8));
      v7 = -40;
      goto LABEL_24;
    }

    if (v11 == 3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v12;
    }
  }

  v8 = v6 + (v4 & 1);
  v7 = -40;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

LABEL_24:
  v18 = (a1[13] != 0) ^ ((v4 & 8) >> 3);
  v19 = (v4 >> 3) & 1 ^ ((v4 & 0x10) >> 4);
  v20 = (*(a2 + 34) == 0) ^ ((v4 & 2) >> 1);
  v21 = v7 + a1[6] - 56;
  v22 = (v4 & 4) == 0;
  if ((v4 & 4) != 0)
  {
    v23 = 3;
  }

  else
  {
    v23 = 7;
  }

  if (v22)
  {
    v24 = 3;
  }

  else
  {
    v24 = 2;
  }

  v25 = a4 == 61455 || *(a2 + 34) == a4;
  v26 = v8 + v19 + v18 + v20;
  if (!v25)
  {
    ++v26;
  }

  v27 = *(a2 + 42);
  if (*(a2 + 40))
  {
    ++v26;
  }

  if ((v23 & v27) != 0)
  {
    ++v26;
  }

  if (*(a2 + 36) <= v27 >> v24)
  {
    v28 = v26;
  }

  else
  {
    v28 = v26 + 1;
  }

  v29 = v21 >= v27;
  v30 = v21 - v27;
  v31 = *(a2 + 44);
  if (!v29)
  {
    ++v28;
  }

  v29 = v30 >= v31;
  v32 = v30 - v31;
  if (!v29)
  {
    ++v28;
  }

  if (v28 | (v32 < *(a2 + 46)))
  {
    return 92;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003BBA0(uint64_t result, int a2, unsigned int a3)
{
  if (result)
  {
    v5 = result;
    v6 = (16 * a2) | 8;
    v7 = malloc_type_calloc(1uLL, v6 + a3 * a2, 0xA8FE9B29uLL);
    *v5 = v7;
    if (v7)
    {
      *v7 = a2;
      v7[1] = v7 + v6;
      if (a2 >= 2)
      {
        v8 = 0;
        do
        {
          *(*v5 + v8 + 24) = *(*v5 + v8 + 8) + a3;
          v8 += 16;
        }

        while (16 * a2 - 16 != v8);
      }

      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_10003BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  result = sub_10003BE18(a1, a2, a3, a4, a5, a6, a7);
  if (!result && !*a7 && *a6 >= 1)
  {
    --*a6;
  }

  return result;
}

uint64_t sub_10003BC98(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  if ((*(a2 + 32) & 8) != 0)
  {
    v7 = *(a1 + 16) + 8;
  }

  else
  {
    v7 = 8;
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  v10 = -1431655766;
  result = sub_10003BFC8(a1, a2, a3, &v11, &v10);
  if (!result)
  {
    result = 92;
    if (v11)
    {
      if (v10 == v7)
      {
        v9 = *v11;
        *a4 = *v11;
        result = 0;
        if ((*(a2 + 32) & 8) != 0)
        {
          *a4 = *(a1 + 24) + v9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003BD54(unsigned int *a1, uint64_t a2, _DWORD *a3, uint64_t a4, unsigned int a5, int a6, uint64_t *a7)
{
  v12 = *(a4 + 34);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_10003BC98(a3, a4, a5, &v15);
  if (!result)
  {
    result = sub_10002EBC8(a1, a7, a1[10], a2, v15);
    if (!result)
    {
      v14 = *a7;
      result = sub_10003BA10(a1, v14, 0, (v12 - 1));
      if (!result)
      {
        if (!a6)
        {
          return 0;
        }

        result = sub_10003C174(a3, v14);
        if (!result)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, int *a7)
{
  v9 = *(a3 + 36) - 1;
  if (v9 < 0)
  {
    v20 = 0;
    v15 = 0;
LABEL_16:
    result = 0;
    *a6 = v15;
    *a7 = v20;
  }

  else
  {
    v15 = 0;
    v23 = -1431655766;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v21 = -1431655766;
    while (1)
    {
      v16 = (v9 + v15) / 2;
      result = sub_10003BF40(a2, a3, v16, &v22, &v21);
      if (result)
      {
        break;
      }

      v18 = *(a1 + 8);
      v19 = v18 ? *(v18 + 40) : 0;
      result = (*(a1 + 16))(v19, a4, a5, v22, v21, &v23);
      if (result)
      {
        break;
      }

      if (!v23)
      {
        v20 = 1;
        v15 = (v9 + v15) / 2;
        goto LABEL_16;
      }

      if (v23 < 0)
      {
        v9 = v16 - 1;
      }

      else
      {
        v15 = v16 + 1;
      }

      if (v15 > v9)
      {
        v20 = 0;
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_10003BF40(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 32);
  v6 = a2 + 56;
  v7 = (a2 + 56 + 4 * a3);
  if ((v5 & 4) == 0)
  {
    v7 = (a2 + 56 + 8 * a3);
  }

  v8 = *v7;
  v9 = *(a2 + 44);
  v10 = v9 >= v8;
  v11 = v9 - v8;
  if (v11 == 0 || !v10)
  {
    return 92;
  }

  *a4 = v6 + *(a2 + 42) + v8;
  if ((v5 & 4) != 0)
  {
    LODWORD(v6) = *(a1 + 8);
  }

  else
  {
    LOWORD(v6) = *(v6 + 8 * a3 + 2);
  }

  if (v11 < v6)
  {
    return 92;
  }

  result = 0;
  *a5 = v6;
  return result;
}

uint64_t sub_10003BFC8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, unsigned int *a5)
{
  if ((a3 & 0x80000000) != 0 || *(a2 + 36) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 32);
  v6 = (a2 + 56 + 8 * a3 + 4);
  if ((v5 & 4) != 0)
  {
    v6 = (a2 + 56 + 4 * a3 + 2);
  }

  v7 = *v6;
  v8 = *(a1 + 4);
  v9 = v8 + ((v5 << 31 >> 31) & 0xFFFFFFD8) - (*(a2 + 42) + *(a2 + 44) + *(a2 + 46)) - 56;
  if (v7 <= 0xFFFD && v9 < v7)
  {
    return 92;
  }

  v12 = a2 + v8;
  v13 = (v5 & 1) == 0;
  v14 = -40;
  if (v13)
  {
    v14 = 0;
  }

  v15 = v12 + v14 - v7;
  if (v9 < v7)
  {
    v15 = 0;
  }

  *a4 = v15;
  v16 = sub_10003A864(a1, a2, a3);
  v17 = v16;
  if (v16 > v7 && v16 != 65534)
  {
    return 92;
  }

  result = 0;
  *a5 = v17;
  return result;
}

uint64_t sub_10003C0B8(void *__src, size_t __n, const void *a3, unsigned int a4, void *__dst, _DWORD *a6, void *a7, unsigned int *a8)
{
  v13 = __n;
  if (a4 == 65534)
  {
    v14 = 0;
LABEL_3:
    if (*a6 >= __n)
    {
      memcpy(__dst, __src, __n);
      memcpy(a7, a3, v14);
      result = 0;
      *a6 = v13;
      *a8 = a4;
      return result;
    }

    return 34;
  }

  if (!a3 && a4)
  {
    return 92;
  }

  v14 = a4;
  if (*a8 >= a4)
  {
    goto LABEL_3;
  }

  return 34;
}

uint64_t sub_10003C174(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  v3 = *(a2 + 32);
  v4 = a1[1] - *(a2 + 46) - (v2 + *(a2 + 42)) + ((v3 << 31 >> 31) & 0xFFFFFFD8) - 56;
  if ((v3 & 2) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      v5 = (*a1 >> 2) & 1;
      if ((v3 & 4) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
      if ((v3 & 4) == 0)
      {
LABEL_6:
        v7 = *(a2 + 36);
        if (v7)
        {
          for (i = (a2 + 62); ; i += 4)
          {
            v9 = *(i - 3);
            if (v2 <= v9)
            {
              break;
            }

            v10 = *(i - 2);
            if ((*a1 & 0x40) == 0)
            {
              v10 = (v10 + 7) & 0x1FFF8;
            }

            if (v10 > v2 - v9)
            {
              break;
            }

            v11 = *(i - 1);
            v12 = v11 > 0xFFFD ? v5 : 0;
            if ((v12 & 1) == 0)
            {
              if (v4 < v11)
              {
                break;
              }

              v13 = (*a1 & 0x40) != 0 ? *i : (*i + 7) & 0x1FFF8;
              if (v13 > v11)
              {
                break;
              }
            }

            if (!--v7)
            {
              return v7;
            }
          }

          return 92;
        }

        return v7;
      }
    }

    v14 = a1[2];
    goto LABEL_28;
  }

  if ((v3 & 4) == 0)
  {
    LOBYTE(v5) = 0;
    goto LABEL_6;
  }

  v14 = a1[2];
  LOBYTE(v5) = 0;
  if ((v3 & 8) != 0)
  {
    v6 = a1[4] + 8;
  }

  else
  {
    v6 = 8;
  }

LABEL_28:
  v15 = *(a2 + 36);
  if (v15)
  {
    for (j = (a2 + 58); ; j += 2)
    {
      v17 = *(j - 1);
      if (v2 <= v17)
      {
        break;
      }

      v18 = (*a1 & 0x40) != 0 ? v14 : (v14 + 7) & 0xFFFFFFF8;
      if (v18 > v2 - v17)
      {
        break;
      }

      v19 = *j;
      if (v19 > 0xFFFD)
      {
        v20 = v5;
      }

      else
      {
        v20 = 0;
      }

      if ((v20 & 1) == 0)
      {
        v21 = (*a1 & 0x40) != 0 ? v6 : (v6 + 7) & 0xFFFFFFF8;
        v7 = 92;
        if (v4 < v19 || v21 > v19)
        {
          return v7;
        }
      }

      if (!--v15)
      {
        return 0;
      }
    }

    return 92;
  }

  return 0;
}

uint64_t sub_10003C30C(uint64_t a1, uint64_t a2, int a3, void **a4, void *a5)
{
  result = sub_10002EBC8(a1, a4, *(a1 + 40), a2, *(a1 + 56));
  if (!result)
  {
    v10 = *a4;
    result = sub_10003BA10(a1, v10, 1, 61455);
    if (!result)
    {
      v11 = &v10[*(a1 + 24)];
      v13 = *(v11 - 40);
      v12 = *(a1 + 56);
      v14 = *(a1 + 36) | 0xAAAAAAAA00000000;
      v15 = v12;
      if (!a3 || (result = sub_10003C174(&v13, v10), !result))
      {
        result = 0;
        if (a5)
        {
          *a5 = v11 - 40;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10003C3D0(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (*v4 <= a2)
  {
    return 2;
  }

  v18 = v2;
  v19 = v3;
  v6 = *(a1 + 48);
  v14 = **(a1 + 64);
  v7 = *(v6 + 36);
  v8 = *(v6 + 56);
  v16 = -1431655766;
  v17 = v8;
  v15 = v7;
  v9 = &v4[4 * a2];
  v11 = *(v9 + 1);
  v10 = (v9 + 2);
  LODWORD(v8) = *(v10 + 2) + 1;
  *(v10 + 2) = v8;
  if (v8 != *(v11 + 36))
  {
    return 0;
  }

  v12 = a2 + 1;
  result = sub_10003C3D0(a1, v12);
  if (!result)
  {
    *(v10 + 2) = 0;
    result = sub_10003BD54(*(a1 + 48), *(a1 + 56), &v14, *(*(a1 + 72) + 16 * v12 + 8), *(*(a1 + 72) + 16 * v12 + 16), 0, v10);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003C4A8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = (a3 + *(a2 + 36) + 7) & 0xFFFFFFF8;
  v4 = *(a2 + 32);
  if ((v4 & 4) == 0)
  {
    return 8 * v3;
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a1 + 12);
  }

  else if ((v4 & 8) != 0)
  {
    v6 = *(a1 + 16) + 8;
  }

  else
  {
    v6 = 8;
  }

  if ((((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE) > v3)
  {
    v3 = ((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE;
  }

  if ((*a1 & 4) == 0)
  {
    v3 = ((*(a1 + 4) - 56) / ((v6 + *(a1 + 8)) + 4)) & 0xFFFFFFFE;
  }

  return 4 * v3;
}

uint64_t sub_10003C51C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *(a2 + 2);
  v4 = v2 >= v3;
  v5 = v2 > v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_10003C534(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, unsigned int a8, void **a9, void **a10, _BYTE *a11)
{
  v43 = -1431655766;
  v44 = -1431655766;
  v18 = *(a1 + 56);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v37) = *(a1 + 36);
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  *a10 = 0;
  *a9 = 0;
  v36 = *a3;
  v38 = v18;
  if ((*(a4 + 32) & 2) != 0)
  {
    v19 = sub_10003BE18(a1, &v36, a4, a5, a6, &v44, &v43);
    if (!v19)
    {
      v29 = a8;
      v30 = v44;
      if (v43)
      {
        if (sub_10003A458(&v36, a4, v44, a5, a6, a7, v29) || (v19 = sub_10003CFF8(a1, a3, a4, v30, 1, a5, a6, a7, v29, a9, a10), !v19))
        {
          v20 = v30;
          v24 = 0;
          v22 = 0;
          v23 = 0;
          goto LABEL_24;
        }
      }

      else if ((sub_10003CE5C(&v36, a4, v44, a5, a6, a7, v29) & 1) != 0 || (v19 = sub_10003CFF8(a1, a3, a4, v30, 0, a5, a6, a7, v29, a9, a10), !v19))
      {
        v20 = v30;
        v24 = 0;
        v22 = 0;
        v23 = 0;
        ++*(a3 + 3);
        goto LABEL_24;
      }
    }

LABEL_9:
    v27 = v19;
    goto LABEL_10;
  }

  v19 = sub_10003BC54(a1, &v36, a4, a5, a6, &v44, &v43);
  if (v19)
  {
    goto LABEL_9;
  }

  v34 = a7;
  v20 = v44;
  v19 = sub_10003BD54(a1, a2, &v36, a4, v44, 1, &v42);
  if (v19)
  {
    goto LABEL_9;
  }

  v21 = sub_10003C534(a1, a2, a3, v42, a5, a6, v34, a8, &v41, &v40, &v39);
  v22 = v40;
  if (v21 || (v23 = v41, v24 = v39, v21 = sub_10003CB6C(a1, a3, a4, v20, v42, v41, v40, v39, a9), v21))
  {
    v27 = v21;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_24:
  v31 = *(a4 + 32);
  if ((v31 & 1) == 0)
  {
    v32 = (v31 >> 1) & 1;
    if (v23)
    {
      v32 = 1;
    }

    if (v22)
    {
      v32 = 1;
    }

    if ((v32 | v24) == 1)
    {
      sub_10003CA8C(a1, a2, a4, v25, v26);
    }
  }

  if (*a9)
  {
    sub_10003CA8C(a1, a2, *a9, v25, v26);
  }

  if (*a10)
  {
    sub_10003CA8C(a1, a2, *a10, v25, v26);
  }

  if (v20)
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = v24 | ((*(a4 + 32) & 2) >> 1);
  }

  v27 = 0;
  *a11 = v33;
  if (v22)
  {
LABEL_39:
    if (*(a1 + 40) != 0x8000000)
    {
      free(v22);
    }
  }

LABEL_10:
  if (v41 && *(a1 + 40) != 0x8000000)
  {
    free(v41);
  }

  if (v42 && *(a1 + 40) != 0x8000000)
  {
    free(v42);
  }

  return v27;
}

uint64_t sub_10003C88C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, _WORD *a5, _WORD *a6)
{
  v29[0] = 0;
  v29[1] = a5;
  v29[2] = a6;
  v25 = *a3;
  v10 = *(a1 + 36);
  v11 = *(a1 + 56);
  v27 = -1431655766;
  v28 = v11;
  v26 = v10;
  v12 = sub_10003D680(a1, *(a4 + 16), &v25, *(a4 + 32) & 2, *(a4 + 34), v29);
  v13 = v29[0];
  if (v12)
  {
LABEL_2:
    if (v13)
    {
      sub_10002F164(a1, *(a1 + 40), v13[2], v13[1]);
      if (*(a1 + 40) != 0x8000000)
      {
        free(v13);
      }
    }
  }

  else
  {
    sub_10003D7AC(&v25, a4, v29[0], 0, -1, 0, 0, 0, 0, 0);
    sub_10003CA8C(a1, a2, v13, v14, v15);
    sub_10003D9C4(&v25, a4, 1, *(a4 + 34) + 1);
    v16 = 0;
    v17 = WORD4(v25);
    do
    {
      v18 = v29[v16];
      if (!v18)
      {
        break;
      }

      if (!*(v18 + 9))
      {
        v12 = 22;
        goto LABEL_2;
      }

      v19 = v18[28];
      v20 = v18[22];
      v21 = v20 >= v19;
      v22 = v20 - v19;
      if (v22 == 0 || !v21)
      {
        goto LABEL_18;
      }

      v23 = v17;
      if ((v18[16] & 4) == 0)
      {
        v23 = v18[29];
      }

      if (v22 < v23)
      {
LABEL_18:
        v12 = 92;
        goto LABEL_2;
      }

      sub_10003CE5C(&v25, a4, v16++, v18 + v18[21] + v18[28] + 56, v23, v18 + 4, 8u);
    }

    while (v16 != 3);
    ++*(a3 + 4);
    if (*(a1 + 40) != 0x8000000)
    {
      free(v13);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_10003CA8C(uint64_t a1, uint64_t a2, char *__src, int8x16_t a4, int8x16_t a5)
{
  v8 = *(a1 + 40);
  if (v8)
  {
LABEL_2:
    v9 = 0x8000000;
    if (v8 == 0x8000000)
    {
      return sub_10002EDA8(a1, __src, v9, a2, *(__src + 1));
    }

    goto LABEL_7;
  }

  v10 = *(a1 + 8);
  if (!v10 || (v11 = v10[8]) == 0 || *(__src + 2) > v11)
  {
LABEL_7:
    sub_10003ED18(__src, (__src + 8), (*(a1 + 24) - 8), 0, a4, a5);
    v9 = *(a1 + 40);
    return sub_10002EDA8(a1, __src, v9, a2, *(__src + 1));
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  v13 = v10[7];
  if (!v13)
  {
    v13 = *(v10[5] + 16);
  }

  result = sub_10002EF64(a1, 0, 0, v13, *(__src + 1), &v14);
  if (!result)
  {
    *(__src + 2) = v13;
    v8 = *(a1 + 40);
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_10003CB6C(uint64_t a1, __int128 *a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void **a9)
{
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[1] = v12;
  v55[2] = v12;
  v54 = v12;
  v55[0] = v12;
  v13 = *(a2 + 2);
  v14 = *(a1 + 36);
  if (a8)
  {
    if (!*(a5 + 36))
    {
      return 22;
    }

    v15 = *(a5 + 56);
    v16 = *(a5 + 44);
    v17 = v16 >= v15;
    v18 = v16 - v15;
    if (v18 == 0 || !v17)
    {
      return 92;
    }

    if ((*(a5 + 32) & 4) != 0)
    {
      v19 = *(a2 + 2);
    }

    else
    {
      LOWORD(v19) = *(a5 + 58);
    }

    if (v18 < v19)
    {
      return 92;
    }

    v54 = a5 + 56 + *(a5 + 42) + *(a5 + 56);
    *&v55[0] = v19;
    *(&v55[0] + 1) = a4 | 0xAAAAAA0100000000;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  if (!a6)
  {
    goto LABEL_20;
  }

  if (!*(a6 + 36))
  {
    return 22;
  }

  v21 = *(a6 + 56);
  v22 = *(a6 + 44);
  v17 = v22 >= v21;
  v23 = v22 - v21;
  if (v23 == 0 || !v17)
  {
    return 92;
  }

  v24 = (*(a6 + 32) & 4) != 0 ? v13 : *(a6 + 58);
  if (v23 < v24)
  {
    return 92;
  }

  v25 = a6 + 56 + *(a6 + 42) + *(a6 + 56);
  v48 = *(a6 + 8);
  v26 = v20++;
  v27 = &v55[2 * v26 - 1];
  *v27 = v25;
  *(v27 + 1) = &v48;
  *(v27 + 4) = v24;
  *(v27 + 5) = 8;
  *(v27 + 3) = (a4 + 1) | 0xAAAAAA0000000000;
LABEL_20:
  v47 = 0xAAAAAAAAAAAAAAAALL;
  if (a7)
  {
    if (*(a7 + 36))
    {
      v28 = *(a7 + 56);
      v29 = *(a7 + 44);
      v17 = v29 >= v28;
      v30 = v29 - v28;
      if (v30 == 0 || !v17)
      {
        return 92;
      }

      if ((*(a7 + 32) & 4) == 0)
      {
        LOWORD(v13) = *(a7 + 58);
      }

      if (v30 < v13)
      {
        return 92;
      }

      v32 = a7 + 56 + *(a7 + 42) + *(a7 + 56);
      v47 = *(a7 + 8);
      v33 = v20++;
      v34 = &v55[2 * v33 - 1];
      *v34 = v32;
      *(v34 + 1) = &v47;
      *(v34 + 4) = v13;
      *(v34 + 5) = 8;
      *(v34 + 3) = (a4 + 2) | 0xAAAAAA0000000000;
      goto LABEL_30;
    }

    return 22;
  }

LABEL_30:
  v53 = 0;
  v49 = *a2;
  v35 = *(a1 + 56);
  v51 = -1431655766;
  v52 = v35;
  v50 = v14;
  if (v20)
  {
    v36 = 0;
    v37 = v20 + 1;
    v38 = v55;
    do
    {
      v39 = *(v38 + 2);
      if (v36)
      {
        v40 = *(a3 + 36);
        v41 = a3;
        v17 = v39 >= v40;
        v42 = v39 - v40;
        if (v42 != 0 && v17)
        {
          v41 = *a9;
          v39 = v42;
        }
      }

      else
      {
        v41 = a3;
      }

      v43 = *(v38 - 2);
      v44 = *(v38 - 1);
      v45 = *v38;
      v46 = *(v38 + 1);
      if (*(v38 + 12) == 1)
      {
        if (!sub_10003A458(&v49, v41, v39, v43, v45, v44, v46))
        {
          goto LABEL_41;
        }
      }

      else if ((sub_10003CE5C(&v49, v41, v39, v43, v45, v44, v46) & 1) == 0)
      {
LABEL_41:
        result = sub_10003CFF8(a1, a2, a3, *(v38 + 2), *(v38 + 12), *(v38 - 2), *v38, *(v38 - 1), *(v38 + 1), a9, &v53);
        if (result)
        {
          return result;
        }

        v36 = 1;
      }

      --v37;
      v38 += 2;
    }

    while (v37 > 1);
  }

  return 0;
}

uint64_t sub_10003CE5C(int *a1, uint64_t a2, int a3, const void *a4, unsigned int a5, const void *a6, unsigned int a7)
{
  v13 = ((*a1 & 4) == 0) & (*(a2 + 32) >> 2);
  if (v13 == 1 && *(a2 + 42) <= 4 * *(a2 + 36))
  {
    return 0;
  }

  if ((*a1 & 0x40) != 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = (a5 + 7) & 0xFFFFFFF8;
  }

  v15 = (a7 + 7) & 0xFFFFFFF8;
  if ((*a1 & 0x40) != 0)
  {
    v15 = a7;
  }

  v16 = a7 == 65534 ? 0 : v15;
  if (sub_10003A8DC(a1, a2, 1) < v16 + v14)
  {
    return 0;
  }

  v18 = a6;
  v19 = sub_10003AA4C(a1, a2, 0, a5);
  v24 = a4;
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v14;
  }

  v21 = sub_10003AA4C(a1, a2, 1, a7);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v16;
  }

  if (v20 + v22 > *(a2 + 46) || (v23 = v21, (v13 & 1) == 0) && sub_10003C4A8(a1, a2, 1) > *(a2 + 42))
  {
    sub_10003ABC0(a1, a2, 1);
    v19 = 0;
    v23 = 0;
  }

  sub_10003D538(a1, a2, a3, v24, a5, v19, v18, a7, v23);
  return 1;
}

uint64_t sub_10003CFF8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, int a5, const void *a6, unsigned int a7, const void *a8, unsigned int a9, void **a10, void **a11)
{
  v17 = a2;
  v78 = *a2;
  v18 = *(a1 + 36);
  v19 = *(a1 + 56);
  v80 = -1431655766;
  v81 = v19;
  v79 = v18;
  *a11 = 0;
  *a10 = 0;
  v20 = sub_10003D680(a1, *(a3 + 16), &v78, *(a3 + 32) & 2, *(a3 + 34), a10);
  if (v20)
  {
LABEL_2:
    v21 = v20;
    if (*a11)
    {
      sub_10002F164(a1, *(a1 + 40), *(*a11 + 2), *(*a11 + 1));
      if (*(a1 + 40) != 0x8000000)
      {
        free(*a11);
      }

      *a11 = 0;
    }

    if (*a10)
    {
      sub_10002F164(a1, *(a1 + 40), *(*a10 + 2), *(*a10 + 1));
      if (*(a1 + 40) != 0x8000000)
      {
        free(*a10);
      }

      *a10 = 0;
    }

    return v21;
  }

  v77 = a3;
  if (a6)
  {
    v22 = (a7 + 7) & 0xFFFFFFF8;
    if ((v78 & 0x40) != 0)
    {
      v22 = a7;
    }

    v73 = v22;
    v23 = a3;
    if (a5)
    {
      if ((*(a3 + 32) & 4) != 0)
      {
        v24 = WORD4(v78);
      }

      else
      {
        v24 = *(a3 + 8 * a4 + 58);
      }

      if ((v78 & 0x40) != 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = (v24 + 7) & 0x1FFF8;
      }

      v72 = v25;
    }

    else
    {
      v72 = 0;
    }
  }

  else
  {
    v72 = 0;
    v73 = 0;
    v23 = a3;
  }

  if (a8)
  {
    if (a9 == 65534)
    {
      v26 = 0;
    }

    else
    {
      v26 = (a9 + 7) & 0xFFFFFFF8;
      if ((v78 & 0x40) != 0)
      {
        v26 = a9;
      }
    }

    v73 += v26;
    if (a5)
    {
      v27 = sub_10003A864(&v78, v23, a4);
      if (v27 == 65534)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v27 + 7) & 0x1FFF8;
        if ((v78 & 0x40) != 0)
        {
          v28 = v27;
        }
      }

      v72 += v28;
      v23 = a3;
    }
  }

  v29 = *(v23 + 36);
  v76 = v29 - 1;
  if (v29 - 1 < 0)
  {
LABEL_96:
    v58 = v23;
    v20 = sub_10003D680(a1, *(v23 + 16), &v78, *(v23 + 32) & 2, *(v23 + 34), a11);
    if (!v20)
    {
      sub_10003D7AC(&v78, v58, *a11, a5 + a4, a4, a5, a6, a7, a8, a9);
      sub_10003D7AC(&v78, v58, *a10, a5 + a4 - 1, a4, a5, a6, a7, a8, a9);
      v21 = 0;
      v59 = *(v17 + 4) + 2;
      goto LABEL_102;
    }

    goto LABEL_2;
  }

  v61 = a8;
  v62 = a6;
  v63 = a7;
  v64 = v17;
  v30 = 0;
  v31 = 0;
  v68 = 0;
  v69 = WORD4(v78);
  v65 = v23 + 56;
  v74 = v78;
  v75 = a4 - v29;
  v70 = a4 - v29 + 1;
  v71 = -1;
  v32 = 1;
  v67 = -1;
  do
  {
    v33 = v76 + v30;
    if (v75 == v30)
    {
      if (a5)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (v33 >= a4)
      {
        v34 = v76 + v30;
      }

      else
      {
        v34 = v33 + 1;
      }

      v35 = v69;
      if ((*(v23 + 32) & 4) == 0)
      {
        v35 = *(v65 + 8 * v34 + 2);
      }

      v36 = sub_10003A864(&v78, v23, v34);
      v23 = v77;
      if ((v74 & 0x40) != 0)
      {
        v37 = v35;
      }

      else
      {
        v37 = (v35 + 7) & 0x1FFF8;
      }

      v38 = (v36 + 7) & 0x1FFF8;
      if ((v74 & 0x40) != 0)
      {
        v38 = v36;
      }

      if (v36 == 65534)
      {
        v38 = 0;
      }

      v31 += v37 + v38;
    }

    if (v70 == v30)
    {
      v39 = a5;
    }

    else
    {
      v39 = 0;
    }

    v40 = a4;
    if (v33 >= a4)
    {
      v41 = a5;
    }

    else
    {
      v41 = 0;
    }

    if (v33 < a4)
    {
      v42 = a5;
    }

    else
    {
      v42 = 0;
    }

    if (v33 < a4)
    {
      v43 = 1;
    }

    else
    {
      v43 = v39;
    }

    v44 = v32 - v42;
    v45 = sub_10003A8DC(&v78, v23, v30 - v41) + v31;
    v46 = sub_10003A8DC(&v78, *a10, v44) - v31;
    if (v43)
    {
      v47 = v46;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 + v72;
    v54 = v48 >= v73;
    v49 = v48 - v73;
    if (v54)
    {
      if ((v74 & 2) != 0)
      {
        v56 = v68;
        v57 = v49 > v68;
        if (v49 > v68)
        {
          v56 = v49;
        }

        v68 = v56;
        v55 = v71;
        if (v57)
        {
          v55 = v76 + v30;
        }
      }

      else
      {
        if (v43)
        {
          v50 = v45;
        }

        else
        {
          v50 = v49;
        }

        if (v43)
        {
          v46 = v49;
        }

        if (v50 <= v46)
        {
          v51 = v46;
        }

        else
        {
          v51 = v50;
        }

        if (v50 < v46)
        {
          v46 = v50;
        }

        v52 = v51 - v46;
        v53 = v67;
        v54 = v52 >= v67;
        if (v52 < v67)
        {
          v53 = v52;
        }

        v67 = v53;
        v55 = v71;
        if (!v54)
        {
          v55 = v76 + v30;
        }
      }

      v71 = v55;
    }

    a4 = v40;
    v23 = v77;
LABEL_91:
    --v30;
    ++v32;
  }

  while (v29 + v30 > 0);
  v17 = v64;
  a7 = v63;
  a8 = v61;
  a6 = v62;
  if (v71 == -1)
  {
    goto LABEL_96;
  }

  sub_10003D7AC(&v78, v23, *a10, v71, a4, a5, v62, v63, v61, a9);
  if (v71 < a4 || (a5 & 1) != 0)
  {
    if (v71 > a4 && a5)
    {
      sub_10003A458(&v78, v77, a4, v62, v63, v61, a9);
    }
  }

  else
  {
    sub_10003CE5C(&v78, v77, a4, v62, v63, v61, a9);
  }

  v21 = 0;
  v59 = *(v64 + 4) + 1;
LABEL_102:
  *(v17 + 4) = v59;
  return v21;
}

void *sub_10003D538(uint64_t a1, uint64_t a2, int a3, const void *a4, unsigned int a5, _WORD *a6, const void *a7, unsigned int a8, _WORD *a9)
{
  v16 = sub_10003B000(a1, a2, 0, a5, a6);
  v17 = sub_10003B000(a1, a2, 1, a8, a9);
  v18 = a2 + 56;
  memcpy((a2 + 56 + *(a2 + 42) + v16), a4, a5);
  if (a7 && v17 <= 0xFFFD)
  {
    v19 = -40;
    if ((*(a2 + 32) & 1) == 0)
    {
      v19 = 0;
    }

    memcpy((a2 + *(a1 + 4) + v19 - v17), a7, a8);
  }

  v20 = a3;
  v21 = (*(a2 + 36) - a3);
  if ((*(a2 + 32) & 4) != 0)
  {
    v24 = (v18 + 4 * a3);
    result = memmove(v24 + 2, v24, 4 * v21);
    *v24 = v16;
    v24[1] = v17;
  }

  else
  {
    v22 = (v18 + 8 * a3);
    result = memmove(v22 + 4, (v18 + 8 * v20), 8 * v21);
    *v22 = v16;
    v22[1] = a5;
    v22[2] = v17;
    v22[3] = a8;
  }

  ++*(a2 + 36);
  return result;
}

uint64_t sub_10003D680(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, __int16 a5, void *a6)
{
  v21 = 0;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v12 = sub_10002EF64(a1, &v21, *(a1 + 40), a2, 0, &v22);
  if (v12)
  {
    if (v21 && *(a1 + 40) != 0x8000000)
    {
      free(v21);
    }
  }

  else
  {
    sub_10003D9C4(a3, v21, a4, a5);
    v13 = v21;
    *(v21 + 1) = v22;
    v13[2] = a2;
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }

    v16 = *(a1 + 40);
    if (v16 == 0x8000000)
    {
      v17 = -2013265920;
    }

    else
    {
      v17 = *(a1 + 40);
    }

    v18 = v17 | v15;
    *(v13 + 6) = v18;
    if (!v16)
    {
      v20 = *(a1 + 8);
      if (v20)
      {
        if ((*(*(v20 + 40) + 264) & 1) == 0)
        {
          *(v13 + 6) = v18 | 0x10000000;
        }
      }
    }

    *(v13 + 7) = *(a1 + 48);
    if (v14)
    {
      *(v13 + a3[1] - 40) = *a3;
    }

    *a6 = v13;
  }

  return v12;
}

_BYTE *sub_10003D7AC(_BYTE *result, uint64_t a2, _WORD *a3, signed int a4, int a5, int a6, const void *a7, unsigned int a8, const void *a9, unsigned int a10)
{
  v15 = result;
  if ((a3[16] & 4) == 0 || (*result & 4) != 0)
  {
    v16 = *(a2 + 36);
    if (a4 < a5)
    {
      v17 = a6;
    }

    else
    {
      v17 = 0;
    }

    result = sub_10003C4A8(result, a3, (v17 << 31 >> 31) - a4 + v16);
    v18 = a3[21];
    if (result > v18)
    {
      a3[23] += v18 - result;
      a3[21] = result;
    }
  }

  else
  {
    v16 = *(a2 + 36);
  }

  if (v16 > a4)
  {
    v32 = a3;
    v19 = 0;
    v20 = a4;
    do
    {
      v21 = 0;
      v34 = 0;
      v35 = 0;
      if (v20 >= a5)
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 + 1;
      }

      v33 = 0;
      if (v22 < v16)
      {
        sub_10003BF40(v15, a2, v22, &v35, &v33 + 1);
        result = sub_10003BFC8(v15, a2, v22, &v34, &v33);
        v21 = v33;
        if (v33 == 65534 || v33 == 0)
        {
          v34 = &unk_100076F5A;
        }
      }

      if (!a6 || a5 - 1 != v20)
      {
        v24 = v35;
        if (a5 - 1 + a6 == v20)
        {
          if (a7)
          {
            v24 = a7;
            v25 = a8;
          }

          else
          {
            v25 = HIDWORD(v33);
          }

          if (a9)
          {
            v26 = a9;
          }

          else
          {
            v26 = v34;
          }

          if (a9)
          {
            v21 = a10;
          }
        }

        else
        {
          v25 = HIDWORD(v33);
          v26 = v34;
        }

        result = sub_10003D538(v15, v32, v19++, v24, v25, 0, v26, v21, 0);
      }

      ++v20;
      v16 = *(a2 + 36);
    }

    while (v20 < v16);
  }

  v27 = v16 - 1;
  if ((v16 - 1) >= a4)
  {
    v28 = a5 - v16;
    do
    {
      if (v28)
      {
        if (v27 >= a5)
        {
          v29 = v27;
        }

        else
        {
          v29 = v27 + 1;
        }

        result = sub_10003DA70(v15, a2, v29);
      }

      --v27;
      ++v28;
    }

    while (v27 >= a4);
  }

  return result;
}

_DWORD *sub_10003D9C4(_DWORD *result, uint64_t a2, char a3, __int16 a4)
{
  v4 = a3 & 0x1B;
  *(a2 + 32) = v4;
  *(a2 + 34) = a4;
  *(a2 + 36) = 0;
  *(a2 + 40) = 0;
  *(a2 + 44) = 0;
  *(a2 + 48) = 0xFFFF0000FFFFLL;
  v5 = result[2];
  if ((a3 & 2) != 0)
  {
    v6 = result[3];
  }

  else if ((a3 & 8) != 0)
  {
    v6 = result[4] + 8;
  }

  else
  {
    v6 = 8;
  }

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    LODWORD(v8) = result[1];
    LOWORD(v9) = 64;
  }

  else
  {
    v4 |= 4u;
    *(a2 + 32) = v4;
    v8 = result[1];
    v9 = (4 * ((v8 - 56) / ((v6 + v5) + 4))) & 0xFFFFFFF8;
  }

  *(a2 + 42) = v9;
  *(a2 + 46) = v8 - v9 + (((v4 << 15) >> 15) & 0xFFD8) - 56;
  return result;
}

void *sub_10003DA70(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 32);
  v7 = a2 + 56;
  v8 = a3;
  v9 = a2 + 56 + 4 * a3;
  v10 = a2 + 56 + 8 * a3;
  if ((v6 & 4) != 0)
  {
    v11 = (a2 + 56 + 4 * a3);
  }

  else
  {
    v11 = (a2 + 56 + 8 * a3);
  }

  v12 = v7 + 8 * a3;
  if ((v6 & 4) != 0)
  {
    v13 = *(a1 + 8);
  }

  else
  {
    LOWORD(v13) = *(v12 + 2);
  }

  sub_10003A94C(a1, a2, 0, *v11, v13);
  if ((*(a2 + 32) & 4) != 0)
  {
    v14 = (v7 + 4 * v8 + 2);
  }

  else
  {
    v14 = (v12 + 4);
  }

  v15 = *v14;
  v16 = sub_10003A864(a1, a2, a3);
  sub_10003A94C(a1, a2, 1, v15, v16);
  v17 = (*(a2 + 36) + ~a3);
  if ((*(a2 + 32) & 4) != 0)
  {
    result = memmove(v9, (v9 + 4), 4 * v17);
    v19 = *(a2 + 36) - 1;
    *(v7 + 4 * v19) = -1;
  }

  else
  {
    result = memmove(v10, (v10 + 8), 8 * v17);
    v19 = *(a2 + 36) - 1;
    *(v7 + 8 * v19) = 0xFFFF0000FFFFLL;
  }

  *(a2 + 36) = v19;
  return result;
}

uint64_t sub_10003DB98(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, char **a7, _BYTE *a8, unsigned __int16 a9)
{
  v43 = -1431655766;
  v42 = -1431655766;
  v16 = *(a1 + 36);
  v17 = *(a1 + 56);
  v37 = -1431655766;
  v36 = v16;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  *a7 = 0;
  v35 = *a3;
  v38 = v17;
  v18 = *(a4 + 34);
  v19 = sub_10003BC54(a1, &v35, a4, a5, a6, &v43, &v42);
  v20 = v19;
  v21 = v18 > a9;
  v22 = v21;
  if (!v21)
  {
    if (!v19)
    {
      if (v42)
      {
        v26 = v43;
        sub_10003DA70(&v35, a4, v43);
        if (a9)
        {
LABEL_10:
          v22 = 0;
          goto LABEL_14;
        }

        v29 = 24;
LABEL_13:
        --*(a3 + v29);
LABEL_14:
        if (*(a4 + 32) & 1) == 0 && (*(a4 + 34) == a9 || v40 || ((v22 | v39)))
        {
          sub_10003CA8C(a1, a2, a4, v27, v28);
        }

        if (*a7)
        {
          sub_10003CA8C(a1, a2, *a7, v27, v28);
        }

        if (v26)
        {
          v30 = 0;
        }

        else if (*(a4 + 34) == a9)
        {
          v30 = 1;
        }

        else
        {
          v30 = v22 | v39;
        }

        v20 = 0;
        *a8 = v30 & 1;
        goto LABEL_30;
      }

      v20 = 2;
    }

LABEL_30:
    v31 = v40;
    goto LABEL_31;
  }

  if (v19)
  {
    goto LABEL_30;
  }

  v23 = a2;
  v24 = v43;
  v25 = sub_10003BD54(a1, v23, &v35, a4, v43, 1, &v41);
  if (v25 || (v25 = sub_10003DB98(a1, v23, a3, v41, a5, a6, &v40, &v39, a9), v25))
  {
    v20 = v25;
    goto LABEL_30;
  }

  if (!*(v41 + 9))
  {
    v26 = v24;
    sub_10003DA70(&v35, a4, v24);
    sub_10002F164(a1, *(a1 + 40), *(v41 + 2), *(v41 + 1));
    if (*(a1 + 40) != 0x8000000)
    {
      free(v41);
    }

    v41 = 0;
    v29 = 32;
    a2 = v23;
    v22 = v21;
    goto LABEL_13;
  }

  v31 = v40;
  v26 = v24;
  v32 = sub_10003CB6C(a1, a3, a4, v24);
  if (!v32)
  {
    a2 = v23;
    goto LABEL_10;
  }

  v20 = v32;
LABEL_31:
  if (v31 && *(a1 + 40) != 0x8000000)
  {
    free(v31);
  }

  if (v41 && *(a1 + 40) != 0x8000000)
  {
    free(v41);
  }

  return v20;
}

uint64_t sub_10003DE78(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v12 = 0;
  if ((*(a4 + 32) & 2) != 0 || !*(a4 + 36))
  {
LABEL_7:
    sub_10002F164(a1, *(a1 + 40), *(a4 + 16), *(a4 + 8));
    v10 = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_10003BD54(a1, a2, a3, a4, v8, 1, &v12);
      if (v9)
      {
        break;
      }

      v9 = sub_10003DE78(a1, a2, a3, v12);
      if (v9)
      {
        break;
      }

      if (++v8 >= *(a4 + 36))
      {
        goto LABEL_7;
      }
    }

    v10 = v9;
  }

  if (v12 && *(a1 + 40) != 0x8000000)
  {
    free(v12);
  }

  return v10;
}

uint64_t sub_10003DF5C(uint64_t *a1, uint64_t a2)
{
  v61 = 0;
  v4 = sub_100025548(a1, a2, 0x40000000, *(*(a2 + 40) + 976), 0, 0, 24, 0, &v61, 0, 1);
  if (v4)
  {
    v12 = v4;
    sub_10004565C("could not retrieve er_state_phys_t\n", v5, v6, v7, v8, v9, v10, v11, v59);
    v13 = 516;
    v14 = v12;
LABEL_8:
    sub_100049C40(v13, v14);
    goto LABEL_9;
  }

  v15 = v61;
  if (*(v61 + 8) != 1179402562)
  {
    sub_10004565C("er_state magic number is %d, should be %d\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 8));
    v12 = 92;
    v13 = 517;
    goto LABEL_7;
  }

  v16 = *(v61 + 9);
  if (v16 >= 3)
  {
    sub_10004565C("er_state->ersb_version is %d, should be at most %d\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 9));
    v12 = 92;
    v13 = 518;
LABEL_7:
    v14 = 92;
    goto LABEL_8;
  }

  if (v16 != 2)
  {
    if (v16 != 1)
    {
      sub_10004565C("ersb_version is %d, unsupported\n", v5, v6, v7, v8, v9, v10, v11, *(v61 + 9));
      v12 = 92;
      v13 = 739;
      goto LABEL_7;
    }

    v18 = sub_10003E33C(*(v61 + 5), v5, v6, v7, v8, v9, v10, v11);
    if (!v18)
    {
      if ((v15[5] & 0x20) != 0 && !v15[15])
      {
        sub_10004565C("invalid ersb_flags (0x%llx), ERSB_FLAG_CID_IS_TWEAK is set but ersb_fext_cid == 0\n", v19, v20, v21, v22, v23, v24, v25, v15[5]);
        v12 = 92;
        v13 = 716;
        goto LABEL_7;
      }

      v18 = sub_10003E3C8(a1, v15[6], v20, v21, v22, v23, v24, v25);
      if (!v18)
      {
        v33 = v15[12];
        if (v33 > *(a1[1] + 40))
        {
          sub_10004565C("ersb_total_blk_to_encrypt (%llu) exceeds device block count (%llu)\n", v26, v27, v28, v29, v30, v31, v32, v15[12]);
          v12 = 92;
          v13 = 522;
          goto LABEL_7;
        }

        if (v15[11] > v33)
        {
          sub_100045744("ersb_progress (%llu) exceeds ersb_total_blk_to_encrypt (%llu)\n", v26, v27, v28, v29, v30, v31, v32, v15[11]);
        }

        if ((v15[5] & 8) != 0 && *(v15 + 28))
        {
          sub_10004565C("ersb_flags (0x%llx) has ERSB_FLAG_PAUSED on but checksum count is non-zero (%u)\n", v26, v27, v28, v29, v30, v31, v32, v15[5]);
          v12 = 92;
          v13 = 523;
          goto LABEL_7;
        }

        if (*(v15 + 28) > HIWORD(*(v15 + 28)))
        {
          sub_10004565C("checksum_count (%u) exceeds max checksums (%u)\n", v26, v27, v28, v29, v30, v31, v32, *(v15 + 28));
          v12 = 92;
          v13 = 717;
          goto LABEL_7;
        }

        v18 = sub_10003E428(a1, a2, v15[13], v15[12]);
      }
    }

    goto LABEL_25;
  }

  v18 = sub_10003E33C(*(v61 + 5), v5, v6, v7, v8, v9, v10, v11);
  if (v18)
  {
    goto LABEL_25;
  }

  v18 = sub_10003E3C8(a1, v15[6], v34, v35, v36, v37, v38, v39);
  if (v18)
  {
    goto LABEL_25;
  }

  v46 = v15[10];
  if (v15[9] > v46)
  {
    sub_100045744("ersb_progress (%llu) exceeds ersb_total_blk_to_encrypt (%llu)\n", v40, v41, v46, v42, v43, v44, v45, v15[9]);
    v46 = v15[10];
  }

  v18 = sub_10003E428(a1, a2, v15[11], v46);
  if (v18)
  {
LABEL_25:
    v12 = v18;
    goto LABEL_9;
  }

  v62 = 0;
  v47 = sub_100025548(a1, 0, 0x40000000, v15[11], 0, 0, 25, 0, &v62, 0, 0);
  if (v47)
  {
    v12 = v47;
    v55 = 2863311530;
    sub_10004565C("could not retrieve gbitmap from er_state_phys_t\n", v48, v49, v50, v51, v52, v53, v54, v60);
    sub_100049C40(0x2CE, v12);
  }

  else
  {
    v56 = *(v62 + 5);
    v57 = a1[1];
    v58 = *(v57 + 40);
    if ((v56 / v58) * v58 == v56)
    {
      v12 = 0;
      v55 = *(v57 + 36) / (v56 / v58);
    }

    else
    {
      v55 = 2863311530;
      sub_10004565C("bm_bit_count %llu is not an integer multiple of container block count %llu\n", v48, v49, v50, v51, v52, v53, v54, *(v62 + 5));
      sub_100049C40(0x2CF, 0);
      v12 = 92;
    }
  }

  if (v62)
  {
    free(v62);
  }

  if (!v12)
  {
    if (v15[13])
    {
      if ((v15[5] & 8) != 0)
      {
        sub_10004565C("ersb_flags (0x%llx) has ERSB_FLAG_PAUSED on but ersb_recovery_extents_count is non-zero (%llu)\n", v48, v49, v50, v51, v52, v53, v54, v15[5]);
        v12 = 92;
        v13 = 738;
        goto LABEL_7;
      }

      v18 = sub_10003E698(a1, a2, v15, v55, v51, v52, v53, v54);
      goto LABEL_25;
    }

    if (v15[14])
    {
      sub_10004565C("ersb_recovery_extents_count == 0, but ersb_recovery_list_oid is non-zero (0x%llx)\n", v48, v49, v50, v51, v52, v53, v54, v15[14]);
      v12 = 92;
      v13 = 736;
      goto LABEL_7;
    }

    if (v15[15])
    {
      sub_10004565C("ersb_recovery_extents_count == 0, but ersb_recovery_length is non-zero (%llu)\n", v48, v49, v50, v51, v52, v53, v54, v15[15]);
      v12 = 92;
      v13 = 737;
      goto LABEL_7;
    }

    v12 = 0;
  }

LABEL_9:
  if (v61)
  {
    free(v61);
  }

  return v12;
}

uint64_t sub_10003E33C(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = HIBYTE(a1);
  if ((a1 & 3) == 3 || (a1 & 3) == 0)
  {
    sub_10004565C("invalid ersb_flags (0x%llx), exactly one of ERSB_FLAG_ENCRYPTING and ERSB_FLAG_DECRYPTING bits must be set\n", a2, a3, a4, a5, a6, a7, a8, a1);
    v10 = 519;
  }

  else
  {
    if (sub_10003E588(a1))
    {
      return 0;
    }

    sub_10004565C("invalid checksum block size, enum: %llu\n", v13, v14, v15, v16, v17, v18, v19, v8 & 0xF);
    v10 = 715;
  }

  v11 = 92;
  sub_100049C40(v10, 92);
  return v11;
}

uint64_t sub_10003E3C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(a1 + 8) + 96) > a2)
  {
    return 0;
  }

  v10 = *(*(a1 + 8) + 96);
  sub_10004565C("ersb_snap_xid (%llu) is greater than or equal to container next xid (%llu)\n", a2, a3, a4, a5, a6, a7, a8, a2);
  v8 = 92;
  sub_100049C40(0x209, 92);
  return v8;
}

uint64_t sub_10003E428(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = 0;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[2] = v7;
  v29[3] = v7;
  v29[0] = v7;
  v29[1] = v7;
  v8 = sub_100025548(a1, a2, 0x40000000, a3, 0, 0, 25, 0, &v30, 0, 1);
  if (v8)
  {
    v16 = v8;
    sub_10004565C("could not retrieve gbitmap from er_state_phys_t\n", v9, v10, v11, v12, v13, v14, v15, v27);
    v17 = 546;
LABEL_3:
    v18 = v16;
LABEL_6:
    sub_100049C40(v17, v18);
    goto LABEL_7;
  }

  if (v30[5] < a4)
  {
    sub_10004565C("ersb_total_blk_to_encrypt (%llu) exceeds bm_bit_count (%llu)\n", v9, v10, v11, v12, v13, v14, v15, a4);
    v16 = 92;
    v17 = 740;
    v18 = 92;
    goto LABEL_6;
  }

  sub_100039748(v29, a1, a2, 0x40000000, 2, 26, 0, *(a1[1] + 36), 8, 8, 0, v30[4], sub_100030C88);
  v16 = sub_10003570C(v29, 0, sub_10003E5AC, 0, 0, 1);
  if (v16)
  {
    sub_10004565C("encryption rolling gbitmap tree is invalid\n", v20, v21, v22, v23, v24, v25, v26, v28);
    v17 = 494;
    goto LABEL_3;
  }

LABEL_7:
  if (v30)
  {
    free(v30);
  }

  return v16;
}

uint64_t sub_10003E588(unsigned int a1)
{
  v1 = (a1 >> 8) & 0xF;
  if (v1 > 6)
  {
    return 0;
  }

  else
  {
    return dword_100076F5C[v1];
  }
}

uint64_t sub_10003E5AC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 0;
  v8 = *a5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*a5 & 0x8000000000000000) != 0)
  {
    *a5;
    if (v8)
    {
      v10 = *(a1[1] + 40) > v8;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      if (a2)
      {
        v11 = *(*(a2 + 40) + 8);
      }

      else
      {
        v11 = 0;
      }

      sub_1000422DC(a1, v8, 1, v11, 0x40000000, v8, 0, 27, &_mh_execute_header, &_mh_execute_header >> 32);
      return 0;
    }

    else
    {
      v13 = *a3;
      sub_10004565C("invalid gbitmap block oid 0x%llx for key 0x%llx\n", a2, a3, a4, a5, v8, a7, a8, *a5);
      v9 = 92;
      sub_100049C40(0x30F, 92);
    }
  }

  else
  {
    v9 = sub_100025548(a1, a2, 0x40000000, v8, 0, 0, 27, 0, &v14, 0, 1);
    if (v14)
    {
      free(v14);
    }
  }

  return v9;
}

uint64_t sub_10003E698(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = 0;
  if (!a3[14])
  {
    sub_10004565C("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_list_oid == 0\n", a2, a3, a4, a5, a6, a7, a8, a3[13]);
    v17 = 92;
    v20 = 720;
LABEL_12:
    sub_100049C40(v20, 92);
    v16 = 0;
    goto LABEL_13;
  }

  v9 = a3[15];
  if (!v9)
  {
    sub_10004565C("ersb_recovery_extents_count is non-zero (%llu), but ersb_recovery_length == 0\n", a2, a3, a4, a5, a6, a7, a8, a3[13]);
    v17 = 92;
    v20 = 721;
    goto LABEL_12;
  }

  if (v9 > 0x1400000)
  {
    sub_100045744("ersb_recovery_length (%llu) exceeds recovery length limit (%llu), some checks will be disabled\n", a2, a3, a4, a5, a6, a7, a8, a3[15]);
    v14 = a3 + 13;
    v13 = a3[13];
    v15 = 48 * v13;
    if ((48 * v13) <= a3[15])
    {
      v16 = 0;
      goto LABEL_19;
    }

    v21 = a3[15];
    goto LABEL_11;
  }

  v14 = a3 + 13;
  v13 = a3[13];
  v15 = 48 * v13;
  if (48 * v13 > v9)
  {
LABEL_11:
    sub_10004565C("ersb_recovery_extents_count is %llu, extent descriptor size is %zu, expected descriptors length is %llu > ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, v13);
    v17 = 92;
    v20 = 722;
    goto LABEL_12;
  }

  v16 = malloc_type_calloc(1uLL, a3[15], 0x151381A2uLL);
  if (!v16)
  {
    sub_10004565C("error allocating encryption rolling recovery data buffer, ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, a3[15]);
    v17 = 12;
    v18 = 723;
    v19 = 12;
    goto LABEL_57;
  }

LABEL_19:
  v59 = a4;
  v23 = a3[14];
  if (v23)
  {
    v24 = 0;
    while (1)
    {
      if (v24 >= a3[15])
      {
        v56 = a3[15];
        sub_10004565C("encryption rolling recovery data extends past recovery length, oid 0x%llx, ersb_recovery_length %llu, accumulated length %llu\n", a2, a3, a4, a5, a6, a7, a8, v23);
        v17 = 92;
        v18 = 728;
        goto LABEL_56;
      }

      v25 = sub_100025548(a1, a2, 0x40000000, v23, 0, 0, 28, 0, &v60, 0, 1);
      if (v25)
      {
        v17 = v25;
        sub_10004565C("could not retrieve erb, oid 0x%llx\n", v26, v27, v28, v29, v30, v31, v32, v23);
        v18 = 724;
        v19 = 2;
        goto LABEL_57;
      }

      v33 = v60;
      if (v24 != *(v60 + 4))
      {
        sub_10004565C("encryption rolling recovery block offset mismatch, oid 0x%llx, expected %llu, actual %llu\n", v26, v27, v28, v29, v30, v31, v32, v23);
        v17 = 92;
        v18 = 725;
        goto LABEL_56;
      }

      v34 = *(a1[1] + 36);
      v35 = v34 - 48 >= a3[15] - v24 ? a3[15] - v24 : v34 - 48;
      if (!v35)
      {
        break;
      }

      if (v9 <= 0x1400000)
      {
        memcpy(v16 + v24, v60 + 48, v35);
        v33 = v60;
      }

      v23 = v33[5];
      v24 += v35;
      free(v33);
      v60 = 0;
      if (!v23)
      {
        goto LABEL_33;
      }
    }

    v57 = *(a1[1] + 36);
    sub_10004565C("encryption rolling recovery block with data size 0, oid 0x%llx, nx_block_size %u, recovery length %llu\n", v26, v27, v28, v29, v30, v31, v32, v23);
    v17 = 92;
    v18 = 726;
  }

  else
  {
    v24 = 0;
LABEL_33:
    v36 = a3[15];
    if (v24 >= v36)
    {
      v37 = a3[5];
      v38 = sub_10003E588(v37);
      if (v38)
      {
        if (v9 > 0x1400000 || !*v14)
        {
LABEL_50:
          v17 = 0;
          goto LABEL_13;
        }

        v46 = 0;
        v47 = a1[1];
        v48 = *(v47 + 36);
        v49 = *(v47 + 40);
        v50 = v16 + 5;
        while (1)
        {
          v51 = *(v50 - 2);
          if (v51 < 1 || v49 <= v51)
          {
            sub_10004565C("recovery extent #%llu: invalid fext_pbn (0x%llx)\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 730;
            goto LABEL_56;
          }

          v53 = *(v50 - 5);
          v52 = *(v50 - 4);
          if (!v53 || (v54 = v49 * (v48 / v59), v54 <= v53) || v54 <= v52 || v54 - v52 < v53)
          {
            v58 = *(v50 - 4);
            sub_10004565C("recovery extent #%llu: invalid prange (0x%llx+%llu), dev_bsize %u\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 732;
            goto LABEL_56;
          }

          if (*(v50 - 1) / v48 >= v49)
          {
            sub_10004565C("recovery extent #%llu: fext_laddr (0x%llx) exceeds nx_block_count (%llu), fs_bsize %u\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 733;
            goto LABEL_56;
          }

          v55 = 8 * (v52 * v59 / v38);
          if (v55 + v15 > v36)
          {
            sub_10004565C("recovery extent #%llu: checksums at offset %llu, length %llu exceed ersb_recovery_length %llu\n", v59, v40, v41, v42, v43, v44, v45, v46);
            v17 = 92;
            v18 = 734;
            goto LABEL_56;
          }

          if ((v37 & 0x20) != 0 && !*v50)
          {
            break;
          }

          ++v46;
          v50 += 6;
          v15 += v55;
          if (*v14 == v46)
          {
            goto LABEL_50;
          }
        }

        sub_10004565C("recovery extent #%llu: invalid ersb_flags (0x%llx), ERSB_FLAG_CID_IS_TWEAK is set but fext_cid == 0\n", v59, v40, v41, v42, v43, v44, v45, v46);
        v17 = 92;
        v18 = 735;
      }

      else
      {
        sub_10004565C("checksum block size is invalid, checksum_block_size enum: %llu\n", v39, v40, v41, v42, v43, v44, v45, BYTE1(v37) & 0xF);
        v17 = 92;
        v18 = 729;
      }
    }

    else
    {
      sub_10004565C("missing encryption rolling recovery data, actual length %llu, ersb_recovery_length %llu\n", a2, a3, a4, a5, a6, a7, a8, v24);
      v17 = 92;
      v18 = 727;
    }
  }

LABEL_56:
  v19 = 92;
LABEL_57:
  sub_100049C40(v18, v19);
LABEL_13:
  if (v60)
  {
    free(v60);
  }

  if (v16)
  {
    free(v16);
  }

  return v17;
}

unint64_t sub_10003EB70(uint32x4_t *a1, unint64_t a2, unint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v5 = a3;
  v6 = HIDWORD(a3);
  if ((a2 & 3) == 0)
  {
    for (i = a2 >> 2; i; v6 = v34 + HIDWORD(v34))
    {
      if (i >= 0x16A00)
      {
        v8 = 92672;
      }

      else
      {
        v8 = i;
      }

      i -= v8;
      v9 = veorq_s8(a4, a4);
      v10 = veorq_s8(a5, a5);
      v9.i64[0] = v5;
      v10.i64[0] = v6;
      if (v8 >= 16)
      {
        v11 = *a1;
        v12 = a1[1];
        v13 = a1[2];
        v14 = a1[3];
        a1 += 4;
        v15 = vshlq_n_s64(v9, 4uLL);
        v16 = vmull_u32(*v12.i8, 0xB0000000CLL);
        v17 = vmull_u32(*v13.i8, 0x700000008);
        v18 = vmlal_u32(vmlal_u32(v10, *v11.i8, 0xF00000010), *v14.i8, 0x300000004);
        v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v9, v11), v12), v13);
        v20 = v8 < 32;
        for (v8 -= 32; !v20; v8 -= 16)
        {
          v21 = vmlal_high_u32(v16, v11, *qword_10003EB30);
          v22 = *a1;
          a1 += 4;
          v11 = v22;
          v23 = vmlal_high_u32(v17, v12, *&qword_10003EB30[2]);
          v12 = a1[-3];
          v24 = vpadalq_u32(v19, v14);
          v25 = vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_10003EB30[4]);
          v13 = a1[-2];
          v26 = vmlal_high_u32(v21, v14, *&qword_10003EB30[6]);
          v14 = a1[-1];
          v15 = vshlq_n_s64(v24, 4uLL);
          v16 = vmlal_u32(v26, *v12.i8, 0xB0000000CLL);
          v17 = vmlal_u32(v23, *v13.i8, 0x700000008);
          v18 = vmlal_u32(vmlal_u32(v25, *v22.i8, 0xF00000010), *v14.i8, 0x300000004);
          v19 = vpadalq_u32(vpadalq_u32(vpadalq_u32(v24, v22), v12), v13);
          v20 = v8 < 16;
        }

        v9 = vpadalq_u32(v19, v14);
        v10 = vaddq_s64(vaddq_s64(vmlal_high_u32(vaddq_s64(v18, v15), v13, *&qword_10003EB30[4]), vmlal_high_u32(v17, v12, *&qword_10003EB30[2])), vmlal_high_u32(vmlal_high_u32(v16, v11, *qword_10003EB30), v14, *&qword_10003EB30[6]));
      }

      if ((v8 & 8) != 0)
      {
        v27 = *a1;
        a1 += 2;
        v28 = a1[-1];
        v29 = vshlq_n_s64(v9, 3uLL);
        v9 = vpadalq_u32(vpadalq_u32(v9, v27), v28);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_high_u32(vmlal_u32(vmlal_u32(v10, *v27.i8, 0x700000008), *v28.i8, 0x300000004), v27, *&qword_10003EB30[4]), v28, *&qword_10003EB30[6]), v29);
      }

      if ((v8 & 4) != 0)
      {
        v30 = *a1++;
        v31 = vshlq_n_s64(v9, 2uLL);
        v9 = vpadalq_u32(v9, v30);
        v10 = vaddq_s64(vmlal_high_u32(vmlal_u32(v10, *v30.i8, 0x300000004), v30, *&qword_10003EB30[6]), v31);
      }

      v32 = v8 & 3;
      a4 = vpaddq_s64(v9, v9);
      a5 = vpaddq_s64(v10, v10);
      v33 = a4.i64[0];
      v34 = a5.i64[0];
      if (v32)
      {
        do
        {
          v35 = a1->i32[0];
          a1 = (a1 + 4);
          v33 += v35;
          v34 += v33;
          v20 = v32-- <= 1;
        }

        while (!v20);
      }

      v5 = v33 + HIDWORD(v33);
    }
  }

  v36 = v5 + HIDWORD(v5);
  v37 = v6 + HIDWORD(v6);
  if (v36 == 0xFFFFFFFF)
  {
    v36 = 0;
  }

  if (v37 == 0xFFFFFFFF)
  {
    v37 = 0;
  }

  return v36 + (v37 << 32);
}

unint64_t sub_10003ED18(unint64_t *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  result = sub_10003EB70(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(result) + result - 0xFFFFFFFF * ((((HIDWORD(result) + result) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  *a1 = v8 | (~(v8 + result + ((((v8 + result) * 0x200000003uLL) >> 64) >> 1)) << 32);
  return result;
}

unint64_t sub_10003ED88(void *a1, uint32x4_t *a2, unint64_t a3, unint64_t a4, int8x16_t a5, int8x16_t a6)
{
  v7 = sub_10003EB70(a2, a3, a4, a5, a6);
  v8 = (HIDWORD(v7) + v7 - 0xFFFFFFFF * ((((HIDWORD(v7) + v7) * 0x200000003uLL) >> 64) >> 1)) ^ 0xFFFFFFFF;
  return (v8 | (~(v8 + v7 + ((((v8 + v7) * 0x200000003uLL) >> 64) >> 1)) << 32)) ^ *a1;
}

const char *sub_10003EDFC(unsigned int a1)
{
  result = "unknown";
  if (a1 <= 0x14 && (a1 & 0x1E) != 0xE)
  {
    return off_100078850[a1];
  }

  return result;
}

const char *sub_10003EE2C(uint64_t a1, int a2)
{
  v2 = *a1 >> 60;
  if (v2 == 14)
  {
    LODWORD(v2) = *(a1 + 8);
  }

  result = "unknown";
  if (v2 <= 0xFu)
  {
    if (v2 == 3)
    {
      if ((a2 - 22) < 0xFFFFFFEB)
      {
        return result;
      }

      v4 = &unk_1000788F8;
      return v4[a2];
    }

    if (v2 == 9)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_1000789A8;
      return v4[a2];
    }

    v5 = "FILE_INFO_TAG_EXT_TYPE_SIGNING_ID";
    if (a2 != 1)
    {
      v5 = "unknown";
    }

    if (v2 == 13)
    {
      return v5;
    }
  }

  else if (v2 > 0x12u)
  {
    if (v2 == 19)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_100078A00;
      return v4[a2];
    }

    if (v2 == 20 && (a2 - 3) >= 0xFFFFFFFE)
    {
      v4 = &unk_100078A18;
      return v4[a2];
    }
  }

  else
  {
    if (v2 == 16)
    {
      if ((a2 - 3) < 0xFFFFFFFE)
      {
        return result;
      }

      v4 = &unk_1000789C0;
      return v4[a2];
    }

    if (v2 == 18 && (a2 - 5) >= 0xFFFFFFFC)
    {
      v4 = &unk_1000789D8;
      return v4[a2];
    }
  }

  return result;
}

uint64_t sub_10003EF3C(uint64_t a1, unint64_t *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    return 22;
  }

  if (a3 < 8)
  {
    return 92;
  }

  v4 = *a2;
  if (a3 <= 0xB && (v4 & 0xF000000000000000) == 0xE000000000000000)
  {
    return 92;
  }

  v6 = v4 >> 60;
  if (v6 == 14)
  {
    LODWORD(v6) = *(a2 + 8);
    if (v6 > 0x13)
    {
      v10 = 0;
      v8 = 8;
      goto LABEL_33;
    }
  }

  v7 = v6;
  if ((0xC201uLL >> v6))
  {
    v8 = 8;
  }

  else
  {
    v8 = dword_100076F78[v6];
  }

  v9 = v7 != 4 || v8 > a3;
  if (!v9 || v7 == 11 && v8 <= a3)
  {
    v10 = *(a2 + 4);
    goto LABEL_33;
  }

  if (v7 != 9)
  {
    v10 = 0;
    goto LABEL_33;
  }

  if (!a1)
  {
    return 22;
  }

  if ((*(a1 + 56) & 9) != 0)
  {
    if (a3 < 0xC)
    {
      v10 = 0;
    }

    else
    {
      v10 = a2[1] & 0x3FF;
    }

    v8 = 12;
  }

  else
  {
    if (a3 < 0xA)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 4);
    }

    v8 = 10;
  }

LABEL_33:
  if (a4)
  {
    *a4 = v8;
  }

  if (v10 + v8 <= a3)
  {
    return 0;
  }

  else
  {
    return 92;
  }
}

uint64_t sub_10003F058(void *a1, unsigned __int16 *a2, unsigned int a3, unsigned int *a4)
{
  if (!a2)
  {
    return 22;
  }

  v4 = *a1 >> 60;
  if (v4 == 14 && (LODWORD(v4) = *(a1 + 8), v4 > 0x13))
  {
    v5 = 0;
    LODWORD(v8) = 0;
    v6 = 0;
  }

  else
  {
    v5 = dword_100076FC8[v4];
    v6 = v4 == 13;
    if (v4 == 13)
    {
      v8 = HIBYTE(a1[1]);
      if (v8 == 2)
      {
        v5 = 26;
      }

      if (v8 == 1)
      {
        LODWORD(v8) = 1;
        v5 = 3;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (v5 > a3)
    {
      goto LABEL_13;
    }
  }

  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v9 = a2[4];
      goto LABEL_14;
    }

    if (v4 == 7)
    {
      v9 = a2[11];
      goto LABEL_14;
    }

    if (v4 == 9 && a3 - v5 >= 4)
    {
      v9 = a2[10];
      goto LABEL_14;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:
        v9 = a2[24];
        goto LABEL_14;
      case 3:
        if (a3 - v5 >= 4)
        {
          v9 = a2[47];
          goto LABEL_14;
        }

        break;
      case 4:
        v9 = a2[1];
        goto LABEL_14;
    }
  }

  if (!v6)
  {
    v10 = a3 - v5;
    if (a3 - v5 >= 4 && v4 == 16)
    {
      v9 = a2[13];
    }

    else if (v10 >= 4 && v4 == 18)
    {
      v9 = a2[27];
    }

    else
    {
      v9 = 0;
      if (v10 >= 4 && v4 == 19)
      {
        v9 = a2[5];
      }
    }

    goto LABEL_14;
  }

  if (v8 == 2)
  {
    if (a3 - v5 >= 4)
    {
      v9 = a2[14];
      goto LABEL_14;
    }
  }

  else if (v8 == 1)
  {
    v9 = *(a2 + 2);
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  if (a4)
  {
    *a4 = v5;
  }

  if (v9 + v5 <= a3)
  {
    return 0;
  }

  else
  {
    return 92;
  }
}