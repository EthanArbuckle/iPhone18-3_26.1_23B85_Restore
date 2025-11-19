void *str_append_u32(void *a1, unsigned int a2, int a3)
{
  v14[1] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v4 = 0;
    if ((a2 & 0x3FF) == 0 && a3)
    {
      v5 = 0;
      do
      {
        v6 = a2;
        a2 >>= 10;
        v4 = v5 + 1;
        if ((v6 & 0xFFC00) != 0)
        {
          break;
        }
      }

      while (v5++ < 2);
    }

    HIWORD(v14[0]) = 0;
    v8 = v14 + 7;
    do
    {
      *--v8 = (a2 % 0xA) | 0x30;
      v9 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v9);
    str_append_str(a1, v8);
    v10 = *MEMORY[0x29EDCA608];
    v11 = &str_append_u32_suffixes + 4 * v4;
  }

  else
  {
    v12 = *MEMORY[0x29EDCA608];
    v11 = "0";
  }

  return str_append_str(a1, v11);
}

const char *parse_lzma12(unint64_t *a1, _BYTE *a2, uint64_t a3)
{
  lzma_lzma_preset(a3, 6);
  result = parse_options(a1, a2, a3, "preset", 9);
  if (!result)
  {
    if ((*(a3 + 24) + *(a3 + 20)) <= 4)
    {
      return 0;
    }

    else
    {
      return "The sum of lc and lp must not exceed 4";
    }
  }

  return result;
}

const char *parse_options(unint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*a1 < a2)
  {
    v36 = "Invalid multiplier suffix (KiB, MiB, or GiB)";
    while (1)
    {
      for (i = -v5; ; --i)
      {
        v10 = *v5;
        if (v10 != 44)
        {
          break;
        }

        *a1 = ++v5;
        if (v5 == a2)
        {
          return 0;
        }
      }

      if (!*v5)
      {
        break;
      }

      v11 = memchr(v5, 44, &a2[-v5]);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = a2;
      }

      v13 = memchr(v5, 61, v12 - v5);
      if (v10 == 61 || v13 == 0)
      {
        return "Options must be 'name=value' pairs separated with commas";
      }

      v15 = v13;
      v16 = &v13[-v5];
      if (&v13[-v5] > 0xB || a5 == 0)
      {
        return "Unknown option name";
      }

      v18 = &v13[i];
      v35 = a4;
      v19 = a4;
      v20 = a5;
      while (memcmp(v5, v19, v16) || v18[v19])
      {
        v19 += 24;
        if (!--v20)
        {
          return "Unknown option name";
        }
      }

      v21 = v15 + 1;
      *a1 = (v15 + 1);
      v22 = v12 - (v15 + 1);
      if (v12 == v15 + 1)
      {
        return "Option value cannot be empty";
      }

      if (*(v19 + 12) == 3)
      {
        v23 = v15[1] - 48;
        v24 = v15 + 2;
        *a1 = (v15 + 2);
        a4 = v35;
        if ((v15 + 2) < v12)
        {
          v23 |= 0x80000000;
          while (*v24 == 101)
          {
            *a1 = ++v24;
            if (v24 == v12)
            {
              goto LABEL_30;
            }
          }

          return "Unsupported preset flag";
        }

LABEL_30:
        if (lzma_lzma_preset(a3, v23))
        {
          return "Unsupported preset";
        }
      }

      else
      {
        a4 = v35;
        if (*(v19 + 13))
        {
          if (v22 > 0xB)
          {
            return "Invalid option value";
          }

          v31 = *(v19 + 16);
          if (!*v31)
          {
            return "Invalid option value";
          }

          while (memcmp(v21, v31, v22) || *(v31 + v22))
          {
            v32 = *(v31 + 16);
            v31 += 4;
            result = "Invalid option value";
            if (!v32)
            {
              return result;
            }
          }

          v26 = v31[3];
        }

        else
        {
          v25 = *v21;
          if ((v25 - 58) < 0xFFFFFFF6)
          {
            return "Value is not a non-negative decimal integer";
          }

          v26 = 0;
          v27 = v15 + 3;
          do
          {
            if (v26 > 0x19999999)
            {
              return "Value out of range";
            }

            v28 = 5 * v26;
            if (47 - v25 < (2 * v28))
            {
              return "Value out of range";
            }

            v26 = v25 + 2 * v28 - 48;
            if ((v27 - 1) >= v12)
            {
              goto LABEL_63;
            }

            v25 = *(v27++ - 1);
          }

          while ((v25 - 48) < 0xA);
          if ((*(v19 + 13) & 2) == 0)
          {
            v36 = "This option does not support any integer suffixes";
LABEL_77:
            *a1 = (v27 - 2);
            return v36;
          }

          v29 = v25 - 71;
          if ((v25 - 71) > 0x26)
          {
            goto LABEL_77;
          }

          if (((1 << v29) & 0x100000001) != 0)
          {
            v30 = 30;
          }

          else if (((1 << v29) & 0x1000000010) != 0)
          {
            v30 = 10;
          }

          else
          {
            if (((1 << v29) & 0x4000000040) == 0)
            {
              goto LABEL_77;
            }

            v30 = 20;
          }

          v33 = v27 - 1;
          if ((v27 - 1) < v12 && *(v27 - 1) == 105)
          {
            v33 = v27;
          }

          if (v33 < v12 && *v33 == 66)
          {
            ++v33;
          }

          if (v33 < v12)
          {
            goto LABEL_77;
          }

          if (v26 > 0xFFFFFFFF >> v30)
          {
            return "Value out of range";
          }

          v26 <<= v30;
LABEL_63:
          if (v26 < *(v19 + 16) || v26 > *(v19 + 20))
          {
            return "Value out of range";
          }
        }

        *(a3 + *(v19 + 14)) = v26;
        *a1 = v12;
      }

      result = 0;
      v5 = *a1;
      if (*a1 >= a2)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t lzma_lz_decoder_init(char **a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t, void, void, unint64_t *))
{
  v8 = *a1;
  if (!*a1)
  {
    v9 = lzma_alloc(0x10C0uLL, a2);
    if (!v9)
    {
      return 5;
    }

    v8 = v9;
    *a1 = v9;
    a1[3] = lz_decode;
    a1[4] = lz_decoder_end;
    *v9 = 0;
    *(v9 + 4) = 0;
    *(v9 + 3) = 0u;
    *(v9 + 4) = 0u;
    *(v9 + 10) = 0;
    *(v9 + 11) = 0;
    *(v9 + 12) = -1;
    *(v9 + 104) = 0u;
    *(v9 + 120) = 0u;
    *(v9 + 136) = 0u;
    *(v9 + 152) = 0u;
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  result = a4(v8 + 48, a2, *a3, a3[2], &v16);
  if (result)
  {
    return result;
  }

  v12 = v16;
  if (v16 >= 0x1000)
  {
    if (v16 > 0xFFFFFFFFFFFFFFF0)
    {
      return 5;
    }
  }

  else
  {
    v12 = 4096;
  }

  v16 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (*(v8 + 4) == v16)
  {
    goto LABEL_11;
  }

  lzma_free(*v8, a2);
  v13 = lzma_alloc(v16, a2);
  *v8 = v13;
  if (!v13)
  {
    return 5;
  }

  *(v8 + 4) = v16;
LABEL_11:
  v14 = *a1;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(*v14 + *(v14 + 4) - 1) = 0;
  v14[40] = 0;
  if (v17 && v18)
  {
    if (v18 >= v16)
    {
      v15 = v16;
    }

    else
    {
      v15 = v18;
    }

    memcpy(*v8, (v17 + v18 - v15), v15);
    *(v8 + 1) = v15;
    *(v8 + 2) = v15;
  }

  *(v8 + 84) = 0;
  *(v8 + 22) = 0;
  *(v8 + 23) = 0;
  return lzma_next_filter_init((v8 + 88), a2, a3 + 3, v11);
}

uint64_t lz_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, unint64_t a8, int a9)
{
  if (*(a1 + 112))
  {
    if (*a7 >= a8)
    {
      return 0;
    }

    else
    {
      while (1)
      {
        if ((*(a1 + 168) & 1) == 0 && *(a1 + 176) == *(a1 + 184))
        {
          *(a1 + 176) = 0;
          *(a1 + 184) = 0;
          result = (*(a1 + 112))(*(a1 + 88), a2, a3, a4, a5, a1 + 192, a1 + 184, 4096, a9);
          if (result)
          {
            if (result != 1)
            {
              return result;
            }

            *(a1 + 168) = 1;
          }

          else if (!*(a1 + 184))
          {
            return 0;
          }
        }

        v18 = *(a1 + 184);
        if (*(a1 + 169) == 1)
        {
          break;
        }

        result = decode_buffer(a1, a1 + 192, a1 + 176, v18, a6, a7, a8);
        if (result)
        {
          if (result != 1)
          {
            return result;
          }

          *(a1 + 169) = 1;
          v19 = *a7;
        }

        else
        {
          v19 = *a7;
          if (*(a1 + 168) == 1 && v19 < a8)
          {
            return 9;
          }
        }

        if (v19 >= a8)
        {
          return 0;
        }
      }

      if (v18)
      {
        return 9;
      }

      return *(a1 + 168);
    }
  }

  else
  {

    return decode_buffer(a1, a3, a4, a5, a6, a7, a8);
  }
}

void lz_decoder_end(uint64_t a1, uint64_t a2)
{
  lzma_next_end(a1 + 88, a2);
  lzma_free(*a1, a2);
  v4 = *(a1 + 80);
  v5 = *(a1 + 48);
  if (v4)
  {
    v4(v5, a2);
  }

  else
  {
    lzma_free(v5, a2);
  }

  lzma_free(a1, a2);
}

uint64_t decode_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v12 = *a6;
  while (1)
  {
    while (1)
    {
      v13 = *(a1 + 8);
      v14 = *(a1 + 32);
      if (v13 == v14)
      {
        v13 = 0;
        *(a1 + 8) = 0;
      }

      v15 = v14 - v13;
      if (a7 - v12 < v15)
      {
        v15 = a7 - v12;
      }

      *(a1 + 24) = v15 + v13;
      v16 = (*(a1 + 56))(*(a1 + 48), a1, a2, a3, a4);
      v17 = *(a1 + 8);
      if (v17 != v13)
      {
        memcpy((a5 + v12), (*a1 + v13), v17 - v13);
      }

      v12 += v17 - v13;
      *a6 = v12;
      if (*(a1 + 40) != 1)
      {
        break;
      }

      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(*a1 + *(a1 + 32) - 1) = 0;
      *(a1 + 40) = 0;
      if (v16 || v12 == a7)
      {
        return v16;
      }
    }

    if (v16 || v12 == a7)
    {
      break;
    }

    if (v17 < *(a1 + 32))
    {
      return 0;
    }
  }

  return v16;
}

uint64_t lzma_lzma_encode(unint64_t a1, unsigned __int8 **a2, uint64_t a3, uint64_t *a4, uint64_t a5, unsigned int a6)
{
  if ((*(a1 + 2933) & 1) == 0)
  {
    if (*(a2 + 6) == *(a2 + 8))
    {
      if (!*(a2 + 26))
      {
        return 0;
      }
    }

    else
    {
      v12 = 1;
      (a2[7])(a2, 1);
      *(a2 + 7) = 0;
      v13 = *(a1 + 32);
      v14 = a1 + 4 * v13;
      *(v14 + 48) = 0;
      v15 = a1 + 8 * v13;
      *(v15 + 264) = a1 + 27524;
      v16 = v13 + 1;
      *(a1 + 32) = v13 + 1;
      v17 = **a2;
      v18 = (v15 + 272);
      v19 = (v14 + 52);
      for (i = 7; i != -1; --i)
      {
        *v19++ = (v17 >> i) & 1;
        *v18++ = a1 + 2948 + 2 * v12;
        ++v16;
        v21 = (v17 >> i) & 1 | (2 * v12);
        v12 = v21;
      }

      *(a1 + 32) = v16;
      ++*(a1 + 688);
    }

    *(a1 + 2933) = 1;
  }

  if (rc_encode(a1, a3, a4, a5))
  {
    return 0;
  }

  result = 1;
  if ((*(a1 + 2934) & 1) == 0)
  {
    v111 = a1 + 27524;
    v23 = a1 + 48;
    v24 = a1 + 264;
    v110 = a1 + 27908;
    v108 = (a1 + 716);
    v107 = a1 + 27932;
    v105 = a1 + 47664;
    v104 = a1 + 47666;
    v103 = a1 + 66104;
    v25 = a1 + 280;
    v26 = a1 + 272;
    v106 = a1 + 52;
    v109 = a6;
    while (1)
    {
      v27 = *(a2 + 6);
      if (a6 != -1 && (v27 - *(a2 + 7) >= a6 || (*a4 + *(a1 + 8) + 4) > 0xEFFE))
      {
        goto LABEL_93;
      }

      if (v27 >= *(a2 + 8))
      {
        if (!*(a2 + 26))
        {
          return 0;
        }

        if (!*(a2 + 7))
        {
LABEL_93:
          v97 = *(a1 + 704);
          if (v97)
          {
            *v97 = *(a1 + 688);
          }

          v98 = *(a1 + 32);
          if (*(a1 + 2935) == 1)
          {
            v99 = *(a1 + 2936) & *(a1 + 688);
            v100 = v111 + 32 * *(a1 + 712);
            *(v23 + 4 * v98) = 1;
            *(v24 + 8 * v98) = v100 + 2 * v99;
            v101 = v110 + 2 * *(a1 + 712);
            *(v23 + 4 * (v98 + 1)) = 0;
            *(v24 + 8 * (v98 + 1)) = v101;
            *(a1 + 32) = v98 + 2;
            match(a1, v99, 0xFFFFFFFF, 2u);
            v98 = *(a1 + 32);
          }

          memset_pattern16((a1 + 4 * v98 + 48), &unk_2990BEFB0, 0x14uLL);
          *(a1 + 32) = v98 + 5;
          v102 = rc_encode(a1, a3, a4, a5);
          result = 1;
          if (v102)
          {
            *(a1 + 2934) = 1;
            return 0;
          }

          return result;
        }
      }

      v112 = 0;
      if (*(a1 + 2932) == 1)
      {
        lzma_lzma_optimum_fast(a1, a2, &v112, &v112 + 1);
      }

      else
      {
        lzma_lzma_optimum_normal(a1, a2, &v112, &v112 + 1, *(a1 + 688));
      }

      v28 = v112;
      v29 = HIDWORD(v112);
      v30 = *(a1 + 688);
      v31 = *(a1 + 2936) & v30;
      v32 = v111 + 32 * *(a1 + 712) + 2 * v31;
      v33 = *(a1 + 32);
      v34 = v33 + 1;
      v35 = 1;
      if (v112 == -1)
      {
        break;
      }

      *(v23 + 4 * v33) = 1;
      *(v24 + 8 * v33) = v32;
      v36 = v110 + 2 * *(a1 + 712);
      v37 = v33 + 2;
      if (v28 <= 3)
      {
        *(v23 + 4 * v34) = 1;
        *(v24 + 8 * v34) = v36;
        v38 = v33 + 4;
        if (v28)
        {
          v39 = v108[v28];
          v40 = v107 + 2 * *(a1 + 712);
          *(v23 + 4 * v37) = 1;
          *(v24 + 8 * v37) = v40;
          v41 = v33 + 3;
          v42 = a1 + 27956 + 2 * *(a1 + 712);
          if (v28 == 1)
          {
            *(v23 + 4 * v41) = 0;
            *(v24 + 8 * v41) = v42;
            *(a1 + 32) = v38;
          }

          else
          {
            *(v23 + 4 * v41) = 1;
            *(v24 + 8 * v41) = v42;
            v65 = *(a1 + 712);
            *(v23 + 4 * v38) = v28 - 2;
            *(v24 + 8 * v38) = a1 + 27980 + 2 * v65;
            v38 = v33 + 5;
            *(a1 + 32) = v33 + 5;
            if (v28 == 3)
            {
              *(a1 + 728) = *(a1 + 724);
            }

            *(a1 + 724) = *(a1 + 720);
          }

          v61 = a1 + 48180;
          *(a1 + 720) = *(a1 + 716);
          *(a1 + 716) = v39;
        }

        else
        {
          v61 = a1 + 48180;
          v62 = v107 + 2 * *(a1 + 712);
          *(v23 + 4 * v37) = 0;
          *(v24 + 8 * v37) = v62;
          v63 = v33 + 3;
          v64 = a1 + 28004 + 32 * *(a1 + 712);
          *(v23 + 4 * v63) = v29 != 1;
          *(v24 + 8 * v63) = v64 + 2 * v31;
          *(a1 + 32) = v38;
        }

        if (v29 == 1)
        {
          v60 = 9;
        }

        else
        {
          v66 = *(a1 + 2932);
          v67 = v29 - 2;
          if ((v29 - 2) > 7)
          {
            v74 = v38 + 1;
            *(v23 + 4 * v38) = 1;
            *(v24 + 8 * v38) = v105;
            v75 = v29 - 10;
            if ((v29 - 10) > 7)
            {
              *(v23 + 4 * v74) = 1;
              *(v24 + 8 * v74) = v104;
              v79 = v29 - 18;
              v80 = (v25 + 8 * v38);
              v69 = v38 + 10;
              v81 = 7;
              v82 = (a1 + 56 + 4 * v38);
              do
              {
                *v82++ = (v79 >> v81) & 1;
                *v80++ = v61 + 2 * v35;
                v83 = (v79 >> v81--) & 1 | (2 * v35);
                v35 = v83;
              }

              while (v81 != -1);
            }

            else
            {
              *(v23 + 4 * v74) = 0;
              *(v24 + 8 * v74) = v104;
              v76 = 1;
              for (j = 2; j != -1; --j)
              {
                v78 = v75 >> j;
                *(v25 + 8 * v38) = a1 + 47924 + 16 * v31 + 2 * v76;
                *(v25 + 4 * v38++ - 224) = (v75 >> j) & 1;
                v76 = v78 & 1 | (2 * v76);
              }

              v69 = v38 + 2;
            }
          }

          else
          {
            *(v23 + 4 * v38) = 0;
            *(v24 + 8 * v38) = v105;
            v68 = (v26 + 8 * v38);
            v69 = v38 + 4;
            v70 = 1;
            v71 = 2;
            v72 = (v106 + 4 * v38);
            do
            {
              *v72++ = (v67 >> v71) & 1;
              *v68++ = a1 + 47668 + 16 * v31 + 2 * v70;
              v73 = (v67 >> v71--) & 1 | (2 * v70);
              v70 = v73;
            }

            while (v71 != -1);
          }

          *(a1 + 32) = v69;
          if ((v66 & 1) == 0)
          {
            v84 = *(v103 + 4 * v31) - 1;
            *(v103 + 4 * v31) = v84;
            if (!v84)
            {
              length_update_prices(v105, v31);
            }
          }

          v60 = 8;
        }

        if (*(a1 + 712) >= 7u)
        {
          v60 = 11;
        }

LABEL_64:
        *(a1 + 712) = v60;
        goto LABEL_65;
      }

      *(v23 + 4 * v34) = 0;
      *(v24 + 8 * v34) = v36;
      *(a1 + 32) = v37;
      match(a1, v31, v28 - 4, v29);
LABEL_65:
      *(a2 + 7) -= v29;
      v85 = *(a1 + 696);
      if (v85)
      {
        v86 = *a1;
        v87 = *(a1 + 8);
        v88 = *(a1 + 16);
        v89 = *(a1 + 24);
        for (k = *(a1 + 40); ; ++k)
        {
          if (!HIBYTE(v88))
          {
            if (v86 >> 24 != 255)
            {
              if (v85 - v89 <= (v87 - 1))
              {
LABEL_92:
                *(a1 + 32) = 0;
                goto LABEL_93;
              }

              v89 += v87;
              v87 = 0;
            }

            ++v87;
            v86 = (v86 & 0xFFFFFF) << 8;
            v88 <<= 8;
          }

          if (k == *(a1 + 32))
          {
            break;
          }

          v91 = *(v24 + 4 * k - 216);
          if (v91 > 1)
          {
            v93 = v88 >> 1;
            v94 = v86 + v93;
            if (v91 == 3)
            {
              v88 >>= 1;
            }

            else
            {
              v94 = v86;
            }

            if (v91 == 2)
            {
              v88 = v93;
            }

            else
            {
              v86 = v94;
            }
          }

          else if (v91)
          {
            if (v91 == 1)
            {
              v92 = (v88 >> 11) * **(v24 + 8 * k);
              v86 += v92;
              v88 -= v92;
            }
          }

          else
          {
            v88 = (v88 >> 11) * **(v24 + 8 * k);
          }
        }

        v95 = 5;
        do
        {
          if (v86 >> 24 != 255)
          {
            if (v85 - v89 <= (v87 - 1))
            {
              goto LABEL_92;
            }

            v89 += v87;
            v87 = 0;
          }

          ++v87;
          v86 = (v86 & 0xFFFFFF) << 8;
          --v95;
        }

        while (v95);
      }

      *(a1 + 688) += v29;
      v96 = rc_encode(a1, a3, a4, a5);
      result = 0;
      a6 = v109;
      if (v96)
      {
        return result;
      }
    }

    *(v23 + 4 * v33) = 0;
    *(v24 + 8 * v33) = v32;
    *(a1 + 32) = v34;
    v43 = *(a2 + 6) - *(a2 + 7);
    v44 = (*a2)[v43];
    v45 = a1 + 2948 + 1536 * (((*a2)[v43 - 1] >> (8 - *(a1 + 2940))) + ((*(a1 + 2944) & v30) << *(a1 + 2940)));
    if (*(a1 + 712) > 6u)
    {
      v52 = (*a2)[v43 + ~*v108];
      v53 = v44 | 0x100;
      v54 = 256;
      do
      {
        v55 = v54 + (v53 >> 8) + (v54 & (2 * v52));
        v56 = (2 * v53) ^ (2 * v52);
        v52 *= 2;
        *(v26 + 8 * v33) = v45 + 2 * v55;
        *(v26 + 4 * v33 - 220) = (v53 >> 7) & 1;
        v54 &= ~v56;
        ++v33;
        v57 = v53 >= 0x8000;
        v53 *= 2;
      }

      while (!v57);
      v46 = v33 + 1;
    }

    else
    {
      v46 = v33 + 9;
      v47 = 1;
      v48 = 7;
      v49 = (v26 + 8 * v33);
      v50 = (v106 + 4 * v33);
      do
      {
        *v50++ = (v44 >> v48) & 1;
        *v49++ = v45 + 2 * v47;
        v51 = (v44 >> v48--) & 1 | (2 * v47);
        v47 = v51;
      }

      while (v48 != -1);
    }

    *(a1 + 32) = v46;
    v58 = *(a1 + 712);
    v59 = v58 - 6;
    if (v58 <= 9)
    {
      v59 = v58 - 3;
    }

    if (v58 >= 4)
    {
      v60 = v59;
    }

    else
    {
      v60 = 0;
    }

    goto LABEL_64;
  }

  return result;
}

uint64_t rc_encode(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (v4 >= *(a1 + 32))
  {
LABEL_33:
    v21 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    return v21;
  }

  v5 = a1 + 264;
  LODWORD(v6) = *(a1 + 16);
  while (1)
  {
    if (BYTE3(v6))
    {
      goto LABEL_11;
    }

    v7 = *a1;
    if (*a1 >> 24 != 255)
    {
      break;
    }

    v8 = *(a1 + 8) + 1;
LABEL_10:
    *a1 = (v7 & 0xFFFFFF) << 8;
    *(a1 + 8) = v8;
    LODWORD(v6) = v6 << 8;
    *(a1 + 16) = v6;
LABEL_11:
    v11 = *(a1 + 48 + 4 * v4);
    if (v11 <= 1)
    {
      if (!v11)
      {
        v12 = *(v5 + 8 * v4);
        v16 = *v12;
        LODWORD(v6) = (v6 >> 11) * v16;
        *(a1 + 16) = v6;
        v15 = v16 + ((2048 - v16) >> 5);
        goto LABEL_20;
      }

      if (v11 == 1)
      {
        v12 = *(v5 + 8 * v4);
        v13 = *v12;
        v14 = (v6 >> 11) * v13;
        *a1 += v14;
        LODWORD(v6) = v6 - v14;
        *(a1 + 16) = v6;
        v15 = v13 - (v13 >> 5);
LABEL_20:
        *v12 = v15;
      }
    }

    else
    {
      switch(v11)
      {
        case 2:
          LODWORD(v6) = v6 >> 1;
          *(a1 + 16) = v6;
          break;
        case 3:
          v6 = v6 >> 1;
          *(a1 + 16) = v6;
          *a1 += v6;
          break;
        case 4:
          *(a1 + 16) = -1;
          v17 = *a1;
          while (v17 >> 24 == 255)
          {
            v18 = *(a1 + 8) + 1;
LABEL_31:
            v17 = (v17 & 0xFFFFFF) << 8;
            *a1 = v17;
            *(a1 + 8) = v18;
            *(a1 + 40) = ++v4;
            if (v4 >= *(a1 + 32))
            {
              v21 = 0;
              *a1 = xmmword_2990BEF90;
              *(a1 + 16) = -1;
              *(a1 + 20) = 0;
              *(a1 + 32) = 0;
              *(a1 + 40) = 0;
              *(a1 + 24) = 0;
              return v21;
            }
          }

          v19 = *a3;
          while (v19 != a4)
          {
            *(a2 + v19) = *(a1 + 20) + *(a1 + 4);
            v19 = *a3 + 1;
            *a3 = v19;
            ++*(a1 + 24);
            *(a1 + 20) = -1;
            v20 = *(a1 + 8) - 1;
            *(a1 + 8) = v20;
            if (!v20)
            {
              v17 = *a1;
              *(a1 + 20) = BYTE3(*a1);
              v4 = *(a1 + 40);
              v18 = 1;
              goto LABEL_31;
            }
          }

          return 1;
      }
    }

    *(a1 + 40) = ++v4;
    if (v4 >= *(a1 + 32))
    {
      goto LABEL_33;
    }
  }

  v9 = *a3;
  while (v9 != a4)
  {
    *(a2 + v9) = *(a1 + 20) + *(a1 + 4);
    v9 = *a3 + 1;
    *a3 = v9;
    ++*(a1 + 24);
    *(a1 + 20) = -1;
    v10 = *(a1 + 8) - 1;
    *(a1 + 8) = v10;
    if (!v10)
    {
      v7 = *a1;
      *(a1 + 20) = BYTE3(*a1);
      LODWORD(v6) = *(a1 + 16);
      v4 = *(a1 + 40);
      v8 = 1;
      goto LABEL_10;
    }
  }

  return 1;
}

