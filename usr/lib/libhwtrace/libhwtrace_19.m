uint64_t sub_298BD57EC(uint64_t result, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  v3 = *(result + 8);
  v4 = (result + 16);
  if (v3 != (result + 16))
  {
    do
    {
      result = a2(a3, v3[4], v3[5]);
      v7 = v3[1];
      if (v7)
      {
        do
        {
          i = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        i = v3[2];
        if (*i != v3)
        {
          v9 = i[2];
          v10 = *v9 == i;
          for (i = v9; !v10; v9 = i)
          {
            i = v9[2];
            v10 = *i == v9;
          }
        }
      }

      v3 = i;
    }

    while (i != v4);
  }

  return result;
}

uint64_t sub_298BD5890(uint64_t result)
{
  v1 = *(result + 584);
  if (v1)
  {
    v2 = *(*v1 + 128);
    return dyld_shared_cache_for_each_image();
  }

  return result;
}

uint64_t sub_298BD59D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  installname = dyld_image_get_installname();
  if (installname)
  {
    strlen(installname);
  }

  v5 = *(a1 + 40);
  return dyld_image_for_each_section_info();
}

void sub_298BD5A88(uint64_t a1, char *__s, uint64_t a3, uint64_t a4)
{
  if (__s)
  {
    v7 = *(a1 + 32);
    if (strlen(__s) >= 6)
    {
      v8 = *__s == 1163157343 && *(__s + 2) == 21592;
      if (v8)
      {
        v9 = *(v7 + 448);
        v10 = *(v7 + 456);
        v11 = *(v7 + 448);
        if (v11 != v10)
        {
          v12 = *(*(v7 + 584) + 8) + a4;
          v13 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v11) >> 4);
          v14 = *(v7 + 448);
          do
          {
            v15 = v13 >> 1;
            v16 = v14 + 176 * (v13 >> 1);
            v17 = *(v16 + 72);
            v18 = v16 + 176;
            v13 += ~(v13 >> 1);
            if (v17 > v12)
            {
              v13 = v15;
            }

            else
            {
              v14 = v18;
            }
          }

          while (v13);
          if (v14 != v11)
          {
            v19 = v14 - 176;
            while (1)
            {
              if (!*(v19 + 144))
              {
                if (*(v19 + 152))
                {
                  v20 = *(v19 + 72);
                  if (v20 <= v12 && *(v19 + 64) + v20 > v12)
                  {
                    break;
                  }
                }
              }

              if (*(v19 + 72) <= v12)
              {
                v8 = v11 == v19;
                v19 -= 176;
                if (!v8)
                {
                  continue;
                }
              }

              return;
            }

            if (*(v19 + 136) == 1 && *(v19 + 56))
            {
              v65[1] = MEMORY[0x29EDCA5F8];
              v65[2] = 0x40000000;
              v65[3] = sub_298BD5EF8;
              v65[4] = &unk_29EEB61D0;
              v21 = *(a1 + 40);
              v22 = *(a1 + 48);
              v65[5] = v7;
              v65[6] = v22;
              v66 = *(a1 + 56);
              dyld_image_local_nlist_content_4Symbolication();
              v23 = *(v19 + 128) - *(v19 + 80);
              v65[0] = v23;
              v24 = *(v7 + 584);
              v25 = *(v24 + 16);
              v26 = *(v24 + 32);
              if (v26)
              {
                v27 = v26 - 1;
                v28 = (v26 - 1) & (37 * v23);
                v29 = (v25 + (v28 << 6));
                v30 = *v29;
                if (v23 == *v29)
                {
                  goto LABEL_39;
                }

                v31 = 0;
                v32 = 1;
                while (v30 != -1)
                {
                  if (v31)
                  {
                    v33 = 0;
                  }

                  else
                  {
                    v33 = v30 == -2;
                  }

                  if (v33)
                  {
                    v31 = v29;
                  }

                  v34 = v28 + v32++;
                  v28 = v34 & v27;
                  v29 = (v25 + (v28 << 6));
                  v30 = *v29;
                  if (v23 == *v29)
                  {
                    goto LABEL_39;
                  }
                }

                if (v31)
                {
                  v35 = v31;
                }

                else
                {
                  v35 = v29;
                }
              }

              else
              {
                v35 = 0;
              }

              v29 = sub_298BE4B44(v24 + 16, v65, v35);
              *v29 = v23;
              *(v29 + 1) = 0u;
              *(v29 + 3) = 0u;
              *(v29 + 5) = 0u;
              v29[7] = 0;
              v24 = *(v7 + 584);
LABEL_39:
              v36 = *(v29 + 1);
              v37 = *(v29 + 3);
              v38 = *(v29 + 5);
              v64 = v29[7];
              v62 = v37;
              v63 = v38;
              *(&v61 + 1) = *(&v36 + 1);
              v41 = *(v24 + 104);
              v39 = v24 + 104;
              v40 = v41;
              v42 = *(v39 + 16);
              if (v42)
              {
                v43 = v42 - 1;
                v44 = (37 * DWORD2(v61)) & v43;
                v45 = (v40 + 24 * v44);
                v46 = *v45;
                if (*(&v61 + 1) == *v45)
                {
LABEL_52:
                  v52 = v45 + 1;
                  v53 = v45[2];
                  if (!v53)
                  {
                    v54 = *(a1 + 40);
                    dyld_image_content_for_segment();
                    v53 = v45[2];
                  }

                  v55 = *(a1 + 48);
                  v60 = *(a1 + 56);
                  v56 = *v52;
                  v57 = *(*(v7 + 584) + 8);
                  v67 = v60;
                  v68 = 1;
                  if ((*(*v55 + 16))(v55, &v67))
                  {
                    v67 = v60;
                    v68 = 1;
                    sub_298BF6DB0(v55, &v67, v56 + DWORD2(v62), (v56 + v62), DWORD1(v62), v57, 0);
                    if (v64 == 1)
                    {
                      v67 = v60;
                      v68 = v64;
                      v58 = v63;
                      if (v53 < v63)
                      {
                        v58 = v53;
                      }

                      if (v53 - v58 >= DWORD1(v63))
                      {
                        v59 = DWORD1(v63);
                      }

                      else
                      {
                        v59 = v53 - v58;
                      }

                      sub_298BF6B3C(v55, &v67, v56 + v58, v59, *(&v63 + 1), v57);
                    }
                  }

                  return;
                }

                v47 = 0;
                v48 = 1;
                while (v46 != -1)
                {
                  if (v47)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 = v46 == -2;
                  }

                  if (v49)
                  {
                    v47 = v45;
                  }

                  v50 = v44 + v48++;
                  v44 = v50 & v43;
                  v45 = (v40 + 24 * v44);
                  v46 = *v45;
                  if (*(&v61 + 1) == *v45)
                  {
                    goto LABEL_52;
                  }
                }

                if (v47)
                {
                  v51 = v47;
                }

                else
                {
                  v51 = v45;
                }
              }

              else
              {
                v51 = 0;
              }

              v45 = sub_298B7FFF8(v39, &v61 + 8, &v61 + 1, v51);
              *v45 = *(&v61 + 1);
              v45[1] = 0;
              v45[2] = 0;
              goto LABEL_52;
            }
          }
        }
      }
    }
  }
}

size_t sub_298BD5EF8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = 1;
  return sub_298BF6DB0(v4, &v7, a4, a2, a3, *(*(v5 + 584) + 8), 1);
}

uint64_t sub_298BD5F50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(**(*(result + 32) + 584) + 136) != 1)
  {
    operator new[]();
  }

  v4 = *(result + 40);
  *v4 = a2;
  v4[1] = a4;
  return result;
}

uint64_t sub_298BD630C(uint64_t a1, unint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a1 + 8;
  }

  v3 = *(a1 + 664);
  if (!v3)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (a2 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_3;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  result = v5[5];
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_298BD6444(uint64_t a1)
{
  if (*(a1 + 592))
  {
    operator new();
  }

  sub_298C3D514();
}

__n128 sub_298BD6D94(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_298BD6DB8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 40);
    if (v2 != v1)
    {
      do
      {
        while (1)
        {
          v4 = *(v2 - 1);
          v2 -= 3;
          if (v4 < 0)
          {
            break;
          }

          if (v2 == v1)
          {
            goto LABEL_7;
          }
        }

        v5 = a1;
        operator delete(*v2);
        a1 = v5;
      }

      while (v2 != v1);
LABEL_7:
      v3 = *(a1 + 40);
    }

    *(a1 + 48) = v1;

    operator delete(v3);
  }
}

