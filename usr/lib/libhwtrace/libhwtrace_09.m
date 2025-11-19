uint64_t sub_298B596D4(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  *(result + 8) = a9;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 36) = 0;
  *(result + 28) = 0;
  *(result + 44) &= 0xF8u;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = result;
  *(result + 72) = 0;
  *(result + 80) = -1;
  *(result + 88) = 0;
  *(result + 96) = 15;
  *(result + 104) = result + 104;
  *(result + 112) = result + 104;
  *(result + 120) = result + 136;
  *(result + 128) = 0x100000000;
  *(result + 152) = result + 168;
  *(result + 160) = 0x200000000;
  *(result + 200) = a4;
  *(result + 208) = a5;
  *(result + 216) = 3;
  *(result + 220) = a8;
  *result = &unk_2A1F1CEB8;
  *(result + 240) = a6;
  *(result + 244) = a7;
  if (!a3)
  {
    *(result + 224) = 0;
LABEL_9:
    *(result + 226) = 0;
    goto LABEL_10;
  }

  *(result + 224) = *a2;
  if (a3 == 1)
  {
    *(result + 225) = 0;
    *(result + 226) = 0;
    *(result + 228) = 0;
    *(result + 232) = 0;
    *(result + 236) = 0;
LABEL_4:
    *(result + 238) = 0;
    return result;
  }

  *(result + 225) = a2[1];
  if (a3 <= 2)
  {
    goto LABEL_9;
  }

  *(result + 226) = a2[2];
  if (a3 == 3)
  {
    *(result + 227) = 0;
LABEL_10:
    *(result + 228) = 0;
    *(result + 232) = 0;
    *(result + 236) = 0;
    return result;
  }

  *(result + 227) = a2[3];
  if (a3 <= 4)
  {
    goto LABEL_10;
  }

  *(result + 228) = a2[4];
  if (a3 == 5)
  {
    *(result + 229) = 0;
    *(result + 230) = 0;
    *(result + 232) = 0;
    *(result + 236) = 0;
  }

  else
  {
    *(result + 229) = a2[5];
    if (a3 <= 6)
    {
      *(result + 230) = 0;
      *(result + 232) = 0;
      *(result + 236) = 0;
    }

    else
    {
      *(result + 230) = a2[6];
      if (a3 == 7)
      {
        *(result + 231) = 0;
        *(result + 232) = 0;
        *(result + 236) = 0;
      }

      else
      {
        *(result + 231) = a2[7];
        if (a3 <= 8)
        {
          *(result + 232) = 0;
          *(result + 236) = 0;
        }

        else
        {
          *(result + 232) = a2[8];
          if (a3 == 9)
          {
            *(result + 233) = 0;
            *(result + 234) = 0;
            *(result + 236) = 0;
          }

          else
          {
            *(result + 233) = a2[9];
            if (a3 <= 0xA)
            {
              *(result + 234) = 0;
              *(result + 236) = 0;
            }

            else
            {
              *(result + 234) = a2[10];
              if (a3 == 11)
              {
                *(result + 235) = 0;
                *(result + 236) = 0;
              }

              else
              {
                *(result + 235) = a2[11];
                if (a3 <= 0xC)
                {
                  *(result + 236) = 0;
                }

                else
                {
                  *(result + 236) = a2[12];
                  if (a3 == 13)
                  {
                    *(result + 237) = 0;
                    *(result + 238) = 0;
                  }

                  else
                  {
                    *(result + 237) = a2[13];
                    if (a3 <= 0xE)
                    {
                      goto LABEL_4;
                    }

                    *(result + 238) = a2[14];
                    if (a3 == 15)
                    {
                      *(result + 239) = 0;
                    }

                    else
                    {
                      *(result + 239) = a2[15];
                    }
                  }
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

_WORD *sub_298B59914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  if ((*(a4 + 24) - v6) <= 9)
  {
    sub_298B9BCEC(a4, "\t.section\t", 0xAuLL);
    if (*(a1 + 239))
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = strlen((a1 + 224));
    v7 = *(a4 + 32);
    if (v8 <= *(a4 + 24) - v7)
    {
      if (!v8)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_7:
    sub_298B9BCEC(a4, (a1 + 224), v8);
    goto LABEL_8;
  }

  *(v6 + 8) = 2414;
  *v6 = *"\t.section\t";
  *(a4 + 32) += 10;
  if (!*(a1 + 239))
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *(a4 + 32);
  v8 = 16;
  if (*(a4 + 24) - v7 <= 0xFuLL)
  {
    goto LABEL_7;
  }

LABEL_10:
  memcpy(v7, (a1 + 224), v8);
  v7 = (*(a4 + 32) + v8);
  for (*(a4 + 32) = v7; ; v7 = *(a4 + 32))
  {
LABEL_11:
    if (v7 < *(a4 + 24))
    {
      goto LABEL_14;
    }

    v9 = *(a4 + 16);
    if (v9)
    {
      break;
    }

    if (!*(a4 + 56))
    {
      sub_298B9BB84(a4);
      v10 = *(a1 + 200);
      v11 = *(a1 + 208);
      result = *(a4 + 32);
      if (v11 <= *(a4 + 24) - result)
      {
        goto LABEL_19;
      }

LABEL_15:
      result = sub_298B9BCEC(a4, v10, v11);
      goto LABEL_21;
    }

    sub_298B9AE98(a4);
LABEL_8:
    ;
  }

  *(a4 + 32) = v9;
  sub_298B9BB84(a4);
  v7 = *(a4 + 32);
LABEL_14:
  *(a4 + 32) = v7 + 1;
  *v7 = 44;
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  result = *(a4 + 32);
  if (v11 > *(a4 + 24) - result)
  {
    goto LABEL_15;
  }

LABEL_19:
  if (v11)
  {
    v13 = v11;
    result = memcpy(result, v10, v11);
    *(a4 + 32) += v13;
  }

LABEL_21:
  v14 = *(a1 + 240);
  if (!v14)
  {
    while (1)
    {
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }

      v20 = *(a4 + 16);
      if (v20)
      {
        break;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }

      result = sub_298B9AE98(a4);
    }

LABEL_92:
    *(a4 + 32) = v20;
    result = sub_298B9BB84(a4);
    v17 = *(a4 + 32);
    goto LABEL_93;
  }

  v15 = &(&off_29EEB51A0)[4 * *(a1 + 240)];
  v16 = v15[1];
  v18 = *(a4 + 24);
  v17 = *(a4 + 32);
  if (!v16)
  {
    if (v17 < v18)
    {
      goto LABEL_93;
    }

    while (1)
    {
      v20 = *(a4 + 16);
      if (v20)
      {
        goto LABEL_92;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }

      result = sub_298B9AE98(a4);
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }
    }
  }

  if (v17 < v18)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v19 = *(a4 + 16);
    if (v19)
    {
      *(a4 + 32) = v19;
      sub_298B9BB84(a4);
      v17 = *(a4 + 32);
LABEL_34:
      *(a4 + 32) = v17 + 1;
      *v17 = 44;
      v21 = *v15;
      v22 = *(a4 + 32);
      if (v16 <= *(a4 + 24) - v22)
      {
        goto LABEL_83;
      }

      goto LABEL_35;
    }

    if (!*(a4 + 56))
    {
      break;
    }

    sub_298B9AE98(a4);
    v17 = *(a4 + 32);
    if (v17 < *(a4 + 24))
    {
      goto LABEL_34;
    }
  }

  sub_298B9BB84(a4);
  v21 = *v15;
  v22 = *(a4 + 32);
  if (v16 > *(a4 + 24) - v22)
  {
LABEL_35:
    result = sub_298B9BCEC(a4, v21, v16);
    v23 = v14 & 0xFFFFFF00;
    if ((v14 & 0xFFFFFF00) != 0)
    {
      goto LABEL_36;
    }

LABEL_84:
    v17 = *(a4 + 32);
    if (!*(a1 + 244))
    {
      goto LABEL_90;
    }

    if (*(a4 + 24) - v17 > 5)
    {
      *(v17 + 4) = 11365;
      *v17 = 1852796460;
      *(a4 + 32) += 6;
    }

    else
    {
      sub_298B9BCEC(a4, ",none,", 6uLL);
    }

    for (result = sub_298B8FC48(a4, *(a1 + 244), 0, 0, 0); ; result = sub_298B9AE98(a4))
    {
      v17 = *(a4 + 32);
LABEL_90:
      if (v17 < *(a4 + 24))
      {
        goto LABEL_93;
      }

      v20 = *(a4 + 16);
      if (v20)
      {
        break;
      }

      if (!*(a4 + 56))
      {
        return sub_298B9BB84(a4);
      }
    }

    goto LABEL_92;
  }

LABEL_83:
  result = memcpy(v22, v21, v16);
  *(a4 + 32) += v16;
  v23 = v14 & 0xFFFFFF00;
  if ((v14 & 0xFFFFFF00) == 0)
  {
    goto LABEL_84;
  }

LABEL_36:
  v24 = 0;
  v25 = 44;
  while (2)
  {
    if (v24 != 10)
    {
      v28 = &unk_29EEB5480 + 40 * v24;
      v29 = *v28;
      if ((*v28 & v23) == 0)
      {
        goto LABEL_40;
      }

      v30 = *(a4 + 32);
      if (v30 < *(a4 + 24))
      {
LABEL_49:
        *(a4 + 32) = v30 + 1;
        *v30 = v25;
        v23 &= ~v29;
        v32 = *(v28 + 2);
        if (!v32)
        {
          goto LABEL_53;
        }
      }

      else
      {
        while (1)
        {
          v31 = *(a4 + 16);
          if (v31)
          {
            *(a4 + 32) = v31;
            sub_298B9BB84(a4);
            v30 = *(a4 + 32);
            goto LABEL_49;
          }

          if (!*(a4 + 56))
          {
            break;
          }

          sub_298B9AE98(a4);
          v30 = *(a4 + 32);
          if (v30 < *(a4 + 24))
          {
            goto LABEL_49;
          }
        }

        sub_298B9BB84(a4);
        v23 &= ~v29;
        v32 = *(v28 + 2);
        if (!v32)
        {
LABEL_53:
          v36 = *(a4 + 32);
          if (*(a4 + 24) - v36 <= 1uLL)
          {
            sub_298B9BCEC(a4, "<<", 2uLL);
            result = *(a4 + 32);
            v37 = *(v28 + 3);
            v38 = *(v28 + 4);
            if (v38 <= *(a4 + 24) - result)
            {
              goto LABEL_55;
            }

LABEL_60:
            sub_298B9BCEC(a4, v37, v38);
            result = *(a4 + 32);
            if (*(a4 + 24) - result > 1uLL)
            {
              goto LABEL_61;
            }

LABEL_58:
            v26 = a4;
            v33 = ">>";
            v27 = 2;
LABEL_38:
            result = sub_298B9BCEC(v26, v33, v27);
LABEL_39:
            v25 = 43;
LABEL_40:
            ++v24;
            if (!v23)
            {
              break;
            }

            continue;
          }

          *v36 = 15420;
          v40 = *(a4 + 24);
          result = (*(a4 + 32) + 2);
          *(a4 + 32) = result;
          v37 = *(v28 + 3);
          v38 = *(v28 + 4);
          if (v38 > v40 - result)
          {
            goto LABEL_60;
          }

LABEL_55:
          if (v38)
          {
            v39 = v38;
            memcpy(result, v37, v38);
            result = (*(a4 + 32) + v39);
            *(a4 + 32) = result;
          }

          if (*(a4 + 24) - result <= 1uLL)
          {
            goto LABEL_58;
          }

LABEL_61:
          *result = 15934;
          v35 = *(a4 + 32) + 2;
LABEL_62:
          *(a4 + 32) = v35;
          goto LABEL_39;
        }
      }

      v33 = *(v28 + 1);
      v34 = *(a4 + 32);
      if (v32 > *(a4 + 24) - v34)
      {
        v26 = a4;
        v27 = v32;
        goto LABEL_38;
      }

      result = memcpy(v34, v33, v32);
      v35 = *(a4 + 32) + v32;
      goto LABEL_62;
    }

    break;
  }

  v41 = *(a4 + 24);
  v17 = *(a4 + 32);
  if (!*(a1 + 244))
  {
    goto LABEL_78;
  }

  if (v17 < v41)
  {
LABEL_75:
    *(a4 + 32) = v17 + 1;
    *v17 = 44;
  }

  else
  {
    while (1)
    {
      v42 = *(a4 + 16);
      if (v42)
      {
        *(a4 + 32) = v42;
        sub_298B9BB84(a4);
        v17 = *(a4 + 32);
        goto LABEL_75;
      }

      if (!*(a4 + 56))
      {
        break;
      }

      sub_298B9AE98(a4);
      v17 = *(a4 + 32);
      if (v17 < *(a4 + 24))
      {
        goto LABEL_75;
      }
    }

    sub_298B9BB84(a4);
  }

  for (result = sub_298B8FC48(a4, *(a1 + 244), 0, 0, 0); ; result = sub_298B9AE98(a4))
  {
    v41 = *(a4 + 24);
    v17 = *(a4 + 32);
LABEL_78:
    if (v17 < v41)
    {
      break;
    }

    v20 = *(a4 + 16);
    if (v20)
    {
      goto LABEL_92;
    }

    if (!*(a4 + 56))
    {
      return sub_298B9BB84(a4);
    }
  }

LABEL_93:
  *(a4 + 32) = v17 + 1;
  *v17 = 10;
  return result;
}

void *sub_298B59FBC(void *a1)
{
  *a1 = &unk_2A1F1CE28;
  v2 = a1[19];
  if (v2 != a1 + 21)
  {
    free(v2);
  }

  v3 = a1[15];
  if (v3 != a1 + 17)
  {
    free(v3);
  }

  v4 = a1[14];
  if (v4 != a1 + 13)
  {
    do
    {
      v5 = *v4;
      v6 = v4[1];
      *v6 = *v4;
      *(v5 + 8) = v6;
      *v4 = 0;
      v4[1] = 0;
      sub_298B462C8(v4);
      v4 = v6;
    }

    while (v6 != a1 + 13);
  }

  return a1;
}

void sub_298B5A0C8(uint64_t a1, void **a2, void **a3)
{
  v3 = *(a1 + 8);
  v5 = 261;
  v4[0] = a2;
  v4[1] = a3;
  sub_298B5A0FC(v3, v4);
}

void sub_298B5A0FC(uint64_t a1, void ***a2)
{
  v25[16] = *MEMORY[0x29EDCA608];
  v23 = v25;
  v24 = xmmword_298D1A050;
  v2 = *(a2 + 32);
  if (*(a2 + 33) != 1)
  {
LABEL_14:
    v15 = 0;
    v19 = 0;
    v20 = 0;
    v22 = &v23;
    v21 = 0;
    v14 = &unk_2A1F1E0B8;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v8 = a1;
    sub_298B99BA4(a1, &v14, *a2, a2[1], v2);
    sub_298B99BA4(v9, &v14, a2[2], a2[3], *(a2 + 33));
    sub_298B9AE14(&v14);
    a1 = v8;
    v5 = v23;
    v6 = v24;
    goto LABEL_15;
  }

  if (*(a2 + 32) > 4u)
  {
    if ((v2 - 5) < 2)
    {
      v6 = a2[1];
      v5 = *a2;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v2 == 1)
  {
    goto LABEL_20;
  }

  if (v2 != 3)
  {
    if (v2 == 4)
    {
      v3 = *(*a2 + 23);
      v4 = (*a2)[1];
      if (v3 >= 0)
      {
        v5 = *a2;
      }

      else
      {
        v5 = **a2;
      }

      if (v3 >= 0)
      {
        v6 = v3;
      }

      else
      {
        v6 = v4;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (!*a2)
  {
LABEL_20:
    v6 = 0;
    v5 = 0;
  }

  else
  {
    v11 = a1;
    v12 = *a2;
    v13 = strlen(*a2);
    v5 = v12;
    v6 = v13;
    a1 = v11;
  }

LABEL_15:
  (*(*a1 + 32))(a1, v5, v6);
  if (v23 != v25)
  {
    free(v23);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_298B5A2AC(uint64_t a1, unsigned __int8 *a2)
{
  v20[16] = *MEMORY[0x29EDCA608];
  v17 = &v18;
  v18 = v20;
  v19 = xmmword_298D1A050;
  v10 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v9 = &unk_2A1F1E0B8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_298B439C4(a2, &v9, *(*(*(a1 + 8) + 8) + 144), 0);
  v3 = *(a1 + 8);
  v5 = *v17;
  v4 = v17[1];
  v8 = 261;
  v7[0] = v5;
  v7[1] = v4;
  sub_298B5A0FC(v3, v7);
  sub_298B9AE14(&v9);
  if (v18 != v20)
  {
    free(v18);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298B5A3B0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v31[16] = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v3 = a3;
    v6 = *(*(*(*(a1 + 8) + 8) + 144) + 248);
    if (v6)
    {
      do
      {
        v7 = *a2;
        v28 = &v29;
        v29 = v31;
        v30 = xmmword_298D1A050;
        v21 = 0;
        v25 = 0;
        v26 = 0;
        v20 = &unk_2A1F1E0B8;
        v27 = 0;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v8 = strlen(v6);
        if (v8)
        {
          sub_298B9BCEC(&v20, v6, v8);
        }

        sub_298B8FC48(&v20, v7, 0, 0, 0);
        v9 = *(a1 + 8);
        v11 = *v28;
        v10 = v28[1];
        v19 = 261;
        v17 = v11;
        v18 = v10;
        sub_298B5A0FC(v9, &v17);
        sub_298B9AE14(&v20);
        if (v29 != v31)
        {
          free(v29);
        }

        ++a2;
        --v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v12 = *a2;
        v28 = &v29;
        v29 = v31;
        v30 = xmmword_298D1A050;
        v21 = 0;
        v25 = 0;
        v26 = 0;
        v20 = &unk_2A1F1E0B8;
        v27 = 0;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        sub_298B8FC48(&v20, v12, 0, 0, 0);
        v13 = *(a1 + 8);
        v15 = *v28;
        v14 = v28[1];
        v19 = 261;
        v17 = v15;
        v18 = v14;
        sub_298B5A0FC(v13, &v17);
        sub_298B9AE14(&v20);
        if (v29 != v31)
        {
          free(v29);
        }

        ++a2;
        --v3;
      }

      while (v3);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void *sub_298B5A5B8(void *a1)
{
  *a1 = &unk_2A1F1CF50;
  v2 = a1[18];
  if (v2 != a1 + 20)
  {
    free(v2);
  }

  MEMORY[0x29C2945E0](a1[15], 8);
  v3 = a1[10];
  if (v3)
  {
    v4 = a1[11];
    v5 = a1[10];
    if (v4 != v3)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = sub_298B63450(v6);
          MEMORY[0x29C2945F0](v8, 0x10E0C408997E4E3);
        }
      }

      while (v4 != v3);
      v5 = a1[10];
    }

    a1[11] = v3;
    operator delete(v5);
  }

  v9 = a1[6];
  if (v9 != a1 + 8)
  {
    free(v9);
  }

  v10 = a1[3];
  if (v10)
  {
    v11 = a1[4];
    v12 = a1[3];
    if (v11 == v10)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v14 = *(v11 - 56);
      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = *(v11 - 48);
      v13 = *(v11 - 56);
      if (v15 != v14)
      {
        break;
      }

LABEL_17:
      *(v11 - 48) = v14;
      operator delete(v13);
LABEL_18:
      v11 -= 88;
      if (v11 == v10)
      {
        v12 = a1[3];
LABEL_29:
        a1[4] = v10;
        operator delete(v12);
        goto LABEL_30;
      }
    }

    while (*(v15 - 1) < 0)
    {
      operator delete(*(v15 - 24));
      v16 = *(v15 - 48);
      if (v16)
      {
        goto LABEL_27;
      }

LABEL_22:
      v15 -= 88;
      if (v15 == v14)
      {
        v13 = *(v11 - 56);
        goto LABEL_17;
      }
    }

    v16 = *(v15 - 48);
    if (!v16)
    {
      goto LABEL_22;
    }

LABEL_27:
    *(v15 - 40) = v16;
    operator delete(v16);
    goto LABEL_22;
  }

LABEL_30:
  v17 = a1[2];
  a1[2] = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  return a1;
}

double sub_298B5A768(uint64_t a1)
{
  v2 = *(a1 + 24);
  for (i = *(a1 + 32); i != v2; i -= 88)
  {
    v5 = *(i - 56);
    if (v5)
    {
      v6 = *(i - 48);
      v4 = *(i - 56);
      if (v6 == v5)
      {
LABEL_3:
        *(i - 48) = v5;
        operator delete(v4);
        continue;
      }

      while (2)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
          v7 = *(v6 - 48);
          if (!v7)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v7 = *(v6 - 48);
          if (!v7)
          {
LABEL_9:
            v6 -= 88;
            if (v6 == v5)
            {
              v4 = *(i - 56);
              goto LABEL_3;
            }

            continue;
          }
        }

        break;
      }

      *(v6 - 40) = v7;
      operator delete(v7);
      goto LABEL_9;
    }
  }

  *(a1 + 32) = v2;
  *(a1 + 104) = 0;
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  while (v9 != v8)
  {
    v11 = *--v9;
    v10 = v11;
    *v9 = 0;
    if (v11)
    {
      v12 = sub_298B63450(v10);
      MEMORY[0x29C2945F0](v12, 0x10E0C408997E4E3);
    }
  }

  *(a1 + 88) = v8;
  v13 = *(a1 + 128);
  if (!v13)
  {
    if (!*(a1 + 132))
    {
      goto LABEL_60;
    }

    v14 = *(a1 + 136);
    if (v14 > 0x40)
    {
      v16 = 0;
      goto LABEL_35;
    }

LABEL_42:
    if (v14)
    {
      v34 = *(a1 + 120);
      v35 = (v14 - 1) & 0xFFFFFFFFFFFFFFFLL;
      if (v35)
      {
        v36 = v35 + 1;
        v37 = (v35 + 1) & 0x1FFFFFFFFFFFFFFELL;
        v38 = (v34 + 16 * v37);
        v39 = (v34 + 16);
        v40 = v37;
        do
        {
          *(v39 - 2) = -4096;
          *v39 = -4096;
          v39 += 4;
          v40 -= 2;
        }

        while (v40);
        if (v36 == v37)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v38 = *(a1 + 120);
      }

      v41 = (v34 + 16 * v14);
      do
      {
        *v38 = -4096;
        v38 += 2;
      }

      while (v38 != v41);
    }

LABEL_51:
    *(a1 + 128) = 0;
    goto LABEL_60;
  }

  v14 = *(a1 + 136);
  if (v14 <= 4 * v13 || v14 < 0x41)
  {
    goto LABEL_42;
  }

  v15 = 1 << (33 - __clz(v13 - 1));
  if (v15 <= 64)
  {
    v16 = 64;
  }

  else
  {
    v16 = v15;
  }

  if (v16 != v14)
  {
LABEL_35:
    MEMORY[0x29C2945E0](*(a1 + 120), 8);
    if (v16)
    {
      v24 = (4 * v16 / 3u + 1) | ((4 * v16 / 3u + 1) >> 1);
      v25 = v24 | (v24 >> 2) | ((v24 | (v24 >> 2)) >> 4);
      LODWORD(v25) = (((v25 | (v25 >> 8)) >> 16) | v25 | (v25 >> 8)) + 1;
      *(a1 + 136) = v25;
      v26 = operator new(16 * v25, 8uLL);
      *(a1 + 120) = v26;
      *(a1 + 128) = 0;
      v27 = *(a1 + 136);
      if (v27)
      {
        v28 = (v27 - 1) & 0xFFFFFFFFFFFFFFFLL;
        if (v28)
        {
          v29 = v28 + 1;
          v30 = (v28 + 1) & 0x1FFFFFFFFFFFFFFELL;
          v31 = &v26[2 * v30];
          v32 = v26 + 2;
          v33 = v30;
          do
          {
            *(v32 - 2) = -4096;
            *v32 = -4096;
            v32 += 4;
            v33 -= 2;
          }

          while (v33);
          if (v29 == v30)
          {
            goto LABEL_60;
          }
        }

        else
        {
          v31 = v26;
        }

        v43 = &v26[2 * v27];
        do
        {
          *v31 = -4096;
          v31 += 2;
        }

        while (v31 != v43);
      }
    }

    else
    {
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
    }

    goto LABEL_60;
  }

  *(a1 + 128) = 0;
  v17 = *(a1 + 120);
  v18 = (v14 - 1) & 0xFFFFFFFFFFFFFFFLL;
  if (v18)
  {
    v19 = v18 + 1;
    v20 = (v18 + 1) & 0x1FFFFFFFFFFFFFFELL;
    v21 = (v17 + 16 * v20);
    v22 = (v17 + 16);
    v23 = v20;
    do
    {
      *(v22 - 2) = -4096;
      *v22 = -4096;
      v22 += 4;
      v23 -= 2;
    }

    while (v23);
    if (v19 == v20)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v21 = *(a1 + 120);
  }

  v42 = (v17 + 16 * v14);
  do
  {
    *v21 = -4096;
    v21 += 2;
  }

  while (v21 != v42);
LABEL_60:
  *(a1 + 152) = 0;
  if (*(a1 + 156))
  {
    v44 = 0;
  }

  else
  {
    sub_298B90A44(a1 + 144, (a1 + 160), 1uLL, 32);
    v44 = *(a1 + 152);
  }

  v45 = (*(a1 + 144) + 32 * v44);
  result = 0.0;
  *v45 = 0u;
  v45[1] = 0u;
  ++*(a1 + 152);
  return result;
}

void sub_298B5AB30(void *a1, uint64_t a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v3 = *(a2 + 8);
  if (((v3 + 63) & 0x1FFFFFFC0) == 0x40)
  {
    if (v3 > 0x40)
    {
      v6 = __clz(**a2);
    }

    else
    {
      v4 = *a2;
    }

    v7 = *(*a1 + 520);
    v8 = *MEMORY[0x29EDCA608];

    v7();
    return;
  }

  if (*(*(a1[1] + 144) + 16))
  {
    v5 = a1;
    v17 = *(a2 + 8);
    if (v3 > 0x40)
    {
      operator new[]();
    }

    v16 = *a2;
  }

  else
  {
    v5 = a1;
    sub_298B82264(a2, &v16);
  }

  v9 = *(a2 + 8);
  v10 = v9 >> 3;
  __dst = v20;
  v19 = xmmword_298D1A7E0;
  if (v9 >= 8)
  {
    if (v9 < 0x58)
    {
      v12 = 0;
      v11 = v20;
      v13 = v10;
      if (!v10)
      {
LABEL_20:
        *&v19 = v10;
        goto LABEL_21;
      }
    }

    else
    {
      sub_298B90C08(&__dst, v20, v9 >> 3, 1);
      v11 = __dst;
      v12 = v19;
      v13 = v10 - v19;
      if (v10 == v19)
      {
        goto LABEL_20;
      }
    }

    bzero(v11 + v12, v13);
    v11 = __dst;
    goto LABEL_20;
  }

  v11 = v20;
LABEL_21:
  if (v17 >= 0x41)
  {
    v14 = v16;
  }

  else
  {
    v14 = &v16;
  }

  memcpy(v11, v14, v10);
  (*(*v5 + 496))(v5, __dst, v19);
  if (__dst != v20)
  {
    free(__dst);
  }

  if (v17 >= 0x41 && v16)
  {
    MEMORY[0x29C2945C0](v16, 0x1000C8000313F17);
  }

  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5ADC0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = 0;
  v28[16] = *MEMORY[0x29EDCA608];
  v26 = v28;
  v27 = xmmword_298D1A050;
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v24 = &v26;
  v23 = 0;
  v16 = &unk_2A1F1E0B8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  do
  {
    while (1)
    {
      v7 = ++v6 < a3 || a2 > 0x7F;
      v8 = v7 ? a2 | 0x80 : a2;
      v9 = v20;
      if (v20 >= v19)
      {
        break;
      }

LABEL_14:
      v20 = v9 + 1;
      *v9 = v8;
      v7 = a2 > 0x7F;
      a2 >>= 7;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      if (v18)
      {
        v20 = v18;
        sub_298B9BB84(&v16);
        v9 = v20;
        goto LABEL_14;
      }

      if (!v23)
      {
        break;
      }

      sub_298B9AE98(&v16);
      v9 = v20;
      if (v20 < v19)
      {
        goto LABEL_14;
      }
    }

    v25 = v8;
    sub_298B9BB84(&v16);
    v7 = a2 > 0x7F;
    a2 >>= 7;
  }

  while (v7);
LABEL_17:
  if (v6 >= a3)
  {
    goto LABEL_35;
  }

  v10 = a3 - 1;
  if (v6 >= v10)
  {
    goto LABEL_31;
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v11 = v20;
        if (v20 >= v19)
        {
          break;
        }

LABEL_22:
        v20 = v11 + 1;
        *v11 = 0x80;
        if (++v6 == v10)
        {
          goto LABEL_31;
        }
      }

      if (v18)
      {
        v20 = v18;
        sub_298B9BB84(&v16);
        v11 = v20;
        goto LABEL_22;
      }

      if (!v23)
      {
        break;
      }

      sub_298B9AE98(&v16);
    }

    v25 = 0x80;
    sub_298B9BB84(&v16);
    ++v6;
  }

  while (v6 != v10);
  while (1)
  {
LABEL_31:
    v12 = v20;
    if (v20 < v19)
    {
      goto LABEL_34;
    }

    if (v18)
    {
      v20 = v18;
      sub_298B9BB84(&v16);
      v12 = v20;
LABEL_34:
      v20 = v12 + 1;
      *v12 = 0;
      goto LABEL_35;
    }

    if (!v23)
    {
      break;
    }

    sub_298B9AE98(&v16);
  }

  v25 = 0;
  sub_298B9BB84(&v16);
LABEL_35:
  (*(*a1 + 496))(a1, *v24, v24[1]);
  v13 = v27;
  sub_298B9AE14(&v16);
  if (v26 != v28)
  {
    free(v26);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

uint64_t sub_298B5B07C(uint64_t a1, uint64_t a2)
{
  v28[16] = *MEMORY[0x29EDCA608];
  v26 = v28;
  v27 = xmmword_298D1A050;
  v17 = 0;
  v21 = 0;
  v22 = 0;
  v24 = &v26;
  v23 = 0;
  v16 = &unk_2A1F1E0B8;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  do
  {
    while (1)
    {
      v4 = a2;
      v5 = a2 & 0x7F;
      a2 >>= 7;
      v6 = (v4 & 0x40) != 0 && a2 == -1;
      v7 = !v6;
      v8 = v6 ? 0 : 0x80;
      v9 = v4 >= 0x40 && v7;
      v10 = v4 >= 0x40 ? v8 : 0;
      v11 = v10 | v5;
      v12 = v20;
      if (v20 >= v19)
      {
        break;
      }

LABEL_23:
      v20 = v12 + 1;
      *v12 = v11;
      if (!v9)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      if (v18)
      {
        v20 = v18;
        sub_298B9BB84(&v16);
        v12 = v20;
        goto LABEL_23;
      }

      if (!v23)
      {
        break;
      }

      sub_298B9AE98(&v16);
      v12 = v20;
      if (v20 < v19)
      {
        goto LABEL_23;
      }
    }

    v25 = v11;
    sub_298B9BB84(&v16);
  }

  while (v9);
LABEL_26:
  (*(*a1 + 496))(a1, *v24, v24[1]);
  v13 = v27;
  sub_298B9AE14(&v16);
  if (v26 != v28)
  {
    free(v26);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

void *sub_298B5B2E4(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result[1];
    *(v3 + 264) += 24;
    v4 = *(v3 + 184);
    if (v4)
    {
      v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) - v4 + 24 > *(v3 + 192) - v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v7 = result;
      v8 = *(v3 + 208) >> 7;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      v9 = 4096 << v8;
      v11 = operator new(4096 << v8, 8uLL);
      v10 = *(v3 + 208);
      if (v10 >= *(v3 + 212))
      {
        v13 = v11;
        sub_298B90A44(v3 + 200, (v3 + 216), v10 + 1, 8);
        v11 = v13;
        LODWORD(v10) = *(v3 + 208);
      }

      *(*(v3 + 200) + 8 * v10) = v11;
      ++*(v3 + 208);
      *(v3 + 192) = v11 + v9;
      result = v7;
      v2 = a2;
    }

    else
    {
      v11 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 184) = v11 + 24;
    *v11 = 1;
    *(v11 + 1) = *(v11 + 4) << 24;
    *(v11 + 8) = 0;
    *(v11 + 16) = v2;
    v12 = *(*result + 616);

    return v12();
  }

  return result;
}

void *sub_298B5B460(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result[1];
    *(v3 + 264) += 24;
    v4 = *(v3 + 184);
    if (v4)
    {
      v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) - v4 + 24 > *(v3 + 192) - v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      v7 = result;
      v8 = *(v3 + 208) >> 7;
      if (v8 >= 0x1E)
      {
        LOBYTE(v8) = 30;
      }

      v9 = 4096 << v8;
      v11 = operator new(4096 << v8, 8uLL);
      v10 = *(v3 + 208);
      if (v10 >= *(v3 + 212))
      {
        v13 = v11;
        sub_298B90A44(v3 + 200, (v3 + 216), v10 + 1, 8);
        v11 = v13;
        LODWORD(v10) = *(v3 + 208);
      }

      *(*(v3 + 200) + 8 * v10) = v11;
      ++*(v3 + 208);
      *(v3 + 192) = v11 + v9;
      result = v7;
      v2 = a2;
    }

    else
    {
      v11 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    *(v3 + 184) = v11 + 24;
    *v11 = 1;
    *(v11 + 1) = *(v11 + 4) << 24;
    *(v11 + 8) = 0;
    *(v11 + 16) = v2;
    v12 = *(*result + 616);

    return v12();
  }

  return result;
}

void sub_298B5B5C8(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, unsigned int a10)
{
  v16 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 8);
  v14 = *a7;
  v15 = *(a7 + 16);
  v12 = *a8;
  v13 = *(a8 + 2);
  sub_298B2FB9C(v10, a3, a4, a5, a6, a2, &v14, &v12, a9, a10);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_298B5B660(uint64_t a1, const void *a2, size_t __len, void *__src, size_t a5, uint64_t a6, __int128 *a7, unsigned int a8)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v17 = *a6;
  v18 = *(a6 + 16);
  v13 = *a7;
  v14 = *(a7 + 2);
  v9 = *(v8 + 1560);
  if (!v9)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v10 = v9;
      v11 = *(v9 + 32);
      if (v11 <= a8)
      {
        break;
      }

      v9 = *v10;
      if (!*v10)
      {
        goto LABEL_7;
      }
    }

    if (v11 >= a8)
    {
      break;
    }

    v9 = v10[1];
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v19 = v17;
  v20 = v18;
  v15 = v13;
  v16 = v14;
  sub_298B3053C((v10 + 5), a2, __len, __src, a5, &v19, &v15);
  v12 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5B898(uint64_t result)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(result + 56);
  if (v1)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 88 * *(*(result + 48) + 16 * v1 - 16) + 80) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v9 = 259;
    *(v4 + 2056) = 1;
    v10 = v6;
    v11[0] = &unk_2A1F1BDB8;
    v11[1] = &v10;
    v11[2] = &v8;
    v12 = v11;
    sub_298B2FFE4(v4, v6, v11);
    result = v12;
    if (v12 == v11)
    {
      result = (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      result = (*(*v12 + 40))();
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5B9E4(uint64_t result)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(result + 56);
  if (v1)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 88 * *(*(result + 48) + 16 * v1 - 16) + 81) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v9 = 259;
    *(v4 + 2056) = 1;
    v10 = v6;
    v11[0] = &unk_2A1F1BDB8;
    v11[1] = &v10;
    v11[2] = &v8;
    v12 = v11;
    sub_298B2FFE4(v4, v6, v11);
    result = v12;
    if (v12 == v11)
    {
      result = (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      result = (*(*v12 + 40))();
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5BB30(uint64_t result, int a2, int a3, __int16 a4, char a5, char a6, int a7)
{
  v7 = *(result + 8);
  *(v7 + 1576) = a2;
  *(v7 + 1580) = a3;
  *(v7 + 1584) = a4;
  *(v7 + 1586) = a5;
  *(v7 + 1587) = a6;
  *(v7 + 1588) = a7;
  *(v7 + 1592) = 1;
  return result;
}

unint64_t sub_298B5BB58(uint64_t a1, unsigned int a2)
{
  v3 = *(*(a1 + 8) + 1560);
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
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  result = v4[5];
  if (!result)
  {
    v7 = *(a1 + 8);
    v8 = *(v7 + 144);
    v10 = *(v8 + 88);
    v9 = *(v8 + 96);
    v12 = 773;
    v11[0] = v10;
    v11[1] = v9;
    v11[2] = "line_table_start";
    v13[0] = v11;
    v13[2] = a2;
    v14 = 2306;
    result = sub_298B2D288(v7, v13);
    v4[5] = result;
  }

  return result;
}

uint64_t sub_298B5BD50(uint64_t a1, unsigned int a2, int8x16_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = *(*(a1 + 8) + 176);
  if (!v8)
  {
    operator new();
  }

  return sub_298B273E4(v8, a1, a2, a3, a4, a5, a6, a7);
}

BOOL sub_298B5BE44(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 8) + 176);
  if (!v2)
  {
    operator new();
  }

  v5 = *(v2 + 232);
  v4 = *(v2 + 240);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 4);
  if (v6 <= a2)
  {
    v7 = a2 + 1;
    if (v7 <= v6)
    {
      if (v7 < v6)
      {
        v8 = v5 + 48 * v7;
        if (v4 != v8)
        {
          do
          {
            v9 = v4 - 48;
            MEMORY[0x29C2945E0](*(v4 - 24), 4);
            v4 = v9;
          }

          while (v9 != v8);
        }

        *(v2 + 240) = v8;
      }
    }

    else
    {
      sub_298B2B12C(v2 + 232, v7 - v6);
    }
  }

  v10 = (*(v2 + 232) + 48 * a2);
  v11 = *v10;
  if (!*v10)
  {
    *v10 = -1;
  }

  return v11 == 0;
}

BOOL sub_298B5BF84(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, uint64_t a7)
{
  v20 = *MEMORY[0x29EDCA608];
  v7 = *(*(a1 + 8) + 176);
  if (!v7)
  {
    operator new();
  }

  v9 = v7 + 232;
  v8 = *(v7 + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v9 + 8) - v8) >> 4) <= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    if (*(v8 + 48 * a3))
    {
      v11 = *(v10 + 176);
      if (!v11)
      {
        operator new();
      }

      v12 = *MEMORY[0x29EDCA608];

      return sub_298B276B4(v11, a2, a3, a4, a5, a6);
    }
  }

  v15 = "parent function id not introduced by .cv_func_id or .cv_inline_site_id";
  v16 = 259;
  *(v10 + 2056) = 1;
  v17 = a7;
  v18[0] = &unk_2A1F1BDB8;
  v18[1] = &v17;
  v18[2] = &v15;
  v19 = v18;
  sub_298B2FFE4(v10, a7, v18);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  v14 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t sub_298B5C24C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 8) + 176);
  if (!v4)
  {
    operator new();
  }

  v6 = v4 + 232;
  v5 = *(v4 + 232);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v6 + 8) - v5) >> 4) > a2 && (v7 = v5 + 48 * a2, *v7))
  {
    v8 = *(v7 + 16);
    v9 = *(a1 + 152);
    if (!v8)
    {
      if (v9)
      {
        v14 = *(*(a1 + 144) + 32 * v9 - 32);
      }

      else
      {
        v14 = 0;
      }

      *(v7 + 16) = v14;
      result = 1;
      goto LABEL_15;
    }

    if (v9 && v8 == *(*(a1 + 144) + 32 * v9 - 32))
    {
      result = 1;
      goto LABEL_15;
    }

    v10 = *(a1 + 8);
    v11 = "all .cv_loc directives for a function must be in the same section";
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = "function id not introduced by .cv_func_id or .cv_inline_site_id";
  }

  v15 = v11;
  v16 = 259;
  *(v10 + 2056) = 1;
  v17 = a4;
  v18[0] = &unk_2A1F1BDB8;
  v18[1] = &v17;
  v18[2] = &v15;
  v19 = v18;
  sub_298B2FFE4(v10, a4, v18);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  result = 0;
