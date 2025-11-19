uint64_t sub_18196A6E4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2 + 72 * a3;
  if ((*(v6 + 32) & 0x40) != 0)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  if ((*(v6 + 32) & 8) != 0)
  {
    if ((v7 & 1) == 0 || *(a1 + 56) != *(v6 + 36))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v16 = v4;
  v17 = v5;
  if ((v7 & 3) == 0 || (*(a2 + 32) & 0x40) == 0 || a3 < 1)
  {
    goto LABEL_16;
  }

  v8 = a3;
  v9 = (a2 + 36);
  while (*(a1 + 56) != *v9)
  {
    v9 += 18;
    if (!--v8)
    {
      goto LABEL_16;
    }
  }

  if ((*(v9 - 1) & 0x40) != 0)
  {
    return 0;
  }

LABEL_16:
  v11 = *(v6 + 36);
  v14 = 0x300000000;
  v15 = 0;
  v13[0] = 0;
  v13[1] = sub_1818C7E14;
  v12 = sub_18196A7EC;
  if (!a4)
  {
    v12 = sub_18195A49C;
  }

  v13[2] = v12;
  v13[3] = 0;
  LODWORD(v15) = v11;
  sub_181959BA0(v13, a1);
  return WORD2(v14);
}

uint64_t sub_18196A7EC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 7) & 0x20) == 0)
  {
    return 1;
  }

  *(a1 + 36) = 0;
  return 2;
}