void sub_298BD6E54(void *a1, uint64_t (*a2)())
{
  v59[2] = *MEMORY[0x29EDCA608];
  v4 = a1[5];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3802000000;
  v48 = sub_298BD7238;
  v49 = nullsub_189;
  installname = dyld_image_get_installname();
  v50 = installname;
  if (installname)
  {
    installname = strlen(installname);
  }

  v51 = installname;
  LOWORD(v41) = 261;
  v6 = v46[6];
  v37 = v46[5];
  v38 = v6;
  if (sub_298BAB3F0(&v37, 0))
  {
    v59[0] = 0;
    v59[1] = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2000000000;
    v44[3] = v59;
    if (!dyld_image_copy_uuid())
    {
LABEL_12:
      _Block_object_dispose(v44, 8);
      goto LABEL_13;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x4002000000;
    v40 = sub_298BD7248;
    v43[0] = 0;
    v43[1] = 0;
    v41 = sub_298BD7284;
    v42 = v43;
    v7 = a1[6];
    v52 = MEMORY[0x29EDCA5F8];
    v53 = 0x40000000;
    v54 = sub_298BDC040;
    v55 = &unk_29EEB6270;
    v56 = a2;
    v57 = v7;
    v58 = &v42;
    dyld_image_for_each_section_info();
    v52 = 0;
    v53 = &v52;
    v54 = 0x3802000000;
    v55 = sub_298BD7290;
    v56 = nullsub_190;
    LOBYTE(v57) = 0;
    LOBYTE(v58) = 0;
    v31 = MEMORY[0x29EDCA5F8];
    v32 = 1107296256;
    v33 = sub_298BD72A8;
    v34 = &unk_2A1F1EA28;
    v8 = a1[6];
    v35 = &v52;
    v36 = v8;
    dyld_image_for_each_segment_info();
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = 1107296256;
    v18 = sub_298BD7344;
    v19 = &unk_2A1F1EA58;
    v20 = &v27;
    v21 = &v45;
    v9 = a1[6];
    v25 = v4;
    v26 = v9;
    v22 = &v52;
    v23 = v44;
    v24 = &v37;
    dyld_image_for_each_section_info();
    if ((v28[3] & 1) == 0)
    {
      v10 = *(a1[4] + 8);
      v11 = v46[5];
      if (v11)
      {
        v12 = v46[6];
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }

        if (v12 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v15) = v46[6];
        if (v12)
        {
          memmove(__p, v11, v12);
        }

        *(__p + v12) = 0;
        sub_298AFAB64(v10 + 40, __p);
        if ((SHIBYTE(v15) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

      __p[0] = 0;
      __p[1] = 0;
      v15 = 0;
      sub_298AFAB64(v10 + 40, __p);
      if (SHIBYTE(v15) < 0)
      {
LABEL_18:
        operator delete(__p[0]);
      }
    }

LABEL_11:
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(&v37, 8);
    sub_298AE9B00(&v42, v43[0]);
    goto LABEL_12;
  }

LABEL_13:
  _Block_object_dispose(&v45, 8);
  v13 = *MEMORY[0x29EDCA608];
}

__n128 sub_298BD7238(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void *sub_298BD7248(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

uint64_t sub_298BD7290(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 40) = v2;
  return result;
}

size_t sub_298BD72A8(size_t result, char *__s, uint64_t a3)
{
  if (__s)
  {
    v5 = result;
    result = strlen(__s);
    if (result == 6 && *__s == 1163157343 && *(__s + 2) == 21592)
    {
      v7 = *(*(v5 + 32) + 8);
      *(v7 + 40) = *(v5 + 40) + a3;
      *(v7 + 48) = 1;
    }
  }

  return result;
}

void sub_298BD7344(void *a1, char *__s, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x29EDCA608];
  v5 = a1[9];
  *(*(a1[4] + 8) + 24) = 1;
  if (!__s || strlen(__s) != 6)
  {
    goto LABEL_37;
  }

  v11 = *__s == 1163157343 && *(__s + 2) == 21592;
  if (!v11)
  {
    goto LABEL_37;
  }

  v38 = v5 + 8;
  v12 = *(a1[5] + 8);
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  v30[0] = "DSC::";
  v30[2] = v14;
  v30[3] = v13;
  v31 = 1283;
  *&v32 = v30;
  *&v33 = "::";
  LOWORD(v34) = 770;
  if (*a3)
  {
    *&v35 = &v32;
    *&v36 = a3;
    LOWORD(v37) = 770;
  }

  else
  {
    v35 = v32;
    v36 = v33;
    v37 = v34;
  }

  sub_298B996A4(&v35, &v39);
  memset(v41, 0, sizeof(v41));
  v15 = a1[10];
  v42 = a5;
  v43 = v15 + a4;
  v45 = 0;
  v46 = 0;
  v44 = v15;
  sub_298BB0E68(&__p, __s);
  v16 = 0;
  v17 = *(a1[6] + 8);
  if (*(v17 + 48) == 1)
  {
    v16 = *(v17 + 40);
  }

  v49 = v16;
  v50 = 1;
  v51 = 0;
  v52 = xmmword_298D1B1F0;
  v53 = 0;
  v54 = 0;
  uuid_copy(v41, *(*(a1[7] + 8) + 24));
  v18 = *(a1[8] + 8);
  v19 = *(v18 + 40);
  v20 = (v18 + 48);
  if (v19 != (v18 + 48))
  {
    do
    {
      if (v52)
      {
        v21 = 1;
      }

      else
      {
        v21 = *(&v52 + 1) == 0;
      }

      if (!v21)
      {
        v22 = v19[4];
        if (v43 <= v22 && v42 + v43 > v22)
        {
          sub_298BD30C0(&v38, v22, *(v19 + 10));
        }
      }

      v23 = v19[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v19[2];
          v11 = *v24 == v19;
          v19 = v24;
        }

        while (!v11);
      }

      v19 = v24;
    }

    while (v24 != v20);
  }

  if (v42)
  {
    *(v5 + 1) = 0;
    sub_298BD3D9C(&v29, v38, &v38);
  }

  else
  {
    v29 = 0;
  }

  sub_298BD76A8(&v29, "", 0, 1);
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v25 = v54;
  v54 = 0;
  if (v25)
  {
    MEMORY[0x29C2945C0](v25, 0x1000C8077774924);
  }

  v26 = v53;
  v53 = 0;
  if (!v26)
  {
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_40:
    operator delete(__p);
    if ((v40 & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  sub_298AE9B00(v26, *(v26 + 8));
  MEMORY[0x29C2945F0](v26, 0x1020C4062D53EE8);
  if (v48 < 0)
  {
    goto LABEL_40;
  }

LABEL_36:
  if ((v40 & 0x80000000) == 0)
  {
LABEL_37:
    v27 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_41:
  operator delete(v39);
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t **sub_298BD76A8(uint64_t **result, _BYTE *a2, size_t a3, int a4)
{
  v8 = *result;
  if (*result)
  {
    v10[1] = v5;
    v10[2] = v4;
    v10[3] = v6;
    v10[4] = v7;
    v10[0] = v8;
    *result = 0;
    sub_298B06434(v10, a2, a3);
    sub_298AF1D58(v10);
    exit(a4);
  }

  return result;
}

uint64_t sub_298BD76EC(uint64_t result)
{
  v1 = *(result + 168);
  *(result + 168) = 0;
  if (v1)
  {
    v2 = result;
    MEMORY[0x29C2945C0](v1, 0x1000C8077774924);
    result = v2;
  }

  v3 = *(result + 160);
  *(result + 160) = 0;
  if (v3)
  {
    v4 = result;
    sub_298AEB5EC(result + 160, v3);
    result = v4;
  }

  if (*(result + 127) < 0)
  {
    v5 = result;
    operator delete(*(result + 104));
    result = v5;
  }

  if (*(result + 31) < 0)
  {
    v6 = result;
    operator delete(*(result + 8));
    return v6;
  }

  return result;
}

void sub_298BD7798(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  _Block_object_assign((a1 + 48), *(a2 + 48), 8);
  _Block_object_assign((a1 + 56), *(a2 + 56), 8);
  v4 = *(a2 + 64);

  _Block_object_assign((a1 + 64), v4, 8);
}

void sub_298BD7818(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 64), 8);
  _Block_object_dispose(*(a1 + 56), 8);
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_298BD7880(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  a1[1] = 0;
  v8 = 0;
  sub_298ADC1D4((a1 + 72), a2, a3, &v8, a4);
  if (!*a4)
  {
    sub_298BDB5B8(a1 + 16, a2, a3, a4);
    if (!*a4)
    {
      a1[648] = 0;
    }
  }
}

uint64_t sub_298BD790C@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v48[0] = a4;
  v48[1] = a5;
  v47 = a3;
  v41 = *a2;
  v42 = *(a2 + 2);
  v43 = *(a2 + 4);
  v44 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v45 = *(a2 + 2);
  v9 = *(a2 + 6);
  *(a2 + 6) = 0;
  v46 = v9;
  sub_298AFF468(&v41, v34);
  if (!v34[0])
  {
    v44 = 0;
    v43 = 0uLL;
    v12 = v46;
    v46 = 0;
    v34[0] = v12;
    sub_298C39D18(v34);
  }

  v50 = -1;
  v49 = v34[0];
  result = sub_298BDC2AC(&v41);
  v11 = v49;
  if ((v50 & 1) == 0)
  {
    v49 = 0;
    v36 = a3;
    v37 = v11;
    v39 = 0;
    v40 = 0;
    __p = 0;
    *a6 = 0;
    v13 = v11[3];
    v35[0] = v11[2];
    v35[1] = v13;
    v34[0] = a1;
    v34[1] = &v47;
    v34[2] = v48;
    v34[3] = v35;
    v34[4] = a6;
    v34[5] = &v36;
    sub_298BF508C(v35[0], v13, sub_298BE51BC, v34, 0);
    v14 = v37;
    v15 = __p;
    v16 = v39;
    v37 = 0;
    __p = 0;
    v17 = v40;
    v39 = 0;
    v40 = 0;
    v18 = *(a1 + 640);
    *(a1 + 600) = v36;
    v30 = 0;
    if (v18 != 1)
    {
      *(a1 + 608) = v14;
      *(a1 + 616) = v15;
      *(a1 + 624) = v16;
      *(a1 + 632) = v17;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      *(a1 + 640) = 1;
      *(a1 + 648) = 0;
      sub_298AEAEBC(&v30);
      v24 = __p;
      if (!__p)
      {
LABEL_26:
        sub_298AEAEBC(&v37);
        result = sub_298AEAEBC(&v49);
        goto LABEL_27;
      }

LABEL_19:
      v25 = v39;
      v26 = v24;
      if (v39 != v24)
      {
        do
        {
          while (1)
          {
            v27 = *(v25 - 57);
            v25 -= 10;
            if (v27 < 0)
            {
              break;
            }

            if (v25 == v24)
            {
              goto LABEL_24;
            }
          }

          operator delete(*v25);
        }

        while (v25 != v24);
LABEL_24:
        v26 = __p;
      }

      v39 = v24;
      operator delete(v26);
      goto LABEL_26;
    }

    v19 = *(a1 + 608);
    *(a1 + 608) = v14;
    if (v19)
    {
      v29 = sub_298AEAF14(v19);
      MEMORY[0x29C2945F0](v29, 0x1070C401CED0764);
      v20 = *(a1 + 616);
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = *(a1 + 616);
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    v21 = *(a1 + 624);
    v22 = v20;
    if (v21 != v20)
    {
      do
      {
        while (1)
        {
          v23 = *(v21 - 57);
          v21 -= 10;
          if (v23 < 0)
          {
            break;
          }

          if (v21 == v20)
          {
            goto LABEL_14;
          }
        }

        operator delete(*v21);
      }

      while (v21 != v20);
LABEL_14:
      v22 = *(a1 + 616);
    }

    *(a1 + 624) = v20;
    operator delete(v22);
LABEL_16:
    *(a1 + 616) = v15;
    *(a1 + 624) = v16;
    *(a1 + 632) = v17;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    *(a1 + 648) = 0;
    sub_298AEAEBC(&v30);
    v24 = __p;
    if (!__p)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  *a6 = v49;
LABEL_27:
  v28 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BD7C4C(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v271 = *MEMORY[0x29EDCA608];
  v18 = sub_298BD630C(a1, a2, a3);
  v19 = (a4 + 8);
  v20 = *(a4 + 31);
  if (v20 >= 0)
  {
    v21 = (a4 + 8);
  }

  else
  {
    v21 = *(a4 + 8);
  }

  if (v20 >= 0)
  {
    v22 = *(a4 + 31);
  }

  else
  {
    v22 = *(a4 + 16);
  }

  v183 = a7;
  v184 = v18;
  v182 = a8;
  if (v21)
  {
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_293:
      sub_298ADDDA0();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v238) = v22;
    if (v22)
    {
      memmove(&v236, v21, v22);
    }

    *(&v236 + v22) = 0;
  }

  else
  {
    v237 = 0;
    v236 = 0;
    v238 = 0;
  }

  if (*a1 == 1)
  {
    v23 = sub_298B9CDFC();
    v24 = sub_298B00584(v23, "note: Registering ");
    if (v238 >= 0)
    {
      v25 = &v236;
    }

    else
    {
      v25 = v236;
    }

    if (v238 >= 0)
    {
      v26 = HIBYTE(v238);
    }

    else
    {
      v26 = v237;
    }

    v27 = sub_298B9BCEC(v24, v25, v26);
    sub_298B00584(v27, " for ");
    v28 = sub_298B9CDFC();
    if (a3)
    {
      v29 = sub_298B00584(v28, "pid=");
      sub_298B9B00C(v29, a2);
    }

    else
    {
      sub_298B00584(v28, "shared map");
    }

    if (*(a10 + 56) == 1)
    {
      v30 = sub_298B9CDFC();
      v31 = sub_298B00584(v30, " [only segment: ");
      v32 = *(a10 + 39);
      if (v32 >= 0)
      {
        v33 = (a10 + 16);
      }

      else
      {
        v33 = *(a10 + 16);
      }

      v34 = *(a10 + 24);
      if (v32 >= 0)
      {
        v35 = *(a10 + 39);
      }

      else
      {
        v35 = *(a10 + 24);
      }

      v36 = sub_298B63DC4(v31, v33, v35);
      sub_298B00584(v36, "]");
    }

    v37 = sub_298B9CDFC();
    sub_298B00584(v37, "\n");
  }

  v230 = *a4;
  v231 = *(a4 + 2);
  __p = *v19;
  v38 = *(a4 + 24);
  *v19 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v234 = *(a4 + 32);
  v39 = *(a4 + 48);
  *(a4 + 48) = 0;
  v233 = v38;
  v235 = v39;
  sub_298BD9374(&v269, a1, &v230, a5);
  v40 = v235;
  v235 = 0;
  if (v40)
  {
    (*(*v40 + 16))(v40);
  }

  if (SHIBYTE(v233) < 0)
  {
    operator delete(__p);
  }

  if (v270)
  {
    v41 = v269;
    v269 = 0;
    *a9 = v41;
    if (v41)
    {
      goto LABEL_84;
    }

    v42 = 0;
  }

  else
  {
    *a9 = 0;
    v42 = v269;
  }

  if (*(v42 + 33) == 1)
  {
    *a9 = 0;
    goto LABEL_84;
  }

  v43 = sub_298CEFFAC(*(*(v42 + 8) + 16), *(*(v42 + 8) + 24));
  if (v43 > 0x15)
  {
LABEL_142:
    v93 = v43;
    sub_298BB0E68(&v223, "Cannot load object file of unknown type ");
    sub_298ADC8F4(&v265, v93);
    if ((v265.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = &v265;
    }

    else
    {
      v94 = v265.__r_.__value_.__r.__words[0];
    }

    if ((v265.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v265.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v265.__r_.__value_.__l.__size_;
    }

    v96 = std::string::append(&v223, v94, size);
    v97 = v96->__r_.__value_.__r.__words[2];
    *&v267.__r_.__value_.__l.__data_ = *&v96->__r_.__value_.__l.__data_;
    v267.__r_.__value_.__r.__words[2] = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    v98 = std::string::append(&v267, ": ");
    v99 = v98->__r_.__value_.__r.__words[2];
    *&v225.__r_.__value_.__l.__data_ = *&v98->__r_.__value_.__l.__data_;
    v225.__r_.__value_.__r.__words[2] = v99;
    v98->__r_.__value_.__l.__size_ = 0;
    v98->__r_.__value_.__r.__words[2] = 0;
    v98->__r_.__value_.__r.__words[0] = 0;
    if (v238 >= 0)
    {
      v100 = &v236;
    }

    else
    {
      v100 = v236;
    }

    if (v238 >= 0)
    {
      v101 = HIBYTE(v238);
    }

    else
    {
      v101 = v237;
    }

    v102 = std::string::append(&v225, v100, v101);
    v103 = v102->__r_.__value_.__r.__words[2];
    v239 = *&v102->__r_.__value_.__l.__data_;
    v240 = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    sub_298BD6D38();
  }

  if (((1 << v43) & 0x33DC00) == 0)
  {
    if (v43 == 19)
    {
      sub_298BB0E68(&v225, "Cannot use dSYM companion MachO: ");
      if (v238 >= 0)
      {
        v89 = &v236;
      }

      else
      {
        v89 = v236;
      }

      if (v238 >= 0)
      {
        v90 = HIBYTE(v238);
      }

      else
      {
        v90 = v237;
      }

      v91 = std::string::append(&v225, v89, v90);
      v92 = v91->__r_.__value_.__r.__words[2];
      v239 = *&v91->__r_.__value_.__l.__data_;
      v240 = v92;
      v91->__r_.__value_.__l.__size_ = 0;
      v91->__r_.__value_.__r.__words[2] = 0;
      v91->__r_.__value_.__r.__words[0] = 0;
      sub_298BD6D38();
    }

    goto LABEL_142;
  }

  v44 = *v42;
  if (!*v42)
  {
    if (v238 >= 0)
    {
      v45 = &v236;
    }

    else
    {
      v45 = v236;
    }

    if (v238 >= 0)
    {
      v46 = SHIBYTE(v238);
    }

    else
    {
      v46 = v237;
    }

    sub_298BD96DC(*(v42 + 8), v45, v46, *a1, &v239);
    if (v245)
    {
      v44 = 0;
      v47 = v239;
      *&v239 = 0;
      *a9 = v47;
      if (v47)
      {
        v48 = 1;
        goto LABEL_61;
      }

      v49 = 0;
    }

    else
    {
      *a9 = 0;
      v49 = v239;
    }

    v50 = *(&v239 + 1);
    v239 = 0uLL;
    if (v244 == 1)
    {
      v52 = v241;
      v88 = SHIBYTE(v243);
      v243 = 0;
      v241 = 0;
      v242 = 0;
      v51 = v88 < 0;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }

    v44 = v240;
    v53 = *(v42 + 16);
    *(v42 + 16) = v49;
    if (v53)
    {
      (*(*v53 + 8))(v53);
    }

    v54 = *(v42 + 24);
    *(v42 + 24) = v50;
    if (v54)
    {
      (*(*v54 + 8))(v54);
    }

    *v42 = v44;
    if (v51)
    {
      operator delete(v52);
    }

    v48 = 0;
LABEL_61:
    if (v245)
    {
      v55 = v239;
      *&v239 = 0;
      if (v55)
      {
        (*(*v55 + 8))(v55);
      }
    }

    else
    {
      sub_298BD9AA8(&v239);
    }

    if (v48)
    {
      goto LABEL_84;
    }
  }

  if (a5)
  {
    v240 = 0;
    v239 = a5;
    sub_298B1FB90(&v239, v228);
    v56 = v44[42];
    if (v56)
    {
      v57 = v56 + 8;
    }

    else
    {
      v57 = 0;
    }

    v240 = 0;
    v239 = v57;
    sub_298B1FB90(&v239, v226);
    v58 = v229;
    if (v229 >= 0)
    {
      v59 = v228;
    }

    else
    {
      v59 = v228[0];
    }

    if (v229 >= 0)
    {
      v60 = v229;
    }

    else
    {
      v60 = v228[1];
    }

    v61 = v227;
    v62 = v226[0];
    v63 = v226[1];
    if (v227 >= 0)
    {
      v64 = v226;
    }

    else
    {
      v64 = v226[0];
    }

    if (v227 >= 0)
    {
      v63 = v227;
    }

    if (v60 != v63 || v60 && memcmp(v59, v64, v60))
    {
      v65 = std::generic_category();
      v216 = "Disassembler.cpp";
      v217 = 259;
      v214 = ":";
      v215 = 259;
      sub_298ADC860(&v216, &v214, v218);
      sub_298AFB090(0x482uLL, 0, v211);
      v213 = 260;
      v212 = v211;
      sub_298ADC860(v218, &v212, v219);
      v209 = ": ";
      v210 = 259;
      sub_298ADC860(v219, &v209, v220);
      v207 = "Expected UUID ";
      v208 = 259;
      sub_298ADC860(v220, &v207, &v221);
      v206 = 260;
      v205 = v228;
      sub_298ADC860(&v221, &v205, &v262);
      v203 = " for object ";
      v204 = 259;
      sub_298ADC860(&v262, &v203, &v265);
      v202 = 260;
      v201 = &v236;
      sub_298ADC860(&v265, &v201, &v223);
      v199 = ", but got ";
      v200 = 259;
      sub_298ADC860(&v223, &v199, &v267);
      v198 = 260;
      v197 = v226;
      sub_298ADC860(&v267, &v197, &v225);
      v195 = " instead.";
      v196 = 259;
      sub_298ADC860(&v225, &v195, &v239);
      sub_298ADDCA4(45, v65, &v239);
    }

    if (v61 < 0)
    {
      operator delete(v62);
      v58 = v229;
    }

    if (v58 < 0)
    {
      operator delete(v228[0]);
    }
  }

  v191[0] = 0;
  v194 = 0;
  if (*(a10 + 56) == 1)
  {
    sub_298BD4988(v191, a10);
    v194 = 1;
  }

  v67 = sub_298BF4860(v44, v191);
  if (v194 == 1 && v193 < 0)
  {
    v104 = v67;
    v105 = v68;
    operator delete(v192);
    v68 = v105;
    v67 = v104;
  }

  if (v68)
  {
    v69 = v67;
  }

  else
  {
    v69 = 0;
  }

  if (a6)
  {
    v70 = 0;
  }

  else
  {
    v70 = v69;
  }

  v71 = (a6 >> 1) - v70;
  *&v225.__r_.__value_.__r.__words[1] = 0uLL;
  v225.__r_.__value_.__r.__words[0] = &v225.__r_.__value_.__l.__size_;
  v72 = (*(*v44 + 352))(v44);
  v74 = v73;
  v75 = (*(*v44 + 360))(v44);
  v223.__r_.__value_.__r.__words[0] = v72;
  v223.__r_.__value_.__l.__size_ = v74;
  if (v74 == v76 && v72 == v75)
  {
    v77 = v266;
LABEL_108:
    v266 = v77 & 0xFE;
    v78 = v225.__r_.__value_.__l.__size_;
    v265 = v225;
    if (v225.__r_.__value_.__r.__words[2])
    {
      *(v225.__r_.__value_.__l.__size_ + 16) = &v265.__r_.__value_.__l.__size_;
      v225.__r_.__value_.__r.__words[0] = &v225.__r_.__value_.__l.__size_;
      *&v225.__r_.__value_.__r.__words[1] = 0uLL;
      v78 = 0;
    }

    else
    {
      v265.__r_.__value_.__r.__words[0] = &v265.__r_.__value_.__l.__size_;
    }

    v79 = a9;
    goto LABEL_111;
  }

  *&v177 = v75;
  *(&v177 + 1) = v76;
  v77 = v266;
  v180 = v71;
  while (1)
  {
    (*(*v74 + 144))(&v267, v74, v72);
    if (v267.__r_.__value_.__s.__data_[16])
    {
      break;
    }

    v106 = v267.__r_.__value_.__r.__words[0];
LABEL_163:
    if (v267.__r_.__value_.__l.__size_ >= 0x10)
    {
      if (*v106 == 0x5F74666977735F5FLL && v106[1] == 0x7972746E655F7361)
      {
        v111 = 0x100000000;
        goto LABEL_179;
      }
    }

    else if (v267.__r_.__value_.__l.__size_ < 0xE)
    {
      goto LABEL_165;
    }

    v118 = *v106;
    v119 = *(v106 + 6);
    if (v118 != 0x5F74666977735F5FLL || v119 != 0x7465725F73615F74)
    {
LABEL_165:
      v108 = 3;
      goto LABEL_166;
    }

    v111 = 0x100000001;
LABEL_179:
    LODWORD(v262) = v111;
    BYTE4(v262) = BYTE4(v111);
    (*(*v74 + 176))(&v239, v74, v72);
    v112 = *(&v239 + 1);
    if (v240)
    {
      v112 = v172;
    }

    __len = v112;
    v176 = v239;
    v170 = v240;
    if (v240)
    {
      if (v239)
      {
        v77 |= 1u;
        v266 = v77;
        v265.__r_.__value_.__r.__words[0] = v239;
        v108 = 1;
        goto LABEL_166;
      }

      v176 = 0;
    }

    v113 = (*(*v74 + 152))(v74, v72);
    *&v239 = &v225;
    *(&v239 + 1) = &v262;
    if (__len >= 4)
    {
      v114 = v176;
      v115 = v113 + v180;
      v116 = 4 * (__len >> 2);
      do
      {
        v117 = *v114++;
        sub_298BDC9D8(&v239, v115 + v117);
        v115 += 4;
        v116 -= 4;
      }

      while (v116);
    }

    v108 = 0;
    if ((v170 & 1) != 0 && v176)
    {
      (*(*v176 + 8))(v176);
      v108 = 0;
    }

    v172 = __len;
LABEL_166:
    if (v267.__r_.__value_.__s.__data_[16])
    {
      v109 = v267.__r_.__value_.__r.__words[0];
      v267.__r_.__value_.__r.__words[0] = 0;
      if (v109)
      {
        (*(*v109 + 8))(v109);
      }
    }

    if (v108 != 3 && v108)
    {
      goto LABEL_251;
    }

    (*(*v223.__r_.__value_.__l.__size_ + 136))(v223.__r_.__value_.__l.__size_, &v223);
    v74 = v223.__r_.__value_.__l.__size_;
    v72 = v223.__r_.__value_.__r.__words[0];
    v71 = v180;
    if (*&v223.__r_.__value_.__l.__data_ == v177)
    {
      goto LABEL_108;
    }
  }

  v106 = 0;
  v107 = v267.__r_.__value_.__r.__words[0];
  v267.__r_.__value_.__r.__words[0] = 0;
  if (!v107)
  {
    goto LABEL_163;
  }

  v266 = v77 | 1;
  v265.__r_.__value_.__r.__words[0] = v107;
LABEL_251:
  v78 = v225.__r_.__value_.__l.__size_;
  v79 = a9;
  v71 = v180;
LABEL_111:
  sub_298AE9B00(&v225, v78);
  if (v266)
  {
    v80 = v265.__r_.__value_.__r.__words[0];
    v265.__r_.__value_.__r.__words[0] = 0;
    *v79 = v80;
    if (v80)
    {
      goto LABEL_126;
    }
  }

  else
  {
    *v79 = 0;
  }

  v81 = (*(*v44 + 352))(v44);
  v83 = v82;
  v84 = (*(*v44 + 360))(v44);
  v221 = v81;
  v222 = v83;
  v86 = v83 == v85 && v81 == v84;
  if (v86)
  {
    if ((*(a10 + 56) & 1) != 0 && *(a10 + 40))
    {
      goto LABEL_124;
    }

    goto LABEL_125;
  }

  v179 = v85;
  v181 = v71;
  v121 = v84;
  v178 = 0;
  while (2)
  {
    (*(*v83 + 144))(&v262, v83, v81);
    if (v264)
    {
      v122 = v262;
      v262 = 0;
      *a9 = v122;
      if (v122)
      {
        goto LABEL_199;
      }

      v124 = 0;
    }

    else
    {
      *a9 = 0;
      v124 = v262;
    }

    v125 = v263;
    if (v263 < 0xA)
    {
LABEL_202:
      v126 = 0;
      goto LABEL_203;
    }

    if (*v124 == *"__bootcode" && *(v124 + 8) == *"de")
    {
      goto LABEL_220;
    }

    if (v263 < 0xF)
    {
      if (v263 == 10)
      {
        goto LABEL_202;
      }

LABEL_245:
      v126 = *v124 == *"__interpose" && *(v124 + 3) == *"nterpose";
    }

    else
    {
      if (*v124 != *"__lcxx_override" || *(v124 + 7) != *"override")
      {
        goto LABEL_245;
      }

LABEL_220:
      v126 = 1;
    }

LABEL_203:
    if ((((*(*v83 + 200))(v83, v81) & 1) != 0 || v126) && ((*(*v83 + 224))(v83, v81) & 1) == 0)
    {
      (*(*v83 + 176))(&v239, v83, v81);
      v134 = *(&v239 + 1);
      v169 = v240;
      if (v240)
      {
        v134 = __len;
      }

      v171 = v134;
      v173 = v239;
      if ((v240 & 1) == 0)
      {
        *a9 = 0;
        goto LABEL_261;
      }

      *a9 = v239;
      if (v173)
      {
LABEL_199:
        v123 = 1;
      }

      else
      {
        v173 = 0;
LABEL_261:
        v167 = (*(*v83 + 152))(v83, v81) + v181;
        if (a1[744] != 1 || (a11 & 0x100000000) != 0 && (a11 - 1) < 0xA && ((0x3E7u >> (a11 - 1)) & 1) != 0)
        {
          LODWORD(v168) = 0;
        }

        else
        {
          v168 = v167 >> 63;
        }

        v166 = *(v44[10] + 8 * v81);
        if (*(v166 + 31))
        {
          __lena = 16;
        }

        else
        {
          __lena = strlen((v166 + 16));
        }

        *&v239 = v184;
        v267.__r_.__value_.__r.__words[0] = &v236;
        v267.__r_.__value_.__r.__words[2] = "::";
        v268 = 772;
        v224 = 261;
        v223.__r_.__value_.__r.__words[0] = v124;
        v223.__r_.__value_.__l.__size_ = v125;
        sub_298ADC860(&v267, &v223, &v225);
        sub_298B996A4(&v225, &v239 + 1);
        v242 = 0;
        v243 = 0;
        v244 = v173;
        v245 = v171;
        v246 = (*(*v83 + 168))(v83, v81);
        v247 = v167;
        v248 = v181;
        v249 = v81;
        v250 = v83;
        if (__lena > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_293;
        }

        if (__lena >= 0x17)
        {
          operator new();
        }

        HIBYTE(v253) = __lena;
        if (__lena)
        {
          memmove(&v251, (v166 + 16), __lena);
        }

        *(&v251 + __lena) = 0;
        v254 = v181 + v69;
        v255 = 0;
        v256 = v168;
        v257 = 0;
        v258 = v183;
        v259 = v182;
        v260 = 0;
        v261 = 0;
        if (a5)
        {
          sub_298BD9B74(a5, 0, &v242);
        }

        if ((*(a10 + 56) & 1) == 0)
        {
          v135 = v247;
          goto LABEL_272;
        }

        if (v253 >= 0)
        {
          v144 = &v251;
        }

        else
        {
          v144 = v251;
        }

        if (v253 >= 0)
        {
          v145 = SHIBYTE(v253);
        }

        else
        {
          v145 = v252;
        }

        v146 = *(a10 + 39);
        if (v146 >= 0)
        {
          v147 = (a10 + 16);
        }

        else
        {
          v147 = *(a10 + 16);
        }

        v148 = *(a10 + 24);
        if (v146 >= 0)
        {
          v148 = *(a10 + 39);
        }

        if (v145 == v148 && (!v145 || !memcmp(v144, v147, v145)))
        {
          *(a10 + 40) = v44;
          *(a10 + 48) = v181;
          v135 = v247;
          v164 = *a10;
          if (*a10 >= v247)
          {
            v164 = v247;
          }

          v165 = v246 + v247;
          if (*(a10 + 8) > v246 + v247)
          {
            v165 = *(a10 + 8);
          }

          *a10 = v164;
          *(a10 + 8) = v165;
          if (a1[744] != 1 || (v135 & 0x8000000000000000) == 0)
          {
            goto LABEL_277;
          }

LABEL_272:
          v136 = HIBYTE(v241);
          if (SHIBYTE(v241) < 0)
          {
            v136 = v240;
          }

          if (v136 >= 0xC && (SHIBYTE(v241) >= 0 ? (v158 = &v239 + 8) : (v158 = *(&v239 + 1)), (v159 = &v158[v136], v160 = *(v159 - 12), v161 = *(v159 - 1), v160 == 0x735F687475615F5FLL) ? (v162 = v161 == 1935832436) : (v162 = 0), !v162 ? (v163 = 0) : (v163 = 1), (v163 & v168) == 1))
          {
            a1[1] = 0;
            v123 = 4;
            v178 = 1;
          }

          else
          {
LABEL_277:
            v137 = v265.__r_.__value_.__r.__words[0];
            if (v265.__r_.__value_.__l.__data_ != &v265.__r_.__value_.__r.__words[1])
            {
              do
              {
                if (v258 <= v183 && v259 > v183)
                {
                  v139 = *(v137 + 32);
                  if (v247 <= v139 && v246 + v247 > v139)
                  {
                    sub_298BD30C0(&v239, v139, *(v137 + 40));
                  }
                }

                v140 = *(v137 + 8);
                if (v140)
                {
                  do
                  {
                    v141 = v140;
                    v140 = v140->__r_.__value_.__r.__words[0];
                  }

                  while (v140);
                }

                else
                {
                  do
                  {
                    v141 = *(v137 + 16);
                    v86 = v141->__r_.__value_.__r.__words[0] == v137;
                    v137 = v141;
                  }

                  while (!v86);
                }

                v137 = v141;
              }

              while (v141 != &v265.__r_.__value_.__r.__words[1]);
            }

            if (v246)
            {
              a1[1] = 0;
              sub_298BD3D9C(a9, v239, &v239);
              v123 = *a9 != 0;
            }

            else
            {
              v123 = 0;
              *a9 = 0;
            }
          }
        }

        else
        {
          if (*a1 == 1)
          {
            v149 = sub_298B9CDFC();
            v150 = sub_298B00584(v149, "Skipping '");
            if (v253 >= 0)
            {
              v151 = &v251;
            }

            else
            {
              v151 = v251;
            }

            if (v253 >= 0)
            {
              v152 = SHIBYTE(v253);
            }

            else
            {
              v152 = v252;
            }

            v153 = sub_298B63DC4(v150, v151, v152);
            v154 = sub_298B00584(v153, "::");
            if (SHIBYTE(v241) >= 0)
            {
              v155 = &v239 + 8;
            }

            else
            {
              v155 = *(&v239 + 1);
            }

            if (SHIBYTE(v241) >= 0)
            {
              v156 = SHIBYTE(v241);
            }

            else
            {
              v156 = v240;
            }

            v157 = sub_298B63DC4(v154, v155, v156);
            sub_298B00584(v157, "\n");
          }

          v123 = 4;
        }

        v142 = v261;
        v261 = 0;
        if (v142)
        {
          MEMORY[0x29C2945C0](v142, 0x1000C8077774924);
        }

        v143 = v260;
        v260 = 0;
        if (v143)
        {
          sub_298AEB5EC(&v260, v143);
        }

        if (SHIBYTE(v253) < 0)
        {
          operator delete(v251);
        }

        if (SHIBYTE(v241) < 0)
        {
          operator delete(*(&v239 + 1));
        }

        if ((v169 & 1) != 0 && v173)
        {
          (*(*v173 + 8))(v173);
        }

        __len = v171;
      }
    }

    else
    {
      v123 = 4;
    }

    if (v264)
    {
      v127 = v262;
      v262 = 0;
      if (v127)
      {
        (*(*v127 + 8))(v127);
      }
    }

    if ((v123 | 4) != 4)
    {
      goto LABEL_126;
    }

    (*(*v222 + 136))(v222, &v221);
    v83 = v222;
    v81 = v221;
    if (v222 != v179 || v221 != v121)
    {
      continue;
    }

    break;
  }

  v129 = *(a10 + 56);
  if (v129)
  {
    if (*(a10 + 40))
    {
      if (v178)
      {
        goto LABEL_224;
      }

LABEL_124:
      a1[1] = 0;
      sub_298BD3EFC(v184, a10);
    }

LABEL_125:
    *a9 = 0;
  }

  else
  {
    if ((v178 & 1) == 0)
    {
      goto LABEL_125;
    }

LABEL_224:
    if (v238 >= 0)
    {
      v130 = &v236;
    }

    else
    {
      v130 = v236;
    }

    if (v238 >= 0)
    {
      v131 = SHIBYTE(v238);
    }

    else
    {
      v131 = v237;
    }

    v187.i8[0] = 0;
    v190 = 0;
    if (v129)
    {
      sub_298BD4988(&v187, a10);
      v190 = 1;
    }

    sub_298BD9B94(a9, a1, v44, v181, v130, v131, &v187);
    if (v190 == 1 && v189 < 0)
    {
      operator delete(v188);
    }

    if (!*a9)
    {
      if (*(a10 + 56))
      {
        goto LABEL_124;
      }

      goto LABEL_125;
    }
  }

LABEL_126:
  if (v266)
  {
    v87 = v265.__r_.__value_.__r.__words[0];
    v265.__r_.__value_.__r.__words[0] = 0;
    if (v87)
    {
      (*(*v87 + 8))(v87);
    }
  }

  else
  {
    sub_298AE9B00(&v265, v265.__r_.__value_.__l.__size_);
  }

LABEL_84:
  if ((v270 & 1) != 0 && v269)
  {
    (*(*v269 + 8))(v269);
  }

  if (SHIBYTE(v238) < 0)
  {
    operator delete(v236);
  }

  v66 = *MEMORY[0x29EDCA608];
}

void sub_298BD9374(uint64_t a1, uint64_t a2, __int16 *a3, const unsigned __int8 *a4)
{
  v30 = *MEMORY[0x29EDCA608];
  v9 = (a3 + 4);
  v8 = *(a3 + 1);
  v10 = *(a3 + 31);
  if (v10 >= 0)
  {
    v8 = a3 + 4;
  }

  if (v10 < 0)
  {
    v10 = *(a3 + 2);
  }

  v28 = v8;
  v29 = v10;
  sub_298B1EEB8(&v28, __p);
  v11 = *(v9 - 6);
  if (v27 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v27 >= 0)
  {
    v13 = v27;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = *sub_298BDABD0((a2 + 720), v12, v13);
  if (v14)
  {
    *(a1 + 8) &= ~1u;
    *a1 = v14;
  }

  else
  {
    v20 = *a3;
    v21 = *(a3 + 2);
    v22 = *v9;
    v23 = *(v9 + 2);
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0;
    v24 = *(a3 + 2);
    v16 = *(a3 + 6);
    *(a3 + 6) = 0;
    v25 = v16;
    sub_298B21594(&v20, &v28);
    sub_298BDC2AC(&v20);
    if ((v29 & 1) == 0 || (v17 = v28, v28 = 0, !v17))
    {
      sub_298BDACE8();
    }

    if (v11)
    {
      v18 = *(a2 + 592);
      if (a4 && !v18)
      {
        sub_298BD6444(a2);
      }

      if (v18 && sub_298BDAD54(*v18, a4))
      {
        v19 = v17;
        sub_298AE617C(&v19);
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        operator new();
      }
    }

    *(a1 + 8) |= 1u;
    *a1 = v17;
    sub_298B2165C(&v28);
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BD96DC@<X0>(__n128 *a1@<X0>, _BYTE *a2@<X1>, const void *a3@<X2>, int a4@<W4>, uint64_t a5@<X8>)
{
  v44 = *MEMORY[0x29EDCA608];
  v36 = a1[1];
  v37 = "";
  *&v38 = 0;
  result = sub_298B73E04(&v36, &v42);
  if (v43)
  {
    v32 = v42;
    sub_298B851B0(&v32, &v33);
    v22 = std::string::append(&v33, ": ");
    v23 = v22->__r_.__value_.__r.__words[2];
    *__p = *&v22->__r_.__value_.__l.__data_;
    v25 = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v35 = 260;
    v34[0] = __p;
    v31 = 261;
    v30[0] = a2;
    v30[1] = a3;
    sub_298ADC860(v34, v30, &v36);
    operator new();
  }

  v10 = v42;
  v11 = *(v42 + 8);
  if ((v11 - 17) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v42;
  }

  if (v11 == 1)
  {
    v29 = 0;
    v27[1] = 0;
    v27[2] = 0;
    v27[0] = v42;
    v28 = 0;
    sub_298BDC328(&v36, a2, a3, v27);
    sub_298BD9AA8(v27);
    if (v41)
    {
      v15 = v36.n128_u64[0];
      v36.n128_u64[0] = 0;
      *(a5 + 56) |= 1u;
      *a5 = v15;
    }

    else
    {
      if (a4)
      {
        v16 = sub_298B9CDFC();
        v17 = sub_298B00584(v16, "note: ");
        v18 = sub_298B63DC4(v17, a2, a3);
        v19 = sub_298B00584(v18, ": selected slice ");
        v20 = sub_298BDC79C(v19, &v38);
        sub_298B00584(v20, "\n");
      }

      *(a5 + 56) &= ~1u;
      v21 = v36;
      v36 = 0uLL;
      *a5 = v21;
      *(a5 + 16) = v37;
      *(a5 + 24) = 0;
      *(a5 + 48) = 0;
      if (v40 == 1)
      {
        *(a5 + 24) = v38;
        *(a5 + 40) = v39;
        v39 = 0;
        v38 = 0uLL;
        *(a5 + 48) = 1;
      }
    }

    result = sub_298BE5B3C(&v36);
  }

  else
  {
    if (!v12)
    {
      v13 = std::generic_category();
      __p[0] = "Disassembler.cpp";
      v25 = ":";
      v26 = 771;
      *(&v33.__r_.__value_.__s + 23) = 4;
      strcpy(&v33, "1006");
      v30[0] = __p;
      v30[2] = &v33;
      v31 = 1026;
      v34[0] = v30;
      v34[2] = ": ";
      v35 = 770;
      v36.n128_u64[0] = v34;
      v37 = "not a MachO?";
      WORD4(v38) = 770;
      sub_298ADDCA4(45, v13, &v36);
    }

    *(a5 + 56) &= ~1u;
    *a5 = v10;
    *(a5 + 8) = 0;
    *(a5 + 16) = v12;
    *(a5 + 24) = 0;
    *(a5 + 48) = 0;
  }

  v14 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298BD9AA8(uint64_t *result)
{
  if (*(result + 48) == 1 && *(result + 47) < 0)
  {
    v5 = result;
    operator delete(result[3]);
    result = v5;
  }

  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    result = v2;
  }

  v3 = *result;
  *result = 0;
  if (v3)
  {
    v4 = result;
    (*(*v3 + 8))(v3);
    return v4;
  }

  return result;
}

void sub_298BD9B74(unsigned __int8 *src, char *in, uuid_t uu)
{
  if (src)
  {
    uuid_copy(uu, src);
  }

  else
  {
    uuid_parse(in, uu);
  }
}

void sub_298BD9B94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64x2_t *a7)
{
  v13[0] = a5;
  v13[1] = a6;
  v12 = a4;
  v10.i8[0] = 0;
  v11 = 0;
  if (a7[3].i8[8] == 1)
  {
    i64 = a7[3].i64;
    v8 = vld1q_dup_f64(i64);
    v10 = vsubq_s64(*a7, v8);
    v11 = 1;
  }

  v9[0] = &v10;
  v9[1] = &v12;
  v9[2] = a2;
  v9[3] = v13;
  sub_298BF4518(a3, sub_298BE6508, v9, a1);
}

void *sub_298BD9C20@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*(result + 1) == 1)
  {
    *a2 = 0;
  }

  else
  {
    v3 = result;
    result = sub_298BD49F8(a2, (result + 1));
    if (!*a2)
    {
      v4 = v3[82];
      if (v4 == v3 + 83)
      {
LABEL_4:
        v21 = &unk_2A1F1EB58;
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_298BD2CB8(v20);
        v14[3] = &unk_2A1F1E9B8;
        memset(v15, 0, sizeof(v15));
        v17 = 0u;
        v18 = 0u;
        v16 = 1065353216;
        v19 = 1065353216;
        v13 = 21;
        strcpy(__p, "_ExceptionVectorsBase");
        v14[0] = __p;
        v5 = sub_298BDD4E0(v15, __p);
        LODWORD(v14[0]) = 1;
        v6 = v5[6];
        if (v6 >= v5[7])
        {
          v8 = v5;
          v7 = sub_298BDD7F0((v5 + 5), v14);
          v5 = v8;
        }

        else
        {
          *v6 = 1;
          v7 = v6 + 1;
        }

        v5[6] = v7;
        if (v13 < 0)
        {
          operator delete(*__p);
        }

        operator new();
      }

      while (1)
      {
        result = sub_298BD49F8(a2, v4[5]);
        if (*a2)
        {
          break;
        }

        v9 = v4[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v4[2];
            v11 = *v10 == v4;
            v4 = v10;
          }

          while (!v11);
        }

        v4 = v10;
        if (v10 == v3 + 83)
        {
          goto LABEL_4;
        }
      }
    }
  }

  return result;
}

void *sub_298BDA58C(void *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a2 + 680 + 8 * a3);
  if (v4)
  {
    v5 = v4 == a4;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    std::generic_category();
    v16 = "Disassembler.h";
    v17 = 259;
    v14 = ":";
    v15 = 259;
    sub_298ADC860(&v16, &v14, v18);
    v11 = 3;
    LODWORD(__p) = 3354933;
    v13 = 260;
    p_p = &__p;
    sub_298ADC860(v18, &p_p, v19);
    v8 = ": ";
    v9 = 259;
    sub_298ADC860(v19, &v8, v20);
    v6 = "Exception vector already registered";
    v7 = 259;
    sub_298ADC860(v20, &v6, v21);
    sub_298B996A4(v21, &v22);
    operator new();
  }

  *(a2 + 680 + 8 * a3) = a4;
  *result = 0;
  return result;
}

void *sub_298BDA76C(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        v7 = v2;
        operator delete(v2[2]);
        v2 = v7;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_298BDA7F8(uint64_t a1)
{
  sub_298AE88F0(a1 + 48);
  sub_298BDD2E4(a1 + 8);
  return a1;
}

uint64_t sub_298BDA82C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(result + 16) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298BDA86C(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t **a4)
{
  v4 = a4[3];
  if (v4 && v4[18] <= a2 && v4[19] > a2 && (a4[1] <= a3 ? (v5 = a4[2] > a3) : (v5 = 0), v5))
  {
    result = 0;
    v7 = a4[3];
  }

  else if (*(a1 + 1) == 1)
  {
    v8 = *a4;
    if (*a4)
    {
      result = 1;
      while (1)
      {
        v9 = *(v8 + 28);
        v10 = v8[57];
        v11 = v8[56];
        if (v11 != v10)
        {
          v12 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v11) >> 4);
          v13 = v12 >> 1;
          v14 = &v11[176 * (v12 >> 1)];
          v15 = *(v14 + 9);
          v16 = v14 + 176;
          v17 = v12 + ~(v12 >> 1);
          if (v15 <= a3)
          {
            v18 = v16;
          }

          else
          {
            v18 = v8[56];
          }

          if (v15 <= a3)
          {
            v19 = v17;
          }

          else
          {
            v19 = v13;
          }

          while (v19)
          {
            v24 = v19 >> 1;
            v25 = &v18[176 * (v19 >> 1)];
            v26 = *(v25 + 9);
            v27 = v25 + 176;
            v19 += ~(v19 >> 1);
            if (v26 > a3)
            {
              v19 = v24;
            }

            else
            {
              v18 = v27;
            }
          }

          if (v18 != v11)
          {
            break;
          }
        }

LABEL_15:
        v8 = *v8;
        if (!v8)
        {
          return result;
        }
      }

      v20 = v18 - 176;
      while (1)
      {
        if (*(v20 + 18) <= a2 && *(v20 + 19) > a2)
        {
          v21 = *(v20 + 9);
          if (v21 <= a3)
          {
            v22 = *(v20 + 8) + v21;
            if (v22 > a3)
            {
              break;
            }
          }
        }

        if (*(v20 + 9) <= a3)
        {
          v23 = v11 == v20;
          v20 -= 176;
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_15;
      }

      result = 0;
      a4[1] = v21;
      a4[2] = v22;
      a4[3] = v20;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 4;
  }

  return result;
}

uint64_t sub_298BDA9EC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t **a4)
{
  v4 = a4[3];
  if (v4 && *(v4 + 144) <= a2 && *(v4 + 152) > a2 && (a4[1] <= a3 ? (v5 = a4[2] > a3) : (v5 = 0), v5))
  {
    if (*(v4 + 136) != 1)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != 1)
    {
      return 4;
    }

    v9 = *a4;
    if (!*a4)
    {
      return 1;
    }

    while (1)
    {
      v10 = *(v9 + 28);
      v11 = v9[57];
      v12 = v9[56];
      if (v12 != v11)
      {
        v13 = 0x2E8BA2E8BA2E8BA3 * ((v11 - v12) >> 4);
        v14 = v9[56];
        do
        {
          v15 = v13 >> 1;
          v16 = v14 + 176 * (v13 >> 1);
          v17 = *(v16 + 72);
          v18 = v16 + 176;
          v13 += ~(v13 >> 1);
          if (v17 > a3)
          {
            v13 = v15;
          }

          else
          {
            v14 = v18;
          }
        }

        while (v13);
        if (v14 != v12)
        {
          break;
        }
      }

LABEL_15:
      v9 = *v9;
      if (!v9)
      {
        return 1;
      }
    }

    v4 = v14 - 176;
    while (1)
    {
      if (*(v4 + 144) <= a2 && *(v4 + 152) > a2)
      {
        v19 = *(v4 + 72);
        if (v19 <= a3)
        {
          v20 = *(v4 + 64) + v19;
          if (v20 > a3)
          {
            break;
          }
        }
      }

      if (*(v4 + 72) <= a3)
      {
        v21 = v12 == v4;
        v4 -= 176;
        if (!v21)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    a4[1] = v19;
    a4[2] = v20;
    a4[3] = v4;
    if (*(v4 + 136) != 1)
    {
      return 0;
    }
  }

  v7 = sub_298BD4134(*v4, v4);
  std::mutex::lock(v7);
  if (*(v4 + 56))
  {
    v8 = 0;
  }

  else if (*(v4 + 138))
  {
    v8 = 2;
  }

  else
  {
    v8 = sub_298BDAEC4(a1, v4);
  }

  std::mutex::unlock(v7);
  return v8;
}

uint64_t sub_298BDABD0(_DWORD *a1, int8x16_t *a2, unint64_t a3)
{
  v6 = sub_298BA724C(a2, a3);
  v7 = sub_298B96440(a1, a2, a3, v6);
  v8 = *a1;
  v9 = v7;
  v10 = *(*a1 + 8 * v7);
  if (v10)
  {
    if (v10 != -8)
    {
      return v10 + 8;
    }

    --a1[4];
  }

  v11 = operator new(a3 + 17, 8uLL);
  v12 = v11;
  v13 = (v11 + 2);
  if (a3)
  {
    memcpy(v11 + 2, a2, a3);
  }

  v13[a3] = 0;
  *v12 = a3;
  v12[1] = 0;
  *(v8 + 8 * v9) = v12;
  ++a1[3];
  for (i = (*a1 + 8 * sub_298B96888(a1, v9)); ; ++i)
  {
    v10 = *i;
    if (*i != -8 && v10 != 0)
    {
      break;
    }
  }

  return v10 + 8;
}

uint64_t sub_298BDAD54(int8x8_t *a1, const unsigned __int8 *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  memset(dst, 0, sizeof(dst));
  if (a2)
  {
    uuid_copy(dst, a2);
    v3 = a1[33];
    if (!*&v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    uuid_parse(0, dst);
    v3 = a1[33];
    if (!*&v3)
    {
      goto LABEL_16;
    }
  }

  v4 = *&dst[8] ^ *dst;
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v3 - 1) & v4;
  }

  else if (v4 < *&v3)
  {
    v6 = *&dst[8] ^ *dst;
  }

  else
  {
    v6 = v4 % *&v3;
  }

  v7 = *(*&a1[32] + 8 * v6);
  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      if (v5.u32[0] < 2uLL)
      {
        v9 = *&v3 - 1;
        while (1)
        {
          v13 = *(v8 + 1);
          if (v4 == v13)
          {
            if (!uuid_compare(v8 + 16, dst))
            {
              goto LABEL_22;
            }
          }

          else if ((v13 & v9) != v6)
          {
            goto LABEL_16;
          }

          result = 0;
          v8 = *v8;
          if (!v8)
          {
            goto LABEL_17;
          }
        }
      }

      do
      {
        v10 = *(v8 + 1);
        if (v4 == v10)
        {
          if (!uuid_compare(v8 + 16, dst))
          {
LABEL_22:
            result = 1;
            goto LABEL_17;
          }
        }

        else
        {
          if (v10 >= *&v3)
          {
            v10 %= *&v3;
          }

          if (v10 != v6)
          {
            break;
          }
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

LABEL_16:
  result = 0;
LABEL_17:
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BDAEC4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2000000000;
  v9 = *(a1 + 592);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v7 = *v9;
  v3 = *(v7 + 128);
  dyld_shared_cache_for_each_image();
  if (*(v11 + 24) == 1)
  {
    *(a2 + 138) = 1;
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(v6, 8);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  return v4;
}

uint64_t sub_298BDAFD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  return dyld_image_for_each_segment_info();
}

uint64_t sub_298BDB050(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    v4 = *(result + 56);
    v5 = v4[9];
    v6 = v4[10] + a3;
    if (v6 <= v5 && v4[8] + v5 <= v6 + a4)
    {
      v7 = *(result + 64);
      v8 = *(result + 40);
      v9 = *(result + 32);
      v10 = *(result + 56);
      return dyld_image_content_for_segment();
    }
  }

  return result;
}

void sub_298BDB10C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v37 = a3;
  v8 = *(a1[7] + 72) - *(a1[7] + 80);
  LOBYTE(v30) = 0;
  LOBYTE(v31) = 0;
  sub_298BF4DF8(a2, a4, v8, &v30, v34);
  if (v36 != 1)
  {
    return;
  }

  if (*(*(*(a1[4] + 8) + 24) + 136) != 1)
  {
    v9 = a1[7];
    operator new[]();
  }

  *(a1[7] + 48) = v35;
  v10 = *(*(a1[5] + 8) + 24);
  std::mutex::lock((v10 + 40));
  v11 = *(*(a1[5] + 8) + 24);
  v14 = *(v11 + 16);
  v12 = v11 + 16;
  v13 = v14;
  v15 = *(v12 + 16);
  if (!v15)
  {
    v24 = 0;
LABEL_17:
    v18 = sub_298BE4B44(v12, &v37, v24);
    *v18 = a3;
    *(v18 + 1) = 0u;
    *(v18 + 3) = 0u;
    *(v18 + 5) = 0u;
    v18[7] = 0;
    goto LABEL_18;
  }

  v16 = v15 - 1;
  v17 = v16 & (37 * a3);
  v18 = (v13 + (v17 << 6));
  v19 = *v18;
  if (*v18 != a3)
  {
    v20 = 0;
    v21 = 1;
    while (v19 != -1)
    {
      if (v20)
      {
        v22 = 0;
      }

      else
      {
        v22 = v19 == -2;
      }

      if (v22)
      {
        v20 = v18;
      }

      v23 = v17 + v21++;
      v17 = v23 & v16;
      v18 = (v13 + (v17 << 6));
      v19 = *v18;
      if (*v18 == a3)
      {
        goto LABEL_18;
      }
    }

    if (v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v18;
    }

    goto LABEL_17;
  }

LABEL_18:
  std::mutex::unlock((v10 + 40));
  v26 = v18[1];
  v25 = v18 + 1;
  if (!v26)
  {
    sub_298BF4F80(a2, a4, 0, &v30);
    v27 = v30;
    v28 = v31;
    v29 = v32;
    v25[6] = v33;
    *(v25 + 1) = v28;
    *(v25 + 2) = v29;
    *v25 = v27;
  }

  *(*(a1[6] + 8) + 24) = 0;
}

void sub_298BDB330(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void sub_298BDB390(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void sub_298BDB400(uint64_t a1)
{
  sub_298AE88F0(a1 + 48);
  sub_298BDD2E4(a1 + 8);

  JUMPOUT(0x29C2945F0);
}

void sub_298BDB454(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_6;
        }
      }

      __p = v2;
      operator delete(v2[2]);
      operator delete(__p);
      v2 = v3;
    }

    while (v3);
  }

LABEL_6:
  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  JUMPOUT(0x29C2945F0);
}

_BYTE *sub_298BDB508(_BYTE *a1, const void *a2, size_t a3)
{
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  a1[23] = a3;
  if (a3)
  {
    memmove(a1, a2, a3);
  }

  a1[a3] = 0;
  return a1;
}

void *sub_298BDB5B8@<X0>(_BYTE *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  *a1 = 0;
  v8 = a1 + 8;
  result = sub_298BDB9EC((a1 + 8), a2);
  if ((v10 & 1) == 0)
  {
    v21 = a1[1];
    v15 = result + 4;
    return sub_298BDB6DC(a4, v21, v15);
  }

  if (*v8 != result)
  {
    v11 = *result;
    if (*result)
    {
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v13 = result;
      do
      {
        v12 = v13[2];
        v14 = *v12 == v13;
        v13 = v12;
      }

      while (v14);
    }

    v15 = v12 + 4;
    if (v12[4] <= a2 && v12[5] > a2)
    {
      goto LABEL_19;
    }
  }

  v16 = result[1];
  if (v16)
  {
    do
    {
      v17 = v16;
      v16 = *v16;
    }

    while (v16);
  }

  else
  {
    do
    {
      v17 = result[2];
      v14 = *v17 == result;
      result = v17;
    }

    while (!v14);
  }

  if (v17 != (a1 + 16))
  {
    v19 = v17[4];
    v15 = v17 + 4;
    v18 = v19;
    if (a2 <= v19 && a3 > v18)
    {
LABEL_19:
      v21 = a1[1];
      return sub_298BDB6DC(a4, v21, v15);
    }
  }

  *a4 = 0;
  return result;
}

void *sub_298BDB6DC(void *result, char a2, unint64_t *a3)
{
  if (a2)
  {
    std::generic_category();
    sub_298BDBAAC(&v4, a3);
    v5[0] = "Pre-existing interval: ";
    v5[2] = &v4;
    v6 = 1027;
    sub_298B996A4(v5, &__p);
    operator new();
  }

  *result = 0;
  return result;
}

void *sub_298BDB9EC(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_2:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_2;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_2;
    }
  }
}

void sub_298BDBAAC(std::string *a1, unint64_t *a2)
{
  sub_298ADC8F4(&v14, *a2);
  v4 = std::string::insert(&v14, 0, "[");
  v5 = v4->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v15, ", ");
  v7 = v6->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = *&v6->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_298ADC8F4(&__p, a2[1]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v16, p_p, size);
  v11 = v10->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = *&v10->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v17, ")");
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_9:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v16.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v14.__r_.__value_.__l.__data_);
    return;
  }

