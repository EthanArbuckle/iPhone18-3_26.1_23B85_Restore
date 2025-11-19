uint64_t sub_298B273E4(uint64_t a1, uint64_t a2, unsigned int a3, int8x16_t *a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_298B2755C(a1, a4, a5, v30);
  v14 = v30[0];
  v15 = v30[1];
  v16 = a3 - 1;
  v17 = *(a1 + 48);
  if (v17 > v16 || v17 == a3)
  {
    v19 = *(*(a1 + 40) + 32 * v16 + 4);
    if (v19)
    {
      return v19 ^ 1u;
    }

    goto LABEL_7;
  }

  if (v17 <= a3)
  {
    if (*(a1 + 52) < a3)
    {
      sub_298B90A44(a1 + 40, (a1 + 56), a3, 32);
      v17 = *(a1 + 48);
    }

    if (v17 != a3)
    {
      bzero((*(a1 + 40) + 32 * v17), 32 * (a3 - v17));
    }
  }

  *(a1 + 48) = a3;
  v19 = *(*(a1 + 40) + 32 * v16 + 4);
  if ((v19 & 1) == 0)
  {
LABEL_7:
    if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = 7;
    }

    if (v15)
    {
      v21 = v14;
    }

    else
    {
      v21 = "<stdin>";
    }

    sub_298B2755C(a1, v21, v20, v27);
    v22 = v28;
    v23 = *(a2 + 8);
    v27[0] = "checksum_offset";
    v29 = 259;
    v24 = sub_298B2D8D0(v23, v27, 0);
    v25 = *(a1 + 40) + 32 * v16;
    *v25 = v22;
    *(v25 + 16) = a7;
    *(v25 + 24) = v24;
    *(v25 + 4) = 1;
    *(v25 + 8) = a6;
    *(*(a1 + 40) + 32 * v16 + 5) = a8;
  }

  return v19 ^ 1u;
}

void sub_298B2755C(uint64_t a1@<X0>, int8x16_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 24);
  if (!v8)
  {
    operator new();
  }

  v17 = *(v8 + 72);
  v9 = sub_298BA724C(a2, a3);
  v10 = sub_298B2B560(a1, a2, a3, v9, &v17);
  v12 = *v10;
  v13 = (*v10 + 16);
  v14 = **v10;
  *a4 = v13;
  *(a4 + 8) = v14;
  *(a4 + 16) = *(v12 + 2);
  if (v11)
  {
    v15 = *(v8 + 72);
    v16 = v15 + v14 + 1;
    if (*(v8 + 80) < v16)
    {
      sub_298B90C08(v8 + 64, (v8 + 88), v16, 1);
      v15 = *(v8 + 72);
    }

    if (v14 != -1)
    {
      memcpy((*(v8 + 64) + v15), v13, v14 + 1);
      v15 = *(v8 + 72);
    }

    *(v8 + 72) = v15 + v14 + 1;
  }
}

BOOL sub_298B276B4(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6)
{
  v9 = *(a1 + 232);
  v8 = *(a1 + 240);
  v10 = (a1 + 232);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 4);
  if (v11 <= a2)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        v18 = a4;
        v19 = a5;
        v20 = a6;
        v21 = a3;
        v22 = v9 + 48 * v12;
        if (v8 != v22)
        {
          do
          {
            v23 = v8 - 48;
            MEMORY[0x29C2945E0](*(v8 - 24), 4);
            v8 = v23;
          }

          while (v23 != v22);
        }

        *(a1 + 240) = v22;
        a3 = v21;
        a6 = v20;
        a5 = v19;
        a4 = v18;
      }
    }

    else
    {
      v13 = a3;
      v14 = a6;
      v15 = a5;
      v16 = a4;
      sub_298B2B12C(a1 + 232, v12 - v11);
      a4 = v16;
      a5 = v15;
      a6 = v14;
      a3 = v13;
    }
  }

  v24 = (*v10 + 48 * a2);
  v25 = *v24;
  if (!*v24)
  {
    *v24 = a3 + 1;
    v24[1] = a4;
    v24[2] = a5;
    v24[3] = a6;
    if (a3 <= 0xFFFFFFFD)
    {
      v26 = 37 * a2;
      while (1)
      {
        v31 = *(v24 + 1);
        v32 = v24[3];
        v24 = (*v10 + 48 * a3);
        if (*v24)
        {
          v33 = *v10 + 48 * a3;
        }

        else
        {
          v33 = 0;
        }

        v34 = (v33 + 24);
        v35 = *(v33 + 24);
        v36 = *(v33 + 40);
        if (!v36)
        {
          v37 = (4 * *(v33 + 32) + 4);
          goto LABEL_34;
        }

        v27 = v36 - 1;
        v28 = (v36 - 1) & v26;
        v29 = (v35 + 16 * v28);
        v30 = *v29;
        if (*v29 != a2)
        {
          break;
        }

LABEL_12:
        *(v29 + 1) = v31;
        v29[3] = v32;
        a3 = *v33 - 1;
        if (a3 >= 0xFFFFFFFE)
        {
          return v25 == 0;
        }
      }

      v38 = 0;
      v39 = 1;
      while (v30 != -1)
      {
        if (v38)
        {
          v40 = 0;
        }

        else
        {
          v40 = v30 == -2;
        }

        if (v40)
        {
          v38 = v29;
        }

        v41 = v28 + v39++;
        v28 = v41 & v27;
        v29 = (v35 + 16 * (v41 & v27));
        v30 = *v29;
        if (*v29 == a2)
        {
          goto LABEL_12;
        }
      }

      if (v38)
      {
        v29 = v38;
      }

      v42 = *(v33 + 32);
      if (4 * v42 + 4 < 3 * v36)
      {
        if (v36 + ~v42 - *(v33 + 36) > v36 >> 3)
        {
          goto LABEL_19;
        }

        sub_298B2B354(v34, v36);
        v52 = *(v33 + 40);
        if (v52)
        {
          v53 = *(v33 + 24);
          v54 = v52 - 1;
          v55 = (v52 - 1) & v26;
          v29 = (v53 + 16 * v55);
          v56 = *v29;
          if (*v29 != a2)
          {
            v48 = 0;
            v57 = 1;
            while (v56 != -1)
            {
              if (v48)
              {
                v58 = 0;
              }

              else
              {
                v58 = v56 == -2;
              }

              if (v58)
              {
                v48 = v29;
              }

              v59 = v55 + v57++;
              v55 = v59 & v54;
              v29 = (v53 + 16 * (v59 & v54));
              v56 = *v29;
              if (*v29 == a2)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_57;
          }

LABEL_19:
          ++*(v33 + 32);
          if (*v29 != -1)
          {
            --*(v33 + 36);
          }

          *v29 = a2;
          *(v29 + 1) = 0;
          v29[3] = 0;
          goto LABEL_12;
        }
      }

      else
      {
LABEL_34:
        sub_298B2B354(v34, 2 * v36);
        v43 = *(v33 + 40);
        if (v43)
        {
          v44 = *(v33 + 24);
          v45 = v43 - 1;
          v46 = (v43 - 1) & v26;
          v29 = (v44 + 16 * v46);
          v47 = *v29;
          if (*v29 != a2)
          {
            v48 = 0;
            v49 = 1;
            while (v47 != -1)
            {
              if (v48)
              {
                v50 = 0;
              }

              else
              {
                v50 = v47 == -2;
              }

              if (v50)
              {
                v48 = v29;
              }

              v51 = v46 + v49++;
              v46 = v51 & v45;
              v29 = (v44 + 16 * (v51 & v45));
              v47 = *v29;
              if (*v29 == a2)
              {
                goto LABEL_19;
              }
            }

LABEL_57:
            if (v48)
            {
              v29 = v48;
            }

            goto LABEL_19;
          }

          goto LABEL_19;
        }
      }

      v29 = 0;
      goto LABEL_19;
    }
  }

  return v25 == 0;
}

void sub_298B279F4(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = a1[24];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v2 >= v5)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= v2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v4[6] = 0xAAAAAAAAAAAAAAABLL * ((a1[27] - a1[26]) >> 3) + 1;

  sub_298B28264((a1 + 26), a2);
}

uint64_t sub_298B27B14(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v13[0] = "strtab_begin";
  v14 = 259;
  v5 = sub_298B2D8D0(v4, v13, 0);
  v13[0] = "strtab_end";
  v14 = 259;
  v6 = sub_298B2D8D0(v4, v13, 0);
  (*(*a2 + 520))(a2, 243, 4);
  (*(*a2 + 848))(a2, v6, v5, 4);
  (*(*a2 + 192))(a2, v5, 0);
  if ((*(a1 + 32) & 1) == 0)
  {
    v7 = *(a1 + 24);
    if (!v7)
    {
      operator new();
    }

    sub_298B4AE5C(a2, *(a1 + 24), 0);
    v8 = *(a2 + 38);
    if (v8)
    {
      v9 = *(a2[18] + 32 * v8 - 32);
    }

    else
    {
      v9 = 0;
    }

    v10 = a2[39];
    v11 = *v10;
    *v7 = *v10;
    v7[1] = v10;
    *(v11 + 8) = v7;
    *v10 = v7;
    v7[2] = v9;
    *(a1 + 32) = 1;
  }

  (*(*a2 + 640))(a2, 2, 0, 1, 0);
  return (*(*a2 + 192))(a2, v6, 0);
}

uint64_t sub_298B27DA8(uint64_t result, void *a2)
{
  if (*(result + 48))
  {
    v3 = result;
    v4 = a2[1];
    v25[0] = "filechecksums_begin";
    v26 = 259;
    v5 = sub_298B2D8D0(v4, v25, 0);
    v25[0] = "filechecksums_end";
    v26 = 259;
    v6 = sub_298B2D8D0(v4, v25, 0);
    (*(*a2 + 520))(a2, 244, 4);
    v22 = v6;
    (*(*a2 + 848))(a2, v6, v5, 4);
    (*(*a2 + 192))(a2, v5, 0);
    v23 = v3;
    v7 = *(v3 + 48);
    if (v7)
    {
      v8 = 0;
      v9 = *(v3 + 40);
      v10 = &v9[8 * v7];
      do
      {
        while (1)
        {
          v11 = *v9;
          v12 = *(v9 + 5);
          v13 = *(v9 + 2);
          v24 = *(v9 + 1);
          v14 = *(v9 + 3);
          *(v4 + 264) += 24;
          v15 = *(v4 + 184);
          if (v15 && ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) - v15 + 24 <= *(v4 + 192) - v15)
          {
            v16 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v17 = v10;
            v18 = *(v4 + 208) >> 7;
            if (v18 >= 0x1E)
            {
              LOBYTE(v18) = 30;
            }

            v19 = 4096 << v18;
            v16 = operator new(4096 << v18, 8uLL);
            v20 = *(v4 + 208);
            if (v20 >= *(v4 + 212))
            {
              v21 = v16;
              sub_298B90A44(v4 + 200, (v4 + 216), v20 + 1, 8);
              v16 = v21;
              v20 = *(v4 + 208);
            }

            *(*(v4 + 200) + 8 * v20) = v16;
            ++*(v4 + 208);
            *(v4 + 192) = v16 + v19;
            v10 = v17;
          }

          *(v4 + 184) = v16 + 24;
          *v16 = 1;
          *(v16 + 1) = *(v16 + 4) << 24;
          *(v16 + 8) = 0;
          *(v16 + 16) = v8;
          (*(*a2 + 272))(a2, v14);
          if (v12)
          {
            v8 = (v8 + v13 + 9) & 0xFFFFFFFC;
          }

          else
          {
            v8 += 8;
          }

          (*(*a2 + 520))(a2, v11, 4);
          if (!v12)
          {
            break;
          }

          (*(*a2 + 520))(a2, v13, 1);
          (*(*a2 + 520))(a2, v12, 1);
          (*(*a2 + 496))(a2, v24, v13);
          (*(*a2 + 640))(a2, 2, 0, 1, 0);
          v9 += 8;
          if (v9 == v10)
          {
            goto LABEL_18;
          }
        }

        (*(*a2 + 520))(a2, 0, 4);
        v9 += 8;
      }

      while (v9 != v10);
    }

LABEL_18:
    result = (*(*a2 + 192))(a2, v22, 0);
    *(v23 + 256) = 1;
  }

  return result;
}

