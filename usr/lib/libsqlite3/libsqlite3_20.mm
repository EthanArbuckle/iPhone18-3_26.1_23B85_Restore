uint64_t sub_181960D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  if (*(a2 + 63) == 1)
  {
    ++*(v10 + 72);
    v11 = *(a2 + 80);
    if (v11)
    {
      while (*v11 != v10)
      {
        v11 = v11[5];
        if (!v11)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      goto LABEL_54;
    }

LABEL_5:
    v12 = **(a2 + 72);
    v13 = *v12;
    if (*v12)
    {
      v14 = 0;
      v15 = v12 + 1;
      do
      {
        v14 = -1640531535 * (v14 + (v13 & 0xDF));
        v16 = *v15++;
        v13 = v16;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    v28 = (v10 + 568);
    v29 = *(v10 + 584);
    if (v29)
    {
      v28 = (v29 + 16 * (v14 % *v28));
      v30 = *v28;
      if (*v28)
      {
LABEL_21:
        v31 = (v28 + 2);
        do
        {
          v31 = *v31;
          if (v14 == *(v31 + 8))
          {
            v32 = v31[3];
            for (i = **(a2 + 72); ; ++i)
            {
              if (*v32 == *i)
              {
                if (!*v32)
                {
                  goto LABEL_32;
                }
              }

              else if (byte_181A20298[*v32] != byte_181A20298[*i])
              {
                break;
              }

              ++v32;
            }
          }

          --v30;
        }

        while (v30);
        v34 = qword_1EA831A40;
        if (!qword_1EA831A40)
        {
          goto LABEL_53;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v30 = *(v10 + 572);
      if (v30)
      {
        goto LABEL_21;
      }
    }

    v31 = &qword_1EA831A30;
LABEL_32:
    v34 = v31[2];
    if (!v34)
    {
LABEL_53:
      sub_181910730(a1, "no such module: %s", v34, a4, a5, a6, a7, a8, **(a2 + 72));
      result = 1;
LABEL_54:
      --*(v10 + 72);
      return result;
    }

LABEL_33:
    v48 = 0;
    result = sub_18194B478(v10, a2, v34, *(*v34 + 16), &v48, a6, a7, a8);
    v41 = v48;
    if (result)
    {
      v42 = result;
      sub_181910730(a1, "%s", v35, v36, v37, v38, v39, v40, v48);
      result = v42;
      if (!*(v10 + 107))
      {
        *(a1 + 24) = v42;
      }
    }

    if (v41)
    {
      v43 = result;
      sub_181929C84(v10, v41);
      result = v43;
    }

    goto LABEL_54;
  }

  v17 = (a2 + 54);
  if (*(a2 + 54) < 0)
  {
    sub_181910730(a1, "view %s is circularly defined", a3, a4, a5, a6, a7, a8, *a2);
    return 1;
  }

  else
  {
    v18 = sub_1818CB220(*a1, *(a2 + 64), 0);
    if (v18)
    {
      v19 = v18;
      v20 = *(a1 + 302);
      v21 = *(a1 + 56);
      v22 = *(a1 + 124);
      *(a1 + 302) = 0;
      sub_1818EC1FC(a1, *(v18 + 40));
      *v17 = -1;
      ++*(v10 + 432);
      *(v10 + 436) = 0;
      v23 = *(v10 + 528);
      *(v10 + 528) = 0;
      v24 = sub_18195E03C(a1, v19, 64);
      *(v10 + 528) = v23;
      *(a1 + 56) = v21;
      *(a1 + 124) = v22;
      if (v24)
      {
        v25 = v24;
        v26 = *(a2 + 32);
        if (v26)
        {
          sub_1819605E4(a1, v26, (a2 + 54), (a2 + 8));
          if (!*(a1 + 52) && **(v19 + 32) == *v17)
          {
            sub_181961164(a1, a2, v19, 64);
          }
        }

        else
        {
          *(a2 + 54) = *(v24 + 54);
          *(a2 + 8) = *(v24 + 8);
          *(a2 + 48) |= *(v24 + 48) & 0x62;
          *(v24 + 54) = 0;
          *(v24 + 8) = 0;
        }

        *(a2 + 56) = *(a2 + 54);
        if (*(v10 + 824) || (v45 = *(v25 + 44) - 1, (*(v25 + 44) = v45) == 0))
        {
          sub_18194E094(v10, v25);
        }

        v44 = 0;
      }

      else
      {
        *(a2 + 54) = 0;
        v44 = 1;
      }

      sub_1818BB408(v10, v19, 1);
      v46 = *(v10 + 432) - 1;
      *(v10 + 432) = v46;
      if (v46)
      {
        v47 = 0;
      }

      else
      {
        v47 = *(v10 + 438);
      }

      *(v10 + 436) = v47;
      *(a1 + 302) = v20;
    }

    else
    {
      v44 = 1;
    }

    *(*(a2 + 96) + 114) |= 2u;
    if (*(v10 + 103))
    {
      sub_18194E388(v10, a2);
    }

    return (*(a1 + 52) + v44);
  }
}

uint64_t sub_181961164(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (!*(*result + 103))
  {
    v4 = result;
    if (*(result + 302) <= 1u)
    {
      v5 = a2;
      v46 = *result;
      do
      {
        v6 = a3;
        a3 = *(a3 + 80);
      }

      while (a3);
      v7 = *(v6 + 32);
      v49 = 0;
      memset(v48, 0, sizeof(v48));
      *(&v48[0] + 1) = *(v6 + 40);
      if (*(a2 + 54) >= 1)
      {
        v8 = 0;
        v45 = v7 + 8;
        v9 = *(a2 + 8);
        do
        {
          *(v5 + 48) |= *(v9 + 14) & 0x62;
          v47 = *(v45 + 24 * v8);
          v10 = sub_1818D0A24(v47);
          *(v9 + 9) = v10;
          if (v10 >= 65)
          {
            v11 = 0;
            v14 = v6;
LABEL_14:
            if (v10 <= 65)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v11 = 0;
            v12 = 24 * v8;
            v13 = v6;
            while (1)
            {
              v14 = *(v13 + 88);
              if (!v14)
              {
                break;
              }

              v11 |= sub_18196165C(*(*(v13 + 32) + v12 + 8));
              v10 = sub_1818D0A24(*(*(v14 + 32) + v12 + 8));
              *(v9 + 9) = v10;
              v13 = v14;
              if (v10 >= 65)
              {
                goto LABEL_14;
              }
            }

            v10 = a4;
            *(v9 + 9) = a4;
            v14 = v13;
            if (a4 <= 65)
            {
              goto LABEL_27;
            }
          }

          v15 = *(v14 + 88);
          if (v14 != v6 || v15)
          {
            for (i = v10; v15; v15 = *(v15 + 88))
            {
              v11 |= sub_18196165C(*(*(v15 + 32) + 24 * v8 + 8));
            }

            if (i == 66 && (v11 & 1) != 0 || i != 66 && (v11 & 2) != 0)
            {
              v17 = 65;
            }

            else
            {
              if (i == 66 || *v47 != 36)
              {
                goto LABEL_27;
              }

              v17 = 70;
            }

            *(v9 + 9) = v17;
          }

LABEL_27:
          v22 = sub_181961778(v48, v47, 0, 0, 0);
          v23 = *(v9 + 9);
          v24 = 1668050786;
          v25 = 1952807028;
          if (!v22)
          {
            goto LABEL_57;
          }

          v26 = *v22;
          if (!*v22)
          {
            if (v23 == 67)
            {
              goto LABEL_70;
            }

            goto LABEL_57;
          }

          v27 = 0;
          v28 = (v22 + 1);
          v29 = 67;
          while (1)
          {
            v27 = byte_181A20298[v26] | (v27 << 8);
            v32 = 66;
            if (v27 > 1668050785)
            {
              if (v27 == 1668050786 || v27 == 1952807028)
              {
                goto LABEL_35;
              }

              goto LABEL_42;
            }

            if (v27 == 1651273570)
            {
              break;
            }

            if (v27 != 1667785074)
            {
              goto LABEL_42;
            }

LABEL_35:
            v31 = *v28++;
            v26 = v31;
            v29 = v32;
            if (!v31)
            {
              goto LABEL_54;
            }
          }

          v32 = 65;
          if (v29 == 67 || v29 == 69)
          {
            goto LABEL_35;
          }

LABEL_42:
          v34 = v27 == 1718382433 || v27 == 1919246700 || v27 == 1685026146;
          if (v34 && v29 == 67)
          {
            v32 = 69;
            goto LABEL_35;
          }

          v32 = v29;
          if ((v27 & 0xFFFFFF) != 0x696E74)
          {
            goto LABEL_35;
          }

          LODWORD(v32) = 68;
LABEL_54:
          if (v23 == v32)
          {
LABEL_70:
            v36 = v4;
            v37 = v5;
            v38 = strlen(v22) & 0x3FFFFFFF;
            v39 = *v9;
            if (*v9)
            {
              v40 = strlen(*v9) & 0x3FFFFFFF;
              v41 = v40 + v38 + 2;
              if (*(v46 + 64) > v39)
              {
                if (*(v46 + 62) <= v39)
                {
                  if (v40 + v38 < 0x7F)
                  {
                    goto LABEL_75;
                  }
                }

                else if (*(v46 + 63) <= v39 && v41 <= *(v46 + 219))
                {
LABEL_75:
                  v42 = *v9;
                  goto LABEL_80;
                }
              }

              v42 = sub_181929F38(v46, v39, v41, 2126928226);
              if (v42)
              {
LABEL_80:
                *v9 = v42;
                *(v9 + 14) &= 0xFDFBu;
                v5 = v37;
                v4 = v36;
LABEL_81:
                memcpy((v42 + v40 + 1), v22, v38 + 1);
                v43 = *(v9 + 14) | 4;
              }

              else
              {
                sub_181929C84(v46, v39);
                *v9 = 0;
                v43 = *(v9 + 14) & 0xFDFB;
                v5 = v37;
                v4 = v36;
              }

              *(v9 + 14) = v43;
            }

            else
            {
              v42 = sub_181929E8C(v46, v38 + 2, 2126928226);
              *v9 = v42;
              *(v9 + 14) &= 0xFDFBu;
              v5 = v37;
              v4 = v36;
              if (v42)
              {
                v40 = 0;
                goto LABEL_81;
              }
            }

            goto LABEL_84;
          }

LABEL_57:
          if (*(v9 + 9) > 0x43u)
          {
            v22 = "NUM";
            switch(v23)
            {
              case 'F':
                goto LABEL_70;
              case 'E':
                v35 = 4;
                break;
              case 'D':
                v35 = 2;
                break;
              default:
                goto LABEL_84;
            }
          }

          else if (v23 == 65)
          {
            v35 = 1;
          }

          else
          {
            if (v23 != 66)
            {
              v22 = "NUM";
              if (v23 == 67)
              {
                goto LABEL_70;
              }

              goto LABEL_84;
            }

            v35 = 5;
          }

          v22 = off_1EA831620[v35];
          if (v22)
          {
            goto LABEL_70;
          }

LABEL_84:
          result = sub_1818B4720(v4, v47, v24, v25, v18, v19, v20, v21);
          if (result)
          {
            result = sub_1819619C4(v46, v9, *result);
          }

          ++v8;
          v9 += 16;
        }

        while (v8 < *(v5 + 54));
      }

      *(v5 + 60) = 1;
    }
  }

  return result;
}

uint64_t sub_18196165C(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (2)
    {
      v2 = 2;
      switch(*a1)
      {
        case 0x24:
        case 0x8B:
        case 0xA8:
        case 0xAA:
        case 0xB1:
        case 0xB2:
          v8 = sub_1818D0A24(a1);
          if (v8 == 66)
          {
            v9 = 6;
          }

          else
          {
            v9 = 7;
          }

          if (v8 <= 66)
          {
            v2 = v9;
          }

          else
          {
            v2 = 5;
          }

          break;
        case 0x70:
          v2 = 6;
          break;
        case 0x72:
        case 0xAD:
        case 0xB3:
          a1 = *(a1 + 16);
          if (!a1)
          {
            goto LABEL_13;
          }

          continue;
        case 0x76:
          return v2 | v1;
        case 0x7A:
          goto LABEL_13;
        case 0x9B:
          v2 = 4;
          break;
        case 0x9D:
        case 0xA9:
        case 0xAC:
          v2 = 7;
          break;
        case 0x9E:
          v3 = *(a1 + 32);
          v4 = *v3;
          if (v4 < 2)
          {
            v2 = 0;
          }

          else
          {
            v2 = 0;
            v5 = (v3 + 8);
            for (i = 1; i < v4; i += 2)
            {
              v7 = *v5;
              v5 += 6;
              v2 |= sub_18196165C(v7);
            }
          }

          if (v4)
          {
            a1 = *&v3[6 * v4 - 4];
            v1 |= v2;
            v2 = 0;
            if (a1)
            {
              continue;
            }
          }

          break;
        default:
          v2 = 1;
          break;
      }

      break;
    }
  }

  else
  {
LABEL_13:
    v2 = 0;
  }

  return v2 | v1;
}

const char *sub_181961778(const char *result, unsigned __int8 *a2, void *a3, void *a4, const char **a5)
{
  v38 = 0;
  v36 = 0;
  v37 = 0;
  v8 = *a2;
  if (v8 == 139)
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v15 = *(a2 + 4);
    v17 = *(v15 + 32);
    v16 = *(v15 + 40);
    v18 = *(v17 + 8);
    *(&v33 + 1) = result;
    *&v32 = *result;
    *(&v32 + 1) = v16;
LABEL_17:
    result = sub_181961778(&v32, v18, &v38, &v37, &v36);
    goto LABEL_23;
  }

  if (v8 != 168)
  {
    goto LABEL_22;
  }

  if (!result)
  {
    goto LABEL_23;
  }

  v9 = 0;
  v10 = *(a2 + 12);
  do
  {
    v11 = *(result + 1);
    v12 = *v11;
    if (v12 < 1)
    {
LABEL_9:
      v14 = 0;
      result = *(result + 3);
    }

    else
    {
      v13 = v11 + 9;
      while (*v13 != *(a2 + 11))
      {
        v13 += 18;
        if (!--v12)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v13 - 3);
      if ((*(v13 - 3) & 4) != 0)
      {
        v9 = **(v13 + 9);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  while (result && !v14);
  if (!v14)
  {
    goto LABEL_22;
  }

  if (v9)
  {
    if (v10 < **(v9 + 32))
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      v18 = *(*(v9 + 32) + 24 * v10 + 8);
      *(&v32 + 1) = *(v9 + 40);
      *(&v33 + 1) = result;
      *&v32 = *result;
      goto LABEL_17;
    }

LABEL_22:
    result = 0;
    goto LABEL_23;
  }

  if ((v10 & 0x80000000) != 0 && (v10 = *(v14 + 26), (v10 & 0x80000000) != 0))
  {
    v36 = "rowid";
    v23 = "INTEGER";
  }

  else
  {
    v20 = v14[1] + 16 * v10;
    v21 = *v20;
    v36 = *v20;
    if ((*(v20 + 14) & 4) != 0)
    {
      v24 = result;
      v25 = strlen(v21);
      result = v24;
      v23 = &v21[v25 + 1];
    }

    else
    {
      v22 = *(v20 + 8);
      if (v22 >= 0x10)
      {
        v23 = off_1EA831620[(v22 >> 4) - 1];
      }

      else
      {
        v23 = 0;
      }
    }
  }

  v37 = *v14;
  v26 = *result;
  if (*result)
  {
    v27 = v14[12];
    result = v23;
    if (v27)
    {
      v28 = *(*v26 + 32);
      v29 = (v28 + 24);
      v30 = 0xFFFFFFFF00000000;
      do
      {
        v31 = *v29;
        v29 += 4;
        v30 += 0x100000000;
      }

      while (v31 != v27);
      v38 = *(v28 + (v30 >> 27));
    }
  }

  else
  {
    result = v23;
  }

LABEL_23:
  if (a3)
  {
    *a3 = v38;
    v19 = v36;
    *a4 = v37;
    *a5 = v19;
  }

  return result;
}

uint64_t sub_1819619C4(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v7 = (strlen(*a2) & 0x3FFFFFFF) + 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if ((*(a2 + 14) & 4) != 0)
  {
    v8 = v7 + (strlen(&v6[v7]) & 0x3FFFFFFF) + 1;
  }

  if (a3)
  {
    v9 = (strlen(a3) & 0x3FFFFFFF) + 1;
    v10 = v9 + v8;
    if (v6)
    {
LABEL_8:
      if (*(a1 + 512) <= v6)
      {
        goto LABEL_17;
      }

      if (*(a1 + 496) > v6)
      {
        if (*(a1 + 504) <= v6 && v10 <= *(a1 + 438))
        {
          goto LABEL_18;
        }

LABEL_17:
        result = sub_181929F38(a1, v6, v10, 566941463);
        v6 = result;
        if (!result)
        {
          return result;
        }

        goto LABEL_18;
      }

      if (v10 >= 0x81)
      {
        goto LABEL_17;
      }

LABEL_18:
      *a2 = v6;
      result = memcpy(&v6[v8], a3, v9);
      *(a2 + 14) |= 0x200u;
      return result;
    }
  }

  else
  {
    v9 = 1;
    v10 = v8 + 1;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  result = sub_181929E8C(a1, v10, 566941463);
  v6 = result;
  if (result)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_181961AFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      *(v5 + 1) |= a3;
      *(v5 + 14) = a2;
      if (*v5 == 172)
      {
        v6 = *(v5 + 4);
        if (v6)
        {
          if (*v6 >= 1)
          {
            v7 = 0;
            v8 = 2;
            do
            {
              sub_181961AFC(*&v6[v8], a2, a3);
              ++v7;
              v6 = *(v5 + 4);
              v8 += 6;
            }

            while (v7 < *v6);
          }
        }
      }

      result = sub_181961AFC(*(v5 + 2), a2, a3);
      v5 = *(v5 + 3);
    }

    while (v5);
  }

  return result;
}

uint64_t sub_181961BC4(unsigned __int8 *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  if (*(*a1 + 103) || a1[302] > 1u)
  {
    return 0;
  }

  v11 = *a3;
  if (*a3 > *(*a1 + 144))
  {
    sub_181910730(a1, "too many terms in %s BY clause", a3, a4, a5, a6, a7, a8, a4);
    return 1;
  }

  if (v11 < 1)
  {
    return 0;
  }

  v12 = *(a2 + 32);
  v13 = a3 + 7;
  v14 = 1;
  while (1)
  {
    v16 = *v13;
    if (*v13)
    {
      break;
    }

LABEL_11:
    result = 0;
    v13 += 12;
    if (v14++ >= v11)
    {
      return result;
    }
  }

  if (*v12 >= v16)
  {
    sub_1818EC294(a1, v12, v16 - 1, *(v13 - 10), 0);
    v11 = *a3;
    goto LABEL_11;
  }

  sub_181910730(a1, "%r %s BY term out of range - should be between 1 and %d", a3, a4, a5, a6, a7, a8, v14);
  return 1;
}

uint64_t sub_181961CD4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 7))
  {
    v2 = *(a2 + 72);
    v3 = *(v2 + 56);
    if (v3)
    {
      v4 = *(v2 + 64);
      *v3 = v4;
      if (v4)
      {
        *(v4 + 56) = *(v2 + 56);
      }

      *(v2 + 56) = 0;
    }
  }

  return 0;
}

uint64_t sub_181961D08(uint64_t result, int *a2, unsigned __int8 *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *a3;
  if (*a3)
  {
    v8 = 0;
    v9 = *a3;
    while (1)
    {
      v10 = (byte_181A204C8[v9] & 6) != 0 || v9 == 95;
      v11 = !v10;
      if (!v10)
      {
        break;
      }

      v12 = v8 + 1;
      v9 = a3[++v8];
      if (!v9)
      {
        v8 = v12;
        break;
      }
    }

    if ((v7 - 58) > 0xFFFFFFFFFFFFFFF5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
    v8 = 0;
  }

  result = sub_1819126D8(a3, v8);
  if (!v11 && v8 && result == 60)
  {
    v13 = 0;
    v14 = v6;
    if (v7)
    {
      goto LABEL_25;
    }

LABEL_20:
    LODWORD(v15) = v14;
    goto LABEL_21;
  }

LABEL_24:
  v14 = v6 + 1;
  *(v5 + v6) = 34;
  LOBYTE(v7) = *a3;
  v13 = 1;
  if (!*a3)
  {
    goto LABEL_20;
  }

LABEL_25:
  v16 = a3 + 1;
  do
  {
    v15 = v14 + 1;
    *(v5 + v14) = v7;
    if (*(v16 - 1) == 34)
    {
      *(v5 + v15) = 34;
      LODWORD(v15) = v14 + 2;
    }

    v17 = *v16++;
    LOBYTE(v7) = v17;
    v14 = v15;
  }

  while (v17);
LABEL_21:
  if (v13)
  {
    *(v5 + v15) = 34;
    LODWORD(v15) = v15 + 1;
  }

  *(v5 + v15) = 0;
  *a2 = v15;
  return result;
}

uint64_t sub_181961E4C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 408);
  if (v3)
  {
    while (*v3 != a2)
    {
      v3 = v3[3];
      if (!v3)
      {
        goto LABEL_6;
      }
    }

    *v3 = 0;
  }

LABEL_6:
  if ((*(a2 + 7) & 3) != 0)
  {
    return 0;
  }

  v5 = *(v2 + 408);
  if (!v5)
  {
    return 0;
  }

  while (*v5 != a2 + 72)
  {
    v5 = v5[3];
    if (!v5)
    {
      return 0;
    }
  }

  *v5 = 0;
  return 0;
}

uint64_t sub_181961EB8(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 52))
  {
    return 2;
  }

  if ((*(a2 + 6) & 0x420) != 0)
  {
    return 1;
  }

  v6 = *(a2 + 32);
  if (v6)
  {
    v7 = *v6;
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = v6 + 2;
      do
      {
        v10 = &v9[6 * v8];
        v11 = *(v10 + 1);
        if (v11)
        {
          if ((*(v10 + 17) & 3) == 0)
          {
            v12 = *(v2 + 408);
            if (v12)
            {
              while (*v12 != v11)
              {
                v12 = v12[3];
                if (!v12)
                {
                  goto LABEL_9;
                }
              }

              *v12 = 0;
            }
          }
        }

LABEL_9:
        ++v8;
      }

      while (v8 != v7);
    }
  }

  v13 = *(a2 + 40);
  if (v13)
  {
    v14 = *v13;
    if (*v13 >= 1)
    {
      v15 = 0;
      do
      {
        v16 = &v13[18 * v15 + 2];
        v17 = *(v2 + 408);
        if (v17)
        {
          while (*v17 != *v16)
          {
            v17 = v17[3];
            if (!v17)
            {
              goto LABEL_25;
            }
          }

          *v17 = 0;
        }

LABEL_25:
        v18 = *(v16 + 56);
        if ((*(v16 + 25) & 0x800) != 0)
        {
          v19 = *v18;
          if (v19 >= 1)
          {
            for (i = 0; i != v19; ++i)
            {
              v21 = *(v2 + 408);
              if (v21)
              {
                while (*v21 != *&v18[2 * i + 2])
                {
                  v21 = v21[3];
                  if (!v21)
                  {
                    goto LABEL_31;
                  }
                }

                *v21 = 0;
              }

LABEL_31:
              ;
            }
          }
        }

        else if (v18)
        {
          sub_181959BA0(a1, v18);
          v14 = *v13;
        }

        ++v15;
      }

      while (v15 < v14);
    }
  }

  sub_181962064(a1, a2);
  return 0;
}

void *sub_181962064(void *result, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    v3 = result;
    v4 = *result;
    if ((*(*(v2 + 4) + 4) & 0x40) != 0 || (result = sub_18195C5D4(*v4, *(a2 + 104))) == 0)
    {
      v5 = 0;
    }

    else
    {
      result = sub_18195B158(v4, sub_18198D9C8, result);
      v5 = result;
      if (result && !*(v4 + 52))
      {
        result[1] = *(v4 + 400);
        *(v4 + 400) = result;
      }
    }

    if (*v2 >= 1)
    {
      v6 = 0;
      v7 = v2 + 4;
      v24 = v2 + 4;
      do
      {
        v8 = &v7[12 * v6];
        v9 = *(v8 + 2);
        v28 = 0u;
        v27 = 0u;
        v26 = 0u;
        v25 = v4;
        v10 = v4;
        if (v5)
        {
          result = sub_18195FBC4(v4, v9, &v25);
          v10 = v25;
        }

        if (*(*v10 + 103))
        {
          return result;
        }

        result = sub_1818AEE70(v3, v9);
        v11 = *(v8 + 1);
        if (!v11)
        {
          goto LABEL_10;
        }

        v30 = 0u;
        v31 = 0u;
        v29[0] = v4;
        v29[1] = sub_181961E4C;
        v12 = *v11;
        if (*v11 < 1)
        {
          goto LABEL_10;
        }

        v13 = v2;
        v14 = v5;
        v15 = v3;
        for (i = 2; ; i += 6)
        {
          v17 = *&v11[i];
          if (v17)
          {
            break;
          }

          if (v12 <= 1)
          {
            goto LABEL_25;
          }

LABEL_18:
          --v12;
        }

        result = sub_181959BA0(v29, v17);
        if (result)
        {
          v18 = 1;
        }

        else
        {
          v18 = v12 <= 1;
        }

        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_25:
        v19 = *v11;
        v3 = v15;
        v5 = v14;
        v2 = v13;
        v7 = v24;
        if (v19 >= 1)
        {
          for (j = 0; j != v19; ++j)
          {
            v21 = &v11[6 * j + 2];
            if ((*(v21 + 17) & 3) == 0)
            {
              v22 = *(v4 + 408);
              if (v22)
              {
                v23 = *(v21 + 8);
                while (*v22 != v23)
                {
                  v22 = v22[3];
                  if (!v22)
                  {
                    goto LABEL_28;
                  }
                }

                *v22 = 0;
              }
            }

LABEL_28:
            ;
          }
        }

LABEL_10:
        ++v6;
      }

      while (v6 < *v2);
    }

    if (v5)
    {
      if (*(v4 + 400) == v5)
      {
        *(v4 + 400) = v5[1];
      }
    }
  }

  return result;
}