uint64_t sub_18196A808(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  if (*v4 < 1)
  {
LABEL_9:
    if ((a2[5] & 0x10) != 0)
    {
      *(a1 + 36) = 0;
      return 2;
    }

    else
    {

      return sub_1818C7E14(a1, a2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 2;
    while (1)
    {
      v7 = *&v4[v6];
      if (sub_181959260(0, a2, v7, 0xFFFFFFFFLL) <= 1)
      {
        v14 = *a1;
        v15 = sub_1818B4720(*a1, v7, v8, v9, v10, v11, v12, v13);
        if (!v15)
        {
          v15 = *(*v14 + 16);
          if (!v15)
          {
            return 1;
          }
        }

        if (*(v15 + 24) == sub_1818D0EC0)
        {
          return 1;
        }
      }

      ++v5;
      v6 += 6;
      if (v5 >= *v4)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_18196A914(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (a2)
  {
    while (1)
    {
      v5 = a2;
      while (1)
      {
        v6 = *(v5 + 1);
        if ((v6 & 0x82000) == 0)
        {
          break;
        }

        if ((v6 & 0x80000) != 0)
        {
          v5 = *(*(v5 + 4) + 8);
          if (!v5)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v7 = *v5;
          if (v7 != 114)
          {
            goto LABEL_10;
          }

          v5 = *(v5 + 2);
          if (!v5)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = *v5;
LABEL_10:
      *(v4 + 16) = a3;
      if (v7 != a3)
      {
        break;
      }

      result = sub_18196A914(v4, *(v5 + 2), a3);
      a2 = *(v5 + 3);
      if (!a2)
      {
        goto LABEL_12;
      }
    }

    return sub_1818CE2C0(v4, a2, 0);
  }

  else
  {
LABEL_12:
    *(v4 + 16) = a3;
  }

  return result;
}

unsigned __int8 *sub_18196A9E4(unsigned __int8 *result, uint64_t a2)
{
  if (!*(a2 + 56))
  {
    v2 = *(a2 + 4);
    if ((v2 & 9) == 0)
    {
      v3 = *(a2 + 40);
      if (*v3 == 1 && *(*(v3 + 24) + 63) == 1)
      {
        v4 = *(a2 + 72);
        v5 = *(v3 + 36);
        v6 = *(result + 5);
        if (v6 < 1)
        {
LABEL_13:
          if (v4 && (v8 = *v4, v8 >= 1))
          {
            v9 = v4 + 6;
            while (1)
            {
              v10 = *(v9 - 2);
              if (*v10 != 168 || *(v10 + 11) != v5 || (*v9 & 2) != 0)
              {
                break;
              }

              v9 += 24;
              if (!--v8)
              {
                goto LABEL_20;
              }
            }
          }

          else
          {
LABEL_20:
            if (!*(a2 + 12) || (v2 & 0x100) == 0 && ((v11 = result, v12 = a2, sub_181972CE8(result, *(a2 + 12), *(*(a2 + 96) + 24), v5, 74), a2 = v12, result = v11, !*(v12 + 12)) || (*(v12 + 5) & 1) == 0))
            {
              v13 = *(*(a2 + 96) + 16);
              v14 = *(a2 + 8);

              return sub_181972CE8(result, v14, v13, v5, 73);
            }
          }
        }

        else
        {
          v7 = *(result + 4) + 22;
          while ((*(v7 - 4) & 4) != 0 || *v7 || *(v7 + 6) == v5 && !*(v7 + 18))
          {
            v7 += 56;
            if (!--v6)
            {
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_18196AB54(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a2 != 1)
  {
    return 0;
  }

  v5 = a3;
  v38 = *(a2 + 36);
  v6 = *a4;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *&a4[6 * i + 2];
      if (v8)
      {
        while (1)
        {
          v9 = *(v8 + 1);
          if ((v9 & 0x82000) == 0)
          {
            break;
          }

          if ((v9 & 0x80000) != 0)
          {
            v8 = *(*(v8 + 4) + 8);
            if (!v8)
            {
              goto LABEL_4;
            }
          }

          else
          {
            v10 = *v8;
            if (v10 != 114)
            {
              goto LABEL_14;
            }

            v8 = *(v8 + 2);
            if (!v8)
            {
              goto LABEL_4;
            }
          }
        }

        v10 = *v8;
LABEL_14:
        if ((v10 | 2) == 0xAA && *(v8 + 11) == v38 && (*(v8 + 12) & 0x80000000) != 0)
        {
          return 1;
        }
      }

LABEL_4:
      ;
    }
  }

  v12 = *(*(a2 + 24) + 16);
  if (!v12)
  {
    return 0;
  }

  while (!*(v12 + 98) || *(v12 + 72))
  {
LABEL_22:
    v12 = *(v12 + 40);
    if (!v12)
    {
      return 0;
    }
  }

  if (!*(v12 + 94))
  {
    LODWORD(v13) = 0;
    goto LABEL_21;
  }

  v13 = 0;
  while (1)
  {
    v47 = 0;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v39[0] = v5;
    v39[1] = v5;
    v40 = 0;
    v41 = 0;
    v42 = 0x200000000;
    DWORD1(v43) = v38;
    *(&v43 + 1) = 257;
    v14 = *(*(v12 + 8) + 2 * v13);
    v15 = *(v12 + 24);
    if (*(v15 + 52) == *(*(v12 + 8) + 2 * v13))
    {
      LOWORD(v14) = -1;
    }

    else if (v14 < 0)
    {
      if (v14 == -2)
      {
        v16 = *(*(v12 + 80) + 24 * v13 + 8);
        v40 = *(*(v12 + 64) + 8 * v13);
        v41 = v16;
        LOWORD(v46) = -2;
        v17 = sub_1819732DC(v39);
        if (!v17)
        {
          break;
        }

        goto LABEL_38;
      }
    }

    else
    {
      LOBYTE(v43) = *(*(v15 + 8) + 16 * *(*(v12 + 8) + 2 * v13) + 9);
      v40 = *(*(v12 + 64) + 8 * v13);
    }

    LOWORD(v46) = v14;
    v17 = sub_181972F4C(v39);
    if (!v17)
    {
      break;
    }

LABEL_38:
    v27 = 0;
    do
    {
      if (!*(v17 + 5))
      {
        if ((v17[10] & 2) != 0)
        {
          goto LABEL_28;
        }

        if (!v27)
        {
          v27 = v17;
        }
      }

      v17 = sub_181972F4C(v39);
    }

    while (v17);
    if (!v27)
    {
      break;
    }

LABEL_28:
    if (++v13 >= *(v12 + 94))
    {
      goto LABEL_21;
    }
  }

  v24 = *a4;
  if (*a4 < 1)
  {
    goto LABEL_21;
  }

  v25 = 0;
  v26 = *(*(v12 + 64) + 8 * v13);
  while (1)
  {
    v28 = *&a4[6 * v25 + 2];
    if (v28)
    {
      v29 = *&a4[6 * v25 + 2];
      while (1)
      {
        v30 = *(v29 + 1);
        if ((v30 & 0x82000) == 0)
        {
          break;
        }

        if ((v30 & 0x80000) != 0)
        {
          v29 = *(*(v29 + 4) + 8);
          if (!v29)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v31 = *v29;
          if (v31 != 114)
          {
            goto LABEL_56;
          }

          v29 = *(v29 + 2);
          if (!v29)
          {
            goto LABEL_46;
          }
        }
      }

      v31 = *v29;
LABEL_56:
      if ((v31 | 2) == 0xAA && *(v29 + 12) == *(*(v12 + 8) + 2 * v13) && *(v29 + 11) == v38)
      {
        break;
      }
    }

LABEL_46:
    if (++v25 >= v24)
    {
      v5 = a3;
      goto LABEL_21;
    }
  }

  v32 = sub_1818B4720(a1, v28, v18, v19, v20, v21, v22, v23);
  if (!v32)
  {
    v32 = *(*a1 + 16);
  }

  v33 = *v32;
  v34 = v26;
  while (2)
  {
    if (*v33 != *v34)
    {
      if (byte_181A20298[*v33] != byte_181A20298[*v34])
      {
        v24 = *a4;
        goto LABEL_46;
      }

      goto LABEL_63;
    }

    if (*v33)
    {
LABEL_63:
      ++v33;
      ++v34;
      continue;
    }

    break;
  }

  v35 = *(*(v12 + 8) + 2 * v13);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v5 = a3;
    if ((*(*(*(v12 + 24) + 8) + 16 * v35 + 8) & 0xF) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_28;
  }

  v5 = a3;
  if (v35 == -1)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v13 != *(v12 + 94))
  {
    goto LABEL_22;
  }

  return 1;
}

void *sub_18196AF24(uint64_t a1, int a2)
{
  v2 = *a1;
  v3 = *(a1 + 64);
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      v4 = 5;
      goto LABEL_6;
    }

    if (!v2[13])
    {
      if (v3 >= 5 && (*(a1 + 68) & 0x10) == 0 && (*(*v2 + 99) & 0x20) == 0)
      {
        v96 = 0;
        v97 = 0;
        *(a1 + 68) |= 0x10u;
        v98 = *(a1 + 8) + 8;
        v99 = *(a1 + 80);
        v100 = 1;
        do
        {
          v101 = v98 + 72 * v96;
          if ((*(v101 + 24) & 0x22) != 0)
          {
            if (v96 + 4 > v3)
            {
              break;
            }

            if (!v99)
            {
              goto LABEL_188;
            }

            while (*(v99 + 16) <= v96)
            {
              v99 = *(v99 + 72);
              if (!v99)
              {
                goto LABEL_188;
              }
            }
          }

          else if (!v99)
          {
            goto LABEL_188;
          }

          v102 = 0;
          v103 = 0;
          v104 = v99;
          do
          {
            v105 = v98 + 72 * *(v104 + 16);
            if ((*(v105 + 24) & 0x22) != 0)
            {
              break;
            }

            if ((*v104 & v100) != 0)
            {
              v106 = *(v104 + 8);
              if ((v106 & (v102 | v97)) == 0)
              {
                if (*(v105 + 16) == *(v101 + 16))
                {
                  v97 |= v100;
                }

                else
                {
                  ++v103;
                  v102 |= v106;
                }
              }
            }

            v104 = *(v104 + 72);
          }

          while (v104);
          if (v103 >= 4)
          {
            *(a1 + 68) |= 0x20u;
            v107 = 0x8000;
            v108 = v99;
            while (1)
            {
              v109 = *(v108 + 16);
              if (v96 <= v109)
              {
                if (v96 < v109)
                {
LABEL_211:
                  if (v107 == 0x7FFF)
                  {
                    v110 = 0x7FFF;
                  }

                  else
                  {
                    v110 = v107 + 1;
                  }

                  v111 = v99;
                  do
                  {
                    if ((*(v111 + 8) & v102) != 0 && !*(v111 + 52) && *(v111 + 20) < v110)
                    {
                      *(v111 + 20) = v110;
                    }

                    v111 = *(v111 + 72);
                  }

                  while (v111);
                  break;
                }

                if (*(v108 + 20) > v107)
                {
                  v107 = *(v108 + 20);
                }
              }

              v108 = *(v108 + 72);
              if (!v108)
              {
                goto LABEL_211;
              }
            }
          }

LABEL_188:
          ++v96;
          v100 *= 2;
        }

        while (v96 != v3);
      }

      if ((*(a1 + 68) & 0x20) != 0)
      {
        v4 = 18;
      }

      else
      {
        v4 = 12;
      }

      goto LABEL_6;
    }
  }

  v4 = 1;
LABEL_6:
  v5 = 0;
  if (a2)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      v5 = *v6;
    }
  }

  v7 = v4;
  result = sub_181929E8C(*v2, 2 * v5 + (16 * v3 + 64) * v4, 1404761561);
  if (!result)
  {
    return result;
  }

  v15 = result;
  v16 = 4 * v7;
  v17 = &result[v16];
  *v17 = 0u;
  *(v17 + 16) = 0u;
  v18 = &result[v16 + v16];
  v19 = (2 * v7) | 1;
  v20 = 3;
  do
  {
    result[v20] = v18;
    v18 += 8 * v3;
    v20 += 4;
    --v19;
  }

  while (v19 > 1);
  v122 = v7;
  if (v5)
  {
    bzero(v18, 2 * v5);
    v21 = *(v2 + 14);
    if (v21 >= 48)
    {
      LOWORD(v21) = 48;
    }

    if (v3)
    {
      v22 = -1;
    }

    else
    {
      v22 = v5;
    }

    *(v17 + 22) = v22;
  }

  else
  {
    v18 = 0;
    v21 = *(v2 + 14);
    if (v21 >= 48)
    {
      LOWORD(v21) = 48;
    }
  }

  v23 = a1;
  *(v17 + 16) = v21;
  if (!v3)
  {
LABEL_170:
    if ((*(v23 + 60) & 0x180) == 0x100)
    {
      if (a2)
      {
        if (!*(v23 + 67))
        {
          *v134 = 0;
          v91 = sub_1819779B0(v23, *(v23 + 24), v17, 128, (v3 - 1), *(*(v17 + 24) + 8 * (v3 - 1)), v134, v14);
          v23 = a1;
          if (**(a1 + 24) == v91)
          {
            *(a1 + 67) = 2;
          }
        }
      }
    }

    v92 = *(v23 + 68);
    *(v23 + 68) = v92 & 0xFB;
    v93 = *(v23 + 16);
    if (v93)
    {
      v94 = *(v17 + 22);
      *(v23 + 65) = *(v17 + 22);
      v95 = *(v23 + 60);
      if ((v95 & 0x80) != 0)
      {
        if (*v93 == v94)
        {
          *(v23 + 67) = 2;
        }
      }

      else
      {
        *(v23 + 96) = *(v17 + 8);
        if (v94 <= 0)
        {
          *(v23 + 65) = 0;
          if (v3)
          {
            v112 = *(*(v17 + 24) + 8 * (v3 - 1));
            if ((*(v112 + 48) & 0x1000) == 0 && (*(v112 + 48) & 0x104) != 0x104)
            {
              *v134 = 0;
              v113 = sub_1819779B0(v23, v93, v17, 2048, (v3 - 1), v112, v134, v14);
              v23 = a1;
              v93 = *(a1 + 16);
              if (*v93 == v113)
              {
                *(a1 + 68) |= 4u;
                *(a1 + 96) = *v134;
              }

              v95 = *(a1 + 60);
            }
          }
        }

        else if (v94 == 1 && (v95 & 3) != 0 && v3)
        {
          *(v23 + 68) = v92 | 4;
        }
      }

      if ((v95 & 0x200) != 0)
      {
        if (v3)
        {
          if (*v93 == *(v23 + 65))
          {
            *v134 = 0;
            v115 = sub_1819779B0(v23, v93, v17, 0, (v3 - 1), *(*(v17 + 24) + 8 * (v3 - 1)), v134, v14);
            v23 = a1;
            if (**(a1 + 16) == v115)
            {
              *(a1 + 68) |= 8u;
              *(a1 + 96) = *v134;
            }
          }
        }
      }
    }

    *(v23 + 70) = *(v17 + 16);
    goto LABEL_231;
  }

  v124 = v18;
  v129 = v5;
  v116 = v3;
  v118 = v2;
  v132 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 1;
  v117 = v15;
  v28 = v15;
  v29 = v7;
  v119 = v3;
  do
  {
    v30 = v28;
    v120 = v17;
    v31 = 0;
    if (v27 >= 1)
    {
      v32 = 0;
      v121 = v28 + 26;
      v33 = v17;
      v131 = v28;
      v125 = v27;
      while (1)
      {
        v133 = v32;
        v34 = *(v23 + 80);
        if (v34)
        {
          break;
        }

LABEL_27:
        v32 = v133 + 1;
        v33 += 32;
        if (v133 + 1 == v125)
        {
          goto LABEL_24;
        }
      }

      while (1)
      {
        *v134 = 0;
        v35 = *v33;
        if ((*v34 & ~*v33) != 0)
        {
          goto LABEL_31;
        }

        v36 = *(v34 + 8);
        if ((v36 & v35) != 0)
        {
          goto LABEL_31;
        }

        v37 = *(v33 + 16);
        if ((*(v34 + 49) & 0x40) != 0 && v37 < 3)
        {
          goto LABEL_31;
        }

        v38 = (v37 + *(v34 + 20));
        v39 = *(v34 + 18);
        if (*(v34 + 18))
        {
          if (v39 >= v38)
          {
            if (v38 + 49 >= v39)
            {
              if (v38 + 31 >= v39)
              {
                LOWORD(v38) = v39 + byte_181A245A6[v39 - (v37 + *(v34 + 20))];
              }

              else
              {
                LOWORD(v38) = v39 + 1;
              }
            }

            else
            {
              LOWORD(v38) = *(v34 + 18);
            }
          }

          else if (v39 + 49 >= v38)
          {
            if (v39 + 31 >= v38)
            {
              LOWORD(v38) = v37 + *(v34 + 20) + byte_181A245A6[(v37 + *(v34 + 20)) - v39];
            }

            else
            {
              LOWORD(v38) = v38 + 1;
            }
          }
        }

        LODWORD(v40) = *(v33 + 20);
        v41 = *(v33 + 20);
        if (v38 >= v40)
        {
          if (v40 + 49 >= v38)
          {
            LOWORD(v40) = v40 + 31 >= v38 ? v38 + byte_181A245A6[v38 - v41] : v38 + 1;
          }

          else
          {
            LOWORD(v40) = v38;
          }
        }

        else if (v38 + 49 >= v40)
        {
          if (v38 + 31 >= v40)
          {
            LOWORD(v40) = v40 + byte_181A245A6[v41 - v38];
          }

          else
          {
            LOWORD(v40) = v40 + 1;
          }
        }

        v42 = *(v34 + 22);
        v43 = *(v33 + 22);
        if (v43 < 0)
        {
          v127 = v40;
          v40 = v25;
          v44 = *(v34 + 22);
          v45 = v26;
          v46 = v24;
          v47 = *(v33 + 16);
          v48 = sub_1819779B0(v23, *(v23 + 16), v33, *(v23 + 60), v132, v34, v134, v14);
          v42 = v44;
          v25 = v40;
          LOWORD(v40) = v127;
          LOWORD(v37) = v47;
          v24 = v46;
          v23 = a1;
          v30 = v131;
          v29 = v122;
          v43 = v48;
          v26 = v45;
          if (v43 < 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          *v134 = *(v33 + 8);
        }

        if (v129 <= v43)
        {
LABEL_65:
          v53 = v40;
          LOWORD(v40) = v40 - 2;
          goto LABEL_119;
        }

        v49 = *&v124[2 * v43];
        if (!v49)
        {
          break;
        }

LABEL_108:
        if (v40 >= v49)
        {
          v72 = v40;
          if (v49 + 49 >= v40)
          {
            if (v49 + 31 >= v40)
            {
              v72 = v40 + byte_181A245A6[v40 - v49];
            }

            else
            {
              v72 = v40 + 1;
            }
          }
        }

        else
        {
          if (v40 + 49 < v49)
          {
            v53 = v49 + 3;
            goto LABEL_119;
          }

          if (v40 + 31 >= v49)
          {
            v72 = v49 + byte_181A245A6[v49 - v40];
          }

          else
          {
            v72 = v49 + 1;
          }
        }

        v53 = v72 + 3;
LABEL_119:
        v73 = (v42 + v37);
        if (v31 < 1)
        {
LABEL_133:
          v79 = v31;
          if (v31 >= v29)
          {
            if (v53 > v25)
            {
              goto LABEL_31;
            }

            v79 = v26;
            if (v53 == v25)
            {
              v79 = v26;
              if (v40 >= v24)
              {
                goto LABEL_31;
              }
            }
          }

          v126 = v26;
          v128 = v24;
          if (v31 < v29)
          {
            ++v31;
          }

          v76 = v30 + 32 * v79;
          goto LABEL_137;
        }

        v74 = 0;
        v75 = v36 | v35;
        v76 = v30;
        while (*v76 != v75 || ((*(v76 + 22) ^ v43) & 0x80) != 0)
        {
          ++v74;
          v76 += 32;
          if (v31 == v74)
          {
            goto LABEL_133;
          }
        }

        if (*(v76 + 18) < v53)
        {
          goto LABEL_31;
        }

        if (*(v76 + 18) != v53)
        {
          v126 = v26;
          v128 = v24;
LABEL_137:
          v78 = v29;
          goto LABEL_138;
        }

        v77 = *(v76 + 16);
        if (v77 >= v73)
        {
          v128 = v24;
          if (v77 != v73)
          {
            v126 = v26;
            goto LABEL_137;
          }

          if (*(v76 + 20) >= v40)
          {
            v126 = v26;
            if (*(v76 + 20) == v40)
            {
              v78 = v122;
              if (sub_1819784CC(v34, *(*(v76 + 24) + 8 * v132)))
              {
                v23 = a1;
                v29 = v122;
LABEL_140:
                v30 = v131;
                v26 = v126;
                v24 = v128;
                goto LABEL_31;
              }
            }

            else
            {
              v78 = v122;
            }

LABEL_138:
            *v76 = *(v34 + 8) | *v33;
            *(v76 + 8) = *v134;
            *(v76 + 16) = v73;
            *(v76 + 18) = v53;
            *(v76 + 20) = v40;
            *(v76 + 22) = v43;
            memcpy(*(v76 + 24), *(v33 + 24), 8 * v132);
            *(*(v76 + 24) + 8 * v132) = v34;
            v29 = v78;
            if (v31 >= v78)
            {
              v23 = a1;
              v30 = v131;
              v25 = *(v131 + 9);
              v24 = *(v131 + 8);
              v26 = 0;
              if (v78 < 2)
              {
                goto LABEL_31;
              }

              v80 = 1;
              v81 = v121;
              while (2)
              {
                if (*(v81 - 1) > v25)
                {
                  v82 = *v81;
                }

                else if (*(v81 - 1) != v25 || (v82 = *v81, v82 <= v24))
                {
LABEL_149:
                  v80 = (v80 + 1);
                  v81 += 16;
                  if (v78 == v80)
                  {
                    goto LABEL_31;
                  }

                  continue;
                }

                break;
              }

              v26 = v80;
              v25 = *(v81 - 1);
              v24 = v82;
              goto LABEL_149;
            }

            v23 = a1;
            goto LABEL_140;
          }

          v30 = v131;
          v24 = v24;
        }

LABEL_31:
        v34 = *(v34 + 72);
        if (!v34)
        {
          goto LABEL_27;
        }
      }

      v50 = (**(*(v23 + 32) + 32) + 59) / 30;
      v51 = v50;
      if (v50 >= 8)
      {
        v54 = 40;
        if (v51 >= 0x100)
        {
          v55 = v51;
          do
          {
            v54 += 40;
            v51 = v55 >> 4;
            v56 = v55 > 0xFFF;
            v55 >>= 4;
          }

          while (v56);
        }

        LOBYTE(v57) = v51;
        if (v51 >= 0x10)
        {
          do
          {
            v54 += 10;
            v57 = v51 >> 1;
            v56 = v51 > 0x1F;
            v51 >>= 1;
          }

          while (v56);
        }
      }

      else
      {
        if (v50 < 2)
        {
          v52 = 0;
          goto LABEL_76;
        }

        v54 = 40;
        do
        {
          v54 -= 10;
          LOBYTE(v57) = 2 * v51;
          v58 = v51 >= 4;
          v51 *= 2;
        }

        while (!v58);
      }

      v52 = v54 + word_181A27AA2[v57 & 7] - 10;
LABEL_76:
      v59 = v52 + a2;
      if (v43 < 1)
      {
        goto LABEL_91;
      }

      v60 = 100 * (v129 - v43) / v129;
      v61 = v60;
      if (v60 >= 8)
      {
        v63 = 40;
        if (v61 >= 0x100)
        {
          v64 = v61;
          do
          {
            v63 += 40;
            v61 = v64 >> 4;
            v56 = v64 > 0xFFF;
            v64 >>= 4;
          }

          while (v56);
        }

        LOBYTE(v65) = v61;
        if (v61 >= 0x10)
        {
          do
          {
            v63 += 10;
            v65 = v61 >> 1;
            v56 = v61 > 0x1F;
            v61 >>= 1;
          }

          while (v56);
        }
      }

      else
      {
        if (v60 < 2)
        {
          v62 = -66;
LABEL_90:
          v59 += v62;
LABEL_91:
          if ((*(v23 + 60) & 0x4000) != 0)
          {
            if (v43)
            {
              v67 = 16;
            }

            else
            {
              v67 = 10;
            }

            v59 += v67;
            v66 = *(v23 + 62);
            if (v66 >= a2)
            {
              LOWORD(v66) = a2;
            }
          }

          else
          {
            LOWORD(v66) = a2 - 10;
            if (((a2 > 10) & ((*(v23 + 60) & 0x100) >> 8)) == 0)
            {
              LOWORD(v66) = a2;
            }
          }

          if (v66 < 11)
          {
            v68 = 0;
LABEL_107:
            v49 = v68 + v59;
            *&v124[2 * v43] = v49;
            goto LABEL_108;
          }

          v69 = v66;
          if (v66 < 0x100u)
          {
            v70 = 40;
            if (v69 < 0x10)
            {
LABEL_106:
              v68 = v70 + word_181A27AA2[v69 & 7] - 43;
              goto LABEL_107;
            }
          }

          else
          {
            v70 = 40;
            v71 = v69;
            do
            {
              v70 += 40;
              v69 = v71 >> 4;
              v56 = v71 > 0xFFF;
              v71 >>= 4;
            }

            while (v56);
            if (v69 < 0x10)
            {
              goto LABEL_106;
            }
          }

          do
          {
            v70 += 10;
            v56 = v69 > 0x1F;
            v69 >>= 1;
          }

          while (v56);
          goto LABEL_106;
        }

        v63 = 40;
        do
        {
          v63 -= 10;
          LOBYTE(v65) = 2 * v61;
          v58 = v61 >= 4;
          v61 *= 2;
        }

        while (!v58);
      }

      v62 = v63 + word_181A27AA2[v65 & 7] - 76;
      goto LABEL_90;
    }

LABEL_24:
    v28 = v120;
    v17 = v30;
    v27 = v31;
    v3 = v119;
    ++v132;
  }

  while (v132 != v119);
  if (v31)
  {
    if (v31 < 2)
    {
      v85 = v116;
      v15 = v117;
    }

    else
    {
      v83 = v30 + 32;
      v84 = v31 - 1;
      v85 = v116;
      v15 = v117;
      do
      {
        if (*(v30 + 18) > *(v83 + 18))
        {
          v30 = v83;
        }

        v83 += 32;
        --v84;
      }

      while (v84);
    }

    v86 = *(v30 + 24);
    v87 = *(v23 + 8) + 8;
    v88 = (v23 + 952);
    v2 = v118;
    do
    {
      v89 = *v86++;
      *v88 = v89;
      v90 = *(v89 + 16);
      *(v88 - 32) = v90;
      *(v88 - 23) = *(v87 + 72 * v90 + 28);
      v88 += 15;
      --v85;
    }

    while (v85);
    v17 = v30;
    goto LABEL_170;
  }

  v2 = v118;
  sub_181910730(v118, "no query solution", v9, v10, v11, v12, v13, v14, v116);
  v15 = v117;
LABEL_231:
  v114 = *v2;

  return sub_181929C84(v114, v15);
}

uint64_t sub_18196BC60(uint64_t result)
{
  v1 = *(result + 64);
  if (*(result + 64))
  {
    for (i = 0; i < v1; ++i)
    {
      v3 = *(result + 856 + 120 * i + 96);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 48);
      if ((v4 & 0x400) == 0)
      {
        if ((v4 & 0xD) == 0)
        {
          return result;
        }

        v5 = *(result + 80);
        if (v5)
        {
          v6 = *(v3 + 16);
          do
          {
            if (*(v5 + 16) == v6 && (*(v5 + 48) & 0x400F) == 0)
            {
              *v5 = -1;
            }

            v5 = *(v5 + 72);
          }

          while (v5);
          v1 = *(result + 64);
        }
      }
    }
  }

  return result;
}

uint64_t sub_18196BCEC(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = v1 + 18;
    do
    {
      v5 = *(v4 - 39);
      if ((v5 & 0x200) == 0 || (v5 & 4) == 0 || *(*(v4 - 2) + 18) || !*(**v4 + 72))
      {
        *(result + 96) |= 1 << v3;
      }

      ++v3;
      v4 += 18;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_18196BD5C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v5 = 0;
LABEL_23:
    v14 = *(a1 + 16);
    if (!v14)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v3 = *v2;
  if (*v2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    while (1)
    {
      v7 = *&v2[6 * v4 + 2];
      if (v7)
      {
        if (*v7 == 168 && (*(v7 + 1) & 0x20) == 0)
        {
          v9 = *(v7 + 11);
          if (*(a1 + 600) == v9)
          {
            v6 = 1;
            goto LABEL_6;
          }

          v10 = *(a1 + 596);
          if (v10 >= 2)
          {
            v11 = (a1 + 604);
            v12 = 1;
            while (1)
            {
              v13 = *v11++;
              if (v13 == v9)
              {
                break;
              }

              if (v10 == ++v12)
              {
                goto LABEL_5;
              }
            }

            v6 = 1 << v12;
            goto LABEL_6;
          }
        }

        else if ((*(v7 + 1) & 0x810000) == 0)
        {
          v6 = sub_1819725E8((a1 + 592), v7);
          v3 = *v2;
          goto LABEL_6;
        }
      }

LABEL_5:
      v6 = 0;
LABEL_6:
      v5 |= v6;
      if (++v4 >= v3)
      {
        goto LABEL_23;
      }
    }
  }

  v5 = 0;
  v14 = *(a1 + 16);
  if (v14)
  {
LABEL_24:
    v15 = *v14;
    if (*v14 < 1)
    {
      v17 = 0;
LABEL_47:
      v5 |= v17;
      goto LABEL_48;
    }

    v16 = 0;
    v17 = 0;
    while (1)
    {
      v19 = *&v14[6 * v16 + 2];
      if (v19)
      {
        if (*v19 == 168 && (*(v19 + 1) & 0x20) == 0)
        {
          v21 = *(v19 + 11);
          if (*(a1 + 600) == v21)
          {
            v18 = 1;
            goto LABEL_28;
          }

          v22 = *(a1 + 596);
          if (v22 >= 2)
          {
            v23 = (a1 + 604);
            v24 = 1;
            while (1)
            {
              v25 = *v23++;
              if (v25 == v21)
              {
                break;
              }

              if (v22 == ++v24)
              {
                goto LABEL_27;
              }
            }

            v18 = 1 << v24;
            goto LABEL_28;
          }
        }

        else if ((*(v19 + 1) & 0x810000) == 0)
        {
          v18 = sub_1819725E8((a1 + 592), v19);
          v15 = *v14;
          goto LABEL_28;
        }
      }

LABEL_27:
      v18 = 0;
LABEL_28:
      v17 |= v18;
      if (++v16 >= v15)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_48:
  v26 = *(a1 + 64);
  v27 = -1;
  if (v26 >= 2)
  {
    v28 = a1 + 856;
    v29 = *(*(a1 + 8) + 32);
    v30 = *(a1 + 64);
    do
    {
      v33 = (v28 + 120 * (v26 - 1));
      v34 = v33[12];
      v35 = *(a1 + 8) + 72 * *(v34 + 16);
      if ((*(v35 + 32) & 0x18) == 8 && ((*(a1 + 60) & 0x100) != 0 || (*(v34 + 49) & 0x10) != 0))
      {
        v31 = *(v34 + 8);
        if ((v31 & v5) == 0)
        {
          v36 = *(a1 + 136);
          v37 = *(a1 + 124);
          v38 = v36 + 56 * v37;
          if (v37 < 1)
          {
LABEL_66:
            *(a1 + 96) = (-1 << (v26 - 1)) & (*(a1 + 96) >> 1) | *(a1 + 96) & ~(-1 << (v26 - 1));
            v40 = *(v34 + 8);
            if (v37 >= 1)
            {
              do
              {
                if ((*(v36 + 48) & v40) != 0)
                {
                  *(v36 + 18) |= 4u;
                }

                v36 += 56;
              }

              while (v36 < v38);
              v30 = *(a1 + 64);
            }

            if (v30 != v26)
            {
              memmove(v33, (v28 + 120 * v26), 120 * (v30 - v26));
              v30 = *(a1 + 64);
            }

            v27 &= ~v40;
            *(a1 + 64) = --v30;
          }

          else
          {
            v39 = *(a1 + 136);
            while (((v39[6] & v31) == 0 || (*(*v39 + 4) & 1) != 0 && *(*v39 + 56) == *(v35 + 36)) && ((v29 & 0x40) == 0 || (*(*v39 + 4) & 2) == 0 || *(*v39 + 56) != *(v35 + 36)))
            {
              v39 += 7;
              if (v39 >= v38)
              {
                goto LABEL_66;
              }
            }
          }
        }
      }
    }

    while (v26-- > 2);
  }

  return v27;
}

uint64_t sub_18196C0F4(uint64_t result)
{
  if (*(result + 64))
  {
    v1 = *(result + 8) + 8;
    v2 = *(result + 952);
    v3 = *(v1 + 72 * *(v2 + 16) + 16);
    v4 = *(v3 + 48);
    if ((v4 & 0x10) != 0)
    {
      *(v3 + 48) = v4 | 0x100;
      if (*(result + 64) >= 2u)
      {
        v5 = *(v2 + 22);
        v6 = (result + 1072);
        v7 = 1;
        do
        {
          v8 = *v6;
          v9 = *(v1 + 72 * *(*v6 + 16) + 16);
          v10 = *(v9 + 48);
          if ((v10 & 0x10) == 0)
          {
            break;
          }

          *(v9 + 48) = v10 | 0x100;
          v11 = *(v8 + 48);
          v12 = (~v11 & 0x800001) != 0 || (*(v8 + 48) & 0x300) == 0;
          if (!v12 && *(v9 + 58) < v5)
          {
            *(v8 + 48) = v11 & 0xFFBFFFBF | 0x400000;
          }

          v5 += *(v8 + 22);
          ++v7;
          v6 += 15;
        }

        while (v7 < *(result + 64));
      }
    }
  }

  return result;
}

uint64_t sub_18196C1C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a2 + 96))
  {
    v6 = result;
    v7 = 0;
    v8 = *(a2 + 24);
    v9 = 8;
    do
    {
      v10 = *(*(a2 + 8) + 2 * v7);
      if (v10 == -2)
      {
        v11 = (*(a2 + 80) + v9);
      }

      else
      {
        if ((v10 & 0x80000000) != 0)
        {
          goto LABEL_3;
        }

        v13 = *(v8 + 8) + 16 * v10;
        if ((*(v13 + 14) & 0x20) == 0)
        {
          goto LABEL_3;
        }

        v14 = *(v13 + 12);
        if (!v14 || *(v8 + 63) || (v17 = *(v8 + 80)) == 0 || *v17 < v14)
        {
          v12 = 0;
          goto LABEL_12;
        }

        v11 = &v17[6 * (v14 - 1) + 2];
      }

      v12 = *v11;
LABEL_12:
      v20 = 0x100000000;
      v21 = 0;
      v19[3] = 0;
      v19[0] = 0;
      v19[1] = sub_1818C7E14;
      v19[2] = sub_18195A49C;
      if (!v12)
      {
        goto LABEL_3;
      }

      result = sub_181959BA0(v19, v12);
      if (WORD2(v20))
      {
        goto LABEL_3;
      }

      if (*v6)
      {
        result = sub_181929E8C(*v6, 0x20uLL, 0x10200401557451CLL);
        v15 = result;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = sub_181902484(32, 0x10200401557451CLL);
        v15 = result;
        if (!result)
        {
          return result;
        }
      }

      *(v15 + 24) = v6[12];
      result = sub_1818C7FEC(*v6, v12, 0, 0);
      *v15 = result;
      *(v15 + 8) = *(a4 + 28);
      *(v15 + 12) = a3;
      *(v15 + 16) = v7;
      *(v15 + 20) = (*(a4 + 24) & 0x58) != 0;
      v16 = *(a2 + 32);
      if (!v16)
      {
        result = sub_181978718(*v6, a2);
        if (!result)
        {
          goto LABEL_22;
        }

        v16 = *(a2 + 32);
      }

      *(v15 + 21) = *(v16 + v7);
LABEL_22:
      v6[12] = v15;
      if (!*(v15 + 24))
      {
        result = sub_18195B158(v6, sub_1819786B0, (v6 + 12));
      }

LABEL_3:
      ++v7;
      v9 += 24;
    }

    while (v7 < *(a2 + 96));
  }

  return result;
}

uint64_t sub_18196C3E0(uint64_t result, uint64_t a2, unsigned __int8 *a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = a5;
  v11 = a3;
  v13 = result;
  v14 = *a3;
  if (v14 == 44)
  {
    result = sub_18196C3E0(result, a2, *(a3 + 3), a4, a5, a6);
    v11 = *(v11 + 2);
    v14 = *v11;
  }

  if (v14 == 54 || v14 == 45)
  {
    v15 = *(v11 + 2);
    if (*v15 == 168)
    {
      v16 = *(v11 + 3);
      v28 = 0x100000000;
      v29 = 0;
      v27[0] = 0;
      v27[1] = sub_1818C7E14;
      v27[2] = sub_18195A49C;
      v27[3] = 0;
      if (!v16 || (result = sub_181959BA0(v27, v16), WORD2(v28)))
      {
        v17 = 24;
        if ((*(v11 + 1) & 0x400) != 0)
        {
          v18 = 24;
        }

        else
        {
          v18 = 16;
        }

        if ((*(v11 + 1) & 0x400) != 0)
        {
          v17 = 16;
        }

        v19 = *&v11[v18];
        if ((v19[5] & 2) != 0)
        {
          result = sub_1818B4720(v13, v19, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v20 = *&v11[v17];
          if (v20 && (v20[5] & 2) != 0 || (result = sub_1818B4720(v13, v19, a3, a4, a5, a6, a7, a8)) == 0)
          {
            result = sub_1818B4720(v13, v20, a3, a4, a5, a6, a7, a8);
            if (!result)
            {
LABEL_21:
              v21 = *(v15 + 12);
              if ((v21 & 0x80000000) == 0)
              {
                v22 = *(*(*(a2 + 24) + 8) + 16 * v21 + 9);
                if (v22 >= 0x42)
                {
                  if (a6)
                  {
                    v23 = *v13;
                    if (*v13)
                    {
                      result = sub_181929E8C(*v13, 0x20uLL, 0x10200401557451CLL);
                    }

                    else
                    {
                      result = sub_181902484(32, 0x10200401557451CLL);
                    }

                    v24 = result;
                    if (result)
                    {
                      v25 = *(a6 + 24) & 0x48;
                      if (v16)
                      {
                        result = sub_1818C7FEC(v23, v16, 0, 0);
                      }

                      else
                      {
                        result = 0;
                      }

                      *v24 = result;
                      *(v24 + 8) = *(a6 + 28);
                      *(v24 + 12) = v9;
                      *(v24 + 16) = *(v15 + 12);
                      *(v24 + 20) = v25 != 0;
                      v26 = v13[13];
                      *(v24 + 24) = v26;
                      *(v24 + 21) = v22;
                      v13[13] = v24;
                      if (!v26)
                      {
                        return sub_18195B158(v13, sub_1819786B0, (v13 + 13));
                      }
                    }
                  }

                  else if (v21 <= 0x3E)
                  {
                    *a4 &= ~(1 << v21);
                  }
                }
              }

              return result;
            }
          }
        }

        if (*(result + 24) != sub_1818D0EC0)
        {
          return result;
        }

        goto LABEL_21;
      }
    }
  }

  return result;
}

void *sub_18196C654(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v10 = a1[2];
  v11 = *(v10 + 144);
  v191 = v10;
  if (*(v10 + 148) <= v11)
  {
    v183 = sub_18194C8AC(v10, 15, 0, 0, 0, a6, a7, a8);
  }

  else
  {
    *(v10 + 144) = v11 + 1;
    v183 = v11;
    v12 = *(v10 + 136) + 40 * v11;
    *v12 = 15;
    *(v12 + 1) = 0u;
    *(v12 + 17) = 0u;
    *(v12 + 32) = 0;
  }

  v13 = *(*a2 + 8);
  v14 = v13 + 72 * *(a4 + 64);
  v15 = a2[4];
  v188 = a2;
  v16 = *(a2 + 5);
  v17 = v15 + 56 * v16;
  v192 = *(v14 + 24);
  v193 = *(a4 + 96);
  if (v16 < 1)
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
LABEL_42:
    *(v193 + 52) = v18;
    *(v193 + 24) = v18;
    *(v193 + 48) = 16961;
    if (*(v192 + 63) == 2)
    {
      v31 = ~v20;
    }

    else
    {
      v31 = *(v14 + 40) & (~v20 | 0x8000000000000000);
    }

    v32 = *(v192 + 48);
    v33 = *(v192 + 54);
    v195 = v19;
    if ((v32 & 0x80) != 0)
    {
      if (v33 >= 1)
      {
        v36 = 0;
        v37 = (*(v192 + 8) + 14);
        while (1)
        {
          v38 = *v37;
          v37 += 8;
          if (v38)
          {
            if (v36 >= 0x3F)
            {
              v31 |= 0x8000000000000000;
              goto LABEL_46;
            }

            v39 = 1 << v36;
            if (((1 << v36) & v20) != 0)
            {
              v39 = 0;
            }

            v31 |= v39;
          }

          if (v33 == ++v36)
          {
            goto LABEL_46;
          }
        }
      }

      v185 = 0;
      LODWORD(v34) = *(v192 + 54);
LABEL_72:
      v190 = v9;
      v44 = *v9;
      v187 = ((*(v14 + 40) >> 63) & (v33 - 63)) + v18;
      v45 = v187 + (((v32 >> 7) & 1) == 0);
      v46 = v45;
      v47 = 2 * v45;
      v48 = v47 + 2;
      v49 = v46 * 8 + ((3 * v45 + v47 + 2 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v44)
      {
        result = sub_181929E8C(v44, v49 + 112, 3329821686);
        v50 = result;
        if (result)
        {
          goto LABEL_74;
        }
      }

      else
      {
        result = sub_181902484(v49 + 112, 3329821686);
        v50 = result;
        if (result)
        {
LABEL_74:
          bzero(v50, v49 + 112);
          v54 = &v50[v46 + 14];
          v50[1] = v54 + v48;
          v50[2] = v54;
          v50[7] = v54 + v48 + v47;
          v50[8] = v50 + 14;
          *(v50 + 48) = v45;
          *(v50 + 47) = v45 - 1;
          v55 = v192;
          *(v193 + 32) = v50;
          *v50 = "auto-index";
          v50[3] = v192;
          v56 = v188[4];
          if (v56 < v17)
          {
            v182 = 0;
            v181 = 0;
            LODWORD(v57) = 0;
            v9 = v190;
            v58 = v195;
            while (1)
            {
              v59 = *(v56 + 7);
              if (v59 != *(v14 + 36))
              {
                goto LABEL_77;
              }

              if ((*(v56 + 10) & 0x82) == 0)
              {
                goto LABEL_77;
              }

              if ((*(v14 + 32) & 0x58) != 0)
              {
                v60 = *(*v56 + 4);
                if ((v60 & 3) == 0 || *(*v56 + 56) != v59 || (*(v14 + 32) & 0x18) != 0 && (v60 & 2) != 0)
                {
                  goto LABEL_77;
                }
              }

              if ((v56[5] & a3) != 0)
              {
                goto LABEL_77;
              }

              v61 = *(v56 + 8);
              if ((v61 & 0x80000000) != 0)
              {
                v58 = v195;
                goto LABEL_77;
              }

              v62 = *(v14 + 24);
              v180 = *v56;
              if (sub_181973454(*v56, *(*(v62 + 8) + 16 * v61 + 9)))
              {
                if (sub_1819777E0(v62, v61))
                {
                  v66 = v61 <= 0x3F ? 1 << v61 : 0x8000000000000000;
                  if ((v66 & v181) == 0)
                  {
                    break;
                  }
                }
              }

              v58 = v195;
LABEL_94:
              v55 = v192;
LABEL_77:
              v56 += 7;
              if (v56 >= v17)
              {
                v78 = v182 != 0;
                if (v185)
                {
                  goto LABEL_120;
                }

                goto LABEL_124;
              }
            }

            *(v50[1] + 2 * v57) = v61;
            v67 = 24;
            if ((*(v180 + 4) & 0x400) != 0)
            {
              v68 = 24;
            }

            else
            {
              v68 = 16;
            }

            if ((*(v180 + 4) & 0x400) != 0)
            {
              v67 = 16;
            }

            v69 = *(v180 + v68);
            if ((v69[5] & 2) != 0)
            {
              v72 = v190;
            }

            else
            {
              v70 = *(v180 + v67);
              if (!v70 || (v70[5] & 2) == 0)
              {
                v71 = sub_1818B4720(v190, v69, v63, v64, v65, v51, v52, v53);
                if (v71)
                {
                  goto LABEL_108;
                }
              }

              v72 = v190;
              v69 = v70;
            }

            v71 = sub_1818B4720(v72, v69, v63, v64, v65, v51, v52, v53);
            if (!v71)
            {
              v73 = "BINARY";
LABEL_110:
              v181 |= v66;
              *(v50[8] + 8 * v57) = v73;
              LODWORD(v57) = v57 + 1;
              v74 = *(v180 + 16);
              v58 = v195;
              if (v74)
              {
                v75 = sub_1818D0A24(v74);
                v76 = v182;
                if (v75 != 66)
                {
                  v76 = 1;
                }

                v182 = v76;
              }

              goto LABEL_94;
            }

LABEL_108:
            v73 = *v71;
            goto LABEL_110;
          }

          LODWORD(v57) = 0;
          v78 = 0;
          v9 = v190;
          v58 = v195;
          if (v185)
          {
LABEL_120:
            v79 = 0;
            do
            {
              if ((v31 >> v79))
              {
                *(v50[1] + 2 * v57) = v79;
                *(v50[8] + 8 * v57) = "BINARY";
                LODWORD(v57) = v57 + 1;
              }

              ++v79;
            }

            while (v34 != v79);
          }

LABEL_124:
          if ((*(v14 + 40) & 0x8000000000000000) != 0 && *(v55 + 54) >= 64)
          {
            v57 = v57;
            v80 = 63;
            do
            {
              *(v50[1] + 2 * v57) = v80;
              *(v50[8] + 8 * v57++) = "BINARY";
              ++v80;
            }

            while (v80 < *(v55 + 54));
          }

          if ((*(v55 + 48) & 0x80) == 0)
          {
            *(v50[1] + 2 * v57) = -1;
            *(v50[8] + 8 * v57) = "BINARY";
          }

          v81 = *v9;
          if ((*(*v9 + 49) & 4) == 0 || *(v9 + 301) == 2)
          {
LABEL_132:
            v82 = 0;
            goto LABEL_133;
          }

          v93 = v50[3];
          v94 = &unk_1EA831560;
          if (!sqlite3_initialize())
          {
            v95 = sub_181902484(32, 0x10300409A0FC5E0);
            if (v95)
            {
              v94 = v95;
              v96 = *(v81 + 136);
              *v95 = 0;
              *(v95 + 8) = 0;
              *(v95 + 16) = 0;
              *(v95 + 20) = v96;
              *(v95 + 28) = 0;
            }

            else
            {
              v94 = &unk_1EA831560;
            }
          }

          sqlite3_str_appendf(v94, "CREATE AUTOMATIC INDEX ON %s(", *v93);
          if (*(v50 + 48) >= 2u)
          {
            sqlite3_str_appendf(v94, "%s%s", &byte_181A2878D, *(*(v93 + 8) + 16 * *v50[1]));
            if (*(v50 + 48) >= 3u)
            {
              v169 = 1;
              do
              {
                sqlite3_str_appendf(v94, "%s%s", ", ", *(*(v93 + 8) + 16 * *(v50[1] + 2 * v169++)));
              }

              while (v169 < *(v50 + 48) - 1);
            }
          }

          v9 = v190;
          if (v94 == &unk_1EA831560)
          {
            goto LABEL_266;
          }

          v170 = v94[1];
          if (v170 && (v170[*(v94 + 6)] = 0, *(v94 + 5)) && (*(v94 + 29) & 4) == 0)
          {
            v171 = sub_18192A12C(v94);
          }

          else
          {
            v171 = v94[1];
          }

          v172 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(v94);
            --qword_1ED456A90;
            off_1ED452EB0(v94);
            v94 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
LABEL_257:
              if (v171)
              {
                v173 = " WHERE <expr>";
                if (!v195)
                {
                  v173 = &byte_181A2878D;
                }

                v82 = sub_18195AD8C(v190, 0, "%s)%s", v171, v173);
                v174 = &off_1ED452EB0;
                if (dword_1ED452E80)
                {
                  if (xmmword_1ED456AF0)
                  {
                    xmmword_1ED452F18(xmmword_1ED456AF0);
                  }

                  qword_1ED456A48 -= xmmword_1ED452EC0(v171);
                  --qword_1ED456A90;
                  off_1ED452EB0(v171);
                  v171 = xmmword_1ED456AF0;
                  if (!xmmword_1ED456AF0)
                  {
                    goto LABEL_268;
                  }

                  v174 = &xmmword_1ED452F28;
                }

                (*v174)(v171);
LABEL_268:
                v58 = v195;
LABEL_133:
                v83 = *(v9 + 14);
                *(v9 + 14) = v83 + 1;
                *(a4 + 8) = v83;
                v84 = (v187 + 1);
                v85 = *(v191 + 144);
                if (*(v191 + 148) <= v85)
                {
                  sub_18194C8AC(v191, 116, v83, v84, 0, v51, v52, v53);
                }

                else
                {
                  *(v191 + 144) = v85 + 1;
                  v86 = *(v191 + 136) + 40 * v85;
                  *v86 = 116;
                  *(v86 + 4) = v83;
                  *(v86 + 8) = v84;
                  *(v86 + 12) = 0;
                  *(v86 + 28) = 0;
                  *(v86 + 20) = 0;
                  *(v86 + 36) = 0;
                }

                v87 = v9[2];
                v88 = sub_1819572CC(v9, v50);
                if (v88)
                {
                  if (*(*v87 + 103))
                  {
                    if (!*(*v87 + 824) && (*v88)-- == 1)
                    {
                      sub_181939EC8(*(v88 + 16), v88);
                    }
                  }

                  else
                  {
                    v97 = *(v87 + 136) + 40 * *(v87 + 144);
                    *(v97 - 39) = -8;
                    *(v97 - 24) = v88;
                  }
                }

                if ((*(*v9 + 98) & 8) == 0 && v78)
                {
                  sub_181978894(v9, *v188, a4);
                  v98 = (*(v9 + 15) + 1);
                  *(v9 + 15) = v98;
                  *(a4 + 52) = v98;
                  v99 = *(v191 + 144);
                  if (*(v191 + 148) <= v99)
                  {
                    sub_18194C8AC(v191, 77, 0x2710uLL, v98, 0, v89, v90, v91);
                    if ((*(v14 + 33) & 0x40) == 0)
                    {
LABEL_150:
                      v101 = *(a4 + 4);
                      v102 = *(v191 + 144);
                      if (*(v191 + 148) <= v102)
                      {
                        v102 = sub_18194C8AC(v191, 36, v101, 0, 0, v89, v90, v91);
                        v197 = 0;
                        if (!v58)
                        {
                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        v197 = 0;
                        *(v191 + 144) = v102 + 1;
                        v103 = *(v191 + 136) + 40 * v102;
                        *v103 = 36;
                        *(v103 + 4) = v101;
                        *(v103 + 8) = 0u;
                        *(v103 + 24) = 0u;
                        if (!v58)
                        {
                          goto LABEL_167;
                        }
                      }

                      goto LABEL_157;
                    }

LABEL_154:
                    v104 = *(v14 + 72);
                    v105 = *(v104 + 12);
                    v106 = *(v191 + 144);
                    if (*(v191 + 148) <= v106)
                    {
                      v106 = sub_18194C8AC(v191, 71, 0, 0, 0, v89, v90, v91);
                    }

                    else
                    {
                      *(v191 + 144) = v106 + 1;
                      v107 = *(v191 + 136) + 40 * v106;
                      *v107 = 71;
                      *(v107 + 1) = 0u;
                      *(v107 + 17) = 0u;
                      *(v107 + 32) = 0;
                    }

                    v113 = *(v104 + 8);
                    v114 = *(v191 + 144);
                    v197 = v106;
                    if (*(v191 + 148) <= v114)
                    {
                      sub_18194C8AC(v191, 11, v105, 0, v113, v89, v90, v91);
                    }

                    else
                    {
                      *(v191 + 144) = v114 + 1;
                      v115 = *(v191 + 136) + 40 * v114;
                      *v115 = 11;
                      *(v115 + 4) = v105;
                      *(v115 + 8) = 0;
                      *(v115 + 12) = v113;
                      *(v115 + 24) = 0;
                      *(v115 + 32) = 0;
                      *(v115 + 16) = 0;
                    }

                    v102 = *(v191 + 144);
                    if (*(v191 + 148) <= v102)
                    {
                      v102 = sub_18194C8AC(v191, 12, v105, 0, 0, v89, v90, v91);
                      if (!v58)
                      {
                        goto LABEL_167;
                      }
                    }

                    else
                    {
                      *(v191 + 144) = v102 + 1;
                      v116 = *(v191 + 136) + 40 * v102;
                      *v116 = 12;
                      *(v116 + 4) = v105;
                      *(v116 + 8) = 0u;
                      *(v116 + 24) = 0u;
                      if (!v58)
                      {
LABEL_167:
                        v109 = -1;
                        v110 = *(v9 + 31);
                        if (!v110)
                        {
                          goto LABEL_168;
                        }

                        goto LABEL_158;
                      }
                    }

LABEL_157:
                    v108 = *(v9 + 18);
                    *(v9 + 18) = v108 - 1;
                    sub_1818DD640(v9, v58);
                    *(v193 + 48) |= 0x20000u;
                    v109 = -v108;
                    v110 = *(v9 + 31);
                    if (!v110)
                    {
LABEL_168:
                      v112 = (*(v9 + 15) + 1);
                      *(v9 + 15) = v112;
LABEL_169:
                      result = sub_1818D72E8(v9, v50, *(a4 + 4), v112, 0, 0, 0, 0);
                      v120 = result;
                      v121 = *(a4 + 52);
                      if (v121)
                      {
                        v117 = *(v193 + 24);
                        v122 = *(v191 + 144);
                        if (*(v191 + 148) <= v122)
                        {
                          result = sub_18194CAFC(v191, 183, v121, 0, result, v117, v118, v119);
                        }

                        else
                        {
                          *(v191 + 144) = v122 + 1;
                          v123 = *(v191 + 136) + 40 * v122;
                          *v123 = 64951;
                          *(v123 + 4) = v121;
                          *(v123 + 8) = 0;
                          *(v123 + 12) = result;
                          *(v123 + 16) = v117;
                          *(v123 + 24) = 0;
                          *(v123 + 32) = 0;
                        }
                      }

                      v124 = *(v191 + 144);
                      if ((*(*v191 + 49) & 4) != 0)
                      {
                        v125 = *(v191 + 392);
                        v126 = 56 * v125;
                        v127 = v125 + 1;
                        while (--v127 >= 1)
                        {
                          v128 = v126 - 56;
                          v129 = *(v191 + 400);
                          v130 = *(v129 + v126 - 56);
                          v126 -= 56;
                          if (v130 == v82)
                          {
                            if (v82 >= 1)
                            {
                              *(v129 + v128 + 28) = v82;
                            }

                            if (v124 >= 1)
                            {
                              *(v129 + v128 + 32) = v124;
                            }

                            break;
                          }
                        }
                      }

                      v131 = *(a4 + 8);
                      if (*(v191 + 148) <= v124)
                      {
                        result = sub_18194C8AC(v191, 138, v131, v112, 0, v117, v118, v119);
                      }

                      else
                      {
                        *(v191 + 144) = v124 + 1;
                        v132 = *(v191 + 136) + 40 * v124;
                        *v132 = 138;
                        *(v132 + 4) = v131;
                        *(v132 + 8) = v112;
                        *(v132 + 12) = 0;
                        *(v132 + 28) = 0;
                        *(v132 + 20) = 0;
                        *(v132 + 36) = 0;
                      }

                      v133 = *(v191 + 144);
                      if (v133 >= 1)
                      {
                        *(*(v191 + 136) + 40 * v133 - 38) = 16;
                      }

                      if (v195)
                      {
                        result = *(v191 + 24);
                        if (*(result + 18) + *(result + 19) < 0)
                        {
                          result = sub_18195CB84(result, v191, v109);
                          if ((*(v14 + 33) & 0x40) == 0)
                          {
LABEL_190:
                            v134 = *(a4 + 4);
                            v135 = (v102 + 1);
                            v136 = *(v191 + 144);
                            if (*(v191 + 148) <= v136)
                            {
                              result = sub_18194C8AC(v191, 39, v134, v135, 0, v117, v118, v119);
                            }

                            else
                            {
                              *(v191 + 144) = v136 + 1;
                              v137 = *(v191 + 136) + 40 * v136;
                              *v137 = 39;
                              *(v137 + 4) = v134;
                              *(v137 + 8) = v135;
                              *(v137 + 12) = 0;
                              *(v137 + 28) = 0;
                              *(v137 + 20) = 0;
                              *(v137 + 36) = 0;
                            }

                            v138 = *(v191 + 144);
                            if (v138 >= 1)
                            {
                              *(*(v191 + 136) + 40 * v138 - 38) = 3;
                            }

                            goto LABEL_215;
                          }

LABEL_196:
                          if (*(*v191 + 103))
                          {
                            v139 = &byte_1EA831A58;
                          }

                          else
                          {
                            v139 = (*(v191 + 136) + 40 * v197);
                          }

                          *(v139 + 2) = v120 + v57;
                          v140 = v9[2];
                          if (*(*v140 + 103))
                          {
                            v141 = &byte_1EA831A58;
                          }

                          else
                          {
                            v141 = (*(v140 + 136) + 40 * v102);
                          }

                          if (!*(*v9 + 103))
                          {
                            v142 = *(v140 + 144);
                            v143 = __OFSUB__(v142, v102);
                            v144 = v142 - v102;
                            if (!((v144 < 0) ^ v143 | (v144 == 0)))
                            {
                              v145 = *(*(v14 + 72) + 16);
                              v146 = *(a4 + 4);
                              v147 = *(a4 + 8);
                              v148 = v141 + 8;
                              do
                              {
                                if (*(v148 - 1) == v146)
                                {
                                  v149 = *(v148 - 8);
                                  if (v149 == 135)
                                  {
                                    *(v148 - 8) = 126;
                                    *(v148 - 1) = v147;
                                  }

                                  else if (v149 == 94)
                                  {
                                    *(v148 - 8) = 80;
                                    v150 = v148[1];
                                    *(v148 - 1) = *v148 + v145;
                                    *v148 = v150;
                                    *(v148 - 3) = 2;
                                  }
                                }

                                v148 += 10;
                                --v144;
                              }

                              while (v144);
                            }
                          }

                          v151 = *(v191 + 144);
                          if (*(v191 + 148) <= v151)
                          {
                            result = sub_18194C8AC(v191, 9, 0, v102, 0, v117, v118, v119);
                          }

                          else
                          {
                            *(v191 + 144) = v151 + 1;
                            v152 = *(v191 + 136) + 40 * v151;
                            *v152 = 9;
                            *(v152 + 8) = v102;
                            *(v152 + 12) = 0;
                            *(v152 + 28) = 0;
                            *(v152 + 20) = 0;
                            *(v152 + 36) = 0;
                          }

                          *(v14 + 33) &= ~0x40u;
                          v138 = *(v191 + 144);
LABEL_215:
                          v153 = *v191;
                          v154 = *(*v191 + 103);
                          if (*(*v191 + 103))
                          {
                            dword_1EA831A60 = v138;
                            if (!v112)
                            {
                              goto LABEL_221;
                            }
                          }

                          else
                          {
                            *(*(v191 + 136) + 40 * v102 + 8) = v138;
                            if (!v112)
                            {
                              goto LABEL_221;
                            }
                          }

                          v155 = *(v9 + 31);
                          if (v155 <= 7)
                          {
                            *(v9 + 31) = v155 + 1;
                            *(v9 + v155 + 46) = v112;
                            v138 = *(v191 + 144);
                          }

LABEL_221:
                          if (v154)
                          {
                            v156 = &byte_1EA831A58;
                          }

                          else
                          {
                            v156 = (*(v191 + 136) + 40 * v183);
                          }

                          v77 = v195;
                          *(v156 + 2) = v138;
                          if ((*(v153 + 49) & 4) != 0)
                          {
                            v157 = *(v191 + 392);
                            v158 = 56 * v157;
                            v159 = v157 + 1;
                            while (--v159 >= 1)
                            {
                              v160 = v158 - 56;
                              v161 = *(v191 + 400);
                              v162 = *(v161 + v158 - 56);
                              v158 -= 56;
                              if (v162 == v82)
                              {
                                if (*(v161 + v160 + 4))
                                {
                                  if (*(v161 + v160 + 12))
                                  {
                                    if (*(v161 + v160 + 20))
                                    {
                                      break;
                                    }

                                    v163 = 4;
                                  }

                                  else
                                  {
                                    v163 = 2;
                                  }
                                }

                                else
                                {
                                  v163 = 0;
                                }

                                v164 = v161 + 4 * v163 + v160;
                                *(v164 + 4) = v82;
                                *(v164 + 8) = v138 - 1;
                                break;
                              }
                            }
                          }

                          if (v195)
                          {
                            goto LABEL_237;
                          }

                          return result;
                        }

                        *(result[10] + 4 * v109) = v133;
                      }

                      if ((*(v14 + 33) & 0x40) == 0)
                      {
                        goto LABEL_190;
                      }

                      goto LABEL_196;
                    }

LABEL_158:
                    v111 = v110 - 1;
                    *(v9 + 31) = v111;
                    v112 = *(v9 + v111 + 46);
                    goto LABEL_169;
                  }

                  *(v191 + 144) = v99 + 1;
                  v100 = *(v191 + 136) + 40 * v99;
                  *v100 = 0x27100000004DLL;
                  *(v100 + 8) = v98;
                  *(v100 + 12) = 0;
                  *(v100 + 28) = 0;
                  *(v100 + 20) = 0;
                  *(v100 + 36) = 0;
                }

                if ((*(v14 + 33) & 0x40) == 0)
                {
                  goto LABEL_150;
                }

                goto LABEL_154;
              }

LABEL_266:
              v175 = *v190;
              if (!*(*v190 + 103))
              {
                v58 = v195;
                if (!*(v175 + 104))
                {
                  *(v175 + 103) = 1;
                  if (*(v175 + 220) >= 1)
                  {
                    *(v175 + 424) = 1;
                  }

                  ++*(v175 + 432);
                  *(v175 + 436) = 0;
                  v176 = *(v175 + 344);
                  if (v176)
                  {
                    sub_181910730(v176, "out of memory", v166, v167, v168, v51, v52, v53, v179);
                    v177 = *(v175 + 344);
                    *(v177 + 24) = 7;
                    v178 = *(v177 + 216);
                    if (v178)
                    {
                      v82 = 0;
                      do
                      {
                        ++*(v178 + 52);
                        *(v178 + 24) = 7;
                        v178 = *(v178 + 216);
                      }

                      while (v178);
                      goto LABEL_133;
                    }
                  }
                }

                goto LABEL_132;
              }

              v82 = 0;
              goto LABEL_268;
            }

            v172 = &xmmword_1ED452F28;
          }

          (*v172)(v94);
          goto LABEL_257;
        }
      }

      v9 = v190;
      v77 = v195;
      if (v195)
      {
        goto LABEL_237;
      }

      return result;
    }

LABEL_46:
    if (v33 >= 63)
    {
      v34 = 63;
    }

    else
    {
      v34 = v33;
    }

    if (v33 < 1)
    {
      v185 = 0;
      goto LABEL_72;
    }

    if (v33 >= 8)
    {
      v40 = vdupq_n_s64(v31);
      v35 = v34 & 0x38;
      v41.i64[0] = 0x100000001;
      v41.i64[1] = 0x100000001;
      v42 = vbicq_s8(v41, vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20010)), vceqzq_s64(vandq_s8(v40, xmmword_181A20020))));
      v43 = vsubq_s32(v18, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A1FFF0)), vceqzq_s64(vandq_s8(v40, xmmword_181A20000)))));
      if (v35 != 8)
      {
        v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20030)), vceqzq_s64(vandq_s8(v40, xmmword_181A20040)))));
        v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20050)), vceqzq_s64(vandq_s8(v40, xmmword_181A20060)))));
        if (v35 != 16)
        {
          v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20070)), vceqzq_s64(vandq_s8(v40, xmmword_181A20080)))));
          v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20090)), vceqzq_s64(vandq_s8(v40, xmmword_181A200A0)))));
          if (v35 != 24)
          {
            v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A200B0)), vceqzq_s64(vandq_s8(v40, xmmword_181A200C0)))));
            v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A200D0)), vceqzq_s64(vandq_s8(v40, xmmword_181A200E0)))));
            if (v35 != 32)
            {
              v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A200F0)), vceqzq_s64(vandq_s8(v40, xmmword_181A20100)))));
              v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20110)), vceqzq_s64(vandq_s8(v40, xmmword_181A20120)))));
              if (v35 != 40)
              {
                v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20130)), vceqzq_s64(vandq_s8(v40, xmmword_181A20140)))));
                v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20150)), vceqzq_s64(vandq_s8(v40, xmmword_181A20160)))));
                if (v35 != 48)
                {
                  v43 = vsubq_s32(v43, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20170)), vceqzq_s64(vandq_s8(v40, xmmword_181A20180)))));
                  v42 = vsubq_s32(v42, vmvnq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v40, xmmword_181A20190)), vceqzq_s64(vandq_s8(v40, xmmword_181A201A0)))));
                }
              }
            }
          }
        }
      }

      v18 = vaddvq_s32(vaddq_s32(v42, v43));
      if (v35 == v34)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v35 = 0;
    }

    do
    {
      v18 += (v31 >> v35++) & 1;
    }

    while (v34 != v35);