uint64_t lzma_lzma_encoder_reset(uint64_t a1, _DWORD *a2)
{
  if (!is_options_valid(a2))
  {
    return 8;
  }

  v4 = -1 << a2[7];
  *(a1 + 2936) = ~v4;
  v5 = a2[6];
  *(a1 + 2940) = a2[5];
  *(a1 + 2944) = ~(-1 << v5);
  *a1 = xmmword_2990BEF90;
  *(a1 + 16) = -1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0;
  v6 = a2[6] + a2[5];
  v7 = 1;
  do
  {
    memset_pattern16((a1 + 2948 + 1536 * (v7 - 1)), &unk_2990BEFC0, 0x600uLL);
  }

  while (!(v7++ >> v6));
  v9 = 0;
  v10 = (a1 + 27524);
  do
  {
    v11 = v10;
    v12 = -v4;
    do
    {
      *v11 = 1024;
      v11[240] = 1024;
      ++v11;
      --v12;
    }

    while (v12);
    *(a1 + 27908 + 2 * v9) = 1024;
    *(a1 + 27932 + 2 * v9) = 1024;
    *(a1 + 27956 + 2 * v9) = 1024;
    *(a1 + 27980 + 2 * v9++) = 1024;
    v10 += 16;
  }

  while (v9 != 12);
  memset_pattern16((a1 + 28900), &unk_2990BEFC0, 0xE4uLL);
  v13 = (a1 + 28388);
  v14 = 4;
  do
  {
    memset_pattern16(v13, &unk_2990BEFC0, 0x80uLL);
    v13 += 128;
    --v14;
  }

  while (v14);
  memset_pattern16((a1 + 29128), &unk_2990BEFC0, 0x20uLL);
  length_encoder_reset((a1 + 29160), 1 << a2[7], *(a1 + 2932));
  length_encoder_reset((a1 + 47664), 1 << a2[7], *(a1 + 2932));
  result = 0;
  *(a1 + 69244) = 0x7FFFFFFF;
  *(a1 + 69312) = 0x7FFFFFFFLL;
  *(a1 + 69320) = 0;
  return result;
}

BOOL is_options_valid(_DWORD *a1)
{
  v1 = a1[5];
  if (v1 > 4)
  {
    return 0;
  }

  v2 = a1[6];
  v3 = v2 + v1;
  if (v2 <= 4)
  {
    v4 = v3 >= 4;
    v5 = v3 == 4;
  }

  else
  {
    v4 = 1;
    v5 = 0;
  }

  return (v5 || !v4) && a1[7] <= 4u && (a1[9] - 2) <= 0x10F && (a1[8] - 1) < 2;
}

void length_encoder_reset(_DWORD *a1, unsigned int a2, char a3)
{
  *a1 = 67109888;
  if (a2)
  {
    v6 = a2;
    v7 = (a1 + 65);
    do
    {
      memset_pattern16(v7 - 256, &unk_2990BEFC0, 0x10uLL);
      memset_pattern16(v7, &unk_2990BEFC0, 0x10uLL);
      v7 += 16;
      --v6;
    }

    while (v6);
    memset_pattern16(a1 + 129, &unk_2990BEFC0, 0x200uLL);
    if ((a3 & 1) == 0)
    {
      v8 = 0;
      do
      {
        length_update_prices(a1, v8++);
      }

      while (a2 != v8);
    }
  }

  else
  {
    v9 = a1 + 129;

    memset_pattern16(v9, &unk_2990BEFC0, 0x200uLL);
  }
}

uint64_t lzma_lzma_encoder_create(void **a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v9 = *a1;
  if (!v9)
  {
    v9 = lzma_alloc(0x3CED0uLL, a2);
    *a1 = v9;
    if (!v9)
    {
      return 5;
    }
  }

  v10 = a4[8];
  if (v10 == 2)
  {
    *(v9 + 2932) = 0;
    if (*a4 > 0x60000000)
    {
      return 8;
    }

    v11 = 0;
    v12 = -2;
    do
    {
      v13 = 1 << v11++;
      v12 += 2;
    }

    while (v13 < *a4);
    *(v9 + 17310) = v12;
    v14 = a4[10] & 0xF;
    if (v14 <= a4[9])
    {
      v14 = a4[9];
    }

    v15 = v14 - 1;
    *(v9 + 11899) = v15;
    *(v9 + 16525) = v15;
  }

  else
  {
    if (v10 != 1)
    {
      return 8;
    }

    *(v9 + 2932) = 1;
  }

  v16 = *(a4 + 1);
  if (v16)
  {
    v17 = a4[4] != 0;
  }

  else
  {
    v17 = 0;
  }

  *(v9 + 2933) = v17;
  *(v9 + 2934) = 0;
  *(v9 + 86) = 0;
  *(v9 + 88) = 0;
  *(v9 + 87) = 0;
  *(v9 + 2935) = a3 == 0x4000000000000001;
  if (a3 != 0x4000000000000002)
  {
    goto LABEL_18;
  }

  v18 = a4[12];
  if (v18 > 1)
  {
    return 8;
  }

  *(v9 + 2935) = v18;
LABEL_18:
  v19 = *a4;
  *a5 = 4096;
  *(a5 + 8) = v19;
  *(a5 + 16) = xmmword_2990BEFA0;
  LODWORD(v20) = a4[9];
  v21 = *(a4 + 5);
  *(a5 + 40) = v21;
  if ((v21 & 0xFu) <= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v21 & 0xF;
  }

  *(a5 + 32) = v20;
  *(a5 + 48) = v16;
  *(a5 + 56) = a4[4];

  return lzma_lzma_encoder_reset(v9, a4);
}

uint64_t lzma_encoder_init(void **a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  a1[1] = lzma_encode;
  a1[4] = lzma_lzma_set_out_limit;
  return lzma_lzma_encoder_create(a1, a2, a3, a4, a5);
}

uint64_t lzma_lzma_encoder_memusage(unsigned int *a1)
{
  if (!is_options_valid(a1))
  {
    return -1;
  }

  v2 = *a1;
  v7[0] = 4096;
  v7[1] = v2;
  v8 = xmmword_2990BEFA0;
  LODWORD(v3) = a1[9];
  v10 = *(a1 + 5);
  if ((v10 & 0xFu) <= v3)
  {
    v3 = v3;
  }

  else
  {
    v3 = v10 & 0xF;
  }

  v4 = *(a1 + 1);
  v9 = v3;
  v11 = v4;
  v12 = 0;
  LODWORD(v12) = a1[4];
  v5 = lzma_lz_encoder_memusage(v7);
  if (v5 == -1)
  {
    return -1;
  }

  else
  {
    return v5 + 249552;
  }
}

uint64_t lzma_lzma_lclppb_encode(_DWORD *a1, _BYTE *a2)
{
  v2 = a1[5];
  if (v2 > 4)
  {
    return 1;
  }

  v3 = a1[6];
  if (v3 > 4 || v3 + v2 > 4)
  {
    return 1;
  }

  v5 = a1[7];
  if (v5 > 4)
  {
    return 1;
  }

  result = 0;
  *a2 = 9 * (5 * v5 + v3) + v2;
  return result;
}

uint64_t lzma_lzma_props_encode(_DWORD *a1, uint64_t a2)
{
  if (!a1)
  {
    return 11;
  }

  v3 = a1[5];
  if (v3 > 4)
  {
    return 11;
  }

  v4 = a1[6];
  if (v4 > 4 || v4 + v3 > 4)
  {
    return 11;
  }

  v6 = a1[7];
  if (v6 > 4)
  {
    return 11;
  }

  result = 0;
  *a2 = 9 * (5 * v6 + v4) + v3;
  *(a2 + 1) = *a1;
  return result;
}

double match(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 712) >= 7u)
  {
    v7 = 10;
  }

  else
  {
    v7 = 7;
  }

  *(a1 + 712) = v7;
  v8 = a1 + 29160;
  v9 = *(a1 + 2932);
  v10 = a4 - 2;
  v11 = a1 + 48;
  v12 = *(a1 + 32);
  v13 = a1 + 264;
  if (a4 - 2 > 7)
  {
    v20 = v12 + 1;
    v21 = 1;
    *(v11 + 4 * v12) = 1;
    *(v13 + 8 * v12) = v8;
    v22 = a4 - 10;
    v23 = a1 + 29162;
    if (a4 - 10 > 7)
    {
      *(v11 + 4 * v20) = 1;
      *(v13 + 8 * v20) = v23;
      v28 = a4 - 18;
      v29 = (a1 + 8 * v12 + 280);
      v30 = (a1 + 4 * v12 + 56);
      v16 = v12 + 10;
      for (i = 7; i != -1; --i)
      {
        *v30++ = (v28 >> i) & 1;
        *v29++ = a1 + 29676 + 2 * v21;
        v32 = (v28 >> i) & 1 | (2 * v21);
        v21 = v32;
      }
    }

    else
    {
      *(v11 + 4 * v20) = 0;
      *(v13 + 8 * v20) = v23;
      v24 = a1 + 280;
      v25 = 1;
      for (j = 2; j != -1; --j)
      {
        v27 = v22 >> j;
        *(v24 + 8 * v12) = a1 + 16 * a2 + 29420 + 2 * v25;
        *(v24 + 4 * v12++ - 224) = (v22 >> j) & 1;
        v25 = v27 & 1 | (2 * v25);
      }

      v16 = v12 + 2;
    }
  }

  else
  {
    v14 = (a1 + 8 * v12 + 272);
    v15 = (a1 + 4 * v12 + 52);
    v16 = v12 + 4;
    *(v11 + 4 * v12) = 0;
    v17 = 1;
    v18 = 2;
    *(v13 + 8 * v12) = v8;
    do
    {
      *v15++ = (v10 >> v18) & 1;
      *v14++ = a1 + 16 * a2 + 29164 + 2 * v17;
      v19 = (v10 >> v18--) & 1 | (2 * v17);
      v17 = v19;
    }

    while (v18 != -1);
  }

  *(a1 + 32) = v16;
  if ((v9 & 1) == 0)
  {
    v33 = a1 + 4 * a2;
    v34 = *(v33 + 47600) - 1;
    *(v33 + 47600) = v34;
    if (!v34)
    {
      length_update_prices(v8, a2);
    }
  }

  if (a3 >> 13)
  {
    if (a3 >> 25)
    {
      v35 = lzma_fastpos[a3 >> 24] + 48;
    }

    else
    {
      v35 = lzma_fastpos[a3 >> 12] + 24;
    }
  }

  else
  {
    v35 = lzma_fastpos[a3];
  }

  v36 = 0;
  v37 = (a1 + 716);
  if (a4 >= 6)
  {
    v38 = 3;
  }

  else
  {
    v38 = v10;
  }

  v39 = a1 + (v38 << 7) + 28388;
  v40 = *(a1 + 32);
  v41 = -264 - 8 * v40;
  v42 = 4 * v40 + 48;
  v43 = a1 + v42;
  v44 = 1;
  v45 = 5;
  do
  {
    *(v43 + 4 * v36) = (v35 >> v45) & 1;
    *(a1 + 8 * v40 + 264 + 8 * v36) = v39 + 2 * v44;
    v46 = (v35 >> v45) & 1 | (2 * v44);
    v41 -= 8;
    v42 += 4;
    ++v36;
    --v45;
    v44 = v46;
  }

  while (v36 != 6);
  v47 = v40 + v36;
  *(a1 + 32) = v47;
  if (v35 >= 4)
  {
    v48 = (v35 >> 1) - 1;
    v49 = (v35 & 1 | 2) << ((v35 >> 1) - 1);
    v50 = a3 - v49;
    if (v35 > 0xD)
    {
      v52 = (v35 >> 1) - 6;
      do
      {
        ++v47;
        *(a1 + v42) = (v50 >> 4 >> v52) & 1 | 2;
        v42 += 4;
        v41 -= 8;
        --v52;
      }

      while (v52 != -1);
      v53 = v50 & 0xF;
      v54 = (a1 + v42);
      v55 = (a1 - v41);
      v56 = 1;
      v57 = -4;
      do
      {
        *v54++ = v53 & 1;
        *v55++ = a1 + 29128 + 2 * v56;
        ++v47;
        v56 = v53 & 1 | (2 * v56);
        v53 >>= 1;
      }

      while (!__CFADD__(v57++, 1));
      *(a1 + 32) = v47;
      ++*(a1 + 69312);
    }

    else
    {
      v51 = 1;
      do
      {
        *(v13 + 8 * v47) = a1 + 2 * v49 - 2 * v35 + 28898 + 2 * v51;
        *(v13 + 4 * v47++ - 216) = v50 & 1;
        v51 = v50 & 1 | (2 * v51);
        v50 >>= 1;
        --v48;
      }

      while (v48);
      *(a1 + 32) = v47;
    }
  }

  *(a1 + 728) = *(a1 + 724);
  result = *v37;
  *(a1 + 720) = *v37;
  *(a1 + 716) = a3;
  ++*(a1 + 69244);
  return result;
}

uint64_t length_update_prices(uint64_t result, unsigned int a2)
{
  v2 = *(result + 18436);
  *(result + 4 * a2 + 18440) = v2;
  v3 = *result >> 4;
  v4 = lzma_rc_prices[v3 ^ 0x7F];
  v5 = *(result + 2) >> 4;
  v6 = lzma_rc_prices[v5 ^ 0x7F];
  v7 = result + 1088 * a2 + 1028;
  if (v2 >= 8)
  {
    v8 = 8;
  }

  else
  {
    v8 = v2;
  }

  if (v2)
  {
    v9 = 0;
    v10 = lzma_rc_prices[v3];
    v11 = lzma_rc_prices[v5] + v4;
    v12 = result + 16 * a2;
    do
    {
      v13 = 0;
      v14 = v9 | 8;
      do
      {
        v15 = v14 >> 1;
        if (v14)
        {
          v16 = 2032;
        }

        else
        {
          v16 = 0;
        }

        v13 += lzma_rc_prices[(v16 ^ *(v12 + 4 + 2 * v15)) >> 4];
        v14 >>= 1;
      }

      while (v15 != 1);
      *(v7 + 4 * v9++) = v13 + v10;
    }

    while (v9 != v8);
    if (v2 >= 0x10)
    {
      v17 = 16;
    }

    else
    {
      v17 = v2;
    }

    if (v2 >= 9)
    {
      v18 = v12 + 260;
      do
      {
        v19 = 0;
        v20 = v8;
        do
        {
          v21 = v20 >> 1;
          if (v20)
          {
            v22 = 2032;
          }

          else
          {
            v22 = 0;
          }

          v19 += lzma_rc_prices[(v22 ^ *(v18 + 2 * v21)) >> 4];
          v20 >>= 1;
        }

        while (v21 != 1);
        *(v7 + 4 * v8++) = v11 + v19;
      }

      while (v8 != v17);
      LODWORD(v8) = v17;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 < v2)
  {
    v23 = v6 + v4;
    v24 = result + 516;
    v8 = v8;
    do
    {
      v25 = 0;
      v26 = v8 + 240;
      do
      {
        v27 = v26 >> 1;
        if (v26)
        {
          result = 2032;
        }

        else
        {
          result = 0;
        }

        v25 += lzma_rc_prices[(result ^ *(v24 + 2 * v27)) >> 4];
        v26 >>= 1;
      }

      while (v27 != 1);
      *(v7 + 4 * v8++) = v23 + v25;
    }

    while (v8 != v2);
  }

  return result;
}

uint64_t lzma_lzma_set_out_limit(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < 6)
  {
    return 10;
  }

  result = 0;
  *(a1 + 696) = a3;
  *(a1 + 704) = a2;
  *(a1 + 2935) = 0;
  return result;
}

uint64_t lzma_lzma_preset(uint64_t a1, int a2)
{
  v2 = a2 & 0x1F;
  v3 = 1;
  if ((a2 & 0x1Fu) <= 9 && (a2 & 0x7FFFFFE0) == 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = xmmword_2990BEFE0;
    *a1 = 1 << lzma_lzma_preset_dict_pow2[v2];
    if (v2 > 3)
    {
      v7 = 0;
      if (v2 == 5)
      {
        v9 = 32;
      }

      else
      {
        v9 = 64;
      }

      if (v2 == 4)
      {
        v6 = 16;
      }

      else
      {
        v6 = v9;
      }

      v5 = 20;
      v8 = 2;
    }

    else
    {
      if ((a2 & 0x1F) != 0)
      {
        v5 = 4;
      }

      else
      {
        v5 = 3;
      }

      if (v2 >= 2)
      {
        v6 = 273;
      }

      else
      {
        v6 = 128;
      }

      v7 = lzma_lzma_preset_depths[v2];
      v8 = 1;
    }

    *(a1 + 32) = v8;
    *(a1 + 36) = v6;
    *(a1 + 40) = v5;
    *(a1 + 44) = v7;
    if (a2 < 0)
    {
      v10 = 0;
      *(a1 + 32) = 2;
      *(a1 + 40) = 20;
      v11 = 192;
      if (v2 != 3 && v2 != 5)
      {
        v10 = 512;
        v11 = 273;
      }

      v3 = 0;
      *(a1 + 36) = v11;
      *(a1 + 44) = v10;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t lzma_outq_memusage(unint64_t a1, unsigned int a2)
{
  if (a2 <= 0x4000 && HIWORD(a1) == 0)
  {
    return (a1 + 64) * 2 * a2;
  }

  else
  {
    return -1;
  }
}

uint64_t *lzma_outq_clear_cache(uint64_t a1, uint64_t a2)
{
  for (result = *(a1 + 24); result; result = *(a1 + 24))
  {
    v5 = *result;
    --*(a1 + 52);
    v6 = *(a1 + 32) - result[2] - 64;
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
    lzma_free(result, a2);
  }

  return result;
}

void lzma_outq_clear_cache2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    while (1)
    {
      v7 = *v4;
      if (!*v4)
      {
        break;
      }

      --*(a1 + 52);
      v8 = *(a1 + 32) - v4[2] - 64;
      *(a1 + 24) = v7;
      *(a1 + 32) = v8;
      lzma_free(v4, a2);
      v4 = *(a1 + 24);
    }

    v9 = v4[2];
    if (v9 != a3)
    {
      --*(a1 + 52);
      v10 = *(a1 + 32) - v9 - 64;
      *(a1 + 24) = 0;
      *(a1 + 32) = v10;

      lzma_free(v4, a2);
    }
  }
}

uint64_t lzma_outq_init(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 0x4000)
  {
    return 8;
  }

  v6 = 2 * a3;
  while (*a1)
  {
    move_head_to_cache(a1, a2);
  }

  while (1)
  {
    v11 = *(a1 + 52);
    if (v6 >= v11)
    {
      break;
    }

    v7 = *(a1 + 24);
    v8 = *(a1 + 32);
    v9 = *v7;
    *(a1 + 52) = v11 - 1;
    v10 = v8 - v7[2] - 64;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    lzma_free(v7, a2);
  }

  result = 0;
  *(a1 + 56) = v6;
  *(a1 + 16) = 0;
  return result;
}

uint64_t *move_head_to_cache(uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = **result;
  *result = v4;
  if (!v4)
  {
    result[1] = 0;
  }

  v5 = result[3];
  if (v5 && *(v5 + 16) != v3[2])
  {
    result = lzma_outq_clear_cache(result, a2);
    v5 = v2[3];
  }

  *v3 = v5;
  v2[3] = v3;
  --*(v2 + 12);
  v2[5] = v2[5] - v3[2] - 64;
  return result;
}

uint64_t *lzma_outq_end(uint64_t *a1, uint64_t a2)
{
  while (*a1)
  {
    move_head_to_cache(a1, a2);
  }

  return lzma_outq_clear_cache(a1, a2);
}

uint64_t lzma_outq_prealloc_buf(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(a1 + 24);
  if (v6 && *(v6 + 16) == a3)
  {
    return 0;
  }

  if (a3 > 0xFFFFFFFFFFFFFFBFLL)
  {
    return 5;
  }

  v8 = a3 + 64;
  lzma_outq_clear_cache(a1, a2);
  v9 = lzma_alloc(a3 + 64, a2);
  *(a1 + 24) = v9;
  if (!v9)
  {
    return 5;
  }

  v10 = v9;
  result = 0;
  *v10 = 0;
  v10[2] = a3;
  ++*(a1 + 52);
  *(a1 + 32) += v8;
  return result;
}

uint64_t lzma_outq_get_buf(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = *v2;
  *v2 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v3 = a1;
  }

  *v3 = v2;
  *(a1 + 8) = v2;
  *(v2 + 8) = a2;
  *(v2 + 40) = 0;
  *(v2 + 44) = 1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  ++*(a1 + 48);
  *(a1 + 40) += *(v2 + 16) + 64;
  return v2;
}

uint64_t lzma_outq_is_readable(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (a1[2] >= *(v1 + 24))
    {
      LOBYTE(v1) = *(v1 + 40);
    }

    else
    {
      LOBYTE(v1) = 1;
    }
  }

  return v1 & 1;
}

uint64_t lzma_outq_read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, void *a7)
{
  if (!*(a1 + 12))
  {
    return 0;
  }

  v11 = a1 + 2;
  v12 = *a1;
  lzma_bufcpy(*a1 + 64, a1 + 2, *(*a1 + 24), a3, a4, a5);
  if (*(v12 + 40) != 1 || *v11 < *(v12 + 24))
  {
    return 0;
  }

  if (a6)
  {
    *a6 = *(v12 + 48);
  }

  if (a7)
  {
    *a7 = *(v12 + 56);
  }

  v13 = *(v12 + 44);
  move_head_to_cache(a1, a2);
  a1[2] = 0;
  return v13;
}

void *lzma_outq_enable_partial_output(void *result, uint64_t (*a2)(void))
{
  v2 = *result;
  if (*result && (*(v2 + 40) & 1) == 0)
  {
    v3 = result;
    result = *(v2 + 8);
    if (result)
    {
      result = a2();
      *(*v3 + 8) = 0;
    }
  }

  return result;
}