LABEL_15:
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B5C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 4421;
  v6 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v5, 10);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_298B5C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 4419;
  v6 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v5, 10);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_298B5C5F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 4417;
  v6 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v5, 6);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_298B5C6AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *MEMORY[0x29EDCA608];
  v5 = 4418;
  v6 = a4;
  (*(*a1 + 776))(a1, a2, a3, &v5, 6);
  v4 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5C798(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = a2[1];
  if ((v4 & 4) == 0)
  {
    if (*a2)
    {
      goto LABEL_10;
    }

    if ((a2[1] & 0x7080) != 0x2000)
    {
      goto LABEL_9;
    }

LABEL_8:
    a2[1] = v4 | 8;
    v5 = a1;
    v6 = a2;
    v7 = sub_298B45440(a2[3]);
    a2 = v6;
    v8 = v7;
    a1 = v5;
    *v6 = v8;
    v4 = v6[1];
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_10:
    v9 = *(a1 + 8);
    if (v4)
    {
      v12 = *(a2 - 1);
      v13 = *v12;
      v10 = v12 + 2;
      v11 = v13;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v19[0] = "symbol '";
    v19[2] = v10;
    v19[3] = v11;
    v20 = 1283;
    v21[0] = v19;
    v21[2] = "' is already defined";
    v22 = 770;
    v23 = a3;
    *(v9 + 2056) = 1;
    v24[0] = &unk_2A1F1BDB8;
    v24[1] = &v23;
    v24[2] = v21;
    v25 = v24;
    sub_298B2FFE4(v9, a3, v24);
    result = v25;
    if (v25 == v24)
    {
      result = (*(*v25 + 32))(v25);
    }

    else if (v25)
    {
      result = (*(*v25 + 40))();
    }

    goto LABEL_23;
  }

  if ((a2[1] & 0x7000) == 0x2000)
  {
    a2[3] = 0;
    v4 &= 0xFFFFFFFFFFFF8FFFLL;
  }

  v4 &= ~4uLL;
  *a2 = 0;
  a2[1] = v4;
  if ((v4 & 0x7080) == 0x2000)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v4 & 0x7000) == 0x2000)
  {
    goto LABEL_10;
  }

  v15 = *(a1 + 152);
  if (!v15)
  {
    *a2 = 48;
    result = *(a1 + 16);
    if (result)
    {
      goto LABEL_19;
    }

LABEL_23:
    v18 = *MEMORY[0x29EDCA608];
    return result;
  }

  *a2 = *(*(a1 + 144) + 32 * v15 - 32) + 48;
  result = *(a1 + 16);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_19:
  v16 = *(*result + 16);
  v17 = *MEMORY[0x29EDCA608];

  return v16();
}

