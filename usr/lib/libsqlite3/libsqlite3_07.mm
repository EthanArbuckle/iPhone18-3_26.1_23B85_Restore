uint64_t sub_1818DBA90(unsigned __int8 *a1, uint64_t a2, char a3, int a4)
{
  v98 = a4;
  v99 = 0;
  v8 = *(a1 + 1);
  v9 = a1[1];
  if ((v9 & 0x20) != 0)
  {
    v10 = *(*(v8 + 8) + 16);
    if (v10)
    {
      v11 = *(a1 + 20);
      while (v10 == a1 || v11 && *(v10 + 80) != v11)
      {
        v10 = *(v10 + 40);
        if (!v10)
        {
          if (!a1)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      result = sub_18193880C(v10, v11, a1);
      v99 = result;
      if (result)
      {
        return result;
      }

      if (a4)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      a1[1] = v9 & 0xDF;
LABEL_13:
      v99 = 0;
      if (a4)
      {
LABEL_14:
        if (a1[84] < 0)
        {

          return sub_18190EDA8(88635);
        }
      }
    }
  }

  if (*a1 >= 3u)
  {
    result = sub_1818C6AC0(a1);
    v99 = result;
    if ((result & 0xFFFFFFEF) != 0)
    {
      return result;
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    if (a3 & 2 | a4)
    {
      if (a4)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v21 = *(a2 + 32);
      if (v21)
      {
        *&v97 = 0;
        v22 = *(a2 + 24);
        *&v95 = v13;
        *(&v95 + 1) = v22;
        v96 = 0uLL;
        WORD6(v96) = v21;
        result = sub_18193F674(a1, &v95, &v98);
        v99 = result;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = sub_1818DC828(a1, *a2, *(a2 + 8), (a3 & 8) != 0, &v98);
        v99 = result;
        if (result)
        {
          return result;
        }
      }

      if (v98)
      {
        goto LABEL_50;
      }
    }

    sub_181938B20(a1);
    v14 = *(a1 + 6);
    if (v14 == *(a2 + 8))
    {
      v96 = 0u;
      v97 = 0u;
      v95 = 0u;
      *&v96 = *a2;
      DWORD1(v97) = v14;
      v15 = *(a1 + 17);
      v16 = *(a1 + 7);
      v17 = *(a1 + 34);
      if (v16 + v17 > *(v15 + 88) || v16 < *(v15 + 80) + *(v15 + 18))
      {
        return sub_18193596C(88554, v15);
      }

      if (v14 == v17)
      {
        return sub_1819455D0(*(a1 + 17), *(a1 + 7), &v95, 0, v14);
      }

      return sub_181945778(a1, &v95);
    }
  }

  else
  {
    if (*(v8 + 19))
    {
      v18 = *(a1 + 20);
      v19 = *(a2 + 8);
      *(v8 + 19) = 0;
      for (i = *(*(v8 + 8) + 16); i; i = *(i + 40))
      {
        if ((*(i + 1) & 0x10) != 0)
        {
          *(v8 + 19) = 1;
          if (*(i + 80) == v18 && *(i + 48) == v19)
          {
            *i = 1;
          }
        }
      }
    }

    if ((a1[1] & 2) != 0 && *(a2 + 8) == *(a1 + 6))
    {
      if (*(a1 + 35) && *(a1 + 16) == *(a2 + 40) + *(a2 + 36))
      {

        return sub_18194545C(a1, a2);
      }
    }

    else if (!a4)
    {
      result = sub_18193F3D4(a1, *(a2 + 8), (a3 & 8) != 0, &v98);
      v99 = result;
      if (result)
      {
        return result;
      }
    }
  }

LABEL_50:
  v23 = *(a1 + 17);
  if ((*(v23 + 20) & 0x80000000) != 0)
  {
    if (*a1 >= 2u)
    {
      v32 = 88758;
      return sub_18193596C(v32, v23);
    }

    result = sub_1819454C4(*(a1 + 17));
    v99 = result;
    if (result)
    {
      return result;
    }
  }

  v24 = *(v8 + 8);
  v25 = *(v24 + 136);
  if (a3 < 0)
  {
    v99 = 0;
    v33 = *(v24 + 144);
    if (v33 <= 3)
    {
      v25[3] = 0;
      v24 = *(v8 + 8);
      v33 = 4;
    }

    if (*(v24 + 33))
    {
      if (v33 > *(v23 + 14))
      {
        v95 = 0uLL;
        *&v96 = 0;
        (*(v23 + 128))(v23, v25, &v95);
        if (v96 != WORD2(v96))
        {
          sub_1818EF720(*(v8 + 8), bswap32(*&v25[v33 - 4]), 3, *(v23 + 4), &v99);
          result = v99;
          if (v99)
          {
            return result;
          }
        }
      }
    }

LABEL_135:
    v64 = *(a1 + 43);
    *(a1 + 35) = 0;
    if (v98)
    {
      if (v98 < 0 && *(v23 + 24))
      {
        *(a1 + 43) = v64 + 1;
        LODWORD(v64) = (v64 + 1);
        a1[1] &= 0xF9u;
      }

      goto LABEL_139;
    }

    v95 = 0uLL;
    *&v96 = 0;
    if (v64 >= *(v23 + 24))
    {
      v32 = 88800;
      return sub_18193596C(v32, v23);
    }

    v66 = *(v23 + 112);
    v67 = *(v66 + 40);
    if ((*(v66 + 52) & 4) != 0 && v67[8] >= *(v66 + 48))
    {
      if (!v67[32])
      {
LABEL_172:
        v79 = (*(v23 + 80) + ((*(*(v23 + 96) + 2 * v64 + 1) | (*(*(v23 + 96) + 2 * v64) << 8)) & *(v23 + 26)));
        if (!*(v23 + 8))
        {
          *v25 = *v79;
        }

        (*(v23 + 128))(v23, v79, &v95);
        if (v96 == WORD2(v96))
        {
          v80 = 0;
        }

        else
        {
          v80 = sub_181943DF0(v23, v79, &v95);
        }

        v99 = v80;
        a1[1] &= ~4u;
        if (v33 != WORD3(v96) || v96 != WORD2(v96) || *(*(v8 + 8) + 33) && v33 >= *(v23 + 16))
        {
          sub_1818D927C(v23, v64, WORD3(v96), &v99);
          result = v99;
          if (v99)
          {
            return result;
          }

LABEL_139:
          v101 = 0;
          if ((v33 + 2) > *(v23 + 20))
          {
            result = 0;
            v65 = *(v23 + 12);
            *(v23 + 12) = v65 + 1;
            *(v23 + 8 * v65 + 40) = v25;
            *(v23 + 2 * v65 + 28) = v64;
            if (!*(v23 + 12))
            {
              return result;
            }

            goto LABEL_187;
          }

          v69 = *(v23 + 112);
          v70 = *(v69 + 40);
          if ((*(v69 + 52) & 4) != 0 && v70[8] >= *(v69 + 48))
          {
            if (!v70[32])
            {
LABEL_161:
              v72 = *(v23 + 80);
              result = sub_181945C04(v23, v33, &v101);
              if (!result)
              {
                *(v23 + 20) -= (v33 + 2);
                v73 = v101;
                memcpy((v72 + v101), v25, v33);
                v74 = v23;
                v75 = (*(v23 + 96) + 2 * v64);
                memmove(v75 + 1, v75, 2 * (*(v74 + 24) - v64));
                *v75 = bswap32(v73) >> 16;
                v23 = v74;
                ++*(v74 + 24);
                v76 = v72 + *(v74 + 9);
                v77 = (*(v76 + 4))++ + 1;
                if ((v77 & 0x100) != 0)
                {
                  ++*(v72 + *(v74 + 9) + 3);
                }

                if (*(*(v74 + 72) + 33))
                {
                  v100 = 0;
                  v95 = 0uLL;
                  *&v96 = 0;
                  (*(v74 + 128))(v74, v25, &v95);
                  if (v96 > WORD2(v96))
                  {
                    v78 = *(v74 + 88);
                    if (v78 <= v25 || &v25[WORD2(v96)] <= v78)
                    {
                      sub_1818EF720(*(v74 + 72), bswap32(*&v25[WORD3(v96) - 4]), 3, *(v74 + 4), &v100);
                      result = v100;
                      if (!*(v74 + 12))
                      {
                        return result;
                      }
                    }

                    else
                    {
                      result = sub_18190EDA8(80846);
                      if (!*(v74 + 12))
                      {
                        return result;
                      }
                    }

LABEL_187:
                    a1[1] &= 0xF9u;
                    result = sub_1818D93BC(a1);
                    *(*(a1 + 17) + 12) = 0;
                    *a1 = 1;
                    if ((a3 & 2) == 0 || result)
                    {
                      return result;
                    }

                    sub_1819388DC(a1);
                    if (*(a1 + 16))
                    {
                      v81 = sub_181902484(*(a2 + 8), 42528782);
                      *(a1 + 3) = v81;
                      if (!v81)
                      {
                        result = 7;
                        goto LABEL_194;
                      }

                      memcpy(v81, *a2, *(a2 + 8));
                    }

                    result = 0;
LABEL_194:
                    *a1 = 3;
                    *(a1 + 9) = *(a2 + 8);
                    return result;
                  }
                }

                result = 0;
              }

LABEL_186:
              if (!*(v23 + 12))
              {
                return result;
              }

              goto LABEL_187;
            }

            result = sub_1819360C0(*(v23 + 112));
          }

          else
          {
            result = v70[12];
            if (result)
            {
              goto LABEL_186;
            }

            v71 = *(v23 + 112);
            if (v70[46] <= v70[50])
            {
              result = sub_1818D8DD8(v71);
            }

            else
            {
              result = sub_181936438(v71);
            }
          }

          if (result)
          {
            goto LABEL_186;
          }

          goto LABEL_161;
        }

        if (v79 >= *(v23 + 80) + *(v23 + 9) + 10)
        {
          if (v79 + v33 <= *(v23 + 88))
          {
            memcpy(v79, v25, v33);
            return 0;
          }

          v32 = 88830;
        }

        else
        {
          v32 = 88827;
        }

        return sub_18193596C(v32, v23);
      }

      result = sub_1819360C0(*(v23 + 112));
    }

    else
    {
      result = v67[12];
      if (result)
      {
        return result;
      }

      v68 = *(v23 + 112);
      if (v67[46] <= v67[50])
      {
        result = sub_1818D8DD8(v68);
      }

      else
      {
        result = sub_181936438(v68);
      }
    }

    if (result)
    {
      return result;
    }

    goto LABEL_172;
  }

  v101 = 0;
  v26 = *(v23 + 10);
  v93 = a3;
  if (*(v23 + 1))
  {
    v28 = *(a2 + 36);
    v27 = *(a2 + 40);
    v29 = v27 + v28;
    v30 = *(a2 + 16);
    if ((v27 + v28) > 0x7F)
    {
      v35 = &v25[v26];
      if (v29 >> 14)
      {
        v31 = sub_1819436D0(v35, v29);
      }

      else
      {
        v35->i8[0] = (v29 >> 7) | 0x80;
        v35->i8[1] = v29 & 0x7F;
        v31 = 2;
      }
    }

    else
    {
      v25[v26] = v29;
      v31 = 1;
    }

    v37 = (v31 + v26);
    v38 = &v25[v37];
    v39 = *(a2 + 8);
    if (v39 > 0x7F)
    {
      if (v39 >> 14)
      {
        v40 = sub_1819436D0(v38, v39);
      }

      else
      {
        v38->i8[0] = (v39 >> 7) | 0x80;
        v38->i8[1] = v39 & 0x7F;
        v40 = 2;
      }
    }

    else
    {
      v38->i8[0] = v39;
      v40 = 1;
    }

    v41 = v40 + v37;
  }

  else
  {
    v30 = *a2;
    v28 = *(a2 + 8);
    if (v28 > 0x7F)
    {
      v36 = &v25[v26];
      if (v28 > 0x7F)
      {
        if (v28 >> 14)
        {
          v34 = sub_1819436D0(v36, v28);
        }

        else
        {
          v36->i8[0] = (v28 >> 7) | 0x80;
          v36->i8[1] = v28 & 0x7F;
          v34 = 2;
        }
      }

      else
      {
        v36->i8[0] = v28;
        v34 = 1;
      }
    }

    else
    {
      v25[*(v23 + 10)] = v28;
      v34 = 1;
    }

    v41 = v34 + v26;
    LODWORD(v29) = v28;
  }

  v42 = &v25[v41];
  v43 = *(v23 + 14);
  v94 = a2;
  if (v29 <= v43)
  {
    v61 = v29 + v41;
    if (v29 + v41 <= 3)
    {
      v42[v29] = 0;
      v61 = 4;
    }

    memcpy(v42, v30, v28);
    bzero(&v42[v28], v29 - v28);
    a3 = v93;
    v33 = v61;
    a2 = v94;
    goto LABEL_135;
  }

  v44 = *(v23 + 16);
  v89 = v25;
  v90 = v23;
  v45 = *(v23 + 72);
  if (((v29 - v44) % (*(v45 + 56) - 4) + v44) <= v43)
  {
    v46 = (v29 - v44) % (*(v45 + 56) - 4) + v44;
  }

  else
  {
    v46 = *(v23 + 16);
  }

  v47 = v41 + v46;
  v88 = v47 + 4;
  v91 = &v25[v47];
  v92 = 0;
  v100 = 0;
  while (1)
  {
    do
    {
      if (v29 >= v46)
      {
        v48 = v46;
      }

      else
      {
        v48 = v29;
      }

      if (v28 >= v48)
      {
        memcpy(v42, v30, v48);
      }

      else if (v28 < 1)
      {
        bzero(v42, v48);
      }

      else
      {
        memcpy(v42, v30, v28);
        v48 = v28;
      }

      LODWORD(v29) = v29 - v48;
      if (v29 < 1)
      {
        if (v92)
        {
          v62 = *(v92 + 112);
          a2 = v94;
          a3 = v93;
          v25 = v89;
          v23 = v90;
          v33 = v88;
          if ((*(v62 + 52) & 0x20) != 0)
          {
            v63 = *(v62 + 40);
            --*(v63 + 152);
            *(v62 + 32) = *(v63 + 168);
            *(v63 + 168) = v62;
            (*(**(v63 + 72) + 144))(*(v63 + 72), *(v63 + 200) * (*(v62 + 48) - 1), *(v62 + 8));
          }

          else
          {
            sub_181932B68(v62);
          }
        }

        else
        {
          a2 = v94;
          a3 = v93;
          v25 = v89;
          v23 = v90;
          v33 = v88;
        }

        goto LABEL_135;
      }

      v42 += v48;
      v30 += v48;
      LODWORD(v28) = v28 - v48;
      v46 -= v48;
    }

    while (v46);
    *&v95 = 0;
    v49 = v100;
    v50 = v100;
    if (*(v45 + 33))
    {
      v51 = v100;
      while (1)
      {
        while (1)
        {
          v52 = v51++;
          if (v51 < 2)
          {
            break;
          }

          v53 = (v52 - 1) / (*(v45 + 56) / 5u + 1) * (*(v45 + 56) / 5u + 1);
          if (v53 + 1 == dword_1EA8315A8 / *(v45 + 52))
          {
            v54 = 3;
          }

          else
          {
            v54 = 2;
          }

          if (v51 != v54 + v53)
          {
            goto LABEL_103;
          }
        }

        if (v51)
        {
LABEL_103:
          if (v52 != dword_1EA8315A8 / *(v45 + 52))
          {
            v50 = v52 + 1;
            v100 = v52 + 1;
            break;
          }
        }
      }
    }

    result = sub_1818E21FC(v45, &v95, &v100, v50, 0);
    v101 = result;
    if (*(v45 + 33))
    {
      if (!result)
      {
        break;
      }
    }

    v57 = v92;
    if (result)
    {
      goto LABEL_206;
    }

    v55 = v100;
LABEL_122:
    *v91 = bswap32(v55);
    if (v57)
    {
      v58 = *(v57 + 112);
      if ((*(v58 + 52) & 0x20) != 0)
      {
        v59 = *(v58 + 40);
        --*(v59 + 152);
        *(v58 + 32) = *(v59 + 168);
        *(v59 + 168) = v58;
        (*(**(v59 + 72) + 144))(*(v59 + 72), *(v59 + 200) * (*(v58 + 48) - 1), *(v58 + 8));
      }

      else
      {
        sub_181932B68(v58);
      }
    }

    v60 = v95;
    v91 = *(v95 + 80);
    v92 = v95;
    *v91 = 0;
    v42 = (*(v60 + 80) + 4);
    v46 = *(v45 + 56) - 4;
  }

  v55 = v100;
  if (v49)
  {
    v56 = 4;
  }

  else
  {
    v56 = 3;
  }

  sub_1818EF720(v45, v100, v56, v49, &v101);
  result = v101;
  v57 = v92;
  if (!v101)
  {
    goto LABEL_122;
  }

  if (v95)
  {
    v82 = v101;
    v83 = *(v95 + 112);
    if ((*(v83 + 52) & 0x20) != 0)
    {
      v84 = *(v83 + 40);
      --*(v84 + 152);
      *(v83 + 32) = *(v84 + 168);
      *(v84 + 168) = v83;
      (*(**(v84 + 72) + 144))(*(v84 + 72), *(v84 + 200) * (*(v83 + 48) - 1), *(v83 + 8));
    }

    else
    {
      sub_181932B68(v83);
    }

    result = v82;
  }

LABEL_206:
  if (v57)
  {
    v85 = result;
    v86 = *(v57 + 112);
    if ((*(v86 + 52) & 0x20) != 0)
    {
      v87 = *(v86 + 40);
      --*(v87 + 152);
      *(v86 + 32) = *(v87 + 168);
      *(v87 + 168) = v86;
      (*(**(v87 + 72) + 144))(*(v87 + 72), *(v87 + 200) * (*(v86 + 48) - 1), *(v86 + 8));
    }

    else
    {
      sub_181932B68(v86);
    }

    return v85;
  }

  return result;
}

uint64_t sub_1818DC828(uint64_t a1, unsigned __int8 *a2, int64_t a3, char a4, int *a5)
{
  v5 = a3;
  if (a2)
  {
    v9 = *(a1 + 128);
    v10 = *(v9 + 6) << 6;
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = sub_181929E8C(v11, v10 + 104, 0x1032040E2E69B38);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = sub_181902484(v10 + 104, 0x1032040E2E69B38);
      if (v12)
      {
LABEL_4:
        *v12 = v9;
        *(v12 + 8) = v12 + 40;
        *(v12 + 28) = *(v9 + 6) + 1;
        sub_1818DC95C(v5, a2, v12);
        if (*(v12 + 28) && *(v12 + 28) <= *(v9 + 8))
        {
          v13 = sub_18193F674(a1, v12, a5);
        }

        else
        {
          v13 = sub_18190EDA8(80132);
        }

        v15 = v13;
        sub_181929C84(*(*(a1 + 128) + 16), v12);
        return v15;
      }
    }

    return 7;
  }

  return sub_18193F3D4(a1, a3, a4, a5);
}

void sub_1818DC95C(unsigned int a1, unsigned __int8 *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  *(a3 + 30) = 0;
  v7 = *a2;
  if ((v7 & 0x80000000) != 0)
  {
    v9 = a2[1];
    if (a2[1] < 0)
    {
      v10 = a2[2];
      if (v10 < 0)
      {
        v20 = 0;
        v8 = sub_1818C7200(a2, &v20);
        if (HIDWORD(v20))
        {
          v7 = -1;
        }

        else
        {
          v7 = v20;
        }
      }

      else
      {
        v7 = ((v7 & 0x7F) << 14) | ((v9 & 0x7F) << 7) | v10;
        v8 = 3;
      }
    }

    else
    {
      v7 = v9 | ((v7 & 0x7F) << 7);
      v8 = 2;
    }
  }

  else
  {
    v8 = 1;
  }

  v11 = 0;
  v12 = v7;
  do
  {
    if (v8 >= v7 || v12 > a1)
    {
      break;
    }

    v14 = &a2[v8];
    v15 = *v14;
    if ((v15 & 0x80000000) != 0)
    {
      v17 = v14[1];
      if (v14[1] < 0)
      {
        v18 = v14[2];
        if (v18 < 0)
        {
          v20 = 0;
          v16 = sub_1818C7200(v14, &v20);
          v15 = HIDWORD(v20) ? -1 : v20;
        }

        else
        {
          v15 = ((v15 & 0x7F) << 14) | ((v17 & 0x7F) << 7) | v18;
          v16 = 3;
        }
      }

      else
      {
        v15 = v17 | ((v15 & 0x7F) << 7);
        v16 = 2;
      }
    }

    else
    {
      v16 = 1;
    }

    *(v5 + 22) = *(v6 + 4);
    *(v5 + 24) = *(v6 + 16);
    *(v5 + 32) = 0;
    *(v5 + 8) = 0;
    sub_1818C7394(&a2[v12], v15, v5);
    v13 = v15 < 0x80 ? byte_181A20DA4[v15] : (v15 - 12) >> 1;
    v8 += v16;
    v12 += v13;
    v5 += 64;
    ++v11;
  }

  while (v11 < *(a3 + 14));
  if (v11 && v12 > a1)
  {
    if ((*(v5 - 44) & 0x9000) != 0)
    {
      sub_18193CA54((v5 - 64));
    }

    else
    {
      *(v5 - 44) = 1;
    }
  }

  *(a3 + 14) = v11;
}

uint64_t sub_1818DCB50(uint64_t a1, int a2, char *__src, int a4, _DWORD *__dst, unsigned int a6)
{
  v7 = __dst;
  v26 = 0;
  if (*(a1 + 12) || (v11 = a4 + 2, a4 + 2 > *(a1 + 20)))
  {
    if (__dst)
    {
      memcpy(__dst, __src, a4);
    }

    else
    {
      v7 = __src;
    }

    result = 0;
    *v7 = bswap32(a6);
    v13 = *(a1 + 12);
    *(a1 + 12) = v13 + 1;
    *(a1 + 8 * v13 + 40) = v7;
    *(a1 + 2 * v13 + 28) = a2;
    return result;
  }

  v14 = *(a1 + 112);
  v15 = *(v14 + 40);
  if ((*(v14 + 52) & 4) == 0 || v15[8] < *(v14 + 48))
  {
    result = v15[12];
    if (result)
    {
      return result;
    }

    v16 = __src;
    v17 = *(a1 + 112);
    if (v15[46] <= v15[50])
    {
      result = sub_1818D8DD8(v17);
    }

    else
    {
      result = sub_181936438(v17);
    }

LABEL_16:
    __src = v16;
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (v15[32])
  {
    v16 = __src;
    result = sub_1819360C0(*(a1 + 112));
    goto LABEL_16;
  }

LABEL_17:
  v18 = *(a1 + 80);
  v19 = __src;
  result = sub_181945C04(a1, a4, &v26);
  if (!result)
  {
    *(a1 + 20) -= v11;
    v20 = v26;
    v21 = (v18 + v26);
    memcpy(v21 + 1, v19 + 4, a4 - 4);
    *v21 = bswap32(a6);
    v22 = (*(a1 + 96) + 2 * a2);
    memmove(v22 + 1, v22, 2 * (*(a1 + 24) - a2));
    *v22 = bswap32(v20) >> 16;
    ++*(a1 + 24);
    v23 = v18 + *(a1 + 9);
    v24 = (*(v23 + 4))++ + 1;
    if ((v24 & 0x100) != 0)
    {
      ++*(v18 + *(a1 + 9) + 3);
    }

    if (*(*(a1 + 72) + 33))
    {
      v25 = 0;
      sub_181939A3C(a1, a1, v19, &v25);
      return v25;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1818DCD58(uint64_t a1, _BYTE *a2, int a3)
{
  result = *(a1 + 48);
  if (!result)
  {
    if (off_1ED453038)
    {
      v5 = a2;
      v6 = a3;
      v7 = off_1ED453038(400);
      a3 = v6;
      a2 = v5;
      if (v7)
      {
        return 10;
      }
    }

    if (*(a1 + 21) < 3u)
    {
      return 0;
    }

    if (*(a1 + 16))
    {
      if (!**(a1 + 72))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 336);
      LODWORD(v9) = *(v8 + 8);
      if ((v9 & 0x80000000) != 0)
      {
        v9 = -1024 * v9 / (*(v8 + 11) + *(v8 + 10));
        if (v9 >= 1000000000)
        {
          LODWORD(v9) = 1000000000;
        }
      }

      v10 = *v8;
      if (*v8)
      {
        v11 = 0;
        do
        {
          v10 = *(v10 + 64);
          v11 += 100;
        }

        while (v10);
        if (!v9)
        {
LABEL_18:
          for (i = *(a1 + 112); i; i = *(i + 64))
          {
            *(i + 24) = 1;
          }

LABEL_41:
          if (!*(a1 + 344))
          {
            result = 0;
            *(a1 + 21) = 5;
            return result;
          }

          return 0;
        }
      }

      else
      {
        v11 = 0;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      if ((v11 / v9) <= 24)
      {
        goto LABEL_18;
      }
    }

    if (*(a1 + 344))
    {
      v28 = 0;
      v13 = sub_181936ED4(*(a1 + 336));
      if (!v13)
      {
        (*(a1 + 288))(a1, 1, &v28, 0);
        v13 = v28;
        *(v28 + 32) = 0;
      }

      result = sub_18193714C(a1, v13, *(a1 + 32), 1);
      v14 = v28;
      v15 = result;
      if (v28)
      {
        if ((*(v28 + 52) & 0x20) != 0)
        {
          v22 = *(v28 + 40);
          --*(v22 + 152);
          *(v14 + 32) = *(v22 + 168);
          *(v22 + 168) = v14;
          (*(**(v22 + 72) + 144))(*(v22 + 72), *(v22 + 200) * (*(v14 + 48) - 1), *(v14 + 8));
        }

        else
        {
          sub_181932B68(v28);
        }

        result = v15;
      }

      if (!result)
      {
        v23 = *(a1 + 336);
        for (j = *v23; *v23; j = *v23)
        {
          v25 = *(j + 24);
          v26 = *(j + 72);
          if (*(v25 + 16) == j)
          {
            *(v25 + 16) = v26;
            v27 = *(j + 64);
            if (v27)
            {
LABEL_50:
              *(v27 + 72) = v26;
              if (!v26)
              {
                *v25 = v27;
                goto LABEL_55;
              }

LABEL_54:
              *(v26 + 64) = v27;
              goto LABEL_55;
            }
          }

          else
          {
            v27 = *(j + 64);
            if (v27)
            {
              goto LABEL_50;
            }
          }

          *(v25 + 8) = v26;
          if (v26)
          {
            goto LABEL_54;
          }

          *v25 = 0;
          *(v25 + 49) = 2;
LABEL_55:
          *(j + 52) = *(j + 52) & 0xFFF0 | 1;
          if (!*(j + 56) && *(v25 + 48))
          {
            xmmword_1ED452F80(*(v25 + 72), *j, 0);
            result = v15;
          }
        }
      }

LABEL_40:
      if (result)
      {
        return result;
      }

      goto LABEL_41;
    }

    v16 = a3;
    v17 = a2;
    result = sub_181937C38(a1);
    if (!result)
    {
      result = sub_181937DB0(a1, v17);
      if (!result)
      {
        result = sub_1818E73DC(a1, 0);
        if (!result)
        {
          v18 = sub_181936ED4(*(a1 + 336));
          result = sub_1818E7670(a1, v18);
          if (!result)
          {
            v19 = *(a1 + 336);
            for (k = *v19; *v19; k = *v19)
            {
              sub_181934A54(k);
            }

            v21 = *(a1 + 32);
            if (v21 <= *(a1 + 40) || (result = sub_1818F8F88(a1, v21 - (v21 == *(a1 + 192))), !result))
            {
              if (v16)
              {
                goto LABEL_41;
              }

              result = sub_181909364(a1, v17);
              goto LABEL_40;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1818DD090(uint64_t result, int a2, int a3, unsigned int *a4, uint64_t a5)
{
  *a5 = HIBYTE(a2);
  *(a5 + 1) = BYTE2(a2);
  *(a5 + 2) = BYTE1(a2);
  *(a5 + 3) = a2;
  *(a5 + 4) = HIBYTE(a3);
  *(a5 + 5) = BYTE2(a3);
  *(a5 + 6) = BYTE1(a3);
  *(a5 + 7) = a3;
  if (*(result + 124))
  {
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  else
  {
    *(a5 + 8) = *(result + 104);
    v6 = *(result + 85) == 0;
    v7 = *(result + 100);
    v8 = *a5;
    if (*(result + 85))
    {
      v8 = bswap32(v8);
      v9 = bswap32(*(a5 + 4));
    }

    else
    {
      v9 = *(a5 + 4);
    }

    v10 = *(result + 96) + v7 + v8;
    *(result + 96) = v10;
    *(result + 100) = v9 + v7 + v10;
    v11 = result;
    result = sub_181937F98(v6, a4, *(result + 56), (result + 96), (result + 96));
    *(a5 + 16) = bswap32(*(v11 + 96));
    *(a5 + 20) = bswap32(*(v11 + 100));
  }

  return result;
}

uint64_t sub_1818DD178(uint64_t a1, char *__buf, int a3, off_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) || (v6 = a4, v7 = a3, v8 = __buf, (v9 = *(a1 + 64)) != 0) && *(*v9 + 168))
  {
    sqlite3_log(27, "denying write to invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    v10 = sub_18192B21C(a1, a4, __buf, a3);
    v11 = v10 < v7;
    if (v10 < v7 && v10 >= 1)
    {
      do
      {
        v7 -= v10;
        v6 += v10;
        v8 += v10;
        v10 = sub_18192B21C(a1, v6, v8, v7);
        v11 = v10 < v7;
      }

      while (v10 < v7 && v10 > 0);
    }

    if (v11)
    {
      if (*(a1 + 32) == 28)
      {
        v13 = *(a1 + 56);
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        *__strerrbuf = 0u;
        strerror_r(28, __strerrbuf, 0x4FuLL);
        v14 = &byte_181A2878D;
        if (v13)
        {
          v14 = v13;
        }

        sqlite3_log(13, "os_unix.c:%d: (%d) %s(%s) - %s", 45931, 28, "unixWrite", v14, __strerrbuf);
        return 13;
      }

      else
      {
        return 778;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1818DD300(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(a1 + 168) || (v3 = *(a1 + 64)) != 0 && *(*v3 + 168))
  {
    sqlite3_log(27, "denying sync of invalidated fd %d", *(a1 + 24));
    return 6922;
  }

  else
  {
    if ((a2 & 0xF) == 3)
    {
      v4 = 85;
    }

    else
    {
      v4 = 0;
    }

    if ((*(a1 + 128) & 2) != 0)
    {
      v5 = 51;
    }

    else
    {
      v5 = v4;
    }

    v7 = *(a1 + 24);
    if ((!v5 || fcntl(v7, v5, 0)) && fsync(v7))
    {
      *(a1 + 32) = *__error();
      v8 = *(a1 + 56);
      v9 = *__error();
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__strerrbuf = 0u;
      strerror_r(v9, __strerrbuf, 0x4FuLL);
      v10 = &byte_181A2878D;
      if (v8)
      {
        v10 = v8;
      }

      sqlite3_log(1034, "os_unix.c:%d: (%d) %s(%s) - %s", 46186, v9, "full_fsync", v10, __strerrbuf);
      return 1034;
    }

    else if ((*(a1 + 30) & 8) != 0)
    {
      v14 = 0;
      if (!off_1EE341C60(*(a1 + 56), &v14))
      {
        fsync(v14);
        if ((v14 & 0x80000000) == 0)
        {
          if (off_1EE341AE0(v14))
          {
            v11 = *(a1 + 56);
            v12 = *__error();
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            *__strerrbuf = 0u;
            strerror_r(v12, __strerrbuf, 0x4FuLL);
            v13 = &byte_181A2878D;
            if (v11)
            {
              v13 = v11;
            }

            sqlite3_log(4106, "os_unix.c:%d: (%d) %s(%s) - %s", 46206, v12, "close", v13, __strerrbuf);
          }
        }
      }

      result = 0;
      *(a1 + 30) &= ~8u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1818DD520(unint64_t result, unsigned int a2)
{
  if (*(result + 120) >= a2)
  {
    v11[5] = v2;
    v11[6] = v3;
    v5 = result;
    v6 = *(result + 32);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(v5 + 40) + 8 * i);
        v11[0] = v8;
        if (v8)
        {
          do
          {
            v9 = *(v8 + 16);
            v8 = *(v8 + 24);
            if (v9 >= a2)
            {
              result = sub_1819A8D0C(v5, v11);
            }

            v11[0] = v8;
          }

          while (v8);
          v6 = *(v5 + 32);
        }
      }
    }

    v10 = a2 - 1;
    if (!a2)
    {
      v10 = 0;
    }

    *(v5 + 120) = v10;
  }

  return result;
}

uint64_t sub_1818DD5CC(uint64_t a1, sqlite3 *db, char *zDb, int a4)
{
  if (a1 <= a4)
  {
    if (off_1EA831A10)
    {
      v4 = zDb;
      v5 = db;
      off_1EA831A10(a1);
      db = v5;
      zDb = v4;
    }

    v6 = sqlite3_wal_checkpoint_v2(db, zDb, 0, 0, 0);
    if (off_1EA831A18)
    {
      off_1EA831A18(v6);
    }
  }

  return 0;
}

void sub_1818DD640(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 16);
  v58 = 0;
  if (!a2 || !v8)
  {
    return;
  }

  v10 = *a2;
  if (v10 <= 0x32)
  {
    if (*a2 > 0x2Cu)
    {
      if (v10 - 45 >= 2)
      {
        if (v10 == 49)
        {
          sub_181958D08(a1, a2, a3, sub_1818DD640, a4, a6, a7, a8);
          goto LABEL_67;
        }

        if (v10 == 50)
        {
          if (a4)
          {
            sub_1818DFA70(a1, a2, a3, a3, a5, a6, a7, a8);
          }

          else
          {
            v51 = (*(a1 + 72) - 1);
            *(a1 + 72) = v51;
            sub_1818DFA70(a1, a2, a3, v51, a5, a6, a7, a8);
            sub_181958CD8(v8, v51);
          }

          goto LABEL_67;
        }

        goto LABEL_39;
      }

      if (v10 == 45)
      {
        v11 = 53;
      }

      else
      {
        v11 = 54;
      }

      a4 = 128;
      goto LABEL_22;
    }

    if (v10 - 43 < 2)
    {
      v16 = a4;
      v18 = sub_18195CE30(a2);
      if (v18 == a2)
      {
        v44 = v10 == 44;
        v45 = v16;
        if (v44)
        {
          sub_1818DD640(a1, *(a2 + 2));
          sub_1818DD640(a1, *(a2 + 3));
        }

        else
        {
          v52 = (*(a1 + 72) - 1);
          *(a1 + 72) = v52;
          sub_1818ECA90(a1, *(a2 + 2), v52, v45 ^ 0x10u, v19, v20, v21, v22);
          sub_1818DD640(a1, *(a2 + 3));
          sub_181958CD8(v8, v52);
        }
      }

      else
      {
        sub_1818DD640(a1, v18);
      }

      goto LABEL_67;
    }

    if (v10 != 19)
    {
      goto LABEL_39;
    }

    v31 = *(a2 + 2);
LABEL_53:
    sub_1818ECA90(a1, v31, a3, a4, a5, a6, a7, a8);
    goto LABEL_67;
  }

  v11 = ((v10 + 1) ^ 1) - 1;
  if (v10 - 53 >= 6)
  {
    if (v10 - 51 < 2)
    {
      v13 = sub_181957E00(a1, *(a2 + 2), &v58 + 1);
      v14 = v13;
      if (HIDWORD(v58))
      {
        v15 = *(*v8 + 103) ? &byte_1EA831A58 : (*(v8 + 136) + 40 * *(v8 + 144) - 40);
        if (*(v15 + 3) == v13 && *v15 == 94)
        {
          *(v15 + 1) |= 0x80u;
        }
      }

      v53 = *(v8 + 144);
      if (*(v8 + 148) > v53)
      {
        *(v8 + 144) = v53 + 1;
        v37 = *(v8 + 136) + 40 * v53;
        *v37 = ((v10 + 1) ^ 1) - 1;
        *(v37 + 2) = 0;
        *(v37 + 4) = v13;
        *(v37 + 8) = a3;
        *(v37 + 1) = 0;
        goto LABEL_63;
      }

      v46 = v8;
      v47 = ((v10 + 1) ^ 1) - 1;
      v48 = a3;
      goto LABEL_65;
    }

    if (v10 != 175)
    {
      goto LABEL_39;
    }

    v32 = a2[2];
    v33 = *(a2 + 3);
    while (1)
    {
      v34 = *(v33 + 4);
      if ((v34 & 0x82000) == 0)
      {
        break;
      }

      if ((v34 & 0x80000) != 0)
      {
        v33 = *(*(v33 + 32) + 8);
      }

      else
      {
        if (*v33 != 114)
        {
          break;
        }

        v33 = *(v33 + 16);
      }
    }

    v44 = v32 == 46;
    v49 = v32 != 46;
    v50 = v44;
    v31 = *(a2 + 2);
    a4 = (16 * v49);
    if (((v50 ^ (*(*(v33 + 8) + 4) != 0)) & 1) == 0)
    {
      sub_1818DD640(a1, v31);
      goto LABEL_67;
    }

    goto LABEL_53;
  }

LABEL_22:
  v23 = *(a2 + 2);
  v24 = *v23;
  if (v24 == 176)
  {
    v24 = v23[2];
  }

  v25 = *(a2 + 2);
  if (v24 != 177)
  {
    if (v24 != 139)
    {
LABEL_28:
      v28 = a4;
      v29 = sub_181957E00(a1, *(a2 + 2), &v58 + 1);
      v30 = sub_181957E00(a1, *(a2 + 3), &v58);
      sub_1818DDB44(a1, *(a2 + 2), *(a2 + 3), v11, v29, v30, a3, v28, (*(a2 + 1) >> 10) & 1);
      goto LABEL_67;
    }

    v25 = *(v23 + 4);
  }

  if (**(v25 + 32) <= 1)
  {
    goto LABEL_28;
  }

LABEL_39:
  v35 = *(a2 + 1);
  if ((v35 & 0x20000001) != 0x20000000)
  {
    if ((v35 & 0x10000001) == 0x10000000)
    {
      goto LABEL_67;
    }

    v39 = a4;
    v40 = sub_181957E00(a1, a2, &v58 + 1);
    v14 = v40;
    v41 = v39 != 0;
    v42 = *(v8 + 144);
    if (*(v8 + 148) > v42)
    {
      *(v8 + 144) = v42 + 1;
      v43 = *(v8 + 136) + 40 * v42;
      *v43 = 17;
      *(v43 + 4) = v40;
      *(v43 + 8) = a3;
      *(v43 + 12) = v41;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0;
      *(v43 + 16) = 0;
      goto LABEL_67;
    }

    v46 = v8;
    v47 = 17;
    v48 = a3;
    goto LABEL_66;
  }

  v36 = *(v8 + 144);
  if (*(v8 + 148) > v36)
  {
    *(v8 + 144) = v36 + 1;
    v37 = *(v8 + 136) + 40 * v36;
    *v37 = 9;
    *(v37 + 8) = a3;
LABEL_63:
    *(v37 + 12) = 0;
    *(v37 + 28) = 0;
    *(v37 + 20) = 0;
    *(v37 + 36) = 0;
    goto LABEL_67;
  }

  v46 = v8;
  v47 = 9;
  v48 = a3;
  v14 = 0;
LABEL_65:
  v41 = 0;
LABEL_66:
  sub_18194C8AC(v46, v47, v14, v48, v41, a6, a7, a8);
LABEL_67:
  v54 = HIDWORD(v58);
  if (HIDWORD(v58))
  {
    v55 = *(a1 + 31);
    if (v55 <= 7)
    {
      *(a1 + 31) = v55 + 1;
      *(a1 + 4 * v55 + 184) = v54;
    }
  }

  v56 = v58;
  if (v58)
  {
    v57 = *(a1 + 31);
    if (v57 <= 7)
    {
      *(a1 + 31) = v57 + 1;
      *(a1 + 4 * v57 + 184) = v56;
    }
  }
}

uint64_t sub_1818DDB44(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char *a7, uint64_t a8, int a9)
{
  if (!*(result + 52))
  {
    v9 = a8;
    v12 = a4;
    v13 = a3;
    v14 = a2;
    v15 = result;
    if (a9)
    {
      a2 = a3;
      a3 = v14;
    }

    v17 = sub_18194E64C(result, a2, a3, a4, a5, a6, a7, a8);
    v18 = sub_1818D0A24(v13);
    v19 = sub_1818D0A24(v14);
    if (v18 < 65 || v19 < 65)
    {
      if (v19 >= 65)
      {
        v25 = v19;
      }

      else
      {
        v25 = v18;
      }

      v24 = v25 | 0x40;
    }

    else if (v19 > 0x42 || v18 > 0x42)
    {
      v24 = 67;
    }

    else
    {
      v24 = 65;
    }

    v26 = *(v15 + 16);
    result = *(v26 + 144);
    if (*(v26 + 148) <= result)
    {
      result = sub_18194C8AC(*(v15 + 16), v12, a6, a7, a5, v20, v21, v22);
    }

    else
    {
      *(v26 + 144) = result + 1;
      v27 = *(v26 + 136) + 40 * result;
      *v27 = v12;
      *(v27 + 2) = 0;
      *(v27 + 4) = a6;
      *(v27 + 8) = a7;
      *(v27 + 12) = a5;
      *(v27 + 1) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      *(v27 + 16) = 0;
    }

    if (!*(*v26 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        result = (*(v26 + 144) - 1);
      }

      v28 = *(v26 + 136) + 40 * result;
      if (*(v28 + 1))
      {
        result = sub_18194CB90(v26, v28, v17, 0xFFFFFFFE);
      }

      else if (v17)
      {
        *(v28 + 16) = v17;
        *(v28 + 1) = -2;
      }
    }

    v29 = *(v15 + 16);
    v30 = *(v29 + 144);
    if (v30 >= 1)
    {
      *(*(v29 + 136) + 40 * v30 - 38) = (v24 | v9);
    }
  }

  return result;
}

const unsigned __int8 *__cdecl sqlite3_column_text(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (!v5 || *(a1 + 130) <= iCol)
  {
    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
LABEL_8:
    v6 = &qword_181A20ED0;
    goto LABEL_9;
  }

  v6 = (v5 + (iCol << 6));
LABEL_9:
  v8 = *(v6 + 10);
  if ((~v8 & 0x202) != 0 || *(v6 + 22) != 1)
  {
    if (v8)
    {
      v9 = 0;
      if (!a1)
      {
        return v9;
      }
    }

    else
    {
      v9 = sub_18193CB70(v6, 1);
      if (!a1)
      {
        return v9;
      }
    }
  }

  else
  {
    v9 = v6[1];
    if (!a1)
    {
      return v9;
    }
  }

  v10 = *a1;
  v11 = *(a1 + 13);
  if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
  {
    v12 = sub_18193C988(v10, v11);
    v10 = *a1;
  }

  *(a1 + 13) = v12;
  v13 = *(v10 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  return v9;
}

sqlite3_int64 sqlite3_column_int64(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v4 = *(*a1 + 24);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    v5 = *(a1 + 20);
    if (v5 && *(a1 + 130) > iCol)
    {
      v6 = (v5 + (iCol << 6));
      goto LABEL_9;
    }

    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
  }

  v6 = &qword_181A20ED0;
LABEL_9:
  v8 = *(v6 + 10);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v6;
  }

  else if ((v8 & 8) != 0)
  {
    v15 = *v6;
    if (*v6 >= -9.22337204e18)
    {
      if (v15 <= 9.22337204e18)
      {
        v9 = v15;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v9 = 0x8000000000000000;
    }
  }

  else if ((v8 & 0x12) != 0 && v6[1])
  {
    v9 = sub_18193CFCC(v6);
  }

  else
  {
    v9 = 0;
  }

  if (a1)
  {
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  return v9;
}

int sqlite3_reset(sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *pStmt;
    v3 = *(*pStmt + 24);
    if (v3)
    {
      xmmword_1ED452F18(v3);
    }

    sub_181909F28(v2, v1);
    LODWORD(pStmt) = sub_1818A32FC(v1);
    *(v1 + 267) = 1;
    *(v1 + 6) = 0xFFFFFFFFLL;
    *(v1 + 132) = -254;
    *(v1 + 7) = 0;
    *(v1 + 11) = 1;
    *(v1 + 16) = 0;
    *(v1 + 10) = 0;
    if (pStmt || *(v2 + 103))
    {
      LODWORD(pStmt) = sub_18193C988(v2, pStmt);
    }

    v4 = *(v2 + 24);
    if (v4)
    {
      v5 = pStmt;
      xmmword_1ED452F28(v4);
      LODWORD(pStmt) = v5;
    }
  }

  return pStmt;
}

int sqlite3_clear_bindings(sqlite3_stmt *a1)
{
  if (a1)
  {
    v2 = *(*a1 + 24);
    if (v2)
    {
      xmmword_1ED452F18(*(*a1 + 24));
    }

    v3 = *(a1 + 8);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = 0;
      v6 = *(a1 + 16);
      do
      {
        v7 = v6 + v4;
        if ((*(v6 + v4 + 20) & 0x9000) != 0 || *(v7 + 32))
        {
          sub_18193CA00(v7);
          v6 = *(a1 + 16);
          v3 = *(a1 + 8);
        }

        *(v6 + v4 + 20) = 1;
        ++v5;
        v4 += 64;
      }

      while (v5 < v3);
    }

    if (*(a1 + 93))
    {
      *(a1 + 134) = *(a1 + 134) & 0xFFFC | 1;
    }

    if (v2)
    {
      xmmword_1ED452F28(v2);
    }
  }

  return 0;
}

int sqlite3_extended_result_codes(sqlite3 *a1, int onoff)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_14;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_14:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(196159);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    xmmword_1ED452F18(*(a1 + 3));
    v6 = *(a1 + 3);
    if (onoff)
    {
      v7 = -1;
    }

    else
    {
      v7 = 255;
    }

    *(a1 + 22) = v7;
    if (v6)
    {
      xmmword_1ED452F28(v6);
    }
  }

  else
  {
    if (onoff)
    {
      v9 = -1;
    }

    else
    {
      v9 = 255;
    }

    *(a1 + 22) = v9;
  }

  return 0;
}

int sqlite3_busy_timeout(sqlite3 *a1, int ms)
{
  if (!a1)
  {
    v3 = "NULL";
    goto LABEL_12;
  }

  v2 = *(a1 + 113);
  if (v2 == 186)
  {
LABEL_5:
    v3 = "unopened";
LABEL_12:
    sqlite3_log(21, "API call with %s database connection pointer", v3);

    return sub_1819012D0(193634);
  }

  if (v2 != 118)
  {
    if (v2 != 109)
    {
      v3 = "invalid";
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v4 = *(a1 + 3);
  if (ms < 1)
  {
    if (v4)
    {
      v9 = a1;
      xmmword_1ED452F18(*(a1 + 3));
      a1 = v9;
      v10 = *(v9 + 3);
      *(v9 + 664) = 0u;
      *(v9 + 85) = v9;
      *(v9 + 172) = 0;
      *(v9 + 197) = 0;
      if (v10)
      {
        xmmword_1ED452F28(v10);
        a1 = v9;
      }
    }

    else
    {
      *(a1 + 664) = 0u;
      *(a1 + 85) = a1;
      *(a1 + 172) = 0;
      *(a1 + 197) = 0;
    }

    *(a1 + 193) = 0;
  }

  else
  {
    if (v4)
    {
      v6 = a1;
      xmmword_1ED452F18(*(a1 + 3));
      a1 = v6;
      v7 = *(v6 + 3);
      *(v6 + 83) = sub_181915228;
      *(v6 + 84) = v6;
      *(v6 + 85) = v6;
      *(v6 + 172) = 0;
      *(v6 + 197) = 0;
      if (v7)
      {
        xmmword_1ED452F28(v7);
        a1 = v6;
      }
    }

    else
    {
      *(a1 + 83) = sub_181915228;
      *(a1 + 84) = a1;
      *(a1 + 85) = a1;
      *(a1 + 172) = 0;
    }

    *(a1 + 193) = ms;
    *(a1 + 197) = ms;
  }

  return 0;
}

int sqlite3_changes(sqlite3 *a1)
{
  if (a1)
  {
    v1 = *(a1 + 113);
    switch(v1)
    {
      case 186:
        goto LABEL_5;
      case 118:
        return *(a1 + 30);
      case 109:
LABEL_5:
        v2 = "unopened";
        break;
      default:
        v2 = "invalid";
        break;
    }
  }

  else
  {
    v2 = "NULL";
  }

  sqlite3_log(21, "API call with %s database connection pointer", v2);
  sub_1819012D0(192814);
  return 0;
}

int sqlite3_set_authorizer(sqlite3 *a1, int (__cdecl *xAuth)(void *, int, const char *, const char *, const char *, const char *), void *pUserData)
{
  if (!a1)
  {
    v4 = "NULL";
    goto LABEL_16;
  }

  v3 = *(a1 + 113);
  if (v3 == 186)
  {
LABEL_5:
    v4 = "unopened";
LABEL_16:
    sqlite3_log(21, "API call with %s database connection pointer", v4);

    return sub_1819012D0(131339);
  }

  if (v3 != 118)
  {
    if (v3 != 109)
    {
      v4 = "invalid";
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v5 = a1;
    v6 = xAuth;
    v7 = pUserData;
    xmmword_1ED452F18(*(a1 + 3));
    pUserData = v7;
    xAuth = v6;
    a1 = v5;
  }

  *(a1 + 66) = xAuth;
  *(a1 + 67) = pUserData;
  if (xAuth)
  {
    for (i = *(a1 + 1); i; i = *(i + 16))
    {
      *(i + 268) = *(i + 268) & 0xFFFC | 2;
    }
  }

  v9 = *(a1 + 3);
  if (v9)
  {
    xmmword_1ED452F28(v9);
  }

  return 0;
}

void *sub_1818DE534(uint64_t a1, int a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 144);
  v9 = *(a1 + 148);
  if (v8 + a2 > v9)
  {
    v10 = *(a1 + 24);
    v11 = 2 * v9;
    v12 = v9 == 0;
    v13 = 25;
    if (!v12)
    {
      v13 = v11;
    }

    v14 = *v10;
    if (v13 > *(*v10 + 156))
    {
      if (!*(v14 + 103) && !*(v14 + 104))
      {
        *(v14 + 103) = 1;
        if (*(v14 + 220) >= 1)
        {
          *(v14 + 424) = 1;
        }

        ++*(v14 + 432);
        *(v14 + 436) = 0;
        v15 = *(v14 + 344);
        if (v15)
        {
          sub_181910730(v15, "out of memory", a3, a4, a5, a6, a7, a8, v30);
          v16 = *(v14 + 344);
          *(v16 + 24) = 7;
          v17 = *(v16 + 216);
          if (v17)
          {
            v18 = 0;
            do
            {
              ++*(v17 + 52);
              *(v17 + 24) = 7;
              v17 = *(v17 + 216);
            }

            while (v17);
            return v18;
          }
        }
      }

      return 0;
    }

    v19 = *(a1 + 136);
    v20 = 40 * v13;
    if (v19)
    {
      if (*(v14 + 512) > v19)
      {
        if (*(v14 + 496) <= v19)
        {
          if (v20 < 0x81)
          {
LABEL_20:
            v21 = a3;
            v22 = a2;
            v23 = a1;
LABEL_26:
            if (*(v14 + 520) > v19)
            {
              if (*(v14 + 496) <= v19)
              {
                v24 = 128;
                goto LABEL_30;
              }

              if (*(v14 + 504) <= v19)
              {
                v24 = *(v14 + 438);
                goto LABEL_30;
              }
            }

LABEL_29:
            v24 = xmmword_1ED452EC0(v19);
LABEL_30:
            a1 = v23;
            a2 = v22;
            a3 = v21;
            *(v10 + 16) = v24;
            *(v23 + 148) = v24 / 0x28uLL;
            *(v23 + 136) = v19;
            v8 = *(v23 + 144);
            goto LABEL_31;
          }
        }

        else if (*(v14 + 504) <= v19 && v20 <= *(v14 + 438))
        {
          goto LABEL_20;
        }
      }

      v21 = a3;
      v22 = a2;
      v23 = a1;
      v19 = sub_181929F38(*v10, v19, v20, 0x10B204047B31FBCLL);
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      v21 = a3;
      v22 = a2;
      v23 = a1;
      v19 = sub_181929E8C(*v10, v20, 0x10B204047B31FBCLL);
      if (!v19)
      {
        return 0;
      }
    }

    v14 = *v10;
    if (!*v10)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v19 = *(a1 + 136);
LABEL_31:
  v18 = &v19[5 * v8];
  if (a2 >= 1)
  {
    v25 = &v19[5 * v8 + 1];
    v26 = a2;
    do
    {
      v27 = *a3;
      *(v25 - 8) = v27;
      v28 = a3[2];
      *(v25 - 4) = a3[1];
      *v25 = v28;
      if ((byte_181A203EA[v27] & 1) != 0 && v28 >= 1)
      {
        *v25 = *(a1 + 144) + v28;
      }

      *(v25 + 4) = a3[3];
      *(v25 - 7) = 0;
      *(v25 + 8) = 0;
      *(v25 - 6) = 0;
      a3 += 4;
      v25 += 40;
      --v26;
    }

    while (v26);
    v8 = *(a1 + 144);
  }

  *(a1 + 144) = v8 + a2;
  return v18;
}

int sqlite3_column_count(sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v1 = pStmt;
    v2 = *(*pStmt + 24);
    if (v2)
    {
      xmmword_1ED452F18(v2);
      v3 = *(*v1 + 24);
      LODWORD(pStmt) = v1[130];
      if (v3)
      {
        v4 = v1[130];
        xmmword_1ED452F28(v3);
        LODWORD(pStmt) = v4;
      }
    }

    else
    {
      LODWORD(pStmt) = v1[130];
    }
  }

  return pStmt;
}

int sqlite3_column_int(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v4 = *(*a1 + 24);
    if (v4)
    {
      xmmword_1ED452F18(v4);
    }

    v5 = *(a1 + 20);
    if (v5 && *(a1 + 130) > iCol)
    {
      v6 = (v5 + (iCol << 6));
      goto LABEL_9;
    }

    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
  }

  v6 = &qword_181A20ED0;
LABEL_9:
  v8 = *(v6 + 10);
  if ((v8 & 0x24) != 0)
  {
    v9 = *v6;
  }

  else if ((v8 & 8) != 0)
  {
    v15 = *v6;
    if (*v6 >= -9.22337204e18)
    {
      if (v15 <= 9.22337204e18)
      {
        *&v9 = v15;
      }

      else
      {
        LODWORD(v9) = -1;
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else if ((v8 & 0x12) != 0 && v6[1])
  {
    LODWORD(v9) = sub_18193CFCC(v6);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (a1)
  {
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }
  }

  return LODWORD(v9);
}

uint64_t sub_1818DE99C(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return *(a1 + 116);
  }

  v2 = *(a1 + 116) | (*(a1 + 30) << 8) & 0x1000 | 0x8000u;
  *(a1 + 112) = 4096;
  *(a1 + 116) = v2;
  return v2;
}

void *sub_1818DE9E4(void *result, unsigned int *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a2;
  v10 = *result;
  v11 = result[43];
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = result;
  if (*(result + 302) == 1)
  {
    goto LABEL_3;
  }

  if (a2)
  {
    v14 = *a2;
    if (!a4)
    {
      v21 = 0;
      v70 = *a2;
      v16 = v14;
      v69 = (a3 + 8);
      v17 = *(a3 + 8) + 16 * v14 + 65;
      v22 = a5;
      if (!v10)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (*a4 != v14)
    {
      sub_181910730(result, "number of columns in foreign key does not match the number of columns in the referenced table", a3, a4, a5, a6, a7, a8, v65);
LABEL_4:
      result = sub_18194E5B8(v10, v9);
      goto LABEL_5;
    }

LABEL_18:
    v16 = v14;
    v69 = (a3 + 8);
    v70 = v14;
    v17 = *(a3 + 8) + 16 * v14 + 65;
    v18 = *a4;
    if (v18 < 1)
    {
      v21 = 1;
      v22 = a5;
      if (!v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v71 = a5;
      v19 = (a4 + 4);
      do
      {
        if (*v19)
        {
          v20 = (strlen(*v19) & 0x3FFFFFFF) + 1;
        }

        else
        {
          v20 = 1;
        }

        v17 += v20;
        v19 += 3;
        --v18;
      }

      while (v18);
      v21 = 1;
      v22 = v71;
      if (!v10)
      {
LABEL_32:
        result = sub_181902484(v17, 1394572155);
        if (!result)
        {
          goto LABEL_3;
        }

LABEL_33:
        v66 = v10;
        v68 = v8;
        v23 = v21;
        v24 = result;
        bzero(result, v17);
        *v24 = v11;
        v25 = (v24 + 64);
        v26 = (v24 + 64 + 16 * v16);
        *(v24 + 8) = *(v11 + 72);
        *(v24 + 16) = v26;
        v27 = *(v12 + 302);
        if (v27 > 3 || v27 == 2)
        {
          v63 = *v12 ? sub_181929E8C(*v12, 0x20uLL, 0x10F00409A20EBA4) : sub_181902484(32, 0x10F00409A20EBA4);
          if (v63)
          {
            *v63 = 0u;
            *(v63 + 16) = 0u;
            *v63 = v26;
            *(v63 + 8) = *a3;
            *(v63 + 24) = *(v12 + 408);
            *(v12 + 408) = v63;
          }
        }

        memcpy(v26, *a3, *(a3 + 8));
        v26[*(a3 + 8)] = 0;
        v33 = *v26;
        if (byte_181A204C8[*v26] < 0)
        {
          v34 = 0;
          if (v33 == 91)
          {
            v33 = 93;
          }

          for (i = 1; ; ++i)
          {
            v36 = i;
            v37 = v26[i];
            if (v37 == v33)
            {
              ++i;
              LOBYTE(v37) = v33;
              if (v26[v36 + 1] != v33)
              {
                break;
              }
            }

            v26[v34++] = v37;
          }

          v26[v34] = 0;
        }

        v38 = *v69;
        *(v24 + 40) = v70;
        v67 = v9;
        if (v9)
        {
          if (v70 >= 1)
          {
            v39 = 0;
            v40 = *(v11 + 54);
            v41 = v9 + 1;
            while (1)
            {
              if (v40 < 1)
              {
                v64 = 0;
LABEL_95:
                sub_181910730(v12, "unknown column %s in foreign key definition", v28, v29, v70, v30, v31, v32, v41[3 * v64 + 1]);
                v8 = v68;
                v10 = v66;
LABEL_96:
                result = sub_181929C84(v10, v24);
                goto LABEL_3;
              }

              v42 = 0;
              v43 = v41[3 * v39 + 1];
LABEL_50:
              for (j = 0; ; ++j)
              {
                v28 = *(*(*(v11 + 8) + 16 * v42) + j);
                v29 = *(v43 + j);
                if (v28 == v29)
                {
                  break;
                }

                v28 = byte_181A20298[*(*(*(v11 + 8) + 16 * v42) + j)];
                v29 = byte_181A20298[*(v43 + j)];
                if (v28 != v29)
                {
                  if (++v42 != v40)
                  {
                    goto LABEL_50;
                  }

                  v64 = v39;
                  goto LABEL_95;
                }

LABEL_52:
                ;
              }

              if (*(*(*(v11 + 8) + 16 * v42) + j))
              {
                goto LABEL_52;
              }

              v45 = &v25[4 * v39];
              *v45 = v42;
              if (*(v12 + 302) >= 2u)
              {
                v46 = *(v12 + 408);
                if (v46)
                {
                  while (*v46 != v43)
                  {
                    v46 = v46[3];
                    if (!v46)
                    {
                      goto LABEL_47;
                    }
                  }

                  *v46 = v45;
                }
              }

LABEL_47:
              if (++v39 == v70)
              {
                goto LABEL_64;
              }
            }
          }
        }

        else
        {
          *v25 = *(v11 + 54) - 1;
LABEL_64:
          if (v70 > 0)
          {
            v47 = v23;
          }

          else
          {
            v47 = 0;
          }

          if (v47 == 1)
          {
            v48 = 0;
            v49 = &v26[v38 + 1];
            do
            {
              v51 = &v68[3 * v48 + 1];
              v52 = *(v51 + 8);
              if (v52)
              {
                v53 = strlen(*(v51 + 8)) & 0x3FFFFFFF;
              }

              else
              {
                v53 = 0;
              }

              *&v25[4 * v48 + 2] = v49;
              if (*(v12 + 302) >= 2u)
              {
                v54 = *(v12 + 408);
                if (v54)
                {
                  while (*v54 != v52)
                  {
                    v54 = v54[3];
                    if (!v54)
                    {
                      goto LABEL_70;
                    }
                  }

                  *v54 = v49;
                }
              }

LABEL_70:
              memcpy(v49, v52, v53);
              v50 = &v49[v53];
              *v50 = 0;
              v49 = v50 + 1;
              ++v48;
            }

            while (v48 != v70);
          }
        }

        *(v24 + 44) = 0;
        *(v24 + 45) = v22;
        result = sub_18188FAF0(*(v11 + 96) + 80, *(v24 + 16), v24);
        if (result == v24)
        {
          v10 = v66;
          v9 = v67;
          v8 = v68;
          if (!*(v66 + 103) && !*(v66 + 104))
          {
            *(v66 + 103) = 1;
            if (*(v66 + 55) >= 1)
            {
              *(v66 + 106) = 1;
            }

            ++*(v66 + 108);
            *(v66 + 218) = 0;
            v61 = v66[43];
            if (v61)
            {
              sub_181910730(v61, "out of memory", v55, v56, v57, v58, v59, v60, v65);
              for (k = v66[43]; ; ++*(k + 52))
              {
                *(k + 24) = 7;
                k = *(k + 216);
                if (!k)
                {
                  break;
                }
              }
            }
          }

          goto LABEL_96;
        }

        v8 = v68;
        v10 = v66;
        if (result)
        {
          *(v24 + 24) = result;
          result[4] = v24;
        }

        *(v11 + 72) = v24;
        v9 = v67;
LABEL_3:
        if (v9)
        {
          goto LABEL_4;
        }

LABEL_5:
        if (!v8)
        {
          return result;
        }

        goto LABEL_6;
      }
    }

LABEL_29:
    result = sub_181929E8C(v10, v17, 1394572155);
    if (!result)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  v15 = *(v11 + 54);
  if (v15 < 1)
  {
    goto LABEL_5;
  }

  if (!a4)
  {
    v21 = 0;
    v17 = *(a3 + 8) + 81;
    v16 = 1;
    v69 = (a3 + 8);
    v70 = 1;
    v22 = a5;
    if (!v10)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (*a4 == 1)
  {
    v14 = 1;
    goto LABEL_18;
  }

  sub_181910730(result, "foreign key on %s should reference only one column of table %T", a3, a4, a5, a6, a7, a8, *(*(v11 + 8) + 16 * (v15 - 1)));
LABEL_6:

  return sub_18194E5B8(v10, v8);
}

uint64_t sub_1818DEFEC(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v4 = *a1;
  if (*(*a1 + 197))
  {
    return 0;
  }

  v10 = *(*(v4 + 32) + 32 * a4);
  result = (*(v4 + 528))(*(v4 + 536), 20, a2, a3, v10, *(a1 + 368));
  if (result == 1)
  {
    v17 = sqlite3_mprintf("%s.%s", a2, a3);
    if (a4 || *(v4 + 40) >= 3)
    {
      LOBYTE(v17) = sqlite3_mprintf("%s.%z", v10, v17);
    }

    sub_181910730(a1, "access to %z is prohibited", v18, v19, v20, v21, v22, v23, v17);
    result = 1;
    v24 = 23;
  }

  else
  {
    if ((result & 0xFFFFFFFD) == 0)
    {
      return result;
    }

    v25 = result;
    sub_181910730(a1, "authorizer malfunction", v11, v12, v13, v14, v15, v16, v26);
    result = v25;
    v24 = 1;
  }

  *(a1 + 24) = v24;
  return result;
}

double sqlite3_column_double(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (!v5 || *(a1 + 130) <= iCol)
  {
    v9 = *a1;
    *(v9 + 80) = 25;
    sub_181932D5C(v9, 25);
LABEL_10:
    v6 = &qword_181A20ED0;
    LOBYTE(v7) = 1;
    goto LABEL_11;
  }

  v6 = (v5 + (iCol << 6));
  v7 = *(v6 + 10);
  if ((v7 & 8) != 0)
  {
    v8 = *v6;
    if (!a1)
    {
      return v8;
    }

    goto LABEL_18;
  }

LABEL_11:
  if ((v7 & 0x24) != 0)
  {
    v8 = *v6;
    if (!a1)
    {
      return v8;
    }
  }

  else if ((v7 & 0x12) != 0)
  {
    v8 = sub_18193CF90(v6);
    if (!a1)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0.0;
    if (!a1)
    {
      return v8;
    }
  }

LABEL_18:
  v10 = *a1;
  v11 = *(a1 + 13);
  if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
  {
    v12 = sub_18193C988(v10, v11);
    v10 = *a1;
  }

  *(a1 + 13) = v12;
  v13 = *(v10 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  return v8;
}

void sub_1818DF214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v8 = a2;
    v10 = *a1;
    v11 = *(a2 + 8);
    v12 = *(v11 + 1);
    if (!*(v11 + 1))
    {
      v16 = *a1;
      LODWORD(v14) = *(a1 + 296) + 1;
      *(a1 + 296) = v14;
LABEL_46:
      *(v8 + 48) = v14;
      if (v14 <= *(v16 + 172))
      {
        return;
      }

      sub_181910730(a1, "too many SQL variables", a3, a4, a5, a6, a7, a8, v38);
      v22 = *a1;
      while (1)
      {
        v23 = *(v8 + 4);
        if ((v23 & 3) == 0)
        {
          v24 = *(v8 + 56);
          if (v24 > 0)
          {
            break;
          }
        }

        v8 = *(v8 + 16);
        if (!v8)
        {
          return;
        }
      }

      goto LABEL_51;
    }

    v13 = a3;
    if (*v11 != 63)
    {
      v39 = a3;
      v16 = *a1;
      v17 = *(a1 + 320);
      if (v17)
      {
        v18 = v17[1];
        v19 = 2;
        while (1)
        {
          v20 = &v17[v19];
          if (!strncmp(v20 + 8, v11, v39) && !*(v20 + v39 + 8))
          {
            break;
          }

          v19 += v20[1];
          if (v19 >= v18)
          {
            goto LABEL_13;
          }
        }

        LODWORD(v14) = *v20;
        if (*v20)
        {
          goto LABEL_46;
        }
      }

LABEL_13:
      LODWORD(v14) = *(a1 + 296) + 1;
      *(a1 + 296) = v14;
      v10 = v16;
      v13 = v39;
      goto LABEL_31;
    }

    v40 = 0;
    if (a3 == 2)
    {
      v14 = v12 - 48;
      v15 = *(v10 + 172);
    }

    else
    {
      v21 = sub_18193D008((v11 + 1), &v40, a3 - 1, 1) != 0;
      v14 = v40;
      v15 = *(v10 + 172);
      if (v21)
      {
        goto LABEL_19;
      }
    }

    if (v14 >= 1 && v14 <= v15)
    {
      if (*(a1 + 296) < v14)
      {
        *(a1 + 296) = v14;
        v17 = *(a1 + 320);
        goto LABEL_31;
      }

      v17 = *(a1 + 320);
      if (v17)
      {
        v25 = 2;
        while (1)
        {
          v26 = &v17[v25];
          if (*v26 == v14)
          {
            break;
          }

          v25 += v26[1];
          if (v25 >= v17[1])
          {
            goto LABEL_31;
          }
        }

        if (v26 != -8)
        {
          v16 = v10;
          goto LABEL_46;
        }
      }

LABEL_31:
      v27 = v13 / 4;
      v28 = v13 / 4 + 3;
      if (v17)
      {
        v29 = v17[1];
        v30 = *v17;
        v31 = v29 + v28;
        if (v29 + v28 <= v30)
        {
LABEL_44:
          v36 = &v17[v29];
          *v36 = v14;
          v36[1] = v28;
          v37 = v36 + 2;
          v17[1] = v31;
          memcpy(v36 + 2, v11, v13);
          *(v37 + v13) = 0;
          goto LABEL_45;
        }

        v32 = 2 * v30 + v28;
        v33 = 4 * v32;
        if (*(v10 + 512) > v17)
        {
          if (*(v10 + 496) <= v17)
          {
            if (v33 < 0x81)
            {
LABEL_37:
              *v17 = v32;
              goto LABEL_44;
            }
          }

          else if (*(v10 + 504) <= v17 && v33 <= *(v10 + 438))
          {
            goto LABEL_37;
          }
        }

        v35 = sub_181929F38(v10, v17, v33, 0x100004052888210);
        if (v35)
        {
          v29 = v35[1];
          v17 = v35;
          goto LABEL_43;
        }
      }

      else
      {
        LODWORD(v32) = v27 + 13;
        v34 = sub_181929E8C(v10, 4 * (v27 + 13), 0x100004052888210);
        v17 = v34;
        if (v34)
        {
          v29 = 2;
          *(v34 + 4) = 2;
LABEL_43:
          *v17 = v32;
          v31 = v29 + v28;
          goto LABEL_44;
        }
      }

LABEL_45:
      v16 = v10;
      *(a1 + 320) = v17;
      goto LABEL_46;
    }

LABEL_19:
    sub_181910730(a1, "variable number must be between ?1 and ?%d", a3, a4, a5, a6, a7, a8, v15);
    v22 = *a1;
    while (1)
    {
      v23 = *(v8 + 4);
      if ((v23 & 3) == 0)
      {
        v24 = *(v8 + 56);
        if (v24 > 0)
        {
          break;
        }
      }

      v8 = *(v8 + 16);
      if (!v8)
      {
        return;
      }
    }

LABEL_51:
    if ((v23 & 0x40000000) == 0)
    {
      *(v22 + 84) = v24;
    }
  }
}

uint64_t sub_1818DF574(uint64_t *a1, int a2, char *a3, uint64_t a4, uint64_t (*a5)(uint64_t result), unsigned int a6)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v15 = *a1;
      if (*a1)
      {
        *(v15 + 80) = 25;
        sub_181932D5C(v15, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement");
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement");
    }

    result = 25;
    goto LABEL_14;
  }

  result = sub_1818DF6EC(a1, a2 - 1);
  if (result)
  {
LABEL_14:
    if (a5 + 1 < 2)
    {
      return result;
    }

    v16 = result;
    a5(a3);
    return v16;
  }

  if (!a3)
  {
LABEL_17:
    result = 0;
    goto LABEL_21;
  }

  v13 = a1[16] + (a2 << 6);
  result = sub_1818900D0(v13 - 64, a3, a4, a6, a5);
  if (!a6 || result)
  {
LABEL_19:
    if (result)
    {
      v17 = *a1;
      *(v17 + 80) = result;
      v18 = result;
      sub_181932D5C(v17, result);
      result = sub_18193C988(*a1, v18);
    }

    goto LABEL_21;
  }

  v14 = *(*a1 + 100);
  if ((*(v13 - 44) & 2) != 0)
  {
    if (*(v13 - 42) == v14)
    {
      goto LABEL_17;
    }

    result = sub_1818F1820((v13 - 64), v14);
    goto LABEL_19;
  }

  result = 0;
  *(v13 - 42) = v14;
LABEL_21:
  v19 = *(*a1 + 24);
  if (!v19)
  {
    return result;
  }

  v16 = result;
  xmmword_1ED452F28(v19);
  return v16;
}

uint64_t sub_1818DF6EC(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sqlite3_log(21, "API called with NULL prepared statement");
LABEL_17:
    v10 = 101313;
    goto LABEL_21;
  }

  if (!*a1)
  {
    sqlite3_log(21, "API called with finalized prepared statement");
    goto LABEL_17;
  }

  v3 = *(*a1 + 24);
  if (v3)
  {
    v4 = a2;
    xmmword_1ED452F18(v3);
    a2 = v4;
  }

  if (*(a1 + 267) == 1)
  {
    if (*(a1 + 32) <= a2)
    {
      v14 = *a1;
      *(v14 + 80) = 25;
      sub_181932D5C(v14, 25);
      v15 = *(*a1 + 24);
      if (v15)
      {
        xmmword_1ED452F28(v15);
      }

      return 25;
    }

    else
    {
      v5 = *(a1 + 128) + (a2 << 6);
      if ((*(v5 + 20) & 0x9000) != 0 || *(v5 + 32))
      {
        v6 = a2;
        sub_18193CA00(*(a1 + 128) + (a2 << 6));
        a2 = v6;
      }

      *(v5 + 20) = 1;
      *(*a1 + 80) = 0;
      v7 = *(a1 + 372);
      if (!v7)
      {
        return 0;
      }

      v8 = 1 << a2;
      if (a2 > 0x1E)
      {
        v8 = 0x80000000;
      }

      if ((v7 & v8) != 0)
      {
        result = 0;
        *(a1 + 268) = *(a1 + 268) & 0xFFFC | 1;
      }

      else
      {
        return 0;
      }
    }

    return result;
  }

  v11 = *a1;
  v12 = sub_1819012D0(101317);
  *(v11 + 80) = v12;
  sub_181932D5C(v11, v12);
  v13 = *(*a1 + 24);
  if (v13)
  {
    xmmword_1ED452F28(v13);
  }

  sqlite3_log(21, "bind on a busy prepared statement: [%s]", *(a1 + 320));
  v10 = 101321;
LABEL_21:

  return sub_1819012D0(v10);
}

int sqlite3_expired(sqlite3_stmt *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(*a1 + 24);
  if (!v2)
  {
    return (*(a1 + 134) & 3) != 0;
  }

  xmmword_1ED452F18(v2);
  v3 = *(*a1 + 24);
  result = (*(a1 + 134) & 3) != 0;
  if (v3)
  {
    v5 = (*(a1 + 134) & 3) != 0;
    xmmword_1ED452F28(v3);
    return v5;
  }

  return result;
}

void sqlite3_progress_handler(sqlite3 *a1, int a2, int (__cdecl *a3)(void *), void *a4)
{
  if (!a1)
  {
    v5 = "NULL";
    goto LABEL_20;
  }

  v4 = *(a1 + 113);
  if (v4 == 186)
  {
LABEL_5:
    v5 = "unopened";
LABEL_20:
    sqlite3_log(21, "API call with %s database connection pointer", v5);

    sub_1819012D0(193609);
    return;
  }

  if (v4 != 118)
  {
    if (v4 != 109)
    {
      v5 = "invalid";
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  if (*(a1 + 3))
  {
    v6 = a1;
    v7 = a4;
    v8 = a2;
    v9 = a3;
    xmmword_1ED452F18(*(a1 + 3));
    a3 = v9;
    a2 = v8;
    a4 = v7;
    a1 = v6;
  }

  if (a2 <= 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  if (a2 <= 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a4;
  }

  *(a1 + 68) = v10;
  *(a1 + 140) = a2 & ~(a2 >> 31);
  *(a1 + 69) = v11;
  if (*(a1 + 3))
  {
    v12 = xmmword_1ED452F28;

    v12();
  }
}

void sub_1818DFA70(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v176 = 0;
  v174 = 0;
  v12 = *(a1 + 43);
  v13 = *(a2 + 16);
  if (sub_18195B27C(a1, a2, a3, a4, a5, a6, a7, a8))
  {
    return;
  }

  v14 = sub_18195B378(a1, a2);
  v15 = *(a2 + 16);
  v16 = *v15;
  if (v16 == 176)
  {
    v16 = v15[2];
  }

  if (v16 == 177)
  {
    goto LABEL_7;
  }

  if (v16 == 139)
  {
    v15 = *(v15 + 4);
LABEL_7:
    v17 = **(v15 + 4);
    goto LABEL_9;
  }

  v17 = 1;
LABEL_9:
  v172 = v9;
  v170 = v8;
  v169 = v14;
  if (*a1)
  {
    v18 = sub_181929E8C(*a1, 4 * v17, 0x100004052888210);
  }

  else
  {
    v18 = sub_181902484(4 * v17, 0x100004052888210);
  }

  v21 = v18;
  v162 = v17;
  if (v18)
  {
    bzero(v18, 4 * v17);
  }

  v161 = v21;
  if (*(*a1 + 103))
  {
    goto LABEL_15;
  }

  v22 = a1[2];
  v23 = v172;
  v24 = v170;
  if (v172 == v170)
  {
    v25 = 0;
  }

  else
  {
    v25 = &v176;
  }

  v166 = sub_1818E0B5C(a1, a2, 3, v25, v21, &v174, v19, v20);
  *(a1 + 43) &= ~4u;
  v32 = *v13;
  v33 = v32;
  if (v32 == 176)
  {
    v33 = v13[2];
  }

  v34 = v12 & 4;
  v175 = 0;
  v35 = v13;
  if (v33 != 177)
  {
    if (v33 != 139)
    {
LABEL_29:
      v37 = sub_181957E00(a1, v13, &v175);
LABEL_30:
      v38 = v37;
      goto LABEL_31;
    }

    v35 = *(v13 + 4);
  }

  v36 = **(v35 + 4);
  if (v36 == 1)
  {
    goto LABEL_29;
  }

  if (v32 == 139)
  {
    v37 = sub_1818E1564(a1, v13, v26, v27, v28, v29, v30, v31);
    goto LABEL_30;
  }

  v46 = *(a1 + 15);
  v38 = (v46 + 1);
  *(a1 + 15) = v46 + v36;
  if (v36 >= 1)
  {
    v47 = 8;
    v160 = v46 + 1;
    do
    {
      sub_18195CD44(a1, *(*(v13 + 4) + v47), v38);
      v38 = (v38 + 1);
      v47 += 24;
      --v36;
    }

    while (v36);
    v23 = v172;
    v24 = v170;
    v38 = v160;
  }

LABEL_31:
  *(a1 + 43) = *(a1 + 43) & 0xFB | v34;
  v159 = v38;
  if (v162 < 1)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = 0;
    while (v39 == *(v161 + v39))
    {
      if (v162 == ++v39)
      {
        v40 = v38;
        goto LABEL_59;
      }
    }
  }

  v40 = v38;
  if (v39 != v162)
  {
    if (v162 == 1)
    {
      if (*(a1 + 31))
      {
        v41 = *(a1 + 31) - 1;
        *(a1 + 31) = v41;
        v40 = *(a1 + v41 + 46);
      }

      else
      {
        v40 = (*(a1 + 15) + 1);
        *(a1 + 15) = v40;
      }
    }

    else
    {
      v42 = *(a1 + 11);
      v43 = __OFSUB__(v42, v162);
      v44 = v42 - v162;
      if (v44 < 0 != v43)
      {
        v45 = *(a1 + 15);
        v40 = (v45 + 1);
        *(a1 + 15) = v45 + v162;
      }

      else
      {
        v40 = *(a1 + 12);
        *(a1 + 11) = v44;
        *(a1 + 12) = v40 + v162;
      }

      if (v162 < 1)
      {
        goto LABEL_59;
      }
    }

    v48 = v161;
    v49 = v38;
    v50 = v162;
    do
    {
      v52 = *v48++;
      v27 = (v52 + v40);
      v53 = *(v22 + 36);
      if (*(v22 + 37) > v53)
      {
        *(v22 + 36) = v53 + 1;
        v51 = &v22[17][5 * v53];
        *v51 = 80;
        *(v51 + 4) = v49;
        *(v51 + 8) = v27;
        *(v51 + 12) = 0;
        *(v51 + 28) = 0;
        *(v51 + 20) = 0;
        *(v51 + 36) = 0;
      }

      else
      {
        v54 = v40;
        sub_18194C8AC(v22, 80, v49, v27, 0, v29, v30, v31);
        v40 = v54;
      }

      v49 = (v49 + 1);
      --v50;
    }

    while (v50);
    v23 = v172;
    v24 = v170;
    LODWORD(v38) = v159;
  }

LABEL_59:
  v171 = v40;
  if (v166 != 5)
  {
    if (v23 == v24)
    {
      __sa = 0;
      v62 = v23;
    }

    else
    {
      v61 = *(a1 + 18);
      v62 = (v61 - 1);
      *(a1 + 18) = v62;
      __sa = v61 - 1;
    }

    if (v162 >= 1)
    {
      v63 = 0;
      v64 = v40;
      while (1)
      {
        v66 = *(a2 + 16);
        v67 = *v66;
        v68 = v67;
        if (v67 == 176)
        {
          v68 = v66[2];
        }

        v69 = *(a2 + 16);
        if (v68 == 177)
        {
          goto LABEL_75;
        }

        if (v68 == 139)
        {
          break;
        }

LABEL_80:
        if (*(a1 + 13))
        {
          goto LABEL_15;
        }

        while (1)
        {
          v70 = *v66;
          if ((v70 - 173) >= 2)
          {
            break;
          }

          v66 = *(v66 + 2);
        }

        if (v70 == 176)
        {
          v70 = v66[2];
        }

        if ((v70 - 154) >= 3 && v70 != 118)
        {
          if (v70 != 168 || (v66[6] & 0x20) != 0 || (v71 = *(v66 + 9)) == 0 || (v72 = *(v66 + 12), (v72 & 0x80000000) == 0) && (v73 = *(v71 + 8)) != 0 && v72 < *(v71 + 54) && (*(v73 + 16 * v72 + 8) & 0xF) == 0)
          {
            v26 = v63 + v64;
            v74 = *(v22 + 36);
            if (*(v22 + 37) > v74)
            {
              *(v22 + 36) = v74 + 1;
              v65 = &v22[17][5 * v74];
              *v65 = 51;
              *(v65 + 4) = v26;
              *(v65 + 8) = v62;
              *(v65 + 12) = 0;
              *(v65 + 28) = 0;
              *(v65 + 20) = 0;
              *(v65 + 36) = 0;
            }

            else
            {
              sub_18194C8AC(v22, 51, v26, v62, 0, v29, v30, v31);
              v40 = v171;
            }
          }
        }

        if (++v63 == v162)
        {
          goto LABEL_97;
        }
      }

      v69 = *(v66 + 4);
LABEL_75:
      if (**(v69 + 32) >= 2)
      {
        if (v67 == 139 || v66[2] == 139)
        {
          v66 = *(v66 + 4);
        }

        v66 = *(*(v66 + 4) + 24 * v63 + 8);
      }

      goto LABEL_80;
    }

LABEL_97:
    if (v166 == 1)
    {
      v75 = v174;
      v76 = *(v22 + 36);
      v77 = v172;
      v78 = v162;
      if (*(v22 + 37) <= v76)
      {
        sub_18194C8AC(v22, 30, v174, v172, v40, v29, v30, v31);
      }

      else
      {
        *(v22 + 36) = v76 + 1;
        v79 = &v22[17][5 * v76];
        *v79 = 30;
        *(v79 + 4) = v75;
        *(v79 + 8) = v172;
        *(v79 + 12) = v40;
        *(v79 + 24) = 0;
        *(v79 + 32) = 0;
        *(v79 + 16) = 0;
      }

      v115 = v38;
      v117 = v170;
      v118 = *(v22 + 36);
      if (*(v22 + 37) > v118)
      {
        *(v22 + 36) = v118 + 1;
        v119 = &v22[17][5 * v118];
        *v119 = 9;
        *(v119 + 1) = 0u;
        *(v119 + 17) = 0u;
        *(v119 + 32) = 0;
        goto LABEL_197;
      }

      v120 = sub_18194C8AC(v22, 9, 0, 0, 0, v29, v30, v31);
LABEL_196:
      v118 = v120;
LABEL_197:
      if (v78 == 1)
      {
        v26 = v176;
        if (v176)
        {
          sub_1818A2964(v22, 52, v176, v77, 0, v29, v30, v31);
        }
      }

      if (v77 == v117)
      {
        sub_1818A2964(v22, 9, 0, v77, 0, v29, v30, v31);
      }

      if (__sa)
      {
        v122 = v22[3];
        v26 = ~__sa;
        if (*(v122 + 72) + *(v122 + 76) < 0)
        {
          sub_18195CB84(v122, v22, v26);
        }

        else
        {
          *(*(v122 + 80) + 4 * v26) = *(v22 + 36);
        }
      }

      v124 = *(v22 + 36);
      if (*(v22 + 37) <= v124)
      {
        v124 = sub_18194C8AC(v22, 36, v75, v77, 0, v29, v30, v31);
      }

      else
      {
        *(v22 + 36) = v124 + 1;
        v125 = &v22[17][5 * v124];
        *v125 = 36;
        *(v125 + 4) = v75;
        *(v125 + 8) = v77;
        *(v125 + 12) = 0;
        *(v125 + 28) = 0;
        *(v125 + 20) = 0;
        *(v125 + 36) = 0;
      }

      v126 = v171;
      if (v78 <= 1)
      {
        v168 = v77;
        if (v78 < 1)
        {
          goto LABEL_247;
        }
      }

      else
      {
        v168 = *(a1 + 18) - 1;
        *(a1 + 18) = v168;
      }

      v156 = v124;
      v158 = v118;
      v127 = 0;
      __sb = (a1 + 23);
      v128 = v78;
      v129 = 8;
      v130 = v128;
      while (1)
      {
        if (*(a1 + 31))
        {
          v131 = *(a1 + 31) - 1;
          *(a1 + 31) = v131;
          v132 = *&__sb[4 * v131];
        }

        else
        {
          v132 = (*(a1 + 15) + 1);
          *(a1 + 15) = v132;
        }

        v133 = *v13;
        v134 = v133;
        if (v133 == 176)
        {
          v134 = v13[2];
        }

        v135 = v13;
        if (v134 == 177)
        {
          goto LABEL_225;
        }

        v136 = v13;
        if (v134 == 139)
        {
          break;
        }

LABEL_230:
        v138 = sub_1818B4720(a1, v136, v26, v27, v28, v29, v30, v31);
        v139 = *(v22 + 36);
        if (*(v22 + 37) <= v139)
        {
          sub_18194C8AC(v22, 94, v75, v127, v132, v29, v30, v31);
        }

        else
        {
          *(v22 + 36) = v139 + 1;
          v140 = &v22[17][5 * v139];
          *v140 = 94;
          *(v140 + 4) = v75;
          *(v140 + 8) = v127;
          *(v140 + 12) = v132;
          *(v140 + 24) = 0;
          *(v140 + 32) = 0;
          *(v140 + 16) = 0;
        }

        v141 = *(v22 + 36);
        if (*(v22 + 37) <= v141)
        {
          v141 = sub_18194C8AC(v22, 53, v126, v168, v132, v29, v30, v31);
        }

        else
        {
          *(v22 + 36) = v141 + 1;
          v142 = &v22[17][5 * v141];
          *v142 = 53;
          *(v142 + 4) = v126;
          *(v142 + 8) = v168;
          *(v142 + 12) = v132;
          *(v142 + 24) = 0;
          *(v142 + 32) = 0;
          *(v142 + 16) = 0;
        }

        if (!*(*v22 + 103))
        {
          if (v141 < 0)
          {
            v141 = *(v22 + 36) - 1;
          }

          v143 = &v22[17][5 * v141];
          if (*(v143 + 1))
          {
            sub_18194CB90(v22, v143, v138, 0xFFFFFFFE);
          }

          else if (v138)
          {
            *(v143 + 16) = v138;
            *(v143 + 1) = -2;
          }
        }

        if (v132)
        {
          v144 = *(a1 + 31);
          if (v144 <= 7)
          {
            *(a1 + 31) = v144 + 1;
            *&__sb[4 * v144] = v132;
          }
        }

        ++v127;
        v126 = (v126 + 1);
        v129 += 24;
        if (v130 == v127)
        {
          v77 = v172;
          v115 = v159;
          v78 = v162;
          v124 = v156;
          v118 = v158;
LABEL_247:
          v145 = *(v22 + 36);
          if (*(v22 + 37) <= v145)
          {
            sub_18194C8AC(v22, 9, 0, v170, 0, v29, v30, v31);
          }

          else
          {
            *(v22 + 36) = v145 + 1;
            v146 = &v22[17][5 * v145];
            *v146 = 9;
            *(v146 + 8) = v170;
            *(v146 + 12) = 0;
            *(v146 + 28) = 0;
            *(v146 + 20) = 0;
            *(v146 + 36) = 0;
          }

          if (v78 >= 2)
          {
            sub_181958CD8(v22, v168);
            sub_1818A2964(v22, 39, v75, (v124 + 1), 0, v147, v148, v149);
            sub_1818A2964(v22, 9, 0, v77, 0, v150, v151, v152);
          }

          v108 = v171;
          if (*(*v22 + 103))
          {
            v153 = &byte_1EA831A58;
          }

          else
          {
            v153 = &v22[17][5 * v118];
          }

          *(v153 + 2) = *(v22 + 36);
LABEL_256:
          if (v108 != v115)
          {
            goto LABEL_257;
          }

          goto LABEL_15;
        }
      }

      v135 = *(v13 + 4);
LABEL_225:
      v136 = v13;
      if (**(v135 + 4) >= 2)
      {
        if (v133 == 139 || (v137 = v13, v13[2] == 139))
        {
          v137 = *(v13 + 4);
        }

        v136 = *(*(v137 + 4) + v129);
      }

      goto LABEL_230;
    }

    v80 = *(v22 + 36);
    v77 = v172;
    v78 = v162;
    if (*(v22 + 37) <= v80)
    {
      v80 = sub_18194C8AC(v22, 96, v40, v162, 0, v29, v30, v31);
      v40 = v171;
    }

    else
    {
      *(v22 + 36) = v80 + 1;
      v81 = &v22[17][5 * v80];
      *v81 = 96;
      *(v81 + 4) = v40;
      *(v81 + 8) = v162;
      *(v81 + 12) = 0;
      *(v81 + 28) = 0;
      *(v81 + 20) = 0;
      *(v81 + 36) = 0;
    }

    v115 = v38;
    v117 = v170;
    if (*(*v22 + 103))
    {
      if (v162 == -11)
      {
LABEL_194:
        if (v172 == v170)
        {
          if ((*(a2 + 7) & 2) != 0)
          {
            v123 = *(*v22 + 103) ? &byte_1EA831A58 : &v22[17][5 * *(a2 + 72)];
            if (*v123 == 15)
            {
              v155 = *(v123 + 3);
              if (v155 >= 1)
              {
                sub_181910A18(v22, 64, v155, v172, v171, v162, v30, v31);
              }
            }
          }

          sub_181910A18(v22, 28, v174, v172, v171, v162, v30, v31);
          v108 = v171;
          if (v171 != v38)
          {
            goto LABEL_257;
          }

          goto LABEL_15;
        }

        v75 = v174;
        v120 = sub_181910A18(v22, 29, v174, 0, v40, v162, v30, v31);
        goto LABEL_196;
      }

      sub_1818A3B68(*v22, v162, v169);
    }

    else
    {
      if (v80 < 0)
      {
        v80 = *(v22 + 36) - 1;
      }

      v121 = &v22[17][5 * v80];
      if ((v162 & 0x80000000) != 0 && !*(v121 + 1))
      {
        if (v162 == -3)
        {
          *(v121 + 16) = v169;
          *(v121 + 1) = -3;
        }

        else if (v169)
        {
          *(v121 + 16) = v169;
          *(v121 + 1) = v162;
          if (v162 == -11)
          {
            ++*(v169 + 6);
          }
        }

        goto LABEL_194;
      }

      sub_18194CB90(v22, v121, v169, v162);
    }

    v40 = v171;
    goto LABEL_194;
  }

  v157 = *(a1 + 18);
  v167 = v157 - 1;
  *(a1 + 18) = v157 - 1;
  v173 = 0;
  v55 = *(a2 + 32);
  __s = sub_1818B4720(a1, *(a2 + 16), v26, v27, v28, v29, v30, v31);
  v59 = 0;
  if (v23 != v24)
  {
    if (*(a1 + 31))
    {
      v60 = *(a1 + 31) - 1;
      *(a1 + 31) = v60;
      v59 = *(a1 + v60 + 46);
    }

    else
    {
      v59 = (*(a1 + 15) + 1);
      *(a1 + 15) = v59;
    }

    v82 = *(v22 + 36);
    if (*(v22 + 37) <= v82)
    {
      sub_18194C8AC(v22, 103, v171, v171, v59, v56, v57, v58);
    }

    else
    {
      *(v22 + 36) = v82 + 1;
      v83 = &v22[17][5 * v82];
      *v83 = 103;
      *(v83 + 4) = v171;
      *(v83 + 8) = v171;
      *(v83 + 12) = v59;
      *(v83 + 24) = 0;
      *(v83 + 32) = 0;
      *(v83 + 16) = 0;
    }
  }

  if (*v55 >= 1)
  {
    v84 = 0;
    while (1)
    {
      v86 = &v55[6 * v84 + 2];
      v87 = sub_181957E00(a1, *v86, &v173);
      v88 = v87;
      v89 = v171;
      if (!v59)
      {
        goto LABEL_128;
      }

      while (1)
      {
        v90 = *v86;
        v91 = **v86;
        if ((v91 - 173) >= 2)
        {
          break;
        }

        v86 = (v90 + 16);
      }

      if (v91 == 176)
      {
        v91 = v90[2];
      }

      if ((v91 - 154) < 3)
      {
        goto LABEL_128;
      }

      if (v91 == 118)
      {
        goto LABEL_128;
      }

      if (v91 == 168 && (v90[6] & 0x20) == 0)
      {
        v92 = *(v90 + 9);
        if (v92)
        {
          v93 = *(v90 + 12);
          if ((v93 & 0x80000000) != 0)
          {
            goto LABEL_128;
          }

          v94 = *(v92 + 8);
          if (!v94 || v93 >= *(v92 + 54) || (*(v94 + 16 * v93 + 8) & 0xF) != 0)
          {
            goto LABEL_128;
          }
        }
      }

      v95 = *(v22 + 36);
      if (*(v22 + 37) > v95)
      {
        break;
      }

      sub_18194C8AC(v22, 103, v59, v87, v59, v56, v57, v58);
      v89 = v171;
      v97 = v173;
      if (!v173)
      {
        goto LABEL_131;
      }

LABEL_129:
      v98 = *(a1 + 31);
      if (v98 <= 7)
      {
        *(a1 + 31) = v98 + 1;
        *(a1 + v98 + 46) = v97;
      }

LABEL_131:
      v99 = *(v22 + 36);
      v100 = *(v22 + 37);
      v24 = v170;
      if (v172 == v170 && v84 >= *v55 - 1)
      {
        if (v89 == v88)
        {
          v101 = 51;
        }

        else
        {
          v101 = 53;
        }

        if (v100 <= v99)
        {
          v99 = sub_18194C8AC(v22, v101, v89, v172, v88, v56, v57, v58);
        }

        else
        {
          *(v22 + 36) = v99 + 1;
          v102 = &v22[17][5 * v99];
          *v102 = v101;
          *(v102 + 2) = 0;
          *(v102 + 4) = v89;
          *(v102 + 8) = v172;
          *(v102 + 12) = v88;
          *(v102 + 1) = 0;
          *(v102 + 24) = 0;
          *(v102 + 32) = 0;
          *(v102 + 16) = 0;
        }

        if (!*(*v22 + 103))
        {
          if (v99 < 0)
          {
            v99 = *(v22 + 36) - 1;
          }

          v106 = &v22[17][5 * v99];
          if (*(v106 + 1))
          {
            sub_18194CB90(v22, v106, __s, 0xFFFFFFFE);
          }

          else if (__s)
          {
            *(v106 + 16) = __s;
            *(v106 + 1) = -2;
          }
        }

        v107 = *(v22 + 36);
        if (v107 < 1)
        {
          goto LABEL_110;
        }

        v85 = *v169 | 0x10;
      }

      else
      {
        if (v89 == v88)
        {
          v103 = 52;
        }

        else
        {
          v103 = 54;
        }

        if (v100 <= v99)
        {
          v99 = sub_18194C8AC(v22, v103, v89, v167, v88, v56, v57, v58);
        }

        else
        {
          *(v22 + 36) = v99 + 1;
          v104 = &v22[17][5 * v99];
          *v104 = v103;
          *(v104 + 2) = 0;
          *(v104 + 4) = v89;
          *(v104 + 8) = v167;
          *(v104 + 12) = v88;
          *(v104 + 1) = 0;
          *(v104 + 24) = 0;
          *(v104 + 32) = 0;
          *(v104 + 16) = 0;
        }

        if (!*(*v22 + 103))
        {
          if (v99 < 0)
          {
            v99 = *(v22 + 36) - 1;
          }

          v105 = &v22[17][5 * v99];
          if (*(v105 + 1))
          {
            sub_18194CB90(v22, v105, __s, 0xFFFFFFFE);
          }

          else if (__s)
          {
            *(v105 + 16) = __s;
            *(v105 + 1) = -2;
          }
        }

        v107 = *(v22 + 36);
        if (v107 < 1)
        {
          goto LABEL_110;
        }

        v85 = *v169;
      }

      *(&v22[17][5 * v107 - 4] - 3) = v85;
LABEL_110:
      if (++v84 >= *v55)
      {
        goto LABEL_165;
      }
    }

    *(v22 + 36) = v95 + 1;
    v96 = &v22[17][5 * v95];
    *v96 = 103;
    *(v96 + 4) = v59;
    *(v96 + 8) = v87;
    *(v96 + 12) = v59;
    *(v96 + 24) = 0;
    *(v96 + 32) = 0;
    *(v96 + 16) = 0;
LABEL_128:
    v97 = v173;
    if (!v173)
    {
      goto LABEL_131;
    }

    goto LABEL_129;
  }

LABEL_165:
  v108 = v171;
  if (v59)
  {
    v109 = *(v22 + 36);
    if (*(v22 + 37) <= v109)
    {
      sub_18194C8AC(v22, 51, v59, v24, 0, v56, v57, v58);
    }

    else
    {
      *(v22 + 36) = v109 + 1;
      v110 = &v22[17][5 * v109];
      *v110 = 51;
      *(v110 + 4) = v59;
      *(v110 + 8) = v24;
      *(v110 + 12) = 0;
      *(v110 + 28) = 0;
      *(v110 + 20) = 0;
      *(v110 + 36) = 0;
    }

    v111 = *(v22 + 36);
    if (*(v22 + 37) <= v111)
    {
      sub_18194C8AC(v22, 9, 0, v172, 0, v56, v57, v58);
    }

    else
    {
      *(v22 + 36) = v111 + 1;
      v112 = &v22[17][5 * v111];
      *v112 = 9;
      *(v112 + 8) = v172;
      *(v112 + 12) = 0;
      *(v112 + 28) = 0;
      *(v112 + 20) = 0;
      *(v112 + 36) = 0;
    }

    v108 = v171;
  }

  v113 = v22[3];
  v114 = -v157;
  v115 = v159;
  if (*(v113 + 72) + *(v113 + 76) < 0)
  {
    sub_18195CB84(v113, v22, v114);
    v108 = v171;
    if (!v59)
    {
      goto LABEL_256;
    }
  }

  else
  {
    *(*(v113 + 80) + 4 * v114) = *(v22 + 36);
    if (!v59)
    {
      goto LABEL_256;
    }
  }

  v116 = *(a1 + 31);
  if (v116 > 7)
  {
    goto LABEL_256;
  }

  *(a1 + 31) = v116 + 1;
  *(a1 + v116 + 46) = v59;
  if (v108 != v159)
  {
LABEL_257:
    if (v108)
    {
      v154 = *(a1 + 31);
      if (v154 <= 7)
      {
        *(a1 + 31) = v154 + 1;
        *(a1 + v154 + 46) = v108;
      }
    }
  }

LABEL_15:
  if (v161)
  {
    sub_181929C84(*a1, v161);
  }

  if (v169)
  {
    sub_181929C84(*a1, v169);
  }
}

uint64_t sub_1818E0B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v10 = a4;
  v11 = a3;
  v20 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v21 = *(a1 + 56);
  *(a1 + 56) = v21 + 1;
  if (v10 && (*(a2 + 5) & 0x10) != 0)
  {
    v22 = *(*(a2 + 32) + 32);
    v23 = *v22;
    if (v23 < 1)
    {
      LODWORD(v24) = 0;
    }

    else
    {
      v24 = 0;
      v25 = v22 + 2;
      while (1)
      {
        for (i = &v25[6 * v24]; ; i = (v27 + 16))
        {
          v27 = *i;
          v28 = *v27;
          if ((v28 - 173) >= 2)
          {
            break;
          }
        }

        if (v28 == 176)
        {
          v28 = v27[2];
        }

        if ((v28 - 154) >= 3 && v28 != 118)
        {
          if (v28 != 168)
          {
            break;
          }

          if ((v27[6] & 0x20) != 0)
          {
            break;
          }

          v29 = *(v27 + 9);
          if (!v29)
          {
            break;
          }

          v30 = *(v27 + 12);
          if ((v30 & 0x80000000) == 0)
          {
            v31 = *(v29 + 8);
            if (v31)
            {
              if (v30 < *(v29 + 54) && (*(v31 + 16 * v30 + 8) & 0xF) == 0)
              {
                break;
              }
            }
          }
        }

        if (++v24 == v23)
        {
          LODWORD(v24) = v23;
          break;
        }
      }
    }

    if (v24 == v23)
    {
      v10 = 0;
    }
  }

  if (*(a1 + 52))
  {
    goto LABEL_34;
  }

  if ((*(a2 + 4) & 0x1040) != 0x1000)
  {
    goto LABEL_34;
  }

  v32 = *(a2 + 32);
  if (*(v32 + 80))
  {
    goto LABEL_34;
  }

  if ((*(v32 + 4) & 9) != 0)
  {
    goto LABEL_34;
  }

  if (*(v32 + 96))
  {
    goto LABEL_34;
  }

  if (*(v32 + 48))
  {
    goto LABEL_34;
  }

  v33 = *(v32 + 40);
  if (*v33 != 1)
  {
    goto LABEL_34;
  }

  if ((*(v33 + 33) & 4) != 0)
  {
    goto LABEL_34;
  }

  v34 = *(v33 + 24);
  if (*(v34 + 63) == 1)
  {
    goto LABEL_34;
  }

  v123 = *(v32 + 32);
  v57 = *v123;
  v119 = v123 + 2;
  if (v57 >= 1)
  {
    v58 = (v123 + 2);
    v59 = *v123;
    do
    {
      if (**v58 != 168)
      {
        goto LABEL_34;
      }

      v58 += 3;
      --v59;
    }

    while (v59);
    if (!v32)
    {
LABEL_34:
      if ((v11 & 1) != 0 && (*(a2 + 5) & 0x10) == 0)
      {
        v35 = *(a2 + 16);
        *(a2 + 16) = 0;
        v131 = 0x100000000;
        v132 = 0;
        v130[0] = a1;
        v130[1] = sub_1818C7E14;
        v130[2] = sub_18195A49C;
        v130[3] = 0;
        sub_181959BA0(v130, a2);
        v36 = WORD2(v131);
        *(a2 + 16) = v35;
        if (!v36 || **(a2 + 32) <= 2)
        {
          --*(a1 + 56);
          result = 5;
          LODWORD(v21) = -1;
          goto LABEL_46;
        }
      }

      v38 = *(a1 + 28);
      if ((v11 & 4) != 0)
      {
        *(a1 + 28) = 0;
      }

      else if (v10)
      {
        v39 = *(a1 + 60);
        v40 = (v39 + 1);
        v41 = v39 == -1;
        *(a1 + 60) = v40;
        *v10 = v40;
        sub_18195B754(a1, a2, v21, v15, v16, v17, v18, v19);
        if (!v41)
        {
          sub_18195B5D8(v20, v21, v40, v42, v43, v44, v45, v46);
        }

        goto LABEL_45;
      }

      sub_18195B754(a1, a2, v21, v15, v16, v17, v18, v19);
LABEL_45:
      *(a1 + 28) = v38;
      result = 2;
      goto LABEL_46;
    }
  }

  v60 = v34[12];
  if (v60)
  {
    v61 = (*(*a1 + 32) + 24);
    LODWORD(v62) = -1;
    do
    {
      v63 = *v61;
      v61 += 4;
      v62 = (v62 + 1);
    }

    while (v63 != v60);
  }

  else
  {
    v62 = 4294934528;
  }

  if (*(a1 + 152))
  {
    v64 = *(a1 + 152);
  }

  else
  {
    v64 = a1;
  }

  v65 = *(v64 + 116);
  v121 = v34;
  if ((v65 & (1 << v62)) != 0)
  {
    if (v62 == 1)
    {
      goto LABEL_84;
    }
  }

  else
  {
    *(v64 + 116) = v65 | (1 << v62);
    if (v62 == 1)
    {
      sub_1819108F4(v64);
LABEL_83:
      v34 = v121;
      goto LABEL_84;
    }
  }

  if (*(*(*(*a1 + 32) + 32 * v62 + 8) + 17))
  {
    sub_1819570CC(a1, v62, *(v34 + 10), 0, *v34);
    goto LABEL_83;
  }

LABEL_84:
  v118 = v62;
  v125 = v57;
  if (v57 == 1)
  {
    if ((*(*v119 + 48) & 0x80000000) != 0)
    {
      v66 = *(v20 + 144);
      if (*(v20 + 148) <= v66)
      {
        v66 = sub_18194C8AC(v20, 15, 0, 0, 0, v17, v18, v19);
      }

      else
      {
        *(v20 + 144) = v66 + 1;
        v67 = *(v20 + 136) + 40 * v66;
        *v67 = 15;
        *(v67 + 1) = 0u;
        *(v67 + 17) = 0u;
        *(v67 + 32) = 0;
      }

      sub_1818B69D8(a1, v21, v62, v121, 102, v17, v18, v19);
      sub_18195AD8C(a1, 0, "USING ROWID SEARCH ON TABLE %s FOR IN-OPERATOR", *v121);
      if (*(*v20 + 103))
      {
        v99 = &byte_1EA831A58;
      }

      else
      {
        v99 = (*(v20 + 136) + 40 * v66);
      }

      *(v99 + 2) = *(v20 + 144);
      result = 1;
      goto LABEL_46;
    }
  }

  else if (v57 < 1)
  {
    goto LABEL_128;
  }

  v68 = *(a2 + 16);
  v69 = 2;
  v126 = *v68;
  v70 = 1;
  v120 = v68;
  do
  {
    v128 = v70;
    v76 = v126;
    if (v126 == 176)
    {
      v76 = v68[2];
    }

    v77 = v68;
    if (v76 != 177)
    {
      v78 = v68;
      if (v76 != 139)
      {
        goto LABEL_114;
      }

      v77 = *(v68 + 4);
    }

    v78 = v68;
    if (**(v77 + 4) >= 2)
    {
      if (v126 == 139 || (v79 = v68, v68[2] == 139))
      {
        v79 = *(v68 + 4);
      }

      v78 = *(*(v79 + 4) + v69 * 4);
    }

LABEL_114:
    v80 = *(*&v123[v69] + 48);
    if ((v80 & 0x80000000) != 0 || v80 >= *(v34 + 27))
    {
      v81 = 68;
    }

    else
    {
      v81 = v34[1][16 * v80 + 9];
    }

    v82 = sub_1818D0A24(v78);
    if (v81 < 65 || v82 < 65)
    {
      if (v82 >= 65)
      {
        v71 = v82;
      }

      else
      {
        v71 = v81;
      }

      v72 = v71 | 0x40;
      v68 = v120;
    }

    else
    {
      if (v82 > 0x42 || v81 > 0x42)
      {
        v72 = 67;
      }

      else
      {
        v72 = 65;
      }

      v68 = v120;
    }

    v74 = (v72 - 65) < 2u || v81 > 66;
    v69 += 6;
    LODWORD(v57) = v125;
    v75 = !v74 || v128 >= v125;
    v70 = v128 + 1;
    v34 = v121;
  }

  while (!v75);
  if (!v74)
  {
    goto LABEL_34;
  }

LABEL_128:
  v84 = v34[2];
  if (!v84)
  {
    goto LABEL_34;
  }

  v122 = -1 << v57;
  while (1)
  {
    v86 = *(v84 + 96);
    if (v57 <= v86)
    {
      v87 = v86 <= 0x3E && *(v84 + 72) == 0;
      if (v87 && ((v11 & 4) == 0 || v57 >= *(v84 + 94) && (v57 >= v86 || *(v84 + 98))))
      {
        break;
      }
    }

LABEL_132:
    v84 = *(v84 + 40);
    if (!v84)
    {
      goto LABEL_34;
    }
  }

  v124 = v84;
  if (v57 >= 1)
  {
    v88 = 0;
    v85 = 0;
    while (1)
    {
      v129 = v85;
      v89 = *(a2 + 16);
      v90 = *v89;
      v91 = v90;
      if (v90 == 176)
      {
        v91 = v89[2];
      }

      v92 = *(a2 + 16);
      if (v91 != 177)
      {
        if (v91 != 139)
        {
          goto LABEL_153;
        }

        v92 = *(v89 + 4);
      }

      if (**(v92 + 32) >= 2)
      {
        if (v90 == 139 || v89[2] == 139)
        {
          v89 = *(v89 + 4);
        }

        v89 = *(*(v89 + 4) + 24 * v88 + 8);
      }

LABEL_153:
      v57 = *&v119[6 * v88];
      v127 = v88;
      if ((v89[5] & 2) != 0)
      {
        v94 = a1;
        goto LABEL_159;
      }

      if (v57 && (v57[5] & 2) != 0 || (v93 = sub_1818B4720(a1, v89, v14, v15, v16, v17, v18, v19)) == 0)
      {
        v94 = a1;
        v89 = v57;
LABEL_159:
        v93 = sub_1818B4720(v94, v89, v14, v15, v16, v17, v18, v19);
      }

      v95 = 0;
      v84 = v124;
      v96 = *(v57 + 12);
      LODWORD(v57) = v125;
      while (v96 != *(*(v124 + 8) + 2 * v95))
      {
LABEL_161:
        if (++v95 == v125)
        {
          goto LABEL_130;
        }
      }

      if (v93)
      {
        v97 = *v93;
        for (j = *(*(v124 + 64) + 8 * v95); ; ++j)
        {
          if (*v97 == *j)
          {
            if (!*v97)
            {
              break;
            }
          }

          else if (byte_181A20298[*v97] != byte_181A20298[*j])
          {
            goto LABEL_161;
          }

          ++v97;
        }
      }

      if (v125 == v95)
      {
LABEL_130:
        v85 = v129;
        goto LABEL_131;
      }

      v85 = v129;
      if (((1 << v95) & v129) == 0)
      {
        if (a5)
        {
          *(a5 + 4 * v127) = v95;
        }

        v85 = (1 << v95) | v129;
        v88 = v127 + 1;
        if ((v127 + 1) != v125)
        {
          continue;
        }
      }

      goto LABEL_131;
    }
  }

  v85 = 0;
LABEL_131:
  if ((v85 ^ v122) != 0xFFFFFFFFFFFFFFFFLL)
  {
    goto LABEL_132;
  }

  v100 = *(v20 + 144);
  if (*(v20 + 148) <= v100)
  {
    v100 = sub_18194C8AC(v20, 15, 0, 0, 0, v17, v18, v19);
  }

  else
  {
    *(v20 + 144) = v100 + 1;
    v101 = *(v20 + 136) + 40 * v100;
    *v101 = 15;
    *(v101 + 1) = 0u;
    *(v101 + 17) = 0u;
    *(v101 + 32) = 0;
  }

  sub_18195AD8C(a1, 0, "USING INDEX %s FOR IN-OPERATOR", *v124);
  v105 = *(v124 + 88);
  v106 = *(v20 + 144);
  if (*(v20 + 148) <= v106)
  {
    sub_18194C8AC(v20, 102, v21, v105, v118, v102, v103, v104);
  }

  else
  {
    *(v20 + 144) = v106 + 1;
    v107 = *(v20 + 136) + 40 * v106;
    *v107 = 102;
    *(v107 + 4) = v21;
    *(v107 + 8) = v105;
    *(v107 + 12) = v118;
    *(v107 + 24) = 0;
    *(v107 + 32) = 0;
    *(v107 + 16) = 0;
  }

  v108 = *(a1 + 16);
  v109 = sub_1819572CC(a1, v124);
  if (v109)
  {
    if (*(*v108 + 103))
    {
      if (!*(*v108 + 824))
      {
        v87 = (*v109)-- == 1;
        if (v87)
        {
          sub_181939EC8(*(v109 + 16), v109);
        }
      }
    }

    else
    {
      v115 = *(v108 + 136) + 40 * *(v108 + 144);
      *(v115 - 39) = -8;
      *(v115 - 24) = v109;
    }
  }

  v116 = **(v124 + 56);
  if (v10)
  {
    v117 = (*(a1 + 60) + 1);
    *(a1 + 60) = v117;
    *v10 = v117;
    if (v125 == 1)
    {
      sub_18195B5D8(v20, v21, v117, v110, v111, v112, v113, v114);
    }
  }

  result = (v116 + 3);
  if (*(*v20 + 103))
  {
    dword_1EA831A60 = *(v20 + 144);
  }

  else
  {
    *(*(v20 + 136) + 40 * v100 + 8) = *(v20 + 144);
  }

LABEL_46:
  if (a5 && (result - 5) <= 0xFFFFFFFD)
  {
    v47 = *(a2 + 16);
    v48 = *v47;
    if (v48 == 176)
    {
      v48 = v47[2];
    }

    if (v48 == 177)
    {
LABEL_53:
      v49 = **(v47 + 4);
      if (v49 >= 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v48 == 139)
      {
        v47 = *(v47 + 4);
        goto LABEL_53;
      }

      v49 = 1;
LABEL_56:
      v50 = v49;
      if (v49 < 8)
      {
        v51 = 0;
        goto LABEL_61;
      }

      v51 = v49 & 0x7FFFFFF8;
      v52 = xmmword_181A1FFE0;
      v53 = (a5 + 16);
      v54.i64[0] = 0x400000004;
      v54.i64[1] = 0x400000004;
      v55.i64[0] = 0x800000008;
      v55.i64[1] = 0x800000008;
      v56 = v50 & 0x7FFFFFF8;
      do
      {
        v53[-1] = v52;
        *v53 = vaddq_s32(v52, v54);
        v52 = vaddq_s32(v52, v55);
        v53 += 2;
        v56 -= 8;
      }

      while (v56);
      for (; v50 != v51; ++v51)
      {
LABEL_61:
        *(a5 + 4 * v51) = v51;
      }
    }
  }

  *a6 = v21;
  return result;
}

uint64_t sub_1818E1564(void **a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 13))
  {
    return 0;
  }

  v93 = v8;
  v94 = v9;
  v13 = a1[2];
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v14 = *(a2 + 4);
  v15 = *(a2 + 1);
  if ((v15 & 0x2000000) != 0)
  {
    sub_18195AD8C(a1, 0, "REUSE SUBQUERY %d", *(v14 + 16));
    v24 = *(a2 + 18);
    v23 = *(a2 + 19);
    v25 = *(v13 + 144);
    if (*(v13 + 148) <= v25)
    {
      sub_18194C8AC(v13, 10, v23, v24, 0, v20, v21, v22);
    }

    else
    {
      *(v13 + 144) = v25 + 1;
      v26 = *(v13 + 136) + 40 * v25;
      *v26 = 10;
      *(v26 + 4) = v23;
      *(v26 + 8) = v24;
      *(v26 + 12) = 0;
      *(v26 + 28) = 0;
      *(v26 + 20) = 0;
      *(v26 + 36) = 0;
    }

    return *(a2 + 11);
  }

  *(a2 + 1) = v15 | 0x2000000;
  v16 = (*(a1 + 15) + 1);
  *(a1 + 15) = v16;
  *(a2 + 19) = v16;
  v17 = *(v13 + 144);
  if (*(v13 + 148) <= v17)
  {
    v18 = sub_18194C8AC(v13, 74, 0, v16, 0, a6, a7, a8) + 1;
  }

  else
  {
    v18 = v17 + 1;
    *(v13 + 144) = v17 + 1;
    v19 = *(v13 + 136) + 40 * v17;
    *v19 = 74;
    *(v19 + 8) = v16;
    *(v19 + 12) = 0;
    *(v19 + 28) = 0;
    *(v19 + 20) = 0;
    *(v19 + 36) = 0;
  }

  *(a2 + 18) = v18;
  if ((a2[4] & 0x40) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = *(v13 + 144);
    if (*(v13 + 148) <= v27)
    {
      v27 = sub_18194C8AC(v13, 15, 0, 0, 0, a6, a7, a8);
    }

    else
    {
      *(v13 + 144) = v27 + 1;
      v28 = *(v13 + 136) + 40 * v27;
      *v28 = 15;
      *(v28 + 1) = 0u;
      *(v28 + 17) = 0u;
      *(v28 + 32) = 0;
    }
  }

  v29 = &byte_181A2878D;
  if (!v27)
  {
    v29 = "CORRELATED ";
  }

  v30 = sub_18195AD8C(a1, 1, "%sSCALAR SUBQUERY %d", v29, *(v14 + 16));
  v34 = v30;
  if ((*(*v13 + 49) & 4) != 0)
  {
    v35 = *(v13 + 392);
    v36 = 56 * v35;
    v37 = v35 + 1;
    while (--v37 >= 1)
    {
      v38 = v36 - 56;
      v39 = *(v13 + 400);
      v40 = *(v39 + v36 - 56);
      v36 -= 56;
      if (v40 == v30)
      {
        if (v30 >= 1)
        {
          *(v39 + v38 + 28) = v30;
        }

        break;
      }
    }
  }

  v41 = *a2;
  if (v41 == 139)
  {
    v42 = **(v14 + 32);
  }

  else
  {
    v42 = 1;
  }

  v43 = *(a1 + 15);
  v44 = (v43 + 1);
  *(&v89 + 1) = 0;
  DWORD1(v88) = v43 + 1;
  *(&v88 + 1) = 0;
  LODWORD(v89) = 0;
  v45 = (v43 + v42);
  *(a1 + 15) = v45;
  if (v41 == 139)
  {
    LOBYTE(v88) = 10;
    HIDWORD(v88) = v43 + 1;
    LODWORD(v89) = v42;
    v46 = *(v13 + 144);
    if (*(v13 + 148) > v46)
    {
      *(v13 + 144) = v46 + 1;
      v47 = *(v13 + 136) + 40 * v46;
      *v47 = 75;
      *(v47 + 8) = v44;
      *(v47 + 12) = v45;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0;
      *(v47 + 16) = 0;
      goto LABEL_35;
    }

    v50 = v13;
    v51 = 75;
  }

  else
  {
    LOBYTE(v88) = 3;
    v48 = *(v13 + 144);
    if (*(v13 + 148) > v48)
    {
      *(v13 + 144) = v48 + 1;
      v49 = *(v13 + 136) + 40 * v48;
      *v49 = 71;
      *(v49 + 8) = v44;
      *(v49 + 12) = 0;
      *(v49 + 28) = 0;
      *(v49 + 20) = 0;
      *(v49 + 36) = 0;
      goto LABEL_35;
    }

    v50 = v13;
    v51 = 71;
    v45 = 0;
  }

  sub_18194C8AC(v50, v51, 0, v44, v45, v31, v32, v33);
LABEL_35:
  v52 = *a1;
  if (*(v14 + 96))
  {
    v91 = "0";
    v92 = 1;
    v53 = sub_1818A8CF0(v52, 156, &v91, 0);
    if (v53)
    {
      v54 = v53;
      *(v53 + 1) = 67;
      v55 = *(*(v14 + 96) + 16);
      if (v55)
      {
        v56 = sub_1818C7FEC(v52, v55, 0, 0);
      }

      else
      {
        v56 = 0;
      }

      v68 = sub_18194F098(a1, 53, v56, v54);
    }

    else
    {
      v68 = 0;
    }

    sub_18195B158(a1, sub_18195B270, *(*(v14 + 96) + 16));
    *(*(v14 + 96) + 16) = v68;
  }

  else
  {
    v57 = 1;
    v91 = "1";
    v92 = 1;
    v58 = sub_1818A8CF0(v52, 156, &v91, 0);
    v59 = sub_181929E8C(*a1, 0x50uLL, 0x1032040B79D87BDLL);
    v66 = v59;
    if (v59)
    {
      *(v59 + 32) = 0u;
      *(v59 + 48) = 0u;
      *(v59 + 64) = 0u;
      *v59 = 0u;
      *(v59 + 16) = 0u;
      *v59 = -107;
      *(v59 + 52) = -1;
      *(v59 + 40) = 1;
      if (v58)
      {
        *(v59 + 16) = v58;
        *(v59 + 4) |= *(v58 + 4) & 0x400208;
        v67 = *(v58 + 40);
        if (v67 < 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v67 + 1;
          *(v59 + 40) = v67 + 1;
        }
      }

      if (*(*a1 + 37) < v57)
      {
        sub_181910730(a1, "Expression tree is too large (maximum depth %d)", v60, v61, v62, v63, v64, v65, *(*a1 + 37));
      }
    }

    else if (v58)
    {
      sub_1819439E0(*a1, v58);
    }

    *(v14 + 96) = v66;
  }

  *(v14 + 8) = 0;
  if (sub_1818A9A10(a1, v14, &v88))
  {
    result = 0;
    a2[2] = *a2;
    *a2 = -74;
  }

  else
  {
    result = DWORD1(v88);
    *(a2 + 11) = DWORD1(v88);
    v72 = *v13;
    if (v27)
    {
      if (*(v72 + 103))
      {
        v73 = &byte_1EA831A58;
      }

      else
      {
        v73 = (*(v13 + 136) + 40 * v27);
      }

      *(v73 + 2) = *(v13 + 144);
    }

    if ((*(v72 + 49) & 4) != 0)
    {
      v74 = *(v13 + 392);
      v75 = 56 * v74;
      v76 = v74 + 1;
      while (--v76 >= 1)
      {
        v77 = v75 - 56;
        v78 = *(v13 + 400);
        v79 = *(v78 + v75 - 56);
        v75 -= 56;
        if (v79 == v34)
        {
          v80 = *(v13 + 144);
          if (*(v78 + v77 + 4))
          {
            if (*(v78 + v77 + 12))
            {
              if (*(v78 + v77 + 20))
              {
                break;
              }

              v81 = 4;
            }

            else
            {
              v81 = 2;
            }
          }

          else
          {
            v81 = 0;
          }

          v82 = v78 + 4 * v81 + v77;
          *(v82 + 4) = v34;
          *(v82 + 8) = v80 - 1;
          break;
        }
      }
    }

    v84 = *(a2 + 18);
    v83 = *(a2 + 19);
    v85 = *(v13 + 144);
    if (*(v13 + 148) <= v85)
    {
      v87 = result;
      sub_18194C8AC(v13, 67, v83, v84, 1, v69, v70, v71);
      result = v87;
    }

    else
    {
      *(v13 + 144) = v85 + 1;
      v86 = *(v13 + 136) + 40 * v85;
      *v86 = 67;
      *(v86 + 4) = v83;
      *(v86 + 8) = v84;
      *(v86 + 12) = 1;
      *(v86 + 24) = 0;
      *(v86 + 32) = 0;
      *(v86 + 16) = 0;
    }

    *(a1 + 31) = 0;
    *(a1 + 11) = 0;
  }

  return result;
}

void sub_1818E1BB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 16);
  if ((*(a2 + 5) & 8) != 0)
  {
    v26 = *(a2 + 8);
    if (a3)
    {
      v27 = -v26;
    }

    else
    {
      v27 = v26;
    }

    v28 = *(v9 + 144);
    if (*(v9 + 148) <= v28)
    {
      v30 = *(a1 + 16);

      sub_18194C8AC(v30, 71, v27, a4, 0, a6, a7, a8);
    }

    else
    {
      *(v9 + 144) = v28 + 1;
      v29 = *(v9 + 136) + 40 * v28;
      *v29 = 71;
      *(v29 + 4) = v27;
      *(v29 + 8) = a4;
      *(v29 + 12) = 0;
      *(v29 + 28) = 0;
      *(v29 + 20) = 0;
      *(v29 + 36) = 0;
    }

    return;
  }

  v50 = 0;
  v12 = *(a2 + 8);
  v13 = sub_18191A360(v12, &v50);
  if (a3)
  {
    v20 = 0;
  }

  else
  {
    v20 = v13 == 3;
  }

  v21 = !v20;
  v22 = v13 == 2 || v21 == 0;
  if (v22 || a3 && v50 == 0x8000000000000000)
  {
    if (!v12)
    {
      return;
    }

    v23 = *v12;
    v24 = "0x";
    if (*v12)
    {
      v25 = a1;
      if (v23 != 48)
      {
LABEL_20:
        v23 = byte_181A20298[v23];
        goto LABEL_46;
      }

      v23 = v12[1];
      if (v12[1])
      {
        if ((v23 & 0xFFFFFFDF) == 0x58)
        {
LABEL_47:
          v41 = &byte_181A2878D;
          if (a3)
          {
            v41 = "-";
          }

          sub_181910730(v25, "hex literal too big: %s%#T", v14, v15, v16, v17, v18, v19, v41);
          return;
        }

        v24 = "x";
        goto LABEL_20;
      }

      v24 = "x";
    }

    else
    {
      v25 = a1;
    }

LABEL_46:
    if (v23 == byte_181A20298[*v24])
    {
      goto LABEL_47;
    }

    v51 = 0.0;
    v42 = strlen(v12);
    sub_1818E6334(v12, &v51, v42 & 0x3FFFFFFF, 1);
    if (a3)
    {
      v51 = -v51;
    }

    v43 = sub_181929E8C(*v9, 8uLL, 2029538362);
    v36 = v43;
    if (v43)
    {
      *v43 = v51;
    }

    v47 = *(v9 + 144);
    if (*(v9 + 148) <= v47)
    {
      v47 = sub_18194C8AC(v9, 154, 0, a4, 0, v44, v45, v46);
    }

    else
    {
      *(v9 + 144) = v47 + 1;
      v48 = *(v9 + 136) + 40 * v47;
      *v48 = 154;
      *(v48 + 8) = a4;
      *(v48 + 12) = 0;
      *(v48 + 28) = 0;
      *(v48 + 20) = 0;
      *(v48 + 36) = 0;
    }

    v39 = *v9;
    if (*(*v9 + 103))
    {
      goto LABEL_58;
    }

    if (v47 < 0)
    {
      v47 = *(v9 + 144) - 1;
    }

    v40 = *(v9 + 136) + 40 * v47;
    if (*(v40 + 1))
    {
      sub_18194CB90(v9, v40, v36, 0xFFFFFFF4);
      return;
    }

    if (v36)
    {
      *(v40 + 16) = v36;
      v49 = -12;
      goto LABEL_68;
    }

    return;
  }

  if (a3)
  {
    if (v13 == 3)
    {
      v31 = 0x8000000000000000;
    }

    else
    {
      v31 = -v50;
    }

    v50 = v31;
  }

  v32 = sub_181929E8C(*v9, 8uLL, 2029538362);
  v36 = v32;
  if (v32)
  {
    *v32 = v50;
  }

  v37 = *(v9 + 144);
  if (*(v9 + 148) <= v37)
  {
    v37 = sub_18194C8AC(v9, 72, 0, a4, 0, v33, v34, v35);
  }

  else
  {
    *(v9 + 144) = v37 + 1;
    v38 = *(v9 + 136) + 40 * v37;
    *v38 = 72;
    *(v38 + 8) = a4;
    *(v38 + 12) = 0;
    *(v38 + 28) = 0;
    *(v38 + 20) = 0;
    *(v38 + 36) = 0;
  }

  v39 = *v9;
  if (*(*v9 + 103))
  {
LABEL_58:
    if (v36)
    {
      sub_181939EC8(v39, v36);
    }

    return;
  }

  if (v37 < 0)
  {
    v37 = *(v9 + 144) - 1;
  }

  v40 = *(v9 + 136) + 40 * v37;
  if (*(v40 + 1))
  {
    sub_18194CB90(v9, v40, v36, 0xFFFFFFF3);
    return;
  }

  if (v36)
  {
    *(v40 + 16) = v36;
    v49 = -13;
LABEL_68:
    *(v40 + 1) = v49;
  }
}

int *sub_1818E1F5C(int *result, uint64_t a2)
{
  v2 = *(a2 + 18);
  if ((v2 & 4) == 0)
  {
    v3 = *result;
    if (!*result || (*(*a2 + 4) & 1) != 0)
    {
      v4 = *(result + 13);
      if ((*(a2 + 48) & v4) == 0)
      {
        *(a2 + 18) = v2 | 4;
        v5 = *(a2 + 24);
        if ((v5 & 0x80000000) == 0)
        {
          v6 = *(*(a2 + 8) + 32) + 56 * v5;
          v7 = *(v6 + 22) - 1;
          *(v6 + 22) = v7;
          if (!v7)
          {
            v8 = (v6 + 18);
            for (i = *(v6 + 18); (i & 4) == 0; i = *(v6 + 18))
            {
              if (v3 && (*(*v6 + 4) & 1) == 0)
              {
                break;
              }

              if ((*(v6 + 48) & v4) != 0)
              {
                break;
              }

              v10 = (i & 0x400) != 0 ? 512 : 4;
              *v8 = v10 | i;
              v11 = *(v6 + 24);
              if ((v11 & 0x80000000) != 0)
              {
                break;
              }

              v6 = *(*(v6 + 8) + 32) + 56 * v11;
              v12 = *(v6 + 22) - 1;
              *(v6 + 22) = v12;
              if (v12)
              {
                break;
              }

              v8 = (v6 + 18);
            }
          }
        }
      }
    }
  }

  return result;
}

int sqlite3_bind_int64(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
{
  if (a2 <= 0)
  {
    if (a1)
    {
      v8 = *a1;
      if (*a1)
      {
        *(v8 + 80) = 25;
        sub_181932D5C(v8, 25);
      }

      else
      {
        sqlite3_log(21, "API called with finalized prepared statement", a3);
      }
    }

    else
    {
      sqlite3_log(21, "API called with NULL prepared statement", a3);
    }

    LODWORD(v6) = 25;
  }

  else
  {
    v5 = (a2 - 1);
    LODWORD(v6) = sub_1818DF6EC(a1, a2 - 1);
    if (!v6)
    {
      v7 = *(a1 + 16) + (v5 << 6);
      if ((*(v7 + 20) & 0x9000) != 0)
      {
        sub_18193D288(v7, a3);
      }

      else
      {
        *v7 = a3;
        *(v7 + 20) = 4;
      }

      v6 = *(*a1 + 24);
      if (v6)
      {
        xmmword_1ED452F28(v6);
        LODWORD(v6) = 0;
      }
    }
  }

  return v6;
}

uint64_t sub_1818E2114(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 9);
  if ((*(v4 + 40) & 0xC) != 0)
  {
    v6 = a2;
    bzero((v3 + v5), (*(v4 + 56) - v5));
    a2 = v6;
  }

  v7 = v3 + v5;
  *(v3 + v5) = a2;
  if ((a2 & 8) != 0)
  {
    v8 = 8;
  }

  else
  {
    v8 = 12;
  }

  v9 = (v8 + v5);
  *(v7 + 1) = 0;
  *(v7 + 7) = 0;
  *(v7 + 5) = BYTE1(*(v4 + 56));
  *(v7 + 6) = *(v4 + 56);
  *(a1 + 20) = (*(v4 + 56) - v9);
  result = sub_181935454(a1, a2);
  *(a1 + 18) = v9;
  v11 = *(v4 + 52);
  *(a1 + 88) = v3 + v11;
  *(a1 + 96) = v3 + v9;
  *(a1 + 104) = v3 + *(a1 + 10);
  *(a1 + 12) = 0;
  *(a1 + 26) = v11 - 1;
  *(a1 + 24) = 0;
  *a1 = 1;
  return result;
}

uint64_t sub_1818E21FC(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, int a5)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 64);
  v7 = bswap32(*(*(v5 + 80) + 36));
  if (v7 >= v6)
  {

    return sub_18190EDA8(85731);
  }

  if (!v7)
  {
    v12 = *(v5 + 112);
    v13 = *(v12 + 40);
    if ((*(v12 + 52) & 4) != 0 && v13[8] >= *(v12 + 48))
    {
      if (!v13[32])
      {
        goto LABEL_201;
      }

      v14 = a3;
      result = sub_1819360C0(*(v5 + 112));
    }

    else
    {
      result = v13[12];
      if (result)
      {
        return result;
      }

      v14 = a3;
      v15 = *(v5 + 112);
      if (v13[46] <= v13[50])
      {
        result = sub_1818D8DD8(v15);
      }

      else
      {
        result = sub_181936438(v15);
      }
    }

    if (result)
    {
      return result;
    }

    a3 = v14;
    v6 = *(a1 + 64);
LABEL_201:
    v93 = v6 + 1;
    *(a1 + 64) = v6 + 1;
    v94 = dword_1EA8315A8 / *(a1 + 52);
    if (v6 == v94)
    {
      v93 = v6 + 2;
      *(a1 + 64) = v6 + 2;
    }

    if (*(a1 + 33))
    {
      if (v93 >= 2)
      {
        v96 = (v93 - 2) / (*(a1 + 56) / 5u + 1) * (*(a1 + 56) / 5u + 1);
        v97 = v96 + 1 == v94 ? 3 : 2;
        v95 = v97 + v96;
      }

      else
      {
        v95 = 0;
      }

      if (v95 == v93)
      {
        v98 = a3;
        v130 = 0;
        result = (*(*a1 + 288))();
        if (result)
        {
          return result;
        }

        v99 = a2;
        v100 = v130;
        v101 = *(v130 + 16);
        if (*(v101 + 4) == v93)
        {
          v100 = *(v101 + 112);
        }

        else
        {
          v104 = *(v130 + 8);
          *(v101 + 112) = v130;
          *(v101 + 72) = a1;
          *(v101 + 80) = v104;
          *(v101 + 4) = v93;
          *(v101 + 9) = 0;
        }

        if (*(v100 + 56) >= 2)
        {
          sub_181932B18(v100);
          return sub_18190EDA8(81715);
        }

        *v101 = 0;
        v105 = sub_1818D8D88(v100);
        sub_181932B18(*(v101 + 112));
        if (v105)
        {
          return v105;
        }

        v106 = *(a1 + 64);
        v93 = v106 + 1;
        *(a1 + 64) = v106 + 1;
        a2 = v99;
        a3 = v98;
        if (v106 == dword_1EA8315A8 / *(a1 + 52))
        {
          v93 = v106 + 2;
          *(a1 + 64) = v106 + 2;
        }
      }
    }

    *(*(*(a1 + 24) + 80) + 28) = bswap32(v93);
    v107 = *(a1 + 64);
    *a3 = v107;
    v130 = 0;
    result = (*(*a1 + 288))();
    if (!result)
    {
      v108 = *(v130 + 16);
      if (*(v108 + 4) != v107)
      {
        v109 = *(v130 + 8);
        *(v108 + 112) = v130;
        *(v108 + 72) = a1;
        *(v108 + 80) = v109;
        *(v108 + 4) = v107;
        if (v107 == 1)
        {
          v110 = 100;
        }

        else
        {
          v110 = 0;
        }

        *(v108 + 9) = v110;
      }

      *a2 = v108;
      v111 = *(v108 + 112);
      if (*(v111 + 56) >= 2)
      {
        sub_181932B18(v111);
        *a2 = 0;
        return sub_18190EDA8(81715);
      }

      *v108 = 0;
      result = sub_1818D8D88(v111);
      if (!result)
      {
        return result;
      }

      if (*a2)
      {
        v112 = result;
        sub_181932B18(*(*a2 + 112));
        result = v112;
      }
    }

    *a2 = 0;
    return result;
  }

  if (a5 == 2)
  {
    v10 = 1;
  }

  else if (a5 == 1 && v6 >= a4)
  {
    v22 = a5;
    v23 = a3;
    LOBYTE(v130) = 0;
    v24 = a4;
    result = sub_181938B74(a1, a4, &v130, 0);
    v10 = v130 == 2;
    if (result)
    {
      return result;
    }

    a3 = v23;
    a5 = v22;
    a4 = v24;
  }

  else
  {
    v10 = 0;
  }

  v16 = *(v5 + 112);
  v17 = *(v16 + 40);
  if ((*(v16 + 52) & 4) == 0 || v17[8] < *(v16 + 48))
  {
    result = v17[12];
    if (result)
    {
      return result;
    }

    v18 = a4;
    v19 = a5;
    v20 = a3;
    v21 = *(v5 + 112);
    if (v17[46] <= v17[50])
    {
      result = sub_1818D8DD8(v21);
    }

    else
    {
      result = sub_181936438(v21);
    }

LABEL_28:
    a3 = v20;
    a5 = v19;
    a4 = v18;
    if (result)
    {
      return result;
    }

    goto LABEL_29;
  }

  if (v17[32])
  {
    v18 = a4;
    v19 = a5;
    v20 = a3;
    result = sub_1819360C0(*(v5 + 112));
    goto LABEL_28;
  }

LABEL_29:
  v128 = a4;
  v125 = a5;
  v126 = a3;
  v25 = 0;
  v26 = 0;
  *(*(v5 + 80) + 36) = bswap32(v7 - 1);
  while (1)
  {
    v129 = v25;
    if (v25)
    {
      v27 = *(v25 + 80);
      v28 = (*v27 << 24) | (v27[1] << 16) | (v27[2] << 8);
      v29 = v27 + 3;
    }

    else
    {
      v30 = *(v5 + 80);
      v28 = (v30[32] << 24) | (v30[33] << 16) | (v30[34] << 8);
      v29 = v30 + 35;
    }

    v31 = v28 | *v29;
    if (v31 > v6 || v26 > v7)
    {
      result = sub_18190EDA8(85787);
      goto LABEL_255;
    }

    v130 = 0;
    result = (*(*a1 + 288))();
    if (result)
    {
      goto LABEL_255;
    }

    v33 = v130;
    v25 = *(v130 + 16);
    if (*(v25 + 4) == v31)
    {
      v33 = *(v25 + 112);
    }

    else
    {
      v34 = *(v130 + 8);
      *(v25 + 112) = v130;
      *(v25 + 72) = a1;
      *(v25 + 80) = v34;
      *(v25 + 4) = v31;
      v35 = v31 == 1 ? 100 : 0;
      *(v25 + 9) = v35;
    }

    if (*(v33 + 56) >= 2)
    {
      break;
    }

    v127 = v26;
    *v25 = 0;
    v36 = *(v25 + 80);
    v37 = bswap32(v36[1]);
    if (!v10 && !v37)
    {
      v38 = *(v33 + 40);
      if ((*(v33 + 52) & 4) == 0 || v38[8] < *(v33 + 48))
      {
        result = v38[12];
        if (result)
        {
          goto LABEL_251;
        }

        if (v38[46] <= v38[50])
        {
          result = sub_1818D8DD8(v33);
          if (result)
          {
            goto LABEL_251;
          }
        }

        else
        {
          result = sub_181936438(v33);
          if (result)
          {
            goto LABEL_251;
          }
        }

        goto LABEL_77;
      }

      if (v38[32])
      {
        result = sub_1819360C0(v33);
        if (result)
        {
          goto LABEL_251;
        }

LABEL_77:
        v36 = *(v25 + 80);
      }

      v10 = 0;
      result = 0;
      *v126 = v31;
      *(*(v5 + 80) + 32) = *v36;
      *a2 = v25;
      v25 = 0;
LABEL_102:
      v53 = v127;
      goto LABEL_103;
    }

    if (v37 > (*(a1 + 56) >> 2) - 2)
    {
      v103 = 20280;
      goto LABEL_222;
    }

    if (v10)
    {
      v39 = v125 == 2;
      if (v31 >= v128)
      {
        v39 = 0;
      }

      v40 = v31 != v128 && !v39;
      if (!v40)
      {
        *v126 = v31;
        *a2 = v25;
        v41 = *(v25 + 112);
        v42 = *(v41 + 40);
        if ((*(v41 + 52) & 4) == 0 || v42[8] < *(v41 + 48))
        {
          result = v42[12];
          if (result)
          {
            goto LABEL_251;
          }

          v43 = *(v25 + 112);
          if (v42[46] <= v42[50])
          {
            result = sub_1818D8DD8(v43);
          }

          else
          {
            result = sub_181936438(v43);
          }

          goto LABEL_114;
        }

        if (v42[32])
        {
          result = sub_1819360C0(*(v25 + 112));
LABEL_114:
          if (result)
          {
            goto LABEL_251;
          }
        }

        if (v37)
        {
          v59 = *(v25 + 80);
          v60 = v59[8];
          v61 = v59[11];
          v62 = (v60 << 24) | (v59[9] << 16) | (v59[10] << 8) | v61;
          if (v62 > v6)
          {
            result = sub_18190EDA8(85850);
            goto LABEL_251;
          }

          v122 = v59[10];
          v123 = v59[9];
          v130 = 0;
          result = (*(*a1 + 288))();
          if (result)
          {
            goto LABEL_251;
          }

          v121 = v61;
          v63 = v130;
          v64 = *(v130 + 16);
          if (*(v64 + 4) == v62)
          {
            v63 = *(v64 + 112);
          }

          else
          {
            v68 = *(v130 + 8);
            *(v64 + 112) = v130;
            *(v64 + 72) = a1;
            *(v64 + 80) = v68;
            *(v64 + 4) = v62;
            if (v62 == 1)
            {
              v69 = 100;
            }

            else
            {
              v69 = 0;
            }

            *(v64 + 9) = v69;
          }

          if (*(v63 + 56) >= 2)
          {
            sub_181932B18(v63);
            v103 = 16179;
LABEL_222:
            result = sub_18190EDA8(v103 | 0x10000u);
LABEL_251:
            v115 = result;
            v116 = *(v25 + 112);
            if ((*(v116 + 52) & 0x20) != 0)
            {
              v117 = *(v116 + 40);
              --*(v117 + 152);
              *(v116 + 32) = *(v117 + 168);
              *(v117 + 168) = v116;
              (*(**(v117 + 72) + 144))(*(v117 + 72), *(v117 + 200) * (*(v116 + 48) - 1), *(v116 + 8));
            }

            else
            {
              sub_181932B68(v116);
            }

            result = v115;
            goto LABEL_255;
          }

          *v64 = 0;
          v70 = *(v63 + 40);
          if ((*(v63 + 52) & 4) != 0 && v70[8] >= *(v63 + 48))
          {
            if (v70[32])
            {
              v71 = sub_1819360C0(v63);
              goto LABEL_176;
            }
          }

          else
          {
            if (v70[12])
            {
              v114 = v70[12];
              goto LABEL_250;
            }

            if (v70[46] <= v70[50])
            {
              v71 = sub_1818D8DD8(v63);
            }

            else
            {
              v71 = sub_181936438(v63);
            }

LABEL_176:
            if (v71)
            {
              v114 = v71;
              v63 = *(v64 + 112);
LABEL_250:
              sub_181932B18(v63);
              result = v114;
              goto LABEL_251;
            }
          }

          **(v64 + 80) = **(v25 + 80);
          *(*(v64 + 80) + 4) = bswap32(v37 - 1);
          memcpy((*(v64 + 80) + 8), (*(v25 + 80) + 12), (4 * (v37 - 1)));
          sub_181932B18(*(v64 + 112));
          if (!v129)
          {
            result = 0;
            v113 = *(v5 + 80);
            v113[32] = v60;
            v113[33] = v123;
            v113[34] = v122;
            v113[35] = v121;
            return result;
          }

          result = sub_1818D8D88(*(v129 + 112));
          if (result)
          {
            goto LABEL_251;
          }

          v10 = 0;
          v25 = 0;
          v87 = *(v129 + 80);
          *v87 = v60;
          v87[1] = v123;
          v87[2] = v122;
          v87[3] = v121;
          v54 = v129;
          v53 = v127;
LABEL_104:
          v55 = a2;
          v56 = result;
          v57 = *(v54 + 112);
          if ((*(v57 + 52) & 0x20) != 0)
          {
            v58 = *(v57 + 40);
            --*(v58 + 152);
            *(v57 + 32) = *(v58 + 168);
            *(v58 + 168) = v57;
            (*(**(v58 + 72) + 144))(*(v58 + 72), *(v58 + 200) * (*(v57 + 48) - 1), *(v57 + 8));
          }

          else
          {
            sub_181932B68(v57);
          }

          result = v56;
          a2 = v55;
          goto LABEL_108;
        }

        if (!v129)
        {
          result = 0;
          *(*(v5 + 80) + 32) = **(v25 + 80);
          return result;
        }

        v65 = *(v129 + 112);
        v66 = *(v65 + 40);
        if ((*(v65 + 52) & 4) == 0 || v66[8] < *(v65 + 48))
        {
          result = v66[12];
          v53 = v127;
          if (result)
          {
            goto LABEL_251;
          }

          v67 = *(v129 + 112);
          if (v66[46] <= v66[50])
          {
            result = sub_1818D8DD8(v67);
          }

          else
          {
            result = sub_181936438(v67);
          }

          goto LABEL_187;
        }

        v53 = v127;
        if (v66[32])
        {
          result = sub_1819360C0(*(v129 + 112));
LABEL_187:
          if (result)
          {
            goto LABEL_251;
          }
        }

        result = 0;
        v10 = 0;
        **(v129 + 80) = **(v25 + 80);
        v54 = v129;
        v25 = 0;
        goto LABEL_104;
      }
    }

    if (!v37)
    {
      result = 0;
      goto LABEL_102;
    }

    v124 = a2;
    if (!v128)
    {
LABEL_81:
      LODWORD(v44) = 0;
      goto LABEL_82;
    }

    if (v125 == 2)
    {
      v44 = 0;
      v45 = 8;
      while (bswap32(*(v36 + (v45 & 0xFFFFFFFC))) > v128)
      {
        ++v44;
        v45 += 4;
        if (v37 == v44)
        {
          goto LABEL_81;
        }
      }
    }

    else
    {
      if (v37 == 1)
      {
        goto LABEL_81;
      }

      LODWORD(v44) = 0;
      v72 = bswap32(v36[2]) - v128;
      if (v72 == 0x80000000)
      {
        v73 = 0x7FFFFFFF;
      }

      else
      {
        v73 = -v72;
      }

      if (v72 < 0)
      {
        v72 = v73;
      }

      v74 = 12;
      for (i = 1; i != v37; ++i)
      {
        v76 = bswap32(*(v36 + (v74 & 0xFFFFFFFC))) - v128;
        if (v76 == 0x80000000)
        {
          v77 = 0x7FFFFFFF;
        }

        else
        {
          v77 = -v76;
        }

        if (v76 < 0)
        {
          v76 = v77;
        }

        if (v76 < v72)
        {
          LODWORD(v44) = i;
          v72 = v76;
        }

        v74 += 4;
      }
    }

LABEL_82:
    v46 = 4 * v44 + 8;
    v47 = bswap32(*(v36 + v46));
    if (v47 > v6 || v47 <= 1)
    {
      result = sub_18190EDA8(85915);
LABEL_228:
      if (!v25)
      {
        goto LABEL_255;
      }

      goto LABEL_251;
    }

    v49 = v125 != 2;
    if (v47 >= v128)
    {
      v49 = 1;
    }

    if (v47 != v128 && v49 && v10)
    {
      result = 0;
      v10 = 1;
      a2 = v124;
      goto LABEL_102;
    }

    *v126 = v47;
    v52 = *(v33 + 40);
    if ((*(v33 + 52) & 4) != 0 && v52[8] >= *(v33 + 48))
    {
      if (!v52[32])
      {
        goto LABEL_156;
      }

      result = sub_1819360C0(v33);
    }

    else
    {
      result = v52[12];
      if (result)
      {
        goto LABEL_228;
      }

      if (v52[46] <= v52[50])
      {
        result = sub_1818D8DD8(v33);
      }

      else
      {
        result = sub_181936438(v33);
      }
    }

    if (result)
    {
      goto LABEL_228;
    }

LABEL_156:
    if (v44 < v37 - 1)
    {
      *(v36 + v46) = *(v36 + (4 * v37 + 4));
    }

    v36[1] = bswap32(v37 - 1);
    v78 = *v126;
    v79 = *(a1 + 96);
    if (v79)
    {
      a2 = v124;
      v53 = v127;
      if (*v79 >= v78)
      {
        v80 = v78 - 1;
        if (v78 - 1 < *v79)
        {
          while (1)
          {
            v81 = v79[2];
            if (!v81)
            {
              break;
            }

            v82 = v80 / v81;
            v80 %= v81;
            v79 = *&v79[2 * v82 + 4];
            if (!v79)
            {
              goto LABEL_165;
            }
          }

          if (*v79 > 0xF80)
          {
            v89 = v80 % 0x7C;
            v90 = v79 + 4;
            v91 = v90[v80 % 0x7C];
            if (v91)
            {
              v92 = v80 + 1;
              do
              {
                if (v91 == v92)
                {
                  break;
                }

                if (v89 == 123)
                {
                  v89 = 0;
                }

                else
                {
                  ++v89;
                }

                v91 = v90[v89];
              }

              while (v91);
            }
          }
        }
      }
    }

    else
    {
      a2 = v124;
      v53 = v127;
    }

LABEL_165:
    v130 = 0;
    result = (*(*a1 + 288))();
    if (result)
    {
      goto LABEL_166;
    }

    v83 = *(v130 + 16);
    if (*(v83 + 4) != v78)
    {
      v84 = *(v130 + 8);
      *(v83 + 112) = v130;
      *(v83 + 72) = a1;
      *(v83 + 80) = v84;
      *(v83 + 4) = v78;
      if (v78 == 1)
      {
        v85 = 100;
      }

      else
      {
        v85 = 0;
      }

      *(v83 + 9) = v85;
    }

    *a2 = v83;
    v86 = *(v83 + 112);
    if (*(v86 + 56) < 2)
    {
      *v83 = 0;
      result = sub_1818D8D88(v86);
      if (result)
      {
        if (*a2)
        {
          v88 = result;
          sub_181932B18(*(*a2 + 112));
          result = v88;
        }

LABEL_166:
        v10 = 0;
        *a2 = 0;
        goto LABEL_103;
      }
    }

    else
    {
      sub_181932B18(v86);
      *a2 = 0;
      result = sub_18190EDA8(81715);
    }

    v10 = 0;
LABEL_103:
    v54 = v129;
    if (v129)
    {
      goto LABEL_104;
    }

LABEL_108:
    v26 = v53 + 1;
    v40 = !v10;
    v10 = 1;
    if (v40)
    {
      v129 = 0;
      if (!v25)
      {
        goto LABEL_255;
      }

      goto LABEL_251;
    }
  }

  if ((*(v33 + 52) & 0x20) != 0)
  {
    v102 = *(v33 + 40);
    --*(v102 + 152);
    *(v33 + 32) = *(v102 + 168);
    *(v102 + 168) = v33;
    (*(**(v102 + 72) + 144))(*(v102 + 72), *(v102 + 200) * (*(v33 + 48) - 1), *(v33 + 8));
  }

  else
  {
    sub_181932B68(v33);
  }

  result = sub_18190EDA8(81715);
LABEL_255:
  if (v129)
  {
    v118 = result;
    v119 = *(v129 + 112);
    if ((*(v119 + 52) & 0x20) != 0)
    {
      v120 = *(v119 + 40);
      --*(v120 + 152);
      *(v119 + 32) = *(v120 + 168);
      *(v120 + 168) = v119;
      (*(**(v120 + 72) + 144))(*(v120 + 72), *(v120 + 200) * (*(v119 + 48) - 1), *(v119 + 8));
    }

    else
    {
      sub_181932B68(v119);
    }

    return v118;
  }

  return result;
}

uint64_t sub_1818E3028(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 8);
  if (*(a1 + 17))
  {
    ++*(a1 + 20);
    if (!*(a1 + 18))
    {
      sub_181932DEC(a1);
    }
  }

  sub_1818E334C(v1, 0, 0);
  if (!*(v1 + 17))
  {
    goto LABEL_23;
  }

  v3 = *(v1 + 20) - 1;
  *(v1 + 20) = v3;
  if (!v3)
  {
    sub_181932ECC(v1);
    if (!*(v1 + 17))
    {
      goto LABEL_23;
    }
  }

  if (word_1ED452E84)
  {
    v4 = qword_1ED452F08(2);
    v5 = v4;
    if (v4)
    {
      xmmword_1ED452F18(v4);
      v6 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_12:
  v7 = *(v2 + 104);
  *(v2 + 104) = v7 - 1;
  if (v7 <= 1)
  {
    v8 = &qword_1EA831A20;
    v9 = qword_1EA831A20;
    if (qword_1EA831A20 == v2)
    {
LABEL_17:
      *v8 = *(v2 + 112);
    }

    else
    {
      while (v9)
      {
        v10 = v9;
        v9 = *(v9 + 112);
        if (v9 == v2)
        {
          v8 = (v10 + 112);
          goto LABEL_17;
        }
      }
    }

    if (*(v2 + 88))
    {
      off_1ED452F10();
    }
  }

  if ((v6 & 1) == 0)
  {
    xmmword_1ED452F28(v5);
  }

  if (v7 > 1)
  {
    goto LABEL_41;
  }

LABEL_23:
  sub_1818E35FC(*v2, *v1);
  v11 = *(v2 + 80);
  if (v11 && *(v2 + 72))
  {
    v11();
  }

  v12 = *(v2 + 72);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v12);
    --qword_1ED456A90;
    off_1ED452EB0(v12);
    v12 = xmmword_1ED456AF0;
    if (!xmmword_1ED456AF0)
    {
      goto LABEL_33;
    }

    v13 = &xmmword_1ED452F28;
  }

  (*v13)(v12);
LABEL_33:
  v14 = *(v2 + 136);
  if (v14)
  {
    *(v2 + 136) = v14 - 4;
    sub_181935120(v14 - 4);
    *(v2 + 136) = 0;
  }

  v15 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_40;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v2);
  --qword_1ED456A90;
  off_1ED452EB0(v2);
  v2 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v15 = &xmmword_1ED452F28;
LABEL_40:
    (*v15)(v2);
  }

LABEL_41:
  v17 = *(v1 + 32);
  v16 = *(v1 + 40);
  if (v16)
  {
    *(v16 + 32) = v17;
  }

  if (v17)
  {
    *(v17 + 40) = v16;
  }

  v18 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    goto LABEL_50;
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v18 = &xmmword_1ED452F28;
LABEL_50:
    v20 = *v18;

    return v20(v1);
  }

  return result;
}

uint64_t sub_1818E334C(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 8);
  if (*(a1 + 17) && (++*(a1 + 20), !*(a1 + 18)))
  {
    v7 = a2;
    v8 = a3;
    sub_181932DEC(a1);
    a3 = v8;
    a2 = v7;
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    sub_181939BFC(a1, a2, a3);
    goto LABEL_5;
  }

  v9 = *(v4 + 16);
  if (v9)
  {
    v10 = sub_18193880C(v9, 0, 0);
    if (v10)
    {
      a2 = v10;
      a3 = 0;
      goto LABEL_4;
    }
  }

LABEL_5:
  if (*(a1 + 16) == 2)
  {
    sub_1818E34C8(*v4);
    if (!(*(*v4 + 288))())
    {
      v5 = MEMORY[0x10];
      if (*(MEMORY[0x10] + 4) == 1)
      {
        v6 = *(MEMORY[0x10] + 80);
      }

      else
      {
        v6 = MEMORY[8];
        *(MEMORY[0x10] + 112) = 0;
        *(v5 + 72) = v4;
        *(v5 + 80) = v6;
        *(v5 + 4) = 1;
        *(v5 + 9) = 100;
      }

      v11 = bswap32(*(v6 + 28));
      if (!v11)
      {
        v11 = *(*v4 + 32);
      }

      *(v4 + 64) = v11;
      v12 = *(v5 + 112);
      v13 = *(v12 + 40);
      sub_181932B68(v12);
      if (!*(*(v13 + 336) + 24))
      {
        sub_181934964(v13);
      }
    }

    *(v4 + 36) = 1;
    sub_1818EFAC4(*(v4 + 96));
    *(v4 + 96) = 0;
  }

  result = sub_1818CCF18(a1);
  if (*(a1 + 17))
  {
    v15 = *(a1 + 20) - 1;
    *(a1 + 20) = v15;
    if (!v15)
    {
      return sub_181932ECC(a1);
    }
  }

  return result;
}

uint64_t sub_1818E34C8(uint64_t a1)
{
  v1 = *(a1 + 21);
  if (v1 == 6)
  {
    return *(a1 + 48);
  }

  if (v1 < 2)
  {
    return 0;
  }

  if (*(a1 + 344))
  {
    v4 = sub_18193C13C(a1, 2, -1);
    v5 = a1;
    LODWORD(result) = sub_1818CD128(a1, *(a1 + 24), 0);
    if (v4)
    {
      result = v4;
    }

    else
    {
      result = result;
    }
  }

  else
  {
    v5 = a1;
    if (v1 == 2 || **(a1 + 80) == 0)
    {
      result = sub_1818CD128(a1, 0, 0);
      if (v1 != 2 && !*(v5 + 19))
      {
        *(v5 + 48) = 4;
        *(v5 + 21) = 6;
        v7 = sub_181933ECC;
LABEL_26:
        *(v5 + 288) = v7;
        return result;
      }
    }

    else
    {
      result = sub_1818F84EC(a1, 0);
    }
  }

  if (result == 13 || result == 10)
  {
    *(v5 + 48) = result;
    *(v5 + 21) = 6;
    v7 = sub_181933ECC;
    if (!result)
    {
      if (!*(v5 + 27) || (v7 = sub_181933ED8, *(v5 + 296)))
      {
        v7 = sub_18193417C;
      }
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1818E35FC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 328);
  if (off_1EA831A10)
  {
    off_1EA831A10(a1);
  }

  v5 = *(v3 + 168);
  if (v5)
  {
    do
    {
      v7 = *(v5 + 32);
      v8 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v5);
        --qword_1ED456A90;
        off_1ED452EB0(v5);
        v5 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          goto LABEL_9;
        }

        v8 = &xmmword_1ED452F28;
      }

      (*v8)(v5);
LABEL_9:
      v5 = v7;
    }

    while (v7);
  }

  *(v3 + 8) = 0;
  if (!a2 || (*(a2 + 49) & 8) != 0 || !*(v3 + 16) && *(v3 + 32) && (v9 = **(v3 + 72)) != 0 && (v10 = (*(v9 + 80))(), v10 != 12) && v10)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  sub_1818E3900(*(v3 + 344), a2, *(v3 + 15), *(v3 + 200), v6);
  *(v3 + 344) = 0;
  sub_181934D80(v3);
  if (*(v3 + 19))
  {
    v11 = sub_1818CD8F0(v3);
    goto LABEL_37;
  }

  v12 = **(v3 + 80);
  if (v12)
  {
    if (!*(v3 + 11))
    {
      v13 = (*(v12 + 40))();
      if (v13)
      {
LABEL_26:
        if (v13 == 13 || v13 == 10)
        {
          *(v3 + 48) = v13;
          *(v3 + 21) = 6;
          v15 = sub_181933ECC;
          if (!v13)
          {
            if (!*(v3 + 27) || (v15 = sub_181933ED8, *(v3 + 296)))
            {
              v15 = sub_18193417C;
            }
          }

          *(v3 + 288) = v15;
        }

        goto LABEL_36;
      }

      v12 = **(v3 + 80);
    }

    v13 = (*(v12 + 48))();
    goto LABEL_26;
  }

LABEL_36:
  v11 = sub_181934964(v3);
LABEL_37:
  if (off_1EA831A18)
  {
    off_1EA831A18(v11);
  }

  v16 = *(v3 + 80);
  if (*v16)
  {
    (*(*v16 + 8))(*(v3 + 80));
    *v16 = 0;
  }

  v17 = *(v3 + 72);
  if (*v17)
  {
    (*(*v17 + 8))(*(v3 + 72));
    *v17 = 0;
  }

  sub_181935120(v4);
  (*(&xmmword_1ED452F90 + 1))(*(*(v3 + 336) + 72));
  v18 = *(v3 + 312);
  if (v18)
  {
    v18(*(v3 + 320));
  }

  v19 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
    return (*v19)(v3);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v3);
  --qword_1ED456A90;
  result = off_1ED452EB0(v3);
  v3 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v19 = &xmmword_1ED452F28;
    return (*v19)(v3);
  }

  return result;
}

uint64_t sub_1818E3900(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  v9 = a1;
  v10 = *(a1 + 8);
  if (*v10)
  {
    (*(*v10 + 80))(v10, 106, 0);
  }

  v11 = *(v9 + 16);
  if (*v11)
  {
    v11 = (*(*v11 + 80))(v11, 106, 0);
  }

  if (a5)
  {
    v11 = (*(**(v9 + 8) + 56))(*(v9 + 8), 4);
    if (v11)
    {
      goto LABEL_11;
    }

    if (!*(v9 + 63))
    {
      *(v9 + 63) = 1;
    }

    v11 = sub_1818EFBBC(v9, a2, 0, 0, 0, a3, a4, a5, 0, 0);
    if (v11)
    {
LABEL_11:
      v12 = v11;
      a5 = 0;
      goto LABEL_20;
    }

    v24 = -1;
    v11 = *(v9 + 8);
    if (*v11 && (v11 = (*(*v11 + 80))(v11, 10, &v24), v24 == 1))
    {
      if ((*(v9 + 32) & 0x8000000000000000) == 0)
      {
        sub_18193822C(v9, 0);
      }

      a5 = 0;
    }

    else
    {
      a5 = 1;
    }
  }

  v12 = 0;
LABEL_20:
  v13 = *(v9 + 63);
  if (v13 != 2 && !*(v9 + 70))
  {
    goto LABEL_34;
  }

  if (*(v9 + 40) < 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  do
  {
    v15 = *(*(v9 + 48) + 8 * v14);
    if (v15)
    {
      v16 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_24;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v15);
      --qword_1ED456A90;
      v11 = off_1ED452EB0(v15);
      v15 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v16 = &xmmword_1ED452F28;
LABEL_24:
        v11 = (*v16)(v15);
      }
    }

    *(*(v9 + 48) + 8 * v14++) = 0;
  }

  while (v14 < *(v9 + 40));
  v13 = *(v9 + 63);
LABEL_33:
  if (v13 != 2)
  {
LABEL_34:
    v11 = (*(**(v9 + 8) + 128))(*(v9 + 8), a5);
  }

  v17 = *(v9 + 16);
  if (*v17)
  {
    v11 = (*(*v17 + 8))(*(v9 + 16));
    *v17 = 0;
  }

  if (a5)
  {
    if (off_1EA831A10)
    {
      off_1EA831A10(v11);
    }

    v18 = *v9;
    v19 = *(*v9 + 48);
    if (v19)
    {
      v18 = v19();
    }

    if (off_1EA831A18)
    {
      off_1EA831A18(v18);
    }
  }

  v20 = *(v9 + 48);
  if (v20)
  {
    v21 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
      goto LABEL_50;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v20);
    --qword_1ED456A90;
    off_1ED452EB0(v20);
    v20 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v21 = &xmmword_1ED452F28;
LABEL_50:
      (*v21)(v20);
    }
  }

  v22 = &off_1ED452EB0;
  if (dword_1ED452E80)
  {
    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v9);
    --qword_1ED456A90;
    off_1ED452EB0(v9);
    v9 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v22 = &xmmword_1ED452F28;
      goto LABEL_56;
    }
  }

  else
  {
LABEL_56:
    (*v22)(v9);
  }

  return v12;
}

