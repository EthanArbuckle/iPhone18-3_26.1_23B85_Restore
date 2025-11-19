uint64_t sub_10004B0E0(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[3];
  v84 = 0;
  if (!a4)
  {
    return 0;
  }

  v9 = a3;
  v10 = a2;
  v12 = 0;
  v13 = v8[16] - 1;
  v14 = v8[14];
  v77 = a4;
  v81 = a3;
  v75 = a3;
  v74 = v8;
  v78 = v14;
  v79 = v13;
  while (1)
  {
    v15 = *(v10 + 8 * v12);
    v85 = v15;
    v86 = 1;
    v16 = a1[3];
    v17 = *(v16 + 152);
    v18 = *(v16 + 176);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v62 = sub_100031608(a1, v18, sub_10004A074, &v85);
      v15 = *(v10 + 8 * v12);
      if (v62 != -1)
      {
        goto LABEL_9;
      }
    }

    else if (v15 < v18 || v15 - v18 >= v17)
    {
LABEL_9:
      sub_100045744("spaceman cib %u address 0x%llx is not in the internal pool\n", v18, a3, v15, a5, a6, a7, a8, v12 + v9);
      sub_100049C40(0x38B, -7);
      v15 = *(v10 + 8 * v12);
    }

    v20 = sub_100025548(a1, 0, 0x40000000, v15, 0, 0, 7, 0, &v84, 0, 1);
    if (v20)
    {
      v63 = v20;
      v72 = *(v10 + 8 * v12);
      sub_10004565C("failed to read spaceman cib %u at address 0x%llx\n", v21, v22, v23, v24, v25, v26, v27, v12 + v9);
      return v63;
    }

    v28 = v84;
    if (*(v84 + 8) != v12 + v9)
    {
      break;
    }

    v29 = v8[10];
    if (v12 + v9 == v13)
    {
      v30 = v14 - v29 * v13;
    }

    else
    {
      v30 = v29;
    }

    if (*(v84 + 9) != v30)
    {
      v73 = *(v84 + 9);
      sub_10004565C("spaceman cib %u wrong number of chunks: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, v12 + v9);
      v63 = 92;
      v64 = 585;
      goto LABEL_63;
    }

    if (v30)
    {
      v31 = a1[3];
      v32 = *(v31 + 48);
      v83 = *(v31 + 56) - 1;
      v33 = (v84 + 64);
      v34 = v29 * v81;
      v80 = v12;
      while (1)
      {
        if (*(v33 - 3) > *(v31 + 16))
        {
          v69 = *(v33 - 3);
          sub_10004565C("spaceman chunk %llu xid is invalid: %llu > %llu\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 580;
          goto LABEL_63;
        }

        v21 = *v33;
        if (*v33)
        {
          v85 = *v33;
          v86 = 1;
          v35 = a1[3];
          v36 = *(v35 + 152);
          v37 = *(v35 + 176);
          if ((v36 & 0x8000000000000000) == 0)
          {
            v38 = __OFSUB__(v21, v37);
            v39 = v21 - v37;
            if (v39 < 0 != v38 || v39 >= v36)
            {
LABEL_27:
              sub_100045744("spaceman chunk %llu bitmap address 0x%llx is not in the internal pool\n", v21, v22, v23, v24, v25, v26, v27, v34);
              sub_100049C40(0x389, -7);
              goto LABEL_30;
            }

LABEL_29:
            sub_1000422DC(a1, v21, 1, 0, 0x40000000, v21, 0, 8, 0, 8u);
            goto LABEL_30;
          }

          v41 = sub_100031608(a1, v37, sub_10004A074, &v85);
          v21 = *v33;
          if (v41 != -1)
          {
            goto LABEL_27;
          }

          if (v21)
          {
            goto LABEL_29;
          }
        }

LABEL_30:
        v42 = *(v31 + 36);
        v43 = v34 * v42;
        if (*(v33 - 2) != v34 * v42)
        {
          v70 = *(v33 - 2);
          sub_10004565C("spaceman chunk %llu disk address out of order: 0x%llx, expected 0x%llx\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 581;
          goto LABEL_63;
        }

        if (v83 == v34)
        {
          v44 = (v32 - v43);
        }

        else
        {
          v44 = v42;
        }

        if ((*(v33 - 1) & 0xFFFFF) != v44)
        {
          v71 = *(v33 - 1) & 0xFFFFF;
          sub_10004565C("spaceman chunk %llu wrong number of blocks: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          v63 = 92;
          v64 = 582;
          goto LABEL_63;
        }

        v45 = *(v33 - 1) & 0xFFFFF;
        if (v45 > v44)
        {
          v66 = *(v33 - 1) & 0xFFFFF;
          sub_100045744("spaceman chunk %llu free count %u > block count %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          sub_100049C40(0x247, -7);
          goto LABEL_50;
        }

        v46 = a1[1];
        v23 = *(v46 + 1248);
        if (!v23)
        {
          *a5 += v45;
          goto LABEL_50;
        }

        v47 = v32;
        v85 = 0xAAAAAAAAAAAAAAAALL;
        v48 = sub_10004F16C(v43, v44, *(v46 + 1240), v23, &v85);
        if (!v48)
        {
          v59 = *(v33 - 1) & 0xFFFFF;
          v60 = a5;
          v61 = *a5;
LABEL_48:
          *v60 = v61 + v59;
          goto LABEL_49;
        }

        v49 = v48;
        if (v48 < (*(v33 - 1) & 0xFFFFFu))
        {
          v23 = *v33;
          if (*v33)
          {
            v87 = 0xAAAAAAAAAAAAAAAALL;
            v50 = sub_100025548(a1, 0, 0x40000000, v23, 0, 0x20000000, 8, 0, &v87, 0, 0);
            if (v50)
            {
              v63 = v50;
              goto LABEL_64;
            }

            v58 = sub_1000085F0(v87, 0, 0, *(v33 - 1) & 0xFFFFF);
            if ((*(v33 - 1) & 0xFFFFF) != v58)
            {
              v67 = *(v33 - 1) & 0xFFFFF;
              sub_100045744("spaceman chunk %llu wrong free count: %u, expected %u\n", v51, v52, v53, v54, v55, v56, v57, v34);
              sub_100049C40(0x388, -7);
            }

            *a5 = *a5 + v58 - sub_1000085F0(v87, 0, v85 - v43, v85 - v43 + v49);
            free(v87);
            goto LABEL_49;
          }

          v59 = *(v33 - 1) & 0xFFFFF;
          v60 = a5;
          v61 = *a5 - v48;
          goto LABEL_48;
        }

LABEL_49:
        v32 = v47;
        v12 = v80;
LABEL_50:
        if (!*v33 && (*(v33 - 1) & 0xFFFFF) != v44)
        {
          v68 = *(v33 - 1) & 0xFFFFF;
          sub_100045744("spaceman chunk %llu free count %u of unallocated bitmap != block count %u\n", v21, v22, v23, v24, v25, v26, v27, v34);
          sub_100049C40(0x38A, -7);
        }

        v33 += 4;
        ++v34;
        if (!--v30)
        {
          v28 = v84;
          v10 = a2;
          v9 = v75;
          v8 = v74;
          break;
        }
      }
    }

    free(v28);
    v84 = 0;
    ++v12;
    ++v81;
    v14 = v78;
    v13 = v79;
    if (v12 == v77)
    {
      return 0;
    }
  }

  sub_10004565C("spaceman cib out of order: %u, expected %u\n", v21, v22, v23, v24, v25, v26, v27, *(v84 + 8));
  v63 = 92;
  v64 = 584;
LABEL_63:
  sub_100049C40(v64, 92);
LABEL_64:
  if (v84)
  {
    free(v84);
  }

  return v63;
}

uint64_t sub_10004B648(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a1 + 24);
  if (*(v10 + 184) != *a2)
  {
    v26 = *(v10 + 184);
    sub_100045744("sm_fs_reserve_block_count is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
    sub_100049C40(0x446, -7);
    if (sub_10004758C(qword_10009BA58, "Fix sm_fs_reserve_block_count? ", v11, v12, v13, v14, v15, v16, v24))
    {
      *(v10 + 184) = *a2;
      *a3 = 1;
    }
  }

  if (*(v10 + 192) != a2[1])
  {
    v27 = *(v10 + 192);
    sub_100045744("sm_fs_reserve_alloc_count is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, a2[1]);
    sub_100049C40(0x447, -7);
    if (sub_10004758C(qword_10009BA58, "Fix sm_fs_reserve_alloc_count? ", v17, v18, v19, v20, v21, v22, v25))
    {
      *(v10 + 192) = a2[1];
      *a3 = 1;
    }
  }

  return 0;
}

uint64_t sub_10004B72C(uint64_t *a1, _DWORD *a2)
{
  v4 = 0;
  v5 = a1[3];
  v36[0] = 0xAAAAAAAAAAAAAAAALL;
  for (i = (v5 + 216); !*(i - 1); i += 5)
  {
LABEL_17:
    if (++v4 == 3)
    {
      return 0;
    }
  }

  v35 = 0xAAAAAAAAAAAAAAAALL;
  LOBYTE(v36[0]) = v4 == 0;
  v36[2] = 0;
  v37 = 0;
  v36[1] = 0;
  v38 = -1;
  v7 = sub_10002CE54(a1, v4, &v35);
  if (v7 || (v7 = sub_10003570C(v35, 0, sub_10004B958, v36, 0, 0), v7))
  {
    v30 = v7;
    sub_10004565C("Spaceman free queue tree of type [%d] is invalid\n", v8, v9, v10, v11, v12, v13, v14, v4);
    return v30;
  }

  v15 = *(i - 2);
  if (LOBYTE(v36[0]) != 1 || v15 <= (*(v5 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
  {
    if (v15 != v37)
    {
      v16 = "main";
      if (!v4)
      {
        v16 = "IP";
      }

      v32 = *(i - 2);
      sub_100045744("Spaceman free queue tree of type [%s] has sfq_count (%llu) mismatch with cumulative counts in the tree (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v16);
      sub_100049C40(0x2F7, 92);
      if (sub_10004758C(qword_10009BA58, "Fix spaceman free queue tree sfq_count (oid 0x%llx)? ", v17, v18, v19, v20, v21, v22, *(i - 1)))
      {
        *(i - 2) = v37;
        *a2 = 1;
      }
    }

    if (*i > v38)
    {
      v23 = "main";
      if (!v4)
      {
        v23 = "IP";
      }

      v33 = *i;
      sub_100045744("Spaceman free queue tree of type [%s] has sfq_oldest_xid (%llu) greater than the oldest xid in the free tree (%llu)\n", v8, v9, v10, v11, v12, v13, v14, v23);
      sub_100049C40(0x30D, 92);
      if (sub_10004758C(qword_10009BA58, "Fix spaceman free queue tree sfq_oldest_xid (oid 0x%llx)? ", v24, v25, v26, v27, v28, v29, *(i - 1)))
      {
        *i = v38;
        *a2 = 1;
      }
    }

    goto LABEL_17;
  }

  v34 = *(v5 + 152) & 0x7FFFFFFFFFFFFFFFLL;
  sub_10004565C("Spaceman IP free queue tree has sfq_count (%llu) greater than IP block count (%llu)\n", v8, v9, v10, v11, v12, v13, v14, *(i - 2));
  v30 = 92;
  sub_100049C40(0x2F6, 92);
  return v30;
}

uint64_t sub_10004B958(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a3;
  v9 = a3[1];
  if (a5)
  {
    v11 = *a5;
    if (!v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 1;
    if (!v10)
    {
LABEL_6:
      v28 = *a3;
      sub_10004565C("sfqe_key : (paddr 0x%llx, xid 0x%llx) : invalid xid\n", a2, a3, a4, a5, a6, a7, a8, a3[1]);
      v13 = 92;
      v14 = 752;
LABEL_7:
      sub_100049C40(v14, 92);
      return v13;
    }
  }

  v12 = *(a1 + 24);
  if (v10 > v12[2])
  {
    goto LABEL_6;
  }

  if (*a7 != 1)
  {
    v20 = *(*(a1 + 8) + 40);
    if (v20 <= v11 || v9 < 1 || v20 <= v9 || v20 - v11 < v9)
    {
      v29 = *a3;
      sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree is not a valid address range on disk\n", a2, a3, a4, a5, a6, a7, a8, v9);
      v13 = 92;
      v14 = 754;
      goto LABEL_7;
    }

    v31 = a3[1];
    v32 = v11;
    v24 = v12[19];
    v17 = v12[22];
    if ((v24 & 0x8000000000000000) != 0)
    {
      if (sub_100031608(a1, v17, sub_10004A074, &v31) != -1)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v25 = v9 - v17;
      if (v9 < v17)
      {
        goto LABEL_40;
      }

      v26 = v24 < v11 || v25 >= v24;
      if (v26 || v25 > v24 - v11)
      {
        goto LABEL_40;
      }
    }

    sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in free queue tree lies in the internal pool\n", v17, a3, a4, a5, a6, a7, a8, v9);
    v13 = 92;
    v14 = 784;
    goto LABEL_7;
  }

  v31 = a3[1];
  v32 = v11;
  v16 = v12[19];
  v17 = v12[22];
  if ((v16 & 0x8000000000000000) == 0)
  {
    v18 = v9 - v17;
    if (v9 >= v17)
    {
      v19 = v16 < v11 || v18 >= v16;
      if (!v19 && v18 <= v16 - v11)
      {
        goto LABEL_40;
      }
    }

LABEL_38:
    sub_10004565C("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : Range in ip free queue tree does not lie in the internal pool\n", v17, a3, a4, a5, a6, a7, a8, v9);
    v13 = 92;
    v14 = 753;
    goto LABEL_7;
  }

  if (sub_100031608(a1, v17, sub_10004A074, &v31) != -1)
  {
    goto LABEL_38;
  }

LABEL_40:
  if (*(a7 + 8) == v10 && v9 < *(a7 + 16))
  {
    v30 = *(a7 + 16);
    sub_100045744("sfqe_entry : (range 0x%llx+0x%llx, xid 0x%llx) : key out of order (last paddr 0x%llx, last xid 0x%llx)\n", v17, a3, a4, a5, a6, a7, a8, v9);
    sub_100049C40(0x2F3, -7);
  }

  *(a7 + 8) = v10;
  *(a7 + 16) = v11 + v9;
  v27 = *(a7 + 32);
  *(a7 + 24) += v11;
  v13 = 0;
  if (v27 > v10)
  {
    *(a7 + 32) = v10;
  }

  return v13;
}

uint64_t sub_10004BB6C(uint64_t *a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5, void *a6, void *a7, unsigned int a8)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10004BC48(a1, a2, a3, &v18);
  if (!v13)
  {
    v14 = v18;
    v15 = *(v18 + 9) & 1;
    *a4 = !(*(v18 + 36) & 1);
    if (a5)
    {
      *a5 = v14[2];
    }

    if (a6)
    {
      *a6 = v14[6];
    }

    v13 = 0;
    if (a7 && !v15)
    {
      v16 = sub_10004BCD8(*(v14 + 10));
      if (v16 <= a8)
      {
        memcpy(a7, v14 + *(v14 + 11), v16);
        v13 = 0;
      }

      else
      {
        v13 = 34;
      }
    }

    free(v14);
  }

  return v13;
}

uint64_t sub_10004BC48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a2 + 48);
  if (!v4)
  {
    v4 = *(a2 + 40);
  }

  v12 = sub_100025548(a1, a2, 0, *(v4 + 1024), a3, 0, 30, 0, a4, 0, 0);
  if (v12)
  {
    sub_10004565C("integrity_meta: failed to copy object (0x%llx:0x%llx)\n", v5, v6, v7, v8, v9, v10, v11, *(v4 + 1024));
    sub_100049C40(0x376, v12);
  }

  return v12;
}

uint64_t sub_10004BCD8(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return 0;
  }

  else
  {
    return dword_100077124[(a1 - 1)];
  }
}

uint64_t sub_10004BD04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = 0;
  v4 = *(a1[1] + 36);
  v12 = sub_10004BC48(a1, a2, a3, &v40);
  if (v12)
  {
    return v12;
  }

  v13 = v40;
  v14 = *(v40 + 1);
  v15 = *(v40 + 8);
  if (v15)
  {
    if (*(v40 + 9) >= 4u)
    {
      sub_100045744("integrity_meta: (0x%llx:0x%llx): unknown flags (0x%x)\n", v5, v6, v7, v8, v9, v10, v11, v14);
      sub_100049C40(0x378, -3);
      v13 = v40;
    }

    v16 = v13[10];
    if ((v16 & 0xFFFFFF00) > 0xF00 || (v13[10] & 0xFD) == 0 || v13[10] >= 9u)
    {
      sub_10004565C("integrity_meta: (0x%llx:0x%llx): unknown hash type (%u)\n", v5, v6, v7, v8, v9, v10, v11, v14);
      v12 = 92;
      v19 = 889;
    }

    else
    {
      v20 = sub_10004BCD8(v16);
      v28 = v20;
      v29 = v13[11];
      if (v29 + v20 > v4)
      {
        goto LABEL_22;
      }

      if (v15 > 2)
      {
        v30 = 48;
      }

      else
      {
        v30 = 128;
        if (v13[8] == 1)
        {
          v30 = 48;
        }
      }

      if (v30 <= v29)
      {
        if (!sub_1000082B8(v13 + v29, 0, (8 * v20), v29))
        {
          if (*(v40 + 8) < 2u || (*(v40 + 6) != 0) == (*(v40 + 9) & 1))
          {
            v12 = 0;
            *(a2 + 16) = *(v40 + 10);
            *(a2 + 20) = v28;
          }

          else
          {
            v39 = *(v40 + 9);
            sub_10004565C("integrity_meta: (0x%llx:0x%llx): unexpected flags (0x%x) for xid (%llu)\n", v32, v33, v34, v35, v36, v37, v38, v14);
            sub_100049C40(0x3B3, 92);
            v12 = 0;
          }

          goto LABEL_24;
        }

        sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid root hash\n", v32, v33, v34, v35, v36, v37, v38, v14);
        v12 = 92;
        v19 = 891;
      }

      else
      {
LABEL_22:
        sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid root hash offset (%u+%u) > %u\n", v21, v22, v23, v24, v25, v26, v27, v14);
        v12 = 92;
        v19 = 890;
      }
    }
  }

  else
  {
    sub_10004565C("integrity_meta: (0x%llx:0x%llx): invalid version\n", v5, v6, v7, v8, v9, v10, v11, *(v40 + 1));
    v12 = 92;
    v19 = 887;
  }

  sub_100049C40(v19, 92);
LABEL_24:
  if (v40)
  {
    free(v40);
  }

  return v12;
}

uint64_t sub_10004BF14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 72) != 1)
  {
    return 0;
  }

  if ((*(a2 + 32) & 8) != 0)
  {
    v13 = a4;
    v14 = sub_100000860(*(a1 + 40));
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    __s2[2] = v15;
    __s2[3] = v15;
    __s2[0] = v15;
    __s2[1] = v15;
    sub_100000934(v14, v16, v13, a2, __s2);
    if (memcmp(a3 + 1, __s2, *(a1 + 44)))
    {
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v26 = *(a1 + 64);
      sub_10004565C("hash validation: invalid node hash for node %llu (root oid: %llu, seal xid: %lld, broken xid: %lld)\n", v17, v18, v19, v20, v21, v22, v23, *a3);
      v11 = 92;
      v12 = 928;
      goto LABEL_6;
    }

    return 0;
  }

  v25 = *(a1 + 64);
  sub_10004565C("hash validation: invalid node %llu (root %llu)\n", a2, a3, a4, a5, a6, a7, a8, *a3);
  v11 = 92;
  v12 = 927;
LABEL_6:
  sub_100049C40(v12, 92);
  return v11;
}

uint64_t sub_10004C028(uint64_t a1)
{
  v478 = -1431655766;
  v477 = -1431655766;
  v2 = sub_10001D820();
  *v475 = 0u;
  v476 = 0u;
  *v474 = 0u;
  v473 = 0;
  v472 = 0;
  v3 = malloc_type_calloc(1uLL, 0x58uLL, 0x1030040202D4F4CuLL);
  qword_10009BA60 = v3;
  if (!v3)
  {
    sub_10004565C("failed to allocate memory for fsck_state\n", v4, v5, v6, v7, v8, v9, v10, v448);
LABEL_14:
    v34 = 0;
    goto LABEL_15;
  }

  v11 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v11;
  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v14 = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  v3[3] = v13;
  v3[4] = v14;
  v3[2] = v12;
  v15 = *(qword_10009BA60 + 24);
  if (v15 == -1 && (*(qword_10009BA60 + 46) & 1) == 0)
  {
    v16 = *(qword_10009BA60 + 47) ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if ((*(qword_10009BA60 + 40) & 1) == 0 && *(qword_10009BA60 + 42) == 1)
  {
    sub_100045F58();
  }

  v17 = sub_100047360();
  if (!v17)
  {
    sub_10004565C("Could not initialize message output\n", v18, v19, v20, v21, v22, v23, v24, v448);
    v33 = 151;
    goto LABEL_13;
  }

  v25 = v17;
  sub_100047570(v17, *(qword_10009BA60 + 32));
  sub_100047554(v25, *(qword_10009BA60 + 36));
  if (sub_1000473DC(v25, &unk_10007C708))
  {
    sub_10004565C("Could not initialize APFS-specific messages\n", v26, v27, v28, v29, v30, v31, v32, v448);
    v33 = 152;
LABEL_13:
    sub_100049C40(v33, 12);
    goto LABEL_14;
  }

  sub_10004751C(v25, sub_1000453E8);
  sub_100047538(v25, sub_10004530C);
  qword_10009BA58 = v25;
  if (v15 == -1)
  {
    sub_10000D060(0, 0, 0);
  }

  else
  {
    sub_10000D154(0, 0);
  }

  sub_100049BE4(*(qword_10009BA60 + 8));
  sub_100049BD8(2);
  v471 = 0;
  v45 = sub_1000464C8(v2, v474, &v471);
  if (v45)
  {
LABEL_30:
    v35 = v45;
    v34 = 0;
    goto LABEL_16;
  }

  while (1)
  {
    if (v471)
    {
      v34 = 0;
      v69 = qword_10009BA60;
      if (*(qword_10009BA60 + 40))
      {
        goto LABEL_73;
      }

      v35 = 0;
      v70 = 0;
      v71 = 106;
      goto LABEL_65;
    }

    v45 = sub_1000469C4(v2, v476);
    if (v45)
    {
      goto LABEL_30;
    }

    v470 = 0;
    v45 = sub_100046A58(v2, v476, &v470);
    if (v45)
    {
      goto LABEL_30;
    }

    if (BYTE8(v476) == 1)
    {
      v45 = sub_100046D6C(v2, v474, *(qword_10009BA60 + 49));
      if (v45)
      {
        goto LABEL_30;
      }
    }

    sub_100049BD8(3);
    v34 = sub_100031E70(*v2, &v472);
    if (!v34)
    {
      goto LABEL_56;
    }

    sub_100047FFC(v25, 201, v52, v53, v54, v55, v56, v57, v448);
    if ((v472 & 1) == 0)
    {
      if (sub_100032164(*v2, v34, 0, v58, v59, v60, v61, v62))
      {
        goto LABEL_56;
      }
    }

    nullsub_3(v34 + 18);
    sub_100049BD8(4);
    if (sub_100032CE0(*v2, v34, v2 + 1, v2 + 5))
    {
      v72 = v25;
      v73 = 304;
      goto LABEL_57;
    }

    sub_100047FFC(v25, 222, v52, v53, v54, v55, v56, v57, *(*(v2 + 1) + 16));
    sub_100049BD8(5);
    if (v472 == 1)
    {
      if (sub_10004758C(qword_10009BA58, "Fix corrupt container superblock? ", v52, v53, v54, v55, v56, v57, v448) != 1)
      {
        goto LABEL_56;
      }

      v63 = *(v2 + 1);
      v64 = v63[9];
      memcpy(v34, v63, 0x588uLL);
      *__str = 0;
      *&__str[8] = v64;
      *&__str[12] = 0;
      *&__str[16] = 0;
      if (sub_100026A10(v2, 0, v34, __str, v65, v66))
      {
        goto LABEL_56;
      }

      sub_100049BF0();
    }

    if (*(qword_10009BA60 + 40) == 1)
    {
      if (*(*(v2 + 1) + 1264))
      {
LABEL_56:
        v72 = v25;
        v73 = 301;
LABEL_57:
        sub_100047FFC(v72, v73, v52, v53, v54, v55, v56, v57, v448);
        v70 = 0;
        v35 = 8;
      }

      else
      {
        v35 = sub_10004DB58(v25, v2);
        v70 = 0;
      }

LABEL_58:
      v71 = 106;
LABEL_59:
      v69 = qword_10009BA60;
      if (*(qword_10009BA60 + 40))
      {
        if (v35)
        {
          if (v35 == 8)
          {
            v35 = 3;
          }

          else
          {
            v35 = v35;
          }

          v74 = v25;
          v75 = 126;
          goto LABEL_78;
        }

LABEL_73:
        sub_100047FFC(v25, 125, v46, v47, v48, v49, v50, v51, v448);
        v35 = 0;
LABEL_79:
        v79 = sub_100049C28();
        v80 = sub_100049C34();
        if (!v35)
        {
          if (*(qword_10009BA60 + 50) == 1 && v79 | v80)
          {
            if (*(qword_10009BA60 + 40))
            {
              v35 = 3;
            }

            else
            {
              v35 = 8;
            }

            sub_100045428("%d failures and %d warnings issued; failing execution as requested.\n", v81, v82, v83, v84, v85, v86, v87, v80);
          }

          else
          {
            v35 = 0;
          }
        }

        goto LABEL_16;
      }

LABEL_65:
      if (v15 == -1)
      {
        if (v35)
        {
          v75 = 127;
        }

        else
        {
          v75 = 128;
        }

        v448 = *v69;
        v74 = v25;
LABEL_78:
        sub_100047FFC(v74, v75, v46, v47, v48, v49, v50, v51, v448);
      }

      else
      {
        if (v70)
        {
          v76 = 105;
        }

        else
        {
          v76 = 104;
        }

        if (v35)
        {
          v77 = v71;
        }

        else
        {
          v77 = v76;
        }

        v78 = sub_10001D82C(v2, *(v69 + 24));
        sub_10004F00C(v25, v77, v78);
      }

      goto LABEL_79;
    }

    if (v472 != 1)
    {
      break;
    }

    v67 = sub_1000460CC(*(qword_10009BA60 + 8));
    if (!v67)
    {
      break;
    }

    v472 = 0;
    nullsub_3(v67);
    sub_10001D95C();
    free(v34);
    sub_10002C8A8(v2);
    *v475 = 0u;
    v476 = 0u;
    *v474 = 0u;
    sub_100046094(*(qword_10009BA60 + 8));
    sub_100049BE4(*(qword_10009BA60 + 8));
    sub_100049BD8(2);
    v471 = 0;
    v35 = sub_1000464C8(v2, v474, &v471);
    v34 = 0;
    if (v35)
    {
      goto LABEL_16;
    }
  }

  sub_100040DF8(v2);
  v68 = *(*(v2 + 1) + 1384);
  if (v68 > 0x959D39220F1C2)
  {
    memset(__str, 170, 25);
    v88 = sub_10001D6AC(v68, __str, 25);
    LOBYTE(v96) = v88;
    if (!v88)
    {
      v96 = __str;
      snprintf(__str, 0x19uLL, "%llu", *(*(v2 + 1) + 1384));
    }

    sub_100045744("container has been mounted by APFS version %s, which is newer than %s\n", v89, v90, v91, v92, v93, v94, v95, v96);
    if (*(qword_10009BA60 + 45))
    {
      v104 = "enabling overallocation repairs because -o was passed; this may cause data loss\n";
    }

    else
    {
      v104 = "disabling overallocation repairs by default; use -o to override\n";
    }

    sub_100045744(v104, v97, v98, v99, v100, v101, v102, v103, v449);
  }

  else
  {
    *(qword_10009BA60 + 45) = 1;
  }

  v105 = sub_1000279BC((v2 + 392), 0);
  if (v105)
  {
LABEL_94:
    v113 = v105;
LABEL_95:
    sub_10004565C("failed to initialize tree for container repairs\n", v106, v107, v108, v109, v110, v111, v112, v448);
    v114 = 926;
    v115 = v113;
    goto LABEL_96;
  }

  v35 = 0;
  v451 = 0;
  while (1)
  {
    sub_100049BD8(6);
    if (*(v34 + 159))
    {
      if (sub_100046E74(v2))
      {
        sub_100045744("found unexpected EFI jumpstart record\n", v116, v117, v118, v119, v120, v121, v122, v448);
      }

      else
      {
        sub_100047FFC(v25, 211, v117, v118, v119, v120, v121, v122, v448);
        if (sub_100033A0C(v2))
        {
          v437 = v25;
          v438 = 312;
          goto LABEL_335;
        }
      }
    }

    sub_100049BD8(7);
    if (*(*(v2 + 1) + 1256))
    {
      *&v135 = 0xAAAAAAAAAAAAAAAALL;
      *(&v135 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v481 = v135;
      v482 = v135;
      *__str = v135;
      *&__str[16] = v135;
      sub_100047FFC(v25, 218, v129, v130, v131, v132, v133, v134, v448);
      sub_100039748(__str, v2, 0, 0x40000000, 2, 33, 0, *(*(v2 + 1) + 36), 8, 16, 0, *(*(v2 + 1) + 1256), sub_100030C88);
      if (sub_10003570C(__str, 0, sub_100033C3C, 0, 0, 1))
      {
        v437 = v25;
        v438 = 319;
        goto LABEL_335;
      }
    }

    sub_100049BD8(8);
    if (sub_10002CBE0(v2, 0))
    {
      v71 = 106;
      v35 = 8;
      goto LABEL_338;
    }

    if (sub_1000239E0(v2, v136, v46, v47, v48, v49, v50, v51))
    {
      goto LABEL_336;
    }

    sub_100049BD8(9);
    sub_100047FFC(v25, 203, v137, v138, v139, v140, v141, v142, v448);
    if (sub_10002CC80(v2, 0))
    {
      goto LABEL_310;
    }

    if (v15 == -1 && (*(qword_10009BA60 + 54) & 1) == 0)
    {
      sub_10004D92C(v2);
    }

    if (sub_10004A0FC(v2, &v473, v123, v124, v125, v126, v127, v128))
    {
LABEL_310:
      v437 = v25;
      v438 = 303;
      goto LABEL_335;
    }

    v143 = *(v2 + 1);
    if ((*(v143 + 104) & 0x80000000) != 0 || (*(v143 + 108) & 0x80000000) != 0 || (v144 = *(v2 + 3), (*(v144 + 164) & 0x80000000) != 0) || (*(v144 + 152) & 0x8000000000000000) != 0)
    {
      sub_100049BD8(10);
      sub_100047FFC(v25, 213, v145, v146, v147, v148, v149, v150, v448);
      if (sub_100033CE8(v2))
      {
        v437 = v25;
        v438 = 315;
        goto LABEL_335;
      }
    }

    sub_100049BD8(11);
    sub_100047FFC(v25, 217, v151, v152, v153, v154, v155, v156, v448);
    if (sub_10004B72C(v2, &v473))
    {
      v437 = v25;
      v438 = 318;
      goto LABEL_335;
    }

    if (v473)
    {
      v158 = *(v2 + 3);
      *__str = *(v2 + 88);
      *&__str[16] = *(v2 + 13);
      v159 = sub_100026A10(v2, 0, v158, __str, *__str, v157);
      if (v159)
      {
        v397 = v159;
        sub_100047FFC(v25, 303, v160, v161, v162, v163, v164, v165, v448);
        v439 = 782;
LABEL_332:
        sub_100049C40(v439, v397);
        goto LABEL_336;
      }

      sub_100049BF0();
      v473 = 0;
    }

    sub_1000424B0(v2);
    sub_100049BD8(12);
    sub_100047FFC(v25, 204, v166, v167, v168, v169, v170, v171, v448);
    if (sub_10002CD20(v2, 0, 0))
    {
      goto LABEL_336;
    }

    if (v15 == -1)
    {
      sub_10001DBD0(0, *(*(v2 + 1) + 88), *(*(v2 + 4) + 88));
      if (sub_10000D854(v2, 0, v172, v173, v174, v175, v176, v177))
      {
LABEL_314:
        v437 = v25;
        v438 = 305;
        goto LABEL_335;
      }

      if (*(qword_10009BA60 + 54) == 1)
      {
        sub_10004D92C(v2);
      }
    }

    else if (sub_10000D854(v2, 0, v46, v47, v48, v49, v50, v51))
    {
      goto LABEL_314;
    }

    v178 = *(v2 + 1);
    if (*(v178 + 1400) || *(v178 + 1304))
    {
      sub_100049BD8(30);
      sub_100047FFC(v25, 223, v179, v180, v181, v182, v183, v184, v448);
      if (sub_1000208CC(v2, v185, v186, v187, v188, v189, v190, v191))
      {
        goto LABEL_312;
      }
    }

    if (v470 == 1)
    {
      v192 = sub_100046BE8(v2, v476);
      if (v192)
      {
        v35 = v192;
        goto LABEL_16;
      }
    }

    v469[0] = 0;
    v469[1] = 0;
    sub_10001D914(v2, &v478, &v477);
    if (v478 < v477)
    {
      break;
    }

LABEL_273:
    sub_100049BD8(22);
    sub_100047FFC(v25, 210, v380, v381, v382, v383, v384, v385, v448);
    if ((v16 & 1) == 0)
    {
      goto LABEL_280;
    }

    v397 = sub_10004B648(v2, v469, &v473, v386, v387, v388, v389, v390);
    if (!v397 && v473)
    {
      v399 = *(v2 + 3);
      *__str = *(v2 + 88);
      *&__str[16] = *(v2 + 13);
      v397 = sub_100026A10(v2, 0, v399, __str, *__str, v398);
    }

    if (v397)
    {
      sub_100047FFC(v25, 303, v391, v392, v393, v394, v395, v396, v448);
      v439 = 1098;
      goto LABEL_332;
    }

    if (v473)
    {
      sub_100049BF0();
      v473 = 0;
    }

LABEL_280:
    if (v15 == -1)
    {
      if (sub_10001E224(v2, 0, 0))
      {
        goto LABEL_334;
      }

      if (sub_100021BA0(v2, v400, v123, v124, v125, v126, v127, v128))
      {
LABEL_312:
        v437 = v25;
        v438 = 324;
        goto LABEL_335;
      }
    }

    sub_100049BD8(32);
    byte_10007C6B8 &= v16;
    if (sub_100009950(v2))
    {
      v437 = v25;
      v438 = 325;
      goto LABEL_335;
    }

    sub_100049BD8(22);
    if (sub_100043E8C(v2))
    {
      goto LABEL_334;
    }

    sub_100049BD8(23);
    v454 = 0;
    v455 = 0;
    v453 = 0;
    *__str = 0;
    sub_10003B724((v2 + 392), 0, __str);
    v407 = *__str;
    for (i = v478; i < v477; ++i)
    {
      v409 = sub_10001D82C(v2, i);
      if (*(*(v2 + 1) + 8 * i + 184))
      {
        *__str = 0;
        sub_10003B724((v409 + 768), 0, __str);
        v407 += *__str;
      }
    }

    if (!v407)
    {
      goto LABEL_301;
    }

    sub_100047FFC(v25, 216, v401, v402, v403, v404, v405, v406, v448);
    v417 = sub_1000280E4((v2 + 392), v2, 0, byte_10007C6B8, 0, &v455, &v454, &v453);
    v418 = v478;
    v419 = v477;
    while (v418 < v419)
    {
      if (*(*(v2 + 1) + 8 * v418 + 184))
      {
        v420 = sub_10001D82C(v2, v418);
        v421 = sub_1000280E4((v420 + 768), v2, v420, byte_10007C6B8, 0, &v455, &v454, &v453);
        if (!v417)
        {
          v417 = v421;
        }

        v419 = v477;
      }

      ++v418;
    }

    if (v417)
    {
      if (v453)
      {
        v446 = 316;
      }

      else
      {
        v446 = 317;
      }

      sub_100047FFC(v25, v446, v411, v412, v413, v414, v415, v416, v448);
      v35 = 8;
      v71 = 110;
      goto LABEL_338;
    }

    if ((byte_10007C6B8 & 1) == 0 && v455)
    {
      sub_10004565C("Unable to perform deferred repairs without full space verification\n", v410, v411, v412, v413, v414, v415, v416, v448);
      if (*(qword_10009BA60 + 24) != -1)
      {
        sub_10004565C("Try running fsck against the entire APFS container instead of a volume\n", v447, v46, v47, v48, v49, v50, v51, v448);
      }

LABEL_336:
      v35 = 8;
LABEL_337:
      v71 = 106;
LABEL_338:
      v70 = v451;
      goto LABEL_59;
    }

    if (v454)
    {
      if (!sub_100049C04())
      {
        sub_10004565C("Reached max number of fsck passes during repair\n", v429, v430, v431, v432, v433, v434, v435, v448);
        v35 = 8;
        v70 = 1;
        goto LABEL_58;
      }

      sub_100045428("Restarting after deferred repairs...\n", v429, v430, v431, v432, v433, v434, v435, v448);
      sub_100041108();
      sub_100040DF8(v2);
      v113 = sub_1000279BC((v2 + 392), 0);
      v451 = 1;
      if (v113)
      {
        goto LABEL_95;
      }
    }

    else
    {
LABEL_301:
      sub_100049BD8(24);
      if (byte_10007C6B8 != 1 || !sub_100041484())
      {
        goto LABEL_322;
      }

      if (*(qword_10009BA60 + 44) == 1)
      {
        sub_1000414C4();
        if (sub_10004758C(qword_10009BA58, "Fix overlapped extents? ", v440, v441, v442, v443, v444, v445, v448))
        {
          if (!sub_100041594(v2))
          {
            *(qword_10009BA60 + 44) = 0;
LABEL_322:
            sub_100049BD8(25);
            goto LABEL_337;
          }
        }

        else
        {
          sub_100049C40(0x1CB, 92);
        }

LABEL_334:
        v437 = v25;
        v438 = 311;
LABEL_335:
        sub_100047FFC(v437, v438, v123, v124, v125, v126, v127, v128, v448);
        goto LABEL_336;
      }

      sub_100045428("Overlap repair pass...\n", v422, v423, v424, v425, v426, v427, v428, v448);
      *(qword_10009BA60 + 44) = 1;
      v105 = sub_1000279BC((v2 + 392), 0);
      if (v105)
      {
        goto LABEL_94;
      }
    }
  }

  v193 = v478 + 23;
  while (2)
  {
    if (!*(*(v2 + 1) + 8 * v193))
    {
      goto LABEL_152;
    }

    v194 = v193 - 23;
    v195 = sub_10001D82C(v2, v193 - 23);
    sub_100049BE4(*v195);
    sub_100049BD8(13);
    sub_100047FFC(v25, 101, v196, v197, v198, v199, v200, v201, *v195);
    sub_100047FFC(v25, 206, v202, v203, v204, v205, v206, v207, v450);
    v208 = sub_1000279BC((v195 + 768), v195);
    if (v208)
    {
      v436 = v208;
      sub_10004565C("failed to initialize tree for volume repairs\n", v209, v210, v211, v212, v213, v214, v215, v448);
      v114 = 705;
      v115 = v436;
      goto LABEL_96;
    }

    v216 = v193;
    v217 = (v195 + 40);
    v218 = *(v2 + 1);
    v452 = v216;
    if (!*(v195 + 5))
    {
      if (!sub_100025548(v2, 0, 0, *(v218 + 8 * v216), 0, 0, 13, 0, v195 + 5, (v195 + 80), 0))
      {
        goto LABEL_140;
      }

      goto LABEL_143;
    }

    if (sub_10001DC68(0, *(v218 + 8 * v216), 1))
    {
      sub_100045744("object (oid 0x%llx): Unable to mark the omap entry of the apfs_sb at index (%u) in use for omap space verification\n", v219, v220, v221, v222, v223, v224, v225, *(*(v2 + 1) + 8 * v452));
      sub_100049C40(0x3DD, -7);
    }

LABEL_140:
    if (v15 != -1)
    {
      *&v232 = 0xAAAAAAAAAAAAAAAALL;
      *(&v232 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v493 = v232;
      v494 = v232;
      v491 = v232;
      v492 = v232;
      v489 = v232;
      v490 = v232;
      v487 = v232;
      v488 = v232;
      v485 = v232;
      v486 = v232;
      v483 = v232;
      v484 = v232;
      v481 = v232;
      v482 = v232;
      *__str = v232;
      *&__str[16] = v232;
      v233 = *v217;
      __strlcpy_chk();
      v495 = __str;
      sub_10000D154(*v217, &v495);
    }

    v468 = 0;
    v466 = 0u;
    v467 = 0u;
    v464 = 0;
    memset(v463, 0, sizeof(v463));
    v465 = 16;
    LODWORD(v466) = *(*v217 + 960);
    sub_10004DD08(v25);
    if (sub_10004DDF8(v2, *v217, v194, &v473))
    {
LABEL_143:
      v234 = v25;
      v235 = 307;
      goto LABEL_144;
    }

    sub_100049BD8(14);
    sub_100047FFC(v25, 204, v238, v239, v240, v241, v242, v243, v448);
    if (sub_10002CD20(v2, v195, 0))
    {
      goto LABEL_145;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0)
    {
      sub_10001DBD0(1, *(*(v2 + 1) + 88), *(*(v195 + 9) + 88));
    }

    if (sub_10000D854(v2, v195, v244, v245, v246, v247, v248, v249))
    {
      v234 = v25;
      v235 = 305;
      goto LABEL_144;
    }

    v250 = *(*v217 + 1000);
    if (v250)
    {
      v251 = sub_10001DC68(1, v250, 1);
      if (v251)
      {
        v259 = v251;
        sub_100045744("object (oid 0x%llx): Unable to mark the omap entry of the apfs_snap_meta_ext_oid in use for omap space verification\n", v252, v253, v254, v255, v256, v257, v258, *(*v217 + 1000));
        sub_100049C40(0x3D5, v259);
      }
    }

    sub_100049BD8(15);
    v260 = *v217;
    if ((*(*v217 + 264) & 1) == 0 || *(v260 + 976))
    {
      if (v195[8] == 1)
      {
        v261 = sub_100046258(v195, v2, v476);
        if (v261)
        {
          sub_100049C40(0x45F, v261);
          v35 = 66;
          goto LABEL_16;
        }

        v260 = *v217;
      }

      if (*(v260 + 976) && sub_10003DF5C(v2, v195))
      {
        v234 = v25;
        v235 = 314;
        goto LABEL_144;
      }
    }

    sub_100049BD8(17);
    if (*(*v217 + 152))
    {
      *__str = 0xAAAAAAAAAAAAAAAALL;
      sub_10002BB60();
      sub_100047FFC(v25, 209, v262, v263, v264, v265, v266, v267, v448);
      if (sub_10002D2DC(v2, v195, __str) || sub_10003570C(*__str, 0, sub_10000F144, v463, 0, 1) || sub_10002BE24(v195 + 192))
      {
        v234 = v25;
        v235 = 310;
        goto LABEL_144;
      }
    }

    sub_100049BD8(19);
    v274 = *v217;
    if ((*(*v217 + 264) & 1) != 0 && !*(v274 + 976))
    {
      v195[9] = 1;
      v276 = v195 + 9;
      v277 = *(qword_10009BA60 + 46);
      LOBYTE(v278) = v277 ^ 1;
    }

    else
    {
      v275 = *(v195 + 3);
      v195[9] = v275 != 0;
      v276 = v195 + 9;
      v277 = *(qword_10009BA60 + 46);
      LOBYTE(v278) = v277 ^ 1;
      if ((v277 & 1) == 0 && !v275)
      {
        v279 = *(v195 + 6);
        if (!v279)
        {
          v279 = v274;
        }

        v278 = (*(v279 + 56) >> 5) & 1;
      }
    }

    v195[10] = v278;
    v195[11] = v277;
    sub_100047FFC(v25, 205, v268, v269, v270, v271, v272, v273, v448);
    v460 = 0u;
    v461 = 0u;
    v462 = 0;
    v458 = 0;
    memset(v457, 0, sizeof(v457));
    v459 = 16;
    LODWORD(v460) = *(*(v195 + 5) + 960);
    if (sub_10000DDA4(v2, v195, v457, v280, v281, v282, v283, v284, 0, v285))
    {
      goto LABEL_190;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0 && v464 != v458)
    {
      sub_100045744("omap has %llu snaphots but snap meta tree has %llu\n", v286, v226, v227, v228, v229, v230, v231, v458);
    }

    if (v465 < v459)
    {
      v465 = v459;
    }

    if (v466 < v460)
    {
      LODWORD(v466) = v460;
    }

    if ((*(qword_10009BA60 + 46) & 1) == 0 && sub_100004ED8(v2, v195, (v195 + 768)))
    {
LABEL_190:
      v234 = v25;
      v235 = 306;
      goto LABEL_144;
    }

    sub_100049BD8(16);
    v287 = *(v195 + 6);
    if (!v287)
    {
      v287 = *v217;
    }

    if ((*(v287 + 56) & 0x20) != 0 && sub_10004BD04(v2, v195, 0))
    {
      goto LABEL_145;
    }

    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v288 = 0xAAAAAAAAAAAAAAAALL;
    *(&v288 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v288;
    *&out[16] = v288;
    uuid_unparse((*v217 + 240), out);
    v296 = *v217;
    if ((*(*v217 + 56) & 0x10) != 0)
    {
      *v276 = 0;
      sub_100045744("Volume %s is incompletely restored, skipping the fsroot tree.\n", v289, v290, v291, v292, v293, v294, v295, out);
LABEL_208:
      v297 = 0;
      goto LABEL_209;
    }

    if (*(v296 + 160))
    {
      *v276 = 0;
      sub_100045744("Volume %s has revert_to_xid set, skipping the fsroot tree.\n", v289, v290, v291, v292, v293, v294, v295, out);
      goto LABEL_208;
    }

    if (((*(v296 + 264) & 1) == 0 || *(v296 + 976)) && !*(v195 + 3))
    {
      sub_100045744("Volume %s is encrypted and crypto I/O failed/was skipped, skipping the fsroot tree.\n", v289, v290, v291, v292, v293, v294, v295, out);
      goto LABEL_208;
    }

    sub_10001F400(v195);
    *__str = 0xAAAAAAAAAAAAAAAALL;
    v316 = sub_10002D5F0(v2, v195, __str);
    if (!v316)
    {
      sub_10001476C(*__str, 0, v317, v318, v319, v320, v321, v322, v448);
      sub_100005298(v2, v195, 0);
      v323 = *(v195 + 5);
      if (v323[134] || v323[135])
      {
        sub_100049BD8(28);
        sub_100047FFC(v25, 221, v324, v325, v326, v327, v328, v329, v448);
        if (sub_1000059E8(v2, v195, 0))
        {
          goto LABEL_225;
        }

        v323 = *v217;
      }

      if (v323[139])
      {
        sub_100049BD8(33);
        sub_100047FFC(v25, 225, v336, v337, v338, v339, v340, v341, v448);
        if ((*(*v217 + 57) & 2) == 0)
        {
          sub_10004565C("found clone group tree in invalid volume format\n", v342, v343, v344, v345, v346, v347, v348, v448);
          v195[13] = 1;
        }

        if (sub_100038C78(v2, v195, 0, v463))
        {
          v235 = 326;
          goto LABEL_240;
        }
      }

      sub_100049BD8(16);
      sub_100047FFC(v25, 207, v349, v350, v351, v352, v353, v354, v448);
      if (sub_10003570C(*__str, 0, sub_10000F144, v463, 0, 0) || *(*v217 + 1096) && (sub_10002D6C4(v2, v195, __str) || sub_100014830(v2, v195, v195 + 192, v227, v228, v229, v230, v231) || sub_10003570C(*__str, 0, sub_10000F144, v463, 0, 0)) || *v276 == 1 && sub_10002E53C(v2, v195) || sub_100014884(v2, v195, 0, v195 + 192, v228, v229, v230, v231))
      {
        v235 = 308;
LABEL_240:
        v234 = v25;
LABEL_144:
        sub_100047FFC(v234, v235, v226, v227, v228, v229, v230, v231, v448);
      }

      else
      {
        if (sub_10000583C(v2, v195, 0))
        {
LABEL_225:
          v235 = 322;
          goto LABEL_240;
        }

        v297 = 1;
LABEL_209:
        sub_1000053DC();
        v298 = *(v195 + 6);
        if (!v298)
        {
          v298 = *v217;
        }

        if ((*(v298 + 56) & 0x20) != 0)
        {
          sub_10001F400(v195);
          *__str = 0xAAAAAAAAAAAAAAAALL;
          sub_100049BD8(26);
          sub_100047FFC(v25, 219, v305, v306, v307, v308, v309, v310, v448);
          if (sub_10002D44C(v2, v195, __str, v311, v312, v313, v314, v315) || sub_10003570C(*__str, 0, sub_100014238, v463, 0, 1))
          {
            v234 = v25;
            v235 = 320;
            goto LABEL_144;
          }
        }

        sub_100049BD8(18);
        sub_100047FFC(v25, 208, v299, v300, v301, v302, v303, v304, v448);
        v456 = 0xAAAAAAAAAAAAAAAALL;
        if (sub_10002D394(v2, v195, &v456) || sub_10003570C(v456, 0, sub_10000F144, v463, 0, 1))
        {
          v234 = v25;
          v235 = 309;
          goto LABEL_144;
        }

        if (!sub_10002045C(v195, 0))
        {
          if ((*(*v217 + 56) & 0x40) != 0)
          {
            *__str = 0xAAAAAAAAAAAAAAAALL;
            sub_100049BD8(27);
            sub_100047FFC(v25, 220, v355, v356, v357, v358, v359, v360, v448);
            if (sub_10002D134(v2, v195, __str, v361, v362, v363, v364, v365) || sub_10003570C(*__str, 0, sub_100034204, v463, 0, 1) || sub_1000340B4(v2, v195, v195 + 192, v227, v228, v229, v230, v231))
            {
              v234 = v25;
              v235 = 321;
              goto LABEL_144;
            }
          }

          if (v297)
          {
            sub_100049BD8(31);
            sub_100047FFC(v25, 224, v330, v331, v332, v333, v334, v335, v448);
            if (sub_10001E224(v2, v195, 1))
            {
              v234 = v25;
              v235 = 323;
              goto LABEL_144;
            }
          }

          else
          {
            sub_10001DC28(1);
          }

          sub_100046458(v195);
          sub_100049BD8(21);
          if (v195[9] == 1 && sub_10004EB94(*v217, v463, &v473, v366, v228, v229, v230, v231) || (v195[11] & 1) == 0 && sub_10004EEB8(v2, *v217, v469, &v473, v228, v229, v230, v231))
          {
            goto LABEL_143;
          }

          if ((*(*v217 + 264) & 4) != 0)
          {
            *__str = 0;
            sub_10003B724((v195 + 768), 0, __str);
            if (!*__str && (v473 || (v195[12] & 1) != 0 || sub_10004758C(qword_10009BA58, "Clear volume inconsistent bit? ", v367, v368, v369, v370, v371, v372, v448)))
            {
              *(*v217 + 264) &= ~4uLL;
              v473 = 1;
              goto LABEL_268;
            }
          }

          if (!v473 && v195[12] != 1)
          {
            goto LABEL_146;
          }

LABEL_268:
          v379 = sub_100046EA0(v2, v195);
          if (v379 && v473)
          {
            sub_100047FFC(v25, 307, v373, v374, v375, v376, v377, v378, v448);
            sub_100049C40(0xA7, v379);
            goto LABEL_145;
          }

          sub_100049BF0();
          v473 = 0;
          v195[12] = 0;
          if (!v379)
          {
LABEL_146:
            v16 &= v195[11] ^ 1;
            if (v195[13])
            {
              v35 = 8;
            }

            else
            {
              v35 = v35;
            }

            *__str = 0;
            sub_10003B724((v195 + 768), 0, __str);
            if (*__str)
            {
              v236 = 109;
              v193 = v452;
            }

            else
            {
              if (v195[13])
              {
                v236 = 108;
              }

              else
              {
                v236 = 104;
              }

              v193 = v452;
              if (v15 != -1 && !v195[13])
              {
                goto LABEL_152;
              }
            }

            sub_10004F00C(v25, v236, v195);
LABEL_152:
            sub_100049BE4(*(qword_10009BA60 + 8));
            v237 = v193 - 22;
            ++v193;
            if (v237 >= v477)
            {
              goto LABEL_273;
            }

            continue;
          }
        }
      }

LABEL_145:
      sub_10001DC28(1);
      sub_100009510();
      sub_1000147E8(v195);
      sub_1000053DC();
      v195[11] = 1;
      v195[13] = 1;
      goto LABEL_146;
    }

    break;
  }

  v115 = v316;
  v114 = 1533;
LABEL_96:
  sub_100049C40(v114, v115);
LABEL_15:
  v35 = 71;
LABEL_16:
  sub_100046024();
  sub_10001D95C();
  if (v34)
  {
    free(v34);
  }

  sub_10002C8A8(v2);
  if (v475[1])
  {
    free(v475[1]);
  }

  if (v474[1])
  {
    free(v474[1]);
  }

  sub_100041108();
  if (byte_10009B0F0 == 1)
  {
    sub_10001C614(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  sub_10000D2A0();
  return v35;
}

void sub_10004D92C(uint64_t *a1)
{
  if (a1)
  {
    if (*(qword_10009BA60 + 54))
    {
      v11 = -1431655766;
      v12 = -1431655766;
      v10 = 0;
      memset(__b, 170, sizeof(__b));
      sub_10001D914(a1, &v12, &v11);
      v2 = v12;
      if (v12 >= v11)
      {
        sub_10000D060(a1[3], __b, 0);
      }

      else
      {
        v3 = 0;
        do
        {
          v4 = *(a1[1] + 8 * v2 + 184);
          if (v4)
          {
            if (sub_100025548(a1, 0, 0, v4, 0, 0, 13, 0, &v10, 0, 0) || (v6 = malloc_type_calloc(1uLL, 0x100uLL, 0x3ABAA1DCuLL)) == 0)
            {
              v5 = &byte_10005C3F3;
            }

            else
            {
              v5 = v6;
              __strlcpy_chk();
            }

            __b[v3] = v5;
            v3 = (v3 + 1);
            if (v10)
            {
              free(v10);
            }
          }

          v10 = 0;
          ++v2;
        }

        while (v2 < v11);
        sub_10000D060(a1[3], __b, v3);
        if (v3 >= 1)
        {
          v7 = v3;
          v8 = __b;
          do
          {
            if (*v8 != &byte_10005C3F3)
            {
              free(*v8);
            }

            ++v8;
            --v7;
          }

          while (v7);
        }
      }

      return;
    }

    v9 = a1[3];
  }

  else
  {
    v9 = 0;
  }

  sub_10000D060(v9, 0, 0);
}

uint64_t sub_10004DB58(uint64_t a1, uint64_t *a2)
{
  v44 = 0;
  sub_100040DF8(a2);
  sub_100049BD8(12);
  sub_100047FFC(a1, 204, v4, v5, v6, v7, v8, v9, v41);
  if (sub_10002CD20(a2, 0, 0))
  {
    return 8;
  }

  if (sub_10000D854(a2, 0, v10, v11, v12, v13, v14, v15))
  {
    v22 = a1;
    v23 = 305;
    goto LABEL_4;
  }

  v45 = -1431655766;
  v46 = -1431655766;
  sub_10001D914(a2, &v46, &v45);
  v25 = v46;
  if (v46 >= v45)
  {
    return 0;
  }

  while (1)
  {
    if (!*(a2[1] + 8 * v25 + 184))
    {
      goto LABEL_16;
    }

    v26 = sub_10001D82C(a2, v25);
    sub_100049BE4(*v26);
    sub_100049BD8(13);
    sub_100047FFC(a1, 101, v27, v28, v29, v30, v31, v32, *v26);
    sub_100047FFC(a1, 206, v33, v34, v35, v36, v37, v38, v43);
    v39 = (v26 + 40);
    if (!*(v26 + 5))
    {
      if (sub_100025548(a2, 0, 0, *(a2[1] + 8 * v25 + 184), 0, 0, 13, 0, v26 + 5, (v26 + 80), 0))
      {
        break;
      }

      v40 = *v39;
    }

    sub_10004DD08(a1);
    if (sub_10004DDF8(a2, *v39, v25, &v44))
    {
      break;
    }

    if (v44)
    {
      if (sub_100046EA0(a2, v26))
      {
        break;
      }

      sub_100049BF0();
      v44 = 0;
    }

LABEL_16:
    if (++v25 >= v45)
    {
      return 0;
    }
  }

  v22 = a1;
  v23 = 307;
LABEL_4:
  sub_100047FFC(v22, v23, v16, v17, v18, v19, v20, v21, v42);
  return 8;
}

uint64_t sub_10004DD08(uint64_t a1)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[14] = v2;
  v10[15] = v2;
  v10[12] = v2;
  v10[13] = v2;
  v10[10] = v2;
  v10[11] = v2;
  v10[8] = v2;
  v10[9] = v2;
  v10[6] = v2;
  v10[7] = v2;
  v10[4] = v2;
  v10[5] = v2;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  __strlcpy_chk();
  __strlcpy_chk();
  __strlcpy_chk();
  return sub_100047FFC(a1, 124, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_10004DDF8(uint64_t a1, uint64_t a2, int a3, _DWORD *a4)
{
  v8 = *(a1 + 8);
  v9 = *(v8 + 96);
  v10 = *(v8 + 40);
  v11 = sub_10000EC94();
  if (*(a2 + 32) != 1112756289)
  {
    v121 = *(a2 + 32);
    sub_10004565C("apfs superblock at index %u: apfs_magic invalid: %d\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 14;
LABEL_24:
    sub_100049C40(v37, 92);
    return v21;
  }

  v19 = v11;
  v20 = *(a1 + 24);
  if (*(a2 + 36) != a3)
  {
    sub_10004565C("apfs_fs_index (%d) is not valid (%d)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    sub_100049C40(0xF, 92);
    v114 = *(a2 + 16);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_index(oid 0x%llx, xid 0x%llx)? ", v22, v23, v24, v25, v26, v27, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 36) = a3;
    *a4 = 1;
  }

  if ((*(a2 + 40) & 0xFFFFFFFFFFFFFFE0) != 0)
  {
    v115 = *(a2 + 40) & 0xFFFFFFFFFFFFFFE0;
    sub_100045744("apfs superblock at index %u: apfs_features has unrecognized features (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    sub_100049C40(0x10, -3);
  }

  if ((*(a2 + 48) & 0xFFFFFFFFFFFFFFF1) != 0)
  {
    v116 = *(a2 + 48) & 0xFFFFFFFFFFFFFFF1;
    sub_100045744("apfs superblock at index %u: apfs_readonly_compatible_features has unsupported flags: (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v28 = qword_10009BA60;
    *(qword_10009BA60 + 32) = 1;
    *(v28 + 41) = 1;
    sub_100047570(qword_10009BA58, 1);
    sub_100049C40(0x11, -3);
  }

  v29 = *(a2 + 56);
  if ((v29 & 0xFFFFFFFFFFFFFC00) != 0 || (*(a2 + 56) & 9) == 9)
  {
    sub_10004565C("apfs superblock at index %u: apfs_incompatible_features has unsupported flags: (0x%llX)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 18;
    goto LABEL_24;
  }

  if (v29 >= 0x200 && (*(a2 + 48) & 2) != 0)
  {
    v122 = *(a2 + 48);
    v154 = *(a2 + 56);
    sub_10004565C("apfs superblock at index %u: incompatible features set (apfs_readonly_compatible_features: (0x%llX), apfs_incompatible_features: (0x%llX))\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 1210;
    goto LABEL_24;
  }

  if (*(a2 + 64) > v19)
  {
    v117 = *(a2 + 64);
    sub_100045744("apfs superblock at index %u: apfs_unmount_time (%llu) is greater than current time (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    sub_100049C40(0x13, -4);
  }

  if (v20)
  {
    if (*(a2 + 88) > *(*(a1 + 8) + 40) - (v20[30] + v20[9]))
    {
      v118 = *(a2 + 88);
      v152 = *(*(a1 + 8) + 40) - (v20[30] + v20[9]);
      sub_100045744("apfs superblock at index %u: apfs_fs_alloc_count (%llu) is greater than container wide allocated count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      sub_100049C40(0x308, -7);
    }

    v30 = *(a2 + 72);
    if (v30)
    {
      if (v30 <= *(*(a1 + 8) + 40))
      {
        if (v30 > v20[23])
        {
          v123 = *(a2 + 72);
          v155 = v20[23];
          sub_100045744("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than spaceman reserve block count (%llu) for a guaranteed-minimum space FS\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
          sub_100049C40(0x14, -7);
          v30 = *(a2 + 72);
        }
      }

      else
      {
        v119 = *(a2 + 72);
        v153 = *(*(a1 + 8) + 40);
        sub_10004565C("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) is greater than the container block count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
        v21 = 92;
        sub_100049C40(0x448, 92);
        v120 = *(a2 + 16);
        if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v31, v32, v33, v34, v35, v36, *(a2 + 8)))
        {
          return v21;
        }

        v30 = 0;
        *(a2 + 72) = 0;
        *a4 = 1;
      }

      if (v30 >= *(a2 + 88))
      {
        v30 = *(a2 + 88);
      }

      if (v30 > v20[24])
      {
        v156 = v20[24];
        sub_100045744("apfs superblock at index %u: apfs reserve alloc count (%llu) is greater than spaceman reserve alloc count (%llu) for a guaranteed-minimum space FS\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
        sub_100049C40(0x309, -7);
      }
    }
  }

  v39 = *(a2 + 80);
  if (v39)
  {
    if (*(a2 + 72) > v39)
    {
      v124 = *(a2 + 72);
      v157 = *(a2 + 80);
      sub_10004565C("apfs superblock at index %u: apfs_fs_reserve_block_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 21;
      goto LABEL_24;
    }

    if (v39 > v10)
    {
      v125 = *(a2 + 80);
      sub_100045744("apfs superblock at index %u: apfs_fs_quota_block_count (%llu) should not be greater than nx_block_count (%llu) for an FS with quota\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      sub_100049C40(0x16, -7);
      v39 = *(a2 + 80);
    }

    if (*(a2 + 88) > v39)
    {
      v126 = *(a2 + 88);
      sub_10004565C("apfs superblock at index %u: apfs_fs_alloc_count (%llu) must not be greater than apfs_fs_quota_block_count (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 23;
      goto LABEL_24;
    }
  }

  if (*(a2 + 116) >> 30 == 3 || *(a2 + 116) != 2)
  {
    v128 = *(a2 + 116);
    sub_10004565C("apfs superblock at index %u: apfs_root_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 24;
    goto LABEL_24;
  }

  if (*(a2 + 120) >> 30 == 3 || *(a2 + 120) != 2)
  {
    v129 = *(a2 + 120);
    sub_10004565C("apfs superblock at index %u: apfs_extentref_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 25;
    goto LABEL_24;
  }

  if (*(a2 + 124) >> 30 == 3 || *(a2 + 124) != 2)
  {
    v130 = *(a2 + 124);
    sub_10004565C("apfs superblock at index %u: apfs_snap_meta_tree_type is invalid: 0x%x\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 26;
    goto LABEL_24;
  }

  if (!*(a2 + 128))
  {
    sub_10004565C("apfs superblock at index %u: apfs_omap_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 27;
    goto LABEL_24;
  }

  if (!*(a2 + 136))
  {
    sub_10004565C("apfs superblock at index %u: apfs_root_tree_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 28;
    goto LABEL_24;
  }

  if ((*(a2 + 56) & 0x100) != 0)
  {
    if ((*(a2 + 264) & 1) != 0 && !*(a2 + 976))
    {
      v133 = *(a2 + 264);
      v159 = *(a2 + 56);
      sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) inconsistent with apfs_incompatible_features secondary fsroot bit (0x%llx)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1160;
      goto LABEL_24;
    }

    if (!*(a2 + 1096))
    {
      sub_10004565C("apfs superblock at index %u: apfs_sec_root_tree_oid is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1161;
      goto LABEL_24;
    }

    if (*(a2 + 1104) >> 30 == 3 || *(a2 + 1104) != 2)
    {
      sub_10004565C("apfs superblock at index %u: apfs_sec_root_tree_type is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
      v21 = 92;
      v37 = 1162;
      goto LABEL_24;
    }
  }

  else if (*(a2 + 1096))
  {
    v127 = *(a2 + 1096);
    sub_100045744("apfs superblock at index %u: apfs_sec_root_tree_oid (%llu) set on incompatible volume\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    sub_100049C40(0x48B, -2);
  }

  if (!*(a2 + 144))
  {
    sub_10004565C("apfs superblock at index %u: apfs_extentref_tree_oid is invalid.\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 29;
    goto LABEL_24;
  }

  v40 = *(a2 + 160);
  if (v40 >= v9)
  {
    v132 = *(a2 + 160);
    sub_10004565C("apfs superblock at index %u: apfs_revert_to_xid (%llu) should be less than nx_next_xid (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 30;
    goto LABEL_24;
  }

  if (v40 && !*(a2 + 168))
  {
    v136 = *(a2 + 160);
    sub_10004565C("apfs superblock at index %u: apfs_revert_to_xid is %llu, but sblock oid is invalid\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    v21 = 92;
    v37 = 31;
    goto LABEL_24;
  }

  if (*(a2 + 232) > *(a2 + 224))
  {
    v131 = *(a2 + 232);
    v158 = *(a2 + 224);
    sub_100045744("apfs superblock at index %u: apfs_total_blocks_freed (%llu) should not be greater than apfs_total_blocks_alloced (%llu)\n", v12, v13, v14, v15, v16, v17, v18, *(a2 + 36));
    sub_100049C40(0x20, -7);
  }

  if (uuid_is_null((a2 + 240)))
  {
    sub_10004565C("apfs superblock at index %u: apfs_vol_uuid is NULL\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 33;
    goto LABEL_24;
  }

  if (*(a2 + 256) > v19)
  {
    v134 = *(a2 + 256);
    sub_100045744("apfs superblock at index %u: apfs_last_mod_time (%llu) is greater than current time (%llu)\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    sub_100049C40(0x22, -4);
  }

  v48 = *(a2 + 264);
  if (v48 >= 0x1000)
  {
    v135 = *(a2 + 264);
    sub_100045744("apfs superblock at index %u: apfs_fs_flags has an unknown flag set 0x%llx\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    sub_100049C40(0x23, -3);
    v48 = *(a2 + 264);
  }

  v49 = v48 & 0x109;
  if ((*(a2 + 48) & 2) == 0 && (v49 != 256) == ((*(a2 + 56) >> 6) & 1))
  {
    v162 = *(a2 + 56);
    sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) PFK bit inconsistent with apfs_incompatible_features (0x%llx) PFK bit\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 998;
    goto LABEL_24;
  }

  if ((v49 & (v49 - 1)) != 0)
  {
    sub_10004565C("apfs superblock at index %u: apfs_fs_flags has conflicting encryption flags 0x%llx\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 999;
    goto LABEL_24;
  }

  if ((v48 & 0x80) != 0 && (*(a2 + 56) & 0x20 | *(a2 + 1024) || *(a2 + 1032)))
  {
    v167 = *(a2 + 1032);
    v163 = *(a2 + 56);
    sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) previously sealed bit inconsistent with apfs_incompatible_features (0x%llx) / apfs_integrity_meta_oid (%llu) / apfs_fext_tree_oid (%llu)\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 951;
    goto LABEL_24;
  }

  if ((v48 & 1) == 0 || *(a2 + 976))
  {
    if ((*(a2 + 56) & 0x20) != 0)
    {
      sub_10004565C("apfs superblock at index %u: apfs_fs_flags (0x%llx) indicates sealed volume is not fully unencrypted\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
      v21 = 92;
      v37 = 917;
      goto LABEL_24;
    }

    sub_10004F0C8((a2 + 96), a2, v42, v43, v44, v45, v46, v47);
  }

  if (!*(a2 + 704))
  {
    sub_10004565C("apfs superblock at index %u: apfs_volname[0] == 0\n", v41, v42, v43, v44, v45, v46, v47, *(a2 + 36));
    v21 = 92;
    v37 = 36;
    goto LABEL_24;
  }

  if (strnlen((a2 + 272), 0x20uLL) == 32)
  {
    sub_10004565C("apfs superblock at index %u: apfs_formatted_by.id (%.*s) is not NULL terminated.\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    v21 = 92;
    sub_100049C40(0x25, 92);
    v137 = *(a2 + 16);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_formatted_by.id(oid 0x%llx, xid 0x%llx)? ", v57, v58, v59, v60, v61, v62, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 303) = 0;
    *a4 = 1;
  }

  if (*(a2 + 304) > v19)
  {
    v138 = *(a2 + 304);
    sub_100045744("apfs superblock at index %u: apfs_formatted_by.timestamp (%llu) is greater than current time (%llu)\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    sub_100049C40(0x26, -4);
  }

  if (*(a2 + 312) > v9)
  {
    v139 = *(a2 + 312);
    sub_100045744("apfs superblock at index %u: apfs_formatted_by.last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", v50, v51, v52, v53, v54, v55, v56, *(a2 + 36));
    sub_100049C40(0x27, -2);
  }

  v63 = 0;
  v64 = a2 + 320;
  do
  {
    v65 = *(v64 + 32);
    if (!v65)
    {
      break;
    }

    if (strnlen(v64, 0x20uLL) == 32)
    {
      v73 = v64;
      sub_10004565C("apfs superblock at index %u: apfs_modified_by[%d].id (%.*s) is not NULL terminated.\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      v21 = 92;
      sub_100049C40(0x28, 92);
      v140 = *(a2 + 8);
      v160 = *(a2 + 16);
      if (!sub_10004758C(qword_10009BA58, "Fix apfs_modified_by[%d].id(oid 0x%llx, xid 0x%llx)? ", v74, v75, v76, v77, v78, v79, v63))
      {
        return v21;
      }

      v64 = v73;
      *(v73 + 31) = 0;
      *a4 = 1;
      v65 = *(v73 + 32);
    }

    if (v65 > v19)
    {
      sub_100045744("apfs superblock at index %u: apfs_modified_by[%d].timestamp (%llu) is greater than current time (%llu)\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      sub_100049C40(0x29, -4);
    }

    if (*(v64 + 40) > v9)
    {
      v161 = *(v64 + 40);
      sub_100045744("apfs superblock at index %u: apfs_modified_by[%d].last_xid (0x%llx) is greater than nx_next_xid (0x%llx)\n", v66, v67, v68, v69, v70, v71, v72, *(a2 + 36));
      sub_100049C40(0x2A, -2);
    }

    ++v63;
    v64 += 48;
  }

  while (v63 != 8);
  if (strnlen((a2 + 704), 0x100uLL) == 256)
  {
    sub_10004565C("apfs superblock at index %u: apfs_volname (%.*s) is not NULL terminated.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    sub_100049C40(0x2B, 92);
    v141 = *(a2 + 16);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_volname(oid 0x%llx, xid 0x%llx)? ", v87, v88, v89, v90, v91, v92, *(a2 + 8)))
    {
      return v21;
    }

    *(a2 + 959) = 0;
    *a4 = 1;
  }

  if (*(a2 + 960) <= 2u)
  {
    v142 = *(a2 + 960);
    sub_10004565C("apfs superblock at index %u: apfs_next_doc_id (%u) should not be less than MIN_DOC_ID (%d)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    v37 = 44;
    goto LABEL_24;
  }

  if (*(a2 + 216) && !*(a2 + 1000))
  {
    sub_100045614("apfs_sb: object (oid 0x%llx): apfs_snap_meta_ext_oid invalid\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 8));
  }

  v93 = *(a2 + 56);
  if ((v93 & 0x20) != 0)
  {
    if (!*(a2 + 1032))
    {
      sub_10004565C("apfs superblock at index %u: apfs_fext_tree_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 909;
      goto LABEL_24;
    }

    if (*(a2 + 1040) >> 30 == 3 || *(a2 + 1040) != 2)
    {
      v150 = *(a2 + 1040);
      sub_10004565C("apfs superblock at index %u: apfs_fext_tree_type is invalid: %u\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 910;
      goto LABEL_24;
    }

    if (!*(a2 + 1024))
    {
      sub_10004565C("apfs superblock at index %u: apfs_integrity_meta_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 911;
      goto LABEL_24;
    }
  }

  if ((v93 & 0x40) != 0)
  {
    if (!*(a2 + 1048))
    {
      sub_10004565C("apfs superblock at index %u: apfs_pfkur_tree_oid is invalid.\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 970;
      goto LABEL_24;
    }

    if (*(a2 + 1044) >> 30 == 3 || *(a2 + 1044) != 2)
    {
      v151 = *(a2 + 1044);
      sub_10004565C("apfs superblock at index %u: apfs_pfkur_tree_type is invalid: 0x%x\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      v21 = 92;
      v37 = 971;
      goto LABEL_24;
    }
  }

  if (*(a2 + 1056) >= *(*(a1 + 8) + 96))
  {
    v143 = *(a2 + 1056);
    v164 = *(*(a1 + 8) + 96);
    sub_100045744("apfs superblock at index %u: apfs_doc_id_index_xid (%llu) is greater than or equal to container nx_next_xid (%llu)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    sub_100049C40(0x40F, -2);
  }

  v94 = *(a2 + 1064);
  if (v94 >= 0x20)
  {
    v144 = *(a2 + 1064);
    sub_100045744("apfs superblock at index %u: apfs_doc_id_index_flags has unrecognized flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    sub_100049C40(0x410, -3);
    v94 = *(a2 + 1064);
  }

  if ((v94 & 1) == 0)
  {
    if (*(a2 + 1080))
    {
      v145 = *(a2 + 1080);
      sub_100045744("apfs superblock at index %u: apfs_prev_doc_id_tree_oid is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      sub_100049C40(0x411, -3);
    }

    if (*(a2 + 1088))
    {
      v146 = *(a2 + 1088);
      v165 = *(a2 + 1064);
      sub_100045744("apfs superblock at index %u: apfs_doc_id_fixup_cursor is set (%llu), despite apfs_doc_id_index_flags (0x%x)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
      sub_100049C40(0x412, -3);
      if (sub_10004758C(qword_10009BA58, "Fix apfs_doc_id_fixup_cursor? ", v95, v96, v97, v98, v99, v100, v112))
      {
        *(a2 + 1088) = 0;
        *a4 = 1;
      }
    }
  }

  if (*(a2 + 1088) >= *(a2 + 176))
  {
    v147 = *(a2 + 1088);
    v166 = *(a2 + 176);
    sub_100045744("apfs superblock at index %u: apfs_doc_id_fixup_cursor (%llu) is greater than or equal to apfs_next_obj_id (%llu)\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    sub_100049C40(0x413, -2);
  }

  if ((*(a2 + 1072) || *(a2 + 1080)) && (*(a2 + 1068) >> 30 == 3 || *(a2 + 1068) != 2))
  {
    v148 = *(a2 + 1068);
    sub_10004565C("apfs superblock at index %u: apfs_doc_id_tree_type is invalid: %u\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    v21 = 92;
    sub_100049C40(0x414, 92);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_doc_id_tree_type? ", v101, v102, v103, v104, v105, v106, v113))
    {
      return v21;
    }

    *(a2 + 1068) = 2;
    *a4 = 1;
  }

  if (*(a2 + 1108) >= 4u)
  {
    v149 = *(a2 + 1108);
    sub_100045744("apfs superblock at index %u: unknown clone group tree flags: 0x%x\n", v80, v81, v82, v83, v84, v85, v86, *(a2 + 36));
    if (sub_10000ED68(a1, *(a2 + 1108), 3, v107, v108, v109, v110, v111))
    {
      *(a2 + 1108) &= 3u;
      *a4 = 1;
    }

    sub_100049C40(0x5EC, -3);
  }

  return 0;
}

uint64_t sub_10004EB94(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 176) < *(a2 + 40))
  {
    sub_10004565C("apfs_next_obj_id is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 40));
    v11 = 92;
    sub_100049C40(0x2D, 92);
    v61 = *(a1 + 16);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_next_obj_id(oid 0x%llx, xid 0x%llx)? ", v12, v13, v14, v15, v16, v17, *(a1 + 8)))
    {
      return v11;
    }

    *(a1 + 176) = *(a2 + 40);
    *a3 = 1;
  }

  if (*(a1 + 960) < *(a2 + 48))
  {
    sub_10004565C("apfs_next_doc_id is not valid (expected %u, actual %u)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 48));
    v11 = 92;
    sub_100049C40(0x415, 92);
    v62 = *(a1 + 16);
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_next_doc_id(oid 0x%llx, xid 0x%llx)? ", v18, v19, v20, v21, v22, v23, *(a1 + 8)))
    {
      return v11;
    }

    *(a1 + 960) = *(a2 + 48);
    *a3 = 1;
  }

  if (*(a1 + 184) != *a2)
  {
    sub_100045744("apfs_num_files is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *a2);
    sub_100049C40(0x2E, -8);
    v63 = *(a1 + 16);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_files(oid 0x%llx, xid 0x%llx)? ", v24, v25, v26, v27, v28, v29, *(a1 + 8)))
    {
      *(a1 + 184) = *a2;
      *a3 = 1;
    }
  }

  if (*(a1 + 192) != *(a2 + 8))
  {
    sub_100045744("apfs_num_directories is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    sub_100049C40(0x2F, -8);
    v64 = *(a1 + 16);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_directories(oid 0x%llx, xid 0x%llx)? ", v30, v31, v32, v33, v34, v35, *(a1 + 8)))
    {
      *(a1 + 192) = *(a2 + 8);
      *a3 = 1;
    }
  }

  if (*(a1 + 200) != *(a2 + 16))
  {
    sub_100045744("apfs_num_symlinks is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 16));
    sub_100049C40(0x30, -8);
    v65 = *(a1 + 16);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_symlinks(oid 0x%llx, xid 0x%llx)? ", v36, v37, v38, v39, v40, v41, *(a1 + 8)))
    {
      *(a1 + 200) = *(a2 + 16);
      *a3 = 1;
    }
  }

  if (*(a1 + 208) != *(a2 + 24))
  {
    sub_100045744("apfs_num_other_fsobjects is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 24));
    sub_100049C40(0x31, -8);
    v66 = *(a1 + 16);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_other_fsobjects(oid 0x%llx, xid 0x%llx)? ", v42, v43, v44, v45, v46, v47, *(a1 + 8)))
    {
      *(a1 + 208) = *(a2 + 24);
      *a3 = 1;
    }
  }

  if (*(a1 + 216) != *(a2 + 32))
  {
    sub_100045744("apfs_num_snapshots is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 32));
    sub_100049C40(0x32, -8);
    v67 = *(a1 + 16);
    if (sub_10004758C(qword_10009BA58, "Fix apfs_num_snapshots(oid 0x%llx, xid 0x%llx)? ", v48, v49, v50, v51, v52, v53, *(a1 + 8)))
    {
      *(a1 + 216) = *(a2 + 32);
      *a3 = 1;
    }
  }

  if (*(a1 + 1136) >= *(a2 + 56))
  {
    return 0;
  }

  sub_10004565C("apfs_clonegroup_next_id is not valid (expected %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 56));
  v11 = 92;
  sub_100049C40(0x5ED, 92);
  v68 = *(a1 + 16);
  if (sub_10004758C(qword_10009BA58, "Fix apfs_clonegroup_next_id(oid 0x%llx, xid 0x%llx)? ", v54, v55, v56, v57, v58, v59, *(a1 + 8)))
  {
    v11 = 0;
    *(a1 + 1136) = *(a2 + 56);
    *a3 = 1;
  }

  return v11;
}

uint64_t sub_10004EEB8(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2[9];
  v12 = *a3;
  if (v11 > *(*(a1 + 8) + 40) - *a3)
  {
    sub_10004565C("apfs_fs_reserve_block_count brings total reserve block count beyond the container block count (max %llu, actual %llu)\n", a2, a3, a4, a5, a6, a7, a8, *(*(a1 + 8) + 40) - *a3);
    v13 = 92;
    sub_100049C40(0x449, 92);
    v35 = a2[2];
    if (!sub_10004758C(qword_10009BA58, "Fix apfs_fs_reserve_block_count(oid 0x%llx, xid 0x%llx)? ", v14, v15, v16, v17, v18, v19, a2[1]))
    {
      return v13;
    }

    v11 = 0;
    a2[9] = 0;
    *a4 = 1;
    v12 = *a3;
  }

  *a3 = v12 + v11;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_10004213C(a2[1], &v37);
  if (!v13)
  {
    v27 = a2[11];
    if (v27 != v37)
    {
      sub_100045744("apfs_fs_alloc_count is not valid (expected %llu, actual %llu)\n", v20, v21, v22, v23, v24, v25, v26, v37);
      sub_100049C40(0x367, -8);
      v36 = a2[2];
      if (sub_10004758C(qword_10009BA58, "Fix apfs_fs_alloc_count(oid 0x%llx, xid 0x%llx)? ", v28, v29, v30, v31, v32, v33, a2[1]))
      {
        v27 = v37;
        a2[11] = v37;
        *a4 = 1;
      }

      else
      {
        v27 = a2[11];
      }
    }

    if (a2[9] < v27)
    {
      v27 = a2[9];
    }

    a3[1] += v27;
  }

  return v13;
}

uint64_t sub_10004F00C(uint64_t a1, int a2, void *a3)
{
  memset(dst, 170, sizeof(dst));
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v6;
  *&out[16] = v6;
  v7 = a3[5];
  if (v7)
  {
    uuid_copy(dst, (v7 + 240));
  }

  else
  {
    uuid_clear(dst);
  }

  uuid_unparse(dst, out);
  return sub_100047FFC(a1, a2, v8, v9, v10, v11, v12, v13, *a3);
}

char *sub_10004F0C8(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (*result != 5)
  {
    v10 = *result;
    sub_100045744("apfs object (oid 0x%llx): crypto major version (%u) is not CP_CURRENT (%u)\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));
    result = sub_100049C40(0xC, -6);
  }

  if (*(v9 + 1))
  {
    sub_100045744("apfs object (oid 0x%llx): cpflags (%u) should be 0\n", a2, a3, a4, a5, a6, a7, a8, *(a2 + 8));

    return sub_100049C40(0xD, -3);
  }

  return result;
}

unint64_t sub_10004F16C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v5 = a2 + a1;
  v6 = a4 + a3;
  if (a2 + a1 > a3)
  {
    v7 = v6 >= a1;
    v8 = v6 == a1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v9 = !v8 && v7 && v5 >= a1;
  if (!v9 || v6 < a3)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = a1;
  }

  if (v5 >= v6)
  {
    v5 = a4 + a3;
  }

  if (a5)
  {
    *a5 = v11;
  }

  return v5 - v11;
}

uint64_t sub_10004F1B0(unint64_t a1)
{
  if (a1 > 0x8AC7230489E7FFFFLL)
  {
    return 19;
  }

  if (a1 > 0xDE0B6B3A763FFFFLL)
  {
    return 18;
  }

  if (a1 > 0x16345785D89FFFFLL)
  {
    return 17;
  }

  if (a1 > 0x2386F26FC0FFFFLL)
  {
    return 16;
  }

  if (a1 > 0x38D7EA4C67FFFLL)
  {
    return 15;
  }

  if (a1 > 0x5AF3107A3FFFLL)
  {
    return 14;
  }

  if (a1 > 0x9184E729FFFLL)
  {
    return 13;
  }

  if (a1 > 0xE8D4A50FFFLL)
  {
    return 12;
  }

  if (a1 > 0x174876E7FFLL)
  {
    return 11;
  }

  if (a1 > 0x2540BE3FFLL)
  {
    return 10;
  }

  if (a1 > 0x3B9AC9FF)
  {
    return 9;
  }

  if (a1 > 0x5F5E0FF)
  {
    return 8;
  }

  if (a1 > 0x98967F)
  {
    return 7;
  }

  if (a1 > 0xF423F)
  {
    return 6;
  }

  if (a1 >> 5 > 0xC34)
  {
    return 5;
  }

  if (a1 >> 4 > 0x270)
  {
    return 4;
  }

  if (a1 > 0x3E7)
  {
    return 3;
  }

  if (a1 <= 0x63)
  {
    return a1 > 9;
  }

  return 2;
}

uint64_t sub_10004F380(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if ((result & 0x3FFF | 0xC000) == result)
  {
    return result & 0x3FFF;
  }

  if (result < 0x6C)
  {
    return result;
  }

  result = 6;
  if (v1 > -536870194)
  {
    if (v1 > -536870182)
    {
      if (v1 <= -536870173)
      {
        if (v1 != -536870181)
        {
          if (v1 == -536870174)
          {
            return 1;
          }

          return 94;
        }

        return 28;
      }

      if (v1 == -536870172)
      {
        return result;
      }

      v3 = 745;
    }

    else
    {
      if (v1 <= -536870188)
      {
        if (v1 != -536870193)
        {
          if (v1 != -536870190)
          {
            return 94;
          }

          return 16;
        }

        return 30;
      }

      if (v1 == -536870187)
      {
        return 16;
      }

      v3 = 729;
    }

    if (v1 != (v3 | 0xE0000000))
    {
      return 94;
    }

    return result;
  }

  if (v1 > -536870207)
  {
    if (v1 <= -536870199)
    {
      if (v1 != -536870206)
      {
        if (v1 == -536870201)
        {
          return 45;
        }

        return 94;
      }

      return 22;
    }

    if (v1 == -536870198)
    {
      return 5;
    }

    v2 = 717;
LABEL_25:
    if (v1 == (v2 | 0xE0000000))
    {
      return 13;
    }

    return 94;
  }

  if (v1 == -536870211)
  {
    return 12;
  }

  if (v1 != -536870208)
  {
    v2 = 705;
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_10004F548(const void *a1, CC_LONG a2)
{
  *md = 0u;
  v8 = 0u;
  *&v6.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v6.wbuf[6] = v4;
  *&v6.wbuf[10] = v4;
  *&v6.hash[6] = v4;
  *&v6.wbuf[2] = v4;
  *v6.count = v4;
  *&v6.hash[2] = v4;
  CC_SHA256_Init(&v6);
  CC_SHA256_Update(&v6, a1, a2);
  CC_SHA256_Final(md, &v6);
  return *(&v8 + 1) & 0x1FFFFFFFFFFFFFLL;
}

uint64_t sub_10004F5EC(int a1, uint64_t a2, size_t a3, void *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = a3;
    do
    {
      while (1)
      {
        v10 = read(a1, (a2 + v8), v9);
        if (v10 == -1)
        {
          break;
        }

        if (v10)
        {
          v8 += v10;
          v9 = a3 - v8;
          if (a3 > v8)
          {
            continue;
          }
        }

        goto LABEL_10;
      }
    }

    while (*__error() == 4);
    return *__error();
  }

  else
  {
    v8 = 0;
LABEL_10:
    result = 0;
    *a4 = v8;
  }

  return result;
}

uint64_t sub_10004F6BC()
{

  return ccder_blob_encode_implicit_raw_octet_string();
}

uint64_t sub_10004F6E4()
{

  return sub_1000526D8(v1 - 32, 0x8000000000000003, (v0 + 48), 40);
}

uint64_t sub_10004F740()
{

  return ccder_blob_decode_range();
}

uint64_t sub_10004F760()
{
  sub_10004FCC0(&unk_100078C18 != 0, 62, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_10004FCC0(sub_10004F8E8 != 0, 63, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_10004F8E8();
}

uint64_t sub_10004F818(uint64_t a1, unsigned int a2)
{
  sub_10004FCC0(&unk_100078C18 != 0, 70, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");
  sub_10004FCC0(sub_10004F958 != 0, 71, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform.c");

  return sub_10004F958(a1, a2);
}

uint64_t sub_10004F8E8()
{
  v0 = ccrng();
  sub_10004FCC0(v0 != 0, 22, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  sub_10004FCC0(0, 23, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
  return v0;
}

uint64_t sub_10004F958(uint64_t a1, unsigned int a2)
{
  v4 = sub_10004F760();
  v5 = (*v4)(v4, a2, a1) == 0;

  return sub_10004FCC0(v5, 31, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/platform/platform_lib.c");
}

unint64_t sub_10004F9B4(uint64_t a1)
{
  info = 0;
  mach_timebase_info(&info);
  return info.numer * a1 / info.denom;
}

BOOL sub_10004F9F4(unsigned __int8 *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = 0;
  do
  {
    v3 = *a1++;
    v2 |= v3;
    --a2;
  }

  while (a2);
  return v2 != 0;
}

uint64_t sub_10004FA20(const char *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a1;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__str = 0u;
  v17 = 0u;
  v5 = &__stdoutp;
  if (a3 >= 0x41)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sdump %s (len = %zd)%s%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "dump_bytes_internal", ":", 844, &byte_10005C3F3, &byte_10005C3F3, a1, a3, &byte_10005C3F3, &byte_10005C3F3);
    v4 = &byte_10005C3F3;
  }

  else if (!a3)
  {
    return memset_s(__str, 0x81uLL, 0, 0x81uLL);
  }

  v6 = 0;
  v15 = v3;
  do
  {
    v7 = v5;
    if (v3 - v6 >= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v3 - v6;
    }

    if (v3 != v6)
    {
      v9 = (a2 + v6);
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = __str;
      do
      {
        v12 = *v9++;
        snprintf(v11, 3uLL, "%02x", v12);
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    v5 = v7;
    fprintf(*v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s%s%s[%04zu,%04zu): %s%s%s%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "dump_bytes_internal", ":", 854, &byte_10005C3F3, &byte_10005C3F3, v4, &byte_10005C3F3, v6, v8 + v6, &byte_10005C3F3, __str, &byte_10005C3F3, &byte_10005C3F3);
    v6 += v8;
    v3 = v15;
  }

  while (v6 < v15);
  return memset_s(__str, 0x81uLL, 0, 0x81uLL);
}

_BYTE *sub_10004FC10(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0x10)
  {
    v2 = 16;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    v4 = byte_10009B0C0;
    v5 = v2;
    do
    {
      v6 = *a1++;
      snprintf(v4, 3uLL, "%02x", v6);
      v4 += 2;
      --v5;
    }

    while (v5);
  }

  byte_10009B0C0[2 * v2] = 0;
  return byte_10009B0C0;
}

uint64_t sub_10004FCA4(uint64_t result)
{
  if (result == 0 || result >= 0xFFFFFFDA)
  {
    return dword_100077174[(result + 38)];
  }

  return result;
}

uint64_t sub_10004FCC0(uint64_t result, int a2, const char *a3)
{
  if ((result & 1) == 0)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed REQUIRE condition (%s:%d)\n%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "REQUIRE_func", ":", 1134, &byte_10005C3F3, a3, a2, &byte_10005C3F3);
    abort();
  }

  return result;
}

uint64_t sub_10004FD4C(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a1 = off_10007CE90;
  return result;
}

uint64_t sub_10004FD70(uint64_t a1, void *a2, uint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_100077210;
  }

  v9 = sub_100050734(v11, a2, a3, a4, a5, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FDBC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
  }

  v14[2] = v5;
  v14[3] = v6;
  v14[0] = v10;
  v14[1] = 0;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = &unk_100077210;
  }

  v12 = sub_100050A28(v14, 0, v11, a3, a4, 0, a5);
  return sub_10004FCA4(v12);
}

uint64_t sub_10004FE1C(uint64_t a1, int a2, void *a3, const unsigned __int8 *a4, uint64_t a5)
{
  if (a1)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v7 = 0;
  }

  v10[2] = v5;
  v10[3] = v6;
  v10[0] = v7;
  v10[1] = 0;
  if (!a3)
  {
    a3 = &unk_100077210;
  }

  v8 = sub_100050DB0(v10, a2, a3, a4, a5);
  return sub_10004FCA4(v8);
}

uint64_t sub_10004FE68(uint64_t a1, void *a2, uint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a2)
  {
    a2 = &unk_100077210;
  }

  v9 = sub_100053910(v11, a2, a3, a4, a5, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FEB4(uint64_t a1, int a2, uint64_t *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_100052360(v8, a2, a3);
  return sub_10004FCA4(v6);
}

uint64_t sub_10004FF08(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a1)
  {
    v5 = *(a1 + 8);
  }

  else
  {
    v5 = 0;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = v5;
  v8[1] = 0;
  v6 = sub_100052FC0(v8, a2, a3);
  return sub_10004FCA4(v6);
}

uint64_t sub_10004FF44(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  if (a1)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v9 = 0;
  }

  v12[2] = v7;
  v12[3] = v8;
  v12[0] = v9;
  v12[1] = 0;
  if (!a4)
  {
    a4 = &unk_100077210;
  }

  v10 = sub_100050024(v12, a2, a3, a4, a5, a6, a7);
  return sub_10004FCA4(v10);
}

uint64_t sub_10004FF90(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (a1)
  {
    v8 = *(a1 + 8);
  }

  else
  {
    v8 = 0;
  }

  v11[2] = v6;
  v11[3] = v7;
  v11[0] = v8;
  v11[1] = 0;
  if (!a3)
  {
    a3 = &unk_100077210;
  }

  v9 = sub_100050A28(v11, a2, a3, a4, a5, 0, a6);
  return sub_10004FCA4(v9);
}

uint64_t sub_10004FFEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    return (sub_10004FFE8)(a1, a3, a4, a5, a6);
  }

  else
  {
    return (sub_10004FFE4)(a1, a3, a4, a5, a6);
  }
}

uint64_t sub_100050024(uint64_t *a1, int a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v12 = 4294967284;
  if (a2 > 9)
  {
    if (a2 <= 11)
    {
      if (a2 == 10)
      {
        return 0;
      }
    }

    else if (a2 != 22 && a2 != 15)
    {
      if (a2 != 12)
      {
        return v12;
      }

      goto LABEL_4;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    if (a5)
    {
      if (*a5 && (v16 = a5[1]) != 0 && (v17 = sub_100052174(*a5, *a5 + v16, &v40, 1), v17))
      {
        v12 = v17;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

LABEL_30:
    memset_s(&v40, 0xB0uLL, 0, 0xB0uLL);
    return v12;
  }

  if (a2 > 4)
  {
    if (a2 != 7)
    {
      if (a2 == 5)
      {
        sub_1000543F4(a6, &v40);
      }

      else
      {
        if (a2 != 6)
        {
          return v12;
        }

        sub_100054354(a6, &v40);
      }

      return v40;
    }

    v19 = *a1;
    *&v39[0] = 0;
    __s = 0u;
    v59 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    v57[0] = 0uLL;
    if (a4 && *a4 && a4[1])
    {
      if (!a5)
      {
        goto LABEL_39;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_39;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (!a5)
      {
        goto LABEL_50;
      }

      v20 = *a5;
      if (!*a5)
      {
        goto LABEL_50;
      }

      v21 = a5[1];
      if (!v21)
      {
        goto LABEL_50;
      }

      if (!a4)
      {
LABEL_39:
        v12 = 4294967285;
        goto LABEL_51;
      }
    }

    v22 = sub_100052354(v20, v20 + v21, &v40);
    if (v22 || (v22 = sub_100053CB4(a4, &v40, &__s, v39, v19, v57), v22) || (v19 & 8) != 0 && (v22 = sub_10004FD44(), v22))
    {
      v12 = v22;
      goto LABEL_51;
    }

LABEL_50:
    v12 = 0;
LABEL_51:
    memset_s(&__s, 0x20uLL, 0, 0x20uLL);
    if (*&v57[0])
    {
      memset_s(*&v57[0], *(&v57[0] + 1), 0, *(&v57[0] + 1));
      free(*&v57[0]);
    }

    goto LABEL_30;
  }

  if ((a2 - 1) >= 4)
  {
    return v12;
  }

LABEL_4:
  v13 = *a1;
  v35 = 0;
  __s = 0u;
  v59 = 0u;
  memset(v57, 0, sizeof(v57));
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  memset(v39, 0, sizeof(v39));
  v33 = 0;
  __n = 0;
  __count = 0;
  memset(dst, 0, sizeof(dst));
  v37 = 0uLL;
  v31 = 0;
  v14 = sub_100052360(0, 1, &__count);
  if (v14)
  {
    goto LABEL_98;
  }

  if (!__count)
  {
    goto LABEL_108;
  }

  if (!a6 || !*a6)
  {
    v12 = 4294967285;
    goto LABEL_22;
  }

  v12 = 4294967285;
  if (a7)
  {
    v15 = a6[1];
    if (v15)
    {
      v14 = sub_100051FB4(*a6, *a6 + v15, &v40);
      if (v14)
      {
        goto LABEL_98;
      }

      if ((v13 & 0x40) != 0)
      {
        if (a5 && a5[1] == 16)
        {
          uuid_copy(dst, *a5);
LABEL_15:
          v12 = 4294967284;
          goto LABEL_22;
        }

        goto LABEL_22;
      }

      v14 = sub_100052E70(v13, 1, a4, a5, &__s, &v35, &v31, dst, &v37, &v33);
      if (v14)
      {
        goto LABEL_98;
      }

      if (a2 != 3)
      {
        if (a2 == 2)
        {
          if (BYTE5(v42[0]) != 1)
          {
            sub_100054570();
          }
        }

        else if (a2 == 1 && BYTE5(v42[0]) != 1)
        {
          sub_1000545D8();
        }

        goto LABEL_15;
      }

      if (BYTE5(v42[0]) != 1)
      {
        if (BYTE5(v42[0]))
        {
          goto LABEL_15;
        }

        if ((v42[0] & 0x1000) != 0)
        {
          if ((v42[0] & 2) != 0)
          {
            goto LABEL_15;
          }

          if (((v31 ^ LODWORD(v42[0])) & 1) == 0)
          {
            v14 = sub_10005285C(0, 0, &v40, v57);
            if (!v14)
            {
              v14 = sub_10005419C(&v40, &__s, v35, v57);
              if (!v14)
              {
                *(v42 + 6) = v37;
                goto LABEL_74;
              }
            }

LABEL_98:
            v12 = v14;
            goto LABEL_22;
          }

          fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek and unmanaged vek device protection mismatch vek:%x, kek:%x%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "_cmd_handle_vek", ":", 2811, &byte_10005C3F3, LODWORD(v42[0]), v31, &byte_10005C3F3);
LABEL_105:
          v12 = 4294967287;
          goto LABEL_22;
        }

LABEL_101:
        v12 = 4294967288;
        goto LABEL_22;
      }

      if ((v56 & 2) != 0)
      {
        goto LABEL_101;
      }

      if ((v31 & 1) == 0)
      {
        goto LABEL_105;
      }

      v14 = sub_10005285C(0, 0, &v40, v57);
      if (v14)
      {
        goto LABEL_98;
      }

      LODWORD(v29) = 0;
      if (sub_10004F9F4(&__s, 32))
      {
        if (sub_10004F9F4(v57, 32))
        {
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 | 2;
          v36 = 40;
          if (!sub_100054640(0x20u, &v29) || v29 > 0x28)
          {
            goto LABEL_22;
          }

          if (sub_10005136C(&__s, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, v57, 0x20u, &v45, &v36))
          {
            goto LABEL_109;
          }

          if (v42[0])
          {
            v28 = sub_10004FFE8;
            if ((v42[0] & 0x2000) == 0)
            {
              v28 = sub_10004FFE4;
            }

            if (((v28)(1, &unk_10009B578, &v45, &v45, 32) & 1) == 0)
            {
LABEL_109:
              v12 = 0xFFFFFFFFLL;
              goto LABEL_22;
            }
          }

          *(v42 + 6) = v37;
          if (*(&v40 + 1))
          {
            goto LABEL_15;
          }

          LODWORD(v56) = v56 & 0xFFFFFFFE;
LABEL_74:
          v23 = calloc(__count, 1uLL);
          if (!v23)
          {
            v12 = 4294967279;
            goto LABEL_22;
          }

          v24 = v23;
          v29 = v23;
          v30 = &v23[__count];
          if (!sub_1000519E4(&v29, &v40))
          {
            v12 = 4294967273;
            goto LABEL_97;
          }

          v25 = v30;
          v26 = &v24[__count] - v30;
          v27 = *a7;
          if (*a7)
          {
            if (v26 > *(a7 + 8))
            {
              v12 = 0xFFFFFFFFLL;
LABEL_97:
              memset_s(v24, __count, 0, __count);
              free(v24);
              goto LABEL_22;
            }
          }

          else
          {
            v27 = calloc(&v24[__count] - v30, 1uLL);
            if (!v27)
            {
              v12 = 4294967279;
              goto LABEL_97;
            }

            *a7 = v27;
            v25 = v30;
          }

          *(a7 + 8) = v26;
          memcpy(v27, &v24[v25 - v29], v26);
          v12 = 0;
          goto LABEL_97;
        }

        sub_100054508();
      }

      else
      {
        sub_1000544A0();
      }

LABEL_108:
      v12 = 4294967286;
    }
  }

LABEL_22:
  memset_s(&__s, 0x20uLL, 0, 0x20uLL);
  memset_s(v57, 0x20uLL, 0, 0x20uLL);
  memset_s(v39, 0x20uLL, 0, 0x20uLL);
  if (v33)
  {
    memset_s(v33, __n, 0, __n);
    free(v33);
  }

  return v12;
}

uint64_t sub_100050734(void *a1, uint64_t a2, uint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v35, 0, sizeof(v35));
  *v27 = 32;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  memset(__s, 0, sizeof(__s));
  __count = 0;
  v12 = a3 && *a3 && a3[1] != 0;
  v33 = 0uLL;
  v34 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v13 = sub_100052360(0, 1, &__count);
  if (v13)
  {
    goto LABEL_29;
  }

  if (!__count)
  {
    v14 = 4294967286;
    goto LABEL_30;
  }

  v14 = 4294967285;
  if (!a4 || !a5 || !*a5 || __count > *(a5 + 8))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    if (!a3)
    {
      goto LABEL_30;
    }

    if (!*a3)
    {
      goto LABEL_30;
    }

    v15 = a3[1];
    if (!v15)
    {
      goto LABEL_30;
    }

    v13 = sub_100052354(*a3, *a3 + v15, __s);
    if (!v13)
    {
      v13 = sub_100053CB4(a2, __s, v35, v27, *a1, 0);
      if (!v13)
      {
        v13 = sub_1000533EC(a4, WORD4(__s[1]) & 0x2809, v35, v27[0], v29, &v31);
        if (!v13)
        {
          *(&v29[2] + 6) = *(&__s[1] + 14);
          goto LABEL_19;
        }
      }
    }

    goto LABEL_29;
  }

  v13 = sub_1000533EC(a4, 0, 0, 0, v29, &v31);
  if (v13)
  {
LABEL_29:
    v14 = v13;
LABEL_30:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    goto LABEL_27;
  }

LABEL_19:
  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v14 = 4294967279;
    goto LABEL_30;
  }

  v17 = v16;
  v24 = v16;
  v25 = &v16[__count];
  if (sub_1000519E4(&v24, v29))
  {
    v18 = v25;
    v19 = v24;
    v20 = &v17[__count] - v25;
    *(a5 + 8) = v20;
    memcpy(*a5, &v18[v17 - v19], v20);
    if (a6)
    {
      v21 = *a6;
      if (*a6 && *(a6 + 8) >= 0x20uLL)
      {
        v14 = 0;
        *(a6 + 8) = 32;
        v22 = v32;
        *v21 = v31;
        v21[1] = v22;
      }

      else
      {
        v14 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
LABEL_27:
  memset_s(v35, 0x20uLL, 0, 0x20uLL);
  memset_s(&v31, 0x40uLL, 0, 0x40uLL);
  return v14;
}

uint64_t sub_100050A28(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  memset(__s, 0, 32);
  v28 = 32;
  v34 = 0;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  v9 = a4 && *a4 && *(a4 + 8) != 0;
  v37 = 0uLL;
  v38 = 0uLL;
  v35 = 0uLL;
  v36 = 0uLL;
  v26 = 0;
  __n = 0;
  memset(v30, 0, sizeof(v30));
  memset(dst, 0, sizeof(dst));
  v25 = 0;
  if (!a5 || !*a5 || (v10 = a5[1]) == 0)
  {
LABEL_46:
    v12 = 4294967285;
    goto LABEL_13;
  }

  if (v9)
  {
    v11 = *a1;
    if ((v11 & 0x40) != 0)
    {
      if (a4 && *(a4 + 8) == 16)
      {
        uuid_copy(dst, *a4);
        v12 = 4294967284;
        goto LABEL_13;
      }

      goto LABEL_46;
    }

    v14 = sub_100052E70(v11, (a2 >> 1) & 1, a3, a4, __s, &v28, &v25, dst, v30, &v26);
    if (v14)
    {
      goto LABEL_47;
    }

    v14 = sub_100051FB4(*a5, *a5 + a5[1], &v31);
    if (v14)
    {
      goto LABEL_47;
    }

    v15 = __s;
  }

  else
  {
    v14 = sub_100051FB4(*a5, *a5 + v10, &v31);
    if (v14)
    {
LABEL_47:
      v12 = v14;
      goto LABEL_13;
    }

    uuid_copy(v30, v33 + 6);
    v15 = 0;
  }

  if (v9)
  {
    v16 = v28;
  }

  else
  {
    v16 = 0;
  }

  v14 = sub_10005285C(v15, v16, &v31, &v35);
  if (v14)
  {
    goto LABEL_47;
  }

  if (!a7)
  {
LABEL_25:
    v12 = 0;
    v13 = "successful";
    goto LABEL_26;
  }

  v17 = *a7;
  if (*a7 && *(a7 + 8) >= 0x20uLL)
  {
    *(a7 + 8) = 32;
    v18 = v36;
    *v17 = v35;
    v17[1] = v18;
    goto LABEL_25;
  }

  v12 = 0xFFFFFFFFLL;
LABEL_13:
  v42 = 0uLL;
  if ((byte_10009B570 & 1) == 0)
  {
    v13 = "failed";
LABEL_26:
    v42 = v32;
    goto LABEL_34;
  }

  v40 = 0;
  v41[0] = 0;
  *(v41 + 6) = 0;
  if (v9)
  {
    sub_10004FA20("kek group", v30, 0x10uLL);
  }

  if (a5)
  {
    if (*a5)
    {
      v19 = a5[1];
      if (v19)
      {
        sub_100051C2C(*a5, *a5 + v19, &v40, 0, 0, &v42, 0, 1);
        sub_10004FA20("vek group", &v40 + 6, 0x10uLL);
      }
    }
  }

  v13 = "failed";
LABEL_34:
  v20 = __stdoutp;
  if (v9)
  {
    v21 = dst;
  }

  else
  {
    v21 = &v42;
  }

  if (v9)
  {
    v22 = "user";
  }

  else
  {
    v22 = "volume";
  }

  v23 = sub_10004FC10(v21, 0x10uLL);
  fprintf(v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %s %s unlock %s (%d)%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "_unlock_result", ":", 4034, &byte_10005C3F3, v22, v23, v13, v12, &byte_10005C3F3);
  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  memset_s(&v35, 0x40uLL, 0, 0x40uLL);
  if (v26)
  {
    memset_s(v26, __n, 0, __n);
    free(v26);
  }

  return v12;
}

uint64_t sub_100050DC4(_BYTE *a1, int a2, uint64_t a3, const unsigned __int8 *a4, const unsigned __int8 *a5, __int128 *a6, uint64_t a7)
{
  v12 = a2;
  memset(__s, 0, sizeof(__s));
  if ((a2 & 8) != 0)
  {
    v14 = 10249;
  }

  else
  {
    v14 = (a2 << 9) & 0x800;
  }

  __count = 0;
  v15 = sub_100052360(0, 2, &__count);
  if (v15)
  {
    goto LABEL_16;
  }

  if (!__count)
  {
    v21 = 4294967286;
    goto LABEL_19;
  }

  if (!a7 || !*a7 || __count > *(a7 + 8))
  {
    v21 = 4294967285;
LABEL_19:
    memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
    return v21;
  }

  v15 = sub_100053584(a5, a4, v14 | v12 & 1u, a3, a6, __s, *a1 & 4);
  if (v15)
  {
LABEL_16:
    v21 = v15;
    goto LABEL_19;
  }

  v16 = calloc(__count, 1uLL);
  if (!v16)
  {
    v21 = 4294967279;
    goto LABEL_19;
  }

  v17 = v16;
  v23 = v16;
  v24 = &v16[__count];
  if (sub_100051FC0(&v23, __s))
  {
    v18 = v24;
    v19 = v23;
    v20 = &v17[__count] - v24;
    *(a7 + 8) = v20;
    memcpy(*a7, &v18[v17 - v19], v20);
    v21 = 0;
  }

  else
  {
    v21 = 4294967273;
  }

  memset_s(__s, 0xB0uLL, 0, 0xB0uLL);
  memset_s(v17, __count, 0, __count);
  free(v17);
  return v21;
}

uint64_t sub_100050FC4()
{
  result = *v0;
  v2 = *v0 + v0[1];
  return result;
}

uint64_t sub_100050FD8(void *a1)
{

  return memset_s(a1, 0x20uLL, 0, 0x20uLL);
}

uint64_t sub_100051004(void *a1)
{

  return memset_s(a1, 0xB0uLL, 0, 0xB0uLL);
}

uint64_t sub_100051020()
{
  result = *v0;
  v2 = *v0 + v0[1];
  return result;
}

uint64_t sub_10005106C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unint64_t a6, void *a7, void *a8)
{
  v47 = a1;
  v48 = a3;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_encrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v49 = &v40 - v16;
  bzero(&v40 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  bzero(&v40 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6) || (a6 - 40) < 0xFFFFFFE0)
  {
    goto LABEL_31;
  }

  v42 = &v40;
  v43 = a8;
  v44 = a6;
  v41 = a7;
  if (!a4)
  {
    v22 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v22 || !a8 || *a8 < a6 + 8)
    {
      sub_100054668(__s);
      goto LABEL_32;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v43 >= v44 + 8)
  {
LABEL_15:
    v23 = v44 >> 3;
    if (v44 >> 3 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = 8;
    v26 = v24;
    do
    {
      v27 = *a5++;
      *(__s + v25) = v27;
      v25 += 16;
      --v26;
    }

    while (v26);
    v28 = 0;
    *&__s[0] = v48;
    v29 = 1;
    v45 = v23;
    v46 = v24;
    do
    {
      v47 = v29;
      v48 = v28;
      v30 = __s;
      v31 = 1;
      do
      {
        if (a4)
        {
          if ((a4(1, &unk_10009B578, v30, v30, 16) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v32 = v14[1];
          cccbc_clear_iv();
          sub_100051060(v14, v49, v20, 0x10uLL);
        }

        v33 = *v30;
        v30 += 2;
        *&__s[v31 % v23] = v33 ^ bswap64(v29++);
        ++v31;
        --v24;
      }

      while (v24);
      v28 = v48 + 1;
      v24 = v46;
      v29 = v47 + v45;
    }

    while (v48 != 5);
    v34 = v41;
    *v41 = *&__s[0];
    v35 = v34 + 1;
    v36 = __s + 1;
    do
    {
      v37 = *v36;
      v36 += 2;
      *v35++ = v37;
      --v24;
    }

    while (v24);
    v21 = 0;
    *v43 = (v44 & 0x38) + 8;
LABEL_31:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_32:
    v38 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_100054668(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_10005136C(unint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t *, uint64_t *, uint64_t), uint64_t *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_10005106C(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_10004FCC0(HIDWORD(v11) == 0, 171, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

uint64_t sub_1000513D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unint64_t a6, void *a7, void *a8)
{
  v44 = a3;
  v50 = a1;
  memset(__s, 0, sizeof(__s));
  v14 = ccaes_cbc_decrypt_mode();
  v15 = *v14 + 15;
  __chkstk_darwin(v14);
  v51 = &v42 - v16;
  bzero(&v42 - v16, v16);
  v17 = v14[1] + 15;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  bzero(&v42 - v19, v19);
  v21 = 0xFFFFFFFFLL;
  if (HIDWORD(a6))
  {
    goto LABEL_33;
  }

  v49 = a6;
  v22 = a6 >> 3;
  if (v22 - 6 < 0xFFFFFFFC)
  {
    goto LABEL_33;
  }

  v45 = &v42;
  v46 = a8;
  v43 = a7;
  if (!a4)
  {
    v23 = (a2 & 0xFFFFFFFFFFFFFFF7) == 0x10 || a2 == 32;
    if (!v23 || !a8 || *a8 < v49 - 8)
    {
      sub_100054668(__s);
      goto LABEL_34;
    }

    cccbc_init();
    goto LABEL_15;
  }

  if (a8 && *v46 >= v49 - 8)
  {
LABEL_15:
    *&__s[0] = *a5;
    v24 = v22 - 1;
    if (v22 != 1)
    {
      v25 = __s + 1;
      v26 = a5 + 1;
      v27 = v22 - 1;
      do
      {
        v28 = *v26++;
        *v25 = v28;
        v25 += 2;
        --v27;
      }

      while (v27);
    }

    v29 = 6 * v22 - 6;
    v48 = 1 - v22;
    v30 = 5;
    v47 = &__s[v22 - 2];
    do
    {
      LODWORD(v50) = v30;
      if (v49 >= 0x10)
      {
        v31 = v47;
        v32 = v22 - 1;
        v33 = v29;
        do
        {
          *v31 = *&__s[v32 % v24] ^ bswap64(v33);
          if (a4)
          {
            if ((a4(0, &unk_10009B578, v31, v31, 16) & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v34 = v14[1];
            cccbc_clear_iv();
            sub_100051060(v14, v51, v20, 0x10uLL);
          }

          --v33;
          v31 -= 2;
          v35 = __OFSUB__(v32--, 1);
        }

        while (!((v32 < 0) ^ v35 | (v32 == 0)));
      }

      v30 = v50 - 1;
      v29 += v48;
    }

    while (v50);
    if (*&__s[0] == v44)
    {
      v36 = v43;
      if (v22 != 1)
      {
        v37 = __s + 1;
        v38 = v22 - 1;
        do
        {
          v39 = *v37;
          v37 += 2;
          *v36++ = v39;
          --v38;
        }

        while (v38);
      }

      v21 = 0;
      *v46 = 8 * v24;
    }

    else
    {
      v21 = 0xFFFFFFFFLL;
    }

LABEL_33:
    memset_s(__s, 0x40uLL, 0, 0x40uLL);
    if (a4)
    {
      return v21;
    }

LABEL_34:
    v40 = *v14;
    cc_clear();
    return v21;
  }

LABEL_6:
  sub_100054668(__s);
  return 0xFFFFFFFFLL;
}

uint64_t sub_100051720(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(void, void *, unint64_t *, unint64_t *, uint64_t), void *a5, unsigned int a6, void *a7, _DWORD *a8)
{
  v11 = *a8;
  v9 = sub_1000513D8(a1, a2, a3, a4, a5, a6, a7, &v11);
  sub_10004FCC0(HIDWORD(v11) == 0, 261, "/Library/Caches/com.apple.xbs/Sources/AppleKeyStore_libs/aeskeywrap.c");
  *a8 = v11;
  return v9;
}

BOOL sub_10005178C(unsigned int a1, unsigned int *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

BOOL sub_1000517A0(unint64_t a1, unint64_t *a2)
{
  v2 = a1 - 8;
  result = a1 > 7;
  *a2 = v2;
  return result;
}

uint64_t sub_1000517B4(void *a1)
{

  return memset_s(a1, 0x40uLL, 0, 0x40uLL);
}

uint64_t sub_100051880(uint64_t result)
{
  v1 = *(result + 120);
  if ((v1 & 0x20) == 0)
  {
    v2 = result;
    if (!memcmp((result + 8), &unk_100077144, 0x10uLL))
    {
      sub_10004F694();
      result = fprintf(v5, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s personal recovery key%s\n", "aks", v6);
    }

    else if (!memcmp((v2 + 8), &unk_100077154, 0x10uLL))
    {
      sub_10004F694();
      result = fprintf(v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s icloud recovery key%s\n", "aks", v8);
    }

    else
    {
      result = memcmp((v2 + 8), &unk_100077164, 0x10uLL);
      if (result)
      {
LABEL_9:
        *(v2 + 120) = v1 | 0x20;
        return result;
      }

      sub_10004F694();
      result = fprintf(v3, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s institutional recovery key%s\n", "aks", v4);
    }

    v1 = *(v2 + 120) | 0x10;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000519E4(uint64_t *a1, uint64_t a2)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v5 = *a1;
  v4 = a1[1];
  if (*(a2 + 37))
  {
    sub_10004F818(&v11 + 8, 8u);
  }

  else
  {
    *(&v11 + 1) = *a2;
  }

  if (*(a2 + 8) || *(a2 + 37))
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error %d%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "fv_encode_vek_blob", ":", 775, &byte_10005C3F3, -12, &byte_10005C3F3);
    return 0;
  }

  else
  {
    result = sub_10004F6BC();
    if (result)
    {
      sub_10004F6A8();
      result = ccder_blob_encode_implicit_raw_octet_string();
      if (result)
      {
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          v7 = *(a2 + 8);
          result = ccder_blob_encode_implicit_uint64();
          if (result)
          {
            v8 = a1[1];
            result = ccder_blob_encode_tl();
            if (result)
            {
              result = sub_100051B94(a1, v10, *(a2 + 32), v5 + a1[1] - *a1, v4 - a1[1]);
              if (result)
              {
                v9 = a1[1];
                return ccder_blob_encode_tl();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100051B94(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    return 0;
  }

  a2[1] = a4;
  a2[2] = a5;
  if (!sub_100052540(a2, a3))
  {
    return 0;
  }

  sub_10004F6A8();
  if (!ccder_blob_encode_implicit_raw_octet_string() || !ccder_blob_encode_implicit_raw_octet_string())
  {
    return 0;
  }

  v7 = *a2;

  return ccder_blob_encode_implicit_uint64();
}

uint64_t sub_100051C2C(uint64_t a1, uint64_t a2, _DWORD *a3, _OWORD *a4, void *a5, _OWORD *a6, void *a7, int a8)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  if (a1 == a2)
  {
    return 4294967277;
  }

  v21 = 0;
  v25 = 0uLL;
  if (!ccder_blob_decode_range())
  {
    return 4294967277;
  }

  if (sub_10005274C(&v22, 0x8000000000000000, v26))
  {
    if (*&v26[0])
    {
      return 4294967277;
    }
  }

  else
  {
    *&v26[0] = 0;
  }

  if (!sub_1000526D8(&v22, 0x8000000000000001, &v26[1] + 8, 32))
  {
    return 4294967277;
  }

  if (!sub_1000526D8(&v22, 0x8000000000000002, &v27 + 8, 8))
  {
    return 4294967277;
  }

  v14 = v22;
  __src[0] = 0;
  v24 = 0;
  if (!ccder_blob_decode_tag())
  {
    return 4294967277;
  }

  if (!ccder_blob_decode_len())
  {
    return 4294967277;
  }

  if ((v24 & 0xFFFFFFFFFFFFFFEFLL) != 0xA000000000000003)
  {
    return 4294967277;
  }

  *(&v26[0] + 1) = v14;
  *&v26[1] = __src[0] + v22 - v14;
  if (!sub_10005274C(&v22, 0x8000000000000000, &v21))
  {
    return 4294967277;
  }

  if (!sub_1000526D8(&v22, 0x8000000000000001, &v25, 16))
  {
    return 4294967277;
  }

  v24 = 0;
  *__src = v22;
  if (!ccder_blob_decode_tl())
  {
    return 4294967277;
  }

  v15 = v24;
  if (v24 > 4)
  {
    v16 = __src[0];
    if (v24 >= 0x16)
    {
      v17 = 22;
    }

    else
    {
      v17 = v24;
    }

    memcpy(a3, __src[0], v17);
    *&v22 = &v16[v15];
  }

  else
  {
    v23 = 0;
    if (sub_10005274C(&v22, 0x8000000000000002, &v23))
    {
      *a3 = v23;
    }
  }

  v18 = *a3;
  *__src = 0u;
  v29 = 0u;
  if (*&v26[0])
  {
    v19 = 4294967284;
  }

  else
  {
    v19 = 4294967290;
    if (sub_100052540(v26, v18))
    {
      if (!memcmp(__src, &v26[1] + 8, 0x20uLL))
      {
        v19 = 0;
      }

      else
      {
        v19 = 4294967290;
      }
    }
  }

  if (((v19 == -6) & ~a8) != 0 || !v19)
  {
    if (a5)
    {
      *a5 = v21;
    }

    if (a6)
    {
      *a6 = v25;
    }

    if (a4)
    {
      *a4 = v22;
    }

    if (a7)
    {
      if (*&v26[0])
      {
        return 4294967284;
      }

      else
      {
        v19 = 0;
        *a7 = *(&v27 + 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return v19;
}

uint64_t sub_100051EFC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_100051C2C(a1, a2, (a3 + 32), &v6, (a3 + 8), (a3 + 16), a3, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 36))
  {
    if (*(a3 + 36) == 1)
    {
      goto LABEL_7;
    }

    return 4294967277;
  }

  if ((*(a3 + 32) & 4) != 0)
  {
    return 4294967277;
  }

  *(a3 + 36) = 1;
LABEL_7:
  if (*(a3 + 8) || *(a3 + 37))
  {
    return 4294967284;
  }

  if (sub_1000526D8(&v6, 0x8000000000000003, (a3 + 56), 40))
  {
    return 0;
  }

  return 4294967277;
}

uint64_t sub_100051FC0(uint64_t *a1, uint64_t *a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v5 = *a1;
  v4 = a1[1];
  v12 = 0;
  sub_10004F818(&v16, 8u);
  if (*a2)
  {
    return 0;
  }

  if ((a2[3] & 0x80) == 0 || (v7 = a2[14], result = ccder_blob_encode_implicit_uint64(), result))
  {
    if (*(a2 + 29) == 1)
    {
      result = sub_10004F6BC();
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    if (*(a2 + 29))
    {
      return 0;
    }

    result = ccder_blob_encode_implicit_raw_octet_string();
    if (result)
    {
      v8 = a2[11];
      result = ccder_blob_encode_implicit_uint64();
      if (result)
      {
        if ((sub_10004F6BC() & 1) == 0)
        {
          return 0;
        }

LABEL_12:
        sub_10004F6A8();
        result = ccder_blob_encode_implicit_raw_octet_string();
        if (result)
        {
          result = ccder_blob_encode_implicit_raw_octet_string();
          if (result)
          {
            v9 = *a2;
            result = ccder_blob_encode_implicit_uint64();
            if (result)
            {
              v10 = a1[1];
              result = ccder_blob_encode_tl();
              if (result)
              {
                result = sub_100051B94(a1, &v12, *(a2 + 6), v5 + a1[1] - *a1, v4 - a1[1]);
                if (result)
                {
                  v11 = a1[1];
                  return ccder_blob_encode_tl();
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

uint64_t sub_100052174(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = 0uLL;
  if (a1 == a2)
  {
    return 4294967277;
  }

  result = sub_100051C2C(a1, a2, (a3 + 24), &v12, a3, (a3 + 8), 0, a4);
  if (result)
  {
    return result;
  }

  if (*(a3 + 28))
  {
    if (*(a3 + 28) != 2)
    {
      return 4294967277;
    }
  }

  else
  {
    *(a3 + 28) = 2;
    v6 = *(a3 + 24);
    if (!*(a3 + 29) && (v6 & 4) != 0)
    {
      *(a3 + 29) = 1;
    }

    if ((v6 & 2) == 0)
    {
      *(a3 + 120) |= 1u;
    }
  }

  if (*a3)
  {
    return 4294967284;
  }

  if (*(a3 + 29) == 1)
  {
    if (!sub_10004F6E4())
    {
      return 4294967277;
    }
  }

  else
  {
    if (*(a3 + 29))
    {
      return 4294967284;
    }

    if (!sub_10004F6E4() || !sub_10005274C(&v12, 0x8000000000000004, (a3 + 88)) || (sub_1000526D8(&v12, 0x8000000000000005, (a3 + 96), 16) & 1) == 0)
    {
      return 4294967277;
    }
  }

  v7 = *(a3 + 24);
  if ((v7 & 0x80) != 0)
  {
    if (!sub_10005274C(&v12, 0x8000000000000006, (a3 + 112)))
    {
      return 4294967277;
    }

    v7 = *(a3 + 24);
  }

  if ((v7 & 0x100) != 0)
  {
    if ((v7 & 2) != 0)
    {
      sub_10004F694();
      fprintf(v8, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 1%s\n", "aks", v9);
    }

    else
    {
      if (v7)
      {
        goto LABEL_25;
      }

      sub_10004F694();
      fprintf(v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek constraint violation 2%s\n", "aks", v11);
    }

    return 4294967277;
  }

LABEL_25:
  sub_100051880(a3);
  return 0;
}

uint64_t sub_100052360(uint64_t a1, int a2, uint64_t *a3)
{
  if ((a2 - 2) >= 2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = qword_10009B0B0;
    if (!qword_10009B0B0)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_10009B0B0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = qword_10009B0B8;
    if (!qword_10009B0B8)
    {
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_implicit_uint64();
      ccder_sizeof_raw_octet_string();
      v5 = &qword_10009B0B8;
LABEL_7:
      ccder_sizeof();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      *v5 = v4;
    }
  }

  v6 = 0xFFFFFFFFLL;
  if (a3 && v4)
  {
    v6 = 0;
    *a3 = v4;
  }

  return v6;
}

uint64_t sub_100052540(void *a1, unsigned int a2)
{
  v17 = 1301;
  v16[2] = 387978753;
  memset(__s, 0, sizeof(__s));
  v4 = ccsha256_di();
  v5 = (v4[1] + v4[2] + 19) & 0xFFFFFFFFFFFFFFF8;
  __chkstk_darwin(v4);
  bzero(v16 - v6, v7);
  if (*a1)
  {
    goto LABEL_2;
  }

  sub_10004F6D8();
  ccdigest_init();
  sub_10004F6D8();
  ccdigest_update();
  sub_10004F6D8();
  ccdigest_update();
  v9 = v4[7];
  v10 = sub_10004F6D8();
  v11(v10);
  v12 = v4[1] + v4[2];
  cc_clear();
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  if (!sub_10004FFEC(1, (a2 >> 13) & 1, &unk_10009B578, __s, __s, 32))
  {
LABEL_2:
    v8 = 0;
  }

  else
  {
LABEL_5:
    v14 = a1[1];
    v13 = a1[2];
    cchmac();
    v8 = 1;
  }

  memset_s(__s, 0x20uLL, 0, 0x20uLL);
  return v8;
}

uint64_t sub_1000526D8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_10004F728(a1);
  sub_10004F704();
  v6 = ccder_blob_decode_range();
  if (v6)
  {
    sub_10004F734(v6, v27, v7, v8, v9, v10, v11, v12, v24, v26, v27, v28, v29);
    if (!a3)
    {
      return sub_10004F718(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }

    v22 = v21 - v14;
    if (v22 == a4)
    {
      v13 = memcpy(a3, v14, v22);
      return sub_10004F718(v13, v14, v15, v16, v17, v18, v19, v20, v25);
    }
  }

  return 0;
}

uint64_t sub_10005274C(__int128 *a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v5 = *a1;
  result = sub_10004F740();
  if (result)
  {
    if (ccn_read_uint())
    {
      return 0;
    }

    else
    {
      *a1 = v7;
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1000527C8(void *a1, uint64_t a2, char a3)
{
  memset_s(a1, 0x10uLL, 0, 0x10uLL);
  if (a2 && *a2 && (v6 = *(a2 + 8)) != 0)
  {
    if (a3)
    {
      return 4294967285;
    }

    else
    {
      v8 = calloc(v6, 1uLL);
      if (v8)
      {
        *a1 = v8;
        v9 = *a2;
        v10 = *(a2 + 8);
        a1[1] = v10;
        memcpy(v8, v9, v10);
        return 0;
      }

      else
      {
        return 4294967279;
      }
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_10005285C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v54, 0, sizeof(v54));
  v53 = 32;
  v4 = *(a3 + 32);
  if ((v4 & 2) != 0)
  {
    v5 = 24;
  }

  else
  {
    v5 = 40;
  }

  if (*(a3 + 8))
  {
    goto LABEL_5;
  }

  if (*(a3 + 37) == 1)
  {
    if ((v4 & 0x2000) != 0)
    {
      sub_10004F694();
      fprintf(v35, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s sep managed vek cannot have flag_no_ephdm%s\n", "aks", v36, v45, v46, v47, v48, v49, *(&v49 + 1), ":", 616, &byte_10005C3F3, &byte_10005C3F3);
      v6 = 4294967257;
      goto LABEL_50;
    }

    *&v12 = __chkstk_darwin(a1);
    v51 = 0;
    v49 = v12;
    v50 = v12;
    LODWORD(v55) = 0;
    v6 = 4294967285;
    if (!sub_10005178C(0x28u, &v55) || v55 > 0x20)
    {
      goto LABEL_50;
    }

    if (a1)
    {
      v13 = *(a3 + 112);
      v49 = *(a3 + 96);
      v50 = v13;
      v51 = *(a3 + 128);
      if (*(a3 + 32))
      {
        sub_100050FB0();
        v20 = v19;
        if (v21)
        {
          v20 = sub_10004FFE4;
        }

        v22 = (v20)(0, &unk_10009B578, &v49, &v49);
        v6 = 0xFFFFFFFFLL;
        if (HIDWORD(a2) || (v22 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else if (HIDWORD(a2))
      {
        goto LABEL_55;
      }

      v18 = 0;
    }

    else
    {
      v17 = *(a3 + 72);
      v49 = *(a3 + 56);
      v50 = v17;
      v51 = *(a3 + 88);
      if (HIDWORD(a2))
      {
LABEL_55:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

      if ((*(a3 + 33) & 0x20) != 0)
      {
        v18 = sub_10004FFE8;
      }

      else
      {
        v18 = sub_10004FFE4;
      }
    }

    if (a1)
    {
      v23 = a2;
    }

    else
    {
      v23 = 0;
    }

    if (sub_100051720(a1, v23, 0xA6A6A6A6A6A6A6A6, v18, &v49, 0x28u, a4, &v53))
    {
      sub_10004F694();
      fprintf(v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s kek failed to unwrap vek; mix-n-match?%s\n", "aks", v38, v39, v40, v41, v42, v43, v44, ":", 634, &byte_10005C3F3, &byte_10005C3F3);
      v6 = 4294967294;
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a3 + 37))
  {
LABEL_5:
    v6 = 4294967284;
    goto LABEL_50;
  }

  if ((v4 & 0x1000) != 0)
  {
    v52 = 0;
    v6 = 4294967285;
    if (sub_1000517A0(v5, &v52) && v52 <= 0x20)
    {
      v14 = *(a3 + 72);
      v55 = *(a3 + 56);
      v56 = v14;
      v57 = *(a3 + 88);
      if (sub_100052D38(a3, v54))
      {
        goto LABEL_51;
      }

      v15 = v54;
      v16 = 32;
LABEL_45:
      if (!sub_100051720(v15, v16, 0xA6A6A6A6A6A6A6A6, 0, &v55, v5, a4, &v53))
      {
LABEL_46:
        if ((*(a3 + 32) & 2) == 0)
        {
LABEL_49:
          v6 = 0;
          goto LABEL_50;
        }

        if (v53 == 16)
        {
          v26 = ccsha256_di();
          v27 = (v26[1] + v26[2] + 19) & 0xFFFFFFFFFFFFFFF8;
          __chkstk_darwin(v26);
          bzero(&v52 - v28, v29);
          v55 = 0u;
          v56 = 0u;
          sub_100051040();
          ccdigest_init();
          sub_100051040();
          ccdigest_update();
          sub_100051040();
          ccdigest_update();
          v30 = v26[7];
          v31 = sub_100051040();
          v32(v31);
          v33 = v26[1] + v26[2];
          cc_clear();
          *(a4 + 16) = v55;
          sub_100050FD8(&v55);
          goto LABEL_49;
        }

LABEL_51:
        v6 = 0xFFFFFFFFLL;
        goto LABEL_50;
      }

LABEL_52:
      v6 = 4294967294;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_52;
    }

    LODWORD(v52) = 0;
    v6 = 4294967285;
    if (sub_10005178C(v5, &v52) && v52 <= 0x20)
    {
      v11 = *(a3 + 72);
      v55 = *(a3 + 56);
      v56 = v11;
      v57 = *(a3 + 88);
      if ((v4 & 1) == 0)
      {
        if (HIDWORD(a2))
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      v24 = sub_10004FFE8;
      if ((v4 & 0x2000) == 0)
      {
        v24 = sub_10004FFE4;
      }

      v25 = (v24)(0, &unk_10009B578, a3 + 56, &v55);
      v6 = 0xFFFFFFFFLL;
      if (!HIDWORD(a2) && (v25 & 1) != 0)
      {
LABEL_44:
        v15 = a1;
        v16 = a2;
        goto LABEL_45;
      }
    }
  }

LABEL_50:
  sub_100050FD8(v54);
  return v6;
}

uint64_t sub_100052D38(uint64_t a1, _OWORD *a2)
{
  bzero(v13, 0x88uLL);
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  if (*(a1 + 37))
  {
    v4 = 4294967284;
  }

  else
  {
    v14 = 32;
    *&v12[0] = *a1;
    ccsha256_di();
    if (cchkdf())
    {
      goto LABEL_10;
    }

    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_100050FB0();
    v6 = v5;
    if (v7)
    {
      v6 = sub_10004FFE4;
    }

    if (!(v6)(1, &unk_10009B578, &v10, &v10, 32))
    {
LABEL_10:
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
LABEL_8:
      v4 = 0;
      v8 = v11;
      *a2 = v10;
      a2[1] = v8;
    }
  }

  sub_100050FD8(&v10);
  sub_100050FD8(v12);
  return v4;
}

uint64_t sub_100052E70(char a1, int a2, uint64_t a3, uint64_t *a4, void *a5, size_t *a6, _DWORD *a7, unsigned __int8 *a8, unsigned __int8 *a9, void **a10)
{
  bzero(&v25, 0xB0uLL);
  v18 = 4294967285;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if (a7)
          {
            if (a8)
            {
              if (a9)
              {
                if (*a4)
                {
                  v19 = a4[1];
                  if (v19)
                  {
                    v20 = sub_100052354(*a4, *a4 + v19, &v25);
                    if (!v20)
                    {
                      uuid_copy(a8, v26);
                      uuid_copy(a9, v28);
                      v21 = v29;
                      *a7 = v27;
                      v22 = v21 & 0xFFFFFFF7;
                      if (a2)
                      {
                        v23 = 0;
                      }

                      else
                      {
                        v23 = 8;
                      }

                      v29 = v22 | v23;
                      v20 = sub_100053CB4(a3, &v25, a5, a6, a1, a10);
                    }

                    v18 = v20;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  sub_100051004(&v25);
  return v18;
}

uint64_t sub_100052FC0(uint64_t a1, void *a2, _DWORD *a3)
{
  bzero(v48, 0x118uLL);
  bzero(v45, 0xB0uLL);
  memset(v44, 0, sizeof(v44));
  if (!a2 || !*a2)
  {
    v5 = 4294967285;
    goto LABEL_13;
  }

  v5 = 4294967285;
  if (a3 && a2[1])
  {
    memset_s(a3, 0x58uLL, 0, 0x58uLL);
    v6 = sub_100051020();
    v5 = sub_100051C2C(v6, v7, v8, v9, v10, v11, v12, 1);
    if (v5 == -6)
    {
      a3[9] |= 0x2000000u;
      v13 = sub_100051020();
      v5 = sub_100051C2C(v13, v14, v15, v16, v17, v18, v19, 0);
    }

    if (v5)
    {
      sub_10004F694();
      v43 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode blob%s\n";
      goto LABEL_55;
    }

    *(a3 + 5) = *&v44[3];
    v20 = LOBYTE(v44[2]);
    if (!LOBYTE(v44[2]))
    {
      v24 = sub_100050FC4();
      if (!sub_100052174(v24, v25, v45, v26))
      {
LABEL_17:
        v30 = sub_100050FC4();
        v33 = sub_100052174(v30, v31, v45, v32);
        if (!v33)
        {
          *a3 = 2;
          a3[10] = v45[0];
          *(a3 + 65) = v46;
          goto LABEL_29;
        }

        v5 = v33;
        sub_10004F694();
        v43 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode kek%s\n";
LABEL_55:
        fprintf(v41, v43, "aks", v42);
        goto LABEL_13;
      }

      v27 = sub_100050FC4();
      if (!sub_100051EFC(v27, v28, v48, v29))
      {
LABEL_19:
        v34 = sub_100050FC4();
        v37 = sub_100051EFC(v34, v35, v48, v36);
        if (v37)
        {
          v5 = v37;
          sub_10004F694();
          v43 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to decode vek%s\n";
          goto LABEL_55;
        }

        *a3 = 1;
        v38 = v51;
        *(a3 + 65) = v51;
        a3[10] = v49;
        if (v38)
        {
          if (v38 != 1)
          {
            goto LABEL_29;
          }

          v39 = v52;
          if (v52)
          {
            a3[9] |= 8u;
          }

          if ((v39 & 2) == 0)
          {
LABEL_29:
            if ((v44[0] & 0x40) != 0)
            {
              a3[9] |= 0x80u;
              if ((v44[0] & 0x20) == 0)
              {
LABEL_31:
                if ((v44[0] & 0x800) == 0)
                {
                  goto LABEL_32;
                }

                goto LABEL_44;
              }
            }

            else if ((v44[0] & 0x20) == 0)
            {
              goto LABEL_31;
            }

            a3[9] |= 0x40u;
            if ((v44[0] & 0x800) == 0)
            {
LABEL_32:
              if ((v44[0] & 2) == 0)
              {
                goto LABEL_33;
              }

              goto LABEL_45;
            }

LABEL_44:
            a3[9] |= 0x1000000u;
            if ((v44[0] & 2) == 0)
            {
LABEL_33:
              if ((v44[0] & 1) == 0)
              {
                goto LABEL_34;
              }

              goto LABEL_46;
            }

LABEL_45:
            a3[9] |= 0x10u;
            if ((v44[0] & 1) == 0)
            {
LABEL_34:
              if ((v44[0] & 8) == 0)
              {
                goto LABEL_35;
              }

              goto LABEL_47;
            }

LABEL_46:
            a3[9] |= 1u;
            if ((v44[0] & 8) == 0)
            {
LABEL_35:
              if ((v44[0] & 0x80) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_48;
            }

LABEL_47:
            a3[9] |= 0x20u;
            if ((v44[0] & 0x80) == 0)
            {
LABEL_36:
              if ((v44[0] & 0x10) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_49;
            }

LABEL_48:
            a3[9] |= 0x400u;
            *(a3 + 9) = v47;
            if ((v44[0] & 0x10) == 0)
            {
LABEL_37:
              if ((v44[0] & 4) == 0)
              {
                goto LABEL_38;
              }

              goto LABEL_50;
            }

LABEL_49:
            *(a3 + 64) |= 1u;
            if ((v44[0] & 4) == 0)
            {
LABEL_38:
              if ((v44[0] & 0x400) == 0)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }

LABEL_50:
            *(a3 + 64) |= 2u;
            if ((v44[0] & 0x400) == 0)
            {
LABEL_40:
              v5 = 0;
              if ((v44[0] & 0x200) != 0)
              {
                a3[9] |= 0x80000u;
              }

              goto LABEL_13;
            }

LABEL_39:
            a3[9] |= 0x100000u;
            goto LABEL_40;
          }

          v40 = a3[9] | 4;
        }

        else
        {
          if ((v50 & 0x10) == 0)
          {
            goto LABEL_29;
          }

          v40 = a3[9] | 0x8000000;
        }

        a3[9] = v40;
        goto LABEL_29;
      }

      v20 = 0;
    }

    if (v20 != 1)
    {
      if (v20 != 2)
      {
        sub_100050FF4();
        v5 = 0xFFFFFFFFLL;
        fprintf(v21, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s unknown blob type %i%s\n", "aks", v22, 0xFFFFFFFFLL);
        goto LABEL_13;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

LABEL_13:
  sub_100051004(v45);
  return v5;
}

uint64_t sub_1000533EC(const unsigned __int8 *a1, int a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  memset(v18, 0, sizeof(v18));
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  bzero(a5, 0x118uLL);
  a5[36] = 1;
  *(a5 + 8) = a2 & 0xFFFFFFFD;
  uuid_copy(a5 + 16, a1);
  sub_10004F818(a5, 8u);
  sub_10004F818(a6, 0x20u);
  if (*(a5 + 1) || a5[37])
  {
    v12 = 4294967284;
    goto LABEL_4;
  }

  if (a3)
  {
    if (!sub_10005419C(a5, a3, a4, a6))
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v15 = 40;
  v12 = 4294967285;
  if (sub_100054640(0x20u, &v16) && v16 <= 0x28)
  {
    v14 = sub_100052D38(a5, v17);
    if (v14)
    {
      v12 = v14;
      goto LABEL_4;
    }

    if (!sub_10005136C(v17, 0x20u, 0xA6A6A6A6A6A6A6A6, 0, a6, 0x20u, a5 + 7, &v15))
    {
      *(a5 + 8) |= 0x1000u;
LABEL_11:
      v12 = 0;
      goto LABEL_4;
    }

LABEL_13:
    v12 = 0xFFFFFFFFLL;
  }

LABEL_4:
  sub_100050FD8(v17);
  sub_100050FD8(v18);
  return v12;
}

uint64_t sub_100053584(const unsigned __int8 *a1, const unsigned __int8 *a2, int a3, uint64_t a4, __int128 *a5, void *a6, char a7)
{
  memset(v40, 0, sizeof(v40));
  __n = 0;
  v37 = 32;
  v38 = 0u;
  v39 = 0u;
  __s = 0;
  v34 = 0;
  if (!a2)
  {
    v15 = 0xFFFFFFFFLL;
    goto LABEL_15;
  }

  if (a6)
  {
    v12 = sub_1000527C8(&__s, a4, (a7 & 4) != 0);
    if (!v12)
    {
      if (a5)
      {
        v13 = a5[1];
        v38 = *a5;
        v39 = v13;
      }

      else
      {
        sub_10004F818(&v38, 0x20u);
      }

      bzero(a6, 0xB0uLL);
      *(a6 + 6) = (8 * a3) & 0x10 | a3 & 0xFFFFF9BD;
      v14 = a6 + 3;
      *(a6 + 28) = 2;
      if (uuid_compare(byte_100077220, a1))
      {
        *(a6 + 30) = *a1;
      }

      else
      {
        v17 = 16;
        while (1)
        {
          uuid_generate(a6 + 30);
          if (*(a6 + 30) || *(a6 + 31))
          {
            break;
          }

          if (!--v17)
          {
            sub_10004F694();
            fprintf(v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s failed to generate valid kek group uuid after 16 attempts%s\n", "aks", v19, v28, v29, v30, v31, v32, v33, ":", 4364, &byte_10005C3F3, &byte_10005C3F3);
            v15 = 4294967286;
            goto LABEL_13;
          }
        }
      }

      uuid_copy(a6 + 8, a2);
      sub_100051880(a6);
      if (*a6)
      {
        goto LABEL_12;
      }

      if (*(a6 + 29) != 1)
      {
        if (*(a6 + 29))
        {
LABEL_12:
          v15 = 4294967284;
          goto LABEL_13;
        }

        sub_10004F818((a6 + 12), 0x10u);
        memset(v41, 0, sizeof(v41));
        v20 = mach_continuous_time();
        ccsha256_di();
        if (ccpbkdf2_hmac())
        {
          v23 = 0;
        }

        else
        {
          v21 = mach_continuous_time();
          sub_100050FD8(v41);
          v22 = sub_10004F9B4(v21 - v20);
          v23 = 100000;
          if (v22)
          {
            v23 = 0x174876E800 / v22;
          }
        }

        if (v23 <= 0x186A0)
        {
          v23 = 100000;
        }

        a6[11] = v23;
      }

      v12 = sub_100053E40(a6, __s, __n, v40, &v37);
      if (!v12)
      {
        LODWORD(v41[0]) = 40;
        v15 = 4294967285;
        if (sub_100054640(0x20u, &v34) && v34 <= 0x28)
        {
          if (sub_10005136C(v40, v37, 0xA6A6A6A6A6A6A6A6, 0, &v38, 0x20u, a6 + 6, v41))
          {
            goto LABEL_41;
          }

          if ((*v14 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_100050FB0();
          v25 = v24;
          if (v26)
          {
            v25 = sub_10004FFE4;
          }

          if (((v25)(1, &unk_10009B578, a6 + 6, a6 + 6, 32) & 1) == 0)
          {
LABEL_41:
            v15 = 0xFFFFFFFFLL;
          }

          else
          {
LABEL_35:
            v27 = sub_10004F68C();
            if (v27 <= 0x15)
            {
              bzero(v14 + v27, 22 - v27);
            }

            v15 = 0;
          }
        }

        goto LABEL_13;
      }
    }

    v15 = v12;
  }

  else
  {
    v15 = 4294967285;
  }

LABEL_13:
  if (__s)
  {
    memset_s(__s, __n, 0, __n);
    free(__s);
  }

LABEL_15:
  sub_100050FD8(v40);
  sub_100050FD8(&v38);
  return v15;
}

uint64_t sub_100053910(void *a1, uint64_t a2, uint64_t *a3, const unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  __n = 0;
  v37 = 32;
  v12 = *a1 & 0x40;
  bzero(v41, 0xB0uLL);
  bzero(v39, 0xB0uLL);
  v13 = sub_100052360(0, 2, &__n);
  if (v13)
  {
    goto LABEL_33;
  }

  if (!__n)
  {
    v15 = 0;
    v14 = 0;
    v16 = 4294967286;
    goto LABEL_22;
  }

  v14 = 0;
  v15 = 0;
  v16 = 4294967285;
  if (a4 && a5 && a6)
  {
    if (!*a6)
    {
      goto LABEL_32;
    }

    v17 = *(a6 + 8);
    if (!v17)
    {
      goto LABEL_32;
    }

    v14 = 0;
    v15 = 0;
    v16 = 4294967285;
    if (a3 && __n <= v17)
    {
      v18 = *a3;
      if (*a3)
      {
        v19 = a3[1];
        if (v19)
        {
          if (v12)
          {
            memset(dst, 0, sizeof(dst));
            if (v19 == 16)
            {
              uuid_copy(dst, v18);
              if (uuid_compare(dst, a4))
              {
                v16 = 4294967284;
              }

              else
              {
                sub_100050FF4();
                v16 = 0xFFFFFFFFLL;
                fprintf(v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s user uuid unexpectedly match new kek uuid%s\n", "aks", v27, -1, v28, v29, v30, v31, v32, v33, 4762, &byte_10005C3F3, &byte_10005C3F3);
              }
            }

            else
            {
              v16 = 4294967285;
            }

            goto LABEL_20;
          }

          v13 = sub_100052354(*a3, &v18[v19], v41);
          if (!v13)
          {
            if ((v42 & 0x80) != 0 && v44)
            {
              v15 = 0;
              v14 = 0;
              v16 = 4294967263;
              goto LABEL_22;
            }

            v13 = sub_100053CB4(a2, v41, v46, &v37, *a1, 0);
            if (!v13)
            {
              v15 = v42;
              v21 = sub_100053584(v43, a4, v42, a5, v46, v39, *a1);
              if (!v21)
              {
                v22 = calloc(__n, 1uLL);
                v14 = v22;
                if (v22)
                {
                  v34 = v22;
                  v35 = &v22[__n];
                  if (sub_100051FC0(&v34, v39))
                  {
                    v23 = v35;
                    v24 = v34;
                    v25 = &v14[__n] - v35;
                    *(a6 + 8) = v25;
                    memcpy(*a6, &v23[v14 - v24], v25);
                    v16 = 0;
                  }

                  else
                  {
                    v16 = 4294967273;
                  }
                }

                else
                {
                  v16 = 4294967279;
                }

                goto LABEL_22;
              }

              v16 = v21;
LABEL_21:
              v14 = 0;
              goto LABEL_22;
            }
          }

LABEL_33:
          v16 = v13;
LABEL_20:
          v15 = 0;
          goto LABEL_21;
        }
      }

LABEL_32:
      v15 = 0;
      v14 = 0;
      v16 = 4294967285;
    }
  }

LABEL_22:
  if (byte_10009B570)
  {
    fprintf(__stdoutp, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s %sresult: %d; oti: %d; passcode_change: %d; cf: 0x%x; of: 0x%x; nf: 0x%x%s\n", "aks", &byte_10005C3F3, -1, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, &byte_10005C3F3, "fv_rewrap_kek", ":", 4804, &byte_10005C3F3, &byte_10005C3F3, v16, v12 >> 6, 0, v15, v15, v40, &byte_10005C3F3);
  }

  sub_100051004(v41);
  sub_100051004(v39);
  if (v14)
  {
    memset_s(v14, __n, 0, __n);
    free(v14);
  }

  sub_100050FD8(v46);
  sub_100050FD8(v45);
  return v16;
}

uint64_t sub_100053CB4(uint64_t a1, uint64_t a2, void *a3, size_t *a4, char a5, void **a6)
{
  memset(v20, 0, sizeof(v20));
  *&__n[1] = 32;
  __src = 0u;
  v19 = 0u;
  __n[0] = 32;
  __s = 0;
  __smax = 0;
  v6 = 4294967285;
  if (a1 && a2)
  {
    v11 = sub_1000527C8(&__s, a1, (a5 & 4) != 0);
    if (v11 || (v11 = sub_100053E40(a2, __s, __smax, v20, &__n[1]), v11) || (v11 = sub_100053FE0(a2, v20, __n[1], &__src, __n), v11))
    {
      v6 = v11;
    }

    else
    {
      if (a3 && a4)
      {
        if ((*(a2 + 120) & 1) != 0 && !sub_10004F9F4(&v19, 16))
        {
          *(a2 + 24) |= 0x10u;
        }

        if ((*(a2 + 24) & 0x10) != 0)
        {
          v12 = 16;
          __n[0] = 16;
        }

        else
        {
          v12 = __n[0];
        }

        memcpy(a3, &__src, v12);
        *a4 = v12;
      }

      v6 = 0;
      if (a6)
      {
        v13 = __smax;
        *a6 = __s;
        a6[1] = v13;
        __s = 0;
        __smax = 0;
      }
    }
  }

  sub_100050FD8(v20);
  sub_100050FD8(&__src);
  if (__s)
  {
    memset_s(__s, __smax, 0, __smax);
    free(__s);
  }

  return v6;
}

uint64_t sub_100053E40(uint64_t a1, void *__src, size_t __n, void *a4, size_t *a5)
{
  memset(v19, 0, sizeof(v19));
  if (*(a1 + 28) != 2 || *a5 != 32)
  {
    v16 = 4294967285;
    goto LABEL_20;
  }

  v10 = *(a1 + 24);
  if ((v10 & 2) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 32;
  }

  if (v10)
  {
    ccsha256_di();
    sub_10005104C();
    if (j__ccpbkdf2_hmac())
    {
      goto LABEL_16;
    }

    v12 = *(a1 + 24);
    sub_100050FB0();
    v14 = v13;
    if (v15)
    {
      v14 = sub_10004FFE4;
    }

    if (!(v14)(1, &unk_10009B578, v19, v19, v11))
    {
      goto LABEL_22;
    }
  }

  if (!*a1)
  {
    if (*(a1 + 29) != 1)
    {
      if (*(a1 + 29))
      {
        goto LABEL_12;
      }

      ccsha256_di();
      v17 = *(a1 + 88);
      sub_10005104C();
      if (j__ccpbkdf2_hmac())
      {
LABEL_16:
        v16 = 4294967274;
        goto LABEL_20;
      }

LABEL_19:
      memcpy(a4, v19, v11);
      v16 = 0;
      *a5 = v11;
      goto LABEL_20;
    }

    if (__n <= 0x20)
    {
      memcpy(v19, __src, __n);
      v11 = __n;
      goto LABEL_19;
    }

LABEL_22:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

LABEL_12:
  v16 = 4294967284;
LABEL_20:
  sub_100050FD8(v19);
  return v16;
}

uint64_t sub_100053FE0(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  if (*a5 != 32)
  {
    return 4294967285;
  }

  if (*a1 || *(a1 + 29) > 1u)
  {
    return 4294967284;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    *a5 = 16;
    v10 = 24;
  }

  else
  {
    v10 = 40;
  }

  v12 = v10;
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  HIDWORD(v20) = 0;
  if (!sub_10005178C(v13, &v20 + 1))
  {
    return 4294967285;
  }

  v16 = HIDWORD(v20);
  if (HIDWORD(v20) > *a5)
  {
    return 4294967285;
  }

  memcpy(v15, (a1 + 48), v12);
  if (*(a1 + 24))
  {
    sub_100050FB0();
    v18 = v17;
    if (v19)
    {
      v18 = sub_10004FFE4;
    }

    if (!(v18)(0, &unk_10009B578, v15, v15, v16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = sub_100051720(a2, a3, 0xA6A6A6A6A6A6A6A6, 0, v15, v12, a4, a5);
  if (result)
  {
    return 4294967291;
  }

  return result;
}

uint64_t sub_10005419C(uint64_t a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4)
{
  v18 = 0;
  if (!sub_10004F9F4(a2, 32))
  {
    sub_10004F694();
    fprintf(v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null KEK, file radar%s\n", "aks", v15);
    return 4294967286;
  }

  if (!sub_10004F9F4(a4, 32))
  {
    sub_10004F694();
    fprintf(v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Internal Error: Null VEK, file radar%s\n", "aks", v17);
    return 4294967286;
  }

  if (*(a1 + 8))
  {
    return 4294967284;
  }

  v9 = sub_100054640(0x20u, &v18);
  result = 4294967285;
  if (v9 && v18 <= 0x28)
  {
    if (!sub_10005136C(a2, a3, 0xA6A6A6A6A6A6A6A6, 0, a4, 0x20u, (a1 + 56), &v18))
    {
      v10 = *(a1 + 32);
      if ((v10 & 1) == 0)
      {
LABEL_13:
        result = 0;
        *(a1 + 32) = v10 & 0xFFFFEFFF;
        return result;
      }

      sub_100050FB0();
      v12 = v11;
      if (v13)
      {
        v12 = sub_10004FFE4;
      }

      if ((v12)(1, &unk_10009B578, a1 + 56, a1 + 56, 32))
      {
        v10 = *(a1 + 32);
        goto LABEL_13;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100054354(uint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_100051EFC(*a1, *a1 + v4, v6, 1);
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1000543F4(uint64_t *a1, _DWORD *a2)
{
  bzero(v6, 0x118uLL);
  if (a1 && *a1 && (v4 = a1[1]) != 0)
  {
    result = sub_100051FB4(*a1, *a1 + v4, v6);
    if (!result)
    {
      if (v6[37] == 1)
      {
        result = 0;
      }

      else
      {
        result = 4294967285;
      }
    }
  }

  else
  {
    result = 4294967285;
  }

  *a2 = result;
  return result;
}

BOOL sub_100054640(unsigned int a1, _DWORD *a2)
{
  v2 = a1 + 15;
  v3 = v2 << 31 >> 31;
  v4 = v3 == v2;
  v5 = v3 != v2;
  if (v4)
  {
    *a2 = v2 & 0xFFFFFFF8;
  }

  return !v5;
}