LABEL_16:
  operator delete(v15.__r_.__value_.__l.__data_);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

__n128 sub_298BDBC28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    v3 = a1;
    sub_298AFE11C((a1 + 16), *(a2 + 16), *(a2 + 24));
    a1 = v3;
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_298BDBC98(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    sub_298BDBF18(a1, a2 - v2);
  }
}

uint64_t sub_298BDBCC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a4)
  {
    v8 = result;
    do
    {
      v9 = a3 + ((a4 - a3) >> 1);
      *(*(v8 + 32) + 16 * a2) = *(a5 + 16 * v9);
      result = sub_298BDBCC8(v8, 2 * a2);
      a3 = v9 + 1;
      a2 = (2 * a2) | 1;
    }

    while (v9 + 1 != a4);
  }

  return result;
}

void *sub_298BDBD58(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v6 = a2;
    do
    {
      v7 = v6[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      ++v4;
      v6 = v8;
    }

    while (v8 != a3);
  }

  sub_298BDBDE0(a1, a2, a3, v4);
  return a1;
}

uint64_t sub_298BDBDE0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_298BDBE98(result, a4);
  }

  return result;
}

void sub_298BDBE98(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_298BDBEDC(a2);
  }

  sub_298ADDDA0();
}

void sub_298BDBEDC(unint64_t a1)
{
  if (!(a1 >> 60))
  {

    operator new();
  }

  sub_298ADDDA0();
}

