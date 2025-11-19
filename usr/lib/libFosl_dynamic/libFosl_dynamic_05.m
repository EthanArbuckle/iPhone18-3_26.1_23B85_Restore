uint64_t sub_29784CA80(uint64_t a1, uint64_t a2)
{
  v3 = sub_29780A294((a1 + 432), a2);
  sub_297809B4C(&v4, &v3);
  return v4;
}

uint64_t sub_29784CAB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_297809B0C(a1 + 432, a2);
  sub_297809B4C(&v4, &v3);
  return v4;
}

uint64_t sub_29784CB10(void *a1)
{
  sub_29784EA80(a1);

  return sub_297809C4C(a1 + 54);
}

__int16 *sub_29784CB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_297816700(a2);
  if (sub_29782D8A4((a1 + 112)) <= v4)
  {
    v5 = sub_297816700(a2);
    sub_29784D340((a1 + 112), (v5 + 1));
  }

  v6 = sub_297816700(a2);
  v7 = sub_29782D994((a1 + 112), v6);
  v8 = *(a1 + 1184);
  v9 = *v7;
  if (v8 && (*v7 & 0x200) == 0)
  {
    (*(*v8 + 16))(v11);
    sub_29784D3BC(v7, v11);
    v9 = *v7;
  }

  *v7 = v9 | 0x800;
  return v7;
}

uint64_t sub_29784CCD0(uint64_t result, int a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_29784CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v4 = sub_2977FB7B8(v7);
  v5 = sub_29781B6D0(a3, v4 + 1);
  sub_2977FB720(v7);
  sub_2977FB728(v7);
  sub_2977FD84C();
  *(v5 + sub_2977FB7B8(v7)) = 0;
  return v5;
}

BOOL sub_29784CD54(uint64_t a1)
{
  result = sub_29784DC5C(a1);
  if (result)
  {
    return (*(a1 + 8) >> 4) & 1;
  }

  return result;
}

uint64_t sub_29784CD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_29784D624(a1 + 1016, a2, a3);

  return sub_29784D62C(v3);
}

uint64_t sub_29784CDB0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v4 = a3 == a2;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (!v4)
  {
    sub_29782B128(a1, a4, 803, v9);
    v7 = sub_2977FB720(a2);
    sub_29783F028(v9, v7);
    sub_29782963C(v9);
  }

  return v5;
}

uint64_t sub_29784CE18(uint64_t a1, char a2)
{
  v4 = a2;
  sub_2977FCD50(a1, &v4);
  return a1;
}

uint64_t sub_29784CE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, const void **a6, const void **a7)
{
  v66 = *MEMORY[0x29EDCA608];
  v63[0] = a2;
  v63[1] = a3;
  v12 = sub_2978044F0(v63, 0x2Fu, 0);
  if (v12 != -1)
  {
    v13 = v12;
    v14 = sub_2977FB720(a4);
    v15 = j__strstr(v14, ".framework");
    if (v15)
    {
      v16 = v15[10];
      if (v16 == 92 || v16 == 47)
      {
        sub_29784D308(v62, v14, v15 + 11);
        sub_2977FB7B4(&v60, "Frameworks/");
        sub_297811C58(v62, v60, v61);
        v17 = sub_2977FB720(v63);
        v18 = sub_2977FB720(v63);
        sub_29781295C(v62, v17, (v18 + v13));
        sub_2977FB7B4(&v60, ".framework/");
        sub_297811C58(v62, v60, v61);
        v19 = sub_297805EA4(v63, 0, v13);
        v21 = sub_29784D30C(a1 + 296, v19, v20);
        if (!*sub_297819E7C(v21) || (v22 = sub_2977FB5F0(v21), sub_2977FD0D4(v62) != v22) || (v23 = sub_297829064(v21), v24 = sub_2977FD108(v62, 0), v25 = sub_2977FB5F0(v21), !memcmp(v23, v24, v25)))
        {
          if (*sub_297819E7C(v21))
          {
            if (!a6)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }

          ++*(a1 + 1204);
          v37 = *(a1 + 16);
          v38 = sub_297801F10(v62);
          v40 = sub_29782DFB8(v37, v38, v39, 1);
          if (v40)
          {
            *sub_297819E7C(v21) = v40;
            if (!a6)
            {
LABEL_11:
              sub_29784C098(&v60, v62);
              sub_2977FB7B4(&v64, "Headers/");
              sub_297811C58(&v60, v64, v65);
              if (a5)
              {
                sub_2977FD800(a5);
                v28 = sub_2977FB720(&v60);
                v29 = sub_2977FB7B8(&v60);
                sub_2977FD4F8(a5, v28, (v29 - 1));
              }

              v30 = sub_2977FB720(v63) + v13;
              v31 = sub_2977FB728(v63);
              sub_29781295C(&v60, (v30 + 1), v31);
              v32 = *(a1 + 16);
              v33 = sub_297801F10(&v60);
              v35 = sub_29782E354(v32, v33, v34, 1, 1);
              if (v35)
              {
                v36 = v35;
              }

              else
              {
                sub_29784D318(&v60, v62);
                sub_2977FB7B4(&v64, "PrivateHeaders/");
                sub_297811C58(&v60, v64, v65);
                if (a5)
                {
                  sub_2977FD800(a5);
                  v41 = sub_2977FB720(&v60);
                  v42 = sub_2977FB7B8(&v60);
                  sub_2977FD4F8(a5, v41, (v42 - 1));
                }

                v43 = sub_2977FB720(v63) + v13;
                v44 = sub_2977FB728(v63);
                sub_29781295C(&v60, (v43 + 1), v44);
                v45 = *(a1 + 16);
                v46 = sub_297801F10(&v60);
                v36 = sub_29782E354(v45, v46, v47, 1, 1);
                if (!v36)
                {
                  goto LABEL_27;
                }
              }

              v48 = *sub_29784CB58(a1, a4) & 0xC;
              v49 = sub_29784CB58(a1, v36);
              *v49 = *v49 & 0xFFF3 | v48;
              if (a7)
              {
                sub_297806E8C(v62);
                sub_29784C09C(&v64);
                v50 = *(a1 + 16);
                v51 = sub_2978059B8(v62);
                v53 = sub_29784C0A0(v50, v51, v52, &v64);
                v54 = sub_2977FB720(v53);
                sub_2977FB7B4(v59, v54);
                v55 = sub_297806BE8(v59[0], v59[1]);
                if (sub_29784B1FC(a1, v55, v56, v53, 0))
                {
                  *a7 = sub_29784C1AC(a1, v36);
                }

                sub_29784C200(&v64);
              }

LABEL_27:
              sub_297801F60(&v60);
              goto LABEL_28;
            }

LABEL_10:
            sub_2977FD800(a6);
            v26 = sub_2977FB720(v63) + v13;
            v27 = sub_2977FB728(v63);
            sub_2977FD4F8(a6, (v26 + 1), v27);
            goto LABEL_11;
          }
        }

        v36 = 0;
LABEL_28:
        sub_297801F60(v62);
        goto LABEL_29;
      }
    }
  }

  v36 = 0;
LABEL_29:
  v57 = *MEMORY[0x29EDCA608];
  return v36;
}

uint64_t *sub_29784D340(uint64_t *a1, unint64_t a2)
{
  result = sub_29782D8A4(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 32 * a2;

      return sub_29784EC7C(a1, v5);
    }
  }

  else
  {

    return sub_29784EBB8(a1, a2 - result);
  }

  return result;
}

BOOL sub_29784D3BC(__int16 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2 & 1 | *a1;
  *a1 = v5;
  v6 = (*a2 | v4) & 2 | v5 & 0xFFFD;
  *a1 = v6;
  v7 = v6 & 0xFFDF | (*a2 | v4) & 0x20;
  *a1 = v7;
  a1[1] += *(a2 + 2);
  if (!*(a1 + 1) && !*(a1 + 1))
  {
    *(a1 + 1) = *(a2 + 8);
    *(a1 + 1) = *(a2 + 4);
  }

  if ((*a2 & 0x10) != 0)
  {
    v8 = *a2 & 0xC | v7 & 0xFFF3;
    *a1 = v8;
    v9 = *a2 & 0x10 | v8 & 0xFFEF;
    *a1 = v9;
    *a1 = v9 & 0xFBFF | *a2 & 0x400;
  }

  result = sub_297806914((a1 + 8));
  if (result)
  {
    *(a1 + 1) = *(a2 + 16);
  }

  *a1 |= 0x200u;
  return result;
}

_WORD *sub_29784D4B8(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = sub_297816700(a2);
  if (sub_29782D8A4((a1 + 112)) <= v8)
  {
    v9 = sub_297816700(a2);
    sub_29784D340((a1 + 112), (v9 + 1));
  }

  v10 = sub_297816700(a2);
  v11 = sub_29782D994((a1 + 112), v10);
  if (a4)
  {
    v12 = 96;
  }

  else
  {
    v12 = 32;
  }

  *v11 = v12 | *v11 & 0xFF9F;

  return sub_29784D56C(v11, a3);
}