unint64_t lzma_lzma_optimum_fast(unint64_t result, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v7 = result;
  v8 = *(a2 + 96);
  v39 = 0;
  if (*(a2 + 28))
  {
    v9 = *(result + 2928);
    v39 = *(result + 2924);
  }

  else
  {
    result = lzma_mf_find(a2, &v39, result + 732);
    v9 = result;
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 36) - v10;
  v12 = v11 + 1;
  if ((v11 + 1) < 0x111)
  {
    v13 = (v11 + 1);
  }

  else
  {
    v13 = 273;
  }

  if (v12 >= 2)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (*a2 + v10);
    v18 = v17 - 1;
    v19 = v7 + 716;
    do
    {
      v20 = *(v19 + 4 * v14);
      if (*(v17 - 1) == *&v17[-v20 - 2])
      {
        v21 = v13;
        if (v12 != 2)
        {
          v22 = 0;
          v23 = &v17[-v20];
          while (1)
          {
            result = (*&v17[v22 + 1] - *&v23[v22]);
            if (result)
            {
              break;
            }

            result = v22 + 6;
            v22 += 4;
            if (result >= v13)
            {
              v21 = v13;
              goto LABEL_21;
            }
          }

          v24 = v22 + 2;
          v25 = v22 + 4;
          if (result)
          {
            v25 = v24;
            v26 = result;
          }

          else
          {
            v26 = BYTE2(result);
          }

          v21 = v25 | (v26 == 0);
          if (v21 >= v13)
          {
            v21 = v13;
          }
        }

LABEL_21:
        if (v21 >= v8)
        {
          *a3 = v14;
          *a4 = v21;
          v33 = v21 - 1;
          if (v21 == 1)
          {
            return result;
          }

          goto LABEL_50;
        }

        if (v21 > v15)
        {
          v16 = v14;
          v15 = v21;
        }
      }

      ++v14;
    }

    while (v14 != 4);
    if (v9 >= v8)
    {
      *a3 = *(v7 + 8 * (v39 - 1) + 736) + 4;
      *a4 = v9;
      v33 = v9 - 1;
      if (v9 == 1)
      {
        return result;
      }

      goto LABEL_50;
    }

    if (v9 < 2)
    {
      v28 = 0;
    }

    else
    {
      v27 = v39;
      v28 = *(v7 + 8 * (v39 - 1) + 736);
      if (v39 >= 2)
      {
        v29 = (v7 + 8 * v39 + 720);
        do
        {
          v30 = *(v29 - 1);
          if (v9 != v30 + 1)
          {
            break;
          }

          v31 = *v29;
          if (*v29 >= v28 >> 7)
          {
            break;
          }

          v39 = --v27;
          v29 -= 2;
          v28 = v31;
          v9 = v30;
        }

        while (v27 > 1);
      }

      if (v28 > 0x7F && v9 == 2)
      {
        v9 = 1;
      }
    }

    if (v15 >= 2 && (v15 + 1 >= v9 || v15 + 2 >= v9 && v28 > 0x200 || v15 + 3 >= v9 && v28 > 0x8000))
    {
      *a3 = v16;
      *a4 = v15;
      v33 = v15 - 1;
LABEL_50:
      result = (*(a2 + 56))(a2, v33, v18);
      *(a2 + 28) += v33;
      return result;
    }

    if (v12 != 2 && v9 > 1)
    {
      v38 = v9 - 1;
      result = lzma_mf_find(a2, (v7 + 2924), v7 + 732);
      *(v7 + 2928) = result;
      if (result < 2)
      {
        goto LABEL_63;
      }

      v34 = *(v7 + 732 + 8 * (*(v7 + 2924) - 1) + 4);
      if (result < v9 || v34 >= v28)
      {
        v35 = result == v9 + 1;
        if (v28 < v34 >> 7)
        {
          v35 = 0;
        }

        if (result <= v9 + 1 && !v35 && (v9 < 3 || result + 1 < v9 || v28 >> 7 <= v34))
        {
LABEL_63:
          v36 = 0;
          if (v38 <= 2)
          {
            v37 = 2;
          }

          else
          {
            v37 = v38;
          }

          while (1)
          {
            result = memcmp(v17, &v17[-*(v19 + v36) - 1], v37);
            if (!result)
            {
              break;
            }

            v36 += 4;
            if (v36 == 16)
            {
              *a3 = v28 + 4;
              *a4 = v9;
              v33 = v9 - 2;
              if (v9 != 2)
              {
                goto LABEL_50;
              }

              return result;
            }
          }
        }
      }
    }
  }

  *a3 = -1;
  *a4 = 1;
  return result;
}