void sub_298B5CA2C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v18) = 7;
  *(&v18 + 1) = v8;
  v19 = a2;
  v20 = a3;
  v21 = -1;
  v27 = 0;
  v22 = a4;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16);
      v12 = *(v11 + 40);
      if (v12 >= *(v11 + 48))
      {
        *(v11 + 40) = sub_298B2371C((v11 + 32), &v18);
        *(v11 + 56) = a2;
        if (v27 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v11 + 40) = sub_298B23824(v12, &v18) + 88;
        *(v11 + 56) = a2;
        if (v27 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 288);
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    v28 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v29 = 259;
    *(v13 + 2056) = 1;
    v30 = v15;
    v31[0] = &unk_2A1F1BDB8;
    v31[1] = &v30;
    v31[2] = &v28;
    v32 = v31;
    sub_298B2FFE4(v13, v15, v31);
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      v16 = v23;
      if (!v23)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v32)
    {
      (*(*v32 + 40))(v32);
    }
  }

  v16 = v23;
  if (v23)
  {
LABEL_16:
    v24 = v16;
    operator delete(v16);
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_298B5CC40(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v14) = 6;
  *(&v14 + 1) = v4;
  v15 = 0;
  v16 = a2;
  v17 = -1;
  v21 = 0;
  *v18 = 0u;
  v19 = 0u;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v14);
        if (v21 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v14) + 88;
        if (v21 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v18[1];
          if (!v18[1])
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v22 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v23 = 259;
    *(v9 + 2056) = 1;
    v24 = v11;
    v25[0] = &unk_2A1F1BDB8;
    v25[1] = &v24;
    v25[2] = &v22;
    v26 = v25;
    sub_298B2FFE4(v9, v11, v25);
    if (v26 == v25)
    {
      (*(*v26 + 32))(v26);
      v12 = v18[1];
      if (!v18[1])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v26)
    {
      (*(*v26 + 40))(v26);
    }
  }

  v12 = v18[1];
  if (v18[1])
  {
LABEL_16:
    *&v19 = v12;
    operator delete(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_298B5CE3C(uint64_t a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 9;
  *(&v16 + 1) = v6;
  v17 = 0;
  v18 = a2;
  v19 = -1;
  v25 = 0;
  v20 = a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v16);
        if (v25 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v16) + 88;
        if (v25 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v21;
          if (!v21)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v26 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v27 = 259;
    *(v11 + 2056) = 1;
    v28 = v13;
    v29[0] = &unk_2A1F1BDB8;
    v29[1] = &v28;
    v29[2] = &v26;
    v30 = v29;
    sub_298B2FFE4(v11, v13, v29);
    if (v30 == v29)
    {
      (*(*v30 + 32))(v30);
      v14 = v21;
      if (!v21)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v30)
    {
      (*(*v30 + 40))(v30);
    }
  }

  v14 = v21;
  if (v21)
  {
LABEL_16:
    v22 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_298B5D044(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 5;
  *(&v16 + 1) = v6;
  v17 = a2;
  v18 = 0xFFFFFFFF00000000;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16);
      v10 = *(v9 + 40);
      if (v10 >= *(v9 + 48))
      {
        *(v9 + 40) = sub_298B2371C((v9 + 32), &v16);
        *(v9 + 56) = a2;
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v9 + 40) = sub_298B23824(v10, &v16) + 88;
        *(v9 + 56) = a2;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v26 = 259;
    *(v11 + 2056) = 1;
    v27 = v13;
    v28[0] = &unk_2A1F1BDB8;
    v28[1] = &v27;
    v28[2] = &v25;
    v29 = v28;
    sub_298B2FFE4(v11, v13, v28);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v29)
    {
      (*(*v29 + 40))(v29);
    }
  }

  v14 = v20;
  if (v20)
  {
LABEL_16:
    v21 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_298B5D254(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v33 = *MEMORY[0x29EDCA608];
  v10 = (*(*a1 + 80))(a1);
  LODWORD(v20) = 4;
  *(&v20 + 1) = v10;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  *v25 = 0u;
  *__p = 0u;
  v27 = 0u;
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      v13 = v12 + 88 * *(*(a1 + 48) + 16 * v11 - 16);
      v14 = *(v13 + 40);
      if (v14 >= *(v13 + 48))
      {
        *(v13 + 40) = sub_298B2371C((v13 + 32), &v20);
        *(v13 + 56) = a2;
        if (SHIBYTE(v27) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        *(v13 + 40) = sub_298B23824(v14, &v20) + 88;
        *(v13 + 56) = a2;
        if (SHIBYTE(v27) < 0)
        {
LABEL_9:
          operator delete(__p[1]);
          v18 = v25[0];
          if (!v25[0])
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v15 = *(a1 + 8);
    v16 = *(a1 + 288);
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    v28 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v29 = 259;
    *(v15 + 2056) = 1;
    v30 = v17;
    v31[0] = &unk_2A1F1BDB8;
    v31[1] = &v30;
    v31[2] = &v28;
    v32 = v31;
    sub_298B2FFE4(v15, v17, v31);
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      v18 = v25[0];
      if (!v25[0])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v32)
    {
      (*(*v32 + 40))(v32);
    }
  }

  v18 = v25[0];
  if (v25[0])
  {
LABEL_16:
    v25[1] = v18;
    operator delete(v18);
  }

LABEL_17:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_298B5D474(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v18) = 3;
  *(&v18 + 1) = v8;
  v19 = a2;
  v20 = a3;
  v21 = -1;
  v27 = 0;
  v22 = a4;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v18);
        if (v27 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v18) + 88;
        if (v27 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 288);
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    v28 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v29 = 259;
    *(v13 + 2056) = 1;
    v30 = v15;
    v31[0] = &unk_2A1F1BDB8;
    v31[1] = &v30;
    v31[2] = &v28;
    v32 = v31;
    sub_298B2FFE4(v13, v15, v31);
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      v16 = v23;
      if (!v23)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v32)
    {
      (*(*v32 + 40))(v32);
    }
  }

  v16 = v23;
  if (v23)
  {
LABEL_16:
    v24 = v16;
    operator delete(v16);
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_298B5D680(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v18) = 8;
  *(&v18 + 1) = v8;
  v19 = a2;
  v20 = a3;
  v21 = -1;
  v27 = 0;
  v22 = a4;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  LOBYTE(__p) = 0;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v18);
        if (v27 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v18) + 88;
        if (v27 < 0)
        {
LABEL_9:
          operator delete(__p);
          v16 = v23;
          if (!v23)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 288);
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    v28 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v29 = 259;
    *(v13 + 2056) = 1;
    v30 = v15;
    v31[0] = &unk_2A1F1BDB8;
    v31[1] = &v30;
    v31[2] = &v28;
    v32 = v31;
    sub_298B2FFE4(v13, v15, v31);
    if (v32 == v31)
    {
      (*(*v32 + 32))(v32);
      v16 = v23;
      if (!v23)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v32)
    {
      (*(*v32 + 40))(v32);
    }
  }

  v16 = v23;
  if (v23)
  {
LABEL_16:
    v24 = v16;
    operator delete(v16);
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5D88C(uint64_t result, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(result + 24);
    if (v4)
    {
      v5 = v4 + 88 * *(*(result + 48) + 16 * v3 - 16);
      *(v5 + 16) = a2;
      *(v5 + 60) = a3;
    }
  }

  else
  {
    v6 = result;
    v7 = *(result + 8);
    v8 = *(v6 + 288);
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v12 = 259;
    *(v7 + 2056) = 1;
    v13 = v9;
    v14[0] = &unk_2A1F1BDB8;
    v14[1] = &v13;
    v14[2] = &v11;
    v15 = v14;
    sub_298B2FFE4(v7, v9, v14);
    result = v15;
    if (v15 == v14)
    {
      result = (*(*v15 + 32))(v15);
    }

    else if (v15)
    {
      result = (*(*v15 + 40))();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5D9D8(uint64_t result, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(result + 56);
  if (v3)
  {
    v4 = *(result + 24);
    if (v4)
    {
      v5 = v4 + 88 * *(*(result + 48) + 16 * v3 - 16);
      *(v5 + 24) = a2;
      *(v5 + 64) = a3;
    }
  }

  else
  {
    v6 = result;
    v7 = *(result + 8);
    v8 = *(v6 + 288);
    if (v8)
    {
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    v11 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v12 = 259;
    *(v7 + 2056) = 1;
    v13 = v9;
    v14[0] = &unk_2A1F1BDB8;
    v14[1] = &v13;
    v14[2] = &v11;
    v15 = v14;
    sub_298B2FFE4(v7, v9, v14);
    result = v15;
    if (v15 == v14)
    {
      result = (*(*v15 + 32))(v15);
    }

    else if (v15)
    {
      result = (*(*v15 + 40))();
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B5DB24(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v14) = 1;
  *(&v14 + 1) = v4;
  v15 = 0;
  v16 = -1;
  v22 = 0;
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v14);
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v14) + 88;
        if (v22 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v18;
          if (!v18)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v24 = 259;
    *(v9 + 2056) = 1;
    v25 = v11;
    v26[0] = &unk_2A1F1BDB8;
    v26[1] = &v25;
    v26[2] = &v23;
    v27 = v26;
    sub_298B2FFE4(v9, v11, v26);
    if (v27 == v26)
    {
      (*(*v27 + 32))(v27);
      v12 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v27)
    {
      (*(*v27 + 40))(v27);
    }
  }

  v12 = v18;
  if (v18)
  {
LABEL_16:
    v19 = v12;
    operator delete(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_298B5DD1C(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v14) = 2;
  *(&v14 + 1) = v4;
  v15 = 0;
  v16 = -1;
  v22 = 0;
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v14);
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v14) + 88;
        if (v22 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v18;
          if (!v18)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v24 = 259;
    *(v9 + 2056) = 1;
    v25 = v11;
    v26[0] = &unk_2A1F1BDB8;
    v26[1] = &v25;
    v26[2] = &v23;
    v27 = v26;
    sub_298B2FFE4(v9, v11, v26);
    if (v27 == v26)
    {
      (*(*v27 + 32))(v27);
      v12 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v27)
    {
      (*(*v27 + 40))(v27);
    }
  }

  v12 = v18;
  if (v18)
  {
LABEL_16:
    v19 = v12;
    operator delete(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_298B5DF14(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 0;
  *(&v16 + 1) = v6;
  v17 = a2;
  v18 = 0xFFFFFFFF00000000;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v16);
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v16) + 88;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v26 = 259;
    *(v11 + 2056) = 1;
    v27 = v13;
    v28[0] = &unk_2A1F1BDB8;
    v28[1] = &v27;
    v28[2] = &v25;
    v29 = v28;
    sub_298B2FFE4(v11, v13, v28);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v29)
    {
      (*(*v29 + 40))(v29);
    }
  }

  v14 = v20;
  if (v20)
  {
LABEL_16:
    v21 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_298B5E118(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 11;
  *(&v16 + 1) = v6;
  v17 = a2;
  v18 = 0xFFFFFFFF00000000;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v16);
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v16) + 88;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v26 = 259;
    *(v11 + 2056) = 1;
    v27 = v13;
    v28[0] = &unk_2A1F1BDB8;
    v28[1] = &v27;
    v28[2] = &v25;
    v29 = v28;
    sub_298B2FFE4(v11, v13, v28);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v29)
    {
      (*(*v29 + 40))(v29);
    }
  }

  v14 = v20;
  if (v20)
  {
LABEL_16:
    v21 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_298B5E320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v7 = (*(*a1 + 80))(a1);
  LODWORD(v17) = 10;
  *(&v17 + 1) = v7;
  v18 = 0;
  v19 = -1;
  v20 = a4;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v25 = 0;
  LOBYTE(__p) = 0;
  v8 = *(a1 + 56);
  if (v8)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = (v9 + 88 * *(*(a1 + 48) + 16 * v8 - 16));
      v11 = v10[5];
      if (v11 >= v10[6])
      {
        v10[5] = sub_298B2371C(v10 + 4, &v17);
        if (v25 < 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v10[5] = sub_298B23824(v11, &v17) + 88;
        if (v25 < 0)
        {
LABEL_12:
          operator delete(__p);
          v15 = v21;
          if (!v21)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 288);
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    v26 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v27 = 259;
    *(v12 + 2056) = 1;
    v28 = v14;
    v29[0] = &unk_2A1F1BDB8;
    v29[1] = &v28;
    v29[2] = &v26;
    v30 = v29;
    sub_298B2FFE4(v12, v14, v29);
    if (v30 == v29)
    {
      (*(*v30 + 32))(v30);
      v15 = v21;
      if (!v21)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    if (v30)
    {
      (*(*v30 + 40))(v30);
    }
  }

  v15 = v21;
  if (v21)
  {
LABEL_19:
    v22 = v15;
    operator delete(v15);
  }

LABEL_20:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_298B5E568(uint64_t a1, int a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 16;
  *(&v16 + 1) = v6;
  v17 = 0;
  v18 = a2;
  v19 = -1;
  v25 = 0;
  v20 = a3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v16);
        if (v25 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v16) + 88;
        if (v25 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v21;
          if (!v21)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v26 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v27 = 259;
    *(v11 + 2056) = 1;
    v28 = v13;
    v29[0] = &unk_2A1F1BDB8;
    v29[1] = &v28;
    v29[2] = &v26;
    v30 = v29;
    sub_298B2FFE4(v11, v13, v29);
    if (v30 == v29)
    {
      (*(*v30 + 32))(v30);
      v14 = v21;
      if (!v21)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v30)
    {
      (*(*v30 + 40))(v30);
    }
  }

  v14 = v21;
  if (v21)
  {
LABEL_16:
    v22 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5E770(uint64_t result)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(result + 56);
  if (v1)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 88 * *(*(result + 48) + 16 * v1 - 16) + 72) = 1;
    }
  }

  else
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v9 = 259;
    *(v4 + 2056) = 1;
    v10 = v6;
    v11[0] = &unk_2A1F1BDB8;
    v11[1] = &v10;
    v11[2] = &v8;
    v12 = v11;
    sub_298B2FFE4(v4, v6, v11);
    result = v12;
    if (v12 == v11)
    {
      result = (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      result = (*(*v12 + 40))();
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B5E8BC(uint64_t a1, int a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = (*(*a1 + 80))(a1);
  LODWORD(v16) = 12;
  *(&v16 + 1) = v6;
  v17 = a2;
  v18 = 0xFFFFFFFF00000000;
  v24 = 0;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  LOBYTE(__p) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 24);
    if (v8)
    {
      v9 = (v8 + 88 * *(*(a1 + 48) + 16 * v7 - 16));
      v10 = v9[5];
      if (v10 >= v9[6])
      {
        v9[5] = sub_298B2371C(v9 + 4, &v16);
        if (v24 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v9[5] = sub_298B23824(v10, &v16) + 88;
        if (v24 < 0)
        {
LABEL_9:
          operator delete(__p);
          v14 = v20;
          if (!v20)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v11 = *(a1 + 8);
    v12 = *(a1 + 288);
    if (v12)
    {
      v13 = *v12;
    }

    else
    {
      v13 = 0;
    }

    v25 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v26 = 259;
    *(v11 + 2056) = 1;
    v27 = v13;
    v28[0] = &unk_2A1F1BDB8;
    v28[1] = &v27;
    v28[2] = &v25;
    v29 = v28;
    sub_298B2FFE4(v11, v13, v28);
    if (v29 == v28)
    {
      (*(*v29 + 32))(v29);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v29)
    {
      (*(*v29 + 40))(v29);
    }
  }

  v14 = v20;
  if (v20)
  {
LABEL_16:
    v21 = v14;
    operator delete(v14);
  }

LABEL_17:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_298B5EAC4(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = (*(*a1 + 80))(a1);
  LODWORD(v18) = 13;
  *(&v18 + 1) = v8;
  v19 = a2;
  v20 = a3;
  v21 = -1;
  v22 = a4;
  *v23 = 0u;
  *__p = 0u;
  v25 = 0u;
  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = (v10 + 88 * *(*(a1 + 48) + 16 * v9 - 16));
      v12 = v11[5];
      if (v12 >= v11[6])
      {
        v11[5] = sub_298B2371C(v11 + 4, &v18);
        if (SHIBYTE(v25) < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v11[5] = sub_298B23824(v12, &v18) + 88;
        if (SHIBYTE(v25) < 0)
        {
LABEL_9:
          operator delete(__p[1]);
          v16 = v23[0];
          if (!v23[0])
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 288);
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    v26 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v27 = 259;
    *(v13 + 2056) = 1;
    v28 = v15;
    v29[0] = &unk_2A1F1BDB8;
    v29[1] = &v28;
    v29[2] = &v26;
    v30 = v29;
    sub_298B2FFE4(v13, v15, v29);
    if (v30 == v29)
    {
      (*(*v30 + 32))(v30);
      v16 = v23[0];
      if (!v23[0])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v30)
    {
      (*(*v30 + 40))(v30);
    }
  }

  v16 = v23[0];
  if (v23[0])
  {
LABEL_16:
    v23[1] = v16;
    operator delete(v16);
  }

LABEL_17:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_298B5ECD4(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v14) = 14;
  *(&v14 + 1) = v4;
  v15 = 0;
  v16 = -1;
  v22 = 0;
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v14);
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v14) + 88;
        if (v22 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v18;
          if (!v18)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v24 = 259;
    *(v9 + 2056) = 1;
    v25 = v11;
    v26[0] = &unk_2A1F1BDB8;
    v26[1] = &v25;
    v26[2] = &v23;
    v27 = v26;
    sub_298B2FFE4(v9, v11, v26);
    if (v27 == v26)
    {
      (*(*v27 + 32))(v27);
      v12 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v27)
    {
      (*(*v27 + 40))(v27);
    }
  }

  v12 = v18;
  if (v18)
  {
LABEL_16:
    v19 = v12;
    operator delete(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_298B5EECC(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 80))(a1);
  LODWORD(v14) = 15;
  *(&v14 + 1) = v4;
  v15 = 0;
  v16 = -1;
  v22 = 0;
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  LOBYTE(__p) = 0;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = (v6 + 88 * *(*(a1 + 48) + 16 * v5 - 16));
      v8 = v7[5];
      if (v8 >= v7[6])
      {
        v7[5] = sub_298B2371C(v7 + 4, &v14);
        if (v22 < 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v7[5] = sub_298B23824(v8, &v14) + 88;
        if (v22 < 0)
        {
LABEL_9:
          operator delete(__p);
          v12 = v18;
          if (!v18)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    v9 = *(a1 + 8);
    v10 = *(a1 + 288);
    if (v10)
    {
      v11 = *v10;
    }

    else
    {
      v11 = 0;
    }

    v23 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v24 = 259;
    *(v9 + 2056) = 1;
    v25 = v11;
    v26[0] = &unk_2A1F1BDB8;
    v26[1] = &v25;
    v26[2] = &v23;
    v27 = v26;
    sub_298B2FFE4(v9, v11, v26);
    if (v27 == v26)
    {
      (*(*v27 + 32))(v27);
      v12 = v18;
      if (!v18)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (v27)
    {
      (*(*v27 + 40))(v27);
    }
  }

  v12 = v18;
  if (v18)
  {
LABEL_16:
    v19 = v12;
    operator delete(v12);
  }

LABEL_17:
  v13 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B5F0C4(uint64_t result, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    if (v3)
    {
      *(v3 + 88 * *(*(result + 48) + 16 * v2 - 16) + 76) = a2;
    }
  }

  else
  {
    v4 = result;
    v5 = *(result + 8);
    v6 = *(v4 + 288);
    if (v6)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = "this directive must appear between .cfi_startproc and .cfi_endproc directives";
    v10 = 259;
    *(v5 + 2056) = 1;
    v11 = v7;
    v12[0] = &unk_2A1F1BDB8;
    v12[1] = &v11;
    v12[2] = &v9;
    v13 = v12;
    sub_298B2FFE4(v5, v7, v12);
    result = v13;
    if (v13 == v12)
    {
      result = (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      result = (*(*v13 + 40))();
    }
  }

  v8 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5F20C(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v8 = *(a1 + 104);
    if (v8 && !*(v8 + 8))
    {
      goto LABEL_13;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v11 = v7;
  v12 = 259;
  *(v3 + 2056) = 1;
  v13 = a2;
  v14[0] = &unk_2A1F1BDB8;
  v14[1] = &v13;
  v14[2] = &v11;
  v15 = v14;
  sub_298B2FFE4(v3, a2, v14);
  if (v15 == v14)
  {
    (*(*v15 + 32))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 40))();
  }

  v8 = 0;
LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_298B5F358(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) == 4)
  {
    v6 = *(v5 + 428);
    if (v6 != 6 && v6 != 0)
    {
      v11 = a1[13];
      if (v11 && !*(v11 + 8))
      {
        v12[0] = "Starting a function before ending the previous one!";
        v13 = 259;
        *(v4 + 2056) = 1;
        v14 = a3;
        v15 = &unk_2A1F1BDB8;
        v16 = &v14;
        v17 = v12;
        v18 = &v15;
        sub_298B2FFE4(v4, a3, &v15);
        if (v18 == &v15)
        {
          (*(*v18 + 4))(v18);
        }

        else if (v18)
        {
          (*(*v18 + 5))();
        }
      }

      (*(*a1 + 80))(a1);
      a1[14] = (a1[11] - a1[10]) >> 3;
      operator new();
    }
  }

  v12[0] = ".seh_* directives are not supported on this target";
  v13 = 259;
  *(v4 + 2056) = 1;
  v14 = a3;
  v15 = &unk_2A1F1BDB8;
  v16 = &v14;
  v17 = v12;
  v18 = &v15;
  sub_298B2FFE4(v4, a3, &v15);
  result = v18;
  if (v18 == &v15)
  {
    result = (*(*v18 + 4))(v18);
  }

  else if (v18)
  {
    result = (*(*v18 + 5))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5F718(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !v11[1])
    {
      if (v11[10])
      {
        v16[0] = "Not all chained regions terminated!";
        v17 = 259;
        *(v3 + 2056) = 1;
        v18 = a2;
        v19 = &unk_2A1F1BDB8;
        v20 = &v18;
        v21 = v16;
        v22 = &v19;
        sub_298B2FFE4(v3, a2, &v19);
        if (v22 == &v19)
        {
          (*(*v22 + 4))(v22);
        }

        else if (v22)
        {
          (*(*v22 + 5))();
        }
      }

      v12 = (*(*a1 + 80))(a1);
      v11[1] = v12;
      if (!v11[2])
      {
        v11[2] = v12;
      }

      v13 = a1[14];
      for (i = (a1[11] - a1[10]) >> 3; i != v13; ++v13)
      {
        (*(*a1 + 16))(a1, *(a1[10] + 8 * v13));
      }

      result = (*(*a1 + 168))(a1, v11[7], 0);
      v15 = *MEMORY[0x29EDCA608];
      return result;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v16[0] = v7;
  v17 = 259;
  *(v3 + 2056) = 1;
  v18 = a2;
  v19 = &unk_2A1F1BDB8;
  v20 = &v18;
  v21 = v16;
  v22 = &v19;
  sub_298B2FFE4(v3, a2, &v19);
  result = v22;
  if (v22 == &v19)
  {
    result = (*(*v22 + 4))(v22);
  }

  else if (v22)
  {
    result = (*(*v22 + 5))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5FA08(void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !v11[1])
    {
      if (v11[10])
      {
        v13[0] = "Not all chained regions terminated!";
        v14 = 259;
        *(v3 + 2056) = 1;
        v15 = a2;
        v16 = &unk_2A1F1BDB8;
        v17 = &v15;
        v18 = v13;
        v19 = &v16;
        sub_298B2FFE4(v3, a2, &v16);
        if (v19 == &v16)
        {
          (*(*v19 + 4))(v19);
        }

        else if (v19)
        {
          (*(*v19 + 5))();
        }
      }

      result = (*(*a1 + 80))(a1);
      v11[2] = result;
      v12 = *MEMORY[0x29EDCA608];
      return result;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v13[0] = v7;
  v14 = 259;
  *(v3 + 2056) = 1;
  v15 = a2;
  v16 = &unk_2A1F1BDB8;
  v17 = &v15;
  v18 = v13;
  v19 = &v16;
  sub_298B2FFE4(v3, a2, &v16);
  result = v19;
  if (v19 == &v16)
  {
    result = (*(*v19 + 4))(v19);
  }

  else if (v19)
  {
    result = (*(*v19 + 5))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5FC68(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11)
    {
      if (!*(v11 + 8))
      {
        (*(*a1 + 80))(a1);
        operator new();
      }
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v12 = v7;
  v13 = 259;
  *(v3 + 2056) = 1;
  v14 = a2;
  v15[0] = &unk_2A1F1BDB8;
  v15[1] = &v14;
  v15[2] = &v12;
  v16 = v15;
  sub_298B2FFE4(v3, a2, v15);
  result = v16;
  if (v16 == v15)
  {
    result = (*(*v16 + 32))(v16);
  }

  else if (v16)
  {
    result = (*(*v16 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B5FF6C(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !*(v11 + 8))
    {
      if (*(v11 + 80))
      {
        result = (*(*a1 + 80))(a1);
        *(v11 + 8) = result;
        a1[13] = *(v11 + 80);
        v12 = *MEMORY[0x29EDCA608];
        return result;
      }

      v7 = "End of a chained region outside a chained region!";
    }

    else
    {
      v7 = ".seh_ directive must appear within an active frame";
    }
  }

  v13 = v7;
  v14 = 259;
  *(v3 + 2056) = 1;
  v15 = a2;
  v16[0] = &unk_2A1F1BDB8;
  v16[1] = &v15;
  v16[2] = &v13;
  v17 = v16;
  sub_298B2FFE4(v3, a2, v16);
  result = v17;
  if (v17 == v16)
  {
    result = (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    result = (*(*v17 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B60128(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v22 = *MEMORY[0x29EDCA608];
  result = *(a1 + 8);
  v7 = *(result + 144);
  if (*(v7 + 420) != 4 || ((v8 = *(v7 + 428), v8 != 6) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v10 = ".seh_* directives are not supported on this target";
    goto LABEL_8;
  }

  v12 = *(a1 + 104);
  if (!v12 || *(v12 + 8))
  {
    v10 = ".seh_ directive must appear within an active frame";
    goto LABEL_8;
  }

  if (*(v12 + 80))
  {
    v10 = "Chained unwind areas can't have handlers!";
LABEL_8:
    v15[0] = v10;
    v16 = 259;
    *(result + 2056) = 1;
    v17 = a5;
    v18 = &unk_2A1F1BDB8;
    v19 = &v17;
    v20 = v15;
    v21 = &v18;
    sub_298B2FFE4(result, a5, &v18);
    result = v21;
    if (v21 == &v18)
    {
      result = (*(*v21 + 4))(v21);
    }

    else if (v21)
    {
      result = (*(*v21 + 5))();
    }

    goto LABEL_12;
  }

  *(v12 + 24) = a2;
  if ((a3 & 1) == 0 && (a4 & 1) == 0)
  {
    v13 = a3;
    v14 = a4;
    v15[0] = "Don't know what kind of handler this is!";
    v16 = 259;
    *(result + 2056) = 1;
    v17 = a5;
    v18 = &unk_2A1F1BDB8;
    v19 = &v17;
    v20 = v15;
    v21 = &v18;
    sub_298B2FFE4(result, a5, &v18);
    result = v21;
    if (v21 == &v18)
    {
      result = (*(*v21 + 4))(v21);
    }

    else if (v21)
    {
      result = (*(*v21 + 5))();
    }

    a4 = v14;
    a3 = v13;
  }

  if (a3)
  {
    *(v12 + 72) = 1;
  }

  if (a4)
  {
    *(v12 + 73) = 1;
  }

LABEL_12:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B60378(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  result = *(a1 + 8);
  v4 = *(result + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v9 = *(a1 + 104);
    if (v9 && !*(v9 + 8))
    {
      if (!*(v9 + 80))
      {
        goto LABEL_12;
      }

      v7 = "Chained unwind areas can't have handlers!";
    }

    else
    {
      v7 = ".seh_ directive must appear within an active frame";
    }
  }

  v10 = v7;
  v11 = 259;
  *(result + 2056) = 1;
  v12 = a2;
  v13[0] = &unk_2A1F1BDB8;
  v13[1] = &v12;
  v13[2] = &v10;
  v14 = v13;
  sub_298B2FFE4(result, a2, v13);
  result = v14;
  if (v14 == v13)
  {
    result = (*(*v14 + 32))(v14);
  }

  else if (v14)
  {
    result = (*(*v14 + 40))();
  }

LABEL_12:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned int *sub_298B604D4(uint64_t a1, _DWORD *a2, unsigned int *a3, uint64_t a4)
{
  if (*(*(a1 + 160) + 24) == a4)
  {
    return a3;
  }

  v4 = *(a4 + 228);
  if (v4 == -1)
  {
    v4 = (*a2)++;
    *(a4 + 228) = v4;
    if ((*(a4 + 225) & 0x10) == 0)
    {
LABEL_4:
      v5 = 0;
      if (v4 == -1)
      {
        return a3;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a4 + 225) & 0x10) == 0)
  {
    goto LABEL_4;
  }

  if (*(*(a1 + 144) + 21))
  {
    v5 = *(a4 + 232);
    if (v4 == -1 && v5 == 0)
    {
      return a3;
    }

LABEL_12:
    v7 = a3[56];
    if (!v5)
    {
      return sub_298B2EF40(a1, *(a3 + 25), *(a3 + 26), v7, a3[55], "", 0, 0, v4);
    }

    if (*(v5 + 8))
    {
      v19 = *(v5 - 8);
      v20 = *v19;
      v8 = v19 + 2;
      v9 = v20;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    return sub_298B2EF40(a1, *(a3 + 25), *(a3 + 26), v7 | 0x1000, a3[55], v8, v9, 5u, v4);
  }

  v11 = *(a3 + 25);
  v12 = *(a3 + 26);
  v13 = a3;
  v26 = 773;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = "$";
  v24 = *(a4 + 200);
  LOBYTE(__s2[0]) = 36;
  v14 = sub_298B96A54(&v24, __s2, 1uLL, 0);
  if (v14 == -1)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    if (*(&v24 + 1) >= (v14 + 1))
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = *(&v24 + 1);
    }

    v16 = v24 + v15;
    v17 = *(&v24 + 1) - v15;
  }

  __s2[0] = v25;
  __s2[2] = v16;
  __s2[3] = v17;
  v28 = 1282;
  sub_298B996A4(__s2, v29);
  if (v30 >= 0)
  {
    v21 = v29;
  }

  else
  {
    v21 = v29[0];
  }

  if (v30 >= 0)
  {
    v22 = v30;
  }

  else
  {
    v22 = v29[1];
  }

  a3 = sub_298B2EF40(a1, v21, v22, v13[56] | 0x1000, v13[55], "", 0, 2u, 0xFFFFFFFF);
  if ((v30 & 0x80000000) == 0)
  {
    return a3;
  }

  v23 = a3;
  operator delete(v29[0]);
  return v23;
}

void sub_298B60718(void *a1, int a2, uint64_t a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) == 4)
  {
    v6 = *(v5 + 428);
    if (v6 != 6 && v6 != 0)
    {
      v11 = a1[13];
      if (!v11 || *(v11 + 8))
      {
        v8 = ".seh_ directive must appear within an active frame";
        goto LABEL_8;
      }

      v13 = (*(*a1 + 80))(a1);
      v14 = *(a1[1] + 152);
      v15 = *(v14 + 160);
      v16 = *(v14 + 176);
      v17 = (v15 + 8 * v16);
      if (v16)
      {
        v18 = a2;
        v19 = v16 - 1;
        LODWORD(v20) = v19 & (37 * a2);
        v21 = (v15 + 8 * v20);
        v22 = *v21;
        if (*v21 == a2)
        {
LABEL_25:
          if (v21 != v17)
          {
            v18 = v21[1];
          }

          *&v26 = v13;
          DWORD2(v26) = -1;
          HIDWORD(v26) = v18;
          v27 = 0;
          sub_298B60964(v11 + 88, &v26);
          v25 = *MEMORY[0x29EDCA608];
          return;
        }

        v23 = 1;
        while (v22 != -1)
        {
          v24 = v20 + v23++;
          v20 = v24 & v19;
          v22 = *(v15 + 8 * v20);
          if (v22 == a2)
          {
            v21 = (v15 + 8 * v20);
            goto LABEL_24;
          }
        }
      }

      v21 = v17;
LABEL_24:
      v18 = a2;
      goto LABEL_25;
    }
  }

  v8 = ".seh_* directives are not supported on this target";
LABEL_8:
  *&v26 = v8;
  v28 = 259;
  *(v4 + 2056) = 1;
  v29 = a3;
  v30[0] = &unk_2A1F1BDB8;
  v30[1] = &v29;
  v30[2] = &v26;
  v31 = v30;
  sub_298B2FFE4(v4, a3, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
  }

  else if (v31)
  {
    (*(*v31 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_298B60964(uint64_t a1, __int128 *a2)
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

void sub_298B60AB0(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) == 4)
  {
    v7 = *(v6 + 428);
    if (v7 != 6 && v7 != 0)
    {
      v12 = a1[13];
      if (!v12 || *(v12 + 8))
      {
        v9 = ".seh_ directive must appear within an active frame";
        goto LABEL_8;
      }

      if ((*(v12 + 76) & 0x80000000) == 0)
      {
        v9 = "frame register and offset can be set at most once";
        goto LABEL_8;
      }

      if ((a3 & 0xF) != 0)
      {
        v9 = "offset is not a multiple of 16";
        goto LABEL_8;
      }

      if (a3 >= 0xF1)
      {
        v9 = "frame offset must be less than or equal to 240";
        goto LABEL_8;
      }

      v15 = (*(*a1 + 80))(a1);
      v16 = *(a1[1] + 152);
      v17 = *(v16 + 160);
      v18 = *(v16 + 176);
      v19 = (v17 + 8 * v18);
      if (v18)
      {
        v20 = a2;
        v21 = v18 - 1;
        LODWORD(v22) = v21 & (37 * a2);
        v23 = (v17 + 8 * v22);
        v24 = *v23;
        if (*v23 == a2)
        {
LABEL_31:
          if (v23 != v19)
          {
            v20 = v23[1];
          }

          *&v31 = v15;
          *(&v31 + 1) = __PAIR64__(v20, a3);
          v32 = 3;
          v27 = *(v12 + 88);
          v28 = *(v12 + 96);
          v29 = v12 + 88;
          *(v29 - 12) = -1431655765 * ((v28 - v27) >> 3);
          sub_298B60964(v29, &v31);
          v30 = *MEMORY[0x29EDCA608];
          return;
        }

        v25 = 1;
        while (v24 != -1)
        {
          v26 = v22 + v25++;
          v22 = v26 & v21;
          v24 = *(v17 + 8 * v22);
          if (v24 == a2)
          {
            v23 = (v17 + 8 * v22);
            goto LABEL_30;
          }
        }
      }

      v23 = v19;
LABEL_30:
      v20 = a2;
      goto LABEL_31;
    }
  }

  v9 = ".seh_* directives are not supported on this target";
LABEL_8:
  *&v31 = v9;
  v33 = 259;
  *(v5 + 2056) = 1;
  v34 = a4;
  v35[0] = &unk_2A1F1BDB8;
  v35[1] = &v34;
  v35[2] = &v31;
  v36 = v35;
  sub_298B2FFE4(v5, a4, v35);
  if (v36 == v35)
  {
    (*(*v36 + 32))(v36);
  }

  else if (v36)
  {
    (*(*v36 + 40))();
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_298B60D54(void *a1, unsigned int a2, uint64_t a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) != 4 || ((v6 = *(v5 + 428), v6 != 6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !*(v11 + 8))
    {
      if (a2)
      {
        if ((a2 & 7) == 0)
        {
          v13 = (*(*a1 + 80))(a1);
          if (a2 > 0x80)
          {
            v14 = 1;
          }

          else
          {
            v14 = 2;
          }

          *&v16 = v13;
          *(&v16 + 1) = a2 | 0xFFFFFFFF00000000;
          v17 = v14;
          sub_298B60964(v11 + 88, &v16);
          v15 = *MEMORY[0x29EDCA608];
          return;
        }

        v8 = "stack allocation size is not a multiple of 8";
      }

      else
      {
        v8 = "stack allocation size must be non-zero";
      }
    }

    else
    {
      v8 = ".seh_ directive must appear within an active frame";
    }
  }

  *&v16 = v8;
  v18 = 259;
  *(v4 + 2056) = 1;
  v19 = a3;
  v20[0] = &unk_2A1F1BDB8;
  v20[1] = &v19;
  v20[2] = &v16;
  v21 = v20;
  sub_298B2FFE4(v4, a3, v20);
  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_298B60F48(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) == 4)
  {
    v7 = *(v6 + 428);
    if (v7 != 6 && v7 != 0)
    {
      v12 = a1[13];
      if (!v12 || *(v12 + 8))
      {
        v9 = ".seh_ directive must appear within an active frame";
        goto LABEL_8;
      }

      if ((a3 & 7) != 0)
      {
        v9 = "register save offset is not 8 byte aligned";
        goto LABEL_8;
      }

      v15 = (*(*a1 + 80))(a1);
      v16 = *(a1[1] + 152);
      v17 = *(v16 + 160);
      v18 = *(v16 + 176);
      v19 = (v17 + 8 * v18);
      if (v18)
      {
        v20 = a2;
        v21 = v18 - 1;
        LODWORD(v22) = v21 & (37 * a2);
        v23 = (v17 + 8 * v22);
        v24 = *v23;
        if (*v23 == a2)
        {
LABEL_27:
          if (v23 != v19)
          {
            v20 = v23[1];
          }

          *&v29 = v15;
          if (a3 <= 0x7FFF8)
          {
            v27 = 4;
          }

          else
          {
            v27 = 5;
          }

          *(&v29 + 1) = __PAIR64__(v20, a3);
          v30 = v27;
          sub_298B60964(v12 + 88, &v29);
          v28 = *MEMORY[0x29EDCA608];
          return;
        }

        v25 = 1;
        while (v24 != -1)
        {
          v26 = v22 + v25++;
          v22 = v26 & v21;
          v24 = *(v17 + 8 * v22);
          if (v24 == a2)
          {
            v23 = (v17 + 8 * v22);
            goto LABEL_26;
          }
        }
      }

      v23 = v19;
LABEL_26:
      v20 = a2;
      goto LABEL_27;
    }
  }

  v9 = ".seh_* directives are not supported on this target";
LABEL_8:
  *&v29 = v9;
  v31 = 259;
  *(v5 + 2056) = 1;
  v32 = a4;
  v33[0] = &unk_2A1F1BDB8;
  v33[1] = &v32;
  v33[2] = &v29;
  v34 = v33;
  sub_298B2FFE4(v5, a4, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))();
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_298B611B4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v35 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = *(v5 + 144);
  if (*(v6 + 420) == 4)
  {
    v7 = *(v6 + 428);
    if (v7 != 6 && v7 != 0)
    {
      v12 = a1[13];
      if (!v12 || *(v12 + 8))
      {
        v9 = ".seh_ directive must appear within an active frame";
        goto LABEL_8;
      }

      if ((a3 & 0xF) != 0)
      {
        v9 = "offset is not a multiple of 16";
        goto LABEL_8;
      }

      v15 = (*(*a1 + 80))(a1);
      v16 = *(a1[1] + 152);
      v17 = *(v16 + 160);
      v18 = *(v16 + 176);
      v19 = (v17 + 8 * v18);
      if (v18)
      {
        v20 = a2;
        v21 = v18 - 1;
        LODWORD(v22) = v21 & (37 * a2);
        v23 = (v17 + 8 * v22);
        v24 = *v23;
        if (*v23 == a2)
        {
LABEL_27:
          if (v23 != v19)
          {
            v20 = v23[1];
          }

          *&v29 = v15;
          if (a3 <= 0x7FFF8)
          {
            v27 = 8;
          }

          else
          {
            v27 = 9;
          }

          *(&v29 + 1) = __PAIR64__(v20, a3);
          v30 = v27;
          sub_298B60964(v12 + 88, &v29);
          v28 = *MEMORY[0x29EDCA608];
          return;
        }

        v25 = 1;
        while (v24 != -1)
        {
          v26 = v22 + v25++;
          v22 = v26 & v21;
          v24 = *(v17 + 8 * v22);
          if (v24 == a2)
          {
            v23 = (v17 + 8 * v22);
            goto LABEL_26;
          }
        }
      }

      v23 = v19;
LABEL_26:
      v20 = a2;
      goto LABEL_27;
    }
  }

  v9 = ".seh_* directives are not supported on this target";
LABEL_8:
  *&v29 = v9;
  v31 = 259;
  *(v5 + 2056) = 1;
  v32 = a4;
  v33[0] = &unk_2A1F1BDB8;
  v33[1] = &v32;
  v33[2] = &v29;
  v34 = v33;
  sub_298B2FFE4(v5, a4, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
  }

  else if (v34)
  {
    (*(*v34 + 40))();
    v10 = *MEMORY[0x29EDCA608];
    return;
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_298B61420(void *a1, int a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a1[1];
  v5 = *(v4 + 144);
  if (*(v5 + 420) != 4 || ((v6 = *(v5 + 428), v6 != 6) ? (v7 = v6 == 0) : (v7 = 1), v7))
  {
    v8 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !v11[1])
    {
      v12 = v11[11];
      v13 = v11[12];
      v14 = (v11 + 11);
      if (v12 == v13)
      {
        v17 = (*(*a1 + 80))(a1);
        v18 = a2;
        v19 = 0xAFFFFFFFFLL;
        sub_298B60964(v14, &v17);
        v16 = *MEMORY[0x29EDCA608];
        return;
      }

      v8 = "If present, PushMachFrame must be the first UOP";
    }

    else
    {
      v8 = ".seh_ directive must appear within an active frame";
    }
  }

  v17 = v8;
  v20 = 259;
  *(v4 + 2056) = 1;
  v21 = a3;
  v22[0] = &unk_2A1F1BDB8;
  v22[1] = &v21;
  v22[2] = &v17;
  v23 = v22;
  sub_298B2FFE4(v4, a3, v22);
  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
  }

  else if (v23)
  {
    (*(*v23 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B61600(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v4 = *(v3 + 144);
  if (*(v4 + 420) != 4 || ((v5 = *(v4 + 428), v5 != 6) ? (v6 = v5 == 0) : (v6 = 1), v6))
  {
    v7 = ".seh_* directives are not supported on this target";
  }

  else
  {
    v11 = a1[13];
    if (v11 && !*(v11 + 8))
    {
      result = (*(*a1 + 80))(a1);
      *(v11 + 40) = result;
      v12 = *MEMORY[0x29EDCA608];
      return result;
    }

    v7 = ".seh_ directive must appear within an active frame";
  }

  v13 = v7;
  v14 = 259;
  *(v3 + 2056) = 1;
  v15 = a2;
  v16[0] = &unk_2A1F1BDB8;
  v16[1] = &v15;
  v16[2] = &v13;
  v17 = v16;
  sub_298B2FFE4(v3, a2, v16);
  result = v17;
  if (v17 == v16)
  {
    result = (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    result = (*(*v17 + 40))();
    v9 = *MEMORY[0x29EDCA608];
    return result;
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B617D8(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[1] + 1698) == 1)
  {
    v8 = "DWARF64 Mark";
    v9 = 259;
    (*(*a1 + 112))(a1, &v8, 1);
    (*(*a1 + 520))(a1, 0xFFFFFFFFLL, 4);
  }

  (*(*a1 + 112))(a1, a3, 1);
  if (*(a1[1] + 1698))
  {
    v6 = 8;
  }

  else
  {
    v6 = 4;
  }

  return (*(*a1 + 520))(a1, a2, v6);
}

unint64_t sub_298B61934(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a1[1] + 1698) == 1)
  {
    v20 = "DWARF64 Mark";
    v23 = 259;
    (*(*a1 + 112))(a1, &v20, 1);
    (*(*a1 + 520))(a1, 0xFFFFFFFFLL, 4);
  }

  v6 = 1;
  (*(*a1 + 112))(a1, a3, 1);
  v7 = a1[1];
  v8 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v8 == 1)
    {
      v20 = "_start";
      LOBYTE(v8) = 3;
    }

    else
    {
      v9 = *(a2 + 8);
      if (*(a2 + 33) == 1)
      {
        v10 = *a2;
      }

      else
      {
        LOBYTE(v8) = 2;
        v10 = a2;
      }

      v20 = v10;
      v21 = v9;
      v22 = "_start";
      v6 = 3;
    }
  }

  LOBYTE(v23) = v8;
  HIBYTE(v23) = v6;
  v11 = 1;
  v12 = sub_298B2D8D0(v7, &v20, 1);
  v13 = a1[1];
  v14 = *(a2 + 32);
  if (*(a2 + 32))
  {
    if (v14 == 1)
    {
      v20 = "_end";
      LOBYTE(v14) = 3;
    }

    else
    {
      v15 = *(a2 + 8);
      if (*(a2 + 33) == 1)
      {
        v16 = *a2;
      }

      else
      {
        LOBYTE(v14) = 2;
        v16 = a2;
      }

      v20 = v16;
      v21 = v15;
      v22 = "_end";
      v11 = 3;
    }
  }

  LOBYTE(v23) = v14;
  HIBYTE(v23) = v11;
  v17 = sub_298B2D8D0(v13, &v20, 1);
  if (*(a1[1] + 1698))
  {
    v18 = 8;
  }

  else
  {
    v18 = 4;
  }

  (*(*a1 + 848))(a1, v17, v12, v18);
  (*(*a1 + 192))(a1, v12, 0);
  return v17;
}

uint64_t sub_298B61BD0(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  sub_298B61C6C(a1, a3);
  a2[3] = a3;
  v6 = a2[1] & 0xFFFFFFFFFFFF8FFFLL | 0x2000;
  *a2 = 0;
  a2[1] = v6;
  result = *(a1 + 16);
  if (result)
  {
    v8 = *(*result + 24);

    return v8();
  }

  return result;
}

uint64_t sub_298B61C6C(uint64_t result, unsigned __int8 *a2)
{
  v3 = result;
  while (1)
  {
    while (1)
    {
      v4 = *a2;
      if (v4 > 2)
      {
        break;
      }

      if (*a2)
      {
        if (v4 != 2)
        {
          return result;
        }

        v5 = *(a2 + 2);
        v6 = *(*v3 + 56);
        v7 = v3;

        return v6(v7, v5);
      }

      result = sub_298B61C6C(v3, *(a2 + 2));
      a2 = *(a2 + 3);
    }

    if (v4 != 3)
    {
      break;
    }

    a2 = *(a2 + 2);
  }

  if (v4 == 4)
  {
    v6 = *(*(a2 - 1) + 56);
    v7 = a2 - 8;
    v5 = v3;

    return v6(v7, v5);
  }

  return result;
}

uint64_t sub_298B61DAC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = result;
    v5 = 16 * v2;
    do
    {
      v6 = *(a2 + 16) + v5;
      if (*(v6 - 16) == 5)
      {
        result = sub_298B61C6C(v4, *(v6 - 8));
      }

      v5 -= 16;
    }

    while (v5);
  }

  return result;
}

void sub_298B61E18(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, int a6, uint64_t a7, unint64_t a8)
{
  v16 = a1[1];
  v28[0] = "tmp";
  v33 = 259;
  v17 = sub_298B2D8D0(v16, v28, 1);
  (*(*a1 + 192))(a1, v17, 0);
  v28[0] = a2;
  v28[1] = a3;
  v29 = a6;
  v30 = a5;
  v31 = a4;
  v32 = v17;
  v18 = 0x9DDFEA08EB382D69 * ((8 * (a8 & 0x1FFFFFFF) + 8) ^ HIDWORD(a8));
  v19 = 0x9DDFEA08EB382D69 * (HIDWORD(a8) ^ (v18 >> 47) ^ v18);
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
  v21 = *(v16 + 1720);
  if (v21)
  {
    v22 = vcnt_s8(v21);
    v22.i16[0] = vaddlv_u8(v22);
    if (v22.u32[0] > 1uLL)
    {
      v23 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
      if (v20 >= *&v21)
      {
        v23 = v20 % *&v21;
      }
    }

    else
    {
      v23 = (*&v21 - 1) & v20;
    }

    v24 = *(*(v16 + 1712) + 8 * v23);
    if (v24)
    {
      v25 = *v24;
      if (*v24)
      {
        if (v22.u32[0] < 2uLL)
        {
          while (1)
          {
            v27 = v25[1];
            if (v27 == v20)
            {
              if (v25[2] == a8)
              {
                goto LABEL_23;
              }
            }

            else if ((v27 & (*&v21 - 1)) != v23)
            {
              goto LABEL_22;
            }

            v25 = *v25;
            if (!v25)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v26 = v25[1];
          if (v26 == v20)
          {
            if (v25[2] == a8)
            {
LABEL_23:
              sub_298B52624((v25 + 3), v28, a7);
            }
          }

          else
          {
            if (v26 >= *&v21)
            {
              v26 %= *&v21;
            }

            if (v26 != v23)
            {
              break;
            }
          }

          v25 = *v25;
        }

        while (v25);
      }
    }
  }

LABEL_22:
  operator new();
}

uint64_t sub_298B623B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_298B44B48(a2, 0, a1[1], 0);
  v8 = sub_298B44B48(a3, 0, a1[1], 0);
  v9 = a1[1];
  *(v9 + 264) += 32;
  v10 = *(v9 + 184);
  if (v10)
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) - v10 + 32 > *(v9 + 192) - v10;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(v9 + 208) >> 7;
    if (v12 >= 0x1E)
    {
      LOBYTE(v12) = 30;
    }

    v13 = 4096 << v12;
    v15 = operator new(4096 << v12, 8uLL);
    v14 = *(v9 + 208);
    if (v14 >= *(v9 + 212))
    {
      sub_298B90A44(v9 + 200, (v9 + 216), v14 + 1, 8);
      LODWORD(v14) = *(v9 + 208);
    }

    *(*(v9 + 200) + 8 * v14) = v15;
    ++*(v9 + 208);
    *(v9 + 192) = v15 + v13;
  }

  else
  {
    v15 = (v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v9 + 184) = v15 + 32;
  *v15 = 0;
  *(v15 + 1) = (*(v15 + 4) << 24) | 0x12;
  *(v15 + 8) = 0;
  *(v15 + 16) = v7;
  *(v15 + 24) = v8;
  v16 = a1[1];
  if (*(*(v16 + 144) + 352))
  {
    v21 = "set";
    v22 = 259;
    v17 = sub_298B2D8D0(v16, &v21, 1);
    (*(*a1 + 272))(a1, v17, v15);
    v18 = sub_298B44B48(v17, 0, a1[1], 0);
    return (*(*a1 + 512))(a1, v18, a4, 0);
  }

  else
  {
    v20 = *(*a1 + 512);

    return v20(a1, v15, a4, 0);
  }
}

uint64_t sub_298B62638(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_298B44B48(a2, 0, a1[1], 0);
  v6 = sub_298B44B48(a3, 0, a1[1], 0);
  v7 = a1[1];
  *(v7 + 264) += 32;
  v8 = *(v7 + 184);
  if (v8)
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) - v8 + 32 > *(v7 + 192) - v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = *(v7 + 208) >> 7;
    if (v10 >= 0x1E)
    {
      LOBYTE(v10) = 30;
    }

    v11 = 4096 << v10;
    v13 = operator new(4096 << v10, 8uLL);
    v12 = *(v7 + 208);
    if (v12 >= *(v7 + 212))
    {
      v17 = v13;
      sub_298B90A44(v7 + 200, (v7 + 216), v12 + 1, 8);
      v13 = v17;
      LODWORD(v12) = *(v7 + 208);
    }

    *(*(v7 + 200) + 8 * v12) = v13;
    ++*(v7 + 208);
    *(v7 + 192) = v13 + v11;
  }

  else
  {
    v13 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  }

  *(v7 + 184) = v13 + 32;
  v14 = (*(v13 + 4) << 24) | 0x12;
  *v13 = 0;
  *(v13 + 1) = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = v5;
  *(v13 + 24) = v6;
  v15 = *(*a1 + 552);

  return v15(a1);
}

uint64_t sub_298B62890(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 144) + 32 * *(result + 152);
  v4 = *(v3 - 32);
  v5 = *(v3 - 24);
  *(v3 - 16) = v4;
  *(v3 - 8) = v5;
  if (v4 != a2 || v5 != a3)
  {
    v7 = result;
    result = (*(*result + 160))(result);
    v10 = *(v7 + 144) + 32 * *(v7 + 152);
    *(v10 - 32) = a2;
    *(v10 - 24) = a3;
    v11 = *(a2 + 8);
    if (v11)
    {
      if ((result = *v11) == 0 && ((v11[1] & 0x7080) != 0x2000 || (v11[1] |= 8uLL, v12 = v11, result = sub_298B45440(v11[3]), v11 = v12, (*v12 = result) == 0)) || result == qword_2A13C3628)
      {
        v13 = *(*v7 + 192);

        return v13(v7, v11, 0);
      }
    }
  }

  return result;
}

uint64_t *sub_298B629B4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v5 = a1[1];
    v10 = "sec_end";
    v11 = 259;
    v6 = a2;
    v7 = sub_298B2D8D0(v5, &v10, 1);
    a2 = v6;
    v3 = v7;
    *(a2 + 16) = v7;
    v4 = *v7;
    if (!v4)
    {
LABEL_5:
      if ((v3[1] & 0x7080) != 0x2000)
      {
        goto LABEL_9;
      }

      v3[1] |= 8uLL;
      v8 = a2;
      v4 = sub_298B45440(v3[3]);
      a2 = v8;
      *v3 = v4;
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 != qword_2A13C3628)
  {
    return v3;
  }

LABEL_9:
  (*(*a1 + 168))(a1, a2, 0);
  (*(*a1 + 192))(a1, v3, 0);
  return v3;
}

unint64_t sub_298B62AF4(unint64_t result, _DWORD *a2, void *a3, _DWORD *a4, uint64_t *a5)
{
  if (a2[11] != 5)
  {
    return result;
  }

  v6 = a2[9];
  v7 = v6 > 0x1F;
  v8 = (1 << v6) & 0xFC000222;
  if (v7 || v8 == 0)
  {
    return result;
  }

  v13 = result;
  result = sub_298CF558C(a2);
  if (!result)
  {
    return result;
  }

  v14 = a2[9];
  if (v14 > 26)
  {
    if (v14 > 28)
    {
      if (v14 != 29)
      {
        v15 = sub_298CF558C(a2);
        v17 = v16;
        goto LABEL_42;
      }

      v25 = sub_298CF558C(a2);
      v27 = v25 | 0x8000000000000013;
      goto LABEL_36;
    }

    if (v14 != 27)
    {
      v25 = sub_298CF558C(a2);
      v27 = v25 | 0x8000000000000002;
LABEL_36:
      if (v25)
      {
        v15 = v25;
      }

      else
      {
        v15 = v27;
      }

      if (v25)
      {
        v17 = v26;
      }

      else
      {
        v17 = v26 | 0x8000000080000000;
      }

      goto LABEL_42;
    }

    v18 = sub_298CF558C(a2);
    v21 = v18 == 0;
    v20 = 2;
    goto LABEL_28;
  }

  if (v14 > 8)
  {
    if (v14 != 9)
    {
      goto LABEL_13;
    }
  }

  else if (v14 != 1)
  {
LABEL_13:
    v18 = sub_298CF558C(a2);
    v20 = 5;
    if (a2[6] == 3)
    {
      v20 = 7;
    }

    v21 = v18 == 0;
LABEL_28:
    if (v21)
    {
      v15 = v20;
    }

    else
    {
      v15 = v18;
    }

    if (v21)
    {
      v17 = 0;
    }

    else
    {
      v17 = v19;
    }

    goto LABEL_42;
  }

  v15 = 0x800000040000000ALL;
  v22 = sub_298CF558C(a2);
  v17 = 0;
  v24 = a2[9];
  if (v24 <= 25)
  {
    if (v24 == 1)
    {
      if (v22)
      {
        if (v22 < 4)
        {
          v17 = v23;
          v15 = v22;
          goto LABEL_42;
        }

        if (v22 > 0x13)
        {
          v17 = 0;
          v15 = (v22 - 9);
          goto LABEL_42;
        }
      }

      else
      {
        v22 = 8;
      }

      v17 = 0;
      v15 = ((v22 << 32) + 0x7FFFFFFC0000000ALL) | 0x8000000000000000;
      goto LABEL_42;
    }

    if (v24 != 5)
    {
      v17 = v22 ? v23 : 0;
      if (v22)
      {
        v15 = v22;
      }
    }
  }

LABEL_42:
  result = sub_298CF5A0C(a2);
  if (!(result & 0x7FFFFFFFFFFFFFFFLL | v28 & 0x7FFFFFFF7FFFFFFFLL) || (v29 = result, v30 = v28, v15 >= result) && (result < v15 || (v38 = HIDWORD(v15) & 0x7FFFFFFF, v39 = HIDWORD(result) & 0x7FFFFFFF, v38 >= v39) && (v39 < v38 || (v17 & 0x7FFFFFFF) >= (v28 & 0x7FFFFFFF) && ((v28 & 0x7FFFFFFF) < (v17 & 0x7FFFFFFF) || (HIDWORD(v17) & 0x7FFFFFFFu) >= (HIDWORD(v28) & 0x7FFFFFFFu)))))
  {
    v30 = v17;
    v29 = v15;
  }

  v31 = a2[9];
  if (v31 <= 25)
  {
    v32 = 0x8000000E0000000ALL;
    if (v31 != 5)
    {
      goto LABEL_53;
    }

    if (a2[10] == 25)
    {
      goto LABEL_58;
    }

LABEL_52:
    v32 = 12;
LABEL_53:
    if (v29 < v32)
    {
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if ((v31 - 28) < 4)
  {
    goto LABEL_58;
  }

  if (v31 == 26)
  {
    goto LABEL_52;
  }

  v32 = 5;
  if (v29 < 5)
  {
    goto LABEL_56;
  }

LABEL_54:
  if (v32 < v29 || (HIDWORD(v29) & 0x7FFFFFFFu) >= (BYTE4(v32) & 0xEu))
  {
LABEL_58:
    v34 = a2[10];
    v35 = HIDWORD(v29) & 0x7FFFFFFF;
    if (a4 && v34 == 25 && (a4[9] & 0xFFFFFFF7) == 1)
    {
      v67[0] = 0;
      v67[1] = 0;
      sub_298B62AF4(v13, a4, a5, 0, v67);
      v36 = a2[9];
      v37 = a2[10];
      if (v36 <= 26)
      {
        if (v36 > 8)
        {
          if (v36 == 9)
          {
            if (v37 == 23)
            {
              v36 = 25;
            }

            else
            {
              v36 = 1;
            }

LABEL_186:
            if (v29 < 0)
            {
              v53 = v35;
            }

            else
            {
              v53 = 0;
            }

            if (v30 < 0)
            {
              v54 = v30 & 0x7FFFFFFF;
            }

            else
            {
              v54 = 0;
            }

            v55 = *a3;
            v56 = a3[1];
            v57 = *(*v13 + 248);

            return v57(v13, v36, v29, v53, v54, v55, v56);
          }

          if (v37 == 23)
          {
            v36 = 27;
            goto LABEL_186;
          }

          v43 = v37 == 24;
          v44 = 3;
          v45 = 8;
        }

        else
        {
          if (v36 == 1)
          {
            goto LABEL_186;
          }

          if (v37 == 23)
          {
            v36 = 26;
            goto LABEL_186;
          }

          if (v37 == 25)
          {
            v36 = 6;
            goto LABEL_186;
          }

          v43 = v37 == 24;
          v44 = 2;
          v45 = 7;
        }
      }

      else
      {
        if (v36 > 28)
        {
          if (v36 == 29)
          {
            v36 = 10;
          }

          else if (v36 == 30)
          {
            v36 = 14;
          }

          else if (v37 == 23)
          {
            v36 = 29;
          }

          else if (v37 == 24)
          {
            v36 = 12;
          }

          else
          {
            v36 = 11;
          }

          goto LABEL_186;
        }

        if (v36 == 27)
        {
          if (v37 == 23)
          {
            v36 = 28;
            goto LABEL_186;
          }

          v43 = v37 == 24;
          v44 = 4;
          v45 = 9;
        }

        else
        {
          v43 = v37 == 23;
          v44 = 5;
          v45 = 30;
        }
      }

      if (v43)
      {
        v36 = v45;
      }

      else
      {
        v36 = v44;
      }

      goto LABEL_186;
    }

    if (v31 > 26)
    {
      if (v31 > 28)
      {
        if (v31 == 29)
        {
          v31 = 10;
        }

        else if (v31 == 30)
        {
          v31 = 14;
        }

        else if (v34 == 23)
        {
          v31 = 29;
        }

        else if (v34 == 24)
        {
          v31 = 12;
        }

        else
        {
          v31 = 11;
        }

        goto LABEL_128;
      }

      if (v31 == 27)
      {
        if (v34 == 23)
        {
          v31 = 28;
          goto LABEL_128;
        }

        v40 = v34 == 24;
        v41 = 4;
        v42 = 9;
      }

      else
      {
        v40 = v34 == 23;
        v41 = 5;
        v42 = 30;
      }

LABEL_125:
      if (v40)
      {
        v31 = v42;
      }

      else
      {
        v31 = v41;
      }

      goto LABEL_128;
    }

    if (v31 > 8)
    {
      if (v31 == 9)
      {
        if (v34 == 23)
        {
          v31 = 25;
        }

        else
        {
          v31 = 1;
        }

        goto LABEL_128;
      }

      if (v34 != 23)
      {
        v40 = v34 == 24;
        v41 = 3;
        v42 = 8;
        goto LABEL_125;
      }

      v31 = 27;
    }

    else
    {
      if (v31 == 1)
      {
        goto LABEL_128;
      }

      if (v34 != 23)
      {
        if (v34 == 25)
        {
          v31 = 6;
          goto LABEL_128;
        }

        v40 = v34 == 24;
        v41 = 2;
        v42 = 7;
        goto LABEL_125;
      }

      v31 = 26;
    }

LABEL_128:
    if (v29 < 0)
    {
      v46 = v35;
    }

    else
    {
      v46 = 0;
    }

    if (v30 < 0)
    {
      v47 = v30 & 0x7FFFFFFF;
    }

    else
    {
      v47 = 0;
    }

    result = (*(*v13 + 240))(v13, v31, v29, v46, v47, *a3, a3[1]);
    v33 = 1;
    if (!a4)
    {
      goto LABEL_201;
    }

    goto LABEL_135;
  }

LABEL_56:
  v33 = 0;
  if (!a4)
  {
    goto LABEL_201;
  }

LABEL_135:
  if ((a2[9] & 0xFFFFFFF7) == 1 && a4[10] == 25)
  {
    v48 = a4[9];
    if (v48 <= 8)
    {
      if (v48 == 1)
      {
        goto LABEL_144;
      }
    }

    else
    {
      if (v48 == 9)
      {
        goto LABEL_144;
      }

      if (v48 != 26)
      {
        sub_298CF558C(a4);
        goto LABEL_144;
      }
    }

    if (!sub_298CF558C(a4))
    {
      a4[6];
    }

LABEL_144:
    sub_298CF5A0C(a4);
    v49 = a4[9];
    v50 = a4[10];
    if (v49 <= 26)
    {
      if (v49 <= 8)
      {
        if (v49 != 1)
        {
          if (v50 == 23)
          {
            v49 = 26;
            goto LABEL_200;
          }

          if (v50 != 25)
          {
            v51 = v50 == 24;
            LODWORD(v49) = 2;
            v52 = 7;
            goto LABEL_197;
          }

          v49 = 6;
        }

LABEL_200:
        v58 = *a5;
        v59 = a5[1];
        result = (*(*v13 + 248))(v13, v49);
        goto LABEL_201;
      }

      if (v49 == 9)
      {
        if (v50 == 23)
        {
          v49 = 25;
        }

        else
        {
          v49 = 1;
        }

        goto LABEL_200;
      }

      if (v50 == 23)
      {
        v49 = 27;
        goto LABEL_200;
      }

      v51 = v50 == 24;
      LODWORD(v49) = 3;
      v52 = 8;
    }

    else
    {
      if (v49 > 28)
      {
        if (v49 == 29)
        {
          v49 = 10;
        }

        else if (v49 == 30)
        {
          v49 = 14;
        }

        else if (v50 == 23)
        {
          v49 = 29;
        }

        else if (v50 == 24)
        {
          v49 = 12;
        }

        else
        {
          v49 = 11;
        }

        goto LABEL_200;
      }

      if (v49 == 27)
      {
        if (v50 == 23)
        {
          v49 = 28;
          goto LABEL_200;
        }

        v51 = v50 == 24;
        LODWORD(v49) = 4;
        v52 = 9;
      }

      else
      {
        v51 = v50 == 23;
        LODWORD(v49) = 5;
        v52 = 30;
      }
    }

LABEL_197:
    if (v51)
    {
      v49 = v52;
    }

    else
    {
      v49 = v49;
    }

    goto LABEL_200;
  }

LABEL_201:
  if ((v33 & 1) == 0)
  {
    v60 = a2[9];
    v61 = 1;
    if (v60 <= 8)
    {
      v61 = v60 == 1;
    }

    else if (v60 != 9)
    {
      if (v60 == 26)
      {
        v61 = 2;
      }

      else
      {
        v61 = 3;
      }
    }

    if (v29 < 0)
    {
      v62 = HIDWORD(v29) & 0x7FFFFFFF;
    }

    else
    {
      v62 = 0;
    }

    if (v30 < 0)
    {
      v63 = v30 & 0x7FFFFFFF;
    }

    else
    {
      v63 = 0;
    }

    v64 = *a3;
    v65 = a3[1];
    v66 = *(*v13 + 232);

    return v66(v13, v61, v29, v62, v63, v64, v65);
  }

  return result;
}

uint64_t sub_298B63450(uint64_t a1)
{
  v2 = (a1 + 152);
  v3 = *(a1 + 152);
  if (v3)
  {
    v4 = *(a1 + 160);
    v5 = *(a1 + 152);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 2);
        if (v4 != v6)
        {
          free(v6);
        }

        MEMORY[0x29C2945E0](*(v4 - 5), 8);
        v4 -= 72;
      }

      while (v4 != v3);
      v5 = *v2;
    }

    *(a1 + 160) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  if (v8)
  {
    v9 = &v7[6 * v8 - 5];
    v10 = -48 * v8;
    do
    {
      v11 = *v9;
      if (*v9)
      {
        *(v9 + 8) = v11;
        operator delete(v11);
      }

      v9 -= 48;
      v10 += 48;
    }

    while (v10);
    v7 = *(a1 + 136);
  }

  if (v7 != v2)
  {
    free(v7);
  }

  MEMORY[0x29C2945E0](*(a1 + 112), 8);
  v12 = *(a1 + 88);
  if (v12)
  {
    *(a1 + 96) = v12;
    operator delete(v12);
  }

  return a1;
}

const char *sub_298B63550(uint64_t a1, _DWORD *a2, size_t a3, _BYTE *a4, size_t a5, const std::string::value_type *a6, std::string::size_type a7, uint64_t a8)
{
  sub_298B6362C(v19, a2, a3, a4, a5, a6, a7, a8, *(a1 + 120), *(a1 + 128), *(a1 + 104), *(a1 + 112));
  v13 = v21;
  *(a1 + 248) = v20;
  v14 = v22;
  v15 = v23;
  *(a1 + 264) = v13;
  *(a1 + 280) = v14;
  *(a1 + 296) = v15;
  v16 = *&v19[16];
  *(a1 + 216) = *v19;
  *(a1 + 232) = v16;
  std::string::__init(v19, a6, a7);
  v17 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v17);
  }

  *v17 = *v19;
  *(a1 + 328) = *&v19[16];
  if (a5)
  {
    result = sub_298B63990(*(a1 + 120), *(a1 + 128), a4, a5);
  }

  else
  {
    result = &unk_298D1A790;
  }

  *(a1 + 184) = result;
  return result;
}

void sub_298B6362C(uint64_t a1, _DWORD *a2, size_t a3, _BYTE *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char **a9, uint64_t a10, _OWORD *a11, uint64_t a12)
{
  sub_298CF192C(&v35, a6, a7);
  if (a10)
  {
    v17 = a12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    goto LABEL_7;
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a3 == 4)
  {
    if (*a2 != 1886152040)
    {
      goto LABEL_10;
    }

    sub_298B64418(a9, a10, a11, a12);
  }

  else if (a3)
  {
LABEL_10:
    v18 = sub_298B6417C(a2, a3, a9, a10);
    if (v18)
    {
      sub_298B63BE0(a1, v18 + 1, a11, a12);
    }

    else
    {
      v19 = sub_298B9CEA8();
      v20 = v19;
      v21 = v19[4];
      if (v19[3] == v21)
      {
        sub_298B9BCEC(v19, "'", 1uLL);
        v22 = *(v20 + 32);
      }

      else
      {
        *v21 = 39;
        v22 = (v19[4] + 1);
        *(v20 + 32) = v22;
      }

      if (a3 <= *(v20 + 24) - v22)
      {
        memcpy(v22, a2, a3);
        v23 = (*(v20 + 32) + a3);
        *(v20 + 32) = v23;
      }

      else
      {
        sub_298B9BCEC(v20, a2, a3);
        v23 = *(v20 + 32);
      }

      if (*(v20 + 24) - v23 > 0x2EuLL)
      {
        qmemcpy(v23, "' is not a recognized processor for this target", 47);
        v24 = (*(v20 + 32) + 47);
        *(v20 + 32) = v24;
      }

      else
      {
        sub_298B9BCEC(v20, "' is not a recognized processor for this target", 0x2FuLL);
        v24 = *(v20 + 32);
      }

      if (*(v20 + 24) - v24 > 0x15uLL)
      {
        qmemcpy(v24, " (ignoring processor)\n", 22);
        *(v20 + 32) += 22;
      }

      else
      {
        sub_298B9BCEC(v20, " (ignoring processor)\n", 0x16uLL);
      }
    }
  }

  if (a5)
  {
    v25 = sub_298B6417C(a4, a5, a9, a10);
    if (v25)
    {
      sub_298B63BE0(a1, v25 + 13, a11, a12);
    }

    else if (a5 != a3 || memcmp(a4, a2, a3))
    {
      v26 = sub_298B9CEA8();
      v27 = sub_298B00584(v26, "'");
      v28 = sub_298B63DC4(v27, a4, a5);
      v29 = sub_298B00584(v28, "' is not a recognized processor for this ");
      sub_298B00584(v29, "target (ignoring processor)\n");
    }
  }

  v30 = v35;
  for (i = v36; v30 != i; v30 += 24)
  {
    if (sub_298B647BC(v30, "+help"))
    {
      sub_298B64418(a9, a10, a11, a12);
    }

    else if (sub_298B647BC(v30, "+cpuhelp"))
    {
      sub_298B64840(a9, a10);
    }

    else
    {
      v32 = *(v30 + 23);
      if (v32 >= 0)
      {
        v33 = v30;
      }

      else
      {
        v33 = *v30;
      }

      if (v32 >= 0)
      {
        v34 = *(v30 + 23);
      }

      else
      {
        v34 = *(v30 + 8);
      }

      sub_298B63E28(a1, v33, v34, a11, a12);
    }
  }

LABEL_7:
  v37 = &v35;
  sub_298B64B64(&v37);
}

const char *sub_298B63990(char **a1, uint64_t a2, _DWORD *a3, size_t a4)
{
  v6 = sub_298B6417C(a3, a4, a1, a2);
  if (v6)
  {
    return v6[25];
  }

  if (a4 != 4 || *a3 != 1886152040)
  {
    v7 = sub_298B9CEA8();
    v8 = sub_298B00584(v7, "'");
    v9 = sub_298B63DC4(v8, a3, a4);
    v10 = sub_298B00584(v9, "' is not a recognized processor for this target");
    sub_298B00584(v10, " (ignoring processor)\n");
  }

  return &unk_298D1A790;
}

uint64_t sub_298B63A2C(uint64_t a1, __int128 *a2, std::string::value_type *__s, std::string::size_type __sz, const std::string::value_type *a5, std::string::size_type a6, const std::string::value_type *a7, std::string::size_type a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a1 = &unk_2A1F1D478;
  v25 = a1 + 8;
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(v25, *a2, *(a2 + 1));
  }

  else
  {
    v26 = *a2;
    *(v25 + 16) = *(a2 + 2);
    *v25 = v26;
  }

  v27 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 5);
  *(a1 + 32) = v27;
  std::string::__init((a1 + 56), __s, __sz);
  std::string::__init((a1 + 80), a5, a6);
  *(a1 + 104) = a9;
  *(a1 + 112) = a10;
  *(a1 + 120) = a11;
  *(a1 + 128) = a12;
  *(a1 + 136) = a13;
  *(a1 + 144) = a14;
  *(a1 + 152) = a15;
  *(a1 + 160) = a16;
  *(a1 + 168) = a17;
  *(a1 + 176) = a18;
  *(a1 + 192) = a19;
  *(a1 + 200) = a20;
  *(a1 + 208) = a21;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  v29 = *(a1 + 79);
  if (v29 >= 0)
  {
    v30 = (a1 + 56);
  }

  else
  {
    v30 = *(a1 + 56);
  }

  if (v29 >= 0)
  {
    v31 = *(a1 + 79);
  }

  else
  {
    v31 = *(a1 + 64);
  }

  v32 = *(a1 + 103);
  if (v32 >= 0)
  {
    v33 = (a1 + 80);
  }

  else
  {
    v33 = *(a1 + 80);
  }

  if (v32 >= 0)
  {
    v34 = *(a1 + 103);
  }

  else
  {
    v34 = *(a1 + 88);
  }

  *(a1 + 296) = 0uLL;
  *(a1 + 312) = 0uLL;
  sub_298B63550(a1, v30, v31, v33, v34, a7, a8, v28);
  return a1;
}

void *sub_298B63BE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = result[1];
  *result |= *a2;
  result[1] = v4 | a2[1];
  v5 = result[3];
  result[2] |= a2[2];
  result[3] = v5 | a2[3];
  v6 = result[5];
  result[4] |= a2[4];
  result[5] = v6 | a2[5];
  v7 = result[7];
  result[6] |= a2[6];
  result[7] = v7 | a2[7];
  v8 = result[9];
  result[8] |= a2[8];
  result[9] = v8 | a2[9];
  v9 = result[11];
  result[10] |= a2[10];
  result[11] = v9 | a2[11];
  if (a4)
  {
    v13 = result;
    v14 = 120 * a4;
    v15 = a3 + 24;
    do
    {
      if ((*(a2 + ((*(v15 - 8) >> 3) & 0x1FFFFFF8)) >> *(v15 - 8)))
      {
        result = sub_298B63BE0(v13, v15, a3, a4);
      }

      v15 += 120;
      v14 -= 120;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_298B63D18(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = result;
    v5 = 1 << a2;
    v6 = a2 >> 6;
    v7 = a3 + 24;
    v8 = 120 * a4;
    do
    {
      if ((*(v7 + 8 * v6) & v5) != 0)
      {
        *(v4 + ((*(v7 - 8) >> 3) & 0x1FFFFFF8)) &= ~(1 << *(v7 - 8));
        result = sub_298B63D18(v4);
      }

      v7 += 120;
      v8 -= 120;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_298B63DC4(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (a3 > v5 - v4)
  {
    sub_298B9BCEC(a1, a2, a3);
    return a1;
  }

  if (!a3)
  {
    return a1;
  }

  memcpy(v4, a2, a3);
  *(a1 + 32) += a3;
  return a1;
}

void *sub_298B63E28(void *a1, char *__s2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *__s2;
  if (v6 == 45 || (v7 = __s2, v8 = a3, v6 == 43))
  {
    if (a3)
    {
      v7 = __s2 + 1;
    }

    else
    {
      v7 = __s2;
    }

    v8 = a3 - (a3 != 0);
  }

  v29 = *__s2;
  if (a5)
  {
    v9 = a4;
    v10 = a4;
    v11 = a5;
    do
    {
      v12 = &v10[15 * (v11 >> 1)];
      v13 = *v12;
      if (*v12)
      {
        v14 = strlen(v13);
        v13 = *v12;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_298B64C08(v13, v14, v7, v8);
      if (v15)
      {
        v11 += ~(v11 >> 1);
      }

      else
      {
        v11 >>= 1;
      }

      if (v15)
      {
        v10 = v12 + 15;
      }
    }

    while (v11);
  }

  else
  {
    v9 = a4;
    v10 = a4;
  }

  if (v10 != (v9 + 120 * a5))
  {
    if (*v10)
    {
      if (strlen(*v10) == v8 && (!v8 || !memcmp(*v10, v7, v8)))
      {
LABEL_23:
        v16 = *(v10 + 4);
        v17 = 1 << v16;
        if (v29 == 43)
        {
          *(a1 + ((v16 >> 3) & 0x1FFFFFF8)) |= v17;

          return sub_298B63BE0(a1, v10 + 3, v9, a5);
        }

        else
        {
          *(a1 + ((v16 >> 3) & 0x1FFFFFF8)) &= ~v17;

          return sub_298B63D18(a1, v16, v9, a5);
        }
      }
    }

    else if (!v8)
    {
      goto LABEL_23;
    }
  }

  v19 = sub_298B9CEA8();
  v20 = v19;
  v21 = v19[4];
  if (v19[3] == v21)
  {
    sub_298B9BCEC(v19, "'", 1uLL);
    result = *(v20 + 32);
    v23 = a3;
    if (a3 > *(v20 + 24) - result)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v21 = 39;
    v22 = v19[3];
    result = (v19[4] + 1);
    *(v20 + 32) = result;
    v23 = a3;
    if (a3 > v22 - result)
    {
LABEL_35:
      sub_298B9BCEC(v20, __s2, v23);
      result = *(v20 + 32);
      goto LABEL_39;
    }
  }

  if (v23)
  {
    v24 = v23;
    memcpy(result, __s2, v23);
    result = (*(v20 + 32) + v24);
    *(v20 + 32) = result;
  }

LABEL_39:
  if (*(v20 + 24) - result > 0x2CuLL)
  {
    qmemcpy(result, "' is not a recognized feature for this target", 45);
    v26 = *(v20 + 24);
    v25 = *(v20 + 32) + 45;
    *(v20 + 32) = v25;
    if ((v26 - v25) > 0x13)
    {
      goto LABEL_41;
    }
  }

  else
  {
    result = sub_298B9BCEC(v20, "' is not a recognized feature for this target", 0x2DuLL);
    v25 = *(v20 + 32);
    if ((*(v20 + 24) - v25) > 0x13)
    {
LABEL_41:
      *(v25 + 16) = 170485106;
      *v25 = *" (ignoring feature)\n";
      *(v20 + 32) += 20;
      return result;
    }
  }

  return sub_298B9BCEC(v20, " (ignoring feature)\n", 0x14uLL);
}

const char **sub_298B6417C(const void *a1, size_t a2, char **a3, uint64_t a4)
{
  v6 = &a3[26 * a4];
  result = sub_298B64C68(a3, v6, a1, a2);
  if (result == v6)
  {
    return 0;
  }

  v8 = *result;
  if (!*result)
  {
    if (!a2)
    {
      return result;
    }

    return 0;
  }

  v9 = result;
  if (strlen(*result) != a2)
  {
    return 0;
  }

  if (!a2)
  {
    return v9;
  }

  v10 = memcmp(v8, a1, a2);
  result = v9;
  if (v10)
  {
    return 0;
  }

  return result;
}

uint64_t sub_298B64260(uint64_t a1)
{
  *a1 = &unk_2A1F1D478;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 56));
      if ((*(a1 + 31) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_298B64308(uint64_t a1)
{
  *a1 = &unk_2A1F1D478;
  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 80));
  if ((*(a1 + 79) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    operator delete(*(a1 + 8));
LABEL_5:

    JUMPOUT(0x29C2945F0);
  }

LABEL_10:
  operator delete(*(a1 + 56));
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_11;
}

uint64_t sub_298B643D4(uint64_t a1)
{
  result = (*(*a1 + 48))(a1, 0);
  if ((result & 0x100000000) != 0)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298B64418(uint64_t result, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if ((byte_2A13C2BE0 & 1) == 0)
  {
    v7 = result;
    if (a2)
    {
      v8 = 0;
      v9 = 208 * a2;
      v10 = result;
      do
      {
        v11 = *v10;
        v10 += 26;
        v12 = strlen(v11);
        if (v8 <= v12)
        {
          v8 = v12;
        }

        v9 -= 208;
      }

      while (v9);
      v13 = a4 << 7;
      if (a4)
      {
LABEL_8:
        v14 = 0;
        v15 = v13 - 8 * a4;
        v16 = a3;
        do
        {
          v17 = *v16;
          v16 += 15;
          v18 = strlen(v17);
          if (v14 <= v18)
          {
            v14 = v18;
          }

          v15 -= 120;
        }

        while (v15);
        v19 = sub_298B9CEA8();
        v20 = v19[4];
        if (v19[3] - v20 <= 0x20uLL)
        {
LABEL_13:
          sub_298B9BCEC(v19, "Available CPUs for this target:\n\n", 0x21uLL);
          if (!a2)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

LABEL_17:
        qmemcpy(v20, "Available CPUs for this target:\n\n", 33);
        v19[4] += 33;
        if (!a2)
        {
          goto LABEL_20;
        }

LABEL_18:
        v21 = 208 * a2;
        do
        {
          v22 = sub_298B9CEA8();
          v36 = &unk_2A1F1D4F0;
          v37 = "  %-*s - Select the %s processor.\n";
          v38 = v8;
          v23 = *v7;
          v7 += 26;
          *&v39 = v23;
          *(&v39 + 1) = v23;
          sub_298B9B1F8(v22, &v36);
          v21 -= 208;
        }

        while (v21);
LABEL_20:
        v24 = sub_298B9CEA8();
        v25 = v24[4];
        if (v25 < v24[3])
        {
LABEL_26:
          v24[4] = v25 + 1;
          *v25 = 10;
          v27 = sub_298B9CEA8();
          v28 = v27[4];
          if (v27[3] - v28 > 0x24uLL)
          {
            goto LABEL_30;
          }
        }

        else
        {
          while (1)
          {
            v26 = v24[2];
            if (v26)
            {
              v24[4] = v26;
              sub_298B9BB84(v24);
              v25 = v24[4];
              goto LABEL_26;
            }

            if (!*(v24 + 14))
            {
              break;
            }

            sub_298B9AE98(v24);
            v25 = v24[4];
            if (v25 < v24[3])
            {
              goto LABEL_26;
            }
          }

          LOBYTE(v36) = 10;
          sub_298B9BB84(v24);
          v27 = sub_298B9CEA8();
          v28 = v27[4];
          if (v27[3] - v28 > 0x24uLL)
          {
LABEL_30:
            qmemcpy(v28, "Available features for this target:\n\n", 37);
            v27[4] += 37;
            if (!a4)
            {
              goto LABEL_33;
            }

LABEL_31:
            v29 = v13 - 8 * a4;
            do
            {
              v30 = sub_298B9CEA8();
              v36 = &unk_2A1F1D4F0;
              v37 = "  %-*s - %s.\n";
              v38 = v14;
              v31 = *a3;
              a3 = (a3 + 120);
              v39 = v31;
              sub_298B9B1F8(v30, &v36);
              v29 -= 120;
            }

            while (v29);
LABEL_33:
            v32 = sub_298B9CEA8();
            v33 = v32[4];
            if (v33 < v32[3])
            {
LABEL_39:
              v32[4] = v33 + 1;
              *v33 = 10;
              result = sub_298B9CEA8();
              v35 = *(result + 32);
              if (*(result + 24) - v35 > 0x74uLL)
              {
LABEL_42:
                qmemcpy(v35, "Use +feature to enable a feature, or -feature to disable it.\nFor example, llc -mcpu=mycpu -mattr=+feature1,-feature2\n", 117);
                *(result + 32) += 117;
                goto LABEL_43;
              }
            }

            else
            {
              while (1)
              {
                v34 = v32[2];
                if (v34)
                {
                  v32[4] = v34;
                  sub_298B9BB84(v32);
                  v33 = v32[4];
                  goto LABEL_39;
                }

                if (!*(v32 + 14))
                {
                  break;
                }

                sub_298B9AE98(v32);
                v33 = v32[4];
                if (v33 < v32[3])
                {
                  goto LABEL_39;
                }
              }

              LOBYTE(v36) = 10;
              sub_298B9BB84(v32);
              result = sub_298B9CEA8();
              v35 = *(result + 32);
              if (*(result + 24) - v35 > 0x74uLL)
              {
                goto LABEL_42;
              }
            }

            result = sub_298B9BCEC(result, "Use +feature to enable a feature, or -feature to disable it.\nFor example, llc -mcpu=mycpu -mattr=+feature1,-feature2\n", 0x75uLL);
LABEL_43:
            byte_2A13C2BE0 = 1;
            return result;
          }
        }

        sub_298B9BCEC(v27, "Available features for this target:\n\n", 0x25uLL);
        if (!a4)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    else
    {
      LODWORD(v8) = 0;
      v13 = a4 << 7;
      if (a4)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v14) = 0;
    v19 = sub_298B9CEA8();
    v20 = v19[4];
    if (v19[3] - v20 <= 0x20uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  return result;
}

BOOL sub_298B647BC(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_298ADDDA0();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t sub_298B64840(uint64_t result, uint64_t a2)
{
  v2 = 0x2A13C2000uLL;
  if ((byte_2A13C2BE1 & 1) == 0)
  {
    v4 = result;
    v5 = sub_298B9CEA8();
    v6 = v5[4];
    if (v5[3] - v6 > 0x20uLL)
    {
      qmemcpy(v6, "Available CPUs for this target:\n\n", 33);
      v5[4] += 33;
      if (!a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_298B9BCEC(v5, "Available CPUs for this target:\n\n", 0x21uLL);
      if (!a2)
      {
LABEL_22:
        v15 = sub_298B9CEA8();
        v16 = v15[4];
        if (v16 < v15[3])
        {
LABEL_28:
          v15[4] = v16 + 1;
          *v16 = 10;
          result = sub_298B9CEA8();
          v18 = *(result + 32);
          if (*(result + 24) - v18 > 0x7DuLL)
          {
LABEL_31:
            qmemcpy(v18, "Use -mcpu or -mtune to specify the target's processor.\nFor example, clang --target=aarch64-unknown-linux-gnu -mcpu=cortex-a35\n", 126);
            *(result + 32) += 126;
            goto LABEL_32;
          }
        }

        else
        {
          while (1)
          {
            v17 = v15[2];
            if (v17)
            {
              v15[4] = v17;
              sub_298B9BB84(v15);
              v16 = v15[4];
              goto LABEL_28;
            }

            if (!*(v15 + 14))
            {
              break;
            }

            sub_298B9AE98(v15);
            v16 = v15[4];
            if (v16 < v15[3])
            {
              goto LABEL_28;
            }
          }

          sub_298B9BB84(v15);
          result = sub_298B9CEA8();
          v18 = *(result + 32);
          if (*(result + 24) - v18 > 0x7DuLL)
          {
            goto LABEL_31;
          }
        }

        result = sub_298B9BCEC(result, "Use -mcpu or -mtune to specify the target's processor.\nFor example, clang --target=aarch64-unknown-linux-gnu -mcpu=cortex-a35\n", 0x7EuLL);
LABEL_32:
        *(v2 + 3041) = 1;
        return result;
      }
    }

    v7 = 208 * a2;
    while (1)
    {
      v8 = sub_298B9CEA8();
      v9 = *(v8 + 32);
      if (*(v8 + 24) == v9)
      {
        v8 = sub_298B9BCEC(v8, "\t", 1uLL);
        v10 = *(v8 + 32);
        v11 = *v4;
        if (*v4)
        {
          goto LABEL_14;
        }

LABEL_10:
        if (*(v8 + 24) != v10)
        {
          goto LABEL_7;
        }

LABEL_11:
        sub_298B9BCEC(v8, "\n", 1uLL);
        v4 += 26;
        v7 -= 208;
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *v9 = 9;
        v10 = (*(v8 + 32) + 1);
        *(v8 + 32) = v10;
        v11 = *v4;
        if (!*v4)
        {
          goto LABEL_10;
        }

LABEL_14:
        v12 = v8;
        v13 = strlen(v11);
        v14 = v13;
        if (v13 <= *(v12 + 24) - v10)
        {
          if (v13)
          {
            memcpy(v10, v11, v13);
            v8 = v12;
            v10 = (*(v12 + 32) + v14);
            *(v12 + 32) = v10;
            v2 = 0x2A13C2000;
            if (*(v8 + 24) == v10)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v8 = v12;
            v2 = 0x2A13C2000;
            if (*(v8 + 24) == v10)
            {
              goto LABEL_11;
            }
          }
        }

        else
        {
          v8 = sub_298B9BCEC(v12, v11, v13);
          v10 = *(v12 + 32);
          v2 = 0x2A13C2000;
          if (*(v8 + 24) == v10)
          {
            goto LABEL_11;
          }
        }

LABEL_7:
        *v10 = 10;
        ++*(v8 + 32);
        v4 += 26;
        v7 -= 208;
        if (!v7)
        {
          goto LABEL_22;
        }
      }
    }
  }

  return result;
}

void sub_298B64B64(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298B64BB8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_298B64BB8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t sub_298B64C08(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a4;
  }

  if (v6 && (v7 = memcmp(a1, __s2, v6)) != 0)
  {
    v8 = (v7 >> 31) | 1;
  }

  else
  {
    if (a2 < a4)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (a2 == a4)
    {
      v8 = 0;
    }
  }

  return v8 >> 31;
}

char **sub_298B64C68(char **result, char **a2, const void *a3, size_t a4)
{
  if (a2 != result)
  {
    v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - result) >> 4);
    do
    {
      v5 = &result[26 * (v4 >> 1)];
      v7 = *v5;
      v6 = v5 + 26;
      v8 = result;
      v9 = a3;
      v10 = a4;
      v11 = sub_298B64D14(v7, a3, a4);
      a3 = v9;
      a4 = v10;
      if (v11)
      {
        v4 += ~(v4 >> 1);
      }

      else
      {
        v4 >>= 1;
      }

      if (v11)
      {
        result = v6;
      }

      else
      {
        result = v8;
      }
    }

    while (v4);
  }

  return result;
}

uint64_t sub_298B64D14(char *__s, const void *a2, size_t a3)
{
  if (__s)
  {
    v10 = a2;
    v11 = strlen(__s);
    a2 = v10;
    v5 = v11;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = a3;
  }

  if (v6 && (v7 = memcmp(__s, a2, v6)) != 0)
  {
    v8 = (v7 >> 31) | 1;
  }

  else
  {
    if (v5 < a3)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v5 == a3)
    {
      v8 = 0;
    }
  }

  return v8 >> 31;
}

void *sub_298B64D98(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 - 8);
    v8 = *v7;
    v5 = (v7 + 2);
    v6 = v8;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    if (!a3)
    {
LABEL_6:
      result = *(a2 + 32);
      if (v6 <= *(a2 + 24) - result)
      {
        if (v6)
        {
          result = memcpy(result, v5, v6);
          *(a2 + 32) += v6;
        }
      }

      else
      {

        return sub_298B9BCEC(a2, v5, v6);
      }

      return result;
    }
  }

  result = (*(*a3 + 56))(a3, v5, v6);
  if (result)
  {
    goto LABEL_6;
  }

  if ((a3[185] & 1) == 0)
  {
    sub_298B868A8("Symbol name with unsupported characters", 1);
  }

  v10 = *(a2 + 32);
  if (v10 < *(a2 + 24))
  {
    goto LABEL_19;
  }

  while (1)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      *(a2 + 32) = v11;
      result = sub_298B9BB84(a2);
      v10 = *(a2 + 32);
LABEL_19:
      *(a2 + 32) = v10 + 1;
      *v10 = 34;
      if (!v6)
      {
        goto LABEL_42;
      }

      goto LABEL_20;
    }

    if (!*(a2 + 56))
    {
      break;
    }

    result = sub_298B9AE98(a2);
    v10 = *(a2 + 32);
    if (v10 < *(a2 + 24))
    {
      goto LABEL_19;
    }
  }

  result = sub_298B9BB84(a2);
  if (v6)
  {
LABEL_20:
    v12 = &v5[v6];
    while (1)
    {
      v15 = *v5;
      if (v15 == 34)
      {
        break;
      }

      if (v15 == 10)
      {
        v16 = *(a2 + 32);
        if (*(a2 + 24) - v16 <= 1uLL)
        {
          v17 = a2;
          v18 = "\\n";
LABEL_35:
          result = sub_298B9BCEC(v17, v18, 2uLL);
          goto LABEL_28;
        }

        *v16 = 28252;
        goto LABEL_38;
      }

      while (1)
      {
        v13 = *(a2 + 32);
        if (v13 < *(a2 + 24))
        {
          goto LABEL_27;
        }

        v14 = *(a2 + 16);
        if (v14)
        {
          break;
        }

        if (!*(a2 + 56))
        {
          result = sub_298B9BB84(a2);
          goto LABEL_28;
        }

        result = sub_298B9AE98(a2);
      }

      *(a2 + 32) = v14;
      result = sub_298B9BB84(a2);
      v13 = *(a2 + 32);
LABEL_27:
      *(a2 + 32) = v13 + 1;
      *v13 = v15;
LABEL_28:
      if (++v5 == v12)
      {
        goto LABEL_42;
      }
    }

    v19 = *(a2 + 32);
    if (*(a2 + 24) - v19 <= 1uLL)
    {
      v17 = a2;
      v18 = "\\"";
      goto LABEL_35;
    }

    *v19 = 8796;
LABEL_38:
    *(a2 + 32) += 2;
    goto LABEL_28;
  }

LABEL_42:
  while (1)
  {
    v20 = *(a2 + 32);
    if (v20 < *(a2 + 24))
    {
      break;
    }

    v21 = *(a2 + 16);
    if (v21)
    {
      *(a2 + 32) = v21;
      result = sub_298B9BB84(a2);
      v20 = *(a2 + 32);
      break;
    }

    if (!*(a2 + 56))
    {
      return sub_298B9BB84(a2);
    }

    result = sub_298B9AE98(a2);
  }

  *(a2 + 32) = v20 + 1;
  *v20 = 34;
  return result;
}

double sub_298B6508C(uint64_t a1)
{
  *a1 = *a1 & 0xC000 | 0x1000;
  *(a1 + 2) = 1;
  *(a1 + 4) = xmmword_298D1A820;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) &= 0xFCu;
  *(a1 + 224) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

void sub_298B650F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 80);
  v3 = *(a2 + 88);
  if (v2 == v3)
  {
    return;
  }

  do
  {
    v6 = *v2;
    if (*(*v2 + 88) != *(*v2 + 96))
    {
      goto LABEL_3;
    }

    v7 = *(v6 + 144);
    if (v7)
    {
      v8 = (*(v6 + 136) + 16);
      v9 = 48 * v7;
      while (*(v8 - 1) == *v8)
      {
        v8 += 6;
        v9 -= 48;
        if (!v9)
        {
          goto LABEL_4;
        }
      }

LABEL_3:
      v5 = sub_298B604D4(*(a2 + 8), (a2 + 296), *(*(*(a2 + 8) + 160) + 696), *(v6 + 56));
      (*(*a2 + 168))(a2, v5, 0);
      sub_298B65650(a2, v6, 1);
    }

LABEL_4:
    ++v2;
  }

  while (v2 != v3);
  v10 = *(a2 + 80);
  v38 = *(a2 + 88);
  if (v10 != v38)
  {
    do
    {
      v39 = v10;
      v11 = *v10;
      if (*(*v10 + 48))
      {
        v12 = sub_298B604D4(*(a2 + 8), (a2 + 296), *(*(*(a2 + 8) + 160) + 688), v11[7]);
        (*(*a2 + 168))(a2, v12, 0);
        v40 = *(a2 + 8);
        (*(*a2 + 640))(a2, 2, 0, 1, 0);
        v13 = v11[19];
        for (i = v11[20]; v13 != i; v13 += 9)
        {
          while (1)
          {
            v15 = *v11;
            v16 = *v13;
            v17 = *(a2 + 8);
            *(v17 + 264) += 24;
            v18 = *(v17 + 184);
            if (!v18 || ((v18 + 7) & 0xFFFFFFFFFFFFFFF8) - v18 + 24 > *(v17 + 192) - v18)
            {
              v20 = *(v17 + 208) >> 7;
              if (v20 >= 0x1E)
              {
                LOBYTE(v20) = 30;
              }

              v21 = 4096 << v20;
              v23 = operator new(4096 << v20, 8uLL);
              v22 = *(v17 + 208);
              if (v22 >= *(v17 + 212))
              {
                sub_298B90A44(v17 + 200, (v17 + 216), v22 + 1, 8);
                v22 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v22) = v23;
              ++*(v17 + 208);
              *(v17 + 192) = v23 + v21;
            }

            else
            {
              v23 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            *(v17 + 184) = v23 + 24;
            *v23 = 1;
            *(v23 + 1) = *(v23 + 4) << 24;
            *(v23 + 8) = 0;
            *(v23 + 16) = v16;
            *(v17 + 264) += 24;
            v24 = *(v17 + 184);
            if (v24 && ((v24 + 7) & 0xFFFFFFFFFFFFFFF8) - v24 + 24 <= *(v17 + 192) - v24)
            {
              v25 = (v24 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v26 = *(v17 + 208) >> 7;
              if (v26 >= 0x1E)
              {
                LOBYTE(v26) = 30;
              }

              v27 = 4096 << v26;
              v25 = operator new(4096 << v26, 8uLL);
              v28 = *(v17 + 208);
              if (v28 >= *(v17 + 212))
              {
                sub_298B90A44(v17 + 200, (v17 + 216), v28 + 1, 8);
                v28 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v28) = v25;
              ++*(v17 + 208);
              *(v17 + 192) = v25 + v27;
            }

            *(v17 + 184) = v25 + 24;
            v29 = *(*(v17 + 144) + 18) ? 65661 : 125;
            *v25 = 2;
            *(v25 + 1) = v29 | (*(v25 + 4) << 24);
            *(v25 + 8) = 0;
            *(v25 + 16) = v15;
            *(v17 + 264) += 32;
            v30 = *(v17 + 184);
            if (v30 && ((v30 + 7) & 0xFFFFFFFFFFFFFFF8) - v30 + 32 <= *(v17 + 192) - v30)
            {
              v31 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
            }

            else
            {
              v32 = *(v17 + 208) >> 7;
              if (v32 >= 0x1E)
              {
                LOBYTE(v32) = 30;
              }

              v33 = 4096 << v32;
              v31 = operator new(4096 << v32, 8uLL);
              v34 = *(v17 + 208);
              if (v34 >= *(v17 + 212))
              {
                v37 = v31;
                sub_298B90A44(v17 + 200, (v17 + 216), v34 + 1, 8);
                v31 = v37;
                v34 = *(v17 + 208);
              }

              *(*(v17 + 200) + 8 * v34) = v31;
              ++*(v17 + 208);
              *(v17 + 192) = v31 + v33;
            }

            *(v17 + 184) = v31 + 32;
            *v31 = 0;
            *(v31 + 1) = *(v31 + 4) << 24;
            *(v31 + 8) = 0;
            *(v31 + 16) = v25;
            *(v31 + 24) = v23;
            (*(*a2 + 512))(a2);
            v35 = *(v11 + 16);
            if (!v35)
            {
              break;
            }

            (*(*a2 + 520))(a2, v35, 4);
            v13 += 9;
            if (v13 == i)
            {
              goto LABEL_13;
            }
          }

          v36 = sub_298B44B48(v13[3], 125, v40, 0);
          (*(*a2 + 512))(a2, v36, 4, 0);
        }
      }

LABEL_13:
      v10 = v39 + 1;
    }

    while (v39 + 1 != v38);
  }
}

void sub_298B65650(void *a1, uint64_t a2, char a3)
{
  v265[9] = *MEMORY[0x29EDCA608];
  if (*(a2 + 48))
  {
    goto LABEL_2;
  }

  v4 = a2;
  v5 = a1;
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 88);
  if (v8 == v7)
  {
    v14 = (a2 + 136);
    v13 = *(a2 + 136);
    v15 = *(a2 + 144);
    v232 = (a2 + 144);
    if (!v15)
    {
LABEL_11:
      *(a2 + 74) = 1;
      goto LABEL_2;
    }

    v16 = v13 + 48 * v15;
    v17 = (v13 + 16);
    v18 = 48 * v15;
    while (*(v17 - 1) == *v17)
    {
      v17 += 6;
      v18 -= 48;
      if (!v18)
      {
        goto LABEL_11;
      }
    }

    if (*(a2 + 74))
    {
      goto LABEL_5;
    }

    v27 = a2 + 112;
LABEL_49:
    while (1)
    {
      v32 = *(v13 + 8);
      v31 = *(v13 + 16);
      if (v31 != v32)
      {
        break;
      }

LABEL_48:
      v13 += 48;
      if (v13 == v16)
      {
        goto LABEL_77;
      }
    }

    v33 = -1;
    v34 = -1;
    while (1)
    {
      v37 = *(v31 - 8);
      if (v37 == 18)
      {
        v35 = *(v31 - 12);
        if (v35 != 29)
        {
          v36 = 0;
          if (v35 == 19 && *(v31 - 16) <= 0xF8u)
          {
            v36 = 0;
            *(v31 - 12) = 0xCFFFFFFFFLL;
            v35 = 19;
          }

          goto LABEL_53;
        }

        *(v31 - 12) = 0xDFFFFFFFFLL;
      }

      else if (v37 == 17)
      {
        v35 = *(v31 - 12);
        if (v35 != 29)
        {
          v36 = *(v31 - 16);
          v38 = v34 + 16;
          if (v35 == v33 + 2 && v36 == v38)
          {
            *(v31 - 8) = 28;
            *(v31 - 16) = 0xFFFFFFFF00000000;
          }

          goto LABEL_53;
        }

        *(v31 - 12) = 0xEFFFFFFFFLL;
      }

      else if (v37 == 25 && *(v31 - 16) == 0)
      {
        *(v31 - 8) = 24;
      }

      else
      {
        if (v37 == 12)
        {
          v36 = 0;
          v35 = 19;
          goto LABEL_53;
        }

        if (v37 == 28)
        {
          v35 = v33 + 2;
          v36 = v34 + 16;
          goto LABEL_53;
        }
      }

      v35 = -1;
      v36 = -1;
LABEL_53:
      v31 -= 24;
      v33 = v35;
      v34 = v36;
      if (v31 == v32)
      {
        goto LABEL_48;
      }
    }
  }

  if ((*(a2 + 74) & 1) == 0)
  {
    v19 = -1;
    v20 = -1;
    while (1)
    {
      v23 = v8[4];
      if (v23 == 18)
      {
        v21 = v8[3];
        if (v21 != 29)
        {
          v22 = 0;
          if (v21 == 19 && v8[2] <= 0xF8u)
          {
            v22 = 0;
            *(v8 + 3) = 0xCFFFFFFFFLL;
            v21 = 19;
          }

          goto LABEL_15;
        }

        *(v8 + 3) = 0xDFFFFFFFFLL;
      }

      else if (v23 == 17)
      {
        v21 = v8[3];
        if (v21 != 29)
        {
          v22 = v8[2];
          v24 = v20 + 16;
          if (v21 == v19 + 2 && v22 == v24)
          {
            v8[4] = 28;
            *(v8 + 1) = 0xFFFFFFFF00000000;
          }

          goto LABEL_15;
        }

        *(v8 + 3) = 0xEFFFFFFFFLL;
      }

      else if (v23 == 25 && v8[2] == 0)
      {
        v8[4] = 24;
      }

      else
      {
        if (v23 == 12)
        {
          v22 = 0;
          v21 = 19;
          goto LABEL_15;
        }

        if (v23 == 28)
        {
          v21 = v19 + 2;
          v22 = v20 + 16;
          goto LABEL_15;
        }
      }

      v21 = -1;
      v22 = -1;
LABEL_15:
      v8 += 6;
      v19 = v21;
      v20 = v22;
      if (v8 == v7)
      {
        v14 = (a2 + 136);
        v13 = *(a2 + 136);
        v27 = a2 + 112;
        v28 = *(a2 + 144);
        v232 = (a2 + 144);
        if (v28)
        {
          v16 = v13 + 48 * v28;
          goto LABEL_49;
        }

LABEL_77:
        v41 = *(a2 + 16);
        if (!v41)
        {
          sub_298B868A8("FuncletOrFuncEnd not set", 1);
        }

        v42 = *a2;
        v43 = v5[1];
        v44 = sub_298B44B48(v41, 0, v43, 0);
        v46 = sub_298B44B48(v42, 0, v43, 0);
        *(v43 + 264) += 32;
        v48 = *(v43 + 184);
        if (v48)
        {
          v49 = ((v48 + 7) & 0xFFFFFFFFFFFFFFF8) - v48 + 32 > *(v43 + 192) - v48;
        }

        else
        {
          v49 = 1;
        }

        if (v49)
        {
          v50 = *(v43 + 208) >> 7;
          if (v50 >= 0x1E)
          {
            LOBYTE(v50) = 30;
          }

          v51 = 4096 << v50;
          v53 = operator new(4096 << v50, 8uLL);
          v52 = *(v43 + 208);
          if (v52 >= *(v43 + 212))
          {
            v229 = v14;
            v230 = v53;
            sub_298B90A44(v43 + 200, (v43 + 216), v52 + 1, 8);
            v53 = v230;
            v14 = v229;
            LODWORD(v52) = *(v43 + 208);
          }

          *(*(v43 + 200) + 8 * v52) = v53;
          ++*(v43 + 208);
          *(v43 + 192) = v53 + v51;
        }

        else
        {
          v53 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
        }

        *(v43 + 184) = v53 + 32;
        *v53 = 0;
        *(v53 + 1) = (*(v53 + 4) << 24) | 0x12;
        *(v53 + 8) = 0;
        *(v53 + 16) = v44;
        *(v53 + 24) = v46;
        v54 = v5[38];
        v261 = 0uLL;
        LODWORD(v263) = 0;
        v262 = 0;
        if (*v53 == 1)
        {
          v55 = *(v53 + 16);
          v56 = v232;
          v57 = *(v4 + 40);
          if (!v57)
          {
            goto LABEL_102;
          }

LABEL_98:
          v59 = *(v4 + 32);
          if (*(v59 + 8))
          {
            v62 = *(v59 - 8);
            v63 = *v62;
            v60 = (v62 + 2);
            v61 = v63;
          }

          else
          {
            v60 = 0;
            v61 = 0;
          }

          sub_298B678D8(v5, *(v4 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 96) - *(v4 + 88)) >> 3), *v4, v57, v60, v61, v45, "prologue", 8);
          v56 = v232;
        }

        else
        {
          if (sub_298B44C70(v53, &v261, v54, 0, 0, 0, 0))
          {
            v58 = v261 == 0;
          }

          else
          {
            v58 = 0;
          }

          if (!v58 || (v56 = v232, *(&v261 + 1)))
          {
LABEL_427:
            sub_298B868A8("Failed to evaluate function length in SEH unwind info", 1);
          }

          v55 = v262;
          v57 = *(v4 + 40);
          if (v57)
          {
            goto LABEL_98;
          }
        }

LABEL_102:
        *&v261 = &v262;
        *(&v261 + 1) = 0x400000000;
        v64 = *v56;
        v245 = v27;
        v246 = v4;
        v231 = v14;
        v241 = v55;
        if (!*v56)
        {
          goto LABEL_133;
        }

        v65 = *v14;
        v66 = &v65[6 * v64];
        while (2)
        {
          v67 = *v65;
          v68 = *v4;
          v69 = v5[1];
          v70 = sub_298B44B48(*v65, 0, v69, 0);
          v72 = sub_298B44B48(v68, 0, v69, 0);
          *(v69 + 264) += 32;
          v73 = *(v69 + 184);
          if (v73)
          {
            v74 = ((v73 + 7) & 0xFFFFFFFFFFFFFFF8) - v73 + 32 > *(v69 + 192) - v73;
          }

          else
          {
            v74 = 1;
          }

          if (v74)
          {
            v75 = *(v69 + 208) >> 7;
            if (v75 >= 0x1E)
            {
              LOBYTE(v75) = 30;
            }

            v76 = 4096 << v75;
            v78 = operator new(4096 << v75, 8uLL);
            v77 = *(v69 + 208);
            if (v77 >= *(v69 + 212))
            {
              v247 = v78;
              sub_298B90A44(v69 + 200, (v69 + 216), v77 + 1, 8);
              v78 = v247;
              v77 = *(v69 + 208);
            }

            *(*(v69 + 200) + 8 * v77) = v78;
            ++*(v69 + 208);
            *(v69 + 192) = v78 + v76;
            v4 = v246;
          }

          else
          {
            v78 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
          }

          *(v69 + 184) = v78 + 32;
          *v78 = 0;
          *(v78 + 1) = (*(v78 + 4) << 24) | 0x12;
          *(v78 + 8) = 0;
          *(v78 + 16) = v70;
          *(v78 + 24) = v72;
          v79 = v5[38];
          v248 = 0uLL;
          DWORD2(v249) = 0;
          *&v249 = 0;
          if (*v78 == 1)
          {
            v80 = *(v78 + 16);
            v81 = *(v4 + 32);
            if ((*(v81 + 8) & 1) == 0)
            {
              goto LABEL_116;
            }

LABEL_124:
            v85 = *(v81 - 8);
            v86 = *v85;
            v82 = (v85 + 2);
            v83 = v86;
          }

          else
          {
            if (sub_298B44C70(v78, &v248, v79, 0, 0, 0, 0))
            {
              v84 = v248 == 0;
            }

            else
            {
              v84 = 0;
            }

            if (!v84 || *(&v248 + 1))
            {
              goto LABEL_427;
            }

            v80 = v249;
            v81 = *(v4 + 32);
            if (*(v81 + 8))
            {
              goto LABEL_124;
            }

LABEL_116:
            v82 = 0;
            v83 = 0;
          }

          sub_298B678D8(v5, v65[1], 0xAAAAAAAAAAAAAAABLL * ((v65[2] - v65[1]) >> 3), v67, v65[5], v82, v83, v71, "epilogue", 8);
          *&v248 = v67;
          *(&v248 + 1) = v80;
          *&v249 = v80 - 0x5555555555555554 * ((v65[2] - v65[1]) >> 3) - 4;
          v87 = v261;
          if (DWORD2(v261) >= HIDWORD(v261))
          {
            if (v261 <= &v248 && v261 + 24 * DWORD2(v261) > &v248)
            {
              v90 = &v248 - v261;
              sub_298B90A44(&v261, &v262, DWORD2(v261) + 1, 24);
              v87 = v261;
              v88 = &v90[v261];
            }

            else
            {
              sub_298B90A44(&v261, &v262, DWORD2(v261) + 1, 24);
              v88 = &v248;
              v87 = v261;
            }
          }

          else
          {
            v88 = &v248;
          }

          v89 = v87 + 24 * DWORD2(v261);
          v47 = *v88;
          *(v89 + 16) = *(v88 + 2);
          *v89 = v47;
          v64 = ++DWORD2(v261);
          v65 += 6;
          if (v65 == v66)
          {
            v55 = v241;
LABEL_133:
            if (v55 < 1048573)
            {
              v92 = 0;
              v91 = 0;
              goto LABEL_169;
            }

            *&v47 = 0;
            v91 = 0;
            v92 = 0;
            v243 = v47;
            v93 = v55;
            while (2)
            {
              LODWORD(v258) = 0;
              v257 = 0u;
              v259 = &v261;
              v260 = 0;
              if (DWORD2(v261) <= v92)
              {
                v99 = 1048572;
              }

              else
              {
                v94 = v91 + 1048572;
                v95 = v92;
                v96 = 24 * v92;
                while (1)
                {
                  v97 = (v261 + v96);
                  if (*(v261 + v96 + 16) >= v94)
                  {
                    break;
                  }

                  v98 = v97[1];
                  *sub_298B67C58(&v257, v97) = v98;
                  ++v95;
                  v96 += 24;
                  if (v95 >= DWORD2(v261))
                  {
                    v92 = v95;
                    v99 = 1048572;
                    goto LABEL_146;
                  }
                }

                v100 = v97[1];
                if (v100 <= v94)
                {
                  v99 = v100 - v91;
                }

                else
                {
                  v99 = 1048572;
                }

                v92 = v95;
              }

LABEL_146:
              *&v248 = v91;
              *(&v248 + 1) = v99;
              LOBYTE(v249) = v91 == 0;
              __src = 0;
              v251 = 0;
              *(&v249 + 1) = 0;
              v252 = 0;
              v253 = &v255;
              v254 = 0;
              MEMORY[0x29C2945E0](0, 8, v54);
              v101 = *(&v257 + 1);
              __src = v257;
              v257 = v243;
              v251 = v101;
              v102 = v260;
              v252 = v258;
              LODWORD(v258) = 0;
              v103 = &v254;
              if (v260)
              {
                if (v253 != &v255)
                {
                  free(v253);
                  v102 = v260;
                }

                v253 = v259;
                v254 = __PAIR64__(HIDWORD(v260), v102);
                v259 = &v261;
                HIDWORD(v260) = 0;
                v103 = &v260;
              }

              *v103 = 0;
              v104 = *(v4 + 160);
              if (v104 >= *(v4 + 168))
              {
                *(v4 + 160) = sub_298B68138((v4 + 152), &v248);
                v108 = v253;
                if (v253 == &v255)
                {
                  goto LABEL_155;
                }
              }

              else
              {
                v105 = v249;
                *v104 = v248;
                *(v104 + 16) = v105;
                *(v104 + 32) = 0;
                *(v104 + 40) = 0;
                *(v104 + 48) = 0;
                MEMORY[0x29C2945E0](0, 8);
                v106 = v252;
                *(v104 + 48) = v252;
                if (v106)
                {
                  v107 = operator new(16 * v106, 8uLL);
                  *(v104 + 32) = v107;
                  *(v104 + 40) = v251;
                  memcpy(v107, __src, 16 * *(v104 + 48));
                }

                else
                {
                  *(v104 + 32) = 0;
                  *(v104 + 40) = 0;
                }

                v109 = v104 + 72;
                *(v104 + 56) = v104 + 72;
                *(v104 + 64) = 0;
                if (v104 == &v248)
                {
                  v4 = v246;
                  *(v246 + 160) = v109;
                  v108 = v253;
                  if (v253 == &v255)
                  {
                    goto LABEL_155;
                  }
                }

                else
                {
                  v110 = v254;
                  if (v254)
                  {
                    sub_298B90A44(v104 + 56, (v104 + 72), v254, 16);
                    if (v254)
                    {
                      memcpy(*(v104 + 56), v253, 16 * v254);
                    }

                    *(v104 + 64) = v110;
                  }

                  v4 = v246;
                  *(v246 + 160) = v109;
                  v108 = v253;
                  if (v253 == &v255)
                  {
LABEL_155:
                    MEMORY[0x29C2945E0](__src, 8);
                    if (v259 != &v261)
                    {
                      free(v259);
                    }

                    v91 += v99;
                    v93 -= v99;
                    MEMORY[0x29C2945E0](v257, 8);
                    if (v93 <= 1048572)
                    {
                      v64 = DWORD2(v261);
                      v27 = v245;
                      v55 = v241;
LABEL_169:
                      *&v248 = v91;
                      *(&v248 + 1) = v55 - v91;
                      LOBYTE(v249) = v91 == 0;
                      __src = 0;
                      v251 = 0;
                      *(&v249 + 1) = 0;
                      v252 = 0;
                      v253 = &v255;
                      v254 = 0;
                      if (v64 > v92)
                      {
                        v111 = v92;
                        v112 = 24 * v92;
                        do
                        {
                          v113 = *(v261 + v112 + 8);
                          *sub_298B67C58(&__src, (v261 + v112)) = v113;
                          ++v111;
                          v112 += 24;
                        }

                        while (v111 < DWORD2(v261));
                      }

                      v114 = *(v4 + 160);
                      if (v114 >= *(v4 + 168))
                      {
                        v118 = sub_298B68138((v4 + 152), &v248);
                      }

                      else
                      {
                        v115 = v249;
                        *v114 = v248;
                        *(v114 + 16) = v115;
                        *(v114 + 32) = 0;
                        *(v114 + 40) = 0;
                        *(v114 + 48) = 0;
                        MEMORY[0x29C2945E0](0, 8, v54);
                        v116 = v252;
                        *(v114 + 48) = v252;
                        if (v116)
                        {
                          v117 = operator new(16 * v116, 8uLL);
                          *(v114 + 32) = v117;
                          *(v114 + 40) = v251;
                          memcpy(v117, __src, 16 * *(v114 + 48));
                        }

                        else
                        {
                          *(v114 + 32) = 0;
                          *(v114 + 40) = 0;
                        }

                        v118 = (v114 + 72);
                        *(v114 + 56) = v114 + 72;
                        *(v114 + 64) = 0;
                        if (v114 != &v248)
                        {
                          v119 = v254;
                          if (v254)
                          {
                            sub_298B90A44(v114 + 56, (v114 + 72), v254, 16);
                            if (v254)
                            {
                              memcpy(*(v114 + 56), v253, 16 * v254);
                            }

                            *(v114 + 64) = v119;
                          }
                        }
                      }

                      *(v4 + 160) = v118;
                      if (v253 != &v255)
                      {
                        free(v253);
                      }

                      MEMORY[0x29C2945E0](__src, 8);
                      if (v261 != &v262)
                      {
                        free(v261);
                      }

                      v120 = *(v4 + 88);
                      v121 = *(v4 + 96);
                      if (v121 == v120)
                      {
                        v124 = a3;
                        *(v4 + 68) = 0;
                        v125 = *(v4 + 152);
                        v234 = *(v4 + 160);
                        if (v125 == v234)
                        {
                          goto LABEL_426;
                        }
                      }

                      else
                      {
                        v122 = 0;
                        v123 = *(v4 + 88);
                        v124 = a3;
                        do
                        {
                          v122 += dword_298D1A848[*(v123 + 16) - 1];
                          v123 += 24;
                        }

                        while (v123 != v121);
                        *(v4 + 68) = v122;
                        v125 = *(v4 + 152);
                        v234 = *(v4 + 160);
                        if (v125 == v234)
                        {
LABEL_426:
                          *(v4 + 96) = v120;
                          goto LABEL_2;
                        }
                      }

                      v233 = v124 ^ 1;
                      v126 = v265;
                      v244 = v5;
                      while (2)
                      {
                        v127 = v5[1];
                        *&v261 = "tmp";
                        LOWORD(v264) = 259;
                        v235 = v127;
                        v128 = sub_298B2D8D0(v127, &v261, 1);
                        (*(*v5 + 640))(v5, 2, 0, 1, 0);
                        (*(*v5 + 192))(v5, v128, 0);
                        *(v125 + 24) = v128;
                        if (!*v125)
                        {
                          *(v4 + 48) = v128;
                        }

                        v129 = *(v125 + 16);
                        v130 = *(v125 + 64);
                        v131 = *(v125 + 8);
                        v132 = *(v4 + 68);
                        v240 = v125;
                        v236 = v129;
                        v237 = v131;
                        if (v130 != 1 || (*&v261 = **(v125 + 56), v133 = sub_298B68BE4(v27, &v261), v134 = (*(v125 + 8) + *v125 - *(*(v125 + 56) + 8)) >> 2, v135 = *v133, v136 = v133[1] - *v133, v134 != 0xAAAAAAAAAAAAAAABLL * (v136 >> 3)))
                        {
                          v141 = -1;
                          goto LABEL_203;
                        }

                        if (v132 > 31)
                        {
                          v141 = -1;
                        }

                        else
                        {
                          v137 = 0;
                          if ((*(v125 + 8) + *v125 - *(*(v125 + 56) + 8)) >> 2)
                          {
                            v138 = 24 * v134;
                            v139 = (v135 + 16);
                            do
                            {
                              v140 = *v139;
                              v139 += 6;
                              v137 += dword_298D1A848[v140 - 1];
                              v138 -= 24;
                            }

                            while (v138);
                          }

                          if ((v137 + v132) >= 0x7D)
                          {
                            v141 = -1;
                          }

                          else
                          {
                            v141 = v132;
                          }
                        }

                        v185 = *(v4 + 88);
                        v186 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 96) - v185) >> 3);
                        if (v134 <= v186)
                        {
                          v187 = v135 + v136;
                          v188 = v134 - 1;
                          while ((v188 & 0x80000000) == 0)
                          {
                            v189 = (v185 + 24 * (v188 & 0x7FFFFFFF));
                            v190 = (v187 + 24 * ~(v188 & 0x7FFFFFFF));
                            if (v189[2] == v190[2] && v189[3] == v190[3])
                            {
                              --v188;
                              if (v189[4] == v190[4])
                              {
                                continue;
                              }
                            }

                            goto LABEL_203;
                          }

                          if (v134 == v186)
                          {
                            v191 = 0;
                            goto LABEL_377;
                          }

                          v191 = 0;
                          v192 = 8 * ((*(v4 + 96) - v185) >> 3) - 24 * v134;
                          v193 = (v185 + v136 + 16);
                          do
                          {
                            v194 = *v193;
                            v193 += 6;
                            v191 += dword_298D1A848[v194 - 1];
                            v192 -= 24;
                          }

                          while (v192);
                          if ((v191 & 0x80000000) == 0)
                          {
LABEL_377:
                            if (v132 > 124 || v191 > 0x1F)
                            {
                              goto LABEL_203;
                            }

                            v195 = *(v4 + 112);
                            v196 = *(v4 + 128);
                            if (!v196)
                            {
                              goto LABEL_385;
                            }

                            LODWORD(v197) = ((v261 >> 4) ^ (v261 >> 9)) & (v196 - 1);
                            v198 = (v195 + 16 * v197);
                            v199 = *v198;
                            if (*v198 != v261)
                            {
                              v200 = v131;
                              v201 = v129;
                              v202 = v126;
                              v203 = 1;
                              while (1)
                              {
                                v27 = v245;
                                v4 = v246;
                                v126 = v202;
                                v129 = v201;
                                v131 = v200;
                                v5 = v244;
                                if (v199 == -4096)
                                {
                                  break;
                                }

                                v204 = v197 + v203++;
                                v197 = v204 & (v196 - 1);
                                v199 = *(v195 + 16 * v197);
                                if (v199 == v261)
                                {
                                  v198 = (v195 + 16 * v197);
                                  v27 = v245;
                                  v4 = v246;
                                  v126 = v202;
                                  v129 = v201;
                                  v131 = v200;
                                  v5 = v244;
                                  goto LABEL_386;
                                }
                              }

LABEL_385:
                              v198 = (v195 + 16 * v196);
                            }

LABEL_386:
                            if (v198 == (v195 + 16 * v196))
                            {
                              v205 = v232;
                            }

                            else
                            {
                              v205 = (v198 + 1);
                            }

                            v206 = *v205;
                            v207 = *v232;
                            if (*v205 == *v232)
                            {
LABEL_390:
                              v141 = v191;
                              goto LABEL_203;
                            }

                            v208 = *v231;
                            v209 = &(*v231)[6 * v206];
                            if (v196)
                            {
                              v210 = v196 - 1;
                              LODWORD(v211) = ((*v209 >> 4) ^ (*v209 >> 9)) & v210;
                              v212 = (v195 + 16 * v211);
                              v213 = *v212;
                              if (*v209 == *v212)
                              {
LABEL_393:
                                *v212 = -8192;
                                *(v4 + 120) = vadd_s32(*(v4 + 120), 0x1FFFFFFFFLL);
                                v208 = *(v4 + 136);
                                goto LABEL_394;
                              }

                              v217 = 1;
                              while (v213 != -4096)
                              {
                                v218 = v211 + v217++;
                                v211 = v218 & v210;
                                v213 = *(v195 + 16 * v211);
                                if (*v209 == v213)
                                {
                                  v212 = (v195 + 16 * v211);
                                  v27 = v245;
                                  v4 = v246;
                                  v5 = v244;
                                  goto LABEL_393;
                                }
                              }

                              v27 = v245;
                              v4 = v246;
                              v5 = v244;
                              v214 = v209 + 6;
                              v215 = &v208[6 * v207];
                              v216 = v232;
                              if (v209 + 6 == v215)
                              {
LABEL_406:
                                v220 = v207 - 1;
                                *v216 = v207 - 1;
                                v221 = &v208[6 * v207 - 6];
                                v222 = v221[1];
                                v129 = v236;
                                if (v222)
                                {
                                  v221[2] = v222;
                                  operator delete(v222);
                                  v208 = *v231;
                                  v220 = *v232;
                                }

                                if (&v208[6 * v220] != v209 && *(v4 + 120))
                                {
                                  v223 = *(v4 + 128);
                                  if (v223)
                                  {
                                    v224 = 16 * v223;
                                    v225 = *(v4 + 112);
                                    while ((*v225 | 0x1000) == 0xFFFFFFFFFFFFF000)
                                    {
                                      v225 += 16;
                                      v224 -= 16;
                                      if (!v224)
                                      {
                                        goto LABEL_425;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v225 = *(v4 + 112);
                                  }

                                  v226 = *(v4 + 112) + 16 * v223;
                                  if (v225 != v226)
                                  {
                                    v227 = 0xAAAAAAAAAAAAAAABLL * ((v209 - v208) >> 4);
                                    do
                                    {
                                      v228 = *(v225 + 8);
                                      if (v227 < v228)
                                      {
                                        *(v225 + 8) = v228 - 1;
                                      }

                                      v225 += 16;
                                      v131 = v237;
                                      if (v225 == v226)
                                      {
                                        goto LABEL_390;
                                      }

                                      while ((*v225 | 0x1000) == 0xFFFFFFFFFFFFF000)
                                      {
                                        v225 += 16;
                                        if (v225 == v226)
                                        {
                                          goto LABEL_390;
                                        }
                                      }
                                    }

                                    while (v225 != v226);
                                  }
                                }

LABEL_425:
                                v141 = v191;
                                v131 = v237;
                                goto LABEL_203;
                              }
                            }

                            else
                            {
LABEL_394:
                              v214 = v209 + 6;
                              v215 = &v208[6 * v207];
                              v216 = v232;
                              if (v209 + 6 == v215)
                              {
                                goto LABEL_406;
                              }
                            }

                            do
                            {
                              *(v214 - 6) = *v214;
                              v219 = *(v214 - 5);
                              if (v219)
                              {
                                *(v214 - 4) = v219;
                                operator delete(v219);
                                v216 = v232;
                                *(v214 - 4) = 0;
                                *(v214 - 3) = 0;
                              }

                              *(v214 - 5) = *(v214 + 1);
                              *(v214 - 3) = v214[3];
                              v214[2] = 0;
                              v214[3] = 0;
                              v214[1] = 0;
                              *(v214 - 1) = *(v214 + 2);
                              v214 += 6;
                            }

                            while (v214 != v215);
                            v207 = *v216;
                            v208 = *v231;
                            goto LABEL_406;
                          }
                        }

LABEL_203:
                        if (*(v4 + 160) - *(v4 + 152) != 72 || v141 < 0 || v141 >= v132 || *(v4 + 73) & 1 | ((v131 & 0xFFFFE000) != 0) | v233 & 1)
                        {
                          goto LABEL_310;
                        }

                        if (v141 != 1)
                        {
                          if (!v141)
                          {
                            v142 = *(v4 + 96);
                            goto LABEL_212;
                          }

                          goto LABEL_310;
                        }

                        v142 = *(v4 + 96);
                        if (*(v142 - 2) != 24)
                        {
                          goto LABEL_310;
                        }

LABEL_212:
                        v143 = *(v4 + 88);
                        if (v143 != v142)
                        {
                          v144 = 0;
                          v145 = 0;
                          v146 = 0;
                          v147 = 0;
                          v148 = 0;
                          v149 = 0;
                          v150 = 0;
                          v151 = 0;
                          v152 = 0;
                          while (1)
                          {
                            switch(v143[4])
                            {
                              case 1:
                              case 0xA:
                              case 0x12:
                              case 0x15:
                              case 0x19:
                              case 0x1D:
                              case 0x1E:
                              case 0x1F:
                              case 0x20:
                              case 0x22:
                              case 0x23:
                              case 0x24:
                              case 0x25:
                              case 0x26:
                              case 0x27:
                              case 0x28:
                              case 0x29:
                              case 0x2A:
                              case 0x2B:
                              case 0x2C:
                              case 0x2D:
                                goto LABEL_310;
                              case 2:
                              case 0xB:
                                if ((v147 - 7) < 0xFFFFFFFA)
                                {
                                  goto LABEL_310;
                                }

                                if (v152 == 4080)
                                {
                                  v152 = v143[2] + 4080;
                                  v147 = 6;
                                  v153 = 1;
                                  v143 += 6;
                                  if (v143 == v142)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                else
                                {
                                  if (v152)
                                  {
                                    goto LABEL_310;
                                  }

                                  v152 = v143[2];
                                  v147 = 6;
                                  v153 = 1;
                                  v143 += 6;
                                  if (v143 == v142)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                continue;
                              case 0xC:
                                if ((v147 - 3) < 0xFFFFFFFE)
                                {
                                  goto LABEL_310;
                                }

                                v146 = v143[2];
                                v144 = 2;
                                v147 = 3;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0xD:
                                if ((v147 - 6) < 0xFFFFFFFB)
                                {
                                  goto LABEL_310;
                                }

                                v152 = v143[2];
LABEL_256:
                                v147 = 7;
                                v149 = 1;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0xE:
                                if (v147 != 6 || v143[2])
                                {
                                  goto LABEL_310;
                                }

                                goto LABEL_256;
                              case 0xF:
                                if (v147 != 3 || v143[2] != 8 * v144)
                                {
                                  goto LABEL_310;
                                }

                                v154 = v143[3];
                                if (v154 == v144 + 19)
                                {
                                  goto LABEL_267;
                                }

                                if (v154 != 30)
                                {
                                  goto LABEL_310;
                                }

LABEL_269:
                                v147 = 4;
                                v148 = 1;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x10:
                                if ((v147 - 3) < 0xFFFFFFFE)
                                {
                                  goto LABEL_310;
                                }

                                v146 = v143[2];
                                v155 = v143[3];
                                if (v155 == 30)
                                {
                                  goto LABEL_269;
                                }

                                if (v155 != 19)
                                {
                                  goto LABEL_310;
                                }

LABEL_267:
                                ++v144;
                                v147 = 4;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x11:
                                if (v147 != 3 || v143[2] != 8 * v144 || v143[3] != v144 + 19)
                                {
                                  goto LABEL_310;
                                }

                                v144 += 2;
                                v147 = 3;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x13:
                                if (v147 != 3 || v143[2] != 8 * v144 || v143[3] != v144 + 19)
                                {
                                  goto LABEL_310;
                                }

                                ++v144;
                                goto LABEL_269;
                              case 0x14:
                                if (v147 != 4 || !v145 || v143[3] != v145 + 8 || v143[2] != 8 * (v145 + v144 + (v148 & 1)))
                                {
                                  goto LABEL_310;
                                }

                                ++v145;
                                v147 = 5;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x16:
                                if ((v147 - 5) < 0xFFFFFFFE || v143[3] != v145 + 8 || v143[2] != 8 * (v145 + v144 + (v148 & 1)))
                                {
                                  goto LABEL_310;
                                }

                                v145 += 2;
                                v147 = 4;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x17:
                                if ((v147 - 1) > 1 || v143[3] != 8)
                                {
                                  goto LABEL_310;
                                }

                                v146 = v143[2];
                                v145 = 2;
                                v147 = 4;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x18:
                                if (v147 != 7)
                                {
                                  goto LABEL_310;
                                }

                                v153 = 0;
                                v147 = 8;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1A:
                                if ((v147 - 6) < 0xFFFFFFFD)
                                {
                                  goto LABEL_310;
                                }

                                ++v151;
                                v147 = 5;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1B:
                                if (v147)
                                {
                                  goto LABEL_310;
                                }

                                v153 = 1;
                                v147 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              case 0x1C:
                                if (v147 == 4)
                                {
                                  v145 += 2;
                                  v153 = 1;
                                  v143 += 6;
                                  if (v143 == v142)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                else
                                {
                                  if (v147 != 3)
                                  {
                                    goto LABEL_310;
                                  }

                                  v144 += 2;
                                  v153 = 1;
                                  v143 += 6;
                                  if (v143 == v142)
                                  {
                                    goto LABEL_287;
                                  }
                                }

                                break;
                              case 0x21:
                                if (v147 != 1)
                                {
                                  goto LABEL_310;
                                }

                                v147 = 2;
                                v150 = 1;
                                v153 = 1;
                                v143 += 6;
                                if (v143 == v142)
                                {
                                  goto LABEL_287;
                                }

                                continue;
                              default:
                                sub_298B868A8("Unknown Arm64 unwind opcode", 1);
                            }
                          }
                        }

                        v152 = 0;
                        v151 = 0;
                        v150 = 0;
                        v149 = 0;
                        v148 = 0;
                        v146 = 0;
                        v145 = 0;
                        v144 = 0;
                        v153 = 1;
LABEL_287:
                        if (v144 > 0xA || v145 > 8 || (v149 & (v148 | v153) & 1) != 0 || (v151 & 0xFFFFFFFB) != 0 || ((v150 ^ 1 | v149) & 1) == 0 || v151 == 4)
                        {
                          goto LABEL_310;
                        }

                        v156 = 8 * v144;
                        if (v148)
                        {
                          v156 = 8 * v144 + 8;
                        }

                        if (v146 != ((v156 + 8 * v145 + 15) & 0x1F0) || (v149 & (v152 < 16)) != 0 || (v152 & 0xF) != 0 || (v157 = v146 + v152, v157 > 0x1FF0))
                        {
LABEL_310:
                          v162 = v141 + (v141 >= 0);
                          if (!v130)
                          {
                            v162 = 0;
                          }

                          if (!v129)
                          {
                            v141 = v162;
                          }

                          v239 = v141;
                          v242 = v132 + (v129 ^ 1);
                          LODWORD(v262) = 0;
                          v261 = 0uLL;
                          v263 = v126;
                          v264 = 0;
                          if (*(v240 + 64))
                          {
                            v163 = *(v240 + 56);
                            operator new();
                          }

                          if ((v242 & 3) != 0)
                          {
                            v164 = (v242 >> 2) + 1;
                          }

                          else
                          {
                            v164 = v242 >> 2;
                          }

                          if (v141 < 0)
                          {
                            v165 = *(v240 + 64);
                          }

                          else
                          {
                            v165 = v141;
                          }

                          v167 = v165 > 0x1F || v242 > 0x7C;
                          v168 = (v165 << 22) + (v164 << 27);
                          if (v167)
                          {
                            v168 = 0;
                          }

                          if (*(v4 + 73))
                          {
                            v168 |= 0x100000u;
                          }

                          if (v239 >= 0)
                          {
                            v168 |= 0x200000u;
                          }

                          (*(*v5 + 520))(v5, v168 | (v237 >> 2) & 0x3FFFF, 4);
                          if (v167)
                          {
                            if (v164 > 0xFF || v165 >= 0x10000)
                            {
                              sub_298B868A8("SEH unwind data splitting is only implemented for large functions, cases of too many code words or too many epilogs will be done later", 1);
                            }

                            (*(*v5 + 520))(v5, v165 | (v164 << 16), 4);
                          }

                          if (v239 < 0 && v264)
                          {
                            v169 = v263;
                            v170 = &v263[16 * v264];
                            do
                            {
                              *&v248 = *v169;
                              v171 = *(v169 + 2);
                              v172 = ((*sub_298B67C58(v240 + 32, &v248) - *v240) >> 2) | (v171 << 22);
                              (*(*v5 + 520))(v5, v172, 4);
                              v169 += 16;
                            }

                            while (v169 != v170);
                          }

                          if ((v236 & 1) == 0)
                          {
                            (*(*v5 + 520))(v5, 229, 1);
                          }

                          v174 = *(v4 + 88);
                          v173 = *(v4 + 96);
                          if (v173 != v174)
                          {
                            do
                            {
                              v175 = v173 - 24;
                              v248 = *(v173 - 24);
                              *&v249 = *(v173 - 8);
                              sub_298B68478(v5, &v248);
                              v173 = v175;
                            }

                            while (v175 != v174);
                          }

                          v176 = *(v240 + 64);
                          if (v176)
                          {
                            v177 = *(v240 + 56);
                            v178 = &v177[2 * v176];
                            do
                            {
                              v179 = sub_298B68BE4(v27, v177);
                              v181 = *v179;
                              v180 = *(v179 + 8);
                              if (*v179 != v180)
                              {
                                do
                                {
                                  sub_298B68478(v5, v181);
                                  v181 += 6;
                                }

                                while (v181 != v180);
                              }

                              v177 += 2;
                            }

                            while (v177 != v178);
                          }

                          if ((4 * v164 - v242) >= 1)
                          {
                            v182 = v242 - 4 * v164;
                            do
                            {
                              (*(*v5 + 520))(v5, 227, 1);
                            }

                            while (!__CFADD__(v182++, 1));
                          }

                          if (*(v4 + 73))
                          {
                            v184 = sub_298B44B48(*(v4 + 24), 125, v235, 0);
                            (*(*v5 + 512))(v5, v184, 4, 0);
                          }

                          v161 = v240;
                          if (v263 != v126)
                          {
                            free(v263);
                          }

                          MEMORY[0x29C2945E0](v261, 8);
                        }

                        else
                        {
                          v158 = ((v145 << 13) - 0x2000) & 0xE000;
                          if (!v145)
                          {
                            v158 = 0;
                          }

                          if (v148)
                          {
                            v159 = 0x200000;
                          }

                          else
                          {
                            v159 = 0;
                          }

                          if (v149)
                          {
                            v159 = 6291456;
                          }

                          if (v150)
                          {
                            v160 = 0x400000;
                          }

                          else
                          {
                            v160 = v159;
                          }

                          *(v4 + 64) |= v158 | v131 & 0x1FFC | v160 | (v144 << 16) | (v157 << 19) | 1;
                          v161 = v240;
                        }

                        v125 = v161 + 72;
                        if (v125 == v234)
                        {
                          v120 = *(v4 + 88);
                          goto LABEL_426;
                        }

                        continue;
                      }
                    }

                    continue;
                  }
                }
              }

              break;
            }

            free(v108);
            goto LABEL_155;
          }

          continue;
        }
      }
    }
  }

LABEL_5:
  v9 = a1[1];
  v10 = *(a2 + 32);
  if (*(v10 + 8))
  {
    v29 = *(v10 - 8);
    v30 = *v29;
    v11 = v29 + 2;
    v12 = v30;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  LOWORD(__src) = 1283;
  *&v248 = "Earlier .seh_handlerdata for ";
  *&v249 = v11;
  *(&v249 + 1) = v12;
  *&v261 = &v248;
  v262 = " skipped due to no unwind info at the time (.seh_handlerdata too early?), but the function later did get unwind info that can't be emitted";
  LOWORD(v264) = 770;
  *(v9 + 2056) = 1;
  v256 = 0;
  *&v257 = &unk_2A1F1BDB8;
  *(&v257 + 1) = &v256;
  v258 = &v261;
  v259 = &v257;
  sub_298B2FFE4(v9, 0, &v257);
  if (v259 == &v257)
  {
    (*(*v259 + 32))(v259);
  }

  else if (v259)
  {
    (*(*v259 + 40))();
  }

LABEL_2:
  v3 = *MEMORY[0x29EDCA608];
}