void sub_298B28264(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

unint64_t sub_298B283B0(uint64_t a1, unsigned int a2)
{
  v4 = a1 + 192;
  v5 = *(a1 + 192);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1 + 192;
  v7 = *(a1 + 192);
  do
  {
    v8 = *(v7 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v6 = v7;
    }

    v7 = *(v7 + 8 * v10);
  }

  while (v7);
  if (v6 != v4 && *(v6 + 32) <= a2)
  {
    result = *(v6 + 40);
    v11 = *(v6 + 48);
  }

  else
  {
LABEL_9:
    v11 = 0;
    result = -1;
  }

  v14 = a1 + 232;
  v13 = *(a1 + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v14 + 8) - v13) >> 4) > a2)
  {
    v15 = v13 + 48 * a2;
    if (*v15)
    {
      if (*(v15 + 32))
      {
        v16 = *(v15 + 24);
        v17 = *(v15 + 40);
        if (v17)
        {
          v18 = 16 * v17;
          for (i = *(v15 + 24); *i >= 0xFFFFFFFE; i += 4)
          {
            v18 -= 16;
            if (!v18)
            {
              return result;
            }
          }
        }

        else
        {
          i = *(v15 + 24);
        }

        v20 = (v16 + 16 * v17);
        if (i != v20 && v5)
        {
LABEL_22:
          v21 = *i;
          v22 = v4;
          v23 = v5;
          do
          {
            v24 = *(v23 + 32);
            v9 = v24 >= v21;
            v25 = v24 < v21;
            if (v9)
            {
              v22 = v23;
            }

            v23 = *(v23 + 8 * v25);
          }

          while (v23);
          if (v22 == v4 || *(v22 + 32) > v21)
          {
            v26 = 0;
            v27 = -1;
          }

          else
          {
            v27 = *(v22 + 40);
            v26 = *(v22 + 48);
          }

          if (v27 < result)
          {
            result = v27;
          }

          if (v11 <= v26)
          {
            v11 = v26;
          }

          while (1)
          {
            i += 4;
            if (i == v20)
            {
              break;
            }

            if (*i < 0xFFFFFFFE)
            {
              if (i != v20)
              {
                goto LABEL_22;
              }

              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_298B28504(void *a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[1];
  v72[0] = "linetable_begin";
  v73 = 259;
  v11 = sub_298B2D8D0(v10, v72, 0);
  v72[0] = "linetable_end";
  v73 = 259;
  v12 = sub_298B2D8D0(v10, v72, 0);
  (*(*a2 + 520))(a2, 242, 4);
  (*(*a2 + 848))(a2, v12, v11, 4);
  (*(*a2 + 192))(a2, v11, 0);
  (*(*a2 + 368))(a2, a4, 0);
  (*(*a2 + 360))(a2, a4);
  v13 = sub_298B283B0(a1, a3);
  v61 = v12;
  if (v13 >= v14)
  {
    v17 = 0;
    __src = 0;
LABEL_55:
    v50 = 0;
    v52 = 1;
    v49 = a5;
    goto LABEL_56;
  }

  v5 = v13;
  v15 = a1[29];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[30] - v15) >> 4) <= a3)
  {
    v67 = 0;
  }

  else
  {
    v16 = (v15 + 48 * a3);
    if (!*v16)
    {
      v16 = 0;
    }

    v67 = v16;
  }

  v18 = 0;
  v17 = 0;
  v64 = a3;
  v62 = a1;
  v63 = v14;
  do
  {
    v19 = a1[26] + 24 * v5;
    v20 = *(v19 + 8);
    if (v20 == a3)
    {
      v21 = v17 - v18;
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_77;
      }

      v24 = a1;
      if (0x5555555555555556 * (-v18 >> 3) > v23)
      {
        v23 = 0x5555555555555556 * (-v18 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v18 >> 3) >= 0x555555555555555)
      {
        v25 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        if (v25 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        goto LABEL_78;
      }

      v43 = v18;
      v44 = 8 * ((v17 - v18) >> 3);
      v45 = *v19;
      *(v44 + 16) = *(v19 + 16);
      *v44 = v45;
      v17 = v44 + 24;
      memcpy((24 * v22 + 24 * (v21 / -24)), v18, v21);
      if (v43)
      {
        operator delete(v43);
      }

      v18 = 24 * v22 + 24 * (v21 / -24);
      a1 = v24;
      a3 = v64;
      v14 = v63;
      goto LABEL_9;
    }

    v26 = *(v67 + 3);
    v27 = v67[10];
    v28 = (v26 + 16 * v27);
    if (!v27)
    {
      goto LABEL_26;
    }

    v29 = v27 - 1;
    LODWORD(v30) = (v27 - 1) & (37 * v20);
    v31 = (v26 + 16 * v30);
    v32 = *v31;
    if (v20 != *v31)
    {
      v33 = 1;
      while (v32 != -1)
      {
        v34 = v30 + v33++;
        v30 = v34 & v29;
        v32 = *(v26 + 16 * v30);
        if (v20 == v32)
        {
          v31 = (v26 + 16 * v30);
          goto LABEL_27;
        }
      }

LABEL_26:
      v31 = v28;
    }

LABEL_27:
    if (v31 != v28)
    {
      v35 = v31[1];
      if (v18 == v17 || *(v17 - 12) != v35 || *(v17 - 8) != v31[2] || v31[3] != *(v17 - 4))
      {
        v36 = *v19;
        v37 = v31[2];
        v38 = v31[3];
        v68 &= 0xFCu;
        v39 = v17 - v18;
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 3);
        v41 = v40 + 1;
        if (v40 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_77:
          sub_298ADDDA0();
        }

        if (0x5555555555555556 * (-v18 >> 3) > v41)
        {
          v41 = 0x5555555555555556 * (-v18 >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * (-v18 >> 3) >= 0x555555555555555)
        {
          v42 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v42 = v41;
        }

        __srca = v18;
        if (v42)
        {
          if (v42 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

LABEL_78:
          sub_298ADDDA0();
        }

        v46 = 24 * v40;
        *v46 = v36;
        a3 = v64;
        *(v46 + 8) = v64;
        *(v46 + 12) = v35;
        *(v46 + 16) = v37;
        *(v46 + 20) = v38;
        *(v46 + 22) = v68;
        v17 = 24 * v40 + 24;
        v47 = (v46 + 24 * (v39 / -24));
        memcpy(v47, v18, v39);
        if (__srca)
        {
          operator delete(__srca);
        }

        v18 = v47;
        a1 = v62;
        v14 = v63;
      }
    }

LABEL_9:
    ++v5;
  }

  while (v5 != v14);
  __src = v18;
  if (v18 == v17)
  {
    goto LABEL_55;
  }

  v48 = v18 + 24;
  v49 = a5;
  do
  {
    v50 = *(v48 - 4) != 0;
    if (*(v48 - 4))
    {
      v51 = 1;
    }

    else
    {
      v51 = v48 == v17;
    }

    v48 += 24;
  }

  while (!v51);
  v52 = 0;
LABEL_56:
  (*(*a2 + 520))(a2, v50, 2);
  (*(*a2 + 848))(a2, v49, a4, 4);
  if ((v52 & 1) == 0)
  {
    v53 = __src;
    do
    {
      v54 = v53;
      v55 = *(v53 + 3);
      while (*(v53 + 3) == v55)
      {
        v53 += 12;
        if (v53 == v17)
        {
          v53 = v17;
          break;
        }
      }

      v56 = a1[3];
      if (!v56)
      {
        operator new();
      }

      v5 = v5 & 0xFFFFFFFFFFFFFF00 | *(*(v56 + 64) + *(a1[5] + 32 * (v55 - 1)));
      v70[0] = "Segment for file '";
      v70[1] = v69;
      v70[2] = v5;
      v71 = 2051;
      v72[0] = v70;
      v72[1] = v69;
      v72[2] = "' begins";
      v73 = 770;
      (*(*a2 + 112))(a2, v72, 1);
      (*(*a2 + 832))(a2, v55);
      (*(*a2 + 520))(a2, -1431655765 * ((v53 - v54) >> 3), 4);
      v57 = -1431655764 * ((v53 - v54) >> 3);
      if (!v50)
      {
        v57 = 0;
      }

      (*(*a2 + 520))(a2, v57 + 1431655768 * ((v53 - v54) >> 3) + 12, 4);
      for (i = v54; i != v53; i += 12)
      {
        (*(*a2 + 848))(a2, *i, a4, 4);
        (*(*a2 + 520))(a2, *(i + 4) | ((i[11] & 2) << 30), 4);
      }

      v59 = !v50;
      if (v54 == v53)
      {
        v59 = 1;
      }

      if ((v59 & 1) == 0)
      {
        do
        {
          (*(*a2 + 520))(a2, v54[10], 2);
          (*(*a2 + 520))(a2, 0, 2);
          v54 += 12;
        }

        while (v54 != v53);
      }
    }

    while (v53 != v17);
  }

  (*(*a2 + 192))(a2, v61, 0);
  if (__src)
  {
    operator delete(__src);
  }
}

unint64_t sub_298B28FB0(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = *(a3 + 52);
  result = sub_298B283B0(a1, *(a3 + 52));
  if (result >= v8)
  {
    return result;
  }

  v9 = a1[26];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[27] - v9) >> 3) <= result)
  {
    return result;
  }

  v111 = v8;
  v112 = a1;
  v10 = v9 + 24 * result;
  v11 = *(a3 + 64);
  v13 = *(a3 + 56);
  v12 = *(a3 + 60);
  v14 = a1[29];
  if (0xAAAAAAAAAAAAAAABLL * ((a1[30] - v14) >> 4) <= v6)
  {
    v114 = 0;
  }

  else
  {
    v15 = (v14 + 48 * v6);
    if (!*v15)
    {
      v15 = 0;
    }

    v114 = v15;
  }

  v16 = 0;
  v17 = 0;
  v18 = v9 + 24 * v8;
  *(a3 + 88) = 0;
  v113 = v18;
  v115 = a2;
  while (1)
  {
    v19 = *(v10 + 8);
    if (v19 == *(a3 + 52))
    {
      v20 = (v10 + 12);
      v21 = (v10 + 16);
LABEL_22:
      v29 = *v21;
      v30 = *v20;
      if ((v17 & (*v20 == v13)) == 1 && v29 == v12)
      {
        v17 = 1;
        v10 += 24;
        if (v10 == v18)
        {
          goto LABEL_76;
        }

        goto LABEL_10;
      }

      if (v30 != v13)
      {
        v32 = *(v112[5] + 32 * (v30 - 1) + 24);
        *(v32 + 8) |= 8uLL;
        v33 = *(*(v32 + 24) + 16);
        v34 = *(a3 + 88);
        if ((v34 + 1) > *(a3 + 96))
        {
          v71 = v33;
          sub_298B90C08(a3 + 80, (a3 + 104), v34 + 1, 1);
          v33 = v71;
          v34 = *(a3 + 88);
        }

        *(*(a3 + 80) + v34) = 5;
        ++*(a3 + 88);
        sub_298B29988(v33, (a3 + 80));
      }

      v35 = 2 * (v29 - v12);
      if (v29 - v12 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = 1 - v35;
      }

      v37 = *v10;
      v38 = **a2;
      v39 = sub_298B44B48(v11, 0, v38, 0);
      v40 = sub_298B44B48(v37, 0, v38, 0);
      *(v38 + 264) += 32;
      v41 = *(v38 + 184);
      if (v41)
      {
        v42 = ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) - v41 + 32 > *(v38 + 192) - v41;
      }

      else
      {
        v42 = 1;
      }

      if (v42)
      {
        v43 = *(v38 + 208) >> 7;
        if (v43 >= 0x1E)
        {
          LOBYTE(v43) = 30;
        }

        v44 = 4096 << v43;
        v46 = operator new(4096 << v43, 8uLL);
        v45 = *(v38 + 208);
        if (v45 >= *(v38 + 212))
        {
          v110 = v46;
          sub_298B90A44(v38 + 200, (v38 + 216), v45 + 1, 8);
          v46 = v110;
          v45 = *(v38 + 208);
        }

        *(*(v38 + 200) + 8 * v45) = v46;
        ++*(v38 + 208);
        *(v38 + 192) = v46 + v44;
      }

      else
      {
        v46 = (v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v38 + 184) = v46 + 32;
      *v46 = 0;
      *(v46 + 1) = (*(v46 + 4) << 24) | 0x12;
      *(v46 + 8) = 0;
      *(v46 + 16) = v40;
      v47 = (v46 + 16);
      *(v46 + 24) = v39;
      a2 = v115;
      v48 = *v115;
      v116 = 0;
      v117 = 0;
      v119 = 0;
      v118 = 0;
      if (*v46 != 1)
      {
        sub_298B44C70(v46, &v116, v48, v115, 0, 0, 1);
        v47 = &v118;
      }

      v18 = v113;
      v49 = *v47;
      if (v36 > 7 || v49 > 0xF)
      {
        if (v29 != v12)
        {
          v54 = *v47;
          v55 = *(a3 + 88);
          if ((v55 + 1) > *(a3 + 96))
          {
            sub_298B90C08(a3 + 80, (a3 + 104), v55 + 1, 1);
            v55 = *(a3 + 88);
          }

          *(*(a3 + 80) + v55) = 6;
          ++*(a3 + 88);
          sub_298B29988(v36, (a3 + 80));
          v49 = v54;
        }

        v50 = *(a3 + 88);
        v51 = *(a3 + 96);
        v52 = v50 + 1;
        v17 = 1;
        v53 = 3;
      }

      else
      {
        v49 = v49 | (16 * v36);
        v50 = *(a3 + 88);
        v51 = *(a3 + 96);
        v52 = v50 + 1;
        v17 = 1;
        v53 = 11;
      }

      if (v52 <= v51)
      {
        v13 = v30;
        v12 = v29;
        goto LABEL_55;
      }

      v70 = v49;
      v13 = v30;
      v12 = v29;
      goto LABEL_75;
    }

    v22 = *(v114 + 3);
    v23 = v114[10];
    if (v23)
    {
      LODWORD(v24) = (v23 - 1) & (37 * v19);
      v25 = (v22 + 16 * v24);
      v26 = *v25;
      if (v19 == *v25)
      {
        goto LABEL_20;
      }

      v27 = 1;
      while (v26 != -1)
      {
        v28 = v24 + v27++;
        v24 = v28 & (v23 - 1);
        v26 = *(v22 + 16 * v24);
        if (v19 == v26)
        {
          v25 = (v22 + 16 * v24);
          goto LABEL_20;
        }
      }
    }

    v25 = (v22 + 16 * v23);
LABEL_20:
    if (v25 != (v22 + 16 * v23))
    {
      v20 = v25 + 1;
      v21 = v25 + 2;
      goto LABEL_22;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v57 = a2;
    v58 = *v10;
    v59 = **v57;
    v60 = sub_298B44B48(v11, 0, v59, 0);
    v61 = sub_298B44B48(v58, 0, v59, 0);
    *(v59 + 264) += 32;
    v62 = *(v59 + 184);
    if (v62)
    {
      v63 = ((v62 + 7) & 0xFFFFFFFFFFFFFFF8) - v62 + 32 > *(v59 + 192) - v62;
    }

    else
    {
      v63 = 1;
    }

    if (v63)
    {
      v64 = *(v59 + 208) >> 7;
      if (v64 >= 0x1E)
      {
        LOBYTE(v64) = 30;
      }

      v65 = 4096 << v64;
      v67 = operator new(4096 << v64, 8uLL);
      v66 = *(v59 + 208);
      if (v66 >= *(v59 + 212))
      {
        v72 = v67;
        sub_298B90A44(v59 + 200, (v59 + 216), v66 + 1, 8);
        v67 = v72;
        v66 = *(v59 + 208);
      }

      *(*(v59 + 200) + 8 * v66) = v67;
      ++*(v59 + 208);
      *(v59 + 192) = v67 + v65;
      v18 = v113;
    }

    else
    {
      v67 = (v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v59 + 184) = v67 + 32;
    *v67 = 0;
    *(v67 + 1) = (*(v67 + 4) << 24) | 0x12;
    *(v67 + 8) = 0;
    *(v67 + 16) = v61;
    v68 = (v67 + 16);
    *(v67 + 24) = v60;
    a2 = v115;
    v69 = *v115;
    v116 = 0;
    v117 = 0;
    v119 = 0;
    v118 = 0;
    if (*v67 != 1)
    {
      sub_298B44C70(v67, &v116, v69, v115, 0, 0, 1);
      v68 = &v118;
    }

    v17 = 0;
    v49 = *v68;
    v50 = *(a3 + 88);
    v52 = v50 + 1;
    v53 = 4;
    if ((v50 + 1) > *(a3 + 96))
    {
      v70 = v49;
LABEL_75:
      sub_298B90C08(a3 + 80, (a3 + 104), v52, 1);
      v50 = *(a3 + 88);
      v49 = v70;
      a2 = v115;
    }

LABEL_55:
    *(*(a3 + 80) + v50) = v53;
    ++*(a3 + 88);
    sub_298B29988(v49, (a3 + 80));
    v56 = *v10;
    v10 += 24;
    v11 = v56;
    v16 = *(a3 + 88);
    if (v10 == v18)
    {
      goto LABEL_76;
    }

LABEL_10:
    if (v16 >= 0xFEEC)
    {
      goto LABEL_76;
    }
  }

  v17 = 0;
  v10 += 24;
  if (v10 != v18)
  {
    goto LABEL_10;
  }

LABEL_76:
  v73 = *(a3 + 72);
  v74 = **a2;
  v75 = sub_298B44B48(v11, 0, v74, 0);
  v76 = sub_298B44B48(v73, 0, v74, 0);
  *(v74 + 264) += 32;
  v77 = *(v74 + 184);
  if (v77)
  {
    v78 = ((v77 + 7) & 0xFFFFFFFFFFFFFFF8) - v77 + 32 > *(v74 + 192) - v77;
  }

  else
  {
    v78 = 1;
  }

  if (v78)
  {
    v79 = *(v74 + 208) >> 7;
    if (v79 >= 0x1E)
    {
      LOBYTE(v79) = 30;
    }

    v80 = 4096 << v79;
    v82 = operator new(4096 << v79, 8uLL);
    v81 = *(v74 + 208);
    if (v81 >= *(v74 + 212))
    {
      v108 = v82;
      sub_298B90A44(v74 + 200, (v74 + 216), v81 + 1, 8);
      v82 = v108;
      LODWORD(v81) = *(v74 + 208);
    }

    *(*(v74 + 200) + 8 * v81) = v82;
    ++*(v74 + 208);
    *(v74 + 192) = v82 + v80;
  }

  else
  {
    v82 = (v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v74 + 184) = v82 + 32;
  *v82 = 0;
  *(v82 + 1) = (*(v82 + 4) << 24) | 0x12;
  *(v82 + 8) = 0;
  *(v82 + 16) = v76;
  *(v82 + 24) = v75;
  v83 = v115;
  v84 = *v115;
  v116 = 0;
  v117 = 0;
  v119 = 0;
  v118 = 0;
  sub_298B44C70(v82, &v116, v84, v115, 0, 0, 1);
  v85 = v118;
  if (v111 == -1)
  {
    goto LABEL_91;
  }

  v86 = v112[26];
  if (0xAAAAAAAAAAAAAAABLL * ((v112[27] - v86) >> 3) <= v111)
  {
    goto LABEL_91;
  }

  v87 = (v86 + 24 * v111);
  v88 = *v87;
  v89 = **v87;
  if (v89)
  {
    v90 = *(v89 + 16);
    v91 = *v11;
    if (*v11)
    {
      goto LABEL_90;
    }

LABEL_98:
    *(v11 + 8) |= 8uLL;
    v97 = sub_298B45440(*(v11 + 24));
    *v11 = v97;
    if (v90 == *(v97 + 16))
    {
      goto LABEL_99;
    }

LABEL_91:
    v92 = -1;
    v93 = *(a3 + 88);
    v94 = v93 + 1;
    if ((v93 + 1) <= *(a3 + 96))
    {
      goto LABEL_92;
    }

LABEL_108:
    sub_298B90C08(a3 + 80, (a3 + 104), v94, 1);
    v93 = *(a3 + 88);
    goto LABEL_92;
  }

  v88[1] |= 8uLL;
  v96 = sub_298B45440(v88[3]);
  *v88 = v96;
  v90 = *(v96 + 16);
  v91 = *v11;
  if (!*v11)
  {
    goto LABEL_98;
  }

LABEL_90:
  if (v90 != *(v91 + 16))
  {
    goto LABEL_91;
  }

LABEL_99:
  v98 = *v87;
  v99 = **v115;
  v100 = sub_298B44B48(v11, 0, v99, 0);
  v101 = sub_298B44B48(v98, 0, v99, 0);
  *(v99 + 264) += 32;
  v102 = *(v99 + 184);
  if (v102 && ((v102 + 7) & 0xFFFFFFFFFFFFFFF8) - v102 + 32 <= *(v99 + 192) - v102)
  {
    v103 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v104 = *(v99 + 208) >> 7;
    if (v104 >= 0x1E)
    {
      LOBYTE(v104) = 30;
    }

    v105 = 4096 << v104;
    v103 = operator new(4096 << v104, 8uLL);
    v106 = *(v99 + 208);
    if (v106 >= *(v99 + 212))
    {
      v109 = v103;
      sub_298B90A44(v99 + 200, (v99 + 216), v106 + 1, 8);
      v103 = v109;
      v83 = v115;
      LODWORD(v106) = *(v99 + 208);
    }

    *(*(v99 + 200) + 8 * v106) = v103;
    ++*(v99 + 208);
    *(v99 + 192) = v103 + v105;
  }

  *(v99 + 184) = v103 + 32;
  *v103 = 0;
  *(v103 + 1) = (*(v103 + 4) << 24) | 0x12;
  *(v103 + 8) = 0;
  *(v103 + 16) = v101;
  *(v103 + 24) = v100;
  v107 = *v83;
  v116 = 0;
  v117 = 0;
  v119 = 0;
  v118 = 0;
  sub_298B44C70(v103, &v116, v107, v83, 0, 0, 1);
  v92 = v118;
  v93 = *(a3 + 88);
  v94 = v93 + 1;
  if ((v93 + 1) > *(a3 + 96))
  {
    goto LABEL_108;
  }

LABEL_92:
  *(*(a3 + 80) + v93) = 4;
  ++*(a3 + 88);
  if (v92 >= v85)
  {
    v95 = v85;
  }

  else
  {
    v95 = v92;
  }

  return sub_298B29988(v95, (a3 + 80));
}

uint64_t sub_298B29988(uint64_t result, void *a2)
{
  if (result <= 0x7F)
  {
    v2 = a2[1];
    v3 = v2 + 1;
    if ((v2 + 1) <= a2[2])
    {
LABEL_3:
      *(*a2 + v2) = result;
      ++a2[1];
      return result;
    }

LABEL_18:
    v18 = result;
    v19 = a2;
    sub_298B90C08(a2, a2 + 3, v3, 1);
    a2 = v19;
    v2 = v19[1];
    result = v18;
    goto LABEL_3;
  }

  if (!(result >> 14))
  {
    v4 = (result >> 8) | 0xFFFFFF80;
    v5 = a2[1];
    if ((v5 + 1) > a2[2])
    {
      v24 = a2;
      v20 = result;
      sub_298B90C08(a2, a2 + 3, v5 + 1, 1);
      result = v20;
      a2 = v24;
      v5 = v24[1];
    }

    *(*a2 + v5) = v4;
    v6 = a2[1];
    v7 = a2[2];
    v2 = v6 + 1;
    a2[1] = v6 + 1;
    v3 = v6 + 2;
    if (v6 + 2 <= v7)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  if (!(result >> 29))
  {
    v8 = BYTE3(result) | 0xFFFFFFC0;
    v9 = a2[1];
    if ((v9 + 1) > a2[2])
    {
      v25 = a2;
      v21 = result;
      sub_298B90C08(a2, a2 + 3, v9 + 1, 1);
      result = v21;
      a2 = v25;
      v9 = v25[1];
    }

    *(*a2 + v9) = v8;
    v10 = a2[1];
    v11 = a2[2];
    v12 = v10 + 1;
    a2[1] = v10 + 1;
    if (v10 + 2 > v11)
    {
      v26 = a2;
      v22 = result;
      sub_298B90C08(a2, a2 + 3, v10 + 2, 1);
      result = v22;
      a2 = v26;
      v12 = v26[1];
    }

    *(*a2 + v12) = BYTE2(result);
    v13 = a2[1];
    v14 = a2[2];
    v15 = v13 + 1;
    a2[1] = v13 + 1;
    if (v13 + 2 > v14)
    {
      v27 = a2;
      v23 = result;
      sub_298B90C08(a2, a2 + 3, v13 + 2, 1);
      result = v23;
      a2 = v27;
      v15 = v27[1];
    }

    *(*a2 + v15) = BYTE1(result);
    v16 = a2[1];
    v17 = a2[2];
    v2 = v16 + 1;
    a2[1] = v16 + 1;
    v3 = v16 + 2;
    if (v16 + 2 <= v17)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_298B29B6C(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v156[4] = *MEMORY[0x29EDCA608];
  v3 = **a2;
  *(a3 + 72) = 0;
  *(a3 + 128) = 0;
  v142 = 0;
  v146 = 0;
  v147 = 0;
  v149 = a3 + 64;
  v148 = 0;
  v141 = &unk_2A1F1E0B8;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v154 = v156;
  v155 = 0x400000000;
  v4 = *(a3 + 240);
  if (v4)
  {
    v7 = 0;
    v8 = *(a3 + 232);
    v139 = &v8[2 * v4];
    do
    {
      v10 = *v8;
      v9 = v8[1];
      v11 = *a2;
      if (v7)
      {
        v12 = *v11;
        v13 = sub_298B44B48(v7, 0, *v11, 0);
        v14 = sub_298B44B48(v10, 0, v12, 0);
        *(v12 + 264) += 32;
        v15 = *(v12 + 184);
        if (v15)
        {
          v16 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) - v15 + 32 > *(v12 + 192) - v15;
        }

        else
        {
          v16 = 1;
        }

        if (v16)
        {
          v17 = *(v12 + 208) >> 7;
          if (v17 >= 0x1E)
          {
            LOBYTE(v17) = 30;
          }

          v18 = 4096 << v17;
          v21 = operator new(4096 << v17, 8uLL);
          v19 = *(v12 + 208);
          if (v19 >= *(v12 + 212))
          {
            v136 = v21;
            sub_298B90A44(v12 + 200, (v12 + 216), v19 + 1, 8);
            v21 = v136;
            v19 = *(v12 + 208);
          }

          *(*(v12 + 200) + 8 * v19) = v21;
          ++*(v12 + 208);
          *(v12 + 192) = v21 + v18;
        }

        else
        {
          v21 = (v15 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        *(v12 + 184) = v21 + 32;
        *v21 = 0;
        *(v21 + 1) = (*(v21 + 4) << 24) | 0x12;
        *(v21 + 8) = 0;
        *(v21 + 16) = v14;
        *(v21 + 24) = v13;
        v11 = *a2;
        v150 = 0;
        v151 = 0;
        v153 = 0;
        v152 = 0;
        if (*v21 == 1)
        {
          v20 = *(v21 + 16);
        }

        else
        {
          sub_298B44C70(v21, &v150, v11, a2, 0, 0, 1);
          v20 = v152;
          v11 = *a2;
        }
      }

      else
      {
        v20 = 0;
      }

      v22 = *v11;
      v23 = sub_298B44B48(v10, 0, *v11, 0);
      v24 = sub_298B44B48(v9, 0, v22, 0);
      *(v22 + 264) += 32;
      v25 = *(v22 + 184);
      if (v25)
      {
        v26 = ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) - v25 + 32 > *(v22 + 192) - v25;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        v27 = *(v22 + 208) >> 7;
        if (v27 >= 0x1E)
        {
          LOBYTE(v27) = 30;
        }

        v28 = 4096 << v27;
        v30 = operator new(4096 << v27, 8uLL);
        v29 = *(v22 + 208);
        if (v29 >= *(v22 + 212))
        {
          v135 = v30;
          sub_298B90A44(v22 + 200, (v22 + 216), v29 + 1, 8);
          v30 = v135;
          v29 = *(v22 + 208);
        }

        *(*(v22 + 200) + 8 * v29) = v30;
        ++*(v22 + 208);
        *(v22 + 192) = v30 + v28;
      }

      else
      {
        v30 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      }

      *(v22 + 184) = v30 + 32;
      *v30 = 0;
      *(v30 + 1) = (*(v30 + 4) << 24) | 0x12;
      *(v30 + 8) = 0;
      *(v30 + 16) = v24;
      v31 = (v30 + 16);
      *(v30 + 24) = v23;
      v32 = *a2;
      v150 = 0;
      v151 = 0;
      v153 = 0;
      v152 = 0;
      if (*v30 != 1)
      {
        sub_298B44C70(v30, &v150, v32, a2, 0, 0, 1);
        v31 = &v152;
      }

      v33 = *v31;
      v34 = v155;
      if (v155 >= HIDWORD(v155))
      {
        sub_298B90A44(&v154, v156, v155 + 1, 8);
        v34 = v155;
      }

      v154[v34] = v20 | (v33 << 32);
      LODWORD(v155) = v155 + 1;
      v8 += 2;
      v7 = v9;
    }

    while (v8 != v139);
    v35 = *(a3 + 240);
    if (v35)
    {
      v36 = 0;
      v131 = *(a3 + 240);
      do
      {
        v134 = v36;
        v38 = &v154[v36];
        v39 = *(v38 + 1);
        v132 = v36 + 1;
        if (v36 + 1 != v35)
        {
          v40 = v38 + 12;
          v41 = v36 + 1;
          while (1)
          {
            v42 = *(v40 - 1) + v39 + *v40;
            if (v42 > 0xF000)
            {
              break;
            }

            v40 += 2;
            v39 = v42;
            if (v35 == ++v41)
            {
              v39 = v42;
              goto LABEL_43;
            }
          }

          v35 = v41;
        }

LABEL_43:
        v43 = 0;
        v138 = *(*(a3 + 232) + 16 * v36);
        v133 = v35;
        v137 = 4 * (v35 + ~v36) + 8;
        do
        {
          if (v39 >= 0xF000)
          {
            v44 = 61440;
          }

          else
          {
            v44 = v39;
          }

          *(v3 + 264) += 24;
          v45 = *(v3 + 184);
          if (v45)
          {
            v46 = ((v45 + 7) & 0xFFFFFFFFFFFFFFF8) - v45 + 24 > *(v3 + 192) - v45;
          }

          else
          {
            v46 = 1;
          }

          if (v46)
          {
            v47 = *(v3 + 208) >> 7;
            if (v47 >= 0x1E)
            {
              LOBYTE(v47) = 30;
            }

            v48 = 4096 << v47;
            v50 = operator new(4096 << v47, 8uLL);
            v49 = *(v3 + 208);
            if (v49 >= *(v3 + 212))
            {
              sub_298B90A44(v3 + 200, (v3 + 216), v49 + 1, 8);
              v49 = *(v3 + 208);
            }

            *(*(v3 + 200) + 8 * v49) = v50;
            ++*(v3 + 208);
            *(v3 + 192) = v50 + v48;
          }

          else
          {
            v50 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          *(v3 + 184) = v50 + 24;
          if (*(*(v3 + 144) + 18))
          {
            v51 = 0x10000;
          }

          else
          {
            v51 = 0;
          }

          *v50 = 2;
          *(v50 + 1) = v51 | (*(v50 + 4) << 24);
          *(v50 + 8) = 0;
          *(v50 + 16) = v138;
          *(v3 + 264) += 24;
          v52 = *(v3 + 184);
          if (v52 && ((v52 + 7) & 0xFFFFFFFFFFFFFFF8) - v52 + 24 <= *(v3 + 192) - v52)
          {
            v53 = (v52 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v54 = *(v3 + 208) >> 7;
            if (v54 >= 0x1E)
            {
              LOBYTE(v54) = 30;
            }

            v55 = 4096 << v54;
            v53 = operator new(4096 << v54, 8uLL);
            v56 = *(v3 + 208);
            if (v56 >= *(v3 + 212))
            {
              sub_298B90A44(v3 + 200, (v3 + 216), v56 + 1, 8);
              v56 = *(v3 + 208);
            }

            *(*(v3 + 200) + 8 * v56) = v53;
            ++*(v3 + 208);
            *(v3 + 192) = v53 + v55;
          }

          *(v3 + 184) = v53 + 24;
          *v53 = 1;
          *(v53 + 1) = *(v53 + 4) << 24;
          *(v53 + 8) = 0;
          *(v53 + 16) = v43;
          *(v3 + 264) += 32;
          v57 = *(v3 + 184);
          v140 = v44;
          if (v57 && ((v57 + 7) & 0xFFFFFFFFFFFFFFF8) - v57 + 32 <= *(v3 + 192) - v57)
          {
            v58 = (v57 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          else
          {
            v59 = *(v3 + 208) >> 7;
            if (v59 >= 0x1E)
            {
              LOBYTE(v59) = 30;
            }

            v60 = 4096 << v59;
            v58 = operator new(4096 << v59, 8uLL);
            v61 = *(v3 + 208);
            if (v61 >= *(v3 + 212))
            {
              sub_298B90A44(v3 + 200, (v3 + 216), v61 + 1, 8);
              v61 = *(v3 + 208);
            }

            *(*(v3 + 200) + 8 * v61) = v58;
            ++*(v3 + 208);
            *(v3 + 192) = v58 + v60;
          }

          *(v3 + 184) = v58 + 32;
          *v58 = 0;
          *(v58 + 1) = *(v58 + 4) << 24;
          *(v58 + 8) = 0;
          *(v58 + 16) = v50;
          *(v58 + 24) = v53;
          v63 = *(a3 + 280);
          v62 = *(a3 + 288);
          LOWORD(v150) = v137 + v62;
          v64 = v145;
          v65 = v144 - v145;
          v66 = &v150;
          v67 = 2;
          if ((v144 - v145) <= 1)
          {
            do
            {
              while (!v143)
              {
                if (!v148)
                {
                  sub_298B9BB84(&v141);
                  goto LABEL_80;
                }

                sub_298B9AE98(&v141);
                v64 = v145;
                v65 = v144 - v145;
                if (v144 - v145 >= v67)
                {
                  goto LABEL_104;
                }
              }

              if (v64 == v143)
              {
                v65 *= v67 / v65;
                v67 -= v65;
                sub_298B9BB84(&v141);
                v64 = v145;
                v72 = v144 - v145;
                if (v67 <= v144 - v145)
                {
                  sub_298B9BE18(&v141, v66 + v65, v67);
                  goto LABEL_80;
                }
              }

              else
              {
                sub_298B9BE18(&v141, v66, v65);
                v145 = v143;
                sub_298B9BB84(&v141);
                v67 -= v65;
                v64 = v145;
                v72 = v144 - v145;
              }

              v66 = (v66 + v65);
              v65 = v72;
            }

            while (v72 < v67);
LABEL_104:
            if (v67 > 1)
            {
              switch(v67)
              {
                case 2uLL:
                  goto LABEL_77;
                case 3uLL:
                  goto LABEL_109;
                case 4uLL:
                  v64[3] = *(v66 + 3);
                  v64 = v145;
LABEL_109:
                  v64[2] = *(v66 + 2);
                  v64 = v145;
                  goto LABEL_77;
              }

LABEL_112:
              memcpy(v64, v66, v67);
              goto LABEL_79;
            }

            if (!v67)
            {
              goto LABEL_79;
            }

            if (v67 != 1)
            {
              goto LABEL_112;
            }
          }

          else
          {
LABEL_77:
            v64[1] = *(v66 + 1);
            v64 = v145;
          }

          *v64 = *v66;
LABEL_79:
          v145 += v67;
LABEL_80:
          v68 = v145;
          v69 = v144 - v145;
          if (v62 <= v144 - v145)
          {
            if (!v62)
            {
              goto LABEL_125;
            }
          }

          else
          {
            do
            {
              v70 = v143;
              if (!v143)
              {
                while (v148)
                {
                  sub_298B9AE98(&v141);
                  v68 = v145;
                  v69 = v144 - v145;
                  if (v144 - v145 >= v62)
                  {
                    goto LABEL_114;
                  }

                  v70 = v143;
                  if (v143)
                  {
                    goto LABEL_82;
                  }
                }

                sub_298B9BB84(&v141);
                goto LABEL_125;
              }

LABEL_82:
              if (v68 == v70)
              {
                v69 *= v62 / v69;
                v62 -= v69;
                sub_298B9BB84(&v141);
                v68 = v145;
                v71 = v144 - v145;
                if (v62 <= v144 - v145)
                {
                  sub_298B9BE18(&v141, &v63[v69], v62);
                  goto LABEL_125;
                }
              }

              else
              {
                sub_298B9BE18(&v141, v63, v69);
                v145 = v143;
                sub_298B9BB84(&v141);
                v62 -= v69;
                v68 = v145;
                v71 = v144 - v145;
              }

              v63 += v69;
              v69 = v71;
            }

            while (v71 < v62);
LABEL_114:
            if (v62 > 1)
            {
              if (v62 != 2)
              {
                if (v62 != 3)
                {
                  if (v62 != 4)
                  {
                    goto LABEL_93;
                  }

                  v68[3] = v63[3];
                  v68 = v145;
                }

                v68[2] = v63[2];
                v68 = v145;
              }

              v68[1] = v63[1];
              v68 = v145;
LABEL_123:
              *v68 = *v63;
              goto LABEL_124;
            }

            if (!v62)
            {
              goto LABEL_124;
            }

            if (v62 == 1)
            {
              goto LABEL_123;
            }
          }

LABEL_93:
          memcpy(v68, v63, v62);
LABEL_124:
          v145 += v62;
LABEL_125:
          v73 = *(a3 + 72);
          v150 = v58;
          v151 = v73 | 0x1400000000;
          v152 = 0;
          v74 = *(a3 + 128);
          v75 = *(a3 + 120);
          if (v74 < *(a3 + 132))
          {
            goto LABEL_126;
          }

          if (v75 > &v150 || v75 + 24 * v74 <= &v150)
          {
            sub_298B90A44(a3 + 120, (a3 + 136), v74 + 1, 24);
            v75 = *(a3 + 120);
LABEL_126:
            v76 = &v150;
            goto LABEL_127;
          }

          v104 = &v150 - v75;
          sub_298B90A44(a3 + 120, (a3 + 136), v74 + 1, 24);
          v75 = *(a3 + 120);
          v76 = &v104[v75];
LABEL_127:
          v77 = v75 + 24 * *(a3 + 128);
          v78 = *v76;
          *(v77 + 16) = *(v76 + 2);
          *v77 = v78;
          ++*(a3 + 128);
          LODWORD(v150) = 0;
          v79 = v145;
          v80 = v144 - v145;
          v81 = &v150;
          if ((v144 - v145) <= 3)
          {
            v83 = 4;
            do
            {
              v98 = v143;
              if (!v143)
              {
                while (v148)
                {
                  sub_298B9AE98(&v141);
                  v79 = v145;
                  v80 = v144 - v145;
                  if (v144 - v145 >= v83)
                  {
                    goto LABEL_201;
                  }

                  v98 = v143;
                  if (v143)
                  {
                    goto LABEL_148;
                  }
                }

                sub_298B9BB84(&v141);
                v82 = v140;
                goto LABEL_134;
              }

LABEL_148:
              if (v79 == v98)
              {
                v80 *= v83 / v80;
                v83 -= v80;
                sub_298B9BB84(&v141);
                v79 = v145;
                v99 = v144 - v145;
                if (v83 <= v144 - v145)
                {
                  sub_298B9BE18(&v141, v81 + v80, v83);
                  v82 = v140;
                  goto LABEL_134;
                }
              }

              else
              {
                sub_298B9BE18(&v141, v81, v80);
                v145 = v143;
                sub_298B9BB84(&v141);
                v83 -= v80;
                v79 = v145;
                v99 = v144 - v145;
              }

              v81 = (v81 + v80);
              v80 = v99;
            }

            while (v99 < v83);
LABEL_201:
            if (v83 <= 1)
            {
              v82 = v140;
              if (!v83)
              {
                goto LABEL_133;
              }

              if (v83 != 1)
              {
                goto LABEL_208;
              }

              goto LABEL_132;
            }

            v82 = v140;
            if (v83 == 2)
            {
              goto LABEL_131;
            }

            if (v83 != 3)
            {
              if (v83 == 4)
              {
                goto LABEL_129;
              }

LABEL_208:
              memcpy(v79, v81, v83);
              goto LABEL_133;
            }
          }

          else
          {
            v82 = v140;
LABEL_129:
            v79[3] = *(v81 + 3);
            v79 = v145;
            v83 = 4;
          }

          v79[2] = *(v81 + 2);
          v79 = v145;
LABEL_131:
          v79[1] = *(v81 + 1);
          v79 = v145;
LABEL_132:
          *v79 = *v81;
LABEL_133:
          v145 += v83;
LABEL_134:
          v84 = *(a3 + 72);
          v150 = v58;
          v151 = v84 | 0x1300000000;
          v152 = 0;
          v85 = *(a3 + 128);
          v86 = *(a3 + 120);
          if (v85 < *(a3 + 132))
          {
            goto LABEL_135;
          }

          if (v86 > &v150 || v86 + 24 * v85 <= &v150)
          {
            sub_298B90A44(a3 + 120, (a3 + 136), v85 + 1, 24);
            v86 = *(a3 + 120);
LABEL_135:
            v87 = &v150;
            goto LABEL_136;
          }

          v105 = &v150 - v86;
          sub_298B90A44(a3 + 120, (a3 + 136), v85 + 1, 24);
          v86 = *(a3 + 120);
          v87 = &v105[v86];
LABEL_136:
          v88 = v86 + 24 * *(a3 + 128);
          v89 = *v87;
          *(v88 + 16) = *(v87 + 2);
          *v88 = v89;
          ++*(a3 + 128);
          LOWORD(v150) = 0;
          v90 = v145;
          v91 = v144 - v145;
          v92 = &v150;
          v93 = 2;
          if ((v144 - v145) > 1)
          {
LABEL_137:
            v90[1] = *(v92 + 1);
            v90 = v145;
LABEL_138:
            *v90 = *v92;
            goto LABEL_139;
          }

          do
          {
            v100 = v143;
            if (!v143)
            {
              while (1)
              {
                if (!v148)
                {
                  sub_298B9BB84(&v141);
                  goto LABEL_140;
                }

                sub_298B9AE98(&v141);
                v90 = v145;
                v91 = v144 - v145;
                if (v144 - v145 >= v93)
                {
                  break;
                }

                v100 = v143;
                v82 = v140;
                if (v143)
                {
                  goto LABEL_171;
                }
              }

              v82 = v140;
              if (v93 <= 1)
              {
                goto LABEL_210;
              }

LABEL_175:
              if (v93 == 2)
              {
                goto LABEL_137;
              }

              if (v93 != 3)
              {
                if (v93 != 4)
                {
                  goto LABEL_212;
                }

                v90[3] = *(v92 + 3);
                v90 = v145;
              }

              v90[2] = *(v92 + 2);
              v90 = v145;
              goto LABEL_137;
            }

LABEL_171:
            if (v90 == v100)
            {
              v91 *= v93 / v91;
              v93 -= v91;
              sub_298B9BB84(&v141);
              v90 = v145;
              v101 = v144 - v145;
              if (v93 <= (v144 - v145))
              {
                sub_298B9BE18(&v141, v92 + v91, v93);
                goto LABEL_140;
              }
            }

            else
            {
              sub_298B9BE18(&v141, v92, v91);
              v145 = v143;
              sub_298B9BB84(&v141);
              v93 -= v91;
              v90 = v145;
              v101 = v144 - v145;
            }

            v92 = (v92 + v91);
            v91 = v101;
          }

          while (v101 < v93);
          if (v93 > 1)
          {
            goto LABEL_175;
          }

LABEL_210:
          if (v93)
          {
            if (v93 != 1)
            {
LABEL_212:
              memcpy(v90, v92, v93);
              goto LABEL_139;
            }

            goto LABEL_138;
          }

LABEL_139:
          v145 += v93;
LABEL_140:
          LOWORD(v150) = v82;
          v94 = v145;
          v95 = v144 - v145;
          v96 = &v150;
          v97 = 2;
          if ((v144 - v145) > 1)
          {
LABEL_141:
            v94[1] = *(v96 + 1);
            v94 = v145;
LABEL_142:
            *v94 = *v96;
            goto LABEL_143;
          }

          do
          {
            v102 = v143;
            if (!v143)
            {
              while (1)
              {
                if (!v148)
                {
                  sub_298B9BB84(&v141);
                  goto LABEL_144;
                }

                sub_298B9AE98(&v141);
                v94 = v145;
                v95 = v144 - v145;
                if (v144 - v145 >= v97)
                {
                  break;
                }

                v102 = v143;
                v82 = v140;
                if (v143)
                {
                  goto LABEL_187;
                }
              }

              v82 = v140;
              if (v97 <= 1)
              {
                goto LABEL_214;
              }

LABEL_191:
              if (v97 == 2)
              {
                goto LABEL_141;
              }

              if (v97 != 3)
              {
                if (v97 != 4)
                {
                  goto LABEL_216;
                }

                v94[3] = *(v96 + 3);
                v94 = v145;
              }

              v94[2] = *(v96 + 2);
              v94 = v145;
              goto LABEL_141;
            }

LABEL_187:
            if (v94 == v102)
            {
              v95 *= v97 / v95;
              v97 -= v95;
              sub_298B9BB84(&v141);
              v94 = v145;
              v103 = v144 - v145;
              if (v97 <= (v144 - v145))
              {
                sub_298B9BE18(&v141, v96 + v95, v97);
                goto LABEL_144;
              }
            }

            else
            {
              sub_298B9BE18(&v141, v96, v95);
              v145 = v143;
              sub_298B9BB84(&v141);
              v97 -= v95;
              v94 = v145;
              v103 = v144 - v145;
            }

            v96 = (v96 + v95);
            v95 = v103;
          }

          while (v103 < v97);
          if (v97 > 1)
          {
            goto LABEL_191;
          }

LABEL_214:
          if (v97)
          {
            if (v97 != 1)
            {
LABEL_216:
              memcpy(v94, v96, v97);
              goto LABEL_143;
            }

            goto LABEL_142;
          }

LABEL_143:
          v145 += v97;
LABEL_144:
          v43 += v82;
          v16 = v39 > 0xF000;
          v39 -= v82;
        }

        while (v16);
        v37 = v132;
        v106 = v133;
        if (v132 != v133)
        {
          v107 = HIDWORD(v154[v134]);
LABEL_219:
          v108 = &v154[v37];
          v109 = *v108;
          v110 = v108[1];
          LOWORD(v150) = v107;
          v111 = v145;
          v112 = v144 - v145;
          v113 = &v150;
          v114 = 2;
          if ((v144 - v145) > 1)
          {
            goto LABEL_220;
          }

          while (1)
          {
            v119 = v143;
            if (!v143)
            {
              break;
            }

LABEL_229:
            v120 = v37;
            if (v111 == v119)
            {
              v121 = v114 / v112 * v112;
              v114 -= v121;
              sub_298B9BB84(&v141);
              v111 = v145;
              if (v114 <= (v144 - v145))
              {
                sub_298B9BE18(&v141, v113 + v121, v114);
                goto LABEL_261;
              }

              v106 = v133;
              v113 = (v113 + v121);
              v112 = v144 - v145;
              v37 = v120;
            }

            else
            {
              sub_298B9BE18(&v141, v113, v112);
              v145 = v143;
              sub_298B9BB84(&v141);
              v114 -= v112;
              v111 = v145;
              v113 = (v113 + v112);
              v112 = v144 - v145;
              v37 = v120;
              if (v144 - v145 >= v114)
              {
                if (v114 <= 1)
                {
                  goto LABEL_268;
                }

LABEL_239:
                if (v114 != 2)
                {
                  if (v114 != 3)
                  {
                    if (v114 != 4)
                    {
                      goto LABEL_270;
                    }

                    v111[3] = *(v113 + 3);
                    v111 = v145;
                  }

                  v111[2] = *(v113 + 2);
                  v111 = v145;
                }

LABEL_220:
                v111[1] = *(v113 + 1);
                v111 = v145;
LABEL_221:
                *v111 = *v113;
                goto LABEL_222;
              }
            }
          }

          while (1)
          {
            v120 = v37;
            if (!v148)
            {
              break;
            }

            sub_298B9AE98(&v141);
            v111 = v145;
            v112 = v144 - v145;
            if (v144 - v145 >= v114)
            {
              v37 = v120;
              v106 = v133;
              if (v114 > 1)
              {
                goto LABEL_239;
              }

LABEL_268:
              if (!v114)
              {
                goto LABEL_222;
              }

              if (v114 == 1)
              {
                goto LABEL_221;
              }

LABEL_270:
              v125 = v113;
              v126 = v37;
              memcpy(v111, v125, v114);
              v37 = v126;
LABEL_222:
              v145 += v114;
LABEL_223:
              LOWORD(v150) = v109;
              v115 = v145;
              v116 = v144 - v145;
              v117 = &v150;
              v118 = 2;
              if ((v144 - v145) > 1)
              {
LABEL_224:
                v115[1] = *(v117 + 1);
                v115 = v145;
                goto LABEL_225;
              }

              while (2)
              {
                v122 = v143;
                if (!v143)
                {
                  while (1)
                  {
                    v123 = v37;
                    if (!v148)
                    {
                      sub_298B9BB84(&v141);
                      goto LABEL_263;
                    }

                    sub_298B9AE98(&v141);
                    v115 = v145;
                    v116 = v144 - v145;
                    if (v144 - v145 >= v118)
                    {
                      break;
                    }

                    v122 = v143;
                    v37 = v123;
                    v106 = v133;
                    if (v143)
                    {
                      goto LABEL_245;
                    }
                  }

                  v37 = v123;
                  v106 = v133;
                  if (v118 <= 1)
                  {
                    goto LABEL_272;
                  }

LABEL_255:
                  if (v118 == 2)
                  {
                    goto LABEL_224;
                  }

                  if (v118 != 3)
                  {
                    if (v118 != 4)
                    {
                      goto LABEL_274;
                    }

                    v115[3] = *(v117 + 3);
                    v115 = v145;
                  }

                  v115[2] = *(v117 + 2);
                  v115 = v145;
                  goto LABEL_224;
                }

LABEL_245:
                v123 = v37;
                if (v115 == v122)
                {
                  v124 = v118 / v116 * v116;
                  v118 -= v124;
                  sub_298B9BB84(&v141);
                  v115 = v145;
                  if (v118 > (v144 - v145))
                  {
                    v106 = v133;
                    v117 = (v117 + v124);
                    v116 = v144 - v145;
                    v37 = v123;
                    continue;
                  }

                  sub_298B9BE18(&v141, v117 + v124, v118);
LABEL_263:
                  v106 = v133;
                  v107 += v109 + v110;
                  v37 = v123 + 1;
                  if (v123 + 1 == v133)
                  {
LABEL_35:
                    v37 = v106;
                    goto LABEL_36;
                  }
                }

                else
                {
                  sub_298B9BE18(&v141, v117, v116);
                  v145 = v143;
                  sub_298B9BB84(&v141);
                  v118 -= v116;
                  v115 = v145;
                  v117 = (v117 + v116);
                  v116 = v144 - v145;
                  v37 = v123;
                  if (v144 - v145 < v118)
                  {
                    continue;
                  }

                  if (v118 > 1)
                  {
                    goto LABEL_255;
                  }

LABEL_272:
                  if (v118)
                  {
                    if (v118 == 1)
                    {
LABEL_225:
                      *v115 = *v117;
                    }

                    else
                    {
LABEL_274:
                      v127 = v117;
                      v128 = v37;
                      memcpy(v115, v127, v118);
                      v37 = v128;
                    }
                  }

                  v145 += v118;
                  v107 += v109 + v110;
                  if (++v37 == v106)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_219;
              }
            }

            v119 = v143;
            v37 = v120;
            v106 = v133;
            if (v143)
            {
              goto LABEL_229;
            }
          }

          sub_298B9BB84(&v141);
LABEL_261:
          v37 = v120;
          v106 = v133;
          goto LABEL_223;
        }

LABEL_36:
        v36 = v37;
        v35 = v131;
      }

      while (v37 != v131);
    }
  }

  if (v154 != v156)
  {
    free(v154);
  }

  result = sub_298B9AE14(&v141);
  v130 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B2AF6C(uint64_t a1, const void *a2, uint64_t a3, const void *a4, unint64_t a5, uint64_t a6)
{
  *a1 = 0u;
  *(a1 + 16) = a6;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 13;
  if (a6)
  {
    v11 = *(a6 + 104);
    v10 = (a6 + 104);
    *a1 = v11;
    *(a1 + 8) = v10;
    *(v11 + 8) = a1;
    *v10 = a1;
  }

  v12 = 0;
  *(a1 + 232) = a1 + 248;
  v13 = a1 + 232;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 88;
  *(a1 + 72) = xmmword_298D1A0C0;
  *(a1 + 120) = a1 + 136;
  *(a1 + 128) = 0x400000000;
  *(a1 + 240) = 0x200000000;
  v14 = (16 * a3) >> 4;
  if (v14 >= 3)
  {
    v15 = a2;
    sub_298B90A44(v13, (a1 + 248), v14, 16);
    a2 = v15;
    v12 = *(a1 + 240);
  }

  if (a3)
  {
    memcpy((*(a1 + 232) + 16 * v12), a2, 16 * a3);
    v12 = *(a1 + 240);
  }

  *(a1 + 240) = v12 + a3;
  *(a1 + 280) = a1 + 304;
  *(a1 + 288) = xmmword_298D1A0C0;
  if (a5 >= 0x21)
  {
    sub_298B90C08(a1 + 280, (a1 + 304), a5, 1);
    v16 = *(a1 + 288);
LABEL_10:
    memcpy((*(a1 + 280) + v16), a4, a5);
    v16 = *(a1 + 288);
    goto LABEL_11;
  }

  v16 = 0;
  if (a5)
  {
    goto LABEL_10;
  }

LABEL_11:
  *(a1 + 288) = v16 + a5;
  return a1;
}

void sub_298B2B0DC(void *a1)
{
  if (a1)
  {
    sub_298B2B0DC(*a1);
    sub_298B2B0DC(a1[1]);

    operator delete(a1);
  }
}

void sub_298B2B12C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v10 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v10);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4) + a2;
    if (v7 > 0x555555555555555)
    {
      sub_298ADDDA0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x555555555555555)
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v11, v12);
    v13 = &v11[v12];
    v14 = &v11[-v6];
    if (v5 != v4)
    {
      v15 = v5;
      v16 = v14;
      do
      {
        v17 = *v15;
        *(v16 + 2) = v15[2];
        *v16 = v17;
        *(v16 + 4) = 0;
        *(v16 + 10) = 0;
        *(v16 + 3) = v15[3];
        v15[3] = 0;
        *(v16 + 8) = *(v15 + 8);
        *(v15 + 8) = 0;
        v18 = *(v16 + 9);
        *(v16 + 9) = *(v15 + 9);
        *(v15 + 9) = v18;
        v19 = *(v16 + 10);
        *(v16 + 10) = *(v15 + 10);
        *(v15 + 10) = v19;
        v15 += 6;
        v16 += 48;
      }

      while (v15 != v4);
      do
      {
        MEMORY[0x29C2945E0](v5[3], 4);
        v5 += 6;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v14;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

_DWORD *sub_298B2B354(uint64_t *a1, int a2)
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
  result = operator new(16 * v8, 4uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[4 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 4;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 4) = -1;
        *v13 = -1;
        v13 += 8;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[4 * v11];
        do
        {
          *v10 = -1;
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
        v24 = *v16;
        if (*v16 <= 0xFFFFFFFD)
        {
          v25 = *(a1 + 4) - 1;
          v26 = v25 & (37 * v24);
          v22 = *a1 + 16 * v26;
          v27 = *v22;
          if (v24 != *v22)
          {
            v28 = 0;
            v29 = 1;
            while (v27 != -1)
            {
              if (v28)
              {
                v30 = 0;
              }

              else
              {
                v30 = v27 == -2;
              }

              if (v30)
              {
                v28 = v22;
              }

              v31 = v26 + v29++;
              v26 = v31 & v25;
              v22 = *a1 + 16 * (v31 & v25);
              v27 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v28)
            {
              v22 = v28;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = *(v16 + 1);
          *(v22 + 12) = v16[3];
          *(v22 + 4) = v23;
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
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[4 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 4;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 4) = -1;
      *v19 = -1;
      v19 += 8;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[4 * v17];
      do
      {
        *v10 = -1;
        v10 += 4;
      }

      while (v10 != v21);
    }
  }

  return result;
}

uint64_t *sub_298B2B560(_DWORD *a1, void *a2, size_t a3, uint64_t a4, _DWORD *a5)
{
  v9 = sub_298B96440(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --a1[4];
    v12 = operator new(a3 + 17, 8uLL);
    v13 = v12 + 4;
    if (a3)
    {
LABEL_4:
      memcpy(v13, a2, a3);
    }
  }

  else
  {
    if (v11)
    {
      while (!v11 || v11 == -8)
      {
        v18 = v10[1];
        ++v10;
        v11 = v18;
      }

      return v10;
    }

    v12 = operator new(a3 + 17, 8uLL);
    v13 = v12 + 4;
    if (a3)
    {
      goto LABEL_4;
    }
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  v12[2] = *a5;
  *v10 = v12;
  ++a1[3];
  v10 = (*a1 + 8 * sub_298B96888(a1, v9));
  if (*v10)
  {
    v14 = *v10 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v10[1];
      ++v10;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v10;
}

uint64_t sub_298B2B688(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = a9;
  *(a1 + 16) = a10;
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v18;
  }

  v19 = *(a2 + 24);
  v20 = *(a2 + 5);
  *(a1 + 184) = 0u;
  *(a1 + 48) = v19;
  *(a1 + 64) = v20;
  *(a1 + 72) = a6;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = &unk_2A1F1BD70;
  *(a1 + 120) = sub_298B2BC84;
  *(a1 + 136) = a1 + 112;
  *(a1 + 144) = a3;
  *(a1 + 152) = a4;
  *(a1 + 160) = 0;
  *(a1 + 168) = a5;
  *(a1 + 176) = 0;
  *(a1 + 200) = a1 + 216;
  *(a1 + 208) = 0x400000000;
  *(a1 + 248) = a1 + 264;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1;
  *(a1 + 280) = 0u;
  *(a1 + 296) = a1 + 312;
  *(a1 + 304) = 0x400000000;
  *(a1 + 344) = a1 + 360;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  *(a1 + 392) = a1 + 408;
  *(a1 + 400) = 0x400000000;
  *(a1 + 440) = a1 + 456;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = a1 + 504;
  *(a1 + 496) = 0x400000000;
  *(a1 + 536) = a1 + 552;
  *(a1 + 560) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = a1 + 600;
  *(a1 + 592) = 0x400000000;
  *(a1 + 632) = a1 + 648;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 680) = a1 + 696;
  *(a1 + 688) = 0x400000000;
  *(a1 + 728) = a1 + 744;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  *(a1 + 776) = a1 + 792;
  *(a1 + 784) = 0x400000000;
  *(a1 + 824) = a1 + 840;
  *(a1 + 864) = 0;
  *(a1 + 848) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 872) = a1 + 888;
  *(a1 + 880) = 0x400000000;
  *(a1 + 920) = a1 + 936;
  *(a1 + 960) = 0;
  *(a1 + 944) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 968) = a1 + 984;
  *(a1 + 976) = 0x400000000;
  *(a1 + 1016) = a1 + 1032;
  *(a1 + 1056) = 0;
  *(a1 + 1040) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1064) = a1 + 1080;
  *(a1 + 1072) = 0x400000000;
  *(a1 + 1112) = a1 + 1128;
  *(a1 + 1148) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1164) = 16;
  *(a1 + 1168) = a1 + 184;
  *(a1 + 1192) = 0;
  *(a1 + 1176) = 0u;
  *(a1 + 1216) = 0;
  *(a1 + 1200) = 0u;
  *(a1 + 1220) = 16;
  *(a1 + 1224) = a1 + 184;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1252) = 16;
  *(a1 + 1256) = a1 + 184;
  *(a1 + 1280) = 0;
  *(a1 + 1264) = 0u;
  *(a1 + 1284) = 16;
  *(a1 + 1304) = 0;
  *(a1 + 1288) = 0u;
  *(a1 + 1312) = 2;
  *(a1 + 1352) = 0;
  *(a1 + 1336) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1360) = a1 + 1384;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 128;
  v21 = (a1 + 1528);
  *(a1 + 1512) = a1 + 1528;
  *(a1 + 1560) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1552) = a1 + 1560;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0;
  *(a1 + 1586) = 1;
  *(a1 + 1590) = 0;
  *(a1 + 1587) = 0;
  *(a1 + 1612) = 0;
  *(a1 + 1596) = 0u;
  *(a1 + 1624) = a1 + 1640;
  *(a1 + 1680) = 0u;
  *(a1 + 1664) = 0u;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1696) = 16777220;
  *(a1 + 1700) = 0;
  *(a1 + 1704) = 0;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1744) = 1065353216;
  *(a1 + 1768) = 0;
  *(a1 + 1752) = 0u;
  *(a1 + 1772) = 16;
  *(a1 + 1784) = 0u;
  *(a1 + 1776) = a1 + 1784;
  *(a1 + 1808) = 0u;
  *(a1 + 1800) = a1 + 1808;
  *(a1 + 1832) = 0u;
  *(a1 + 1824) = a1 + 1832;
  *(a1 + 1856) = 0u;
  *(a1 + 1848) = a1 + 1856;
  *(a1 + 1880) = 0u;
  *(a1 + 1872) = a1 + 1880;
  *(a1 + 1912) = 0;
  *(a1 + 1896) = 0u;
  *(a1 + 1916) = 16;
  *(a1 + 1936) = 0;
  *(a1 + 1920) = 0u;
  *(a1 + 1940) = 16;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = a1 + 1976;
  *(a1 + 1968) = 0x400000000;
  *(a1 + 2008) = a1 + 2024;
  *(a1 + 2032) = 0;
  *(a1 + 2016) = 0u;
  *(a1 + 2040) = a8;
  *(a1 + 2048) = a7;
  *(a1 + 2056) = 0;
  *(a1 + 2080) = 0;
  *(a1 + 2064) = 0u;
  *(a1 + 2084) = 96;
  *(a1 + 2096) = 0u;
  *(a1 + 2088) = a1 + 2096;
  *(a1 + 2128) = 0;
  *(a1 + 2112) = 0u;
  if (a7)
  {
    if (*(a7 + 119) < 0)
    {
      sub_298AFE11C(&__str, *(a7 + 96), *(a7 + 104));
    }

    else
    {
      __str = *(a7 + 96);
    }
  }

  else
  {
    sub_298B221EC(&__str, "");
  }

  std::string::operator=((a1 + 1320), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v22 = *(a1 + 72);
  if (v22)
  {
    v23 = *v22;
    if (-1431655765 * ((*(*(a1 + 72) + 8) - v23) >> 3))
    {
      v29[0] = (*(**v23 + 16))();
      v29[1] = v24;
      sub_298B30724(&__str, v29);
      if (*(a1 + 1551) < 0)
      {
        operator delete(*v21);
      }

      *v21 = *&__str.__r_.__value_.__l.__data_;
      *(a1 + 1544) = *(&__str.__r_.__value_.__l + 2);
    }
  }

  v25 = *(a2 + 11);
  if (v25 <= 4)
  {
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      goto LABEL_34;
    }

    if (v25 == 1)
    {
      if ((*(a2 + 9) - 13) < 2)
      {
        v26 = 3;
        goto LABEL_34;
      }

      v28 = "Cannot initialize MC for non-Windows COFF object files.";
    }

    else
    {
      if (v25 == 2)
      {
        v26 = 7;
LABEL_34:
        *a1 = v26;
        return a1;
      }

      if (v25)
      {
        return a1;
      }

      v28 = "Cannot initialize MC for unknown object file format.";
    }

    sub_298B868A8(v28, 1);
  }

  if (v25 <= 6)
  {
    if (v25 == 5)
    {
      v26 = 0;
    }

    else
    {
      v26 = 4;
    }

    goto LABEL_34;
  }

  if (v25 == 7)
  {
    v26 = 5;
    goto LABEL_34;
  }

  if (v25 == 8)
  {
    v26 = 6;
    goto LABEL_34;
  }

  return a1;
}

void sub_298B2BC84(uint64_t a1)
{
  v2 = sub_298B9CEA8();

  sub_298B91DD4(a1, 0, v2, 1, 1);
}

uint64_t sub_298B2BCCC(uint64_t a1)
{
  if (*(a1 + 2040) == 1)
  {
    sub_298B2BF14(a1);
  }

  MEMORY[0x29C2945E0](*(a1 + 2112), 8);
  sub_298B30DD8(*(a1 + 2096));
  sub_298B30E54(a1 + 2064);
  sub_298B2CFA0(a1 + 1944);
  sub_298AE9670(a1 + 1944);
  sub_298B30BE0(a1 + 1920);
  sub_298B30BE0(a1 + 1896);
  sub_298B30DD8(*(a1 + 1880));
  sub_298B30DD8(*(a1 + 1856));
  sub_298B30DD8(*(a1 + 1832));
  sub_298B30DD8(*(a1 + 1808));
  sub_298B30D78(*(a1 + 1784));
  sub_298B30BE0(a1 + 1752);
  sub_298B303B8(a1 + 1712);
  v2 = *(a1 + 1640);
  if (v2)
  {
    *(a1 + 1648) = v2;
    operator delete(v2);
  }

  sub_298AE841C((a1 + 1600));
  sub_298B30D20(*(a1 + 1560));
  if (*(a1 + 1551) < 0)
  {
    operator delete(*(a1 + 1528));
  }

  sub_298B30C5C(a1 + 1512);
  v3 = *(a1 + 1360);
  if (v3 != (a1 + 1384))
  {
    free(v3);
  }

  v4 = *(a1 + 1344);
  *(a1 + 1344) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(a1 + 1343) < 0)
  {
    operator delete(*(a1 + 1320));
  }

  MEMORY[0x29C2945E0](*(a1 + 1288), 8);
  sub_298B30BE0(a1 + 1264);
  free(*(a1 + 1232));
  free(*(a1 + 1200));
  MEMORY[0x29C2945E0](*(a1 + 1176), 8);
  free(*(a1 + 1144));
  sub_298B2CBE0(a1 + 1048);
  sub_298AE9670(a1 + 1048);
  sub_298B2CAB8(a1 + 952);
  sub_298AE9670(a1 + 952);
  sub_298B2C990(a1 + 856);
  sub_298AE9670(a1 + 856);
  sub_298B2CD24(a1 + 760);
  sub_298AE9670(a1 + 760);
  sub_298B2C5EC(a1 + 664);
  sub_298AE9670(a1 + 664);
  sub_298B2C714(a1 + 568);
  sub_298AE9670(a1 + 568);
  sub_298B2C4C4(a1 + 472);
  sub_298AE9670(a1 + 472);
  sub_298B2C39C(a1 + 376);
  sub_298AE9670(a1 + 376);
  sub_298B2C274(a1 + 280);
  sub_298AE9670(a1 + 280);
  sub_298AE9670(a1 + 184);
  sub_298B2D1C0((a1 + 176), 0);
  sub_298B30B60(a1 + 112);
  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 96) = v5;
    operator delete(v5);
  }

  sub_298B2C188((a1 + 80));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_298B2BF14(uint64_t a1)
{
  *(a1 + 72) = 0;
  sub_298B2C188((a1 + 80));
  *(a1 + 96) = *(a1 + 88);
  sub_298B2C1D4(a1 + 112);
  sub_298B2C274(a1 + 280);
  sub_298B2C39C(a1 + 376);
  sub_298B2C4C4(a1 + 472);
  sub_298B2C5EC(a1 + 664);
  sub_298B2C714(a1 + 568);
  sub_298B2C990(a1 + 856);
  sub_298B2CAB8(a1 + 952);
  sub_298B2CBE0(a1 + 1048);
  sub_298B2CD24(a1 + 760);
  sub_298B2CFA0(a1 + 1944);
  if (*(a1 + 1244))
  {
    v2 = *(a1 + 1240);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        *(*(a1 + 1232) + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    *(a1 + 1244) = 0;
  }

  if (*(a1 + 1212))
  {
    v5 = *(a1 + 1208);
    if (v5)
    {
      v6 = 0;
      v7 = 8 * v5;
      do
      {
        *(*(a1 + 1200) + v6) = 0;
        v6 += 8;
      }

      while (v7 != v6);
    }

    *(a1 + 1212) = 0;
  }

  if (*(a1 + 1156))
  {
    v8 = *(a1 + 1152);
    if (v8)
    {
      v9 = 0;
      v10 = 8 * v8;
      do
      {
        *(*(a1 + 1144) + v9) = 0;
        v9 += 8;
      }

      while (v10 != v9);
    }

    *(a1 + 1156) = 0;
  }

  sub_298AE95D0(a1 + 184);
  sub_298B2D130((a1 + 1288));
  *(a1 + 1368) = 0;
  if (*(a1 + 1551) < 0)
  {
    **(a1 + 1528) = 0;
    *(a1 + 1536) = 0;
  }

  else
  {
    *(a1 + 1528) = 0;
    *(a1 + 1551) = 0;
  }

  sub_298B30D20(*(a1 + 1560));
  *(a1 + 1552) = a1 + 1560;
  *(a1 + 1560) = 0u;
  sub_298B3132C((a1 + 1600));
  *(a1 + 1632) = 0;
  *(a1 + 1648) = *(a1 + 1640);
  *(a1 + 1664) = 0u;
  *(a1 + 1704) = 0;
  *(a1 + 1576) = 0;
  *(a1 + 1584) = 0x10000;
  sub_298B2D1C0((a1 + 176), 0);
  sub_298B2D20C(a1 + 1752);
  sub_298B30D78(*(a1 + 1784));
  *(a1 + 1776) = a1 + 1784;
  *(a1 + 1784) = 0u;
  sub_298B30DD8(*(a1 + 1832));
  *(a1 + 1824) = a1 + 1832;
  *(a1 + 1832) = 0u;
  sub_298B30DD8(*(a1 + 1808));
  *(a1 + 1800) = a1 + 1808;
  *(a1 + 1808) = 0u;
  sub_298B30DD8(*(a1 + 1856));
  *(a1 + 1848) = a1 + 1856;
  *(a1 + 1856) = 0u;
  sub_298B30DD8(*(a1 + 1880));
  *(a1 + 1872) = a1 + 1880;
  *(a1 + 1880) = 0u;
  sub_298B2D20C(a1 + 1896);
  sub_298B30DD8(*(a1 + 2096));
  *(a1 + 2088) = a1 + 2096;
  *(a1 + 2096) = 0u;
  sub_298B3155C((a1 + 2112));
  result = sub_298B2D20C(a1 + 1264);
  *(a1 + 1699) = 1;
  *(a1 + 1592) = 0;
  *(a1 + 1596) = 0;
  *(a1 + 2056) = 0;
  return result;
}

uint64_t sub_298B2C188(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_298B90F10(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B2C1D4(uint64_t a1)
{
  v4[4] = *MEMORY[0x29EDCA608];
  v4[0] = &unk_2A1F1BD70;
  v4[1] = sub_298B2BC84;
  v4[3] = v4;
  sub_298B30FF4(v4, a1);
  sub_298B30B60(v4);
  v2 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t sub_298B2C274(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 31;
      while (v19 <= v14)
      {
        v20 = sub_298B5676C(v18);
        v19 = v20 + 62;
        v18 = v20 + 31;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 31;
      while (v11 <= v10)
      {
        v12 = sub_298B5676C(v9);
        v11 = v12 + 62;
        v9 = v12 + 31;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2C39C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 28;
      while (v19 <= v14)
      {
        v20 = sub_298B5676C(v18);
        v19 = v20 + 56;
        v18 = v20 + 28;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 28;
      while (v11 <= v10)
      {
        v12 = sub_298B5676C(v9);
        v11 = v12 + 56;
        v9 = v12 + 28;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2C4C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 32;
      while (v19 <= v14)
      {
        v20 = sub_298B5676C(v18);
        v19 = v20 + 64;
        v18 = v20 + 32;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 32;
      while (v11 <= v10)
      {
        v12 = sub_298B5676C(v9);
        v11 = v12 + 64;
        v9 = v12 + 32;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2C5EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 30;
      while (v19 <= v14)
      {
        v20 = sub_298B5676C(v18);
        v19 = v20 + 60;
        v18 = v20 + 30;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 30;
      while (v11 <= v10)
      {
        v12 = sub_298B5676C(v9);
        v11 = v12 + 60;
        v9 = v12 + 30;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2C714(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(result + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(v1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(v1 + 24) - 8))
      {
        v8 = *v1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 31;
      while (v10 <= v8)
      {
        v11 = v10;
        *v9 = &unk_2A1F1CE28;
        v12 = v9[19];
        if (v12 != v9 + 21)
        {
          free(v12);
        }

        v13 = v9[15];
        if (v13 != v9 + 17)
        {
          free(v13);
        }

        v14 = v9 + 13;
        result = v9[14];
        if (result != v9 + 13)
        {
          do
          {
            v15 = *result;
            v16 = *(result + 8);
            *v16 = *result;
            *(v15 + 8) = v16;
            *result = 0;
            *(result + 8) = 0;
            sub_298B462C8(result);
            result = v16;
          }

          while (v16 != v14);
        }

        v10 = v11 + 31;
        v9 = v11;
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v17 = *(v1 + 72);
  if (v17)
  {
    v18 = *(v1 + 64);
    v19 = &v18[2 * v17];
    do
    {
      v20 = ((*v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v21 = *v18 + v18[1];
      v22 = v20 + 31;
      while (v22 <= v21)
      {
        v23 = v22;
        *v20 = &unk_2A1F1CE28;
        v24 = v20[19];
        if (v24 != v20 + 21)
        {
          free(v24);
        }

        v25 = v20[15];
        if (v25 != v20 + 17)
        {
          free(v25);
        }

        v26 = v20 + 13;
        result = v20[14];
        if (result != v20 + 13)
        {
          do
          {
            v27 = *result;
            v28 = *(result + 8);
            *v28 = *result;
            *(v27 + 8) = v28;
            *result = 0;
            *(result + 8) = 0;
            sub_298B462C8(result);
            result = v28;
          }

          while (v28 != v26);
        }

        v22 = v23 + 31;
        v20 = v23;
      }

      v18 += 2;
    }

    while (v18 != v19);
    v29 = *(v1 + 72);
    if (v29)
    {
      v36 = *(v1 + 64);
      v37 = 16 * v29;
      do
      {
        v38 = *v36;
        v36 += 2;
        result = MEMORY[0x29C2945E0](v38, 8);
        v37 -= 16;
      }

      while (v37);
    }
  }

  *(v1 + 72) = 0;
  v30 = *(v1 + 24);
  if (v30)
  {
    *(v1 + 80) = 0;
    v31 = *(v1 + 16);
    v32 = *v31 + 4096;
    *v1 = *v31;
    *(v1 + 8) = v32;
    if (v30 != 1)
    {
      v33 = v31 + 1;
      v34 = 8 * v30 - 8;
      do
      {
        v35 = *v33++;
        result = MEMORY[0x29C2945E0](v35, 8);
        v34 -= 8;
      }

      while (v34);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_298B2C990(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 33;
      while (v19 <= v14)
      {
        v20 = sub_298B5676C(v18);
        v19 = v20 + 66;
        v18 = v20 + 33;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 33;
      while (v11 <= v10)
      {
        v12 = sub_298B5676C(v9);
        v11 = v12 + 66;
        v9 = v12 + 33;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2CAB8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      v19 = v18 + 34;
      while (v19 <= v14)
      {
        v20 = sub_298B59FBC(v18);
        v19 = v20 + 68;
        v18 = v20 + 34;
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = *v6 + v6[1];
      v11 = v9 + 34;
      while (v11 <= v10)
      {
        v12 = sub_298B59FBC(v9);
        v11 = v12 + 68;
        v9 = v12 + 34;
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2CBE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v5 = *(a1 + 16);
    v6 = &v5[v2];
    do
    {
      v13 = *(a1 + 16);
      v14 = *v5;
      if (*v5 == *(v13 + 8 * *(a1 + 24) - 8))
      {
        v12 = *a1;
      }

      else
      {
        v15 = ((v5 - v13) >> 10) & 0x1FFFFFF;
        if (v15 >= 0x1E)
        {
          LOBYTE(v15) = 30;
        }

        v12 = v14 + (4096 << v15);
      }

      for (i = ((v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 192; i <= v12; i += 192)
      {
        v17 = *(i - 176);
        if ((i - 160) != v17)
        {
          free(v17);
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v7 = *(a1 + 64);
    v8 = &v7[2 * v3];
    do
    {
      v9 = *v7 + v7[1];
      for (j = ((*v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 192; j <= v9; j += 192)
      {
        v11 = *(j - 176);
        if ((j - 160) != v11)
        {
          free(v11);
        }
      }

      v7 += 2;
    }

    while (v7 != v8);
  }

  return sub_298AE95D0(a1);
}

uint64_t sub_298B2CD24(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(result + 16);
    v4 = &v3[v2];
    do
    {
      v5 = *(v1 + 16);
      v6 = *v3;
      if (*v3 == *(v5 + 8 * *(v1 + 24) - 8))
      {
        v8 = *v1;
      }

      else
      {
        v7 = ((v3 - v5) >> 10) & 0x1FFFFFF;
        if (v7 >= 0x1E)
        {
          LOBYTE(v7) = 30;
        }

        v8 = v6 + (4096 << v7);
      }

      v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      v10 = v9 + 28;
      while (v10 <= v8)
      {
        v11 = v10;
        *v9 = &unk_2A1F1CE28;
        v12 = v9[19];
        if (v12 != v9 + 21)
        {
          free(v12);
        }

        v13 = v9[15];
        if (v13 != v9 + 17)
        {
          free(v13);
        }

        v14 = v9 + 13;
        result = v9[14];
        if (result != v9 + 13)
        {
          do
          {
            v15 = *result;
            v16 = *(result + 8);
            *v16 = *result;
            *(v15 + 8) = v16;
            *result = 0;
            *(result + 8) = 0;
            sub_298B462C8(result);
            result = v16;
          }

          while (v16 != v14);
        }

        v10 = v11 + 28;
        v9 = v11;
      }

      ++v3;
    }

    while (v3 != v4);
  }

  v17 = *(v1 + 72);
  if (v17)
  {
    v18 = *(v1 + 64);
    v19 = &v18[2 * v17];
    do
    {
      v20 = ((*v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      v21 = *v18 + v18[1];
      v22 = v20 + 28;
      while (v22 <= v21)
      {
        v23 = v22;
        *v20 = &unk_2A1F1CE28;
        v24 = v20[19];
        if (v24 != v20 + 21)
        {
          free(v24);
        }

        v25 = v20[15];
        if (v25 != v20 + 17)
        {
          free(v25);
        }

        v26 = v20 + 13;
        result = v20[14];
        if (result != v20 + 13)
        {
          do
          {
            v27 = *result;
            v28 = *(result + 8);
            *v28 = *result;
            *(v27 + 8) = v28;
            *result = 0;
            *(result + 8) = 0;
            sub_298B462C8(result);
            result = v28;
          }

          while (v28 != v26);
        }

        v22 = v23 + 28;
        v20 = v23;
      }

      v18 += 2;
    }

    while (v18 != v19);
    v29 = *(v1 + 72);
    if (v29)
    {
      v36 = *(v1 + 64);
      v37 = 16 * v29;
      do
      {
        v38 = *v36;
        v36 += 2;
        result = MEMORY[0x29C2945E0](v38, 8);
        v37 -= 16;
      }

      while (v37);
    }
  }

  *(v1 + 72) = 0;
  v30 = *(v1 + 24);
  if (v30)
  {
    *(v1 + 80) = 0;
    v31 = *(v1 + 16);
    v32 = *v31 + 4096;
    *v1 = *v31;
    *(v1 + 8) = v32;
    if (v30 != 1)
    {
      v33 = v31 + 1;
      v34 = 8 * v30 - 8;
      do
      {
        v35 = *v33++;
        result = MEMORY[0x29C2945E0](v35, 8);
        v34 -= 8;
      }

      while (v34);
    }

    *(v1 + 24) = 1;
  }

  return result;
}

uint64_t sub_298B2CFA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v4 = *(a1 + 16);
    v5 = &v4[v1];
    do
    {
      v15 = *(a1 + 16);
      v16 = *v4;
      if (*v4 == *(v15 + 8 * *(a1 + 24) - 8))
      {
        v13 = a1;
        v14 = *a1;
      }

      else
      {
        v13 = a1;
        v17 = ((v4 - v15) >> 10) & 0x1FFFFFF;
        if (v17 >= 0x1E)
        {
          LOBYTE(v17) = 30;
        }

        v14 = v16 + (4096 << v17);
      }

      v18 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v18 + 336 <= v14)
      {
        v19 = ((v16 + 7) & 0xFFFFFFFFFFFFFFF8);
        do
        {
          (**v19)(v19);
          v20 = v19 + 84;
          v19 += 42;
          v18 += 336;
        }

        while (v20 <= v14);
      }

      ++v4;
      a1 = v13;
    }

    while (v4 != v5);
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    v6 = *(a1 + 64);
    v7 = &v6[2 * v2];
    do
    {
      v8 = a1;
      v9 = (*v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      v10 = *v6 + v6[1];
      if (v9 + 336 <= v10)
      {
        v11 = ((*v6 + 7) & 0xFFFFFFFFFFFFFFF8);
        do
        {
          (**v11)(v11);
          v12 = v11 + 84;
          v11 += 42;
          v9 += 336;
        }

        while (v12 <= v10);
      }

      v6 += 2;
      a1 = v8;
    }

    while (v6 != v7);
  }

  return sub_298AE95D0(a1);
}

_DWORD *sub_298B2D130(_DWORD *result)
{
  if (*(result + 1))
  {
    v1 = result[4];
    if (v1 > 4 * result[2] && v1 >= 0x41)
    {
      return sub_298B31238(result);
    }

    if (!v1)
    {
      goto LABEL_14;
    }

    v2 = *result;
    v3 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v3)
    {
      v4 = v3 + 1;
      v5 = (v3 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v6 = &v2[4 * v5];
      v7 = v2 + 4;
      v8 = v5;
      do
      {
        *(v7 - 4) = -1;
        *v7 = -1;
        v7 += 8;
        v8 -= 2;
      }

      while (v8);
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v6 = *result;
    }

    v9 = &v2[4 * v1];
    do
    {
      *v6 = -1;
      v6 += 4;
    }

    while (v6 != v9);
LABEL_14:
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_298B2D1C0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298B272AC(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B2D20C(uint64_t result)
{
  if (*(result + 12))
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *v1;
        result = *(*v1 + v3);
        if (result != -8 && result != 0)
        {
          result = MEMORY[0x29C2945E0]();
        }

        *(v5 + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    *(v1 + 12) = 0;
    *(v1 + 16) = 0;
  }

  return result;
}

unint64_t sub_298B2D288(uint64_t a1, void **a2)
{
  v26[16] = *MEMORY[0x29EDCA608];
  v24 = v26;
  v25 = xmmword_298D1A050;
  v3 = *(a2 + 32);
  if (*(a2 + 33) != 1)
  {
    goto LABEL_14;
  }

  if (*(a2 + 32) > 4u)
  {
    if ((v3 - 5) < 2)
    {
      v5 = *a2;
      v6 = a2[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_15;
  }

  if (v3 == 3)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = strlen(*a2);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_15;
  }

  if (v3 != 4)
  {
LABEL_14:
    v16 = 0;
    v20 = 0;
    v21 = 0;
    v23 = &v24;
    v22 = 0;
    v15 = &unk_2A1F1E0B8;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    sub_298B99BA4(a1, &v15, *a2, a2[1], v3);
    sub_298B99BA4(v8, &v15, a2[2], a2[3], *(a2 + 33));
    sub_298B9AE14(&v15);
    v5 = v24;
    v6 = v25;
    goto LABEL_15;
  }

  v4 = *(*a2 + 23);
  if (v4 >= 0)
  {
    v5 = *a2;
  }

  else
  {
    v5 = **a2;
  }

  if (v4 >= 0)
  {
    v6 = *(*a2 + 23);
  }

  else
  {
    v6 = (*a2)[1];
  }

LABEL_15:
  v9 = sub_298BA724C(v5, v6);
  v10 = sub_298B316EC(a1 + 1144, v5, v6, v9);
  v11 = *v10;
  v12 = *(*v10 + 8);
  if (!v12)
  {
    v12 = sub_298B2D464(a1, v5, v6, 0, 0);
    *(v11 + 8) = v12;
  }

  if (v24 != v26)
  {
    free(v24);
  }

  v13 = *MEMORY[0x29EDCA608];
  return v12;
}

unint64_t sub_298B2D464(uint64_t a1, int8x16_t *__s1, unint64_t a3, int a4, int a5)
{
  v51[16] = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    if (*(a1 + 1699) == 1 && (v10 = *(a1 + 144), v11 = *(v10 + 96), a3 >= v11))
    {
      if (!v11)
      {
        goto LABEL_3;
      }

      if (!memcmp(__s1, *(v10 + 88), v11))
      {
        v9 = 1027;
      }

      else
      {
        v9 = 1025;
      }
    }

    else
    {
      v9 = 1025;
    }

LABEL_7:
    v49 = v51;
    v50 = xmmword_298D1A050;
    if (a3 < 0x81)
    {
      v12 = 0;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_298B90C08(&v49, v51, a3, 1);
      v12 = v50;
    }

    memcpy(v49 + v12, __s1, a3);
    v12 = v50;
LABEL_11:
    *&v50 = v12 + a3;
    v13 = sub_298BA724C(__s1, a3);
    v14 = sub_298B96440(a1 + 1264, __s1, a3, v13);
    v15 = *(a1 + 1264);
    v16 = v14;
    v17 = *(v15 + 8 * v14);
    if (v17 == -8)
    {
      --*(a1 + 1280);
    }

    else if (v17)
    {
      goto LABEL_26;
    }

    v18 = operator new(a3 + 17, 8uLL);
    v19 = v18;
    v20 = v18 + 16;
    if (a3)
    {
      memcpy(v18 + 16, __s1, a3);
    }

    v20[a3] = 0;
    *v19 = a3;
    *(v19 + 2) = 0;
    *(v15 + 8 * v16) = v19;
    ++*(a1 + 1276);
    v21 = (*(a1 + 1264) + 8 * sub_298B96888((a1 + 1264), v16));
    v17 = *v21;
    if (*v21)
    {
      v22 = v17 == -8;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      do
      {
        v23 = v21[1];
        ++v21;
        v17 = v23;
        if (v23)
        {
          v24 = v17 == -8;
        }

        else
        {
          v24 = 1;
        }
      }

      while (v24);
    }

LABEL_26:
    if (!a4)
    {
      goto LABEL_51;
    }

    do
    {
      v33 = v50;
      if (v50 != a3)
      {
        if (v50 <= a3)
        {
          if (*(&v50 + 1) < a3)
          {
            sub_298B90C08(&v49, v51, a3, 1);
            v33 = v50;
          }

          if (a3 != v33)
          {
            bzero(v49 + v33, a3 - v33);
          }
        }

        *&v50 = a3;
      }

      LODWORD(v43) = 0;
      v45 = 0;
      v46 = 0;
      v48 = &v49;
      v47 = 0;
      v42 = &unk_2A1F1E0B8;
      memset(v44, 0, sizeof(v44));
      v34 = *(v17 + 8);
      *(v17 + 8) = v34 + 1;
      sub_298B8FC48(&v42, v34, 0, 0, 0);
      sub_298B9AE14(&v42);
LABEL_51:
      v35 = v49;
      v36 = v50;
      v42 = v49;
      v43 = v50;
      LOBYTE(v44[0]) = 1;
      v37 = sub_298BA724C(v49, v50);
      v38 = *sub_298B317F4(a1 + 1200, v35, v36, v37, v44);
    }

    while ((v39 & 1) == 0 && (*(v38 + 8) & 1) != 0);
    *(v38 + 8) = 1;
    if (!*a1)
    {
      v40 = sub_298AE0D6C(a1 + 184, 40, 3);
      v41 = *(v40 + 16) & 0xFFFF0000FFF00000;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0;
      *(v40 + 16) = v41 | v9;
      *v40 = v38;
      *(v40 + 8) = 0;
      v26 = v40 + 8;
      if (v49 != v51)
      {
        free(v49);
      }

      goto LABEL_42;
    }

LABEL_56:
    sub_298B868A8("not supported", 1);
  }

  if (*(a1 + 1700))
  {
LABEL_3:
    v9 = 1027;
    goto LABEL_7;
  }

  if (*a1)
  {
    goto LABEL_56;
  }

  *(a1 + 264) += 32;
  v25 = *(a1 + 184);
  if (v25 && ((v25 + 7) & 0xFFFFFFFFFFFFFFF8) - v25 + 32 <= *(a1 + 192) - v25)
  {
    v26 = (v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  else
  {
    v27 = *(a1 + 208) >> 7;
    if (v27 >= 0x1E)
    {
      LOBYTE(v27) = 30;
    }

    v28 = 4096 << v27;
    v26 = operator new(4096 << v27, 8uLL);
    v29 = *(a1 + 208);
    if (v29 >= *(a1 + 212))
    {
      sub_298B90A44(a1 + 200, (a1 + 216), v29 + 1, 8);
      LODWORD(v29) = *(a1 + 208);
    }

    *(*(a1 + 200) + 8 * v29) = v26;
    ++*(a1 + 208);
    *(a1 + 192) = v26 + v28;
  }

  *(a1 + 184) = v26 + 32;
  v30 = *(v26 + 8) & 0xFFFF0000FFF00000;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *v26 = 0;
  *(v26 + 8) = v30 | 0x402;
LABEL_42:
  v31 = *MEMORY[0x29EDCA608];
  return v26;
}

unint64_t sub_298B2D8D0(uint64_t a1, uint64_t a2, int a3)
{
  v22[16] = *MEMORY[0x29EDCA608];
  v19 = &v20;
  v20 = v22;
  v21 = xmmword_298D1A050;
  v12 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v11 = &unk_2A1F1E0B8;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v6 = *(a1 + 144);
  v7 = *(v6 + 96);
  if (v7)
  {
    sub_298B9BCEC(&v11, *(v6 + 88), v7);
  }

  sub_298B99AA0(a2, &v11);
  sub_298B9AE14(&v11);
  result = sub_298B2D464(a1, v20, v21, a3, 1);
  if (v20 != v22)
  {
    v9 = result;
    free(v20);
    result = v9;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_298B2D9E8(uint64_t a1, uint64_t a2)
{
  v21[16] = *MEMORY[0x29EDCA608];
  v18 = &v19;
  v19 = v21;
  v20 = xmmword_298D1A050;
  v11 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v10 = &unk_2A1F1E0B8;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = *(a1 + 144);
  v5 = *(v4 + 128);
  if (v5)
  {
    v6 = (v4 + 120);
  }

  else
  {
    v5 = *(v4 + 96);
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = (v4 + 88);
  }

  sub_298B9BCEC(&v10, *v6, v5);
LABEL_6:
  sub_298B99AA0(a2, &v10);
  sub_298B9AE14(&v10);
  result = sub_298B2D464(a1, v19, v20, 1, 0);
  if (v19 != v21)
  {
    v8 = result;
    free(v19);
    result = v8;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B2DB08(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, _BYTE *a9)
{
  v41[0] = a2;
  v41[1] = a3;
  v41[2] = 44;
  v42 = 2053;
  v43[0] = v41;
  v43[2] = a4;
  v43[3] = a5;
  v44 = 1282;
  sub_298B996A4(v43, __p);
  if (v46 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v46 >= 0)
  {
    v14 = v46;
  }

  else
  {
    v14 = __p[1];
  }

  v15 = sub_298BA724C(v13, v14);
  v16 = sub_298B96440(a1 + 1752, v13, v14, v15);
  v17 = *(a1 + 1752) + 8 * v16;
  v18 = *v17;
  if (*v17 == -8)
  {
    --*(a1 + 1768);
    v19 = operator new(v14 + 17, 8uLL);
    v20 = v19 + 2;
    if (!v14)
    {
LABEL_11:
      v20[v14] = 0;
      *v19 = v14;
      v19[1] = 0;
      *v17 = v19;
      ++*(a1 + 1764);
      v17 = *(a1 + 1752) + 8 * sub_298B96888((a1 + 1752), v16);
      if (*v17)
      {
        v21 = *v17 == -8;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        do
        {
          v23 = *(v17 + 8);
          v17 += 8;
          v22 = v23;
          if (v23)
          {
            v24 = v22 == -8;
          }

          else
          {
            v24 = 1;
          }
        }

        while (v24);
      }

      v25 = 1;
      if (v46 < 0)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_10:
    memcpy(v20, v13, v14);
    goto LABEL_11;
  }

  if (!v18)
  {
    v19 = operator new(v14 + 17, 8uLL);
    v20 = v19 + 2;
    if (!v14)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  while (!v18 || v18 == -8)
  {
    v28 = *(v17 + 8);
    v17 += 8;
    v18 = v28;
  }

  v25 = 0;
  if (v46 < 0)
  {
LABEL_21:
    operator delete(__p[0]);
  }

LABEL_22:
  if (v25)
  {
    if (a9)
    {
      v26 = 1;
      HIBYTE(v44) = 1;
      if (*a9)
      {
        v43[0] = a9;
        v26 = 3;
      }

      LOBYTE(v44) = v26;
      v27 = sub_298B2D8D0(a1, v43, 0);
    }

    else
    {
      v27 = 0;
    }

    v29 = *v17 + 16;
    v30 = **v17;
    *(a1 + 648) += 248;
    v31 = *(a1 + 568);
    if (v31 && ((v31 + 7) & 0xFFFFFFFFFFFFFFF8) - v31 + 248 <= *(a1 + 576) - v31)
    {
      v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v33 = *(a1 + 592) >> 7;
      if (v33 >= 0x1E)
      {
        LOBYTE(v33) = 30;
      }

      v34 = 4096 << v33;
      v32 = operator new(4096 << v33, 8uLL);
      v35 = *(a1 + 592);
      if (v35 >= *(a1 + 596))
      {
        sub_298B90A44(a1 + 584, (a1 + 600), v35 + 1, 8);
        LODWORD(v35) = *(a1 + 592);
      }

      *(*(a1 + 584) + 8 * v35) = v32;
      ++*(a1 + 592);
      *(a1 + 576) = v32 + v34;
    }

    *(a1 + 568) = v32 + 248;
    v36 = v30 - a5;
    if (v30 < v30 - a5)
    {
      v36 = v30;
    }

    sub_298B596D4(v32, a2, a3, v29 + v36, v30 - v36, a6, a7, a8, v27);
    *(*v17 + 8) = v32;
  }

  return *(*v17 + 8);
}

const void *sub_298B2DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v38 = *MEMORY[0x29EDCA608];
  if (a6)
  {
    if (*(a6 + 8))
    {
      v12 = *(a6 - 8);
      v13 = *v12;
      v11 = (v12 + 2);
      v24 = v13;
    }

    else
    {
      v11 = 0;
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v11 = "";
  }

  sub_298B996A4(a2, v25);
  if (v26 >= 0)
  {
    v14 = v25;
  }

  else
  {
    v14 = v25[0];
  }

  if (v26 >= 0)
  {
    v15 = v26;
  }

  else
  {
    v15 = v25[1];
  }

  if (a9)
  {
    if (*(a9 + 8))
    {
      v18 = *(a9 - 8);
      v19 = *v18;
      v16 = (v18 + 2);
      v17 = v19;
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v17 = 0;
    v16 = "";
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_37:
      sub_298ADDDA0();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v34) = v15;
  if (v15)
  {
    memmove(&__dst, v14, v15);
  }

  *(&__dst + v15) = 0;
  *&v35 = v11;
  *(&v35 + 1) = v24;
  *&v36 = v16;
  *(&v36 + 1) = v17;
  v37 = a8;
  *__p = __dst;
  v28 = v34;
  v31 = a8;
  v29 = v35;
  v30 = v36;
  v32 = 0;
  v20 = *(a1 + 1784);
  if (!v20)
  {
LABEL_30:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v21 = v20;
      if (!sub_298B31908(__p, v20 + 4))
      {
        break;
      }

      v20 = *v21;
      if (!*v21)
      {
        goto LABEL_30;
      }
    }

    if (!sub_298B31908(v21 + 4, __p))
    {
      break;
    }

    v20 = v21[1];
    if (!v20)
    {
      goto LABEL_30;
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v25[0]);
LABEL_36:
  v22 = *MEMORY[0x29EDCA608];
  return v21[12];
}

const void *sub_298B2EF40(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, unsigned int a8, unsigned int a9)
{
  v10 = a6;
  if (a7)
  {
    WORD4(v25) = 261;
    __p[0] = a6;
    __p[1] = a7;
    v14 = sub_298B2D288(a1, __p);
    if (*(v14 + 8))
    {
      v19 = *(v14 - 8);
      v20 = *v19;
      v10 = v19 + 2;
      v15 = v20;
      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v10 = 0;
      v15 = 0;
      if (a3 >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_23:
        sub_298ADDDA0();
      }
    }
  }

  else
  {
    v15 = 0;
    if (a3 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_23;
    }
  }

  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = a3;
  if (a3)
  {
    memmove(&__dst, a2, a3);
  }

  *(&__dst + a3) = 0;
  *&v30 = v10;
  *(&v30 + 1) = v15;
  v31 = __PAIR64__(a9, a8);
  v16 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    *__p = __dst;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = 0;
    v17 = *(a1 + 1808);
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator new();
  }

  sub_298AFE11C(__p, __dst, *(&__dst + 1));
  v25 = v30;
  v26 = v31;
  v27 = 0;
  v17 = *(a1 + 1808);
  if (!v17)
  {
    goto LABEL_20;
  }

  while (1)
  {
LABEL_17:
    while (1)
    {
      v18 = v17;
      if (!sub_298B3254C(__p, v17 + 4))
      {
        break;
      }

      v17 = *v18;
      if (!*v18)
      {
        goto LABEL_20;
      }
    }

    if (!sub_298B3254C(v18 + 4, __p))
    {
      break;
    }

    v17 = v18[1];
    if (!v17)
    {
      goto LABEL_20;
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  result = v18[10];
  if (v16 < 0)
  {
    v22 = v18[10];
    operator delete(__dst);
    return v22;
  }

  return result;
}

void sub_298B2F3BC(uint64_t a1)
{
  v100[32] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 1520);
  if (v1)
  {
    v2 = a1;
    v3 = *(a1 + 1512) + 48 * v1;
    v4 = -48 * v1;
    do
    {
      if (!v4)
      {
        break;
      }

      v6 = *(v3 - 48);
      v3 -= 48;
      v5 = v6;
      v7 = *(v3 + 23);
      v8 = (v7 >= 0 ? v3 : v5);
      v9 = v7 >= 0 ? *(v3 + 23) : *(v3 + 8);
      v10 = *(v3 + 47);
      v11 = v10 >= 0 ? (v3 + 24) : *(v3 + 24);
      v12 = *(v3 + 32);
      v13 = v10 >= 0 ? *(v3 + 47) : *(v3 + 32);
      a1 = sub_298BA980C(v2 + 1360, v8, v9, v11, v13, 0);
      v4 += 48;
    }

    while (!a1);
    ptr = &v98;
    v97 = xmmword_298D1A100;
    v14 = *(v2 + 1552);
    v83 = (v2 + 1560);
    if (v14 != (v2 + 1560))
    {
      v86 = v2;
      while (1)
      {
        v84 = v14;
        v15 = *(v14 + 14);
        if (v15)
        {
          v16 = v14[6];
          v85 = v16 + 24 * v15;
          while (1)
          {
            v17 = *(v16 + 23);
            v18 = v17 >= 0 ? v16 : *v16;
            v19 = v17 >= 0 ? *(v16 + 23) : *(v16 + 8);
            *&v97 = 0;
            if (*(&v97 + 1) < v19)
            {
              break;
            }

            v24 = 0;
            if (v19)
            {
              v23 = ptr;
LABEL_46:
              a1 = memcpy(&v23[v24], v18, v19);
              v24 = v97;
            }

            v28 = v24 + v19;
            *&v97 = v24 + v19;
            v29 = *(v2 + 1520);
            if (!v29)
            {
              goto LABEL_80;
            }

            v30 = 0;
            v31 = *(v86 + 1512);
            v32 = ptr;
            v33 = 48 * v29;
            while (1)
            {
              v34 = *(v31 + v33 - 25);
              if (v34 >= 0)
              {
                v35 = (v31 + v33 - 48);
              }

              else
              {
                v35 = *(v31 + v33 - 48);
              }

              if (v34 >= 0)
              {
                v36 = *(v31 + v33 - 25);
              }

              else
              {
                v36 = *(v31 + v33 - 40);
              }

              v37 = *(v31 + v33 - 1);
              if (v37 >= 0)
              {
                v38 = *(v31 + v33 - 1);
              }

              else
              {
                v38 = *(v31 + v33 - 16);
              }

              if (v36 | v38)
              {
                v39 = v28 >= v36;
              }

              else
              {
                v39 = 0;
              }

              if (!v39)
              {
                goto LABEL_49;
              }

              if (!v36)
              {
                break;
              }

              a1 = memcmp(v32, v35, v36);
              if (!a1)
              {
                v40 = v31 + 48 * v29;
                v43 = *(v40 - 24);
                v41 = (v40 - 24);
                v42 = v43;
                if (v37 >= 0)
                {
                  v44 = v41;
                }

                else
                {
                  v44 = v42;
                }

                if (v36 == v38)
                {
                  a1 = memmove(v32, v44, v36);
                  goto LABEL_80;
                }

                goto LABEL_75;
              }

LABEL_49:
              v31 -= 48;
              v30 += 48;
              if (v33 == v30)
              {
                goto LABEL_80;
              }
            }

            v45 = v31 + 48 * v29;
            v48 = *(v45 - 24);
            v46 = (v45 - 24);
            v47 = v48;
            if (v37 >= 0)
            {
              v44 = v46;
            }

            else
            {
              v44 = v47;
            }

            if (!v38)
            {
              goto LABEL_81;
            }

LABEL_75:
            __dst[0] = v100;
            *&__dst[1] = xmmword_298D1A100;
            v88 = 0;
            v92 = 0;
            v93 = 0;
            v87 = &unk_2A1F1E0B8;
            v95 = __dst;
            v94 = 0;
            v90 = 0;
            v91 = 0;
            v89 = 0;
            sub_298B99BA4(a1, &v87, v44, v38, 5);
            sub_298B99BA4(v49, &v87, v32 + v36, v28 - v36, 5);
            v87 = &unk_2A1F1DEC8;
            if (v94 == 1 && v89)
            {
              MEMORY[0x29C2945C0](v89, 0x1000C8077774924);
            }

            sub_298BA9A54(&ptr, __dst);
            a1 = __dst[0];
            if (__dst[0] != v100)
            {
              free(__dst[0]);
            }

LABEL_80:
            v32 = ptr;
            v28 = v97;
LABEL_81:
            if (v28 > 0x7FFFFFFFFFFFFFF7)
            {
              goto LABEL_147;
            }

            if (v28 >= 0x17)
            {
              operator new();
            }

            HIBYTE(__dst[2]) = v28;
            v2 = v86;
            if (v28)
            {
              a1 = memmove(__dst, v32, v28);
              *(__dst + v28) = 0;
              if (*(v16 + 23) < 0)
              {
                goto LABEL_88;
              }
            }

            else
            {
              LOBYTE(__dst[0]) = 0;
              if (*(v16 + 23) < 0)
              {
LABEL_88:
                operator delete(*v16);
              }
            }

            *v16 = *__dst;
            *(v16 + 16) = __dst[2];
            v16 += 24;
            if (v16 == v85)
            {
              goto LABEL_89;
            }
          }

          if (((2 * *(&v97 + 1)) | 1uLL) > v19)
          {
            v20 = 2 * *(&v97 + 1) + 1;
          }

          else
          {
            v20 = v19;
          }

          if (ptr == &v98)
          {
            v23 = sub_298B90950(v20);
            if (v23 == &v98)
            {
              v25 = sub_298B90950(v20);
              free(v23);
              v23 = v25;
            }

            memcpy(v23, ptr, v97);
          }

          else
          {
            v21 = malloc_type_realloc(ptr, v20, 0xF4063A16uLL);
            if (!v21)
            {
              sub_298B86A40("Allocation failed");
            }

            v22 = v21;
            if (v21 == &v98)
            {
              v26 = v97;
              v27 = sub_298B90950(v20);
              v23 = v27;
              if (v26)
              {
                memcpy(v27, v22, v26);
              }

              free(v22);
            }

            else
            {
              v23 = v21;
            }
          }

          ptr = v23;
          *(&v97 + 1) = v20;
          v24 = v97;
          goto LABEL_46;
        }

LABEL_89:
        v50 = (v84 + 52);
        v51 = *(v84 + 439);
        v52 = v51 >= 0 ? v84 + 52 : v84[52];
        v53 = v51 >= 0 ? *(v84 + 439) : v84[53];
        *&v97 = 0;
        if (*(&v97 + 1) < v53)
        {
          break;
        }

        v54 = 0;
        v55 = 0;
        if (v53)
        {
          goto LABEL_98;
        }

LABEL_99:
        v56 = v55 + v53;
        *&v97 = v55 + v53;
        v57 = *(v2 + 1520);
        if (!v57)
        {
          goto LABEL_129;
        }

        v58 = 0;
        v59 = *(v86 + 1512);
        v60 = ptr;
        v61 = 48 * v57;
        while (1)
        {
          v62 = *(v59 + v61 - 25);
          if (v62 >= 0)
          {
            v63 = (v59 + v61 - 48);
          }

          else
          {
            v63 = *(v59 + v61 - 48);
          }

          if (v62 >= 0)
          {
            v64 = *(v59 + v61 - 25);
          }

          else
          {
            v64 = *(v59 + v61 - 40);
          }

          v65 = *(v59 + v61 - 1);
          if (v65 >= 0)
          {
            v66 = *(v59 + v61 - 1);
          }

          else
          {
            v66 = *(v59 + v61 - 16);
          }

          if (v64 | v66)
          {
            v67 = v56 >= v64;
          }

          else
          {
            v67 = 0;
          }

          if (!v67)
          {
            goto LABEL_101;
          }

          if (!v64)
          {
            break;
          }

          a1 = memcmp(v60, v63, v64);
          if (!a1)
          {
            v68 = v59 + 48 * v57;
            v71 = *(v68 - 24);
            v69 = (v68 - 24);
            v70 = v71;
            if (v65 >= 0)
            {
              v72 = v69;
            }

            else
            {
              v72 = v70;
            }

            if (v64 == v66)
            {
              a1 = memmove(v60, v72, v64);
              goto LABEL_129;
            }

            goto LABEL_127;
          }

LABEL_101:
          v59 -= 48;
          v58 += 48;
          if (v61 == v58)
          {
            goto LABEL_129;
          }
        }

        v73 = v59 + 48 * v57;
        v76 = *(v73 - 24);
        v74 = (v73 - 24);
        v75 = v76;
        if (v65 >= 0)
        {
          v72 = v74;
        }

        else
        {
          v72 = v75;
        }

        if (!v66)
        {
          goto LABEL_130;
        }

LABEL_127:
        __dst[0] = v100;
        *&__dst[1] = xmmword_298D1A100;
        v88 = 0;
        v92 = 0;
        v93 = 0;
        v87 = &unk_2A1F1E0B8;
        v95 = __dst;
        v94 = 0;
        v90 = 0;
        v91 = 0;
        v89 = 0;
        sub_298B99BA4(a1, &v87, v72, v66, 5);
        sub_298B99BA4(v77, &v87, v60 + v64, v56 - v64, 5);
        sub_298B9AE14(&v87);
        sub_298BA9A54(&ptr, __dst);
        a1 = __dst[0];
        if (__dst[0] != v100)
        {
          free(__dst[0]);
        }

LABEL_129:
        v60 = ptr;
        v56 = v97;
LABEL_130:
        if (v56 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_147:
          sub_298ADDDA0();
        }

        if (v56 >= 0x17)
        {
          operator new();
        }

        HIBYTE(__dst[2]) = v56;
        v2 = v86;
        if (v56)
        {
          a1 = memmove(__dst, v60, v56);
        }

        *(__dst + v56) = 0;
        v78 = v84;
        if (*(v84 + 439) < 0)
        {
          operator delete(*v50);
        }

        *v50 = *__dst;
        v84[54] = __dst[2];
        v79 = v84[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v78[2];
            v81 = *v80 == v78;
            v78 = v80;
          }

          while (!v81);
        }

        v14 = v80;
        if (v80 == v83)
        {
          if (ptr != &v98)
          {
            free(ptr);
          }

          goto LABEL_146;
        }
      }

      sub_298B90C08(&ptr, &v98, v53, 1);
      v54 = v97;
LABEL_98:
      a1 = memcpy(ptr + v54, v52, v53);
      v55 = v97;
      goto LABEL_99;
    }
  }

LABEL_146:
  v82 = *MEMORY[0x29EDCA608];
}

void sub_298B2FB9C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned int a10)
{
  v21 = *MEMORY[0x29EDCA608];
  v16[0] = a2;
  v16[1] = a3;
  v15[0] = a4;
  v15[1] = a5;
  v11 = *(a1 + 1560);
  if (!v11)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v12 = v11;
      v13 = *(v11 + 32);
      if (v13 <= a10)
      {
        break;
      }

      v11 = *v12;
      if (!*v12)
      {
        goto LABEL_7;
      }
    }

    if (v13 >= a10)
    {
      break;
    }

    v11 = v12[1];
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v19 = *a7;
  v20 = *(a7 + 16);
  v17 = *a8;
  v18 = *(a8 + 16);
  sub_298B34F68((v12 + 5), v16, v15, &v19, &v17, *(a1 + 1696), a6, a9);
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B2FDC0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1624);
  v5 = *(result + 1632);
  v6 = &v4[v5];
  v7 = v6;
  if (v5)
  {
    v8 = 8 * v5;
    while (1)
    {
      result = (*(*a2 + 1248))(a2, *v4);
      if ((result & 1) == 0)
      {
        break;
      }

      ++v4;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    v9 = v3[202].i32[0];
    if (v9)
    {
      v10 = v3[200];
      v11 = v9 - 1;
      LODWORD(v12) = ((*v4 >> 4) ^ (*v4 >> 9)) & v11;
      v13 = (*&v10 + 8 * v12);
      v14 = *v13;
      if (*v4 == *v13)
      {
LABEL_8:
        *v13 = -8192;
        v3[201] = vadd_s32(v3[201], 0x1FFFFFFFFLL);
      }

      else
      {
        v25 = 1;
        while (v14 != -4096)
        {
          v26 = v12 + v25++;
          v12 = v26 & v11;
          v14 = *(*&v10 + 8 * v12);
          if (*v4 == v14)
          {
            v13 = (*&v10 + 8 * v12);
            goto LABEL_8;
          }
        }
      }
    }
  }

  if (v4 != v6)
  {
    v15 = v4 + 1;
    if (v4 + 1 == v6)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4;
      do
      {
        result = (*(*a2 + 1248))(a2, *v15);
        if (result)
        {
          *v7++ = *v15;
        }

        else
        {
          v16 = v3[202].i32[0];
          if (v16)
          {
            v17 = v3[200];
            v18 = v16 - 1;
            LODWORD(v19) = ((*v15 >> 4) ^ (*v15 >> 9)) & v18;
            v20 = (*&v17 + 8 * v19);
            v21 = *v20;
            if (*v15 == *v20)
            {
LABEL_17:
              *v20 = -8192;
              v3[201] = vadd_s32(v3[201], 0x1FFFFFFFFLL);
            }

            else
            {
              v22 = 1;
              while (v21 != -4096)
              {
                v23 = v19 + v22++;
                v19 = v23 & v18;
                v21 = *(*&v17 + 8 * v19);
                if (*v15 == v21)
                {
                  v20 = (*&v17 + 8 * v19);
                  goto LABEL_17;
                }
              }
            }
          }
        }

        ++v15;
      }

      while (v15 != v6);
    }
  }

LABEL_23:
  v24 = v3[203];
  if (v7 != (*&v24 + 8 * v3[204].u32[0]))
  {
    v3[204].i32[0] = (v7 - *&v24) >> 3;
  }

  return result;
}

uint64_t sub_298B2FFE4(void *a1, uint64_t a2, uint64_t a3)
{
  v27[21] = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (a2)
  {
    v4 = a1[9];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v4 = a1[10];
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v4 = v13;
  }

  v19 = 0;
  *v17 = 0uLL;
  v18 = 0uLL;
  v16 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  v22 = 0uLL;
  __p = 0uLL;
  v24 = 0;
  v25 = v27;
  v26 = 0x400000000;
  v15 = v4;
  v6 = *(a3 + 24);
  if (!v6 || ((*(*v6 + 48))(v6, &v16, &v15), LOBYTE(v15) = v5, (v7 = a1[17]) == 0))
  {
    sub_298AE761C();
  }

  (*(*v7 + 48))(v7, &v16, &v15, v4, a1 + 11);
  v8 = v25;
  if (v26)
  {
    v9 = (v25 + 40 * v26 - 24);
    v10 = -40 * v26;
    do
    {
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v9 -= 5;
      v10 += 40;
    }

    while (v10);
    v8 = v25;
  }

  if (v8 != v27)
  {
    free(v8);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    if ((SBYTE7(v21) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v20);
    if ((SBYTE7(v18) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_24:
    operator delete(v17[0]);
    goto LABEL_21;
  }

  operator delete(*(&v21 + 1));
  if (SBYTE7(v21) < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (SBYTE7(v18) < 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  result = sub_298B90F10(v13);
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B301E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = a2;
  v3 = *(result + 2048);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *v3;
  if ((v4 & 8) != 0)
  {
    goto LABEL_9;
  }

  if ((v4 & 4) == 0)
  {
LABEL_4:
    v8[0] = &unk_2A1F1BE00;
    v8[1] = &v6;
    v8[2] = a3;
    v9 = v8;
    sub_298B2FFE4(result, a2, v8);
    result = v9;
    if (v9 != v8)
    {
      goto LABEL_5;
    }

LABEL_8:
    result = (*(*result + 32))(result);
    goto LABEL_9;
  }

  v7 = a2;
  *(result + 2056) = 1;
  v10[0] = &unk_2A1F1BDB8;
  v10[1] = &v7;
  v10[2] = a3;
  v11 = v10;
  sub_298B2FFE4(result, a2, v10);
  result = v11;
  if (v11 == v10)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_9:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *sub_298B3031C(_DWORD *result, int a2)
{
  if (a2)
  {
    v2 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    LODWORD(v3) = (((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8)) + 1;
    result[4] = v3;
    v4 = result;
    result = operator new(16 * v3, 8uLL);
    *v4 = result;
    *(v4 + 1) = 0;
    v5 = v4[4];
    if (v5)
    {
      v6 = 16 * v5;
      do
      {
        *result = xmmword_298CF7980;
        result += 4;
        v6 -= 16;
      }

      while (v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t sub_298B303B8(uint64_t a1)
{
  sub_298B303F4(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_298B303F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      sub_298B30438((v1 + 2));
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void sub_298B30438(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  sub_298B3049C(a1 + 8, *(a1 + 24));
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {

    operator delete(v3);
  }
}

void sub_298B3049C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      v2[4] = 0;
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5)
        {
          *(v4 + 48) = v5;
          operator delete(v5);
        }

        sub_298B3049C(v4, *(v4 + 16));
        v6 = *v4;
        *v4 = 0;
        if (v6)
        {
          operator delete(v6);
        }

        MEMORY[0x29C2945F0](v4, 0x10A0C40C01AB3A7);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_298B3053C(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5, __int128 *a6, uint64_t a7)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_20;
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = __len;
  if (__len)
  {
    memmove(&__dst, a2, __len);
  }

  *(&__dst + __len) = 0;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  *(a1 + 352) = __dst;
  *(a1 + 368) = v19;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_20:
    sub_298ADDDA0();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v19) = a5;
  if (a5)
  {
    memmove(&__dst, __src, a5);
  }

  *(&__dst + a5) = 0;
  v13 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    operator delete(*v13);
  }

  *v13 = __dst;
  *(a1 + 392) = v19;
  *(a1 + 400) = 0;
  v14 = *a6;
  *(a1 + 420) = *(a6 + 16);
  *(a1 + 404) = v14;
  v15 = *(a7 + 16);
  *(a1 + 424) = *a7;
  *(a1 + 440) = v15;
  v16 = *(a6 + 16);
  v17 = *(a1 + 449);
  if (!v16)
  {
    v17 = 0;
  }

  *(a1 + 449) = v17;
  *(a1 + 450) |= v16;
  *(a1 + 448) |= *(a7 + 16);
}

_BYTE *sub_298B30724(_BYTE *__dst, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  v4 = *a2;
  if (v2 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v2;
  if (v2)
  {
    memmove(__dst, v4, v2);
  }

  __dst[v2] = 0;
  return __dst;
}

void sub_298B307D4(uint64_t a1)
{
  v2 = *(a1 + 488);
  v3 = *(a1 + 496);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = v2 + v4 - 24;
    v6 = -v4;
    do
    {
      v7 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v7;
        operator delete(v7);
      }

      v5 -= 32;
      v6 += 32;
    }

    while (v6);
    v2 = *(a1 + 488);
  }

  if (v2 != (a1 + 504))
  {
    free(v2);
  }

  MEMORY[0x29C2945E0](*(a1 + 464), 8);
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
    if ((*(a1 + 383) & 0x80000000) == 0)
    {
LABEL_11:
      sub_298B30BE0(a1 + 336);
      v8 = *(a1 + 104);
      v9 = *(a1 + 112);
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a1 + 383) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(*(a1 + 360));
  sub_298B30BE0(a1 + 336);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  if (!v9)
  {
LABEL_12:
    if (v8 == (a1 + 120))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_26:
  v16 = v8 + 72 * v9 - 72;
  v17 = -72 * v9;
  do
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 72;
    v17 += 72;
  }

  while (v17);
  v8 = *(a1 + 104);
  if (v8 != (a1 + 120))
  {
LABEL_13:
    free(v8);
  }

LABEL_14:
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = v10 + 24 * v11 - 1;
    v13 = -24 * v11;
    v14 = v12;
    do
    {
      v15 = *v14;
      v14 -= 24;
      if (v15 < 0)
      {
        operator delete(*(v12 - 23));
      }

      v12 = v14;
      v13 += 24;
    }

    while (v13);
    v10 = *(a1 + 16);
  }

  if (v10 != (a1 + 32))
  {

    free(v10);
  }
}

uint64_t sub_298B309F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1BD70;
  a2[1] = v2;
  return result;
}

_DWORD *sub_298B30A38(_DWORD *result, int a2)
{
  if (a2)
  {
    v2 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v3 = v2 | (v2 >> 2) | ((v2 | (v2 >> 2)) >> 4);
    LODWORD(v3) = (((v3 | (v3 >> 8)) >> 16) | v3 | (v3 >> 8)) + 1;
    result[4] = v3;
    v4 = result;
    result = operator new(16 * v3, 8uLL);
    *v4 = result;
    *(v4 + 1) = 0;
    v5 = v4[4];
    if (v5)
    {
      v6 = 0;
      v7 = v5 + 0xFFFFFFFFFFFFFFFLL;
      v8 = v7 & 0xFFFFFFFFFFFFFFFLL;
      v9 = (v7 & 0xFFFFFFFFFFFFFFFLL) - (v7 & 3) + 4;
      v10 = vdupq_n_s64(v8);
      v11 = result + 8;
      do
      {
        v12 = vdupq_n_s64(v6);
        v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_298D1A120)));
        if (vuzp1_s16(v13, *v10.i8).u8[0])
        {
          *(v11 - 8) = -1;
        }

        if (vuzp1_s16(v13, *&v10).i8[2])
        {
          *(v11 - 4) = -1;
        }

        if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_298D1A110)))).i32[1])
        {
          *v11 = -1;
          v11[4] = -1;
        }

        v6 += 4;
        v11 += 16;
      }

      while (v9 != v6);
    }
  }

  else
  {
    *result = 0;
    *(result + 1) = 0;
    result[4] = 0;
  }

  return result;
}

uint64_t sub_298B30B60(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_298B30BE0(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          MEMORY[0x29C2945E0]();
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_298B30C5C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = -48 * v3;
    v5 = v2 + 48 * v3 - 48;
    do
    {
      v5 = sub_298B30CC4(v5) - 48;
      v4 += 48;
    }

    while (v4);
    v2 = *a1;
  }

  if (v2 != (a1 + 16))
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_298B30CC4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void sub_298B30D20(void *a1)
{
  if (a1)
  {
    sub_298B30D20(*a1);
    sub_298B30D20(a1[1]);
    sub_298B307D4((a1 + 4));

    operator delete(a1);
  }
}

void sub_298B30D78(char *a1)
{
  if (a1)
  {
    sub_298B30D78(*a1);
    sub_298B30D78(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_298B30DD8(char *a1)
{
  if (a1)
  {
    sub_298B30DD8(*a1);
    sub_298B30DD8(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t sub_298B30E54(uint64_t a1)
{
  if (*(a1 + 12))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 != -8 && v5 != 0)
        {
          sub_298B30ECC(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

void sub_298B30ECC(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    v3 = a1[9];
    v4 = a1[8];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[8];
    }

    a1[9] = v2;
    operator delete(v4);
  }

  v6 = a1[5];
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[5];
    if (v7 != v6)
    {
      do
      {
        v10 = *(v7 - 32);
        if (v10)
        {
          v11 = *(v7 - 24);
          v9 = *(v7 - 32);
          if (v11 != v10)
          {
            do
            {
              if (*(v11 - 8) >= 0x41u)
              {
                v12 = *(v11 - 16);
                if (v12)
                {
                  MEMORY[0x29C2945C0](v12, 0x1000C8000313F17);
                }
              }

              v11 -= 40;
            }

            while (v11 != v10);
            v9 = *(v7 - 32);
          }

          *(v7 - 24) = v10;
          operator delete(v9);
        }

        v7 -= 48;
      }

      while (v7 != v6);
      v8 = a1[5];
    }

    a1[6] = v6;
    operator delete(v8);
  }

  JUMPOUT(0x29C2945E0);
}

uint64_t sub_298B30FF4(uint64_t result, uint64_t a2)
{
  v8[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = *(result + 24);
    v4 = *(a2 + 24);
    if (v3 == result)
    {
      if (v4 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v3 + 24))(*(result + 24), v8);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v8[0] + 24))(v8, v5);
        result = (*(v8[0] + 32))(v8);
LABEL_6:
        *(v5 + 24) = v5;
        goto LABEL_2;
      }

      v7 = result;
      v5 = a2;
      (*(*v3 + 24))(*(result + 24));
    }

    else
    {
      if (v4 != a2)
      {
        *(result + 24) = v4;
        *(a2 + 24) = v3;
        goto LABEL_2;
      }

      v5 = result;
      v7 = a2;
      (*(*v4 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v7 + 24) + 32))(*(v7 + 24));
    *(v7 + 24) = *(v5 + 24);
    goto LABEL_6;
  }

LABEL_2:
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

_DWORD *sub_298B31238(_DWORD *result)
{
  v1 = result[4];
  v2 = result[2];
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v1)
  {
    *(result + 1) = 0;
    if (!v1)
    {
      return result;
    }

    v5 = *result;
    v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v7 = v6 + 1;
      v8 = (v6 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v9 = (v5 + 16 * v8);
      v10 = (v5 + 16);
      v11 = v8;
      do
      {
        *(v10 - 4) = -1;
        *v10 = -1;
        v10 += 8;
        v11 -= 2;
      }

      while (v11);
      if (v7 == v8)
      {
        return result;
      }
    }

    else
    {
      v9 = *result;
    }

    v13 = (v5 + 16 * v1);
    do
    {
      *v9 = -1;
      v9 += 4;
    }

    while (v9 != v13);
    return result;
  }

  v12 = result;
  MEMORY[0x29C2945E0](*result, 8);

  return sub_298B30A38(v12, v4);
}

int64x2_t *sub_298B3132C(int64x2_t *result)
{
  if (result->i64[1])
  {
    v1 = result[1].u32[0];
    if (v1 <= 4 * result->i32[2] || v1 < 0x41)
    {
      if (v1)
      {
        v2 = result->i64[0];
        v3 = (v1 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v4 = result->i64[0];
        if (v3 <= 2)
        {
          goto LABEL_7;
        }

        v6 = v3 + 1;
        v4 = (v2 + 8 * (v6 & 0x3FFFFFFFFFFFFFFCLL));
        v7 = (v2 + 16);
        v8 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v9 = v6 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v7[-1] = v8;
          *v7 = v8;
          v7 += 2;
          v9 -= 4;
        }

        while (v9);
        if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_7:
          v5 = (v2 + 8 * v1);
          do
          {
            *v4++ = -4096;
          }

          while (v4 != v5);
        }
      }

      result->i64[1] = 0;
    }

    else
    {
      return sub_298B313C4(result);
    }
  }

  return result;
}

int64x2_t *sub_298B313C4(int64x2_t *result)
{
  v1 = result;
  v2 = result[1].u32[0];
  v3 = result->u32[2];
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v2)
  {
    result->i64[1] = 0;
    if (v2)
    {
      v6 = result->i64[0];
      v7 = (v2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      v8 = result->i64[0];
      if (v7 < 3)
      {
        goto LABEL_12;
      }

      v9 = v7 + 1;
      v8 = &v6->i64[v9 & 0x3FFFFFFFFFFFFFFCLL];
      v10 = v6 + 1;
      v11 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
      v12 = v9 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v10[-1] = v11;
        *v10 = v11;
        v10 += 2;
        v12 -= 4;
      }

      while (v12);
      if (v9 != (v9 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_12:
        v13 = &v6->i64[v2];
        do
        {
          *v8++ = -4096;
        }

        while (v8 != v13);
      }
    }
  }

  else
  {
    result = MEMORY[0x29C2945E0](result->i64[0], 8);
    if (v5)
    {
      v14 = (4 * v5 / 3u + 1) | ((4 * v5 / 3u + 1) >> 1);
      v15 = v14 | (v14 >> 2) | ((v14 | (v14 >> 2)) >> 4);
      LODWORD(v15) = (((v15 | (v15 >> 8)) >> 16) | v15 | (v15 >> 8)) + 1;
      v1[1].i32[0] = v15;
      result = operator new(8 * v15, 8uLL);
      v1->i64[0] = result;
      v1->i64[1] = 0;
      v16 = v1[1].u32[0];
      if (v16)
      {
        v17 = (v16 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        v18 = result;
        if (v17 < 3)
        {
          goto LABEL_21;
        }

        v19 = v17 + 1;
        v18 = result + 2 * (v19 & 0x3FFFFFFFFFFFFFFCLL);
        v20 = result + 1;
        v21 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
        v22 = v19 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v20[-1] = v21;
          *v20 = v21;
          v20 += 2;
          v22 -= 4;
        }

        while (v22);
        if (v19 != (v19 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_21:
          v23 = result + 2 * v16;
          do
          {
            *v18 = -4096;
            v18 += 2;
          }

          while (v18 != v23);
        }
      }
    }

    else
    {
      v1->i64[0] = 0;
      v1->i64[1] = 0;
      v1[1].i32[0] = 0;
    }
  }

  return result;
}

_DWORD *sub_298B3155C(_DWORD *result)
{
  if (*(result + 1))
  {
    v1 = result[4];
    if (v1 <= 4 * result[2] || v1 < 0x41)
    {
      if (v1)
      {
        v2 = *result;
        v3 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
        v4 = *result;
        if (v3 <= 2)
        {
          goto LABEL_7;
        }

        v6 = v3 + 1;
        v4 = &v2[v6 & 0x1FFFFFFFFFFFFFFCLL];
        v7 = v2 + 2;
        v8 = v6 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v7 - 2) = xmmword_298CF7980;
          *(v7 - 1) = xmmword_298CF7980;
          *v7 = xmmword_298CF7980;
          v7[1] = xmmword_298CF7980;
          v7 += 4;
          v8 -= 4;
        }

        while (v8);
        if (v6 != (v6 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_7:
          v5 = &v2[v1];
          do
          {
            *v4++ = xmmword_298CF7980;
          }

          while (v4 != v5);
        }
      }

      *(result + 1) = 0;
    }

    else
    {
      return sub_298B315F4(result);
    }
  }

  return result;
}

_DWORD *sub_298B315F4(_DWORD *result)
{
  v1 = result[4];
  v2 = result[2];
  v3 = 1 << (33 - __clz(v2 - 1));
  if (v3 <= 64)
  {
    v3 = 64;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v1)
  {
    *(result + 1) = 0;
    if (v1)
    {
      v5 = *result;
      v6 = (v1 - 1) & 0xFFFFFFFFFFFFFFFLL;
      v7 = *result;
      if (v6 < 3)
      {
        goto LABEL_12;
      }

      v8 = v6 + 1;
      v7 = (v5 + 16 * (v8 & 0x1FFFFFFFFFFFFFFCLL));
      v9 = (v5 + 32);
      v10 = v8 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v9 - 2) = xmmword_298CF7980;
        *(v9 - 1) = xmmword_298CF7980;
        *v9 = xmmword_298CF7980;
        v9[1] = xmmword_298CF7980;
        v9 += 4;
        v10 -= 4;
      }

      while (v10);
      if (v8 != (v8 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_12:
        v11 = (v5 + 16 * v1);
        do
        {
          *v7++ = xmmword_298CF7980;
        }

        while (v7 != v11);
      }
    }
  }

  else
  {
    v12 = result;
    MEMORY[0x29C2945E0](*result, 8);

    return sub_298B3031C(v12, v4);
  }

  return result;
}

uint64_t *sub_298B316EC(uint64_t a1, void *a2, size_t a3, uint64_t a4)
{
  v7 = sub_298B96440(a1, a2, a3, a4);
  v8 = (*a1 + 8 * v7);
  v9 = *v8;
  if (*v8 == -8)
  {
    --*(a1 + 16);
  }

  else if (v9)
  {
    while (!v9 || v9 == -8)
    {
      v10 = v8[1];
      ++v8;
      v9 = v10;
    }

    return v8;
  }

  v11 = sub_298AE0D6C(*(a1 + 24), a3 + 17, 3);
  v12 = v11;
  v13 = v11 + 16;
  if (a3)
  {
    memcpy((v11 + 16), a2, a3);
  }

  *(v13 + a3) = 0;
  *v12 = a3;
  v12[1] = 0;
  *v8 = v12;
  ++*(a1 + 12);
  v8 = (*a1 + 8 * sub_298B96888(a1, v7));
  if (*v8)
  {
    v14 = *v8 == -8;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    do
    {
      v16 = v8[1];
      ++v8;
      v15 = v16;
      if (v16)
      {
        v17 = v15 == -8;
      }

      else
      {
        v17 = 1;
      }
    }

    while (v17);
  }

  return v8;
}

unint64_t *sub_298B317F4(uint64_t a1, void *a2, size_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = sub_298B96440(a1, a2, a3, a4);
  v10 = (*a1 + 8 * v9);
  v11 = *v10;
  if (*v10 == -8)
  {
    --*(a1 + 16);
  }

  else if (v11)
  {
    while (!v11 || v11 == -8)
    {
      v12 = v10[1];
      ++v10;
      v11 = v12;
    }

    return v10;
  }

  v13 = sub_298AE0D6C(*(a1 + 24), a3 + 17, 3);
  v14 = v13;
  v15 = v13 + 16;
  if (a3)
  {
    memcpy((v13 + 16), a2, a3);
  }

  *(v15 + a3) = 0;
  *v14 = a3;
  *(v14 + 8) = *a5;
  *v10 = v14;
  ++*(a1 + 12);
  v10 = (*a1 + 8 * sub_298B96888(a1, v9));
  if (*v10)
  {
    v16 = *v10 == -8;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    do
    {
      v18 = v10[1];
      ++v10;
      v17 = v18;
      if (v18)
      {
        v19 = v17 == -8;
      }

      else
      {
        v19 = 1;
      }
    }

    while (v19);
  }

  return v10;
}

BOOL sub_298B31908(const void **a1, const void **a2)
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
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v14 = a1[3];
    v13 = a1[4];
    v15 = a2[3];
    v16 = a2[4];
    if (v13 == v16)
    {
      if (!v13 || (v17 = memcmp(a1[3], a2[3], a1[4]), v18 = v13, !v17))
      {
        v19 = a2[6];
        v20 = a1[6];
        if (v19 >= v20)
        {
          v21 = a1[6];
        }

        else
        {
          v21 = a2[6];
        }

        if (v21)
        {
          v22 = memcmp(a1[5], a2[5], v21);
          if (v22)
          {
            return ((v22 >> 31) | 1u) >> 31;
          }
        }

        if (v20 == v19)
        {
          return *(a1 + 14) < *(a2 + 14);
        }

        if (v20 < v19)
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        return v24 >> 31;
      }
    }

    else
    {
      if (v16 >= v13)
      {
        v18 = a1[4];
      }

      else
      {
        v18 = a2[4];
      }

      if (!v18)
      {
LABEL_38:
        if (v13 < v16)
        {
          v24 = -1;
        }

        else
        {
          v24 = 1;
        }

        return v24 >> 31;
      }
    }

    v23 = memcmp(v14, v15, v18);
    v24 = (v23 >> 31) | 1;
    if (!v23)
    {
      v24 = 0;
    }

    if (v13 == v16 || v23)
    {
      return v24 >> 31;
    }

    goto LABEL_38;
  }

  if (v6 >= v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  v11 = memcmp(v5, v7, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v3 < v6;
  }
}

unint64_t sub_298B31AC4@<X0>(unint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v7 = *a1;
  result = sub_298B97534(*a2, a2[1] + *a2);
  v9 = v6 - 1;
  v10 = *a2;
  v11 = a2[1];
  if (!v11)
  {
    if (v10 != -2)
    {
      v21 = 0;
      v28 = 1;
      v29 = result & v9;
      v14 = (v7 + 16 * (result & v9));
      v30 = *v14;
      if (*v14 != -2)
      {
        goto LABEL_40;
      }

      while (1)
      {
        do
        {
          if (v21)
          {
            v31 = 0;
          }

          else
          {
            v31 = v30 + 2 == 0;
          }

          if (v31)
          {
            v21 = v14;
          }

          result = (v28 + v29);
          ++v28;
          v29 = result & v9;
          v14 = (v7 + 16 * (result & v9));
          v30 = *v14;
        }

        while (*v14 == -2);
LABEL_40:
        if (v30 == -1)
        {
          goto LABEL_19;
        }

        if (!v14[1])
        {
          goto LABEL_20;
        }
      }
    }

    v18 = 1;
    v19 = result & v9;
    v14 = (v7 + 16 * (result & v9));
    v20 = *v14;
    if (*v14 != -2)
    {
      while (v20 != -1)
      {
        if (v14[1])
        {
          result = (v18 + v19);
          ++v18;
          v19 = result & v9;
          v14 = (v7 + 16 * (result & v9));
          v20 = *v14;
          if (*v14 != -2)
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  if (v10 != -2)
  {
    v21 = 0;
    v23 = 1;
    v24 = result & v9;
    v14 = (v7 + 16 * (result & v9));
    v25 = *v14;
    if (*v14 != -2)
    {
      goto LABEL_29;
    }

    while (1)
    {
      do
      {
        if (v21)
        {
          v26 = 0;
        }

        else
        {
          v26 = v25 + 2 == 0;
        }

        if (v26)
        {
          v21 = v14;
        }

        result = (v23 + v24);
        ++v23;
        v24 = result & v9;
        v14 = (v7 + 16 * (result & v9));
        v25 = *v14;
      }

      while (*v14 == -2);
LABEL_29:
      if (v25 == -1)
      {
        goto LABEL_19;
      }

      if (v11 == v14[1])
      {
        v33 = v25;
        v27 = v21;
        v32 = v23;
        result = memcmp(v10, v25, v11);
        v23 = v32;
        v21 = v27;
        v25 = v33;
        if (!result)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v12 = 1;
  v13 = result & v9;
  v14 = (v7 + 16 * (result & v9));
  v15 = *v14;
  if (*v14 == -2)
  {
    goto LABEL_20;
  }

  while (v15 != -1)
  {
    if (v11 != v14[1] || (result = memcmp(0xFFFFFFFFFFFFFFFELL, v15, v11), result))
    {
      result = (v12 + v13);
      ++v12;
      v13 = result & v9;
      v14 = (v7 + 16 * (result & v9));
      v15 = *v14;
      if (*v14 != -2)
      {
        continue;
      }
    }

    goto LABEL_20;
  }

LABEL_18:
  v21 = 0;
LABEL_19:
  if (v10 == -1)
  {
    goto LABEL_20;
  }

  if (v21)
  {
    v16 = v21;
  }

  else
  {
    v16 = v14;
  }

LABEL_11:
  result = sub_298B31D24(a1, a2, a2, v16);
  v14 = result;
  *result = *a2;
  v17 = 1;
LABEL_21:
  v22 = *a1 + 16 * *(a1 + 16);
  *a3 = v14;
  *(a3 + 8) = v22;
  *(a3 + 16) = v17;
  return result;
}

_OWORD *sub_298B31D24(unint64_t a1, uint64_t a2, void **a3, _OWORD *a4)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (4 * v4 + 4 >= (3 * v5))
  {
    v10 = *a1;
    v11 = (2 * v5 - 1) | ((2 * v5 - 1) >> 1);
    v12 = v11 | (v11 >> 2) | ((v11 | (v11 >> 2)) >> 4);
    v13 = ((v12 | (v12 >> 8)) >> 16) | v12 | (v12 >> 8);
    if ((v13 + 1) > 0x40)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 64;
    }

    *(a1 + 16) = v14;
    v15 = a1;
    v16 = operator new(16 * v14, 8uLL);
    *v15 = v16;
    if (v10)
    {
      sub_298B322B4(v15, v10, &v10[2 * v5]);
      MEMORY[0x29C2945E0](v10, 8);
      v17 = *v15;
      LODWORD(v10) = *(v15 + 16);
    }

    else
    {
      v17 = v16;
      *(v15 + 8) = 0;
      v10 = *(v15 + 16);
      if (v10)
      {
        v26 = (v10 - 1) & 0xFFFFFFFFFFFFFFFLL;
        v27 = v16;
        if (v26 < 3)
        {
          goto LABEL_101;
        }

        v28 = v26 + 1;
        v27 = &v16[v28 & 0x1FFFFFFFFFFFFFFCLL];
        v29 = v16 + 2;
        v30 = v28 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          *(v29 - 2) = xmmword_298CF7980;
          *(v29 - 1) = xmmword_298CF7980;
          *v29 = xmmword_298CF7980;
          v29[1] = xmmword_298CF7980;
          v29 += 4;
          v30 -= 4;
        }

        while (v30);
        if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
        {
LABEL_101:
          do
          {
            *v27++ = xmmword_298CF7980;
          }

          while (v27 != &v16[v10]);
        }
      }
    }

    v31 = sub_298B97534(*a3, a3[1] + *a3);
    v32 = v31;
    v33 = v10 - 1;
    v34 = *a3;
    v35 = a3[1];
    if (v35)
    {
      if (v34 != -2)
      {
        v66 = 0;
        v67 = 1;
        v68 = v31 & v33;
        a4 = &v17[v31 & v33];
        v69 = *a4;
        if (*a4 == -2)
        {
          goto LABEL_79;
        }

        while (v69 != -1)
        {
          if (v35 == *(a4 + 1))
          {
            v70 = memcmp(v34, v69, v35);
            a1 = v15;
            if (!v70)
            {
              goto LABEL_3;
            }
          }

          do
          {
LABEL_79:
            if (v66)
            {
              v71 = 0;
            }

            else
            {
              v71 = v69 + 2 == 0;
            }

            if (v71)
            {
              v66 = a4;
            }

            v72 = v67 + v68;
            ++v67;
            v68 = v72 & v33;
            a4 = &v17[v72 & v33];
            v69 = *a4;
          }

          while (*a4 == -2);
        }

        goto LABEL_69;
      }

      v36 = 1;
      a1 = v15;
      v37 = v32 & v33;
      a4 = &v17[v32 & v33];
      v38 = *a4;
      if (*a4 != -2)
      {
        while (v38 != -1)
        {
          if (v35 == *(a4 + 1))
          {
            v39 = memcmp(0xFFFFFFFFFFFFFFFELL, v38, v35);
            a1 = v15;
            if (!v39)
            {
              goto LABEL_3;
            }
          }

          v40 = v36 + v37;
          ++v36;
          v37 = v40 & v33;
          a4 = &v17[v40 & v33];
          v38 = *a4;
          if (*a4 == -2)
          {
            goto LABEL_29;
          }
        }

LABEL_68:
        v66 = 0;
LABEL_69:
        if (v34 == -1)
        {
          goto LABEL_74;
        }

        if (v66)
        {
          a4 = v66;
        }

        goto LABEL_98;
      }
    }

    else
    {
      if (v34 != -2)
      {
        v66 = 0;
        v73 = 1;
        v74 = v31 & v33;
        a4 = &v17[v31 & v33];
        v75 = *a4;
        if (*a4 == -2)
        {
          goto LABEL_89;
        }

        while (v75 != -1)
        {
          a1 = v15;
          if (!*(a4 + 1))
          {
            goto LABEL_29;
          }

          do
          {
LABEL_89:
            if (v66)
            {
              v76 = 0;
            }

            else
            {
              v76 = v75 + 2 == 0;
            }

            if (v76)
            {
              v66 = a4;
            }

            v77 = v73 + v74;
            ++v73;
            v74 = v77 & v33;
            a4 = &v17[v74];
            v75 = *a4;
          }

          while (*a4 == -2);
        }

        goto LABEL_69;
      }

      v41 = 1;
      a1 = v15;
      v42 = v32 & v33;
      a4 = &v17[v42];
      v43 = *a4;
      if (*a4 != -2)
      {
        while (v43 != -1)
        {
          if (*(a4 + 1))
          {
            v44 = v41 + v42;
            ++v41;
            v42 = v44 & v33;
            a4 = &v17[v42];
            v43 = *a4;
            if (*a4 != -2)
            {
              continue;
            }
          }

          goto LABEL_29;
        }

        goto LABEL_68;
      }
    }

LABEL_29:
    ++*(a1 + 8);
    goto LABEL_4;
  }

  if (v5 + ~v4 - *(a1 + 12) > v5 >> 3)
  {
    goto LABEL_3;
  }

  v19 = *a1;
  v20 = (v5 - 1) | ((v5 - 1) >> 1);
  v21 = v20 | (v20 >> 2) | ((v20 | (v20 >> 2)) >> 4);
  v22 = ((v21 | (v21 >> 8)) >> 16) | v21 | (v21 >> 8);
  if ((v22 + 1) > 0x40)
  {
    v23 = v22 + 1;
  }

  else
  {
    v23 = 64;
  }

  *(a1 + 16) = v23;
  v15 = a1;
  v24 = operator new(16 * v23, 8uLL);
  *v15 = v24;
  if (v19)
  {
    sub_298B322B4(v15, v19, &v19[2 * v5]);
    MEMORY[0x29C2945E0](v19, 8);
    v25 = *v15;
    LODWORD(v19) = *(v15 + 16);
  }

  else
  {
    v25 = v24;
    *(v15 + 8) = 0;
    v19 = *(v15 + 16);
    if (v19)
    {
      v45 = (v19 - 1) & 0xFFFFFFFFFFFFFFFLL;
      v46 = v24;
      if (v45 < 3)
      {
        goto LABEL_102;
      }

      v47 = v45 + 1;
      v46 = &v24[v47 & 0x1FFFFFFFFFFFFFFCLL];
      v48 = v24 + 2;
      v49 = v47 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        *(v48 - 2) = xmmword_298CF7980;
        *(v48 - 1) = xmmword_298CF7980;
        *v48 = xmmword_298CF7980;
        v48[1] = xmmword_298CF7980;
        v48 += 4;
        v49 -= 4;
      }

      while (v49);
      if (v47 != (v47 & 0x1FFFFFFFFFFFFFFCLL))
      {
LABEL_102:
        do
        {
          *v46++ = xmmword_298CF7980;
        }

        while (v46 != &v24[v19]);
      }
    }
  }

  v50 = sub_298B97534(*a3, a3[1] + *a3);
  v51 = v19 - 1;
  v52 = *a3;
  v53 = a3[1];
  if (v53)
  {
    v54 = 0;
    v55 = 1;
    v56 = v50 & v51;
    a4 = &v25[v50 & v51];
    v57 = *a4;
    if (*a4 == -2)
    {
      goto LABEL_48;
    }

    while (v57 != -1)
    {
      if (v53 == *(a4 + 1))
      {
        v58 = memcmp(v52, v57, v53);
        a1 = v15;
        if (!v58)
        {
          goto LABEL_3;
        }
      }

      while (1)
      {
        if (!v54 && v57 + 2 == 0)
        {
          v54 = a4;
        }

        v60 = v55 + v56;
        ++v55;
        v56 = v60 & v51;
        a4 = &v25[v60 & v51];
        v57 = *a4;
        if (*a4 != -2)
        {
          break;
        }

LABEL_48:
        a1 = v15;
        if (v52 == -2)
        {
          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v54 = 0;
    v61 = 1;
    v62 = v50 & v51;
    a4 = &v25[v50 & v51];
    v63 = *a4;
    if (*a4 == -2)
    {
      goto LABEL_60;
    }

    while (v63 != -1)
    {
      a1 = v15;
      if (!*(a4 + 1))
      {
        goto LABEL_29;
      }

      while (1)
      {
        if (v54)
        {
          v64 = 0;
        }

        else
        {
          v64 = v63 + 2 == 0;
        }

        if (v64)
        {
          v54 = a4;
        }

        v65 = v61 + v62;
        ++v61;
        v62 = v65 & v51;
        a4 = &v25[v65 & v51];
        v63 = *a4;
        if (*a4 != -2)
        {
          break;
        }

LABEL_60:
        a1 = v15;
        if (v52 == -2)
        {
          goto LABEL_29;
        }
      }
    }
  }

  if (v52 == -1)
  {
LABEL_74:
    ++*(v15 + 8);
    return a4;
  }

  if (v54)
  {
    a4 = v54;
  }

LABEL_98:
  a1 = v15;
LABEL_3:
  v7 = *a4;
  ++*(a1 + 8);
  if (v7 != -1)
  {
LABEL_4:
    --*(a1 + 12);
  }

  return a4;
}

unint64_t sub_298B322B4(unint64_t result, unint64_t *a2, unint64_t *a3)
{
  v5 = result;
  *(result + 8) = 0;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = *result;
    v8 = (v6 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v9 = *result;
    if (v8 < 3)
    {
      goto LABEL_6;
    }

    v10 = v8 + 1;
    v9 = &v7[v10 & 0x1FFFFFFFFFFFFFFCLL];
    v11 = v7 + 2;
    v12 = v10 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      *(v11 - 2) = xmmword_298CF7980;
      *(v11 - 1) = xmmword_298CF7980;
      *v11 = xmmword_298CF7980;
      v11[1] = xmmword_298CF7980;
      v11 += 4;
      v12 -= 4;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_6:
      v13 = &v7[v6];
      do
      {
        *v9++ = xmmword_298CF7980;
      }

      while (v9 != v13);
    }
  }

  while (a2 != a3)
  {
    result = *a2;
    if (*a2 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_32;
    }

    v18 = *v5;
    v19 = *(v5 + 16);
    result = sub_298B97534(result, result + a2[1]);
    v20 = v19 - 1;
    v21 = *a2;
    v22 = a2[1];
    if (v22)
    {
      if (v21 == -2)
      {
        for (i = 1; ; ++i)
        {
          v14 = result & v20;
          v15 = (v18 + 16 * (result & v20));
          v16 = *v15;
          if (*v15 == -2)
          {
            break;
          }

          if (v16 == -1)
          {
            goto LABEL_25;
          }

          if (v22 == v15[1])
          {
            result = memcmp(0xFFFFFFFFFFFFFFFELL, v16, v22);
            if (!result)
            {
              break;
            }
          }

          result = (i + v14);
        }

        goto LABEL_31;
      }

      v26 = 0;
      v28 = 1;
      v29 = result & v20;
      v15 = (v18 + 16 * (result & v20));
      for (j = *v15; *v15 == -2; j = *v15)
      {
LABEL_37:
        if (v26)
        {
          v31 = 0;
        }

        else
        {
          v31 = j + 2 == 0;
        }

        if (v31)
        {
          v26 = v15;
        }

        result = (v28 + v29);
        ++v28;
        v29 = result & v20;
        v15 = (v18 + 16 * (result & v20));
      }

      if (j == -1)
      {
        goto LABEL_26;
      }

      if (v22 != v15[1])
      {
        goto LABEL_37;
      }

      v36 = v29;
      v37 = v28;
      result = memcmp(v21, j, v22);
      v29 = v36;
      v28 = v37;
      if (result)
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    if (v21 != -2)
    {
      v26 = 0;
      v32 = 1;
      v33 = result & v20;
      v15 = (v18 + 16 * (result & v20));
      v34 = *v15;
      if (*v15 == -2)
      {
        goto LABEL_47;
      }

      while (1)
      {
        if (v34 == -1)
        {
          goto LABEL_26;
        }

        if (!v15[1])
        {
          goto LABEL_31;
        }

        do
        {
LABEL_47:
          if (v26)
          {
            v35 = 0;
          }

          else
          {
            v35 = v34 + 2 == 0;
          }

          if (v35)
          {
            v26 = v15;
          }

          result = (v32 + v33);
          ++v32;
          v33 = result & v20;
          v15 = (v18 + 16 * (result & v20));
          v34 = *v15;
        }

        while (*v15 == -2);
      }
    }

    v23 = 1;
    v24 = result & v20;
    v15 = (v18 + 16 * (result & v20));
    v25 = *v15;
    if (*v15 != -2)
    {
      while (v25 != -1)
      {
        if (v15[1])
        {
          result = (v23 + v24);
          ++v23;
          v24 = result & v20;
          v15 = (v18 + 16 * (result & v20));
          v25 = *v15;
          if (*v15 != -2)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

LABEL_25:
      v26 = 0;
LABEL_26:
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = v15;
      }

      if (v21 != -1)
      {
        v15 = v27;
      }
    }

LABEL_31:
    *v15 = *a2;
    ++*(v5 + 8);
LABEL_32:
    a2 += 2;
  }

  return result;
}

BOOL sub_298B3254C(const void **a1, const void **a2)
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
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v14 = a1[3];
    v13 = a1[4];
    v15 = a2[3];
    v16 = a2[4];
    if (v13 == v16)
    {
      if (!v13 || (v17 = memcmp(a1[3], a2[3], a1[4]), v18 = v13, !v17))
      {
        v19 = *(a1 + 10);
        v20 = *(a2 + 10);
        if (v19 == v20)
        {
          return *(a1 + 11) < *(a2 + 11);
        }

        else
        {
          return v19 < v20;
        }
      }
    }

    else
    {
      if (v16 >= v13)
      {
        v18 = a1[4];
      }

      else
      {
        v18 = a2[4];
      }

      if (!v18)
      {
LABEL_34:
        if (v13 < v16)
        {
          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

        return v22 >> 31;
      }
    }

    v21 = memcmp(v14, v15, v18);
    v22 = (v21 >> 31) | 1;
    if (!v21)
    {
      v22 = 0;
    }

    if (v13 == v16 || v21)
    {
      return v22 >> 31;
    }

    goto LABEL_34;
  }

  if (v6 >= v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  v11 = memcmp(v5, v7, v10);
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v3 < v6;
  }
}

__n128 sub_298B32738(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1BDB8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_298B32768(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v25[20] = *MEMORY[0x29EDCA608];
  sub_298B9178C(*a3, **(a1 + 8), 0, *(a1 + 16), 0, 0, 0, 0, &v12);
  *a2 = v12;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }

  *(a2 + 16) = v13;
  v4 = v14;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  v5 = v15;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v16;
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  *(a2 + 56) = v17;
  *(a2 + 72) = v18;
  HIBYTE(v18) = 0;
  LOBYTE(v17) = 0;
  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  *(a2 + 80) = v19;
  *(a2 + 96) = v20;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v6 = *(a2 + 104);
  if (v6)
  {
    *(a2 + 112) = v6;
    operator delete(v6);
  }

  *(a2 + 104) = *__p;
  *(a2 + 120) = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  sub_298B3297C(a2 + 128, &v23);
  v7 = v23;
  if (v24)
  {
    v8 = (v23 + 40 * v24 - 24);
    v9 = -40 * v24;
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 -= 5;
      v9 += 40;
    }

    while (v9);
    v7 = v23;
  }

  if (v7 != v25)
  {
    free(v7);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v20) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    operator delete(v17);
    if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    operator delete(v13);
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  operator delete(v19);
  if (SHIBYTE(v18) < 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (SHIBYTE(v14) < 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B3297C(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = a2 + 2;
    v5 = *a2;
    if (*a2 != a2 + 2)
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = &v6[5 * v7 - 3];
        v9 = -40 * v7;
        do
        {
          if (*(v8 + 23) < 0)
          {
            operator delete(*v8);
          }

          v8 -= 40;
          v9 += 40;
        }

        while (v9);
        v6 = *a1;
      }

      if (v6 != (a1 + 16))
      {
        free(v6);
      }

      *a1 = *a2;
      v10 = a2 + 1;
      *(a1 + 8) = a2[1];
      *a2 = v4;
      *(a2 + 3) = 0;
LABEL_12:
      *v10 = 0;
      return a1;
    }

    v10 = a2 + 1;
    v12 = *(a2 + 2);
    v13 = *(a1 + 8);
    if (v13 >= v12)
    {
      v16 = *a1;
      if (v12)
      {
        v17 = v5 + 40 * v12;
        do
        {
          *v16 = *v5;
          if (*(v16 + 39) < 0)
          {
            operator delete(v16[2]);
          }

          v18 = *(v5 + 16);
          v16[4] = *(v5 + 32);
          *(v16 + 1) = v18;
          *(v5 + 39) = 0;
          *(v5 + 16) = 0;
          v5 += 40;
          v16 += 5;
        }

        while (v5 != v17);
        v19 = *a1;
        LODWORD(v13) = *(a1 + 8);
      }

      else
      {
        v19 = *a1;
      }

      for (i = &v19[5 * v13]; i != v16; i -= 5)
      {
        if (*(i - 1) < 0)
        {
          operator delete(*(i - 3));
        }
      }

      *(a1 + 8) = v12;
      v33 = *(a2 + 2);
      if (v33)
      {
        v34 = *a2 + 40 * v33 - 24;
        v35 = -40 * v33;
        do
        {
          if (*(v34 + 23) < 0)
          {
            operator delete(*v34);
          }

          v34 -= 40;
          v35 += 40;
        }

        while (v35);
      }

      goto LABEL_12;
    }

    if (*(a1 + 12) >= v12)
    {
      if (!v13)
      {
        v13 = 0;
        v37 = *a2;
        LODWORD(v38) = *(a2 + 2);
        if (!v38)
        {
          goto LABEL_59;
        }

        goto LABEL_56;
      }

      v20 = v5 + 40 * v13;
      v21 = *a1;
      do
      {
        *v21 = *v5;
        if (*(v21 + 39) < 0)
        {
          operator delete(v21[2]);
        }

        v22 = *(v5 + 16);
        v21[4] = *(v5 + 32);
        *(v21 + 1) = v22;
        *(v5 + 39) = 0;
        *(v5 + 16) = 0;
        v5 += 40;
        v21 += 5;
      }

      while (v5 != v20);
    }

    else
    {
      if (v13)
      {
        v14 = *a1 + 40 * v13 - 24;
        v15 = -40 * v13;
        do
        {
          if (*(v14 + 23) < 0)
          {
            operator delete(*v14);
          }

          v14 -= 40;
          v15 += 40;
        }

        while (v15);
      }

      *(a1 + 8) = 0;
      v46 = 0;
      v23 = sub_298B90848(a1, (a1 + 16), v12, 40, &v46);
      v24 = *a1;
      v25 = *(a1 + 8);
      if (v25)
      {
        v26 = &v24[5 * v25];
        v27 = v23;
        do
        {
          *v27 = *v24;
          v28 = *(v24 + 1);
          v27[4] = v24[4];
          *(v27 + 1) = v28;
          v24[3] = 0;
          v24[4] = 0;
          v24[2] = 0;
          v27 += 5;
          v24 += 5;
        }

        while (v24 != v26);
        v24 = *a1;
        v29 = *(a1 + 8);
        if (v29)
        {
          v30 = &v24[5 * v29 - 3];
          v31 = -40 * v29;
          do
          {
            if (*(v30 + 23) < 0)
            {
              operator delete(*v30);
            }

            v30 -= 40;
            v31 += 40;
          }

          while (v31);
          v24 = *a1;
        }
      }

      v36 = v46;
      if (v24 != (a1 + 16))
      {
        free(v24);
      }

      v13 = 0;
      *a1 = v23;
      *(a1 + 12) = v36;
    }

    v37 = *a2;
    v38 = *(a2 + 2);
    if (v13 == v38)
    {
      goto LABEL_59;
    }

LABEL_56:
    v39 = v37 + 40 * v38;
    v40 = *a1 + 40 * v13;
    v41 = v37 + 40 * v13;
    do
    {
      *v40 = *v41;
      v42 = *(v41 + 16);
      *(v40 + 32) = *(v41 + 32);
      *(v40 + 16) = v42;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      *(v41 + 16) = 0;
      v40 += 40;
      v41 += 40;
    }

    while (v41 != v39);
    v37 = *a2;
LABEL_59:
    *(a1 + 8) = v12;
    v43 = *v10;
    if (v43)
    {
      v44 = v37 + 40 * v43 - 24;
      v45 = -40 * v43;
      do
      {
        if (*(v44 + 23) < 0)
        {
          operator delete(*v44);
        }

        v44 -= 40;
        v45 += 40;
      }

      while (v45);
    }

    goto LABEL_12;
  }

  return a1;
}

__n128 sub_298B32DEC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1BE00;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}