uint64_t sub_1818E3C78(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(v1 + 40) + 8 * i);
      v48 = v4;
      if (v4)
      {
        do
        {
          v4 = *(v4 + 24);
          sub_1819A8D0C(v1, &v48);
          v48 = v4;
        }

        while (v4);
        v2 = *(v1 + 32);
      }
    }
  }

  v6 = (v1 + 144);
  v5 = *(v1 + 144);
  *(v1 + 120) = 0;
  if (v5)
  {
    v7 = (v1 + 160);
    v8 = (v1 + 176);
    do
    {
      v9 = *(v1 + 136);
      if (*(v9 + 34))
      {
        v10 = *(v1 + 124);
        if (v10 >= 1)
        {
          for (j = 0; j < v10; ++j)
          {
            v48 = *(v9[2] + 8 * j);
            if (v48)
            {
              sub_1819A8D0C(v1, &v48);
              v10 = *(v1 + 124);
            }
          }
        }
      }

      v12 = *(v9 + 32);
      if (v12 == 2)
      {
        v19 = *v9;
        if (*v9 || *v6 == v9)
        {
          v14 = v9 + 1;
          v20 = v9[1];
          if (v20)
          {
            *v20 = v19;
            v19 = *v9;
          }

          if (v19)
          {
            *(v19 + 8) = v20;
          }

          if (*(v1 + 136) == v9)
          {
            *(v1 + 136) = v19;
          }

          if (*v6 == v9)
          {
            v16 = (v1 + 144);
LABEL_47:
            *v16 = *v14;
          }

LABEL_48:
          *v9 = 0;
          v9[1] = 0;
        }
      }

      else if (v12 == 1)
      {
        v17 = *v9;
        if (*v9 || *v7 == v9)
        {
          v14 = v9 + 1;
          v18 = v9[1];
          if (v18)
          {
            *v18 = v17;
            v17 = *v9;
          }

          if (v17)
          {
            *(v17 + 8) = v18;
          }

          if (*(v1 + 152) == v9)
          {
            *(v1 + 152) = v17;
          }

          if (*v7 == v9)
          {
            v16 = (v1 + 160);
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      else if (!*(v9 + 32))
      {
        v13 = *v9;
        if (*v9 || *v8 == v9)
        {
          v14 = v9 + 1;
          v15 = v9[1];
          if (v15)
          {
            *v15 = v13;
            v13 = *v9;
          }

          if (v13)
          {
            *(v13 + 8) = v15;
          }

          if (*(v1 + 168) == v9)
          {
            *(v1 + 168) = v13;
          }

          if (*v8 == v9)
          {
            v16 = (v1 + 176);
            goto LABEL_47;
          }

          goto LABEL_48;
        }
      }

      --*(v1 + 132);
      v21 = v9[2];
      if (!v21)
      {
        goto LABEL_56;
      }

      v22 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_55;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v21);
      --qword_1ED456A90;
      off_1ED452EB0(v21);
      v21 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v22 = &xmmword_1ED452F28;
LABEL_55:
        (*v22)(v21);
      }

LABEL_56:
      v23 = v9[3];
      if (v23)
      {
        MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v23, *(v1 + 8));
      }

      v24 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v9);
        --qword_1ED456A90;
        off_1ED452EB0(v9);
        v9 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          continue;
        }

        v24 = &xmmword_1ED452F28;
      }

      (*v24)(v9);
    }

    while (*v6);
  }

  v25 = (v1 + 160);
  if (*(v1 + 160))
  {
    v26 = (v1 + 176);
    do
    {
      v27 = *(v1 + 152);
      if (*(v27 + 34))
      {
        v28 = *(v1 + 124);
        if (v28 >= 1)
        {
          for (k = 0; k < v28; ++k)
          {
            v48 = *(v27[2] + 8 * k);
            if (v48)
            {
              sub_1819A8D0C(v1, &v48);
              v28 = *(v1 + 124);
            }
          }
        }
      }

      v30 = *(v27 + 32);
      if (v30 == 2)
      {
        v37 = *v27;
        if (*v27 || *v6 == v27)
        {
          v32 = v27 + 1;
          v38 = v27[1];
          if (v38)
          {
            *v38 = v37;
            v37 = *v27;
          }

          if (v37)
          {
            *(v37 + 8) = v38;
          }

          if (*(v1 + 136) == v27)
          {
            *(v1 + 136) = v37;
          }

          if (*v6 == v27)
          {
            v34 = (v1 + 144);
LABEL_109:
            *v34 = *v32;
          }

LABEL_110:
          *v27 = 0;
          v27[1] = 0;
        }
      }

      else if (v30 == 1)
      {
        v35 = *v27;
        if (*v27 || *v25 == v27)
        {
          v32 = v27 + 1;
          v36 = v27[1];
          if (v36)
          {
            *v36 = v35;
            v35 = *v27;
          }

          if (v35)
          {
            *(v35 + 8) = v36;
          }

          if (*(v1 + 152) == v27)
          {
            *(v1 + 152) = v35;
          }

          if (*v25 == v27)
          {
            v34 = (v1 + 160);
            goto LABEL_109;
          }

          goto LABEL_110;
        }
      }

      else if (!*(v27 + 32))
      {
        v31 = *v27;
        if (*v27 || *v26 == v27)
        {
          v32 = v27 + 1;
          v33 = v27[1];
          if (v33)
          {
            *v33 = v31;
            v31 = *v27;
          }

          if (v31)
          {
            *(v31 + 8) = v33;
          }

          if (*(v1 + 168) == v27)
          {
            *(v1 + 168) = v31;
          }

          if (*v26 == v27)
          {
            v34 = (v1 + 176);
            goto LABEL_109;
          }

          goto LABEL_110;
        }
      }

      --*(v1 + 132);
      v39 = v27[2];
      if (!v39)
      {
        goto LABEL_118;
      }

      v40 = &off_1ED452EB0;
      if (!dword_1ED452E80)
      {
        goto LABEL_117;
      }

      if (xmmword_1ED456AF0)
      {
        xmmword_1ED452F18(xmmword_1ED456AF0);
      }

      qword_1ED456A48 -= xmmword_1ED452EC0(v39);
      --qword_1ED456A90;
      off_1ED452EB0(v39);
      v39 = xmmword_1ED456AF0;
      if (xmmword_1ED456AF0)
      {
        v40 = &xmmword_1ED452F28;
LABEL_117:
        (*v40)(v39);
      }

LABEL_118:
      v41 = v27[3];
      if (v41)
      {
        MEMORY[0x1865D86F0](*MEMORY[0x1E69E9A60], v41, *(v1 + 8));
      }

      v42 = &off_1ED452EB0;
      if (dword_1ED452E80)
      {
        if (xmmword_1ED456AF0)
        {
          xmmword_1ED452F18(xmmword_1ED456AF0);
        }

        qword_1ED456A48 -= xmmword_1ED452EC0(v27);
        --qword_1ED456A90;
        off_1ED452EB0(v27);
        v27 = xmmword_1ED456AF0;
        if (!xmmword_1ED456AF0)
        {
          continue;
        }

        v42 = &xmmword_1ED452F28;
      }

      (*v42)(v27);
    }

    while (*v25);
  }

  v43 = *(v1 + 40);
  if (v43)
  {
    v44 = &off_1ED452EB0;
    if (!dword_1ED452E80)
    {
LABEL_137:
      (*v44)(v43);
      goto LABEL_138;
    }

    if (xmmword_1ED456AF0)
    {
      xmmword_1ED452F18(xmmword_1ED456AF0);
    }

    qword_1ED456A48 -= xmmword_1ED452EC0(v43);
    --qword_1ED456A90;
    off_1ED452EB0(v43);
    v43 = xmmword_1ED456AF0;
    if (xmmword_1ED456AF0)
    {
      v44 = &xmmword_1ED452F28;
      goto LABEL_137;
    }
  }