void sub_298BDBF18(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 > (v4 - v5) >> 4)
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_298ADDDA0();
    }

    v9 = v4 - v6;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_298BDBEDC(v10);
    }

    v12 = v7 >> 4;
    v11 = (16 * (v7 >> 4));
    bzero(v11, 16 * a2);
    memcpy(&v11[-16 * v12], v6, v7);
    *a1 = &v11[-16 * v12];
    *(a1 + 8) = &v11[16 * a2];
    *(a1 + 16) = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }

  else
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }
}

size_t sub_298BDC040(size_t result, int a2, char *__s)
{
  if (!__s)
  {
    return result;
  }

  v4 = result;
  result = strlen(__s);
  if (result >= 0x10)
  {
    if (*__s == 0x5F74666977735F5FLL && *(__s + 1) == 0x7972746E655F7361)
    {
      goto LABEL_15;
    }
  }

  else if (result < 0xE)
  {
    return result;
  }

  if (*__s == 0x5F74666977735F5FLL && *(__s + 6) == 0x7465725F73615F74)
  {
LABEL_15:
    v7 = v4[4];
    v8 = v4[5];
    v9 = v4[6];
    return dyld_image_content_for_section();
  }

  return result;
}

uint64_t sub_298BDC16C(uint64_t result, int *a2, uint64_t a3, unint64_t a4)
{
  if (a2 && a4 >= 4)
  {
    v4 = a2;
    v5 = *(result + 32) + a3;
    v6 = (*(result + 40) + 8);
    do
    {
      v7 = v5 + *v4;
      v8 = *v6;
      if (!*v6)
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v9 = v8;
          v10 = v8[4];
          if (v10 <= v7)
          {
            break;
          }

          v8 = *v9;
          if (!*v9)
          {
            goto LABEL_10;
          }
        }

        if (v10 >= v7)
        {
          break;
        }

        v8 = v9[1];
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      *(v9 + 10) = *(result + 48);
      v5 += 4;
      ++v4;
    }

    while (v4 != (a2 + (a4 & 0xFFFFFFFFFFFFFFFCLL)));
  }

  return result;
}

uint64_t sub_298BDC2AC(uint64_t result)
{
  v1 = *(result + 48);
  *(result + 48) = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
  }

  if (*(result + 31) < 0)
  {
    v3 = result;
    operator delete(*(result + 8));
    return v3;
  }

  return result;
}

void sub_298BDC328(__n128 *a1, const void *a2, const void *a3, _BYTE *a4)
{
  v48 = *MEMORY[0x29EDCA608];
  v43[0] = a2;
  v43[1] = a3;
  if (*(*a4 + 8) == 1)
  {
    v5 = *a4;
  }

  else
  {
    v5 = 0;
  }

  sub_298B80798(&v44, v5, 0);
  sub_298B80798(&v41, 0, 0);
  *v37 = v44;
  v38 = v45;
  v39 = v46;
  v40 = v47;
  v6 = v44;
  v32 = DWORD2(v44);
  v30 = v41;
  if (v44 != v41 || DWORD2(v44) != v42)
  {
    v7 = *(&v39 + 1);
    v8 = v40;
    v9 = v39;
    v10 = DWORD1(v39);
    v12 = DWORD1(v38);
    v11 = DWORD2(v38);
    v13 = HIDWORD(v37[1]);
    v14 = v38;
    v29 = v42;
    while (1)
    {
      v15 = *(v6 + 48);
      v16 = v15 == -889275714 ? v13 : v9;
      v17 = v15 == -889275714 ? v14 : v10;
      sub_298B7DEF8(v16, v17, 0, 0, __p);
      if (v35 == 3)
      {
        break;
      }

      if (v35 != 5 && (v35 - 3) < 3)
      {
        goto LABEL_18;
      }

LABEL_30:
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      sub_298B80798(&v44, v6, v32 + 1);
      v6 = v44;
      v13 = HIDWORD(v44);
      v32 = DWORD2(v44);
      v14 = v45;
      v12 = DWORD1(v45);
      v11 = DWORD2(v45);
      v9 = v46;
      v10 = DWORD1(v46);
      v7 = *(&v46 + 1);
      v8 = v47;
      if (v44 == v30 && DWORD2(v44) == v29)
      {
        goto LABEL_34;
      }
    }

    if (v36 == 34)
    {
      goto LABEL_19;
    }

LABEL_18:
    if ((a4[48] & 1) == 0)
    {
LABEL_19:
      v18 = *(v6 + 24);
      v19 = *(v6 + 48);
      v20 = v19 == -889275714;
      if (v19 == -889275714)
      {
        v21 = v12;
      }

      else
      {
        v21 = v7;
      }

      if (v20)
      {
        v22 = v11;
      }

      else
      {
        v22 = v8;
      }

      if (v18 < v21)
      {
        v21 = *(v6 + 24);
      }

      v23 = v18 - v21;
      if (v23 >= v22)
      {
        v23 = v22;
      }

      *&v44 = v21 + *(v6 + 16);
      *(&v44 + 1) = v23;
      v45 = *(v6 + 32);
      sub_298B7E74C(&v44);
    }

    goto LABEL_30;
  }

LABEL_34:
  if (a4[48] != 1)
  {
    sub_298BB0E68(&v44, "Universal object does not contain a recognized arch slice: ");
    sub_298B1EEB8(v43, __p);
    if ((v34 & 0x80u) == 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v25 = v34;
    }

    else
    {
      v25 = __p[1];
    }

    v26 = std::string::append(&v44, v24, v25);
    v27 = v26->__r_.__value_.__r.__words[2];
    *v37 = *&v26->__r_.__value_.__l.__data_;
    *&v38 = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    sub_298BD6D38();
  }

  sub_298BDC820(a1, a4);
  v28 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BDC79C(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v3 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v3 = v2;
    }

    return sub_298B9BCEC(result, a2, v3);
  }

  else
  {
    v4 = *(result + 32);
    if (*(result + 24) - v4 > 3uLL)
    {
      *v4 = 1701736270;
      *(result + 32) += 4;
    }

    else
    {
      return sub_298B9BCEC(result, "None", 4uLL);
    }
  }

  return result;
}

__n128 sub_298BDC820(__n128 *a1, uint64_t a2)
{
  a1[3].n128_u8[8] &= ~1u;
  result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *a1 = result;
  v3 = *(a2 + 16);
  a1[1].n128_u8[8] = 0;
  a1[1].n128_u64[0] = v3;
  a1[3].n128_u8[0] = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 24);
    a1[2].n128_u64[1] = *(a2 + 40);
    *(a1 + 24) = result;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    a1[3].n128_u8[0] = 1;
  }

  return result;
}

BOOL sub_298BDC880(const unsigned __int8 **a1, const unsigned __int8 **a2)
{
  sub_298B1FB90(a1, v14);
  sub_298B1FB90(a2, __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v14[1];
  }

  v5 = v13;
  v6 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = v14;
    }

    else
    {
      v7 = v14[0];
    }

    if ((v13 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    result = memcmp(v7, v8, v4) == 0;
  }

  else
  {
    result = 0;
  }

  if (v6 < 0)
  {
    v10 = result;
    operator delete(__p[0]);
    result = v10;
    v3 = v15;
  }

  if ((v3 & 0x80) != 0)
  {
    v11 = result;
    operator delete(v14[0]);
    return v11;
  }

  return result;
}

BOOL sub_298BDC964(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

_DWORD **sub_298BDC9D8(_DWORD **result, unint64_t a2)
{
  v2 = *(*result + 1);
  if (!v2)
  {
    v5 = (*result + 2);
LABEL_9:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_9;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  *(v3 + 10) = *result[1];
  return result;
}

uint64_t sub_298BDCAC4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *(v5 - 8);
    v10 = *(a2 + 2);
    v9 = *a2;
    result = (*(*v6 + 16))(v6, &v9);
    if (result)
    {
      break;
    }

    v8 = v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

void sub_298BDCB6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298BDCBE4(uint64_t result, uint64_t a2, const char *a3, __int128 *a4)
{
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 != v4)
  {
    if (a3)
    {
      v9 = *v5;
      v22 = *(a4 + 2);
      v21 = *a4;
      result = (*(*v9 + 16))(v9, &v21);
      if (result)
      {
        v10 = strlen(a3);
        result = (*(*v9 + 8))(v9, a2, a3, v10);
      }

      if (v5 + 1 != v4)
      {
        v11 = v5[1];
        v22 = *(a4 + 2);
        v21 = *a4;
        result = (*(*v11 + 16))(v11, &v21);
        if (result)
        {
          v12 = strlen(a3);
          result = (*(*v11 + 8))(v11, a2, a3, v12);
        }

        if (v5 + 2 != v4)
        {
          v13 = v5[2];
          v22 = *(a4 + 2);
          v21 = *a4;
          result = (*(*v13 + 16))(v13, &v21);
          if (result)
          {
            v14 = strlen(a3);
            result = (*(*v13 + 8))(v13, a2, a3, v14);
          }

          if (v5 + 3 != v4)
          {
            v15 = v5[3];
            v22 = *(a4 + 2);
            v21 = *a4;
            result = (*(*v15 + 16))(v15, &v21);
            if (result)
            {
              v16 = strlen(a3);
              result = (*(*v15 + 8))(v15, a2, a3, v16);
            }

            for (i = v5 + 4; i != v4; ++i)
            {
              v18 = *i;
              v22 = *(a4 + 2);
              v21 = *a4;
              result = (*(*v18 + 16))(v18, &v21);
              if (result)
              {
                v19 = strlen(a3);
                result = (*(*v18 + 8))(v18, a2, a3, v19);
              }
            }
          }
        }
      }
    }

    else
    {
      do
      {
        v20 = *v5;
        v22 = *(a4 + 2);
        v21 = *a4;
        result = (*(*v20 + 16))(v20, &v21);
        if (result)
        {
          result = (*(*v20 + 8))(v20, a2, a3, 0);
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  return result;
}

void *sub_298BDCF70(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    sub_298AEF838(v7);
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

uint64_t sub_298BDD044(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_298AEBDC8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298BDD0A4(a1, *(i + 4));
  }

  return a1;
}

void *sub_298BDD0A4(void *result, unsigned int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (v2 - 1) & a2;
    v5 = *(*result + 8 * v4);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v4 = a2;
  if (v2 <= a2)
  {
    v4 = a2 % v2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_6:
  v6 = *v5;
  if (!v6)
  {
    goto LABEL_15;
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return result;
        }
      }

      else if ((v8 & (v2 - 1)) != v4)
      {
        goto LABEL_15;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v7 >= v2)
    {
      v7 %= v2;
    }

    if (v7 != v4)
    {
      goto LABEL_15;
    }

LABEL_10:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_298BDD2E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 5);
    if (v4)
    {
      *(v2 + 6) = v4;
      v17 = v2;
      operator delete(v4);
      v2 = v17;
    }

    if (v2[39] < 0)
    {
      v18 = v2;
      operator delete(*(v2 + 2));
      v2 = v18;
    }

    operator delete(v2);
    if (v3)
    {
      v5 = *v3;
      v6 = *(v3 + 5);
      if (v6)
      {
        *(v3 + 6) = v6;
        operator delete(v6);
      }

      if (v3[39] < 0)
      {
        operator delete(*(v3 + 2));
      }

      operator delete(v3);
      if (v5)
      {
        v7 = *v5;
        v8 = *(v5 + 5);
        if (v8)
        {
          *(v5 + 6) = v8;
          operator delete(v8);
        }

        if (v5[39] < 0)
        {
          operator delete(*(v5 + 2));
        }

        operator delete(v5);
        if (v7)
        {
          v9 = *v7;
          v10 = *(v7 + 5);
          if (v10)
          {
            *(v7 + 6) = v10;
            operator delete(v10);
          }

          if (v7[39] < 0)
          {
            operator delete(*(v7 + 2));
          }

          operator delete(v7);
          if (v9)
          {
            v13 = *v9;
            v14 = *(v9 + 5);
            if (v14)
            {
              *(v9 + 6) = v14;
              operator delete(v14);
            }

            if (v9[39] < 0)
            {
              operator delete(*(v9 + 2));
            }

            operator delete(v9);
            if (v13)
            {
              do
              {
                v15 = *v13;
                v16 = *(v13 + 5);
                if (v16)
                {
                  *(v13 + 6) = v16;
                  operator delete(v16);
                }

                if (v13[39] < 0)
                {
                  operator delete(*(v13 + 2));
                }

                operator delete(v13);
                v13 = v15;
              }

              while (v15);
            }
          }
        }
      }
    }
  }

  v11 = *a1;
  *a1 = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return a1;
}

uint64_t sub_298BDD494(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298AEB1D4(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

void *sub_298BDD4E0(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_298B7F920(&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_9;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
    v11 = (*&v8 - 1) & v6;
  }

  else
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v14 = *v12) == 0)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v15 &= *&v8 - 1;
    }

    else if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v11)
    {
      goto LABEL_9;
    }

LABEL_15:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (!sub_298BDC964(v14 + 2, v2))
  {
    goto LABEL_15;
  }

  return v14;
}

_DWORD *sub_298BDD7F0(uint64_t a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 2) + 1;
  if (v4 >> 62)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 1 > v4)
  {
    v4 = v6 >> 1;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v7 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 62))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (4 * (v3 >> 2));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void *sub_298BDD8E0(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_298B7F920(&v17, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] <= 1uLL)
  {
    v10 = (*&v7 - 1) & v6;
  }

  else
  {
    v10 = v6 < *&v7 ? v6 : v6 % *&v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (!*v11)
  {
    return 0;
  }

  if (v9.u32[0] >= 2uLL)
  {
    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        if (sub_298BDC964(v12 + 2, v2))
        {
          return v12;
        }
      }

      else
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        return 0;
      }
    }
  }

  v15 = *&v7 - 1;
  while (1)
  {
    v16 = v12[1];
    if (v16 == v8)
    {
      break;
    }

    if ((v16 & v15) != v10)
    {
      return 0;
    }

LABEL_23:
    result = 0;
    v12 = *v12;
    if (!v12)
    {
      return result;
    }
  }

  if (!sub_298BDC964(v12 + 2, v2))
  {
    goto LABEL_23;
  }

  return v12;
}

uint64_t *sub_298BDDA2C(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] <= 1uLL)
  {
    v4 = (v2 - 1) & a2;
    v5 = *(*a1 + 8 * v4);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v4 = a2;
  if (v2 <= a2)
  {
    v4 = a2 % v2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v5;
  if (!*v5)
  {
    goto LABEL_15;
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = result[1];
      if (v8 == a2)
      {
        if (*(result + 4) == a2)
        {
          return result;
        }
      }

      else if ((v8 & (v2 - 1)) != v4)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      break;
    }

    if (v7 >= v2)
    {
      v7 %= v2;
    }

    if (v7 != v4)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (*(result + 4) != a2)
  {
    goto LABEL_10;
  }

  return result;
}

BOOL sub_298BDDC84(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_298B7F920(&v16, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_9;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] <= 1uLL)
  {
    v11 = (*&v8 - 1) & v6;
  }

  else
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_9:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 <= 1)
    {
      v14 &= *&v8 - 1;
    }

    else if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v11)
    {
      goto LABEL_9;
    }