uint64_t lzma_lzma_optimum_normal(uint64_t result, unsigned int *a2, int *a3, unsigned int *a4, int a5)
{
  v7 = result;
  v342 = *MEMORY[0x29EDCA608];
  v8 = (result + 0x10000);
  v9 = *(result + 69320);
  if (*(result + 69316) != v9)
  {
    v14 = *(result + 44 * v9 + 69344);
    v13 = *(result + 44 * v9 + 69348);
    *a4 = v14 - v9;
    *a3 = v13;
    *(result + 69320) = v14;
    goto LABEL_70;
  }

  v331 = result;
  if (a2[7])
  {
    v11 = a2[24];
    v12 = *(result + 2928);
    v340 = *(result + 2924);
  }

  else
  {
    if (*(result + 69244) >= 0x80u)
    {
      v15 = 0;
      v16 = (result + 66224);
      do
      {
        v17 = (v7 + 66168 + (v15 << 8));
        if (v8[926])
        {
          v18 = 0;
          do
          {
            v19 = 0;
            v20 = v18 + 64;
            do
            {
              v21 = v20 >> 1;
              if (v20)
              {
                v22 = 2032;
              }

              else
              {
                v22 = 0;
              }

              v19 += lzma_rc_prices[(v22 ^ *(v7 + 28388 + (v15 << 7) + 2 * v21)) >> 4];
              v20 >>= 1;
            }

            while (v21 != 1);
            *(v17 + v18++) = v19;
            v23 = v8[926];
          }

          while (v18 < v23);
          if (v23 >= 0xF)
          {
            v24 = 112;
            v25 = v16;
            v26 = 14;
            do
            {
              *v25 = *v25 + (v24 & 0xFFFFFFF0) - 80;
              ++v25;
              ++v26;
              v24 += 8;
            }

            while (v26 < v8[926]);
          }
        }

        *(v7 + 67192 + (v15++ << 9)) = *v17;
        v16 += 64;
      }

      while (v15 != 4);
      v27 = v8 + 418;
      v28 = 4u;
      do
      {
        v29 = 0;
        v30 = lzma_fastpos[v28];
        v31 = (v30 >> 1) - 1;
        v32 = (lzma_fastpos[v28] & 1 | 2) << ((lzma_fastpos[v28] >> 1) - 1);
        v33 = v7 + 28900 + 2 * v32 - 2 * v30 - 2;
        v34 = v28 - v32;
        v35 = 1;
        do
        {
          v36 = v34 & 1;
          v34 >>= 1;
          if (v36)
          {
            v37 = 2032;
          }

          else
          {
            v37 = 0;
          }

          v29 += lzma_rc_prices[(v37 ^ *(v33 + 2 * v35)) >> 4];
          v35 = v36 | (2 * v35);
          --v31;
        }

        while (v31);
        v38 = 0;
        v39 = v7 + 66168 + 4 * v30;
        v40 = v27;
        do
        {
          *v40 = *(v39 + v38) + v29;
          v38 += 256;
          v40 += 128;
        }

        while (v38 != 1024);
        ++v28;
        ++v27;
      }

      while (v28 != 128);
      v8[927] = 0;
    }

    if (v8[944] >= 0x10)
    {
      for (i = 0; i != 16; ++i)
      {
        v42 = 0;
        v43 = 1;
        v44 = -4;
        v45 = i;
        do
        {
          v46 = v45 & 1;
          v45 >>= 1;
          if (v46)
          {
            v47 = 2032;
          }

          else
          {
            v47 = 0;
          }

          v42 += lzma_rc_prices[(v47 ^ *(v7 + 29128 + 2 * v43)) >> 4];
          v43 = v46 | (2 * v43);
        }

        while (!__CFADD__(v44++, 1));
        *(v7 + 69248 + 4 * i) = v42;
      }

      v8[944] = 0;
    }

    v11 = a2[24];
    v340 = 0;
    result = lzma_mf_find(a2, &v340, v7 + 732);
    v7 = v331;
    v12 = result;
  }

  v49 = a2[6];
  v50 = a2[9] - v49 + 1;
  if (v50 > 0x110)
  {
    v50 = 273;
  }

  else if (v50 <= 1)
  {
LABEL_65:
    *a3 = -1;
    *a4 = 1;
    goto LABEL_70;
  }

  v51 = 0;
  v52 = 0;
  v53 = a2;
  v54 = v7 + 69324;
  v332 = (v7 + 27916);
  v55 = (v7 + 716);
  v305 = v53;
  v56 = *v53 + v49;
  v57 = *(v56 - 1);
  v58 = (v56 - 2);
  do
  {
    result = v55[v51];
    if (v57 == *&v58[-result])
    {
      v59 = v50;
      if (v50 >= 3)
      {
        v60 = 0;
        v61 = v56 - result;
        while (1)
        {
          v62 = *(v56 + 1 + v60) - *(v61 + v60);
          if (v62)
          {
            break;
          }

          v63 = v60 + 6;
          v60 += 4;
          if (v63 >= v50)
          {
            v59 = v50;
            goto LABEL_57;
          }
        }

        v64 = v60 + 2;
        v65 = v60 + 4;
        if (v62)
        {
          v65 = v64;
          v66 = v62;
        }

        else
        {
          v66 = BYTE2(v62);
        }

        v59 = v65 | (v66 == 0);
        if (v59 >= v50)
        {
          v59 = v50;
        }
      }

LABEL_57:
      *(&v341 + v51) = v59;
      result = *(&v341 + v52);
      if (v59 > result)
      {
        v52 = v51;
      }
    }

    else
    {
      *(&v341 + v51) = 0;
    }

    ++v51;
  }

  while (v51 != 4);
  v67 = *(&v341 + v52);
  if (v67 >= v11)
  {
    *a3 = v52;
    *a4 = v67;
    v69 = v67 - 1;
    if (v67 == 1)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (v12 >= v11)
  {
    *a3 = *(v7 + 8 * (v340 - 1) + 736) + 4;
    *a4 = v12;
    v69 = v12 - 1;
    if (v12 == 1)
    {
      goto LABEL_70;
    }

LABEL_69:
    result = (*(v53 + 7))(v53, v69);
    *(v305 + 28) += v69;
    goto LABEL_70;
  }

  v68 = *(~*v55 + v56 - 1);
  if (v67 <= 1 && v12 <= 1 && v68 != v57)
  {
    goto LABEL_65;
  }

  v291 = v8;
  v292 = a3;
  v293 = a4;
  v71 = *(v7 + 712);
  *v54 = v71;
  v301 = v7 + 27524;
  v338 = *(v7 + 2936) & a5;
  v72 = *(v7 + 27524 + 32 * v71 + 2 * v338) >> 4;
  v73 = lzma_rc_prices[v72];
  result = get_literal_price(v7, a5, *v58, v71 > 6, v68, v57);
  *(v54 + 60) = result + v73;
  v74 = -1;
  *(v54 + 68) = -1;
  *(v54 + 48) = 0;
  v75 = lzma_rc_prices[v72 ^ 0x7F];
  v298 = v331 + 27908;
  v76 = *(v331 + 27908 + 2 * v71) >> 4;
  v77 = lzma_rc_prices[v76 ^ 0x7F] + v75;
  if (v68 == v57)
  {
    v78 = v77 + lzma_rc_prices[*(v331 + 2 * v71 + 27932) >> 4] + lzma_rc_prices[*(v331 + 32 * v71 + 2 * v338 + 28004) >> 4];
    if (v78 >= result + v73)
    {
      v74 = -1;
    }

    else
    {
      v74 = 0;
      *(v54 + 60) = v78;
      *(v54 + 68) = 0;
    }
  }

  if (v12 <= v67)
  {
    v79 = v67;
  }

  else
  {
    v79 = v12;
  }

  if (v79 <= 1)
  {
    *v292 = v74;
    *v293 = 1;
    goto LABEL_70;
  }

  v80 = 0;
  *(v54 + 28) = *v55;
  v294 = v54 + 28;
  *(v54 + 64) = 0;
  v81 = (v79 - 2);
  v82 = (v81 + 4) & 0x1FFFFFFFCLL;
  v83 = vdupq_n_s64(v81);
  v84 = 44 * v79 + 69296;
  do
  {
    v85 = vdupq_n_s64(v80);
    v86 = vmovn_s64(vcgeq_u64(v83, vorrq_s8(v85, xmmword_2990BEF90)));
    if (vuzp1_s16(v86, *v83.i8).u8[0])
    {
      *(v331 + v84 + 44) = 0x40000000;
    }

    if (vuzp1_s16(v86, *&v83).i8[2])
    {
      *(v331 + v84) = 0x40000000;
    }

    if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v83, vorrq_s8(v85, xmmword_2990BF000)))).i32[1])
    {
      *(v331 + v84 - 44) = 0x40000000;
      *(v331 + v84 - 88) = 0x40000000;
    }

    v80 += 4;
    v84 -= 176;
  }

  while (v82 != v80);
  v87 = 0;
  v324 = v331 + 27932;
  v310 = v331 + 27956;
  v304 = v331 + 27980;
  v330 = v331 + 48692;
  v317 = v331 + 28004;
  do
  {
    v88 = *(&v341 + v87);
    result = v88 - 2;
    if (v88 < 2)
    {
      goto LABEL_99;
    }

    v89 = *(v324 + 2 * v71) >> 4;
    if (v87)
    {
      v90 = lzma_rc_prices[v89 ^ 0x7FLL];
      v91 = *(v310 + 2 * v71) >> 4;
      if (v87 != 1)
      {
        v92 = lzma_rc_prices[v91 ^ 0x7FLL] + v90 + lzma_rc_prices[((2 - v87) & 0x7F0 ^ *(v304 + 2 * v71)) >> 4];
        goto LABEL_95;
      }
    }

    else
    {
      v90 = lzma_rc_prices[v89];
      v91 = (*(v331 + 28004 + 32 * v71 + 2 * v338) >> 4) ^ 0x7F;
    }

    v92 = lzma_rc_prices[v91] + v90;
LABEL_95:
    v93 = v92 + v77;
    result = v331 + 48692 + 1088 * v338 + 4 * result;
    do
    {
      v94 = *result;
      result -= 4;
      v95 = v93 + v94;
      v96 = v54 + 44 * v88;
      if ((v93 + v94) < *(v96 + 16))
      {
        *(v96 + 16) = v95;
        *(v96 + 20) = 0;
        *(v96 + 24) = v87;
        *(v96 + 4) = 0;
      }

      --v88;
    }

    while (v88 > 1);
LABEL_99:
    ++v87;
  }

  while (v87 != 4);
  if (v341 >= 2)
  {
    v97 = v341 + 1;
  }

  else
  {
    v97 = 2;
  }

  if (v97 <= v12)
  {
    v267 = lzma_rc_prices[v76];
    v268 = v331 + 732;
    v269 = -1;
    do
    {
      ++v269;
    }

    while (v97 > *(v268 + 8 * v269));
    v270 = v267 + v75;
    v271 = v340;
    result = 44;
    while (1)
    {
      v272 = (v268 + 8 * v269);
      v273 = v272[1];
      v274 = v97 - 2;
      v275 = v97 >= 6 ? 3 : v274;
      if (v273 > 0x7F)
      {
        if ((v273 & 0x80000000) != 0)
        {
          v277 = 30;
        }

        else
        {
          v277 = 18;
        }

        if ((v273 & 0x80000000) != 0)
        {
          v278 = 60;
        }

        else
        {
          v278 = 36;
        }

        if (v273 < 0x80000)
        {
          v277 = 6;
          v278 = 12;
        }

        v276 = *(v331 + 69248 + 4 * (v273 & 0xF)) + *(v331 + 66168 + (v275 << 8) + 4 * (v278 + lzma_fastpos[v273 >> v277]));
      }

      else
      {
        v276 = *(v331 + 67192 + (v275 << 9) + 4 * v273);
      }

      v279 = v270 + *(v331 + 30188 + 1088 * v338 + 4 * v274) + v276;
      v280 = v54 + 44 * v97;
      if (v279 < *(v280 + 16))
      {
        *(v280 + 16) = v279;
        *(v280 + 20) = 0;
        *(v280 + 24) = v273 + 4;
        *(v280 + 4) = 0;
      }

      if (v274 + 2 == *v272 && ++v269 == v271)
      {
        break;
      }

      v97 = v274 + 3;
    }
  }

  if (v79 != -1)
  {
    v98 = v79;
    v99 = 0;
    v100 = (v331 + 2924);
    v101 = v331 + 732;
    v341 = *v55;
    v315 = v331 + 69472;
    v303 = ~a5;
    v302 = 4094;
    v102 = 1;
    v306 = v54;
    while (1)
    {
      v327 = v99;
      v103 = v98;
      v104 = lzma_mf_find(v305, v100, v101);
      v105 = v331;
      *(v331 + 2928) = v104;
      if (v104 >= *(v305 + 96))
      {
        LODWORD(result) = v102;
        goto LABEL_386;
      }

      v299 = v104;
      v106 = *v305;
      v107 = *(v305 + 24);
      v108 = *(v305 + 36) - v107;
      v296 = v108 + 1;
      if (v108 + 1 < (4095 - v102))
      {
        v109 = v108 + 1;
      }

      else
      {
        v109 = 4095 - v102;
      }

      v323 = v109;
      v110 = *v100;
      v111 = v54 + 44 * v102;
      v112 = *(v111 + 20);
      v311 = *(v305 + 96);
      v320 = v110;
      if (*(v111 + 4) == 1)
      {
        if (*(v111 + 5) == 1)
        {
          v113 = *(v111 + 8);
          v114 = *(v111 + 12);
          if (*(v54 + 44 * v113) >= 7u)
          {
            v115 = 11;
          }

          else
          {
            v115 = 8;
          }

          if (*(v54 + 44 * v113) >= 7u)
          {
            v116 = 10;
          }

          else
          {
            v116 = 7;
          }

          if (*(v54 + 44 * v113) >= 7u)
          {
            v117 = -6;
          }

          else
          {
            v117 = -3;
          }

          if (v114 >= 4)
          {
            v115 = v116;
          }

          v118 = v115 + v117;
          if (v102 == v112)
          {
LABEL_130:
            if (*(v111 + 24))
            {
              if (v118 >= 0xA)
              {
                v121 = -6;
              }

              else
              {
                v121 = -3;
              }

              v122 = v121 + v118;
              if (v118 >= 4)
              {
                v119 = v122;
              }

              else
              {
                v119 = 0;
              }
            }

            else if (v118 >= 7)
            {
              v119 = 11;
            }

            else
            {
              v119 = 9;
            }

            goto LABEL_161;
          }

          if (v118 >= 7)
          {
            v119 = 11;
          }

          else
          {
            v119 = 8;
          }

          if (v114 > 3)
          {
            goto LABEL_157;
          }

          goto LABEL_148;
        }

        v120 = v112 - 1;
        v123 = *(v54 + 44 * (v112 - 1));
        if (v123 >= 0xA)
        {
          v124 = -6;
        }

        else
        {
          v124 = -3;
        }

        v125 = v124 + v123;
        if (v123 >= 4)
        {
          v118 = v125;
        }

        else
        {
          v118 = 0;
        }

        if (v102 == v112)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v118 = *(v54 + 44 * v112);
        v120 = *(v111 + 20);
        if (v102 - 1 == v112)
        {
          goto LABEL_130;
        }
      }

      v114 = *(v111 + 24);
      v113 = v120;
      if (v114 > 3)
      {
        if (v118 >= 7)
        {
          v119 = 10;
        }

        else
        {
          v119 = 7;
        }

LABEL_157:
        LODWORD(v341) = v114 - 4;
        v127 = v294 + 44 * v113;
        *(&v341 + 4) = *v127;
        HIDWORD(v341) = *(v127 + 8);
        goto LABEL_161;
      }

      if (v118 >= 7)
      {
        v119 = 11;
      }

      else
      {
        v119 = 8;
      }

LABEL_148:
      LODWORD(v341) = *(v54 + 44 * v113 + 4 * v114 + 28);
      if (v114)
      {
        v126 = v114 + 1;
        memcpy(&v341 + 4, (v294 + 44 * v113), 4 * (v114 + 1) - 4);
        v105 = v331;
        if (v114 > 2)
        {
          goto LABEL_161;
        }
      }

      else
      {
        v126 = 1;
      }

      v128 = v126;
      do
      {
        *(&v341 + v128) = *(v331 + 69352 + 44 * v113 + 4 * v128);
        ++v128;
      }

      while (v128 != 4);
LABEL_161:
      *v111 = v119;
      *(v331 + 69396 + 44 * v327) = v341;
      v129 = *(v111 + 16);
      v130 = *(v106 + v107 - 2);
      v335 = (v106 + v107 - 1);
      v336 = v106 + v107 - 2;
      v131 = v335 + ~v341;
      v316 = *(v105 + 2936);
      v322 = v119;
      v339 = v316 & (v102 + a5);
      v132 = *v131;
      v133 = *(v301 + 32 * v119 + 2 * v339) >> 4;
      v135 = v119 > 6;
      v136 = *v335;
      v137 = v135;
      v308 = v102 + a5;
      v134 = lzma_rc_prices[v133];
      v138 = v129 + get_literal_price(v105, v102 + a5, v130, v137, v132, *v335) + v134;
      v300 = v102 + 1;
      v139 = v54 + 44 * (v102 + 1);
      v140 = *(v139 + 16);
      v141 = v138 < v140;
      if (v138 < v140)
      {
        *(v139 + 16) = v138;
        *(v139 + 20) = v102;
        *(v139 + 24) = -1;
        v140 = v138;
        *(v139 + 4) = 0;
      }

      v142 = v129 + lzma_rc_prices[v133 ^ 0x7FLL];
      v143 = v322;
      v297 = *(v298 + 2 * v322) >> 4;
      v318 = v142 + lzma_rc_prices[v297 ^ 0x7F];
      v145 = xmmword_2990BEF90;
      v144 = xmmword_2990BF000;
      v98 = v103;
      v146 = v331 + 30188;
      v101 = v331 + 732;
      v147 = v331 + 66168;
      v148 = v331 + 67192;
      v149 = v323;
      v150 = v311;
      if (v132 == v136)
      {
        v151 = v331;
        v152 = v327;
        v153 = v331 + 69248;
        v154 = v335;
        if (v102 <= *(v139 + 20) || *(v139 + 24))
        {
          v150 = v311;
          v155 = v318 + lzma_rc_prices[*(v324 + 2 * v322) >> 4] + lzma_rc_prices[*(v317 + 32 * v322 + 2 * v339) >> 4];
          if (v155 <= v140)
          {
            *(v139 + 16) = v155;
            *(v139 + 20) = v102;
            *(v139 + 24) = 0;
            v141 = 1;
            *(v139 + 4) = 0;
          }
        }
      }

      else
      {
        v151 = v331;
        v152 = v327;
        v153 = v331 + 69248;
        v154 = v335;
      }

      if (v323 < 2)
      {
        goto LABEL_361;
      }

      if (v323 >= v150)
      {
        v156 = v150;
      }

      else
      {
        v156 = v323;
      }

      if (v132 == v136)
      {
        v141 = 1;
      }

      v325 = v156;
      v295 = v142;
      if (!v141)
      {
        if (v150 + 1 < v323)
        {
          v157 = v150 + 1;
        }

        else
        {
          v157 = v323;
        }

        if (v157 >= 2)
        {
          v158 = 1;
          while (1)
          {
            v159 = *(v154 + v158) - *&v131[v158];
            if (v159)
            {
              break;
            }

            v158 += 4;
            if (v158 >= v157)
            {
              goto LABEL_193;
            }
          }

          if (*(v154 + v158) == *&v131[v158])
          {
            v158 += 2;
            LOBYTE(v159) = BYTE2(v159);
          }

          if (!v159)
          {
            ++v158;
          }

          if (v158 < v157)
          {
            v157 = v158;
          }
        }

LABEL_193:
        v160 = v157 - 3;
        if (v157 - 3 <= 0xFFFFFFFD)
        {
          if (v322 >= 0xA)
          {
            v161 = -6;
          }

          else
          {
            v161 = -3;
          }

          LODWORD(v162) = v161 + v322;
          if (v322 >= 4)
          {
            v162 = v162;
          }

          else
          {
            v162 = 0;
          }

          v163 = v316 & (v308 + 1);
          v164 = *(v301 + 32 * v162 + 2 * v163);
          v165 = *(v298 + 2 * v162);
          v166 = v157 + v102;
          if (v166 > v98)
          {
            v167 = 0;
            v168 = vdupq_n_s64(~v98 + v166);
            v169 = (v166 - v98 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v170 = (v315 + 44 * v98);
            do
            {
              v171 = vdupq_n_s64(v167);
              v172 = vmovn_s64(vcgeq_u64(v168, vorrq_s8(v171, xmmword_2990BEF90)));
              if (vuzp1_s16(v172, *v168.i8).u8[0])
              {
                *(v170 - 22) = 0x40000000;
              }

              if (vuzp1_s16(v172, *&v168).i8[2])
              {
                *(v170 - 11) = 0x40000000;
              }

              if (vuzp1_s16(*&v168, vmovn_s64(vcgeq_u64(v168, vorrq_s8(v171, xmmword_2990BF000)))).i32[1])
              {
                *v170 = 0x40000000;
                v170[11] = 0x40000000;
              }

              v167 += 4;
              v170 += 44;
            }

            while (v169 != v167);
            v98 = v166;
          }

          v173 = v138 + lzma_rc_prices[(v164 >> 4) ^ 0x7F] + lzma_rc_prices[(v165 >> 4) ^ 0x7F] + *(v330 + 1088 * v163 + 4 * v160) + lzma_rc_prices[*(v324 + 2 * v162) >> 4] + lzma_rc_prices[(*(v317 + 32 * v162 + 2 * v163) >> 4) ^ 0x7F];
          v174 = v54 + 44 * v166;
          if (v173 < *(v174 + 16))
          {
            *(v174 + 16) = v173;
            *(v174 + 20) = v300;
            *(v174 + 4) = 1;
          }

          v149 = v323;
          v154 = v335;
          v150 = v311;
          v156 = v325;
        }
      }

      v175 = 0;
      v176 = 11;
      if (v322 <= 6)
      {
        v176 = 8;
      }

      v337 = 2;
      v307 = v301 + 32 * v176;
      do
      {
        v177 = (v336 - *(&v341 + v175));
        if (*v154 != *v177)
        {
          goto LABEL_284;
        }

        v178 = v156;
        if (v156 >= 3)
        {
          v179 = 2;
          while (1)
          {
            v180 = *(v154 + v179) - *(v177 + v179);
            if (v180)
            {
              break;
            }

            v179 += 4;
            if (v179 >= v156)
            {
              v178 = v156;
              goto LABEL_229;
            }
          }

          if (*(v154 + v179) == *(v177 + v179))
          {
            v179 += 2;
            LOBYTE(v180) = BYTE2(v180);
          }

          if (!v180)
          {
            ++v179;
          }

          if (v179 >= v325)
          {
            v178 = v325;
          }

          else
          {
            v178 = v179;
          }
        }

LABEL_229:
        v333 = v98;
        if (v98 < v178 + v102)
        {
          v181 = 0;
          v182 = vdupq_n_s64(~v98 + v178 + v102);
          v183 = (v315 + 44 * v98);
          do
          {
            v184 = vdupq_n_s64(v181);
            v185 = vmovn_s64(vcgeq_u64(v182, vorrq_s8(v184, v145)));
            if (vuzp1_s16(v185, *v182.i8).u8[0])
            {
              *(v183 - 22) = 0x40000000;
            }

            if (vuzp1_s16(v185, *&v182).i8[2])
            {
              *(v183 - 11) = 0x40000000;
            }

            if (vuzp1_s16(*&v182, vmovn_s64(vcgeq_u64(v182, vorrq_s8(v184, v144)))).i32[1])
            {
              *v183 = 0x40000000;
              v183[11] = 0x40000000;
            }

            v181 += 4;
            v183 += 44;
          }

          while (((v102 + v178 - v98 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v181);
          v333 = v178 + v102;
        }

        v186 = *(v324 + 2 * v143) >> 4;
        v328 = v178 + v102;
        if (v175)
        {
          v187 = lzma_rc_prices[v186 ^ 0x7FLL];
          v188 = *(v310 + 2 * v143) >> 4;
          if (v175 != 1)
          {
            v189 = lzma_rc_prices[v188 ^ 0x7FLL] + v187 + lzma_rc_prices[((2 - v175) & 0x7F0 ^ *(v304 + 2 * v143)) >> 4];
            goto LABEL_244;
          }
        }

        else
        {
          v187 = lzma_rc_prices[v186];
          v188 = (*(v317 + 32 * v322 + 2 * v339) >> 4) ^ 0x7F;
        }

        v189 = lzma_rc_prices[v188] + v187;
LABEL_244:
        v190 = v189 + v318;
        v191 = 1088 * v339 + 48692 + 4 * (v178 - 2);
        v192 = v178;
        do
        {
          v193 = *(v151 + v191) + v190;
          v194 = v54 + 44 * (v102 + v192);
          if (v193 < *(v194 + 16))
          {
            *(v194 + 16) = v193;
            *(v194 + 20) = v102;
            *(v194 + 24) = v175;
            *(v194 + 4) = 0;
          }

          --v192;
          v191 -= 4;
        }

        while (v192 > 1);
        v195 = v178 + 1;
        v196 = v337;
        if (!v175)
        {
          v196 = v178 + 1;
        }

        v337 = v196;
        if (v195 + v150 >= v149)
        {
          v197 = v149;
        }

        else
        {
          v197 = v195 + v150;
        }

        if (v195 >= v197)
        {
          v197 = v178 + 1;
          v154 = v335;
        }

        else
        {
          v198 = v178 + 1;
          v154 = v335;
          while (1)
          {
            v199 = *(v335 + v198) - *(v177 + v198);
            if (v199)
            {
              break;
            }

            v198 += 4;
            if (v198 >= v197)
            {
              goto LABEL_265;
            }
          }

          if (*(v335 + v198) == *(v177 + v198))
          {
            v198 += 2;
            LOBYTE(v199) = BYTE2(v199);
          }

          v154 = v335;
          if (!v199)
          {
            ++v198;
          }

          if (v198 < v197)
          {
            v197 = v198;
          }
        }

LABEL_265:
        v200 = v197 - v195;
        v201 = v197 - v195 - 2;
        if (v200 < 2)
        {
          v98 = v333;
          v143 = v322;
        }

        else
        {
          v313 = v201;
          v202 = v98;
          v314 = *(v330 + 1088 * v339 + 4 * (v178 - 2));
          v312 = lzma_rc_prices[*(v307 + 2 * ((v178 + v308) & v316)) >> 4];
          literal_price = get_literal_price(v151, v178 + v308, *(v154 + v178 - 1), 1, *(v177 + v178), *(v154 + v178));
          v204 = (v178 + v308 + 1) & v316;
          v205 = *(v331 + 27684 + 2 * v204);
          v206 = v332;
          v207 = v332[1];
          v208 = v200 + v328 + 1;
          v98 = v333;
          if (v333 >= v208)
          {
            v151 = v331;
            v145 = xmmword_2990BEF90;
            v144 = xmmword_2990BF000;
            v152 = v327;
            v146 = v331 + 30188;
            v101 = v331 + 732;
            v153 = v331 + 69248;
            v147 = v331 + 66168;
            v148 = v331 + 67192;
            v143 = v322;
          }

          else
          {
            v209 = 0;
            v210 = vdupq_n_s64(~v333 + v208);
            v211 = v202;
            if (v202 <= (v102 + v178))
            {
              v211 = v102 + v178;
            }

            v212 = (v102 + v197 - v211 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            v213 = (v315 + 44 * v211);
            v151 = v331;
            v145 = xmmword_2990BEF90;
            v144 = xmmword_2990BF000;
            v152 = v327;
            v146 = v331 + 30188;
            v101 = v331 + 732;
            v153 = v331 + 69248;
            v147 = v331 + 66168;
            v148 = v331 + 67192;
            v143 = v322;
            do
            {
              v214 = vdupq_n_s64(v209);
              v215 = vmovn_s64(vcgeq_u64(v210, vorrq_s8(v214, xmmword_2990BEF90)));
              if (vuzp1_s16(v215, *v210.i8).u8[0])
              {
                *(v213 - 22) = 0x40000000;
              }

              if (vuzp1_s16(v215, *&v210).i8[2])
              {
                *(v213 - 11) = 0x40000000;
              }

              if (vuzp1_s16(*&v210, vmovn_s64(vcgeq_u64(v210, vorrq_s8(v214, xmmword_2990BF000)))).i32[1])
              {
                *v213 = 0x40000000;
                v213[11] = 0x40000000;
              }

              v209 += 4;
              v213 += 44;
            }

            while (v212 != v209);
            v98 = v208;
            v206 = v332;
          }

          v216 = v314 + v190 + v312 + literal_price + lzma_rc_prices[(v205 >> 4) ^ 0x7F] + lzma_rc_prices[(v207 >> 4) ^ 0x7F] + *(v330 + 1088 * v204 + 4 * v313) + lzma_rc_prices[v206[13] >> 4] + lzma_rc_prices[(*(v317 + 2 * v204 + 160) >> 4) ^ 0x7F];
          v217 = v54 + 44 * v208;
          if (v216 < *(v217 + 16))
          {
            *(v217 + 16) = v216;
            *(v217 + 20) = v328 + 1;
            *(v217 + 24) = 0;
            *(v217 + 4) = 257;
            *(v217 + 8) = v102;
            *(v217 + 12) = v175;
          }

          v149 = v323;
          v154 = v335;
          v150 = v311;
        }

        v156 = v325;
LABEL_284:
        ++v175;
      }

      while (v175 != 4);
      v218 = v299;
      v219 = v320;
      v220 = v337;
      if (v299 > v156)
      {
        v219 = 0;
        do
        {
          v221 = v219;
          v222 = *(v101 + 8 * v219++);
        }

        while (v156 > v222);
        *(v101 + 8 * v221) = v156;
        v218 = v156;
      }

      if (v218 >= v337)
      {
        v223 = v218 + v102;
        if (v98 < v223)
        {
          v224 = 0;
          v225 = vdupq_n_s64(~v98 + v223);
          if (v299 >= v150)
          {
            v226 = v150;
          }

          else
          {
            v226 = v299;
          }

          if (v226 >= v302)
          {
            v226 = v302;
          }

          if (v226 >= v296)
          {
            v226 = v296;
          }

          v227 = (v226 + v102 - v98 + 3) & 0xFFFFFFFFFFFFFFFCLL;
          v228 = (v315 + 44 * v98);
          do
          {
            v229 = vdupq_n_s64(v224);
            v230 = vmovn_s64(vcgeq_u64(v225, vorrq_s8(v229, v145)));
            if (vuzp1_s16(v230, *v225.i8).u8[0])
            {
              *(v228 - 22) = 0x40000000;
            }

            if (vuzp1_s16(v230, *&v225).i8[2])
            {
              *(v228 - 11) = 0x40000000;
            }

            if (vuzp1_s16(*&v225, vmovn_s64(vcgeq_u64(v225, vorrq_s8(v229, v144)))).i32[1])
            {
              *v228 = 0x40000000;
              v228[11] = 0x40000000;
            }

            v224 += 4;
            v228 += 44;
          }

          while (v227 != v224);
          v98 = v223;
        }

        v231 = -1;
        do
        {
          ++v231;
        }

        while (v337 > *(v101 + 8 * v231));
        v232 = v295 + lzma_rc_prices[v297];
        v233 = 10;
        if (v143 <= 6)
        {
          v233 = 7;
        }

        v329 = v150 + 1;
        v319 = v301 + 32 * v233;
        v321 = v219;
        do
        {
          v234 = *(v101 + 8 * v231);
          v235 = *(v101 + 8 * v231 + 4);
          if ((v235 & 0x80000000) != 0)
          {
            v236 = 30;
          }

          else
          {
            v236 = 18;
          }

          v237 = 60;
          if ((v235 & 0x80000000) == 0)
          {
            v237 = 36;
          }

          if (v235 >= 0x80000)
          {
            v238 = v236;
          }

          else
          {
            v238 = 6;
          }

          v239 = 12;
          if (v235 >= 0x80000)
          {
            v239 = v237;
          }

          while (1)
          {
            v240 = v220 - 2;
            if (v220 >= 6)
            {
              v241 = 3;
            }

            else
            {
              v241 = v240;
            }

            if (v235 > 0x7F)
            {
              v242 = *(v153 + 4 * (v235 & 0xF)) + *(v147 + (v241 << 8) + 4 * (v239 + lzma_fastpos[v235 >> v238]));
            }

            else
            {
              v242 = *(v148 + (v241 << 9) + 4 * v235);
            }

            v243 = v232 + *(v146 + 1088 * v339 + 4 * v240) + v242;
            v244 = v54 + 44 * (v152 + v220 + 1);
            if (v243 < *(v244 + 16))
            {
              *(v244 + 16) = v243;
              *(v244 + 20) = v102;
              *(v244 + 24) = v235 + 4;
              *(v244 + 4) = 0;
            }

            if (v220 == v234)
            {
              break;
            }

            ++v220;
          }

          v245 = v336 - v235;
          v246 = v220 + 1;
          v247 = v329 + v220;
          if (v329 + v220 >= v149)
          {
            v247 = v149;
          }

          v248 = v220 + 1;
          if (v246 < v247)
          {
            while (1)
            {
              v249 = *(v335 + v246) - *(v245 + v246);
              if (v249)
              {
                break;
              }

              v246 += 4;
              if (v246 >= v247)
              {
                v248 = v247;
                goto LABEL_345;
              }
            }

            if (*(v335 + v246) == *(v245 + v246))
            {
              v246 += 2;
              LOBYTE(v249) = BYTE2(v249);
            }

            if (!v249)
            {
              ++v246;
            }

            if (v246 >= v247)
            {
              v248 = v247;
            }

            else
            {
              v248 = v246;
            }
          }

LABEL_345:
          v250 = ~v220 + v248;
          if (v250 >= 2)
          {
            v334 = v248;
            v251 = (v220 - v303) & v316;
            v326 = lzma_rc_prices[*(v319 + 2 * v251) >> 4];
            v252 = v98;
            v253 = get_literal_price(v151, v220 - v303, *(v335 + v220 - 1), 1, *(v245 + v220), *(v335 + v220));
            v98 = v252;
            v152 = v327;
            v254 = v332;
            v255 = (v251 + 1) & v316;
            v256 = *(v331 + 27652 + 2 * v255);
            v257 = *v332;
            v258 = v327 + v220 + 2;
            v259 = v250 + v258;
            if (v252 >= v250 + v258)
            {
              v151 = v331;
              v146 = v331 + 30188;
              v101 = v331 + 732;
              v153 = v331 + 69248;
              v147 = v331 + 66168;
              v148 = v331 + 67192;
              v54 = v306;
            }

            else
            {
              v260 = 0;
              v261 = vdupq_n_s64(~v252 + v259);
              v262 = (v315 + 44 * v252);
              v151 = v331;
              v146 = v331 + 30188;
              v101 = v331 + 732;
              v153 = v331 + 69248;
              v147 = v331 + 66168;
              v148 = v331 + 67192;
              v54 = v306;
              do
              {
                v263 = vdupq_n_s64(v260);
                v264 = vmovn_s64(vcgeq_u64(v261, vorrq_s8(v263, xmmword_2990BEF90)));
                if (vuzp1_s16(v264, *v261.i8).u8[0])
                {
                  *(v262 - 22) = 0x40000000;
                }

                if (vuzp1_s16(v264, *&v261).i8[2])
                {
                  *(v262 - 11) = 0x40000000;
                }

                if (vuzp1_s16(*&v261, vmovn_s64(vcgeq_u64(v261, vorrq_s8(v263, xmmword_2990BF000)))).i32[1])
                {
                  *v262 = 0x40000000;
                  v262[11] = 0x40000000;
                }

                v260 += 4;
                v262 += 44;
              }

              while (((v102 + v334 - v252 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v260);
              v98 = v250 + v258;
              v254 = v332;
            }

            v265 = v243 + v326 + v253 + lzma_rc_prices[(v256 >> 4) ^ 0x7F] + lzma_rc_prices[(v257 >> 4) ^ 0x7F] + *(v330 + 1088 * v255 + 4 * (v334 - v220 - 3)) + lzma_rc_prices[v254[12] >> 4] + lzma_rc_prices[(*(v317 + 2 * v255 + 128) >> 4) ^ 0x7F];
            v266 = v54 + 44 * v259;
            v149 = v323;
            if (v265 < *(v266 + 16))
            {
              *(v266 + 16) = v265;
              *(v266 + 20) = v258;
              *(v266 + 24) = 0;
              *(v266 + 4) = 257;
              *(v266 + 8) = v102;
              *(v266 + 12) = v235 + 4;
            }
          }

          ++v220;
          ++v231;
        }

        while (v231 != v321);
      }

LABEL_361:
      v99 = v152 + 1;
      --v302;
      --v303;
      LODWORD(result) = ++v102;
      v100 = (v331 + 2924);
      if (v300 >= v98)
      {
LABEL_386:
        v291[945] = result;
        v281 = v54 + 44 * result;
        v283 = *(v281 + 20);
        v282 = *(v281 + 24);
        do
        {
          v284 = result;
          result = v283;
          v285 = v54 + 44 * v284;
          v286 = v54 + 44 * v283;
          if (*(v285 + 4))
          {
            *(v286 + 4) = 0;
            v283 = (v283 - 1);
            if (*(v285 + 5) == 1)
            {
              v287 = v54 + 44 * v283;
              *(v287 + 4) = 0;
              *(v287 + 20) = *(v285 + 8);
            }

            v288 = -1;
          }

          else
          {
            v283 = *(v286 + 20);
            v288 = *(v286 + 24);
          }

          *(v286 + 20) = v284;
          *(v286 + 24) = v282;
          v282 = v288;
        }

        while (result);
        v289 = *(v54 + 20);
        v290 = *(v54 + 24);
        v291[946] = v289;
        *v293 = v289;
        *v292 = v290;
        break;
      }
    }
  }

LABEL_70:
  v70 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t get_literal_price(uint64_t result, int a2, unsigned int a3, char a4, int a5, int a6)
{
  v6 = result + 1536 * ((a3 >> (8 - *(result + 2940))) + ((*(result + 2944) & a2) << *(result + 2940))) + 2948;
  v7 = a6 + 256;
  LODWORD(result) = 0;
  if (a4)
  {
    v8 = 256;
    do
    {
      v9 = v8 & (2 * a5);
      v10 = v8 + (v7 >> 8);
      v11 = (v7 & 0x80) == 0;
      v7 *= 2;
      v12 = v7 ^ (2 * a5);
      a5 *= 2;
      v13 = *(v6 + 2 * (v10 + v9));
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2032;
      }

      result = result + lzma_rc_prices[(v14 ^ v13) >> 4];
      v8 &= ~v12;
    }

    while (v7 < 0x10000);
  }

  else
  {
    do
    {
      v15 = v7 >> 1;
      if (v7)
      {
        v16 = 2032;
      }

      else
      {
        v16 = 0;
      }

      result = result + lzma_rc_prices[(v16 ^ *(v6 + 2 * v15)) >> 4];
      v7 >>= 1;
    }

    while (v15 != 1);
  }

  return result;
}

uint64_t lzma_file_info_decoder(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = lzma_strm_init(a1);
  if (!v8)
  {
    v8 = lzma_file_info_decoder_init(a1[7], a1[6], (a1 + 12), a2, a3, a4);
    if (v8)
    {
      lzma_end(a1);
    }

    else
    {
      v9 = a1[7];
      *(v9 + 96) = 1;
      *(v9 + 99) = 1;
    }
  }

  return v8;
}

uint64_t lzma_file_info_decoder_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (*(a1 + 16) != lzma_file_info_decoder_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = lzma_file_info_decoder_init;
  if (!a4)
  {
    return 11;
  }

  v12 = *a1;
  if (*a1)
  {
    v13 = *(v12 + 15);
  }

  else
  {
    v15 = lzma_alloc(0x2160uLL, a2);
    if (!v15)
    {
      return 5;
    }

    v12 = v15;
    v13 = 0;
    *a1 = v12;
    *(a1 + 24) = file_info_decode;
    *(a1 + 32) = file_info_decoder_end;
    *(a1 + 56) = file_info_decoder_memconfig;
    *(v12 + 4) = 0;
    *(v12 + 5) = -1;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 15) = 0;
    *(v12 + 17) = 0;
  }

  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = a6;
  lzma_index_end(v13, a2);
  *(v12 + 15) = 0;
  lzma_index_end(*(v12 + 17), a2);
  result = 0;
  *(v12 + 16) = 0;
  *(v12 + 17) = 0;
  *(v12 + 18) = a4;
  *(v12 + 19) = a3;
  if (a5 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a5;
  }

  *(v12 + 20) = v16;
  *(v12 + 21) = xmmword_2990BAE40;
  return result;
}

uint64_t file_info_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a4;
  v10 = *(a1 + 24) - *(a1 + 8);
  if (v10 >= a5 - *a4)
  {
    v11 = a5;
  }

  else
  {
    v11 = v10 + *a4;
  }

  v12 = a1 + 352;
  v13 = *a1;
  v14 = a1 + 351;
  while (1)
  {
    result = 11;
    if (v13 <= 3)
    {
      if (v13 > 1)
      {
        if (v13 != 2)
        {
LABEL_35:
          *(a1 + 8) += lzma_bufcpy(a3, a4, v11, v12, (a1 + 336), *(a1 + 344));
          v22 = *(a1 + 344);
          if (*(a1 + 336) < v22)
          {
            return 0;
          }

          *(a1 + 16) -= 12;
          v23 = v22 - 12;
          *(a1 + 344) = v23;
          LODWORD(result) = lzma_stream_footer_decode(a1 + 280, v12 + v23);
          if (result == 7)
          {
            result = 9;
          }

          else
          {
            result = result;
          }

          if (result)
          {
            return result;
          }

          v24 = *(a1 + 16);
          v25 = *(a1 + 288);
          if (v24 < v25 + 12)
          {
            return 9;
          }

          v26 = v24 - v25;
          *(a1 + 16) = v26;
          *a1 = 4;
          v27 = *(a1 + 344);
          v28 = v27 >= v25;
          v29 = v27 - v25;
          if (v28)
          {
            *(a1 + 336) = v29;
          }

          else
          {
            *(a1 + 336) = 0;
            *(a1 + 344) = 0;
            v30 = *(a1 + 8);
            v31 = *a4;
            if (v30 + v9 - *a4 > v26 || v30 + v11 - v31 < v26)
            {
              **(a1 + 152) = v26;
              *a4 = v11;
              *(a1 + 8) = v26;
              return 12;
            }

            *a4 = v26 - v30 + v31;
            *(a1 + 8) = v26;
          }

          goto LABEL_46;
        }
      }

      else
      {
        if (v13)
        {
          if (v13 != 1)
          {
            return result;
          }
        }

        else
        {
          if (*(a1 + 24) < 0xCuLL)
          {
            return 7;
          }

          *(a1 + 8) += lzma_bufcpy(a3, a4, v11, v12, (a1 + 336), *(a1 + 344));
          if (*(a1 + 336) < *(a1 + 344))
          {
            return 0;
          }

          result = lzma_stream_header_decode(a1 + 168, v12);
          if (result)
          {
            return result;
          }

          v16 = *(a1 + 24);
          if ((v16 & 0x8000000000000003) != 0)
          {
            return 9;
          }

          *(a1 + 16) = v16;
        }

        *a1 = 2;
        result = reverse_seek(a1, v9, a4, v11);
        if (result)
        {
          return result;
        }
      }

      *(a1 + 8) += lzma_bufcpy(a3, a4, v11, v12, (a1 + 336), *(a1 + 344));
      v17 = *(a1 + 344);
      if (*(a1 + 336) < v17)
      {
        return 0;
      }

      v18 = 0;
      if (v17)
      {
        v19 = v14;
        while (!*(v19 + v17))
        {
          --v19;
          if (v17 == ++v18)
          {
            v18 = *(a1 + 344);
            break;
          }
        }
      }

      v20 = *(a1 + 128) + v18;
      *(a1 + 128) = v20;
      *(a1 + 16) -= v18;
      v21 = v17 - v18;
      if (!v21)
      {
        v13 = 1;
        goto LABEL_84;
      }

      if ((v20 & 3) != 0)
      {
        return 9;
      }

      *a1 = 3;
      *(a1 + 336) = v21;
      *(a1 + 344) = v21;
      if (v21 <= 0xB)
      {
        result = reverse_seek(a1, v9, a4, v11);
        if (result)
        {
          return result;
        }
      }

      goto LABEL_35;
    }

    if (v13 <= 5)
    {
      break;
    }

    if (v13 == 6)
    {
      goto LABEL_69;
    }

    if (v13 != 7)
    {
      return result;
    }

LABEL_75:
    result = lzma_stream_flags_compare(a1 + 224, a1 + 280);
    if (result)
    {
      return result;
    }

    lzma_index_stream_flags(*(a1 + 120), a1 + 280);
    if (v51 || lzma_index_stream_padding(*(a1 + 120), *(a1 + 128)))
    {
      return 11;
    }

    *(a1 + 128) = 0;
    v52 = *(a1 + 136);
    if (v52)
    {
      result = lzma_index_cat(*(a1 + 120), v52, a2);
      if (result)
      {
        return result;
      }
    }

    v53 = *(a1 + 120);
    *(a1 + 136) = v53;
    *(a1 + 120) = 0;
    if (!*(a1 + 16))
    {
      **(a1 + 144) = v53;
      *(a1 + 136) = 0;
      *a4 = v11;
      return 1;
    }

    if (*(a1 + 344))
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

LABEL_84:
    *a1 = v13;
  }

  if (v13 != 4)
  {
    goto LABEL_52;
  }

LABEL_46:
  v32 = *(a1 + 136);
  if (v32)
  {
    v32 = lzma_index_memused(v32);
    v33 = *(a1 + 160);
    if (v32 > v33)
    {
      return 11;
    }
  }

  else
  {
    v33 = *(a1 + 160);
  }

  result = lzma_index_decoder_init(a1 + 32, a2, (a1 + 120), v33 - v32);
  if (result)
  {
    return result;
  }

  *(a1 + 112) = *(a1 + 288);
  *a1 = 5;
LABEL_52:
  v34 = *(a1 + 344);
  if (v34)
  {
    v35 = *(a1 + 336);
    LODWORD(result) = (*(a1 + 56))(*(a1 + 32), a2, v12, a1 + 336, v34, 0, 0, 0, 0);
    v36 = v35 - *(a1 + 336) + *(a1 + 112);
    *(a1 + 112) = v36;
  }

  else
  {
    v37 = *a4;
    v38 = *(a1 + 112);
    if (v11 - *a4 <= v38)
    {
      v39 = v11;
    }

    else
    {
      v39 = v38 + *a4;
    }

    LODWORD(result) = (*(a1 + 56))(*(a1 + 32), a2, a3, a4, v39, 0, 0, 0, 0);
    v40 = *a4;
    v36 = v37 - *a4 + *(a1 + 112);
    *(a1 + 112) = v36;
    *(a1 + 8) += v40 - v37;
  }

  if (result == 1)
  {
    if (v36)
    {
      return 9;
    }

    v41 = lzma_index_total_size(*(a1 + 120)) + 12;
    v42 = *(a1 + 16);
    v28 = v42 >= v41;
    v43 = v42 - v41;
    if (!v28)
    {
      return 9;
    }

    *(a1 + 16) = v43;
    if (!v43)
    {
      v44 = *(a1 + 184);
      *(a1 + 224) = *(a1 + 168);
      *(a1 + 240) = v44;
      *(a1 + 256) = *(a1 + 200);
      *(a1 + 272) = *(a1 + 216);
      v13 = 7;
      goto LABEL_84;
    }

    *a1 = 6;
    *(a1 + 16) = v43 + 12;
    v45 = *(a1 + 344);
    if (v45 && (v46 = v45 - *(a1 + 288), v28 = v46 >= v41, v47 = v46 - v41, v28))
    {
      v48 = v47 + 12;
      *(a1 + 336) = v48;
      *(a1 + 344) = v48;
    }

    else
    {
      result = reverse_seek(a1, v9, a4, v11);
      if (result)
      {
        return result;
      }
    }

LABEL_69:
    *(a1 + 8) += lzma_bufcpy(a3, a4, v11, v12, (a1 + 336), *(a1 + 344));
    v49 = *(a1 + 344);
    if (*(a1 + 336) < v49)
    {
      return 0;
    }

    *(a1 + 16) -= 12;
    v50 = v49 - 12;
    *(a1 + 336) = v50;
    *(a1 + 344) = v50;
    LODWORD(result) = lzma_stream_header_decode(a1 + 224, v12 + v50);
    if (result == 7)
    {
      result = 9;
    }

    else
    {
      result = result;
    }

    if (result)
    {
      return result;
    }

    *a1 = 7;
    goto LABEL_75;
  }

  if (v36)
  {
    v54 = 0;
  }

  else
  {
    v54 = 9;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v54;
  }
}

void file_info_decoder_end(uint64_t **a1, uint64_t a2)
{
  lzma_next_end((a1 + 4), a2);
  lzma_index_end(a1[15], a2);
  lzma_index_end(a1[17], a2);

  lzma_free(a1, a2);
}

uint64_t file_info_decoder_memconfig(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v15 = 0;
  v8 = *(a1 + 136);
  if (v8)
  {
    v9 = lzma_index_memused(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    v11 = lzma_index_memused(v10);
    v15 = v11;
  }

  else if (*a1 == 5)
  {
    v14 = 0;
    if ((*(a1 + 88))(*(a1 + 32), &v15, &v14, 0))
    {
      return 11;
    }

    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  *a2 = v11 + v9;
  if (!(v11 + v9))
  {
    *a2 = lzma_index_memusage(1, 0);
  }

  *a3 = *(a1 + 160);
  if (!a4)
  {
    return 0;
  }

  if (*a2 > a4)
  {
    return 6;
  }

  if (!*(a1 + 120) && *a1 == 5)
  {
    v13 = 0;
    v14 = 0;
    if ((*(a1 + 88))(*(a1 + 32), &v14, &v13, a4 - v9))
    {
      return 11;
    }
  }

  result = 0;
  *(a1 + 160) = a4;
  return result;
}

uint64_t reverse_seek(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 < 0x18)
  {
    return 9;
  }

  v6 = v4 - 12;
  if (v4 - 12 >= 0x2000)
  {
    v6 = 0x2000;
  }

  *(a1 + 336) = 0;
  *(a1 + 344) = v6;
  v7 = v4 - v6;
  v8 = *(a1 + 8);
  v9 = *a3;
  if (v8 + a2 - *a3 <= v7 && v8 + a4 - v9 >= v7)
  {
    v5 = 0;
    a4 = v7 - v8 + v9;
  }

  else
  {
    **(a1 + 152) = v7;
    v5 = 12;
  }

  *a3 = a4;
  *(a1 + 8) = v7;
  return v5;
}

uint64_t lzma_lzma_decoder_create(void *a1, uint64_t a2, unsigned int *a3, void *a4)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v7 = lzma_alloc(0x6EC0uLL, a2);
  *a1 = v7;
  if (v7)
  {
    a1[1] = lzma_decode;
    a1[2] = lzma_decoder_reset;
    a1[3] = lzma_decoder_uncompressed;
LABEL_4:
    result = 0;
    v9 = *(a3 + 1);
    *a4 = *a3;
    a4[1] = v9;
    a4[2] = a3[4];
    return result;
  }

  return 5;
}

double lzma_decode(uint64_t a1, char **a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a1;
  v400 = a1 + 24576;
  v6 = *(a1 + 28276);
  if (v6)
  {
    v7 = 0;
    v8 = *a4;
    v9 = a3 + *a4;
    v10 = *a4 - a5;
    v11 = -v6;
    v12 = v6 - 1;
    while (v10 + v7 && (v11 + v7 != -5 || !*(v9 + v7)))
    {
      v13 = *(v9 + v7) | (*(a1 + 28272) << 8);
      *(a1 + 28272) = v13;
      *a4 = v8 + v7 + 1;
      *(a1 + 28276) = v12;
      ++v7;
      --v12;
      if (!(v11 + v7))
      {
        v382 = a4;
        v14 = v8 + v7;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v13 = *(a1 + 28272);
    v382 = a4;
    v14 = *a4;
LABEL_9:
    v16 = a2[1];
    v15 = a2[2];
    v17 = v16;
    v18 = a2[3];
    v19 = *(a1 + 28268);
    v20 = *(a1 + 28280);
    v21 = *(a1 + 28284);
    v22 = *(a1 + 28288);
    v23 = *(a1 + 28292);
    v24 = *(a1 + 28296);
    v25 = *(a1 + 28328);
    v26 = *(a1 + 28336);
    v27 = *(a1 + 28340);
    v28 = *(a1 + 28344);
    v29 = *(a1 + 28348);
    v30 = v5[3539];
    v380 = v30 == -1;
    v31 = v30 > v18 - v16 || v30 == -1;
    v32 = v30 + v16;
    if (!v31)
    {
      v18 = v32;
    }

    v398 = v31;
    v401 = v18;
    v399 = *a2;
    v396 = a2[4];
    v385 = *(v400 + 3728);
    v386 = *(v400 + 3732);
    v394 = a2[1];
    v397 = *(v400 + 3724);
    v33 = v397 & v16;
    v34 = v25;
    v384 = v5;
    switch(*(v400 + 3748))
    {
      case 0:
      case 1:
        goto LABEL_18;
      case 2:
        goto LABEL_30;
      case 3:
        goto LABEL_36;
      case 4:
        goto LABEL_42;
      case 5:
        goto LABEL_48;
      case 6:
        goto LABEL_54;
      case 7:
        goto LABEL_60;
      case 8:
        goto LABEL_66;
      case 9:
        goto LABEL_72;
      case 0xA:
        goto LABEL_505;
      case 0xB:
        goto LABEL_520;
      case 0xC:
        goto LABEL_535;
      case 0xD:
        goto LABEL_550;
      case 0xE:
        goto LABEL_565;
      case 0xF:
        goto LABEL_580;
      case 0x10:
        goto LABEL_595;
      case 0x11:
        goto LABEL_610;
      case 0x12:
        goto LABEL_617;
      case 0x13:
        goto LABEL_79;
      case 0x14:
        goto LABEL_87;
      case 0x15:
        goto LABEL_92;
      case 0x16:
        goto LABEL_191;
      case 0x17:
        goto LABEL_197;
      case 0x18:
        goto LABEL_205;
      case 0x19:
        goto LABEL_210;
      case 0x1A:
        goto LABEL_216;
      case 0x1B:
        goto LABEL_222;
      case 0x1C:
        goto LABEL_230;
      case 0x1D:
        goto LABEL_236;
      case 0x1E:
        goto LABEL_242;
      case 0x1F:
        goto LABEL_248;
      case 0x20:
        goto LABEL_254;
      case 0x21:
        goto LABEL_260;
      case 0x22:
        goto LABEL_290;
      case 0x23:
        goto LABEL_296;
      case 0x24:
        goto LABEL_307;
      case 0x25:
        goto LABEL_313;
      case 0x26:
        goto LABEL_319;
      case 0x27:
        goto LABEL_325;
      case 0x28:
        goto LABEL_331;
      case 0x29:
        goto LABEL_337;
      case 0x2A:
        goto LABEL_347;
      case 0x2B:
        goto LABEL_456;
      case 0x2C:
        goto LABEL_461;
      case 0x2D:
        goto LABEL_467;
      case 0x2E:
        goto LABEL_473;
      case 0x2F:
        goto LABEL_479;
      case 0x30:
        goto LABEL_629;
      case 0x31:
        goto LABEL_99;
      case 0x32:
        goto LABEL_112;
      case 0x33:
        goto LABEL_104;
      case 0x34:
        goto LABEL_119;
      case 0x35:
        goto LABEL_126;
      case 0x36:
        goto LABEL_138;
      case 0x37:
        goto LABEL_143;
      case 0x38:
        goto LABEL_149;
      case 0x39:
        goto LABEL_155;
      case 0x3A:
        goto LABEL_168;
      case 0x3B:
        goto LABEL_173;
      case 0x3C:
        goto LABEL_415;
      case 0x3D:
        goto LABEL_421;
      case 0x3E:
        goto LABEL_179;
      case 0x3F:
        goto LABEL_185;
      case 0x40:
        goto LABEL_266;
      case 0x41:
        goto LABEL_272;
      case 0x42:
        goto LABEL_278;
      case 0x43:
        goto LABEL_284;
      case 0x44:
        goto LABEL_394;
      case 0x45:
        goto LABEL_400;
      case 0x46:
        goto LABEL_487;
      default:
        v35 = v29;
        v36 = 0;
        v34 = v25;
        goto LABEL_640;
    }

    while (1)
    {
LABEL_487:
      v305 = a3;
      v306 = v21;
      v307 = a5;
      v37 = v17;
      if (v401 - v17 >= v29)
      {
        v308 = v29;
      }

      else
      {
        v308 = (v401 - v17);
      }

      v29 -= v308;
      v309 = v306;
      if (v308 <= v306)
      {
        v395 = v306;
        v393 = v15;
        v391 = v24;
        v392 = v20;
        v389 = v28;
        v390 = v23;
        v388 = v34;
        v387 = v29;
        if (v37 <= v306)
        {
          v315 = v37 + ~v306;
          v316 = -v315;
          v317 = &v399[v37];
          v318 = &v399[v315 + v396];
          v313 = v37;
          if (v308 <= -v315)
          {
            memmove(v317, v318, v308);
          }

          else
          {
            v383 = v37 + ~v306;
            memmove(v317, v318, -v315);
            v313 += v316;
            v308 = (v308 + v383);
            memcpy(&v399[v313], v399, v308);
          }

          v5 = v384;
        }

        else
        {
          v313 = v37;
          memcpy(&v399[v37], &v399[v37 + ~v306], v308);
        }

        v37 = v308 + v313;
        v15 = v393;
        v16 = v394;
        v310 = v391;
        v20 = v392;
        v28 = v389;
        v23 = v390;
        v22 = v22;
        v34 = v388;
        v29 = v387;
      }

      else
      {
        v310 = v24;
        v395 = v306;
        v311 = &v399[-v306];
        v16 = v394;
        do
        {
          if (v37 <= v309)
          {
            v312 = v396;
          }

          else
          {
            v312 = 0;
          }

          v399[v37] = v311[v37 - 1 + v312];
          ++v37;
          LODWORD(v308) = v308 - 1;
        }

        while (v308);
      }

      if (v15 <= v37)
      {
        v15 = v37;
      }

      if (v29)
      {
        break;
      }

      a5 = v307;
      v21 = v395;
      v93 = v37;
      a3 = v305;
      v24 = v310;
      while (1)
      {
        while (1)
        {
          v17 = v93;
          v33 = v397 & v93;
LABEL_18:
          v37 = v401;
          v38 = v398;
          if (v17 != v401)
          {
            v38 = 1;
          }

          if ((v38 & 1) == 0)
          {
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                *(v400 + 3748) = 0;
                v14 = a5;
                goto LABEL_659;
              }

              v19 <<= 8;
              v377 = *(a3 + v14++);
              v13 = v377 | (v13 << 8);
            }

            if (!v13)
            {
              v35 = v29;
              v36 = 1;
              goto LABEL_659;
            }

            v380 = 1;
            if (*(v400 + 3744) != 1)
            {
              v35 = v29;
              v36 = 9;
              goto LABEL_659;
            }
          }

          if (HIBYTE(v19))
          {
            v39 = v19;
          }

          else
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 1;
              goto LABEL_637;
            }

            v39 = v19 << 8;
            v40 = *(a3 + v14++);
            v13 = v40 | (v13 << 8);
          }

          v41 = &v5[4 * v20 + 3072] + v33;
          v42 = *v41;
          v19 = (v39 >> 11) * v42;
          v43 = v13 - v19;
          if (v13 >= v19)
          {
            break;
          }

          *v41 = v42 + ((2048 - v42) >> 5);
          if (v17)
          {
            v44 = 0;
          }

          else
          {
            v44 = v396;
          }

          v34 = &v5[192 * ((v17 & v386) << v385) + 192 * (v399[v17 - 1 + v44] >> (8 - v385))];
          v26 = 1;
          if (v20 > 6)
          {
            if (v17 <= v21)
            {
              v319 = v396;
            }

            else
            {
              v319 = 0;
            }

            v29 = 2 * v399[v17 + ~v21 + v319];
            v28 = 256;
LABEL_505:
            v320 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 10;
                goto LABEL_637;
              }

              v19 <<= 8;
              v321 = *(a3 + v14++);
              v13 = v321 | (v13 << 8);
            }

            v322 = *(v34 + 2 * v320);
            v323 = (v19 >> 11) * v322;
            v324 = v322 - (v322 >> 5);
            v325 = v322 + ((2048 - v322) >> 5);
            v326 = v13 >= v323;
            if (v13 < v323)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v325) = v324;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v323)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v323)
            {
              v13 -= v323;
            }

            if (v326)
            {
              v19 -= v323;
            }

            else
            {
              v19 = v323;
            }

            *(v34 + 2 * v320) = v325;
            v29 *= 2;
LABEL_520:
            v327 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 11;
                goto LABEL_637;
              }

              v19 <<= 8;
              v328 = *(a3 + v14++);
              v13 = v328 | (v13 << 8);
            }

            v329 = *(v34 + 2 * v327);
            v330 = (v19 >> 11) * v329;
            v331 = v329 - (v329 >> 5);
            v332 = v329 + ((2048 - v329) >> 5);
            v333 = v13 >= v330;
            if (v13 < v330)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v332) = v331;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v330)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v330)
            {
              v13 -= v330;
            }

            if (v333)
            {
              v19 -= v330;
            }

            else
            {
              v19 = v330;
            }

            *(v34 + 2 * v327) = v332;
            v29 *= 2;