LABEL_138:
  v45 = &off_1ED452EB0;
  if (!dword_1ED452E80)
  {
LABEL_143:
    v47 = *v45;

    return v47(v1);
  }

  if (xmmword_1ED456AF0)
  {
    xmmword_1ED452F18(xmmword_1ED456AF0);
  }

  qword_1ED456A48 -= xmmword_1ED452EC0(v1);
  --qword_1ED456A90;
  result = off_1ED452EB0(v1);
  v1 = xmmword_1ED456AF0;
  if (xmmword_1ED456AF0)
  {
    v45 = &xmmword_1ED452F28;
    goto LABEL_143;
  }

  return result;
}

const void *__cdecl sqlite3_column_blob(sqlite3_stmt *a1, int iCol)
{
  if (a1)
  {
    v5 = *(*a1 + 24);
    if (v5)
    {
      xmmword_1ED452F18(v5);
    }

    v6 = *(a1 + 20);
    if (v6 && *(a1 + 130) > iCol)
    {
      v7 = (v6 + (iCol << 6));
    }

    else
    {
      v8 = *a1;
      *(v8 + 80) = 25;
      sub_181932D5C(v8, 25);
      v7 = &qword_181A20ED0;
    }

    v9 = sqlite3_value_blob(v7);
    v10 = *a1;
    v11 = *(a1 + 13);
    if (v11 || (v12 = *(v10 + 103), *(v10 + 103)))
    {
      v12 = sub_18193C988(v10, v11);
      v10 = *a1;
    }

    *(a1 + 13) = v12;
    v13 = *(v10 + 24);
    if (v13)
    {
      xmmword_1ED452F28(v13);
    }

    return v9;
  }

  else
  {

    return sqlite3_value_blob(&qword_181A20ED0);
  }
}