LABEL_15:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  result = sub_298BDC964(v13 + 2, v2);
  if (!result)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_298BDDED8(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    __n = 2;
  }

  else if ((__n & (__n - 1)) != 0)
  {
    v6 = a1;
    __n = std::__next_prime(__n);
    a1 = v6;
  }

  v2 = *(a1 + 8);
  if (__n > *&v2)
  {
    goto LABEL_4;
  }

  if (__n < *&v2)
  {
    v3 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v2 < 3uLL || (v4 = vcnt_s8(v2), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v7 = a1;
      v8 = __n;
      prime = std::__next_prime(v3);
      __n = v8;
      v3 = prime;
      a1 = v7;
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (__n <= v3)
    {
      __n = v3;
    }

    if (__n < *&v2)
    {
LABEL_4:

      sub_298AE8270(a1, __n);
    }
  }
}

uint64_t *sub_298BDDFD8(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_298AEFAFC(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t sub_298BDE034(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    sub_298ADDDA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a2 + 96);
  v8 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v8;
  *(v6 + 120) = *(a2 + 120);
  *(v6 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v9 = *(a2 + 144);
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = v9;
  v10 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(v6 + 160) = v10;
  v11 = 176 * v2 + 176;
  v12 = *a1;
  v13 = a1[1];
  v14 = v6 + *a1 - v13;
  if (*a1 != v13)
  {
    v15 = *a1;
    v16 = v6 + *a1 - v13;
    do
    {
      *v16 = *v15;
      v17 = *(v15 + 8);
      *(v16 + 24) = *(v15 + 24);
      *(v16 + 8) = v17;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 8) = 0;
      *(v16 + 32) = *(v15 + 32);
      v19 = *(v15 + 64);
      v18 = *(v15 + 80);
      v20 = *(v15 + 48);
      *(v16 + 96) = *(v15 + 96);
      *(v16 + 64) = v19;
      *(v16 + 80) = v18;
      *(v16 + 48) = v20;
      v21 = *(v15 + 104);
      *(v16 + 120) = *(v15 + 120);
      *(v16 + 104) = v21;
      *(v15 + 112) = 0;
      *(v15 + 120) = 0;
      *(v15 + 104) = 0;
      v22 = *(v15 + 144);
      *(v16 + 128) = *(v15 + 128);
      *(v16 + 144) = v22;
      v23 = *(v15 + 160);
      *(v15 + 160) = 0;
      *(v15 + 168) = 0;
      *(v16 + 160) = v23;
      v15 += 176;
      v16 += 176;
    }

    while (v15 != v13);
    do
    {
      v24 = *(v12 + 168);
      *(v12 + 168) = 0;
      if (v24)
      {
        MEMORY[0x29C2945C0](v24, 0x1000C8077774924);
      }

      v25 = *(v12 + 160);
      *(v12 + 160) = 0;
      if (v25)
      {
        sub_298AEB5EC(v12 + 160, v25);
      }

      if (*(v12 + 127) < 0)
      {
        operator delete(*(v12 + 104));
      }

      if (*(v12 + 31) < 0)
      {
        operator delete(*(v12 + 8));
      }

      v12 += 176;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

uint64_t sub_298BDE2B4(uint64_t result, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = (37 * a4) + ~((37 * a4) << 32) + (((a3 >> 4) ^ (a3 >> 9)) << 32);
    v6 = (v5 ^ (v5 >> 22)) + ~((v5 ^ (v5 >> 22)) << 13);
    v7 = (9 * (v6 ^ (v6 >> 8))) ^ ((9 * (v6 ^ (v6 >> 8))) >> 15);
    v8 = a2 - 1;
    v9 = (a2 - 1) & (((v7 + ~(v7 << 27)) >> 31) ^ (v7 + ~(v7 << 27)));
    v10 = (result + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    if (*v10 == a3 && v12 == a4)
    {
LABEL_7:
      *a5 = v10;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (v11 != -4096 || v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v14)
        {
          v16 = 0;
        }

        else
        {
          v16 = v12 == 0x8000000000000000;
        }

        if (v16 && v11 == -8192)
        {
          v14 = v10;
        }

        v18 = v9 + v15++;
        v9 = v18 & v8;
        v10 = (result + 16 * (v18 & v8));
        v11 = *v10;
        v12 = v10[1];
        if (*v10 == a3 && v12 == a4)
        {
          goto LABEL_7;
        }
      }

      if (v14)
      {
        v10 = v14;
      }

      *a5 = v10;
    }
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

_OWORD *sub_298BDE394(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = (v11 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v12 < 3)
      {
        goto LABEL_10;
      }

      v13 = v12 + 1;
      v10 = &result[v13 & 0x1FFFFFFFFFFFFFFCLL];
      v14 = result + 2;
      v15 = v13 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v14 - 2) = xmmword_298D1B220;
        *(v14 - 1) = xmmword_298D1B220;
        *v14 = xmmword_298D1B220;
        v14[1] = xmmword_298D1B220;
        v14 += 4;
        v15 -= 4;
      }

      while (v15);
      if (v13 != (v13 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_10:
        v16 = &result[v11];
        do
        {
          *v10++ = xmmword_298D1B220;
        }

        while (v10 != v16);
      }
    }

    if (v3)
    {
      v17 = 16 * v3;
      v18 = (v4 + 8);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;
        if ((v19 != -4096 || v20 != 0x7FFFFFFFFFFFFFFFLL) && (v19 != -8192 || v20 != 0x8000000000000000))
        {
          v27 = 0;
          sub_298BDE2B4(*a1, *(a1 + 16), v19, v20, &v27);
          v23 = v27;
          v24 = *v18;
          *v27 = *(v18 - 1);
          v23[1] = v24;
          ++*(a1 + 8);
        }

        v18 += 2;
        v17 -= 16;
      }

      while (v17);
    }

    JUMPOUT(0x29C2945E0);
  }

  *(a1 + 8) = 0;
  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = 16 * v25;
    do
    {
      *v10++ = xmmword_298D1B220;
      v26 -= 16;
    }

    while (v26);
  }

  return result;
}