LABEL_535:
            v334 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 12;
                goto LABEL_637;
              }

              v19 <<= 8;
              v335 = *(a3 + v14++);
              v13 = v335 | (v13 << 8);
            }

            v336 = *(v34 + 2 * v334);
            v337 = (v19 >> 11) * v336;
            v338 = v336 - (v336 >> 5);
            v339 = v336 + ((2048 - v336) >> 5);
            v340 = v13 >= v337;
            if (v13 < v337)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v339) = v338;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v337)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v337)
            {
              v13 -= v337;
            }

            if (v340)
            {
              v19 -= v337;
            }

            else
            {
              v19 = v337;
            }

            *(v34 + 2 * v334) = v339;
            v29 *= 2;
LABEL_550:
            v341 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 13;
                goto LABEL_637;
              }

              v19 <<= 8;
              v342 = *(a3 + v14++);
              v13 = v342 | (v13 << 8);
            }

            v343 = *(v34 + 2 * v341);
            v344 = (v19 >> 11) * v343;
            v345 = v343 - (v343 >> 5);
            v346 = v343 + ((2048 - v343) >> 5);
            v347 = v13 >= v344;
            if (v13 < v344)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v346) = v345;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v344)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v344)
            {
              v13 -= v344;
            }

            if (v347)
            {
              v19 -= v344;
            }

            else
            {
              v19 = v344;
            }

            *(v34 + 2 * v341) = v346;
            v29 *= 2;
LABEL_565:
            v348 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 14;
                goto LABEL_637;
              }

              v19 <<= 8;
              v349 = *(a3 + v14++);
              v13 = v349 | (v13 << 8);
            }

            v350 = *(v34 + 2 * v348);
            v351 = (v19 >> 11) * v350;
            v352 = v350 - (v350 >> 5);
            v353 = v350 + ((2048 - v350) >> 5);
            v354 = v13 >= v351;
            if (v13 < v351)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v353) = v352;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v351)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v351)
            {
              v13 -= v351;
            }

            if (v354)
            {
              v19 -= v351;
            }

            else
            {
              v19 = v351;
            }

            *(v34 + 2 * v348) = v353;
            v29 *= 2;
LABEL_580:
            v355 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 15;
                goto LABEL_637;
              }

              v19 <<= 8;
              v356 = *(a3 + v14++);
              v13 = v356 | (v13 << 8);
            }

            v357 = *(v34 + 2 * v355);
            v358 = (v19 >> 11) * v357;
            v359 = v357 - (v357 >> 5);
            v360 = v357 + ((2048 - v357) >> 5);
            v361 = v13 >= v358;
            if (v13 < v358)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v360) = v359;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v358)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v358)
            {
              v13 -= v358;
            }

            if (v361)
            {
              v19 -= v358;
            }

            else
            {
              v19 = v358;
            }

            *(v34 + 2 * v355) = v360;
            v29 *= 2;
LABEL_595:
            v362 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 16;
                goto LABEL_637;
              }

              v19 <<= 8;
              v363 = *(a3 + v14++);
              v13 = v363 | (v13 << 8);
            }

            v364 = *(v34 + 2 * v362);
            v365 = (v19 >> 11) * v364;
            v366 = v364 - (v364 >> 5);
            v367 = v364 + ((2048 - v364) >> 5);
            v368 = v13 >= v365;
            if (v13 < v365)
            {
              v26 *= 2;
            }

            else
            {
              LOWORD(v367) = v366;
              v26 = (2 * v26) | 1;
            }

            if (v13 < v365)
            {
              v28 ^= v28 & v29;
            }

            else
            {
              v28 &= v29;
            }

            if (v13 >= v365)
            {
              v13 -= v365;
            }

            if (v368)
            {
              v19 -= v365;
            }

            else
            {
              v19 = v365;
            }

            *(v34 + 2 * v362) = v367;
            v29 *= 2;
LABEL_610:
            v369 = v28 + v26 + (v28 & v29);
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 17;
                goto LABEL_637;
              }

              v19 <<= 8;
              v370 = *(a3 + v14++);
              v13 = v370 | (v13 << 8);
            }

            v371 = *(v34 + 2 * v369);
            v372 = (v19 >> 11) * v371;
            v26 *= 2;
            if (v13 >= v372)
            {
              v19 -= v372;
              *(v34 + 2 * v369) = v371 - (v371 >> 5);
              v26 |= 1u;
              v28 &= v29;
              v13 -= v372;
            }

            else
            {
              *(v34 + 2 * v369) = v371 + ((2048 - v371) >> 5);
              v28 ^= v28 & v29;
              v19 = (v19 >> 11) * v371;
            }
          }

          else
          {
LABEL_30:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 2;
                goto LABEL_637;
              }

              v19 <<= 8;
              v45 = *(a3 + v14++);
              v13 = v45 | (v13 << 8);
            }

            v46 = *(v34 + 2 * v26);
            v47 = (v19 >> 11) * v46;
            if (v13 >= v47)
            {
              v19 -= v47;
              *(v34 + 2 * v26) = v46 - (v46 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v47;
            }

            else
            {
              *(v34 + 2 * v26) = v46 + ((2048 - v46) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v46;
            }

LABEL_36:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 3;
                goto LABEL_637;
              }

              v19 <<= 8;
              v48 = *(a3 + v14++);
              v13 = v48 | (v13 << 8);
            }

            v49 = *(v34 + 2 * v26);
            v50 = (v19 >> 11) * v49;
            if (v13 >= v50)
            {
              v19 -= v50;
              *(v34 + 2 * v26) = v49 - (v49 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v50;
            }

            else
            {
              *(v34 + 2 * v26) = v49 + ((2048 - v49) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v49;
            }

LABEL_42:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 4;
                goto LABEL_637;
              }

              v19 <<= 8;
              v51 = *(a3 + v14++);
              v13 = v51 | (v13 << 8);
            }

            v52 = *(v34 + 2 * v26);
            v53 = (v19 >> 11) * v52;
            if (v13 >= v53)
            {
              v19 -= v53;
              *(v34 + 2 * v26) = v52 - (v52 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v53;
            }

            else
            {
              *(v34 + 2 * v26) = v52 + ((2048 - v52) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v52;
            }

LABEL_48:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 5;
                goto LABEL_637;
              }

              v19 <<= 8;
              v54 = *(a3 + v14++);
              v13 = v54 | (v13 << 8);
            }

            v55 = *(v34 + 2 * v26);
            v56 = (v19 >> 11) * v55;
            if (v13 >= v56)
            {
              v19 -= v56;
              *(v34 + 2 * v26) = v55 - (v55 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v56;
            }

            else
            {
              *(v34 + 2 * v26) = v55 + ((2048 - v55) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v55;
            }

LABEL_54:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 6;
                goto LABEL_637;
              }

              v19 <<= 8;
              v57 = *(a3 + v14++);
              v13 = v57 | (v13 << 8);
            }

            v58 = *(v34 + 2 * v26);
            v59 = (v19 >> 11) * v58;
            if (v13 >= v59)
            {
              v19 -= v59;
              *(v34 + 2 * v26) = v58 - (v58 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v59;
            }

            else
            {
              *(v34 + 2 * v26) = v58 + ((2048 - v58) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v58;
            }

LABEL_60:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 7;
                goto LABEL_637;
              }

              v19 <<= 8;
              v60 = *(a3 + v14++);
              v13 = v60 | (v13 << 8);
            }

            v61 = *(v34 + 2 * v26);
            v62 = (v19 >> 11) * v61;
            if (v13 >= v62)
            {
              v19 -= v62;
              *(v34 + 2 * v26) = v61 - (v61 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v62;
            }

            else
            {
              *(v34 + 2 * v26) = v61 + ((2048 - v61) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v61;
            }

LABEL_66:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 8;
                goto LABEL_637;
              }

              v19 <<= 8;
              v63 = *(a3 + v14++);
              v13 = v63 | (v13 << 8);
            }

            v64 = *(v34 + 2 * v26);
            v65 = (v19 >> 11) * v64;
            if (v13 >= v65)
            {
              v19 -= v65;
              *(v34 + 2 * v26) = v64 - (v64 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v65;
            }

            else
            {
              *(v34 + 2 * v26) = v64 + ((2048 - v64) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v64;
            }

LABEL_72:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 9;
                goto LABEL_637;
              }

              v19 <<= 8;
              v66 = *(a3 + v14++);
              v13 = v66 | (v13 << 8);
            }

            v67 = *(v34 + 2 * v26);
            v68 = (v19 >> 11) * v67;
            if (v13 >= v68)
            {
              v19 -= v68;
              *(v34 + 2 * v26) = v67 - (v67 >> 5);
              v26 = (2 * v26) | 1;
              v13 -= v68;
            }

            else
            {
              *(v34 + 2 * v26) = v67 + ((2048 - v67) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v67;
            }
          }

          v20 = lzma_decode_next_state[v20];
LABEL_617:
          v37 = v401;
          if (v17 == v401)
          {
            v35 = v29;
            v36 = 0;
            v378 = 18;
            v379 = v400;
            goto LABEL_658;
          }

          v93 = v17 + 1;
          v399[v17] = v26;
          if (v17 + 1 > v15)
          {
            v15 = v17 + 1;
          }
        }

        v19 = v39 - v19;
        *v41 -= *v41 >> 5;
        v13 = v43;
LABEL_79:
        v69 = v34;
        v70 = v23;
        v23 = v22;
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            *(v400 + 3748) = 19;
            LODWORD(v23) = v70;
            v14 = a5;