int sqlite3_column_type(sqlite3_stmt *a1, int iCol)
{
  if (!a1)
  {
    return 5;
  }

  v4 = *(*a1 + 24);
  if (v4)
  {
    xmmword_1ED452F18(v4);
  }

  v5 = *(a1 + 20);
  if (v5 && *(a1 + 130) > iCol)
  {
    v6 = (v5 + (iCol << 6));
  }

  else
  {
    v7 = *a1;
    *(v7 + 80) = 25;
    sub_181932D5C(v7, 25);
    v6 = &qword_181A20ED0;
  }

  v8 = byte_181A203AA[*(v6 + 10) & 0x3F];
  v9 = *a1;
  v10 = *(a1 + 13);
  if (v10 || (v11 = *(v9 + 103), *(v9 + 103)))
  {
    v11 = sub_18193C988(v9, v10);
    v9 = *a1;
  }

  *(a1 + 13) = v11;
  v12 = *(v9 + 24);
  if (v12)
  {
    xmmword_1ED452F28(v12);
  }

  return v8;
}

uint64_t sub_1818E450C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a2 + 80);
  if (!v11 || (result = sub_1818E450C(a1, v11, a3)) == 0)
  {
    v13 = *(a2 + 32);
    if (*v13 <= v8)
    {
      return 0;
    }

    else
    {
      v14 = *&v13[6 * v8 + 2];

      return sub_1818B4720(a1, v14, a3, a4, a5, a6, a7, a8);
    }
  }

  return result;
}