void sub_298BDE544(char *a1, char *a2)
{
  v2 = 126 - 2 * __clz(0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_298BDE57C(a1, a2, v3, 1);
}

void sub_298BDE57C(char *a1, char *a2, uint64_t a3, int a4)
{
LABEL_1:
  v4 = (a2 - 176);
  v5 = (a2 - 352);
  v6 = (a2 - 528);
LABEL_2:
  v7 = 1 - a3;
  while (1)
  {
    v8 = v7;
    v9 = a2 - a1;
    v10 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        if (*(a2 - 13) < *(a1 + 9))
        {

          sub_298BDFD3C(a1, v4);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {

      sub_298BDE9F8(a1, (a1 + 176), (a1 + 352), v4);
      return;
    }

    if (v10 == 5)
    {

      sub_298BDEAA0(a1, (a1 + 176), (a1 + 352), (a1 + 528), v4);
      return;
    }

LABEL_10:
    if (v9 <= 4223)
    {
      if (a4)
      {

        sub_298BDEBC8(a1, a2);
      }

      else
      {

        sub_298BDEEB4(a1, a2);
      }

      return;
    }

    if (v8 == 1)
    {

      sub_298BDF184(a1, a2, a2);
      return;
    }

    v19 = a4;
    v20 = a2;
    v11 = v10 >> 1;
    v12 = &a1[176 * (v10 >> 1)];
    v18 = a1;
    if (v9 < 0x5801)
    {
      sub_298BDE940(&a1[176 * (v10 >> 1)], a1, v4);
    }

    else
    {
      v13 = a1;
      sub_298BDE940(a1, &a1[176 * (v10 >> 1)], v4);
      sub_298BDE940(v13 + 176, 176 * v11 + v13 - 176, v5);
      sub_298BDE940(v13 + 352, v13 + 176 + 176 * v11, v6);
      sub_298BDE940(176 * v11 + v13 - 176, v12, v13 + 176 + 176 * v11);
      sub_298BDFD3C(v13, v12);
    }

    if ((v19 & 1) == 0 && *(v18 - 104) >= *(v18 + 72))
    {
      a1 = sub_298BDF6E0(v18, v20);
      goto LABEL_18;
    }

    v14 = sub_298BDF90C(v18, v20);
    LOBYTE(a4) = v19;
    v15 = v14;
    if ((v16 & 1) == 0)
    {
      goto LABEL_17;
    }

    v17 = sub_298BDFAD8(v18, v14);
    if (sub_298BDFAD8((v15 + 176), v20))
    {
      a3 = -v8;
      a2 = v15;
      a1 = v18;
      a4 = v19;
      if (v17)
      {
        return;
      }

      goto LABEL_1;
    }

    v7 = v8 + 1;
    a2 = v20;
    a4 = v19;
    a1 = v15 + 176;
    if (!v17)
    {
LABEL_17:
      sub_298BDE57C(v18, v15, -v8, a4 & 1);
      a1 = v15 + 176;
LABEL_18:
      a4 = 0;
      a3 = -v8;
      a2 = v20;
      goto LABEL_2;
    }
  }

  sub_298BDE940(a1, (a1 + 176), v4);
}

uint64_t sub_298BDE940(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 72);
  v5 = *(a3 + 72);
  if (v4 < *(result + 72))
  {
    if (v5 >= v4)
    {
      result = sub_298BDFD3C(result, a2);
      if (*(a3 + 72) >= *(a2 + 72))
      {
        return result;
      }

      v7 = a3;
      result = a2;
    }

    else
    {
      v7 = a3;
    }
  }

  else
  {
    if (v5 >= v4)
    {
      return result;
    }

    v6 = result;
    result = sub_298BDFD3C(a2, a3);
    if (*(a2 + 72) >= *(v6 + 72))
    {
      return result;
    }

    result = v6;
    v7 = a2;
  }

  return sub_298BDFD3C(result, v7);
}

uint64_t sub_298BDE9F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_298BDE940(a1, a2, a3);
  if (*(a4 + 72) < *(a3 + 72))
  {
    result = sub_298BDFD3C(a3, a4);
    if (*(a3 + 72) < *(a2 + 72))
    {
      result = sub_298BDFD3C(a2, a3);
      if (*(a2 + 72) < *(a1 + 72))
      {

        return sub_298BDFD3C(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_298BDEAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_298BDE940(a1, a2, a3);
  if (*(a4 + 72) < *(a3 + 72))
  {
    result = sub_298BDFD3C(a3, a4);
    if (*(a3 + 72) < *(a2 + 72))
    {
      result = sub_298BDFD3C(a2, a3);
      if (*(a2 + 72) < *(a1 + 72))
      {
        result = sub_298BDFD3C(a1, a2);
      }
    }
  }

  if (*(a5 + 72) < *(a4 + 72))
  {
    result = sub_298BDFD3C(a4, a5);
    if (*(a4 + 72) < *(a3 + 72))
    {
      result = sub_298BDFD3C(a3, a4);
      if (*(a3 + 72) < *(a2 + 72))
      {
        result = sub_298BDFD3C(a2, a3);
        if (*(a2 + 72) < *(a1 + 72))
        {

          return sub_298BDFD3C(a1, a2);
        }
      }
    }
  }

  return result;
}

void sub_298BDEBC8(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x29EDCA608];
  if (a1 == a2)
  {
    goto LABEL_30;
  }

  v4 = (a1 + 176);
  if ((a1 + 176) == a2)
  {
    goto LABEL_30;
  }

  v5 = 0;
  v6 = a1;
  while (2)
  {
    v7 = v4;
    if (*(v6 + 248) >= *(v6 + 72))
    {
      goto LABEL_4;
    }

    v29 = *v4;
    __p = *(v6 + 184);
    v31 = *(v6 + 200);
    *(v6 + 184) = 0;
    *(v6 + 192) = 0;
    *(v6 + 200) = 0;
    v8 = *(v6 + 256);
    v34 = *(v6 + 240);
    v35 = v8;
    v36 = *(v6 + 272);
    v9 = *(v6 + 224);
    v32 = *(v6 + 208);
    v33 = v9;
    v10 = *(v6 + 280);
    v38 = *(v6 + 296);
    v37 = v10;
    *(v6 + 280) = 0;
    *(v6 + 288) = 0;
    *(v6 + 296) = 0;
    v11 = *(v6 + 320);
    v39 = *(v6 + 304);
    v40 = v11;
    v12 = *(v6 + 336);
    *(v6 + 336) = 0;
    *(v6 + 344) = 0;
    v13 = v5;
    v41 = v12;
    do
    {
      v14 = a1 + v13;
      *(a1 + v13 + 176) = *(a1 + v13);
      if (*(a1 + v13 + 207) < 0)
      {
        operator delete(*(v14 + 184));
      }

      *(v14 + 184) = *(v14 + 8);
      *(v14 + 200) = *(v14 + 24);
      *(v14 + 31) = 0;
      *(v14 + 8) = 0;
      v15 = *(v14 + 80);
      *(v14 + 240) = *(v14 + 64);
      *(v14 + 256) = v15;
      *(v14 + 272) = *(v14 + 96);
      v16 = *(v14 + 48);
      *(v14 + 208) = *(v14 + 32);
      *(v14 + 224) = v16;
      v17 = (v14 + 280);
      if (*(v14 + 303) < 0)
      {
        operator delete(*v17);
      }

      v18 = a1 + v13;
      *v17 = *(v14 + 104);
      *(v14 + 296) = *(v14 + 120);
      *(v18 + 127) = 0;
      *(v14 + 104) = 0;
      v19 = *(a1 + v13 + 144);
      *(v18 + 304) = *(a1 + v13 + 128);
      *(v18 + 320) = v19;
      v20 = *(a1 + v13 + 160);
      *(v18 + 160) = 0;
      v21 = *(a1 + v13 + 336);
      *(v18 + 336) = v20;
      if (!v21)
      {
        v22 = *(v18 + 168);
        *(v18 + 168) = 0;
        v23 = *(v18 + 344);
        *(v18 + 344) = v22;
        if (!v23)
        {
          goto LABEL_14;
        }

LABEL_13:
        MEMORY[0x29C2945C0](v23, 0x1000C8077774924);
        goto LABEL_14;
      }

      sub_298AE9B00(v21, *(v21 + 8));
      MEMORY[0x29C2945F0](v21, 0x1020C4062D53EE8);
      v25 = *(v18 + 168);
      *(v18 + 168) = 0;
      v23 = *(v18 + 344);
      *(v18 + 344) = v25;
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (!v13)
      {
        sub_298BDFE18(a1, &v29);
        v26 = *(&v41 + 1);
        if (!*(&v41 + 1))
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v24 = *(a1 + v13 - 104);
      v13 -= 176;
    }

    while (*(&v34 + 1) < v24);
    sub_298BDFE18(a1 + v13 + 176, &v29);
    v26 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
LABEL_20:
      MEMORY[0x29C2945C0](v26, 0x1000C8077774924);
    }

LABEL_21:
    v27 = v41;
    if (v41)
    {
      sub_298AE9B00(v41, *(v41 + 8));
      MEMORY[0x29C2945F0](v27, 0x1020C4062D53EE8);
      if (SHIBYTE(v38) < 0)
      {
        goto LABEL_28;
      }

LABEL_23:
      if (SHIBYTE(v31) < 0)
      {
LABEL_24:
        operator delete(__p);
      }
    }

    else
    {
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_28:
      operator delete(v37);
      if (SHIBYTE(v31) < 0)
      {
        goto LABEL_24;
      }
    }

LABEL_4:
    v4 = v7 + 22;
    v5 += 176;
    v6 = v7;
    if (v7 + 22 != a2)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v28 = *MEMORY[0x29EDCA608];
}

void *sub_298BDEEB4(void *result, void *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (result == a2)
  {
    goto LABEL_26;
  }

  v3 = result + 22;
  if (result + 22 == a2)
  {
    goto LABEL_26;
  }

  v4 = result + 127;
  while (2)
  {
    v5 = v3;
    if (result[31] >= result[9])
    {
      goto LABEL_4;
    }

    v20 = *v3;
    __p = *(result + 23);
    v22 = result[25];
    result[23] = 0;
    result[24] = 0;
    result[25] = 0;
    v6 = *(result + 16);
    v25 = *(result + 15);
    v26 = v6;
    v27 = result[34];
    v7 = *(result + 14);
    v23 = *(result + 13);
    v24 = v7;
    v8 = *(result + 35);
    v29 = result[37];
    v28 = v8;
    result[35] = 0;
    result[36] = 0;
    result[37] = 0;
    v9 = *(result + 20);
    v30 = *(result + 19);
    v31 = v9;
    v10 = *(result + 21);
    result[42] = 0;
    result[43] = 0;
    v11 = v4;
    v32 = v10;
    do
    {
      *(v11 + 49) = *(v11 - 127);
      if (*(v11 + 80) < 0)
      {
        operator delete(*(v11 + 57));
      }

      *(v11 + 57) = *(v11 - 119);
      *(v11 + 73) = *(v11 - 103);
      *(v11 - 96) = 0;
      *(v11 - 119) = 0;
      *(v11 + 97) = *(v11 - 79);
      *(v11 + 113) = *(v11 - 63);
      *(v11 + 129) = *(v11 - 47);
      *(v11 + 145) = *(v11 - 31);
      *(v11 + 81) = *(v11 - 95);
      if (*(v11 + 176) < 0)
      {
        operator delete(*(v11 + 153));
      }

      *(v11 + 153) = *(v11 - 23);
      *(v11 + 169) = *(v11 - 7);
      *v11 = 0;
      *(v11 - 23) = 0;
      *(v11 + 177) = *(v11 + 1);
      *(v11 + 193) = *(v11 + 17);
      v13 = *(v11 + 33);
      *(v11 + 33) = 0;
      v14 = *(v11 + 209);
      *(v11 + 209) = v13;
      if (!v14)
      {
        v15 = *(v11 + 41);
        *(v11 + 41) = 0;
        v16 = *(v11 + 217);
        *(v11 + 217) = v15;
        if (!v16)
        {
          goto LABEL_7;
        }

LABEL_14:
        MEMORY[0x29C2945C0](v16, 0x1000C8077774924);
        goto LABEL_7;
      }

      sub_298AE9B00(v14, *(v14 + 8));
      MEMORY[0x29C2945F0](v14, 0x1020C4062D53EE8);
      v17 = *(v11 + 41);
      *(v11 + 41) = 0;
      v16 = *(v11 + 217);
      *(v11 + 217) = v17;
      if (v16)
      {
        goto LABEL_14;
      }

LABEL_7:
      v12 = *(v11 - 231);
      v11 -= 176;
    }

    while (*(&v25 + 1) < v12);
    sub_298BDFE18(v11 + 49, &v20);
    if (*(&v32 + 1))
    {
      MEMORY[0x29C2945C0](*(&v32 + 1), 0x1000C8077774924);
    }

    v18 = v32;
    if (v32)
    {
      sub_298AE9B00(v32, *(v32 + 8));
      MEMORY[0x29C2945F0](v18, 0x1020C4062D53EE8);
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_24;
      }

LABEL_21:
      if (SHIBYTE(v22) < 0)
      {
LABEL_22:
        operator delete(__p);
      }
    }

    else
    {
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_24:
      operator delete(v28);
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_22;
      }
    }

LABEL_4:
    v3 = v5 + 22;
    v4 += 176;
    result = v5;
    if (v5 + 22 != a2)
    {
      continue;
    }

    break;
  }

LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BDF184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
    if (a2 - a1 >= 177)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = a1 + 176 * v8;
      do
      {
        sub_298BDFF14(a1, v7, v10);
        v10 -= 176;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (*(v11 + 72) < *(a1 + 72))
        {
          sub_298BDFD3C(v11, a1);
          sub_298BDFF14(a1, v7, a1);
        }

        v11 += 176;
      }

      while (v11 != a3);
    }

    if (v6 >= 177)
    {
      v12 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 4);
      do
      {
LABEL_12:
        v52 = v4;
        v13 = 0;
        v53 = *a1;
        v54 = *(a1 + 8);
        v55 = *(a1 + 24);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v14 = *(a1 + 80);
        v58 = *(a1 + 64);
        v59 = v14;
        v60 = *(a1 + 96);
        v15 = *(a1 + 48);
        v56 = *(a1 + 32);
        v57 = v15;
        v62 = *(a1 + 120);
        v61 = *(a1 + 104);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *(a1 + 104) = 0;
        v16 = *(a1 + 144);
        v63 = *(a1 + 128);
        v64 = v16;
        v17 = *(a1 + 160);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        v18 = a1;
        v65 = v17;
        do
        {
          v19 = v18 + 176 * v13;
          v20 = v19 + 176;
          if (2 * v13 + 2 >= v12)
          {
            v13 = (2 * v13) | 1;
            v24 = v19 + 184;
            *v18 = *v20;
            if ((*(v18 + 31) & 0x80000000) == 0)
            {
              goto LABEL_22;
            }

LABEL_21:
            operator delete(*(v18 + 8));
            goto LABEL_22;
          }

          v21 = *(v19 + 248);
          v22 = *(v19 + 424);
          v23 = v19 + 352;
          if (v21 >= v22)
          {
            v13 = (2 * v13) | 1;
          }

          else
          {
            v20 = v23;
            v13 = 2 * v13 + 2;
          }

          v24 = v20 + 8;
          *v18 = *v20;
          if (*(v18 + 31) < 0)
          {
            goto LABEL_21;
          }

LABEL_22:
          v25 = *v24;
          *(v18 + 24) = *(v24 + 16);
          *(v18 + 8) = v25;
          *(v20 + 31) = 0;
          *(v20 + 8) = 0;
          v26 = *(v20 + 96);
          v28 = *(v20 + 64);
          v27 = *(v20 + 80);
          *(v18 + 48) = *(v20 + 48);
          *(v18 + 64) = v28;
          *(v18 + 80) = v27;
          *(v18 + 96) = v26;
          *(v18 + 32) = *(v20 + 32);
          if (*(v18 + 127) < 0)
          {
            operator delete(*(v18 + 104));
          }

          v29 = *(v20 + 104);
          *(v18 + 120) = *(v20 + 120);
          *(v18 + 104) = v29;
          *(v20 + 127) = 0;
          *(v20 + 104) = 0;
          v30 = *(v20 + 144);
          *(v18 + 128) = *(v20 + 128);
          *(v18 + 144) = v30;
          v31 = *(v20 + 160);
          *(v20 + 160) = 0;
          v32 = *(v18 + 160);
          *(v18 + 160) = v31;
          if (!v32)
          {
            v33 = *(v20 + 168);
            *(v20 + 168) = 0;
            v34 = *(v18 + 168);
            *(v18 + 168) = v33;
            if (!v34)
            {
              goto LABEL_13;
            }

LABEL_26:
            MEMORY[0x29C2945C0](v34, 0x1000C8077774924);
            goto LABEL_13;
          }

          sub_298AE9B00(v32, *(v32 + 8));
          MEMORY[0x29C2945F0](v32, 0x1020C4062D53EE8);
          v35 = *(v20 + 168);
          *(v20 + 168) = 0;
          v34 = *(v18 + 168);
          *(v18 + 168) = v35;
          if (v34)
          {
            goto LABEL_26;
          }

LABEL_13:
          v18 = v20;
        }

        while (v13 <= ((v12 - 2) >> 1));
        v4 = v52 - 176;
        if (v20 == v52 - 176)
        {
          sub_298BDFE18(v20, &v53);
        }

        else
        {
          sub_298BDFE18(v20, v52 - 176);
          sub_298BDFE18(v4, &v53);
          v36 = v20 - a1 + 176;
          if (v36 >= 177)
          {
            v37 = (0x2E8BA2E8BA2E8BA3 * (v36 >> 4) - 2) >> 1;
            v38 = a1 + 176 * v37;
            if (*(v38 + 72) < *(v20 + 72))
            {
              v66 = *v20;
              v39 = *(v24 + 16);
              __p = *v24;
              v68 = v39;
              *(v24 + 8) = 0;
              *(v24 + 16) = 0;
              *v24 = 0;
              v69 = *(v20 + 32);
              v40 = *(v20 + 48);
              v41 = *(v20 + 64);
              v42 = *(v20 + 80);
              v73 = *(v20 + 96);
              v71 = v41;
              v72 = v42;
              v70 = v40;
              v43 = *(v20 + 104);
              v75 = *(v20 + 120);
              v74 = v43;
              *(v20 + 104) = 0;
              *(v20 + 112) = 0;
              *(v20 + 120) = 0;
              v44 = *(v20 + 144);
              v76 = *(v20 + 128);
              v77 = v44;
              v45 = *(v20 + 160);
              *(v20 + 160) = 0;
              *(v20 + 168) = 0;
              v78 = v45;
              v46 = *(&v71 + 1);
              do
              {
                v47 = v38;
                sub_298BDFE18(v20, v38);
                if (!v37)
                {
                  break;
                }

                v37 = (v37 - 1) >> 1;
                v38 = a1 + 176 * v37;
                v20 = v47;
              }

              while (*(v38 + 72) < v46);
              sub_298BDFE18(v47, &v66);
              if (*(&v78 + 1))
              {
                MEMORY[0x29C2945C0](*(&v78 + 1), 0x1000C8077774924);
              }

              v48 = v78;
              if (v78)
              {
                sub_298AE9B00(v78, *(v78 + 8));
                MEMORY[0x29C2945F0](v48, 0x1020C4062D53EE8);
                if (SHIBYTE(v75) < 0)
                {
                  goto LABEL_56;
                }

LABEL_39:
                if (SHIBYTE(v68) < 0)
                {
LABEL_40:
                  operator delete(__p);
                }
              }

              else
              {
                if ((SHIBYTE(v75) & 0x80000000) == 0)
                {
                  goto LABEL_39;
                }

LABEL_56:
                operator delete(v74);
                if (SHIBYTE(v68) < 0)
                {
                  goto LABEL_40;
                }
              }
            }
          }
        }

        if (*(&v65 + 1))
        {
          MEMORY[0x29C2945C0](*(&v65 + 1), 0x1000C8077774924);
        }

        v49 = v65;
        if (!v65)
        {
          if ((SHIBYTE(v62) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }

LABEL_51:
          operator delete(v61);
          if (SHIBYTE(v55) < 0)
          {
            goto LABEL_52;
          }

LABEL_47:
          v50 = v12-- <= 2;
          if (v50)
          {
            break;
          }

          goto LABEL_12;
        }

        sub_298AE9B00(v65, *(v65 + 8));
        MEMORY[0x29C2945F0](v49, 0x1020C4062D53EE8);
        if (SHIBYTE(v62) < 0)
        {
          goto LABEL_51;
        }

LABEL_46:
        if ((SHIBYTE(v55) & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

LABEL_52:
        operator delete(v54);
        v50 = v12-- <= 2;
      }

      while (!v50);
    }
  }

  v51 = *MEMORY[0x29EDCA608];
}

unint64_t sub_298BDF6E0(uint64_t a1, unint64_t a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v20 = *a1;
  *v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v3;
  v27 = *(a1 + 96);
  v4 = *(a1 + 32);
  v24 = *(a1 + 48);
  v23 = v4;
  v29 = *(a1 + 120);
  *__p = *(a1 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v5 = *(a1 + 128);
  v31 = *(a1 + 144);
  v30 = v5;
  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v32 = v6;
  if (*(&v25 + 1) >= *(a2 - 104))
  {
    v10 = a1 + 176;
    do
    {
      v8 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *(v10 + 72);
      v10 += 176;
    }

    while (*(&v25 + 1) >= v11);
  }

  else
  {
    v7 = a1;
    do
    {
      v8 = v7 + 176;
      v9 = *(v7 + 248);
      v7 += 176;
    }

    while (*(&v25 + 1) >= v9);
  }

  if (v8 >= a2)
  {
    v12 = a2;
  }

  else
  {
    do
    {
      v12 = a2 - 176;
      v13 = *(a2 - 104);
      a2 -= 176;
    }

    while (*(&v25 + 1) < v13);
  }

  while (v8 < v12)
  {
    sub_298BDFD3C(v8, v12);
    do
    {
      v14 = *(v8 + 248);
      v8 += 176;
    }

    while (*(&v25 + 1) >= v14);
    do
    {
      v15 = *(v12 - 104);
      v12 -= 176;
    }

    while (*(&v25 + 1) < v15);
  }

  if (v8 - 176 != a1)
  {
    sub_298BDFE18(a1, v8 - 176);
  }

  sub_298BDFE18(v8 - 176, &v20);
  if (*(&v32 + 1))
  {
    MEMORY[0x29C2945C0](*(&v32 + 1), 0x1000C8077774924);
  }

  v16 = v32;
  if (!v32)
  {
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    operator delete(__p[0]);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_27:
    operator delete(v21[0]);
    v19 = *MEMORY[0x29EDCA608];
    return v8;
  }

  sub_298AE9B00(v32, *(v32 + 8));
  MEMORY[0x29C2945F0](v16, 0x1020C4062D53EE8);
  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_27;
  }

LABEL_23:
  v17 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_298BDF90C(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v33 = *MEMORY[0x29EDCA608];
  v20 = *a1;
  v21 = *(a1 + 8);
  v22 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v3;
  v27 = *(a1 + 96);
  v4 = *(a1 + 32);
  v24 = *(a1 + 48);
  v23 = v4;
  v29 = *(a1 + 120);
  v28 = *(a1 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v5 = *(a1 + 128);
  v31 = *(a1 + 144);
  v30 = v5;
  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v32 = v6;
  do
  {
    v7 = *(a1 + v2 + 248);
    v2 += 176;
  }

  while (v7 < *(&v25 + 1));
  v8 = a1 + v2;
  v9 = a1 + v2 - 176;
  if (v2 == 176)
  {
    while (v8 < a2)
    {
      v10 = a2 - 176;
      v11 = *(a2 - 104);
      a2 -= 176;
      if (v11 < *(&v25 + 1))
      {
        goto LABEL_10;
      }
    }

    v10 = a2;
  }

  else
  {
    do
    {
      v10 = a2 - 176;
      v12 = *(a2 - 104);
      a2 -= 176;
    }

    while (v12 >= *(&v25 + 1));
  }

LABEL_10:
  if (v8 < v10)
  {
    v15 = v8;
    v16 = v10;
    do
    {
      v17 = a1;
      sub_298BDFD3C(v15, v16);
      do
      {
        v18 = *(v15 + 248);
        v15 += 176;
      }

      while (v18 < *(&v25 + 1));
      do
      {
        v19 = *(v16 - 104);
        v16 -= 176;
      }

      while (v19 >= *(&v25 + 1));
      a1 = v17;
    }

    while (v15 < v16);
    v9 = v15 - 176;
  }

  if (v9 != a1)
  {
    sub_298BDFE18(a1, v9);
  }

  sub_298BDFE18(v9, &v20);
  sub_298BD76EC(&v20);
  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

BOOL sub_298BDFAD8(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_298BDE940(a1, a1 + 176, a2 - 176);
        goto LABEL_10;
      case 4:
        sub_298BDE9F8(a1, a1 + 176, a1 + 352, a2 - 176);
        goto LABEL_10;
      case 5:
        sub_298BDEAA0(a1, a1 + 176, a1 + 352, a1 + 528, a2 - 176);
        goto LABEL_10;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_10;
    }

    if (v4 == 2)
    {
      if (*(a2 - 104) < *(a1 + 72))
      {
        sub_298BDFD3C(a1, a2 - 176);
      }

      goto LABEL_10;
    }
  }

  v5 = a1 + 352;
  sub_298BDE940(a1, a1 + 176, a1 + 352);
  v6 = a1 + 528;
  if (a1 + 528 != a2)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(v6 + 72) < *(v5 + 72))
      {
        v18 = *v6;
        v19 = *(v6 + 8);
        v20 = *(v6 + 24);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
        v11 = *(v6 + 80);
        v23 = *(v6 + 64);
        v24 = v11;
        v25 = *(v6 + 96);
        v12 = *(v6 + 32);
        v22 = *(v6 + 48);
        v21 = v12;
        v27 = *(v6 + 120);
        v26 = *(v6 + 104);
        *(v6 + 112) = 0;
        *(v6 + 120) = 0;
        *(v6 + 104) = 0;
        v13 = *(v6 + 128);
        v29 = *(v6 + 144);
        v28 = v13;
        v14 = *(v6 + 160);
        *(v6 + 160) = 0;
        *(v6 + 168) = 0;
        v15 = v9;
        v30 = v14;
        while (1)
        {
          sub_298BDFE18(a1 + v15 + 528, a1 + v15 + 352);
          if (v15 == -352)
          {
            break;
          }

          v16 = *(a1 + v15 + 248);
          v15 -= 176;
          if (*(&v23 + 1) >= v16)
          {
            v17 = a1 + v15 + 528;
            goto LABEL_22;
          }
        }

        v17 = a1;
LABEL_22:
        sub_298BDFE18(v17, &v18);
        if (++v10 == 8)
        {
          sub_298BD76EC(&v18);
          result = v6 + 176 == a2;
          goto LABEL_11;
        }

        sub_298BD76EC(&v18);
      }

      v5 = v6;
      v9 += 176;
      result = 1;
      v6 += 176;
      if (v6 == a2)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_10:
  result = 1;
LABEL_11:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BDFD3C(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = *(a1 + 80);
  v14 = *(a1 + 64);
  v15 = v3;
  v16 = *(a1 + 96);
  v4 = *(a1 + 32);
  v13 = *(a1 + 48);
  v12 = v4;
  v18 = *(a1 + 120);
  v17 = *(a1 + 104);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v5 = *(a1 + 128);
  v20 = *(a1 + 144);
  v19 = v5;
  v6 = *(a1 + 160);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v21 = v6;
  sub_298BDFE18(a1, a2);
  sub_298BDFE18(a2, &v9);
  result = sub_298BD76EC(&v9);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BDFE18(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  v6 = *(a2 + 96);
  v8 = *(a2 + 64);
  v7 = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v8;
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  v11 = *(a2 + 160);
  *(a2 + 160) = 0;
  v12 = *(a1 + 160);
  *(a1 + 160) = v11;
  if (v12)
  {
    sub_298AEB5EC(a1 + 160, v12);
  }

  v13 = *(a2 + 168);
  *(a2 + 168) = 0;
  v14 = *(a1 + 168);
  *(a1 + 168) = v13;
  if (v14)
  {
    MEMORY[0x29C2945C0](v14, 0x1000C8077774924);
  }

  return a1;
}

void sub_298BDFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  v3 = a2 - 2;
  if (a2 < 2)
  {
    goto LABEL_24;
  }

  v5 = v3 >> 1;
  if ((v3 >> 1) < 0x2E8BA2E8BA2E8BA3 * ((a3 - a1) >> 4))
  {
    goto LABEL_24;
  }

  v7 = (0x5D1745D1745D1746 * ((a3 - a1) >> 4)) | 1;
  v8 = a1 + 176 * v7;
  if (0x5D1745D1745D1746 * ((a3 - a1) >> 4) + 2 < a2)
  {
    v9 = *(v8 + 72) >= *(v8 + 248);
    v10 = 176;
    if (*(v8 + 72) >= *(v8 + 248))
    {
      v10 = 0;
    }

    v8 += v10;
    if (!v9)
    {
      v7 = 0x5D1745D1745D1746 * ((a3 - a1) >> 4) + 2;
    }
  }

  if (*(v8 + 72) < *(a3 + 72))
  {
    goto LABEL_24;
  }

  v24 = *a3;
  *v25 = *(a3 + 8);
  v26 = *(a3 + 24);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  v11 = *(a3 + 80);
  v29 = *(a3 + 64);
  v30 = v11;
  v31 = *(a3 + 96);
  v12 = *(a3 + 32);
  v28 = *(a3 + 48);
  v27 = v12;
  v33 = *(a3 + 120);
  *__p = *(a3 + 104);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  *(a3 + 104) = 0;
  v13 = *(a3 + 128);
  v35 = *(a3 + 144);
  v34 = v13;
  v14 = *(a3 + 160);
  *(a3 + 160) = 0;
  *(a3 + 168) = 0;
  v36 = v14;
  do
  {
    v15 = v8;
    sub_298BDFE18(a3, v8);
    if (v5 < v7)
    {
      break;
    }

    v16 = (2 * v7) | 1;
    v8 = a1 + 176 * v16;
    if (2 * v7 + 2 < a2)
    {
      v17 = *(v8 + 72);
      v18 = *(v8 + 248);
      v19 = v17 >= v18;
      v20 = v17 >= v18 ? 0 : 176;
      v8 += v20;
      if (!v19)
      {
        v16 = 2 * v7 + 2;
      }
    }

    a3 = v15;
    v7 = v16;
  }

  while (*(v8 + 72) >= *(&v29 + 1));
  sub_298BDFE18(v15, &v24);
  if (*(&v36 + 1))
  {
    MEMORY[0x29C2945C0](*(&v36 + 1), 0x1000C8077774924);
  }

  v21 = v36;
  if (!v36)
  {
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    operator delete(__p[0]);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  sub_298AE9B00(v36, *(v36 + 8));
  MEMORY[0x29C2945F0](v21, 0x1020C4062D53EE8);
  if (SHIBYTE(v33) < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
LABEL_24:
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_27:
  operator delete(v25[0]);
  v23 = *MEMORY[0x29EDCA608];
}

void sub_298BE017C(unsigned int *a1)
{
  v2 = a1[2];
  sub_298AEB390(a1);
  if (v2)
  {
    v3 = 1 << (33 - __clz(v2 - 1));
    if (v3 <= 64)
    {
      v4 = 64;
    }

    else
    {
      v4 = v3;
    }

    if (v4 == a1[4])
    {
      *(a1 + 1) = 0;
      v5 = *a1;
      v6 = (v4 - 1) & 0x7FFFFFFFFFFFFFFLL;
      if (v6)
      {
        v7 = v6 + 1;
        v8 = (v6 + 1) & 0xFFFFFFFFFFFFFFELL;
        v9 = &v5[4 * v8];
        v10 = v5 + 4;
        v11 = v8;
        do
        {
          *(v10 - 4) = -4096;
          *v10 = -4096;
          v10 += 8;
          v11 -= 2;
        }

        while (v11);
        if (v7 == v8)
        {
          return;
        }
      }

      else
      {
        v9 = *a1;
      }

      v12 = &v5[4 * v4];
      do
      {
        *v9 = -4096;
        v9 += 4;
      }

      while (v9 != v12);
      return;
    }
  }

  else
  {
    if (!a1[4])
    {
      *(a1 + 1) = 0;
      return;
    }

    LODWORD(v4) = 0;
  }

  MEMORY[0x29C2945E0](*a1, 8);

  sub_298BE0284(a1, v4);
}

char *sub_298BE0284(char *result, int a2)
{
  if (a2)
  {
    v2 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    LODWORD(v3) = (((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8)) + 1;
    *(result + 4) = v3;
    v4 = result;
    result = operator new(32 * v3, 8uLL);
    *v4 = result;
    *(v4 + 1) = 0;
    v5 = *(v4 + 4);
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0x7FFFFFFFFFFFFFFLL;
      v8 = v7 & 0x7FFFFFFFFFFFFFFLL;
      v9 = (v7 & 0x7FFFFFFFFFFFFFFLL) - (v7 & 1) + 2;
      v10 = vdupq_n_s64(v8);
      v11 = result + 32;
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v6), xmmword_298D1A120)));
        if (v12.i8[0])
        {
          *(v11 - 4) = -4096;
        }

        if (v12.i8[4])
        {
          *v11 = -4096;
        }

        v6 += 2;
        v11 += 8;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    *(result + 4) = 0;
  }

  return result;
}

void *sub_298BE0370(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v10 = 0;
LABEL_9:
    v5 = sub_298BE04B0(a1, a2, v10);
    v12 = *a2;
    v5[2] = 0;
    v5[3] = 0;
    *v5 = v12;
    v5[1] = 0;
    return v5;
  }

  v3 = v2 - 1;
  v4 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v2 - 1);
  v5 = (*a1 + 32 * v4);
  v6 = *v5;
  if (*a2 != *v5)
  {
    v8 = 0;
    v9 = 1;
    while (v6 != -4096)
    {
      if (v8)
      {
        v13 = 0;
      }

      else
      {
        v13 = v6 == -8192;
      }

      if (v13)
      {
        v8 = v5;
      }

      v14 = v4 + v9++;
      v4 = v14 & v3;
      v5 = (*a1 + 32 * v4);
      v6 = *v5;
      if (*a2 == *v5)
      {
        return v5;
      }
    }

    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_298BE042C(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v5 = (result + 32 * v4);
    v6 = *v5;
    if (*v5 == a3)
    {
LABEL_3:
      *a4 = v5;
    }

    else
    {
      v7 = 0;
      v8 = 1;
      while (v6 != -4096)
      {
        if (v7)
        {
          v9 = 0;
        }

        else
        {
          v9 = v6 == -8192;
        }

        if (v9)
        {
          v7 = v5;
        }

        v10 = v4 + v8++;
        v4 = v10 & (a2 - 1);
        v5 = (result + 32 * v4);
        v6 = *v5;
        if (*v5 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v7)
      {
        v5 = v7;
      }

      *a4 = v5;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *sub_298BE04B0(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 12) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298BE0570(a1, v5);
  sub_298BE042C(*v8, *(v8 + 16), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v4 + 1;
  if (*a3 != -4096)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *sub_298BE0570(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(32 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0xFFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -4096;
        *v13 = -4096;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0xFFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -4096;
          v10 += 4;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v23 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v24 = *(a1 + 4) - 1;
          v25 = v24 & ((v23 >> 4) ^ (v23 >> 9));
          v22 = (*a1 + 32 * v25);
          v26 = *v22;
          if (v23 != *v22)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -4096)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -8192;
              }

              if (v29)
              {
                v27 = v22;
              }

              v30 = v25 + v28++;
              v25 = v30 & v24;
              v22 = (*a1 + 32 * v25);
              v26 = *v22;
              if (v23 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v27)
            {
              v22 = v27;
            }
          }

LABEL_24:
          *v22 = v23;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          *(v22 + 1) = *(v16 + 1);
          v22[3] = v16[3];
          v16[1] = 0;
          v16[2] = 0;
          v16[3] = 0;
          ++*(a1 + 2);
        }

        v16 += 4;
      }

      while (v16 != &v4[4 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v17 = *(a1 + 4);
  if (v17)
  {
    if (((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0x7FFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0xFFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -4096;
      *v19 = -4096;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -4096;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void *sub_298BE0790(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8) - *a1;
  v4 = (v3 >> 3) + 1;
  if (v4 >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - v2;
  if (v6 >> 2 > v4)
  {
    v4 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (8 * (v3 >> 3));
  *v8 = *a2;
  v9 = v8 + 1;
  memcpy(0, v2, v3);
  *a1 = 0;
  *(a1 + 8) = v9;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v9;
}

void sub_298BE0880(__int128 *a1, char *a2)
{
  v2 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  sub_298BE08B8(a1, a2, v3, 1);
}

void sub_298BE08B8(__int128 *a1, char *a2, uint64_t a3, char a4)
{
  v7 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v8 = a1;
LABEL_3:
  v9 = 1 - a3;
  while (1)
  {
    a1 = v8;
    v10 = v9;
    v11 = a2 - v8;
    v12 = ((a2 - v8) >> 3) * v7;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v24 = *(a2 - 7);
        v23 = (a2 - 56);
        if (v24 < *v8)
        {

          sub_298BE2448(v8, v23);
        }

        return;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_298BE0FE8(v8, (v8 + 56), v8 + 7, (a2 - 56));
      return;
    }

    if (v12 == 5)
    {

      sub_298BE1250(v8, v8 + 56, (v8 + 7), v8 + 168, (a2 - 56));
      return;
    }

LABEL_11:
    if (v11 <= 1343)
    {
      if (a4)
      {

        sub_298BE1564(v8, a2);
      }

      else
      {

        sub_298BE1704(v8, a2);
      }

      return;
    }

    if (v10 == 1)
    {

      sub_298BE1860(v8, a2, a2);
      return;
    }

    v13 = v12 >> 1;
    v14 = (v8 + 56 * (v12 >> 1));
    if (v11 < 0x1C01)
    {
      sub_298BE0C6C(v14, v8, a2 - 7);
    }

    else
    {
      sub_298BE0C6C(v8, v14, a2 - 7);
      v15 = v8 + 56;
      v16 = v7;
      v17 = 56 * v13;
      v18 = a1 + 7 * v13 - 7;
      sub_298BE0C6C((a1 + 56), v18, a2 - 14);
      sub_298BE0C6C(a1 + 7, &v15[v17], a2 - 21);
      v19 = &v15[v17];
      v7 = v16;
      sub_298BE0C6C(v18, v14, v19);
      sub_298BE2448(a1, v14);
    }

    if ((a4 & 1) == 0 && *(a1 - 7) >= *a1)
    {
      v8 = sub_298BE1CC8(a1, a2);
      goto LABEL_23;
    }

    v20 = sub_298BE1EF0(a1, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = sub_298BE212C(a1, v20);
    v8 = (v20 + 56);
    if (sub_298BE212C(v20 + 56, a2))
    {
      a3 = -v10;
      a2 = v20;
      if (v22)
      {
        return;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v22)
    {
LABEL_22:
      sub_298BE08B8(a1, v20, -v10, a4 & 1);
      v8 = (v20 + 56);
LABEL_23:
      a4 = 0;
      a3 = -v10;
      goto LABEL_3;
    }
  }

  sub_298BE0C6C(v8, v8 + 7, a2 - 7);
}

void sub_298BE0C6C(__int128 *a1, uint64_t *a2, uint64_t *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = *a3;
  if (*a2 >= *a1)
  {
    if (v4 < v3)
    {
      v10 = *a2;
      v11 = a2 + 2;
      v12 = a2[2];
      v13 = a2 + 3;
      *v37 = a2[3];
      *&v37[7] = *(a2 + 31);
      v14 = *(a2 + 39);
      a2[2] = 0;
      a2[4] = 0;
      a2[3] = 0;
      v33 = *(a2 + 5);
      *a2 = *a3;
      v15 = a3[4];
      *(a2 + 1) = *(a3 + 1);
      a2[4] = v15;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 5) = *(a3 + 5);
      *a3 = v10;
      if (*(a3 + 39) < 0)
      {
        v16 = a1;
        v17 = a3;
        v18 = a2;
        operator delete(a3[2]);
        a1 = v16;
        a2 = v18;
        a3 = v17;
      }

      a3[2] = v12;
      a3[3] = *v37;
      *(a3 + 31) = *&v37[7];
      *(a3 + 39) = v14;
      *(a3 + 5) = v33;
      if (*a2 < *a1)
      {
        v19 = *a1;
        v20 = *(a1 + 2);
        *v38 = *(a1 + 3);
        *&v38[7] = *(a1 + 31);
        v21 = *(a1 + 39);
        *(a1 + 3) = 0;
        *(a1 + 4) = 0;
        *(a1 + 2) = 0;
        v34 = *(a1 + 40);
        *a1 = *a2;
        v22 = v11[2];
        a1[1] = *v11;
        *(a1 + 4) = v22;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 5);
        *a2 = v19;
        if (*(a2 + 39) < 0)
        {
          v23 = *v11;
          v24 = a2;
          operator delete(v23);
          a2 = v24;
        }

        a2[2] = v20;
        *v13 = *v38;
        *(v13 + 7) = *&v38[7];
        *(a2 + 39) = v21;
        *(a2 + 5) = v34;
      }
    }
  }

  else
  {
    if (v4 < v3)
    {
      v5 = *a1;
      v6 = *(a1 + 2);
      *v36 = *(a1 + 3);
      *&v36[7] = *(a1 + 31);
      v7 = *(a1 + 39);
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
      *(a1 + 2) = 0;
      v32 = *(a1 + 40);
      *a1 = *a3;
      v8 = a3[4];
      a1[1] = *(a3 + 1);
      *(a1 + 4) = v8;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a1 + 40) = *(a3 + 5);
      *a3 = v5;
      if ((*(a3 + 39) & 0x80000000) == 0)
      {
LABEL_5:
        a3[2] = v6;
        a3[3] = *v36;
        *(a3 + 31) = *&v36[7];
        *(a3 + 39) = v7;
        *(a3 + 5) = v32;
        goto LABEL_18;
      }

LABEL_4:
      v9 = a3;
      operator delete(a3[2]);
      a3 = v9;
      goto LABEL_5;
    }

    v25 = *a1;
    v6 = *(a1 + 2);
    *v39 = *(a1 + 3);
    *&v39[7] = *(a1 + 31);
    v7 = *(a1 + 39);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 2) = 0;
    v35 = *(a1 + 40);
    *a1 = *a2;
    v26 = a2[4];
    a1[1] = *(a2 + 1);
    *(a1 + 4) = v26;
    *(a2 + 39) = 0;
    *(a2 + 16) = 0;
    *(a1 + 40) = *(a2 + 5);
    *a2 = v25;
    if (*(a2 + 39) < 0)
    {
      v27 = a3;
      v28 = a2;
      operator delete(a2[2]);
      a2 = v28;
      a3 = v27;
    }

    a2[2] = v6;
    a2[3] = *v39;
    *(a2 + 31) = *&v39[7];
    *(a2 + 39) = v7;
    *(a2 + 5) = v35;
    if (*a3 < *a2)
    {
      v29 = *a2;
      *v36 = a2[3];
      *&v36[7] = *(a2 + 31);
      a2[3] = 0;
      a2[4] = 0;
      a2[2] = 0;
      v32 = *(a2 + 5);
      *a2 = *a3;
      v30 = a3[4];
      *(a2 + 1) = *(a3 + 1);
      a2[4] = v30;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 5) = *(a3 + 5);
      *a3 = v29;
      if ((*(a3 + 39) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_18:
  v31 = *MEMORY[0x29EDCA608];
}

void sub_298BE0FE8(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v29 = *MEMORY[0x29EDCA608];
  sub_298BE0C6C(a1, a2, a3);
  if (*a4 < *a3)
  {
    v8 = *a3;
    v9 = (a3 + 1);
    v10 = *(a3 + 2);
    *v26 = *(a3 + 3);
    *&v26[7] = *(a3 + 31);
    v11 = *(a3 + 39);
    *(a3 + 2) = 0;
    *(a3 + 4) = 0;
    *(a3 + 3) = 0;
    v23 = *(a3 + 40);
    *a3 = *a4;
    v12 = *(a4 + 4);
    a3[1] = a4[1];
    *(a3 + 4) = v12;
    *(a4 + 39) = 0;
    *(a4 + 16) = 0;
    *(a3 + 40) = *(a4 + 40);
    *a4 = v8;
    if (*(a4 + 39) < 0)
    {
      operator delete(*(a4 + 2));
    }

    *(a4 + 2) = v10;
    *(a4 + 3) = *v26;
    *(a4 + 31) = *&v26[7];
    *(a4 + 39) = v11;
    *(a4 + 40) = v23;
    if (*a3 < *a2)
    {
      v13 = *a2;
      v14 = (a2 + 1);
      v15 = *(a2 + 2);
      *v27 = *(a2 + 3);
      *&v27[7] = *(a2 + 31);
      v16 = *(a2 + 39);
      *(a2 + 2) = 0;
      *(a2 + 4) = 0;
      *(a2 + 3) = 0;
      v24 = *(a2 + 40);
      *a2 = *a3;
      v17 = *(a3 + 4);
      a2[1] = *v9;
      *(a2 + 4) = v17;
      *(a3 + 39) = 0;
      *(a3 + 16) = 0;
      *(a2 + 40) = *(a3 + 40);
      *a3 = v13;
      if (*(a3 + 39) < 0)
      {
        operator delete(*v9);
      }

      *(a3 + 2) = v15;
      *(a3 + 3) = *v27;
      *(a3 + 31) = *&v27[7];
      *(a3 + 39) = v16;
      *(a3 + 40) = v24;
      if (*a2 < *a1)
      {
        v18 = *a1;
        v19 = *(a1 + 16);
        *v28 = *(a1 + 24);
        *&v28[7] = *(a1 + 31);
        v20 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        v25 = *(a1 + 40);
        *a1 = *a2;
        v21 = *(a2 + 4);
        *(a1 + 16) = *v14;
        *(a1 + 32) = v21;
        *(a2 + 39) = 0;
        *(a2 + 16) = 0;
        *(a1 + 40) = *(a2 + 40);
        *a2 = v18;
        if (*(a2 + 39) < 0)
        {
          operator delete(*v14);
        }

        *(a2 + 2) = v19;
        *(a2 + 3) = *v28;
        *(a2 + 31) = *&v28[7];
        *(a2 + 39) = v20;
        *(a2 + 40) = v25;
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
}

void sub_298BE1250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = *MEMORY[0x29EDCA608];
  sub_298BE0FE8(a1, a2, a3, a4);
  if (*a5 < *a4)
  {
    v10 = *a4;
    v11 = (a4 + 16);
    v12 = *(a4 + 16);
    *v34 = *(a4 + 24);
    *&v34[7] = *(a4 + 31);
    v13 = *(a4 + 39);
    *(a4 + 16) = 0;
    *(a4 + 32) = 0;
    *(a4 + 24) = 0;
    v30 = *(a4 + 40);
    *a4 = *a5;
    v14 = *(a5 + 32);
    *(a4 + 16) = *(a5 + 16);
    *(a4 + 32) = v14;
    *(a5 + 39) = 0;
    *(a5 + 16) = 0;
    *(a4 + 40) = *(a5 + 40);
    *a5 = v10;
    if (*(a5 + 39) < 0)
    {
      operator delete(*(a5 + 16));
    }

    *(a5 + 16) = v12;
    *(a5 + 24) = *v34;
    *(a5 + 31) = *&v34[7];
    *(a5 + 39) = v13;
    *(a5 + 40) = v30;
    if (*a4 < *a3)
    {
      v15 = *a3;
      v16 = (a3 + 16);
      v17 = *(a3 + 16);
      *v35 = *(a3 + 24);
      *&v35[7] = *(a3 + 31);
      v18 = *(a3 + 39);
      *(a3 + 16) = 0;
      *(a3 + 32) = 0;
      *(a3 + 24) = 0;
      v31 = *(a3 + 40);
      *a3 = *a4;
      v19 = *(a4 + 32);
      *(a3 + 16) = *v11;
      *(a3 + 32) = v19;
      *(a4 + 39) = 0;
      *(a4 + 16) = 0;
      *(a3 + 40) = *(a4 + 40);
      *a4 = v15;
      if (*(a4 + 39) < 0)
      {
        operator delete(*v11);
      }

      *(a4 + 16) = v17;
      *(a4 + 24) = *v35;
      *(a4 + 31) = *&v35[7];
      *(a4 + 39) = v18;
      *(a4 + 40) = v31;
      if (*a3 < *a2)
      {
        v20 = *a2;
        v21 = (a2 + 16);
        v22 = *(a2 + 16);
        *v36 = *(a2 + 24);
        *&v36[7] = *(a2 + 31);
        v23 = *(a2 + 39);
        *(a2 + 16) = 0;
        *(a2 + 32) = 0;
        *(a2 + 24) = 0;
        v32 = *(a2 + 40);
        *a2 = *a3;
        v24 = *(a3 + 32);
        *(a2 + 16) = *v16;
        *(a2 + 32) = v24;
        *(a3 + 39) = 0;
        *(a3 + 16) = 0;
        *(a2 + 40) = *(a3 + 40);
        *a3 = v20;
        if (*(a3 + 39) < 0)
        {
          operator delete(*v16);
        }

        *(a3 + 16) = v22;
        *(a3 + 24) = *v36;
        *(a3 + 31) = *&v36[7];
        *(a3 + 39) = v23;
        *(a3 + 40) = v32;
        if (*a2 < *a1)
        {
          v25 = *a1;
          v26 = *(a1 + 16);
          *v37 = *(a1 + 24);
          *&v37[7] = *(a1 + 31);
          v27 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v33 = *(a1 + 40);
          *a1 = *a2;
          v28 = *(a2 + 32);
          *(a1 + 16) = *v21;
          *(a1 + 32) = v28;
          *(a2 + 39) = 0;
          *(a2 + 16) = 0;
          *(a1 + 40) = *(a2 + 40);
          *a2 = v25;
          if (*(a2 + 39) < 0)
          {
            operator delete(*v21);
          }

          *(a2 + 16) = v26;
          *(a2 + 24) = *v37;
          *(a2 + 31) = *&v37[7];
          *(a2 + 39) = v27;
          *(a2 + 40) = v33;
        }
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
}

void sub_298BE1564(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v4 = a1 + 56;
    if (a1 + 56 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v4;
        v8 = *(v6 + 56);
        if (v8 < *v6)
        {
          v10 = *(v6 + 64);
          v9 = *(v6 + 72);
          *v20 = *(v6 + 80);
          *&v20[7] = *(v6 + 87);
          v11 = *(v6 + 95);
          *(v6 + 80) = 0;
          *(v6 + 88) = 0;
          *(v6 + 72) = 0;
          v12 = *(v6 + 96);
          v13 = v5;
          v19 = v12;
          while (1)
          {
            v14 = v13;
            v15 = a1 + v13;
            *(a1 + v13 + 56) = *(a1 + v13);
            if (*(a1 + v13 + 95) < 0)
            {
              operator delete(*(v15 + 72));
            }

            *(v15 + 72) = *(v15 + 16);
            *(v15 + 88) = *(v15 + 32);
            *(v15 + 39) = 0;
            *(v15 + 16) = 0;
            *(v15 + 96) = *(v15 + 40);
            if (!v14)
            {
              break;
            }

            v13 = v14 - 56;
            if (v8 >= *(a1 + v14 - 56))
            {
              v16 = a1 + v14;
              *v16 = v8;
              *(v16 + 8) = v10;
              v17 = a1 + v14;
              if ((*(a1 + v13 + 95) & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_15;
            }
          }

          v16 = a1;
          *a1 = v8;
          *(a1 + 8) = v10;
          v17 = a1;
          if ((*(a1 + 39) & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_15:
          operator delete(*(v17 + 16));
LABEL_4:
          *(v17 + 16) = v9;
          *(v16 + 24) = *v20;
          *(v16 + 31) = *&v20[7];
          *(v16 + 39) = v11;
          *(v17 + 40) = v19;
        }

        v4 = v7 + 56;
        v5 += 56;
        v6 = v7;
      }

      while (v7 + 56 != a2);
    }
  }

  v18 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298BE1704(uint64_t result, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (result != a2)
  {
    v3 = result + 56;
    if (result + 56 != a2)
    {
      v4 = (result - 56);
      do
      {
        v5 = v3;
        v6 = *(result + 56);
        if (v6 < *result)
        {
          v8 = *(result + 64);
          v7 = *(result + 72);
          *v14 = *(result + 80);
          *&v14[7] = *(result + 87);
          v9 = *(result + 95);
          *(result + 80) = 0;
          *(result + 88) = 0;
          *(result + 72) = 0;
          v10 = v4;
          v13 = *(result + 96);
          do
          {
            *(v10 + 7) = *(v10 + 7);
            if (*(v10 + 151) < 0)
            {
              operator delete(v10[16]);
            }

            *(v10 + 8) = *(v10 + 9);
            v10[18] = v10[11];
            *(v10 + 95) = 0;
            *(v10 + 72) = 0;
            *(v10 + 19) = *(v10 + 6);
            v11 = *v10;
            v10 -= 7;
          }

          while (v6 < v11);
          v10[14] = v6;
          v10[15] = v8;
          if (*(v10 + 151) < 0)
          {
            operator delete(v10[16]);
          }

          v10[16] = v7;
          v10[17] = *v14;
          *(v10 + 143) = *&v14[7];
          *(v10 + 151) = v9;
          *(v10 + 19) = v13;
        }

        v3 = v5 + 56;
        v4 += 7;
        result = v5;
      }

      while (v5 + 56 != a2);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BE1860(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  if (a1 != a2)
  {
    v4 = a2;
    v6 = a2 - a1;
    v7 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 57)
    {
      v8 = (v7 - 2) >> 1;
      v9 = v8 + 1;
      v10 = (a1 + 56 * v8);
      do
      {
        sub_298BE2528(a1, v7, v10);
        v10 -= 7;
        --v9;
      }

      while (v9);
    }

    if (v4 != a3)
    {
      v11 = v4;
      do
      {
        if (*v11 < *a1)
        {
          v12 = *v11;
          v13 = *(v11 + 2);
          *v42 = *(v11 + 3);
          *&v42[7] = *(v11 + 31);
          v14 = *(v11 + 39);
          *(v11 + 3) = 0;
          *(v11 + 4) = 0;
          *(v11 + 2) = 0;
          v39 = *(v11 + 40);
          *v11 = *a1;
          v15 = *(a1 + 32);
          v11[1] = *(a1 + 16);
          *(v11 + 4) = v15;
          *(a1 + 39) = 0;
          *(a1 + 16) = 0;
          *(v11 + 40) = *(a1 + 40);
          *a1 = v12;
          if (*(a1 + 39) < 0)
          {
            operator delete(*(a1 + 16));
          }

          *(a1 + 16) = v13;
          *(a1 + 24) = *v42;
          *(a1 + 31) = *&v42[7];
          *(a1 + 39) = v14;
          *(a1 + 40) = v39;
          sub_298BE2528(a1, v7, a1);
        }

        v11 = (v11 + 56);
      }

      while (v11 != a3);
    }

    if (v6 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      do
      {
        v18 = 0;
        v19 = v4;
        v40 = *a1;
        v20 = *(a1 + 16);
        *v44 = *(a1 + 24);
        *&v44[7] = *(a1 + 31);
        v21 = *(a1 + 39);
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 16) = 0;
        v22 = a1;
        v43 = *(a1 + 40);
        do
        {
          v24 = v22 + 56 * v18;
          v25 = (v24 + 56);
          if (2 * v18 + 2 >= v16)
          {
            v18 = (2 * v18) | 1;
            *v22 = *v25;
            if ((*(v22 + 39) & 0x80000000) == 0)
            {
              goto LABEL_19;
            }

LABEL_27:
            operator delete(*(v22 + 16));
            goto LABEL_19;
          }

          v27 = *(v24 + 112);
          v26 = (v24 + 112);
          if (*(v26 - 7) >= v27)
          {
            v18 = (2 * v18) | 1;
          }

          else
          {
            v25 = v26;
            v18 = 2 * v18 + 2;
          }

          *v22 = *v25;
          if (*(v22 + 39) < 0)
          {
            goto LABEL_27;
          }

LABEL_19:
          v23 = v25[1];
          *(v22 + 32) = *(v25 + 4);
          *(v22 + 16) = v23;
          *(v25 + 39) = 0;
          *(v25 + 16) = 0;
          *(v22 + 40) = *(v25 + 40);
          v22 = v25;
        }

        while (v18 <= ((v16 - 2) >> 1));
        v4 = (v4 - 56);
        if (v25 == (v19 - 56))
        {
          *v25 = v40;
          if (*(v25 + 39) < 0)
          {
            operator delete(*(v25 + 2));
          }

          *(v25 + 2) = v20;
          *(v25 + 3) = *v44;
          *(v25 + 31) = *&v44[7];
          *(v25 + 39) = v21;
          *(v25 + 40) = v43;
        }

        else
        {
          *v25 = *v4;
          if (*(v25 + 39) < 0)
          {
            operator delete(*(v25 + 2));
          }

          v28 = *(v19 - 40);
          *(v25 + 4) = *(v19 - 3);
          v25[1] = v28;
          *(v19 - 17) = 0;
          *(v19 - 40) = 0;
          *(v25 + 40) = *(v19 - 1);
          *v4 = v40;
          if (*(v19 - 17) < 0)
          {
            operator delete(*(v19 - 5));
          }

          *(v19 - 5) = v20;
          *(v19 - 4) = *v44;
          *(v19 - 25) = *&v44[7];
          *(v19 - 17) = v21;
          *(v19 - 1) = v43;
          v29 = v25 - a1 + 56;
          if (v29 >= 57)
          {
            v30 = (0x6DB6DB6DB6DB6DB7 * (v29 >> 3) - 2) >> 1;
            v31 = (a1 + 56 * v30);
            v32 = *v25;
            if (*v31 < *v25)
            {
              v33 = *(v25 + 1);
              v38 = *(v25 + 2);
              *v45 = *(v25 + 3);
              *&v45[7] = *(v25 + 31);
              v34 = *(v25 + 39);
              *(v25 + 3) = 0;
              *(v25 + 4) = 0;
              *(v25 + 2) = 0;
              v41 = *(v25 + 40);
              do
              {
                v35 = v31;
                *v25 = *v31;
                if (*(v25 + 39) < 0)
                {
                  operator delete(*(v25 + 2));
                }

                v36 = v35[1];
                *(v25 + 4) = *(v35 + 4);
                v25[1] = v36;
                *(v35 + 39) = 0;
                *(v35 + 16) = 0;
                *(v25 + 40) = *(v35 + 40);
                if (!v30)
                {
                  break;
                }

                v30 = (v30 - 1) >> 1;
                v31 = (a1 + 56 * v30);
                v25 = v35;
              }

              while (*v31 < v32);
              *v35 = v32;
              *(v35 + 1) = v33;
              if (*(v35 + 39) < 0)
              {
                operator delete(*(v35 + 2));
              }

              *(v35 + 2) = v38;
              *(v35 + 3) = *v45;
              *(v35 + 31) = *&v45[7];
              *(v35 + 39) = v34;
              *(v35 + 40) = v41;
            }
          }
        }
      }

      while (v16-- > 2);
    }
  }

  v37 = *MEMORY[0x29EDCA608];
}

__int128 *sub_298BE1CC8(__int128 *a1, unint64_t a2)
{
  v2 = a2;
  v27 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  v6 = a1 + 1;
  v5 = *(a1 + 2);
  *v25 = *(a1 + 3);
  *&v25[7] = *(a1 + 31);
  v7 = *(a1 + 39);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v22 = v4;
  v23 = *(a1 + 40);
  v8 = v4;
  if (v4 >= *(a2 - 56))
  {
    v11 = (a1 + 56);
    do
    {
      v9 = v11;
      if (v11 >= a2)
      {
        break;
      }

      v11 = (v11 + 56);
    }

    while (v4 >= *v9);
  }

  else
  {
    v9 = a1;
    do
    {
      v10 = *(v9 + 7);
      v9 = (v9 + 56);
    }

    while (v4 >= v10);
  }

  if (v9 < a2)
  {
    do
    {
      v12 = *(v2 - 56);
      v2 -= 56;
    }

    while (v4 < v12);
  }

  while (v9 < v2)
  {
    v13 = *v9;
    v14 = *(v9 + 2);
    *v26 = *(v9 + 3);
    *&v26[7] = *(v9 + 31);
    v15 = *(v9 + 39);
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 2) = 0;
    v24 = *(v9 + 40);
    *v9 = *v2;
    v16 = *(v2 + 32);
    v9[1] = *(v2 + 16);
    *(v9 + 4) = v16;
    *(v2 + 39) = 0;
    *(v2 + 16) = 0;
    *(v9 + 40) = *(v2 + 40);
    *v2 = v13;
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    *(v2 + 16) = v14;
    *(v2 + 24) = *v26;
    *(v2 + 31) = *&v26[7];
    *(v2 + 39) = v15;
    *(v2 + 40) = v24;
    do
    {
      v17 = *(v9 + 7);
      v9 = (v9 + 56);
    }

    while (v8 >= v17);
    do
    {
      v18 = *(v2 - 56);
      v2 -= 56;
    }

    while (v8 < v18);
  }

  if ((v9 - 56) != a1)
  {
    *a1 = *(v9 - 56);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v6);
    }

    v19 = *(v9 - 40);
    *(v6 + 2) = *(v9 - 3);
    *v6 = v19;
    *(v9 - 17) = 0;
    *(v9 - 40) = 0;
    *(a1 + 40) = *(v9 - 1);
  }

  *(v9 - 56) = v22;
  if (*(v9 - 17) < 0)
  {
    operator delete(*(v9 - 5));
  }

  *(v9 - 5) = v5;
  *(v9 - 25) = *&v25[7];
  *(v9 - 4) = *v25;
  *(v9 - 17) = v7;
  *(v9 - 1) = v23;
  v20 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t sub_298BE1EF0(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v30 = *MEMORY[0x29EDCA608];
  v5 = a1 + 1;
  v25 = *(a1 + 2);
  v6 = *a1;
  *v28 = *(a1 + 3);
  *&v28[7] = *(a1 + 31);
  v7 = *(a1 + 39);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v26 = *(a1 + 40);
  v24 = v6;
  v8 = v6;
  do
  {
    v9 = *(a1 + v4 + 56);
    v4 += 56;
  }

  while (v9 < v6);
  v10 = a1 + v4;
  if (v4 == 56)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v12 = *(a2 - 56);
      a2 -= 56;
    }

    while (v12 >= v6);
  }

  else
  {
    do
    {
      v11 = *(a2 - 56);
      a2 -= 56;
    }

    while (v11 >= v6);
  }

  v13 = (a1 + v4);
  if (v10 < a2)
  {
    v14 = a2;
    do
    {
      v15 = *v13;
      v16 = *(v13 + 2);
      *v29 = *(v13 + 3);
      *&v29[7] = *(v13 + 31);
      v17 = *(v13 + 39);
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      *(v13 + 2) = 0;
      v27 = *(v13 + 40);
      *v13 = *v14;
      v18 = *(v14 + 32);
      v13[1] = *(v14 + 16);
      *(v13 + 4) = v18;
      *(v14 + 39) = 0;
      *(v14 + 16) = 0;
      *(v13 + 40) = *(v14 + 40);
      *v14 = v15;
      if (*(v14 + 39) < 0)
      {
        operator delete(*(v14 + 16));
      }

      *(v14 + 16) = v16;
      *(v14 + 24) = *v29;
      *(v14 + 31) = *&v29[7];
      *(v14 + 39) = v17;
      *(v14 + 40) = v27;
      do
      {
        v19 = *(v13 + 7);
        v13 = (v13 + 56);
      }

      while (v19 < v8);
      do
      {
        v20 = *(v14 - 56);
        v14 -= 56;
      }

      while (v20 >= v8);
    }

    while (v13 < v14);
  }

  if ((v13 - 56) != a1)
  {
    *a1 = *(v13 - 56);
    if (*(a1 + 39) < 0)
    {
      operator delete(*v5);
    }

    v21 = *(v13 - 40);
    *(v5 + 2) = *(v13 - 3);
    *v5 = v21;
    *(v13 - 17) = 0;
    *(v13 - 40) = 0;
    *(a1 + 40) = *(v13 - 1);
  }

  *(v13 - 56) = v24;
  if (*(v13 - 17) < 0)
  {
    operator delete(*(v13 - 5));
  }

  *(v13 - 5) = v25;
  *(v13 - 25) = *&v28[7];
  *(v13 - 4) = *v28;
  *(v13 - 17) = v7;
  *(v13 - 1) = v26;
  v22 = *MEMORY[0x29EDCA608];
  return v13 - 56;
}

BOOL sub_298BE212C(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = (a2 - 56);
        if (*(a2 - 56) < *a1)
        {
          v6 = *a1;
          v7 = *(a1 + 16);
          *v29 = *(a1 + 24);
          *&v29[7] = *(a1 + 31);
          v8 = *(a1 + 39);
          *(a1 + 24) = 0;
          *(a1 + 32) = 0;
          *(a1 + 16) = 0;
          v27 = *(a1 + 40);
          *a1 = *v5;
          v9 = *(a2 - 24);
          *(a1 + 16) = *(a2 - 40);
          *(a1 + 32) = v9;
          *(a2 - 17) = 0;
          *(a2 - 40) = 0;
          *(a1 + 40) = *(a2 - 16);
          *v5 = v6;
          if (*(a2 - 17) < 0)
          {
            operator delete(*(a2 - 40));
          }

          *(a2 - 40) = v7;
          *(a2 - 32) = *v29;
          *(a2 - 25) = *&v29[7];
          *(a2 - 17) = v8;
          *(a2 - 16) = v27;
        }

        goto LABEL_28;
      }

      goto LABEL_13;
    }

LABEL_28:
    result = 1;
    v23 = *MEMORY[0x29EDCA608];
    return result;
  }

  switch(v4)
  {
    case 3:
      sub_298BE0C6C(a1, (a1 + 56), (a2 - 56));
      goto LABEL_28;
    case 4:
      sub_298BE0FE8(a1, (a1 + 56), (a1 + 112), (a2 - 56));
      goto LABEL_28;
    case 5:
      sub_298BE1250(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
      goto LABEL_28;
  }

LABEL_13:
  v10 = (a1 + 112);
  sub_298BE0C6C(a1, (a1 + 56), (a1 + 112));
  v11 = a1 + 168;
  if (a1 + 168 == a2)
  {
    goto LABEL_28;
  }

  v12 = 0;
  v13 = 0;
  while (1)
  {
    v14 = *v11;
    if (*v11 < *v10)
    {
      v15 = *(v11 + 8);
      v25 = *(v11 + 16);
      *v28 = *(v11 + 24);
      *&v28[7] = *(v11 + 31);
      v16 = *(v11 + 39);
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      v17 = v12;
      v26 = *(v11 + 40);
      while (1)
      {
        v18 = v17;
        v19 = a1 + v17;
        *(a1 + v17 + 168) = *(a1 + v17 + 112);
        if (*(a1 + v17 + 207) < 0)
        {
          operator delete(*(v19 + 184));
        }

        *(v19 + 184) = *(v19 + 128);
        *(v19 + 200) = *(v19 + 144);
        *(v19 + 151) = 0;
        *(v19 + 128) = 0;
        *(v19 + 208) = *(v19 + 152);
        if (v18 == -112)
        {
          break;
        }

        v17 = v18 - 56;
        if (v14 >= *(a1 + v18 + 56))
        {
          v20 = a1 + v17 + 168;
          *v20 = v14;
          *(v20 + 8) = v15;
          v21 = a1 + v18;
          if ((*(a1 + v17 + 207) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }
      }

      v20 = a1;
      *a1 = v14;
      *(a1 + 8) = v15;
      v21 = a1 - 112;
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      operator delete(*(v21 + 128));
LABEL_15:
      *(v21 + 128) = v25;
      *(v20 + 24) = *v28;
      *(v20 + 31) = *&v28[7];
      *(v20 + 39) = v16;
      *(v21 + 152) = v26;
      if (++v13 == 8)
      {
        break;
      }
    }

    v10 = v11;
    v12 += 56;
    v11 += 56;
    if (v11 == a2)
    {
      goto LABEL_28;
    }
  }

  result = v11 + 56 == a2;
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 sub_298BE2448(__int128 *a1, __int128 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *a1;
  v4 = *(a1 + 2);
  *v10 = *(a1 + 3);
  *&v10[7] = *(a1 + 31);
  v5 = *(a1 + 39);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  v9 = *(a1 + 40);
  *a1 = *a2;
  v6 = *(a2 + 4);
  a1[1] = a2[1];
  *(a1 + 4) = v6;
  *(a2 + 39) = 0;
  *(a2 + 16) = 0;
  *(a1 + 40) = *(a2 + 40);
  *a2 = v3;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 2));
  }

  *(a2 + 2) = v4;
  *(a2 + 3) = *v10;
  *(a2 + 31) = *&v10[7];
  *(a2 + 39) = v5;
  result = v9;
  *(a2 + 40) = v9;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BE2528(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a2 - 2;
  if (a2 < 2)
  {
    goto LABEL_26;
  }

  v4 = a3;
  v6 = v3 >> 1;
  if ((v3 >> 1) < 0x6DB6DB6DB6DB6DB7 * ((a3 - a1) >> 3))
  {
    goto LABEL_26;
  }

  v8 = (0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3)) | 1;
  v9 = (a1 + 56 * v8);
  if ((0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3) + 2) >= a2)
  {
    v12 = *a3;
    if (*v9 < *a3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v10 = *v9;
    v11 = v9[7];
    if (*v9 <= v11)
    {
      v10 = v9[7];
    }

    if (*v9 < v11)
    {
      v9 += 7;
      v8 = 0xDB6DB6DB6DB6DB6ELL * ((a3 - a1) >> 3) + 2;
    }

    v12 = *a3;
    if (v10 < *a3)
    {
      goto LABEL_26;
    }
  }

  v13 = a3[1];
  v20 = a3[2];
  *v22 = a3[3];
  *&v22[7] = *(a3 + 31);
  v14 = *(a3 + 39);
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
  v21 = *(a3 + 5);
  while (1)
  {
    v17 = v9;
    *v4 = *v9;
    if (*(v4 + 39) < 0)
    {
      operator delete(v4[2]);
    }

    v18 = *(v17 + 1);
    v4[4] = v17[4];
    *(v4 + 1) = v18;
    *(v17 + 39) = 0;
    *(v17 + 16) = 0;
    *(v4 + 5) = *(v17 + 5);
    if (v6 < v8)
    {
      break;
    }

    v9 = (a1 + 56 * ((2 * v8) | 1));
    if (2 * v8 + 2 < a2)
    {
      v15 = *v9;
      v16 = v9[7];
      if (*v9 <= v16)
      {
        v15 = v9[7];
      }

      if (*v9 >= v16)
      {
        v8 = (2 * v8) | 1;
      }

      else
      {
        v9 += 7;
        v8 = 2 * v8 + 2;
      }

      v4 = v17;
      if (v15 < v12)
      {
        break;
      }
    }

    else
    {
      v8 = (2 * v8) | 1;
      v4 = v17;
      if (*v9 < v12)
      {
        break;
      }
    }
  }

  *v17 = v12;
  v17[1] = v13;
  if (*(v17 + 39) < 0)
  {
    operator delete(v17[2]);
  }

  v17[2] = v20;
  v17[3] = *v22;
  *(v17 + 31) = *&v22[7];
  *(v17 + 39) = v14;
  *(v17 + 5) = v21;
LABEL_26:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_298BE2734(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_298AEB438(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void *sub_298BE2790(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_15;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] <= 1uLL)
  {
    v7 = (*&v5 - 1) & v4;
    v8 = *(*a1 + 8 * v7);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  if (v4 >= *&v5)
  {
    v7 = v4 % *&v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_6:
  result = *v8;
  if (!*v8)
  {
    goto LABEL_15;
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = result[1];
      if (v11 == v4)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
      {
        goto LABEL_15;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v10 = result[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_15;
    }

LABEL_10:
    result = *result;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  if (result[2] != a2)
  {
    goto LABEL_10;
  }

  return result;
}

std::mutex **sub_298BE2C88(std::mutex **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    std::mutex::~mutex(v2);
    MEMORY[0x29C2945F0]();
    return v3;
  }

  return v1;
}

double sub_298BE2CDC(uint64_t a1, void *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_298ADDDA0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  sub_298BE2DB4(&v14, v7, v2, a1);
  *v16 = *a2;
  *&v16 = v16 + 8;
  v8 = *(a1 + 8) - *a1;
  v9 = &v15[-v8];
  memcpy(&v15[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  result = *&v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  if (v10)
  {
    v13 = result;
    operator delete(v10);
    return v13;
  }

  return result;
}

void *sub_298BE2DB4(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *result = 0;
  result[1] = 8 * a3;
  result[2] = 8 * a3;
  result[3] = 0;
  return result;
}

void sub_298BE2E2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v1 < 3uLL || (v3 = vcnt_s8(v1), v3.i16[0] = vaddlv_u8(v3), v3.u32[0] > 1uLL))
    {
      v6 = a1;
      prime = std::__next_prime(v2);
      a1 = v6;
    }

    else
    {
      v4 = 1 << -__clz(v2 - 1);
      if (v2 >= 2)
      {
        prime = v4;
      }

      else
      {
        prime = v2;
      }
    }

    if (prime < *&v1)
    {

      sub_298AE8270(a1, prime);
    }
  }
}

uint64_t sub_298BE2EF4(uint64_t a1)
{
  v1 = 152;
  if (*(a1 + 8))
  {
    v1 = 144;
  }

  return *(*(a1 + 16) + v1);
}

uint64_t sub_298BE2F30(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4 = *(v1 + 8);
  v2 = v1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    result = v2;
  }

  else
  {
    result = v3;
  }

  v6 = *(v2 + 8);
  return result;
}

int64_t sub_298BE2F54(int64_t a1, unsigned __int8 *a2)
{
  v2 = 126 - 2 * __clz(&a2[-a1] >> 3);
  if (a2 == a1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  return sub_298BE2F78(a1, a2, v3, 1);
}

int64_t sub_298BE2F78(int64_t result, unsigned __int8 *a2, uint64_t a3, int a4)
{
LABEL_1:
  v5 = 1 - a3;
  while (1)
  {
    v6 = v5;
    v7 = &a2[-result] >> 3;
    if (v7 <= 2)
    {
      if (v7 < 2)
      {
        return result;
      }

      if (v7 == 2)
      {
        v15 = result;
        result = sub_298BE4564(*(a2 - 1), *result);
        if (result)
        {
          v16 = *v15;
          *v15 = *(a2 - 1);
          *(a2 - 1) = v16;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v7 == 3)
    {
      break;
    }

    if (v7 == 4)
    {

      return sub_298BE3480(result, (result + 8), (result + 16), a2 - 1);
    }

    if (v7 == 5)
    {

      return sub_298BE3518(result, (result + 8), (result + 16), (result + 24), a2 - 1);
    }

LABEL_9:
    if (v7 <= 23)
    {
      if (a4)
      {

        return sub_298BE363C(result, a2);
      }

      else
      {

        return sub_298BE383C(result, a2);
      }
    }

    if (v6 == 1)
    {

      return sub_298BE39FC(result, a2, a2);
    }

    v18 = a4;
    v8 = v7 >> 1;
    v9 = (result + 8 * (v7 >> 1));
    v10 = result;
    if (v7 < 0x81)
    {
      sub_298BE32E4((result + 8 * (v7 >> 1)), result, a2 - 1);
    }

    else
    {
      sub_298BE32E4(result, (result + 8 * (v7 >> 1)), a2 - 1);
      sub_298BE32E4(v10 + 1, v9 - 1, a2 - 2);
      sub_298BE32E4(v10 + 2, &v10[v8 + 1], a2 - 3);
      sub_298BE32E4(v9 - 1, v9, &v10[v8 + 1]);
      v11 = *v10;
      *v10 = *v9;
      *v9 = v11;
    }

    if ((v18 & 1) == 0 && !sub_298BE4564(*(v10 - 1), *v10))
    {
      result = sub_298BE3E08(v10, a2);
      goto LABEL_17;
    }

    v12 = v10;
    v13 = sub_298BE4104(v10, a2);
    LOBYTE(a4) = v18;
    if ((v14 & 1) == 0)
    {
      goto LABEL_16;
    }

    v17 = sub_298BE4344(v12, v13);
    if (sub_298BE4344(v13 + 1, a2))
    {
      a3 = -v6;
      a2 = v13;
      result = v12;
      a4 = v18;
      if (v17)
      {
        return result;
      }

      goto LABEL_1;
    }

    v5 = v6 + 1;
    a4 = v18;
    result = (v13 + 1);
    if (!v17)
    {
LABEL_16:
      sub_298BE2F78(v12, v13, -v6, a4 & 1);
      result = (v13 + 1);
LABEL_17:
      a4 = 0;
      a3 = -v6;
      goto LABEL_1;
    }
  }

  return sub_298BE32E4(result, (result + 8), a2 - 1);
}