LABEL_725:
            v34 = v69;
            goto LABEL_639;
          }

          v19 <<= 8;
          v71 = *(a3 + v14++);
          v13 = v71 | (v13 << 8);
        }

        v72 = v5 + 3120;
        v73 = *(v5 + v20 + 12480);
        v74 = (v19 >> 11) * v73;
        v75 = v13 - v74;
        if (v13 < v74)
        {
          *(v72 + v20) = v73 + ((2048 - v73) >> 5);
          if (v20 >= 7)
          {
            v20 = 10;
          }

          else
          {
            v20 = 7;
          }

          v26 = 1;
          v22 = v21;
          v24 = v70;
          v19 = (v19 >> 11) * v73;
          v34 = v69;
LABEL_87:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 20;
              goto LABEL_637;
            }

            v19 <<= 8;
            v76 = *(a3 + v14++);
            v13 = v76 | (v13 << 8);
          }

          v77 = *(v400 + 1636);
          v78 = (v19 >> 11) * v77;
          if (v13 >= v78)
          {
            v19 -= v78;
            *(v400 + 1636) -= *(v400 + 1636) >> 5;
            v13 -= v78;
LABEL_205:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 24;
                goto LABEL_637;
              }

              v147 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v147 | (v13 << 8);
            }

            v148 = *(v400 + 1638);
            v149 = (v19 >> 11) * v148;
            if (v13 >= v149)
            {
              v19 -= v149;
              *(v400 + 1638) -= *(v400 + 1638) >> 5;
              v13 -= v149;
LABEL_230:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 28;
                  goto LABEL_637;
                }

                v165 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v165 | (v13 << 8);
              }

              v166 = v5 + 3341;
              v167 = *(v5 + v26 + 13364);
              v168 = (v19 >> 11) * v167;
              if (v13 >= v168)
              {
                v19 -= v168;
                *(v166 + v26) = v167 - (v167 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v168;
              }

              else
              {
                *(v166 + v26) = v167 + ((2048 - v167) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v167;
              }

LABEL_236:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 29;
                  goto LABEL_637;
                }

                v169 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v169 | (v13 << 8);
              }

              v170 = v5 + 3341;
              v171 = *(v5 + v26 + 13364);
              v172 = (v19 >> 11) * v171;
              if (v13 >= v172)
              {
                v19 -= v172;
                *(v170 + v26) = v171 - (v171 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v172;
              }

              else
              {
                *(v170 + v26) = v171 + ((2048 - v171) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v171;
              }

LABEL_242:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 30;
                  goto LABEL_637;
                }

                v173 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v173 | (v13 << 8);
              }

              v174 = v5 + 3341;
              v175 = *(v5 + v26 + 13364);
              v176 = (v19 >> 11) * v175;
              if (v13 >= v176)
              {
                v19 -= v176;
                *(v174 + v26) = v175 - (v175 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v176;
              }

              else
              {
                *(v174 + v26) = v175 + ((2048 - v175) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v175;
              }

LABEL_248:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 31;
                  goto LABEL_637;
                }

                v177 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v177 | (v13 << 8);
              }

              v178 = v5 + 3341;
              v179 = *(v5 + v26 + 13364);
              v180 = (v19 >> 11) * v179;
              if (v13 >= v180)
              {
                v19 -= v180;
                *(v178 + v26) = v179 - (v179 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v180;
              }

              else
              {
                *(v178 + v26) = v179 + ((2048 - v179) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v179;
              }

LABEL_254:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 32;
                  goto LABEL_637;
                }

                v181 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v181 | (v13 << 8);
              }

              v182 = v5 + 3341;
              v183 = *(v5 + v26 + 13364);
              v184 = (v19 >> 11) * v183;
              if (v13 >= v184)
              {
                v19 -= v184;
                *(v182 + v26) = v183 - (v183 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v184;
              }

              else
              {
                *(v182 + v26) = v183 + ((2048 - v183) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v183;
              }

LABEL_260:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 33;
                  goto LABEL_637;
                }

                v185 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v185 | (v13 << 8);
              }

              v186 = v5 + 3341;
              v187 = *(v5 + v26 + 13364);
              v188 = (v19 >> 11) * v187;
              if (v13 >= v188)
              {
                v19 -= v188;
                *(v186 + v26) = v187 - (v187 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v188;
              }

              else
              {
                *(v186 + v26) = v187 + ((2048 - v187) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v187;
              }

LABEL_290:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 34;
                  goto LABEL_637;
                }

                v205 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v205 | (v13 << 8);
              }

              v206 = v5 + 3341;
              v207 = *(v5 + v26 + 13364);
              v208 = (v19 >> 11) * v207;
              if (v13 >= v208)
              {
                v19 -= v208;
                *(v206 + v26) = v207 - (v207 >> 5);
                v26 = (2 * v26) | 1;
                v13 -= v208;
              }

              else
              {
                *(v206 + v26) = v207 + ((2048 - v207) >> 5);
                v26 *= 2;
                v19 = (v19 >> 11) * v207;
              }

LABEL_296:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 35;
                  goto LABEL_637;
                }

                v209 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v209 | (v13 << 8);
              }

              v210 = *(v5 + v26 + 13364);
              v211 = (v19 >> 11) * v210;
              v212 = 2 * v26;
              v213 = v210 - (v210 >> 5);
              v214 = v210 + ((2048 - v210) >> 5);
              if (v13 < v211)
              {
                v19 = v211;
              }

              else
              {
                LOWORD(v214) = v213;
                v212 = (2 * v26) | 1;
                v13 -= v211;
                v19 -= v211;
              }

              *(v5 + v26 + 13364) = v214;
              v29 = v212 - 238;
            }

            else
            {
              *(v400 + 1638) = v148 + ((2048 - v148) >> 5);
              v19 = (v19 >> 11) * v148;
LABEL_210:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 25;
                  goto LABEL_637;
                }

                v150 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v150 | (v13 << 8);
              }

              v151 = &v5[2 * v33] + 2 * v26;
              v152 = *(v151 + 26472);
              v153 = (v19 >> 11) * v152;
              v26 *= 2;
              if (v13 >= v153)
              {
                v19 -= v153;
                *(v151 + 26472) -= *(v151 + 26472) >> 5;
                v26 |= 1u;
                v13 -= v153;
              }

              else
              {
                *(v151 + 26472) = v152 + ((2048 - v152) >> 5);
                v19 = (v19 >> 11) * v152;
              }

LABEL_216:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 26;
                  goto LABEL_637;
                }

                v154 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v154 | (v13 << 8);
              }

              v155 = &v5[2 * v33] + 2 * v26;
              v156 = *(v155 + 26472);
              v157 = (v19 >> 11) * v156;
              v26 *= 2;
              if (v13 >= v157)
              {
                v19 -= v157;
                *(v155 + 26472) -= *(v155 + 26472) >> 5;
                v26 |= 1u;
                v13 -= v157;
              }

              else
              {
                *(v155 + 26472) = v156 + ((2048 - v156) >> 5);
                v19 = (v19 >> 11) * v156;
              }

LABEL_222:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 27;
                  goto LABEL_637;
                }

                v158 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v158 | (v13 << 8);
              }

              v159 = &v5[2 * v33] + 2 * v26;
              v160 = *(v159 + 26472);
              v161 = (v19 >> 11) * v160;
              v162 = 2 * v26;
              v163 = v160 - (v160 >> 5);
              v164 = v160 + ((2048 - v160) >> 5);
              if (v13 < v161)
              {
                v19 = v161;
              }

              else
              {
                LOWORD(v164) = v163;
                v162 = (2 * v26) | 1;
                v13 -= v161;
                v19 -= v161;
              }

              *(v159 + 26472) = v164;
              v29 = v162 + 2;
            }
          }

          else
          {
            *(v400 + 1636) = v77 + ((2048 - v77) >> 5);
            v19 = (v19 >> 11) * v77;
LABEL_92:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 21;
                goto LABEL_637;
              }

              v19 <<= 8;
              v79 = *(a3 + v14++);
              v13 = v79 | (v13 << 8);
            }

            v80 = &v5[2 * v33] + 2 * v26;
            v81 = *(v80 + 26216);
            v82 = (v19 >> 11) * v81;
            v26 *= 2;
            if (v13 >= v82)
            {
              v19 -= v82;
              *(v80 + 26216) -= *(v80 + 26216) >> 5;
              v26 |= 1u;
              v13 -= v82;
            }

            else
            {
              *(v80 + 26216) = v81 + ((2048 - v81) >> 5);
              v19 = (v19 >> 11) * v81;
            }

LABEL_191:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 22;
                goto LABEL_637;
              }

              v136 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v136 | (v13 << 8);
            }

            v137 = &v5[2 * v33] + 2 * v26;
            v138 = *(v137 + 26216);
            v139 = (v19 >> 11) * v138;
            v26 *= 2;
            if (v13 >= v139)
            {
              v19 -= v139;
              *(v137 + 26216) -= *(v137 + 26216) >> 5;
              v26 |= 1u;
              v13 -= v139;
            }

            else
            {
              *(v137 + 26216) = v138 + ((2048 - v138) >> 5);
              v19 = (v19 >> 11) * v138;
            }

LABEL_197:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 23;
                goto LABEL_637;
              }

              v140 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v140 | (v13 << 8);
            }

            v141 = &v5[2 * v33] + 2 * v26;
            v142 = *(v141 + 26216);
            v143 = (v19 >> 11) * v142;
            v144 = 2 * v26;
            v145 = v142 - (v142 >> 5);
            v146 = v142 + ((2048 - v142) >> 5);
            if (v13 < v143)
            {
              v19 = v143;
            }

            else
            {
              LOWORD(v146) = v145;
              v144 = (2 * v26) | 1;
              v13 -= v143;
              v19 -= v143;
            }

            *(v141 + 26216) = v146;
            v29 = v144 - 6;
          }

          LODWORD(v215) = v29 - 2;
          if (v29 >= 6)
          {
            v215 = 3;
          }

          else
          {
            v215 = v215;
          }

          v34 = &v5[16 * v215 + 3180];
          v26 = 1;
LABEL_307:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 36;
              goto LABEL_637;
            }

            v216 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v216 | (v13 << 8);
          }

          v217 = *(v34 + 2 * v26);
          v218 = (v19 >> 11) * v217;
          if (v13 >= v218)
          {
            v19 -= v218;
            *(v34 + 2 * v26) = v217 - (v217 >> 5);
            v26 = (2 * v26) | 1;
            v13 -= v218;
          }

          else
          {
            *(v34 + 2 * v26) = v217 + ((2048 - v217) >> 5);
            v26 *= 2;
            v19 = (v19 >> 11) * v217;
          }

LABEL_313:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 37;
              goto LABEL_637;
            }

            v219 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v219 | (v13 << 8);
          }

          v220 = *(v34 + 2 * v26);
          v221 = (v19 >> 11) * v220;
          if (v13 >= v221)
          {
            v19 -= v221;
            *(v34 + 2 * v26) = v220 - (v220 >> 5);
            v26 = (2 * v26) | 1;
            v13 -= v221;
          }

          else
          {
            *(v34 + 2 * v26) = v220 + ((2048 - v220) >> 5);
            v26 *= 2;
            v19 = (v19 >> 11) * v220;
          }

LABEL_319:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 38;
              goto LABEL_637;
            }

            v222 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v222 | (v13 << 8);
          }

          v223 = *(v34 + 2 * v26);
          v224 = (v19 >> 11) * v223;
          if (v13 >= v224)
          {
            v19 -= v224;
            *(v34 + 2 * v26) = v223 - (v223 >> 5);
            v26 = (2 * v26) | 1;
            v13 -= v224;
          }

          else
          {
            *(v34 + 2 * v26) = v223 + ((2048 - v223) >> 5);
            v26 *= 2;
            v19 = (v19 >> 11) * v223;
          }

LABEL_325:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 39;
              goto LABEL_637;
            }

            v225 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v225 | (v13 << 8);
          }

          v226 = *(v34 + 2 * v26);
          v227 = (v19 >> 11) * v226;
          if (v13 >= v227)
          {
            v19 -= v227;
            *(v34 + 2 * v26) = v226 - (v226 >> 5);
            v26 = (2 * v26) | 1;
            v13 -= v227;
          }

          else
          {
            *(v34 + 2 * v26) = v226 + ((2048 - v226) >> 5);
            v26 *= 2;
            v19 = (v19 >> 11) * v226;
          }

LABEL_331:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 40;
              goto LABEL_637;
            }

            v228 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v228 | (v13 << 8);
          }

          v229 = *(v34 + 2 * v26);
          v230 = (v19 >> 11) * v229;
          if (v13 >= v230)
          {
            v19 -= v230;
            *(v34 + 2 * v26) = v229 - (v229 >> 5);
            v26 = (2 * v26) | 1;
            v13 -= v230;
          }

          else
          {
            *(v34 + 2 * v26) = v229 + ((2048 - v229) >> 5);
            v26 *= 2;
            v19 = (v19 >> 11) * v229;
          }

LABEL_337:
          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              v374 = 41;
              goto LABEL_637;
            }

            v231 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v231 | (v13 << 8);
          }

          v232 = *(v34 + 2 * v26);
          v233 = (v19 >> 11) * v232;
          v234 = 2 * v26;
          v235 = v232 - (v232 >> 5);
          v236 = v232 + ((2048 - v232) >> 5);
          if (v13 < v233)
          {
            v19 = v233;
          }

          else
          {
            LOWORD(v236) = v235;
            v234 = (2 * v26) | 1;
            v13 -= v233;
            v19 -= v233;
          }

          *(v34 + 2 * v26) = v236;
          v26 = v234 - 64;
          if ((v234 - 64) < 4)
          {
            LODWORD(v21) = v234 - 64;
            goto LABEL_486;
          }

          v237 = v26 >> 1;
          LODWORD(v21) = v234 & 1 | 2;
          if (v26 > 0xD)
          {
            v27 = v237 - 5;
            do
            {
LABEL_456:
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  v374 = 43;
                  goto LABEL_637;
                }

                v19 <<= 8;
                v286 = *(a3 + v14++);
                v13 = v286 | (v13 << 8);
              }

              v287 = v13 - (v19 >> 1);
              v288 = (v287 >> 31) & (v19 >> 1);
              v19 >>= 1;
              v13 = v288 + v287;
              LODWORD(v21) = (v287 >> 31) + 2 * v21 + 1;
              --v27;
            }

            while (v27);
            LODWORD(v21) = 16 * v21;
            v26 = 1;
LABEL_461:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 44;
                goto LABEL_637;
              }

              v289 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v289 | (v13 << 8);
            }

            v290 = v5 + 26180;
            v291 = *(v5 + v26 + 13090);
            v292 = (v19 >> 11) * v291;
            if (v13 >= v292)
            {
              v19 -= v292;
              *&v290[2 * v26] = v291 - (v291 >> 5);
              v26 = (2 * v26) | 1;
              LODWORD(v21) = v21 + 1;
              v13 -= v292;
            }

            else
            {
              *&v290[2 * v26] = v291 + ((2048 - v291) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v291;
            }

LABEL_467:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 45;
                goto LABEL_637;
              }

              v293 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v293 | (v13 << 8);
            }

            v294 = v5 + 26180;
            v295 = *(v5 + v26 + 13090);
            v296 = (v19 >> 11) * v295;
            if (v13 >= v296)
            {
              v19 -= v296;
              *&v294[2 * v26] = v295 - (v295 >> 5);
              v26 = (2 * v26) | 1;
              LODWORD(v21) = v21 + 2;
              v13 -= v296;
            }

            else
            {
              *&v294[2 * v26] = v295 + ((2048 - v295) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v295;
            }

LABEL_473:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 46;
                goto LABEL_637;
              }

              v297 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v297 | (v13 << 8);
            }

            v298 = v5 + 26180;
            v299 = *(v5 + v26 + 13090);
            v300 = (v19 >> 11) * v299;
            if (v13 >= v300)
            {
              v19 -= v300;
              *&v298[2 * v26] = v299 - (v299 >> 5);
              v26 = (2 * v26) | 1;
              LODWORD(v21) = v21 + 4;
              v13 -= v300;
            }

            else
            {
              *&v298[2 * v26] = v299 + ((2048 - v299) >> 5);
              v26 *= 2;
              v19 = (v19 >> 11) * v299;
            }

LABEL_479:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                v374 = 47;
                goto LABEL_637;
              }

              v301 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v301 | (v13 << 8);
            }

            v302 = *(v5 + v26 + 13090);
            v303 = (v19 >> 11) * v302;
            if (v13 >= v303)
            {
              v19 -= v303;
              v304 = v302 - (v302 >> 5);
              LODWORD(v21) = v21 + 8;
              v13 -= v303;
            }

            else
            {
              v304 = v302 + ((2048 - v302) >> 5);
              v19 = v303;
            }

            *(v5 + v26 + 13090) = v304;
            if (v21 == -1)
            {
              if (!v380)
              {
                goto LABEL_635;
              }

LABEL_629:
              v35 = v29;
              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v36 = 0;
                  v374 = 48;
                  goto LABEL_637;
                }

                v373 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v373 | (v13 << 8);
              }

              if (v13)
              {
                v36 = 9;
              }

              else
              {
                v36 = 1;
              }

              goto LABEL_639;
            }

LABEL_486:
            if (v15 > v21)
            {
              goto LABEL_487;
            }

LABEL_635:
            v35 = v29;
            v36 = 9;
            goto LABEL_639;
          }

          v28 = 0;
          v27 = v237 - 1;
          LODWORD(v21) = v21 << (v237 - 1);
          v34 = v5 + 2 * v21 + -2 * v26 + 25950;
          v26 = 1;
LABEL_347:
          if (v27 <= 2)
          {
            if (v27 != 1)
            {
              if (v27 != 2)
              {
                goto LABEL_486;
              }

              goto LABEL_435;
            }
          }

          else
          {
            if (v27 != 3)
            {
              if (v27 != 4)
              {
                if (v27 != 5)
                {
                  goto LABEL_486;
                }

                if (!HIBYTE(v19))
                {
                  if (v14 == a5)
                  {
                    v35 = v29;
                    v36 = 0;
                    *(v400 + 3748) = 42;
                    v27 = 5;
                    goto LABEL_638;
                  }

                  v238 = *(a3 + v14);
                  v19 <<= 8;
                  ++v14;
                  v13 = v238 | (v13 << 8);
                }

                v239 = *(v34 + 2 * v26);
                v240 = (v19 >> 11) * v239;
                v241 = v239 - (v239 >> 5);
                v242 = v239 + ((2048 - v239) >> 5);
                v243 = v13 >= v240;
                if (v13 >= v240)
                {
                  LOWORD(v242) = v241;
                }

                *(v34 + 2 * v26) = v242;
                if (v13 < v240)
                {
                  v26 *= 2;
                }

                else
                {
                  LODWORD(v21) = v21 + 1;
                  v26 = (2 * v26) | 1;
                }

                if (v13 >= v240)
                {
                  v13 -= v240;
                }

                if (v243)
                {
                  v19 -= v240;
                }

                else
                {
                  v19 = v240;
                }

                ++v28;
              }

              if (!HIBYTE(v19))
              {
                if (v14 == a5)
                {
                  v35 = v29;
                  v36 = 0;
                  *(v400 + 3748) = 42;
                  v27 = 4;
                  goto LABEL_638;
                }

                v244 = *(a3 + v14);
                v19 <<= 8;
                ++v14;
                v13 = v244 | (v13 << 8);
              }

              v245 = *(v34 + 2 * v26);
              v246 = (v19 >> 11) * v245;
              v247 = v245 - (v245 >> 5);
              v248 = v245 + ((2048 - v245) >> 5);
              v249 = v13 >= v246;
              if (v13 >= v246)
              {
                LOWORD(v248) = v247;
              }

              *(v34 + 2 * v26) = v248;
              if (v13 < v246)
              {
                v26 *= 2;
              }

              else
              {
                LODWORD(v21) = (1 << v28) + v21;
                v26 = (2 * v26) | 1;
              }

              if (v13 >= v246)
              {
                v13 -= v246;
              }

              if (v249)
              {
                v19 -= v246;
              }

              else
              {
                v19 = v246;
              }

              ++v28;
            }

            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                *(v400 + 3748) = 42;
                v27 = 3;
                goto LABEL_638;
              }

              v250 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v250 | (v13 << 8);
            }

            v251 = *(v34 + 2 * v26);
            v252 = (v19 >> 11) * v251;
            v253 = v251 - (v251 >> 5);
            v254 = v251 + ((2048 - v251) >> 5);
            v255 = v13 >= v252;
            if (v13 >= v252)
            {
              LOWORD(v254) = v253;
            }

            *(v34 + 2 * v26) = v254;
            if (v13 < v252)
            {
              v26 *= 2;
            }

            else
            {
              LODWORD(v21) = (1 << v28) + v21;
              v26 = (2 * v26) | 1;
            }

            if (v13 >= v252)
            {
              v13 -= v252;
            }

            if (v255)
            {
              v19 -= v252;
            }

            else
            {
              v19 = v252;
            }

            ++v28;
LABEL_435:
            if (!HIBYTE(v19))
            {
              if (v14 == a5)
              {
                v35 = v29;
                v36 = 0;
                *(v400 + 3748) = 42;
                v27 = 2;
                goto LABEL_638;
              }

              v277 = *(a3 + v14);
              v19 <<= 8;
              ++v14;
              v13 = v277 | (v13 << 8);
            }

            v278 = *(v34 + 2 * v26);
            v279 = (v19 >> 11) * v278;
            v280 = v278 - (v278 >> 5);
            v281 = v278 + ((2048 - v278) >> 5);
            v282 = v13 >= v279;
            if (v13 >= v279)
            {
              LOWORD(v281) = v280;
            }

            *(v34 + 2 * v26) = v281;
            if (v13 < v279)
            {
              v26 *= 2;
            }

            else
            {
              LODWORD(v21) = (1 << v28) + v21;
              v26 = (2 * v26) | 1;
            }

            if (v13 >= v279)
            {
              v13 -= v279;
            }

            if (v282)
            {
              v19 -= v279;
            }

            else
            {
              v19 = v279;
            }

            ++v28;
          }

          if (!HIBYTE(v19))
          {
            if (v14 == a5)
            {
              v35 = v29;
              v36 = 0;
              *(v400 + 3748) = 42;
              v27 = 1;
              goto LABEL_638;
            }

            v283 = *(a3 + v14);
            v19 <<= 8;
            ++v14;
            v13 = v283 | (v13 << 8);
          }

          v284 = *(v34 + 2 * v26);
          v285 = (v19 >> 11) * v284;
          if (v13 >= v285)
          {
            *(v34 + 2 * v26) = v284 - (v284 >> 5);
            v19 -= v285;
            v27 = 1;
            LODWORD(v21) = (1 << v28) + v21;
            v13 -= v285;
          }

          else
          {
            *(v34 + 2 * v26) = v284 + ((2048 - v284) >> 5);
            v27 = 1;
            v19 = (v19 >> 11) * v284;
          }

          goto LABEL_486;
        }

        v19 -= v74;
        *(v72 + v20) = v73 - (v73 >> 5);
        if (!v15)
        {
          v35 = v29;
          v36 = 9;
          LODWORD(v23) = v70;
          v13 = v75;
          goto LABEL_725;
        }

        v23 = v70;
        v13 -= v74;
        v34 = v69;
LABEL_99:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 49;
            goto LABEL_637;
          }

          v83 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v83 | (v13 << 8);
        }

        v84 = v5 + 3123;
        v85 = *(v5 + v20 + 12492);
        v86 = (v19 >> 11) * v85;
        if (v13 >= v86)
        {
          break;
        }

        *(v84 + v20) = v85 + ((2048 - v85) >> 5);
        v19 = (v19 >> 11) * v85;
LABEL_104:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 51;
            goto LABEL_637;
          }

          v87 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v87 | (v13 << 8);
        }

        v88 = &v5[4 * v20] + 2 * v33;
        v89 = *(v88 + 25056);
        v90 = (v19 >> 11) * v89;
        v91 = v13 - v90;
        if (v13 >= v90)
        {
          v98 = v29;
          *(v88 + 25056) -= *(v88 + 25056) >> 5;
          v19 -= v90;
          v99 = v21;
          v21 = v22;
          v22 = v23;
          goto LABEL_133;
        }

        *(v88 + 25056) = v89 + ((2048 - v89) >> 5);
        if (v20 >= 7)
        {
          v20 = 11;
        }

        else
        {
          v20 = 9;
        }

        v19 = (v19 >> 11) * v89;
LABEL_112:
        if (v17 == v401)
        {
          v35 = v29;
          v36 = 0;
          v378 = 50;
          v379 = v400;
          v37 = v401;
LABEL_658:
          *(v379 + 3748) = v378;
LABEL_659:
          v16 = v394;
          goto LABEL_641;
        }

        v92 = v396;
        if (v17 > v21)
        {
          v92 = 0;
        }

        v399[v17] = v399[v17 + ~v21 + v92];
        if (v17 + 1 > v15)
        {
          v15 = v17 + 1;
        }

        v93 = v17 + 1;
      }

      v19 -= v86;
      *(v84 + v20) = v85 - (v85 >> 5);
      v13 -= v86;
LABEL_119:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 52;
          goto LABEL_637;
        }

        v94 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v94 | (v13 << 8);
      }

      v95 = v5 + 3126;
      v96 = *(v5 + v20 + 12504);
      v97 = (v19 >> 11) * v96;
      if (v13 < v97)
      {
        v98 = v29;
        *(v95 + v20) = v96 + ((2048 - v96) >> 5);
        v99 = v22;
        v22 = v23;
        goto LABEL_131;
      }

      v19 -= v97;
      *(v95 + v20) = v96 - (v96 >> 5);
      v13 -= v97;
LABEL_126:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 53;
          goto LABEL_637;
        }

        v100 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v100 | (v13 << 8);
      }

      v98 = v29;
      v101 = v5 + 3129;
      v102 = *(v5 + v20 + 12516);
      v97 = (v19 >> 11) * v102;
      v91 = v13 - v97;
      if (v13 >= v97)
      {
        v19 -= v97;
        *(v101 + v20) = v102 - (v102 >> 5);
        v99 = v24;
        v24 = v23;
LABEL_133:
        v13 = v91;
      }

      else
      {
        *(v101 + v20) = v102 + ((2048 - v102) >> 5);
        v99 = v23;
LABEL_131:
        v19 = v97;
      }

      v23 = v22;
      v22 = v21;
      if (v20 >= 7)
      {
        v20 = 11;
      }

      else
      {
        v20 = 8;
      }

      v26 = 1;
      LODWORD(v21) = v99;
      v29 = v98;
