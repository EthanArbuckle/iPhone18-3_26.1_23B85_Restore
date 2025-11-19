BOOL sub_298CB5CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[0] = &unk_298D34624;
  v32[1] = 942;
  v32[2] = &unk_298D36394;
  v32[3] = 1111;
  v32[4] = &unk_298D397A8;
  v32[5] = 7172;
  v32[6] = &unk_298D477C8;
  v32[7] = 17957;
  v32[8] = sub_298CB6094;
  v10 = sub_298B46F70(a1, a2, a4, v32);
  v11 = v10;
  if (v10)
  {
    for (i = 0; ; ++i)
    {
      v13 = *(v10 + i);
      v14 = v13 > 0x24;
      v15 = (1 << v13) & 0x1100000201;
      if (!v14 && v15 != 0)
      {
        break;
      }
    }

    while (1)
    {
      v18 = *(a5 + 32);
      if (v18 < *(a5 + 24))
      {
        goto LABEL_15;
      }

      v17 = *(a5 + 16);
      if (v17)
      {
        break;
      }

      if (!*(a5 + 56))
      {
        v33 = 9;
        sub_298B9BB84(a5);
        v19 = *(a5 + 32);
        if (*(a5 + 24) - v19 >= i)
        {
          goto LABEL_18;
        }

LABEL_16:
        sub_298B9BCEC(a5, v11, i);
        goto LABEL_20;
      }

      sub_298B9AE98(a5);
    }

    *(a5 + 32) = v17;
    sub_298B9BB84(a5);
    v18 = *(a5 + 32);
LABEL_15:
    *(a5 + 32) = v18 + 1;
    *v18 = 9;
    v19 = *(a5 + 32);
    if (*(a5 + 24) - v19 < i)
    {
      goto LABEL_16;
    }

LABEL_18:
    if (i)
    {
      memcpy(v19, v11, i);
      *(a5 + 32) += i;
    }

LABEL_20:
    v20 = v11[i];
    if (v11[i])
    {
      if (v20 == 9 || v20 == 32)
      {
        while (1)
        {
          v22 = *(a5 + 32);
          if (v22 < *(a5 + 24))
          {
            goto LABEL_30;
          }

          v21 = *(a5 + 16);
          if (v21)
          {
            *(a5 + 32) = v21;
            sub_298B9BB84(a5);
            v22 = *(a5 + 32);
LABEL_30:
            *(a5 + 32) = v22 + 1;
            *v22 = 9;
            goto LABEL_31;
          }

          if (!*(a5 + 56))
          {
            break;
          }

          sub_298B9AE98(a5);
        }

        v33 = 9;
        sub_298B9BB84(a5);
LABEL_31:
        v20 = v11[++i];
      }

      do
      {
        v25 = i + 1;
        if (v20 == 36)
        {
          v26 = v11[v25];
          if (v26 == -1)
          {
            v25 = i + 4;
            (*(*a1 + 64))(a1, a2, a3, (v11[i + 2] - 1), (v11[i + 3] - 1), a4, a5);
          }

          else
          {
            v25 = i + 2;
            v27 = v26 - 1;
            v28 = *(a2 + 16);
            v29 = (v28 + 16 * (v26 - 1));
            v30 = *v29;
            if (v30 == 2)
            {
              sub_298CABA58(a1, v28, v27, a5);
            }

            else if (v30 == 1)
            {
              (*(*a1 + 40))(a1, a5, *(v29 + 2));
            }

            else
            {
              sub_298B439C4(v29[1], a5, *(a1 + 16), 0);
            }
          }
        }

        else
        {
          while (1)
          {
            v23 = *(a5 + 32);
            if (v23 < *(a5 + 24))
            {
              goto LABEL_37;
            }

            v24 = *(a5 + 16);
            if (v24)
            {
              *(a5 + 32) = v24;
              sub_298B9BB84(a5);
              v23 = *(a5 + 32);
LABEL_37:
              *(a5 + 32) = v23 + 1;
              *v23 = v20;
              goto LABEL_38;
            }

            if (!*(a5 + 56))
            {
              break;
            }

            sub_298B9AE98(a5);
          }

          v33 = v20;
          sub_298B9BB84(a5);
        }

LABEL_38:
        v20 = v11[v25];
        i = v25;
      }

      while (v11[v25]);
    }
  }

  return v11 != 0;
}

uint64_t sub_298CB6094(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v52 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        if (v3 != 2)
        {
          goto LABEL_71;
        }

        v12 = *(a1 + 2);
        v13 = __clz(((v12 >> 6) & 0x40 | v12 & 0x3F) ^ 0x3F);
        v14 = 0x80000000 >> v13;
        v15 = (v12 >> 6) & ((0x80000000 >> v13) - 1);
        v16 = ~(-1 << ((((0x80000000 >> v13) - 1) & v12 & 0x3F) + 1));
        for (i = v15 & 0x3F; i; --i)
        {
          v16 = ((v16 & 1) << ((0x80000000 >> v13) - 1)) | (v16 >> 1);
        }

        if (v13 != 25)
        {
          do
          {
            v16 |= v16 << v14;
            v14 *= 2;
          }

          while (v14 != 64);
        }

        v18 = v16 >> 8;
        v19 = HIDWORD(v16);
        v20 = v16 >> 24;
      }

      else
      {
        if (v3 != 2)
        {
          goto LABEL_71;
        }

        v39 = *(a1 + 2);
        v40 = __clz(((v39 >> 6) & 0x40 | v39 & 0x3F) ^ 0x3F);
        v41 = 0x80000000 >> v40;
        v42 = (v39 >> 6) & ((0x80000000 >> v40) - 1);
        v16 = ~(-1 << ((((0x80000000 >> v40) - 1) & v39 & 0x3F) + 1));
        for (j = v42 & 0x3F; j; --j)
        {
          v16 = ((v16 & 1) << ((0x80000000 >> v40) - 1)) | (v16 >> 1);
        }

        if (v40 != 25)
        {
          do
          {
            v16 |= v16 << v41;
            v41 *= 2;
          }

          while (v41 != 64);
        }

        v18 = v16 >> 16;
        v19 = HIWORD(v16);
        v20 = WORD2(v16);
      }

      v11 = v18 == v16 && v19 == v20;
      goto LABEL_59;
    }

    if (a3 == 3)
    {
      if (v3 == 2)
      {
        v21 = *(a1 + 2);
        v22 = __clz(((v21 >> 6) & 0x40 | v21 & 0x3F) ^ 0x3F);
        v23 = 0x80000000 >> v22;
        v24 = (v21 >> 6) & ((0x80000000 >> v22) - 1);
        v25 = ~(-1 << ((((0x80000000 >> v22) - 1) & v21 & 0x3F) + 1));
        for (k = v24 & 0x3F; k; --k)
        {
          v25 = ((v25 & 1) << ((0x80000000 >> v22) - 1)) | (v25 >> 1);
        }

        if (v22 != 25)
        {
          do
          {
            v25 |= v25 << v23;
            v23 *= 2;
          }

          while (v23 != 64);
        }

        v11 = HIDWORD(v25) == v25;
        goto LABEL_59;
      }
    }

    else if (v3 == 2)
    {
      result = (*(a1 + 1) - 16) < 0xFFFFFFFFFFFFFFFELL;
LABEL_72:
      v51 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_71:
    result = 0;
    goto LABEL_72;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (v3 == 2)
      {
        v27 = *(a1 + 2);
        v28 = __clz(((v27 >> 6) & 0x40 | v27 & 0x3F) ^ 0x3F);
        v29 = 0x80000000 >> v28;
        v30 = (0x80000000 >> v28) - 1;
        v31 = ~(-1 << ((((0x80000000 >> v28) - 1) & v27 & 0x3F) + 1));
        for (m = (v27 >> 6) & v30 & 0x3F; m; --m)
        {
          v31 = ((v31 & 1) << v30) | (v31 >> 1);
        }

        if (v28 != 25)
        {
          do
          {
            v31 |= v31 << v29;
            v29 *= 2;
          }

          while (v29 != 64);
        }

        if ((v31 >> 16) == v31 && HIWORD(v31) == WORD2(v31))
        {
          goto LABEL_68;
        }
      }
    }

    else if (v3 == 2)
    {
      v45 = *(a1 + 2);
      v46 = __clz(((v45 >> 6) & 0x40 | v45 & 0x3F) ^ 0x3F);
      v47 = 0x80000000 >> v46;
      v48 = (0x80000000 >> v46) - 1;
      v31 = ~(-1 << ((((0x80000000 >> v46) - 1) & v45 & 0x3F) + 1));
      for (n = (v45 >> 6) & v48 & 0x3F; n; --n)
      {
        v31 = ((v31 & 1) << v48) | (v31 >> 1);
      }

      if (v46 != 25)
      {
        do
        {
          v31 |= v31 << v47;
          v47 *= 2;
        }

        while (v47 != 64);
      }

      if (HIDWORD(v31) == v31)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_71;
  }

  if (a3 != 7)
  {
    if (a3 == 8)
    {
      if (v3 == 2)
      {
        v4 = a1[8] ^ 0x20;
        v5 = &unk_298EA2FF8;
        v6 = 3;
        do
        {
          v7 = v6 >> 1;
          v8 = &v5[8 * (v6 >> 1)];
          v10 = *v8;
          v9 = v8 + 8;
          v6 += ~(v6 >> 1);
          if (v10 < v4)
          {
            v5 = v9;
          }

          else
          {
            v6 = v7;
          }
        }

        while (v6);
        if (v5 != &unk_298EA3010)
        {
          v11 = *v5 == v4;
          goto LABEL_59;
        }
      }
    }

    else if (v3 == 2)
    {
      v11 = a1[8] == 17;
LABEL_59:
      result = v11;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v3 != 2)
  {
    goto LABEL_71;
  }

  v34 = *(a1 + 2);
  v35 = __clz(((v34 >> 6) & 0x40 | v34 & 0x3F) ^ 0x3F);
  v36 = 0x80000000 >> v35;
  v37 = (0x80000000 >> v35) - 1;
  v31 = ~(-1 << ((((0x80000000 >> v35) - 1) & v34 & 0x3F) + 1));
  for (ii = (v34 >> 6) & v37 & 0x3F; ii; --ii)
  {
    v31 = ((v31 & 1) << v37) | (v31 >> 1);
  }

  if (v35 != 25)
  {
    do
    {
      v31 |= v31 << v36;
      v36 *= 2;
    }

    while (v36 != 64);
  }

LABEL_68:
  v50 = *MEMORY[0x29EDCA608];

  return sub_298CC5C4C(v31);
}

void sub_298CB6554(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, void *a7)
{
  switch(a5)
  {
    case 1:
      v48 = *(a2 + 16);

      sub_298CAF0D0(a1, v48, a4, a7);
      return;
    case 2:
      v44 = *(a2 + 16);

      sub_298CB5124(a1, v44, a4, a7);
      return;
    case 3:
      v45 = *(a2 + 16);
      v46 = a1[49];
      v47 = a1[48];

      sub_298CB4F18(v47, v46, v45, a4, a7);
      return;
    case 4:
      v30 = *(a2 + 16);
      v31 = a1[49];
      v32 = a1[48];

      sub_298CAF308(v32, v31, v30, a4, a7);
      return;
    case 5:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v60 = v14;
      v61 = v14[4];
      if (v61 < v14[3])
      {
        goto LABEL_102;
      }

      v62 = v14[2];
      if (v62)
      {
        goto LABEL_101;
      }

      do
      {
        if (!*(v60 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v60 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_103;
          }

          goto LABEL_239;
        }

        sub_298B9AE98(v14);
        v61 = v14[4];
        v60 = v14;
        if (v61 < v14[3])
        {
          goto LABEL_102;
        }

        v62 = v14[2];
      }

      while (!v62);
LABEL_101:
      v60[4] = v62;
      sub_298B9BB84(v60);
      v60 = v14;
      v61 = v14[4];
LABEL_102:
      v60[4] = v61 + 1;
      *v61 = 46;
      v18 = v60[4];
      if (v18 < v60[3])
      {
LABEL_103:
        v60[4] = v18 + 1;
        goto LABEL_242;
      }

LABEL_239:
      v109 = v60[2];
      if (v109)
      {
LABEL_240:
        v60[4] = v109;
        sub_298B9BB84(v60);
        v18 = v14[4];
LABEL_241:
        v14[4] = v18 + 1;
LABEL_242:
        v106 = 98;
        goto LABEL_252;
      }

      while (*(v60 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_241;
        }

        v60 = v14;
        v109 = v14[2];
        if (v109)
        {
          goto LABEL_240;
        }
      }

      goto LABEL_278;
    case 6:
    case 54:
      v7 = *(*(a2 + 16) + 16 * a4 + 8);
      goto LABEL_152;
    case 7:
      v74 = *(a2 + 16);
      v75 = a1[49];
      v76 = a1[48];

      sub_298CB7B6C(v76, v75, v74, a4, a7);
      return;
    case 8:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v38 = v14;
      v39 = v14[4];
      if (v39 < v14[3])
      {
        goto LABEL_55;
      }

      v40 = v14[2];
      if (v40)
      {
        goto LABEL_54;
      }

      do
      {
        if (!*(v38 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v38 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_56;
          }

          goto LABEL_230;
        }

        sub_298B9AE98(v14);
        v39 = v14[4];
        v38 = v14;
        if (v39 < v14[3])
        {
          goto LABEL_55;
        }

        v40 = v14[2];
      }

      while (!v40);
LABEL_54:
      v38[4] = v40;
      sub_298B9BB84(v38);
      v38 = v14;
      v39 = v14[4];
LABEL_55:
      v38[4] = v39 + 1;
      *v39 = 46;
      v18 = v38[4];
      if (v18 < v38[3])
      {
LABEL_56:
        v38[4] = v18 + 1;
LABEL_233:
        v106 = 104;
        goto LABEL_252;
      }

LABEL_230:
      v108 = v38[2];
      if (v108)
      {
LABEL_231:
        v38[4] = v108;
        sub_298B9BB84(v38);
        v18 = v14[4];
LABEL_232:
        v14[4] = v18 + 1;
        goto LABEL_233;
      }

      while (*(v38 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_232;
        }

        v38 = v14;
        v108 = v14[2];
        if (v108)
        {
          goto LABEL_231;
        }
      }

      goto LABEL_278;
    case 9:
      v71 = *(a2 + 16);
      v72 = a1[49];
      v73 = a1[48];

      sub_298CB7D3C(v73, v72, v71, a4, a7);
      return;
    case 10:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v24 = v14;
      v25 = v14[4];
      if (v25 < v14[3])
      {
        goto LABEL_41;
      }

      v26 = v14[2];
      if (v26)
      {
        goto LABEL_40;
      }

      do
      {
        if (!*(v24 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v24 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_42;
          }

          goto LABEL_221;
        }

        sub_298B9AE98(v14);
        v25 = v14[4];
        v24 = v14;
        if (v25 < v14[3])
        {
          goto LABEL_41;
        }

        v26 = v14[2];
      }

      while (!v26);
LABEL_40:
      v24[4] = v26;
      sub_298B9BB84(v24);
      v24 = v14;
      v25 = v14[4];
LABEL_41:
      v24[4] = v25 + 1;
      *v25 = 46;
      v18 = v24[4];
      if (v18 < v24[3])
      {
LABEL_42:
        v24[4] = v18 + 1;
LABEL_224:
        v106 = 115;
        goto LABEL_252;
      }

LABEL_221:
      v107 = v24[2];
      if (v107)
      {
LABEL_222:
        v24[4] = v107;
        sub_298B9BB84(v24);
        v18 = v14[4];
LABEL_223:
        v14[4] = v18 + 1;
        goto LABEL_224;
      }

      while (*(v24 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_223;
        }

        v24 = v14;
        v107 = v14[2];
        if (v107)
        {
          goto LABEL_222;
        }
      }

      goto LABEL_278;
    case 11:
      v33 = *(*(a2 + 16) + 16 * a4 + 8);
      sub_298B47440(&v111, a7, 1, a1[48], a1[49]);
      v34 = byte_298D34367[v33 - 1];
      v35 = v111.__r_.__value_.__r.__words[0];
      v36 = strlen(&aV10[v34]);
      v37 = *(v111.__r_.__value_.__r.__words[0] + 32);
      if (v36 <= *(v111.__r_.__value_.__r.__words[0] + 24) - v37)
      {
        if (v36)
        {
          memcpy(v37, &aV10[v34], v36);
          *(v35 + 32) += v36;
        }
      }

      else
      {
        sub_298B9BCEC(v111.__r_.__value_.__l.__data_, &aV10[v34], v36);
      }

      sub_298B47608(&v111);
      return;
    case 12:
      v59 = *(a2 + 16);

      sub_298CABA58(a1, v59, a4, a7);
      return;
    case 13:
      v19 = *(a2 + 16);

      sub_298CAE6A0(a1, v19, a4, a7);
      return;
    case 14:

      sub_298CAF4D8(a1, a2, a4, a7);
      return;
    case 15:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v15 = v14;
      v16 = v14[4];
      if (v16 < v14[3])
      {
        goto LABEL_25;
      }

      v17 = v14[2];
      if (v17)
      {
        goto LABEL_24;
      }

      do
      {
        if (!*(v15 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v15 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_26;
          }

          goto LABEL_212;
        }

        sub_298B9AE98(v14);
        v16 = v14[4];
        v15 = v14;
        if (v16 < v14[3])
        {
          goto LABEL_25;
        }

        v17 = v14[2];
      }

      while (!v17);
LABEL_24:
      v15[4] = v17;
      sub_298B9BB84(v15);
      v15 = v14;
      v16 = v14[4];
LABEL_25:
      v15[4] = v16 + 1;
      *v16 = 46;
      v18 = v15[4];
      if (v18 < v15[3])
      {
LABEL_26:
        v15[4] = v18 + 1;
LABEL_215:
        v106 = 100;
        goto LABEL_252;
      }

LABEL_212:
      v105 = v15[2];
      if (v105)
      {
LABEL_213:
        v15[4] = v105;
        sub_298B9BB84(v15);
        v18 = v14[4];
LABEL_214:
        v14[4] = v18 + 1;
        goto LABEL_215;
      }

      while (*(v15 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_214;
        }

        v15 = v14;
        v105 = v14[2];
        if (v105)
        {
          goto LABEL_213;
        }
      }

      goto LABEL_278;
    case 16:

      sub_298CAFACC(a1, a2, a4, a7);
      return;
    case 17:

      sub_298CAE8C8(a1, a2, a4, a7);
      return;
    case 18:

      sub_298CAFC80(a1, a2, a4, a7);
      return;
    case 19:
      v50 = off_29EEBA100[*(*(a2 + 16) + 16 * a4 + 8) ^ 1];
      v51 = a7[4];
      if (a7[3] - v51 <= 1uLL)
      {
        v52 = a7;
        goto LABEL_129;
      }

      *v51 = *v50;
      a7[4] += 2;
      return;
    case 20:
      v53 = *(*(a2 + 16) + 16 * a4 + 8);
      v54 = __clz(((v53 >> 6) & 0x40 | v53 & 0x3F) ^ 0x3F);
      v55 = 0x80000000 >> v54;
      v56 = (v53 >> 6) & ((0x80000000 >> v54) - 1);
      v57 = ~(-1 << ((((0x80000000 >> v54) - 1) & v53 & 0x3F) + 1));
      for (i = v56 & 0x3F; i; --i)
      {
        v57 = ((v57 & 1) << ((0x80000000 >> v54) - 1)) | (v57 >> 1);
      }

      if (v54 != 25)
      {
        do
        {
          v57 |= v57 << v55;
          v55 *= 2;
        }

        while (v55 != 64);
      }

      sub_298CC5E30(a1, v57, a7);
      return;
    case 21:
      v77 = *(a2 + 16);

      sub_298CB7F0C(a1, v77, a4, a7);
      return;
    case 22:
      v86 = *(a2 + 16);

      sub_298CB8144(a1, v86, a4, a7);
      return;
    case 23:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 252);
      goto LABEL_152;
    case 24:
      v43 = a7[4];
      if (a7[3] == v43)
      {
        v93 = a2;
        v94 = a7;
        v95 = a4;
        sub_298B9BCEC(a7, "[", 1uLL);
        a2 = v93;
        a4 = v95;
        a7 = v94;
      }

      else
      {
        *v43 = 91;
        ++a7[4];
      }

      v96 = *(*(a2 + 16) + 16 * a4 + 8);
      if ((v96 & 0x8000000000000000) == 0)
      {
        v97 = a7;
        v98 = a7;
        if (!HIDWORD(v96))
        {
          sub_298B8FC48(a7, v96, 0, 0, 0);
          v52 = v97;
          v99 = v97[4];
          if (v97[3] != v99)
          {
LABEL_182:
            *v99 = 93;
            ++*(v52 + 32);
            return;
          }

          goto LABEL_185;
        }

        v104 = 0;
LABEL_205:
        sub_298B8FEA0(v98, v96, 0, 0, v104);
        v52 = v97;
        v99 = v97[4];
        if (v97[3] != v99)
        {
          goto LABEL_182;
        }

        goto LABEL_185;
      }

      v96 = -v96;
      v97 = a7;
      v98 = a7;
      if (HIDWORD(v96))
      {
        v104 = 1;
        goto LABEL_205;
      }

      sub_298B8FC48(a7, v96, 0, 0, 1);
      v52 = v97;
      v99 = v97[4];
      if (v97[3] != v99)
      {
        goto LABEL_182;
      }

LABEL_185:
      v50 = "]";
      v80 = 1;
LABEL_186:

      sub_298B9BCEC(v52, v50, v80);
      return;
    case 25:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 220);
      goto LABEL_152;
    case 26:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 188);
      goto LABEL_152;
    case 27:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v87 = v14;
      v88 = v14[4];
      if (v88 < v14[3])
      {
        goto LABEL_148;
      }

      v89 = v14[2];
      if (v89)
      {
        goto LABEL_147;
      }

      do
      {
        if (!*(v87 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v87 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_149;
          }

          goto LABEL_248;
        }

        sub_298B9AE98(v14);
        v88 = v14[4];
        v87 = v14;
        if (v88 < v14[3])
        {
          goto LABEL_148;
        }

        v89 = v14[2];
      }

      while (!v89);
LABEL_147:
      v87[4] = v89;
      sub_298B9BB84(v87);
      v87 = v14;
      v88 = v14[4];
LABEL_148:
      v87[4] = v88 + 1;
      *v88 = 46;
      v18 = v87[4];
      if (v18 < v87[3])
      {
LABEL_149:
        v87[4] = v18 + 1;
LABEL_251:
        v106 = 113;
LABEL_252:
        *v18 = v106;
        return;
      }

LABEL_248:
      v110 = v87[2];
      if (v110)
      {
LABEL_249:
        v87[4] = v110;
        sub_298B9BB84(v87);
        v18 = v14[4];
LABEL_250:
        v14[4] = v18 + 1;
        goto LABEL_251;
      }

      while (*(v87 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_250;
        }

        v87 = v14;
        v110 = v14[2];
        if (v110)
        {
          goto LABEL_249;
        }
      }

LABEL_278:
      sub_298B9BB84(v14);
      return;
    case 28:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 124);
      goto LABEL_152;
    case 29:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 92);
LABEL_152:
      v65 = *(*a1 + 40);
      v66 = a7;
      goto LABEL_153;
    case 30:
      v49 = *(a2 + 16);

      sub_298CABB58(v49, a4, a7);
      return;
    case 31:
      v69 = *(a2 + 16) + 16 * a4;
      goto LABEL_190;
    case 32:
      v20 = *(a2 + 16);

      sub_298CABD60(v20, a4, a7);
      return;
    case 33:
      v12 = *(a2 + 16) + 16 * a4;
      if (*v12 == 4)
      {
        v13 = *(v12 + 8);
      }

      else
      {
        LODWORD(v13) = ((*(v12 + 8) << 24) & 0xC0000000 | ((*(v12 + 8) & 0x3F) << 19) | ((*(v12 + 8) << 25) >> 31) & 0x3E000000) ^ 0x40000000;
      }

      sub_298B47440(v112, a7, 0, a1[48], a1[49]);
      v111.__r_.__value_.__r.__words[0] = &unk_2A1F211D0;
      v111.__r_.__value_.__l.__size_ = "#%.8f";
      *&v111.__r_.__value_.__r.__words[2] = v13;
      goto LABEL_170;
    case 34:
    case 53:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 100;
      goto LABEL_134;
    case 35:
    case 52:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 115;
      goto LABEL_134;
    case 36:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 113;
      goto LABEL_134;
    case 37:
      v42 = *(a2 + 16);

      sub_298CB8340(a1, v42, a4, a7);
      return;
    case 38:
      v70 = *(a2 + 16);

      sub_298CB856C(a1, v70, a4, a7);
      return;
    case 39:
    case 41:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 98;
      goto LABEL_134;
    case 40:
      v21 = *(*(a2 + 16) + 16 * a4 + 8);
      v22 = a7[4];
      if (a7[3] - v22 > 1uLL)
      {
        *v22 = 28272;
        a7[4] += 2;
      }

      else
      {
        v23 = a7;
        sub_298B9BCEC(a7, "pn", 2uLL);
        a7 = v23;
      }

      LODWORD(v91) = v21 - 125;
      v92 = a7;
      goto LABEL_192;
    case 42:
    case 51:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 104;
LABEL_134:
      v82 = a7;
      v83 = a4;
      std::string::push_back(&v111, v10);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v111;
      }

      else
      {
        v84 = v111.__r_.__value_.__r.__words[0];
      }

      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v111.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v111.__r_.__value_.__l.__size_;
      }

      sub_298CC4E38(v8, *(v9 + 16), v83, v82, v84, size);
      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      return;
    case 43:

      sub_298CABF68(a1, a2, a4, a7);
      return;
    case 44:

      sub_298CAC090(a1, a2, a4, a7);
      return;
    case 45:

      sub_298CAC1B0(a1, a2, a4, a7);
      return;
    case 46:

      sub_298CAC2D0(a1, a2, a4, a7);
      return;
    case 47:

      sub_298CAC3F0(a1, a2, a4, a7);
      return;
    case 48:

      sub_298CAC510(a1, a2, a4, a7);
      return;
    case 49:

      sub_298CAC630(a1, a2, a4, a7);
      return;
    case 50:

      sub_298CAC750(a1, a2, a4, a7);
      return;
    case 55:
      v90 = *(a2 + 16);

      sub_298CAE560(a1, v90, a4, a7);
      return;
    case 56:
      v11 = *(a2 + 16);

      sub_298CAEB3C(a1, v11, a4, a7);
      return;
    case 57:
      v78 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v52 = v78;
      v79 = v78[4];
      if (v78[3] - v79 > 1uLL)
      {
        *v79 = 25646;
        v78[4] += 2;
        return;
      }

      v50 = ".d";
LABEL_129:
      v80 = 2;
      goto LABEL_186;
    case 58:
      v27 = *(a2 + 16);
      v28 = a4;
      sub_298B47440(v112, a7, 0, a1[48], a1[49]);
      v29 = *(v27 + 16 * v28 + 8);
      v111.__r_.__value_.__r.__words[0] = &unk_2A1F1C388;
      v111.__r_.__value_.__l.__size_ = "#%#llx";
      v111.__r_.__value_.__r.__words[2] = v29;
LABEL_170:
      sub_298B9B1F8(v112[0], &v111);
      sub_298B47608(v112);
      return;
    case 59:
      v81 = *(a2 + 16);

      sub_298CAD638(a1, v81, a4, a7);
      return;
    case 60:
      v41 = *(a2 + 16);

      sub_298CAD864(a1, v41, a4, a6, a7);
      return;
    case 61:
      v63 = a1;
      v64 = a7;
      v7 = sub_298CC3AA8(*(*(a2 + 16) + 16 * a4 + 8));
      v65 = *(*v63 + 40);
      a1 = v63;
      v66 = v64;
LABEL_153:

      v65(a1, v66, v7);
      return;
    case 62:
      v67 = *(a2 + 16);
      v68 = a7[4];
      if (a7[3] == v68)
      {
        v100 = a7;
        v101 = a4;
        sub_298B9BCEC(a7, "c", 1uLL);
        a7 = v100;
        v69 = v67 + 16 * v101;
      }

      else
      {
        *v68 = 99;
        ++a7[4];
        v69 = v67 + 16 * a4;
      }

LABEL_190:
      v91 = *(v69 + 8);
      if ((v91 & 0x8000000000000000) != 0)
      {
        v91 = -v91;
        v92 = a7;
        if (!HIDWORD(v91))
        {
          v102 = 1;
          goto LABEL_195;
        }

        v103 = 1;
      }

      else
      {
        v92 = a7;
        if (!HIDWORD(v91))
        {
LABEL_192:
          v102 = 0;
LABEL_195:

          sub_298B8FC48(v92, v91, 0, 0, v102);
          return;
        }

        v103 = 0;
      }

      sub_298B8FEA0(v92, v91, 0, 0, v103);
      return;
    default:

      sub_298CB3ABC(a1, a2, a4, a7);
      return;
  }
}