uint64_t sub_181962290(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  v8 = *a2;
  if (v8 < 1)
  {
    return 0;
  }

  for (i = (a2 + 25); (*i & 0x20) == 0; i += 12)
  {
    if (!--v8)
    {
      return 0;
    }
  }

  v11 = *(i - 1);
  v12 = v11 == 3 || v11 == 0;
  v13 = "LAST";
  if (v12)
  {
    v13 = "FIRST";
  }

  sub_181910730(a1, "unsupported use of NULLS %s", a3, a4, a5, a6, a7, a8, v13);
  return 1;
}

uint64_t sub_18196231C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 35))
  {
    v11 = *(a2 + 72);
    v12 = *(*a1 + 32);
    if (v11)
    {
      v13 = (v12 + 24);
      v14 = 0xFFFFFFFF00000000;
      do
      {
        v15 = *v13;
        v13 += 4;
        v14 += 0x100000000;
      }

      while (v15 != v11);
      v16 = v14 >> 32;
    }

    else
    {
      v16 = -32768;
    }

    v10 = (v12 + 32 * v16);
  }

  else
  {
    v10 = (a2 + 72);
  }

  result = sub_1818CA520(a1, 0, *(a2 + 8), *v10, a5, a6, a7, a8);
  v24 = *(a2 + 24);
  if (v24)
  {
    v25 = *a1;
    if (*(*a1 + 824) || (v27 = *(v24 + 44) - 1, (*(v24 + 44) = v27) == 0))
    {
      v26 = result;
      sub_18194E094(v25, v24);
      result = v26;
    }
  }

  *(a2 + 24) = result;
  *(a2 + 33) |= 0x400u;
  if (result)
  {
    ++*(result + 44);
    if ((*(a2 + 33) & 2) != 0)
    {
      v28 = *(result + 16);
      if (!v28)
      {
        goto LABEL_23;
      }

      while (1)
      {
        v29 = *v28;
        for (i = *(a2 + 48); *v29 == *i; ++i)
        {
          if (!*v29)
          {
            *(a2 + 56) = v28;
            return result;
          }

LABEL_18:
          ++v29;
        }

        if (byte_181A20298[*v29] == byte_181A20298[*i])
        {
          goto LABEL_18;
        }

        v28 = *(v28 + 40);
        if (!v28)
        {
LABEL_23:
          sub_181910730(a1, "no such index: %s", v18, v19, v20, v21, v22, v23, *(a2 + 48));
          result = 0;
          *(a1 + 43) |= 8u;
          return result;
        }
      }
    }
  }

  return result;
}