LABEL_138:
      if (!HIBYTE(v19))
      {
        if (v14 != a5)
        {
          v103 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v103 | (v13 << 8);
          goto LABEL_141;
        }

        v35 = v29;
        v36 = 0;
        v374 = 54;
LABEL_637:
        *(v400 + 3748) = v374;
LABEL_638:
        v14 = a5;
LABEL_639:
        v16 = v394;
LABEL_640:
        v37 = v17;
        goto LABEL_641;
      }

LABEL_141:
      v104 = *(v400 + 2664);
      v105 = (v19 >> 11) * v104;
      if (v13 < v105)
      {
        *(v400 + 2664) = v104 + ((2048 - v104) >> 5);
        v19 = (v19 >> 11) * v104;
LABEL_143:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 55;
            goto LABEL_637;
          }

          v106 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v106 | (v13 << 8);
        }

        v107 = &v5[2 * v33] + 2 * v26;
        v108 = *(v107 + 27244);
        v109 = (v19 >> 11) * v108;
        v26 *= 2;
        if (v13 >= v109)
        {
          v19 -= v109;
          *(v107 + 27244) -= *(v107 + 27244) >> 5;
          v26 |= 1u;
          v13 -= v109;
        }

        else
        {
          *(v107 + 27244) = v108 + ((2048 - v108) >> 5);
          v19 = (v19 >> 11) * v108;
        }

LABEL_149:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 56;
            goto LABEL_637;
          }

          v110 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v110 | (v13 << 8);
        }

        v111 = &v5[2 * v33] + 2 * v26;
        v112 = *(v111 + 27244);
        v113 = (v19 >> 11) * v112;
        v26 *= 2;
        if (v13 >= v113)
        {
          v19 -= v113;
          *(v111 + 27244) -= *(v111 + 27244) >> 5;
          v26 |= 1u;
          v13 -= v113;
        }

        else
        {
          *(v111 + 27244) = v112 + ((2048 - v112) >> 5);
          v19 = (v19 >> 11) * v112;
        }

LABEL_155:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 57;
            goto LABEL_637;
          }

          v114 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v114 | (v13 << 8);
        }

        v115 = &v5[2 * v33] + 2 * v26;
        v116 = *(v115 + 27244);
        v117 = (v19 >> 11) * v116;
        v118 = v116 - (v116 >> 5);
        v119 = v116 + ((2048 - v116) >> 5);
        v120 = v13 >= v117;
        if (v13 < v117)
        {
          v26 *= 2;
        }

        else
        {
          LOWORD(v119) = v118;
          v26 = (2 * v26) | 1;
        }

        if (v13 >= v117)
        {
          v13 -= v117;
        }

        if (v120)
        {
          v19 -= v117;
        }

        else
        {
          v19 = v117;
        }

        *(v115 + 27244) = v119;
        v29 = v26 - 6;
        continue;
      }

      v19 -= v105;
      *(v400 + 2664) -= *(v400 + 2664) >> 5;
      v13 -= v105;
LABEL_168:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 58;
          goto LABEL_637;
        }

        v121 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v121 | (v13 << 8);
      }

      v122 = *(v400 + 2666);
      v123 = (v19 >> 11) * v122;
      if (v13 < v123)
      {
        *(v400 + 2666) = v122 + ((2048 - v122) >> 5);
        v19 = (v19 >> 11) * v122;
LABEL_173:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 59;
            goto LABEL_637;
          }

          v124 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v124 | (v13 << 8);
        }

        v125 = &v5[2 * v33] + 2 * v26;
        v126 = *(v125 + 27500);
        v127 = (v19 >> 11) * v126;
        v26 *= 2;
        if (v13 >= v127)
        {
          v19 -= v127;
          *(v125 + 27500) -= *(v125 + 27500) >> 5;
          v26 |= 1u;
          v13 -= v127;
        }

        else
        {
          *(v125 + 27500) = v126 + ((2048 - v126) >> 5);
          v19 = (v19 >> 11) * v126;
        }

LABEL_415:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 60;
            goto LABEL_637;
          }

          v266 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v266 | (v13 << 8);
        }

        v267 = &v5[2 * v33] + 2 * v26;
        v268 = *(v267 + 27500);
        v269 = (v19 >> 11) * v268;
        v26 *= 2;
        if (v13 >= v269)
        {
          v19 -= v269;
          *(v267 + 27500) -= *(v267 + 27500) >> 5;
          v26 |= 1u;
          v13 -= v269;
        }

        else
        {
          *(v267 + 27500) = v268 + ((2048 - v268) >> 5);
          v19 = (v19 >> 11) * v268;
        }

LABEL_421:
        if (!HIBYTE(v19))
        {
          if (v14 == a5)
          {
            v35 = v29;
            v36 = 0;
            v374 = 61;
            goto LABEL_637;
          }

          v270 = *(a3 + v14);
          v19 <<= 8;
          ++v14;
          v13 = v270 | (v13 << 8);
        }

        v271 = &v5[2 * v33] + 2 * v26;
        v272 = *(v271 + 27500);
        v273 = (v19 >> 11) * v272;
        v274 = v272 - (v272 >> 5);
        v275 = v272 + ((2048 - v272) >> 5);
        v276 = v13 >= v273;
        if (v13 < v273)
        {
          v26 *= 2;
        }

        else
        {
          LOWORD(v275) = v274;
          v26 = (2 * v26) | 1;
        }

        if (v13 >= v273)
        {
          v13 -= v273;
        }

        if (v276)
        {
          v19 -= v273;
        }

        else
        {
          v19 = v273;
        }

        *(v271 + 27500) = v275;
        v29 = v26 + 2;
        continue;
      }

      v19 -= v123;
      *(v400 + 2666) -= *(v400 + 2666) >> 5;
      v13 -= v123;
LABEL_179:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 62;
          goto LABEL_637;
        }

        v128 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v128 | (v13 << 8);
      }

      v129 = v5 + 27756;
      v130 = *(v5 + v26 + 13878);
      v131 = (v19 >> 11) * v130;
      if (v13 >= v131)
      {
        v19 -= v131;
        *&v129[2 * v26] = v130 - (v130 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v131;
      }

      else
      {
        *&v129[2 * v26] = v130 + ((2048 - v130) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v130;
      }

LABEL_185:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 63;
          goto LABEL_637;
        }

        v132 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v132 | (v13 << 8);
      }

      v133 = v5 + 27756;
      v134 = *(v5 + v26 + 13878);
      v135 = (v19 >> 11) * v134;
      if (v13 >= v135)
      {
        v19 -= v135;
        *&v133[2 * v26] = v134 - (v134 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v135;
      }

      else
      {
        *&v133[2 * v26] = v134 + ((2048 - v134) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v134;
      }

LABEL_266:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 64;
          goto LABEL_637;
        }

        v189 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v189 | (v13 << 8);
      }

      v190 = v5 + 27756;
      v191 = *(v5 + v26 + 13878);
      v192 = (v19 >> 11) * v191;
      if (v13 >= v192)
      {
        v19 -= v192;
        *&v190[2 * v26] = v191 - (v191 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v192;
      }

      else
      {
        *&v190[2 * v26] = v191 + ((2048 - v191) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v191;
      }

LABEL_272:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 65;
          goto LABEL_637;
        }

        v193 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v193 | (v13 << 8);
      }

      v194 = v5 + 27756;
      v195 = *(v5 + v26 + 13878);
      v196 = (v19 >> 11) * v195;
      if (v13 >= v196)
      {
        v19 -= v196;
        *&v194[2 * v26] = v195 - (v195 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v196;
      }

      else
      {
        *&v194[2 * v26] = v195 + ((2048 - v195) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v195;
      }

LABEL_278:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 66;
          goto LABEL_637;
        }

        v197 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v197 | (v13 << 8);
      }

      v198 = v5 + 27756;
      v199 = *(v5 + v26 + 13878);
      v200 = (v19 >> 11) * v199;
      if (v13 >= v200)
      {
        v19 -= v200;
        *&v198[2 * v26] = v199 - (v199 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v200;
      }

      else
      {
        *&v198[2 * v26] = v199 + ((2048 - v199) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v199;
      }

LABEL_284:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 67;
          goto LABEL_637;
        }

        v201 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v201 | (v13 << 8);
      }

      v202 = v5 + 27756;
      v203 = *(v5 + v26 + 13878);
      v204 = (v19 >> 11) * v203;
      if (v13 >= v204)
      {
        v19 -= v204;
        *&v202[2 * v26] = v203 - (v203 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v204;
      }

      else
      {
        *&v202[2 * v26] = v203 + ((2048 - v203) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v203;
      }

LABEL_394:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 68;
          goto LABEL_637;
        }

        v256 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v256 | (v13 << 8);
      }

      v257 = v5 + 27756;
      v258 = *(v5 + v26 + 13878);
      v259 = (v19 >> 11) * v258;
      if (v13 >= v259)
      {
        v19 -= v259;
        *&v257[2 * v26] = v258 - (v258 >> 5);
        v26 = (2 * v26) | 1;
        v13 -= v259;
      }

      else
      {
        *&v257[2 * v26] = v258 + ((2048 - v258) >> 5);
        v26 *= 2;
        v19 = (v19 >> 11) * v258;
      }

LABEL_400:
      if (!HIBYTE(v19))
      {
        if (v14 == a5)
        {
          v35 = v29;
          v36 = 0;
          v374 = 69;
          goto LABEL_637;
        }

        v260 = *(a3 + v14);
        v19 <<= 8;
        ++v14;
        v13 = v260 | (v13 << 8);
      }

      v261 = *(v5 + v26 + 13878);
      v262 = (v19 >> 11) * v261;
      v263 = v261 - (v261 >> 5);
      v264 = v261 + ((2048 - v261) >> 5);
      v265 = v13 >= v262;
      if (v13 >= v262)
      {
        LOWORD(v264) = v263;
      }

      *(v5 + v26 + 13878) = v264;
      if (v13 < v262)
      {
        v26 *= 2;
      }

      else
      {
        v26 = (2 * v26) | 1;
      }

      if (v13 >= v262)
      {
        v13 -= v262;
      }

      if (v265)
      {
        v19 -= v262;
      }

      else
      {
        v19 = v262;
      }

      v29 = v26 - 238;
    }

    v35 = v29;
    v36 = 0;
    *(v400 + 3748) = 70;
    LODWORD(v21) = v395;
    LODWORD(v24) = v310;
LABEL_641:
    a2[1] = v37;
    a2[2] = v15;
    *(v400 + 3692) = v19;
    *(v400 + 3696) = v13;
    *(v400 + 3700) = 0;
    *v382 = v14;
    *(v400 + 3704) = v20;
    *(v400 + 3708) = v21;
    *(v400 + 3712) = v22;
    *(v400 + 3716) = v23;
    *(v400 + 3720) = v24;
    v5[3541] = v34;
    *(v400 + 3760) = v26;
    *(v400 + 3764) = v27;
    *(v400 + 3768) = v28;
    *(v400 + 3772) = v35;
    v375 = v5[3539];
    if (v375 == -1 || (v376 = v375 + v16 - v37, (v5[3539] = v376) != 0) || v36)
    {
      if (v36 == 1)
      {
        *&result = 0xFFFFFFFFLL;
        *(v5 + 28268) = 0xFFFFFFFFLL;
        *(v400 + 3700) = 5;
        *(v400 + 3748) = 1;
      }
    }

    else
    {
      *(v400 + 3748);
    }
  }

  return result;
}

void lzma_decoder_reset(uint64_t a1, _DWORD *a2)
{
  v3 = a1 + 24576;
  v4 = a2[6];
  v15 = a2[7];
  v5 = a2[5];
  v6 = 1;
  do
  {
    memset_pattern16((a1 + 1536 * (v6 - 1)), &unk_2990BEFC0, 0x600uLL);
  }

  while (!(v6++ >> (v4 + v5)));
  v8 = 0;
  *(v3 + 3728) = v5;
  *(v3 + 3732) = ~(-1 << v4);
  *(a1 + 28280) = 0u;
  *(a1 + 28296) = 0;
  *(v3 + 3724) = ~(-1 << v15);
  v9 = (a1 + 24576);
  *(v3 + 3692) = 0xFFFFFFFFLL;
  *(v3 + 3700) = 5;
  do
  {
    v10 = -(-1 << v15);
    v11 = v9;
    do
    {
      *v11 = 1024;
      v11[240] = 1024;
      ++v11;
      --v10;
    }

    while (v10);
    *(a1 + 24960 + 2 * v8) = 1024;
    *(a1 + 24984 + 2 * v8) = 1024;
    *(a1 + 25008 + 2 * v8) = 1024;
    *(a1 + 25032 + 2 * v8++) = 1024;
    v9 += 16;
  }

  while (v8 != 12);
  v12 = (a1 + 25440);
  v13 = 4;
  do
  {
    memset_pattern16(v12, &unk_2990BEFC0, 0x80uLL);
    v12 += 128;
    --v13;
  }

  while (v13);
  memset_pattern16((a1 + 25952), &unk_2990BEFC0, 0xE4uLL);
  memset_pattern16((a1 + 26180), &unk_2990BEFC0, 0x20uLL);
  v14 = 0;
  *(v3 + 1636) = 67109888;
  *(v3 + 2664) = 67109888;
  do
  {
    memset_pattern16((a1 + 26216 + 16 * v14), &unk_2990BEFC0, 0x10uLL);
    memset_pattern16((a1 + 26472 + 16 * v14), &unk_2990BEFC0, 0x10uLL);
    memset_pattern16((a1 + 27244 + 16 * v14), &unk_2990BEFC0, 0x10uLL);
    memset_pattern16((a1 + 27500 + 16 * v14++), &unk_2990BEFC0, 0x10uLL);
  }

  while (!(v14 >> v15));
  memset_pattern16((a1 + 26728), &unk_2990BEFC0, 0x200uLL);
  memset_pattern16((a1 + 27756), &unk_2990BEFC0, 0x200uLL);
  *(v3 + 3748) = 1;
  *(a1 + 28328) = 0;
  *(a1 + 28344) = 0;
  *(a1 + 28336) = 0;
}

uint64_t lzma_decoder_uncompressed(uint64_t result, uint64_t a2, char a3)
{
  *(result + 28312) = a2;
  *(result + 28320) = a3;
  return result;
}

uint64_t lzma_decoder_init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a4 + 20);
  if (v5 > 4)
  {
    return 11;
  }

  v7 = *(a4 + 24);
  v8 = v7 + v5;
  v9 = v7 > 4 || v8 > 4;
  if (v9 || *(a4 + 28) > 4u)
  {
    return 11;
  }

  if (a3 == 0x4000000000000002)
  {
    v11 = *(a4 + 48);
    if (v11 > 1)
    {
      return 8;
    }

    v12 = *(a4 + 52);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12 == -1;
    }

    v14 = v13;
  }

  else
  {
    v12 = -1;
    v14 = 1;
  }

  result = lzma_lzma_decoder_create(a1, a2, a4, a5);
  if (!result)
  {
    lzma_decoder_reset(*a1, a4);
    result = 0;
    v16 = *a1;
    *(v16 + 28312) = v12;
    *(v16 + 28320) = v14;
  }

  return result;
}

BOOL lzma_lzma_lclppb_decode(_DWORD *a1, unsigned int a2)
{
  if (a2 > 0xE0)
  {
    return 1;
  }

  v3 = (((a2 - ((109 * a2) >> 8)) >> 1) + ((109 * a2) >> 8)) >> 5;
  a1[7] = v3;
  v4 = (a2 - 45 * v3);
  v5 = 57 * v4;
  v6 = v4 - 9 * ((57 * v4) >> 9);
  a1[5] = v6;
  a1[6] = v5 >> 9;
  return v6 + (v5 >> 9) > 4;
}

uint64_t lzma_lzma_decoder_memusage(unsigned int *a1)
{
  v1 = a1[5];
  if (v1 > 4)
  {
    return -1;
  }

  v2 = a1[6];
  v3 = v2 + v1;
  v4 = v2 > 4 || v3 > 4;
  if (v4 || a1[7] > 4)
  {
    return -1;
  }

  else
  {
    return lzma_lz_decoder_memusage(*a1) + 28352;
  }
}

uint64_t lzma_lzma_props_decode(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 != 5)
  {
    return 8;
  }

  v7 = lzma_alloc(0x70uLL, a2);
  if (!v7)
  {
    return 5;
  }

  v8 = *a3;
  if (v8 <= 0xE0 && (v9 = (((v8 - ((109 * v8) >> 8)) >> 1) + ((109 * v8) >> 8)) >> 5, v7[7] = v9, v10 = (v8 - 45 * v9), v11 = 57 * v10, v12 = v10 - 9 * ((57 * v10) >> 9), v7[5] = v12, v7[6] = v11 >> 9, v12 + (v11 >> 9) <= 4))
  {
    v13 = 0;
    *v7 = *(a3 + 1);
    *(v7 + 1) = 0;
    v7[4] = 0;
    *a1 = v7;
  }

  else
  {
    lzma_free(v7, a2);
    return 8;
  }

  return v13;
}

uint64_t lzma2_encoder_init(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  if (!a4)
  {
    return 11;
  }

  v9 = *a1;
  if (!*a1)
  {
    v10 = lzma_alloc(0x100A8uLL, a2);
    if (!v10)
    {
      return 5;
    }

    v9 = v10;
    *a1 = v10;
    a1[1] = lzma2_encode;
    a1[2] = lzma2_encoder_end;
    a1[3] = lzma2_encoder_options_update;
    v10[1] = 0;
  }

  v11 = *a4;
  v12 = a4[2];
  *(v9 + 2) = a4[1];
  *(v9 + 3) = v12;
  *(v9 + 1) = v11;
  v13 = a4[3];
  v14 = a4[4];
  v15 = a4[6];
  *(v9 + 6) = a4[5];
  *(v9 + 7) = v15;
  *(v9 + 4) = v13;
  *(v9 + 5) = v14;
  *v9 = 0;
  v16 = 1;
  *(v9 + 64) = 1;
  if (v9[3])
  {
    v16 = *(v9 + 8) == 0;
  }

  *(v9 + 130) = v16;
  result = lzma_lzma_encoder_create(v9 + 1, a2, 33, v9 + 4, a5);
  if (!result)
  {
    v18 = a5[1];
    result = 0;
    if (!((v18 + *a5) >> 16))
    {
      *a5 = 0x10000 - v18;
    }
  }

  return result;
}

uint64_t lzma_lzma2_encoder_memusage(unsigned int *a1)
{
  v1 = lzma_lzma_encoder_memusage(a1);
  if (v1 == -1)
  {
    return -1;
  }

  else
  {
    return v1 + 65704;
  }
}

uint64_t lzma_lzma2_props_encode(_DWORD *a1, char *a2)
{
  if (!a1)
  {
    return 11;
  }

  if (*a1 <= 0x1000u)
  {
    v2 = 4095;
  }

  else
  {
    v2 = *a1 - 1;
  }

  v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 3);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if (v5 == -1)
  {
    v9 = 40;
  }

  else
  {
    v6 = v5 + 1;
    if (v5 > 0x1FFE)
    {
      if (v5 > 0x1FFFFFE)
      {
        v7 = lzma_fastpos[v6 >> 24] + 48;
      }

      else
      {
        v7 = lzma_fastpos[v6 >> 12] + 24;
      }
    }

    else
    {
      v7 = lzma_fastpos[v6];
    }

    v9 = v7 - 24;
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t lzma_lzma2_block_size(unsigned int *a1)
{
  v1 = *a1;
  if (v1 <= 0x55555)
  {
    return 0x100000;
  }

  else
  {
    return 3 * v1;
  }
}

uint64_t lzma2_encode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v5 = *a4;
  if (*a4 >= a5)
  {
    return 0;
  }

  v11 = (a1 + 160);
  v12 = *a1;
  v36 = a1 + 166;
  while (1)
  {
    if (v12 > 1)
    {
      switch(v12)
      {
        case 4:
          goto LABEL_13;
        case 3:
          lzma_bufcpy(v11, (a1 + 152), 3, a3, a4, a5);
          if (*(a1 + 152) != 3)
          {
            return 0;
          }

          *a1 = 4;
          v5 = *a4;
LABEL_13:
          v15 = *(a1 + 136);
          if (a5 - v5 >= v15)
          {
            v16 = *(a1 + 136);
          }

          else
          {
            v16 = a5 - v5;
          }

          memcpy((a3 + v5), (*a2 + *(a2 + 24) - v15), v16);
          v12 = 0;
          result = 0;
          *a4 = v16 + v5;
          *(a1 + 136) = v15 - v16;
          if (v15 > a5 - v5)
          {
            return result;
          }

LABEL_44:
          *a1 = v12;
          goto LABEL_45;
        case 2:
          v13 = *(a1 + 144);
          goto LABEL_43;
      }

      goto LABEL_45;
    }

    if (!v12)
    {
      break;
    }

    if (v12 == 1)
    {
      v14 = 0x200000 - *(a1 + 136);
LABEL_22:
      v18 = *(a2 + 100);
      v19 = *(a2 + 24);
      v20 = *(a2 + 28);
      if (v14 >= v18)
      {
        v21 = v14 + v19 - (v18 + v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = lzma_lzma_encode(*(a1 + 8), a2, v36, (a1 + 144), 0x10000, v21);
      v23 = *(a2 + 28);
      v24 = *(a1 + 136) + (v20 + *(a2 + 24) - (v19 + v23));
      *(a1 + 136) = v24;
      if (v22 != 1)
      {
        return 0;
      }

      v25 = *(a1 + 144);
      if (v25 >= v24)
      {
        v29 = v24 + v23;
        *(a1 + 136) = v24 + v23;
        *(a2 + 28) = 0;
        if (*(a1 + 130))
        {
          v30 = 1;
        }

        else
        {
          v30 = 2;
        }

        *(a1 + 160) = v30;
        v31 = v29 - 1;
        *(a1 + 161) = HIBYTE(v31);
        *(a1 + 162) = v31;
        *(a1 + 152) = 0;
        *(a1 + 129) = 1;
        v12 = 3;
        goto LABEL_44;
      }

      v26 = *(a1 + 128);
      if (v26 == 1)
      {
        v27 = 0;
        if (*(a1 + 130) == 1)
        {
          v28 = -32;
        }

        else
        {
          v28 = -64;
        }

        *v11 = v28;
      }

      else
      {
        if (*(a1 + 129) == 1)
        {
          v32 = -96;
        }

        else
        {
          v32 = 0x80;
        }

        *(a1 + 161) = v32;
        v27 = 1;
      }

      *(a1 + 152) = v27;
      v33 = v24 - 1;
      v34 = &v11[v27];
      *v34 = v11[v27] + BYTE2(v33);
      v34[1] = BYTE1(v33);
      v34[2] = v33;
      v34[3] = (v25 - 1) >> 8;
      v34[4] = v25 - 1;
      if (v26)
      {
        lzma_lzma_lclppb_encode((a1 + 16), v34 + 5);
        v25 = *(a1 + 144);
      }

      *(a1 + 128) = 0;
      *(a1 + 130) = 0;
      v13 = v25 + 6;
      *(a1 + 144) = v25 + 6;
      *a1 = 2;
LABEL_43:
      lzma_bufcpy(v11, (a1 + 152), v13, a3, a4, a5);
      v12 = 0;
      result = 0;
      if (*(a1 + 152) != *(a1 + 144))
      {
        return result;
      }

      goto LABEL_44;
    }

LABEL_45:
    v5 = *a4;
    if (*a4 >= a5)
    {
      return 0;
    }
  }

  if (*(a2 + 36) - *(a2 + 24) + *(a2 + 28))
  {
    if (*(a1 + 129) == 1)
    {
      result = lzma_lzma_encoder_reset(*(a1 + 8), (a1 + 16));
      if (result)
      {
        return result;
      }
    }

    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    v14 = 0x200000;
    *a1 = 1;
    goto LABEL_22;
  }

  v35 = *(a2 + 104);
  if (v35 == 3)
  {
    *a4 = v5 + 1;
    *(a3 + v5) = 0;
  }

  return v35 != 0;
}

void lzma2_encoder_end(void **a1, uint64_t a2)
{
  lzma_free(a1[1], a2);

  lzma_free(a1, a2);
}

uint64_t lzma2_encoder_options_update(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (!v2 || *a1)
  {
    return 11;
  }

  v5 = v2[5];
  if (*(a1 + 36) == v5 && *(a1 + 40) == v2[6] && *(a1 + 44) == v2[7])
  {
    return 0;
  }

  if (v5 > 4)
  {
    return 8;
  }

  v6 = v2[6];
  if (v6 > 4 || v6 + v5 > 4)
  {
    return 8;
  }

  v8 = v2[7];
  if (v8 > 4)
  {
    return 8;
  }

  v3 = 0;
  *(a1 + 36) = v5;
  *(a1 + 40) = v6;
  *(a1 + 44) = v8;
  *(a1 + 128) = 257;
  return v3;
}

uint64_t arm64_code(uint64_t a1, int a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a5 >= 4)
  {
    for (i = 0; ; i += 4)
    {
      v7 = a2 + i;
      v8 = *(a4 + i);
      if ((v8 & 0xFC000000) == 0x94000000)
      {
        v9 = v7 >> 2;
        if (!a3)
        {
          v9 = -v9;
        }

        v10 = (v8 + v9) & 0x3FFFFFF | 0x94000000;
      }

      else
      {
        if ((v8 & 0x9F000000) != 0x90000000 || (((v8 >> 3) + 0x20000) & 0x1C0000) != 0)
        {
          goto LABEL_13;
        }

        v13 = (v8 >> 3) & 0x1FFFFC | (v8 >> 29) & 3;
        v14 = v8 & 0x9000001F;
        v15 = v7 >> 12;
        if (!a3)
        {
          v15 = -v15;
        }

        v10 = v14 | ((v13 + v15) << 29) | (8 * (v13 + v15)) & 0x1FFFE0 | -((v13 + v15) & 0x20000) & 0xE00000;
      }

      *(a4 + i) = v10;
LABEL_13:
      result = i + 4;
      v12 = i + 8;
      if (v12 > a5)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t lzma2_decoder_init(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  if (!v9)
  {
    v9 = lzma_alloc(0xB8uLL, a2);
    if (!v9)
    {
      return 5;
    }

    *a1 = v9;
    a1[1] = lzma2_decode;
    a1[4] = lzma2_decoder_end;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 5) = 0;
  }

  *v9 = 0;
  v10 = 1;
  v9[64] = 1;
  if (*(a4 + 8))
  {
    v10 = *(a4 + 16) == 0;
  }

  v9[65] = v10;
  v11 = v9 + 8;

  return lzma_lzma_decoder_create(v11, a2, a4, a5);
}

uint64_t lzma_lzma2_props_decode(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (a4 != 1)
  {
    return 8;
  }

  if (*a3 > 0x28u)
  {
    return 8;
  }

  v7 = lzma_alloc(0x70uLL, a2);
  if (!v7)
  {
    return 5;
  }

  v8 = v7;
  result = 0;
  v9 = *a3;
  v10 = v9 == 40;
  v11 = (v9 & 1 | 2) << ((*a3 >> 1) + 11);
  if (v10)
  {
    v11 = -1;
  }

  *v8 = v11;
  v8[1] = 0;
  *(v8 + 4) = 0;
  *a1 = v8;
  return result;
}

uint64_t lzma2_decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v10 = *a4;
            v11 = *a1;
            if (a5 > *a4)
            {
              break;
            }

            if (v11 != 6)
            {
              return 0;
            }

LABEL_8:
            result = (*(a1 + 16))(*(a1 + 8), a2, a3, a4, a5);
            v13 = *a4 - v10;
            v14 = *(a1 + 56);
            if (v14 < v13)
            {
              return 9;
            }

            *(a1 + 56) = v14 - v13;
            if (result != 1)
            {
              return result;
            }

            if (v14 != v13)
            {
              return 9;
            }

            *a1 = 0;
          }

          result = 11;
          if (v11 <= 3)
          {
            break;
          }

          if (v11 > 5)
          {
            if (v11 == 6)
            {
              goto LABEL_8;
            }

            if (v11 != 7)
            {
              return result;
            }

            v15 = *(a1 + 56);
            if (a5 - *a4 <= v15)
            {
              v16 = a5;
            }

            else
            {
              v16 = v15 + v10;
            }

            v17 = lzma_bufcpy(a3, a4, v16, *a2, (a2 + 8), *(a2 + 24));
            *(a1 + 56) = v15 - v17;
            v18 = *(a2 + 8);
            if (v18 > *(a2 + 16))
            {
              *(a2 + 16) = v18;
            }

            if (v15 != v17)
            {
              return 0;
            }

            *a1 = 0;
          }

          else if (v11 == 4)
          {
            *a4 = v10 + 1;
            *(a1 + 56) += *(a3 + v10) + 1;
            *a1 = *(a1 + 4);
          }

          else
          {
            *a4 = v10 + 1;
            if (lzma_lzma_lclppb_decode((a1 + 72), *(a3 + v10)))
            {
              return 9;
            }

            (*(a1 + 24))(*(a1 + 8), a1 + 72);
            *a1 = 6;
          }
        }

        if (v11 <= 1)
        {
          break;
        }

        *a4 = v10 + 1;
        if (v11 == 2)
        {
          *(a1 + 48) += *(a3 + v10) + 1;
          *a1 = 3;
          (*(a1 + 32))(*(a1 + 8));
        }

        else
        {
          *(a1 + 56) = *(a3 + v10) << 8;
          *a1 = 4;
        }
      }

      if (!v11)
      {
        break;
      }

      if (v11 != 1)
      {
        return result;
      }

      *a4 = v10 + 1;
      *(a1 + 48) += *(a3 + v10) << 8;
      *a1 = 2;
    }

    v19 = *(a3 + v10);
    *a4 = v10 + 1;
    if (!v19)
    {
      return 1;
    }

    if (v19 > 0xDF || v19 == 1)
    {
      *(a1 + 64) = 257;
      v21 = 1;
    }

    else
    {
      v21 = *(a1 + 65);
      if (v21)
      {
        return 9;
      }
    }

    if ((v19 & 0x80) != 0)
    {
      *(a1 + 48) = (v19 & 0x1F) << 16;
      *a1 = 1;
      if (v19 < 0xC0)
      {
        if (*(a1 + 64))
        {
          return 9;
        }

        *(a1 + 4) = 6;
        if (v19 < 0xA0)
        {
          if (v21)
          {
            goto LABEL_49;
          }
        }

        else
        {
          (*(a1 + 24))(*(a1 + 8), a1 + 72);
          if (*(a1 + 65))
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        *(a1 + 64) = 0;
        *(a1 + 4) = 5;
        if (v21)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      if (v19 > 2)
      {
        return 9;
      }

      *a1 = 0x700000003;
      if (v21)
      {
LABEL_49:
        result = 0;
        *(a1 + 65) = 0;
        *(a2 + 40) = 1;
        return result;
      }
    }
  }
}