_BYTE *sub_298CB7B6C(char a1, char a2, uint64_t a3, unsigned int a4, void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 16 * a4 + 8);
  sub_298B47440(v20, a5, 0, a1 & 1, a2 & 1);
  v7 = a5[4];
  if ((a5[3] - v7) > 2)
  {
    *(v7 + 2) = 120;
    *v7 = 12323;
    a5[4] += 3;
  }

  else
  {
    sub_298B9BCEC(a5, "#0x", 3uLL);
  }

  v8 = __clz(((v6 >> 6) & 0x40 | v6 & 0x3F) ^ 0x3F);
  v9 = 0x80000000 >> v8;
  v10 = ~(-1 << ((((0x80000000 >> v8) - 1) & v6 & 0x3F) + 1));
  v11 = (v6 >> 6) & ((0x80000000 >> v8) - 1) & 0x3F;
  if (((v6 >> 6) & ((0x80000000 >> v8) - 1) & 0x3F) != 0)
  {
    do
    {
      v10 = ((v10 & 1) << ((0x80000000 >> v8) - 1)) | (v10 >> 1);
      --v11;
    }

    while (v11);
  }

  if (v8 != 28)
  {
    do
    {
      v10 |= v10 << v9;
      v9 *= 2;
    }

    while (v9 != 8);
  }

  v12 = 0;
  v13 = (67 - __clz(v10)) >> 2;
  *&v14 = 0x3030303030303030;
  *(&v14 + 1) = 0x3030303030303030;
  v21[6] = v14;
  v21[7] = v14;
  if (v13)
  {
    v12 = v13;
  }

  v21[4] = v14;
  v21[5] = v14;
  if (v12 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  v21[2] = v14;
  v21[3] = v14;
  v21[0] = v14;
  v21[1] = v14;
  if (v10)
  {
    v16 = v21 + v15 - 1;
    do
    {
      *v16-- = a0123456789abcd_1[v10 & 0xF] | 0x20;
      v17 = v10 > 0xF;
      v10 >>= 4;
    }

    while (v17);
  }

  sub_298B9BCEC(a5, v21, v15);
  result = sub_298B47608(v20);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *sub_298CB7D3C(char a1, char a2, uint64_t a3, unsigned int a4, void *a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a3 + 16 * a4 + 8);
  sub_298B47440(v20, a5, 0, a1 & 1, a2 & 1);
  v7 = a5[4];
  if ((a5[3] - v7) > 2)
  {
    *(v7 + 2) = 120;
    *v7 = 12323;
    a5[4] += 3;
  }

  else
  {
    sub_298B9BCEC(a5, "#0x", 3uLL);
  }

  v8 = __clz(((v6 >> 6) & 0x40 | v6 & 0x3F) ^ 0x3F);
  v9 = 0x80000000 >> v8;
  v10 = ~(-1 << ((((0x80000000 >> v8) - 1) & v6 & 0x3F) + 1));
  v11 = (v6 >> 6) & ((0x80000000 >> v8) - 1) & 0x3F;
  if (((v6 >> 6) & ((0x80000000 >> v8) - 1) & 0x3F) != 0)
  {
    do
    {
      v10 = ((v10 & 1) << ((0x80000000 >> v8) - 1)) | (v10 >> 1);
      --v11;
    }

    while (v11);
  }

  if (v8 != 27)
  {
    do
    {
      v10 |= v10 << v9;
      v9 *= 2;
    }

    while (v9 != 16);
  }

  v12 = 0;
  v13 = (67 - __clz(v10)) >> 2;
  *&v14 = 0x3030303030303030;
  *(&v14 + 1) = 0x3030303030303030;
  v21[6] = v14;
  v21[7] = v14;
  if (v13)
  {
    v12 = v13;
  }

  v21[4] = v14;
  v21[5] = v14;
  if (v12 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v12;
  }

  v21[2] = v14;
  v21[3] = v14;
  v21[0] = v14;
  v21[1] = v14;
  if (v10)
  {
    v16 = v21 + v15 - 1;
    do
    {
      *v16-- = a0123456789abcd_1[v10 & 0xF] | 0x20;
      v17 = v10 > 0xF;
      v10 >>= 4;
    }

    while (v17);
  }

  sub_298B9BCEC(a5, v21, v15);
  result = sub_298B47608(v20);
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

_BYTE *sub_298CB7F0C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 16 * a3 + 8);
  v5 = __clz(((v4 >> 6) & 0x40 | v4 & 0x3F) ^ 0x3F);
  v6 = 0x80000000 >> v5;
  v7 = (0x80000000 >> v5) - 1;
  v8 = ~(-1 << ((((0x80000000 >> v5) - 1) & v4 & 0x3F) + 1));
  for (i = (v4 >> 6) & v7 & 0x3F; i; --i)
  {
    v8 = ((v8 & 1) << v7) | (v8 >> 1);
  }

  if (v5 != 25)
  {
    do
    {
      v8 |= v8 << v6;
      v6 *= 2;
    }

    while (v6 != 64);
  }

  if (v8 == v8)
  {

    return sub_298CC6738(a1, v8, a4);
  }

  if (WORD1(v8))
  {
    sub_298B47440(v20, a4, 0, *(a1 + 48), *(a1 + 49));
    v12 = v20[0];
    v13 = *(v20[0] + 32);
    if (v13 < *(v20[0] + 24))
    {
LABEL_19:
      *(v12 + 32) = v13 + 1;
      *v13 = 35;
      v15 = v8;
      if (!*(a1 + 52))
      {
LABEL_27:
        v18 = "0x%llx";
LABEL_28:
        v19[1] = v18;
        v19[2] = v15;
        v19[0] = &unk_2A1F1BC68;
        sub_298B9B1F8(v20[0], v19);
        return sub_298B47608(v20);
      }
    }

    else
    {
      while (1)
      {
        v14 = *(v12 + 16);
        if (v14)
        {
          *(v12 + 32) = v14;
          sub_298B9BB84(v12);
          v13 = *(v12 + 32);
          goto LABEL_19;
        }

        if (!*(v12 + 56))
        {
          break;
        }

        sub_298B9AE98(v12);
        v13 = *(v12 + 32);
        if (v13 < *(v12 + 24))
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v19[0]) = 35;
      sub_298B9BB84(v12);
      v15 = v8;
      if (!*(a1 + 52))
      {
        goto LABEL_27;
      }
    }

    v16 = v15;
    while (v16)
    {
      v17 = v16;
      v16 *= 16;
      if (v17 >> 60)
      {
        if (v17 >> 61 > 4)
        {
          v18 = "0%llxh";
          goto LABEL_28;
        }

        break;
      }
    }

    v18 = "%llxh";
    goto LABEL_28;
  }

  return sub_298CC6BC8(a1, v8, a4);
}

_BYTE *sub_298CB8144(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = *(a2 + 16 * a3 + 8);
  v7 = __clz(((v6 >> 6) & 0x40 | v6 & 0x3F) ^ 0x3F);
  v8 = 0x80000000 >> v7;
  v9 = (0x80000000 >> v7) - 1;
  v10 = ~(-1 << ((((0x80000000 >> v7) - 1) & v6 & 0x3F) + 1));
  for (i = (v6 >> 6) & v9 & 0x3F; i; --i)
  {
    v10 = ((v10 & 1) << v9) | (v10 >> 1);
  }

  if (v7 != 25)
  {
    do
    {
      v10 |= v10 << v8;
      v8 *= 2;
    }

    while (v8 != 64);
  }

  if (v10 == v10)
  {
    v12 = a4;

    return sub_298CC62C0(a1, v10, v12);
  }

  if (!(v10 >> 16))
  {
    v12 = a4;

    return sub_298CC62C0(a1, v10, v12);
  }

  v23[6] = v4;
  v23[7] = v5;
  v14 = v10;
  sub_298B47440(v23, a4, 0, *(a1 + 48), *(a1 + 49));
  v16 = v23[0];
  v17 = *(v23[0] + 32);
  if (v17 >= *(v23[0] + 24))
  {
    while (1)
    {
      v18 = *(v16 + 16);
      if (v18)
      {
        *(v16 + 32) = v18;
        sub_298B9BB84(v16);
        v17 = *(v16 + 32);
        goto LABEL_19;
      }

      if (!*(v16 + 56))
      {
        break;
      }

      sub_298B9AE98(v16);
      v17 = *(v16 + 32);
      if (v17 < *(v16 + 24))
      {
        goto LABEL_19;
      }
    }

    LOBYTE(v22[0]) = 35;
    sub_298B9BB84(v16);
    if (!*(a1 + 52))
    {
      goto LABEL_26;
    }

LABEL_20:
    v19 = v14;
    do
    {
      v20 = v19;
      v19 *= 16;
    }

    while (!(v20 >> 60));
    if (v20 >> 61 <= 4)
    {
      v21 = "%llxh";
    }

    else
    {
      v21 = "0%llxh";
    }

    goto LABEL_27;
  }

LABEL_19:
  *(v16 + 32) = v17 + 1;
  *v17 = 35;
  if (*(a1 + 52))
  {
    goto LABEL_20;
  }

LABEL_26:
  v21 = "0x%llx";
LABEL_27:
  v22[1] = v21;
  v22[2] = v14;
  v22[0] = &unk_2A1F1BC68;
  sub_298B9B1F8(v23[0], v22);
  return sub_298B47608(v23);
}