uint64_t sub_1818E4598(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v14 = *(a1 + 16);
  v15 = *(a2 + 36) & 1;
  v16 = !(*(a2 + 36) & 1);
  v17 = *a2;
  v18 = *v17;
  v111 = *(a2 + 8);
  *(a2 + 48) = *(v14 + 144);
  v109 = v16 + a6 + v18;
  if (a7)
  {
    v19 = (a4 - a7);
  }

  else
  {
    v20 = *(a1 + 60);
    v19 = (v20 + 1);
    *(a1 + 60) = v20 + v16 + a6 + v18;
  }

  v21 = *(a3 + 12);
  if (v21)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = *(a3 + 8);
  }

  v108 = v22;
  v23 = *(a1 + 72) - 1;
  *(a1 + 72) = v23;
  *(a2 + 28) = v23;
  if (a5)
  {
    v24 = 5;
  }

  else
  {
    v24 = 1;
  }

  result = sub_1819588AC(a1, v17, v19, a5, v24, a6, a7, a8);
  if (!v15)
  {
    v29 = *(a2 + 12);
    v30 = (v19 + v18);
    v31 = *(v14 + 144);
    if (*(v14 + 148) <= v31)
    {
      result = sub_18194C8AC(v14, 126, v29, v30, 0, v26, v27, v28);
      if (a6 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    *(v14 + 144) = v31 + 1;
    v32 = *(v14 + 136) + 40 * v31;
    *v32 = 126;
    *(v32 + 4) = v29;
    *(v32 + 8) = v30;
    *(v32 + 12) = 0;
    *(v32 + 28) = 0;
    *(v32 + 20) = 0;
    *(v32 + 36) = 0;
  }

  if (a6 < 1)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (!v8)
  {
    v33 = (v18 + v16 + v19);
    result = *(a1 + 16);
    v34 = *(result + 144);
    if (*(result + 148) <= v34)
    {
      result = sub_18194C8AC(result, 79, a4, v33, a6, v26, v27, v28);
    }

    else
    {
      *(result + 144) = v34 + 1;
      v35 = *(result + 136) + 40 * v34;
      *v35 = 79;
      *(v35 + 4) = a4;
      *(v35 + 8) = v33;
      *(v35 + 12) = a6;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 16) = 0;
    }
  }

LABEL_20:
  v36 = a3;
  if (v111 < 1)
  {
    v39 = 0;
    v45 = v108;
    if (!v108)
    {
      goto LABEL_87;
    }

    goto LABEL_26;
  }

  v37 = *(a2 + 8);
  v38 = *(a1 + 16);
  v39 = (*(a1 + 60) + 1);
  *(a1 + 60) = v39;
  v40 = *(a2 + 40);
  if (v40)
  {
    result = sub_1819588AC(a1, *(a3 + 32), *v40, 0, *(v40 + 4), v26, v27, v28);
  }

  v41 = (v37 + v19);
  v42 = (v109 - v37);
  v43 = *(v38 + 144);
  if (*(v38 + 148) <= v43)
  {
    result = sub_18194C8AC(v38, 97, v41, v42, v39, v26, v27, v28);
  }

  else
  {
    *(v38 + 144) = v43 + 1;
    v44 = *(v38 + 136) + 40 * v43;
    *v44 = 97;
    *(v44 + 4) = v41;
    *(v44 + 8) = v42;
    *(v44 + 12) = v39;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0;
    *(v44 + 16) = 0;
  }

  v50 = *(a1 + 60);
  v51 = (v50 + 1);
  v52 = *(a2 + 8);
  *(a1 + 60) = v52 + v50;
  if (v15)
  {
    v53 = *(a2 + 12);
    v54 = *(v14 + 144);
    if (*(v14 + 148) > v54)
    {
      *(v14 + 144) = v54 + 1;
      v56 = *(v14 + 136) + 40 * v54;
      *v56 = 120;
      *(v56 + 4) = v53;
      *(v56 + 8) = 0u;
      *(v56 + 24) = 0u;
      goto LABEL_49;
    }

    v65 = v14;
    v66 = 120;
  }

  else
  {
    v53 = (v19 + v18);
    v54 = *(v14 + 144);
    if (*(v14 + 148) > v54)
    {
      *(v14 + 144) = v54 + 1;
      v55 = *(v14 + 136) + 40 * v54;
      *v55 = 17;
      *(v55 + 4) = v53;
      *(v55 + 8) = 0u;
      *(v55 + 24) = 0u;
      goto LABEL_49;
    }

    v65 = v14;
    v66 = 17;
  }

  result = sub_18194C8AC(v65, v66, v53, 0, 0, v26, v27, v28);
  v54 = result;
LABEL_49:
  v67 = *(a2 + 8);
  v68 = *(v14 + 144);
  if (*(v14 + 148) <= v68)
  {
    result = sub_18194C8AC(v14, 90, v51, v19, v67, v26, v27, v28);
  }

  else
  {
    *(v14 + 144) = v68 + 1;
    v69 = *(v14 + 136) + 40 * v68;
    *v69 = 90;
    *(v69 + 4) = v51;
    *(v69 + 8) = v19;
    *(v69 + 12) = v67;
    *(v69 + 24) = 0;
    *(v69 + 32) = 0;
    *(v69 + 16) = 0;
  }

  v70 = v51;
  if (*(*v14 + 103))
  {
    v71 = &byte_1EA831A58;
  }

  else
  {
    v71 = (*(v14 + 136) + 40 * *(a2 + 24));
  }

  if (!*(*a1 + 103))
  {
    *(v71 + 2) = v109 - v52;
    v72 = *(v71 + 2);
    bzero(*(v72 + 24), *(v72 + 6));
    if (*(*v14 + 103))
    {
      if (!*(*v14 + 824) && (*v72)-- == 1)
      {
        sub_181939EC8(*(v72 + 16), v72);
      }
    }

    else
    {
      v74 = *(v14 + 136) + 40 * *(v14 + 144);
      if (*(v74 - 39))
      {
        sub_18194CB90(v14, v74 - 40, v72, 0xFFFFFFF8);
      }

      else
      {
        *(v74 - 24) = v72;
        *(v74 - 39) = -8;
      }
    }

    *(v71 + 2) = sub_181965648(a1, *a2, v111, ~*(v72 + 6) + *(v72 + 8));
    v75 = *(v14 + 144);
    v76 = (v75 + 1);
    if (*(v14 + 148) <= v75)
    {
      sub_18194C8AC(v14, 14, v76, 0, (v75 + 1), v26, v27, v28);
    }

    else
    {
      *(v14 + 144) = v76;
      v77 = *(v14 + 136) + 40 * v75;
      *v77 = 14;
      *(v77 + 4) = v76;
      *(v77 + 12) = v76;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0;
      *(v77 + 16) = 0;
    }

    v45 = v108;
    v78 = (*(a1 + 72) - 1);
    *(a1 + 72) = v78;
    v79 = (*(a1 + 60) + 1);
    *(a1 + 60) = v79;
    *(a2 + 16) = v79;
    *(a2 + 20) = v78;
    v80 = *(v14 + 144);
    if (*(v14 + 148) <= v80)
    {
      sub_18194C8AC(v14, 10, v79, v78, 0, v26, v27, v28);
    }

    else
    {
      *(v14 + 144) = v80 + 1;
      v81 = *(v14 + 136) + 40 * v80;
      *v81 = 10;
      *(v81 + 4) = v79;
      *(v81 + 8) = v78;
      *(v81 + 12) = 0;
      *(v81 + 28) = 0;
      *(v81 + 20) = 0;
      *(v81 + 36) = 0;
    }

    v82 = *(a2 + 12);
    v83 = *(v14 + 144);
    if (*(v14 + 148) <= v83)
    {
      sub_18194C8AC(v14, 146, v82, 0, 0, v26, v27, v28);
      if (!v108)
      {
        goto LABEL_77;
      }
    }

    else
    {
      *(v14 + 144) = v83 + 1;
      v84 = *(v14 + 136) + 40 * v83;
      *v84 = 146;
      *(v84 + 4) = v82;
      *(v84 + 8) = 0u;
      *(v84 + 24) = 0u;
      if (!v108)
      {
LABEL_77:
        if (*(*v14 + 103))
        {
          v88 = &byte_1EA831A58;
        }

        else
        {
          v88 = (*(v14 + 136) + 40 * v54);
        }

        *(v88 + 2) = *(v14 + 144);
        v89 = *(a2 + 8);
        result = *(a1 + 16);
        v90 = *(result + 144);
        if (*(result + 148) <= v90)
        {
          result = sub_18194C8AC(result, 79, v19, v70, v89, v26, v27, v28);
        }

        else
        {
          *(result + 144) = v90 + 1;
          v91 = *(result + 136) + 40 * v90;
          *v91 = 79;
          *(v91 + 4) = v19;
          *(v91 + 8) = v70;
          *(v91 + 12) = v89;
          *(v91 + 24) = 0;
          *(v91 + 32) = 0;
          *(v91 + 16) = 0;
        }

        v36 = a3;
        if (*(*v14 + 103))
        {
          v92 = &byte_1EA831A58;
        }

        else
        {
          v92 = (*(v14 + 136) + 40 * v75);
        }

        *(v92 + 2) = *(v14 + 144);
        if (!v108)
        {
LABEL_87:
          v60 = 0;
          v62 = v109;
          if (v39)
          {
            goto LABEL_93;
          }

LABEL_88:
          v93 = *(a2 + 8);
          v94 = *(a1 + 16);
          v39 = (*(a1 + 60) + 1);
          *(a1 + 60) = v39;
          v95 = *(a2 + 40);
          if (v95)
          {
            result = sub_1819588AC(a1, *(v36 + 32), *v95, 0, *(v95 + 4), v26, v27, v28);
          }

          v96 = (v93 + v19);
          v97 = (v62 - v93);
          v98 = *(v94 + 144);
          if (*(v94 + 148) <= v98)
          {
            result = sub_18194C8AC(v94, 97, v96, v97, v39, v26, v27, v28);
          }

          else
          {
            *(v94 + 144) = v98 + 1;
            v99 = *(v94 + 136) + 40 * v98;
            *v99 = 97;
            *(v99 + 4) = v96;
            *(v99 + 8) = v97;
            *(v99 + 12) = v39;
            *(v99 + 24) = 0;
            *(v99 + 32) = 0;
            *(v99 + 16) = 0;
          }

LABEL_93:
          if (*(a2 + 36))
          {
            v100 = -117;
          }

          else
          {
            v100 = -118;
          }

          v101 = *(a2 + 12);
          v102 = (v19 + v111);
          v103 = (v62 - v111);
          v104 = *(v14 + 144);
          if (*(v14 + 148) <= v104)
          {
            result = sub_18194CAFC(v14, v100, v101, v39, v102, v103, v27, v28);
            if (!v60)
            {
LABEL_106:
              *(a2 + 52) = *(v14 + 144) - 1;
              return result;
            }
          }

          else
          {
            *(v14 + 144) = v104 + 1;
            v105 = *(v14 + 136) + 40 * v104;
            *v105 = v100;
            *(v105 + 2) = 0;
            *(v105 + 4) = v101;
            *(v105 + 8) = v39;
            *(v105 + 12) = v102;
            *(v105 + 16) = v103;
            *(v105 + 1) = -3;
            *(v105 + 24) = 0;
            *(v105 + 32) = 0;
            if (!v60)
            {
              goto LABEL_106;
            }
          }

          v106 = *(a2 + 32);
          if (!v106)
          {
            v106 = *(v14 + 144);
          }

          if (*(*v14 + 103))
          {
            v107 = &byte_1EA831A58;
          }

          else
          {
            v107 = (*(v14 + 136) + 40 * v60);
          }

          *(v107 + 2) = v106;
          goto LABEL_106;
        }

LABEL_26:
        v46 = *(a2 + 12);
        v47 = *(v14 + 144);
        v48 = (v47 + 4);
        if (*(v14 + 148) <= v47)
        {
          result = sub_18194C8AC(v14, 60, v45, v48, 0, v26, v27, v28);
        }

        else
        {
          *(v14 + 144) = v47 + 1;
          v49 = *(v14 + 136) + 40 * v47;
          *v49 = 60;
          *(v49 + 4) = v45;
          *(v49 + 8) = v48;
          *(v49 + 12) = 0;
          *(v49 + 28) = 0;
          *(v49 + 20) = 0;
          *(v49 + 36) = 0;
        }

        v57 = *(v14 + 144);
        if (*(v14 + 148) <= v57)
        {
          result = sub_18194C8AC(v14, 32, v46, 0, 0, v26, v27, v28);
        }

        else
        {
          *(v14 + 144) = v57 + 1;
          v58 = *(v14 + 136) + 40 * v57;
          *v58 = 32;
          *(v58 + 4) = v46;
          *(v58 + 8) = 0u;
          *(v58 + 24) = 0u;
        }

        v59 = (v19 + v111);
        v26 = (v18 - v111);
        v60 = *(v14 + 144);
        if (*(v14 + 148) <= v60)
        {
          result = sub_18194CAFC(v14, 40, v46, 0, v59, v26, v27, v28);
          v60 = result;
        }

        else
        {
          *(v14 + 144) = v60 + 1;
          v61 = *(v14 + 136) + 40 * v60;
          *v61 = 64808;
          *(v61 + 4) = v46;
          *(v61 + 8) = 0;
          *(v61 + 12) = v59;
          *(v61 + 16) = v26;
          *(v61 + 24) = 0;
          *(v61 + 32) = 0;
        }

        v62 = v109;
        v63 = *(v14 + 144);
        if (*(v14 + 148) <= v63)
        {
          result = sub_18194C8AC(v14, 130, v46, 0, 0, v26, v27, v28);
        }

        else
        {
          *(v14 + 144) = v63 + 1;
          v64 = *(v14 + 136) + 40 * v63;
          *v64 = 130;
          *(v64 + 4) = v46;
          *(v64 + 8) = 0u;
          *(v64 + 24) = 0u;
        }

        v36 = a3;
        if (v39)
        {
          goto LABEL_93;
        }

        goto LABEL_88;
      }
    }

    v85 = *(a2 + 28);
    v86 = *(v14 + 144);
    if (*(v14 + 148) <= v86)
    {
      sub_18194C8AC(v14, 17, v108, v85, 0, v26, v27, v28);
    }

    else
    {
      *(v14 + 144) = v86 + 1;
      v87 = *(v14 + 136) + 40 * v86;
      *v87 = 17;
      *(v87 + 4) = v108;
      *(v87 + 8) = v85;
      *(v87 + 12) = 0;
      *(v87 + 28) = 0;
      *(v87 + 20) = 0;
      *(v87 + 36) = 0;
    }

    goto LABEL_77;
  }

  return result;
}