uint64_t sub_29784D584(uint64_t a1, uint64_t a2, int a3)
{
  ++*(a1 + 1192);
  v5 = sub_29784CB58(a1, a2);
  v6 = v5;
  v7 = *v5;
  if (a3)
  {
    *v5 = v7 | 1;
    if (v5[1])
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = sub_29784AC40(v5, *(a1 + 1176));
  if (v9 && sub_29783C230(v9))
  {
    result = 0;
    ++*(a1 + 1196);
  }

  else
  {
    ++v6[1];
    return 1;
  }

  return result;
}

uint64_t sub_29784D62C(unsigned int *a1)
{
  v2 = sub_297819E7C(a1);
  v3 = sub_2977FB5F0(a1);
  sub_2977FB7C0(&v5, v2, v3);
  return v5;
}

uint64_t sub_29784D678(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (sub_29784D7E4(a1))
  {
    sub_29782A6EC(v22);
    v20 = sub_297806980(a2, a3);
    v21 = v10;
    if (!sub_297806914(&v20))
    {
      while (1)
      {
        v12 = sub_29782DFB8(*(a1 + 16), v20, v21, 1);
        v19 = v12;
        if (!v12)
        {
          break;
        }

        if (sub_29784B318(a1, v12, a5, 0) <= 1)
        {
          v16 = sub_29780406C(v22);
          if (v16)
          {
            for (i = 0; i != v16; ++i)
            {
              v18 = sub_29782DEAC(v22, i);
              v11 = 1;
              *sub_29784D7EC(a1 + 992, v18) = 1;
            }
          }

          else
          {
            v11 = 1;
          }

          goto LABEL_4;
        }

        if (v19 != a4)
        {
          sub_2978040A4(v22, &v19);
          v20 = sub_297806980(v20, v21);
          v21 = v13;
          if (!sub_297806914(&v20))
          {
            continue;
          }
        }

        break;
      }
    }

    v11 = 0;
LABEL_4:
    sub_2977FD134(v22);
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return v11;
}

uint64_t sub_29784D80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = sub_29783CFFC(a2);
  sub_29783FF6C(a1 + 992, &v13, v12);
  sub_29783FC30(a1 + 992, v10);
  sub_29782DA30(v11, v10);
  if (sub_29782EE3C(v12, v11))
  {
    if (*(sub_2977FB720(v12) + 8))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  else if (sub_29785FFC4((a1 + 488), a2, a3) || (v7 = sub_2977FB720(a2), sub_2977FB7B4(v11, v7), (v8 = sub_29784D924(v11[0], v11[1], v13, *(a1 + 16))) != 0) && sub_29785FFC4((a1 + 488), v8, a3))
  {
    *sub_29784D7EC(a1 + 992, &v13) = 0;
    return 3;
  }

  else
  {
    v9 = sub_29784D7EC(a1 + 992, &v13);
    result = 1;
    *v9 = 1;
  }

  return result;
}

uint64_t sub_29784D924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_297806BB4(a1, a2);
  v8 = v7;
  v9 = sub_2977FB720(a3);
  sub_2977FB7B4(&v18, v9);
  sub_297807A08(v20, v18, v19);
  sub_2977FB7B4(&v18, "module.map");
  if (sub_297804D28(v6, v8, v18, v19))
  {
    v10 = "module_private.map";
  }

  else
  {
    sub_2977FB7B4(&v18, "module.modulemap");
    if (!sub_297804D28(v6, v8, v18, v19))
    {
      v13 = 0;
      goto LABEL_7;
    }

    v10 = "module.private.modulemap";
  }

  sub_2978036E0(&v18, v10);
  sub_2978036E0(v17, &byte_2978FC3E5);
  sub_2978036E0(v16, &byte_2978FC3E5);
  sub_2978036E0(v15, &byte_2978FC3E5);
  sub_297806664(v20, &v18, v17, v16, v15);
  v11 = sub_2978059B8(v20);
  v13 = sub_29782E354(a4, v11, v12, 0, 1);
LABEL_7:
  sub_297801F60(v20);
  return v13;
}

uint64_t sub_29784DA74(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2977FB720(a2);
  sub_2977FB7B4(&v19, v6);
  sub_297807A08(v21, v19, v20);
  if (a3)
  {
    sub_2978036E0(&v19, "Modules");
    sub_2978036E0(v18, &byte_2978FC3E5);
    sub_2978036E0(v17, &byte_2978FC3E5);
    sub_2978036E0(v16, &byte_2978FC3E5);
    sub_297806664(v21, &v19, v18, v17, v16);
  }

  sub_2978036E0(&v19, "module.modulemap");
  sub_2978036E0(v18, &byte_2978FC3E5);
  sub_2978036E0(v17, &byte_2978FC3E5);
  sub_2978036E0(v16, &byte_2978FC3E5);
  sub_297806664(v21, &v19, v18, v17, v16);
  v7 = *(a1 + 16);
  v8 = sub_2978059B8(v21);
  v10 = sub_29782E354(v7, v8, v9, 0, 1);
  if (!v10)
  {
    v11 = sub_2977FB720(a2);
    sub_2977FB7B4(&v19, v11);
    sub_29784B428(v21, v19, v20);
    sub_2978036E0(&v19, "module.map");
    sub_2978036E0(v18, &byte_2978FC3E5);
    sub_2978036E0(v17, &byte_2978FC3E5);
    sub_2978036E0(v16, &byte_2978FC3E5);
    sub_297806664(v21, &v19, v18, v17, v16);
    v12 = *(a1 + 16);
    v13 = sub_2978059B8(v21);
    v10 = sub_29782E354(v12, v13, v14, 0, 1);
  }

  sub_297801F60(v21);
  return v10;
}

uint64_t sub_29784DC7C(uint64_t a1)
{
  result = sub_29780AAE8((a1 + 24));
  v3 = result;
  if (result)
  {
    v4 = 0;
    do
    {
      v5 = sub_29780AAF8((a1 + 24), v4);
      result = sub_29784B2D8(v5);
      if (result)
      {
        v6 = sub_29780AAF8((a1 + 24), v4);
        v7 = sub_29784B3F4(v6);
        v8 = sub_29780AAF8((a1 + 24), v4);
        v9 = sub_29784B2F8(v8);
        v10 = sub_29780AAF8((a1 + 24), v4);
        v11 = sub_29784B19C(v10);
        result = sub_29784B318(a1, v7, v9, v11);
      }

      ++v4;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_29784DD2C(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = *(result + 8) & 0xDF | v2;
  return result;
}

const void **sub_29784DD60(const void **a1, void *a2)
{
  sub_2977FE408();
  if (!sub_297806904(a2))
  {
    sub_297807D80(a1, a2);
  }

  return a1;
}

uint64_t sub_29784DDA8(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29784DE18(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_297808AB4(v4, a2);
  v5 = sub_2977FB7B8(a1) + 24;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_29784DE18(void *a1, unint64_t a2)
{
  v4 = sub_29784DF10(a1);
  v5 = sub_29783E83C(a1);
  v6 = sub_2977FB4FC(v4 + 2);
  if (v6 <= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc(24 * v7, 0x1012040EC159624uLL);
  v9 = sub_2977FB720(a1);
  v10 = sub_2977FB7B8(a1);
  sub_29784DF54(v9, v10, v8);
  v11 = sub_2977FB720(a1);
  v12 = sub_2977FB7B8(a1);
  sub_29784DFAC(v11, v12);
  if (!sub_2977FDA84(a1))
  {
    v13 = sub_2977FB720(a1);
    free(v13);
  }

  sub_2977FD5DC(a1, v8 + 24 * v5);
  *a1 = v8;
  result = sub_2977FB720(a1);
  a1[2] = result + 24 * v7;
  return result;
}

uint64_t sub_29784DF54(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      result = sub_297808AB4(a3, v5);
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return result;
}

void sub_29784DFAC(std::string *a1, std::string *a2)
{
  if (a2 != a1)
  {
    v2 = a2;
    do
    {
      std::string::~string(--v2);
    }

    while (v2 != a1);
  }
}

void *sub_29784DFF4(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29784DFAC(v2, v3);
  if (!sub_2977FDA84(a1))
  {
    v4 = sub_2977FB720(a1);
    free(v4);
  }

  return a1;
}

uint64_t *sub_29784E080(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  if (sub_297844348(a1, a2, &v6))
  {
    return v6;
  }

  v5 = 0;
  return sub_297846230(a1, a2, &v5, v6);
}

uint64_t sub_29784E0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a2;
  v12[1] = a3;
  v11[0] = a4;
  v11[1] = a5;
  sub_297804550(v12, v11, v8);
  v9 = sub_29784E138(a1, v8);
  v10 = v6;
  return sub_29781AD54(&v9);
}

uint64_t sub_29784E138(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29780ED7C(a1, *a2, a2[1]);
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 16);
  }

  *(v5 + 8 * v6) = sub_29784E22C(*a2, a2[1], (a1 + 24), a2[2], a2[3]);
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_29784E22C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v15[0] = a1;
  v15[1] = a2;
  v8 = sub_2977FB7B8(v15);
  v9 = sub_29781C25C();
  v10 = sub_297803E1C(a3, (v8 + 25), v9);
  v11 = sub_29784E2D0(v10, v8, a4, a5);
  v12 = sub_297829064(v11);
  v13 = sub_2977FB720(v15);
  memcpy(v12, v13, v8);
  *(v12 + v8) = 0;
  return v10;
}

_DWORD *sub_29784E2D4(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_29780819C(a1, a2);
  *(result + 1) = a3;
  *(result + 2) = a4;
  return result;
}

uint64_t sub_29784E300(uint64_t a1, int a2)
{
  v3 = sub_29780ECDC(a1, a2, 24);
  sub_297817C28((v3 + 24));
  return a1;
}

uint64_t sub_29784E334(uint64_t a1)
{
  v2 = sub_29781BBE0(a1, 24);
  sub_297817C28((v2 + 24));
  return a1;
}

uint64_t sub_29784E390(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return sub_29784E3A0();
  }

  return result;
}

void sub_29784E3A4(_DWORD *a1)
{
  if ((*a1)-- == 1)
  {
    v3 = sub_29784E3E0(a1);

    j__free(v3);
  }
}

uint64_t sub_29784E3E4(uint64_t a1)
{
  sub_297809B8C(a1 + 1088);
  sub_29784E450(a1 + 632);
  sub_29784E450(a1 + 176);
  std::string::~string((a1 + 128));
  std::string::~string((a1 + 104));
  std::string::~string((a1 + 80));
  sub_29784AE80(a1 + 56);
  sub_29784AE80(a1 + 32);
  std::string::~string((a1 + 8));
  return a1;
}

uint64_t sub_29784E454(uint64_t a1)
{
  sub_297809B8C(a1 + 432);

  return sub_29784E490(a1);
}

uint64_t sub_29784E494(uint64_t a1)
{
  sub_29784E4D0(a1 + 408);

  return sub_29784C200(a1);
}

uint64_t sub_29784E4DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_29784E510(a1, v3);
  return a1;
}

uint64_t sub_29784E510(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    sub_29784E510(result, *a2);
    sub_29784E510(v3, a2[1]);
    v5 = nullsub_1(v3, v4);
    v7 = nullsub_1(a2 + 4, v6);
    sub_29784E58C(v5, v7);

    return sub_297809C98(v5, a2, 1);
  }

  return result;
}

uint64_t sub_29784E594(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29784E5D4(&v3);
  return a1;
}

uint64_t *sub_29784E5D4(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29784E644(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29782D890(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29784E644(uint64_t *a1)
{
  v2 = sub_29782D8A4(a1);
  sub_29784E690(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29784E690(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29784E6EC(v3, v5))
  {
    i -= 32;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29784E6F8(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29784E738(&v3);
  return a1;
}

uint64_t *sub_29784E738(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29784E7A8(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_29782D890(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29784E7A8(uint64_t *a1)
{
  v2 = sub_29782D8A4(a1);
  sub_29784E7F4(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29784E7F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = j_nullsub_1(v3, v5))
  {
    i -= 32;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29784E850(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_29784E8D8(v5, a1 + 24);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  sub_297818154(a1 + 24);
  return a1;
}

uint64_t sub_29784E8D8(unsigned int *a1, uint64_t a2)
{
  sub_2977FB5F0(a1);

  return nullsub_1(a2, a1);
}

void sub_29784E948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_29784E960(a1, v3);
  }
}

void sub_29784E960(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29784E994(a2);

    j__free(v2);
  }
}

uint64_t sub_29784E998(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_29784EA20(v5, a1 + 24);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  sub_297818154(a1 + 24);
  return a1;
}

uint64_t sub_29784EA20(unsigned int *a1, uint64_t a2)
{
  sub_2977FB5F0(a1);
  sub_29782D764(a1);

  return nullsub_1(a2, a1);
}

uint64_t sub_29784EA80(void *a1)
{
  sub_29784EAB8(a1);

  return sub_29784EAFC(a1 + 51);
}

void sub_29784EAB8(void *a1)
{
  v2 = sub_2977FB720(a1);
  v3 = sub_2977FB7B8(a1);
  sub_29784DFAC(v2, v3);
  a1[1] = *a1;
}

void *sub_29784EB00(uint64_t a1, uint64_t a2)
{
  v3 = sub_297818B70(a1, a2);
  sub_29784E510(a1, v3);
  *sub_297806460(a1) = 0;
  v5 = sub_297818B94(a1, v4);
  *nullsub_1(a1, v6) = v5;
  result = sub_297818B94(a1, v7);
  *result = 0;
  return result;
}

void *sub_29784EB60(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 1;
  return result;
}

uint64_t sub_29784EB70(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408();
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t *sub_29784EBB8(uint64_t *a1, unint64_t a2)
{
  if (a2 <= (a1[2] - a1[1]) >> 5)
  {

    return sub_29784ECD4(a1, a2);
  }

  else
  {
    v4 = sub_29782D8A4(a1);
    v5 = sub_29784ED48(a1, v4 + a2);
    v6 = sub_29782D8A4(a1);
    sub_29784EDC0(v8, v5, v6, a1);
    sub_29784EDC4(v8, a2);
    sub_29784EE38(a1, v8);
    return sub_29784EF1C(v8);
  }
}

uint64_t sub_29784EC7C(void *a1, uint64_t a2)
{
  v4 = sub_29782D8A4(a1);
  sub_29784E7F4(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_29784ECD4(uint64_t a1, uint64_t a2)
{
  sub_29784EF20(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_29784EF24(a1, v6);
    v4 += 32;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

unint64_t sub_29784ED48(void *a1, unint64_t a2)
{
  v9 = a2;
  v4 = sub_29784EF8C();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  v6 = sub_29782D890(a1);
  if (v6 < v5 >> 1)
  {
    v8 = 2 * v6;
    return *sub_29780338C(&v8, &v9);
  }

  return v5;
}

uint64_t sub_29784EDC4(uint64_t a1, uint64_t a2)
{
  sub_29784F09C(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_29784EF24(v5, v6);
    i = v8 + 32;
  }

  return sub_29784F0A0(&v8);
}

uint64_t sub_29784EE38(uint64_t *a1, uint64_t *a2)
{
  nullsub_1(a1, a2);
  v4 = a2[1] + *a1 - a1[1];
  v6 = nullsub_1(*a1, v5);
  v8 = nullsub_1(a1[1], v7);
  v10 = nullsub_1(v4, v9);
  sub_29780A154(a1, v6, v8, v10);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  v11 = sub_29782D8A4(a1);

  return nullsub_1(a1, v11);
}

void *sub_29784EF28(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 32 * a3;
  return result;
}

uint64_t sub_29784EF48(uint64_t a1)
{
  *a1 = *a1 & 0xF000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  sub_297804560((a1 + 16));
  return a1;
}

uint64_t sub_29784EF8C()
{
  v2 = sub_29784EFC8();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_29784EFD4(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29784F024(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 32 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 32 * a2;
  return a1;
}

uint64_t sub_29784F04C(uint64_t a1, unint64_t a2)
{
  if (sub_29784EFC8() < a2)
  {
    sub_29780339C();
  }

  return sub_29784F094(a2);
}

void *sub_29784F0A4(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 32 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t *sub_29784F0C8(uint64_t *a1)
{
  sub_29784F11C(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29784F124(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29784F13C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 32;
      v6 = nullsub_1(v2 - 32, a2);
      result = j_nullsub_1(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29784F1A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29784821C(v11, &v10, v7);
  v8 = sub_29784F1FC(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_29784F1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_29780ED7C(a1, *a2, *(a2 + 8));
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 16);
  }

  *(v5 + 8 * v6) = sub_29784F2F0(*a2, *(a2 + 8), (a1 + 24), *(a2 + 16));
  ++*(a1 + 12);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_29784F2F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v13[0] = a1;
  v13[1] = a2;
  v6 = sub_2977FB7B8(v13);
  v7 = sub_297811B28();
  v8 = sub_297803E1C(a3, (v6 + 9), v7);
  v9 = sub_2978482C0(v8, v6, a4);
  v10 = sub_297819E7C(v9);
  v11 = sub_2977FB720(v13);
  memcpy(v10, v11, v6);
  *(v10 + v6) = 0;
  return v8;
}

uint64_t sub_29784F384(uint64_t a1)
{
  if (sub_29784FF60(a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

double sub_29784F3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 392) = a3;
  *(a1 + 120) = a2;
  *(a1 + 128) = a4;
  if (a2 == a3)
  {
    sub_2977FB7C0(v10, a2, a4 - a2);
    sub_2978102C8(v9, v10[0], v10[1]);
    v8 = 3;
    v5 = sub_29781258C(v9, "﻿", &v8);
    v7 = 0;
    *(a1 + 392) += sub_297811CC0(v5, &v7);
  }

  *(a1 + 384) = 0;
  *(a1 + 404) = 0;
  *&result = 257;
  *(a1 + 400) = 257;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  return result;
}

uint64_t sub_29784F45C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  *sub_29787D714(a1, a4, a2) = &unk_2A1E553D8;
  v8 = sub_29781F408(a4);
  *(a1 + 136) = sub_2978423A8(v8, a2);
  v9 = sub_29783CFFC(a4);
  sub_29784F520(a1 + 144, v9);
  v10 = sub_2977FB7B8(a3);
  v11 = sub_2977FB7B8(a3);
  v12 = sub_2977FD5B0(a3);
  sub_29784F3BC(a1, v10, v11, v12);
  sub_29784F524(a1);
  return a1;
}

uint64_t sub_29784F524(uint64_t a1)
{
  if ((*(a1 + 148) & 0x80) != 0)
  {

    return sub_29784F598(a1, 1);
  }

  else
  {
    v2 = sub_29784F5B4(*(a1 + 8));

    return sub_29784F5AC(a1, v2);
  }
}

uint64_t sub_29784F598(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(result + 385) = v2;
  return result;
}

uint64_t sub_29784F5C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_29784F654(a1);
  *v12 = &unk_2A1E553D8;
  *(v12 + 136) = a2;
  sub_29784F520(v12 + 144, a3);
  sub_29784F3BC(a1, a4, a5, a6);
  *(a1 + 26) = 1;
  return a1;
}

uint64_t sub_29784F654(uint64_t a1)
{
  *a1 = &unk_2A1E55798;
  *(a1 + 8) = 0;
  sub_297829180((a1 + 16));
  *(a1 + 23) = 0;
  *(a1 + 20) = 0;
  sub_2978560E0(a1 + 32);
  sub_29780B1B8(a1 + 64);
  return a1;
}

uint64_t sub_29784F6B8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *sub_29784F654(a1) = &unk_2A1E553D8;
  *(a1 + 136) = sub_2978423A8(a4, a2);
  sub_29784F520(a1 + 144, a5);
  v10 = sub_2977FB7B8(a3);
  v11 = sub_2977FB7B8(a3);
  v12 = sub_2977FD5B0(a3);
  sub_29784F3BC(a1, v10, v11, v12);
  *(a1 + 26) = 1;
  return a1;
}

uint64_t sub_29784F77C(int a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v10 = sub_29781F408(a5);
  v11 = sub_29783E548(v10, a1);
  v12 = sub_29783E5C0(v10, v11, 0);
  v13 = sub_2977FA198(408);
  sub_29784F590(v13, v11, v12, a5);
  v14 = sub_297841788(v10, a1, 0);
  *(v13 + 392) = v14;
  *(v13 + 128) = &v14[a4];
  v15 = sub_2978423A8(v10, v11);
  *(v13 + 136) = sub_29783FDB8(v10, v15, a2, a3, a4, 0, 0);
  *(v13 + 24) = 1;
  *(v13 + 384) = 1;
  return v13;
}

char *sub_29784F874@<X0>(std::string *__str@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  std::string::basic_string(a3, __str);
  result = sub_2978032A4(a3);
  v6 = result;
  if (result)
  {
    v7 = 0;
    if (a2)
    {
      v8 = 39;
    }

    else
    {
      v8 = 34;
    }

    do
    {
      if (*sub_29780327C(a3, v7) == 92 || (result = sub_29780327C(a3, v7), v8 == *result))
      {
        v10 = sub_29780739C(a3);
        v11 = sub_29780C7E0(&v10, v7);
        sub_297809B4C(&__pos, &v11);
        v9.__i_ = __pos.__i_;
        result = std::string::insert(a3, v9, 92).__i_;
        ++v7;
        ++v6;
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

_BYTE *sub_29784F960(uint64_t a1)
{
  result = sub_2977FD0D4(a1);
  v3 = result;
  if (result)
  {
    v4 = 0;
    do
    {
      if (*sub_2977FD108(a1, v4) == 92 || (result = sub_2977FD108(a1, v4), *result == 34))
      {
        v5 = sub_2977FB720(a1);
        v6 = 92;
        result = sub_29784FA04(a1, (v5 + v4++), &v6);
        ++v3;
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t sub_29784FA04(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = a2;
  if (sub_2977FB7B8(a1) == a2)
  {
    sub_2977FCD50(a1, a3);
    return sub_2977FB7B8(a1) - 1;
  }

  else
  {
    if (*(a1 + 8) >= *(a1 + 16))
    {
      v6 = &v4[-sub_2977FB720(a1)];
      sub_2977FD5B8(a1, 0);
      v4 = &v6[sub_2977FB720(a1)];
    }

    v7 = sub_2977FB7B8(a1);
    *v7 = *sub_29784C06C(a1);
    sub_2977FB7B8(a1);
    sub_2977FB7B8(a1);
    sub_2978198E4();
    v8 = sub_2977FB7B8(a1);
    sub_2977FD5DC(a1, v8 + 1);
    if (v4 <= a3 && *(a1 + 8) > a3)
    {
      ++a3;
    }

    *v4 = *a3;
  }

  return v4;
}

unint64_t sub_29784FB38(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v8 = sub_297847BE0(a1);
  v9 = &a2[v8];
  if (sub_29784FF04(a1, 13))
  {
    v10 = 0;
    v11 = v8;
    v12 = a2;
    while (v12 < v9)
    {
      v24 = 0;
      v13 = sub_297850524(v12, &v24, a3);
      v14 = v10 + 1;
      *(a4 + v10) = v13;
      v12 += v24;
      ++v10;
      if (v13 == 34)
      {
        goto LABEL_8;
      }
    }

    v14 = v10;
LABEL_8:
    if (v14 >= 2 && (v15 = (a4 + v14), *(a4 + v14 - 2) == 82) && *(v15 - 1) == 34)
    {
      v16 = a2 + 1;
      v17 = a2 + 1 - v12;
      v18 = &a2[v14] - v12 + 1;
      v19 = a2 - 1;
      do
      {
        v20 = v19[v11];
        --v17;
        --v18;
        --v16;
        --v19;
      }

      while (v20 != 34);
      memcpy(v15, v12, v11 + v17);
      v14 = v11 + v18;
      a2 = &v16[v11];
    }

    else
    {
      a2 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  if (a2 >= v9)
  {
    return v14;
  }

  do
  {
    v23 = 0;
    v21 = sub_297850524(a2, &v23, a3);
    result = v14 + 1;
    *(a4 + v14) = v21;
    a2 += v23;
    ++v14;
  }

  while (a2 < v9);
  return result;
}

void sub_29784FCB0(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X3>, std::string *a5@<X8>)
{
  v18 = 0;
  v10 = sub_2977FB5F0(a1);
  v11 = sub_297841788(a2, v10, &v18);
  v12 = v18;
  if (a4)
  {
    *a4 = v18;
  }

  if (v12)
  {
    sub_297802744(a5);
  }

  else if (sub_2977FB568(a1))
  {
    sub_297802744(a5);
    v13 = sub_297847BE0(a1);
    sub_297803274(a5, v13);
    v17 = sub_29780739C(a5);
    v14 = sub_2977FB720(&v17);
    v15 = sub_29784FB38(a1, v11, a3, v14);
    sub_297803274(a5, v15);
  }

  else
  {
    v16 = sub_297847BE0(a1);
    sub_297809454(a5, v11, &v11[v16]);
  }
}

unint64_t sub_29784FDA8(unsigned int *a1, uint64_t *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  if (sub_29784FF04(a1, 7))
  {
    v16[0] = sub_29784FF14(a1);
    v16[1] = v10;
    v11 = sub_2977FB720(v16);
LABEL_9:
    if (sub_29784FF60(a1))
    {
      v11 = sub_2977FB7B8(a1);
    }

    if (v11)
    {
      goto LABEL_16;
    }

    LOBYTE(v16[0]) = 0;
    v14 = sub_2977FB5F0(a1);
    v11 = sub_297841788(a3, v14, v16);
    v15 = v16[0];
    if (a5)
    {
      *a5 = v16[0];
    }

    if ((v15 & 1) == 0)
    {
LABEL_16:
      if (sub_2977FB568(a1))
      {
        return sub_29784FB38(a1, v11, a4, *a2);
      }

      else
      {
        *a2 = v11;
        return sub_297847BE0(a1);
      }
    }

    else
    {
      result = 0;
      *a2 = &byte_2978FC3E5;
    }

    return result;
  }

  if (sub_29784FF54(a1))
  {
    v11 = 0;
    goto LABEL_9;
  }

  v12 = sub_29784F384(a1);
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  *a2 = sub_297828CB8(v12);

  return sub_297828CD0(v11);
}

uint64_t sub_29784FF14(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = sub_297847BE0(a1);
  sub_2977FB7C0(&v4, v1, v2);
  return v4;
}

uint64_t sub_29784FF60(uint64_t a1)
{
  v1 = sub_2978503FC(a1);

  return sub_297856220(v1);
}

uint64_t sub_29784FF88(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  sub_29784FB00(v8);
  v6 = sub_29784FFF4(a1, v8, a2, a3, 0);
  result = 0;
  if ((v6 & 1) == 0)
  {
    return sub_297847BE0(v8);
  }

  return result;
}

uint64_t sub_29784FFF4(unsigned int a1, uint64_t a2, _DWORD *a3, uint64_t a4, char a5)
{
  v22 = *MEMORY[0x29EDCA608];
  v9 = sub_29782CF94(a3, a1);
  v10 = sub_29783E664(a3, v9);
  v20 = 0;
  v11 = v10;
  v19[0] = sub_297840A24(a3, v10, &v20);
  v19[1] = v12;
  if ((v20 & 1) != 0 || (v14 = (sub_2977FB720(v19) + HIDWORD(v10)), (a5 & 1) == 0) && sub_297850134(*v14))
  {
    result = 1;
  }

  else
  {
    v15 = sub_2978423A8(a3, v11);
    v16 = sub_2977FB720(v19);
    v17 = sub_2977FB728(v19);
    sub_29784F6B0(v21, v15, a4, v16, v14, v17);
    sub_29784F5AC(v21, 1);
    sub_29784FB04(v21, a2);
    sub_29784FCAC(v21);
    result = 0;
  }

  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29785014C(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  v13 = a1;
  if (sub_29782D9A0(&v13))
  {
    return sub_29785020C(v13, a2, a3);
  }

  v6 = sub_29784106C(a2, v13);
  v7 = v13;
  if (v6)
  {
    v8 = sub_29783E4D0(a2, v13);
    v9 = sub_29785020C(v8, a2, a3);
    v10 = sub_29783E664(a2, v8) >> 32;
    v11 = sub_29783E664(a2, v9);
    return sub_297840FC8(&v13, HIDWORD(v11) - v10);
  }

  return v7;
}

uint64_t sub_29785020C(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v5 = a1;
  v26 = *MEMORY[0x29EDCA608];
  v24 = a1;
  v23 = sub_29783E664(a2, a1);
  if (!sub_297829730(&v23))
  {
    v22 = 0;
    v21[0] = sub_297840A24(a2, v23, &v22);
    v21[1] = v6;
    if ((v22 & 1) == 0)
    {
      v7 = sub_2977FB720(v21);
      v8 = HIDWORD(v23);
      if (sub_2977FB7B8(v21) > v8)
      {
        v9 = (v7 + HIDWORD(v23));
        v10 = *v9;
        if (v10 != 10 && v10 != 13)
        {
          if (HIDWORD(v23))
          {
            for (i = HIDWORD(v23); ; --i)
            {
              if (v10 == 13 || v10 == 10)
              {
                v14 = v7 + i + 1;
                goto LABEL_19;
              }

              if (i == 1)
              {
                break;
              }

              LOBYTE(v10) = *(v7 + i - 1);
            }

            v14 = v7;
          }

          else
          {
            v14 = v7;
          }

LABEL_19:
          v15 = sub_297840FC8(&v24, -HIDWORD(v23));
          v16 = sub_2977FB728(v21);
          sub_29784F6B0(v25, v15, a3, v7, v14, v16);
          sub_29784F5AC(v25, 1);
          sub_29784FB00(v20);
          while (1)
          {
            sub_29784FB04(v25, v20);
            if (sub_297856280(v25) > v9)
            {
              break;
            }

            if (sub_2978503FC(v20) == 1)
            {
              goto LABEL_24;
            }
          }

          v17 = sub_297856280(v25);
          if (v17 - sub_297847BE0(v20) > v9)
          {
LABEL_24:
            v5 = v24;
            goto LABEL_26;
          }

          v5 = sub_2977FB5F0(v20);
LABEL_26:
          sub_29784FCAC(v25);
        }
      }
    }
  }

  v18 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_297850410(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v6 = a1;
  v14 = a1;
  v13 = 0;
  v7 = sub_297841788(a3, a1, &v13);
  if ((v13 & 1) == 0)
  {
    v8 = v7;
    if (a2 || !sub_297850510(*v7))
    {
      v9 = 0;
      if (sub_297850510(*v8))
      {
        while (a2 != v9)
        {
          v10 = *++v8;
          ++v9;
          if (!sub_297850510(v10))
          {
            a2 -= v9;
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        while (a2)
        {
          v12 = 0;
          sub_297850524(v8, &v12, a4);
          v8 += v12;
          v9 += v12;
          --a2;
        }

        if (sub_297850510(*v8))
        {
          a2 = v9;
        }

        else
        {
          a2 = v9 + sub_29785059C(v8) - v8;
        }
      }

      return sub_297840FC8(&v14, a2);
    }
  }

  return v6;
}

uint64_t sub_297850524(unsigned __int8 *a1, int *a2, void *a3)
{
  if (sub_297850510(*a1))
  {
    *a2 = 1;
    return *a1;
  }

  else
  {
    *a2 = 0;

    return sub_297851204(a1, a2, a3);
  }
}

unsigned __int8 *sub_29785059C(unsigned __int8 *a1)
{
  do
  {
    v1 = a1;
    v2 = *a1;
    if (v2 == 92)
    {
      v3 = 1;
      goto LABEL_7;
    }

    if (v2 != 63 || a1[1] != 63 || a1[2] != 47)
    {
      break;
    }

    v3 = 3;
LABEL_7:
    v4 = &a1[v3];
    v5 = sub_297850EF8(&a1[v3]);
    a1 = &v4[v5];
  }

  while (v5);
  return v1;
}

uint64_t sub_297850610(unsigned int a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v10 = a1;
  if (sub_297829730(&v10) || sub_29783C26C(&v10) && (a2 || (sub_2978506BC(v10, a3, a4, &v10) & 1) == 0))
  {
    sub_297829180(&v11);
  }

  else
  {
    v7 = sub_29784FF88(v10, a3, a4);
    if (v7 <= a2)
    {
      return v10;
    }

    else
    {
      return sub_297840FC8(&v10, v7 - a2);
    }
  }

  return v11;
}

uint64_t sub_2978506BC(unsigned int a1, _DWORD *a2, uint64_t a3, unsigned int *a4)
{
  v11 = a1;
  v7 = sub_29783E4D0(a2, a1);
  result = sub_29784FF88(v7, a2, a3);
  if (result)
  {
    v9 = sub_297840FC8(&v11, result);
    sub_297829180(&v10);
    result = sub_29784157C(a2, v9, &v10);
    if (result)
    {
      if (sub_29782D9A0(&v10))
      {
        if (a4)
        {
          *a4 = v10;
        }

        return 1;
      }

      else
      {
        return sub_2978506BC(v10, a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t sub_297850778(int a1, _DWORD *a2, uint64_t a3, unsigned int *a4)
{
  sub_297829180(&v9);
  result = sub_297841440(a2, a1, &v9);
  if (result)
  {
    if (sub_29782D9A0(&v9))
    {
      if (a4)
      {
        *a4 = v9;
      }

      return 1;
    }

    else
    {
      return sub_297850778(v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_297850804(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_297850AD4(&v29);
  v27 = sub_2978478EC(&v29);
  if (sub_297829730(&v28) || sub_297829730(&v27))
  {
    goto LABEL_3;
  }

  if (sub_29782D9A0(&v28) && sub_29782D9A0(&v27))
  {
    goto LABEL_25;
  }

  if (!sub_29783C26C(&v28) || !sub_29782D9A0(&v27))
  {
    if (sub_29782D9A0(&v28) && sub_29783C26C(&v27))
    {
      if (sub_297850C04(&v29) && !sub_2978506BC(v27, a3, a4, &v27) || sub_297850C0C(&v29) && (sub_297850778(v27, a3, a4, &v27) & 1) == 0)
      {
        goto LABEL_3;
      }

      v7 = v27;
    }

    else
    {
      sub_297829180(&v26);
      sub_297829180(&v25);
      if (!sub_297850778(v28, a3, a4, &v26) || (!sub_297850C04(&v29) || (sub_2978506BC(v27, a3, a4, &v25) & 1) == 0) && (!sub_297850C0C(&v29) || !sub_297850778(v27, a3, a4, &v25)))
      {
        v24 = 0;
        v10 = sub_29783E548(a3, v28);
        v11 = sub_29783E808(a3, v10, &v24);
        if (v24 != 1)
        {
          v12 = v11;
          v13 = sub_297819E7C(v11);
          if (sub_2978413F0(v13))
          {
            v14 = sub_29783E548(a3, v27);
            v15 = sub_29783E808(a3, v14, &v24);
            if (v24 != 1)
            {
              v16 = v15;
              v17 = sub_297819E7C(v15);
              if (sub_2978413F0(v17))
              {
                v18 = sub_297819E7C(v12);
                v23 = sub_297840F40(v18);
                v19 = sub_297819E7C(v16);
                v22 = sub_297840F40(v19);
                if (sub_297841544(&v23, &v22))
                {
                  v20 = sub_2978410C8(a3, v28);
                  sub_297850BFC(&v29, v20);
                  v21 = sub_2978410C8(a3, v27);
                  sub_297850C1C(&v29, v21);
                  v8 = sub_297850804(v29, v30, a3, a4);
                  goto LABEL_26;
                }
              }
            }
          }
        }

        goto LABEL_3;
      }

      sub_297850BFC(&v29, v26);
      v7 = v25;
    }

    sub_297850C1C(&v29, v7);
    goto LABEL_25;
  }

  if (sub_297850778(v28, a3, a4, &v28))
  {
    sub_297850BFC(&v29, v28);
LABEL_25:
    v8 = sub_297850ADC(v29, v30, a3, a4);
LABEL_26:
    v31 = v8;
    LOBYTE(v32) = v9;
    return v31;
  }

LABEL_3:
  sub_297850AD8();
  return v31;
}

uint64_t sub_297850ADC(uint64_t a1, int a2, _DWORD *a3, uint64_t a4)
{
  v16 = a1;
  v17 = a2;
  v6 = sub_297850AD4(&v16);
  v7 = sub_2978478EC(&v16);
  v15 = v7;
  if (sub_297850C04(&v16))
  {
    v15 = sub_297850610(v7, 0, a3, a4);
    if (sub_297829730(&v15))
    {
      goto LABEL_6;
    }
  }

  sub_297829180(&v14);
  v13 = 0;
  v12 = sub_29783E664(a3, v6);
  v11[0] = sub_297842D18(&v14, &v13);
  v11[1] = v8;
  sub_297842D48(v11, &v12);
  if (sub_297829730(&v14) || (LODWORD(v11[0]) = 0, !sub_2978416A8(a3, v15, v14, v11)) || v13 > LODWORD(v11[0]))
  {
LABEL_6:
    sub_297850AD8();
  }

  else
  {
    v18 = sub_2978562D8(v6, v15);
    LOBYTE(v19) = v10;
  }

  return v18;
}

uint64_t sub_297850C24(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  v18 = a2;
  v17 = sub_297850804(a1, a2, a3, a4);
  LOBYTE(v18) = v7;
  if (sub_297850D28() || (v8 = sub_297850AD4(&v17), v16 = sub_29783E664(a3, v8), sub_297829730(&v16)) || (v15 = 0, v10 = sub_2978478EC(&v17), !sub_2978416A8(a3, v10, v16, &v15)) || HIDWORD(v16) > v15 || (v14 = 0, v13[0] = sub_297840A24(a3, v16, &v14), v13[1] = v11, v14 == 1))
  {
    if (a5)
    {
      *a5 = 1;
    }

    sub_297804560(v19);
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    v19[0] = sub_297805EA4(v13, HIDWORD(v16), v15 - HIDWORD(v16));
    v19[1] = v12;
  }

  return v19[0];
}

uint64_t sub_297850D54(int a1, unsigned int a2)
{
  if ((word_2978F6800[a1] & 0xE8) != 0)
  {
    return 1;
  }

  if (a1 == 36)
  {
    return a2;
  }

  return 0;
}

uint64_t sub_297850D80(uint64_t a1, int a2, int a3)
{
  v5 = a2 - *(a1 + 120);
  if (sub_29782D9A0((a1 + 136)))
  {

    return sub_297840FC8((a1 + 136), v5);
  }

  else
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 136);

    return sub_297850E08(v7, v8, v5, a3);
  }
}

uint64_t sub_297850E08(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v7 = sub_29781F408(a1);
  v10 = sub_29783E4D0(v7, a2);
  v10 = sub_297840FC8(&v10, a3);
  v8 = sub_297841140(v7, a2);
  return sub_29783FDB8(v7, v10, v8, HIDWORD(v8), a4, 0, 0);
}

uint64_t sub_297850E94@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 8);
  v7 = sub_297850D80(a1, a2, 1);

  return sub_297850EEC(v6, v7, a3, a4);
}

uint64_t sub_297850EF8(uint64_t a1)
{
  v2 = 1;
  while (1)
  {
    v3 = *(a1 + v2 - 1);
    result = sub_297850134(v3);
    if (!result)
    {
      break;
    }

    ++v2;
    if (v3 == 13 || v3 == 10)
    {
      result = v2 - 1;
      v6 = *(a1 + result);
      if (v6 == 10 || v6 == 13)
      {
        if (v3 == v6)
        {
          return result;
        }

        else
        {
          return v2;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_297850F90(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, uint64_t a4)
{
  v8 = *a2;
  if (v8 != 63)
  {
    if (v8 == 92)
    {
      ++*a3;
      v9 = a2 + 1;
LABEL_4:
      if (sub_297850134(*v9) && (v10 = sub_297850EF8(v9)) != 0)
      {
        v11 = v10;
        if (a4)
        {
          sub_29785111C(a4, 8);
          v12 = *v9;
          if (v12 != 10 && v12 != 13 && (sub_29785112C(a1) & 1) == 0)
          {
            sub_297850E94(a1, v9, 621, v21);
            sub_29782963C(v21);
          }
        }

        *a3 += v11;
        v13 = v9[v11];
        v14 = v13 > 0xD;
        v15 = (1 << v13) & 0x2401;
        if (v14 || v15 == 0)
        {
          LOBYTE(v17) = sub_297850F90(a1);
        }

        else
        {
          LOBYTE(v17) = 32;
        }
      }

      else
      {
        LOBYTE(v17) = 92;
      }

      return v17;
    }

LABEL_25:
    ++*a3;
    LOBYTE(v17) = *a2;
    return v17;
  }

  if (a2[1] != 63)
  {
    goto LABEL_25;
  }

  v18 = a4 ? a1 : 0;
  v19 = sub_297851134(a2 + 2, v18);
  if (!v19)
  {
    goto LABEL_25;
  }

  v17 = v19;
  if (a4)
  {
    sub_29785111C(a4, 8);
  }

  *a3 += 3;
  if (v17 == 92)
  {
    v9 = a2 + 3;
    goto LABEL_4;
  }

  return v17;
}

uint64_t sub_297851134(char *a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_297851308(*a1);
  v5 = v4;
  v12 = v4;
  if (a2 && v4)
  {
    v6 = *sub_29785240C(a2);
    v7 = sub_29785112C(a2);
    if ((v6 & 0x10000) != 0)
    {
      if ((v7 & 1) == 0)
      {
        sub_297850E94(a2, v3 - 2, 849, v10);
        sub_2977FB7C0(v9, &v12, 1);
        sub_2978295C0(v10, v9[0], v9[1]);
        sub_29782963C(v10);
        return v12;
      }
    }

    else
    {
      if ((v7 & 1) == 0)
      {
        sub_297850E94(a2, v3 - 2, 851, v11);
        sub_29782963C(v11);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_297851204(unsigned __int8 *a1, int *a2, void *a3)
{
  while (1)
  {
    v6 = *a1;
    if (v6 == 92)
    {
      v7 = *a2 + 1;
      *a2 = v7;
      v8 = a1 + 1;
      goto LABEL_11;
    }

    if (v6 == 63)
    {
      v9 = (*a3 & 0x10000) == 0;
      *a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      break;
    }

    if (a1[1] != 63)
    {
      break;
    }

    v10 = sub_297851308(a1[2]);
    if (!v10)
    {
      break;
    }

    v7 = *a2 + 3;
    *a2 = v7;
    if (v10 != 92)
    {
      return v10;
    }

    v8 = a1 + 3;
LABEL_11:
    if (!sub_297850134(*v8) || (v11 = sub_297850EF8(v8)) == 0)
    {
      LOBYTE(v10) = 92;
      return v10;
    }

    *a2 = v7 + v11;
    a1 = &v8[v11];
    v12 = *a1;
    v13 = v12 > 0xD;
    v14 = (1 << v12) & 0x2401;
    if (!v13 && v14 != 0)
    {
      LOBYTE(v10) = 32;
      return v10;
    }
  }

  ++*a2;
  LOBYTE(v10) = *a1;
  return v10;
}

uint64_t sub_297851308(int a1)
{
  if (a1 == 61)
  {
    v1 = 35;
  }

  else
  {
    v1 = 0;
  }

  if (a1 == 62)
  {
    v2 = 125;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 60)
  {
    v3 = 123;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 47)
  {
    v4 = 92;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 45)
  {
    v5 = 126;
  }

  else
  {
    v5 = v4;
  }

  if (a1 <= 59)
  {
    v3 = v5;
  }

  if (a1 == 41)
  {
    v6 = 93;
  }

  else
  {
    v6 = 0;
  }

  if (a1 == 40)
  {
    v7 = 91;
  }

  else
  {
    v7 = v6;
  }

  if (a1 == 39)
  {
    v8 = 94;
  }

  else
  {
    v8 = 0;
  }

  if (a1 == 33)
  {
    v9 = 124;
  }

  else
  {
    v9 = v8;
  }

  if (a1 <= 39)
  {
    v7 = v9;
  }

  if (a1 <= 44)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_297851390(uint64_t result, unsigned int a2, char a3)
{
  v3 = *(result + 392) + a2;
  if (v3 > *(result + 128))
  {
    v3 = *(result + 128);
  }

  *(result + 392) = v3;
  *(result + 400) = a3;
  *(result + 401) = a3;
  return result;
}

uint64_t sub_2978513B4(void *a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v7 = *a2;
  v15 = &(*a2)[a3];
  result = sub_2978514D8(a1, &v15, v7, 0);
  if (result)
  {
    v9 = result;
    result = sub_297851810(result, a1 + 18);
    if (result)
    {
      if ((sub_29785112C(a1) & 1) == 0)
      {
        v10 = sub_2977FD5B0(a1[1]);
        v11 = sub_297851B48(a1, *a2, v15);
        sub_297851920(v10, v9, v11, v12, 0);
      }

      sub_29785111C(a4, 64);
      v13 = *a2;
      v14 = (v15 - *a2);
      if (v14 == 10)
      {
        if (v13[1] == 85)
        {
LABEL_8:
          *a2 = v15;
          return 1;
        }
      }

      else if (v14 == 6 && v13[1] == 117)
      {
        goto LABEL_8;
      }

      if (v13 != v15)
      {
        do
        {
          sub_297851BA4(a1, a2, a4);
        }

        while (*a2 != v15);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_2978514D8(void *a1, unsigned __int8 **a2, int a3, uint64_t a4)
{
  v35[0] = 0;
  v8 = sub_297852034(a1, *a2, v35);
  v9 = v8;
  if (v8 == 117)
  {
    v10 = 4;
  }

  else
  {
    if (v8 != 85)
    {
      return 0;
    }

    v10 = 8;
  }

  if ((a1[18] & 0x41) != 0)
  {
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = &(*a2)[v35[0]];
    v14 = v13;
    do
    {
      v15 = sub_297852034(a1, v14, v35);
      v16 = sub_297854318(v15);
      if (v16 == -1)
      {
        if (!a4 || (sub_29785112C(a1) & 1) != 0)
        {
          return 0;
        }

        if (!v12)
        {
          sub_297850E94(a1, a1[49], 910, v31);
          v26 = (v13 - 1);
LABEL_50:
          sub_2977FB7C0(v33, v26, 1);
          sub_2978295C0(v31, v33[0], v33[1]);
          v21 = v31;
          goto LABEL_51;
        }

        sub_297850E94(a1, a1[49], 909, v32);
        sub_29782963C(v32);
        result = 0;
        if (v9 != 117 && v12 == 4)
        {
          v22 = sub_297851B48(a1, v13 - 1, v13);
          v24 = v23;
          sub_297850E94(a1, v13 - 1, 830, v33);
          sub_2977FB7B4(v30, "u");
          sub_297854348(v22, v24, v30[0], v30[1], v31);
          sub_297852754(v33, v31);
          sub_29782AC18(v31);
          v21 = v33;
          goto LABEL_51;
        }

        return result;
      }

      v11 = (v16 + 16 * v11);
      v14 += v35[0];
      ++v12;
    }

    while (v10 != v12);
    if (a4 && (sub_29785111C(a4, 64), v17 = *a2, v14 - *a2 != (v10 | 2)))
    {
      while (v17 != v14)
      {
        sub_297851BA4(a1, a2, a4);
        v17 = *a2;
      }
    }

    else
    {
      *a2 = v14;
    }

    if ((a1[18] & 0x400000) != 0)
    {
      return v11;
    }

    if (v11 <= 0x9F)
    {
      v18 = v11 == 36 || (v11 & 0xDF) == 64;
      v19 = v18;
      if (v18)
      {
        result = v11;
      }

      else
      {
        result = 0;
      }

      if (a4 && (v19 & 1) == 0)
      {
        if (!a1[1])
        {
          return 0;
        }

        if ((v11 - 127) <= 0xFFFFFFA0)
        {
          sub_297850E94(a1, a1[49], 761, v29);
          v21 = v29;
          goto LABEL_51;
        }

        LOBYTE(v30[0]) = v11;
        sub_297850E94(a1, a1[49], 762, v31);
        v26 = v30;
        goto LABEL_50;
      }

      return result;
    }

    if ((v11 & 0xFFFFF800) == 0xD800)
    {
      result = 0;
    }

    else
    {
      result = v11;
    }

    if (!a4 || (v11 & 0xFFFFF800) != 0xD800)
    {
      return result;
    }

    if (!a1[1])
    {
      return 0;
    }

    v25 = a1[49];
    if ((a1[18] & 0xC0) == 0x40)
    {
      sub_297850E94(a1, v25, 911, v28);
      v21 = v28;
    }

    else
    {
      sub_297850E94(a1, v25, 764, v27);
      v21 = v27;
    }
  }

  else
  {
    if (!a4 || (sub_29785112C(a1) & 1) != 0)
    {
      return 0;
    }

    sub_297850E94(a1, a3, 912, v34);
    v21 = v34;
  }

LABEL_51:
  sub_29782963C(v21);
  return 0;
}

uint64_t sub_297851810(int a1, void *a2)
{
  if ((*a2 & 0x82) != 0)
  {
    v3 = off_2A1A90198();
    v4 = *v3;
    if (!*v3)
    {
      v5 = v3;
      v4 = sub_2977FA198(16);
      sub_297856394(v9, &unk_2978FAF68);
LABEL_9:
      sub_2977FB7C0(v4, v9[0], v9[1]);
      *v5 = v4;
    }
  }

  else if ((*a2 & 0x40) != 0)
  {
    v7 = off_2A1A901B0();
    v4 = *v7;
    if (!*v7)
    {
      v5 = v7;
      v4 = sub_2977FA198(16);
      sub_297856398(v9, &unk_2978FB0D0);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = off_2A1A901C8();
    v4 = *v6;
    if (!*v6)
    {
      v5 = v6;
      v4 = sub_2977FA198(16);
      sub_29785639C(v9, &unk_2978FB638);
      goto LABEL_9;
    }
  }

  return sub_297812E80(v4, a1);
}

uint64_t sub_297851920(_BYTE *a1, int a2, uint64_t a3, int a4, int a5)
{
  v25 = a3;
  v26 = a4;
  v8 = sub_297850AD4(&v25);
  if (!sub_29784CC2C(a1, 0x358u, v8))
  {
    v9 = off_2A1A901E0();
    v10 = *v9;
    if (!*v9)
    {
      v10 = sub_2977FA198(16);
      sub_29785639C(&v23, &unk_2978FB638);
      sub_2977FB7C0(v10, v23, v24);
      *v9 = v10;
    }

    v11 = off_2A1A901F8();
    if (!*v11)
    {
      v12 = sub_2977FA198(16);
      sub_2978563C4(&v23, &unk_2978FBDE8);
      sub_2977FB7C0(v12, v23, v24);
      *v11 = v12;
      v10 = *v9;
    }

    if ((sub_297812E80(v10, a2) & 1) == 0)
    {
      v16 = sub_297850AD4(&v25);
      sub_29782B128(a1, v16, 856, &v23);
      v14 = sub_2978544D0(&v23, &v25);
      v15 = 0;
      goto LABEL_11;
    }

    if (a5 && sub_297812E80(*v11, a2))
    {
      v13 = sub_297850AD4(&v25);
      sub_29782B128(a1, v13, 856, &v23);
      v14 = sub_2978544D0(&v23, &v25);
      v15 = 1;
LABEL_11:
      sub_2978563C8(v14, v15);
      sub_29782963C(&v23);
    }
  }

  v17 = sub_297850AD4(&v25);
  result = sub_29784CC2C(a1, 0x367u, v17);
  if ((result & 1) == 0)
  {
    v19 = off_2A1A90210();
    v20 = *v19;
    if (!*v19)
    {
      v21 = v19;
      v20 = sub_2977FA198(16);
      sub_297856398(&v23, &unk_2978FB0D0);
      sub_2977FB7C0(v20, v23, v24);
      *v21 = v20;
    }

    result = sub_297812E80(v20, a2);
    if ((result & 1) == 0)
    {
      v22 = sub_297850AD4(&v25);
      sub_29782B128(a1, v22, 871, &v23);
      sub_2978544D0(&v23, &v25);
      return sub_29782963C(&v23);
    }
  }

  return result;
}

uint64_t sub_297851B48(uint64_t a1, int a2, int a3)
{
  v5 = sub_297850D80(a1, a2, 1);
  v6 = sub_297850D80(a1, a3, 1);
  return sub_2978562D8(v5, v6);
}

uint64_t sub_297851BA4(uint64_t a1, unsigned __int8 **a2, uint64_t a3)
{
  if (sub_297850510(**a2))
  {
    v6 = (*a2)++;
    return *v6;
  }

  else
  {
    v9 = 0;
    v7 = sub_297850F90(a1, *a2, &v9, a3);
    *a2 += v9;
  }

  return v7;
}

uint64_t sub_297851C2C(uint64_t a1, unsigned __int8 **a2)
{
  v10 = *a2;
  v9 = 0;
  if (sub_297851CE8(&v10, *(a1 + 128), &v9))
  {
    return 0;
  }

  result = sub_297851810(v9, (a1 + 144));
  if (result)
  {
    if ((sub_29785112C(a1) & 1) == 0)
    {
      v5 = sub_2977FD5B0(*(a1 + 8));
      v6 = v9;
      v7 = sub_297851B48(a1, *a2, v10);
      sub_297851920(v5, v6, v7, v8, 0);
    }

    *a2 = v10;
    return 1;
  }

  return result;
}

uint64_t sub_297851CE8(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int *a3)
{
  v8 = a3;
  if (*a1 == a2)
  {
    return 1;
  }

  v6 = sub_297802B4C(**a1);
  if (a2 - *a1 < v6)
  {
    return 1;
  }

  else
  {
    return sub_297802F84(a1, &(*a1)[v6], &v8, (a3 + 1), 0);
  }
}

uint64_t sub_297851D6C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = (a3 - 1);
  do
  {
    v7 = *++v5;
    v6 = v7;
  }

  while ((sub_297850D54(v7, 0) & 1) != 0);
  v16 = 0;
  v17 = v5;
  if (sub_297851FA0(v6))
  {
    if (v6 == 36)
    {
      if ((*(a1 + 146) & 0x20) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v6 != 63 && v6 != 92)
    {
      goto LABEL_29;
    }
  }

LABEL_9:
  v8 = a1;
  v9 = v5;
LABEL_10:
  v10 = sub_297852034(v8, v9, &v16);
  while (v10 == 92)
  {
    if (sub_2978513B4(a1, &v17, v16, a2))
    {
      v9 = v17;
LABEL_27:
      v8 = a1;
      goto LABEL_10;
    }

LABEL_15:
    if (sub_297851FA0(v10))
    {
      v5 = v17;
    }

    else
    {
      v11 = sub_297851C2C(a1, &v17);
      v5 = v17;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    if (!sub_297850D54(v10, 0))
    {
      goto LABEL_29;
    }

    v17 = sub_2978520B0(a1, v5, v16, a2);
    v10 = sub_297852034(a1, v17, &v16);
    if (sub_297850D54(v10, 0))
    {
      do
      {
        v17 = sub_2978520B0(a1, v17, v16, a2);
        v10 = sub_297852034(a1, v17, &v16);
      }

      while ((sub_297850D54(v10, 0) & 1) != 0);
    }
  }

  if (v10 != 36)
  {
    goto LABEL_15;
  }

  if ((*(a1 + 146) & 0x20) != 0)
  {
    if ((sub_29785112C(a1) & 1) == 0)
    {
      sub_297850E94(a1, v17, 778, v15);
      sub_29782963C(v15);
    }

    v9 = sub_2978520B0(a1, v17, v16, a2);
    v17 = v9;
    goto LABEL_27;
  }

  v5 = v17;
LABEL_29:
  v12 = *(a1 + 392);
  sub_297851FAC(a1, a2, v5, 7);
  sub_2977FD5DC(a2, v12);
  if (*(a1 + 26))
  {
    return 1;
  }

  v13 = sub_29787BF44(*(a1 + 8), a2);
  if (!sub_297852028(v13))
  {
    return 1;
  }

  else
  {
    return sub_29787C22C(*(a1 + 8), a2);
  }
}

uint64_t sub_297851FAC(uint64_t a1, _DWORD *a2, uint64_t a3, __int16 a4)
{
  v8 = a3 - *(a1 + 392);
  sub_297847418(a2, v8);
  v9 = sub_297850D80(a1, *(a1 + 392), v8);
  sub_29780819C(a2, v9);
  result = sub_297853640(a2, a4);
  *(a1 + 392) = a3;
  return result;
}

uint64_t sub_297852034(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (sub_297850510(*a2))
  {
    *a3 = 1;
    return *a2;
  }

  else
  {
    *a3 = 0;

    return sub_297850F90(a1, a2, a3, 0);
  }
}

unsigned __int8 *sub_2978520B0(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v7 = 0;
    sub_297850F90(a1, a2, &v7, a4);
    v5 = v7;
  }

  return &a2[v5];
}

BOOL sub_297852100(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v7 = 0;
  v5 = sub_297850524(a2, &v7, a3);
  result = 0;
  if (v5 == 48)
  {
    return (sub_297850524(&a2[v7], &v7, a3) & 0xFFFFFFDF) == 88;
  }

  return result;
}

uint64_t sub_29785216C(uint64_t a1, _DWORD *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v26 = a3;
  v25 = 0;
  v6 = sub_297852034(a1, a3, &v25);
  v7 = sub_2978523F0(v6);
  if (v7)
  {
    do
    {
      v8 = v6;
      v3 = sub_2978520B0(a1, v3, v25, a2);
      v26 = v3;
      v6 = sub_297852034(a1, v3, &v25);
      v7 = sub_2978523F0(v6);
    }

    while (v7);
    v9 = v8 & 0xDF;
  }

  else
  {
    v9 = 0;
  }

  if (v6 <= 0x2Cu)
  {
    if (v6 == 39)
    {
      if ((*(sub_29785240C(a1) + 1) & 1) == 0)
      {
        goto LABEL_29;
      }

      v24 = 0;
      v14 = v25;
      v15 = sub_29785240C(a1);
      v16 = sub_297850524(&v3[v14], &v24, v15);
      if (!sub_297850D54(v16, 0))
      {
        goto LABEL_29;
      }

      v17 = sub_29785112C(a1);
      v18 = v26;
      if ((v17 & 1) == 0)
      {
        sub_297850E94(a1, v26, 860, v23);
        sub_29782963C(v23);
      }

      v13 = sub_2978520B0(a1, v18, v25, a2);
      v11 = v24;
      v12 = a1;
LABEL_26:
      v19 = sub_2978520B0(v12, v13, v11, a2);
      goto LABEL_32;
    }

    if (v6 != 43)
    {
      goto LABEL_29;
    }

LABEL_11:
    if (v9 != 69 || (*(a1 + 144) & 8) != 0 && (v7 = sub_297852100(v7, *(a1 + 392), (a1 + 144))))
    {
      if (v6 != 45 && v6 != 43)
      {
        goto LABEL_29;
      }

      if (v9 != 80)
      {
        goto LABEL_29;
      }

      if ((*(a1 + 144) & 1) == 0)
      {
        if (!sub_297852100(v7, *(a1 + 392), (a1 + 144)))
        {
          goto LABEL_29;
        }

        v10 = *(a1 + 392);
        LOBYTE(v24) = 95;
        if (sub_297808B6C(v10, v3, &v24) != v3)
        {
          goto LABEL_29;
        }
      }
    }

    v11 = v25;
    v12 = a1;
    v13 = v3;
    goto LABEL_26;
  }

  if (v6 == 92)
  {
    if (sub_2978513B4(a1, &v26, v25, a2))
    {
      v19 = v26;
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v6 == 45)
  {
    goto LABEL_11;
  }

LABEL_29:
  if (sub_297851FA0(v6))
  {
    v19 = v26;
LABEL_33:
    v21 = *(a1 + 392);
    sub_297851FAC(a1, a2, v19, 8);
    sub_2977FD5DC(a2, v21);
    return 1;
  }

  v20 = sub_297851C2C(a1, &v26);
  v19 = v26;
  if (!v20)
  {
    goto LABEL_33;
  }

LABEL_32:
  sub_29785216C(a1, a2, v19);
  return 1;
}

unsigned __int8 *sub_297852414(void *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  v30 = a3;
  v29 = 0;
  v7 = sub_297852034(a1, a3, &v29);
  v8 = sub_29785273C(v7);
  if (!v8 && (v7 != 92 || (sub_2978513B4(a1, &v30, v29, a2) & 1) == 0) && (sub_297851FA0(v7) || !sub_297851C2C(a1, &v30)))
  {
    return v30;
  }

  if ((*sub_29785240C(a1) & 0x80) == 0)
  {
    if (sub_29785112C(a1))
    {
      return v30;
    }

    v9 = v30;
    if (v7 == 95)
    {
      v10 = 862;
    }

    else
    {
      v10 = 861;
    }

    v11 = a1;
LABEL_28:
    sub_297850E94(v11, v9, v10, v28);
    v22 = sub_297850D80(a1, v30, 1);
    sub_2977FB7B4(v26, " ");
    sub_297852794(v22, v26[0], v26[1], 0, v27);
    sub_297852754(v28, v27);
    sub_29782AC18(v27);
    sub_29782963C(v28);
    return v30;
  }

  if (v8)
  {
    if (v7 == 95 || !a4)
    {
      if (v7 == 95)
      {
LABEL_33:
        v30 = sub_2978520B0(a1, v30, v29, a2);
        goto LABEL_34;
      }
    }

    else if (*(sub_29785240C(a1) + 1))
    {
      LOBYTE(v26[0]) = v7;
      *(v26 + 1) = 0;
      v12 = v29;
      v28[0] = 0;
      v13 = v30;
      v14 = sub_29785240C(a1);
      v15 = sub_297850524(&v13[v12], v28, v14);
      if (sub_297850D54(v15, 0))
      {
        v16 = 1;
        while (v16 != 3)
        {
          v17 = v16 + 1;
          *(v26 + v16) = v15;
          v12 = (v28[0] + v12);
          v28[0] = 0;
          v18 = v30;
          v19 = sub_29785240C(a1);
          v15 = sub_297850524(&v18[v12], v28, v19);
          v20 = sub_297850D54(v15, 0);
          v16 = v17;
          if ((v20 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_23;
      }

      LODWORD(v17) = 1;
LABEL_30:
      if (v17 != 1 || v7 != 115)
      {
        v23 = sub_29785240C(a1);
        sub_2977FB7C0(v27, v26, v17);
        if ((sub_2978572B0(v23, *&v27[0], *(&v27[0] + 1)) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_33;
    }

LABEL_23:
    if (sub_29785112C(a1))
    {
      return v30;
    }

    v21 = v30;
    if ((*sub_29785240C(a1) & 4) != 0)
    {
      v10 = 788;
    }

    else
    {
      v10 = 812;
    }

    v11 = a1;
    v9 = v21;
    goto LABEL_28;
  }

LABEL_34:
  sub_29785111C(a2, 32);
  do
  {
    while (1)
    {
      v24 = sub_297852034(a1, v30, &v29);
      if (!sub_297850D54(v24, 0))
      {
        break;
      }

      v30 = sub_2978520B0(a1, v30, v29, a2);
    }
  }

  while (v24 == 92 && (sub_2978513B4(a1, &v30, v29, a2) & 1) != 0 || !sub_297851FA0(v24) && (sub_297851C2C(a1, &v30) & 1) != 0);
  return v30;
}

uint64_t sub_297852754(uint64_t a1, __int128 *a2)
{
  if ((sub_297850D28() & 1) == 0)
  {
    sub_297856404(a1, a2);
  }

  return a1;
}

void sub_297852794(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10[0] = a2;
  v10[1] = a3;
  sub_297856410(a5);
  *a5 = sub_2978562D8(a1, a1);
  *(a5 + 8) = v8;
  sub_297801F5C(v10, &v9);
  sub_2978046C4(a5 + 24, &v9);
  std::string::~string(&v9);
  *(a5 + 48) = a4;
}

uint64_t sub_297852810(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, __int16 a4)
{
  v17 = a3;
  v7 = sub_29785112C(a1);
  if ((a4 - 19) >= 0xFFFDu && (v7 & 1) == 0)
  {
    v8 = *(a1 + 392);
    if ((*sub_29785240C(a1) & 0x40) != 0)
    {
      v9 = 872;
    }

    else
    {
      v9 = 857;
    }

    sub_297850E94(a1, v8, v9, v16);
    sub_29782963C(v16);
  }

  v10 = sub_297851BA4(a1, &v17, a2);
  v11 = 0;
  while (1)
  {
    if (v10 == 92)
    {
      v10 = sub_297851BA4(a1, &v17, a2);
    }

    else if (v10 == 34)
    {
      if ((*sub_29785240C(a1) & 0x40) != 0)
      {
        v17 = sub_297852414(a1, a2, v17, 1);
      }

      if (v11 && (sub_29785112C(a1) & 1) == 0)
      {
        sub_297850E94(a1, v11, 833, v14);
        sub_29782963C(v14);
      }

      v12 = *(a1 + 392);
      sub_297851FAC(a1, a2, v17, a4);
      sub_2977FD5DC(a2, v12);
      return 1;
    }

    if (v10)
    {
      break;
    }

    if (v17 - 1 == *(a1 + 128))
    {
      goto LABEL_20;
    }

    if (sub_297852A24(a1, v17 - 1))
    {
      sub_29787BAA8(*(a1 + 8));
      sub_297851FAC(a1, a2, (v17 - 1), 0);
      sub_297852A8C(a1);
      return 1;
    }

    v11 = v17 - 1;
LABEL_19:
    v10 = sub_297851BA4(a1, &v17, a2);
  }

  if (v10 != 10 && v10 != 13)
  {
    goto LABEL_19;
  }

LABEL_20:
  if ((sub_29785112C(a1) & 1) == 0 && (*(a1 + 146) & 0x40) == 0)
  {
    sub_297850E94(a1, *(a1 + 392), 819, v15);
    sub_29782963C(v15);
  }

  sub_297851FAC(a1, a2, (v17 - 1), 0);
  return 1;
}

uint64_t sub_297852A24(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result)
  {
    result = sub_297854300(result);
    if (result)
    {
      v6 = sub_297840FC8((a1 + 136), a2 - *(a1 + 120));
      v5 = sub_297854310(*(a1 + 8));
      return sub_297841544(&v6, &v5);
    }
  }

  return result;
}

uint64_t sub_297852A98(void *a1, _DWORD *a2, const char *a3, __int16 a4)
{
  if ((sub_29785112C(a1) & 1) == 0)
  {
    sub_297850E94(a1, a1[49], 870, v24);
    sub_29782963C(v24);
  }

  for (i = 0; i != 16; ++i)
  {
    v9 = sub_297852CE0(a3[i]);
    if (!v9)
    {
      break;
    }
  }

  if (a3[i] == 40)
  {
    v10 = i;
    v11 = 2 * i;
    for (j = v10; ; ++j)
    {
      if (a3[j + 1])
      {
        if (a3[j + 1] == 41 && !strncmp(&a3[j + 2], a3, v10) && a3[v11 + 2] == 34)
        {
          v15 = &a3[v11 + 3];
          if ((*sub_29785240C(a1) & 0x40) != 0)
          {
            v15 = sub_297852414(a1, a2, v15, 1);
          }

          v16 = a1[49];
          sub_297851FAC(a1, a2, v15, a4);
          sub_2977FD5DC(a2, v16);
          return 1;
        }
      }

      else if (&a3[j + 1] == a1[16])
      {
        if ((sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, a1[49], 769, v22);
          sub_2977FB7C0(&v20, a3, v10);
          sub_2978295C0(v22, v20, v21);
          sub_29782963C(v22);
        }

        v14 = &a3[j + 1];
        goto LABEL_30;
      }

      ++v11;
    }
  }

  if ((sub_29785112C(a1) & 1) == 0)
  {
    if (v9)
    {
      sub_297850E94(a1, a3 + i, 757, v23);
      v13 = v23;
    }

    else
    {
      sub_297850E94(a1, a3 + i, 647, v22);
      sub_2977FB7C0(&v20, &a3[i], 1);
      sub_2978295C0(v22, v20, v21);
      v13 = v22;
    }

    sub_29782963C(v13);
  }

  do
  {
    while (1)
    {
      v14 = a3;
      v18 = *a3++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      if (v14 == a1[16])
      {
        goto LABEL_30;
      }
    }
  }

  while (v17 != 34);
  ++v14;
LABEL_30:
  sub_297851FAC(a1, a2, v14, 0);
  return 1;
}

uint64_t sub_297852CFC(uint64_t a1, _DWORD *a2, unsigned __int8 *a3)
{
  v11 = a3;
  v6 = sub_297851BA4(a1, &v11, a2);
  v7 = 0;
  while (1)
  {
    if (v6 <= 0xCu)
    {
      if (v6)
      {
        if (v6 == 10)
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v11 - 1 == *(a1 + 128) || sub_297852A24(a1, v11 - 1))
        {
LABEL_14:
          sub_297851FAC(a1, a2, a3, 46);
          return 1;
        }

        v7 = v11 - 1;
      }

      goto LABEL_13;
    }

    if (v6 == 92)
    {
      sub_297851BA4(a1, &v11, a2);
      goto LABEL_13;
    }

    if (v6 == 13)
    {
      goto LABEL_14;
    }

    if (v6 == 62)
    {
      break;
    }

LABEL_13:
    v6 = sub_297851BA4(a1, &v11, a2);
  }

  if (v7 && (sub_29785112C(a1) & 1) == 0)
  {
    sub_297850E94(a1, v7, 833, v10);
    sub_29782963C(v10);
  }

  v8 = *(a1 + 392);
  sub_297851FAC(a1, a2, v11, 15);
  sub_2977FD5DC(a2, v8);
  return 1;
}

uint64_t sub_297852E3C(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, __int16 a4)
{
  v19 = a3;
  v7 = sub_29785112C(a1);
  if (((a4 - 13) == 65534 || (a4 - 13) == 0xFFFF) && (v7 & 1) == 0)
  {
    v8 = *(a1 + 392);
    if ((*sub_29785240C(a1) & 0x40) != 0)
    {
      v9 = 872;
    }

    else
    {
      v9 = 857;
    }

    sub_297850E94(a1, v8, v9, v18);
    sub_29782963C(v18);
  }

  v10 = sub_297851BA4(a1, &v19, a2);
  if (v10 != 39)
  {
    v12 = 0;
    while (1)
    {
      if (v10 == 92)
      {
        LOBYTE(v10) = sub_297851BA4(a1, &v19, a2);
      }

      else if (v10 == 39)
      {
        if ((*sub_29785240C(a1) & 0x40) != 0)
        {
          v19 = sub_297852414(a1, a2, v19, 0);
        }

        if (v12 && (sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, v12, 831, v15);
          sub_29782963C(v15);
        }

        v14 = *(a1 + 392);
        sub_297851FAC(a1, a2, v19, a4);
        sub_2977FD5DC(a2, v14);
        return 1;
      }

      if (v10)
      {
        if (v10 == 10 || v10 == 13)
        {
LABEL_25:
          if ((sub_29785112C(a1) & 1) == 0 && (*(a1 + 146) & 0x40) == 0)
          {
            sub_297850E94(a1, *(a1 + 392), 818, v16);
            sub_29782963C(v16);
          }

          v11 = v19 - 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v19 - 1 == *(a1 + 128))
        {
          goto LABEL_25;
        }

        if (sub_297852A24(a1, v19 - 1))
        {
          sub_29787BAA8(*(a1 + 8));
          sub_297851FAC(a1, a2, (v19 - 1), 0);
          sub_297852A8C(a1);
          return 1;
        }

        v12 = v19 - 1;
      }

      LOBYTE(v10) = sub_297851BA4(a1, &v19, a2);
    }
  }

  if ((sub_29785112C(a1) & 1) == 0 && (*(a1 + 146) & 0x40) == 0)
  {
    sub_297850E94(a1, *(a1 + 392), 780, v17);
    sub_29782963C(v17);
  }

  v11 = v19;
LABEL_29:
  sub_297851FAC(a1, a2, v11, 0);
  return 1;
}

uint64_t sub_297853090(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v5 = a3;
  for (i = sub_297853184(*(a3 - 1)); ; i = 1)
  {
    do
    {
      v10 = *v5++;
      v9 = v10;
    }

    while (sub_297850F74(v10));
    if (!sub_297853184(v9))
    {
      break;
    }

    if (*(a1 + 24) == 1)
    {
      result = 0;
      *(a1 + 392) = v5 - 1;
      return result;
    }
  }

  if (sub_297853198(a1))
  {
    sub_297851FAC(a1, a2, (v5 - 1), 0);
    if (i)
    {
      *(a1 + 400) = 257;
    }

    return 1;
  }

  else
  {
    v12 = sub_297853184(*(v5 - 2));
    sub_2978531A8(a2, 2, v12 ^ 1);
    if (i)
    {
      sub_29785111C(a2, 1);
      *a4 = 1;
    }

    result = 0;
    *(a1 + 392) = v5 - 1;
  }

  return result;
}

uint64_t sub_2978531A8(uint64_t result, char a2, int a3)
{
  if (a3)
  {
    return sub_29785111C(result, a2);
  }

  else
  {
    return sub_297853618(result, a2);
  }
}

uint64_t sub_2978531B4(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v37 = a3;
  if ((*(a1 + 146) & 2) == 0 && (sub_29785112C(a1) & 1) == 0)
  {
    sub_297850E94(a1, *(a1 + 392), 785, v36);
    sub_29782963C(v36);
    *(a1 + 144) |= 0x20000uLL;
  }

  while (1)
  {
LABEL_4:
    for (i = v37; ; v37 = i)
    {
      v8 = *i;
      if (!*i)
      {
        goto LABEL_21;
      }

      if (v8 == 13 || v8 == 10)
      {
        break;
      }

      ++i;
    }

    v10 = 0;
    v11 = i;
    do
    {
      v12 = v10;
      v14 = *--v11;
      v13 = v14;
      v15 = sub_297850F74(v14);
      v10 = 1;
    }

    while (v15);
    if (v13 == 47)
    {
      if (*(v11 - 1) != 63)
      {
        goto LABEL_50;
      }

      v16 = v11 - 2;
      if (*(v11 - 2) != 63)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v16 = v11;
      if (v13 != 92)
      {
        goto LABEL_50;
      }
    }

    v37 = v16;
    if ((v12 & 1) != 0 && (sub_29785112C(a1) & 1) == 0)
    {
      sub_297850E94(a1, v11, 621, v35);
      sub_29782963C(v35);
    }

LABEL_21:
    v17 = v37;
    v18 = sub_29785112C(a1);
    *(a1 + 26) = 1;
    v19 = sub_297851BA4(a1, &v37, a2);
    v20 = v19;
    *(a1 + 26) = v18;
    v21 = v37;
    v22 = v17 + 1;
    if (v19 && v37 == v22)
    {
      v37 = i;
LABEL_50:
      if (*(a1 + 8) && (sub_29785112C(a1) & 1) == 0 && (v29 = *(a1 + 8), v30 = sub_297850D80(a1, *(a1 + 392), 1), v31 = sub_297850D80(a1, v37, 1), sub_297853514(&v33, v30, v31), sub_29787CAEC(v29, a2, v33)))
      {
        *(a1 + 392) = v37;
      }

      else
      {
        if (!sub_297853520(a1))
        {
          v32 = v37;
          if ((*(a1 + 24) & 1) != 0 || v37 == *(a1 + 128))
          {
            result = 0;
          }

          else
          {
            ++v37;
            sub_29785111C(a2, 1);
            *a4 = 1;
            sub_297853618(a2, 2);
            result = 0;
            v32 = v37;
          }

          *(a1 + 392) = v32;
          return result;
        }

        sub_297853530(a1, a2, v37);
      }

      return 1;
    }

    if (v19 != 47 && v37 != v22 && *v37 != 47 && v17 != v37)
    {
      while (1)
      {
        v24 = *v17;
        if (v24 == 13 || v24 == 10)
        {
          break;
        }

        if (++v17 == v37)
        {
          goto LABEL_41;
        }
      }

      if (!sub_297850134(v19))
      {
        goto LABEL_39;
      }

      do
      {
        v27 = *v21++;
        v26 = v27;
      }

      while (sub_297850134(v27));
      if (v26 != 47 || *v21 != 47)
      {
LABEL_39:
        if ((sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, v17 - 1, 789, v34);
          sub_29782963C(v34);
        }
      }
    }

LABEL_41:
    if (v37 == (*(a1 + 128) + 1))
    {
      --v37;
      goto LABEL_50;
    }

    if (!v20)
    {
      break;
    }

    if (v20 == 10 || v20 == 13)
    {
      goto LABEL_50;
    }
  }

  if (!sub_297852A24(a1, v37 - 1))
  {
    goto LABEL_4;
  }

  sub_29787BAA8(*(a1 + 8));
  sub_297852A8C(a1);
  return 0;
}

uint64_t sub_297853530(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_297851FAC(a1, a2, a3, 5);
  if (*(a1 + 24) == 1 && (*(a1 + 26) & 1) == 0)
  {
    v11 = 0;
    sub_297853628(*(a1 + 8), a2, &v11, &v10);
    if ((v11 & 1) == 0)
    {
      *sub_29780327C(&v10, 1) = 42;
      std::string::append(&v10, "*/");
      sub_297853640(a2, 5);
      v5 = *(a1 + 8);
      sub_2978044E8(v9, &v10);
      v6 = sub_2977FB5F0(a2);
      v7 = sub_2977FB5F0(a2);
      sub_29787BBC8(v5, v9[0], v9[1], a2, v6, v7);
    }

    std::string::~string(&v10);
  }

  return 1;
}

BOOL sub_297853648(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, _BYTE *a4)
{
  v36 = 0;
  v8 = sub_297852034(a1, a3, &v36);
  v9 = &a3[v36];
  if (v8 == 47)
  {
    goto LABEL_13;
  }

  LOBYTE(v10) = v8;
  if (!v8)
  {
    if (v9 != (*(a1 + 128) + 1))
    {
      LOBYTE(v10) = 0;
      goto LABEL_14;
    }

    if ((sub_29785112C(a1) & 1) == 0)
    {
      sub_297850E94(a1, *(a1 + 392), 768, v35);
      v11 = v35;
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  while (1)
  {
LABEL_14:
    if ((v9 + 24) >= *(a1 + 128))
    {
      goto LABEL_17;
    }

    v19 = *(a1 + 8);
    if (v19)
    {
      LODWORD(v32) = sub_297853994(v19);
      if (sub_297841544(&v32, (a1 + 136)))
      {
        goto LABEL_17;
      }
    }

    if (v10 != 47 && (v9 & 0xF) != 0)
    {
      v21 = v9 + 1;
      do
      {
        v22 = *v9++;
        LOBYTE(v10) = v22;
        v23 = v21++ & 0xF;
      }

      while (v22 != 47 && v23 != 0);
    }

    if (v10 == 47)
    {
LABEL_32:
      v25 = *(v9 - 2);
      if (v25 == 10 || v25 == 13)
      {
        if (sub_29785399C(v9 - 2, a1))
        {
          goto LABEL_43;
        }
      }

      else if (v25 == 42)
      {
LABEL_43:
        if (*(a1 + 8))
        {
          if ((sub_29785112C(a1) & 1) == 0)
          {
            v27 = *(a1 + 8);
            v28 = sub_297850D80(a1, *(a1 + 392), 1);
            v29 = sub_297850D80(a1, v9, 1);
            sub_297853514(&v32, v28, v29);
            if (sub_29787CAEC(v27, a2, v32))
            {
              *(a1 + 392) = v9;
              return 1;
            }
          }
        }

        if (sub_297853520(a1))
        {
          v14 = a1;
          v15 = a2;
          v16 = v9;
          v17 = 5;
          goto LABEL_11;
        }

        if (sub_297850F74(*v9))
        {
          sub_297853090(a1, a2, v9 + 1, a4);
        }

        else
        {
          *(a1 + 392) = v9;
          sub_29785111C(a2, 2);
        }

        return 0;
      }

      if (*v9 == 42 && v9[1] != 47 && (sub_29785112C(a1) & 1) == 0)
      {
        sub_297850E94(a1, v9 - 1, 880, v34);
        sub_29782963C(v34);
      }

      goto LABEL_13;
    }

    v30 = v9 + 1;
    do
    {
      v9 = v30;
      v31 = v30 - 1;
      v10 = *(v30 - 1);
      if (v10 == 47)
      {
        break;
      }

      if (*v30 == 47)
      {
        break;
      }

      if (v30[1] == 47)
      {
        break;
      }

      if (v30[2] == 47)
      {
        break;
      }

      v30 += 4;
    }

    while ((v31 + 4) < *(a1 + 128));
LABEL_17:
    while (v10)
    {
      if (v10 == 47)
      {
        goto LABEL_32;
      }

      v20 = *v9++;
      LOBYTE(v10) = v20;
    }

    if (v9 == (*(a1 + 128) + 1))
    {
      break;
    }

    if (sub_297852A24(a1, v9 - 1))
    {
      sub_29787BAA8(*(a1 + 8));
      sub_297852A8C(a1);
      return 0;
    }

LABEL_13:
    v18 = *v9++;
    LOBYTE(v10) = v18;
  }

  if (sub_29785112C(a1))
  {
    goto LABEL_8;
  }

  sub_297850E94(a1, *(a1 + 392), 768, v33);
  v11 = v33;
LABEL_7:
  sub_29782963C(v11);
LABEL_8:
  v12 = v9 - 1;
  result = sub_297853198(a1);
  if (result)
  {
    v14 = a1;
    v15 = a2;
    v16 = v12;
    v17 = 0;
LABEL_11:
    sub_297851FAC(v14, v15, v16, v17);
    return 1;
  }

  else
  {
    *(a1 + 392) = v12;
  }

  return result;
}

uint64_t sub_29785399C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = a1 - 1;
  v3 = *(a1 - 1);
  if (v3 == 13 || v3 == 10)
  {
    if (v3 == *a1)
    {
      return 0;
    }

    v4 = a1 - 2;
  }

  v6 = 0;
  v7 = v4 + 1;
  do
  {
    do
    {
      v8 = v6;
      v10 = *--v7;
      v9 = v10;
      v11 = sub_297850F74(v10);
      v6 = 1;
    }

    while (v11);
  }

  while (!v9);
  if (v9 != 47)
  {
    if (v9 == 92 && *(v7 - 1) == 42)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (*(v7 - 1) != 63)
  {
    return 0;
  }

  v13 = v7 - 2;
  if (*(v7 - 2) != 63 || *(v7 - 3) != 42)
  {
    return 0;
  }

  v14 = *sub_29785240C(a2);
  v15 = sub_29785112C(a2);
  if ((v14 & 0x10000) == 0)
  {
    if ((v15 & 1) == 0)
    {
      v17 = v21;
      sub_297850E94(a2, v13, 852, v21);
      v12 = 0;
      goto LABEL_27;
    }

    return 0;
  }

  LODWORD(v7) = v13;
  if ((v15 & 1) == 0)
  {
    sub_297850E94(a2, v13, 850, v20);
    sub_29782963C(v20);
    LODWORD(v7) = v13;
  }

LABEL_14:
  if ((sub_29785112C(a2) & 1) == 0)
  {
    sub_297850E94(a2, v7, 773, v19);
    sub_29782963C(v19);
  }

  if ((v8 & 1) != 0 && (sub_29785112C(a2) & 1) == 0)
  {
    v17 = v18;
    sub_297850E94(a2, v7, 621, v18);
    v12 = 1;
LABEL_27:
    sub_29782963C(v17);
    return v12;
  }

  return 1;
}

uint64_t sub_297853B30(uint64_t a1, uint64_t a2)
{
  sub_29784FB00(v10);
  v9 = *(a1 + 392);
  while (1)
  {
    v4 = sub_297851BA4(a1, &v9, v10);
    v8 = v4;
    if (v4)
    {
      break;
    }

    if (v9 - 1 == *(a1 + 128))
    {
      goto LABEL_13;
    }

    if (sub_297852A24(a1, v9 - 1))
    {
      sub_29787BAA8(*(a1 + 8));
      return sub_297852A8C(a1);
    }

LABEL_11:
    if (a2)
    {
      sub_2977FCD50(a2, &v8);
    }
  }

  if (v4 != 10 && v4 != 13)
  {
    goto LABEL_11;
  }

LABEL_13:
  *(a1 + 392) = v9 - 1;
  sub_297853C20(a1, v10);
  result = sub_29784FF04(v10, 3);
  if (result)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      sub_29787BAA8(v7);
    }

    return sub_297853C20(a1, v10);
  }

  return result;
}

uint64_t sub_297853C20(_BYTE *a1, unsigned int *a2)
{
  sub_297853ED0(a2);
  if (a1[400] == 1)
  {
    sub_29785111C(a2, 1);
    a1[400] = 0;
  }

  if (a1[402] == 1)
  {
    sub_29785111C(a2, 2);
    a1[402] = 0;
  }

  if (a1[403] == 1)
  {
    sub_29785111C(a2, 16);
    a1[403] = 0;
  }

  v4 = a1[401];
  a1[401] = 0;
  sub_29785112C(a1);

  return sub_297854824(a1, a2, v4);
}

uint64_t sub_297853CD4(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    sub_297851FAC(a1, a2, a3, 2);
    if (*(a1 + 8))
    {
      sub_29784F524(a1);
    }

    return 1;
  }

  else if (sub_29785112C(a1))
  {
    sub_297853ED0(a2);
    v7 = *(a1 + 128);
    *(a1 + 392) = v7;
    v6 = 1;
    sub_297851FAC(a1, a2, v7, 1);
  }

  else
  {
    while (!sub_297806904((a1 + 64)))
    {
      LODWORD(v18[0]) = sub_297853994(*(a1 + 8));
      if (sub_297853F10(v18, (a1 + 136)))
      {
        v8 = *(a1 + 8);
        v9 = sub_29783D2C4(a1 + 64);
        sub_297850EEC(v8, *v9, 751, v20);
        sub_29782963C(v20);
      }

      sub_29783D2E0(a1 + 64);
    }

    if (*(a1 + 120) != a3)
    {
      v10 = *(a3 - 1);
      if (v10 != 10 && v10 != 13)
      {
        v11 = sub_2977FD5B0(*(a1 + 8));
        v12 = sub_297850D80(a1, *(a1 + 128), 1);
        if ((*(a1 + 144) & 0x80) != 0)
        {
          if (sub_29784CC2C(v11, 0x364u, v12))
          {
            v13 = 881;
          }

          else
          {
            v13 = 868;
          }
        }

        else
        {
          v13 = 792;
        }

        sub_297850E94(a1, *(a1 + 128), v13, v19);
        sub_2977FB7B4(v17, "\n");
        sub_297852794(v12, v17[0], v17[1], 0, v18);
        sub_297852754(v19, v18);
        sub_29782AC18(v18);
        sub_29782963C(v19);
      }
    }

    *(a1 + 392) = a3;
    v14 = *(a1 + 8);
    v15 = sub_297853F2C(a1);
    return sub_2978729BC(v14, a2, v15);
  }

  return v6;
}

_DWORD *sub_297853ED0(uint64_t a1)
{
  *(a1 + 11) = 0;
  *(a1 + 4) = 0;
  result = sub_297829180(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_297853F34(uint64_t a1)
{
  *(a1 + 26) = 1;
  v2 = *(a1 + 392);
  v3 = *(a1 + 24);
  v4 = *(a1 + 400);
  v5 = *(a1 + 402);
  sub_29784FB00(v7);
  sub_297853C20(a1, v7);
  *(a1 + 392) = v2;
  *(a1 + 24) = v3;
  *(a1 + 402) = v5;
  *(a1 + 400) = v4;
  *(a1 + 26) = 0;
  if (sub_29784FF04(v7, 1))
  {
    return 2;
  }

  else
  {
    return sub_29784FF04(v7, 21);
  }
}

unint64_t sub_297853FD0(uint64_t a1, _BYTE *a2)
{
  v2 = a2;
  if (*(a1 + 120) != a2)
  {
    v4 = *(a2 - 1);
    if (v4 != 13 && v4 != 10)
    {
      return 0;
    }
  }

  v6 = *(a1 + 128) - a2;
  if (v6 >= 8)
  {
    sub_2977FB7C0(&v14, a2, 7);
    sub_2977FB7B4(&v12, "<<<<<<<");
    if (!sub_297808D64(v14, v15, v12, v13))
    {
      goto LABEL_12;
    }

    v6 = *(a1 + 128) - v2;
  }

  if (v6 < 6)
  {
    return 0;
  }

  sub_2977FB7C0(&v14, v2, 5);
  sub_2977FB7B4(&v12, ">>>> ");
  if (sub_297808D64(v14, v15, v12, v13))
  {
    return 0;
  }

LABEL_12:
  if (*(a1 + 404) || (sub_29785112C(a1) & 1) != 0)
  {
    return 0;
  }

  if (*v2 == 60)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  result = sub_297854120(v2, *(a1 + 128), v8);
  if (result)
  {
    sub_297850E94(a1, v2, 626, v11);
    sub_29782963C(v11);
    *(a1 + 404) = v8;
    while (1)
    {
      v9 = *v2;
      if (v9 == 10 || v9 == 13)
      {
        break;
      }

      ++v2;
    }

    *(a1 + 392) = v2;
    return 1;
  }

  return result;
}

unint64_t sub_297854120(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v3 = "<<<<\n";
  }

  else
  {
    v3 = ">>>>>>>";
  }

  v4 = -7;
  if (a3 == 2)
  {
    v4 = -5;
    v5 = 5;
  }

  else
  {
    v5 = 7;
  }

  sub_2977FB7C0(v12, a1 + v5, a2 - a1 + v4);
  sub_2977FB7B4(&v10, v3);
  v6 = sub_29780F620(v12, v10, v11, 0);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  while (sub_297803A20(v12, v7 - 1) != 13 && sub_297803A20(v12, v7 - 1) != 10)
  {
    v12[0] = sub_297805EA4(v12, v7 + v5, 0xFFFFFFFFFFFFFFFFLL);
    v12[1] = v8;
    sub_2977FB7B4(&v10, v3);
    v7 = sub_29780F620(v12, v10, v11, 0);
    if (v7 == -1)
    {
      return 0;
    }
  }

  return sub_2977FB720(v12) + v7;
}

unint64_t sub_297854238(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 120) == a2 || ((v4 = *(a2 - 1), v4 != 13) ? (v5 = v4 == 10) : (v5 = 1), v5))
  {
    if (*(a1 + 404) && (sub_29785112C(a1) & 1) == 0)
    {
      v7 = 1;
      while (a2[v7] == *a2)
      {
        if (++v7 == 4)
        {
          result = sub_297854120(a2, *(a1 + 128), *(a1 + 404));
          if (result)
          {
            v8 = *(a1 + 128);
            if (result != v8)
            {
              while (1)
              {
                v9 = *result;
                if (v9 == 10 || v9 == 13)
                {
                  break;
                }

                if (++result == v8)
                {
                  result = *(a1 + 128);
                  break;
                }
              }
            }

            *(a1 + 392) = result;
            *(a1 + 404) = 0;
            return 1;
          }

          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_297854318(int a1)
{
  v1 = a1 - 48;
  if ((a1 - 65) >= 6)
  {
    v2 = -1;
  }

  else
  {
    v2 = a1 - 55;
  }

  if ((a1 - 97) <= 5)
  {
    v3 = a1 - 87;
  }

  else
  {
    v3 = v2;
  }

  if (v1 <= 9)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

void sub_297854348(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9[0] = a3;
  v9[1] = a4;
  sub_297856410(a5);
  *a5 = a1;
  *(a5 + 8) = a2;
  sub_297801F5C(v9, &v8);
  sub_2978046C4(a5 + 24, &v8);
  std::string::~string(&v8);
}

uint64_t sub_2978543B4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = off_2A1A90180();
  if (!*v8)
  {
    v9 = sub_2977FA198(16);
    sub_2978544C0(v14, &unk_2978FAF20);
    sub_2977FB7C0(v9, v14[0], v14[1]);
    *v8 = v9;
  }

  if (sub_29785112C(a1) & 1) != 0 || (sub_2978544C4(*(a1 + 8)))
  {
    return 0;
  }

  result = sub_297812E80(*v8, a3);
  if (result)
  {
    sub_297850E94(a1, *(a1 + 392), 816, v14);
    v12 = sub_297851B48(a1, *(a1 + 392), a4);
    v13 = v11;
    sub_2978544D0(v14, &v12);
    sub_29782963C(v14);
    sub_29785111C(a2, 2);
    return 1;
  }

  return result;
}

uint64_t sub_2978544F8(uint64_t a1, unsigned int *a2, int a3, uint64_t a4)
{
  if (sub_297851810(a3, (a1 + 144)) && sub_2978546A4(a3, (a1 + 144)))
  {
    if ((sub_29785112C(a1) & 1) == 0 && (*(a1 + 24) & 1) == 0 && (sub_2978544C4(*(a1 + 8)) & 1) == 0)
    {
      v8 = sub_2977FD5B0(*(a1 + 8));
      v9 = sub_297851B48(a1, *(a1 + 392), a4);
      sub_297851920(v8, a3, v9, v10, 1);
    }

    sub_297854784((a1 + 32));

    return sub_297851D6C(a1, a2, a4);
  }

  else if (sub_29785112C(a1) & 1) != 0 || (*(a1 + 24) & 1) != 0 || (sub_2978544C4(*(a1 + 8)) & 1) != 0 || sub_297851FA0(**(a1 + 392)) || (sub_297851810(a3, (a1 + 144)))
  {
    sub_297854784((a1 + 32));
    sub_297851FAC(a1, a2, a4, 0);
    return 1;
  }

  else
  {
    sub_297850E94(a1, *(a1 + 392), 693, v15);
    v12 = sub_297851B48(a1, *(a1 + 392), a4);
    sub_297854790(v12, v13, v14);
    sub_297852754(v15, v14);
    sub_29782AC18(v14);
    sub_29782963C(v15);
    result = 0;
    *(a1 + 392) = a4;
  }

  return result;
}

uint64_t sub_2978546A4(int a1, void *a2)
{
  if ((*a2 & 0x82) != 0)
  {
    v3 = off_2A1A90228();
    v4 = *v3;
    if (!*v3)
    {
      v5 = v3;
      v4 = sub_2977FA198(16);
      sub_297856470(v8, &unk_2978FBE58);
LABEL_7:
      sub_2977FB7C0(v4, v8[0], v8[1]);
      *v5 = v4;
    }
  }

  else
  {
    if ((*a2 & 0x40) != 0)
    {
      return 1;
    }

    v6 = off_2A1A90240();
    v4 = *v6;
    if (!*v6)
    {
      v5 = v6;
      v4 = sub_2977FA198(16);
      sub_2978563C4(v8, &unk_2978FBDE8);
      goto LABEL_7;
    }
  }

  return sub_297812E80(v4, a1) ^ 1;
}

uint64_t sub_297854790@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_297856410(a3);
  *result = a1;
  *(result + 8) = a2;
  return result;
}

uint64_t sub_2978547C4(_BYTE *a1, uint64_t a2)
{
  a1[400] = sub_297850404(a2);
  a1[402] = sub_29785480C(a2);
  result = sub_297854818(a2);
  a1[403] = result;
  return result;
}

uint64_t sub_297854824(uint64_t a1, unsigned int *a2, char a3)
{
  v95 = a3;
  while (2)
  {
    sub_297853618(a2, 8);
    sub_2977FD5DC(a2, 0);
    v5 = *(a1 + 392);
    v94 = v5;
    v6 = *v5;
    if (v6 == 32 || v6 == 9)
    {
      do
      {
        v94 = ++v5;
        v8 = *v5;
      }

      while (v8 == 32 || v8 == 9);
      v10 = sub_297853198(a1);
      v11 = v94;
      if (v10)
      {
        v33 = a1;
        v34 = a2;
        v35 = 0;
        goto LABEL_262;
      }

      *(a1 + 392) = v94;
      sub_29785111C(a2, 2);
    }

    v93 = 0;
    v12 = sub_297851BA4(a1, &v94, a2);
    LOWORD(v13) = 59;
    switch(v12)
    {
      case 0:
        v14 = v94 - 1;
        if (v94 - 1 == *(a1 + 128))
        {
          return sub_297853CD4(a1, a2, v14);
        }

        if (sub_297852A24(a1, v94 - 1))
        {
          sub_297853ED0(a2);
          v11 = v94;
          v33 = a1;
          v34 = a2;
          v35 = 3;
          goto LABEL_262;
        }

        if ((sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, v94 - 1, 832, v92);
          sub_29782963C(v92);
        }

        sub_29785111C(a2, 2);
        goto LABEL_61;
      case 9:
      case 11:
      case 12:
      case 32:
        goto LABEL_64;
      case 10:
      case 13:
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          if (*(a1 + 8))
          {
            sub_29784F524(a1);
          }

          *(a1 + 400) = 257;
          LOWORD(v13) = 2;
          goto LABEL_261;
        }

        sub_297853618(a2, 2);
        goto LABEL_61;
      case 26:
        if ((*(a1 + 144) & 8) == 0)
        {
          goto LABEL_143;
        }

        v14 = v94 - 1;
        return sub_297853CD4(a1, a2, v14);
      case 33:
        if (sub_297852034(a1, v94, &v93 + 1) == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 41;
        }

        else
        {
          LOWORD(v13) = 40;
        }

        goto LABEL_261;
      case 34:
        sub_297854784((a1 + 32));
        v42 = v94;
        v43 = a1;
        v44 = a2;
        v45 = 13;
        goto LABEL_141;
      case 35:
        v46 = sub_297852034(a1, v94, &v93 + 1);
        if (v46 != 64)
        {
          if (v46 != 35)
          {
            goto LABEL_212;
          }

          v47 = v94;
          v48 = HIDWORD(v93);
          goto LABEL_115;
        }

        if ((*(a1 + 144) & 8) == 0)
        {
          goto LABEL_212;
        }

        if ((sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, *(a1 + 392), 777, v87);
          sub_29782963C(v87);
        }

        v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
        goto LABEL_248;
      case 36:
        if ((*(a1 + 146) & 0x20) == 0)
        {
          goto LABEL_143;
        }

        if ((sub_29785112C(a1) & 1) == 0)
        {
          sub_297850E94(a1, v94 - 1, 778, v90);
          sub_29782963C(v90);
        }

        goto LABEL_228;
      case 37:
        v64 = sub_297852034(a1, v94, &v93 + 1);
        if (v64 == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 45;
          goto LABEL_261;
        }

        v74 = *(a1 + 144) & 0x4000000;
        if (v64 == 62 && v74)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
LABEL_198:
          LOWORD(v13) = 24;
          goto LABEL_261;
        }

        LOWORD(v13) = 44;
        if (v64 != 58 || !v74)
        {
          goto LABEL_261;
        }

        v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
        v78 = sub_297852034(a1, v94, &v93 + 1);
        if (v78 == 64)
        {
          if ((*(a1 + 144) & 8) != 0)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            if ((sub_29785112C(a1) & 1) == 0)
            {
              sub_297850E94(a1, *(a1 + 392), 777, v89);
              sub_29782963C(v89);
            }

LABEL_248:
            LOWORD(v13) = 67;
            goto LABEL_261;
          }
        }

        else if (v78 == 37 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 58)
        {
          v47 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v48 = v93;
LABEL_115:
          v94 = sub_2978520B0(a1, v47, v48, a2);
          LOWORD(v13) = 66;
          goto LABEL_261;
        }

LABEL_212:
        if (v95 != 1 || (*(a1 + 26) & 1) != 0 || (*(a1 + 384) & 1) != 0)
        {
          LOWORD(v13) = 65;
          goto LABEL_261;
        }

        sub_297851FAC(a1, a2, v94, 65);
        sub_29786A740(*(a1 + 8), a2);
        return sub_297855CEC(*(a1 + 8));
      case 38:
        v61 = sub_297852034(a1, v94, &v93 + 1);
        if (v61 == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 29;
        }

        else if (v61 == 38)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 28;
        }

        else
        {
          LOWORD(v13) = 27;
        }

        goto LABEL_261;
      case 39:
        sub_297854784((a1 + 32));
        v50 = v94;
        v51 = a1;
        v52 = a2;
        v53 = 9;
        goto LABEL_157;
      case 40:
        LOWORD(v13) = 21;
        goto LABEL_261;
      case 41:
        LOWORD(v13) = 22;
        goto LABEL_261;
      case 42:
        if (sub_297852034(a1, v94, &v93 + 1) == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 31;
        }

        else
        {
          LOWORD(v13) = 30;
        }

        goto LABEL_261;
      case 43:
        v39 = sub_297852034(a1, v94, &v93 + 1);
        if (v39 == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 34;
        }

        else if (v39 == 43)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 33;
        }

        else
        {
          LOWORD(v13) = 32;
        }

        goto LABEL_261;
      case 44:
        LOWORD(v13) = 64;
        goto LABEL_261;
      case 45:
        v60 = sub_297852034(a1, v94, &v93 + 1);
        if (v60 == 62)
        {
          if ((*(a1 + 144) & 0x40) != 0 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 42)
          {
            v77 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v77, v93, a2);
            LOWORD(v13) = 69;
          }

          else
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 36;
          }
        }

        else if (v60 == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 38;
        }

        else if (v60 == 45)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 37;
        }

        else
        {
          LOWORD(v13) = 35;
        }

        goto LABEL_261;
      case 46:
        v40 = sub_297852034(a1, v94, &v93 + 1);
        if ((v40 - 48) > 9)
        {
          if (v40 == 42 && (*(a1 + 144) & 0x40) != 0)
          {
            v94 += HIDWORD(v93);
            LOWORD(v13) = 68;
          }

          else if (v40 == 46 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 46)
          {
            v76 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v76, v93, a2);
            LOWORD(v13) = 26;
          }

          else
          {
            LOWORD(v13) = 25;
          }

          goto LABEL_261;
        }

        sub_297854784((a1 + 32));
        v36 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
LABEL_85:
        sub_29785216C(a1, a2, v36);
        return 1;
      case 47:
        v19 = sub_297852034(a1, v94, &v93 + 1);
        if (v19 == 42)
        {
          v29 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          if (sub_297853648(a1, a2, v29, &v95))
          {
            return 1;
          }

          continue;
        }

        if (v19 != 47)
        {
          if (v19 == 61)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 43;
          }

          else
          {
LABEL_177:
            LOWORD(v13) = 42;
          }

LABEL_261:
          sub_297854784((a1 + 32));
          v11 = v94;
          v33 = a1;
          v34 = a2;
          v35 = v13;
LABEL_262:
          sub_297851FAC(v33, v34, v11, v35);
          return 1;
        }

        v20 = *(a1 + 144);
        if ((v20 & 0x20000) == 0 || (v20 & 0x8000000040) == 0x8000000000)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            if (sub_2978544C4(v21))
            {
              goto LABEL_177;
            }
          }

          if (sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 42)
          {
            goto LABEL_177;
          }
        }

        v22 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
        if (sub_2978531B4(a1, a2, v22, &v95))
        {
          return 1;
        }

LABEL_65:
        v30 = *(a1 + 392);
        v94 = v30;
        v31 = *v30;
        if (v31 != 47)
        {
          goto LABEL_81;
        }

        while (v30[1] == 47)
        {
          if (sub_297853520(a1))
          {
            v30 = v94;
            break;
          }

          v32 = *(a1 + 144);
          v30 = v94;
          if ((v32 & 0x20000) == 0 || (v32 & 0x8000000040) == 0x8000000000)
          {
            break;
          }

          if (sub_2978531B4(a1, a2, v94 + 2, &v95))
          {
            return 1;
          }

LABEL_73:
          v30 = *(a1 + 392);
          v94 = v30;
          v31 = *v30;
          if (v31 != 47)
          {
            goto LABEL_81;
          }
        }

        v31 = *v30;
        if (v31 != 47)
        {
          goto LABEL_81;
        }

        if (v30[1] != 42)
        {
          v31 = 47;
          goto LABEL_81;
        }

        if (!sub_297853520(a1))
        {
          if (sub_297853648(a1, a2, v94 + 2, &v95))
          {
            return 1;
          }

          goto LABEL_73;
        }

        v31 = *v94;
LABEL_81:
        if (!sub_297850F74(v31))
        {
          continue;
        }

LABEL_64:
        sub_29785111C(a2, 2);
        if ((sub_297853090(a1, a2, v94, &v95) & 1) == 0)
        {
          goto LABEL_65;
        }

        return 1;
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        sub_297854784((a1 + 32));
        v36 = v94;
        goto LABEL_85;
      case 58:
        v62 = sub_297852034(a1, v94, &v93 + 1);
        v63 = *(a1 + 144);
        if ((v63 & 0x4000000) != 0 && v62 == 62)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
LABEL_153:
          LOWORD(v13) = 20;
        }

        else
        {
          LOWORD(v13) = 60;
          if ((v63 & 0x40) != 0 && v62 == 58)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 70;
          }
        }

        goto LABEL_261;
      case 59:
        LOWORD(v13) = 61;
        goto LABEL_261;
      case 60:
        v15 = sub_297852034(a1, v94, &v93 + 1);
        if (*(a1 + 25) == 1)
        {
          sub_297852CFC(a1, a2, v94);
          return 1;
        }

        if (v15 != 60)
        {
          if (v15 == 61)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 48;
          }

          else
          {
            v69 = *(a1 + 144);
            if ((v69 & 0x4000000) != 0 && v15 == 58)
            {
              if ((v69 & 0x80) != 0 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 58 && (v91 = 0, (sub_297852034(a1, &v94[HIDWORD(v93) + v93], &v91) & 0xFFFFFFFB) != 0x3A))
              {
                if ((sub_29785112C(a1) & 1) == 0)
                {
                  sub_297850E94(a1, *(a1 + 392), 865, v88);
                  sub_29782963C(v88);
                }

                LOWORD(v13) = 46;
              }

              else
              {
                v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
LABEL_174:
                LOWORD(v13) = 19;
              }
            }

            else
            {
              LOWORD(v13) = 46;
              if ((v69 & 0x4000000) != 0 && v15 == 37)
              {
                v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
LABEL_202:
                LOWORD(v13) = 23;
              }
            }
          }

          goto LABEL_261;
        }

        v16 = sub_297852034(a1, &v94[HIDWORD(v93)], &v93);
        if (v16 != 60)
        {
          if (v16 == 61)
          {
            v38 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v38, v93, a2);
            LOWORD(v13) = 49;
            goto LABEL_261;
          }

          goto LABEL_206;
        }

        if ((sub_297853FD0(a1, v94 - 1) & 1) == 0 && (sub_297854238(a1, v94 - 1) & 1) == 0)
        {
          if ((*(a1 + 168) & 2) != 0)
          {
            v80 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v80, v93, a2);
            LOWORD(v13) = 72;
            goto LABEL_261;
          }

LABEL_206:
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 47;
          goto LABEL_261;
        }

        continue;
      case 61:
        if (sub_297852034(a1, v94, &v93 + 1) != 61)
        {
          LOWORD(v13) = 62;
          goto LABEL_261;
        }

        v26 = v94;
        if (v94[1] != 61)
        {
          goto LABEL_175;
        }

        if (sub_297854238(a1, v94 - 1))
        {
          continue;
        }

        v26 = v94;
LABEL_175:
        v94 = sub_2978520B0(a1, v26, SHIDWORD(v93), a2);
        LOWORD(v13) = 63;
        goto LABEL_261;
      case 62:
        v17 = sub_297852034(a1, v94, &v93 + 1);
        if (v17 != 62)
        {
          if (v17 == 61)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 52;
          }

          else
          {
            LOWORD(v13) = 50;
          }

          goto LABEL_261;
        }

        v18 = sub_297852034(a1, &v94[HIDWORD(v93)], &v93);
        if (v18 != 62)
        {
          if (v18 == 61)
          {
            v37 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v37, v93, a2);
            LOWORD(v13) = 53;
            goto LABEL_261;
          }

          goto LABEL_204;
        }

        if ((sub_297853FD0(a1, v94 - 1) & 1) == 0 && (sub_297854238(a1, v94 - 1) & 1) == 0)
        {
          if ((*(a1 + 168) & 2) != 0)
          {
            v79 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v94 = sub_2978520B0(a1, v79, v93, a2);
            LOWORD(v13) = 73;
            goto LABEL_261;
          }

LABEL_204:
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 51;
          goto LABEL_261;
        }

        continue;
      case 63:
        goto LABEL_261;
      case 64:
        if (*(v94 - 1) != 64 || (*(a1 + 145) & 4) == 0)
        {
          goto LABEL_143;
        }

        LOWORD(v13) = 71;
        goto LABEL_261;
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 83:
      case 84:
      case 86:
      case 87:
      case 88:
      case 89:
      case 90:
      case 95:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 110:
      case 111:
      case 112:
      case 113:
      case 114:
      case 115:
      case 116:
      case 118:
      case 119:
      case 120:
      case 121:
      case 122:
        goto LABEL_228;
      case 76:
        sub_297854784((a1 + 32));
        v41 = sub_297852034(a1, v94, &v93 + 1);
        if (v41 == 34)
        {
          v42 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v43 = a1;
          v44 = a2;
          v45 = 14;
          goto LABEL_141;
        }

        if (v41 == 82 && (*(a1 + 144) & 0x80) != 0)
        {
          if (sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 34)
          {
            v70 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v54 = sub_2978520B0(a1, v70, v93, a2);
            v55 = a1;
            v56 = a2;
            v57 = 14;
            goto LABEL_267;
          }
        }

        else if (v41 == 39)
        {
          v50 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v51 = a1;
          v52 = a2;
          v53 = 10;
          goto LABEL_157;
        }

LABEL_228:
        sub_297854784((a1 + 32));
        return sub_297851D6C(a1, a2, v94);
      case 82:
        sub_297854784((a1 + 32));
        if ((*(a1 + 144) & 0x80) == 0 || sub_297852034(a1, v94, &v93 + 1) != 34)
        {
          return sub_297851D6C(a1, a2, v94);
        }

        v54 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
        v55 = a1;
        v56 = a2;
        v57 = 13;
        goto LABEL_267;
      case 85:
        sub_297854784((a1 + 32));
        if ((*(a1 + 144) & 0x82) == 0)
        {
          return sub_297851D6C(a1, a2, v94);
        }

        v59 = sub_297852034(a1, v94, &v93 + 1);
        if (v59 != 82)
        {
          if (v59 == 39)
          {
            v50 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v51 = a1;
            v52 = a2;
            v53 = 12;
            goto LABEL_157;
          }

          if (v59 != 34)
          {
            return sub_297851D6C(a1, a2, v94);
          }

          v42 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v43 = a1;
          v44 = a2;
          v45 = 18;
          goto LABEL_141;
        }

        if ((*(a1 + 144) & 0x80) != 0 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 34)
        {
          v81 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v54 = sub_2978520B0(a1, v81, v93, a2);
          v55 = a1;
          v56 = a2;
          v57 = 18;
          goto LABEL_267;
        }

        return sub_297851D6C(a1, a2, v94);
      case 91:
        goto LABEL_174;
      case 92:
        v13 = sub_2978514D8(a1, &v94, *(a1 + 392), a2);
        if (!v13)
        {
          goto LABEL_261;
        }

        if (!sub_2978543B4(a1, a2, v13, v94))
        {
          v65 = a1;
          v66 = a2;
          v67 = v13;
          v68 = v94;
          return sub_2978544F8(v65, v66, v67, v68);
        }

        v23 = a1;
        v24 = a2;
        v25 = v94;
LABEL_62:
        if (sub_297853090(v23, v24, v25, &v95))
        {
          return 1;
        }

        continue;
      case 93:
        goto LABEL_153;
      case 94:
        v58 = sub_297852034(a1, v94, &v93 + 1);
        if (v58 == 61)
        {
          v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          LOWORD(v13) = 55;
        }

        else
        {
          v71 = v58;
          v72 = sub_29783B9A8(a1 + 144);
          LOWORD(v13) = 54;
          if (v71 == 94 && v72)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 74;
          }
        }

        goto LABEL_261;
      case 117:
        sub_297854784((a1 + 32));
        if ((*(a1 + 144) & 0x82) == 0)
        {
          return sub_297851D6C(a1, a2, v94);
        }

        v49 = sub_297852034(a1, v94, &v93 + 1);
        if (v49 <= 0x37)
        {
          if (v49 != 34)
          {
            if (v49 == 39)
            {
              v50 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
              v51 = a1;
              v52 = a2;
              v53 = 11;
LABEL_157:
              sub_297852E3C(v51, v52, v50, v53);
              return 1;
            }

            return sub_297851D6C(a1, a2, v94);
          }

          v42 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v43 = a1;
          v44 = a2;
          v45 = 17;
LABEL_141:
          sub_297852810(v43, v44, v42, v45);
          return 1;
        }

        if (v49 == 56)
        {
          v82 = sub_297852034(a1, &v94[HIDWORD(v93)], &v93);
          if (v82 == 82)
          {
            if ((*(a1 + 144) & 0x80) != 0)
            {
              v91 = 0;
              if (sub_297852034(a1, &v94[HIDWORD(v93) + v93], &v91) == 34)
              {
                v84 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
                v85 = sub_2978520B0(a1, v84, v93, a2);
                v54 = sub_2978520B0(a1, v85, v91, a2);
                v55 = a1;
                v56 = a2;
                v57 = 16;
                goto LABEL_267;
              }
            }
          }

          else if (v82 == 34)
          {
            v83 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            v42 = sub_2978520B0(a1, v83, v93, a2);
            v43 = a1;
            v44 = a2;
            v45 = 16;
            goto LABEL_141;
          }
        }

        else if (v49 == 82 && (*(a1 + 144) & 0x80) != 0 && sub_297852034(a1, &v94[HIDWORD(v93)], &v93) == 34)
        {
          v75 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
          v54 = sub_2978520B0(a1, v75, v93, a2);
          v55 = a1;
          v56 = a2;
          v57 = 17;
LABEL_267:
          sub_297852A98(v55, v56, v54, v57);
          return 1;
        }

        return sub_297851D6C(a1, a2, v94);
      case 123:
        goto LABEL_202;
      case 124:
        v27 = sub_297852034(a1, v94, &v93 + 1);
        if (v27 != 124)
        {
          if (v27 == 61)
          {
            v94 = sub_2978520B0(a1, v94, SHIDWORD(v93), a2);
            LOWORD(v13) = 58;
          }

          else
          {
            LOWORD(v13) = 56;
          }

          goto LABEL_261;
        }

        v28 = v94;
        if (v94[1] != 124)
        {
          goto LABEL_176;
        }

        if (sub_297854238(a1, v94 - 1))
        {
          continue;
        }

        v28 = v94;
LABEL_176:
        v94 = sub_2978520B0(a1, v28, SHIDWORD(v93), a2);
        LOWORD(v13) = 57;
        goto LABEL_261;
      case 125:
        goto LABEL_198;
      case 126:
        LOWORD(v13) = 39;
        goto LABEL_261;
      default:
        if (sub_297851FA0(v12))
        {
LABEL_143:
          LOWORD(v13) = 0;
          goto LABEL_261;
        }

        v91 = 0;
        --v94;
        if (!sub_297851CE8(&v94, *(a1 + 128), &v91))
        {
          if (sub_2978543B4(a1, a2, v91, v94))
          {
LABEL_61:
            v25 = v94;
            v23 = a1;
            v24 = a2;
            goto LABEL_62;
          }

          v67 = v91;
          v68 = v94;
          v65 = a1;
          v66 = a2;
          return sub_2978544F8(v65, v66, v67, v68);
        }

        if (sub_29785112C(a1) & 1) != 0 || (*(a1 + 24) & 1) != 0 || (sub_2978544C4(*(a1 + 8)))
        {
          LOWORD(v13) = 0;
          ++v94;
          goto LABEL_261;
        }

        sub_297850E94(a1, v94, 654, v86);
        sub_29782963C(v86);
        *(a1 + 392) = v94 + 1;
        continue;
    }
  }
}

void sub_297855CF8()
{
  v0 = sub_29784FCAC();

  j__free(v0);
}

uint64_t sub_297855D24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 16) = v4;
  v7 = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = v7;
  std::string::basic_string((a1 + 88), (a2 + 88));
  std::string::basic_string((a1 + 112), (a2 + 112));
  std::string::basic_string((a1 + 136), (a2 + 136));
  std::string::basic_string((a1 + 160), (a2 + 160));
  sub_297855DC4(a1 + 184, a2 + 184);
  sub_297855DC8(a1 + 208, a2 + 208);
  return a1;
}

uint64_t *sub_297855DCC(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  nullsub_1(a2, a2);
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_297809AF0(a2);
  sub_297855E2C(a1, v4, v5, v6);
  return a1;
}

uint64_t sub_297855E2C(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4(&v10, a1);
  sub_29780CD8C(v10, &v11);
  if (a4)
  {
    sub_297855EB4(a1, a4);
    sub_297855F1C(a1, a2, a3, a4);
  }

  sub_29780CE64(&v11);
  return j_nullsub_1(&v11, v8);
}

uint64_t sub_297855EB4(uint64_t *a1, unint64_t a2)
{
  if (sub_29780A020() < a2)
  {
    sub_29780A05C();
  }

  v4 = sub_29780A0D8(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v4 + 24 * v5;

  return nullsub_1(a1, 0);
}

uint64_t sub_297855F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297809E80(v8, a1, a4);
  v9 = sub_297855F84(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_297855F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2977FD8FC(a2, a3);
  v8 = v7;
  v9 = j_j_nullsub_1(a4, v7);
  v10 = sub_297855FF8(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

uint64_t sub_297855FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  sub_29780D0AC(&v13, a1, &v15, &v16);
  sub_29780D074(&v13, &v14);
  if (a2 != a3)
  {
    v8 = v16;
    do
    {
      v9 = nullsub_1(v8, v7);
      sub_2978560A4(a1, v9, a2);
      a2 += 24;
      v8 = v16 + 24;
      v16 += 24;
    }

    while (a2 != a3);
  }

  sub_29780CE64(&v14);
  v10 = v16;
  j_nullsub_1(&v14, v11);
  return v10;
}

uint64_t sub_2978560B4(uint64_t a1, uint64_t a2)
{
  result = sub_297855DC4();
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t sub_2978560E4(uint64_t a1)
{
  sub_297829180((a1 + 24));
  sub_297829180((a1 + 28));
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void *sub_297856128(void *a1)
{
  *a1 = &unk_2A1E553D8;
  sub_29785617C(a1 + 18);

  return sub_297856180(a1);
}

void *sub_297856180(void *a1)
{
  *a1 = &unk_2A1E55798;
  sub_2977FD134(a1 + 8);
  return a1;
}

uint64_t sub_2978561C4(uint64_t a1)
{
  sub_297856218(a1 + 208);
  sub_297809B8C(a1 + 184);
  std::string::~string((a1 + 160));
  std::string::~string((a1 + 136));
  std::string::~string((a1 + 112));
  std::string::~string((a1 + 88));
  return a1;
}

uint64_t sub_297856220(unsigned int a1)
{
  if (a1 - 8 < 5)
  {
    return 1;
  }

  LODWORD(result) = sub_297856264(a1);
  if (a1 == 15)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_297856288()
{
  result = sub_2978562A4();
  *(result + 8) = 0;
  return result;
}

_DWORD *sub_2978562A8(_DWORD *a1)
{
  v2 = sub_297829180(a1);
  sub_297829180(v2 + 1);
  return a1;
}

BOOL sub_29785634C(_DWORD *a1)
{
  result = sub_297805430(a1);
  if (result)
  {

    return sub_297805430(a1 + 1);
  }

  return result;
}

void *sub_2978563A0(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 45;
  return result;
}

void *sub_2978563AC(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 173;
  return result;
}

void *sub_2978563B8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 246;
  return result;
}

void *sub_2978563F8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 14;
  return result;
}

uint64_t sub_297856414(uint64_t a1)
{
  sub_297850AD8();
  sub_297850AD8();
  sub_297802744(a1 + 24);
  *(a1 + 48) = 0;
  return a1;
}

_DWORD *sub_297856450(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

void *sub_297856458(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 9;
  return result;
}

void *sub_297856474(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 4;
  return result;
}

uint64_t sub_297856480(const void **a1, uint64_t a2, uint64_t a3)
{
  v12[0] = a2;
  v12[1] = a3;
  v4 = sub_2977FB720(v12);
  result = sub_2977FB728(v12);
  if (v4 != result)
  {
    v6 = result;
    do
    {
      if (*v4 == 92)
      {
        v7 = 0;
        if (v4[1] == 117)
        {
          v8 = 4;
        }

        else
        {
          v8 = 8;
        }

        v9 = v4 + 2;
        v10 = v8;
        do
        {
          v11 = *v9++;
          v7 = sub_297854318(v11) + 16 * v7;
          --v10;
        }

        while (v10);
        v4 += v8 + 1;
        result = sub_29785655C(v7, a1);
      }

      else
      {
        result = sub_2977FCD50(a1, v4);
      }

      ++v4;
    }

    while (v4 != v6);
  }

  return result;
}

uint64_t sub_29785655C(int a1, const void **a2)
{
  v4 = v5;
  sub_297803204(a1, &v4);
  return sub_2977FD4F8(a2, v5, v4);
}

uint64_t sub_2978565A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v44[0] = a2;
  v44[1] = a3;
  *a1 = a5;
  *(a1 + 8) = sub_2977FB720(v44);
  *(a1 + 16) = sub_2977FB728(v44);
  sub_2978068F8(a1 + 56);
  v8 = *(a1 + 8);
  *(a1 + 24) = v8;
  *(a1 + 40) = v8;
  *(a1 + 52) = 0;
  *(a1 + 54) = 0;
  *(a1 + 112) = 0;
  if (*v8 == 48)
  {
    sub_297856BFC(a1, a4);
    if (*(a1 + 112))
    {
      return a1;
    }

    v9 = *(a1 + 40);
    goto LABEL_17;
  }

  *(a1 + 48) = 10;
  v10 = sub_297857144(a1, v8);
  v9 = v10;
  *(a1 + 40) = v10;
  if (v10 == *(a1 + 16))
  {
    goto LABEL_10;
  }

  v11 = *v10;
  if (sub_2978571AC(v11))
  {
    if ((v11 | 0x20) != 0x65)
    {
      v12 = sub_2978571C4(a5, a4, v9 - *(a1 + 8));
      sub_297850EEC(a5, v12, 649, v43);
      sub_2977FB7C0(&v41, *(a1 + 40), 1);
      sub_2978295C0(v43, v41, v42);
      sub_29782963C(v43);
      *(a1 + 112) = 1;
      return a1;
    }

    goto LABEL_11;
  }

  if (v11 == 46)
  {
    sub_2978571DC(a1, a4, v9, 1);
    v13 = (*(a1 + 40) + 1);
    *(a1 + 40) = v13;
    *(a1 + 53) = 1;
    sub_2978571DC(a1, a4, v13, 0);
    v9 = sub_297857144(a1, *(a1 + 40));
    *(a1 + 40) = v9;
LABEL_10:
    v11 = *v9;
  }

LABEL_11:
  if ((v11 | 0x20) == 0x65)
  {
    sub_2978571DC(a1, a4, v9, 1);
    v14 = *(a1 + 40);
    v15 = (v14 + 1);
    *(a1 + 40) = v14 + 1;
    *(a1 + 52) = 1;
    v16 = *(v14 + 1);
    if (v16 == 45 || v16 == 43)
    {
      v15 = (v14 + 2);
      *(a1 + 40) = v14 + 2;
    }

    sub_2978571DC(a1, a4, v15, 0);
    v17 = sub_297857144(a1, *(a1 + 40));
    if (v17 == *(a1 + 40))
    {
      v35 = sub_2978571C4(a5, a4, v14 - *(a1 + 8));
      sub_297850EEC(a5, v35, 631, v40);
      v34 = v40;
      goto LABEL_99;
    }

    v9 = v17;
    *(a1 + 40) = v17;
  }

LABEL_17:
  *(a1 + 32) = v9;
  sub_2978571DC(a1, a4, v9, 1);
  v18 = sub_297857294(a1);
  v19 = *(a1 + 40);
  v20 = *(a1 + 16);
  if (v19 == v20)
  {
    v22 = 0;
    goto LABEL_92;
  }

  v21 = v18;
  v22 = 0;
  while (1)
  {
    v23 = *v19;
    if (v23 <= 0x65)
    {
      if (*v19 <= 0x49u)
      {
        if (v23 != 70)
        {
          if (v23 != 72)
          {
            if (v23 != 73)
            {
              goto LABEL_87;
            }

            goto LABEL_29;
          }

          goto LABEL_51;
        }

        goto LABEL_62;
      }

      if (v23 == 74)
      {
        goto LABEL_84;
      }

      if (v23 != 76)
      {
        if (v23 != 85)
        {
          goto LABEL_87;
        }

LABEL_48:
        if (v21 & 1) != 0 || (*(a1 + 113))
        {
          goto LABEL_87;
        }

        *(a1 + 113) = 1;
        goto LABEL_86;
      }

      goto LABEL_55;
    }

    if (*v19 <= 0x69u)
    {
      break;
    }

    if (v23 == 106)
    {
      goto LABEL_84;
    }

    if (v23 != 108)
    {
      if (v23 != 117)
      {
        goto LABEL_87;
      }

      goto LABEL_48;
    }

LABEL_55:
    if (*(a1 + 114) & 1) != 0 || (*(a1 + 115) & 1) != 0 || (*(a1 + 116))
    {
LABEL_87:
      v25 = *(a1 + 16);
      v37 = *(a1 + 40);
      goto LABEL_88;
    }

    if (v19 + 1 == v20 || v19[1] != v23)
    {
      *(a1 + 114) = 1;
    }

    else
    {
      if (v21)
      {
        goto LABEL_87;
      }

      *(a1 + 115) = 1;
      ++v19;
    }

LABEL_86:
    *(a1 + 40) = ++v19;
    if (v19 == v20)
    {
      goto LABEL_87;
    }
  }

  if (v23 == 102)
  {
LABEL_62:
    if (!v21 || (*(a1 + 116) & 1) != 0 || (*(a1 + 114) & 1) != 0)
    {
      goto LABEL_87;
    }

    *(a1 + 116) = 1;
    goto LABEL_86;
  }

  if (v23 == 104)
  {
LABEL_51:
    if (!v21 || (*(a1 + 117) & 1) != 0 || (*(a1 + 114) & 1) != 0)
    {
      goto LABEL_87;
    }

    *(a1 + 117) = 1;
    goto LABEL_86;
  }

  if (v23 != 105)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((*sub_29783CFFC(a5) & 8) == 0)
  {
    goto LABEL_82;
  }

  if ((*(a1 + 114) & 1) != 0 || (*(a1 + 115) & 1) != 0 || *(a1 + 119))
  {
    goto LABEL_87;
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 16);
  if (v24 + 1 == v25)
  {
    goto LABEL_82;
  }

  v26 = v24[1];
  if (v26 > 0x35)
  {
    if (v26 == 54)
    {
      if ((v21 & 1) == 0 && v24 + 2 != v25 && v24[2] == 52)
      {
        v37 = v24 + 3;
        *(a1 + 40) = v37;
        v38 = 64;
        goto LABEL_102;
      }
    }

    else if (v26 == 56 && (v21 & 1) == 0)
    {
      v37 = v24 + 2;
      *(a1 + 40) = v37;
      v38 = 8;
      goto LABEL_102;
    }

    goto LABEL_82;
  }

  if (v26 != 49)
  {
    if (v26 == 51 && (v21 & 1) == 0 && v24 + 2 != v25 && v24[2] == 50)
    {
      v37 = v24 + 3;
      *(a1 + 40) = v37;
      v38 = 32;
      goto LABEL_102;
    }

    goto LABEL_82;
  }

  if ((v21 & 1) != 0 || v24 + 2 == v25)
  {
    goto LABEL_82;
  }

  v27 = v24[2];
  if (v27 != 50)
  {
    if (v27 == 54)
    {
      v37 = v24 + 3;
      *(a1 + 40) = v37;
      v38 = 16;
      goto LABEL_102;
    }

    goto LABEL_82;
  }

  if (v24 + 3 == v25 || v24[3] != 56)
  {
LABEL_82:
    if ((*(sub_29783CFFC(a5) + 1) & 1) != 0 && **(a1 + 40) == 105)
    {
      goto LABEL_87;
    }

LABEL_84:
    if (*(a1 + 118))
    {
      goto LABEL_87;
    }

    *(a1 + 118) = 1;
    v19 = *(a1 + 40);
    v20 = *(a1 + 16);
    v22 = v19;
    goto LABEL_86;
  }

  v37 = v24 + 4;
  *(a1 + 40) = v37;
  v38 = 0x80;
LABEL_102:
  *(a1 + 119) = v38;
LABEL_88:
  if (v37 != v25)
  {
    sub_2977FB7C0(v43, *(a1 + 32), &v25[-*(a1 + 32)]);
    sub_297856480((a1 + 56), v43[0], v43[1]);
    v28 = sub_29783CFFC(a5);
    v29 = sub_2978059B8(a1 + 56);
    if (sub_2978572B0(v28, v29, v30))
    {
      *(a1 + 116) = 0;
      *(a1 + 113) = 0;
      *(a1 + 54) = 1;
      return a1;
    }

    v32 = sub_2978571C4(a5, a4, *(a1 + 32) - *(a1 + 8));
    if (v21)
    {
      v33 = 652;
    }

    else
    {
      v33 = 653;
    }

    sub_297850EEC(a5, v32, v33, v43);
    sub_2977FB7C0(&v41, *(a1 + 32), *(a1 + 16) - *(a1 + 32));
    sub_2978295C0(v43, v41, v42);
    v34 = v43;
LABEL_99:
    sub_29782963C(v34);
    *(a1 + 112) = 1;
    return a1;
  }

LABEL_92:
  if (*(a1 + 118) == 1)
  {
    v31 = sub_2978571C4(a5, a4, v22 - *(a1 + 8));
    sub_297850EEC(a5, v31, 784, v39);
    sub_29782963C(v39);
  }

  return a1;
}

uint64_t sub_297856BFC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  v5 = (v4 + 1);
  *(a1 + 40) = v4 + 1;
  v6 = *(v4 + 1);
  v9 = *(v4 + 2);
  v7 = (v4 + 2);
  v8 = v9;
  v10 = v6 & 0xFFFFFFDF;
  if (v10 == 88)
  {
    if (sub_2978571AC(v8) || v8 == 46)
    {
      *(a1 + 40) = v7;
      *(a1 + 48) = 16;
      *(a1 + 24) = v7;
      result = sub_2978574D0(a1, v7);
      v12 = result;
      *(a1 + 40) = result;
      v13 = *(a1 + 24);
      if (result == *(a1 + 16) || *result != 46)
      {
        if (result != v13)
        {
          v16 = result;
          goto LABEL_24;
        }

        v15 = a2;
      }

      else
      {
        v14 = result + 1;
        *(a1 + 40) = result + 1;
        *(a1 + 53) = 1;
        v15 = a2;
        sub_2978571DC(a1, a2, (result + 1), 0);
        result = sub_2978574D0(a1, *(a1 + 40));
        v16 = result;
        *(a1 + 40) = result;
        if (v12 != v13 || (LODWORD(v12) = v12 + 1, v14 != result))
        {
LABEL_24:
          if ((*v16 | 0x20) == 0x70)
          {
            sub_2978571DC(a1, a2, v16, 1);
            v26 = *(a1 + 40);
            v27 = (v26 + 1);
            *(a1 + 40) = v26 + 1;
            *(a1 + 52) = 1;
            v28 = *(v26 + 1);
            if (v28 == 45 || v28 == 43)
            {
              v27 = (v26 + 2);
              *(a1 + 40) = v26 + 2;
            }

            v29 = sub_297857144(a1, v27);
            v30 = *(a1 + 40);
            if (v29 != v30)
            {
              v31 = v29;
              sub_2978571DC(a1, a2, v30, 0);
              *(a1 + 40) = v31;
              result = sub_29783CFFC(*a1);
              if ((*(result + 3) & 8) == 0)
              {
                sub_297850EEC(*a1, a2, 783, v59);
                return sub_29782963C(v59);
              }

              return result;
            }

            v52 = *a1;
            v53 = sub_2978571C4(*a1, a2, v26 - *(a1 + 8));
            sub_297850EEC(v52, v53, 631, v60);
            v40 = v60;
          }

          else
          {
            if (*(a1 + 53) != 1)
            {
              return result;
            }

            v41 = *a1;
            v42 = sub_2978571C4(*a1, a2, v16 - *(a1 + 8));
            sub_297850EEC(v41, v42, 645, v58);
            v40 = v58;
          }

LABEL_55:
          result = sub_29782963C(v40);
          *(a1 + 112) = 1;
          return result;
        }
      }

      v38 = *a1;
      v39 = sub_2978571C4(*a1, v15, v12 - *(a1 + 8));
      sub_297850EEC(v38, v39, 644, v61);
      v40 = v61;
      goto LABEL_55;
    }

LABEL_15:
    *(a1 + 48) = 8;
    *(a1 + 24) = v5;
    result = sub_297857594(a1, v5);
    *(a1 + 40) = result;
    if (result == *(a1 + 16))
    {
      return result;
    }

    v19 = result;
    v20 = *result;
    if (sub_29782A734(v20))
    {
      v21 = sub_297857144(a1, v19);
      v22 = *v21 - 46;
      v23 = v22 > 0x37;
      v24 = (1 << v22) & 0x80000000800001;
      if (v23 || v24 == 0)
      {
        v19 = *(a1 + 40);
      }

      else
      {
        v19 = v21;
        *(a1 + 40) = v21;
        *(a1 + 48) = 10;
      }

      v20 = *v19;
    }

    result = sub_2978571AC(v20);
    if (result)
    {
      if ((v20 | 0x20) != 0x65)
      {
        v43 = *a1;
        v35 = sub_2978571C4(*a1, a2, v19 - *(a1 + 8));
        v36 = v43;
        v37 = 650;
        goto LABEL_44;
      }
    }

    else if (v20 == 46)
    {
      *(a1 + 40) = v19 + 1;
      *(a1 + 48) = 10;
      *(a1 + 53) = 1;
      sub_2978571DC(a1, a2, v19 + 1, 0);
      result = sub_297857144(a1, *(a1 + 40));
      v19 = result;
      *(a1 + 40) = result;
      v20 = *result;
    }

    if ((v20 | 0x20) != 0x65)
    {
      return result;
    }

    sub_2978571DC(a1, a2, v19, 1);
    v44 = *(a1 + 40);
    v45 = (v44 + 1);
    *(a1 + 40) = v44 + 1;
    *(a1 + 48) = 10;
    *(a1 + 52) = 1;
    v46 = *(v44 + 1);
    if (v46 == 45 || v46 == 43)
    {
      v45 = (v44 + 2);
      *(a1 + 40) = v44 + 2;
    }

    v47 = sub_297857144(a1, v45);
    v48 = *(a1 + 40);
    if (v47 != v48)
    {
      v49 = v47;
      result = sub_2978571DC(a1, a2, v48, 0);
      *(a1 + 40) = v49;
      return result;
    }

    v50 = *a1;
    v51 = sub_2978571C4(*a1, a2, v44 - *(a1 + 8));
    sub_297850EEC(v50, v51, 631, v54);
    v40 = v54;
    goto LABEL_55;
  }

  if (v10 != 66 || (v8 & 0xFE) != 0x30)
  {
    goto LABEL_15;
  }

  v17 = *a1;
  if (*(sub_29783CFFC(*a1) + 1))
  {
    v18 = 859;
  }

  else if ((*sub_29783CFFC(*a1) & 0x40) != 0)
  {
    v18 = 775;
  }

  else
  {
    v18 = 774;
  }

  sub_297850EEC(v17, a2, v18, v57);
  sub_29782963C(v57);
  v32 = (*(a1 + 40) + 1);
  *(a1 + 40) = v32;
  *(a1 + 48) = 2;
  *(a1 + 24) = v32;
  result = sub_297857538(a1, v32);
  *(a1 + 40) = result;
  if (result != *(a1 + 16))
  {
    v33 = result;
    result = sub_2978571AC(*result);
    if (result)
    {
      v34 = *a1;
      v35 = sub_2978571C4(*a1, a2, v33 - *(a1 + 8));
      v36 = v34;
      v37 = 646;
LABEL_44:
      sub_297850EEC(v36, v35, v37, v56);
      sub_2977FB7C0(v55, *(a1 + 40), 1);
      sub_2978295C0(v56, v55[0], v55[1]);
      result = sub_29782963C(v56);
      *(a1 + 112) = 1;
    }
  }

  return result;
}

unsigned __int8 *sub_297857144(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    do
    {
      v5 = *v2;
      if ((sub_29782A734(*v2) & 1) == 0)
      {
        if (!sub_2978574C4(v5))
        {
          return v2;
        }

        v3 = *(a1 + 16);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return v2;
}

uint64_t sub_2978571DC(uint64_t result, unsigned int a2, char *a3, int a4)
{
  v5 = a3;
  v7 = result;
  if (a4 == 1)
  {
    if (*(result + 8) == a3)
    {
      return result;
    }

    v5 = a3 - 1;
  }

  else if (*(result + 16) == a3)
  {
    return result;
  }

  result = sub_2978574C4(*v5);
  if (result)
  {
    v8 = *v7;
    v9 = sub_2978571C4(*v7, a2, v5 - *(v7 + 8));
    sub_297850EEC(v8, v9, 628, v10);
    sub_2978563C8(v10, a4);
    return sub_29782963C(v10);
  }

  return result;
}

uint64_t sub_297857294(uint64_t a1)
{
  if (*(a1 + 53))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 52);
  }

  return v1 & 1;
}

uint64_t sub_2978572B0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  if ((*a1 & 0x80) == 0 || sub_297806914(&v13))
  {
    return 0;
  }

  if (sub_297803A20(&v13, 0) == 95)
  {
    return 1;
  }

  if ((a1[1] & 1) == 0)
  {
    return 0;
  }

  sub_2978102C8(v12, v13, v14);
  v11 = 1;
  v5 = sub_2978573B0(v12, "h", "min", "s", &v11);
  v10 = 1;
  v6 = sub_29785740C(v5, "ms", "us", "ns", &v10);
  v9 = 1;
  v7 = sub_297857468(v6, "il", "i", "if", &v9);
  v8 = 0;
  return sub_297828CA4(v7, &v8);
}

uint64_t sub_2978573B0(uint64_t a1, unsigned __int8 *a2, unsigned __int16 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v8 = sub_297859A18(a1, a2, a5);
  v9 = sub_297810428(v8, a3, a5);

  return sub_297859A18(v9, a4, a5);
}

uint64_t sub_29785740C(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5)
{
  v8 = sub_29781243C(a1, a2, a5);
  v9 = sub_29781243C(v8, a3, a5);

  return sub_29781243C(v9, a4, a5);
}

uint64_t sub_297857468(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3, unsigned __int16 *a4, uint64_t a5)
{
  v8 = sub_29781243C(a1, a2, a5);
  v9 = sub_297859A18(v8, a3, a5);

  return sub_29781243C(v9, a4, a5);
}

unsigned __int8 *sub_2978574D0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    do
    {
      v5 = *v2;
      if (!sub_2978571AC(*v2))
      {
        if (!sub_2978574C4(v5))
        {
          return v2;
        }

        v3 = *(a1 + 16);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return v2;
}

char *sub_297857538(uint64_t a1, char *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    do
    {
      v5 = *v2;
      if ((v5 & 0xFFFFFFFE) != 0x30)
      {
        if (!sub_2978574C4(v5))
        {
          return v2;
        }

        v3 = *(a1 + 16);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return v2;
}

char *sub_297857594(uint64_t a1, char *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3 != a2)
  {
    do
    {
      v5 = *v2;
      if ((v5 & 0xFFFFFFF8) != 0x30)
      {
        if (!sub_2978574C4(v5))
        {
          return v2;
        }

        v3 = *(a1 + 16);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  return v2;
}

uint64_t sub_2978575F0(uint64_t a1, unsigned int *a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (sub_2978577CC(*(a1 + 48), v4 - v5))
  {
    if (v5 == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        if (!sub_2978574C4(*v5))
        {
          v7 = v6 * *(a1 + 48);
          v6 = v7 + sub_297854318(*v5);
        }

        ++v5;
      }

      while (v5 != *(a1 + 32));
    }

    sub_2977FE770(a2, v6);
    LOBYTE(v11) = sub_2977FCF34(a2) != v6;
  }

  else
  {
    sub_2977FE770(a2, 0);
    v8 = *(a1 + 24);
    v9 = sub_2977FB5F0(a2);
    sub_2977FB51C(v21, v9, *(a1 + 48), 0);
    v10 = sub_2977FB5F0(a2);
    sub_2977FB51C(v20, v10, 0, 0);
    sub_2977FB630(v19, a2);
    LOBYTE(v11) = 0;
    if (v8 < *(a1 + 32))
    {
      v11 = 0;
      do
      {
        v12 = v8;
        while (1)
        {
          v13 = *v12++;
          if (!sub_2978574C4(v13))
          {
            break;
          }

          v8 = v12;
          if (v12 >= *(a1 + 32))
          {
            goto LABEL_15;
          }
        }

        v14 = *v8++;
        v15 = sub_297854318(v14);
        sub_2977FE770(v20, v15);
        sub_2977FF844(v19, a2);
        sub_2977FE9D8(a2, v21);
        sub_2978004D0(a2, v21, v18);
        v16 = sub_297801848(v18, v19);
        sub_2977FAA04(v18);
        sub_2977FE870(a2, v20);
        v11 |= v16 | sub_2977FF180(a2, v20);
      }

      while (v8 < *(a1 + 32));
    }

LABEL_15:
    sub_2977FAA04(v19);
    sub_2977FAA04(v20);
    sub_2977FAA04(v21);
  }

  return v11 & 1;
}

BOOL sub_2978577CC(int a1, unsigned int a2)
{
  HIDWORD(v2) = a1 - 2;
  LODWORD(v2) = a1 - 2;
  return dword_2978FBE80[(v2 >> 1)] > a2;
}

char *sub_2978577F0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  sub_2978068F8(a1 + 16);
  *(a1 + 11) = 0;
  v11 = (a1 + 11);
  *(a1 + 8) = a6;
  v68 = a2;
  if (a6 == 9)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2 + 1;
  }

  v13 = (v12 + 1);
  v83[0] = (v12 + 1);
  if (*(a3 - 1) == 39)
  {
    v14 = a3;
  }

  else
  {
    v15 = 0;
    v14 = a3;
    do
    {
      v16 = *(v14 - 2);
      --v14;
      ++v15;
    }

    while (v16 != 39);
    sub_2977FB7C0(v82, v14, v15);
    sub_297856480((a1 + 16), v82[0], v82[1]);
    *(a1 + 72) = a3 - v68 - v15;
    v13 = v83[0];
  }

  v17 = (v14 - 1);
  v18 = sub_297813788(v82);
  sub_297857E00(v18, v14 - 1 - v13);
  v19 = sub_297803A7C(v82);
  v81 = v19;
  v20 = sub_297803A80(v82);
  v69 = a1;
  v21 = *(a1 + 8);
  switch(v21)
  {
    case 12:
      v23 = 1114111;
      break;
    case 11:
      v23 = 0xFFFF;
      break;
    case 10:
      v22 = sub_297805510(a5);
      v23 = 0xFFFFFFFF >> -sub_297857EF4(v22);
      break;
    default:
      v23 = 127;
      break;
  }

  if (v13 != v17)
  {
    v66 = (v14 - 2);
    v67 = &v19[v20];
    do
    {
      if (*v13 == 92)
      {
        if ((v13[1] | 0x20) == 0x75)
        {
          v24 = v81;
          v25 = sub_29781F408(a5);
          sub_297829728(&v77, a4, v25);
          v26 = sub_2977FD5B0(a5);
          v27 = sub_29783CFFC(a5);
          if (sub_297857F0C(v68, v83, v17, v24, v71, v77, v78, v26, v27))
          {
            if (*v81 > v23)
            {
              *v11 = 1;
              sub_297850EEC(a5, a4, 625, v76);
              sub_29782963C(v76);
            }
          }

          else
          {
            *v11 = 1;
          }

          ++v81;
        }

        else
        {
          v37 = *(v69 + 8);
          v38 = sub_297805510(a5);
          v39 = sub_29785820C(v37, v38);
          v40 = sub_29781F408(a5);
          sub_297829728(&v77, a4, v40);
          v41 = sub_2977FD5B0(a5);
          v42 = sub_29783CFFC(a5);
          v43 = sub_29785826C(v68, v83, v17, v11, v77, v78, v39, v41, v42);
          v44 = v81++;
          *v44 = v43;
        }
      }

      else
      {
        v77 = v13;
        v28 = v13 + 1;
        while (v28 != v17)
        {
          v29 = *v28++;
          if (v29 == 92)
          {
            v30 = v28 - 2;
            v31 = v28 - 1;
            goto LABEL_28;
          }
        }

        v30 = v66;
        v31 = v17;
LABEL_28:
        v83[0] = v31;
        v32 = v81;
        if (sub_297802F84(&v77, v31, &v81, v67, 0))
        {
          v33 = sub_297857EFC(v69);
          if (v33)
          {
            v34 = 854;
          }

          else
          {
            v34 = 623;
          }

          sub_297850EEC(a5, a4, v34, v80);
          sub_29782963C(v80);
          if (v33)
          {
            v77 = v13;
            v81 = v32;
            if (v13 != v31)
            {
              do
              {
                *v32 = *v13;
                v35 = v77;
                v13 = ++v77;
                v32 = ++v81;
              }

              while (v35 != v30);
            }
          }

          else
          {
            *v11 = 1;
          }
        }

        else
        {
          v36 = v81;
          while (v32 < v36)
          {
            if (*v32 > v23)
            {
              *v11 = 1;
              sub_297850EEC(a5, a4, 625, v79);
              sub_29782963C(v79);
              v36 = v81;
            }

            ++v32;
          }
        }
      }

      v13 = v83[0];
    }

    while (v83[0] != v17);
  }

  v45 = v81;
  v46 = v45 - sub_297803A7C(v82);
  v47 = v46 >> 2;
  if ((v46 >> 2) < 2)
  {
    v54 = 0;
    v48 = v69;
  }

  else
  {
    v48 = v69;
    if (sub_29785872C(v69))
    {
      v49 = a4;
      v50 = v75;
      v51 = v75;
      v52 = a5;
      v53 = 874;
    }

    else
    {
      v55 = sub_297857EFC(v69);
      if (v47 == 4 && v55)
      {
        v49 = a4;
        v50 = v74;
        v51 = v74;
        v52 = a5;
        v53 = 782;
      }

      else
      {
        v56 = sub_297857EFC(v69);
        v49 = a4;
        if (v56)
        {
          v50 = v73;
          v51 = v73;
          v52 = a5;
          v53 = 790;
        }

        else
        {
          v50 = v72;
          v51 = v72;
          v52 = a5;
          v53 = 690;
        }
      }
    }

    sub_297850EEC(v52, v49, v53, v51);
    sub_29782963C(v50);
    v54 = 1;
  }

  v48[10] = v54;
  v57 = sub_297805510(a5);
  v58 = sub_297847E30(v57);
  sub_2977FB51C(&v77, v58, 0, 0);
  if (sub_297857EFC(v48) && sub_29785873C(v48))
  {
    sub_2977FE770(&v77, 0);
    v59 = (v46 >> 2);
    if (v59)
    {
      v60 = 0;
      v61 = 0;
      do
      {
        v61 |= sub_2977FD6C0(&v77) < 8;
        sub_2977FB520(&v77, 8);
        v62 = sub_2978297C0(v82, v60);
        sub_297800648(&v77, *v62, v71);
        sub_2977FB698(&v77, v71);
        sub_2977FAA04(v71);
        ++v60;
      }

      while (v59 != v60);
      if ((*v11 & 1) == 0 && ((v61 ^ 1) & 1) == 0)
      {
        sub_297850EEC(a5, a4, 858, v70);
        sub_29782963C(v70);
      }
    }
  }

  else if (v47)
  {
    sub_2977FE770(&v77, *(v81 - 1));
  }

  *v48 = sub_2977FCF34(&v77);
  v63 = sub_297857EFC(v48);
  if (v47 == 1 && v63 && *v48 < 0 && (*(sub_29783CFFC(a5) + 17) & 8) != 0)
  {
    *v48 = *v48;
  }

  sub_2977FAA04(&v77);
  sub_2977FD134(v82);
  return v48;
}

unint64_t sub_297857E00(const void **a1, unsigned int a2)
{
  v3 = a2;
  if (sub_297803A80(a1) <= a2)
  {
    result = sub_297803A80(a1);
    if (result >= v3)
    {
      return result;
    }

    if (sub_297859A8C(a1) < v3)
    {
      sub_297803D70(a1, v3);
    }

    v7 = sub_2977FB7B8(a1);
    v8 = sub_2977FB720(a1) + 4 * v3;
    if (v7 != v8)
    {
      bzero(v7, ((v8 - v7 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
    }
  }

  else
  {
    v4 = sub_2977FB720(a1) + 4 * v3;
    v5 = sub_2977FB7B8(a1);
    nullsub_1(v4, v5);
  }

  v9 = sub_2977FB720(a1) + 4 * v3;

  return sub_2977FD5DC(a1, v9);
}

uint64_t sub_297857F0C(int a1, char **a2, unsigned __int8 *a3, int *a4, __int16 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v13 = *a2;
  v14 = (*a2 + 2);
  *a2 = v14;
  if (v14 == a3 || !sub_2978571AC(*v14))
  {
    if (a8)
    {
      sub_29785968C(a8, a9, a6, a7, a1, v13, v14, 642, v37);
      sub_2977FB7C0(&v35, *a2 - 1, 1);
      sub_2978295C0(v37, v35, v36);
      v22 = v37;
      goto LABEL_18;
    }

    return 0;
  }

  if (v13[1] == 117)
  {
    v18 = 4;
  }

  else
  {
    v18 = 8;
  }

  *a5 = v18;
  v19 = *a2;
  if (*a2 == a3)
  {
LABEL_14:
    if (a8)
    {
      sub_29785968C(a8, a9, a6, a7, a1, v13, v19, 763, v34);
      v22 = v34;
LABEL_18:
      sub_29782963C(v22);
      return 0;
    }

    return 0;
  }

  do
  {
    v20 = sub_297854318(*v19);
    if (v20 == -1)
    {
      goto LABEL_14;
    }

    *a4 = v20 | (16 * *a4);
    v19 = *a2 + 1;
    *a2 = v19;
    --v18;
  }

  while (v19 != a3 && v18 != 0);
  if (v18)
  {
    goto LABEL_14;
  }

  v24 = *a4;
  if (HIWORD(*a4) > 0x10u || (v24 & 0xFFFFF800) == 0xD800)
  {
    if (!a8)
    {
      return 0;
    }

    sub_29785968C(a8, a9, a6, a7, a1, v13, v19, 764, v33);
    v22 = v33;
    goto LABEL_18;
  }

  if (v24 <= 0x9F && (*a4 - 36 > 0x3C || ((1 << (v24 - 36)) & 0x1000000010000001) == 0))
  {
    v25 = *a9;
    if (a8)
    {
      v32 = *a4;
      if (v24 - 32 > 0x5E)
      {
        if ((v25 & 0x80) != 0)
        {
          v28 = 866;
        }

        else
        {
          v28 = 761;
        }

        sub_29785968C(a8, a9, a6, a7, a1, v13, v19, v28, v31);
        v27 = v31;
      }

      else
      {
        if ((v25 & 0x80) != 0)
        {
          v26 = 867;
        }

        else
        {
          v26 = 762;
        }

        sub_29785968C(a8, a9, a6, a7, a1, v13, v19, v26, v37);
        sub_2977FB7C0(&v35, &v32, 1);
        sub_2978295C0(v37, v35, v36);
        v27 = v37;
      }

      sub_29782963C(v27);
    }

    if ((v25 & 0x80) == 0)
    {
      return 0;
    }
  }

  if ((*a9 & 0x40) != 0)
  {
    return 1;
  }

  result = 1;
  if (a8 && (*a9 & 1) == 0)
  {
    sub_29785968C(a8, a9, a6, a7, a1, v13, *a2, 913, v30);
    sub_29782963C(v30);
    return 1;
  }

  return result;
}

uint64_t sub_29785820C(int a1, uint64_t a2)
{
  if (a1 <= 12)
  {
    if (a1 > 10)
    {
      if (a1 != 11)
      {
        return sub_297859898(a2);
      }

      return sub_297859890(a2);
    }

    if (a1 == 9)
    {
      return sub_29781C25C();
    }
  }

  else
  {
    if (a1 > 15)
    {
      if (a1 != 16)
      {
        if (a1 != 17)
        {
          return sub_297859898(a2);
        }

        return sub_297859890(a2);
      }

      return sub_29781C25C();
    }

    if (a1 == 13)
    {
      return sub_29781C25C();
    }
  }

  return sub_297857EF4(a2);
}

uint64_t sub_29785826C(int a1, unsigned __int8 **a2, unsigned __int8 *a3, _BYTE *a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  v14 = a1;
  v15 = *a2;
  v16 = *a2 + 2;
  *a2 = v16;
  v17 = v15[1];
  v18 = v17;
  if (v17 <= 0x44)
  {
    if (v15[1] <= 0x27u)
    {
      if (v17 == 34)
      {
        return v18;
      }

      if (v17 != 37)
      {
        if (v17 == 39)
        {
          return v18;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v17 - 48 < 8)
      {
        v19 = 0;
        LODWORD(v18) = 0;
        do
        {
          v20 = &v15[v19 + 2];
          *a2 = v20;
          v18 = (v15[v19 + 1] - 48) | (8 * v18);
          if (v20 == a3 || v19 > 1)
          {
            break;
          }

          ++v19;
        }

        while ((*v20 & 0xF8) == 0x30);
        if (a7 != 32 && v18 >> a7)
        {
          if (a8)
          {
            sub_29785968C(a8, a9, a5, a6, a1, v15, v20, 694, v47);
            sub_29782963C(v47);
          }

          return v18 & (0xFFFFFFFF >> -a7);
        }

        return v18;
      }

      if (v17 != 40)
      {
        if (v17 == 63)
        {
          return v18;
        }

        goto LABEL_44;
      }
    }

LABEL_47:
    if (!a8)
    {
      return v18;
    }

    v25 = a8;
    v26 = a9;
    v27 = a5;
    v28 = a6;
    v29 = v15;
    v30 = v16;
    v31 = 793;
    goto LABEL_49;
  }

  if (v15[1] <= 0x65u)
  {
    if (v15[1] > 0x60u)
    {
      if (v17 == 97)
      {
        return 7;
      }

      if (v17 == 98)
      {
        return 8;
      }

      if (v17 != 101)
      {
        goto LABEL_44;
      }

      if (a8)
      {
        sub_29785968C(a8, a9, a5, a6, a1, v15, v16, 793, &v45);
        v22 = "e";
LABEL_61:
        sub_29783F028(&v45, v22);
        sub_29782963C(&v45);
      }
    }

    else
    {
      if (v17 != 69)
      {
        if (v17 != 91)
        {
          if (v17 == 92)
          {
            return v18;
          }

          goto LABEL_44;
        }

        goto LABEL_47;
      }

      if (a8)
      {
        sub_29785968C(a8, a9, a5, a6, a1, v15, v16, 793, &v45);
        v22 = "E";
        goto LABEL_61;
      }
    }

    return 27;
  }

  if (v15[1] <= 0x73u)
  {
    switch(v17)
    {
      case 'f':
        return 12;
      case 'n':
        return 10;
      case 'r':
        return 13;
    }

    goto LABEL_44;
  }

  if (v15[1] <= 0x77u)
  {
    if (v17 == 116)
    {
      return 9;
    }

    if (v17 == 118)
    {
      return 11;
    }

    goto LABEL_44;
  }

  if (v17 != 120)
  {
    if (v17 == 123)
    {
      goto LABEL_47;
    }

LABEL_44:
    if (!a8)
    {
      return v18;
    }

    if (!sub_2978598A0(v17))
    {
      sub_29785968C(a8, a9, a5, a6, a1, v15, v16, 817, v46);
      sub_2978598BC(v18, &v43);
      sub_2978094F0("x", &v43, &v45);
      sub_2978044E8(v44, &v45);
      sub_2978295C0(v46, v44[0], v44[1]);
      std::string::~string(&v45);
      std::string::~string(&v43);
      v32 = v46;
      goto LABEL_50;
    }

    v25 = a8;
    v26 = a9;
    v27 = a5;
    v28 = a6;
    v14 = a1;
    v29 = v15;
    v30 = v16;
    v31 = 817;
LABEL_49:
    sub_29785968C(v25, v26, v27, v28, v14, v29, v30, v31, &v43);
    sub_29780BCFC(&v45, 1);
    sub_2978044E8(v46, &v45);
    sub_2978295C0(&v43, v46[0], v46[1]);
    std::string::~string(&v45);
    v32 = &v43;
LABEL_50:
    sub_29782963C(v32);
    return v18;
  }

  if (v16 == a3 || !sub_2978571AC(*v16))
  {
    if (a8)
    {
      sub_29785968C(a8, a9, a5, a6, a1, v15, v16, 642, &v45);
      sub_29783F028(&v45, "x");
      sub_29782963C(&v45);
    }

    v18 = 0;
    *a4 = 1;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    while (1)
    {
      v36 = sub_297854318(*v16);
      if (v36 == -1)
      {
        break;
      }

      v37 = v36 | (16 * v34);
      v35 |= (v34 & 0xF0000000) != 0;
      *a2 = ++v16;
      v34 = v37;
      if (v16 == a3)
      {
        goto LABEL_72;
      }
    }

    v37 = v34;
LABEL_72:
    v39 = v37 & (0xFFFFFFFF >> -a7);
    if (v37 >> a7)
    {
      v40 = 1;
    }

    else
    {
      v40 = v35;
    }

    if (!(v37 >> a7))
    {
      v39 = v37;
    }

    if (a7 == 32)
    {
      v40 = v35;
      v18 = v37;
    }

    else
    {
      v18 = v39;
    }

    if (a8 && (v40 & 1) != 0)
    {
      sub_29785968C(a8, a9, a5, a6, a1, v15, v16, 643, v48);
      v32 = v48;
      goto LABEL_50;
    }
  }

  return v18;
}

uint64_t sub_29785874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = sub_29781F408(a4);
  *(a1 + 8) = sub_29783CFFC(a4);
  *(a1 + 16) = sub_297805510(a4);
  if (a5)
  {
    v10 = sub_2977FD5B0(a4);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = 0;
  *(a1 + 38) = 0;
  sub_297858800(a1 + 48);
  *(a1 + 584) = sub_297803A7C(a1 + 48);
  sub_2978068F8(a1 + 592);
  *(a1 + 656) = 0;
  sub_297858804(a1, a2, a3);
  return a1;
}

uint64_t sub_297858804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110[0] = a2;
  v110[1] = a3;
  if (sub_297806914(v110) || (v4 = sub_297809ADC(v110, 0), sub_297847BE0(v4) <= 1))
  {
    sub_297829180(v108);
    v5 = v108[0];
    return sub_29785910C(a1, v5);
  }

  v7 = sub_297809ADC(v110, 0);
  *(a1 + 32) = sub_297847BE0(v7);
  v8 = sub_297809ADC(v110, 0);
  *(a1 + 36) = sub_297847BE0(v8) - 2;
  v9 = sub_297809ADC(v110, 0);
  *(a1 + 44) = sub_2978503FC(v9);
  *(a1 + 656) = 0;
  if (sub_2977FB7B8(v110) != 1)
  {
    v10 = 2;
    v11 = 1;
    while (1)
    {
      v12 = sub_297809ADC(v110, v11);
      v13 = sub_297847BE0(v12);
      v14 = sub_297809ADC(v110, v11);
      if (v13 < 2)
      {
        break;
      }

      *(a1 + 36) = sub_297847BE0(v14) + *(a1 + 36) - 2;
      v15 = sub_297809ADC(v110, v11);
      if (sub_297847BE0(v15) > *(a1 + 32))
      {
        v16 = sub_297809ADC(v110, v11);
        *(a1 + 32) = sub_297847BE0(v16);
      }

      v17 = sub_297809ADC(v110, v11);
      if (sub_297850F64(v17, *(a1 + 44)))
      {
        v18 = sub_297809ADC(v110, v11);
        if (sub_297850F64(v18, 13))
        {
          if (sub_297859154(a1))
          {
            v19 = sub_297809ADC(v110, v11);
            *(a1 + 44) = sub_2978503FC(v19);
          }

          else
          {
            v20 = *(a1 + 24);
            if (v20)
            {
              v21 = sub_297809ADC(v110, v11);
              v22 = sub_2977FB5F0(v21);
              sub_29782B128(v20, v22, 765, v109);
              sub_29782963C(v109);
            }

            *(a1 + 656) = 1;
          }
        }
      }

      v11 = v10;
      v51 = sub_2977FB7B8(v110) == v10++;
      if (v51)
      {
        goto LABEL_20;
      }
    }

    v5 = sub_2977FB5F0(v14);
    return sub_29785910C(a1, v5);
  }

LABEL_20:
  ++*(a1 + 36);
  v23 = sub_29785820C(*(a1 + 44), *(a1 + 16));
  v24 = *(a1 + 36) * (v23 >> 3);
  *(a1 + 36) = v24;
  *(a1 + 40) = v23 >> 3;
  sub_297806DA4((a1 + 48), v24);
  sub_297858800(v108);
  sub_297806DA4(v108, *(a1 + 32));
  *(a1 + 584) = sub_2977FD108(a1 + 48, 0);
  *(a1 + 657) = 0;
  sub_297829180(&v107);
  v25 = sub_2977FB7B8(v110);
  v26 = v25;
  if (v25)
  {
    v27 = 0;
    v28 = (a1 + 584);
    while (1)
    {
      v106 = sub_2977FD108(v108, 0);
      v105 = 0;
      v29 = sub_297809ADC(v110, v27);
      v30 = sub_29784FDA8(v29, &v106, *a1, *(a1 + 8), &v105);
      if (v105)
      {
        break;
      }

      v31 = v106;
      v32 = &v106[v30];
      if (*(v32 - 1) == 34)
      {
        v33 = v106;
      }

      else
      {
        v34 = 0;
        v35 = -v106 - v30;
        do
        {
          v36 = *(v32 - 2);
          --v32;
          ++v35;
          ++v34;
        }

        while (v36 != 34);
        sub_2977FB7C0(&v103, v32, v34);
        if (sub_297806904((a1 + 592)))
        {
          v37 = sub_297809ADC(v110, v27);
          if (sub_29784FF54(v37))
          {
            sub_297856480((a1 + 592), v103, v104);
          }

          else
          {
            sub_297859164((a1 + 592), v103, v104);
          }

          *(a1 + 648) = v27;
          *(a1 + 652) = -v35 - v106;
          v49 = sub_297809ADC(v110, v27);
          v107 = sub_2977FB5F0(v49);
        }

        else
        {
          sub_2978068F8(&v101);
          v38 = sub_297809ADC(v110, v27);
          if (sub_29784FF54(v38))
          {
            sub_297856480(&v101, v103, v104);
            v103 = sub_2978059B8(&v101);
            v104 = v39;
          }

          v40 = sub_2978059B8(a1 + 592);
          if (sub_297808D64(v40, v41, v103, v104))
          {
            if (*(a1 + 24))
            {
              v42 = sub_297809ADC(v110, v27);
              v43 = sub_2977FB5F0(v42);
              sub_29782B128(*(a1 + 24), v43, 758, v100);
              v44 = sub_2978059B8(a1 + 592);
              v46 = sub_2978295C0(v100, v44, v45);
              v47 = sub_2978295C0(v46, v103, v104);
              sub_297853514(&v99, v107, v107);
              v48 = sub_2978591B8(v47, &v99);
              sub_297853514(&v98, v43, v43);
              sub_2978591B8(v48, &v98);
              sub_29782963C(v100);
            }

            *(a1 + 656) = 1;
          }

          sub_297801F60(&v101);
        }

        v33 = v106;
      }

      v50 = *v33;
      v51 = (v50 - 76) > 0x29 || ((1 << (v50 - 76)) & 0x20000000201) == 0;
      if (!v51)
      {
        v52 = v33 + 1;
        v106 = (v33 + 1);
        v50 = v33[1];
        if (v50 == 56)
        {
          v52 = v33 + 2;
          v106 = (v33 + 2);
          v50 = v33[2];
        }

        v33 = v52;
      }

      if (v50 == 34)
      {
        v57 = v32 - 1;
        v58 = v33 + 1;
        v106 = (v33 + 1);
        if ((*(*(a1 + 8) + 3) & 0x40) != 0 && v33 + 2 != v57 && *v58 == 92 && v33[2] == 112)
        {
          if (v27)
          {
            if (*(a1 + 657) == 1)
            {
              v58 = v33 + 3;
              v106 = (v33 + 3);
            }
          }

          else
          {
            v106 = (v33 + 2);
            *(a1 + 657) = 1;
            v58 = v33 + 2;
          }
        }

        while (2)
        {
          if (v58 == v57)
          {
            goto LABEL_77;
          }

          if (*v58 != 92)
          {
            v61 = v58 + 1;
            do
            {
              v106 = v61;
              if (v61 == v57)
              {
                break;
              }

              v62 = *v61++;
            }

            while (v62 != 92);
            v63 = sub_297809ADC(v110, v27);
            sub_2977FB7C0(&v101, v58, v106 - v58);
            if (sub_297859200(a1, v63, v31, v101, v102))
            {
              *(a1 + 656) = 1;
            }

            goto LABEL_75;
          }

          if ((v58[1] | 0x20) == 0x75)
          {
            v59 = sub_297809ADC(v110, v27);
            v60 = sub_2977FB5F0(v59);
            sub_297829728(&v101, v60, *a1);
            sub_297859450(v31, &v106, v57, (a1 + 584), (a1 + 656), v101, v102, *(a1 + 40), *(a1 + 24), *(a1 + 8));
          }

          else
          {
            v64 = sub_297809ADC(v110, v27);
            v65 = sub_2977FB5F0(v64);
            sub_297829728(&v101, v65, *a1);
            v66 = sub_29785826C(v31, &v106, v57, (a1 + 656), v101, v102, 8 * *(a1 + 40), *(a1 + 24), *(a1 + 8));
            v67 = *(a1 + 40);
            if (v67 == 2)
            {
              **v28 = v66;
              v68 = *v28 + 2;
            }

            else
            {
              if (v67 != 4)
              {
                v69 = (*v28)++;
                *v69 = v66;
                goto LABEL_75;
              }

              **v28 = v66;
              v68 = *v28 + 4;
            }

            *v28 = v68;
          }

LABEL_75:
          v58 = v106;
          continue;
        }
      }

      if (v50 != 82)
      {
        break;
      }

      v53 = v33 + 2;
      v54 = 1 - v32;
      do
      {
        v106 = v53;
        v55 = *v53++;
        ++v54;
      }

      while (v55 != 40);
      v106 = v53;
      v56 = sub_297809ADC(v110, v27);
      sub_2977FB7C0(&v101, v106, -v54 - v106);
      if (sub_297859200(a1, v56, v31, v101, v102))
      {
        *(a1 + 656) = 1;
      }

LABEL_77:
      if (++v27 == v26)
      {
        goto LABEL_78;
      }
    }

    v72 = sub_297809ADC(v110, v27);
    v73 = sub_2977FB5F0(v72);
    sub_29785910C(a1, v73);
  }

  else
  {
LABEL_78:
    if (*(a1 + 657) == 1)
    {
      v70 = *(a1 + 40);
      if (v70 == 2)
      {
        v89 = sub_297803A7C(a1 + 48);
        *v89 = sub_2978595F0(a1) - 1;
      }

      else if (v70 == 4)
      {
        v71 = sub_297803A7C(a1 + 48);
        *v71 = sub_2978595F0(a1) - 1;
      }

      else
      {
        v90 = sub_2978595F0(a1) - 1;
        *sub_2977FD108(a1 + 48, 0) = v90;
      }

      if (sub_29785961C(a1) >= 0x101)
      {
        v91 = *(a1 + 24);
        if (v91)
        {
          v92 = sub_2977FB720(v110);
          v93 = sub_2977FB5F0(v92);
          sub_29782B128(v91, v93, 695, &v101);
          v94 = sub_2977FB720(v110);
          v95 = sub_2977FB5F0(v94);
          v96 = sub_297859648(v110);
          v97 = sub_2977FB5F0(v96);
          sub_297853514(&v103, v95, v97);
          sub_2978591B8(&v101, &v103);
          sub_29782963C(&v101);
        }

        *(a1 + 656) = 1;
      }
    }

    else if (*(a1 + 24))
    {
      v74 = **(a1 + 8);
      v75 = (v74 & 1) != 0 ? 4095 : 509;
      v76 = (v74 & 0x40) != 0 ? 0x10000 : v75;
      if (sub_2978595F0(a1) > v76)
      {
        v77 = *(a1 + 24);
        v78 = sub_2977FB720(v110);
        v79 = sub_2977FB5F0(v78);
        sub_29782B128(v77, v79, 814, &v101);
        v80 = sub_2978595F0(a1);
        v81 = sub_29785965C(&v101, v80);
        v82 = sub_29785965C(v81, v76);
        if ((**(a1 + 8) & 0x40) != 0)
        {
          v83 = 2;
        }

        else
        {
          v83 = **(a1 + 8) & 1;
        }

        v84 = sub_2978563C8(v82, v83);
        v85 = sub_2977FB720(v110);
        v86 = sub_2977FB5F0(v85);
        v87 = sub_297859648(v110);
        v88 = sub_2977FB5F0(v87);
        sub_297853514(&v103, v86, v88);
        sub_2978591B8(v84, &v103);
        sub_29782963C(&v101);
      }
    }
  }

  return sub_297801F60(v108);
}

uint64_t sub_29785910C(uint64_t a1, int a2)
{
  *(a1 + 656) = 1;
  result = *(a1 + 24);
  if (result)
  {
    sub_29782B128(result, a2, 655, v3);
    return sub_29782963C(v3);
  }

  return result;
}

uint64_t sub_297859164(const void **a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  sub_2977FD800(a1);
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2977FD4F8(a1, v4, v5);
}

void *sub_2978591B8(void *a1, uint64_t *a2)
{
  v5 = sub_297859984(*a2);
  v6 = v3;
  sub_297856464(a1, &v5);
  return a1;
}

BOOL sub_297859200(uint64_t a1, unsigned int *a2, int a3, uint64_t a4, uint64_t a5)
{
  v40[0] = a4;
  v40[1] = a5;
  v39 = 0;
  v8 = (a1 + 584);
  if (sub_297803088(*(a1 + 40), a4, a5, (a1 + 584), &v39))
  {
    return 0;
  }

  v10 = sub_297859154(a1);
  if (v10)
  {
    v11 = *v8;
    v12 = sub_2977FB720(v40);
    v13 = sub_2977FB7B8(v40);
    memcpy(v11, v12, v13);
    *v8 = *v8 + sub_2977FB7B8(v40);
  }

  if (*(a1 + 24))
  {
    v14 = v39;
    v15 = sub_2977FB5F0(a2);
    sub_297829728(&v37, v15, *a1);
    v16 = *(a1 + 24);
    v17 = *(a1 + 8);
    v18 = v37;
    v19 = v38;
    v20 = sub_2977FB728(v40);
    v21 = sub_297859768(v14, v20);
    if (v10)
    {
      v22 = 855;
    }

    else
    {
      v22 = 624;
    }

    sub_29785968C(v16, v17, v18, v19, a3, v14, v21, v22, v36);
    v23 = sub_2977FB728(v40);
    v24 = sub_297859768(v14, v23);
    v25 = sub_2977FB728(v40);
    sub_2977FB7C0(&v35, v24, v25 - v24);
    sub_297858800(v34);
    v26 = sub_2977FB7B8(v40);
    sub_297805924(v34, *(a1 + 40) * v26);
    v33 = sub_297803A7C(v34);
    if (!sub_297803088(*(a1 + 40), v35, *(&v35 + 1), &v33, &v39))
    {
      do
      {
        v27 = v39;
        v28 = sub_2977FB728(v40);
        v29 = sub_297859768(v27, v28);
        *&v32 = sub_2978597F0(*(a1 + 8), v37, v38, a3, v27, v29);
        BYTE8(v32) = v30;
        sub_2978544D0(v36, &v32);
        v31 = sub_2977FB728(v40);
        sub_2977FB7C0(&v32, v29, v31 - v29);
        v35 = v32;
      }

      while (!sub_297803088(*(a1 + 40), v32, *(&v32 + 1), &v33, &v39));
    }

    sub_297801F60(v34);
    sub_29782963C(v36);
  }

  return !v10;
}

uint64_t sub_297859450(int a1, char **a2, unsigned __int8 *a3, uint64_t *a4, _BYTE *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t *a10)
{
  v26 = 0;
  result = sub_297857F0C(a1, a2, a3, &v26, &v25, a6, a7, a9, a10);
  if (result)
  {
    if (a8 == 2)
    {
      v15 = *a4;
      v16 = v26;
      if (HIWORD(v26))
      {
        *v15 = ((v26 + 67043328) >> 10) - 10240;
        v15[1] = v16 & 0x3FF | 0xDC00;
        v17 = 4;
      }

      else
      {
        *v15 = v26;
        v17 = 2;
      }

      v14 = *a4 + v17;
    }

    else if (a8 == 4)
    {
      **a4 = v26;
      v14 = *a4 + 4;
    }

    else
    {
      v18 = v26;
      if (v26 >= 0x80)
      {
        if (v26 > 0x7FF)
        {
          v22 = *a4;
          if (HIWORD(v26))
          {
            *a4 = v22 + 3;
            *(v22 + 3) = v18 & 0x3F | 0x80;
            v18 >>= 6;
            v23 = *a4;
            v20 = 4u;
          }

          else
          {
            v23 = (v22 + 3);
            v20 = 3u;
          }

          *a4 = v23 - 1;
          *(v23 - 1) = v18 & 0x3F | 0x80;
          v18 >>= 6;
          v21 = *a4;
        }

        else
        {
          v21 = *a4 + 2;
          v20 = 2u;
        }

        *a4 = v21 - 1;
        *(v21 - 1) = v18 & 0x3F | 0x80;
        v18 >>= 6;
        v19 = *a4;
      }

      else
      {
        v19 = *a4 + 1;
        v20 = 1u;
      }

      v24 = *(&unk_2978FBE78 + v20) | v18;
      *a4 = v19 - 1;
      *(v19 - 1) = v24;
      v14 = *a4 + v20;
    }

    *a4 = v14;
  }

  else
  {
    *a5 = 1;
  }

  return result;
}

uint64_t sub_29785968C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v13 = a3;
  v26 = a3;
  v27 = a4;
  v17 = a6 - a5;
  v18 = sub_2977FB7B8(&v26);
  v19 = sub_297850410(v13, v17, v18, a2);
  sub_29782B128(a1, v19, a8, v25);
  v23 = sub_2978597F0(a2, v26, v27, a5, a6, a7);
  v24 = v20;
  v21 = sub_2978544D0(v25, &v23);
  sub_2978599B8(a9, v21);
  return sub_29782963C(v25);
}

unsigned __int8 *sub_297859768(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (a1 == a2)
  {
    return a2;
  }

  v3 = a1;
  v4 = sub_297802B4C(*a1);
  v10 = v2 - v3;
  v11 = v4;
  v5 = *sub_2977FA590(&v11, &v10);
  v6 = &v3[v5];
  for (i = v5 - 1; i; --i)
  {
    v8 = *++v3;
    if ((v8 & 0xC0) != 0x80)
    {
      return v3;
    }
  }

  return v6;
}

uint64_t sub_2978597F0(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  v8 = a2;
  v16[0] = a2;
  v16[1] = a3;
  v10 = a5 - a4;
  v11 = sub_2977FB7B8(v16);
  v12 = sub_297850410(v8, v10, v11, a1);
  v13 = sub_2977FB7B8(v16);
  v14 = sub_297850410(v12, a6 - a5, v13, a1);
  return sub_2978562D8(v12, v14);
}

uint64_t sub_2978598BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = sub_297859928(a1, &v6);
  result = sub_297804638(a2, v3);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_297859928(unint64_t a1, uint64_t a2)
{
  *(a2 - 1) = 0;
  v2 = a2 - 1;
  if (a1)
  {
    v3 = a1;
    do
    {
      *--v2 = sub_29781E738(v3 & 0xF);
      v4 = v3 > 0xF;
      v3 >>= 4;
    }

    while (v4);
  }

  else
  {
    *(a2 - 2) = 48;
    return a2 - 2;
  }

  return v2;
}

uint64_t sub_2978599BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 13) = *(a2 + 13);
  sub_29782B24C(a2);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_297859A18(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!*(a1 + 16) && sub_2977FB7B8(a1) == 1 && *a2 == *sub_2977FB720(a1))
  {
    *(a1 + 16) = a3;
  }

  return a1;
}

_BYTE *sub_297859AC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18[0] = a2;
  v18[1] = a3;
  v6 = *(a5 + 1296);
  if (v6)
  {
    v7 = 0;
    v8 = (a5 + 1296);
    v9 = -1;
    do
    {
      v10 = *v6;
      v11 = sub_2977FB7B8(v18);
      v12 = *v8;
      if (v11 <= v10)
      {
        v13 = *v12;
        if (v13 < v9)
        {
          if (sub_2977FB7B8(v18) == v13)
          {
            v7 = v8;
            goto LABEL_11;
          }

          v12 = *v8;
          v9 = **v8;
          v7 = v8;
        }
      }

      v6 = *(v12 + 7);
      v8 = (v12 + 14);
    }

    while (v6);
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v15 = *v7;
    *v7 = *(*v7 + 7);
    *v15 = sub_2977FB7B8(v18);
    v15[4] = a4;
  }

  else
  {
LABEL_9:
    v14 = sub_2977FB7B8(v18);
    v15 = malloc_type_malloc(24 * v14 + 64, 0x10200404526ECC5uLL);
    v16 = sub_2977FB7B8(v18);
    sub_297859C10(v15, v16, a4);
  }

  if (!sub_297806914(v18))
  {
    sub_2977FB720(v18);
    sub_297859C30(v18);
    sub_297859C40(v15, 0);
    sub_297859C14();
  }

  return v15;
}

uint64_t sub_297859C40(uint64_t a1, int a2)
{
  v2 = a1 + 64;
  if (a2)
  {
    v3 = a2;
    do
    {
      v4 = sub_29784FF04(v2, 1);
      v2 += 24;
      v3 -= v4;
    }

    while (v3);
  }

  return v2;
}

unint64_t sub_297859C84(void *a1, uint64_t a2)
{
  sub_2978293E8(a1 + 4);
  result = sub_297809AF0(a1 + 1);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      v7 = sub_297809ADC(a1 + 1, v6);
      result = sub_2978293E8(v7);
      ++v6;
    }

    while (v5 != v6);
  }

  a1[7] = *(a2 + 1296);
  *(a2 + 1296) = a1;
  return result;
}

uint64_t sub_297859CF4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = sub_297859D20(a1);
  free(v2);
  return v1;
}

uint64_t sub_297859D24(uint64_t a1)
{
  v2 = 0;
  if (sub_297850F64(a1, 1))
  {
    v3 = a1 + 24;
    do
    {
      v2 = (v2 + 1);
      v4 = sub_297850F64(v3, 1);
      v3 += 24;
    }

    while (v4);
  }

  return v2;
}

BOOL sub_297859D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = sub_297850F64(a2, 1);
  if (result)
  {
    while (1)
    {
      v6 = sub_29784F384(v4);
      if (v6)
      {
        v7 = v6;
        if (sub_29783C230(v6))
        {
          v8 = sub_297859DFC(a3, v7);
          if (sub_297859E30(v8))
          {
            break;
          }
        }
      }

      v4 += 24;
      if (!sub_297850F64(v4, 1))
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_297859DFC(uint64_t a1, uint64_t a2)
{
  result = sub_29785A890(a1, a2);
  if (result)
  {

    return sub_29785A8E8(result);
  }

  return result;
}

void *sub_297859E40(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_297809AF0((a1 + 8));
  if (v8 < sub_29782AFB0(a3))
  {
    v9 = sub_29782AFB0(a3);
    sub_297859F7C((a1 + 8), v9);
  }

  v10 = sub_297809ADC((a1 + 8), a2);
  if (sub_297806904(v10))
  {
    LOBYTE(v16[0]) = 1;
    sub_297859FFC(v17, (a4 + 439), v16);
    v11 = sub_297859C40(a1, a2);
    v12 = sub_297859D24(v11);
    sub_2978727D0(a4, v11, v12 + 1, 0, 0);
    do
    {
      memset(v16, 0, sizeof(v16));
      sub_29784FB00(v16);
      sub_29782948C(v10, v16);
      v13 = sub_297829740(v10);
      sub_29787C4FC(a4, v13);
      v14 = sub_297829740(v10);
    }

    while (sub_297850F64(v14, 1));
    if (sub_29785A000(a4))
    {
      sub_29785A060(a4);
    }

    sub_2978733CC(a4);
    sub_29785A0A8(v17);
  }

  return v10;
}

uint64_t *sub_297859F7C(uint64_t *a1, unint64_t a2)
{
  result = sub_297809AF0(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 24 * a2;

      return sub_29785AB7C(a1, v5);
    }
  }

  else
  {

    return sub_29785AAA8(a1, a2 - result);
  }

  return result;
}

BOOL sub_29785A000(void *a1)
{
  if (a1[101])
  {
    return 0;
  }

  if (sub_29780B1BC(a1 + 103) || sub_29780B1BC(a1 + 100))
  {
    return 0;
  }

  return !sub_297806904(a1 + 106);
}

uint64_t sub_29785A060(void *a1)
{
  result = sub_29785A000(a1);
  if (result)
  {

    return sub_2978733CC(a1);
  }

  return result;
}

uint64_t sub_29785A0AC@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, _DWORD *a6@<X8>)
{
  sub_29784FB00(a6);
  sub_297853ED0(a6);
  if (a3)
  {
    v12 = 9;
  }

  else
  {
    v12 = 13;
  }

  sub_297853640(a6, v12);
  v13 = sub_29783CFFC(a2);
  if (sub_29783B9A8(v13))
  {
    sub_297850EEC(a2, a4, 692, v37);
    sub_29782963C(v37);
  }

  sub_297806EC8(v36);
  sub_2977FB7B4(&__str, "");
  sub_297811C58(v36, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  v14 = a1;
  if (sub_297850F64(a1, 1))
  {
    v15 = 1;
    v14 = a1;
    do
    {
      if ((v15 & 1) == 0 && ((sub_29785480C(v14) & 1) != 0 || sub_297850404(v14)))
      {
        sub_29784CE18(v36, 32);
      }

      v16 = sub_2978503FC(v14);
      if ((sub_297856264(v16) & 1) != 0 || sub_29784FF04(v14, 9) || sub_29784FF04(v14, 10) || sub_29784FF04(v14, 11) || sub_29784FF04(v14, 12))
      {
        v35 = 0;
        sub_297853628(a2, v14, &v35, &__str);
        if ((v35 & 1) == 0)
        {
          sub_29784F874(&__str, 0, &v33);
          v17 = sub_29780739C(&v33);
          v18 = sub_2978073D8(&v33);
          sub_29785A4C4(v36, v17, v18);
          std::string::~string(&v33);
        }

        std::string::~string(&__str);
      }

      else if (sub_29784FF04(v14, 3))
      {
        sub_29787BAA8(a2);
      }

      else
      {
        v20 = sub_2977FD0D4(v36);
        v21 = sub_297847BE0(v14);
        sub_297806DA4(v36, v21 + v20);
        __str.__r_.__value_.__r.__words[0] = sub_2977FD108(v36, v20);
        v33.__r_.__value_.__s.__data_[0] = 0;
        v22 = sub_29785A4C8(a2, v14, &__str, &v33);
        if ((v33.__r_.__value_.__s.__data_[0] & 1) == 0)
        {
          v23 = v22;
          v24 = __str.__r_.__value_.__r.__words[0];
          if (v24 != sub_2977FD108(v36, v20))
          {
            v25 = sub_2977FD108(v36, v20);
            memcpy(v25, __str.__r_.__value_.__l.__data_, v23);
          }

          if (v23 != sub_297847BE0(v14))
          {
            sub_297806DA4(v36, v23 + v20);
          }
        }
      }

      v14 += 6;
      v19 = sub_297850F64(v14, 1);
      v15 = 0;
    }

    while (v19);
  }

  if (*sub_29784C06C(v36) == 92)
  {
    v26 = sub_2977FD0D4(v36) - 1;
    do
    {
      --v26;
    }

    while (*sub_2977FD108(v36, v26) == 92);
    if (((v26 - sub_2977FD0D4(v36)) & 1) == 0)
    {
      sub_29785A4E4(a2, v14 - 6, 843, v32);
      sub_29782963C(v32);
      sub_297806E8C(v36);
    }
  }

  sub_29784CE18(v36, 34);
  if (a3)
  {
    *sub_2977FD108(v36, 0) = 39;
    v27 = sub_2977FD0D4(v36);
    *sub_2977FD108(v36, v27 - 1) = 39;
    if (sub_2977FD0D4(v36) == 3)
    {
      if (*sub_2977FD108(v36, 1u) != 39)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

    if (sub_2977FD0D4(v36) != 4 || *sub_2977FD108(v36, 1u) != 92)
    {
LABEL_40:
      sub_29785A4E4(a2, a1, 648, v31);
      sub_29782963C(v31);
      sub_2977FB7B4(&__str, "' '");
      sub_29784B428(v36, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }
  }

LABEL_41:
  v28 = sub_2978059B8(v36);
  sub_29787BBC8(a2, v28, v29, a6, a4, a5);
  return sub_297801F60(v36);
}

uint64_t sub_29785A4E4@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 16);
  v7 = sub_2977FB5F0(a2);

  return sub_29782B128(v6, v7, a3, a4);
}

uint64_t sub_29785A53C(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5)
{
  if (sub_297806904((a1 + 32)))
  {
    v10 = sub_2977FB5F0(a1);
    sub_29785A634((a1 + 32), v10);
    v11 = sub_297809ADC((a1 + 32), 0);
    v12 = sub_2977FB5F0(a1);
    bzero(v11, 24 * v12);
  }

  v13 = sub_297809ADC((a1 + 32), a2);
  if (sub_297850F64(v13, 13))
  {
    v14 = sub_297859C40(a1, a2);
    sub_29785A0AC(v14, a3, 0, a4, a5, v18);
    v15 = sub_297809ADC((a1 + 32), a2);
    v16 = *&v18[15];
    *v15 = *v18;
    *(v15 + 15) = v16;
  }

  return sub_297809ADC((a1 + 32), a2);
}

unint64_t sub_29785A634(uint64_t *a1, unint64_t a2)
{
  result = sub_297809AF0(a1);
  if (a2 <= result)
  {
    if (a2 < result)
    {
      v5 = *a1 + 24 * a2;

      return sub_29785AEA8(a1, v5);
    }
  }

  else
  {

    return sub_29785ADD4(a1, a2 - result);
  }

  return result;
}

uint64_t sub_29785A6B4(uint64_t a1, int a2, char a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  sub_297809B88((a1 + 8));
  sub_297809B88((a1 + 32));
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_29785A6F4(uint64_t a1)
{
  sub_297829360(a1 + 32);
  sub_29785A728(a1 + 8);
  return a1;
}

uint64_t sub_29785A72C(uint64_t a1)
{
  sub_2977FDEF4(&v3, a1);
  sub_29785A76C(&v3);
  return a1;
}

uint64_t *sub_29785A76C(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_29785A7DC(result);
    nullsub_1(*a1, v3);
    v4 = *a1;
    v5 = *v4;
    v6 = sub_297809C9C(v4);

    return sub_297809C98(v4, v5, v6);
  }

  return result;
}

uint64_t sub_29785A7DC(uint64_t *a1)
{
  v2 = sub_297809AF0(a1);
  sub_29785A828(a1, *a1);

  return nullsub_1(a1, v2);
}

uint64_t sub_29785A828(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_29785A884(v3, v5))
  {
    i -= 24;
    v5 = nullsub_1(i, a2);
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t sub_29785A890(uint64_t a1, uint64_t a2)
{
  if (!sub_29783C230(a2))
  {
    return 0;
  }

  return sub_297873DE4(a1, a2);
}

uint64_t sub_29785A8E8(uint64_t a1)
{
  v4 = sub_29785B484(a1);
  v5 = v1;
  v6 = v2;
  return sub_29785A920(&v4);
}

uint64_t sub_29785A920(uint64_t *a1)
{
  if (sub_29785A96C(a1))
  {
    return 0;
  }

  v3 = *a1;

  return sub_2977FD5B0(v3);
}

uint64_t sub_29785A98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  v8 = j_j_nullsub_1(a3, v6);
  v9 = sub_29785AA1C(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_29785AA2C(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_29785AA90(a3, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_29785AA90(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 24 * a3 - 5);
  }

  return result;
}

uint64_t *sub_29785AAA8(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3) >= a2)
  {

    return sub_29785ABD4(a1, a2);
  }

  else
  {
    v4 = sub_297809AF0(a1);
    v5 = sub_297809EBC(a1, v4 + a2);
    v6 = sub_297809AF0(a1);
    sub_297809F34(v8, v5, v6, a1);
    sub_29785AC48(v8, a2);
    sub_297809F38(a1, v8);
    return sub_29785ACBC(v8);
  }
}

uint64_t sub_29785AB7C(void *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  sub_29785A828(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_29785ABD4(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_29785ACC0(a1, v6);
    v4 += 24;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

uint64_t sub_29785AC48(uint64_t a1, uint64_t a2)
{
  sub_29785ACCC(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_29785ACC0(v5, v6);
    i = v8 + 24;
  }

  return sub_29784F0A0(&v8);
}

void *sub_29785ACD0(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 24 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t *sub_29785ACE8(uint64_t *a1)
{
  sub_29785AD3C(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29780A20C(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_29785AD48(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 24;
      v6 = nullsub_1(v2 - 24, a2);
      result = sub_29785A884(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_29785ADAC(uint64_t result, _BYTE *a2, _BYTE *a3)
{
  *result = a2;
  *(result + 8) = *a2;
  *a2 = *a3;
  return result;
}

uint64_t sub_29785ADD4(uint64_t *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - a1[1]) >> 3) >= a2)
  {

    return sub_29785AF00(a1, a2);
  }

  else
  {
    v4 = sub_297809AF0(a1);
    v5 = sub_297809EBC(a1, v4 + a2);
    v6 = sub_297809AF0(a1);
    sub_297809F34(v8, v5, v6, a1);
    sub_29785AF74(v8, a2);
    sub_297809F38(a1, v8);
    return sub_29782BB0C(v8);
  }
}

uint64_t sub_29785AEA8(void *a1, uint64_t a2)
{
  v4 = sub_297809AF0(a1);
  sub_29782C108(a1, a2);

  return nullsub_1(a1, v4);
}

uint64_t sub_29785AF00(uint64_t a1, uint64_t a2)
{
  sub_297809E80(v8, a1, a2);
  v4 = v9;
  v5 = v10;
  while (v4 != v5)
  {
    v6 = nullsub_1(v4, v3);
    sub_29785AFE8(a1, v6);
    v4 += 24;
    v9 = v4;
  }

  return sub_297809E88(v8);
}

uint64_t sub_29785AF74(uint64_t a1, uint64_t a2)
{
  sub_29785ACCC(&v8, a1 + 16, a2);
  for (i = v8; i != v9; v8 = i)
  {
    v5 = *(a1 + 32);
    v6 = nullsub_1(i, v3);
    sub_29785AFE8(v5, v6);
    i = v8 + 24;
  }

  return sub_29784F0A0(&v8);
}

uint64_t sub_29785AFEC(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_29784FB00(a2);
}

uint64_t sub_29785AFFC(uint64_t a1, int a2)
{
  *a1 = a2;
  sub_297829180((a1 + 4));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_29783F900(a1 + 24);
  *(a1 + 244) &= 0xF000u;
  return a1;
}

uint64_t sub_29785B04C(uint64_t a1, _DWORD *a2)
{
  *(a1 + 244) |= 1u;
  if (sub_297806904((a1 + 24)))
  {
    result = 0;
    *(a1 + 240) = 0;
  }

  else
  {
    v5 = sub_297803A7C(a1 + 24);
    v6 = sub_297819418(a1 + 24);
    LODWORD(v5) = sub_2977FB5F0(v5);
    v7 = sub_2977FB5F0(v6);
    v8 = sub_29783F5D4(a2, v5) >> 32;
    *(a1 + 240) = (sub_29783F5D4(a2, v7) >> 32) - v8;
    result = *(a1 + 240) + sub_297847BE0(v6);
    *(a1 + 240) = result;
  }

  return result;
}

uint64_t sub_29785B110(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_29783E83C(a1 + 24);
  if (v8 == sub_29783E83C(a2 + 24))
  {
    v9 = sub_29782AFB0(a1);
    if (v9 == sub_29782AFB0(a2))
    {
      v10 = sub_29785B3B4(a1);
      if (v10 == sub_29785B3B4(a2))
      {
        v11 = sub_29785B3C0(a1);
        if (v11 == sub_29785B3C0(a2))
        {
          v12 = sub_29785B3CC(a1);
          if (v12 == sub_29785B3CC(a2))
          {
            if ((a4 & 1) == 0)
            {
              v28 = sub_2977FB7B8(a1);
              v29 = sub_2977FB7B8(a2);
              v30 = sub_29785B3D8(a1);
              while (v28 != v30)
              {
                if (*v28 != *v29)
                {
                  return 0;
                }

                ++v28;
                ++v29;
              }
            }

            v14 = sub_29783E83C(a1 + 24);
            if (!v14)
            {
              return 1;
            }

            v15 = 0;
            while (1)
            {
              v16 = sub_29783E88C(a1 + 24, v15);
              v17 = sub_29783E88C(a2 + 24, v15);
              v18 = sub_2978503FC(v16);
              if (v18 != sub_2978503FC(v17))
              {
                break;
              }

              if (v15)
              {
                v19 = sub_297850404(v16);
                if (v19 != sub_297850404(v17))
                {
                  break;
                }

                v20 = sub_29785480C(v16);
                if (v20 != sub_29785480C(v17))
                {
                  break;
                }
              }

              if (sub_29784F384(v16) || sub_29784F384(v17))
              {
                v21 = sub_29784F384(v16);
                v22 = sub_29784F384(v17);
                if (v21 == v22 || !a4)
                {
                  if (v21 != v22)
                  {
                    return 0;
                  }
                }

                else
                {
                  v23 = sub_29784F384(v16);
                  v24 = sub_29785B3E8(a1, v23);
                  if (v24 == -1)
                  {
                    return 0;
                  }

                  v25 = v24;
                  v26 = sub_29784F384(v17);
                  if (v25 != sub_29785B3E8(a2, v26))
                  {
                    return 0;
                  }
                }
              }

              else
              {
                sub_297853628(a3, v16, 0, &v32);
                sub_297853628(a3, v17, 0, &v31);
                v27 = sub_29785B468(&v32, &v31);
                std::string::~string(&v31);
                std::string::~string(&v32);
                if (v27)
                {
                  return 0;
                }
              }

              ++v15;
              result = 1;
              if (v14 == v15)
              {
                return result;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}