void lzma2_decoder_end(void **a1, uint64_t a2)
{
  lzma_free(a1[1], a2);

  lzma_free(a1, a2);
}

uint64_t lzma_stream_decoder_mt(void *a1, int8x16_t *a2)
{
  v4 = lzma_strm_init(a1);
  if (!v4)
  {
    v4 = stream_decoder_mt_init(a1[7], a1[6], a2);
    if (v4)
    {
      lzma_end(a1);
    }

    else
    {
      v5 = a1[7];
      *(v5 + 96) = 1;
      *(v5 + 99) = 1;
    }
  }

  return v4;
}

uint64_t stream_decoder_mt_init(uint64_t a1, uint64_t a2, int8x16_t *a3)
{
  if ((a3->i32[1] - 16385) < 0xFFFFC000)
  {
    return 8;
  }

  if (a3->i32[0] > 0x3Fu)
  {
    return 8;
  }

  if (*(a1 + 16) != stream_decoder_mt_init)
  {
    lzma_next_end(a1, a2);
  }

  *(a1 + 16) = stream_decoder_mt_init;
  v7 = *a1;
  if (!*a1)
  {
    v15 = lzma_alloc(0x700uLL, a2);
    if (v15)
    {
      v7 = v15;
      *a1 = v15;
      if (!pthread_mutex_init((v15 + 552), 0))
      {
        v7[166] = 0;
        if (!pthread_cond_init((v7 + 154), 0))
        {
          *(a1 + 24) = stream_decode_mt;
          *(a1 + 32) = stream_decoder_mt_end;
          *(a1 + 48) = stream_decoder_mt_get_check;
          *(a1 + 56) = stream_decoder_mt_memconfig;
          *(a1 + 40) = stream_decoder_mt_get_progress;
          *(v7 + 37) = -1;
          *(v7 + 122) = 0u;
          *(v7 + 126) = 0u;
          *(v7 + 130) = 0u;
          *(v7 + 134) = 0u;
          *(v7 + 1) = 0;
          *(v7 + 2) = -1;
          *(v7 + 6) = 0u;
          *(v7 + 10) = 0u;
          *(v7 + 14) = 0u;
          *(v7 + 18) = 0u;
          *(v7 + 86) = 0;
          *(v7 + 54) = 0;
          v7[114] = 0;
          *(v7 + 58) = 0;
          *(v7 + 59) = 0;
          goto LABEL_7;
        }

        pthread_mutex_destroy((v7 + 138));
      }

      lzma_free(v7, a2);
    }

    return 5;
  }

LABEL_7:
  lzma_filters_free(v7 + 37, a2);
  threads_end(v7, a2);
  *v7 = 0;
  *(v7 + 111) = 0;
  *(v7 + 60) = 0;
  *(v7 + 174) = 0u;
  *(v7 + 91) = 0;
  *(v7 + 93) = 0;
  *(v7 + 92) = 0;
  v7[110] = a3[1].i32[0];
  v8 = a3[4];
  v9 = vcgtq_u64(v8, vdupq_n_s64(1uLL));
  v10 = vsubq_s64(vandq_s8(v8, v9), vmvnq_s8(v9));
  *(v7 + 42) = v10;
  if (v8.i64[0] > v10.i64[1])
  {
    *(v7 + 84) = v10.i64[1];
  }

  v11 = a3->u8[0];
  *(v7 + 752) = v11 & 1;
  v12 = *&vshl_u16(vdup_n_s16(v11), 0xFFFDFFFCFFFEFFFFLL) & 0xFF01FF01FF01FF01;
  *(v7 + 753) = vuzp1_s8(v12, v12).u32[0];
  *(v7 + 757) = (v11 & 0x20) != 0;
  *(v7 + 379) = 1;
  *(v7 + 95) = 0;
  v13 = a3->u32[1];
  v7[113] = v13;
  result = lzma_outq_init((v7 + 122), a2, v13);
  if (!result)
  {
    v14 = lzma_index_hash_init(*(v7 + 54), a2);
    *(v7 + 54) = v14;
    if (v14)
    {
      result = 0;
      *v7 = 0;
      *(v7 + 95) = 0;
      return result;
    }

    return 5;
  }

  return result;
}

uint64_t stream_decode_mt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, int a9)
{
  v9 = a8;
  v13 = a4;
  v86 = 0;
  v81 = 1;
  if (a9 != 3)
  {
    if (*a4 == a5)
    {
      v81 = *(a1 + 759) ^ 1;
    }

    else
    {
      v81 = 0;
    }
  }

  v87 = 0uLL;
  v17 = (a1 + 760);
  v80 = (a1 + 88);
  v78 = (a1 + 296);
  *(a1 + 759) = 0;
  v18 = *a1;
  v82 = (a1 + 760);
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            while (1)
            {
              v19 = 11;
              if (v18 <= 5)
              {
                break;
              }

              if (v18 <= 8)
              {
                v23 = v9;
                if (v18 == 6)
                {
                  goto LABEL_26;
                }

                if (v18 == 7)
                {
                  v24 = read_output_and_wait(a1, a2, a6, a7, v9, 0, 1, &v87, &v86);
                  if (v24)
                  {
                    return v24;
                  }

                  v13 = a4;
                  if (*(a1 + 536))
                  {
                    return 0;
                  }

                  *a1 = 8;
                }

                else
                {
                  v13 = a4;
                }

                v28 = *v13;
                if (*v13 >= a5)
                {
                  return 0;
                }

                v24 = lzma_index_hash_decode(*(a1 + 432), a3, v13, a5);
                v29 = *v13;
                *(a1 + 736) += *v13 - v28;
                if (v24 != 1)
                {
                  return v24;
                }

                *a1 = 9;
                v17 = v82;
                goto LABEL_39;
              }

              if (v18 == 9)
              {
                v29 = *v13;
LABEL_39:
                lzma_bufcpy(a3, v13, a5, a1 + 768, v17, 12);
                *(a1 + 736) += *v13 - v29;
                if (*(a1 + 760) < 0xCuLL)
                {
                  return 0;
                }

                *v17 = 0;
                v85 = 0;
                memset(v84, 0, sizeof(v84));
                v30 = lzma_stream_footer_decode(v84, a1 + 768);
                if (v30)
                {
                  if (v30 == 7)
                  {
                    return 9;
                  }

                  else
                  {
                    return v30;
                  }
                }

                v31 = lzma_index_hash_size(*(a1 + 432));
                if (v31 != *(&v84[0] + 1))
                {
                  return 9;
                }

                v24 = lzma_stream_flags_compare(a1 + 376, v84);
                if (v24)
                {
                  return v24;
                }

                if ((*(a1 + 756) & 1) == 0)
                {
                  return 1;
                }

                *a1 = 10;
                v9 = a8;
                goto LABEL_45;
              }

              if (v18 != 10)
              {
                if (v18 != 11)
                {
                  return v19;
                }

                if (*(a1 + 757))
                {
                  return *(a1 + 448);
                }

                v24 = read_output_and_wait(a1, a2, a6, a7, v9, 0, 1, &v87, &v86);
                if (v24)
                {
                  return v24;
                }

                if (!*(a1 + 536))
                {
                  return *(a1 + 448);
                }

                return 0;
              }

LABEL_45:
              v32 = *v13;
              if (*v13 >= a5)
              {
LABEL_119:
                if (a9 == 3)
                {
                  if (*v17)
                  {
                    return 9;
                  }

                  else
                  {
                    return 1;
                  }
                }

                return 0;
              }

              while (!*(a3 + v32))
              {
                *v13 = ++v32;
                ++*(a1 + 736);
                *(a1 + 760) = (*(a1 + 760) + 1) & 3;
                if (a5 == v32)
                {
                  goto LABEL_119;
                }
              }

              if (*v17)
              {
                *v13 = v32 + 1;
                ++*(a1 + 736);
                return 9;
              }

              v33 = lzma_index_hash_init(*(a1 + 432), a2);
              *(a1 + 432) = v33;
              if (!v33)
              {
                return 5;
              }

              v18 = 0;
              *a1 = 0;
              *(a1 + 760) = 0;
            }

            if (v18 <= 2)
            {
              break;
            }

            if (v18 == 3)
            {
              goto LABEL_88;
            }

            if (v18 == 4)
            {
              goto LABEL_107;
            }

            v24 = read_output_and_wait(a1, a2, a6, a7, v9, 0, 1, &v87, &v86);
            if (v24)
            {
              return v24;
            }

            if (*(a1 + 536))
            {
              return 0;
            }

            lzma_outq_clear_cache(a1 + 488, a2);
            threads_end(a1, a2);
            v19 = lzma_block_decoder_init(a1 + 8, a2, v80);
            lzma_filters_free(v78, a2);
            *(a1 + 120) = 0;
            if (v19)
            {
              return v19;
            }

            v23 = v9;
            *(a1 + 688) = *(a1 + 712);
            *a1 = 6;
LABEL_26:
            v25 = *a4;
            v76 = *a7;
            v24 = (*(a1 + 32))(*(a1 + 8), a2, a3, a4, a5, a6, a7, v23, a9);
            *(a1 + 736) += *a4 - v25;
            *(a1 + 744) += *a7 - v76;
            if (v24 != 1)
            {
              return v24;
            }

            v26 = *(a1 + 432);
            v27 = lzma_block_unpadded_size(v80);
            v24 = lzma_index_hash_append(v26, v27, *(a1 + 112));
            if (v24)
            {
              return v24;
            }

            v18 = 1;
            *a1 = 1;
            v9 = v23;
            v17 = v82;
            v13 = a4;
          }

          if (!v18)
          {
            v34 = *v13;
            lzma_bufcpy(a3, v13, a5, a1 + 768, v17, 12);
            *(a1 + 736) += *v13 - v34;
            if (*(a1 + 760) < 0xCuLL)
            {
              return 0;
            }

            *v17 = 0;
            v35 = lzma_stream_header_decode(a1 + 376, a1 + 768);
            if (v35)
            {
              v19 = v35;
              if (v35 == 7)
              {
                if (*(a1 + 758) == 1)
                {
                  return 7;
                }

                else
                {
                  return 9;
                }
              }

              return v19;
            }

            *(a1 + 758) = 0;
            v36 = *(a1 + 392);
            *(a1 + 96) = v36;
            *a1 = 1;
            if (*(a1 + 752) == 1 && !v36)
            {
              return 2;
            }

            if (*(a1 + 753) == 1 && !lzma_check_is_supported(v36))
            {
              return 3;
            }

            if (*(a1 + 754))
            {
              return 4;
            }

LABEL_59:
            v37 = *v13;
            if (*v13 >= a5)
            {
              v39 = *v13;
              goto LABEL_67;
            }

            if (*v17)
            {
              v38 = *(a1 + 92);
            }

            else
            {
              if (!*(a3 + v37))
              {
                goto LABEL_75;
              }

              v38 = 4 * *(a3 + v37) + 4;
              *(a1 + 92) = v38;
            }

            lzma_bufcpy(a3, v13, a5, a1 + 768, v17, v38);
            if (*(a1 + 760) < *(a1 + 92))
            {
              v39 = *v13;
LABEL_67:
              *(a1 + 736) += v39 - v37;
              if (a9 == 3 && *(a1 + 757) == 1)
              {
LABEL_140:
                threads_stop(a1);
                return 9;
              }

              v24 = read_output_and_wait(a1, a2, a6, a7, v9, 0, v81 & 1, &v87, &v86);
              if (v24)
              {
                return v24;
              }

              if (!*(a1 + 448))
              {
                return 0;
              }

              goto LABEL_114;
            }

            *(a1 + 760) = 0;
            *(a1 + 88) = 1;
            *(a1 + 120) = v78;
            v40 = lzma_block_header_decode(v80, a2, (a1 + 768));
            if (v40)
            {
              *(a1 + 736) += *v13 - v37;
              if (v40 != 1)
              {
                if (v40 == 102)
                {
LABEL_75:
                  v18 = 7;
                  goto LABEL_115;
                }

LABEL_86:
                *(a1 + 448) = v40;
                goto LABEL_114;
              }
            }

            else
            {
              *(a1 + 288) = *(a1 + 755);
              *(a1 + 736) += *v13 - v37;
            }

            v43 = lzma_raw_decoder_memusage(v78);
            *(a1 + 712) = v43;
            if (v43 != -1)
            {
              v20 = v43;
              *a1 = 2;
              goto LABEL_12;
            }

            *(a1 + 448) = 8;
LABEL_114:
            v18 = 11;
            goto LABEL_115;
          }

          if (v18 == 1)
          {
            goto LABEL_59;
          }

          if (v18 != 2)
          {
            return v19;
          }

          v20 = *(a1 + 712);
LABEL_12:
          if (v20 > *(a1 + 680))
          {
            v24 = read_output_and_wait(a1, a2, a6, a7, v9, 0, 1, &v87, &v86);
            if (!v24)
            {
              if (*(a1 + 536))
              {
                return 0;
              }

              else
              {
                return 6;
              }
            }

            return v24;
          }

          v21 = *(a1 + 104);
          if (v21 <= 0x5555555555555555)
          {
            v22 = *(a1 + 112);
            if (v22 < 0x5555555555555556)
            {
              break;
            }
          }

          v18 = 5;
          *a1 = 5;
          v17 = v82;
        }

        v41 = ((v21 + 3) & 0x7FFFFFFFFFFFFFFCLL) + lzma_check_size(*(a1 + 392));
        *(a1 + 720) = v41;
        v42 = v22 + v41 + 64;
        if (!__CFADD__(v42, v20))
        {
          break;
        }

        v18 = 5;
        *a1 = 5;
        v9 = a8;
        v17 = v82;
      }

      v44 = v42 + v20;
      *(a1 + 728) = v44;
      v17 = v82;
      if (v44 <= *(a1 + 672))
      {
        break;
      }

      v18 = 5;
      *a1 = 5;
      v9 = a8;
    }

    lzma_next_end(a1 + 8, a2);
    *(a1 + 688) = 0;
    v45 = *(a1 + 432);
    v46 = lzma_block_unpadded_size(v80);
    v40 = lzma_index_hash_append(v45, v46, *(a1 + 112));
    v9 = a8;
    if (v40)
    {
      goto LABEL_86;
    }

    *a1 = 3;
LABEL_88:
    LOBYTE(v84[0]) = 0;
    v24 = read_output_and_wait(a1, a2, a6, a7, v9, v84, 1, &v87, &v86);
    if (v24)
    {
      return v24;
    }

    if (*(a1 + 448))
    {
      goto LABEL_114;
    }

    if (LOBYTE(v84[0]) != 1)
    {
      return 0;
    }

    v77 = a7;
    pthread_mutex_lock((a1 + 552));
    v47 = *(a1 + 696);
    v48 = *(a1 + 704);
    v49 = *(a1 + 472);
    pthread_mutex_unlock((a1 + 552));
    v50 = *(a1 + 672) - *(a1 + 728);
    v51 = v47 + v48;
    if (*(a1 + 520) + v51 > v50)
    {
      lzma_outq_clear_cache2(a1 + 488, a2, *(a1 + 112));
    }

    a7 = v77;
    if (v49 && *(a1 + 528) + v51 > v50)
    {
      v17 = v82;
      if (*(v49 + 384) > *(a1 + 712) || (v49 = *(v49 + 392)) != 0)
      {
        v52 = 0;
        do
        {
          lzma_next_end(v49 + 96, a2);
          v52 += *(v49 + 384);
          *(v49 + 384) = 0;
          v49 = *(v49 + 392);
        }

        while (v49);
      }

      else
      {
        v52 = 0;
      }
    }

    else
    {
      v52 = 0;
      v17 = v82;
    }

    pthread_mutex_lock((a1 + 552));
    *(a1 + 704) -= v52;
    *(a1 + 696) += *(a1 + 712) + *(a1 + 720);
    pthread_mutex_unlock((a1 + 552));
    thread = lzma_outq_prealloc_buf(a1 + 488, a2, *(a1 + 112));
    if (thread || (thread = get_thread(a1, a2), thread))
    {
      v19 = thread;
      goto LABEL_145;
    }

    v54 = *(a1 + 480);
    *(v54 + 384) = *(a1 + 712);
    v55 = v80[5];
    v56 = v80[6];
    v57 = v80[8];
    *(v54 + 288) = v80[7];
    *(v54 + 304) = v57;
    *(v54 + 256) = v55;
    *(v54 + 272) = v56;
    v58 = v80[1];
    v59 = v80[2];
    v60 = v80[4];
    *(v54 + 224) = v80[3];
    *(v54 + 240) = v60;
    *(v54 + 192) = v58;
    *(v54 + 208) = v59;
    *(v54 + 176) = *v80;
    v61 = v80[9];
    v62 = v80[10];
    v63 = v80[12];
    *(v54 + 352) = v80[11];
    *(v54 + 368) = v63;
    *(v54 + 320) = v61;
    *(v54 + 336) = v62;
    v64 = lzma_block_decoder_init(*(a1 + 480) + 96, a2, *(a1 + 480) + 176);
    lzma_filters_free(v78, a2);
    v65 = *(a1 + 480);
    *(v65 + 208) = 0;
    if (v64)
    {
      *(a1 + 448) = v64;
      v9 = a8;
      goto LABEL_114;
    }

    v66 = *(a1 + 720);
    *(v65 + 16) = v66;
    v67 = lzma_alloc(v66, a2);
    v68 = *(a1 + 480);
    *(v68 + 8) = v67;
    v9 = a8;
    if (!v67)
    {
      break;
    }

    buf = lzma_outq_get_buf(a1 + 488, v68);
    v70 = *(a1 + 480);
    *(v70 + 64) = buf;
    pthread_mutex_lock((v70 + 400));
    v71 = *(a1 + 480);
    *v71 = 1;
    pthread_cond_signal((v71 + 464));
    pthread_mutex_unlock((*(a1 + 480) + 400));
    pthread_mutex_lock((a1 + 552));
    lzma_outq_enable_partial_output((a1 + 488), worker_enable_partial_update);
    pthread_mutex_unlock((a1 + 552));
    *a1 = 4;
LABEL_107:
    if (a9 == 3)
    {
      v72 = *(a1 + 480);
      if (*(a1 + 757) == 1 && a5 - *v13 < v72[2] - v72[3])
      {
        goto LABEL_140;
      }
    }

    else
    {
      v72 = *(a1 + 480);
    }

    v73 = v72[2];
    *&v84[0] = v72[3];
    lzma_bufcpy(a3, v13, a5, v72[1], v84, v73);
    pthread_mutex_lock((*(a1 + 480) + 400));
    v74 = *(a1 + 480);
    *(v74 + 24) = *&v84[0];
    pthread_cond_signal((v74 + 464));
    pthread_mutex_unlock((*(a1 + 480) + 400));
    v19 = read_output_and_wait(a1, a2, a6, a7, v9, 0, v81 & 1, &v87, &v86);
    if (v19)
    {
      return v19;
    }

    if (*(a1 + 448))
    {
      goto LABEL_114;
    }

    if (*(*(a1 + 480) + 24) < *(*(a1 + 480) + 16))
    {
      return v19;
    }

    *(a1 + 480) = 0;
    v18 = 1;
LABEL_115:
    *a1 = v18;
  }

  v19 = 5;
LABEL_145:
  threads_stop(a1);
  return v19;
}