uint64_t sub_1818E4EE4(int32x2_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int8 *a5)
{
  v8 = a1[2];
  v9 = *(a3 + 28);
  v10 = a1[9].i32[0];
  a1[9].i32[0] = v10 - 1;
  v11 = *a5;
  v185 = *(a5 + 1);
  v186 = *(a2 + 32);
  v12 = *(a3 + 8);
  v13 = **a3 - v12;
  if (!v12 || v13 == 1)
  {
    v14 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR %sORDER BY");
  }

  else
  {
    v14 = sub_18195AD8C(a1, 0, "USE TEMP B-TREE FOR LAST %d TERMS OF ORDER BY");
  }

  v18 = v14;
  if ((*(*v8 + 49) & 4) != 0)
  {
    v19 = *(a3 + 48);
    v20 = *(a3 + 52);
    v21 = *(v8 + 98);
    v22 = 7 * v21;
    v23 = v21 + 1;
    while (--v23 >= 1)
    {
      v24 = v22 * 8 - 56;
      v25 = v8[50];
      v26 = v25[v22 - 7];
      v22 -= 7;
      if (v26 == v14)
      {
        if (v20 < 0)
        {
          v20 = *(v8 + 36) - 1;
        }

        if (*(v25 + v24 + 4))
        {
          if (*(v25 + v24 + 12))
          {
            if (*(v25 + v24 + 20))
            {
              break;
            }

            v27 = 2;
          }

          else
          {
            v27 = 1;
          }
        }

        else
        {
          v27 = 0;
        }

        v28 = &v25[v27] + v24;
        *(v28 + 1) = v19;
        *(v28 + 2) = v20;
        v19 = *(a3 + 48);
        v21 = *(v8 + 98);
        break;
      }
    }

    v29 = 7 * v21;
    v30 = v21 + 1;
    while (--v30 >= 1)
    {
      v31 = v29 * 8 - 56;
      v32 = v8[50];
      v33 = v32[v29 - 7];
      v29 -= 7;
      if (v33 == v14)
      {
        if (v14 >= 1)
        {
          *(v32 + v31 + 28) = v14;
        }

        if (v19 >= 1)
        {
          *(v32 + v31 + 32) = v19;
        }

        break;
      }
    }
  }

  v34 = *(a3 + 20);
  if (v34)
  {
    v35 = *(a3 + 16);
    v36 = *(v8 + 36);
    if (*(v8 + 37) <= v36)
    {
      sub_18194C8AC(v8, 10, v35, v34, 0, v15, v16, v17);
    }

    else
    {
      *(v8 + 36) = v36 + 1;
      v37 = &v8[17][5 * v36];
      *v37 = 10;
      *(v37 + 4) = v35;
      *(v37 + 8) = v34;
      *(v37 + 12) = 0;
      *(v37 + 28) = 0;
      *(v37 + 20) = 0;
      *(v37 + 36) = 0;
    }

    v38 = *(v8 + 36);
    if (*(v8 + 37) <= v38)
    {
      sub_18194C8AC(v8, 9, 0, v9, 0, v15, v16, v17);
    }

    else
    {
      *(v8 + 36) = v38 + 1;
      v39 = &v8[17][5 * v38];
      *v39 = 9;
      *(v39 + 8) = v9;
      *(v39 + 12) = 0;
      *(v39 + 28) = 0;
      *(v39 + 20) = 0;
      *(v39 + 36) = 0;
    }

    v40 = v8[3];
    v41 = ~*(a3 + 20);
    if (*(v40 + 72) + *(v40 + 76) < 0)
    {
      sub_18195CB84(v40, v8, v41);
    }

    else
    {
      *(*(v40 + 80) + 4 * v41) = *(v8 + 36);
    }
  }

  v197 = *(a3 + 12);
  if (v11 == 9 || v11 == 13)
  {
    goto LABEL_48;
  }

  if (v11 == 10)
  {
    if (*(a2 + 12))
    {
      v42 = *(a5 + 3);
      v43 = *(v8 + 36);
      if (*(v8 + 37) <= v43)
      {
        sub_18194C8AC(v8, 75, 0, v42, 0, v15, v16, v17);
      }

      else
      {
        *(v8 + 36) = v43 + 1;
        v44 = &v8[17][5 * v43];
        *v44 = 75;
        *(v44 + 8) = v42;
        *(v44 + 12) = 0;
        *(v44 + 28) = 0;
        *(v44 + 20) = 0;
        *(v44 + 36) = 0;
      }
    }

LABEL_48:
    v189 = 0;
    v48 = *(a5 + 3);
    goto LABEL_49;
  }

  v45 = a1[3].i8[7];
  if (v45)
  {
    v46 = a1 + 23;
    a1[3].i8[7] = v45 - 1;
    v189 = a1[23].u32[(v45 - 1)];
    if ((v11 & 0xFFFFFFFD) == 0xC)
    {
      if (v45 != 1)
      {
        a4 = 0;
        v47 = v45 - 2;
        a1[3].i8[7] = v47;
        v48 = v46->u32[v47];
LABEL_49:
        v196 = v48;
        goto LABEL_50;
      }

      goto LABEL_46;
    }

    if (a4 == 1)
    {
      if (v45 != 1)
      {
        v114 = v45 - 2;
        a1[3].i8[7] = v114;
        v196 = v46->u32[v114];
LABEL_221:
        a4 = 1;
        goto LABEL_50;
      }

LABEL_220:
      v196 = a1[7].i32[1] + 1;
      a1[7].i32[1] = v196;
      goto LABEL_221;
    }

    v179 = a4;
  }

  else
  {
    v189 = a1[7].i32[1] + 1;
    a1[7].i32[1] = v189;
    if ((v11 & 0xFFFFFFFD) == 0xC)
    {
LABEL_46:
      a4 = 0;
      v49 = a1[7].i32[1] + 1;
      v196 = v49;
      goto LABEL_229;
    }

    v179 = a4;
    if (a4 == 1)
    {
      goto LABEL_220;
    }
  }

  v180 = a1[5].i32[1];
  v181 = __OFSUB__(v180, v179);
  v182 = v180 - v179;
  if (v182 < 0 == v181)
  {
    v196 = a1[6].u32[0];
    a1[5].i32[1] = v182;
    a1[6].i32[0] = v196 + v179;
    goto LABEL_50;
  }

  v183 = a1[7].i32[1];
  v196 = v183 + 1;
  v49 = v183 + v179;
LABEL_229:
  a1[7].i32[1] = v49;
LABEL_50:
  v193 = v9;
  v192 = v10;
  v191 = a1;
  v190 = v11;
  if (*(a3 + 36))
  {
    v53 = a1[7];
    v54 = vadd_s32(v53, 0x100000001);
    a1[7] = v54;
    v187 = v53;
    v184 = v54;
    if (*(a3 + 20))
    {
      v55 = *(v8 + 36);
      v56 = a4;
      if (*(v8 + 37) <= v55)
      {
        v61 = sub_18194C8AC(v8, 15, 0, 0, 0, v15, v16, v17);
        v54.i32[1] = v184.i32[1];
        v53.i32[0] = v187.i32[0];
        v55 = v61;
      }

      else
      {
        *(v8 + 36) = v55 + 1;
        v57 = &v8[17][5 * v55];
        *v57 = 15;
        *(v57 + 1) = 0u;
        *(v57 + 17) = 0u;
        *(v57 + 32) = 0;
      }
    }

    else
    {
      v55 = 0;
      v56 = a4;
    }

    v62 = (v13 + v56 + 1);
    v63 = *(v8 + 36);
    if (*(v8 + 37) <= v63)
    {
      sub_18194C8AC(v8, 121, v53.u32[0], v54.u32[1], v62, v15, v16, v17);
      v65 = *(v8 + 36);
      if (!v55)
      {
LABEL_74:
        if (*(v8 + 37) <= v65)
        {
          v65 = sub_18194C8AC(v8, 34, v197, v9, 0, v15, v16, v17);
        }

        else
        {
          *(v8 + 36) = v65 + 1;
          v70 = &v8[17][5 * v65];
          *v70 = 34;
          *(v70 + 4) = v197;
          *(v70 + 8) = v9;
          *(v70 + 12) = 0;
          *(v70 + 28) = 0;
          *(v70 + 20) = 0;
          *(v70 + 36) = 0;
        }

        v195 = v65;
        v71 = *(v8 + 36);
        if (*(v8 + 37) <= v71)
        {
          v74 = v187.u32[0];
          sub_18194C8AC(v8, 133, v197, v184.u32[1], v187.u32[0], v15, v16, v17);
          v72 = 0;
        }

        else
        {
          v72 = 0;
          v73 = &v8[17][5 * v71];
          *(v8 + 36) = v71 + 1;
          v73->i32[0] = 133;
          v73->i32[1] = v197;
          v73[1] = vext_s8(v184, v187, 4uLL);
          v74 = v187.u32[0];
          v73[3] = 0;
          v73[4] = 0;
          v73[2] = 0;
        }

        goto LABEL_82;
      }
    }

    else
    {
      *(v8 + 36) = v63 + 1;
      v64 = &v8[17][5 * v63];
      *v64 = 121;
      *(v64 + 4) = __PAIR64__(v54.u32[1], v53.u32[0]);
      *(v64 + 12) = v62;
      *(v64 + 24) = 0;
      *(v64 + 32) = 0;
      *(v64 + 16) = 0;
      v65 = *(v8 + 36);
      if (!v55)
      {
        goto LABEL_74;
      }
    }

    if (*(*v8 + 103))
    {
      v66 = &byte_1EA831A58;
    }

    else
    {
      v66 = &v8[17][5 * v55];
    }

    *(v66 + 2) = v65;
    goto LABEL_74;
  }

  v50 = *(v8 + 36);
  if (*(v8 + 37) <= v50)
  {
    v52 = sub_18194C8AC(v8, 35, v197, v9, 0, v15, v16, v17);
  }

  else
  {
    *(v8 + 36) = v50 + 1;
    v51 = &v8[17][5 * v50];
    *v51 = 35;
    *(v51 + 4) = v197;
    *(v51 + 8) = v9;
    *(v51 + 12) = 0;
    *(v51 + 28) = 0;
    *(v51 + 20) = 0;
    *(v51 + 36) = 0;
    v52 = v50;
  }

  v58 = *(a2 + 12);
  v195 = v52;
  if (v58 >= 1)
  {
    v59 = *(v8 + 36);
    if (*(v8 + 37) <= v59)
    {
      sub_18194C8AC(v8, 50, v58, (v10 - 1), 1, v15, v16, v17);
    }

    else
    {
      *(v8 + 36) = v59 + 1;
      v60 = &v8[17][5 * v59];
      *v60 = 50;
      *(v60 + 4) = v58;
      *(v60 + 8) = v10 - 1;
      *(v60 + 12) = 1;
      *(v60 + 24) = 0;
      *(v60 + 32) = 0;
      *(v60 + 16) = 0;
    }

    if (*(a2 + 12) >= 1)
    {
      v67 = *(a2 + 8);
      v68 = *(v8 + 36);
      if (*(v8 + 37) <= v68)
      {
        sub_18194C8AC(v8, 86, v67, 0xFFFFFFFFLL, 0, v15, v16, v17);
      }

      else
      {
        *(v8 + 36) = v68 + 1;
        v69 = &v8[17][5 * v68];
        *v69 = 86;
        *(v69 + 4) = v67;
        *(v69 + 8) = -1;
        *(v69 + 12) = 0;
        *(v69 + 28) = 0;
        *(v69 + 20) = 0;
        *(v69 + 36) = 0;
      }
    }
  }

  v72 = 1;
  v74 = v197;
  v56 = a4;
LABEL_82:
  v188 = v72 + v13;
  if (v56 < 1)
  {
    goto LABEL_106;
  }

  v75 = v188 - 1;
  v76 = a4;
  if (a4 < 4)
  {
    v77 = 0;
    v16 = v186;
    goto LABEL_94;
  }

  v16 = v186;
  if (a4 >= 0x10)
  {
    v77 = a4 & 0x7FFFFFF0;
    v78 = (v188 - 1);
    v79 = 0uLL;
    v80 = (v186 + 196);
    v81.i64[0] = 0x100000001;
    v81.i64[1] = 0x100000001;
    v82 = v77;
    v83 = 0uLL;
    v84 = 0uLL;
    do
    {
      v15 = *(v80 - 84);
      v85.i16[0] = *(v80 - 84);
      v85.i16[1] = *(v80 - 72);
      v85.i16[2] = *(v80 - 60);
      v85.i16[3] = *(v80 - 48);
      v85.i16[4] = *(v80 - 36);
      v85.i16[5] = *(v80 - 24);
      v85.i16[6] = *(v80 - 12);
      v85.i16[7] = *v80;
      v86.i16[0] = v80[12];
      v86.i16[1] = v80[24];
      v86.i16[2] = v80[36];
      v86.i16[3] = v80[48];
      v86.i16[4] = v80[60];
      v86.i16[5] = v80[72];
      v86.i16[6] = v80[84];
      v86.i16[7] = v80[96];
      v87 = vceqzq_s16(v85);
      v88 = vceqzq_s16(v86);
      v79 = vaddq_s32(v79, vandq_s8(vmovl_high_u16(v87), v81));
      v78 = vaddq_s32(v78, vandq_s8(vmovl_u16(*v87.i8), v81));
      v84 = vaddq_s32(v84, vandq_s8(vmovl_high_u16(v88), v81));
      v83 = vaddq_s32(v83, vandq_s8(vmovl_u16(*v88.i8), v81));
      v80 += 192;
      v82 -= 16;
    }

    while (v82);
    v75 = vaddvq_s32(vaddq_s32(vaddq_s32(v83, v78), vaddq_s32(v84, v79)));
    if (v77 == a4)
    {
      goto LABEL_98;
    }

    if ((a4 & 0xC) == 0)
    {
      goto LABEL_94;
    }
  }

  else
  {
    v77 = 0;
  }

  v89 = v77;
  v90 = v75;
  v77 = a4 & 0x7FFFFFFC;
  v91 = v89 - v77;
  v92 = (v186 + 24 * v89 + 52);
  v93.i64[0] = 0x100000001;
  v93.i64[1] = 0x100000001;
  do
  {
    v94.i16[0] = *(v92 - 12);
    v94.i16[1] = *v92;
    v94.i16[2] = v92[12];
    v94.i16[3] = v92[24];
    v90 = vaddq_s32(v90, vandq_s8(vmovl_u16(vceqz_s16(v94)), v93));
    v92 += 48;
    v91 += 4;
  }

  while (v91);
  v75 = vaddvq_s32(v90);
  if (v77 != a4)
  {
LABEL_94:
    v95 = (v16 + 24 * v77 + 28);
    v96 = a4 - v77;
    do
    {
      v97 = *v95;
      v95 += 12;
      if (!v97)
      {
        ++v75;
      }

      --v96;
    }

    while (v96);
  }

LABEL_98:
  v98 = (v16 + 24 * a4 + 4);
  v99 = v196 - 1;
  do
  {
    v101 = *v98;
    v98 -= 12;
    v102 = v101 - 1;
    v103 = v101 == 0;
    if (v101)
    {
      v104 = v102;
    }

    else
    {
      v104 = v75;
    }

    v105 = *(v8 + 36);
    if (*(v8 + 37) > v105)
    {
      *(v8 + 36) = v105 + 1;
      v100 = &v8[17][5 * v105];
      *v100 = 94;
      *(v100 + 4) = v74;
      *(v100 + 8) = v104;
      *(v100 + 12) = v99 + v76;
      *(v100 + 24) = 0;
      *(v100 + 32) = 0;
      *(v100 + 16) = 0;
    }

    else
    {
      sub_18194C8AC(v8, 94, v74, v104, v99 + v76, v15, v16, v17);
    }

    --v76;
    v75 -= v103;
  }

  while ((v76 + 1) > 1);
LABEL_106:
  if ((*(*v8 + 49) & 4) != 0)
  {
    v106 = *(v8 + 98);
    v107 = 7 * v106;
    v108 = v106 + 1;
    while (--v108 >= 1)
    {
      v109 = v107 * 8 - 56;
      v110 = v8[50];
      v111 = v110[v107 - 7];
      v107 -= 7;
      if (v111 == v18)
      {
        v112 = *(v8 + 36);
        if (*(v110 + v109 + 4))
        {
          if (*(v110 + v109 + 12))
          {
            if (*(v110 + v109 + 20))
            {
              break;
            }

            v113 = 2;
          }

          else
          {
            v113 = 1;
          }
        }

        else
        {
          v113 = 0;
        }

        v115 = &v110[v113] + v109;
        *(v115 + 1) = v18;
        *(v115 + 2) = v112 - 1;
        break;
      }
    }
  }

  if (v190 > 11)
  {
    v116 = v193;
    v117 = v195;
    switch(v190)
    {
      case 12:
        goto LABEL_129;
      case 15:
        v133 = *(a5 + 2);
        if (v191[3].i8[7])
        {
          v134 = v191[3].i8[7] - 1;
          v191[3].i8[7] = v134;
          v135 = v191[23].u32[v134];
        }

        else
        {
          v135 = (v191[7].i32[1] + 1);
          v191[7].i32[1] = v135;
        }

        v148 = (v133 >> 31) + v196;
        v149 = a4 - (v133 >> 31);
        v150 = *(v8 + 36);
        if (*(v8 + 37) <= v150)
        {
          sub_18194C8AC(v8, 97, v148, v149, v135, v15, v16, v17);
        }

        else
        {
          *(v8 + 36) = v150 + 1;
          v151 = &v8[17][5 * v150];
          *v151 = 97;
          *(v151 + 4) = v148;
          *(v151 + 8) = v149;
          *(v151 + 12) = v135;
          *(v151 + 24) = 0;
          *(v151 + 32) = 0;
          *(v151 + 16) = 0;
        }

        v152 = *(v8 + 37);
        v153 = *(v8 + 36);
        if ((v133 & 0x80000000) == 0)
        {
          if (v152 > v153)
          {
            *(v8 + 36) = v153 + 1;
            v142 = &v8[17][5 * v153];
            *v142 = 64906;
            *(v142 + 4) = v185;
            *(v142 + 8) = v135;
            *(v142 + 12) = v196;
            *(v142 + 16) = v133;
            goto LABEL_173;
          }

          v143 = v8;
          v144 = v185;
          v145 = v135;
          v146 = v196;
          v147 = v133;
LABEL_223:
          sub_18194CAFC(v143, 138, v144, v145, v146, v147, v16, v17);
          v117 = v195;
          if (!v189)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        if (v152 > v153)
        {
          *(v8 + 36) = v153 + 1;
          v142 = &v8[17][5 * v153];
          *v142 = 128;
          *(v142 + 4) = v185;
          *(v142 + 8) = v135;
          *(v142 + 12) = v196;
          *(v142 + 32) = 0;
          *(v142 + 16) = 0;
          goto LABEL_174;
        }

        v136 = v8;
        v137 = 0x80;
        v123 = v185;
        v138 = v135;
        v139 = v196;
LABEL_152:
        sub_18194C8AC(v136, v137, v123, v138, v139, v15, v16, v17);
        v117 = v195;
        if (!v189)
        {
          goto LABEL_185;
        }

        goto LABEL_176;
      case 14:
LABEL_129:
        v121 = *(v8 + 36);
        if (*(v8 + 37) <= v121)
        {
          sub_18194C8AC(v8, 94, v74, v188, v196, v15, v16, v17);
        }

        else
        {
          *(v8 + 36) = v121 + 1;
          v122 = &v8[17][5 * v121];
          *v122 = 94;
          *(v122 + 4) = v74;
          *(v122 + 8) = v188;
          *(v122 + 12) = v196;
          *(v122 + 24) = 0;
          *(v122 + 32) = 0;
          *(v122 + 16) = 0;
        }

        v128 = *(v8 + 36);
        if (*(v8 + 37) <= v128)
        {
          sub_18194C8AC(v8, 127, v185, v189, 0, v15, v16, v17);
        }

        else
        {
          *(v8 + 36) = v128 + 1;
          v129 = &v8[17][5 * v128];
          *v129 = 127;
          *(v129 + 4) = v185;
          *(v129 + 8) = v189;
          *(v129 + 12) = 0;
          *(v129 + 28) = 0;
          *(v129 + 20) = 0;
          *(v129 + 36) = 0;
        }

        v130 = *(v8 + 36);
        if (*(v8 + 37) <= v130)
        {
          sub_18194C8AC(v8, 128, v185, v196, v189, v15, v16, v17);
        }

        else
        {
          *(v8 + 36) = v130 + 1;
          v131 = &v8[17][5 * v130];
          *v131 = 128;
          *(v131 + 4) = v185;
          *(v131 + 8) = v196;
          *(v131 + 12) = v189;
          *(v131 + 24) = 0;
          *(v131 + 32) = 0;
          *(v131 + 16) = 0;
        }

        v117 = v195;
        v132 = *(v8 + 36);
        if (v132 >= 1)
        {
          *(&v8[17][5 * v132 - 4] - 3) = 8;
          if (!v189)
          {
            goto LABEL_185;
          }

          goto LABEL_176;
        }

        goto LABEL_175;
    }

    goto LABEL_134;
  }

  v116 = v193;
  v117 = v195;
  if (v190 == 9)
  {
    v123 = *(a5 + 3);
    v124 = *(v8 + 36);
    if (*(v8 + 37) > v124)
    {
      *(v8 + 36) = v124 + 1;
      v125 = &v8[17][5 * v124];
      *v125 = 84;
      *(v125 + 4) = v123;
      *(v125 + 8) = a4;
      *(v125 + 12) = 0;
      *(v125 + 28) = 0;
      *(v125 + 20) = 0;
      *(v125 + 36) = 0;
      if (!v189)
      {
        goto LABEL_185;
      }

      goto LABEL_176;
    }

    v136 = v8;
    v137 = 84;
    v138 = a4;
    goto LABEL_151;
  }

  if (v190 == 10)
  {
    goto LABEL_175;
  }

  if (v190 != 11)
  {
LABEL_134:
    v123 = *(a5 + 1);
    v126 = *(v8 + 36);
    if (*(v8 + 37) > v126)
    {
      *(v8 + 36) = v126 + 1;
      v127 = &v8[17][5 * v126];
      *v127 = 12;
      *(v127 + 4) = v123;
      *(v127 + 8) = 0u;
      *(v127 + 24) = 0u;
      if (!v189)
      {
        goto LABEL_185;
      }

      goto LABEL_176;
    }

    v136 = v8;
    v137 = 12;
    v138 = 0;
LABEL_151:
    v139 = 0;
    goto LABEL_152;
  }

  v118 = *(a5 + 3);
  v119 = *(v8 + 36);
  if (*(v8 + 37) <= v119)
  {
    v119 = sub_18194C8AC(v8, 97, v196, a4, v189, v15, v16, v17);
  }

  else
  {
    *(v8 + 36) = v119 + 1;
    v120 = &v8[17][5 * v119];
    *v120 = 97;
    *(v120 + 4) = v196;
    *(v120 + 8) = a4;
    *(v120 + 12) = v189;
    *(v120 + 24) = 0;
    *(v120 + 32) = 0;
    *(v120 + 16) = 0;
  }

  if (*(*v8 + 103))
  {
    if (a4 != -11)
    {
      sub_1818A3B68(*v8, a4, v118);
    }
  }

  else
  {
    if (v119 < 0)
    {
      v119 = *(v8 + 36) - 1;
    }

    v140 = &v8[17][5 * v119];
    if ((a4 & 0x80000000) != 0 && !*(v140 + 1))
    {
      if (a4 == -3)
      {
        *(v140 + 16) = v118;
        *(v140 + 1) = -3;
      }

      else if (v118)
      {
        *(v140 + 16) = v118;
        *(v140 + 1) = a4;
        if (a4 == -11)
        {
          ++*(v118 + 24);
        }
      }
    }

    else
    {
      sub_18194CB90(v8, v140, v118, a4);
    }
  }

  v141 = *(v8 + 36);
  if (*(v8 + 37) <= v141)
  {
    v143 = v8;
    v144 = v185;
    v145 = v189;
    v146 = v196;
    v147 = a4;
    goto LABEL_223;
  }

  *(v8 + 36) = v141 + 1;
  v142 = &v8[17][5 * v141];
  *v142 = 64906;
  *(v142 + 4) = v185;
  *(v142 + 8) = v189;
  *(v142 + 12) = v196;
  *(v142 + 16) = a4;
LABEL_173:
  *(v142 + 32) = 0;
LABEL_174:
  *(v142 + 24) = 0;
  v117 = v195;
LABEL_175:
  if (!v189)
  {
    goto LABEL_185;
  }

LABEL_176:
  if (v190 == 11 && a4 != 1)
  {
    if (v191[5].i32[1] < a4)
    {
      v191[5].i32[1] = a4;
      v191[6].i32[0] = v196;
    }
  }

  else if (v196)
  {
    v154 = v191[3].u8[7];
    if (v154 <= 7)
    {
      v191[3].i8[7] = v154 + 1;
      v191[23].i32[v154] = v196;
    }
  }

  v155 = v191[3].u8[7];
  if (v155 <= 7)
  {
    v191[3].i8[7] = v155 + 1;
    v191[23].i32[v155] = v189;
  }

LABEL_185:
  v156 = (v117 + 1);
  v157 = v8[3];
  v158 = -v192;
  if (*(v157 + 72) + *(v157 + 76) < 0)
  {
    sub_18195CB84(v157, v8, v158);
  }

  else
  {
    *(*(v157 + 80) + 4 * v158) = *(v8 + 36);
  }

  v159 = *(v8 + 37);
  v160 = *(v8 + 36);
  if (*(a3 + 36))
  {
    if (v159 > v160)
    {
      *(v8 + 36) = v160 + 1;
      v161 = &v8[17][5 * v160];
      v162 = 37;
      goto LABEL_193;
    }

    v163 = v8;
    v164 = 37;
  }

  else
  {
    if (v159 > v160)
    {
      *(v8 + 36) = v160 + 1;
      v161 = &v8[17][5 * v160];
      v162 = 39;
LABEL_193:
      *v161 = v162;
      *(v161 + 4) = v197;
      *(v161 + 8) = v156;
      *(v161 + 12) = 0;
      *(v161 + 28) = 0;
      *(v161 + 20) = 0;
      *(v161 + 36) = 0;
      goto LABEL_197;
    }

    v163 = v8;
    v164 = 39;
  }

  sub_18194C8AC(v163, v164, v197, v156, 0, v15, v16, v17);
LABEL_197:
  if ((*(*v8 + 49) & 4) != 0)
  {
    v165 = *(v8 + 36) - 1;
    v166 = *(v8 + 98);
    v167 = 7 * v166;
    v168 = v166 + 1;
    while (--v168 >= 1)
    {
      v169 = v167 * 8 - 56;
      v170 = v8[50];
      v171 = v170[v167 - 7];
      v167 -= 7;
      if (v171 == v18)
      {
        if (*(v170 + v169 + 4))
        {
          if (*(v170 + v169 + 12))
          {
            if (*(v170 + v169 + 20))
            {
              break;
            }

            v172 = 2;
          }

          else
          {
            v172 = 1;
          }
        }

        else
        {
          v172 = 0;
        }

        v173 = &v170[v172] + v169;
        *(v173 + 1) = v165;
        *(v173 + 2) = v165;
        break;
      }
    }
  }

  v174 = *(a3 + 16);
  if (v174)
  {
    v175 = *(v8 + 36);
    if (*(v8 + 37) <= v175)
    {
      sub_18194C8AC(v8, 67, v174, 0, 0, v15, v16, v17);
    }

    else
    {
      *(v8 + 36) = v175 + 1;
      v176 = &v8[17][5 * v175];
      *v176 = 67;
      *(v176 + 4) = v174;
      *(v176 + 8) = 0u;
      *(v176 + 24) = 0u;
    }
  }

  result = v8[3];
  v178 = ~v116;
  if (*(result + 72) + *(result + 76) < 0)
  {

    return sub_18195CB84(result, v8, v178);
  }

  else
  {
    *(*(result + 80) + 4 * v178) = *(v8 + 36);
  }

  return result;
}