LABEL_70:
    v185 = 1;
    goto LABEL_72;
  }

  v18 = 0;
  v19 = 0;
  v189 = 0;
  v20 = 0;
  v186 = *(a4 + 96) + 80;
  while (1)
  {
    if ((*(v15 + 18) & 2) == 0)
    {
      v21 = *v15;
      if (sub_18196A6E4(*v15, v13, *(a4 + 64), 0))
      {
        if (v21)
        {
          v22 = sub_1818C7FEC(*v9, v21, 0, 0);
        }

        else
        {
          v22 = 0;
        }

        v19 = sub_181951CA4(v9, v19, v22);
      }
    }

    v23 = *(v15 + 28);
    if (v23 != *(v14 + 36))
    {
      goto LABEL_7;
    }

    if ((*(v15 + 20) & 0x82) == 0)
    {
      goto LABEL_7;
    }

    if ((*(v14 + 32) & 0x58) != 0)
    {
      v24 = *(*v15 + 4);
      if ((v24 & 3) == 0 || *(*v15 + 56) != v23 || (*(v14 + 32) & 0x18) != 0 && (v24 & 2) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((*(v15 + 40) & a3) != 0)
    {
      goto LABEL_7;
    }

    v25 = *(v15 + 32);
    if ((v25 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

    v194 = v19;
    v26 = *(v14 + 24);
    if (sub_181973454(*v15, *(*(v26 + 8) + 16 * v25 + 9)))
    {
      if (sub_1819777E0(v26, v25))
      {
        break;
      }
    }

LABEL_40:
    v19 = v194;
LABEL_7:
    v15 += 56;
    if (v15 >= v17)
    {
      goto LABEL_42;
    }
  }

  if (v25 <= 0x3F)
  {
    v27 = 1 << v25;
  }

  else
  {
    v27 = 0x8000000000000000;
  }

  if (!v189)
  {
    sqlite3_log(284, "automatic index on %s(%s)", *v192, *(*(v192 + 8) + 16 * v25));
    if ((v27 & v20) == 0)
    {
      goto LABEL_32;
    }

LABEL_39:
    v189 = 1;
    goto LABEL_40;
  }

  if ((v27 & v20) != 0)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v18 < *(v193 + 56))
  {
    v28 = *(v193 + 64);
LABEL_38:
    v28[v18++] = v15;
    v20 |= v27;
    goto LABEL_39;
  }

  v184 = *v9;
  result = sub_181929E8C(*v9, 8 * ((v18 & 0xFFFFFFF8) + 8), 0x2004093837F09);
  if (result)
  {
    v28 = result;
    memcpy(result, *(v193 + 64), 8 * *(v193 + 56));
    v30 = *(v193 + 64);
    if (v30 != v186)
    {
      sub_181929C84(v184, v30);
    }

    *(v193 + 64) = v28;
    *(v193 + 56) = (v18 & 0xFFF8) + 8;
    goto LABEL_38;
  }

  v77 = v194;
  if (!v194)
  {
    return result;
  }

LABEL_237:
  v165 = *v9;

  return sub_1819439E0(v165, v77);
}

__n128 sub_18196DBF8(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v11 = a1;
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = (*a1 + 96);
  v85 = *v14;
  v15 = *(a3 + 96);
  *(*a1 + 104) = 0;
  v14->n128_u64[0] = 0;
  v16 = *(v13 + 36);
  if (*(v13 + 37) <= v16)
  {
    v82 = sub_18194C8AC(v13, 15, 0, 0, 0, a6, a7, a8);
  }

  else
  {
    *(v13 + 36) = v16 + 1;
    v82 = v16;
    v17 = v13[17] + 40 * v16;
    *v17 = 15;
    *(v17 + 1) = 0u;
    *(v17 + 17) = 0u;
    *(v17 + 32) = 0;
  }

  v87 = v12 + 184;
  v88 = v13;
  v84 = v11 + 856;
  v86 = a4;
  v92 = v11;
  do
  {
    v90 = v15;
    sub_181978894(v12, v11, v9);
    v21 = *(v12 + 72);
    *(v12 + 72) = v21 - 1;
    v93 = *(v9 + 4);
    v22 = (*(v12 + 60) + 1);
    *(v12 + 60) = v22;
    *(v9 + 52) = v22;
    v23 = *(v11 + 8);
    v24 = *(v9 + 64);
    v25 = *(*(v23 + 72 * *(v9 + 64) + 24) + 58);
    v89 = v21;
    if (v25 <= 609)
    {
      v27 = v25;
      v28 = ((26215 * v27) >> 18) + ((26215 * v27) >> 31);
      v29 = v25 % 10;
      v30 = v29 - 1;
      if (!v29)
      {
        v30 = 0;
      }

      if (v29 <= 4u)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 2;
      }

      v32 = v31 + 8;
      v33 = v32 << (v28 - 3);
      v34 = v32 >> (3 - v28);
      if (v27 > 29)
      {
        v34 = v33;
      }

      if (v34 >= 0x989680)
      {
        v34 = 10000000;
      }

      if (v34 <= 0x2710)
      {
        v26 = 10000;
      }

      else
      {
        v26 = v34;
      }
    }

    else
    {
      v26 = 10000000;
    }

    v35 = *(v13 + 36);
    if (*(v13 + 37) <= v35)
    {
      sub_18194C8AC(v13, 77, v26, v22, 0, v18, v19, v20);
    }

    else
    {
      *(v13 + 36) = v35 + 1;
      v36 = v13[17] + 40 * v35;
      *v36 = 77;
      *(v36 + 4) = v26;
      *(v36 + 8) = v22;
      *(v36 + 12) = 0;
      *(v36 + 28) = 0;
      *(v36 + 20) = 0;
      *(v36 + 36) = 0;
    }

    v37 = *(v13 + 36);
    if (*(v13 + 37) <= v37)
    {
      v91 = sub_18194C8AC(v13, 36, v93, 0, 0, v18, v19, v20);
    }

    else
    {
      *(v13 + 36) = v37 + 1;
      v91 = v37;
      v38 = v13[17] + 40 * v37;
      *v38 = 36;
      *(v38 + 4) = v93;
      *(v38 + 8) = 0u;
      *(v38 + 24) = 0u;
    }

    v39 = *(v92 + 124);
    if (v39 >= 1)
    {
      v40 = *(v92 + 136);
      v41 = &v40[7 * v39];
      do
      {
        if ((*(v40 + 9) & 2) == 0 && sub_18196A6E4(*v40, v23, v24, 0))
        {
          sub_1818DD640(v12, *v40);
        }

        v40 += 7;
      }

      while (v40 < v41);
    }

    v15 = v90;
    if (*(v90 + 49))
    {
      v13 = v88;
      if (*(v12 + 31))
      {
        v45 = *(v12 + 31) - 1;
        *(v12 + 31) = v45;
        v46 = *(v87 + 4 * v45);
      }

      else
      {
        v46 = (*(v12 + 60) + 1);
        *(v12 + 60) = v46;
      }

      v51 = *(v88 + 144);
      if (*(v88 + 148) <= v51)
      {
        sub_18194C8AC(v88, 135, v93, v46, 0, v18, v19, v20);
      }

      else
      {
        *(v88 + 144) = v51 + 1;
        v52 = *(v88 + 136) + 40 * v51;
        *v52 = 135;
        *(v52 + 4) = v93;
        *(v52 + 8) = v46;
        *(v52 + 12) = 0;
        *(v52 + 28) = 0;
        *(v52 + 20) = 0;
        *(v52 + 36) = 0;
      }

      v53 = *(v9 + 52);
      v54 = *(v88 + 144);
      if (*(v88 + 148) <= v54)
      {
        sub_18194CAFC(v88, 183, v53, 0, v46, 1, v19, v20);
        v56 = v89;
        if (!v46)
        {
          goto LABEL_76;
        }
      }

      else
      {
        *(v88 + 144) = v54 + 1;
        v55 = *(v88 + 136) + 40 * v54;
        *v55 = 64951;
        *(v55 + 4) = v53;
        *(v55 + 8) = 0;
        *(v55 + 12) = v46;
        *(v55 + 16) = 1;
        *(v55 + 24) = 0;
        *(v55 + 32) = 0;
        v56 = v89;
        if (!v46)
        {
          goto LABEL_76;
        }
      }

      v57 = *(v12 + 31);
      if (v57 <= 7)
      {
        *(v12 + 31) = v57 + 1;
        *(v87 + 4 * v57) = v46;
      }

      goto LABEL_76;
    }

    v42 = *(v90 + 32);
    v43 = *(v90 + 24);
    if (v43 == 1)
    {
      if (*(v12 + 31))
      {
        v44 = *(v12 + 31) - 1;
        *(v12 + 31) = v44;
        LODWORD(v94) = *(v87 + 4 * v44);
      }

      else
      {
        LODWORD(v94) = *(v12 + 60) + 1;
        *(v12 + 60) = v94;
      }
    }

    else
    {
      v47 = *(v12 + 44);
      v48 = __OFSUB__(v47, v43);
      v49 = v47 - v43;
      v13 = v88;
      if (v49 < 0 != v48)
      {
        v50 = *(v12 + 60);
        v94 = (v50 + 1);
        *(v12 + 60) = v50 + v43;
        if (!v43)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v94 = *(v12 + 48);
        *(v12 + 44) = v49;
        *(v12 + 48) = v94 + v43;
        if (!v43)
        {
          goto LABEL_67;
        }
      }
    }

    v83 = v14;
    v58 = 0;
    v59 = 8;
    v94 = v94;
    do
    {
      v60 = *(v42[1] + 2 * v58);
      if (v60 != -2)
      {
        sub_181959FA4(*(v12 + 16), v42[3], v93, v60, (v94 + v58), v18, v19, v20);
        goto LABEL_56;
      }

      *(v12 + 68) = v93 + 1;
      v61 = *(v42[10] + v59);
      v62 = *v12;
      if (!v61)
      {
        v63 = 0;
        if (*(v62 + 103))
        {
          goto LABEL_61;
        }

LABEL_60:
        sub_181956EF4(v12, v63, (v94 + v58));
        goto LABEL_61;
      }

      v63 = sub_1818C7FEC(*v12, v61, 0, 0);
      if (!*(v62 + 103))
      {
        goto LABEL_60;
      }

LABEL_61:
      if (v63)
      {
        sub_1819439E0(v62, v63);
      }

      *(v12 + 68) = 0;
LABEL_56:
      ++v58;
      v59 += 24;
    }

    while (v43 != v58);
    v14 = v83;
    v13 = v88;
    v15 = v90;
LABEL_67:
    v64 = *(v9 + 52);
    v65 = *(v13 + 36);
    if (*(v13 + 37) <= v65)
    {
      sub_18194CAFC(v13, 183, v64, 0, v94, v43, v19, v20);
    }

    else
    {
      *(v13 + 36) = v65 + 1;
      v66 = v13[17] + 40 * v65;
      *v66 = 64951;
      *(v66 + 4) = v64;
      *(v66 + 8) = 0;
      *(v66 + 12) = v94;
      *(v66 + 16) = v43;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0;
    }

    a4 = v86;
    v56 = v89;
    if (v43 == 1)
    {
      if (v94)
      {
        v67 = *(v12 + 31);
        if (v67 <= 7)
        {
          *(v12 + 31) = v67 + 1;
          *(v87 + 4 * v67) = v94;
        }
      }
    }

    else if (*(v12 + 44) < v43)
    {
      *(v12 + 44) = v43;
      *(v12 + 48) = v94;
    }

LABEL_76:
    v68 = v13[3];
    v69 = -v56;
    if (*(v68 + 72) + *(v68 + 76) < 0)
    {
      sub_18195CB84(v68, v13, v69);
      v70 = *(v13 + 36);
    }

    else
    {
      v70 = *(v13 + 36);
      *(*(v68 + 80) + 4 * v69) = v70;
    }

    v71 = v91;
    v11 = v92;
    v72 = *(v9 + 4);
    v73 = (v91 + 1);
    if (*(v13 + 37) <= v70)
    {
      sub_18194C8AC(v13, 39, v72, v73, 0, v18, v19, v20);
      v71 = v91;
    }

    else
    {
      *(v13 + 36) = v70 + 1;
      v74 = v13[17] + 40 * v70;
      *v74 = 39;
      *(v74 + 4) = v72;
      *(v74 + 8) = v73;
      *(v74 + 12) = 0;
      *(v74 + 28) = 0;
      *(v74 + 20) = 0;
      *(v74 + 36) = 0;
    }

    v75 = *(v13 + 36);
    v76 = *(*v13 + 103);
    v77 = &byte_1EA831A58;
    if (!*(*v13 + 103))
    {
      v77 = (v13[17] + 40 * v71);
    }

    *(v77 + 2) = v75;
    *(v15 + 48) &= ~0x400000u;
    if ((*(*v12 + 98) & 0x10) != 0)
    {
      break;
    }

    v78 = *(v92 + 64);
    if (++a2 < v78)
    {
      v9 = v84 + 120 * a2;
      v79 = v78 - a2;
      while (1)
      {
        if ((*(*(v92 + 8) + 8 + 72 * *(v9 + 64) + 24) & 0x48) == 0)
        {
          v15 = *(v9 + 96);
          if (v15)
          {
            if ((*v15 & a4) == 0 && (*(v15 + 48) & 0x400004) == 0x400000)
            {
              break;
            }
          }
        }

        ++a2;
        v9 += 120;
        if (!--v79)
        {
          goto LABEL_93;
        }
      }
    }
  }

  while (a2 < v78);
LABEL_93:
  if (v76)
  {
    v80 = &byte_1EA831A58;
  }

  else
  {
    v80 = (v13[17] + 40 * v82);
  }

  *(v80 + 2) = v75;
  result = v85;
  *v14 = v85;
  return result;
}

uint64_t sub_18196E388(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[19];
  if (!v8)
  {
    v8 = a1;
  }

  if (*(v8 + 301) != 2 && (*(*a1 + 49) & 4) == 0)
  {
    return 0;
  }

  v9 = 0;
  if ((a4 & 0x20) == 0)
  {
    v10 = *(a3 + 96);
    if ((*(v10 + 48) & 0x2000) == 0)
    {
      v14 = a1[2];
      v15 = *(a1 + 78);
      v16 = *(v10 + 20);
      v17 = *(v14 + 144);
      if (*(v14 + 148) <= v17)
      {
        v19 = a1;
        v9 = sub_18194C8AC(a1[2], 188, *(v14 + 144), v15, v16, a6, a7, a8);
        a1 = v19;
      }

      else
      {
        *(v14 + 144) = v17 + 1;
        v18 = *(v14 + 136) + 40 * v17;
        *v18 = 188;
        *(v18 + 4) = v17;
        *(v18 + 8) = v15;
        *(v18 + 12) = v16;
        *(v18 + 24) = 0;
        *(v18 + 32) = 0;
        *(v18 + 16) = 0;
        v9 = v17;
      }

      sub_181978CA8(a1, v17, a2, a3, a4);
    }
  }

  return v9;
}

uint64_t sub_18196E47C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a2;
  v12 = a1;
  v448 = *a1;
  v13 = *(a5 + 12);
  v14 = *(a5 + 64);
  v455 = *(a3 + 8) + 72 * *(a5 + 64);
  v15 = *(v455 + 36);
  v449 = v15;
  if (*(a3 + 600) == v15)
  {
    v16 = -2;
  }

  else
  {
    v17 = *(a3 + 596);
    if (v17 < 2)
    {
LABEL_7:
      v16 = -1;
    }

    else
    {
      v18 = (a3 + 604);
      v19 = 1;
      while (1)
      {
        v20 = *v18++;
        if (v20 == v15)
        {
          break;
        }

        if (v17 == ++v19)
        {
          goto LABEL_7;
        }
      }

      v16 = ~(1 << v19);
    }
  }

  *(a5 + 13) = v16 & a6;
  v21 = *(a3 + 96);
  v22 = *(a1 + 72);
  v23 = v22 - 1;
  a5[3] = v23;
  a5[4] = v23;
  v22 -= 2;
  *(a1 + 72) = v22;
  v453 = v22;
  a5[6] = v22;
  if (v14 && (*(v455 + 32) & 8) != 0)
  {
    v24 = (*(a1 + 60) + 1);
    *(a1 + 60) = v24;
    *a5 = v24;
    v25 = *(a2 + 144);
    if (*(a2 + 148) <= v25)
    {
      sub_18194C8AC(a2, 71, 0, v24, 0, a6, a7, a8);
    }

    else
    {
      *(a2 + 144) = v25 + 1;
      v26 = *(a2 + 136) + 40 * v25;
      *v26 = 71;
      *(v26 + 8) = v24;
      *(v26 + 12) = 0;
      *(v26 + 28) = 0;
      *(v26 + 20) = 0;
      *(v26 + 36) = 0;
    }
  }

  LODWORD(v27) = a4;
  if (a4 >= 1)
  {
    v27 = a4;
    v28 = (a3 + 120 * a4 + 912);
    while (!*(v28 - 14) && !*v28)
    {
      v28 -= 15;
      if (v27-- <= 1)
      {
        LODWORD(v27) = 0;
        break;
      }
    }
  }

  v30 = *(v455 + 33);
  v454 = v12;
  v452 = v11;
  if ((v30 & 0x40) != 0)
  {
    v44 = *(v455 + 72);
    v45 = *(v44 + 8);
    v46 = *(v44 + 12);
    v47 = *(v11 + 144);
    v48 = v455;
    if (*(v11 + 148) <= v47)
    {
      sub_18194C8AC(v11, 11, v46, 0, v45, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v47 + 1;
      v49 = *(v11 + 136) + 40 * v47;
      *v49 = 11;
      *(v49 + 4) = v46;
      *(v49 + 8) = 0;
      *(v49 + 12) = v45;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0;
      *(v49 + 16) = 0;
    }

    v56 = *(v11 + 144);
    if (*(v11 + 148) <= v56)
    {
      v56 = sub_18194C8AC(v11, 12, v46, v23, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v56 + 1;
      v57 = *(v11 + 136) + 40 * v56;
      *v57 = 12;
      *(v57 + 4) = v46;
      *(v57 + 8) = v23;
      *(v57 + 12) = 0;
      *(v57 + 28) = 0;
      *(v57 + 20) = 0;
      *(v57 + 36) = 0;
    }

    v58 = 0;
    a5[18] = v56;
    *(a5 + 65) = 9;
    goto LABEL_142;
  }

  v31 = v21 >> a4;
  v441 = v31 & 1;
  v32 = *(v13 + 48);
  if ((v32 & 0x400) != 0)
  {
    v50 = *(v13 + 52);
    v51 = v50 + 2;
    v52 = *(v12 + 44);
    v53 = __OFSUB__(v52, v50 + 2);
    v54 = v52 - (v50 + 2);
    if (v54 < 0 != v53)
    {
      v55 = *(v12 + 60);
      v435 = v55 + 1;
      *(v12 + 60) = v55 + v51;
    }

    else
    {
      v435 = *(v12 + 48);
      *(v12 + 44) = v54;
      *(v12 + 48) = v435 + v51;
    }

    v438 = a5[3];
    if (v50)
    {
      v62 = 0;
      v63 = v435 + 2;
      do
      {
        v64 = *(*(v13 + 64) + 8 * v62);
        if (v64)
        {
          if (*(v64 + 20))
          {
            v68 = 1 << v62;
            if (v62 >= 0x20)
            {
              v68 = 0;
            }

            if ((*(v13 + 40) & v68) != 0)
            {
              v69 = *(v12 + 56);
              v70 = vadd_s32(v69, 0x100000001);
              v446 = v70.u32[1];
              *(v12 + 56) = v70;
              v71 = v69.u32[0];
              sub_18195B754();
              v72 = *(v11 + 144);
              if (*(v11 + 148) <= v72)
              {
                sub_18194C8AC(v11, 175, v71, v63 + v62, v446, a6, a7, a8);
              }

              else
              {
                *(v11 + 144) = v72 + 1;
                v73 = *(v11 + 136) + 40 * v72;
                *v73 = 175;
                *(v73 + 4) = v71;
                *(v73 + 8) = v63 + v62;
                *(v73 + 12) = v446;
                *(v73 + 24) = 0;
                *(v73 + 32) = 0;
                *(v73 + 16) = 0;
              }
            }

            else
            {
              sub_1818D0C40(v12, v64, a5, v62, v441, v63 + v62, a7, a8);
              v438 = a5[4];
            }
          }

          else
          {
            sub_181979840(v12, *(*v64 + 24), v63 + v62, 1, a5, a6, a7, a8);
            if (*(v64 + 23) == 74 && (*(v13 + 28) & 2) != 0)
            {
              v65 = *(*(a3 + 32) + 12);
              v66 = *(v11 + 144);
              if (*(v11 + 148) <= v66)
              {
                sub_18194C8AC(v11, 71, 0, v65, 0, a6, a7, a8);
              }

              else
              {
                *(v11 + 144) = v66 + 1;
                v67 = *(v11 + 136) + 40 * v66;
                *v67 = 71;
                *(v67 + 8) = v65;
                *(v67 + 12) = 0;
                *(v67 + 28) = 0;
                *(v67 + 20) = 0;
                *(v67 + 36) = 0;
              }
            }
          }
        }

        ++v62;
      }

      while (v50 != v62);
    }

    v74 = *(v13 + 24);
    v75 = *(v11 + 144);
    if (*(v11 + 148) <= v75)
    {
      v77 = v435;
      sub_18194C8AC(v11, 71, v74, v435, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v75 + 1;
      v76 = *(v11 + 136) + 40 * v75;
      *v76 = 71;
      *(v76 + 4) = v74;
      v77 = v435;
      *(v76 + 8) = v435;
      *(v76 + 12) = 0;
      *(v76 + 28) = 0;
      *(v76 + 20) = 0;
      *(v76 + 36) = 0;
    }

    v78 = (v77 + 1);
    v79 = *(v11 + 144);
    if (*(v11 + 148) <= v79)
    {
      sub_18194C8AC(v11, 71, v50, v78, 0, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v79 + 1;
      v80 = *(v11 + 136) + 40 * v79;
      *v80 = 71;
      *(v80 + 4) = v50;
      *(v80 + 8) = v78;
      *(v80 + 12) = 0;
      *(v80 + 28) = 0;
      *(v80 + 20) = 0;
      *(v80 + 36) = 0;
    }

    v81 = *(v13 + 32);
    if (*(v13 + 28))
    {
      v82 = -6;
    }

    else
    {
      v82 = -1;
    }

    v83 = *(v11 + 144);
    if (*(v11 + 148) <= v83)
    {
      v83 = sub_18194C8AC(v11, 6, v449, v438, v77, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v83 + 1;
      v84 = *(v11 + 136) + 40 * v83;
      *v84 = 6;
      *(v84 + 4) = v449;
      *(v84 + 8) = v438;
      *(v84 + 12) = v77;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0;
      *(v84 + 16) = 0;
    }

    if (*(*v11 + 103))
    {
      sub_1818A3B68(*v11, v82, v81);
    }

    else
    {
      if (v83 < 0)
      {
        v83 = *(v11 + 144) - 1;
      }

      v85 = *(v11 + 136) + 40 * v83;
      if (*(v85 + 1))
      {
        sub_18194CB90(v11, v85, v81, v82);
      }

      else if (v81)
      {
        *(v85 + 16) = v81;
        *(v85 + 1) = v82;
      }
    }

    *(v13 + 28) &= ~1u;
    if (*(v448 + 103))
    {
      *(v13 + 32) = 0;
    }

    a5[17] = v449;
    if (*(a3 + 66))
    {
      v91 = -69;
    }

    else
    {
      v91 = 63;
    }

    *(a5 + 65) = v91;
    a5[18] = *(v11 + 144);
    if (!v50)
    {
      v58 = 0;
LABEL_141:
      v48 = v455;
      goto LABEL_142;
    }

    v92 = 0;
    v443 = v77 + 2;
    do
    {
      v93 = *(*(v13 + 64) + 8 * v92);
      if (v92 <= 0xF && ((*(v13 + 30) >> v92) & 1) != 0)
      {
        sub_1818E1F5C(a5, v93);
        goto LABEL_105;
      }

      if (*(v93 + 20))
      {
        v94 = 1 << v92;
        if (v92 >= 0x20)
        {
          v94 = 0;
        }

        if ((*(v13 + 40) & v94) == 0 && !*(v448 + 103))
        {
          v95 = a5[20];
          if (v95 < 1)
          {
            goto LABEL_126;
          }

          v96 = (v443 + v92);
          v97 = 4;
          while (1)
          {
            v98 = &byte_1EA831A58;
            if (!*(*v11 + 103))
            {
              v98 = (*(v11 + 136) + 40 * *(*(a5 + 11) + v97));
            }

            v99 = *v98;
            if (v99 == 135)
            {
              if (*(v98 + 2) == v96)
              {
                v100 = *(v98 + 3);
LABEL_123:
                v101 = *(v98 + 1);
                v102 = *(v11 + 144);
                if (*(v11 + 148) <= v102)
                {
                  v104 = *(*(v13 + 64) + 8 * v92);
                  sub_18194C8AC(v11, *v98, v101, v96, v100, a6, a7, a8);
                  v93 = v104;
                }

                else
                {
                  *(v11 + 144) = v102 + 1;
                  v103 = *(v11 + 136) + 40 * v102;
                  *v103 = v99;
                  *(v103 + 2) = 0;
                  *(v103 + 4) = v101;
                  *(v103 + 8) = v96;
                  *(v103 + 12) = v100;
                  *(v103 + 1) = 0;
                  *(v103 + 24) = 0;
                  *(v103 + 32) = 0;
                  *(v103 + 16) = 0;
                }

LABEL_126:
                v105 = v93;
                v106 = sub_181929E8C(*v454, 0x50uLL, 0x1032040B79D87BDLL);
                v110 = v106;
                if (v106)
                {
                  *(v106 + 32) = 0u;
                  *(v106 + 48) = 0u;
                  *(v106 + 64) = 0u;
                  *v106 = 0u;
                  *(v106 + 16) = 0u;
                  *v106 = 54;
                  *(v106 + 52) = -1;
                  *(v106 + 40) = 1;
                  v111 = v105;
                  if (*(*v454 + 148) <= 0)
                  {
                    sub_181910730(v454, "Expression tree is too large (maximum depth %d)", v107, v108, v109, a6, a7, a8, *(*v454 + 148));
                    v111 = v105;
                  }

                  if (!*(v448 + 103))
                  {
LABEL_132:
                    v112 = v111[9];
                    v113 = *(*v111 + 16);
                    v53 = __OFSUB__(v112, 1);
                    v114 = v112 - 1;
                    if (v114 < 0 == v53)
                    {
                      v113 = *(*(v113 + 32) + 24 * v114 + 8);
                    }

                    *(v110 + 16) = v113;
                    v115 = sub_181929E8C(v448, 0x51uLL, 0x1032040B79D87BDLL);
                    if (v115)
                    {
                      *(v115 + 32) = 0u;
                      *(v115 + 48) = 0u;
                      *(v115 + 64) = 0u;
                      *v115 = 0u;
                      *(v115 + 16) = 0u;
                      *v115 = -80;
                      *(v115 + 52) = -1;
                      *(v115 + 80) = 0;
                      *(v115 + 8) = v115 + 80;
                      *(v115 + 40) = 1;
                      *(v110 + 24) = v115;
                      *(v115 + 44) = v443 + v92;
                      sub_1818DD640(v454, v110);
                    }

                    else
                    {
                      *(v110 + 24) = 0;
                    }

                    *(v110 + 16) = 0;
                  }

                  sub_1819439E0(v448, v110);
                }

                else
                {
                  v111 = v105;
                  if (!*(v448 + 103))
                  {
                    goto LABEL_132;
                  }
                }

                break;
              }
            }

            else if (v99 == 94 && *(v98 + 3) == v96)
            {
              v100 = (v443 + v92);
              v96 = *(v98 + 2);
              goto LABEL_123;
            }

            v97 += 20;
            if (!--v95)
            {
              goto LABEL_126;
            }
          }
        }
      }

LABEL_105:
      ++v92;
    }

    while (v92 != v50);
    v58 = 0;
    v48 = v455;
    goto LABEL_142;
  }

  v33 = *(a3 + 856 + 120 * v27 + 12);
  if ((v32 & 0x100) != 0 && (v32 & 5) != 0)
  {
    v34 = **(v13 + 64);
    v35 = *(v12 + 60);
    v36 = v35 + 1;
    v37 = v35 == -1;
    *(v12 + 60) = v35 + 1;
    v38 = sub_1818D0C40(v12, v34, a5, 0, v441, (v35 + 1), a7, a8);
    v39 = v38;
    if (!v37 && v38 != v36)
    {
      v40 = *(v12 + 31);
      if (v40 <= 7)
      {
        *(v12 + 31) = v40 + 1;
        *(v12 + 4 * v40 + 184) = v36;
      }
    }

    v41 = a5[4];
    if (a5[13])
    {
      v42 = *(v11 + 144);
      if (*(v11 + 148) <= v42)
      {
        sub_18194C8AC(v11, 13, v38, a5[4], 0, a6, a7, a8);
      }

      else
      {
        *(v11 + 144) = v42 + 1;
        v43 = *(v11 + 136) + 40 * v42;
        *v43 = 13;
        *(v43 + 4) = v38;
        *(v43 + 8) = v41;
        *(v43 + 12) = 0;
        *(v43 + 28) = 0;
        *(v43 + 20) = 0;
        *(v43 + 36) = 0;
      }

      v86 = a5[13];
      v87 = *(v11 + 144);
      if (*(v11 + 148) <= v87)
      {
        sub_18194CAFC(v11, 64, v86, v41, v39, 1, a7, a8);
      }

      else
      {
        *(v11 + 144) = v87 + 1;
        v88 = *(v11 + 136) + 40 * v87;
        *v88 = 64832;
        *(v88 + 4) = v86;
        *(v88 + 8) = v41;
        *(v88 + 12) = v39;
        *(v88 + 16) = 1;
        *(v88 + 24) = 0;
        *(v88 + 32) = 0;
      }

      sub_181979B58(v12, a3, a4, v41, a6, a6, a7, a8);
    }

    v89 = *(v11 + 144);
    if (*(v11 + 148) <= v89)
    {
      sub_18194C8AC(v11, 30, v449, v41, v39, a6, a7, a8);
    }

    else
    {
      *(v11 + 144) = v89 + 1;
      v90 = *(v11 + 136) + 40 * v89;
      *v90 = 30;
      *(v90 + 4) = v449;
      *(v90 + 8) = v41;
      *(v90 + 12) = v39;
      *(v90 + 24) = 0;
      *(v90 + 32) = 0;
      *(v90 + 16) = 0;
    }

    v48 = v455;
    v58 = 0;
    *(a5 + 65) = -69;
    goto LABEL_142;
  }

  if ((~v32 & 0x102) == 0)
  {
    if ((v32 & 0x20) != 0)
    {
      v59 = **(v13 + 64);
      v60 = 1;
      if ((v32 & 0x10) != 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v59 = 0;
      v60 = 0;
      if ((v32 & 0x10) != 0)
      {
LABEL_45:
        v61 = *(*(v13 + 64) + 8 * v60);
        goto LABEL_277;
      }
    }

    v61 = 0;
LABEL_277:
    if (v31)
    {
      v196 = v61;
    }

    else
    {
      v196 = v59;
    }

    if (v31)
    {
      v197 = v59;
    }

    else
    {
      v197 = v61;
    }

    if (!v196)
    {
      if (v31)
      {
        v209 = 32;
      }

      else
      {
        v209 = 36;
      }

      v210 = *(v11 + 144);
      if (*(v11 + 148) <= v210)
      {
        v212 = v449;
        sub_18194C8AC(v11, v209, v449, v33, 0, a6, a7, a8);
      }

      else
      {
        *(v11 + 144) = v210 + 1;
        v211 = *(v11 + 136) + 40 * v210;
        *v211 = v209;
        *(v211 + 2) = 0;
        v212 = v449;
        *(v211 + 4) = v449;
        *(v211 + 8) = v33;
        *(v211 + 1) = 0;
        *(v211 + 12) = 0;
        *(v211 + 28) = 0;
        *(v211 + 20) = 0;
        *(v211 + 36) = 0;
      }

LABEL_363:
      if (v197)
      {
        v269 = *v197;
        v270 = (*(v12 + 60) + 1);
        *(v12 + 60) = v270;
        sub_181979840(v12, v269[3], v270, 1, a5, a6, a7, a8);
        v271 = v269[3];
        v272 = *v271;
        v273 = v272;
        if (v272 == 176)
        {
          v273 = v271[2];
        }

        v274 = v269[3];
        if (v273 != 177)
        {
          if (v273 != 139)
          {
LABEL_370:
            v275 = *v269;
            if (v275 == 57 || v275 == 55)
            {
              v276 = v441 == 0;
              v277 = 56;
              v278 = 58;
              goto LABEL_375;
            }

LABEL_374:
            v276 = v441 == 0;
            v277 = 57;
            v278 = 55;
LABEL_375:
            if (v276)
            {
              v280 = v278;
            }

            else
            {
              v280 = v277;
            }

            if (v272 == 176)
            {
              v272 = v271[2];
            }

            if (v272 != 177)
            {
              if (v272 != 139)
              {
LABEL_384:
                sub_1818E1F5C(a5, v197);
LABEL_385:
                v281 = *(v11 + 144);
                *(a5 + 65) = v441 ^ 0x27;
                a5[17] = v449;
                a5[18] = v281;
                v282 = (*(v12 + 60) + 1);
                *(v12 + 60) = v282;
                if (*(v11 + 148) <= v281)
                {
                  sub_18194C8AC(v11, 135, v449, v282, 0, a6, a7, a8);
                }

                else
                {
                  *(v11 + 144) = v281 + 1;
                  v283 = *(v11 + 136) + 40 * v281;
                  *v283 = 135;
                  *(v283 + 4) = v449;
                  *(v283 + 8) = v282;
                  *(v283 + 12) = 0;
                  *(v283 + 28) = 0;
                  *(v283 + 20) = 0;
                  *(v283 + 36) = 0;
                }

                v284 = *(v11 + 144);
                if (*(v11 + 148) <= v284)
                {
                  sub_18194C8AC(v11, v280, v270, v23, v282, a6, a7, a8);
                }

                else
                {
                  *(v11 + 144) = v284 + 1;
                  v285 = *(v11 + 136) + 40 * v284;
                  *v285 = v280;
                  *(v285 + 2) = 0;
                  *(v285 + 4) = v270;
                  *(v285 + 8) = v23;
                  *(v285 + 12) = v282;
                  *(v285 + 1) = 0;
                  *(v285 + 24) = 0;
                  *(v285 + 32) = 0;
                  *(v285 + 16) = 0;
                }

                v286 = *(v11 + 144);
                v48 = v455;
                v58 = 0;
                if (v286 >= 1)
                {
                  *(*(v11 + 136) + 40 * v286 - 38) = 83;
                }

                goto LABEL_142;
              }

              v271 = *(v271 + 4);
            }

            if (**(v271 + 4) > 1)
            {
              goto LABEL_385;
            }

            goto LABEL_384;
          }

          v274 = *(v271 + 4);
        }

        if (**(v274 + 4) > 1)
        {
          goto LABEL_374;
        }

        goto LABEL_370;
      }

      v58 = 0;
      v279 = *(v11 + 144);
      *(a5 + 65) = v441 ^ 0x27;
      a5[17] = v212;
      a5[18] = v279;
      goto LABEL_141;
    }

    LODWORD(v461) = 0;
    v198 = *v196;
    v199 = *(*v196 + 24);
    v200 = *v199;
    if (v200 == 176)
    {
      v200 = v199[2];
    }

    v201 = *(*v196 + 24);
    if (v200 != 177)
    {
      if (v200 != 139)
      {
        goto LABEL_290;
      }

      v201 = *(v199 + 4);
    }

    if (**(v201 + 32) >= 2)
    {
      if (*(v12 + 31))
      {
        v248 = *(v12 + 31) - 1;
        *(v12 + 31) = v248;
        v202 = *(v12 + 4 * v248 + 184);
      }

      else
      {
        v202 = (*(v12 + 60) + 1);
        *(v12 + 60) = v202;
      }

      LODWORD(v461) = v202;
      sub_181979840(v12, v199, v202, 1, a5, a6, a7, a8);
      v203 = *v198 & 2 | 1;
LABEL_357:
      v264 = byte_181A27B2C[v203];
      v265 = *(v11 + 144);
      v212 = v449;
      if (*(v11 + 148) <= v265)
      {
        sub_18194C8AC(v11, v264, v449, v23, v202, a6, a7, a8);
      }

      else
      {
        *(v11 + 144) = v265 + 1;
        v266 = *(v11 + 136) + 40 * v265;
        *v266 = v264;
        *(v266 + 2) = 0;
        *(v266 + 4) = v449;
        *(v266 + 8) = v23;
        *(v266 + 12) = v202;
        *(v266 + 1) = 0;
        *(v266 + 24) = 0;
        *(v266 + 32) = 0;
        *(v266 + 16) = 0;
      }

      v267 = v461;
      if (v461)
      {
        v268 = *(v12 + 31);
        if (v268 <= 7)
        {
          *(v12 + 31) = v268 + 1;
          *(v12 + 4 * v268 + 184) = v267;
        }
      }

      goto LABEL_363;
    }

LABEL_290:
    v202 = sub_181957E00(v12, v199, &v461);
    sub_1818E1F5C(a5, v196);
    v203 = *v198 - 55;
    goto LABEL_357;
  }

  if ((v32 & 0x200) != 0)
  {
    v204 = *(v13 + 24);
    v205 = *(v13 + 26);
    v428 = *(v13 + 28);
    v461 = 0;
    v206 = *(v13 + 32);
    v444 = a5[2];
    v436 = v204;
    v418 = v205;
    if ((v32 & 0x20) != 0)
    {
      v208 = v204 + 1;
      v207 = *(*(v13 + 64) + 8 * v204);
    }

    else
    {
      v207 = 0;
      v205 = 0;
      v208 = v204;
    }

    v440 = *(v13 + 32);
    if ((v32 & 0x10) == 0)
    {
      v430 = 0;
LABEL_312:
      v237 = 0;
      goto LABEL_313;
    }

    v233 = *(*(v13 + 64) + 8 * v208);
    if (v205 <= v428)
    {
      v205 = v428;
    }

    v430 = v233;
    if ((*(v233 + 18) & 0x100) != 0)
    {
      v234 = (*(v12 + 60) + 1);
      *(v12 + 60) = v234;
      a5[11] = v234;
      sub_1818A2964(v452, 71, 1uLL, v234, 0, a6, a7, a8);
      v206 = v440;
      v235 = *(v452 + 144);
      v236 = a5[11];
      a5[11] = 2 * v236;
      a5[12] = v235;
      a5[11] = v31 & 1 ^ (*(*(v440 + 56) + v436) == 1) | (2 * v236);
    }

    if (v207)
    {
      goto LABEL_312;
    }

    v263 = *(*(v206 + 8) + 2 * v436);
    if (v263 < 0)
    {
      if (v263 != -2)
      {
        goto LABEL_312;
      }
    }

    else if ((*(*(*(v206 + 24) + 8) + 16 * v263 + 8) & 0xF) != 0)
    {
      goto LABEL_312;
    }

    v237 = 1;
LABEL_313:
    if ((*(v13 + 48) & 0x80030) == 0x80000)
    {
      v238 = (*(v454 + 60) + 1);
      *(v454 + 60) = v238;
      a5[9] = v238;
      if (*a5)
      {
        sub_1818A2964(v452, 71, 0, v238, 0, a6, a7, a8);
        v206 = v440;
      }

      v239 = *(v454 + 72) - 1;
      *(v454 + 72) = v239;
      a5[10] = v239;
      v205 = 1;
      v237 = 1;
    }

    else
    {
      LODWORD(v238) = 0;
    }

    if (v436 >= *(v206 + 96) || (*(*(v206 + 56) + v436) != 0) == (v31 & 1))
    {
      v413 = 1;
      v241 = v207;
    }

    else
    {
      v240 = v418;
      v413 = v237 == 0;
      v418 = v428;
      v428 = v240;
      v241 = v430;
      v430 = v207;
      v237 = 0;
    }

    if (a4 >= 1 && (*(v13 + 50) & 0x10) != 0)
    {
      sub_1818A2964(v452, 136, v444, 0, 0, a6, a7, a8);
    }

    v433 = sub_181979DC8(v454, a5, v441, v205, &v461);
    v246 = 0;
    v426 = v461;
    if (v461)
    {
      v247 = v436;
      if (v428)
      {
        v246 = sub_1818C9A34(v448, (v461 + v436));
      }
    }

    else
    {
      v247 = v436;
    }

    v251 = 4;
    if (v238)
    {
      v251 = 10;
    }

    v424 = a5[v251];
    if (v241)
    {
      v252 = (*(v241 + 20) & 0x28) != 0;
    }

    else
    {
      v252 = 1;
    }

    v416 = v246;
    v421 = v241;
    if (v430)
    {
      v253 = (*(v430 + 20) & 0x28) != 0;
    }

    else
    {
      v253 = 1;
    }

    v414 = v253;
    v254 = v247 != 0;
    v431 = v238;
    if (!v421)
    {
      if (v237)
      {
        v259 = v452;
        sub_1818A2964(v452, 75, 0, v433 + v247, 0, v243, v244, v245);
        v258 = 0;
        v247 = (v247 + 1);
        v254 = 1;
        v261 = 1;
        v262 = v441;
      }

      else
      {
        v258 = v252;
        v262 = v441;
        v261 = v431;
        v259 = v452;
        if (v431)
        {
          sub_1818A2964(v452, 75, 0, v433 + v247, 0, v243, v244, v245);
          v261 = 0;
          v247 = (v247 + 1);
          v254 = 1;
        }
      }

      v257 = v426;
LABEL_518:
      v420 = v261;
      sub_18197A62C(v454, v433, v247 - v261, v257, v242, v243, v244, v245);
      if (*(v13 + 54) && v247 == *(v13 + 54))
      {
        v423 = 0;
        v354 = v433;
      }

      else
      {
        if (v431)
        {
          sub_1818A2964(v259, 71, 1uLL, v431, 0, a6, a7, a8);
        }

        v355 = a5[13];
        if (v355)
        {
          sub_181910A18(v259, 64, v355, v424, v433, v436, a7, a8);
          sub_181979B58(v454, a3, a4, v424, a6, v356, v357, v358);
        }

        v359 = 0;
        if (v254)
        {
          v360 = 4;
        }

        else
        {
          v360 = 0;
        }

        v361 = v360 | (2 * v258) | v262;
        v362 = byte_181A245DC[v361];
        if (v361 == 6)
        {
          v354 = v433;
          if ((*(v13 + 48) & 0x100000) != 0)
          {
            v359 = sub_1818A2964(v452, 124, ((**(v440 + 16) + 9) / 10), 0, 0, a6, a7, a8);
            if (v421 | v430)
            {
              v363 = *(v452 + 144);
              if (v363 >= 1)
              {
                *(*(v452 + 136) + 40 * v363 - 38) = 1;
              }

              v364 = v363 + 1;
              if (*(*v452 + 103))
              {
                v365 = &byte_1EA831A58;
              }

              else
              {
                v365 = (*(v452 + 136) + 40 * v359);
              }

              v359 = 0;
              *(v365 + 2) = v364;
            }
          }
        }

        else
        {
          v354 = v433;
        }

        v423 = v359;
        v259 = v452;
        sub_181910A18(v452, v362, v444, v424, v354, v247, a7, a8);
        if (v431)
        {
          sub_1818A2964(v452, 9, 0, (*(v452 + 144) + 2), 0, a6, a7, a8);
          if (v247 >= 2)
          {
            v368 = 6;
          }

          else
          {
            v368 = 2;
          }

          v262 = v441;
          sub_181910A18(v452, byte_181A245DC[v368 | v441], v444, v424, v354, (v247 - v258), v366, v367);
        }

        else
        {
          v262 = v441;
        }

        v257 = v426;
      }

      if (!v430)
      {
        if (v413)
        {
          v372 = v436;
          v373 = v424;
        }

        else
        {
          v373 = v424;
          if (!v431)
          {
            sub_1818A2964(v259, 75, 0, (v354 + v436), 0, a6, a7, a8);
            v414 = 0;
          }

          v372 = (v436 + 1);
        }

        v374 = v416;
        goto LABEL_571;
      }

      v369 = *(*v430 + 24);
      sub_181979840(v454, v369, (v354 + v436), v428, v353, a6, a7, a8);
      v370 = *(v430 + 18);
      if ((v370 & 0x100) != 0)
      {
        if (*(*v259 + 103))
        {
          v371 = &byte_1EA831A58;
        }

        else
        {
          v371 = (*(v259 + 136) + 40 * *(v259 + 144) - 40);
        }

        v375 = a5[11];
        *(v371 + 3) = v375 >> 1;
        *(v371 + 1) = v375 & 1;
      }

      v354 = v433;
      v373 = v424;
      if ((v370 & 0x80) == 0 && sub_18195B540(v369))
      {
        sub_1818A2964(v259, 51, v433 + v436, v424, 0, a6, a7, a8);
      }

      if (v416)
      {
        sub_18197A444(v369, v428, v416);
        sub_18197A62C(v454, v433 + v436, v428, v416, v376, v377, v378, v379);
      }

      v372 = v428 + v436;
      v380 = *v369;
      if (v380 == 176)
      {
        v380 = v369[2];
      }

      v374 = v416;
      v257 = v426;
      if (v380 != 177)
      {
        if (v380 != 139)
        {
          goto LABEL_568;
        }

        v369 = *(v369 + 4);
      }

      if (**(v369 + 4) > 1)
      {
        v414 = 1;
        goto LABEL_570;
      }

LABEL_568:
      sub_1818E1F5C(a5, v430);
LABEL_570:
      v262 = v441;
LABEL_571:
      if (v257)
      {
        sub_181939EC8(v448, v257);
      }

      if (v374)
      {
        sub_181939EC8(v448, v374);
      }

      v381 = *(v259 + 144);
      a5[18] = v381;
      if (v372)
      {
        if (v431)
        {
          sub_1818A2964(v259, 17, v431, v381 + 3, 0, a6, a7, a8);
        }

        sub_181910A18(v259, asc_181A245E4[v414 | (2 * v262)], v444, v373, v354, v372, a7, a8);
        if (v423)
        {
          if (*(*v259 + 103))
          {
            v382 = &byte_1EA831A58;
          }

          else
          {
            v382 = (*(v259 + 136) + 40 * v423);
          }

          *(v382 + 2) = *(v259 + 144);
        }
      }

      if (v431)
      {
        sub_1818A2964(v259, 16, v431, (*(v259 + 144) + 2), 0, a6, a7, a8);
        sub_181910A18(v259, asc_181A245E4[v420 | (2 * v262)], v444, v373, v354, (v372 + v420), v383, v384);
      }

      v385 = *(v13 + 48);
      v48 = v455;
      v386 = v444;
      if ((v385 & 0x40000) != 0)
      {
        sub_1818A2964(v259, 125, v444, v436, v436, a6, a7, a8);
        v385 = *(v13 + 48);
      }

      v387 = v440;
      if ((v385 & 0x40) != 0 && (*(a3 + 60) & 0x1020) == 0)
      {
        v389 = 1;
      }

      else
      {
        v388 = *(v440 + 24);
        if ((*(v388 + 48) & 0x80) != 0)
        {
          if (v449 == v444)
          {
            v389 = 0;
          }

          else
          {
            v390 = v388 + 16;
            do
            {
              v391 = *v390;
              v392 = *(*v390 + 99) & 3;
              v390 = *v390 + 40;
            }

            while (v392 != 2);
            v396 = sub_18195883C(v454, *(v391 + 94));
            if (*(v391 + 94))
            {
              v397 = 0;
              v398 = v440;
              do
              {
                if (*(v398 + 96))
                {
                  v400 = 0;
                  while (*(*(v391 + 8) + 2 * v397) != *(*(v398 + 8) + 2 * v400))
                  {
                    if (*(v398 + 96) == ++v400)
                    {
                      goto LABEL_603;
                    }
                  }
                }

                else
                {
LABEL_603:
                  v400 = 0xFFFFFFFFLL;
                }

                v401 = v397 + v396;
                v402 = *(v452 + 144);
                if (*(v452 + 148) > v402)
                {
                  *(v452 + 144) = v402 + 1;
                  v399 = *(v452 + 136) + 40 * v402;
                  *v399 = 94;
                  *(v399 + 4) = v444;
                  *(v399 + 8) = v400;
                  *(v399 + 12) = v401;
                  *(v399 + 24) = 0;
                  *(v399 + 32) = 0;
                  *(v399 + 16) = 0;
                }

                else
                {
                  sub_18194C8AC(v452, 94, v444, v400, v401, v393, v394, v395);
                  v398 = v440;
                }

                ++v397;
                v393 = *(v391 + 94);
              }

              while (v397 < v393);
              v48 = v455;
              v386 = v444;
            }

            else
            {
              v393 = 0;
            }

            sub_181910A18(v452, 28, v449, v453, v396, v393, v394, v395);
            v389 = 0;
            v387 = v440;
          }
        }

        else
        {
          sub_18197A798(a3, v440, v449, v444, v353, a6, a7, a8);
          v387 = v440;
          v389 = 0;
        }
      }

      if (!*a5)
      {
        v406 = *(v387 + 72);
        if (v406)
        {
          if (!*(a5 + 7))
          {
            sub_18197AB8C(v406, v449, a3 + 104);
            v387 = v440;
          }
        }
      }

      v403 = *(v13 + 48);
      if ((v403 & 0x1000) != 0 || !v431 && a5[20] && (v404 = sub_18197AC50(v13), v387 = v440, v404))
      {
        v405 = -69;
      }

      else if (v262)
      {
        v405 = 38;
      }

      else
      {
        v405 = 39;
      }

      *(a5 + 65) = v405;
      a5[17] = v386;
      *(a5 + 66) = BYTE2(v403) & 1;
      if ((v403 & 0xF) == 0)
      {
        *(a5 + 67) = 1;
      }

      if (v389)
      {
        v58 = 0;
      }

      else
      {
        v58 = v387;
      }

      v11 = v452;
      goto LABEL_142;
    }

    v255 = *(*v421 + 24);
    sub_181979840(v454, v255, v433 + v247, v418, v242, v243, v244, v245);
    v256 = *(v421 + 18);
    v257 = v426;
    v258 = v252;
    v259 = v452;
    if ((v256 & 0x100) != 0)
    {
      if (*(*v452 + 103))
      {
        v260 = &byte_1EA831A58;
      }

      else
      {
        v260 = (*(v452 + 136) + 40 * *(v452 + 144) - 40);
      }

      v287 = a5[11];
      *(v260 + 3) = v287 >> 1;
      *(v260 + 1) = v287 & 1;
    }

    if ((v256 & 0x80) == 0 && sub_18195B540(v255))
    {
      sub_1818A2964(v452, 51, v433 + v247, v424, 0, v243, v244, v245);
    }

    if (v426)
    {
      sub_18197A444(v255, v418, &v426[v247]);
    }

    v247 = v418 + v247;
    v288 = *v255;
    if (v288 == 176)
    {
      v288 = v255[2];
    }

    if (v288 != 177)
    {
      if (v288 != 139)
      {
        goto LABEL_408;
      }

      v255 = *(v255 + 4);
    }

    if (**(v255 + 4) > 1)
    {
      v261 = 0;
      v258 = 1;
      goto LABEL_410;
    }

LABEL_408:
    sub_1818E1F5C(a5, v421);
    v261 = 0;
LABEL_410:
    v254 = 1;
    v262 = v441;
    goto LABEL_518;
  }

  if ((v32 & 0x2000) == 0)
  {
    if ((v30 & 0x80) != 0)
    {
      v58 = 0;
      *(a5 + 65) = -69;
    }

    else
    {
      *(a5 + 65) = asc_181A245E4[(v31 & 1) + 4];
      a5[17] = v449;
      v58 = 0;
      a5[18] = sub_1818A2964(v11, asc_181A245E4[(v31 & 1) + 6], v449, v33, 0, a6, a7, a8) + 1;
      *(a5 + 67) = 1;
    }

    goto LABEL_141;
  }

  v412 = *(v12 + 56);
  v213 = vadd_s32(*(v12 + 56), 0x100000001);
  *(v12 + 56) = v213;
  v429 = *(v12 + 72) - 1;
  *(v12 + 72) = v429;
  v439 = *(v455 + 24);
  v214 = **(v13 + 64);
  v215 = *(v214 + 32);
  *(a5 + 65) = 67;
  a5[17] = v213.u32[1];
  v216 = *(a3 + 64);
  if (v216 < 2)
  {
    v219 = *(a3 + 8);
    v48 = v455;
LABEL_333:
    v427 = v213.u32[1];
    if ((*(a3 + 60) & 0x10) != 0)
    {
      v419 = 0;
      v415 = 0;
    }

    else
    {
      if ((*(v439 + 48) & 0x80) != 0)
      {
        for (i = *(v439 + 16); i; i = *(i + 40))
        {
          if ((*(i + 99) & 3) == 2)
          {
            break;
          }
        }

        v290 = *(v12 + 56);
        *(v12 + 56) = v290 + 1;
        v419 = v290;
        sub_1818A2964(v11, 117, v290, *(i + 94), 0, a6, a7, a8);
        sub_181957040(v12, i);
      }

      else
      {
        v249 = *(v12 + 60);
        v250 = (v249 + 1);
        *(v12 + 60) = v250;
        v419 = v249 + 1;
        sub_1818A2964(v11, 75, 0, v250, 0, a6, a7, a8);
      }

      v415 = *(v12 + 60) + 1;
      *(v12 + 60) = v415;
    }

    v409 = sub_1818A2964(v11, 71, 0, v427, 0, a6, a7, a8);
    v291 = *(a3 + 124);
    if (v291 <= 1)
    {
      v432 = 0;
    }

    else
    {
      v292 = v219;
      v293 = 0;
      v294 = 0;
      v295 = 0;
      do
      {
        v296 = *(a3 + 136);
        v297 = v296 + v293;
        if (v296 + v293 != v214 && (*(v297 + 18) & 0x8006) == 0 && (*(v296 + v293 + 20) & 0x3FFF) != 0 && (*(*v297 + 6) & 0x40) == 0)
        {
          v298 = sub_1818C7FEC(v448, *v297, 0, 0);
          v295 = sub_181951CA4(v12, v295, v298);
          v291 = *(a3 + 124);
        }

        ++v294;
        v293 += 56;
      }

      while (v294 < v291);
      if (v295)
      {
        v432 = sub_18194F098(v12, 44, 0, v295);
      }

      else
      {
        v432 = 0;
      }

      v11 = v452;
      v219 = v292;
    }

    v299 = 1;
    sub_18195AD8C(v12, 1, "MULTI-INDEX OR");
    if (*(v215 + 20) >= 1)
    {
      v408 = v214;
      v303 = 0;
      v437 = 0;
      v442 = 0;
      v407 = v12 + 184;
      v304 = v449;
      v434 = v215;
      v425 = v219;
      while (1)
      {
        v305 = *(v215 + 32) + 56 * v303;
        if (*(v305 + 28) == v304 || (*(v305 + 20) & 0x400) != 0)
        {
          if (*v305)
          {
            v306 = sub_1818C7FEC(v448, *v305, 0, 0);
            v307 = v306;
            if (!*(v448 + 103))
            {
              goto LABEL_442;
            }

            if (v306)
            {
              sub_1819439E0(v448, v306);
            }
          }

          else if (!*(v448 + 103))
          {
            v307 = 0;
LABEL_442:
            v308 = v307;
            v309 = v439;
            if (v432)
            {
              *(v432 + 16) = v307;
              v308 = v432;
            }

            v445 = v307;
            sub_18195AD8C(v12, 1, "INDEX %d", v303 + 1);
            v310 = sub_1818B507C(v12, v219, v308, 0, 0, 0, 32, v412);
            if (v310)
            {
              v312 = v310;
              v313 = sub_18196E388(v12, v219, v310 + 856, 0, v311, v300, v301, v302);
              sub_1819710AC(v11, v219, v312 + 856, v313);
              v321 = 0;
              if ((*(a3 + 60) & 0x10) != 0)
              {
                goto LABEL_451;
              }

              if (v303 == *(v434 + 20) - 1)
              {
                v322 = 0xFFFFFFFFLL;
              }

              else
              {
                v322 = v303;
              }

              v323 = v439 + 16;
              if ((*(v439 + 48) & 0x80) == 0)
              {
                sub_1818A2964(v11, 135, v449, v415, 0, v318, v319, v320);
                v321 = sub_181910A18(v11, 47, v419, 0, v415, v322, v324, v325);
                goto LABEL_451;
              }

              do
              {
                v328 = *v323;
                v329 = *(*v323 + 99) & 3;
                v323 = *v323 + 40;
              }

              while (v329 != 2);
              v410 = v322;
              v411 = v312;
              v330 = *(v328 + 94);
              v422 = sub_18195883C(v12, *(v328 + 94));
              v417 = v330;
              if (v330)
              {
                v331 = v11;
                v332 = 0;
                v333 = 2 * v330;
                v334 = v422;
                do
                {
                  sub_181959FA4(v331, v439, v449, *(*(v328 + 8) + v332), v334, v318, v319, v320);
                  v334 = (v334 + 1);
                  v332 += 2;
                }

                while (v333 != v332);
              }

              if (v410)
              {
                v11 = v452;
                v335 = v417;
                v321 = sub_181910A18(v452, 29, v419, 0, v422, v417, v319, v320);
                v12 = v454;
                v309 = v439;
                v312 = v411;
                if (v410 < 0)
                {
LABEL_490:
                  if (v335 == 1)
                  {
                    if (v422)
                    {
                      v347 = *(v12 + 31);
                      if (v347 <= 7)
                      {
                        *(v12 + 31) = v347 + 1;
                        *(v407 + 4 * v347) = v422;
                      }
                    }
                  }

                  else if (*(v12 + 44) < v335)
                  {
                    *(v12 + 44) = v335;
                    *(v12 + 48) = v422;
                  }

LABEL_451:
                  v326 = *(v11 + 144);
                  if (*(v11 + 148) <= v326)
                  {
                    sub_18194C8AC(v11, 10, v427, v429, 0, v318, v319, v320);
                  }

                  else
                  {
                    *(v11 + 144) = v326 + 1;
                    v327 = *(v11 + 136) + 40 * v326;
                    *v327 = 10;
                    *(v327 + 4) = v427;
                    *(v327 + 8) = v429;
                    *(v327 + 12) = 0;
                    *(v327 + 28) = 0;
                    *(v327 + 20) = 0;
                    *(v327 + 36) = 0;
                  }

                  if (v321)
                  {
                    v338 = &byte_1EA831A58;
                    if (!*(*v11 + 103))
                    {
                      v338 = (*(v11 + 136) + 40 * v321);
                    }

                    *(v338 + 2) = *(v11 + 144);
                  }

                  v339 = v437;
                  if ((*(v312 + 68) & 2) != 0)
                  {
                    v339 = 1;
                  }

                  v437 = v339;
                  v340 = *(v312 + 952);
                  if ((*(v340 + 49) & 2) != 0)
                  {
                    v336 = *(v340 + 32);
                    v219 = v425;
                    if (v303 && v336 != v442 || (*(v309 + 48) & 0x80) != 0 && (*(v336 + 99) & 3) == 2)
                    {
                      v336 = 0;
                    }
                  }

                  else
                  {
                    v336 = 0;
                    v219 = v425;
                  }

                  v215 = v434;
                  if (*(v312 + 68))
                  {
                    *(a3 + 68) |= 1u;
                  }

                  sub_1818B9E4C(v312, v314, v315, v316, v317, v318, v319, v320);
                  v341 = *(v12 + 312);
                  if (v341)
                  {
                    v342 = *(v12 + 16);
                    v343 = &byte_1EA831A58;
                    v48 = v455;
                    v337 = v445;
                    if (!*(*v342 + 103))
                    {
                      v343 = (v342[17] + 40 * v341);
                    }

                    v341 = *(v343 + 2);
                  }

                  else
                  {
                    v48 = v455;
                    v337 = v445;
                  }

                  *(v12 + 312) = v341;
LABEL_483:
                  if (v337)
                  {
                    sub_1819439E0(v448, v337);
                  }

                  v442 = v336;
                  v304 = v449;
                  goto LABEL_433;
                }
              }

              else
              {
                v321 = 0;
                v12 = v454;
                v11 = v452;
                v312 = v411;
                v335 = v417;
              }

              sub_1818A2964(v11, 97, v422, v335, v415, v318, v319, v320);
              LODWORD(v335) = v417;
              sub_181910A18(v11, 138, v419, v415, v422, v417, v344, v345);
              if (v410)
              {
                v346 = *(v11 + 144);
                if (v346 >= 1)
                {
                  *(*(v11 + 136) + 40 * v346 - 38) = 16;
                }
              }

              v309 = v439;
              goto LABEL_490;
            }

            v336 = v442;
            v48 = v455;
            v215 = v434;
            v337 = v445;
            goto LABEL_483;
          }
        }

LABEL_433:
        if (++v303 >= *(v215 + 20))
        {
          v299 = v437 == 0;
          v214 = v408;
          v348 = v442;
          goto LABEL_498;
        }
      }
    }

    v348 = 0;
LABEL_498:
    v349 = *(v12 + 312);
    if (v349)
    {
      v350 = *(v12 + 16);
      if (*(*v350 + 103))
      {
        v351 = &byte_1EA831A58;
      }

      else
      {
        v351 = (v350[17] + 40 * v349);
      }

      v349 = *(v351 + 2);
    }

    *(v12 + 312) = v349;
    *(a5 + 10) = v348;
    if (v348)
    {
      a5[2] = v412;
    }

    if (v432)
    {
      *(v432 + 16) = 0;
      sub_1819439E0(v448, v432);
    }

    if (*(*v11 + 103))
    {
      v352 = &byte_1EA831A58;
    }

    else
    {
      v352 = (*(v11 + 136) + 40 * v409);
    }

    *(v352 + 1) = *(v11 + 144);
    sub_1818A2964(v11, 9, 0, a5[3], 0, v300, v301, v302);
    sub_181958CD8(v11, v429);
    a5[18] = *(v11 + 144);
    if (*(a3 + 64) >= 2u)
    {
      sub_181929C84(v448, v219);
    }

    if (v299)
    {
      sub_1818E1F5C(a5, v214);
    }

    v58 = 0;
LABEL_142:
    a5[28] = *(v11 + 144);
    if (v58)
    {
      v116 = 1;
    }

    else
    {
      v116 = 2;
    }

LABEL_146:
    v117 = *(a3 + 124);
    if (v117 >= 1)
    {
      v118 = 0;
      v119 = *(a3 + 136);
      while (1)
      {
        v120 = *(v119 + 18);
        if ((v120 & 6) == 0)
        {
          v121 = *(a5 + 13);
          if ((v121 & *(v119 + 48)) != 0)
          {
            *(a3 + 68) |= 2u;
          }

          else
          {
            v122 = *v119;
            if ((*(v48 + 32) & 0x58) != 0)
            {
              v123 = *(v122 + 4);
              if ((v123 & 3) == 0 || (*(v48 + 32) & 8) != 0 && (v123 & 1) == 0)
              {
                goto LABEL_149;
              }

              v124 = *(v122 + 56);
              if (*(a3 + 600) == v124)
              {
                if (v121)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                v125 = *(a3 + 596);
                if (v125 >= 2)
                {
                  v126 = (a3 + 604);
                  v127 = 1;
                  while (1)
                  {
                    v128 = *v126++;
                    if (v128 == v124)
                    {
                      break;
                    }

                    if (v125 == ++v127)
                    {
                      goto LABEL_165;
                    }
                  }

                  if (((1 << v127) & v121) != 0)
                  {
                    goto LABEL_149;
                  }
                }
              }
            }

LABEL_165:
            if (v116 != 1)
            {
              if (v116 <= 2)
              {
LABEL_170:
                v120 = *(v119 + 18);
                if ((v120 & 0x1000) != 0)
                {
                  if (!v118)
                  {
                    v118 = 3;
                  }

                  goto LABEL_149;
                }
              }

              if ((v120 & 0x200) != 0 && (v130 = a5[11]) != 0)
              {
                v131 = v130 & 1 | 0x10;
                v132 = v130 >> 1;
                v133 = *(v452 + 144);
                if (*(v452 + 148) <= v133)
                {
                  v133 = sub_18194C8AC(v452, v131, v132, 0, 0, a6, a7, a8);
                }

                else
                {
                  *(v452 + 144) = v133 + 1;
                  v134 = *(v452 + 136) + 40 * v133;
                  *v134 = v131;
                  *(v134 + 2) = 0;
                  *(v134 + 4) = v132;
                  *(v134 + 1) = 0;
                  *(v134 + 8) = 0u;
                  *(v134 + 24) = 0u;
                }

                sub_1818DD640(v454, v122);
                if (v133)
                {
                  v135 = &byte_1EA831A58;
                  if (!*(*v452 + 103))
                  {
                    v135 = (*(v452 + 136) + 40 * v133);
                  }

                  *(v135 + 2) = *(v452 + 144);
                }
              }

              else
              {
                sub_1818DD640(v454, v122);
              }

              *(v119 + 18) |= 4u;
              v48 = v455;
              goto LABEL_149;
            }

            v129 = a5[1];
            v461 = 0;
            v463 = 0u;
            *&v456 = v58;
            *(&v456 + 1) = v129;
            v462 = sub_181977950;
            v464 = 0;
            *&v465 = &v456;
            if (!v122)
            {
              goto LABEL_170;
            }

            sub_181959BA0(&v461, v122);
            if (!WORD2(v464))
            {
              goto LABEL_170;
            }

            v118 = 2;
          }
        }

LABEL_149:
        v119 += 56;
        v53 = __OFSUB__(v117--, 1);
        if ((v117 < 0) ^ v53 | (v117 == 0))
        {
          v116 = v118;
          if (v118 > 0)
          {
            goto LABEL_146;
          }

          break;
        }
      }
    }

    v136 = *(a3 + 132);
    if (v136 >= 1)
    {
      v137 = *(a3 + 136);
      v138 = 0uLL;
      do
      {
        v459 = v138;
        v460 = v138;
        v457 = v138;
        v458 = v138;
        v456 = v138;
        if ((*(v137 + 9) & 6) == 0 && (*(v137 + 10) & 0x82) != 0 && (*(v137 + 10) & 0x800) != 0 && *(v137 + 7) == v449 && (*(v455 + 32) & 0x58) == 0)
        {
          v143 = *v137;
          v144 = *(v137 + 8);
          v469 = 0;
          v468 = v138;
          v467 = v138;
          v466 = v138;
          v465 = v138;
          v461 = a3 + 104;
          v462 = (a3 + 104);
          v463 = 0uLL;
          v464 = 0x8300000000;
          DWORD1(v465) = v449;
          *(&v465 + 1) = 257;
          if (v144 != -2)
          {
            LOWORD(v468) = v144;
            v145 = sub_181972F4C(&v461);
            v138 = 0uLL;
            if (v145)
            {
              v146 = 0;
              do
              {
                v147 = *(v145 + 5);
                if ((v147 & a6) == 0)
                {
                  if (!v147 && (v145[10] & 0x82) != 0)
                  {
                    v146 = v145;
                    goto LABEL_207;
                  }

                  if (!v146)
                  {
                    v146 = v145;
                  }
                }

                v145 = sub_181972F4C(&v461);
                v138 = 0uLL;
              }

              while (v145);
              if (!v146)
              {
                goto LABEL_188;
              }

LABEL_207:
              if ((v146[9] & 4) == 0)
              {
                v148 = *v146;
                if ((v146[10] & 1) == 0 || (*(v148 + 5) & 0x10) == 0 || **(*(v148 + 4) + 32) <= 1)
                {
                  v139 = v148[1];
                  v140 = v148[2];
                  v141 = v148[4];
                  v459 = v148[3];
                  v460 = v141;
                  v457 = v139;
                  v458 = v140;
                  v456 = *v148;
                  *&v457 = *(v143 + 16);
                  sub_1818DD640(v454, &v456);
                  v138 = 0uLL;
                  v146[9] |= 4u;
                }
              }
            }
          }
        }

LABEL_188:
        v137 += 7;
        v53 = __OFSUB__(v136--, 1);
      }

      while (!((v136 < 0) ^ v53 | (v136 == 0)));
    }

    v149 = *(a5 + 7);
    v150 = v454;
    v151 = v452;
    if (v149)
    {
      v152 = *(*(a3 + 8) + 72 * *(a5 + 64) + 24);
      if ((*(v152 + 48) & 0x80) != 0)
      {
        v156 = v152 + 16;
        do
        {
          v157 = *v156;
          v158 = *(*v156 + 99) & 3;
          v156 = *v156 + 40;
        }

        while (v158 != 2);
        v159 = *(v157 + 94);
        if (*(v157 + 94))
        {
          v160 = v159 + 1;
          v161 = *(v454 + 44);
          v451 = *(a5 + 7);
          if (v161 <= v159)
          {
            v169 = *(v454 + 60);
            v162 = v169 + 1;
            *(v454 + 60) = v169 + v160;
          }

          else
          {
            v162 = *(v454 + 48);
            *(v454 + 44) = v161 - v160;
            *(v454 + 48) = v162 + v160;
          }

          v170 = 0;
          v163 = v162;
          v165 = v162 + 1;
          do
          {
            sub_181959FA4(v452, v152, v449, *(*(v157 + 8) + 2 * v170), (v163 + v170 + 1), a6, a7, a8);
            ++v170;
          }

          while (v159 != v170);
          v150 = v454;
          v151 = v452;
          v149 = v451;
        }

        else
        {
          if (*(v454 + 31))
          {
            v168 = *(v454 + 31) - 1;
            *(v454 + 31) = v168;
            v163 = *(v454 + 4 * v168 + 184);
          }

          else
          {
            v163 = (*(v454 + 60) + 1);
            *(v454 + 60) = v163;
          }

          v151 = v452;
          v159 = 0;
          v165 = (v163 + 1);
        }
      }

      else
      {
        v153 = *(v454 + 44);
        v53 = __OFSUB__(v153, 2);
        v154 = v153 - 2;
        if (v154 < 0 != v53)
        {
          v155 = *(v454 + 60);
          v163 = (v155 + 1);
          *(v454 + 60) = v155 + 2;
        }

        else
        {
          v163 = *(v454 + 48);
          *(v454 + 44) = v154;
          *(v454 + 48) = v163 + 2;
        }

        v164 = a5[1];
        v165 = (v163 + 1);
        v166 = *(v452 + 144);
        if (*(v452 + 148) <= v166)
        {
          sub_18194C8AC(v452, 135, v164, (v163 + 1), 0, a6, a7, a8);
        }

        else
        {
          *(v452 + 144) = v166 + 1;
          v167 = *(v452 + 136) + 40 * v166;
          *v167 = 135;
          *(v167 + 4) = v164;
          *(v167 + 8) = v165;
          *(v167 + 12) = 0;
          *(v167 + 28) = 0;
          *(v167 + 20) = 0;
          *(v167 + 36) = 0;
        }

        v159 = 1;
      }

      v171 = *v149;
      v172 = *(v151 + 144);
      if (*(v151 + 148) <= v172)
      {
        v172 = sub_18194CAFC(v151, 29, v171, 0, v165, v159, a7, a8);
      }

      else
      {
        *(v151 + 144) = v172 + 1;
        v173 = *(v151 + 136) + 40 * v172;
        *v173 = 64797;
        *(v173 + 4) = v171;
        *(v173 + 8) = 0;
        *(v173 + 12) = v165;
        *(v173 + 16) = v159;
        *(v173 + 24) = 0;
        *(v173 + 32) = 0;
      }

      v174 = *(v151 + 144);
      if (*(v151 + 148) <= v174)
      {
        sub_18194C8AC(v151, 97, v165, v159, v163, a6, a7, a8);
      }

      else
      {
        *(v151 + 144) = v174 + 1;
        v175 = *(v151 + 136) + 40 * v174;
        *v175 = 97;
        *(v175 + 4) = v165;
        *(v175 + 8) = v159;
        *(v175 + 12) = v163;
        *(v175 + 24) = 0;
        *(v175 + 32) = 0;
        *(v175 + 16) = 0;
      }

      v176 = *v149;
      v177 = *(v151 + 144);
      if (*(v151 + 148) <= v177)
      {
        sub_18194CAFC(v151, 138, v176, v163, v165, v159, a7, a8);
      }

      else
      {
        *(v151 + 144) = v177 + 1;
        v178 = *(v151 + 136) + 40 * v177;
        *v178 = 64906;
        *(v178 + 4) = v176;
        *(v178 + 8) = v163;
        *(v178 + 12) = v165;
        *(v178 + 16) = v159;
        *(v178 + 24) = 0;
        *(v178 + 32) = 0;
      }

      v179 = v149[1];
      v180 = *(v151 + 144);
      if (*(v151 + 148) <= v180)
      {
        sub_18194CAFC(v151, 183, v179, 0, v165, v159, a7, a8);
      }

      else
      {
        *(v151 + 144) = v180 + 1;
        v181 = *(v151 + 136) + 40 * v180;
        *v181 = 64951;
        *(v181 + 4) = v179;
        *(v181 + 8) = 0;
        *(v181 + 12) = v165;
        *(v181 + 16) = v159;
        *(v181 + 24) = 0;
        *(v181 + 32) = 0;
      }

      v182 = *(v151 + 144);
      if (v182 >= 1)
      {
        *(*(v151 + 136) + 40 * v182 - 38) = 16;
      }

      if (*(*v151 + 103))
      {
        dword_1EA831A60 = v182;
        if (v159)
        {
          goto LABEL_250;
        }
      }

      else
      {
        *(*(v151 + 136) + 40 * v172 + 8) = v182;
        if (v159)
        {
LABEL_250:
          if (*(v150 + 44) <= v159)
          {
            *(v150 + 44) = v159 + 1;
            *(v150 + 48) = v163;
          }

          goto LABEL_256;
        }
      }

      if (v163)
      {
        v183 = *(v150 + 31);
        if (v183 <= 7)
        {
          *(v150 + 31) = v183 + 1;
          *(v150 + 4 * v183 + 184) = v163;
        }
      }
    }

LABEL_256:
    v184 = *a5;
    if (v184)
    {
      v185 = *(v151 + 144);
      a5[7] = v185;
      v186 = v455;
      if (*(v151 + 148) <= v185)
      {
        sub_18194C8AC(v151, 71, 1uLL, v184, 0, a6, a7, a8);
        v188 = *(a5 + 7);
        if (!v188)
        {
          goto LABEL_267;
        }
      }

      else
      {
        *(v151 + 144) = v185 + 1;
        v187 = *(v151 + 136) + 40 * v185;
        *v187 = 0x100000047;
        *(v187 + 8) = v184;
        *(v187 + 12) = 0;
        *(v187 + 28) = 0;
        *(v187 + 20) = 0;
        *(v187 + 36) = 0;
        v188 = *(a5 + 7);
        if (!v188)
        {
          goto LABEL_267;
        }
      }
    }

    else
    {
      v188 = *(a5 + 7);
      v186 = v455;
      if (!v188)
      {
        return *(a5 + 13);
      }
    }

    v189 = *(v188 + 8);
    v190 = *(v151 + 144);
    if (*(v151 + 148) <= v190)
    {
      sub_18194C8AC(v151, 74, 0, v189, 0, a6, a7, a8);
    }

    else
    {
      *(v151 + 144) = v190 + 1;
      v191 = *(v151 + 136) + 40 * v190;
      *v191 = 74;
      *(v191 + 8) = v189;
      *(v191 + 12) = 0;
      *(v191 + 28) = 0;
      *(v191 + 20) = 0;
      *(v191 + 36) = 0;
    }

    *(v188 + 12) = *(v151 + 144);
    ++*(v150 + 37);
LABEL_267:
    v192 = *(a3 + 132);
    if (v192 >= 1)
    {
      v193 = 0;
      v194 = *(a3 + 136);
      do
      {
        if ((*(v194 + 18) & 6) == 0 && (*(a5 + 13) & *(v194 + 48)) == 0 && (*(v186 + 32) & 0x40) == 0)
        {
          sub_1818DD640(v150, *v194);
          *(v194 + 18) |= 4u;
          v192 = *(a3 + 132);
        }

        ++v193;
        v194 += 56;
      }

      while (v193 < v192);
    }

    return *(a5 + 13);
  }

  v447 = v213.i32[1];
  v217 = v216 - a4;
  v218 = sub_181929E8C(v448, 72 * v217 + 8, 0x103204056E3F560);
  if (v218)
  {
    v219 = v218;
    *v218 = v217;
    *(v218 + 4) = v217;
    v48 = v455;
    *(v218 + 8) = *(v455 + 8);
    v220 = *(v455 + 24);
    v221 = *(v455 + 40);
    v222 = *(v455 + 56);
    *(v218 + 72) = *(v455 + 72);
    *(v218 + 56) = v222;
    *(v218 + 40) = v221;
    *(v218 + 24) = v220;
    if (v217 >= 2)
    {
      v223 = *(a3 + 8) + 8;
      v224 = (a5 + 46);
      v225 = v217 - 1;
      v226 = 80;
      do
      {
        v227 = v218 + v226;
        v228 = *v224;
        v224 += 120;
        v229 = v223 + 72 * v228;
        *v227 = *v229;
        v230 = *(v229 + 16);
        v231 = *(v229 + 32);
        v232 = *(v229 + 48);
        *(v227 + 64) = *(v229 + 64);
        *(v227 + 32) = v231;
        *(v227 + 48) = v232;
        *(v227 + 16) = v230;
        v226 += 72;
        --v225;
      }

      while (v225);
    }

    v213.i32[1] = v447;
    goto LABEL_333;
  }

  return a6;
}

uint64_t sub_1819710AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = *a1;
  if ((*(result + 49) & 4) == 0)
  {
    return result;
  }

  v8 = *(a3 + 96);
  LODWORD(v9) = *(v8 + 48);
  if ((v9 & 0x400) == 0)
  {
    v10 = *(v8 + 32);
    if (v10)
    {
      v11 = *v10;
      v12 = *(a3 + 32);
      v13 = *(a3 + 112);
      v14 = *(v8 + 22);
      v15 = *(a1 + 392);
      v16 = 56 * v15;
      v17 = v16 + 56;
      v18 = *(a1 + 400);
      if (v18)
      {
        if (*(result + 512) > v18)
        {
          v19 = *(a1 + 392);
          if (*(result + 496) <= v18)
          {
            if (v17 < 0x81)
            {
              goto LABEL_48;
            }
          }

          else if (*(result + 504) <= v18 && v17 <= *(result + 438))
          {
LABEL_48:
            *(a1 + 392) = v15 + 1;
            v46 = v18 + 56 * v19;
            *v46 = 0u;
            *(v46 + 16) = 0u;
            *(v46 + 32) = 0u;
            *(v46 + 48) = 0;
            *v46 = a4;
            *(v46 + 28) = v12;
            *(v46 + 32) = v13;
            *(v46 + 40) = v14;
            if (v11)
            {
              v47 = strlen(v11);
              v48 = v47;
              if (*a1)
              {
                result = sub_181929E8C(*a1, v47 + 1, 354097263);
                v49 = result;
                if (!result)
                {
                  goto LABEL_55;
                }

                goto LABEL_54;
              }

              result = sub_181902484(v47 + 1, 354097263);
              v49 = result;
              if (result)
              {
LABEL_54:
                result = memcpy(v49, v11, v48 + 1);
              }
            }

            else
            {
              v49 = 0;
            }

LABEL_55:
            *(v46 + 48) = v49;
            *(a1 + 400) = v18;
            goto LABEL_56;
          }
        }

        result = sub_181929F38(result, *(a1 + 400), v17, 0x1010040CEB2E6A9);
        v18 = result;
        if (!result)
        {
          goto LABEL_56;
        }

LABEL_47:
        v15 = *(a1 + 392);
        v19 = v15;
        goto LABEL_48;
      }

      result = sub_181929E8C(result, v16 + 56, 0x1010040CEB2E6A9);
      v18 = result;
      if (result)
      {
        goto LABEL_47;
      }

LABEL_56:
      if ((v9 & 0x6000) == 0 && (*(*a1 + 49) & 4) != 0)
      {
        v50 = *(a3 + 4);
        v51 = *(a1 + 392);
        v52 = 56 * v51;
        v53 = v51 + 1;
        while (--v53 >= 1)
        {
          v54 = v52 - 56;
          v55 = *(a1 + 400);
          v56 = *(v55 + v52 - 56);
          v52 -= 56;
          if (v56 == a4)
          {
            if (v50 < 0)
            {
              v50 = *(a1 + 144) - 1;
            }

            if (*(v55 + v54 + 4))
            {
              if (*(v55 + v54 + 12))
              {
                if (*(v55 + v54 + 20))
                {
                  break;
                }

                v57 = 4;
              }

              else
              {
                v57 = 2;
              }
            }

            else
            {
              v57 = 0;
            }

            v59 = v55 + 4 * v57 + v54;
            *(v59 + 4) = -1;
            *(v59 + 8) = v50;
            break;
          }
        }
      }

      if ((v9 & 0x200) != 0 && (*(*a1 + 49) & 4) != 0)
      {
        v58 = *(a3 + 8);
        v60 = *(a1 + 392);
        v61 = 56 * v60;
        v62 = v60 + 1;
        while (--v62 >= 1)
        {
          v63 = v61 - 56;
          v64 = *(a1 + 400);
          v65 = *(v64 + v61 - 56);
          v61 -= 56;
          if (v65 == a4)
          {
            v44 = v64 + v63;
            if (v58 < 0)
            {
              v58 = *(a1 + 144) - 1;
            }

            if (*(v44 + 4))
            {
              if (*(v64 + v63 + 12))
              {
                if (*(v64 + v63 + 20))
                {
                  return result;
                }

                v45 = 4;
              }

              else
              {
                v45 = 2;
              }
            }

            else
            {
              v45 = 0;
            }

            *(v64 + 4 * v45 + v63 + 4) = -1;
            goto LABEL_87;
          }
        }
      }

      return result;
    }
  }

  v20 = a2 + 8;
  v21 = a2 + 8 + 72 * *(a3 + 64);
  v67 = *(v21 + 25);
  v22 = *v21;
  v23 = *(a3 + 32);
  v24 = *(a3 + 112);
  v25 = *(v8 + 22);
  v26 = *(a1 + 392);
  v27 = 56 * v26;
  v28 = v27 + 56;
  v29 = *(a1 + 400);
  if (v29)
  {
    if (*(result + 512) > v29)
    {
      v30 = *(a1 + 392);
      if (*(result + 496) <= v29)
      {
        if (v28 < 0x81)
        {
LABEL_15:
          v66 = v9;
          goto LABEL_24;
        }
      }

      else if (*(result + 504) <= v29 && v28 <= *(result + 438))
      {
        goto LABEL_15;
      }
    }

    result = sub_181929F38(result, *(a1 + 400), v28, 0x1010040CEB2E6A9);
    v29 = result;
    if (result)
    {
LABEL_23:
      v66 = v9;
      v26 = *(a1 + 392);
      v30 = v26;
LABEL_24:
      *(a1 + 392) = v26 + 1;
      v9 = v29 + 56 * v30;
      *v9 = 0u;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v9 + 48) = 0;
      *v9 = a4;
      *(v9 + 28) = v23;
      *(v9 + 32) = v24;
      *(v9 + 40) = v25;
      if (!v22)
      {
        v33 = 0;
        goto LABEL_31;
      }

      v31 = strlen(v22);
      v32 = v31;
      if (*a1)
      {
        result = sub_181929E8C(*a1, v31 + 1, 354097263);
        v33 = result;
        if (!result)
        {
LABEL_31:
          *(v9 + 48) = v33;
          *(a1 + 400) = v29;
          LOWORD(v9) = v66;
          if ((v67 & 0x40) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_32;
        }
      }

      else
      {
        result = sub_181902484(v31 + 1, 354097263);
        v33 = result;
        if (!result)
        {
          goto LABEL_31;
        }
      }

      result = memcpy(v33, v22, v32 + 1);
      goto LABEL_31;
    }
  }

  else
  {
    result = sub_181929E8C(result, v27 + 56, 0x1010040CEB2E6A9);
    v29 = result;
    if (result)
    {
      goto LABEL_23;
    }
  }

  if ((v67 & 0x40) == 0)
  {
    goto LABEL_56;
  }

LABEL_32:
  v34 = *(*(v20 + 72 * *(a3 + 64) + 64) + 8);
  v35 = *a1;
  if (*(*a1 + 103))
  {
    v36 = &byte_1EA831A58;
    if ((*(v35 + 49) & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    v36 = (*(a1 + 136) + 40 * v34 - 40);
    if ((*(v35 + 49) & 4) == 0)
    {
      return result;
    }
  }

  v37 = *(v36 + 2);
  v38 = *(a1 + 392);
  v39 = 56 * v38;
  v40 = v38 + 1;
  while (--v40 >= 1)
  {
    v41 = v39 - 56;
    v42 = *(a1 + 400);
    v43 = *(v42 + v39 - 56);
    v39 -= 56;
    if (v43 == a4)
    {
      v44 = v42 + v41;
      if (v37 <= 0)
      {
        v37 = *(a1 + 144);
      }

      if (*(v44 + 4))
      {
        if (*(v42 + v41 + 12))
        {
          if (*(v42 + v41 + 20))
          {
            return result;
          }

          v45 = 4;
        }

        else
        {
          v45 = 2;
        }
      }

      else
      {
        v45 = 0;
      }

      v58 = v37 - 1;
      *(v42 + 4 * v45 + v41 + 4) = v34;
LABEL_87:
      *(v44 + 4 * v45 + 8) = v58;
      return result;
    }
  }

  return result;
}

uint64_t sub_181971618(_DWORD *a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = 0;
    v84 = a1 + 3;
    while (1)
    {
      v5 = v2[4];
      v83 = v2[5];
      if (v5)
      {
        v6 = *v5;
        if (*v5 >= 1)
        {
          v7 = 0;
          v8 = 0;
          while (1)
          {
            v10 = *&v5[6 * v7 + 2];
            if (v10)
            {
              if (*v10 == 168 && (*(v10 + 1) & 0x20) == 0)
              {
                v12 = *(v10 + 11);
                if (a1[2] == v12)
                {
                  v9 = 1;
                  goto LABEL_9;
                }

                v13 = a1[1];
                if (v13 >= 2)
                {
                  v14 = v84;
                  v15 = 1;
                  while (1)
                  {
                    v16 = *v14++;
                    if (v16 == v12)
                    {
                      break;
                    }

                    if (v13 == ++v15)
                    {
                      goto LABEL_8;
                    }
                  }

                  v9 = 1 << v15;
                  goto LABEL_9;
                }
              }

              else if ((*(v10 + 1) & 0x810000) == 0)
              {
                v9 = sub_1819725E8(a1, v10);
                v6 = *v5;
                goto LABEL_9;
              }
            }

LABEL_8:
            v9 = 0;
LABEL_9:
            v8 |= v9;
            if (++v7 >= v6)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v8 = 0;
LABEL_26:
      v17 = v2[7];
      v82 = v2;
      if (v17)
      {
        v18 = *v17;
        if (*v17 >= 1)
        {
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v22 = *&v17[6 * v19 + 2];
            if (v22)
            {
              if (*v22 == 168 && (*(v22 + 1) & 0x20) == 0)
              {
                v24 = *(v22 + 11);
                if (a1[2] == v24)
                {
                  v21 = 1;
                  goto LABEL_31;
                }

                v25 = a1[1];
                if (v25 >= 2)
                {
                  v26 = v84;
                  v27 = 1;
                  while (1)
                  {
                    v28 = *v26++;
                    if (v28 == v24)
                    {
                      break;
                    }

                    if (v25 == ++v27)
                    {
                      goto LABEL_30;
                    }
                  }

                  v21 = 1 << v27;
                  goto LABEL_31;
                }
              }

              else if ((*(v22 + 1) & 0x810000) == 0)
              {
                v21 = sub_1819725E8(a1, v22);
                v18 = *v17;
                goto LABEL_31;
              }
            }

LABEL_30:
            v21 = 0;
LABEL_31:
            v20 |= v21;
            if (++v19 >= v18)
            {
              goto LABEL_48;
            }
          }
        }
      }

      v20 = 0;
LABEL_48:
      v29 = v82[9];
      if (v29)
      {
        v30 = *v29;
        if (*v29 >= 1)
        {
          v31 = 0;
          v32 = 0;
          while (1)
          {
            v34 = *&v29[6 * v31 + 2];
            if (v34)
            {
              if (*v34 == 168 && (*(v34 + 1) & 0x20) == 0)
              {
                v36 = *(v34 + 11);
                if (a1[2] == v36)
                {
                  v33 = 1;
                  goto LABEL_53;
                }

                v37 = a1[1];
                if (v37 >= 2)
                {
                  v38 = v84;
                  v39 = 1;
                  while (1)
                  {
                    v40 = *v38++;
                    if (v40 == v36)
                    {
                      break;
                    }

                    if (v37 == ++v39)
                    {
                      goto LABEL_52;
                    }
                  }

                  v33 = 1 << v39;
                  goto LABEL_53;
                }
              }

              else if ((*(v34 + 1) & 0x810000) == 0)
              {
                v33 = sub_1819725E8(a1, v34);
                v30 = *v29;
                goto LABEL_53;
              }
            }

LABEL_52:
            v33 = 0;
LABEL_53:
            v32 |= v33;
            if (++v31 >= v30)
            {
              goto LABEL_70;
            }
          }
        }
      }

      v32 = 0;
LABEL_70:
      v41 = v82[6];
      if (!v41)
      {
        v44 = 0;
        v43 = v83;
        goto LABEL_85;
      }

      v42 = *v41 == 168 && (*(v41 + 1) & 0x20) == 0;
      v43 = v83;
      if (!v42)
      {
        break;
      }

      v45 = *(v41 + 11);
      if (a1[2] == v45)
      {
        v44 = 1;
        goto LABEL_85;
      }

      v46 = a1[1];
      if (v46 < 2)
      {
        goto LABEL_84;
      }

      v47 = v84;
      v48 = 1;
      while (1)
      {
        v49 = *v47++;
        if (v49 == v45)
        {
          break;
        }

        if (v46 == ++v48)
        {
          goto LABEL_84;
        }
      }

      v44 = 1 << v48;
LABEL_85:
      v50 = v82[8];
      if (!v50)
      {
        goto LABEL_98;
      }

      if (*v50 == 168 && (*(v50 + 1) & 0x20) == 0)
      {
        v53 = *(v50 + 11);
        if (a1[2] == v53)
        {
          v52 = 1;
        }

        else
        {
          v54 = a1[1];
          if (v54 < 2)
          {
LABEL_98:
            v52 = 0;
            goto LABEL_99;
          }

          v55 = v84;
          v56 = 1;
          while (1)
          {
            v57 = *v55++;
            if (v57 == v53)
            {
              break;
            }

            if (v54 == ++v56)
            {
              goto LABEL_98;
            }
          }

          v52 = 1 << v56;
        }
      }

      else
      {
        if ((*(v50 + 1) & 0x810000) != 0)
        {
          goto LABEL_98;
        }

        v52 = sub_1819725E8(a1, v50);
      }

LABEL_99:
      v4 |= v8 | v20 | v32 | v44 | v52;
      if (v43 && *v43 >= 1)
      {
        v58 = 0;
        v59 = v43 + 2;
        while (1)
        {
          v61 = &v59[18 * v58];
          v62 = *(v61 + 25);
          if ((v62 & 4) != 0)
          {
            v4 |= sub_181971618(a1, **(v61 + 8));
            v62 = *(v61 + 25);
            if ((v62 & 0x800) != 0)
            {
LABEL_116:
              if ((v62 & 8) == 0)
              {
                goto LABEL_104;
              }

              goto LABEL_126;
            }
          }

          else if ((*(v61 + 25) & 0x800) != 0)
          {
            goto LABEL_116;
          }

          v63 = *(v61 + 7);
          if (!v63)
          {
            goto LABEL_125;
          }

          if (*v63 != 168 || (*(v63 + 1) & 0x20) != 0)
          {
            break;
          }

          v65 = *(v63 + 11);
          if (a1[2] == v65)
          {
            v4 |= 1uLL;
            if ((v62 & 8) == 0)
            {
              goto LABEL_104;
            }

            goto LABEL_126;
          }

          v66 = a1[1];
          if (v66 < 2)
          {
            goto LABEL_125;
          }

          v67 = v84;
          v68 = 1;
          while (1)
          {
            v69 = *v67++;
            if (v69 == v65)
            {
              break;
            }

            if (v66 == ++v68)
            {
              goto LABEL_125;
            }
          }

          v4 |= 1 << v68;
          if ((v62 & 8) == 0)
          {
            goto LABEL_104;
          }

LABEL_126:
          v70 = *(v61 + 5);
          if (v70)
          {
            v71 = *v70;
            if (*v70 >= 1)
            {
              v72 = 0;
              v60 = 0;
              while (1)
              {
                v74 = *&v70[6 * v72 + 2];
                if (v74)
                {
                  if (*v74 == 168 && (*(v74 + 1) & 0x20) == 0)
                  {
                    v76 = *(v74 + 11);
                    if (a1[2] == v76)
                    {
                      v73 = 1;
                      goto LABEL_131;
                    }

                    v77 = a1[1];
                    if (v77 >= 2)
                    {
                      v78 = v84;
                      v79 = 1;
                      while (1)
                      {
                        v80 = *v78++;
                        if (v80 == v76)
                        {
                          break;
                        }

                        if (v77 == ++v79)
                        {
                          goto LABEL_130;
                        }
                      }

                      v73 = 1 << v79;
                      goto LABEL_131;
                    }
                  }

                  else if ((*(v74 + 1) & 0x810000) == 0)
                  {
                    v73 = sub_1819725E8(a1, v74);
                    v71 = *v70;
                    goto LABEL_131;
                  }
                }

LABEL_130:
                v73 = 0;
LABEL_131:
                v60 |= v73;
                if (++v72 >= v71)
                {
                  goto LABEL_103;
                }
              }
            }
          }

          v60 = 0;
LABEL_103:
          v4 |= v60;
          v43 = v83;
LABEL_104:
          if (++v58 >= *v43)
          {
            goto LABEL_3;
          }
        }

        if ((*(v63 + 1) & 0x810000) == 0)
        {
          v4 |= sub_1819725E8(a1, v63);
          if ((*(v61 + 25) & 8) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_126;
        }

LABEL_125:
        if ((v62 & 8) == 0)
        {
          goto LABEL_104;
        }

        goto LABEL_126;
      }

LABEL_3:
      v2 = v82[10];
      if (!v2)
      {
        return v4;
      }
    }

    if ((*(v41 + 1) & 0x810000) == 0)
    {
      v44 = sub_1819725E8(a1, v41);
      goto LABEL_85;
    }

LABEL_84:
    v44 = 0;
    goto LABEL_85;
  }

  return 0;
}

BOOL sub_181971C28(void *a1, unsigned __int8 *a2)
{
  if ((*(*a1 + 96) & 0x80) != 0)
  {
    return 0;
  }

  v2 = *a2;
  if (v2 != 54 && v2 != 45)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  if (v3)
  {
    return 0;
  }

  v6 = sub_1818D0A24(*(a2 + 2));
  v7 = sub_1818D0A24(*(a2 + 3));
  if (v6 == v7 || (v14 = v7, result = 0, v6 >= 67) && v14 >= 67)
  {
    v16 = 24;
    if ((v3 & 0x400) != 0)
    {
      v17 = 24;
    }

    else
    {
      v17 = 16;
    }

    if ((v3 & 0x400) != 0)
    {
      v16 = 16;
    }

    v18 = *&a2[v17];
    if ((v18[5] & 2) != 0)
    {
      v22 = a1;
    }

    else
    {
      v19 = *&a2[v16];
      if (v19 && (v19[5] & 2) != 0)
      {
        v22 = a1;
      }

      else
      {
        v20 = sub_1818B4720(a1, v18, v8, v9, v10, v11, v12, v13);
        v21 = a2;
        if (v20)
        {
          goto LABEL_24;
        }

        v22 = a1;
      }

      v18 = v19;
    }

    v20 = sub_1818B4720(v22, v18, v8, v9, v10, v11, v12, v13);
    v21 = a2;
    if (!v20)
    {
      return 1;
    }

LABEL_24:
    if (*(v20 + 24) != sub_1818D0EC0)
    {
      v23 = *(v21 + 3);
      v30 = sub_1818B4720(a1, *(v21 + 2), v8, v9, v10, v11, v12, v13);
      if (!v30)
      {
        v30 = *(*a1 + 16);
      }

      v31 = sub_1818B4720(a1, v23, v24, v25, v26, v27, v28, v29);
      if (!v31)
      {
        v31 = *(*a1 + 16);
      }

      v32 = *v30;
      for (i = *v31; ; ++i)
      {
        v34 = *v32;
        v35 = *i;
        if (v34 == v35)
        {
          if (!*v32)
          {
            return v34 == v35;
          }
        }

        else if (byte_181A20298[*v32] != byte_181A20298[*i])
        {
          return v34 == v35;
        }

        ++v32;
      }
    }

    return 1;
  }

  return result;
}

void *sub_181971DD0(void *result, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v9 = a2[1].i64[0];
  if (*v9 != 177)
  {
    v10 = a2[1].i64[1];
    if (*v10 != 177)
    {
      v11 = result;
      if ((v9[5] & 2) != 0)
      {
        v10 = v9;
      }

      else if ((v10[5] & 2) == 0)
      {
        v12 = a2[1].i64[1];
        v13 = sub_1818B4720(result, v9, a3, a4, a5, a6, a7, a8);
        v10 = v12;
        v14 = v13;
        v15 = v11;
        if (v14)
        {
LABEL_9:
          v16 = a2[1].i64[1];
          if ((v16[5] & 2) == 0)
          {
            v17 = a2[1].i64[0];
            if (!v17 || (v17[5] & 2) == 0)
            {
              result = sub_1818B4720(v15, v16, a3, a4, a5, a6, a7, a8);
              if (result)
              {
                goto LABEL_16;
              }

              v15 = v11;
            }

            v16 = v17;
          }

          result = sub_1818B4720(v15, v16, a3, a4, a5, a6, a7, a8);
LABEL_16:
          if (v14 == result)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      v14 = sub_1818B4720(v11, v10, a3, a4, a5, a6, a7, a8);
      v15 = v11;
      goto LABEL_9;
    }
  }

LABEL_17:
  a2->i32[1] ^= 0x400u;
LABEL_18:
  a2[1] = vextq_s8(a2[1], a2[1], 8uLL);
  v18 = a2->u8[0];
  v19 = v18 >= 0x37;
  v20 = v18 - 55;
  if (v19)
  {
    a2->i8[0] = (v20 ^ 2) + 55;
  }

  return result;
}

uint64_t sub_181971ECC(uint64_t a1, uint64_t a2, uint64_t *a3, _BOOL4 *a4, _DWORD *a5)
{
  v5 = *(a2 + 32);
  if (!v5)
  {
    return 0;
  }

  v10 = *a1;
  v11 = *v5;
  result = sub_181893B48(*a1, *(a2 + 8), *v5, 1u, 0);
  if (result)
  {
    v13 = *(result + 4);
    if ((v13 & 4) == 0)
    {
      return 0;
    }

    v14 = *(result + 8);
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    if (v11 >= 3)
    {
      v27 = *(*(a2 + 32) + 56);
      if (*v27 != 118)
      {
        return 0;
      }

      v28 = *(v27 + 8);
      v18 = *v28;
      if (!*v28)
      {
        return 0;
      }

      v29 = v28[1] || v18 == v15;
      if (v29 || v18 == v16)
      {
        return 0;
      }
    }

    else
    {
      v18 = 0;
    }

    *a5 = ((v13 >> 3) & 1) == 0;
    v19 = *(a2 + 32);
    v20 = *(v19 + 32);
    for (i = *(v19 + 8); i; i = *(i + 2))
    {
      if ((i[5] & 0x20) == 0)
      {
        break;
      }
    }

    v22 = *i;
    if (v22 != 157)
    {
      if (v22 != 118)
      {
        return 0;
      }

      v31 = 0;
      v32 = *(i + 1);
      if (!v32)
      {
        goto LABEL_102;
      }

LABEL_36:
      v34 = *v32;
      if (*v32)
      {
        v35 = v34 == v15;
      }

      else
      {
        v35 = 1;
      }

      if (v35 || v34 == v16 || v34 == v17)
      {
        goto LABEL_102;
      }

      v38 = 0;
      v39 = *v32;
      while (1)
      {
        v44 = v38 + 1;
        if (v39 == v18 && v32[v44] >= 1)
        {
          v38 += 2;
        }

        else if ((v39 & 0x80) != 0)
        {
          if (v39 == 255)
          {
            goto LABEL_72;
          }

          v45 = &v32[v44];
          v46 = *(v45 - 1);
          if (v46 >= 0xC0)
          {
            v47 = byte_181A20D3A[v46 & 0x3F];
            v48 = *v45;
            if ((*v45 & 0xC0) == 0x80)
            {
              do
              {
                v49 = *++v45;
                v47 = v48 & 0x3F | (v47 << 6);
                v48 = v49;
              }

              while ((v49 & 0xC0) == 0x80);
            }

            if (v47 == 65533 || (v47 & 0xFFFFFFFE) == 0xFFFE || v47 < 0x80 || (v47 & 0xFFFFF800) == 0xD800)
            {
              goto LABEL_72;
            }
          }

          if (*(v10 + 100) == 2)
          {
LABEL_72:
            v40 = 0;
LABEL_73:
            if (v38 <= 1)
            {
              result = 0;
              if (v38 == 1 && v34 != v18)
              {
                v38 = 1;
                goto LABEL_77;
              }

LABEL_103:
              if (v31)
              {
                v74 = result;
                if ((*(v31 + 20) & 0x9000) != 0 || *(v31 + 32))
                {
                  v75 = v31;
                  sub_18193CA00(v31);
                  v31 = v75;
                }

                sub_181929C84(*(v31 + 24), v31);
                return v74;
              }

              return result;
            }

LABEL_77:
            if (v32[v38 - 1] != 255)
            {
              v91 = v22;
              v90 = v31;
              if (v40 && !v32[v38 + 1])
              {
                v50 = v20;
                v51 = *(v10 + 100) != 2;
              }

              else
              {
                v50 = v20;
                v51 = 0;
              }

              *a4 = v51;
              v52 = strlen(v32) & 0x3FFFFFFF;
              v53 = sub_181929E8C(v10, v52 + 81, 0x1032040B79D87BDLL);
              v59 = v53;
              if (!v53)
              {
                goto LABEL_108;
              }

              v60 = v50;
              *(v53 + 48) = 0u;
              *(v53 + 64) = 0u;
              *(v53 + 16) = 0u;
              *(v53 + 32) = 0u;
              *v53 = 0u;
              *v53 = 118;
              *(v53 + 52) = -1;
              v61 = (v53 + 80);
              *(v53 + 8) = v53 + 80;
              v62 = v52;
              if (v52)
              {
                v63 = v32;
                v64 = v60;
                memcpy((v53 + 80), v63, v52);
                v62 = v52;
                v60 = v64;
              }

              v65 = 0;
              LODWORD(v66) = 0;
              v61[v62] = 0;
              *(v59 + 40) = 1;
              v61[v38] = 0;
              do
              {
                v66 = v66;
                if (v61[v66] == v18)
                {
                  ++v66;
                }

                v67 = v59 + v65++;
                *(v67 + 80) = v61[v66];
                LODWORD(v66) = v66 + 1;
              }

              while (v66 < v38);
              if ((v68 = &v61[v65], *v68 = 0, *v60 == 168) && (v69 = v60, sub_1818D0A24(v60) == 66) && ((v69[7] & 3) != 0 || (v70 = *(v69 + 9)) == 0 || *(v70 + 63) != 1) || sub_1818E6334((v59 + 80), &v93, v65, 1) <= 0 && (v65 != 1 || *v61 != 45) && (v71 = *(v68 - 1), *(v68 - 1) = v71 + 1, v72 = sub_1818E6334((v59 + 80), &v93, v65, 1), *(v68 - 1) = v71, v72 < 1))
              {
LABEL_108:
                *a3 = v59;
                result = 1;
                if (v91 == 157)
                {
                  v76 = *(a1 + 16);
                  v77 = *(i + 12);
                  if (v77 <= 31)
                  {
                    v78 = 1 << (v77 - 1);
                  }

                  else
                  {
                    v78 = 0x80000000;
                  }

                  *(v76 + 372) |= v78;
                  v31 = v90;
                  if (*a4 && *(*(i + 1) + 1))
                  {
                    if (*(a1 + 31))
                    {
                      v79 = *(a1 + 31) - 1;
                      *(a1 + 31) = v79;
                      v80 = *(a1 + 4 * v79 + 184);
                    }

                    else
                    {
                      v80 = (*(a1 + 60) + 1);
                      *(a1 + 60) = v80;
                    }

                    sub_1818B8080(a1, i, v80, v54, v55, v56, v57, v58);
                    if (*(*v76 + 103))
                    {
                      v86 = &byte_1EA831A58;
                    }

                    else
                    {
                      v86 = (*(v76 + 136) + 40 * *(v76 + 144) - 40);
                    }

                    v31 = v90;
                    *(v86 + 3) = 0;
                    if (v80)
                    {
                      v87 = *(a1 + 31);
                      if (v87 <= 7)
                      {
                        *(a1 + 31) = v87 + 1;
                        *(a1 + 4 * v87 + 184) = v80;
                      }
                    }

                    result = 1;
                  }
                }

                else
                {
                  v31 = v90;
                }

                goto LABEL_103;
              }

              sub_1819439E0(v10, v59);
              v73 = v90;
              if (v90)
              {
                if ((*(v90 + 20) & 0x9000) != 0 || *(v90 + 32))
                {
                  sub_18193CA00(v90);
                  v73 = v90;
                }

                sub_181929C84(*(v73 + 24), v73);
              }

              return 0;
            }

LABEL_102:
            result = 0;
            goto LABEL_103;
          }

          v38 = v45 - v32;
        }

        else
        {
          ++v38;
        }

        v39 = v32[v38];
        v40 = v39 == v15;
        if (v32[v38])
        {
          v41 = v39 == v15;
        }

        else
        {
          v41 = 1;
        }

        if (v41 || v39 == v16 || v39 == v17)
        {
          goto LABEL_73;
        }
      }
    }

    if ((*(v10 + 50) & 0x80) != 0)
    {
      return 0;
    }

    v23 = *(a1 + 328);
    v24 = *(i + 12);
    if (!v23 || (v25 = v23[16] + (v24 << 6), (*(v25 - 44) & 1) != 0))
    {
      v31 = 0;
    }

    else
    {
      v88 = *v23;
      v89 = v20;
      if (*v23)
      {
        v26 = sub_181929E8C(*v23, 0x40uLL, 0x10F2040695A4BFELL);
      }

      else
      {
        v26 = sub_181902484(64, 0x10F2040695A4BFELL);
      }

      v31 = v26;
      v22 = 157;
      v20 = v89;
      if (v26)
      {
        *(v26 + 32) = 0u;
        *(v26 + 48) = 0u;
        *v26 = 0u;
        *(v26 + 16) = 0u;
        *(v26 + 20) = 1;
        *(v26 + 24) = v88;
        v81 = *(v25 - 64);
        v82 = *(v25 - 48);
        *(v26 + 16) = v82;
        *v26 = v81;
        LODWORD(v82) = WORD2(v82) & 0xEFFF;
        *(v26 + 20) = v82;
        if ((v82 & 0x1200000000) != 0 && (*(v25 - 44) & 0x2000) == 0)
        {
          *(v26 + 20) = WORD2(v82) & 0xAFFF | 0x4000;
          v83 = v26;
          sub_18190B020(v26);
          v20 = v89;
          v22 = 157;
          v31 = v83;
          LODWORD(v82) = *(v83 + 20);
        }

        if ((0x4000000040004uLL >> v82))
        {
          if ((~v82 & 0x202) == 0 && *(v31 + 22) == 1)
          {
            v32 = *(v31 + 8);
            goto LABEL_33;
          }

          if ((v82 & 1) == 0)
          {
            v84 = v31;
            v85 = sub_18193CB70(v31, 1);
            v20 = v89;
            v22 = 157;
            v31 = v84;
            v32 = v85;
LABEL_33:
            v33 = 1 << (v24 - 1);
            if (v24 > 31)
            {
              v33 = 0x80000000;
            }

            *(*(a1 + 16) + 372) |= v33;
            if (!v32)
            {
              goto LABEL_102;
            }

            goto LABEL_36;
          }
        }
      }
    }

    v32 = 0;
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_1819725E8(_DWORD *a1, unsigned __int8 *a2)
{
  if (*a2 != 179)
  {
    goto LABEL_9;
  }

  v4 = *(a2 + 11);
  if (a1[2] == v4)
  {
    v5 = 1;
    v6 = *(a2 + 2);
    if (!v6)
    {
      goto LABEL_24;
    }

LABEL_10:
    if (*v6 == 168 && (*(v6 + 1) & 0x20) == 0)
    {
      v13 = *(v6 + 11);
      if (a1[2] == v13)
      {
        v12 = 1;
        goto LABEL_23;
      }

      v14 = a1[1];
      if (v14 >= 2)
      {
        v15 = a1 + 3;
        v16 = 1;
        while (1)
        {
          v17 = *v15++;
          if (v17 == v13)
          {
            break;
          }

          if (v14 == ++v16)
          {
            goto LABEL_22;
          }
        }

        v12 = 1 << v16;
        goto LABEL_23;
      }
    }

    else if ((*(v6 + 1) & 0x810000) == 0)
    {
      v12 = sub_1819725E8(a1);
LABEL_23:
      v5 |= v12;
      goto LABEL_24;
    }

LABEL_22:
    v12 = 0;
    goto LABEL_23;
  }

  v7 = a1[1];
  if (v7 < 2)
  {
LABEL_9:
    v5 = 0;
    v6 = *(a2 + 2);
    if (!v6)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v8 = a1 + 3;
  v9 = 1;
  while (1)
  {
    v10 = *v8++;
    if (v10 == v4)
    {
      break;
    }

    if (v7 == ++v9)
    {
      goto LABEL_9;
    }
  }

  v5 = 1 << v9;
  v6 = *(a2 + 2);
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_24:
  v18 = *(a2 + 3);
  if (v18)
  {
    if (*v18 == 168 && (*(v18 + 1) & 0x20) == 0)
    {
      v34 = *(v18 + 11);
      if (a1[2] == v34)
      {
        v20 = 1;
      }

      else
      {
        v35 = a1[1];
        if (v35 < 2)
        {
          goto LABEL_68;
        }

        v36 = a1 + 3;
        v37 = 1;
        while (1)
        {
          v38 = *v36++;
          if (v38 == v34)
          {
            break;
          }

          if (v35 == ++v37)
          {
            goto LABEL_68;
          }
        }

        v20 = 1 << v37;
      }
    }

    else
    {
      if ((*(v18 + 1) & 0x810000) != 0)
      {
        goto LABEL_68;
      }

      v20 = sub_1819725E8(a1);
    }

    goto LABEL_58;
  }

  v21 = *(a2 + 1);
  if ((v21 & 0x1000) != 0)
  {
    if ((v21 & 0x40) != 0)
    {
      *a1 = 1;
    }

    v20 = sub_181971618(a1, *(a2 + 4));
LABEL_58:
    v5 |= v20;
    goto LABEL_68;
  }

  v22 = *(a2 + 4);
  if (v22)
  {
    v23 = *v22;
    if (*v22 < 1)
    {
      v25 = 0;
LABEL_67:
      v5 |= v25;
      goto LABEL_68;
    }

    v24 = 0;
    v25 = 0;
    while (1)
    {
      v27 = *&v22[6 * v24 + 2];
      if (v27)
      {
        if (*v27 == 168 && (*(v27 + 1) & 0x20) == 0)
        {
          v29 = *(v27 + 11);
          if (a1[2] == v29)
          {
            v26 = 1;
            goto LABEL_37;
          }

          v30 = a1[1];
          if (v30 >= 2)
          {
            v31 = a1 + 3;
            v32 = 1;
            while (1)
            {
              v33 = *v31++;
              if (v33 == v29)
              {
                break;
              }

              if (v30 == ++v32)
              {
                goto LABEL_36;
              }
            }

            v26 = 1 << v32;
            goto LABEL_37;
          }
        }

        else if ((*(v27 + 1) & 0x810000) == 0)
        {
          v26 = sub_1819725E8(a1);
          v23 = *v22;
          goto LABEL_37;
        }
      }

LABEL_36:
      v26 = 0;
LABEL_37:
      v25 |= v26;
      if (++v24 >= v23)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_68:
  v39 = *a2;
  if (v39 != 172 && v39 != 169 || (a2[7] & 1) == 0)
  {
    return v5;
  }

  v40 = *(a2 + 9);
  v41 = v40[2];
  if (!v41 || (v42 = *v41, *v41 < 1))
  {
    v44 = 0;
    v53 = v40[3];
    if (v53)
    {
      goto LABEL_95;
    }

    goto LABEL_115;
  }

  v43 = 0;
  v44 = 0;
  do
  {
    v46 = *&v41[6 * v43 + 2];
    if (!v46)
    {
LABEL_75:
      v45 = 0;
      goto LABEL_76;
    }

    if (*v46 == 168 && (*(v46 + 1) & 0x20) == 0)
    {
      v48 = *(v46 + 11);
      if (a1[2] == v48)
      {
        v45 = 1;
      }

      else
      {
        v49 = a1[1];
        if (v49 < 2)
        {
          goto LABEL_75;
        }

        v50 = a1 + 3;
        v51 = 1;
        while (1)
        {
          v52 = *v50++;
          if (v52 == v48)
          {
            break;
          }

          if (v49 == ++v51)
          {
            goto LABEL_75;
          }
        }

        v45 = 1 << v51;
      }
    }

    else
    {
      if ((*(v46 + 1) & 0x810000) != 0)
      {
        goto LABEL_75;
      }

      v45 = sub_1819725E8(a1);
      v42 = *v41;
    }

LABEL_76:
    v44 |= v45;
    ++v43;
  }

  while (v43 < v42);
  v40 = *(a2 + 9);
  v53 = v40[3];
  if (!v53)
  {
    goto LABEL_115;
  }

LABEL_95:
  v54 = *v53;
  if (*v53 < 1)
  {
LABEL_115:
    v56 = 0;
    v65 = v40[9];
    if (v65)
    {
      goto LABEL_118;
    }

    goto LABEL_130;
  }

  v55 = 0;
  v56 = 0;
  do
  {
    v58 = *&v53[6 * v55 + 2];
    if (!v58)
    {
LABEL_98:
      v57 = 0;
      goto LABEL_99;
    }

    if (*v58 == 168 && (*(v58 + 1) & 0x20) == 0)
    {
      v60 = *(v58 + 11);
      if (a1[2] == v60)
      {
        v57 = 1;
      }

      else
      {
        v61 = a1[1];
        if (v61 < 2)
        {
          goto LABEL_98;
        }

        v62 = a1 + 3;
        v63 = 1;
        while (1)
        {
          v64 = *v62++;
          if (v64 == v60)
          {
            break;
          }

          if (v61 == ++v63)
          {
            goto LABEL_98;
          }
        }

        v57 = 1 << v63;
      }
    }

    else
    {
      if ((*(v58 + 1) & 0x810000) != 0)
      {
        goto LABEL_98;
      }

      v57 = sub_1819725E8(a1);
      v54 = *v53;
    }

LABEL_99:
    v56 |= v57;
    ++v55;
  }

  while (v55 < v54);
  v65 = *(*(a2 + 9) + 72);
  if (!v65)
  {
    goto LABEL_130;
  }

LABEL_118:
  if (*v65 == 168 && (*(v65 + 1) & 0x20) == 0)
  {
    v68 = *(v65 + 11);
    if (a1[2] == v68)
    {
      v67 = 1;
    }

    else
    {
      v69 = a1[1];
      if (v69 < 2)
      {
        goto LABEL_130;
      }

      v70 = a1 + 3;
      v71 = 1;
      while (1)
      {
        v72 = *v70++;
        if (v72 == v68)
        {
          break;
        }

        if (v69 == ++v71)
        {
          goto LABEL_130;
        }
      }

      v67 = 1 << v71;
    }
  }

  else
  {
    if ((*(v65 + 1) & 0x810000) == 0)
    {
      v67 = sub_1819725E8(a1);
      return v44 | v56 | v67 | v5;
    }

LABEL_130:
    v67 = 0;
  }

  return v44 | v56 | v67 | v5;
}

uint64_t sub_181972B58(int *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v6 = a1 + 2;
  v7 = a4;
  while (1)
  {
    v8 = &v6[18 * v7];
    v9 = *(*(v8 + 2) + 16);
    if (v9)
    {
      break;
    }

LABEL_2:
    if (++v7 >= *a1)
    {
      return 0;
    }
  }

  v10 = v8[7];
  while (!*(v9 + 80) || !*(v9 + 94))
  {
LABEL_5:
    v9 = *(v9 + 40);
    if (!v9)
    {
      goto LABEL_2;
    }
  }

  v11 = 0;
  while (1)
  {
    if (*(*(v9 + 8) + 2 * v11) == -2)
    {
      if (a3)
      {
        v12 = a3;
        do
        {
          if ((*(v12 + 5) & 0x20) == 0)
          {
            break;
          }

          v12 = *(v12 + 16);
        }

        while (v12);
      }

      else
      {
        v12 = 0;
      }

      for (i = *(*(v9 + 80) + 24 * v11 + 8); i; i = *(i + 16))
      {
        if ((*(i + 5) & 0x20) == 0)
        {
          break;
        }
      }

      if (!sub_181959260(0, v12, i, v10))
      {
        v13 = *(*(v9 + 80) + 24 * v11 + 8);
        v18 = 0x100000000;
        v19 = 0;
        v17[3] = 0;
        v17[0] = 0;
        v17[1] = sub_1818C7E14;
        v17[2] = sub_18195A49C;
        if (v13)
        {
          sub_181959BA0(v17, v13);
          if (!WORD2(v18))
          {
            break;
          }
        }
      }
    }

    if (++v11 >= *(v9 + 94))
    {
      goto LABEL_5;
    }
  }

  *a2 = v10;
  a2[1] = -2;
  return 1;
}

unsigned __int8 *sub_181972CE8(uint64_t a1, int a2, unsigned __int8 *a3, int a4, char a5)
{
  v9 = **a1;
  v10 = *v9;
  v25 = 0;
  if (sub_18195A9F8(a3, &v25, v9))
  {
    v11 = v25;
    if ((v25 & 0x80000000) == 0)
    {
      v26[0] = 0;
      v26[1] = 0;
      result = sub_1818A8CF0(v10, 156, v26, 0);
      if (!result)
      {
        return result;
      }

      v13 = result;
      *(result + 1) |= 0x800u;
      *(result + 2) = v11;
      v14 = sub_181929E8C(*v9, 0x50uLL, 0x1032040B79D87BDLL);
      if (!v14)
      {
        return sub_1819439E0(*v9, v13);
      }

      goto LABEL_8;
    }
  }

  result = sub_181929E8C(v10, 0x51uLL, 0x1032040B79D87BDLL);
  if (!result)
  {
    return result;
  }

  v13 = result;
  *(result + 2) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *result = 0u;
  *(result + 1) = 0u;
  *result = -80;
  result[80] = 0;
  *(result + 26) = -1;
  *(result + 1) = result + 80;
  *(result + 10) = 1;
  *(result + 11) = a2;
  v14 = sub_181929E8C(*v9, 0x50uLL, 0x1032040B79D87BDLL);
  if (v14)
  {
LABEL_8:
    v21 = v14;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
    *(v14 + 32) = 0u;
    *v14 = 47;
    *(v14 + 52) = -1;
    *(v14 + 24) = v13;
    *(v14 + 4) |= *(v13 + 1) & 0x400208;
    v22 = *(v13 + 10);
    *(v14 + 40) = v22 + 1;
    if (*(*v9 + 148) <= v22)
    {
      sub_181910730(v9, "Expression tree is too large (maximum depth %d)", v15, v16, v17, v18, v19, v20, *(*v9 + 148));
    }

    result = sub_1818CE2C0(a1, v21, 3);
    v23 = *(a1 + 32) + 56 * result;
    *(v23 + 28) = a4;
    *(v23 + 20) = 64;
    *(v23 + 23) = a5;
    return result;
  }

  v24 = *v9;

  return sub_1819439E0(v24, v13);
}

uint64_t sub_181972F24(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 != 172 || (a2[6] & 0x10) != 0)
  {
    return 0;
  }

  *(a1 + 36) = 0;
  return 2;
}

unsigned __int16 *sub_181972F4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 8);
  v4 = (a1 + 88);
  v5 = (a1 + 44);
  v6 = *(a1 + 41);
  v39 = (a1 + 88);
LABEL_2:
  v7 = v6 - 1;
  v8 = v4[v7];
  v9 = v5[v7];
  while (v2 >= *(v3 + 5))
  {
LABEL_3:
    v2 = 0;
    v3 = v3[1];
    if (!v3)
    {
      v37 = *(a1 + 41);
      if (v37 >= *(a1 + 42))
      {
        return 0;
      }

      v2 = 0;
      v3 = *a1;
      v6 = v37 + 1;
      *(a1 + 41) = v6;
      v4 = v39;
      goto LABEL_2;
    }
  }

  v10 = &v3[4][7 * v2];
  while (1)
  {
    if (*(v10 + 7) != v9 || *(v10 + 8) != v8)
    {
      goto LABEL_7;
    }

    if (v8 == -2)
    {
      for (i = *(*v10 + 16); i; i = *(i + 16))
      {
        if ((*(i + 5) & 0x20) == 0)
        {
          break;
        }
      }

      for (j = *(a1 + 24); j; j = *(j + 16))
      {
        if ((*(j + 5) & 0x20) == 0)
        {
          break;
        }
      }

      if (sub_181959260(0, i, j, v9))
      {
        goto LABEL_7;
      }
    }

    if (*(a1 + 41) >= 2u && (*(*v10 + 4) & 1) != 0)
    {
      goto LABEL_7;
    }

    v13 = v10[10];
    if ((v13 & 0x800) != 0)
    {
      v14 = *(a1 + 42);
      if (v14 <= 0xA)
      {
        v15 = *(*v10 + 24);
        if (v15)
        {
          while (1)
          {
            v17 = *(v15 + 1);
            if ((v17 & 0x82000) == 0)
            {
              break;
            }

            if ((v17 & 0x80000) != 0)
            {
              v16 = (*(v15 + 4) + 8);
            }

            else
            {
              v18 = *v15;
              if (v18 != 114)
              {
                goto LABEL_31;
              }

              v16 = (v15 + 16);
            }

            v15 = *v16;
            if (!v15)
            {
              goto LABEL_42;
            }
          }

          v18 = *v15;
LABEL_31:
          if ((v17 & 0x20) == 0 && v18 == 168)
          {
            if (*(a1 + 42))
            {
              v19 = 0;
              while (v5[v19] != *(v15 + 11) || *(v15 + 12) != *(v5 + v19 + 22))
              {
                if (v14 == ++v19)
                {
                  goto LABEL_41;
                }
              }
            }

            else
            {
              LODWORD(v19) = 0;
            }

            if (v19 == v14)
            {
LABEL_41:
              v5[v14] = *(v15 + 11);
              v39[v14] = *(v15 + 12);
              *(a1 + 42) = v14 + 1;
              v13 = v10[10];
            }
          }
        }
      }
    }

LABEL_42:
    if ((*(a1 + 36) & v13) == 0)
    {
      goto LABEL_7;
    }

    if ((v13 & 0x100) != 0 || !*(a1 + 16))
    {
      break;
    }

    v20 = **v3;
    v21 = *(a1 + 40);
    if (v13)
    {
      v34 = sub_18197331C(**v3, v10, v21);
      if (v34)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v22 = *v10;
      if (sub_181973454(*v10, v21))
      {
        v29 = 24;
        if ((*(v22 + 4) & 0x400) != 0)
        {
          v30 = 24;
        }

        else
        {
          v30 = 16;
        }

        if ((*(v22 + 4) & 0x400) != 0)
        {
          v29 = 16;
        }

        v31 = *(v22 + v30);
        if ((v31[5] & 2) != 0)
        {
          v33 = sub_1818B4720(v20, v31, v23, v24, v25, v26, v27, v28);
          if (!v33)
          {
LABEL_57:
            v34 = "BINARY";
LABEL_62:
            for (k = *(a1 + 16); ; ++k)
            {
              if (*v34 == *k)
              {
                if (!*v34)
                {
                  LOWORD(v13) = v10[10];
                  goto LABEL_68;
                }
              }

              else if (byte_181A20298[*v34] != byte_181A20298[*k])
              {
                goto LABEL_7;
              }

              ++v34;
            }
          }
        }

        else
        {
          v32 = *(v22 + v29);
          if (v32 && (v32[5] & 2) != 0 || (v33 = sub_1818B4720(v20, v31, v23, v24, v25, v26, v27, v28)) == 0)
          {
            v33 = sub_1818B4720(v20, v32, v23, v24, v25, v26, v27, v28);
            if (!v33)
            {
              goto LABEL_57;
            }
          }
        }

        v34 = *v33;
        goto LABEL_62;
      }
    }

LABEL_7:
    ++v2;
    v10 += 28;
    if (v2 >= *(v3 + 5))
    {
      goto LABEL_3;
    }
  }

LABEL_68:
  if ((v13 & 0x82) != 0)
  {
    v36 = *(*v10 + 24);
    if (v36)
    {
      if (*v36 == 168 && *(v36 + 11) == *v5 && *(v36 + 12) == *v39)
      {
        goto LABEL_7;
      }
    }
  }

  *(a1 + 8) = v3;
  *(a1 + 32) = v2 + 1;
  return v10;
}

unsigned __int16 *sub_1819732DC(uint64_t a1)
{
  *(a1 + 40) = sub_1818D0A24(*(a1 + 24));

  return sub_181972F4C(a1);
}

const char *sub_18197331C(void *a1, int *a2, char a3)
{
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *v5;
  if (v6 == 176)
  {
    v6 = v5[2];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v7 = v5;
  if (v6 != 177)
  {
    if (v6 != 139)
    {
      goto LABEL_8;
    }

    v7 = *(v5 + 4);
  }

  if (*v7[4] >= 2)
  {
    v8 = 24 * a2[9];
    LOBYTE(v23) = 54;
    v8 -= 24;
    v9 = *(*(v5 + 4) + v8 + 8);
    v10 = *(*(*(v4 + 4) + 32) + v8 + 8);
    *&v24 = v9;
    *(&v24 + 1) = v10;
    v4 = &v23;
  }

LABEL_8:
  if (!sub_181973454(v4, a3))
  {
    return 0;
  }

  v17 = 24;
  if ((*(v4 + 1) & 0x400) != 0)
  {
    v18 = 24;
  }

  else
  {
    v18 = 16;
  }

  v19 = *(v4 + v18);
  if ((*(v4 + 1) & 0x400) != 0)
  {
    v17 = 16;
  }

  if ((v19[5] & 2) != 0)
  {
    v21 = sub_1818B4720(a1, v19, v11, v12, v13, v14, v15, v16);
    if (!v21)
    {
      return "BINARY";
    }
  }

  else
  {
    v20 = *(v4 + v17);
    if (v20 && (v20[5] & 2) != 0 || (v21 = sub_1818B4720(a1, v19, v11, v12, v13, v14, v15, v16)) == 0)
    {
      v21 = sub_1818B4720(a1, v20, v11, v12, v13, v14, v15, v16);
      if (!v21)
      {
        return "BINARY";
      }
    }
  }

  return *v21;
}

BOOL sub_181973454(uint64_t a1, int a2)
{
  v4 = sub_1818D0A24(*(a1 + 16));
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = sub_1818D0A24(v5);
    if (v4 >= 65 && v6 >= 65)
    {
      if (v4 > 0x42 || v6 > 0x42)
      {
        return a2 > 66;
      }

      return 1;
    }

LABEL_15:
    if (v6 >= 65)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    LOBYTE(v4) = v7 | 0x40;
    goto LABEL_19;
  }

  if ((*(a1 + 5) & 0x10) != 0)
  {
    v6 = sub_1818D0A24(*(*(*(a1 + 32) + 32) + 8));
    if (v4 >= 65 && v6 >= 65)
    {
      if (v4 > 0x42 || v6 > 0x42)
      {
        return a2 > 66;
      }

      return 1;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    return 1;
  }

LABEL_19:
  if (v4 < 66)
  {
    return 1;
  }

  if (v4 == 66)
  {
    return a2 == 66;
  }

  return a2 > 66;
}

uint64_t sub_181973540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v6 = **a1;
  v5 = *(*a1 + 8);
  v165 = *(a1 + 16);
  v166 = 0;
  v7 = v5 + 72 * *(v165 + 16);
  v8 = v3[2];
  v9 = *(v7 + 24);
  if (v4)
  {
    v10 = 0;
    v11 = v4;
    do
    {
      v12 = *(*&v11 + 20);
      if (v12 >= 1)
      {
        v13 = *(v7 + 36);
        v14 = *(*&v11 + 32) + 20;
        do
        {
          v15 = *(v14 - 2);
          *(v14 - 2) = v15 & 0xFFBF;
          if (*(v14 + 8) == v13 && (*(v14 + 20) & a3) == 0 && (*v14 & 0xF7FF) != 0 && (v15 & 0x80) == 0)
          {
            if ((*(v7 + 32) & 0x58) == 0 || (v17 = *(v14 - 20), v18 = *(v17 + 4), (v18 & 3) != 0) && *(v17 + 56) == v13 && ((*(v7 + 32) & 0x18) == 0 || (v18 & 2) == 0))
            {
              ++v10;
              *(v14 - 2) = v15 | 0x40;
            }
          }

          v14 += 56;
          --v12;
        }

        while (v12);
      }

      v11 = *(*&v11 + 8);
    }

    while (v11);
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v160 = v8;
  if (v8)
  {
    v158 = v3;
    v20 = *v8;
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = (v8 + 1);
      while (1)
      {
        v23 = &v22[6 * v21];
        v24 = *v23;
        v171 = 0x100000000;
        v172 = 0;
        v170 = 0;
        v167 = 0;
        v168 = sub_1818C7E14;
        v169 = sub_18195A49C;
        if (v24)
        {
          sub_181959BA0(&v167, v24);
          if (!WORD2(v171))
          {
            if ((v23[4] & 2) != 0)
            {
              goto LABEL_55;
            }

            v25 = *v24;
            if (v25 == 114)
            {
              v26 = *(v24 + 2);
              if (*v26 != 168 || *(v26 + 11) != *(v7 + 36))
              {
                goto LABEL_55;
              }

              v27 = *(v26 + 12);
              *(v24 + 12) = v27;
              if ((v27 & 0x80000000) == 0)
              {
                v28 = *(v9 + 8) + 16 * v27;
                v29 = *(v28 + 14);
                if ((v29 & 0x200) != 0)
                {
                  v31 = *v28 - 1;
                    ;
                  }

                  if ((v29 & 4) != 0)
                  {
                      ;
                    }
                  }

                  v30 = (v31 + 1);
                }

                else
                {
                  v30 = 0;
                }

                v34 = *(v24 + 1);
                if (v34)
                {
                  if (!v30)
                  {
                    v30 = "BINARY";
                  }

                  while (1)
                  {
                    if (*v34 == *v30)
                    {
                      if (!*v34)
                      {
                        goto LABEL_26;
                      }
                    }

                    else if (byte_181A20298[*v34] != byte_181A20298[*v30])
                    {
                      goto LABEL_55;
                    }

                    ++v34;
                    ++v30;
                  }
                }

                goto LABEL_55;
              }
            }

            else if (v25 != 168 || *(v24 + 11) != *(v7 + 36))
            {
              goto LABEL_55;
            }
          }
        }

LABEL_26:
        if (++v21 == v20)
        {
          goto LABEL_56;
        }
      }
    }

    LODWORD(v21) = 0;
LABEL_55:
    if (v21 == v20)
    {
LABEL_56:
      v36 = *(v158 + 30);
      if ((v36 & 0x80) == 0 || *(v7 + 33) < 0)
      {
        v35 = (v36 >> 6) & 1;
      }

      else
      {
        v35 = (v36 >> 9) & 1 | 2;
      }
    }

    else
    {
      LODWORD(v20) = 0;
      v35 = 0;
    }
  }

  else
  {
    LODWORD(v20) = 0;
    v35 = 0;
  }

  v37 = v20;
  v38 = 20 * v19 + 8 * (v19 + v20);
  if (*v6)
  {
    v45 = sub_181929E8C(*v6, v38 + 128, 0x10300402D53C3A4);
    if (v45)
    {
LABEL_63:
      bzero(v45, v38 + 128);
      v46 = &v45[v19 + 16];
      v47 = v46 + 12 * v19;
      v45[1] = v46;
      v45[3] = v47;
      v45[4] = (v47 + 8 * v20);
      v48 = *(v7 + 40);
      v45[11] = v48;
      if ((*(v9 + 48) & 0x80) == 0)
      {
        goto LABEL_85;
      }

      v49 = v9 + 16;
      do
      {
        v50 = *v49;
        v51 = *(*v49 + 99) & 3;
        v49 = *v49 + 40;
      }

      while (v51 != 2);
      v52 = *(v50 + 94);
      if (!*(v50 + 94))
      {
LABEL_85:
        v45[12] = v4;
        v45[13] = v6;
        v45[14].i32[0] = v35;
        v45[14].i32[1] = 0;
        if (v4)
        {
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = v4;
          while (1)
          {
            v102 = *(*&v101 + 20);
            if (v102 >= 1)
            {
              break;
            }

LABEL_87:
            v101 = *(*&v101 + 8);
            if (!*&v101)
            {
              goto LABEL_119;
            }
          }

          v103 = v102 + v98;
          v104 = *(*&v101 + 32) + 18;
          while (1)
          {
            v105 = *v104;
            if ((*v104 & 0x40) == 0)
            {
              goto LABEL_92;
            }

            v106 = v46 + 12 * v99;
            *v106 = *(v104 + 14);
            *(v106 + 8) = v98;
            v107 = *(v104 + 2);
            v108 = v107 & 0x3FFF;
            if (v108 == 1)
            {
              if ((v105 & 0x8000) == 0)
              {
                v109 = 1 << v99;
                if (v99 >= 32)
                {
                  v109 = 0;
                }

                v45[14].i32[1] |= v109;
              }

              *(v106 + 4) = 2;
            }

            else if (v108 == 64)
            {
              *(v106 + 4) = *(v104 + 5);
            }

            else if ((*(v104 + 2) & 0x180) != 0)
            {
              if (v108 == 256)
              {
                *(v106 + 4) = 71;
              }

              else
              {
                *(v106 + 4) = 72;
              }
            }

            else
            {
              *(v106 + 4) = v107;
              if ((v107 & 0x3C) != 0)
              {
                v110 = *(*(v104 - 18) + 24);
                v111 = *v110;
                if (v111 == 176)
                {
                  v111 = v110[2];
                }

                if (v111 == 177)
                {
                  goto LABEL_110;
                }

                if (v111 == 139)
                {
                  v110 = *(v110 + 4);
LABEL_110:
                  if (**(v110 + 4) >= 2)
                  {
                    v112 = 1 << v99;
                    if (v99 >= 16)
                    {
                      LOWORD(v112) = 0;
                    }

                    v100 |= v112;
                    if (v108 == 4)
                    {
                      *(v106 + 4) = 32;
                    }

                    else if (v108 == 16)
                    {
                      *(v106 + 4) = 8;
                    }
                  }
                }
              }
            }

            ++v99;
LABEL_92:
            ++v98;
            v104 += 56;
            if (v98 >= v103)
            {
              goto LABEL_87;
            }
          }
        }

        v100 = 0;
        v99 = 0;
LABEL_119:
        v45->i32[0] = v99;
        if (v20 < 1)
        {
          v113 = 0;
        }

        else
        {
          v113 = 0;
          v114 = v160 + 3;
          do
          {
            v115 = *(v114 - 2);
            v171 = 0x100000000;
            v172 = 0;
            v170 = 0;
            v167 = 0;
            v168 = sub_1818C7E14;
            v169 = sub_18195A49C;
            if (v115)
            {
              sub_181959BA0(&v167, v115);
              if (!WORD2(v171))
              {
                v116 = v47 + 8 * v113;
                *v116 = *(v115 + 48);
                *(v116 + 4) = *v114 & 1;
                ++v113;
              }
            }

            v114 += 24;
            --v37;
          }

          while (v37);
        }

        v45[2].i32[0] = v113;
        *(v165 + 18) = 0;
        *(v165 + 48) = 1024;
        *(v165 + 52) = 0;
        *(v165 + 28) &= ~1u;
        v117 = v45->u32[0];
        if (v117 <= *(v165 + 56))
        {
LABEL_131:
          v122 = a1;
          v123 = sub_1819751DC(a1, a2, -1, 0, v45, v100, &v166 + 1, &v166);
          if (v166)
          {
            v123 = sub_1819751DC(a1, a2, -1, 0, v45, v100, &v166 + 1, 0);
          }

          v55 = v123;
          if (!v123)
          {
            v124 = HIDWORD(v166);
            v125 = *v165 & ~a2;
            if (!v125 && !HIDWORD(v166))
            {
              v55 = 0;
              goto LABEL_189;
            }

            v133 = ~a2;
            if (HIDWORD(v166))
            {
              v134 = *v165 & ~a2;
              v55 = sub_1819751DC(a1, a2, -1, 1u, v45, v100, &v166 + 1, 0);
              v135 = *v165 & v133;
              v124 = v135 == 0;
              if (v55)
              {
                goto LABEL_189;
              }

              v125 = v134;
            }

            else
            {
              v135 = 0;
            }

            v136 = 0;
            v162 = v124;
            v157 = v124;
            v159 = v135;
            v161 = v125;
            while (v117 >= 1)
            {
              v137 = v136;
              v138 = 0;
              v136 = -1;
              do
              {
                v141 = *(*&v45[1] + 12 * v138 + 8);
                v142 = v4;
                for (i = *(*&v4 + 20); v141 >= i; i = *(*&v142 + 20))
                {
                  v141 -= i;
                  v142 = *(*&v142 + 8);
                }

                v139 = *(*(*&v142 + 32) + 56 * v141 + 40) & v133;
                if (v139 >= v136)
                {
                  v140 = v136;
                }

                else
                {
                  v140 = v139;
                }

                if (v139 > v137)
                {
                  v136 = v140;
                }

                ++v138;
              }

              while (v138 != v117);
              if (v136 == -1)
              {
                break;
              }

              if (v136 != v125 && v136 != v135)
              {
                v145 = sub_1819751DC(v122, a2, v136 | a2, 0, v45, v100, &v166 + 1, 0);
                v55 = v145;
                if (*v165 == a2)
                {
                  v146 = v162;
                  if (!HIDWORD(v166))
                  {
                    v146 = 1;
                  }

                  v162 = v146;
                  v157 = 1;
                }

                v122 = a1;
                v135 = v159;
                v125 = v161;
                if (v145)
                {
                  goto LABEL_189;
                }
              }
            }

            if (v157)
            {
              v55 = 0;
              v147 = v162;
            }

            else
            {
              v55 = sub_1819751DC(v122, a2, a2, 0, v45, v100, &v166 + 1, 0);
              v147 = v162;
              if (!HIDWORD(v166))
              {
                v147 = 1;
              }
            }

            if (!(v55 | v147))
            {
              v55 = sub_1819751DC(v122, a2, a2, 1u, v45, v100, &v166 + 1, 0);
            }
          }

LABEL_189:
          v148 = *v6;
          v149 = v45->i32[0];
          if (v45->i32[0] >= 1)
          {
            v150 = 0;
            do
            {
              v151 = &v45[v150];
              v152 = v151[16];
              if (v152)
              {
                if ((*(*&v152 + 20) & 0x9000) != 0 || *(*&v152 + 32))
                {
                  sub_18193CA00(*&v151[16]);
                }

                sub_181929C84(*(*&v152 + 24), *&v152);
                v149 = v45->i32[0];
              }

              v151[16] = 0;
              ++v150;
            }

            while (v150 < v149);
          }

          if (!v45[7].i32[0])
          {
            goto LABEL_207;
          }

          v153 = v45[6];
          if (v153)
          {
            v154 = &off_1ED452EB0;
            if (dword_1ED452E80)
            {
              if (xmmword_1ED456AF0)
              {
                xmmword_1ED452F18(xmmword_1ED456AF0);
              }

              qword_1ED456A48 -= xmmword_1ED452EC0(*&v153);
              --qword_1ED456A90;
              off_1ED452EB0(*&v153);
              v153 = xmmword_1ED456AF0;
              if (!xmmword_1ED456AF0)
              {
                goto LABEL_206;
              }

              v154 = &xmmword_1ED452F28;
            }

            (*v154)(v153);
          }

LABEL_206:
          v45[6] = 0;
          v45[7].i32[0] = 0;
LABEL_207:
          sub_181929C84(v148, v45);
          return v55;
        }

        v118 = *v6;
        v119 = sub_181929E8C(*v6, 8 * ((v117 + 7) & 0xFFFFFFF8), 0x2004093837F09);
        if (v119)
        {
          v120 = v119;
          memcpy(v119, *(v165 + 64), 8 * *(v165 + 56));
          v121 = *(v165 + 64);
          if (v121 != (v165 + 80))
          {
            sub_181929C84(v118, v121);
          }

          *(v165 + 64) = v120;
          *(v165 + 56) = (v117 + 7) & 0xFFF8;
          goto LABEL_131;
        }

        v126 = *v6;
        v127 = v45->i32[0];
        if (v45->i32[0] >= 1)
        {
          v128 = 0;
          do
          {
            v129 = &v45[v128];
            v130 = v129[16];
            if (v130)
            {
              if ((*(*&v130 + 20) & 0x9000) != 0 || *(*&v130 + 32))
              {
                sub_18193CA00(*&v129[16]);
              }

              sub_181929C84(*(*&v130 + 24), *&v130);
              v127 = v45->i32[0];
            }

            v129[16] = 0;
            ++v128;
          }

          while (v128 < v127);
        }

        if (!v45[7].i32[0])
        {
          goto LABEL_155;
        }

        v131 = v45[6];
        if (v131)
        {
          v132 = &off_1ED452EB0;
          if (dword_1ED452E80)
          {
            if (xmmword_1ED456AF0)
            {
              xmmword_1ED452F18(xmmword_1ED456AF0);
            }

            qword_1ED456A48 -= xmmword_1ED452EC0(*&v131);
            --qword_1ED456A90;
            off_1ED452EB0(*&v131);
            v131 = xmmword_1ED456AF0;
            if (!xmmword_1ED456AF0)
            {
              goto LABEL_154;
            }

            v132 = &xmmword_1ED452F28;
          }

          (*v132)(v131);
        }

LABEL_154:
        v45[6] = 0;
        v45[7].i32[0] = 0;
LABEL_155:
        sub_181929C84(v126, v45);
        return 7;
      }

      v53 = *(v50 + 8);
      if (v52 < 4)
      {
        v54 = 0;
        goto LABEL_80;
      }

      if (v52 >= 0x10)
      {
        v54 = v52 & 0xFFF0;
        v56 = 0uLL;
        v57 = v48;
        v58.i64[0] = 0x3F003F003F003FLL;
        v58.i64[1] = 0x3F003F003F003FLL;
        v59 = vdupq_n_s64(1uLL);
        v60 = v53 + 1;
        v61 = v54;
        v62 = 0uLL;
        v63 = 0uLL;
        v64 = 0uLL;
        v65 = 0uLL;
        v66 = 0uLL;
        v67 = 0uLL;
        do
        {
          v68 = vminq_s16(v60[-1], v58);
          v69 = vminq_s16(*v60, v58);
          v70 = vmovl_s16(*v68.i8);
          v71 = vmovl_high_s16(v68);
          v72 = vmovl_s16(*v69.i8);
          v73 = vmovl_high_s16(v69);
          v74.i64[0] = v71.u32[2];
          v74.i64[1] = v71.u32[3];
          v75 = v74;
          v74.i64[0] = v71.u32[0];
          v74.i64[1] = v71.u32[1];
          v76 = v74;
          v74.i64[0] = v70.u32[2];
          v74.i64[1] = v70.u32[3];
          v77 = v74;
          v74.i64[0] = v70.u32[0];
          v74.i64[1] = v70.u32[1];
          v78 = v74;
          v74.i64[0] = v73.u32[2];
          v74.i64[1] = v73.u32[3];
          v79 = v74;
          v74.i64[0] = v73.u32[0];
          v74.i64[1] = v73.u32[1];
          v80 = v74;
          v74.i64[0] = v72.u32[2];
          v74.i64[1] = v72.u32[3];
          v81 = v74;
          v74.i64[0] = v72.u32[0];
          v74.i64[1] = v72.u32[1];
          v63 = vorrq_s8(vshlq_u64(v59, v75), v63);
          v62 = vorrq_s8(vshlq_u64(v59, v76), v62);
          v56 = vorrq_s8(vshlq_u64(v59, v77), v56);
          v57 = vorrq_s8(vshlq_u64(v59, v78), v57);
          v67 = vorrq_s8(vshlq_u64(v59, v79), v67);
          v66 = vorrq_s8(vshlq_u64(v59, v80), v66);
          v65 = vorrq_s8(vshlq_u64(v59, v81), v65);
          v64 = vorrq_s8(vshlq_u64(v59, v74), v64);
          v60 += 2;
          v61 -= 16;
        }

        while (v61);
        v82 = vorrq_s8(vorrq_s8(vorrq_s8(v64, v57), vorrq_s8(v66, v62)), vorrq_s8(vorrq_s8(v65, v56), vorrq_s8(v67, v63)));
        v48 = vorr_s8(*v82.i8, *&vextq_s8(v82, v82, 8uLL));
        if (v54 == v52)
        {
          goto LABEL_84;
        }

        if ((v52 & 0xC) == 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        v54 = 0;
      }

      v83 = v54;
      v54 = v52 & 0xFFFC;
      v84 = 0uLL;
      v85 = v48;
      v86 = (v53 + 2 * v83);
      v87 = v83 - v54;
      v88 = vdupq_n_s64(1uLL);
      do
      {
        v89 = *v86++;
        v90 = vmovl_s16(vmin_s16(v89, 0x3F003F003F003FLL));
        v91.i64[0] = v90.u32[2];
        v91.i64[1] = v90.u32[3];
        v92 = v91;
        v91.i64[0] = v90.u32[0];
        v91.i64[1] = v90.u32[1];
        v84 = vorrq_s8(vshlq_u64(v88, v92), v84);
        v85 = vorrq_s8(vshlq_u64(v88, v91), v85);
        v87 += 4;
      }

      while (v87);
      v93 = vorrq_s8(v85, v84);
      v48 = vorr_s8(*v93.i8, *&vextq_s8(v93, v93, 8uLL));
      if (v54 != v52)
      {
LABEL_80:
        v94 = v52 - v54;
        v95 = &v53->i16[v54];
        do
        {
          v97 = *v95++;
          v96 = v97;
          if (v97 >= 63)
          {
            v96 = 63;
          }

          *&v48 |= 1 << v96;
          --v94;
        }

        while (v94);
      }

LABEL_84:
      v45[11] = v48;
      goto LABEL_85;
    }
  }

  else
  {
    v45 = sub_181902484(v38 + 128, 0x10300402D53C3A4);
    if (v45)
    {
      goto LABEL_63;
    }
  }

  sub_181910730(v6, "out of memory", v39, v40, v41, v42, v43, v44, v156);
  return 7;
}