char *sub_181962494(uint64_t a1, int a2, int a3, void *a4)
{
  v5 = a2;
  v6 = 8 * a2;
  v7 = 2 * a2;
  v8 = v7 + 2;
  v9 = v6 + ((3 * a2 + v7 + 2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9 + 112;
  v11 = v9 + 112 + a3;
  if (a1)
  {
    result = sub_181929E8C(a1, v9 + 112 + a3, 3329821686);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = sub_181902484(v9 + 112 + a3, 3329821686);
    if (!result)
    {
      return result;
    }
  }

  v13 = result;
  bzero(result, v11);
  result = v13;
  v14 = &v13[v6 + 112];
  *(v13 + 1) = v14 + v8;
  *(v13 + 2) = v14;
  *(v13 + 7) = v14 + v8 + v7;
  *(v13 + 8) = v13 + 112;
  *(v13 + 48) = v5;
  *(v13 + 47) = v5 - 1;
  *a4 = &v13[v10];
  return result;
}

void sub_181962568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = *(a2 + 24);
  v12 = *(a1 + 56);
  *(a1 + 56) = v12 + 2;
  v13 = *a1;
  v14 = *(a2 + 48);
  v15 = *(*a1 + 32);
  if (v14)
  {
    v16 = (v15 + 24);
    LODWORD(v17) = -1;
    do
    {
      v18 = *v16;
      v16 += 4;
      v17 = (v17 + 1);
    }

    while (v18 != v14);
    v19 = *(v13 + 528);
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 4294934528;
    v19 = *(v13 + 528);
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  if (*(v13 + 197) || *(a1 + 302))
  {
    goto LABEL_9;
  }

  v34 = v19(*(v13 + 536), 27, *a2, 0, *(v15 + 32 * v17), *(a1 + 368));
  if (v34 == 1)
  {
    v35 = 23;
    v36 = "not authorized";
LABEL_127:
    sub_181910730(a1, v36, a3, a4, a5, a6, a7, a8, v93);
    *(a1 + 24) = v35;
    return;
  }

  if ((v34 & 0xFFFFFFFD) != 0)
  {
    v35 = 1;
    v36 = "authorizer malfunction";
    goto LABEL_127;
  }

  if (v34)
  {
    return;
  }

LABEL_9:
  if (v17 != 1 && *(*(*(*a1 + 32) + 32 * v17 + 8) + 17))
  {
    sub_1819570CC(a1, v17, *(v11 + 40), 1, *v11);
  }

  v20 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v20)
  {
    v21 = v20;
    v22 = v8;
    if (v8 < 0)
    {
      v22 = *(a2 + 88);
    }

    v94 = v22;
    v95 = 0;
    v23 = sub_1819572CC(a1, a2);
    v27 = v23;
    v28 = *(a1 + 56);
    *(a1 + 56) = v28 + 1;
    v29 = *(a2 + 94);
    if (v23)
    {
      ++*v23;
    }

    v30 = *(v21 + 144);
    if (*(v21 + 148) <= v30)
    {
      v30 = sub_18194C8AC(v21, 119, v28, 0, v29, v24, v25, v26);
    }

    else
    {
      *(v21 + 144) = v30 + 1;
      v31 = *(v21 + 136) + 40 * v30;
      *v31 = 119;
      *(v31 + 4) = v28;
      *(v31 + 8) = 0;
      *(v31 + 12) = v29;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      *(v31 + 16) = 0;
    }

    if (*(*v21 + 103))
    {
      if (v27)
      {
        if (!*(*v21 + 824))
        {
          v32 = (*v27)-- == 1;
          if (v32)
          {
            sub_181939EC8(*(v27 + 2), v27);
          }
        }
      }
    }

    else
    {
      if (v30 < 0)
      {
        v30 = *(v21 + 144) - 1;
      }

      v33 = *(v21 + 136) + 40 * v30;
      if (*(v33 + 1))
      {
        sub_18194CB90(v21, v33, v27, 0xFFFFFFF8);
      }

      else if (v27)
      {
        *(v33 + 16) = v27;
        *(v33 + 1) = -8;
      }
    }

    sub_1818B69D8(a1, v12, v17, v11, 102, v24, v25, v26);
    v40 = *(v21 + 144);
    if (*(v21 + 148) <= v40)
    {
      v40 = sub_18194C8AC(v21, 36, v12, 0, 0, v37, v38, v39);
      v42 = *(a1 + 31);
      if (v42)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *(v21 + 144) = v40 + 1;
      v41 = *(v21 + 136) + 40 * v40;
      *v41 = 36;
      *(v41 + 4) = v12;
      *(v41 + 8) = 0u;
      *(v41 + 24) = 0u;
      v42 = *(a1 + 31);
      if (v42)
      {
LABEL_36:
        v43 = v42 - 1;
        *(a1 + 31) = v43;
        v44 = *(a1 + 4 * v43 + 184);
        goto LABEL_39;
      }
    }

    v44 = (*(a1 + 60) + 1);
    *(a1 + 60) = v44;
LABEL_39:
    v45 = *(a1 + 152);
    if (!v45)
    {
      v45 = a1;
    }

    *(v45 + 32) = 1;
    sub_1818D72E8(a1, a2, v12, v44, 0, &v95, 0, 0);
    v50 = *(v21 + 144);
    if (*(v21 + 148) <= v50)
    {
      sub_18194C8AC(v21, 139, v28, v44, 0, v47, v48, v49);
      v52 = v95;
      if (!v95)
      {
        goto LABEL_48;
      }
    }

    else
    {
      *(v21 + 144) = v50 + 1;
      v51 = *(v21 + 136) + 40 * v50;
      *v51 = 139;
      *(v51 + 4) = v28;
      *(v51 + 8) = v44;
      *(v51 + 12) = 0;
      *(v51 + 28) = 0;
      *(v51 + 20) = 0;
      *(v51 + 36) = 0;
      v52 = v95;
      if (!v95)
      {
LABEL_48:
        v56 = (v40 + 1);
        v57 = *(v21 + 144);
        if (*(v21 + 148) <= v57)
        {
          sub_18194C8AC(v21, 39, v12, v56, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v57 + 1;
          v58 = *(v21 + 136) + 40 * v57;
          *v58 = 39;
          *(v58 + 4) = v12;
          *(v58 + 8) = v56;
          *(v58 + 12) = 0;
          *(v58 + 28) = 0;
          *(v58 + 20) = 0;
          *(v58 + 36) = 0;
        }

        v59 = *(v21 + 144);
        v60 = v94;
        if (*(*v21 + 103))
        {
          v61 = &byte_1EA831A58;
        }

        else
        {
          v61 = (*(v21 + 136) + 40 * v40);
        }

        v62 = v12 + 1;
        *(v61 + 2) = v59;
        if (v8 < 0)
        {
          if (*(v21 + 148) <= v59)
          {
            sub_18194C8AC(v21, 145, v94, v17, 0, v47, v48, v49);
            v60 = v94;
          }

          else
          {
            *(v21 + 144) = v59 + 1;
            v63 = *(v21 + 136) + 40 * v59;
            *v63 = 145;
            *(v63 + 4) = v94;
            *(v63 + 8) = v17;
            *(v63 + 12) = 0;
            *(v63 + 28) = 0;
            *(v63 + 20) = 0;
            *(v63 + 36) = 0;
          }
        }

        v64 = *(v21 + 144);
        if (*(v21 + 148) <= v64)
        {
          v64 = sub_18194C8AC(v21, 113, (v12 + 1), v60, v17, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v64 + 1;
          v65 = *(v21 + 136) + 40 * v64;
          *v65 = 113;
          *(v65 + 4) = v62;
          *(v65 + 8) = v60;
          *(v65 + 12) = v17;
          *(v65 + 24) = 0;
          *(v65 + 32) = 0;
          *(v65 + 16) = 0;
        }

        if (*(*v21 + 103))
        {
          if (v27)
          {
            if (!*(*v21 + 824))
            {
              v32 = (*v27)-- == 1;
              if (v32)
              {
                sub_181939EC8(*(v27 + 2), v27);
              }
            }
          }
        }

        else
        {
          if (v64 < 0)
          {
            v64 = *(v21 + 144) - 1;
          }

          v66 = *(v21 + 136) + 40 * v64;
          if (*(v66 + 1))
          {
            sub_18194CB90(v21, v66, v27, 0xFFFFFFF8);
          }

          else if (v27)
          {
            *(v66 + 16) = v27;
            *(v66 + 1) = -8;
          }
        }

        v67 = *(v21 + 144);
        if (v67 >= 1)
        {
          if (v8 < 0)
          {
            v68 = 1;
          }

          else
          {
            v68 = 17;
          }

          *(*(v21 + 136) + 40 * v67 - 38) = v68;
        }

        if (*(v21 + 148) <= v67)
        {
          v67 = sub_18194C8AC(v21, 34, v28, 0, 0, v47, v48, v49);
          if (*(a2 + 98))
          {
            goto LABEL_80;
          }
        }

        else
        {
          *(v21 + 144) = v67 + 1;
          v69 = *(v21 + 136) + 40 * v67;
          *v69 = 34;
          *(v69 + 4) = v28;
          *(v69 + 8) = 0u;
          *(v69 + 24) = 0u;
          if (*(a2 + 98))
          {
LABEL_80:
            v70 = *(v21 + 144);
            if (*(v21 + 148) <= v70)
            {
              v70 = sub_18194C8AC(v21, 9, 0, 1, 0, v47, v48, v49);
            }

            else
            {
              *(v21 + 144) = v70 + 1;
              v71 = *(v21 + 136) + 40 * v70;
              *v71 = 9;
              *(v71 + 4) = 0x100000000;
              *(v71 + 12) = 0;
              *(v71 + 28) = 0;
              *(v71 + 20) = 0;
              *(v71 + 36) = 0;
            }

            v75 = *(a2 + 94);
            v74 = *(v21 + 144);
            if (*(v21 + 148) <= v74)
            {
              sub_18194CAFC(v21, 132, v28, v70, v44, v75, v48, v49);
            }

            else
            {
              *(v21 + 144) = v74 + 1;
              v76 = *(v21 + 136) + 40 * v74;
              *v76 = 64900;
              *(v76 + 4) = v28;
              *(v76 + 8) = v70;
              *(v76 + 12) = v44;
              *(v76 + 16) = v75;
              *(v76 + 24) = 0;
              *(v76 + 32) = 0;
            }

            sub_181963324(a1, 2, a2, v60, v46, v75, v48, v49);
            v73 = *(v21 + 144);
            if (*(*v21 + 103))
            {
              v77 = &byte_1EA831A58;
            }

            else
            {
              v77 = (*(v21 + 136) + 40 * v70);
            }

            *(v77 + 2) = v73;
            goto LABEL_94;
          }
        }

        v72 = *(a1 + 152);
        if (!v72)
        {
          v72 = a1;
        }

        *(v72 + 33) = 1;
        v73 = *(v21 + 144);
        v74 = v73;
LABEL_94:
        if (*(v21 + 148) <= v73)
        {
          sub_18194C8AC(v21, 133, v28, v44, (v12 + 1), v47, v48, v49);
          if ((*(a2 + 99) & 0x200) != 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          *(v21 + 144) = v73 + 1;
          v78 = *(v21 + 136) + 40 * v73;
          *v78 = 133;
          *(v78 + 4) = v28;
          *(v78 + 8) = v44;
          *(v78 + 12) = v62;
          *(v78 + 24) = 0;
          *(v78 + 32) = 0;
          *(v78 + 16) = 0;
          if ((*(a2 + 99) & 0x200) != 0)
          {
            goto LABEL_101;
          }
        }

        v79 = *(v21 + 144);
        if (*(v21 + 148) <= v79)
        {
          sub_18194C8AC(v21, 137, (v12 + 1), 0, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v79 + 1;
          v80 = *(v21 + 136) + 40 * v79;
          *v80 = 137;
          *(v80 + 4) = v62;
          *(v80 + 8) = 0u;
          *(v80 + 24) = 0u;
        }

LABEL_101:
        v81 = *(v21 + 144);
        if (*(v21 + 148) <= v81)
        {
          sub_18194C8AC(v21, 138, (v12 + 1), v44, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v81 + 1;
          v82 = *(v21 + 136) + 40 * v81;
          *v82 = 138;
          *(v82 + 4) = v62;
          *(v82 + 8) = v44;
          *(v82 + 12) = 0;
          *(v82 + 28) = 0;
          *(v82 + 20) = 0;
          *(v82 + 36) = 0;
        }

        v83 = *(v21 + 144);
        if (v83 >= 1)
        {
          *(*(v21 + 136) + 40 * v83 - 38) = 16;
        }

        if (v44)
        {
          v84 = *(a1 + 31);
          if (v84 <= 7)
          {
            *(a1 + 31) = v84 + 1;
            *(a1 + 4 * v84 + 184) = v44;
            v83 = *(v21 + 144);
          }
        }

        if (*(v21 + 148) <= v83)
        {
          sub_18194C8AC(v21, 37, v28, v74, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v83 + 1;
          v85 = *(v21 + 136) + 40 * v83;
          *v85 = 37;
          *(v85 + 4) = v28;
          *(v85 + 8) = v74;
          *(v85 + 12) = 0;
          *(v85 + 28) = 0;
          *(v85 + 20) = 0;
          *(v85 + 36) = 0;
        }

        v86 = *(v21 + 144);
        if (*(*v21 + 103))
        {
          v87 = &byte_1EA831A58;
        }

        else
        {
          v87 = (*(v21 + 136) + 40 * v67);
        }

        *(v87 + 2) = v86;
        if (*(v21 + 148) <= v86)
        {
          sub_18194C8AC(v21, 122, v12, 0, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v86 + 1;
          v88 = *(v21 + 136) + 40 * v86;
          *v88 = 122;
          *(v88 + 4) = v12;
          *(v88 + 8) = 0u;
          *(v88 + 24) = 0u;
        }

        v89 = *(v21 + 144);
        if (*(v21 + 148) <= v89)
        {
          sub_18194C8AC(v21, 122, (v12 + 1), 0, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v89 + 1;
          v90 = *(v21 + 136) + 40 * v89;
          *v90 = 122;
          *(v90 + 4) = v62;
          *(v90 + 8) = 0u;
          *(v90 + 24) = 0u;
        }

        v91 = *(v21 + 144);
        if (*(v21 + 148) <= v91)
        {
          sub_18194C8AC(v21, 122, v28, 0, 0, v47, v48, v49);
        }

        else
        {
          *(v21 + 144) = v91 + 1;
          v92 = *(v21 + 136) + 40 * v91;
          *v92 = 122;
          *(v92 + 4) = v28;
          *(v92 + 8) = 0u;
          *(v92 + 24) = 0u;
        }

        return;
      }
    }

    v53 = *(a1 + 16);
    v54 = *(v53 + 24);
    v55 = ~v52;
    if (*(v54 + 72) + *(v54 + 76) < 0)
    {
      sub_18195CB84(v54, v53, v55);
    }

    else
    {
      *(*(v54 + 80) + 4 * v55) = *(v53 + 144);
    }

    goto LABEL_48;
  }
}

uint64_t sub_181962F5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 40);
  if (!*(v8 + 64))
  {
    *(a2 + 1) |= 0x40000000u;
  }

  if (*a2 != 157)
  {
    return 0;
  }

  if (*(**v8 + 197))
  {
    result = 0;
    *a2 = 122;
  }

  else
  {
    sub_181910730(*v8, "%s cannot use variables", a3, a4, a5, a6, a7, a8, *(v8 + 80));
    return 2;
  }

  return result;
}

uint64_t sub_181962FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[5];
  v11 = **v10;
  v42 = v11;
  if (!v10[9])
  {
    v16 = -1;
    v22 = *(a2 + 40);
    if (!v22)
    {
      return 0;
    }

    goto LABEL_25;
  }

  v12 = *(v11 + 40);
  v13 = __OFSUB__(v12, 1);
  v14 = (v12 - 1);
  if (v14 < 0 != v13)
  {
    v16 = v14;
    v22 = *(a2 + 40);
    if (v22)
    {
      goto LABEL_25;
    }

    return 0;
  }

  v15 = (*(v11 + 32) + 32 * v14);
  v16 = -1;
  while (1)
  {
    v17 = *v15;
    if (*v15)
    {
      for (i = v10[9]; ; ++i)
      {
        if (*v17 == *i)
        {
          if (!*v17)
          {
            v16 = v14;
LABEL_24:
            v22 = *(a2 + 40);
            if (v22)
            {
              goto LABEL_25;
            }

            return 0;
          }
        }

        else if (byte_181A20298[*v17] != byte_181A20298[*i])
        {
          break;
        }

        ++v17;
      }
    }

    if (!v14)
    {
      break;
    }

LABEL_12:
    v15 -= 4;
    v19 = v14 <= 0;
    LODWORD(v14) = v14 - 1;
    if (v19)
    {
      goto LABEL_24;
    }
  }

  v20 = "main";
  for (j = v10[9]; *v20 != *j; ++j)
  {
    if (byte_181A20298[*v20] != byte_181A20298[*j])
    {
      goto LABEL_12;
    }

LABEL_17:
    ++v20;
  }

  if (*v20)
  {
    goto LABEL_17;
  }

  v16 = 0;
  v22 = *(a2 + 40);
  if (!v22)
  {
    return 0;
  }

LABEL_25:
  if (*v22 < 1)
  {
LABEL_59:
    v38 = *(a2 + 104);
    if (v38 && *v38 >= 1)
    {
      v39 = 0;
      for (k = 8; !sub_1818AEE70(a1, *&v38[k]); k += 12)
      {
        ++v39;
        v38 = *(a2 + 104);
        if (v39 >= *v38)
        {
          return 0;
        }
      }

      return 2;
    }

    return 0;
  }

  v23 = 0;
  v24 = v22 + 2;
  while (2)
  {
    if (*(v10 + 64) || (v25 = *(v24 + 25), (v25 & 4) != 0))
    {
LABEL_55:
      v36 = &v22[18 * v23 + 2];
      if ((*(v36 + 25) & 0x800) == 0)
      {
        v37 = *(v36 + 56);
        if (v37)
        {
          if (sub_181959BA0((v10 + 1), v37))
          {
            return 2;
          }
        }
      }

      ++v23;
      v24 += 18;
      if (v23 >= *v22)
      {
        goto LABEL_59;
      }

      continue;
    }

    break;
  }

  v26 = *(v24 + 27);
  if ((v26 & 1) != 0 || (v27 = *(v24 + 8)) == 0)
  {
LABEL_54:
    *(v24 + 8) = v10[7];
    *(v24 + 25) = v25 | 0x100;
    *(v24 + 27) = v26 | 1;
    goto LABEL_55;
  }

  v28 = v42;
  v29 = *(v42 + 40);
  v13 = __OFSUB__(v29, 1);
  v30 = (v29 - 1);
  if (v30 < 0 != v13)
  {
    goto LABEL_52;
  }

  v31 = (*(v42 + 32) + 32 * v30);
  while (1)
  {
    v32 = *v31;
    if (*v31)
    {
      break;
    }

LABEL_41:
    if (!v30)
    {
      v34 = "main";
      for (m = *(v24 + 8); ; ++m)
      {
        if (*v34 == *m)
        {
          if (!*v34)
          {
            LODWORD(v30) = 0;
            goto LABEL_51;
          }
        }

        else if (byte_181A20298[*v34] != byte_181A20298[*m])
        {
          break;
        }

        ++v34;
      }
    }

    v31 -= 4;
    v19 = v30 <= 0;
    LODWORD(v30) = v30 - 1;
    if (v19)
    {
      LODWORD(v30) = -1;
      goto LABEL_51;
    }
  }

  v33 = *(v24 + 8);
  while (2)
  {
    if (*v32 != *v33)
    {
      if (byte_181A20298[*v32] != byte_181A20298[*v33])
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (*v32)
    {
LABEL_37:
      ++v32;
      ++v33;
      continue;
    }

    break;
  }

LABEL_51:
  v28 = v42;
LABEL_52:
  if (v16 == v30)
  {
    sub_181929C84(v28, v27);
    v25 = *(v24 + 25) | 0x400;
    *(v24 + 25) = v25;
    v26 = *(v24 + 27) | 2;
    *(v24 + 27) = v26;
    goto LABEL_54;
  }

  sub_181910730(*v10, "%s %T cannot reference objects in database %s", a3, a4, a5, a6, a7, a8, v10[10]);
  return 2;
}

uint64_t sub_181963324(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v38 = 0;
  v11 = *(a3 + 24);
  v12 = *(*a1 + 136);
  v34 = *a1;
  v35 = 0;
  v36 = 0;
  v37 = v12;
  if (!*(a3 + 80))
  {
    if (!*(a3 + 94))
    {
      goto LABEL_3;
    }

    v23 = 0;
    while (1)
    {
      v24 = *(*(v11 + 8) + 16 * *(*(v8 + 8) + 2 * v23));
      if (!v23)
      {
        goto LABEL_28;
      }

      v25 = v38;
      if (v38 + 2 < v36)
      {
        break;
      }

      sub_181906814(&v34, ", ", 2u);
      v26 = *v11;
      if (!*v11)
      {
        goto LABEL_35;
      }

LABEL_31:
      v27 = strlen(v26);
      a3 = v27 & 0x3FFFFFFF;
      if ((v27 & 0x3FFFFFFF) != 0)
      {
        v28 = v38;
        if (v38 + a3 >= v36)
        {
          sub_181906814(&v34, v26, a3);
        }

        else
        {
          LODWORD(v38) = v38 + a3;
          memcpy(v35 + v28, v26, v27 & 0x3FFFFFFF);
        }
      }

LABEL_35:
      v29 = v38;
      if (v38 + 1 >= v36)
      {
        sub_181906814(&v34, ".", 1u);
        if (v24)
        {
LABEL_39:
          v30 = strlen(v24);
          a3 = v30 & 0x3FFFFFFF;
          if ((v30 & 0x3FFFFFFF) != 0)
          {
            v31 = v38;
            if (v38 + a3 < v36)
            {
              LODWORD(v38) = v38 + a3;
              memcpy(v35 + v31, v24, v30 & 0x3FFFFFFF);
            }

            else
            {
              sub_181906814(&v34, v24, a3);
            }
          }
        }
      }

      else
      {
        LODWORD(v38) = v38 + 1;
        *(v35 + v29) = 46;
        if (v24)
        {
          goto LABEL_39;
        }
      }

      if (++v23 >= *(v8 + 94))
      {
        goto LABEL_3;
      }
    }

    LODWORD(v38) = v38 + 2;
    *(v35 + v25) = 8236;
LABEL_28:
    v26 = *v11;
    if (!*v11)
    {
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  sqlite3_str_appendf(&v34, "index '%q'", *a3);
LABEL_3:
  if (v35 && (*(v35 + v38) = 0, v37) && (v38 & 0x40000000000) == 0)
  {
    v13 = sub_18192A12C(&v34);
  }

  else
  {
    v13 = v35;
  }

  if ((*(v8 + 99) & 3) == 2)
  {
    v14 = 1555;
  }

  else
  {
    v14 = 2067;
  }

  v15 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v19 = v15;
  if (a2 == 2)
  {
    v20 = a1[19];
    if (!v20)
    {
      v20 = a1;
    }

    *(v20 + 33) = 1;
  }

  result = *(v15 + 144);
  if (*(v19 + 148) <= result)
  {
    result = sub_18194C8AC(v19, 70, v14, a2, 0, v16, v17, v18);
  }

  else
  {
    *(v19 + 144) = result + 1;
    v22 = *(v19 + 136) + 40 * result;
    *v22 = 70;
    *(v22 + 4) = v14;
    *(v22 + 8) = a2;
    *(v22 + 12) = 0;
    *(v22 + 28) = 0;
    *(v22 + 20) = 0;
    *(v22 + 36) = 0;
  }

  if (*(*v19 + 103))
  {
    if (v13)
    {
      result = sub_181939EC8(*v19, v13);
    }
  }

  else
  {
    if ((result & 0x80000000) != 0)
    {
      result = (*(v19 + 144) - 1);
    }

    v32 = *(v19 + 136) + 40 * result;
    if (*(v32 + 1))
    {
      result = sub_18194CB90(v19, v32, v13, 0xFFFFFFFA);
    }

    else if (v13)
    {
      *(v32 + 16) = v13;
      *(v32 + 1) = -6;
    }
  }

  v33 = *(v19 + 144);
  if (v33 >= 1)
  {
    *(*(v19 + 136) + 40 * v33 - 38) = 2;
  }

  return result;
}

_DWORD *sub_181963670(_DWORD *result, _BYTE *a2)
{
  v2 = *result;
  v3 = *(*result + 40);
  if (v3 >= 1)
  {
    v5 = result;
    for (i = 0; i < v3; ++i)
    {
      v8 = *(v2 + 32) + 32 * i;
      if (*(v8 + 8))
      {
        if (a2)
        {
          v9 = *v8;
          for (j = a2; ; ++j)
          {
            if (*j == *v9)
            {
              if (!*j)
              {
                break;
              }
            }

            else if (byte_181A20298[*j] != byte_181A20298[*v9])
            {
              goto LABEL_7;
            }

            ++v9;
          }
        }

        if (*(v5 + 19))
        {
          result = *(v5 + 19);
        }

        else
        {
          result = v5;
        }

        v7 = result[29];
        if ((v7 & (1 << i)) == 0)
        {
          result[29] = v7 | (1 << i);
          if (i == 1)
          {
            result = sub_1819108F4(result);
            v3 = *(v2 + 40);
          }
        }
      }

LABEL_7:
      ;
    }
  }

  return result;
}

void sub_18196375C(uint64_t *a1, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(*(*a1 + 32) + 32 * a2);
  sqlite3_snprintf(24, v28, "sqlite_stat%d", 1);
  if (sub_181917F20(*a1, v28, v3))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v4, v5, v6, v7, v8, v9, v3);
  }

  sqlite3_snprintf(24, v28, "sqlite_stat%d", 2);
  if (sub_181917F20(*a1, v28, v3))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v10, v11, v12, v13, v14, v15, v3);
  }

  sqlite3_snprintf(24, v28, "sqlite_stat%d", 3);
  if (sub_181917F20(*a1, v28, v3))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v16, v17, v18, v19, v20, v21, v3);
  }

  sqlite3_snprintf(24, v28, "sqlite_stat%d", 4);
  if (sub_181917F20(*a1, v28, v3))
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.%s WHERE %s=%Q", v22, v23, v24, v25, v26, v27, v3);
  }
}

uint64_t sub_181963908(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *result;
  if ((*(*result + 49) & 0x40) == 0 || *(a3 + 63))
  {
    return result;
  }

  v9 = result;
  result = sub_1818E7DFC(result, a2, a3, a4, a5, a6, a7, a8);
  v15 = a3;
  v16 = result;
  v17 = v15[12];
  v18 = **v15;
  if (v18)
  {
    v19 = 0;
    v20 = (*v15 + 1);
    do
    {
      v19 = -1640531535 * (v19 + (v18 & 0xDF));
      v21 = *v20++;
      v18 = v21;
    }

    while (v21);
  }

  else
  {
    v19 = 0;
  }

  v22 = v17 + 80;
  v23 = *(v17 + 12);
  v24 = a2;
  if (v23)
  {
    v22 = (v23 + 16 * (v19 % *v22));
    v25 = *v22;
    if (*v22)
    {
LABEL_11:
      v26 = (v22 + 2);
      do
      {
        v26 = *v26;
        if (v19 == *(v26 + 8))
        {
          v27 = v26[3];
          for (i = *v15; ; ++i)
          {
            result = *i;
            if (*v27 == result)
            {
              if (!*v27)
              {
                goto LABEL_22;
              }
            }

            else
            {
              result = byte_181A20298[*i];
              if (byte_181A20298[*v27] != result)
              {
                break;
              }
            }

            ++v27;
          }
        }

        --v25;
      }

      while (v25);
      if (!qword_1EA831A40)
      {
        goto LABEL_47;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v25 = *(v17 + 21);
    if (v25)
    {
      goto LABEL_11;
    }
  }

  v26 = &qword_1EA831A30;
LABEL_22:
  if (!v26[2])
  {
LABEL_47:
    v53 = v15[9];
    if (!v53)
    {
      return result;
    }

    while (!v53[44] && (*(v8 + 50) & 8) == 0)
    {
      v53 = *(v53 + 1);
      if (!v53)
      {
        return result;
      }
    }

    v29 = (*(v9 + 72) - 1);
    *(v9 + 72) = v29;
    v54 = *(v16 + 144);
    if (*(v16 + 148) <= v54)
    {
      sub_18194C8AC(v16, 49, 1uLL, v29, 0, v12, v13, v14);
      v24 = a2;
    }

    else
    {
      *(v16 + 144) = v54 + 1;
      v55 = *(v16 + 136) + 40 * v54;
      *v55 = 0x100000031;
      *(v55 + 8) = v29;
      *(v55 + 12) = 0;
      *(v55 + 28) = 0;
      *(v55 + 20) = 0;
      *(v55 + 36) = 0;
    }

    goto LABEL_24;
  }

LABEL_23:
  LODWORD(v29) = 0;
LABEL_24:
  *(v9 + 42) = 1;
  v30 = sub_1818CB478(v8, v24, 0);
  result = sub_1818EA08C(v9, v30, 0, 0, 0, v31, v32, v33);
  *(v9 + 42) = 0;
  if ((*(v8 + 50) & 8) == 0)
  {
    v40 = *(v16 + 144);
    v41 = (v40 + 2);
    if (*(v16 + 148) <= v40)
    {
      sub_18194C8AC(v16, 49, 0, v41, 0, v37, v38, v39);
    }

    else
    {
      *(v16 + 144) = v40 + 1;
      v42 = *(v16 + 136) + 40 * v40;
      *v42 = 49;
      *(v42 + 8) = v41;
      *(v42 + 12) = 0;
      *(v42 + 28) = 0;
      *(v42 + 20) = 0;
      *(v42 + 36) = 0;
    }

    v43 = sub_1818E7DFC(v9, v34, v35, v41, v36, v37, v38, v39);
    v47 = v43;
    v48 = *(v9 + 152);
    if (!v48)
    {
      v48 = v9;
    }

    *(v48 + 33) = 1;
    result = *(v43 + 144);
    if (*(v47 + 148) <= result)
    {
      result = sub_18194C8AC(v47, 70, 0x313uLL, 2, 0, v44, v45, v46);
    }

    else
    {
      *(v47 + 144) = result + 1;
      v49 = *(v47 + 136) + 40 * result;
      *v49 = 70;
      *(v49 + 4) = 0x200000313;
      *(v49 + 12) = 0;
      *(v49 + 28) = 0;
      *(v49 + 20) = 0;
      *(v49 + 36) = 0;
    }

    if (!*(*v47 + 103))
    {
      if ((result & 0x80000000) != 0)
      {
        result = (*(v47 + 144) - 1);
      }

      v50 = *(v47 + 136) + 40 * result;
      if (*(v50 + 1))
      {
        result = sub_18194CB90(v47, v50, 0, 0xFFFFFFFF);
      }
    }

    v51 = *(v47 + 144);
    if (v51 >= 1)
    {
      *(*(v47 + 136) + 40 * v51 - 38) = 4;
    }
  }

  if (v29)
  {
    result = *(v16 + 24);
    v52 = ~v29;
    if (*(result + 72) + *(result + 76) < 0)
    {

      return sub_18195CB84(result, v16, v52);
    }

    else
    {
      *(*(result + 80) + 4 * v52) = *(v16 + 144);
    }
  }

  return result;
}

uint64_t sub_181963CC0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *a1;
  v13 = *(*a1 + 32);
  v20 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (a1[19])
  {
    v21 = a1[19];
  }

  else
  {
    v21 = a1;
  }

  v22 = *(v21 + 116);
  v23 = 1 << a3;
  if ((v22 & (1 << a3)) == 0)
  {
    *(v21 + 116) = v22 | v23;
    if (a3 == 1)
    {
      sub_1819108F4(v21);
    }
  }

  *(v21 + 112) |= v23;
  *(v21 + 32) |= 1u;
  if (*(a2 + 63) == 1)
  {
    v24 = *(v20 + 144);
    if (*(v20 + 148) <= v24)
    {
      sub_18194C8AC(v20, 170, 0, 0, 0, v17, v18, v19);
    }

    else
    {
      *(v20 + 144) = v24 + 1;
      v25 = *(v20 + 136) + 40 * v24;
      *v25 = -86;
      *(v25 + 1) = 0u;
      *(v25 + 17) = 0u;
      *(v25 + 32) = 0;
    }
  }

  v26 = a3;
  v27 = *(*(*a1 + 32) + 56);
  v28 = *(a2 + 88);
  v29 = *(v27 + 64);
  if (!v29)
  {
    v31 = *(a2 + 88);
    goto LABEL_29;
  }

  v30 = *(a2 + 96);
  while (2)
  {
    while (1)
    {
      v31 = v29[2];
      if (*(v31 + 48) != v30)
      {
        break;
      }

      v32 = *(v31 + 8);
      if (!v32)
      {
        break;
      }

      for (i = *a2; *v32 != *i; ++i)
      {
        if (byte_181A20298[*v32] != byte_181A20298[*i])
        {
          goto LABEL_15;
        }

LABEL_22:
        ++v32;
      }

      if (*v32)
      {
        goto LABEL_22;
      }

      if (v30 == v27 && !*(v31 + 18))
      {
        break;
      }

LABEL_17:
      *(v31 + 64) = v28;
      v28 = v31;
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    if (*(v31 + 16) == 151)
    {
      *(v31 + 8) = *a2;
      *(v31 + 48) = v30;
      goto LABEL_17;
    }

    v31 = v28;
    v29 = *v29;
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_29:
  for (j = (v13 + 32 * a3); v31; v31 = *(v31 + 64))
  {
    sub_18196418C(a1, v31, v14, v15, v16, v17, v18, v19);
  }

  if ((*(a2 + 48) & 8) != 0)
  {
    sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_sequence WHERE name=%Q", v14, v15, v16, v17, v18, v19, *j);
  }

  sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE tbl_name=%Q and type!='trigger'", v14, v15, v16, v17, v18, v19, *j);
  v40 = *(a2 + 63);
  if (v8)
  {
    if (v40 != 1)
    {
      goto LABEL_67;
    }

LABEL_57:
    v51 = *a2;
    v52 = *(v20 + 144);
    if (*(v20 + 148) <= v52)
    {
      v52 = sub_18194C8AC(v20, 172, a3, 0, 0, v37, v38, v39);
    }

    else
    {
      *(v20 + 144) = v52 + 1;
      v53 = *(v20 + 136) + 40 * v52;
      *v53 = 172;
      *(v53 + 4) = a3;
      *(v53 + 8) = 0u;
      *(v53 + 24) = 0u;
    }

    if (!*(*v20 + 103))
    {
      if (v52 < 0)
      {
        v52 = *(v20 + 144) - 1;
      }

      sub_18194CB90(v20, *(v20 + 136) + 40 * v52, v51, 0);
    }

    v54 = a1[19];
    if (!v54)
    {
      v54 = a1;
    }

    *(v54 + 33) = 1;
  }

  else
  {
    if (v40 == 1)
    {
      goto LABEL_57;
    }

    LODWORD(v41) = 0;
    v42 = *(a2 + 40);
    while (1)
    {
      v44 = v41 - 1;
      if (v41 - 1 >= v42)
      {
        v41 = v42;
      }

      else
      {
        v41 = 0;
      }

      for (k = *(a2 + 16); k; k = *(k + 40))
      {
        v46 = *(k + 88);
        if (v46 <= v41)
        {
          v47 = v41;
        }

        else
        {
          v47 = *(k + 88);
        }

        if (v44 >= v46)
        {
          v41 = v47;
        }

        else
        {
          v41 = v41;
        }
      }

      if (!v41)
      {
        break;
      }

      v48 = *(a2 + 96);
      if (v48)
      {
        v49 = (*(*a1 + 32) + 24);
        LODWORD(v43) = -1;
        do
        {
          v50 = *v49;
          v49 += 4;
          v43 = (v43 + 1);
        }

        while (v50 != v48);
      }

      else
      {
        v43 = 4294934528;
      }

      sub_181964544(a1, v41, v43, v35, v36, v37, v38, v39);
    }

    if (*(a2 + 63) == 1)
    {
      goto LABEL_57;
    }
  }

LABEL_67:
  v55 = *a2;
  v56 = *(v20 + 144);
  if (*(v20 + 148) <= v56)
  {
    v56 = sub_18194C8AC(v20, 151, a3, 0, 0, v37, v38, v39);
  }

  else
  {
    *(v20 + 144) = v56 + 1;
    v57 = *(v20 + 136) + 40 * v56;
    *v57 = 151;
    *(v57 + 4) = a3;
    *(v57 + 8) = 0u;
    *(v57 + 24) = 0u;
  }

  if (!*(*v20 + 103))
  {
    if (v56 < 0)
    {
      v56 = *(v20 + 144) - 1;
    }

    sub_18194CB90(v20, *(v20 + 136) + 40 * v56, v55, 0);
  }

  result = a1[2];
  v59 = (**(*(*a1 + 32) + 32 * a3 + 24) + 1);
  v60 = *(result + 144);
  if (*(result + 148) <= v60)
  {
    result = sub_18194C8AC(result, 100, a3, 1, v59, v37, v38, v39);
  }

  else
  {
    *(result + 144) = v60 + 1;
    v61 = *(result + 136) + 40 * v60;
    *v61 = 100;
    *(v61 + 4) = a3;
    *(v61 + 8) = 1;
    *(v61 + 12) = v59;
    *(v61 + 24) = 0;
    *(v61 + 32) = 0;
    *(v61 + 16) = 0;
  }

  v62 = *(v12[4] + 32 * a3 + 24);
  v63 = *(v62 + 114);
  if ((v63 & 2) != 0)
  {
    v64 = *(v62 + 16);
    if (v64)
    {
      do
      {
        v65 = v64[2];
        if (*(v65 + 63) == 2)
        {
          result = sub_18194E388(v12, v65);
        }

        v64 = *v64;
      }

      while (v64);
      v62 = *(v12[4] + 32 * v26 + 24);
      v63 = *(v62 + 114);
    }

    *(v62 + 114) = v63 & 0xFFFD;
  }

  return result;
}

void sub_18196418C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = *a1;
  v11 = *(a2 + 40);
  if (v11)
  {
    v12 = (*(v10 + 32) + 24);
    LODWORD(v13) = -1;
    do
    {
      v14 = *v12;
      v12 += 4;
      v13 = (v13 + 1);
    }

    while (v14 != v11);
  }

  else
  {
    v13 = 4294934528;
  }

  v15 = *(a2 + 48);
  v16 = *(a2 + 8);
  v17 = *v16;
  if (*v16)
  {
    v18 = 0;
    v19 = v16 + 1;
    do
    {
      v18 = -1640531535 * (v18 + (v17 & 0xDF));
      v20 = *v19++;
      v17 = v20;
    }

    while (v20);
  }

  else
  {
    v18 = 0;
  }

  v21 = (v15 + 8);
  v22 = *(v15 + 24);
  if (v22)
  {
    v21 = (v22 + 16 * (v18 % *v21));
    v23 = *v21;
    if (*v21)
    {
      goto LABEL_13;
    }

LABEL_24:
    v27 = qword_1EA831A40;
    if (!qword_1EA831A40)
    {
      goto LABEL_44;
    }

    goto LABEL_25;
  }

  v23 = *(v15 + 12);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_13:
  v24 = v21 + 2;
  while (1)
  {
    v24 = *v24;
    if (v18 == v24[8])
    {
      break;
    }

LABEL_14:
    if (!--v23)
    {
      v27 = qword_1EA831A40;
      if (!qword_1EA831A40)
      {
        goto LABEL_44;
      }

      goto LABEL_25;
    }
  }

  v25 = *(v24 + 3);
  for (i = *(a2 + 8); *v25 != *i; ++i)
  {
    if (byte_181A20298[*v25] != byte_181A20298[*i])
    {
      goto LABEL_14;
    }

LABEL_18:
    ++v25;
  }

  if (*v25)
  {
    goto LABEL_18;
  }

  v27 = *(v24 + 2);
  if (!v27)
  {
    goto LABEL_44;
  }

LABEL_25:
  if (v13 == 1)
  {
    v28 = "sqlite_temp_master";
  }

  else
  {
    v28 = "sqlite_master";
  }

  if (v13 == 1)
  {
    a2 = 14;
  }

  else
  {
    a2 = 16;
  }

  v29 = *(v10 + 528);
  if (!v29)
  {
    goto LABEL_44;
  }

  v30 = *(*(v10 + 32) + 32 * v13);
  if (!*(v10 + 197) && !*(a1 + 302))
  {
    v33 = v29(*(v10 + 536), a2, *v8, *v27, *(*(v10 + 32) + 32 * v13), a1[46]);
    if (v33 == 1)
    {
      goto LABEL_42;
    }

    if ((v33 & 0xFFFFFFFD) != 0)
    {
      goto LABEL_59;
    }

    if (v33)
    {
      return;
    }

    v31 = *a1;
    v29 = *(*a1 + 528);
    if (v29)
    {
      goto LABEL_35;
    }

LABEL_44:
    v36 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
    if (v36)
    {
      v43 = v36;
      v44 = 32 * v13;
      sub_1818F73B0(a1, "DELETE FROM %Q.sqlite_master WHERE name=%Q AND type='trigger'", v37, v38, v39, v40, v41, v42, *(*(v10 + 32) + v44));
      v48 = a1[2];
      v49 = (**(*(*a1 + 32) + v44 + 24) + 1);
      v50 = *(v48 + 144);
      if (*(v48 + 148) <= v50)
      {
        sub_18194C8AC(v48, 100, v13, 1, v49, v45, v46, v47);
      }

      else
      {
        *(v48 + 144) = v50 + 1;
        v51 = *(v48 + 136) + 40 * v50;
        *v51 = 100;
        *(v51 + 4) = v13;
        *(v51 + 8) = 1;
        *(v51 + 12) = v49;
        *(v51 + 24) = 0;
        *(v51 + 32) = 0;
        *(v51 + 16) = 0;
      }

      v52 = *v8;
      v53 = *(v43 + 144);
      if (*(v43 + 148) <= v53)
      {
        v53 = sub_18194C8AC(v43, 153, v13, 0, 0, v45, v46, v47);
      }

      else
      {
        *(v43 + 144) = v53 + 1;
        v54 = *(v43 + 136) + 40 * v53;
        *v54 = 153;
        *(v54 + 4) = v13;
        *(v54 + 8) = 0u;
        *(v54 + 24) = 0u;
      }

      if (!*(*v43 + 103))
      {
        if (v53 < 0)
        {
          v53 = *(v43 + 144) - 1;
        }

        v55 = *(v43 + 136) + 40 * v53;

        sub_18194CB90(v43, v55, v52, 0);
      }
    }

    return;
  }

  v31 = *a1;
LABEL_35:
  if (*(v31 + 197) || *(a1 + 302))
  {
    goto LABEL_44;
  }

  v32 = v29(*(v31 + 536), 9, v28, 0, v30, a1[46]);
  if (v32 == 1)
  {
LABEL_42:
    v34 = 23;
    v35 = "not authorized";
LABEL_60:
    sub_181910730(a1, v35, a3, a4, a5, a6, a7, a8, v56);
    *(a1 + 6) = v34;
    return;
  }

  if ((v32 & 0xFFFFFFFD) != 0)
  {
LABEL_59:
    v34 = 1;
    v35 = "authorizer malfunction";
    goto LABEL_60;
  }

  if (!v32)
  {
    goto LABEL_44;
  }
}

void sub_181964544(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*(a1 + 31))
  {
    v18 = *(a1 + 31) - 1;
    *(a1 + 31) = v18;
    v19 = *(a1 + 4 * v18 + 184);
    if (a2 > 1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v19 = (*(a1 + 60) + 1);
  *(a1 + 60) = v19;
  if (a2 <= 1)
  {
LABEL_3:
    v20 = v11;
    sub_181910730(a1, "corrupt schema", v12, v13, v14, v15, v16, v17, v25);
    v11 = v20;
  }

LABEL_4:
  v21 = *(v11 + 144);
  if (*(v11 + 148) <= v21)
  {
    sub_18194C8AC(v11, 144, a2, v19, a3, v15, v16, v17);
  }

  else
  {
    *(v11 + 144) = v21 + 1;
    v22 = *(v11 + 136) + 40 * v21;
    *v22 = 144;
    *(v22 + 4) = a2;
    *(v22 + 8) = v19;
    *(v22 + 12) = a3;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 16) = 0;
  }

  v23 = *(a1 + 152);
  if (!v23)
  {
    v23 = a1;
  }

  *(v23 + 33) = 1;
  sub_1818F73B0(a1, "UPDATE %Q.sqlite_master SET rootpage=%d WHERE #%d AND rootpage=#%d", v12, v13, v14, v15, v16, v17, *(*(*a1 + 32) + 32 * a3));
  if (v19)
  {
    v24 = *(a1 + 31);
    if (v24 <= 7)
    {
      *(a1 + 31) = v24 + 1;
      *(a1 + 4 * v24 + 184) = v19;
    }
  }
}

void *sub_181964684(void *a1, void *a2)
{
  if (a2)
  {
    return sub_18194E5B8(a1, a2);
  }

  return a1;
}

uint64_t sub_181964690(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 2;
  while (1)
  {
    v6 = &v5[18 * v4];
    if (v6 != a1)
    {
      if (*(a1 + 16) == *(v6 + 2))
      {
        v8 = *(a1 + 8);
        v9 = *(v6 + 1);
        if (v8)
        {
          if (v9)
          {
            while (1)
            {
              if (*v8 == *v9)
              {
                if (!*v8)
                {
                  return 1;
                }
              }

              else if (byte_181A20298[*v8] != byte_181A20298[*v9])
              {
                break;
              }

              ++v8;
              ++v9;
            }
          }
        }

        else if (!v9)
        {
          return 1;
        }
      }

      if ((*(v6 + 25) & 4) != 0)
      {
        v7 = **(v6 + 8);
        if ((*(v7 + 5) & 8) != 0)
        {
          if (sub_181964690(a1, *(v7 + 40)))
          {
            return 1;
          }
        }
      }
    }

    if (++v4 == v2)
    {
      return 0;
    }
  }
}

_BYTE *sub_18196478C(_BYTE *result, uint64_t a2)
{
  if (result[43])
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 2);
  v4 = *result;
  do
  {
    v5 = a2;
    a2 = *(a2 + 80);
  }

  while (a2);
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);
  result[43] |= 1u;
  v8 = *(v4 + 48);
  result = sub_1818BAF94(v3, *v7);
  if (*v7 <= 0)
  {
    return result;
  }

  v35 = v6;
  v36 = v2;
  v15 = 0;
  v16 = 0;
  v37 = v8;
  v17 = v8 & 0x44;
  v18 = v7 + 4;
  do
  {
    v20 = *(v18 - 1);
    v21 = *v18;
    if (*v18 && (*(v18 + 9) & 3) == 0)
    {
      if (!*(*v3 + 103))
      {
        v25 = v3[19] + v15;
        v24 = *v18;
        goto LABEL_22;
      }
    }

    else if (v17 && *v20 == 168)
    {
      v22 = *(v20 + 12);
      v23 = *(v20 + 9);
      if ((v22 & 0x80000000) != 0 && (v22 = *(v23 + 52), (v22 & 0x80000000) != 0))
      {
        v24 = "rowid";
        if ((v37 & 4) != 0)
        {
LABEL_27:
          result = sub_1818A8BAC(v4, "%s.%s", v9, v10, v11, v12, v13, v14, *v23);
          if (!*(*v3 + 103))
          {
            v24 = result;
            v28 = sub_181916CE4;
            v25 = v3[19] + v15;
            goto LABEL_6;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v24 = *(*(v23 + 8) + 16 * v22);
        if ((v37 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      if (!*(*v3 + 103))
      {
        v25 = v3[19] + v15;
LABEL_22:
        v28 = -1;
LABEL_6:
        result = sub_1818900D0(v25, v24, -1, 1u, v28);
      }
    }

    else
    {
      if (v21)
      {
        v26 = strlen(*v18);
        result = sub_181929E8C(v4, v26 + 1, 354097263);
        v27 = result;
        if (result)
        {
          result = memcpy(result, v21, v26 + 1);
        }
      }

      else
      {
        result = sub_1818A8BAC(v4, "column%d", v9, v10, v11, v12, v13, v14, v16 + 1);
        v27 = result;
      }

      if (!*(*v3 + 103))
      {
        v28 = sub_181916CE4;
        v25 = v3[19] + v15;
        v24 = v27;
        goto LABEL_6;
      }
    }

LABEL_7:
    ++v16;
    v19 = *v7;
    v18 += 6;
    v15 += 64;
  }

  while (v16 < v19);
  v29 = *(v36 + 2);
  v41[0] = v36;
  v41[1] = v35;
  if (v19 >= 1)
  {
    v30 = 0;
    v31 = 0;
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v32 = 2;
    do
    {
      v33 = *&v7[v32];
      v39 = 0;
      __s = 0;
      v38 = 0;
      result = sub_181961778(v41, v33, &__s, &v39, &v38);
      if (!*(*v29 + 103))
      {
        v34 = result;
        result = sub_1818900D0(*(v29 + 152) + (*(v29 + 262) << 7) + v30, __s, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
        if (!*(*v29 + 103))
        {
          result = sub_1818900D0(*(v29 + 152) + 192 * *(v29 + 262) + v30, v39, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
          if (!*(*v29 + 103))
          {
            result = sub_1818900D0(*(v29 + 152) + (*(v29 + 262) << 8) + v30, v38, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
            if (!*(*v29 + 103))
            {
              result = sub_1818900D0(*(v29 + 152) + (*(v29 + 262) << 6) + v30, v34, -1, 1u, 0xFFFFFFFFFFFFFFFFLL);
            }
          }
        }
      }

      ++v31;
      v30 += 64;
      v32 += 6;
    }

    while (v31 < *v7);
  }

  return result;
}

uint64_t sub_181964B00(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    do
    {
      v6 = *(v5 + 1);
      if ((a2 & 0x80000000) != 0)
      {
        v6 &= 0xFFFFFFFC;
      }

      else
      {
        if ((v6 & 1) == 0 || *(v5 + 14) != a2)
        {
          goto LABEL_10;
        }

        v6 = v6 & 0xFFFFFFFC | 2;
      }

      *(v5 + 1) = v6;
LABEL_10:
      v7 = *v5;
      if (v7 == 172)
      {
        v8 = *(v5 + 4);
        if (v8 && *v8 >= 1)
        {
          v9 = 0;
          v10 = 2;
          do
          {
            sub_181964B00(*&v8[v10], a2, a3);
            ++v9;
            v8 = *(v5 + 4);
            v10 += 6;
          }

          while (v9 < *v8);
        }
      }

      else if (v7 == 168 && !a3 && *(v5 + 11) == a2)
      {
        *(v5 + 1) = v6 & 0xFFDFFFFF;
      }

      result = sub_181964B00(*(v5 + 2), a2, a3);
      v5 = *(v5 + 3);
    }

    while (v5);
  }

  return result;
}

uint64_t sub_181964C00(void *a1, uint64_t a2)
{
  v4 = 0;
  v15 = 0;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v5 = *a1 + 103;
  v13[0] = a1;
  v13[1] = v5;
  do
  {
    while (1)
    {
      v14 = 0;
      v16 = 0;
      LODWORD(v15) = 0;
      v6 = *(a2 + 40);
      if (v6 && *v6 >= 1 && (*(v6 + 32) & 0x40) != 0)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      HIDWORD(v15) = v7;
      result = sub_18196A1C4(v13, *(a2 + 48));
      if (v14)
      {
        break;
      }

      if (!HIDWORD(v14))
      {
        return result;
      }
    }

    *&v10 = a1;
    *(&v10 + 1) = sub_18196A30C;
    *&v11 = sub_181961BBC;
    *(&v11 + 1) = 0;
    *&v12 = 0;
    *(&v12 + 1) = v13;
    v9 = *(a2 + 48);
    if (v9)
    {
      result = sub_181959BA0(&v10, v9);
    }

    if (v16)
    {
      result = sub_181929C84(*v13[0], v16);
    }

    v4 += HIDWORD(v14);
  }

  while (HIDWORD(v14));
  return result;
}

uint64_t sub_181964D08(uint64_t *a1, uint64_t a2)
{
  if ((*(a2 + 4) & 8) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 32);
  if (*v3 != 1)
  {
    return 0;
  }

  if (*(a2 + 48))
  {
    return 0;
  }

  if (*(a2 + 64))
  {
    return 0;
  }

  if (*(a2 + 56))
  {
    return 0;
  }

  if (*(a2 + 72))
  {
    return 0;
  }

  v4 = *(v3 + 8);
  if (*v4 != 169)
  {
    return 0;
  }

  v5 = *(v4 + 1);
  if (!v5)
  {
    return 0;
  }

  for (i = "count"; *v5 != *i; ++i)
  {
    if (byte_181A20298[*v5] != byte_181A20298[*i])
    {
      return 0;
    }

LABEL_12:
    ++v5;
  }

  if (*v5)
  {
    goto LABEL_12;
  }

  if (!*(v4 + 4))
  {
    v7 = *(a2 + 40);
    if (*v7 == 1 && (v4[7] & 1) == 0)
    {
      v22 = v4;
      if ((*(v7 + 33) & 4) != 0)
      {
        v9 = *(v7 + 72);
        v10 = *v9;
        if (*(*v9 + 80))
        {
          if ((*(v10 + 7) & 4) == 0)
          {
            v11 = *v9;
            while ((*v11 == 136 || !*(v11 + 10)) && !*(v11 + 6) && !*(v11 + 12) && (v11[4] & 9) == 0)
            {
              v11 = *(v11 + 10);
              if (!v11)
              {
                v12 = *a1;
                sub_181929C84(*a1, v9);
                *(v7 + 72) = 0;
                *(v7 + 33) &= ~4u;
                sub_1818BB5B0(v12, *(a2 + 40));
                *(a2 + 40) = sub_18190C56C(*a1, 0x50uLL, 0x103204056E3F560);
                if (v10)
                {
                  v13 = 0;
                  do
                  {
                    v14 = *(v10 + 80);
                    *(v10 + 80) = 0;
                    *(v10 + 88) = 0;
                    *(v10 + 4) = *(v10 + 4) & 0xFFFFFEF7 | 8;
                    *(v10 + 2) = 0;
                    sub_18195B158(a1, sub_181964684, *(v10 + 32));
                    v15 = v22;
                    if (v14)
                    {
                      v15 = sub_1818C7FEC(v12, v22, 0, 0);
                    }

                    *(v10 + 32) = sub_18197FD9C(*a1, v15);
                    v16 = sub_18194F098(a1, 139, 0, 0);
                    sub_181951E94(a1, v16, v10, v17, v18, v19, v20, v21);
                    if (v13)
                    {
                      v16 = sub_18194F098(a1, 107, v16, v13);
                    }

                    v13 = v16;
                    v10 = v14;
                  }

                  while (v14);
                }

                else
                {
                  v16 = 0;
                }

                *(*(a2 + 32) + 8) = v16;
                *(a2 + 4) &= ~8u;
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181964FA4(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v8 = a2;
  if ((*(a2 + 1) & 0x2002000) != 0)
  {
    return 0;
  }

  v9 = a4 + 72 * a5;
  if ((*(v9 + 32) & 0x50) != 0)
  {
    return 0;
  }

  v11 = a3;
  if (*(a2 + 10))
  {
    v13 = 0;
    v14 = a2;
    while (1)
    {
      v15 = *v14;
      if (v15 == 139)
      {
        v16 = v13;
      }

      else
      {
        v16 = 1;
      }

      if (v15 != 136)
      {
        v13 = v16;
      }

      if (*(v14 + 14))
      {
        return 0;
      }

      v14 = *(v14 + 10);
      if (!v14)
      {
        v17 = a4;
        v18 = a5;
        if (!v13)
        {
          goto LABEL_26;
        }

        v19 = a2;
        while (1)
        {
          v20 = *(v19 + 4);
          if (*v20 >= 1)
          {
            break;
          }

LABEL_17:
          v19 = *(v19 + 10);
          if (!v19)
          {
            goto LABEL_26;
          }
        }

        v21 = 0;
        v22 = 2;
        while (1)
        {
          v23 = sub_1818B4720(a1, *&v20[v22], a3, a4, a5, a6, a7, a8);
          if (v23)
          {
            if (*(v23 + 24) != sub_1818D0EC0)
            {
              return 0;
            }
          }

          ++v21;
          v22 += 6;
          if (v21 >= *v20)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

  v17 = a4;
  v18 = a5;
  v24 = *(a2 + 14);
  if (v24)
  {
    if (!*(v24 + 16))
    {
      return 0;
    }
  }

LABEL_26:
  if (*(v8 + 12))
  {
    return 0;
  }

  if (*v11 == 44)
  {
    LODWORD(v25) = 0;
    do
    {
      v25 = sub_181964FA4(a1, v8, *(v11 + 24), v17, v18) + v25;
      v11 = *(v11 + 16);
    }

    while (*v11 == 44);
  }

  else
  {
    v25 = 0;
  }

  if (!sub_18196A6E4(v11, v17, v18, 1))
  {
    return v25;
  }

  *(v8 + 1) |= 0x1000000u;
  do
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v27 = sub_1818C7FEC(*a1, v11, 0, 0);
    sub_181964B00(v27, 0xFFFFFFFFLL, 1);
    v40 = a1;
    v41 = *(v9 + 36);
    v42 = v41;
    LODWORD(v43) = 0;
    v44 = *(v8 + 4);
    v34 = v8;
    do
    {
      v35 = v34;
      v34 = *(v34 + 10);
    }

    while (v34);
    v45 = *(v35 + 4);
    v36 = sub_1818EC4E8(&v40, v27, v28, v29, v30, v31, v32, v33);
    v37 = v36;
    v38 = *(v8 + 14);
    if (v38)
    {
      v39 = *(v38 + 16);
      v46[3] = 0;
      v47 = 0x100000000;
      v46[1] = sub_18196A808;
      v46[2] = 0;
      v48 = v39;
      v46[0] = a1;
      if (v36)
      {
        sub_181959BA0(v46, v36);
        if (!WORD2(v47))
        {
          sub_1819439E0(*a1, v37);
          return v25;
        }
      }
    }

    if ((*(v8 + 1) & 8) != 0)
    {
      v26 = 64;
    }

    else
    {
      v26 = 48;
    }

    *&v8[v26] = sub_181951CA4(a1, *&v8[v26], v37);
    v8 = *(v8 + 10);
  }

  while (v8);
  return (v25 + 1);
}

uint64_t sub_181965288(uint64_t result)
{
  if ((*(result + 25) & 0x210) == 0)
  {
    v1 = **(result + 64);
    v2 = v1;
    while (v2)
    {
      if ((v2[4] & 9) == 0 && (!*(v2 + 10) || *v2 == 136))
      {
        v3 = *(v2 + 14);
        v2 = *(v2 + 10);
        if (!v3)
        {
          continue;
        }
      }

      return result;
    }

    v4 = *(result + 32);
    v5 = *(v1 + 9);
    if (v5)
    {
      v6 = *v5;
      if (v6 >= 1)
      {
        v7 = (v5 + 7);
        do
        {
          v9 = *v7;
          v7 += 12;
          v8 = v9;
          if (v9)
          {
            v10 = v8 - 1;
            if (v10 >= 0x3F)
            {
              LOBYTE(v10) = 63;
            }

            v4 |= 1 << v10;
          }

          --v6;
        }

        while (v6);
      }
    }

    v11 = *(*(result + 16) + 54);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = 1 << v12;
        if (v12 >= 0x3F)
        {
          v14 = 0x8000000000000000;
        }

        result = v14 & v4;
        if (result)
        {
          v15 = 1;
        }

        else
        {
          v15 = v1 == 0;
        }

        if (!v15)
        {
          result = v1;
          do
          {
            v16 = *(*(result + 32) + 24 * v12 + 8);
            if (*v16 != 122)
            {
              *v16 = 122;
              *(v16 + 4) &= 0xFFF7DFFF;
              *(result + 4) |= 0x1000000u;
              ++v13;
            }

            result = *(result + 80);
          }

          while (result);
        }

        ++v12;
      }

      while (v12 != v11);
    }
  }

  return result;
}

BOOL sub_1819653E0(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v4 = a2 + 8 + 72 * a3;
  if ((*(v4 + 25) & 0x200) != 0)
  {
    v5 = *(v4 + 48);
    v6 = *(v5 + 18);
    if (!*(v5 + 18))
    {
      return 0;
    }

    v7 = *v5;
    if (v6 != 2 && v7 > 1)
    {
      return 0;
    }
  }

  if ((*(a2 + 32) & 0x40) != 0 || (*(*a1 + 99) & 2) != 0)
  {
    return 0;
  }

  v9 = *a2;
  v10 = **(v4 + 64);
  if ((*(v10 + 7) & 1) == 0)
  {
    LODWORD(v11) = a3 + 1;
    while (v11 < v9)
    {
      v11 = v11;
      while (1)
      {
        v12 = a2 + 8 + 72 * v11++;
        if ((*(v12 + 25) & 0x44) != 4)
        {
          goto LABEL_14;
        }

        v13 = *v12;
        if (!*v12)
        {
          goto LABEL_14;
        }

        v14 = *(*(v12 + 16) + 96);
        if (v14 != *(*(v4 + 16) + 96))
        {
          goto LABEL_14;
        }

        v15 = *v4;
        if (!*v4)
        {
          goto LABEL_14;
        }

        while (*v13 != *v15)
        {
          if (byte_181A20298[*v13] != byte_181A20298[*v15])
          {
            goto LABEL_14;
          }

LABEL_21:
          ++v13;
          ++v15;
        }

        if (*v13)
        {
          goto LABEL_21;
        }

        v16 = **(v12 + 64);
        if (v14 || *(v10 + 16) == *(v16 + 16))
        {
          break;
        }

LABEL_14:
        if (v9 == v11)
        {
          goto LABEL_28;
        }
      }

      result = 0;
      if ((*(v16 + 7) & 1) == 0)
      {
        return result;
      }
    }
  }

LABEL_28:
  if (a3)
  {
    if ((a4 & 0x10000000) == 0)
    {
      v18 = a3 + 1;
      for (i = a2 + 72 * a3 - 39; (*(i + 71) & 0x22) == 0; i -= 72)
      {
        if (!--v18)
        {
          return 1;
        }

        result = 0;
        v20 = *i;
        if ((v20 & 4) != 0)
        {
          return result;
        }
      }
    }

    return 0;
  }

  if (v9 == 1)
  {
    return 1;
  }

  if ((*(a2 + 104) & 2) != 0)
  {
    return 1;
  }

  return ((a4 >> 28) & 1) == 0;
}

uint64_t sub_18196556C(uint64_t a1, unsigned __int8 **a2, uint64_t a3, int a4)
{
  v4 = *a2[8];
  if (*(v4 + 7))
  {
    return 0;
  }

  v5 = a1 + 8;
  do
  {
    if (a3 >= a4)
    {
      return 0;
    }

    a3 = a3;
    while (2)
    {
      result = v5 + 72 * a3++;
      if ((*(result + 25) & 0x44) != 4)
      {
        goto LABEL_5;
      }

      v7 = *result;
      if (!*result)
      {
        goto LABEL_5;
      }

      v8 = *(*(result + 16) + 96);
      if (v8 != *(a2[2] + 12))
      {
        goto LABEL_5;
      }

      v9 = *a2;
      if (!*a2)
      {
        goto LABEL_5;
      }

      while (*v7 != *v9)
      {
        if (byte_181A20298[*v7] != byte_181A20298[*v9])
        {
          goto LABEL_5;
        }

LABEL_12:
        ++v7;
        ++v9;
      }

      if (*v7)
      {
        goto LABEL_12;
      }

      v10 = **(result + 64);
      if (!v8 && *(v4 + 16) != *(v10 + 16))
      {
LABEL_5:
        if (a3 == a4)
        {
          return 0;
        }

        continue;
      }

      break;
    }
  }

  while ((*(v10 + 7) & 1) != 0);
  return result;
}

uint64_t sub_181965648(uint64_t *a1, int *a2, int a3, int a4)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a2 - a3;
  v10 = a4 + v9 + 1;
  v11 = 9 * v10;
  v12 = sub_181929E8C(*a1, v11 + 32, 0x2004093837F09);
  v19 = v12;
  if (v12)
  {
    *(v12 + 6) = v9;
    *(v12 + 8) = v10;
    *(v12 + 4) = *(v7 + 100);
    *(v12 + 16) = v7;
    *(v12 + 24) = v12 + 32 + 8 * v10;
    *v12 = 1;
    bzero((v12 + 32), v11);
    v26 = v8 - a3;
    if (v8 > a3)
    {
      v27 = 0;
      v28 = &a2[6 * a3 + 2];
      do
      {
        v29 = sub_1818B4720(a1, *v28, v20, v21, v22, v23, v24, v25);
        if (!v29)
        {
          v29 = *(*a1 + 16);
        }

        *(v19 + 32 + 8 * v27) = v29;
        *(*(v19 + 24) + v27) = *(v28 + 16);
        v28 += 24;
        ++v27;
      }

      while (v26 != v27);
    }
  }

  else if (!*(v7 + 103) && !*(v7 + 104))
  {
    *(v7 + 103) = 1;
    if (*(v7 + 220) >= 1)
    {
      *(v7 + 424) = 1;
    }

    ++*(v7 + 432);
    *(v7 + 436) = 0;
    v31 = *(v7 + 344);
    if (v31)
    {
      sub_181910730(v31, "out of memory", v13, v14, v15, v16, v17, v18, v33);
      for (i = *(v7 + 344); ; ++*(i + 52))
      {
        *(i + 24) = 7;
        i = *(i + 216);
        if (!i)
        {
          break;
        }
      }
    }
  }

  return v19;
}

uint64_t sub_1819657CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = **(**(*(a2 + 40) + 72) + 32);
  v10 = *(a2 + 112);
  result = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v15 = result;
  v16 = *(v10 + 88);
  v17 = *(result + 144);
  if (*(result + 148) <= v17)
  {
    result = sub_18194C8AC(result, 117, v16, v9, 0, v12, v13, v14);
  }

  else
  {
    *(result + 144) = v17 + 1;
    v18 = *(result + 136) + 40 * v17;
    *v18 = 117;
    *(v18 + 4) = v16;
    *(v18 + 8) = v9;
    *(v18 + 12) = 0;
    *(v18 + 28) = 0;
    *(v18 + 20) = 0;
    *(v18 + 36) = 0;
  }

  v19 = *(v10 + 88);
  v20 = (v19 + 1);
  v21 = *(v15 + 144);
  if (*(v15 + 148) <= v21)
  {
    result = sub_18194C8AC(v15, 114, v20, v19, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v21 + 1;
    v22 = *(v15 + 136) + 40 * v21;
    *v22 = 114;
    *(v22 + 4) = v20;
    *(v22 + 8) = v19;
    *(v22 + 12) = 0;
    *(v22 + 28) = 0;
    *(v22 + 20) = 0;
    *(v22 + 36) = 0;
  }

  v23 = *(v10 + 88);
  v24 = (v23 + 2);
  v25 = *(v15 + 144);
  if (*(v15 + 148) <= v25)
  {
    result = sub_18194C8AC(v15, 114, v24, v23, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v25 + 1;
    v26 = *(v15 + 136) + 40 * v25;
    *v26 = 114;
    *(v26 + 4) = v24;
    *(v26 + 8) = v23;
    *(v26 + 12) = 0;
    *(v26 + 28) = 0;
    *(v26 + 20) = 0;
    *(v26 + 36) = 0;
  }

  v27 = *(v10 + 88);
  v28 = (v27 + 3);
  v29 = *(v15 + 144);
  if (*(v15 + 148) <= v29)
  {
    result = sub_18194C8AC(v15, 114, v28, v27, 0, v12, v13, v14);
    v31 = *(v10 + 16);
    if (!v31)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *(v15 + 144) = v29 + 1;
    v30 = *(v15 + 136) + 40 * v29;
    *v30 = 114;
    *(v30 + 4) = v28;
    *(v30 + 8) = v27;
    *(v30 + 12) = 0;
    *(v30 + 28) = 0;
    *(v30 + 20) = 0;
    *(v30 + 36) = 0;
    v31 = *(v10 + 16);
    if (!v31)
    {
      goto LABEL_17;
    }
  }

  v32 = *v31;
  v33 = *(a1 + 60);
  v34 = (v33 + 1);
  *(v10 + 108) = v34;
  v35 = (v33 + v32);
  *(a1 + 60) = v35;
  v36 = *(v15 + 144);
  if (*(v15 + 148) <= v36)
  {
    result = sub_18194C8AC(v15, 75, 0, v34, v35, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v36 + 1;
    v37 = *(v15 + 136) + 40 * v36;
    *v37 = 75;
    *(v37 + 8) = v34;
    *(v37 + 12) = v35;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0;
    *(v37 + 16) = 0;
  }

LABEL_17:
  v38 = (*(a1 + 60) + 1);
  *(a1 + 60) = v38;
  *(v10 + 128) = v38;
  v39 = *(v15 + 144);
  if (*(v15 + 148) <= v39)
  {
    result = sub_18194C8AC(v15, 71, 1uLL, v38, 0, v12, v13, v14);
    if (*(v10 + 36))
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  *(v15 + 144) = v39 + 1;
  v40 = *(v15 + 136) + 40 * v39;
  *v40 = 0x100000047;
  *(v40 + 8) = v38;
  *(v40 + 12) = 0;
  *(v40 + 28) = 0;
  *(v40 + 20) = 0;
  *(v40 + 36) = 0;
  if (!*(v10 + 36))
  {
LABEL_22:
    v46 = v10;
    while (1)
    {
      v48 = *(v46 + 80);
      if ((*(v48 + 5) & 0x10) != 0 && *(v46 + 33) != 91)
      {
        result = sub_181965648(a1, *(*(v46 + 112) + 32), 0, 0);
        v58 = result;
        v59 = *(a1 + 56);
        *(v46 + 100) = v59.i32[0];
        v60 = v59.u32[0];
        *(v46 + 104) = v59.i32[1] + 1;
        *(a1 + 56) = vadd_s32(v59, 0x300000001);
        if (result && *(*(*(v46 + 80) + 56) + 1) == 105)
        {
          **(result + 24) = 1;
          v60 = *(v46 + 100);
        }

        v61 = *(v15 + 144);
        if (*(v15 + 148) <= v61)
        {
          result = sub_18194C8AC(v15, 117, v60, 2, 0, v12, v13, v14);
        }

        else
        {
          *(v15 + 144) = v61 + 1;
          v62 = *(v15 + 136) + 40 * v61;
          *v62 = 117;
          *(v62 + 4) = v60;
          *(v62 + 8) = 2;
          *(v62 + 12) = 0;
          *(v62 + 28) = 0;
          *(v62 + 20) = 0;
          *(v62 + 36) = 0;
        }

        if (*(*v15 + 103))
        {
          if (v58)
          {
            v63 = *(*v15 + 824) == 0;
          }

          else
          {
            v63 = 0;
          }

          if (v63)
          {
            v50 = (*v58)-- == 1;
            if (v50)
            {
              result = sub_181939EC8(*(v58 + 16), v58);
            }
          }
        }

        else
        {
          v64 = *(v15 + 136) + 40 * *(v15 + 144);
          *(v64 - 39) = -8;
          *(v64 - 24) = v58;
        }

        v54 = (*(v46 + 104) + 1);
        v65 = *(v15 + 144);
        if (*(v15 + 148) <= v65)
        {
          v56 = v15;
          v57 = 71;
          v52 = 0;
          goto LABEL_61;
        }

        *(v15 + 144) = v65 + 1;
        v47 = *(v15 + 136) + 40 * v65;
        *v47 = 71;
      }

      else
      {
        v49 = *(v48 + 56);
        v50 = v49 == "nth_value" || v49 == "first_value";
        if (v50)
        {
          v51 = *(a1 + 56);
          *(v46 + 104) = v51.i32[1] + 1;
          *(v46 + 100) = v51.i32[0];
          v52 = v51.u32[0];
          *(a1 + 56) = vadd_s32(v51, 0x200000001);
        }

        else
        {
          if (v49 != "lead" && v49 != "lag")
          {
            goto LABEL_25;
          }

          v52 = *(a1 + 56);
          *(a1 + 56) = v52 + 1;
          *(v46 + 100) = v52;
        }

        v54 = *(v10 + 88);
        v55 = *(v15 + 144);
        if (*(v15 + 148) <= v55)
        {
          v56 = v15;
          v57 = 114;
LABEL_61:
          result = sub_18194C8AC(v56, v57, v52, v54, 0, v12, v13, v14);
          goto LABEL_25;
        }

        *(v15 + 144) = v55 + 1;
        v47 = *(v15 + 136) + 40 * v55;
        *v47 = 114;
        *(v47 + 4) = v52;
      }

      *(v47 + 8) = v54;
      *(v47 + 12) = 0;
      *(v47 + 28) = 0;
      *(v47 + 20) = 0;
      *(v47 + 36) = 0;
LABEL_25:
      v46 = *(v46 + 64);
      if (!v46)
      {
        return result;
      }
    }
  }

LABEL_19:
  v42 = *(a1 + 56);
  v41 = *(a1 + 60);
  v43 = (v41 + 1);
  v41 += 2;
  *(v10 + 132) = v43;
  *(v10 + 136) = v41;
  *(a1 + 56) = v42 + 1;
  *(a1 + 60) = v41;
  *(v10 + 100) = v42;
  v44 = *(v15 + 144);
  if (*(v15 + 148) <= v44)
  {
    result = sub_18194C8AC(v15, 71, 1uLL, v43, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v44 + 1;
    v45 = *(v15 + 136) + 40 * v44;
    *v45 = 0x100000047;
    *(v45 + 8) = v43;
    *(v45 + 12) = 0;
    *(v45 + 28) = 0;
    *(v45 + 20) = 0;
    *(v45 + 36) = 0;
  }

  v66 = *(v10 + 136);
  v67 = *(v15 + 144);
  if (*(v15 + 148) <= v67)
  {
    result = sub_18194C8AC(v15, 71, 0, v66, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v67 + 1;
    v68 = *(v15 + 136) + 40 * v67;
    *v68 = 71;
    *(v68 + 8) = v66;
    *(v68 + 12) = 0;
    *(v68 + 28) = 0;
    *(v68 + 20) = 0;
    *(v68 + 36) = 0;
  }

  v69 = *(v10 + 100);
  v70 = *(v10 + 88);
  v71 = *(v15 + 144);
  if (*(v15 + 148) <= v71)
  {

    return sub_18194C8AC(v15, 114, v69, v70, 0, v12, v13, v14);
  }

  else
  {
    *(v15 + 144) = v71 + 1;
    v72 = *(v15 + 136) + 40 * v71;
    *v72 = 114;
    *(v72 + 4) = v69;
    *(v72 + 8) = v70;
    *(v72 + 12) = 0;
    *(v72 + 28) = 0;
    *(v72 + 20) = 0;
    *(v72 + 36) = 0;
  }

  return result;
}

uint64_t sub_181965E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v9 = a4;
  v13 = *(a2 + 112);
  v310 = *(v13 + 24);
  v19 = sub_1818E7DFC(a1, a2, a3, a4, a5, a6, a7, a8);
  v20 = *(a2 + 40);
  v21 = *(v20 + 36);
  v22 = *(*(v20 + 24) + 54);
  v23 = *(a1 + 72);
  v307 = v23 - 1;
  *(a1 + 72) = v23 - 1;
  memset(v317, 0, sizeof(v317));
  v316 = 0u;
  v313[0] = a1;
  v313[1] = v13;
  v313[2] = v19;
  v314 = v8;
  v315 = v9;
  LODWORD(v20) = *(v13 + 88);
  v24 = v20 + 2;
  *&v317[4] = v20;
  HIDWORD(v316) = v20 + 2;
  v312 = v20;
  v304 = v20 + 3;
  *&v317[12] = (v20 + 3);
  v25 = *(v13 + 33);
  if (v25 == 91)
  {
    if (!*(v13 + 132))
    {
      v31 = v13;
      while (1)
      {
        v32 = *(*(v31 + 80) + 56);
        v33 = v32 == "lag" || v32 == "lead";
        v34 = v33 || v32 == "nth_value";
        if (v34 || v32 == "first_value")
        {
          break;
        }

        v31 = *(v31 + 64);
        if (!v31)
        {
          if (*(v13 + 34) != 89)
          {
            goto LABEL_282;
          }

          if (*(v13 + 32) != 90)
          {
            v36 = *(v13 + 48);
            v37 = *a1;
            v318[0] = 0;
            if (v36)
            {
              sub_18194BC5C(v37, v36, *(v37 + 100), 67, v318);
              v38 = v318[0];
              if (v318[0])
              {
                v39 = sqlite3_value_int(v318[0]);
                if ((*(v38 + 10) & 0x9000) != 0 || *(v38 + 8))
                {
                  sub_18193CA00(v38);
                }

                sub_181929C84(*(v38 + 3), v38);
                if (v39 >= 1)
                {
                  v40 = 3;
                  goto LABEL_36;
                }
              }
            }
          }

          goto LABEL_37;
        }
      }
    }

    goto LABEL_37;
  }

  if (v25 == 87)
  {
    if (*(v13 + 32) == 90)
    {
      goto LABEL_37;
    }

    v26 = *(v13 + 40);
    v27 = *a1;
    v318[0] = 0;
    if (!v26)
    {
      goto LABEL_37;
    }

    sub_18194BC5C(v27, v26, *(v27 + 100), 67, v318);
    v28 = v318[0];
    if (!v318[0])
    {
      goto LABEL_37;
    }

    v29 = *(v318[0] + 10);
    if ((v29 & 0x24) != 0)
    {
      v30 = *v318[0];
    }

    else if ((v29 & 8) != 0)
    {
      v293 = *v318[0];
      if (*v318[0] >= -9.22337204e18)
      {
        if (v293 <= 9.22337204e18)
        {
          v30 = v293;
        }

        else
        {
          LODWORD(v30) = -1;
        }
      }

      else
      {
        LODWORD(v30) = 0;
      }
    }

    else if ((v29 & 0x12) != 0 && *(v318[0] + 1))
    {
      LODWORD(v30) = sub_18193CFCC(v318[0]);
      v29 = *(v28 + 10);
    }

    else
    {
      LODWORD(v30) = 0;
    }

    if ((v29 & 0x9000) != 0 || *(v28 + 8))
    {
      sub_18193CA00(v28);
    }

    sub_181929C84(*(v28 + 3), v28);
    if (v30 < 1)
    {
      goto LABEL_37;
    }

LABEL_282:
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

LABEL_36:
  DWORD1(v316) = v40;
LABEL_37:
  v41 = *(a1 + 60);
  v42 = v41 + v22;
  v43 = v41 + v22 + 2;
  *(a1 + 60) = v43;
  DWORD2(v316) = v43;
  v44 = *(v13 + 33);
  if (v44 == 89 || v44 == 87)
  {
    v45 = v42 + 3;
    *(a1 + 60) = v42 + 3;
    v46 = v42 + 3;
  }

  else
  {
    v46 = 0;
    v45 = v42 + 2;
  }

  v47 = *(v13 + 34);
  v302 = a3;
  v300 = v46;
  v301 = v23;
  v297 = v24;
  if (v47 == 89 || v47 == 87)
  {
    *(a1 + 60) = ++v45;
    v299 = v45;
  }

  else
  {
    v299 = 0;
  }

  v48 = (v41 + 1);
  v311 = a1;
  v49 = v310;
  v298 = v43;
  if (*(v13 + 32) == 77)
  {
    v296 = 0;
    v295 = 0;
    v305 = 0;
    v303 = 0;
  }

  else
  {
    if (v310)
    {
      v49 = *v310;
    }

    v50 = *(v13 + 120) + v48;
    v51 = *(v13 + 16);
    if (v51)
    {
      v50 += *v51;
    }

    v303 = v50;
    v305 = v45 + 1;
    v52 = v49 + v45;
    v53 = v52 + 1;
    v54 = v52 + v49;
    LODWORD(v295) = v53;
    HIDWORD(v295) = v54 + 1;
    *v317 = v53;
    *&v317[8] = v54 + 1;
    v55 = v54 + v49;
    v296 = v55 + 1;
    *&v317[16] = v55 + 1;
    *(a1 + 60) = v55 + v49;
  }

  v308 = v42 + 1;
  if (v22 >= 1)
  {
    v56 = 0;
    v57 = v48;
    v58 = v22;
    do
    {
      v60 = *(v19 + 144);
      if (*(v19 + 148) > v60)
      {
        *(v19 + 144) = v60 + 1;
        v59 = *(v19 + 136) + 40 * v60;
        *v59 = 94;
        *(v59 + 4) = v21;
        *(v59 + 8) = v56;
        *(v59 + 12) = v57;
        *(v59 + 24) = 0;
        *(v59 + 32) = 0;
        *(v59 + 16) = 0;
      }

      else
      {
        sub_18194C8AC(v19, 94, v21, v56, v57, v16, v17, v18);
      }

      v56 = (v56 + 1);
      v57 = (v57 + 1);
      --v58;
    }

    while (v58);
  }

  v61 = *(v19 + 144);
  if (*(v19 + 148) <= v61)
  {
    sub_18194C8AC(v19, 97, v48, v22, v308, v16, v17, v18);
  }

  else
  {
    *(v19 + 144) = v61 + 1;
    v62 = *(v19 + 136) + 40 * v61;
    *v62 = 97;
    *(v62 + 4) = v48;
    *(v62 + 8) = v22;
    *(v62 + 12) = v308;
    *(v62 + 24) = 0;
    *(v62 + 32) = 0;
    *(v62 + 16) = 0;
  }

  v63 = v312 + 1;
  v64 = *(v13 + 16);
  v306 = v312 + 1;
  if (v64)
  {
    v65 = *v64;
    v66 = (*(v13 + 120) + v48);
    v67 = sub_181965648(a1, v64, 0, 0);
    v68 = (*(a1 + 60) + 1);
    *(v311 + 60) = v68;
    v69 = *(v13 + 108);
    v70 = *(v19 + 144);
    if (*(v19 + 148) <= v70)
    {
      v70 = sub_18194C8AC(v19, 90, v66, v69, v65, v16, v17, v18);
    }

    else
    {
      *(v19 + 144) = v70 + 1;
      v71 = *(v19 + 136) + 40 * v70;
      *v71 = 90;
      *(v71 + 4) = v66;
      *(v71 + 8) = v69;
      *(v71 + 12) = v65;
      *(v71 + 24) = 0;
      *(v71 + 32) = 0;
      *(v71 + 16) = 0;
    }

    if (*(*v19 + 103))
    {
      if (v67)
      {
        if (!*(*v19 + 824))
        {
          v33 = (*v67)-- == 1;
          if (v33)
          {
            sub_181939EC8(*(v67 + 16), v67);
          }
        }
      }
    }

    else
    {
      v73 = *(v19 + 136) + 40 * *(v19 + 144);
      *(v73 - 39) = -8;
      *(v73 - 24) = v67;
    }

    v74 = (v70 + 2);
    v75 = (v70 + 4);
    v76 = *(v19 + 144);
    if (*(v19 + 148) <= v76)
    {
      sub_18194C8AC(v19, 14, v74, v75, (v70 + 2), v16, v17, v18);
    }

    else
    {
      *(v19 + 144) = v76 + 1;
      v77 = *(v19 + 136) + 40 * v76;
      *v77 = 14;
      *(v77 + 4) = v74;
      *(v77 + 8) = v75;
      *(v77 + 12) = v74;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0;
      *(v77 + 16) = 0;
    }

    v63 = v306;
    v72 = *(v19 + 144);
    if (*(v19 + 148) <= v72)
    {
      v72 = sub_18194C8AC(v19, 10, v68, 0, 0, v16, v17, v18);
    }

    else
    {
      *(v19 + 144) = v72 + 1;
      v78 = *(v19 + 136) + 40 * v72;
      *v78 = 10;
      *(v78 + 4) = v68;
      *(v78 + 8) = 0u;
      *(v78 + 24) = 0u;
    }

    v14 = *(v13 + 108);
    v15 = (v65 - 1);
    v79 = *(v19 + 144);
    if (*(v19 + 148) <= v79)
    {
      sub_18194C8AC(v19, 80, v66, v14, v15, v16, v17, v18);
    }

    else
    {
      *(v19 + 144) = v79 + 1;
      v80 = *(v19 + 136) + 40 * v79;
      *v80 = 80;
      *(v80 + 4) = v66;
      *(v80 + 8) = v14;
      *(v80 + 12) = v15;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0;
      *(v80 + 16) = 0;
    }
  }

  else
  {
    v68 = 0;
    v72 = 0;
  }

  v81 = *(v19 + 144);
  if (*(v19 + 148) <= v81)
  {
    sub_18194C8AC(v19, 127, v63, v298, 0, v16, v17, v18);
  }

  else
  {
    *(v19 + 144) = v81 + 1;
    v82 = *(v19 + 136) + 40 * v81;
    *v82 = 127;
    *(v82 + 4) = v63;
    *(v82 + 8) = v298;
    *(v82 + 12) = 0;
    *(v82 + 28) = 0;
    *(v82 + 20) = 0;
    *(v82 + 36) = 0;
  }

  v83 = *(v19 + 144);
  if (*(v19 + 148) <= v83)
  {
    sub_18194C8AC(v19, 128, v63, v308, v298, v16, v17, v18);
  }

  else
  {
    *(v19 + 144) = v83 + 1;
    v84 = *(v19 + 136) + 40 * v83;
    *v84 = 128;
    *(v84 + 4) = v63;
    *(v84 + 8) = v308;
    *(v84 + 12) = v298;
    *(v84 + 24) = 0;
    *(v84 + 32) = 0;
    *(v84 + 16) = 0;
  }

  v85 = *(v13 + 128);
  v86 = *(v19 + 144);
  v294 = v72;
  if (*(v19 + 148) <= v86)
  {
    v309 = sub_18194C8AC(v19, 53, v85, 0, v298, v16, v17, v18);
  }

  else
  {
    *(v19 + 144) = v86 + 1;
    v309 = v86;
    v87 = *(v19 + 136) + 40 * v86;
    *v87 = 53;
    *(v87 + 4) = v85;
    *(v87 + 8) = 0;
    *(v87 + 12) = v298;
    *(v87 + 24) = 0;
    *(v87 + 32) = 0;
    *(v87 + 16) = 0;
  }

  v93 = sub_1818E7DFC(v311, v64, v85, v14, v15, v16, v17, v18);
  v94 = 0;
  v95 = v13;
  do
  {
    v97 = *(v95 + 80);
    v98 = *(v95 + 92);
    v99 = *(v93 + 144);
    if (*(v93 + 148) <= v99)
    {
      sub_18194C8AC(v93, 75, 0, v98, 0, v90, v91, v92);
    }

    else
    {
      *(v93 + 144) = v99 + 1;
      v100 = *(v93 + 136) + 40 * v99;
      *v100 = 75;
      *(v100 + 8) = v98;
      *(v100 + 12) = 0;
      *(v100 + 28) = 0;
      *(v100 + 20) = 0;
      *(v100 + 36) = 0;
    }

    v101 = *(*(v95 + 112) + 32);
    if (!v101)
    {
      if (v94 > 0)
      {
        goto LABEL_103;
      }

      v102 = 0;
LABEL_102:
      v94 = v102;
      goto LABEL_103;
    }

    v102 = *v101;
    if (v94 <= v102)
    {
      goto LABEL_102;
    }

LABEL_103:
    if (*(v13 + 132))
    {
      goto LABEL_93;
    }

    v103 = *(v97 + 56);
    if (v103 == "nth_value" || v103 == "first_value")
    {
      v105 = *(v95 + 104);
      v106 = *(v93 + 144);
      if (*(v93 + 148) <= v106)
      {
        sub_18194C8AC(v93, 71, 0, v105, 0, v90, v91, v92);
      }

      else
      {
        *(v93 + 144) = v106 + 1;
        v107 = *(v93 + 136) + 40 * v106;
        *v107 = 71;
        *(v107 + 8) = v105;
        *(v107 + 12) = 0;
        *(v107 + 28) = 0;
        *(v107 + 20) = 0;
        *(v107 + 36) = 0;
      }

      v98 = (*(v95 + 104) + 1);
      v108 = *(v93 + 144);
      if (*(v93 + 148) <= v108)
      {
        sub_18194C8AC(v93, 71, 0, v98, 0, v90, v91, v92);
        if ((*(v97 + 5) & 0x10) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_115;
      }

      *(v93 + 144) = v108 + 1;
      v109 = *(v93 + 136) + 40 * v108;
      *v109 = 71;
      *(v109 + 8) = v98;
      *(v109 + 12) = 0;
      *(v109 + 28) = 0;
      *(v109 + 20) = 0;
      *(v109 + 36) = 0;
    }

    if ((*(v97 + 5) & 0x10) == 0)
    {
      goto LABEL_93;
    }

LABEL_115:
    v88 = *(v95 + 100);
    if (v88)
    {
      v110 = *(v93 + 144);
      if (*(v93 + 148) <= v110)
      {
        sub_18194C8AC(v93, 146, v88, 0, 0, v90, v91, v92);
      }

      else
      {
        *(v93 + 144) = v110 + 1;
        v111 = *(v93 + 136) + 40 * v110;
        *v111 = 146;
        *(v111 + 4) = v88;
        *(v111 + 8) = 0u;
        *(v111 + 24) = 0u;
      }

      v98 = (*(v95 + 104) + 1);
      v112 = *(v93 + 144);
      if (*(v93 + 148) > v112)
      {
        *(v93 + 144) = v112 + 1;
        v96 = *(v93 + 136) + 40 * v112;
        *v96 = 71;
        *(v96 + 8) = v98;
        *(v96 + 12) = 0;
        *(v96 + 28) = 0;
        *(v96 + 20) = 0;
        *(v96 + 36) = 0;
      }

      else
      {
        sub_18194C8AC(v93, 71, 0, v98, 0, v90, v91, v92);
      }
    }

LABEL_93:
    v95 = *(v95 + 64);
  }

  while (v95);
  v113 = *(v311 + 60);
  *(v311 + 60) = v113 + v94;
  LODWORD(v316) = v113 + 1;
  if (v300)
  {
    if (*(v311 + 16))
    {
      v114 = *(v13 + 40);
      v115 = sub_1818B8080(v311, v114, v300, v98, v89, v90, v91, v92);
      if (v115 != v300)
      {
        v116 = v115;
        if (!v114)
        {
          goto LABEL_137;
        }

        while (1)
        {
          v117 = *(v114 + 1);
          if ((v117 & 0x82000) == 0)
          {
            break;
          }

          if ((v117 & 0x80000) != 0)
          {
            v114 = *(*(v114 + 4) + 8);
            if (!v114)
            {
              goto LABEL_137;
            }
          }

          else
          {
            if (*v114 != 114)
            {
              break;
            }

            v114 = *(v114 + 2);
            if (!v114)
            {
              goto LABEL_137;
            }
          }
        }

        if ((v117 & 0x400000) != 0 || *v114 == 176)
        {
          v118 = 80;
        }

        else
        {
LABEL_137:
          v118 = 81;
        }

        v119 = *(v311 + 16);
        v120 = *(v119 + 144);
        if (*(v119 + 148) <= v120)
        {
          sub_18194C8AC(v119, v118, v116, v300, 0, v90, v91, v92);
        }

        else
        {
          *(v119 + 144) = v120 + 1;
          v121 = *(v119 + 136) + 40 * v120;
          *v121 = v118;
          *(v121 + 2) = 0;
          *(v121 + 4) = v116;
          *(v121 + 8) = v300;
          *(v121 + 1) = 0;
          *(v121 + 12) = 0;
          *(v121 + 28) = 0;
          *(v121 + 20) = 0;
          *(v121 + 36) = 0;
        }
      }
    }

    if (*(v13 + 32) == 90)
    {
      v122 = 3;
    }

    else
    {
      v122 = 0;
    }

    sub_18197B790(v311, v300, v122, v98, v89, v90, v91, v92);
  }

  if (v299)
  {
    if (*(v311 + 16))
    {
      v123 = *(v13 + 48);
      v124 = sub_1818B8080(v311, v123, v299, v98, v89, v90, v91, v92);
      if (v124 != v299)
      {
        v125 = v124;
        if (!v123)
        {
          goto LABEL_159;
        }

        while (1)
        {
          v126 = *(v123 + 1);
          if ((v126 & 0x82000) == 0)
          {
            break;
          }

          if ((v126 & 0x80000) != 0)
          {
            v123 = *(*(v123 + 4) + 8);
            if (!v123)
            {
              goto LABEL_159;
            }
          }

          else
          {
            if (*v123 != 114)
            {
              break;
            }

            v123 = *(v123 + 2);
            if (!v123)
            {
              goto LABEL_159;
            }
          }
        }

        if ((v126 & 0x400000) != 0 || *v123 == 176)
        {
          v127 = 80;
        }

        else
        {
LABEL_159:
          v127 = 81;
        }

        v128 = *(v311 + 16);
        v129 = *(v128 + 144);
        if (*(v128 + 148) <= v129)
        {
          sub_18194C8AC(v128, v127, v125, v299, 0, v90, v91, v92);
        }

        else
        {
          *(v128 + 144) = v129 + 1;
          v130 = *(v128 + 136) + 40 * v129;
          *v130 = v127;
          *(v130 + 2) = 0;
          *(v130 + 4) = v125;
          *(v130 + 8) = v299;
          *(v130 + 1) = 0;
          *(v130 + 12) = 0;
          *(v130 + 28) = 0;
          *(v130 + 20) = 0;
          *(v130 + 36) = 0;
        }
      }
    }

    if (*(v13 + 32) == 90)
    {
      v131 = 4;
    }

    else
    {
      v131 = 1;
    }

    sub_18197B790(v311, v299, v131, v98, v89, v90, v91, v92);
  }

  v132 = v305;
  if (*(v13 + 32) == 90)
  {
LABEL_189:
    v133 = *(v13 + 33);
  }

  else
  {
    v133 = *(v13 + 33);
    if (v300 && v133 == *(v13 + 34))
    {
      if (v133 == 87)
      {
        v134 = 58;
      }

      else
      {
        v134 = 56;
      }

      v135 = *(v19 + 144);
      if (*(v19 + 148) <= v135)
      {
        v135 = sub_18194C8AC(v19, v134, v300, 0, v299, v90, v91, v92);
      }

      else
      {
        *(v19 + 144) = v135 + 1;
        v136 = *(v19 + 136) + 40 * v135;
        *v136 = v134;
        *(v136 + 2) = 0;
        *(v136 + 4) = v300;
        *(v136 + 8) = 0;
        *(v136 + 12) = v299;
        *(v136 + 1) = 0;
        *(v136 + 24) = 0;
        *(v136 + 32) = 0;
        *(v136 + 16) = 0;
      }

      sub_18197BB58(v313, 0, v88, v98, v89, v90, v91, v92);
      v144 = *(v19 + 144);
      if (*(v19 + 148) <= v144)
      {
        sub_18194C8AC(v19, 36, v312, 0, 0, v141, v142, v143);
      }

      else
      {
        *(v19 + 144) = v144 + 1;
        v145 = *(v19 + 136) + 40 * v144;
        *v145 = 36;
        *(v145 + 4) = v312;
        *(v145 + 8) = 0u;
        *(v145 + 24) = 0u;
      }

      sub_18197BEE0(v313, v137, v138, v139, v140, v141, v142, v143);
      v146 = *(v19 + 144);
      if (*(v19 + 148) <= v146)
      {
        sub_18194C8AC(v19, 146, v312, 0, 0, v90, v91, v92);
      }

      else
      {
        *(v19 + 144) = v146 + 1;
        v147 = *(v19 + 136) + 40 * v146;
        *v147 = 146;
        *(v147 + 4) = v312;
        *(v147 + 8) = 0u;
        *(v147 + 24) = 0u;
      }

      v148 = *(v19 + 144);
      if (*(v19 + 148) <= v148)
      {
        sub_18194C8AC(v19, 9, 0, v307, 0, v90, v91, v92);
      }

      else
      {
        *(v19 + 144) = v148 + 1;
        v149 = *(v19 + 136) + 40 * v148;
        *v149 = 9;
        *(v149 + 8) = v307;
        *(v149 + 12) = 0;
        *(v149 + 28) = 0;
        *(v149 + 20) = 0;
        *(v149 + 36) = 0;
      }

      if (*(*v19 + 103))
      {
        v150 = &byte_1EA831A58;
      }

      else
      {
        v150 = (*(v19 + 136) + 40 * v135);
      }

      v132 = v305;
      *(v150 + 2) = *(v19 + 144);
      goto LABEL_189;
    }
  }

  if (v133 == 87 && v299 && *(v13 + 32) != 90)
  {
    v151 = *(v19 + 144);
    if (*(v19 + 148) <= v151)
    {
      sub_18194C8AC(v19, 108, v300, v299, v300, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v151 + 1;
      v152 = *(v19 + 136) + 40 * v151;
      *v152 = 108;
      *(v152 + 4) = v300;
      *(v152 + 8) = v299;
      *(v152 + 12) = v300;
      *(v152 + 24) = 0;
      *(v152 + 32) = 0;
      *(v152 + 16) = 0;
    }
  }

  if (*(v13 + 33) != 91)
  {
    v153 = *(v19 + 144);
    if (*(v19 + 148) <= v153)
    {
      sub_18194C8AC(v19, 36, v297, 0, 0, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v153 + 1;
      v154 = *(v19 + 136) + 40 * v153;
      *v154 = 36;
      *(v154 + 4) = v297;
      *(v154 + 8) = 0u;
      *(v154 + 24) = 0u;
    }
  }

  v155 = *(v19 + 144);
  if (*(v19 + 148) <= v155)
  {
    sub_18194C8AC(v19, 36, v312, 0, 0, v90, v91, v92);
  }

  else
  {
    *(v19 + 144) = v155 + 1;
    v156 = *(v19 + 136) + 40 * v155;
    *v156 = 36;
    *(v156 + 4) = v312;
    *(v156 + 8) = 0u;
    *(v156 + 24) = 0u;
  }

  v157 = *(v19 + 144);
  if (*(v19 + 148) <= v157)
  {
    sub_18194C8AC(v19, 36, v304, 0, 0, v90, v91, v92);
    if (!v132)
    {
      goto LABEL_220;
    }
  }

  else
  {
    *(v19 + 144) = v157 + 1;
    v158 = *(v19 + 136) + 40 * v157;
    *v158 = 36;
    *(v158 + 4) = v304;
    *(v158 + 8) = 0u;
    *(v158 + 24) = 0u;
    if (!v132)
    {
      goto LABEL_220;
    }
  }

  if (v310)
  {
    v159 = (*v310 - 1);
    v160 = *(v19 + 144);
    if (*(v19 + 148) <= v160)
    {
      sub_18194C8AC(v19, 80, v303, v132, v159, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v160 + 1;
      v161 = *(v19 + 136) + 40 * v160;
      *v161 = 80;
      *(v161 + 4) = v303;
      *(v161 + 8) = v132;
      *(v161 + 12) = v159;
      *(v161 + 24) = 0;
      *(v161 + 32) = 0;
      *(v161 + 16) = 0;
    }

    v162 = (*v310 - 1);
    v163 = *(v19 + 144);
    if (*(v19 + 148) <= v163)
    {
      sub_18194C8AC(v19, 80, v132, v295, v162, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v163 + 1;
      v164 = *(v19 + 136) + 40 * v163;
      *v164 = 80;
      *(v164 + 4) = v132;
      *(v164 + 8) = v295;
      *(v164 + 12) = v162;
      *(v164 + 24) = 0;
      *(v164 + 32) = 0;
      *(v164 + 16) = 0;
    }

    v165 = (*v310 - 1);
    v166 = *(v19 + 144);
    if (*(v19 + 148) <= v166)
    {
      sub_18194C8AC(v19, 80, v132, HIDWORD(v295), v165, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v166 + 1;
      v167 = *(v19 + 136) + 40 * v166;
      *v167 = 80;
      *(v167 + 4) = v132;
      *(v167 + 8) = HIDWORD(v295);
      *(v167 + 12) = v165;
      *(v167 + 24) = 0;
      *(v167 + 32) = 0;
      *(v167 + 16) = 0;
    }

    v89 = (*v310 - 1);
    v168 = *(v19 + 144);
    if (*(v19 + 148) <= v168)
    {
      sub_18194C8AC(v19, 80, v132, v296, v89, v90, v91, v92);
    }

    else
    {
      *(v19 + 144) = v168 + 1;
      v169 = *(v19 + 136) + 40 * v168;
      *v169 = 80;
      *(v169 + 4) = v132;
      *(v169 + 8) = v296;
      *(v169 + 12) = v89;
      *(v169 + 24) = 0;
      *(v169 + 32) = 0;
      *(v169 + 16) = 0;
    }
  }

LABEL_220:
  v170 = *(v19 + 144);
  if (*(v19 + 148) <= v170)
  {
    sub_18194C8AC(v19, 9, 0, v307, 0, v90, v91, v92);
  }

  else
  {
    *(v19 + 144) = v170 + 1;
    v171 = *(v19 + 136) + 40 * v170;
    *v171 = 9;
    *(v171 + 8) = v307;
    *(v171 + 12) = 0;
    *(v171 + 28) = 0;
    *(v171 + 20) = 0;
    *(v171 + 36) = 0;
  }

  if (*(*v19 + 103))
  {
    dword_1EA831A60 = *(v19 + 144);
    if (v132)
    {
      goto LABEL_225;
    }
  }

  else
  {
    *(*(v19 + 136) + 40 * v309 + 8) = *(v19 + 144);
    if (v132)
    {
LABEL_225:
      sub_18197D078(v311, v310, v303, v132, v307, v90, v91, v92);
    }
  }

  v172 = *(v13 + 33);
  if (v172 == 87)
  {
    sub_18197D2A4(v313, 3, 0, 0, v89, v90, v91, v92);
    if (*(v13 + 34) == 91)
    {
      goto LABEL_246;
    }

    if (*(v13 + 32) == 90)
    {
      v179 = *(v311 + 72);
      v180 = (v179 - 1);
      *(v311 + 72) = v180;
      v181 = *(v19 + 144);
      sub_18197DC1C(v313, 58, v312, v299, v304, v180, v177, v178);
      sub_18197D2A4(v313, 2, v300, 0, v182, v183, v184, v185);
      sub_18197D2A4(v313, 1, 0, 0, v186, v187, v188, v189);
      v190 = *(v19 + 144);
      if (*(v19 + 148) <= v190)
      {
        sub_18194C8AC(v19, 9, 0, v181, 0, v176, v177, v178);
      }

      else
      {
        *(v19 + 144) = v190 + 1;
        v191 = *(v19 + 136) + 40 * v190;
        *v191 = 9;
        *(v191 + 8) = v181;
        *(v191 + 12) = 0;
        *(v191 + 28) = 0;
        *(v191 + 20) = 0;
        *(v191 + 36) = 0;
      }

      v257 = *(v19 + 24);
      v258 = -v179;
      if (*(v257 + 72) + *(v257 + 76) < 0)
      {
        sub_18195CB84(v257, v19, v258);
      }

      else
      {
        *(*(v257 + 80) + 4 * v258) = *(v19 + 144);
      }

      goto LABEL_246;
    }

    v203 = v299;
LABEL_244:
    sub_18197D2A4(v313, 1, v203, 0, v175, v176, v177, v178);
    v197 = 2;
    v198 = v300;
LABEL_245:
    sub_18197D2A4(v313, v197, v198, 0, v193, v194, v195, v196);
    goto LABEL_246;
  }

  if (*(v13 + 34) == 89)
  {
    if (v172 == 89)
    {
      v192 = *(v13 + 32);
      sub_18197D2A4(v313, 3, v299, 0, v89, v90, v91, v92);
      if (v192 == 90)
      {
        sub_18197D2A4(v313, 2, v300, 0, v175, v176, v177, v178);
        v197 = 1;
        v198 = 0;
        goto LABEL_245;
      }
    }

    else
    {
      sub_18197D2A4(v313, 3, v299, 0, v89, v90, v91, v92);
    }

    v203 = 0;
    goto LABEL_244;
  }

  sub_18197D2A4(v313, 3, 0, 0, v89, v90, v91, v92);
  if (*(v13 + 34) != 91)
  {
    if (*(v13 + 32) == 90)
    {
      v199 = *(v19 + 144);
      if (v299)
      {
        v200 = *(v311 + 72);
        v201 = (v200 - 1);
        *(v311 + 72) = v201;
        sub_18197DC1C(v313, 58, v312, v299, v304, v201, v177, v178);
        v202 = -v200;
      }

      else
      {
        v202 = -1;
      }

      sub_18197D2A4(v313, 1, 0, 0, v175, v176, v177, v178);
      sub_18197D2A4(v313, 2, v300, 0, v281, v282, v283, v284);
      if (v299)
      {
        v285 = *(v19 + 144);
        if (*(v19 + 148) <= v285)
        {
          sub_18194C8AC(v19, 9, 0, v199, 0, v176, v177, v178);
        }

        else
        {
          *(v19 + 144) = v285 + 1;
          v286 = *(v19 + 136) + 40 * v285;
          *v286 = 9;
          *(v286 + 8) = v199;
          *(v286 + 12) = 0;
          *(v286 + 28) = 0;
          *(v286 + 20) = 0;
          *(v286 + 36) = 0;
        }

        v292 = *(v19 + 24);
        if (*(v292 + 72) + *(v292 + 76) < 0)
        {
          sub_18195CB84(v292, v19, v202);
        }

        else
        {
          *(*(v292 + 80) + 4 * v202) = *(v19 + 144);
        }
      }
    }

    else
    {
      if (v299)
      {
        v259 = *(v19 + 144);
        if (*(v19 + 148) <= v259)
        {
          v259 = sub_18194C8AC(v19, 50, v299, 0, 1, v176, v177, v178);
        }

        else
        {
          *(v19 + 144) = v259 + 1;
          v260 = *(v19 + 136) + 40 * v259;
          *v260 = 50;
          *(v260 + 4) = v299;
          *(v260 + 8) = 0x100000000;
          *(v260 + 24) = 0;
          *(v260 + 32) = 0;
          *(v260 + 16) = 0;
        }
      }

      else
      {
        v259 = 0;
      }

      sub_18197D2A4(v313, 1, 0, 0, v175, v176, v177, v178);
      sub_18197D2A4(v313, 2, v300, 0, v287, v288, v289, v290);
      if (v299)
      {
        if (*(*v19 + 103))
        {
          v291 = &byte_1EA831A58;
        }

        else
        {
          v291 = (*(v19 + 136) + 40 * v259);
        }

        *(v291 + 2) = *(v19 + 144);
      }
    }
  }

LABEL_246:
  v204 = *(v19 + 24);
  v205 = -v301;
  if (*(v204 + 72) + *(v204 + 76) < 0)
  {
    sub_18195CB84(v204, v19, v205);
  }

  else
  {
    *(*(v204 + 80) + 4 * v205) = *(v19 + 144);
  }

  sub_1818B9E4C(v302, v173, v205, v174, v175, v176, v177, v178);
  v210 = *(v19 + 144);
  if (*(v13 + 16))
  {
    v211 = v306;
    if (*(v19 + 148) <= v210)
    {
      v213 = sub_18194C8AC(v19, 71, 0, v68, 0, v207, v208, v209);
    }

    else
    {
      *(v19 + 144) = v210 + 1;
      v212 = *(v19 + 136) + 40 * v210;
      *v212 = 71;
      *(v212 + 8) = v68;
      *(v212 + 12) = 0;
      *(v212 + 28) = 0;
      *(v212 + 20) = 0;
      *(v212 + 36) = 0;
      v213 = v210;
    }

    v210 = *(v19 + 144);
    v214 = v68;
    if (*(*v19 + 103))
    {
      v216 = &byte_1EA831A58;
    }

    else
    {
      v216 = (*(v19 + 136) + 40 * v294);
    }

    *(v216 + 2) = v210;
    v215 = v213;
  }

  else
  {
    v214 = v68;
    v215 = 0;
    v211 = v306;
  }

  DWORD2(v316) = 0;
  if (*(v19 + 148) <= v210)
  {
    v210 = sub_18194C8AC(v19, 36, v211, 0, 0, v207, v208, v209);
  }

  else
  {
    *(v19 + 144) = v210 + 1;
    v217 = *(v19 + 136) + 40 * v210;
    *v217 = 36;
    *(v217 + 4) = v211;
    *(v217 + 8) = 0u;
    *(v217 + 24) = 0u;
  }

  v218 = *(v13 + 33);
  if (*(v13 + 34) == 89)
  {
    if (v218 == 89)
    {
      v219 = *(v13 + 32);
      sub_18197D2A4(v313, 3, v299, 0, v206, v207, v208, v209);
      if (v219 == 90)
      {
        v220 = 2;
        v221 = v300;
        goto LABEL_269;
      }
    }

    else
    {
      v220 = 3;
      v221 = v299;
LABEL_269:
      sub_18197D2A4(v313, v220, v221, 0, v206, v207, v208, v209);
    }

    result = sub_18197D2A4(v313, 1, 0, 0, v206, v207, v208, v209);
    v241 = *(v19 + 144);
    if (*(*v19 + 103))
    {
LABEL_271:
      v242 = &byte_1EA831A58;
      goto LABEL_304;
    }
  }

  else
  {
    sub_18197D2A4(v313, 3, 0, 0, v206, v207, v208, v209);
    if (v218 == 87)
    {
      if (*(v13 + 32) == 90)
      {
        v226 = *(v19 + 144);
        v227 = sub_18197D2A4(v313, 2, v300, 1, v222, v223, v224, v225);
        v236 = sub_18197D2A4(v313, 1, 0, 1, v228, v229, v230, v231);
      }

      else
      {
        v226 = *(v19 + 144);
        if (*(v13 + 34) == 91)
        {
          v236 = sub_18197D2A4(v313, 1, v300, 1, v222, v223, v224, v225);
          v255 = 0;
        }

        else
        {
          v236 = sub_18197D2A4(v313, 1, v299, 1, v222, v223, v224, v225);
          v255 = v300;
        }

        v227 = sub_18197D2A4(v313, 2, v255, 1, v251, v252, v253, v254);
      }

      v261 = *(v19 + 144);
      if (*(v19 + 148) <= v261)
      {
        sub_18194C8AC(v19, 9, 0, v226, 0, v233, v234, v235);
      }

      else
      {
        *(v19 + 144) = v261 + 1;
        v262 = *(v19 + 136) + 40 * v261;
        *v262 = 9;
        *(v262 + 8) = v226;
        *(v262 + 12) = 0;
        *(v262 + 28) = 0;
        *(v262 + 20) = 0;
        *(v262 + 36) = 0;
      }

      v263 = *(v19 + 144);
      v264 = &byte_1EA831A58;
      if (!*(*v19 + 103))
      {
        v264 = (*(v19 + 136) + 40 * v227);
      }

      *(v264 + 2) = v263;
      result = sub_18197D2A4(v313, 1, 0, 1, v232, v233, v234, v235);
      v265 = result;
      v266 = *(v19 + 144);
      if (*(v19 + 148) <= v266)
      {
        result = sub_18194C8AC(v19, 9, 0, v263, 0, v238, v239, v240);
      }

      else
      {
        *(v19 + 144) = v266 + 1;
        v267 = *(v19 + 136) + 40 * v266;
        *v267 = 9;
        *(v267 + 8) = v263;
        *(v267 + 12) = 0;
        *(v267 + 28) = 0;
        *(v267 + 20) = 0;
        *(v267 + 36) = 0;
      }

      v241 = *(v19 + 144);
      v268 = *(*v19 + 103);
      if (*(*v19 + 103))
      {
        dword_1EA831A60 = *(v19 + 144);
        if (v268)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v269 = *(v19 + 136);
        *(v269 + 40 * v236 + 8) = v241;
        *(v269 + 40 * v265 + 8) = v241;
        if (v268)
        {
          goto LABEL_271;
        }
      }
    }

    else
    {
      v243 = *(v19 + 144);
      v244 = sub_18197D2A4(v313, 1, 0, 1, v222, v223, v224, v225);
      result = sub_18197D2A4(v313, 2, v300, 0, v245, v246, v247, v248);
      v249 = *(v19 + 144);
      if (*(v19 + 148) <= v249)
      {
        result = sub_18194C8AC(v19, 9, 0, v243, 0, v238, v239, v240);
      }

      else
      {
        *(v19 + 144) = v249 + 1;
        v250 = *(v19 + 136) + 40 * v249;
        *v250 = 9;
        *(v250 + 8) = v243;
        *(v250 + 12) = 0;
        *(v250 + 28) = 0;
        *(v250 + 20) = 0;
        *(v250 + 36) = 0;
      }

      v241 = *(v19 + 144);
      v256 = *(*v19 + 103);
      if (*(*v19 + 103))
      {
        dword_1EA831A60 = *(v19 + 144);
        if (v256)
        {
          goto LABEL_271;
        }
      }

      else
      {
        *(*(v19 + 136) + 40 * v244 + 8) = v241;
        if (v256)
        {
          goto LABEL_271;
        }
      }
    }
  }

  v242 = (*(v19 + 136) + 40 * v210);
LABEL_304:
  *(v242 + 2) = v241;
  v270 = *&v317[4];
  if (*(v19 + 148) <= v241)
  {
    result = sub_18194C8AC(v19, 146, *&v317[4], 0, 0, v238, v239, v240);
    if (*(v13 + 16))
    {
      goto LABEL_308;
    }
  }

  else
  {
    *(v19 + 144) = v241 + 1;
    v271 = *(v19 + 136) + 40 * v241;
    *v271 = 146;
    *(v271 + 4) = v270;
    *(v271 + 8) = 0u;
    *(v271 + 24) = 0u;
    if (!*(v13 + 16))
    {
      return result;
    }

LABEL_308:
    v272 = *(v13 + 132);
    if (v272)
    {
      v273 = *(v19 + 144);
      if (*(v19 + 148) <= v273)
      {
        result = sub_18194C8AC(v19, 71, 1uLL, v272, 0, v238, v239, v240);
      }

      else
      {
        *(v19 + 144) = v273 + 1;
        v274 = *(v19 + 136) + 40 * v273;
        *v274 = 0x100000047;
        *(v274 + 8) = v272;
        *(v274 + 12) = 0;
        *(v274 + 28) = 0;
        *(v274 + 20) = 0;
        *(v274 + 36) = 0;
      }

      v275 = *(v13 + 136);
      v276 = *(v19 + 144);
      if (*(v19 + 148) <= v276)
      {
        result = sub_18194C8AC(v19, 71, 0, v275, 0, v238, v239, v240);
      }

      else
      {
        *(v19 + 144) = v276 + 1;
        v277 = *(v19 + 136) + 40 * v276;
        *v277 = 71;
        *(v277 + 8) = v275;
        *(v277 + 12) = 0;
        *(v277 + 28) = 0;
        *(v277 + 20) = 0;
        *(v277 + 36) = 0;
      }
    }

    v278 = *(v19 + 144);
    if (*(*v19 + 103))
    {
      v279 = &byte_1EA831A58;
    }

    else
    {
      v279 = (*(v19 + 136) + 40 * v215);
    }

    *(v279 + 1) = v278;
    if (*(v19 + 148) <= v278)
    {

      return sub_18194C8AC(v19, 67, v214, 0, 0, v238, v239, v240);
    }

    else
    {
      *(v19 + 144) = v278 + 1;
      v280 = *(v19 + 136) + 40 * v278;
      *v280 = 67;
      *(v280 + 4) = v214;
      *(v280 + 8) = 0u;
      *(v280 + 24) = 0u;
    }
  }

  return result;
}

void *sub_1819679DC(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    sub_181929C84(a1, v4);
  }

  v5 = a2[6];
  if (v5)
  {
    sub_181929C84(a1, v5);
  }

  return sub_181929C84(a1, a2);
}

uint64_t sub_181967A38(uint64_t result, int *a2)
{
  if (a2 && *a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 2;
    do
    {
      result = sub_181967AA0(v3, *&a2[v5]);
      ++v4;
      v5 += 6;
    }

    while (v4 < *a2);
  }

  return result;
}

uint64_t sub_181967AA0(uint64_t a1, uint64_t a2)
{
  v3[4] = 0;
  v3[5] = a1;
  v3[0] = 0;
  v3[1] = sub_1818EAE9C;
  v3[2] = sub_181968AFC;
  v3[3] = sub_181968B10;
  return sub_1818B1590(v3, a2);
}

uint64_t sub_181967AF8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    return 0;
  }

  if (*v4 != 1 || (*(a2 + 7) & 1) != 0 || (*(a1 + 98) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = "min";
  for (i = v5; *i != *v6; ++i)
  {
    if (byte_181A20298[*i] != byte_181A20298[*v6])
    {
      for (j = "max"; ; ++j)
      {
        if (*v5 == *j)
        {
          if (!*v5)
          {
            v9 = a3;
            v10 = 1;
            v11 = 2;
            goto LABEL_35;
          }
        }

        else if (byte_181A20298[*v5] != byte_181A20298[*j])
        {
          return 0;
        }

        ++v5;
      }
    }

LABEL_7:
    ++v6;
  }

  if (*i)
  {
    goto LABEL_7;
  }

  for (k = (v4 + 2); ; k = (v14 + 16))
  {
    v14 = *k;
    v15 = *v14;
    if ((v15 - 173) >= 2)
    {
      break;
    }
  }

  if (v15 == 176)
  {
    v15 = v14[2];
  }

  if ((v15 - 154) < 3 || v15 == 118 || v15 == 168 && (v14[6] & 0x20) == 0 && (v16 = *(v14 + 9)) != 0 && ((v17 = *(v14 + 12), (v17 & 0x80000000) != 0) || (v18 = *(v16 + 8)) == 0 || v17 >= *(v16 + 54) || (*(v18 + 16 * v17 + 8) & 0xF) != 0))
  {
    v9 = a3;
    v10 = 0;
  }

  else
  {
    v9 = a3;
    v10 = 2;
  }

  v11 = 1;
LABEL_35:
  v19 = sub_1818C83A0(a1, v4, 0);
  *v9 = v19;
  if (v19)
  {
    *(v19 + 24) = v10;
  }

  return v11;
}

uint64_t sub_181967C9C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 40) | 0x20000;
  *(a2 + 40) = v3;
  if (*(result + 56) >= 1)
  {
    v4 = result;
    v5 = 0;
    do
    {
      v6 = *(*(v4 + 48) + 32 * v5);
      v7 = *(v6 + 32);
      if (v7 && *v7 >= 1)
      {
        v8 = 0;
        v9 = 2;
        do
        {
          v10 = *&v7[v9];
          v21 = 0;
          v22 = a2;
          v17 = 0;
          v18 = sub_1818EAE9C;
          v19 = sub_181968AFC;
          v20 = sub_181968B10;
          if (v10)
          {
            result = sub_181959BA0(&v17, v10);
          }

          ++v8;
          v9 += 6;
        }

        while (v8 < *v7);
      }

      v11 = *(v6 + 16);
      if (v11)
      {
        v12 = *(v11 + 32);
        if (v12)
        {
          if (*v12 >= 1)
          {
            v13 = 0;
            v14 = 2;
            do
            {
              v15 = *&v12[v14];
              v21 = 0;
              v22 = a2;
              v17 = 0;
              v18 = sub_1818EAE9C;
              v19 = sub_181968AFC;
              v20 = sub_181968B10;
              if (v15)
              {
                result = sub_181959BA0(&v17, v15);
              }

              ++v13;
              v14 += 6;
            }

            while (v13 < *v12);
          }
        }
      }

      if (*(v6 + 7))
      {
        v16 = *(*(v6 + 72) + 72);
        v21 = 0;
        v22 = a2;
        v17 = 0;
        v18 = sub_1818EAE9C;
        v19 = sub_181968AFC;
        v20 = sub_181968B10;
        if (v16)
        {
          result = sub_181959BA0(&v17, v16);
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 56));
    v3 = *(a2 + 40);
  }

  *(a2 + 40) = v3 & 0xFFFDFFFF;
  return result;
}

uint64_t sub_181967E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 44);
  *(a2 + 40) = v3;
  if (*(a2 + 4))
  {
    v4 = **(a1 + 56);
    if (v3 >= 1)
    {
      v5 = v4 - 1;
      v6 = *(a2 + 32);
      if (v3 >= 9)
      {
        v8 = v3 & 7;
        if ((v3 & 7) == 0)
        {
          v8 = 8;
        }

        v7 = v3 - v8;
        v9 = vdupq_n_s32(v5);
        v10 = (v6 + 152);
        v11 = v7;
        v12 = v9;
        do
        {
          v13.i32[0] = *(v10 - 32);
          v13.i32[1] = *(v10 - 24);
          v13.i32[2] = *(v10 - 16);
          v13.i32[3] = *(v10 - 8);
          v14.i32[0] = *v10;
          v14.i32[1] = v10[8];
          v14.i32[2] = v10[16];
          v14.i32[3] = v10[24];
          v9 = vmaxq_s32(v13, v9);
          v12 = vmaxq_s32(v14, v12);
          v10 += 64;
          v11 -= 8;
        }

        while (v11);
        v5 = vmaxvq_s32(vmaxq_s32(v9, v12));
      }

      else
      {
        v7 = 0;
      }

      v15 = (v6 + 32 * v7 + 24);
      v16 = v3 - v7;
      do
      {
        v18 = *v15;
        v15 += 8;
        v17 = v18;
        if (v18 > v5)
        {
          v5 = v17;
        }

        --v16;
      }

      while (v16);
      v4 = v5 + 1;
    }

    *(a2 + 4) = v4;
  }

  return sub_181967C9C(a2, a3);
}

uint64_t sub_181967F64(uint64_t result)
{
  v7 = 0u;
  v8 = 0u;
  v6[0] = 0;
  v6[1] = sub_18197FD20;
  v1 = *(result + 56);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(*(v2 + 48) + v3);
      if (v5)
      {
        result = sub_181959BA0(v6, v5);
        v1 = *(v2 + 56);
      }

      v3 += 32;
    }
  }

  return result;
}

void *sub_181967FF4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 56) >= 1)
  {
    v8 = a2;
    v9 = result;
    v10 = 0;
    v11 = result[2];
    v63 = result + 23;
    for (i = *(a2 + 48); ; i += 4)
    {
      if (*(v9 + 13))
      {
        return result;
      }

      v14 = *i;
      v15 = *(*i + 32);
      v16 = *(i + 6);
      if ((v16 & 0x80000000) == 0)
      {
        break;
      }

LABEL_68:
      if (v15)
      {
        v57 = *v15;
      }

      else
      {
        v57 = 0;
      }

      v58 = (v8[4] + v10 + v8[10]);
      v59 = *(v11 + 36);
      if (*(v11 + 37) <= v59)
      {
        sub_18194C8AC(v11, 165, v58, v57, 0, a6, a7, a8);
      }

      else
      {
        *(v11 + 36) = v59 + 1;
        v60 = &v11[17][5 * v59];
        *v60 = 165;
        *(v60 + 4) = v58;
        *(v60 + 8) = v57;
        *(v60 + 12) = 0;
        *(v60 + 28) = 0;
        *(v60 + 20) = 0;
        *(v60 + 36) = 0;
      }

      v61 = i[1];
      result = *v11;
      if (*(*v11 + 103))
      {
        if ((*(v61 + 4) & 0x10) != 0)
        {
          result = sub_181939EC8(result, v61);
        }
      }

      else
      {
        v13 = &v11[17][5 * *(v11 + 36)];
        *(v13 - 39) = -7;
        *(v13 - 24) = v61;
      }

      if (++v10 >= v8[14])
      {
        return result;
      }
    }

    v17 = *v15;
    v65 = *(*i + 32);
    if (*v15 == 1)
    {
      if (*(v9 + 31))
      {
        v18 = *(v9 + 31) - 1;
        *(v9 + 31) = v18;
        v66 = *(v63 + v18);
        if (!*(i + 28))
        {
          goto LABEL_15;
        }

LABEL_18:
        v25 = **(*(v14 + 16) + 32);
        if (*(i + 29))
        {
          v24 = v25;
        }

        else
        {
          v24 = v25 + 1;
        }

LABEL_21:
        v26 = *(v11 + 36);
        if (*(v11 + 37) <= v26)
        {
          v64 = sub_18194C8AC(v11, 36, v16, 0, 0, a6, a7, a8);
          if (v17 < 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *(v11 + 36) = v26 + 1;
          v64 = v26;
          v27 = &v11[17][5 * v26];
          *v27 = 36;
          *(v27 + 4) = v16;
          *(v27 + 8) = 0u;
          *(v27 + 24) = 0u;
          if (v17 < 1)
          {
            goto LABEL_30;
          }
        }

        v28 = v17;
        do
        {
          while (1)
          {
            v30 = *(i + 6);
            v31 = (v24 - 1 + v28);
            v32 = v66 - 1 + v28;
            v33 = *(v11 + 36);
            if (*(v11 + 37) <= v33)
            {
              break;
            }

            *(v11 + 36) = v33 + 1;
            v29 = &v11[17][5 * v33];
            *v29 = 94;
            *(v29 + 4) = v30;
            *(v29 + 8) = v31;
            *(v29 + 12) = v32;
            *(v29 + 24) = 0;
            *(v29 + 32) = 0;
            *(v29 + 16) = 0;
            v20 = __OFSUB__(v28--, 1);
            if ((v28 < 0) ^ v20 | (v28 == 0))
            {
              goto LABEL_30;
            }
          }

          sub_18194C8AC(v11, 94, v30, v31, v32, a6, a7, a8);
          v20 = __OFSUB__(v28--, 1);
        }

        while (!((v28 < 0) ^ v20 | (v28 == 0)));
LABEL_30:
        if (!*(i + 30))
        {
LABEL_48:
          v8 = a2;
          v46 = (*(a2 + 16) + v10 + *(a2 + 40));
          v47 = *(v11 + 36);
          if (*(v11 + 37) <= v47)
          {
            sub_18194C8AC(v11, 162, 0, v66, v46, a6, a7, a8);
          }

          else
          {
            *(v11 + 36) = v47 + 1;
            v48 = &v11[17][5 * v47];
            *v48 = 162;
            *(v48 + 8) = v66;
            *(v48 + 12) = v46;
            *(v48 + 24) = 0;
            *(v48 + 32) = 0;
            *(v48 + 16) = 0;
          }

          v49 = i[1];
          if (*(*v11 + 103))
          {
            if ((*(v49 + 4) & 0x10) != 0)
            {
              sub_181939EC8(*v11, v49);
            }
          }

          else
          {
            v50 = &v11[17][5 * *(v11 + 36)];
            *(v50 - 39) = -7;
            *(v50 - 24) = v49;
          }

          v51 = *(v11 + 36);
          if (v51 >= 1)
          {
            *(&v11[17][5 * v51 - 4] - 3) = v17;
          }

          v52 = *(i + 6);
          v53 = (v64 + 1);
          if (*(v11 + 37) <= v51)
          {
            sub_18194C8AC(v11, 39, v52, v53, 0, a6, a7, a8);
          }

          else
          {
            *(v11 + 36) = v51 + 1;
            v54 = &v11[17][5 * v51];
            *v54 = 39;
            *(v54 + 4) = v52;
            *(v54 + 8) = v53;
            *(v54 + 12) = 0;
            *(v54 + 28) = 0;
            *(v54 + 20) = 0;
            *(v54 + 36) = 0;
          }

          v55 = &byte_1EA831A58;
          if (!*(*v11 + 103))
          {
            v55 = &v11[17][5 * v64];
          }

          *(v55 + 2) = *(v11 + 36);
          if (v17 == 1)
          {
            v15 = v65;
            if (v66)
            {
              v56 = *(v9 + 31);
              if (v56 <= 7)
              {
                *(v9 + 31) = v56 + 1;
                *(v63 + v56) = v66;
              }
            }
          }

          else
          {
            v15 = v65;
            if (*(v9 + 11) < v17)
            {
              *(v9 + 11) = v17;
              *(v9 + 12) = v66;
            }
          }

          goto LABEL_68;
        }

        if (*(v9 + 31))
        {
          v34 = *(v9 + 31) - 1;
          *(v9 + 31) = v34;
          v35 = *(v63 + v34);
          if (*(i + 28))
          {
            goto LABEL_33;
          }
        }

        else
        {
          v35 = (*(v9 + 15) + 1);
          *(v9 + 15) = v35;
          if (*(i + 28))
          {
LABEL_33:
            v36 = 0;
            if (v17 < 1)
            {
              goto LABEL_45;
            }

LABEL_37:
            v37 = (v36 + v24 + 2 * v17 - 1);
            v38 = v17;
            do
            {
              v40 = *(i + 6);
              v41 = *(v11 + 36);
              if (*(v11 + 37) <= v41)
              {
                sub_18194C8AC(v11, 94, v40, v37, v35, a6, a7, a8);
              }

              else
              {
                *(v11 + 36) = v41 + 1;
                v42 = &v11[17][5 * v41];
                *v42 = 94;
                *(v42 + 4) = v40;
                *(v42 + 8) = v37;
                *(v42 + 12) = v35;
                *(v42 + 24) = 0;
                *(v42 + 32) = 0;
                *(v42 + 16) = 0;
              }

              v43 = v66 - 1 + v38;
              v44 = *(v11 + 36);
              if (*(v11 + 37) > v44)
              {
                *(v11 + 36) = v44 + 1;
                v39 = &v11[17][5 * v44];
                *v39 = 182;
                *(v39 + 4) = v35;
                *(v39 + 8) = v43;
                *(v39 + 12) = 0;
                *(v39 + 28) = 0;
                *(v39 + 20) = 0;
                *(v39 + 36) = 0;
              }

              else
              {
                sub_18194C8AC(v11, 182, v35, v43, 0, a6, a7, a8);
              }

              v37 = (v37 - 1);
              v20 = __OFSUB__(v38--, 1);
            }

            while (!((v38 < 0) ^ v20 | (v38 == 0)));
LABEL_45:
            if (v35)
            {
              v45 = *(v9 + 31);
              if (v45 <= 7)
              {
                *(v9 + 31) = v45 + 1;
                *(v63 + v45) = v35;
              }
            }

            goto LABEL_48;
          }
        }

        v36 = *(i + 29) == 0;
        if (v17 < 1)
        {
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      v23 = *(v9 + 15) + 1;
      v66 = v23;
    }

    else
    {
      v19 = *(v9 + 11);
      v20 = __OFSUB__(v19, v17);
      v21 = v19 - v17;
      if (v21 < 0 == v20)
      {
        v66 = *(v9 + 12);
        *(v9 + 11) = v21;
        *(v9 + 12) = v66 + v17;
        if (*(i + 28))
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v22 = *(v9 + 15);
      v66 = v22 + 1;
      v23 = v22 + v17;
    }

    *(v9 + 15) = v23;
    if (*(i + 28))
    {
      goto LABEL_18;
    }

LABEL_15:
    v24 = 0;
    goto LABEL_21;
  }

  return result;
}

void *sub_181968590(void *result, int a2, int a3, int a4)
{
  if (!*(result + 13) && (a2 - 1) <= 1)
  {
    v5 = result[2];
    result = *v5;
    if (!*(*v5 + 103))
    {
      v6 = v5[17] + 40 * a4;
      v7 = a2;
      v8 = a3;
      sub_1818A3B68(result, *(v6 + 1), *(v6 + 16));
      a2 = v7;
      a3 = v8;
      *(v6 + 16) = 0;
      *v6 = 187;
      result = *v5;
      if (!*(*v5 + 103))
      {
        v9 = v5[17] + 40 * a4;
        if (*(v9 + 40) == 188)
        {
          result = sub_1818A3B68(result, *(v9 + 41), *(v9 + 56));
          a2 = v7;
          a3 = v8;
          *(v9 + 56) = 0;
          *(v9 + 40) = 187;
        }
      }
    }

    if (a2 == 2)
    {
      if (*(*v5 + 103))
      {
        v10 = &byte_1EA831A58;
      }

      else
      {
        v10 = (v5[17] + 40 * a4);
      }

      *v10 = 75;
      *(v10 + 1) = 1;
      *(v10 + 2) = a3;
    }
  }

  return result;
}

uint64_t sub_1819686A8(void *a1, uint64_t a2)
{
  if (a1[6])
  {
    return 0;
  }

  v2 = a1[4];
  if (*v2 != 1)
  {
    return 0;
  }

  v3 = a1[5];
  if (*v3 != 1)
  {
    return 0;
  }

  if ((*(v3 + 33) & 4) != 0)
  {
    return 0;
  }

  if (*(a2 + 56) != 1)
  {
    return 0;
  }

  if (a1[8])
  {
    return 0;
  }

  v4 = *(v3 + 24);
  if (*(v4 + 63))
  {
    return 0;
  }

  v5 = *(v2 + 8);
  if (*v5 != 169 || *(v5 + 8) != a2 || (*(*(*(a2 + 48) + 8) + 5) & 1) == 0)
  {
    return 0;
  }

  if ((*(v5 + 1) & 0x1000004) != 0)
  {
    return 0;
  }

  return v4;
}

_BYTE *sub_181968744(_BYTE *result, uint64_t a2, uint64_t a3)
{
  if (result[301] == 2)
  {
    if (a3)
    {
      if ((*(a2 + 48) & 0x80) == 0)
      {
        v3 = *a2;
LABEL_9:
        v5 = *a3;
        v4 = " USING COVERING INDEX ";
        return sub_18195AD8C(result, 0, "SCAN %s%s%s", v3, v4, v5);
      }

      v3 = *a2;
      if ((*(a3 + 99) & 3) != 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = *a2;
    }

    v4 = &byte_181A2878D;
    v5 = &byte_181A2878D;
    return sub_18195AD8C(result, 0, "SCAN %s%s%s", v3, v4, v5);
  }

  return result;
}

uint64_t sub_1819687D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a2 + 68) & 4) != 0 && *(a2 + 65))
  {
    v8 = *(a2 + 64) + 1;
    v9 = a2 + 120 * *(a2 + 64) + 872;
    while (--v8 >= 1)
    {
      v10 = (v9 - 120);
      v11 = *(*(v9 - 40) + 48);
      v9 -= 120;
      if ((v11 & 4) != 0)
      {
        v12 = *v10;
        goto LABEL_9;
      }
    }

    v12 = *(a2 + 52);
LABEL_9:
    v13 = *(result + 144);
    if (*(result + 148) <= v13)
    {
      return sub_18194C8AC(result, 9, 0, v12, 0, a6, a7, a8);
    }

    else
    {
      *(result + 144) = v13 + 1;
      v14 = *(result + 136) + 40 * v13;
      *v14 = 9;
      *(v14 + 8) = v12;
      *(v14 + 12) = 0;
      *(v14 + 28) = 0;
      *(v14 + 20) = 0;
      *(v14 + 36) = 0;
    }
  }

  return result;
}

uint64_t sub_18196887C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != 169 || *(a2 + 8))
  {
    return 0;
  }

  sub_181910730(*a1, "misuse of aggregate: %s()", a3, a4, a5, a6, a7, a8, *(a2 + 1));
  return 0;
}

int *sub_1819688D4(uint64_t *a1, int *a2, int *a3, int a4)
{
  v4 = a2;
  if (!a3)
  {
    return v4;
  }

  v18 = a2 ? *a2 : 0;
  if (*a3 < 1)
  {
    return v4;
  }

  v7 = 0;
  while (1)
  {
    v9 = *a1;
    v10 = &a3[6 * v7 + 2];
    if (*v10)
    {
      break;
    }

    if (*(v9 + 103))
    {
      return v4;
    }

    if (a4)
    {
      v12 = 0;
      v13 = 0;
      v20 = 0;
      goto LABEL_25;
    }

    v12 = 0;
    if (!v4)
    {
LABEL_31:
      v16 = sub_18197FD9C(*a1, v12);
LABEL_32:
      v4 = v16;
      if (!v16)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_28:
    v15 = *v4;
    if (v4[1] <= *v4)
    {
      v16 = sub_18197FE14(*a1, v4, v12);
      goto LABEL_32;
    }

    *v4 = v15 + 1;
    v8 = &v4[6 * v15];
    *(v8 + 2) = 0;
    *(v8 + 3) = 0;
    *(v8 + 1) = v12;
LABEL_8:
    LOBYTE(v4[6 * v7 + 6 + 6 * v18]) = *(v10 + 16);
LABEL_9:
    if (++v7 >= *a3)
    {
      return v4;
    }
  }

  v11 = sub_1818C7FEC(*a1, *v10, 0, 0);
  v12 = v11;
  if (!*(v9 + 103))
  {
    if (a4)
    {
      v20 = 0;
      if (v11)
      {
        v13 = v11;
        while (1)
        {
          v14 = *(v13 + 1);
          if ((v14 & 0x82000) == 0)
          {
            break;
          }

          if ((v14 & 0x80000) != 0)
          {
            v13 = *(*(v13 + 4) + 8);
            if (!v13)
            {
              break;
            }
          }

          else
          {
            if (*v13 != 114)
            {
              break;
            }

            v13 = *(v13 + 2);
            if (!v13)
            {
              break;
            }
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_25:
      if (sub_18195A9F8(v13, &v20, 0))
      {
        *v13 = 122;
        *(v13 + 1) &= 0xCFFFF7FF;
        *(v13 + 1) = 0;
      }
    }

    if (!v4)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v11)
  {
    sub_1819439E0(v9, v11);
  }

  return v4;
}

uint64_t sub_181968AD0(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 169)
  {
    v2 = a2[2];
    if (*(a1 + 32) <= v2)
    {
      a2[2] = v2 + 1;
    }
  }

  return 0;
}

uint64_t sub_181968B20(uint64_t **a1, unsigned __int8 *a2)
{
  if ((*(a2 + 5) & 0x140) != 0)
  {
    return 0;
  }

  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = *(a2 + 26);
    v5 = *a1;
    v6 = **a1;
    if (*a2 == 169)
    {
      if (*(v3 + 56) > v4)
      {
        v7 = 32 * *(a2 + 26);
        if (*(*(v3 + 48) + v7) == a2)
        {
          v8 = sub_1818C7FEC(v6, a2, 0, 0);
          if (v8)
          {
            v9 = v8;
            if (sub_18195B158(v5, sub_18195B270, v8))
            {
              *(*(v3 + 48) + v7) = v9;
            }
          }
        }
      }
    }

    else if (*(v3 + 40) > v4)
    {
      v10 = *(a2 + 26);
      if (*(*(v3 + 32) + 32 * v10 + 8) == a2)
      {
        v11 = sub_1818C7FEC(v6, a2, 0, 0);
        if (v11)
        {
          v12 = v11;
          if (sub_18195B158(v5, sub_18195B270, v11))
          {
            *(*(v3 + 32) + 32 * v10 + 8) = v12;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_181968C50(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 40);
  v4 = *a1;
  v5 = *a2;
  if (v3[4])
  {
    if (v5 != 168)
    {
      return 0;
    }

    v6 = v3[1];
    v7 = *v6;
    if (v7 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v8 = 0;
      v9 = (v6 + 9);
      while (1)
      {
        v10 = *v9;
        v9 += 18;
        if (*(a2 + 11) == v10)
        {
          break;
        }

        if (v7 == ++v8)
        {
          return 0;
        }
      }
    }

    if (v8 == v7)
    {
      return 0;
    }
  }

  if ((v5 - 168) < 2 || v5 == 179)
  {
    goto LABEL_17;
  }

  if (v5 != 172 || (a2[7] & 1) == 0)
  {
    return 0;
  }

  v11 = *v3;
  if (!*v3)
  {
LABEL_17:
    v12 = *v4;
    if (*(*v4 + 103))
    {
      return 2;
    }

    v13 = v3[2];
    if (v13 && *v13 >= 1)
    {
      v14 = 0;
      v15 = 2;
      while (1)
      {
        v16 = sub_181959260(0, *&v13[v15], a2, 0xFFFFFFFFLL);
        v13 = v3[2];
        if (!v16)
        {
          break;
        }

        ++v14;
        v15 += 6;
        if (v14 >= *v13)
        {
          v12 = *v4;
          goto LABEL_24;
        }
      }

      v22 = 0;
      if (!v13)
      {
LABEL_37:
        if (*(*v4 + 103))
        {
          return 2;
        }

        return 0;
      }

LABEL_34:
      v23 = *(a2 + 1) & 0x200;
      *(a2 + 1) |= 0x8000000u;
      sub_1819439E0(*v4, a2);
      *(a2 + 3) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
      *a2 = 0u;
      *a2 = -88;
      if (v22)
      {
        LODWORD(v14) = *v3[2] - 1;
      }

      *(a2 + 11) = *(*v3 + 88);
      *(a2 + 12) = v14;
      *(a2 + 9) = v3[3];
      *(a2 + 1) = v23;
      goto LABEL_37;
    }

LABEL_24:
    v17 = sub_1818C7FEC(v12, a2, 0, 0);
    if (v17 && *v17 == 169)
    {
      *v17 = -84;
    }

    v18 = v3[2];
    if (v18)
    {
      v19 = *v18;
      if (v18[1] > *v18)
      {
        *v18 = v19 + 1;
        v20 = &v18[6 * v19];
        *(v20 + 2) = 0;
        *(v20 + 3) = 0;
        *(v20 + 1) = v17;
        goto LABEL_33;
      }

      v21 = sub_18197FE14(*v4, v18, v17);
    }

    else
    {
      v21 = sub_18197FD9C(*v4, v17);
    }

    v18 = v21;
LABEL_33:
    v3[2] = v18;
    LODWORD(v14) = -1;
    v22 = 1;
    if (!v18)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  while (*(a2 + 9) != v11)
  {
    v11 = *(v11 + 64);
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  return 1;
}

uint64_t sub_181968E90(void *a1, uint64_t a2)
{
  v2 = a1[5];
  v3 = *(v2 + 32);
  if (v3 == a2)
  {
    return 0;
  }

  *(v2 + 32) = a2;
  sub_1818AEE70(a1, a2);
  *(v2 + 32) = v3;
  return 1;
}

uint64_t sub_181968ED4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = v1 + 2;
    do
    {
      v6 = sub_1818D0A24(*&v5[6 * v4]);
      v7 = a1;
      while (1)
      {
        v7 = *(v7 + 80);
        if (!v7)
        {
          break;
        }

        if (sub_1818D0A24(*(*(v7 + 32) + 24 * v4 + 8)) != v6)
        {
          return 1;
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_181968F78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_181969238(a1, a4, *(a2 + 40), a3);
  v7[0] = 0;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = a4;
  v7[1] = sub_18196931C;
  v7[2] = sub_181961BBC;
  return sub_1818AEE70(v7, a2);
}

void *sub_181968FEC(void *a1, void *a2)
{
  if (a2)
  {
    if (a1[103])
    {
      return sub_18194E094(a1, a2);
    }

    v2 = *(a2 + 11) - 1;
    *(a2 + 11) = v2;
    if (!v2)
    {
      return sub_18194E094(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_181969010(uint64_t result, void *a2, int a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = v4[4];
      if (v6 && *v6 >= 1)
      {
        v7 = 0;
        v8 = 2;
        do
        {
          *&v6[v8] = sub_1818EC4E8(v5, *&v6[v8]);
          ++v7;
          v8 += 6;
        }

        while (v7 < *v6);
      }

      v9 = v4[7];
      if (v9 && *v9 >= 1)
      {
        v10 = 0;
        v11 = 2;
        do
        {
          *&v9[v11] = sub_1818EC4E8(v5, *&v9[v11]);
          ++v10;
          v11 += 6;
        }

        while (v10 < *v9);
      }

      v12 = v4[9];
      if (v12 && *v12 >= 1)
      {
        v13 = 0;
        v14 = 2;
        do
        {
          *&v12[v14] = sub_1818EC4E8(v5, *&v12[v14]);
          ++v13;
          v14 += 6;
        }

        while (v13 < *v12);
      }

      v4[8] = sub_1818EC4E8(v5, v4[8]);
      result = sub_1818EC4E8(v5, v4[6]);
      v4[6] = result;
      v15 = v4[5];
      v16 = *v15;
      if (*v15 >= 1)
      {
        v17 = v15 + 2;
        do
        {
          v19 = *(v17 + 25);
          if ((v19 & 4) != 0)
          {
            result = sub_181969010(v5, **(v17 + 8), 1);
            v19 = *(v17 + 25);
          }

          if ((v19 & 8) != 0)
          {
            v20 = *(v17 + 5);
            if (v20)
            {
              if (*v20 >= 1)
              {
                v21 = 0;
                v22 = 2;
                do
                {
                  result = sub_1818EC4E8(v5, *&v20[v22]);
                  *&v20[v22] = result;
                  ++v21;
                  v22 += 6;
                }

                while (v21 < *v20);
              }
            }
          }

          v17 += 18;
          v18 = __OFSUB__(v16--, 1);
        }

        while (!((v16 < 0) ^ v18 | (v16 == 0)));
      }

      if (!a3)
      {
        break;
      }

      v4 = v4[10];
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1819691D0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2[0] = 0;
    v2[3] = 0;
    v2[4] = 0;
    v2[5] = a2;
    v2[1] = sub_181969390;
    v2[2] = sub_181961BBC;
    *(a2 + 32) = 0;
    return sub_1818AEE70(v2, result);
  }

  return result;
}

uint64_t sub_181969238(uint64_t result, uint64_t a2, int *a3, int a4)
{
  if (*a3 >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 + 4;
    v10 = a3 + 2;
    do
    {
      if (v8 != a4)
      {
        v11 = *(v10 + 25);
        v12 = v10[7];
        if ((v11 & 0x80) == 0 || (v13 = *(v9 + 4 * v12)) == 0)
        {
          v14 = *(v7 + 56);
          *(v7 + 56) = v14 + 1;
          *(v9 + 4 * v12) = v14;
          v13 = *(v9 + 4 * v10[7]);
          v11 = *(v10 + 25);
        }

        v10[7] = v13;
        if ((v11 & 4) != 0)
        {
          for (i = **(v10 + 8); i; i = *(i + 80))
          {
            result = sub_181969238(v7, a2, *(i + 40), 0xFFFFFFFFLL);
          }
        }
      }

      ++v8;
      v10 += 18;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t sub_18196931C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 179 || v2 == 168)
  {
    v3 = *(a1 + 40);
    v4 = *(a2 + 11);
    if (v4 < *v3)
    {
      v5 = v3[v4 + 1];
      if (v5 >= 1)
      {
        *(a2 + 11) = v5;
      }
    }
  }

  if (a2[4])
  {
    v6 = *(a1 + 40);
    v7 = *(a2 + 14);
    if (v7 < *v6)
    {
      v8 = v6[v7 + 1];
      if (v8 >= 1)
      {
        *(a2 + 14) = v8;
      }
    }
  }

  return 0;
}

uint64_t sub_181969390(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 168)
  {
    v2 = *(a1 + 40);
    if (*(v2 + 28) == *(a2 + 11))
    {
      v3 = *(a2 + 12);
      if ((v3 & 0x80000000) == 0)
      {
        v4 = *(a2 + 9);
        if ((*(v4 + 48) & 0x60) != 0 && (*(*(v4 + 8) + 16 * v3 + 14) & 0x60) != 0)
        {
          v5 = *(v4 + 54);
          if (v5 <= 63)
          {
            v6 = ~(-1 << v5);
          }

          else
          {
            v6 = -1;
          }
        }

        else
        {
          if (v3 >= 0x3F)
          {
            LOBYTE(v3) = 63;
          }

          v6 = 1 << v3;
        }

        *(v2 + 32) |= v6;
      }
    }
  }

  return 0;
}

uint64_t sub_18196941C(int a1, int a2)
{
  if (a1 < a2)
  {
    if (a1 + 49 < a2)
    {
      return a2;
    }

    if (a1 + 31 < a2)
    {
      return (a2 + 1);
    }

    LOWORD(a1) = byte_181A245A6[a2 - a1] + a2;
    return a1;
  }

  if (a2 + 49 < a1)
  {
    return a1;
  }

  if (a2 + 31 >= a1)
  {
    return (byte_181A245A6[a1 - a2] + a1);
  }

  else
  {
    return (a1 + 1);
  }
}

void *sub_1819694AC(void *result, uint64_t a2)
{
  if (a2)
  {
    return sub_1818BB408(result, a2, 1);
  }

  return result;
}

uint64_t sub_1819694BC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a2 + 72);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a1;
  v7 = v5 + 2;
  v8 = 9 * v7;
  v9 = sub_181929E8C(*a1, v8 + 32, 0x2004093837F09);
  v16 = v9;
  if (v9)
  {
    *(v9 + 6) = v5 + 1;
    *(v9 + 8) = v7;
    *(v9 + 4) = *(v6 + 100);
    *(v9 + 16) = v6;
    *(v9 + 24) = v9 + 32 + 8 * v7;
    *v9 = 1;
    bzero((v9 + 32), v8);
  }

  else
  {
    if (*(v6 + 103) || *(v6 + 104))
    {
      return v16;
    }

    *(v6 + 103) = 1;
    if (*(v6 + 220) >= 1)
    {
      *(v6 + 424) = 1;
    }

    ++*(v6 + 432);
    *(v6 + 436) = 0;
    v39 = *(v6 + 344);
    if (!v39)
    {
      return v16;
    }

    sub_181910730(v39, "out of memory", v10, v11, v12, v13, v14, v15, v42);
    v40 = *(v6 + 344);
    *(v40 + 24) = 7;
    v41 = *(v40 + 216);
    if (!v41)
    {
      return v16;
    }

    do
    {
      ++*(v41 + 52);
      *(v41 + 24) = 7;
      v41 = *(v41 + 216);
    }

    while (v41);
  }

  if (v16 && v5 >= 1)
  {
    v23 = 0;
    v24 = v16 + 32;
    v25 = v4 + 6;
    v26 = v5;
    v43 = v3;
    v44 = v2;
    v45 = v5;
    v46 = v16;
    while (1)
    {
      v29 = *(v25 - 2);
      if ((*(v29 + 5) & 2) == 0)
      {
        break;
      }

      v27 = sub_1818B4720(v3, *(v25 - 2), v17, v18, v19, v20, v21, v22);
LABEL_10:
      *(v24 + 8 * v23) = v27;
      v28 = *v25;
      v25 += 6;
      *(*(v16 + 24) + v23++) = v28;
      if (v26 == v23)
      {
        return v16;
      }
    }

    v27 = sub_1818E450C(v3, v2, *(v25 + 2) - 1, v18, v19, v20, v21, v22);
    if (v27)
    {
      v30 = *v27;
      if (!*v27)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v27 = *(v6 + 16);
      v30 = *v27;
      if (!*v27)
      {
LABEL_20:
        *(v25 - 2) = v29;
        goto LABEL_10;
      }
    }

    v31 = v24;
    v32 = v6;
    v33 = v27;
    v34 = strlen(v30) & 0x3FFFFFFF;
    if (v34)
    {
      v35 = sub_181929E8C(*v3, v34 + 81, 0x1032040B79D87BDLL);
      if (v35)
      {
        *(v35 + 48) = 0u;
        *(v35 + 64) = 0u;
        *(v35 + 16) = 0u;
        *(v35 + 32) = 0u;
        *v35 = 0u;
        *v35 = 114;
        *(v35 + 52) = -1;
        v36 = v35 + 80;
        *(v35 + 8) = v35 + 80;
        v37 = v35;
        memcpy((v35 + 80), v30, v34);
        *(v36 + v34) = 0;
        *(v37 + 40) = 1;
        *(v37 + 16) = v29;
        *(v37 + 4) |= 0x2200u;
        v29 = v37;
        v3 = v43;
        v2 = v44;
      }
    }

    v27 = v33;
    v6 = v32;
    v24 = v31;
    v26 = v45;
    v16 = v46;
    goto LABEL_20;
  }

  return v16;
}

uint64_t sub_181969748(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 1)
  {
    v8 = *(result + 144);
    if (*(result + 148) <= v8)
    {
      return sub_18194C8AC(result, 50, a2, a3, 1, a6, a7, a8);
    }

    else
    {
      *(result + 144) = v8 + 1;
      v9 = *(result + 136) + 40 * v8;
      *v9 = 50;
      *(v9 + 4) = a2;
      *(v9 + 8) = a3;
      *(v9 + 12) = 1;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = 0;
    }
  }

  return result;
}

uint64_t sub_1819697A4(_BYTE *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, unint64_t a5, unint64_t a6, char *__s, uint64_t a8)
{
  HIDWORD(v112) = a8;
  v9 = a4;
  v12 = *(a1 + 2);
  v13 = *(v12 + 36);
  v115 = *(a1 + 18);
  v14 = (v115 - 1);
  *(a1 + 18) = v14;
  if (a6)
  {
    v16 = a6;
    if (*(v12 + 37) <= v13)
    {
      v18 = v13;
      LODWORD(v112) = sub_18194C8AC(v12, 17, a6, 0, 0, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v13 + 1;
      v17 = &v12[17][5 * v13];
      *v17 = 17;
      *(v17 + 4) = a6;
      *(v17 + 8) = 0u;
      *(v17 + 24) = 0u;
      v18 = v13;
      LODWORD(v112) = v13;
    }

    v19 = a5;
    v20 = v16 + 1;
    v21 = *(a3 + 12);
    v22 = *(a3 + 16);
    if (__s)
    {
      ++*__s;
    }

    v23 = *(v12 + 36);
    if (*(v12 + 37) <= v23)
    {
      v23 = sub_18194C8AC(v12, 90, v21, (v16 + 1), v22, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v23 + 1;
      v24 = &v12[17][5 * v23];
      *v24 = 90;
      *(v24 + 4) = v21;
      *(v24 + 8) = v20;
      *(v24 + 12) = v22;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
    }

    if (*(*v12 + 103))
    {
      if (__s)
      {
        if (!(*v12)[103] && (*__s)-- == 1)
        {
          sub_181939EC8(*(__s + 2), __s);
        }
      }
    }

    else
    {
      v26 = v23;
      if (v23 < 0)
      {
        v26 = *(v12 + 36) - 1;
      }

      v27 = &v12[17][5 * v26];
      if (*(v27 + 1))
      {
        sub_18194CB90(v12, v27, __s, 0xFFFFFFF8);
      }

      else if (__s)
      {
        *(v27 + 16) = __s;
        *(v27 + 1) = -8;
      }
    }

    v28 = (v23 + 2);
    v29 = *(v12 + 36);
    if (*(v12 + 37) <= v29)
    {
      sub_18194C8AC(v12, 14, v28, v14, (v23 + 2), a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v29 + 1;
      v30 = &v12[17][5 * v29];
      *v30 = 14;
      *(v30 + 4) = v28;
      *(v30 + 8) = v14;
      *(v30 + 12) = v28;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0;
      *(v30 + 16) = 0;
    }

    a5 = v19;
    v31 = *(v12 + 36);
    v13 = v18;
    if (*(*v12 + 103))
    {
      v32 = &byte_1EA831A58;
    }

    else
    {
      v32 = &v12[17][5 * v112];
    }

    v9 = a4;
    *(v32 + 2) = v31;
    v33 = *(a3 + 12);
    v34 = (*(a3 + 16) - 1);
    if (*(v12 + 37) <= v31)
    {
      sub_18194C8AC(v12, 80, v33, (v16 + 1), v34, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v31 + 1;
      v35 = &v12[17][5 * v31];
      *v35 = 80;
      *(v35 + 4) = v33;
      *(v35 + 8) = v20;
      *(v35 + 12) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 16) = 0;
    }

    v36 = *(v12 + 36);
    if (*(v12 + 37) <= v36)
    {
      sub_18194C8AC(v12, 71, 1uLL, v16, 0, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v36 + 1;
      v37 = &v12[17][5 * v36];
      *v37 = 0x100000047;
      *(v37 + 8) = v16;
      *(v37 + 12) = 0;
      *(v37 + 28) = 0;
      *(v37 + 20) = 0;
      *(v37 + 36) = 0;
    }
  }

  if (*(*a1 + 103))
  {
    return 0;
  }

  v38 = *(a2 + 12);
  if (v38 >= 1)
  {
    v39 = *(v12 + 36);
    if (*(v12 + 37) <= v39)
    {
      sub_18194C8AC(v12, 50, v38, v14, 1, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v39 + 1;
      v40 = &v12[17][5 * v39];
      *v40 = 50;
      *(v40 + 4) = v38;
      *(v40 + 8) = v14;
      *(v40 + 12) = 1;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0;
      *(v40 + 16) = 0;
    }
  }

  v41 = *v9;
  if (v41 > 0xB)
  {
    if (v41 == 13)
    {
      v57 = *(v9 + 3);
      if (!v57)
      {
        v58 = *(a3 + 16);
        if (v58 == 1)
        {
          if (a1[31])
          {
            v59 = a1[31] - 1;
            a1[31] = v59;
            v57 = *&a1[4 * v59 + 184];
          }

          else
          {
            v57 = (*(a1 + 15) + 1);
            *(a1 + 15) = v57;
          }
        }

        else
        {
          v100 = *(a1 + 11);
          v101 = __OFSUB__(v100, v58);
          v102 = v100 - v58;
          if (v102 < 0 != v101)
          {
            v103 = *(a1 + 15);
            v57 = (v103 + 1);
            *(a1 + 15) = v103 + v58;
          }

          else
          {
            v57 = *(a1 + 12);
            *(a1 + 11) = v102;
            *(a1 + 12) = v57 + v58;
          }
        }

        *(v9 + 3) = v57;
        *(v9 + 4) = v58;
      }

      v104 = *(a3 + 12);
      v105 = *(a3 + 16);
      v106 = *(a1 + 2);
      v107 = *(v106 + 144);
      if (*(v106 + 148) <= v107)
      {
        sub_18194C8AC(v106, 79, v104, v57, v105, a6, __s, a8);
      }

      else
      {
        *(v106 + 144) = v107 + 1;
        v108 = *(v106 + 136) + 40 * v107;
        *v108 = 79;
        *(v108 + 4) = v104;
        *(v108 + 8) = v57;
        *(v108 + 12) = v105;
        *(v108 + 24) = 0;
        *(v108 + 32) = 0;
        *(v108 + 16) = 0;
      }

      v61 = v115;
      v109 = *(v9 + 1);
      v110 = *(v12 + 36);
      if (*(v12 + 37) <= v110)
      {
        sub_18194C8AC(v12, 12, v109, 0, 0, a6, __s, a8);
      }

      else
      {
        *(v12 + 36) = v110 + 1;
        v111 = &v12[17][5 * v110];
        *v111 = 12;
        *(v111 + 4) = v109;
        *(v111 + 8) = 0u;
        *(v111 + 24) = 0u;
      }

      goto LABEL_62;
    }

    if (v41 != 12)
    {
      goto LABEL_50;
    }

    v44 = a1[31];
    if (v44)
    {
      a1[31] = v44 - 1;
      v45 = *&a1[4 * (v44 - 1) + 184];
      v46 = v9;
      if (v44 != 1)
      {
        v47 = v44 - 2;
        a1[31] = v47;
        v48 = *&a1[4 * v47 + 184];
LABEL_82:
        v76 = *(a3 + 12);
        v77 = *(a3 + 16);
        v78 = *(v12 + 36);
        if (*(v12 + 37) <= v78)
        {
          sub_18194C8AC(v12, 97, v76, v77, v45, a6, __s, a8);
        }

        else
        {
          *(v12 + 36) = v78 + 1;
          v79 = &v12[17][5 * v78];
          *v79 = 97;
          *(v79 + 4) = v76;
          *(v79 + 8) = v77;
          *(v79 + 12) = v45;
          *(v79 + 24) = 0;
          *(v79 + 32) = 0;
          *(v79 + 16) = 0;
        }

        v61 = v115;
        v80 = *(v46 + 1);
        v81 = *(v12 + 36);
        if (*(v12 + 37) <= v81)
        {
          sub_18194C8AC(v12, 127, v80, v48, 0, a6, __s, a8);
        }

        else
        {
          *(v12 + 36) = v81 + 1;
          v82 = &v12[17][5 * v81];
          *v82 = 127;
          *(v82 + 4) = v80;
          *(v82 + 8) = v48;
          *(v82 + 12) = 0;
          *(v82 + 28) = 0;
          *(v82 + 20) = 0;
          *(v82 + 36) = 0;
        }

        v83 = *(v46 + 1);
        v84 = *(v12 + 36);
        if (*(v12 + 37) <= v84)
        {
          sub_18194C8AC(v12, 128, v83, v45, v48, a6, __s, a8);
        }

        else
        {
          *(v12 + 36) = v84 + 1;
          v85 = &v12[17][5 * v84];
          *v85 = 128;
          *(v85 + 4) = v83;
          *(v85 + 8) = v45;
          *(v85 + 12) = v48;
          *(v85 + 24) = 0;
          *(v85 + 32) = 0;
          *(v85 + 16) = 0;
        }

        v86 = *(v12 + 36);
        if (v86 >= 1)
        {
          *(&v12[17][5 * v86 - 4] - 3) = 8;
        }

        if (v48)
        {
          v87 = a1[31];
          if (v87 <= 7)
          {
            a1[31] = v87 + 1;
            *&a1[4 * v87 + 184] = v48;
          }
        }

        if (v45)
        {
          v88 = a1[31];
          if (v88 <= 7)
          {
            a1[31] = v88 + 1;
            *&a1[4 * v88 + 184] = v45;
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      v46 = v9;
      v45 = (*(a1 + 15) + 1);
      *(a1 + 15) = v45;
    }

    v48 = (*(a1 + 15) + 1);
    *(a1 + 15) = v48;
    goto LABEL_82;
  }

  if (v41 == 10)
  {
    v50 = *(v9 + 1);
    v49 = *(a3 + 12);
    v53 = *(a3 + 16);
    v54 = *(a1 + 2);
    v55 = *(v54 + 144);
    if (*(v54 + 148) > v55)
    {
      *(v54 + 144) = v55 + 1;
      v56 = *(v54 + 136) + 40 * v55;
      *v56 = 79;
      *(v56 + 4) = v49;
      *(v56 + 8) = v50;
      *(v56 + 12) = v53;
      *(v56 + 24) = 0;
      *(v56 + 32) = 0;
      *(v56 + 16) = 0;
      goto LABEL_61;
    }

    v60 = 79;
LABEL_60:
    sub_18194C8AC(v54, v60, v49, v50, v53, a6, __s, a8);
    goto LABEL_61;
  }

  if (v41 == 11)
  {
    if (a1[31])
    {
      v42 = a1[31] - 1;
      a1[31] = v42;
      v43 = *&a1[4 * v42 + 184];
    }

    else
    {
      v43 = (*(a1 + 15) + 1);
      *(a1 + 15) = v43;
    }

    v70 = *(a3 + 12);
    v71 = *(a3 + 16);
    v72 = v9;
    v73 = *(v9 + 3);
    v74 = *(v12 + 36);
    if (*(v12 + 37) <= v74)
    {
      v74 = sub_18194C8AC(v12, 97, v70, *(a3 + 16), v43, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v74 + 1;
      v75 = &v12[17][5 * v74];
      *v75 = 97;
      *(v75 + 4) = v70;
      *(v75 + 8) = v71;
      *(v75 + 12) = v43;
      *(v75 + 24) = 0;
      *(v75 + 32) = 0;
      *(v75 + 16) = 0;
    }

    if (*(*v12 + 103))
    {
      if (v71 != -11)
      {
        sub_1818A3B68(*v12, v71, v73);
      }
    }

    else
    {
      if (v74 < 0)
      {
        v74 = *(v12 + 36) - 1;
      }

      v89 = &v12[17][5 * v74];
      if ((v71 & 0x80000000) != 0 && !*(v89 + 1))
      {
        if (v71 == -3)
        {
          *(v89 + 16) = v73;
          *(v89 + 1) = -3;
        }

        else if (v73)
        {
          *(v89 + 16) = v73;
          *(v89 + 1) = v71;
          if (v71 == -11)
          {
            ++*(v73 + 24);
          }
        }
      }

      else
      {
        sub_18194CB90(v12, v89, v73, v71);
      }
    }

    v90 = *(v72 + 1);
    v91 = *(a3 + 12);
    a6 = *(a3 + 16);
    v92 = *(v12 + 36);
    if (*(v12 + 37) <= v92)
    {
      sub_18194CAFC(v12, 138, v90, v43, v91, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v92 + 1;
      v93 = &v12[17][5 * v92];
      *v93 = 64906;
      *(v93 + 4) = v90;
      *(v93 + 8) = v43;
      *(v93 + 12) = v91;
      *(v93 + 16) = a6;
      *(v93 + 24) = 0;
      *(v93 + 32) = 0;
    }

    v94 = *(v72 + 2);
    if (v94 >= 1)
    {
      v95 = *(a3 + 12);
      v96 = *(a3 + 16);
      v97 = *(v12 + 36);
      if (*(v12 + 37) <= v97)
      {
        sub_18194CAFC(v12, 183, v94, 0, v95, v96, __s, a8);
      }

      else
      {
        *(v12 + 36) = v97 + 1;
        v98 = &v12[17][5 * v97];
        *v98 = 64951;
        *(v98 + 4) = v94;
        *(v98 + 8) = 0;
        *(v98 + 12) = v95;
        *(v98 + 16) = v96;
        *(v98 + 24) = 0;
        *(v98 + 32) = 0;
      }

      sub_18195AD8C(a1, 0, "CREATE BLOOM FILTER", v112);
    }

    v61 = v115;
    if (v43)
    {
      v99 = a1[31];
      if (v99 <= 7)
      {
        a1[31] = v99 + 1;
        *&a1[4 * v99 + 184] = v43;
      }
    }

    goto LABEL_62;
  }

LABEL_50:
  v49 = *(a3 + 12);
  v50 = *(a3 + 16);
  v51 = *(v12 + 36);
  if (*(v12 + 37) <= v51)
  {
    v54 = v12;
    v60 = 84;
    v53 = 0;
    goto LABEL_60;
  }

  *(v12 + 36) = v51 + 1;
  v52 = &v12[17][5 * v51];
  *v52 = 84;
  *(v52 + 4) = v49;
  *(v52 + 8) = v50;
  *(v52 + 12) = 0;
  *(v52 + 28) = 0;
  *(v52 + 20) = 0;
  *(v52 + 36) = 0;
LABEL_61:
  v61 = v115;
LABEL_62:
  v62 = *(a2 + 8);
  if (v62)
  {
    v63 = *(v12 + 36);
    if (*(v12 + 37) <= v63)
    {
      sub_18194C8AC(v12, 61, v62, HIDWORD(v112), 0, a6, __s, a8);
    }

    else
    {
      *(v12 + 36) = v63 + 1;
      v64 = &v12[17][5 * v63];
      *v64 = 61;
      *(v64 + 4) = v62;
      *(v64 + 8) = HIDWORD(v112);
      *(v64 + 12) = 0;
      *(v64 + 28) = 0;
      *(v64 + 20) = 0;
      *(v64 + 36) = 0;
    }
  }

  v65 = v12[3];
  v66 = -v61;
  if (*(v65 + 72) + *(v65 + 76) < 0)
  {
    sub_18195CB84(v65, v12, v66);
    v67 = *(v12 + 36);
  }

  else
  {
    v67 = *(v12 + 36);
    *(*(v65 + 80) + 4 * v66) = v67;
  }

  if (*(v12 + 37) <= v67)
  {
    sub_18194C8AC(v12, 67, a5, 0, 0, a6, __s, a8);
  }

  else
  {
    *(v12 + 36) = v67 + 1;
    v68 = &v12[17][5 * v67];
    *v68 = 67;
    *(v68 + 4) = a5;
    *(v68 + 8) = 0u;
    *(v68 + 24) = 0u;
  }

  return v13;
}

uint64_t sub_18196A1C4(uint64_t result, unsigned __int8 *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    while ((*(v3 + 28) & *(v2 + 1)) == 0)
    {
      v4 = *v2;
      if (v4 != 44)
      {
        if (v4 == 54)
        {
          v6 = *(v2 + 2);
          v5 = *(v2 + 3);
          if (*v5 == 168)
          {
            v7 = *v3;
            v13 = 0x100000000;
            v14 = 0;
            v9 = v7;
            v10 = sub_1818C7E14;
            v11 = sub_18195A49C;
            v12 = 0;
            if (!v6 || (result = sub_181959BA0(&v9, v6), WORD2(v13)))
            {
              result = sub_18196A3BC(v3, v5, v6, v2);
            }
          }

          if (*v6 == 168)
          {
            v8 = *v3;
            v13 = 0x100000000;
            v14 = 0;
            v9 = v8;
            v10 = sub_1818C7E14;
            v11 = sub_18195A49C;
            v12 = 0;
            result = sub_181959BA0(&v9, v5);
            if (WORD2(v13))
            {
              return sub_18196A3BC(v3, v6, v5, v2);
            }
          }
        }

        return result;
      }

      result = sub_18196A1C4(v3, *(v2 + 3));
      v2 = *(v2 + 2);
      if (!v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_18196A30C(uint64_t a1, unsigned __int8 **a2)
{
  v3 = *(a1 + 40);
  if (*(v3 + 24))
  {
    v4 = *a2;
    if ((v4 - 54) < 5 || v4 == 45)
    {
      sub_18196A5C4(*(a1 + 40), a2[2], 0);
      if (**(v3 + 8))
      {
        return 1;
      }

      if (sub_1818D0A24(a2[2]) != 66)
      {
        sub_18196A5C4(v3, a2[3], 0);
      }
    }
  }

  v6 = *(v3 + 24);

  return sub_18196A5C4(v3, a2, v6);
}

uint64_t sub_18196A3BC(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if ((*(a2 + 4) & 0x20) != 0)
  {
    return result;
  }

  v7 = result;
  result = sub_1818D0A24(a3);
  if (result)
  {
    return result;
  }

  v14 = *v7;
  v15 = 24;
  if ((*(a4 + 4) & 0x400) != 0)
  {
    v16 = 24;
  }

  else
  {
    v16 = 16;
  }

  if ((*(a4 + 4) & 0x400) != 0)
  {
    v15 = 16;
  }

  v17 = *(a4 + v16);
  if ((v17[5] & 2) != 0)
  {
LABEL_14:
    result = sub_1818B4720(v14, v17, v8, v9, v10, v11, v12, v13);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v18 = *(a4 + v15);
  if (v18 && (v18[5] & 2) != 0)
  {
LABEL_13:
    v17 = v18;
    goto LABEL_14;
  }

  v19 = *v7;
  result = sub_1818B4720(v14, v17, v8, v9, v10, v11, v12, v13);
  if (!result)
  {
    v14 = v19;
    goto LABEL_13;
  }

LABEL_15:
  if (*(result + 24) != sub_1818D0EC0)
  {
    return result;
  }

LABEL_16:
  v20 = *(v7 + 16);
  if (v20 < 1)
  {
LABEL_22:
    if (sub_1818D0A24(a2) <= 65)
    {
      *(v7 + 24) = 1;
    }

    v23 = v20 + 1;
    *(v7 + 16) = v20 + 1;
    v24 = **v7;
    v25 = *(v7 + 32);
    v26 = 16 * v23;
    if (v25)
    {
      if (*(v24 + 512) > v25)
      {
        if (*(v24 + 496) <= v25)
        {
          if (v26 < 0x81)
          {
LABEL_29:
            result = *(v7 + 32);
LABEL_34:
            *(v7 + 32) = result;
            goto LABEL_35;
          }
        }

        else if (*(v24 + 504) <= v25 && v26 <= *(v24 + 438))
        {
          goto LABEL_29;
        }
      }

      result = sub_181929F38(**v7, *(v7 + 32), v26, 0x2004093837F09);
      if (result)
      {
        goto LABEL_34;
      }

      result = sub_181929C84(v24, v25);
      *(v7 + 32) = 0;
    }

    else
    {
      result = sub_181929E8C(**v7, v26, 0x2004093837F09);
      *(v7 + 32) = result;
      if (result)
      {
LABEL_35:
        v27 = 16 * *(v7 + 16);
        *(result + v27 - 16) = a2;
        *(*(v7 + 32) + v27 - 8) = a3;
        return result;
      }
    }

    *(v7 + 16) = 0;
    return result;
  }

  v21 = *(v7 + 32);
  v22 = *(v7 + 16);
  while (*(*v21 + 44) != *(a2 + 44) || *(*v21 + 48) != *(a2 + 48))
  {
    v21 += 16;
    if (!--v22)
    {
      goto LABEL_22;
    }
  }

  return result;
}

uint64_t sub_18196A5C4(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (**(a1 + 8))
  {
    return 1;
  }

  if (*a2 == 168)
  {
    v4 = *(a2 + 1);
    if (((*(a1 + 28) | 0x20) & v4) == 0)
    {
      v5 = *(a1 + 16);
      if (v5 >= 1)
      {
        for (i = (*(a1 + 32) + 8); ; i += 2)
        {
          v7 = *(i - 1);
          if (v7 != a2 && *(v7 + 44) == *(a2 + 11) && *(v7 + 48) == *(a2 + 12))
          {
            break;
          }

          if (!--v5)
          {
            return 1;
          }
        }

        if (!a3 || (v8 = a1, v9 = a2, v10 = sub_1818D0A24(*(i - 1)), a2 = v9, v11 = v10, a1 = v8, v11 >= 66))
        {
          ++*(a1 + 20);
          *(a2 + 1) = v4 & 0xFF7FFFDF | 0x20;
          if (*i)
          {
            *(a2 + 2) = sub_1818C7FEC(**a1, *i, 0, 0);
          }

          else
          {
            *(a2 + 2) = 0;
          }
        }
      }

      return 1;
    }
  }

  return 0;
}