unsigned __int8 *sub_298CB8340(unsigned __int8 *result, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = result;
  v5 = *(a2 + 16 * a3 + 8) ^ 0x20u;
  v6 = *(a2 + 16 * a3 + 8) ^ 0x20;
  v7 = &unk_298EA2FF8;
  v8 = 3;
  do
  {
    v9 = v8 >> 1;
    v10 = &v7[8 * (v8 >> 1)];
    v12 = *v10;
    v11 = v10 + 8;
    v8 += ~(v8 >> 1);
    if (v12 < v6)
    {
      v7 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  while (v8);
  if (v7 == &unk_298EA3010 || *v7 != v6)
  {
    sub_298B47440(v25, a4, 0, result[48], result[49]);
    v19 = v25[0];
    v20 = *(v25[0] + 32);
    if (v20 < *(v25[0] + 24))
    {
LABEL_19:
      *(v19 + 32) = v20 + 1;
      *v20 = 35;
      if (*(v4 + 51) != 1)
      {
LABEL_25:
        v24[0] = &unk_2A1F1C388;
        v24[1] = "%lld";
        v24[2] = v5;
        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v21 = *(v19 + 16);
        if (v21)
        {
          *(v19 + 32) = v21;
          sub_298B9BB84(v19);
          v20 = *(v19 + 32);
          goto LABEL_19;
        }

        if (!*(v19 + 56))
        {
          break;
        }

        sub_298B9AE98(v19);
        v20 = *(v19 + 32);
        if (v20 < *(v19 + 24))
        {
          goto LABEL_19;
        }
      }

      LOBYTE(v24[0]) = 35;
      sub_298B9BB84(v19);
      if (*(v4 + 51) != 1)
      {
        goto LABEL_25;
      }
    }

    sub_298B47284(v4, v5, v24);
LABEL_26:
    sub_298B9B1F8(v25[0], v24);
    return sub_298B47608(v25);
  }

  v13 = 14 * *(v7 + 1);
  v14 = (&off_29EED3B90)[v13];
  if (v14)
  {
    v16 = strlen((&off_29EED3B90)[v13]);
    v17 = a4;
    v18 = v16;
    result = *(v17 + 32);
    if (v18 <= *(v17 + 24) - result)
    {
      if (v18)
      {
        v22 = v14;
        v23 = v17;
        result = memcpy(result, v22, v18);
        *(v23 + 32) += v18;
      }
    }

    else
    {

      return sub_298B9BCEC(v17, v14, v18);
    }
  }

  return result;
}

_BYTE *sub_298CB856C(_BYTE *result, uint64_t a2, unsigned int a3, void *a4)
{
  v6 = *(a2 + 16 * a3 + 8);
  if (v6 != 17)
  {
    v14[6] = v4;
    v14[7] = v5;
    v8 = result;
    v9 = v6;
    sub_298B47440(v14, a4, 0, result[48], result[49]);
    v10 = v14[0];
    v11 = *(v14[0] + 32);
    if (v11 < *(v14[0] + 24))
    {
LABEL_13:
      *(v10 + 32) = v11 + 1;
      *v11 = 35;
      if (*(v8 + 51) != 1)
      {
LABEL_16:
        v13[0] = &unk_2A1F1C388;
        v13[1] = "%lld";
        v13[2] = v9;
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v12 = *(v10 + 16);
        if (v12)
        {
          *(v10 + 32) = v12;
          sub_298B9BB84(v10);
          v11 = *(v10 + 32);
          goto LABEL_13;
        }

        if (!*(v10 + 56))
        {
          break;
        }

        sub_298B9AE98(v10);
        v11 = *(v10 + 32);
        if (v11 < *(v10 + 24))
        {
          goto LABEL_13;
        }
      }

      LOBYTE(v13[0]) = 35;
      sub_298B9BB84(v10);
      if (*(v8 + 51) != 1)
      {
        goto LABEL_16;
      }
    }

    sub_298B47284(v8, v9, v13);
LABEL_17:
    sub_298B9B1F8(v14[0], v13);
    return sub_298B47608(v14);
  }

  v7 = a4[4];
  if (a4[3] - v7 > 4uLL)
  {
    qmemcpy(v7, "csync", 5);
    a4[4] += 5;
  }

  else
  {

    return sub_298B9BCEC(a4, "csync", 5uLL);
  }

  return result;
}

char *sub_298CB870C(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = dword_298D510B8[v2];
  if (v3 | (dword_298D58F64[v2] << 32))
  {
    return &aSt64bv0[(v3 & 0x7FFF) - 1];
  }

  else
  {
    return 0;
  }
}

void sub_298CB874C(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  sub_298B00584(a5, "\t");
  v10 = (*(*a1 + 24))(a1, a2);
  v12 = v11;
  sub_298B00584(a5, v10);
  switch((v12 >> 15) & 0x7F)
  {
    case 1uLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 0;
      goto LABEL_98;
    case 2uLL:
      sub_298CAA1C8(a1, *(a2 + 16), 0, a5);
      goto LABEL_104;
    case 3uLL:
      sub_298CAA308(a1, *(a2 + 16), 0, a5);
      goto LABEL_104;
    case 4uLL:
      sub_298CAA448(a1, *(a2 + 16), 0, a5);
      goto LABEL_89;
    case 5uLL:
      sub_298CAA588(a1, *(a2 + 16), 0, a5);
      goto LABEL_104;
    case 6uLL:
      v40 = *(a2 + 16);
      v41 = a1[49];
      v42 = a1[48];
      v43 = 0;
      goto LABEL_69;
    case 7uLL:
      sub_298CAA78C(a1, *(*(a2 + 16) + 8), a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
      v29 = "/m, ";
      sub_298B00584(a5, "/m, ");
      v30 = *(a2 + 16);
      v31 = a1;
      v32 = 3;
      goto LABEL_66;
    case 8uLL:
      v40 = *(a2 + 16);
      v41 = a1[49];
      v42 = a1[48];
      v43 = 1;
LABEL_69:
      sub_298CAA6C8(v42, v41, v40, v43, a5);
      goto LABEL_104;
    case 9uLL:
      sub_298CAA7EC(a1, a2, 0, a5);
      goto LABEL_89;
    case 0xAuLL:
      sub_298CAA8A4(a1, a2, 0, a5);
      goto LABEL_89;
    case 0xBuLL:
      sub_298CAA95C(a1, a2, 0, a5);
      goto LABEL_89;
    case 0xCuLL:
      sub_298CAAA14(a1, a2, 0, a5);
      goto LABEL_89;
    case 0xDuLL:
      sub_298CAAACC(a1, *(a2 + 16), 0, a5);
      goto LABEL_75;
    case 0xEuLL:
      sub_298CAAC18(a1, *(*(a2 + 16) + 8), a5);
      goto LABEL_75;
    case 0xFuLL:
      sub_298CAACB4(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
LABEL_44:
      v25 = *(a2 + 16);
      v26 = a1;
      v27 = 2;
LABEL_681:

      sub_298CAA1C8(v26, v25, v27, a5);
      return;
    case 0x10uLL:
      sub_298CAACE8(a1, *(a2 + 16), 0, a5);
      goto LABEL_65;
    case 0x11uLL:
      sub_298CAAD1C(a1, *(a2 + 16), 0, a5);
      goto LABEL_65;
    case 0x12uLL:
      sub_298CAAD50(a1, *(a2 + 16), 0, a5);
LABEL_65:
      v29 = ", ";
      sub_298B00584(a5, ", ");
      v30 = *(a2 + 16);
      v31 = a1;
      v32 = 1;
LABEL_66:
      sub_298CAA7BC(v31, v30, v32, a5);
      v44 = a5;
      v45 = v29;
      goto LABEL_103;
    case 0x13uLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 1;
      goto LABEL_98;
    case 0x14uLL:
      v36 = a1;
      v37 = a2;
      v38 = a3;
      v39 = 0;
      goto LABEL_215;
    case 0x15uLL:
      sub_298CAB004(*(a2 + 16), 0, a5);
      sub_298B00584(a5, "\t");
LABEL_214:
      v36 = a1;
      v37 = a2;
      v38 = a3;
      v39 = 1;
LABEL_215:

      sub_298CAAD84(v36, v37, v38, v39, a5);
      return;
    case 0x16uLL:
      sub_298CAB04C(a1, *(*(a2 + 16) + 8), a5);
LABEL_75:
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 2u, a5);
      goto LABEL_89;
    case 0x17uLL:
      v46 = *(a2 + 16);
      v47 = a1[49];
      v48 = a1[48];

      sub_298CAB0E8(v48, v47, v46, a5);
      return;
    case 0x18uLL:
      sub_298CAB174(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAB174(a1, *(a2 + 16), 2u, a5);
      goto LABEL_41;
    case 0x19uLL:
      sub_298CAB2F8(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAB2F8(a1, *(a2 + 16), 2u, a5);
LABEL_41:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 3;
      goto LABEL_275;
    case 0x1AuLL:
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, "]!, [");
      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
      sub_298B00584(a5, "]!, ");
      sub_298CAA168(a1, *(a2 + 16), 5u, a5);
      v50 = a5;
      v51 = 33;
      goto LABEL_277;
    case 0x1BuLL:
      v17 = *a2;
      v18 = *(*(a2 + 16) + 8);

      sub_298CAB47C(a1, v17, v18, a5);
      return;
    case 0x1CuLL:
      v49 = *(*(a2 + 16) + 8);

      sub_298CAB6A0(a1, v49, a5);
      return;
    case 0x1DuLL:
      sub_298CAB860(a1, *(a2 + 16), 0, a5);
      goto LABEL_89;
    case 0x1EuLL:
      sub_298CAB9A0(a1, a2, 0, a5);
      goto LABEL_89;
    case 0x1FuLL:
      v33 = *(a2 + 16);
      v34 = a1;
      v35 = 0;
LABEL_50:

      sub_298CABA58(v34, v33, v35, a5);
      return;
    case 0x20uLL:
      sub_298CABB58(*(a2 + 16), 0, a5);
      goto LABEL_72;
    case 0x21uLL:
      sub_298CABD60(*(a2 + 16), 0, a5);
LABEL_72:
      sub_298CAAB6C(a5, 91);
      goto LABEL_104;
    case 0x22uLL:
      sub_298CAA7EC(a1, a2, 0, a5);
      goto LABEL_104;
    case 0x23uLL:
      sub_298CABF68(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x24uLL:
      sub_298CABF68(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x25uLL:
      sub_298CAC090(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x26uLL:
      sub_298CAC090(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x27uLL:
      sub_298CAC1B0(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x28uLL:
      sub_298CAC1B0(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x29uLL:
      sub_298CAC2D0(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x2AuLL:
      sub_298CAC2D0(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x2BuLL:
      sub_298CAC3F0(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x2CuLL:
      sub_298CAC3F0(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x2DuLL:
      sub_298CAC510(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x2EuLL:
      sub_298CAC510(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x2FuLL:
      sub_298CAC630(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x30uLL:
      sub_298CAC630(a1, a2, 1u, a5);
      goto LABEL_100;
    case 0x31uLL:
      sub_298CAC750(a1, a2, 0, a5);
      goto LABEL_77;
    case 0x32uLL:
      sub_298CAC750(a1, a2, 1u, a5);
LABEL_100:
      sub_298B00584(a5, ", [");
      v52 = *(a2 + 16);
      v53 = a1;
      v54 = 2;
      goto LABEL_101;
    case 0x33uLL:
      sub_298CAA95C(a1, a2, 0, a5);
      goto LABEL_104;
    case 0x34uLL:
      sub_298CAA95C(a1, a2, 1u, a5);
      goto LABEL_97;
    case 0x35uLL:
      sub_298CAA95C(a1, a2, 2u, a5);
      goto LABEL_95;
    case 0x36uLL:
      sub_298CAAA14(a1, a2, 1u, a5);
      goto LABEL_97;
    case 0x37uLL:
      sub_298CAAA14(a1, a2, 2u, a5);
      goto LABEL_95;
    case 0x38uLL:
      sub_298CAA8A4(a1, a2, 1u, a5);
      goto LABEL_97;
    case 0x39uLL:
      sub_298CAA8A4(a1, a2, 2u, a5);
      goto LABEL_95;
    case 0x3AuLL:
      sub_298CAA7EC(a1, a2, 1u, a5);
LABEL_97:
      sub_298CAC870(a2, 2u, a5);
      sub_298B00584(a5, ", [");
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 3;
      goto LABEL_98;
    case 0x3BuLL:
      sub_298CAA7EC(a1, a2, 2u, a5);
LABEL_95:
      sub_298CAC870(a2, 3u, a5);
      sub_298B00584(a5, ", [");
      v52 = *(a2 + 16);
      v53 = a1;
      v54 = 4;
LABEL_101:
      sub_298CAA168(v53, v52, v54, a5);
      v45 = "], ";
      goto LABEL_102;
    case 0x3CuLL:
      sub_298CAC9CC(a1, *(a2 + 16), 0, a5);
LABEL_77:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 1;
      goto LABEL_275;
    case 0x3DuLL:
      v13 = *(a2 + 16);
      v14 = a1;
      v15 = 2;
LABEL_98:
      sub_298CAA168(v14, v13, v15, a5);
      goto LABEL_104;
    case 0x3EuLL:
      sub_298CAA7BC(a1, *(a2 + 16), 0, a5);
      goto LABEL_104;
    case 0x3FuLL:
      sub_298CAA78C(a1, *(*(a2 + 16) + 8), a5);
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 1u, a5);
      sub_298B00584(a5, ", ");
      sub_298CACA88(*(a2 + 16), 2u, a5);
      sub_298B00584(a5, "], [");
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
LABEL_46:
      v28 = ", mul vl]";
LABEL_597:

      sub_298B00584(a5, v28);
      return;
    case 0x40uLL:
      sub_298CAB2F8(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
LABEL_211:
      v127 = *(*(a2 + 16) + 24);

      sub_298CACAF0(v127, a4, a5);
      return;
    case 0x41uLL:
      sub_298CACE90(*(*(a2 + 16) + 8), a4, a5);
LABEL_89:
      v45 = ", ";
      goto LABEL_102;
    case 0x42uLL:
      sub_298CAD230(a1, *(*(a2 + 16) + 8), a4, a5);
      goto LABEL_25;
    case 0x43uLL:
      sub_298CAD57C(*(*(a2 + 16) + 8), a5);
LABEL_25:
      sub_298B00584(a5, ", ");
      v19 = *(a2 + 16);
      v20 = a1;
      v21 = 1;
LABEL_397:

      sub_298CAA168(v20, v19, v21, a5);
      return;
    case 0x44uLL:
      sub_298CAD638(a1, *(a2 + 16), 0, a5);
      sub_298B00584(a5, ", ");
      sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
      v45 = ", [";
LABEL_102:
      v44 = a5;
LABEL_103:
      sub_298B00584(v44, v45);
      goto LABEL_104;
    case 0x45uLL:
      sub_298CAD864(a1, *(a2 + 16), 0, a4, a5);
      goto LABEL_104;
    case 0x46uLL:
      sub_298CADACC(*(a2 + 16), 0, a5);
      goto LABEL_104;
    case 0x47uLL:
      sub_298CADB9C(*(a2 + 16), 0, a5);
      goto LABEL_104;
    case 0x48uLL:
      sub_298CADC6C(*(a2 + 16), 0, a5);
      goto LABEL_104;
    case 0x49uLL:
      sub_298CADD3C(*(a2 + 16), 0, a5);
LABEL_104:
      switch((v12 >> 22) & 0x7F)
      {
        case 1uLL:
          goto LABEL_207;
        case 2uLL:
          sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
          v55 = "/m, ";
          goto LABEL_208;
        case 3uLL:
          v101 = *(a2 + 16);
          v102 = a1;
          v103 = 4;
          goto LABEL_182;
        case 4uLL:
          v92 = *(a2 + 16);
          v93 = a1;
          v94 = 4;
          goto LABEL_171;
        case 5uLL:
          v92 = *(a2 + 16);
          v93 = a1;
          v94 = 1;
          goto LABEL_171;
        case 6uLL:
          v92 = *(a2 + 16);
          v93 = a1;
          v94 = 2;
LABEL_171:
          sub_298CAA588(v93, v92, v94, a5);
          goto LABEL_209;
        case 7uLL:
          sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
          goto LABEL_209;
        case 8uLL:
          v55 = ".16b, ";
          goto LABEL_208;
        case 9uLL:
          v55 = ".2d, ";
          goto LABEL_208;
        case 0xAuLL:
          v55 = ".8h, ";
          goto LABEL_208;
        case 0xBuLL:
          v55 = ".4s, ";
          goto LABEL_208;
        case 0xCuLL:
          sub_298CAA7EC(a1, a2, 1u, a5);
          goto LABEL_209;
        case 0xDuLL:
          sub_298CAA8A4(a1, a2, 1u, a5);
          goto LABEL_209;
        case 0xEuLL:
          sub_298CAA95C(a1, a2, 1u, a5);
          goto LABEL_209;
        case 0xFuLL:
          sub_298CAAA14(a1, a2, 1u, a5);
          goto LABEL_209;
        case 0x10uLL:
          goto LABEL_195;
        case 0x11uLL:
          v95 = *(a2 + 16);
          v96 = a1;
          v97 = 1;
          goto LABEL_166;
        case 0x12uLL:
          v55 = ", [";
          goto LABEL_208;
        case 0x13uLL:
          v101 = *(a2 + 16);
          v102 = a1;
          v103 = 2;
LABEL_182:
          sub_298CAA308(v102, v101, v103, a5);
          goto LABEL_209;
        case 0x14uLL:
          v95 = *(a2 + 16);
          v96 = a1;
          v97 = 2;
LABEL_166:
          sub_298CAA448(v96, v95, v97, a5);
          goto LABEL_209;
        case 0x15uLL:
          v64 = *(a2 + 16);
          v65 = a1;
          v66 = 1;
          goto LABEL_151;
        case 0x16uLL:
          sub_298CAE560(a1, *(a2 + 16), 3u, a5);
          goto LABEL_209;
        case 0x17uLL:
          sub_298CAA448(a1, *(a2 + 16), 4u, a5);
          sub_298B00584(a5, ", ");
          v79 = *(a2 + 16);
          v80 = a1;
          v81 = 5;
LABEL_677:

          sub_298CAA448(v80, v79, v81, a5);
          return;
        case 0x18uLL:
LABEL_350:
          sub_298CAE6A0(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", mul ");
          v19 = *(a2 + 16);
          v20 = a1;
          v21 = 3;
          goto LABEL_397;
        case 0x19uLL:
          v117 = a1;
          v118 = a2;
          v119 = 1;
LABEL_434:

          sub_298CAE8C8(v117, v118, v119, a5);
          return;
        case 0x1AuLL:
          v114 = *(a2 + 16);
          v115 = a1;
          v116 = 1;
          goto LABEL_185;
        case 0x1BuLL:
          sub_298CAB860(a1, *(a2 + 16), 1u, a5);
          goto LABEL_209;
        case 0x1CuLL:
          sub_298CAACE8(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_592:
          v133 = *(a2 + 16);
          v134 = a1;
          v135 = 3;
          goto LABEL_593;
        case 0x1DuLL:
          sub_298CAAD1C(a1, *(a2 + 16), 2u, a5);
          goto LABEL_209;
        case 0x1EuLL:
          sub_298CAAD50(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_363:
          v187 = *(a2 + 16);
          v188 = a1;
          v189 = 3;
LABEL_364:

          sub_298CAA588(v188, v187, v189, a5);
          return;
        case 0x1FuLL:
LABEL_596:
          v28 = ", #0.0";
          goto LABEL_597;
        case 0x20uLL:
          v55 = ".8b, ";
          goto LABEL_208;
        case 0x21uLL:
          sub_298B00584(a5, ".2s, ");
          sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 1u, a5);
LABEL_127:
          v28 = ".2d";
          goto LABEL_597;
        case 0x22uLL:
          sub_298B00584(a5, ".4h, ");
          v73 = *(a2 + 16);
          v74 = a1[49];
          v75 = a1[48];
          v76 = 1;
LABEL_129:
          sub_298CAA6C8(v75, v74, v73, v76, a5);
LABEL_130:
          v28 = ".4s";
          goto LABEL_597;
        case 0x23uLL:
          v64 = *(a2 + 16);
          v65 = a1;
          v66 = 2;
LABEL_151:
          sub_298CAA1C8(v65, v64, v66, a5);
          goto LABEL_209;
        case 0x24uLL:
LABEL_218:
          v128 = *(a2 + 16);
          v129 = a1;
          v130 = 1;
LABEL_373:

          sub_298CAEA7C(v129, v128, v130, a5);
          return;
        case 0x25uLL:
          sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
          goto LABEL_209;
        case 0x26uLL:
          sub_298CAA1C8(a1, *(a2 + 16), 4u, a5);
          sub_298B00584(a5, ", ");
          v25 = *(a2 + 16);
          v26 = a1;
          v27 = 5;
          goto LABEL_681;
        case 0x27uLL:
          sub_298CAC870(a2, 2u, a5);
          goto LABEL_207;
        case 0x28uLL:
          sub_298CAEC7C(a1, *(a2 + 16), 1u, a5);
          goto LABEL_207;
        case 0x29uLL:
          v114 = *(a2 + 16);
          v115 = a1;
          v116 = 2;
LABEL_185:
          sub_298CAA168(v115, v114, v116, a5);
          goto LABEL_209;
        case 0x2AuLL:
          sub_298CAED7C(*(*(a2 + 16) + 24), a5);
          goto LABEL_209;
        case 0x2BuLL:
          v82 = *(a2 + 16);

          sub_298CAEE00(a1, v82, a5);
          return;
        case 0x2CuLL:
          v105 = *(a2 + 16);
          v106 = a1;
          v107 = 3;
          goto LABEL_324;
        case 0x2DuLL:
          v111 = *(a2 + 16);
          v112 = a1;
          v113 = 3;
          goto LABEL_242;
        case 0x2EuLL:
          v67 = *(a2 + 16);
          v68 = a1;
          v69 = 3;
          goto LABEL_355;
        case 0x2FuLL:
          v70 = *(a2 + 16);
          v71 = a1;
          v72 = 3;
          goto LABEL_228;
        case 0x30uLL:
          v86 = *(a2 + 16);
          v87 = a1;
          v88 = 3;
          goto LABEL_233;
        case 0x31uLL:
          v59 = *(a2 + 16);
          v60 = a1;
          v61 = 3;
          goto LABEL_306;
        case 0x32uLL:
          v123 = *(a2 + 16);

          sub_298CAEE58(a1, v123, a5);
          return;
        case 0x33uLL:
          v98 = *(a2 + 16);
          v99 = a1;
          v100 = 3;
          goto LABEL_224;
        case 0x34uLL:
          goto LABEL_276;
        case 0x35uLL:
          v59 = *(a2 + 16);
          v60 = a1;
          v61 = 5;
LABEL_306:

          sub_298CAEE4C(v60, v59, v61, a5);
          return;
        case 0x36uLL:
          v86 = *(a2 + 16);
          v87 = a1;
          v88 = 5;
LABEL_233:

          sub_298CAEE40(v87, v86, v88, a5);
          return;
        case 0x37uLL:
          v67 = *(a2 + 16);
          v68 = a1;
          v69 = 5;
LABEL_355:

          sub_298CAEE28(v68, v67, v69, a5);
          return;
        case 0x38uLL:
          v70 = *(a2 + 16);
          v71 = a1;
          v72 = 5;
LABEL_228:

          sub_298CAEE34(v71, v70, v72, a5);
          return;
        case 0x39uLL:
          v111 = *(a2 + 16);
          v112 = a1;
          v113 = 5;
LABEL_242:

          sub_298CAEE1C(v112, v111, v113, a5);
          return;
        case 0x3AuLL:
          v83 = *(a2 + 16);
          v84 = a1;
          v85 = 3;
          goto LABEL_220;
        case 0x3BuLL:
          v108 = *(a2 + 16);
          v109 = a1;
          v110 = 3;
          goto LABEL_281;
        case 0x3CuLL:
          v89 = *(a2 + 16);
          v90 = a1;
          v91 = 3;
          goto LABEL_285;
        case 0x3DuLL:
          v89 = *(a2 + 16);
          v90 = a1;
          v91 = 5;
LABEL_285:

          sub_298CAEE8C(v90, v89, v91, a5);
          return;
        case 0x3EuLL:
          v108 = *(a2 + 16);
          v109 = a1;
          v110 = 5;
LABEL_281:

          sub_298CAEE80(v109, v108, v110, a5);
          return;
        case 0x3FuLL:
          v98 = *(a2 + 16);
          v99 = a1;
          v100 = 5;
LABEL_224:

          sub_298CAEE68(v99, v98, v100, a5);
          return;
        case 0x40uLL:
          v83 = *(a2 + 16);
          v84 = a1;
          v85 = 5;
LABEL_220:

          sub_298CAEE74(v84, v83, v85, a5);
          return;
        case 0x41uLL:
          v105 = *(a2 + 16);
          v106 = a1;
          v107 = 5;
LABEL_324:

          sub_298CAEE10(v106, v105, v107, a5);
          return;
        case 0x42uLL:
          sub_298B00584(a5, "]!, ");
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
          v62 = "!, ";
          v63 = a5;
LABEL_117:
          sub_298B00584(v63, v62);
LABEL_118:
          v19 = *(a2 + 16);
          v20 = a1;
          v21 = 4;
          goto LABEL_397;
        case 0x43uLL:
          sub_298CABB58(*(a2 + 16), 2u, a5);
          goto LABEL_206;
        case 0x44uLL:
          sub_298CABD60(*(a2 + 16), 2u, a5);
LABEL_206:
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
LABEL_207:
          v55 = ", ";
          goto LABEL_208;
        case 0x45uLL:
          sub_298CAAACC(a1, *(a2 + 16), 2u, a5);
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 3u, a5);
          sub_298B00584(a5, ", ");
          v77 = *(a2 + 16);
          v78 = 4;
          goto LABEL_196;
        case 0x46uLL:
          sub_298CABB58(*(a2 + 16), 1u, a5);
          goto LABEL_190;
        case 0x47uLL:
          sub_298CABD60(*(a2 + 16), 1u, a5);
          goto LABEL_190;
        case 0x48uLL:
          sub_298CAAACC(a1, *(a2 + 16), 1u, a5);
          sub_298CAAB6C(a5, 91);
          sub_298CAA168(a1, *(a2 + 16), 2u, a5);
          sub_298B00584(a5, ", ");
LABEL_195:
          v77 = *(a2 + 16);
          v78 = 3;
LABEL_196:
          sub_298CACA88(v77, v78, a5);
          goto LABEL_209;
        case 0x49uLL:
LABEL_190:
          sub_298CAAB6C(a5, 91);
          goto LABEL_209;
        case 0x4AuLL:
          v120 = *(a2 + 16);
          v121 = a1;
          v122 = 1;
LABEL_198:

          sub_298CAB2F8(v121, v120, v122, a5);
          return;
        case 0x4BuLL:
          sub_298CAA308(a1, *(a2 + 16), 1u, a5);
LABEL_238:
          sub_298B00584(a5, ", ");
          v133 = *(a2 + 16);
          v134 = a1;
          v135 = 2;
LABEL_593:

          sub_298CAA308(v134, v133, v135, a5);
          return;
        case 0x4CuLL:
          v104 = *(a2 + 16);

          sub_298CAE6A0(a1, v104, 1u, a5);
          return;
        case 0x4DuLL:
          goto LABEL_106;
        case 0x4EuLL:
          v55 = "], ";
LABEL_208:
          sub_298B00584(a5, v55);
LABEL_209:
          switch((v12 >> 29) & 0x7F)
          {
            case 1uLL:
              sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
              goto LABEL_320;
            case 2uLL:
LABEL_676:
              v79 = *(a2 + 16);
              v80 = a1;
              v81 = 3;
              goto LABEL_677;
            case 3uLL:
              v157 = *(a2 + 16);
              v158 = a1[49];
              v159 = a1[48];
              v160 = 1;
              goto LABEL_360;
            case 4uLL:
              v164 = *(a2 + 16);
              v165 = a1;
              v166 = 2;
              goto LABEL_316;
            case 5uLL:
              v154 = *(a2 + 16);
              v155 = a1;
              v156 = 2;
              goto LABEL_296;
            case 6uLL:
              return;
            case 7uLL:
              v161 = *(a2 + 16);
              v162 = a1;
              v163 = 1;
              goto LABEL_318;
            case 8uLL:
              goto LABEL_352;
            case 9uLL:
              v164 = *(a2 + 16);
              v165 = a1;
              v166 = 1;
LABEL_316:
              sub_298CAA308(v165, v164, v166, a5);
              goto LABEL_361;
            case 0xAuLL:
              v161 = *(a2 + 16);
              v162 = a1;
              v163 = 2;
LABEL_318:
              sub_298CAA448(v162, v161, v163, a5);
              goto LABEL_361;
            case 0xBuLL:
              goto LABEL_333;
            case 0xCuLL:
              sub_298CAA7BC(a1, *(a2 + 16), 1u, a5);
              goto LABEL_361;
            case 0xDuLL:
LABEL_320:
              v132 = "/m, ";
              goto LABEL_353;
            case 0xEuLL:
              v132 = ", vgx2], ";
              goto LABEL_353;
            case 0xFuLL:
              v132 = ", vgx4], ";
              goto LABEL_353;
            case 0x10uLL:
              sub_298CAA1C8(a1, *(a2 + 16), 1u, a5);
              goto LABEL_361;
            case 0x11uLL:
              v154 = *(a2 + 16);
              v155 = a1;
              v156 = 1;
LABEL_296:
              sub_298CAA588(v155, v154, v156, a5);
              goto LABEL_361;
            case 0x12uLL:

              sub_298CAEE98(a1, a2, a3, a5);
              return;
            case 0x13uLL:
              v124 = *(a2 + 16);
              v125 = a1;
              v126 = 2;
              goto LABEL_339;
            case 0x14uLL:
              goto LABEL_363;
            case 0x15uLL:
              v143 = a1;
              v144 = a2;
              v145 = 1;
LABEL_257:

              sub_298CAA95C(v143, v144, v145, a5);
              return;
            case 0x16uLL:
              v132 = "], ";
              goto LABEL_353;
            case 0x17uLL:
              sub_298CABA58(a1, *(a2 + 16), 2u, a5);
              v176 = *(a2 + 16);
              v177 = a1;
              v178 = 3;
LABEL_407:

              sub_298CAF0D0(v177, v176, v178, a5);
              return;
            case 0x18uLL:
              goto LABEL_214;
            case 0x19uLL:
              sub_298CAA1C8(a1, *(a2 + 16), 2u, a5);
              goto LABEL_352;
            case 0x1AuLL:
              v132 = "/z, ";
              goto LABEL_353;
            case 0x1BuLL:
              sub_298CAE6A0(a1, *(a2 + 16), 1u, a5);
              goto LABEL_361;
            case 0x1CuLL:
              sub_298CADACC(*(a2 + 16), 1u, a5);
              goto LABEL_261;
            case 0x1DuLL:
              sub_298CADB9C(*(a2 + 16), 1u, a5);
              goto LABEL_261;
            case 0x1EuLL:
              sub_298CADC6C(*(a2 + 16), 1u, a5);
              goto LABEL_261;
            case 0x1FuLL:
              sub_298CADD3C(*(a2 + 16), 1u, a5);
LABEL_261:
              sub_298B00584(a5, ", ");
              v146 = *(a2 + 16);
              v147 = 2;
LABEL_262:

              sub_298CAF24C(v146, v147, a5);
              return;
            case 0x20uLL:
              v117 = a1;
              v118 = a2;
              v119 = 3;
              goto LABEL_434;
            case 0x21uLL:
              v124 = *(a2 + 16);
              v125 = a1;
              v126 = 3;
              goto LABEL_339;
            case 0x22uLL:
              goto LABEL_350;
            case 0x23uLL:
              v167 = *(a2 + 16);
              v168 = a1[49];
              v169 = a1[48];
              v170 = 1;
LABEL_302:

              sub_298CAF308(v169, v168, v167, v170, a5);
              return;
            case 0x24uLL:
LABEL_371:
              v140 = a2;
              v141 = 2;
              goto LABEL_468;
            case 0x25uLL:
              v173 = a1;
              v174 = a2;
              v175 = 1;
LABEL_495:

              sub_298CAF4D8(v173, v174, v175, a5);
              return;
            case 0x26uLL:
              v136 = a1;
              v137 = a2;
              v138 = 1;
LABEL_518:

              sub_298CAFACC(v136, v137, v138, a5);
              return;
            case 0x27uLL:
              v151 = a1;
              v152 = a2;
              v153 = 1;
LABEL_575:

              sub_298CAFC80(v151, v152, v153, a5);
              return;
            case 0x28uLL:
LABEL_367:
              sub_298CABB58(*(a2 + 16), 3u, a5);
              goto LABEL_369;
            case 0x29uLL:
LABEL_368:
              sub_298CABD60(*(a2 + 16), 3u, a5);
LABEL_369:
              sub_298CAAB6C(a5, 91);
              sub_298CAA168(a1, *(a2 + 16), 4u, a5);
              sub_298B00584(a5, ", ");
              v171 = *(a2 + 16);
              v172 = 5;
              goto LABEL_370;
            case 0x2AuLL:
              sub_298CAA7EC(a1, a2, 1u, a5);
              goto LABEL_352;
            case 0x2BuLL:
LABEL_372:
              v128 = *(a2 + 16);
              v129 = a1;
              v130 = 3;
              goto LABEL_373;
            case 0x2CuLL:
              sub_298CAAA14(a1, a2, 1u, a5);
              goto LABEL_361;
            case 0x2DuLL:
              goto LABEL_592;
            case 0x2EuLL:
              goto LABEL_218;
            case 0x2FuLL:
              v132 = ",  vgx2], ";
              goto LABEL_353;
            case 0x30uLL:
              v132 = ",  vgx4], ";
              goto LABEL_353;
            case 0x31uLL:
              v132 = "/z, [";
              goto LABEL_353;
            case 0x32uLL:
              sub_298CAFE30(a1, *(a2 + 16), 1u, a5);
LABEL_352:
              v132 = ", ";
              goto LABEL_353;
            case 0x33uLL:
LABEL_376:
              v190 = *(a2 + 16);

              sub_298CAEC7C(a1, v190, 2u, a5);
              return;
            case 0x34uLL:
              v139 = *(a2 + 16);

              sub_298CAACB4(a1, v139, 2u, a5);
              return;
            case 0x35uLL:
              v179 = *(a2 + 16);

              sub_298CAACE8(a1, v179, 2u, a5);
              return;
            case 0x36uLL:
              v180 = *(a2 + 16);

              sub_298CAAD50(a1, v180, 2u, a5);
              return;
            case 0x37uLL:
              sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 3u, a5);
              v140 = a2;
              v141 = 4;
              goto LABEL_468;
            case 0x38uLL:
              sub_298CAED7C(*(*(a2 + 16) + 24), a5);
              goto LABEL_361;
            case 0x39uLL:
              v56 = *(a2 + 16);
              v57 = a1;
              v58 = 0;
              goto LABEL_273;
            case 0x3AuLL:
              sub_298CABF68(a1, a2, 1u, a5);
              sub_298B00584(a5, ", ");
LABEL_333:
              v157 = *(a2 + 16);
              v158 = a1[49];
              v159 = a1[48];
              v160 = 2;
              goto LABEL_360;
            case 0x3BuLL:
              sub_298CAC750(a1, a2, 1u, a5);
              sub_298B00584(a5, ", ");
              sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
LABEL_467:
              v140 = a2;
              v141 = 3;
LABEL_468:

              sub_298CAC870(v140, v141, a5);
              return;
            case 0x3CuLL:
              sub_298CAE560(a1, *(a2 + 16), 4u, a5);
              goto LABEL_276;
            case 0x3DuLL:
              sub_298CAEB3C(a1, *(a2 + 16), 4u, a5);
              goto LABEL_276;
            case 0x3EuLL:
              v28 = ", vgx2]";
              goto LABEL_597;
            case 0x3FuLL:
              v28 = ", vgx4]";
              goto LABEL_597;
            case 0x40uLL:
              sub_298CABB58(*(a2 + 16), 1u, a5);
              goto LABEL_312;
            case 0x41uLL:
              sub_298CABD60(*(a2 + 16), 1u, a5);
LABEL_312:
              sub_298CAAB6C(a5, 91);
              sub_298CAA168(a1, *(a2 + 16), 3u, a5);
              sub_298B00584(a5, ", ");
              v171 = *(a2 + 16);
              v172 = 4;
LABEL_370:
              sub_298CACA88(v171, v172, a5);
              goto LABEL_276;
            case 0x42uLL:
              v148 = *(*(a2 + 16) + 24);
              v149 = a1[49];
              v150 = a1[48];

              sub_298CAFF30(v150, v149, v148, a5);
              return;
            case 0x43uLL:
              sub_298CABA58(a1, *(a2 + 16), 1u, a5);
              goto LABEL_361;
            case 0x44uLL:
              sub_298CACA88(*(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", mul vl], ");
              v142 = *(a2 + 16);

              sub_298CAA7BC(a1, v142, 2u, a5);
              return;
            case 0x45uLL:
              sub_298CB0010(*(a2 + 16), 1u, a5);
              v131 = "], ";
LABEL_396:
              sub_298B00584(a5, v131);
              v19 = *(a2 + 16);
              v20 = a1;
              v21 = 2;
              goto LABEL_397;
            case 0x46uLL:
              goto LABEL_211;
            case 0x47uLL:
LABEL_680:
              v25 = *(a2 + 16);
              v26 = a1;
              v27 = 3;
              goto LABEL_681;
            case 0x48uLL:
              v181 = *(a2 + 16);
              v182 = a1;
              v183 = 3;
LABEL_620:

              sub_298CAB860(v182, v181, v183, a5);
              return;
            case 0x49uLL:
              sub_298CB007C(a1, *(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", ");
              goto LABEL_350;
            case 0x4AuLL:
              v132 = ", [";
LABEL_353:
              sub_298B00584(a5, v132);
              goto LABEL_361;
            case 0x4BuLL:
              v59 = *(a2 + 16);
              v60 = a1;
              v61 = 4;
              goto LABEL_306;
            case 0x4CuLL:
              v86 = *(a2 + 16);
              v87 = a1;
              v88 = 4;
              goto LABEL_233;
            case 0x4DuLL:
              v67 = *(a2 + 16);
              v68 = a1;
              v69 = 4;
              goto LABEL_355;
            case 0x4EuLL:
              v70 = *(a2 + 16);
              v71 = a1;
              v72 = 4;
              goto LABEL_228;
            case 0x4FuLL:
              v111 = *(a2 + 16);
              v112 = a1;
              v113 = 4;
              goto LABEL_242;
            case 0x50uLL:
              v89 = *(a2 + 16);
              v90 = a1;
              v91 = 4;
              goto LABEL_285;
            case 0x51uLL:
              v108 = *(a2 + 16);
              v109 = a1;
              v110 = 4;
              goto LABEL_281;
            case 0x52uLL:
              v98 = *(a2 + 16);
              v99 = a1;
              v100 = 4;
              goto LABEL_224;
            case 0x53uLL:
              v83 = *(a2 + 16);
              v84 = a1;
              v85 = 4;
              goto LABEL_220;
            case 0x54uLL:
              v105 = *(a2 + 16);
              v106 = a1;
              v107 = 4;
              goto LABEL_324;
            case 0x55uLL:
              sub_298CAC9CC(a1, *(a2 + 16), 1u, a5);
              goto LABEL_274;
            case 0x56uLL:
              sub_298CB00E8(*(a2 + 16), 1u, a5);
              sub_298B00584(a5, ", ");
              sub_298CB00E8(*(a2 + 16), 2u, a5);
              sub_298B00584(a5, ", ");
              sub_298CAA168(a1, *(a2 + 16), 3u, a5);
              sub_298B00584(a5, ", ");
              goto LABEL_361;
            case 0x57uLL:
              sub_298CAA8A4(a1, a2, 1u, a5);
              goto LABEL_238;
            case 0x58uLL:
              sub_298CABF68(a1, a2, 2u, a5);
              sub_298B00584(a5, ", ");
              v157 = *(a2 + 16);
              v158 = a1[49];
              v159 = a1[48];
              v160 = 3;
LABEL_360:
              sub_298CAA6C8(v159, v158, v157, v160, a5);
              goto LABEL_361;
            case 0x59uLL:
              goto LABEL_276;
            default:
              v124 = *(a2 + 16);
              v125 = a1;
              v126 = 1;
LABEL_339:
              sub_298CAA168(v125, v124, v126, a5);
LABEL_361:
              switch((v12 >> 36) & 0x7F)
              {
                case 1uLL:
                  v184 = *(a2 + 16);
                  v185 = a1;
                  v186 = 3;
                  goto LABEL_479;
                case 2uLL:
                  goto LABEL_592;
                case 3uLL:
                  goto LABEL_363;
                case 4uLL:
                  goto LABEL_393;
                case 5uLL:
                  sub_298CAA588(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_458;
                case 6uLL:
                  goto LABEL_456;
                case 7uLL:
                  v213 = *(a2 + 16);
                  v214 = a1;
                  v215 = 2;
                  goto LABEL_448;
                case 8uLL:
                  goto LABEL_44;
                case 9uLL:
                  sub_298CAA308(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_458;
                case 0xAuLL:
                  v216 = a1;
                  v217 = a2;
                  v218 = 4;
                  goto LABEL_452;
                case 0xBuLL:
                  v204 = a1;
                  v205 = a2;
                  v206 = 4;
                  goto LABEL_442;
                case 0xCuLL:

                  sub_298CB0220(a1, a2, a5);
                  return;
                case 0xDuLL:
                  v203 = "/z, ";
                  goto LABEL_457;
                case 0xEuLL:
                  v219 = *(a2 + 16);
                  v220 = a1;
                  v221 = 2;
                  goto LABEL_444;
                case 0xFuLL:
                  v222 = a1;
                  v223 = a2;
                  v224 = 4;
                  goto LABEL_439;
                case 0x10uLL:
                  v213 = *(a2 + 16);
                  v214 = a1;
                  v215 = 3;
                  goto LABEL_448;
                case 0x11uLL:
                  v222 = a1;
                  v223 = a2;
                  v224 = 2;
LABEL_439:
                  sub_298CAA95C(v222, v223, v224, a5);
                  goto LABEL_458;
                case 0x12uLL:
                  sub_298CAA448(a1, *(a2 + 16), 4u, a5);
                  sub_298B00584(a5, ", ");
                  v213 = *(a2 + 16);
                  v214 = a1;
                  v215 = 5;
LABEL_448:
                  sub_298CAA448(v214, v213, v215, a5);
                  goto LABEL_458;
                case 0x13uLL:
LABEL_471:
                  v187 = *(a2 + 16);
                  v188 = a1;
                  v189 = 5;
                  goto LABEL_364;
                case 0x14uLL:
                  v203 = ", [";
                  goto LABEL_457;
                case 0x15uLL:
                  v28 = ", #0";
                  goto LABEL_597;
                case 0x16uLL:
                  v131 = ", mul ";
                  goto LABEL_396;
                case 0x17uLL:
                  v173 = a1;
                  v174 = a2;
                  v175 = 3;
                  goto LABEL_495;
                case 0x18uLL:
                  v136 = a1;
                  v137 = a2;
                  v138 = 3;
                  goto LABEL_518;
                case 0x19uLL:
                  v151 = a1;
                  v152 = a2;
                  v153 = 3;
                  goto LABEL_575;
                case 0x1AuLL:
                  v219 = *(a2 + 16);
                  v220 = a1;
                  v221 = 3;
LABEL_444:
                  sub_298CAA168(v220, v219, v221, a5);
                  goto LABEL_458;
                case 0x1BuLL:
                  v117 = a1;
                  v118 = a2;
                  v119 = 2;
                  goto LABEL_434;
                case 0x1CuLL:
                  goto LABEL_371;
                case 0x1DuLL:
                  goto LABEL_367;
                case 0x1EuLL:
                  goto LABEL_368;
                case 0x1FuLL:
LABEL_460:
                  v33 = *(a2 + 16);
                  v34 = a1;
                  v35 = 2;
                  goto LABEL_50;
                case 0x20uLL:
                  v216 = a1;
                  v217 = a2;
                  v218 = 2;
LABEL_452:
                  sub_298CAA8A4(v216, v217, v218, a5);
                  goto LABEL_458;
                case 0x21uLL:
                  v204 = a1;
                  v205 = a2;
                  v206 = 2;
LABEL_442:
                  sub_298CAAA14(v204, v205, v206, a5);
                  goto LABEL_458;
                case 0x22uLL:
                  goto LABEL_596;
                case 0x23uLL:
                  goto LABEL_372;
                case 0x24uLL:
                  v28 = ".2s";
                  goto LABEL_597;
                case 0x25uLL:
                  goto LABEL_391;
                case 0x26uLL:
                  goto LABEL_130;
                case 0x27uLL:
                  goto LABEL_474;
                case 0x28uLL:
                  sub_298B00584(a5, ".8h, ");
                  sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
LABEL_474:
                  v28 = ".8h";
                  goto LABEL_597;
                case 0x29uLL:
                  sub_298B00584(a5, ".4h, ");
                  sub_298CAA6C8(a1[48], a1[49], *(a2 + 16), 2u, a5);
LABEL_391:
                  v28 = ".4h";
                  goto LABEL_597;
                case 0x2AuLL:
                  sub_298B00584(a5, ".4s, ");
                  v73 = *(a2 + 16);
                  v74 = a1[49];
                  v75 = a1[48];
                  v76 = 2;
                  goto LABEL_129;
                case 0x2BuLL:
                  goto LABEL_127;
                case 0x2CuLL:
                  sub_298CAA7EC(a1, a2, 4u, a5);
                  goto LABEL_393;
                case 0x2DuLL:
                  sub_298CAA1C8(a1, *(a2 + 16), 4u, a5);
                  sub_298B00584(a5, ", ");
                  v184 = *(a2 + 16);
                  v185 = a1;
                  v186 = 5;
LABEL_479:
                  sub_298CAA1C8(v185, v184, v186, a5);
                  goto LABEL_458;
                case 0x2EuLL:
LABEL_472:
                  v133 = *(a2 + 16);
                  v134 = a1;
                  v135 = 5;
                  goto LABEL_593;
                case 0x2FuLL:
                  goto LABEL_276;
                case 0x30uLL:
LABEL_461:
                  v235 = *(a2 + 16);

                  sub_298CAFE30(a1, v235, 2u, a5);
                  return;
                case 0x31uLL:
                  goto LABEL_376;
                case 0x32uLL:
                  sub_298CACA88(*(a2 + 16), 3u, a5);
                  sub_298B00584(a5, "], ");
                  sub_298CAA7BC(a1, *(a2 + 16), 4u, a5);
LABEL_456:
                  v203 = "/m, ";
                  goto LABEL_457;
                case 0x33uLL:
                  sub_298B00584(a5, "/z, [");
                  sub_298CAA168(a1, *(a2 + 16), 2u, a5);
LABEL_393:
                  v203 = ", ";
                  goto LABEL_457;
                case 0x34uLL:
                  sub_298CACA88(*(a2 + 16), 2u, a5);
                  sub_298B00584(a5, "]}, ");
                  sub_298CAA7BC(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_458;
                case 0x35uLL:
                  v28 = "], #4";
                  goto LABEL_597;
                case 0x36uLL:
LABEL_604:
                  v28 = "], #8";
                  goto LABEL_597;
                case 0x37uLL:
                  goto LABEL_414;
                case 0x38uLL:
                  goto LABEL_467;
                case 0x39uLL:
LABEL_466:
                  sub_298CAA7BC(a1, *(a2 + 16), 2u, a5);
                  goto LABEL_467;
                case 0x3AuLL:
                  v225 = *(a2 + 16);

                  sub_298CB07F8(a1, v225, a5);
                  return;
                case 0x3BuLL:
                  sub_298CAE560(a1, *(a2 + 16), 3u, a5);
                  v203 = "], ";
                  goto LABEL_457;
                case 0x3CuLL:
                  sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
LABEL_414:
                  v203 = "], ";
LABEL_457:
                  sub_298B00584(a5, v203);
                  goto LABEL_458;
                case 0x3DuLL:
                  v176 = *(a2 + 16);
                  v177 = a1;
                  v178 = 2;
                  goto LABEL_407;
                case 0x3EuLL:
                  sub_298CAAB6C(a5, 91);
                  sub_298CB0010(*(a2 + 16), 2u, a5);
                  goto LABEL_276;
                case 0x3FuLL:
                  v194 = *(a2 + 16);
                  v195 = a1;
                  v196 = 3;
LABEL_561:
                  sub_298CB0810(v195, v194, v196, a5);
                  goto LABEL_276;
                case 0x40uLL:
                  v207 = *(a2 + 16);
                  v208 = a1;
                  v209 = 3;
LABEL_612:
                  sub_298CB0984(v208, v207, v209, a5);
                  goto LABEL_276;
                case 0x41uLL:
                  v245 = *(a2 + 16);
                  v246 = a1;
                  v247 = 3;
LABEL_523:
                  sub_298CB0C70(v246, v245, v247, a5);
                  goto LABEL_276;
                case 0x42uLL:
LABEL_464:
                  sub_298CAA168(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_276;
                case 0x43uLL:
LABEL_602:
                  sub_298CB0F5C(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x44uLL:
LABEL_601:
                  sub_298CB1248(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x45uLL:
                  v200 = a1;
                  v201 = a2;
                  v202 = 3;
LABEL_532:
                  sub_298CB1534(v200, v201, v202, a5);
                  goto LABEL_276;
                case 0x46uLL:
                  v232 = *(a2 + 16);
                  v233 = a1;
                  v234 = 3;
LABEL_539:
                  sub_298CB166C(v233, v232, v234, a5);
                  goto LABEL_276;
                case 0x47uLL:
                  v236 = *(a2 + 16);
                  v237 = a1;
                  v238 = 3;
LABEL_573:
                  sub_298CB184C(v237, v236, v238, a5);
                  goto LABEL_276;
                case 0x48uLL:
                  v242 = *(a2 + 16);
                  v243 = a1;
                  v244 = 3;
LABEL_509:
                  sub_298CB1A2C(v243, v242, v244, a5);
                  goto LABEL_276;
                case 0x49uLL:
                  sub_298CB1C0C(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_276;
                case 0x4AuLL:
                  sub_298CB1D20(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x4BuLL:
                  sub_298CB1F00(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x4CuLL:
                  sub_298CB20E0(a1, a2, a5);
                  goto LABEL_276;
                case 0x4DuLL:
                  v191 = *(a2 + 16);
                  v192 = a1;
                  v193 = 3;
LABEL_579:
                  sub_298CB2220(v192, v191, v193, a5);
                  goto LABEL_276;
                case 0x4EuLL:
                  v197 = *(a2 + 16);
                  v198 = a1;
                  v199 = 3;
LABEL_571:
                  sub_298CB2400(v198, v197, v199, a5);
                  goto LABEL_276;
                case 0x4FuLL:
                  v210 = *(a2 + 16);
                  v211 = a1;
                  v212 = 3;
LABEL_513:
                  sub_298CB25E0(v211, v210, v212, a5);
                  goto LABEL_276;
                case 0x50uLL:
LABEL_465:
                  sub_298CB27C0(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_276;
                case 0x51uLL:
LABEL_603:
                  sub_298CB28D4(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x52uLL:
LABEL_600:
                  sub_298CB2AB4(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x53uLL:
LABEL_684:
                  sub_298CB2C94(a1, a2, 3u, a5);
                  goto LABEL_276;
                case 0x54uLL:
                  v226 = *(a2 + 16);
                  v227 = a1;
                  v228 = 3;
LABEL_609:
                  sub_298CB2DCC(v227, v226, v228, a5);
                  goto LABEL_276;
                case 0x55uLL:
                  v229 = *(a2 + 16);
                  v230 = a1;
                  v231 = 3;
LABEL_548:
                  sub_298CB2FAC(v230, v229, v231, a5);
                  goto LABEL_276;
                case 0x56uLL:
                  v239 = *(a2 + 16);
                  v240 = a1;
                  v241 = 3;
LABEL_507:
                  sub_298CB318C(v240, v239, v241, a5);
                  goto LABEL_276;
                case 0x57uLL:
                  sub_298CB336C(a1, *(a2 + 16), 3u, a5);
                  goto LABEL_276;
                case 0x58uLL:
LABEL_606:
                  sub_298CB3480(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x59uLL:
LABEL_605:
                  sub_298CB3660(a1, *(a2 + 16), a5);
                  goto LABEL_276;
                case 0x5AuLL:
                  v28 = "/z";
                  goto LABEL_597;
                case 0x5BuLL:
                  sub_298CAA7EC(a1, a2, 2u, a5);
LABEL_458:
                  switch((v12 >> 43) & 0x7F)
                  {
                    case 1uLL:
                      v273 = *(a2 + 16);
                      v274 = a1;
                      v275 = 3;
                      goto LABEL_569;
                    case 2uLL:
                      v263 = *(a2 + 16);
                      v264 = a1;
                      v265 = 3;
                      goto LABEL_529;
                    case 3uLL:
                      v279 = *(a2 + 16);
                      v280 = a1;
                      v281 = 2;
                      goto LABEL_587;
                    case 4uLL:
                      v282 = a1;
                      v283 = a2;
                      v284 = 2;
                      goto LABEL_589;
                    case 5uLL:
                      v270 = *(a2 + 16);
                      v271 = a1;
                      v272 = 2;
                      goto LABEL_546;
                    case 6uLL:
                      v273 = *(a2 + 16);
                      v274 = a1;
                      v275 = 2;
LABEL_569:
                      sub_298CAA308(v274, v273, v275, a5);
                      goto LABEL_590;
                    case 7uLL:
                      v270 = *(a2 + 16);
                      v271 = a1;
                      v272 = 3;
LABEL_546:
                      sub_298CAA448(v271, v270, v272, a5);
                      goto LABEL_590;
                    case 8uLL:
                      v266 = *(a2 + 16);
                      v267 = a1[49];
                      v268 = a1[48];
                      v269 = 2;
                      goto LABEL_567;
                    case 9uLL:
                      v266 = *(a2 + 16);
                      v267 = a1[49];
                      v268 = a1[48];
                      v269 = 3;
LABEL_567:
                      sub_298CAA6C8(v268, v267, v266, v269, a5);
                      goto LABEL_590;
                    case 0xAuLL:
                      v257 = *(a2 + 16);
                      v258 = a1;
                      v259 = 2;
                      goto LABEL_535;
                    case 0xBuLL:
                      goto LABEL_585;
                    case 0xCuLL:
                      v263 = *(a2 + 16);
                      v264 = a1;
                      v265 = 2;
LABEL_529:
                      sub_298CAA588(v264, v263, v265, a5);
                      goto LABEL_590;
                    case 0xDuLL:

                      sub_298CB3ABC(a1, a2, 2u, a5);
                      return;
                    case 0xEuLL:

                      sub_298CB3E0C(a1, a2, a5);
                      return;
                    case 0xFuLL:

                      sub_298CB3E8C(a1, a2, a5);
                      return;
                    case 0x10uLL:

                      sub_298CB3F0C(a1, a2, a5);
                      return;
                    case 0x11uLL:

                      sub_298CB44E0(a1, a2, a5);
                      return;
                    case 0x12uLL:

                      sub_298CB4674(a1, a2, a5);
                      return;
                    case 0x13uLL:
                      v194 = *(a2 + 16);
                      v195 = a1;
                      v196 = 2;
                      goto LABEL_561;
                    case 0x14uLL:
                      v191 = *(a2 + 16);
                      v192 = a1;
                      v193 = 2;
                      goto LABEL_579;
                    case 0x15uLL:
                      v226 = *(a2 + 16);
                      v227 = a1;
                      v228 = 2;
                      goto LABEL_609;
                    case 0x16uLL:
                      v232 = *(a2 + 16);
                      v233 = a1;
                      v234 = 2;
                      goto LABEL_539;
                    case 0x17uLL:
                      sub_298CB4804(a1, *(a2 + 16), a5);
                      goto LABEL_276;
                    case 0x18uLL:
                      sub_298CB4978(a1, *(a2 + 16), a5);
                      goto LABEL_276;
                    case 0x19uLL:
                      sub_298CB4B58(a1, *(a2 + 16), a5);
                      goto LABEL_276;
                    case 0x1AuLL:
                      sub_298CB4D38(a1, *(a2 + 16), a5);
                      goto LABEL_276;
                    case 0x1BuLL:
                      v207 = *(a2 + 16);
                      v208 = a1;
                      v209 = 2;
                      goto LABEL_612;
                    case 0x1CuLL:
                      v197 = *(a2 + 16);
                      v198 = a1;
                      v199 = 2;
                      goto LABEL_571;
                    case 0x1DuLL:
                      v229 = *(a2 + 16);
                      v230 = a1;
                      v231 = 2;
                      goto LABEL_548;
                    case 0x1EuLL:
                      v236 = *(a2 + 16);
                      v237 = a1;
                      v238 = 2;
                      goto LABEL_573;
                    case 0x1FuLL:
                      v245 = *(a2 + 16);
                      v246 = a1;
                      v247 = 2;
                      goto LABEL_523;
                    case 0x20uLL:
                      v210 = *(a2 + 16);
                      v211 = a1;
                      v212 = 2;
                      goto LABEL_513;
                    case 0x21uLL:
                      v239 = *(a2 + 16);
                      v240 = a1;
                      v241 = 2;
                      goto LABEL_507;
                    case 0x22uLL:
                      v242 = *(a2 + 16);
                      v243 = a1;
                      v244 = 2;
                      goto LABEL_509;
                    case 0x23uLL:
                      v254 = *(a2 + 16);
                      v255 = a1[49];
                      v256 = a1[48];

                      sub_298CB4F18(v256, v255, v254, 2u, a5);
                      return;
                    case 0x24uLL:
                      v167 = *(a2 + 16);
                      v168 = a1[49];
                      v169 = a1[48];
                      v170 = 2;
                      goto LABEL_302;
                    case 0x25uLL:
LABEL_685:
                      v140 = a2;
                      v141 = 6;
                      goto LABEL_468;
                    case 0x26uLL:
                      sub_298CAC870(a2, 4u, a5);
                      goto LABEL_590;
                    case 0x27uLL:
                      goto LABEL_467;
                    case 0x28uLL:
                      v279 = *(a2 + 16);
                      v280 = a1;
                      v281 = 3;
LABEL_587:
                      sub_298CAA168(v280, v279, v281, a5);
                      goto LABEL_590;
                    case 0x29uLL:
                      v173 = a1;
                      v174 = a2;
                      v175 = 2;
                      goto LABEL_495;
                    case 0x2AuLL:
                      v136 = a1;
                      v137 = a2;
                      v138 = 2;
                      goto LABEL_518;
                    case 0x2BuLL:
                      v151 = a1;
                      v152 = a2;
                      v153 = 2;
                      goto LABEL_575;
                    case 0x2CuLL:
                      goto LABEL_596;
                    case 0x2DuLL:
                      v276 = a1;
                      v277 = a2;
                      v278 = 5;
                      goto LABEL_655;
                    case 0x2EuLL:
                      v257 = *(a2 + 16);
                      v258 = a1;
                      v259 = 5;
LABEL_535:
                      sub_298CAA1C8(v258, v257, v259, a5);
                      goto LABEL_590;
                    case 0x2FuLL:
                      goto LABEL_461;
                    case 0x30uLL:
                      goto LABEL_472;
                    case 0x31uLL:
                      v79 = *(a2 + 16);
                      v80 = a1;
                      v81 = 5;
                      goto LABEL_677;
                    case 0x32uLL:
                      v181 = *(a2 + 16);
                      v182 = a1;
                      v183 = 5;
                      goto LABEL_620;
                    case 0x33uLL:
                      goto LABEL_471;
                    case 0x34uLL:
                      goto LABEL_464;
                    case 0x35uLL:
LABEL_686:
                      sub_298CB20E0(a1, a2, a5);
                      goto LABEL_46;
                    case 0x36uLL:
                      goto LABEL_465;
                    case 0x37uLL:
                      v253 = "/z, [";
                      goto LABEL_584;
                    case 0x38uLL:
                      v22 = *(a2 + 16);
                      v23 = a1;
                      v24 = 4;
                      goto LABEL_275;
                    case 0x39uLL:
                      v282 = a1;
                      v283 = a2;
                      v284 = 3;
LABEL_589:
                      sub_298CB3984(v282, v283, v284, a5);
                      goto LABEL_590;
                    case 0x3AuLL:
                      v200 = a1;
                      v201 = a2;
                      v202 = 2;
                      goto LABEL_532;
                    case 0x3BuLL:
                      sub_298CB1534(a1, a2, 3u, a5);
                      v28 = "]!";
                      goto LABEL_597;
                    case 0x3CuLL:
                      sub_298CB50E8(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_276;
                    case 0x3DuLL:
                      sub_298CB50F4(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_276;
                    case 0x3EuLL:
                      sub_298CB5100(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_276;
                    case 0x3FuLL:
                      sub_298CB510C(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_276;
                    case 0x40uLL:
                      sub_298CB5118(a1, *(*(a2 + 16) + 32), *(*(a2 + 16) + 40), a5);
                      goto LABEL_276;
                    case 0x41uLL:
                      goto LABEL_466;
                    case 0x42uLL:
                      sub_298CAA1C8(a1, *(a2 + 16), 3u, a5);
                      sub_298B00584(a5, ", ");
                      v25 = *(a2 + 16);
                      v26 = a1;
                      v27 = 4;
                      goto LABEL_681;
                    case 0x43uLL:
                      sub_298CACA88(*(a2 + 16), 4u, a5);
                      goto LABEL_276;
                    case 0x44uLL:
                      sub_298CAE560(a1, *(a2 + 16), 3u, a5);
                      goto LABEL_276;
                    case 0x45uLL:
                      sub_298CAEB3C(a1, *(a2 + 16), 3u, a5);
                      goto LABEL_276;
                    case 0x46uLL:
                      v276 = a1;
                      v277 = a2;
                      v278 = 4;
                      goto LABEL_655;
                    case 0x47uLL:
                      v250 = a1;
                      v251 = a2;
                      v252 = 4;
                      goto LABEL_635;
                    case 0x48uLL:
                      v143 = a1;
                      v144 = a2;
                      v145 = 4;
                      goto LABEL_257;
                    case 0x49uLL:
                      v260 = a1;
                      v261 = a2;
                      v262 = 4;
                      goto LABEL_715;
                    case 0x4AuLL:
                      goto LABEL_276;
                    case 0x4BuLL:
                      goto LABEL_46;
                    case 0x4CuLL:
                      v276 = a1;
                      v277 = a2;
                      v278 = 2;
LABEL_655:

                      sub_298CAA7EC(v276, v277, v278, a5);
                      return;
                    case 0x4DuLL:
                      v250 = a1;
                      v251 = a2;
                      v252 = 2;
LABEL_635:

                      sub_298CAA8A4(v250, v251, v252, a5);
                      return;
                    case 0x4EuLL:
                      v260 = a1;
                      v261 = a2;
                      v262 = 2;
LABEL_715:

                      sub_298CAAA14(v260, v261, v262, a5);
                      return;
                    case 0x4FuLL:
                      v249 = *(a2 + 16);

                      sub_298CB007C(a1, v249, 2u, a5);
                      return;
                    case 0x50uLL:
                      v253 = ", [";
LABEL_584:
                      sub_298B00584(a5, v253);
                      sub_298CAA168(a1, *(a2 + 16), 4u, a5);
LABEL_585:
                      sub_298B00584(a5, ", ");
                      break;
                    case 0x51uLL:
                      sub_298CB00E8(*(a2 + 16), 2u, a5);
                      sub_298B00584(a5, ", ");
                      sub_298CB00E8(*(a2 + 16), 3u, a5);
                      v63 = a5;
                      v62 = ", ";
                      goto LABEL_117;
                    case 0x52uLL:
                      v36 = a1;
                      v37 = a2;
                      v38 = a3;
                      v39 = 2;
                      goto LABEL_215;
                    case 0x53uLL:
                      goto LABEL_460;
                    default:
                      return;
                  }

                  break;
                case 0x5CuLL:
                  v28 = ", #8";
                  goto LABEL_597;
                case 0x5DuLL:
                  v28 = ", #32";
                  goto LABEL_597;
                case 0x5EuLL:
                  v28 = ", #16";
                  goto LABEL_597;
                case 0x5FuLL:
                  v28 = ", #-4]!";
                  goto LABEL_597;
                case 0x60uLL:
LABEL_607:
                  v28 = ", #-8]!";
                  goto LABEL_597;
                case 0x61uLL:
                  v120 = *(a2 + 16);
                  v121 = a1;
                  v122 = 4;
                  goto LABEL_198;
                case 0x62uLL:
                  v248 = *(*(a2 + 16) + 72);

                  sub_298CB3840(v248, a5);
                  return;
                case 0x63uLL:
                  goto LABEL_118;
                case 0x64uLL:
                  v28 = ".16b";
                  goto LABEL_597;
                case 0x65uLL:
                  v28 = ".8b";
                  goto LABEL_597;
                case 0x66uLL:
                  v181 = *(a2 + 16);
                  v182 = a1;
                  v183 = 2;
                  goto LABEL_620;
                default:
                  return;
              }

              break;
          }

          break;
        case 0x4FuLL:

          sub_298CAB9A0(a1, a2, 1u, a5);
          return;
        case 0x50uLL:
          v28 = " }";
          goto LABEL_597;
        default:
          return;
      }

      break;
    case 0x4AuLL:
      sub_298CADE0C(a1, *(*(a2 + 16) + 8), a5);
      sub_298B00584(a5, ", ");
      v56 = *(a2 + 16);
      v57 = a1;
      v58 = 1;
LABEL_273:
      sub_298CAA168(v57, v56, v58, a5);
      goto LABEL_274;
    case 0x4BuLL:
      sub_298CAAA14(a1, a2, 0, a5);
      goto LABEL_106;
    case 0x4CuLL:
      sub_298CAA8A4(a1, a2, 0, a5);
LABEL_106:
      sub_298CAC870(a2, 1u, a5);
LABEL_274:
      sub_298B00584(a5, ", [");
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 2;
LABEL_275:
      sub_298CAA168(v23, v22, v24, a5);
LABEL_276:
      v50 = a5;
      v51 = 93;
LABEL_277:

      sub_298CAAB6C(v50, v51);
      return;
    case 0x4DuLL:
      v16 = *(*(a2 + 16) + 8);

      sub_298CAE034(a1, v16, a5);
      return;
    default:
      return;
  }

LABEL_590:
  switch((v12 >> 50) & 0x7F)
  {
    case 1uLL:
      v285 = ", ";
      goto LABEL_649;
    case 2uLL:
      v176 = *(a2 + 16);
      v177 = a1;
      v178 = 3;
      goto LABEL_407;
    case 3uLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 3;
      goto LABEL_673;
    case 4uLL:
      v295 = *(a2 + 16);

      sub_298CB5124(a1, v295, 3u, a5);
      return;
    case 5uLL:
      v250 = a1;
      v251 = a2;
      v252 = 5;
      goto LABEL_635;
    case 6uLL:
      v260 = a1;
      v261 = a2;
      v262 = 5;
      goto LABEL_715;
    case 7uLL:
      sub_298CAA308(a1, *(a2 + 16), 5u, a5);
      goto LABEL_674;
    case 8uLL:
      sub_298CAA588(a1, *(a2 + 16), 5u, a5);
      goto LABEL_674;
    case 9uLL:
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      goto LABEL_674;
    case 0xAuLL:
      goto LABEL_592;
    case 0xBuLL:
      sub_298CAC870(a2, 4u, a5);
      goto LABEL_674;
    case 0xCuLL:
      v143 = a1;
      v144 = a2;
      v145 = 5;
      goto LABEL_257;
    case 0xDuLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 5;
      goto LABEL_673;
    case 0xEuLL:
      v292 = *(a2 + 16);
      v293 = a1;
      v294 = 4;
LABEL_673:
      sub_298CAA448(v293, v292, v294, a5);
      goto LABEL_674;
    case 0xFuLL:
LABEL_690:
      v299 = *(a2 + 16);
      v300 = a1[49];
      v301 = a1[48];
      v302 = 3;
      goto LABEL_691;
    case 0x10uLL:
      goto LABEL_276;
    case 0x11uLL:
LABEL_706:
      v312 = *(a2 + 16);
      v313 = a1[49];
      v314 = a1[48];
      v315 = 4;
      goto LABEL_786;
    case 0x12uLL:
LABEL_687:
      v33 = *(a2 + 16);
      v34 = a1;
      v35 = 3;
      goto LABEL_50;
    case 0x13uLL:
LABEL_703:
      v309 = *(*(a2 + 16) + 56);
      v310 = a1[49];
      v311 = a1[48];

      sub_298CB5558(v311, v310, v309, a5);
      return;
    case 0x14uLL:
      goto LABEL_596;
    case 0x15uLL:
      goto LABEL_685;
    case 0x16uLL:
LABEL_697:
      v306 = *(*(a2 + 16) + 56);
      v307 = a1[49];
      v308 = a1[48];

      sub_298CB5648(v308, v307, v306, a5);
      return;
    case 0x17uLL:
      goto LABEL_467;
    case 0x18uLL:
LABEL_694:
      v303 = *(*(a2 + 16) + 56);
      v304 = a1[49];
      v305 = a1[48];

      sub_298CB5738(v305, v304, v303, a5);
      return;
    case 0x19uLL:
      sub_298CB0810(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x1AuLL:
      sub_298CB0984(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x1BuLL:
      sub_298CB0C70(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x1CuLL:
      goto LABEL_602;
    case 0x1DuLL:
      goto LABEL_601;
    case 0x1EuLL:
LABEL_701:
      sub_298CB1534(a1, a2, 3u, a5);
      goto LABEL_276;
    case 0x1FuLL:
      sub_298CB166C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x20uLL:
      sub_298CB184C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x21uLL:
      sub_298CB1A2C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x22uLL:
      sub_298CB20E0(a1, a2, a5);
      goto LABEL_674;
    case 0x23uLL:
      sub_298CB2220(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x24uLL:
      sub_298CB2400(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x25uLL:
      sub_298CB25E0(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x26uLL:
      goto LABEL_603;
    case 0x27uLL:
      goto LABEL_600;
    case 0x28uLL:
      sub_298CB2C94(a1, a2, 3u, a5);
      goto LABEL_674;
    case 0x29uLL:
      sub_298CB2DCC(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x2AuLL:
      sub_298CB2FAC(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x2BuLL:
      sub_298CB318C(a1, *(a2 + 16), 3u, a5);
      goto LABEL_276;
    case 0x2CuLL:
      goto LABEL_606;
    case 0x2DuLL:
      goto LABEL_605;
    case 0x2EuLL:
LABEL_702:
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 3;
      goto LABEL_275;
    case 0x2FuLL:
      v316 = *(a2 + 16);
      v317 = a1;
      v318 = 3;
      goto LABEL_713;
    case 0x30uLL:
LABEL_688:
      v289 = *(a2 + 16);
      v290 = a1;
      v291 = 3;
      goto LABEL_689;
    case 0x31uLL:
      sub_298CB5828(a1, a2, a5);
      goto LABEL_276;
    case 0x32uLL:
      v286 = *(a2 + 16);
      v287 = a1;
      v288 = 3;
      goto LABEL_641;
    case 0x33uLL:
LABEL_700:
      sub_298CB3984(a1, a2, 3u, a5);
      goto LABEL_276;
    case 0x34uLL:
      v22 = *(a2 + 16);
      v23 = a1;
      v24 = 5;
      goto LABEL_275;
    case 0x35uLL:
      v316 = *(a2 + 16);
      v317 = a1;
      v318 = 5;
LABEL_713:
      sub_298CB1C0C(v317, v316, v318, a5);
      goto LABEL_276;
    case 0x36uLL:
      v289 = *(a2 + 16);
      v290 = a1;
      v291 = 5;
LABEL_689:
      sub_298CB27C0(v290, v289, v291, a5);
      goto LABEL_276;
    case 0x37uLL:
      v296 = *(a2 + 16);
      v297 = a1;
      v298 = 5;
      goto LABEL_671;
    case 0x38uLL:
      v286 = *(a2 + 16);
      v287 = a1;
      v288 = 5;
LABEL_641:
      sub_298CB336C(v287, v286, v288, a5);
      goto LABEL_276;
    case 0x39uLL:
      v296 = *(a2 + 16);
      v297 = a1;
      v298 = 3;
LABEL_671:
      sub_298CB5968(v297, v296, v298, a5);
      goto LABEL_276;
    case 0x3AuLL:
      sub_298CB5A7C(a1, a2, a5);
      goto LABEL_46;
    case 0x3BuLL:
      goto LABEL_604;
    case 0x3CuLL:
      v28 = "], #16";
      goto LABEL_597;
    case 0x3DuLL:
      v285 = "], ";
LABEL_649:
      sub_298B00584(a5, v285);
LABEL_674:
      switch((v12 >> 57) & 0x3F)
      {
        case 1uLL:
          goto LABEL_680;
        case 2uLL:
          v319 = *(a2 + 16);
          v320 = a1;
          v321 = 3;
          goto LABEL_727;
        case 3uLL:
          return;
        case 4uLL:
          v322 = *(a2 + 16);
          v323 = a1;
          v324 = 3;
          goto LABEL_733;
        case 5uLL:
          v325 = *(a2 + 16);
          v326 = a1[49];
          v327 = a1[48];

          sub_298CAA6C8(v327, v326, v325, 3u, a5);
          return;
        case 6uLL:
          goto LABEL_685;
        case 7uLL:
          goto LABEL_118;
        case 8uLL:
          goto LABEL_690;
        case 9uLL:
          v328 = *(a2 + 16);

          sub_298CAB004(v328, 3u, a5);
          return;
        case 0xAuLL:
          sub_298B00584(a5, ", ");
          break;
        case 0xBuLL:
          goto LABEL_785;
        case 0xCuLL:
          goto LABEL_706;
        case 0xDuLL:
          goto LABEL_676;
        case 0xEuLL:
          goto LABEL_687;
        case 0xFuLL:
          goto LABEL_703;
        case 0x10uLL:
          v319 = *(a2 + 16);
          v320 = a1;
          v321 = 4;
LABEL_727:
          sub_298CAA308(v320, v319, v321, a5);
          break;
        case 0x11uLL:
          v322 = *(a2 + 16);
          v323 = a1;
          v324 = 4;
LABEL_733:
          sub_298CAA588(v323, v322, v324, a5);
          break;
        case 0x12uLL:
          goto LABEL_697;
        case 0x13uLL:
          goto LABEL_694;
        case 0x14uLL:
          goto LABEL_276;
        case 0x15uLL:
          goto LABEL_46;
        case 0x16uLL:
          goto LABEL_701;
        case 0x17uLL:
          goto LABEL_700;
        case 0x18uLL:
          goto LABEL_684;
        case 0x19uLL:
          sub_298CB1534(a1, a2, 4u, a5);
          break;
        case 0x1AuLL:
          sub_298CB3984(a1, a2, 4u, a5);
          break;
        case 0x1BuLL:
          sub_298CB2C94(a1, a2, 4u, a5);
          break;
        case 0x1CuLL:
          sub_298CB5BBC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x1DuLL:
          sub_298CB5BDC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x1EuLL:
          sub_298CB5BFC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x1FuLL:
          sub_298CB5C1C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x20uLL:
          sub_298CB5C3C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x21uLL:
          sub_298CB5C5C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x22uLL:
          sub_298CB5C7C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x23uLL:
          sub_298CB5C9C(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x24uLL:
          sub_298CB5CBC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x25uLL:
          sub_298CB5CDC(a1, *(*(a2 + 16) + 56), *(*(a2 + 16) + 72), a5);
          goto LABEL_276;
        case 0x26uLL:
          goto LABEL_702;
        case 0x27uLL:
          goto LABEL_686;
        case 0x28uLL:
          goto LABEL_688;
        case 0x29uLL:
          v146 = *(a2 + 16);
          v147 = 3;
          goto LABEL_262;
        default:
          v19 = *(a2 + 16);
          v20 = a1;
          v21 = 3;
          goto LABEL_397;
      }

      LODWORD(v329) = *a2;
      if (*a2 <= 3683)
      {
        if (v329 <= 2239)
        {
          switch(v329)
          {
            case 1365:
            case 1367:
            case 1368:
            case 1369:
            case 1370:
            case 1371:
            case 1372:
            case 1373:
            case 1374:
            case 1375:
            case 1376:
            case 1377:
            case 1378:
            case 1379:
            case 1380:
            case 1381:
            case 1382:
            case 1383:
            case 1384:
            case 1385:
            case 1386:
            case 1387:
            case 1388:
            case 1389:
            case 1390:
            case 1391:
            case 1392:
            case 1393:
            case 1394:
            case 1395:
            case 1396:
            case 1397:
            case 1398:
            case 1399:
            case 1400:
            case 1401:
            case 1402:
            case 1403:
            case 1404:
            case 1405:
            case 1406:
            case 1407:
            case 1408:
            case 1409:
            case 1410:
            case 1411:
            case 1412:
            case 1413:
            case 1414:
            case 1415:
            case 1416:
            case 1417:
            case 1418:
            case 1419:
            case 1420:
            case 1421:
            case 1422:
            case 1423:
            case 1424:
            case 1425:
            case 1426:
            case 1427:
            case 1430:
            case 1432:
            case 1433:
            case 1434:
            case 1435:
            case 1436:
            case 1437:
            case 1438:
            case 1439:
            case 1440:
            case 1441:
            case 1442:
            case 1443:
            case 1444:
            case 1445:
            case 1446:
            case 1447:
            case 1448:
            case 1449:
            case 1450:
            case 1451:
            case 1452:
            case 1453:
            case 1454:
            case 1455:
            case 1456:
            case 1457:
            case 1458:
            case 1459:
            case 1460:
            case 1461:
            case 1462:
            case 1463:
            case 1464:
            case 1465:
            case 1466:
            case 1467:
            case 1468:
            case 1469:
            case 1470:
            case 1471:
            case 1472:
            case 1473:
            case 1474:
            case 1475:
            case 1476:
            case 1477:
            case 1478:
            case 1479:
            case 1480:
            case 1481:
            case 1482:
            case 1483:
            case 1484:
            case 1485:
            case 1486:
            case 1487:
            case 1488:
            case 1489:
            case 1490:
            case 1492:
            case 1494:
            case 1495:
            case 1496:
            case 1497:
            case 1498:
            case 1499:
            case 1500:
            case 1501:
            case 1503:
            case 1505:
            case 1506:
            case 1508:
            case 1510:
            case 1511:
            case 1512:
            case 1513:
            case 1514:
            case 1515:
            case 1516:
            case 1517:
            case 1519:
            case 1521:
            case 1522:
            case 1523:
            case 1524:
            case 1525:
            case 1526:
            case 1527:
            case 1528:
            case 1529:
            case 1530:
            case 1531:
            case 1532:
            case 1533:
            case 1534:
            case 1535:
            case 1536:
            case 1537:
            case 1538:
            case 1539:
            case 1540:
            case 1541:
            case 1542:
            case 1543:
            case 1544:
            case 1545:
            case 1546:
            case 1547:
            case 1549:
            case 1550:
            case 1551:
            case 1552:
            case 1553:
            case 1554:
            case 1555:
            case 1556:
            case 1557:
            case 1558:
            case 1559:
            case 1560:
            case 1561:
            case 1562:
            case 1563:
            case 1564:
            case 1565:
            case 1566:
            case 1567:
            case 1568:
            case 1569:
            case 1570:
            case 1571:
            case 1572:
            case 1573:
            case 1574:
            case 1575:
            case 1576:
            case 1577:
            case 1578:
            case 1579:
            case 1580:
            case 1581:
            case 1582:
            case 1583:
            case 1584:
            case 1585:
            case 1586:
            case 1587:
            case 1588:
            case 1589:
            case 1590:
            case 1591:
            case 1592:
            case 1593:
            case 1594:
            case 1595:
            case 1596:
            case 1597:
            case 1598:
            case 1599:
            case 1600:
            case 1601:
            case 1602:
            case 1603:
            case 1604:
            case 1605:
            case 1606:
            case 1607:
            case 1608:
            case 1609:
            case 1610:
            case 1611:
            case 1612:
            case 1613:
            case 1614:
            case 1615:
            case 1616:
            case 1617:
            case 1618:
            case 1619:
            case 1620:
            case 1621:
            case 1622:
            case 1623:
            case 1624:
            case 1625:
            case 1626:
            case 1627:
            case 1628:
            case 1629:
            case 1630:
            case 1631:
            case 1632:
            case 1633:
            case 1634:
            case 1635:
            case 1636:
            case 1637:
            case 1638:
            case 1639:
            case 1640:
            case 1641:
            case 1642:
            case 1643:
            case 1644:
            case 1645:
            case 1646:
            case 1647:
            case 1648:
            case 1649:
            case 1650:
            case 1651:
            case 1652:
            case 1653:
            case 1654:
            case 1655:
            case 1656:
            case 1657:
            case 1658:
            case 1659:
            case 1660:
            case 1661:
            case 1662:
            case 1663:
            case 1664:
            case 1665:
            case 1666:
            case 1667:
            case 1668:
            case 1669:
            case 1670:
            case 1671:
            case 1672:
            case 1673:
            case 1674:
            case 1675:
            case 1676:
            case 1677:
            case 1678:
            case 1679:
            case 1680:
            case 1681:
            case 1682:
            case 1683:
            case 1684:
            case 1685:
            case 1686:
            case 1687:
            case 1688:
            case 1690:
            case 1692:
            case 1693:
            case 1694:
            case 1695:
            case 1696:
            case 1697:
            case 1698:
            case 1699:
            case 1700:
            case 1701:
            case 1702:
            case 1703:
            case 1704:
            case 1705:
            case 1706:
            case 1707:
            case 1708:
            case 1709:
            case 1710:
            case 1711:
            case 1712:
            case 1713:
            case 1714:
            case 1715:
            case 1716:
            case 1717:
            case 1718:
            case 1719:
            case 1720:
            case 1721:
            case 1722:
            case 1723:
            case 1724:
            case 1725:
            case 1726:
            case 1727:
            case 1728:
            case 1729:
            case 1730:
            case 1734:
            case 1735:
            case 1736:
            case 1737:
            case 1738:
            case 1739:
            case 1740:
            case 1741:
            case 1742:
            case 1743:
            case 1744:
            case 1745:
            case 1746:
            case 1747:
            case 1748:
            case 1749:
            case 1750:
            case 1751:
            case 1752:
            case 1753:
            case 1754:
            case 1755:
            case 1756:
            case 1757:
            case 1758:
            case 1759:
            case 1760:
            case 1761:
            case 1762:
            case 1763:
            case 1764:
            case 1765:
            case 1766:
            case 1767:
            case 1768:
            case 1769:
            case 1770:
            case 1771:
            case 1772:
            case 1773:
            case 1774:
            case 1775:
            case 1776:
            case 1778:
            case 1779:
            case 1780:
            case 1781:
            case 1782:
            case 1783:
            case 1785:
            case 1787:
            case 1789:
            case 1791:
            case 1793:
            case 1795:
            case 1797:
            case 1799:
            case 1801:
            case 1803:
            case 1805:
            case 1807:
            case 1808:
            case 1809:
            case 1810:
            case 1811:
            case 1812:
            case 1813:
            case 1814:
            case 1815:
            case 1816:
            case 1817:
            case 1818:
            case 1819:
            case 1820:
            case 1821:
            case 1822:
            case 1823:
            case 1824:
            case 1825:
            case 1826:
            case 1827:
            case 1828:
            case 1829:
            case 1830:
            case 1831:
            case 1832:
            case 1833:
            case 1834:
            case 1835:
            case 1836:
            case 1837:
            case 1838:
            case 1839:
            case 1840:
            case 1841:
            case 1842:
            case 1843:
            case 1844:
            case 1845:
            case 1846:
            case 1847:
            case 1848:
            case 1849:
            case 1850:
            case 1851:
            case 1852:
            case 1853:
            case 1854:
            case 1855:
            case 1856:
            case 1857:
            case 1858:
            case 1859:
            case 1860:
            case 1861:
            case 1862:
            case 1863:
            case 1864:
            case 1865:
            case 1866:
            case 1867:
            case 1868:
            case 1869:
            case 1870:
            case 1871:
            case 1872:
            case 1873:
            case 1874:
            case 1875:
            case 1876:
            case 1877:
            case 1878:
            case 1879:
            case 1880:
            case 1881:
            case 1882:
            case 1883:
            case 1884:
            case 1885:
            case 1886:
            case 1887:
            case 1888:
            case 1889:
            case 1890:
            case 1891:
            case 1892:
            case 1893:
            case 1894:
            case 1895:
            case 1896:
            case 1898:
            case 1899:
            case 1900:
            case 1901:
            case 1902:
            case 1903:
            case 1904:
            case 1905:
            case 1906:
            case 1907:
            case 1908:
            case 1909:
            case 1910:
            case 1911:
            case 1912:
            case 1913:
            case 1914:
            case 1915:
            case 1916:
            case 1917:
            case 1918:
            case 1919:
            case 1920:
            case 1921:
            case 1922:
            case 1924:
            case 1927:
            case 1929:
            case 1930:
            case 1931:
            case 1932:
            case 1933:
            case 1935:
            case 1938:
            case 1940:
            case 1941:
            case 1942:
            case 1943:
            case 1944:
            case 1946:
            case 1949:
            case 1951:
            case 1952:
            case 1953:
            case 1954:
            case 1955:
            case 1957:
            case 1960:
            case 1962:
            case 1963:
            case 1964:
            case 1965:
            case 1966:
            case 1968:
            case 1971:
            case 1973:
            case 1974:
            case 1975:
            case 1976:
            case 1978:
            case 1980:
            case 1981:
            case 1982:
            case 1983:
            case 1985:
            case 1987:
            case 1988:
            case 1989:
            case 1990:
            case 1992:
            case 1994:
            case 1995:
            case 1996:
            case 1997:
            case 1999:
            case 2001:
            case 2002:
            case 2003:
            case 2004:
            case 2005:
            case 2007:
            case 2010:
              goto LABEL_802;
            case 1777:
            case 1897:
              goto LABEL_778;
            default:
              return;
          }
        }

        else if (v329 <= 2799)
        {
          switch(v329)
          {
            case 2241:
            case 2242:
            case 2243:
            case 2244:
            case 2245:
            case 2246:
            case 2247:
            case 2248:
            case 2249:
            case 2250:
            case 2251:
            case 2252:
            case 2253:
            case 2254:
            case 2255:
            case 2256:
            case 2257:
            case 2258:
            case 2259:
            case 2260:
            case 2261:
            case 2262:
            case 2263:
            case 2264:
            case 2266:
            case 2268:
            case 2269:
            case 2270:
            case 2271:
            case 2272:
            case 2273:
            case 2274:
            case 2275:
            case 2276:
            case 2277:
            case 2278:
            case 2279:
            case 2280:
            case 2281:
            case 2282:
            case 2283:
            case 2284:
            case 2285:
            case 2286:
            case 2287:
            case 2288:
            case 2289:
            case 2290:
            case 2291:
            case 2292:
            case 2293:
            case 2294:
            case 2295:
            case 2296:
            case 2297:
            case 2298:
            case 2299:
            case 2300:
            case 2301:
            case 2302:
            case 2303:
            case 2304:
            case 2305:
            case 2307:
            case 2309:
            case 2310:
            case 2311:
            case 2312:
            case 2313:
            case 2314:
            case 2315:
            case 2316:
            case 2317:
            case 2318:
            case 2319:
            case 2320:
            case 2321:
            case 2322:
            case 2323:
            case 2324:
            case 2325:
            case 2326:
            case 2327:
            case 2329:
            case 2331:
            case 2332:
            case 2333:
            case 2334:
            case 2335:
            case 2336:
            case 2337:
            case 2338:
            case 2340:
            case 2342:
            case 2343:
            case 2344:
            case 2345:
            case 2346:
            case 2347:
            case 2348:
            case 2349:
            case 2350:
            case 2351:
            case 2353:
            case 2355:
            case 2356:
            case 2357:
            case 2358:
            case 2359:
            case 2360:
            case 2361:
            case 2362:
            case 2363:
            case 2364:
            case 2365:
            case 2366:
            case 2367:
            case 2368:
            case 2369:
            case 2370:
            case 2371:
            case 2372:
            case 2373:
            case 2374:
            case 2375:
            case 2376:
            case 2377:
            case 2378:
            case 2380:
            case 2382:
            case 2383:
            case 2384:
            case 2385:
            case 2386:
            case 2387:
            case 2388:
            case 2389:
            case 2390:
            case 2391:
            case 2392:
            case 2393:
            case 2394:
            case 2395:
            case 2397:
            case 2399:
            case 2400:
            case 2401:
            case 2402:
            case 2403:
            case 2404:
            case 2405:
            case 2406:
            case 2407:
            case 2408:
            case 2409:
            case 2411:
            case 2413:
            case 2414:
            case 2415:
            case 2416:
            case 2417:
            case 2421:
            case 2422:
            case 2423:
            case 2424:
            case 2425:
            case 2426:
            case 2427:
            case 2428:
            case 2429:
            case 2430:
            case 2431:
            case 2432:
            case 2433:
            case 2434:
            case 2435:
            case 2436:
            case 2437:
            case 2438:
            case 2439:
            case 2440:
            case 2441:
            case 2442:
            case 2443:
            case 2444:
            case 2445:
            case 2446:
            case 2448:
            case 2450:
            case 2451:
            case 2452:
            case 2453:
            case 2454:
            case 2455:
            case 2456:
            case 2457:
            case 2458:
            case 2459:
            case 2460:
            case 2461:
            case 2462:
            case 2463:
            case 2464:
            case 2465:
            case 2466:
            case 2467:
            case 2468:
            case 2470:
            case 2472:
            case 2473:
            case 2474:
            case 2475:
            case 2476:
            case 2477:
            case 2478:
            case 2479:
            case 2480:
            case 2481:
            case 2482:
            case 2483:
            case 2484:
            case 2485:
            case 2486:
            case 2487:
            case 2488:
            case 2489:
            case 2490:
            case 2492:
            case 2494:
            case 2495:
            case 2496:
            case 2497:
            case 2498:
            case 2499:
            case 2500:
            case 2501:
            case 2502:
            case 2503:
            case 2504:
            case 2505:
            case 2506:
            case 2510:
            case 2512:
            case 2513:
            case 2514:
            case 2516:
            case 2518:
            case 2520:
            case 2521:
            case 2522:
            case 2523:
            case 2524:
            case 2525:
            case 2526:
            case 2527:
            case 2528:
            case 2529:
            case 2530:
            case 2531:
            case 2532:
            case 2533:
            case 2534:
            case 2535:
            case 2536:
            case 2537:
            case 2538:
            case 2539:
            case 2540:
            case 2541:
            case 2542:
            case 2543:
            case 2544:
            case 2546:
            case 2548:
            case 2549:
            case 2550:
            case 2551:
            case 2552:
            case 2553:
            case 2554:
            case 2555:
            case 2556:
            case 2557:
            case 2558:
            case 2559:
            case 2561:
              goto LABEL_802;
            case 2418:
            case 2420:
            case 2507:
            case 2509:
              sub_298B00584(a5, ", ");
              if (*a2 <= 2506)
              {
                goto LABEL_805;
              }

              goto LABEL_785;
            case 2419:
            case 2508:
            case 2511:
            case 2515:
            case 2517:
            case 2519:
              goto LABEL_778;
            default:
              return;
          }
        }

        else if (v329 > 3123)
        {
          switch(v329)
          {
            case 3180:
            case 3182:
            case 3183:
            case 3184:
            case 3185:
            case 3186:
            case 3187:
            case 3188:
            case 3189:
            case 3190:
            case 3191:
            case 3192:
            case 3193:
            case 3194:
            case 3195:
            case 3196:
            case 3197:
            case 3198:
            case 3199:
            case 3200:
            case 3201:
            case 3202:
            case 3203:
            case 3204:
            case 3205:
            case 3206:
            case 3207:
            case 3208:
            case 3209:
            case 3210:
            case 3211:
            case 3212:
            case 3213:
            case 3214:
            case 3215:
            case 3216:
            case 3217:
            case 3218:
            case 3219:
            case 3220:
            case 3221:
            case 3222:
            case 3223:
            case 3224:
            case 3225:
            case 3226:
            case 3227:
            case 3228:
            case 3229:
            case 3230:
            case 3232:
            case 3234:
            case 3235:
            case 3236:
            case 3237:
            case 3238:
            case 3239:
            case 3240:
            case 3241:
            case 3242:
            case 3244:
            case 3246:
            case 3247:
            case 3248:
            case 3249:
            case 3250:
            case 3251:
            case 3252:
            case 3253:
            case 3254:
            case 3255:
            case 3256:
            case 3257:
            case 3258:
            case 3259:
            case 3260:
            case 3261:
            case 3263:
            case 3265:
            case 3266:
            case 3267:
            case 3268:
            case 3269:
            case 3270:
            case 3271:
            case 3272:
            case 3273:
            case 3274:
            case 3275:
            case 3276:
            case 3277:
            case 3278:
            case 3279:
            case 3280:
            case 3281:
            case 3282:
            case 3283:
            case 3284:
            case 3285:
            case 3286:
            case 3287:
            case 3288:
            case 3289:
            case 3290:
            case 3291:
            case 3292:
            case 3293:
            case 3294:
            case 3295:
            case 3296:
            case 3297:
            case 3299:
            case 3302:
            case 3305:
            case 3308:
              goto LABEL_802;
            default:
              return;
          }
        }

        else
        {
          switch(v329)
          {
            case 2801:
            case 2803:
            case 2805:
            case 2807:
            case 2808:
            case 2809:
            case 2810:
            case 2811:
            case 2812:
            case 2813:
            case 2814:
            case 2815:
            case 2816:
            case 2817:
            case 2818:
            case 2819:
            case 2820:
            case 2821:
            case 2822:
            case 2823:
            case 2824:
            case 2825:
            case 2826:
            case 2827:
            case 2828:
            case 2829:
            case 2830:
            case 2831:
            case 2832:
            case 2833:
            case 2834:
            case 2835:
            case 2836:
            case 2837:
            case 2838:
            case 2839:
            case 2840:
            case 2841:
            case 2842:
            case 2843:
            case 2844:
            case 2845:
            case 2846:
            case 2847:
            case 2848:
            case 2849:
            case 2850:
            case 2851:
            case 2852:
            case 2853:
            case 2854:
            case 2855:
            case 2856:
            case 2858:
            case 2860:
            case 2861:
            case 2862:
            case 2863:
            case 2865:
            case 2867:
            case 2868:
            case 2869:
            case 2870:
            case 2871:
            case 2872:
            case 2873:
            case 2874:
            case 2875:
            case 2876:
            case 2877:
            case 2878:
            case 2879:
            case 2880:
            case 2881:
            case 2882:
            case 2883:
            case 2884:
            case 2885:
            case 2886:
            case 2887:
            case 2888:
            case 2889:
            case 2890:
            case 2891:
            case 2892:
            case 2893:
            case 2894:
            case 2895:
            case 2896:
            case 2897:
            case 2898:
            case 2899:
            case 2901:
            case 2903:
            case 2904:
            case 2905:
            case 2906:
            case 2907:
            case 2909:
            case 2911:
            case 2912:
            case 2913:
            case 2914:
            case 2915:
            case 2916:
            case 2917:
            case 2918:
            case 2919:
            case 2920:
            case 2921:
            case 2922:
            case 2923:
            case 2924:
            case 2925:
            case 2926:
            case 2927:
            case 2928:
            case 2929:
            case 2930:
            case 2931:
            case 2932:
            case 2933:
            case 2934:
            case 2935:
            case 2936:
            case 2937:
            case 2938:
            case 2939:
            case 2940:
            case 2941:
            case 2942:
            case 2943:
            case 2945:
            case 2947:
            case 2948:
            case 2949:
            case 2950:
            case 2951:
            case 2952:
            case 2953:
            case 2954:
            case 2955:
            case 2957:
              goto LABEL_802;
            default:
              return;
          }
        }

        return;
      }

      if (v329 <= 6042)
      {
        if (v329 > 4814)
        {
          if (v329 <= 5638 || (v329 - 5639) <= 0x3A && ((1 << (v329 - 7)) & 0x500000A00000005) != 0 || (v329 - 5959) <= 0x3F && ((1 << (v329 - 71)) & 0xA000000000000055) != 0)
          {
            return;
          }
        }

        else
        {
          if (v329 > 4503)
          {
            switch(v329)
            {
              case 4504:
              case 4506:
              case 4509:
              case 4511:
              case 4520:
              case 4522:
              case 4528:
              case 4530:
              case 4533:
              case 4535:
              case 4544:
              case 4546:
              case 4591:
              case 4593:
              case 4598:
              case 4600:
              case 4615:
              case 4617:
                return;
              case 4505:
              case 4507:
              case 4508:
              case 4510:
              case 4512:
              case 4513:
              case 4514:
              case 4515:
              case 4516:
              case 4517:
              case 4518:
              case 4519:
              case 4521:
              case 4523:
              case 4524:
              case 4525:
              case 4526:
              case 4527:
              case 4529:
              case 4531:
              case 4532:
              case 4534:
              case 4536:
              case 4537:
              case 4538:
              case 4539:
              case 4540:
              case 4541:
              case 4542:
              case 4543:
              case 4545:
              case 4547:
              case 4548:
              case 4549:
              case 4550:
              case 4551:
              case 4552:
              case 4553:
              case 4554:
              case 4555:
              case 4556:
              case 4557:
              case 4558:
              case 4559:
              case 4560:
              case 4561:
              case 4562:
              case 4563:
              case 4564:
              case 4565:
              case 4566:
              case 4567:
              case 4568:
              case 4569:
              case 4570:
              case 4571:
              case 4572:
              case 4573:
              case 4574:
              case 4575:
              case 4576:
              case 4577:
              case 4578:
              case 4579:
              case 4580:
              case 4581:
              case 4582:
              case 4583:
              case 4584:
              case 4585:
              case 4586:
              case 4587:
              case 4588:
              case 4589:
              case 4590:
              case 4592:
              case 4594:
              case 4595:
              case 4596:
              case 4597:
              case 4599:
              case 4601:
              case 4602:
              case 4603:
              case 4604:
              case 4605:
              case 4606:
              case 4607:
              case 4608:
              case 4609:
              case 4610:
              case 4611:
              case 4612:
              case 4613:
              case 4614:
              case 4616:
                goto LABEL_802;
              default:
                v329 = 1 << (v329 - 122);
                v330 = 0x100000050005;
                goto LABEL_801;
            }

            return;
          }

          if ((v329 - 4289) > 0x10)
          {
            return;
          }

          v331 = 1 << (v329 + 63);
          if ((v331 & 0x9249) != 0 || (v331 & 0x12492) == 0)
          {
            return;
          }
        }
      }

      else
      {
        if (v329 > 7132)
        {
          if (v329 > 7513)
          {
            switch(v329)
            {
              case 7515:
              case 7517:
              case 7519:
              case 7521:
              case 7522:
              case 7523:
              case 7524:
              case 7525:
              case 7526:
              case 7527:
              case 7528:
              case 7529:
              case 7530:
              case 7531:
              case 7532:
              case 7533:
              case 7534:
              case 7535:
              case 7536:
              case 7537:
              case 7538:
              case 7539:
              case 7540:
              case 7541:
              case 7542:
              case 7543:
              case 7544:
              case 7545:
              case 7546:
              case 7547:
              case 7548:
              case 7549:
              case 7550:
              case 7551:
              case 7552:
              case 7553:
              case 7555:
              case 7557:
              case 7558:
              case 7559:
              case 7560:
              case 7561:
              case 7563:
              case 7565:
              case 7566:
              case 7567:
              case 7568:
              case 7569:
              case 7570:
              case 7571:
              case 7572:
              case 7573:
              case 7574:
              case 7575:
              case 7576:
              case 7577:
              case 7578:
              case 7579:
              case 7580:
              case 7581:
              case 7582:
              case 7583:
              case 7584:
              case 7585:
              case 7586:
              case 7587:
              case 7588:
              case 7589:
              case 7590:
              case 7591:
              case 7592:
              case 7593:
              case 7594:
              case 7595:
              case 7596:
              case 7597:
              case 7598:
              case 7599:
              case 7600:
              case 7601:
              case 7602:
              case 7604:
              case 7606:
              case 7607:
              case 7608:
              case 7609:
              case 7610:
              case 7612:
              case 7614:
              case 7615:
              case 7616:
              case 7617:
              case 7618:
              case 7619:
              case 7620:
              case 7621:
              case 7622:
              case 7623:
              case 7624:
              case 7625:
              case 7626:
              case 7627:
              case 7628:
              case 7629:
              case 7630:
              case 7631:
              case 7632:
              case 7633:
              case 7634:
              case 7635:
              case 7636:
              case 7637:
              case 7638:
              case 7639:
              case 7640:
              case 7641:
              case 7642:
              case 7643:
              case 7644:
              case 7645:
              case 7646:
              case 7647:
              case 7649:
              case 7651:
              case 7652:
              case 7653:
              case 7654:
              case 7655:
              case 7656:
              case 7657:
              case 7659:
              case 7661:
              case 7662:
              case 7663:
              case 7664:
              case 7665:
              case 7666:
              case 7667:
              case 7668:
              case 7669:
              case 7670:
              case 7671:
              case 7672:
              case 7673:
              case 7674:
              case 7675:
              case 7676:
              case 7677:
              case 7679:
                goto LABEL_802;
              default:
                return;
            }
          }

          else
          {
            switch(v329)
            {
              case 7133:
              case 7134:
              case 7137:
              case 7138:
              case 7168:
              case 7170:
              case 7178:
              case 7180:
              case 7182:
              case 7184:
              case 7193:
              case 7195:
              case 7240:
              case 7242:
              case 7250:
              case 7252:
              case 7297:
              case 7299:
                return;
              case 7135:
              case 7136:
              case 7139:
              case 7140:
              case 7141:
              case 7142:
              case 7143:
              case 7144:
              case 7145:
              case 7146:
              case 7147:
              case 7148:
              case 7149:
              case 7150:
              case 7151:
              case 7152:
              case 7153:
              case 7154:
              case 7155:
              case 7156:
              case 7157:
              case 7158:
              case 7159:
              case 7160:
              case 7161:
              case 7162:
              case 7163:
              case 7164:
              case 7165:
              case 7166:
              case 7167:
              case 7169:
              case 7171:
              case 7172:
              case 7173:
              case 7174:
              case 7175:
              case 7176:
              case 7177:
              case 7179:
              case 7181:
              case 7183:
              case 7185:
              case 7186:
              case 7187:
              case 7188:
              case 7189:
              case 7190:
              case 7191:
              case 7192:
              case 7194:
              case 7196:
              case 7197:
              case 7198:
              case 7199:
              case 7200:
              case 7201:
              case 7202:
              case 7203:
              case 7204:
              case 7205:
              case 7206:
              case 7207:
              case 7208:
              case 7209:
              case 7210:
              case 7211:
              case 7212:
              case 7213:
              case 7214:
              case 7215:
              case 7216:
              case 7217:
              case 7218:
              case 7219:
              case 7220:
              case 7221:
              case 7222:
              case 7223:
              case 7224:
              case 7225:
              case 7226:
              case 7227:
              case 7228:
              case 7229:
              case 7230:
              case 7231:
              case 7232:
              case 7233:
              case 7234:
              case 7235:
              case 7236:
              case 7237:
              case 7238:
              case 7239:
              case 7241:
              case 7243:
              case 7244:
              case 7245:
              case 7246:
              case 7247:
              case 7248:
              case 7249:
              case 7251:
              case 7253:
              case 7254:
              case 7255:
              case 7256:
              case 7257:
              case 7258:
              case 7259:
              case 7260:
              case 7261:
              case 7262:
              case 7263:
              case 7264:
              case 7265:
              case 7266:
              case 7267:
              case 7268:
              case 7269:
              case 7270:
              case 7271:
              case 7272:
              case 7273:
              case 7274:
              case 7275:
              case 7276:
              case 7277:
              case 7278:
              case 7279:
              case 7280:
              case 7281:
              case 7282:
              case 7283:
              case 7284:
              case 7285:
              case 7286:
              case 7287:
              case 7288:
              case 7289:
              case 7290:
              case 7291:
              case 7292:
              case 7293:
              case 7294:
              case 7295:
              case 7296:
              case 7298:
                goto LABEL_802;
              default:
                v329 = 1 << (v329 + 12);
                v330 = 0xA00000005;
                goto LABEL_801;
            }
          }

          return;
        }

        if (v329 > 6671)
        {
          if (v329 <= 6861)
          {
            switch(v329)
            {
              case 6673:
              case 6676:
              case 6679:
              case 6682:
              case 6685:
                goto LABEL_778;
              case 6674:
              case 6677:
              case 6680:
              case 6683:
              case 6686:
              case 6687:
              case 6688:
              case 6689:
              case 6690:
              case 6691:
              case 6692:
              case 6693:
              case 6694:
              case 6695:
              case 6696:
              case 6697:
              case 6698:
              case 6699:
              case 6700:
              case 6701:
              case 6702:
              case 6703:
              case 6704:
              case 6705:
              case 6706:
              case 6707:
              case 6708:
              case 6709:
              case 6710:
              case 6711:
              case 6712:
              case 6713:
              case 6714:
              case 6715:
              case 6716:
              case 6717:
              case 6718:
              case 6719:
              case 6720:
              case 6721:
              case 6722:
              case 6723:
              case 6724:
              case 6725:
              case 6726:
              case 6727:
              case 6728:
              case 6729:
              case 6730:
              case 6731:
              case 6732:
              case 6733:
              case 6734:
              case 6735:
              case 6736:
              case 6737:
              case 6738:
              case 6739:
              case 6740:
              case 6741:
              case 6742:
              case 6743:
              case 6744:
              case 6745:
              case 6746:
              case 6747:
              case 6748:
              case 6749:
              case 6750:
              case 6751:
              case 6752:
              case 6753:
              case 6754:
              case 6755:
              case 6756:
              case 6757:
              case 6758:
              case 6759:
              case 6760:
              case 6761:
              case 6762:
              case 6763:
              case 6764:
              case 6765:
              case 6766:
              case 6767:
              case 6768:
              case 6769:
              case 6770:
              case 6771:
              case 6772:
              case 6773:
              case 6774:
              case 6775:
              case 6776:
              case 6777:
              case 6778:
              case 6779:
              case 6780:
              case 6781:
              case 6783:
              case 6785:
              case 6786:
              case 6787:
              case 6788:
              case 6789:
              case 6790:
              case 6791:
              case 6792:
              case 6793:
              case 6794:
              case 6795:
              case 6796:
              case 6797:
              case 6798:
              case 6799:
              case 6800:
              case 6801:
              case 6802:
              case 6803:
              case 6804:
              case 6805:
              case 6806:
              case 6807:
              case 6808:
              case 6809:
              case 6810:
              case 6811:
              case 6812:
              case 6813:
              case 6814:
              case 6815:
              case 6818:
                goto LABEL_802;
              default:
                return;
            }
          }

          return;
        }

        if (v329 <= 6177)
        {
          if ((v329 - 6043) <= 0x3A && ((1 << (v329 + 101)) & 0x500000000000005) != 0)
          {
            return;
          }

          v329 = 1 << (v329 + 37);
          v330 = 0xA000000000005;
LABEL_801:
          if ((v329 & v330) != 0)
          {
            return;
          }

LABEL_802:
          __break(1u);
          goto LABEL_803;
        }

        if ((v329 - 6178) <= 0x16 && ((1 << (v329 - 34)) & 0x500005) != 0 || v329 == 6585)
        {
          return;
        }
      }

LABEL_778:
      if (v329 > 4289)
      {
        if (v329 > 6585 || (v332 = v329 - 4290, v332 <= 0xF) && ((1 << v332) & 0x9249) != 0)
        {
LABEL_789:
          v28 = "]!";
          goto LABEL_597;
        }

        goto LABEL_785;
      }

      if (v329 > 2507)
      {
        LODWORD(v329) = 1 << (v329 + 52);
        if ((v329 & 0xA89) != 0)
        {
          goto LABEL_785;
        }

        goto LABEL_802;
      }

LABEL_803:
      if (v329 != 1777 && v329 != 1897)
      {
LABEL_805:
        v299 = *(a2 + 16);
        v300 = a1[49];
        v301 = a1[48];
        v302 = 4;
LABEL_691:

        sub_298CB5394(v301, v300, v299, v302, a5);
        return;
      }

LABEL_785:
      v312 = *(a2 + 16);
      v313 = a1[49];
      v314 = a1[48];
      v315 = 5;
LABEL_786:

      sub_298CB5478(v314, v313, v312, v315, a5);
      return;
    case 0x3EuLL:
      goto LABEL_789;
    case 0x3FuLL:
      goto LABEL_46;
    case 0x40uLL:
      sub_298CAAB6C(a5, 91);
      sub_298CAA168(a1, *(a2 + 16), 3u, a5);
      sub_298B00584(a5, ", ");
      sub_298CACA88(*(a2 + 16), 4u, a5);
      goto LABEL_276;
    case 0x41uLL:
      v276 = a1;
      v277 = a2;
      v278 = 3;
      goto LABEL_655;
    case 0x42uLL:
      v250 = a1;
      v251 = a2;
      v252 = 3;
      goto LABEL_635;
    case 0x43uLL:
      v143 = a1;
      v144 = a2;
      v145 = 3;
      goto LABEL_257;
    case 0x44uLL:
      v260 = a1;
      v261 = a2;
      v262 = 3;
      goto LABEL_715;
    case 0x45uLL:
      goto LABEL_607;
    case 0x46uLL:
      v28 = ", #-16]!";
      goto LABEL_597;
    case 0x47uLL:
      goto LABEL_41;
    default:
      return;
  }
}

BOOL sub_298CBEB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32[0] = &unk_298D62168;
  v32[1] = 942;
  v32[2] = &unk_298D63ED8;
  v32[3] = 1111;
  v32[4] = &unk_298D672EC;
  v32[5] = 7172;
  v32[6] = &unk_298D7530C;
  v32[7] = 17935;
  v32[8] = sub_298CBEED0;
  v10 = sub_298B46F70(a1, a2, a4, v32);
  v11 = v10;
  if (v10)
  {
    for (i = 0; ; ++i)
    {
      v13 = *(v10 + i);
      v14 = v13 > 0x24;
      v15 = (1 << v13) & 0x1100000201;
      if (!v14 && v15 != 0)
      {
        break;
      }
    }

    while (1)
    {
      v18 = *(a5 + 32);
      if (v18 < *(a5 + 24))
      {
        goto LABEL_15;
      }

      v17 = *(a5 + 16);
      if (v17)
      {
        break;
      }

      if (!*(a5 + 56))
      {
        v33 = 9;
        sub_298B9BB84(a5);
        v19 = *(a5 + 32);
        if (*(a5 + 24) - v19 >= i)
        {
          goto LABEL_18;
        }

LABEL_16:
        sub_298B9BCEC(a5, v11, i);
        goto LABEL_20;
      }

      sub_298B9AE98(a5);
    }

    *(a5 + 32) = v17;
    sub_298B9BB84(a5);
    v18 = *(a5 + 32);
LABEL_15:
    *(a5 + 32) = v18 + 1;
    *v18 = 9;
    v19 = *(a5 + 32);
    if (*(a5 + 24) - v19 < i)
    {
      goto LABEL_16;
    }

LABEL_18:
    if (i)
    {
      memcpy(v19, v11, i);
      *(a5 + 32) += i;
    }

LABEL_20:
    v20 = v11[i];
    if (v11[i])
    {
      if (v20 == 9 || v20 == 32)
      {
        while (1)
        {
          v22 = *(a5 + 32);
          if (v22 < *(a5 + 24))
          {
            goto LABEL_30;
          }

          v21 = *(a5 + 16);
          if (v21)
          {
            *(a5 + 32) = v21;
            sub_298B9BB84(a5);
            v22 = *(a5 + 32);
LABEL_30:
            *(a5 + 32) = v22 + 1;
            *v22 = 9;
            goto LABEL_31;
          }

          if (!*(a5 + 56))
          {
            break;
          }

          sub_298B9AE98(a5);
        }

        v33 = 9;
        sub_298B9BB84(a5);
LABEL_31:
        v20 = v11[++i];
      }

      do
      {
        v25 = i + 1;
        if (v20 == 36)
        {
          v26 = v11[v25];
          if (v26 == -1)
          {
            v25 = i + 4;
            (*(*a1 + 64))(a1, a2, a3, (v11[i + 2] - 1), (v11[i + 3] - 1), a4, a5);
          }

          else
          {
            v25 = i + 2;
            v27 = v26 - 1;
            v28 = *(a2 + 16);
            v29 = (v28 + 16 * (v26 - 1));
            v30 = *v29;
            if (v30 == 2)
            {
              sub_298CABA58(a1, v28, v27, a5);
            }

            else if (v30 == 1)
            {
              (*(*a1 + 40))(a1, a5, *(v29 + 2));
            }

            else
            {
              sub_298B439C4(v29[1], a5, *(a1 + 16), 0);
            }
          }
        }

        else
        {
          while (1)
          {
            v23 = *(a5 + 32);
            if (v23 < *(a5 + 24))
            {
              goto LABEL_37;
            }

            v24 = *(a5 + 16);
            if (v24)
            {
              *(a5 + 32) = v24;
              sub_298B9BB84(a5);
              v23 = *(a5 + 32);
LABEL_37:
              *(a5 + 32) = v23 + 1;
              *v23 = v20;
              goto LABEL_38;
            }

            if (!*(a5 + 56))
            {
              break;
            }

            sub_298B9AE98(a5);
          }

          v33 = v20;
          sub_298B9BB84(a5);
        }

LABEL_38:
        v20 = v11[v25];
        i = v25;
      }

      while (v11[v25]);
    }
  }

  return v11 != 0;
}

uint64_t sub_298CBEED0(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v52 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  if (a3 <= 4)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        if (v3 != 2)
        {
          goto LABEL_71;
        }

        v12 = *(a1 + 2);
        v13 = __clz(((v12 >> 6) & 0x40 | v12 & 0x3F) ^ 0x3F);
        v14 = 0x80000000 >> v13;
        v15 = (v12 >> 6) & ((0x80000000 >> v13) - 1);
        v16 = ~(-1 << ((((0x80000000 >> v13) - 1) & v12 & 0x3F) + 1));
        for (i = v15 & 0x3F; i; --i)
        {
          v16 = ((v16 & 1) << ((0x80000000 >> v13) - 1)) | (v16 >> 1);
        }

        if (v13 != 25)
        {
          do
          {
            v16 |= v16 << v14;
            v14 *= 2;
          }

          while (v14 != 64);
        }

        v18 = v16 >> 8;
        v19 = HIDWORD(v16);
        v20 = v16 >> 24;
      }

      else
      {
        if (v3 != 2)
        {
          goto LABEL_71;
        }

        v39 = *(a1 + 2);
        v40 = __clz(((v39 >> 6) & 0x40 | v39 & 0x3F) ^ 0x3F);
        v41 = 0x80000000 >> v40;
        v42 = (v39 >> 6) & ((0x80000000 >> v40) - 1);
        v16 = ~(-1 << ((((0x80000000 >> v40) - 1) & v39 & 0x3F) + 1));
        for (j = v42 & 0x3F; j; --j)
        {
          v16 = ((v16 & 1) << ((0x80000000 >> v40) - 1)) | (v16 >> 1);
        }

        if (v40 != 25)
        {
          do
          {
            v16 |= v16 << v41;
            v41 *= 2;
          }

          while (v41 != 64);
        }

        v18 = v16 >> 16;
        v19 = HIWORD(v16);
        v20 = WORD2(v16);
      }

      v11 = v18 == v16 && v19 == v20;
      goto LABEL_59;
    }

    if (a3 == 3)
    {
      if (v3 == 2)
      {
        v21 = *(a1 + 2);
        v22 = __clz(((v21 >> 6) & 0x40 | v21 & 0x3F) ^ 0x3F);
        v23 = 0x80000000 >> v22;
        v24 = (v21 >> 6) & ((0x80000000 >> v22) - 1);
        v25 = ~(-1 << ((((0x80000000 >> v22) - 1) & v21 & 0x3F) + 1));
        for (k = v24 & 0x3F; k; --k)
        {
          v25 = ((v25 & 1) << ((0x80000000 >> v22) - 1)) | (v25 >> 1);
        }

        if (v22 != 25)
        {
          do
          {
            v25 |= v25 << v23;
            v23 *= 2;
          }

          while (v23 != 64);
        }

        v11 = HIDWORD(v25) == v25;
        goto LABEL_59;
      }
    }

    else if (v3 == 2)
    {
      result = (*(a1 + 1) - 16) < 0xFFFFFFFFFFFFFFFELL;
LABEL_72:
      v51 = *MEMORY[0x29EDCA608];
      return result;
    }

LABEL_71:
    result = 0;
    goto LABEL_72;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (v3 == 2)
      {
        v27 = *(a1 + 2);
        v28 = __clz(((v27 >> 6) & 0x40 | v27 & 0x3F) ^ 0x3F);
        v29 = 0x80000000 >> v28;
        v30 = (0x80000000 >> v28) - 1;
        v31 = ~(-1 << ((((0x80000000 >> v28) - 1) & v27 & 0x3F) + 1));
        for (m = (v27 >> 6) & v30 & 0x3F; m; --m)
        {
          v31 = ((v31 & 1) << v30) | (v31 >> 1);
        }

        if (v28 != 25)
        {
          do
          {
            v31 |= v31 << v29;
            v29 *= 2;
          }

          while (v29 != 64);
        }

        if ((v31 >> 16) == v31 && HIWORD(v31) == WORD2(v31))
        {
          goto LABEL_68;
        }
      }
    }

    else if (v3 == 2)
    {
      v45 = *(a1 + 2);
      v46 = __clz(((v45 >> 6) & 0x40 | v45 & 0x3F) ^ 0x3F);
      v47 = 0x80000000 >> v46;
      v48 = (0x80000000 >> v46) - 1;
      v31 = ~(-1 << ((((0x80000000 >> v46) - 1) & v45 & 0x3F) + 1));
      for (n = (v45 >> 6) & v48 & 0x3F; n; --n)
      {
        v31 = ((v31 & 1) << v48) | (v31 >> 1);
      }

      if (v46 != 25)
      {
        do
        {
          v31 |= v31 << v47;
          v47 *= 2;
        }

        while (v47 != 64);
      }

      if (HIDWORD(v31) == v31)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_71;
  }

  if (a3 != 7)
  {
    if (a3 == 8)
    {
      if (v3 == 2)
      {
        v4 = a1[8] ^ 0x20;
        v5 = &unk_298EA2FF8;
        v6 = 3;
        do
        {
          v7 = v6 >> 1;
          v8 = &v5[8 * (v6 >> 1)];
          v10 = *v8;
          v9 = v8 + 8;
          v6 += ~(v6 >> 1);
          if (v10 < v4)
          {
            v5 = v9;
          }

          else
          {
            v6 = v7;
          }
        }

        while (v6);
        if (v5 != &unk_298EA3010)
        {
          v11 = *v5 == v4;
          goto LABEL_59;
        }
      }
    }

    else if (v3 == 2)
    {
      v11 = a1[8] == 17;
LABEL_59:
      result = v11;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v3 != 2)
  {
    goto LABEL_71;
  }

  v34 = *(a1 + 2);
  v35 = __clz(((v34 >> 6) & 0x40 | v34 & 0x3F) ^ 0x3F);
  v36 = 0x80000000 >> v35;
  v37 = (0x80000000 >> v35) - 1;
  v31 = ~(-1 << ((((0x80000000 >> v35) - 1) & v34 & 0x3F) + 1));
  for (ii = (v34 >> 6) & v37 & 0x3F; ii; --ii)
  {
    v31 = ((v31 & 1) << v37) | (v31 >> 1);
  }

  if (v35 != 25)
  {
    do
    {
      v31 |= v31 << v36;
      v36 *= 2;
    }

    while (v36 != 64);
  }

LABEL_68:
  v50 = *MEMORY[0x29EDCA608];

  return sub_298CC5C4C(v31);
}

void sub_298CBF390(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, void *a7)
{
  switch(a5)
  {
    case 1:
      v48 = *(a2 + 16);

      sub_298CAF0D0(a1, v48, a4, a7);
      return;
    case 2:
      v44 = *(a2 + 16);

      sub_298CB5124(a1, v44, a4, a7);
      return;
    case 3:
      v45 = *(a2 + 16);
      v46 = a1[49];
      v47 = a1[48];

      sub_298CB4F18(v47, v46, v45, a4, a7);
      return;
    case 4:
      v30 = *(a2 + 16);
      v31 = a1[49];
      v32 = a1[48];

      sub_298CAF308(v32, v31, v30, a4, a7);
      return;
    case 5:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v60 = v14;
      v61 = v14[4];
      if (v61 < v14[3])
      {
        goto LABEL_102;
      }

      v62 = v14[2];
      if (v62)
      {
        goto LABEL_101;
      }

      do
      {
        if (!*(v60 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v60 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_103;
          }

          goto LABEL_239;
        }

        sub_298B9AE98(v14);
        v61 = v14[4];
        v60 = v14;
        if (v61 < v14[3])
        {
          goto LABEL_102;
        }

        v62 = v14[2];
      }

      while (!v62);
LABEL_101:
      v60[4] = v62;
      sub_298B9BB84(v60);
      v60 = v14;
      v61 = v14[4];
LABEL_102:
      v60[4] = v61 + 1;
      *v61 = 46;
      v18 = v60[4];
      if (v18 < v60[3])
      {
LABEL_103:
        v60[4] = v18 + 1;
        goto LABEL_242;
      }

LABEL_239:
      v109 = v60[2];
      if (v109)
      {
LABEL_240:
        v60[4] = v109;
        sub_298B9BB84(v60);
        v18 = v14[4];
LABEL_241:
        v14[4] = v18 + 1;
LABEL_242:
        v106 = 98;
        goto LABEL_252;
      }

      while (*(v60 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_241;
        }

        v60 = v14;
        v109 = v14[2];
        if (v109)
        {
          goto LABEL_240;
        }
      }

      goto LABEL_278;
    case 6:
    case 54:
      v7 = *(*(a2 + 16) + 16 * a4 + 8);
      goto LABEL_152;
    case 7:
      v74 = *(a2 + 16);
      v75 = a1[49];
      v76 = a1[48];

      sub_298CB7B6C(v76, v75, v74, a4, a7);
      return;
    case 8:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v38 = v14;
      v39 = v14[4];
      if (v39 < v14[3])
      {
        goto LABEL_55;
      }

      v40 = v14[2];
      if (v40)
      {
        goto LABEL_54;
      }

      do
      {
        if (!*(v38 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v38 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_56;
          }

          goto LABEL_230;
        }

        sub_298B9AE98(v14);
        v39 = v14[4];
        v38 = v14;
        if (v39 < v14[3])
        {
          goto LABEL_55;
        }

        v40 = v14[2];
      }

      while (!v40);
LABEL_54:
      v38[4] = v40;
      sub_298B9BB84(v38);
      v38 = v14;
      v39 = v14[4];
LABEL_55:
      v38[4] = v39 + 1;
      *v39 = 46;
      v18 = v38[4];
      if (v18 < v38[3])
      {
LABEL_56:
        v38[4] = v18 + 1;
LABEL_233:
        v106 = 104;
        goto LABEL_252;
      }

LABEL_230:
      v108 = v38[2];
      if (v108)
      {
LABEL_231:
        v38[4] = v108;
        sub_298B9BB84(v38);
        v18 = v14[4];
LABEL_232:
        v14[4] = v18 + 1;
        goto LABEL_233;
      }

      while (*(v38 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_232;
        }

        v38 = v14;
        v108 = v14[2];
        if (v108)
        {
          goto LABEL_231;
        }
      }

      goto LABEL_278;
    case 9:
      v71 = *(a2 + 16);
      v72 = a1[49];
      v73 = a1[48];

      sub_298CB7D3C(v73, v72, v71, a4, a7);
      return;
    case 10:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v24 = v14;
      v25 = v14[4];
      if (v25 < v14[3])
      {
        goto LABEL_41;
      }

      v26 = v14[2];
      if (v26)
      {
        goto LABEL_40;
      }

      do
      {
        if (!*(v24 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v24 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_42;
          }

          goto LABEL_221;
        }

        sub_298B9AE98(v14);
        v25 = v14[4];
        v24 = v14;
        if (v25 < v14[3])
        {
          goto LABEL_41;
        }

        v26 = v14[2];
      }

      while (!v26);
LABEL_40:
      v24[4] = v26;
      sub_298B9BB84(v24);
      v24 = v14;
      v25 = v14[4];
LABEL_41:
      v24[4] = v25 + 1;
      *v25 = 46;
      v18 = v24[4];
      if (v18 < v24[3])
      {
LABEL_42:
        v24[4] = v18 + 1;
LABEL_224:
        v106 = 115;
        goto LABEL_252;
      }

LABEL_221:
      v107 = v24[2];
      if (v107)
      {
LABEL_222:
        v24[4] = v107;
        sub_298B9BB84(v24);
        v18 = v14[4];
LABEL_223:
        v14[4] = v18 + 1;
        goto LABEL_224;
      }

      while (*(v24 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_223;
        }

        v24 = v14;
        v107 = v14[2];
        if (v107)
        {
          goto LABEL_222;
        }
      }

      goto LABEL_278;
    case 11:
      v33 = *(*(a2 + 16) + 16 * a4 + 8);
      sub_298B47440(&v111, a7, 1, a1[48], a1[49]);
      v34 = byte_298D34367[v33 - 1];
      v35 = v111.__r_.__value_.__r.__words[0];
      v36 = strlen(&aV10[v34]);
      v37 = *(v111.__r_.__value_.__r.__words[0] + 32);
      if (v36 <= *(v111.__r_.__value_.__r.__words[0] + 24) - v37)
      {
        if (v36)
        {
          memcpy(v37, &aV10[v34], v36);
          *(v35 + 32) += v36;
        }
      }

      else
      {
        sub_298B9BCEC(v111.__r_.__value_.__l.__data_, &aV10[v34], v36);
      }

      sub_298B47608(&v111);
      return;
    case 12:
      v59 = *(a2 + 16);

      sub_298CABA58(a1, v59, a4, a7);
      return;
    case 13:
      v19 = *(a2 + 16);

      sub_298CAE6A0(a1, v19, a4, a7);
      return;
    case 14:

      sub_298CAF4D8(a1, a2, a4, a7);
      return;
    case 15:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v15 = v14;
      v16 = v14[4];
      if (v16 < v14[3])
      {
        goto LABEL_25;
      }

      v17 = v14[2];
      if (v17)
      {
        goto LABEL_24;
      }

      do
      {
        if (!*(v15 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v15 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_26;
          }

          goto LABEL_212;
        }

        sub_298B9AE98(v14);
        v16 = v14[4];
        v15 = v14;
        if (v16 < v14[3])
        {
          goto LABEL_25;
        }

        v17 = v14[2];
      }

      while (!v17);
LABEL_24:
      v15[4] = v17;
      sub_298B9BB84(v15);
      v15 = v14;
      v16 = v14[4];
LABEL_25:
      v15[4] = v16 + 1;
      *v16 = 46;
      v18 = v15[4];
      if (v18 < v15[3])
      {
LABEL_26:
        v15[4] = v18 + 1;
LABEL_215:
        v106 = 100;
        goto LABEL_252;
      }

LABEL_212:
      v105 = v15[2];
      if (v105)
      {
LABEL_213:
        v15[4] = v105;
        sub_298B9BB84(v15);
        v18 = v14[4];
LABEL_214:
        v14[4] = v18 + 1;
        goto LABEL_215;
      }

      while (*(v15 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_214;
        }

        v15 = v14;
        v105 = v14[2];
        if (v105)
        {
          goto LABEL_213;
        }
      }

      goto LABEL_278;
    case 16:

      sub_298CAFACC(a1, a2, a4, a7);
      return;
    case 17:

      sub_298CAE8C8(a1, a2, a4, a7);
      return;
    case 18:

      sub_298CAFC80(a1, a2, a4, a7);
      return;
    case 19:
      v50 = off_29EEBA100[*(*(a2 + 16) + 16 * a4 + 8) ^ 1];
      v51 = a7[4];
      if (a7[3] - v51 <= 1uLL)
      {
        v52 = a7;
        goto LABEL_129;
      }

      *v51 = *v50;
      a7[4] += 2;
      return;
    case 20:
      v53 = *(*(a2 + 16) + 16 * a4 + 8);
      v54 = __clz(((v53 >> 6) & 0x40 | v53 & 0x3F) ^ 0x3F);
      v55 = 0x80000000 >> v54;
      v56 = (v53 >> 6) & ((0x80000000 >> v54) - 1);
      v57 = ~(-1 << ((((0x80000000 >> v54) - 1) & v53 & 0x3F) + 1));
      for (i = v56 & 0x3F; i; --i)
      {
        v57 = ((v57 & 1) << ((0x80000000 >> v54) - 1)) | (v57 >> 1);
      }

      if (v54 != 25)
      {
        do
        {
          v57 |= v57 << v55;
          v55 *= 2;
        }

        while (v55 != 64);
      }

      sub_298CC5E30(a1, v57, a7);
      return;
    case 21:
      v77 = *(a2 + 16);

      sub_298CB7F0C(a1, v77, a4, a7);
      return;
    case 22:
      v86 = *(a2 + 16);

      sub_298CB8144(a1, v86, a4, a7);
      return;
    case 23:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 252);
      goto LABEL_152;
    case 24:
      v43 = a7[4];
      if (a7[3] == v43)
      {
        v93 = a2;
        v94 = a7;
        v95 = a4;
        sub_298B9BCEC(a7, "[", 1uLL);
        a2 = v93;
        a4 = v95;
        a7 = v94;
      }

      else
      {
        *v43 = 91;
        ++a7[4];
      }

      v96 = *(*(a2 + 16) + 16 * a4 + 8);
      if ((v96 & 0x8000000000000000) == 0)
      {
        v97 = a7;
        v98 = a7;
        if (!HIDWORD(v96))
        {
          sub_298B8FC48(a7, v96, 0, 0, 0);
          v52 = v97;
          v99 = v97[4];
          if (v97[3] != v99)
          {
LABEL_182:
            *v99 = 93;
            ++*(v52 + 32);
            return;
          }

          goto LABEL_185;
        }

        v104 = 0;
LABEL_205:
        sub_298B8FEA0(v98, v96, 0, 0, v104);
        v52 = v97;
        v99 = v97[4];
        if (v97[3] != v99)
        {
          goto LABEL_182;
        }

        goto LABEL_185;
      }

      v96 = -v96;
      v97 = a7;
      v98 = a7;
      if (HIDWORD(v96))
      {
        v104 = 1;
        goto LABEL_205;
      }

      sub_298B8FC48(a7, v96, 0, 0, 1);
      v52 = v97;
      v99 = v97[4];
      if (v97[3] != v99)
      {
        goto LABEL_182;
      }

LABEL_185:
      v50 = "]";
      v80 = 1;
LABEL_186:

      sub_298B9BCEC(v52, v50, v80);
      return;
    case 25:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 220);
      goto LABEL_152;
    case 26:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 188);
      goto LABEL_152;
    case 27:
      v14 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v87 = v14;
      v88 = v14[4];
      if (v88 < v14[3])
      {
        goto LABEL_148;
      }

      v89 = v14[2];
      if (v89)
      {
        goto LABEL_147;
      }

      do
      {
        if (!*(v87 + 14))
        {
          v111.__r_.__value_.__s.__data_[0] = 46;
          sub_298B9BB84(v14);
          v87 = v14;
          v18 = v14[4];
          if (v18 < v14[3])
          {
            goto LABEL_149;
          }

          goto LABEL_248;
        }

        sub_298B9AE98(v14);
        v88 = v14[4];
        v87 = v14;
        if (v88 < v14[3])
        {
          goto LABEL_148;
        }

        v89 = v14[2];
      }

      while (!v89);
LABEL_147:
      v87[4] = v89;
      sub_298B9BB84(v87);
      v87 = v14;
      v88 = v14[4];
LABEL_148:
      v87[4] = v88 + 1;
      *v88 = 46;
      v18 = v87[4];
      if (v18 < v87[3])
      {
LABEL_149:
        v87[4] = v18 + 1;
LABEL_251:
        v106 = 113;
LABEL_252:
        *v18 = v106;
        return;
      }

LABEL_248:
      v110 = v87[2];
      if (v110)
      {
LABEL_249:
        v87[4] = v110;
        sub_298B9BB84(v87);
        v18 = v14[4];
LABEL_250:
        v14[4] = v18 + 1;
        goto LABEL_251;
      }

      while (*(v87 + 14))
      {
        sub_298B9AE98(v14);
        v18 = v14[4];
        if (v18 < v14[3])
        {
          goto LABEL_250;
        }

        v87 = v14;
        v110 = v14[2];
        if (v110)
        {
          goto LABEL_249;
        }
      }

LABEL_278:
      sub_298B9BB84(v14);
      return;
    case 28:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 124);
      goto LABEL_152;
    case 29:
      v7 = (*(*(a2 + 16) + 16 * a4 + 8) - 92);
LABEL_152:
      v65 = *(*a1 + 40);
      v66 = a7;
      goto LABEL_153;
    case 30:
      v49 = *(a2 + 16);

      sub_298CABB58(v49, a4, a7);
      return;
    case 31:
      v69 = *(a2 + 16) + 16 * a4;
      goto LABEL_190;
    case 32:
      v20 = *(a2 + 16);

      sub_298CABD60(v20, a4, a7);
      return;
    case 33:
      v12 = *(a2 + 16) + 16 * a4;
      if (*v12 == 4)
      {
        v13 = *(v12 + 8);
      }

      else
      {
        LODWORD(v13) = ((*(v12 + 8) << 24) & 0xC0000000 | ((*(v12 + 8) & 0x3F) << 19) | ((*(v12 + 8) << 25) >> 31) & 0x3E000000) ^ 0x40000000;
      }

      sub_298B47440(v112, a7, 0, a1[48], a1[49]);
      v111.__r_.__value_.__r.__words[0] = &unk_2A1F211D0;
      v111.__r_.__value_.__l.__size_ = "#%.8f";
      *&v111.__r_.__value_.__r.__words[2] = v13;
      goto LABEL_170;
    case 34:
    case 53:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 100;
      goto LABEL_134;
    case 35:
    case 52:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 115;
      goto LABEL_134;
    case 36:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 113;
      goto LABEL_134;
    case 37:
      v42 = *(a2 + 16);

      sub_298CB8340(a1, v42, a4, a7);
      return;
    case 38:
      v70 = *(a2 + 16);

      sub_298CB856C(a1, v70, a4, a7);
      return;
    case 39:
    case 41:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 98;
      goto LABEL_134;
    case 40:
      v21 = *(*(a2 + 16) + 16 * a4 + 8);
      v22 = a7[4];
      if (a7[3] - v22 > 1uLL)
      {
        *v22 = 28272;
        a7[4] += 2;
      }

      else
      {
        v23 = a7;
        sub_298B9BCEC(a7, "pn", 2uLL);
        a7 = v23;
      }

      LODWORD(v91) = v21 - 125;
      v92 = a7;
      goto LABEL_192;
    case 42:
    case 51:
      *(&v111.__r_.__value_.__s + 23) = 1;
      LOWORD(v111.__r_.__value_.__l.__data_) = 46;
      v8 = a1;
      v9 = a2;
      v10 = 104;
LABEL_134:
      v82 = a7;
      v83 = a4;
      std::string::push_back(&v111, v10);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = &v111;
      }

      else
      {
        v84 = v111.__r_.__value_.__r.__words[0];
      }

      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(v111.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v111.__r_.__value_.__l.__size_;
      }

      sub_298CC4E38(v8, *(v9 + 16), v83, v82, v84, size);
      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
      }

      return;
    case 43:

      sub_298CABF68(a1, a2, a4, a7);
      return;
    case 44:

      sub_298CAC090(a1, a2, a4, a7);
      return;
    case 45:

      sub_298CAC1B0(a1, a2, a4, a7);
      return;
    case 46:

      sub_298CAC2D0(a1, a2, a4, a7);
      return;
    case 47:

      sub_298CAC3F0(a1, a2, a4, a7);
      return;
    case 48:

      sub_298CAC510(a1, a2, a4, a7);
      return;
    case 49:

      sub_298CAC630(a1, a2, a4, a7);
      return;
    case 50:

      sub_298CAC750(a1, a2, a4, a7);
      return;
    case 55:
      v90 = *(a2 + 16);

      sub_298CAE560(a1, v90, a4, a7);
      return;
    case 56:
      v11 = *(a2 + 16);

      sub_298CAEB3C(a1, v11, a4, a7);
      return;
    case 57:
      v78 = a7;
      (*(*a1 + 40))(a1, a7, *(*(a2 + 16) + 16 * a4 + 8));
      v52 = v78;
      v79 = v78[4];
      if (v78[3] - v79 > 1uLL)
      {
        *v79 = 25646;
        v78[4] += 2;
        return;
      }

      v50 = ".d";
LABEL_129:
      v80 = 2;
      goto LABEL_186;
    case 58:
      v27 = *(a2 + 16);
      v28 = a4;
      sub_298B47440(v112, a7, 0, a1[48], a1[49]);
      v29 = *(v27 + 16 * v28 + 8);
      v111.__r_.__value_.__r.__words[0] = &unk_2A1F1C388;
      v111.__r_.__value_.__l.__size_ = "#%#llx";
      v111.__r_.__value_.__r.__words[2] = v29;
LABEL_170:
      sub_298B9B1F8(v112[0], &v111);
      sub_298B47608(v112);
      return;
    case 59:
      v81 = *(a2 + 16);

      sub_298CAD638(a1, v81, a4, a7);
      return;
    case 60:
      v41 = *(a2 + 16);

      sub_298CAD864(a1, v41, a4, a6, a7);
      return;
    case 61:
      v63 = a1;
      v64 = a7;
      v7 = sub_298CC3AA8(*(*(a2 + 16) + 16 * a4 + 8));
      v65 = *(*v63 + 40);
      a1 = v63;
      v66 = v64;
LABEL_153:

      v65(a1, v66, v7);
      return;
    case 62:
      v67 = *(a2 + 16);
      v68 = a7[4];
      if (a7[3] == v68)
      {
        v100 = a7;
        v101 = a4;
        sub_298B9BCEC(a7, "c", 1uLL);
        a7 = v100;
        v69 = v67 + 16 * v101;
      }

      else
      {
        *v68 = 99;
        ++a7[4];
        v69 = v67 + 16 * a4;
      }

LABEL_190:
      v91 = *(v69 + 8);
      if ((v91 & 0x8000000000000000) != 0)
      {
        v91 = -v91;
        v92 = a7;
        if (!HIDWORD(v91))
        {
          v102 = 1;
          goto LABEL_195;
        }

        v103 = 1;
      }

      else
      {
        v92 = a7;
        if (!HIDWORD(v91))
        {
LABEL_192:
          v102 = 0;
LABEL_195:

          sub_298B8FC48(v92, v91, 0, 0, v102);
          return;
        }

        v103 = 0;
      }

      sub_298B8FEA0(v92, v91, 0, 0, v103);
      return;
    default:

      sub_298CB3ABC(a1, a2, a4, a7);
      return;
  }
}

uint64_t sub_298CC09A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 50) = 1;
  *(result + 51) = 0;
  *(result + 54) = 0;
  *result = &unk_2A1F21110;
  return result;
}

uint64_t sub_298CC09E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 10)
  {
    return 0;
  }

  if (*a2 != 0x7361696C612D6F6ELL || *(a2 + 8) != 29541)
  {
    return 0;
  }

  *(a1 + 50) = 0;
  return 1;
}

_BYTE *sub_298CC0A2C(uint64_t a1, void *a2, int a3)
{
  sub_298B47440(v9, a2, 1, *(a1 + 48), *(a1 + 49));
  v4 = word_298D61BF0[a3 - 1];
  v5 = v9[0];
  v6 = strlen(&aD7D8D9D10[v4]);
  v7 = *(v9[0] + 32);
  if (v6 <= *(v9[0] + 24) - v7)
  {
    if (v6)
    {
      memcpy(v7, &aD7D8D9D10[v4], v6);
      *(v5 + 32) += v6;
    }
  }

  else
  {
    sub_298B9BCEC(v9[0], &aD7D8D9D10[v4], v6);
  }

  return sub_298B47608(v9);
}

char *sub_298CC0AE0(uint64_t a1, int a2)
{
  v2 = word_298D61BF0[a2 - 1];
  strlen(&aD7D8D9D10[v2]);
  return &aD7D8D9D10[v2];
}

void sub_298CC0B24(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, size_t __n, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v14 = (a6 + 264);
  v332 = a2;
  v15 = *a2;
  if (*a2 == 6910)
  {
    v16 = *(a2 + 16);
    v17 = v16[2];
    v18 = v16[6];
    v19 = v16[10];
    v20 = v16[14];
    v21 = ((v18 << 7) | (v17 << 11) | (8 * v19) | v20);
    v334 = 0;
    v335 = 0;
    v336 = 0;
    memset(&__p, 0, sizeof(__p));
    if (v18 != 7)
    {
      if ((v18 & 0xFFFFFFFE) == 8)
      {
        v62 = &unk_298EA55F0;
        v63 = 170;
        do
        {
          v64 = v63 >> 1;
          v65 = &v62[2 * (v63 >> 1)];
          v67 = *v65;
          v66 = v65 + 2;
          v63 += ~(v63 >> 1);
          if (v67 < v21)
          {
            v62 = v66;
          }

          else
          {
            v63 = v64;
          }
        }

        while (v63);
        if (v62 != dword_298EA5B40 && *v62 == v21)
        {
          __src = a4;
          v68 = &(&off_29EEF7500)[15 * v62[1]];
          v69 = *(a6 + 216);
          if ((*(a6 + 216) & 0x40) != 0)
          {
            goto LABEL_43;
          }

          v70 = *(a6 + 232);
          v71 = *(a6 + 248);
          v72 = *v14;
          v73 = *(a6 + 280);
          v74 = *(v68 + 2);
          __s1 = *(v68 + 1);
          v338 = v74;
          v75 = *(v68 + 4);
          v339 = *(v68 + 3);
          v340 = v75;
          v76 = *(v68 + 5);
          v342 = *(v68 + 6);
          v77 = *(a6 + 296);
          __s1 = vandq_s8(__s1, v69);
          v338 = vandq_s8(v338, v70);
          v339 = vandq_s8(v339, v71);
          v340 = vandq_s8(v75, v72);
          v341 = vandq_s8(v76, v73);
          v342 = vandq_s8(v342, v77);
          if (!memcmp(&__s1, v68 + 2, 0x60uLL))
          {
LABEL_43:
            v328 = v11;
            v327 = *(v68 + 112);
            MEMORY[0x29C294300](&v334, "tlbi\t");
            v78 = *v68;
            v79 = strlen(*v68);
            if (v79 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_663;
            }

            v80 = v79;
            v81 = __n;
            if (v79 >= 0x17)
            {
              operator new();
            }

            v338.i8[7] = v79;
            if (v79)
            {
              memmove(&__s1, v78, v79);
            }

            __s1.i8[v80] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            *&__p.__r_.__value_.__l.__data_ = __s1;
            __p.__r_.__value_.__r.__words[2] = v338.i64[0];
LABEL_139:
            __n = v81;
LABEL_140:
            if (v336 >= 0)
            {
              v149 = HIBYTE(v336);
            }

            else
            {
              v149 = v335;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (size + v149 <= 0x7FFFFFFFFFFFFFF7)
            {
              if (size + v149 > 0x16)
              {
                operator new();
              }

              v338.i64[0] = 0;
              __s1 = 0uLL;
              v338.i8[7] = size + v149;
              if (v149)
              {
                if (v336 >= 0)
                {
                  v151 = &v334;
                }

                else
                {
                  v151 = v334;
                }

                memmove(&__s1, v151, v149);
              }

              v152 = &__s1.i8[v149];
              if (size)
              {
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                memmove(v152, p_p, size);
              }

              v152[size] = 0;
              if (v338.i8[7] >= 0)
              {
                v154 = (&__s1 + v338.u8[7]);
              }

              else
              {
                v154 = (__s1.i64[0] + __s1.i64[1]);
              }

              if (v338.i8[7] >= 0)
              {
                p_s1 = &__s1;
              }

              else
              {
                p_s1 = __s1.i64[0];
              }

              for (; p_s1 != v154; p_s1 = (p_s1 + 1))
              {
                p_s1->i8[0] = __tolower(p_s1->i8[0]);
              }

              v156 = *(a7 + 32);
              v10 = __src;
              if (v156 >= *(a7 + 24))
              {
                v157 = *(a7 + 16);
                v11 = v328;
                if (v157)
                {
LABEL_170:
                  *(a7 + 32) = v157;
                  sub_298B9BB84(a7);
                  v158 = *(a7 + 32);
LABEL_171:
                  *(a7 + 32) = v158 + 1;
                  *v158 = 9;
                }

                else
                {
                  while (*(a7 + 56))
                  {
                    sub_298B9AE98(a7);
                    v158 = *(a7 + 32);
                    if (v158 < *(a7 + 24))
                    {
                      goto LABEL_171;
                    }

                    v157 = *(a7 + 16);
                    if (v157)
                    {
                      goto LABEL_170;
                    }
                  }

                  v343 = 9;
                  sub_298B9BB84(a7);
                }
              }

              else
              {
                *(a7 + 32) = v156 + 1;
                *v156 = 9;
                v11 = v328;
              }

              if (v338.i8[7] >= 0)
              {
                v159 = &__s1;
              }

              else
              {
                v159 = __s1.i64[0];
              }

              if (v338.i8[7] >= 0)
              {
                v160 = v338.u8[7];
              }

              else
              {
                v160 = __s1.u64[1];
              }

              sub_298B9BCEC(a7, v159, v160);
              if (v327)
              {
                v161 = *(a7 + 32);
                if (*(a7 + 24) - v161 > 1uLL)
                {
                  *v161 = 8236;
                  *(a7 + 32) += 2;
                }

                else
                {
                  sub_298B9BCEC(a7, ", ", 2uLL);
                }

                (*(*a1 + 40))(a1, a7, *(*(v12 + 16) + 72));
                if (v338.i8[7] < 0)
                {
LABEL_204:
                  operator delete(__s1.i64[0]);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_205:
                    operator delete(__p.__r_.__value_.__l.__data_);
                    v105 = 1;
                    if (SHIBYTE(v336) < 0)
                    {
LABEL_184:
                      operator delete(v334);
                      if ((v105 & 1) == 0)
                      {
                        goto LABEL_185;
                      }

                      goto LABEL_678;
                    }

                    goto LABEL_118;
                  }

                  goto LABEL_183;
                }
              }

              else if (v338.i8[7] < 0)
              {
                goto LABEL_204;
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_205;
              }

LABEL_183:
              v105 = 1;
              if (SHIBYTE(v336) < 0)
              {
                goto LABEL_184;
              }

              goto LABEL_118;
            }

LABEL_663:
            sub_298ADDDA0();
          }

          goto LABEL_62;
        }
      }

      goto LABEL_117;
    }

    if (v19 > 0xE)
    {
      goto LABEL_75;
    }

    if (((1 << v19) & 0x7C50) != 0)
    {
      v22 = &unk_298EA2CC8;
      v23 = 30;
      do
      {
        v24 = v23 >> 1;
        v25 = &v22[4 * (v23 >> 1)];
        v27 = *v25;
        v26 = v25 + 4;
        v23 += ~(v23 >> 1);
        if (v27 < v21)
        {
          v22 = v26;
        }

        else
        {
          v23 = v24;
        }
      }

      while (v23);
      if (v22 != &unk_298EA2DB8 && *v22 == v21)
      {
        __src = a4;
        v28 = &(&off_29EED1728)[14 * *(v22 + 1)];
        v29 = *(a6 + 216);
        if ((*(a6 + 216) & 0x40) != 0)
        {
          goto LABEL_14;
        }

        v30 = *(a6 + 232);
        v31 = *(a6 + 248);
        v32 = *v14;
        v33 = *(a6 + 280);
        v34 = *(v28 + 2);
        __s1 = *(v28 + 1);
        v338 = v34;
        v35 = *(v28 + 4);
        v339 = *(v28 + 3);
        v340 = v35;
        v36 = *(v28 + 5);
        v342 = *(v28 + 6);
        v37 = *(a6 + 296);
        __s1 = vandq_s8(__s1, v29);
        v338 = vandq_s8(v338, v30);
        v339 = vandq_s8(v339, v31);
        v340 = vandq_s8(v35, v32);
        v341 = vandq_s8(v36, v33);
        v342 = vandq_s8(v342, v37);
        if (!memcmp(&__s1, v28 + 2, 0x60uLL))
        {
LABEL_14:
          v328 = v11;
          v38 = "dc\t";
LABEL_130:
          MEMORY[0x29C294300](&v334, v38);
          v146 = *v28;
          v147 = strlen(*v28);
          if (v147 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_663;
          }

          v148 = v147;
          v81 = __n;
          if (v147 >= 0x17)
          {
            operator new();
          }

          v338.i8[7] = v147;
          if (v147)
          {
            memmove(&__s1, v146, v147);
          }

          __s1.i8[v148] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          *&__p.__r_.__value_.__l.__data_ = __s1;
          __p.__r_.__value_.__r.__words[2] = v338.i64[0];
          v327 = 1;
          goto LABEL_139;
        }

        goto LABEL_62;
      }

      goto LABEL_117;
    }

    if (((1 << v19) & 0x300) != 0)
    {
      v90 = &unk_298EA2BC0;
      v91 = 17;
      do
      {
        v92 = v91 >> 1;
        v93 = &v90[4 * (v91 >> 1)];
        v95 = *v93;
        v94 = v93 + 4;
        v91 += ~(v91 >> 1);
        if (v95 < v21)
        {
          v90 = v94;
        }

        else
        {
          v91 = v92;
        }
      }

      while (v91);
      if (v90 != &unk_298EA2C48 && *v90 == v21)
      {
        __src = a4;
        v28 = &(&off_29EED0898)[14 * *(v90 + 1)];
        v96 = *(a6 + 216);
        if ((*(a6 + 216) & 0x40) != 0)
        {
          goto LABEL_129;
        }

        v97 = *(a6 + 232);
        v98 = *(a6 + 248);
        v99 = *v14;
        v100 = *(a6 + 280);
        v101 = *(v28 + 2);
        __s1 = *(v28 + 1);
        v338 = v101;
        v102 = *(v28 + 4);
        v339 = *(v28 + 3);
        v340 = v102;
        v103 = *(v28 + 5);
        v342 = *(v28 + 6);
        v104 = *(a6 + 296);
        __s1 = vandq_s8(__s1, v96);
        v338 = vandq_s8(v338, v97);
        v339 = vandq_s8(v339, v98);
        v340 = vandq_s8(v102, v99);
        v341 = vandq_s8(v103, v100);
        v342 = vandq_s8(v342, v104);
        if (!memcmp(&__s1, v28 + 2, 0x60uLL))
        {
LABEL_129:
          v328 = v11;
          v38 = "at\t";
          goto LABEL_130;
        }

LABEL_62:
        v105 = 0;
        v10 = __src;
        if (SHIBYTE(v336) < 0)
        {
          goto LABEL_184;
        }

        goto LABEL_118;
      }

LABEL_117:
      v105 = 0;
      if (SHIBYTE(v336) < 0)
      {
        goto LABEL_184;
      }

LABEL_118:
      if ((v105 & 1) == 0)
      {
        goto LABEL_185;
      }

      goto LABEL_678;
    }

    if (v19 != 5)
    {
LABEL_75:
      if (v19 != 1)
      {
        if (v19 == 3 && v17 == 3)
        {
          if (*(a6 + 216) & 0x40) != 0 || (v20 != 6 ? (v112 = 112) : (v112 = 164), ((*(a6 + 216 + 8 * (v112 >> 6)) >> (v112 & 0x3C))))
          {
            if ((v20 - 4) <= 3)
            {
              v328 = a3;
              __src = a4;
              MEMORY[0x29C294300](&v334, off_29EEBA180[v20 - 4]);
              MEMORY[0x29C294300](&__p, "RCTX");
              v327 = 1;
              goto LABEL_140;
            }
          }
        }

        goto LABEL_117;
      }

      if (v17)
      {
        goto LABEL_117;
      }
    }

    v127 = &unk_298EA2DB8;
    v128 = 3;
    do
    {
      v129 = v128 >> 1;
      v130 = &v127[2 * (v128 >> 1)];
      v132 = *v130;
      v131 = v130 + 2;
      v128 += ~(v128 >> 1);
      if (v132 < v21)
      {
        v127 = v131;
      }

      else
      {
        v128 = v129;
      }
    }

    while (v128);
    if (v127 != dword_298EA2DD0 && *v127 == v21)
    {
      v133 = &(&off_29EED2448)[15 * v127[1]];
      v134 = *(a6 + 216);
      if ((*(a6 + 216) & 0x40) != 0)
      {
        goto LABEL_490;
      }

      v135 = *(a6 + 232);
      v136 = *(a6 + 248);
      v137 = *v14;
      v138 = *(a6 + 280);
      v139 = *(v133 + 2);
      __s1 = *(v133 + 1);
      v338 = v139;
      v140 = *(v133 + 4);
      v339 = *(v133 + 3);
      v340 = v140;
      v141 = *(v133 + 5);
      v342 = *(v133 + 6);
      v142 = *(a6 + 296);
      __s1 = vandq_s8(__s1, v134);
      v338 = vandq_s8(v338, v135);
      v339 = vandq_s8(v339, v136);
      v340 = vandq_s8(v140, v137);
      v341 = vandq_s8(v141, v138);
      v342 = vandq_s8(v342, v142);
      if (!memcmp(&__s1, v133 + 2, 0x60uLL))
      {
LABEL_490:
        v327 = *(v133 + 112);
        MEMORY[0x29C294300](&v334, "ic\t");
        v265 = *v133;
        v266 = strlen(v265);
        if (v266 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_663;
        }

        v267 = v266;
        __src = v10;
        if (v266 >= 0x17)
        {
          operator new();
        }

        v338.i8[7] = v266;
        if (v266)
        {
          memmove(&__s1, v265, v266);
        }

        v328 = v11;
        __s1.i8[v267] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = __s1;
        __p.__r_.__value_.__r.__words[2] = v338.i64[0];
        goto LABEL_140;
      }
    }

    goto LABEL_117;
  }

  if ((v15 & 0xFFFFFFFE) == 0x1332)
  {
    v82 = *(a2 + 16);
    if ((~v82[2] & 0x18) != 0)
    {
      goto LABEL_284;
    }

    v83 = v82[10];
    v84 = *(a1 + 32);
    v85 = v84[3];
    if (v82[10] >> 3 < *(v85 + 758) && ((*(*(v85 + 744) + (v83 >> 3)) >> (v83 & 7)) & 1) != 0)
    {
      v86 = v84[6];
      v87 = *v84;
      v88 = (v86 + 2 * *(*v84 + 24 * v83 + 8));
      if (*v88)
      {
        v89 = v83 + *v88;
        while (1)
        {
          if (v89 >> 3 < *(v85 + 1270) && ((*(*(v85 + 1256) + (v89 >> 3)) >> (v89 & 7)) & 1) != 0)
          {
            v108 = *(v87 + 24 * v89 + 4);
            v106 = *(v86 + 2 * v108);
            if (*(v86 + 2 * v108))
            {
              LOWORD(v106) = v89 + v106;
              v109 = (v84[10] + 2 * *(v87 + 24 * v89 + 12));
              v110 = (v86 + 2 + 2 * v108);
              do
              {
                if (*v109 == 16)
                {
                  v106 = v106;
                  goto LABEL_65;
                }

                ++v109;
                v111 = *v110++;
                LOWORD(v106) = v106 + v111;
              }

              while (v111);
              v106 = 0;
            }

LABEL_65:
            if (v106 == v83)
            {
              break;
            }
          }

          v107 = v88[1];
          ++v88;
          v89 += v107;
          if (!v107)
          {
            goto LABEL_85;
          }
        }

        LODWORD(v83) = v89;
      }

      else
      {
LABEL_85:
        LODWORD(v83) = 0;
      }
    }

    v113 = v82[2] & 7 | (8 * v82[18]) | (16 * (v15 == 4915)) | (32 * v82[14]);
    v114 = *(a7 + 32);
    if (*(a7 + 24) - v114 > 6uLL)
    {
      *(v114 + 3) = 544040562;
      *v114 = 1919971849;
      *(a7 + 32) += 7;
    }

    else
    {
      sub_298B9BCEC(a7, "\trprfm ", 7uLL);
    }

    v115 = &unk_298EA2EF0;
    v116 = 4;
    do
    {
      v117 = v116 >> 1;
      v118 = &v115[8 * (v116 >> 1)];
      v120 = *v118;
      v119 = v118 + 8;
      v116 += ~(v116 >> 1);
      if (v120 < v113)
      {
        v115 = v119;
      }

      else
      {
        v116 = v117;
      }
    }

    while (v116);
    if (v115 == &unk_298EA2F10)
    {
      v121 = *(a7 + 32);
    }

    else
    {
      v121 = *(a7 + 32);
      if (*v115 == v113)
      {
        v122 = 14 * *(v115 + 1);
        v123 = (&off_29EED3570)[v122];
        if (v123)
        {
          v124 = strlen((&off_29EED3570)[v122]);
          v125 = v124;
          if (v124 <= *(a7 + 24) - v121)
          {
            if (v124)
            {
              memcpy(v121, v123, v124);
              v121 = (*(a7 + 32) + v125);
              *(a7 + 32) = v121;
            }
          }

          else
          {
            sub_298B9BCEC(a7, v123, v124);
            v121 = *(a7 + 32);
          }
        }

        if (*(a7 + 24) - v121 <= 1uLL)
        {
          goto LABEL_210;
        }

        *v121 = 8236;
        goto LABEL_212;
      }
    }

    if (*(a7 + 24) == v121)
    {
      sub_298B9BCEC(a7, "#", 1uLL);
      if (*(a1 + 51) == 1)
      {
        goto LABEL_102;
      }
    }

    else
    {
      *v121 = 35;
      ++*(a7 + 32);
      if (*(a1 + 51) == 1)
      {
LABEL_102:
        sub_298B47284(a1, v113, &__s1);
LABEL_105:
        sub_298B9B1F8(a7, &__s1);
        v126 = *(a7 + 32);
        if (*(a7 + 24) - v126 <= 1uLL)
        {
LABEL_210:
          sub_298B9BCEC(a7, ", ", 2uLL);
          goto LABEL_213;
        }

        *v126 = 8236;
LABEL_212:
        *(a7 + 32) += 2;
LABEL_213:
        v167 = word_298D61BF0[(v83 - 1)];
        v168 = strlen(&aD7D8D9D10[v167]);
        v169 = *(a7 + 32);
        if (v168 <= *(a7 + 24) - v169)
        {
          if (v168)
          {
            memcpy(v169, &aD7D8D9D10[v167], v168);
            v169 = (*(a7 + 32) + v168);
            *(a7 + 32) = v169;
          }
        }

        else
        {
          sub_298B9BCEC(a7, &aD7D8D9D10[v167], v168);
          v169 = *(a7 + 32);
        }

        if (*(a7 + 24) - v169 > 2uLL)
        {
          v169[2] = 91;
          *v169 = 8236;
          *(a7 + 32) += 3;
          v170 = *(v12 + 16);
          v171 = *(v170 + 16);
          if (v171 != 2)
          {
LABEL_219:
            if (v171 == 1)
            {
              (*(*a1 + 40))(a1, a7, *(v170 + 24));
              v172 = *(a7 + 32);
              if (*(a7 + 24) != v172)
              {
LABEL_221:
                *v172 = 93;
                ++*(a7 + 32);
LABEL_659:
                v164 = a1;
                v165 = a7;
                v163 = v10;
                v166 = __n;
LABEL_660:
                sub_298B46CE4(v164, v165, v163, v166);
                return;
              }
            }

            else
            {
              sub_298B439C4(*(v170 + 24), a7, *(a1 + 16), 0);
              v172 = *(a7 + 32);
              if (*(a7 + 24) != v172)
              {
                goto LABEL_221;
              }
            }

LABEL_224:
            sub_298B9BCEC(a7, "]", 1uLL);
            goto LABEL_659;
          }
        }

        else
        {
          sub_298B9BCEC(a7, ", [", 3uLL);
          v170 = *(v12 + 16);
          v171 = *(v170 + 16);
          if (v171 != 2)
          {
            goto LABEL_219;
          }
        }

        sub_298CABA58(a1, v170, 1u, a7);
        v172 = *(a7 + 32);
        if (*(a7 + 24) != v172)
        {
          goto LABEL_221;
        }

        goto LABEL_224;
      }
    }

    __s1.i64[0] = &unk_2A1F1C388;
    __s1.i64[1] = "%lld";
    v338.i64[0] = v113;
    goto LABEL_105;
  }

  if ((v15 & 0xFFFFFFFE) != 0x1AFC)
  {
    goto LABEL_284;
  }

  v39 = *(a2 + 16);
  v40 = *(v39 + 8);
  v41 = *(v39 + 24);
  v42 = *(v39 + 40);
  v43 = *(v39 + 56);
  v334 = 0;
  v335 = 0;
  v336 = 0;
  memset(&__p, 0, sizeof(__p));
  if ((v41 & 0xFFFFFFFE) != 8)
  {
    goto LABEL_30;
  }

  v44 = ((v41 << 7) | (v40 << 11) | v43 | (8 * v42));
  if (v41 == 9)
  {
    if ((*(a6 + 240) & 0x80) == 0)
    {
      goto LABEL_30;
    }

    v44 &= ~0x80u;
  }

  v45 = &unk_298EA55F0;
  v46 = 170;
  do
  {
    v47 = v46 >> 1;
    v48 = &v45[2 * (v46 >> 1)];
    v50 = *v48;
    v49 = v48 + 2;
    v46 += ~(v46 >> 1);
    if (v50 < v44)
    {
      v45 = v49;
    }

    else
    {
      v46 = v47;
    }
  }

  while (v46);
  if (v45 == dword_298EA5B40)
  {
    goto LABEL_30;
  }

  if (*v45 != v44)
  {
    goto LABEL_30;
  }

  v51 = &(&off_29EEF7500)[15 * v45[1]];
  v52 = *(a6 + 216);
  if ((*(a6 + 216) & 0x40) == 0)
  {
    v53 = *(a6 + 232);
    v54 = *(a6 + 248);
    v55 = *v14;
    v56 = *(a6 + 280);
    v57 = *(v51 + 2);
    __s1 = *(v51 + 1);
    v338 = v57;
    v58 = *(v51 + 4);
    v339 = *(v51 + 3);
    v340 = v58;
    v59 = *(v51 + 5);
    v342 = *(v51 + 6);
    v60 = *(a6 + 296);
    __s1 = vandq_s8(__s1, v52);
    v338 = vandq_s8(v338, v53);
    v339 = vandq_s8(v339, v54);
    v340 = vandq_s8(v58, v55);
    v341 = vandq_s8(v59, v56);
    v342 = vandq_s8(v342, v60);
    if (memcmp(&__s1, v51 + 2, 0x60uLL))
    {
LABEL_30:
      v61 = 0;
      v10 = a4;
      if ((SHIBYTE(v336) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_283;
    }
  }

  MEMORY[0x29C294300](&v334, "tlbip\t");
  v143 = *v51;
  v144 = strlen(v143);
  if (v144 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_663;
  }

  v145 = v144;
  if (v144 >= 0x17)
  {
    operator new();
  }

  v338.i8[7] = v144;
  if (v144)
  {
    memmove(&__s1, v143, v144);
  }

  __s1.i8[v145] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v329 = v11;
  *&__p.__r_.__value_.__l.__data_ = __s1;
  __p.__r_.__value_.__r.__words[2] = v338.i64[0];
  if (v41 == 9)
  {
    std::string::append(&__p, "nXS");
  }

  v173 = v336 >= 0 ? HIBYTE(v336) : v335;
  v174 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (v174 + v173 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_663;
  }

  if (v174 + v173 > 0x16)
  {
    operator new();
  }

  v338.i64[0] = 0;
  __s1 = 0uLL;
  v338.i8[7] = v174 + v173;
  if (v173)
  {
    if (v336 >= 0)
    {
      v175 = &v334;
    }

    else
    {
      v175 = v334;
    }

    memmove(&__s1, v175, v173);
  }

  v176 = &__s1.i8[v173];
  if (v174)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v177 = &__p;
    }

    else
    {
      v177 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(v176, v177, v174);
  }

  v176[v174] = 0;
  if (v338.i8[7] >= 0)
  {
    v178 = (&__s1 + v338.u8[7]);
  }

  else
  {
    v178 = (__s1.i64[0] + __s1.i64[1]);
  }

  if (v338.i8[7] >= 0)
  {
    v179 = &__s1;
  }

  else
  {
    v179 = __s1.i64[0];
  }

  for (; v179 != v178; v179 = (v179 + 1))
  {
    v179->i8[0] = __tolower(v179->i8[0]);
  }

  v180 = *(a7 + 32);
  v10 = a4;
  if (v180 < *(a7 + 24))
  {
    *(a7 + 32) = v180 + 1;
    *v180 = 9;
LABEL_262:
    v11 = v329;
    goto LABEL_266;
  }

  v181 = *(a7 + 16);
  v11 = v329;
  if (!v181)
  {
    v10 = a4;
    while (*(a7 + 56))
    {
      sub_298B9AE98(a7);
      v182 = *(a7 + 32);
      if (v182 < *(a7 + 24))
      {
        v10 = a4;
        v11 = v329;
        goto LABEL_265;
      }

      v181 = *(a7 + 16);
      v11 = v329;
      if (v181)
      {
        goto LABEL_264;
      }
    }

    v343 = 9;
    sub_298B9BB84(a7);
    v10 = a4;
    goto LABEL_262;
  }

LABEL_264:
  *(a7 + 32) = v181;
  sub_298B9BB84(a7);
  v182 = *(a7 + 32);
LABEL_265:
  *(a7 + 32) = v182 + 1;
  *v182 = 9;
LABEL_266:
  if (v338.i8[7] >= 0)
  {
    v183 = &__s1;
  }

  else
  {
    v183 = __s1.i64[0];
  }

  if (v338.i8[7] >= 0)
  {
    v184 = v338.u8[7];
  }

  else
  {
    v184 = __s1.u64[1];
  }

  sub_298B9BCEC(a7, v183, v184);
  v185 = *(a7 + 32);
  if (*(a7 + 24) - v185 > 1uLL)
  {
    *v185 = 8236;
    *(a7 + 32) += 2;
  }

  else
  {
    sub_298B9BCEC(a7, ", ", 2uLL);
  }

  v186 = *(v12 + 16);
  if (*(v186 + 72) == 11)
  {
    sub_298CB3840(11, a7);
  }

  else
  {
    sub_298CAB2F8(a1, v186, 4u, a7);
  }

  if (v338.i8[7] < 0)
  {
    operator delete(__s1.i64[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v61 = 1;
  if ((SHIBYTE(v336) & 0x80000000) == 0)
  {
LABEL_31:
    if (v61)
    {
      goto LABEL_678;
    }

LABEL_284:
    v187 = v15 - 5207;
    if ((v15 - 7081) < 2 || v187 <= 1)
    {
      v188 = *(v12 + 16);
      v190 = v15 == 5208 || v15 == 7082;
      if (*(v188 + 32) != 2)
      {
        v191 = *(v188 + 40);
        goto LABEL_301;
      }

      v191 = *(v188 + 40);
      v192 = *(v188 + 48);
      if (v191)
      {
        if (v192 != 2)
        {
          goto LABEL_301;
        }

        v193 = *(v188 + 56);
      }

      else
      {
        if (v192 != 2)
        {
          v191 = 0;
          goto LABEL_301;
        }

        v193 = *(v188 + 56);
        switch(v193)
        {
          case 31:
            if ((v15 == 7082 || v15 == 5208) && v187 <= 1)
            {
              v225 = "sxtw";
              goto LABEL_502;
            }

            v194 = 0;
            v193 = 31;
            goto LABEL_505;
          case 15:
            if (v187 >= 2)
            {
              v225 = "uxth";
            }

            else
            {
              v225 = "sxth";
            }

            if (v187 < 2 || v15 != 7082)
            {
              while (1)
              {
LABEL_502:
                v271 = *(a7 + 32);
                if (v271 < *(a7 + 24))
                {
                  goto LABEL_541;
                }

                v270 = *(a7 + 16);
                if (v270)
                {
                  break;
                }

                if (!*(a7 + 56))
                {
                  __s1.i8[0] = 9;
                  sub_298B9BB84(a7);
                  v283 = *(a7 + 32);
                  if (*(a7 + 24) - v283 > 3uLL)
                  {
                    goto LABEL_666;
                  }

LABEL_542:
                  sub_298B9BCEC(a7, v225, 4uLL);
                  v284 = *(a7 + 32);
                  goto LABEL_670;
                }

                sub_298B9AE98(a7);
              }

              *(a7 + 32) = v270;
              sub_298B9BB84(a7);
              v271 = *(a7 + 32);
LABEL_541:
              *(a7 + 32) = v271 + 1;
              *v271 = 9;
              v283 = *(a7 + 32);
              if (*(a7 + 24) - v283 <= 3uLL)
              {
                goto LABEL_542;
              }

LABEL_666:
              *v283 = *v225;
              v284 = (*(a7 + 32) + 4);
              for (*(a7 + 32) = v284; ; v284 = *(a7 + 32))
              {
LABEL_670:
                if (v284 < *(a7 + 24))
                {
                  goto LABEL_673;
                }

                v320 = *(a7 + 16);
                if (v320)
                {
                  *(a7 + 32) = v320;
                  sub_298B9BB84(a7);
                  v284 = *(a7 + 32);
LABEL_673:
                  *(a7 + 32) = v284 + 1;
                  *v284 = 9;
                  goto LABEL_674;
                }

                if (!*(a7 + 56))
                {
                  break;
                }

                sub_298B9AE98(a7);
              }

              __s1.i8[0] = 9;
              sub_298B9BB84(a7);
LABEL_674:
              (*(*a1 + 40))(a1, a7, *(v188 + 8));
              v321 = *(a7 + 32);
              if (*(a7 + 24) - v321 > 1uLL)
              {
                *v321 = 8236;
                *(a7 + 32) += 2;
              }

              else
              {
                sub_298B9BCEC(a7, ", ", 2uLL);
              }

              v322 = sub_298CC3AA8(*(v188 + 24));
              (*(*a1 + 40))(a1, a7, v322);
              goto LABEL_678;
            }

            v194 = 0;
            v193 = 15;
            goto LABEL_505;
          case 7:
            if (v187 >= 2)
            {
              v225 = "uxtb";
            }

            else
            {
              v225 = "sxtb";
            }

            if (v187 < 2 || v15 != 7082)
            {
              goto LABEL_502;
            }

            v194 = 0;
            v193 = 7;
            goto LABEL_505;
        }
      }

      v194 = v193 + 1 == v191;
      if (v15 == 7081 && v193 != 31 && v193 + 1 == v191)
      {
        v195 = 31;
LABEL_509:
        LODWORD(v191) = v195 - v193;
        v272 = "lsl";
        goto LABEL_510;
      }

LABEL_505:
      if (v15 == 7082 && v193 != 63 && v194)
      {
        v195 = 63;
        goto LABEL_509;
      }

      if (v15 == 7081 && v193 == 31)
      {
        v272 = "lsr";
        goto LABEL_510;
      }

      if (v15 == 7082 && v193 == 63)
      {
        v272 = "lsr";
        goto LABEL_510;
      }

      v278 = v15 == 5208 && v193 == 63;
      v279 = v193 == 31 && v15 == 5207;
      v272 = "asr";
      if (v279 || v278)
      {
        while (1)
        {
LABEL_510:
          v273 = *(a7 + 32);
          if (v273 < *(a7 + 24))
          {
            goto LABEL_515;
          }

          v274 = *(a7 + 16);
          if (v274)
          {
            break;
          }

          if (!*(a7 + 56))
          {
            __s1.i8[0] = 9;
            sub_298B9BB84(a7);
            v275 = *(a7 + 32);
            if ((*(a7 + 24) - v275) > 2)
            {
              goto LABEL_636;
            }

LABEL_516:
            sub_298B9BCEC(a7, v272, 3uLL);
            v276 = *(a7 + 32);
            goto LABEL_640;
          }

          sub_298B9AE98(a7);
        }

        *(a7 + 32) = v274;
        sub_298B9BB84(a7);
        v273 = *(a7 + 32);
LABEL_515:
        *(a7 + 32) = v273 + 1;
        *v273 = 9;
        v275 = *(a7 + 32);
        if ((*(a7 + 24) - v275) <= 2)
        {
          goto LABEL_516;
        }

LABEL_636:
        *v275 = *v272;
        *(v275 + 2) = v272[2];
        v276 = (*(a7 + 32) + 3);
        for (*(a7 + 32) = v276; ; v276 = *(a7 + 32))
        {
LABEL_640:
          if (v276 < *(a7 + 24))
          {
            goto LABEL_643;
          }

          v314 = *(a7 + 16);
          if (v314)
          {
            *(a7 + 32) = v314;
            sub_298B9BB84(a7);
            v276 = *(a7 + 32);
LABEL_643:
            *(a7 + 32) = v276 + 1;
            *v276 = 9;
            goto LABEL_644;
          }

          if (!*(a7 + 56))
          {
            break;
          }

          sub_298B9AE98(a7);
        }

        __s1.i8[0] = 9;
        sub_298B9BB84(a7);
LABEL_644:
        (*(*a1 + 40))(a1, a7, *(v188 + 8));
        v315 = *(a7 + 32);
        if (*(a7 + 24) - v315 > 1uLL)
        {
          *v315 = 8236;
          *(a7 + 32) += 2;
        }

        else
        {
          sub_298B9BCEC(a7, ", ", 2uLL);
        }

        (*(*a1 + 40))(a1, a7, *(v188 + 24));
        v316 = *(a7 + 32);
        if (*(a7 + 24) - v316 > 1uLL)
        {
          *v316 = 8236;
          *(a7 + 32) += 2;
        }

        else
        {
          sub_298B9BCEC(a7, ", ", 2uLL);
        }

        sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
        v317 = __s1.i64[0];
        v318 = *(__s1.i64[0] + 32);
        if (*(__s1.i64[0] + 24) == v318)
        {
          sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
          v305 = __s1.i64[0];
          if ((v191 & 0x80000000) == 0)
          {
            goto LABEL_652;
          }
        }

        else
        {
          *v318 = 35;
          ++*(v317 + 32);
          v305 = __s1.i64[0];
          if ((v191 & 0x80000000) == 0)
          {
LABEL_652:
            LODWORD(v306) = v191;
LABEL_653:
            v319 = 0;
LABEL_657:
            sub_298B8FC48(v305, v306, 0, 0, v319);
            goto LABEL_658;
          }
        }

        LODWORD(v306) = -v191;
LABEL_656:
        v319 = 1;
        goto LABEL_657;
      }

LABEL_301:
      v197 = *(a7 + 24);
      v196 = *(a7 + 32);
      if (v191 > *(v188 + 56))
      {
        if (v196 < v197)
        {
LABEL_323:
          *(a7 + 32) = v196 + 1;
          *v196 = 9;
        }

        else
        {
          while (1)
          {
            v198 = *(a7 + 16);
            if (v198)
            {
              *(a7 + 32) = v198;
              sub_298B9BB84(a7);
              v196 = *(a7 + 32);
              goto LABEL_323;
            }

            if (!*(a7 + 56))
            {
              break;
            }

            sub_298B9AE98(a7);
            v196 = *(a7 + 32);
            if (v196 < *(a7 + 24))
            {
              goto LABEL_323;
            }
          }

          __s1.i8[0] = 9;
          sub_298B9BB84(a7);
        }

        if (v187 >= 2)
        {
          v206 = "ubfiz";
        }

        else
        {
          v206 = "sbfiz";
        }

        v207 = *(a7 + 32);
        if ((*(a7 + 24) - v207) > 4)
        {
          *v207 = *v206;
          *(v207 + 4) = v206[4];
          v208 = (*(a7 + 32) + 5);
          *(a7 + 32) = v208;
        }

        else
        {
          sub_298B9BCEC(a7, v206, 5uLL);
          v208 = *(a7 + 32);
        }

        while (1)
        {
          if (v208 < *(a7 + 24))
          {
            goto LABEL_349;
          }

          v209 = *(a7 + 16);
          if (v209)
          {
            *(a7 + 32) = v209;
            sub_298B9BB84(a7);
            v208 = *(a7 + 32);
LABEL_349:
            *(a7 + 32) = v208 + 1;
            *v208 = 9;
            goto LABEL_350;
          }

          if (!*(a7 + 56))
          {
            break;
          }

          sub_298B9AE98(a7);
          v208 = *(a7 + 32);
        }

        __s1.i8[0] = 9;
        sub_298B9BB84(a7);
LABEL_350:
        (*(*a1 + 40))(a1, a7, *(v188 + 8));
        v214 = *(a7 + 32);
        if (*(a7 + 24) - v214 > 1uLL)
        {
          *v214 = 8236;
          *(a7 + 32) += 2;
        }

        else
        {
          sub_298B9BCEC(a7, ", ", 2uLL);
        }

        (*(*a1 + 40))(a1, a7, *(v188 + 24));
        v215 = *(a7 + 32);
        if (*(a7 + 24) - v215 > 1uLL)
        {
          *v215 = 8236;
          *(a7 + 32) += 2;
        }

        else
        {
          sub_298B9BCEC(a7, ", ", 2uLL);
        }

        sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
        v216 = __s1.i64[0];
        v217 = *(__s1.i64[0] + 32);
        if (*(__s1.i64[0] + 24) == v217)
        {
          sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
        }

        else
        {
          *v217 = 35;
          ++*(v216 + 32);
        }

        v226 = 32;
        if (v190)
        {
          v226 = 64;
        }

        v227 = *(v188 + 40);
        v228 = v226 - v227;
        if (v226 - v227 < 0)
        {
          v228 = v227 - v226;
          if (!((v227 - v226) >> 32))
          {
            v229 = 1;
LABEL_394:
            sub_298B8FC48(__s1.i64[0], v228, 0, 0, v229);
            sub_298B47608(&__s1);
            v231 = *(a7 + 32);
            if (*(a7 + 24) - v231 <= 1uLL)
            {
LABEL_395:
              sub_298B9BCEC(a7, ", ", 2uLL);
LABEL_604:
              sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
              v309 = __s1.i64[0];
              v310 = *(__s1.i64[0] + 32);
              if (*(__s1.i64[0] + 24) == v310)
              {
                sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
                v311 = *(v188 + 56);
                v305 = __s1.i64[0];
                if (v311 >= -1)
                {
LABEL_606:
                  v306 = v311 + 1;
                  if (!((v311 + 1) >> 32))
                  {
                    goto LABEL_653;
                  }

LABEL_607:
                  sub_298B8FEA0(v305, v306, 0, 0, 0);
                  goto LABEL_658;
                }
              }

              else
              {
                *v310 = 35;
                ++*(v309 + 32);
                v311 = *(v188 + 56);
                v305 = __s1.i64[0];
                if (v311 >= -1)
                {
                  goto LABEL_606;
                }
              }

              v306 = ~v311;
              if (v311 >= 0xFFFFFFFF00000000)
              {
                goto LABEL_656;
              }

LABEL_600:
              sub_298B8FEA0(v305, v306, 0, 0, 1);
LABEL_658:
              sub_298B47608(&__s1);
              goto LABEL_659;
            }

LABEL_603:
            *v231 = 8236;
            *(a7 + 32) += 2;
            goto LABEL_604;
          }

          v296 = 1;
        }

        else
        {
          if (!HIDWORD(v228))
          {
            v229 = 0;
            goto LABEL_394;
          }

          v296 = 0;
        }

        sub_298B8FEA0(__s1.i64[0], v228, 0, 0, v296);
        sub_298B47608(&__s1);
        v231 = *(a7 + 32);
        if (*(a7 + 24) - v231 <= 1uLL)
        {
          goto LABEL_395;
        }

        goto LABEL_603;
      }

      while (1)
      {
        if (v196 < v197)
        {
          goto LABEL_336;
        }

        v199 = *(a7 + 16);
        if (v199)
        {
          *(a7 + 32) = v199;
          sub_298B9BB84(a7);
          v196 = *(a7 + 32);
LABEL_336:
          *(a7 + 32) = v196 + 1;
          *v196 = 9;
          goto LABEL_337;
        }

        if (!*(a7 + 56))
        {
          break;
        }

        sub_298B9AE98(a7);
        v197 = *(a7 + 24);
        v196 = *(a7 + 32);
      }

      __s1.i8[0] = 9;
      sub_298B9BB84(a7);
LABEL_337:
      if (v187 >= 2)
      {
        v210 = "ubfx";
      }

      else
      {
        v210 = "sbfx";
      }

      v211 = *(a7 + 32);
      if (*(a7 + 24) - v211 > 3uLL)
      {
        *v211 = *v210;
        v212 = (*(a7 + 32) + 4);
        *(a7 + 32) = v212;
      }

      else
      {
        sub_298B9BCEC(a7, v210, 4uLL);
        v212 = *(a7 + 32);
      }

      while (1)
      {
        if (v212 < *(a7 + 24))
        {
          goto LABEL_359;
        }

        v213 = *(a7 + 16);
        if (v213)
        {
          *(a7 + 32) = v213;
          sub_298B9BB84(a7);
          v212 = *(a7 + 32);
LABEL_359:
          *(a7 + 32) = v212 + 1;
          *v212 = 9;
          goto LABEL_360;
        }

        if (!*(a7 + 56))
        {
          break;
        }

        sub_298B9AE98(a7);
        v212 = *(a7 + 32);
      }

      __s1.i8[0] = 9;
      sub_298B9BB84(a7);
LABEL_360:
      (*(*a1 + 40))(a1, a7, *(v188 + 8));
      v218 = *(a7 + 32);
      if (*(a7 + 24) - v218 > 1uLL)
      {
        *v218 = 8236;
        *(a7 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(a7, ", ", 2uLL);
      }

      (*(*a1 + 40))(a1, a7, *(v188 + 24));
      v219 = *(a7 + 32);
      if (*(a7 + 24) - v219 > 1uLL)
      {
        *v219 = 8236;
        *(a7 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(a7, ", ", 2uLL);
      }

      sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
      v220 = __s1.i64[0];
      v221 = *(__s1.i64[0] + 32);
      if (*(__s1.i64[0] + 24) == v221)
      {
        sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
        v222 = *(v188 + 40);
        v223 = __s1.i64[0];
        if ((v222 & 0x8000000000000000) == 0)
        {
          goto LABEL_368;
        }
      }

      else
      {
        *v221 = 35;
        ++*(v220 + 32);
        v222 = *(v188 + 40);
        v223 = __s1.i64[0];
        if ((v222 & 0x8000000000000000) == 0)
        {
LABEL_368:
          if (!HIDWORD(v222))
          {
            v224 = 0;
            goto LABEL_390;
          }

          v295 = 0;
          goto LABEL_592;
        }
      }

      v222 = -v222;
      if (!HIDWORD(v222))
      {
        v224 = 1;
LABEL_390:
        sub_298B8FC48(v223, v222, 0, 0, v224);
        sub_298B47608(&__s1);
        v230 = *(a7 + 32);
        if (*(a7 + 24) - v230 <= 1uLL)
        {
LABEL_391:
          sub_298B9BCEC(a7, ", ", 2uLL);
          goto LABEL_594;
        }

LABEL_593:
        *v230 = 8236;
        *(a7 + 32) += 2;
LABEL_594:
        sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
        v307 = __s1.i64[0];
        v308 = *(__s1.i64[0] + 32);
        if (*(__s1.i64[0] + 24) == v308)
        {
          sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
          v305 = __s1.i64[0];
          v306 = *(v188 + 56) - *(v188 + 40) + 1;
          if (v306 >= 0)
          {
LABEL_596:
            if (!HIDWORD(v306))
            {
              goto LABEL_653;
            }

            goto LABEL_607;
          }
        }

        else
        {
          *v308 = 35;
          ++*(v307 + 32);
          v305 = __s1.i64[0];
          v306 = *(v188 + 56) - *(v188 + 40) + 1;
          if (v306 >= 0)
          {
            goto LABEL_596;
          }
        }

        v306 = -v306;
        if (!HIDWORD(v306))
        {
          goto LABEL_656;
        }

        goto LABEL_600;
      }

      v295 = 1;
LABEL_592:
      sub_298B8FEA0(v223, v222, 0, 0, v295);
      sub_298B47608(&__s1);
      v230 = *(a7 + 32);
      if (*(a7 + 24) - v230 <= 1uLL)
      {
        goto LABEL_391;
      }

      goto LABEL_593;
    }

    if ((v15 - 1671) <= 1)
    {
      v200 = *(v12 + 16);
      v201 = *(v200 + 56);
      v202 = *(v200 + 72);
      if ((*(v200 + 40) & 0xFFFFFFFE) == 0xA && (!v201 || v202 < v201) && (*(a6 + 241) & 0x80) != 0)
      {
        if (v15 == 1672)
        {
          v280 = 64;
        }

        else
        {
          v280 = 32;
        }

        v281 = v280 - v201;
        v282 = *(a7 + 32);
        if ((*(a7 + 24) - v282) > 4)
        {
          *(v282 + 4) = 9;
          *v282 = 1667654153;
          *(a7 + 32) += 5;
        }

        else
        {
          sub_298B9BCEC(a7, "\tbfc\t", 5uLL);
        }

        v239 = v281 % v280;
        v240 = *(v200 + 8);
      }

      else
      {
        if (v202 >= v201)
        {
          v236 = *(a7 + 32);
          if (*(a7 + 24) - v236 > 6uLL)
          {
            *(v236 + 3) = 158099832;
            *v236 = 2019975689;
            *(a7 + 32) += 7;
          }

          else
          {
            sub_298B9BCEC(a7, "\tbfxil\t", 7uLL);
          }

          (*(*a1 + 40))(a1, a7, *(v200 + 8));
          v238 = *(a7 + 32);
          if (*(a7 + 24) - v238 > 1uLL)
          {
            *v238 = 8236;
            *(a7 + 32) += 2;
          }

          else
          {
            sub_298B9BCEC(a7, ", ", 2uLL);
          }

          (*(*a1 + 40))(a1, a7, *(v200 + 40));
          v241 = *(a7 + 32);
          if (*(a7 + 24) - v241 > 1uLL)
          {
            *v241 = 8236;
            *(a7 + 32) += 2;
          }

          else
          {
            sub_298B9BCEC(a7, ", ", 2uLL);
          }

          sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
          v242 = __s1.i64[0];
          v243 = *(__s1.i64[0] + 32);
          if (*(__s1.i64[0] + 24) == v243)
          {
            sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
          }

          else
          {
            *v243 = 35;
            ++*(v242 + 32);
          }

          if ((v201 & 0x80000000) != 0)
          {
            v268 = -v201;
            v269 = 1;
          }

          else
          {
            v268 = v201;
            v269 = 0;
          }

          sub_298B8FC48(__s1.i64[0], v268, 0, 0, v269);
          LODWORD(v202) = v202 - v201;
          goto LABEL_583;
        }

        if (v15 == 1672)
        {
          v203 = 64;
        }

        else
        {
          v203 = 32;
        }

        v204 = v203 - v201;
        v205 = *(a7 + 32);
        if ((*(a7 + 24) - v205) > 4)
        {
          *(v205 + 4) = 9;
          *v205 = 1768317449;
          *(a7 + 32) += 5;
        }

        else
        {
          sub_298B9BCEC(a7, "\tbfi\t", 5uLL);
        }

        (*(*a1 + 40))(a1, a7, *(v200 + 8));
        v237 = *(a7 + 32);
        if (*(a7 + 24) - v237 > 1uLL)
        {
          *v237 = 8236;
          *(a7 + 32) += 2;
        }

        else
        {
          sub_298B9BCEC(a7, ", ", 2uLL);
        }

        v239 = v204 % v203;
        v240 = *(v200 + 40);
      }

      (*(*a1 + 40))(a1, a7, v240);
      v297 = *(a7 + 32);
      if (*(a7 + 24) - v297 > 1uLL)
      {
        *v297 = 8236;
        *(a7 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(a7, ", ", 2uLL);
      }

      sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
      v298 = __s1.i64[0];
      v299 = *(__s1.i64[0] + 32);
      if (*(__s1.i64[0] + 24) == v299)
      {
        sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
      }

      else
      {
        *v299 = 35;
        ++*(v298 + 32);
      }

      if (v239 < 0)
      {
        v300 = -v239;
        v301 = 1;
      }

      else
      {
        v300 = v239;
        v301 = 0;
      }

      sub_298B8FC48(__s1.i64[0], v300, 0, 0, v301);
LABEL_583:
      sub_298B47608(&__s1);
      v302 = *(a7 + 32);
      if (*(a7 + 24) - v302 > 1uLL)
      {
        *v302 = 8236;
        *(a7 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(a7, ", ", 2uLL);
      }

      sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
      v303 = __s1.i64[0];
      v304 = *(__s1.i64[0] + 32);
      if (*(__s1.i64[0] + 24) == v304)
      {
        sub_298B9BCEC(__s1.i64[0], "#", 1uLL);
      }

      else
      {
        *v304 = 35;
        ++*(v303 + 32);
      }

      v305 = __s1.i64[0];
      LODWORD(v306) = v202 + 1;
      if (v202 + 1 >= 0)
      {
        goto LABEL_653;
      }

      LODWORD(v306) = -v306;
      goto LABEL_656;
    }

    v232 = v15 - 4725;
    if ((v15 - 4711) <= 0xF && ((1 << (v15 - 103)) & 0xC003) != 0)
    {
      if (*(*(v12 + 16) + 16) == 5)
      {
        v233 = *(a7 + 32);
        v234 = *(a7 + 24) - v233;
        if (v232 > 1)
        {
          if (v234 <= 5)
          {
            v235 = "\tmovn\t";
            goto LABEL_420;
          }

          v285 = 2414;
        }

        else
        {
          if (v234 <= 5)
          {
            v235 = "\tmovz\t";
LABEL_420:
            sub_298B9BCEC(a7, v235, 6uLL);
LABEL_547:
            (*(*a1 + 40))(a1, a7, *(*(v12 + 16) + 8));
            v286 = *(a7 + 32);
            if (*(a7 + 24) - v286 > 1uLL)
            {
              *v286 = 8236;
              *(a7 + 32) += 2;
            }

            else
            {
              sub_298B9BCEC(a7, ", ", 2uLL);
            }

            sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
            v287 = *(a7 + 32);
            if (*(a7 + 24) == v287)
            {
              sub_298B9BCEC(a7, "#", 1uLL);
            }

            else
            {
              *v287 = 35;
              ++*(a7 + 32);
            }

            v288 = *(*(v332 + 16) + 24);
LABEL_554:
            sub_298B439C4(v288, a7, *(a1 + 16), 0);
            sub_298B47608(&__s1);
            return;
          }

          v285 = 2426;
        }

        *(v233 + 4) = v285;
        *v233 = 1987013897;
        *(a7 + 32) += 6;
        goto LABEL_547;
      }
    }

    else if ((v15 - 4709) <= 1 && *(*(v12 + 16) + 32) == 5)
    {
      v244 = *(a7 + 32);
      if ((*(a7 + 24) - v244) > 5)
      {
        *(v244 + 4) = 2411;
        *v244 = 1987013897;
        *(a7 + 32) += 6;
      }

      else
      {
        sub_298B9BCEC(a7, "\tmovk\t", 6uLL);
      }

      (*(*a1 + 40))(a1, a7, *(*(v12 + 16) + 8));
      v312 = *(a7 + 32);
      if (*(a7 + 24) - v312 > 1uLL)
      {
        *v312 = 8236;
        *(a7 + 32) += 2;
      }

      else
      {
        sub_298B9BCEC(a7, ", ", 2uLL);
      }

      sub_298B47440(&__s1, a7, 0, *(a1 + 48), *(a1 + 49));
      v313 = *(a7 + 32);
      if (*(a7 + 24) == v313)
      {
        sub_298B9BCEC(a7, "#", 1uLL);
      }

      else
      {
        *v313 = 35;
        ++*(a7 + 32);
      }

      v288 = *(*(v332 + 16) + 40);
      goto LABEL_554;
    }

    __s1.i64[0] = a7;
    __s1.i64[1] = a1;
    v338.i64[0] = &v332;
    if (v232 > 1)
    {
      if ((v15 - 4711) <= 1)
      {
        v250 = *(v12 + 16);
        if (*(v250 + 16) == 2 && *(v250 + 32) == 2)
        {
          v251 = 0;
          if (v15 == 4712)
          {
            v246 = 64;
          }

          else
          {
            v246 = 32;
          }

          v252 = *(v250 + 40);
          v253 = *(v250 + 24) << v252;
          if (v15 == 4712)
          {
            v248 = ~v253;
          }

          else
          {
            v248 = ~v253;
          }

          while ((v248 & ~(0xFFFFLL << v251)) != 0)
          {
            v251 += 16;
            if (v251 > (v246 - 16))
            {
              v254 = ~v253 ^ 0xFFFFFFFFLL;
              if (v15 == 4712)
              {
                v254 = v253;
              }

              if ((!v252 || v254) && (v254 & ~(0xFFFFLL << v252)) == 0)
              {
                goto LABEL_476;
              }

              break;
            }
          }
        }
      }
    }

    else
    {
      v245 = *(v12 + 16);
      if (*(v245 + 16) == 2 && *(v245 + 32) == 2)
      {
        if (v15 == 4726)
        {
          v246 = 64;
        }

        else
        {
          v246 = 32;
        }

        v247 = *(v245 + 40);
        v248 = *(v245 + 24) << v247;
        v249 = v248;
        if (v15 == 4726)
        {
          v249 = v248;
        }

        if ((!v247 || v249) && (v249 & ~(0xFFFFLL << v247)) == 0)
        {
LABEL_476:
          sub_298CC4000(__s1.i64, v248, v246);
          return;
        }
      }
    }

    if (v15 > 4809)
    {
      if (v15 == 6986)
      {
        v264 = *(a7 + 32);
        if ((*(a7 + 24) - v264) > 9)
        {
          *(v264 + 8) = 25454;
          *v264 = *"\ttsb\tcsync";
          *(a7 + 32) += 10;
        }

        else
        {
          sub_298B9BCEC(a7, "\ttsb\tcsync", 0xAuLL);
        }

        return;
      }

      v255 = 4810;
    }

    else
    {
      if (v15 == 1069)
      {
        while (1)
        {
          v290 = *(a7 + 32);
          if (v290 < *(a7 + 24))
          {
            goto LABEL_562;
          }

          v289 = *(a7 + 16);
          if (v289)
          {
            break;
          }

          if (!*(a7 + 56))
          {
            LOBYTE(v334) = 9;
            sub_298B9BB84(a7);
            v323 = *(a1 + 16);
            v292 = *(v323 + 48);
            v293 = *(v323 + 56);
            v294 = *(a7 + 32);
            if (v293 <= *(a7 + 24) - v294)
            {
              goto LABEL_683;
            }

LABEL_563:
            sub_298B9BCEC(a7, v292, v293);
            v294 = *(a7 + 32);
            goto LABEL_685;
          }

          sub_298B9AE98(a7);
        }

        *(a7 + 32) = v289;
        sub_298B9BB84(a7);
        v290 = *(a7 + 32);
LABEL_562:
        *(a7 + 32) = v290 + 1;
        *v290 = 9;
        v291 = *(a1 + 16);
        v292 = *(v291 + 48);
        v293 = *(v291 + 56);
        v294 = *(a7 + 32);
        if (v293 > *(a7 + 24) - v294)
        {
          goto LABEL_563;
        }

LABEL_683:
        if (v293)
        {
          v324 = v293;
          memcpy(v294, v292, v293);
          v294 = (*(a7 + 32) + v324);
          *(a7 + 32) = v294;
        }

LABEL_685:
        if (*(a7 + 24) - v294 > 6uLL)
        {
          *(v294 + 3) = 541410113;
          *v294 = 1095783200;
          *(a7 + 32) += 7;
        }

        else
        {
          sub_298B9BCEC(a7, " SPACE ", 7uLL);
        }

        v325 = *(*(v332 + 16) + 24);
        if ((v325 & 0x8000000000000000) != 0)
        {
          v326 = -v325;
          if (HIDWORD(v326))
          {
            sub_298B8FEA0(a7, v326, 0, 0, 1);
          }

          else
          {
            sub_298B8FC48(a7, v326, 0, 0, 1);
          }
        }

        else if (HIDWORD(v325))
        {
          sub_298B8FEA0(a7, v325, 0, 0, 0);
        }

        else
        {
          sub_298B8FC48(a7, v325, 0, 0, 0);
        }

        goto LABEL_659;
      }

      v255 = 4808;
    }

    if (v15 == v255)
    {
      v256 = *(v12 + 16);
      if ((*(v256 + 24) & 0xFFFFFFFE) == 0xA && *(v256 + 32) == 2)
      {
        if (v15 == 4810)
        {
          v246 = 64;
        }

        else
        {
          v246 = 32;
        }

        v257 = *(v256 + 40);
        v258 = 0x80000000 >> __clz(((v257 >> 6) & 0x40 | v257 & 0x3F) ^ 0x3F);
        v248 = ~(-1 << (((v258 - 1) & v257 & 0x3F) + 1));
        for (i = (v257 >> 6) & (v258 - 1) & 0x3F; i; --i)
        {
          v248 = ((v248 & 1) << (v258 - 1)) | (v248 >> 1);
        }

        while (v258 != v246)
        {
          v248 |= v248 << v258;
          v258 *= 2;
        }

        v260 = 0;
        v261 = (v246 - 16);
        while ((v248 & ~(0xFFFFLL << v260)) != 0)
        {
          v260 += 16;
          if (v260 > v261)
          {
            v262 = 0;
            v263 = v248 | 0xFFFFFFFF00000000;
            if (v15 == 4810)
            {
              v263 = v248;
            }

            while (((0xFFFFLL << v262) | v263) != 0xFFFFFFFFFFFFFFFFLL)
            {
              v262 += 16;
              if (v262 > v261)
              {
                goto LABEL_476;
              }
            }

            break;
          }
        }
      }
    }

LABEL_185:
    if (*(a1 + 50))
    {
      if ((*(*a1 + 56))(a1, v12, v11, a6, a7))
      {
        goto LABEL_189;
      }

      v12 = v332;
    }

    (*(*a1 + 48))(a1, v12, v11, a6, a7);
LABEL_189:
    sub_298B46CE4(a1, a7, v10, __n);
    if (v15 <= 4389)
    {
      if ((v15 - 4153) > 0x1B || ((1 << (v15 - 57)) & 0xFF000FF) == 0)
      {
        v162 = -4106;
LABEL_197:
        if ((v15 + v162) >= 8)
        {
          return;
        }
      }
    }

    else if (((v15 - 4390) > 0x2B || ((1 << (v15 - 38)) & 0xFF00FF000FFLL) == 0) && ((v15 - 4451) > 0x17 || ((1 << (v15 - 99)) & 0xFF00FF) == 0))
    {
      v162 = -6881;
      goto LABEL_197;
    }

    if ((*(*(v332 + 16) + 8) & 0xFFFFFFFE) != 0xA)
    {
      return;
    }

    v163 = "acquire semantics dropped since destination is zero";
    v164 = a1;
    v165 = a7;
    v166 = 51;
    goto LABEL_660;
  }

LABEL_283:
  operator delete(v334);
  if (!v61)
  {
    goto LABEL_284;
  }

LABEL_678:

  sub_298B46CE4(a1, a7, v10, __n);
}